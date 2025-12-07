uint64_t sub_1D53FCD68()
{
  OUTLINED_FUNCTION_60();
  v2 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v3 = v2;
  *(v4 + 304) = v0;

  if (v0)
  {
    v5 = sub_1D53FD1F4;
  }

  else
  {
    v5 = sub_1D53FCE70;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D53FCE70()
{
  v29 = *(v0 + 304);
  v1 = *(v0 + 280);
  v2 = *(v0 + 312);
  v3 = OUTLINED_FUNCTION_36_52();
  OUTLINED_FUNCTION_2_19(v3);
  sub_1D560B9B8();
  v4 = OUTLINED_FUNCTION_29_56();
  v1(v4);
  sub_1D560B988();
  v5 = sub_1D5612208();
  OUTLINED_FUNCTION_2_19(v5);
  sub_1D56121F8();
  swift_retain_n();
  sub_1D560B968();
  sub_1D560D418();
  sub_1D53FF2E4();
  OUTLINED_FUNCTION_25_60();
  sub_1D560B948();
  if (v29)
  {
    v6 = *(v0 + 264);
    v7 = *(v0 + 128);
    v28 = *(v0 + 136);
    v26 = *(v0 + 272);
    v27 = *(v0 + 120);
    OUTLINED_FUNCTION_35_55();
    OUTLINED_FUNCTION_37_42();

    sub_1D4E55E1C(v6, v26);
    (*(v29 + 8))(v25, v2);
    (*(v7 + 8))(v28, v27);
  }

  else
  {
    v17 = *(v0 + 280);
    v16 = *(v0 + 312);
    v22 = *(v0 + 272);
    v20 = *(v0 + 264);
    v21 = *(v0 + 128);
    v23 = *(v0 + 120);
    v24 = *(v0 + 136);
    v9 = *(v0 + 80);
    v10 = *(v0 + 64);
    v11 = *(v0 + 48);
    v18 = *(v0 + 40);
    v19 = *(v0 + 56);
    v13 = *(v0 + 24);
    v12 = *(v0 + 32);
    OUTLINED_FUNCTION_37_42();
    v14 = *(v0 + 16);
    v17(v9, v12 + v16, v10);
    sub_1D514D048(v14, v9, v13);

    sub_1D4E55E1C(v20, v22);
    (*(v11 + 8))(v19, v18);
    (*(v21 + 8))(v24, v23);
  }

  OUTLINED_FUNCTION_0_220();
  sub_1D53FA6A4();

  OUTLINED_FUNCTION_55();

  return v8();
}

uint64_t sub_1D53FD1F4()
{

  v0 = OUTLINED_FUNCTION_71();
  sub_1D4E55E1C(v0, v1);
  v2 = OUTLINED_FUNCTION_70();
  v3(v2);
  OUTLINED_FUNCTION_14_79();
  OUTLINED_FUNCTION_0_220();
  sub_1D53FA6A4();

  OUTLINED_FUNCTION_55();

  return v4();
}

uint64_t sub_1D53FD324(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_147();
  v4(v3);
  OUTLINED_FUNCTION_14();
  v5 = OUTLINED_FUNCTION_71();
  v6(v5);
  return a2;
}

uint64_t sub_1D53FD37C@<X0>(uint64_t a1@<X8>)
{
  v26[1] = a1;
  v1 = sub_1D560BB98();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = v26 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = v26 - v9;
  sub_1D560BB28();
  sub_1D4EFFE00();
  v12 = v11;
  v13 = *(v11 + 16);
  if (v13 >= *(v11 + 24) >> 1)
  {
    sub_1D4EFFE00();
    v12 = v23;
  }

  *(v12 + 16) = v13 + 1;
  v16 = *(v2 + 32);
  v15 = v2 + 32;
  v14 = v16;
  v17 = (*(v15 + 48) + 32) & ~*(v15 + 48);
  v18 = *(v15 + 40);
  v16(v12 + v17 + v18 * v13, v10, v1);
  if ((*(v27 + 8) & 1) == 0)
  {
    v19 = *v27;
    if (*v27 >= 10)
    {
      v19 = 10;
    }

    v28 = v19;
    sub_1D56160F8();
    sub_1D560BB28();

    v20 = *(v12 + 16);
    if (v20 >= *(v12 + 24) >> 1)
    {
      sub_1D4EFFE00();
      v12 = v25;
    }

    *(v12 + 16) = v20 + 1;
    v14(v12 + v17 + v20 * v18, v8, v1);
  }

  sub_1D560BB88();
  v21 = *(v12 + 16);
  if (v21 >= *(v12 + 24) >> 1)
  {
    sub_1D4EFFE00();
    v12 = v24;
  }

  *(v12 + 16) = v21 + 1;
  v14(v12 + v17 + v21 * v18, v5, v1);
  type metadata accessor for MusicSuggestedSongsRequest(0);
  sub_1D560CD48();
  sub_1D560EB78();
}

uint64_t sub_1D53FD688@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v64 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5E78, &qword_1D5660A00);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v58 - v4;
  v6 = sub_1D560BB98();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v61 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v63 = &v58 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v62 = &v58 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v60 = &v58 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v58 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v59 = &v58 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v58 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v58 - v24;
  sub_1D560BB28();
  sub_1D4EFFE00();
  v27 = v26;
  v28 = *(v26 + 16);
  if (v28 >= *(v26 + 24) >> 1)
  {
    sub_1D4EFFE00();
    v27 = v51;
  }

  *(v27 + 16) = v28 + 1;
  v30 = *(v7 + 32);
  v29 = v7 + 32;
  v66 = (*(v29 + 48) + 32) & ~*(v29 + 48);
  v65 = *(v29 + 40);
  v31 = v27 + v66 + v65 * v28;
  v32 = v30;
  v30(v31, v25, v6);
  v33 = type metadata accessor for MusicSuggestedSongsRequest(0);
  sub_1D4E69970(v2 + *(v33 + 32), v5, &qword_1EC7F5E78, &qword_1D5660A00);
  v34 = type metadata accessor for MusicSuggestedSongsRequest.Reason(0);
  if (__swift_getEnumTagSinglePayload(v5, 1, v34) == 1)
  {
    v35 = v6;
    v36 = v61;
    v37 = v32;
    goto LABEL_19;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v35 = v6;
    if (EnumCaseMultiPayload != 1)
    {
      sub_1D53FA6A4();
      sub_1D560BB28();
      v42 = *(v27 + 16);
      v43 = v42 + 1;
      v36 = v61;
      if (v42 >= *(v27 + 24) >> 1)
      {
        sub_1D4EFFE00();
        v27 = v57;
      }

      v44 = v18;
      goto LABEL_18;
    }

    sub_1D53FA6A4();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5E68, &qword_1D56609E0);

    v39 = sub_1D5614898();
    (*(*(v39 - 8) + 8))(v5, v39);
    v35 = v6;
  }

  v36 = v61;
  sub_1D560BB28();
  v40 = *(v27 + 16);
  if (v40 >= *(v27 + 24) >> 1)
  {
    sub_1D4EFFE00();
    v27 = v55;
  }

  *(v27 + 16) = v40 + 1;
  v41 = v23;
  v37 = v32;
  v32(v27 + v66 + v40 * v65, v41, v35);
  if ((v2[1] & 1) == 0)
  {
    v67 = *v2;
    sub_1D56160F8();
    sub_1D560BB28();

    v42 = *(v27 + 16);
    v43 = v42 + 1;
    if (v42 >= *(v27 + 24) >> 1)
    {
      sub_1D4EFFE00();
      v27 = v56;
    }

    v44 = v59;
LABEL_18:
    *(v27 + 16) = v43;
    v45 = v27 + v66 + v42 * v65;
    v37 = v32;
    v32(v45, v44, v35);
  }

LABEL_19:
  v46 = v63;
  if (*(v2 + *(v33 + 24)) == 1)
  {
    v46 = v60;
    sub_1D560BB28();
LABEL_25:
    v48 = *(v27 + 16);
    if (v48 >= *(v27 + 24) >> 1)
    {
      sub_1D4EFFE00();
      v27 = v53;
    }

    *(v27 + 16) = v48 + 1;
    v37(v27 + v66 + v48 * v65, v46, v35);
    goto LABEL_28;
  }

  sub_1D560BB28();
  v47 = *(v27 + 16);
  if (v47 >= *(v27 + 24) >> 1)
  {
    sub_1D4EFFE00();
    v27 = v54;
  }

  *(v27 + 16) = v47 + 1;
  v37(v27 + v66 + v47 * v65, v62, v35);
  if ((v2[1] & 1) == 0)
  {
    v67 = *v2;
    sub_1D56160F8();
    sub_1D560BB28();

    goto LABEL_25;
  }

LABEL_28:
  sub_1D560BB88();
  v49 = *(v27 + 16);
  if (v49 >= *(v27 + 24) >> 1)
  {
    sub_1D4EFFE00();
    v27 = v52;
  }

  *(v27 + 16) = v49 + 1;
  v37(v27 + v66 + v49 * v65, v36, v35);
  sub_1D560CD48();
  sub_1D560EB78();
}

uint64_t sub_1D53FDE2C(uint64_t a1, char *a2)
{
  v42 = a2;
  v3 = sub_1D5614898();
  v41 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MusicSuggestedSongsRequest.Reason(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = (v40 - v11);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v40 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5EF8, &qword_1D5660B98);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = v40 - v17;
  v19 = (v40 + *(v16 + 56) - v17);
  sub_1D53FA960(a1, v40 - v17);
  sub_1D53FA960(v42, v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v42 = v5;
    v27 = v41;
    v21 = v18;
    sub_1D53FA960(v18, v14);
    v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5E68, &qword_1D56609E0) + 64);
    if (!swift_getEnumCaseMultiPayload())
    {
      v40[1] = *(v19 + v28);
      v31 = v42;
      (*(v27 + 32))(v42, v19, v3);
      v32 = _s16MusicKitInternal0A21CollaborativePlaylistV23EndCollaborationRequestV2eeoiySbAE_AEtFZ_0();
      v33 = *(v27 + 8);
      v33(v14, v3);
      if (v32)
      {
        sub_1D4F2E71C();
        v35 = v34;

        if (v35)
        {
          sub_1D4F928A4();
          v30 = v36;

          v33(v42, v3);
          goto LABEL_16;
        }

        v33(v42, v3);
      }

      else
      {
        v33(v31, v3);
      }

      goto LABEL_32;
    }

    (*(v27 + 8))(v14, v3);
LABEL_19:
    sub_1D4E50004(v21, &qword_1EC7F5EF8, &qword_1D5660B98);
LABEL_34:
    v30 = 0;
    return v30 & 1;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v21 = v18;
    sub_1D53FA960(v18, v12);
    v23 = *v12;
    v22 = v12[1];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v24 = v19[1];
      if (v22)
      {
        if (v24)
        {
          if (v23 == *v19 && v22 == v24)
          {

            goto LABEL_29;
          }

          v26 = sub_1D5616168();

          if (v26)
          {
LABEL_29:
            sub_1D4F2E71C();
            v38 = v37;

            if ((v38 & 1) == 0)
            {
              goto LABEL_32;
            }

            goto LABEL_15;
          }
        }

        else
        {
        }

LABEL_33:

        sub_1D53FA6A4();
        goto LABEL_34;
      }

      if (!v24)
      {
        goto LABEL_29;
      }

LABEL_32:

      goto LABEL_33;
    }

    goto LABEL_18;
  }

  v21 = v18;
  sub_1D53FA960(v18, v9);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
LABEL_18:

    goto LABEL_19;
  }

LABEL_15:
  sub_1D4F928A4();
  v30 = v29;

LABEL_16:
  sub_1D53FA6A4();
  return v30 & 1;
}

uint64_t sub_1D53FE3D8(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1D5614898();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MusicSuggestedSongsRequest.Reason(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D53FA960(v2, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v11 = *(v9 + 1);
      MEMORY[0x1DA6EC0D0](1);
      sub_1D56162F8();
      if (v11)
      {
        sub_1D5614E28();
      }

      sub_1D4F38908();
    }

    else
    {
      MEMORY[0x1DA6EC0D0](2);
    }

    sub_1D4FB79BC();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5E68, &qword_1D56609E0);
    (*(v4 + 32))(v6, v9, v3);
    MEMORY[0x1DA6EC0D0](0);
    sub_1D53FAAFC(&qword_1EC7EB6C8, MEMORY[0x1E69773E0], MEMORY[0x1E69773F0]);
    sub_1D5614CB8();
    sub_1D4F38908();

    sub_1D4FB79BC();

    return (*(v4 + 8))(v6, v3);
  }
}

BOOL static MusicSuggestedSongsRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MusicSuggestedSongsRequest.Reason(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = (v6 - v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5E78, &qword_1D5660A00);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5E70, &qword_1D56609F8);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25 - v14;
  v16 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v16 = 1;
    }

    if (v16)
    {
      return 0;
    }
  }

  v17 = type metadata accessor for MusicSuggestedSongsRequest(0);
  if ((_s16MusicKitInternal0A18UserProfileRequestV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v17[6]) != *(a2 + v17[6]))
  {
    return 0;
  }

  sub_1D4EFBC88(*(a1 + v17[7]), *(a2 + v17[7]), v18);
  if ((v19 & 1) == 0)
  {
    return 0;
  }

  v20 = v17[8];
  v21 = *(v12 + 48);
  sub_1D4E69970(a1 + v20, v15, &qword_1EC7F5E78, &qword_1D5660A00);
  sub_1D4E69970(a2 + v20, &v15[v21], &qword_1EC7F5E78, &qword_1D5660A00);
  OUTLINED_FUNCTION_43_0(v15);
  if (v22)
  {
    OUTLINED_FUNCTION_43_0(&v15[v21]);
    if (v22)
    {
      sub_1D4E50004(v15, &qword_1EC7F5E78, &qword_1D5660A00);
      return 1;
    }

LABEL_18:
    sub_1D4E50004(v15, &qword_1EC7F5E70, &qword_1D56609F8);
    return 0;
  }

  sub_1D4E69970(v15, v11, &qword_1EC7F5E78, &qword_1D5660A00);
  OUTLINED_FUNCTION_43_0(&v15[v21]);
  if (v22)
  {
    OUTLINED_FUNCTION_3_169();
    sub_1D53FA6A4();
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_2_165();
  sub_1D53FD324(&v15[v21], v7);
  v24 = sub_1D53FDE2C(v11, v7);
  sub_1D53FA6A4();
  OUTLINED_FUNCTION_70();
  sub_1D53FA6A4();
  sub_1D4E50004(v15, &qword_1EC7F5E78, &qword_1D5660A00);
  return (v24 & 1) != 0;
}

uint64_t MusicSuggestedSongsRequest.hash(into:)()
{
  v2 = OUTLINED_FUNCTION_64_1();
  type metadata accessor for MusicSuggestedSongsRequest.Reason(v2);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5E78, &qword_1D5660A00);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - v9;
  if (*(v1 + 8) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    v11 = *v1;
    sub_1D56162F8();
    MEMORY[0x1DA6EC0D0](v11);
  }

  v12 = type metadata accessor for MusicSuggestedSongsRequest(0);
  sub_1D560CD48();
  sub_1D53FAAFC(&qword_1EC7EA848, MEMORY[0x1E6974D20], MEMORY[0x1E6974D28]);
  sub_1D5614CB8();
  sub_1D56162F8();
  sub_1D4F09A80(v0, *(v1 + *(v12 + 28)), v13);
  sub_1D4E69970(v1 + *(v12 + 32), v10, &qword_1EC7F5E78, &qword_1D5660A00);
  OUTLINED_FUNCTION_43_0(v10);
  if (v14)
  {
    return sub_1D56162F8();
  }

  OUTLINED_FUNCTION_2_165();
  sub_1D53FD324(v10, v6);
  sub_1D56162F8();
  sub_1D53FE3D8(v0);
  OUTLINED_FUNCTION_3_169();
  return sub_1D53FA6A4();
}

uint64_t sub_1D53FEB80(uint64_t (*a1)(_BYTE *))
{
  sub_1D56162D8();
  a1(v3);
  return sub_1D5616328();
}

uint64_t sub_1D53FEBEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  sub_1D56162D8();
  a4(v6);
  return sub_1D5616328();
}

uint64_t sub_1D53FEC30()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D4E6E494;

  return MusicSuggestedSongsRequest.catalogResponse()();
}

uint64_t sub_1D53FECC8()
{
  OUTLINED_FUNCTION_60();
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_1D51592F8;

  return MusicSuggestedSongsRequest.response()();
}

void sub_1D53FEE10(uint64_t a1)
{
  sub_1D502E814();
  if (v1 <= 0x3F)
  {
    sub_1D560CD48();
    if (v2 <= 0x3F)
    {
      sub_1D53FEF2C(319, &qword_1EC7F5EA0, MEMORY[0x1E6976E60], MEMORY[0x1E69E62F8]);
      if (v3 <= 0x3F)
      {
        sub_1D53FEF2C(319, &qword_1EC7F5EA8, type metadata accessor for MusicSuggestedSongsRequest.Reason, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D53FEF2C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D53FEF90(uint64_t a1)
{
  sub_1D53FF018(319);
  if (v1 <= 0x3F)
  {
    sub_1D53FF0BC(319);
    if (v2 <= 0x3F)
    {
      sub_1D53FF16C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1D53FF018(uint64_t a1)
{
  if (!qword_1EC7F5EC0)
  {
    sub_1D5614898();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F5EC8, &qword_1D5660B18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F5ED0, qword_1D5660B20);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC7F5EC0);
    }
  }
}

void sub_1D53FF0BC(uint64_t a1)
{
  if (!qword_1EC7F5ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EC3B0, &qword_1D5630D90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F5EC8, &qword_1D5660B18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F5ED0, qword_1D5660B20);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC7F5ED8);
    }
  }
}

void sub_1D53FF16C()
{
  if (!qword_1EC7F5EE0)
  {
    sub_1D53FF1B4(0);
    if (!v1)
    {
      atomic_store(v0, &qword_1EC7F5EE0);
    }
  }
}

void sub_1D53FF1B4(uint64_t a1)
{
  if (!qword_1EC7F5EE8)
  {
    type metadata accessor for MusicSuggestedSongsEntry(255);
    sub_1D53FAAFC(&qword_1EC7F3870, type metadata accessor for MusicSuggestedSongsEntry, &protocol conformance descriptor for MusicSuggestedSongsEntry);
    v1 = sub_1D56155D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC7F5EE8);
    }
  }
}

unint64_t sub_1D53FF290()
{
  result = qword_1EC7F5F00;
  if (!qword_1EC7F5F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5F00);
  }

  return result;
}

unint64_t sub_1D53FF2E4()
{
  result = qword_1EC7F5F10;
  if (!qword_1EC7F5F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5F10);
  }

  return result;
}

uint64_t sub_1D53FF338(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_1D5615A48();
  }

  else
  {
    return sub_1D56159F8();
  }
}

unint64_t sub_1D53FF3D8()
{
  result = qword_1EC7EFE88;
  if (!qword_1EC7EFE88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EFE60, &qword_1D5635158);
    sub_1D53FAAFC(&qword_1EC7EC648, MEMORY[0x1E6976480], MEMORY[0x1E6976488]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EFE88);
  }

  return result;
}

unint64_t sub_1D53FF48C()
{
  result = qword_1EC7F5F18;
  if (!qword_1EC7F5F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5F18);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MusicSuggestedSongsRequest.Error(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D53FF5C0()
{
  result = qword_1EC7F5F20;
  if (!qword_1EC7F5F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5F20);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_37_42()
{

  return sub_1D4E55E1C(v1, v0);
}

id sub_1D53FF6B4(char a1, uint64_t a2, char a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3D8, &qword_1D561C200);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D561C050;
  *(inited + 32) = TVSeason.LegacyModelTVSeasonPropertyKey.rawValue.getter();
  *(inited + 40) = v6;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F3CE8, &unk_1D56611E0);
  *(inited + 48) = a2;
  *(inited + 56) = a3 & 1;
  v7 = sub_1D5614BD8();
  v8 = [objc_opt_self() emptyIdentifierSet];
  if (qword_1EC7E8968 != -1)
  {
    swift_once();
  }

  v9 = sub_1D5613158();
  __swift_project_value_buffer(v9, qword_1EC7EA338);
  v10 = sub_1D5159818();
  v11 = objc_allocWithZone(MEMORY[0x1E6977640]);
  return sub_1D4ECA8B8(v8, v10, v7);
}

uint64_t TVEpisode.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v215 = a4;
  v221 = a3;
  v223 = a1;
  v216 = a5;
  v222 = sub_1D5612B88();
  OUTLINED_FUNCTION_4();
  v232 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_0();
  v9 = v8;
  v10 = sub_1D5610088();
  OUTLINED_FUNCTION_4();
  v228 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v13);
  v219 = sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v218 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0478, &qword_1D5637C60);
  OUTLINED_FUNCTION_22(v17);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_13_3();
  v233 = v19;
  v20 = type metadata accessor for TVEpisodePropertyProvider(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_11_3(&v211 - v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  v25 = OUTLINED_FUNCTION_22(v24);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_59_0();
  v28 = v26 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v211 - v30;
  v214 = sub_1D5612478();
  OUTLINED_FUNCTION_4();
  v213 = v32;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v211 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v220 = a2;
  sub_1D560F7E8();
  v231 = sub_1D54011A8();
  v230 = sub_1D5614C68();

  sub_1D5610078();
  __swift_storeEnumTagSinglePayload(v31, 0, 1, v10);
  sub_1D5610078();
  v229 = v10;
  __swift_storeEnumTagSinglePayload(v28, 0, 1, v10);
  v217 = v35;
  sub_1D560D4D8();
  sub_1D4E50004(v28, &qword_1EC7EA358, &unk_1D561DF50);
  sub_1D4E50004(v31, &qword_1EC7EA358, &unk_1D561DF50);
  sub_1D4EC76A8(v221, v234);
  v212 = v20;
  if (!v235)
  {
    sub_1D4E50004(v234, &qword_1EC7EEC40, &unk_1D561C070);
    OUTLINED_FUNCTION_36_53();
    v238 = 0;
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3A8, &unk_1D561C1E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v238 = 0;
    OUTLINED_FUNCTION_36_53();
    goto LABEL_8;
  }

  if (!v237)
  {
LABEL_8:
    sub_1D4E50004(&v236, &qword_1EC7EA368, &unk_1D5629620);
    goto LABEL_9;
  }

  sub_1D4E48324(&v236, &v239);
  __swift_project_boxed_opaque_existential_1(&v239, v240);
  sub_1D5612B18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9F88, &unk_1D561B980);
  v36 = v233;
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v36, 0, 1, v20);
    v37 = v224;
    sub_1D512B990(v36, v224);
    OUTLINED_FUNCTION_17_80();
    v38 = v225;
    sub_1D5403004(v37, v225, v39);
    v40 = v226;
    sub_1D560D718();
    (*(v218 + 40))(v38 + v20[53], v40, v219);
    v41 = v227;
    sub_1D5612468();
    (*(v228 + 40))(v38 + v20[54], v41, v229);
    v42 = sub_1D5612458();
    v44 = v43;
    sub_1D5403064(v37, v36);
    v45 = (v38 + v20[55]);

    *v45 = v42;
    v45[1] = v44;
    __swift_destroy_boxed_opaque_existential_1(&v239);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v207, v208, v209, v20);
  sub_1D4E50004(v36, &qword_1EC7F0478, &qword_1D5637C60);
  __swift_destroy_boxed_opaque_existential_1(&v239);
LABEL_9:
  v46 = sub_1D56140F8();
  v47 = v225;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v46);
  sub_1D560F928();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v54);
  v55 = sub_1D560C328();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v56, v57, v58, v55);
  v59 = sub_1D5610978();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v60, v61, v62, v59);
  v63 = sub_1D560C0A8();
  v64 = OUTLINED_FUNCTION_7_122();
  __swift_storeEnumTagSinglePayload(v64, v65, v66, v63);
  sub_1D5613178();
  v67 = OUTLINED_FUNCTION_7_122();
  __swift_storeEnumTagSinglePayload(v67, v68, v69, v70);
  sub_1D5613198();
  v71 = OUTLINED_FUNCTION_7_122();
  __swift_storeEnumTagSinglePayload(v71, v72, v73, v74);
  sub_1D56134E8();
  v75 = OUTLINED_FUNCTION_7_122();
  __swift_storeEnumTagSinglePayload(v75, v76, v77, v78);
  v79 = OUTLINED_FUNCTION_2_166(v20[24]);
  __swift_storeEnumTagSinglePayload(v79, v80, v81, v55);
  v82 = OUTLINED_FUNCTION_2_166(v20[25]);
  __swift_storeEnumTagSinglePayload(v82, v83, v84, v55);
  sub_1D5614A78();
  v85 = OUTLINED_FUNCTION_7_122();
  __swift_storeEnumTagSinglePayload(v85, v86, v87, v88);
  v89 = OUTLINED_FUNCTION_2_166(v20[29]);
  __swift_storeEnumTagSinglePayload(v89, v90, v91, v59);
  sub_1D56109F8();
  v92 = OUTLINED_FUNCTION_7_122();
  __swift_storeEnumTagSinglePayload(v92, v93, v94, v95);
  v96 = OUTLINED_FUNCTION_2_166(v20[32]);
  __swift_storeEnumTagSinglePayload(v96, v97, v98, v46);
  v99 = OUTLINED_FUNCTION_2_166(v20[34]);
  __swift_storeEnumTagSinglePayload(v99, v100, v101, v55);
  v102 = sub_1D560FDC8();
  OUTLINED_FUNCTION_5_124(v102);
  v103 = OUTLINED_FUNCTION_2_166(v20[38]);
  __swift_storeEnumTagSinglePayload(v103, v104, v105, v63);
  v106 = OUTLINED_FUNCTION_2_166(v20[44]);
  __swift_storeEnumTagSinglePayload(v106, v107, v108, v63);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  OUTLINED_FUNCTION_5_124(v109);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA518, &unk_1D5623F50);
  OUTLINED_FUNCTION_5_124(v110);
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA380, &qword_1D561C090);
  OUTLINED_FUNCTION_5_124(v111);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
  OUTLINED_FUNCTION_5_124(v112);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA370, &unk_1D561C080);
  OUTLINED_FUNCTION_5_124(v113);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA538, &qword_1D561C490);
  OUTLINED_FUNCTION_5_124(v114);
  (*(v218 + 16))(v47 + v20[53], v223, v219);
  sub_1D5612468();
  v115 = sub_1D5612458();
  v233 = v116;
  sub_1D5614A88();
  v229 = OUTLINED_FUNCTION_19_77();
  v228 = OUTLINED_FUNCTION_19_77();
  v117 = OUTLINED_FUNCTION_19_77();
  v118 = OUTLINED_FUNCTION_19_77();
  OUTLINED_FUNCTION_14_80(v20[5]);
  *(v47 + v20[7]) = 0;
  OUTLINED_FUNCTION_65_3(v20[8]);
  *(v47 + v20[9]) = 0;
  OUTLINED_FUNCTION_14_80(v20[11]);
  *(v47 + v20[12]) = 0;
  *(v47 + v20[14]) = 0;
  *(v47 + v20[15]) = 0;
  *(v47 + v20[16]) = 2;
  *(v47 + v20[18]) = 2;
  *(v47 + v20[19]) = 2;
  *(v47 + v20[23]) = 26;
  OUTLINED_FUNCTION_14_80(v20[27]);
  *(v47 + v20[28]) = 0;
  v119 = v47 + v20[30];
  *v119 = xmmword_1D5626F70;
  *(v119 + 24) = 0;
  *(v119 + 32) = 0;
  *(v119 + 16) = 0;
  *(v47 + v20[33]) = 0;
  OUTLINED_FUNCTION_14_80(v20[35]);
  OUTLINED_FUNCTION_65_3(v20[37]);
  OUTLINED_FUNCTION_65_3(v20[39]);
  OUTLINED_FUNCTION_65_3(v20[40]);
  OUTLINED_FUNCTION_14_80(v20[41]);
  v120 = (v47 + v20[42]);
  v120[2] = 0u;
  v120[3] = 0u;
  *v120 = 0u;
  v120[1] = 0u;
  OUTLINED_FUNCTION_65_3(v20[43]);
  *(v47 + v20[51]) = 0;
  if (qword_1EC7E8E28 != -1)
  {
    swift_once();
  }

  v121 = qword_1EC87C178;
  if (qword_1EC87C178 >> 62)
  {
    sub_1D560CDE8();

    v210 = sub_1D5615E18();

    v121 = v210;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
  }

  v122 = v225;
  *(v225 + v20[52]) = v121;
  v123 = (v122 + v20[55]);
  v124 = v233;
  *v123 = v115;
  v123[1] = v124;
  *(v122 + v20[56]) = v229;
  *(v122 + v20[57]) = v228;
  *(v122 + v20[58]) = v117;
  *(v122 + v20[59]) = v118;
LABEL_14:
  swift_getKeyPath();
  LOBYTE(v239) = 0;
  LODWORD(v229) = *MEMORY[0x1E6976668];
  v125 = v232;
  v126 = v232 + 104;
  v226 = *(v232 + 104);
  v127 = v222;
  v226(v9);
  v233 = sub_1D5403298(&qword_1EC7EDBA8, type metadata accessor for TVEpisodePropertyProvider, &unk_1D5637BD0);
  OUTLINED_FUNCTION_35_56();
  sub_1D5610D98();

  v128 = *(v125 + 8);
  v232 = v125 + 8;
  v129 = OUTLINED_FUNCTION_20_9();
  v128(v129);
  v130 = v128;
  swift_getKeyPath();
  v131 = OUTLINED_FUNCTION_11_106(19);
  v132 = v229;
  v133 = v226;
  (v226)(v131, v229, v127);
  OUTLINED_FUNCTION_10_105();
  sub_1D5610D78();

  v134 = OUTLINED_FUNCTION_20_9();
  v130(v134);
  v227 = v130;
  swift_getKeyPath();
  v135 = OUTLINED_FUNCTION_11_106(3);
  v133(v135, v132, v127);
  v228 = v126;
  OUTLINED_FUNCTION_10_105();
  OUTLINED_FUNCTION_18_81();
  sub_1D5610D68();

  v136 = OUTLINED_FUNCTION_20_9();
  v130(v136);
  swift_getKeyPath();
  LOBYTE(v239) = 1;
  LODWORD(v224) = *MEMORY[0x1E6976670];
  (v133)(v9);
  OUTLINED_FUNCTION_10_105();
  sub_1D5610D88();
  OUTLINED_FUNCTION_33_55();
  v137 = OUTLINED_FUNCTION_20_9();
  v138 = v227;
  v227(v137);
  swift_getKeyPath();
  v139 = OUTLINED_FUNCTION_11_106(5);
  v140 = v229;
  v133(v139, v229, v127);
  OUTLINED_FUNCTION_10_105();
  OUTLINED_FUNCTION_18_81();
  sub_1D5610D68();

  v141 = OUTLINED_FUNCTION_20_9();
  v138(v141);
  swift_getKeyPath();
  v142 = OUTLINED_FUNCTION_11_106(6);
  v133(v142, v140, v127);
  OUTLINED_FUNCTION_10_105();
  OUTLINED_FUNCTION_18_81();
  sub_1D5610D68();

  v143 = OUTLINED_FUNCTION_20_9();
  v138(v143);
  swift_getKeyPath();
  OUTLINED_FUNCTION_11_106(7);
  OUTLINED_FUNCTION_37_43();
  v144 = v226;
  (v226)(v145, v146);
  OUTLINED_FUNCTION_10_105();
  OUTLINED_FUNCTION_18_81();
  sub_1D5610D68();

  v147 = OUTLINED_FUNCTION_20_9();
  v227(v147);
  swift_getKeyPath();
  OUTLINED_FUNCTION_11_106(9);
  OUTLINED_FUNCTION_37_43();
  v144(v148, v149);
  OUTLINED_FUNCTION_10_105();
  sub_1D5610D88();
  OUTLINED_FUNCTION_33_55();
  v150 = OUTLINED_FUNCTION_20_9();
  v151 = v227;
  v227(v150);
  swift_getKeyPath();
  v152 = OUTLINED_FUNCTION_11_106(10);
  (v144)(v152, v229, v127);
  OUTLINED_FUNCTION_10_105();
  sub_1D5610D88();
  OUTLINED_FUNCTION_33_55();
  v153 = OUTLINED_FUNCTION_20_9();
  v151(v153);
  swift_getKeyPath();
  OUTLINED_FUNCTION_11_106(11);
  v154 = v229;
  OUTLINED_FUNCTION_37_43();
  (v144)(v155, v156, v157, v158, v159, v160);
  OUTLINED_FUNCTION_10_105();
  sub_1D5610D88();
  OUTLINED_FUNCTION_33_55();
  v161 = OUTLINED_FUNCTION_20_9();
  v151(v161);
  swift_getKeyPath();
  OUTLINED_FUNCTION_11_106(12);
  OUTLINED_FUNCTION_37_43();
  (v226)(v162, v163, v164, v165, v166, v167, v168, v169);
  OUTLINED_FUNCTION_10_105();
  OUTLINED_FUNCTION_18_81();
  sub_1D5610D68();

  v170 = OUTLINED_FUNCTION_145_1();
  v227(v170);
  swift_getKeyPath();
  v171 = OUTLINED_FUNCTION_11_106(13);
  v172 = v226;
  (v226)(v171, v154, v127);
  OUTLINED_FUNCTION_10_105();
  OUTLINED_FUNCTION_18_81();
  sub_1D5610D68();

  v173 = OUTLINED_FUNCTION_145_1();
  v174 = v227;
  v227(v173);
  swift_getKeyPath();
  v175 = OUTLINED_FUNCTION_11_106(20);
  v172(v175, v154, v127);
  OUTLINED_FUNCTION_10_105();
  sub_1D5610D78();

  v174(v9, v127);
  v176 = v174;
  swift_getKeyPath();
  v177 = OUTLINED_FUNCTION_9_110(14);
  v178 = v226;
  v226(v177);
  OUTLINED_FUNCTION_10_105();
  OUTLINED_FUNCTION_18_81();
  sub_1D5610D68();

  v179 = v222;
  v176(v9, v222);
  swift_getKeyPath();
  v180 = OUTLINED_FUNCTION_11_106(21);
  (v178)(v180, v229, v179);
  sub_1D515CAB4();
  OUTLINED_FUNCTION_10_105();
  sub_1D5610D78();

  v181 = OUTLINED_FUNCTION_145_1();
  (v176)(v181);
  swift_getKeyPath();
  v182 = OUTLINED_FUNCTION_9_110(15);
  v178(v182);
  OUTLINED_FUNCTION_10_105();
  OUTLINED_FUNCTION_18_81();
  OUTLINED_FUNCTION_35_56();
  sub_1D5610D68();

  v183 = OUTLINED_FUNCTION_145_1();
  (v176)(v183);
  swift_getKeyPath();
  LOBYTE(v239) = 22;
  v184 = type metadata accessor for TVSeason(0);
  LOBYTE(v236) = 8;
  (v178)(v9, v224, v179);
  sub_1D5403298(&qword_1EC7EA438, type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
  OUTLINED_FUNCTION_35_56();
  sub_1D5610D48();

  v185 = OUTLINED_FUNCTION_145_1();
  (v176)(v185);
  swift_getKeyPath();
  LOBYTE(v239) = 23;
  type metadata accessor for TVShow(0);
  LOBYTE(v236) = 7;
  OUTLINED_FUNCTION_35_56();
  (v178)(v186, v187, v179, v188, v189, v190, v191, v192);
  sub_1D5403298(&qword_1EC7EA390, type metadata accessor for TVShow, &protocol conformance descriptor for TVShow);
  sub_1D5610D48();

  v193 = OUTLINED_FUNCTION_145_1();
  v194 = v227;
  v227(v193);
  swift_getKeyPath();
  v195 = OUTLINED_FUNCTION_9_110(16);
  v178(v195);
  OUTLINED_FUNCTION_10_105();
  OUTLINED_FUNCTION_18_81();
  sub_1D5610D68();

  v196 = v222;
  v194(v9, v222);
  swift_getKeyPath();
  v197 = OUTLINED_FUNCTION_9_110(17);
  v198 = v226;
  v226(v197);
  OUTLINED_FUNCTION_10_105();
  OUTLINED_FUNCTION_18_81();
  sub_1D5610D68();

  v194(v9, v196);
  swift_getKeyPath();
  v199 = OUTLINED_FUNCTION_11_106(18);
  v198(v199, v229, v196);
  sub_1D54011FC();
  OUTLINED_FUNCTION_10_105();
  sub_1D5610D88();
  OUTLINED_FUNCTION_33_55();
  v194(v9, v196);
  swift_getKeyPath();
  sub_1D5610DA8();

  swift_getKeyPath();
  LOBYTE(v239) = 22;
  v200 = type metadata accessor for TVEpisode(0);
  if (qword_1EC7E92B8 != -1)
  {
    swift_once();
  }

  sub_1D5403298(&qword_1EDD54508, type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);
  sub_1D5403298(&qword_1EC7F42A0, type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
  sub_1D5403298(&qword_1EC7EA480, type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
  v201 = v230;
  v232 = v200;
  sub_1D5610DC8();

  swift_getKeyPath();
  LOBYTE(v239) = 23;
  v202 = v212;
  if (qword_1EC7E92C0 != -1)
  {
    swift_once();
  }

  sub_1D5403298(&qword_1EC7EA398, type metadata accessor for TVShow, &protocol conformance descriptor for TVShow);
  sub_1D5403298(&qword_1EC7EA3A0, type metadata accessor for TVShow, &protocol conformance descriptor for TVShow);
  OUTLINED_FUNCTION_10_105();
  v203 = v233;
  sub_1D5610DC8();

  v240 = v202;
  v241 = v203;
  __swift_allocate_boxed_opaque_existential_0(&v239);
  OUTLINED_FUNCTION_17_80();
  sub_1D5403004(v184, v204, v205);
  TVEpisode.init(propertyProvider:)(&v239, v216);
  swift_unknownObjectRelease();
  sub_1D4E50004(v221, &qword_1EC7EEC40, &unk_1D561C070);
  (*(v218 + 8))(v223, v219);
  (*(v213 + 8))(v217, v214);
  return sub_1D5403064(v184, v201);
}

unint64_t sub_1D54011A8()
{
  result = qword_1EC7F5F38;
  if (!qword_1EC7F5F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5F38);
  }

  return result;
}

unint64_t sub_1D54011FC()
{
  result = qword_1EC7F5F40;
  if (!qword_1EC7F5F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5F40);
  }

  return result;
}

uint64_t sub_1D5401250()
{
  v0 = sub_1D5613158();
  __swift_allocate_value_buffer(v0, qword_1EDD54538);
  v1 = __swift_project_value_buffer(v0, qword_1EDD54538);
  v2 = *MEMORY[0x1E69768A0];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t static TVEpisode.underlyingLegacyModelObjectType.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDD54530 != -1)
  {
    swift_once();
  }

  v2 = sub_1D5613158();
  __swift_project_value_buffer(v2, qword_1EDD54538);
  OUTLINED_FUNCTION_24_0();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t TVEpisode.convertToLegacyModelStorageDictionary(for:)(uint64_t a1)
{
  v313 = a1;
  v311 = type metadata accessor for TVShow(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B0, &unk_1D561C1F0);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v5);
  v308 = type metadata accessor for TVSeason(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v7);
  v310 = sub_1D56131C8();
  OUTLINED_FUNCTION_4();
  v309 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA878, &unk_1D5634790);
  OUTLINED_FUNCTION_22(v11);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v13);
  v305 = sub_1D5614A78();
  OUTLINED_FUNCTION_4();
  v296 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D8, &unk_1D5632160);
  OUTLINED_FUNCTION_22(v17);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC528, &unk_1D5621070);
  OUTLINED_FUNCTION_22(v20);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC530, &unk_1D5632150);
  OUTLINED_FUNCTION_22(v23);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC538, &unk_1D5621080);
  OUTLINED_FUNCTION_22(v26);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3B8, &unk_1D561E370);
  v30 = OUTLINED_FUNCTION_22(v29);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v293 - v34;
  v36 = sub_1D560F928();
  OUTLINED_FUNCTION_4();
  v294 = v37;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v293 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB98, L"X\b\a");
  OUTLINED_FUNCTION_22(v41);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v293 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v45);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v293 - v47;
  sub_1D4ECC890();
  v320 = sub_1D5614BD8();
  if (qword_1EC7E9170 != -1)
  {
    swift_once();
  }

  v49 = qword_1EC87C388;
  v50 = sub_1D56140F8();
  sub_1D5403298(&qword_1EDD54508, type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);
  sub_1D5403298(&qword_1EC7EC490, type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);
  OUTLINED_FUNCTION_6_127(v49, v50);
  OUTLINED_FUNCTION_57(v48, 1, v50);
  if (v51)
  {
    sub_1D4E50004(v48, &qword_1EC7E9CA0, &unk_1D561A0C0);
    OUTLINED_FUNCTION_11_35();
  }

  else
  {
    sub_1D5613F38();
    OUTLINED_FUNCTION_24_0();
    (*(v52 + 8))(v48, v50);
  }

  v53 = OUTLINED_FUNCTION_10_64();
  sub_1D4EC8C00(v53, 0, v54, v55, v56, v57, v58, v59, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306);
  v60 = v301;
  v61 = v299;
  if (qword_1EC7E9180 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_6_127(qword_1EC87C398, v36);
  OUTLINED_FUNCTION_32_1(v44);
  if (v51)
  {
    sub_1D4E50004(v44, &qword_1EC7EDB98, L"X\b\a");
    v66 = 0;
    v67 = 0;
    v322 = 0;
    v323 = 0;
  }

  else
  {
    v62 = v61;
    v63 = v60;
    v64 = v294;
    (*(v294 + 16))(v40, v44, v36);
    sub_1D515CC4C();
    v66 = v65;
    (*(v64 + 8))(v44, v36);
    v60 = v63;
    v61 = v62;
    v67 = sub_1D4F688F0();
  }

  v321 = v66;
  *&v324 = v67;
  v68 = OUTLINED_FUNCTION_10_64();
  sub_1D4EC8C00(v68, 19, v69, v70, v71, v72, v73, v74, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306);
  v75 = v305;
  if (qword_1EC7E9198 != -1)
  {
    swift_once();
  }

  v76 = qword_1EC87C3B0;
  v77 = sub_1D560C328();
  OUTLINED_FUNCTION_6_127(v76, v77);
  OUTLINED_FUNCTION_32_1(v35);
  if (v51)
  {
    sub_1D4E50004(v35, &qword_1EC7EA3B8, &unk_1D561E370);
    OUTLINED_FUNCTION_11_35();
  }

  else
  {
    *&v324 = v77;
    __swift_allocate_boxed_opaque_existential_0(&v321);
    OUTLINED_FUNCTION_24_0();
    (*(v78 + 32))();
  }

  v79 = OUTLINED_FUNCTION_10_64();
  sub_1D4EC8C00(v79, 3, v80, v81, v82, v83, v84, v85, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306);
  v86 = v304;
  if (qword_1EC7E91A0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_6_127(qword_1EC87C3B8, MEMORY[0x1E69E63B0]);
  if (v322)
  {
    v87 = 0;
    v322 = 0;
    v323 = 0;
    v88 = 0;
  }

  else
  {
    sub_1D5615578();
    v87 = MEMORY[0x1E69E63B0];
  }

  v321 = v88;
  v89 = OUTLINED_FUNCTION_3_90(v87);
  sub_1D4EC8C00(v89, 1, v90, v91, v92, v93, v94, v95, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306);
  if (qword_1EC7E9188 != -1)
  {
    swift_once();
  }

  v96 = qword_1EC87C3A0;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3D0, &unk_1D56223F0);
  OUTLINED_FUNCTION_6_127(v96, v97);
  if (v321)
  {
    v98 = v321;
  }

  else
  {
    v98 = MEMORY[0x1E69E7CC0];
  }

  if (*(v98 + 16))
  {
    v99 = *(v98 + 80);
    v100 = *(v98 + 88);

    if ((v100 & 1) == 0)
    {
      *&v324 = MEMORY[0x1E69E6530];
      v321 = v99;
      goto LABEL_31;
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_11_35();
LABEL_31:
  v101 = OUTLINED_FUNCTION_10_64();
  sub_1D4EC8C00(v101, 4, v102, v103, v104, v105, v106, v107, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306);
  if (qword_1EC7E91C0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_6_127(qword_1EC87C3D8, MEMORY[0x1E69E6370]);
  if (v321 == 2)
  {
    OUTLINED_FUNCTION_23_6();
  }

  else
  {
    LOBYTE(v321) = v321 & 1;
    v108 = MEMORY[0x1E69E6370];
  }

  v109 = OUTLINED_FUNCTION_3_90(v108);
  sub_1D4EC8C00(v109, 5, v110, v111, v112, v113, v114, v115, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306);
  if (qword_1EC7E91C8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_6_127(qword_1EC87C3E0, MEMORY[0x1E69E6370]);
  if (v321 == 2)
  {
    OUTLINED_FUNCTION_23_6();
  }

  else
  {
    LOBYTE(v321) = v321 & 1;
    v116 = MEMORY[0x1E69E6370];
  }

  v117 = OUTLINED_FUNCTION_3_90(v116);
  sub_1D4EC8C00(v117, 6, v118, v119, v120, v121, v122, v123, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306);
  if (qword_1EC7E91D0 != -1)
  {
    swift_once();
  }

  v124 = MEMORY[0x1E69E6370];
  OUTLINED_FUNCTION_6_127(qword_1EC87C3E8, MEMORY[0x1E69E6370]);
  if (v321 == 2)
  {
    OUTLINED_FUNCTION_23_6();
  }

  else
  {
    LOBYTE(v321) = v321 & 1;
    v125 = MEMORY[0x1E69E6370];
  }

  v126 = OUTLINED_FUNCTION_3_90(v125);
  sub_1D4EC8C00(v126, 7, v127, v128, v129, v130, v131, v132, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306);
  *&v324 = v124;
  LOBYTE(v321) = 1;
  sub_1D4EC8C00(&v321, 8, v133, v134, v135, v136, v137, v138, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306);
  if (qword_1EC7E91D8 != -1)
  {
    swift_once();
  }

  v139 = qword_1EC87C3F0;
  v140 = sub_1D5613178();
  OUTLINED_FUNCTION_6_127(v139, v140);
  OUTLINED_FUNCTION_57(v61, 1, v140);
  if (v51)
  {
    sub_1D4E50004(v61, &qword_1EC7EC538, &unk_1D5621080);
    OUTLINED_FUNCTION_21_39();
  }

  else
  {
    v139 = sub_1D5613168();
    OUTLINED_FUNCTION_24_0();
    (*(v141 + 8))(v61, v140);
    v142 = MEMORY[0x1E69E6530];
  }

  v321 = v139;
  v143 = OUTLINED_FUNCTION_3_90(v142);
  sub_1D4EC8C00(v143, 9, v144, v145, v146, v147, v148, v149, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306);
  if (qword_1EC7E91E0 != -1)
  {
    swift_once();
  }

  v150 = qword_1EC87C3F8;
  v151 = sub_1D5613198();
  v152 = v300;
  OUTLINED_FUNCTION_6_127(v150, v151);
  OUTLINED_FUNCTION_57(v152, 1, v151);
  if (v51)
  {
    sub_1D4E50004(v152, &qword_1EC7EC530, &unk_1D5632150);
    OUTLINED_FUNCTION_21_39();
  }

  else
  {
    v150 = sub_1D5613188();
    OUTLINED_FUNCTION_24_0();
    (*(v153 + 8))(v152, v151);
    v154 = MEMORY[0x1E69E6530];
  }

  v321 = v150;
  v155 = OUTLINED_FUNCTION_3_90(v154);
  sub_1D4EC8C00(v155, 10, v156, v157, v158, v159, v160, v161, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306);
  if (qword_1EC7E91E8 != -1)
  {
    swift_once();
  }

  v162 = qword_1EC87C400;
  v163 = sub_1D56134E8();
  OUTLINED_FUNCTION_6_127(v162, v163);
  OUTLINED_FUNCTION_57(v60, 1, v163);
  if (v51)
  {
    sub_1D4E50004(v60, &qword_1EC7EC528, &unk_1D5621070);
    OUTLINED_FUNCTION_21_39();
  }

  else
  {
    v162 = sub_1D5613468();
    OUTLINED_FUNCTION_24_0();
    (*(v164 + 8))(v60, v163);
    v165 = MEMORY[0x1E69E6530];
  }

  v166 = v306;
  v167 = v307;
  v321 = v162;
  v168 = OUTLINED_FUNCTION_3_90(v165);
  sub_1D4EC8C00(v168, 11, v169, v170, v171, v172, v173, v174, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306);
  if (qword_1EC7E91F8 != -1)
  {
    swift_once();
  }

  v175 = v302;
  OUTLINED_FUNCTION_6_127(qword_1EC87C410, v77);
  OUTLINED_FUNCTION_32_1(v175);
  if (v51)
  {
    sub_1D4E50004(v175, &qword_1EC7EA3B8, &unk_1D561E370);
    OUTLINED_FUNCTION_11_35();
  }

  else
  {
    *&v324 = v77;
    __swift_allocate_boxed_opaque_existential_0(&v321);
    OUTLINED_FUNCTION_24_0();
    (*(v176 + 32))();
  }

  v177 = v167;
  v178 = OUTLINED_FUNCTION_10_64();
  sub_1D4EC8C00(v178, 12, v179, v180, v181, v182, v183, v184, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306);
  v185 = v303;
  if (qword_1EC7E9200 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_6_127(qword_1EC87C418, v77);
  OUTLINED_FUNCTION_32_1(v185);
  if (v51)
  {
    sub_1D4E50004(v185, &qword_1EC7EA3B8, &unk_1D561E370);
    OUTLINED_FUNCTION_11_35();
  }

  else
  {
    *&v324 = v77;
    __swift_allocate_boxed_opaque_existential_0(&v321);
    OUTLINED_FUNCTION_24_0();
    (*(v186 + 32))();
  }

  v187 = OUTLINED_FUNCTION_10_64();
  sub_1D4EC8C00(v187, 13, v188, v189, v190, v191, v192, v193, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306);
  if (qword_1EC7E9208 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_6_127(qword_1EC87C420, v75);
  OUTLINED_FUNCTION_57(v86, 1, v75);
  if (v51)
  {
    sub_1D4E50004(v86, &qword_1EC7EF5D8, &unk_1D5632160);
    v196 = 0;
    v197 = 0;
    v322 = 0;
    v323 = 0;
  }

  else
  {
    v194 = v296;
    (*(v296 + 16))(v295, v86, v75);
    sub_1D515CC2C();
    v196 = v195;
    (*(v194 + 8))(v86, v75);
    v197 = sub_1D4F688F0();
  }

  v321 = v196;
  *&v324 = v197;
  v198 = OUTLINED_FUNCTION_10_64();
  sub_1D4EC8C00(v198, 20, v199, v200, v201, v202, v203, v204, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306);
  if (qword_1EC7E9210 != -1)
  {
    swift_once();
  }

  v205 = MEMORY[0x1E69E6530];
  OUTLINED_FUNCTION_6_127(qword_1EC87C428, MEMORY[0x1E69E6530]);
  if (v322)
  {
    v206 = 0;
    v207 = 0;
    v322 = 0;
    v323 = 0;
  }

  else
  {
    v206 = v321;
    v207 = v205;
  }

  v321 = v206;
  *&v324 = v207;
  v208 = OUTLINED_FUNCTION_10_64();
  sub_1D4EC8C00(v208, 14, v209, v210, v211, v212, v213, v214, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306);
  if (qword_1EC7E9228 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_6_127(qword_1EC87C440, &type metadata for PlaybackPosition);
  if (v317 == 2)
  {
    v215 = 0;
    v216 = 0;
    v317 = 0;
    v318 = 0;
  }

  else
  {
    v321 = v316;
    LOWORD(v322) = v317 & 0x101;
    v323 = v318;
    v324 = v319;
    sub_1D515CC6C();
    v215 = v217;
    v216 = sub_1D4F688F0();
  }

  v316 = v215;
  *&v319 = v216;
  v218 = OUTLINED_FUNCTION_20_46();
  sub_1D4EC8C00(v218, 21, v219, v220, v221, v222, v223, v224, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306);
  if (qword_1EC7E9248 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_6_127(qword_1EC87C460, v77);
  OUTLINED_FUNCTION_32_1(v166);
  if (v51)
  {
    sub_1D4E50004(v166, &qword_1EC7EA3B8, &unk_1D561E370);
    OUTLINED_FUNCTION_36_53();
  }

  else
  {
    *&v319 = v77;
    __swift_allocate_boxed_opaque_existential_0(&v316);
    OUTLINED_FUNCTION_24_0();
    (*(v225 + 32))();
  }

  v226 = OUTLINED_FUNCTION_20_46();
  sub_1D4EC8C00(v226, 15, v227, v228, v229, v230, v231, v232, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306);
  if (qword_1EC7E9268 != -1)
  {
    swift_once();
  }

  v233 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_6_127(qword_1EC87C480, MEMORY[0x1E69E6158]);
  if (v317)
  {
    v234 = v316;
    v235 = MEMORY[0x1E69E6158];
  }

  else
  {
    v234 = 0;
    v235 = 0;
    v318 = 0;
  }

  v316 = v234;
  *&v319 = v235;
  v236 = OUTLINED_FUNCTION_20_46();
  sub_1D4EC8C00(v236, 16, v237, v238, v239, v240, v241, v242, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306);
  v243 = TVEpisode.title.getter();
  *&v319 = v233;
  v316 = v243;
  v317 = v244;
  v245 = OUTLINED_FUNCTION_20_46();
  sub_1D4EC8C00(v245, 17, v246, v247, v248, v249, v250, v251, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306);
  if (qword_1EC7E91F0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_6_127(qword_1EC87C408, &type metadata for TVEpisode.Kind);
  switch(v316)
  {
    case 5u:
      v252 = 1;
      break;
    case 0x1Au:
      OUTLINED_FUNCTION_36_53();
      goto LABEL_110;
    case 0x14u:
      v252 = 3;
      break;
    case 0x17u:
      v252 = 5;
      break;
    case 6u:
      v252 = 2;
      break;
    default:
      v252 = 0;
      break;
  }

  v253 = [objc_opt_self() rawValueForType_];
  *&v319 = v205;
  v316 = v253;
LABEL_110:
  v254 = OUTLINED_FUNCTION_20_46();
  sub_1D4EC8C00(v254, 18, v255, v256, v257, v258, v259, v260, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306);
  TVEpisode.season.getter();
  OUTLINED_FUNCTION_57(v177, 1, v308);
  if (v51)
  {
    sub_1D4E50004(v177, &qword_1EC7EA878, &unk_1D5634790);
    v263 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_34_58();
    v261();
    sub_1D5403004(v177, v297, type metadata accessor for TVSeason);
    sub_1D4ECC300();
    v263 = v262;
    sub_1D5403064(v177, type metadata accessor for TVSeason);
  }

  v264 = sub_1D4F688F0();
  *&v319 = v264;
  if (!v263)
  {
    if (qword_1EC7E9250 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_6_127(qword_1EC87C468, MEMORY[0x1E69E6530]);
    v263 = sub_1D53FF6B4(8, v314, v315);
  }

  v316 = v263;
  v265 = OUTLINED_FUNCTION_20_46();
  sub_1D4EC8C00(v265, 22, v266, v267, v268, v269, v270, v271, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306);
  v272 = v312;
  TVEpisode.show.getter();
  OUTLINED_FUNCTION_57(v272, 1, v311);
  if (v51)
  {
    sub_1D4E50004(v272, &qword_1EC7EA3B0, &unk_1D561C1F0);
    *&v319 = v264;
  }

  else
  {
    OUTLINED_FUNCTION_34_58();
    v273();
    sub_1D5403004(v272, v298, type metadata accessor for TVShow);
    sub_1D4ECA950();
    v275 = v274;
    sub_1D5403064(v272, type metadata accessor for TVShow);
    *&v319 = v264;
    if (v275)
    {
      goto LABEL_124;
    }
  }

  v276 = TVEpisode.showName.getter();
  v278 = v277;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3D8, &qword_1D561C200);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D561C050;
  *(inited + 32) = 0xD00000000000001ALL;
  *(inited + 40) = 0x80000001D567CE50;
  *(inited + 72) = v233;
  *(inited + 48) = v276;
  *(inited + 56) = v278;
  v280 = sub_1D5614BD8();
  v281 = [objc_opt_self() emptyIdentifierSet];
  if (qword_1EC7E8B40 != -1)
  {
    swift_once();
  }

  v282 = sub_1D5613158();
  __swift_project_value_buffer(v282, qword_1EC7EE088);
  v283 = sub_1D5159818();
  v284 = objc_allocWithZone(MEMORY[0x1E6977640]);
  v275 = sub_1D4ECA8B8(v281, v283, v280);
LABEL_124:
  v316 = v275;
  v285 = OUTLINED_FUNCTION_20_46();
  sub_1D4EC8C00(v285, 23, v286, v287, v288, v289, v290, v291, v293, v294, v295, v296, v297, v298, v299, v300, v301, v302, v303, v304, v305, v306);
  return v320;
}

Swift::Int __swiftcall TVEpisode.Kind.convertToLegacyModelRawValue()()
{
  v1 = *v0;
  v2 = 5;
  v3 = 3;
  v4 = 2;
  if (v1 != 6)
  {
    v4 = 0;
  }

  if (v1 != 20)
  {
    v3 = v4;
  }

  if (v1 != 23)
  {
    v2 = v3;
  }

  if (v1 == 5)
  {
    v5 = 1;
  }

  else
  {
    v5 = v2;
  }

  v6 = objc_opt_self();

  return [v6 rawValueForType_];
}

uint64_t TVEpisode.LegacyModelTVEpisodePropertyKey.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_1D5616208();

  v6 = 0;
  v7 = 6;
  switch(v4)
  {
    case 0:
      goto LABEL_18;
    case 1:
      v6 = 1;
      goto LABEL_18;
    case 2:
      v6 = 2;
      goto LABEL_18;
    case 3:
      v6 = 3;
      goto LABEL_18;
    case 4:
      v6 = 4;
      goto LABEL_18;
    case 5:
      v6 = 5;
LABEL_18:
      v7 = v6;
      break;
    case 6:
      break;
    case 7:
      v7 = 7;
      break;
    case 8:
      v7 = 8;
      break;
    case 9:
      v7 = 9;
      break;
    case 10:
      v7 = 10;
      break;
    case 11:
      v7 = 11;
      break;
    case 12:
      v7 = 12;
      break;
    case 13:
      v7 = 13;
      break;
    case 14:
      v7 = 14;
      break;
    case 15:
      v7 = 15;
      break;
    case 16:
      v7 = 16;
      break;
    case 17:
      v7 = 17;
      break;
    case 18:
      v7 = 18;
      break;
    case 19:
      v7 = 19;
      break;
    case 20:
      v7 = 20;
      break;
    case 21:
      v7 = 21;
      break;
    case 22:
      v7 = 22;
      break;
    case 23:
      v7 = 23;
      break;
    default:
      v7 = 24;
      break;
  }

  *a3 = v7;
  return result;
}

unint64_t TVEpisode.LegacyModelTVEpisodePropertyKey.rawValue.getter()
{
  result = 0xD00000000000001FLL;
  switch(*v0)
  {
    case 1:
    case 0x17:
      result = 0xD000000000000020;
      break;
    case 2:
    case 0x10:
      result = 0xD000000000000027;
      break;
    case 3:
    case 4:
    case 0x13:
      result = 0xD000000000000026;
      break;
    case 5:
    case 7:
    case 0x14:
      result = 0xD00000000000002ALL;
      break;
    case 6:
      result = 0xD000000000000024;
      break;
    case 8:
      result = 0xD000000000000021;
      break;
    case 9:
    case 0x15:
      result = 0xD00000000000002CLL;
      break;
    case 0xA:
    case 0xC:
      result = 0xD00000000000002ELL;
      break;
    case 0xB:
      result = 0xD000000000000034;
      break;
    case 0xD:
      result = 0xD000000000000028;
      break;
    case 0xE:
      result = 0xD00000000000001ELL;
      break;
    case 0xF:
      result = 0xD000000000000023;
      break;
    case 0x11:
      result = 0xD00000000000001DLL;
      break;
    case 0x12:
      result = 0xD00000000000001CLL;
      break;
    case 0x16:
      result = 0xD000000000000022;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1D5402D9C@<X0>(unint64_t *a1@<X8>)
{
  result = TVEpisode.LegacyModelTVEpisodePropertyKey.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t TVEpisode.underlyingLegacyModelObjectType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69768A0];
  sub_1D5613158();
  OUTLINED_FUNCTION_14();
  v5 = *(v4 + 104);

  return v5(a1, v2, v3);
}

uint64_t sub_1D5402E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D5403298(&qword_1EC7F5F58, type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);

  return MEMORY[0x1EEDD15B0](a1, a2, a3, v8, a4);
}

uint64_t sub_1D5402EE8(uint64_t a1, uint64_t a2)
{
  sub_1D5403298(&qword_1EC7EA720, type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);

  return sub_1D56132F8();
}

id TVEpisode.Kind.init(legacyModelRawValue:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = [objc_opt_self() typeForRawValue_];
  v4 = 0x171A1406051AuLL >> (8 * result);
  if (result >= 6)
  {
    LOBYTE(v4) = 26;
  }

  *a2 = v4;
  return result;
}

Swift::Int sub_1D5402FDC@<X0>(Swift::Int *a1@<X8>)
{
  result = TVEpisode.Kind.convertToLegacyModelRawValue()();
  *a1 = result;
  return result;
}

uint64_t sub_1D5403004(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_14();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1D5403064(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1D54030C0()
{
  result = qword_1EC7F5F48;
  if (!qword_1EC7F5F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5F48);
  }

  return result;
}

unint64_t sub_1D540311C()
{
  result = qword_1EC7F5F50;
  if (!qword_1EC7F5F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5F50);
  }

  return result;
}

_BYTE *_s31LegacyModelTVEpisodePropertyKeyOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 23 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 23) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE8)
  {
    v6 = ((a2 - 233) >> 8) + 1;
    *result = a2 + 23;
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
          *result = a2 + 23;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1D5403298(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_33_55()
{
}

uint64_t MusicSummariesRequest.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA838, &unk_1D561CB10);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v14 - v6;
  sub_1D560CCE8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA840, &qword_1D561D790);
  v8 = type metadata accessor for MusicRequestConfiguration(0);
  swift_dynamicCast();
  OUTLINED_FUNCTION_219();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  sub_1D4F73F78(v7, v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v8) == 1)
  {
    static MusicRequestConfiguration.globalDefault.getter(a1);
    if (__swift_getEnumTagSinglePayload(v5, 1, v8) != 1)
    {
      sub_1D4E6C9CC(v5, &qword_1EC7EA838, &unk_1D561CB10);
    }
  }

  else
  {
    sub_1D4E56C6C(v5, a1);
  }

  return sub_1D4E6C9CC(v7, &qword_1EC7EA838, &unk_1D561CB10);
}

uint64_t sub_1D540349C(uint64_t a1)
{
  v2 = type metadata accessor for MusicRequestConfiguration(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D4F5A490(a1, v4);
  return MusicSummariesRequest.configuration.setter(v4);
}

uint64_t MusicSummariesRequest.configuration.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D560CD48();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MusicRequestConfiguration(0);
  OUTLINED_FUNCTION_0_221();
  sub_1D5404EEC(v8, v9, &protocol conformance descriptor for MusicRequestConfiguration);
  sub_1D560E6C8();
  sub_1D4F581B8(a1);
  return (*(v5 + 40))(v2, v7, v4);
}

void (*MusicSummariesRequest.configuration.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = sub_1D560CD48();
  v3[1] = v4;
  OUTLINED_FUNCTION_69(v4);
  v3[2] = v5;
  v3[3] = __swift_coroFrameAllocStub(*(v6 + 64));
  v7 = type metadata accessor for MusicRequestConfiguration(0);
  v3[4] = v7;
  v8 = *(*(v7 - 8) + 64);
  v3[5] = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  v3[6] = v9;
  MusicSummariesRequest.configuration.getter(v9);
  return sub_1D5403730;
}

void sub_1D5403730(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = *(*a1 + 48);
  v5 = *(*a1 + 24);
  if (a2)
  {
    sub_1D4F5A490(*(*a1 + 48), v3);
    OUTLINED_FUNCTION_0_221();
    sub_1D5404EEC(v6, v7, &protocol conformance descriptor for MusicRequestConfiguration);
    sub_1D560E6C8();
    sub_1D4F581B8(v3);
    v8 = OUTLINED_FUNCTION_4_63();
    v9(v8);
    sub_1D4F581B8(v4);
  }

  else
  {
    OUTLINED_FUNCTION_0_221();
    sub_1D5404EEC(v10, v11, &protocol conformance descriptor for MusicRequestConfiguration);
    sub_1D560E6C8();
    sub_1D4F581B8(v4);
    v12 = OUTLINED_FUNCTION_4_63();
    v13(v12);
  }

  free(v4);
  free(v3);
  free(v5);

  free(v2);
}

uint64_t MusicSummariesRequest.response()(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  v5 = type metadata accessor for MusicSummariesRequest(0);
  v6 = sub_1D560CD48();
  v7 = sub_1D5404EEC(&qword_1EC7F5F60, type metadata accessor for MusicSummariesRequest, &protocol conformance descriptor for MusicSummariesRequest);
  *v4 = v2;
  v4[1] = sub_1D5404F5C;
  v8 = MEMORY[0x1E6974D18];

  return MEMORY[0x1EEDCE900](a1, v1, v5, v6, v7, v8);
}

uint64_t type metadata accessor for MusicSummariesRequest(uint64_t a1)
{
  result = qword_1EC7F5F80;
  if (!qword_1EC7F5F80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MusicSummariesRequest.catalogResponse()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7D8, &unk_1D561E8B0);
  v2[4] = OUTLINED_FUNCTION_127();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC020, &qword_1D561F998);
  v2[5] = v3;
  OUTLINED_FUNCTION_69(v3);
  v2[6] = v4;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v5 = sub_1D560D428();
  v2[9] = v5;
  OUTLINED_FUNCTION_69(v5);
  v2[10] = v6;
  v2[11] = OUTLINED_FUNCTION_127();
  v7 = sub_1D560CD48();
  v2[12] = v7;
  OUTLINED_FUNCTION_69(v7);
  v2[13] = v8;
  v2[14] = OUTLINED_FUNCTION_127();
  v9 = sub_1D560D348();
  v2[15] = v9;
  OUTLINED_FUNCTION_69(v9);
  v2[16] = v10;
  v2[17] = OUTLINED_FUNCTION_127();
  v11 = sub_1D560D388();
  v2[18] = v11;
  OUTLINED_FUNCTION_69(v11);
  v2[19] = v12;
  v2[20] = OUTLINED_FUNCTION_127();
  v13 = sub_1D560EBD8();
  v2[21] = v13;
  OUTLINED_FUNCTION_69(v13);
  v2[22] = v14;
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v15 = sub_1D560BB98();
  v2[25] = v15;
  OUTLINED_FUNCTION_69(v15);
  v2[26] = v16;
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v17 = swift_task_alloc();
  v2[31] = v17;
  *v17 = v2;
  v17[1] = sub_1D5403CF4;

  return MEMORY[0x1EEDCE260]();
}

uint64_t sub_1D5403CF4()
{
  v2 = *v1;
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 256) = v4;
  *(v2 + 264) = v5;

  if (v0)
  {

    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_63_0();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_63_0();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D5403ED0()
{
  if (v0[33])
  {
    v2 = v0[29];
    v1 = v0[30];
    v3 = v0[25];
    v4 = v0[26];
    sub_1D560BB28();

    (*(v4 + 16))(v2, v1, v3);
    sub_1D4EFFE00();
    v6 = v5;
    v7 = *(v5 + 16);
    if (v7 >= *(v5 + 24) >> 1)
    {
      OUTLINED_FUNCTION_219();
      sub_1D4EFFE00();
      v6 = v36;
    }

    v8 = v0[29];
    v9 = v0[25];
    v10 = v0[26];
    (*(v10 + 8))(v0[30], v9);
    *(v6 + 16) = v7 + 1;
    (*(v10 + 32))(v6 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v7, v8, v9);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  sub_1D560BB28();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_219();
    sub_1D4EFFE00();
    v6 = v31;
  }

  v11 = *(v6 + 16);
  if (v11 >= *(v6 + 24) >> 1)
  {
    OUTLINED_FUNCTION_219();
    sub_1D4EFFE00();
    v6 = v32;
  }

  v12 = v0[28];
  v13 = v0[25];
  v14 = v0[26];
  *(v6 + 16) = v11 + 1;
  v15 = *(v14 + 32);
  v14 += 32;
  v16 = (*(v14 + 48) + 32) & ~*(v14 + 48);
  v42 = *(v14 + 40);
  v44 = v15;
  v15(v6 + v16 + v42 * v11, v12, v13);
  sub_1D560BB28();
  v17 = *(v6 + 16);
  v18 = v17 + 1;
  if (v17 >= *(v6 + 24) >> 1)
  {
    OUTLINED_FUNCTION_219();
    v34 = v33;
    sub_1D4EFFE00();
    v18 = v34;
    v6 = v35;
  }

  v19 = v0[27];
  v21 = v0[24];
  v20 = v0[25];
  v22 = v0[22];
  v38 = v0[23];
  v39 = v0[21];
  v23 = v0[16];
  v40 = v0[17];
  v41 = v0[15];
  v43 = v0[14];
  v24 = v6 + v16;
  v26 = v0[12];
  v25 = v0[13];
  v27 = v0[3];
  *(v6 + 16) = v18;
  v44(v24 + v17 * v42, v19, v20);
  sub_1D560EB78();

  (*(v22 + 16))(v38, v21, v39);
  (*(v23 + 104))(v40, *MEMORY[0x1E6974E78], v41);
  sub_1D560D368();
  v28 = *(v25 + 16);
  v0[34] = v28;
  v0[35] = (v25 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v28(v43, v27, v26);
  sub_1D560D2B8();
  v29 = swift_task_alloc();
  v0[36] = v29;
  *v29 = v0;
  v29[1] = sub_1D54042D0;
  v30 = v0[11];

  return MEMORY[0x1EEDCE5B0](v30);
}

uint64_t sub_1D54042D0()
{
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  *(v6 + 296) = v0;

  if (v0)
  {
    v7 = sub_1D54048BC;
  }

  else
  {
    v7 = sub_1D54043DC;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D54043DC()
{
  v1 = v0[34];
  v2 = v0[14];
  v3 = v0[12];
  v37 = v0[37];
  v4 = v0[3];
  sub_1D560B9C8();
  swift_allocObject();
  sub_1D560B9B8();
  v1(v2, v4, v3);
  sub_1D560B988();
  sub_1D5612208();
  swift_allocObject();
  sub_1D56121F8();

  sub_1D560B968();
  v5 = sub_1D560D418();
  v7 = v6;
  sub_1D5404CF0();
  sub_1D560B948();
  sub_1D4E55E1C(v5, v7);
  if (v37)
  {
    v9 = v0[10];
    v8 = v0[11];
    v10 = v0[9];

    (*(v9 + 8))(v8, v10);
    v11 = v0[24];
    v12 = v0[21];
    v13 = v0[22];
    (*(v0[19] + 8))(v0[20], v0[18]);
    (*(v13 + 8))(v11, v12);
    OUTLINED_FUNCTION_6_128();
  }

  else
  {
    v15 = v0[34];
    v36 = v0[24];
    v34 = v0[22];
    v35 = v0[21];
    v31 = v0[19];
    v32 = v0[18];
    v33 = v0[20];
    v16 = v0[14];
    v17 = v0[12];
    v27 = v0[13];
    v28 = v0[10];
    v29 = v0[9];
    v30 = v0[11];
    v25 = v0[7];
    v26 = v0[8];
    v18 = v0[5];
    v19 = v0[6];
    v21 = v0[3];
    v20 = v0[4];
    (*(v19 + 16))();
    v15(v16, v21, v17);
    v22 = sub_1D560CD98();
    __swift_storeEnumTagSinglePayload(v20, 1, 1, v22);
    type metadata accessor for MusicSummary(0);
    sub_1D5404EEC(&qword_1EC7EC048, type metadata accessor for MusicSummary, &protocol conformance descriptor for MusicSummary);
    sub_1D5404EEC(&qword_1EC7EC000, type metadata accessor for MusicSummary, &protocol conformance descriptor for MusicSummary);
    sub_1D5612368();

    sub_1D4E6C9CC(v20, &qword_1EC7EA7D8, &unk_1D561E8B0);
    (*(v27 + 8))(v16, v17);
    v23 = *(v19 + 8);
    v23(v25, v18);
    v23(v26, v18);
    (*(v28 + 8))(v30, v29);
    (*(v31 + 8))(v33, v32);
    (*(v34 + 8))(v36, v35);
  }

  OUTLINED_FUNCTION_55();

  return v14();
}

void sub_1D54048BC()
{
  v1 = v0[24];
  v3 = v0[21];
  v2 = v0[22];
  (*(v0[19] + 8))(v0[20], v0[18]);
  (*(v2 + 8))(v1, v3);
  OUTLINED_FUNCTION_6_128();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_63_0();

  __asm { BRAA            X1, X16 }
}

uint64_t MusicSummariesRequest.hash(into:)(uint64_t a1)
{
  sub_1D560CD48();
  OUTLINED_FUNCTION_2_167();
  sub_1D5404EEC(v1, v2, MEMORY[0x1E6974D28]);

  return sub_1D5614CB8();
}

uint64_t MusicSummariesRequest.hashValue.getter()
{
  sub_1D56162D8();
  sub_1D560CD48();
  OUTLINED_FUNCTION_2_167();
  sub_1D5404EEC(v0, v1, MEMORY[0x1E6974D28]);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D5404AE8(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D560CD48();
  sub_1D5404EEC(&qword_1EC7EA848, MEMORY[0x1E6974D20], MEMORY[0x1E6974D28]);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D5404B6C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D5404C04;

  return MusicSummariesRequest.catalogResponse()(a1);
}

uint64_t sub_1D5404C04()
{
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  OUTLINED_FUNCTION_55();

  return v3();
}

unint64_t sub_1D5404CF0()
{
  result = qword_1EC7F5F68;
  if (!qword_1EC7F5F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EC020, &qword_1D561F998);
    sub_1D5404D74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5F68);
  }

  return result;
}

unint64_t sub_1D5404D74()
{
  result = qword_1EC7EC030;
  if (!qword_1EC7EC030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EC028, &qword_1D561F9A0);
    sub_1D5404EEC(&qword_1EC7EC038, type metadata accessor for CloudMusicSummary, &protocol conformance descriptor for CloudMusicSummary);
    sub_1D5404EEC(&qword_1EC7EC040, type metadata accessor for CloudMusicSummary, &protocol conformance descriptor for CloudMusicSummary);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC030);
  }

  return result;
}

uint64_t sub_1D5404EEC(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for CloudHLSAsset(uint64_t a1)
{
  result = qword_1EDD57A08;
  if (!qword_1EDD57A08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D5404FD4(uint64_t a1)
{
  sub_1D500A1D4(319);
  if (v1 <= 0x3F)
  {
    sub_1D4F18AF4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D54050A0@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  sub_1D5611C78();
  OUTLINED_FUNCTION_4();
  v47 = v2;
  v48 = v1;
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  v5 = (v4 - v3);
  sub_1D5610788();
  OUTLINED_FUNCTION_4();
  v45 = v7;
  v46 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v43 = v9 - v8;
  v44 = sub_1D56107C8();
  OUTLINED_FUNCTION_4();
  v42 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v41 = v13 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v14);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v40 - v16;
  v40 = type metadata accessor for CloudHLSAsset(0);
  OUTLINED_FUNCTION_14();
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v40 - v22;
  v24 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v26 = v25;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5();
  v30 = v29 - v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF3A8, &qword_1D5631130);
  sub_1D5610708();
  sub_1D50D019C(v23, v17);
  sub_1D54067AC(v23);
  if (__swift_getEnumTagSinglePayload(v17, 1, v24) == 1)
  {
    sub_1D4E50004(v17, &unk_1EC7E9CA8, &unk_1D561D1D0);
    *v5 = 7107189;
    v5[1] = 0xE300000000000000;
    v32 = v47;
    v31 = v48;
    (*(v47 + 104))(v5, *MEMORY[0x1E69763E0], v48);
    sub_1D5406808(&qword_1EC7EE070, MEMORY[0x1E69763F0], MEMORY[0x1E69763F8]);
    swift_allocError();
    (*(v32 + 16))(v33, v5, v31);
    swift_willThrow();
    return (*(v32 + 8))(v5, v31);
  }

  else
  {
    v35 = v26;
    (*(v26 + 32))(v30, v17, v24);
    (*(v26 + 16))(v49, v30, v24);
    v36 = v41;
    sub_1D56107A8();
    sub_1D5610708();

    sub_1D54067AC(v21);
    v38 = v45;
    v37 = v46;
    v39 = v43;
    (*(v45 + 104))(v43, *MEMORY[0x1E6975DD0], v46);
    type metadata accessor for HLSAsset(0);
    sub_1D5610798();

    (*(v38 + 8))(v39, v37);
    (*(v42 + 8))(v36, v44);
    return (*(v35 + 8))(v30, v24);
  }
}

uint64_t sub_1D5405584@<X0>(uint64_t a1@<X8>)
{
  v29[1] = a1;
  v2 = sub_1D5610788();
  OUTLINED_FUNCTION_4();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v29[0] = sub_1D56107C8();
  OUTLINED_FUNCTION_4();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v15 = type metadata accessor for CloudHLSAsset(0);
  OUTLINED_FUNCTION_14();
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v29 - v20;
  v22 = sub_1D560C0A8();
  OUTLINED_FUNCTION_14();
  (*(v23 + 16))(v21, v1, v22);
  __swift_storeEnumTagSinglePayload(v21, 0, 1, v22);
  sub_1D56107A8();
  type metadata accessor for HLSAsset(0);
  (*(v4 + 104))(v8, *MEMORY[0x1E6975DD0], v2);
  v24 = sub_1D56107B8();
  v26 = v25;
  (*(v4 + 8))(v8, v2);
  (*(v10 + 8))(v14, v29[0]);
  v27 = &v21[*(v15 + 20)];
  *v27 = v24;
  v27[1] = v26;
  sub_1D5406748(v21, v19);
  sub_1D5614A88();
  sub_1D5614BD8();
  sub_1D56106F8();
  return sub_1D54067AC(v21);
}

uint64_t sub_1D5405824(uint64_t a1, uint64_t a2)
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
  v14 = &v33 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB0, &qword_1D562C590);
  OUTLINED_FUNCTION_22(v15);
  OUTLINED_FUNCTION_11();
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v33 - v18;
  v20 = *(v17 + 56);
  sub_1D50D019C(a1, &v33 - v18);
  sub_1D50D019C(a2, &v19[v20]);
  OUTLINED_FUNCTION_10(v19);
  if (!v21)
  {
    sub_1D50D019C(v19, v14);
    OUTLINED_FUNCTION_10(&v19[v20]);
    if (!v21)
    {
      (*(v6 + 32))(v10, &v19[v20], v4);
      OUTLINED_FUNCTION_0_222();
      sub_1D5406808(v23, v24, MEMORY[0x1E6968FC8]);
      v25 = sub_1D5614D18();
      v26 = *(v6 + 8);
      v26(v10, v4);
      v26(v14, v4);
      sub_1D4E50004(v19, &unk_1EC7E9CA8, &unk_1D561D1D0);
      if ((v25 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_13;
    }

    (*(v6 + 8))(v14, v4);
LABEL_9:
    sub_1D4E50004(v19, &qword_1EC7E9FB0, &qword_1D562C590);
    return 0;
  }

  OUTLINED_FUNCTION_10(&v19[v20]);
  if (!v21)
  {
    goto LABEL_9;
  }

  sub_1D4E50004(v19, &unk_1EC7E9CA8, &unk_1D561D1D0);
LABEL_13:
  v27 = *(type metadata accessor for CloudHLSAsset(0) + 20);
  v28 = (a1 + v27);
  v29 = *(a1 + v27 + 8);
  v30 = (a2 + v27);
  v31 = v30[1];
  if (v29)
  {
    if (v31)
    {
      v32 = *v28 == *v30 && v29 == v31;
      if (v32 || (sub_1D5616168() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v31)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1D5405AEC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v3 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6974617269707865 && a2 == 0xEA00000000006E6FLL)
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

uint64_t sub_1D5405BBC(char a1)
{
  if (a1)
  {
    return 0x6974617269707865;
  }

  else
  {
    return 7107189;
  }
}

uint64_t sub_1D5405BF0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5FA0, &unk_1D56613B8);
  OUTLINED_FUNCTION_4();
  v5 = v4;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D54066F4();
  sub_1D56163D8();
  v12[15] = 0;
  sub_1D560C0A8();
  OUTLINED_FUNCTION_0_222();
  sub_1D5406808(v9, v10, MEMORY[0x1E6968FB8]);
  sub_1D5616068();
  if (!v1)
  {
    type metadata accessor for CloudHLSAsset(0);
    v12[14] = 1;
    sub_1D5616028();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1D5405D8C(uint64_t a1)
{
  v2 = v1;
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
  v13 = &v17 - v12;
  sub_1D50D019C(v2, &v17 - v12);
  if (__swift_getEnumTagSinglePayload(v13, 1, v3) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v5 + 32))(v9, v13, v3);
    sub_1D56162F8();
    OUTLINED_FUNCTION_0_222();
    sub_1D5406808(v14, v15, MEMORY[0x1E6968FC0]);
    sub_1D5614CB8();
    (*(v5 + 8))(v9, v3);
  }

  if (!*(v2 + *(type metadata accessor for CloudHLSAsset(0) + 20) + 8))
  {
    return sub_1D56162F8();
  }

  sub_1D56162F8();
  return sub_1D5614E28();
}

uint64_t sub_1D5405F64()
{
  v1 = v0;
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
  v12 = &v16 - v11;
  sub_1D56162D8();
  sub_1D50D019C(v1, v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, v2) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v4 + 32))(v8, v12, v2);
    sub_1D56162F8();
    OUTLINED_FUNCTION_0_222();
    sub_1D5406808(v13, v14, MEMORY[0x1E6968FC0]);
    sub_1D5614CB8();
    (*(v4 + 8))(v8, v2);
  }

  if (*(v1 + *(type metadata accessor for CloudHLSAsset(0) + 20) + 8))
  {
    sub_1D56162F8();
    sub_1D5614E28();
  }

  else
  {
    sub_1D56162F8();
  }

  return sub_1D5616328();
}

uint64_t sub_1D540614C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5F90, &qword_1D56613B0);
  OUTLINED_FUNCTION_4();
  v27 = v9;
  v28 = v8;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v11 = type metadata accessor for CloudHLSAsset(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D54066F4();
  sub_1D5616398();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  sub_1D560C0A8();
  v30 = 0;
  OUTLINED_FUNCTION_0_222();
  sub_1D5406808(v16, v17, MEMORY[0x1E6968FD0]);
  sub_1D5615F78();
  sub_1D4F5A3D0(v7, v15);
  v29 = 1;
  v18 = sub_1D5615F38();
  v20 = v19;
  v21 = OUTLINED_FUNCTION_6_129();
  v22(v21);
  v23 = (v15 + *(v11 + 20));
  *v23 = v18;
  v23[1] = v20;
  sub_1D5406748(v15, v26);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D54067AC(v15);
}

uint64_t sub_1D54063FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5405AEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5406424(uint64_t a1)
{
  v2 = sub_1D54066F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5406460(uint64_t a1)
{
  v2 = sub_1D54066F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D54064D8(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = sub_1D560C0A8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v13 - v10;
  sub_1D56162D8();
  sub_1D50D019C(v4, v11);
  if (__swift_getEnumTagSinglePayload(v11, 1, v5) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v6 + 32))(v8, v11, v5);
    sub_1D56162F8();
    sub_1D5406808(&qword_1EC7E9FC8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    sub_1D5614CB8();
    (*(v6 + 8))(v8, v5);
  }

  if (*(v4 + *(a2 + 20) + 8))
  {
    sub_1D56162F8();
    sub_1D5614E28();
  }

  else
  {
    sub_1D56162F8();
  }

  return sub_1D5616328();
}

unint64_t sub_1D54066F4()
{
  result = qword_1EC7F5F98;
  if (!qword_1EC7F5F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5F98);
  }

  return result;
}

uint64_t sub_1D5406748(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudHLSAsset(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D54067AC(uint64_t a1)
{
  v2 = type metadata accessor for CloudHLSAsset(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5406808(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

_BYTE *storeEnumTagSinglePayload for CloudHLSAsset.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D5406930()
{
  result = qword_1EC7F5FA8;
  if (!qword_1EC7F5FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5FA8);
  }

  return result;
}

unint64_t sub_1D5406988()
{
  result = qword_1EC7F5FB0;
  if (!qword_1EC7F5FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5FB0);
  }

  return result;
}

unint64_t sub_1D54069E0()
{
  result = qword_1EC7F5FB8;
  if (!qword_1EC7F5FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5FB8);
  }

  return result;
}

uint64_t sub_1D5406A34(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x724273656E755469 && a2 == 0xEF65707954646E61)
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

uint64_t sub_1D5406ADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5406A34(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1D5406B08(uint64_t a1)
{
  v2 = sub_1D54070BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5406B44(uint64_t a1)
{
  v2 = sub_1D54070BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D5406B80@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = type metadata accessor for StorePlatformGenre(0);
  v4 = OUTLINED_FUNCTION_22(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_0();
  v51 = v5;
  v6 = OUTLINED_FUNCTION_70_0();
  v7 = type metadata accessor for StorePlatformRadioShow(v6);
  v8 = OUTLINED_FUNCTION_22(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_0();
  v50 = v9;
  OUTLINED_FUNCTION_70_0();
  v56 = sub_1D560FA68();
  OUTLINED_FUNCTION_4();
  v54 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_59_0();
  v52 = v12 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v49 - v15;
  v17 = type metadata accessor for StorePlatformCurator(0);
  v18 = OUTLINED_FUNCTION_22(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_59_0();
  v21 = v19 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = v49 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5FC0, &qword_1D56614E0);
  OUTLINED_FUNCTION_4();
  v55 = v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = v49 - v28;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D54070BC();
  v30 = v58;
  result = sub_1D5616398();
  if (!v30)
  {
    v58 = v21;
    v32 = v54;
    v33 = v56;
    if ((sub_1D5615FF8() & 1) == 0)
    {
      OUTLINED_FUNCTION_14_81();
      sub_1D513FA4C(v57, v24);
      (*(v55 + 8))(v29, v25);
LABEL_5:
      OUTLINED_FUNCTION_13_89();
LABEL_6:
      type metadata accessor for StorePlatformGenericMusicItem(0);
      return swift_storeEnumTagMultiPayload();
    }

    sub_1D5407110();
    sub_1D5615FD8();
    v49[1] = v25;
    v34 = v52;
    (*(v32 + 16))(v52, v16, v33);
    v35 = (*(v32 + 88))(v34, v33);
    if (v35 == *MEMORY[0x1E69759D8])
    {
      OUTLINED_FUNCTION_14_81();
      sub_1D513FA4C(v57, v58);
      v41 = OUTLINED_FUNCTION_2_168();
      v42(v41);
      v43 = OUTLINED_FUNCTION_4_131();
      v44(v43);
      goto LABEL_5;
    }

    if (v35 == *MEMORY[0x1E69759D0])
    {
      OUTLINED_FUNCTION_14_81();
      sub_1D52A59BC(v57, v51);
      v36 = OUTLINED_FUNCTION_2_168();
      v37(v36);
      v38 = OUTLINED_FUNCTION_4_131();
      v39(v38);
      OUTLINED_FUNCTION_13_89();
      goto LABEL_6;
    }

    if (v35 == *MEMORY[0x1E69759E0])
    {
      OUTLINED_FUNCTION_14_81();
      v40 = v50;
      sub_1D54284CC(v57, v50);
      v45 = OUTLINED_FUNCTION_2_168();
      v46(v45);
      v47 = OUTLINED_FUNCTION_4_131();
      v48(v47);
      sub_1D5407168(v40, v53, type metadata accessor for StorePlatformRadioShow);
      goto LABEL_6;
    }

    OUTLINED_FUNCTION_5_125();
    result = sub_1D5615E08();
    __break(1u);
  }

  return result;
}

unint64_t sub_1D54070BC()
{
  result = qword_1EC7F5FC8;
  if (!qword_1EC7F5FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F5FC8);
  }

  return result;
}

unint64_t sub_1D5407110()
{
  result = qword_1EC7F0808;
  if (!qword_1EC7F0808)
  {
    sub_1D560FA68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F0808);
  }

  return result;
}

uint64_t sub_1D5407168(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D54071D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v65 = a1;
  v66 = a2;
  sub_1D5613C48();
  OUTLINED_FUNCTION_4();
  v63 = v7;
  v64 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_0();
  v62 = v8;
  OUTLINED_FUNCTION_70_0();
  sub_1D5614B68();
  OUTLINED_FUNCTION_4();
  v60 = v10;
  v61 = v9;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_0();
  v59 = v11;
  OUTLINED_FUNCTION_70_0();
  v12 = sub_1D56141F8();
  OUTLINED_FUNCTION_4();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F07E8, &qword_1D5639468);
  v19 = OUTLINED_FUNCTION_22(v18);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v56 - v20;
  v22 = sub_1D560FA68();
  OUTLINED_FUNCTION_4();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_59_0();
  v28 = v26 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v56 - v30;
  sub_1D4E494C8(0x724273656E755469, 0xEF65707954646E61, a3);
  if (!v69)
  {
    sub_1D4E6C9CC(v68, &qword_1EC7E9F98, &qword_1D561C420);
    goto LABEL_6;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5FD0, &qword_1D56614E8);
    OUTLINED_FUNCTION_6_130(v32);
    v33 = v66;

    sub_1D5605694(v65, v33, a3);
    OUTLINED_FUNCTION_10_106();
    v34 = sub_1D5407868(&qword_1EC7F5FD8, &qword_1EC7F5FD0, &qword_1D56614E8);
    OUTLINED_FUNCTION_3_170(v34);
    sub_1D5614168();
    (*(v14 + 32))(a4, v17, v12);
LABEL_7:
    v35 = type metadata accessor for GenericMusicItem(0);
    swift_storeEnumTagMultiPayload();
    return __swift_storeEnumTagSinglePayload(a4, 0, 1, v35);
  }

  v57 = v24;
  v58 = a4;
  a4 = v67;

  sub_1D560FA58();
  if (__swift_getEnumTagSinglePayload(v21, 1, v22) == 1)
  {

    sub_1D4E6C9CC(v21, &qword_1EC7F07E8, &qword_1D5639468);
    a4 = v58;
    goto LABEL_6;
  }

  v37 = v57;
  (*(v57 + 32))(v31, v21, v22);
  (*(v37 + 16))(v28, v31, v22);
  v38 = (*(v37 + 88))(v28, v22);
  if (v38 == *MEMORY[0x1E69759D8])
  {

    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5FD0, &qword_1D56614E8);
    OUTLINED_FUNCTION_6_130(v39);
    v40 = v66;

    sub_1D5605694(v65, v40, a3);
    OUTLINED_FUNCTION_10_106();
    v41 = sub_1D5407868(&qword_1EC7F5FD8, &qword_1EC7F5FD0, &qword_1D56614E8);
    OUTLINED_FUNCTION_3_170(v41);
    sub_1D5614168();
    (*(v37 + 8))(v31, v22);
    a4 = v58;
    (*(v14 + 32))(v58, v17, v12);
    goto LABEL_7;
  }

  if (v38 == *MEMORY[0x1E69759D0])
  {

    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5FE0, &qword_1D56614F0);
    OUTLINED_FUNCTION_6_130(v42);

    v43 = OUTLINED_FUNCTION_9_111();
    sub_1D560566C(v43, v44, v45);
    OUTLINED_FUNCTION_10_106();
    v46 = sub_1D5407868(&qword_1EC7F5FE8, &qword_1EC7F5FE0, &qword_1D56614F0);
    OUTLINED_FUNCTION_3_170(v46);
    sub_1D5613BA8();
    (*(v37 + 8))(v31, v22);
    v47 = OUTLINED_FUNCTION_12_88();
    v48(v47);
    goto LABEL_7;
  }

  if (v38 == *MEMORY[0x1E69759E0])
  {

    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F5FF0, &qword_1D56614F8);
    OUTLINED_FUNCTION_6_130(v49);

    v50 = OUTLINED_FUNCTION_9_111();
    sub_1D5605680(v50, v51, v52);
    OUTLINED_FUNCTION_10_106();
    v53 = sub_1D5407868(&qword_1EC7F5FF8, &qword_1EC7F5FF0, &qword_1D56614F8);
    OUTLINED_FUNCTION_3_170(v53);
    sub_1D5614AD8();
    (*(v57 + 8))(v31, v22);
    v54 = OUTLINED_FUNCTION_12_88();
    v55(v54);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_5_125();
  result = sub_1D5615E08();
  __break(1u);
  return result;
}

uint64_t sub_1D5407868(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StorePlatformRawCurator.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_1D540797C()
{
  result = qword_1EC7F6000;
  if (!qword_1EC7F6000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6000);
  }

  return result;
}

unint64_t sub_1D54079D4()
{
  result = qword_1EC7F6008;
  if (!qword_1EC7F6008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6008);
  }

  return result;
}

unint64_t sub_1D5407A68()
{
  result = qword_1EC7F6010;
  if (!qword_1EC7F6010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6010);
  }

  return result;
}

unint64_t sub_1D5407AC0()
{
  result = qword_1EC7F6018;
  if (!qword_1EC7F6018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6018);
  }

  return result;
}

uint64_t UploadedVideo.init(identifierSet:legacyModelObject:existingItem:requestedRelationshipProperties:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v214 = a4;
  v201 = a1;
  v193 = a5;
  v7 = sub_1D5613598();
  OUTLINED_FUNCTION_4();
  v207 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v10);
  v191 = sub_1D5612B88();
  OUTLINED_FUNCTION_4();
  v208 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F1318, &qword_1D563FBC0);
  OUTLINED_FUNCTION_22(v14);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v16);
  v17 = sub_1D5610088();
  OUTLINED_FUNCTION_4();
  v210 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v20);
  v199 = sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v198 = v21;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5E8, &qword_1D56322E0);
  OUTLINED_FUNCTION_22(v24);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_13_3();
  v211 = v26;
  v196 = type metadata accessor for UploadedVideoPropertyProvider(0);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v28);
  v213 = v186 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  v31 = OUTLINED_FUNCTION_22(v30);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_59_0();
  v34 = v32 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v37 = v186 - v36;
  v189 = sub_1D5612478();
  OUTLINED_FUNCTION_4();
  v188 = v38;
  MEMORY[0x1EEE9AC00](v39);
  v41 = v186 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);

  v200 = a2;
  sub_1D560F7E8();
  OUTLINED_FUNCTION_14_82();
  v44 = sub_1D540A538(v42, v43, MEMORY[0x1E6976B08]);
  v192 = v7;
  v214 = v44;
  v212 = sub_1D5614C68();

  sub_1D560FF38();
  __swift_storeEnumTagSinglePayload(v37, 0, 1, v17);
  sub_1D560FF38();
  __swift_storeEnumTagSinglePayload(v34, 0, 1, v17);
  v197 = v41;
  v45 = v201;
  sub_1D560D4D8();
  sub_1D4E7661C(v34, &qword_1EC7EA358, &unk_1D561DF50);
  sub_1D4E7661C(v37, &qword_1EC7EA358, &unk_1D561DF50);
  v194 = a3;
  sub_1D4EC76A8(a3, v215);
  if (!v216)
  {
    sub_1D4E7661C(v215, &qword_1EC7EEC40, &unk_1D561C070);
    v217 = 0u;
    v218 = 0u;
    v219 = 0;
LABEL_8:
    v46 = v196;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA3A8, &unk_1D561C1E0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v219 = 0;
    v217 = 0u;
    v218 = 0u;
    goto LABEL_8;
  }

  v46 = v196;
  if (!*(&v218 + 1))
  {
LABEL_9:
    sub_1D4E7661C(&v217, &qword_1EC7EA368, &unk_1D5629620);
    goto LABEL_10;
  }

  sub_1D4E48324(&v217, &v220);
  __swift_project_boxed_opaque_existential_1(&v220, v221);
  sub_1D5612B18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9F88, &unk_1D561B980);
  v47 = v211;
  if (swift_dynamicCast())
  {
    OUTLINED_FUNCTION_17_53(v47);
    v48 = v205;
    sub_1D5408E5C(v47, v205);
    v49 = v213;
    sub_1D5408D9C(v48, v213);
    v50 = v206;
    sub_1D560D718();
    (*(v198 + 40))(v49 + v46[31], v50, v199);
    v51 = v209;
    sub_1D5612468();
    (*(v210 + 40))(v49 + v46[32], v51, v17);
    v52 = sub_1D5612458();
    v54 = v53;
    sub_1D5408E00(v48);
    v55 = (v49 + v46[33]);

    *v55 = v52;
    v55[1] = v54;
    __swift_destroy_boxed_opaque_existential_1(&v220);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v182, v183, v184, v46);
  sub_1D4E7661C(v47, &qword_1EC7EF5E8, &qword_1D56322E0);
  __swift_destroy_boxed_opaque_existential_1(&v220);
LABEL_10:
  sub_1D56140F8();
  v56 = v213;
  v57 = OUTLINED_FUNCTION_5_75();
  __swift_storeEnumTagSinglePayload(v57, v58, v59, v60);
  type metadata accessor for AssetFlavors(0);
  v61 = OUTLINED_FUNCTION_5_75();
  __swift_storeEnumTagSinglePayload(v61, v62, v63, v64);
  sub_1D560F928();
  v65 = OUTLINED_FUNCTION_5_75();
  __swift_storeEnumTagSinglePayload(v65, v66, v67, v68);
  sub_1D56106B8();
  v69 = OUTLINED_FUNCTION_5_75();
  __swift_storeEnumTagSinglePayload(v69, v70, v71, v72);
  v73 = sub_1D5610978();
  v74 = OUTLINED_FUNCTION_5_75();
  __swift_storeEnumTagSinglePayload(v74, v75, v76, v73);
  v77 = sub_1D560C328();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v78, v79, v80, v77);
  sub_1D56128E8();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v81, v82, v83, v84);
  type metadata accessor for HLSAsset(0);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v85, v86, v87, v88);
  sub_1D5610CB8();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v89, v90, v91, v92);
  v93 = sub_1D560C0A8();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v94, v95, v96, v93);
  sub_1D5613198();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v97, v98, v99, v100);
  sub_1D56134E8();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v101, v102, v103, v104);
  sub_1D5614A78();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v105, v106, v107, v108);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v109, v110, v111, v73);
  sub_1D56109F8();
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v112, v113, v114, v115);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v116, v117, v118, v93);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v119, v120, v121, v77);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA448, &unk_1D561D110);
  v122 = OUTLINED_FUNCTION_5_75();
  __swift_storeEnumTagSinglePayload(v122, v123, v124, v125);
  type metadata accessor for CuratorRelationshipProvider(0);
  v126 = OUTLINED_FUNCTION_5_75();
  __swift_storeEnumTagSinglePayload(v126, v127, v128, v129);
  (*(v198 + 16))(&v56[v46[31]], v45, v199);
  sub_1D5612468();
  v130 = sub_1D5612458();
  v132 = v131;
  sub_1D5614A88();
  v211 = OUTLINED_FUNCTION_18_77();
  v210 = OUTLINED_FUNCTION_18_77();
  v133 = OUTLINED_FUNCTION_18_77();
  v134 = OUTLINED_FUNCTION_18_77();
  *v56 = 0;
  *(v56 + 1) = 0;
  v135 = &v56[v46[9]];
  *v135 = 0;
  v135[8] = 1;
  *&v56[v46[10]] = 0;
  *&v56[v46[12]] = 0;
  v136 = &v56[v46[24]];
  *v136 = 0;
  *(v136 + 1) = 0;
  v137 = &v56[v46[26]];
  *v137 = 0;
  *(v137 + 1) = 0;
  *&v56[v46[29]] = 0;
  if (qword_1EDD54CE8 != -1)
  {
    swift_once();
  }

  v138 = qword_1EDD76B50;
  if (qword_1EDD76B50 >> 62)
  {
    sub_1D560CDE8();

    v185 = sub_1D5615E18();

    v138 = v185;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
  }

  v139 = v213;
  *&v213[v46[30]] = v138;
  v140 = (v139 + v46[33]);
  *v140 = v130;
  v140[1] = v132;
  v141 = v210;
  *(v139 + v46[34]) = v211;
  *(v139 + v46[35]) = v141;
  *(v139 + v46[36]) = v133;
  *(v139 + v46[37]) = v134;
LABEL_15:
  swift_getKeyPath();
  v142 = *MEMORY[0x1E6976AF0];
  v205 = *(v207 + 104);
  v209 = v207 + 104;
  v143 = v204;
  v144 = v192;
  v205(v204, v142, v192);
  OUTLINED_FUNCTION_17_53(v143);
  v145 = *MEMORY[0x1E6976668];
  v146 = v208;
  v147 = *(v208 + 104);
  v202 = v208 + 104;
  v206 = v147;
  v148 = v190;
  v203 = v145;
  v149 = v191;
  (v147)(v190, v145, v191);
  v210 = sub_1D540A538(&qword_1EDD54CD8, type metadata accessor for UploadedVideoPropertyProvider, &unk_1D5632250);
  sub_1D5610D98();

  v211 = *(v146 + 8);
  v150 = OUTLINED_FUNCTION_135_0();
  v151(v150);
  v208 = v146 + 8;
  sub_1D4E7661C(v143, &qword_1EC7F1318, &qword_1D563FBC0);
  swift_getKeyPath();
  v152 = OUTLINED_FUNCTION_38_42(&v223);
  v153 = v205;
  (v205)(v152);
  v154 = v145;
  v155 = v206;
  (v206)(v148, v154, v149);
  OUTLINED_FUNCTION_32_56();
  sub_1D5610D78();

  v156 = OUTLINED_FUNCTION_135_0();
  v211(v156);
  v157 = *(v207 + 8);
  v207 += 8;
  v195 = v157;
  v157(v143, v144);
  swift_getKeyPath();
  v158 = OUTLINED_FUNCTION_38_42(&v224);
  v153(v158);
  OUTLINED_FUNCTION_17_53(v143);
  v187 = *MEMORY[0x1E6976670];
  v155(v148);
  OUTLINED_FUNCTION_32_34();
  sub_1D5610D88();

  v159 = OUTLINED_FUNCTION_135_0();
  v160 = v211;
  v211(v159);
  sub_1D4E7661C(v143, &qword_1EC7F1318, &qword_1D563FBC0);
  swift_getKeyPath();
  OUTLINED_FUNCTION_30_61();
  v161();
  v162 = OUTLINED_FUNCTION_21_72();
  v163 = v202;
  v206(v162);
  OUTLINED_FUNCTION_32_56();
  sub_1D5610D78();

  v160(v148, v149);
  OUTLINED_FUNCTION_35_57();
  v164();
  v186[1] = swift_getKeyPath();
  v165 = v204;
  v166 = v205;
  v205(v204, *MEMORY[0x1E6976AB8], v144);
  OUTLINED_FUNCTION_17_53(v165);
  v167 = OUTLINED_FUNCTION_21_72();
  v206(v167);
  OUTLINED_FUNCTION_32_34();
  sub_1D5610D88();

  (v211)(v148, v149);
  sub_1D4E7661C(v165, &qword_1EC7F1318, &qword_1D563FBC0);
  swift_getKeyPath();
  v166(v165, *MEMORY[0x1E6976AC0], v144);
  OUTLINED_FUNCTION_17_53(v165);
  v168 = OUTLINED_FUNCTION_21_72();
  v169 = v206;
  v206(v168);
  OUTLINED_FUNCTION_32_34();
  sub_1D5610D88();

  v170 = OUTLINED_FUNCTION_135_0();
  v211(v170);
  sub_1D4E7661C(v165, &qword_1EC7F1318, &qword_1D563FBC0);
  swift_getKeyPath();
  OUTLINED_FUNCTION_30_61();
  v171();
  v172 = OUTLINED_FUNCTION_21_72();
  v169(v172);
  OUTLINED_FUNCTION_32_56();
  sub_1D5610D78();

  v173 = OUTLINED_FUNCTION_135_0();
  v211(v173);
  OUTLINED_FUNCTION_35_57();
  v174();
  swift_getKeyPath();
  OUTLINED_FUNCTION_38_42(&v224);
  OUTLINED_FUNCTION_30_61();
  v175();
  OUTLINED_FUNCTION_17_53(v163);
  (v206)(v148, v187, v149);
  v176 = v210;
  v177 = v213;
  sub_1D5610D68();

  v178 = OUTLINED_FUNCTION_135_0();
  v211(v178);
  sub_1D4E7661C(v163, &qword_1EC7F1318, &qword_1D563FBC0);
  swift_getKeyPath();
  v179 = v201;
  sub_1D5610DA8();

  v221 = v196;
  v222 = v176;
  v180 = __swift_allocate_boxed_opaque_existential_0(&v220);
  sub_1D5408D9C(v177, v180);
  UploadedVideo.init(propertyProvider:)(&v220, v193);
  swift_unknownObjectRelease();
  sub_1D4E7661C(v194, &qword_1EC7EEC40, &unk_1D561C070);
  (*(v198 + 8))(v179, v199);
  (*(v188 + 8))(v197, v189);
  return sub_1D5408E00(v177);
}

uint64_t sub_1D5408D9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UploadedVideoPropertyProvider(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5408E00(uint64_t a1)
{
  v2 = type metadata accessor for UploadedVideoPropertyProvider(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D5408E5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UploadedVideoPropertyProvider(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5408EC0()
{
  v0 = sub_1D5613158();
  __swift_allocate_value_buffer(v0, qword_1EC7F6020);
  v1 = __swift_project_value_buffer(v0, qword_1EC7F6020);
  v2 = *MEMORY[0x1E69767F8];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t static UploadedVideo.underlyingLegacyModelObjectType.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC7E9608 != -1)
  {
    swift_once();
  }

  v2 = sub_1D5613158();
  __swift_project_value_buffer(v2, qword_1EC7F6020);
  OUTLINED_FUNCTION_24_0();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t UploadedVideo.convertToLegacyModelStorageDictionary(for:)()
{
  v1 = v0;
  v153 = sub_1D5614A78();
  OUTLINED_FUNCTION_4();
  v147 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D8, &unk_1D5632160);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC528, &unk_1D5621070);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC530, &unk_1D5632150);
  OUTLINED_FUNCTION_22(v11);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v13);
  v150 = sub_1D5610CB8();
  OUTLINED_FUNCTION_4();
  v146 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF5D0, &unk_1D5632140);
  OUTLINED_FUNCTION_22(v17);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v19);
  v154 = sub_1D560F928();
  OUTLINED_FUNCTION_4();
  v145 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_11_3(v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EDB98, L"X\b\a");
  OUTLINED_FUNCTION_22(v23);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v24);
  v26 = v144 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9CA0, &unk_1D561A0C0);
  OUTLINED_FUNCTION_22(v27);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v28);
  v30 = v144 - v29;
  v31 = sub_1D5613598();
  OUTLINED_FUNCTION_4();
  v33 = v32;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_135();
  v160 = v36;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_135();
  v159 = v38;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_135();
  v158 = v40;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_135();
  v157 = v43;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v46);
  v48 = v144 - v47;
  OUTLINED_FUNCTION_14_82();
  v156 = sub_1D540A538(v49, v50, MEMORY[0x1E6976B18]);
  v51 = sub_1D5614BD8();
  v52 = *MEMORY[0x1E6976AF0];
  v163 = v33;
  v53 = *(v33 + 104);
  v161 = v33 + 104;
  v166 = v53;
  v53(v48, v52, v31);
  if (qword_1EDD53E58 != -1)
  {
    swift_once();
  }

  v54 = sub_1D56140F8();
  v55 = sub_1D540A538(&qword_1EDD57488, type metadata accessor for UploadedVideo, &protocol conformance descriptor for UploadedVideo);
  v164 = sub_1D540A538(&qword_1EC7EC488, type metadata accessor for UploadedVideo, &protocol conformance descriptor for UploadedVideo);
  v165 = v55;
  sub_1D560EC28();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v30, 1, v54);
  v162 = v1;
  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E7661C(v30, &qword_1EC7E9CA0, &unk_1D561A0C0);
    OUTLINED_FUNCTION_11_35();
  }

  else
  {
    sub_1D5613F38();
    OUTLINED_FUNCTION_24_0();
    (*(v57 + 8))(v30, v54);
    if (v170)
    {
      OUTLINED_FUNCTION_9_67();
      OUTLINED_FUNCTION_0_122();
      sub_1D4F14934();
      v51 = v167;
      v58 = *(v163 + 8);
      v58(v48, v31);
      goto LABEL_11;
    }
  }

  sub_1D4E7661C(&v169, &qword_1EC7E9F98, &qword_1D561C420);
  sub_1D4F0E600();
  if (v60)
  {
    v61 = v59;
    swift_isUniquelyReferenced_nonNull_native();
    v167 = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB488, &qword_1D561E260);
    sub_1D5615D78();
    v51 = v167;
    v58 = *(v163 + 8);
    v58((*(v167 + 48) + *(v163 + 72) * v61), v31);
    sub_1D4E519A8((*(v51 + 56) + 32 * v61), v168);
    sub_1D5615D98();
  }

  else
  {
    memset(v168, 0, sizeof(v168));
    v58 = *(v163 + 8);
  }

  v58(v48, v31);
  sub_1D4E7661C(v168, &qword_1EC7E9F98, &qword_1D561C420);
LABEL_11:
  v62 = v148;
  v166(v148, *MEMORY[0x1E6976A88], v31);
  if (qword_1EDD53F68 != -1)
  {
    swift_once();
  }

  sub_1D560EC28();
  v63 = v154;
  if (__swift_getEnumTagSinglePayload(v26, 1, v154) == 1)
  {
    sub_1D4E7661C(v26, &qword_1EC7EDB98, L"X\b\a");
    sub_1D4F0E600();
    if (v65)
    {
      v66 = v64;
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_6_69();
      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB488, &qword_1D561E260);
      OUTLINED_FUNCTION_7_73(v67);
      OUTLINED_FUNCTION_20_4();
      v58((v68 + v69 * v66), v31);
      sub_1D4E519A8((*(v51 + 56) + 32 * v66), &v169);
      sub_1D5615D98();
    }

    else
    {
      OUTLINED_FUNCTION_11_35();
    }

    v75 = v149;
    OUTLINED_FUNCTION_27_38();
    v58(v62, v31);
    sub_1D4E7661C(&v169, &qword_1EC7E9F98, &qword_1D561C420);
  }

  else
  {
    v70 = v62;
    v71 = v145;
    (*(v145 + 16))(v144[1], v26, v63);
    sub_1D515CC4C();
    v72 = v63;
    v74 = v73;
    (*(v71 + 8))(v26, v72);
    v170 = sub_1D4F688F0();
    *&v169 = v74;
    OUTLINED_FUNCTION_9_67();
    OUTLINED_FUNCTION_0_122();
    sub_1D4F14934();
    v51 = v167;
    OUTLINED_FUNCTION_27_38();
    v75 = v149;
    v58(v70, v31);
  }

  OUTLINED_FUNCTION_37_24();
  v76();
  if (qword_1EDD53E28 != -1)
  {
    swift_once();
  }

  v77 = MEMORY[0x1E69E63B0];
  OUTLINED_FUNCTION_28_39();
  sub_1D560EC28();
  if (BYTE8(v169))
  {
    sub_1D4F0E600();
    if (v78)
    {
      OUTLINED_FUNCTION_35_4();
      OUTLINED_FUNCTION_6_69();
      v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB488, &qword_1D561E260);
      OUTLINED_FUNCTION_7_73(v79);
      OUTLINED_FUNCTION_20_4();
      v58((v80 + v81 * v77), v31);
      OUTLINED_FUNCTION_21_43();
      OUTLINED_FUNCTION_4_73();
    }

    else
    {
      OUTLINED_FUNCTION_11_35();
    }

    v84 = v150;
    OUTLINED_FUNCTION_27_38();
    v85 = OUTLINED_FUNCTION_39_4();
    (v58)(v85);
    sub_1D4E7661C(&v169, &qword_1EC7E9F98, &qword_1D561C420);
  }

  else
  {
    sub_1D5615578();
    v170 = v77;
    *&v169 = v82;
    OUTLINED_FUNCTION_9_67();
    OUTLINED_FUNCTION_0_122();
    sub_1D4F14934();
    v51 = v167;
    OUTLINED_FUNCTION_27_38();
    v83 = OUTLINED_FUNCTION_39_4();
    (v58)(v83);
    v84 = v150;
  }

  OUTLINED_FUNCTION_37_24();
  v86();
  if (qword_1EDD53EE0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_28_39();
  v87 = v162;
  sub_1D560EC28();
  if (OUTLINED_FUNCTION_42_1(v75) == 1)
  {
    sub_1D4E7661C(v75, &qword_1EC7EF5D0, &unk_1D5632140);
    sub_1D4F0E600();
    if (v88)
    {
      OUTLINED_FUNCTION_35_4();
      OUTLINED_FUNCTION_6_69();
      v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB488, &qword_1D561E260);
      OUTLINED_FUNCTION_7_73(v89);
      OUTLINED_FUNCTION_20_4();
      v58((v90 + v91 * v84), v31);
      OUTLINED_FUNCTION_21_43();
      OUTLINED_FUNCTION_4_73();
    }

    else
    {
      OUTLINED_FUNCTION_11_35();
    }

    OUTLINED_FUNCTION_27_38();
    v58(v157, v31);
    sub_1D4E7661C(&v169, &qword_1EC7E9F98, &qword_1D561C420);
  }

  else
  {
    v92 = v75;
    v93 = v146;
    v94 = OUTLINED_FUNCTION_41_5();
    v95(v94);
    sub_1D515D168(v87);
    v97 = v96;
    (*(v93 + 8))(v92, v84);
    v170 = sub_1D4F688F0();
    *&v169 = v97;
    OUTLINED_FUNCTION_9_67();
    OUTLINED_FUNCTION_0_122();
    v98 = v157;
    sub_1D4F14934();
    v51 = v167;
    OUTLINED_FUNCTION_27_38();
    v58(v98, v31);
  }

  v99 = OUTLINED_FUNCTION_38_42(&v171);
  v100 = v166;
  (v166)(v99);
  v170 = MEMORY[0x1E69E6370];
  LOBYTE(v169) = 1;
  OUTLINED_FUNCTION_9_67();
  OUTLINED_FUNCTION_0_122();
  sub_1D4F14934();
  v101 = OUTLINED_FUNCTION_30_34();
  (v58)(v101);
  v100(v158, *MEMORY[0x1E6976AB8], v31);
  if (qword_1EDD53EA8 != -1)
  {
    swift_once();
  }

  v102 = sub_1D5613198();
  v103 = v151;
  OUTLINED_FUNCTION_28_39();
  sub_1D560EC28();
  v104 = OUTLINED_FUNCTION_42_1(v103);
  v105 = MEMORY[0x1E69E6530];
  v157 = v58;
  if (v104 == 1)
  {
    sub_1D4E7661C(v103, &qword_1EC7EC530, &unk_1D5632150);
    sub_1D4F0E600();
    if (v106)
    {
      OUTLINED_FUNCTION_35_4();
      OUTLINED_FUNCTION_6_69();
      v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB488, &qword_1D561E260);
      OUTLINED_FUNCTION_7_73(v107);
      v108 = OUTLINED_FUNCTION_3_97();
      (v58)(v108);
      OUTLINED_FUNCTION_21_43();
      OUTLINED_FUNCTION_4_73();
    }

    else
    {
      v109.n128_f64[0] = OUTLINED_FUNCTION_11_35();
    }

    (v58)(v158, v31, v109);
    sub_1D4E7661C(&v169, &qword_1EC7E9F98, &qword_1D561C420);
  }

  else
  {
    v110 = v103;
    v111 = sub_1D5613188();
    OUTLINED_FUNCTION_24_0();
    (*(v112 + 8))(v110, v102);
    v170 = v105;
    *&v169 = v111;
    OUTLINED_FUNCTION_9_67();
    OUTLINED_FUNCTION_0_122();
    sub_1D4F14934();
    v113 = OUTLINED_FUNCTION_30_34();
    (v58)(v113);
  }

  v166(v159, *MEMORY[0x1E6976AC0], v31);
  if (qword_1EDD53EA0 != -1)
  {
    swift_once();
  }

  v114 = sub_1D56134E8();
  v115 = v152;
  OUTLINED_FUNCTION_28_39();
  sub_1D560EC28();
  if (OUTLINED_FUNCTION_42_1(v115) == 1)
  {
    sub_1D4E7661C(v115, &qword_1EC7EC528, &unk_1D5621070);
    sub_1D4F0E600();
    if (v116)
    {
      OUTLINED_FUNCTION_35_4();
      OUTLINED_FUNCTION_6_69();
      v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB488, &qword_1D561E260);
      OUTLINED_FUNCTION_7_73(v117);
      v118 = OUTLINED_FUNCTION_3_97();
      v119 = v157;
      (v157)(v118);
      OUTLINED_FUNCTION_21_43();
      OUTLINED_FUNCTION_4_73();
      OUTLINED_FUNCTION_11_68();
    }

    else
    {
      OUTLINED_FUNCTION_11_35();
      OUTLINED_FUNCTION_11_68();
      v119 = v157;
    }

    v119(v159, v31);
    sub_1D4E7661C(&v169, &qword_1EC7E9F98, &qword_1D561C420);
  }

  else
  {
    v120 = sub_1D5613468();
    OUTLINED_FUNCTION_24_0();
    (*(v121 + 8))(v115, v114);
    v170 = v105;
    *&v169 = v120;
    OUTLINED_FUNCTION_9_67();
    OUTLINED_FUNCTION_0_122();
    v114 = v159;
    sub_1D4F14934();
    v122 = OUTLINED_FUNCTION_30_34();
    (v157)(v122);
    OUTLINED_FUNCTION_11_68();
  }

  OUTLINED_FUNCTION_37_24();
  v123();
  if (qword_1EDD53F08 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_28_39();
  sub_1D560EC28();
  v124 = v155;
  if (OUTLINED_FUNCTION_42_1(v155) == 1)
  {
    sub_1D4E7661C(v124, &qword_1EC7EF5D8, &unk_1D5632160);
    sub_1D4F0E600();
    if (v125)
    {
      OUTLINED_FUNCTION_35_4();
      OUTLINED_FUNCTION_6_69();
      v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB488, &qword_1D561E260);
      OUTLINED_FUNCTION_7_73(v126);
      v127 = OUTLINED_FUNCTION_3_97();
      v128 = v157;
      (v157)(v127);
      OUTLINED_FUNCTION_21_43();
      OUTLINED_FUNCTION_4_73();
    }

    else
    {
      OUTLINED_FUNCTION_11_35();
      v128 = v157;
    }

    v128(v160, v31);
    sub_1D4E7661C(&v169, &qword_1EC7E9F98, &qword_1D561C420);
  }

  else
  {
    v129 = v147;
    v130 = v160;
    v131 = v124;
    v132 = OUTLINED_FUNCTION_41_5();
    v133(v132);
    sub_1D515CC2C();
    v135 = v134;
    (*(v129 + 8))(v131, v114);
    v170 = sub_1D4F688F0();
    *&v169 = v135;
    OUTLINED_FUNCTION_9_67();
    OUTLINED_FUNCTION_0_122();
    sub_1D4F14934();
    v51 = v167;
    v128 = v157;
    (v157)(v130, v31);
  }

  OUTLINED_FUNCTION_37_24();
  v136();
  if (qword_1EDD53E78 != -1)
  {
    swift_once();
  }

  v137 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_28_39();
  sub_1D560EC28();
  if (*(&v169 + 1))
  {
    v170 = v137;
    OUTLINED_FUNCTION_9_67();
    OUTLINED_FUNCTION_0_122();
    sub_1D4F14934();
    v51 = v167;
    v138 = OUTLINED_FUNCTION_39_4();
    (v128)(v138);
  }

  else
  {
    sub_1D4F0E600();
    if (v139)
    {
      OUTLINED_FUNCTION_35_4();
      OUTLINED_FUNCTION_6_69();
      v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB488, &qword_1D561E260);
      OUTLINED_FUNCTION_7_73(v140);
      v141 = OUTLINED_FUNCTION_3_97();
      (v128)(v141);
      OUTLINED_FUNCTION_21_43();
      OUTLINED_FUNCTION_4_73();
    }

    else
    {
      OUTLINED_FUNCTION_11_35();
    }

    v142 = OUTLINED_FUNCTION_39_4();
    (v128)(v142);
    sub_1D4E7661C(&v169, &qword_1EC7E9F98, &qword_1D561C420);
  }

  return v51;
}

uint64_t UploadedVideo.underlyingLegacyModelObjectType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69767F8];
  sub_1D5613158();
  OUTLINED_FUNCTION_24_0();
  v5 = *(v4 + 104);

  return v5(a1, v2, v3);
}

uint64_t sub_1D540A36C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D540A538(&qword_1EC7EC720, type metadata accessor for UploadedVideo, &protocol conformance descriptor for UploadedVideo);

  return MEMORY[0x1EEDD15B0](a1, a2, a3, v8, a4);
}

uint64_t sub_1D540A420(uint64_t a1, uint64_t a2)
{
  sub_1D540A538(&qword_1EC7EA710, type metadata accessor for UploadedVideo, &protocol conformance descriptor for UploadedVideo);

  return sub_1D56132F8();
}

uint64_t sub_1D540A538(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

void *MusicLibrary.filterAvailableContentGroups(_:options:)(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = sub_1D560EFB8();
  if (v4)
  {
    v5 = v4;
    if (qword_1EDD5D8A8 != -1)
    {
      swift_once();
    }

    v6 = sub_1D560C758();
    __swift_project_value_buffer(v6, qword_1EDD76DC8);

    v7 = sub_1D560C738();
    v8 = sub_1D56156E8();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v9 = 136446466;
      v10 = MEMORY[0x1DA6EAF70](a1, &type metadata for MusicLibrary.ContentGroup);
      v12 = sub_1D4E6835C(v10, v11, &v40);

      *(v9 + 4) = v12;
      *(v9 + 12) = 2082;
      v13 = MusicLibrary.FilteringOptions.description.getter();
      v15 = sub_1D4E6835C(v13, v14, &v40);

      *(v9 + 14) = v15;
      _os_log_impl(&dword_1D4E3F000, v7, v8, "Filtering available content groups for %{public}s with options %{public}s.", v9, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_122();
      OUTLINED_FUNCTION_122();
    }

    v16 = a1[2];
    if (v16)
    {
      v17 = 0;
      v18 = (a1 + 4);
      v19 = a1[2];
      do
      {
        v20 = *v18++;
        v21 = qword_1D5661868[v20];
        if ((v21 & v17) != 0)
        {
          v21 = 0;
        }

        v17 |= v21;
        --v19;
      }

      while (v19);
    }

    else
    {
      v17 = 0;
    }

    v22 = sub_1D52914B8([v5 filterAvailableContentGroups:v17 withOptions:2 * (v3 & 1)]);
    if (v16)
    {
      v23 = 0;
      v24 = a1 + 4;
      a1 = MEMORY[0x1E69E7CC0];
      do
      {
        v25 = *(v24 + v23);
        v26 = *(v22 + 16);
        v27 = (v22 + 32);
        while (v26)
        {
          v28 = *v27++;
          --v26;
          if (v28 == v25)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v40 = a1;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1D4F049E4(0, a1[2] + 1, 1);
              a1 = v40;
            }

            v31 = a1[2];
            v30 = a1[3];
            if (v31 >= v30 >> 1)
            {
              sub_1D4F049E4(v30 > 1, v31 + 1, 1);
              a1 = v40;
            }

            a1[2] = v31 + 1;
            *(a1 + v31 + 32) = v25;
            break;
          }
        }

        ++v23;
      }

      while (v23 != v16);
    }

    else
    {

      a1 = MEMORY[0x1E69E7CC0];
    }

    v32 = sub_1D560C738();
    v33 = sub_1D56156E8();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v40 = v35;
      *v34 = 136446210;
      v36 = MEMORY[0x1DA6EAF70](a1, &type metadata for MusicLibrary.ContentGroup);
      v38 = sub_1D4E6835C(v36, v37, &v40);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_1D4E3F000, v32, v33, "Returning filtered available content groups: %{public}s.", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      OUTLINED_FUNCTION_122();
      OUTLINED_FUNCTION_122();
    }

    swift_unknownObjectRelease();
  }

  else
  {
  }

  return a1;
}

uint64_t static ClientInfo.== infix(_:_:)(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_11_107(a1);
  v6 = v5[3];
  v7 = v5[4];
  v9 = v5[5];
  v8 = v5[6];
  v11 = v5[7];
  v10 = v5[8];
  v25 = v11;
  v26 = v8;
  v12 = v4[2];
  v13 = v4[3];
  v14 = v4[4];
  v15 = v4[5];
  v16 = v4[6];
  v17 = v4[7];
  v18 = v2 == *v4 && v3 == v4[1];
  v23 = v4[8];
  v24 = v10;
  if (v18 || (sub_1D5616168() & 1) != 0)
  {
    v19 = v1 == v12 && v6 == v13;
    if (v19 || (OUTLINED_FUNCTION_9_112(), (sub_1D5616168() & 1) != 0))
    {
      v20 = v7 == v14 && v9 == v15;
      if (v20 || (sub_1D5616168() & 1) != 0)
      {
        v21 = v26 == v16 && v25 == v17;
        if (v21 || (sub_1D5616168() & 1) != 0)
        {
          if (v24)
          {
            if (v23 && (sub_1D4F0B2E8() & 1) != 0)
            {
              return 1;
            }
          }

          else if (!v23)
          {
            return 1;
          }
        }
      }
    }
  }

  return 0;
}

uint64_t ClientInfo.description.getter()
{
  v1 = *(v0 + 64);
  OUTLINED_FUNCTION_8_119();
  v9 = v2;
  v3 = sub_1D540AE8C();
  MEMORY[0x1DA6EAC70](v3);

  MEMORY[0x1DA6EAC70](0x203A69706120200ALL, 0xE800000000000000);

  v4 = sub_1D540AFBC();
  MEMORY[0x1DA6EAC70](v4);

  MEMORY[0x1DA6EAC70](0x3A67616220200A2CLL, 0xE900000000000020);

  if (v1)
  {
    sub_1D5615B68();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6038, &qword_1D56618C0);
    sub_1D540C060();
    sub_1D56155F8();

    MEMORY[0x1DA6EAC70](10506, 0xE200000000000000);
    sub_1D4F53278();
    v5 = sub_1D5615968();
    v7 = v6;

    MEMORY[0x1DA6EAC70](v5, v7);

    MEMORY[0x1DA6EAC70](0xD000000000000014, 0x80000001D568DA30);
  }

  MEMORY[0x1DA6EAC70](10506, 0xE200000000000000);
  return v9;
}

double ClientInfo.api.getter@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;

  return result;
}

double ClientInfo.bag.getter@<D0>(void *a1@<X8>)
{
  v2 = v1[5];
  v3 = v1[6];
  v4 = v1[7];
  *a1 = v1[4];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;

  return result;
}

unint64_t sub_1D540AD90@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D4E9B0C8(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1D540ADC0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D4E51274(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1D540ADEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D4E9B0C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D540AE14(uint64_t a1)
{
  v2 = sub_1D4E5297C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D540AE50(uint64_t a1)
{
  v2 = sub_1D4E5297C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D540AE8C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1D5615B68();

  strcpy(v6, "identifier: ");
  HIWORD(v6[1]) = -4864;
  MEMORY[0x1DA6EAC70](v1, v2);
  MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
  MEMORY[0x1DA6EAC70](v6[0], v6[1]);

  strcpy(v6, ", version: ");
  BYTE5(v6[1]) = 0;
  HIWORD(v6[1]) = -5120;
  MEMORY[0x1DA6EAC70](v3, v4);
  MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
  MEMORY[0x1DA6EAC70](v6[0], v6[1]);

  MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
  return 675893313;
}

uint64_t sub_1D540AFBC()
{
  v1 = v0[2];
  v2 = v0[3];
  v4[2] = 677863746;
  v4[3] = 0xE400000000000000;
  strcpy(v4, "profile: ");
  BYTE3(v4[1]) = 0;
  HIDWORD(v4[1]) = -369098752;
  MEMORY[0x1DA6EAC70](*v0, v0[1]);
  MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
  MEMORY[0x1DA6EAC70](v4[0], v4[1]);

  strcpy(v4, ", version: ");
  HIWORD(v4[1]) = -5120;
  MEMORY[0x1DA6EAC70](v1, v2);
  MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
  MEMORY[0x1DA6EAC70](v4[0], v4[1]);

  MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
  return 677863746;
}

uint64_t sub_1D540B0BC(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_11_107(a1);
  v6 = *(v5 + 24);
  v7 = v4[2];
  v8 = v4[3];
  v9 = v2 == *v4 && v3 == v4[1];
  if (v9 || (v10 = sub_1D5616168(), result = 0, (v10 & 1) != 0))
  {
    if (v1 == v7 && v6 == v8)
    {
      return 1;
    }

    else
    {
      OUTLINED_FUNCTION_9_112();

      return sub_1D5616168();
    }
  }

  return result;
}

void ClientInfo.encode(to:)()
{
  OUTLINED_FUNCTION_25_1();
  v24 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6048, &qword_1D56618C8);
  OUTLINED_FUNCTION_4();
  v25 = v5;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - v7;
  v9 = *v0;
  v10 = v0[1];
  v11 = v0[2];
  v12 = v0[3];
  v13 = v0[5];
  v20 = v0[4];
  v21 = v13;
  v14 = v0[6];
  v22 = v0[7];
  v23 = v11;
  v18 = v0[8];
  v19 = v14;
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1D4E5297C();

  sub_1D56163D8();
  v26 = v9;
  v27 = v10;
  v28 = v23;
  v29 = v12;
  sub_1D540C0C4();
  OUTLINED_FUNCTION_7_123();
  v15 = v24;
  sub_1D56160C8();

  if (v15)
  {
    (*(v25 + 8))(v8, v4);
  }

  else
  {
    v16 = v25;
    v26 = v20;
    v27 = v21;
    v17 = v18;
    v28 = v19;
    v29 = v22;
    sub_1D540C118();

    OUTLINED_FUNCTION_7_123();
    sub_1D56160C8();

    v26 = v17;
    sub_1D540C16C();
    OUTLINED_FUNCTION_7_123();
    sub_1D5616068();
    (*(v16 + 8))(v8, v4);
  }

  OUTLINED_FUNCTION_26();
}

uint64_t ClientInfo.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 64);
  sub_1D5614E28();
  sub_1D5614E28();
  sub_1D5614E28();
  sub_1D5614E28();
  if (!v2)
  {
    return sub_1D56162F8();
  }

  sub_1D56162F8();

  return sub_1D4F0B2F0();
}

uint64_t ClientInfo.hashValue.getter()
{
  v1 = *(v0 + 64);
  sub_1D56162D8();
  sub_1D5614E28();
  sub_1D5614E28();
  sub_1D5614E28();
  sub_1D5614E28();
  sub_1D56162F8();
  if (v1)
  {
    sub_1D4F0B2F0();
  }

  return sub_1D5616328();
}

uint64_t sub_1D540B554(uint64_t a1)
{
  sub_1D56162D8();
  ClientInfo.hash(into:)(v2);
  return sub_1D5616328();
}

uint64_t ClientInfo.API.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ClientInfo.API.version.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1D540B618@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D540B7F8(*a1, a1[1], &unk_1F50A4C28);
  *a2 = result;
  return result;
}

uint64_t sub_1D540B650@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D4E53DE0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D540B67C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D540B7F8(a1, a2, &unk_1F50A4C28);
  *a3 = result;
  return result;
}

uint64_t sub_1D540B6AC(uint64_t a1)
{
  v2 = sub_1D4E51458();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D540B6E8(uint64_t a1)
{
  v2 = sub_1D4E51458();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ClientInfo.API.description.getter()
{
  OUTLINED_FUNCTION_8_119();
  v3 = v0;
  v1 = sub_1D540AE8C();
  MEMORY[0x1DA6EAC70](v1);

  return v3;
}

uint64_t sub_1D540B7F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1D5615EF8();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D540B86C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D540B7F8(*a1, a1[1], &unk_1F50A4C78);
  *a2 = result;
  return result;
}

uint64_t sub_1D540B8A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D4E5401C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D540B8D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D540B7F8(a1, a2, &unk_1F50A4C78);
  *a3 = result;
  return result;
}

uint64_t sub_1D540B900(uint64_t a1)
{
  v2 = sub_1D4E53FC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D540B93C(uint64_t a1)
{
  v2 = sub_1D4E53FC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D540B9AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_25_1();
  v38 = v25;
  v39 = v24;
  v27 = v26;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(v28, v29);
  OUTLINED_FUNCTION_4();
  v40 = v31;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v32);
  v34 = v37 - v33;
  v35 = *(v23 + 16);
  v37[1] = *(v23 + 24);
  v37[2] = v35;
  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  v38();
  sub_1D56163D8();
  v36 = v39;
  sub_1D5616088();
  if (!v36)
  {
    sub_1D5616088();
  }

  (*(v40 + 8))(v34, v30);
  OUTLINED_FUNCTION_26();
}

uint64_t _s16MusicKitInternal10ClientInfoV3APIV4hash4intoys6HasherVz_tF_0(uint64_t a1)
{
  sub_1D5614E28();

  return sub_1D5614E28();
}

uint64_t _s16MusicKitInternal10ClientInfoV3APIV9hashValueSivg_0()
{
  sub_1D56162D8();
  sub_1D5614E28();
  sub_1D5614E28();
  return sub_1D5616328();
}

uint64_t sub_1D540BBF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  v6 = *(v4 + 2);
  v7 = *(v4 + 3);
  v10 = *v4;
  v11 = v6;
  v12 = v7;
  sub_1D56162D8();
  a4(v9);
  return sub_1D5616328();
}

BOOL sub_1D540BC54@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D4E9B120(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1D540BC88@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1D4E555B0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_1D540BCB0@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D4E9B120(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D540BCDC(uint64_t a1)
{
  v2 = sub_1D4E54278();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D540BD18(uint64_t a1)
{
  v2 = sub_1D4E54278();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D540BD58(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F60D0, &qword_1D5662230);
  OUTLINED_FUNCTION_4();
  v6 = v5;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D4E54278();
  sub_1D56163D8();
  v11[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6038, &qword_1D56618C0);
  sub_1D4E4A9E0(&qword_1EC7F60D8, sub_1D540C540, MEMORY[0x1E69E6300]);
  sub_1D56160C8();
  return (*(v6 + 8))(v9, v4);
}

uint64_t sub_1D540BED4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1DA6EC0D0](v3);
  if (v3)
  {
    v5 = a2 + 40;
    do
    {

      sub_1D5614E28();

      v5 += 16;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1D540BF4C()
{
  sub_1D56162D8();
  sub_1D4F0B2F0();
  return sub_1D5616328();
}

uint64_t sub_1D540C01C(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D4F0B2F0();
  return sub_1D5616328();
}

unint64_t sub_1D540C060()
{
  result = qword_1EC7F6040;
  if (!qword_1EC7F6040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F6038, &qword_1D56618C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6040);
  }

  return result;
}

unint64_t sub_1D540C0C4()
{
  result = qword_1EC7F6050;
  if (!qword_1EC7F6050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6050);
  }

  return result;
}

unint64_t sub_1D540C118()
{
  result = qword_1EC7F6058;
  if (!qword_1EC7F6058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6058);
  }

  return result;
}

unint64_t sub_1D540C16C()
{
  result = qword_1EC7F6060;
  if (!qword_1EC7F6060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6060);
  }

  return result;
}

unint64_t sub_1D540C1C4()
{
  result = qword_1EC7F6090;
  if (!qword_1EC7F6090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6090);
  }

  return result;
}

unint64_t sub_1D540C21C()
{
  result = qword_1EC7F6098;
  if (!qword_1EC7F6098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6098);
  }

  return result;
}

unint64_t sub_1D540C274()
{
  result = qword_1EC7F60A0;
  if (!qword_1EC7F60A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F60A0);
  }

  return result;
}

uint64_t sub_1D540C2C8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1D540C308(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D540C38C()
{
  result = qword_1EC7F60A8;
  if (!qword_1EC7F60A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F60A8);
  }

  return result;
}

unint64_t sub_1D540C3E4()
{
  result = qword_1EC7F60B0;
  if (!qword_1EC7F60B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F60B0);
  }

  return result;
}

unint64_t sub_1D540C43C()
{
  result = qword_1EC7F60B8;
  if (!qword_1EC7F60B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F60B8);
  }

  return result;
}

unint64_t sub_1D540C494()
{
  result = qword_1EC7F60C0;
  if (!qword_1EC7F60C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F60C0);
  }

  return result;
}

unint64_t sub_1D540C4EC()
{
  result = qword_1EC7F60C8;
  if (!qword_1EC7F60C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F60C8);
  }

  return result;
}

unint64_t sub_1D540C540()
{
  result = qword_1EC7F60E0;
  if (!qword_1EC7F60E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F60E0);
  }

  return result;
}

unint64_t sub_1D540C598()
{
  result = qword_1EC7F60F0;
  if (!qword_1EC7F60F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F60F0);
  }

  return result;
}

uint64_t sub_1D540C614@<X0>(uint64_t a1@<X8>)
{
  switch(*v1)
  {
    case 0:
      v3 = MEMORY[0x1E6974C98];
      goto LABEL_11;
    case 7:
      v3 = MEMORY[0x1E6974C78];
      goto LABEL_11;
    case 8:
      v3 = MEMORY[0x1E6974C80];
      goto LABEL_11;
    case 9:
      v3 = MEMORY[0x1E6974CA8];
      goto LABEL_11;
    case 0xA:
      v3 = MEMORY[0x1E6974C88];
      goto LABEL_11;
    case 0xE:
      v3 = MEMORY[0x1E6974C90];
      goto LABEL_11;
    case 0x10:
      v3 = MEMORY[0x1E6974CA0];
      goto LABEL_11;
    case 0x11:
      v3 = MEMORY[0x1E6974CB8];
      goto LABEL_11;
    case 0x12:
      v3 = MEMORY[0x1E6974CB0];
LABEL_11:
      v4 = *v3;
      v5 = sub_1D560CB48();
      (*(*(v5 - 8) + 104))(a1, v4, v5);
      v6 = a1;
      v7 = 0;
      v8 = 1;
      v9 = v5;
      break;
    default:
      sub_1D560CB48();
      v6 = OUTLINED_FUNCTION_25_9();
      break;
  }

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

double static MusicLibraryMapping.ItemKind.allCases.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t static MusicLibraryMapping.ItemKind.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EC7F60F8 = a1;
}

double sub_1D540C848@<D0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = off_1EC7F60F8;

  return result;
}

uint64_t sub_1D540C898(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  off_1EC7F60F8 = v1;
}

uint64_t MusicLibraryMapping.ItemKind.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

uint64_t sub_1D540C9A4(uint64_t a1)
{
  sub_1D56162D8();
  MusicLibraryMapping.ItemKind.hash(into:)();
  return sub_1D5616328();
}

uint64_t sub_1D540C9EC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6118, &qword_1D56624D0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6120, &unk_1D56624D8);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D561CA30;
  v4 = v3 + v2;
  v19 = *(v0 + 48);
  if (qword_1EDD53D48 != -1)
  {
    swift_once();
  }

  v5 = sub_1D560D9A8();
  v6 = __swift_project_value_buffer(v5, qword_1EDD53D50);
  v7 = *(*(v5 - 8) + 16);
  v7(v4, v6, v5);
  v8 = *MEMORY[0x1E6974C78];
  v9 = sub_1D560CB48();
  v10 = *(*(v9 - 8) + 104);
  v10(v4 + v19, v8, v9);
  v20 = *(v0 + 48);
  if (qword_1EDD53CC0 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v5, qword_1EDD53CC8);
  v7(v4 + v1, v11, v5);
  v10(v4 + v1 + v20, *MEMORY[0x1E6974C88], v9);
  v21 = v1;
  v12 = v4 + 2 * v1;
  v13 = *(v0 + 48);
  if (qword_1EDD53C38 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v5, qword_1EDD53C40);
  v7(v12, v14, v5);
  v10(v12 + v13, *MEMORY[0x1E6974CB8], v9);
  v15 = *(v0 + 48);
  if (qword_1EDD53C58 != -1)
  {
    swift_once();
  }

  v16 = v4 + 3 * v21;
  v17 = __swift_project_value_buffer(v5, qword_1EDD53C60);
  v7(v16, v17, v5);
  v10(v16 + v15, *MEMORY[0x1E6974CB0], v9);
  sub_1D540D118();
  result = sub_1D5614BD8();
  qword_1EDD543B8 = result;
  return result;
}

double static _MusicLibraryMapping.ItemKind.extendedItemKindMap.getter()
{
  if (qword_1EDD543B0 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t _MusicLibraryMapping.ItemKind.extendedConvertToInnerTypeValue()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1D560CB48();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, v2, v4);
  if ((*(v5 + 88))(v7, v4) == *MEMORY[0x1E6974C88])
  {
    if (qword_1EDD53CC0 != -1)
    {
      swift_once();
    }

    v8 = sub_1D560D9A8();
    v9 = __swift_project_value_buffer(v8, qword_1EDD53CC8);
    (*(*(v8 - 8) + 16))(a1, v9, v8);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v8);
  }

  else
  {
    sub_1D560D9A8();
    v11 = OUTLINED_FUNCTION_25_9();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
    return (*(v5 + 8))(v7, v4);
  }
}

unint64_t sub_1D540CF78()
{
  result = qword_1EC7F6100;
  if (!qword_1EC7F6100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F6108, &qword_1D5662380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6100);
  }

  return result;
}

unint64_t sub_1D540CFE0()
{
  result = qword_1EC7F6110;
  if (!qword_1EC7F6110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6110);
  }

  return result;
}

_BYTE *_s8ItemKindOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEA)
  {
    v6 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
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
          *result = a2 + 21;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D540D118()
{
  result = qword_1EDD53C28;
  if (!qword_1EDD53C28)
  {
    sub_1D560D9A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD53C28);
  }

  return result;
}

uint64_t sub_1D540D200(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_1D540D258()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D561C770;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6128, &unk_1D5662560);
  swift_getKeyPath();
  v1 = sub_1D5612ED8();

  *(v0 + 32) = v1;
  swift_getKeyPath();
  v2 = sub_1D5612ED8();

  *(v0 + 40) = v2;
  qword_1EC87C630 = v0;
  return result;
}

id sub_1D540D328()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69776B0]);

  return [v0 init];
}

uint64_t sub_1D540D360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[13] = a4;
  v5[14] = v4;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA928, &qword_1D561D1A0);
  v5[15] = v6;
  v5[16] = *(v6 - 8);
  v5[17] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA930, &unk_1D561D1A8);
  v5[18] = v7;
  v5[19] = *(v7 - 8);
  v5[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D540D49C, 0, 0);
}

uint64_t sub_1D540D49C()
{
  v1 = v0[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6130, &qword_1D56625B8);
  v2 = swift_dynamicCastClass();
  if (!v2)
  {
    sub_1D5615B68();
    v0[2] = 0;
    v0[3] = 0xE000000000000000;
    MEMORY[0x1DA6EAC70](0x79747265706F7250, 0xE900000000000020);
    v0[6] = v1;
    sub_1D560CDE8();
    sub_1D5615D48();
    MEMORY[0x1DA6EAC70](0xD00000000000001BLL, 0x80000001D568DB60);
    return sub_1D5615E08();
  }

  v3 = v2;
  v4 = qword_1EC7E95C8;

  if (v4 != -1)
  {
    swift_once();
  }

  v0[7] = qword_1EC7F5D68;
  v0[8] = v3;
  sub_1D540DC6C();
  if ((sub_1D5614D18() & 1) == 0)
  {
    v8 = v0[11];
    sub_1D5615B68();
    v0[5] = 0xE000000000000000;
    v0[4] = 0;
    MEMORY[0x1DA6EAC70](0xD00000000000002ALL, 0x80000001D568DB80);
    v0[9] = v8;
    sub_1D560CDE8();
    sub_1D5615D48();
    MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
    return sub_1D5615E08();
  }

  type metadata accessor for TVSeason(0);
  sub_1D540DCD0(&qword_1EC7EA938, type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
  sub_1D560DD68();
  sub_1D560CB98();
  sub_1D560DC98();
  swift_getKeyPath();
  sub_1D560DD08();

  _s8MusicKit0A14LibraryRequestV0aB8InternalE7libraryAA0aC0Cvs_0();
  v5 = swift_task_alloc();
  v0[21] = v5;
  *v5 = v0;
  v5[1] = sub_1D540D7FC;
  v6 = v0[17];
  v7 = v0[18];

  return MEMORY[0x1EEDCEAC0](v6, v7);
}

uint64_t sub_1D540D7FC()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_1D540DA10;
  }

  else
  {
    v2 = sub_1D540D910;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D540D910()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[17];
  v4 = v0[18];
  v5 = v0[15];
  v6 = v0[16];
  v7 = v0[10];
  v7[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA518, &unk_1D5623F50);
  v7[4] = &protocol witness table for MusicItemCollection<A>;
  __swift_allocate_boxed_opaque_existential_0(v7);
  sub_1D560DE38();

  (*(v6 + 8))(v3, v5);
  (*(v2 + 8))(v1, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1D540DA10()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D540DAF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D4ECF4E0;

  return sub_1D540D360(a1, a2, a3, a4);
}

uint64_t sub_1D540DBB8(void *a1)
{
  a1[1] = sub_1D540DCD0(&qword_1EC7EA398, type metadata accessor for TVShow, &protocol conformance descriptor for TVShow);
  a1[2] = sub_1D540DCD0(&qword_1EC7EA950, type metadata accessor for TVShow, &protocol conformance descriptor for TVShow);
  result = sub_1D540DCD0(&qword_1EC7EE0C0, type metadata accessor for TVShow, &protocol conformance descriptor for TVShow);
  a1[3] = result;
  return result;
}

unint64_t sub_1D540DC6C()
{
  result = qword_1EC7F6138;
  if (!qword_1EC7F6138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7F6130, &qword_1D56625B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6138);
  }

  return result;
}

uint64_t sub_1D540DCD0(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t MusicCatalogInternalSearchRequest.init(term:types:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v9 = sub_1D560D9A8();
  OUTLINED_FUNCTION_4();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_59_0();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v47 - v17;
  *(a4 + 16) = 0;
  v19 = MEMORY[0x1E69E7CC0];
  *(a4 + 24) = 1;
  *(a4 + 32) = v19;
  *(a4 + 56) = 4;
  *(a4 + 64) = 0;
  *(a4 + 72) = 1;
  *(a4 + 80) = 0;
  *(a4 + 88) = 1;
  *(a4 + 96) = 0;
  *(a4 + 104) = 1;
  *(a4 + 105) = 256;
  OUTLINED_FUNCTION_38_43();
  _s16MusicKitInternal0A18UserProfileRequestVACycfC_0();
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 40) = 0;
  *(a4 + 48) = 0;
  if (!a3)
  {
    v48 = v15;
    if (qword_1EC7E9628 != -1)
    {
      OUTLINED_FUNCTION_6_132(&qword_1EC7E9628);
    }

    v20 = off_1EC7F6140;
    v21 = *(off_1EC7F6140 + 2);
    a3 = MEMORY[0x1E69E7CC0];
    if (v21)
    {
      v54 = v18;
      v55 = v9;
      v49 = v4;
      v50 = a4;
      v56 = MEMORY[0x1E69E7CC0];
      v22 = OUTLINED_FUNCTION_33_56();
      sub_1D4F04A6C(v22, v21, 0);
      a3 = v56;
      OUTLINED_FUNCTION_43_3();
      v24 = &v20[v23];
      v51 = *(v25 + 56);
      v52 = v26;
      v53 = v25;
      do
      {
        v52(v54, v24, v55);
        v27 = sub_1D560D858();
        v29 = v28;
        v30 = OUTLINED_FUNCTION_222();
        v31(v30);
        v56 = a3;
        v33 = a3[2];
        v32 = a3[3];
        if (v33 >= v32 >> 1)
        {
          v35 = OUTLINED_FUNCTION_93_1(v32);
          sub_1D4F04A6C(v35, v33 + 1, 1);
          a3 = v56;
        }

        a3[2] = v33 + 1;
        v34 = &a3[2 * v33];
        v34[4] = v27;
        v34[5] = v29;
        v24 += v51;
        --v21;
      }

      while (v21);

      v4 = v49;
      a4 = v50;
      v9 = v55;
      v15 = v48;
      v19 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v15 = v48;
    }
  }

  v36 = a3[2];
  if (v36)
  {
    v49 = v4;
    v50 = a4;
    v56 = v19;
    v37 = OUTLINED_FUNCTION_33_56();
    sub_1D4F04A14(v37, v36, 0);
    v38 = v56;
    v39 = a3 + 5;
    do
    {
      sub_1D560D9B8();
      v56 = v38;
      v41 = v38[2];
      v40 = v38[3];
      if (v41 >= v40 >> 1)
      {
        v43 = OUTLINED_FUNCTION_93_1(v40);
        sub_1D4F04A14(v43, v41 + 1, 1);
        v38 = v56;
      }

      v38[2] = v41 + 1;
      OUTLINED_FUNCTION_43_3();
      (*(v11 + 32))(v38 + v42 + *(v11 + 72) * v41, v15, v9);
      v39 += 2;
      --v36;
    }

    while (v36);
  }

  OUTLINED_FUNCTION_3_171();
  sub_1D5414284(v44, v45, &protocol conformance descriptor for MusicCatalogInternalSearchRequest);
  OUTLINED_FUNCTION_222();
  sub_1D560E458();
  type metadata accessor for MusicCatalogInternalSearchRequest.Parameters(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t MusicCatalogInternalSearchRequest.init(suggestion:types:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v57 = sub_1D560D9A8();
  OUTLINED_FUNCTION_4();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_59_0();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v50 - v14;
  *(a3 + 16) = 0;
  v16 = MEMORY[0x1E69E7CC0];
  *(a3 + 24) = 1;
  *(a3 + 32) = v16;
  *(a3 + 56) = 4;
  *(a3 + 64) = 0;
  *(a3 + 72) = 1;
  *(a3 + 80) = 0;
  *(a3 + 88) = 1;
  *(a3 + 96) = 0;
  *(a3 + 104) = 1;
  *(a3 + 105) = 256;
  OUTLINED_FUNCTION_38_43();
  _s16MusicKitInternal0A18UserProfileRequestVACycfC_0();
  *a3 = sub_1D560EA28();
  *(a3 + 8) = v17;
  *(a3 + 40) = sub_1D560EA38();
  *(a3 + 48) = v18;
  v52 = a1;
  if (!a2)
  {
    if (qword_1EC7E9628 != -1)
    {
      OUTLINED_FUNCTION_6_132(&qword_1EC7E9628);
    }

    v19 = off_1EC7F6140;
    v20 = *(off_1EC7F6140 + 2);
    a2 = MEMORY[0x1E69E7CC0];
    if (v20)
    {
      v56 = v15;
      v50[0] = v12;
      v50[1] = a3;
      v51 = v3;
      v58 = MEMORY[0x1E69E7CC0];
      v21 = OUTLINED_FUNCTION_33_56();
      sub_1D4F04A6C(v21, v20, 0);
      a2 = v58;
      OUTLINED_FUNCTION_43_3();
      v23 = &v19[v22];
      v53 = *(v24 + 56);
      v54 = v25;
      v55 = v24;
      v26 = (v24 - 8);
      do
      {
        v27 = v56;
        v28 = v57;
        v29 = OUTLINED_FUNCTION_222();
        v54(v29);
        v30 = sub_1D560D858();
        v32 = v31;
        (*v26)(v27, v28);
        v58 = a2;
        v34 = a2[2];
        v33 = a2[3];
        if (v34 >= v33 >> 1)
        {
          v36 = OUTLINED_FUNCTION_93_1(v33);
          sub_1D4F04A6C(v36, v34 + 1, 1);
          a2 = v58;
        }

        a2[2] = v34 + 1;
        v35 = &a2[2 * v34];
        v35[4] = v30;
        v35[5] = v32;
        v23 += v53;
        --v20;
      }

      while (v20);

      v3 = v51;
      a1 = v52;
      v12 = v50[0];
    }

    else
    {
      a1 = v52;
    }

    v16 = MEMORY[0x1E69E7CC0];
  }

  v37 = a2[2];
  if (v37)
  {
    v51 = v3;
    v58 = v16;
    v38 = OUTLINED_FUNCTION_33_56();
    sub_1D4F04A14(v38, v37, 0);
    v39 = v58;
    v40 = a2 + 5;
    do
    {
      sub_1D560D9B8();
      v58 = v39;
      v41 = v12;
      v43 = v39[2];
      v42 = v39[3];
      if (v43 >= v42 >> 1)
      {
        v45 = OUTLINED_FUNCTION_93_1(v42);
        sub_1D4F04A14(v45, v43 + 1, 1);
        v39 = v58;
      }

      v39[2] = v43 + 1;
      OUTLINED_FUNCTION_43_3();
      (*(v8 + 32))(v39 + v44 + *(v8 + 72) * v43, v41, v57);
      v40 += 2;
      --v37;
      v12 = v41;
    }

    while (v37);

    a1 = v52;
  }

  else
  {
  }

  OUTLINED_FUNCTION_3_171();
  sub_1D5414284(v46, v47, &protocol conformance descriptor for MusicCatalogInternalSearchRequest);
  OUTLINED_FUNCTION_222();
  sub_1D560E458();
  sub_1D560EA48();
  OUTLINED_FUNCTION_4_0();
  (*(v48 + 8))(a1);
  type metadata accessor for MusicCatalogInternalSearchRequest.Parameters(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t MusicCatalogInternalSearchRequest.term.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MusicCatalogInternalSearchRequest.limit.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t MusicCatalogInternalSearchRequest.contexts.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t MusicCatalogInternalSearchRequest.offset.setter(uint64_t result, char a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2 & 1;
  return result;
}

uint64_t MusicCatalogInternalSearchRequest.sparseCount.setter(uint64_t result, char a2)
{
  *(v2 + 80) = result;
  *(v2 + 88) = a2 & 1;
  return result;
}

uint64_t MusicCatalogInternalSearchRequest.sparseLimit.setter(uint64_t result, char a2)
{
  *(v2 + 96) = result;
  *(v2 + 104) = a2 & 1;
  return result;
}

uint64_t MusicCatalogInternalSearchRequest.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA838, &unk_1D561CB10);
  MEMORY[0x1EEE9AC00](v2 - 8);
  OUTLINED_FUNCTION_59_0();
  v5 = v3 - v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;
  type metadata accessor for MusicCatalogInternalSearchRequest(0);
  sub_1D560CCE8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA840, &qword_1D561D790);
  v9 = type metadata accessor for MusicRequestConfiguration(0);
  v10 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v8, v10 ^ 1u, 1, v9);
  sub_1D4F73F78(v8, v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v9) == 1)
  {
    static MusicRequestConfiguration.globalDefault.getter(a1);
    if (__swift_getEnumTagSinglePayload(v5, 1, v9) != 1)
    {
      sub_1D4E765C8(v5, &qword_1EC7EA838, &unk_1D561CB10);
    }
  }

  else
  {
    sub_1D4E56C6C(v5, a1);
  }

  return sub_1D4E765C8(v8, &qword_1EC7EA838, &unk_1D561CB10);
}

uint64_t sub_1D540E848(uint64_t a1)
{
  v2 = type metadata accessor for MusicRequestConfiguration(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5414E54(a1, v4, type metadata accessor for MusicRequestConfiguration);
  return MusicCatalogInternalSearchRequest.configuration.setter(v4);
}

uint64_t MusicCatalogInternalSearchRequest.configuration.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D560CD48();
  OUTLINED_FUNCTION_4();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MusicRequestConfiguration(0);
  OUTLINED_FUNCTION_5_126();
  sub_1D5414284(v10, v11, &protocol conformance descriptor for MusicRequestConfiguration);
  sub_1D560E6C8();
  OUTLINED_FUNCTION_4_132();
  sub_1D4E58714(a1, v12);
  v13 = type metadata accessor for MusicCatalogInternalSearchRequest(0);
  return (*(v6 + 40))(v2 + *(v13 + 60), v9, v4);
}

void (*MusicCatalogInternalSearchRequest.configuration.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = sub_1D560CD48();
  v3[1] = v4;
  OUTLINED_FUNCTION_69(v4);
  v3[2] = v5;
  v3[3] = __swift_coroFrameAllocStub(*(v6 + 64));
  v7 = type metadata accessor for MusicRequestConfiguration(0);
  v3[4] = v7;
  v8 = *(*(v7 - 8) + 64);
  v3[5] = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  v3[6] = v9;
  MusicCatalogInternalSearchRequest.configuration.getter(v9);
  return sub_1D540EAF4;
}

void sub_1D540EAF4(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = *(*a1 + 48);
  v5 = *(*a1 + 24);
  if (a2)
  {
    sub_1D5414E54(*(*a1 + 48), v3, type metadata accessor for MusicRequestConfiguration);
    OUTLINED_FUNCTION_5_126();
    sub_1D5414284(v6, v7, &protocol conformance descriptor for MusicRequestConfiguration);
    sub_1D560E6C8();
    sub_1D4E58714(v3, type metadata accessor for MusicRequestConfiguration);
    v8 = type metadata accessor for MusicCatalogInternalSearchRequest(0);
    v9 = OUTLINED_FUNCTION_27_66(v8);
    v10(v9);
    sub_1D4E58714(v4, type metadata accessor for MusicRequestConfiguration);
  }

  else
  {
    OUTLINED_FUNCTION_5_126();
    sub_1D5414284(v11, v12, &protocol conformance descriptor for MusicRequestConfiguration);
    sub_1D560E6C8();
    OUTLINED_FUNCTION_4_132();
    sub_1D4E58714(v4, v13);
    v14 = type metadata accessor for MusicCatalogInternalSearchRequest(0);
    v15 = OUTLINED_FUNCTION_27_66(v14);
    v16(v15);
  }

  free(v4);
  free(v3);
  free(v5);

  free(v2);
}

uint64_t sub_1D540EC60@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for MusicCatalogInternalSearchRequest.Parameters(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MusicCatalogInternalSearchRequest(0);
  sub_1D5414E54(v1 + *(v6 + 64), v5, type metadata accessor for MusicCatalogInternalSearchRequest.Parameters);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v5 += *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6240, &qword_1D5667EC0) + 48);
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF288, &qword_1D5662610);
  return (*(*(v7 - 8) + 32))(a1, v5, v7);
}

uint64_t sub_1D540ED84()
{
  v1 = sub_1D560BB98();
  v2 = *(v1 - 8);
  v64 = v1;
  v65 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v4 = v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D5610088();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v56 = v55 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v57 = v55 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v58 = v55 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v66 = v55 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = v55 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF288, &qword_1D5662610);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v55 - v22;
  if (*(v0 + 105) != 1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1D540EC60(v23);
  v24 = sub_1D560E488();
  (*(v21 + 8))(v23, v20);
  v25 = *(v24 + 16);
  if (!v25)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v55[0] = v9;
  v55[1] = v24;
  v26 = v6 + 16;
  v27 = *(v6 + 16);
  v28 = v24 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v61 = *(v26 + 56);
  v62 = v27;
  v63 = v26;
  v67 = (v26 - 8);
  v59 = v65 + 32;
  v29 = MEMORY[0x1E69E7CC0];
  v60 = v4;
  do
  {
    v62(v19, v28, v5);
    sub_1D560FE28();
    sub_1D5414284(&qword_1EDD53348, MEMORY[0x1E6975BC8], MEMORY[0x1E6975BE8]);
    sub_1D56150C8();
    sub_1D56150C8();
    if (v70 == v68 && v71 == v69)
    {
      v31 = 1;
    }

    else
    {
      v31 = sub_1D5616168();
    }

    v32 = *v67;
    (*v67)(v66, v5);

    if (v31)
    {
      goto LABEL_34;
    }

    v33 = v58;
    sub_1D560FE38();
    sub_1D56150C8();
    sub_1D56150C8();
    if (v70 == v68 && v71 == v69)
    {
LABEL_32:
      v32(v33, v5);

      goto LABEL_33;
    }

    v35 = sub_1D5616168();
    v36 = v33;
    v37 = v35;
    v32(v36, v5);

    if ((v37 & 1) == 0)
    {
      v33 = v57;
      sub_1D5610078();
      sub_1D56150C8();
      sub_1D56150C8();
      if (v70 == v68 && v71 == v69)
      {
        goto LABEL_32;
      }

      v39 = sub_1D5616168();
      v40 = v33;
      v41 = v39;
      v32(v40, v5);

      if ((v41 & 1) == 0)
      {
        v33 = v56;
        sub_1D560FFE8();
        sub_1D56150C8();
        sub_1D56150C8();
        if (v70 == v68 && v71 == v69)
        {
          goto LABEL_32;
        }

        v43 = sub_1D5616168();
        v44 = v33;
        v45 = v43;
        v32(v44, v5);

        if ((v45 & 1) == 0)
        {
          v46 = v55[0];
          sub_1D560FF38();
          sub_1D56150C8();
          sub_1D56150C8();
          if (v70 != v68 || v71 != v69)
          {
            v48 = sub_1D5616168();
            v32(v46, v5);

            if ((v48 & 1) == 0)
            {
              v32(v19, v5);
              goto LABEL_39;
            }

            goto LABEL_34;
          }

          v32(v46, v5);

LABEL_33:
        }
      }
    }

LABEL_34:
    v70 = 0x5B646E65747865;
    v71 = 0xE700000000000000;
    v49 = sub_1D5610058();
    MEMORY[0x1DA6EAC70](v49);

    MEMORY[0x1DA6EAC70](93, 0xE100000000000000);
    v50 = v60;
    sub_1D560BB28();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1D4EFFE00();
      v29 = v52;
    }

    v51 = *(v29 + 16);
    if (v51 >= *(v29 + 24) >> 1)
    {
      sub_1D4EFFE00();
      v29 = v53;
    }

    v32(v19, v5);
    *(v29 + 16) = v51 + 1;
    (*(v65 + 32))(v29 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v51, v50, v64);
LABEL_39:
    v28 += v61;
    --v25;
  }

  while (v25);

  return v29;
}

uint64_t MusicCatalogInternalSearchRequest.response()(uint64_t a1)
{
  v5 = *(OUTLINED_FUNCTION_38_43() + 60);
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  v7 = sub_1D560CD48();
  OUTLINED_FUNCTION_3_171();
  v10 = sub_1D5414284(v8, v9, &protocol conformance descriptor for MusicCatalogInternalSearchRequest);
  *v6 = v3;
  v6[1] = sub_1D4E73560;
  v11 = MEMORY[0x1E6974D18];

  return MEMORY[0x1EEDCE900](a1, v1 + v5, v2, v7, v10, v11);
}

uint64_t MusicCatalogInternalSearchRequest.catalogResponse()(uint64_t a1)
{
  v2[22] = a1;
  v2[23] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF288, &qword_1D5662610);
  v2[24] = OUTLINED_FUNCTION_127();
  v3 = sub_1D560D428();
  v2[25] = v3;
  OUTLINED_FUNCTION_69(v3);
  v2[26] = v4;
  v2[27] = OUTLINED_FUNCTION_127();
  v5 = sub_1D560CD48();
  v2[28] = v5;
  OUTLINED_FUNCTION_69(v5);
  v2[29] = v6;
  v2[30] = OUTLINED_FUNCTION_127();
  v7 = sub_1D560D348();
  v2[31] = v7;
  OUTLINED_FUNCTION_69(v7);
  v2[32] = v8;
  v2[33] = OUTLINED_FUNCTION_127();
  v9 = sub_1D560D388();
  v2[34] = v9;
  OUTLINED_FUNCTION_69(v9);
  v2[35] = v10;
  v2[36] = OUTLINED_FUNCTION_127();
  v11 = sub_1D560EBD8();
  v2[37] = v11;
  OUTLINED_FUNCTION_69(v11);
  v2[38] = v12;
  v2[39] = swift_task_alloc();
  v13 = swift_task_alloc();
  v2[40] = v13;
  v14 = type metadata accessor for MusicCatalogInternalSearchRequest(0);
  v2[41] = v14;
  v15 = *(v14 + 64);
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  v2[42] = v16;
  *v16 = v17;
  v16[1] = sub_1D540F8B8;

  return sub_1D5410148(v13, v1 + v15);
}

uint64_t sub_1D540F8B8()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 344) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D540F9B4()
{
  v1 = *(v0 + 328);
  v3 = *(v0 + 256);
  v2 = *(v0 + 264);
  v5 = *(v0 + 240);
  v4 = *(v0 + 248);
  v6 = *(v0 + 232);
  v14 = *(v0 + 224);
  v7 = *(v0 + 184);
  (*(*(v0 + 304) + 16))(*(v0 + 312), *(v0 + 320), *(v0 + 296));
  (*(v3 + 104))(v2, *MEMORY[0x1E6974E78], v4);
  OUTLINED_FUNCTION_222();
  sub_1D560D368();
  v8 = *(v1 + 60);
  *(v0 + 384) = v8;
  v9 = *(v6 + 16);
  *(v0 + 352) = v9;
  *(v0 + 360) = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v5, v7 + v8, v14);
  sub_1D560D2B8();
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v0 + 368) = v10;
  *v10 = v11;
  v10[1] = sub_1D540FB1C;
  v12 = *(v0 + 216);

  return MEMORY[0x1EEDCE5B0](v12);
}

uint64_t sub_1D540FB1C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 376) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D540FC18()
{
  v52 = v0;
  v48 = *(v0 + 376);
  v1 = *(v0 + 352);
  v2 = *(v0 + 384);
  v3 = *(v0 + 240);
  v4 = *(v0 + 224);
  v5 = *(v0 + 184);
  sub_1D560B9C8();
  swift_allocObject();
  sub_1D560B9B8();
  v1(v3, v5 + v2, v4);
  sub_1D560B988();
  sub_1D5612208();
  swift_allocObject();
  v6 = sub_1D56121F8();
  swift_retain_n();
  sub_1D560B968();
  v7 = sub_1D560D418();
  v9 = v8;
  sub_1D54142CC();
  sub_1D560B948();
  if (v48)
  {
    v10 = *(v0 + 304);
    v45 = *(v0 + 296);
    v47 = *(v0 + 320);
    v11 = *(v0 + 280);
    v41 = *(v0 + 272);
    v43 = *(v0 + 288);
    v12 = *(v0 + 208);
    v13 = *(v0 + 216);
    v14 = *(v0 + 200);

    sub_1D4E55E1C(v7, v9);

    (*(v12 + 8))(v13, v14);
    (*(v11 + 8))(v43, v41);
    (*(v10 + 8))(v47, v45);
    OUTLINED_FUNCTION_17_81(*(v0 + 320));

    OUTLINED_FUNCTION_55();
  }

  else
  {
    v29 = *(v0 + 352);
    v30 = *(v0 + 360);
    v46 = *(v0 + 320);
    v42 = *(v0 + 304);
    v44 = *(v0 + 296);
    v16 = *(v0 + 280);
    v35 = *(v0 + 272);
    v37 = *(v0 + 288);
    v26 = *(v0 + 240);
    v27 = *(v0 + 224);
    v28 = *(v0 + 384);
    v17 = *(v0 + 208);
    v31 = *(v0 + 200);
    v33 = *(v0 + 216);
    v18 = *(v0 + 184);
    v19 = *(v0 + 192);
    __dst = *(v0 + 176);
    sub_1D4E55E1C(v7, v9);
    memcpy((v0 + 16), (v0 + 96), 0x50uLL);
    v20 = *(v18 + 8);
    v25 = *v18;

    sub_1D540EC60(v19);
    v21 = *(v18 + 105);
    v22 = *(v18 + 25);
    v29(v26, v18 + v28, v27);
    v51 = 0;
    memset(v50, 0, sizeof(v50));
    sub_1D508C538(v0 + 16, v25, v20, v19, v22, v21, v26, v6, v50, v24, v25, v26, v27, v28, v29, v30, v31, v33, v35, v37, __dst);

    (*(v17 + 8))(v34, v32);
    (*(v16 + 8))(v38, v36);
    (*(v42 + 8))(v46, v44);
    memcpy(__dsta, __src, 0x50uLL);

    OUTLINED_FUNCTION_55();
  }

  return v15();
}

uint64_t sub_1D540FFB8()
{
  OUTLINED_FUNCTION_17_81(*(v0 + 320));

  OUTLINED_FUNCTION_55();

  return v1();
}

uint64_t sub_1D5410064()
{
  v1 = v0[40];
  v2 = v0[37];
  v3 = v0[38];
  (*(v0[35] + 8))(v0[36], v0[34]);
  (*(v3 + 8))(v1, v2);
  OUTLINED_FUNCTION_17_81(v0[40]);

  OUTLINED_FUNCTION_55();

  return v4();
}

uint64_t sub_1D5410148(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1D560EBD8();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF288, &qword_1D5662610);
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = type metadata accessor for MusicCatalogInternalSearchRequest.Parameters(0);
  v3[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D54102B0, 0, 0);
}

uint64_t sub_1D54102B0()
{
  sub_1D5414E54(v0[3], v0[13], type metadata accessor for MusicCatalogInternalSearchRequest.Parameters);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[13];
  if (EnumCaseMultiPayload == 1)
  {
    v3 = v0[7];
    v4 = *v2;
    v5 = *(v2 + 8);
    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6240, &qword_1D5667EC0) + 48);
    sub_1D5411B50(v4, v5, v3);

    v12 = v0[9];
    v13 = v0[10];
    (*(v0[6] + 32))(v0[2], v0[7], v0[5]);
    (*(v13 + 8))(v2 + v6, v12);

    OUTLINED_FUNCTION_55();

    return v14();
  }

  else
  {
    (*(v0[10] + 32))(v0[11], v0[13], v0[9]);
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    v0[14] = v7;
    *v7 = v8;
    v7[1] = sub_1D54104E4;
    v9 = v0[11];
    v10 = v0[8];

    return sub_1D5410744(v10, v9);
  }
}

uint64_t sub_1D54104E4()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 120) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D54105E0()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[2];
  (*(v0[10] + 8))(v0[11], v0[9]);
  (*(v3 + 32))(v4, v1, v2);

  OUTLINED_FUNCTION_55();

  return v5();
}

uint64_t sub_1D54106A4()
{
  (*(v0[10] + 8))(v0[11], v0[9]);

  OUTLINED_FUNCTION_55();

  return v1();
}

uint64_t sub_1D5410744(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v3[13] = type metadata accessor for MusicRequestConfiguration(0);
  v3[14] = swift_task_alloc();
  v4 = sub_1D5610088();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  v5 = sub_1D560BB98();
  v3[18] = v5;
  v3[19] = *(v5 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D541093C, 0, 0);
}

uint64_t sub_1D541093C()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 152);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB2D8, &unk_1D561DFF0);
  *(v0 + 280) = *(v1 + 72);
  *(v0 + 368) = *(v1 + 80);
  v2 = swift_allocObject();
  *(v0 + 288) = v2;
  *(v2 + 16) = xmmword_1D561C050;
  sub_1D560BB28();
  *(v0 + 372) = *(type metadata accessor for MusicCatalogInternalSearchRequest(0) + 60);
  v3 = swift_task_alloc();
  *(v0 + 296) = v3;
  *v3 = v0;
  v3[1] = sub_1D5410A48;

  return MEMORY[0x1EEDCE260]();
}

uint64_t sub_1D5410A48()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_8();
  *v4 = v3;
  *v4 = *v1;
  v3[38] = v5;
  v3[39] = v6;
  v3[40] = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D5410B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v149 = v18;
  v19 = v18;
  if (*(v18 + 312))
  {
    v20 = *(v18 + 288);
    sub_1D560BB28();

    v21 = OUTLINED_FUNCTION_34_59();
    v22(v21);
    v23 = *(v20 + 24);
    v24 = *(v18 + 288);
    if (*(v20 + 16) >= v23 >> 1)
    {
      OUTLINED_FUNCTION_22_41(v23);
      sub_1D4EFFE00();
      v24 = v134;
    }

    OUTLINED_FUNCTION_21_73();
    v25();
    v26 = OUTLINED_FUNCTION_20_84();
    v27(v26);
  }

  else
  {
    v24 = *(v18 + 288);
  }

  v28 = *(v18 + 96);
  strcpy((v18 + 16), "serverBubbles");
  *(v18 + 30) = -4864;
  if (v28[56] == 2)
  {
    v29 = *(v18 + 248);
    v30 = *(v18 + 256);
    v31 = *(v18 + 144);
    v32 = *(v18 + 152);
    sub_1D560BB28();
    (*(v32 + 16))(v29, v30, v31);
    v33 = *(v24 + 24);
    if (*(v24 + 16) >= v33 >> 1)
    {
      OUTLINED_FUNCTION_22_41(v33);
      sub_1D4EFFE00();
      v24 = v137;
    }

    OUTLINED_FUNCTION_21_73();
    v34();
    v35 = OUTLINED_FUNCTION_20_84();
    v36(v35);
    v28 = *(v19 + 96);
  }

  if (v28[106] == 1)
  {
    OUTLINED_FUNCTION_18_82();
    MEMORY[0x1DA6EAC70](0x4C6C61727574616ELL, 0xEF65676175676E61);
    v28 = *(v19 + 96);
  }

  if (!v28[25])
  {
    goto LABEL_25;
  }

  v37 = 0x6564756C637865;
  v38 = sub_1D5616168();

  if ((v38 & 1) == 0)
  {
    OUTLINED_FUNCTION_18_82();
    v39 = v28[25];
    if (v28[25])
    {
      if (v39 == 1)
      {
        v37 = 0x676948636972796CLL;
      }

      else
      {
        v37 = 0x73636972796CLL;
      }

      if (v39 == 1)
      {
        v40 = 0xEF73746867696C68;
      }

      else
      {
        v40 = 0xE600000000000000;
      }
    }

    else
    {
      v40 = 0xE700000000000000;
    }

    MEMORY[0x1DA6EAC70](v37, v40);
LABEL_25:
  }

  v41 = *(v19 + 96);
  if (*(v41 + 105) == 1)
  {
    OUTLINED_FUNCTION_18_82();
    MEMORY[0x1DA6EAC70](0x76697372656D6D69, 0xE900000000000065);
    v41 = *(v19 + 96);
  }

  v42 = *(v41 + 32);
  v43 = *(v42 + 16);
  if (v43)
  {
    v44 = (v42 + 32);
    do
    {
      v46 = *v44++;
      v45 = v46;
      OUTLINED_FUNCTION_18_82();
      if (v46)
      {
        v47 = 0x656C746974627573;
      }

      else
      {
        v47 = 0x6E6F437972657571;
      }

      if (v45)
      {
        v48 = 0xE900000000000073;
      }

      else
      {
        v48 = 0xEC00000074786574;
      }

      MEMORY[0x1DA6EAC70](v47, v48);

      --v43;
    }

    while (v43);
  }

  sub_1D560BB28();

  v50 = *(v24 + 16);
  v49 = *(v24 + 24);
  if (v50 >= v49 >> 1)
  {
    OUTLINED_FUNCTION_93_1(v49);
    sub_1D4EFFE00();
    v24 = v129;
  }

  OUTLINED_FUNCTION_14_83();
  v51 = *(v19 + 240);
  v52 = *(v19 + 144);
  v53 = *(v19 + 152);
  *(v24 + 16) = v50 + 1;
  v56 = v24 + ((v54 + 32) & ~v54) + v55 * v50;
  v57 = v24;
  v58 = *(v53 + 32);
  v58(v56, v51, v52);
  v144 = v57;
  *(v19 + 32) = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF288, &qword_1D5662610);
  v59 = sub_1D560E488();
  v60 = *(v59 + 16);
  if (v60)
  {
    v143 = v58;
    v61 = *(v19 + 128);
    v147 = MEMORY[0x1E69E7CC0];
    sub_1D4F03980(0, v60, 0);
    v61 += 16;
    OUTLINED_FUNCTION_43_3();
    v63 = v59 + v62;
    v145 = *(v61 + 56);
    v146 = v64;
    v65 = (v61 - 8);
    do
    {
      v66 = *(v19 + 136);
      v67 = v19;
      v68 = *(v19 + 120);
      v146(v66, v63, v68);
      v69 = sub_1D5610058();
      v71 = v70;
      (*v65)(v66, v68);
      v73 = *(v147 + 16);
      v72 = *(v147 + 24);
      if (v73 >= v72 >> 1)
      {
        v75 = OUTLINED_FUNCTION_93_1(v72);
        sub_1D4F03980(v75, v73 + 1, 1);
      }

      *(v147 + 16) = v73 + 1;
      v74 = v147 + 16 * v73;
      *(v74 + 32) = v69;
      *(v74 + 40) = v71;
      v63 += v145;
      --v60;
      v19 = v67;
    }

    while (v60);

    *(v67 + 40) = v147;
    v76 = OUTLINED_FUNCTION_222();
    __swift_instantiateConcreteTypeFromMangledNameV2(v76, v77);
    sub_1D4E62A60(&qword_1EDD52780, &qword_1EC7EABD8, &unk_1D561D780, MEMORY[0x1E69E6310]);
    sub_1D5614CF8();

    sub_1D560BB28();

    v79 = *(v144 + 16);
    v78 = *(v144 + 24);
    if (v79 >= v78 >> 1)
    {
      OUTLINED_FUNCTION_22_41(v78);
      sub_1D4EFFE00();
      v144 = v135;
    }

    v58 = v143;
    OUTLINED_FUNCTION_14_83();
    v80 = *(v19 + 232);
    v81 = *(v19 + 144);
    *(v144 + 16) = v79 + 1;
    v143(v144 + ((v82 + 32) & ~v82) + v83 * v79, v80, v81);
    *(v19 + 32) = v144;
  }

  else
  {
  }

  if (*(*(v19 + 96) + 48))
  {
    sub_1D560BB28();
    v84 = OUTLINED_FUNCTION_34_59();
    v85(v84);
    v87 = *(v144 + 16);
    v86 = *(v144 + 24);
    if (v87 >= v86 >> 1)
    {
      OUTLINED_FUNCTION_22_41(v86);
      sub_1D4EFFE00();
      v144 = v136;
    }

    v88 = *(v19 + 280);
    v89 = *(v19 + 216);
    v90 = *(v19 + 144);
    v91 = (*(v19 + 368) + 32) & ~*(v19 + 368);
    (*(*(v19 + 152) + 8))(*(v19 + 224), v90);
    *(v144 + 16) = v87 + 1;
    v58(v144 + v91 + v88 * v87, v89, v90);
    *(v19 + 32) = v144;
  }

  v92 = sub_1D540ED84();
  sub_1D4EF30FC(v92);
  sub_1D560BB78();
  v93 = *(v19 + 32);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1D4EFFE00();
    v93 = v130;
  }

  OUTLINED_FUNCTION_2_45();
  if (v95)
  {
    OUTLINED_FUNCTION_22_41(v94);
    sub_1D4EFFE00();
    v93 = v131;
  }

  OUTLINED_FUNCTION_14_83();
  v96 = *(v19 + 96);
  v98 = OUTLINED_FUNCTION_1_165(v97);
  (v58)(v98);
  if ((*(v96 + 24) & 1) == 0)
  {
    *(v19 + 72) = *(*(v19 + 96) + 16);
    sub_1D56160F8();
    OUTLINED_FUNCTION_35_58();
    sub_1D560BB28();

    OUTLINED_FUNCTION_2_45();
    if (v95)
    {
      OUTLINED_FUNCTION_22_41(v99);
      sub_1D4EFFE00();
      v93 = v138;
    }

    OUTLINED_FUNCTION_14_83();
    v101 = OUTLINED_FUNCTION_1_165(v100);
    (v58)(v101);
  }

  v102 = *(v19 + 96);
  if ((*(v102 + 88) & 1) == 0)
  {
    *(v19 + 64) = *(v102 + 80);
    sub_1D56160F8();
    OUTLINED_FUNCTION_35_58();
    sub_1D560BB28();

    OUTLINED_FUNCTION_2_45();
    if (v95)
    {
      OUTLINED_FUNCTION_22_41(v103);
      sub_1D4EFFE00();
      v93 = v139;
    }

    OUTLINED_FUNCTION_14_83();
    v105 = OUTLINED_FUNCTION_1_165(v104);
    (v58)(v105);
    v102 = *(v19 + 96);
  }

  if ((*(v102 + 104) & 1) == 0)
  {
    *(v19 + 56) = *(v102 + 96);
    sub_1D56160F8();
    OUTLINED_FUNCTION_35_58();
    sub_1D560BB28();

    OUTLINED_FUNCTION_2_45();
    if (v95)
    {
      OUTLINED_FUNCTION_22_41(v106);
      sub_1D4EFFE00();
      v93 = v140;
    }

    OUTLINED_FUNCTION_14_83();
    v108 = OUTLINED_FUNCTION_1_165(v107);
    (v58)(v108);
    v102 = *(v19 + 96);
  }

  if ((*(v102 + 72) & 1) == 0)
  {
    *(v19 + 48) = *(v102 + 64);
    sub_1D56160F8();
    OUTLINED_FUNCTION_35_58();
    sub_1D560BB28();

    OUTLINED_FUNCTION_2_45();
    if (v95)
    {
      OUTLINED_FUNCTION_22_41(v109);
      sub_1D4EFFE00();
      v93 = v141;
    }

    OUTLINED_FUNCTION_14_83();
    v111 = OUTLINED_FUNCTION_1_165(v110);
    (v58)(v111);
  }

  v112 = *(v19 + 104);
  v113 = *(v19 + 112);
  MusicCatalogInternalSearchRequest.configuration.getter(v113);
  v148 = *(v113 + *(v112 + 68));
  sub_1D514E568(&v148);
  OUTLINED_FUNCTION_4_132();
  sub_1D4E58714(v113, v114);
  OUTLINED_FUNCTION_2_45();
  if (v95)
  {
    OUTLINED_FUNCTION_22_41(v115);
    sub_1D4EFFE00();
    v93 = v132;
  }

  OUTLINED_FUNCTION_14_83();
  v117 = OUTLINED_FUNCTION_1_165(v116);
  (v58)(v117);
  sub_1D560BB88();
  OUTLINED_FUNCTION_2_45();
  if (v95)
  {
    OUTLINED_FUNCTION_22_41(v118);
    sub_1D4EFFE00();
    v93 = v133;
  }

  *(v19 + 328) = v93;
  OUTLINED_FUNCTION_14_83();
  v120 = OUTLINED_FUNCTION_1_165(v119);
  (v58)(v120);
  v121 = swift_task_alloc();
  *(v19 + 336) = v121;
  *v121 = v19;
  v121[1] = sub_1D5411684;

  return MEMORY[0x1EEDCE258](v121, v122, v123, v124, v125, v126, v127, v128, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1D5411684(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_59_1();
  v7 = v6;
  OUTLINED_FUNCTION_8();
  *v8 = v7;
  v9 = *v3;
  OUTLINED_FUNCTION_23_0();
  *v10 = v9;
  v7[43] = v2;

  if (v2)
  {
  }

  else
  {
    v7[44] = a2;
    v7[45] = a1;
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D54117AC()
{
  sub_1D560CD48();
  sub_1D560EB88();

  OUTLINED_FUNCTION_55();

  return v0();
}

uint64_t sub_1D5411950()
{
  OUTLINED_FUNCTION_11_108();

  OUTLINED_FUNCTION_55();

  return v0();
}

uint64_t sub_1D5411A50()
{
  OUTLINED_FUNCTION_11_108();

  OUTLINED_FUNCTION_55();

  return v0();
}

uint64_t sub_1D5411B50@<X0>(uint64_t (*a1)(char *, char *, uint64_t)@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v63 = a3;
  v65 = a2;
  v69 = a1;
  v4 = sub_1D560C448();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v58 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D560C468();
  v59 = *(v6 - 8);
  v60 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v57 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for MusicRequestConfiguration(0);
  MEMORY[0x1EEE9AC00](v61);
  v62 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D560BB98();
  v70 = *(v9 - 8);
  v71 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v68 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D560CD48();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6258, &unk_1D5662CD0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v57 - v16;
  v18 = sub_1D560EBD8();
  v67 = *(v18 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v66 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v57 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v57 - v24;
  v26 = type metadata accessor for MusicCatalogInternalSearchRequest(0);
  v27 = v3;
  (*(v12 + 16))(v14, v3 + *(v26 + 60), v11);

  sub_1D560EBA8();
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    sub_1D4E765C8(v17, &qword_1EC7F6258, &unk_1D5662CD0);
    sub_1D560C438();
    sub_1D4FBA6EC(MEMORY[0x1E69E7CC0]);
    sub_1D5414284(&qword_1EC7ECE80, MEMORY[0x1E6969C20], MEMORY[0x1E6969C18]);
    v28 = v57;
    v29 = v60;
    sub_1D560BE88();
    sub_1D560C458();
    (*(v59 + 8))(v28, v29);
    return swift_willThrow();
  }

  v31 = v67;
  v32 = *(v67 + 32);
  v60 = v67 + 32;
  v69 = v32;
  v32(v25, v17, v18);
  (*(v31 + 16))(v23, v25, v18);
  strcpy(v72, "serverBubbles");
  v72[7] = -4864;
  v33 = v23;
  if (*(v27 + 106) == 1)
  {
    MEMORY[0x1DA6EAC70](44, 0xE100000000000000);
    MEMORY[0x1DA6EAC70](0x4C6C61727574616ELL, 0xEF65676175676E61);
  }

  v58 = v25;
  v59 = v18;
  if (!*(v27 + 25))
  {
    goto LABEL_13;
  }

  v34 = 0xEF73746867696C68;
  v35 = 0x676948636972796CLL;
  v36 = sub_1D5616168();

  if ((v36 & 1) == 0)
  {
    MEMORY[0x1DA6EAC70](44, 0xE100000000000000);
    if (*(v27 + 25))
    {
      if (*(v27 + 25) != 1)
      {
        v34 = 0xE600000000000000;
        v35 = 0x73636972796CLL;
      }
    }

    else
    {
      v34 = 0xE700000000000000;
      v35 = 0x6564756C637865;
    }

    MEMORY[0x1DA6EAC70](v35, v34);
LABEL_13:
  }

  if (*(v27 + 105) == 1)
  {
    MEMORY[0x1DA6EAC70](44, 0xE100000000000000);
    MEMORY[0x1DA6EAC70](0x76697372656D6D69, 0xE900000000000065);
  }

  v64 = v27;
  v37 = *(v27 + 32);
  v38 = *(v37 + 16);
  if (v38)
  {
    v39 = (v37 + 32);
    do
    {
      v41 = *v39++;
      v40 = v41;
      MEMORY[0x1DA6EAC70](44, 0xE100000000000000);
      if (v41)
      {
        v42 = 0x656C746974627573;
      }

      else
      {
        v42 = 0x6E6F437972657571;
      }

      if (v40)
      {
        v43 = 0xE900000000000073;
      }

      else
      {
        v43 = 0xEC00000074786574;
      }

      MEMORY[0x1DA6EAC70](v42, v43);

      --v38;
    }

    while (v38);
  }

  v44 = v68;
  sub_1D560BB28();

  v45 = v66;
  sub_1D560EBB8();
  v46 = *(v70 + 8);
  v70 += 8;
  v65 = v46;
  v46(v44, v71);
  v67 = *(v67 + 8);
  v47 = v59;
  (v67)(v33, v59);
  v48 = v69;
  v69(v33, v45, v47);
  v49 = v64;
  sub_1D540ED84();
  sub_1D560EBC8();
  v50 = v45;

  (v67)(v33, v47);
  v48(v33, v45, v47);
  v51 = *(v49 + 24);
  v52 = v68;
  if ((v51 & 1) == 0)
  {
    v73 = *(v64 + 16);
    sub_1D56160F8();
    sub_1D560BB28();

    sub_1D560EBB8();
    v65(v52, v71);
    (v67)(v33, v47);
    v69(v33, v45, v47);
  }

  sub_1D560BB78();
  sub_1D560EBB8();
  v65(v52, v71);
  v53 = v67;
  (v67)(v33, v47);
  v69(v33, v50, v47);
  v54 = v62;
  MusicCatalogInternalSearchRequest.configuration.getter(v62);
  LOBYTE(v73) = *(v54 + *(v61 + 68));
  sub_1D514E568(&v73);
  sub_1D4E58714(v54, type metadata accessor for MusicRequestConfiguration);
  sub_1D560EBB8();
  v55 = v71;
  v56 = v65;
  v65(v52, v71);
  v53(v33, v47);
  v69(v33, v66, v47);
  sub_1D560BB88();
  sub_1D560EBB8();
  v56(v52, v55);
  v53(v33, v47);
  return (v53)(v58, v47);
}

uint64_t MusicCatalogInternalSearchRequest.LyricsOption.rawValue.getter()
{
  OUTLINED_FUNCTION_31_50();
  v2 = 0x676948636972796CLL;
  if (!v3)
  {
    v2 = 0x73636972796CLL;
  }

  if (v0)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

MusicKitInternal::MusicCatalogInternalSearchRequest::LyricsOption_optional __swiftcall MusicCatalogInternalSearchRequest.LyricsOption.init(rawValue:)(Swift::String rawValue)
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

uint64_t sub_1D5412614@<X0>(uint64_t *a1@<X8>)
{
  result = MusicCatalogInternalSearchRequest.LyricsOption.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D5412728(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F437972657571 && a2 == 0xEC00000074786574;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x536D657449726570 && a2 == 0xEE0074657070696ELL)
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

uint64_t sub_1D54127FC(char a1)
{
  if (a1)
  {
    return 0x536D657449726570;
  }

  else
  {
    return 0x6E6F437972657571;
  }
}

uint64_t sub_1D5412850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D5412728(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D5412878(uint64_t a1)
{
  v2 = sub_1D5414320();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D54128B4(uint64_t a1)
{
  v2 = sub_1D5414320();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D54128F0(uint64_t a1)
{
  v2 = sub_1D5414374();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D541292C(uint64_t a1)
{
  v2 = sub_1D5414374();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D5412968(uint64_t a1)
{
  v2 = sub_1D54143C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D54129A4(uint64_t a1)
{
  v2 = sub_1D54143C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MusicCatalogInternalSearchRequest.Context.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6150, &qword_1D5662620);
  OUTLINED_FUNCTION_4();
  v25 = v4;
  v26 = v3;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v24 = &v22 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6158, &qword_1D5662628);
  OUTLINED_FUNCTION_4();
  v22 = v8;
  v23 = v7;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6160, &qword_1D5662630);
  OUTLINED_FUNCTION_4();
  v14 = v13;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v22 - v16;
  v18 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5414320();
  sub_1D56163D8();
  v19 = (v14 + 8);
  if (v18)
  {
    v28 = 1;
    sub_1D5414374();
    v20 = v24;
    sub_1D5616018();
    (*(v25 + 8))(v20, v26);
  }

  else
  {
    v27 = 0;
    sub_1D54143C8();
    sub_1D5616018();
    (*(v22 + 8))(v11, v23);
  }

  return (*v19)(v17, v12);
}

uint64_t MusicCatalogInternalSearchRequest.Context.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

uint64_t MusicCatalogInternalSearchRequest.Context.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v41 = a2;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6180, &qword_1D5662638);
  OUTLINED_FUNCTION_4();
  v40 = v3;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v36 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6188, &qword_1D5662640);
  OUTLINED_FUNCTION_4();
  v39 = v8;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6190, &unk_1D5662648);
  OUTLINED_FUNCTION_4();
  v42 = v13;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v36 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5414320();
  v17 = v44;
  sub_1D5616398();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v37 = v7;
  v38 = v11;
  v44 = a1;
  v18 = v43;
  sub_1D5615FE8();
  result = sub_1D4FE35F0();
  if (v21 == v22 >> 1)
  {
    v43 = result;
LABEL_9:
    v32 = sub_1D5615C18();
    swift_allocError();
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA6C0, &qword_1D561C640);
    *v34 = &type metadata for MusicCatalogInternalSearchRequest.Context;
    sub_1D5615F28();
    sub_1D5615BF8();
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v32);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v42 + 8))(v16, v12);
    a1 = v44;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v36[1] = 0;
  if (v21 >= (v22 >> 1))
  {
    __break(1u);
  }

  else
  {
    v23 = *(v20 + v21);
    v24 = sub_1D4FE35EC();
    v26 = v25;
    v28 = v27;
    swift_unknownObjectRelease();
    if (v26 != v28 >> 1)
    {
      v43 = v24;
      goto LABEL_9;
    }

    v45 = v23;
    if (v23)
    {
      v47 = 1;
      sub_1D5414374();
      v29 = v6;
      OUTLINED_FUNCTION_3_0(&type metadata for MusicCatalogInternalSearchRequest.Context.PerItemSnippetCodingKeys, &v47);
      v30 = v41;
      v31 = v42;
      swift_unknownObjectRelease();
      (*(v40 + 8))(v29, v18);
    }

    else
    {
      v46 = 0;
      sub_1D54143C8();
      v35 = v38;
      OUTLINED_FUNCTION_3_0(&type metadata for MusicCatalogInternalSearchRequest.Context.QueryContextCodingKeys, &v46);
      v30 = v41;
      v31 = v42;
      swift_unknownObjectRelease();
      (*(v39 + 8))(v35, v37);
    }

    (*(v31 + 8))(v16, v26);
    *v30 = v45;
    return __swift_destroy_boxed_opaque_existential_1(v44);
  }

  return result;
}

uint64_t sub_1D5413144(uint64_t a1, uint64_t a2)
{
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF288, &qword_1D5662610);
  v4 = *(v45 - 8);
  v5 = MEMORY[0x1EEE9AC00](v45);
  v43 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v44 = &v42 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v42 - v9;
  v11 = type metadata accessor for MusicCatalogInternalSearchRequest.Parameters(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v42 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6250, &qword_1D5662CC0);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v42 - v19;
  v21 = (&v42 + *(v18 + 56) - v19);
  sub_1D5414E54(a1, &v42 - v19, type metadata accessor for MusicCatalogInternalSearchRequest.Parameters);
  sub_1D5414E54(a2, v21, type metadata accessor for MusicCatalogInternalSearchRequest.Parameters);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1D5414E54(v20, v16, type metadata accessor for MusicCatalogInternalSearchRequest.Parameters);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v36 = v45;
      (*(v4 + 32))(v10, v21, v45);
      type metadata accessor for MusicCatalogInternalSearchRequest(0);
      sub_1D5414284(&qword_1EC7EF290, type metadata accessor for MusicCatalogInternalSearchRequest, &protocol conformance descriptor for MusicCatalogInternalSearchRequest);
      v35 = sub_1D560E478();
      v37 = *(v4 + 8);
      v37(v10, v36);
      v38 = v16;
      v39 = v36;
LABEL_17:
      v37(v38, v39);
      sub_1D4E58714(v20, type metadata accessor for MusicCatalogInternalSearchRequest.Parameters);
      return v35 & 1;
    }

    (*(v4 + 8))(v16, v45);
LABEL_12:
    sub_1D4E765C8(v20, &qword_1EC7F6250, &qword_1D5662CC0);
    goto LABEL_13;
  }

  sub_1D5414E54(v20, v14, type metadata accessor for MusicCatalogInternalSearchRequest.Parameters);
  v23 = *v14;
  v22 = *(v14 + 1);
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6240, &qword_1D5667EC0) + 48);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v4 + 8))(&v14[v24], v45);

    goto LABEL_12;
  }

  v25 = v21[1];
  v42 = *v21;
  v26 = v23;
  v27 = *(v4 + 32);
  v28 = &v14[v24];
  v29 = v45;
  v27(v44, v28, v45);
  v30 = v21 + v24;
  v31 = v43;
  v27(v43, v30, v29);
  if (v26 == v42 && v22 == v25)
  {

    goto LABEL_16;
  }

  v33 = sub_1D5616168();

  if (v33)
  {
LABEL_16:
    type metadata accessor for MusicCatalogInternalSearchRequest(0);
    sub_1D5414284(&qword_1EC7EF290, type metadata accessor for MusicCatalogInternalSearchRequest, &protocol conformance descriptor for MusicCatalogInternalSearchRequest);
    v40 = v44;
    v35 = sub_1D560E478();
    v37 = *(v4 + 8);
    v37(v31, v29);
    v38 = v40;
    v39 = v29;
    goto LABEL_17;
  }

  v34 = *(v4 + 8);
  v34(v31, v29);
  v34(v44, v29);
  sub_1D4E58714(v20, type metadata accessor for MusicCatalogInternalSearchRequest.Parameters);
LABEL_13:
  v35 = 0;
  return v35 & 1;
}

uint64_t sub_1D541366C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EF288, &qword_1D5662610);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = type metadata accessor for MusicCatalogInternalSearchRequest.Parameters(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5414E54(v1, v8, type metadata accessor for MusicCatalogInternalSearchRequest.Parameters);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6240, &qword_1D5667EC0);
    (*(v3 + 32))(v5, &v8[*(v9 + 48)], v2);
    MEMORY[0x1DA6EC0D0](1);
    sub_1D5614E28();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x1DA6EC0D0](0);
  }

  sub_1D4E62A60(&qword_1EC7F6248, &qword_1EC7EF288, &qword_1D5662610, MEMORY[0x1E6975300]);
  sub_1D5614CB8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t static MusicCatalogInternalSearchRequest.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v5 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v5 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

  if (a1[3])
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_36_54();
    if (v6)
    {
      return 0;
    }
  }

  if ((sub_1D4F3C42C(*(a1 + 25), *(a2 + 25)) & 1) == 0 || (sub_1D4F0B2E0() & 1) == 0)
  {
    return 0;
  }

  v7 = a1[6];
  v8 = *(a2 + 48);
  if (v7)
  {
    if (!v8)
    {
      return 0;
    }

    v9 = a1[5] == *(a2 + 40) && v7 == v8;
    if (!v9 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v10 = *(a1 + 56);
  v11 = *(a2 + 56);
  if (v10 == 4)
  {
    if (v11 != 4)
    {
      return 0;
    }
  }

  else if (v10 != v11)
  {
    return 0;
  }

  if (a1[9])
  {
    if (!*(a2 + 72))
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_36_54();
    if (v12)
    {
      return 0;
    }
  }

  if (a1[11])
  {
    if (!*(a2 + 88))
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_36_54();
    if (v13)
    {
      return 0;
    }
  }

  if ((a1[13] & 1) == 0)
  {
    OUTLINED_FUNCTION_36_54();
    if ((v14 & 1) == 0)
    {
      goto LABEL_37;
    }

    return 0;
  }

  if (!*(a2 + 104))
  {
    return 0;
  }

LABEL_37:
  if (*(a1 + 105) != *(a2 + 105))
  {
    return 0;
  }

  if (*(a1 + 106) != *(a2 + 106))
  {
    return 0;
  }

  OUTLINED_FUNCTION_38_43();
  if ((_s16MusicKitInternal0A18UserProfileRequestV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v15 = *(v2 + 64);

  return sub_1D5413144(a1 + v15, a2 + v15);
}

uint64_t MusicCatalogInternalSearchRequest.hash(into:)(uint64_t a1)
{
  sub_1D5614E28();
  if (*(v1 + 24) == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v3 = *(v1 + 16);
    OUTLINED_FUNCTION_27();
    MEMORY[0x1DA6EC0D0](v3);
  }

  OUTLINED_FUNCTION_31_50();
  sub_1D5614E28();

  sub_1D4F0B2F8();
  if (*(v1 + 48))
  {
    OUTLINED_FUNCTION_27();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v4 = *(v1 + 56);
  if (v4 == 4)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_27();
    MEMORY[0x1DA6EC0D0](v4);
  }

  if (*(v1 + 72) == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v5 = *(v1 + 64);
    OUTLINED_FUNCTION_27();
    MEMORY[0x1DA6EC0D0](v5);
  }

  if (*(v1 + 88) == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v6 = *(v1 + 80);
    OUTLINED_FUNCTION_27();
    MEMORY[0x1DA6EC0D0](v6);
  }

  if (*(v1 + 104) == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v7 = *(v1 + 96);
    OUTLINED_FUNCTION_27();
    MEMORY[0x1DA6EC0D0](v7);
  }

  sub_1D56162F8();
  sub_1D56162F8();
  type metadata accessor for MusicCatalogInternalSearchRequest(0);
  sub_1D560CD48();
  sub_1D5414284(&qword_1EC7EA848, MEMORY[0x1E6974D20], MEMORY[0x1E6974D28]);
  sub_1D5614CB8();
  return sub_1D541366C(a1);
}

uint64_t sub_1D5413CF8(uint64_t (*a1)(_BYTE *))
{
  sub_1D56162D8();
  a1(v3);
  return sub_1D5616328();
}

uint64_t sub_1D5413D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *))
{
  sub_1D56162D8();
  a4(v6);
  return sub_1D5616328();
}

uint64_t sub_1D5413DA8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D4E6ED20;

  return MusicCatalogInternalSearchRequest.catalogResponse()(a1);
}

uint64_t sub_1D5413E40()
{
  OUTLINED_FUNCTION_60();
  v2 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v0 + 16) = v3;
  *v3 = v4;
  v3[1] = sub_1D4E73560;

  return MusicCatalogInternalSearchRequest.response()(v2);
}

uint64_t sub_1D5413ED0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAE38, &unk_1D5620430);
  v0 = sub_1D560D9A8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D56625F0;
  v5 = v4 + v3;
  sub_1D560D908();
  sub_1D560D938();
  sub_1D560D948();
  if (qword_1EDD53D70 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_1EDD53D78);
  v7 = *(v1 + 16);
  v7(v5 + 3 * v2, v6, v0);
  sub_1D560D918();
  if (qword_1EDD53D48 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v0, qword_1EDD53D50);
  v7(v5 + 5 * v2, v8, v0);
  sub_1D560D878();
  sub_1D560D968();
  sub_1D560D998();
  sub_1D560D888();
  sub_1D560D8E8();
  sub_1D560D958();
  if (qword_1EC7E95E8 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v0, qword_1EC7F5D98);
  v7(v5 + 12 * v2, v9, v0);
  if (qword_1EDD53C38 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v0, qword_1EDD53C40);
  v7(v5 + 13 * v2, v10, v0);
  if (qword_1EDD53CE8 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v0, qword_1EDD53CF0);
  result = (v7)(v5 + 14 * v2, v11, v0);
  off_1EC7F6140 = v4;
  return result;
}

double static MusicCatalogInternalSearchRequest.supportedTypeValues.getter()
{
  if (qword_1EC7E9628 != -1)
  {
    OUTLINED_FUNCTION_6_132(&qword_1EC7E9628);
  }

  return result;
}

uint64_t sub_1D5414284(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D54142CC()
{
  result = qword_1EC7F6148;
  if (!qword_1EC7F6148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6148);
  }

  return result;
}

unint64_t sub_1D5414320()
{
  result = qword_1EC7F6168;
  if (!qword_1EC7F6168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6168);
  }

  return result;
}

unint64_t sub_1D5414374()
{
  result = qword_1EC7F6170;
  if (!qword_1EC7F6170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6170);
  }

  return result;
}

unint64_t sub_1D54143C8()
{
  result = qword_1EC7F6178;
  if (!qword_1EC7F6178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6178);
  }

  return result;
}

unint64_t sub_1D5414420()
{
  result = qword_1EC7F6198;
  if (!qword_1EC7F6198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6198);
  }

  return result;
}

unint64_t sub_1D5414478()
{
  result = qword_1EC7F61A0;
  if (!qword_1EC7F61A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F61A0);
  }

  return result;
}

unint64_t sub_1D5414518()
{
  result = qword_1EC7F61B0;
  if (!qword_1EC7F61B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F61B0);
  }

  return result;
}

uint64_t sub_1D5414594(uint64_t a1)
{
  sub_1D5414750(319, &qword_1EDD52708, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_1D5414750(319, &qword_1EC7F61C8, &type metadata for MusicCatalogInternalSearchRequest.Context, MEMORY[0x1E69E62F8]);
    if (v5 > 0x3F)
    {
      return v4;
    }

    sub_1D5414750(319, &qword_1EDD5F070, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v6 > 0x3F)
    {
      return v4;
    }

    sub_1D5414750(319, &qword_1EDD53DD8, &type metadata for MusicDataRequest.Source, MEMORY[0x1E69E6720]);
    if (v7 > 0x3F)
    {
      return v4;
    }

    else
    {
      v2 = sub_1D560CD48();
      if (v8 <= 0x3F)
      {
        v2 = type metadata accessor for MusicCatalogInternalSearchRequest.Parameters(319);
        if (v9 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v2;
}

void sub_1D5414750(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for MusicCatalogInternalSearchRequest.LyricsOption(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1D541488C(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1D5414988(uint64_t a1)
{
  sub_1D54149FC();
  if (v1 <= 0x3F)
  {
    sub_1D5414AD8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1D54149FC()
{
  if (!qword_1EC7F61E0)
  {
    sub_1D5414A44(0);
    if (!v1)
    {
      atomic_store(v0, &qword_1EC7F61E0);
    }
  }
}

void sub_1D5414A44(uint64_t a1)
{
  if (!qword_1EC7F61E8)
  {
    type metadata accessor for MusicCatalogInternalSearchRequest(255);
    sub_1D5414284(&qword_1EC7EF290, type metadata accessor for MusicCatalogInternalSearchRequest, &protocol conformance descriptor for MusicCatalogInternalSearchRequest);
    v1 = sub_1D560E498();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC7F61E8);
    }
  }
}

void sub_1D5414AD8(uint64_t a1)
{
  if (!qword_1EC7F61F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EF288, &qword_1D5662610);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC7F61F0);
    }
  }
}

unint64_t sub_1D5414B9C()
{
  result = qword_1EC7F6200;
  if (!qword_1EC7F6200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6200);
  }

  return result;
}

unint64_t sub_1D5414BF4()
{
  result = qword_1EC7F6208;
  if (!qword_1EC7F6208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6208);
  }

  return result;
}

unint64_t sub_1D5414C4C()
{
  result = qword_1EC7F6210;
  if (!qword_1EC7F6210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6210);
  }

  return result;
}

unint64_t sub_1D5414CA4()
{
  result = qword_1EC7F6218;
  if (!qword_1EC7F6218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6218);
  }

  return result;
}

unint64_t sub_1D5414CFC()
{
  result = qword_1EC7F6220;
  if (!qword_1EC7F6220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6220);
  }

  return result;
}

unint64_t sub_1D5414D54()
{
  result = qword_1EC7F6228;
  if (!qword_1EC7F6228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6228);
  }

  return result;
}

unint64_t sub_1D5414DAC()
{
  result = qword_1EC7F6230;
  if (!qword_1EC7F6230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6230);
  }

  return result;
}

unint64_t sub_1D5414E00()
{
  result = qword_1EC7F6238;
  if (!qword_1EC7F6238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7F6238);
  }

  return result;
}

uint64_t sub_1D5414E54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t MusicRoute.init(underlyingRoute:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [objc_opt_self() musicRouteWithUnderlyingRoute_];
  if (v3)
  {
    v4 = swift_unknownObjectRetain();
    v5 = sub_1D4E5DC24(v4);
    v7 = v6;
    swift_unknownObjectRelease();
    result = swift_unknownObjectRelease();
  }

  else
  {
    result = swift_unknownObjectRelease();
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
  a2[2] = v3;
  return result;
}

uint64_t MusicRoute.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MusicRoute.name.getter()
{
  v1 = [*(v0 + 16) musicKit_avRoute_routeName];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D5614D68();

  return v3;
}