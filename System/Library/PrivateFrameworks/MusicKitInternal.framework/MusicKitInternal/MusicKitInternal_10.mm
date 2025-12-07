id sub_1D4F42FA4(id a1, uint64_t a2)
{
  v57 = a2;
  v58 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF20, &unk_1D561F530);
  v3 = OUTLINED_FUNCTION_22(v2);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v50 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1970, &qword_1D561F4A0);
  v10 = OUTLINED_FUNCTION_22(v9);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v50 - v11;
  sub_1D560D7A8();
  v13 = sub_1D560F148();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1D4E7661C(v12, &unk_1EC7F1970, &qword_1D561F4A0);
    v60 = 0;
  }

  else
  {
    v60 = sub_1D517FFC8();
    OUTLINED_FUNCTION_24_0();
    (*(v14 + 8))(v12, v13);
  }

  sub_1D560D808();
  if (v15)
  {
    v59 = sub_1D5614D38();
  }

  else
  {
    v59 = 0;
  }

  sub_1D560D688();
  if (v16)
  {
    v56 = sub_1D5614D38();
  }

  else
  {
    v56 = 0;
  }

  sub_1D560D768();
  if (v17)
  {
    v55 = sub_1D5614D38();
  }

  else
  {
    v55 = 0;
  }

  sub_1D560D648();
  if (v18)
  {
    v54 = sub_1D5614D38();
  }

  else
  {
    v54 = 0;
  }

  sub_1D560D628();
  if (v19)
  {
    v53 = sub_1D5614D38();
  }

  else
  {
    v53 = 0;
  }

  sub_1D560D568();
  if (v20)
  {
    v52 = sub_1D5614D38();
  }

  else
  {
    v52 = 0;
  }

  sub_1D560D5C8();
  v21 = sub_1D560D4C8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, v21);
  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E7661C(v8, &unk_1EC7EBF20, &unk_1D561F530);
    v51 = 0;
  }

  else
  {
    v51 = sub_1D5115F20(EnumTagSinglePayload);
    OUTLINED_FUNCTION_24_0();
    (*(v23 + 8))(v8, v21);
  }

  sub_1D560D5A8();
  if (v24)
  {
    v25 = sub_1D5614D38();
  }

  else
  {
    v25 = 0;
  }

  sub_1D560D6C8();
  v26 = __swift_getEnumTagSinglePayload(v6, 1, v21);
  if (v26 == 1)
  {
    sub_1D4E7661C(v6, &unk_1EC7EBF20, &unk_1D561F530);
    v27 = 0;
  }

  else
  {
    v27 = sub_1D5115F20(v26);
    OUTLINED_FUNCTION_24_0();
    (*(v28 + 8))(v6, v21);
  }

  sub_1D560D728();
  if (v29)
  {
    v30 = sub_1D5614D38();
  }

  else
  {
    v30 = 0;
  }

  sub_1D560D548();
  if (v31)
  {
    v32 = sub_1D5614D38();
  }

  else
  {
    v32 = 0;
  }

  v33 = objc_opt_self();
  v34 = sub_1D560D7C8();
  sub_1D4F40C50(v34);
  v36 = v35;

  v37 = sub_1D51594D4();
  v49 = v33;
  v48 = v36;
  *&v47 = v25;
  *(&v47 + 1) = v27;
  v38 = v25;
  v40 = v55;
  v39 = v56;
  v41 = v54;
  v42 = v27;
  v44 = v52;
  v43 = v53;
  v45 = v51;
  v58 = sub_1D501AE58(v60, v59, v56, v55, v54, v53, v52, v51, v47, v30, v32, v48, v58, v37, v49);

  return v58;
}

uint64_t sub_1D4F43460(uint64_t a1, uint64_t a2)
{
  v49 = a2;
  v3 = sub_1D560D4C8();
  v47 = *(v3 - 8);
  v48 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v44 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D560F148();
  v45 = *(v5 - 8);
  v46 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MusicPreferredID(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = (&v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v44 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = (&v44 - v16);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = (&v44 - v19);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v44 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBF68, &unk_1D561F5E0);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v44 - v25;
  v27 = (&v44 + *(v24 + 56) - v25);
  sub_1D4F43EF8(a1, &v44 - v25);
  sub_1D4F43EF8(v49, v27);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1D4F43EF8(v26, v20);
      v29 = *v20;
      v28 = v20[1];
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        goto LABEL_21;
      }

      goto LABEL_15;
    case 2u:
      sub_1D4F43EF8(v26, v17);
      v31 = *v17;
      v30 = v17[1];
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_21;
      }

      if (v31 != *v27 || v30 != v27[1])
      {
        goto LABEL_19;
      }

      goto LABEL_22;
    case 3u:
      sub_1D4F43EF8(v26, v14);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v34 = v47;
        v33 = v48;
        v35 = v44;
        (*(v47 + 32))(v44, v27, v48);
        v36 = sub_1D560D498();
        v37 = *(v34 + 8);
        v37(v35, v33);
        v37(v14, v33);
        goto LABEL_28;
      }

      (*(v47 + 8))(v14, v48);
      goto LABEL_25;
    case 4u:
      sub_1D4F43EF8(v26, v11);
      v29 = *v11;
      v28 = v11[1];
      if (swift_getEnumCaseMultiPayload() != 4)
      {
LABEL_21:

        goto LABEL_25;
      }

LABEL_15:
      if (v29 == *v27 && v28 == v27[1])
      {
LABEL_22:
      }

      else
      {
LABEL_19:
        v39 = sub_1D5616168();

        if ((v39 & 1) == 0)
        {
          sub_1D4F43F5C(v26);
          goto LABEL_26;
        }
      }

      sub_1D4F43F5C(v26);
      v36 = 1;
      break;
    default:
      sub_1D4F43EF8(v26, v22);
      if (swift_getEnumCaseMultiPayload())
      {
        (*(v45 + 8))(v22, v46);
LABEL_25:
        sub_1D4E7661C(v26, &qword_1EC7EBF68, &unk_1D561F5E0);
LABEL_26:
        v36 = 0;
      }

      else
      {
        v41 = v45;
        v40 = v46;
        (*(v45 + 32))(v7, v27, v46);
        v36 = sub_1D560F0E8();
        v42 = *(v41 + 8);
        v42(v7, v40);
        v42(v22, v40);
LABEL_28:
        sub_1D4F43F5C(v26);
      }

      break;
  }

  return v36 & 1;
}

uint64_t sub_1D4F43954(uint64_t a1)
{
  v2 = sub_1D560D4C8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D560F148();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MusicPreferredID(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D4F43EF8(v1, v12);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v14 = 1;
      goto LABEL_7;
    case 2u:
      v14 = 2;
      goto LABEL_7;
    case 3u:
      (*(v3 + 32))(v5, v12, v2);
      MEMORY[0x1DA6EC0D0](3);
      sub_1D4F43FB8(&qword_1EC7EBF70, MEMORY[0x1E6974F48], MEMORY[0x1E6974F50]);
      sub_1D5614CB8();
      return (*(v3 + 8))(v5, v2);
    case 4u:
      v14 = 4;
LABEL_7:
      MEMORY[0x1DA6EC0D0](v14);
      sub_1D5614E28();

      break;
    default:
      (*(v7 + 32))(v9, v12, v6);
      MEMORY[0x1DA6EC0D0](0);
      sub_1D4F43FB8(&qword_1EC7EBF78, MEMORY[0x1E69755E8], MEMORY[0x1E69755F0]);
      sub_1D5614CB8();
      result = (*(v7 + 8))(v9, v6);
      break;
  }

  return result;
}

uint64_t sub_1D4F43C68()
{
  sub_1D56162D8();
  sub_1D4F43954(v1);
  return sub_1D5616328();
}

uint64_t sub_1D4F43CB4(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D4F43954(v2);
  return sub_1D5616328();
}

uint64_t type metadata accessor for MusicPreferredID(uint64_t a1)
{
  result = qword_1EDD5C408;
  if (!qword_1EDD5C408)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D4F43D5C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_24_0();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1D4F43DC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF40, &unk_1D561F540);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4F43E30(uint64_t a1)
{
  result = sub_1D560F148();
  if (v2 <= 0x3F)
  {
    result = sub_1D560D4C8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D4F43EF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicPreferredID(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4F43F5C(uint64_t a1)
{
  v2 = type metadata accessor for MusicPreferredID(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D4F43FB8(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_28_12()
{
  v4 = *(v2 - 120);

  return sub_1D4E7661C(v4, v1, v0);
}

void OUTLINED_FUNCTION_34_11()
{
}

void sub_1D4F440B8(uint64_t a1)
{
  sub_1D4F44260(319, &qword_1EDD5CFF0, sub_1D4F441CC, MEMORY[0x1E6968070]);
  if (v1 <= 0x3F)
  {
    sub_1D4F44210();
    if (v2 <= 0x3F)
    {
      sub_1D4F44260(319, &qword_1EDD528C0, MEMORY[0x1E6968130], MEMORY[0x1E69E62F8]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1D4F441CC()
{
  result = qword_1EDD526D0;
  if (!qword_1EDD526D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDD526D0);
  }

  return result;
}

void sub_1D4F44210()
{
  if (!qword_1EDD52768)
  {
    v0 = sub_1D56152D8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD52768);
    }
  }
}

void sub_1D4F44260(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D4F4430C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBF90, &qword_1D561F6D0);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v71 - v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBF80, &qword_1D561F600);
  OUTLINED_FUNCTION_4();
  v76 = v7;
  v77 = v6;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v71 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBF98, &qword_1D561F6D8);
  OUTLINED_FUNCTION_4();
  v13 = v12;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v71 - v15;
  v81 = _s10PropertiesVMa(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_59_0();
  v20 = (v18 - v19);
  MEMORY[0x1EEE9AC00](v21);
  v79 = a1;
  v80 = (&v71 - v22);
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D4F48108();
  v24 = v78;
  sub_1D5616398();
  if (v24)
  {
    return __swift_destroy_boxed_opaque_existential_1(v79);
  }

  v72 = v10;
  v73 = v5;
  v74 = v20;
  v78 = v13;
  LOBYTE(v83) = 0;
  v25 = sub_1D5615F68();
  v27 = v16;
  v29 = MEMORY[0x1E69E7CC0];
  if (v26)
  {
    v30 = MEMORY[0x1E69E7CC0];
    v31 = [objc_opt_self() hours];
    OUTLINED_FUNCTION_47_11();
    OUTLINED_FUNCTION_3_17();
    v32 = v74;
    sub_1D560BA48();
    v29 = v30;
    *v32 = xmmword_1D561F5F0;
    *(v32 + v23[7]) = v30;
    *(v32 + v23[8]) = v30;
    *(v32 + v23[9]) = v30;
    *(v32 + v23[10]) = v30;
    OUTLINED_FUNCTION_0_25();
    sub_1D4F48EBC(v32, v33);
    v25 = 50;
    v34 = v80;
  }

  else
  {
    v34 = v80;
    v32 = v74;
  }

  *v34 = v25;
  LOBYTE(v83) = 1;
  v35 = sub_1D5615F68();
  if (v36)
  {
    v37 = [objc_opt_self() hours];
    OUTLINED_FUNCTION_34_12();
    OUTLINED_FUNCTION_3_17();
    v34 = v80;
    sub_1D560BA48();
    OUTLINED_FUNCTION_17_11(xmmword_1D561F5F0);
    OUTLINED_FUNCTION_0_25();
    sub_1D4F48EBC(v32, v38);
    v35 = 8;
  }

  v39 = v77;
  v34[1] = v35;
  LOBYTE(v83) = 2;
  sub_1D4F482A0(&unk_1EDD5CFF8);
  v40 = v73;
  sub_1D5615F78();
  if (__swift_getEnumTagSinglePayload(v40, 1, v39) == 1)
  {
    v41 = [objc_opt_self() hours];
    OUTLINED_FUNCTION_47_11();
    OUTLINED_FUNCTION_3_17();
    v42 = v77;
    sub_1D560BA48();
    OUTLINED_FUNCTION_17_11(xmmword_1D561F5F0);
    v43 = v34 + v32;
    v34 = v80;
    v44 = v72;
    (*(v76 + 16))(v72, v43, v42);
    OUTLINED_FUNCTION_0_25();
    sub_1D4F48EBC(v32, v45);
    if (__swift_getEnumTagSinglePayload(v40, 1, v42) != 1)
    {
      sub_1D4E50004(v40, &qword_1EC7EBF90, &qword_1D561F6D0);
    }
  }

  else
  {
    v42 = v39;
    v44 = v72;
    (*(v76 + 32))(v72, v40, v42);
  }

  v46 = v81;
  (*(v76 + 32))(v34 + *(v81 + 24), v44, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBFA0, &qword_1D5620C40);
  v82 = 3;
  sub_1D4F481A0(&qword_1EDD52750);
  v47 = v27;
  sub_1D5615F78();
  v48 = v83;
  v49 = v11;
  if (!v83)
  {
    v47 = [objc_opt_self() hours];
    sub_1D4F441CC();
    OUTLINED_FUNCTION_3_17();
    v50 = v74;
    v46 = v81;
    sub_1D560BA48();
    *v50 = xmmword_1D561F5F0;
    *(v50 + v46[7]) = v29;
    *(v50 + v46[8]) = v29;
    *(v50 + v46[9]) = v29;
    *(v50 + v46[10]) = v29;
    OUTLINED_FUNCTION_0_25();
    sub_1D4F48EBC(v50, v51);
    v48 = v29;
  }

  *(v34 + v46[7]) = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBFA8, &qword_1D561F6E0);
  v82 = 4;
  sub_1D4F48208(&unk_1EDD528B0);
  v52 = OUTLINED_FUNCTION_28_13();
  OUTLINED_FUNCTION_13_20(v52, v53);
  v73 = v49;
  v54 = v83;
  if (v83)
  {
    v49 = v81;
  }

  else
  {
    v72 = [objc_opt_self() hours];
    OUTLINED_FUNCTION_34_12();
    OUTLINED_FUNCTION_3_17();
    OUTLINED_FUNCTION_48_6();
    *v47 = xmmword_1D561F5F0;
    *(v47 + v49[7]) = v29;
    *(v47 + v49[8]) = v29;
    *(v47 + v49[9]) = v29;
    *(v47 + v49[10]) = v29;
    OUTLINED_FUNCTION_0_25();
    sub_1D4F48EBC(v47, v55);
    v54 = v29;
  }

  *(v34 + v49[8]) = v54;
  v82 = 5;
  v56 = OUTLINED_FUNCTION_28_13();
  v57 = v73;
  OUTLINED_FUNCTION_13_20(v56, v58);
  v59 = v83;
  if (v83)
  {
    v57 = v81;
  }

  else
  {
    v72 = [objc_opt_self() hours];
    OUTLINED_FUNCTION_34_12();
    OUTLINED_FUNCTION_3_17();
    OUTLINED_FUNCTION_48_6();
    *v47 = xmmword_1D561F5F0;
    *(v47 + v57[7]) = v29;
    *(v47 + v57[8]) = v29;
    *(v47 + v57[9]) = v29;
    *(v47 + v57[10]) = v29;
    OUTLINED_FUNCTION_0_25();
    sub_1D4F48EBC(v47, v60);
    v59 = v29;
  }

  *(v34 + v57[9]) = v59;
  v82 = 6;
  v61 = OUTLINED_FUNCTION_28_13();
  OUTLINED_FUNCTION_13_20(v61, v62);
  v63 = v83;
  v64 = v78;
  if (v83)
  {
    (*(v78 + 8))(v27, v73);
    v65 = v81;
  }

  else
  {
    v66 = [objc_opt_self() hours];
    v65 = v81;
    sub_1D4F441CC();
    OUTLINED_FUNCTION_3_17();
    v67 = v74;
    sub_1D560BA48();
    (*(v64 + 8))(v27, v73);
    *v67 = xmmword_1D561F5F0;
    *(v67 + v65[7]) = v29;
    *(v67 + v65[8]) = v29;
    *(v67 + v65[9]) = v29;
    *(v67 + v65[10]) = v29;
    OUTLINED_FUNCTION_0_25();
    sub_1D4F48EBC(v67, v68);
    v63 = v29;
  }

  *(v34 + v65[10]) = v63;
  OUTLINED_FUNCTION_10_15();
  sub_1D4F48E5C(v34, v69, v70);
  __swift_destroy_boxed_opaque_existential_1(v79);
  return sub_1D4F48EBC(v34, v63);
}

uint64_t sub_1D4F44D0C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D4F44D28, a2, 0);
}

uint64_t sub_1D4F44D28()
{
  v1 = v0[3];
  v2 = *(v1 + OBJC_IVAR____TtCC16MusicKitInternal31MusicDownloadedSongCatalogStore8Database_connection);
  v0[4] = v2;
  v3 = *(v1 + OBJC_IVAR____TtCC16MusicKitInternal31MusicDownloadedSongCatalogStore8Database_databaseQueue);
  v0[5] = v3;

  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_1D4F44E38;
  v5 = v0[2];

  return sub_1D4F44F58(v5, 0xD00000000000001FLL, 0x80000001D567F260, v2, v3);
}

uint64_t sub_1D4F44E38()
{
  OUTLINED_FUNCTION_60();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  OUTLINED_FUNCTION_55();

  return v3();
}

uint64_t sub_1D4F44F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[5] = _s10PropertiesVMa(0);
  v10 = swift_task_alloc();
  v5[6] = v10;
  *v10 = v5;
  v10[1] = sub_1D4F45020;

  return sub_1D52FA4F8(a2, a3, a4, a5);
}

uint64_t sub_1D4F45020()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  *v3 = *v1;
  v2[7] = v4;
  v2[8] = v5;
  v2[9] = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D4F4512C()
{
  v23 = v0;
  if (v0[8])
  {
    v1 = v0[9];
    sub_1D560B9C8();
    swift_allocObject();
    sub_1D560B9B8();
    v2 = OUTLINED_FUNCTION_86_0();
    sub_1D5013DB0(v2, v3);
    OUTLINED_FUNCTION_11_17();
    sub_1D4F4815C(v4);
    sub_1D560B948();
    if (!v1)
    {

      v17 = OUTLINED_FUNCTION_86_0();
      sub_1D4E55E1C(v17, v18);
      v19 = 0;
      goto LABEL_10;
    }

    v5 = OUTLINED_FUNCTION_86_0();
    sub_1D4E55E1C(v5, v6);

    if (qword_1EDD5D8B0 != -1)
    {
      OUTLINED_FUNCTION_0_20(&qword_1EDD5D8B0);
    }

    v7 = sub_1D560C758();
    __swift_project_value_buffer(v7, qword_1EDD76DE0);

    v8 = v1;
    v9 = sub_1D560C738();
    v10 = sub_1D56156C8();

    if (os_log_type_enabled(v9, v10))
    {
      v12 = v0[3];
      v11 = v0[4];
      v13 = swift_slowAlloc();
      v14 = OUTLINED_FUNCTION_33_17();
      v22 = OUTLINED_FUNCTION_138_0();
      *v13 = 136446466;
      *(v13 + 4) = sub_1D4E6835C(v12, v11, &v22);
      *(v13 + 12) = 2114;
      v15 = v1;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 14) = v16;
      *v14 = v16;
      _os_log_impl(&dword_1D4E3F000, v9, v10, "Get Codable: unable to decode %{public}s: %{public}@.", v13, 0x16u);
      sub_1D4E50004(v14, &unk_1EC7F2C00, &qword_1D5623260);
      OUTLINED_FUNCTION_122();
      OUTLINED_FUNCTION_49_6();
      OUTLINED_FUNCTION_122();
      OUTLINED_FUNCTION_122();
    }

    else
    {
    }
  }

  v19 = 1;
LABEL_10:
  __swift_storeEnumTagSinglePayload(v0[2], v19, 1, v0[5]);
  OUTLINED_FUNCTION_55();

  return v20();
}

uint64_t sub_1D4F453BC()
{
  v17 = v0;
  if (qword_1EDD5D8B0 != -1)
  {
    OUTLINED_FUNCTION_0_20(&qword_1EDD5D8B0);
  }

  v1 = v0[9];
  v2 = sub_1D560C758();
  OUTLINED_FUNCTION_23_15(v2, qword_1EDD76DE0);

  v3 = v1;
  v4 = sub_1D560C738();
  v5 = sub_1D56156C8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[9];
  if (v6)
  {
    v9 = v0[3];
    v8 = v0[4];
    v10 = swift_slowAlloc();
    v11 = OUTLINED_FUNCTION_33_17();
    v16 = OUTLINED_FUNCTION_138_0();
    *v10 = 136446466;
    *(v10 + 4) = sub_1D4E6835C(v9, v8, &v16);
    *(v10 + 12) = 2114;
    v12 = v7;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v13;
    *v11 = v13;
    _os_log_impl(&dword_1D4E3F000, v4, v5, "Get Codable: unable to get %{public}s from database: %{public}@.", v10, 0x16u);
    sub_1D4E50004(v11, &unk_1EC7F2C00, &qword_1D5623260);
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_49_6();
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_122();
  }

  else
  {
  }

  __swift_storeEnumTagSinglePayload(v0[2], 1, 1, v0[5]);
  OUTLINED_FUNCTION_55();

  return v14();
}

uint64_t sub_1D4F45598()
{
  OUTLINED_FUNCTION_60();
  v3 = v2;
  v1[2] = v2;
  v1[3] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBFC0, &qword_1D564EA20);
  v1[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D4F45634, v3, 0);
}

uint64_t sub_1D4F45634()
{
  OUTLINED_FUNCTION_60();
  v1 = v0[2];
  v0[5] = *(v1 + OBJC_IVAR____TtCC16MusicKitInternal31MusicDownloadedSongCatalogStore8Database_connection);
  v0[6] = *(v1 + OBJC_IVAR____TtCC16MusicKitInternal31MusicDownloadedSongCatalogStore8Database_databaseQueue);

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1D4F456C4()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  sub_1D4F48E5C(v0[3], v3, _s10PropertiesVMa);
  v4 = _s10PropertiesVMa(0);
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v4);
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_1D4F457D0;
  v6 = v0[4];

  return sub_1D4F459E0(v6, 0xD00000000000001FLL, 0x80000001D567F260, v1, v2);
}

uint64_t sub_1D4F457D0()
{
  v2 = *v1;
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v5 = *(v4 + 32);
  v6 = *v1;
  OUTLINED_FUNCTION_8();
  *v7 = v6;
  *(v2 + 64) = v0;

  sub_1D4E50004(v5, &qword_1EC7EBFC0, &qword_1D564EA20);

  if (v0)
  {
    OUTLINED_FUNCTION_57_1();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }

  else
  {

    v11 = *(v6 + 8);

    return v11();
  }
}

uint64_t sub_1D4F45984()
{
  OUTLINED_FUNCTION_60();

  OUTLINED_FUNCTION_55();

  return v0();
}

uint64_t sub_1D4F459E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[19] = a4;
  v5[20] = a5;
  v5[17] = a2;
  v5[18] = a3;
  v5[16] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBFC0, &qword_1D564EA20);
  v5[21] = swift_task_alloc();
  v5[22] = _s10PropertiesVMa(0);
  v5[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D4F45AB4, 0, 0);
}

uint64_t sub_1D4F45AB4()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  sub_1D4F489C0(*(v0 + 128), v1);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_1D4E50004(*(v0 + 168), &qword_1EC7EBFC0, &qword_1D564EA20);
    v3 = swift_task_alloc();
    *(v0 + 216) = v3;
    *v3 = v0;
    v3[1] = sub_1D4F45E30;
    v4 = *(v0 + 152);
    v5 = *(v0 + 160);
    v7 = *(v0 + 136);
    v6 = *(v0 + 144);

    return sub_1D52FAFA8(v7, v6, v4, v5);
  }

  sub_1D4F48A30(*(v0 + 168), *(v0 + 184));
  sub_1D560B9F8();
  swift_allocObject();
  *(v0 + 192) = sub_1D560B9E8();
  OUTLINED_FUNCTION_11_17();
  sub_1D4F4815C(v9);
  v10 = sub_1D560B9D8();
  *(v0 + 200) = v10;
  *(v0 + 208) = v11;
  v12 = v10;
  v13 = v11;
  sub_1D4F48DE4(v10, v11);
  v14 = OUTLINED_FUNCTION_86_0();
  v16 = sub_1D4F48C18(v14, v15);
  if (v17)
  {
    goto LABEL_12;
  }

  *(v0 + 96) = v12;
  *(v0 + 104) = v13;
  v18 = OUTLINED_FUNCTION_86_0();
  sub_1D4F48DE4(v18, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBFC8, &qword_1D561F700);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    sub_1D4E50004(v0 + 56, &qword_1EC7EBFD0, &qword_1D561F708);
LABEL_11:
    v24 = OUTLINED_FUNCTION_86_0();
    v16 = sub_1D4F48918(v24, v25);
LABEL_12:
    v22 = v16;
    v23 = v17;
    v26 = OUTLINED_FUNCTION_86_0();
    sub_1D4E55E1C(v26, v27);
    goto LABEL_13;
  }

  sub_1D4E48324((v0 + 56), v0 + 16);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  if ((sub_1D5615EA8() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    goto LABEL_11;
  }

  v20 = OUTLINED_FUNCTION_86_0();
  sub_1D4E55E1C(v20, v21);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_1D5615E98();
  v22 = *(v0 + 112);
  v23 = *(v0 + 120);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
LABEL_13:
  *(v0 + 224) = v23;
  v28 = swift_task_alloc();
  *(v0 + 232) = v28;
  *v28 = v0;
  v28[1] = sub_1D4F45F5C;
  v29 = *(v0 + 152);
  v30 = *(v0 + 160);
  v31 = *(v0 + 136);
  v32 = *(v0 + 144);

  return sub_1D52FAA28(v22, v23, v31, v32, v29, v30);
}

uint64_t sub_1D4F45E30()
{
  OUTLINED_FUNCTION_80();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1D4F45F5C()
{
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 240) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D4F46084()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[23];

  sub_1D4E55E1C(v1, v2);
  OUTLINED_FUNCTION_0_25();
  sub_1D4F48EBC(v3, v4);

  OUTLINED_FUNCTION_55();

  return v5();
}

uint64_t sub_1D4F46118()
{
  OUTLINED_FUNCTION_80();
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[23];

  sub_1D4E55E1C(v1, v2);
  OUTLINED_FUNCTION_0_25();
  sub_1D4F48EBC(v3, v4);

  OUTLINED_FUNCTION_55();

  return v5();
}

uint64_t sub_1D4F461AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v203 = a2;
  v3 = _s10PropertiesVMa(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_59_0();
  v7 = (v5 - v6);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v195 - v9);
  v218 = sub_1D560C328();
  OUTLINED_FUNCTION_4();
  v200 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_59_0();
  v217 = v13 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v219 = &v195 - v16;
  v216 = _s10PropertiesV15BagDateIntervalVMa(0);
  OUTLINED_FUNCTION_4();
  v199 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5_0();
  v215 = v19;
  sub_1D560BB08();
  OUTLINED_FUNCTION_4();
  v220 = v20;
  *&v221 = v21;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_59_0();
  v24 = v22 - v23;
  v26 = MEMORY[0x1EEE9AC00](v25);
  v207 = &v195 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v195 - v28;
  sub_1D560B928();
  OUTLINED_FUNCTION_4();
  v213 = v31;
  v214 = v30;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_5_0();
  v212 = v32;
  v33 = sub_1D510588C();
  v202 = v7;
  v208 = v29;
  v204 = v33;
  if (qword_1EDD54478 != -1)
  {
    OUTLINED_FUNCTION_2_5(&qword_1EDD54478);
  }

  v34 = sub_1D560C758();
  __swift_project_value_buffer(v34, qword_1EDD76A90);
  v35 = sub_1D560C738();
  v36 = sub_1D56156E8();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = OUTLINED_FUNCTION_142();
    *v37 = 134349056;
    *(v37 + 4) = v204;
    OUTLINED_FUNCTION_26_9();
    _os_log_impl(v38, v39, v40, v41, v37, 0xCu);
    OUTLINED_FUNCTION_122();
  }

  OUTLINED_FUNCTION_18_16();
  v42 = sub_1D5105950();
  v206 = v10;
  v209 = a1;
  v43 = qword_1EDD54478;
  v44 = v42;

  if (v43 != -1)
  {
    OUTLINED_FUNCTION_2_5(&qword_1EDD54478);
  }

  v45 = sub_1D560C758();
  __swift_project_value_buffer(v45, qword_1EDD76A90);
  v46 = sub_1D560C738();
  sub_1D56156E8();

  v47 = OUTLINED_FUNCTION_37_4();
  v201 = v44;
  if (v47)
  {
    v48 = OUTLINED_FUNCTION_142();
    v222[0] = OUTLINED_FUNCTION_138_0();
    *v48 = 136446210;
    v49 = MEMORY[0x1DA6EAF70](v44, MEMORY[0x1E69E6530]);
    v51 = sub_1D4E6835C(v49, v50, v222);

    *(v48 + 4) = v51;
    v10 = v206;
    OUTLINED_FUNCTION_26_9();
    _os_log_impl(v52, v53, v54, v55, v48, 0xCu);
    OUTLINED_FUNCTION_49_6();
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_122();
  }

  v56 = v214;
  sub_1D560B9C8();
  swift_allocObject();
  v57 = sub_1D560B9B8();
  (*(v213 + 104))(v212, *MEMORY[0x1E6967F30], v56);
  sub_1D560B938();
  OUTLINED_FUNCTION_18_16();
  v210 = v57;
  v60 = sub_1D4F476CC(v58 + 3, v59 | 0x8000000000000000, v57);
  v205 = v3;
  v197 = 0;
  v61 = v60[2];
  if (v61)
  {
    OUTLINED_FUNCTION_38_13();
    v63 = v62;
    sub_1D4F03CDC(0, v61, 0);
    v64 = v222[0];
    OUTLINED_FUNCTION_6_4();
    v196 = v63;
    v66 = v63 + v65;
    OUTLINED_FUNCTION_5_15();
    v211 = v68;
    v212 = v67;
    v3 = v208;
    v10 = v219;
    do
    {
      OUTLINED_FUNCTION_4_17();
      v70 = v69;
      v71 = v215;
      sub_1D4F48E5C(v66, v215, v69);
      v72 = *v211;
      v73 = v218;
      (*v211)(v10, v71, v218);
      v72(v217, v71 + *(v216 + 20), v73);
      sub_1D560BAD8();
      sub_1D4F48EBC(v71, v70);
      v222[0] = v64;
      v75 = *(v64 + 16);
      v74 = *(v64 + 24);
      if (v75 >= v74 >> 1)
      {
        v78 = OUTLINED_FUNCTION_29_9(v74);
        sub_1D4F03CDC(v78, v75 + 1, 1);
        v64 = v222[0];
      }

      *(v64 + 16) = v75 + 1;
      OUTLINED_FUNCTION_6_4();
      (*(v77 + 32))(v64 + v76 + *(v77 + 72) * v75, v3);
      v66 += v213;
    }

    while (v214 != 1);
    v208 = v64;

    OUTLINED_FUNCTION_16_17();
    v24 = v198;
  }

  else
  {

    v208 = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_32_17();
  if (!v79)
  {
    OUTLINED_FUNCTION_2_5(&qword_1EDD54478);
  }

  v80 = sub_1D560C758();
  __swift_project_value_buffer(v80, qword_1EDD76A90);
  v81 = v208;

  v82 = sub_1D560C738();
  v83 = sub_1D56156E8();

  if (os_log_type_enabled(v82, v83))
  {
    v84 = OUTLINED_FUNCTION_142();
    v222[0] = OUTLINED_FUNCTION_138_0();
    *v84 = 136446210;
    v85 = MEMORY[0x1DA6EAF70](v81, v220);
    v87 = sub_1D4E6835C(v85, v86, v222);

    *(v84 + 4) = v87;
    v10 = v206;
    OUTLINED_FUNCTION_24_16(&dword_1D4E3F000, v88, v89, "􁉰 Rejected dates for all rows is %{public}s.");
    OUTLINED_FUNCTION_49_6();
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_12_21();
  }

  v90 = MEMORY[0x1E69E7CC0];
  v91 = &unk_1E84C5000;
  v92 = v197;
  OUTLINED_FUNCTION_18_16();
  v95 = sub_1D4F476CC(v93 + 13, v94 | 0x8000000000000000, v210);
  v96 = v92;
  if (v92)
  {
    OUTLINED_FUNCTION_32_17();
    if (!v79)
    {
      OUTLINED_FUNCTION_2_5(&qword_1EDD54478);
    }

    v97 = sub_1D560C758();
    __swift_project_value_buffer(v97, qword_1EDD76A90);
    v98 = v92;
    v99 = sub_1D560C738();
    v100 = sub_1D56156C8();

    if (os_log_type_enabled(v99, v100))
    {
      v101 = OUTLINED_FUNCTION_142();
      v102 = OUTLINED_FUNCTION_33_17();
      *v101 = 138543362;
      v103 = v96;
      v104 = _swift_stdlib_bridgeErrorToNSError();
      *(v101 + 4) = v104;
      *v102 = v104;
      OUTLINED_FUNCTION_24_16(&dword_1D4E3F000, v105, v106, "􁉰 Defaulting rejected dates for audio analysis to N/A, because unable to get from the bag: %{public}@.");
      sub_1D4E50004(v102, &unk_1EC7F2C00, &qword_1D5623260);
      v91 = &unk_1E84C5000;
      OUTLINED_FUNCTION_122();
      OUTLINED_FUNCTION_12_21();
    }

    v107 = [objc_opt_self() hours];
    sub_1D4F441CC();
    OUTLINED_FUNCTION_3_17();
    sub_1D560BA48();

    *v10 = xmmword_1D561F5F0;
    *(v10 + *(v3 + 28)) = v90;
    *(v10 + *(v3 + 32)) = v90;
    *(v10 + *(v3 + 36)) = v90;
    *(v10 + *(v3 + 40)) = v90;
    OUTLINED_FUNCTION_0_25();
    sub_1D4F48EBC(v10, v108);
    v109 = 0;
    v207 = v90;
  }

  else
  {
    v197 = 0;
    v110 = v95[2];
    if (v110)
    {
      OUTLINED_FUNCTION_38_13();
      v112 = v111;
      sub_1D4F03CDC(0, v110, 0);
      v3 = v222[0];
      OUTLINED_FUNCTION_6_4();
      v196 = v112;
      v114 = v112 + v113;
      OUTLINED_FUNCTION_5_15();
      v211 = v115;
      v212 = v116;
      v117 = v207;
      v10 = v219;
      do
      {
        OUTLINED_FUNCTION_4_17();
        v119 = v118;
        v120 = v215;
        sub_1D4F48E5C(v114, v215, v118);
        v121 = *v212;
        v122 = v218;
        (*v212)(v10, v120, v218);
        v121(v217, v120 + *(v216 + 20), v122);
        sub_1D560BAD8();
        sub_1D4F48EBC(v120, v119);
        v222[0] = v3;
        v124 = *(v3 + 16);
        v123 = *(v3 + 24);
        if (v124 >= v123 >> 1)
        {
          v127 = OUTLINED_FUNCTION_29_9(v123);
          sub_1D4F03CDC(v127, v124 + 1, 1);
          v3 = v222[0];
        }

        *(v3 + 16) = v124 + 1;
        OUTLINED_FUNCTION_6_4();
        (*(v126 + 32))(v3 + v125 + *(v126 + 72) * v124, v117);
        v114 += v213;
      }

      while (v214 != 1);
      v207 = v3;

      OUTLINED_FUNCTION_16_17();
      v91 = &unk_1E84C5000;
      v24 = v198;
    }

    else
    {

      v207 = MEMORY[0x1E69E7CC0];
    }

    OUTLINED_FUNCTION_32_17();
    if (!v79)
    {
      OUTLINED_FUNCTION_2_5(&qword_1EDD54478);
    }

    v128 = sub_1D560C758();
    __swift_project_value_buffer(v128, qword_1EDD76A90);
    v129 = v207;

    v130 = sub_1D560C738();
    v131 = sub_1D56156E8();

    if (os_log_type_enabled(v130, v131))
    {
      v132 = OUTLINED_FUNCTION_142();
      v133 = OUTLINED_FUNCTION_138_0();
      v222[0] = v133;
      *v132 = 136446210;
      v134 = MEMORY[0x1DA6EAF70](v129, v220);
      v136 = sub_1D4E6835C(v134, v135, v222);
      v10 = v206;

      *(v132 + 4) = v136;
      OUTLINED_FUNCTION_24_16(&dword_1D4E3F000, v137, v138, "􁉰 Rejected dates for audio analysis is %{public}s.");
      __swift_destroy_boxed_opaque_existential_1(v133);
      OUTLINED_FUNCTION_122();
      OUTLINED_FUNCTION_12_21();
    }

    v90 = MEMORY[0x1E69E7CC0];
    v109 = v197;
  }

  OUTLINED_FUNCTION_18_16();
  v141 = sub_1D4F476CC(v139 + 14, v140 | 0x8000000000000000, v210);
  if (v109)
  {
    OUTLINED_FUNCTION_32_17();
    if (!v79)
    {
      OUTLINED_FUNCTION_2_5(&qword_1EDD54478);
    }

    v142 = sub_1D560C758();
    v143 = OUTLINED_FUNCTION_23_15(v142, qword_1EDD76A90);
    v144 = sub_1D560C738();
    sub_1D56156C8();

    if (OUTLINED_FUNCTION_37_4())
    {
      v145 = OUTLINED_FUNCTION_142();
      v146 = OUTLINED_FUNCTION_33_17();
      *v145 = 138543362;
      v147 = v109;
      v148 = _swift_stdlib_bridgeErrorToNSError();
      *(v145 + 4) = v148;
      *v146 = v148;
      OUTLINED_FUNCTION_26_9();
      _os_log_impl(v149, v150, v151, v152, v145, 0xCu);
      sub_1D4E50004(v146, &unk_1EC7F2C00, &qword_1D5623260);
      v3 = v205;
      OUTLINED_FUNCTION_122();
      OUTLINED_FUNCTION_122();
    }

    v153 = [objc_opt_self() v91[463]];
    sub_1D4F441CC();
    OUTLINED_FUNCTION_3_17();
    sub_1D560BA48();

    *v10 = xmmword_1D561F5F0;
    *(v10 + *(v3 + 28)) = v90;
    *(v10 + *(v3 + 32)) = v90;
    *(v10 + *(v3 + 36)) = v90;
    *(v10 + *(v3 + 40)) = v90;
    OUTLINED_FUNCTION_0_25();
    sub_1D4F48EBC(v10, v154);
    v155 = v90;
  }

  else
  {
    v156 = v141;
    v157 = v141[2];
    if (v157)
    {
      v222[0] = v90;
      sub_1D4F03CDC(0, v157, 0);
      OUTLINED_FUNCTION_6_4();
      v209 = v156;
      v159 = v156 + v158;
      OUTLINED_FUNCTION_5_15();
      v211 = v160;
      v212 = v161;
      v3 = v219;
      do
      {
        OUTLINED_FUNCTION_4_17();
        v163 = v162;
        v164 = v215;
        sub_1D4F48E5C(v159, v215, v162);
        v165 = *v212;
        v166 = v218;
        (*v212)(v3, v164, v218);
        v165(v217, v164 + *(v216 + 20), v166);
        sub_1D560BAD8();
        v167 = v164;
        v155 = v214;
        sub_1D4F48EBC(v167, v163);
        v222[0] = v155;
        v169 = *(v155 + 16);
        v168 = *(v155 + 24);
        v10 = (v169 + 1);
        if (v169 >= v168 >> 1)
        {
          v172 = OUTLINED_FUNCTION_29_9(v168);
          sub_1D4F03CDC(v172, v169 + 1, 1);
          v155 = v222[0];
        }

        *(v155 + 16) = v10;
        OUTLINED_FUNCTION_6_4();
        (*(v171 + 32))(v155 + v170 + *(v171 + 72) * v169, v24);
        v159 += v213;
        --v157;
        v3 = v219;
      }

      while (v157);

      OUTLINED_FUNCTION_16_17();
      v90 = MEMORY[0x1E69E7CC0];
      v91 = &unk_1E84C5000;
    }

    else
    {

      v155 = MEMORY[0x1E69E7CC0];
    }

    if (qword_1EDD54478 != -1)
    {
      OUTLINED_FUNCTION_2_5(&qword_1EDD54478);
    }

    v173 = sub_1D560C758();
    OUTLINED_FUNCTION_23_15(v173, qword_1EDD76A90);

    v174 = sub_1D560C738();
    sub_1D56156E8();
    OUTLINED_FUNCTION_45_11();

    if (OUTLINED_FUNCTION_37_4())
    {
      v175 = OUTLINED_FUNCTION_142();
      v176 = OUTLINED_FUNCTION_138_0();
      v222[0] = v176;
      *v175 = 136446210;
      v177 = MEMORY[0x1DA6EAF70](v155, v220);
      v179 = sub_1D4E6835C(v177, v178, v222);

      *(v175 + 4) = v179;
      v90 = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_26_9();
      _os_log_impl(v180, v181, v182, v183, v175, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v176);
      v3 = v205;
      OUTLINED_FUNCTION_122();
      OUTLINED_FUNCTION_122();
    }
  }

  v184 = objc_opt_self();
  v185 = [v184 v91[463]];
  sub_1D4F441CC();
  sub_1D560BA48();
  v221 = xmmword_1D561F5F0;
  *v10 = xmmword_1D561F5F0;
  *(v10 + *(v3 + 28)) = v90;
  *(v10 + *(v3 + 32)) = v90;
  *(v10 + *(v3 + 36)) = v90;
  *(v10 + *(v3 + 40)) = v90;
  OUTLINED_FUNCTION_10_15();
  sub_1D4F48EBC(v10, v186);
  v187 = [v184 v91[463]];
  v188 = *(v3 + 24);
  v189 = v202;
  sub_1D560BA48();

  *v189 = v221;
  *(v189 + *(v3 + 28)) = v90;
  *(v189 + *(v3 + 32)) = v90;
  *(v189 + *(v3 + 36)) = v90;
  *(v189 + *(v3 + 40)) = v90;
  v190 = *(v3 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBF80, &qword_1D561F600);
  OUTLINED_FUNCTION_14();
  v192 = v203;
  (*(v191 + 16))(v203 + v190, v189 + v188);
  result = sub_1D4F48EBC(v189, v185);
  *v192 = v204;
  v192[1] = 8;
  *(v192 + *(v3 + 28)) = v201;
  v194 = v207;
  *(v192 + *(v3 + 32)) = v208;
  *(v192 + *(v3 + 36)) = v194;
  *(v192 + *(v3 + 40)) = v155;
  return result;
}

id sub_1D4F476CC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v8 = v3 + *(type metadata accessor for Bag(0) + 20);
  v9 = *v8;
  if (*(v8 + 8))
  {

    sub_1D5107F84();
    v11 = v10;
    v12 = v9;
    v13 = 1;
  }

  else
  {
    v14 = *(v9 + 16);
    sub_1D4F48F74(v9, 0);
    v15 = v14;
    v11 = sub_1D5105F48(a1, a2, v15, a3);

    v12 = v9;
    v13 = 0;
  }

  sub_1D4F48F14(v12, v13);
  if (!v4 && !v11)
  {
    sub_1D4F48F20();
    swift_allocError();
    *v17 = 1;
    swift_willThrow();
  }

  return v11;
}

void sub_1D4F477F0(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    v2 = _s10PropertiesVMa(0);
    sub_1D4F441CC();
    if (sub_1D560BA38())
    {
      v3 = OUTLINED_FUNCTION_44_0(v2[7]);
      if (sub_1D4EFAD58(v3, v4))
      {
        v5 = OUTLINED_FUNCTION_44_0(v2[8]);
        sub_1D4EFADAC(v5, v6, v7);
        if (v8)
        {
          v9 = OUTLINED_FUNCTION_44_0(v2[9]);
          sub_1D4EFADAC(v9, v10, v11);
          if (v12)
          {
            v13 = OUTLINED_FUNCTION_44_0(v2[10]);

            sub_1D4EFADAC(v13, v14, v15);
          }
        }
      }
    }
  }
}

uint64_t sub_1D4F478CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000011 && 0x80000001D567F390 == a2;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD00000000000001CLL && 0x80000001D567F3B0 == a2;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000028 && 0x80000001D567F3D0 == a2;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000028 && 0x80000001D567F400 == a2;
        if (v8 || (sub_1D5616168() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000018 && 0x80000001D567F430 == a2;
          if (v9 || (sub_1D5616168() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000022 && 0x80000001D567F450 == a2;
            if (v10 || (sub_1D5616168() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0xD000000000000021 && 0x80000001D567F480 == a2)
            {

              return 6;
            }

            else
            {
              v12 = sub_1D5616168();

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

unint64_t sub_1D4F47B00(char a1)
{
  result = 0xD000000000000011;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000001CLL;
      break;
    case 2:
    case 3:
      result = 0xD000000000000028;
      break;
    case 4:
      result = 0xD000000000000018;
      break;
    case 5:
      result = 0xD000000000000022;
      break;
    case 6:
      result = 0xD000000000000021;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D4F47BB8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBFB0, &qword_1D561F6E8);
  OUTLINED_FUNCTION_4();
  v5 = v4;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D4F48108();
  sub_1D56163D8();
  v13 = 0;
  OUTLINED_FUNCTION_22_14();
  sub_1D56160B8();
  if (!v1)
  {
    v13 = 1;
    OUTLINED_FUNCTION_22_14();
    sub_1D56160B8();
    v9 = _s10PropertiesVMa(0);
    v13 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBF80, &qword_1D561F600);
    sub_1D4F482A0(&unk_1EDD5D000);
    OUTLINED_FUNCTION_22_14();
    sub_1D56160C8();
    OUTLINED_FUNCTION_42_2(v9[7]);
    v12 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBFA0, &qword_1D5620C40);
    sub_1D4F481A0(&unk_1EDD52758);
    OUTLINED_FUNCTION_22_14();
    sub_1D56160C8();
    OUTLINED_FUNCTION_42_2(v9[8]);
    v12 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBFA8, &qword_1D561F6E0);
    sub_1D4F48208(&unk_1EDD528B8);
    OUTLINED_FUNCTION_9_18();
    OUTLINED_FUNCTION_42_2(v9[9]);
    v12 = 5;
    OUTLINED_FUNCTION_9_18();
    OUTLINED_FUNCTION_42_2(v9[10]);
    v12 = 6;
    OUTLINED_FUNCTION_9_18();
  }

  return (*(v5 + 8))(v8, v3);
}

void sub_1D4F47EA0(uint64_t a1)
{
  MEMORY[0x1DA6EC0D0](*v1);
  MEMORY[0x1DA6EC0D0](v1[1]);
  _s10PropertiesVMa(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBF80, &qword_1D561F600);
  sub_1D4F482A0(&unk_1EC7EBFB8);
  sub_1D5614CB8();
  OUTLINED_FUNCTION_32_2();
  sub_1D4F08F34();
  v2 = OUTLINED_FUNCTION_32_2();
  sub_1D4F08EEC(v2, v3, v4);
  v5 = OUTLINED_FUNCTION_32_2();
  sub_1D4F08EEC(v5, v6, v7);
  v8 = OUTLINED_FUNCTION_32_2();

  sub_1D4F08EEC(v8, v9, v10);
}

uint64_t sub_1D4F47F80()
{
  sub_1D56162D8();
  sub_1D4F47EA0(v1);
  return sub_1D5616328();
}

uint64_t sub_1D4F47FC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D4F478CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D4F47FF0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D4F47AF8();
  *a1 = result;
  return result;
}

uint64_t sub_1D4F48018(uint64_t a1)
{
  v2 = sub_1D4F48108();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4F48054(uint64_t a1)
{
  v2 = sub_1D4F48108();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D4F480CC(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D4F47EA0(v2);
  return sub_1D5616328();
}

unint64_t sub_1D4F48108()
{
  result = qword_1EDD599E0[0];
  if (!qword_1EDD599E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD599E0);
  }

  return result;
}

unint64_t sub_1D4F4815C(uint64_t a1)
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

unint64_t sub_1D4F481A0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBFA0, &qword_1D5620C40);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D4F48208(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBFA8, &qword_1D561F6E0);
    sub_1D4F4815C(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D4F482A0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBF80, &qword_1D561F600);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1D4F482EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7472617473 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6581861 && a2 == 0xE300000000000000)
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

uint64_t sub_1D4F483B8(char a1)
{
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](a1 & 1);
  return sub_1D5616328();
}

uint64_t sub_1D4F48400(char a1)
{
  if (a1)
  {
    return 6581861;
  }

  else
  {
    return 0x7472617473;
  }
}

uint64_t sub_1D4F4842C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v30 = sub_1D560C328();
  v26 = *(v30 - 8);
  v4 = MEMORY[0x1EEE9AC00](v30);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v27 = &v21 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBFE8, &qword_1D561F870);
  v9 = *(v8 - 8);
  v28 = v8;
  v29 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - v10;
  v12 = _s10PropertiesV15BagDateIntervalVMa(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D4F49280();
  sub_1D5616398();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = v12;
  v23 = v6;
  v24 = v14;
  v15 = v26;
  v32 = 0;
  sub_1D4F4815C(&qword_1EDD5CF50);
  v16 = v27;
  v17 = v28;
  sub_1D5615FD8();
  v27 = *(v15 + 32);
  (v27)(v24, v16, v30);
  v31 = 1;
  v18 = v23;
  sub_1D5615FD8();
  (*(v29 + 8))(v11, v17);
  v19 = v24;
  (v27)(&v24[*(v22 + 20)], v18, v30);
  sub_1D4F48E5C(v19, v25, _s10PropertiesV15BagDateIntervalVMa);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D4F48EBC(v19, _s10PropertiesV15BagDateIntervalVMa);
}

uint64_t sub_1D4F487EC(uint64_t a1)
{
  v2 = *v1;
  sub_1D56162D8();
  sub_1D4EA7328(v4, v2);
  return sub_1D5616328();
}

uint64_t sub_1D4F48838@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D4F482EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D4F48860@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D4F483B0();
  *a1 = result;
  return result;
}

uint64_t sub_1D4F48888(uint64_t a1)
{
  v2 = sub_1D4F49280();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4F488C4(uint64_t a1)
{
  v2 = sub_1D4F49280();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D4F48918(uint64_t a1, unint64_t a2)
{
  sub_1D4F48DE4(a1, a2);
  sub_1D4F48A94(a1, a2);
  v4 = sub_1D5614E08();

  return v4;
}

uint64_t sub_1D4F48984@<X0>(uint64_t *a3@<X8>)
{
  result = sub_1D5614E08();
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1D4F489C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBFC0, &qword_1D564EA20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4F48A30(uint64_t a1, uint64_t a2)
{
  v4 = _s10PropertiesVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_1D4F48A94(uint64_t a1, unint64_t a2)
{
  v4 = sub_1D560C1E8();
  v5 = *(v4 - 8);
  result = MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(a2 >> 62)
  {
    case 1uLL:
      if (!__OFSUB__(HIDWORD(a1), a1))
      {
        v9 = HIDWORD(a1) - a1;
        goto LABEL_6;
      }

      __break(1u);
      goto LABEL_12;
    case 2uLL:
      v11 = *(a1 + 16);
      v10 = *(a1 + 24);
      v9 = v10 - v11;
      if (!__OFSUB__(v10, v11))
      {
        goto LABEL_6;
      }

LABEL_12:
      __break(1u);
      return result;
    case 3uLL:
      goto LABEL_9;
    default:
      v9 = BYTE6(a2);
LABEL_6:
      if (!v9)
      {
        goto LABEL_9;
      }

      v12 = sub_1D4E6EFA4(v9, 0);
      v13 = sub_1D560C0F8();
      sub_1D4E55E1C(a1, a2);
      (*(v5 + 8))(v8, v4);
      if (v13 != v9)
      {
        __break(1u);
LABEL_9:
        sub_1D4E55E1C(a1, a2);
        return MEMORY[0x1E69E7CC0];
      }

      return v12;
  }
}

uint64_t sub_1D4F48C18(uint64_t a1, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      if (a1 >> 32 < a1)
      {
        __break(1u);
LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
      }

      v4 = a1;
      if (sub_1D560BCA8() && __OFSUB__(v4, sub_1D560BCC8()))
      {
        goto LABEL_14;
      }

LABEL_9:
      sub_1D560BCB8();
      return sub_1D5614E08();
    case 2uLL:
      v2 = *(a1 + 16);
      v3 = *(a1 + 24);
      if (sub_1D560BCA8() && __OFSUB__(v2, sub_1D560BCC8()))
      {
        goto LABEL_13;
      }

      if (!__OFSUB__(v3, v2))
      {
        goto LABEL_9;
      }

      goto LABEL_12;
    default:
      return sub_1D5614E08();
  }
}

uint64_t sub_1D4F48DE4(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_1D4F48E5C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_14();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1D4F48EBC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1D4F48F14(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

unint64_t sub_1D4F48F20()
{
  result = qword_1EC7EBFD8;
  if (!qword_1EC7EBFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBFD8);
  }

  return result;
}

uint64_t sub_1D4F48F74(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1D4F48FA8(uint64_t a1)
{
  result = sub_1D560C328();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t _s10PropertiesV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s10PropertiesV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D4F4917C()
{
  result = qword_1EC7EBFE0;
  if (!qword_1EC7EBFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBFE0);
  }

  return result;
}

unint64_t sub_1D4F491D4()
{
  result = qword_1EDD599D0;
  if (!qword_1EDD599D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD599D0);
  }

  return result;
}

unint64_t sub_1D4F4922C()
{
  result = qword_1EDD599D8;
  if (!qword_1EDD599D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD599D8);
  }

  return result;
}

unint64_t sub_1D4F49280()
{
  result = qword_1EDD599C8;
  if (!qword_1EDD599C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD599C8);
  }

  return result;
}

_BYTE *_s10PropertiesV15BagDateIntervalV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D4F493B4()
{
  result = qword_1EC7EBFF0;
  if (!qword_1EC7EBFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBFF0);
  }

  return result;
}

unint64_t sub_1D4F4940C()
{
  result = qword_1EDD599B8;
  if (!qword_1EDD599B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD599B8);
  }

  return result;
}

unint64_t sub_1D4F49464()
{
  result = qword_1EDD599C0;
  if (!qword_1EDD599C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD599C0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_33_17()
{

  return swift_slowAlloc();
}

unint64_t OUTLINED_FUNCTION_34_12()
{

  return sub_1D4F441CC();
}

unint64_t OUTLINED_FUNCTION_47_11()
{

  return sub_1D4F441CC();
}

uint64_t MusicSummariesResponse.items.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBFF8, &qword_1D561F980);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t static MusicSummariesResponse.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MusicSummary(0);
  sub_1D4F4A658(&qword_1EC7EC000, type metadata accessor for MusicSummary, &protocol conformance descriptor for MusicSummary);
  sub_1D4F4A658(&qword_1EC7EC008, type metadata accessor for MusicSummary, &protocol conformance descriptor for MusicSummary);

  return sub_1D560DAA8();
}

uint64_t MusicSummariesResponse.hash(into:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBFF8, &qword_1D561F980);
  sub_1D4F496D0();

  return sub_1D5614CB8();
}

unint64_t sub_1D4F496D0()
{
  result = qword_1EC7EC010;
  if (!qword_1EC7EC010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBFF8, &qword_1D561F980);
    sub_1D4F4A658(&qword_1EC7EC018, type metadata accessor for MusicSummary, &protocol conformance descriptor for MusicSummary);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC010);
  }

  return result;
}

uint64_t MusicSummariesResponse.hashValue.getter()
{
  sub_1D56162D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBFF8, &qword_1D561F980);
  sub_1D4F496D0();
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D4F497F4(uint64_t a1)
{
  sub_1D56162D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBFF8, &qword_1D561F980);
  sub_1D4F496D0();
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t MusicSummariesResponse.libraryMapped(policy:scope:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBFF8, &qword_1D561F980);
  v3[3] = v6;
  OUTLINED_FUNCTION_4();
  v3[4] = v7;
  v8 = swift_task_alloc();
  v3[5] = v8;
  v9 = swift_task_alloc();
  v3[6] = v9;
  *v9 = v3;
  v9[1] = sub_1D4F4997C;

  return MEMORY[0x1EEDCE928](v8, a2, a3, v6);
}

uint64_t sub_1D4F4997C()
{
  OUTLINED_FUNCTION_60();
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1D4F49B08;
  }

  else
  {
    v2 = sub_1D4F49A8C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D4F49A8C()
{
  OUTLINED_FUNCTION_60();
  (*(v0[4] + 32))(v0[2], v0[5], v0[3]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D4F49B08()
{
  OUTLINED_FUNCTION_60();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D4F49B68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D4F49C18;

  return MusicSummariesResponse.libraryMapped(policy:scope:)(a1, a2, a3);
}

uint64_t sub_1D4F49C18()
{
  OUTLINED_FUNCTION_60();
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t MusicSummariesResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7D8, &unk_1D561E8B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v28 = v26 - v6;
  v29 = sub_1D560CD48();
  OUTLINED_FUNCTION_4();
  v31 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC020, &qword_1D561F998);
  OUTLINED_FUNCTION_4();
  v14 = v13;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = v26 - v19;
  sub_1D4E628D4(a1, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC028, &qword_1D561F9A0);
  sub_1D4F4A40C(&qword_1EC7EC030, MEMORY[0x1E6975D48]);
  sub_1D5612428();
  if (!v2)
  {
    v27 = v14;
    (*(v14 + 16))(v18, v20, v12);
    v26[3] = a2;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v26[0] = v11;
    sub_1D5616378();
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1D5616368();
    v21 = sub_1D560CD98();
    v22 = v28;
    __swift_storeEnumTagSinglePayload(v28, 1, 1, v21);
    v26[2] = type metadata accessor for MusicSummary(0);
    v26[1] = sub_1D4F4A658(&qword_1EC7EC048, type metadata accessor for MusicSummary, &protocol conformance descriptor for MusicSummary);
    sub_1D4F4A658(&qword_1EC7EC000, type metadata accessor for MusicSummary, &protocol conformance descriptor for MusicSummary);
    v23 = v29;
    sub_1D5612368();

    sub_1D4F4A0BC(v22);
    (*(v31 + 8))(v26[0], v23);
    v24 = *(v27 + 8);
    v24(v18, v12);
    v24(v20, v12);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D4F4A0BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7D8, &unk_1D561E8B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MusicSummariesResponse.encode(to:)(void *a1)
{
  v24 = sub_1D5613578();
  OUTLINED_FUNCTION_4();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  v8 = sub_1D560CD48();
  OUTLINED_FUNCTION_4();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC020, &qword_1D561F998);
  OUTLINED_FUNCTION_4();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v23 - v18;
  v23 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D56163C8();
  v20 = v24;
  (*(v3 + 104))(v7, *MEMORY[0x1E6976A78], v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBFF8, &qword_1D561F980);
  sub_1D4F4A658(&qword_1EC7EC048, type metadata accessor for MusicSummary, &protocol conformance descriptor for MusicSummary);
  sub_1D560DA98();
  (*(v3 + 8))(v7, v20);
  (*(v10 + 8))(v14, v8);
  sub_1D4F4A40C(&qword_1EC7EC050, MEMORY[0x1E6975D30]);
  v21 = v25;
  sub_1D5612418();
  return (*(v16 + 8))(v19, v21);
}

uint64_t sub_1D4F4A40C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EC028, &qword_1D561F9A0);
    sub_1D4F4A658(&qword_1EC7EC038, type metadata accessor for CloudMusicSummary, &protocol conformance descriptor for CloudMusicSummary);
    sub_1D4F4A658(&qword_1EC7EC040, type metadata accessor for CloudMusicSummary, &protocol conformance descriptor for CloudMusicSummary);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D4F4A510(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBFF8, &qword_1D561F980);
  sub_1D4F4A81C();
  sub_1D56155F8();

  MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
  return 0xD000000000000017;
}

uint64_t sub_1D4F4A658(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for MusicSummariesResponse(uint64_t a1)
{
  result = qword_1EC7EC060;
  if (!qword_1EC7EC060)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D4F4A71C(uint64_t a1)
{
  sub_1D4F4A788(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1D4F4A788(uint64_t a1)
{
  if (!qword_1EC7EC070)
  {
    type metadata accessor for MusicSummary(255);
    sub_1D4F4A658(&qword_1EC7EC000, type metadata accessor for MusicSummary, &protocol conformance descriptor for MusicSummary);
    v1 = sub_1D560DAB8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC7EC070);
    }
  }
}

unint64_t sub_1D4F4A81C()
{
  result = qword_1EC7EC078;
  if (!qword_1EC7EC078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBFF8, &qword_1D561F980);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC078);
  }

  return result;
}

uint64_t type metadata accessor for CuratorRelationshipProvider(uint64_t a1)
{
  result = qword_1EDD5DAE0;
  if (!qword_1EDD5DAE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D4F4A8F4(uint64_t a1)
{
  sub_1D4E6D600(319, &qword_1EDD5D778, &qword_1EC7EA560, &unk_1D561C4B0);
  if (v1 <= 0x3F)
  {
    sub_1D4E6D600(319, &qword_1EDD5D780, &qword_1EC7EA378, &qword_1D561D140);
    if (v2 <= 0x3F)
    {
      sub_1D4E6D600(319, &qword_1EDD5D768, &qword_1EC7EA550, &qword_1D561D670);
      if (v3 <= 0x3F)
      {
        sub_1D4E6D600(319, &qword_1EDD5D788, &qword_1EC7EA5B8, &qword_1D561C4E0);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

BOOL sub_1D4F4AA50(uint64_t a1, uint64_t a2)
{
  v136 = a1;
  v137 = a2;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
  OUTLINED_FUNCTION_4();
  v122 = v2;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_13_3();
  v120 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA778, &qword_1D5622E60);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13_3();
  v121 = v7;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB678, &qword_1D56783A0);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_3();
  v125 = v9;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA550, &qword_1D561D670);
  OUTLINED_FUNCTION_4();
  v128 = v10;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13_3();
  v123 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA780, &unk_1D561FB20);
  OUTLINED_FUNCTION_22(v13);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13_3();
  v127 = v15;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC088, &unk_1D561FC10);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13_3();
  v131 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  OUTLINED_FUNCTION_4();
  v134 = v19;
  v135 = v18;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13_3();
  v129 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_22(v22);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_13_3();
  v133 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB668, &qword_1D5637E60);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v120 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA560, &unk_1D561C4B0);
  OUTLINED_FUNCTION_4();
  v31 = v30;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v120 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA790, &unk_1D561FB10);
  OUTLINED_FUNCTION_22(v35);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v120 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC090, &qword_1D561FC20);
  OUTLINED_FUNCTION_22(v39);
  OUTLINED_FUNCTION_11();
  v41 = MEMORY[0x1EEE9AC00](v40);
  v43 = &v120 - v42;
  v44 = *(v41 + 56);
  sub_1D4F1C460(v136, &v120 - v42, &qword_1EC7EA790, &unk_1D561FB10);
  sub_1D4F1C460(v137, &v43[v44], &qword_1EC7EA790, &unk_1D561FB10);
  OUTLINED_FUNCTION_57(v43, 1, v29);
  if (v45)
  {
    OUTLINED_FUNCTION_57(&v43[v44], 1, v29);
    if (v45)
    {
      sub_1D4E50004(v43, &qword_1EC7EA790, &unk_1D561FB10);
      goto LABEL_11;
    }

LABEL_9:
    v46 = &qword_1EC7EC090;
    v47 = &qword_1D561FC20;
    v48 = v43;
LABEL_41:
    sub_1D4E50004(v48, v46, v47);
    return 0;
  }

  sub_1D4F1C460(v43, v38, &qword_1EC7EA790, &unk_1D561FB10);
  OUTLINED_FUNCTION_57(&v43[v44], 1, v29);
  if (v45)
  {
    (*(v31 + 8))(v38, v29);
    goto LABEL_9;
  }

  (*(v31 + 32))(v34, &v43[v44], v29);
  sub_1D4F4D044();
  v49 = sub_1D5614D18();
  v50 = *(v31 + 8);
  v50(v34, v29);
  v50(v38, v29);
  sub_1D4E50004(v43, &qword_1EC7EA790, &unk_1D561FB10);
  if ((v49 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  type metadata accessor for CuratorRelationshipProvider(0);
  v51 = *(v25 + 48);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F1C460(v52, v53, v54, v55);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F1C460(v56, v57, v58, v59);
  v60 = v135;
  OUTLINED_FUNCTION_4_18(v28, 1);
  if (v45)
  {
    OUTLINED_FUNCTION_1_31();
    if (v45)
    {
      sub_1D4E50004(v28, &qword_1EC7EA788, &unk_1D56223A0);
      goto LABEL_21;
    }

LABEL_19:
    v46 = &qword_1EC7EB668;
    v47 = &qword_1D5637E60;
LABEL_40:
    v48 = v28;
    goto LABEL_41;
  }

  v61 = v133;
  sub_1D4F1C460(v28, v133, &qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_1_31();
  if (v62)
  {
    v63 = OUTLINED_FUNCTION_200();
    v64(v63);
    goto LABEL_19;
  }

  v65 = v134;
  v66 = &v28[v51];
  v67 = v129;
  (*(v134 + 32))(v129, v66, v60);
  v68 = sub_1D4F217AC();
  v71 = OUTLINED_FUNCTION_10_16(v61, v69, v70, v68);
  v72 = *(v65 + 8);
  v72(v67, v60);
  v73 = OUTLINED_FUNCTION_200();
  (v72)(v73);
  sub_1D4E50004(v28, &qword_1EC7EA788, &unk_1D56223A0);
  if ((v71 & 1) == 0)
  {
    return 0;
  }

LABEL_21:
  v28 = v131;
  v74 = *(v130 + 48);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F1C460(v75, v76, v77, v78);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F1C460(v79, v80, v81, v82);
  v83 = v132;
  OUTLINED_FUNCTION_4_18(v28, 1);
  if (v45)
  {
    OUTLINED_FUNCTION_1_31();
    if (v45)
    {
      sub_1D4E50004(v28, &qword_1EC7EA780, &unk_1D561FB20);
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  v84 = v127;
  sub_1D4F1C460(v28, v127, &qword_1EC7EA780, &unk_1D561FB20);
  OUTLINED_FUNCTION_1_31();
  if (v85)
  {
    v86 = OUTLINED_FUNCTION_200();
    v87(v86);
LABEL_29:
    v46 = &qword_1EC7EC088;
    v47 = &unk_1D561FC10;
    goto LABEL_40;
  }

  v88 = v28;
  v89 = v128;
  OUTLINED_FUNCTION_11_18();
  v90 = v88 + v74;
  v91 = v123;
  v92(v123, v90, v83);
  v93 = sub_1D4F4CF90();
  v96 = OUTLINED_FUNCTION_10_16(v84, v94, v95, v93);
  v97 = *(v89 + 8);
  v97(v91, v83);
  v98 = OUTLINED_FUNCTION_200();
  (v97)(v98);
  sub_1D4E50004(v88, &qword_1EC7EA780, &unk_1D561FB20);
  if ((v96 & 1) == 0)
  {
    return 0;
  }

LABEL_31:
  v28 = v125;
  v99 = *(v124 + 48);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F1C460(v100, v101, v102, v103);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F1C460(v104, v105, v106, v107);
  v108 = v126;
  OUTLINED_FUNCTION_4_18(v28, 1);
  if (v45)
  {
    OUTLINED_FUNCTION_1_31();
    if (v45)
    {
      sub_1D4E50004(v28, &qword_1EC7EA778, &qword_1D5622E60);
      return 1;
    }

    goto LABEL_39;
  }

  v109 = v121;
  sub_1D4F1C460(v28, v121, &qword_1EC7EA778, &qword_1D5622E60);
  OUTLINED_FUNCTION_1_31();
  if (v110)
  {
    (*(v122 + 8))(v109, v108);
LABEL_39:
    v46 = &qword_1EC7EB678;
    v47 = &qword_1D56783A0;
    goto LABEL_40;
  }

  v112 = v122;
  v113 = &v28[v99];
  v114 = v120;
  (*(v122 + 32))(v120, v113, v108);
  v115 = sub_1D4F21860();
  v118 = OUTLINED_FUNCTION_10_16(v109, v116, v117, v115);
  v119 = *(v112 + 8);
  v119(v114, v108);
  v119(v109, v108);
  sub_1D4E50004(v28, &qword_1EC7EA778, &qword_1D5622E60);
  return (v118 & 1) != 0;
}

uint64_t sub_1D4F4B3EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73726F7461727563 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7365726E6567 && a2 == 0xE600000000000000;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6F68536F69646172 && a2 == 0xEA00000000007377;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x72506C6169636F73 && a2 == 0xEE0073656C69666FLL)
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

uint64_t sub_1D4F4B558(char a1)
{
  result = 0x73726F7461727563;
  switch(a1)
  {
    case 1:
      result = 0x7365726E6567;
      break;
    case 2:
      result = 0x6F68536F69646172;
      break;
    case 3:
      result = 0x72506C6169636F73;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D4F4B5E8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC108, &qword_1D561FC30);
  OUTLINED_FUNCTION_4();
  v5 = v4;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v30[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D4F4D260();
  sub_1D56163D8();
  v30[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA560, &unk_1D561C4B0);
  sub_1D4F4D644();
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_17_12(v9, v10, v11, v12, v13);
  if (!v1)
  {
    type metadata accessor for CuratorRelationshipProvider(0);
    v30[14] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
    sub_1D4F4D6F8();
    OUTLINED_FUNCTION_8_1();
    OUTLINED_FUNCTION_17_12(v14, v15, v16, v17, v18);
    v30[13] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA550, &qword_1D561D670);
    sub_1D4F4D7AC();
    OUTLINED_FUNCTION_8_1();
    OUTLINED_FUNCTION_17_12(v19, v20, v21, v22, v23);
    v30[12] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
    sub_1D4F4D860();
    OUTLINED_FUNCTION_8_1();
    OUTLINED_FUNCTION_17_12(v24, v25, v26, v27, v28);
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_1D4F4B804(uint64_t a1)
{
  v59 = a1;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
  OUTLINED_FUNCTION_4();
  v58 = v2;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_13_3();
  v57 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA778, &qword_1D5622E60);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13_3();
  v62 = v7;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA550, &qword_1D561D670);
  OUTLINED_FUNCTION_4();
  v56 = v8;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_3();
  v55 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA780, &unk_1D561FB20);
  OUTLINED_FUNCTION_22(v11);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13_3();
  v60 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  OUTLINED_FUNCTION_4();
  v54 = v15;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13_3();
  v53 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_22(v18);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v52 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA560, &unk_1D561C4B0);
  OUTLINED_FUNCTION_4();
  v24 = v23;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v52 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA790, &unk_1D561FB10);
  OUTLINED_FUNCTION_22(v28);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v52 - v30;
  v32 = v1;
  sub_1D4F1C460(v1, &v52 - v30, &qword_1EC7EA790, &unk_1D561FB10);
  OUTLINED_FUNCTION_57(v31, 1, v22);
  if (v33)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v24 + 32))(v27, v31, v22);
    sub_1D56162F8();
    sub_1D4F4D0F8();
    sub_1D5614CB8();
    (*(v24 + 8))(v27, v22);
  }

  v34 = type metadata accessor for CuratorRelationshipProvider(0);
  sub_1D4F1C460(v1 + v34[5], v21, &qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_57(v21, 1, v14);
  if (v33)
  {
    sub_1D56162F8();
  }

  else
  {
    v35 = v53;
    v36 = v54;
    OUTLINED_FUNCTION_11_18();
    v37(v35, v21, v14);
    sub_1D56162F8();
    sub_1D4F21B30();
    sub_1D5614CB8();
    (*(v36 + 8))(v35, v14);
  }

  v38 = v63;
  v39 = v60;
  sub_1D4F1C460(v32 + v34[6], v60, &qword_1EC7EA780, &unk_1D561FB20);
  v40 = OUTLINED_FUNCTION_35_1();
  v41 = v61;
  OUTLINED_FUNCTION_4_18(v40, v42);
  if (v33)
  {
    sub_1D56162F8();
  }

  else
  {
    v44 = v55;
    v43 = v56;
    OUTLINED_FUNCTION_11_18();
    v45(v44, v39, v41);
    sub_1D56162F8();
    sub_1D4F4D1AC();
    sub_1D5614CB8();
    (*(v43 + 8))(v44, v41);
  }

  v46 = v62;
  sub_1D4F1C460(v32 + v34[7], v62, &qword_1EC7EA778, &qword_1D5622E60);
  v47 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v47, v48, v38);
  if (v33)
  {
    return sub_1D56162F8();
  }

  v50 = v57;
  v49 = v58;
  (*(v58 + 32))(v57, v46, v38);
  sub_1D56162F8();
  sub_1D4F219C8();
  sub_1D5614CB8();
  return (*(v49 + 8))(v50, v38);
}

uint64_t sub_1D4F4BDBC()
{
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
  OUTLINED_FUNCTION_4();
  v55 = v1;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_13_3();
  v54 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA778, &qword_1D5622E60);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_13_3();
  v58 = v6;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA550, &qword_1D561D670);
  OUTLINED_FUNCTION_4();
  v53 = v7;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_3();
  v52 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA780, &unk_1D561FB20);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13_3();
  v56 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  OUTLINED_FUNCTION_4();
  v51 = v14;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13_3();
  v50 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_22(v17);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v50 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA560, &unk_1D561C4B0);
  OUTLINED_FUNCTION_4();
  v23 = v22;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v50 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA790, &unk_1D561FB10);
  OUTLINED_FUNCTION_22(v27);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v50 - v29;
  sub_1D56162D8();
  v31 = v0;
  sub_1D4F1C460(v0, v30, &qword_1EC7EA790, &unk_1D561FB10);
  OUTLINED_FUNCTION_57(v30, 1, v21);
  if (v32)
  {
    OUTLINED_FUNCTION_18_17();
  }

  else
  {
    OUTLINED_FUNCTION_11_18();
    v33(v26, v30, v21);
    OUTLINED_FUNCTION_19_14();
    sub_1D4F4D0F8();
    OUTLINED_FUNCTION_99_0();
    sub_1D5614CB8();
    (*(v23 + 8))(v26, v21);
  }

  v34 = type metadata accessor for CuratorRelationshipProvider(0);
  sub_1D4F1C460(v0 + v34[5], v20, &qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_57(v20, 1, v13);
  if (v32)
  {
    OUTLINED_FUNCTION_18_17();
  }

  else
  {
    v36 = v50;
    v35 = v51;
    (*(v51 + 32))(v50, v20, v13);
    OUTLINED_FUNCTION_19_14();
    sub_1D4F21B30();
    OUTLINED_FUNCTION_99_0();
    sub_1D5614CB8();
    (*(v35 + 8))(v36, v13);
  }

  v37 = v56;
  sub_1D4F1C460(v31 + v34[6], v56, &qword_1EC7EA780, &unk_1D561FB20);
  v38 = OUTLINED_FUNCTION_35_1();
  v39 = v57;
  OUTLINED_FUNCTION_57(v38, v40, v57);
  if (v32)
  {
    OUTLINED_FUNCTION_18_17();
  }

  else
  {
    v42 = v52;
    v41 = v53;
    (*(v53 + 32))(v52, v37, v39);
    OUTLINED_FUNCTION_19_14();
    sub_1D4F4D1AC();
    OUTLINED_FUNCTION_99_0();
    sub_1D5614CB8();
    (*(v41 + 8))(v42, v39);
  }

  v43 = v58;
  sub_1D4F1C460(v31 + v34[7], v58, &qword_1EC7EA778, &qword_1D5622E60);
  v44 = OUTLINED_FUNCTION_35_1();
  v45 = v59;
  OUTLINED_FUNCTION_57(v44, v46, v59);
  if (v32)
  {
    OUTLINED_FUNCTION_18_17();
  }

  else
  {
    v48 = v54;
    v47 = v55;
    (*(v55 + 32))(v54, v43, v45);
    OUTLINED_FUNCTION_19_14();
    sub_1D4F219C8();
    OUTLINED_FUNCTION_99_0();
    sub_1D5614CB8();
    (*(v47 + 8))(v48, v45);
  }

  return sub_1D5616328();
}

uint64_t sub_1D4F4C330@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA778, &qword_1D5622E60);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_13_3();
  v58 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA780, &unk_1D561FB20);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_3();
  v64 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_22(v9);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_3();
  v63 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA790, &unk_1D561FB10);
  OUTLINED_FUNCTION_22(v12);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13_3();
  v65 = v14;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC0D8, &qword_1D561FC28);
  OUTLINED_FUNCTION_4();
  v61 = v15;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  v18 = v55 - v17;
  v19 = type metadata accessor for CuratorRelationshipProvider(0);
  v20 = (v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA560, &unk_1D561C4B0);
  OUTLINED_FUNCTION_33();
  v60 = v23;
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v23);
  v27 = v20[7];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  v59 = v27;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v28);
  v32 = v20[8];
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA550, &qword_1D561D670);
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v33);
  v37 = v20[9];
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
  v67 = v22;
  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v38);
  v42 = a1;
  v43 = a1[3];
  v69 = v42;
  __swift_project_boxed_opaque_existential_1(v42, v43);
  sub_1D4F4D260();
  v62 = v18;
  v44 = v68;
  sub_1D5616398();
  if (v44)
  {
    v51 = v67;
  }

  else
  {
    v68 = v33;
    v45 = v59;
    v55[1] = v38;
    v56 = v32;
    v55[0] = v37;
    v46 = v63;
    v47 = v64;
    v48 = v61;
    v73 = 0;
    sub_1D4F4D310();
    v49 = v62;
    sub_1D5615F78();
    v51 = v67;
    sub_1D4F1C350(v65, v67, &qword_1EC7EA790, &unk_1D561FB10);
    v72 = 1;
    sub_1D4F4D3C4();
    sub_1D5615F78();
    v52 = v48;
    sub_1D4F1C350(v46, v51 + v45, &qword_1EC7EA788, &unk_1D56223A0);
    v71 = 2;
    sub_1D4F4D478();
    sub_1D5615F78();
    sub_1D4F1C350(v47, v51 + v56, &qword_1EC7EA780, &unk_1D561FB20);
    v70 = 3;
    sub_1D4F4D52C();
    v53 = v58;
    v54 = v66;
    sub_1D5615F78();
    (*(v52 + 8))(v49, v54);
    sub_1D4F1C350(v53, v51 + v55[0], &qword_1EC7EA778, &qword_1D5622E60);
    sub_1D4F4D5E0(v51, v57);
  }

  __swift_destroy_boxed_opaque_existential_1(v69);
  return sub_1D4F4D2B4(v51);
}

uint64_t sub_1D4F4C838@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D4F4B3EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D4F4C860@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D4F4B550();
  *a1 = result;
  return result;
}

uint64_t sub_1D4F4C888(uint64_t a1)
{
  v2 = sub_1D4F4D260();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4F4C8C4(uint64_t a1)
{
  v2 = sub_1D4F4D260();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D4F4C93C(uint64_t a1, uint64_t a2)
{
  v45 = a2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
  v41 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v40 = &v35 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA778, &qword_1D5622E60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v44 = &v35 - v5;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA550, &qword_1D561D670);
  v39 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v38 = &v35 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA780, &unk_1D561FB20);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v42 = &v35 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  v37 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v36 = &v35 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v35 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA560, &unk_1D561C4B0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v35 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA790, &unk_1D561FB10);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v35 - v19;
  sub_1D56162D8();
  v21 = v2;
  sub_1D4F1C460(v2, v20, &qword_1EC7EA790, &unk_1D561FB10);
  if (__swift_getEnumTagSinglePayload(v20, 1, v14) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v15 + 32))(v17, v20, v14);
    sub_1D56162F8();
    sub_1D4F4D0F8();
    sub_1D5614CB8();
    (*(v15 + 8))(v17, v14);
  }

  v22 = v45;
  sub_1D4F1C460(v2 + *(v45 + 20), v13, &qword_1EC7EA788, &unk_1D56223A0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v9);
  v24 = v46;
  if (EnumTagSinglePayload == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    v25 = v36;
    v26 = v37;
    (*(v37 + 32))(v36, v13, v9);
    sub_1D56162F8();
    sub_1D4F21B30();
    sub_1D5614CB8();
    (*(v26 + 8))(v25, v9);
  }

  v27 = v42;
  sub_1D4F1C460(v21 + *(v22 + 24), v42, &qword_1EC7EA780, &unk_1D561FB20);
  v28 = v43;
  if (__swift_getEnumTagSinglePayload(v27, 1, v43) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    v30 = v38;
    v29 = v39;
    (*(v39 + 32))(v38, v27, v28);
    sub_1D56162F8();
    sub_1D4F4D1AC();
    sub_1D5614CB8();
    (*(v29 + 8))(v30, v28);
  }

  v31 = v44;
  sub_1D4F1C460(v21 + *(v22 + 28), v44, &qword_1EC7EA778, &qword_1D5622E60);
  if (__swift_getEnumTagSinglePayload(v31, 1, v24) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    v33 = v40;
    v32 = v41;
    (*(v41 + 32))(v40, v31, v24);
    sub_1D56162F8();
    sub_1D4F219C8();
    sub_1D5614CB8();
    (*(v32 + 8))(v33, v24);
  }

  return sub_1D5616328();
}

unint64_t sub_1D4F4CF90()
{
  result = qword_1EC7EC098;
  if (!qword_1EC7EC098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA550, &qword_1D561D670);
    sub_1D4F4D914(&qword_1EC7EC0A0, MEMORY[0x1E6977550], MEMORY[0x1E6977568]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC098);
  }

  return result;
}

unint64_t sub_1D4F4D044()
{
  result = qword_1EC7EC0A8;
  if (!qword_1EC7EC0A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA560, &unk_1D561C4B0);
    sub_1D4F4D914(&qword_1EC7EC0B0, MEMORY[0x1E6977048], MEMORY[0x1E6977060]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC0A8);
  }

  return result;
}

unint64_t sub_1D4F4D0F8()
{
  result = qword_1EC7EC0B8;
  if (!qword_1EC7EC0B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA560, &unk_1D561C4B0);
    sub_1D4F4D914(&qword_1EC7EC0C0, MEMORY[0x1E6977048], MEMORY[0x1E6977058]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC0B8);
  }

  return result;
}

unint64_t sub_1D4F4D1AC()
{
  result = qword_1EC7EC0C8;
  if (!qword_1EC7EC0C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA550, &qword_1D561D670);
    sub_1D4F4D914(&qword_1EC7EC0D0, MEMORY[0x1E6977550], MEMORY[0x1E6977560]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC0C8);
  }

  return result;
}

unint64_t sub_1D4F4D260()
{
  result = qword_1EC7EC0E0;
  if (!qword_1EC7EC0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC0E0);
  }

  return result;
}

uint64_t sub_1D4F4D2B4(uint64_t a1)
{
  v2 = type metadata accessor for CuratorRelationshipProvider(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D4F4D310()
{
  result = qword_1EC7EC0E8;
  if (!qword_1EC7EC0E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA560, &unk_1D561C4B0);
    sub_1D4F4D914(&qword_1EDD52DE0, MEMORY[0x1E6977048], MEMORY[0x1E6977068]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC0E8);
  }

  return result;
}

unint64_t sub_1D4F4D3C4()
{
  result = qword_1EC7EC0F0;
  if (!qword_1EC7EC0F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA378, &qword_1D561D140);
    sub_1D4F4D914(&qword_1EDD5D240, MEMORY[0x1E6976DC8], MEMORY[0x1E6976DE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC0F0);
  }

  return result;
}

unint64_t sub_1D4F4D478()
{
  result = qword_1EC7EC0F8;
  if (!qword_1EC7EC0F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA550, &qword_1D561D670);
    sub_1D4F4D914(&qword_1EDD52A30, MEMORY[0x1E6977550], MEMORY[0x1E6977570]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC0F8);
  }

  return result;
}

unint64_t sub_1D4F4D52C()
{
  result = qword_1EC7EC100;
  if (!qword_1EC7EC100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
    sub_1D4F4D914(&qword_1EDD5DC58, type metadata accessor for SocialProfile, &protocol conformance descriptor for SocialProfile);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC100);
  }

  return result;
}

uint64_t sub_1D4F4D5E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CuratorRelationshipProvider(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D4F4D644()
{
  result = qword_1EC7EC110;
  if (!qword_1EC7EC110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA560, &unk_1D561C4B0);
    sub_1D4F4D914(&qword_1EC7EC118, MEMORY[0x1E6977048], MEMORY[0x1E6977050]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC110);
  }

  return result;
}

unint64_t sub_1D4F4D6F8()
{
  result = qword_1EC7EC120;
  if (!qword_1EC7EC120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA378, &qword_1D561D140);
    sub_1D4F4D914(&qword_1EC7EC128, MEMORY[0x1E6976DC8], MEMORY[0x1E6976DD0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC120);
  }

  return result;
}

unint64_t sub_1D4F4D7AC()
{
  result = qword_1EC7EC130;
  if (!qword_1EC7EC130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA550, &qword_1D561D670);
    sub_1D4F4D914(&qword_1EC7EC138, MEMORY[0x1E6977550], MEMORY[0x1E6977558]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC130);
  }

  return result;
}

unint64_t sub_1D4F4D860()
{
  result = qword_1EC7EC140;
  if (!qword_1EC7EC140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
    sub_1D4F4D914(&qword_1EC7EC148, type metadata accessor for SocialProfile, &protocol conformance descriptor for SocialProfile);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC140);
  }

  return result;
}

uint64_t sub_1D4F4D914(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

_BYTE *storeEnumTagSinglePayload for CuratorRelationshipProvider.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D4F4DA3C()
{
  result = qword_1EC7EC150;
  if (!qword_1EC7EC150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC150);
  }

  return result;
}

unint64_t sub_1D4F4DA94()
{
  result = qword_1EC7EC158;
  if (!qword_1EC7EC158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC158);
  }

  return result;
}

unint64_t sub_1D4F4DAEC()
{
  result = qword_1EC7EC160;
  if (!qword_1EC7EC160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC160);
  }

  return result;
}

uint64_t MusicPlayer.PreviewCapabilityStatus.UnpreviewableReason.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

BOOL static MusicPlayer.PreviewCapabilityStatus.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 5)
  {
    return v3 == 5;
  }

  if (v3 == 5)
  {
    return 0;
  }

  return v2 == v3;
}

uint64_t MusicPlayer.PreviewCapabilityStatus.hash(into:)()
{
  v1 = *v0;
  if (v1 == 5)
  {
    v1 = 0;
  }

  else
  {
    MEMORY[0x1DA6EC0D0](1);
  }

  return MEMORY[0x1DA6EC0D0](v1);
}

uint64_t MusicPlayer.PreviewCapabilityStatus.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  v2 = 0;
  if (v1 != 5)
  {
    MEMORY[0x1DA6EC0D0](1);
    v2 = v1;
  }

  MEMORY[0x1DA6EC0D0](v2);
  return sub_1D5616328();
}

uint64_t sub_1D4F4DCE0(uint64_t a1)
{
  v2 = *v1;
  sub_1D56162D8();
  if (v2 == 5)
  {
    v2 = 0;
  }

  else
  {
    MEMORY[0x1DA6EC0D0](1);
  }

  MEMORY[0x1DA6EC0D0](v2);
  return sub_1D5616328();
}

unint64_t sub_1D4F4DD44()
{
  result = qword_1EC7EC168;
  if (!qword_1EC7EC168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EC170, &qword_1D561FD50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC168);
  }

  return result;
}

unint64_t sub_1D4F4DDAC()
{
  result = qword_1EC7EC178;
  if (!qword_1EC7EC178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC178);
  }

  return result;
}

unint64_t sub_1D4F4DE04()
{
  result = qword_1EC7EC180;
  if (!qword_1EC7EC180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC180);
  }

  return result;
}

unsigned __int8 *_s23PreviewCapabilityStatusOwet(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
LABEL_18:
    v6 = *result;
    v7 = v6 >= 5;
    v8 = v6 - 5;
    if (!v7)
    {
      v8 = -1;
    }

    if (v8 + 1 >= 2)
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 5;
    if (a2 + 5 >= 0xFFFF00)
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
        result = ((*result | (v5 << 8)) - 5);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *_s23PreviewCapabilityStatusOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 5;
  if (a3 + 5 >= 0xFFFF00)
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

  if (a3 >= 0xFB)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFA)
  {
    v7 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1D4F4DFD8(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 5)
  {
    return v1 - 4;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1D4F4DFEC(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 4;
  }

  return result;
}

uint64_t _s23PreviewCapabilityStatusO19UnpreviewableReasonOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s23PreviewCapabilityStatusO19UnpreviewableReasonOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t type metadata accessor for AudioAnalysisPropertyProvider(uint64_t a1)
{
  result = qword_1EC7EC188;
  if (!qword_1EC7EC188)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D4F4E1E4(uint64_t a1)
{
  sub_1D4E6D600(319, &qword_1EC7EC198, &qword_1EC7EC1A0, &qword_1D561FEF0);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_1D4E518A0(319, &qword_1EC7EC1A8, &type metadata for AudioAnalysis.EventTimes);
    if (v5 > 0x3F)
    {
      return v4;
    }

    sub_1D4E518A0(319, &qword_1EC7EC1B0, &type metadata for AudioAnalysis.BeatsPerMinute);
    if (v6 > 0x3F)
    {
      return v4;
    }

    sub_1D4E518A0(319, &qword_1EC7EC1B8, &type metadata for AudioAnalysis.Fades);
    if (v7 > 0x3F)
    {
      return v4;
    }

    sub_1D4E6D600(319, &qword_1EC7EC1C0, &qword_1EC7EC1C8, &qword_1D561FEF8);
    if (v8 > 0x3F)
    {
      return v4;
    }

    sub_1D4E6D600(319, &qword_1EC7EC1D0, &qword_1EC7EC1D8, &qword_1D561FF00);
    if (v9 > 0x3F)
    {
      return v4;
    }

    else
    {
      sub_1D4E518A0(319, &qword_1EC7EC1E0, &type metadata for AudioAnalysis.LoudnessCurve);
      v2 = v10;
      if (v11 <= 0x3F)
      {
        sub_1D4E6D600(319, &qword_1EC7EC1E8, &qword_1EC7EC1F0, &qword_1D561FF08);
        v2 = v12;
        if (v13 <= 0x3F)
        {
          sub_1D4E6D600(319, &qword_1EC7EC1F8, &qword_1EC7EC200, &qword_1D561FF10);
          v2 = v14;
          if (v15 <= 0x3F)
          {
            sub_1D4F4E49C(319);
            v2 = v16;
            if (v17 <= 0x3F)
            {
              v2 = sub_1D560D838();
              if (v18 <= 0x3F)
              {
                v2 = sub_1D5610088();
                if (v19 <= 0x3F)
                {
                  sub_1D4E518A0(319, &qword_1EDD5F070, MEMORY[0x1E69E6158]);
                  v2 = v20;
                  if (v21 <= 0x3F)
                  {
                    sub_1D4E5CF94(319);
                    v2 = v22;
                    if (v23 <= 0x3F)
                    {
                      swift_cvw_initStructMetadataWithLayoutString();
                      return 0;
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

  return v2;
}

void sub_1D4F4E49C(uint64_t a1)
{
  if (!qword_1EDD5D050)
  {
    sub_1D560CDE8();
    v1 = sub_1D56152D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDD5D050);
    }
  }
}

uint64_t sub_1D4F4E53C@<X0>(uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC240, &unk_1D5620070);
  v6 = swift_dynamicCastClass();
  if (!v6)
  {
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD00000000000002DLL, 0x80000001D567F5C0);
    sub_1D560CDE8();
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
    goto LABEL_84;
  }

  v7 = v6;
  v8 = qword_1EC7E9750;

  if (v8 != -1)
  {
    OUTLINED_FUNCTION_15_18(&qword_1EC7E9750);
  }

  v248 = qword_1EC87C6F0;
  sub_1D4EC5794(&qword_1EC7EC248, &qword_1EC7EC240, &unk_1D5620070);
  if (sub_1D5614D18())
  {
    if (*(v3 + 33))
    {
LABEL_6:

      v10 = 0;
      v11 = 0;
LABEL_14:
      *a2 = v11;
LABEL_15:
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = v10;
      return result;
    }

    v24 = *(v3 + 32);
    v25 = v3[3];
    v26 = *(v3 + 4);
    v27 = v3[1];
    v28 = *v3;
LABEL_13:
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC1A0, &qword_1D561FEF0);
    v11 = swift_allocObject();

    *(v11 + 16) = v28;
    *(v11 + 24) = v27;
    *(v11 + 32) = v26 & 1;
    *(v11 + 40) = v25;
    *(v11 + 48) = v24 & 1;
    goto LABEL_14;
  }

  v12 = qword_1EC7E9758;

  if (v12 != -1)
  {
    v13 = OUTLINED_FUNCTION_13_21(&qword_1EC7E9758);
  }

  OUTLINED_FUNCTION_0_26(v13, v14, v15, v16, v17, v18, v19, v20, v151, v163, v175, v188, v200, v213, v225, v7, v248);
  OUTLINED_FUNCTION_21_15();
  if (v12)
  {
    v21 = v3[5];
    if (v21)
    {
      v22 = v3[6];

      v23 = &type metadata for AudioAnalysis.EventTimes;
    }

    else
    {
      v23 = 0;
      v22 = 0;
    }

    *a2 = v21;
    *(a2 + 8) = v22;
    *(a2 + 16) = 0;
    *(a2 + 24) = v23;
    return result;
  }

  v29 = qword_1EC7E9760;

  if (v29 != -1)
  {
    v30 = OUTLINED_FUNCTION_12_22(&qword_1EC7E9760);
  }

  OUTLINED_FUNCTION_0_26(v30, v31, v32, v33, v34, v35, v36, v37, v152, v164, v176, v189, v201, v214, v226, v237, v249);
  OUTLINED_FUNCTION_21_15();
  if (v29)
  {
    if ((*(v3 + 105) & 1) == 0)
    {
      v49 = *(v3 + 104);
      v50 = v3[12];
      v51 = *(v3 + 22);
      v52 = v3[10];
      v53 = *(v3 + 18);
      v56 = v3 + 7;
      v54 = v3[7];
      v55 = v56[1];
      v39 = swift_allocObject();

      *(v39 + 16) = v54;
      *(v39 + 24) = v55;
      *(v39 + 32) = v53 & 1;
      *(v39 + 40) = v52;
      *(v39 + 48) = v51 & 1;
      *(v39 + 56) = v50;
      *(v39 + 64) = v49 & 1;
      v38 = &type metadata for AudioAnalysis.BeatsPerMinute;
      goto LABEL_29;
    }

LABEL_20:

    v38 = 0;
    v39 = 0;
LABEL_29:
    *a2 = v39;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = v38;
    return result;
  }

  v40 = qword_1EC7E9768;

  if (v40 != -1)
  {
    v41 = OUTLINED_FUNCTION_11_19(&qword_1EC7E9768);
  }

  OUTLINED_FUNCTION_0_26(v41, v42, v43, v44, v45, v46, v47, v48, v153, v165, v177, v190, v202, v215, v227, v238, v250);
  OUTLINED_FUNCTION_21_15();
  if (v40)
  {
    if (*(v3 + 145))
    {
      goto LABEL_6;
    }

    v24 = *(v3 + 144);
    v25 = v3[17];
    v26 = *(v3 + 32);
    v27 = v3[15];
    v28 = v3[14];
    goto LABEL_13;
  }

  v57 = qword_1EC7E9770;

  if (v57 != -1)
  {
    v58 = OUTLINED_FUNCTION_10_17(&qword_1EC7E9770);
  }

  OUTLINED_FUNCTION_0_26(v58, v59, v60, v61, v62, v63, v64, v65, v154, v166, v178, v191, v203, v216, v228, v239, v251);
  OUTLINED_FUNCTION_21_15();
  if (v57)
  {
    if (*(v3 + 185))
    {
      goto LABEL_6;
    }

    v24 = *(v3 + 184);
    v25 = v3[22];
    v26 = *(v3 + 42);
    v27 = v3[20];
    v28 = v3[19];
    goto LABEL_13;
  }

  v66 = qword_1EC7E9798;

  if (v66 != -1)
  {
    v67 = OUTLINED_FUNCTION_2_11(&qword_1EC7E9798);
  }

  OUTLINED_FUNCTION_0_26(v67, v68, v69, v70, v71, v72, v73, v74, v155, v167, v179, v192, v204, v217, v229, v240, v252);
  OUTLINED_FUNCTION_21_15();
  if (v66)
  {
    if ((v3[28] & 1) == 0)
    {
      v39 = swift_allocObject();
      v181 = *(v3 + 13);
      v206 = *(v3 + 12);

      *(v39 + 16) = v206;
      *(v39 + 32) = v181;
      v38 = &type metadata for AudioAnalysis.Fades;
      goto LABEL_29;
    }

    goto LABEL_20;
  }

  v75 = qword_1EC7E9778;

  if (v75 != -1)
  {
    v76 = OUTLINED_FUNCTION_9_19(&qword_1EC7E9778);
  }

  OUTLINED_FUNCTION_0_26(v76, v77, v78, v79, v80, v81, v82, v83, v156, v168, v180, v193, v205, v218, v230, v241, v253);
  OUTLINED_FUNCTION_21_15();
  if (v75)
  {
    if (*(v3 + 313))
    {

      v10 = 0;
      v84 = 0;
    }

    else
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC1C8, &qword_1D561FEF8);
      v84 = swift_allocObject();

      result = memcpy((v84 + 16), v3 + 29, 0x51uLL);
    }

    *a2 = v84;
    goto LABEL_15;
  }

  v85 = qword_1EC7E9780;

  if (v85 != -1)
  {
    v86 = OUTLINED_FUNCTION_8_22(&qword_1EC7E9780);
  }

  OUTLINED_FUNCTION_0_26(v86, v87, v88, v89, v90, v91, v92, v93, v157, v169, v182, v194, v207, v219, v231, v242, v254);
  OUTLINED_FUNCTION_21_15();
  if (v85)
  {
    if (*(v3 + 353))
    {
      goto LABEL_6;
    }

    v24 = *(v3 + 352);
    v25 = v3[43];
    v26 = *(v3 + 84);
    v27 = v3[41];
    v28 = v3[40];
    goto LABEL_13;
  }

  v94 = qword_1EC7E9788;

  if (v94 != -1)
  {
    v95 = OUTLINED_FUNCTION_7_23(&qword_1EC7E9788);
  }

  OUTLINED_FUNCTION_0_26(v95, v96, v97, v98, v99, v100, v101, v102, v158, v170, v183, v195, v208, v220, v232, v243, v255);
  OUTLINED_FUNCTION_21_15();
  if (v94)
  {
    v103 = *(v3 + 354);
    v11 = v103 | (*(v3 + 179) << 32);
    if ((v103 & 0xFF00) != 0x400)
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC1D8, &qword_1D561FF00);

      goto LABEL_14;
    }

    goto LABEL_6;
  }

  v104 = qword_1EC7E9790;

  if (v104 != -1)
  {
    v105 = OUTLINED_FUNCTION_6_22(&qword_1EC7E9790);
  }

  OUTLINED_FUNCTION_0_26(v105, v106, v107, v108, v109, v110, v111, v112, v159, v171, v184, v196, v209, v221, v233, v244, v256);
  OUTLINED_FUNCTION_21_15();
  if (v104)
  {
    if (*(v3 + 393))
    {

      v11 = 0;
      v10 = 0;
      goto LABEL_14;
    }

    v24 = *(v3 + 392);
    v25 = v3[48];
    v26 = *(v3 + 94);
    v27 = v3[46];
    v28 = v3[45];
    goto LABEL_13;
  }

  v113 = qword_1EC7E97A0;

  if (v113 != -1)
  {
    v114 = OUTLINED_FUNCTION_5_16(&qword_1EC7E97A0);
  }

  OUTLINED_FUNCTION_0_26(v114, v115, v116, v117, v118, v119, v120, v121, v160, v172, v185, v197, v210, v222, v234, v245, v257);
  OUTLINED_FUNCTION_21_15();
  if ((v113 & 1) == 0)
  {
    v127 = qword_1EC7E97B0;

    if (v127 != -1)
    {
      v128 = OUTLINED_FUNCTION_4_19(&qword_1EC7E97B0);
    }

    OUTLINED_FUNCTION_0_26(v128, v129, v130, v131, v132, v133, v134, v135, v161, v173, v186, v198, v211, v223, v235, v246, v258);
    OUTLINED_FUNCTION_21_15();
    if (v127)
    {
      v136 = v3[53];
      if (v136)
      {
        v137 = &qword_1EC7EC1F0;
        v138 = &qword_1D561FF08;
LABEL_78:
        v148 = __swift_instantiateConcreteTypeFromMangledNameV2(v137, v138);

LABEL_82:

        *a2 = v136;
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        *(a2 + 24) = v148;
        return result;
      }
    }

    else
    {
      v139 = qword_1EC7E97A8;

      if (v139 != -1)
      {
        v140 = OUTLINED_FUNCTION_3_18(&qword_1EC7E97A8);
      }

      OUTLINED_FUNCTION_0_26(v140, v141, v142, v143, v144, v145, v146, v147, v162, v174, v187, v199, v212, v224, v236, v247, v259);
      OUTLINED_FUNCTION_26_10();
      if ((v5 & 1) == 0)
      {
        while (1)
        {
          sub_1D5615B68();
          MEMORY[0x1DA6EAC70](0xD000000000000015, 0x80000001D567E3A0);
          sub_1D560CDE8();
          sub_1D5615D48();
          OUTLINED_FUNCTION_33_0();
LABEL_84:
          OUTLINED_FUNCTION_17_13("Fatal error", v149, v150, 0, 0xE000000000000000, "MusicKitInternal/AudioAnalysisPropertyProvider.swift");
          __break(1u);
        }
      }

      v136 = v3[54];
      if (v136)
      {
        v137 = &qword_1EC7EC200;
        v138 = &qword_1D561FF10;
        goto LABEL_78;
      }
    }

    v148 = 0;
    goto LABEL_82;
  }

  v122 = v3[52];
  if (v122)
  {
    v123 = *(v3 + 102);
    v124 = v3[50];

    v125 = &type metadata for AudioAnalysis.LoudnessCurve;
    v126 = v123 & 1;
  }

  else
  {

    v126 = 0;
    v124 = 0;
    v125 = 0;
  }

  *a2 = v124;
  *(a2 + 8) = v126;
  *(a2 + 15) = 0;
  *(a2 + 13) = 0;
  *(a2 + 9) = 0;
  *(a2 + 16) = v122;
  *(a2 + 24) = v125;
  return result;
}

void sub_1D4F4EDC4(uint64_t a1, uint64_t a2)
{
  sub_1D5615B68();
  MEMORY[0x1DA6EAC70](0xD00000000000001BLL, 0x80000001D567EB20);
  sub_1D560CDE8();
  sub_1D5615D48();
  OUTLINED_FUNCTION_33_0();
  OUTLINED_FUNCTION_17_13("Fatal error", v2, v3, 0, 0xE000000000000000, "MusicKitInternal/AudioAnalysisPropertyProvider.swift");
  __break(1u);
}

uint64_t sub_1D4F4EE74(void *a1, uint64_t a2)
{
  v4 = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC228, &qword_1D5620058);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v35 - v8;
  v10 = type metadata accessor for AudioAnalysisPropertyProvider(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC230, &unk_1D5620060);
  v13 = swift_dynamicCastClass();
  if (!v13)
  {
    OUTLINED_FUNCTION_30();
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000033, 0x80000001D567F510);
    v38 = a1;
    sub_1D560D0C8();
    sub_1D5616138();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_28();
    v34 = 78;
    goto LABEL_31;
  }

  v3 = v13;
  sub_1D4E628D4(a2, &v37);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9F88, &unk_1D561B980);
  if (!swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
    sub_1D4F507B0(v9);
    OUTLINED_FUNCTION_30();
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000036, 0x80000001D567F550);
    sub_1D5615D48();
    OUTLINED_FUNCTION_33_0();
    OUTLINED_FUNCTION_28();
    v34 = 81;
    goto LABEL_31;
  }

  __swift_storeEnumTagSinglePayload(v9, 0, 1, v10);
  sub_1D4F50818(v9, v12);
  v14 = qword_1EC7E9798;

  if (v14 != -1)
  {
    OUTLINED_FUNCTION_2_11(&qword_1EC7E9798);
  }

  OUTLINED_FUNCTION_27_9(qword_1EC7F7D38);
  sub_1D4EC5794(&qword_1EC7EC238, &qword_1EC7EC230, &unk_1D5620060);
  OUTLINED_FUNCTION_14_14();
  OUTLINED_FUNCTION_26_10();
  if (v14)
  {

    v15 = *(v12 + 12);
    v35 = *(v12 + 13);
    v36 = v15;
    v16 = v12[224];
    result = sub_1D4F5087C(v12);
    if (v16 == 1)
    {
      v18 = *(v4 + 192);
      v19 = *(v4 + 208);
      v20 = *(v4 + 224);
    }

    else
    {
      v20 = 0;
      v19 = v35;
      v18 = v36;
    }

    *(v4 + 192) = v18;
    *(v4 + 208) = v19;
    *(v4 + 224) = v20;
  }

  else
  {
    v21 = qword_1EC7E97A0;

    if (v21 != -1)
    {
      OUTLINED_FUNCTION_5_16(&qword_1EC7E97A0);
    }

    OUTLINED_FUNCTION_27_9(qword_1EC7F7D40);
    OUTLINED_FUNCTION_14_14();
    OUTLINED_FUNCTION_26_10();
    if (v21)
    {

      v22 = *(v12 + 50);
      v23 = *(v12 + 51);
      v24 = *(v12 + 52);

      sub_1D4F5087C(v12);
      if (!v24)
      {
        v22 = *(v4 + 400);
        v23 = *(v4 + 408);
      }

      *(v4 + 400) = v22;
      *(v4 + 408) = v23;
      *(v4 + 416) = v24;
    }

    else
    {
      v25 = qword_1EC7E97B0;

      if (v25 != -1)
      {
        OUTLINED_FUNCTION_4_19(&qword_1EC7E97B0);
      }

      OUTLINED_FUNCTION_27_9(qword_1EC7F7D48);
      OUTLINED_FUNCTION_14_14();
      OUTLINED_FUNCTION_26_10();
      if (v25)
      {

        v26 = *(v12 + 53);

        sub_1D4F5087C(v12);
        if (!v26)
        {
        }

        *(v4 + 424) = v26;
      }

      else
      {
        v27 = qword_1EC7E97A8;

        if (v27 != -1)
        {
          OUTLINED_FUNCTION_3_18(&qword_1EC7E97A8);
        }

        OUTLINED_FUNCTION_27_9(qword_1EC87C738);
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC240, &unk_1D5620070);
        sub_1D4EC5794(&qword_1EC7EC248, &qword_1EC7EC240, &unk_1D5620070);
        sub_1D5614D18();
        OUTLINED_FUNCTION_26_10();
        if ((v28 & 1) == 0)
        {
          while (1)
          {
            OUTLINED_FUNCTION_30();
            sub_1D5615B68();
            MEMORY[0x1DA6EAC70](0xD00000000000002ALL, 0x80000001D567F590);
            v38 = v3;
            sub_1D5615D48();
            OUTLINED_FUNCTION_33_0();
            OUTLINED_FUNCTION_28();
            v34 = 95;
LABEL_31:
            *&v35 = v34;
            OUTLINED_FUNCTION_17_13("Fatal error", v30, v31, v32, v33, "MusicKitInternal/AudioAnalysisPropertyProvider.swift");
            __break(1u);
          }
        }

        v29 = *(v12 + 54);

        sub_1D4F5087C(v12);
        if (!v29)
        {
        }

        *(v4 + 432) = v29;
      }
    }
  }

  return result;
}

uint64_t sub_1D4F4F3E8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D561FEC0;
  if (qword_1EC7E9750 != -1)
  {
    OUTLINED_FUNCTION_15_18(&qword_1EC7E9750);
  }

  *(v0 + 32) = qword_1EC87C6F0;
  v1 = qword_1EC7E9758;

  if (v1 != -1)
  {
    OUTLINED_FUNCTION_13_21(&qword_1EC7E9758);
  }

  *(v0 + 40) = qword_1EC87C6F8;
  v2 = qword_1EC7E9760;

  if (v2 != -1)
  {
    OUTLINED_FUNCTION_12_22(&qword_1EC7E9760);
  }

  *(v0 + 48) = qword_1EC87C700;
  v3 = qword_1EC7E9768;

  if (v3 != -1)
  {
    OUTLINED_FUNCTION_11_19(&qword_1EC7E9768);
  }

  *(v0 + 56) = qword_1EC87C708;
  v4 = qword_1EC7E9770;

  if (v4 != -1)
  {
    OUTLINED_FUNCTION_10_17(&qword_1EC7E9770);
  }

  *(v0 + 64) = qword_1EC87C710;
  v5 = qword_1EC7E9798;

  if (v5 != -1)
  {
    OUTLINED_FUNCTION_2_11(&qword_1EC7E9798);
  }

  *(v0 + 72) = qword_1EC7F7D38;
  v6 = qword_1EC7E9778;

  if (v6 != -1)
  {
    OUTLINED_FUNCTION_9_19(&qword_1EC7E9778);
  }

  *(v0 + 80) = qword_1EC87C718;
  v7 = qword_1EC7E9780;

  if (v7 != -1)
  {
    OUTLINED_FUNCTION_8_22(&qword_1EC7E9780);
  }

  *(v0 + 88) = qword_1EC87C720;
  v8 = qword_1EC7E9788;

  if (v8 != -1)
  {
    OUTLINED_FUNCTION_7_23(&qword_1EC7E9788);
  }

  *(v0 + 96) = qword_1EC87C728;
  v9 = qword_1EC7E9790;

  if (v9 != -1)
  {
    OUTLINED_FUNCTION_6_22(&qword_1EC7E9790);
  }

  *(v0 + 104) = qword_1EC87C730;
  v10 = qword_1EC7E97A0;

  if (v10 != -1)
  {
    OUTLINED_FUNCTION_5_16(&qword_1EC7E97A0);
  }

  *(v0 + 112) = qword_1EC7F7D40;
  v11 = qword_1EC7E97B0;

  if (v11 != -1)
  {
    OUTLINED_FUNCTION_4_19(&qword_1EC7E97B0);
  }

  *(v0 + 120) = qword_1EC7F7D48;
  v12 = qword_1EC7E97A8;

  if (v12 != -1)
  {
    OUTLINED_FUNCTION_3_18(&qword_1EC7E97A8);
  }

  *(v0 + 128) = qword_1EC87C738;
  qword_1EC87BE68 = v0;
}

void sub_1D4F4F6B8(uint64_t *a1, uint64_t a2)
{
  if (*(a1 + 33))
  {
    if ((*(a2 + 33) & 1) == 0)
    {
      return;
    }
  }

  else
  {
    if (*(a2 + 33))
    {
      return;
    }

    v4 = *a1;
    v5 = a1[1];
    v6 = a1[2];
    v7 = a1[3];
    v8 = *(a1 + 32);
    v9 = *(a2 + 8);
    v10 = *(a2 + 16);
    v11 = *(a2 + 24);
    v12 = *(a2 + 32);
    v142[0] = *a2;
    v142[1] = v9;
    v143 = v10 & 1;
    v144 = v11;
    v145 = v12 & 1;
    v138[0] = v4;
    v138[1] = v5;
    v139 = v6 & 1;
    v140 = v7;
    v141 = v8 & 1;
    if ((sub_1D4F50948(v138, v142) & 1) == 0)
    {
      return;
    }
  }

  v13 = a1[6];
  v15 = *(a2 + 40);
  v14 = *(a2 + 48);
  if (!a1[5])
  {
    sub_1D4F50DE0(0, a1[6]);
    if (!v15)
    {
      sub_1D4F50DE0(0, v14);
      sub_1D4F50E20(0);
      goto LABEL_19;
    }

    v26 = OUTLINED_FUNCTION_15_2();
    sub_1D4F50DE0(v26, v27);
    goto LABEL_14;
  }

  v16 = a1[5];
  if (!v15)
  {
    sub_1D4F50DE0(v16, a1[6]);
    sub_1D4F50DE0(0, v14);
    v28 = OUTLINED_FUNCTION_61();
    sub_1D4F50DE0(v28, v29);

LABEL_14:
    v30 = OUTLINED_FUNCTION_61();
    sub_1D4F50E20(v30);
    v31 = OUTLINED_FUNCTION_15_2();
LABEL_16:
    sub_1D4F50E20(v31);
    return;
  }

  if ((sub_1D4EFA0D0(v16, *(a2 + 40)) & 1) == 0)
  {
    v32 = OUTLINED_FUNCTION_61();
    sub_1D4F50DE0(v32, v33);
    v34 = OUTLINED_FUNCTION_15_2();
    sub_1D4F50DE0(v34, v35);
    v36 = OUTLINED_FUNCTION_61();
    sub_1D4F50DE0(v36, v37);
    v38 = OUTLINED_FUNCTION_15_2();
    sub_1D4F50E20(v38);

    v31 = OUTLINED_FUNCTION_61();
    goto LABEL_16;
  }

  v17 = sub_1D4EFA0D0(v13, v14);
  v18 = OUTLINED_FUNCTION_61();
  sub_1D4F50DE0(v18, v19);
  v20 = OUTLINED_FUNCTION_15_2();
  sub_1D4F50DE0(v20, v21);
  v22 = OUTLINED_FUNCTION_61();
  sub_1D4F50DE0(v22, v23);
  v24 = OUTLINED_FUNCTION_15_2();
  sub_1D4F50E20(v24);

  v25 = OUTLINED_FUNCTION_61();
  sub_1D4F50E20(v25);
  if ((v17 & 1) == 0)
  {
    return;
  }

LABEL_19:
  v39 = *(a1 + 105);
  v40 = *(a2 + 105);
  if (v39)
  {
    if ((*(a2 + 105) & 1) == 0)
    {
      return;
    }
  }

  else
  {
    v41 = *(a2 + 56);
    v42 = *(a2 + 72);
    v43 = *(a2 + 80);
    v44 = *(a2 + 88);
    v45 = *(a2 + 96);
    v46 = *(a2 + 104);
    v47 = *(a1 + 9);
    __dst[0] = *(a1 + 7);
    __dst[1] = v47;
    __dst[2] = *(a1 + 11);
    LOBYTE(__dst[3]) = *(a1 + 104);
    BYTE1(__dst[3]) = v39;
    if (v40)
    {
      return;
    }

    v120[0] = v41;
    LOBYTE(v120[1]) = v42 & 1;
    *(&v120[1] + 1) = v43;
    LOBYTE(v120[2]) = v44 & 1;
    *(&v120[2] + 1) = v45;
    LOBYTE(v120[3]) = v46 & 1;
    if ((static AudioAnalysis.BeatsPerMinute.== infix(_:_:)(__dst, v120) & 1) == 0)
    {
      return;
    }
  }

  if (*(a1 + 145))
  {
    if ((*(a2 + 145) & 1) == 0)
    {
      return;
    }
  }

  else
  {
    if (*(a2 + 145))
    {
      return;
    }

    v48 = a1[14];
    v49 = a1[15];
    v50 = a1[16];
    v51 = a1[17];
    v52 = *(a1 + 144);
    v53 = *(a2 + 120);
    v54 = *(a2 + 128);
    v55 = *(a2 + 136);
    v56 = *(a2 + 144);
    v134[0] = *(a2 + 112);
    v134[1] = v53;
    v135 = v54 & 1;
    v136 = v55;
    v137 = v56 & 1;
    v130[0] = v48;
    v130[1] = v49;
    v131 = v50 & 1;
    v132 = v51;
    v133 = v52 & 1;
    if ((sub_1D4F50948(v130, v134) & 1) == 0)
    {
      return;
    }
  }

  if (*(a1 + 185))
  {
    if ((*(a2 + 185) & 1) == 0)
    {
      return;
    }
  }

  else
  {
    if (*(a2 + 185))
    {
      return;
    }

    v57 = a1[19];
    v58 = a1[20];
    v59 = a1[21];
    v60 = a1[22];
    v61 = *(a1 + 184);
    v62 = *(a2 + 160);
    v63 = *(a2 + 168);
    v64 = *(a2 + 176);
    v65 = *(a2 + 184);
    v126[0] = *(a2 + 152);
    v126[1] = v62;
    v127 = v63 & 1;
    v128 = v64;
    v129 = v65 & 1;
    v122[0] = v57;
    v122[1] = v58;
    v123 = v59 & 1;
    v124 = v60;
    v125 = v61 & 1;
    if ((sub_1D4F50948(v122, v126) & 1) == 0)
    {
      return;
    }
  }

  if (a1[28])
  {
    if ((*(a2 + 224) & 1) == 0)
    {
      return;
    }
  }

  else
  {
    if (*(a2 + 224))
    {
      return;
    }

    v66 = *(a1 + 24) == *(a2 + 192) && *(a1 + 25) == *(a2 + 200);
    v67 = v66 && *(a1 + 26) == *(a2 + 208);
    if (!v67 || *(a1 + 27) != *(a2 + 216))
    {
      return;
    }
  }

  if (*(a1 + 313))
  {
    if ((*(a2 + 313) & 1) == 0)
    {
      return;
    }
  }

  else
  {
    if (*(a2 + 313))
    {
      return;
    }

    memcpy(__dst, (a2 + 232), 0x51uLL);
    memcpy(v120, a1 + 29, 0x51uLL);
    if (!sub_1D4F509B4(v120, __dst))
    {
      return;
    }
  }

  if (*(a1 + 353))
  {
    if ((*(a2 + 353) & 1) == 0)
    {
      return;
    }
  }

  else
  {
    if (*(a2 + 353))
    {
      return;
    }

    v69 = a1[40];
    v70 = a1[41];
    v71 = a1[42];
    v72 = a1[43];
    v73 = *(a1 + 352);
    v74 = *(a2 + 328);
    v75 = *(a2 + 336);
    v76 = *(a2 + 344);
    v77 = *(a2 + 352);
    v116[0] = *(a2 + 320);
    v116[1] = v74;
    v117 = v75 & 1;
    v118 = v76;
    v119 = v77 & 1;
    v112[0] = v69;
    v112[1] = v70;
    v113 = v71 & 1;
    v114 = v72;
    v115 = v73 & 1;
    if ((sub_1D4F50948(v112, v116) & 1) == 0)
    {
      return;
    }
  }

  v78 = *(a2 + 354) & 0xFF00;
  if ((*(a1 + 354) & 0xFF00) == 0x400)
  {
    if (v78 != 1024)
    {
      return;
    }
  }

  else if (v78 == 1024 || (sub_1D4F50A58(*(a1 + 354) | (*(a1 + 179) << 32), *(a2 + 354) | (*(a2 + 358) << 32)) & 1) == 0)
  {
    return;
  }

  if (*(a1 + 393))
  {
    if ((*(a2 + 393) & 1) == 0)
    {
      return;
    }
  }

  else
  {
    if (*(a2 + 393))
    {
      return;
    }

    v79 = a1[45];
    v80 = a1[46];
    v81 = a1[47];
    v82 = a1[48];
    v83 = *(a1 + 392);
    v84 = *(a2 + 368);
    v85 = *(a2 + 376);
    v86 = *(a2 + 384);
    v87 = *(a2 + 392);
    v108[0] = *(a2 + 360);
    v108[1] = v84;
    v109 = v85 & 1;
    v110 = v86;
    v111 = v87 & 1;
    v104[0] = v79;
    v104[1] = v80;
    v105 = v81 & 1;
    v106 = v82;
    v107 = v83 & 1;
    if ((sub_1D4F50948(v104, v108) & 1) == 0)
    {
      return;
    }
  }

  v88 = *(a2 + 416);
  if (a1[52])
  {
    if (v88)
    {
      v89 = *(a2 + 408);
      if (a1[51])
      {
        if ((v89 & 1) == 0)
        {
LABEL_73:
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRelease_n();
          return;
        }
      }

      else if (v89 & 1 | (*(a1 + 50) != *(a2 + 400)))
      {
        goto LABEL_73;
      }

      if ((sub_1D4EFA0D0(a1[52], *(a2 + 416)) & 1) == 0)
      {
        return;
      }

      goto LABEL_80;
    }

LABEL_75:

    return;
  }

  if (v88)
  {
    goto LABEL_75;
  }

LABEL_80:
  v90 = *(a2 + 424);
  if (a1[53])
  {
    if (!v90 || (sub_1D4F0B2DC() & 1) == 0)
    {
      return;
    }
  }

  else if (v90)
  {
    return;
  }

  v91 = a1[54];
  v92 = *(a2 + 432);
  if (v91)
  {
    if (!v92 || (sub_1D4EF7F70(v91, v92) & 1) == 0)
    {
      return;
    }
  }

  else if (v92)
  {
    return;
  }

  sub_1D4EF6F7C();
  if ((v93 & 1) == 0)
  {
    return;
  }

  v94 = type metadata accessor for AudioAnalysisPropertyProvider(0);
  if ((sub_1D560D6E8() & 1) == 0 || (sub_1D4F3B22C() & 1) == 0)
  {
    return;
  }

  v95 = v94[20];
  v96 = (a1 + v95);
  v97 = *(a1 + v95 + 8);
  v98 = (a2 + v95);
  v99 = v98[1];
  if (v97)
  {
    if (!v99)
    {
      return;
    }

    v100 = *v96 == *v98 && v97 == v99;
    if (!v100 && (sub_1D5616168() & 1) == 0)
    {
      return;
    }
  }

  else if (v99)
  {
    return;
  }

  OUTLINED_FUNCTION_44_0(v94[21]);
  sub_1D4F286E0();
  if (v101)
  {
    OUTLINED_FUNCTION_44_0(v94[22]);
    sub_1D4F286E0();
    if (v102)
    {
      OUTLINED_FUNCTION_44_0(v94[23]);
      sub_1D4F286E0();
      if (v103)
      {
        OUTLINED_FUNCTION_44_0(v94[24]);

        sub_1D4F286E0();
      }
    }
  }
}

void sub_1D4F4FDB8(uint64_t a1)
{
  if (*(v1 + 33) == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v3 = *(v1 + 32);
    v4 = v1[3];
    v5 = *(v1 + 4);
    v6 = v1[1];
    v43 = *v1;
    v44 = v6;
    v45 = v5 & 1;
    v46 = v4;
    v47 = v3 & 1;
    OUTLINED_FUNCTION_27();
    sub_1D4F50D3C();
  }

  if (v1[5])
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_24();
    sub_1D4F07ACC();
    sub_1D4F07ACC();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v7 = *(v1 + 9);
  v39 = *(v1 + 7);
  v40 = v7;
  v41 = *(v1 + 11);
  v42 = *(v1 + 52);
  sub_1D4F860C8();
  if (*(v1 + 145) == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v8 = *(v1 + 144);
    v9 = v1[17];
    v10 = *(v1 + 32);
    v11 = v1[15];
    v34 = v1[14];
    v35 = v11;
    v36 = v10 & 1;
    v37 = v9;
    v38 = v8 & 1;
    OUTLINED_FUNCTION_27();
    sub_1D4F50D3C();
  }

  if (*(v1 + 185) == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v12 = *(v1 + 184);
    v13 = v1[22];
    v14 = *(v1 + 42);
    v15 = v1[20];
    v29 = v1[19];
    v30 = v15;
    v31 = v14 & 1;
    v32 = v13;
    v33 = v12 & 1;
    OUTLINED_FUNCTION_27();
    sub_1D4F50D3C();
  }

  v16 = *(v1 + 13);
  v26 = *(v1 + 12);
  v27 = v16;
  v28 = *(v1 + 224);
  sub_1D4F86040();
  if (*(v1 + 313))
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    memcpy(__dst, v1 + 29, sizeof(__dst));
    OUTLINED_FUNCTION_27();
    sub_1D4F50C98(a1);
  }

  if (*(v1 + 353) == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_27();
    sub_1D4F50D3C();
  }

  if ((*(v1 + 354) & 0xFF00) == 0x400)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_27();
    v17 = OUTLINED_FUNCTION_24();
    sub_1D4F50B48(v17, v18);
  }

  if (*(v1 + 393) == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    OUTLINED_FUNCTION_27();
    sub_1D4F50D3C();
  }

  if (v1[52])
  {
    v19 = v1[50];
    v20 = *(v1 + 102);
    OUTLINED_FUNCTION_27();
    if (v20)
    {
      OUTLINED_FUNCTION_36();
    }

    else
    {
      OUTLINED_FUNCTION_27();
      if ((v19 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v21 = v19;
      }

      else
      {
        v21 = 0;
      }

      MEMORY[0x1DA6EC100](v21);
    }

    OUTLINED_FUNCTION_24();
    sub_1D4F07ACC();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (v1[53])
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_24();
    sub_1D4F0B2F4();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (v1[54])
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_24();
    sub_1D4F07A58();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  sub_1D4F070FC(a1, v1[55]);
  v22 = type metadata accessor for AudioAnalysisPropertyProvider(0);
  sub_1D560D838();
  v23 = sub_1D4F50E60(&qword_1EDD53DC0, MEMORY[0x1E6974F58], MEMORY[0x1E6974F68]);
  OUTLINED_FUNCTION_22_2(v23);
  sub_1D5610088();
  v24 = sub_1D4F50E60(&qword_1EDD53358, MEMORY[0x1E6975BC8], MEMORY[0x1E6975BD8]);
  OUTLINED_FUNCTION_22_2(v24);
  if (*(v1 + *(v22 + 80) + 8))
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
}

uint64_t sub_1D4F50200()
{
  sub_1D56162D8();
  sub_1D4F4FDB8(v1);
  return sub_1D5616328();
}

void (*sub_1D4F50254(void *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v5;
  v5[8] = a2;
  v5[9] = v2;
  sub_1D4F4E53C(v5);
  return sub_1D4F502C0;
}

void sub_1D4F502C0(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = *(v2 + 64);
    sub_1D4F508D8(v2, v2 + 32);

    sub_1D4F4EDC4(v4, v3);
  }

  sub_1D4F4EDC4(v5, v5);
}

uint64_t sub_1D4F50314(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D4F4FDB8(v2);
  return sub_1D5616328();
}

uint64_t sub_1D4F50398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1D4F50E60(&qword_1EC7EC220, type metadata accessor for AudioAnalysisPropertyProvider, &unk_1D561FF80);

  return MEMORY[0x1EEDD02B8](a1, a4, a3, v7);
}

uint64_t sub_1D4F50434@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 72);
  v5 = sub_1D560D838();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D4F504A8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 72);
  v5 = sub_1D560D838();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1D4F50540@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 76);
  v5 = sub_1D5610088();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D4F505B4(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 80));

  return v2;
}

uint64_t sub_1D4F5061C(uint64_t a1)
{
  v2 = sub_1D4F50E60(&qword_1EC7EC220, type metadata accessor for AudioAnalysisPropertyProvider, &unk_1D561FF80);

  return MEMORY[0x1EEDD02B0](a1, v2);
}

uint64_t sub_1D4F50698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D4F50E60(&qword_1EC7EC208, type metadata accessor for AudioAnalysisPropertyProvider, &unk_1D561FF58);

  return MEMORY[0x1EEDD0328](a1, a3, a2, a4, v8);
}

uint64_t sub_1D4F5072C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D4F50E60(&qword_1EC7EC218, type metadata accessor for AudioAnalysisPropertyProvider, &unk_1D561FF18);

  return MEMORY[0x1EEDD0320](a1, a2, a3, v6);
}

uint64_t sub_1D4F507B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC228, &qword_1D5620058);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D4F50818(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioAnalysisPropertyProvider(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4F5087C(uint64_t a1)
{
  v2 = type metadata accessor for AudioAnalysisPropertyProvider(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D4F508D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9F98, &qword_1D561C420);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4F50948(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 8) != *(a2 + 8))
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v3 = *(a2 + 32);
  if (*(a1 + 32))
  {
    if ((*(a2 + 32) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 24) != *(a2 + 24))
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  return 1;
}

BOOL sub_1D4F509B4(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  if (*(a1 + 48))
  {
    if ((*(a2 + 48) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 48))
    {
      return 0;
    }

    v4 = *(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32);
    if (!v4 || *(a1 + 40) != *(a2 + 40))
    {
      return 0;
    }
  }

  if ((*(a1 + 80) & 1) == 0)
  {
    if ((*(a2 + 80) & 1) == 0)
    {
      v6 = *(a1 + 56) == *(a2 + 56) && *(a1 + 64) == *(a2 + 64);
      if (v6 && *(a1 + 72) == *(a2 + 72))
      {
        return 1;
      }
    }

    return 0;
  }

  return (*(a2 + 80) & 1) != 0;
}

uint64_t sub_1D4F50A58(uint64_t a1, uint64_t a2)
{
  v7 = a1;
  v8 = WORD2(a1);
  v6 = WORD2(a2);
  v5 = a2;
  if ((static AudioAnalysis.Tonality.== infix(_:_:)(&v7, &v5) & 1) == 0)
  {
    return 0;
  }

  if ((HIWORD(v7) & 0xFF00) != 0x400)
  {
    v4 = HIWORD(v7);
    if ((HIWORD(v5) & 0xFF00) == 0x400)
    {
      return 0;
    }

    v3 = HIWORD(v5);
    if ((static AudioAnalysis.Tonality.== infix(_:_:)(&v4, &v3) & 1) == 0)
    {
      return 0;
    }

LABEL_7:
    if ((v8 & 0xFF00) == 0x400)
    {
      if ((v6 & 0xFF00) != 0x400)
      {
        return 0;
      }
    }

    else
    {
      v4 = v8;
      if ((v6 & 0xFF00) == 0x400)
      {
        return 0;
      }

      v3 = v6;
      if ((static AudioAnalysis.Tonality.== infix(_:_:)(&v4, &v3) & 1) == 0)
      {
        return 0;
      }
    }

    return 1;
  }

  if ((HIWORD(v5) & 0xFF00) == 0x400)
  {
    goto LABEL_7;
  }

  return 0;
}

uint64_t sub_1D4F50B48(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (a2 == 21)
  {
    sub_1D56162F8();
  }

  else
  {
    sub_1D56162F8();
    MEMORY[0x1DA6EC0D0](v3);
  }

  sub_1D56162F8();
  if ((a2 & 0xFF00) != 0x300)
  {
    MEMORY[0x1DA6EC0D0](BYTE1(a2));
  }

  if ((a2 & 0xFF000000) == 0x4000000)
  {
    goto LABEL_10;
  }

  sub_1D56162F8();
  sub_1D56162F8();
  if ((a2 & 0xFF0000) != 0x150000)
  {
    MEMORY[0x1DA6EC0D0](BYTE2(a2));
  }

  if ((a2 & 0xFF000000) == 0x3000000)
  {
LABEL_10:
    sub_1D56162F8();
  }

  else
  {
    sub_1D56162F8();
    MEMORY[0x1DA6EC0D0](BYTE3(a2));
  }

  if ((a2 & 0xFF0000000000) == 0x40000000000)
  {
    return sub_1D56162F8();
  }

  sub_1D56162F8();
  sub_1D56162F8();
  if ((a2 & 0xFF00000000) != 0x1500000000)
  {
    MEMORY[0x1DA6EC0D0](BYTE4(a2));
  }

  if ((a2 & 0xFF0000000000) == 0x30000000000)
  {
    return sub_1D56162F8();
  }

  sub_1D56162F8();
  return MEMORY[0x1DA6EC0D0](BYTE5(a2));
}

uint64_t sub_1D4F50C98(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 16);
  if (*v2 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x1DA6EC100](*&v4);
  if (v5 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v5;
  }

  MEMORY[0x1DA6EC100](*&v7);
  if (v6 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = v6;
  }

  MEMORY[0x1DA6EC100](*&v8);
  sub_1D4F85FD0(a1, *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48));
  v9 = *(v2 + 56);
  v10 = *(v2 + 64);
  v11 = *(v2 + 72);
  v12 = *(v2 + 80);

  return sub_1D4F85FD0(a1, v9, v10, v11, v12);
}

uint64_t sub_1D4F50D3C()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x1DA6EC100](*&v1);
  if (*(v0 + 16) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    v2 = *(v0 + 8);
    sub_1D56162F8();
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x1DA6EC100](v3);
  }

  if (*(v0 + 32) == 1)
  {
    return sub_1D56162F8();
  }

  v5 = *(v0 + 24);
  sub_1D56162F8();
  if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return MEMORY[0x1DA6EC100](v6);
}

uint64_t sub_1D4F50DE0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D4F50E20(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D4F50E60(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t Artist.PlayableItem.id.getter()
{
  Artist.PlayableItem.innerItem.getter(v2);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v0 = sub_1D560EC18();
  __swift_destroy_boxed_opaque_existential_1(v2);
  return v0;
}

uint64_t Artist.PlayableItem.innerItem.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  type metadata accessor for Artist.PlayableItem(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  sub_1D4F51070(v2, v6 - v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v9 = sub_1D5614898();
      v10 = MEMORY[0x1E69773A0];
    }

    else
    {
      v9 = sub_1D5614408();
      v10 = MEMORY[0x1E6977150];
    }
  }

  else
  {
    v9 = sub_1D5613AF8();
    v10 = MEMORY[0x1E6976CF0];
  }

  a1[3] = v9;
  a1[4] = v10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a1);
  return (*(*(v9 - 8) + 32))(boxed_opaque_existential_0, v7, v9);
}

uint64_t type metadata accessor for Artist.PlayableItem(uint64_t a1)
{
  result = qword_1EC7EC2E0;
  if (!qword_1EC7EC2E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D4F51070(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artist.PlayableItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void Artist.PlayableItem.title.getter()
{
  OUTLINED_FUNCTION_47();
  sub_1D5614408();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_28_3();
  v3 = sub_1D5614898();
  OUTLINED_FUNCTION_4();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_15_6();
  OUTLINED_FUNCTION_4();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_24_17();
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_38_6();
  v11 = OUTLINED_FUNCTION_33_18();
  sub_1D4F51070(v11, v12);
  OUTLINED_FUNCTION_210();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v14 = OUTLINED_FUNCTION_14_15();
      v15(v14);
      sub_1D56146D8();
      OUTLINED_FUNCTION_22_15();
      (*(v5 + 8))(v1, v3);
    }

    else
    {
      v20 = OUTLINED_FUNCTION_19_15();
      v21(v20);
      sub_1D5614388();
      OUTLINED_FUNCTION_22_15();
      (*(v3 + 8))(v0, v8);
    }
  }

  else
  {
    v16 = OUTLINED_FUNCTION_8_23();
    v17(v16);
    sub_1D5613AB8();
    OUTLINED_FUNCTION_22_15();
    v18 = OUTLINED_FUNCTION_45_3();
    v19(v18);
  }

  OUTLINED_FUNCTION_33_18();
  OUTLINED_FUNCTION_46();
}

void Artist.PlayableItem.subtitle.getter()
{
  OUTLINED_FUNCTION_47();
  sub_1D5614408();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_28_3();
  v3 = sub_1D5614898();
  OUTLINED_FUNCTION_4();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_15_6();
  OUTLINED_FUNCTION_4();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_24_17();
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_38_6();
  v11 = OUTLINED_FUNCTION_33_18();
  sub_1D4F51070(v11, v12);
  OUTLINED_FUNCTION_210();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v14 = OUTLINED_FUNCTION_14_15();
      v15(v14);
      sub_1D5614468();
      OUTLINED_FUNCTION_22_15();
      (*(v5 + 8))(v1, v3);
    }

    else
    {
      v20 = OUTLINED_FUNCTION_19_15();
      v21(v20);
      _s8MusicKit7StationV0aB8InternalE12providerNameSSSgvg_0();
      OUTLINED_FUNCTION_22_15();
      (*(v3 + 8))(v0, v8);
    }
  }

  else
  {
    v16 = OUTLINED_FUNCTION_8_23();
    v17(v16);
    sub_1D5613868();
    OUTLINED_FUNCTION_22_15();
    v18 = OUTLINED_FUNCTION_45_3();
    v19(v18);
  }

  OUTLINED_FUNCTION_33_18();
  OUTLINED_FUNCTION_46();
}

void sub_1D4F51614()
{
  OUTLINED_FUNCTION_47();
  v32 = v2;
  v33 = v3;
  v31 = v4;
  v5 = sub_1D5614408();
  OUTLINED_FUNCTION_4();
  v30 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v8 = OUTLINED_FUNCTION_26_11();
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
  v19 = OUTLINED_FUNCTION_28_3();
  type metadata accessor for Artist.PlayableItem(v19);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v23 = v22 - v21;
  sub_1D4F51070(v0, v22 - v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v25 = (*(v10 + 32))(v14, v23, v8);
      v32(v25);
      (*(v10 + 8))(v14, v8);
    }

    else
    {
      v27 = OUTLINED_FUNCTION_32_18();
      v29 = v28(v27, v23, v5);
      v33(v29);
      (*(v30 + 8))(v1, v5);
    }
  }

  else
  {
    v26 = (*(v17 + 32))(v0, v23, v15);
    v31(v26);
    (*(v17 + 8))(v0, v15);
  }

  OUTLINED_FUNCTION_46();
}

void static Artist.PlayableItem.== infix(_:_:)()
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
  v41 = (v6 - v5);
  sub_1D5614898();
  OUTLINED_FUNCTION_4();
  v42 = v8;
  v43 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v9 = OUTLINED_FUNCTION_15_6();
  OUTLINED_FUNCTION_4();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  type metadata accessor for Artist.PlayableItem(0);
  OUTLINED_FUNCTION_14();
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v40 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v40 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC288, &qword_1D5620090);
  v26 = MEMORY[0x1EEE9AC00](v25 - 8);
  v28 = &v40 - v27;
  v29 = *(v26 + 56);
  sub_1D4F51070(v46, &v40 - v27);
  sub_1D4F51070(v47, &v28[v29]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D4F51070(v28, v22);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v32 = v42;
        v31 = v43;
        (*(v42 + 32))(v0, &v28[v29], v43);
        _s16MusicKitInternal0A21CollaborativePlaylistV23EndCollaborationRequestV2eeoiySbAE_AEtFZ_0();
        v33 = *(v32 + 8);
        v34 = OUTLINED_FUNCTION_75_2();
        v33(v34);
        (v33)(v22, v31);
LABEL_13:
        sub_1D4F51D44(v28);
        goto LABEL_14;
      }

      (*(v42 + 8))(v22, v43);
    }

    else
    {
      sub_1D4F51070(v28, v19);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v36 = v44;
        v35 = v45;
        v37 = v41;
        (*(v44 + 32))(v41, &v28[v29], v45);
        sub_1D5614368();
        v38 = *(v36 + 8);
        v38(v37, v35);
        v38(v19, v35);
        goto LABEL_13;
      }

      (*(v44 + 8))(v19, v45);
    }
  }

  else
  {
    sub_1D4F51070(v28, v24);
    if (!swift_getEnumCaseMultiPayload())
    {
      (*(v11 + 32))(v15, &v28[v29], v9);
      OUTLINED_FUNCTION_210();
      sub_1D5613A68();
      v39 = *(v11 + 8);
      v39(v15, v9);
      v39(v24, v9);
      goto LABEL_13;
    }

    (*(v11 + 8))(v24, v9);
  }

  sub_1D4F51CDC(v28);
LABEL_14:
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D4F51CDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC288, &qword_1D5620090);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D4F51D44(uint64_t a1)
{
  v2 = type metadata accessor for Artist.PlayableItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void Artist.PlayableItem.hash(into:)()
{
  OUTLINED_FUNCTION_47();
  v4 = sub_1D5614408();
  OUTLINED_FUNCTION_4();
  v32 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v7 = OUTLINED_FUNCTION_26_11();
  OUTLINED_FUNCTION_4();
  v31 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v10 = OUTLINED_FUNCTION_15_6();
  OUTLINED_FUNCTION_4();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_38_6();
  type metadata accessor for Artist.PlayableItem(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  sub_1D4F51070(v0, v16 - v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v31 + 32))(v2, v17, v7);
      MEMORY[0x1DA6EC0D0](1);
      OUTLINED_FUNCTION_11_20();
      sub_1D4F53C90(v19, v20, MEMORY[0x1E69773F0]);
      sub_1D5614CB8();
      v21 = OUTLINED_FUNCTION_75_2();
      v22(v21);
    }

    else
    {
      v27 = OUTLINED_FUNCTION_32_18();
      v28(v27, v17, v4);
      MEMORY[0x1DA6EC0D0](2);
      OUTLINED_FUNCTION_9_20();
      sub_1D4F53C90(v29, v30, MEMORY[0x1E6977188]);
      sub_1D5614CB8();
      (*(v32 + 8))(v1, v4);
    }
  }

  else
  {
    v23 = OUTLINED_FUNCTION_210();
    v24(v23);
    MEMORY[0x1DA6EC0D0](0);
    OUTLINED_FUNCTION_10_18();
    sub_1D4F53C90(v25, v26, MEMORY[0x1E6976D38]);
    sub_1D5614CB8();
    (*(v12 + 8))(v3, v10);
  }

  OUTLINED_FUNCTION_46();
}

uint64_t Artist.PlayableItem.hashValue.getter()
{
  sub_1D56162D8();
  Artist.PlayableItem.hash(into:)();
  return sub_1D5616328();
}

uint64_t sub_1D4F52110(uint64_t a1)
{
  sub_1D56162D8();
  Artist.PlayableItem.hash(into:)();
  return sub_1D5616328();
}

uint64_t sub_1D4F5214C@<X0>(uint64_t *a1@<X8>)
{
  result = Artist.PlayableItem.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D4F52178(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4F53C90(&qword_1EC7EC2D8, type metadata accessor for Artist.PlayableItem, &protocol conformance descriptor for Artist.PlayableItem);

  return MEMORY[0x1EEDD1468](a1, a2, v4);
}

uint64_t sub_1D4F521F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4F53C90(&qword_1EC7EC2D8, type metadata accessor for Artist.PlayableItem, &protocol conformance descriptor for Artist.PlayableItem);

  return MEMORY[0x1EEDD1460](a1, a2, v4);
}

uint64_t sub_1D4F52270(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4F53C90(&qword_1EC7EC2D8, type metadata accessor for Artist.PlayableItem, &protocol conformance descriptor for Artist.PlayableItem);

  return MEMORY[0x1EEDD1478](a1, a2, v4);
}

uint64_t sub_1D4F522EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4F53C90(&qword_1EC7EC2D8, type metadata accessor for Artist.PlayableItem, &protocol conformance descriptor for Artist.PlayableItem);

  return MEMORY[0x1EEDD1430](a1, a2, v4);
}

uint64_t sub_1D4F52368(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4F53C90(&qword_1EC7EC2D8, type metadata accessor for Artist.PlayableItem, &protocol conformance descriptor for Artist.PlayableItem);

  return MEMORY[0x1EEDD1438](a1, a2, v4);
}

uint64_t sub_1D4F523E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4F53C90(&qword_1EC7EC2D8, type metadata accessor for Artist.PlayableItem, &protocol conformance descriptor for Artist.PlayableItem);

  return MEMORY[0x1EEDD1448](a1, a2, v4);
}

uint64_t sub_1D4F52460(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4F53C90(&qword_1EC7EC2D8, type metadata accessor for Artist.PlayableItem, &protocol conformance descriptor for Artist.PlayableItem);

  return MEMORY[0x1EEDD1480](a1, a2, v4);
}

uint64_t sub_1D4F524DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4F53C90(&qword_1EC7EC2D8, type metadata accessor for Artist.PlayableItem, &protocol conformance descriptor for Artist.PlayableItem);

  return MEMORY[0x1EEDD1458](a1, a2, v4);
}

uint64_t sub_1D4F52558(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4F53C90(&qword_1EC7EC2D8, type metadata accessor for Artist.PlayableItem, &protocol conformance descriptor for Artist.PlayableItem);

  return MEMORY[0x1EEDD1450](a1, a2, v4);
}

uint64_t sub_1D4F525D4(uint64_t a1, uint64_t a2)
{
  sub_1D4F53C90(&qword_1EC7EC2D8, type metadata accessor for Artist.PlayableItem, &protocol conformance descriptor for Artist.PlayableItem);

  return sub_1D5613028();
}

uint64_t sub_1D4F52650(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4F53C90(&qword_1EC7EC2D8, type metadata accessor for Artist.PlayableItem, &protocol conformance descriptor for Artist.PlayableItem);

  return MEMORY[0x1EEDD1428](a1, a2, v4);
}

uint64_t sub_1D4F526D4(uint64_t a1, uint64_t a2)
{
  sub_1D4F53C90(&qword_1EC7EC2D8, type metadata accessor for Artist.PlayableItem, &protocol conformance descriptor for Artist.PlayableItem);

  return sub_1D5612FD8();
}

uint64_t sub_1D4F52758(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4F53C90(&qword_1EC7EC2D8, type metadata accessor for Artist.PlayableItem, &protocol conformance descriptor for Artist.PlayableItem);

  return MEMORY[0x1EEDD1470](a1, a2, v4);
}

uint64_t sub_1D4F527D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D4F53C90(&qword_1EC7EC2D8, type metadata accessor for Artist.PlayableItem, &protocol conformance descriptor for Artist.PlayableItem);

  return MEMORY[0x1EEDD1420](a1, a2, v4);
}

uint64_t sub_1D4F52850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = sub_1D4F53C90(&qword_1EC7EC2C8, type metadata accessor for Artist.PlayableItem, &protocol conformance descriptor for Artist.PlayableItem);
  *v9 = v4;
  v9[1] = sub_1D4ECF3E8;

  return MEMORY[0x1EEDCF270](a1, a2, a3, a4, v10);
}

uint64_t Artist.PlayableItem.init(from:)(void *a1)
{
  type metadata accessor for Artist.PlayableItem(0);
  sub_1D4E628D4(a1, v7);
  OUTLINED_FUNCTION_2_12();
  sub_1D4F53C90(v3, v4, &protocol conformance descriptor for Artist.PlayableItem);
  OUTLINED_FUNCTION_12_23();
  sub_1D4F53C90(v5, v1, MEMORY[0x1E69757C8]);
  OUTLINED_FUNCTION_13_22(&qword_1EC7EC2A0);
  sub_1D5612678();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Artist.PlayableItem.encode(to:)(uint64_t a1)
{
  type metadata accessor for Artist.PlayableItem(0);
  OUTLINED_FUNCTION_2_12();
  sub_1D4F53C90(v2, v3, &protocol conformance descriptor for Artist.PlayableItem);
  OUTLINED_FUNCTION_12_23();
  sub_1D4F53C90(v4, v1, MEMORY[0x1E69757C8]);
  OUTLINED_FUNCTION_13_22(&qword_1EC7EC2A0);
  return sub_1D5612688();
}

void Artist.PlayableItem.description.getter()
{
  OUTLINED_FUNCTION_47();
  v2 = sub_1D5614408();
  OUTLINED_FUNCTION_4();
  v30 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_26_11();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_15_6();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_24_17();
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_38_6();
  v8 = OUTLINED_FUNCTION_20_5();
  sub_1D4F51070(v8, v9);
  OUTLINED_FUNCTION_210();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v11 = OUTLINED_FUNCTION_14_15();
      v12(v11);
      OUTLINED_FUNCTION_153();
      sub_1D5615B68();

      OUTLINED_FUNCTION_18_18();
      OUTLINED_FUNCTION_11_20();
      sub_1D4F53C90(v13, v14, MEMORY[0x1E6977408]);
      v15 = sub_1D56160F8();
      MEMORY[0x1DA6EAC70](v15);

      MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
      v16 = OUTLINED_FUNCTION_75_2();
      v17(v16);
    }

    else
    {
      v25 = OUTLINED_FUNCTION_32_18();
      v26(v25, v1, v2);
      OUTLINED_FUNCTION_153();
      sub_1D5615B68();

      OUTLINED_FUNCTION_18_18();
      OUTLINED_FUNCTION_9_20();
      sub_1D4F53C90(v27, v28, MEMORY[0x1E69771A0]);
      v29 = sub_1D56160F8();
      MEMORY[0x1DA6EAC70](v29);

      MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
      (*(v30 + 8))(v0, v2);
    }
  }

  else
  {
    v18 = OUTLINED_FUNCTION_8_23();
    v19(v18);
    OUTLINED_FUNCTION_153();
    sub_1D5615B68();

    OUTLINED_FUNCTION_18_18();
    OUTLINED_FUNCTION_10_18();
    sub_1D4F53C90(v20, v21, MEMORY[0x1E6976D50]);
    v22 = sub_1D56160F8();
    MEMORY[0x1DA6EAC70](v22);

    MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
    v23 = OUTLINED_FUNCTION_45_3();
    v24(v23);
  }

  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_46();
}

void Artist.PlayableItem.debugDescription.getter()
{
  OUTLINED_FUNCTION_47();
  sub_1D5614408();
  OUTLINED_FUNCTION_4();
  v54 = v3;
  v55 = v2;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_26_11();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_15_6();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_24_17();
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_38_6();
  v7 = OUTLINED_FUNCTION_20_5();
  sub_1D4F51070(v7, v8);
  OUTLINED_FUNCTION_210();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v10 = OUTLINED_FUNCTION_14_15();
      v11(v10);
      OUTLINED_FUNCTION_153();
      sub_1D5615B68();

      OUTLINED_FUNCTION_17_14();
      v12 = sub_1D5614588();
      v14 = OUTLINED_FUNCTION_7_4(v12, v13);
      v20 = OUTLINED_FUNCTION_4_2(v14, v15, v16, v17, v18, v19, MEMORY[0x1E69E6158]);
      v22 = v21;

      MEMORY[0x1DA6EAC70](v20, v22);

      MEMORY[0x1DA6EAC70](10506, 0xE200000000000000);
      v23 = OUTLINED_FUNCTION_75_2();
    }

    else
    {
      v41 = OUTLINED_FUNCTION_32_18();
      v42(v41, v1, v55);
      OUTLINED_FUNCTION_153();
      sub_1D5615B68();

      OUTLINED_FUNCTION_17_14();
      v43 = sub_1D5614268();
      v45 = OUTLINED_FUNCTION_7_4(v43, v44);
      v51 = OUTLINED_FUNCTION_4_2(v45, v46, v47, v48, v49, v50, MEMORY[0x1E69E6158]);
      v53 = v52;

      MEMORY[0x1DA6EAC70](v51, v53);

      MEMORY[0x1DA6EAC70](10506, 0xE200000000000000);
      v25 = *(v54 + 8);
      v23 = v0;
      v24 = v55;
    }

    v25(v23, v24);
  }

  else
  {
    v26 = OUTLINED_FUNCTION_8_23();
    v27(v26);
    OUTLINED_FUNCTION_153();
    sub_1D5615B68();

    OUTLINED_FUNCTION_17_14();
    v28 = sub_1D5613958();
    v30 = OUTLINED_FUNCTION_7_4(v28, v29);
    v36 = OUTLINED_FUNCTION_4_2(v30, v31, v32, v33, v34, v35, MEMORY[0x1E69E6158]);
    v38 = v37;

    MEMORY[0x1DA6EAC70](v36, v38);

    MEMORY[0x1DA6EAC70](10506, 0xE200000000000000);
    v39 = OUTLINED_FUNCTION_45_3();
    v40(v39);
  }

  OUTLINED_FUNCTION_20_5();
  OUTLINED_FUNCTION_46();
}

unint64_t sub_1D4F53278()
{
  result = qword_1EDD5F080;
  if (!qword_1EDD5F080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD5F080);
  }

  return result;
}

void Artist.PlayableItem.init(propertyProvider:)()
{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  v46 = v3;
  sub_1D5614408();
  OUTLINED_FUNCTION_4();
  v39 = v5;
  v40 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v38 = v7 - v6;
  sub_1D5614898();
  OUTLINED_FUNCTION_4();
  v42 = v9;
  v43 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v41 = v11 - v10;
  v44 = sub_1D5613AF8();
  OUTLINED_FUNCTION_4();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_38_6();
  v15 = sub_1D5610088();
  OUTLINED_FUNCTION_4();
  v17 = v16;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v37 - v22;
  v45 = type metadata accessor for Artist.PlayableItem(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5();
  v27 = v26 - v25;
  v28 = v2[3];
  v47 = v2;
  __swift_project_boxed_opaque_existential_1(v2, v28);
  sub_1D5610CF8();
  sub_1D560FFB8();
  sub_1D4F53C90(&qword_1EDD53350, MEMORY[0x1E6975BC8], MEMORY[0x1E6975BE0]);
  v29 = OUTLINED_FUNCTION_5_17();
  v30 = *(v17 + 8);
  v30(v21, v15);
  if (v29)
  {
    v30(v23, v15);
    OUTLINED_FUNCTION_29_10();
    sub_1D5613978();
    (*(v13 + 32))(v27, v0, v44);
LABEL_4:
    swift_storeEnumTagMultiPayload();
    sub_1D4F53760(v27, v46);
    __swift_destroy_boxed_opaque_existential_1(v29);
    OUTLINED_FUNCTION_46();
    return;
  }

  sub_1D560FEA8();
  OUTLINED_FUNCTION_5_17();
  v31 = OUTLINED_FUNCTION_16_18();
  (v30)(v31);
  sub_1D5610038();
  OUTLINED_FUNCTION_5_17();
  v32 = OUTLINED_FUNCTION_16_18();
  (v30)(v32);
  if (v29)
  {
    v30(v23, v15);
    OUTLINED_FUNCTION_29_10();
    v34 = v41;
    sub_1D56145A8();
    (*(v42 + 32))(v27, v34, v43);
    goto LABEL_4;
  }

  sub_1D560FF58();
  OUTLINED_FUNCTION_5_17();
  v33 = OUTLINED_FUNCTION_16_18();
  (v30)(v33);
  sub_1D5610008();
  OUTLINED_FUNCTION_5_17();
  v35 = OUTLINED_FUNCTION_16_18();
  (v30)(v35);
  if (v29)
  {
    v30(v23, v15);
    OUTLINED_FUNCTION_29_10();
    v36 = v38;
    sub_1D5614288();
    (*(v39 + 32))(v27, v36, v40);
    goto LABEL_4;
  }

  sub_1D5615E08();
  __break(1u);
}

uint64_t sub_1D4F53760(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artist.PlayableItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4F537D0()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EC7EC250);
  __swift_project_value_buffer(v0, qword_1EC7EC250);
  type metadata accessor for Artist.PlayableItem(0);
  sub_1D4F53C90(&qword_1EC7EC2C8, type metadata accessor for Artist.PlayableItem, &protocol conformance descriptor for Artist.PlayableItem);
  return sub_1D560D978();
}

uint64_t sub_1D4F538A8()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EC7EC268);
  v1 = __swift_project_value_buffer(v0, qword_1EC7EC268);
  if (qword_1EC7E89C8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EC7EC250);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1D4F53994@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_1D560D9A8();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_1D4F53A2C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAE38, &unk_1D5620430);
  sub_1D560D9A8();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D5620080;
  sub_1D560D908();
  sub_1D560D968();
  result = sub_1D560D958();
  qword_1EC7EC280 = v0;
  return result;
}

uint64_t static Artist.PlayableItem.supportedTypeValues.getter()
{
  if (qword_1EC7E89D8 != -1)
  {
    swift_once();
  }
}

unint64_t sub_1D4F53BAC()
{
  result = qword_1EDD53A18;
  if (!qword_1EDD53A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD53A18);
  }

  return result;
}

uint64_t sub_1D4F53C90(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D4F53CE0(uint64_t a1)
{
  result = sub_1D5613AF8();
  if (v2 <= 0x3F)
  {
    result = sub_1D5614898();
    if (v3 <= 0x3F)
    {
      result = sub_1D5614408();
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t LanguageAttributes.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t LanguageAttributes.tag.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void static LanguageAttributes.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(a1 + 32);
  v5 = *(a1 + 33);
  v6 = *(a1 + 34);
  v18 = *(a1 + 36);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 33);
  v11 = *(a2 + 34);
  v19 = *(a2 + 35);
  v20 = *(a1 + 35);
  v16 = *(a1 + 37);
  v17 = *(a2 + 36);
  v15 = *(a2 + 37);
  v12 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v12 || (sub_1D5616168() & 1) != 0)
  {
    v13 = v6 ^ v11;
    if (v2 == v7 && v3 == v8)
    {
      if ((v4 ^ v9 | v5 ^ v10 | v13))
      {
        return;
      }
    }

    else if ((v4 ^ v9) & 1 | ((sub_1D5616168() & 1) == 0) | ((v5 ^ v10) | v13) & 1)
    {
      return;
    }

    if (((v20 ^ v19) & 1) == 0 && ((v18 ^ v17) & 1) == 0 && ((v16 ^ v15) & 1) == 0)
    {

      sub_1D4F286E0();
    }
  }
}

uint64_t sub_1D4F53F84(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 6775156 && a2 == 0xE300000000000000;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x72616D6972507369 && a2 == 0xE900000000000079;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000013 && 0x80000001D567EFC0 == a2;
        if (v8 || (sub_1D5616168() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6572657453736168 && a2 == 0xE90000000000006FLL;
          if (v9 || (sub_1D5616168() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x79626C6F44736168 && a2 == 0xE800000000000000;
            if (v10 || (sub_1D5616168() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x79626C6F44736168 && a2 == 0xEA00000000003137;
              if (v11 || (sub_1D5616168() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000013 && 0x80000001D567EFA0 == a2;
                if (v12 || (sub_1D5616168() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x65756C6156776172 && a2 == 0xE900000000000073)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_1D5616168();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

unint64_t sub_1D4F54264(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 6775156;
      break;
    case 2:
      result = 0x72616D6972507369;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0x6572657453736168;
      break;
    case 5:
    case 6:
      result = 0x79626C6F44736168;
      break;
    case 7:
      result = 0xD000000000000013;
      break;
    case 8:
      result = 0x65756C6156776172;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D4F54360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D4F53F84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D4F54388@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D4F5425C();
  *a1 = result;
  return result;
}

uint64_t sub_1D4F543B0(uint64_t a1)
{
  v2 = sub_1D4F546B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4F543EC(uint64_t a1)
{
  v2 = sub_1D4F546B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LanguageAttributes.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC2F0, &unk_1D5620440);
  OUTLINED_FUNCTION_4();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22 - v7;
  v9 = *(v1 + 16);
  v29 = *(v1 + 24);
  v30 = v9;
  LODWORD(v9) = *(v1 + 32);
  v27 = *(v1 + 33);
  v28 = v9;
  LODWORD(v9) = *(v1 + 34);
  v25 = *(v1 + 35);
  v26 = v9;
  LODWORD(v9) = *(v1 + 36);
  v23 = *(v1 + 37);
  v24 = v9;
  v22 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D4F546B0();
  sub_1D56163D8();
  LOBYTE(v33) = 0;
  v10 = v31;
  sub_1D5616088();
  if (!v10)
  {
    v11 = v27;
    v12 = v28;
    v13 = v25;
    v14 = v26;
    LOBYTE(v33) = 1;
    sub_1D5616088();
    OUTLINED_FUNCTION_148(2);
    OUTLINED_FUNCTION_2_13(v12, v15);
    OUTLINED_FUNCTION_148(3);
    OUTLINED_FUNCTION_2_13(v11, v16);
    OUTLINED_FUNCTION_148(4);
    OUTLINED_FUNCTION_2_13(v14, v17);
    OUTLINED_FUNCTION_148(5);
    OUTLINED_FUNCTION_2_13(v13, v18);
    OUTLINED_FUNCTION_148(6);
    OUTLINED_FUNCTION_2_13(v24, v19);
    OUTLINED_FUNCTION_148(7);
    OUTLINED_FUNCTION_2_13(v23, v20);
    v33 = v22;
    v32 = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB890, &qword_1D5620C60);
    sub_1D4F2FBD4();
    sub_1D56160C8();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_1D4F546B0()
{
  result = qword_1EC7EC2F8;
  if (!qword_1EC7EC2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC2F8);
  }

  return result;
}

void LanguageAttributes.hash(into:)(uint64_t a1)
{
  sub_1D5614E28();
  sub_1D5614E28();
  sub_1D56162F8();
  sub_1D56162F8();
  sub_1D56162F8();
  sub_1D56162F8();
  sub_1D56162F8();
  sub_1D56162F8();

  sub_1D4F31AC0();
}

uint64_t LanguageAttributes.hashValue.getter()
{
  sub_1D56162D8();
  LanguageAttributes.hash(into:)(v1);
  return sub_1D5616328();
}

uint64_t LanguageAttributes.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC300, &qword_1D5620450);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D4F546B0();
  sub_1D5616398();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v30[0]) = 0;
  v6 = sub_1D5615F98();
  v8 = v7;
  v26 = v6;
  OUTLINED_FUNCTION_0_27(1);
  v9 = sub_1D5615F98();
  v11 = v10;
  v25 = v9;
  OUTLINED_FUNCTION_0_27(2);
  v24 = sub_1D5615FA8();
  OUTLINED_FUNCTION_0_27(3);
  v22 = sub_1D5615FA8();
  OUTLINED_FUNCTION_0_27(4);
  v20 = sub_1D5615FA8();
  OUTLINED_FUNCTION_0_27(5);
  v19 = sub_1D5615FA8();
  OUTLINED_FUNCTION_0_27(6);
  v18 = sub_1D5615FA8();
  OUTLINED_FUNCTION_0_27(7);
  v17 = sub_1D5615FA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB890, &qword_1D5620C60);
  v38 = 8;
  sub_1D4F31CF4();
  sub_1D5615FD8();
  v16 = v22 & 1;
  v23 = v20 & 1;
  v24 &= 1u;
  v12 = OUTLINED_FUNCTION_109_0();
  v13(v12);
  v21 = v39;
  *&v27 = v26;
  *(&v27 + 1) = v8;
  *&v28 = v25;
  *(&v28 + 1) = v11;
  LOBYTE(v29) = v24;
  BYTE1(v29) = v16;
  BYTE2(v29) = v23;
  BYTE3(v29) = v19 & 1;
  BYTE4(v29) = v18 & 1;
  BYTE5(v29) = v17 & 1;
  *(&v29 + 1) = v39;
  v14 = v28;
  *a2 = v27;
  a2[1] = v14;
  a2[2] = v29;
  sub_1D4F54C3C(&v27, v30);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v30[0] = v26;
  v30[1] = v8;
  v30[2] = v25;
  v30[3] = v11;
  v31 = v24;
  v32 = v16;
  v33 = v23;
  v34 = v19 & 1;
  v35 = v18 & 1;
  v36 = v17 & 1;
  v37 = v21;
  return sub_1D4F54C74(v30);
}

uint64_t sub_1D4F54C00(uint64_t a1)
{
  sub_1D56162D8();
  LanguageAttributes.hash(into:)(v2);
  return sub_1D5616328();
}

unint64_t sub_1D4F54CA8()
{
  result = qword_1EC7EC308;
  if (!qword_1EC7EC308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC308);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LanguageAttributes.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for LanguageAttributes.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D4F54E74()
{
  result = qword_1EC7EC310;
  if (!qword_1EC7EC310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC310);
  }

  return result;
}

unint64_t sub_1D4F54ECC()
{
  result = qword_1EC7EC318;
  if (!qword_1EC7EC318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC318);
  }

  return result;
}

unint64_t sub_1D4F54F24()
{
  result = qword_1EC7EC320;
  if (!qword_1EC7EC320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC320);
  }

  return result;
}

uint64_t type metadata accessor for CloudEditorialUber(uint64_t a1)
{
  result = qword_1EDD56650;
  if (!qword_1EDD56650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D4F54FEC(uint64_t a1)
{
  sub_1D4F55058(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1D4F55058(uint64_t a1)
{
  if (!qword_1EDD531B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA760, &unk_1D56222B0);
    v1 = sub_1D56158D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDD531B0);
    }
  }
}

BOOL sub_1D4F55104(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_4();
  v7 = v6;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v11);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v23 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC330, &qword_1D56222C0);
  OUTLINED_FUNCTION_22(v15);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_16_0();
  v18 = *(v17 + 56);
  sub_1D4F55DC8(a1, v2);
  sub_1D4F55DC8(a2, v2 + v18);
  OUTLINED_FUNCTION_10(v2);
  if (!v19)
  {
    sub_1D4F55DC8(v2, v14);
    OUTLINED_FUNCTION_10(v2 + v18);
    if (!v19)
    {
      (*(v7 + 32))(v10, v2 + v18, v5);
      sub_1D4F56034(&qword_1EC7EBEB8, &qword_1EC7EBDD0, MEMORY[0x1E6975980], MEMORY[0x1E6975DB8]);
      v21 = sub_1D5614D18();
      v22 = *(v7 + 8);
      v22(v10, v5);
      v22(v14, v5);
      sub_1D4E6C9CC(v2, &qword_1EC7EB5B8, &unk_1D56206A0);
      return (v21 & 1) != 0;
    }

    (*(v7 + 8))(v14, v5);
LABEL_9:
    sub_1D4E6C9CC(v2, &qword_1EC7EC330, &qword_1D56222C0);
    return 0;
  }

  OUTLINED_FUNCTION_10(v2 + v18);
  if (!v19)
  {
    goto LABEL_9;
  }

  sub_1D4E6C9CC(v2, &qword_1EC7EB5B8, &unk_1D56206A0);
  return 1;
}

uint64_t sub_1D4F55394(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x724172657473616DLL && a2 == 0xE900000000000074)
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

uint64_t sub_1D4F55430(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC348, &qword_1D5620798);
  OUTLINED_FUNCTION_4();
  v4 = v3;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D4F55E38();
  sub_1D56163D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  sub_1D4F55F60(&qword_1EC7EC350, MEMORY[0x1E6975DA8]);
  sub_1D5616068();
  return (*(v4 + 8))(v7, v2);
}

uint64_t sub_1D4F55590(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_4();
  v5 = v4;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_16_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - v9;
  sub_1D4F55DC8(v1, &v15 - v9);
  if (__swift_getEnumTagSinglePayload(v10, 1, v3) == 1)
  {
    return sub_1D56162F8();
  }

  (*(v5 + 32))(v2, v10, v3);
  sub_1D56162F8();
  OUTLINED_FUNCTION_1_8();
  sub_1D4F56034(v12, v13, v14, MEMORY[0x1E6975DB0]);
  sub_1D5614CB8();
  return (*(v5 + 8))(v2, v3);
}

uint64_t sub_1D4F55724()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_4();
  v5 = v4;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_16_0();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v7);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - v9;
  sub_1D56162D8();
  sub_1D4F55DC8(v2, v10);
  if (__swift_getEnumTagSinglePayload(v10, 1, v3) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v5 + 32))(v1, v10, v3);
    sub_1D56162F8();
    OUTLINED_FUNCTION_1_8();
    sub_1D4F56034(v11, v12, v13, MEMORY[0x1E6975DB0]);
    sub_1D5614CB8();
    (*(v5 + 8))(v1, v3);
  }

  return sub_1D5616328();
}

uint64_t sub_1D4F558D4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC338, &qword_1D5620790);
  OUTLINED_FUNCTION_4();
  v21 = v9;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v19 - v11;
  v13 = type metadata accessor for CloudEditorialUber(0);
  v14 = OUTLINED_FUNCTION_22(v13);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D4F55E38();
  sub_1D5616398();
  if (!v2)
  {
    v17 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    sub_1D4F55F60(&qword_1EDD531B8, MEMORY[0x1E6975DC0]);
    sub_1D5615F78();
    (*(v21 + 8))(v12, v8);
    sub_1D4F55E8C(v7, v16);
    sub_1D4F55EFC(v16, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D4F55B04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D4F55394(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1D4F55B30(uint64_t a1)
{
  v2 = sub_1D4F55E38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4F55B6C(uint64_t a1)
{
  v2 = sub_1D4F55E38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D4F55BE4(uint64_t a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v11 - v8;
  sub_1D56162D8();
  sub_1D4F55DC8(v2, v9);
  if (__swift_getEnumTagSinglePayload(v9, 1, v3) == 1)
  {
    sub_1D56162F8();
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    sub_1D56162F8();
    sub_1D4F56034(&qword_1EC7EBE78, &qword_1EC7EBDC8, MEMORY[0x1E6975978], MEMORY[0x1E6975DB0]);
    sub_1D5614CB8();
    (*(v4 + 8))(v6, v3);
  }

  return sub_1D5616328();
}

uint64_t sub_1D4F55DC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D4F55E38()
{
  result = qword_1EC7EC340;
  if (!qword_1EC7EC340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC340);
  }

  return result;
}

uint64_t sub_1D4F55E8C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4F55EFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudEditorialUber(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4F55F60(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA760, &unk_1D56222B0);
    v4 = MEMORY[0x1E6975968];
    sub_1D4F560D0(&qword_1EDD533A8, MEMORY[0x1E6975968], MEMORY[0x1E6975988]);
    sub_1D4F560D0(&qword_1EDD533B0, v4, MEMORY[0x1E6975970]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D4F56034(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA760, &unk_1D56222B0);
    sub_1D4F560D0(a2, MEMORY[0x1E6975968], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D4F560D0(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

_BYTE *storeEnumTagSinglePayload for CloudEditorialUber.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_1D4F561C8()
{
  result = qword_1EC7EC358;
  if (!qword_1EC7EC358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC358);
  }

  return result;
}

unint64_t sub_1D4F56220()
{
  result = qword_1EC7EC360;
  if (!qword_1EC7EC360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC360);
  }

  return result;
}

unint64_t sub_1D4F56278()
{
  result = qword_1EC7EC368;
  if (!qword_1EC7EC368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC368);
  }

  return result;
}

uint64_t MusicLibrary.UndoLikeAction.UnsupportedReason.hashValue.getter()
{
  v1 = *v0;
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](v1);
  return sub_1D5616328();
}

void sub_1D4F5636C(uint64_t a2@<X2>, char *a4@<X8>)
{
  sub_1D4F5E39C(a2, &v6);
  if (v6 == 1)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  *a4 = v5;
}

unint64_t sub_1D4F563C4()
{
  result = qword_1EC7EC370;
  if (!qword_1EC7EC370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC370);
  }

  return result;
}

_BYTE *_s14UndoLikeActionVwst(_BYTE *result, int a2, int a3)
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

_BYTE *_s14UndoLikeActionV17UnsupportedReasonOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t Bag.init()()
{
  OUTLINED_FUNCTION_60();
  *(v0 + 16) = v1;
  v2 = type metadata accessor for MusicRequestConfiguration(0);
  OUTLINED_FUNCTION_22(v2);
  *(v0 + 24) = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D4F56628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_60();
  v11 = *(v10 + 24);
  sub_1D502EF3C();
  v12 = *(v11 + 17);
  *(v10 + 80) = v12;
  if (v12 == 1)
  {
    v13 = swift_task_alloc();
    *(v10 + 32) = v13;
    *v13 = v10;
    v14 = OUTLINED_FUNCTION_28_14(v13);

    return sub_1D4F56EB4(v14);
  }

  else
  {
    v16 = swift_task_alloc();
    *(v10 + 48) = v16;
    *v16 = v10;
    OUTLINED_FUNCTION_28_14(v16);

    return sub_1D4F573D4();
  }
}

uint64_t sub_1D4F56728()
{
  OUTLINED_FUNCTION_80();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_8();
  *v7 = v6;
  *(v4 + 40) = v0;

  if (!v0)
  {
    *(v4 + 64) = v3;
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D4F56840()
{
  OUTLINED_FUNCTION_80();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_8();
  *v7 = v6;
  *(v4 + 56) = v0;

  if (!v0)
  {
    *(v4 + 72) = v3;
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1D4F56958()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0 + 64);
  type metadata accessor for Bag.UnderlyingBagWrapper();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v3 = *(v0 + 80);
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  v6 = v5 + *(type metadata accessor for Bag(0) + 20);
  *v6 = v2;
  *(v6 + 8) = (v3 & 1) == 0;
  sub_1D4E56C6C(v4, v5);

  OUTLINED_FUNCTION_55();

  return v7();
}

uint64_t sub_1D4F56A10()
{
  OUTLINED_FUNCTION_60();
  sub_1D4F581B8(*(v0 + 24));

  OUTLINED_FUNCTION_55();

  return v1();
}

uint64_t sub_1D4F56A78()
{
  OUTLINED_FUNCTION_80();
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 16);
  v4 = v3 + *(type metadata accessor for Bag(0) + 20);
  *v4 = v1;
  *(v4 + 8) = (v2 & 1) == 0;
  v5 = OUTLINED_FUNCTION_159();
  sub_1D4E56C6C(v5, v6);

  OUTLINED_FUNCTION_55();

  return v7();
}

uint64_t sub_1D4F56B10()
{
  OUTLINED_FUNCTION_60();
  sub_1D4F581B8(*(v0 + 24));

  OUTLINED_FUNCTION_55();

  return v1();
}

uint64_t Bag.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v60 = a2;
  v61 = a4;
  v59 = a1;
  v57 = a5;
  v7 = sub_1D56158D8();
  OUTLINED_FUNCTION_4();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13();
  v58 = v11;
  OUTLINED_FUNCTION_23();
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v56 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v56 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v56 - v19;
  __swift_storeEnumTagSinglePayload(&v56 - v19, 1, 1, a3);
  type metadata accessor for Bag(0);
  OUTLINED_FUNCTION_24_10();
  v22 = *v21;
  v23 = *(v21 + 8);
  if (v23)
  {

    OUTLINED_FUNCTION_27_10();
    sub_1D4F593CC(v24, v25, v26, v27, v28, v29);
    if (v5)
    {
      v30 = OUTLINED_FUNCTION_13_8();
      v31(v30);
      v32 = v22;
      v33 = 1;
      return sub_1D4F48F14(v32, v33);
    }

    v46 = OUTLINED_FUNCTION_13_8();
    v62 = v47;
    v47(v46);
    v18 = v15;
  }

  else
  {
    v34 = *(v22 + 16);
    sub_1D4F48F74(*v21, 0);
    v35 = v34;
    OUTLINED_FUNCTION_27_10();
    sub_1D4F583E0(v36, v37, v38, v39, v40, v41, v42);
    if (v5)
    {
      v43 = OUTLINED_FUNCTION_13_8();
      v44(v43);

      v32 = v22;
      v33 = 0;
      return sub_1D4F48F14(v32, v33);
    }

    v48 = OUTLINED_FUNCTION_13_8();
    v62 = v49;
    v49(v48);
  }

  sub_1D4F48F14(v22, v23);
  (*(v9 + 32))(v20, v18, v7);
  v50 = v58;
  (*(v9 + 16))(v58, v20, v7);
  if (__swift_getEnumTagSinglePayload(v50, 1, a3) == 1)
  {
    v51 = v62;
    (v62)(v50, v7);
    sub_1D4F48F20();
    OUTLINED_FUNCTION_29();
    swift_allocError();
    *v52 = 1;
    swift_willThrow();
    v53 = OUTLINED_FUNCTION_13_8();
    return v51(v53);
  }

  else
  {
    v54 = OUTLINED_FUNCTION_13_8();
    v62(v54);
    OUTLINED_FUNCTION_24_0();
    return (*(v55 + 32))(v57, v50, a3);
  }
}

uint64_t sub_1D4F56EB4(uint64_t a1)
{
  *(v1 + 152) = a1;
  OUTLINED_FUNCTION_57_1();
  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1D4F56EE0()
{
  v1 = v0[19];
  v2 = swift_task_alloc();
  *(v2 + 16) = v1;
  v3 = objc_allocWithZone(MEMORY[0x1E69E4618]);
  v4 = sub_1D55F6F50(sub_1D4F5A488, v2);
  v0[20] = v4;

  v5 = [objc_opt_self() sharedBagProvider];
  v0[21] = v5;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1D4F5707C;
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC3B8, &qword_1D5620C68);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D4F40510;
  v0[13] = &block_descriptor_1;
  v0[14] = v6;
  [v5 getBagForRequestContext:v4 withCompletionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D4F5707C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 176) = *(v3 + 48);
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D4F57180()
{
  OUTLINED_FUNCTION_60();
  v1 = *(v0 + 160);

  v2 = *(v0 + 144);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1D4F571E8(uint64_t a1)
{
  v23 = v1;
  v2 = v1[21];
  v3 = v1[20];
  swift_willThrow();

  if (qword_1EC7E90A8 != -1)
  {
    OUTLINED_FUNCTION_0_28();
    swift_once();
  }

  v4 = v1[22];
  v5 = sub_1D560C758();
  __swift_project_value_buffer(v5, qword_1EC87C2B8);
  v6 = v4;
  v7 = sub_1D560C738();
  v8 = sub_1D56156C8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = v1[22];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v10 = 136315138;
    v1[10] = v9;
    v12 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB730, &qword_1D5621A30);
    v13 = sub_1D5614DB8();
    v15 = sub_1D4E6835C(v13, v14, &v22);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_1D4E3F000, v7, v8, "Failed loading bag with error: %s.", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200](v16);
    OUTLINED_FUNCTION_12_4();
    MEMORY[0x1DA6ED200](v17);
  }

  v18 = v1[22];
  sub_1D4F48F20();
  OUTLINED_FUNCTION_29();
  swift_allocError();
  *v19 = 0;
  swift_willThrow();

  OUTLINED_FUNCTION_55();

  return v20();
}

uint64_t sub_1D4F573D4()
{
  OUTLINED_FUNCTION_60();
  v0[19] = v1;
  v2 = sub_1D560D428();
  v0[20] = v2;
  OUTLINED_FUNCTION_69(v2);
  v0[21] = v3;
  v0[22] = OUTLINED_FUNCTION_127();
  v4 = sub_1D560CD48();
  v0[23] = v4;
  OUTLINED_FUNCTION_69(v4);
  v0[24] = v5;
  v0[25] = swift_task_alloc();
  v0[26] = swift_task_alloc();
  v6 = type metadata accessor for MusicRequestConfiguration(0);
  v0[27] = v6;
  OUTLINED_FUNCTION_22(v6);
  v0[28] = OUTLINED_FUNCTION_127();
  v7 = sub_1D560B918();
  OUTLINED_FUNCTION_22(v7);
  v0[29] = OUTLINED_FUNCTION_127();
  v8 = sub_1D560D388();
  v0[30] = v8;
  OUTLINED_FUNCTION_69(v8);
  v0[31] = v9;
  v0[32] = OUTLINED_FUNCTION_127();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_22(v10);
  v0[33] = OUTLINED_FUNCTION_127();
  v11 = sub_1D560C0A8();
  v0[34] = v11;
  OUTLINED_FUNCTION_69(v11);
  v0[35] = v12;
  v0[36] = swift_task_alloc();
  v0[37] = swift_task_alloc();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1D4F57624()
{
  v1 = v0[33];
  v2 = v0[34];
  sub_1D560C028();
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_1D4E7661C(v0[33], &unk_1EC7E9CA8, &unk_1D561D1D0);
    return sub_1D5615E08();
  }

  else
  {
    v5 = v0[36];
    v4 = v0[37];
    v7 = v0[34];
    v6 = v0[35];
    v8 = v0[28];
    v9 = v0[26];
    v10 = v0[24];
    v16 = v0[25];
    v17 = v0[23];
    v11 = v0[19];
    (*(v6 + 32))(v4, v0[33], v7);
    (*(v6 + 16))(v5, v4, v7);
    sub_1D560B908();
    sub_1D560D298();
    sub_1D4F5A490(v11, v8);
    OUTLINED_FUNCTION_3_19();
    sub_1D4F5A440(v12, v13, &protocol conformance descriptor for MusicRequestConfiguration);
    sub_1D560E6C8();
    (*(v10 + 16))(v16, v9, v17);
    sub_1D560D2B8();
    (*(v10 + 8))(v9, v17);
    sub_1D4F581B8(v8);
    v14 = swift_task_alloc();
    v0[38] = v14;
    *v14 = v0;
    v14[1] = sub_1D4F57900;
    v15 = v0[22];

    return MEMORY[0x1EEDCE5B0](v15);
  }
}

uint64_t sub_1D4F57900()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  *(v6 + 312) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D4F57A30()
{
  *(v0 + 112) = 100;
  v1 = objc_opt_self();
  sub_1D560D418();
  v2 = sub_1D560C168();
  v3 = OUTLINED_FUNCTION_159();
  sub_1D4E55E1C(v3, v4);
  *(v0 + 120) = 0;
  v5 = [v1 propertyListWithData:v2 options:0 format:v0 + 112 error:v0 + 120];

  v6 = *(v0 + 120);
  if (!v5)
  {
    v12 = v6;
    v13 = *(v0 + 280);
    v58 = *(v0 + 272);
    v61 = *(v0 + 296);
    v14 = *(v0 + 248);
    v15 = *(v0 + 256);
    v16 = *(v0 + 240);
    v17 = *(v0 + 168);
    v18 = *(v0 + 176);
    v19 = *(v0 + 160);
    sub_1D560BE98();

    swift_willThrow();
    (*(v17 + 8))(v18, v19);
    (*(v14 + 8))(v15, v16);
    (*(v13 + 8))(v61, v58);
LABEL_15:
    OUTLINED_FUNCTION_6_23();

    OUTLINED_FUNCTION_55();

    return v53();
  }

  sub_1D56159A8();
  swift_unknownObjectRelease();
  sub_1D5614A88();
  v7 = sub_1D5614BD8();
  sub_1D4E5194C(v0 + 16, v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC7EC3C0, &unk_1D5620C70);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v63 = *(v0 + 296);
    v20 = *(v0 + 272);
    v21 = *(v0 + 280);
    v22 = *(v0 + 248);
    v23 = *(v0 + 256);
    v24 = *(v0 + 240);
    v25 = v7;
    v26 = *(v0 + 168);
    v27 = *(v0 + 176);
    v28 = *(v0 + 160);
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    (*(v26 + 8))(v27, v28);
    v29 = v25;
    (*(v22 + 8))(v23, v24);
    (*(v21 + 8))(v63, v20);
    goto LABEL_7;
  }

  v8 = *(v0 + 128);
  v9 = sub_1D4E4EFA0(0x6D617473656D6974, 0xE900000000000070);
  if (v10)
  {
    v11 = v9;
    swift_isUniquelyReferenced_nonNull_native();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB4B0, &unk_1D5620C80);
    sub_1D5615D78();

    sub_1D4E519A8((*(v8 + 56) + 32 * v11), (v0 + 80));
    sub_1D5615D98();
  }

  else
  {
    *(v0 + 80) = 0u;
    *(v0 + 96) = 0u;
  }

  v62 = (v0 + 16);
  sub_1D4E7661C(v0 + 80, &qword_1EC7E9F98, &qword_1D561C420);
  v32 = objc_opt_self();
  v33 = sub_1D5614BA8();

  *(v0 + 136) = 0;
  v34 = [v32 dataWithJSONObject:v33 options:0 error:v0 + 136];

  v35 = *(v0 + 136);
  if (!v34)
  {
    v45 = v35;
    v46 = *(v0 + 280);
    v57 = *(v0 + 272);
    v60 = *(v0 + 296);
    v47 = *(v0 + 248);
    v48 = *(v0 + 256);
    v49 = *(v0 + 240);
    v50 = *(v0 + 168);
    v51 = *(v0 + 176);
    v52 = *(v0 + 160);
    sub_1D560BE98();

    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(v62);
    (*(v50 + 8))(v51, v52);
    (*(v47 + 8))(v48, v49);
    (*(v46 + 8))(v60, v57);
    goto LABEL_15;
  }

  v36 = *(v0 + 312);
  v37 = sub_1D560C198();
  v54 = v38;
  v55 = v37;

  sub_1D560B9C8();
  swift_allocObject();
  sub_1D560B9B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB890, &qword_1D5620C60);
  sub_1D4F31CF4();
  sub_1D560B948();
  v64 = *(v0 + 296);
  v39 = *(v0 + 280);
  v40 = *(v0 + 248);
  v56 = *(v0 + 256);
  v59 = *(v0 + 272);
  v41 = *(v0 + 240);
  v43 = *(v0 + 168);
  v42 = *(v0 + 176);
  v44 = *(v0 + 160);

  sub_1D4E55E1C(v55, v54);
  __swift_destroy_boxed_opaque_existential_1(v62);
  (*(v43 + 8))(v42, v44);
  (*(v40 + 8))(v56, v41);
  (*(v39 + 8))(v64, v59);
  if (v36)
  {
    goto LABEL_15;
  }

  v29 = *(v0 + 144);
LABEL_7:
  OUTLINED_FUNCTION_6_23();

  v30 = *(v0 + 8);

  return v30(v29);
}

uint64_t sub_1D4F5809C()
{
  (*(v0[31] + 8))(v0[32], v0[30]);
  v1 = OUTLINED_FUNCTION_159();
  v2(v1);
  OUTLINED_FUNCTION_6_23();

  OUTLINED_FUNCTION_55();

  return v3();
}

uint64_t sub_1D4F581B8(uint64_t a1)
{
  v2 = type metadata accessor for MusicRequestConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for Bag(uint64_t a1)
{
  result = qword_1EDD549B0;
  if (!qword_1EDD549B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Bag.init(rawUnderlyingBag:)(uint64_t a1)
{
  swift_unknownObjectRetain();
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = v1;
    type metadata accessor for Bag.UnderlyingBagWrapper();
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    type metadata accessor for Bag(0);
    OUTLINED_FUNCTION_24_10();
    *v4 = v3;
    *(v4 + 8) = 0;
    sub_1D502EF3C();

    return swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000016, 0x80000001D567F7B0);
    sub_1D5615D48();
    MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
    result = sub_1D5615E08();
    __break(1u);
  }

  return result;
}

void sub_1D4F583E0(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v167 = a6;
  v172 = a4;
  v177 = a3;
  v185 = *MEMORY[0x1E69E9840];
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13();
  v170 = v13;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_135();
  v169 = v15;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v16);
  v168 = &v163 - v17;
  v176 = sub_1D56158D8();
  OUTLINED_FUNCTION_4();
  v174 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_13();
  v163 = v20;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_135();
  v164 = v22;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_135();
  v165 = v24;
  OUTLINED_FUNCTION_23();
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v163 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = &v163 - v30;
  v32 = MEMORY[0x1EEE9AC00](v29);
  v34 = &v163 - v33;
  v35 = MEMORY[0x1EEE9AC00](v32);
  v37 = &v163 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v166 = &v163 - v38;
  v175 = a7;
  OUTLINED_FUNCTION_20_12(a7, 1);
  *&v182 = 46;
  *(&v182 + 1) = 0xE100000000000000;
  v181 = &v182;

  v173 = a1;
  v39 = sub_1D510DDD4(1, 1, sub_1D4F5A35C, v180, a1, a2);
  v40 = v39;
  v178 = v7;
  if (v39[2] != 2)
  {
    v55 = v177;

    v56 = sub_1D560C0A8();
    if (v56 == a5)
    {
      v76 = v56;
      OUTLINED_FUNCTION_7_24();
      v77 = sub_1D5614D38();
      v78 = [v55 urlForBagKey_];

      v79 = a5;
      if (v78)
      {
        v80 = v169;
        sub_1D560BFC8();

        v81 = 0;
      }

      else
      {
        v81 = 1;
        v80 = v169;
      }

      v111 = v176;
      (*(v174 + 8))(v175, v176);
      __swift_storeEnumTagSinglePayload(v80, v81, 1, v76);
      v112 = v168;
      sub_1D4F5A3D0(v80, v168);
      sub_1D4F5A3D0(v112, v170);
      v113 = swift_dynamicCast();
      __swift_storeEnumTagSinglePayload(v37, v113 ^ 1u, 1, v79);
      v114 = OUTLINED_FUNCTION_159();
      v117 = v111;
    }

    else
    {
      if (a5 != MEMORY[0x1E69E6158])
      {
        if (a5 == MEMORY[0x1E69E7360])
        {
          OUTLINED_FUNCTION_7_24();
          v93 = sub_1D5614D38();
          v94 = [v55 int64ValueForBagKey_];

          v95 = OUTLINED_FUNCTION_23_16();
          v96 = v176;
          v97(v95, v176);
          *&v182 = v94;
          v98 = swift_dynamicCast();
          OUTLINED_FUNCTION_31_4(v31, v98 ^ 1u);
          (v40[4])(v34, v31, v96);
          return;
        }

        if (a5 == MEMORY[0x1E69E6370])
        {
          OUTLINED_FUNCTION_7_24();
          v118 = sub_1D5614D38();
          v119 = [v55 BOOLValueForBagKey_];

          OUTLINED_FUNCTION_23_16();
          OUTLINED_FUNCTION_25_23();
          v120();
          LOBYTE(v182) = v119;
          v121 = swift_dynamicCast();
          OUTLINED_FUNCTION_31_4(v28, v121 ^ 1u);
          (v40[4])(v34, v28, a1);
          return;
        }

        v57 = dynamic_cast_existential_1_conditional(a5, a5, MEMORY[0x1E69E6D68]);
        if (v57)
        {
          v59 = v57;
          v60 = v58;
          v171 = a5;
          OUTLINED_FUNCTION_7_24();
          v61 = sub_1D5614D38();
          v62 = [v55 numberForBagKey_];

          if (v62)
          {
            v179 = [v62 longLongValue];
            v63 = sub_1D56158D8();
            OUTLINED_FUNCTION_4();
            v65 = v64;
            MEMORY[0x1EEE9AC00](v66);
            v68 = &v163 - v67;
            v69 = *(*(v60 + 8) + 24);
            sub_1D4F5A37C();
            sub_1D56155E8();
            if (__swift_getEnumTagSinglePayload(v68, 1, v59) == 1)
            {
              v70 = v174;
              v71 = v175;
              OUTLINED_FUNCTION_25_23();
              v72();

              v73 = v70;
              v74 = v63;
              v75 = v69;
              (*(v65 + 8))(v68, v74);
              v182 = 0u;
              v183 = 0u;
              v184 = 0;
            }

            else
            {
              *(&v183 + 1) = v59;
              v184 = v60;
              __swift_allocate_boxed_opaque_existential_0(&v182);
              OUTLINED_FUNCTION_24_0();
              (*(v137 + 32))();

              v73 = v174;
              v71 = v175;
              v75 = v176;
              (*(v174 + 8))(v175, v176);
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC3A8, &unk_1D5620C50);
            v138 = v165;
            v139 = v171;
            v140 = swift_dynamicCast();
            __swift_storeEnumTagSinglePayload(v138, v140 ^ 1u, 1, v139);
            (*(v73 + 32))(v71, v138, v75);
          }

          return;
        }

        if (dynamic_cast_existential_1_conditional(a5, a5, MEMORY[0x1E69E5D50]))
        {
          OUTLINED_FUNCTION_7_24();
          v126 = sub_1D5614D38();
          v127 = [v55 numberForBagKey_];

          if (v127)
          {
            OUTLINED_FUNCTION_24_0();
            MEMORY[0x1EEE9AC00](v128);
            [v127 doubleValue];
            sub_1D5614B98();

            v130 = v174;
            v129 = v175;
            OUTLINED_FUNCTION_25_23();
            v131();
            v132 = v164;
            v133 = swift_dynamicCast();
            OUTLINED_FUNCTION_20_12(v132, v133 ^ 1u);
            (*(v130 + 32))(v129, v132, a1);
          }

          return;
        }

        v141 = v55;
        if (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780) == a5 || __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBFA0, &qword_1D5620C40) == a5)
        {
          OUTLINED_FUNCTION_7_24();
          v152 = sub_1D5614D38();
          v153 = [v141 arrayForBagKey_];

          if (v153)
          {
            v154 = sub_1D5615168();
          }

          else
          {
            v154 = 0;
          }

          v155 = v174;
          v156 = v175;
          v157 = v163;
          *&v182 = v154;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC398, &qword_1D5620C48);
          if (swift_dynamicCast())
          {
            (*(v155 + 8))(v156, v176);
            OUTLINED_FUNCTION_20_12(v157, 0);
            OUTLINED_FUNCTION_24_0();
            (*(v158 + 32))(v156, v157, a5);
            OUTLINED_FUNCTION_20_12(v156, 0);
          }

          else
          {
            OUTLINED_FUNCTION_20_12(v157, 1);
            v159 = *(v155 + 8);
            v160 = v157;
            v161 = v176;
            v159(v160, v176);
            sub_1D4F48F20();
            OUTLINED_FUNCTION_29();
            swift_allocError();
            *v162 = 2;
            swift_willThrow();
            v159(v156, v161);
          }

          return;
        }

        if (qword_1EC7E90A8 == -1)
        {
LABEL_44:
          v142 = sub_1D560C758();
          __swift_project_value_buffer(v142, qword_1EC87C2B8);

          v143 = sub_1D560C738();
          v144 = sub_1D56156C8();

          if (os_log_type_enabled(v143, v144))
          {
            v145 = swift_slowAlloc();
            *&v182 = swift_slowAlloc();
            *v145 = 136315394;
            v146 = OUTLINED_FUNCTION_7_24();
            *(v145 + 4) = sub_1D4E6835C(v146, v147, v148);
            *(v145 + 12) = 2080;
            v149 = sub_1D5616458();
            v151 = sub_1D4E6835C(v149, v150, &v182);

            *(v145 + 14) = v151;
            _os_log_impl(&dword_1D4E3F000, v143, v144, "Failed fetching bag value for key %s. Requested value type %s is not supported.", v145, 0x16u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_12_4();
            MEMORY[0x1DA6ED200]();
            OUTLINED_FUNCTION_12_4();
            MEMORY[0x1DA6ED200]();
          }

          return;
        }

LABEL_54:
        OUTLINED_FUNCTION_0_28();
        swift_once();
        goto LABEL_44;
      }

      OUTLINED_FUNCTION_7_24();
      v85 = sub_1D5614D38();
      v86 = [v55 stringForBagKey_];

      if (v86)
      {
        v87 = sub_1D5614D68();
        v89 = v88;
      }

      else
      {
        v87 = 0;
        v89 = 0;
      }

      v123 = v174;
      v122 = v175;
      OUTLINED_FUNCTION_25_23();
      v124();
      *&v182 = v87;
      *(&v182 + 1) = v89;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC3B0, &qword_1D5630D90);
      v125 = swift_dynamicCast();
      OUTLINED_FUNCTION_31_4(v34, v125 ^ 1u);
      v116 = *(v123 + 32);
      v114 = v122;
      v115 = v34;
      v117 = a1;
    }

    v116(v114, v115, v117);
    return;
  }

  v171 = a5;
  v42 = v39[4];
  v41 = v39[5];
  v43 = v39[6];
  v44 = v39[7];

  MEMORY[0x1DA6EABE0](v42, v41, v43, v44);

  v45 = sub_1D5614D38();

  v46 = [v177 dictionaryForBagKey_];

  if (!v46)
  {
    goto LABEL_27;
  }

  sub_1D5614BB8();

  v47 = objc_opt_self();
  v48 = sub_1D5614BA8();

  *&v182 = 0;
  v49 = [v47 dataWithJSONObject:v48 options:0 error:&v182];

  v50 = v182;
  if (!v49)
  {
    v82 = v50;

    sub_1D560BE98();

    swift_willThrow();
    v83 = OUTLINED_FUNCTION_17_15();
    v84(v83);
    return;
  }

  v51 = sub_1D560C198();
  v53 = v52;

  if (v172)
  {
    v54 = v172;
  }

  else
  {
    sub_1D560B9C8();
    swift_allocObject();
    v54 = sub_1D560B9B8();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB890, &qword_1D5620C60);
  sub_1D4F31CF4();

  OUTLINED_FUNCTION_21_1();
  v90 = v178;
  sub_1D560B948();
  if (v90)
  {
    v91 = OUTLINED_FUNCTION_17_15();
    v92(v91);

    sub_1D4E55E1C(v51, v53);
LABEL_27:

    return;
  }

  v178 = 0;
  if (v40[2] < 2uLL)
  {
    __break(1u);
    goto LABEL_54;
  }

  v99 = v182;
  v100 = v40[8];
  v101 = v40[9];
  v102 = v40[10];
  v103 = v40[11];

  v104 = MEMORY[0x1DA6EABE0](v100, v101, v102, v103);
  v106 = v105;

  v107 = v166;
  v108 = v178;
  sub_1D4F593CC(v104, v106, v54, v171, v167, v166);
  if (v108)
  {
    v109 = OUTLINED_FUNCTION_17_15();
    v110(v109);

    sub_1D4E55E1C(v51, v53);

    goto LABEL_27;
  }

  v178 = v99;
  v135 = v174;
  v134 = v175;
  v136 = v176;
  (*(v174 + 8))(v175, v176);

  sub_1D4E55E1C(v51, v53);

  (*(v135 + 32))(v134, v107, v136);
}