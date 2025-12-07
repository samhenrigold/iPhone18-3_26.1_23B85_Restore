unint64_t sub_266A7BDC4()
{
  result = qword_2800B1D50;
  if (!qword_2800B1D50)
  {
    result = swift_getWitnessTable(byte_266AC1210, &type metadata for AdvertisementModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_2800B1D50);
  }

  return result;
}

unint64_t sub_266A7BE1C()
{
  result = qword_2800B1D58;
  if (!qword_2800B1D58)
  {
    result = swift_getWitnessTable(asc_266AC1180, &type metadata for AdvertisementModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_2800B1D58);
  }

  return result;
}

unint64_t sub_266A7BE74()
{
  result = qword_2800B1D60;
  if (!qword_2800B1D60)
  {
    result = swift_getWitnessTable(a1, &type metadata for AdvertisementModel.CodingKeys, v0, v1);
    atomic_store(result, &qword_2800B1D60);
  }

  return result;
}

uint64_t sub_266A7BEC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), unint64_t *a5, uint64_t (*a6)(uint64_t), const char *a7)
{
  a4(0);
  sub_266A6CF84(a5, a6, a7);
  return sub_266ABD924();
}

uint64_t Array<A>.collate()(uint64_t a1, uint64_t a2)
{
  sub_266A7C080();
  sub_266A7C4F8();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CC0, &qword_266AC1290);
  v7 = sub_266ABDF14();
  sub_266A7F950(v3);
  sub_266A7CB98(v7);

  sub_266A7D1C0();
  v5 = v4;

  return v5;
}

void sub_266A7C080()
{
  OUTLINED_FUNCTION_31();
  v2 = v1;
  v4 = v3;
  v5 = *(v3 + 16);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2();
  v9 = v8 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1E00, &qword_266AC13A0);
  v52 = sub_266ABD9B4();
  v45 = v0;
  v49 = *v0;
  v46 = v2;

  v10 = OUTLINED_FUNCTION_0_0();
  swift_getWitnessTable(v10, v4);
  sub_266ABDBC4();

  v48[0] = v49;
  swift_getWitnessTable(MEMORY[0x277D83980], v4);
  sub_266ABDD24();
  v12 = v49;
  v11 = v50;
  if (v49 == v50)
  {
LABEL_18:

    OUTLINED_FUNCTION_30();
  }

  else
  {
    if (v50 >= v49)
    {
      v43 = v50;
      while (v12 < v11)
      {
        OUTLINED_FUNCTION_24_0();
        v13 = OUTLINED_FUNCTION_16_2();
        v15 = v14(v13);
        OUTLINED_FUNCTION_17_1();
        v44 = *v16;
        (*v16)(v9, v5);
        v17 = *(v15 + 16);

        if (v17)
        {
          v18 = 0;
          v19 = 0;
          while (1)
          {
            OUTLINED_FUNCTION_24_0();
            v20 = OUTLINED_FUNCTION_16_2();
            v22 = v21(v20);
            OUTLINED_FUNCTION_17_1();
            v44();
            if (v19 >= *(v22 + 16))
            {
              break;
            }

            sub_266A6FFD8(v22 + v18 + 32, &v49);

            __swift_project_boxed_opaque_existential_1(&v49, v51);
            v23 = OUTLINED_FUNCTION_29_0();
            v25 = v24(v23);
            if (v26)
            {
              v27 = v52;
              if (*(v52 + 16))
              {
                v28 = sub_266AB0B30(v25, v26);
                v30 = v29;

                if (v30)
                {
                  sub_266A6FFD8(*(v27 + 56) + 40 * v28, v47);
                  sub_266A6DBC4(v47, v48);
                  sub_266ABDC64();
                  sub_266A8135C(v12, *v45, v5);
                  _swift_isClassOrObjCExistentialType();
                  v31 = (*(v46 + 64))(v47, v5);
                  v33 = v32;
                  v34 = *v32;
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  *v33 = v34;
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    sub_266AB1064(v34, v36, v37, v38);
                    v34 = v42;
                    *v33 = v42;
                  }

                  if (v19 >= *(v34 + 16))
                  {
                    goto LABEL_20;
                  }

                  v39 = v34 + v18;
                  v40 = *(v34 + v18 + 56);
                  v41 = *(v39 + 64);
                  __swift_mutable_project_boxed_opaque_existential_1(v39 + 32, v40);
                  Device.saturate(device:)(v48, v40, v41);
                  v31(v47, 0);
                  __swift_destroy_boxed_opaque_existential_1Tm(v48);
                }
              }

              else
              {
              }
            }

            ++v19;
            __swift_destroy_boxed_opaque_existential_1Tm(&v49);
            v18 += 40;
            if (v17 == v19)
            {
              goto LABEL_17;
            }
          }

          __break(1u);
LABEL_20:
          __break(1u);
          break;
        }

LABEL_17:
        ++v12;
        v11 = v43;
        if (v12 == v43)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
    }

    __break(1u);
  }
}

void sub_266A7C4F8()
{
  OUTLINED_FUNCTION_31();
  v71 = v1;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CB0, &qword_266AC0FB8);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v4);
  v6 = OUTLINED_FUNCTION_18_1(v5, v70);
  v7 = type metadata accessor for ParticipantModel(v6);
  OUTLINED_FUNCTION_1_0();
  v83 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_2();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_33_1();
  v84 = v14;
  v72 = v3;
  v15 = *(v3 + 16);
  OUTLINED_FUNCTION_2_1();
  v17 = v16;
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = v20;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_33_1();
  v77 = v22;
  sub_266A81434();
  v23 = v7;
  v101[0] = sub_266ABD9B4();
  v24 = *v0;

  v25 = sub_266ABDC34();
  v100 = v25;
  OUTLINED_FUNCTION_32_0();
  if (v25 == sub_266ABDC94())
  {
    goto LABEL_2;
  }

  v76 = (v17 + 16);
  v75 = (v17 + 32);
  v73 = v24;
  v80 = v15;
  v81 = v7;
  v82 = v12;
  v74 = v17;
  v79 = v21;
  while (1)
  {
    OUTLINED_FUNCTION_32_0();
    v30 = sub_266ABDC84();
    sub_266ABDC54();
    if (v30)
    {
      (*(v74 + 16))(v21, v24 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v25, v15);
    }

    else
    {
      v69 = sub_266ABDEC4();
      if (v70 != 8)
      {
        goto LABEL_27;
      }

      v99[0] = v69;
      (*v76)(v21, v99, v15);
      swift_unknownObjectRelease();
    }

    (*v75)(v77, v21, v15);
    sub_266ABDCB4();
    v31 = v78;
    v32 = v23;
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_storeEnumTagSinglePayload(v31, 1, 1, v23);
      sub_266A798F4(v31, &qword_2800B1CB0, &qword_266AC0FB8);
      goto LABEL_21;
    }

    __swift_storeEnumTagSinglePayload(v31, 0, 1, v23);
    v33 = v84;
    sub_266A7977C(v31, v84);
    v34 = *(v33 + *(v23 + 48));
    v35 = *(v34 + 16);
    v36 = v34 + 32;
    if (v35)
    {
      break;
    }

LABEL_19:
    v23 = v32;
    sub_266A6A63C(v84);
LABEL_21:
    v24 = v73;
    OUTLINED_FUNCTION_32_0();
    v68 = sub_266ABDC94();
    v25 = v100;
    if (v100 == v68)
    {
LABEL_2:

      v99[0] = v24;
      MEMORY[0x28223BE20](v26);
      v27 = v71;
      *(&v70 - 4) = v15;
      *(&v70 - 3) = v27;
      *(&v70 - 2) = v101;

      v28 = OUTLINED_FUNCTION_0_0();
      swift_getWitnessTable(v28, v72);
      sub_266ABDBC4();

      v29 = v101[0];

      sub_266AAC7F0(MEMORY[0x277D84F90], v29, v101);
      swift_bridgeObjectRelease_n();
      OUTLINED_FUNCTION_30();
      return;
    }
  }

  while (1)
  {
    sub_266A6FFD8(v36, v99);
    v37 = OUTLINED_FUNCTION_29_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v37, v38);
    if (!swift_dynamicCast())
    {
      goto LABEL_18;
    }

    v90 = v35;
    v91 = v36;
    v39 = v92;
    v40 = v93;
    v41 = v94;
    v42 = v12;
    v43 = v95;
    v44 = v96;
    v45 = v97;
    v46 = v98;
    sub_266A6E9E4(v84, v42);
    v47 = v101[0];
    swift_isUniquelyReferenced_nonNull_native();
    v99[0] = v47;
    v88 = v40;
    v89 = v39;
    v86 = v43;
    v87 = v41;
    v85 = v44;
    v48 = v39 | (v40 << 8) | (v41 << 16) | (v43 << 24) | (v44 << 32);
    v49 = v45;
    v50 = v48 | (v45 << 48) | (v46 << 56);
    sub_266AB0C10(v50);
    OUTLINED_FUNCTION_23_0();
    if (__OFADD__(v53, v54))
    {
      break;
    }

    v12 = v51;
    v55 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DF8, &unk_266AC1320);
    if (sub_266ABDF34())
    {
      v56 = sub_266AB0C10(v50);
      if ((v55 & 1) != (v57 & 1))
      {
        goto LABEL_28;
      }

      v12 = v56;
    }

    v58 = v99[0];
    v36 = v91;
    if (v55)
    {
      v59 = OUTLINED_FUNCTION_20_1();
      sub_266A81518(v59, v60);
    }

    else
    {
      *(v99[0] + 8 * (v12 >> 6) + 64) |= 1 << v12;
      v61 = *(v58 + 48) + 8 * v12;
      v62 = v88;
      *v61 = v89;
      *(v61 + 1) = v62;
      *(v61 + 2) = v87;
      *(v61 + 3) = v86;
      *(v61 + 4) = v85;
      *(v61 + 6) = v49;
      *(v61 + 7) = v46;
      v63 = OUTLINED_FUNCTION_20_1();
      sub_266A7977C(v63, v64);
      v65 = *(v58 + 16);
      v66 = __OFADD__(v65, 1);
      v67 = v65 + 1;
      if (v66)
      {
        goto LABEL_26;
      }

      *(v58 + 16) = v67;
    }

    v101[0] = v58;
    v15 = v80;
    v32 = v81;
    v21 = v79;
    v35 = v90;
LABEL_18:
    v36 += 40;
    if (!--v35)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  sub_266ABE1F4();
  __break(1u);
}

uint64_t sub_266A7CB98(uint64_t a1)
{
  v65 = sub_266ABD7A4();
  OUTLINED_FUNCTION_1_0();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_2();
  v64 = v5 - v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v59 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DF0, &qword_266AC6360);
  v10 = swift_allocObject();
  v59 = xmmword_266AC0EB0;
  *(v10 + 16) = xmmword_266AC0EB0;
  v60 = v10;
  *(v10 + 32) = MEMORY[0x277D84F90];
  *&v74 = a1;

  sub_266AAC928(&v74);
  v11 = v74;
  v12 = *(v74 + 16);
  v62 = v74;
  if (v12)
  {
    OUTLINED_FUNCTION_19_1();
    sub_266A6FFD8(v13 + 32, &v74);
    OUTLINED_FUNCTION_19_1();
    v14 = 1;
  }

  else
  {
    v14 = 0;
    v76 = 0;
    v74 = 0u;
    v75 = 0u;
  }

  v61 = v11 + 32;
  v15 = &unk_266AC1310;
  v63 = (v3 + 8);
  while (1)
  {
    OUTLINED_FUNCTION_37();
    if (!*(&v72 + 1))
    {

      sub_266A798F4(&v71, &qword_2800B1C48, &unk_266AC1310);
      sub_266A798F4(&v74, &qword_2800B1C48, &unk_266AC1310);
      return v60;
    }

    sub_266A798F4(&v71, &qword_2800B1C48, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CB8, &unk_266AC0FC0);
    v16 = swift_allocObject();
    *(v16 + 16) = v59;
    OUTLINED_FUNCTION_37();
    if (!*(&v72 + 1))
    {
      break;
    }

    sub_266A6DBC4(&v71, v16 + 32);
    if (v14 == v12)
    {
      v73 = 0;
      v14 = v12;
      v71 = 0u;
      v72 = 0u;
      goto LABEL_12;
    }

    if ((v14 & 0x8000000000000000) != 0)
    {
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      break;
    }

    OUTLINED_FUNCTION_19_1();
    if (v14 >= *(v17 + 16))
    {
      goto LABEL_32;
    }

    OUTLINED_FUNCTION_17_1();
    sub_266A6FFD8(v18 + 40 * v14++, &v71);
LABEL_12:
    while (1)
    {
      OUTLINED_FUNCTION_34_0();
      v19 = *(&v69 + 1);
      sub_266A798F4(&v68, &qword_2800B1C48, v15);
      if (!v19)
      {
        break;
      }

      v20 = *(&v75 + 1);
      if (!*(&v75 + 1))
      {
        goto LABEL_34;
      }

      v67 = v16;
      v21 = v76;
      __swift_project_boxed_opaque_existential_1(&v74, *(&v75 + 1));
      OUTLINED_FUNCTION_2_1();
      v23 = v22;
      MEMORY[0x28223BE20](v24);
      OUTLINED_FUNCTION_2();
      v27 = v26 - v25;
      (*(v23 + 16))(v26 - v25);
      (*(v21 + 88))(v20, v21);
      (*(v23 + 8))(v27, v20);
      v28 = *(&v72 + 1);
      if (!*(&v72 + 1))
      {
        goto LABEL_33;
      }

      v29 = v73;
      __swift_project_boxed_opaque_existential_1(&v71, *(&v72 + 1));
      v66 = &v59;
      OUTLINED_FUNCTION_2_1();
      v31 = v30;
      MEMORY[0x28223BE20](v32);
      OUTLINED_FUNCTION_2();
      v35 = v34 - v33;
      (*(v31 + 16))(v34 - v33);
      v36 = v15;
      v37 = v14;
      v38 = v12;
      v39 = v9;
      v40 = v64;
      (*(v29 + 88))(v28, v29);
      (*(v31 + 8))(v35, v28);
      sub_266ABD704();
      v42 = v41;
      v43 = *v63;
      v44 = v40;
      v9 = v39;
      v12 = v38;
      v14 = v37;
      v15 = v36;
      v45 = v65;
      (*v63)(v44, v65);
      v43(v9, v45);
      v16 = v67;
      if (v42 > 2.0)
      {
        break;
      }

      OUTLINED_FUNCTION_34_0();
      if (!*(&v69 + 1))
      {
        goto LABEL_35;
      }

      v47 = *(v16 + 16);
      v46 = *(v16 + 24);
      if (v47 >= v46 >> 1)
      {
        v50 = OUTLINED_FUNCTION_7_1(v46);
        sub_266A98074(v50, v51, v52, v16);
        v16 = v53;
      }

      *(v16 + 16) = v47 + 1;
      sub_266A6DBC4(&v68, v16 + 40 * v47 + 32);
      if (v14 == v12)
      {
        v70 = 0;
        v14 = v12;
        v68 = 0u;
        v69 = 0u;
      }

      else
      {
        if ((v14 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

        OUTLINED_FUNCTION_19_1();
        if (v14 >= *(v48 + 16))
        {
          goto LABEL_30;
        }

        OUTLINED_FUNCTION_17_1();
        sub_266A6FFD8(v49 + 40 * v14++, &v68);
      }

      sub_266A81488(&v68, &v71);
    }

    v54 = v60;
    v56 = *(v60 + 16);
    v55 = *(v60 + 24);
    if (v56 >= v55 >> 1)
    {
      OUTLINED_FUNCTION_7_1(v55);
      sub_266A980BC();
      v54 = v57;
    }

    *(v54 + 16) = v56 + 1;
    v60 = v54;
    *(v54 + 8 * v56 + 32) = v16;
    sub_266A81488(&v71, &v74);
  }

  __break(1u);

  __break(1u);
  return result;
}

void sub_266A7D1C0()
{
  OUTLINED_FUNCTION_31();
  v146 = 0;
  *&v136 = *(v0 + 16);
  if (!v136)
  {
    inited = MEMORY[0x277D84F90];
LABEL_109:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_120;
    }

    goto LABEL_110;
  }

  v1 = 0;
  inited = MEMORY[0x277D84F90];
  *(&v136 + 1) = v0 + 32;
  v144 = xmmword_266AC0EB0;
LABEL_3:
  v3 = *(*(&v136 + 1) + 8 * v1);
  v139 = inited;
  v140 = v1 + 1;
  v147 = *(v3 + 16);
  v4 = v3 + 32;

  v8 = 0;
  v9 = v3 + 32;
  v10 = MEMORY[0x277D84F90];
  while (v147 != v8)
  {
    if (v8 >= *(v3 + 16))
    {
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
      sub_266AB107C(inited, v5, v6, v7);
      inited = v134;
LABEL_110:
      v133 = *(inited + 16);
      *&v151[0] = inited + 32;
      *(&v151[0] + 1) = v133;
      sub_266AB10C0();
      OUTLINED_FUNCTION_30();
      return;
    }

    sub_266A6FFD8(v9, v151);
    v11 = OUTLINED_FUNCTION_3_2();
    v12(v11);
    if (v150[0] == 3 || (v13 = OUTLINED_FUNCTION_3_2(), v14(v13), v150[0] == 2))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v151);
    }

    else
    {
      sub_266A6DBC4(v151, v150);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v149[0] = v10;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_35();
        v10 = v149[0];
      }

      v17 = *(v10 + 16);
      v16 = *(v10 + 24);
      if (v17 >= v16 >> 1)
      {
        OUTLINED_FUNCTION_14(v16);
        sub_266A98BE8();
      }

      v18 = *&v150[24];
      inited = *&v150[32];
      __swift_mutable_project_boxed_opaque_existential_1(v150, *&v150[24]);
      OUTLINED_FUNCTION_2_1();
      MEMORY[0x28223BE20](v19);
      OUTLINED_FUNCTION_2();
      v22 = v21 - v20;
      (*(v23 + 16))(v21 - v20);
      sub_266A9E8BC(v17, v22, v149, v18, inited);
      __swift_destroy_boxed_opaque_existential_1Tm(v150);
      v10 = v149[0];
    }

    v9 += 40;
    ++v8;
  }

  v141 = v10;
  v24 = 0;
  v25 = MEMORY[0x277D84F90];
  while (v147 != v24)
  {
    if (v24 >= *(v3 + 16))
    {
      goto LABEL_112;
    }

    sub_266A6FFD8(v4, v151);
    v26 = OUTLINED_FUNCTION_3_2();
    v27(v26);
    if (v150[0] == 3 || (v28 = OUTLINED_FUNCTION_3_2(), v29(v28), v150[0] == 2))
    {
      sub_266A6DBC4(v151, v150);
      v30 = swift_isUniquelyReferenced_nonNull_native();
      v149[0] = v25;
      if ((v30 & 1) == 0)
      {
        OUTLINED_FUNCTION_35();
        v25 = v149[0];
      }

      v32 = *(v25 + 16);
      v31 = *(v25 + 24);
      if (v32 >= v31 >> 1)
      {
        OUTLINED_FUNCTION_14(v31);
        sub_266A98BE8();
      }

      v33 = *&v150[24];
      inited = *&v150[32];
      __swift_mutable_project_boxed_opaque_existential_1(v150, *&v150[24]);
      OUTLINED_FUNCTION_2_1();
      MEMORY[0x28223BE20](v34);
      OUTLINED_FUNCTION_2();
      v37 = v36 - v35;
      (*(v38 + 16))(v36 - v35);
      sub_266A9E8BC(v32, v37, v149, v33, inited);
      __swift_destroy_boxed_opaque_existential_1Tm(v150);
      v25 = v149[0];
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v151);
    }

    v4 += 40;
    ++v24;
  }

  v39 = 0;
  v40 = MEMORY[0x277D84F98];
  inited = *(v25 + 16);
  v41 = v25 + 32;
  v143 = v25 + 32;
  v148 = inited;
  v149[0] = MEMORY[0x277D84F98];
  while (1)
  {
    if (inited == v39)
    {
      v152 = v40;
      v65 = *(v25 + 16);
      if (!v65)
      {
LABEL_71:

        v90 = sub_266AB3C0C(v40);
        OUTLINED_FUNCTION_15_1();
        inited = v91 >> 6;

        v92 = 0;
        if (!v39)
        {
          goto LABEL_73;
        }

        do
        {
          v93 = v92;
LABEL_77:
          v94 = (v93 << 9) | (8 * __clz(__rbit64(v39)));
          v95 = *(v90[7] + v94);
          v39 &= v39 - 1;
          *&v151[0] = *(v90[6] + v94);
          *(&v151[0] + 1) = v95;

          sub_266A7F108();
        }

        while (v39);
LABEL_73:
        while (1)
        {
          v93 = v92 + 1;
          if (__OFADD__(v92, 1))
          {
            goto LABEL_113;
          }

          if (v93 >= inited)
          {

            v96 = v152;
            v97 = v152 + 64;
            OUTLINED_FUNCTION_15_1();
            v99 = v98 >> 6;
            swift_bridgeObjectRetain_n();
            i = 0;
            v101 = MEMORY[0x277D84F90];
            while (1)
            {
              v102 = i + 1;
              if (__OFADD__(i, 1))
              {
                goto LABEL_114;
              }

              if (v102 >= v99)
              {

                v107 = *(v101 + 16);
                if (v107)
                {
                  v108 = v101 + 32;
                  v109 = MEMORY[0x277D84F90];
                  v1 = v140;
                  do
                  {
                    memcpy(v149, v151, sizeof(v149));
                    if (v149[1])
                    {
                      memcpy(v150, v151, sizeof(v150));
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        OUTLINED_FUNCTION_21_0();
                        sub_266A982D4();
                        v109 = v112;
                      }

                      v111 = *(v109 + 16);
                      v110 = *(v109 + 24);
                      if (v111 >= v110 >> 1)
                      {
                        OUTLINED_FUNCTION_14(v110);
                        sub_266A982D4();
                        v109 = v113;
                      }

                      *(v109 + 16) = v111 + 1;
                      memcpy((v109 + 72 * v111 + 32), v150, 0x48uLL);
                    }

                    else
                    {
                    }

                    v108 += 72;
                    --v107;
                  }

                  while (v107);
                }

                else
                {

                  v109 = MEMORY[0x277D84F90];
                  v1 = v140;
                }

                inited = v139;
                if (*(v109 + 16))
                {
                  sub_266A9444C(v109, v114, v115, v116, v117, v118, v119, v120, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, *(&v144 + 1), v145, v146, v148, v149[0], v149[1], v149[2], v149[3], v149[4], v149[5], v149[6], v149[7], v149[8], *v150, *&v150[8], *&v150[16], *&v150[24]);
                  v122 = v121;

                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v125 = OUTLINED_FUNCTION_21_0();
                    sub_266A982B0(v125, v126, v127, inited);
                    inited = v128;
                  }

                  v124 = *(inited + 16);
                  v123 = *(inited + 24);
                  if (v124 >= v123 >> 1)
                  {
                    v129 = OUTLINED_FUNCTION_7_1(v123);
                    sub_266A982B0(v129, v130, v131, inited);
                    inited = v132;
                  }

                  *&v151[2] = &protocol witness table for RequestModel;
                  *(&v151[1] + 1) = &type metadata for RequestModel;
                  *&v151[0] = v122;
                  *(inited + 16) = v124 + 1;
                  sub_266A6DBC4(v151, inited + 40 * v124 + 32);
                }

                else
                {
                }

                if (v1 != v136)
                {
                  goto LABEL_3;
                }

                goto LABEL_109;
              }

              v103 = *(v97 + 8 * v102);
              ++i;
              if (v103)
              {
                for (i = v102; ; v102 = i)
                {
                  v104 = __clz(__rbit64(v103));
                  v103 &= v103 - 1;
                  v105 = *(*(v96 + 56) + ((v102 << 9) | (8 * v104)));
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DD0, &unk_266AC6340);
                  inited = swift_initStackObject();
                  *(inited + 16) = v144;
                  *&v151[0] = v105;
                  swift_bridgeObjectRetain_n();

                  sub_266A7F950(v106);
                  sub_266AB5D18(*&v151[0], inited + 32);
                  *&v151[0] = v101;
                  sub_266A7FA00(inited);

                  v101 = *&v151[0];
                  if (!v103)
                  {
                    break;
                  }
                }
              }
            }
          }

          v39 = v90[v93 + 8];
          ++v92;
          if (v39)
          {
            v92 = v93;
            goto LABEL_77;
          }
        }
      }

      v66 = v25 + 32;
      while (1)
      {
        sub_266A6FFD8(v66, v151);
        v67 = *(&v151[1] + 1);
        v68 = *&v151[2];
        __swift_project_boxed_opaque_existential_1(v151, *(&v151[1] + 1));
        (*(v68 + 16))(v150, v67, v68);
        if (!*&v150[24])
        {
          break;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CD0, &unk_266AC12E0);
        if (swift_dynamicCast())
        {
          v148 = LODWORD(v149[0]);
          v39 = WORD2(v149[0]);
          v143 = BYTE6(v149[0]);
          v142 = HIBYTE(v149[0]);
          v69 = *(&v151[1] + 1);
          v70 = *&v151[2];
          __swift_project_boxed_opaque_existential_1(v151, *(&v151[1] + 1));
          (*(v70 + 128))(v150, v69, v70);
          if (!*&v150[24])
          {
            break;
          }

          if (swift_dynamicCast())
          {
            if (v40[2])
            {
              inited = LODWORD(v149[0]);
              v71 = WORD2(v149[0]);
              v138 = BYTE6(v149[0]);
              v137 = HIBYTE(v149[0]);
              v72 = v148 | (v39 << 32) | (v143 << 48) | (v142 << 56);
              v73 = sub_266AB0BA4(v72);
              if (v74)
              {
                v75 = *(v40[7] + 8 * v73);
                sub_266AB0BA4(v72);
                if (v76)
                {

                  v77 = v152;
                  swift_isUniquelyReferenced_nonNull_native();
                  *v150 = v77;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DA8, &qword_266AC6350);
                  sub_266ABDF34();
                  v40 = *v150;

                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DB0, &unk_266AC12D0);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DD8, &unk_266AC1300);
                  sub_266A813B0();
                  sub_266ABDF44();
                  v152 = v40;
                }

                else
                {
                }

                if (v40[2] && (sub_266AB0BA4(inited | (v71 << 32) | (v138 << 48) | (v137 << 56)), (v78 & 1) != 0))
                {
                }

                else
                {
                  v79 = MEMORY[0x277D84F90];
                }

                *v150 = v75;
                sub_266A7F950(v79);
                v148 = *v150;
                v80 = v152;
                swift_isUniquelyReferenced_nonNull_native();
                *v150 = v80;
                v39 = inited | (v71 << 32) | (v138 << 48) | (v137 << 56);
                sub_266AB0BA4(v39);
                OUTLINED_FUNCTION_23_0();
                if (__OFADD__(v82, v83))
                {
                  goto LABEL_118;
                }

                v84 = v81;
                inited = v5;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DA8, &qword_266AC6350);
                if (sub_266ABDF34())
                {
                  v85 = sub_266AB0BA4(v39);
                  if ((inited & 1) != (v86 & 1))
                  {
                    goto LABEL_122;
                  }

                  v84 = v85;
                }

                v40 = *v150;
                if (inited)
                {
                  *(*(*v150 + 56) + 8 * v84) = v148;
                }

                else
                {
                  OUTLINED_FUNCTION_30_0(*v150 + 8 * (v84 >> 6));
                  *(v87 + 8 * v84) = v39;
                  *(v40[7] + 8 * v84) = v148;
                  v88 = v40[2];
                  v57 = __OFADD__(v88, 1);
                  v89 = v88 + 1;
                  if (v57)
                  {
                    goto LABEL_119;
                  }

                  v40[2] = v89;
                }

                v152 = v40;
              }
            }
          }
        }

LABEL_55:
        __swift_destroy_boxed_opaque_existential_1Tm(v151);
        v66 += 40;
        if (!--v65)
        {
          goto LABEL_71;
        }
      }

      sub_266A798F4(v150, &qword_2800B1CC8, &unk_266AC0FD0);
      goto LABEL_55;
    }

    if (v39 >= *(v25 + 16))
    {
      goto LABEL_115;
    }

    sub_266A6FFD8(v41, v151);
    sub_266A7EDD4(v151, &v152);
    if (v146)
    {
      break;
    }

    v42 = sub_266AB0BA4(v152);
    v43 = v40[2];
    v44 = (v5 & 1) == 0;
    v45 = v43 + v44;
    if (__OFADD__(v43, v44))
    {
      goto LABEL_116;
    }

    v46 = v5;
    if (v40[3] < v45)
    {
      sub_266AB3808(v45, 1);
      v40 = v149[0];
      v47 = sub_266AB0BA4(v152);
      if ((v46 & 1) != (v48 & 1))
      {
        goto LABEL_122;
      }

      v42 = v47;
    }

    if (v46)
    {
      v49 = v40[7];
      sub_266A6DBC4(v151, v150);
      v50 = *(v49 + 8 * v42);
      v51 = swift_isUniquelyReferenced_nonNull_native();
      *(v49 + 8 * v42) = v50;
      if ((v51 & 1) == 0)
      {
        v59 = OUTLINED_FUNCTION_21_0();
        sub_266A98074(v59, v60, v61, v50);
        v50 = v62;
        *(v49 + 8 * v42) = v62;
      }

      v53 = *(v50 + 16);
      v52 = *(v50 + 24);
      if (v53 >= v52 >> 1)
      {
        v63 = OUTLINED_FUNCTION_14(v52);
        sub_266A98074(v63, v53 + 1, 1, v50);
        v50 = v64;
        *(v49 + 8 * v42) = v64;
      }

      *(v50 + 16) = v53 + 1;
      sub_266A6DBC4(v150, v50 + 40 * v53 + 32);
      inited = v148;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CB8, &unk_266AC0FC0);
      v54 = swift_allocObject();
      *(v54 + 16) = v144;
      sub_266A6DBC4(v151, v54 + 32);
      OUTLINED_FUNCTION_30_0(&v40[v42 >> 6]);
      *(v55 + 8 * v42) = v152;
      *(v40[7] + 8 * v42) = v54;
      v56 = v40[2];
      v57 = __OFADD__(v56, 1);
      v58 = v56 + 1;
      if (v57)
      {
        goto LABEL_117;
      }

      v40[2] = v58;
    }

    v41 += 40;
    ++v39;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v151);

  __break(1u);
LABEL_122:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DB0, &unk_266AC12D0);
  sub_266ABE1F4();
  __break(1u);
}

uint64_t sub_266A7DEF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = a2;
  v6 = *(a4 + 32);
  v6(v14, a3, a4);
  v7 = v15;
  v8 = v16;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  v9 = (*(v8 + 168))(v7, v8);
  if (!v10)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v14);
  }

  v11 = v9;
  v12 = v10;
  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  v6(v14, a3, a4);
  return sub_266AAC4E0(v14, v11, v12);
}

uint64_t sub_266A7DFF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CB0, &qword_266AC0FB8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13[-1] - v7;
  (*(a4 + 16))(v13, a3, a4);
  if (!v13[3])
  {
    return sub_266A798F4(v13, &qword_2800B1CC8, &unk_266AC0FD0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CD0, &unk_266AC12E0);
  result = swift_dynamicCast();
  if (result)
  {
    v10 = v12;
    v11 = type metadata accessor for ParticipantModel(0);
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v11);
    return sub_266AAC2C8(v8, v10);
  }

  return result;
}

void sub_266A7E130(uint64_t *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1D88, &qword_266AC20D0);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18_1(v9, v122._countAndFlagsBits);
  v140 = sub_266ABD864();
  OUTLINED_FUNCTION_1_0();
  v135 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4_2();
  v142 = (v12 - v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_33_1();
  v138 = v15;
  v16 = sub_266ABD8B4();
  OUTLINED_FUNCTION_1_0();
  v139 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_2();
  v143 = v20 - v19;
  v21 = type metadata accessor for ParticipantModel(0);
  OUTLINED_FUNCTION_1_0();
  v145 = v22;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_4_2();
  v141 = v24 - v25;
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v122 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v122 - v31;
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_33_1();
  v146 = v33;
  v34 = *a3;
  if (!*(*a3 + 16) || (v35 = *a1, v36 = *a2, v37 = a2[1], v38 = a2[2], v39 = a2[3], v40 = *(a2 + 2), v41 = a2[6], v42 = a2[7], v134 = v36, v136 = v37, v133 = v38, v132 = v39, v131 = v40, v144 = v41, v43 = v36 | (v37 << 8) | (v38 << 16) | (v39 << 24) | (v40 << 32) | (v41 << 48) | (v42 << 56), v44 = sub_266AB0C10(v43), (v45 & 1) == 0))
  {
    *a4 = MEMORY[0x277D84F90];
    return;
  }

  v130 = v42;
  v128 = v35;
  v46 = *(v34 + 56);
  v127 = *(v145 + 72);
  sub_266A6E9E4(v46 + v127 * v44, v32);
  sub_266A7977C(v32, v146);
  if (qword_280BB6C30 != -1)
  {
    OUTLINED_FUNCTION_10(&qword_280BB6C30);
  }

  v47 = sub_266ABD8D4();
  __swift_project_value_buffer(v47, qword_280BB7028);
  v48 = sub_266ABD8C4();
  v49 = sub_266ABDD54();
  v50 = os_log_type_enabled(v48, v49);
  v129 = a4;
  v126 = v16;
  if (v50)
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    *&v148 = v52;
    *v51 = 136315138;
    v53 = sub_266A6FBB0(v43);
    v55 = sub_266A66D34(v53, v54, &v148);

    *(v51 + 4) = v55;
    _os_log_impl(&dword_266A65000, v48, v49, "#feedback found advertisement %s for unknown participant", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v52);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_8();
  }

  v57 = v143;
  v56 = v144;
  v58 = v142;
  v59 = v138;
  switch(v136)
  {
    case 1:
      if (!v144)
      {
        goto LABEL_18;
      }

      v66 = sub_266A6D9F0();
      OUTLINED_FUNCTION_13_1(v66);
      v61 = &unk_28783E7B0;
      v62 = 7;
      break;
    case 2:
      v65 = sub_266A6D9F0();
      OUTLINED_FUNCTION_13_1(v65);
      v62 = 0;
      v61 = &unk_28783E6F0;
      break;
    case 3:
      v68 = sub_266A6D9F0();
      OUTLINED_FUNCTION_13_1(v68);
      v61 = &unk_28783E6C0;
      v62 = 1;
      break;
    case 4:
      v69 = sub_266A6D9F0();
      OUTLINED_FUNCTION_13_1(v69);
      v61 = &unk_28783E630;
      v62 = 4;
      break;
    case 5:
    case 7:
      v63 = sub_266A6D9F0();
      OUTLINED_FUNCTION_13_1(v63);
      if (v56 == 3)
      {
        v61 = &unk_28783E660;
      }

      else
      {
        v61 = &unk_28783E690;
      }

      v62 = 5;
      break;
    case 6:
    case 10:
      v64 = sub_266A6D9F0();
      OUTLINED_FUNCTION_13_1(v64);
      v61 = &unk_28783E750;
      v62 = 3;
      break;
    case 9:
LABEL_18:
      v67 = sub_266A6D9F0();
      OUTLINED_FUNCTION_13_1(v67);
      v61 = &unk_28783E720;
      v62 = 6;
      break;
    default:
      v60 = sub_266A6D9F0();
      OUTLINED_FUNCTION_13_1(v60);
      v61 = &unk_28783E7E0;
      v62 = 8;
      break;
  }

  LOBYTE(v147[0]) = v62;
  LOBYTE(v152) = v56;
  v70 = DeviceClass.displayName(productType:)(&v152);
  countAndFlagsBits = v70._countAndFlagsBits;
  object = v70._object;
  v149 = &type metadata for DeviceModel;
  v150 = sub_266A6DA44();
  v71 = swift_allocObject();
  *&v148 = v71;
  if (v61[2])
  {
    v73 = v61[4];
    v72 = v61[5];

    v74._countAndFlagsBits = v73;
    v74._object = v72;
    DeviceClass.init(model:)(v74);
    LOBYTE(v152) = 0;
    v122 = DeviceClass.displayName(productType:)(&v152);
  }

  else
  {
    v122._object = 0xEB00000000657365;
    OUTLINED_FUNCTION_28_0();
    v122._countAndFlagsBits = v75;
  }

  sub_266ABD884();
  v76 = v137;
  sub_266ABD8A4();
  v77 = v76;
  v78 = v76;
  v79 = v140;
  if (__swift_getEnumTagSinglePayload(v78, 1, v140) == 1)
  {
    v80 = 0x30303030303023;
    (*(v139 + 8))(v57, v126);
    sub_266A798F4(v77, &qword_2800B1D88, &qword_266AC20D0);
  }

  else
  {
    v81 = v77;
    v82 = v135;
    (*(v135 + 32))(v59, v81, v79);
    (*(v82 + 16))(v58, v59, v79);
    v83 = v59;
    if ((*(v82 + 88))(v58, v79) == *MEMORY[0x277D85508])
    {
      (*(v82 + 96))(v58, v79);
      v80 = sub_266AA6004(*v58, v58[1], v58[2]);
      v84 = v79;
      v86 = v85;
      (*(v82 + 8))(v83, v84);
      v87 = OUTLINED_FUNCTION_25_0();
      v88(v87);
      goto LABEL_30;
    }

    v80 = 0x30303030303023;
    v89 = *(v82 + 8);
    v89(v83, v79);
    v90 = OUTLINED_FUNCTION_25_0();
    v91(v90);
    v89(v142, v79);
  }

  v86 = 0xE700000000000000;
LABEL_30:
  *(v71 + 16) = 0u;
  *(v71 + 32) = 0u;
  *(v71 + 48) = v80;
  *(v71 + 56) = v86;
  *(v71 + 64) = 0;
  *(v71 + 72) = 0;
  v92 = object;
  *(v71 + 80) = countAndFlagsBits;
  *(v71 + 88) = v92;
  v93 = v122._object;
  *(v71 + 96) = v122._countAndFlagsBits;
  *(v71 + 104) = v93;
  *(v71 + 112) = v61;
  *(v71 + 120) = 0u;
  *(v71 + 136) = 0u;
  *(v71 + 152) = 0u;
  *(v71 + 168) = 0u;
  v94 = v21[16];
  sub_266A6F968(v146 + v94, v147, &qword_2800B1CC8, &unk_266AC0FD0);
  if (v147[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CD0, &unk_266AC12E0);
    v95 = swift_dynamicCast();
    v96 = v144;
    if ((v95 & 1) != 0 && BYTE6(v152) != 9)
    {
      v147[0] = v152;
      if (v144 == 9)
      {
        goto LABEL_35;
      }

      LOBYTE(v152) = v134;
      BYTE1(v152) = v136;
      OUTLINED_FUNCTION_19_1();
      BYTE2(v152) = v97;
      OUTLINED_FUNCTION_17_1();
      BYTE3(v152) = v98;
      WORD2(v152) = v131;
      BYTE6(v152) = v99;
      HIBYTE(v152) = v130;
      if (!static AdvertisementModel.== infix(_:_:)(v147, &v152, v100, v101))
      {
        goto LABEL_35;
      }

LABEL_38:
      v102 = 3;
      goto LABEL_39;
    }
  }

  else
  {
    sub_266A798F4(v147, &qword_2800B1CC8, &unk_266AC0FD0);
    v96 = v144;
  }

  if (v96 == 9)
  {
    goto LABEL_38;
  }

LABEL_35:
  v102 = 2;
LABEL_39:
  v103 = v21[11];
  v104 = sub_266ABD7A4();
  OUTLINED_FUNCTION_16();
  v106 = v146;
  (*(v105 + 16))(&v29[v103], v146 + v103, v104);
  __swift_storeEnumTagSinglePayload(&v29[v21[15]], 1, 1, v104);
  sub_266A6F968(v106 + v94, &v29[v21[16]], &qword_2800B1CC8, &unk_266AC0FD0);
  *v29 = v134;
  v29[1] = v136;
  OUTLINED_FUNCTION_19_1();
  v29[2] = v107;
  OUTLINED_FUNCTION_17_1();
  v29[3] = v108;
  *(v29 + 2) = v131;
  v29[6] = v144;
  v29[7] = v130;
  *(v29 + 8) = v151;
  v109 = v125;
  *(v29 + 3) = &type metadata for AdvertisementModel;
  *(v29 + 4) = v109;
  v110 = MEMORY[0x277D84F90];
  *(v29 + 5) = MEMORY[0x277D84F90];
  sub_266A6DBC4(&v148, (v29 + 48));
  *(v29 + 11) = 0;
  *(v29 + 12) = 0;
  *(v29 + 13) = v110;
  v29[112] = v102;
  *(v29 + 113) = 256;
  *&v29[v21[12]] = v110;
  *&v29[v21[13]] = v110;
  OUTLINED_FUNCTION_9_1(v21[14]);
  OUTLINED_FUNCTION_9_1(v21[17]);
  OUTLINED_FUNCTION_9_1(v21[18]);
  v29[v21[19]] = 0;
  v29[v21[20]] = 0;
  v29[v21[21]] = 0;
  v29[v21[22]] = 0;
  OUTLINED_FUNCTION_9_1(v21[23]);
  OUTLINED_FUNCTION_27_0(v21[24]);
  *(v111 + 8) = 1;
  OUTLINED_FUNCTION_27_0(v21[25]);
  *(v112 + 8) = 1;
  OUTLINED_FUNCTION_9_1(v21[26]);
  v113 = v141;
  sub_266A6E9E4(v29, v141);
  sub_266A98500();
  v115 = v114;
  v117 = *(v114 + 16);
  v116 = *(v114 + 24);
  if (v117 >= v116 >> 1)
  {
    OUTLINED_FUNCTION_7_1(v116);
    sub_266A98500();
    v115 = v121;
  }

  v118 = v129;
  *(v115 + 16) = v117 + 1;
  sub_266A7977C(v113, v115 + ((*(v145 + 80) + 32) & ~*(v145 + 80)) + v117 * v127);
  sub_266A94558();
  v120 = v119;

  v147[0] = v128;

  sub_266A7F950(v120);
  sub_266A6A63C(v29);
  sub_266A6A63C(v146);
  *v118 = v147[0];
}

uint64_t sub_266A7EC68(void *a1, void *a2)
{
  v4 = sub_266ABD7A4();
  OUTLINED_FUNCTION_1_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_2();
  v10 = (v8 - v9);
  MEMORY[0x28223BE20](v11);
  v13 = &v20 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = OUTLINED_FUNCTION_12_1();
  v15(v14);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v16 = OUTLINED_FUNCTION_12_1();
  v17(v16);
  LOBYTE(a1) = sub_266ABD724();
  v18 = *(v6 + 8);
  v18(v10, v4);
  v18(v13, v4);
  return a1 & 1;
}

void sub_266A7EDD4(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  (*(v5 + 128))(v20, v4, v5);
  if (v21)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CD0, &unk_266AC12E0);
    if (swift_dynamicCast())
    {
      v6 = v18[0];
      goto LABEL_14;
    }
  }

  else
  {
    sub_266A798F4(v20, &qword_2800B1CC8, &unk_266AC0FD0);
  }

  if (qword_280BB6C30 != -1)
  {
    OUTLINED_FUNCTION_10(&qword_280BB6C30);
  }

  v7 = sub_266ABD8D4();
  __swift_project_value_buffer(v7, qword_280BB7028);
  sub_266A6FFD8(a1, v20);
  v8 = sub_266ABD8C4();
  v9 = sub_266ABDD64();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v10 = 136315138;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    v12 = OUTLINED_FUNCTION_29_0();
    v13(v12);
    if (v19)
    {
      __swift_project_boxed_opaque_existential_1(v18, v19);
      v14 = sub_266ABE194();
      v16 = v15;
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
    }

    else
    {
      sub_266A798F4(v18, &qword_2800B1CC8, &unk_266AC0FD0);
      v16 = 0xE700000000000000;
      v14 = 0x6E776F6E6B6E55;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    v17 = sub_266A66D34(v14, v16, &v22);

    *(v10 + 4) = v17;
    _os_log_impl(&dword_266A65000, v8, v9, "#feedback Found a winner without a winning advertisement. This is likely a data integrity issue. Advertisement: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_8();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v20);
  }

  v6 = 0x9000000000000;
LABEL_14:
  *a2 = v6;
}

BOOL sub_266A7F060(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 32;
  v3 = *(a2 + 16) + 1;
  do
  {
    if (!--v3)
    {
      break;
    }

    v4 = v2 + 40;
    sub_266A6FFD8(v2, v8 + 1);
    v5 = v9;
    v6 = v10;
    __swift_project_boxed_opaque_existential_1((v8 + 1), v9);
    (*(v6 + 72))(v8, v5, v6);
    LODWORD(v5) = LOBYTE(v8[0]);
    __swift_destroy_boxed_opaque_existential_1Tm((v8 + 1));
    v2 = v4;
  }

  while (v5 != 3);
  return v3 == 0;
}

void sub_266A7F108()
{
  OUTLINED_FUNCTION_31();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1D88, &qword_266AC20D0);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v6);
  v8 = &v80 - v7;
  v9 = sub_266ABD864();
  OUTLINED_FUNCTION_1_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_2();
  v15 = (v13 - v14);
  MEMORY[0x28223BE20](v16);
  v18 = &v80 - v17;
  sub_266ABD8B4();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_2();
  v22 = *v5;
  if ((v22 & 0xFF000000000000) != 0x9000000000000)
  {
    LOBYTE(v23) = 6;
    v87 = v21;
    v88 = v20;
    v83 = v1;
    switch(BYTE1(v22))
    {
      case 1:
        if ((v22 & 0xFF000000000000) != 0)
        {
          LOBYTE(v23) = 7;
        }

        else
        {
          LOBYTE(v23) = 6;
        }

        break;
      case 2:
        LOBYTE(v23) = 0;
        break;
      case 3:
        LOBYTE(v23) = 1;
        break;
      case 4:
      case 5:
        v23 = v22 >> 8;
        break;
      case 6:
      case 0xA:
        LOBYTE(v23) = 3;
        break;
      case 7:
        LOBYTE(v23) = 5;
        break;
      case 9:
        break;
      default:
        LOBYTE(v23) = 8;
        break;
    }

    v82 = v22 >> 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CB8, &unk_266AC0FC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_266AC0EB0;
    v81 = sub_266A6D9F0();
    v24 = &unk_28783E630;
    v89 = v3;
    switch(v23)
    {
      case 1:
        v24 = &unk_28783E6C0;
        goto LABEL_22;
      case 2:
        goto LABEL_41;
      case 3:
        v24 = &unk_28783E750;
        goto LABEL_22;
      case 4:
        goto LABEL_22;
      case 5:
        if (BYTE6(v22) == 3)
        {
          v24 = &unk_28783E660;
        }

        else
        {
          v24 = &unk_28783E690;
        }

        goto LABEL_22;
      case 6:
        v24 = &unk_28783E720;
        goto LABEL_22;
      case 7:
        v24 = &unk_28783E7B0;
        goto LABEL_22;
      case 8:
        v24 = &unk_28783E7E0;
        goto LABEL_22;
      default:
        v24 = &unk_28783E6F0;
LABEL_22:
        v91 = v22;
        LOBYTE(v95) = v23;
        v80 = HIWORD(v22);
        LOBYTE(v92[0]) = BYTE6(v22);
        v25 = DeviceClass.displayName(productType:)(v92);
        countAndFlagsBits = v25._countAndFlagsBits;
        object = v25._object;
        v96 = &type metadata for DeviceModel;
        v97 = sub_266A6DA44();
        v26 = swift_allocObject();
        *&v95 = v26;
        if (v24[2])
        {
          v28 = v24[4];
          v27 = v24[5];

          v29._countAndFlagsBits = v28;
          v29._object = v27;
          DeviceClass.init(model:)(v29);
          LOBYTE(v98) = 0;
          v30 = DeviceClass.displayName(productType:)(&v98);
          v84 = v30._countAndFlagsBits;
          v31 = v30._object;
        }

        else
        {
          v31 = 0xEB00000000657365;
          OUTLINED_FUNCTION_28_0();
          v84 = v32;
        }

        sub_266ABD884();
        sub_266ABD8A4();
        if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
        {
          v33 = 0x30303030303023;
          v34 = OUTLINED_FUNCTION_6_1();
          v35(v34);
          sub_266A798F4(v8, &qword_2800B1D88, &qword_266AC20D0);
        }

        else
        {
          (*(v11 + 32))(v18, v8, v9);
          v36 = OUTLINED_FUNCTION_29_0();
          v37(v36);
          if ((*(v11 + 88))(v15, v9) == *MEMORY[0x277D85508])
          {
            (*(v11 + 96))(v15, v9);
            v33 = sub_266AA6004(*v15, v15[1], v15[2]);
            v39 = v38;
            (*(v11 + 8))(v18, v9);
            v40 = OUTLINED_FUNCTION_6_1();
            v41(v40);
            goto LABEL_31;
          }

          v33 = 0x30303030303023;
          v42 = *(v11 + 8);
          v42(v18, v9);
          v43 = OUTLINED_FUNCTION_6_1();
          v44(v43);
          v42(v15, v9);
        }

        v39 = 0xE700000000000000;
LABEL_31:
        *(v26 + 16) = 0u;
        *(v26 + 32) = 0u;
        *(v26 + 48) = v33;
        *(v26 + 56) = v39;
        *(v26 + 64) = 0;
        *(v26 + 72) = 0;
        OUTLINED_FUNCTION_17_1();
        *(v26 + 80) = v46;
        *(v26 + 88) = v45;
        *(v26 + 96) = v84;
        *(v26 + 104) = v31;
        *(v26 + 112) = v24;
        *(v26 + 120) = v47;
        *(v26 + 136) = v47;
        *(v26 + 152) = v47;
        *(v26 + 168) = v47;
        sub_266A79954(v89, v92);
        v48 = v93;
        if (!v93)
        {
          goto LABEL_41;
        }

        v49 = v91;
        v89 = HIBYTE(v91);
        v88 = HIDWORD(v91);
        v50 = v91 >> 24;
        v51 = v94;
        v52 = v91 >> 16;
        __swift_project_boxed_opaque_existential_1(v92, v93);
        v53 = *(v51 + 88);
        v54 = type metadata accessor for ParticipantModel(0);
        v55 = inited;
        *(inited + 56) = v54;
        *(v55 + 64) = sub_266A81304();
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v55 + 32));
        v53(v48, v51);
        v57 = v54[15];
        v58 = sub_266ABD7A4();
        __swift_storeEnumTagSinglePayload(boxed_opaque_existential_1 + v57, 1, 1, v58);
        v59 = boxed_opaque_existential_1 + v54[16];
        v60 = v81;
        *(v59 + 3) = &type metadata for AdvertisementModel;
        *(v59 + 4) = v60;
        *v59 = v49;
        v61 = v82;
        v59[1] = v82;
        v59[2] = v52;
        v59[3] = v50;
        v62 = v88;
        *(v59 + 2) = v88;
        v63 = v80;
        v59[6] = v80;
        v64 = v89;
        v59[7] = v89;
        *boxed_opaque_existential_1 = v49;
        *(boxed_opaque_existential_1 + 1) = v61;
        *(boxed_opaque_existential_1 + 2) = v52;
        *(boxed_opaque_existential_1 + 3) = v50;
        *(boxed_opaque_existential_1 + 2) = v62;
        *(boxed_opaque_existential_1 + 6) = v63;
        *(boxed_opaque_existential_1 + 7) = v64;
        *(boxed_opaque_existential_1 + 1) = v98;
        boxed_opaque_existential_1[3] = &type metadata for AdvertisementModel;
        boxed_opaque_existential_1[4] = v60;
        v65 = MEMORY[0x277D84F90];
        boxed_opaque_existential_1[5] = MEMORY[0x277D84F90];
        sub_266A6DBC4(&v95, (boxed_opaque_existential_1 + 6));
        boxed_opaque_existential_1[11] = 0;
        boxed_opaque_existential_1[12] = 0;
        boxed_opaque_existential_1[13] = v65;
        *(boxed_opaque_existential_1 + 56) = 3;
        *(boxed_opaque_existential_1 + 114) = 1;
        *(boxed_opaque_existential_1 + v54[12]) = v65;
        *(boxed_opaque_existential_1 + v54[13]) = v65;
        OUTLINED_FUNCTION_9_1(v54[14]);
        OUTLINED_FUNCTION_9_1(v54[17]);
        OUTLINED_FUNCTION_9_1(v54[18]);
        *(boxed_opaque_existential_1 + v54[19]) = 0;
        *(boxed_opaque_existential_1 + v54[20]) = 0;
        *(boxed_opaque_existential_1 + v54[21]) = 0;
        *(boxed_opaque_existential_1 + v54[22]) = 0;
        OUTLINED_FUNCTION_9_1(v54[23]);
        OUTLINED_FUNCTION_27_0(v54[24]);
        *(v66 + 8) = 1;
        OUTLINED_FUNCTION_27_0(v54[25]);
        *(v67 + 8) = 1;
        OUTLINED_FUNCTION_9_1(v54[26]);
        __swift_destroy_boxed_opaque_existential_1Tm(v92);
        v68 = v83;
        swift_isUniquelyReferenced_nonNull_native();
        v92[0] = *v68;
        *v68 = 0x8000000000000000;
        sub_266AB0BA4(v49);
        OUTLINED_FUNCTION_23_0();
        if (__OFADD__(v71, v72))
        {
          __break(1u);
LABEL_41:
          __break(1u);
        }

        else
        {
          v73 = v69;
          v74 = v70;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DA8, &qword_266AC6350);
          v75 = sub_266ABDF34();
          v76 = v92[0];
          if ((v75 & 1) == 0)
          {
LABEL_36:
            *v68 = v76;

            v79 = *v68;
            if ((v74 & 1) == 0)
            {
              sub_266AB44B4(v73, v91, MEMORY[0x277D84F90], v79);
            }

            sub_266A7F950(inited);
            break;
          }

          v77 = sub_266AB0BA4(v91);
          if ((v74 & 1) == (v78 & 1))
          {
            v73 = v77;
            goto LABEL_36;
          }
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DB0, &unk_266AC12D0);
        sub_266ABE1F4();
        __break(1u);
        return;
    }
  }

  OUTLINED_FUNCTION_30();
}

void sub_266A7F950(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_8_1(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_266A98A38(v4);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_31_0();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CC0, &qword_266AC1290);
  OUTLINED_FUNCTION_38(v8);

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v9 = *(v6 + 16);
  v5 = __OFADD__(v9, v1);
  v10 = v9 + v1;
  if (!v5)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_266A7FA00(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_8_1(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_266A98AC0(v4, 1);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_31_0();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_38(v8);

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v9 = *(v6 + 16);
  v5 = __OFADD__(v9, v1);
  v10 = v9 + v1;
  if (!v5)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_266A7FAB0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_8_1(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_266A98B50(result, 1);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = type metadata accessor for ParticipantModel(0);
  if (v7 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_266A7FBA0(void *a1, void *a2)
{
  v4 = sub_266ABD7A4();
  OUTLINED_FUNCTION_1_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_2();
  v10 = (v8 - v9);
  MEMORY[0x28223BE20](v11);
  v13 = v31 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = OUTLINED_FUNCTION_12_1();
  v16 = v15(v14);
  sub_266A79954(v16, &v34);

  if (!v35)
  {
    sub_266A798F4(&v34, &qword_2800B1D78, "^X");
LABEL_6:
    v28 = 0;
    return v28 & 1;
  }

  sub_266A6DBC4(&v34, v36);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v17 = OUTLINED_FUNCTION_12_1();
  v19 = v18(v17);
  sub_266A79954(v19, &v32);

  if (!v33)
  {
    sub_266A798F4(&v32, &qword_2800B1D78, "^X");
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    goto LABEL_6;
  }

  sub_266A6DBC4(&v32, &v34);
  OUTLINED_FUNCTION_40(v36);
  v20 = OUTLINED_FUNCTION_11_1();
  v21(v20);
  OUTLINED_FUNCTION_40(&v32);
  v22 = OUTLINED_FUNCTION_11_1();
  v23(v22);
  OUTLINED_FUNCTION_40(&v34);
  v24 = OUTLINED_FUNCTION_11_1();
  v25(v24);
  OUTLINED_FUNCTION_40(v31);
  v26 = OUTLINED_FUNCTION_11_1();
  v27(v26);
  OUTLINED_FUNCTION_32_0();
  v28 = sub_266ABD724();
  v29 = *(v6 + 8);
  v29(v10, v4);
  v29(v13, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v31);
  __swift_destroy_boxed_opaque_existential_1Tm(&v32);
  __swift_destroy_boxed_opaque_existential_1Tm(&v34);
  __swift_destroy_boxed_opaque_existential_1Tm(v36);
  return v28 & 1;
}

uint64_t Array<A>.firstWinner.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_266ABDDF4();
  OUTLINED_FUNCTION_1_0();
  v10 = v9;
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v11);
  v13 = &v18[-v12];
  v21 = a1;
  v19 = a2;
  v20 = a3;
  v14 = sub_266ABDCC4();
  v15 = OUTLINED_FUNCTION_0_0();
  swift_getWitnessTable(v15, v14);
  sub_266ABDBB4();
  if (__swift_getEnumTagSinglePayload(v13, 1, a2) == 1)
  {
    result = (*(v10 + 8))(v13, v8);
    *(a4 + 32) = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  else
  {
    *(a4 + 24) = a2;
    *(a4 + 32) = a3;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
    return (*(*(a2 - 8) + 32))(boxed_opaque_existential_1, v13, a2);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t Array<A>.asCDAPaticipants.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_266ABDCC4();
  sub_266A6AE78(0, &qword_2800B1D70, 0x277D56D28);
  v4 = OUTLINED_FUNCTION_0_0();
  swift_getWitnessTable(v4, v3);
  return sub_266ABDB94();
}

void sub_266A8011C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v104 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DB8, "h9");
  MEMORY[0x28223BE20](v8 - 8);
  v109 = &v95 - v9;
  v110 = sub_266ABD7A4();
  v106 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v105 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1DC0, &unk_266AC12F0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v98 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v99 = &v95 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v95 - v16;
  v107 = sub_266ABD7F4();
  v101 = *(v107 - 8);
  v18 = MEMORY[0x28223BE20](v107);
  v96 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v97 = &v95 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v100 = &v95 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v95 - v24;
  v26 = [objc_allocWithZone(MEMORY[0x277D56D28]) init];
  if (!v26)
  {
LABEL_73:
    __break(1u);
LABEL_74:

    __swift_destroy_boxed_opaque_existential_1Tm(v111);
    __break(1u);
    return;
  }

  v27 = v26;
  v28 = [objc_allocWithZone(MEMORY[0x277D56D18]) init];
  v102 = *(a3 + 72);
  v103 = a3 + 72;
  v102(v111, a2, a3);
  if (LOBYTE(v111[0]) == 3)
  {
    v29 = 1;
  }

  else
  {
    v29 = 2 * (LOBYTE(v111[0]) == 2);
  }

  v114 = v27;
  [v27 setDecision_];
  v30 = *(a3 + 144);
  v108 = a1;
  v30(a2, a3);
  v31 = v107;
  if (v32)
  {
    sub_266ABD7B4();

    if (__swift_getEnumTagSinglePayload(v17, 1, v31) == 1)
    {
      sub_266A798F4(v17, &qword_2800B1DC0, &unk_266AC12F0);
    }

    else
    {
      v95 = a2;
      v33 = v31;
      v34 = v101;
      (*(v101 + 32))(v25, v17, v33);
      sub_266A6AE78(0, &qword_2800B1DC8, 0x277D5AC78);
      v35 = v100;
      (*(v34 + 16))(v100, v25, v33);
      v36 = sub_266A8FD8C(v35);
      [v114 setCdaId_];

      v37 = v34;
      v31 = v33;
      a2 = v95;
      (*(v37 + 8))(v25, v31);
    }
  }

  (*(a3 + 136))(a2, a3);
  v39 = v109;
  v38 = v110;
  if (v40)
  {
    v41 = v99;
    sub_266ABD7B4();
    v42 = v41;

    if (__swift_getEnumTagSinglePayload(v41, 1, v31) == 1)
    {
      sub_266A798F4(v41, &qword_2800B1DC0, &unk_266AC12F0);
    }

    else
    {
      v43 = v101;
      v44 = v97;
      (*(v101 + 32))(v97, v42, v31);
      sub_266A6AE78(0, &qword_2800B1DC8, 0x277D5AC78);
      v45 = a2;
      v46 = v31;
      v47 = v100;
      (*(v43 + 16))(v100, v44, v46);
      v48 = v47;
      v31 = v46;
      a2 = v45;
      v39 = v109;
      v49 = sub_266A8FD8C(v48);
      [v114 setRequestId_];

      v50 = v43;
      v38 = v110;
      (*(v50 + 8))(v44, v31);
    }
  }

  (*(a3 + 120))(a2, a3);
  if (__swift_getEnumTagSinglePayload(v39, 1, v38) == 1)
  {
    sub_266A798F4(v39, &qword_2800B1DB8, "h9");
    v51 = v114;
    goto LABEL_19;
  }

  (*(v106 + 32))(v105, v39, v38);
  sub_266ABD754();
  if ((*&v52 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  if (v52 <= -1.0)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  if (v52 >= 1.84467441e19)
  {
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v51 = v114;
  [v114 setVoiceTriggerTimeNS_];
  (*(v106 + 8))(v105, v38);
LABEL_19:
  v53 = (*(a3 + 80))(a2, a3);
  if ((v53 & 0x100) == 0)
  {
    [v51 setRawGoodnessScore_];
  }

  v54 = (*(a3 + 104))(a2, a3);
  if (*(v54 + 16))
  {
    v55 = *(v54 + 32);

    v56 = v55;
    switch(v55)
    {
      case 1:
        break;
      case 2:
        v56 = 2;
        break;
      case 3:
        v56 = 3;
        break;
      case 4:
        v56 = 4;
        break;
      case 5:
        v56 = 5;
        break;
      case 6:
        v56 = 6;
        break;
      case 7:
        v56 = 7;
        break;
      case 8:
        v56 = 8;
        break;
      default:
        goto LABEL_25;
    }

    [v51 setTrumpReason_];
    if (v28)
    {
      [v28 setTrumpReason_];
      v57 = 1;
      goto LABEL_35;
    }
  }

  else
  {

LABEL_25:
    if (v28)
    {
      v57 = 0;
LABEL_35:
      [v28 setIsTrump_];
    }
  }

  v109 = *(a3 + 32);
  v110 = a3 + 32;
  (v109)(v111, a2, a3, v56);
  v58 = v112;
  v59 = v113;
  __swift_project_boxed_opaque_existential_1(v111, v112);
  (*(v59 + 192))(v58, v59);
  if (v60)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v111);
    v61 = v98;
    sub_266ABD7B4();

    if (__swift_getEnumTagSinglePayload(v61, 1, v31) == 1)
    {
      sub_266A798F4(v61, &qword_2800B1DC0, &unk_266AC12F0);
    }

    else
    {
      v62 = v101;
      v63 = *(v101 + 32);
      v95 = a2;
      v64 = v31;
      v65 = v96;
      v63(v96, v61, v64);
      sub_266A6AE78(0, &qword_2800B1DC8, 0x277D5AC78);
      v66 = v100;
      (*(v62 + 16))(v100, v65, v64);
      v67 = sub_266A8FD8C(v66);
      [v114 setSiriSpeechId_];

      v68 = v64;
      a2 = v95;
      (*(v62 + 8))(v65, v68);
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v111);
  }

  v69 = (*(a3 + 24))(a2, a3);
  v70 = 0;
  v71 = *(v69 + 16);
  v72 = v69 + 32;
  while (v71 != v70)
  {
    if (v70 >= *(v69 + 16))
    {
      __break(1u);
      goto LABEL_68;
    }

    sub_266A6FFD8(v72, v111);
    sub_266A810A8(v111, v28);
    if (v4)
    {
      goto LABEL_74;
    }

    ++v70;
    __swift_destroy_boxed_opaque_existential_1Tm(v111);
    v72 += 40;
  }

  (*(a3 + 160))(v111, a2, a3);
  v73 = v114;
  [v114 setAlarmState_];
  (*(a3 + 152))(v111, a2, a3);
  [v73 setTimerState_];
  (*(a3 + 168))(v111, a2, a3);
  [v73 setMediaState_];
  (*(a3 + 176))(v111, a2, a3);
  [v73 setTriggerType_];
  (v109)(v111, a2, a3);
  v74 = v112;
  v75 = v113;
  __swift_project_boxed_opaque_existential_1(v111, v112);
  (*(v75 + 224))(v74, v75);
  if (v76)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v111);
    v77 = sub_266ABDA74();

    [v73 setRoomNameHash_];
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v111);
  }

  v78 = (*(a3 + 184))(a2, a3);
  if ((v79 & 1) == 0)
  {
    if (v78 < 0)
    {
      goto LABEL_71;
    }

    [v73 setTimeSinceLastWinInMilliseconds_];
  }

  v80 = (*(a3 + 192))(a2, a3);
  if ((v81 & 1) == 0)
  {
    if (v80 < 0)
    {
      goto LABEL_72;
    }

    [v73 setTimeSinceTriggerInMilliseconds_];
  }

  [v73 setScoreBoosters_];
  (*(a3 + 16))(v111, a2, a3);
  v82 = v112;
  if (v112)
  {
    __swift_project_boxed_opaque_existential_1(v111, v112);
    v82 = Advertisement.asCDAAdvertisement.getter();
    __swift_destroy_boxed_opaque_existential_1Tm(v111);
  }

  else
  {
    sub_266A798F4(v111, &qword_2800B1CC8, &unk_266AC0FD0);
  }

  [v73 setAdvertisement_];

  v102(v111, a2, a3);
  [v73 setIsNearMiss_];
  if ((Participant.unknownParticipant.getter(a2, a3) & 1) == 0)
  {
    (v109)(v111, a2, a3);
    v83 = v112;
    v84 = v113;
    __swift_project_boxed_opaque_existential_1(v111, v112);
    (*(v84 + 40))(v83, v84);
    if (v85)
    {
      v86 = sub_266ABDA74();
    }

    else
    {
      v86 = 0;
    }

    v87 = v114;
    __swift_destroy_boxed_opaque_existential_1Tm(v111);
    [v87 setBuild_];

    (v109)(v111, a2, a3);
    v88 = v112;
    v89 = v113;
    __swift_project_boxed_opaque_existential_1(v111, v112);
    (*(v89 + 88))(v88, v89);
    if (v90)
    {
      v91 = sub_266ABDA74();
    }

    else
    {
      v91 = 0;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v111);
    v73 = v114;
    [v114 setLocale_];

    (v109)(v111, a2, a3);
    v92 = v112;
    v93 = v113;
    __swift_project_boxed_opaque_existential_1(v111, v112);
    (*(v93 + 136))(v92, v93);
    v94 = sub_266ABDC14();

    __swift_destroy_boxed_opaque_existential_1Tm(v111);
    [v73 setProductTypes_];
  }

  *v104 = v73;
}

uint64_t getEnumTagSinglePayload for CollationConfiguration(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
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

_BYTE *storeEnumTagSinglePayload for CollationConfiguration(_BYTE *result, int a2, int a3)
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

void sub_266A810A8(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = *(v4 + 32);
  v5(v13, v3, v4);
  v6 = v13[0];
  if ((v13[0] & 0x80000000) != 0)
  {
    goto LABEL_6;
  }

  if ((~v13[0] & 0x7F80000000000000) == 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  v7 = *(v13 + 1);
  if (*(v13 + 1) <= -1.0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(v13 + 1) < 4295000000.0)
  {
    goto LABEL_10;
  }

  __break(1u);
LABEL_6:
  v5(v13, v3, v4);
  v6 = v13[0];
  if ((v13[0] & 0x80000000) == 0)
  {
    return;
  }

  if ((~v13[0] & 0x7F80000000000000) == 0)
  {
    goto LABEL_25;
  }

  v7 = *(v13 + 1);
  if (*(v13 + 1) <= -1.0)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    swift_once();
LABEL_12:
    v9 = sub_266ABD8D4();
    __swift_project_value_buffer(v9, qword_280BB7028);
    v10 = sub_266ABD8C4();
    v11 = sub_266ABDD64();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 134217984;
      *(v12 + 4) = 0;
      _os_log_impl(&dword_266A65000, v10, v11, "#feedback - Trying to track an unknown boost: %ld", v12, 0xCu);
      MEMORY[0x26D5E9280](v12, -1, -1);
    }

    return;
  }

  if (*(v13 + 1) >= 4295000000.0)
  {
    goto LABEL_27;
  }

LABEL_10:
  v8 = v7;
  switch(v6)
  {
    case 1:
      [a2 setDeviceBoost_];
      break;
    case 2:
      [a2 setRecentUnlockBoost_];
      break;
    case 3:
      [a2 setRecentRaiseToWakeBoost_];
      break;
    case 4:
      [a2 setRecentSiriRequestBoost_];
      break;
    case 5:
      [a2 setRecentMotionBoost_];
      break;
    case 6:
      [a2 setRecentPlaybackBoost_];
      break;
    case 7:
      [a2 setRecentAlarmBoost_];
      break;
    default:
      if (qword_280BB6C30 == -1)
      {
        goto LABEL_12;
      }

      goto LABEL_28;
  }
}

unint64_t sub_266A81304()
{
  result = qword_2800B1DA0;
  if (!qword_2800B1DA0)
  {
    v3 = type metadata accessor for ParticipantModel(255);
    result = swift_getWitnessTable(protocol conformance descriptor for ParticipantModel, v3, v0, v1);
    atomic_store(result, &qword_2800B1DA0);
  }

  return result;
}

uint64_t sub_266A8135C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v6 = a2;
  }

  if (*(v6 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

unint64_t sub_266A813B0()
{
  result = qword_2800B1DE0;
  if (!qword_2800B1DE0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800B1DB0, &unk_266AC12D0);
    v4[0] = sub_266A81434();
    result = swift_getWitnessTable(MEMORY[0x277D84F48], v3, v4);
    atomic_store(result, &qword_2800B1DE0);
  }

  return result;
}

unint64_t sub_266A81434()
{
  result = qword_2800B1DE8;
  if (!qword_2800B1DE8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AdvertisementModel, &type metadata for AdvertisementModel, v0, v1);
    atomic_store(result, &qword_2800B1DE8);
  }

  return result;
}

uint64_t sub_266A81488(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1C48, &unk_266AC1310);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_266A81518(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ParticipantModel(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_24_0()
{
  v4 = **(v2 - 288);

  return MEMORY[0x2821FC3C0](v0, v4, v1);
}

uint64_t OUTLINED_FUNCTION_34_0()
{

  return sub_266A6F968(v2 - 208, v2 - 256, v0, v1);
}

void OUTLINED_FUNCTION_35()
{

  sub_266A98BE8();
}

uint64_t SCDAFeedbackModel.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SCDAFeedbackModel.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_266A81738(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1E08, &qword_266AC1370);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t SCDAFeedbackModel.request.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 64));

  return sub_266A6DBC4(a1, v1 + 64);
}

uint64_t SCDAFeedbackModel.userInput.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 112));

  return sub_266A6DBC4(a1, v1 + 112);
}

uint64_t SCDAFeedbackModel.init(id:request:dataCollectionGroup:deviceSelectedByHAL:submitted:userInput:version:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, __int128 *a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>)
{
  v13 = *a4;
  v14 = *a8;
  *(a9 + 40) = 0u;
  *(a9 + 56) = 0;
  *(a9 + 24) = 0u;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v13;
  sub_266A81738(a5, a9 + 24);
  sub_266A6DBC4(a3, a9 + 64);
  *(a9 + 104) = a6;
  result = sub_266A6DBC4(a7, a9 + 112);
  *(a9 + 152) = v14;
  return result;
}

unint64_t sub_266A819B8(uint64_t a1, uint64_t a2)
{
  v2 = sub_266ABDFD4();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_266A81A0C(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0x74736575716572;
      break;
    case 4:
      result = 0x657474696D627573;
      break;
    case 5:
      result = 0x75706E4972657375;
      break;
    case 6:
      result = 0x6E6F6973726576;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_266A81C64@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_266A819B8(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_266A81C94@<X0>(unint64_t *a1@<X8>)
{
  result = sub_266A81A0C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_266A81CDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266A81A04(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266A81D10(uint64_t a1)
{
  v2 = sub_266A82294();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266A81D4C(uint64_t a1)
{
  v2 = sub_266A82294();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SCDAFeedbackModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1E10, &qword_266AC1378);
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x28223BE20](v5);
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  v6 = a1[3];
  v26 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v6);
  sub_266A82294();
  sub_266ABE2B4();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    return sub_266A6CBB4(v22, &qword_2800B1E08, &qword_266AC1370);
  }

  else
  {
    v18[0] = 0;
    OUTLINED_FUNCTION_2_2();
    v20[0] = sub_266ABE044();
    v20[1] = v7;
    v17[0] = 1;
    sub_266A822E8();
    OUTLINED_FUNCTION_2_2();
    sub_266ABE084();
    v21 = 0;
    v17[175] = 2;
    sub_266A8233C();
    OUTLINED_FUNCTION_2_2();
    sub_266ABE024();
    memcpy(v17, v18, 0xA8uLL);
    if (sub_266A82390(v17) == 1)
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v19[1] = 0;
      v19[2] = 0;
    }

    else
    {
      v11 = sub_266A6DA44();
      v9 = swift_allocObject();
      memcpy((v9 + 16), v17, 0xA8uLL);
      v10 = &type metadata for DeviceModel;
    }

    v19[0] = v9;
    v19[3] = v10;
    v19[4] = v11;
    sub_266A81738(v19, v22);
    v15 = &type metadata for RequestModel;
    v16 = &protocol witness table for RequestModel;
    sub_266A823A8();
    OUTLINED_FUNCTION_2_2();
    sub_266ABE084();
    sub_266A6DBC4(&v14, v24);
    LOBYTE(v14) = 4;
    OUTLINED_FUNCTION_2_2();
    v24[40] = sub_266ABE054() & 1;
    v15 = &type metadata for UserInputModel;
    v16 = &protocol witness table for UserInputModel;
    *&v14 = swift_allocObject();
    sub_266A82464();
    OUTLINED_FUNCTION_2_2();
    sub_266ABE084();
    sub_266A6DBC4(&v14, v25);
    sub_266A824B8();
    OUTLINED_FUNCTION_2_2();
    sub_266ABE084();
    v12 = OUTLINED_FUNCTION_1_1();
    v13(v12);
    v25[40] = v14;
    sub_266A8250C(v20, a2);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    return sub_266A82544(v20);
  }
}

unint64_t sub_266A82294()
{
  result = qword_2800B1E18;
  if (!qword_2800B1E18)
  {
    result = swift_getWitnessTable(byte_266AC1638, &type metadata for SCDAFeedbackModel.Keys, v0, v1);
    atomic_store(result, &qword_2800B1E18);
  }

  return result;
}

unint64_t sub_266A822E8()
{
  result = qword_2800B1E20;
  if (!qword_2800B1E20)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DataCollectionGroup, &type metadata for DataCollectionGroup, v0, v1);
    atomic_store(result, &qword_2800B1E20);
  }

  return result;
}

unint64_t sub_266A8233C()
{
  result = qword_2800B1E28;
  if (!qword_2800B1E28)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DeviceModel, &type metadata for DeviceModel, v0, v1);
    atomic_store(result, &qword_2800B1E28);
  }

  return result;
}

uint64_t sub_266A82390(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_266A823A8()
{
  result = qword_2800B1E30;
  if (!qword_2800B1E30)
  {
    result = swift_getWitnessTable("9ow\x1Bhf", &type metadata for RequestModel, v0, v1);
    atomic_store(result, &qword_2800B1E30);
  }

  return result;
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x26D5E9280);
  }

  return result;
}

uint64_t sub_266A8244C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 3)
  {
  }

  return result;
}

unint64_t sub_266A82464()
{
  result = qword_2800B1E38;
  if (!qword_2800B1E38)
  {
    result = swift_getWitnessTable("Yyw\x1B|m", &type metadata for UserInputModel, v0, v1);
    atomic_store(result, &qword_2800B1E38);
  }

  return result;
}

unint64_t sub_266A824B8()
{
  result = qword_2800B1E40;
  if (!qword_2800B1E40)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Version, &type metadata for Version, v0, v1);
    atomic_store(result, &qword_2800B1E40);
  }

  return result;
}

uint64_t SCDAFeedbackModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1E48, &unk_266AC1380);
  OUTLINED_FUNCTION_1_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v17[-v9];
  sub_266A6FFD8(v3 + 64, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1C78, &unk_266AC0F90);
  if (swift_dynamicCast())
  {
    v23 = v7;
    v11 = v19[0];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_266A82294();
    sub_266ABE2C4();
    LOBYTE(v20[0]) = 0;
    sub_266ABE114();
    if (v2)
    {
      (*(v23 + 8))(v10, v5);
    }

    else
    {
      LOBYTE(v20[0]) = *(v3 + 16);
      LOBYTE(v19[0]) = 1;
      sub_266A82A30();
      OUTLINED_FUNCTION_4_3();
      OUTLINED_FUNCTION_0_1();
      sub_266ABE154();
      sub_266A83CCC(v3 + 24, v21, &qword_2800B1E08, &qword_266AC1370);
      if (v22)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1E00, &qword_266AC13A0);
        if (swift_dynamicCast())
        {
          memcpy(v19, v20, 0xA8uLL);
          memcpy(v18, v20, sizeof(v18));
          v17[7] = 2;
          sub_266A71BAC();
          OUTLINED_FUNCTION_0_1();
          sub_266ABE154();
          sub_266A72578(v19);
        }
      }

      else
      {
        sub_266A6CBB4(v21, &qword_2800B1E08, &qword_266AC1370);
      }

      v20[0] = v11;
      LOBYTE(v19[0]) = 3;
      sub_266A82A84();
      OUTLINED_FUNCTION_4_3();
      OUTLINED_FUNCTION_0_1();
      sub_266ABE154();

      LOBYTE(v20[0]) = 4;
      OUTLINED_FUNCTION_0_1();
      sub_266ABE124();
      sub_266A6FFD8(v3 + 112, v18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1E68, &qword_266AC1390);
      if (swift_dynamicCast())
      {
        v13 = OUTLINED_FUNCTION_4_3();
        memcpy(v13, v14, 0x5AuLL);
        LOBYTE(v19[0]) = 5;
        sub_266A82B2C();
        OUTLINED_FUNCTION_4_3();
        OUTLINED_FUNCTION_0_1();
        sub_266ABE154();
        sub_266A82B80(v20);
      }

      else
      {
        memset(v19, 0, 48);
        v19[6] = 1;
        memset(&v19[7], 0, 34);
        sub_266A6CBB4(v19, &qword_2800B1E70, &qword_266AC1398);
      }

      LOBYTE(v20[0]) = *(v3 + 152);
      LOBYTE(v19[0]) = 6;
      sub_266A82AD8();
      OUTLINED_FUNCTION_4_3();
      OUTLINED_FUNCTION_0_1();
      sub_266ABE154();
      v15 = OUTLINED_FUNCTION_3_3();
      return v16(v15);
    }
  }

  else
  {
    sub_266A829DC();
    swift_allocError();
    return swift_willThrow();
  }
}

unint64_t sub_266A829DC()
{
  result = qword_2800B1E50;
  if (!qword_2800B1E50)
  {
    result = swift_getWitnessTable(aA, &type metadata for FeedbackError, v0, v1);
    atomic_store(result, &qword_2800B1E50);
  }

  return result;
}

unint64_t sub_266A82A30()
{
  result = qword_2800B1E58;
  if (!qword_2800B1E58)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DataCollectionGroup, &type metadata for DataCollectionGroup, v0, v1);
    atomic_store(result, &qword_2800B1E58);
  }

  return result;
}

unint64_t sub_266A82A84()
{
  result = qword_2800B1E60;
  if (!qword_2800B1E60)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for RequestModel, &type metadata for RequestModel, v0, v1);
    atomic_store(result, &qword_2800B1E60);
  }

  return result;
}

unint64_t sub_266A82AD8()
{
  result = qword_2800B1E78;
  if (!qword_2800B1E78)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Version, &type metadata for Version, v0, v1);
    atomic_store(result, &qword_2800B1E78);
  }

  return result;
}

unint64_t sub_266A82B2C()
{
  result = qword_2800B1E80;
  if (!qword_2800B1E80)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UserInputModel, &type metadata for UserInputModel, v0, v1);
    atomic_store(result, &qword_2800B1E80);
  }

  return result;
}

uint64_t static SCDAFeedbackModel.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_266ABE1C4() & 1) == 0 || (sub_266A93848(*(a1 + 16), *(a2 + 16)) & 1) == 0)
  {
    goto LABEL_50;
  }

  sub_266A83CCC((a1 + 3), v33, &qword_2800B1E08, &qword_266AC1370);
  if (v34)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1E00, &qword_266AC13A0);
    if (swift_dynamicCast())
    {
      memcpy(__dst, __src, sizeof(__dst));
      nullsub_1();
      memcpy(v28, __dst, 0xA8uLL);
    }

    else
    {
      sub_266A83CC4(v28);
    }

    OUTLINED_FUNCTION_5_1(v35);
  }

  else
  {
    sub_266A6CBB4(v33, &qword_2800B1E08, &qword_266AC1370);
    sub_266A83CC4(v35);
  }

  sub_266A83CCC(a2 + 24, v30, &qword_2800B1E08, &qword_266AC1370);
  if (v31)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1E00, &qword_266AC13A0);
    if (swift_dynamicCast())
    {
      memcpy(v29, __src, sizeof(v29));
      nullsub_1();
      memcpy(v28, v29, 0xA8uLL);
    }

    else
    {
      sub_266A83CC4(v28);
    }

    OUTLINED_FUNCTION_5_1(__dst);
  }

  else
  {
    sub_266A6CBB4(v30, &qword_2800B1E08, &qword_266AC1370);
    sub_266A83CC4(__dst);
  }

  memcpy(v28, v35, 0xA8uLL);
  memcpy(&v28[21], __dst, 0xA8uLL);
  memcpy(v29, v35, sizeof(v29));
  if (sub_266A82390(v29) == 1)
  {
    memcpy(__src, &v28[21], 0xA8uLL);
    if (sub_266A82390(__src) == 1)
    {
      OUTLINED_FUNCTION_5_1(v22);
      sub_266A6CBB4(v22, &qword_2800B1E98, &qword_266AC13B0);
      goto LABEL_27;
    }

LABEL_24:
    memcpy(__src, v28, sizeof(__src));
    v5 = &unk_2800B1E90;
    v6 = &unk_266AC13A8;
LABEL_25:
    sub_266A6CBB4(__src, v5, v6);
    goto LABEL_50;
  }

  OUTLINED_FUNCTION_5_1(v22);
  OUTLINED_FUNCTION_5_1(v21);
  memcpy(__src, &v28[21], 0xA8uLL);
  if (sub_266A82390(__src) == 1)
  {
    OUTLINED_FUNCTION_5_1(v20);
    sub_266A83CCC(v22, v19, &qword_2800B1E98, &qword_266AC13B0);
    sub_266A72578(v20);
    goto LABEL_24;
  }

  memcpy(v20, &v28[21], sizeof(v20));
  sub_266A83CCC(v22, v19, &qword_2800B1E98, &qword_266AC13B0);
  v7 = static DeviceModel.== infix(_:_:)(v21, v20);
  memcpy(v18, v20, sizeof(v18));
  sub_266A72578(v18);
  memcpy(v19, v21, sizeof(v19));
  sub_266A72578(v19);
  OUTLINED_FUNCTION_5_1(v20);
  OUTLINED_FUNCTION_8_2(v20);
  if ((v7 & 1) == 0)
  {
    goto LABEL_50;
  }

LABEL_27:
  sub_266A6FFD8((a1 + 8), v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1C78, &unk_266AC0F90);
  v8 = swift_dynamicCast();
  v9 = *&__src[0];
  sub_266A6FFD8(a2 + 64, __src);
  if (swift_dynamicCast())
  {
    v10 = *&v22[0];
  }

  else
  {
    v10 = 0;
  }

  if (!v8 || !v9)
  {
    if (!v10)
    {
      goto LABEL_39;
    }

LABEL_38:

    goto LABEL_50;
  }

  if (!v10)
  {
    goto LABEL_38;
  }

  v12 = sub_266A95214(v11);
  v13 = sub_266A95214(v10);
  if (!v12)
  {
    if (v13)
    {
      goto LABEL_49;
    }

    swift_bridgeObjectRelease_n();
LABEL_39:

    goto LABEL_40;
  }

  if (!v13)
  {
LABEL_49:

    swift_bridgeObjectRelease_n();
    goto LABEL_50;
  }

  v14 = sub_266A839A8(v12, v13);
  swift_bridgeObjectRelease_n();

  if ((v14 & 1) == 0)
  {
    goto LABEL_50;
  }

LABEL_40:
  if (*(a1 + 104) != *(a2 + 104))
  {
    goto LABEL_50;
  }

  sub_266A6FFD8((a1 + 14), v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1E68, &qword_266AC1390);
  if ((swift_dynamicCast() & 1) == 0)
  {
    memset(__src, 0, 48);
    *&__src[3] = 1;
    *(&__src[3] + 8) = 0u;
    *(&__src[4] + 8) = 0u;
    WORD4(__src[5]) = 0;
  }

  sub_266A6FFD8(a2 + 112, v18);
  if ((swift_dynamicCast() & 1) == 0)
  {
    memset(v22, 0, sizeof(v22));
    v23 = 1;
    v24 = 0u;
    v25 = 0u;
    v26 = 0;
  }

  sub_266A83CCC(__src, v28, &qword_2800B1E70, &qword_266AC1398);
  sub_266A83CCC(v22, &v28[12], &qword_2800B1E70, &qword_266AC1398);
  if (v28[6] == 1)
  {
    if (v28[18] == 1)
    {
      OUTLINED_FUNCTION_8_2(v28);
      OUTLINED_FUNCTION_8_2(v22);
      OUTLINED_FUNCTION_8_2(__src);
LABEL_57:
      v15 = sub_266A937E0(*(a1 + 152), *(a2 + 152));
      return v15 & 1;
    }

    goto LABEL_54;
  }

  sub_266A83CCC(v28, v21, &qword_2800B1E70, &qword_266AC1398);
  if (v28[18] == 1)
  {
    sub_266A82B80(v21);
LABEL_54:
    sub_266A6CBB4(v28, &qword_2800B1EA0, &qword_266AC13B8);
    sub_266A6CBB4(v22, &qword_2800B1E70, &qword_266AC1398);
    v5 = &qword_2800B1E70;
    v6 = &qword_266AC1398;
    goto LABEL_25;
  }

  memcpy(v20, &v28[12], 0x5AuLL);
  v17 = static UserInputModel.== infix(_:_:)(v21, v20);
  sub_266A82B80(v20);
  sub_266A82B80(v21);
  sub_266A6CBB4(v28, &qword_2800B1E70, &qword_266AC1398);
  sub_266A6CBB4(v22, &qword_2800B1E70, &qword_266AC1398);
  sub_266A6CBB4(__src, &qword_2800B1E70, &qword_266AC1398);
  if (v17)
  {
    goto LABEL_57;
  }

LABEL_50:
  v15 = 0;
  return v15 & 1;
}

uint64_t SCDAFeedbackModel.hash(into:)(uint64_t a1)
{
  sub_266ABDB04();
  sub_266A6FFD8(v1 + 64, __src);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1C78, &unk_266AC0F90);
  if (OUTLINED_FUNCTION_7_2(v3, v4, v5, &type metadata for RequestModel, v6, v7, v8, v9, *v18, *&v18[8], *&v18[16], *&v18[24], *&v18[32], *&v18[40], *&v18[48], *&v18[56], *&v18[64], *&v18[72], *&v18[80], *&v18[88], *&v18[96], *&v18[104], *&v18[112], *&v18[120], *&v18[128], *&v18[136], *&v18[144], *&v18[152], *&v18[160], v19, __src[0]))
  {
    if (sub_266A95214(*v18))
    {
      sub_266A9C670();
    }
  }

  sub_266ABDB04();

  sub_266A83CCC(v1 + 24, v21, &qword_2800B1E08, &qword_266AC1370);
  if (v22)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1E00, &qword_266AC13A0);
    if (swift_dynamicCast())
    {
      memcpy(v18, __src, sizeof(v18));
      if (*&v18[112])
      {
        sub_266ABE264();
        sub_266ABDB04();
      }

      else
      {
        sub_266ABE264();
      }

      if (*&v18[8])
      {
        sub_266ABE264();
        sub_266ABDB04();
      }

      else
      {
        sub_266ABE264();
      }

      sub_266A72578(v18);
    }
  }

  else
  {
    sub_266A6CBB4(v21, &qword_2800B1E08, &qword_266AC1370);
  }

  sub_266A6FFD8(v1 + 112, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1E68, &qword_266AC1390);
  if (swift_dynamicCast())
  {
    memcpy(__src, v18, 0x5AuLL);
    UserInputModel.hash(into:)(a1);
    sub_266A82B80(__src);
  }

  else
  {
    memset(v18, 0, 48);
    *&v18[48] = 1;
    memset(&v18[56], 0, 34);
    sub_266A6CBB4(v18, &qword_2800B1E70, &qword_266AC1398);
  }

  v10 = sub_266A6FFD8(v1 + 64, __src);
  if (OUTLINED_FUNCTION_7_2(v10, v11, v12, &type metadata for RequestModel, v13, v14, v15, v16, *v18, *&v18[8], *&v18[16], *&v18[24], *&v18[32], *&v18[40], *&v18[48], *&v18[56], *&v18[64], *&v18[72], *&v18[80], *&v18[88], *&v18[96], *&v18[104], *&v18[112], *&v18[120], *&v18[128], *&v18[136], *&v18[144], *&v18[152], *&v18[160], v19, __src[0]))
  {
    if (sub_266A95214(*v18))
    {
      sub_266A9C670();
    }
  }

  sub_266ABE264();
  sub_266ABDB04();
}

uint64_t SCDAFeedbackModel.hashValue.getter()
{
  sub_266ABE244();
  SCDAFeedbackModel.hash(into:)(v1);
  return sub_266ABE2A4();
}

uint64_t sub_266A8368C(uint64_t a1)
{
  sub_266ABE244();
  SCDAFeedbackModel.hash(into:)(v2);
  return sub_266ABE2A4();
}

uint64_t sub_266A836C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 48);
    v4 = (a2 + 48);
    do
    {
      v5 = *(v3 - 2);
      v6 = *(v4 - 2);
      if ((v5 & 0x80000000) != 0)
      {
        if ((v6 & 0x80000000) == 0)
        {
          return 0;
        }

        if (v6 != v5 || *(&v5 + 1) != *(&v6 + 1))
        {
          return 0;
        }
      }

      else
      {
        if ((v6 & 0x80000000) != 0)
        {
          return 0;
        }

        v7 = v6 == v5 && *(&v5 + 1) == *(&v6 + 1);
        v8 = v7 && *(v3 - 1) == *(v4 - 1);
        if (!v8 || *v3 != *v4)
        {
          return 0;
        }
      }

      v3 += 3;
      v4 += 3;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_266A8377C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 32);
    for (i = (a2 + 32); ; i += 168)
    {
      memcpy(__dst, v3, sizeof(__dst));
      memcpy(v9, v3, sizeof(v9));
      memcpy(v11, i, sizeof(v11));
      memcpy(__src, i, sizeof(__src));
      sub_266A6E078(__dst, v7);
      sub_266A6E078(v11, v7);
      v5 = static DeviceModel.== infix(_:_:)(v9, __src);
      memcpy(v12, __src, sizeof(v12));
      sub_266A72578(v12);
      memcpy(v13, v9, sizeof(v13));
      sub_266A72578(v13);
      if ((v5 & 1) == 0)
      {
        break;
      }

      v3 += 168;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_266A8388C(uint64_t result, uint64_t a2, int16x4_t a3, uint8x8_t a4)
{
  v4 = *(result + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || result == a2)
  {
    return 1;
  }

  v5 = 0;
  while (v4)
  {
    a3.i32[0] = *(result + v5 + 32);
    a4.i32[0] = *(a2 + v5 + 32);
    a4 = (vmovl_u8(a4).u64[0] & 0xFF00FF00FF00FFLL);
    a3 = vceq_s16((vmovl_u8(a3).u64[0] & 0xFF00FF00FF00FFLL), a4);
    LODWORD(v6) = vminv_u16(a3) & (*(result + v5 + 38) == *(a2 + v5 + 38));
    if (*(result + v5 + 39) != *(a2 + v5 + 39))
    {
      LODWORD(v6) = 0;
    }

    if (*(result + v5 + 36) == *(a2 + v5 + 36))
    {
      v6 = v6;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6 != 1 || v4-- == 1;
    v5 += 8;
    if (v7)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_266A8394C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_266A839A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = a1 + 32;
    v4 = a2 + 32;
    do
    {
      sub_266A841B0(v3, v11);
      sub_266A841B0(v4, v10);
      sub_266A95358();
      v6 = v5;
      sub_266A95358();
      if (v6)
      {
        if (!v7)
        {
          goto LABEL_13;
        }

        v8 = sub_266A83AC4(v6, v7);

        sub_266A8420C(v10);
        sub_266A8420C(v11);
        if ((v8 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (v7)
        {
LABEL_13:

          sub_266A8420C(v10);
          sub_266A8420C(v11);
          return 0;
        }

        sub_266A8420C(v10);
        sub_266A8420C(v11);
      }

      v3 += 72;
      v4 += 72;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_266A83AC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ParticipantModel(0) - 8;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v19 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v17 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_266A6E9E4(v13, v10);
        sub_266A6E9E4(v14, v7);
        static ParticipantModel.== infix(_:_:)();
        v17 = v16;
        sub_266A6A63C(v7);
        sub_266A6A63C(v10);
        if ((v17 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_266A83C38(uint64_t a1, uint64_t a2)
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
      if (!v5 && (sub_266ABE1C4() & 1) == 0)
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

uint64_t sub_266A83CCC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_266A83D38()
{
  result = qword_2800B1EA8;
  if (!qword_2800B1EA8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SCDAFeedbackModel, &type metadata for SCDAFeedbackModel, v0, v1);
    atomic_store(result, &qword_2800B1EA8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_34SiriCrossDeviceArbitrationFeedback0C0_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_266A83F14(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 153))
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

uint64_t sub_266A83F54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 152) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 153) = 1;
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

    *(result + 153) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SCDAFeedbackModel.Keys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_266A840AC()
{
  result = qword_2800B1EB0;
  if (!qword_2800B1EB0)
  {
    result = swift_getWitnessTable(byte_266AC1610, &type metadata for SCDAFeedbackModel.Keys, v0, v1);
    atomic_store(result, &qword_2800B1EB0);
  }

  return result;
}

unint64_t sub_266A84104()
{
  result = qword_2800B1EB8;
  if (!qword_2800B1EB8)
  {
    result = swift_getWitnessTable(aY, &type metadata for SCDAFeedbackModel.Keys, v0, v1);
    atomic_store(result, &qword_2800B1EB8);
  }

  return result;
}

unint64_t sub_266A8415C()
{
  result = qword_2800B1EC0;
  if (!qword_2800B1EC0)
  {
    result = swift_getWitnessTable(aI, &type metadata for SCDAFeedbackModel.Keys, v0, v1);
    atomic_store(result, &qword_2800B1EC0);
  }

  return result;
}

double sub_266A84288()
{
  v1 = OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback11GlobalsImpl_historyLengthSeconds;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_266A842F0(double a1)
{
  v3 = OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback11GlobalsImpl_historyLengthSeconds;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id sub_266A84390()
{
  result = [objc_allocWithZone(type metadata accessor for GlobalsImpl()) init];
  qword_280BB6C58 = result;
  return result;
}

id GlobalsImpl.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static GlobalsImpl.shared.getter()
{
  if (qword_280BB6C50 != -1)
  {
    swift_once();
  }

  v1 = qword_280BB6C58;

  return v1;
}

id sub_266A844AC()
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v1 = result;
    internalBuild = MobileGestalt_get_internalBuild();

    return internalBuild;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_266A844F0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_266A6B150(v1, v2);
}

id GlobalsImpl.init()()
{
  *&v0[OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback11GlobalsImpl_historyLengthSeconds] = 0x4082C00000000000;
  v1 = &v0[OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback11GlobalsImpl_localDeviceAssistantIdentifier];
  v2 = type metadata accessor for GlobalsImpl();
  *v1 = 0;
  *(v1 + 1) = 0;
  v4.receiver = v0;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_init);
}

id GlobalsImpl.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GlobalsImpl();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

SiriCrossDeviceArbitrationFeedback::MediaState_optional __swiftcall MediaState.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 6;
  if (rawValue < 6)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_266A8480C()
{
  result = qword_2800B1ED8;
  if (!qword_2800B1ED8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MediaState, &type metadata for MediaState, v0, v1);
    atomic_store(result, &qword_2800B1ED8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MediaState(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t NotificationConstants.Actions.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_266ABDFD4();

  *a3 = v4 != 0;
  return result;
}

unint64_t sub_266A84A24()
{
  result = qword_2800B1EE8;
  if (!qword_2800B1EE8)
  {
    result = swift_getWitnessTable("وw\x1B\bz", &type metadata for NotificationConstants.Actions, v0, v1);
    atomic_store(result, &qword_2800B1EE8);
  }

  return result;
}

_BYTE *sub_266A84AC4(_BYTE *result, int a2, int a3)
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

SiriCrossDeviceArbitrationFeedback::AlarmTimerState_optional __swiftcall AlarmTimerState.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_266A84B90()
{
  result = qword_2800B1EF0;
  if (!qword_2800B1EF0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AlarmTimerState, &type metadata for AlarmTimerState, v0, v1);
    atomic_store(result, &qword_2800B1EF0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AlarmTimerState(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t Array<A>.userFriendlyDeviceDescription.getter(uint64_t a1)
{
  KeyPath = swift_getKeyPath();
  v3 = sub_266A949F0(a1, KeyPath);

  return v3;
}

SiriCrossDeviceArbitrationFeedback::UserFeedbackPromptFrequency_optional __swiftcall UserFeedbackPromptFrequency.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v5 = rawValue._countAndFlagsBits == 0x726576656ELL && rawValue._object == 0xE500000000000000;
  if (v5 || (OUTLINED_FUNCTION_7_3(0x726576656ELL, 0xE500000000000000) & 1) != 0)
  {

    v7 = 0;
  }

  else
  {
    v8 = countAndFlagsBits == 0x6F486E4165636E6FLL && object == 0xEA00000000007275;
    if (v8 || (OUTLINED_FUNCTION_7_3(0x6F486E4165636E6FLL, 0xEA00000000007275) & 1) != 0)
    {

      v7 = 1;
    }

    else
    {
      v9 = countAndFlagsBits == 0x7961444165636E6FLL && object == 0xE800000000000000;
      if (v9 || (OUTLINED_FUNCTION_7_3(0x7961444165636E6FLL, 0xE800000000000000) & 1) != 0)
      {

        v7 = 2;
      }

      else if (countAndFlagsBits == 0x7165527972657665 && object == 0xEC00000074736575)
      {

        v7 = 3;
      }

      else
      {
        v11 = OUTLINED_FUNCTION_7_3(0x7165527972657665, 0xEC00000074736575);

        if (v11)
        {
          v7 = 3;
        }

        else
        {
          v7 = 4;
        }
      }
    }
  }

  *v4 = v7;
  return result;
}

uint64_t UserFeedbackPromptFrequency.ordinal.getter()
{
  result = sub_266A85048(*v0, &unk_28783E9D8);
  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_266A85048(unsigned __int8 a1, uint64_t a2)
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

uint64_t UserFeedbackPromptFrequency.debugDescription.getter()
{
  result = 0x726576654ELL;
  switch(*v0)
  {
    case 1:
      result = 0x206E412065636E4FLL;
      break;
    case 2:
      result = 0x4420412065636E4FLL;
      break;
    case 3:
      result = 0x6552207972657645;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t UserFeedbackPromptFrequency.description.getter()
{
  v0 = sub_266ABD814();
  v1 = OUTLINED_FUNCTION_21(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2();
  v2 = sub_266ABDA64();
  v3 = OUTLINED_FUNCTION_21(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2();
  sub_266ABDA04();
  sub_266A85294();
  static NSBundle.feedback.getter();
  sub_266ABD804();
  return OUTLINED_FUNCTION_4();
}

unint64_t sub_266A85294()
{
  result = qword_2800B1C90;
  if (!qword_2800B1C90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800B1C90);
  }

  return result;
}

uint64_t static UserFeedbackPromptFrequency.groupTitle.getter()
{
  v0 = sub_266ABD814();
  v1 = OUTLINED_FUNCTION_21(v0);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2();
  v2 = sub_266ABDA64();
  v3 = OUTLINED_FUNCTION_21(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2();
  sub_266ABDA04();
  sub_266A85294();
  static NSBundle.feedback.getter();
  sub_266ABD804();
  return OUTLINED_FUNCTION_4();
}

uint64_t sub_266A853C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726576656ELL && a2 == 0xE500000000000000;
  if (v4 || (sub_266ABE1C4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F486E4165636E6FLL && a2 == 0xEA00000000007275;
    if (v6 || (sub_266ABE1C4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7961444165636E6FLL && a2 == 0xE800000000000000;
      if (v7 || (sub_266ABE1C4() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x7165527972657665 && a2 == 0xEC00000074736575)
      {

        return 3;
      }

      else
      {
        v9 = sub_266ABE1C4();

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

uint64_t sub_266A85530(char a1)
{
  result = 0x726576656ELL;
  switch(a1)
  {
    case 1:
      result = 0x6F486E4165636E6FLL;
      break;
    case 2:
      result = 0x7961444165636E6FLL;
      break;
    case 3:
      result = 0x7165527972657665;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_266A855D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266A853C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266A85600@<X0>(_BYTE *a1@<X8>)
{
  result = sub_266A85528();
  *a1 = result;
  return result;
}

uint64_t sub_266A85628(uint64_t a1)
{
  v2 = sub_266A85C88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266A85664(uint64_t a1)
{
  v2 = sub_266A85C88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266A856C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_266A855BC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_266A856EC(uint64_t a1)
{
  v2 = sub_266A85CDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266A85728(uint64_t a1)
{
  v2 = sub_266A85CDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266A85764(uint64_t a1)
{
  v2 = sub_266A85DD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266A857A0(uint64_t a1)
{
  v2 = sub_266A85DD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266A857DC(uint64_t a1)
{
  v2 = sub_266A85D30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266A85818(uint64_t a1)
{
  v2 = sub_266A85D30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266A85854(uint64_t a1)
{
  v2 = sub_266A85D84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266A85890(uint64_t a1)
{
  v2 = sub_266A85D84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UserFeedbackPromptFrequency.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1F00, &qword_266AC1A50);
  OUTLINED_FUNCTION_1_0();
  v40 = v4;
  v41 = v3;
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_8_3();
  v39 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1F08, &qword_266AC1A58);
  OUTLINED_FUNCTION_1_0();
  v37 = v8;
  v38 = v7;
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_8_3();
  v36 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1F10, &qword_266AC1A60);
  OUTLINED_FUNCTION_1_0();
  v34 = v12;
  v35 = v11;
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_8_3();
  v33 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1F18, &qword_266AC1A68);
  OUTLINED_FUNCTION_1_0();
  v31 = v16;
  v32 = v15;
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v17);
  v19 = &v31 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1F20, &qword_266AC1A70);
  OUTLINED_FUNCTION_1_0();
  v22 = v21;
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v23);
  v25 = &v31 - v24;
  v26 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266A85C88();
  sub_266ABE2C4();
  switch(v26)
  {
    case 1:
      v43 = 1;
      sub_266A85D84();
      v27 = v33;
      OUTLINED_FUNCTION_5_2(&type metadata for UserFeedbackPromptFrequency.OnceAnHourCodingKeys, &v43);
      v29 = v34;
      v28 = v35;
      goto LABEL_6;
    case 2:
      v44 = 2;
      sub_266A85D30();
      v27 = v36;
      OUTLINED_FUNCTION_5_2(&type metadata for UserFeedbackPromptFrequency.OnceADayCodingKeys, &v44);
      v29 = v37;
      v28 = v38;
      goto LABEL_6;
    case 3:
      v45 = 3;
      sub_266A85CDC();
      v27 = v39;
      OUTLINED_FUNCTION_5_2(&type metadata for UserFeedbackPromptFrequency.EveryRequestCodingKeys, &v45);
      v29 = v40;
      v28 = v41;
LABEL_6:
      (*(v29 + 8))(v27, v28);
      break;
    default:
      v42 = 0;
      sub_266A85DD8();
      sub_266ABE0C4();
      (*(v31 + 8))(v19, v32);
      break;
  }

  return (*(v22 + 8))(v25, v20);
}

unint64_t sub_266A85C88()
{
  result = qword_2800B1F28;
  if (!qword_2800B1F28)
  {
    result = swift_getWitnessTable(byte_266AC2010, &type metadata for UserFeedbackPromptFrequency.CodingKeys, v0, v1);
    atomic_store(result, &qword_2800B1F28);
  }

  return result;
}

unint64_t sub_266A85CDC()
{
  result = qword_2800B1F30;
  if (!qword_2800B1F30)
  {
    result = swift_getWitnessTable(aI_0, &type metadata for UserFeedbackPromptFrequency.EveryRequestCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B1F30);
  }

  return result;
}

unint64_t sub_266A85D30()
{
  result = qword_2800B1F38;
  if (!qword_2800B1F38)
  {
    result = swift_getWitnessTable(byte_266AC1F70, &type metadata for UserFeedbackPromptFrequency.OnceADayCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B1F38);
  }

  return result;
}

unint64_t sub_266A85D84()
{
  result = qword_2800B1F40;
  if (!qword_2800B1F40)
  {
    result = swift_getWitnessTable(asc_266AC1F20, &type metadata for UserFeedbackPromptFrequency.OnceAnHourCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B1F40);
  }

  return result;
}

unint64_t sub_266A85DD8()
{
  result = qword_2800B1F48;
  if (!qword_2800B1F48)
  {
    result = swift_getWitnessTable(aY_0, &type metadata for UserFeedbackPromptFrequency.NeverCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B1F48);
  }

  return result;
}

uint64_t UserFeedbackPromptFrequency.hashValue.getter()
{
  v1 = *v0;
  sub_266ABE244();
  MEMORY[0x26D5E8B00](v1);
  return sub_266ABE2A4();
}

void UserFeedbackPromptFrequency.init(from:)(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v65 = a2;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1F50, &qword_266AC1A78);
  OUTLINED_FUNCTION_1_0();
  v64 = v3;
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_8_3();
  v67 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1F58, &qword_266AC1A80);
  OUTLINED_FUNCTION_1_0();
  v61 = v7;
  v62 = v6;
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_8_3();
  v63 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1F60, &qword_266AC1A88);
  OUTLINED_FUNCTION_1_0();
  v59 = v11;
  v60 = v10;
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v12);
  v14 = &v52 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1F68, &qword_266AC1A90);
  OUTLINED_FUNCTION_1_0();
  v58 = v16;
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v17);
  v19 = &v52 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1F70, &qword_266AC1A98);
  OUTLINED_FUNCTION_1_0();
  v66 = v21;
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v22);
  v24 = &v52 - v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266A85C88();
  v25 = v69;
  sub_266ABE2B4();
  if (v25)
  {
    goto LABEL_9;
  }

  v55 = v15;
  v56 = v19;
  v57 = v14;
  v26 = v67;
  v27 = v68;
  v69 = a1;
  v28 = v24;
  v29 = sub_266ABE0B4();
  sub_266A86550(v29, 0);
  if (v32 == v33 >> 1)
  {
    goto LABEL_8;
  }

  v54 = 0;
  if (v32 >= (v33 >> 1))
  {
    __break(1u);
    return;
  }

  v34 = *(v31 + v32);
  sub_266A86B48(v32 + 1, v33 >> 1, v30, v31, v32, v33);
  v36 = v35;
  v38 = v37;
  swift_unknownObjectRelease();
  if (v36 != v38 >> 1)
  {
LABEL_8:
    v44 = v66;
    v45 = sub_266ABDEF4();
    swift_allocError();
    v47 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1F78, &qword_266AC1AA0);
    *v47 = &type metadata for UserFeedbackPromptFrequency;
    sub_266ABDFF4();
    sub_266ABDEE4();
    (*(*(v45 - 8) + 104))(v47, *MEMORY[0x277D84160], v45);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v44 + 8))(v28, v20);
    a1 = v69;
LABEL_9:
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return;
  }

  v39 = v65;
  v40 = v66;
  v53 = v34;
  v41 = v34;
  v42 = v64;
  switch(v41)
  {
    case 1:
      v71 = 1;
      sub_266A85D84();
      v48 = v57;
      OUTLINED_FUNCTION_6_2(&type metadata for UserFeedbackPromptFrequency.OnceAnHourCodingKeys, &v71);
      swift_unknownObjectRelease();
      v50 = v59;
      v49 = v60;
      goto LABEL_18;
    case 2:
      v72[0] = 2;
      sub_266A85D30();
      v48 = v63;
      OUTLINED_FUNCTION_6_2(&type metadata for UserFeedbackPromptFrequency.OnceADayCodingKeys, v72);
      swift_unknownObjectRelease();
      v50 = v61;
      v49 = v62;
LABEL_18:
      (*(v50 + 8))(v48, v49);
      goto LABEL_19;
    case 3:
      v72[1] = 3;
      sub_266A85CDC();
      v51 = v54;
      sub_266ABDFE4();
      if (v51)
      {
        (*(v40 + 8))(v28, v20);
        swift_unknownObjectRelease();
        a1 = v69;
        goto LABEL_9;
      }

      swift_unknownObjectRelease();
      (*(v42 + 8))(v26, v27);
LABEL_19:
      (*(v40 + 8))(v28, v20);
      *v39 = v53;
      __swift_destroy_boxed_opaque_existential_1Tm(v69);
      break;
    default:
      v70 = 0;
      sub_266A85DD8();
      v43 = v56;
      OUTLINED_FUNCTION_6_2(&type metadata for UserFeedbackPromptFrequency.NeverCodingKeys, &v70);
      swift_unknownObjectRelease();
      (*(v58 + 8))(v43, v55);
      goto LABEL_19;
  }
}

uint64_t sub_266A86528@<X0>(uint64_t *a1@<X8>)
{
  result = UserFeedbackPromptFrequency.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_266A86550(uint64_t a1, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(a1 + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_1_2();
    return;
  }

LABEL_9:
  __break(1u);
}

unint64_t sub_266A8658C()
{
  result = qword_2800B1F80;
  if (!qword_2800B1F80)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UserFeedbackPromptFrequency, &type metadata for UserFeedbackPromptFrequency, v0, v1);
    atomic_store(result, &qword_2800B1F80);
  }

  return result;
}

unint64_t sub_266A865E4()
{
  result = qword_2800B1F88;
  if (!qword_2800B1F88)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800B1F90, &qword_266AC1B60);
    result = swift_getWitnessTable(MEMORY[0x277D83988], v3, v0, v1);
    atomic_store(result, &qword_2800B1F88);
  }

  return result;
}

_BYTE *sub_266A86664(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_266A86784()
{
  result = qword_2800B1F98;
  if (!qword_2800B1F98)
  {
    result = swift_getWitnessTable(asc_266AC1EA8, &type metadata for UserFeedbackPromptFrequency.CodingKeys, v0, v1);
    atomic_store(result, &qword_2800B1F98);
  }

  return result;
}

unint64_t sub_266A867DC()
{
  result = qword_2800B1FA0;
  if (!qword_2800B1FA0)
  {
    result = swift_getWitnessTable(aWw, &type metadata for UserFeedbackPromptFrequency.NeverCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B1FA0);
  }

  return result;
}

unint64_t sub_266A86834()
{
  result = qword_2800B1FA8;
  if (!qword_2800B1FA8)
  {
    result = swift_getWitnessTable(byte_266AC1DF0, &type metadata for UserFeedbackPromptFrequency.NeverCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B1FA8);
  }

  return result;
}

unint64_t sub_266A8688C()
{
  result = qword_2800B1FB0;
  if (!qword_2800B1FB0)
  {
    result = swift_getWitnessTable(asc_266AC1D78, &type metadata for UserFeedbackPromptFrequency.OnceAnHourCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B1FB0);
  }

  return result;
}

unint64_t sub_266A868E4()
{
  result = qword_2800B1FB8;
  if (!qword_2800B1FB8)
  {
    result = swift_getWitnessTable(a9, &type metadata for UserFeedbackPromptFrequency.OnceAnHourCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B1FB8);
  }

  return result;
}

unint64_t sub_266A8693C()
{
  result = qword_2800B1FC0;
  if (!qword_2800B1FC0)
  {
    result = swift_getWitnessTable(aY_1, &type metadata for UserFeedbackPromptFrequency.OnceADayCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B1FC0);
  }

  return result;
}

unint64_t sub_266A86994()
{
  result = qword_2800B1FC8;
  if (!qword_2800B1FC8)
  {
    result = swift_getWitnessTable(byte_266AC1D50, &type metadata for UserFeedbackPromptFrequency.OnceADayCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B1FC8);
  }

  return result;
}

unint64_t sub_266A869EC()
{
  result = qword_2800B1FD0;
  if (!qword_2800B1FD0)
  {
    result = swift_getWitnessTable(aAw, &type metadata for UserFeedbackPromptFrequency.EveryRequestCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B1FD0);
  }

  return result;
}

unint64_t sub_266A86A44()
{
  result = qword_2800B1FD8;
  if (!qword_2800B1FD8)
  {
    result = swift_getWitnessTable(aAw_0, &type metadata for UserFeedbackPromptFrequency.EveryRequestCodingKeys, v0, v1);
    atomic_store(result, &qword_2800B1FD8);
  }

  return result;
}

unint64_t sub_266A86A9C()
{
  result = qword_2800B1FE0;
  if (!qword_2800B1FE0)
  {
    result = swift_getWitnessTable(byte_266AC1E18, &type metadata for UserFeedbackPromptFrequency.CodingKeys, v0, v1);
    atomic_store(result, &qword_2800B1FE0);
  }

  return result;
}

unint64_t sub_266A86AF4()
{
  result = qword_2800B1FE8;
  if (!qword_2800B1FE8)
  {
    result = swift_getWitnessTable(byte_266AC1E40, &type metadata for UserFeedbackPromptFrequency.CodingKeys, v0, v1);
    atomic_store(result, &qword_2800B1FE8);
  }

  return result;
}

uint64_t sub_266A86B48(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
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

uint64_t OUTLINED_FUNCTION_6_2(uint64_t a1, uint64_t a2)
{

  return sub_266ABDFE4();
}

uint64_t Device.saturate(device:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 40);
  v6 = v5(a2, a3);
  if (v7)
  {
    v8 = v6 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = 0;
  }

  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0xE000000000000000;
  }

  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = v8;
  }

  if (v10)
  {
    v11 = OUTLINED_FUNCTION_1();
    (v5)(v11);
  }

  else
  {
    OUTLINED_FUNCTION_3_4();
    v12 = OUTLINED_FUNCTION_5_3();
    v13(v12);
  }

  OUTLINED_FUNCTION_8_4();
  v14();
  v15 = *(a3 + 64);
  v16 = OUTLINED_FUNCTION_5();
  if ((v15)(v16) == 0x30303030303023 && v17 == 0xE700000000000000)
  {
  }

  else
  {
    v19 = sub_266ABE1C4();

    if ((v19 & 1) == 0)
    {
      v20 = OUTLINED_FUNCTION_1();
      v15(v20);
      goto LABEL_20;
    }
  }

  OUTLINED_FUNCTION_3_4();
  v21 = OUTLINED_FUNCTION_5_3();
  v22(v21);
LABEL_20:
  OUTLINED_FUNCTION_8_4();
  v23();
  v24 = *(a3 + 88);
  v25 = OUTLINED_FUNCTION_5();
  v26 = v24(v25);
  if (v27)
  {
    v28 = v26 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v28 = 0;
  }

  if (v27)
  {
    v29 = v27;
  }

  else
  {
    v29 = 0xE000000000000000;
  }

  v30 = HIBYTE(v29) & 0xF;
  if ((v29 & 0x2000000000000000) == 0)
  {
    v30 = v28;
  }

  if (v30)
  {
    v31 = OUTLINED_FUNCTION_1();
    v24(v31);
  }

  else
  {
    OUTLINED_FUNCTION_3_4();
    v32 = OUTLINED_FUNCTION_5_3();
    v33(v32);
  }

  OUTLINED_FUNCTION_8_4();
  v34();
  v35 = *(a3 + 136);
  v36 = OUTLINED_FUNCTION_5();
  v37 = *(v35(v36) + 16);

  if (v37)
  {
    v38 = OUTLINED_FUNCTION_1();
    v39 = v35(v38);
  }

  else
  {
    OUTLINED_FUNCTION_3_4();
    v40 = OUTLINED_FUNCTION_5_3();
    v39 = v41(v40);
  }

  (*(a3 + 144))(v39, a2, a3);
  v42 = *(a3 + 112);
  v43 = OUTLINED_FUNCTION_5();
  v42(v43);

  if (v74)
  {
    v44 = v73 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v44 = 0;
  }

  if (v74)
  {
    v45 = v74;
  }

  else
  {
    v45 = 0xE000000000000000;
  }

  v46 = HIBYTE(v45) & 0xF;
  if ((v45 & 0x2000000000000000) == 0)
  {
    v46 = v44;
  }

  if (v46)
  {
    v47 = OUTLINED_FUNCTION_1();
    v42(v47);
  }

  else
  {
    v48 = OUTLINED_FUNCTION_10_2();
    __swift_project_boxed_opaque_existential_1(v48, v49);
    v50 = OUTLINED_FUNCTION_5_3();
    v51(v50);
  }

  v52 = OUTLINED_FUNCTION_1();
  v42(v52);

  (*(a3 + 120))(&v73, a2, a3);
  v53 = OUTLINED_FUNCTION_5();
  v54(v53);
  if (v55)
  {
  }

  OUTLINED_FUNCTION_3_4();
  v56 = OUTLINED_FUNCTION_5_3();
  v57(v56);
  OUTLINED_FUNCTION_8_4();
  v58();
  v59 = OUTLINED_FUNCTION_5();
  v60(v59);
  if (v61)
  {
  }

  OUTLINED_FUNCTION_3_4();
  v62 = OUTLINED_FUNCTION_5_3();
  v63(v62);
  OUTLINED_FUNCTION_8_4();
  v64();
  v65 = OUTLINED_FUNCTION_5();
  v66(v65);
  if (v67)
  {
  }

  OUTLINED_FUNCTION_3_4();
  v68 = OUTLINED_FUNCTION_5_3();
  v70 = v69(v68);
  v71 = *(a3 + 24);

  return v71(v70);
}

uint64_t DeviceName.userProvided.setter()
{
  OUTLINED_FUNCTION_11_2();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t DeviceName.fallback.setter()
{
  OUTLINED_FUNCTION_11_2();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t _s34SiriCrossDeviceArbitrationFeedback0C4NameV10guaranteedSSvg_0()
{
  if (v0[1])
  {
    v1 = *v0;
  }

  else
  {
    v1 = v0[2];
  }

  return v1;
}

uint64_t static DeviceName.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (v3)
  {
    if (v6)
    {
      v9 = *a1 == *a2 && v3 == v6;
      if (v9 || (sub_266ABE1C4() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (v6)
  {
    return 0;
  }

LABEL_8:
  if (v4 == v7 && v5 == v8)
  {
    return 1;
  }

  OUTLINED_FUNCTION_9_2();

  return sub_266ABE1C4();
}

uint64_t sub_266A872EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x766F725072657375 && a2 == 0xEC00000064656469;
  if (v4 || (sub_266ABE1C4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6B6361626C6C6166 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_266ABE1C4();

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

uint64_t sub_266A873C0(char a1)
{
  sub_266ABE244();
  MEMORY[0x26D5E8B00](a1 & 1);
  return sub_266ABE2A4();
}

uint64_t sub_266A87410@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266A872EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266A87438@<X0>(_BYTE *a1@<X8>)
{
  result = sub_266A873B8();
  *a1 = result;
  return result;
}

uint64_t sub_266A87460(uint64_t a1)
{
  v2 = sub_266A72470();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266A8749C(uint64_t a1)
{
  v2 = sub_266A72470();

  return MEMORY[0x2821FE720](a1, v2);
}

void DeviceName.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_31_1();
  v25 = v24;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2000, &qword_266AC20C8);
  OUTLINED_FUNCTION_1_0();
  v30 = v29;
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v31);
  v33 = &v43 - v32;
  v34 = OUTLINED_FUNCTION_23_1();
  __swift_project_boxed_opaque_existential_1(v34, v35);
  sub_266A72470();
  sub_266ABE2B4();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
  }

  else
  {
    v36 = sub_266ABE004();
    v38 = v37;
    v39 = sub_266ABE044();
    v41 = v40;
    v42 = *(v30 + 8);
    v44 = v39;
    v42(v33, v28);
    *v27 = v36;
    v27[1] = v38;
    v27[2] = v44;
    v27[3] = v41;

    __swift_destroy_boxed_opaque_existential_1Tm(v25);
  }

  OUTLINED_FUNCTION_30_1();
}

void sub_266A876D4(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 96);
  if (v3[2])
  {
    v4 = v3[4];
    v5 = v3[5];

    v6 = v4;
    v7 = v5;

    DeviceClass.init(model:)(*&v6);
  }

  else
  {
    *a1 = 8;
  }
}

uint64_t Device.deviceClass.getter@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = (*(a1 + 136))();
  if (v3[2])
  {
    v4 = v3[4];
    v5 = v3[5];

    v6 = v4;
    v7 = v5;

    return DeviceClass.init(model:)(*&v6);
  }

  else
  {

    *a2 = 8;
  }

  return result;
}

void *Device.symbols.getter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v118 = 0;
  v6 = 0xD000000000000011;
  OUTLINED_FUNCTION_1_0();
  v114 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_2();
  v109 = v9 - v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_33_1();
  v112 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1D88, &qword_266AC20D0);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v13);
  v15 = (&v104 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2008, &qword_266AC20D8);
  MEMORY[0x28223BE20](v16 - 8);
  OUTLINED_FUNCTION_4_2();
  v117 = v17 - v18;
  v20 = MEMORY[0x28223BE20](v19);
  v120 = &v104 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v104 - v23;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_33_1();
  v110 = v25;
  v26 = *(a2 + 160);
  v124 = a1;
  v115 = v26;
  v116 = a2 + 160;
  v26(v127, a1, a2);
  strcpy(v123, "noneofthese");
  HIDWORD(v123[1]) = -352321536;
  switch(LOBYTE(v127[0]))
  {
    case 9:

      goto LABEL_4;
    default:
      v27 = sub_266ABE1C4();

      if (v27)
      {
LABEL_4:
        v28 = "thermometer.medium";
      }

      else
      {
        v28 = "f keys found, expected one.";
        v6 = 0xD000000000000013;
      }

      v122 = v28 | 0x8000000000000000;
      v29 = a2 + 136;
      v30 = *(a2 + 136);
      v31 = v124;
      v32 = OUTLINED_FUNCTION_24_1();
      v33 = v30(v32);
      if (!v33[2])
      {

        return v6;
      }

      v35 = v33[4];
      v34 = v33[5];
      v119 = v35;
      v121 = v34;

      v36 = OUTLINED_FUNCTION_24_1();
      v37 = *(v30(v36) + 16);

      v106 = v6;
      v108 = v3;
      v107 = v30;
      v113 = a2;
      if (v37 < 2)
      {
        v111 = 0;
        v112 = 0;
        v69 = 0;
LABEL_20:
        v30 = v15;
        v15 = v118;
        goto LABEL_21;
      }

      v38 = OUTLINED_FUNCTION_24_1();
      v39 = v30(v38);
      if (v39[2] < 2uLL)
      {
        __break(1u);
        goto LABEL_53;
      }

      v40 = v39[6];
      v41 = v39[7];

      v31 = v124;
      v42 = sub_266A88628(v40, v41);
      if ((v43 & 1) == 0)
      {
        v69 = v42;

        v111 = 0;
        v112 = 0;
        goto LABEL_20;
      }

      v44 = OUTLINED_FUNCTION_24_1();
      v45 = v107;
      v105 = a2 + 136;
      if (*(v107(v44) + 16) < 2uLL)
      {
        __break(1u);
        goto LABEL_55;
      }

      v30 = v15;

      v46 = sub_266ABD864();
      __swift_storeEnumTagSinglePayload(v15, 1, 1, v46);
      v31 = v110;
      sub_266ABD894();
      sub_266A8A120(v31, v24);
      v47 = sub_266ABD8B4();
      result = __swift_getEnumTagSinglePayload(v24, 1, v47);
      v15 = v118;
      if (result == 1)
      {
        goto LABEL_59;
      }

      sub_266A8A190();
      sub_266ABD874();
      (*(*(v47 - 8) + 8))(v24, v47);
      v49 = OUTLINED_FUNCTION_21_2();
      v51 = sub_266A88754(v49, v50, 0, 0);
      if (!v15)
      {
        v100 = v51;
        v101 = [v51 name];
        v102 = sub_266ABDA84();
        v111 = v103;
        v112 = v102;

        sub_266A6CBB4(v31, &qword_2800B2008, &qword_266AC20D8);
        v69 = 0;
        v31 = v124;
        goto LABEL_51;
      }

      v40 = v114;
      v41 = v108;
      if (qword_280BB6C30 != -1)
      {
        goto LABEL_56;
      }

      while (1)
      {
        v52 = sub_266ABD8D4();
        __swift_project_value_buffer(v52, qword_280BB7028);
        v53 = v112;
        v54 = v124;
        (*(v40 + 16))(v112, v41, v124);
        v55 = v15;
        v56 = sub_266ABD8C4();
        v57 = sub_266ABDD64();

        if (os_log_type_enabled(v56, v57))
        {
          break;
        }

        (*(v40 + 8))(v53, v54);
        sub_266A6CBB4(v31, &qword_2800B2008, &qword_266AC20D8);
        v111 = 0;
        v112 = 0;
        v69 = 0;
        v15 = 0;
        v31 = v54;
LABEL_51:
        v29 = v105;
LABEL_21:
        v115(v127, v31, v113);
        v31 = v120;
        v70 = 0x656E6F687069;
        switch(LOBYTE(v127[0]))
        {
          case 1:
            v72 = 0xE400000000000000;
            v73 = 1684107369;
            goto LABEL_30;
          case 2:
            v70 = 1685024873;
            v71 = 0xE400000000000000;
            goto LABEL_27;
          case 3:
            v72 = 0xE500000000000000;
            v73 = 0x6863746177;
            goto LABEL_30;
          case 4:
            v72 = 0xE700000000000000;
            v73 = 0x7674656C707061;
            goto LABEL_30;
          case 5:

            goto LABEL_32;
          case 6:
            v72 = 0xE300000000000000;
            v73 = 6513005;
            goto LABEL_30;
          case 7:
            strcpy(v123, "realitydevice");
            HIWORD(v123[1]) = -4864;
            break;
          case 8:
            v72 = 0xE700000000000000;
            v73 = 0x6E776F6E6B6E75;
LABEL_30:
            v123[0] = v73;
            v123[1] = v72;
            break;
          case 9:
            break;
          default:
            v71 = 0xE600000000000000;
LABEL_27:
            v123[0] = v70;
            v123[1] = v71;
            break;
        }

        v74 = sub_266ABE1C4();

        if (v74)
        {
LABEL_32:
          v75 = v117;
          if ((v69 & 2) == 0)
          {
            v69 |= 2uLL;
          }
        }

        else
        {
          v75 = v117;
        }

        v76 = sub_266ABD864();
        __swift_storeEnumTagSinglePayload(v30, 1, 1, v76);

        sub_266ABD894();
        sub_266A8A120(v31, v75);
        v77 = sub_266ABD8B4();
        result = __swift_getEnumTagSinglePayload(v75, 1, v77);
        if (result == 1)
        {
          goto LABEL_58;
        }

        sub_266A8A190();
        v78 = sub_266ABD874();
        v80 = v79;
        v81 = OUTLINED_FUNCTION_21_2();
        v82(v81);
        v83 = sub_266A88754(v78, v80, 0, v69);
        if (!v15)
        {
          v85 = v83;

          v86 = [v85 name];
          v6 = sub_266ABDA84();

          sub_266A6CBB4(v31, &qword_2800B2008, &qword_266AC20D8);
          return v6;
        }

        v127[0] = v119;
        v127[1] = v121;
        v125 = 0x45544154532D4245;
        v126 = 0xE800000000000000;
        sub_266A6D62C();
        v84 = sub_266ABDE04();

        if (v84)
        {

          sub_266A6CBB4(v31, &qword_2800B2008, &qword_266AC20D8);
          return 0xD000000000000012;
        }

        if (qword_280BB6C30 != -1)
        {
LABEL_53:
          OUTLINED_FUNCTION_10(&qword_280BB6C30);
        }

        v87 = sub_266ABD8D4();
        __swift_project_value_buffer(v87, qword_280BB7028);
        v88 = v114;
        v89 = v109;
        v90 = v124;
        (*(v114 + 16))(v109, v108, v124);
        v91 = v15;
        v92 = sub_266ABD8C4();
        v41 = sub_266ABDD64();

        if (!os_log_type_enabled(v92, v41))
        {

          (*(v88 + 8))(v89, v90);
          v99 = v31;
          goto LABEL_45;
        }

        v40 = swift_slowAlloc();
        v31 = v29;
        v45 = swift_slowAlloc();
        v123[1] = swift_slowAlloc();
        v127[0] = v123[1];
        *v40 = 136315394;
        v93 = (v107)(v90, v113);
        if (v93[2])
        {
          v94 = v93[4];
          v95 = v93[5];

          (*(v114 + 8))(v89, v90);
          v96 = sub_266A66D34(v94, v95, v127);

          *(v40 + 4) = v96;
          *(v40 + 12) = 2112;
          v97 = v15;
          v98 = _swift_stdlib_bridgeErrorToNSError();
          *(v40 + 14) = v98;
          *v45 = v98;
          _os_log_impl(&dword_266A65000, v92, v41, "#feedback - Unknown symbol for product type %s. Error: %@", v40, 0x16u);
          sub_266A6CBB4(v45, &unk_2800B2110, &unk_266AC20E0);
          OUTLINED_FUNCTION_8();
          __swift_destroy_boxed_opaque_existential_1Tm(v123[1]);
          OUTLINED_FUNCTION_8();
          OUTLINED_FUNCTION_8();

          v99 = v120;
LABEL_45:
          sub_266A6CBB4(v99, &qword_2800B2008, &qword_266AC20D8);
          return v106;
        }

LABEL_55:
        __break(1u);
LABEL_56:
        OUTLINED_FUNCTION_10(&qword_280BB6C30);
      }

      LODWORD(v118) = v57;
      v58 = v54;
      v59 = v53;
      v60 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      v127[0] = v111;
      *v60 = 136315394;
      v31 = v58;
      v61 = v58;
      v62 = v105;
      result = v45(v61, v113);
      if (result[2] >= 2uLL)
      {
        v29 = v62;
        v63 = result[6];
        v64 = result[7];

        (*(v114 + 8))(v59, v31);
        v65 = sub_266A66D34(v63, v64, v127);

        *(v60 + 4) = v65;
        *(v60 + 12) = 2112;
        v66 = v15;
        v67 = _swift_stdlib_bridgeErrorToNSError();
        *(v60 + 14) = v67;
        v68 = v104;
        *v104 = v67;
        _os_log_impl(&dword_266A65000, v56, v118, "#feedback - Unknown accessory symbol for product type %s. Error: %@", v60, 0x16u);
        sub_266A6CBB4(v68, &unk_2800B2110, &unk_266AC20E0);
        OUTLINED_FUNCTION_8();
        __swift_destroy_boxed_opaque_existential_1Tm(v111);
        OUTLINED_FUNCTION_8();
        OUTLINED_FUNCTION_8();

        sub_266A6CBB4(v110, &qword_2800B2008, &qword_266AC20D8);
        v111 = 0;
        v112 = 0;
        v69 = 0;
        v15 = 0;
        goto LABEL_21;
      }

      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      return result;
  }
}

uint64_t sub_266A88628(uint64_t a1, uint64_t a2)
{
  v2 = a1 == 0xD000000000000011 && 0x8000000266ABF520 == a2;
  if (v2 || (sub_266ABE1C4() & 1) != 0)
  {
    return 0x800000;
  }

  sub_266A6D62C();
  if (sub_266ABDE04())
  {
    return 0x400000;
  }

  if (sub_266ABDE04())
  {
    return 0x1000000;
  }

  return 0;
}

id sub_266A88754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v6 = sub_266ABDA74();

  v11[0] = 0;
  v7 = [swift_getObjCClassFromMetadata() symbolForTypeIdentifier:v6 withResolutionStrategy:a3 variantOptions:a4 error:v11];

  if (v7)
  {
    v8 = v11[0];
  }

  else
  {
    v9 = v11[0];
    sub_266ABD594();

    swift_willThrow();
  }

  return v7;
}

void static Device.roomNameHash(assistantIdentifier:roomName:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_266ABD964();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x28223BE20](v7);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_266ABD954();
  OUTLINED_FUNCTION_1_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4_2();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_33_1();
  if (a4 && a2)
  {
    v50 = a1;
    v51 = a2;
    v47 = v17;
    v48 = v15;
    v18 = v16;

    v19 = OUTLINED_FUNCTION_29_1();
    MEMORY[0x26D5E83C0](v19);
    sub_266A6C69C(v50, v51);
    sub_266A6CD34(&qword_2800B1D68, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
    sub_266ABD944();
    v20 = OUTLINED_FUNCTION_23_1();
    sub_266A6CCDC(v20, v21);
    v22 = OUTLINED_FUNCTION_23_1();
    sub_266A6CD7C(v22, v23, v9);
    v24 = OUTLINED_FUNCTION_23_1();
    sub_266A6A5B4(v24, v25);
    sub_266ABD934();
    v26 = OUTLINED_FUNCTION_24_1();
    v27(v26);
    v28 = OUTLINED_FUNCTION_23_1();
    sub_266A6A5B4(v28, v29);
    v30 = *(v47 + 16);
    v46 = v18;
    v30(v13, v18, v48);
    sub_266A6CD34(&qword_2800B2020, MEMORY[0x277CC5290], MEMORY[0x277CC52A8]);
    sub_266ABDB84();
    v31 = v50;
    v32 = v51;
    v33 = *(v50 + 16);
    v34 = MEMORY[0x277D84F90];
    if (v51 == v33)
    {
LABEL_4:

      v50 = v34;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CF8, &qword_266AC20F0);
      sub_266A6D26C();
      sub_266ABD9E4();

      (*(v47 + 8))(v46, v48);
    }

    else
    {
      v49 = xmmword_266AC0EB0;
      v35 = v51;
      while ((v32 & 0x8000000000000000) == 0)
      {
        if (v35 >= *(v31 + 16))
        {
          goto LABEL_16;
        }

        v36 = *(v31 + 32 + v35);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CF0, &unk_266AC0FF0);
        v37 = swift_allocObject();
        *(v37 + 16) = v49;
        *(v37 + 56) = MEMORY[0x277D84B78];
        *(v37 + 64) = MEMORY[0x277D84BC0];
        *(v37 + 32) = v36;
        v38 = sub_266ABDAA4();
        v40 = v39;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_266A6CFCC();
          v34 = v43;
        }

        v41 = *(v34 + 16);
        if (v41 >= *(v34 + 24) >> 1)
        {
          sub_266A6CFCC();
          v34 = v44;
        }

        ++v35;
        *(v34 + 16) = v41 + 1;
        v42 = v34 + 16 * v41;
        *(v42 + 32) = v38;
        *(v42 + 40) = v40;
        if (v33 == v35)
        {
          goto LABEL_4;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
    }
  }
}

uint64_t Device.description.getter(uint64_t a1, uint64_t a2)
{
  v35[0] = 0x3D656D616ELL;
  v35[1] = 0xE500000000000000;
  (*(a2 + 112))(&v32);
  v2 = v33;
  if (v33)
  {
    v3 = v32;
  }

  else
  {
    v3 = v34;
  }

  MEMORY[0x26D5E83C0](v3, v2);

  v32 = v35[0];
  v33 = v35[1];
  v4 = OUTLINED_FUNCTION_1();
  v5(v4);
  if (v6)
  {
    OUTLINED_FUNCTION_22_0();
    OUTLINED_FUNCTION_17_2();
    MEMORY[0x26D5E83C0]();

    OUTLINED_FUNCTION_12_2();
  }

  v7 = OUTLINED_FUNCTION_1();
  v9 = v8(v7);
  if (v10)
  {
    v11 = v9;
    v12 = v10;
    v35[0] = 0;
    v35[1] = 0xE000000000000000;
    sub_266ABDEA4();

    OUTLINED_FUNCTION_17_2();
    MEMORY[0x26D5E83C0](v11, v12);

    OUTLINED_FUNCTION_12_2();
  }

  v13 = OUTLINED_FUNCTION_1();
  v14(v13);
  if (v15)
  {
    OUTLINED_FUNCTION_22_0();
    OUTLINED_FUNCTION_17_2();
    MEMORY[0x26D5E83C0]();

    OUTLINED_FUNCTION_12_2();
  }

  v16 = OUTLINED_FUNCTION_1();
  v17(v16);
  if (v18)
  {
    OUTLINED_FUNCTION_22_0();
    OUTLINED_FUNCTION_17_2();
    MEMORY[0x26D5E83C0]();

    OUTLINED_FUNCTION_12_2();
  }

  v19 = OUTLINED_FUNCTION_1();
  v20(v19);
  if (v21)
  {
    OUTLINED_FUNCTION_22_0();
    OUTLINED_FUNCTION_17_2();
    MEMORY[0x26D5E83C0]();

    OUTLINED_FUNCTION_12_2();
  }

  v22 = OUTLINED_FUNCTION_1();
  v23(v22);
  if (v24)
  {
    OUTLINED_FUNCTION_22_0();
    OUTLINED_FUNCTION_17_2();
    MEMORY[0x26D5E83C0]();

    OUTLINED_FUNCTION_12_2();
  }

  v35[0] = 0;
  v35[1] = 0xE000000000000000;
  sub_266ABDEA4();

  v35[0] = 0xD000000000000010;
  v35[1] = 0x8000000266ABFE90;
  v25 = OUTLINED_FUNCTION_1();
  v26(v25);
  MEMORY[0x26D5E84F0]();

  v27 = OUTLINED_FUNCTION_10_2();
  MEMORY[0x26D5E83C0](v27);

  OUTLINED_FUNCTION_12_2();

  strcpy(v35, " | enclosure=");
  HIWORD(v35[1]) = -4864;
  v28 = OUTLINED_FUNCTION_1();
  v30 = v29(v28);
  MEMORY[0x26D5E83C0](v30);

  MEMORY[0x26D5E83C0](v35[0], v35[1]);

  return v32;
}

uint64_t DeviceModel.idsId.setter()
{
  OUTLINED_FUNCTION_11_2();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t DeviceModel.build.setter()
{
  OUTLINED_FUNCTION_11_2();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t DeviceModel.enclosureColor.setter()
{
  OUTLINED_FUNCTION_11_2();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t DeviceModel.locale.setter()
{
  OUTLINED_FUNCTION_11_2();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t DeviceModel.name.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 88);
  *a1 = *(v1 + 64);
  *(a1 + 8) = *(v1 + 72);
  *(a1 + 24) = v2;
}

__n128 DeviceModel.name.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];

  result = v5;
  v1[4] = v5;
  v1[5].n128_u64[0] = v2;
  v1[5].n128_u64[1] = v3;
  return result;
}

uint64_t DeviceModel.productTypes.setter(uint64_t a1)
{

  *(v1 + 96) = a1;
  return result;
}

uint64_t DeviceModel.assistantId.setter()
{
  OUTLINED_FUNCTION_11_2();

  *(v1 + 104) = v2;
  *(v1 + 112) = v0;
  return result;
}

uint64_t DeviceModel.speechId.setter()
{
  OUTLINED_FUNCTION_11_2();

  *(v1 + 120) = v2;
  *(v1 + 128) = v0;
  return result;
}

uint64_t DeviceModel.roomName.setter()
{
  OUTLINED_FUNCTION_11_2();

  *(v1 + 136) = v2;
  *(v1 + 144) = v0;
  return result;
}

uint64_t DeviceModel.roomNameHash.setter()
{
  OUTLINED_FUNCTION_11_2();

  *(v1 + 152) = v2;
  *(v1 + 160) = v0;
  return result;
}

uint64_t static DeviceModel.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[6];
  v8 = a1[7];
  v9 = *(a1 + 4);
  v10 = a1[10];
  v11 = a1[11];
  v12 = a1[12];
  v13 = a1[13];
  v15 = a1[14];
  v14 = a1[15];
  v16 = a1[16];
  v18 = a2[2];
  v17 = a2[3];
  v19 = a2[6];
  v20 = a2[7];
  v21 = a2[10];
  v22 = a2[11];
  v23 = a2[14];
  v24 = a2[16];
  if (v4)
  {
    v25 = a2[1];
    if (v25)
    {
      if (*a1 != *a2 || v4 != v25)
      {
        goto LABEL_21;
      }

      return 1;
    }
  }

  if (v15 && v23)
  {
    if (v13 != a2[13] || v15 != v23)
    {
      goto LABEL_21;
    }

    return 1;
  }

  if (v16 && v24)
  {
    if (v14 != a2[15] || v16 != v24)
    {
      goto LABEL_21;
    }

    return 1;
  }

  v37 = *(a2 + 4);
  v38 = v9;
  v35 = v8;
  v36 = v7;
  if ((sub_266A83C38(v12, a2[12]) & 1) == 0)
  {
    return 0;
  }

  v42 = v38;
  v43 = v10;
  v44 = v11;
  v39 = v37;
  v40 = v21;
  v41 = v22;
  if ((static DeviceName.== infix(_:_:)(&v42, &v39) & 1) == 0)
  {
    return 0;
  }

  if (!v6)
  {
    v30 = v35;
    v31 = v36;
    if (!v17)
    {
      goto LABEL_33;
    }

    return 0;
  }

  v30 = v35;
  v31 = v36;
  if (!v17)
  {
    return 0;
  }

  if (v5 != v18 || v6 != v17)
  {
    OUTLINED_FUNCTION_10_2();
    v33 = sub_266ABE1C4();
    v30 = v35;
    v31 = v36;
    if ((v33 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_33:
  result = (v30 | v20) == 0;
  if (!v30 || !v20)
  {
    return result;
  }

  if (v31 == v19 && v30 == v20)
  {
    return 1;
  }

LABEL_21:

  return sub_266ABE1C4();
}

uint64_t DeviceModel.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  if (!*(v1 + 112))
  {
    sub_266ABE264();
    if (v2)
    {
      goto LABEL_3;
    }

    return sub_266ABE264();
  }

  sub_266ABE264();
  OUTLINED_FUNCTION_10_2();
  sub_266ABDB04();
  if (!v2)
  {
    return sub_266ABE264();
  }

LABEL_3:
  sub_266ABE264();

  return sub_266ABDB04();
}

uint64_t DeviceModel.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 112);
  sub_266ABE244();
  sub_266ABE264();
  if (v2)
  {
    sub_266ABDB04();
  }

  sub_266ABE264();
  if (v1)
  {
    sub_266ABDB04();
  }

  return sub_266ABE2A4();
}

unint64_t sub_266A89974(uint64_t a1, uint64_t a2)
{
  v2 = sub_266ABDFD4();

  if (v2 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_266A899D0(uint64_t a1)
{
  sub_266ABE244();
  DeviceModel.hash(into:)(v2);
  return sub_266ABE2A4();
}

unint64_t sub_266A89A30@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_266A89974(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_266A89A60@<X0>(uint64_t *a1@<X8>)
{
  result = sub_266A71FF8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_266A89A8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266A899C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266A89AC0(uint64_t a1)
{
  v2 = sub_266A71F88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266A89AFC(uint64_t a1)
{
  v2 = sub_266A71F88();

  return MEMORY[0x2821FE720](a1, v2);
}

void DeviceModel.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_31_1();
  v25 = v24;
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2028, &qword_266AC20F8);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v28);
  v30 = &v53 - v29;
  v31 = v25[3];
  v68 = v25;
  v32 = __swift_project_boxed_opaque_existential_1(v25, v31);
  sub_266A71F88();
  sub_266ABE2B4();
  if (v23)
  {
    OUTLINED_FUNCTION_6_3();
    v69 = 0;
    __swift_destroy_boxed_opaque_existential_1Tm(v68);

    if (v30)
    {
    }

    if (v32)
    {
    }
  }

  else
  {
    v33 = v27;
    LOBYTE(v73) = 0;
    v34 = sub_266ABE004();
    v63 = v35;
    OUTLINED_FUNCTION_1_3(1);
    v36 = sub_266ABE004();
    v62 = v37;
    OUTLINED_FUNCTION_1_3(2);
    v61 = sub_266ABE044();
    v67 = v38;
    OUTLINED_FUNCTION_1_3(3);
    v59 = sub_266ABE004();
    v60 = v34;
    v69 = v39;
    LOBYTE(v72[0]) = 4;
    sub_266A8A1D4();
    sub_266ABE084();
    v57 = v73;
    v58 = v75;
    v65 = v74;
    v66 = v76;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CF8, &qword_266AC20F0);
    LOBYTE(v72[0]) = 5;
    sub_266A7250C(&qword_2800B2040, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    sub_266ABE084();
    v64 = v73;
    OUTLINED_FUNCTION_1_3(6);
    v40 = sub_266ABE004();
    v71 = v41;
    OUTLINED_FUNCTION_1_3(7);
    v56 = sub_266ABE004();
    v70 = v42;
    OUTLINED_FUNCTION_1_3(8);
    v54 = sub_266ABE004();
    v55 = v40;
    v44 = v43;
    v45 = sub_266ABE004();
    v53 = v46;
    v47 = v45;
    v48 = OUTLINED_FUNCTION_4_4();
    v49(v48);
    v50 = v63;
    v72[0] = v60;
    v72[1] = v63;
    v72[2] = v36;
    v72[3] = v62;
    v51 = v67;
    v72[4] = v61;
    v72[5] = v67;
    v52 = v69;
    v72[6] = v59;
    v72[7] = v69;
    v72[8] = v57;
    v72[9] = v65;
    v72[10] = v58;
    v72[11] = v66;
    v72[12] = v64;
    v72[13] = v55;
    v72[14] = v71;
    v72[15] = v56;
    v72[16] = v70;
    v72[17] = v54;
    v72[18] = v44;
    v72[19] = v47;
    v72[20] = v53;
    memcpy(v33, v72, 0xA8uLL);
    sub_266A6E078(v72, &v73);
    __swift_destroy_boxed_opaque_existential_1Tm(v68);
    v73 = v60;
    v74 = v50;
    v75 = v36;
    v76 = v62;
    v77 = v61;
    v78 = v51;
    v79 = v59;
    v80 = v52;
    v81 = v57;
    v82 = v65;
    v83 = v58;
    v84 = v66;
    v85 = v64;
    v86 = v55;
    v87 = v71;
    v88 = v56;
    v89 = v70;
    v90 = v54;
    v91 = v44;
    v92 = v47;
    v93 = v53;
    sub_266A72578(&v73);
  }

  OUTLINED_FUNCTION_30_1();
}

uint64_t sub_266A8A120(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2008, &qword_266AC20D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_266A8A190()
{
  result = qword_2800B2010;
  if (!qword_2800B2010)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800B2010);
  }

  return result;
}

unint64_t sub_266A8A1D4()
{
  result = qword_2800B2038;
  if (!qword_2800B2038)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DeviceName, &type metadata for DeviceName, v0, v1);
    atomic_store(result, &qword_2800B2038);
  }

  return result;
}

void *sub_266A8A228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a3;
  v6[1] = a4;
  v5[2] = v6;
  return sub_266A8A700(sub_266A8B1A0, v5, a1, a2);
}

uint64_t sub_266A8A27C(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v5 = v2;
  v19[2] = *MEMORY[0x277D85DE8];
  v7 = *v2;
  v6 = v2[1];
  switch(v6 >> 62)
  {
    case 1uLL:
      v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

      sub_266A6A5B4(v7, v6);
      *v5 = xmmword_266AC2090;
      sub_266A6A5B4(0, 0xC000000000000000);
      v13 = v7 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }

      if (v13 < v7)
      {
        goto LABEL_23;
      }

      if (sub_266ABD524() && __OFSUB__(v7, sub_266ABD544()))
      {
        goto LABEL_24;
      }

      sub_266ABD554();
      swift_allocObject();
      v14 = sub_266ABD504();

      v12 = v14;
LABEL_16:
      if (v13 < v7)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
      }

      v4 = sub_266A8A764(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (v3)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    case 2uLL:
      v4 = v6 & 0x3FFFFFFFFFFFFFFFLL;

      sub_266A6A5B4(v7, v6);
      v17 = v7;
      v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
      *v5 = xmmword_266AC2090;
      sub_266A6A5B4(0, 0xC000000000000000);
      sub_266ABD654();
      v7 = v17;
      v10 = sub_266A8A764(*(v17 + 16), *(v17 + 24), a1);
      if (v3)
      {
        v11 = v18 | 0x8000000000000000;
LABEL_18:
        *v5 = v7;
        v5[1] = v11;
      }

      else
      {
        v4 = v10;
        v11 = v18 | 0x8000000000000000;
LABEL_20:
        *v5 = v7;
        v5[1] = v11;
      }

      return v4;
    case 3uLL:
      memset(v19, 0, 15);
      a1(&v17, v19, v19);
      if (!v3)
      {
        return v17;
      }

      return v4;
    default:
      v4 = v7 >> 8;
      sub_266A6A5B4(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        v4 = v17;
      }

      v9 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v5 = v19[0];
      v5[1] = v9;
      return v4;
  }
}

uint64_t sub_266A8A640@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = sub_266ABD644();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x26D5E7F10]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x26D5E7F30]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_266A8A6B8(uint64_t result)
{
  if (result)
  {
    result = sub_266ABDEB4();
    if ((v1 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_266A8A700(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a4 - a3;
    v7 = a3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  result = a1(&v9, v7, v6);
  if (!v4)
  {
    return v9;
  }

  __break(1u);
  return result;
}

char *sub_266A8A764(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_266ABD524();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_266ABD544();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_266ABD534();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_266A8A818(void *a1)
{
  v1 = [a1 productTypes];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_266ABDC24();

  return v3;
}

uint64_t sub_266A8A870(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_266ABDA84();
  }

  return OUTLINED_FUNCTION_9_2();
}

unint64_t sub_266A8A8CC(uint64_t a1)
{
  result = sub_266A8A8F4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_266A8A8F4()
{
  result = qword_2800B2060;
  if (!qword_2800B2060)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DeviceModel, &type metadata for DeviceModel, v0, v1);
    atomic_store(result, &qword_2800B2060);
  }

  return result;
}

unint64_t sub_266A8A94C()
{
  result = qword_2800B2068;
  if (!qword_2800B2068)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DeviceModel, &type metadata for DeviceModel, v0, v1);
    atomic_store(result, &qword_2800B2068);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_266A8A9AC(uint64_t a1, int a2)
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

uint64_t sub_266A8A9EC(uint64_t result, int a2, int a3)
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

uint64_t sub_266A8AC5C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 168))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_266A8AC9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 168) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Version(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DeviceName.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_266A8AE84()
{
  result = qword_2800B2070;
  if (!qword_2800B2070)
  {
    result = swift_getWitnessTable(byte_266AC2434, &type metadata for DeviceName.CodingKeys, v0, v1);
    atomic_store(result, &qword_2800B2070);
  }

  return result;
}

unint64_t sub_266A8AEDC()
{
  result = qword_2800B2078;
  if (!qword_2800B2078)
  {
    result = swift_getWitnessTable(byte_266AC2524, &unk_28783DAF8, v0, v1);
    atomic_store(result, &qword_2800B2078);
  }

  return result;
}

unint64_t sub_266A8AF34()
{
  result = qword_2800B2080;
  if (!qword_2800B2080)
  {
    result = swift_getWitnessTable(aE, &unk_28783DAF8, v0, v1);
    atomic_store(result, &qword_2800B2080);
  }

  return result;
}

unint64_t sub_266A8AF8C()
{
  result = qword_2800B2088;
  if (!qword_2800B2088)
  {
    result = swift_getWitnessTable(aU, &unk_28783DAF8, v0, v1);
    atomic_store(result, &qword_2800B2088);
  }

  return result;
}

unint64_t sub_266A8AFE4()
{
  result = qword_2800B2090;
  if (!qword_2800B2090)
  {
    result = swift_getWitnessTable(byte_266AC23A4, &type metadata for DeviceName.CodingKeys, v0, v1);
    atomic_store(result, &qword_2800B2090);
  }

  return result;
}

unint64_t sub_266A8B03C()
{
  result = qword_2800B2098;
  if (!qword_2800B2098)
  {
    result = swift_getWitnessTable(asc_266AC23CC, &type metadata for DeviceName.CodingKeys, v0, v1);
    atomic_store(result, &qword_2800B2098);
  }

  return result;
}

void *sub_266A8B090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_266A8A228(a1, a2, *a3, a3[1]);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
    a4[3] = v9;
  }

  return result;
}

unint64_t sub_266A8B0E4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_266ABDB64();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x26D5E83F0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_266A8B160@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_266A8A6B8(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

_BYTE *sub_266A8B204(_BYTE *result, int a2, int a3)
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

unint64_t sub_266A8B2B4()
{
  result = qword_2800B20B0;
  if (!qword_2800B20B0)
  {
    result = swift_getWitnessTable("azw\x1B0n", &type metadata for FeedbackError, v0, v1);
    atomic_store(result, &qword_2800B20B0);
  }

  return result;
}

unint64_t sub_266A8B30C()
{
  result = qword_2800B20B8;
  if (!qword_2800B20B8)
  {
    result = swift_getWitnessTable(byte_266AC26D0, &type metadata for SCDAFeedbackDecodingError, v0, v1);
    atomic_store(result, &qword_2800B20B8);
  }

  return result;
}

uint64_t sub_266A8B360()
{
  sub_266ABE244();
  MEMORY[0x26D5E8B00](0);
  return sub_266ABE2A4();
}

uint64_t sub_266A8B3A4(uint64_t a1)
{
  sub_266ABE244();
  MEMORY[0x26D5E8B00](0);
  return sub_266ABE2A4();
}

void sub_266A8B404(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_266A8B478(v1);
}

void *sub_266A8B434()
{
  v1 = OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27LocalNotificationCenterImpl_center;
  OUTLINED_FUNCTION_18(v0 + OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27LocalNotificationCenterImpl_center, v5);
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_266A8B478(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27LocalNotificationCenterImpl_center;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_266A8B530(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = swift_unknownObjectRetain();
  return sub_266A8B5B4(v3, v2);
}

uint64_t sub_266A8B5B4(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27LocalNotificationCenterImpl_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_266A8B620(void *a1))(uint64_t, char)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27LocalNotificationCenterImpl_delegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return sub_266A8B6AC;
}

char *sub_266A8B6B0(void *a1)
{
  v32 = sub_266ABDD84();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_2();
  v5 = v4 - v3;
  v6 = sub_266ABDD74();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2();
  v7 = sub_266ABD914();
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_2();
  *&v1[OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27LocalNotificationCenterImpl_center] = 0;
  *&v1[OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27LocalNotificationCenterImpl_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v31 = OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27LocalNotificationCenterImpl_queue;
  sub_266A6AE78(0, &qword_280BB6C08, 0x277D85C78);
  sub_266ABD904();
  aBlock = MEMORY[0x277D84F90];
  sub_266A8CBAC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B20E8, &qword_266AC2860);
  sub_266A8CC04();
  sub_266ABDE24();
  (*(v2 + 104))(v5, *MEMORY[0x277D85260], v32);
  *&v1[v31] = sub_266ABDDB4();
  v40.receiver = v1;
  v40.super_class = type metadata accessor for LocalNotificationCenterImpl();
  v8 = objc_msgSendSuper2(&v40, sel_init);
  v9 = v8;
  if (a1)
  {
    v10 = a1;
LABEL_5:
    v14 = a1;

    v15 = OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27LocalNotificationCenterImpl_center;
    swift_beginAccess();
    v16 = *&v9[v15];
    *&v9[v15] = v10;
    v17 = v10;

    [v17 setDelegate:v9];
    v38 = sub_266A8BCA0;
    v39 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v35 = 1107296256;
    v36 = sub_266A77ACC;
    v37 = &block_descriptor_0;
    v18 = _Block_copy(&aBlock);
    [v17 getNotificationSettingsWithCompletionHandler:v18];
    _Block_release(v18);
    v19 = swift_allocObject();
    *(v19 + 16) = v9;
    v38 = sub_266A8CC80;
    v39 = v19;
    aBlock = MEMORY[0x277D85DD0];
    v35 = 1107296256;
    v36 = sub_266A8C1FC;
    v37 = &block_descriptor_10;
    v20 = _Block_copy(&aBlock);
    v21 = v9;

    [v17 requestAuthorizationWithOptions:4 completionHandler:v20];
    _Block_release(v20);
    sub_266A6AE78(0, &qword_280BB6BF8, 0x277CE1F98);
    v22 = sub_266A8C274(0xD00000000000003FLL, 0x8000000266ABFC40, MEMORY[0x277D84F90], MEMORY[0x277D84F90], 0, 0xE000000000000000, 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B20F0, &unk_266AC2868);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_266AC2790;
    *(inited + 32) = v22;
    if (sub_266A6AF8C(inited))
    {
      v24 = v22;
      sub_266A8EBE4(inited);
    }

    else
    {
      swift_setDeallocating();
      v25 = v22;
      sub_266AB9878();
    }

    sub_266A8CC88();
    v26 = sub_266ABDD04();

    [v17 setNotificationCategories:v26];

    [v17 setWantsNotificationResponsesDelivered];
    goto LABEL_9;
  }

  v11 = *&v8[OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27LocalNotificationCenterImpl_queue];
  v12 = objc_allocWithZone(MEMORY[0x277CE2028]);
  v13 = sub_266A8C984(0xD000000000000036, 0x8000000266ABFF90, v11);
  if (v13)
  {
    v10 = v13;
    goto LABEL_5;
  }

  if (qword_280BB6C30 != -1)
  {
    OUTLINED_FUNCTION_10(&qword_280BB6C30);
  }

  v28 = sub_266ABD8D4();
  __swift_project_value_buffer(v28, qword_280BB7028);
  v17 = sub_266ABD8C4();
  v29 = sub_266ABDD64();
  if (os_log_type_enabled(v17, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_266A65000, v17, v29, "#feedback LocalNotificationCenter - file notification center must not be nil", v30, 2u);
    MEMORY[0x26D5E9280](v30, -1, -1);
  }

LABEL_9:

  return v9;
}

void sub_266A8BCA0(void *a1)
{
  if (qword_280BB6C30 != -1)
  {
    swift_once();
  }

  v2 = sub_266ABD8D4();
  __swift_project_value_buffer(v2, qword_280BB7028);
  v3 = a1;
  oslog = sub_266ABD8C4();
  v4 = sub_266ABDD54();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v3;
    *v6 = v3;
    v7 = v3;
    _os_log_impl(&dword_266A65000, oslog, v4, "#feedback LocalNotificationCenter - requestAuthorization settings: %@", v5, 0xCu);
    sub_266A8CCF0(v6);
    MEMORY[0x26D5E9280](v6, -1, -1);
    MEMORY[0x26D5E9280](v5, -1, -1);
  }
}

void sub_266A8BDDC(char a1, id a2, void *a3)
{
  v6 = 0x280BB6000uLL;
  if (a2)
  {
    v7 = a2;
    if (qword_280BB6C30 != -1)
    {
      swift_once();
    }

    v8 = sub_266ABD8D4();
    __swift_project_value_buffer(v8, qword_280BB7028);
    v9 = a2;
    v10 = sub_266ABD8C4();
    v11 = sub_266ABDD64();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v38[0] = v13;
      *v12 = 136315138;
      v39 = a2;
      v14 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2108, &unk_266AC3670);
      v15 = sub_266ABDAE4();
      v17 = sub_266A66D34(v15, v16, v38);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_266A65000, v10, v11, "#feedback LocalNotificationCenter - permission not granted. Error: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x26D5E9280](v13, -1, -1);
      v18 = v12;
      v6 = 0x280BB6000;
      MEMORY[0x26D5E9280](v18, -1, -1);
    }

    else
    {
    }
  }

  if (*(v6 + 3120) != -1)
  {
    swift_once();
  }

  v19 = sub_266ABD8D4();
  __swift_project_value_buffer(v19, qword_280BB7028);
  v20 = a2;
  v21 = sub_266ABD8C4();
  v22 = sub_266ABDD54();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v38[0] = v24;
    *v23 = 67109378;
    *(v23 + 4) = a1 & 1;
    *(v23 + 8) = 2080;
    v39 = a2;
    v25 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2100, &qword_266AC0FA0);
    v26 = sub_266ABDAE4();
    v28 = sub_266A66D34(v26, v27, v38);

    *(v23 + 10) = v28;
    _os_log_impl(&dword_266A65000, v21, v22, "#feedback LocalNotificationCenter - granted:%{BOOL}d requested: %s", v23, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    MEMORY[0x26D5E9280](v24, -1, -1);
    MEMORY[0x26D5E9280](v23, -1, -1);
  }

  v29 = a3;
  v30 = sub_266ABD8C4();
  v31 = sub_266ABDD54();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v39 = v33;
    *v32 = 136315138;
    v34 = OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27LocalNotificationCenterImpl_center;
    swift_beginAccess();
    [*&v29[v34] delegate];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B20F8, &qword_266AC2878);
    v35 = sub_266ABDAE4();
    v37 = sub_266A66D34(v35, v36, &v39);

    *(v32 + 4) = v37;
    _os_log_impl(&dword_266A65000, v30, v31, "#feedback LocalNotificationCenter - delegate:%s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    MEMORY[0x26D5E9280](v33, -1, -1);
    MEMORY[0x26D5E9280](v32, -1, -1);
  }
}

void sub_266A8C1FC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

id sub_266A8C274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = sub_266ABDA74();

  sub_266A6AE78(0, &qword_280BB6C00, 0x277CE1F80);
  v9 = sub_266ABDC14();

  v10 = sub_266ABDC14();

  v11 = sub_266ABDA74();

  v12 = [swift_getObjCClassFromMetadata() categoryWithIdentifier:v8 actions:v9 intentIdentifiers:v10 hiddenPreviewsBodyPlaceholder:v11 options:a7];

  return v12;
}

id LocalNotificationCenterImpl.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LocalNotificationCenterImpl.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocalNotificationCenterImpl();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_266A8C514(void *a1))(uint64_t, char)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = *v1;
  v5 = OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27LocalNotificationCenterImpl_delegate;
  v3[5] = *v1;
  v3[6] = v5;
  v6 = v4 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  v3[3] = Strong;
  v3[4] = v8;
  return sub_266A8CD60;
}

void sub_266A8C5A4(uint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(void, void))
{
  (a4[2])(a4, 16, a3);

  _Block_release(a4);
}

uint64_t LocalNotificationCenterImpl.userNotificationCenter(_:didReceive:withCompletionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_280BB6C30 != -1)
  {
    OUTLINED_FUNCTION_10(&qword_280BB6C30);
  }

  v9 = sub_266ABD8D4();
  __swift_project_value_buffer(v9, qword_280BB7028);
  v10 = v4;
  v11 = sub_266ABD8C4();
  v12 = sub_266ABDD54();

  if (os_log_type_enabled(v11, v12))
  {
    v29 = a3;
    v30 = a2;
    v13 = a4;
    v14 = swift_slowAlloc();
    v15 = a1;
    v16 = swift_slowAlloc();
    v32 = v16;
    *v14 = 136315138;
    v17 = &v10[OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27LocalNotificationCenterImpl_delegate];
    OUTLINED_FUNCTION_18(&v10[OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27LocalNotificationCenterImpl_delegate], v31);
    Strong = swift_unknownObjectWeakLoadStrong();
    v19 = *(v17 + 1);
    v33[0] = Strong;
    v33[1] = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B20D0, &qword_266AC27A0);
    v20 = sub_266ABDAE4();
    v22 = sub_266A66D34(v20, v21, &v32);

    *(v14 + 4) = v22;
    _os_log_impl(&dword_266A65000, v11, v12, "#feedback LocalNotificationCenter - didReceive passing to delegate:%s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    v23 = v16;
    a1 = v15;
    MEMORY[0x26D5E9280](v23, -1, -1);
    v24 = v14;
    a4 = v13;
    a3 = v29;
    a2 = v30;
    MEMORY[0x26D5E9280](v24, -1, -1);
  }

  v25 = &v10[OBJC_IVAR____TtC34SiriCrossDeviceArbitrationFeedback27LocalNotificationCenterImpl_delegate];
  OUTLINED_FUNCTION_18(v25, v33);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v27 = *(v25 + 8);
    ObjectType = swift_getObjectType();
    (*(v27 + 8))(a1, a2, a3, a4, ObjectType, v27);
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_266A8C984(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_266ABDA74();

  v6 = [v3 initWithBundleIdentifier:v5 queue:a3];

  return v6;
}

unint64_t sub_266A8CBAC()
{
  result = qword_280BB6C10;
  if (!qword_280BB6C10)
  {
    v3 = sub_266ABDD74();
    result = swift_getWitnessTable(MEMORY[0x277D85238], v3, v0, v1);
    atomic_store(result, &qword_280BB6C10);
  }

  return result;
}

unint64_t sub_266A8CC04()
{
  result = qword_280BB6C20;
  if (!qword_280BB6C20)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800B20E8, &qword_266AC2860);
    result = swift_getWitnessTable(MEMORY[0x277D83970], v3, v0, v1);
    atomic_store(result, &qword_280BB6C20);
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_266A8CC88()
{
  result = qword_280BB6BE8;
  if (!qword_280BB6BE8)
  {
    v3 = sub_266A6AE78(255, &qword_280BB6BF8, 0x277CE1F98);
    result = swift_getWitnessTable(MEMORY[0x277D85378], v3, v0, v1);
    atomic_store(result, &qword_280BB6BE8);
  }

  return result;
}

uint64_t sub_266A8CCF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800B2110, &unk_266AC20E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void UserInputModel.distanceFromExpectedDevice.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
}

uint64_t UserInputModel.distanceFromExpectedDevice.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 8) = *result;
  *(v1 + 16) = v2;
  return result;
}

uint64_t UserInputModel.failureReason.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 88);
  *(a1 + 16) = v4;
  return sub_266A8CE78(v2, v3, v4);
}

uint64_t sub_266A8CE78(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_266A8CE8C(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_266A8CE8C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 3)
  {
  }

  return result;
}

uint64_t UserInputModel.failureReason.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_266A8CEE4(*(v1 + 72), *(v1 + 80), *(v1 + 88));
  *(v1 + 72) = v2;
  *(v1 + 80) = v3;
  *(v1 + 88) = v4;
  return result;
}

uint64_t sub_266A8CEE4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_266A8244C(a1, a2, a3);
  }

  return a1;
}

uint64_t UserInputModel.init(distanceFromExpectedDevice:didNotWantResponse:expectedParticipant:expectedDeviceAnswered:failureReason:multipleDevicesResponded:)@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t *a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = *a5;
  v13 = a5[1];
  v14 = *(a5 + 16);
  *(a7 + 40) = 0u;
  *(a7 + 56) = 0;
  *(a7 + 24) = 0u;
  *(a7 + 72) = 0;
  *(a7 + 80) = 0;
  *(a7 + 88) = -1;
  *(a7 + 8) = v10;
  *(a7 + 16) = v11;
  *a7 = a2;
  sub_266A81488(a3, a7 + 24);
  *(a7 + 64) = a4;
  result = sub_266A8CEE4(*(a7 + 72), *(a7 + 80), *(a7 + 88));
  *(a7 + 72) = v12;
  *(a7 + 80) = v13;
  *(a7 + 88) = v14;
  *(a7 + 89) = a6;
  return result;
}

unint64_t sub_266A8CFE0(uint64_t a1, uint64_t a2)
{
  v2 = sub_266ABDFD4();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_266A8D034(char a1)
{
  result = 0x526572756C696166;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      return result;
    case 3:
      result = 0xD00000000000001ALL;
      break;
    case 4:
      result = 0xD000000000000018;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    default:
      result = 0xD000000000000016;
      break;
  }

  return result;
}

uint64_t sub_266A8D124(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  return UserInputModel.distanceFromExpectedDevice.setter(&v3);
}

unint64_t sub_266A8D1FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_266A8CFE0(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_266A8D22C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_266A8D034(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_266A8D274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266A8D02C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266A8D2A8(uint64_t a1)
{
  v2 = sub_266A8D6D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266A8D2E4(uint64_t a1)
{
  v2 = sub_266A8D6D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UserInputModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CB0, &qword_266AC0FB8);
  OUTLINED_FUNCTION_21(v5);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2120, &qword_266AC2880);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v9);
  v33 = 0;
  v34 = 1;
  memset(v35, 0, sizeof(v35));
  v38 = 0uLL;
  v36 = 0;
  v39 = -1;
  v10 = a1[3];
  v28 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_266A8D6D0();
  sub_266ABE2B4();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    sub_266A798F4(v35, &qword_2800B1C48, &unk_266AC1310);
    return sub_266A8CEE4(v38, *(&v38 + 1), v39);
  }

  else
  {
    v27 = a2;
    v41 = 3;
    v11 = sub_266A8D724();
    OUTLINED_FUNCTION_6_4(&type metadata for DistanceFromUser, v12, v13, v14, v11);
    v33 = v29;
    v34 = BYTE8(v29);
    v15 = type metadata accessor for ParticipantModel(0);
    v41 = 1;
    sub_266A8DC7C(&qword_2800B1C88, "5Bw\x1BpA");
    sub_266ABE024();
    if (__swift_getEnumTagSinglePayload(v8, 1, v15) == 1)
    {
      sub_266A798F4(v8, &qword_2800B1CB0, &qword_266AC0FB8);
      v29 = 0u;
      v30 = 0u;
      v31 = 0;
    }

    else
    {
      *(&v30 + 1) = v15;
      v31 = sub_266A8DC7C(&qword_2800B1DA0, protocol conformance descriptor for ParticipantModel);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v29);
      sub_266A7977C(v8, boxed_opaque_existential_1);
    }

    sub_266A81488(&v29, v35);
    LOBYTE(v29) = 0;
    v37 = OUTLINED_FUNCTION_3_5() & 1;
    v41 = 2;
    v17 = sub_266A8D778();
    OUTLINED_FUNCTION_6_4(&type metadata for UserFeedbackDevicePreferenceResponse, v18, v19, v20, v17);
    v21 = v29;
    v22 = v30;
    sub_266A8CEE4(v38, *(&v38 + 1), v39);
    v38 = v21;
    v39 = v22;
    LOBYTE(v29) = 4;
    v40 = OUTLINED_FUNCTION_3_5() & 1;
    LOBYTE(v29) = 5;
    v23 = OUTLINED_FUNCTION_3_5();
    v24 = OUTLINED_FUNCTION_2_3();
    v25(v24);
    v32[0] = v23 & 1;
    sub_266A8D7CC(v32, v27);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    return sub_266A82B80(v32);
  }
}

unint64_t sub_266A8D6D0()
{
  result = qword_2800B2128;
  if (!qword_2800B2128)
  {
    result = swift_getWitnessTable(byte_266AC2B74, &type metadata for UserInputModel.Keys, v0, v1);
    atomic_store(result, &qword_2800B2128);
  }

  return result;
}

unint64_t sub_266A8D724()
{
  result = qword_2800B2130;
  if (!qword_2800B2130)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DistanceFromUser, &type metadata for DistanceFromUser, v0, v1);
    atomic_store(result, &qword_2800B2130);
  }

  return result;
}

unint64_t sub_266A8D778()
{
  result = qword_2800B2138;
  if (!qword_2800B2138)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UserFeedbackDevicePreferenceResponse, &type metadata for UserFeedbackDevicePreferenceResponse, v0, v1);
    atomic_store(result, &qword_2800B2138);
  }

  return result;
}

uint64_t UserInputModel.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CB0, &qword_266AC0FB8);
  OUTLINED_FUNCTION_21(v2);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v3);
  v5 = v31 - v4;
  v6 = type metadata accessor for ParticipantModel(0);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2140, &unk_266AC2888);
  OUTLINED_FUNCTION_1_0();
  v13 = v12;
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v14);
  v16 = v31 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266A8D6D0();
  v17 = v31[1];
  sub_266ABE2C4();
  v18 = v17[16];
  v32 = *(v17 + 1);
  LOBYTE(v33) = v18;
  v36 = 3;
  sub_266A8DBD4();
  v19 = v31[2];
  sub_266ABE0F4();
  if (v19)
  {
    return (*(v13 + 8))(v16, v11);
  }

  v21 = v16;
  v22 = v6;
  v23 = v13;
  sub_266A6F968((v17 + 24), &v32, &qword_2800B1C48, &unk_266AC1310);
  if (!v35)
  {
    sub_266A798F4(&v32, &qword_2800B1C48, &unk_266AC1310);
    v24 = v5;
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v22);
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CC0, &qword_266AC1290);
  v24 = v5;
  v25 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v5, v25 ^ 1u, 1, v22);
  if (__swift_getEnumTagSinglePayload(v5, 1, v22) == 1)
  {
LABEL_7:
    sub_266A798F4(v24, &qword_2800B1CB0, &qword_266AC0FB8);
    goto LABEL_8;
  }

  sub_266A7977C(v5, v10);
  LOBYTE(v32) = 1;
  sub_266A8DC7C(&qword_2800B2158, protocol conformance descriptor for ParticipantModel);
  sub_266ABE154();
  sub_266A6A63C(v10);
LABEL_8:
  v26 = v17[64];
  LOBYTE(v32) = 0;
  OUTLINED_FUNCTION_7_4(v26);
  v27 = *(v17 + 10);
  v28 = v17[88];
  v32 = *(v17 + 9);
  v33 = v27;
  v34 = v28;
  v36 = 2;
  sub_266A8CE78(v32, v27, v28);
  sub_266A8DC28();
  sub_266ABE0F4();
  sub_266A8CEE4(v32, v33, v34);
  v29 = v17[89];
  LOBYTE(v32) = 4;
  OUTLINED_FUNCTION_7_4(v29);
  v30 = *v17;
  LOBYTE(v32) = 5;
  OUTLINED_FUNCTION_7_4(v30);
  return (*(v23 + 8))(v21, 0);
}

unint64_t sub_266A8DBD4()
{
  result = qword_2800B2148;
  if (!qword_2800B2148)
  {
    result = swift_getWitnessTable("Iqw\x1B8j", &type metadata for DistanceFromUser, v0, v1);
    atomic_store(result, &qword_2800B2148);
  }

  return result;
}

unint64_t sub_266A8DC28()
{
  result = qword_2800B2150;
  if (!qword_2800B2150)
  {
    atomic_store(result, &qword_2800B2150);
  }

  return result;
}

uint64_t sub_266A8DC7C(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for ParticipantModel(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static UserInputModel.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ParticipantModel(0);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B2160, &qword_266AC2898);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v10);
  v12 = &v72 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CB0, &qword_266AC0FB8);
  v14 = OUTLINED_FUNCTION_21(v13);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v72 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v72 - v21;
  v23 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      return v23 & 1;
    }
  }

  else
  {
    if (*(a1 + 8) != *(a2 + 8))
    {
      v23 = 1;
    }

    if (v23)
    {
      goto LABEL_34;
    }
  }

  sub_266A6F968(a1 + 24, &v77, &qword_2800B1C48, &unk_266AC1310);
  if (v80)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CC0, &qword_266AC1290);
    v24 = swift_dynamicCast() ^ 1;
    v25 = v22;
  }

  else
  {
    sub_266A798F4(&v77, &qword_2800B1C48, &unk_266AC1310);
    v25 = v22;
    v24 = 1;
  }

  __swift_storeEnumTagSinglePayload(v25, v24, 1, v4);
  sub_266A6F968(a2 + 24, &v77, &qword_2800B1C48, &unk_266AC1310);
  v73 = a2;
  if (v80)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CC0, &qword_266AC1290);
    v26 = swift_dynamicCast() ^ 1;
    v27 = v20;
  }

  else
  {
    sub_266A798F4(&v77, &qword_2800B1C48, &unk_266AC1310);
    v27 = v20;
    v26 = 1;
  }

  __swift_storeEnumTagSinglePayload(v27, v26, 1, v4);
  v28 = *(v9 + 48);
  sub_266A6F968(v22, v12, &qword_2800B1CB0, &qword_266AC0FB8);
  sub_266A6F968(v20, &v12[v28], &qword_2800B1CB0, &qword_266AC0FB8);
  OUTLINED_FUNCTION_10_3(v12);
  if (v29)
  {
    OUTLINED_FUNCTION_10_3(&v12[v28]);
    if (v29)
    {
      sub_266A798F4(v12, &qword_2800B1CB0, &qword_266AC0FB8);
      sub_266A798F4(v20, &qword_2800B1CB0, &qword_266AC0FB8);
      sub_266A798F4(v22, &qword_2800B1CB0, &qword_266AC0FB8);
      goto LABEL_23;
    }

LABEL_21:
    sub_266A798F4(v12, &qword_2800B2160, &qword_266AC2898);
    sub_266A798F4(v20, &qword_2800B1CB0, &qword_266AC0FB8);
    sub_266A798F4(v22, &qword_2800B1CB0, &qword_266AC0FB8);
    goto LABEL_34;
  }

  sub_266A6F968(v12, v17, &qword_2800B1CB0, &qword_266AC0FB8);
  OUTLINED_FUNCTION_10_3(&v12[v28]);
  if (v29)
  {
    sub_266A6A63C(v17);
    goto LABEL_21;
  }

  sub_266A7977C(&v12[v28], v8);
  static ParticipantModel.== infix(_:_:)();
  v31 = v30;
  sub_266A6A63C(v8);
  sub_266A6A63C(v17);
  sub_266A798F4(v12, &qword_2800B1CB0, &qword_266AC0FB8);
  sub_266A798F4(v20, &qword_2800B1CB0, &qword_266AC0FB8);
  sub_266A798F4(v22, &qword_2800B1CB0, &qword_266AC0FB8);
  if ((v31 & 1) == 0)
  {
    goto LABEL_34;
  }

LABEL_23:
  v32 = v73;
  if (*(a1 + 64) != *(v73 + 64))
  {
    goto LABEL_34;
  }

  v34 = *(a1 + 72);
  v33 = *(a1 + 80);
  v35 = *(a1 + 88);
  v37 = *(v73 + 72);
  v36 = *(v73 + 80);
  v38 = *(v73 + 88);
  if (v35 != 255)
  {
    v77 = *(a1 + 72);
    v78 = v33;
    v79 = v35;
    if (v38 != 255)
    {
      v74 = v37;
      v75 = v36;
      v76 = v38;
      v39 = OUTLINED_FUNCTION_0_3();
      sub_266A8CE78(v39, v40, v41);
      v42 = OUTLINED_FUNCTION_2_3();
      sub_266A8CE78(v42, v43, v38);
      v44 = OUTLINED_FUNCTION_0_3();
      sub_266A8CE78(v44, v45, v46);
      v47 = static UserFeedbackDevicePreferenceResponse.== infix(_:_:)(&v77, &v74);
      sub_266A8244C(v74, v75, v76);
      sub_266A8244C(v77, v78, v79);
      v48 = OUTLINED_FUNCTION_0_3();
      sub_266A8CEE4(v48, v49, v50);
      if (!v47)
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

    v53 = OUTLINED_FUNCTION_0_3();
    sub_266A8CE78(v53, v54, v55);
    v56 = OUTLINED_FUNCTION_2_3();
    sub_266A8CE78(v56, v57, 255);
    v58 = OUTLINED_FUNCTION_0_3();
    sub_266A8CE78(v58, v59, v60);
    v61 = OUTLINED_FUNCTION_0_3();
    sub_266A8244C(v61, v62, v63);
LABEL_31:
    v64 = OUTLINED_FUNCTION_0_3();
    sub_266A8CEE4(v64, v65, v66);
    v67 = OUTLINED_FUNCTION_2_3();
    sub_266A8CEE4(v67, v68, v38);
    goto LABEL_34;
  }

  sub_266A8CE78(*(a1 + 72), *(a1 + 80), 255);
  if (v38 != 255)
  {
    v51 = OUTLINED_FUNCTION_2_3();
    sub_266A8CE78(v51, v52, v38);
    goto LABEL_31;
  }

  v69 = OUTLINED_FUNCTION_2_3();
  sub_266A8CE78(v69, v70, 255);
  sub_266A8CEE4(v34, v33, 255);
LABEL_33:
  if (*(a1 + 89) == v32[89])
  {
    v23 = *a1 ^ *v32 ^ 1;
    return v23 & 1;
  }

LABEL_34:
  v23 = 0;
  return v23 & 1;
}

uint64_t UserInputModel.hash(into:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CB0, &qword_266AC0FB8);
  OUTLINED_FUNCTION_21(v3);
  OUTLINED_FUNCTION_26();
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - v5;
  v7 = type metadata accessor for ParticipantModel(0);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2();
  v11 = v10 - v9;
  if (*(v1 + 16) == 1)
  {
    sub_266ABE264();
  }

  else
  {
    v12 = *(v1 + 8);
    sub_266ABE264();
    MEMORY[0x26D5E8B00](0);
    if ((v12 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    MEMORY[0x26D5E8B40](v13);
  }

  sub_266A6F968(v1 + 24, &v20, &qword_2800B1C48, &unk_266AC1310);
  if (v23)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800B1CC0, &qword_266AC1290);
    v14 = swift_dynamicCast();
    __swift_storeEnumTagSinglePayload(v6, v14 ^ 1u, 1, v7);
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
    {
      sub_266A7977C(v6, v11);
      ParticipantModel.hash(into:)();
      sub_266A6A63C(v11);
      goto LABEL_12;
    }
  }

  else
  {
    sub_266A798F4(&v20, &qword_2800B1C48, &unk_266AC1310);
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  }

  sub_266A798F4(v6, &qword_2800B1CB0, &qword_266AC0FB8);
LABEL_12:
  sub_266ABE264();
  v15 = *(v1 + 88);
  if (v15 == 255)
  {
    sub_266ABE264();
  }

  else
  {
    v16 = *(v1 + 80);
    v20 = *(v1 + 72);
    v17 = v20;
    v21 = v16;
    v22 = v15;
    sub_266ABE264();
    sub_266A8CE8C(v17, v16, v15);
    UserFeedbackDevicePreferenceResponse.hash(into:)(a1);
    sub_266A8244C(v20, v21, v22);
  }

  sub_266ABE264();
  return sub_266ABE264();
}

uint64_t UserInputModel.hashValue.getter()
{
  sub_266ABE244();
  UserInputModel.hash(into:)(v1);
  return sub_266ABE2A4();
}

uint64_t sub_266A8E500(uint64_t a1)
{
  sub_266ABE244();
  UserInputModel.hash(into:)(v2);
  return sub_266ABE2A4();
}

unint64_t sub_266A8E540()
{
  result = qword_2800B2168;
  if (!qword_2800B2168)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for UserInputModel, &type metadata for UserInputModel, v0, v1);
    atomic_store(result, &qword_2800B2168);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_34SiriCrossDeviceArbitrationFeedback11Participant_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_34SiriCrossDeviceArbitrationFeedback04UsereC18PreferenceResponseO(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t get_enum_tag_for_layout_string_34SiriCrossDeviceArbitrationFeedback04UsereC18PreferenceResponseOSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 4)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_266A8E74C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 90))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 48);
      if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_266A8E7A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 90) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 90) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for UserInputModel.Keys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_266A8E8FC()
{
  result = qword_2800B2170;
  if (!qword_2800B2170)
  {
    result = swift_getWitnessTable(aUw, &type metadata for UserInputModel.Keys, v0, v1);
    atomic_store(result, &qword_2800B2170);
  }

  return result;
}

unint64_t sub_266A8E954()
{
  result = qword_2800B2178;
  if (!qword_2800B2178)
  {
    result = swift_getWitnessTable(byte_266AC2A84, &type metadata for UserInputModel.Keys, v0, v1);
    atomic_store(result, &qword_2800B2178);
  }

  return result;
}

unint64_t sub_266A8E9AC()
{
  result = qword_2800B2180;
  if (!qword_2800B2180)
  {
    result = swift_getWitnessTable(asc_266AC2AAC, &type metadata for UserInputModel.Keys, v0, v1);
    atomic_store(result, &qword_2800B2180);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_266ABE024();
}