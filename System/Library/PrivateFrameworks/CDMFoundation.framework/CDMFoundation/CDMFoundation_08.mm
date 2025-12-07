void sub_1DC347920()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  LODWORD(v93) = v2;
  v4 = v3;
  v86 = v5;
  v87 = v6;
  v94 = v7;
  v8 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_8();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v89 = &v81 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CA30, &qword_1DC522A00);
  MEMORY[0x1EEE9AC00](v17 - 8);
  OUTLINED_FUNCTION_15();
  v84 = v18;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_23_1();
  v85 = v20;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v81 - v22;
  sub_1DC510B6C();
  OUTLINED_FUNCTION_0();
  v90 = v25;
  v91 = v24;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_15();
  v83 = v26;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_23_1();
  v88 = v28;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v81 - v30;
  v32 = [objc_allocWithZone(MEMORY[0x1E69CF2F8]) init];
  if (!v32)
  {
    sub_1DC28D414();
    v39 = OUTLINED_FUNCTION_9_12();
    v40(v39);
    v41 = sub_1DC516F6C();
    v42 = sub_1DC517BAC();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_18_12(v43);
      OUTLINED_FUNCTION_16_6(&dword_1DC287000, v44, v42, "Failed to create CDM failed event");
      OUTLINED_FUNCTION_40_0();
    }

    (*(v10 + 8))(v14, v8);
    goto LABEL_32;
  }

  v81 = v8;
  v92 = v32;
  [v32 setReason_];
  v93 = v1;
  v33 = v4;
  v34 = sub_1DC516A2C();
  if (v34)
  {
    v35 = v34;
    v82 = [objc_allocWithZone(MEMORY[0x1E69CF2E8]) init];
    if (!v82)
    {
      v47 = sub_1DC28D414();
      v48 = v10;
      v49 = v89;
      v50 = v81;
      (*(v10 + 16))(v89, v47, v81);
      v51 = sub_1DC516F6C();
      v52 = sub_1DC517BAC();
      if (OUTLINED_FUNCTION_14_7(v52))
      {
        v53 = v35;
        v54 = OUTLINED_FUNCTION_35_8();
        *v54 = 0;
        OUTLINED_FUNCTION_20_2(&dword_1DC287000, v55, v56, "Failed to create CDM bridge context message");
        MEMORY[0x1E1298840](v54, -1, -1);
      }

      else
      {
      }

      (*(v48 + 8))(v49, v50);
      goto LABEL_32;
    }

    v89 = v35;
    v36 = v91;
    v37 = v82;
    if (v33)
    {
      sub_1DC510B0C();
      OUTLINED_FUNCTION_39(v23, 1, v36);
      if (v38)
      {
        sub_1DC348714(v23);
      }

      else
      {
        v57 = v90;
        OUTLINED_FUNCTION_128();
        v58(v31, v23, v36);
        sub_1DC34877C();
        OUTLINED_FUNCTION_3_13();
        v59 = v88;
        v60(v88, v31, v36);
        v61 = sub_1DC299428(v59);
        [v37 setTrpId_];

        (*(v57 + 8))(v31, v36);
      }
    }

    [v37 setFailed_];
    v62 = v93;
    v63 = v93[7];
    v64 = v93[8];
    __swift_project_boxed_opaque_existential_1(v93 + 4, v63);
    v65 = (*(v64 + 8))(v63, v64);
    v66 = v89;
    if (v65)
    {
      v67 = v85;
      sub_1DC510B0C();
      OUTLINED_FUNCTION_39(v67, 1, v36);
      if (v38)
      {
        sub_1DC348714(v67);
      }

      else
      {
        v68 = v90;
        v69 = v83;
        (*(v90 + 32))(v83, v67, v36);
        sub_1DC34877C();
        v70 = v88;
        (*(v68 + 16))(v88, v69, v36);
        v71 = sub_1DC299428(v70);
        [v82 setSubRequestId_];

        v72 = v68;
        v37 = v82;
        (*(v72 + 8))(v69, v36);
      }
    }

    [v66 setCdmBridgeContext_];
    [v62[2] emitMessage_];
    v73 = sub_1DC516A1C();
    if (!v73 || (v74 = v73, v75 = [v73 captureSnapshot], v74, !v75))
    {

LABEL_31:
LABEL_32:
      OUTLINED_FUNCTION_34();
      return;
    }

    v76 = [objc_opt_self() context];
    if (v76)
    {
      v77 = v76;
      v78 = v84;
      sub_1DC510B0C();
      v79 = OUTLINED_FUNCTION_39(v78, 1, v36);
      if (v38)
      {
        v80 = 0;
      }

      else
      {
        v80 = sub_1DC510B2C();
        v79 = (*(v90 + 8))(v78, v36);
      }

      OUTLINED_FUNCTION_13_10(v79, sel_logWithEventContext_requestIdentifier_);

      goto LABEL_31;
    }

    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_34();
  }
}

void sub_1DC347FF0()
{
  OUTLINED_FUNCTION_33();
  v26 = v1;
  v2 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - v10;
  v12 = sub_1DC516A2C();
  if (!v12)
  {
    sub_1DC28D414();
    OUTLINED_FUNCTION_19_1();
    v18(v8);
    v19 = sub_1DC516F6C();
    v20 = sub_1DC517BAC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_18_12(v21);
      _os_log_impl(&dword_1DC287000, v19, v20, "Failed to create wrapper event for logNLV3ServerFallbackDeprecated", v11, 2u);
      OUTLINED_FUNCTION_40_0();
    }

    (*(v4 + 8))(v8, v2);
    goto LABEL_13;
  }

  v13 = v12;
  v14 = [objc_allocWithZone(MEMORY[0x1E69CF3A8]) init];
  if (!v14)
  {
    sub_1DC28D414();
    OUTLINED_FUNCTION_19_1();
    v22(v11);
    v23 = sub_1DC516F6C();
    v24 = sub_1DC517BAC();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = OUTLINED_FUNCTION_35_8();
      *v25 = 0;
      _os_log_impl(&dword_1DC287000, v23, v24, "Failed to create nlV3ServerFallbackDeprecated event", v25, 2u);
      MEMORY[0x1E1298840](v25, -1, -1);
    }

    else
    {
    }

    (*(v4 + 8))(v11, v2);
LABEL_13:
    OUTLINED_FUNCTION_34();
    return;
  }

  v27 = v14;
  v15 = sub_1DC3482AC(v26);
  [v27 setFallbackReason_];
  [v13 setNlv3ServerFallbackDeprecated_];
  [*(v0 + 16) emitMessage_];

  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC3482AC(uint64_t a1)
{
  v2 = sub_1DC5161DC();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  v8 = v7 - v6;
  v9 = OUTLINED_FUNCTION_9_12();
  v10(v9, a1, v2);
  v11 = (*(v4 + 88))(v8, v2);
  if (v11 == *MEMORY[0x1E69D0768])
  {
    return 5;
  }

  if (v11 == *MEMORY[0x1E69D0770])
  {
    return 4;
  }

  if (v11 == *MEMORY[0x1E69D0758])
  {
    return 2;
  }

  if (v11 == *MEMORY[0x1E69D0780])
  {
    return 3;
  }

  if (v11 == *MEMORY[0x1E69D0760])
  {
    return 1;
  }

  if (v11 == *MEMORY[0x1E69D0778])
  {
    return 6;
  }

  if (v11 != *MEMORY[0x1E69D0788])
  {
    (*(v4 + 8))(v8, v2);
  }

  return 0;
}

void sub_1DC348448()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1DC510B6C();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  v12 = v11 - v10;
  v13 = [objc_allocWithZone(MEMORY[0x1E69CF2A8]) init];
  if (!v13)
  {
    goto LABEL_6;
  }

  v25 = v13;
  v14 = [objc_allocWithZone(MEMORY[0x1E69CF2A0]) init];
  if (v14)
  {
    v24 = v14;
    v15 = [objc_allocWithZone(MEMORY[0x1E69CF180]) init];
    if (v15)
    {
      v23 = v15;
      v16 = [objc_allocWithZone(MEMORY[0x1E69CF190]) init];
      if (v16)
      {
        v17 = v16;
        sub_1DC34877C();
        v18 = *(v8 + 16);
        v18(v12, v3, v6);
        v19 = sub_1DC299428(v12);
        [v25 setNlId_];

        sub_1DC3487C0(48, 0xE100000000000000, v25);
        v18(v12, v5, v6);
        v20 = sub_1DC299428(v12);
        [v17 setRequestId_];

        [v23 setSiriClientSetupLink_];
        [v24 setEventMetadata_];
        [v24 setCdmSetupLink_];
        [*(v1 + 16) emitMessage_];

LABEL_6:
        OUTLINED_FUNCTION_34();
        return;
      }
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC3486B0()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  return v0;
}

uint64_t sub_1DC3486E0()
{
  sub_1DC3486B0();

  return MEMORY[0x1EEE6BDC0](v0, 72, 7);
}

uint64_t sub_1DC348714(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CA30, &qword_1DC522A00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DC34877C()
{
  result = qword_1ECC7B9C8;
  if (!qword_1ECC7B9C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECC7B9C8);
  }

  return result;
}

void sub_1DC3487C0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DC5176FC();

  [a3 setResultCandidateId_];
}

uint64_t sub_1DC348848()
{
  v0 = sub_1DC5172FC();
  __swift_allocate_value_buffer(v0, qword_1ECC8F7C8);
  v1 = __swift_project_value_buffer(v0, qword_1ECC8F7C8);
  v2 = swift_allocObject();
  v2[2] = 0xD000000000000028;
  v2[3] = 0x80000001DC540200;
  v2[4] = 0xD00000000000001BLL;
  v2[5] = 0x80000001DC524BB0;
  *v1 = v2;
  v3 = *MEMORY[0x1E69DB098];
  v4 = *(*(v0 - 8) + 104);

  return v4(v1, v3, v0);
}

uint64_t sub_1DC348924(uint64_t a1)
{
  v2 = sub_1DC5172FC();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DC51721C();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, a1, v8);
  if (qword_1ECC7FC10 != -1)
  {
    OUTLINED_FUNCTION_0_19(&qword_1ECC7FC10);
  }

  v14 = __swift_project_value_buffer(v2, qword_1ECC8F7C8);
  (*(v4 + 16))(v7, v14, v2);
  v15 = sub_1DC303854(v13, v7, &unk_1F57F7CF8);
  (*(v10 + 8))(a1, v8);
  return v15;
}

uint64_t sub_1DC348ADC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECC7FC10 != -1)
  {
    OUTLINED_FUNCTION_0_19(&qword_1ECC7FC10);
  }

  v2 = sub_1DC5172FC();
  __swift_project_value_buffer(v2, qword_1ECC8F7C8);
  OUTLINED_FUNCTION_2_5();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t sub_1DC348B68@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DC348924(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1DC348BA8()
{
  v0 = sub_1DC5172FC();
  __swift_allocate_value_buffer(v0, qword_1ECC8F7E0);
  v1 = OUTLINED_FUNCTION_43();
  v3 = __swift_project_value_buffer(v1, v2);
  v4 = swift_allocObject();
  v4[2] = 0xD000000000000028;
  v4[3] = 0x80000001DC540200;
  v4[4] = 0xD000000000000012;
  v4[5] = 0x80000001DC524C20;
  *v3 = v4;
  OUTLINED_FUNCTION_7_1();
  v6 = *(v5 + 104);

  return v6(v3);
}

uint64_t sub_1DC348C7C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFF8, &qword_1DC522580);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v52 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v52 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v52 - v14;
  v16 = sub_1DC5172FC();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DC5171CC();
  if (qword_1ECC82CE8 != -1)
  {
    OUTLINED_FUNCTION_0_20(&qword_1ECC82CE8);
  }

  __swift_project_value_buffer(v16, qword_1ECC8F7E0);
  v20 = sub_1DC5172DC();
  (*(v17 + 8))(v19, v16);
  if (v20)
  {
    v21 = sub_1DC5171EC();
    sub_1DC30F668(0x656D614E64726163, 0xE800000000000000, v21, v15);

    v22 = sub_1DC5172AC();
    OUTLINED_FUNCTION_3_3(v15);
    if (v23)
    {
      sub_1DC30F72C(v15);
    }

    else
    {
      sub_1DC382AC0();
      v53 = v34;
      v36 = v35;
      OUTLINED_FUNCTION_7_1();
      (*(v37 + 8))(v15, v22);
      v52 = v36;
      if (v36)
      {
LABEL_10:
        v38 = sub_1DC5171EC();
        sub_1DC30F668(0x614E6E6F73726570, 0xEA0000000000656DLL, v38, v13);

        OUTLINED_FUNCTION_3_3(v13);
        if (v23)
        {
          sub_1DC30F72C(v13);
        }

        else
        {
          sub_1DC382AC0();
          v28 = v39;
          v29 = v40;
          OUTLINED_FUNCTION_7_1();
          (*(v41 + 8))(v13, v22);
          if (v29)
          {
LABEL_15:
            v42 = sub_1DC5171EC();
            sub_1DC30F668(0x42676E6975737369, 0xEF7373656E697375, v42, v10);

            OUTLINED_FUNCTION_3_3(v10);
            if (v23)
            {
              sub_1DC30F72C(v10);
            }

            else
            {
              sub_1DC382AC0();
              v30 = v43;
              v31 = v44;
              OUTLINED_FUNCTION_7_1();
              (*(v45 + 8))(v10, v22);
              if (v31)
              {
LABEL_20:
                v46 = sub_1DC5171EC();
                sub_1DC30F668(0x5462755364726163, 0xEB00000000657079, v46, v7);

                OUTLINED_FUNCTION_3_3(v7);
                if (v23)
                {
                  sub_1DC30F72C(v7);
                }

                else
                {
                  sub_1DC382AC0();
                  v32 = v47;
                  v33 = v48;
                  OUTLINED_FUNCTION_7_1();
                  (*(v49 + 8))(v7, v22);
                  if (v33)
                  {
                    sub_1DC51721C();
                    OUTLINED_FUNCTION_7_1();
                    result = (*(v50 + 8))(a1);
LABEL_26:
                    v27 = v52;
                    v26 = v53;
                    goto LABEL_27;
                  }
                }

                sub_1DC51721C();
                OUTLINED_FUNCTION_7_1();
                (*(v51 + 8))(a1);

                v32 = 0;
                v33 = 0xE000000000000000;
                goto LABEL_26;
              }
            }

            v30 = 0;
            v31 = 0xE000000000000000;
            goto LABEL_20;
          }
        }

        v28 = 0;
        v29 = 0xE000000000000000;
        goto LABEL_15;
      }
    }

    v52 = 0xE000000000000000;
    v53 = 0;
    goto LABEL_10;
  }

  sub_1DC51721C();
  OUTLINED_FUNCTION_7_1();
  result = (*(v24 + 8))(a1);
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
LABEL_27:
  *a2 = v26;
  a2[1] = v27;
  a2[2] = v28;
  a2[3] = v29;
  a2[4] = v30;
  a2[5] = v31;
  a2[6] = v32;
  a2[7] = v33;
  return result;
}

uint64_t sub_1DC3491C8()
{
  v1 = v0;
  sub_1DC517F4C();
  MEMORY[0x1E1296160](0x656D614E64726143, 0xEA0000000000203ALL);
  MEMORY[0x1E1296160](*v1, v1[1]);
  MEMORY[0x1E1296160](0x6F73726550207C20, 0xEF203A656D614E6ELL);
  MEMORY[0x1E1296160](v1[2], v1[3]);
  MEMORY[0x1E1296160](0xD000000000000014, 0x80000001DC540D10);
  MEMORY[0x1E1296160](v1[4], v1[5]);
  MEMORY[0x1E1296160](0xD000000000000010, 0x80000001DC540D30);
  MEMORY[0x1E1296160](v1[6], v1[7]);
  return 0;
}

uint64_t sub_1DC3492CC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECC82CE8 != -1)
  {
    OUTLINED_FUNCTION_0_20(&qword_1ECC82CE8);
  }

  v2 = sub_1DC5172FC();
  __swift_project_value_buffer(v2, qword_1ECC8F7E0);
  OUTLINED_FUNCTION_7_1();
  v4 = *(v3 + 16);

  return v4(a1);
}

double sub_1DC349360@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1DC348C7C(a1, v6);
  v3 = v6[1];
  *a2 = v6[0];
  a2[1] = v3;
  result = *&v7;
  v5 = v8;
  a2[2] = v7;
  a2[3] = v5;
  return result;
}

uint64_t sub_1DC3493A4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1DC3493E4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DC349444()
{
  v0 = sub_1DC5172FC();
  __swift_allocate_value_buffer(v0, qword_1ECC8F7F8);
  v1 = __swift_project_value_buffer(v0, qword_1ECC8F7F8);
  v2 = swift_allocObject();
  v2[2] = 0xD000000000000028;
  v2[3] = 0x80000001DC540200;
  v2[4] = 0xD000000000000018;
  v2[5] = 0x80000001DC524C70;
  *v1 = v2;
  v3 = *MEMORY[0x1E69DB098];
  v4 = *(*(v0 - 8) + 104);

  return v4(v1, v3, v0);
}

uint64_t sub_1DC349520(uint64_t a1)
{
  v2 = sub_1DC5172FC();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DC51721C();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, a1, v8);
  if (qword_1ECC7FF90 != -1)
  {
    OUTLINED_FUNCTION_0_21(&qword_1ECC7FF90);
  }

  v14 = __swift_project_value_buffer(v2, qword_1ECC8F7F8);
  (*(v4 + 16))(v7, v14, v2);
  v15 = sub_1DC303854(v13, v7, &unk_1F57F7E88);
  (*(v10 + 8))(a1, v8);
  return v15;
}

uint64_t sub_1DC3496D4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECC7FF90 != -1)
  {
    OUTLINED_FUNCTION_0_21(&qword_1ECC7FF90);
  }

  v2 = sub_1DC5172FC();
  __swift_project_value_buffer(v2, qword_1ECC8F7F8);
  OUTLINED_FUNCTION_2_5();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t sub_1DC349760@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DC349520(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1DC349798@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v113 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CA40, &unk_1DC5233A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v102 = &v92 - v4;
  v111 = sub_1DC5157EC();
  OUTLINED_FUNCTION_0();
  v100 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  v99 = v8 - v7;
  v9 = sub_1DC51164C();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1();
  v15 = v14 - v13;
  v105 = sub_1DC51122C();
  OUTLINED_FUNCTION_0();
  v103 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_1();
  v104 = v19 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C158, &unk_1DC5234A0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v92 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C160, qword_1DC5233B0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v92 - v24;
  v26 = type metadata accessor for NLRouterNLParseResponse(0);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_1();
  v107 = v29 - v28;
  sub_1DC516F5C();
  OUTLINED_FUNCTION_0();
  v109 = v31;
  v110 = v30;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_1();
  v34 = v33 - v32;
  v35 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v36 = sub_1DC2BE518();
  v37 = OUTLINED_FUNCTION_130();
  v108 = v34;
  v112 = v35;
  sub_1DC2A2ED0("HeuristicRules.StopRecordingRule", 32, 2, v36, v37 & 1, v34);

  v38 = *(type metadata accessor for NLRouterServiceRequest(0) + 32);
  v101 = a1;
  sub_1DC28F358(a1 + v38, v22, &qword_1ECC7C158, &unk_1DC5234A0);
  v39 = type metadata accessor for NLRouterTurnProbingResult(0);
  if (__swift_getEnumTagSinglePayload(v22, 1, v39) == 1)
  {
    sub_1DC28EB30(v22, &qword_1ECC7C158, &unk_1DC5234A0);
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v40, v41, v42, v26);
LABEL_4:
    sub_1DC28EB30(v25, &qword_1ECC7C160, qword_1DC5233B0);
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v43, v44, v45, v111);
    v47 = v109;
    v46 = v110;
    v48 = v108;
LABEL_24:
    v74 = sub_1DC2BE518();
    sub_1DC2B8848(v48, "HeuristicRules.StopRecordingRule", 32, 2, v74);

    return (*(v47 + 8))(v48, v46);
  }

  sub_1DC28F358(v22, v25, &qword_1ECC7C160, qword_1DC5233B0);
  sub_1DC2E5408(v22, type metadata accessor for NLRouterTurnProbingResult);
  if (__swift_getEnumTagSinglePayload(v25, 1, v26) == 1)
  {
    goto LABEL_4;
  }

  v49 = v107;
  sub_1DC2E53A4(v25, v107);
  v50 = sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
  v51 = sub_1DC345A48();
  v53 = v52;
  if (v51 == sub_1DC312FB4(0) && v53 == v54)
  {

    goto LABEL_21;
  }

  v56 = sub_1DC51825C();

  if (v56)
  {
LABEL_21:
    OUTLINED_FUNCTION_4();
    v69 = v49;
    goto LABEL_22;
  }

  v58 = *v49;
  v59 = *(*v49 + 16);
  v95 = v50;
  v96 = v59;
  if (!v59)
  {
LABEL_19:
    OUTLINED_FUNCTION_4();
    v69 = v107;
LABEL_22:
    sub_1DC2E5408(v69, v68);
    v46 = v110;
    v70 = v111;
    v48 = v108;
    v47 = v109;
LABEL_23:
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v71, v72, v73, v70);
    goto LABEL_24;
  }

  v60 = 0;
  v61 = v58 + ((*(v103 + 80) + 32) & ~*(v103 + 80));
  v98 = (v103 + 8);
  v106 = xmmword_1DC522F20;
  v94 = v58;
  v93 = v61;
  v92 = v103 + 16;
LABEL_12:
  if (v60 < *(v58 + 16))
  {
    (*(v103 + 16))(v104, v61 + *(v103 + 72) * v60, v105);
    v97 = v60 + 1;
    result = sub_1DC5111AC();
    v62 = result;
    v63 = 0;
    v64 = *(result + 16);
    do
    {
      if (v64 == v63)
      {
        (*v98)(v104, v105);

        v60 = v97;
        v58 = v94;
        v61 = v93;
        if (v97 != v96)
        {
          goto LABEL_12;
        }

        goto LABEL_19;
      }

      if (v63 >= *(v62 + 16))
      {
        __break(1u);
        goto LABEL_34;
      }

      (*(v11 + 16))(v15, v62 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v63++, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CC70, &qword_1DC52F250);
      v65 = swift_allocObject();
      *(v65 + 16) = v106;
      *(v65 + 32) = sub_1DC51393C();
      sub_1DC30AD70();
      v67 = v66;

      result = (*(v11 + 8))(v15, v9);
    }

    while ((v67 & 1) == 0);
    (*v98)(v104, v105);

    v75 = sub_1DC345A48();
    v77 = sub_1DC312F68(v75, v76);
    if (v77 == 4)
    {
      OUTLINED_FUNCTION_4();
      sub_1DC2E5408(v107, v78);
      v79 = v102;
      OUTLINED_FUNCTION_19();
      v70 = v111;
      __swift_storeEnumTagSinglePayload(v80, v81, v82, v111);
      v47 = v109;
      v46 = v110;
      v48 = v108;
LABEL_29:
      sub_1DC28EB30(v79, &qword_1ECC7CA40, &unk_1DC5233A0);
      goto LABEL_23;
    }

    v79 = v102;
    sub_1DC312E7C(v77, v102);
    v70 = v111;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v79, 1, v111);
    v47 = v109;
    v46 = v110;
    v48 = v108;
    if (EnumTagSinglePayload == 1)
    {
      OUTLINED_FUNCTION_4();
      sub_1DC2E5408(v107, v84);
      goto LABEL_29;
    }

    v86 = v99;
    v85 = v100;
    v87 = *(v100 + 32);
    v87(v99, v79, v70);
    type metadata accessor for HeuristicRoutingRequest(0);
    sub_1DC32FD38();
    v89 = v88;
    OUTLINED_FUNCTION_4();
    sub_1DC2E5408(v107, v90);
    if (v89)
    {
      v91 = v113;
      v87(v113, v86, v70);
      __swift_storeEnumTagSinglePayload(v91, 0, 1, v70);
      goto LABEL_24;
    }

    (*(v85 + 8))(v86, v70);
    goto LABEL_23;
  }

LABEL_34:
  __break(1u);
  return result;
}

void sub_1DC34A028()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v47 = v4;
  v48 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_1();
  v46 = v5;
  OUTLINED_FUNCTION_12();
  v59 = sub_1DC5119DC();
  v6 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59 - 8);
  OUTLINED_FUNCTION_8();
  v53 = v7 - v8;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v52 = &v46 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v57 = &v46 - v12;
  OUTLINED_FUNCTION_12();
  v13 = sub_1DC51620C();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1();
  v19 = v18 - v17;
  v20 = __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  (*(v15 + 104))(v19, *MEMORY[0x1E69D07F0], v13);
  sub_1DC5162AC();
  (*(v15 + 8))(v19, v13);
  if (!v61[3])
  {
    sub_1DC31405C(v61);
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CCF0, &unk_1DC5253B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v55 = 0;
    v21 = MEMORY[0x1E69E7CC0];
    v61[0] = MEMORY[0x1E69E7CC0];
    goto LABEL_6;
  }

  v21 = v60;
  v61[0] = v60;
  v55 = v60[2];
LABEL_6:
  v22 = 0;
  v58 = v6 + 16;
  v56 = v6 + 8;
  while (1)
  {
    v23 = v21[2];
    if (v55 == v22)
    {
      v22 = v21[2];
      goto LABEL_29;
    }

    if (v22 >= v23)
    {
      break;
    }

    v24 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v25 = *(v6 + 72);
    v26 = *(v6 + 16);
    v27 = OUTLINED_FUNCTION_6_13();
    v26(v27);
    sub_1DC34A5EC();
    v29 = v28;
    v30 = *(v6 + 8);
    v30(v20, v0);
    ++v22;
    if (v29)
    {
      v31 = v21[2];
      v23 = v22 - 1;
      if (v31 != v22)
      {
        v49 = (v6 + 40);
        v32 = v24 + v25 * v22;
        while (v22 < v31)
        {
          v54 = v21;
          v33 = OUTLINED_FUNCTION_6_13();
          v26(v33);
          sub_1DC34A5EC();
          v35 = v34;
          v30(v20, v0);
          if (v35)
          {
            v21 = v54;
          }

          else
          {
            if (v22 == v23)
            {
              v21 = v54;
            }

            else
            {
              v21 = v54;
              if ((v23 & 0x8000000000000000) != 0)
              {
                goto LABEL_36;
              }

              if (v23 >= v54[2])
              {
                goto LABEL_37;
              }

              v51 = v54[2];
              v50 = v23 * v25;
              v36 = v59;
              (v26)(v52, v54 + v24 + v23 * v25, v59);
              if (v22 >= v51)
              {
                goto LABEL_38;
              }

              (v26)(v53, v21 + v32, v36);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v21 = sub_1DC34B7DC(v21);
              }

              v20 = v49;
              v0 = v59;
              v54 = *v49;
              (v54)(v21 + v24 + v50, v53, v59);
              if (v22 >= v21[2])
              {
                goto LABEL_39;
              }

              (v54)(v21 + v32, v52, v0);
              v61[0] = v21;
            }

            ++v23;
          }

          ++v22;
          v31 = v21[2];
          v32 += v25;
          if (v22 == v31)
          {
            if (v22 < v23)
            {
              goto LABEL_40;
            }

            goto LABEL_29;
          }
        }

        goto LABEL_35;
      }

LABEL_29:
      sub_1DC34B644(v23, v22);
      v37 = *(v61[0] + 16);
      v38 = v55 - v37;
      if (v55 > v37)
      {

        v39 = sub_1DC28D414();
        v41 = v46;
        v40 = v47;
        v42 = v48;
        (*(v47 + 16))(v46, v39, v48);
        v43 = sub_1DC516F6C();
        v44 = sub_1DC517B9C();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          *v45 = 134217984;
          *(v45 + 4) = v38;

          _os_log_impl(&dword_1DC287000, v43, v44, "Ignoring %ld SDAs due to app id", v45, 0xCu);
          MEMORY[0x1E1298840](v45, -1, -1);

          (*(v40 + 8))(v41, v42);
        }

        else
        {

          (*(v40 + 8))(v41, v42);
        }
      }

      OUTLINED_FUNCTION_34();
      return;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
}

void sub_1DC34A5EC()
{
  OUTLINED_FUNCTION_33();
  sub_1DC511E7C();
  OUTLINED_FUNCTION_0();
  v61 = v1;
  v62 = v0;
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_2_1();
  v60 = v2;
  OUTLINED_FUNCTION_12();
  sub_1DC511E9C();
  OUTLINED_FUNCTION_0();
  v64 = v4;
  v65 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_1();
  v63 = v5;
  OUTLINED_FUNCTION_12();
  sub_1DC51174C();
  OUTLINED_FUNCTION_0();
  v67 = v7;
  v68 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_1();
  v66 = v8;
  OUTLINED_FUNCTION_12();
  sub_1DC511B7C();
  OUTLINED_FUNCTION_0();
  v70 = v10;
  v71 = v9;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_1();
  v69 = v11;
  OUTLINED_FUNCTION_12();
  v76 = sub_1DC51164C();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_8();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v75 = &v59 - v19;
  OUTLINED_FUNCTION_12();
  sub_1DC51149C();
  OUTLINED_FUNCTION_0();
  v73 = v21;
  v74 = v20;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_2_1();
  v72 = v22;
  OUTLINED_FUNCTION_12();
  v23 = sub_1DC510FDC();
  OUTLINED_FUNCTION_0();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_8();
  v29 = v27 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v59 - v31;
  v33 = sub_1DC51176C();
  OUTLINED_FUNCTION_0();
  v35 = v34;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_1();
  v39 = v38 - v37;
  if (sub_1DC51194C())
  {
    sub_1DC5119CC();
    sub_1DC51175C();
    (*(v35 + 8))(v39, v33);
    sub_1DC34AC38();
    (*(v25 + 8))(v32, v23);
  }

  else
  {
    v40 = v32;
    if (sub_1DC51191C())
    {
      v41 = v72;
      sub_1DC5119AC();
      v42 = v75;
      sub_1DC51148C();
      (*(v73 + 8))(v41, v74);
      sub_1DC34ADEC();
      (*(v13 + 8))(v42, v76);
    }

    else
    {
      if (sub_1DC51195C())
      {
        v43 = v69;
        sub_1DC51192C();
        v44 = sub_1DC5111AC();
        (*(v70 + 8))(v43, v71);
        v45 = 0;
        v46 = *(v44 + 16);
        v47 = v76;
        while (v46 != v45)
        {
          if (v45 >= *(v44 + 16))
          {
            __break(1u);
            goto LABEL_24;
          }

          (*(v13 + 16))(v17, v44 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v45++, v47);
          sub_1DC34ADEC();
          v49 = v48;
          (*(v13 + 8))(v17, v47);
          if (v49)
          {
            break;
          }
        }
      }

      else
      {
        if ((sub_1DC51193C() & 1) == 0)
        {
          if (sub_1DC51199C())
          {
            v56 = v63;
            sub_1DC51197C();
            sub_1DC511E8C();
            v58 = v64;
            v57 = v65;
          }

          else
          {
            if ((sub_1DC51198C() & 1) == 0)
            {
              goto LABEL_17;
            }

            v56 = v60;
            sub_1DC51196C();
            sub_1DC511E6C();
            v58 = v61;
            v57 = v62;
          }

          (*(v58 + 8))(v56, v57);
          sub_1DC34AC38();
          (*(v25 + 8))(v40, v23);
          goto LABEL_17;
        }

        v50 = v66;
        sub_1DC5119BC();
        v51 = sub_1DC5111AC();
        (*(v67 + 8))(v50, v68);
        v52 = 0;
        v53 = *(v51 + 16);
        while (v53 != v52)
        {
          if (v52 >= *(v51 + 16))
          {
LABEL_24:
            __break(1u);
            return;
          }

          (*(v25 + 16))(v29, v51 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v52++, v23);
          sub_1DC34AC38();
          v55 = v54;
          (*(v25 + 8))(v29, v23);
          if (v55)
          {
            break;
          }
        }
      }
    }
  }

LABEL_17:
  OUTLINED_FUNCTION_34();
}

void sub_1DC34AC38()
{
  OUTLINED_FUNCTION_33();
  v0 = sub_1DC511E1C();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  v6 = v5 - v4;
  v7 = sub_1DC510FBC();
  v8 = 0;
  v13 = *(v7 + 16);
  v9 = (v2 + 8);
  while (1)
  {
    if (v13 == v8)
    {
      goto LABEL_11;
    }

    if (v8 >= *(v7 + 16))
    {
      break;
    }

    (*(v2 + 16))(v6, v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v8, v0);
    if (sub_1DC511DBC() == 0xD000000000000016 && 0x80000001DC540DA0 == v10)
    {

      (*v9)(v6, v0);
LABEL_11:

      OUTLINED_FUNCTION_34();
      return;
    }

    ++v8;
    v12 = sub_1DC51825C();

    (*v9)(v6, v0);
    if (v12)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1DC34ADEC()
{
  OUTLINED_FUNCTION_33();
  sub_1DC511A2C();
  OUTLINED_FUNCTION_0();
  v47 = v1;
  v48 = v0;
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_2_1();
  v46 = v2;
  OUTLINED_FUNCTION_12();
  sub_1DC51179C();
  OUTLINED_FUNCTION_0();
  v50 = v4;
  v51 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_1();
  v49 = v5;
  OUTLINED_FUNCTION_12();
  sub_1DC511B9C();
  OUTLINED_FUNCTION_0();
  v53 = v7;
  v54 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_1();
  v52 = v8;
  OUTLINED_FUNCTION_12();
  sub_1DC511D7C();
  OUTLINED_FUNCTION_0();
  v56 = v10;
  v57 = v9;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_1();
  v55 = v11;
  OUTLINED_FUNCTION_12();
  sub_1DC511A0C();
  OUTLINED_FUNCTION_0();
  v59 = v13;
  v60 = v12;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_1();
  v58 = v14;
  OUTLINED_FUNCTION_12();
  sub_1DC511BFC();
  OUTLINED_FUNCTION_0();
  v62 = v16;
  v63 = v15;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_1();
  v61 = v17;
  OUTLINED_FUNCTION_12();
  v18 = sub_1DC5114BC();
  OUTLINED_FUNCTION_0();
  v64 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_1();
  v23 = v22 - v21;
  v24 = sub_1DC51139C();
  OUTLINED_FUNCTION_0();
  v26 = v25;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_1();
  v30 = v29 - v28;
  sub_1DC510FDC();
  OUTLINED_FUNCTION_0();
  v65 = v32;
  v66 = v31;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_1();
  v35 = v34 - v33;
  v36 = sub_1DC51136C();
  OUTLINED_FUNCTION_0();
  v38 = v37;
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_1();
  v42 = v41 - v40;
  if (sub_1DC5114DC())
  {
    sub_1DC5115CC();
    sub_1DC51134C();
    (*(v38 + 8))(v42, v36);
  }

  else if (sub_1DC5114EC())
  {
    sub_1DC5115EC();
    OUTLINED_FUNCTION_144();
    sub_1DC51137C();
    (*(v26 + 8))(v30, v24);
  }

  else if (sub_1DC51150C())
  {
    sub_1DC51160C();
    sub_1DC5114AC();
    (*(v64 + 8))(v23, v18);
  }

  else
  {
    if (sub_1DC5115AC())
    {
      v43 = v61;
      sub_1DC51155C();
      OUTLINED_FUNCTION_144();
      sub_1DC511BEC();
      v45 = v62;
      v44 = v63;
    }

    else if (sub_1DC51156C())
    {
      v43 = v58;
      sub_1DC5114FC();
      OUTLINED_FUNCTION_144();
      sub_1DC5119FC();
      v45 = v59;
      v44 = v60;
    }

    else if (sub_1DC5115BC())
    {
      v43 = v55;
      sub_1DC51158C();
      OUTLINED_FUNCTION_144();
      sub_1DC511D6C();
      v45 = v56;
      v44 = v57;
    }

    else if (sub_1DC51159C())
    {
      v43 = v52;
      sub_1DC51153C();
      OUTLINED_FUNCTION_144();
      sub_1DC511B8C();
      v45 = v53;
      v44 = v54;
    }

    else if (sub_1DC5114CC())
    {
      v43 = v49;
      sub_1DC51154C();
      OUTLINED_FUNCTION_144();
      sub_1DC51178C();
      v45 = v50;
      v44 = v51;
    }

    else
    {
      if ((sub_1DC51157C() & 1) == 0)
      {
        goto LABEL_21;
      }

      v43 = v46;
      sub_1DC51152C();
      OUTLINED_FUNCTION_144();
      sub_1DC511A1C();
      v45 = v47;
      v44 = v48;
    }

    (*(v45 + 8))(v43, v44);
  }

  sub_1DC34AC38();
  (*(v65 + 8))(v35, v66);
LABEL_21:
  OUTLINED_FUNCTION_34();
}

void *sub_1DC34B388(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  v9 = sub_1DC34B474(v8, v7);
  v10 = *(sub_1DC5119DC() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_1DC34B570(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

void *sub_1DC34B474(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CCF8, &qword_1DC524CD8);
  v4 = *(sub_1DC5119DC() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DC34B570(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_1DC5119DC(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    sub_1DC5119DC();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1DC34B644(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1DC34B774(result, 1);
  v8 = *v2;
  v9 = *(sub_1DC5119DC() - 8);
  v10 = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  v12 = v10 + v11 * v5;
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v13 = *(v8 + 16);
  if (__OFSUB__(v13, a2))
  {
    goto LABEL_16;
  }

  result = sub_1DC34B570(v10 + v11 * a2, v13 - a2, v12);
  v14 = *(v8 + 16);
  v15 = __OFADD__(v14, v7);
  v16 = v14 - v6;
  if (!v15)
  {
    *(v8 + 16) = v16;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

void *sub_1DC34B774(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > *(v5 + 24) >> 1)
  {
    if (*(v5 + 16) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 16);
    }

    result = sub_1DC34B388(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

void sub_1DC34B7F0()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v3 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_3();
  v7 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v8 = sub_1DC346A1C(0xD000000000000013, 0x80000001DC540DC0);
  if (!v8)
  {
    goto LABEL_7;
  }

  v9 = v8;
  v10 = sub_1DC5176FC();
  v11 = [v9 integerForKey_];

  if (!v11)
  {

LABEL_7:
    v13 = 1300;
    goto LABEL_8;
  }

  v12 = sub_1DC5176FC();
  v13 = [v9 integerForKey_];

  sub_1DC28D414();
  OUTLINED_FUNCTION_57_9();
  v14(v0);
  v15 = sub_1DC516F6C();
  v16 = sub_1DC517B9C();
  if (OUTLINED_FUNCTION_25_0(v16))
  {
    v17 = OUTLINED_FUNCTION_63();
    *v17 = 134217984;
    *(v17 + 4) = v13;
    _os_log_impl(&dword_1DC287000, v15, v16, "cdmClient timeout changed from default to : %ld ms", v17, 0xCu);
    OUTLINED_FUNCTION_102();
  }

  (*(v5 + 8))(v0, v3);
LABEL_8:
  *v2 = v13;
  v18 = *MEMORY[0x1E69E7F38];
  sub_1DC51735C();
  OUTLINED_FUNCTION_35();
  (*(v19 + 104))(v2, v18);
  OUTLINED_FUNCTION_34();
}

double sub_1DC34BA0C()
{
  v1 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_56_2();
  v5 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v6 = sub_1DC346A1C(0xD000000000000013, 0x80000001DC540DC0);
  v7 = 360.0;
  if (v6)
  {
    v8 = v6;
    v9 = sub_1DC5176FC();
    v10 = [v8 integerForKey_];

    if (v10)
    {
      v11 = sub_1DC5176FC();
      v12 = [v8 integerForKey_];

      sub_1DC28D414();
      OUTLINED_FUNCTION_56_3();
      v13(v0);
      v14 = sub_1DC516F6C();
      v15 = sub_1DC517B9C();
      if (OUTLINED_FUNCTION_25_0(v15))
      {
        v16 = OUTLINED_FUNCTION_63();
        *v16 = 134217984;
        *(v16 + 4) = v12;
        _os_log_impl(&dword_1DC287000, v14, v15, "cdmClient decouple expiration changed from default to : %ld seconds", v16, 0xCu);
        OUTLINED_FUNCTION_66();
      }

      (*(v3 + 8))(v0, v1);
      return v12;
    }

    else
    {
    }
  }

  return v7;
}

uint64_t sub_1DC34BCEC(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC13CDMFoundation8CDMProxy_cdmSetupSucceeded;
  OUTLINED_FUNCTION_9_10(a1);
  return *(v1 + v2);
}

uint64_t sub_1DC34BD6C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC13CDMFoundation8CDMProxy_cdmSetupTimeout;
  OUTLINED_FUNCTION_9_10(a1);
  return *(v1 + v2);
}

uint64_t sub_1DC34BDEC(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC13CDMFoundation8CDMProxy_cdmDaemonKilled;
  OUTLINED_FUNCTION_9_10(a1);
  return *(v1 + v2);
}

uint64_t sub_1DC34BFB4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  OUTLINED_FUNCTION_54_11(v3 + *a1, a2);
  sub_1DC510AFC();
  OUTLINED_FUNCTION_35();
  return (*(v6 + 16))(a3, v3 + v5);
}

uint64_t sub_1DC34C070(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC13CDMFoundation8CDMProxy_assetsChanged;
  OUTLINED_FUNCTION_9_10(a1);
  return *(v1 + v2);
}

uint64_t sub_1DC34C0F0(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC13CDMFoundation8CDMProxy_cdmSetupRetried;
  OUTLINED_FUNCTION_9_10(a1);
  return *(v1 + v2);
}

uint64_t sub_1DC34C254()
{
  v2 = sub_1DC51735C();
  v3 = OUTLINED_FUNCTION_10(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_148();
  v4 = *sub_1DC2C98E0();

  sub_1DC34B7F0();
  v5 = sub_1DC34BA0C();
  v6 = [objc_allocWithZone(type metadata accessor for CDMClientNotification()) init];
  return (*(v1 + 752))(v4, v0, 0, 1, v6, v5);
}

uint64_t sub_1DC34C318(double a1)
{
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_16();
  sub_1DC34C394();
  return v1;
}

void sub_1DC34C394()
{
  OUTLINED_FUNCTION_102_0();
  v1 = v0;
  v54 = v2;
  v52 = v3;
  v53 = v4;
  v6 = v5;
  v50 = v7;
  v51 = v8;
  sub_1DC517BCC();
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_12();
  v47 = sub_1DC517BEC();
  v10 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_2_1();
  v49 = v11;
  OUTLINED_FUNCTION_12();
  v12 = sub_1DC5173CC();
  v13 = OUTLINED_FUNCTION_10(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1();
  v0[2] = 0;
  sub_1DC510C8C();
  OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  v18 = (v0 + OBJC_IVAR____TtC13CDMFoundation8CDMProxy_cdmActiveServiceGraph);
  *v18 = 0;
  v18[1] = 0;
  *(v0 + OBJC_IVAR____TtC13CDMFoundation8CDMProxy_cdmSetupSucceeded) = 2;
  *(v0 + OBJC_IVAR____TtC13CDMFoundation8CDMProxy_cdmSetupTimeout) = 2;
  *(v0 + OBJC_IVAR____TtC13CDMFoundation8CDMProxy_cdmDaemonKilled) = 2;
  sub_1DC516F5C();
  OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  v23 = sub_1DC510B6C();
  OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v23);
  OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v23);
  sub_1DC510AEC();
  sub_1DC510AEC();
  *(v1 + OBJC_IVAR____TtC13CDMFoundation8CDMProxy_assetsChanged) = 0;
  *(v1 + OBJC_IVAR____TtC13CDMFoundation8CDMProxy_cdmSetupRetried) = 0;
  v30 = OBJC_IVAR____TtC13CDMFoundation8CDMProxy_startRequestIdToProcessor;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CD18, &unk_1DC524D10);
  v31 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_32_1();
  *(v1 + v30) = sub_1DC51764C();
  v32 = OBJC_IVAR____TtC13CDMFoundation8CDMProxy_nluRequestIdToStartRequestId;
  OUTLINED_FUNCTION_32_1();
  *(v1 + v32) = sub_1DC51764C();
  *(v1 + OBJC_IVAR____TtC13CDMFoundation8CDMProxy_cdmObserverSuccessFromSetup) = 0;
  *(v1 + OBJC_IVAR____TtC13CDMFoundation8CDMProxy_cdmObserverErrorFromSetup) = 0;
  *(v1 + OBJC_IVAR____TtC13CDMFoundation8CDMProxy_cdmObserverDaemonKilled) = 0;
  *(v1 + OBJC_IVAR____TtC13CDMFoundation8CDMProxy_setupSemaphore) = 0;
  sub_1DC298C74(0, &qword_1EDAC7FA0, 0x1E69E9610);
  sub_1DC5173AC();
  v46 = *MEMORY[0x1E69E8098];
  v48 = *(v10 + 104);
  v48(v49);
  v55 = v31;
  OUTLINED_FUNCTION_75_3();
  sub_1DC293BE4(v33, v34, MEMORY[0x1E69E8040]);
  v35 = OUTLINED_FUNCTION_56_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v35, v36);
  OUTLINED_FUNCTION_26_1();
  sub_1DC2C4B5C(v37, v38, v39);
  OUTLINED_FUNCTION_170(&v55);
  OUTLINED_FUNCTION_206();
  v1[4] = sub_1DC517C1C();
  sub_1DC5173AC();
  (v48)(v49, v46, v47);
  v55 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_170(&v55);
  OUTLINED_FUNCTION_206();
  v1[5] = sub_1DC517C1C();
  *(v1 + OBJC_IVAR____TtC13CDMFoundation8CDMProxy_instrumentationUtil) = v50;
  v40 = OBJC_IVAR____TtC13CDMFoundation8CDMProxy_cdmSetupTimeoutMillis;
  v41 = sub_1DC51735C();
  v42 = *(v41 - 8);
  (*(v42 + 16))(v1 + v40, v51, v41);
  *(v1 + OBJC_IVAR____TtC13CDMFoundation8CDMProxy_cdmProxyExpirationInSeconds) = v6;
  *(v1 + OBJC_IVAR____TtC13CDMFoundation8CDMProxy_isDecoupleFromSession) = v52;
  *(v1 + OBJC_IVAR____TtC13CDMFoundation8CDMProxy_shouldAssetsTimeout) = v53;
  v1[3] = v54;
  v43 = *((*MEMORY[0x1E69E7D40] & *v54) + 0x70);

  v44 = v54;
  OUTLINED_FUNCTION_23_2();

  v43(v45);

  (*(v42 + 8))(v51, v41);
  OUTLINED_FUNCTION_101();
}

void sub_1DC34C8A0()
{
  OUTLINED_FUNCTION_33();
  v48 = v1;
  v49 = v0;
  v47 = v2;
  v4 = v3;
  v44 = v5;
  v46 = sub_1DC51623C();
  OUTLINED_FUNCTION_0();
  v43 = v6;
  MEMORY[0x1EEE9AC00](v7);
  v45 = v8;
  v50 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_12();
  v9 = sub_1DC510C8C();
  OUTLINED_FUNCTION_0();
  v41 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_158_0();
  v16 = v14 - v15;
  OUTLINED_FUNCTION_12();
  sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_28_0();
  sub_1DC28D414();
  OUTLINED_FUNCTION_57_9();
  v18(v0);
  v19 = sub_1DC516F6C();
  v20 = sub_1DC517B9C();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = OUTLINED_FUNCTION_35_8();
    v42 = v9;
    OUTLINED_FUNCTION_52_1(v21);
    OUTLINED_FUNCTION_56_4(&dword_1DC287000, v19, v20, "CDMProxy warmUp");
    v9 = v42;
    OUTLINED_FUNCTION_66();
  }

  v22 = OUTLINED_FUNCTION_56_0();
  v23(v22);
  v24 = v49;
  v42 = *(v49 + 32);
  v25 = v41;
  v26 = OUTLINED_FUNCTION_89_0();
  v27 = v9;
  v28(v26, v44, v9);
  v29 = v43;
  OUTLINED_FUNCTION_82_2();
  v30 = v46;
  v31(v50, v4, v46);
  v32 = (*(v25 + 80) + 24) & ~*(v25 + 80);
  v33 = (v12 + *(v29 + 80) + v32) & ~*(v29 + 80);
  v34 = (v45 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  *(v35 + 16) = v24;
  (*(v25 + 32))(v35 + v32, v16, v27);
  (*(v29 + 32))(v35 + v33, v50, v30);
  v36 = (v35 + v34);
  v37 = v48;
  *v36 = v47;
  v36[1] = v37;
  OUTLINED_FUNCTION_27_5();
  v38 = swift_allocObject();
  *(v38 + 16) = sub_1DC357890;
  *(v38 + 24) = v35;
  v51[4] = sub_1DC2929F4;
  v51[5] = v38;
  OUTLINED_FUNCTION_5_4();
  v51[1] = 1107296256;
  OUTLINED_FUNCTION_5_0();
  v51[2] = v39;
  v51[3] = &block_descriptor_3;
  v40 = _Block_copy(v51);

  dispatch_sync(v42, v40);
  _Block_release(v40);
  LOBYTE(v40) = OUTLINED_FUNCTION_173(v38, "", 84, 186);

  if (v40)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_34();
  }
}

uint64_t sub_1DC34CE38()
{
  OUTLINED_FUNCTION_1_0();
  v0[18] = v1;
  v2 = sub_1DC516F7C();
  v0[19] = v2;
  OUTLINED_FUNCTION_52(v2);
  v0[20] = v3;
  v0[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DC34CEEC, 0, 0);
}

uint64_t sub_1DC34CEEC()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  v4 = sub_1DC28D414();
  v6 = *(v2 + 16);
  v5 = (v2 + 16);
  v6(v1, v4, v3);
  v7 = sub_1DC516F6C();
  v8 = sub_1DC517B9C();
  if (OUTLINED_FUNCTION_25_0(v8))
  {
    v9 = OUTLINED_FUNCTION_35_8();
    OUTLINED_FUNCTION_81_2(v9);
    _os_log_impl(&dword_1DC287000, v7, v8, "CDMProxy calling CdmClient warmup", v5, 2u);
    OUTLINED_FUNCTION_31();
  }

  v10 = v0[18];

  v11 = OUTLINED_FUNCTION_63_0();
  v13 = v12(v11);
  v14 = (*(*v10 + 296))(v13);
  v0[22] = v14;
  if (v14)
  {
    v15 = v14;
    v0[2] = v0;
    v0[3] = sub_1DC34D114;
    v16 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CE70, &qword_1DC523630);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1DC30DF70;
    v0[13] = &block_descriptor_209;
    v0[14] = v16;
    [v15 warmupWithCompletionHandler_];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {

    OUTLINED_FUNCTION_2_2();

    return v17();
  }
}

uint64_t sub_1DC34D114()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  v1 = v0;
  v2 = *(v0 + 48);
  *(v1 + 184) = v2;
  if (v2)
  {
    v3 = sub_1DC34D27C;
  }

  else
  {
    v3 = sub_1DC34D21C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1DC34D21C()
{
  OUTLINED_FUNCTION_1_0();

  OUTLINED_FUNCTION_2_2();

  return v1();
}

uint64_t sub_1DC34D27C(uint64_t a1)
{
  v2 = *(v1 + 176);
  v3 = *(v1 + 184);
  swift_willThrow();

  OUTLINED_FUNCTION_2_2();

  return v4();
}

uint64_t sub_1DC34D2F8()
{
  sub_1DC51623C();
  OUTLINED_FUNCTION_0();
  v3 = MEMORY[0x1EEE9AC00](v2);
  v11 = OUTLINED_FUNCTION_74_4(v3, v4, v5, v6, v7, v8, v9, v10, aBlock[0]);
  v12(v11);
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  v14 = OUTLINED_FUNCTION_224(v13);
  v15(v14);
  OUTLINED_FUNCTION_27_5();
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1DC357970;
  *(v16 + 24) = v13;
  aBlock[4] = sub_1DC292A1C;
  aBlock[5] = v16;
  OUTLINED_FUNCTION_69_5();
  aBlock[1] = 1107296256;
  OUTLINED_FUNCTION_5_0();
  aBlock[2] = v17;
  aBlock[3] = &block_descriptor_18;
  v18 = _Block_copy(aBlock);

  dispatch_sync(v0, v18);
  _Block_release(v18);
  v19 = OUTLINED_FUNCTION_173(v16, "", 84, 199);

  if (v19)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DC34D4A4()
{
  OUTLINED_FUNCTION_12_0();
  (*(v0 + 368))();
  OUTLINED_FUNCTION_79_4();
  if (v2 || (v1 & 1) != 0)
  {
    OUTLINED_FUNCTION_12_0();
    v4 = (*(v3 + 392))();
  }

  else
  {
    v4 = 1;
  }

  return v4 & 1;
}

id sub_1DC34D520@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 successFromSetup];
  *a2 = result;
  return result;
}

id sub_1DC34D554@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 errorFromSetup];
  *a2 = result;
  return result;
}

void sub_1DC34D590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v21;
  a20 = v22;
  v98 = v23;
  v97 = v24;
  v96 = v25;
  v27 = v26;
  v105 = v28;
  sub_1DC51737C();
  OUTLINED_FUNCTION_0();
  v103 = v30;
  v104 = v29;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_2_1();
  v101 = v31;
  OUTLINED_FUNCTION_12();
  v102 = sub_1DC5173CC();
  OUTLINED_FUNCTION_0();
  v100 = v32;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v34);
  v95 = sub_1DC510C8C();
  OUTLINED_FUNCTION_0();
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_158_0();
  v42 = v40 - v41;
  v43 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v45 = v44;
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_53_4();
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v91 - v49;
  OUTLINED_FUNCTION_36_7(v27 + 16, &v110);
  Strong = swift_weakLoadStrong();
  v52 = sub_1DC28D414();
  v53 = v45;
  v54 = *(v45 + 16);
  if (Strong)
  {
    v55 = Strong;
    v91 = v52;
    v92 = v54;
    (v54)(v20);
    v56 = sub_1DC516F6C();
    v57 = sub_1DC517B9C();
    v58 = OUTLINED_FUNCTION_25_0(v57);
    v94 = v43;
    if (v58)
    {
      v59 = OUTLINED_FUNCTION_35_8();
      v106 = v53;
      *v59 = 0;
      _os_log_impl(&dword_1DC287000, v56, v57, "Received errorFromSetup from CDM", v59, 2u);
      v53 = v106;
      OUTLINED_FUNCTION_66();
    }

    v60 = OUTLINED_FUNCTION_42_2();
    v106 = v53 + 8;
    v93 = v61;
    v61(v60);
    v62 = v95;
    (*(v36 + 16))(v42, v96, v95);
    v63 = (*(v36 + 80) + 24) & ~*(v36 + 80);
    v64 = swift_allocObject();
    *(v64 + 16) = v55;
    (*(v36 + 32))(v64 + v63, v42, v62);
    v65 = (v64 + ((v38 + v63 + 7) & 0xFFFFFFFFFFFFFFF8));
    v66 = v98;
    *v65 = v97;
    v65[1] = v66;
    v109[4] = sub_1DC358928;
    v109[5] = v64;
    OUTLINED_FUNCTION_19_13();
    v109[1] = 1107296256;
    OUTLINED_FUNCTION_3_14();
    v109[2] = v67;
    v109[3] = &block_descriptor_186;
    v68 = _Block_copy(v109);

    v69 = v99;
    sub_1DC51739C();
    v108 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_1_14();
    sub_1DC293BE4(v70, v71, MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CD40, &unk_1DC523860);
    OUTLINED_FUNCTION_119_1();
    sub_1DC2C4B5C(v72, v73, v74);
    v75 = v101;
    v76 = v104;
    sub_1DC517E9C();
    MEMORY[0x1E12964B0](0, v69, v75, v68);
    _Block_release(v68);
    (*(v103 + 8))(v75, v76);
    (*(v100 + 8))(v69, v102);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CE68, &unk_1DC524EF8);
    sub_1DC51089C();
    v77 = v109[0];
    if (v109[0])
    {
      v78 = OUTLINED_FUNCTION_191(&a13);
      v92(v78, v91, v94);
      v79 = v77;
      v80 = sub_1DC516F6C();
      v81 = sub_1DC517B8C();

      if (os_log_type_enabled(v80, v81))
      {
        v82 = OUTLINED_FUNCTION_63();
        v83 = OUTLINED_FUNCTION_82();
        v109[0] = v83;
        *v82 = 136315138;
        swift_getErrorValue();
        v84 = v107;
        v85 = sub_1DC5182AC();
        sub_1DC291244(v85, v86, v109);
        OUTLINED_FUNCTION_23_2();

        *(v82 + 4) = v84;
        _os_log_impl(&dword_1DC287000, v80, v81, "cdmClient setup result, cdmSetupSucceeded: false, error: %s", v82, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v83);
        OUTLINED_FUNCTION_102();
        OUTLINED_FUNCTION_66();
      }

      else
      {
      }

      OUTLINED_FUNCTION_176();
      OUTLINED_FUNCTION_216();
      v90();
    }

    else
    {
    }
  }

  else
  {
    v54(v50, v52, v43);
    v87 = sub_1DC516F6C();
    v88 = sub_1DC517B9C();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_18_12(v89);
      OUTLINED_FUNCTION_145_1(&dword_1DC287000, v87, v88, "Received errorFromSetup from CDM, but the proxy instance was removed");
      OUTLINED_FUNCTION_40_0();
    }

    (*(v45 + 8))(v50, v43);
  }

  OUTLINED_FUNCTION_34();
}

id sub_1DC34DC58@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 daemonKilled];
  *a2 = result;
  return result;
}

void sub_1DC34DC8C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_245(v3, v4, v5, v6, v7);
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_12();
  sub_1DC5173CC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CE60, &qword_1DC524EF0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_12();
  sub_1DC510C8C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v11);
  v12 = OUTLINED_FUNCTION_169_1();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_19_9();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_56_1();
  OUTLINED_FUNCTION_36_7(v2 + 16, &v60);
  Strong = swift_weakLoadStrong();
  sub_1DC28D414();
  OUTLINED_FUNCTION_18_13();
  if (Strong)
  {
    v19 = OUTLINED_FUNCTION_215();
    v20(v19);
    v21 = sub_1DC516F6C();
    v22 = sub_1DC517B9C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_181(v23);
      OUTLINED_FUNCTION_246(&dword_1DC287000, v24, v25, "Received daemonKilled value update from CDM");
      OUTLINED_FUNCTION_66();
    }

    (*(v14 + 8))(v0, v12);
    v26 = OUTLINED_FUNCTION_85_3();
    v27(v26);
    OUTLINED_FUNCTION_115_1();
    v28 = OUTLINED_FUNCTION_225();
    v29(v28);
    OUTLINED_FUNCTION_78_4();
    v30 = OUTLINED_FUNCTION_244();
    v31 = OUTLINED_FUNCTION_135_0(v30);
    v32(v31);
    v33 = OUTLINED_FUNCTION_130_1();
    v34(v33);
    v59[4] = sub_1DC3587E8;
    v59[5] = v0;
    OUTLINED_FUNCTION_19_13();
    v59[1] = 1107296256;
    OUTLINED_FUNCTION_3_14();
    v59[2] = v35;
    v59[3] = &block_descriptor_180;
    v36 = _Block_copy(v59);

    sub_1DC51739C();
    OUTLINED_FUNCTION_1_14();
    sub_1DC293BE4(v37, v38, MEMORY[0x1E69E7F70]);
    v39 = OUTLINED_FUNCTION_74();
    __swift_instantiateConcreteTypeFromMangledNameV2(v39, v40);
    OUTLINED_FUNCTION_62_3();
    v44 = sub_1DC2C4B5C(v41, v42, v43);
    OUTLINED_FUNCTION_123_1(v44);
    OUTLINED_FUNCTION_171();
    _Block_release(v36);
    OUTLINED_FUNCTION_62_0();
    v45 = OUTLINED_FUNCTION_55();
    v46(v45);
    v47 = OUTLINED_FUNCTION_222();
    v48(v47);
  }

  else
  {
    v18(v1);
    v49 = sub_1DC516F6C();
    v50 = sub_1DC517B9C();
    if (OUTLINED_FUNCTION_14_7(v50))
    {
      v51 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_81_2(v51);
      OUTLINED_FUNCTION_16_0();
      _os_log_impl(v52, v53, v54, v55, v56, 2u);
      OUTLINED_FUNCTION_31();
    }

    v57 = OUTLINED_FUNCTION_150_0();
    v58(v57, v12);
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC34E790()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v32 = v2;
  v33 = v3;
  v5 = v4;
  v31 = v6;
  v8 = v7;
  v9 = sub_1DC510B6C();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v15 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(v0 + 32);
  v16 = OUTLINED_FUNCTION_153_0();
  v17(v16);
  sub_1DC28FB9C(v5, v36);
  v18 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v19 = (v13 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 23) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = v1;
  (*(v11 + 32))(v21 + v18, v15, v9);
  v22 = (v21 + v19);
  v24 = v31;
  v23 = v32;
  *v22 = v8;
  v22[1] = v24;
  v25 = (v21 + v20);
  v26 = v33;
  *v25 = v23;
  v25[1] = v26;
  sub_1DC28F9B0(v36, v21 + ((v20 + 23) & 0xFFFFFFFFFFFFFFF8));
  OUTLINED_FUNCTION_27_5();
  v27 = swift_allocObject();
  *(v27 + 16) = sub_1DC357AC0;
  *(v27 + 24) = v21;
  v35[4] = sub_1DC292A1C;
  v35[5] = v27;
  OUTLINED_FUNCTION_10_13();
  v35[1] = 1107296256;
  OUTLINED_FUNCTION_5_0();
  v35[2] = v28;
  v35[3] = &block_descriptor_51;
  v29 = _Block_copy(v35);

  dispatch_sync(v34, v29);
  _Block_release(v29);
  LOBYTE(v26) = OUTLINED_FUNCTION_173(v27, "", 84, 507);

  if (v26)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_34();
  }
}

void sub_1DC34E9D8()
{
  OUTLINED_FUNCTION_33();
  v98 = v4;
  v99 = v5;
  v97 = v6;
  v102 = v7;
  v103 = v8;
  v101 = v9;
  OUTLINED_FUNCTION_38_2();
  sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15();
  v100 = v11;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_62();
  v96 = v13;
  OUTLINED_FUNCTION_12();
  v14 = sub_1DC510B6C();
  OUTLINED_FUNCTION_0();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_2_1();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CE20, &unk_1DC523AC8) - 8;
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_30_1();
  v20 = OUTLINED_FUNCTION_146_1();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(v20, v21);
  v23 = OUTLINED_FUNCTION_10(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_101_0();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_98_1();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_94_1();
  OUTLINED_FUNCTION_38_1();
  (*(v26 + 464))(v27);
  (*(v16 + 16))(v0, v101, v14);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v14);
  v31 = *(v18 + 56);
  OUTLINED_FUNCTION_251(v2, v3);
  OUTLINED_FUNCTION_251(v0, v3 + v31);
  OUTLINED_FUNCTION_2_0(v3);
  if (v40)
  {
    v1 = &qword_1DC522A00;
    OUTLINED_FUNCTION_26_1();
    sub_1DC28EB30(v32, v33, v34);
    OUTLINED_FUNCTION_26_1();
    sub_1DC28EB30(v35, v36, v37);
    OUTLINED_FUNCTION_2_0(v3 + v31);
    if (v40)
    {
      sub_1DC28EB30(v3, &unk_1ECC7CA30, &qword_1DC522A00);
      v39 = v102;
      v38 = v103;
LABEL_14:
      sub_1DC28D414();
      OUTLINED_FUNCTION_56_3();
      v79(v96);

      v80 = sub_1DC516F6C();
      sub_1DC517B9C();

      if (OUTLINED_FUNCTION_172())
      {
        OUTLINED_FUNCTION_63();
        v81 = OUTLINED_FUNCTION_111();
        OUTLINED_FUNCTION_188(v81);
        OUTLINED_FUNCTION_180(4.8149e-34);
        v82 = OUTLINED_FUNCTION_16();
        *(v1 + 4) = sub_1DC291244(v82, v83, v84);
        OUTLINED_FUNCTION_16_0();
        _os_log_impl(v85, v86, v87, v88, v89, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v2);
        OUTLINED_FUNCTION_40_0();
        OUTLINED_FUNCTION_31();
      }

      v90 = OUTLINED_FUNCTION_45_0();
      v91(v90);
      OUTLINED_FUNCTION_12_0();
      (*(v92 + 968))(v97, v98);
      sub_1DC28FB9C(v99, v105);
      OUTLINED_FUNCTION_38_1();
      v94 = *(v93 + 624);

      v95 = v94(v104);
      sub_1DC34EFF8(v105, v39, v38);
      v95(v104, 0);
      goto LABEL_17;
    }

    goto LABEL_9;
  }

  sub_1DC28F308(v3, v1, &unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_2_0(v3 + v31);
  if (v40)
  {
    OUTLINED_FUNCTION_70_4();
    sub_1DC28EB30(v41, v42, v43);
    OUTLINED_FUNCTION_70_4();
    sub_1DC28EB30(v44, v45, v46);
    v47 = OUTLINED_FUNCTION_187();
    v48(v47);
LABEL_9:
    sub_1DC28EB30(v3, &qword_1ECC7CE20, &unk_1DC523AC8);
    goto LABEL_10;
  }

  v62 = OUTLINED_FUNCTION_235();
  v63(v62);
  OUTLINED_FUNCTION_2_11();
  sub_1DC293BE4(v64, v65, MEMORY[0x1E69695C8]);
  v66 = sub_1DC5176CC();
  v67 = *(v16 + 8);
  v68 = OUTLINED_FUNCTION_42_2();
  v67(v68);
  OUTLINED_FUNCTION_76_3();
  sub_1DC28EB30(v69, v70, v71);
  OUTLINED_FUNCTION_76_3();
  sub_1DC28EB30(v72, v73, v74);
  v75 = OUTLINED_FUNCTION_187();
  v67(v75);
  OUTLINED_FUNCTION_76_3();
  sub_1DC28EB30(v76, v77, v78);
  v39 = v102;
  v38 = v103;
  if (v66)
  {
    goto LABEL_14;
  }

LABEL_10:
  sub_1DC28D414();
  OUTLINED_FUNCTION_56_3();
  v49(v100);

  v50 = sub_1DC516F6C();
  sub_1DC517BAC();

  if (OUTLINED_FUNCTION_172())
  {
    OUTLINED_FUNCTION_63();
    v51 = OUTLINED_FUNCTION_111();
    OUTLINED_FUNCTION_188(v51);
    OUTLINED_FUNCTION_180(4.8149e-34);
    v52 = OUTLINED_FUNCTION_16();
    *(v1 + 4) = sub_1DC291244(v52, v53, v54);
    OUTLINED_FUNCTION_16_0();
    _os_log_impl(v55, v56, v57, v58, v59, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v2);
    OUTLINED_FUNCTION_40_0();
    OUTLINED_FUNCTION_31();
  }

  v60 = OUTLINED_FUNCTION_45_0();
  v61(v60);
LABEL_17:
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC34EFF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1DC28F9B0(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_1DC3581E8(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_1DC28EB30(a1, &qword_1ECC7CE28, &unk_1DC524E10);
    sub_1DC2BFB38(a2, a3, v9);

    return sub_1DC28EB30(v9, &qword_1ECC7CE28, &unk_1DC524E10);
  }

  return result;
}

void sub_1DC34F0CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_102_0();
  a21 = v24;
  a22 = v25;
  v235 = v22;
  v27 = v26;
  v227 = v28;
  v226 = v29;
  v31 = v30;
  v243 = v32;
  v246 = v33;
  v208 = sub_1DC5173EC();
  OUTLINED_FUNCTION_0();
  v207 = v34;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v37);
  v206 = sub_1DC516F5C();
  OUTLINED_FUNCTION_0();
  v205 = v38;
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v40);
  v248 = sub_1DC510B6C();
  OUTLINED_FUNCTION_0();
  v245 = v41;
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_92_1();
  OUTLINED_FUNCTION_14(v43);
  v238 = sub_1DC5168FC();
  OUTLINED_FUNCTION_0();
  v237 = v44;
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v46);
  v221 = sub_1DC51110C();
  OUTLINED_FUNCTION_0();
  v222 = v47;
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_17_0();
  v49 = sub_1DC51373C();
  OUTLINED_FUNCTION_0();
  v51 = v50;
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_202();
  OUTLINED_FUNCTION_20_0(v53);
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_20_0(v55);
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_20_0(v57);
  v224 = v58;
  MEMORY[0x1EEE9AC00](v59);
  v61 = &v200 - v60;
  v62 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v64 = v63;
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v67);
  v69 = &v200 - v68;
  sub_1DC28D414();
  v233 = v64;
  OUTLINED_FUNCTION_44_8();
  v217 = v70;
  v239 = v62;
  v219 = v71;
  v218 = v72;
  v72(v69);
  v73 = v51;
  OUTLINED_FUNCTION_90();
  v241 = v74;
  v242 = v27;
  v240 = v75;
  v75(v61, v27, v49);

  v76 = sub_1DC516F6C();
  v77 = sub_1DC517B9C();

  v78 = os_log_type_enabled(v76, v77);
  v244 = v31;
  v247 = v49;
  v234 = v73;
  v216 = v23;
  if (v78)
  {
    v79 = OUTLINED_FUNCTION_140();
    v249 = OUTLINED_FUNCTION_143();
    *v79 = 136315394;
    *(v79 + 4) = sub_1DC291244(v243, v244, &v249);
    *(v79 + 12) = 2080;
    sub_1DC51370C();
    sub_1DC5110DC();
    OUTLINED_FUNCTION_238();
    (*(v222 + 8))(v23, v221);
    (*(v73 + 8))(v61, v247);
    v80 = OUTLINED_FUNCTION_80_4();
    sub_1DC291244(v80, &off_1DC522000, v81);
    OUTLINED_FUNCTION_228();

    *(v79 + 14) = v61;
    _os_log_impl(&dword_1DC287000, v76, v77, "CDMProxy received nluRequest for startRequestId: %s nluRequestId: %s", v79, 0x16u);
    OUTLINED_FUNCTION_196();
    OUTLINED_FUNCTION_40_0();
    v49 = v247;
    OUTLINED_FUNCTION_66();
  }

  else
  {

    (*(v73 + 8))(v61, v49);
  }

  (*(v233 + 8))(v69, v239);
  v82 = sub_1DC2A0AE0();
  (v237[2].isa)(v236, v82, v238);
  v83 = v245;
  v84 = *(v245 + 16);
  v229 = v245 + 16;
  v228 = v84;
  v85 = v232;
  v84(v232, v246, v248);
  v86 = v225;
  v240(v225, v242, v49);
  v87 = *(v83 + 80);
  v88 = (v87 + 16) & ~v87;
  v231 = v87 | 7;
  v223 = v230 + 7;
  v89 = &v230[v88 + 7] & 0xFFFFFFFFFFFFFFF8;
  v90 = (v89 + 23) & 0xFFFFFFFFFFFFFFF8;
  v91 = v234;
  v92 = *(v234 + 80);
  v211 = v92 + 16;
  v93 = (v92 + 16 + v90) & ~v92;
  v214 = v92;
  v94 = swift_allocObject();
  v230 = *(v83 + 32);
  v200 = v88;
  (v230)(v94 + v88, v85, v248);
  v201 = v89;
  v95 = (v94 + v89);
  v96 = v244;
  *v95 = v243;
  v95[1] = v96;
  v97 = (v94 + v90);
  v98 = v227;
  *v97 = v226;
  v97[1] = v98;
  v99 = *(v91 + 4);
  v213 = v91 + 32;
  v212 = v99;
  v99(v94 + v93, v86, v247);

  v100 = v236;
  sub_1DC5168CC();

  OUTLINED_FUNCTION_62_0();
  v101(v100, v238);
  v257 = 1;
  v256 = 2;
  v255 = 0;
  v102 = v235;
  v103 = *(v235 + 32);
  v104 = v248;
  OUTLINED_FUNCTION_97_2();
  v105();
  v238 = v87;
  v106 = (v87 + 32) & ~v87;
  v107 = &v223[v106] & 0xFFFFFFFFFFFFFFF8;
  v108 = swift_allocObject();
  *(v108 + 16) = &v257;
  *(v108 + 24) = v102;
  v245 = v83 + 32;
  (v230)(v108 + v106, v85, v104);
  *(v108 + v107) = &v256;
  *(v108 + ((v107 + 15) & 0xFFFFFFFFFFFFFFF8)) = &v255;
  OUTLINED_FUNCTION_27_5();
  v109 = swift_allocObject();
  *(v109 + 16) = sub_1DC357B64;
  *(v109 + 24) = v108;
  v253 = sub_1DC292A1C;
  v254 = v109;
  OUTLINED_FUNCTION_10_13();
  v250 = 1107296256;
  OUTLINED_FUNCTION_5_0();
  v251 = v110;
  v252 = &block_descriptor_74;
  v111 = _Block_copy(&v249);
  v112 = v254;

  dispatch_sync(v103, v111);
  _Block_release(v111);
  OUTLINED_FUNCTION_230();
  swift_isEscapingClosureAtFileLocation();
  OUTLINED_FUNCTION_23_2();

  if (v111)
  {
    __break(1u);
  }

  else
  {
    if ((v257 & 1) == 0)
    {
      OUTLINED_FUNCTION_184(&v252);
      OUTLINED_FUNCTION_211();
      v121();
      v122 = v215;
      v123 = v247;
      v240(v215, v242, v247);
      v124 = v244;

      v125 = sub_1DC516F6C();
      v126 = sub_1DC517BAC();

      if (os_log_type_enabled(v125, v126))
      {
        OUTLINED_FUNCTION_140();
        v249 = OUTLINED_FUNCTION_60_6();
        *v112 = 136315394;
        sub_1DC51370C();
        v127 = sub_1DC5110DC();
        v128 = v123;
        v130 = v129;
        OUTLINED_FUNCTION_62_0();
        v131();
        OUTLINED_FUNCTION_62_0();
        v132(v122, v128);
        v133 = OUTLINED_FUNCTION_80_4();
        sub_1DC291244(v133, v130, v134);
        OUTLINED_FUNCTION_155_0();

        *(v112 + 4) = v127;
        *(v112 + 12) = 2080;
        *(v112 + 14) = sub_1DC291244(v243, v124, &v249);
        OUTLINED_FUNCTION_42_1();
        _os_log_impl(v135, v136, v137, v138, v139, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_66();
        OUTLINED_FUNCTION_31();

        OUTLINED_FUNCTION_62_0();
        v141 = v220;
        v142 = v239;
      }

      else
      {

        OUTLINED_FUNCTION_62_0();
        v143 = OUTLINED_FUNCTION_42_2();
        v144(v143);
        OUTLINED_FUNCTION_62_0();
        v141 = OUTLINED_FUNCTION_12_3();
      }

      v140(v141, v142);
      v145 = 0;
      v239 = 0;
      goto LABEL_23;
    }

    v237 = v103;
    v236 = v108;
    if (v256 != 2)
    {
      goto LABEL_7;
    }

    if (v255)
    {
      v113 = v255;
      v114 = sub_1DC378228();
      v115 = v203;
      static SignpostLogger.begin(_:enableTelemetry:)(*v114, v114[1], *(v114 + 16), 1, &unk_1F57F9698, &off_1F57F95E8, v203);
      v116 = v202;
      sub_1DC5173DC();
      v117 = v204;
      MEMORY[0x1E1295CB0](v116, v235 + OBJC_IVAR____TtC13CDMFoundation8CDMProxy_cdmSetupTimeoutMillis);
      v118 = *(v207 + 8);
      v119 = v208;
      v118(v116, v208);
      sub_1DC517D0C();
      v118(v117, v119);
      static SignpostLogger.end(_:_:)(v115, *v114, v114[1], *(v114 + 16));

      OUTLINED_FUNCTION_62_0();
      v120(v115, v206);
    }

    v146 = v222;
    v104 = v210;
    v147 = v242;
    if (sub_1DC51736C())
    {
      v148 = v209;
      OUTLINED_FUNCTION_211();
      v149();
      v240(v104, v147, v247);
      v150 = v244;

      v151 = sub_1DC516F6C();
      v152 = sub_1DC517BAC();

      LODWORD(v222) = v152;
      if (OUTLINED_FUNCTION_172())
      {
        OUTLINED_FUNCTION_140();
        v153 = OUTLINED_FUNCTION_60_6();
        OUTLINED_FUNCTION_218(v153, &v252);
        *v148 = 136315394;
        v154 = OUTLINED_FUNCTION_80_4();
        v156 = sub_1DC291244(v154, v150, v155);
        OUTLINED_FUNCTION_26_7(v156);
        v157 = v216;
        sub_1DC51370C();
        sub_1DC5110DC();
        OUTLINED_FUNCTION_193();
        (*(v146 + 8))(v157, v221);
        v158 = OUTLINED_FUNCTION_50_0();
        v159(v158);
        v160 = OUTLINED_FUNCTION_80_4();
        sub_1DC291244(v160, v150, v161);
        OUTLINED_FUNCTION_121();

        *(v148 + 14) = v157;
        OUTLINED_FUNCTION_42_1();
        _os_log_impl(v162, v163, v164, v165, v166, 0x16u);
        OUTLINED_FUNCTION_184(&v252);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_42();
        OUTLINED_FUNCTION_31();

        OUTLINED_FUNCTION_62_0();
        v168 = v209;
        v169 = v239;
      }

      else
      {

        v170 = OUTLINED_FUNCTION_50_0();
        v171(v170);
        OUTLINED_FUNCTION_62_0();
        v168 = OUTLINED_FUNCTION_187();
      }

      v167(v168, v169);
      OUTLINED_FUNCTION_96_0();
      v104();
      v172 = v201;
      v173 = swift_allocObject();
      OUTLINED_FUNCTION_216();
      v174();
      *(v173 + v172) = v235;
      OUTLINED_FUNCTION_27_5();
      v175 = swift_allocObject();
      *(v175 + 16) = sub_1DC357CDC;
      *(v175 + 24) = v173;
      v239 = v173;
      v253 = sub_1DC292A1C;
      v254 = v175;
      OUTLINED_FUNCTION_10_13();
      v250 = 1107296256;
      OUTLINED_FUNCTION_5_0();
      v251 = v176;
      v252 = &block_descriptor_94;
      v177 = _Block_copy(&v249);

      v178 = OUTLINED_FUNCTION_35_0();
      dispatch_sync(v178, v179);
      _Block_release(v177);
      OUTLINED_FUNCTION_230();
      LOBYTE(v177) = swift_isEscapingClosureAtFileLocation();

      if (v177)
      {
        goto LABEL_26;
      }

      v234 = sub_1DC357CDC;
    }

    else
    {
LABEL_7:
      v234 = 0;
      v239 = 0;
      OUTLINED_FUNCTION_96_0();
    }

    v180 = v238;
    v181 = v214;
    v182 = OUTLINED_FUNCTION_191(&a15);
    (v104)(v182, v246, v248);
    v183 = v225;
    v184 = OUTLINED_FUNCTION_32_1();
    v185 = v247;
    (v240)(v184);
    v186 = &v223[(v180 + 24) & ~v180] & 0xFFFFFFFFFFFFFFF8;
    v187 = (v186 + 23) & 0xFFFFFFFFFFFFFFF8;
    v188 = (v211 + v187) & ~v181;
    v189 = swift_allocObject();
    *(v189 + 16) = v235;
    OUTLINED_FUNCTION_216();
    v190();
    v191 = (v189 + v186);
    v192 = v244;
    *v191 = v243;
    v191[1] = v192;
    v193 = (v189 + v187);
    v194 = v227;
    *v193 = v226;
    v193[1] = v194;
    v212(v189 + v188, v183, v185);
    OUTLINED_FUNCTION_27_5();
    v195 = swift_allocObject();
    *(v195 + 16) = sub_1DC357BFC;
    *(v195 + 24) = v189;
    v253 = sub_1DC292A1C;
    v254 = v195;
    OUTLINED_FUNCTION_10_13();
    v250 = 1107296256;
    OUTLINED_FUNCTION_5_0();
    v251 = v196;
    v252 = &block_descriptor_84;
    v197 = _Block_copy(&v249);

    dispatch_sync(v237, v197);
    _Block_release(v197);
    LOBYTE(v197) = OUTLINED_FUNCTION_173(v195, "", 84, 593);

    if ((v197 & 1) == 0)
    {
      v145 = v234;
LABEL_23:
      v198 = v255;

      sub_1DC357BEC(v145);
      v199 = OUTLINED_FUNCTION_30_6();
      sub_1DC357BEC(v199);
      OUTLINED_FUNCTION_101();
      return;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_1DC3502C4()
{
  OUTLINED_FUNCTION_33();
  v71 = v2;
  v72 = v3;
  v69 = v5;
  v70 = v4;
  v7 = v6;
  v8 = sub_1DC510B6C();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_1();
  v67 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CE20, &unk_1DC523AC8) - 8;
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_30_1();
  v15 = OUTLINED_FUNCTION_50_0();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
  v18 = OUTLINED_FUNCTION_10(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_15();
  v68 = v19;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_54_8();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v67 - v22;
  OUTLINED_FUNCTION_183();
  (*(v24 + 464))(v25);
  v26 = v10;
  OUTLINED_FUNCTION_90();
  v27(v0, v69, v8);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v8);
  v31 = *(v13 + 56);
  sub_1DC28F308(v23, v1, &unk_1ECC7CA30, &qword_1DC522A00);
  sub_1DC28F308(v0, v1 + v31, &unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_2_0(v1);
  if (!v40)
  {
    v39 = v68;
    sub_1DC28F308(v1, v68, &unk_1ECC7CA30, &qword_1DC522A00);
    OUTLINED_FUNCTION_2_0(v1 + v31);
    if (!v40)
    {
      v45 = v26;
      v46 = OUTLINED_FUNCTION_235();
      v47(v46);
      OUTLINED_FUNCTION_2_11();
      sub_1DC293BE4(v48, v49, MEMORY[0x1E69695C8]);
      OUTLINED_FUNCTION_50_0();
      v38 = sub_1DC5176CC();
      v50 = *(v45 + 8);
      v51 = OUTLINED_FUNCTION_42_2();
      v50(v51);
      v52 = OUTLINED_FUNCTION_153_0();
      sub_1DC28EB30(v52, v53, &qword_1DC522A00);
      v54 = OUTLINED_FUNCTION_176();
      sub_1DC28EB30(v54, v55, &qword_1DC522A00);
      (v50)(v68, v8);
      v56 = OUTLINED_FUNCTION_47_6();
      sub_1DC28EB30(v56, v57, &qword_1DC522A00);
      goto LABEL_10;
    }

    v41 = OUTLINED_FUNCTION_55();
    sub_1DC28EB30(v41, v42, &qword_1DC522A00);
    v43 = OUTLINED_FUNCTION_146_1();
    sub_1DC28EB30(v43, v44, &qword_1DC522A00);
    (*(v26 + 8))(v39, v8);
LABEL_9:
    sub_1DC28EB30(v1, &qword_1ECC7CE20, &unk_1DC523AC8);
    v38 = 0;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_26_1();
  sub_1DC28EB30(v32, v33, v34);
  OUTLINED_FUNCTION_26_1();
  sub_1DC28EB30(v35, v36, v37);
  OUTLINED_FUNCTION_2_0(v1 + v31);
  if (!v40)
  {
    goto LABEL_9;
  }

  sub_1DC28EB30(v1, &unk_1ECC7CA30, &qword_1DC522A00);
  v38 = 1;
LABEL_10:
  *v70 = v38 & 1;
  OUTLINED_FUNCTION_147();
  v60 = (*(v58 + 368))(v59);
  *v71 = v60;
  v61 = (*(*v7 + 728))(v60);
  v62 = *v72;
  *v72 = v61;

  OUTLINED_FUNCTION_183();
  (*(v63 + 392))(v64);
  OUTLINED_FUNCTION_79_4();
  if (!v40 && (v65 & 1) != 0)
  {
    OUTLINED_FUNCTION_147();
    (*(v66 + 400))(0);
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC350760()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_38_2();
  v2 = sub_1DC510B6C();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_1();
  v56 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CE20, &unk_1DC523AC8) - 8;
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v55 - v9;
  v11 = OUTLINED_FUNCTION_146_1();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
  v14 = OUTLINED_FUNCTION_10(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_15();
  v57 = v15;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_42_3();
  v58 = v4;
  v18 = OUTLINED_FUNCTION_32_1();
  v19(v18);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v2);
  OUTLINED_FUNCTION_183();
  (*(v23 + 464))();
  v24 = *(v7 + 56);
  OUTLINED_FUNCTION_251(v0, v10);
  OUTLINED_FUNCTION_251(v1, &v10[v24]);
  OUTLINED_FUNCTION_2_6(v10);
  if (v32)
  {
    OUTLINED_FUNCTION_70_4();
    sub_1DC28EB30(v25, v26, v27);
    OUTLINED_FUNCTION_70_4();
    sub_1DC28EB30(v28, v29, v30);
    OUTLINED_FUNCTION_2_6(&v10[v24]);
    if (v32)
    {
      sub_1DC28EB30(v10, &unk_1ECC7CA30, &qword_1DC522A00);
LABEL_11:
      OUTLINED_FUNCTION_147();
      (*(v54 + 400))(1);
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v31 = v57;
  sub_1DC28F308(v10, v57, &unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_2_6(&v10[v24]);
  if (v32)
  {
    OUTLINED_FUNCTION_59_2();
    sub_1DC28EB30(v33, v34, v35);
    OUTLINED_FUNCTION_59_2();
    sub_1DC28EB30(v36, v37, v38);
    (*(v58 + 8))(v31, v2);
LABEL_9:
    sub_1DC28EB30(v10, &qword_1ECC7CE20, &unk_1DC523AC8);
    goto LABEL_12;
  }

  v39 = v58;
  v40 = v56;
  (*(v58 + 32))(v56, &v10[v24], v2);
  OUTLINED_FUNCTION_2_11();
  sub_1DC293BE4(v41, v42, MEMORY[0x1E69695C8]);
  OUTLINED_FUNCTION_146_1();
  HIDWORD(v55) = sub_1DC5176CC();
  v43 = *(v39 + 8);
  v43(v40, v2);
  OUTLINED_FUNCTION_76_3();
  sub_1DC28EB30(v44, v45, v46);
  OUTLINED_FUNCTION_76_3();
  sub_1DC28EB30(v47, v48, v49);
  v50 = OUTLINED_FUNCTION_56_0();
  (v43)(v50);
  OUTLINED_FUNCTION_76_3();
  sub_1DC28EB30(v51, v52, v53);
  if ((v55 & 0x100000000) != 0)
  {
    goto LABEL_11;
  }

LABEL_12:
  OUTLINED_FUNCTION_34();
}

void sub_1DC350B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v24;
  a20 = v25;
  v351 = v21;
  v27 = v26;
  v328 = v28;
  v327 = v29;
  v348 = v30;
  v349 = v31;
  v344 = v32;
  v322 = sub_1DC517BEC();
  OUTLINED_FUNCTION_0();
  v321 = v33;
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v35);
  v319 = sub_1DC517BCC();
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v37);
  v38 = sub_1DC5173CC();
  v39 = OUTLINED_FUNCTION_10(v38);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v40);
  v324 = sub_1DC5168FC();
  OUTLINED_FUNCTION_0();
  v318 = v41;
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v43);
  v44 = sub_1DC510AFC();
  v45 = OUTLINED_FUNCTION_10(v44);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v46);
  v338 = sub_1DC51373C();
  OUTLINED_FUNCTION_0();
  v337 = v47;
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_202();
  OUTLINED_FUNCTION_20_0(v49);
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_20_0(v51);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_20_0(v53);
  v325 = v54;
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v56);
  v347 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v350 = v57;
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_15();
  v343 = v59;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v66);
  v67 = sub_1DC510B6C();
  OUTLINED_FUNCTION_0();
  v69 = v68;
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_92_1();
  OUTLINED_FUNCTION_20_0(v71);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CE20, &unk_1DC523AC8) - 8;
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v73);
  v75 = &v310 - v74;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CA30, &qword_1DC522A00);
  v77 = OUTLINED_FUNCTION_10(v76);
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_15();
  v345 = v78;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_99_0();
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_56_1();
  v81 = sub_1DC51110C();
  OUTLINED_FUNCTION_0();
  v83 = v82;
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_148();
  v340 = v27;
  sub_1DC51370C();
  v341 = sub_1DC5110DC();
  v346 = v85;
  v87 = *(v83 + 8);
  v86 = v83 + 8;
  v334 = v20;
  v88 = v20;
  v89 = v87;
  v335 = v81;
  v87(v88, v81);
  v342 = v69;
  v91 = *(v69 + 16);
  v90 = v69 + 16;
  v315 = v91;
  v91(v22, v348, v67);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v92, v93, v94, v67);
  OUTLINED_FUNCTION_38_1();
  (*(v95 + 464))();
  v96 = *(v72 + 56);
  v97 = OUTLINED_FUNCTION_30();
  sub_1DC28F308(v97, v98, &unk_1ECC7CA30, &qword_1DC522A00);
  sub_1DC28F308(v23, &v75[v96], &unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_2_6(v75);
  if (v108)
  {
    v313 = v89;
    OUTLINED_FUNCTION_59_2();
    sub_1DC28EB30(v99, v100, v101);
    OUTLINED_FUNCTION_59_2();
    sub_1DC28EB30(v102, v103, v104);
    OUTLINED_FUNCTION_2_6(&v75[v96]);
    if (v108)
    {
      v311 = v90;
      v345 = v67;
      sub_1DC28EB30(v75, &unk_1ECC7CA30, &qword_1DC522A00);
      v105 = v347;
      v106 = v349;
      v107 = v350;
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  sub_1DC28F308(v75, v345, &unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_2_6(&v75[v96]);
  if (v108)
  {
    OUTLINED_FUNCTION_59_2();
    sub_1DC28EB30(v109, v110, v111);
    OUTLINED_FUNCTION_59_2();
    sub_1DC28EB30(v112, v113, v114);
    (*(v342 + 8))(v345, v67);
LABEL_9:
    sub_1DC28EB30(v75, &qword_1ECC7CE20, &unk_1DC523AC8);
    v106 = v349;
    goto LABEL_10;
  }

  v311 = v90;
  v313 = v89;
  v126 = v342;
  v127 = v339;
  (*(v342 + 32))(v339, &v75[v96], v67);
  OUTLINED_FUNCTION_2_11();
  sub_1DC293BE4(v128, v129, MEMORY[0x1E69695C8]);
  v130 = v345;
  OUTLINED_FUNCTION_229();
  LODWORD(v310) = sub_1DC5176CC();
  v312 = v86;
  v131 = *(v126 + 8);
  v131(v127, v67);
  OUTLINED_FUNCTION_119_1();
  sub_1DC28EB30(v132, v133, v134);
  OUTLINED_FUNCTION_119_1();
  sub_1DC28EB30(v135, v136, v137);
  v345 = v67;
  v131(v130, v67);
  v86 = v312;
  OUTLINED_FUNCTION_119_1();
  sub_1DC28EB30(v138, v139, v140);
  v105 = v347;
  v106 = v349;
  v107 = v350;
  if ((v310 & 1) == 0)
  {
LABEL_10:
    sub_1DC28D414();
    OUTLINED_FUNCTION_18_13();
    v115(v343);

    v116 = sub_1DC516F6C();
    sub_1DC517BAC();
    OUTLINED_FUNCTION_220();

    if (!OUTLINED_FUNCTION_172())
    {
LABEL_20:

      goto LABEL_21;
    }

LABEL_11:
    OUTLINED_FUNCTION_140();
    v117 = OUTLINED_FUNCTION_60_6();
    OUTLINED_FUNCTION_188(v117);
    OUTLINED_FUNCTION_180(4.8151e-34);
    v119 = sub_1DC291244(v344, v106, v118);
    OUTLINED_FUNCTION_26_7(v119);
    v120 = OUTLINED_FUNCTION_138_0();

    *(v67 + 14) = v120;
    OUTLINED_FUNCTION_16_0();
    _os_log_impl(v121, v122, v123, v124, v125, 0x16u);
    OUTLINED_FUNCTION_196();
    OUTLINED_FUNCTION_40_0();
    OUTLINED_FUNCTION_31();
LABEL_12:

LABEL_22:
    v169 = OUTLINED_FUNCTION_45_0();
    v170(v169);
    goto LABEL_23;
  }

LABEL_14:
  OUTLINED_FUNCTION_12_0();
  v142 = (*(v141 + 296))();
  if (!v142)
  {
    sub_1DC28D414();
    OUTLINED_FUNCTION_18_13();
    v168(v336);

    v116 = sub_1DC516F6C();
    sub_1DC517BAC();
    OUTLINED_FUNCTION_220();

    if (!OUTLINED_FUNCTION_172())
    {
      goto LABEL_20;
    }

    goto LABEL_11;
  }

  v143 = v142;
  OUTLINED_FUNCTION_12_0();
  v145 = (*(v144 + 608))();
  v146 = OUTLINED_FUNCTION_55();
  sub_1DC352664(v146, v147, v145, v148);

  if (!v354)
  {
    sub_1DC28EB30(&v353, &qword_1ECC7CE28, &unk_1DC524E10);
    sub_1DC28D414();
    OUTLINED_FUNCTION_18_13();
    v171(v331);

    v116 = sub_1DC516F6C();
    sub_1DC517BAC();
    OUTLINED_FUNCTION_220();

    if (OUTLINED_FUNCTION_172())
    {
      OUTLINED_FUNCTION_140();
      v172 = OUTLINED_FUNCTION_60_6();
      OUTLINED_FUNCTION_188(v172);
      OUTLINED_FUNCTION_180(4.8151e-34);
      v175 = sub_1DC291244(v174, v106, v173);
      OUTLINED_FUNCTION_26_7(v175);
      v176 = OUTLINED_FUNCTION_138_0();

      *(v67 + 14) = v176;
      OUTLINED_FUNCTION_16_0();
      _os_log_impl(v177, v178, v179, v180, v181, 0x16u);
      OUTLINED_FUNCTION_196();
      OUTLINED_FUNCTION_40_0();
      OUTLINED_FUNCTION_31();

      goto LABEL_12;
    }

LABEL_21:

    goto LABEL_22;
  }

  sub_1DC28F9B0(&v353, v355);
  v149 = v356;
  __swift_project_boxed_opaque_existential_1(v355, v356);
  v150 = OUTLINED_FUNCTION_63_0();
  if (v151(v150))
  {
    v343 = v143;

    sub_1DC28D414();
    OUTLINED_FUNCTION_18_13();
    v152 = OUTLINED_FUNCTION_161_1();
    v153(v152);
    v154 = v337;
    OUTLINED_FUNCTION_82_2();
    v155 = OUTLINED_FUNCTION_214();
    v156 = v338;
    v157(v155);

    v158 = sub_1DC516F6C();
    v159 = sub_1DC517BAC();

    LODWORD(v348) = v159;
    if (os_log_type_enabled(v158, v159))
    {
      OUTLINED_FUNCTION_140();
      v347 = OUTLINED_FUNCTION_60_6();
      *&v353 = v347;
      v160 = OUTLINED_FUNCTION_242(4.8151e-34);
      OUTLINED_FUNCTION_26_7(v160);
      OUTLINED_FUNCTION_20_3();
      sub_1DC51370C();
      v161 = sub_1DC5110DC();
      v163 = v162;
      v313(v149, v335);
      (*(v154 + 8))(v149, v338);
      v164 = OUTLINED_FUNCTION_80_4();
      sub_1DC291244(v164, v163, v165);
      OUTLINED_FUNCTION_155_0();

      *(v156 + 14) = v161;
      _os_log_impl(&dword_1DC287000, v158, v348, "Dropping CDM request as Request is cancelled for startRequestId: %s nluRequestId: %s", v156, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_31();

      v166 = v105;
      v167 = v313;
      (*(v350 + 8))(v332, v166);
    }

    else
    {

      v208 = OUTLINED_FUNCTION_63_0();
      v209(v208);
      v210 = OUTLINED_FUNCTION_12_3();
      v211(v210);
      v167 = v313;
    }

    v212 = v343;
    sub_1DC51370C();
    sub_1DC5110DC();
    v213 = OUTLINED_FUNCTION_55();
    v167(v213);
    OUTLINED_FUNCTION_38_1();
    v215 = (*(v214 + 648))(&v353);
    v216 = OUTLINED_FUNCTION_63_0();
    sub_1DC358108(v216, v217);

    v218 = OUTLINED_FUNCTION_223();
    v215(v218);
  }

  else
  {
    OUTLINED_FUNCTION_12_0();
    v182 += 46;
    v183 = *v182;
    v336 = v182;
    v183();
    OUTLINED_FUNCTION_79_4();
    v185 = v338;
    v186 = v337;
    if (!v108 && (v184 & 1) != 0 && ((OUTLINED_FUNCTION_12_0(), (*(v187 + 392))(), OUTLINED_FUNCTION_79_4(), v108) || (v188 & 1) == 0))
    {
      v310 = v183;
      v343 = v143;
      sub_1DC28D414();
      OUTLINED_FUNCTION_18_13();
      v331 = v229;
      v330 = v230;
      v329 = v231;
      (v231)(v323);
      OUTLINED_FUNCTION_82_2();
      v232 = v314;
      OUTLINED_FUNCTION_236(v233);
      v234();

      v235 = sub_1DC516F6C();
      v236 = v106;
      v237 = sub_1DC517B9C();

      if (os_log_type_enabled(v235, v237))
      {
        OUTLINED_FUNCTION_140();
        v238 = OUTLINED_FUNCTION_60_6();
        OUTLINED_FUNCTION_218(v238, &v340);
        *v185 = 136315394;
        v239 = sub_1DC291244(v344, v236, &v353);
        OUTLINED_FUNCTION_26_7(v239);
        sub_1DC51370C();
        sub_1DC5110DC();
        OUTLINED_FUNCTION_238();
        OUTLINED_FUNCTION_203();
        (v313)();
        v240 = v232;
        v241 = v338;
        (*(v337 + 8))(v240, v338);
        v242 = OUTLINED_FUNCTION_80_4();
        v244 = sub_1DC291244(v242, v105, v243);
        v105 = v347;

        *(v185 + 14) = v244;
        OUTLINED_FUNCTION_42_1();
        _os_log_impl(v245, v246, v247, v248, v249, 0x16u);
        OUTLINED_FUNCTION_184(&v340);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_42();
        OUTLINED_FUNCTION_31();

        v250 = *(v350 + 8);
        v250(v323, v105);
      }

      else
      {

        (*(v186 + 8))(v232, v185);
        v250 = *(v107 + 8);
        v251 = OUTLINED_FUNCTION_45_0();
        (v250)(v251);
        v241 = v185;
      }

      v312 = v86;
      v252 = v357;
      __swift_project_boxed_opaque_existential_1(v355, v356);
      v253 = OUTLINED_FUNCTION_162();
      v254(v253, v252);
      OUTLINED_FUNCTION_147();
      (*(v255 + 120))();

      OUTLINED_FUNCTION_127_0();
      v257 = (*(v256 + 648))(&v353);
      v259 = v258;

      swift_isUniquelyReferenced_nonNull_native();
      v352 = *v259;
      v260 = OUTLINED_FUNCTION_205();
      sub_1DC358334(v260, v261, v341, v346, v262);
      *v259 = v352;

      v263 = OUTLINED_FUNCTION_223();
      v257(v263);
      OUTLINED_FUNCTION_20_3();
      sub_1DC510AEC();
      OUTLINED_FUNCTION_127_0();
      v264 = OUTLINED_FUNCTION_231();
      v265(v264);
      type metadata accessor for CDMNluRequest(0);
      OUTLINED_FUNCTION_83(v355);
      OUTLINED_FUNCTION_210();
      v266();
      v347 = CDMNluRequest.__allocating_init(swiftProto:)(v257);
      v267 = OUTLINED_FUNCTION_83(&v345);
      v329(v267, v331, v105);
      v268 = sub_1DC516F6C();
      v269 = sub_1DC517B9C();
      if (OUTLINED_FUNCTION_15_4(v269))
      {
        v270 = OUTLINED_FUNCTION_35_8();
        OUTLINED_FUNCTION_18_12(v270);
        OUTLINED_FUNCTION_33_10(&dword_1DC287000, v271, v272, "Created a wrapper CDMNluRequest with native Siri_Nlu_External_Cdm_NluRequest");
        OUTLINED_FUNCTION_40_0();
      }

      v250(v257, v105);
      sub_1DC2A0AE0();
      v273 = v318;
      OUTLINED_FUNCTION_90();
      v274 = v317;
      v275(v317);
      v276 = OUTLINED_FUNCTION_191(&a16);
      v277 = v345;
      v315(v276, v348, v345);
      OUTLINED_FUNCTION_97_2();
      v278();
      v279 = v342;
      v280 = (*(v342 + 80) + 16) & ~*(v342 + 80);
      v281 = (v316 + v280 + 7) & 0xFFFFFFFFFFFFFFF8;
      v282 = (v281 + 23) & 0xFFFFFFFFFFFFFFF8;
      v348 = *(v337 + 80);
      v283 = (v348 + v282 + 16) & ~v348;
      v350 = v348 | 7;
      v284 = swift_allocObject();
      (*(v279 + 32))(v284 + v280, v241, v277);
      v285 = (v284 + v281);
      v286 = v349;
      *v285 = v344;
      v285[1] = v286;
      v287 = (v284 + v282);
      v288 = v328;
      *v287 = v327;
      v287[1] = v288;
      v289 = *(v337 + 32);
      v337 += 32;
      v346 = v289;
      (v289)(v284 + v283, v326, v338);

      sub_1DC5168CC();

      (*(v273 + 8))(v274, v324);
      [v343 processCDMNluRequest_];
      sub_1DC298C74(0, &qword_1EDAC7FA0, 0x1E69E9610);
      sub_1DC51738C();
      *&v353 = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_75_3();
      sub_1DC293BE4(v290, v291, MEMORY[0x1E69E8040]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CD20, &qword_1DC525300);
      OUTLINED_FUNCTION_119_1();
      sub_1DC2C4B5C(v292, v293, v294);
      sub_1DC517E9C();
      (*(v321 + 104))(v320, *MEMORY[0x1E69E8090], v322);
      v295 = sub_1DC517C1C();
      OUTLINED_FUNCTION_195();
      v296 = swift_allocObject();
      v297 = v351;
      swift_weakInit();
      sub_1DC28FB9C(v355, &v353);
      OUTLINED_FUNCTION_97_2();
      v298();
      v299 = swift_allocObject();
      v299[2] = v296;
      sub_1DC28F9B0(&v353, (v299 + 3));
      v300 = v349;
      v299[8] = v344;
      v299[9] = v300;
      v301 = v328;
      v299[10] = v327;
      v299[11] = v301;
      OUTLINED_FUNCTION_76_3();
      v346();
      v302 = objc_allocWithZone(MEMORY[0x1E698D278]);

      v228 = sub_1DC3577A4(v295, sub_1DC3586A8, v299, 5.0);
      __swift_project_boxed_opaque_existential_1(v355, v356);
      v303 = OUTLINED_FUNCTION_55();
      v304(v303);
      OUTLINED_FUNCTION_20_3();
      sub_1DC51370C();
      sub_1DC5110DC();
      OUTLINED_FUNCTION_203();
      (v313)();
      OUTLINED_FUNCTION_70_4();
      v305();

      OUTLINED_FUNCTION_91_0();
      if ((*(v306 + 584))())
      {
        v307 = v347;
        v310();
        OUTLINED_FUNCTION_79_4();
        if (v108)
        {
        }

        else
        {
          v309 = v343;
          if (v308)
          {
            (*(*v297 + 592))(0);
          }
        }
      }

      else
      {
      }
    }

    else
    {

      sub_1DC28D414();
      OUTLINED_FUNCTION_18_13();
      v189 = OUTLINED_FUNCTION_161_1();
      v190(v189);
      OUTLINED_FUNCTION_82_2();
      v191 = OUTLINED_FUNCTION_214();
      v192(v191);

      v193 = sub_1DC516F6C();
      v194 = sub_1DC517BAC();

      LODWORD(v348) = v194;
      if (os_log_type_enabled(v193, v194))
      {
        OUTLINED_FUNCTION_140();
        *&v353 = OUTLINED_FUNCTION_60_6();
        v195 = OUTLINED_FUNCTION_242(4.8151e-34);
        OUTLINED_FUNCTION_26_7(v195);
        v349 = v193;
        sub_1DC51370C();
        v196 = sub_1DC5110DC();
        v343 = v143;
        v197 = v107;
        v199 = v198;
        OUTLINED_FUNCTION_203();
        (v313)();
        (*(v186 + 8))(v183, v338);
        v200 = OUTLINED_FUNCTION_80_4();
        sub_1DC291244(v200, v199, v201);
        OUTLINED_FUNCTION_155_0();

        *(v194 + 14) = v196;
        v202 = v349;
        OUTLINED_FUNCTION_42_1();
        _os_log_impl(v203, v204, v205, v206, v207, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_66();
        OUTLINED_FUNCTION_31();

        (*(v197 + 8))(v333, v105);
        v143 = v343;
      }

      else
      {

        v219 = OUTLINED_FUNCTION_85_0();
        v220(v219);
        (*(v107 + 8))(v333, v105);
      }

      OUTLINED_FUNCTION_12_0();
      v221 += 49;
      v222 = *v221;
      (*v221)();
      OUTLINED_FUNCTION_79_4();
      if (!v108 && (v223 & 1) != 0)
      {
        v224 = sub_1DC378234();
        static SignpostLogger.event(_:)(*v224, v224[1], *(v224 + 16));
      }

      v225 = v356;
      v226 = v357;
      __swift_project_boxed_opaque_existential_1(v355, v356);
      v227 = v222();
      (*(v226 + 24))(v340, v227, v225, v226);
      v228 = v143;
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v355);
LABEL_23:
  OUTLINED_FUNCTION_34();
}

double sub_1DC352664@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_1DC2AEB04(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 40 * v6;

    sub_1DC28FB9C(v8, a4);
  }

  else
  {
    *(a4 + 32) = 0;
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1DC3526D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1DC2AEB04(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 16 * v4);

  return v6;
}

void sub_1DC352728()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v4 = v3;
  v34 = v5;
  v35 = v6;
  v8 = v7;
  v37 = sub_1DC51110C();
  OUTLINED_FUNCTION_0();
  v36 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CE30, &unk_1DC524E20);
  v11 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CE38, &unk_1DC528570) - 8);
  v12 = *(*v11 + 72);
  v13 = (*(*v11 + 80) + 32) & ~*(*v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1DC524AE0;
  v15 = v14 + v13;
  v16 = (v14 + v13 + v11[14]);
  sub_1DC51680C();
  v17 = sub_1DC2A0C74();
  v19 = *v17;
  v18 = *(v17 + 1);
  *v16 = v19;
  v16[1] = v18;
  v20 = (v15 + v12 + v11[14]);

  sub_1DC51687C();
  *v20 = sub_1DC2A0C80(v2);
  v20[1] = v21;
  v22 = (v15 + 2 * v12 + v11[14]);
  sub_1DC5168BC();
  sub_1DC510B6C();
  OUTLINED_FUNCTION_2_11();
  sub_1DC293BE4(v23, v24, MEMORY[0x1E69695E0]);
  *v22 = sub_1DC51823C();
  v22[1] = v25;
  v26 = (v15 + 3 * v12 + v11[14]);
  sub_1DC5168AC();
  *v26 = v34;
  v26[1] = v8;

  sub_1DC51686C();
  if (v4)
  {
    v27 = v35;
  }

  else
  {
    v27 = 0;
  }

  if (v4)
  {
    v28 = v4;
  }

  else
  {
    v28 = 0xE000000000000000;
  }

  v29 = (v15 + 4 * v12 + v11[14]);

  MEMORY[0x1E1296160](v27, v28);

  *v29 = 0;
  v29[1] = 0xE000000000000000;
  v30 = (v15 + 5 * v12 + v11[14]);
  sub_1DC5167FC();
  sub_1DC51370C();
  v31 = sub_1DC5110DC();
  v33 = v32;
  (*(v36 + 8))(v0, v37);
  *v30 = v31;
  v30[1] = v33;
  OUTLINED_FUNCTION_34();
}

void sub_1DC3529D4()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_36_7(v6 + 16, &v23);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = *(v4 + 32);
    v14 = OUTLINED_FUNCTION_147_0();
    __swift_project_boxed_opaque_existential_1(v14, v15);
    v16 = OUTLINED_FUNCTION_23_2();
    v18 = v17(v16, v13);
    (*(*v12 + 976))(v18);
  }

  else
  {
    sub_1DC28D414();
    OUTLINED_FUNCTION_126_0();
    v19(v0);
    v20 = sub_1DC516F6C();
    sub_1DC517B9C();
    OUTLINED_FUNCTION_116();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_52_1(v22);
      OUTLINED_FUNCTION_56_4(&dword_1DC287000, v20, v2, "NluRequest timed out, but the proxy instance was removed");
      OUTLINED_FUNCTION_58();
    }

    (*(v9 + 8))(v0, v7);
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC352BB0()
{
  OUTLINED_FUNCTION_33();
  v32 = v2;
  v4 = v3;
  v35 = sub_1DC51737C();
  OUTLINED_FUNCTION_0();
  v37 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_3();
  v36 = sub_1DC5173CC();
  OUTLINED_FUNCTION_0();
  v34 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_17_0();
  v9 = sub_1DC51110C();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v15 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(v0 + 32);
  OUTLINED_FUNCTION_44_8();
  v16(v15, v4, v9);
  v17 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v18 = (v13 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  (*(v11 + 32))(v19 + v17, v15, v9);
  v20 = v32;
  *(v19 + v18) = v32;
  *(v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8)) = v0;
  v39[4] = sub_1DC357CF4;
  v39[5] = v19;
  OUTLINED_FUNCTION_5_4();
  v39[1] = 1107296256;
  OUTLINED_FUNCTION_3_14();
  v39[2] = v21;
  v39[3] = &block_descriptor_100;
  v22 = _Block_copy(v39);
  v23 = v20;

  sub_1DC51739C();
  v38 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_1_14();
  sub_1DC293BE4(v24, v25, MEMORY[0x1E69E7F70]);
  v26 = OUTLINED_FUNCTION_12_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(v26, v27);
  sub_1DC2C4B5C(&qword_1EDAC7FC0, &unk_1ECC7CD40, &unk_1DC523860);
  sub_1DC517E9C();
  v28 = OUTLINED_FUNCTION_168_1();
  MEMORY[0x1E12964B0](v28);
  _Block_release(v22);
  v29 = OUTLINED_FUNCTION_30_6();
  v30(v29);
  (*(v34 + 8))(v1, v36);

  OUTLINED_FUNCTION_34();
}

void sub_1DC352ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v29 = sub_1DC510AFC();
  v30 = OUTLINED_FUNCTION_10(v29);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v31);
  v32 = sub_1DC51110C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v34);
  v35 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v37 = v36;
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_56_1();
  v117[0] = 0;
  v115 = 0u;
  v116 = 0u;
  v109 = v37;
  sub_1DC28D414();
  (*(v37 + 16))(v20);
  OUTLINED_FUNCTION_19_1();
  OUTLINED_FUNCTION_236(v40);
  v41();
  v42 = v26;
  v43 = sub_1DC516F6C();
  v44 = sub_1DC517B9C();

  v108 = v26;
  v107 = v32;
  if (os_log_type_enabled(v43, v44))
  {
    v45 = OUTLINED_FUNCTION_140();
    v46 = OUTLINED_FUNCTION_143();
    OUTLINED_FUNCTION_218(v46, v117);
    *v45 = 136315394;
    v104 = v44;
    sub_1DC5110DC();
    v47 = v28;
    v48 = v35;
    v50 = v49;
    v51 = OUTLINED_FUNCTION_147_0();
    v105 = v52;
    (v52)(v51);
    v53 = OUTLINED_FUNCTION_80_4();
    v55 = sub_1DC291244(v53, v50, v54);
    v35 = v48;
    v28 = v47;

    *(v45 + 4) = v55;
    *(v45 + 12) = 2080;
    swift_getErrorValue();
    v56 = sub_1DC5182AC();
    v58 = sub_1DC291244(v56, v57, &v112);

    *(v45 + 14) = v58;
    _os_log_impl(&dword_1DC287000, v43, v104, "Handling Error from CDM - removing entry from nluRequestIdToStartRequestId for nlRequestId: %s error: %s", v45, 0x16u);
    OUTLINED_FUNCTION_83(v117);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_67();
  }

  else
  {

    v59 = OUTLINED_FUNCTION_147_0();
    v105 = v60;
    (v60)(v59);
  }

  v61 = *(v109 + 8);
  v61(v20, v35);
  sub_1DC5110DC();
  v63 = v62;
  (*(*v24 + 632))();
  v64 = OUTLINED_FUNCTION_23_2();
  sub_1DC3526D0(v64, v63, v24);
  v66 = v65;

  if (v66)
  {
    (*(*v24 + 608))(v67);
    OUTLINED_FUNCTION_59_2();
    sub_1DC352664(v68, v69, v70, v71);

    sub_1DC28EB30(&v115, &qword_1ECC7CE28, &unk_1DC524E10);
    v115 = v112;
    v116 = v113;
    v117[0] = v114;
  }

  sub_1DC5110DC();
  v72 = (*(*v24 + 648))(&v112);
  v73 = OUTLINED_FUNCTION_46_6();
  sub_1DC358108(v73, v74);
  v76 = v75;

  v77 = OUTLINED_FUNCTION_223();
  v72(v77);
  OUTLINED_FUNCTION_20_3();
  sub_1DC510AEC();
  (*(*v24 + 544))(v76);
  sub_1DC28F308(&v115, &v110, &qword_1ECC7CE28, &unk_1DC524E10);
  if (v111)
  {
    sub_1DC28F9B0(&v110, &v112);
    v78 = v114;
    OUTLINED_FUNCTION_250();
    v79 = OUTLINED_FUNCTION_23_2();
    v80(v79, v78);
    sub_1DC5110DC();
    OUTLINED_FUNCTION_147();
    (*(v81 + 136))();

    v82 = *(&v113 + 1);
    v83 = v114;
    OUTLINED_FUNCTION_250();
    sub_1DC5110DC();
    v85 = v84;
    OUTLINED_FUNCTION_82_2();
    v87(v108, v86, v85, v82, v83);

    sub_1DC28EB30(&v115, &qword_1ECC7CE28, &unk_1DC524E10);
    __swift_destroy_boxed_opaque_existential_1Tm(&v112);
  }

  else
  {
    sub_1DC28EB30(&v110, &qword_1ECC7CE28, &unk_1DC524E10);
    OUTLINED_FUNCTION_191(&a17);
    OUTLINED_FUNCTION_203();
    OUTLINED_FUNCTION_216();
    v88();
    OUTLINED_FUNCTION_210();
    v89();
    v90 = sub_1DC516F6C();
    sub_1DC517BAC();
    OUTLINED_FUNCTION_116();
    if (os_log_type_enabled(v90, v91))
    {
      OUTLINED_FUNCTION_63();
      v92 = OUTLINED_FUNCTION_111();
      *&v112 = v92;
      *v28 = 136315138;
      sub_1DC5110DC();
      v93 = OUTLINED_FUNCTION_155_0();
      v95 = v94;
      v105(v93, v107);
      v96 = OUTLINED_FUNCTION_80_4();
      sub_1DC291244(v96, v95, v97);
      OUTLINED_FUNCTION_155_0();

      *(v28 + 4) = v106;
      OUTLINED_FUNCTION_42_1();
      _os_log_impl(v98, v99, v100, v101, v102, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v92);
      OUTLINED_FUNCTION_58();
      OUTLINED_FUNCTION_31();
    }

    else
    {

      v105(v106, v107);
    }

    v103 = OUTLINED_FUNCTION_176();
    (v61)(v103);
    sub_1DC28EB30(&v115, &qword_1ECC7CE28, &unk_1DC524E10);
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC353688()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_38_2();
  sub_1DC51737C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_3();
  v15 = sub_1DC5173CC();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_27_5();
  v6 = swift_allocObject();
  *(v6 + 16) = v0;
  *(v6 + 24) = v0;
  v16[4] = sub_1DC357D78;
  v16[5] = v6;
  OUTLINED_FUNCTION_5_4();
  v16[1] = 1107296256;
  OUTLINED_FUNCTION_3_14();
  v16[2] = v7;
  v16[3] = &block_descriptor_106;
  v8 = _Block_copy(v16);

  v9 = v0;
  sub_1DC51739C();
  OUTLINED_FUNCTION_1_14();
  sub_1DC293BE4(v10, v11, MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CD40, &unk_1DC523860);
  sub_1DC2C4B5C(&qword_1EDAC7FC0, &unk_1ECC7CD40, &unk_1DC523860);
  OUTLINED_FUNCTION_149_1();
  sub_1DC517E9C();
  v12 = OUTLINED_FUNCTION_168_1();
  MEMORY[0x1E12964B0](v12);
  _Block_release(v8);
  v13 = OUTLINED_FUNCTION_30_6();
  v14(v13);
  (*(v4 + 8))(v1, v15);

  OUTLINED_FUNCTION_34();
}

void sub_1DC3538AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  v28 = v27;
  v29 = sub_1DC510AFC();
  v30 = OUTLINED_FUNCTION_10(v29);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v31);
  sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v145 = v32;
  v146 = v33;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_101_0();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v36);
  v37 = sub_1DC51110C();
  OUTLINED_FUNCTION_0();
  v39 = v38;
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_94_1();
  v42 = sub_1DC5137CC();
  OUTLINED_FUNCTION_0();
  v44 = v43;
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_56_1();
  v139 = *((*MEMORY[0x1E69E7D40] & *v26) + 0x78);
  v139();
  sub_1DC51379C();
  v143 = v42;
  v144 = *(v44 + 8);
  v47 = v42;
  v48 = v39;
  v144(v22, v47);
  v49 = sub_1DC5110DC();
  v51 = v50;
  (*(v48 + 8))(v21, v37);
  OUTLINED_FUNCTION_127_0();
  v53 = (*(v52 + 632))();
  sub_1DC3526D0(v49, v51, v53);
  v55 = v54;

  if (v55)
  {
    v136 = v20;
    v57 = (*(*v28 + 608))(v56);
    v58 = OUTLINED_FUNCTION_30();
    sub_1DC352664(v58, v59, v57, v60);

    v134 = sub_1DC28D414();
    v133 = *(v146 + 16);
    v133();
    v61 = v26;
    v62 = sub_1DC516F6C();
    v63 = sub_1DC517B9C();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = OUTLINED_FUNCTION_63();
      v65 = OUTLINED_FUNCTION_82();
      v66 = OUTLINED_FUNCTION_218(v65, v153);
      *v64 = 136315138;
      v67 = v137;
      v135 = v61;
      v132 = v63;
      v68 = v139;
      (v139)(v66);
      sub_1DC51379C();
      v69 = v143;
      v144(v137, v143);
      sub_1DC5110DC();
      v71 = v70;
      OUTLINED_FUNCTION_22_8();
      v72();
      v73 = OUTLINED_FUNCTION_80_4();
      v75 = sub_1DC291244(v73, v71, v74);

      *(v64 + 4) = v75;
      v61 = v135;
      _os_log_impl(&dword_1DC287000, v62, v132, "removing entry from nluRequestIdToStartRequestId for nlRequestId: %s", v64, 0xCu);
      v76 = OUTLINED_FUNCTION_191(v153);
      __swift_destroy_boxed_opaque_existential_1Tm(v76);
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_40_0();

      v77 = v144;
      v78 = v141;
      v142 = *(v146 + 8);
      v79 = v142(v78, v145);
    }

    else
    {

      v93 = v141;
      v142 = *(v146 + 8);
      v79 = v142(v93, v145);
      v68 = v139;
      v69 = v143;
      v77 = v144;
      v67 = v137;
    }

    (v68)(v79);
    sub_1DC51379C();
    v77(v67, v69);
    sub_1DC5110DC();
    OUTLINED_FUNCTION_22_8();
    v94();
    OUTLINED_FUNCTION_127_0();
    v96 = (*(v95 + 648))(v149);
    v97 = OUTLINED_FUNCTION_63_0();
    sub_1DC358108(v97, v98);

    v99 = OUTLINED_FUNCTION_223();
    v96(v99);
    OUTLINED_FUNCTION_20_3();
    sub_1DC510AEC();
    OUTLINED_FUNCTION_127_0();
    v100 = OUTLINED_FUNCTION_231();
    v101(v100);
    sub_1DC28F308(v152, &v147, &qword_1ECC7CE28, &unk_1DC524E10);
    if (v148)
    {
      sub_1DC28F9B0(&v147, v149);
      OUTLINED_FUNCTION_250();
      v102 = OUTLINED_FUNCTION_63_0();
      v103(v102);
      v68();
      sub_1DC51379C();
      v144(v67, v143);
      sub_1DC5110DC();
      OUTLINED_FUNCTION_22_8();
      v104();
      OUTLINED_FUNCTION_147();
      v105 = OUTLINED_FUNCTION_56_0();
      v106(v105);

      v107 = v150;
      v108 = v151;
      OUTLINED_FUNCTION_250();
      (*(v108 + 8))(v61, v107, v108);
      sub_1DC28EB30(v152, &qword_1ECC7CE28, &unk_1DC524E10);
      __swift_destroy_boxed_opaque_existential_1Tm(v149);
    }

    else
    {
      sub_1DC28EB30(&v147, &qword_1ECC7CE28, &unk_1DC524E10);
      v109 = OUTLINED_FUNCTION_184(&a10);
      (v133)(v109, v134, v145);
      v110 = v61;
      v111 = sub_1DC516F6C();
      v112 = sub_1DC517BAC();

      if (os_log_type_enabled(v111, v112))
      {
        OUTLINED_FUNCTION_140();
        *&v147 = OUTLINED_FUNCTION_60_6();
        *v145 = 136315394;
        v139();
        sub_1DC51379C();
        v144(v137, v143);
        sub_1DC5110DC();
        OUTLINED_FUNCTION_193();
        OUTLINED_FUNCTION_22_8();
        v113();
        v114 = OUTLINED_FUNCTION_74();
        sub_1DC291244(v114, v115, v116);
        OUTLINED_FUNCTION_121();

        *(v145 + 4) = v138;
        *(v145 + 12) = 2080;
        v117 = sub_1DC5138DC();
        v150 = v143;
        OUTLINED_FUNCTION_20_11();
        v151 = sub_1DC293BE4(v118, v119, MEMORY[0x1E69D1028]);
        __swift_allocate_boxed_opaque_existential_1(v149);
        v139();
        sub_1DC5138CC();
        OUTLINED_FUNCTION_193();
        __swift_destroy_boxed_opaque_existential_1Tm(v149);
        v120 = OUTLINED_FUNCTION_74();
        sub_1DC291244(v120, v121, v122);
        OUTLINED_FUNCTION_121();

        *(v145 + 14) = v117;
        OUTLINED_FUNCTION_42_1();
        _os_log_impl(v123, v124, v125, v126, v127, 0x16u);
        OUTLINED_FUNCTION_184(&a11);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_42();
        OUTLINED_FUNCTION_31();

        v128 = v145;
        v129 = v136;
      }

      else
      {

        v129 = OUTLINED_FUNCTION_56_0();
      }

      v142(v129, v128);
      sub_1DC28EB30(v152, &qword_1ECC7CE28, &unk_1DC524E10);
    }
  }

  else
  {
    v80 = sub_1DC28D414();
    (*(v146 + 16))(v140, v80, v145);
    v81 = v26;
    v82 = sub_1DC516F6C();
    v83 = sub_1DC517BAC();

    if (os_log_type_enabled(v82, v83))
    {
      v84 = OUTLINED_FUNCTION_63();
      v85 = OUTLINED_FUNCTION_82();
      v149[0] = v85;
      *v84 = 136315138;
      v86 = sub_1DC5138DC();
      v153[1] = v143;
      OUTLINED_FUNCTION_20_11();
      v153[2] = sub_1DC293BE4(v87, v88, MEMORY[0x1E69D1028]);
      __swift_allocate_boxed_opaque_existential_1(v152);
      v139();
      sub_1DC5138CC();
      OUTLINED_FUNCTION_193();
      __swift_destroy_boxed_opaque_existential_1Tm(v152);
      v89 = OUTLINED_FUNCTION_80_4();
      sub_1DC291244(v89, v81, v90);
      OUTLINED_FUNCTION_121();

      *(v84 + 4) = v86;
      _os_log_impl(&dword_1DC287000, v82, v83, "startRequestId not available for response: %s", v84, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v85);
      OUTLINED_FUNCTION_67();
      OUTLINED_FUNCTION_58();

      v91 = OUTLINED_FUNCTION_176();
      v92(v91);
    }

    else
    {

      v130 = OUTLINED_FUNCTION_176();
      v131(v130);
    }
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC35444C()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  sub_1DC51737C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_3();
  v16 = sub_1DC5173CC();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_17_0();
  OUTLINED_FUNCTION_27_5();
  v8 = swift_allocObject();
  *(v8 + 16) = v3;
  *(v8 + 24) = v0;
  v17[4] = sub_1DC357D80;
  v17[5] = v8;
  OUTLINED_FUNCTION_5_4();
  v17[1] = 1107296256;
  OUTLINED_FUNCTION_3_14();
  v17[2] = v9;
  v17[3] = &block_descriptor_112;
  v10 = _Block_copy(v17);

  sub_1DC51739C();
  OUTLINED_FUNCTION_1_14();
  sub_1DC293BE4(v11, v12, MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CD40, &unk_1DC523860);
  sub_1DC2C4B5C(&qword_1EDAC7FC0, &unk_1ECC7CD40, &unk_1DC523860);
  OUTLINED_FUNCTION_149_1();
  sub_1DC517E9C();
  v13 = OUTLINED_FUNCTION_168_1();
  MEMORY[0x1E12964B0](v13);
  _Block_release(v10);
  v14 = OUTLINED_FUNCTION_30_6();
  v15(v14);
  (*(v6 + 8))(v1, v16);

  OUTLINED_FUNCTION_34();
}

void sub_1DC354670()
{
  OUTLINED_FUNCTION_33();
  v53 = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_10(v2);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_25();
  v52 = v4;
  OUTLINED_FUNCTION_12();
  v5 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  v11 = (v9 - v10);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_23_1();
  v51 = v13;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_23_1();
  v54 = v15;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v49 - v17;
  sub_1DC28D414();
  v19 = *(v7 + 16);
  OUTLINED_FUNCTION_207();
  v19();
  v20 = sub_1DC516F6C();
  sub_1DC517B9C();
  OUTLINED_FUNCTION_116();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = OUTLINED_FUNCTION_249();
    v50 = v11;
    *v22 = 67109120;
    *(v22 + 4) = v53 & 1;
    _os_log_impl(&dword_1DC287000, v20, v0, "assets changed, available: %{BOOL}d", v22, 8u);
    v11 = v50;
    OUTLINED_FUNCTION_66();
  }

  v23 = *(v7 + 8);
  v23(v18, v5);
  OUTLINED_FUNCTION_64_2();
  (*(v24 + 368))();
  OUTLINED_FUNCTION_79_4();
  if (v26 || (v25 & 1) == 0)
  {
    OUTLINED_FUNCTION_207();
    v19();
    v44 = sub_1DC516F6C();
    v45 = sub_1DC517B9C();
    if (OUTLINED_FUNCTION_15_4(v45))
    {
      v46 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_18_12(v46);
      OUTLINED_FUNCTION_33_10(&dword_1DC287000, v47, v48, "setup did not finish before the assets notification so ignore the change");
      OUTLINED_FUNCTION_40_0();
    }

    v23(v11, v5);
  }

  else
  {
    OUTLINED_FUNCTION_207();
    v19();
    v27 = sub_1DC516F6C();
    sub_1DC517B9C();
    OUTLINED_FUNCTION_116();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_52_1(v29);
      OUTLINED_FUNCTION_51_8(&dword_1DC287000, v30, v31, "setup finished before the assets notification so mark it as changed");
      OUTLINED_FUNCTION_66();
    }

    v23(v54, v5);
    OUTLINED_FUNCTION_64_2();
    (*(v32 + 568))(1);
    OUTLINED_FUNCTION_64_2();
    v34 = v52;
    (*(v33 + 464))();
    v35 = sub_1DC510B6C();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v34, 1, v35);
    sub_1DC28EB30(v34, &unk_1ECC7CA30, &qword_1DC522A00);
    if (EnumTagSinglePayload == 1)
    {
      v37 = v51;
      OUTLINED_FUNCTION_207();
      v19();
      v38 = sub_1DC516F6C();
      sub_1DC517B8C();
      OUTLINED_FUNCTION_116();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = OUTLINED_FUNCTION_35_8();
        OUTLINED_FUNCTION_52_1(v40);
        OUTLINED_FUNCTION_51_8(&dword_1DC287000, v41, v42, "assets changed and there is not active session check if we need to release cdmClient");
        OUTLINED_FUNCTION_58();
      }

      v23(v37, v5);
      OUTLINED_FUNCTION_64_2();
      (*(v43 + 848))();
    }
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC354B00()
{
  OUTLINED_FUNCTION_102_0();
  OUTLINED_FUNCTION_178();
  sub_1DC51737C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_12();
  v67 = sub_1DC5173CC();
  OUTLINED_FUNCTION_0();
  v66 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_1();
  v65 = v10;
  OUTLINED_FUNCTION_12();
  sub_1DC5173EC();
  OUTLINED_FUNCTION_0();
  v63 = v12;
  v64 = v11;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_62();
  v62 = v14;
  OUTLINED_FUNCTION_12();
  v68 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_123();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_20_0(v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CA30, &qword_1DC522A00);
  OUTLINED_FUNCTION_10(v20);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_56_2();
  v22 = sub_1DC510AFC();
  OUTLINED_FUNCTION_0();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_54_8();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_36_0();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_56_1();
  sub_1DC510AEC();
  OUTLINED_FUNCTION_38_1();
  (*(v28 + 536))();
  v29 = *(v1 + OBJC_IVAR____TtC13CDMFoundation8CDMProxy_cdmProxyExpirationInSeconds);
  sub_1DC510A6C();
  v70 = *(v24 + 8);
  v70(v3, v22);
  OUTLINED_FUNCTION_183();
  (*(v30 + 464))();
  v31 = sub_1DC510B6C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, 1, v31);
  sub_1DC28EB30(v2, &unk_1ECC7CA30, &qword_1DC522A00);
  if (EnumTagSinglePayload == 1 && (OUTLINED_FUNCTION_174(), (sub_1DC510A9C() & 1) != 0))
  {
    sub_1DC28D414();
    OUTLINED_FUNCTION_126_0();
    v33();
    v34 = sub_1DC516F6C();
    v35 = sub_1DC517B8C();
    if (OUTLINED_FUNCTION_15_4(v35))
    {
      v36 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_18_12(v36);
      OUTLINED_FUNCTION_33_10(&dword_1DC287000, v37, v38, "cdmClient expired, releasing");
      OUTLINED_FUNCTION_40_0();
    }

    v39 = OUTLINED_FUNCTION_41();
    v40(v39);
    OUTLINED_FUNCTION_183();
    (*(v41 + 848))();
    v70(v6, v22);
    v70(v4, v22);
  }

  else
  {
    v60 = v4;
    sub_1DC510ADC();
    if (v29 <= 0.0 || v42 > 0.0)
    {
      v29 = v42;
    }

    sub_1DC28D414();
    v44 = OUTLINED_FUNCTION_89_0();
    v45(v44);
    v46 = sub_1DC516F6C();
    v47 = sub_1DC517B9C();
    if (OUTLINED_FUNCTION_25_0(v47))
    {
      v48 = OUTLINED_FUNCTION_63();
      *v48 = 134217984;
      *(v48 + 4) = v29;
      _os_log_impl(&dword_1DC287000, v46, v47, "Schedule another check in %f...", v48, 0xCu);
      OUTLINED_FUNCTION_40_0();
    }

    (*(v16 + 8))(v5, v68);
    sub_1DC5173DC();
    sub_1DC51741C(v29);
    v69 = *(v63 + 8);
    v69(v61, v64);
    v71[4] = sub_1DC358C10;
    v71[5] = v0;
    OUTLINED_FUNCTION_66_6();
    v71[1] = 1107296256;
    OUTLINED_FUNCTION_3_14();
    v71[2] = v49;
    v71[3] = &block_descriptor_115;
    v50 = _Block_copy(v71);

    sub_1DC51739C();
    OUTLINED_FUNCTION_1_14();
    sub_1DC293BE4(v51, v52, MEMORY[0x1E69E7F70]);
    v53 = OUTLINED_FUNCTION_74();
    __swift_instantiateConcreteTypeFromMangledNameV2(v53, v54);
    OUTLINED_FUNCTION_62_3();
    sub_1DC2C4B5C(v55, v56, v57);
    sub_1DC517E9C();
    OUTLINED_FUNCTION_76_3();
    MEMORY[0x1E1296480]();
    _Block_release(v50);
    v58 = OUTLINED_FUNCTION_205();
    v59(v58);
    (*(v66 + 8))(v65, v67);
    v69(v62, v64);
    v70(v6, v22);
    v70(v60, v22);
  }

  OUTLINED_FUNCTION_101();
}

uint64_t sub_1DC355238()
{
  v1 = *(v0 + 32);
  OUTLINED_FUNCTION_27_5();
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1DC357DB8;
  *(v2 + 24) = v0;
  v9[4] = sub_1DC292A1C;
  v9[5] = v2;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  OUTLINED_FUNCTION_5_0();
  v9[2] = v3;
  v9[3] = &block_descriptor_122;
  v4 = _Block_copy(v9);

  dispatch_sync(v1, v4);
  _Block_release(v4);
  v5 = OUTLINED_FUNCTION_230();
  LOBYTE(v1) = OUTLINED_FUNCTION_173(v5, v6, v7, 762);

  if (v1)
  {
    __break(1u);
  }

  return result;
}

void sub_1DC355350()
{
  OUTLINED_FUNCTION_102_0();
  v133 = v3;
  v134 = v4;
  sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v140 = v5;
  v141 = v6;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_15();
  v139 = v7;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_23_1();
  v135 = v9;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_23_1();
  v131 = v11;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_62();
  v137 = v13;
  OUTLINED_FUNCTION_12();
  v14 = sub_1DC510AFC();
  OUTLINED_FUNCTION_0();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_99_0();
  MEMORY[0x1EEE9AC00](v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CA30, &qword_1DC522A00);
  v20 = OUTLINED_FUNCTION_10(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_15();
  v138 = v21;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_23_1();
  v132 = v23;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_23_9();
  v25 = sub_1DC510B6C();
  OUTLINED_FUNCTION_0();
  v27 = v26;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_15();
  v130 = v29;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_23_1();
  v129 = v31;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_23_1();
  v136 = v33;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v127 - v35;
  OUTLINED_FUNCTION_38_1();
  (*(v37 + 488))();
  OUTLINED_FUNCTION_30_8(v1);
  if (v38)
  {
    sub_1DC28EB30(v1, &unk_1ECC7CA30, &qword_1DC522A00);
    sub_1DC28D414();
    OUTLINED_FUNCTION_82_2();
    v39 = OUTLINED_FUNCTION_213_0();
    v40(v39);
    v41 = sub_1DC516F6C();
    v42 = sub_1DC517B9C();
    if (OUTLINED_FUNCTION_14_7(v42))
    {
      v43 = OUTLINED_FUNCTION_35_8();
      OUTLINED_FUNCTION_81_2(v43);
      OUTLINED_FUNCTION_16_0();
      _os_log_impl(v44, v45, v46, v47, v48, 2u);
      OUTLINED_FUNCTION_31();
    }

    v49 = OUTLINED_FUNCTION_16();
    v50(v49);
  }

  else
  {
    v128 = v27;
    v51 = *(v27 + 32);
    v139 = v36;
    v52 = v1;
    v53 = v51;
    (v51)(v36, v52, v25);
    v54 = sub_1DC510ACC();
    (*(*v0 + 512))(v54);
    sub_1DC510A5C();
    v56 = v55;
    v57 = *(v16 + 8);
    v57(v2, v14);
    v58 = OUTLINED_FUNCTION_229();
    (v57)(v58);
    v59 = v0;
    if (v56 >= 180.0)
    {
      v77 = OUTLINED_FUNCTION_27();
      __swift_storeEnumTagSinglePayload(v77, v78, v79, v25);
      OUTLINED_FUNCTION_127_0();
      v80 = OUTLINED_FUNCTION_231();
      v81(v80);
      sub_1DC28D414();
      OUTLINED_FUNCTION_115_1();
      v82 = OUTLINED_FUNCTION_213_0();
      v83(v82);
      v84 = sub_1DC516F6C();
      v85 = sub_1DC517B9C();
      if (OUTLINED_FUNCTION_14_7(v85))
      {
        v86 = OUTLINED_FUNCTION_35_8();
        OUTLINED_FUNCTION_18_12(v86);
        OUTLINED_FUNCTION_38_0();
        OUTLINED_FUNCTION_145_1(v87, v88, v89, v90);
        OUTLINED_FUNCTION_40_0();
      }

      v91 = OUTLINED_FUNCTION_16();
      v92(v91);
      (*(v128 + 8))(v139, v25);
    }

    else
    {
      v60 = v132;
      sub_1DC510B0C();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v60, 1, v25);
      v62 = v140;
      v63 = (v141 + 16);
      if (EnumTagSinglePayload == 1)
      {
        sub_1DC28EB30(v60, &unk_1ECC7CA30, &qword_1DC522A00);
        sub_1DC28D414();
        v64 = OUTLINED_FUNCTION_235();
        v65(v64);
        v66 = sub_1DC516F6C();
        v67 = sub_1DC517B9C();
        v68 = OUTLINED_FUNCTION_14_7(v67);
        v69 = v128;
        if (v68)
        {
          v70 = OUTLINED_FUNCTION_35_8();
          OUTLINED_FUNCTION_18_12(v70);
          OUTLINED_FUNCTION_38_0();
          OUTLINED_FUNCTION_145_1(v71, v72, v73, v74);
          OUTLINED_FUNCTION_40_0();
        }

        v75 = OUTLINED_FUNCTION_42_2();
        v76(v75);
        (*(v69 + 8))(v139, v25);
      }

      else
      {
        v93 = v136;
        v94 = OUTLINED_FUNCTION_62_2();
        v53(v94);
        v95 = sub_1DC28D414();
        v96 = v137;
        (*v63)(v137, v95, v62);
        v97 = v25;
        v99 = v128;
        v98 = v129;
        v100 = *(v128 + 16);
        v100(v129, v139, v97);
        v101 = v130;
        v100(v130, v93, v97);
        v102 = sub_1DC516F6C();
        v103 = sub_1DC517B9C();
        if (OUTLINED_FUNCTION_14_7(v103))
        {
          v104 = OUTLINED_FUNCTION_140();
          v105 = OUTLINED_FUNCTION_143();
          v135 = v59;
          v142 = v105;
          *v104 = 136315394;
          LODWORD(v134) = v96;
          v106 = sub_1DC510B1C();
          v107 = v97;
          v109 = v108;
          v110 = *(v99 + 8);
          v110(v98, v107);
          v111 = sub_1DC291244(v106, v109, &v142);
          v97 = v107;

          *(v104 + 4) = v111;
          *(v104 + 12) = 2080;
          sub_1DC510B1C();
          OUTLINED_FUNCTION_193();
          v112 = OUTLINED_FUNCTION_47_6();
          (v110)(v112);
          v113 = OUTLINED_FUNCTION_74();
          sub_1DC291244(v113, v114, v115);
          OUTLINED_FUNCTION_121();

          *(v104 + 14) = v101;
          _os_log_impl(&dword_1DC287000, v102, v134, "Linking nlSetupID: %s startRequestId UUID: %s", v104, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_66();
          OUTLINED_FUNCTION_67();

          (*(v141 + 8))(v137, v140);
        }

        else
        {

          v110 = *(v99 + 8);
          v116 = OUTLINED_FUNCTION_47_6();
          (v110)(v116);
          v117 = OUTLINED_FUNCTION_85_0();
          (v110)(v117);
          (*(v141 + 8))(v137, v62);
        }

        OUTLINED_FUNCTION_12_0();
        v118 = v136;
        v119 = OUTLINED_FUNCTION_35_0();
        v120(v119);
        v121 = OUTLINED_FUNCTION_27();
        __swift_storeEnumTagSinglePayload(v121, v122, v123, v97);
        OUTLINED_FUNCTION_127_0();
        v124 = OUTLINED_FUNCTION_231();
        v125(v124);
        v110(v118, v97);
        v126 = OUTLINED_FUNCTION_153_0();
        (v110)(v126);
      }
    }
  }

  OUTLINED_FUNCTION_101();
}

void sub_1DC355BE4()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v4 = v3;
  v47 = v6;
  v48 = v5;
  v8 = v7;
  sub_1DC51110C();
  OUTLINED_FUNCTION_0();
  v44 = v10;
  v45 = v9;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_1();
  v43 = v11;
  OUTLINED_FUNCTION_12();
  v12 = sub_1DC51373C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_17_0();
  v14 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_1();
  v20 = v19 - v18;
  sub_1DC28D414();
  OUTLINED_FUNCTION_55_10();
  v46 = v14;
  v21(v20);
  OUTLINED_FUNCTION_44_8();
  v22(v0, v2, v12);

  v23 = sub_1DC516F6C();
  v24 = sub_1DC517BAC();

  v42 = v24;
  if (os_log_type_enabled(v23, v24))
  {
    v25 = OUTLINED_FUNCTION_82();
    v49 = swift_slowAlloc();
    *v25 = 136315650;
    *(v25 + 4) = sub_1DC291244(v48, v8, &v49);
    *(v25 + 12) = 2080;
    v41 = v23;
    sub_1DC51370C();
    sub_1DC5110DC();
    v26 = v4;
    v28 = v27;
    (*(v44 + 8))(v43, v45);
    v29 = OUTLINED_FUNCTION_150_0();
    v30(v29, v12);
    v31 = OUTLINED_FUNCTION_128_2();
    v33 = sub_1DC291244(v31, v28, v32);

    *(v25 + 14) = v33;
    *(v25 + 22) = 2080;
    if (v26)
    {
      v34 = v47;
    }

    else
    {
      v34 = 0;
    }

    v35 = OUTLINED_FUNCTION_56_0();
    sub_1DC291244(v35, v36, v37);
    OUTLINED_FUNCTION_162();

    *(v25 + 24) = v34;
    _os_log_impl(&dword_1DC287000, v41, v42, "NLURequest timed out for startRequestId: %s nluRequestId: %s resultCandidateId: %s", v25, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_40_0();
  }

  else
  {

    v38 = OUTLINED_FUNCTION_150_0();
    v39(v38, v12);
  }

  (*(v16 + 8))(v20, v46);
  OUTLINED_FUNCTION_12_0();
  (*(v40 + 136))();
  OUTLINED_FUNCTION_34();
}

id *sub_1DC355FA0()
{
  sub_1DC28EB30(v0 + OBJC_IVAR____TtC13CDMFoundation8CDMProxy_locale, &qword_1ECC7CD00, &unk_1DC5259F0);

  sub_1DC28EB30(v0 + OBJC_IVAR____TtC13CDMFoundation8CDMProxy_setupTimeSignpostId, &unk_1ECC7CD08, &unk_1DC524D00);
  sub_1DC28EB30(v0 + OBJC_IVAR____TtC13CDMFoundation8CDMProxy_activeSessionId, &unk_1ECC7CA30, &qword_1DC522A00);
  sub_1DC28EB30(v0 + OBJC_IVAR____TtC13CDMFoundation8CDMProxy_currentNLSetupId, &unk_1ECC7CA30, &qword_1DC522A00);
  v1 = OBJC_IVAR____TtC13CDMFoundation8CDMProxy_lastSetupTime;
  v2 = sub_1DC510AFC();
  OUTLINED_FUNCTION_35();
  v4 = *(v3 + 8);
  v4(v0 + v1, v2);
  v4(v0 + OBJC_IVAR____TtC13CDMFoundation8CDMProxy_lastAccessTime, v2);

  v5 = OBJC_IVAR____TtC13CDMFoundation8CDMProxy_cdmSetupTimeoutMillis;
  sub_1DC51735C();
  OUTLINED_FUNCTION_35();
  (*(v6 + 8))(v0 + v5);
  return v0;
}

uint64_t sub_1DC356180()
{
  sub_1DC355FA0();
  OUTLINED_FUNCTION_38_1();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v2, v3);
}

void sub_1DC356380()
{
  OUTLINED_FUNCTION_33();
  v53 = v3;
  v5 = v4;
  v6 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_23_9();
  v54 = sub_1DC51110C();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_123();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_56_1();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    (*((*MEMORY[0x1E69E7D40] & *v5) + 0x78))();
    sub_1DC28D414();
    OUTLINED_FUNCTION_106_2();
    v17(v2);
    OUTLINED_FUNCTION_82_2();
    v18 = OUTLINED_FUNCTION_16();
    v19(v18);
    v20 = v53;
    v21 = sub_1DC516F6C();
    sub_1DC517BAC();

    if (os_log_type_enabled(v21, v2))
    {
      v51 = v6;
      v22 = OUTLINED_FUNCTION_140();
      v55 = OUTLINED_FUNCTION_143();
      *v22 = 136315394;
      v49 = v2;
      v23 = sub_1DC5110DC();
      v52 = v8;
      v50 = v2;
      v24 = *(v12 + 8);
      v25 = OUTLINED_FUNCTION_219();
      v24(v25);
      v26 = OUTLINED_FUNCTION_56_0();
      sub_1DC291244(v26, v27, v28);
      OUTLINED_FUNCTION_162();

      *(v22 + 4) = v23;
      *(v22 + 12) = 2080;
      swift_getErrorValue();
      v29 = sub_1DC5182AC();
      v31 = sub_1DC291244(v29, v30, &v55);

      *(v22 + 14) = v31;
      _os_log_impl(&dword_1DC287000, v21, v49, "Received error from CDM: requestId: %s %s", v22, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_66();

      v32 = v24;
      (*(v52 + 8))(v50, v51);
    }

    else
    {

      v32 = *(v12 + 8);
      v48 = OUTLINED_FUNCTION_219();
      v32(v48);
      (*(v8 + 8))(v2, v6);
    }

    (*(*v16 + 904))(v0, v53);

    (v32)(v0, v54);
  }

  else
  {
    sub_1DC28D414();
    OUTLINED_FUNCTION_115_1();
    v33(v1);
    v34 = v53;
    v35 = v5;
    v36 = sub_1DC516F6C();
    v37 = sub_1DC517BAC();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = OUTLINED_FUNCTION_140();
      v39 = OUTLINED_FUNCTION_249();
      v40 = OUTLINED_FUNCTION_82();
      v55 = v40;
      *v38 = 138412546;
      *(v38 + 4) = v35;
      *v39 = v35;
      *(v38 + 12) = 2080;
      swift_getErrorValue();
      v41 = v35;
      v42 = sub_1DC5182AC();
      v44 = sub_1DC291244(v42, v43, &v55);

      *(v38 + 14) = v44;
      _os_log_impl(&dword_1DC287000, v36, v37, "Received error from CDM for expired cdmProxy dropping on the floor, requestId: %@ %s", v38, 0x16u);
      sub_1DC28EB30(v39, &qword_1ECC7DFE0, &qword_1DC5227F0);
      OUTLINED_FUNCTION_67();
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      OUTLINED_FUNCTION_58();
      OUTLINED_FUNCTION_66();

      v45 = OUTLINED_FUNCTION_209();
    }

    else
    {

      v45 = OUTLINED_FUNCTION_209();
      v46 = v6;
    }

    v47(v45, v46);
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC3568E0()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v4 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_123();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_94_1();
  Strong = swift_weakLoadStrong();
  sub_1DC28D414();
  OUTLINED_FUNCTION_57_9();
  if (Strong)
  {
    v10(v0);
    v11 = v3;
    v12 = sub_1DC516F6C();
    v13 = sub_1DC517B9C();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = OUTLINED_FUNCTION_63();
      v32 = OUTLINED_FUNCTION_82();
      v33[5] = v32;
      *v14 = 136315138;
      sub_1DC5138DC();
      v31 = *((*MEMORY[0x1E69E7D40] & *v11) + 0x78);
      v33[3] = sub_1DC5137CC();
      OUTLINED_FUNCTION_20_11();
      v33[4] = sub_1DC293BE4(v15, v16, MEMORY[0x1E69D1028]);
      __swift_allocate_boxed_opaque_existential_1(v33);
      v31();
      sub_1DC5138CC();
      v18 = v17;
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      v19 = OUTLINED_FUNCTION_128_2();
      v21 = sub_1DC291244(v19, v18, v20);

      *(v14 + 4) = v21;
      _os_log_impl(&dword_1DC287000, v12, v13, "Received Swift NluResponse: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      OUTLINED_FUNCTION_42();
      OUTLINED_FUNCTION_102();
    }

    v22 = OUTLINED_FUNCTION_30_6();
    v23(v22);
    OUTLINED_FUNCTION_117_2();
    (*(v24 + 912))(v11);
  }

  else
  {
    v10(v1);
    v25 = v3;
    v26 = sub_1DC516F6C();
    v27 = sub_1DC517BAC();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = OUTLINED_FUNCTION_63();
      v29 = OUTLINED_FUNCTION_249();
      *v28 = 138412290;
      *(v28 + 4) = v25;
      *v29 = v25;
      v30 = v25;
      _os_log_impl(&dword_1DC287000, v26, v27, "Received CDMNluResponse for expired session, dropping on the the floor, CDMNluResponse's nluResponse: %@", v28, 0xCu);
      sub_1DC28EB30(v29, &qword_1ECC7DFE0, &qword_1DC5227F0);
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_42();
    }

    (*(v6 + 8))(v1, v4);
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC356CEC()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_38_2();
  sub_1DC510C8C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1();
  v2 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_3();
  sub_1DC28D414();
  OUTLINED_FUNCTION_106_2();
  v4(v0);
  OUTLINED_FUNCTION_89_0();
  OUTLINED_FUNCTION_70_4();
  v5();
  v6 = sub_1DC516F6C();
  v7 = sub_1DC517B9C();
  if (os_log_type_enabled(v6, v7))
  {
    v26 = v2;
    v8 = OUTLINED_FUNCTION_63();
    v27 = OUTLINED_FUNCTION_82();
    *v8 = 136315138;
    OUTLINED_FUNCTION_8_9();
    sub_1DC293BE4(v9, v10, MEMORY[0x1E6969798]);
    v11 = sub_1DC51823C();
    v13 = v12;
    v14 = OUTLINED_FUNCTION_16();
    v15(v14);
    v16 = OUTLINED_FUNCTION_128_2();
    sub_1DC291244(v16, v13, v17);
    OUTLINED_FUNCTION_23_2();

    *(v8 + 4) = v11;
    OUTLINED_FUNCTION_247(&dword_1DC287000, v18, v19, "assetsAvailable for locale: %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_102();

    v20 = OUTLINED_FUNCTION_200();
    v22 = v26;
  }

  else
  {

    v23 = OUTLINED_FUNCTION_16();
    v24(v23);
    v20 = OUTLINED_FUNCTION_200();
    v22 = v2;
  }

  v21(v20, v22);
  if (swift_weakLoadStrong())
  {
    OUTLINED_FUNCTION_110();
    (*(v25 + 920))(1);
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC357050()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v4 = v3;
  sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_28_0();
  sub_1DC28D414();
  OUTLINED_FUNCTION_57_9();
  v6(v0);
  v7 = sub_1DC516F6C();
  v8 = sub_1DC517B9C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = OUTLINED_FUNCTION_35_8();
    *v9 = 0;
    _os_log_impl(&dword_1DC287000, v7, v8, v4, v9, 2u);
    OUTLINED_FUNCTION_102();
  }

  v10 = OUTLINED_FUNCTION_74();
  v11(v10);
  if (swift_weakLoadStrong())
  {
    OUTLINED_FUNCTION_110();
    (*(v12 + 920))(v2 & 1);
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC3571FC()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_38_2();
  sub_1DC510C8C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1();
  v2 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_3();
  sub_1DC28D414();
  OUTLINED_FUNCTION_106_2();
  v4(v0);
  OUTLINED_FUNCTION_89_0();
  OUTLINED_FUNCTION_70_4();
  v5();
  v6 = sub_1DC516F6C();
  v7 = sub_1DC517B9C();
  if (os_log_type_enabled(v6, v7))
  {
    v26 = v2;
    v8 = OUTLINED_FUNCTION_63();
    v27 = OUTLINED_FUNCTION_82();
    *v8 = 136315138;
    OUTLINED_FUNCTION_8_9();
    sub_1DC293BE4(v9, v10, MEMORY[0x1E6969798]);
    v11 = sub_1DC51823C();
    v13 = v12;
    v14 = OUTLINED_FUNCTION_16();
    v15(v14);
    v16 = OUTLINED_FUNCTION_128_2();
    sub_1DC291244(v16, v13, v17);
    OUTLINED_FUNCTION_23_2();

    *(v8 + 4) = v11;
    OUTLINED_FUNCTION_247(&dword_1DC287000, v18, v19, "assetsAvailable for locale %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    OUTLINED_FUNCTION_42();
    OUTLINED_FUNCTION_102();

    v20 = OUTLINED_FUNCTION_200();
    v22 = v26;
  }

  else
  {

    v23 = OUTLINED_FUNCTION_16();
    v24(v23);
    v20 = OUTLINED_FUNCTION_200();
    v22 = v2;
  }

  v21(v20, v22);
  if (swift_weakLoadStrong())
  {
    OUTLINED_FUNCTION_110();
    (*(v25 + 920))(1);
  }

  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC357550()
{
  OUTLINED_FUNCTION_178();
  sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_28_0();
  sub_1DC28D414();
  OUTLINED_FUNCTION_19_1();
  v2(v0);
  v3 = sub_1DC516F6C();
  sub_1DC517B9C();
  OUTLINED_FUNCTION_182();
  if (os_log_type_enabled(v3, v4))
  {
    *OUTLINED_FUNCTION_35_8() = 0;
    OUTLINED_FUNCTION_162_1();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_67();
  }

  v10 = OUTLINED_FUNCTION_56_0();
  v11(v10);
  result = swift_weakLoadStrong();
  if (result)
  {
    OUTLINED_FUNCTION_110();
    (*(v13 + 920))(0);
  }

  return result;
}

id sub_1DC3576F4()
{
  swift_weakInit();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CDMClientNotification();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_1DC357760(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CDMClientNotification();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_1DC3577A4(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  v10[4] = a2;
  v10[5] = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1DC358C0C;
  v10[3] = &block_descriptor_149;
  v7 = _Block_copy(v10);
  v8 = [v4 initWithTimeoutInterval:a1 onQueue:v7 timeoutHandler:a4];

  _Block_release(v7);

  return v8;
}

uint64_t sub_1DC357890()
{
  v1 = sub_1DC510C8C();
  OUTLINED_FUNCTION_52(v1);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = sub_1DC51623C();
  OUTLINED_FUNCTION_52(v4);
  v5 = OUTLINED_FUNCTION_52_8();
  v8 = *v7;
  v9 = v7[1];

  return sub_1DC34CC60(v5, v0 + v3, v0 + v6, v8, v9);
}

uint64_t sub_1DC357970()
{
  OUTLINED_FUNCTION_178();
  v0 = sub_1DC51623C();
  OUTLINED_FUNCTION_10(v0);
  sub_1DC2936F0();
  v2 = v1;
  OUTLINED_FUNCTION_38_1();
  v4 = (*(v3 + 344))();
  if (v5)
  {
    if (v4 == 0xD000000000000012 && v5 == v2)
    {
    }

    else
    {
      v7 = sub_1DC51825C();

      if ((v7 & 1) == 0)
      {
        return result;
      }
    }

    OUTLINED_FUNCTION_12_0();
    return (*(v9 + 848))();
  }
}

void sub_1DC357AC0()
{
  v0 = sub_1DC510B6C();
  OUTLINED_FUNCTION_52(v0);
  OUTLINED_FUNCTION_21_10();

  sub_1DC34E9D8();
}

void sub_1DC357B64()
{
  v0 = sub_1DC510B6C();
  OUTLINED_FUNCTION_52(v0);
  OUTLINED_FUNCTION_21_10();

  sub_1DC3502C4();
}

uint64_t sub_1DC357BEC(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void sub_1DC357CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v21 = sub_1DC51110C();
  OUTLINED_FUNCTION_52(v21);
  OUTLINED_FUNCTION_21_10();
  v29 = *(v20 + v28);
  v30 = *(v20 + ((v28 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1DC352ECC(v20 + v27, v29, v30, v22, v23, v24, v25, v26, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_1DC357DB8()
{
  sub_1DC292F48();
  sub_1DC29B898();
  sub_1DC29B97C();
  OUTLINED_FUNCTION_12_0();
  v1 = *(v0 + 304);

  return v1(0);
}

uint64_t type metadata accessor for CDMProxy(uint64_t a1)
{
  result = qword_1ECC7EBE0;
  if (!qword_1ECC7EBE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DC357E64(uint64_t a1)
{
  sub_1DC3580B4(319, &qword_1ECC7BE50, MEMORY[0x1E6969770]);
  if (v1 <= 0x3F)
  {
    sub_1DC3580B4(319, &qword_1ECC7BAB8, MEMORY[0x1E69E93B8]);
    if (v2 <= 0x3F)
    {
      sub_1DC3580B4(319, &unk_1ECC7BE80, MEMORY[0x1E69695A8]);
      if (v3 <= 0x3F)
      {
        sub_1DC510AFC();
        if (v4 <= 0x3F)
        {
          sub_1DC51735C();
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_1DC3580B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DC517D8C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1DC358108(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1DC2AEB04(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D520, &qword_1DC522A60);
  sub_1DC517FFC();

  v7 = *(*(v9 + 56) + 16 * v6);
  sub_1DC51800C();
  *v3 = v9;
  return v7;
}

uint64_t sub_1DC3581E8(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_1DC2AEB04(a2, a3);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CE48, qword_1DC524E30);
  if ((sub_1DC517FFC() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_1DC2AEB04(a2, a3);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_1DC51829C();
    __break(1u);
    return result;
  }

  v12 = v14;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    v17 = (v16[7] + 40 * v12);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);

    return sub_1DC28F9B0(a1, v17);
  }

  else
  {
    sub_1DC358714(v12, a2, a3, a1, v16);
  }
}

uint64_t sub_1DC358334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v11 = *v5;
  v12 = sub_1DC2AEB04(a3, a4);
  if (__OFADD__(v11[2], (v13 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v12;
  v15 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D520, &qword_1DC522A60);
  if ((sub_1DC517FFC() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = sub_1DC2AEB04(a3, a4);
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_13:
    result = sub_1DC51829C();
    __break(1u);
    return result;
  }

  v14 = v16;
LABEL_5:
  v18 = *v6;
  if (v15)
  {
    v19 = (v18[7] + 16 * v14);
    *v19 = a1;
    v19[1] = a2;
  }

  else
  {
    sub_1DC33A364(v14, a3, a4, a1, a2, v18);
  }
}

uint64_t objectdestroy_63Tm()
{
  OUTLINED_FUNCTION_241();
  sub_1DC510B6C();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_160_0();
  v2 = sub_1DC51373C();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  v5 = (((v1 + 23) & 0xFFFFFFFFFFFFFFF8) + *(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = OUTLINED_FUNCTION_95_0();
  v7(v6);
  OUTLINED_FUNCTION_248();

  (*(v4 + 8))(v0 + v5, v2);
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_240();

  return MEMORY[0x1EEE6BDD0](v8, v9, v10);
}

void sub_1DC3585C0()
{
  v0 = sub_1DC510B6C();
  OUTLINED_FUNCTION_52(v0);
  v1 = sub_1DC51373C();
  OUTLINED_FUNCTION_10(v1);
  sub_1DC352728();
}

void sub_1DC3586A8()
{
  v0 = sub_1DC51373C();
  OUTLINED_FUNCTION_10(v0);

  sub_1DC3529D4();
}

uint64_t sub_1DC358714(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1DC28F9B0(a4, a5[7] + 40 * a1);
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

uint64_t sub_1DC3587E8()
{
  OUTLINED_FUNCTION_178();
  v0 = sub_1DC510C8C();
  OUTLINED_FUNCTION_52(v0);
  v1 = OUTLINED_FUNCTION_56_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_10(v3);
  v4 = OUTLINED_FUNCTION_56_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  sub_1DC51089C();
  OUTLINED_FUNCTION_233();
  OUTLINED_FUNCTION_179();
  return v6();
}

uint64_t sub_1DC358928()
{
  v1 = sub_1DC510C8C();
  OUTLINED_FUNCTION_52(v1);
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v5 = (v0 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  return (*(**(v0 + 16) + 856))(v0 + v4, *v5, v5[1], 0);
}

uint64_t objectdestroy_176Tm()
{
  OUTLINED_FUNCTION_33();
  sub_1DC510C8C();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_160_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CE60, &qword_1DC524EF0);
  OUTLINED_FUNCTION_0();
  v4 = v3;
  v5 = (v1 + *(v3 + 80) + 16) & ~*(v3 + 80);

  v6 = OUTLINED_FUNCTION_95_0();
  v7(v6);
  OUTLINED_FUNCTION_248();
  (*(v4 + 8))(v0 + v5, v2);
  OUTLINED_FUNCTION_34();

  return MEMORY[0x1EEE6BDD0](v8, v9, v10);
}

uint64_t sub_1DC358B14()
{
  OUTLINED_FUNCTION_1_0();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DC29F120;

  return sub_1DC34CE38();
}

uint64_t OUTLINED_FUNCTION_123_1(uint64_t a1)
{

  return sub_1DC517E9C();
}

uint64_t OUTLINED_FUNCTION_130_1()
{
  v4 = (v0 + v1);
  v5 = *(v3 - 216);
  *v4 = *(v3 - 224);
  v4[1] = v5;
  return v0 + v2;
}

unint64_t OUTLINED_FUNCTION_138_0()
{
  v3 = *(v1 - 264);

  return sub_1DC291244(v3, v0, (v1 - 128));
}

void OUTLINED_FUNCTION_145_1(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 2u);
}

uint64_t OUTLINED_FUNCTION_170(uint64_t a1)
{

  return sub_1DC517E9C();
}

void OUTLINED_FUNCTION_171()
{

  JUMPOUT(0x1E12964B0);
}

BOOL OUTLINED_FUNCTION_172()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_173(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_isEscapingClosureAtFileLocation();
}

_WORD *OUTLINED_FUNCTION_181(_WORD *result)
{
  *(v2 - 288) = v1;
  *result = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_196()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_199(uint64_t a1)
{

  return swift_weakInit();
}

uint64_t OUTLINED_FUNCTION_218@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = result;
  *(v2 - 168) = result;
  return result;
}

unint64_t OUTLINED_FUNCTION_242(float a1)
{
  *v1 = a1;
  v5 = *(v3 - 240);

  return sub_1DC291244(v5, v2, (v3 - 168));
}

uint64_t OUTLINED_FUNCTION_244()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_245(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 - 224) = a4;
  *(v5 - 216) = a5;
  *(v5 - 240) = a3;
  *(v5 - 232) = a1;

  return sub_1DC51737C();
}

void OUTLINED_FUNCTION_246(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_247(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_248()
{
}

void *OUTLINED_FUNCTION_250()
{

  return __swift_project_boxed_opaque_existential_1((v1 - 168), v0);
}

uint64_t OUTLINED_FUNCTION_251(uint64_t a1, uint64_t a2)
{

  return sub_1DC28F308(a1, a2, v3, v2);
}

uint64_t sub_1DC359100(uint64_t a1, uint64_t a2, double a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D050, &qword_1DC523AC0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v13 - v8;
  v10 = sub_1DC517AAC();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;
  *(v11 + 48) = v3;
  *(v11 + 56) = a3;

  sub_1DC315A04(0, 0, v9, &unk_1DC524F28, v11);
}

uint64_t sub_1DC359210()
{
  OUTLINED_FUNCTION_1_0();
  v0[5] = v1;
  v0[3] = v2;
  v0[4] = v3;
  v0[2] = v4;
  v5 = sub_1DC516F7C();
  v0[6] = v5;
  OUTLINED_FUNCTION_52(v5);
  v0[7] = v6;
  v0[8] = swift_task_alloc();
  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DC3592C8()
{
  v18 = v0;
  v3 = *(v0 + 7);
  v2 = *(v0 + 8);
  v4 = *(v0 + 6);
  v5 = sub_1DC29120C();
  (*(v3 + 16))(v2, v5, v4);

  v6 = sub_1DC516F6C();
  v7 = sub_1DC517B9C();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = *(v0 + 2);
    v8 = *(v0 + 3);
    OUTLINED_FUNCTION_63();
    v17 = OUTLINED_FUNCTION_14_8();
    *v1 = 136446210;
    *(v1 + 4) = sub_1DC291244(v9, v8, &v17);
    _os_log_impl(&dword_1DC287000, v6, v7, "Registering task %{public}s", v1, 0xCu);
    OUTLINED_FUNCTION_5_20();
    OUTLINED_FUNCTION_102();
  }

  v10 = OUTLINED_FUNCTION_63_0();
  v11(v10);
  v12 = v0[5];
  v14 = *(v0 + 2);
  v13 = *(v0 + 3);
  sub_1DC3595E8(v14, v13);
  sub_1DC35AE70(v14, v13, v12);

  OUTLINED_FUNCTION_2_2();

  return v15();
}

uint64_t sub_1DC359450()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_33_0(v0);
  *v1 = v2;
  v1[1] = sub_1DC359504;

  return sub_1DC359210();
}

uint64_t sub_1DC359504()
{
  OUTLINED_FUNCTION_1_0();
  v1 = *v0;
  OUTLINED_FUNCTION_4_0();
  *v2 = v1;

  OUTLINED_FUNCTION_2_2();

  return v3();
}

void sub_1DC3595E8(uint64_t a1, uint64_t a2)
{
  v18 = sub_1DC517BEC();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  v9 = v8 - v7;
  v10 = sub_1DC517BCC();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1();
  v11 = sub_1DC5173CC();
  MEMORY[0x1EEE9AC00](v11 - 8);
  OUTLINED_FUNCTION_1();
  v17 = [objc_opt_self() sharedScheduler];
  v15 = a1;
  v16 = sub_1DC5176FC();
  sub_1DC298C74(0, &qword_1EDAC7FA0, 0x1E69E9610);
  v20 = a2;

  MEMORY[0x1E1296160](0x65756575712ELL, 0xE600000000000000);
  sub_1DC51738C();
  aBlock = MEMORY[0x1E69E7CC0];
  sub_1DC2BC840();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CD20, &qword_1DC525300);
  sub_1DC2BC7DC();
  sub_1DC517E9C();
  (*(v5 + 104))(v9, *MEMORY[0x1E69E8090], v18);
  v12 = sub_1DC517C1C();
  OUTLINED_FUNCTION_27_5();
  v13 = swift_allocObject();
  *(v13 + 16) = v15;
  *(v13 + 24) = a2;
  v23 = sub_1DC35B704;
  v24 = v13;
  aBlock = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_1DC35AE08;
  v22 = &block_descriptor_4;
  v14 = _Block_copy(&aBlock);

  [v17 registerForTaskWithIdentifier:v16 usingQueue:v12 launchHandler:v14];
  _Block_release(v14);
}

uint64_t sub_1DC3598F8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D050, &qword_1DC523AC0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = aBlock - v7;
  OUTLINED_FUNCTION_27_5();
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  aBlock[4] = sub_1DC35B70C;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DC358C0C;
  aBlock[3] = &block_descriptor_11;
  v10 = _Block_copy(aBlock);

  [a1 setExpirationHandler_];
  _Block_release(v10);
  v11 = sub_1DC517AAC();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a1;
  v13 = a1;
  sub_1DC315A04(0, 0, v8, &unk_1DC524F88, v12);
}

uint64_t sub_1DC359A98(uint64_t a1, unint64_t a2)
{
  v4 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  v10 = v9 - v8;
  v11 = sub_1DC29120C();
  (*(v6 + 16))(v10, v11, v4);

  v12 = sub_1DC516F6C();
  v13 = sub_1DC517B9C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = OUTLINED_FUNCTION_63();
    v15 = OUTLINED_FUNCTION_82();
    v17 = v15;
    *v14 = 136446210;
    *(v14 + 4) = sub_1DC291244(a1, a2, &v17);
    _os_log_impl(&dword_1DC287000, v12, v13, "Received expiration signal for task %{public}s. We will auto schedule next instance.", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    OUTLINED_FUNCTION_102();
    OUTLINED_FUNCTION_66();
  }

  return (*(v6 + 8))(v10, v4);
}

uint64_t sub_1DC359C24()
{
  OUTLINED_FUNCTION_1_0();
  v0[13] = v1;
  v2 = sub_1DC51753C();
  v0[14] = v2;
  OUTLINED_FUNCTION_52(v2);
  v0[15] = v3;
  v0[16] = swift_task_alloc();
  v4 = sub_1DC5108BC();
  v0[17] = v4;
  OUTLINED_FUNCTION_52(v4);
  v0[18] = v5;
  v0[19] = swift_task_alloc();
  v6 = sub_1DC5109BC();
  v0[20] = v6;
  OUTLINED_FUNCTION_52(v6);
  v0[21] = v7;
  v0[22] = swift_task_alloc();
  v0[23] = swift_task_alloc();
  v0[24] = swift_task_alloc();
  v0[25] = swift_task_alloc();
  v0[26] = swift_task_alloc();
  v8 = sub_1DC516F7C();
  v0[27] = v8;
  OUTLINED_FUNCTION_52(v8);
  v0[28] = v9;
  v0[29] = swift_task_alloc();
  v0[30] = swift_task_alloc();
  v0[31] = swift_task_alloc();
  v0[32] = swift_task_alloc();
  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1DC359E50()
{
  v63 = v0;
  v62[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 256);
  v2 = *(v0 + 216);
  v3 = *(v0 + 224);
  v4 = sub_1DC29120C();
  *(v0 + 264) = v4;
  v5 = *(v3 + 16);
  *(v0 + 272) = v5;
  *(v0 + 280) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_1DC516F6C();
  v7 = sub_1DC517B9C();
  if (os_log_type_enabled(v6, v7))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_43_7(&dword_1DC287000, v8, v9, "Begin initializing llm cache manager");
    OUTLINED_FUNCTION_66();
  }

  v10 = *(v0 + 224);

  *(v0 + 288) = *(v10 + 8);
  v11 = OUTLINED_FUNCTION_63_0();
  v12(v11);
  v13 = [objc_opt_self() defaultManager];
  *(v0 + 88) = 0;
  v14 = [v13 URLForDirectory:5 inDomain:1 appropriateForURL:0 create:1 error:v0 + 88];

  v15 = *(v0 + 88);
  if (v14)
  {
    v16 = *(v0 + 184);
    v51 = *(v0 + 192);
    v60 = *(v0 + 200);
    v61 = *(v0 + 168);
    v18 = *(v0 + 152);
    v17 = *(v0 + 160);
    v20 = *(v0 + 136);
    v19 = *(v0 + 144);
    v57 = *(v0 + 128);
    v58 = *(v0 + 176);
    v54 = *(v0 + 208);
    v55 = *(v0 + 120);
    v56 = *(v0 + 112);
    sub_1DC51093C();
    v21 = v15;

    *(v0 + 40) = 0x6E61747369737341;
    *(v0 + 48) = 0xE900000000000074;
    v53 = *MEMORY[0x1E6968F58];
    v52 = *(v19 + 104);
    v22 = v52(v18);
    sub_1DC2A32B0(v22, v23, v24);
    sub_1DC51099C();
    v59 = *(v19 + 8);
    v25 = OUTLINED_FUNCTION_54_4();
    v26(v25);
    v50 = *(v61 + 8);
    *(v0 + 296) = v50;
    *(v0 + 304) = (v61 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v50(v16, v17);
    *(v0 + 56) = 0x65686361434D4C4CLL;
    *(v0 + 64) = 0xE800000000000000;
    (v52)(v18, v53, v20);
    sub_1DC51099C();
    v27 = OUTLINED_FUNCTION_54_4();
    v59(v27);
    v50(v51, v17);
    *(v0 + 72) = 0x726574756F524C4ELL;
    *(v0 + 80) = 0xE800000000000000;
    (v52)(v18, v53, v20);
    sub_1DC51099C();
    v28 = OUTLINED_FUNCTION_54_4();
    v59(v28);
    v50(v60, v17);
    sub_1DC51746C();
    (*(v55 + 104))(v57, *MEMORY[0x1E69ABD50], v56);
    (*(v61 + 16))(v58, v54, v17);
    v29 = swift_task_alloc();
    *(v0 + 312) = v29;
    *v29 = v0;
    v29[1] = sub_1DC35A484;
    v30 = *(v0 + 176);
    v31 = *(v0 + 128);

    return MEMORY[0x1EEE18708](v31, v30);
  }

  else
  {
    v32 = v15;
    v33 = sub_1DC51085C();

    swift_willThrow();
    v34 = OUTLINED_FUNCTION_1_15();
    v35(v34);
    v36 = v33;
    v37 = sub_1DC516F6C();
    v38 = sub_1DC517BAC();

    v39 = os_log_type_enabled(v37, v38);
    v40 = *(v0 + 288);
    v41 = *(v0 + 232);
    v42 = *(v0 + 216);
    if (v39)
    {
      OUTLINED_FUNCTION_63();
      v62[0] = OUTLINED_FUNCTION_14_8();
      OUTLINED_FUNCTION_13_11(4.8751e-34);
      v43 = sub_1DC5182AC();
      v45 = sub_1DC291244(v43, v44, v62);

      *(v41 + 4) = v45;
      OUTLINED_FUNCTION_12_12(&dword_1DC287000, v46, v47, "LLMCache cleanup failed in the background, error: %{public}s");
      OUTLINED_FUNCTION_5_20();
      OUTLINED_FUNCTION_102();

      v40(v41, v42);
    }

    else
    {

      v40(v41, v42);
    }

    OUTLINED_FUNCTION_0_22();
    [*(v0 + 104) setTaskCompleted];

    OUTLINED_FUNCTION_2_2();

    return v48();
  }
}

uint64_t sub_1DC35A484()
{
  OUTLINED_FUNCTION_1_0();
  v2 = *v1;
  *(v2 + 320) = v3;
  *(v2 + 328) = v0;

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1DC35A5BC()
{
  (*(v0 + 272))(*(v0 + 248), *(v0 + 264), *(v0 + 216));
  v1 = sub_1DC516F6C();
  v2 = sub_1DC517B9C();
  if (os_log_type_enabled(v1, v2))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_43_7(&dword_1DC287000, v3, v4, "Begin pruning of llm cache");
    OUTLINED_FUNCTION_66();
  }

  v5 = *(v0 + 288);

  v6 = OUTLINED_FUNCTION_63_0();
  v5(v6);
  v7 = MEMORY[0x1E69ABD20];
  v8 = *MEMORY[0x1E69ABD20];
  v9 = swift_task_alloc();
  *(v0 + 336) = v9;
  *v9 = v0;
  v9[1] = sub_1DC35A720;

  return ((v8 + v7))();
}

uint64_t sub_1DC35A720()
{
  OUTLINED_FUNCTION_1_0();
  v2 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v3 = v2;
  *(v4 + 344) = v0;

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DC35A850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_23_12();
  v41 = *MEMORY[0x1E69E9840];
  (*(v16 + 272))(*(v16 + 240), *(v16 + 264), *(v16 + 216));
  v17 = sub_1DC516F6C();
  v18 = sub_1DC517B9C();
  v19 = os_log_type_enabled(v17, v18);
  v20 = *(v16 + 304);
  v37 = *(v16 + 288);
  v39 = *(v16 + 296);
  v21 = *(v16 + 240);
  v22 = *(v16 + 216);
  v23 = *(v16 + 208);
  v24 = *(v16 + 160);
  if (v19)
  {
    v25 = swift_slowAlloc();
    a10 = v20;
    *v25 = 0;
    _os_log_impl(&dword_1DC287000, v17, v18, "Done pruning of llm cache", v25, 2u);
    OUTLINED_FUNCTION_66();
  }

  v37(v21, v22);
  v39(v23, v24);
  OUTLINED_FUNCTION_0_22();
  v38 = v27;
  v40 = v26;
  [*(v16 + 104) setTaskCompleted];

  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_24_6();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, v38, v40, v41, a14, a15, a16);
}

uint64_t sub_1DC35AA20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(uint64_t, void), uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_23_12();
  a23 = v29;
  a24 = v30;
  a22 = v25;
  a13 = *MEMORY[0x1E69E9840];
  (*(v25 + 296))(*(v25 + 208), *(v25 + 160));
  v31 = *(v25 + 328);
  v32 = OUTLINED_FUNCTION_1_15();
  v33(v32);
  v34 = v31;
  v35 = sub_1DC516F6C();
  v36 = sub_1DC517BAC();

  if (os_log_type_enabled(v35, v36))
  {
    OUTLINED_FUNCTION_15_6();
    a12 = OUTLINED_FUNCTION_14_8();
    OUTLINED_FUNCTION_13_11(4.8751e-34);
    v37 = sub_1DC5182AC();
    v39 = sub_1DC291244(v37, v38, &a12);

    *(v28 + 4) = v39;
    OUTLINED_FUNCTION_12_12(&dword_1DC287000, v40, v41, "LLMCache cleanup failed in the background, error: %{public}s");
    OUTLINED_FUNCTION_5_20();
    OUTLINED_FUNCTION_102();

    a11(a10, v27);
  }

  else
  {
    OUTLINED_FUNCTION_26_8();

    v27(v24, v26);
  }

  OUTLINED_FUNCTION_0_22();
  v53 = v43;
  v54 = v42;
  [*(v25 + 104) setTaskCompleted];

  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_24_6();

  return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, v53, v54, a12, a13, a14, a15, a16);
}

uint64_t sub_1DC35AC0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (*a11)(uint64_t, void), uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_23_12();
  a23 = v27;
  a24 = v28;
  a22 = v24;
  a13 = *MEMORY[0x1E69E9840];
  v29 = *(v24 + 296);
  v30 = *(v24 + 208);
  v31 = *(v24 + 160);

  v29(v30, v31);
  v32 = *(v24 + 344);
  v33 = OUTLINED_FUNCTION_1_15();
  v34(v33);
  v35 = v32;
  v36 = sub_1DC516F6C();
  v37 = sub_1DC517BAC();

  if (os_log_type_enabled(v36, v37))
  {
    OUTLINED_FUNCTION_15_6();
    a12 = OUTLINED_FUNCTION_14_8();
    OUTLINED_FUNCTION_13_11(4.8751e-34);
    v38 = sub_1DC5182AC();
    v40 = sub_1DC291244(v38, v39, &a12);

    *(v26 + 4) = v40;
    OUTLINED_FUNCTION_12_12(&dword_1DC287000, v41, v42, "LLMCache cleanup failed in the background, error: %{public}s");
    OUTLINED_FUNCTION_5_20();
    OUTLINED_FUNCTION_102();

    a11(a10, v25);
  }

  else
  {
    OUTLINED_FUNCTION_26_8();

    v25(v30, v29);
  }

  OUTLINED_FUNCTION_0_22();
  v54 = v44;
  v55 = v43;
  [*(v24 + 104) setTaskCompleted];

  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_24_6();

  return v46(v45, v46, v47, v48, v49, v50, v51, v52, a9, v54, v55, a12, a13, a14, a15, a16);
}

void sub_1DC35AE08(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_1DC35AE70(uint64_t a1, unint64_t a2, double a3)
{
  v86[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v85 = v7;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v83 = (&v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v77 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v84 = &v77 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v77 - v16;
  v18 = objc_opt_self();
  v19 = [v18 sharedScheduler];
  OUTLINED_FUNCTION_63_0();
  v20 = sub_1DC5176FC();
  v21 = [v19 taskRequestForIdentifier_];

  if (v21)
  {
    v81 = a1;
    v22 = sub_1DC29120C();
    v23 = v85;
    v83 = *(v85 + 16);
    v83(v17, v22, v6);

    v24 = sub_1DC516F6C();
    v25 = sub_1DC517B9C();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = OUTLINED_FUNCTION_63();
      v80 = v22;
      v27 = v26;
      v28 = OUTLINED_FUNCTION_82();
      v82 = v6;
      v29 = v28;
      v86[0] = v28;
      *v27 = 136446210;
      *(v27 + 4) = sub_1DC291244(v81, a2, v86);
      _os_log_impl(&dword_1DC287000, v24, v25, "Task request %{public}s already exists", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v29);
      v6 = v82;
      OUTLINED_FUNCTION_66();
      v22 = v80;
      OUTLINED_FUNCTION_66();
    }

    v30 = *(v23 + 8);
    v30(v17, v6);
    v83(v84, v22, v6);
    v31 = v21;
    v32 = sub_1DC516F6C();
    v33 = sub_1DC517B9C();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = v6;
      v35 = OUTLINED_FUNCTION_63();
      v36 = OUTLINED_FUNCTION_82();
      v86[0] = v36;
      *v35 = 136446210;
      v37 = [v31 description];
      sub_1DC51772C();

      v38 = OUTLINED_FUNCTION_54_4();
      v41 = sub_1DC291244(v38, v39, v40);

      *(v35 + 4) = v41;
      _os_log_impl(&dword_1DC287000, v32, v33, "Existing BGST.taskRequest: %{public}s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_66();

      v42 = v84;
      v43 = v34;
    }

    else
    {

      v42 = v84;
      v43 = v6;
    }

    v30(v42, v43);
  }

  else
  {
    sub_1DC298C74(0, &qword_1ECC7B940, 0x1E698E490);

    v44 = OUTLINED_FUNCTION_63_0();
    v46 = sub_1DC35B628(v44, v45);
    [v46 setPriority_];
    [v46 setRequiresNetworkConnectivity_];
    [v46 setRequiresExternalPower_];
    [v46 setInterval_];
    v47 = sub_1DC29120C();
    v80 = *(v85 + 16);
    v81 = v47;
    v84 = (v85 + 16);
    v80(v13);

    v48 = v46;
    v49 = sub_1DC516F6C();
    v50 = sub_1DC517B9C();

    v51 = os_log_type_enabled(v49, v50);
    v79 = a2;
    if (v51)
    {
      v52 = swift_slowAlloc();
      v78 = v48;
      v53 = a2;
      v54 = v52;
      v55 = swift_slowAlloc();
      v56 = OUTLINED_FUNCTION_82();
      v82 = v6;
      v57 = v56;
      v86[0] = v56;
      *v54 = 136315394;
      v58 = v53;
      v59 = v85;
      v48 = v78;
      *(v54 + 4) = sub_1DC291244(a1, v58, v86);
      *(v54 + 12) = 2112;
      *(v54 + 14) = v48;
      *v55 = v48;
      v60 = v48;
      _os_log_impl(&dword_1DC287000, v49, v50, "Task %s has no request, submitting request: %@", v54, 0x16u);
      sub_1DC2BE530(v55, &qword_1ECC7DFE0, &qword_1DC5227F0);
      OUTLINED_FUNCTION_66();
      __swift_destroy_boxed_opaque_existential_1Tm(v57);
      v6 = v82;
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_66();

      v61 = v59;
    }

    else
    {

      v61 = v85;
    }

    v62 = *(v61 + 8);
    v62(v13, v6);
    v63 = [v18 sharedScheduler];
    v86[0] = 0;
    v64 = [v63 submitTaskRequest:v48 error:v86];

    if (v64)
    {
      v65 = v86[0];
    }

    else
    {
      v66 = v86[0];
      v67 = sub_1DC51085C();

      swift_willThrow();
      (v80)(v83, v81, v6);
      v68 = v79;

      v69 = v67;
      v70 = sub_1DC516F6C();
      v71 = sub_1DC517BAC();

      if (os_log_type_enabled(v70, v71))
      {
        v72 = v68;
        v73 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        v86[0] = v84;
        *v73 = 136315394;
        *(v73 + 4) = sub_1DC291244(a1, v72, v86);
        *(v73 + 12) = 2080;
        swift_getErrorValue();
        v74 = sub_1DC5182AC();
        v76 = sub_1DC291244(v74, v75, v86);

        *(v73 + 14) = v76;
        _os_log_impl(&dword_1DC287000, v70, v71, "Task %s schedule request failed: %s", v73, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_66();
        OUTLINED_FUNCTION_66();
      }

      else
      {
      }

      v62(v83, v6);
    }
  }
}

id sub_1DC35B628(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1DC5176FC();

  v4 = [v2 initWithIdentifier_];

  return v4;
}

uint64_t sub_1DC35B714()
{
  OUTLINED_FUNCTION_1_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_33_0(v0);
  *v1 = v2;
  v1[1] = sub_1DC35B814;

  return sub_1DC359C24();
}

uint64_t sub_1DC35B7A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D050, &qword_1DC523AC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DC35B81C()
{
  v0 = sub_1DC5172FC();
  __swift_allocate_value_buffer(v0, qword_1ECC8F810);
  v1 = __swift_project_value_buffer(v0, qword_1ECC8F810);
  v2 = swift_allocObject();
  *(v2 + 16) = 0xD00000000000001BLL;
  *(v2 + 24) = 0x80000001DC541250;
  strcpy((v2 + 32), "ContactEntity");
  *(v2 + 46) = -4864;
  *v1 = v2;
  OUTLINED_FUNCTION_7_1();
  v4 = *(v3 + 104);

  return v4(v1);
}

uint64_t sub_1DC35B900(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFF8, &qword_1DC522580);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v21 - v3;
  v5 = sub_1DC5172FC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DC5171CC();
  if (qword_1ECC86E28 != -1)
  {
    OUTLINED_FUNCTION_0_23(&qword_1ECC86E28);
  }

  __swift_project_value_buffer(v5, qword_1ECC8F810);
  v9 = sub_1DC5172DC();
  (*(v6 + 8))(v8, v5);
  if (v9)
  {
    v10 = sub_1DC5171EC();
    sub_1DC30F668(0x6E6F73726570, 0xE600000000000000, v10, v4);

    v11 = sub_1DC5172AC();
    if (__swift_getEnumTagSinglePayload(v4, 1, v11) == 1)
    {
      sub_1DC30F72C(v4);
LABEL_9:
      sub_1DC51721C();
      OUTLINED_FUNCTION_0_2();
      (*(v19 + 8))(a1);

      return 0;
    }

    sub_1DC382AC0();
    v13 = v14;
    v16 = v15;
    OUTLINED_FUNCTION_7_1();
    (*(v17 + 8))(v4, v11);
    if (!v16)
    {
      goto LABEL_9;
    }

    sub_1DC51721C();
    OUTLINED_FUNCTION_0_2();
    (*(v18 + 8))(a1);
  }

  else
  {
    sub_1DC51721C();
    OUTLINED_FUNCTION_0_2();
    (*(v12 + 8))(a1);
    return 0;
  }

  return v13;
}

unint64_t sub_1DC35BBAC(uint64_t a1, uint64_t a2)
{
  sub_1DC517F4C();

  MEMORY[0x1E1296160](a1, a2);
  return 0xD000000000000019;
}

uint64_t sub_1DC35BC2C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECC86E28 != -1)
  {
    OUTLINED_FUNCTION_0_23(&qword_1ECC86E28);
  }

  v2 = sub_1DC5172FC();
  __swift_project_value_buffer(v2, qword_1ECC8F810);
  OUTLINED_FUNCTION_7_1();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t sub_1DC35BCC0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DC35B900(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1DC35BCF0(uint64_t a1, int a2)
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

uint64_t sub_1DC35BD30(uint64_t result, int a2, int a3)
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

uint64_t sub_1DC35C554(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CE78, &qword_1DC524FE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DC35C5BC()
{
  result = qword_1ECC7BAC0;
  if (!qword_1ECC7BAC0)
  {
    sub_1DC516E7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7BAC0);
  }

  return result;
}

uint64_t sub_1DC35C628()
{
  v0 = sub_1DC5172FC();
  __swift_allocate_value_buffer(v0, qword_1ECC8F828);
  v1 = OUTLINED_FUNCTION_43();
  v3 = __swift_project_value_buffer(v1, v2);
  v4 = swift_allocObject();
  *(v4 + 16) = 0xD000000000000013;
  *(v4 + 24) = 0x80000001DC53F0B0;
  strcpy((v4 + 32), "MessageEntity");
  *(v4 + 46) = -4864;
  *v3 = v4;
  OUTLINED_FUNCTION_7_1();
  v6 = *(v5 + 104);

  return v6(v3);
}

uint64_t sub_1DC35C708@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFF8, &qword_1DC522580);
  MEMORY[0x1EEE9AC00](v4 - 8);
  OUTLINED_FUNCTION_8();
  v7 = v5 - v6;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v56 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v56 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v56 - v15;
  v17 = sub_1DC5172FC();
  OUTLINED_FUNCTION_0();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_1();
  v23 = v22 - v21;
  sub_1DC5171CC();
  if (qword_1ECC86E30 != -1)
  {
    OUTLINED_FUNCTION_2_13(&qword_1ECC86E30);
  }

  __swift_project_value_buffer(v17, qword_1ECC8F828);
  v24 = sub_1DC5172DC();
  (*(v19 + 8))(v23, v17);
  if (v24)
  {
    v25 = sub_1DC5171EC();
    sub_1DC30F668(0x61737265766E6F63, 0xEC0000006E6F6974, v25, v16);

    v26 = sub_1DC35CBCC(v16);
    if (v27)
    {
      v28 = v26;
    }

    else
    {
      v28 = 0;
    }

    v29 = 0xE000000000000000;
    if (v27)
    {
      v29 = v27;
    }

    v56 = v29;
    v57 = v28;
    v30 = sub_1DC5171EC();
    sub_1DC30F668(0x7265646E6573, 0xE600000000000000, v30, v14);

    v31 = sub_1DC5172AC();
    OUTLINED_FUNCTION_3_3(v14);
    if (v32)
    {
      sub_1DC30F72C(v14);
    }

    else
    {
      sub_1DC382AC0();
      v42 = v41;
      v44 = v43;
      OUTLINED_FUNCTION_7_1();
      (*(v45 + 8))(v14, v31);
      if (v44)
      {
LABEL_15:
        v46 = sub_1DC5171EC();
        sub_1DC30F668(1702125924, 0xE400000000000000, v46, v11);

        OUTLINED_FUNCTION_3_3(v11);
        if (v32)
        {
          sub_1DC30F72C(v11);
        }

        else
        {
          sub_1DC382AC0();
          v37 = v47;
          v38 = v48;
          OUTLINED_FUNCTION_7_1();
          (*(v49 + 8))(v11, v31);
          if (v38)
          {
LABEL_20:
            v50 = sub_1DC5171EC();
            sub_1DC30F668(0x746E65746E6F63, 0xE700000000000000, v50, v7);

            OUTLINED_FUNCTION_3_3(v7);
            if (v32)
            {
              sub_1DC30F72C(v7);
            }

            else
            {
              sub_1DC382AC0();
              v39 = v51;
              v40 = v52;
              OUTLINED_FUNCTION_7_1();
              (*(v53 + 8))(v7, v31);
              if (v40)
              {
                sub_1DC51721C();
                OUTLINED_FUNCTION_7_1();
                result = (*(v54 + 8))(a1);
LABEL_26:
                v36 = v56;
                v35 = v57;
                goto LABEL_27;
              }
            }

            sub_1DC51721C();
            OUTLINED_FUNCTION_7_1();
            (*(v55 + 8))(a1);

            v39 = 0;
            v40 = 0xE000000000000000;
            goto LABEL_26;
          }
        }

        v37 = 0;
        v38 = 0xE000000000000000;
        goto LABEL_20;
      }
    }

    v42 = 0;
    v44 = 0xE000000000000000;
    goto LABEL_15;
  }

  sub_1DC51721C();
  OUTLINED_FUNCTION_7_1();
  result = (*(v33 + 8))(a1);
  v35 = 0;
  v36 = 0;
  v42 = 0;
  v44 = 0;
  v37 = 0;
  v38 = 0;
  v39 = 0;
  v40 = 0;
LABEL_27:
  *a2 = v35;
  a2[1] = v36;
  a2[2] = v42;
  a2[3] = v44;
  a2[4] = v37;
  a2[5] = v38;
  a2[6] = v39;
  a2[7] = v40;
  return result;
}

uint64_t sub_1DC35CBCC(uint64_t a1)
{
  v2 = sub_1DC5172FC();
  OUTLINED_FUNCTION_0();
  v54 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  v7 = v6 - v5;
  sub_1DC51721C();
  OUTLINED_FUNCTION_0();
  v55 = v9;
  v56 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFF8, &qword_1DC522580);
  MEMORY[0x1EEE9AC00](v13 - 8);
  OUTLINED_FUNCTION_8();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v53 - v18;
  v20 = sub_1DC5172AC();
  OUTLINED_FUNCTION_0();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_8();
  v26 = v24 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v53 - v28;
  sub_1DC35D0B4(a1, v19);
  if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
  {
    sub_1DC30F72C(a1);
    sub_1DC30F72C(v19);
  }

  else
  {
    (*(v22 + 32))(v29, v19, v20);
    (*(v22 + 16))(v26, v29, v20);
    if ((*(v22 + 88))(v26, v20) == *MEMORY[0x1E69DAE58])
    {
      (*(v22 + 96))(v26, v20);
      v30 = swift_projectBox();
      (*(v55 + 16))(v12, v30, v56);
      sub_1DC5171CC();
      if (qword_1ECC86E38 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v2, qword_1ECC8F840);
      v31 = sub_1DC5172DC();
      (*(v54 + 8))(v7, v2);
      if (v31)
      {
        v32 = sub_1DC5171EC();
        sub_1DC30F668(0x7069636974726170, 0xEC00000073746E61, v32, v16);

        if (__swift_getEnumTagSinglePayload(v16, 1, v20) == 1)
        {
          sub_1DC30F72C(v16);
        }

        else
        {
          sub_1DC382748();
          v39 = v41;
          v43 = v42;
          v44 = v16;
          v45 = *(v22 + 8);
          v45(v44, v20);
          if (v43)
          {
            sub_1DC30F72C(a1);
            v46 = OUTLINED_FUNCTION_4_1();
            v47(v46);
            v48 = OUTLINED_FUNCTION_35_0();
            (v45)(v48);

            return v39;
          }
        }

        sub_1DC30F72C(a1);
        v49 = OUTLINED_FUNCTION_4_1();
        v50(v49);
        v51 = OUTLINED_FUNCTION_35_0();
        v52(v51);

        return 0;
      }

      sub_1DC30F72C(a1);
      v35 = OUTLINED_FUNCTION_4_1();
      v36(v35);
      v37 = OUTLINED_FUNCTION_35_0();
      v38(v37);
    }

    else
    {
      sub_1DC30F72C(a1);
      v33 = *(v22 + 8);
      v34 = OUTLINED_FUNCTION_35_0();
      v33(v34);
      (v33)(v26, v20);
    }
  }

  return 0;
}

uint64_t sub_1DC35D0B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFF8, &qword_1DC522580);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DC35D124()
{
  v1 = v0;
  sub_1DC517F4C();
  MEMORY[0x1E1296160](0xD00000000000001BLL, 0x80000001DC5413C0);
  MEMORY[0x1E1296160](*v1, v1[1]);
  MEMORY[0x1E1296160](0xD000000000000010, 0x80000001DC5413E0);
  MEMORY[0x1E1296160](v1[2], v1[3]);
  MEMORY[0x1E1296160](0x3A65746144207C20, 0xE900000000000020);
  MEMORY[0x1E1296160](v1[4], v1[5]);
  MEMORY[0x1E1296160](0x65746E6F43207C20, 0xEC000000203A746ELL);
  MEMORY[0x1E1296160](v1[6], v1[7]);
  return 0;
}

uint64_t sub_1DC35D228()
{
  v0 = sub_1DC5172FC();
  __swift_allocate_value_buffer(v0, qword_1ECC8F840);
  v1 = OUTLINED_FUNCTION_43();
  v3 = __swift_project_value_buffer(v1, v2);
  v4 = swift_allocObject();
  v4[2] = 0xD000000000000013;
  v4[3] = 0x80000001DC53F0B0;
  v4[4] = 0xD000000000000012;
  v4[5] = 0x80000001DC5250B0;
  *v3 = v4;
  OUTLINED_FUNCTION_7_1();
  v6 = *(v5 + 104);

  return v6(v3);
}

uint64_t sub_1DC35D2FC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECC86E30 != -1)
  {
    OUTLINED_FUNCTION_2_13(&qword_1ECC86E30);
  }

  v2 = sub_1DC5172FC();
  __swift_project_value_buffer(v2, qword_1ECC8F828);
  OUTLINED_FUNCTION_7_1();
  v4 = *(v3 + 16);

  return v4(a1);
}

double sub_1DC35D390@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1DC35C708(a1, v6);
  v3 = v6[1];
  *a2 = v6[0];
  a2[1] = v3;
  result = *&v7;
  v5 = v8;
  a2[2] = v7;
  a2[3] = v5;
  return result;
}

uint64_t sub_1DC35D3D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

      return OUTLINED_FUNCTION_9_13(result, a2);
    }

    *(result + 64) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_9_13(result, a2);
    }
  }

  return result;
}

uint64_t sub_1DC35D42C(uint64_t result, int a2, int a3)
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

      return OUTLINED_FUNCTION_9_13(result, a2);
    }

    *(result + 16) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_9_13(result, a2);
    }
  }

  return result;
}

uint64_t sub_1DC35D470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = v3[1];
  if (!*(v3[5] + 16) || (sub_1DC2AEB04(*v3, v3[1]), (v8 & 1) == 0) || (v9 = sub_1DC35D764(a1), !v10))
  {
    v40 = sub_1DC517B9C();
    sub_1DC297814();
    v41 = sub_1DC2BE518();
    if (os_log_type_enabled(v41, v40))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v54 = v43;
      *v42 = 136315138;
      *(v42 + 4) = sub_1DC291244(v4, v5, &v54);
      _os_log_impl(&dword_1DC287000, v41, v40, "[MDMRRewriteRule] entity value is nil or incompatible domain %s. Return without rewrite", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v43);
      MEMORY[0x1E1298840](v43, -1, -1);
      MEMORY[0x1E1298840](v42, -1, -1);
    }

    return 0;
  }

  v11 = v10;
  if (!*(a3 + 16))
  {

    sub_1DC517B9C();
    OUTLINED_FUNCTION_21_2();
    v45 = sub_1DC2BE518();
    v46 = OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C(v46, v47, v48, v49, 41, 2);

    return 0;
  }

  v12 = v9;
  OUTLINED_FUNCTION_45();
  v54 = sub_1DC3294A0();
  v55 = v13;
  MEMORY[0x1E1296160](v12, v11);

  OUTLINED_FUNCTION_45();
  v16 = sub_1DC329368(v14, v15);
  MEMORY[0x1E1296160](v16);

  v52 = 10;
  v53 = 0xE100000000000000;
  v50 = 32;
  v51 = 0xE100000000000000;
  sub_1DC2A32B0(v17, v18, v19);
  v20 = MEMORY[0x1E69E6158];
  v27 = OUTLINED_FUNCTION_5_21(&v52, &v50, v21, v22, v23, v24, v25, v26, MEMORY[0x1E69E6158]);

  v29 = v3[3];
  v28 = v3[4];
  OUTLINED_FUNCTION_45();
  v54 = sub_1DC3294A0();
  v55 = v30;
  MEMORY[0x1E1296160](v29, v28);
  OUTLINED_FUNCTION_45();
  v33 = sub_1DC329368(v31, v32);
  MEMORY[0x1E1296160](v33);

  v52 = 10;
  v53 = 0xE100000000000000;
  v50 = 32;
  v51 = 0xE100000000000000;
  OUTLINED_FUNCTION_5_21(&v52, &v50, v34, v35, v36, v37, v38, v39, v20);

  return v27;
}

uint64_t sub_1DC35D764(uint64_t a1)
{
  sub_1DC35DCE0(a1, &v48);
  if (!v49)
  {
    sub_1DC31405C(&v48);
    return 0;
  }

  sub_1DC2BAD90(&v48, v50);
  v2 = v1[5];
  if (!*(v2 + 16) || (v3 = sub_1DC2AEB04(*v1, v1[1]), (v4 & 1) == 0) || (v5 = *(*(v2 + 56) + 8 * v3), MEMORY[0x1EEE9AC00](v3), v47[2] = v50, , v6 = sub_1DC2E24F4(sub_1DC2E56F0, v47, v5), , !v6))
  {
LABEL_16:
    __swift_destroy_boxed_opaque_existential_1Tm(v50);
    return 0;
  }

  sub_1DC291F78(v50, &v48);
  v7 = sub_1DC514B0C();
  if (!OUTLINED_FUNCTION_1_16(v7, v8, v9, v7))
  {
    v16 = sub_1DC51473C();
    if (OUTLINED_FUNCTION_1_16(v16, v17, v18, v16))
    {
      sub_1DC517B9C();
      OUTLINED_FUNCTION_21_2();
      v19 = sub_1DC2BE518();
      v20 = OUTLINED_FUNCTION_40_1();
      sub_1DC516F0C(v20, v21, v22, v23, 44, 2);

      v15 = sub_1DC51472C();
      goto LABEL_14;
    }

    v24 = sub_1DC5149DC();
    if (OUTLINED_FUNCTION_1_16(v24, v25, v26, v24))
    {
      sub_1DC517B9C();
      OUTLINED_FUNCTION_21_2();
      v27 = sub_1DC2BE518();
      v28 = OUTLINED_FUNCTION_40_1();
      sub_1DC516F0C(v28, v29, v30, v31, 53, 2);

      v15 = sub_1DC5149CC();
      goto LABEL_14;
    }

    v32 = sub_1DC514A3C();
    if (OUTLINED_FUNCTION_1_16(v32, v33, v34, v32))
    {
      sub_1DC517B9C();
      OUTLINED_FUNCTION_21_2();
      v35 = sub_1DC2BE518();
      v36 = OUTLINED_FUNCTION_40_1();
      sub_1DC516F0C(v36, v37, v38, v39, 46, 2);

      v15 = sub_1DC514A2C();
      goto LABEL_14;
    }

    sub_1DC517B9C();
    OUTLINED_FUNCTION_21_2();
    v41 = sub_1DC2BE518();
    v42 = OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C(v42, v43, v44, v45, 46, 2);

    __swift_destroy_boxed_opaque_existential_1Tm(&v48);
    goto LABEL_16;
  }

  sub_1DC517B9C();
  OUTLINED_FUNCTION_21_2();
  v10 = sub_1DC2BE518();
  v11 = OUTLINED_FUNCTION_40_1();
  sub_1DC516F0C(v11, v12, v13, v14, 54, 2);

  v15 = sub_1DC514AFC();
LABEL_14:
  v40 = v15;

  __swift_destroy_boxed_opaque_existential_1Tm(&v48);
  __swift_destroy_boxed_opaque_existential_1Tm(v50);
  return v40;
}

uint64_t sub_1DC35DA6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CE80, &qword_1DC5250F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DC522F10;
  OUTLINED_FUNCTION_2_14();
  v11 = OUTLINED_FUNCTION_4_16(v9, v10);
  v12 = OUTLINED_FUNCTION_0_24(v11);
  *(v12 + 16) = xmmword_1DC523DA0;
  v13 = sub_1DC514B0C();
  *(v12 + 32) = v13;
  v14 = sub_1DC51473C();
  *(v12 + 40) = v14;
  v15 = sub_1DC5149DC();
  *(v12 + 48) = v15;
  v16 = sub_1DC514A3C();
  *(v12 + 56) = v16;
  OUTLINED_FUNCTION_2_14();
  *(inited + 48) = v12;
  *(inited + 56) = v17 & 0xFFFFFFFFFFFFLL | 0x4E5F000000000000;
  *(inited + 64) = 0xEB0000000065746FLL;
  v18 = sub_1DC35DBDC();
  v19 = OUTLINED_FUNCTION_0_24(v18);
  *(v19 + 16) = xmmword_1DC523DA0;
  *(v19 + 32) = v13;
  *(v19 + 40) = v14;
  *(v19 + 48) = v15;
  *(v19 + 56) = v16;
  *(inited + 72) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CE88, &qword_1DC5250F8);
  result = sub_1DC51764C();
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  strcpy((a4 + 24), "[[Redacted]]");
  *(a4 + 37) = 0;
  *(a4 + 38) = -5120;
  *(a4 + 40) = result;
  return result;
}

uint64_t sub_1DC35DBDC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CE90, &qword_1DC5251B0);
  if (dynamic_cast_existential_0_class_conditional(v0, v0))
  {
    v1 = &qword_1ECC7C1C8;
    v2 = &qword_1DC524550;
  }

  else
  {
    v1 = &unk_1ECC7CE98;
    v2 = &unk_1DC5251B8;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
}

uint64_t sub_1DC35DC44(uint64_t result, int a2, int a3)
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

      return OUTLINED_FUNCTION_9_13(result, a2);
    }

    *(result + 32) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_9_13(result, a2);
    }
  }

  return result;
}

uint64_t sub_1DC35DC8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

      return OUTLINED_FUNCTION_9_13(result, a2);
    }

    *(result + 48) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_9_13(result, a2);
    }
  }

  return result;
}

uint64_t sub_1DC35DCE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D3F0, &qword_1DC5238B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DC35DD50@<X0>(uint64_t (***a1)(uint64_t, uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v106 = a1;
  v96 = a2;
  v103 = sub_1DC510FDC();
  OUTLINED_FUNCTION_0();
  v105 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  v102 = v5 - v4;
  v108 = sub_1DC51179C();
  OUTLINED_FUNCTION_0();
  v101 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  v107 = v9 - v8;
  v104 = sub_1DC51164C();
  OUTLINED_FUNCTION_0();
  v95 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1();
  v14 = v13 - v12;
  v94 = sub_1DC51122C();
  OUTLINED_FUNCTION_0();
  v97 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1();
  v99 = v18 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C158, &unk_1DC5234A0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v83 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C160, qword_1DC5233B0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v83 - v23;
  v25 = type metadata accessor for NLRouterNLParseResponse(0);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_1();
  v87 = v28 - v27;
  v29 = sub_1DC516F5C();
  OUTLINED_FUNCTION_0();
  v31 = v30;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_1();
  v35 = v34 - v33;
  v36 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v37 = sub_1DC2BE518();
  v38 = OUTLINED_FUNCTION_130();
  sub_1DC2A2ED0("HeuristicRules.CrisisRule", 25, 2, v37, v38 & 1, v35);

  sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
  if ((sub_1DC3436D4() & 1) == 0)
  {
    v42 = sub_1DC517B9C();
    v43 = sub_1DC2BE518();
    sub_1DC516F0C(v42, &dword_1DC287000, v43, "[CrisisRule] rule is off", 24, 2, MEMORY[0x1E69E7CC0]);

    v44 = sub_1DC5157EC();
    v45 = v96;
    goto LABEL_7;
  }

  v39 = v96;
  v40 = type metadata accessor for NLRouterServiceRequest(0);
  sub_1DC28F358(v106 + *(v40 + 32), v21, &qword_1ECC7C158, &unk_1DC5234A0);
  v41 = type metadata accessor for NLRouterTurnProbingResult(0);
  if (__swift_getEnumTagSinglePayload(v21, 1, v41) == 1)
  {
    sub_1DC28EB30(v21, &qword_1ECC7C158, &unk_1DC5234A0);
    __swift_storeEnumTagSinglePayload(v24, 1, 1, v25);
LABEL_6:
    sub_1DC28EB30(v24, &qword_1ECC7C160, qword_1DC5233B0);
    v44 = sub_1DC5157EC();
    v45 = v39;
LABEL_7:
    __swift_storeEnumTagSinglePayload(v45, 1, 1, v44);
LABEL_8:
    v46 = sub_1DC2BE518();
    sub_1DC2B8848(v35, "HeuristicRules.CrisisRule", 25, 2, v46);

    return v31[1](v35, v29);
  }

  sub_1DC28F358(v21, v24, &qword_1ECC7C160, qword_1DC5233B0);
  sub_1DC2E5408(v21, type metadata accessor for NLRouterTurnProbingResult);
  if (__swift_getEnumTagSinglePayload(v24, 1, v25) == 1)
  {
    goto LABEL_6;
  }

  v84 = v29;
  v48 = v87;
  result = sub_1DC2E53A4(v24, v87);
  v49 = 0;
  v50 = *v48;
  v92 = *(*v48 + 16);
  v89 = v97 + 16;
  v51 = v95 + 16;
  v106 = (v101 + 1);
  v101 = (v105 + 8);
  v90 = (v97 + 8);
  v52 = v104;
  v53 = v94;
  v86 = v31;
  v85 = v35;
  v91 = v36;
  v88 = v50;
  v100 = v95 + 8;
  while (1)
  {
    if (v49 == v92)
    {
      OUTLINED_FUNCTION_3_16();
      v82 = sub_1DC5157EC();
      __swift_storeEnumTagSinglePayload(v96, 1, 1, v82);
      v29 = v84;
      goto LABEL_8;
    }

    if (v49 >= *(v50 + 16))
    {
      break;
    }

    v54 = v50 + ((*(v97 + 80) + 32) & ~*(v97 + 80));
    v55 = *(v97 + 72);
    v98 = v49;
    (*(v97 + 16))(v99, v54 + v55 * v49, v53);
    v56 = sub_1DC5111AC();
    v57 = *(v56 + 16);
    if (v57)
    {
      v58 = (*(v95 + 80) + 32) & ~*(v95 + 80);
      v93 = v56;
      v59 = v56 + v58;
      v35 = *(v95 + 72);
      v60 = *(v95 + 16);
      v105 = v60;
      do
      {
        (v60)(v14, v59, v52);
        if (sub_1DC5114CC())
        {
          v61 = v107;
          sub_1DC51154C();
          v62 = sub_1DC51177C();
          v31 = *v106;
          (*v106)(v61, v108);
          if ((v62 & 1) != 0 && (type metadata accessor for NLRouterBypassUtils(), v63 = v107, sub_1DC51154C(), v64 = v14, v65 = v35, v66 = v51, v67 = v102, sub_1DC51178C(), v68 = v63, v52 = v104, (v31)(v68, v108), v69 = sub_1DC307E5C(v67), v70 = v67, v51 = v66, v35 = v65, v14 = v64, (*v101)(v70, v103), v69))
          {

            sub_1DC51478C();

            v71 = OUTLINED_FUNCTION_4_17();
            v72(v71);
            v60 = v105;
            if (v110)
            {
              sub_1DC514D4C();
              if (swift_dynamicCast())
              {

                (*v90)(v99, v94);
                OUTLINED_FUNCTION_3_16();
                v78 = *MEMORY[0x1E69D02D8];
                v79 = sub_1DC5157EC();
                OUTLINED_FUNCTION_35();
                v81 = v96;
                (*(v80 + 104))(v96, v78, v79);
                __swift_storeEnumTagSinglePayload(v81, 0, 1, v79);
                v29 = v84;
                OUTLINED_FUNCTION_5_22();
                goto LABEL_8;
              }
            }

            else
            {
              sub_1DC28EB30(v109, &qword_1ECC7D3F0, &qword_1DC5238B0);
            }
          }

          else
          {
            v75 = OUTLINED_FUNCTION_4_17();
            v76(v75);
            v60 = v105;
          }
        }

        else
        {
          v73 = OUTLINED_FUNCTION_4_17();
          v74(v73);
        }

        v59 += v35;
        --v57;
      }

      while (v57);

      OUTLINED_FUNCTION_5_22();
      v53 = v94;
    }

    else
    {
    }

    v77 = v98 + 1;
    result = (*v90)(v99, v53);
    v49 = v77;
    v50 = v88;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DC35E6B4()
{
  v0 = sub_1DC5172FC();
  __swift_allocate_value_buffer(v0, qword_1ECC8F858);
  v1 = __swift_project_value_buffer(v0, qword_1ECC8F858);
  v2 = swift_allocObject();
  v2[2] = 0xD000000000000028;
  v2[3] = 0x80000001DC540200;
  v2[4] = 0xD000000000000015;
  v2[5] = 0x80000001DC525200;
  *v1 = v2;
  OUTLINED_FUNCTION_7_1();
  v4 = *(v3 + 104);

  return v4(v1);
}

uint64_t sub_1DC35E78C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFF8, &qword_1DC522580);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v28 - v6;
  v8 = sub_1DC5172FC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DC5171CC();
  if (qword_1ECC86E40 != -1)
  {
    OUTLINED_FUNCTION_0_25(&qword_1ECC86E40);
  }

  __swift_project_value_buffer(v8, qword_1ECC8F858);
  v12 = sub_1DC5172DC();
  (*(v9 + 8))(v11, v8);
  if ((v12 & 1) == 0)
  {
    sub_1DC51721C();
    OUTLINED_FUNCTION_0_2();
    (*(v15 + 8))(a1);
    return 0;
  }

  v13 = sub_1DC5171EC();
  sub_1DC30F668(0x656C746974, 0xE500000000000000, v13, v7);

  v14 = sub_1DC5172AC();
  if (__swift_getEnumTagSinglePayload(v7, 1, v14) == 1)
  {
    sub_1DC30F72C(v7);
LABEL_8:

    goto LABEL_9;
  }

  sub_1DC382AC0();
  v18 = v17;
  OUTLINED_FUNCTION_7_1();
  (*(v19 + 8))(v7, v14);
  if (!v18)
  {
    goto LABEL_8;
  }

LABEL_9:
  v20 = sub_1DC5171EC();
  sub_1DC30F668(0x746E656D75636F64, 0xEE00656372756F53, v20, v5);

  if (__swift_getEnumTagSinglePayload(v5, 1, v14) == 1)
  {
    sub_1DC30F72C(v5);
LABEL_13:
    sub_1DC51721C();
    OUTLINED_FUNCTION_0_2();
    (*(v26 + 8))(a1);

    return 0;
  }

  sub_1DC382AC0();
  v16 = v21;
  v23 = v22;
  OUTLINED_FUNCTION_7_1();
  (*(v24 + 8))(v5, v14);
  if (!v23)
  {
    goto LABEL_13;
  }

  sub_1DC51721C();
  OUTLINED_FUNCTION_0_2();
  (*(v25 + 8))(a1);
  return v16;
}

uint64_t sub_1DC35EB28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1DC517F4C();

  MEMORY[0x1E1296160](a3, a4);
  MEMORY[0x1E1296160](0xD000000000000013, 0x80000001DC541580);
  MEMORY[0x1E1296160](a1, a2);
  return 0x203A656C746954;
}

uint64_t sub_1DC35EBE4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECC86E40 != -1)
  {
    OUTLINED_FUNCTION_0_25(&qword_1ECC86E40);
  }

  v2 = sub_1DC5172FC();
  __swift_project_value_buffer(v2, qword_1ECC8F858);
  OUTLINED_FUNCTION_7_1();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t sub_1DC35EC78@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DC35E78C(a1);
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  return result;
}

void sub_1DC35ECC0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v199 = a2;
  v202 = sub_1DC51471C();
  OUTLINED_FUNCTION_0();
  v191 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_1();
  v201 = v5;
  v205 = sub_1DC51133C();
  OUTLINED_FUNCTION_0();
  v209 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v8);
  v179 = sub_1DC51166C();
  OUTLINED_FUNCTION_0();
  v204 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v12);
  v13 = sub_1DC5116FC();
  OUTLINED_FUNCTION_0();
  v195 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_1();
  v187 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C228, &qword_1DC523028);
  OUTLINED_FUNCTION_10(v17);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_14(v147 - v19);
  v194 = sub_1DC510FDC();
  OUTLINED_FUNCTION_0();
  v203 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v23);
  v210 = sub_1DC51179C();
  OUTLINED_FUNCTION_0();
  v190 = v24;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_14(v27);
  v211 = sub_1DC51164C();
  OUTLINED_FUNCTION_0();
  v207 = v28;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_2_1();
  v208 = v30;
  v174 = sub_1DC51122C();
  OUTLINED_FUNCTION_0();
  v167 = v31;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_2_1();
  v173 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CA40, &unk_1DC5233A0);
  OUTLINED_FUNCTION_10(v34);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v35);
  v206 = (v147 - v36);
  v200 = sub_1DC5157EC();
  OUTLINED_FUNCTION_0();
  v176 = v37;
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_62();
  v182 = v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C158, &unk_1DC5234A0);
  OUTLINED_FUNCTION_10(v42);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v43);
  v45 = v147 - v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C160, qword_1DC5233B0);
  OUTLINED_FUNCTION_10(v46);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v47);
  v49 = v147 - v48;
  v50 = type metadata accessor for NLRouterNLParseResponse(0);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v52);
  sub_1DC516F5C();
  OUTLINED_FUNCTION_0();
  v197 = v54;
  v198 = v53;
  MEMORY[0x1EEE9AC00](v53);
  v56 = v147 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v58 = sub_1DC2BE518();
  v59 = OUTLINED_FUNCTION_130();
  v196 = v56;
  sub_1DC2A2ED0("HeuristicRules.AppLaunchRule", 28, 2, v58, v59 & 1, v56);

  v60 = *(type metadata accessor for NLRouterServiceRequest(0) + 32);
  v181 = a1;
  sub_1DC28F358(a1 + v60, v45, &qword_1ECC7C158, &unk_1DC5234A0);
  v61 = type metadata accessor for NLRouterTurnProbingResult(0);
  if (__swift_getEnumTagSinglePayload(v45, 1, v61) == 1)
  {
    sub_1DC28EB30(v45, &qword_1ECC7C158, &unk_1DC5234A0);
    __swift_storeEnumTagSinglePayload(v49, 1, 1, v50);
LABEL_4:
    sub_1DC28EB30(v49, &qword_1ECC7C160, qword_1DC5233B0);
    __swift_storeEnumTagSinglePayload(v199, 1, 1, v200);
    v63 = v197;
    v62 = v198;
    v64 = v196;
LABEL_19:
    v83 = sub_1DC2BE518();
    sub_1DC2B8848(v64, "HeuristicRules.AppLaunchRule", 28, 2, v83);

    (*(v63 + 8))(v64, v62);
    return;
  }

  sub_1DC28F358(v45, v49, &qword_1ECC7C160, qword_1DC5233B0);
  sub_1DC2E5408(v45, type metadata accessor for NLRouterTurnProbingResult);
  if (__swift_getEnumTagSinglePayload(v49, 1, v50) == 1)
  {
    goto LABEL_4;
  }

  sub_1DC2E53A4(v49, v183);
  v65 = type metadata accessor for HeuristicRoutingRequest(0);
  v66 = v176;
  v67 = *(v176 + 16);
  v156 = *(v65 + 20);
  v68 = v200;
  v67(v182, v181 + v156, v200);
  sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
  v69 = sub_1DC343364();
  v71 = v70;
  if (v69 == sub_1DC312FB4(0) && v71 == v72)
  {

    goto LABEL_15;
  }

  v74 = sub_1DC51825C();

  if (v74)
  {
LABEL_15:
    v79 = v182;
    v80 = sub_1DC5157DC();
    sub_1DC2E5408(v183, type metadata accessor for NLRouterNLParseResponse);
    if (v80)
    {
      (*(v66 + 8))(v79, v68);
      v81 = 1;
      v63 = v197;
      v62 = v198;
      v64 = v196;
      v82 = v199;
    }

    else
    {
      v82 = v199;
      (*(v66 + 32))(v199, v79, v68);
      v81 = 0;
      v63 = v197;
      v62 = v198;
      v64 = v196;
    }

    __swift_storeEnumTagSinglePayload(v82, v81, 1, v68);
    goto LABEL_19;
  }

  v75 = sub_1DC343364();
  v77 = sub_1DC312F68(v75, v76);
  if (v77 == 4)
  {
    v78 = v206;
    __swift_storeEnumTagSinglePayload(v206, 1, 1, v68);
LABEL_14:
    sub_1DC28EB30(v78, &qword_1ECC7CA40, &unk_1DC5233A0);
    goto LABEL_15;
  }

  v78 = v206;
  sub_1DC312E7C(v77, v206);
  if (__swift_getEnumTagSinglePayload(v78, 1, v68) == 1)
  {
    goto LABEL_14;
  }

  v84 = *(v66 + 32);
  v147[1] = v66 + 32;
  v147[0] = v84;
  v84(v165, v78, v68);
  v151 = *v183;
  v85 = v187;
  v86 = v186;
  v87 = v192;
  v88 = v208;
  v148 = *(v151 + 16);
  if (!v148)
  {
LABEL_64:
    v66 = v176;
    v68 = v200;
    (*(v176 + 8))(v165, v200);
    goto LABEL_15;
  }

  v89 = 0;
  v150 = v151 + ((*(v167 + 80) + 32) & ~*(v167 + 80));
  v149 = v167 + 16;
  v185 = v207 + 16;
  v206 = (v190 + 8);
  v161 = v203 + 1;
  v184 = v207 + 8;
  v160 = v195 + 16;
  v159 = v195 + 8;
  v155 = *MEMORY[0x1E69D0A70];
  v154 = v204 + 104;
  v153 = (v204 + 8);
  v204 = v209 + 16;
  v203 = (v209 + 8);
  v170 = *MEMORY[0x1E69D1B38];
  v169 = v191 + 104;
  v168 = v191 + 8;
  v147[3] = v195 + 32;
  v147[4] = v167 + 8;
  v157 = v13;
  v147[2] = v57;
  while (1)
  {
    if (v89 >= *(v151 + 16))
    {
      goto LABEL_69;
    }

    v90 = *(v167 + 72);
    v152 = v89;
    (*(v167 + 16))(v173, v150 + v90 * v89, v174);
    v91 = sub_1DC5111AC();
    v190 = *(v91 + 16);
    if (v190)
    {
      break;
    }

LABEL_63:

    v138 = v152 + 1;
    OUTLINED_FUNCTION_37();
    v139 = OUTLINED_FUNCTION_11_13();
    v140(v139);
    v89 = v138;
    if (v138 == v148)
    {
      goto LABEL_64;
    }
  }

  v92 = 0;
  OUTLINED_FUNCTION_8_10();
  v189 = v91 + v93;
  v188 = v91;
  while (1)
  {
    if (v92 >= *(v91 + 16))
    {
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    (*(v207 + 16))(v88, v189 + *(v207 + 72) * v92, v211);
    sub_1DC51154C();
    v94 = sub_1DC51177C();
    v95 = *v206;
    (*v206)(v87, v210);
    if ((v94 & 1) == 0 || (type metadata accessor for NLRouterBypassUtils(), sub_1DC51154C(), v96 = v193, sub_1DC51178C(), v95(v87, v210), v97 = sub_1DC307E5C(v96), v98 = *v161, v99 = v96, v88 = v208, (*v161)(v99, v194), !v97))
    {
      v127 = OUTLINED_FUNCTION_2_15();
      v128(v127);
LABEL_52:
      v91 = v188;
      goto LABEL_53;
    }

    sub_1DC51478C();

    if (!v213[3])
    {
      v129 = OUTLINED_FUNCTION_2_15();
      v130(v129);

      sub_1DC28EB30(v213, &qword_1ECC7D3F0, &qword_1DC5238B0);
      goto LABEL_52;
    }

    sub_1DC51474C();
    if ((swift_dynamicCast() & 1) == 0)
    {
      v131 = OUTLINED_FUNCTION_2_15();
      v132(v131);

      goto LABEL_52;
    }

    v166 = v97;

    v87 = v171;
    sub_1DC51154C();
    v100 = v172;
    sub_1DC51178C();
    v95(v87, v210);
    v101 = sub_1DC510FCC();
    v98(v100, v194);
    v102 = v101;
    v162 = *(v101 + 16);
    if (v162)
    {
      break;
    }

    OUTLINED_FUNCTION_9_14();
    v88 = v208;
LABEL_58:
    v133 = OUTLINED_FUNCTION_2_15();
    v134(v133);
    v135 = 1;
LABEL_61:
    v91 = v188;
    __swift_storeEnumTagSinglePayload(v86, v135, 1, v13);
    if (__swift_getEnumTagSinglePayload(v86, 1, v13) != 1)
    {
      OUTLINED_FUNCTION_37();
      v141 = OUTLINED_FUNCTION_11_13();
      v142(v141);

      sub_1DC28EB30(v86, &qword_1ECC7C228, &qword_1DC523028);
      v143 = v164;
      v144 = v165;
      v145 = v182;
      sub_1DC32DE40();
      v66 = v176;
      v146 = *(v176 + 8);
      v68 = v200;
      v146(v144, v200);
      v146(v145, v68);
      (v147[0])(v145, v143, v68);
      goto LABEL_15;
    }

    sub_1DC28EB30(v86, &qword_1ECC7C228, &qword_1DC523028);
LABEL_53:
    if (++v92 == v190)
    {
      goto LABEL_63;
    }
  }

  v103 = 0;
  OUTLINED_FUNCTION_8_10();
  v163 = v102 + v104;
  OUTLINED_FUNCTION_9_14();
  v158 = v102;
  v175 = v92;
  while (v103 < *(v102 + 16))
  {
    v105 = *(v195 + 72);
    v191 = v103;
    (*(v195 + 16))(v85, v163 + v105 * v103, v13);
    if (sub_1DC5116CC())
    {
      sub_1DC5116BC();
      OUTLINED_FUNCTION_37();
      v106 = v178;
      v87 = v179;
      v107(v178, v155, v179);
      sub_1DC360110();
      sub_1DC5179EC();
      v108 = v180;
      sub_1DC5179EC();
      v109 = *v153;
      (*v153)(v106, v87);
      v13 = v157;
      OUTLINED_FUNCTION_9_14();
      v86 = v186;
      v85 = v187;
      v109();
      v102 = v158;
      if (v213[0] == v212)
      {
        v110 = *(sub_1DC51167C() + 16);
        if (v110)
        {
          v111 = 0;
          OUTLINED_FUNCTION_8_10();
          v114 = v112 + v113;
          v115 = v205;
          v116 = v112;
          v177 = v112;
          while (v111 < *(v116 + 16))
          {
            (*(v209 + 16))(v108, v114 + *(v209 + 72) * v111, v115);
            if (sub_1DC51132C())
            {
              v87 = sub_1DC51131C();
              v116 = v117;
              OUTLINED_FUNCTION_37();
              v118 = v108;
              v120 = v201;
              v119 = v202;
              v121(v201, v170, v202);
              v92 = sub_1DC51470C();
              v123 = v122;
              OUTLINED_FUNCTION_37();
              v124(v120, v119);
              if (v87 == v92 && v116 == v123)
              {

                (*v203)(v118, v205);
                OUTLINED_FUNCTION_12_13();
LABEL_60:

                OUTLINED_FUNCTION_37();
                v88 = v208;
                v136(v208, v211);
                OUTLINED_FUNCTION_37();
                v86 = v186;
                v85 = v187;
                v13 = v157;
                v137(v186, v187, v157);
                OUTLINED_FUNCTION_9_14();
                goto LABEL_61;
              }

              v87 = sub_1DC51825C();

              v115 = v205;
              (*v203)(v118, v205);
              v108 = v118;
              OUTLINED_FUNCTION_12_13();
              if (v87)
              {
                goto LABEL_60;
              }
            }

            else
            {
              (*v203)(v108, v115);
            }

            if (v110 == ++v111)
            {

              v13 = v157;
              v85 = v187;
              v86 = v186;
              OUTLINED_FUNCTION_9_14();
              v102 = v158;
              goto LABEL_49;
            }
          }

          __break(1u);
          goto LABEL_67;
        }
      }
    }

LABEL_49:
    v103 = v191 + 1;
    OUTLINED_FUNCTION_37();
    v126(v85, v13);
    v88 = v208;
    if (v103 == v162)
    {

      goto LABEL_58;
    }
  }

LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
}

unint64_t sub_1DC360110()
{
  result = qword_1ECC7C230;
  if (!qword_1ECC7C230)
  {
    sub_1DC51166C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7C230);
  }

  return result;
}

uint64_t sub_1DC3601A8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v78 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFF8, &qword_1DC522580);
  MEMORY[0x1EEE9AC00](v3 - 8);
  OUTLINED_FUNCTION_8();
  v77 = v4 - v5;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v70 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v70 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v70 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v70 - v16;
  v18 = sub_1DC5172FC();
  OUTLINED_FUNCTION_0();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_1();
  v24 = v23 - v22;
  sub_1DC5171CC();
  if (qword_1ECC86E48 != -1)
  {
    OUTLINED_FUNCTION_1_17(&qword_1ECC86E48);
  }

  __swift_project_value_buffer(v18, qword_1ECC8F870);
  v25 = sub_1DC5172DC();
  (*(v20 + 8))(v24, v18);
  if ((v25 & 1) == 0)
  {
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v77 = 0;
    v37 = 0;
    goto LABEL_36;
  }

  v26 = sub_1DC5171EC();
  sub_1DC30F668(0x656C746974, 0xE500000000000000, v26, v17);

  v27 = sub_1DC5172AC();
  OUTLINED_FUNCTION_2_0(v17);
  if (v28)
  {
    sub_1DC30F72C(v17);
  }

  else
  {
    sub_1DC382AC0();
    v79 = v38;
    v40 = v39;
    OUTLINED_FUNCTION_2_16();
    (*(v41 + 8))(v17, v27);
    if (v40)
    {
      v76 = v40;
      goto LABEL_11;
    }
  }

  v79 = 0;
  v76 = 0xE000000000000000;
LABEL_11:
  v42 = sub_1DC5171EC();
  sub_1DC30F668(0x6E6F697461657263, 0xEC00000065746144, v42, v15);

  OUTLINED_FUNCTION_2_0(v15);
  if (v28)
  {
    sub_1DC30F72C(v15);
  }

  else
  {
    sub_1DC382AC0();
    v44 = v43;
    v46 = v45;
    OUTLINED_FUNCTION_2_16();
    (*(v47 + 8))(v15, v27);
    if (v46)
    {
      v75 = v44;
      goto LABEL_17;
    }
  }

  v75 = 0;
  v46 = 0xE000000000000000;
LABEL_17:
  v74 = v46;
  v48 = sub_1DC5171EC();
  sub_1DC30F668(0xD000000000000011, 0x80000001DC5415C0, v48, v12);

  OUTLINED_FUNCTION_2_0(v12);
  if (v28)
  {
    sub_1DC30F72C(v12);
  }

  else
  {
    sub_1DC382AC0();
    v50 = v49;
    v52 = v51;
    OUTLINED_FUNCTION_2_16();
    (*(v53 + 8))(v12, v27);
    if (v52)
    {
      v73 = v50;
      goto LABEL_23;
    }
  }

  v73 = 0;
  v52 = 0xE000000000000000;
LABEL_23:
  v54 = sub_1DC5171EC();
  sub_1DC30F668(0x656C706D6F437369, 0xEB00000000646574, v54, v9);

  OUTLINED_FUNCTION_2_0(v9);
  v72 = v52;
  if (v28)
  {
    sub_1DC30F72C(v9);
    v55 = v79;
LABEL_28:
    v79 = v55;

    v70 = 0xE000000000000000;
    v71 = 0;
    goto LABEL_29;
  }

  sub_1DC382AC0();
  v57 = v56;
  v59 = v58;
  OUTLINED_FUNCTION_2_16();
  (*(v60 + 8))(v9, v27);
  v55 = v79;
  if (!v59)
  {
    goto LABEL_28;
  }

  v70 = v59;
  v71 = v57;
LABEL_29:
  v61 = sub_1DC5171EC();
  v62 = v77;
  sub_1DC30F668(1953720684, 0xE400000000000000, v61, v77);

  v63 = sub_1DC36071C(v62);
  if (v64)
  {
    v65 = v63;
  }

  else
  {
    v65 = 0;
  }

  v77 = v65;
  if (v64)
  {
    v37 = v64;
  }

  else
  {
    v37 = 0xE000000000000000;
  }

  v31 = v75;
  v30 = v76;
  v33 = v73;
  v32 = v74;
  v35 = v71;
  v34 = v72;
  v36 = v70;
  v29 = v79;
LABEL_36:
  sub_1DC51721C();
  OUTLINED_FUNCTION_7_1();
  result = (*(v66 + 8))(a1);
  v69 = v77;
  v68 = v78;
  *v78 = v29;
  v68[1] = v30;
  v68[2] = v31;
  v68[3] = v32;
  v68[4] = v33;
  v68[5] = v34;
  v68[6] = v35;
  v68[7] = v36;
  v68[8] = v69;
  v68[9] = v37;
  return result;
}

uint64_t sub_1DC36071C(uint64_t a1)
{
  v2 = sub_1DC5172FC();
  OUTLINED_FUNCTION_0();
  v54 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  v7 = v6 - v5;
  sub_1DC51721C();
  OUTLINED_FUNCTION_0();
  v55 = v9;
  v56 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFF8, &qword_1DC522580);
  MEMORY[0x1EEE9AC00](v13 - 8);
  OUTLINED_FUNCTION_8();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v53 - v18;
  v20 = sub_1DC5172AC();
  OUTLINED_FUNCTION_0();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_8();
  v26 = v24 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v53 - v28;
  sub_1DC35D0B4(a1, v19);
  if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
  {
    sub_1DC30F72C(a1);
    sub_1DC30F72C(v19);
  }

  else
  {
    (*(v22 + 32))(v29, v19, v20);
    (*(v22 + 16))(v26, v29, v20);
    if ((*(v22 + 88))(v26, v20) == *MEMORY[0x1E69DAE58])
    {
      (*(v22 + 96))(v26, v20);
      v30 = swift_projectBox();
      (*(v55 + 16))(v12, v30, v56);
      sub_1DC5171CC();
      if (qword_1ECC86E50 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v2, qword_1ECC8F888);
      v31 = sub_1DC5172DC();
      (*(v54 + 8))(v7, v2);
      if (v31)
      {
        v32 = sub_1DC5171EC();
        sub_1DC30F668(1701667182, 0xE400000000000000, v32, v16);

        if (__swift_getEnumTagSinglePayload(v16, 1, v20) == 1)
        {
          sub_1DC30F72C(v16);
        }

        else
        {
          sub_1DC382AC0();
          v39 = v41;
          v43 = v42;
          v44 = v16;
          v45 = *(v22 + 8);
          v45(v44, v20);
          if (v43)
          {
            sub_1DC30F72C(a1);
            v46 = OUTLINED_FUNCTION_4_1();
            v47(v46);
            v48 = OUTLINED_FUNCTION_35_0();
            (v45)(v48);

            return v39;
          }
        }

        sub_1DC30F72C(a1);
        v49 = OUTLINED_FUNCTION_4_1();
        v50(v49);
        v51 = OUTLINED_FUNCTION_35_0();
        v52(v51);

        return 0;
      }

      sub_1DC30F72C(a1);
      v35 = OUTLINED_FUNCTION_4_1();
      v36(v35);
      v37 = OUTLINED_FUNCTION_35_0();
      v38(v37);
    }

    else
    {
      sub_1DC30F72C(a1);
      v33 = *(v22 + 8);
      v34 = OUTLINED_FUNCTION_35_0();
      v33(v34);
      (v33)(v26, v20);
    }
  }

  return 0;
}

uint64_t sub_1DC360BF4()
{
  v1 = v0;
  sub_1DC517F4C();
  MEMORY[0x1E1296160](0x203A656C746954, 0xE700000000000000);
  MEMORY[0x1E1296160](*v1, v1[1]);
  MEMORY[0x1E1296160](0xD000000000000011, 0x80000001DC5415E0);
  MEMORY[0x1E1296160](v1[2], v1[3]);
  MEMORY[0x1E1296160](0xD000000000000016, 0x80000001DC541600);
  MEMORY[0x1E1296160](v1[4], v1[5]);
  MEMORY[0x1E1296160](0xD000000000000010, 0x80000001DC541620);
  MEMORY[0x1E1296160](v1[6], v1[7]);
  MEMORY[0x1E1296160](0x2E7473694C207C20, 0xEE00203A656D614ELL);
  MEMORY[0x1E1296160](v1[8], v1[9]);
  return 0;
}

uint64_t sub_1DC360D48(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1DC5172FC();
  __swift_allocate_value_buffer(v7, a2);
  v8 = __swift_project_value_buffer(v7, a2);
  v9 = swift_allocObject();
  v9[2] = 0xD000000000000013;
  v9[3] = 0x80000001DC541640;
  v9[4] = a3;
  v9[5] = a4;
  *v8 = v9;
  OUTLINED_FUNCTION_7_1();
  v11 = *(v10 + 104);

  return v11(v8);
}

uint64_t sub_1DC360E18@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECC86E48 != -1)
  {
    OUTLINED_FUNCTION_1_17(&qword_1ECC86E48);
  }

  v2 = sub_1DC5172FC();
  __swift_project_value_buffer(v2, qword_1ECC8F870);
  OUTLINED_FUNCTION_7_1();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t sub_1DC360EF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

      return OUTLINED_FUNCTION_9_13(result, a2);
    }

    *(result + 80) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_9_13(result, a2);
    }
  }

  return result;
}

uint64_t sub_1DC360FAC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  v9 = swift_allocObject();
  v9[2] = v4;
  v9[3] = a2;
  v9[4] = a3;
  v9[5] = a1;
  OUTLINED_FUNCTION_27_5();
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1DC361434;
  *(v10 + 24) = v9;
  v15[4] = sub_1DC2929F4;
  v15[5] = v10;
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_0_26();
  v15[2] = v11;
  v15[3] = &block_descriptor_5;
  v12 = _Block_copy(v15);

  v13 = a1;

  dispatch_sync(v8, v12);
  _Block_release(v12);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DC3610F8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = OUTLINED_FUNCTION_9_15();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v45 - v14;
  OUTLINED_FUNCTION_12_0();
  v17 = (*(v16 + 96))();
  v18 = OUTLINED_FUNCTION_73();
  v20 = sub_1DC361440(v18, v19, v17);

  if (v20)
  {

    sub_1DC28D414();
    OUTLINED_FUNCTION_4_2();
    v21(v15);

    v22 = sub_1DC516F6C();
    v23 = sub_1DC517BAC();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = OUTLINED_FUNCTION_63();
      v25 = OUTLINED_FUNCTION_82();
      v47[0] = v25;
      *v24 = 136315138;
      v26 = OUTLINED_FUNCTION_73();
      *(v24 + 4) = sub_1DC291244(v26, v27, v28);
      _os_log_impl(&dword_1DC287000, v22, v23, "NLURequestTimeoutManager: sendNluRequestTimeoutTimer already exists for nluRequestId: %s. Not registering and not starting.", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      OUTLINED_FUNCTION_102();
      OUTLINED_FUNCTION_66();
    }

    return (*(v9 + 8))(v15, v7);
  }

  else
  {
    [a4 start];
    OUTLINED_FUNCTION_12_0();
    v31 = *(v30 + 112);
    v32 = a4;
    v33 = v31(v47);
    v35 = v34;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v46 = *v35;
    sub_1DC3619D0(v32, v5, v4, isUniquelyReferenced_nonNull_native);
    *v35 = v46;
    v33(v47, 0);
    sub_1DC28D414();
    OUTLINED_FUNCTION_4_2();
    v37(v13);

    v38 = sub_1DC516F6C();
    v39 = sub_1DC517B9C();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = OUTLINED_FUNCTION_63();
      v41 = OUTLINED_FUNCTION_82();
      v47[0] = v41;
      *v40 = 136315138;
      v42 = OUTLINED_FUNCTION_73();
      *(v40 + 4) = sub_1DC291244(v42, v43, v44);
      _os_log_impl(&dword_1DC287000, v38, v39, "NLURequestTimeoutManager: registered and started sendNluRequestTimeoutTimer for nlRequestId: %s.", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v41);
      OUTLINED_FUNCTION_102();
      OUTLINED_FUNCTION_66();
    }

    return (*(v9 + 8))(v13, v7);
  }
}

void *sub_1DC361440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1DC2AEB04(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

uint64_t sub_1DC361488(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 16);
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  OUTLINED_FUNCTION_27_5();
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1DC3618D8;
  *(v8 + 24) = v7;
  v12[4] = sub_1DC292A1C;
  v12[5] = v8;
  OUTLINED_FUNCTION_13_1();
  OUTLINED_FUNCTION_0_26();
  v12[2] = v9;
  v12[3] = &block_descriptor_13_0;
  v10 = _Block_copy(v12);

  dispatch_sync(v6, v10);
  _Block_release(v10);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DC3615CC()
{
  v0 = OUTLINED_FUNCTION_9_15();
  OUTLINED_FUNCTION_0();
  v2 = v1;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v35 - v7;
  OUTLINED_FUNCTION_12_0();
  v10 = (*(v9 + 96))();
  v11 = OUTLINED_FUNCTION_73();
  v13 = sub_1DC361440(v11, v12, v10);

  if (v13)
  {
    [v13 cancelIfNotAlreadyCanceled];
    OUTLINED_FUNCTION_12_0();
    v15 = (*(v14 + 112))(v35);
    v16 = OUTLINED_FUNCTION_73();

    v15(v35, 0);
    sub_1DC28D414();
    OUTLINED_FUNCTION_4_2();
    v18(v8);

    v19 = sub_1DC516F6C();
    v20 = sub_1DC517B9C();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = OUTLINED_FUNCTION_63();
      v22 = OUTLINED_FUNCTION_82();
      v35[0] = v22;
      *v21 = 136315138;
      v23 = OUTLINED_FUNCTION_73();
      *(v21 + 4) = sub_1DC291244(v23, v24, v25);
      _os_log_impl(&dword_1DC287000, v19, v20, "NLURequestTimeoutManager: canceled and removed sendNluRequestTimeoutTimer for nluRequestId: %s.", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_102();
    }

    return (*(v2 + 8))(v8, v0);
  }

  else
  {
    sub_1DC28D414();
    OUTLINED_FUNCTION_4_2();
    v27(v6);

    v28 = sub_1DC516F6C();
    v29 = sub_1DC517BAC();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = OUTLINED_FUNCTION_63();
      v31 = OUTLINED_FUNCTION_82();
      v35[0] = v31;
      *v30 = 136315138;
      v32 = OUTLINED_FUNCTION_73();
      *(v30 + 4) = sub_1DC291244(v32, v33, v34);
      _os_log_impl(&dword_1DC287000, v28, v29, "NLURequestTimeoutManager: no sendNluRequestTimeoutTimer exists to cancel and remove for nluRequestId: %s.", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      OUTLINED_FUNCTION_102();
      OUTLINED_FUNCTION_66();
    }

    return (*(v2 + 8))(v6, v0);
  }
}