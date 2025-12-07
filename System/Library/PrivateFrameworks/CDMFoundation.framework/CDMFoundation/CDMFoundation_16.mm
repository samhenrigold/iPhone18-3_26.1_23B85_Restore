uint64_t sub_1DC3FFA34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  sub_1DC51122C();
  OUTLINED_FUNCTION_0();
  v74 = v3;
  v75 = v4;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  v73 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CA40, &unk_1DC5233A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v72 = v68 - v8;
  v82 = sub_1DC5157EC();
  OUTLINED_FUNCTION_0();
  v77 = v9;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v70 = v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v71 = v68 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v76 = v68 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C158, &unk_1DC5234A0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v68 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C160, qword_1DC5233B0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = v68 - v20;
  v22 = type metadata accessor for NLRouterNLParseResponse(0);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_1();
  v78 = (v25 - v24);
  sub_1DC516F5C();
  OUTLINED_FUNCTION_0();
  v79 = v27;
  v80 = v26;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_1();
  v30 = v29 - v28;
  sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v31 = sub_1DC2BE518();
  v32 = OUTLINED_FUNCTION_130();
  sub_1DC2A2ED0("HeuristicRules.PhoneCallRule", 28, 2, v31, v32 & 1, v30);

  v33 = type metadata accessor for NLRouterServiceRequest(0);
  sub_1DC28F358(a1 + *(v33 + 32), v18, &qword_1ECC7C158, &unk_1DC5234A0);
  v34 = type metadata accessor for NLRouterTurnProbingResult(0);
  if (__swift_getEnumTagSinglePayload(v18, 1, v34) == 1)
  {
    sub_1DC28EB30(v18, &qword_1ECC7C158, &unk_1DC5234A0);
    __swift_storeEnumTagSinglePayload(v21, 1, 1, v22);
LABEL_4:
    sub_1DC28EB30(v21, &qword_1ECC7C160, qword_1DC5233B0);
    v35 = v81;
    v36 = v82;
    v37 = 1;
LABEL_19:
    __swift_storeEnumTagSinglePayload(v35, v37, 1, v36);
    v55 = sub_1DC2BE518();
    sub_1DC2B8848(v30, "HeuristicRules.PhoneCallRule", 28, 2, v55);

    return (*(v79 + 8))(v30, v80);
  }

  sub_1DC28F358(v18, v21, &qword_1ECC7C160, qword_1DC5233B0);
  sub_1DC2E5408(v18, type metadata accessor for NLRouterTurnProbingResult);
  if (__swift_getEnumTagSinglePayload(v21, 1, v22) == 1)
  {
    goto LABEL_4;
  }

  sub_1DC2E53A4(v21, v78);
  v38 = type metadata accessor for HeuristicRoutingRequest(0);
  v40 = v76;
  v39 = v77;
  v41 = *(v77 + 16);
  v69 = *(v38 + 20);
  v42 = v82;
  v41(v76, a1 + v69, v82);
  sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
  v43 = sub_1DC3453A8();
  v45 = v44;
  if (v43 == sub_1DC312FB4(0) && v45 == v46)
  {

    goto LABEL_15;
  }

  v48 = sub_1DC51825C();

  if (v48)
  {
LABEL_15:
    v53 = sub_1DC5157DC();
    sub_1DC2E5408(v78, type metadata accessor for NLRouterNLParseResponse);
    if (v53)
    {
      (*(v39 + 8))(v40, v42);
      v37 = 1;
      v54 = v81;
    }

    else
    {
      v54 = v81;
      (*(v39 + 32))(v81, v40, v42);
      v37 = 0;
    }

    v35 = v54;
    v36 = v42;
    goto LABEL_19;
  }

  v49 = sub_1DC3453A8();
  v51 = sub_1DC312F68(v49, v50);
  if (v51 == 4)
  {
    v52 = v72;
    __swift_storeEnumTagSinglePayload(v72, 1, 1, v42);
LABEL_14:
    sub_1DC28EB30(v52, &qword_1ECC7CA40, &unk_1DC5233A0);
    goto LABEL_15;
  }

  v52 = v72;
  sub_1DC312E7C(v51, v72);
  if (__swift_getEnumTagSinglePayload(v52, 1, v42) == 1)
  {
    goto LABEL_14;
  }

  v57 = *(v39 + 32);
  v68[1] = v39 + 32;
  v68[2] = a1;
  v68[0] = v57;
  result = v57(v71, v52, v42);
  v58 = 0;
  v59 = *v78;
  v72 = *(*v78 + 16);
  v68[3] = v75 + 16;
  while (1)
  {
    if (v72 == v58)
    {
      v39 = v77;
      v42 = v82;
      (*(v77 + 8))(v71, v82);
      v40 = v76;
      goto LABEL_15;
    }

    if (v58 >= *(v59 + 16))
    {
      break;
    }

    v61 = v74;
    v60 = v75;
    v62 = v73;
    (*(v75 + 16))(v73, v59 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v58++, v74);
    v63 = sub_1DC5111AC();
    v64 = sub_1DC4001EC(v63);

    result = (*(v60 + 8))(v62, v61);
    if (v64)
    {
      v65 = v70;
      v66 = v71;
      v40 = v76;
      sub_1DC32DE40();
      v39 = v77;
      v67 = *(v77 + 8);
      v42 = v82;
      v67(v66, v82);
      v67(v40, v42);
      (v68[0])(v40, v65, v42);
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DC4001EC(uint64_t a1)
{
  v36 = sub_1DC510FDC();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_1();
  v35 = v6 - v5;
  v38 = sub_1DC51179C();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  v12 = v11 - v10;
  v13 = sub_1DC51164C();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1();
  v19 = v18 - v17;
  v20 = *(a1 + 16);
  if (!v20)
  {
    return 0;
  }

  v21 = v3;
  v24 = *(v15 + 16);
  v22 = v15 + 16;
  v23 = v24;
  v25 = a1 + ((*(v22 + 64) + 32) & ~*(v22 + 64));
  v26 = (v22 - 8);
  v37 = (v8 + 8);
  v33 = (v21 + 8);
  v34 = v24;
  v27 = *(v22 + 56);
  v32 = v27;
  while (1)
  {
    v23(v19, v25, v13);
    if ((sub_1DC5114CC() & 1) == 0)
    {
      goto LABEL_11;
    }

    sub_1DC51154C();
    v28 = sub_1DC51177C();
    v29 = *v37;
    (*v37)(v12, v38);
    if ((v28 & 1) == 0 || (type metadata accessor for NLRouterBypassUtils(), sub_1DC51154C(), sub_1DC51178C(), v29(v12, v38), v27 = v32, v30 = sub_1DC307E5C(v35), v23 = v34, (*v33)(v35, v36), !v30))
    {
      v26 = (v22 - 8);
LABEL_11:
      (*v26)(v19, v13);
      goto LABEL_12;
    }

    sub_1DC51478C();

    v26 = (v22 - 8);
    (*(v22 - 8))(v19, v13);
    *v40 = *&v40[5];
    *&v40[2] = v41;
    if (*(&v41 + 1))
    {
      break;
    }

LABEL_9:
    sub_1DC28EB30(v40, &qword_1ECC7D3F0, &qword_1DC5238B0);
LABEL_12:
    v25 += v27;
    if (!--v20)
    {
      return 0;
    }
  }

  sub_1DC28F358(v40, v39, &qword_1ECC7D3F0, &qword_1DC5238B0);
  sub_1DC514A6C();
  if (!swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    goto LABEL_9;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v39);
  sub_1DC28EB30(v40, &qword_1ECC7D3F0, &qword_1DC5238B0);
  return 1;
}

uint64_t sub_1DC4005AC()
{
  v0 = sub_1DC5172FC();
  __swift_allocate_value_buffer(v0, qword_1ECC8FA08);
  v1 = OUTLINED_FUNCTION_43();
  v3 = __swift_project_value_buffer(v1, v2);
  v4 = swift_allocObject();
  v4[2] = 0xD000000000000028;
  v4[3] = 0x80000001DC540200;
  v4[4] = 0xD000000000000012;
  v4[5] = 0x80000001DC529730;
  *v3 = v4;
  OUTLINED_FUNCTION_7_1();
  v6 = *(v5 + 104);

  return v6(v3);
}

uint64_t sub_1DC400680@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFF8, &qword_1DC522580);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v65 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v62 - v8;
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v62 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v62 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v62 - v16;
  v18 = sub_1DC5172FC();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DC5171CC();
  if (qword_1ECC8AB20 != -1)
  {
    OUTLINED_FUNCTION_0_51(&qword_1ECC8AB20);
  }

  __swift_project_value_buffer(v18, qword_1ECC8FA08);
  v22 = sub_1DC5172DC();
  (*(v19 + 8))(v21, v18);
  if (v22)
  {
    v23 = sub_1DC5171EC();
    sub_1DC30F668(0x6D614E746E657665, 0xE900000000000065, v23, v17);

    v24 = sub_1DC5172AC();
    OUTLINED_FUNCTION_3_3(v17);
    if (v25)
    {
      sub_1DC30F72C(v17);
      v26 = v65;
    }

    else
    {
      sub_1DC382AC0();
      v64 = v39;
      v41 = v40;
      OUTLINED_FUNCTION_1_10();
      (*(v42 + 8))(v17, v24);
      v26 = v65;
      v63 = v41;
      if (v41)
      {
LABEL_10:
        v43 = sub_1DC5171EC();
        sub_1DC30F668(0x7373656E69737562, 0xEC000000656D614ELL, v43, v15);

        OUTLINED_FUNCTION_3_3(v15);
        if (v25)
        {
          sub_1DC30F72C(v15);
        }

        else
        {
          sub_1DC382AC0();
          v65 = v44;
          v46 = v45;
          OUTLINED_FUNCTION_1_10();
          (*(v47 + 8))(v15, v24);
          v62 = v46;
          if (v46)
          {
LABEL_15:
            v48 = sub_1DC5171EC();
            sub_1DC30F668(0x7461447472617473, 0xED0000656D695465, v48, v12);

            OUTLINED_FUNCTION_3_3(v12);
            if (v25)
            {
              sub_1DC30F72C(v12);
            }

            else
            {
              sub_1DC382AC0();
              v33 = v49;
              v34 = v50;
              OUTLINED_FUNCTION_1_10();
              (*(v51 + 8))(v12, v24);
              if (v34)
              {
LABEL_20:
                v52 = sub_1DC5171EC();
                sub_1DC30F668(0x5465746144646E65, 0xEB00000000656D69, v52, v9);

                OUTLINED_FUNCTION_3_3(v9);
                if (v25)
                {
                  sub_1DC30F72C(v9);
                }

                else
                {
                  sub_1DC382AC0();
                  v35 = v53;
                  v36 = v54;
                  OUTLINED_FUNCTION_1_10();
                  (*(v55 + 8))(v9, v24);
                  if (v36)
                  {
LABEL_25:
                    v56 = sub_1DC5171EC();
                    sub_1DC30F668(0x627553746E657665, 0xEC00000065707954, v56, v26);

                    OUTLINED_FUNCTION_3_3(v26);
                    if (v25)
                    {
                      sub_1DC30F72C(v26);
                    }

                    else
                    {
                      sub_1DC382AC0();
                      v37 = v57;
                      v38 = v58;
                      OUTLINED_FUNCTION_1_10();
                      (*(v59 + 8))(v26, v24);
                      if (v38)
                      {
                        sub_1DC51721C();
                        OUTLINED_FUNCTION_7_1();
                        result = (*(v60 + 8))(a1);
LABEL_31:
                        v30 = v63;
                        v29 = v64;
                        v31 = v65;
                        v32 = v62;
                        goto LABEL_32;
                      }
                    }

                    sub_1DC51721C();
                    OUTLINED_FUNCTION_7_1();
                    (*(v61 + 8))(a1);

                    v37 = 0;
                    v38 = 0xE000000000000000;
                    goto LABEL_31;
                  }
                }

                v35 = 0;
                v36 = 0xE000000000000000;
                goto LABEL_25;
              }
            }

            v33 = 0;
            v34 = 0xE000000000000000;
            goto LABEL_20;
          }
        }

        v65 = 0;
        v62 = 0xE000000000000000;
        goto LABEL_15;
      }
    }

    v63 = 0xE000000000000000;
    v64 = 0;
    goto LABEL_10;
  }

  sub_1DC51721C();
  OUTLINED_FUNCTION_7_1();
  result = (*(v27 + 8))(a1);
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
LABEL_32:
  *a2 = v29;
  a2[1] = v30;
  a2[2] = v31;
  a2[3] = v32;
  a2[4] = v33;
  a2[5] = v34;
  a2[6] = v35;
  a2[7] = v36;
  a2[8] = v37;
  a2[9] = v38;
  return result;
}

uint64_t sub_1DC400CAC()
{
  v1 = v0;
  sub_1DC517F4C();
  MEMORY[0x1E1296160](0x6D614E746E657645, 0xEB00000000203A65);
  MEMORY[0x1E1296160](*v1, v1[1]);
  OUTLINED_FUNCTION_5_14();
  MEMORY[0x1E1296160](0xD000000000000011);
  MEMORY[0x1E1296160](v1[2], v1[3]);
  OUTLINED_FUNCTION_5_14();
  MEMORY[0x1E1296160]();
  MEMORY[0x1E1296160](v1[4], v1[5]);
  OUTLINED_FUNCTION_5_14();
  MEMORY[0x1E1296160]();
  MEMORY[0x1E1296160](v1[6], v1[7]);
  OUTLINED_FUNCTION_5_14();
  MEMORY[0x1E1296160](0xD000000000000011);
  MEMORY[0x1E1296160](v1[8], v1[9]);
  return 0;
}

uint64_t sub_1DC400DCC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECC8AB20 != -1)
  {
    OUTLINED_FUNCTION_0_51(&qword_1ECC8AB20);
  }

  v2 = sub_1DC5172FC();
  __swift_project_value_buffer(v2, qword_1ECC8FA08);
  OUTLINED_FUNCTION_7_1();
  v4 = *(v3 + 16);

  return v4(a1);
}

void sub_1DC4010C4(char *a1@<X8>)
{
  v3 = *(v1 + 16);
  if (sub_1DC51633C())
  {
    if (!(*((*MEMORY[0x1E69E7D40] & *v3) + 0x78))())
    {
      v7 = 1;
      goto LABEL_6;
    }

    v4 = sub_1DC517BAC();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v5 = sub_1DC2C0F8C();
    sub_1DC516F0C(v4, &dword_1DC287000, v5, "Global Override is database, but component override is trie", 59, 2, MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v6 = sub_1DC517BAC();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v5 = sub_1DC2C0F8C();
    sub_1DC516F0C(v6, &dword_1DC287000, v5, "Global Override is trie store type but the trie store isn't loaded", 66, 2, MEMORY[0x1E69E7CC0]);
  }

  v7 = 0;
LABEL_6:
  *a1 = v7;
}

uint64_t sub_1DC401240(uint64_t a1, uint64_t a2)
{
  v15 = MEMORY[0x1E69E7CC0];
  v2 = sub_1DC51634C();
  sub_1DC4013C8(v2);
  OUTLINED_FUNCTION_11_27();
  if ((*(v3 + 120))())
  {
    v4 = sub_1DC51634C();
    sub_1DC4013C8(v4);
    v5 = v15;
    OUTLINED_FUNCTION_11_27();
    v7 = *(v6 + 152);

    v7(v8);
  }

  else
  {
    v9 = sub_1DC517B8C();
    sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
    v10 = sub_1DC2C0F8C();
    sub_1DC516F0C(v9, &dword_1DC287000, v10, "TrieOverrides: component override store empty, not matching, returning just the global override match", 101, 2, MEMORY[0x1E69E7CC0]);

    v5 = v15;
    OUTLINED_FUNCTION_11_27();
    v12 = *(v11 + 152);

    v12(v13);
  }

  return v5;
}

uint64_t sub_1DC4013C8(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1DC401F7C(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = sub_1DC5163CC();
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1DC4014C8(uint64_t a1, int a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D7A0, "ĉ");
  sub_1DC517BFC();
  return v3;
}

void sub_1DC40154C(unint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v119 = a3;
  v120 = a2;
  v125 = a4;
  v115 = sub_1DC51630C();
  OUTLINED_FUNCTION_0();
  v114 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  v113 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CC00, &qword_1DC524688);
  v10 = OUTLINED_FUNCTION_10(v9);
  MEMORY[0x1EEE9AC00](v10);
  v116 = &v111 - v11;
  OUTLINED_FUNCTION_12();
  v12 = sub_1DC5163CC();
  OUTLINED_FUNCTION_0();
  v122 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_1();
  v121 = v16 - v15;
  OUTLINED_FUNCTION_12();
  v17 = sub_1DC51670C();
  v18 = OUTLINED_FUNCTION_10(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_1();
  v131 = v20 - v19;
  OUTLINED_FUNCTION_12();
  v21 = sub_1DC51231C();
  OUTLINED_FUNCTION_0();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_1();
  v133 = v26 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D7C0, &unk_1DC5297C0);
  v28 = OUTLINED_FUNCTION_10(v27);
  MEMORY[0x1EEE9AC00](v28);
  v118 = &v111 - v29;
  OUTLINED_FUNCTION_12();
  v123 = sub_1DC511A4C();
  OUTLINED_FUNCTION_0();
  v31 = v30;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_1();
  v117 = v34 - v33;
  v35 = sub_1DC517B9C();
  v124 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v36 = sub_1DC2C0F8C();
  v37 = MEMORY[0x1E69E7CC0];
  sub_1DC516F0C(v35, &dword_1DC287000, v36, "Obj-C override match called for component override", 50, 2, MEMORY[0x1E69E7CC0]);

  v132 = a1;
  v38 = sub_1DC2C20B8(a1);
  if (!v38)
  {
    v56 = v120;
    v55 = v125;
LABEL_17:
    v57 = *((*MEMORY[0x1E69E7D40] & *v56) + 0xB0);

    v57(v58);
    v59 = v118;
    sub_1DC511A3C();
    v60 = v123;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v59, 1, v123);
    v63 = v121;
    v62 = v122;
    if (EnumTagSinglePayload == 1)
    {

      sub_1DC28EB30(v59, &qword_1ECC7D7C0, &unk_1DC5297C0);
      sub_1DC517BAC();
      v64 = OUTLINED_FUNCTION_20_17();
      v65 = OUTLINED_FUNCTION_40_1();
      sub_1DC516F0C(v65, v66, v67, v68, 137, 2);

      v54 = 0;
LABEL_25:
      *v55 = v54;
      return;
    }

    v69 = v117;
    (*(v31 + 32))(v117, v59, v60);
    v70 = sub_1DC401240(v37, v69);

    v71 = v116;
    sub_1DC2C2328(v70, MEMORY[0x1E69D0920], v116);

    if (__swift_getEnumTagSinglePayload(v71, 1, v12) == 1)
    {
      sub_1DC28EB30(v71, &qword_1ECC7CC00, &qword_1DC524688);
      sub_1DC517B8C();
      v72 = OUTLINED_FUNCTION_20_17();
      v73 = OUTLINED_FUNCTION_40_1();
      sub_1DC516F0C(v73, v74, v75, v76, 41, 2);

      (*(v31 + 8))(v69, v60);
    }

    else
    {
      (*(v62 + 32))(v63, v71, v12);
      v77 = v113;
      v78 = sub_1DC5163BC();
      MEMORY[0x1E1294BA0](v78);
      v80 = v79;
      (*(v114 + 8))(v77, v115);
      if (v80 >> 60 != 15)
      {
        v91 = objc_allocWithZone(MEMORY[0x1E69D1348]);
        v92 = OUTLINED_FUNCTION_29_0();
        sub_1DC2A6784(v92, v93);
        v94 = OUTLINED_FUNCTION_29_0();
        v96 = sub_1DC339190(v94, v95);
        v55 = v125;
        if (v96)
        {
          v54 = v96;
          v97 = OUTLINED_FUNCTION_29_0();
          sub_1DC301FE0(v97, v98);
          v99 = OUTLINED_FUNCTION_10_24();
          v100(v99);
          v101 = OUTLINED_FUNCTION_3_28();
          v102(v101);
        }

        else
        {
          v103 = sub_1DC517BAC();
          v104 = sub_1DC2C0F8C();
          sub_1DC516F0C(v103, &dword_1DC287000, v104, "Error occurred while serialize into SIRINLUINTERNALComponentOverride", 68, 2, MEMORY[0x1E69E7CC0]);

          v105 = OUTLINED_FUNCTION_29_0();
          sub_1DC301FE0(v105, v106);
          v107 = OUTLINED_FUNCTION_10_24();
          v108(v107);
          v109 = OUTLINED_FUNCTION_3_28();
          v110(v109);
          v54 = 0;
        }

        goto LABEL_25;
      }

      sub_1DC517BAC();
      v81 = OUTLINED_FUNCTION_20_17();
      v82 = OUTLINED_FUNCTION_40_1();
      sub_1DC516F0C(v82, v83, v84, v85, 56, 2);

      v86 = OUTLINED_FUNCTION_10_24();
      v87(v86);
      v88 = OUTLINED_FUNCTION_3_28();
      v90(v88, v89);
    }

    v54 = 0;
LABEL_24:
    v55 = v125;
    goto LABEL_25;
  }

  v39 = v38;
  v138 = v37;
  sub_1DC2C22A4(0, v38 & ~(v38 >> 63), 0);
  if ((v39 & 0x8000000000000000) == 0)
  {
    v112 = v12;
    v40 = 0;
    v37 = v138;
    v129 = v31;
    v130 = v132 & 0xC000000000000001;
    v126 = v132 & 0xFFFFFFFFFFFFFF8;
    v127 = v23 + 32;
    v128 = v39;
    while (1)
    {
      v41 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        break;
      }

      if (v130)
      {
        v42 = MEMORY[0x1E1296800](v40, v132);
      }

      else
      {
        if (v40 >= *(v126 + 16))
        {
          goto LABEL_30;
        }

        v42 = *(v132 + 8 * v40 + 32);
      }

      v43 = v42;
      sub_1DC2C22C4(v42);
      if (v44 >> 60 == 15)
      {
        goto LABEL_32;
      }

      v137 = 0;
      v135 = 0u;
      v136 = 0u;
      sub_1DC5166FC();
      OUTLINED_FUNCTION_2_31();
      sub_1DC293C74(&qword_1EDAC8038, v45, MEMORY[0x1E69D0D20]);
      v46 = v134;
      sub_1DC51677C();
      if (v46)
      {

        sub_1DC517BAC();
        v49 = OUTLINED_FUNCTION_20_17();
        v50 = OUTLINED_FUNCTION_40_1();
        sub_1DC516F0C(v50, v51, v52, v53, 138, 2);

        v54 = 0;
        goto LABEL_24;
      }

      v134 = 0;

      v138 = v37;
      v48 = *(v37 + 16);
      v47 = *(v37 + 24);
      if (v48 >= v47 >> 1)
      {
        sub_1DC2C22A4((v47 > 1), v48 + 1, 1);
        v37 = v138;
      }

      *(v37 + 16) = v48 + 1;
      (*(v23 + 32))(v37 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v48, v133, v21);
      ++v40;
      v31 = v129;
      if (v41 == v128)
      {
        v55 = v125;
        v12 = v112;
        v56 = v120;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  __break(1u);
LABEL_32:
  __break(1u);
}

id SiriNLUOverrideProxy.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SiriNLUOverrideProxy.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriNLUOverrideProxy();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1DC401F7C(uint64_t a1, char a2)
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

    result = sub_1DC401FE4(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

void *sub_1DC401FE4(void *result, int64_t a2, char a3, uint64_t a4)
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
  v9 = sub_1DC4020E4(v8, v7);
  v10 = *(sub_1DC5163CC() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_1DC4021E0(a4 + v11, v8, v9 + v11, MEMORY[0x1E69D0920]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

void *sub_1DC4020E4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D7B0, &qword_1DC5297A8);
  v4 = *(sub_1DC5163CC() - 8);
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

void sub_1DC4021E0(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (a4(0), OUTLINED_FUNCTION_35(), a1 + *(v8 + 72) * a2 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_52_0();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {
    OUTLINED_FUNCTION_52_0();

    swift_arrayInitWithTakeBackToFront();
  }
}

uint64_t sub_1DC402404()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C440, &qword_1DC522EF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DC522F10;
  v1 = sub_1DC3EAAF4();
  v3 = *v1;
  v2 = v1[1];
  *(v0 + 32) = v3;
  *(v0 + 40) = v2;

  v4 = sub_1DC3EAB00();
  v6 = *v4;
  v5 = v4[1];
  *(v0 + 48) = v6;
  *(v0 + 56) = v5;
  qword_1ECC8FA20 = v0;
}

uint64_t sub_1DC402484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v171 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CA40, &unk_1DC5233A0);
  OUTLINED_FUNCTION_10(v3);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14(&v140 - v5);
  v174 = sub_1DC5157EC();
  OUTLINED_FUNCTION_0();
  v152 = v6;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v151 = &v140 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14(&v140 - v10);
  v164 = sub_1DC510FDC();
  OUTLINED_FUNCTION_0();
  v155 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v13);
  v173 = sub_1DC51179C();
  OUTLINED_FUNCTION_0();
  v161 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_1();
  v172 = v16;
  v165 = sub_1DC51164C();
  OUTLINED_FUNCTION_0();
  v157 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v19);
  v159 = sub_1DC51122C();
  OUTLINED_FUNCTION_0();
  v160 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_2_1();
  v158 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BEB8, &unk_1DC527150);
  OUTLINED_FUNCTION_10(v23);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v24);
  v167 = &v140 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BEC0, &unk_1DC5221E0);
  OUTLINED_FUNCTION_10(v26);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v27);
  v166 = &v140 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C158, &unk_1DC5234A0);
  OUTLINED_FUNCTION_10(v29);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v140 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C160, qword_1DC5233B0);
  OUTLINED_FUNCTION_10(v33);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v140 - v35;
  v37 = type metadata accessor for NLRouterNLParseResponse(0);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_14(v39);
  sub_1DC516F5C();
  OUTLINED_FUNCTION_0();
  v169 = v41;
  v170 = v40;
  MEMORY[0x1EEE9AC00](v40);
  v43 = &v140 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v45 = sub_1DC2BE518();
  v46 = OUTLINED_FUNCTION_130();
  v168 = v43;
  v47 = v43;
  v48 = v44;
  sub_1DC2A2ED0("HeuristicRules.PlannerUpdateRule", 32, 2, v45, v46 & 1, v47);

  v49 = type metadata accessor for NLRouterServiceRequest(0);
  sub_1DC28F358(a1 + *(v49 + 32), v32, &qword_1ECC7C158, &unk_1DC5234A0);
  v50 = type metadata accessor for NLRouterTurnProbingResult(0);
  if (__swift_getEnumTagSinglePayload(v32, 1, v50) == 1)
  {
    sub_1DC28EB30(v32, &qword_1ECC7C158, &unk_1DC5234A0);
    __swift_storeEnumTagSinglePayload(v36, 1, 1, v37);
LABEL_4:
    sub_1DC28EB30(v36, &qword_1ECC7C160, qword_1DC5233B0);
    v51 = v171;
    v52 = 1;
    v53 = v174;
    goto LABEL_17;
  }

  sub_1DC28F358(v32, v36, &qword_1ECC7C160, qword_1DC5233B0);
  sub_1DC33F1E0(v32, type metadata accessor for NLRouterTurnProbingResult);
  if (__swift_getEnumTagSinglePayload(v36, 1, v37) == 1)
  {
    goto LABEL_4;
  }

  v54 = v162;
  sub_1DC2E53A4(v36, v162);
  v55 = sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
  v56 = sub_1DC343888();
  v58 = v57;
  if (v56 == sub_1DC312FB4(0) && v58 == v59)
  {

    goto LABEL_13;
  }

  v61 = sub_1DC51825C();

  if (v61)
  {
LABEL_13:
    OUTLINED_FUNCTION_0_17();
    sub_1DC33F1E0(v54, v68);
LABEL_14:
    v69 = v171;
    a1 = v174;
    goto LABEL_15;
  }

  v62 = v167;
  sub_1DC3EAD64(v167);
  v63 = type metadata accessor for QDContextState(0);
  if (__swift_getEnumTagSinglePayload(v62, 1, v63) == 1)
  {
    OUTLINED_FUNCTION_0_17();
    sub_1DC33F1E0(v54, v64);
    v65 = &qword_1ECC7BEB8;
    v66 = &unk_1DC527150;
    v67 = v62;
LABEL_20:
    sub_1DC28EB30(v67, v65, v66);
    goto LABEL_14;
  }

  v73 = v166;
  sub_1DC28F358(&v62[*(v63 + 24)], v166, &qword_1ECC7BEC0, &unk_1DC5221E0);
  sub_1DC33F1E0(v62, type metadata accessor for QDContextState);
  v74 = sub_1DC51724C();
  if (__swift_getEnumTagSinglePayload(v73, 1, v74) == 1)
  {
    OUTLINED_FUNCTION_0_17();
    sub_1DC33F1E0(v54, v75);
    v65 = &qword_1ECC7BEC0;
    v66 = &unk_1DC5221E0;
    v67 = v73;
    goto LABEL_20;
  }

  v143 = v55;
  v76 = sub_1DC51723C();
  v78 = v77;
  v79 = (*(*(v74 - 8) + 8))(v73, v74);
  if (qword_1ECC8AB28 != -1)
  {
    goto LABEL_56;
  }

LABEL_22:
  v142 = v76;
  *&v176 = v76;
  *(&v176 + 1) = v78;
  MEMORY[0x1EEE9AC00](v79);
  *(&v140 - 2) = &v176;
  sub_1DC2CF098(sub_1DC2CF174, (&v140 - 4), v80);
  OUTLINED_FUNCTION_10_16();
  if ((v81 & 1) == 0)
  {
    OUTLINED_FUNCTION_0_17();
    sub_1DC33F1E0(v54, v107);

    goto LABEL_14;
  }

  v141 = v78;
  v140 = a1;
  v82 = 0;
  v83 = *v54;
  v148 = *(*v54 + 16);
  v146 = v160 + 16;
  v166 = v157 + 16;
  v167 = (v157 + 8);
  ++v161;
  ++v155;
  v147 = (v160 + 8);
  v69 = v171;
  a1 = v174;
  v54 = v165;
  v144 = v48;
  v145 = v83;
  v78 = v156;
  while (1)
  {
    if (v82 == v148)
    {
      goto LABEL_52;
    }

    if (v82 >= *(v83 + 16))
    {
      __break(1u);
LABEL_56:
      v79 = OUTLINED_FUNCTION_2_32(&qword_1ECC8AB28);
      goto LABEL_22;
    }

    OUTLINED_FUNCTION_11_17();
    (*(v86 + 16))(v76, v85 + v84 + *(v86 + 72) * v82, v55);
    v87 = *(sub_1DC5111AC() + 16);
    if (v87)
    {
      break;
    }

LABEL_41:
    ++v82;
    (*v147)(v76, v55);
    v83 = v145;
  }

  v149 = v82;
  OUTLINED_FUNCTION_11_17();
  v150 = v88;
  v90 = v88 + v89;
  v92 = *(v91 + 72);
  v93 = *(v91 + 16);
  while (1)
  {
    v93(v78, v90, v54);
    v76 = v78;
    if ((sub_1DC5114CC() & 1) == 0)
    {
      v103 = OUTLINED_FUNCTION_5_25();
      v104(v103);
      goto LABEL_37;
    }

    v55 = v172;
    sub_1DC51154C();
    v76 = v55;
    v94 = sub_1DC51177C();
    v95 = *v161;
    (*v161)(v55, v173);
    if ((v94 & 1) == 0 || (v96 = type metadata accessor for NLRouterBypassUtils(), v97 = v172, sub_1DC51154C(), v55 = v163, sub_1DC51178C(), v98 = v97, v54 = v165, v95(v98, v173), v76 = v96, v99 = sub_1DC307E5C(v55), (*v155)(v55, v164), !v99))
    {
      v105 = OUTLINED_FUNCTION_5_25();
      v106(v105);
LABEL_36:
      a1 = v174;
      goto LABEL_37;
    }

    sub_1DC51478C();

    v100 = OUTLINED_FUNCTION_5_25();
    v101(v100);
    v175[0] = v176;
    v175[1] = v177;
    if (!*(&v177 + 1))
    {
      sub_1DC28EB30(v175, &qword_1ECC7D3F0, &qword_1DC5238B0);
      goto LABEL_36;
    }

    sub_1DC51499C();
    v102 = swift_dynamicCast();
    a1 = v174;
    if (v102)
    {
      break;
    }

LABEL_37:
    v90 += v92;
    if (!--v87)
    {

      v69 = v171;
      v48 = v144;
      OUTLINED_FUNCTION_10_16();
      v82 = v149;
      goto LABEL_41;
    }
  }

  (*v147)(v158, v159);
  v108 = sub_1DC343888();
  v110 = sub_1DC312F68(v108, v109);
  if (v110 == 4)
  {
    OUTLINED_FUNCTION_0_17();
    OUTLINED_FUNCTION_9_18(v111, v112);
    OUTLINED_FUNCTION_12_16();
    v113 = v154;
    __swift_storeEnumTagSinglePayload(v154, 1, 1, a1);
    v69 = v171;
    goto LABEL_47;
  }

  v113 = v154;
  sub_1DC312E7C(v110, v154);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v113, 1, a1);
  v69 = v171;
  if (EnumTagSinglePayload != 1)
  {
    v117 = v152;
    v118 = *(v152 + 32);
    v119 = v153;
    v118(v153, v113, a1);
    type metadata accessor for HeuristicRoutingRequest(0);
    sub_1DC32FD38();
    if (v120)
    {
      v121 = v69;
      v122 = sub_1DC517B9C();
      v123 = sub_1DC2BE518();
      v124 = v151;
      (*(v117 + 16))(v151, v119, a1);
      if (os_log_type_enabled(v123, v122))
      {
        v125 = swift_slowAlloc();
        v173 = swift_slowAlloc();
        *&v176 = v173;
        *v125 = 136315394;
        v126 = sub_1DC291244(v142, v141, &v176);

        *(v125 + 4) = v126;
        *(v125 + 12) = 2080;
        v127 = j___s16SiriMessageTypes017NLRoutingDecisionB0C07RoutingE0O13CDMFoundationE16debugDescriptionSSvg();
        v129 = v128;
        (*(v117 + 8))(v124, v174);
        v130 = sub_1DC291244(v127, v129, &v176);
        v131 = v171;

        *(v125 + 14) = v130;
        _os_log_impl(&dword_1DC287000, v123, v122, "In App: %s, matched an update without an entity request, rerouting to: %s", v125, 0x16u);
        v132 = v173;
        swift_arrayDestroy();
        MEMORY[0x1E1298840](v132, -1, -1);
        v133 = v125;
        a1 = v174;
        MEMORY[0x1E1298840](v133, -1, -1);

        OUTLINED_FUNCTION_0_17();
        OUTLINED_FUNCTION_9_18(v134, v135);
      }

      else
      {

        OUTLINED_FUNCTION_12_16();
        (*(v117 + 8))(v124, a1);
        OUTLINED_FUNCTION_0_17();
        OUTLINED_FUNCTION_9_18(v138, v139);
        v131 = v121;
      }

      v118(v131, v119, a1);
      v51 = v131;
      v52 = 0;
      goto LABEL_16;
    }

    (*(v117 + 8))(v119, a1);
LABEL_52:
    OUTLINED_FUNCTION_12_16();
    OUTLINED_FUNCTION_0_17();
    OUTLINED_FUNCTION_9_18(v136, v137);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_0_17();
  OUTLINED_FUNCTION_9_18(v115, v116);
  OUTLINED_FUNCTION_12_16();
LABEL_47:
  sub_1DC28EB30(v113, &qword_1ECC7CA40, &unk_1DC5233A0);
LABEL_15:
  v51 = v69;
  v52 = 1;
LABEL_16:
  v53 = a1;
LABEL_17:
  __swift_storeEnumTagSinglePayload(v51, v52, 1, v53);
  v70 = sub_1DC2BE518();
  v71 = v168;
  sub_1DC2B8848(v168, "HeuristicRules.PlannerUpdateRule", 32, 2, v70);

  return (*(v169 + 8))(v71, v170);
}

id sub_1DC4033A8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GraphExecutor();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_1DC403424()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GraphExecutor();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL sub_1DC403458(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DC51808C();

  return v2 != 0;
}

uint64_t sub_1DC4034C0()
{
  sub_1DC5182FC();
  sub_1DC51769C();
  return sub_1DC51833C();
}

uint64_t sub_1DC40353C(uint64_t a1)
{
  sub_1DC5182FC();
  sub_1DC51769C();
  return sub_1DC51833C();
}

BOOL sub_1DC403590@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DC403458(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1DC4035C4@<X0>(void *a1@<X8>)
{
  result = sub_1DC4034A0();
  *a1 = 0xD000000000000016;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DC4035F4()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 16);
  if (*(v2 + 16))
  {

    v3 = sub_1DC403878();
    if (v4)
    {
      v1 = *(*(v2 + 56) + 8 * v3);

      return v1;
    }
  }

  v5 = sub_1DC517BBC();
  sub_1DC297814();
  v6 = sub_1DC39902C();
  if (os_log_type_enabled(v6, v5))
  {
    v7 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v7 = 136315138;
    *(v7 + 4) = OUTLINED_FUNCTION_1_35(v21, v8);
    _os_log_impl(&dword_1DC287000, v6, v5, "Graph type %s not cached. Attempting to construct it.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_66();
  }

  v9 = type metadata accessor for GraphStore();
  sub_1DC403BD8(v9, v10, v11);
  v12 = swift_allocError();
  *v13 = 0xD000000000000015;
  v13[1] = 0x80000001DC546790;
  swift_willThrow();
  if (v12)
  {

    v14 = sub_1DC517BAC();
    v15 = sub_1DC39902C();
    if (os_log_type_enabled(v15, v14))
    {
      v16 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v16 = 136315138;
      *(v16 + 4) = OUTLINED_FUNCTION_1_35(v22, v17);
      _os_log_impl(&dword_1DC287000, v15, v14, "Graph store couldn't construct graph of type %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_66();
    }

    return 0;
  }

  else
  {
    swift_beginAccess();
    swift_retain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v1 + 16);
    sub_1DC403934(isUniquelyReferenced_nonNull_native, isUniquelyReferenced_nonNull_native);
    *(v1 + 16) = v20;
    swift_endAccess();
  }

  return v1;
}

uint64_t sub_1DC403878()
{
  sub_1DC5182FC();
  sub_1DC51769C();
  v0 = sub_1DC51833C();

  return sub_1DC403908(v0);
}

unint64_t sub_1DC403934(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1DC403878();
  if (__OFADD__(*(v5 + 16), (v7 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = v6;
  v9 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D7D0, qword_1DC529960);
  if ((sub_1DC517FFC() & 1) == 0)
  {
    goto LABEL_5;
  }

  v10 = sub_1DC403878();
  if ((v9 & 1) != (v11 & 1))
  {
LABEL_13:
    result = sub_1DC51829C();
    __break(1u);
    return result;
  }

  v8 = v10;
LABEL_5:
  v12 = *v3;
  if (v9)
  {
    *(*(v12 + 56) + 8 * v8) = a1;
  }

  else
  {

    return sub_1DC403B9C(v8, a1, v12);
  }
}

unint64_t sub_1DC403A40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC7D7C8;
  if (!qword_1ECC7D7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7D7C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GraphType(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_130();
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for GraphType(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DC403B9C(unint64_t result, uint64_t a2, uint64_t a3)
{
  *(a3 + 8 * (result >> 6) + 64) |= 1 << result;
  *(*(a3 + 56) + 8 * result) = a2;
  v3 = *(a3 + 16);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    *(a3 + 16) = v5;
  }

  return result;
}

unint64_t sub_1DC403BD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC7D7D8;
  if (!qword_1ECC7D7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7D7D8);
  }

  return result;
}

void *sub_1DC403C2C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_30();
  result = swift_allocObject();
  v5 = MEMORY[0x1E69E7CC0];
  result[3] = a2;
  result[4] = v5;
  result[2] = a1;
  return result;
}

void *sub_1DC403C70(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for GraphNode();
  swift_beginAccess();
  v4 = sub_1DC2C20B8(*(v2 + 32));
  v5 = sub_1DC4054A8(a1, v4);
  swift_beginAccess();

  MEMORY[0x1E12962A0](v6);
  sub_1DC301904(*((*(v2 + 32) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_1DC517A5C();
  swift_endAccess();
  return v5;
}

void *sub_1DC403D38()
{
  v2 = v0[2];
  v1 = v0[3];
  swift_beginAccess();
  v3 = v0[4];
  type metadata accessor for Graph();
  v4 = swift_allocObject();
  v4[2] = v2;
  v4[3] = v1;
  v4[4] = v3;

  return v4;
}

void *sub_1DC403DB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_5_30();
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

uint64_t sub_1DC403DF0()
{
  sub_1DC40504C();
  v0 = OUTLINED_FUNCTION_5_30();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

char *sub_1DC403E1C()
{
  v1 = *(v0 + 32);
  if (v1 >> 62)
  {
    v2 = sub_1DC51802C();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v9 = MEMORY[0x1E69E7CC0];
  result = sub_1DC405098(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v9;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v6 = *(MEMORY[0x1E1296800](v5, v1) + 24);
        swift_unknownObjectRelease();
      }

      else
      {
        v6 = *(*(v1 + 8 * v5 + 32) + 24);
      }

      v8 = *(v9 + 16);
      v7 = *(v9 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_1DC405098((v7 > 1), v8 + 1, 1);
      }

      ++v5;
      *(v9 + 16) = v8 + 1;
      *(v9 + 8 * v8 + 32) = v6;
    }

    while (v2 != v5);
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DC403F38(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return OUTLINED_FUNCTION_0_36();
}

uint64_t sub_1DC403F4C()
{
  v1 = (*(**(v0 + 32) + 96))();
  v2 = MEMORY[0x1E69E7CC0];
  v13 = MEMORY[0x1E69E7CC0];
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = *(*(v0 + 24) + 16);
    v5 = (v1 + 32);
    do
    {
      *(v0 + 16) = *v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D7E0, &unk_1DC529FF0);
      v6 = sub_1DC51777C();
      if (*(v4 + 16))
      {
        sub_1DC2AEB04(v6, v7);
        v9 = v8;

        if (v9)
        {
          v10 = swift_unknownObjectRetain();
          MEMORY[0x1E12962A0](v10);
          if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1DC517A3C();
          }

          sub_1DC517A5C();
          v2 = v13;
        }
      }

      else
      {
      }

      ++v5;
      --v3;
    }

    while (v3);
  }

  *(v0 + 40) = v2;
  type metadata accessor for GraphServiceUtils();
  v11 = swift_task_alloc();
  *(v0 + 48) = v11;
  *v11 = v0;
  OUTLINED_FUNCTION_5(v11);

  return sub_1DC40E014(v2);
}

uint64_t sub_1DC404130()
{
  OUTLINED_FUNCTION_1_0();
  v2 = v1;
  OUTLINED_FUNCTION_7_0();
  v3 = *v0;
  OUTLINED_FUNCTION_4_0();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t sub_1DC404238(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_36();
}

uint64_t sub_1DC40424C()
{
  v1 = *(v0[3] + 32);
  v2 = sub_1DC2C20B8(v1);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = v2;
    v18 = MEMORY[0x1E69E7CC0];
    v5 = sub_1DC517FBC();
    if (v4 < 0)
    {
      __break(1u);
      return MEMORY[0x1EEE6DD58](v5, v6, v7, v8, v9, v10, v11, v12);
    }

    type metadata accessor for GraphNodeRunner();
    v13 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1E1296800](v13, v1);
      }

      else
      {
      }

      ++v13;
      sub_1DC405BD8(v14);
      sub_1DC517F9C();
      sub_1DC517FCC();
      sub_1DC517FDC();
      sub_1DC517FAC();
    }

    while (v4 != v13);
    v3 = v18;
  }

  v0[4] = v3;
  v15 = v0[2];
  v16 = swift_task_alloc();
  v0[5] = v16;
  *(v16 + 16) = v3;
  *(v16 + 24) = v15;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_1DC40440C;
  v6 = MEMORY[0x1E69E7CA8] + 8;
  v10 = &unk_1DC529988;
  v7 = MEMORY[0x1E69E7CA8] + 8;
  v8 = 0;
  v9 = 0;
  v11 = v16;
  v12 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DD58](v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1DC40440C()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v5 = v4;
  *(v3 + 56) = v0;

  if (v0)
  {
    v6 = sub_1DC404544;
  }

  else
  {

    v6 = sub_1DC404520;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1DC404544()
{
  OUTLINED_FUNCTION_1_0();

  OUTLINED_FUNCTION_2_2();

  return v0();
}

uint64_t sub_1DC4045A8()
{
  OUTLINED_FUNCTION_1_0();
  v0[10] = v1;
  v0[11] = v2;
  v0[9] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D050, &qword_1DC523AC0);
  v0[12] = swift_task_alloc();
  v0[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DC404650, 0, 0);
}

uint64_t sub_1DC404650()
{
  result = sub_1DC2C20B8(*(v0 + 80));
  v21 = result;
  if (result)
  {
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v2 = 0;
    v3 = *(v0 + 80);
    v20 = **(v0 + 72);
    v19 = v3 & 0xC000000000000001;
    v18 = v3 + 32;
    do
    {
      if (v19)
      {
        v4 = MEMORY[0x1E1296800](v2, *(v0 + 80));
      }

      else
      {
        v4 = *(v18 + 8 * v2);
      }

      v6 = *(v0 + 96);
      v5 = *(v0 + 104);
      v7 = *(v0 + 80);
      v8 = *(v0 + 88);
      v9 = sub_1DC517AAC();
      __swift_storeEnumTagSinglePayload(v5, 1, 1, v9);
      v10 = swift_allocObject();
      v10[2] = 0;
      v10[3] = 0;
      v10[4] = v4;
      v10[5] = v8;
      v10[6] = v7;
      sub_1DC35B7A0(v5, v6);
      LODWORD(v6) = __swift_getEnumTagSinglePayload(v6, 1, v9);

      v11 = *(v0 + 96);
      if (v6 == 1)
      {
        sub_1DC40531C(*(v0 + 96));
      }

      else
      {
        sub_1DC517A9C();
        (*(*(v9 - 8) + 8))(v11, v9);
      }

      if (v10[2])
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v12 = sub_1DC517A7C();
        v14 = v13;
        swift_unknownObjectRelease();
      }

      else
      {
        v12 = 0;
        v14 = 0;
      }

      if (v14 | v12)
      {
        v15 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v12;
        *(v0 + 40) = v14;
      }

      else
      {
        v15 = 0;
      }

      ++v2;
      v16 = *(v0 + 104);
      *(v0 + 48) = 1;
      *(v0 + 56) = v15;
      *(v0 + 64) = v20;
      swift_task_create();

      sub_1DC40531C(v16);
    }

    while (v21 != v2);
  }

  v17 = swift_task_alloc();
  *(v0 + 112) = v17;
  *v17 = v0;
  v17[1] = sub_1DC404958;

  return sub_1DC404BA4(0, 0);
}

uint64_t sub_1DC404958()
{
  OUTLINED_FUNCTION_41_5();
  OUTLINED_FUNCTION_7_0();
  v1 = *v0;
  OUTLINED_FUNCTION_4_0();
  *v2 = v1;

  OUTLINED_FUNCTION_2_2();

  return v3();
}

uint64_t sub_1DC404A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = (*(*a4 + 136) + **(*a4 + 136));
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  OUTLINED_FUNCTION_5(v9);

  return v11(a5, a6);
}

uint64_t sub_1DC404BA4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  if (a1)
  {
    swift_getObjectType();
    v4 = sub_1DC517A7C();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v3[5] = v4;
  v3[6] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1DC404C44, v4, v6);
}

uint64_t sub_1DC404C44()
{
  OUTLINED_FUNCTION_1_0();
  *(v0 + 56) = **(v0 + 32);
  *(v0 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D060, qword_1DC526830);
  if (sub_1DC517B0C())
  {
    OUTLINED_FUNCTION_2_2();

    return v1();
  }

  else
  {
    *(v0 + 72) = 0;
    v3 = swift_task_alloc();
    *(v0 + 80) = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D7E8, &qword_1DC5299E0);
    OUTLINED_FUNCTION_6_26();
    *v3 = v4;
    v5 = OUTLINED_FUNCTION_0_52();

    return MEMORY[0x1EEE6DAC8](v5);
  }
}

uint64_t sub_1DC404D44()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v5 = v4;
  *(v3 + 88) = v0;

  if (v0)
  {
    v6 = *(v3 + 40);
    v7 = *(v3 + 48);
    v8 = sub_1DC404F48;
  }

  else
  {
    *(v3 + 97) = *(v3 + 96);
    v6 = *(v3 + 40);
    v7 = *(v3 + 48);
    v8 = sub_1DC404E50;
  }

  return MEMORY[0x1EEE6DFA0](v8, v6, v7);
}

uint64_t sub_1DC404E50()
{
  OUTLINED_FUNCTION_41_5();
  if (*(v0 + 97))
  {
    v1 = *(v0 + 72);
    if (sub_1DC517B0C())
    {
      if (v1)
      {
        swift_willThrow();
      }

      OUTLINED_FUNCTION_2_2();

      return v2();
    }

    *(v0 + 72) = v1;
  }

  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D7E8, &qword_1DC5299E0);
  OUTLINED_FUNCTION_6_26();
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_0_52();

  return MEMORY[0x1EEE6DAC8](v6);
}

uint64_t sub_1DC404F48()
{
  OUTLINED_FUNCTION_41_5();
  v1 = v0[11];
  if (v0[9])
  {

    v1 = v0[9];
  }

  if (sub_1DC517B0C())
  {
    if (v1)
    {
      swift_willThrow();
    }

    OUTLINED_FUNCTION_2_2();

    return v2();
  }

  else
  {
    v0[9] = v1;
    v4 = swift_task_alloc();
    v0[10] = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D7E8, &qword_1DC5299E0);
    OUTLINED_FUNCTION_6_26();
    *v4 = v5;
    v6 = OUTLINED_FUNCTION_0_52();

    return MEMORY[0x1EEE6DAC8](v6);
  }
}

uint64_t sub_1DC40504C()
{

  return v0;
}

char *sub_1DC405098(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DC4050B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1DC4050B8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D7F0, &qword_1DC5299E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

uint64_t sub_1DC4051B8()
{
  OUTLINED_FUNCTION_41_5();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_5(v1);

  return sub_1DC4045A8();
}

uint64_t sub_1DC40527C()
{
  OUTLINED_FUNCTION_41_5();
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v6 = OUTLINED_FUNCTION_5(v5);

  return sub_1DC404A78(v6, v7, v8, v2, v3, v4);
}

uint64_t sub_1DC40531C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D050, &qword_1DC523AC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DC405410(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
}

void *sub_1DC4054A8(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  v5 = MEMORY[0x1E69E7CC0];
  result[3] = a1;
  result[4] = v5;
  result[2] = a2;
  return result;
}

uint64_t sub_1DC4054F4()
{
  v1 = *(*v0 + 120);

  v2 = v1(v6);
  v4 = v3;
  MEMORY[0x1E12962A0]();
  sub_1DC301904(*((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_1DC517A5C();
  return v2(v6, 0);
}

uint64_t sub_1DC40559C(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;

  return MEMORY[0x1EEE6DFA0](sub_1DC40562C, 0, 0);
}

uint64_t sub_1DC40562C(uint64_t a1)
{
  v31 = v1;
  v30 = *MEMORY[0x1E69E9840];
  v2 = sub_1DC517B8C();
  sub_1DC297814();
  v3 = sub_1DC39902C();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v28 = v5;
    *v4 = 136315138;
    v6 = sub_1DC5183EC();
    v8 = sub_1DC291244(v6, v7, &v28);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1DC287000, v3, v2, "Running graph node with service %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x1E1298840](v5, -1, -1);
    MEMORY[0x1E1298840](v4, -1, -1);
  }

  v9 = *(v1[3] + 16);
  v1[2] = *(v1[4] + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D7E0, &unk_1DC529FF0);
  v10 = sub_1DC51777C();
  v12 = sub_1DC2A5614(v10, v11, v9);

  if (v12)
  {
    v1[2] = 0;
    v13 = [v12 runAndReturnError_];
    v14 = v1[2];
    if (v13)
    {
      v15 = v14;
      swift_unknownObjectRelease();
      v16 = v1[1];
      goto LABEL_9;
    }

    v26 = v14;
    sub_1DC51085C();

    swift_willThrow();
    swift_unknownObjectRelease();
  }

  else
  {
    v28 = 0;
    v29 = 0xE000000000000000;
    sub_1DC517F4C();
    v17 = sub_1DC5183EC();
    v19 = v18;

    v28 = v17;
    v29 = v19;
    v20 = MEMORY[0x1E1296160](0xD00000000000002BLL, 0x80000001DC546880);
    v21 = v28;
    v22 = v29;
    sub_1DC405A88(v20, v23, v24);
    swift_allocError();
    *v25 = v21;
    v25[1] = v22;
    swift_willThrow();
  }

  v16 = v1[1];
LABEL_9:

  return v16();
}

uint64_t sub_1DC405934()
{
  sub_1DC5182FC();
  (*(*v0 + 152))(v2);
  return sub_1DC51833C();
}

uint64_t sub_1DC405A0C(uint64_t a1)
{
  sub_1DC5182FC();
  OUTLINED_FUNCTION_28();
  (*(v1 + 152))(v3);
  return sub_1DC51833C();
}

unint64_t sub_1DC405A88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC7D7F8;
  if (!qword_1ECC7D7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7D7F8);
  }

  return result;
}

unint64_t sub_1DC405AE0()
{
  result = qword_1ECC7BB90;
  if (!qword_1ECC7BB90)
  {
    type metadata accessor for GraphNode();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7BB90);
  }

  return result;
}

uint64_t sub_1DC405B90(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 120) = a1;
}

uint64_t sub_1DC405BD8(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1DC405C18(a1);
  return v2;
}

uint64_t sub_1DC405C18(uint64_t a1)
{
  swift_defaultActor_initialize();
  *(v1 + 112) = a1;
  *(v1 + 120) = 0;
  return v1;
}

uint64_t sub_1DC405C48()
{
  OUTLINED_FUNCTION_1_0();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D050, &qword_1DC523AC0);
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DC405CE4, v0, 0);
}

uint64_t sub_1DC405CE4()
{
  OUTLINED_FUNCTION_12_0();
  v2 = (*(v1 + 104))();
  if (!v2)
  {
    v3 = v0[4];
    v4 = v0[5];
    v6 = v0[2];
    v5 = v0[3];
    v7 = sub_1DC517AAC();
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v7);
    v8 = sub_1DC40652C();
    v9 = swift_allocObject();
    v9[2] = v3;
    v9[3] = v8;
    v9[4] = v3;
    v9[5] = v5;
    v9[6] = v6;
    swift_retain_n();

    v2 = sub_1DC36C014(0, 0, v4, &unk_1DC529AE8, v9);
  }

  v0[6] = v2;
  OUTLINED_FUNCTION_12_0();
  v11 = *(v10 + 112);

  v11(v12);
  sub_1DC40652C();
  v13 = swift_task_alloc();
  v0[7] = v13;
  *v13 = v0;
  v13[1] = sub_1DC405EB8;

  return MEMORY[0x1EEE6DE18]();
}

uint64_t sub_1DC405EB8()
{
  OUTLINED_FUNCTION_41_5();
  v2 = *v1;
  OUTLINED_FUNCTION_10_18();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 64) = v0;

  v5 = *(v2 + 32);
  if (v0)
  {
    v6 = sub_1DC40603C;
  }

  else
  {
    v6 = sub_1DC405FD8;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1DC405FD8()
{
  OUTLINED_FUNCTION_1_0();

  OUTLINED_FUNCTION_2_2();

  return v0();
}

uint64_t sub_1DC40603C()
{
  OUTLINED_FUNCTION_1_0();

  OUTLINED_FUNCTION_2_2();

  return v0();
}

uint64_t sub_1DC4060A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1DC4060C4, a4, 0);
}

uint64_t sub_1DC4060C4(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = sub_1DC40652C();
  v4 = swift_task_alloc();
  *(v1 + 40) = v4;
  v10 = *(v1 + 16);
  *(v4 + 16) = v10;
  *(v4 + 32) = v2;
  v5 = swift_task_alloc();
  *(v1 + 48) = v5;
  *v5 = v1;
  v5[1] = sub_1DC4061C8;
  v6 = MEMORY[0x1E69E7CA8] + 8;
  v7 = MEMORY[0x1E69E7CA8] + 8;
  v8 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DD58](v5, v6, v7, v10, v3, &unk_1DC529BD8, v4, v8);
}

uint64_t sub_1DC4061C8()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  v3 = v2;
  OUTLINED_FUNCTION_10_18();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    v7 = *(v3 + 16);
    v8 = sub_1DC4064D0;
  }

  else
  {
    v9 = *(v3 + 16);

    v8 = sub_1DC4062D8;
    v7 = v9;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, 0);
}

uint64_t sub_1DC4062D8()
{
  OUTLINED_FUNCTION_41_5();
  OUTLINED_FUNCTION_12_0();
  v5 = (*(v1 + 144) + **(v1 + 144));
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_1DC4063F0;
  v3 = *(v0 + 32);

  return v5(v3);
}

uint64_t sub_1DC4063F0()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  v1 = *v0;
  OUTLINED_FUNCTION_4_0();
  *v2 = v1;

  OUTLINED_FUNCTION_2_2();

  return v3();
}

uint64_t sub_1DC4064D0()
{
  OUTLINED_FUNCTION_1_0();

  OUTLINED_FUNCTION_2_2();

  return v0();
}

unint64_t sub_1DC40652C()
{
  result = qword_1ECC7D800;
  if (!qword_1ECC7D800)
  {
    type metadata accessor for GraphNodeRunner();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7D800);
  }

  return result;
}

uint64_t sub_1DC4065A4()
{
  OUTLINED_FUNCTION_41_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_33_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_7_24(v1);

  return sub_1DC4060A0(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1DC406634()
{
  OUTLINED_FUNCTION_1_0();
  v2 = v1;
  v0[12] = v3;
  v0[13] = v4;
  v0[10] = v5;
  v0[11] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D050, &qword_1DC523AC0);
  v0[14] = swift_task_alloc();
  v0[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DC4066E0, v2, 0);
}

unint64_t sub_1DC4066E0()
{
  v1 = *(v0 + 96);
  OUTLINED_FUNCTION_12_0();
  v3 = (*(v2 + 104))();
  result = sub_1DC2C20B8(v3);
  v5 = 0;
  v38 = v3 & 0xC000000000000001;
  v39 = result;
  v40 = v3;
  v6 = v3 & 0xFFFFFFFFFFFFFF8;
  v7 = v1 & 0xFFFFFFFFFFFFFF8;
  v34 = v1 & 0xFFFFFFFFFFFFFF8;
  v35 = v1 & 0xC000000000000001;
  v33 = v1 + 32;
  v36 = v1 >> 62;
  v37 = v6;
  while (v39 != v5)
  {
    if (v38)
    {
      result = MEMORY[0x1E1296800](v5, v40);
      v8 = result;
    }

    else
    {
      if (v5 >= *(v37 + 16))
      {
        goto LABEL_35;
      }

      v8 = *(v40 + 8 * v5 + 32);
    }

    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      return result;
    }

    if (v36)
    {
      result = sub_1DC51802C();
      if ((result & 0x8000000000000000) != 0)
      {
        goto LABEL_36;
      }

      v9 = result;
    }

    else
    {
      v9 = *(v7 + 16);
    }

    result = *(v8 + 16);
    if ((result & 0x8000000000000000) != 0 || result >= v9)
    {

      sub_1DC517F4C();

      *(v0 + 72) = *(v8 + 16);
      v27 = sub_1DC51823C();
      MEMORY[0x1E1296160](v27);

      sub_1DC405A88(v28, v29, v30);
      swift_allocError();
      *v31 = 0x2064696C61766E49;
      v31[1] = 0xEF20644965646F6ELL;
      swift_willThrow();

      OUTLINED_FUNCTION_2_2();

      return v32();
    }

    if (v35)
    {
      v10 = MEMORY[0x1E1296800]();
    }

    else
    {
      if (result >= *(v7 + 16))
      {
        goto LABEL_37;
      }

      v10 = *(v33 + 8 * result);
    }

    v12 = *(v0 + 112);
    v11 = *(v0 + 120);
    v13 = *(v0 + 96);
    v14 = *(v0 + 104);
    v15 = sub_1DC517AAC();
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = v10;
    v16[5] = v14;
    v16[6] = v13;
    sub_1DC35B7A0(v11, v12);
    LODWORD(v12) = __swift_getEnumTagSinglePayload(v12, 1, v15);

    v17 = *(v0 + 112);
    if (v12 == 1)
    {
      sub_1DC40531C(*(v0 + 112));
    }

    else
    {
      sub_1DC517A9C();
      (*(*(v15 - 8) + 8))(v17, v15);
    }

    if (v16[2])
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v18 = sub_1DC517A7C();
      v20 = v19;
      swift_unknownObjectRelease();
    }

    else
    {
      v18 = 0;
      v20 = 0;
    }

    v21 = **(v0 + 80);

    if (v20 | v18)
    {
      v22 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v18;
      *(v0 + 40) = v20;
    }

    else
    {
      v22 = 0;
    }

    v23 = *(v0 + 120);
    *(v0 + 48) = 1;
    *(v0 + 56) = v22;
    *(v0 + 64) = v21;
    swift_task_create();

    result = sub_1DC40531C(v23);
    ++v5;
    v7 = v34;
  }

  v24 = *(v0 + 88);

  v25 = sub_1DC40652C();
  v26 = swift_task_alloc();
  *(v0 + 128) = v26;
  *v26 = v0;
  v26[1] = sub_1DC406BD4;

  return sub_1DC404BA4(v24, v25);
}

uint64_t sub_1DC406BD4()
{
  OUTLINED_FUNCTION_41_5();
  v1 = *v0;
  OUTLINED_FUNCTION_4_0();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1DC406CFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = (*(*a4 + 136) + **(*a4 + 136));
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_33_0(v8);
  *v9 = v10;
  v9[1] = sub_1DC29F120;

  return v12(a5, a6);
}

uint64_t sub_1DC406E28()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  v3 = v2;
  OUTLINED_FUNCTION_10_18();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (v0)
  {
    v7 = *(v3 + 40);
    v8 = *(v3 + 48);
    v9 = sub_1DC407024;
  }

  else
  {
    *(v3 + 97) = *(v3 + 96);
    v7 = *(v3 + 40);
    v8 = *(v3 + 48);
    v9 = sub_1DC406F2C;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1DC406F2C()
{
  OUTLINED_FUNCTION_41_5();
  if (*(v0 + 97))
  {
    v1 = *(v0 + 72);
    if (sub_1DC517B0C())
    {
      if (v1)
      {
        swift_willThrow();
      }

      OUTLINED_FUNCTION_2_2();

      return v2();
    }

    *(v0 + 72) = v1;
  }

  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D7E8, &qword_1DC5299E0);
  OUTLINED_FUNCTION_6_26();
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_0_53();

  return MEMORY[0x1EEE6DAC8](v6);
}

uint64_t sub_1DC407024()
{
  OUTLINED_FUNCTION_41_5();
  v1 = v0[11];
  if (v0[9])
  {

    v1 = v0[9];
  }

  if (sub_1DC517B0C())
  {
    if (v1)
    {
      swift_willThrow();
    }

    OUTLINED_FUNCTION_2_2();

    return v2();
  }

  else
  {
    v0[9] = v1;
    v4 = swift_task_alloc();
    v0[10] = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D7E8, &qword_1DC5299E0);
    OUTLINED_FUNCTION_6_26();
    *v4 = v5;
    v6 = OUTLINED_FUNCTION_0_53();

    return MEMORY[0x1EEE6DAC8](v6);
  }
}

uint64_t sub_1DC407128()
{
  OUTLINED_FUNCTION_41_5();
  v2 = v1;
  v4 = v3;
  v5 = swift_task_alloc();
  *(v0 + 16) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D060, qword_1DC526830);
  *v5 = v0;
  v5[1] = sub_1DC29F200;
  v7 = MEMORY[0x1E69E7288];
  v8 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DA10](v4, v2, v8, v6, v7);
}

uint64_t sub_1DC4071FC()
{
  OUTLINED_FUNCTION_1_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_33_0(v0);
  *v1 = v2;
  v1[1] = sub_1DC29F200;

  return sub_1DC407128();
}

uint64_t sub_1DC407290()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D060, qword_1DC526830);

  return sub_1DC517ACC();
}

uint64_t sub_1DC4072E4()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1DC407314()
{
  sub_1DC4072E4();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1DC407350()
{
  OUTLINED_FUNCTION_41_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_33_0(v0);
  *v1 = v2;
  v1[1] = sub_1DC29F200;

  return sub_1DC406634();
}

uint64_t sub_1DC4073F8()
{
  OUTLINED_FUNCTION_41_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_33_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_7_24(v1);

  return sub_1DC406CFC(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1DC407488()
{
  sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  result = sub_1DC517D7C();
  qword_1ECC8F608 = result;
  return result;
}

void sub_1DC407560(uint64_t a1)
{
  v1 = sub_1DC517C6C();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v34 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v34 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v34 - v14;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    v18 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0x60))();

    if (v18)
    {
      swift_getObjectType();
      sub_1DC517D2C();
      swift_unknownObjectRelease();
      (*(v3 + 32))(v15, v13, v1);
      (*(v3 + 16))(v10, v15, v1);
      sub_1DC517C4C();
      sub_1DC2A6184(&unk_1ECC7B978, MEMORY[0x1E69E80E0], MEMORY[0x1E69E80E8]);
      v19 = OUTLINED_FUNCTION_5_31();
      v20 = *(v3 + 8);
      v20(v7, v1);
      if (v19)
      {
        v21 = OUTLINED_FUNCTION_30_6();
        (v20)(v21);
        if (qword_1ECC82D80 != -1)
        {
          OUTLINED_FUNCTION_0_54(&qword_1ECC82D80);
        }

        v22 = qword_1ECC8F608;
        v23 = sub_1DC517B8C();
        sub_1DC516EFC("Memory pressure reached warning state", 37, 2, &dword_1DC287000, v22, v23, MEMORY[0x1E69E7CC0]);
      }

      else
      {
        sub_1DC517C5C();
        v24 = OUTLINED_FUNCTION_5_31();
        v20(v7, v1);
        if (v24)
        {
          v25 = OUTLINED_FUNCTION_30_6();
          (v20)(v25);
          if (qword_1ECC82D80 != -1)
          {
            OUTLINED_FUNCTION_0_54(&qword_1ECC82D80);
          }

          v26 = qword_1ECC8F608;
          v27 = sub_1DC517B8C();
          sub_1DC516EFC("Memory pressure reached critical state", 38, 2, &dword_1DC287000, v26, v27, MEMORY[0x1E69E7CC0]);
        }

        else
        {
          sub_1DC517C3C();
          v28 = OUTLINED_FUNCTION_5_31();
          v20(v7, v1);
          v29 = OUTLINED_FUNCTION_30_6();
          (v20)(v29);
          if (v28)
          {
            if (qword_1ECC82D80 != -1)
            {
              OUTLINED_FUNCTION_0_54(&qword_1ECC82D80);
            }

            v30 = qword_1ECC8F608;
            v31 = sub_1DC517B8C();
            sub_1DC516EFC("Memory pressure reached normal state", 36, 2, &dword_1DC287000, v30, v31, MEMORY[0x1E69E7CC0]);
          }

          else
          {
            if (qword_1ECC82D80 != -1)
            {
              OUTLINED_FUNCTION_0_54(&qword_1ECC82D80);
            }

            v32 = qword_1ECC8F608;
            v33 = sub_1DC517B9C();
            sub_1DC516EFC("Got an unknown memory pressure event", 36, 2, &dword_1DC287000, v32, v33, MEMORY[0x1E69E7CC0]);
          }
        }
      }

      v20(v15, v1);
    }
  }
}

void sub_1DC407954()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v252 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB90, &unk_1DC524420);
  OUTLINED_FUNCTION_10(v3);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_25();
  v233 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D3D0, &qword_1DC529550);
  OUTLINED_FUNCTION_10(v6);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_25();
  v232 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D8F0, &unk_1DC529C20);
  OUTLINED_FUNCTION_10(v9);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_25();
  v235 = v11;
  OUTLINED_FUNCTION_12();
  v234 = sub_1DC5157CC();
  OUTLINED_FUNCTION_0();
  v231 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1();
  v230 = v15 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF08, &unk_1DC522330);
  OUTLINED_FUNCTION_10(v16);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_25();
  v241 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF00, &unk_1DC529C30);
  v20 = OUTLINED_FUNCTION_10(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_8();
  v239 = v21 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v238 = &v222 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD0, &unk_1DC522550);
  OUTLINED_FUNCTION_10(v25);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v222 - v27;
  v29 = type metadata accessor for NLRouterTurnContext(0);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_1();
  v240 = v32 - v31;
  OUTLINED_FUNCTION_12();
  sub_1DC51587C();
  OUTLINED_FUNCTION_0();
  v242 = v34;
  v243 = v33;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_8();
  v237 = v35 - v36;
  v38 = MEMORY[0x1EEE9AC00](v37);
  v236 = &v222 - v39;
  MEMORY[0x1EEE9AC00](v38);
  v244 = &v222 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB20, &unk_1DC529C40);
  OUTLINED_FUNCTION_10(v41);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v222 - v43;
  v247 = sub_1DC51588C();
  OUTLINED_FUNCTION_0();
  v245 = v45;
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_8();
  v49 = (v47 - v48);
  MEMORY[0x1EEE9AC00](v50);
  v246 = &v222 - v51;
  OUTLINED_FUNCTION_12();
  v52 = sub_1DC5157EC();
  OUTLINED_FUNCTION_0();
  v248 = v53;
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_1();
  v57 = (v56 - v55);
  sub_1DC516F5C();
  OUTLINED_FUNCTION_0();
  v250 = v59;
  v251 = v58;
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_1();
  v62 = v61 - v60;
  sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v63 = sub_1DC2BE518();
  v64 = OUTLINED_FUNCTION_130();
  v249 = v62;
  sub_1DC2A2ED0("HeuristicRules.TwoStepCorrectionsRule", 37, 2, v63, v64 & 1, v62);

  sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
  if ((sub_1DC346830() & 1) == 0)
  {
    sub_1DC517B9C();
    v74 = OUTLINED_FUNCTION_31_4();
    v75 = OUTLINED_FUNCTION_40_1();
    sub_1DC516F0C(v75, v76, v77, v78, 36, 2);

    goto LABEL_8;
  }

  v229 = type metadata accessor for HeuristicRoutingRequest(0);
  v65 = *(v229 + 20);
  sub_1DC32C260();
  if ((v66 & 1) == 0)
  {
LABEL_8:
    OUTLINED_FUNCTION_19();
    v82 = v52;
LABEL_9:
    __swift_storeEnumTagSinglePayload(v79, v80, v81, v82);
    goto LABEL_10;
  }

  v67 = v248;
  v68 = *(v248 + 16);
  v228 = v1;
  v68(v57, v1 + v65, v52);
  v69 = (*(v67 + 88))(v57, v52);
  if (v69 != *MEMORY[0x1E69D02C8])
  {
    (*(v67 + 8))(v57, v52);
    goto LABEL_8;
  }

  v70 = v69;
  v71 = *(v67 + 96);
  v227 = v52;
  v71(v57, v52);
  sub_1DC408B88(*v57, v44);

  v72 = v247;
  OUTLINED_FUNCTION_39(v44, 1, v247);
  if (v73)
  {
    sub_1DC28EB30(v44, &qword_1ECC7CB20, &unk_1DC529C40);
    v52 = v227;
    goto LABEL_8;
  }

  v85 = v245;
  v86 = v246;
  (*(v245 + 32))();
  sub_1DC32B814();
  if (v87)
  {
    v88 = sub_1DC517B9C();
    v89 = sub_1DC2BE518();
    sub_1DC516F0C(v88, &dword_1DC287000, v89, "[TwoStepCorrectionsRule] retry statement also has undo! Discarding rewrite.", 75, 2, MEMORY[0x1E69E7CC0]);

    v90 = v252;
    sub_1DC32CDF4();
    (*(v85 + 8))(v86, v72);
    v79 = v90;
    v80 = 0;
LABEL_14:
    v81 = 1;
    v82 = v227;
    goto LABEL_9;
  }

  (*(v85 + 16))(v49, v86, v72);
  v91 = (*(v85 + 88))(v49, v72);
  v92 = v91;
  if (v91 == *MEMORY[0x1E69D0330])
  {
    v224 = v91;
    v225 = v70;
    (*(v85 + 96))(v49, v72);
    v93 = v242;
    v94 = v243;
    v95 = *(v242 + 32);
    v223 = (v242 + 32);
    v222 = v95;
    v95(v244, v49, v243);
    type metadata accessor for NLRouterBypassUtils();
    v96 = v72;
    v97 = type metadata accessor for NLRouterServiceRequest(0);
    v98 = v228;
    v226 = *(v228 + *(v97 + 24));
    if (sub_1DC307DE8(v226))
    {
      v99 = sub_1DC517B9C();
      v100 = sub_1DC2BE518();
      sub_1DC516F0C(v99, &dword_1DC287000, v100, "[TwoStepCorrectionsRule] detected triggerless followup, falling back to siri x", 78, 2, MEMORY[0x1E69E7CC0]);

      v102 = *(v93 + 8);
      v101 = v93 + 8;
      v102(v244, v94);
      (*(v85 + 8))(v246, v96);
      OUTLINED_FUNCTION_21_16();
      OUTLINED_FUNCTION_12_24();
      v103();
LABEL_18:
      OUTLINED_FUNCTION_61();
      v82 = v101;
      goto LABEL_9;
    }

    sub_1DC28F358(v98 + *(v97 + 20), v28, &qword_1ECC7BFD0, &unk_1DC522550);
    OUTLINED_FUNCTION_39(v28, 1, v29);
    if (v73)
    {
      sub_1DC28EB30(v28, &qword_1ECC7BFD0, &unk_1DC522550);
      v112 = v252;
      v113 = v247;
      v114 = v244;
    }

    else
    {
      OUTLINED_FUNCTION_5_32();
      v115 = v240;
      sub_1DC40A8F4(v28, v240, v116);
      sub_1DC309850();
      v113 = v247;
      v114 = v244;
      if (v117)
      {
        sub_1DC517B9C();
        v118 = OUTLINED_FUNCTION_31_4();
        v119 = OUTLINED_FUNCTION_40_1();
        sub_1DC516F0C(v119, v120, v121, v122, 63, 2);

        OUTLINED_FUNCTION_2_33();
        sub_1DC40AA38(v115, v123);
        (*(v93 + 8))(v114, v243);
        (*(v85 + 8))(v246, v113);
LABEL_28:
        v79 = v252;
LABEL_45:
        v80 = 1;
        goto LABEL_14;
      }

      OUTLINED_FUNCTION_2_33();
      sub_1DC40AA38(v115, v124);
      v112 = v252;
    }

    sub_1DC408C50();
    if (v125 & 1) != 0 && ((sub_1DC408F2C(), (v126) || (sub_1DC409574(), (v127)))
    {
      sub_1DC51582C();
      v129 = v128;
      v130 = *MEMORY[0x1E69D0320];
      v131 = sub_1DC5157FC();
      OUTLINED_FUNCTION_35();
      v133 = v241;
      (*(v132 + 104))(v241, v130, v131);
      OUTLINED_FUNCTION_61();
      v137 = __swift_storeEnumTagSinglePayload(v134, v135, v136, v131);
      MEMORY[0x1EEE9AC00](v137);
      OUTLINED_FUNCTION_26_17();
      *(v138 - 16) = v133;
      v139 = v238;
      sub_1DC51583C();

      sub_1DC28EB30(v133, &qword_1ECC7BF08, &unk_1DC522330);
      v140 = v243;
      OUTLINED_FUNCTION_39(v139, 1, v243);
      if (!v73)
      {
        v207 = v112;
        v208 = v236;
        OUTLINED_FUNCTION_210();
        v209();
        v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFA8, &unk_1DC5224D0);
        v101 = OUTLINED_FUNCTION_15_18(v210);
        *(v101 + 16) = xmmword_1DC522F20;
        v211 = v242;
        (*(v242 + 16))(v101 + v129, v208, v140);
        v212 = OUTLINED_FUNCTION_14_15();
        v213(v212);
        v214 = *(v211 + 8);
        v214(v208, v140);
        v214(v114, v140);
        v223(v246, v113);
        *v207 = v101;
        OUTLINED_FUNCTION_21_16();
        OUTLINED_FUNCTION_12_24();
        v215();
        goto LABEL_18;
      }

      sub_1DC28EB30(v139, &qword_1ECC7BF00, &unk_1DC529C30);
      sub_1DC517BAC();
      v141 = OUTLINED_FUNCTION_31_4();
      v142 = OUTLINED_FUNCTION_40_1();
      sub_1DC516F0C(v142, v143, v144, v145, 87, 2);

      v146 = OUTLINED_FUNCTION_11_28();
      v147(v146, v140);
      (*(v245 + 8))(v246, v113);
    }

    else
    {
      if (sub_1DC308358(v226))
      {
        sub_1DC409CB8();
        if (v148)
        {
          v149 = sub_1DC51582C();
          v151 = v150;
          sub_1DC51589C();
          v152 = v232;
          OUTLINED_FUNCTION_19();
          __swift_storeEnumTagSinglePayload(v153, v154, v155, v156);
          v157 = *MEMORY[0x1E69D0388];
          v158 = sub_1DC51592C();
          OUTLINED_FUNCTION_35();
          v160 = v233;
          (*(v159 + 104))(v233, v157, v158);
          OUTLINED_FUNCTION_61();
          v164 = __swift_storeEnumTagSinglePayload(v161, v162, v163, v158);
          MEMORY[0x1EEE9AC00](v164);
          *(&v222 - 4) = v149;
          *(&v222 - 3) = v151;
          *(&v222 - 2) = v152;
          *(&v222 - 1) = v160;
          sub_1DC40A364();
          v166 = v234;
          v165 = v235;
          sub_1DC51501C();

          OUTLINED_FUNCTION_61();
          __swift_storeEnumTagSinglePayload(v167, v168, v169, v166);
          sub_1DC28EB30(v160, &qword_1ECC7CB90, &unk_1DC524420);
          sub_1DC28EB30(v152, &unk_1ECC7D3D0, &qword_1DC529550);
          OUTLINED_FUNCTION_39(v165, 1, v166);
          v170 = v243;
          if (!v73)
          {
            v216 = OUTLINED_FUNCTION_11_28();
            v217(v216, v170);
            v218 = OUTLINED_FUNCTION_32_14();
            v219(v218);
            v101 = *(v231 + 32);
            v220 = v230;
            (v101)(v230, v165, v166);
            (v101)(v252, v220, v166);
            OUTLINED_FUNCTION_21_16();
            OUTLINED_FUNCTION_12_24();
            v221();
            goto LABEL_18;
          }

          sub_1DC28EB30(v165, &qword_1ECC7D8F0, &unk_1DC529C20);
          sub_1DC517BAC();
          v171 = OUTLINED_FUNCTION_31_4();
          v172 = OUTLINED_FUNCTION_40_1();
          sub_1DC516F0C(v172, v173, v174, v175, 97, 2);

          v176 = OUTLINED_FUNCTION_11_28();
          v177(v176, v170);
          v178 = OUTLINED_FUNCTION_32_14();
          v179(v178);
          goto LABEL_28;
        }
      }

      sub_1DC51582C();
      v181 = v180;
      sub_1DC5157FC();
      v182 = v241;
      OUTLINED_FUNCTION_19();
      v187 = __swift_storeEnumTagSinglePayload(v183, v184, v185, v186);
      MEMORY[0x1EEE9AC00](v187);
      OUTLINED_FUNCTION_26_17();
      *(v188 - 16) = v182;
      v189 = v239;
      sub_1DC51583C();

      sub_1DC28EB30(v182, &qword_1ECC7BF08, &unk_1DC522330);
      v190 = v243;
      OUTLINED_FUNCTION_39(v189, 1, v243);
      v191 = v246;
      if (!v73)
      {
        v199 = v237;
        OUTLINED_FUNCTION_210();
        v200();
        v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFA8, &unk_1DC5224D0);
        v101 = OUTLINED_FUNCTION_15_18(v201);
        *(v101 + 16) = xmmword_1DC522F20;
        v202 = v242;
        (*(v242 + 16))(v101 + v181, v199, v190);
        v203 = OUTLINED_FUNCTION_14_15();
        v204(v203);
        v205 = *(v202 + 8);
        v205(v199, v190);
        v205(v244, v190);
        v223(v191, v113);
        *v112 = v101;
        OUTLINED_FUNCTION_21_16();
        OUTLINED_FUNCTION_12_24();
        v206();
        goto LABEL_18;
      }

      sub_1DC28EB30(v189, &qword_1ECC7BF00, &unk_1DC529C30);
      sub_1DC517BAC();
      v192 = OUTLINED_FUNCTION_31_4();
      v193 = OUTLINED_FUNCTION_40_1();
      sub_1DC516F0C(v193, v194, v195, v196, 58, 2);

      v197 = OUTLINED_FUNCTION_11_28();
      v198(v197, v190);
      (*(v245 + 8))(v191, v113);
    }

    v79 = v112;
    goto LABEL_45;
  }

  v104 = *MEMORY[0x1E69D0340];
  v105 = *(v85 + 8);
  v105(v86, v72);
  if (v92 == v104)
  {
    OUTLINED_FUNCTION_21_16();
    v106 = v227;
    v107(v252);
    OUTLINED_FUNCTION_61();
    v111 = v106;
  }

  else
  {
    OUTLINED_FUNCTION_19();
    v111 = v227;
  }

  __swift_storeEnumTagSinglePayload(v108, v109, v110, v111);
  v105(v49, v72);
LABEL_10:
  v83 = sub_1DC2BE518();
  v84 = v249;
  sub_1DC2B8848(v249, "HeuristicRules.TwoStepCorrectionsRule", 37, 2, v83);

  (*(v250 + 8))(v84, v251);
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC408B88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = v3 - 1;
    v6 = sub_1DC51588C();
    (*(*(v6 - 8) + 16))(a2, a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v5, v6);
    v7 = a2;
    v8 = 0;
    v9 = v6;
  }

  else
  {
    v9 = sub_1DC51588C();
    v7 = a2;
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v7, v8, 1, v9);
}

void sub_1DC408C50()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C890, &qword_1DC5234B0);
  OUTLINED_FUNCTION_10(v6);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_56_2();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD0, &unk_1DC522550);
  OUTLINED_FUNCTION_10(v8);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v35 - v10;
  v12 = type metadata accessor for NLRouterTurnContext(0);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1();
  v14 = OUTLINED_FUNCTION_40();
  v15 = type metadata accessor for NLRouterServiceRequest(v14);
  sub_1DC28F358(v5 + *(v15 + 20), v11, &qword_1ECC7BFD0, &unk_1DC522550);
  OUTLINED_FUNCTION_39(v11, 1, v12);
  if (v31)
  {
    sub_1DC28EB30(v11, &qword_1ECC7BFD0, &unk_1DC522550);
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_5_32();
  sub_1DC40A8F4(v11, v1, v16);
  type metadata accessor for NLRouterBypassUtils();
  sub_1DC40A568(*(v1 + 8), v0);
  v17 = sub_1DC307F68(v0);
  sub_1DC28EB30(v0, &qword_1ECC7C890, &qword_1DC5234B0);
  OUTLINED_FUNCTION_2_33();
  sub_1DC40AA38(v1, v18);
  if (v17)
  {
    v19 = *(v3 + 16);
    v20 = (v3 + 56);
    if (!v19)
    {
      goto LABEL_19;
    }

    while (1)
    {
      v36 = v19;
      v22 = *(v20 - 3);
      v21 = *(v20 - 2);
      v24 = *(v20 - 1);
      v23 = *v20;
      swift_bridgeObjectRetain_n();
      OUTLINED_FUNCTION_31_16();
      swift_bridgeObjectRetain_n();
      v25 = sub_1DC514F0C();
      v27 = v26;
      v28 = sub_1DC514F1C();
      v30 = v29;
      v31 = v22 == v25 && v21 == v27;
      if (v31)
      {
      }

      else
      {
        v32 = sub_1DC51825C();

        if ((v32 & 1) == 0)
        {

          OUTLINED_FUNCTION_31_16();
          swift_bridgeObjectRelease_n();

          goto LABEL_18;
        }
      }

      if (v24 == v28 && v23 == v30)
      {

        OUTLINED_FUNCTION_31_16();
        swift_bridgeObjectRelease_n();

LABEL_19:

        break;
      }

      v34 = sub_1DC51825C();

      OUTLINED_FUNCTION_31_16();
      swift_bridgeObjectRelease_n();

      if (v34)
      {
        goto LABEL_19;
      }

LABEL_18:
      v20 += 4;
      v19 = v36 - 1;
      if (v36 == 1)
      {
        goto LABEL_19;
      }
    }
  }

LABEL_20:
  OUTLINED_FUNCTION_34();
}

void sub_1DC408F2C()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v83 = sub_1DC510FDC();
  OUTLINED_FUNCTION_0();
  v78 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  v82 = v7 - v6;
  OUTLINED_FUNCTION_12();
  v81 = sub_1DC51179C();
  OUTLINED_FUNCTION_0();
  v79 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  v80 = v11 - v10;
  OUTLINED_FUNCTION_12();
  sub_1DC51164C();
  OUTLINED_FUNCTION_0();
  v85 = v12;
  v86 = v13;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1();
  v16 = v15 - v14;
  v17 = sub_1DC51122C();
  OUTLINED_FUNCTION_0();
  v76 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_1();
  v22 = v21 - v20;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C158, &unk_1DC5234A0);
  OUTLINED_FUNCTION_10(v23);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v66 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C160, qword_1DC5233B0);
  OUTLINED_FUNCTION_10(v27);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v28);
  v29 = OUTLINED_FUNCTION_35_13();
  v30 = type metadata accessor for NLRouterNLParseResponse(v29);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_56_2();
  v32 = *(type metadata accessor for NLRouterServiceRequest(0) + 32);
  v84 = v3;
  sub_1DC28F358(v3 + v32, v26, &qword_1ECC7C158, &unk_1DC5234A0);
  v33 = type metadata accessor for NLRouterTurnProbingResult(0);
  OUTLINED_FUNCTION_39(v26, 1, v33);
  if (v38)
  {
    sub_1DC28EB30(v26, &qword_1ECC7C158, &unk_1DC5234A0);
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v34, v35, v36, v30);
LABEL_6:
    sub_1DC28EB30(v0, &qword_1ECC7C160, qword_1DC5233B0);
LABEL_7:
    OUTLINED_FUNCTION_34();
    return;
  }

  sub_1DC28F358(v26, v0, &qword_1ECC7C160, qword_1DC5233B0);
  OUTLINED_FUNCTION_9_26();
  sub_1DC40AA38(v26, v37);
  OUTLINED_FUNCTION_39(v0, 1, v30);
  if (v38)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_8_21();
  sub_1DC40A8F4(v0, v1, v39);
  v40 = sub_1DC40A3BC(v84);
  v77 = v40;
  if (!v40)
  {
    OUTLINED_FUNCTION_0_55();
    v64 = v1;
    goto LABEL_28;
  }

  v67 = v1;
  v41 = v85;
  v42 = v76;
  v71 = *(*v1 + 16);
  if (!v71)
  {
LABEL_26:

    OUTLINED_FUNCTION_0_55();
    v64 = v67;
LABEL_28:
    sub_1DC40AA38(v64, v63);
    goto LABEL_7;
  }

  v43 = 0;
  OUTLINED_FUNCTION_24();
  v74 = v44 + v45;
  v72 = v42 + 8;
  v73 = v42 + 16;
  v84 = v86 + 16;
  v46 = (v86 + 8);
  ++v78;
  ++v79;
  v69 = v22;
  v70 = v17;
  v68 = v44;
  while (v43 < *(v44 + 16))
  {
    v47 = *(v42 + 72);
    v75 = v43;
    (*(v42 + 16))(v22, v74 + v47 * v43, v17);
    v48 = sub_1DC5111AC();
    (*(v42 + 8))(v22, v17);
    v49 = *(v48 + 16);
    if (v49)
    {
      v50 = 0;
      OUTLINED_FUNCTION_24();
      v52 = v48 + v51;
      while (v50 < *(v48 + 16))
      {
        (*(v86 + 16))(v16, v52 + *(v86 + 72) * v50, v41);
        if ((sub_1DC5114CC() & 1) != 0 && (type metadata accessor for NLRouterBypassUtils(), v53 = v80, sub_1DC51154C(), v54 = v82, sub_1DC51178C(), (*v79)(v53, v81), v55 = sub_1DC307E5C(v54), v56 = v54, v41 = v85, (*v78)(v56, v83), v55))
        {
          v57 = sub_1DC514F1C();
          v59 = v58;
          if (v57 == sub_1DC514F1C() && v59 == v60)
          {

            (*v46)(v16, v85);
LABEL_30:

            OUTLINED_FUNCTION_0_55();
            sub_1DC40AA38(v67, v65);
            goto LABEL_7;
          }

          v62 = sub_1DC51825C();

          v41 = v85;
          (*v46)(v16, v85);
          if (v62)
          {
            goto LABEL_30;
          }
        }

        else
        {
          (*v46)(v16, v41);
        }

        if (v49 == ++v50)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
      break;
    }

LABEL_25:
    v43 = v75 + 1;

    v17 = v70;
    v42 = v76;
    v44 = v68;
    v22 = v69;
    if (v43 == v71)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
}

void sub_1DC409574()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v3 = sub_1DC510FDC();
  OUTLINED_FUNCTION_0();
  v85 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40();
  v81 = sub_1DC51179C();
  OUTLINED_FUNCTION_0();
  v79 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  v80 = v9 - v8;
  OUTLINED_FUNCTION_12();
  v82 = sub_1DC51164C();
  OUTLINED_FUNCTION_0();
  v87 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1();
  v14 = v13 - v12;
  v15 = sub_1DC51122C();
  OUTLINED_FUNCTION_0();
  v75 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_1();
  v74 = v19 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C158, &unk_1DC5234A0);
  OUTLINED_FUNCTION_10(v20);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v66 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C160, qword_1DC5233B0);
  OUTLINED_FUNCTION_10(v24);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v66 - v26;
  v28 = type metadata accessor for NLRouterNLParseResponse(0);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_1();
  v73 = (v31 - v30);
  v32 = OUTLINED_FUNCTION_12();
  v33 = *(type metadata accessor for NLRouterServiceRequest(v32) + 32);
  v86 = v2;
  sub_1DC28F358(v2 + v33, v23, &qword_1ECC7C158, &unk_1DC5234A0);
  v34 = type metadata accessor for NLRouterTurnProbingResult(0);
  OUTLINED_FUNCTION_39(v23, 1, v34);
  if (v39)
  {
    sub_1DC28EB30(v23, &qword_1ECC7C158, &unk_1DC5234A0);
    OUTLINED_FUNCTION_19();
    __swift_storeEnumTagSinglePayload(v35, v36, v37, v28);
LABEL_6:
    sub_1DC28EB30(v27, &qword_1ECC7C160, qword_1DC5233B0);
LABEL_7:
    OUTLINED_FUNCTION_34();
    return;
  }

  sub_1DC28F358(v23, v27, &qword_1ECC7C160, qword_1DC5233B0);
  OUTLINED_FUNCTION_9_26();
  sub_1DC40AA38(v23, v38);
  OUTLINED_FUNCTION_39(v27, 1, v28);
  if (v39)
  {
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_8_21();
  v40 = v73;
  sub_1DC40A8F4(v27, v73, v41);
  v42 = sub_1DC40A3BC(v86);
  v77 = v42;
  if (!v42)
  {
    OUTLINED_FUNCTION_0_55();
    v64 = v40;
    goto LABEL_24;
  }

  v71 = *v40;
  v43 = v82;
  v67 = *(v71 + 16);
  if (!v67)
  {
LABEL_22:

    OUTLINED_FUNCTION_0_55();
    v64 = v73;
LABEL_24:
    sub_1DC40AA38(v64, v63);
    goto LABEL_7;
  }

  v44 = 0;
  OUTLINED_FUNCTION_24();
  v70 = v71 + v45;
  v69 = v46 + 16;
  v68 = v46 + 8;
  v83 = (v87 + 8);
  v84 = v87 + 16;
  v78 = (v85 + 8);
  ++v79;
  v76 = xmmword_1DC522F10;
  v66 = v15;
  while (v44 < *(v71 + 16))
  {
    v47 = v44;
    v49 = v74;
    v48 = v75;
    v50 = v47;
    v51 = *(v75 + 72);
    v72 = v50;
    (*(v75 + 16))(v74, v70 + v51 * v50, v15);
    v52 = sub_1DC5111AC();
    (*(v48 + 8))(v49, v15);
    v86 = *(v52 + 16);
    if (v86)
    {
      v53 = 0;
      OUTLINED_FUNCTION_24();
      v85 = v52 + v54;
      while (v53 < *(v52 + 16))
      {
        (*(v87 + 16))(v14, v85 + *(v87 + 72) * v53, v43);
        if ((sub_1DC5114CC() & 1) != 0 && (type metadata accessor for NLRouterBypassUtils(), v55 = v52, v56 = v80, sub_1DC51154C(), sub_1DC51178C(), v57 = v56, v52 = v55, (*v79)(v57, v81), v58 = sub_1DC307E5C(v0), (*v78)(v0, v3), v58))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C440, &qword_1DC522EF0);
          v59 = swift_allocObject();
          *(v59 + 16) = v76;
          *(v59 + 32) = sub_1DC514F1C();
          *(v59 + 40) = v60;
          *(v59 + 48) = sub_1DC514F1C();
          *(v59 + 56) = v61;
          v88[0] = v59;

          sub_1DC40A984(v88, sub_1DC40AC6C, sub_1DC40ABA4);

          MEMORY[0x1EEE9AC00](v62);
          *(&v66 - 2) = v88;
          LOBYTE(v59) = sub_1DC40A610(sub_1DC40B514, (&v66 - 4), &unk_1F57FC6E8);

          (*v83)(v14, v82);

          if (v59)
          {

            OUTLINED_FUNCTION_0_55();
            sub_1DC40AA38(v73, v65);
            goto LABEL_7;
          }

          v43 = v82;
          v52 = v55;
        }

        else
        {
          (*v83)(v14, v43);
        }

        if (v86 == ++v53)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
      break;
    }

LABEL_21:
    v44 = v72 + 1;

    v15 = v66;
    if (v44 == v67)
    {
      goto LABEL_22;
    }
  }

  __break(1u);

  __break(1u);
}

void sub_1DC409CB8()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1E0, qword_1DC52A6E0);
  OUTLINED_FUNCTION_10(v5);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_35_13();
  v8 = type metadata accessor for HeuristicAgentKeywords(v7);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  v12 = v11 - v10;
  sub_1DC28F358(v2, v0, &qword_1ECC7C1E0, qword_1DC52A6E0);
  OUTLINED_FUNCTION_39(v0, 1, v8);
  if (v13)
  {
    sub_1DC28EB30(v0, &qword_1ECC7C1E0, qword_1DC52A6E0);
  }

  else
  {
    sub_1DC40A8F4(v0, v12, type metadata accessor for HeuristicAgentKeywords);
    if (*(*(v12 + *(v8 + 20)) + 16))
    {
      v14 = *(v12 + *(v8 + 24));
      v40 = *(v12 + *(v8 + 20));
      v41 = v14;

      sub_1DC40A984(&v41, sub_1DC30CA80, sub_1DC30C468);
      v15 = v41;
      v17 = *v4;
      v16 = v4[1];
      v43 = v17;
      v44 = v16;
      v18 = *(v41 + 2);

      v19 = 0;
      for (i = v15 + 40; ; i += 16)
      {
        if (v18 == v19)
        {

          goto LABEL_12;
        }

        if (v19 >= *(v15 + 2))
        {
          __break(1u);

          __break(1u);
          return;
        }

        v21 = *(i - 1);

        sub_1DC329B0C();
        if (v22)
        {
          break;
        }

        ++v19;
      }

      v24 = sub_1DC329364(v21);

      v25 = sub_1DC329368(v24, v17);
      v27 = v26;

      v43 = v25;
      v44 = v27;
LABEL_12:
      MEMORY[0x1EEE9AC00](v23);
      *(&v40 - 2) = &v43;
      *(&v40 - 1) = v12;
      v28 = sub_1DC40A840(sub_1DC40AA08, (&v40 - 4), v40);
      if (v29)
      {
        v30 = v28;
        v31 = v29;
        v32 = sub_1DC517B9C();
        sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
        v33 = sub_1DC2BE518();
        if (os_log_type_enabled(v33, v32))
        {
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v42 = v35;
          *v34 = 136315394;
          v36 = sub_1DC291244(v30, v31, &v42);

          *(v34 + 4) = v36;
          *(v34 + 12) = 2080;
          swift_beginAccess();
          v37 = v43;
          v38 = v44;

          v39 = sub_1DC291244(v37, v38, &v42);

          *(v34 + 14) = v39;
          _os_log_impl(&dword_1DC287000, v33, v32, "[TwoStepCorrectionsRule] isCurrentTurnAgentCorrection matched agent %s in %s", v34, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E1298840](v35, -1, -1);
          MEMORY[0x1E1298840](v34, -1, -1);
        }

        else
        {
        }
      }

      else
      {
      }
    }

    OUTLINED_FUNCTION_10_25();
  }

  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC40A0CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BF08, &unk_1DC522330);
  OUTLINED_FUNCTION_10(v5);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - v7;
  swift_bridgeObjectRetain_n();
  sub_1DC51586C();
  sub_1DC51585C();
  sub_1DC28F358(a4, v8, &qword_1ECC7BF08, &unk_1DC522330);
  return sub_1DC51584C();
}

void sub_1DC40A1AC()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CB90, &unk_1DC524420);
  OUTLINED_FUNCTION_10(v9);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v15 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D3D0, &qword_1DC529550);
  OUTLINED_FUNCTION_10(v13);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_56_2();
  swift_getKeyPath();
  v15 = v8;
  v16 = v6;
  swift_bridgeObjectRetain_n();
  sub_1DC514FDC();
  swift_getKeyPath();
  v15 = v8;
  v16 = v6;
  sub_1DC514FDC();
  swift_getKeyPath();
  sub_1DC28F358(v4, v0, &unk_1ECC7D3D0, &qword_1DC529550);
  sub_1DC514FDC();
  swift_getKeyPath();
  sub_1DC28F358(v2, v12, &qword_1ECC7CB90, &unk_1DC524420);
  sub_1DC514FDC();
  OUTLINED_FUNCTION_34();
}

unint64_t sub_1DC40A364()
{
  result = qword_1ECC7CB38;
  if (!qword_1ECC7CB38)
  {
    sub_1DC5157CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7CB38);
  }

  return result;
}

uint64_t sub_1DC40A3BC(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C890, &qword_1DC5234B0);
  OUTLINED_FUNCTION_10(v4);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7BFD0, &unk_1DC522550);
  OUTLINED_FUNCTION_10(v8);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_40();
  v11 = type metadata accessor for NLRouterTurnContext(v10);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_56_2();
  v13 = type metadata accessor for NLRouterServiceRequest(0);
  sub_1DC28F358(a1 + *(v13 + 20), v2, &qword_1ECC7BFD0, &unk_1DC522550);
  OUTLINED_FUNCTION_39(v2, 1, v11);
  if (v14)
  {
    sub_1DC28EB30(v2, &qword_1ECC7BFD0, &unk_1DC522550);
    return 0;
  }

  else
  {
    OUTLINED_FUNCTION_5_32();
    sub_1DC40A8F4(v2, v1, v15);
    type metadata accessor for NLRouterBypassUtils();
    sub_1DC40A568(*(v1 + 8), v7);
    v16 = sub_1DC307F68(v7);
    sub_1DC28EB30(v7, &qword_1ECC7C890, &qword_1DC5234B0);
    OUTLINED_FUNCTION_2_33();
    sub_1DC40AA38(v1, v17);
  }

  return v16;
}

uint64_t sub_1DC40A568@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_1DC510F1C();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

BOOL sub_1DC40A610(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = (a3 + 32);
  do
  {
    v7 = v5;
    if (v5-- == 0)
    {
      break;
    }

    v12 = *v6;

    v9 = a1(&v12);
    if (v3)
    {

      return v7 != 0;
    }

    v10 = v9;

    ++v6;
  }

  while ((v10 & 1) == 0);
  return v7 != 0;
}

BOOL sub_1DC40A6C0(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CD00, &unk_1DC5259F0);
  OUTLINED_FUNCTION_10(v6);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v26 - v8;
  v10 = *a1;
  v11 = a1[1];
  v27 = 25180;
  v28 = 0xE200000000000000;
  MEMORY[0x1E1296160](v10, v11);
  MEMORY[0x1E1296160](25180, 0xE200000000000000);
  v12 = v27;
  v13 = v28;
  v14 = *a2;
  v15 = a2[1];
  v27 = v14;
  v28 = v15;
  v26[0] = v12;
  v26[1] = v13;
  v16 = sub_1DC510C8C();
  OUTLINED_FUNCTION_35();
  (*(v17 + 16))(v9, a3, v16);
  OUTLINED_FUNCTION_61();
  v21 = __swift_storeEnumTagSinglePayload(v18, v19, v20, v16);
  sub_1DC2A32B0(v21, v22, v23);

  sub_1DC517E2C();
  LOBYTE(v16) = v24;
  sub_1DC28EB30(v9, &qword_1ECC7CD00, &unk_1DC5259F0);

  return (v16 & 1) == 0;
}

uint64_t sub_1DC40A840(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = (a3 + 40);
  if (!v5)
  {
    return 0;
  }

  while (1)
  {
    v8 = *(v6 - 1);
    v7 = *v6;
    v11[0] = v8;
    v11[1] = v7;

    v9 = a1(v11);
    if (v3)
    {
      break;
    }

    if (v9)
    {
      return v8;
    }

    v6 += 2;
    if (!--v5)
    {
      return 0;
    }
  }

  return v8;
}

uint64_t sub_1DC40A8F4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_35();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1DC40A984(char **a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_1DC30D6D8(v6);
  }

  v7 = *(v6 + 2);
  v9[0] = v6 + 32;
  v9[1] = v7;
  result = sub_1DC40AAA0(v9, a2, a3);
  *a1 = v6;
  return result;
}

uint64_t sub_1DC40AA38(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_35();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1DC40AAA0(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = sub_1DC51822C();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v10 = sub_1DC517A4C();
        *(v10 + 16) = v9;
      }

      v11[0] = v10 + 32;
      v11[1] = v9;
      a2(v11, v12, a1, v8);
      *(v10 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

uint64_t sub_1DC40ABA4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = sub_1DC51825C();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1DC40AC6C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v83 = result;
  v89 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        result = *v11;
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          result = sub_1DC51825C();
          v14 = result;
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          result = *(v16 - 1);
          if (result == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else
          {
            result = sub_1DC51825C();
            if ((v14 ^ result))
            {
              break;
            }
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
            return result;
          }

          if (v10 != v27)
          {
            v84 = v5;
            v86 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              result = *v32;
              v33 = v32[1];
              v34 = v30;
              v35 = v29;
              do
              {
                if (result == *(v35 - 2) && v33 == *(v35 - 1))
                {
                  break;
                }

                result = sub_1DC51825C();
                if ((result & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                result = *v35;
                v33 = v35[1];
                *v35 = *(v35 - 1);
                *(v35 - 1) = v33;
                *(v35 - 2) = result;
                v35 -= 2;
              }

              while (!__CFADD__(v34++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v84;
            v9 = v86;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v85 = v10;
      if ((result & 1) == 0)
      {
        result = sub_1DC30B0C0(0, *(v8 + 16) + 1, 1, v8);
        v8 = result;
      }

      v39 = *(v8 + 16);
      v38 = *(v8 + 24);
      v40 = v39 + 1;
      if (v39 >= v38 >> 1)
      {
        result = sub_1DC30B0C0((v38 > 1), v39 + 1, 1, v8);
        v8 = result;
      }

      *(v8 + 16) = v40;
      v41 = v8 + 32;
      v42 = (v8 + 32 + 16 * v39);
      *v42 = v9;
      v42[1] = v85;
      v87 = *v83;
      if (!*v83)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = (v41 + 16 * (v40 - 1));
          v45 = (v8 + 16 * v40);
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = *(v8 + 32);
            v47 = *(v8 + 40);
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
          {
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
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v75 = (v41 + 16 * (v43 - 1));
          v76 = *v75;
          v77 = (v41 + 16 * v43);
          v78 = v77[1];
          result = sub_1DC40B2A0((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v87);
          if (v5)
          {
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = *(v8 + 16);
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          result = memmove((v41 + 16 * v43), v77 + 2, 16 * (v80 - 1 - v43));
          *(v79 + 16) = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = v41 + 16 * v40;
        v51 = *(v50 - 64);
        v52 = *(v50 - 56);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 48);
        v54 = *(v50 - 40);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v85;
      if (v85 >= v6)
      {
        v89 = v8;
        break;
      }
    }
  }

  if (!*v83)
  {
    goto LABEL_128;
  }

  sub_1DC40B174(&v89, *v83, a3);
}

uint64_t sub_1DC40B174(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1DC30D6B0(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1DC40B2A0((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1DC40B2A0(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 16;
  v9 = (a3 - __dst) / 16;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[16 * v8] <= a4)
    {
      memmove(a4, __src, 16 * v8);
    }

    v11 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_46;
      }

      v13 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v13 || (sub_1DC51825C() & 1) == 0)
      {
        break;
      }

      v14 = v6;
      v13 = v7 == v6;
      v6 += 16;
      if (!v13)
      {
        goto LABEL_21;
      }

LABEL_22:
      v7 += 16;
    }

    v14 = v4;
    v13 = v7 == v4;
    v4 += 16;
    if (v13)
    {
      goto LABEL_22;
    }

LABEL_21:
    *v7 = *v14;
    goto LABEL_22;
  }

  if (a4 != __dst || &__dst[16 * v9] <= a4)
  {
    memmove(a4, __dst, 16 * v9);
  }

  v11 = &v4[16 * v9];
LABEL_29:
  v16 = v6 - 16;
  for (v5 -= 16; v11 > v4 && v6 > v7; v5 -= 16)
  {
    v18 = *(v11 - 2) == *(v6 - 2) && *(v11 - 1) == *(v6 - 1);
    if (!v18 && (sub_1DC51825C() & 1) != 0)
    {
      v13 = v5 + 16 == v6;
      v6 -= 16;
      if (!v13)
      {
        *v5 = *v16;
        v6 = v16;
      }

      goto LABEL_29;
    }

    if (v11 != v5 + 16)
    {
      *v5 = *(v11 - 1);
    }

    v11 -= 16;
  }

LABEL_46:
  v19 = (v11 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v19])
  {
    memmove(v6, v4, 16 * v19);
  }

  return 1;
}

uint64_t sub_1DC40B488(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1DC51825C() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1DC40B538@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1DC516F5C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v9 = sub_1DC2BE518();
  v10 = OUTLINED_FUNCTION_130();
  sub_1DC2A2ED0("HeuristicRules.HallucinationRule", 32, 2, v9, v10 & 1, v7);

  sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
  v11 = sub_1DC345FAC();
  v13 = v12;
  if (v11 == sub_1DC313520(1) && v13 == v14)
  {
  }

  else
  {
    v16 = sub_1DC51825C();

    if ((v16 & 1) == 0)
    {
      v17 = sub_1DC517B9C();
      v18 = sub_1DC2BE518();
      sub_1DC516F0C(v17, &dword_1DC287000, v18, "[Model Hallucination Rewrite] rule is off", 41, 2, MEMORY[0x1E69E7CC0]);

      v19 = sub_1DC5157EC();
      __swift_storeEnumTagSinglePayload(a2, 1, 1, v19);
LABEL_31:
      v69 = sub_1DC2BE518();
      sub_1DC2B8848(v7, "HeuristicRules.HallucinationRule", 32, 2, v69);

      return (*(v5 + 8))(v7, v4);
    }
  }

  v75 = a2;
  v76 = v8;
  v20 = sub_1DC328998();
  v21 = *a1;
  v22 = a1[1];
  v23 = *(**v20 + 112);

  LOBYTE(v21) = v23(v21, v22);

  if (v21)
  {
LABEL_9:
    type metadata accessor for HeuristicRoutingRequest(0);
    v24 = v75;
    sub_1DC32CDF4();
    v25 = sub_1DC5157EC();
    __swift_storeEnumTagSinglePayload(v24, 0, 1, v25);
    goto LABEL_31;
  }

  v70 = v7;
  v71 = v5;
  v72 = v4;
  v26 = *(type metadata accessor for NLRouterServiceRequest(0) + 24);
  v74 = a1;
  v27 = *(a1 + v26);

  v28 = sub_1DC31D500();
  result = sub_1DC2D69A8(*v28, v27);
  v73 = result;
  if (v31 == v32 >> 1)
  {
LABEL_16:
    swift_unknownObjectRelease();
    v39 = type metadata accessor for HeuristicRoutingRequest(0);
    v40 = v74;
    sub_1DC40BBA0(v74 + *(v39 + 28), &v77);
    if (v78)
    {
      sub_1DC28F9B0(&v77, v79);
      sub_1DC32EC6C();
      v42 = v41;
      MEMORY[0x1EEE9AC00](v41);
      *(&v70 - 2) = v79;
      v43 = sub_1DC40BD58(sub_1DC40BC78, (&v70 - 4), v42);

      v44 = 0;
      v45 = *(v43 + 16);
      v46 = MEMORY[0x1E69E7CD0];
      while (v45 != v44)
      {
        if (v44 >= *(v43 + 16))
        {
          __break(1u);
          goto LABEL_33;
        }

        v47 = v44 + 1;

        result = sub_1DC40BE84(v48, v46);
        v46 = result;
        v44 = v47;
      }

      if (*(v46 + 16))
      {
        v49 = (v40 + *(v39 + 24));
        v50 = *v49;
        v51 = v49[1];
        v52 = *(**sub_1DC328998() + 120);

        v52(v50, v51);

        __swift_project_boxed_opaque_existential_1(v79, v79[3]);
        v53 = OUTLINED_FUNCTION_1_36();
        v55 = v54(v53);

        v56 = sub_1DC322E3C(v55);
        LOBYTE(v51) = sub_1DC40BF8C(v56, v46);

        if (v51)
        {
          sub_1DC5157EC();
          v57 = OUTLINED_FUNCTION_0_56();
        }

        else
        {
          v68 = v75;
          sub_1DC32CDF4();
          v59 = sub_1DC5157EC();
          v57 = v68;
          v58 = 0;
        }

        __swift_storeEnumTagSinglePayload(v57, v58, 1, v59);
      }

      else
      {
        sub_1DC5157EC();
        v65 = OUTLINED_FUNCTION_0_56();
        __swift_storeEnumTagSinglePayload(v65, v66, 1, v67);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v79);
    }

    else
    {
      sub_1DC40BC10(&v77);
      v60 = sub_1DC517BAC();
      v61 = sub_1DC2BE518();
      sub_1DC516F0C(v60, &dword_1DC287000, v61, "[Model Hallucination Rewrite] rule cannot run completely because tokenizer is not instantiated", 94, 2, MEMORY[0x1E69E7CC0]);

      sub_1DC5157EC();
      v62 = OUTLINED_FUNCTION_0_56();
      __swift_storeEnumTagSinglePayload(v62, v63, 1, v64);
    }

    v5 = v71;
    v4 = v72;
    v7 = v70;
    goto LABEL_31;
  }

  v33 = v31;
  v34 = v32 >> 1;
  v35 = (v30 + 48 * v31 + 24);
  while (v33 < v34)
  {
    v36 = *v35;
    if (*v35)
    {
      v37 = *(v35 - 1);
      v38 = *(**v20 + 112);

      LOBYTE(v37) = v38(v37, v36);

      if (v37)
      {
        swift_unknownObjectRelease();
        v5 = v71;
        v4 = v72;
        v7 = v70;
        goto LABEL_9;
      }
    }

    ++v33;
    v35 += 6;
    if (v34 == v33)
    {
      goto LABEL_16;
    }
  }

LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_1DC40BBA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CF30, &unk_1DC525A00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DC40BC10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CF30, &unk_1DC525A00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DC40BC78@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *a1;
  v6 = a1[1];
  v7 = *(**sub_1DC328998() + 120);

  v7(v5, v6);

  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v8 = OUTLINED_FUNCTION_1_36();
  v10 = v9(v8);

  result = sub_1DC322E3C(v10);
  *a2 = result;
  return result;
}

uint64_t sub_1DC40BD58(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v17 = MEMORY[0x1E69E7CC0];
  sub_1DC40C15C(0, v5, 0);
  v6 = v17;
  for (i = (a3 + 40); ; i += 2)
  {
    v10 = *i;
    v15[0] = *(i - 1);
    v15[1] = v10;

    a1(&v16, v15);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v11 = v16;
    v17 = v6;
    v13 = *(v6 + 16);
    v12 = *(v6 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_1DC40C15C((v12 > 1), v13 + 1, 1);
      v6 = v17;
    }

    *(v6 + 16) = v13 + 1;
    *(v6 + 8 * v13 + 32) = v11;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DC40BE84(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_1DC2E5B58(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DC40BF8C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) < *(a2 + 16))
  {
    return 0;
  }

  v2 = a2;
  v4 = a2 + 56;
  v5 = 1 << *(a2 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a2 + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a1 + 56;

  v11 = 0;
  v23 = v2;
  if (v7)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return 1;
    }

    v7 = *(v4 + 8 * v12);
    ++v11;
    if (v7)
    {
      v11 = v12;
LABEL_10:
      while (2)
      {
        if (!*(a1 + 16))
        {

          return 0;
        }

        v13 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        v14 = (*(v2 + 48) + ((v11 << 10) | (16 * v13)));
        v16 = *v14;
        v15 = v14[1];
        sub_1DC5182FC();

        sub_1DC51769C();
        v17 = sub_1DC51833C();
        v18 = ~(-1 << *(a1 + 32));
        do
        {
          v19 = v17 & v18;
          if (((*(v9 + (((v17 & v18) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v17 & v18)) & 1) == 0)
          {

            return 0;
          }

          v20 = (*(a1 + 48) + 16 * v19);
          if (*v20 == v16 && v20[1] == v15)
          {
            break;
          }

          v22 = sub_1DC51825C();
          v17 = v19 + 1;
        }

        while ((v22 & 1) == 0);

        v2 = v23;
        if (v7)
        {
          continue;
        }

        break;
      }
    }
  }

  __break(1u);
  return result;
}

void *sub_1DC40C15C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DC40C17C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1DC40C17C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D8F8, &qword_1DC529D70);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CFC8, &qword_1DC526220);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1DC40C2D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>)
{
  sub_1DC40C3E4(a1, a9);
  v17 = type metadata accessor for HeuristicRoutingRequest(0);
  v18 = v17[5];
  sub_1DC5157EC();
  OUTLINED_FUNCTION_11_0();
  (*(v19 + 32))(a9 + v18, a2);
  v20 = (a9 + v17[6]);
  *v20 = a3;
  v20[1] = a4;
  v21 = a9 + v17[7];
  v22 = *(a5 + 16);
  *v21 = *a5;
  *(v21 + 16) = v22;
  *(v21 + 32) = *(a5 + 32);
  sub_1DC3B3C24(a6, a9 + v17[8], &qword_1ECC7C1E0, qword_1DC52A6E0);
  result = sub_1DC3B3C24(a7, a9 + v17[9], &qword_1ECC7CD00, &unk_1DC5259F0);
  *(a9 + v17[10]) = a8;
  return result;
}

uint64_t sub_1DC40C3E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NLRouterServiceRequest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DC40C468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1DC5157EC();
  OUTLINED_FUNCTION_11_0();
  (*(v8 + 32))(a4, a1);
  result = type metadata accessor for HeuristicRoutingResponse(0);
  v10 = (a4 + *(result + 20));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

unint64_t sub_1DC40C4E0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DC51808C();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DC40C538(unsigned __int8 a1, char a2)
{
  v2 = 0xEA00000000007365;
  v3 = 0x6D614E746E656741;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0xD000000000000012;
    }

    else
    {
      v5 = 0xD00000000000001DLL;
    }

    if (v4 == 1)
    {
      v6 = 0x80000001DC546EA0;
    }

    else
    {
      v6 = 0x80000001DC546EC0;
    }
  }

  else
  {
    v5 = 0x6D614E746E656741;
    v6 = 0xEA00000000007365;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0xD000000000000012;
    }

    else
    {
      v3 = 0xD00000000000001DLL;
    }

    if (a2 == 1)
    {
      v2 = 0x80000001DC546EA0;
    }

    else
    {
      v2 = 0x80000001DC546EC0;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DC51825C();
  }

  return v8 & 1;
}

uint64_t sub_1DC40C644(uint64_t a1, unsigned __int8 a2)
{
  sub_1DC51769C();
}

uint64_t sub_1DC40C6E0(uint64_t a1, char a2)
{
  sub_1DC5182FC();
  sub_1DC51769C();

  return sub_1DC51833C();
}

unint64_t sub_1DC40C788@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DC40C4E0(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1DC40C7B8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DC2BB7FC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1DC40C7E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DC40C4E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DC40C818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1DC2BA9E0(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1DC40C854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1DC2BA9E0(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1DC40C890(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DC37661C();
  v11 = v4;
  v269 = *(v4 + 16);
  if (v269)
  {
    v217 = a1;
    v243 = a2;
    v12 = 0;
    v13 = v4 + 32;
    v14 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      if (v12 >= *(v11 + 16))
      {
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      sub_1DC28FB9C(v13, &v297);
      v15 = sub_1DC3777C0(&v297);
      v17 = v16;
      sub_1DC28F9B0(&v297, v296);
      swift_isUniquelyReferenced_nonNull_native();
      v295[0] = v14;
      v4 = sub_1DC2AEB04(v15, v17);
      if (__OFADD__(v14[2], (v5 & 1) == 0))
      {
        goto LABEL_30;
      }

      v18 = v4;
      v19 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D920, "҃");
      if (sub_1DC517FFC())
      {
        v20 = sub_1DC2AEB04(v15, v17);
        if ((v19 & 1) != (v21 & 1))
        {
          v201 = sub_1DC51829C();
          __break(1u);
          goto LABEL_77;
        }

        v18 = v20;
      }

      if (v19)
      {

        v14 = v295[0];
        v22 = (*(v295[0] + 56) + 40 * v18);
        __swift_destroy_boxed_opaque_existential_1Tm(v22);
        v4 = sub_1DC28F9B0(v296, v22);
      }

      else
      {
        v14 = v295[0];
        *(v295[0] + 8 * (v18 >> 6) + 64) |= 1 << v18;
        v23 = (v14[6] + 16 * v18);
        *v23 = v15;
        v23[1] = v17;
        v4 = sub_1DC28F9B0(v296, v14[7] + 40 * v18);
        v24 = v14[2];
        v25 = __OFADD__(v24, 1);
        v26 = v24 + 1;
        if (v25)
        {
          __break(1u);
          goto LABEL_34;
        }

        v14[2] = v26;
      }

      ++v12;
      v13 += 40;
      if (v269 == v12)
      {

        a2 = v243;
        goto LABEL_15;
      }
    }
  }

  v14 = MEMORY[0x1E69E7CC8];
LABEL_15:
  sub_1DC352664(a1, a2, v14, &v297);

  if (v298)
  {
    sub_1DC40CEF8(&v297, v296, &qword_1ECC7D908, &qword_1DC529D88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CF38, &qword_1DC529D90);
    v27 = swift_dynamicCast();
    if (v27)
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v296);
      v34 = 1;
    }

    else if (OUTLINED_FUNCTION_3_29(v27, v28, v29, &type metadata for OverridesShortcutRule, v30, v31, v32, v33, v217, v243, v269, v295[0]))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v296);
      v34 = 2;
    }

    else
    {
      v41 = OUTLINED_FUNCTION_3_29(v295, v35, v36, &type metadata for GenAIRule, v37, v38, v39, v40, v218, v244, v270, v295[0]);
      if (v41)
      {
        sub_1DC40CF40(v295);
        __swift_destroy_boxed_opaque_existential_1Tm(v296);
        v34 = 3;
      }

      else
      {
        v48 = OUTLINED_FUNCTION_3_29(v41, v42, v43, &type metadata for DismissalRule, v44, v45, v46, v47, v219, v245, v271, v295[0]);
        if (v48)
        {
          __swift_destroy_boxed_opaque_existential_1Tm(v296);
          v34 = 4;
        }

        else
        {
          v55 = OUTLINED_FUNCTION_3_29(v48, v49, v50, &type metadata for CrisisRule, v51, v52, v53, v54, v220, v246, v272, v295[0]);
          if (v55)
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v296);
            v34 = 5;
          }

          else
          {
            v4 = OUTLINED_FUNCTION_3_29(v55, v56, v57, &type metadata for TwoStepCorrectionsRule, v58, v59, v60, v61, v221, v247, v273, v295[0]);
            if (v4)
            {
              __swift_destroy_boxed_opaque_existential_1Tm(v296);
              v34 = 6;
            }

            else
            {
LABEL_31:
              v4 = OUTLINED_FUNCTION_3_29(v4, v5, v6, &type metadata for UndoRule, v7, v8, v9, v10, v217, v243, v269, v295[0]);
              if (v4)
              {
                __swift_destroy_boxed_opaque_existential_1Tm(v296);
                v34 = 7;
              }

              else
              {
LABEL_34:
                v62 = OUTLINED_FUNCTION_3_29(v4, v5, v6, &type metadata for MultiTurnHeuristicRule, v7, v8, v9, v10, v217, v243, v269, v295[0]);
                if (v62)
                {
                  __swift_destroy_boxed_opaque_existential_1Tm(v296);
                  v34 = 8;
                }

                else
                {
                  v69 = OUTLINED_FUNCTION_3_29(v62, v63, v64, &type metadata for SettingRule, v65, v66, v67, v68, v222, v248, v274, v295[0]);
                  if (v69)
                  {
                    __swift_destroy_boxed_opaque_existential_1Tm(v296);
                    v34 = 9;
                  }

                  else
                  {
                    v76 = OUTLINED_FUNCTION_3_29(v69, v70, v71, &type metadata for EmailRule, v72, v73, v74, v75, v223, v249, v275, v295[0]);
                    if (v76)
                    {
                      __swift_destroy_boxed_opaque_existential_1Tm(v296);
                      v34 = 10;
                    }

                    else
                    {
                      v83 = OUTLINED_FUNCTION_3_29(v76, v77, v78, &type metadata for CalendarRule, v79, v80, v81, v82, v224, v250, v276, v295[0]);
                      if (v83)
                      {
                        __swift_destroy_boxed_opaque_existential_1Tm(v296);
                        v34 = 11;
                      }

                      else
                      {
                        v90 = OUTLINED_FUNCTION_3_29(v83, v84, v85, &type metadata for PlannerDeleteRule, v86, v87, v88, v89, v225, v251, v277, v295[0]);
                        if (v90)
                        {
                          __swift_destroy_boxed_opaque_existential_1Tm(v296);
                          v34 = 12;
                        }

                        else
                        {
                          v97 = OUTLINED_FUNCTION_3_29(v90, v91, v92, &type metadata for PlannerUpdateRule, v93, v94, v95, v96, v226, v252, v278, v295[0]);
                          if (v97)
                          {
                            __swift_destroy_boxed_opaque_existential_1Tm(v296);
                            v34 = 13;
                          }

                          else if (OUTLINED_FUNCTION_3_29(v97, v98, v99, &type metadata for PlannerWritingToolsRule, v100, v101, v102, v103, v227, v253, v279, v295[0]))
                          {
                            __swift_destroy_boxed_opaque_existential_1Tm(v296);
                            v34 = 14;
                          }

                          else
                          {
                            v110 = OUTLINED_FUNCTION_3_29(v295, v104, v105, &type metadata for SuperSubscriptInUtteranceRule, v106, v107, v108, v109, v228, v254, v280, v295[0]);
                            if (v110)
                            {

                              __swift_destroy_boxed_opaque_existential_1Tm(v296);
                              v34 = 15;
                            }

                            else
                            {
                              v117 = OUTLINED_FUNCTION_3_29(v110, v111, v112, &type metadata for AppLaunchRule, v113, v114, v115, v116, v229, v255, v281, v295[0]);
                              if (v117)
                              {
                                __swift_destroy_boxed_opaque_existential_1Tm(v296);
                                v34 = 16;
                              }

                              else
                              {
                                v124 = OUTLINED_FUNCTION_3_29(v117, v118, v119, &type metadata for PhoneCallRule, v120, v121, v122, v123, v230, v256, v282, v295[0]);
                                if (v124)
                                {
                                  __swift_destroy_boxed_opaque_existential_1Tm(v296);
                                  v34 = 17;
                                }

                                else
                                {
                                  v131 = OUTLINED_FUNCTION_3_29(v124, v125, v126, &type metadata for AlarmRule, v127, v128, v129, v130, v231, v257, v283, v295[0]);
                                  if (v131)
                                  {
                                    __swift_destroy_boxed_opaque_existential_1Tm(v296);
                                    v34 = 18;
                                  }

                                  else
                                  {
                                    v138 = OUTLINED_FUNCTION_3_29(v131, v132, v133, &type metadata for TimerRule, v134, v135, v136, v137, v232, v258, v284, v295[0]);
                                    if (v138)
                                    {
                                      __swift_destroy_boxed_opaque_existential_1Tm(v296);
                                      v34 = 19;
                                    }

                                    else
                                    {
                                      v145 = OUTLINED_FUNCTION_3_29(v138, v139, v140, &type metadata for ReminderRule, v141, v142, v143, v144, v233, v259, v285, v295[0]);
                                      if (v145)
                                      {
                                        __swift_destroy_boxed_opaque_existential_1Tm(v296);
                                        v34 = 20;
                                      }

                                      else
                                      {
                                        v152 = OUTLINED_FUNCTION_3_29(v145, v146, v147, &type metadata for FindMyRule, v148, v149, v150, v151, v234, v260, v286, v295[0]);
                                        if (v152)
                                        {
                                          __swift_destroy_boxed_opaque_existential_1Tm(v296);
                                          v34 = 21;
                                        }

                                        else
                                        {
                                          v159 = OUTLINED_FUNCTION_3_29(v152, v153, v154, &type metadata for PlannerPhotoRule, v155, v156, v157, v158, v235, v261, v287, v295[0]);
                                          if (v159)
                                          {
                                            __swift_destroy_boxed_opaque_existential_1Tm(v296);
                                            v34 = 22;
                                          }

                                          else
                                          {
                                            v166 = OUTLINED_FUNCTION_3_29(v159, v160, v161, &type metadata for MessageRule, v162, v163, v164, v165, v236, v262, v288, v295[0]);
                                            if (v166)
                                            {
                                              __swift_destroy_boxed_opaque_existential_1Tm(v296);
                                              v34 = 23;
                                            }

                                            else
                                            {
                                              v173 = OUTLINED_FUNCTION_3_29(v166, v167, v168, &type metadata for AnnouncementRule, v169, v170, v171, v172, v237, v263, v289, v295[0]);
                                              if (v173)
                                              {
                                                __swift_destroy_boxed_opaque_existential_1Tm(v296);
                                                v34 = 24;
                                              }

                                              else
                                              {
                                                v180 = OUTLINED_FUNCTION_3_29(v173, v174, v175, &type metadata for NoteRule, v176, v177, v178, v179, v238, v264, v290, v295[0]);
                                                if (v180)
                                                {
                                                  __swift_destroy_boxed_opaque_existential_1Tm(v296);
                                                  v34 = 25;
                                                }

                                                else
                                                {
                                                  v187 = OUTLINED_FUNCTION_3_29(v180, v181, v182, &type metadata for TranslationRule, v183, v184, v185, v186, v239, v265, v291, v295[0]);
                                                  if (v187)
                                                  {
                                                    __swift_destroy_boxed_opaque_existential_1Tm(v296);
                                                    v34 = 26;
                                                  }

                                                  else
                                                  {
                                                    v194 = OUTLINED_FUNCTION_3_29(v187, v188, v189, &type metadata for MathRule, v190, v191, v192, v193, v240, v266, v292, v295[0]);
                                                    if (v194)
                                                    {
                                                      __swift_destroy_boxed_opaque_existential_1Tm(v296);
                                                      v34 = 27;
                                                    }

                                                    else
                                                    {
                                                      v201 = OUTLINED_FUNCTION_3_29(v194, v195, v196, &type metadata for StopRecordingRule, v197, v198, v199, v200, v241, v267, v293, v295[0]);
                                                      if (v201)
                                                      {
                                                        __swift_destroy_boxed_opaque_existential_1Tm(v296);
                                                        v34 = 28;
                                                      }

                                                      else
                                                      {
LABEL_77:
                                                        v208 = OUTLINED_FUNCTION_3_29(v201, v202, v203, &type metadata for HallucinationRule, v204, v205, v206, v207, v217, v243, v269, v295[0]);
                                                        if (v208)
                                                        {
                                                          __swift_destroy_boxed_opaque_existential_1Tm(v296);
                                                          v34 = 29;
                                                        }

                                                        else
                                                        {
                                                          v215 = OUTLINED_FUNCTION_3_29(v208, v209, v210, &type metadata for MDMRRewriteRule, v211, v212, v213, v214, v242, v268, v294, v295[0]);
                                                          __swift_destroy_boxed_opaque_existential_1Tm(v296);
                                                          if (v215)
                                                          {
                                                            v34 = 30;
                                                          }

                                                          else
                                                          {
                                                            v34 = 0;
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
    }
  }

  else
  {
    v34 = 0;
  }

  sub_1DC28EB30(&v297, &qword_1ECC7D908, &qword_1DC529D88);
  return v34;
}

uint64_t sub_1DC40CEF8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_54_1(a1, a2, a3, a4);
  OUTLINED_FUNCTION_11_0();
  v5 = OUTLINED_FUNCTION_43();
  v6(v5);
  return v4;
}

unint64_t sub_1DC40CF98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC7D910;
  if (!qword_1ECC7D910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7D910);
  }

  return result;
}

unint64_t sub_1DC40CFF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC7BC58;
  if (!qword_1ECC7BC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7BC58);
  }

  return result;
}

unint64_t sub_1DC40D048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECC7BC60;
  if (!qword_1ECC7BC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC7BC60);
  }

  return result;
}

void sub_1DC40D0C4()
{
  type metadata accessor for NLRouterServiceRequest(319);
  if (v0 <= 0x3F)
  {
    sub_1DC5157EC();
    if (v1 <= 0x3F)
    {
      sub_1DC40D1D0(319);
      if (v2 <= 0x3F)
      {
        sub_1DC40D234(319, &qword_1ECC7BC48, type metadata accessor for HeuristicAgentKeywords);
        if (v3 <= 0x3F)
        {
          sub_1DC40D234(319, &qword_1ECC7BE50, MEMORY[0x1E6969770]);
          if (v4 <= 0x3F)
          {
            OUTLINED_FUNCTION_15_19();
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1DC40D1D0(uint64_t a1)
{
  if (!qword_1ECC7BB88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC7D918, &qword_1DC529F38);
    v1 = sub_1DC517D8C();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECC7BB88);
    }
  }
}

void sub_1DC40D234(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_1DC40D2B0()
{
  result = sub_1DC5157EC();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_15_19();
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1DC40D31C()
{
  sub_1DC510C8C();
  if (v0 <= 0x3F)
  {
    sub_1DC40D3A0();
    if (v1 <= 0x3F)
    {
      OUTLINED_FUNCTION_15_19();
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1DC40D3A0()
{
  if (!qword_1ECC7BA00)
  {
    v0 = sub_1DC517A6C();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECC7BA00);
    }
  }
}

uint64_t sub_1DC40D410()
{
  v0 = sub_1DC5172FC();
  __swift_allocate_value_buffer(v0, qword_1ECC8FA28);
  v1 = __swift_project_value_buffer(v0, qword_1ECC8FA28);
  v2 = swift_allocObject();
  v2[2] = 7104878;
  v2[3] = 0xE300000000000000;
  v2[4] = 7104878;
  v2[5] = 0xE300000000000000;
  *v1 = v2;
  OUTLINED_FUNCTION_7_1();
  v4 = *(v3 + 104);

  return v4(v1);
}

uint64_t sub_1DC40D4C8(uint64_t a1)
{
  sub_1DC51721C();
  OUTLINED_FUNCTION_7_1();
  v4 = *(v3 + 8);

  return v4(a1, v2);
}

uint64_t sub_1DC40D528@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECC8AFD0 != -1)
  {
    OUTLINED_FUNCTION_0_58(&qword_1ECC8AFD0);
  }

  v2 = sub_1DC5172FC();
  __swift_project_value_buffer(v2, qword_1ECC8FA28);
  OUTLINED_FUNCTION_7_1();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t sub_1DC40D5BC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DC40D4C8(a1);
  *a2 = 0;
  return result;
}

uint64_t sub_1DC40D5F4()
{
  OUTLINED_FUNCTION_1_0();
  *(v0 + 32) = v1;
  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1DC40D67C(uint64_t a1)
{
  v54 = v1;
  v53[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1DC517B9C();
  sub_1DC297814();
  v3 = sub_1DC399044();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = swift_slowAlloc();
    v5 = OUTLINED_FUNCTION_82();
    v53[0] = v5;
    *v4 = 136315138;
    v1[2] = swift_getObjectType();
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D7E0, &unk_1DC529FF0);
    v7 = OUTLINED_FUNCTION_15_20(v6);
    v9 = sub_1DC291244(v7, v8, v53);

    *(v4 + 4) = v9;
    OUTLINED_FUNCTION_14_16(&dword_1DC287000, v10, v11, "Setting up %s");
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_66();
  }

  v12 = v1[4];
  v1[2] = 0;
  v13 = [v12 setupAndReturnError_];
  v14 = v1[2];
  if (!v13)
  {
    v30 = v14;
    v31 = sub_1DC51085C();

    swift_willThrow();
    LOBYTE(v30) = sub_1DC517BAC();
    v21 = sub_1DC399044();
    if (os_log_type_enabled(v21, v30))
    {
      v32 = swift_slowAlloc();
      v33 = OUTLINED_FUNCTION_82();
      v53[0] = v33;
      *v32 = 136315138;
      v1[2] = swift_getObjectType();
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D7E0, &unk_1DC529FF0);
      v35 = OUTLINED_FUNCTION_15_20(v34);
      v37 = sub_1DC291244(v35, v36, v53);

      *(v32 + 4) = v37;
      OUTLINED_FUNCTION_14_16(&dword_1DC287000, v38, v39, "Graph service setup failed: %s");
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_66();
    }

    goto LABEL_9;
  }

  v15 = v13;
  v16 = v14;
  v17 = sub_1DC37C698([v15 integerValue]);
  if (v18)
  {
    v20 = sub_1DC517BAC();
    v21 = sub_1DC399044();
    if (!os_log_type_enabled(v21, v20))
    {

      goto LABEL_13;
    }

    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = OUTLINED_FUNCTION_82();
    v53[0] = v24;
    *v22 = 138412546;
    *(v22 + 4) = v15;
    *v23 = v15;
    *(v22 + 12) = 2080;
    v1[2] = swift_getObjectType();
    v25 = v15;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D7E0, &unk_1DC529FF0);
    v27 = OUTLINED_FUNCTION_15_20(v26);
    v29 = sub_1DC291244(v27, v28, v53);

    *(v22 + 14) = v29;
    _os_log_impl(&dword_1DC287000, v21, v20, "Graph service setup failed with status of unknown type (%@): %s", v22, 0x16u);
    sub_1DC2BE530(v23, &qword_1ECC7DFE0, &qword_1DC5227F0);
    OUTLINED_FUNCTION_66();
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_66();

LABEL_9:
LABEL_13:
    v40 = 2;
    goto LABEL_14;
  }

  v40 = v17;
  v1[2] = v17;
  v1[3] = 1;
  sub_1DC37C7D4(v17, v18, v19);
  if (sub_1DC5176CC())
  {
  }

  else
  {
    v43 = sub_1DC517BAC();
    v44 = sub_1DC399044();
    if (os_log_type_enabled(v44, v43))
    {
      v45 = swift_slowAlloc();
      v53[0] = swift_slowAlloc();
      *v45 = 136315394;
      v1[2] = swift_getObjectType();
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D7E0, &unk_1DC529FF0);
      v47 = OUTLINED_FUNCTION_15_20(v46);
      v49 = sub_1DC291244(v47, v48, v53);

      *(v45 + 4) = v49;
      *(v45 + 12) = 2080;
      v1[2] = v40;
      v50 = sub_1DC51777C();
      v52 = sub_1DC291244(v50, v51, v53);

      *(v45 + 14) = v52;
      _os_log_impl(&dword_1DC287000, v44, v43, "Graph service setup failed: %s - %s", v45, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_66();
    }
  }

LABEL_14:
  OUTLINED_FUNCTION_34_10();

  return v41(v40);
}

uint64_t sub_1DC40DB94()
{
  OUTLINED_FUNCTION_1_0();
  v1[4] = v2;
  v1[5] = v0;
  v3 = sub_1DC516F5C();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1DC40DC48()
{
  v0[9] = sub_1DC297814();
  sub_1DC399044();
  sub_1DC516F3C();
  v1 = sub_1DC517CEC();
  v2 = sub_1DC399044();
  v0[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7C290, &qword_1DC524690);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1DC522F20;
  ObjectType = swift_getObjectType();
  v0[11] = ObjectType;
  v0[2] = ObjectType;
  v0[12] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D7E0, &unk_1DC529FF0);
  v5 = sub_1DC51777C();
  v7 = v6;
  *(v3 + 56) = MEMORY[0x1E69E6158];
  v9 = sub_1DC2C0FA4(v5, v6, v8);
  v0[13] = v9;
  *(v3 + 64) = v9;
  *(v3 + 32) = v5;
  *(v3 + 40) = v7;
  OUTLINED_FUNCTION_13_25(v1, &dword_1DC287000, v10, "Graph Service Setup");

  v11 = swift_task_alloc();
  v0[14] = v11;
  *v11 = v0;
  v11[1] = sub_1DC40DDF4;

  return sub_1DC40D5F4();
}

uint64_t sub_1DC40DDF4()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_38();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 120) = v3;

  v4 = OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1DC40DEE0(uint64_t a1)
{
  v2 = v1[13];
  v3 = v1[11];
  v4 = v1[8];
  v5 = v1[6];
  v6 = v1[7];
  v7 = sub_1DC517CDC();
  v8 = sub_1DC399044();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1DC522F20;
  v1[3] = v3;
  v10 = sub_1DC51777C();
  *(v9 + 56) = MEMORY[0x1E69E6158];
  *(v9 + 64) = v2;
  *(v9 + 32) = v10;
  *(v9 + 40) = v11;
  OUTLINED_FUNCTION_13_25(v7, &dword_1DC287000, v12, "Graph Service Setup");

  (*(v6 + 8))(v4, v5);

  OUTLINED_FUNCTION_34_10();
  v14 = v1[15];

  return v13(v14);
}

uint64_t sub_1DC40E014(uint64_t a1)
{
  *(v2 + 72) = a1;
  *(v2 + 80) = v1;
  v3 = OUTLINED_FUNCTION_47();
  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DC40E03C()
{
  OUTLINED_FUNCTION_1_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D928, &qword_1DC52A018);
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *(v2 + 16) = *(v0 + 72);
  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  *v3 = v0;
  v3[1] = sub_1DC40E138;

  return MEMORY[0x1EEE6DD58](v0 + 40, &type metadata for SetupStatus, v1, 0, 0, &unk_1DC52A028, v2, &type metadata for SetupStatus);
}

uint64_t sub_1DC40E138()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  v3 = v2;
  OUTLINED_FUNCTION_38();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v6 = v5;
  *(v3 + 104) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DC40E23C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = v3[5];
  v6 = *(v5 + 16);
  do
  {
    v7 = v4;
    if (v6 == v4)
    {
      break;
    }

    if (v4 >= *(v5 + 16))
    {
      __break(1u);
      return result;
    }

    v8 = *(v5 + 8 * v4++ + 32);
    v3[7] = v8;
    v3[8] = 1;
    sub_1DC37C7D4(result, a2, a3);
    result = sub_1DC5176CC();
  }

  while ((result & 1) != 0);

  OUTLINED_FUNCTION_34_10();

  return v9(v6 == v7);
}

uint64_t sub_1DC40E314()
{
  v13 = v0;

  v1 = sub_1DC517BAC();
  sub_1DC297814();
  v2 = sub_1DC399044();
  if (os_log_type_enabled(v2, v1))
  {
    v3 = *(v0 + 104);
    v4 = swift_slowAlloc();
    v5 = OUTLINED_FUNCTION_82();
    v12 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = sub_1DC5182AC();
    v8 = sub_1DC291244(v6, v7, &v12);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1DC287000, v2, v1, "SetupGraphServices threw an error: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_66();
  }

  else
  {
    v9 = *(v0 + 104);
  }

  OUTLINED_FUNCTION_34_10();

  return v10(0);
}

uint64_t sub_1DC40E474()
{
  OUTLINED_FUNCTION_1_0();
  v0[13] = v1;
  v0[14] = v2;
  v0[11] = v3;
  v0[12] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D050, &qword_1DC523AC0);
  v0[15] = swift_task_alloc();
  v0[16] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DC40E514()
{
  v1 = sub_1DC2C20B8(*(v0 + 104));
  if (v1)
  {
    v2 = v1;
    if (v1 < 1)
    {
      __break(1u);
      return MEMORY[0x1EEE6DAC8](v1);
    }

    v3 = 0;
    v4 = *(v0 + 104);
    v5 = v4 & 0xC000000000000001;
    v22 = v4 + 32;
    v6 = &selRef_getAssetMetadata;
    v23 = v1;
    do
    {
      if (v5)
      {
        v7 = MEMORY[0x1E1296800](v3, *(v0 + 104));
      }

      else
      {
        v7 = *(v22 + 8 * v3);
        swift_unknownObjectRetain();
      }

      swift_getObjectType();
      if ([swift_getObjCClassFromMetadata() v6[498]])
      {
        v9 = *(v0 + 120);
        v8 = *(v0 + 128);
        v10 = *(v0 + 112);
        v11 = sub_1DC517AAC();
        __swift_storeEnumTagSinglePayload(v8, 1, 1, v11);
        v12 = swift_allocObject();
        v12[2] = 0;
        v12[3] = 0;
        v12[4] = v10;
        v12[5] = v7;
        sub_1DC35B7A0(v8, v9);
        LODWORD(v9) = __swift_getEnumTagSinglePayload(v9, 1, v11);
        swift_unknownObjectRetain();
        v13 = *(v0 + 120);
        if (v9 == 1)
        {
          sub_1DC2BE530(*(v0 + 120), &unk_1ECC7D050, &qword_1DC523AC0);
        }

        else
        {
          sub_1DC517A9C();
          (*(*(v11 - 8) + 8))(v13, v11);
        }

        if (v12[2])
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          v14 = sub_1DC517A7C();
          v16 = v15;
          swift_unknownObjectRelease();
        }

        else
        {
          v14 = 0;
          v16 = 0;
        }

        v17 = **(v0 + 96);

        if (v16 | v14)
        {
          v18 = v0 + 16;
          *(v0 + 16) = 0;
          *(v0 + 24) = 0;
          *(v0 + 32) = v14;
          *(v0 + 40) = v16;
        }

        else
        {
          v18 = 0;
        }

        v19 = *(v0 + 128);
        *(v0 + 48) = 1;
        *(v0 + 56) = v18;
        *(v0 + 64) = v17;
        swift_task_create();

        swift_unknownObjectRelease();

        sub_1DC2BE530(v19, &unk_1ECC7D050, &qword_1DC523AC0);
        v2 = v23;
        v6 = &selRef_getAssetMetadata;
      }

      else
      {
        swift_unknownObjectRelease();
      }

      ++v3;
    }

    while (v2 != v3);
  }

  *(v0 + 136) = MEMORY[0x1E69E7CC0];
  v20 = swift_task_alloc();
  *(v0 + 144) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D938, &qword_1DC52A0A0);
  *v20 = v0;
  OUTLINED_FUNCTION_3_30();
  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DAC8](v1);
}

uint64_t sub_1DC40E840()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  v3 = v2;
  OUTLINED_FUNCTION_38();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_4_0();
  *v6 = v5;
  *(v3 + 152) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_19_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DC40E944()
{
  OUTLINED_FUNCTION_41_5();
  v1 = *(v0 + 72);
  if (*(v0 + 80) == 1)
  {
    **(v0 + 88) = *(v0 + 136);

    OUTLINED_FUNCTION_2_2();

    return v2();
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = *(v0 + 136);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v5 = sub_1DC40F598(0, *(v5 + 2) + 1, 1, v5);
    }

    v7 = *(v5 + 2);
    v6 = *(v5 + 3);
    if (v7 >= v6 >> 1)
    {
      v5 = sub_1DC40F598((v6 > 1), v7 + 1, 1, v5);
    }

    *(v5 + 2) = v7 + 1;
    *&v5[8 * v7 + 32] = v1;
    *(v0 + 136) = v5;
    v8 = swift_task_alloc();
    *(v0 + 144) = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D938, &qword_1DC52A0A0);
    *v8 = v0;
    OUTLINED_FUNCTION_3_30();
    OUTLINED_FUNCTION_19_0();

    return MEMORY[0x1EEE6DAC8](v9);
  }
}

uint64_t sub_1DC40EAB0()
{
  OUTLINED_FUNCTION_1_0();

  OUTLINED_FUNCTION_2_2();

  return v0();
}

uint64_t sub_1DC40EB14()
{
  OUTLINED_FUNCTION_1_0();
  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1DC40EBB0;

  return sub_1DC40DB94();
}

uint64_t sub_1DC40EBB0()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_38();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 32) = v3;

  v4 = OUTLINED_FUNCTION_47();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1DC40EC9C()
{
  **(v0 + 16) = *(v0 + 32);
  OUTLINED_FUNCTION_2_2();
  return v1();
}

uint64_t sub_1DC40ED50(uint64_t a1, void *aBlock, uint64_t a3)
{
  v3[2] = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D930, &qword_1DC52A098);
  v4 = sub_1DC517A1C();
  v3[3] = v4;
  swift_getObjCClassMetadata();
  v5 = swift_task_alloc();
  v3[4] = v5;
  *v5 = v3;
  v5[1] = sub_1DC40EE28;

  return sub_1DC40E014(v4);
}

uint64_t sub_1DC40EE28()
{
  OUTLINED_FUNCTION_41_5();
  v2 = v1;
  OUTLINED_FUNCTION_7_0();
  v4 = *(v3 + 16);
  v5 = *v0;
  OUTLINED_FUNCTION_4_0();
  *v6 = v5;

  v4[2](v4, v2 & 1);
  _Block_release(v4);
  OUTLINED_FUNCTION_2_2();

  return v7();
}

uint64_t sub_1DC40EF60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D050, &qword_1DC523AC0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_1DC517AAC();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = &unk_1DC52A068;
  v9[5] = v8;
  sub_1DC40F2CC(0, 0, v6, &unk_1DC52A078, v9);
}

id sub_1DC40F070(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for GraphServiceUtils();
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_1DC40F0C8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for GraphServiceUtils();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1DC40F0FC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1DC29F200;

  return v6();
}

uint64_t sub_1DC40F1E4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1DC29F120;

  return v7();
}

uint64_t sub_1DC40F2CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D050, &qword_1DC523AC0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v22 - v10;
  sub_1DC35B7A0(a3, v22 - v10);
  v12 = sub_1DC517AAC();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_1DC2BE530(v11, &unk_1ECC7D050, &qword_1DC523AC0);
  }

  else
  {
    sub_1DC517A9C();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = sub_1DC517A7C();
    v15 = v14;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v16 = sub_1DC51779C() + 32;
      v17 = swift_allocObject();
      *(v17 + 16) = a4;
      *(v17 + 24) = a5;

      if (v15 | v13)
      {
        v23[0] = 0;
        v23[1] = 0;
        v18 = v23;
        v23[2] = v13;
        v23[3] = v15;
      }

      else
      {
        v18 = 0;
      }

      v22[1] = 7;
      v22[2] = v18;
      v22[3] = v16;
      v20 = swift_task_create();

      sub_1DC2BE530(a3, &unk_1ECC7D050, &qword_1DC523AC0);

      return v20;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1DC2BE530(a3, &unk_1ECC7D050, &qword_1DC523AC0);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

char *sub_1DC40F598(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D940, &qword_1DC52A0B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

uint64_t sub_1DC40F698()
{
  OUTLINED_FUNCTION_41_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_1(v0);
  *v1 = v2;
  v1[1] = sub_1DC29F200;

  return sub_1DC40E474();
}

uint64_t sub_1DC40F764()
{
  OUTLINED_FUNCTION_41_5();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1DC29F120;

  return sub_1DC40ED50(v2, v3, v4);
}

uint64_t sub_1DC40F814()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1DC29F200;

  return sub_1DC40F0FC(v2, v3, v4);
}

uint64_t sub_1DC40F8D4(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_3_1(v6);
  *v7 = v8;
  v7[1] = sub_1DC29F200;

  return sub_1DC40F1E4(a1, v3, v4, v5);
}

uint64_t sub_1DC40F998()
{
  OUTLINED_FUNCTION_41_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_19_2(v1);

  return v4(v3);
}

uint64_t objectdestroy_7Tm(void (*a1)(void))
{
  swift_unknownObjectRelease();
  a1(*(v1 + 40));

  return MEMORY[0x1EEE6BDD0](v1, 48, 7);
}

uint64_t sub_1DC40FA7C()
{
  OUTLINED_FUNCTION_41_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_3_1(v0);
  *v1 = v2;
  v1[1] = sub_1DC29F120;

  return sub_1DC40EB14();
}

void sub_1DC40FB1C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v112 = a2;
  sub_1DC51164C();
  OUTLINED_FUNCTION_0();
  v107 = v3;
  v108 = v4;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1();
  v106 = v6 - v5;
  OUTLINED_FUNCTION_12();
  v102 = sub_1DC51122C();
  OUTLINED_FUNCTION_0();
  v99 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1();
  v101 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7CA40, &unk_1DC5233A0);
  v12 = OUTLINED_FUNCTION_10(v11);
  MEMORY[0x1EEE9AC00](v12);
  v103 = v88 - v13;
  OUTLINED_FUNCTION_12();
  v113 = sub_1DC5157EC();
  OUTLINED_FUNCTION_0();
  v104 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_15();
  v98 = v16;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v17);
  v100 = v88 - v18;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_62();
  v109 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C158, &unk_1DC5234A0);
  v22 = OUTLINED_FUNCTION_10(v21);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v88 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C160, qword_1DC5233B0);
  v26 = OUTLINED_FUNCTION_10(v25);
  MEMORY[0x1EEE9AC00](v26);
  v28 = v88 - v27;
  v29 = type metadata accessor for NLRouterNLParseResponse(0);
  OUTLINED_FUNCTION_35();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_1();
  v105 = v32 - v31;
  OUTLINED_FUNCTION_12();
  sub_1DC516F5C();
  OUTLINED_FUNCTION_0();
  v110 = v34;
  v111 = v33;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_1();
  v37 = v36 - v35;
  sub_1DC298C74(0, &qword_1EDAC7F90, 0x1E69E9BF8);
  v38 = sub_1DC2BE518();
  v39 = OUTLINED_FUNCTION_130();
  sub_1DC2A2ED0("HeuristicRules.FindMyRule", 25, 2, v38, v39 & 1, v37);

  v40 = type metadata accessor for NLRouterServiceRequest(0);
  sub_1DC28F358(a1 + *(v40 + 32), v24, &qword_1ECC7C158, &unk_1DC5234A0);
  v41 = type metadata accessor for NLRouterTurnProbingResult(0);
  if (__swift_getEnumTagSinglePayload(v24, 1, v41) == 1)
  {
    sub_1DC28EB30(v24, &qword_1ECC7C158, &unk_1DC5234A0);
    __swift_storeEnumTagSinglePayload(v28, 1, 1, v29);
LABEL_4:
    sub_1DC28EB30(v28, &qword_1ECC7C160, qword_1DC5233B0);
    __swift_storeEnumTagSinglePayload(v112, 1, 1, v113);
    v43 = v110;
    v42 = v111;
LABEL_19:
    v68 = sub_1DC2BE518();
    sub_1DC2B8848(v37, "HeuristicRules.FindMyRule", 25, 2, v68);

    (*(v43 + 8))(v37, v42);
    return;
  }

  sub_1DC28F358(v24, v28, &qword_1ECC7C160, qword_1DC5233B0);
  sub_1DC2E5408(v24, type metadata accessor for NLRouterTurnProbingResult);
  if (__swift_getEnumTagSinglePayload(v28, 1, v29) == 1)
  {
    goto LABEL_4;
  }

  v44 = v28;
  v45 = v105;
  sub_1DC2E53A4(v44, v105);
  v46 = type metadata accessor for HeuristicRoutingRequest(0);
  v47 = v104;
  v48 = *(v104 + 16);
  v97 = *(v46 + 20);
  v49 = v113;
  v48(v109, a1 + v97, v113);
  sub_1DC298C74(0, &qword_1ECC7B9B0, 0x1E695E000);
  v50 = sub_1DC3440A4();
  v52 = v51;
  if (v50 == sub_1DC312FB4(0) && v52 == v53)
  {

    goto LABEL_15;
  }

  v55 = sub_1DC51825C();

  if (v55)
  {
LABEL_15:
    v64 = v109;
    v65 = sub_1DC5157DC();
    sub_1DC2E5408(v45, type metadata accessor for NLRouterNLParseResponse);
    if (v65)
    {
      (*(v47 + 8))(v64, v49);
      v66 = 1;
      v67 = v112;
    }

    else
    {
      v67 = v112;
      (*(v47 + 32))(v112, v64, v49);
      v66 = 0;
    }

    v43 = v110;
    v42 = v111;
    __swift_storeEnumTagSinglePayload(v67, v66, 1, v49);
    goto LABEL_19;
  }

  v56 = sub_1DC3440A4();
  v58 = sub_1DC312F68(v56, v57);
  if (v58 == 4)
  {
    v59 = v103;
    v60 = OUTLINED_FUNCTION_34_11();
    __swift_storeEnumTagSinglePayload(v60, v61, 1, v49);
LABEL_14:
    sub_1DC28EB30(v59, &qword_1ECC7CA40, &unk_1DC5233A0);
    goto LABEL_15;
  }

  v59 = v103;
  sub_1DC312E7C(v58, v103);
  v62 = OUTLINED_FUNCTION_34_11();
  if (__swift_getEnumTagSinglePayload(v62, v63, v49) == 1)
  {
    goto LABEL_14;
  }

  v69 = *(v47 + 32);
  v92 = v47 + 32;
  v91 = v69;
  v69(v100, v59, v49);
  v93 = *(*v45 + 16);
  if (!v93)
  {
LABEL_29:
    v47 = v104;
    v49 = v113;
    (*(v104 + 8))(v100, v113);
    goto LABEL_15;
  }

  v70 = 0;
  OUTLINED_FUNCTION_24();
  v73 = v71 + v72;
  v103 = v108 + 16;
  v95 = (v74 + 8);
  v96 = v108 + 8;
  v90 = v71;
  v89 = v71 + v72;
  v88[1] = v74 + 16;
  while (2)
  {
    if (v70 < *(v71 + 16))
    {
      (*(v99 + 16))(v101, v73 + *(v99 + 72) * v70, v102);
      v94 = v70 + 1;
      v75 = sub_1DC5111AC();
      v76 = 0;
      v77 = *(v75 + 16);
      while (v77 != v76)
      {
        if (v76 >= *(v75 + 16))
        {
          __break(1u);
          goto LABEL_31;
        }

        v79 = v107;
        v78 = v108;
        OUTLINED_FUNCTION_24();
        v81 = v106;
        (*(v78 + 16))(v106, v75 + v80 + *(v78 + 72) * v76++, v79);
        sub_1DC410400();
        v83 = v82;
        (*(v78 + 8))(v81, v79);
        if (v83)
        {
          (*v95)(v101, v102);

          v84 = v98;
          v85 = v100;
          v86 = v109;
          sub_1DC32DE40();
          v47 = v104;
          v87 = *(v104 + 8);
          v49 = v113;
          v87(v85, v113);
          v87(v86, v49);
          v91(v86, v84, v49);
          v45 = v105;
          goto LABEL_15;
        }
      }

      (*v95)(v101, v102);

      v70 = v94;
      v45 = v105;
      v71 = v90;
      v73 = v89;
      if (v94 != v93)
      {
        continue;
      }

      goto LABEL_29;
    }

    break;
  }

LABEL_31:
  __break(1u);
}

void sub_1DC410400()
{
  sub_1DC51133C();
  OUTLINED_FUNCTION_0();
  v138 = v1;
  v139 = v2;
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_15();
  v129 = v3;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_62();
  v130 = v5;
  OUTLINED_FUNCTION_12();
  v135 = sub_1DC51166C();
  OUTLINED_FUNCTION_0();
  v128 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_15();
  v134 = v8;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_62();
  v133 = v10;
  OUTLINED_FUNCTION_12();
  sub_1DC5116FC();
  OUTLINED_FUNCTION_0();
  v136 = v11;
  v137 = v12;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_15();
  v131 = v13;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_62();
  v132 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C228, &qword_1DC523028);
  v17 = OUTLINED_FUNCTION_10(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v118 - v19;
  v21 = sub_1DC510FDC();
  OUTLINED_FUNCTION_0();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v118 - v27;
  sub_1DC51179C();
  OUTLINED_FUNCTION_0();
  v30 = v29;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v33);
  v34 = v0;
  sub_1DC51154C();
  v35 = sub_1DC51177C();
  v36 = *(v30 + 8);
  v37 = OUTLINED_FUNCTION_30();
  v36(v37);
  if (v35)
  {
    v121 = v20;
    type metadata accessor for NLRouterBypassUtils();
    v122 = v34;
    sub_1DC51154C();
    sub_1DC51178C();
    v38 = OUTLINED_FUNCTION_30();
    v36(v38);
    v39 = sub_1DC307E5C(v28);
    v40 = *(v23 + 8);
    v40(v28, v21);
    if (v39)
    {
      v120 = v36;

      sub_1DC51478C();

      sub_1DC28F358(v143, v141, &qword_1ECC7D3F0, &qword_1DC5238B0);
      if (v142)
      {
        v41 = sub_1DC514CBC();
        if (OUTLINED_FUNCTION_8_22(v41))
        {

          sub_1DC51154C();
          sub_1DC51178C();
          v42 = OUTLINED_FUNCTION_11_29();
          v43(v42);
          v44 = sub_1DC510FCC();
          v45 = OUTLINED_FUNCTION_36();
          (v40)(v45);
          v127 = *(v44 + 16);
          if (v127)
          {
            v119 = v39;
            v46 = 0;
            OUTLINED_FUNCTION_24();
            v131 = v44 + v47;
            v129 = v48 + 16;
            v126 = v48 + 8;
            LODWORD(v124) = *MEMORY[0x1E69D0A70];
            v123 = v128 + 13;
            v122 = v128 + 1;
            v128 = 0x80000001DC546FC0;
            v49 = v136;
            v50 = v132;
            v125 = v44;
            while (v46 < *(v44 + 16))
            {
              (*(v137 + 16))(v50, v131 + *(v137 + 72) * v46, v49);
              if (sub_1DC5116CC())
              {
                v51 = v133;
                sub_1DC5116BC();
                OUTLINED_FUNCTION_37();
                v53 = v134;
                v52 = v135;
                v54(v134, v124, v135);
                sub_1DC360110();
                OUTLINED_FUNCTION_36();
                sub_1DC5179EC();
                OUTLINED_FUNCTION_36();
                sub_1DC5179EC();
                v55 = *v122;
                v56 = v53;
                v44 = v125;
                (*v122)(v56, v52);
                v57 = v51;
                v58 = v130;
                v50 = v132;
                v55(v57, v52);
                v49 = v136;
                if (v141[0] == v140)
                {
                  v59 = sub_1DC51167C();
                  v60 = *(v59 + 16);
                  if (v60)
                  {
                    v61 = 0;
                    v62 = v138;
                    OUTLINED_FUNCTION_24();
                    v64 = v59 + v63;
                    while (1)
                    {
                      if (v61 >= *(v59 + 16))
                      {
                        goto LABEL_73;
                      }

                      (*(v139 + 16))(v58, v64 + *(v139 + 72) * v61, v62);
                      if (sub_1DC51132C())
                      {
                        if (sub_1DC51131C() == 0x614E6E6F73726570 && v65 == 0xEA0000000000656DLL)
                        {

                          OUTLINED_FUNCTION_9_27();

                          goto LABEL_66;
                        }

                        v67 = sub_1DC51825C();

                        if (v67)
                        {

                          OUTLINED_FUNCTION_9_27();
LABEL_66:

                          v112 = OUTLINED_FUNCTION_5_2();
                          v113(v112, v138);
LABEL_69:
                          v49 = v136;
                          v116 = v137;
                          v107 = v121;
                          v117 = v132;
                          sub_1DC28EB30(v143, &qword_1ECC7D3F0, &qword_1DC5238B0);
                          (*(v116 + 32))(v107, v117, v49);
                          v106 = 0;
                          goto LABEL_70;
                        }

                        if (sub_1DC51131C() == 0xD000000000000012 && v128 == v68)
                        {

                          v114 = OUTLINED_FUNCTION_5_2();
                          v115(v114, v138);
LABEL_68:

                          OUTLINED_FUNCTION_9_27();

                          goto LABEL_69;
                        }

                        v70 = sub_1DC51825C();

                        v71 = OUTLINED_FUNCTION_5_2();
                        v62 = v138;
                        v72(v71, v138);
                        if (v70)
                        {
                          goto LABEL_68;
                        }
                      }

                      else
                      {
                        v73 = OUTLINED_FUNCTION_5_2();
                        v74(v73, v62);
                      }

                      if (v60 == ++v61)
                      {

                        v49 = v136;
                        v50 = v132;
                        v44 = v125;
                        goto LABEL_29;
                      }
                    }
                  }

                  v50 = v132;
                }
              }

LABEL_29:
              ++v46;
              OUTLINED_FUNCTION_37();
              v75(v50, v49);
              if (v46 == v127)
              {
                OUTLINED_FUNCTION_9_27();

                goto LABEL_58;
              }
            }

LABEL_74:
            __break(1u);
LABEL_75:
            __break(1u);
            return;
          }

          v49 = v136;
LABEL_58:
          sub_1DC28EB30(v143, &qword_1ECC7D3F0, &qword_1DC5238B0);
          v106 = 1;
          v107 = v121;
LABEL_70:
          __swift_storeEnumTagSinglePayload(v107, v106, 1, v49);
          v109 = OUTLINED_FUNCTION_34_11();
          v111 = v49;
          goto LABEL_71;
        }
      }

      else
      {
        sub_1DC28EB30(v141, &qword_1ECC7D3F0, &qword_1DC5238B0);
      }

      sub_1DC28F358(v143, v141, &qword_1ECC7D3F0, &qword_1DC5238B0);
      if (!v142)
      {
        sub_1DC28EB30(v143, &qword_1ECC7D3F0, &qword_1DC5238B0);

        sub_1DC28EB30(v141, &qword_1ECC7D3F0, &qword_1DC5238B0);
        return;
      }

      v76 = sub_1DC514DCC();
      if (OUTLINED_FUNCTION_8_22(v76))
      {

        sub_1DC51154C();
        sub_1DC51178C();
        v77 = OUTLINED_FUNCTION_11_29();
        v78(v77);
        v79 = sub_1DC510FCC();
        v80 = OUTLINED_FUNCTION_36();
        (v40)(v80);
        v81 = v79;
        v126 = *(v79 + 16);
        if (v126)
        {
          v82 = 0;
          OUTLINED_FUNCTION_24();
          v130 = v79 + v83;
          v127 = v84 + 16;
          v125 = v84 + 8;
          LODWORD(v122) = *MEMORY[0x1E69D0A70];
          v121 = (v128 + 13);
          ++v128;
          v85 = (v139 + 8);
          v132 = 0x80000001DC546FA0;
          v86 = v136;
          v87 = v131;
          v119 = v39;
          v124 = v79;
          while (v82 < *(v81 + 16))
          {
            (*(v137 + 16))(v87, v130 + *(v137 + 72) * v82, v86);
            if (sub_1DC5116CC())
            {
              v88 = v133;
              sub_1DC5116BC();
              OUTLINED_FUNCTION_37();
              v90 = v134;
              v89 = v135;
              v91(v134, v122, v135);
              sub_1DC360110();
              OUTLINED_FUNCTION_30();
              sub_1DC5179EC();
              OUTLINED_FUNCTION_30();
              v87 = v131;
              sub_1DC5179EC();
              v92 = *v128;
              (*v128)(v90, v89);
              v93 = v88;
              v94 = v129;
              v95 = v89;
              v81 = v124;
              v92(v93, v95);
              if (v141[0] == v140)
              {
                v96 = sub_1DC51167C();
                v97 = *(v96 + 16);
                v98 = v138;
                if (v97)
                {
                  v99 = 0;
                  OUTLINED_FUNCTION_24();
                  v101 = v96 + v100;
                  while (v99 < *(v96 + 16))
                  {
                    (*(v139 + 16))(v94, v101 + *(v139 + 72) * v99, v98);
                    if (sub_1DC51132C())
                    {
                      if (sub_1DC51131C() == 0xD000000000000010 && v132 == v102)
                      {

                        (*v85)(v94, v138);
LABEL_62:
                        sub_1DC28EB30(v143, &qword_1ECC7D3F0, &qword_1DC5238B0);

                        OUTLINED_FUNCTION_9_27();
                        v86 = v136;
                        v107 = v123;
                        (*(v137 + 32))(v123, v131, v136);
                        v108 = 0;
                        goto LABEL_63;
                      }

                      v104 = sub_1DC51825C();

                      v98 = v138;
                      (*v85)(v94, v138);
                      if (v104)
                      {
                        goto LABEL_62;
                      }
                    }

                    else
                    {
                      (*v85)(v94, v98);
                    }

                    if (v97 == ++v99)
                    {
                      goto LABEL_51;
                    }
                  }

                  __break(1u);
LABEL_73:
                  __break(1u);
                  goto LABEL_74;
                }

LABEL_51:

                v86 = v136;
                v87 = v131;
                v81 = v124;
              }
            }

            ++v82;
            OUTLINED_FUNCTION_37();
            v105(v87, v86);
            if (v82 == v126)
            {

              goto LABEL_60;
            }
          }

          goto LABEL_75;
        }

        v86 = v136;
LABEL_60:
        sub_1DC28EB30(v143, &qword_1ECC7D3F0, &qword_1DC5238B0);
        v108 = 1;
        v107 = v123;
LABEL_63:
        __swift_storeEnumTagSinglePayload(v107, v108, 1, v86);
        v109 = OUTLINED_FUNCTION_34_11();
        v111 = v86;
LABEL_71:
        __swift_getEnumTagSinglePayload(v109, v110, v111);
        sub_1DC28EB30(v107, &qword_1ECC7C228, &qword_1DC523028);
        return;
      }

      sub_1DC28EB30(v143, &qword_1ECC7D3F0, &qword_1DC5238B0);
    }
  }
}

uint64_t sub_1DC411250()
{
  sub_1DC297814();
  sub_1DC398E2C();

  result = sub_1DC517D7C();
  qword_1EDAC9590 = result;
  return result;
}

uint64_t sub_1DC41138C(uint64_t a1)
{
  v2 = qword_1ECC8F5C0;
  OUTLINED_FUNCTION_9_10(a1);
  return *(v1 + v2);
}

uint64_t sub_1DC4113C0(uint64_t a1)
{
  v2 = a1;
  v3 = qword_1ECC8F5C0;
  result = OUTLINED_FUNCTION_35_1(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1DC4114FC(uint64_t a1)
{
  v2 = a1;
  v3 = qword_1ECC8F5B8;
  result = OUTLINED_FUNCTION_35_1(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1DC411694()
{
  sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_38_1();
  (*(v1 + qword_1ECC8F590 + 312))(1);
  sub_1DC28D414();
  v2 = OUTLINED_FUNCTION_21_1();
  v3(v2);
  v4 = sub_1DC516F6C();
  v5 = sub_1DC517B9C();
  if (OUTLINED_FUNCTION_67_5(v5))
  {
    *OUTLINED_FUNCTION_35_8() = 0;
    OUTLINED_FUNCTION_45_11();
    _os_log_impl(v6, v7, v8, v9, v10, 2u);
    OUTLINED_FUNCTION_66();
  }

  v11 = OUTLINED_FUNCTION_36();
  return v12(v11);
}

void sub_1DC4117EC()
{
  OUTLINED_FUNCTION_33();
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1D8, &qword_1DC529390);
  OUTLINED_FUNCTION_10(v6);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_77_6();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_17_0();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D948, &unk_1DC52A108);
  OUTLINED_FUNCTION_10(v12);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_40_3();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D340, &qword_1DC525380);
  OUTLINED_FUNCTION_10(v14);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_42_11();
  v16 = sub_1DC515E1C();
  OUTLINED_FUNCTION_35();
  v17 = OUTLINED_FUNCTION_62_12();
  v18(v17);
  v19 = OUTLINED_FUNCTION_25_16();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v16);
  OUTLINED_FUNCTION_183();
  v22 = OUTLINED_FUNCTION_44_13();
  v23(v22);
  sub_1DC515AEC();
  sub_1DC51617C();
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
  (*(*v0 + qword_1ECC8F590 + 192))(v3);
  sub_1DC515ADC();
  sub_1DC51695C();
  sub_1DC28D414();
  v28 = OUTLINED_FUNCTION_66_11();
  v29(v28);
  v30 = v5;
  v31 = sub_1DC516F6C();
  v32 = sub_1DC517B9C();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = OUTLINED_FUNCTION_63();
    v34 = OUTLINED_FUNCTION_249();
    *v33 = 138412290;
    *(v33 + 4) = v30;
    *v34 = v30;
    v35 = v30;
    OUTLINED_FUNCTION_78_10(&dword_1DC287000, v36, v37, "NLRequestProcessor received message: %@");
    sub_1DC28EB30(v34, &qword_1ECC7DFE0, &qword_1DC5227F0);
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_66();
  }

  (*(v10 + 8))(v2, v8);
  sub_1DC515D6C();
  sub_1DC515DFC();
  OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v38, v39, v40, v41);
  sub_1DC515ADC();
  sub_1DC2C6024();

  sub_1DC28EB30(v1, &qword_1ECC7C1D8, &qword_1DC529390);
  OUTLINED_FUNCTION_34();
}

void sub_1DC411B68()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v4 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_65();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D340, &qword_1DC525380);
  OUTLINED_FUNCTION_10(v8);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_42_11();
  v10 = *MEMORY[0x1E69D0508];
  v11 = sub_1DC515E1C();
  OUTLINED_FUNCTION_35();
  (*(v12 + 104))(v0, v10, v11);
  v13 = OUTLINED_FUNCTION_25_16();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v11);
  OUTLINED_FUNCTION_183();
  v16 = OUTLINED_FUNCTION_44_13();
  v17(v16);
  v18 = sub_1DC28D414();
  (*(v6 + 16))(v1, v18, v4);
  v19 = v3;
  v20 = sub_1DC516F6C();
  v21 = sub_1DC517B9C();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = OUTLINED_FUNCTION_63();
    v23 = OUTLINED_FUNCTION_249();
    *v22 = 138412290;
    *(v22 + 4) = v19;
    *v23 = v19;
    v24 = v19;
    _os_log_impl(&dword_1DC287000, v20, v21, "NLRequestProcessor received message: %@", v22, 0xCu);
    sub_1DC28EB30(v23, &qword_1ECC7DFE0, &qword_1DC5227F0);
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_54_12();
  }

  (*(v6 + 8))(v1, v4);
  sub_1DC2C664C();
  OUTLINED_FUNCTION_34();
}

void sub_1DC411DBC()
{
  OUTLINED_FUNCTION_33();
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1D8, &qword_1DC529390);
  OUTLINED_FUNCTION_10(v7);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_77_6();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_17_0();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D340, &qword_1DC525380);
  OUTLINED_FUNCTION_10(v13);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_42_11();
  v15 = *v4;
  v16 = sub_1DC515E1C();
  OUTLINED_FUNCTION_35();
  (*(v17 + 104))(v0, v15, v16);
  v18 = OUTLINED_FUNCTION_25_16();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v16);
  OUTLINED_FUNCTION_183();
  v21 = OUTLINED_FUNCTION_44_13();
  v22(v21);
  sub_1DC28D414();
  v23 = OUTLINED_FUNCTION_66_11();
  v24(v23);
  v25 = v6;
  v26 = sub_1DC516F6C();
  LOBYTE(v15) = sub_1DC517B9C();

  if (os_log_type_enabled(v26, v15))
  {
    v27 = OUTLINED_FUNCTION_63();
    v28 = OUTLINED_FUNCTION_249();
    *v27 = 138412290;
    *(v27 + 4) = v25;
    *v28 = v25;
    v29 = v25;
    OUTLINED_FUNCTION_78_10(&dword_1DC287000, v30, v31, "NLRequestProcessor received message: %@");
    sub_1DC28EB30(v28, &qword_1ECC7DFE0, &qword_1DC5227F0);
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_66();
  }

  (*(v11 + 8))(v2, v9);
  sub_1DC515D6C();
  sub_1DC515DFC();
  OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
  sub_1DC2C6024();

  sub_1DC28EB30(v1, &qword_1ECC7C1D8, &qword_1DC529390);
  OUTLINED_FUNCTION_34();
}

void sub_1DC412074()
{
  OUTLINED_FUNCTION_33();
  v2 = v0;
  v4 = v3;
  sub_1DC510B6C();
  OUTLINED_FUNCTION_0();
  v38 = v6;
  v39 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_4();
  v7 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D340, &qword_1DC525380);
  OUTLINED_FUNCTION_10(v14);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_42_11();
  v16 = sub_1DC515E1C();
  OUTLINED_FUNCTION_35();
  v17 = OUTLINED_FUNCTION_62_12();
  v18(v17);
  v19 = OUTLINED_FUNCTION_25_16();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v16);
  OUTLINED_FUNCTION_233();
  (*(v22 + qword_1ECC8F590 + 168))(v0);
  sub_1DC28D414();
  OUTLINED_FUNCTION_55_10();
  v23(v13);
  v24 = v4;
  v25 = sub_1DC516F6C();
  v26 = sub_1DC517B9C();

  if (os_log_type_enabled(v25, v26))
  {
    OUTLINED_FUNCTION_63();
    v27 = OUTLINED_FUNCTION_31_17();
    *v16 = 138412290;
    *(v16 + 4) = v24;
    *v27 = v24;
    v28 = v24;
    _os_log_impl(&dword_1DC287000, v25, v26, "NLRequestProcessor received message: %@", v16, 0xCu);
    sub_1DC28EB30(v27, &qword_1ECC7DFE0, &qword_1DC5227F0);
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_66();
  }

  (*(v9 + 8))(v13, v7);
  sub_1DC2C664C();
  sub_1DC28FB9C(v2 + qword_1ECC7BCF0, v41);
  v29 = v42;
  v30 = v43;
  __swift_project_boxed_opaque_existential_1(v41, v42);
  sub_1DC5169EC();
  v31 = sub_1DC515D6C();
  v33 = v32;
  v40[3] = type metadata accessor for NLRequestProcessor(0);
  v40[4] = &off_1F57FCBA0;
  v40[0] = v2;
  v34 = *(*v2 + qword_1ECC8F590 + 328);

  v36 = v34(v35);
  (*(v30 + 40))(v1, v31, v33, v40, v36, v37, v29, v30);

  (*(v38 + 8))(v1, v39);
  __swift_destroy_boxed_opaque_existential_1Tm(v40);
  __swift_destroy_boxed_opaque_existential_1Tm(v41);
  OUTLINED_FUNCTION_34();
}

uint64_t sub_1DC412430()
{
  OUTLINED_FUNCTION_70_11();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_38_1();
  if ((*(v2 + qword_1ECC8F590 + 232))())
  {
    OUTLINED_FUNCTION_110();
    (*(v3 + 768))(v0);
  }

  else
  {
    sub_1DC28D414();
    v5 = OUTLINED_FUNCTION_21_1();
    v6(v5);
    v7 = sub_1DC516F6C();
    v8 = sub_1DC517BAC();
    if (OUTLINED_FUNCTION_67_5(v8))
    {
      *OUTLINED_FUNCTION_35_8() = 0;
      OUTLINED_FUNCTION_45_11();
      _os_log_impl(v9, v10, v11, v12, v13, 2u);
      OUTLINED_FUNCTION_66();
    }

    v14 = OUTLINED_FUNCTION_36();
    return v15(v14);
  }
}

void sub_1DC4125CC()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_11_30();
  v3 = sub_1DC510B6C();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_4();
  v7 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1();
  v13 = v12 - v11;
  sub_1DC28D414();
  OUTLINED_FUNCTION_55_10();
  v14(v13);
  v15 = v2;
  v16 = sub_1DC516F6C();
  sub_1DC517B9C();

  if (OUTLINED_FUNCTION_63_10())
  {
    OUTLINED_FUNCTION_63();
    v24 = v5;
    v17 = OUTLINED_FUNCTION_31_17();
    OUTLINED_FUNCTION_36_18(v17, 5.7779e-34);
    OUTLINED_FUNCTION_66_0(&dword_1DC287000, v18, v19, "NLRequestProcessor received message: %@");
    sub_1DC28EB30(v17, &qword_1ECC7DFE0, &qword_1DC5227F0);
    v5 = v24;
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_66();
  }

  (*(v9 + 8))(v13, v7);
  OUTLINED_FUNCTION_233();
  (*(v20 + qword_1ECC8F590 + 336))();
  OUTLINED_FUNCTION_110();
  (*(v21 + 144))();

  (*(*v1 + qword_1ECC8F590 + 216))(1);
  sub_1DC28FB9C(v1 + qword_1ECC7BCF0, v25);
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  sub_1DC5169EC();
  sub_1DC515D6C();
  v22 = OUTLINED_FUNCTION_38_13();
  v23(v22);

  (*(v5 + 8))(v0, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  OUTLINED_FUNCTION_34();
}

void sub_1DC4128A0()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_11_30();
  sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_34();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_40_2();
  v5 = OUTLINED_FUNCTION_3_31();
  v6(v5);
  v7 = v1;
  v8 = sub_1DC516F6C();
  v9 = sub_1DC517B9C();

  if (OUTLINED_FUNCTION_63_10())
  {
    OUTLINED_FUNCTION_63();
    OUTLINED_FUNCTION_23_23();
    OUTLINED_FUNCTION_22_17();
    OUTLINED_FUNCTION_36_18(v10, 5.7779e-34);
    OUTLINED_FUNCTION_66_0(&dword_1DC287000, v11, v12, "NLRequestProcessor received message: %@");
    sub_1DC28EB30(v2, &qword_1ECC7DFE0, &qword_1DC5227F0);
    OUTLINED_FUNCTION_13_26();
    OUTLINED_FUNCTION_24_15();
  }

  v13 = OUTLINED_FUNCTION_21_17();
  v9(v13);
  OUTLINED_FUNCTION_233();
  OUTLINED_FUNCTION_65_5();
  if (v14())
  {
    OUTLINED_FUNCTION_110();
    (*(v15 + 680))(v7);
  }

  else
  {
    v16 = OUTLINED_FUNCTION_9_28();
    v17(v16);
    v18 = OUTLINED_FUNCTION_69_9(v7);
    sub_1DC517BAC();

    if (OUTLINED_FUNCTION_169())
    {
      OUTLINED_FUNCTION_63();
      v19 = OUTLINED_FUNCTION_26_18();
      OUTLINED_FUNCTION_35_18(v19, 5.7779e-34);
      OUTLINED_FUNCTION_14_17(&dword_1DC287000, v20, v21, "Unexpected nil assistantHandler while handling %@");
      sub_1DC28EB30(v19, &qword_1ECC7DFE0, &qword_1DC5227F0);
      OUTLINED_FUNCTION_54_12();
      OUTLINED_FUNCTION_31();
    }

    v22 = OUTLINED_FUNCTION_117_0();
    v9(v22);
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC412AE0(void *a1)
{
  v2 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  v8 = v7 - v6;
  v9 = sub_1DC28D414();
  (*(v4 + 16))(v8, v9, v2);
  v10 = a1;
  v11 = sub_1DC516F6C();
  v12 = sub_1DC517B9C();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = OUTLINED_FUNCTION_63();
    v14 = OUTLINED_FUNCTION_249();
    OUTLINED_FUNCTION_54_15(v14, 5.7779e-34);
    _os_log_impl(&dword_1DC287000, v11, v12, "NLRequestProcessor received message: %@", v13, 0xCu);
    sub_1DC28EB30(v14, &qword_1ECC7DFE0, &qword_1DC5227F0);
    OUTLINED_FUNCTION_54_12();
    OUTLINED_FUNCTION_67();
  }

  (*(v4 + 8))(v8, v2);
  OUTLINED_FUNCTION_154();
}

void sub_1DC412C48()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_11_30();
  sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_34();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_40_2();
  v5 = OUTLINED_FUNCTION_3_31();
  v6(v5);
  v7 = v1;
  v8 = sub_1DC516F6C();
  v9 = sub_1DC517B9C();

  if (OUTLINED_FUNCTION_63_10())
  {
    OUTLINED_FUNCTION_63();
    OUTLINED_FUNCTION_23_23();
    OUTLINED_FUNCTION_22_17();
    OUTLINED_FUNCTION_36_18(v10, 5.7779e-34);
    OUTLINED_FUNCTION_66_0(&dword_1DC287000, v11, v12, "NLRequestProcessor received message: %@");
    sub_1DC28EB30(v2, &qword_1ECC7DFE0, &qword_1DC5227F0);
    OUTLINED_FUNCTION_13_26();
    OUTLINED_FUNCTION_24_15();
  }

  v13 = OUTLINED_FUNCTION_21_17();
  v9(v13);
  OUTLINED_FUNCTION_233();
  OUTLINED_FUNCTION_65_5();
  if (v14())
  {
    OUTLINED_FUNCTION_110();
    (*(v15 + 688))(v7);
  }

  else
  {
    v16 = OUTLINED_FUNCTION_9_28();
    v17(v16);
    v18 = OUTLINED_FUNCTION_69_9(v7);
    sub_1DC517BAC();

    if (OUTLINED_FUNCTION_169())
    {
      OUTLINED_FUNCTION_63();
      v19 = OUTLINED_FUNCTION_26_18();
      OUTLINED_FUNCTION_35_18(v19, 5.7779e-34);
      OUTLINED_FUNCTION_14_17(&dword_1DC287000, v20, v21, "Unexpected nil assistantHandler while handling %@");
      sub_1DC28EB30(v19, &qword_1ECC7DFE0, &qword_1DC5227F0);
      OUTLINED_FUNCTION_54_12();
      OUTLINED_FUNCTION_31();
    }

    v22 = OUTLINED_FUNCTION_117_0();
    v9(v22);
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC412E88()
{
  OUTLINED_FUNCTION_33();
  v3 = v0;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1D8, &qword_1DC529390);
  OUTLINED_FUNCTION_10(v6);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_17_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D340, &qword_1DC525380);
  OUTLINED_FUNCTION_10(v8);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_76_8();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8();
  v47 = (v14 - v15);
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v16);
  v17 = OUTLINED_FUNCTION_40_2();
  v45 = *(v12 + 16);
  v46 = v17;
  v48 = v10;
  v45(v0);
  v18 = v5;
  v19 = sub_1DC516F6C();
  v20 = sub_1DC517BAC();

  if (os_log_type_enabled(v19, v20))
  {
    OUTLINED_FUNCTION_63();
    v44 = v12;
    v21 = OUTLINED_FUNCTION_26_18();
    *v10 = 138412290;
    *(v10 + 4) = v18;
    *v21 = v18;
    v22 = v18;
    OUTLINED_FUNCTION_79_9(&dword_1DC287000, v23, v24, "NLRequestProcessor received message: %@");
    sub_1DC28EB30(v21, &qword_1ECC7DFE0, &qword_1DC5227F0);
    v12 = v44;
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_31();
  }

  v25 = *(v12 + 8);
  v25(v0, v10);
  v26 = *MEMORY[0x1E69D0550];
  v27 = sub_1DC515E1C();
  OUTLINED_FUNCTION_35();
  (*(v28 + 104))(v2, v26, v27);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v27);
  OUTLINED_FUNCTION_233();
  (*(v32 + qword_1ECC8F590 + 168))(v2);
  sub_1DC515D6C();
  sub_1DC515DFC();
  OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  sub_1DC2C6024();

  v37 = sub_1DC28EB30(v1, &qword_1ECC7C1D8, &qword_1DC529390);
  if ((*(*v3 + qword_1ECC8F590 + 232))(v37))
  {
    OUTLINED_FUNCTION_110();
    (*(v38 + 704))(v18);
  }

  else
  {
    (v45)(v47, v46, v48);
    v39 = v18;
    v40 = sub_1DC516F6C();
    sub_1DC517BAC();

    if (OUTLINED_FUNCTION_169())
    {
      OUTLINED_FUNCTION_63();
      v41 = OUTLINED_FUNCTION_26_18();
      OUTLINED_FUNCTION_35_18(v41, 5.7779e-34);
      OUTLINED_FUNCTION_14_17(&dword_1DC287000, v42, v43, "Unexpected nil assistantHandler while handling %@");
      sub_1DC28EB30(v41, &qword_1ECC7DFE0, &qword_1DC5227F0);
      OUTLINED_FUNCTION_67();
      OUTLINED_FUNCTION_31();
    }

    v25(v47, v48);
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC4132AC()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_11_30();
  sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_34();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_40_2();
  v5 = OUTLINED_FUNCTION_3_31();
  v6(v5);
  v7 = v1;
  v8 = sub_1DC516F6C();
  v9 = sub_1DC517B9C();

  if (OUTLINED_FUNCTION_63_10())
  {
    OUTLINED_FUNCTION_63();
    OUTLINED_FUNCTION_23_23();
    OUTLINED_FUNCTION_22_17();
    OUTLINED_FUNCTION_36_18(v10, 5.7779e-34);
    OUTLINED_FUNCTION_66_0(&dword_1DC287000, v11, v12, "NLRequestProcessor received message: %@");
    sub_1DC28EB30(v2, &qword_1ECC7DFE0, &qword_1DC5227F0);
    OUTLINED_FUNCTION_13_26();
    OUTLINED_FUNCTION_24_15();
  }

  v13 = OUTLINED_FUNCTION_21_17();
  v9(v13);
  OUTLINED_FUNCTION_233();
  OUTLINED_FUNCTION_65_5();
  if (v14())
  {
    OUTLINED_FUNCTION_110();
    (*(v15 + 720))(v7);
  }

  else
  {
    v16 = OUTLINED_FUNCTION_9_28();
    v17(v16);
    v18 = OUTLINED_FUNCTION_69_9(v7);
    sub_1DC517BAC();

    if (OUTLINED_FUNCTION_169())
    {
      OUTLINED_FUNCTION_63();
      v19 = OUTLINED_FUNCTION_26_18();
      OUTLINED_FUNCTION_35_18(v19, 5.7779e-34);
      OUTLINED_FUNCTION_14_17(&dword_1DC287000, v20, v21, "Unexpected nil assistantHandler while handling %@");
      sub_1DC28EB30(v19, &qword_1ECC7DFE0, &qword_1DC5227F0);
      OUTLINED_FUNCTION_54_12();
      OUTLINED_FUNCTION_31();
    }

    v22 = OUTLINED_FUNCTION_117_0();
    v9(v22);
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC4134EC()
{
  OUTLINED_FUNCTION_33();
  v4 = v1;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7C1D8, &qword_1DC529390);
  OUTLINED_FUNCTION_10(v7);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_17_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7D340, &qword_1DC525380);
  OUTLINED_FUNCTION_10(v9);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_76_8();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_98_1();
  MEMORY[0x1EEE9AC00](v15);
  v44 = OUTLINED_FUNCTION_40_2();
  v46 = v11;
  v43 = *(v13 + 16);
  v43(v1);
  v16 = v6;
  v17 = sub_1DC516F6C();
  v18 = sub_1DC517B9C();

  if (os_log_type_enabled(v17, v18))
  {
    OUTLINED_FUNCTION_63();
    v45 = v2;
    v19 = v0;
    v20 = v13;
    v21 = OUTLINED_FUNCTION_26_18();
    *v11 = 138412290;
    *(v11 + 4) = v16;
    *v21 = v16;
    v22 = v16;
    OUTLINED_FUNCTION_79_9(&dword_1DC287000, v23, v24, "NLRequestProcessor received message: %@");
    sub_1DC28EB30(v21, &qword_1ECC7DFE0, &qword_1DC5227F0);
    v13 = v20;
    v0 = v19;
    v2 = v45;
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_31();
  }

  v25 = *(v13 + 8);
  v25(v1, v11);
  v26 = *MEMORY[0x1E69D0548];
  v27 = sub_1DC515E1C();
  OUTLINED_FUNCTION_35();
  (*(v28 + 104))(v3, v26, v27);
  OUTLINED_FUNCTION_61();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v27);
  OUTLINED_FUNCTION_233();
  (*(v32 + qword_1ECC8F590 + 168))(v3);
  sub_1DC515C4C();
  if (swift_dynamicCastClass())
  {
    sub_1DC515C3C();
  }

  sub_1DC515D6C();
  sub_1DC515DFC();
  OUTLINED_FUNCTION_19();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  sub_1DC2C6024();

  v37 = sub_1DC28EB30(v2, &qword_1ECC7C1D8, &qword_1DC529390);
  if ((*(*v4 + qword_1ECC8F590 + 232))(v37))
  {
  }

  else
  {
    (v43)(v0, v44, v46);
    v38 = v16;
    v39 = sub_1DC516F6C();
    sub_1DC517BAC();

    if (OUTLINED_FUNCTION_169())
    {
      OUTLINED_FUNCTION_63();
      v40 = OUTLINED_FUNCTION_26_18();
      OUTLINED_FUNCTION_35_18(v40, 5.7779e-34);
      OUTLINED_FUNCTION_14_17(&dword_1DC287000, v41, v42, "Unexpected nil assistantHandler while handling %@");
      sub_1DC28EB30(v40, &qword_1ECC7DFE0, &qword_1DC5227F0);
      OUTLINED_FUNCTION_67();
      OUTLINED_FUNCTION_31();
    }

    v25(v0, v46);
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC413924()
{
  OUTLINED_FUNCTION_70_11();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_38_1();
  if ((*(v2 + qword_1ECC8F590 + 232))())
  {
    OUTLINED_FUNCTION_110();
    (*(v3 + 744))(v0);
    OUTLINED_FUNCTION_154();
  }

  else
  {
    sub_1DC28D414();
    v5 = OUTLINED_FUNCTION_21_1();
    v6(v5);
    v7 = v0;
    v8 = sub_1DC516F6C();
    sub_1DC517BAC();

    if (OUTLINED_FUNCTION_169())
    {
      OUTLINED_FUNCTION_63();
      v9 = OUTLINED_FUNCTION_249();
      OUTLINED_FUNCTION_54_15(v9, 5.7779e-34);
      OUTLINED_FUNCTION_52_14(&dword_1DC287000, v10, v11, "Unexpected nil assistantHandler while handling %@");
      sub_1DC28EB30(v9, &qword_1ECC7DFE0, &qword_1DC5227F0);
      OUTLINED_FUNCTION_54_12();
      OUTLINED_FUNCTION_67();
    }

    v12 = OUTLINED_FUNCTION_36();
    v13(v12);
    OUTLINED_FUNCTION_154();
  }
}

void sub_1DC413AF4()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC7D948, &unk_1DC52A108);
  OUTLINED_FUNCTION_10(v3);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v59 - v5;
  v64 = sub_1DC51617C();
  OUTLINED_FUNCTION_0();
  v61 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1();
  v60 = v10 - v9;
  OUTLINED_FUNCTION_12();
  v11 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_8();
  v63 = (v15 - v16);
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v17);
  v62 = &v59 - v18;
  OUTLINED_FUNCTION_22();
  MEMORY[0x1EEE9AC00](v19);
  v20 = OUTLINED_FUNCTION_40_2();
  v21 = *(v13 + 16);
  v65 = v20;
  v66 = v21;
  (v21)(v0);
  v22 = v2;
  v23 = sub_1DC516F6C();
  v24 = sub_1DC517B9C();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = OUTLINED_FUNCTION_63();
    v59 = v13;
    v26 = v11;
    v27 = v25;
    v28 = OUTLINED_FUNCTION_249();
    *v27 = 138412290;
    *(v27 + 4) = v22;
    *v28 = v22;
    v29 = v22;
    _os_log_impl(&dword_1DC287000, v23, v24, "NLRequestProcessor received message: %@", v27, 0xCu);
    sub_1DC28EB30(v28, &qword_1ECC7DFE0, &qword_1DC5227F0);
    OUTLINED_FUNCTION_66();
    v11 = v26;
    v13 = v59;
    OUTLINED_FUNCTION_66();
  }

  v30 = *(v13 + 8);
  v31 = v30(v0, v11);
  if (!(*(*v0 + qword_1ECC8F590 + 232))(v31))
  {
    v43 = v63;
    v66(v63, v65, v11);
    v44 = v22;
    v45 = sub_1DC516F6C();
    v46 = sub_1DC517BAC();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = v11;
      v48 = OUTLINED_FUNCTION_63();
      v49 = OUTLINED_FUNCTION_249();
      *v48 = 138412290;
      *(v48 + 4) = v44;
      *v49 = v44;
      v50 = v44;
      OUTLINED_FUNCTION_45_11();
      _os_log_impl(v51, v52, v53, v54, v55, 0xCu);
      sub_1DC28EB30(v49, &qword_1ECC7DFE0, &qword_1DC5227F0);
      OUTLINED_FUNCTION_67();
      v11 = v47;
      OUTLINED_FUNCTION_66();
    }

    v41 = v43;
    goto LABEL_12;
  }

  (*(*v0 + qword_1ECC8F590 + 184))();
  v32 = v64;
  if (__swift_getEnumTagSinglePayload(v6, 1, v64) == 1)
  {
    sub_1DC28EB30(v6, &qword_1ECC7D948, &unk_1DC52A108);
    v33 = v62;
    v66(v62, v65, v11);
    v34 = sub_1DC516F6C();
    v35 = sub_1DC517BAC();
    if (OUTLINED_FUNCTION_67_5(v35))
    {
      *OUTLINED_FUNCTION_35_8() = 0;
      OUTLINED_FUNCTION_45_11();
      _os_log_impl(v36, v37, v38, v39, v40, 2u);
      OUTLINED_FUNCTION_66();

      v41 = v33;
      v42 = v11;
LABEL_13:
      v30(v41, v42);
      goto LABEL_14;
    }

    v41 = v33;
LABEL_12:
    v42 = v11;
    goto LABEL_13;
  }

  v57 = v60;
  v56 = v61;
  (*(v61 + 32))(v60, v6, v32);
  OUTLINED_FUNCTION_64_2();
  (*(v58 + 712))(v22, v57);

  (*(v56 + 8))(v57, v32);
LABEL_14:
  OUTLINED_FUNCTION_34();
}

void sub_1DC414018()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_11_30();
  sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_34();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_40_2();
  v5 = OUTLINED_FUNCTION_3_31();
  v6(v5);
  v7 = v1;
  v8 = sub_1DC516F6C();
  v9 = sub_1DC517B9C();

  if (OUTLINED_FUNCTION_63_10())
  {
    OUTLINED_FUNCTION_63();
    OUTLINED_FUNCTION_23_23();
    OUTLINED_FUNCTION_22_17();
    OUTLINED_FUNCTION_36_18(v10, 5.7779e-34);
    OUTLINED_FUNCTION_66_0(&dword_1DC287000, v11, v12, "NLRequestProcessor received message: %@");
    sub_1DC28EB30(v2, &qword_1ECC7DFE0, &qword_1DC5227F0);
    OUTLINED_FUNCTION_13_26();
    OUTLINED_FUNCTION_24_15();
  }

  v13 = OUTLINED_FUNCTION_21_17();
  v9(v13);
  OUTLINED_FUNCTION_233();
  OUTLINED_FUNCTION_65_5();
  if (v14())
  {
    OUTLINED_FUNCTION_110();
    (*(v15 + 728))(v7);
  }

  else
  {
    v16 = OUTLINED_FUNCTION_9_28();
    v17(v16);
    v18 = OUTLINED_FUNCTION_69_9(v7);
    sub_1DC517BAC();

    if (OUTLINED_FUNCTION_169())
    {
      OUTLINED_FUNCTION_63();
      v19 = OUTLINED_FUNCTION_26_18();
      OUTLINED_FUNCTION_35_18(v19, 5.7779e-34);
      OUTLINED_FUNCTION_14_17(&dword_1DC287000, v20, v21, "Unexpected nil assistantHandler while handling %@");
      sub_1DC28EB30(v19, &qword_1ECC7DFE0, &qword_1DC5227F0);
      OUTLINED_FUNCTION_54_12();
      OUTLINED_FUNCTION_31();
    }

    v22 = OUTLINED_FUNCTION_117_0();
    v9(v22);
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC414258()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_11_30();
  sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_34();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_40_2();
  v5 = OUTLINED_FUNCTION_3_31();
  v6(v5);
  v7 = v1;
  v8 = sub_1DC516F6C();
  v9 = sub_1DC517B9C();

  if (OUTLINED_FUNCTION_63_10())
  {
    OUTLINED_FUNCTION_63();
    OUTLINED_FUNCTION_23_23();
    OUTLINED_FUNCTION_22_17();
    OUTLINED_FUNCTION_36_18(v10, 5.7779e-34);
    OUTLINED_FUNCTION_66_0(&dword_1DC287000, v11, v12, "NLRequestProcessor received message: %@");
    sub_1DC28EB30(v2, &qword_1ECC7DFE0, &qword_1DC5227F0);
    OUTLINED_FUNCTION_13_26();
    OUTLINED_FUNCTION_24_15();
  }

  v13 = OUTLINED_FUNCTION_21_17();
  v9(v13);
  OUTLINED_FUNCTION_233();
  OUTLINED_FUNCTION_65_5();
  if (v14())
  {
    OUTLINED_FUNCTION_110();
    (*(v15 + 736))(v7);
  }

  else
  {
    v16 = OUTLINED_FUNCTION_9_28();
    v17(v16);
    v18 = OUTLINED_FUNCTION_69_9(v7);
    sub_1DC517BAC();

    if (OUTLINED_FUNCTION_169())
    {
      OUTLINED_FUNCTION_63();
      v19 = OUTLINED_FUNCTION_26_18();
      OUTLINED_FUNCTION_35_18(v19, 5.7779e-34);
      OUTLINED_FUNCTION_14_17(&dword_1DC287000, v20, v21, "Unexpected nil assistantHandler while handling %@");
      sub_1DC28EB30(v19, &qword_1ECC7DFE0, &qword_1DC5227F0);
      OUTLINED_FUNCTION_54_12();
      OUTLINED_FUNCTION_31();
    }

    v22 = OUTLINED_FUNCTION_117_0();
    v9(v22);
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC414498()
{
  OUTLINED_FUNCTION_70_11();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_38_1();
  if ((*(v2 + qword_1ECC8F590 + 256))())
  {
    OUTLINED_FUNCTION_110();
    (*(v3 + 192))(v0);
    OUTLINED_FUNCTION_154();
  }

  else
  {
    sub_1DC28D414();
    v5 = OUTLINED_FUNCTION_21_1();
    v6(v5);
    v7 = v0;
    v8 = sub_1DC516F6C();
    sub_1DC517BAC();

    if (OUTLINED_FUNCTION_169())
    {
      OUTLINED_FUNCTION_63();
      v9 = OUTLINED_FUNCTION_249();
      OUTLINED_FUNCTION_54_15(v9, 5.7779e-34);
      OUTLINED_FUNCTION_52_14(&dword_1DC287000, v10, v11, "Unexpected nil dictationHandler while handling %@");
      sub_1DC28EB30(v9, &qword_1ECC7DFE0, &qword_1DC5227F0);
      OUTLINED_FUNCTION_54_12();
      OUTLINED_FUNCTION_67();
    }

    v12 = OUTLINED_FUNCTION_36();
    v13(v12);
    OUTLINED_FUNCTION_154();
  }
}

void sub_1DC414664()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v3 = v2;
  v4 = sub_1DC51737C();
  OUTLINED_FUNCTION_0();
  v46 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  v45 = v8 - v7;
  OUTLINED_FUNCTION_12();
  sub_1DC5173CC();
  OUTLINED_FUNCTION_0();
  v43 = v10;
  v44 = v9;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  v42 = v12 - v11;
  OUTLINED_FUNCTION_12();
  v13 = sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_1();
  v19 = v18 - v17;
  v20 = sub_1DC28D414();
  (*(v15 + 16))(v19, v20, v13);
  v21 = v3;
  v22 = sub_1DC516F6C();
  v23 = sub_1DC517B9C();

  if (os_log_type_enabled(v22, v23))
  {
    v41 = v4;
    v24 = OUTLINED_FUNCTION_63();
    v39 = OUTLINED_FUNCTION_82();
    v47 = v39;
    *v24 = 136315138;
    sub_1DC5138DC();
    v40 = v1;
    v25 = *((*MEMORY[0x1E69E7D40] & *v21) + 0x78);
    v49 = sub_1DC5137CC();
    OUTLINED_FUNCTION_34_16();
    v50 = sub_1DC2C9418(v26, v27, MEMORY[0x1E69D1028]);
    __swift_allocate_boxed_opaque_existential_1(v48);
    v25();
    v28 = sub_1DC5138CC();
    v30 = v29;
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
    v31 = sub_1DC291244(v28, v30, &v47);
    v1 = v40;

    *(v24 + 4) = v31;
    _os_log_impl(&dword_1DC287000, v22, v23, "Handling nluResponse: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    OUTLINED_FUNCTION_66();
    v4 = v41;
    OUTLINED_FUNCTION_66();
  }

  (*(v15 + 8))(v19, v13);
  v32 = sub_1DC5169AC();
  v33 = swift_allocObject();
  *(v33 + 16) = v1;
  *(v33 + 24) = v21;
  v50 = sub_1DC416360;
  v51 = v33;
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_27_17(COERCE_DOUBLE(1107296256));
  v48[2] = v34;
  v49 = &block_descriptor_13;
  v35 = _Block_copy(v48);
  v36 = v21;

  sub_1DC51739C();
  v47 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_32_15();
  sub_1DC2C9418(v37, v38, MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CD40, &unk_1DC523860);
  sub_1DC2A56AC();
  sub_1DC517E9C();
  MEMORY[0x1E12964B0](0, v42, v45, v35);
  _Block_release(v35);

  (*(v46 + 8))(v45, v4);
  (*(v43 + 8))(v42, v44);

  OUTLINED_FUNCTION_34();
}

void sub_1DC414AB4()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_70_11();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_38_1();
  if ((*(v2 + qword_1ECC8F590 + 208))())
  {
    sub_1DC28D414();
    v3 = OUTLINED_FUNCTION_21_1();
    v4(v3);
    v5 = v0;
    v6 = sub_1DC516F6C();
    v7 = sub_1DC517B9C();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = OUTLINED_FUNCTION_63();
      v20 = OUTLINED_FUNCTION_82();
      v21 = v20;
      *v8 = 136315138;
      sub_1DC5138DC();
      v9 = *((*MEMORY[0x1E69E7D40] & *v5) + 0x78);
      v23 = sub_1DC5137CC();
      OUTLINED_FUNCTION_34_16();
      v24 = sub_1DC2C9418(v10, v11, MEMORY[0x1E69D1028]);
      __swift_allocate_boxed_opaque_existential_1(v22);
      v9();
      v12 = sub_1DC5138CC();
      v14 = v13;
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      v15 = sub_1DC291244(v12, v14, &v21);

      *(v8 + 4) = v15;
      _os_log_impl(&dword_1DC287000, v6, v7, "Request is cancelled, ignoring nluResponse: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_67();
    }

    v16 = OUTLINED_FUNCTION_36();
    v17(v16);
  }

  else
  {
    sub_1DC415484();
    v18 = v23;
    if (v23)
    {
      v19 = v24;
      __swift_project_boxed_opaque_existential_1(v22, v23);
      (*(v19 + 24))(v0, v18, v19);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
    }

    else
    {
      sub_1DC28EB30(v22, &qword_1ECC7D950, qword_1DC52A118);
    }
  }

  OUTLINED_FUNCTION_34();
}

void sub_1DC414D68()
{
  OUTLINED_FUNCTION_33();
  v25 = v3;
  v5 = v4;
  v6 = sub_1DC51737C();
  OUTLINED_FUNCTION_0();
  v29 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_65();
  sub_1DC5173CC();
  OUTLINED_FUNCTION_0();
  v27 = v10;
  v28 = v9;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_17_0();
  v11 = sub_1DC51373C();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v26 = sub_1DC5169AC();
  (*(v13 + 16))(&v24[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)], v5, v11);
  v17 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v0;
  (*(v13 + 32))(v18 + v17, &v24[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)], v11);
  *(v18 + v17 + v15) = v25;
  v31[4] = sub_1DC4163C8;
  v31[5] = v18;
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_27_17(COERCE_DOUBLE(1107296256));
  v31[2] = v19;
  v31[3] = &block_descriptor_7;
  v20 = _Block_copy(v31);

  sub_1DC51739C();
  v30 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_32_15();
  sub_1DC2C9418(v21, v22, MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC7CD40, &unk_1DC523860);
  sub_1DC2A56AC();
  sub_1DC517E9C();
  v23 = v26;
  MEMORY[0x1E12964B0](0, v2, v1, v20);
  _Block_release(v20);

  (*(v29 + 8))(v1, v6);
  (*(v27 + 8))(v2, v28);

  OUTLINED_FUNCTION_34();
}

void sub_1DC415060()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v4 = v3;
  sub_1DC51110C();
  OUTLINED_FUNCTION_0();
  v31 = v6;
  v32 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_1();
  v9 = v8 - v7;
  v10 = sub_1DC51373C();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_40_3();
  sub_1DC516F7C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_38_1();
  if ((*(v15 + qword_1ECC8F590 + 208))())
  {
    sub_1DC28D414();
    v16 = OUTLINED_FUNCTION_21_1();
    v17(v16);
    (*(v12 + 16))(v0, v4, v10);
    v18 = sub_1DC516F6C();
    v19 = sub_1DC517B9C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = OUTLINED_FUNCTION_63();
      v30 = OUTLINED_FUNCTION_82();
      v33[0] = v30;
      *v20 = 136315138;
      v29 = v19;
      sub_1DC51370C();
      v28 = sub_1DC5110DC();
      v22 = v21;
      (*(v31 + 8))(v9, v32);
      (*(v12 + 8))(v0, v10);
      v23 = sub_1DC291244(v28, v22, v33);

      *(v20 + 4) = v23;
      _os_log_impl(&dword_1DC287000, v18, v29, "Request is cancelled, not processing CDMSetupFailure for nluRequestId: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_66();
    }

    else
    {

      (*(v12 + 8))(v0, v10);
    }

    v26 = OUTLINED_FUNCTION_36();
    v27(v26);
  }

  else
  {
    sub_1DC415484();
    v24 = v34;
    if (v34)
    {
      v25 = v35;
      __swift_project_boxed_opaque_existential_1(v33, v34);
      (*(v25 + 8))(v4, v2, v24, v25);
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
    }

    else
    {
      sub_1DC28EB30(v33, &qword_1ECC7D950, qword_1DC52A118);
    }
  }

  OUTLINED_FUNCTION_34();
}