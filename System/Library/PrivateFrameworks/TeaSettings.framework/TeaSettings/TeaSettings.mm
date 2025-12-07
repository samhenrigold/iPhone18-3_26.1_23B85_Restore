uint64_t sub_26D185D60()
{
  type metadata accessor for SettingReader();
  v0 = swift_allocObject();
  type metadata accessor for SettingReader.Reader();
  result = swift_allocObject();
  *(v0 + 16) = result;
  qword_280AF2FD8 = v0;
  return result;
}

void *sub_26D185E00(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_26D185E84(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  v4 = v1;
  if (v5 <= 0x3F)
  {
    v4 = type metadata accessor for Trait(319, v1, v2, v3);
    if (v6 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return v4;
}

uint64_t sub_26D185FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Option(255, *(a1 + 16), a3, a4);
  result = sub_26D19B8B4();
  if (v5 <= 0x3F)
  {
    result = swift_getTupleTypeMetadata2();
    if (v6 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

char *Setting.init(_:defaultValue:domain:access:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, char *a5)
{
  v6 = v5;
  v10 = *v6;
  v11 = *a4;
  v12 = a4[1];
  v13 = *a5;
  v14 = *(*v6 + 88);
  type metadata accessor for Trait(0, v14, a3, a4);
  swift_storeEnumTagMultiPayload();
  *(v6 + 2) = a1;
  *(v6 + 3) = a2;
  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_5();
  v16 = v15;
  (*(v15 + 16))(&v6[v17], a3, v14);
  (*(*(v10 + 96) + 32))(v25, v14);
  OUTLINED_FUNCTION_3_2();
  sub_26D186BA8(v25, &v6[*(v18 + 120)]);
  OUTLINED_FUNCTION_3_2();
  v20 = &v6[*(v19 + 128)];
  *v20 = v11;
  *(v20 + 1) = v12;
  OUTLINED_FUNCTION_3_2();
  v6[*(v21 + 136)] = v13;
  sub_26D186BF4(0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_26D19C050;
  *(v22 + 56) = &type metadata for Access;
  *(v22 + 64) = &off_287E901D8;
  *(v22 + 32) = v13;
  (*(v16 + 8))(a3, v14);
  OUTLINED_FUNCTION_3_2();
  *&v6[*(v23 + 144)] = v22;
  return v6;
}

uint64_t OUTLINED_FUNCTION_3(uint64_t result, uint64_t a2)
{
  *(v2 + 104) = 0;
  *(v2 + 112) = 2;
  *(v2 + 16) = result;
  *(v2 + 24) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_0(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (!a1)
  {
    return 0;
  }

  return a10;
}

void Configurable.setting<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_4_2();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = *v26;
  v29 = *(*v26 + 88);
  v30 = sub_26D19B934();
  OUTLINED_FUNCTION_0_5();
  v32 = v31;
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v33);
  v35 = &a9 - v34;
  __swift_storeEnumTagSinglePayload(&a9 - v34, 1, 1, v29);
  (*(v23 + 16))(v27, v35, v29, *(v28 + 96), v25, v23);
  (*(v32 + 8))(v35, v30);
  OUTLINED_FUNCTION_3_3();
}

uint64_t OUTLINED_FUNCTION_4@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  a2[3] = v2;
  *a2 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_4()
{

  return swift_dynamicCast();
}

void Configurable.setting<A>(_:defaultValue:)()
{
  OUTLINED_FUNCTION_4_2();
  v1 = v0;
  v3 = v2;
  v24 = v4;
  v23 = *v2;
  v5 = *(v23 + 88);
  v6 = sub_26D19B934();
  OUTLINED_FUNCTION_0_5();
  v8 = v7;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - v13;
  v15 = *(v5 - 8);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  (*(v8 + 16))(v14, v1, v6);
  if (__swift_getEnumTagSinglePayload(v14, 1, v5) == 1)
  {
    (*(v15 + 16))(v18, &v3[*(*v3 + 112)], v5);
    if (__swift_getEnumTagSinglePayload(v14, 1, v5) != 1)
    {
      (*(v8 + 8))(v14, v6);
    }
  }

  else
  {
    (*(v15 + 32))(v18, v14, v5);
  }

  swift_beginAccess();

  v20 = sub_26D186A68(v19);

  if (!v20)
  {
    goto LABEL_11;
  }

  if (qword_280AF3258 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_280AF3258);
  }

  v26[3] = type metadata accessor for Setting(0, v5, *(v23 + 96), v21);
  v26[4] = swift_getWitnessTable();
  v25[3] = v5;
  v26[0] = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v25);
  (*(v15 + 16))(boxed_opaque_existential_0, v18, v5);

  sub_26D1870F4(v26, v25, &v27);
  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  __swift_destroy_boxed_opaque_existential_1Tm(v26);
  if (!swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v5);
    (*(v8 + 8))(v12, v6);
LABEL_11:
    (*(v15 + 32))(v24, v18, v5);
    goto LABEL_12;
  }

  (*(v15 + 8))(v18, v5);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v5);
  (*(v15 + 32))(v24, v12, v5);
LABEL_12:
  OUTLINED_FUNCTION_3_3();
}

uint64_t sub_26D1868C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void OUTLINED_FUNCTION_0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  v5 = MEMORY[0x277D84560];

  sub_26D1880EC(0, a2, a3, a4, v5);
}

uint64_t OUTLINED_FUNCTION_0_1(uint64_t a4, uint64_t a5, ...)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_0_2()
{
  v1 = v0[3];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_0_4(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_1()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_0_8(uint64_t a1)
{

  return swift_once();
}

BOOL sub_26D186A68(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = a1 + 32;
  for (i = MEMORY[0x277D84F90]; v1; --v1)
  {
    sub_26D1868C4(v2, &v12);
    v4 = v13;
    v5 = v14;
    __swift_project_boxed_opaque_existential_1(&v12, v13);
    if ((*(v5 + 8))(v4, v5))
    {
      __swift_destroy_boxed_opaque_existential_1Tm(&v12);
    }

    else
    {
      sub_26D1885C4(&v12, v11);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = i;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_26D18C908(0, *(i + 16) + 1, 1);
        i = v15;
      }

      v8 = *(i + 16);
      v7 = *(i + 24);
      if (v8 >= v7 >> 1)
      {
        sub_26D18C908((v7 > 1), v8 + 1, 1);
        i = v15;
      }

      *(i + 16) = v8 + 1;
      sub_26D1885C4(v11, i + 40 * v8 + 32);
    }

    v2 += 40;
  }

  v9 = *(i + 16);

  return v9 == 0;
}

_OWORD *sub_26D186BA8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

double OUTLINED_FUNCTION_5_0()
{
  result = 0.0;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *v0 = 0u;
  *(v0 + 80) = 12;
  return result;
}

void sub_26D186BF4(uint64_t a1)
{
  if (!qword_280AF30A0[0])
  {
    sub_26D186C4C();
    v1 = sub_26D19BA74();
    if (!v2)
    {
      atomic_store(v1, qword_280AF30A0);
    }
  }
}

unint64_t sub_26D186C4C()
{
  result = qword_280AF31A8[0];
  if (!qword_280AF31A8[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_280AF31A8);
  }

  return result;
}

void sub_26D186CB0(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_26D186D48();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26D186D48()
{
  if (!qword_280AF2F28[0])
  {
    v0 = sub_26D19B934();
    if (!v1)
    {
      atomic_store(v0, qword_280AF2F28);
    }
  }
}

uint64_t OUTLINED_FUNCTION_2_0@<X0>(__n128 *a1@<X0>, unint64_t a2@<X8>, __n128 a3@<Q0>)
{
  a1[1] = a3;
  a1[3].n128_u64[1] = a2;
  a1[4].n128_u64[0] = v3;
  a1[2].n128_u8[0] = v4;
  *(v5 + 96) = a1;
  return v5;
}

uint64_t Bool.toData()@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = MEMORY[0x277D839B0];
  *a2 = result;
  return result;
}

uint64_t RawRepresentable<>.toData()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_2();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v11 - v8;
  sub_26D19B7E4();
  (*(a3 + 32))(AssociatedTypeWitness, a3);
  return (*(v6 + 8))(v9, AssociatedTypeWitness);
}

uint64_t String.toData()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  a3[3] = MEMORY[0x277D837D0];
  *a3 = a1;
  a3[1] = a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_26D187058()
{
  if (!*v0)
  {
    return 1;
  }

  if (*v0 != 1)
  {
    return 0;
  }

  sub_26D19B634();
  return sub_26D19B624() & 1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

void sub_26D1870F4(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  v8 = (*(v7 + 56))(v6, v7);
  v9 = sub_26D186A68(v8);

  if (v9 && (OUTLINED_FUNCTION_8(), (*(v7 + 40))(&v162, v9, v7), v164 = v162, v160 = sub_26D187BA4(&v164), , v160))
  {
    v10 = a1[3];
    v11 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v10);
    v12 = (*(v11 + 16))(v10, v11);
    v13 = sub_26D187B08(v12);

    if (v13)
    {
      v14 = a1[3];
      v15 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v14);
      (*(v15 + 64))(&v164, v14, v15);
      v16 = v164;
      v18 = a1[3];
      v17 = a1[4];
      v19 = __swift_project_boxed_opaque_existential_1(a1, v18);
      switch(v16)
      {
        case 1:
          v101 = OUTLINED_FUNCTION_2_1();
          v102(v101);
          sub_26D19B714();
          v103 = OUTLINED_FUNCTION_16();
          v110 = OUTLINED_FUNCTION_18(v103, sel_stringArrayForKey_, v104, v105, v106, v107, v108, v109, v160);

          if (!v110)
          {
            goto LABEL_96;
          }

          v111 = MEMORY[0x277D837D0];
          v112 = sub_26D19B814();

          OUTLINED_FUNCTION_8();
          sub_26D18D09C(0, &qword_280AF2870, v111, MEMORY[0x277D83940]);
          v163 = v113;
          *&v162 = v112;
          goto LABEL_40;
        case 2:
          v62 = OUTLINED_FUNCTION_0_2();
          v63(v62);
          sub_26D19B714();
          v64 = OUTLINED_FUNCTION_17();
          v71 = OUTLINED_FUNCTION_12(v64, sel_BOOLForKey_, v65, v66, v67, v68, v69, v70, v160);
          v73 = [v71 v72];

          v163 = MEMORY[0x277D839B0];
          LOBYTE(v162) = v73;
          goto LABEL_43;
        case 3:
          v74 = OUTLINED_FUNCTION_0_2();
          v75(v74);
          sub_26D19B714();
          v76 = OUTLINED_FUNCTION_17();
          v83 = OUTLINED_FUNCTION_12(v76, sel_integerForKey_, v77, v78, v79, v80, v81, v82, v160);
          v85 = [v83 v84];

          v163 = MEMORY[0x277D83B88];
          *&v162 = v85;
          goto LABEL_43;
        case 4:
          v38 = OUTLINED_FUNCTION_2_1();
          v39(v38);
          sub_26D19B714();
          v40 = OUTLINED_FUNCTION_16();
          v47 = OUTLINED_FUNCTION_18(v40, &off_279D93C78, v41, v42, v43, v44, v45, v46, v160);

          if (!v47)
          {
            goto LABEL_96;
          }

          v48 = sub_26D19B724();
          v50 = v49;

          v51 = HIBYTE(v50) & 0xF;
          v52 = v48 & 0xFFFFFFFFFFFFLL;
          if ((v50 & 0x2000000000000000) != 0)
          {
            v53 = HIBYTE(v50) & 0xF;
          }

          else
          {
            v53 = v48 & 0xFFFFFFFFFFFFLL;
          }

          if (!v53)
          {

            goto LABEL_96;
          }

          if ((v50 & 0x1000000000000000) != 0)
          {
            v56 = sub_26D18F384(v48, v50, 10);
            v154 = v159;
LABEL_95:

            if ((v154 & 1) == 0)
            {
              v155 = a1[3];
              v156 = a1[4];
              __swift_project_boxed_opaque_existential_1(a1, v155);
              v163 = MEMORY[0x277D84A28];
              *&v162 = v56;
              v157 = *(v156 + 72);
              AssociatedTypeWitness = swift_getAssociatedTypeWitness();
              OUTLINED_FUNCTION_15(AssociatedTypeWitness);
              v157(&v162, v155, v156);
LABEL_44:

LABEL_45:
              __swift_destroy_boxed_opaque_existential_1Tm(&v162);
              goto LABEL_97;
            }

LABEL_96:

            sub_26D187C98(a2, a3);
LABEL_97:
            OUTLINED_FUNCTION_14();
            return;
          }

          if ((v50 & 0x2000000000000000) != 0)
          {
            *&v162 = v48;
            *(&v162 + 1) = v50 & 0xFFFFFFFFFFFFFFLL;
            if (v48 == 43)
            {
              if (v51)
              {
                if (v51 != 1)
                {
                  OUTLINED_FUNCTION_11();
                  while (1)
                  {
                    OUTLINED_FUNCTION_6();
                    if (!v58 & v57)
                    {
                      break;
                    }

                    OUTLINED_FUNCTION_3_1();
                    if (!v58)
                    {
                      break;
                    }

                    v56 = v149 + v148;
                    if (__OFADD__(v149, v148))
                    {
                      break;
                    }

                    OUTLINED_FUNCTION_9();
                    if (v58)
                    {
                      goto LABEL_94;
                    }
                  }
                }

                goto LABEL_93;
              }

LABEL_105:
              __break(1u);
              JUMPOUT(0x26D187980);
            }

            if (v48 != 45)
            {
              if (v51)
              {
                while (1)
                {
                  OUTLINED_FUNCTION_6();
                  if (!v58 & v57)
                  {
                    break;
                  }

                  OUTLINED_FUNCTION_3_1();
                  if (!v58)
                  {
                    break;
                  }

                  v56 = v153 + v152;
                  if (__OFADD__(v153, v152))
                  {
                    break;
                  }

                  OUTLINED_FUNCTION_9();
                  if (v58)
                  {
                    goto LABEL_94;
                  }
                }
              }

              goto LABEL_93;
            }

            if (v51)
            {
              if (v51 != 1)
              {
                OUTLINED_FUNCTION_11();
                while (1)
                {
                  OUTLINED_FUNCTION_6();
                  if (!v58 & v57)
                  {
                    break;
                  }

                  OUTLINED_FUNCTION_3_1();
                  if (!v58)
                  {
                    break;
                  }

                  v56 = v145 - v144;
                  if (__OFSUB__(v145, v144))
                  {
                    break;
                  }

                  OUTLINED_FUNCTION_9();
                  if (v58)
                  {
                    goto LABEL_94;
                  }
                }
              }

              goto LABEL_93;
            }
          }

          else
          {
            if ((v48 & 0x1000000000000000) != 0)
            {
              v54 = ((v50 & 0xFFFFFFFFFFFFFFFLL) + 32);
            }

            else
            {
              v54 = sub_26D19B9B4();
            }

            v55 = *v54;
            if (v55 == 43)
            {
              if (v52 >= 1)
              {
                if (v52 != 1)
                {
                  v56 = 0;
                  if (v54)
                  {
                    while (1)
                    {
                      OUTLINED_FUNCTION_6();
                      if (!v58 & v57)
                      {
                        goto LABEL_93;
                      }

                      OUTLINED_FUNCTION_3_1();
                      if (!v58)
                      {
                        goto LABEL_93;
                      }

                      v56 = v147 + v146;
                      if (__OFADD__(v147, v146))
                      {
                        goto LABEL_93;
                      }

                      OUTLINED_FUNCTION_9();
                      if (v58)
                      {
                        goto LABEL_94;
                      }
                    }
                  }

                  goto LABEL_84;
                }

                goto LABEL_93;
              }

              goto LABEL_104;
            }

            if (v55 != 45)
            {
              if (v52)
              {
                v56 = 0;
                if (v54)
                {
                  while (1)
                  {
                    v150 = *v54 - 48;
                    if (v150 > 9)
                    {
                      goto LABEL_93;
                    }

                    v151 = 10 * v56;
                    if ((v56 * 10) >> 64 != (10 * v56) >> 63)
                    {
                      goto LABEL_93;
                    }

                    v56 = v151 + v150;
                    if (__OFADD__(v151, v150))
                    {
                      goto LABEL_93;
                    }

                    ++v54;
                    if (!--v52)
                    {
                      goto LABEL_84;
                    }
                  }
                }

                goto LABEL_84;
              }

LABEL_93:
              v56 = 0;
              v61 = 1;
              goto LABEL_94;
            }

            if (v52 >= 1)
            {
              if (v52 != 1)
              {
                v56 = 0;
                if (v54)
                {
                  while (1)
                  {
                    OUTLINED_FUNCTION_6();
                    if (!v58 & v57)
                    {
                      goto LABEL_93;
                    }

                    OUTLINED_FUNCTION_3_1();
                    if (!v58)
                    {
                      goto LABEL_93;
                    }

                    v56 = v60 - v59;
                    if (__OFSUB__(v60, v59))
                    {
                      goto LABEL_93;
                    }

                    OUTLINED_FUNCTION_9();
                    if (v58)
                    {
                      goto LABEL_94;
                    }
                  }
                }

LABEL_84:
                v61 = 0;
LABEL_94:
                v154 = v61;
                goto LABEL_95;
              }

              goto LABEL_93;
            }

            __break(1u);
          }

          __break(1u);
LABEL_104:
          __break(1u);
          goto LABEL_105;
        case 5:
          v116 = OUTLINED_FUNCTION_0_2();
          v117(v116);
          sub_26D19B714();
          v118 = OUTLINED_FUNCTION_17();
          v125 = OUTLINED_FUNCTION_12(v118, sel_floatForKey_, v119, v120, v121, v122, v123, v124, v160);
          [v125 v126];
          v128 = v127;

          v163 = MEMORY[0x277D83A90];
          LODWORD(v162) = v128;
          goto LABEL_43;
        case 6:
          v129 = OUTLINED_FUNCTION_0_2();
          v130(v129);
          sub_26D19B714();
          v131 = OUTLINED_FUNCTION_17();
          v138 = OUTLINED_FUNCTION_12(v131, sel_doubleForKey_, v132, v133, v134, v135, v136, v137, v160);
          [v138 v139];
          v141 = v140;

          v163 = MEMORY[0x277D839F8];
          *&v162 = v141;
LABEL_43:
          v142 = v17[9];
          v143 = swift_getAssociatedTypeWitness();
          OUTLINED_FUNCTION_15(v143);
          v142(&v162, v18, v17);
          goto LABEL_44;
        case 7:
          v86 = OUTLINED_FUNCTION_2_1();
          v87(v86);
          sub_26D19B714();
          v88 = OUTLINED_FUNCTION_16();
          v95 = OUTLINED_FUNCTION_18(v88, sel_dataForKey_, v89, v90, v91, v92, v93, v94, v160);

          if (!v95)
          {
            goto LABEL_96;
          }

          v96 = sub_26D19B5C4();
          v98 = v97;

          OUTLINED_FUNCTION_8();
          v163 = MEMORY[0x277CC9318];
          *&v162 = v96;
          *(&v162 + 1) = v98;
          v99 = v19[9];
          v100 = swift_getAssociatedTypeWitness();
          OUTLINED_FUNCTION_15(v100);
          sub_26D18ECD8(v96, v98);
          v99(&v162, v18, v19);

          sub_26D18FFD8(v96, v98);
          goto LABEL_45;
        default:
          v20 = OUTLINED_FUNCTION_2_1();
          v21(v20);
          sub_26D19B714();
          v22 = OUTLINED_FUNCTION_16();
          v29 = OUTLINED_FUNCTION_18(v22, sel_stringForKey_, v23, v24, v25, v26, v27, v28, v160);

          if (!v29)
          {
            goto LABEL_96;
          }

          v30 = sub_26D19B724();
          v32 = v31;

          OUTLINED_FUNCTION_8();
          v163 = MEMORY[0x277D837D0];
          *&v162 = v30;
          *(&v162 + 1) = v32;
LABEL_40:
          v114 = v19[9];
          v115 = swift_getAssociatedTypeWitness();
          OUTLINED_FUNCTION_15(v115);
          v114(&v162, v18, v19);
          goto LABEL_44;
      }
    }

    sub_26D187C98(a2, a3);
    OUTLINED_FUNCTION_14();
  }

  else
  {
    OUTLINED_FUNCTION_14();

    sub_26D187C98(v33, v34);
  }
}

uint64_t sub_26D1879A0()
{
  OUTLINED_FUNCTION_1_0();
  swift_beginAccess();
}

uint64_t sub_26D187A58()
{
  OUTLINED_FUNCTION_1_0();
  v2 = (v0 + *(v1 + 128));
  v3 = v2[1];
  *v4 = *v2;
  v4[1] = v3;
}

void *OUTLINED_FUNCTION_8()
{
  v2 = v0[3];

  return __swift_project_boxed_opaque_existential_1(v0, v2);
}

void OUTLINED_FUNCTION_8_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{

  Configurable.setting<A>(_:)(v20, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

BOOL sub_26D187B08(uint64_t a1)
{
  v2 = sub_26D19B714();
  v3 = [v1 objectForKey_];

  if (v3)
  {
    sub_26D19B954();
    swift_unknownObjectRelease();
    sub_26D186BA8(&v5, v6);
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  sub_26D187C3C(v6);
  return v3 != 0;
}

id sub_26D187BA4(uint64_t *a1)
{
  v2 = a1[1];
  if (v2)
  {
    v3 = *a1;
    objc_allocWithZone(MEMORY[0x277CBEBD0]);

    return sub_26D188DF4(v3, v2);
  }

  else
  {
    v5 = *(v1 + 16);
    v6 = v5;
    return v5;
  }
}

uint64_t sub_26D187C0C()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_26D187C3C(uint64_t a1)
{
  sub_26D187CF4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26D187C98(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_26D187CF4()
{
  if (!qword_280AF3098)
  {
    v0 = sub_26D19B934();
    if (!v1)
    {
      atomic_store(v0, &qword_280AF3098);
    }
  }
}

unint64_t sub_26D187D64(uint64_t a1)
{
  result = sub_26D187D8C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26D187D8C()
{
  result = qword_280AF2F20;
  if (!qword_280AF2F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280AF2F20);
  }

  return result;
}

void sub_26D187DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_280AF2EB8)
  {
    v4 = type metadata accessor for Option(0, &type metadata for FeatureState, a3, a4);
    if (!v5)
    {
      atomic_store(v4, &qword_280AF2EB8);
    }
  }
}

uint64_t Setting<>.init(_:defaultValue:domain:access:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t *a4, unsigned __int8 *a5)
{
  v7 = *a4;
  v8 = a4[1];
  v9 = *a5;
  v10 = *a3;
  sub_26D187FC4(0, a2, a3, a4);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_26D19CB00;
  *(v11 + 48) = 0;
  *(v11 + 32) = 0x746C7561666544;
  *(v11 + 40) = 0xE700000000000000;
  *(v11 + 56) = 0;
  *(v11 + 64) = 0;
  *(v11 + 88) = 1;
  *(v11 + 72) = 0x64656C62616E45;
  *(v11 + 80) = 0xE700000000000000;
  *(v11 + 128) = 2;
  *(v11 + 96) = 0;
  *(v11 + 104) = 0;
  *(v11 + 112) = 0x64656C6261736944;
  *(v11 + 120) = 0xE800000000000000;
  *(v11 + 136) = 0;
  *(v11 + 144) = 0;

  return sub_26D18801C(a1, a2, v10, v7, v8, v9, v11);
}

void sub_26D187F28(uint64_t a1)
{
  if (!qword_280AF2F08)
  {
    v2 = sub_26D18851C();
    v4 = type metadata accessor for Setting(a1, &type metadata for FeatureState, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_280AF2F08);
    }
  }
}

uint64_t Setting<>.init(_:defaultValue:access:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = *a4;
  v8 = *a3;
  v7[0] = 0;
  v7[1] = 0;
  v6 = v4;
  return Setting<>.init(_:defaultValue:domain:access:)(a1, a2, &v8, v7, &v6);
}

void sub_26D187FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_280AF2EB0)
  {
    sub_26D187DE0(255, a2, a3, a4);
    v4 = sub_26D19BA74();
    if (!v5)
    {
      atomic_store(v4, &qword_280AF2EB0);
    }
  }
}

uint64_t sub_26D18801C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a6;
  swift_allocObject();
  v14 = sub_26D188154(a1, a2, a3, a4, a5, v8);
  swift_beginAccess();
  v15 = *(v14 + 104);
  *(v14 + 104) = a7;
  LOBYTE(a7) = *(v14 + 112);
  *(v14 + 112) = 0;

  sub_26D18850C(v15, a7);

  return v14;
}

void sub_26D1880EC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_26D188250(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_26D188154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  OUTLINED_FUNCTION_3(a1, a2);
  *(v6 + 32) = v10;
  if (v10)
  {
    if (v10 == 1)
    {
      v11 = 0xE700000000000000;
      v12 = 0x64656C62616E65;
    }

    else
    {
      v11 = 0xE800000000000000;
      v12 = 0x64656C6261736964;
    }
  }

  else
  {
    v11 = 0xE700000000000000;
    v12 = 0x746C7561666564;
  }

  v17 = MEMORY[0x277D837D0];
  *&v16 = v12;
  *(&v16 + 1) = v11;
  v13 = sub_26D186BA8(&v16, (v6 + 40));
  *(v6 + 72) = a4;
  *(v6 + 80) = a5;
  *(v6 + 88) = a6;
  OUTLINED_FUNCTION_0(v13, qword_280AF30A0, qword_280AF31A8, &protocol descriptor for ConditionType);
  v14 = swift_allocObject();
  return OUTLINED_FUNCTION_2_0(v14, &type metadata for Access, xmmword_26D19C050);
}

uint64_t sub_26D188250(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_26D1882A4(uint64_t a1, char a2)
{
  sub_26D1883B0(a1, 3, &v6);
  if (v6)
  {
    a2 = v6 == 1;
    return a2 & 1;
  }

  if (a2 != 2)
  {
    return a2 & 1;
  }

  if (*(a1 + 32) && *(a1 + 32) == 1)
  {

    a2 = 1;
    return a2 & 1;
  }

  v5 = sub_26D19BA94();

  return v5 & 1;
}

uint64_t sub_26D1883B0@<X0>(uint64_t a1@<X0>, char a2@<W1>, char *a3@<X8>)
{
  v3 = a2;
  if (a2 == 3)
  {
    v3 = *(a1 + 32);
  }

  swift_beginAccess();

  v7 = sub_26D186A68(v6);

  if (!v7)
  {
    goto LABEL_8;
  }

  if (qword_280AF3258 != -1)
  {
    swift_once();
  }

  sub_26D187F28(0);
  v11[3] = v9;
  v11[4] = sub_26D188570(&qword_280AF2F10, sub_26D187F28);
  v11[0] = a1;
  v10[3] = &type metadata for FeatureState;
  LOBYTE(v10[0]) = v3;

  sub_26D1870F4(v11, v10, v12);
  __swift_destroy_boxed_opaque_existential_1Tm(v10);
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  result = swift_dynamicCast();
  if (result)
  {
    *a3 = v11[0];
  }

  else
  {
LABEL_8:
    *a3 = v3;
  }

  return result;
}

uint64_t sub_26D18850C(uint64_t result, char a2)
{
  if (!a2)
  {
  }

  return v2;
}

unint64_t sub_26D18851C()
{
  result = qword_280AF2F18;
  if (!qword_280AF2F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280AF2F18);
  }

  return result;
}

uint64_t sub_26D188570(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

uint64_t sub_26D1885C4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_26D18862C()
{
  v1 = v0;
  v2 = [objc_opt_self() processInfo];
  v3 = sub_26D19B904();

  v4 = v1[5];
  v5 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v4);
  (*(v5 + 16))(v3, v4, v5);

  sub_26D1888C8();
  swift_allocObject();
  return sub_26D19B674();
}

Swift::Void __swiftcall PresetManager.apply(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  v3 = 0;
  v16 = a1._rawValue + 32;
  v17 = *(a1._rawValue + 2);
LABEL_2:
  if (v3 != v17)
  {
    v4 = &v16[16 * v3];
    v6 = *v4;
    v5 = v4[1];
    swift_beginAccess();
    v7 = *(v2 + 32);

    v8 = sub_26D198E44(v6, v5, v7);
    if (v8)
    {
      v9 = v8;
      v18 = v3 + 1;
      swift_endAccess();

      v10 = sub_26D1893C4(v9);
      for (i = 0; ; ++i)
      {
        if (v10 == i)
        {

          v3 = v18;
          goto LABEL_2;
        }

        if ((v9 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x26D6B46D0](i, v9);
        }

        else
        {
          if (i >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v12 = *(v9 + 8 * i + 32);
        }

        if (__OFADD__(i, 1))
        {
          break;
        }

        v13 = *(v2 + 24);
        ObjectType = swift_getObjectType();
        v15 = *(v13 + 32);
        swift_unknownObjectRetain();
        v15(v12, ObjectType, v13);

        swift_unknownObjectRelease();
      }

      __break(1u);
LABEL_16:
      __break(1u);
    }

    else
    {
      swift_endAccess();
    }
  }
}

void sub_26D1888C8()
{
  if (!qword_280AF28A0)
  {
    v0 = sub_26D19B684();
    if (!v1)
    {
      atomic_store(v0, &qword_280AF28A0);
    }
  }
}

uint64_t sub_26D18891C(uint64_t a1)
{
  sub_26D188E94();
  swift_beginAccess();
  v2 = *(a1 + 24);
  v3 = sub_26D1893BC(v2);

  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x26D6B46D0](i, v2);
      v6 = result;
    }

    else
    {
      if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v6 = *(v2 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    (*(v6 + 24))(result);
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

void sub_26D188A18(uint64_t a1)
{
  sub_26D188ACC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_26D188ACC(uint64_t a1)
{
  if (!qword_280AF2F00)
  {
    sub_26D19B5B4();
    v1 = sub_26D19B934();
    if (!v2)
    {
      atomic_store(v1, &qword_280AF2F00);
    }
  }
}

id AppGroup.init(identifier:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC11TeaSettings8AppGroup____lazy_storage___containerURL;
  v7 = sub_26D19B5B4();
  __swift_storeEnumTagSinglePayload(v3 + v6, 1, 1, v7);
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v8 = (v3 + OBJC_IVAR____TtC11TeaSettings8AppGroup_settingsDomain);
  *v8 = a1;
  v8[1] = a2;
  objc_allocWithZone(MEMORY[0x277CBEBD0]);
  swift_bridgeObjectRetain_n();
  result = sub_26D188DF4(a1, a2);
  if (result)
  {
    v10 = result;

    *(v3 + OBJC_IVAR____TtC11TeaSettings8AppGroup_userDefaults) = v10;
    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_26D188BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_280AF2CF8)
  {
    v4 = type metadata accessor for Setting(0, MEMORY[0x277D839B0], &protocol witness table for Bool, a4);
    if (!v5)
    {
      atomic_store(v4, &qword_280AF2CF8);
    }
  }
}

uint64_t sub_26D188C34()
{
  v0 = [objc_opt_self() standardUserDefaults];
  type metadata accessor for SettingsStore();
  OUTLINED_FUNCTION_13();
  v1 = swift_allocObject();
  result = sub_26D188CB8(v0);
  qword_280AF3810 = v1;
  return result;
}

uint64_t sub_26D188CB8(void *a1)
{
  v3 = MEMORY[0x277D84F90];
  *(v1 + 16) = a1;
  *(v1 + 24) = v3;
  v4 = objc_opt_self();
  v5 = a1;
  v6 = [v4 defaultCenter];
  [v6 addObserver:v1 selector:sel_defaultsDidChange name:*MEMORY[0x277CCA858] object:0];

  return v1;
}

void *PresetManager.init()()
{
  sub_26D189578(0);
  v0[4] = sub_26D19B6E4();
  type metadata accessor for Updater();
  v0[2] = swift_allocObject();
  v0[3] = &protocol witness table for Updater;
  return v0;
}

id sub_26D188DF4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_26D19B714();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

uint64_t sub_26D188E94()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 24);
  v3 = MEMORY[0x277D84F90];
  v8 = MEMORY[0x277D84F90];
  v4 = sub_26D1893BC(v2);

  v6 = 0;
  while (1)
  {
    if (v4 == v6)
    {

      *(v1 + 24) = v3;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x26D6B46D0](v6, v2);
    }

    else
    {
      if (v6 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }
    }

    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = swift_unknownObjectRelease();
      MEMORY[0x26D6B4540](v7);
      if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_26D19B844();
      }

      result = sub_26D19B874();
      v3 = v8;
      ++v6;
    }

    else
    {

      ++v6;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_26D188FF4()
{
  v1 = sub_26D19B694();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26D19B6B4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([objc_opt_self() isMainThread])
  {
    sub_26D188E94();
    swift_beginAccess();
    v9 = *(v0 + 24);
    v10 = sub_26D1893BC(v9);

    for (i = 0; ; ++i)
    {
      if (v10 == i)
      {
      }

      if ((v9 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x26D6B46D0](i, v9);
        v13 = result;
      }

      else
      {
        if (i >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v13 = *(v9 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      (*(v13 + 24))(result);
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  else
  {
    sub_26D1893E8();
    v14 = sub_26D19B914();
    aBlock[4] = sub_26D189638;
    aBlock[5] = v0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26D189534;
    aBlock[3] = &block_descriptor;
    v15 = _Block_copy(aBlock);

    sub_26D19B6A4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_26D18944C(&qword_280AF3090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_26D1894DC(0);
    sub_26D18944C(&qword_280AF3080, sub_26D1894DC, MEMORY[0x277D83970]);
    sub_26D19B964();
    MEMORY[0x26D6B4660](0, v8, v4, v15);
    _Block_release(v15);

    (*(v2 + 8))(v4, v1);
    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

void Date.toData()(void *a1@<X8>)
{
  sub_26D19B5E4();
  a1[3] = MEMORY[0x277D839F8];
  *a1 = v2;
}

uint64_t sub_26D1893C4(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_26D19BA44();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

unint64_t sub_26D1893E8()
{
  result = qword_280AF3078;
  if (!qword_280AF3078)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280AF3078);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26D18944C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26D189494(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_26D1894DC(uint64_t a1)
{
  if (!qword_280AF3088)
  {
    sub_26D19B694();
    v1 = sub_26D19B8B4();
    if (!v2)
    {
      atomic_store(v1, &qword_280AF3088);
    }
  }
}

uint64_t sub_26D189534(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_26D189578(uint64_t a1)
{
  if (!qword_280AF2898)
  {
    type metadata accessor for Preset();
    v1 = sub_26D19B8B4();
    if (!v2)
    {
      atomic_store(v1, &qword_280AF2898);
    }
  }
}

uint64_t sub_26D189650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_26D188BDC(0, a2, a3, a4);
  swift_allocObject();
  result = sub_26D1896B8(0xD00000000000002BLL, 0x800000026D19DAF0);
  qword_280AF2880 = result;
  return result;
}

uint64_t sub_26D1896B8(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_3(a1, a2);
  v4 = MEMORY[0x277D839B0];
  *(v2 + 32) = v5;
  *(v2 + 40) = v5;
  *(v2 + 64) = v4;
  *(v2 + 72) = v6;
  *(v2 + 80) = v7;
  *(v2 + 88) = v8;
  OUTLINED_FUNCTION_0(v3, qword_280AF30A0, qword_280AF31A8, &protocol descriptor for ConditionType);
  v9 = swift_allocObject();
  return OUTLINED_FUNCTION_2_0(v9, &type metadata for Access, xmmword_26D19C050);
}

uint64_t AppGroup.cachesDirectoryURL.getter()
{
  v0 = sub_26D19B5B4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  AppGroup.containerURL.getter(v3);
  sub_26D19B594();
  return (*(v1 + 8))(v3, v0);
}

uint64_t AppGroup.containerURL.getter@<X0>(uint64_t a1@<X8>)
{
  sub_26D188ACC(0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v12[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v12[-v7];
  v9 = OBJC_IVAR____TtC11TeaSettings8AppGroup____lazy_storage___containerURL;
  swift_beginAccess();
  sub_26D1899DC(v1 + v9, v8);
  v10 = sub_26D19B5B4();
  if (__swift_getEnumTagSinglePayload(v8, 1, v10) != 1)
  {
    return (*(*(v10 - 8) + 32))(a1, v8, v10);
  }

  sub_26D189A40(v8);
  sub_26D189A9C(a1);
  (*(*(v10 - 8) + 16))(v6, a1, v10);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v10);
  swift_beginAccess();
  sub_26D18A370(v6, v1 + v9);
  return swift_endAccess();
}

uint64_t sub_26D1899DC(uint64_t a1, uint64_t a2)
{
  sub_26D188ACC(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26D189A40(uint64_t a1)
{
  sub_26D188ACC(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26D189A9C@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_26D19B5B4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26D188ACC(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() defaultManager];
  v11 = sub_26D19B714();
  v12 = [v10 containerURLForSecurityApplicationGroupIdentifier_];

  if (v12)
  {
    sub_26D19B5A4();

    v13 = *(v4 + 32);
    v13(v9, v6, v3);
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v3);
    return (v13)(a2, v9, v3);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v3);
    v15 = NSTemporaryDirectory();
    v16 = sub_26D19B724();
    v18 = v17;

    v19 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
    v20 = [v19 UUIDString];

    v21 = sub_26D19B724();
    v23 = v22;

    v24[0] = v16;
    v24[1] = v18;

    MEMORY[0x26D6B4490](v21, v23);

    sub_26D19B584();

    result = __swift_getEnumTagSinglePayload(v9, 1, v3);
    if (result != 1)
    {
      return sub_26D189A40(v9);
    }
  }

  return result;
}

uint64_t Option.init(label:value:description:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  *a7 = a1;
  *(a7 + 1) = a2;
  v12 = type metadata accessor for Option(0, a6, a3, a4);
  result = (*(*(a6 - 8) + 32))(&a7[*(v12 + 28)], a3, a6);
  v14 = &a7[*(v12 + 32)];
  *v14 = a4;
  *(v14 + 1) = a5;
  return result;
}

void *SettingGroup.init(key:defaultValue:access:)(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  v24 = a3;
  v20 = a2;
  v19 = a1;
  v18 = *v3;
  v23 = sub_26D19BB14();
  v22 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4[2] = 0;
  v25 = type metadata accessor for SettingGroup();
  *(&v34[0] + 1) = v25;
  *&v33 = v4;

  sub_26D19BAF4();
  v21 = v6;
  sub_26D19BB04();
  sub_26D19BA04();

  while (1)
  {
    sub_26D19BA54();
    v34[0] = v31;
    v34[1] = v32;
    v33 = v30;
    if (!*(&v32 + 1))
    {
      break;
    }

    sub_26D186BA8(v34, &v29);
    sub_26D188250(0, &qword_280AF2CF0, &protocol descriptor for SettingType);
    if (swift_dynamicCast())
    {
      sub_26D1885C4(&v26, &v30);
      v7 = *(&v31 + 1);
      v8 = v32;
      __swift_project_boxed_opaque_existential_1(&v30, *(&v31 + 1));
      *(&v27 + 1) = v25;
      v28 = &off_287E90150;
      *&v26 = v4;
      v9 = *(v8 + 80);

      v9(&v26, v7, v8);
      __swift_destroy_boxed_opaque_existential_1Tm(&v26);
      __swift_destroy_boxed_opaque_existential_1Tm(&v30);
    }

    else
    {
      v28 = 0;
      v27 = 0u;
      v26 = 0u;
      sub_26D18E728(&v26);
    }
  }

  v13 = v20;
  if (v20)
  {
    v14 = v19;
  }

  else
  {
    *&v33 = 0;
    *(&v33 + 1) = 0xE000000000000000;
    sub_26D19B974();

    *&v33 = 0xD000000000000011;
    *(&v33 + 1) = 0x800000026D19D870;
    v15 = sub_26D19BB24();
    MEMORY[0x26D6B4490](v15);

    v13 = *(&v33 + 1);
    v14 = v33;
  }

  sub_26D188BDC(0, v10, v11, v12);
  swift_allocObject();
  v16 = sub_26D1896B8(v14, v13);
  (*(v22 + 8))(v21, v23);
  v4[2] = v16;

  return v4;
}

uint64_t Setting<>.init(_:defaultValue:domain:access:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, _BYTE *a5, uint64_t a6)
{
  v32 = a6;
  v29 = a1;
  v30 = a2;
  v10 = *(v6 + 88);
  v31 = type metadata accessor for Trait(0, v10, a3, a4);
  OUTLINED_FUNCTION_2();
  v12 = v11;
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v13);
  v15 = (&v29 - v14);
  OUTLINED_FUNCTION_2();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a4;
  v22 = a4[1];
  LOBYTE(a5) = *a5;
  (*(v17 + 16))(v20, a3, v10);
  v33[0] = v21;
  v33[1] = v22;
  v34 = a5;
  v23 = Setting.__allocating_init(_:defaultValue:domain:access:)(v29, v30, v20, v33, &v34);
  (*(v17 + 8))(a3, v10);
  v24 = v31;
  *v15 = v32;
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_1_0();
  v26 = *(v25 + 152);
  swift_beginAccess();
  v27 = *(v12 + 40);

  v27(v23 + v26, v15, v24);
  swift_endAccess();

  return v23;
}

uint64_t sub_26D18A370(uint64_t a1, uint64_t a2)
{
  sub_26D188ACC(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Setting.__allocating_init(_:defaultValue:domain:access:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, char *a5)
{
  v10 = swift_allocObject();
  Setting.init(_:defaultValue:domain:access:)(a1, a2, a3, a4, a5);
  return v10;
}

void SettingProperty.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_4_2();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = *v20;
  v26 = *(*v20 + 80);
  OUTLINED_FUNCTION_2();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  v31 = &a9 - v30;
  OUTLINED_FUNCTION_2_2();
  swift_getFunctionTypeMetadata1();
  v32 = sub_26D19B854();
  v20[2] = v24;
  v20[3] = v32;
  OUTLINED_FUNCTION_4_3();
  v33 = swift_allocObject();
  swift_weakInit();
  v34 = swift_allocObject();
  v34[2] = v26;
  v34[3] = *(v25 + 88);
  v34[4] = v33;

  Configurable.setting<A>(_:_:)();

  (*(v28 + 8))(v31, v26);

  OUTLINED_FUNCTION_3_3();
}

uint64_t sub_26D18A69C()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_4_3();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_26D18A6D0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_26D18A708()
{
  if (*(v0 + 16))
  {

    sub_26D18A890(v1, 2);
  }

  else
  {
    __break(1u);
  }
}

void Configurable.setting<A>(_:_:)()
{
  OUTLINED_FUNCTION_4_2();
  v17[0] = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = *v7;
  v10 = *(*v7 + 88);
  v11 = sub_26D19B934();
  OUTLINED_FUNCTION_0_5();
  v13 = v12;
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v14);
  v16 = v17 - v15;
  __swift_storeEnumTagSinglePayload(v17 - v15, 1, 1, v10);
  (*(v2 + 32))(v8, v16, v6, v4, v10, *(v9 + 96), v17[0], v2);
  (*(v13 + 8))(v16, v11);
  OUTLINED_FUNCTION_3_3();
}

uint64_t sub_26D18A890(uint64_t a1, char a2)
{
  if (a2 == 2)
  {
    v3 = *(a1 + 32);
  }

  else
  {
    v3 = a2;
  }

  swift_beginAccess();

  v5 = sub_26D186A68(v4);

  if (v5)
  {
    if (qword_280AF3258 != -1)
    {
      swift_once();
    }

    sub_26D188BDC(0, v6, v7, v8);
    v12[3] = v9;
    v12[4] = sub_26D188570(qword_280AF2D00, sub_26D188BDC);
    v12[0] = a1;
    v11[3] = MEMORY[0x277D839B0];
    LOBYTE(v11[0]) = v3 & 1;

    sub_26D1870F4(v12, v11, v13);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    if (swift_dynamicCast())
    {
      v3 = v12[0];
    }
  }

  return v3 & 1;
}

void Configurable.setting<A>(_:defaultValue:_:)()
{
  OUTLINED_FUNCTION_4_2();
  v1 = v0;
  v3 = v2;
  v29 = v4;
  v30 = v5;
  v7 = v6;
  v31 = v8;
  v27 = *v6;
  v28 = v9;
  v10 = *(v27 + 88);
  v11 = sub_26D19B934();
  OUTLINED_FUNCTION_0_5();
  v13 = v12;
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v14);
  v16 = &v26 - v15;
  swift_beginAccess();

  v18 = sub_26D186A68(v17);

  if (v18)
  {
    v19 = swift_allocBox();
    v21 = v20;
    (*(v1 + 8))(v7, v10, *(v27 + 96), v3, v1);
    if (qword_280AF3258 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_280AF3258);
    }

    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = swift_allocObject();
    v23[2] = v3;
    v23[3] = v1;
    v23[4] = v22;
    v23[5] = v7;
    v24 = v29;
    v25 = v30;
    v23[6] = v19;
    v23[7] = v24;
    v23[8] = v25;

    sub_26D18AF70(sub_26D18C0BC, v23, v32);

    __swift_project_boxed_opaque_existential_1(v32, v32[3]);
    sub_26D19B614();
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    swift_beginAccess();
    (*(*(v10 - 8) + 16))(v31, v21, v10);
  }

  else
  {
    (*(v13 + 16))(v16, v28, v11);
    if (__swift_getEnumTagSinglePayload(v16, 1, v10) == 1)
    {
      (*(*(v10 - 8) + 16))(v31, &v7[*(*v7 + 112)], v10);
      if (__swift_getEnumTagSinglePayload(v16, 1, v10) != 1)
      {
        (*(v13 + 8))(v16, v11);
      }
    }

    else
    {
      (*(*(v10 - 8) + 32))(v31, v16, v10);
    }
  }

  OUTLINED_FUNCTION_3_3();
}

uint64_t sub_26D18ADBC()
{
  MEMORY[0x26D6B4C80](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26D18ADF4()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_26D18AF70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v8 = sub_26D19B694();
  OUTLINED_FUNCTION_2();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4_0();
  v14 = v13 - v12;
  sub_26D19B6B4();
  OUTLINED_FUNCTION_2();
  v27 = v16;
  v28 = v15;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4_0();
  v19 = v18 - v17;
  v20 = type metadata accessor for SettingsStore.SettingObserver();
  swift_allocObject();

  v21 = sub_26D18B3D0(v4, a1, a2);
  if ([objc_opt_self() isMainThread])
  {
    sub_26D188E94();
    swift_beginAccess();

    MEMORY[0x26D6B4540](v22);
    sub_26D18B428(*((*(v4 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_26D19B874();
    swift_endAccess();
  }

  else
  {
    sub_26D1893E8();
    v26 = sub_26D19B914();
    OUTLINED_FUNCTION_13();
    v23 = swift_allocObject();
    *(v23 + 16) = v4;
    *(v23 + 24) = v21;
    aBlock[4] = sub_26D18D7F4;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26D189534;
    aBlock[3] = &block_descriptor_12;
    v24 = _Block_copy(aBlock);

    sub_26D19B6A4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_26D18944C(&qword_280AF3090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_26D1894DC(0);
    sub_26D18944C(&qword_280AF3080, sub_26D1894DC, MEMORY[0x277D83970]);
    sub_26D19B964();
    MEMORY[0x26D6B4660](0, v19, v14, v24);
    _Block_release(v24);

    (*(v10 + 8))(v14, v8);
    (*(v27 + 8))(v19, v28);
  }

  a3[3] = v20;
  result = sub_26D18944C(&qword_280AF2EA8, type metadata accessor for SettingsStore.SettingObserver, &unk_26D19C380);
  a3[4] = result;
  *a3 = v21;
  return result;
}

uint64_t sub_26D18B338()
{

  OUTLINED_FUNCTION_13();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t OUTLINED_FUNCTION_16()
{
}

id OUTLINED_FUNCTION_18(int a1, const char *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{

  return [a9 a2];
}

uint64_t sub_26D18B3D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  return v3;
}

uint64_t sub_26D18B428(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_26D19B844();
  }

  return result;
}

uint64_t *OUTLINED_FUNCTION_15(uint64_t a1)
{
  v1[3] = a1;

  return __swift_allocate_boxed_opaque_existential_0(v1);
}

uint64_t sub_26D18B46C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 88);
  v8 = sub_26D19B934();
  OUTLINED_FUNCTION_2();
  v10 = v9;
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v11);
  v13 = &v17 - v12;
  (*(*(v6 + 96) + 24))(a1, v7);
  if (__swift_getEnumTagSinglePayload(v13, 1, v7) != 1)
  {
    return (*(*(v7 - 8) + 32))(a2, v13, v7);
  }

  OUTLINED_FUNCTION_5();
  (*(v14 + 16))(a2, v3 + v15, v7);
  result = __swift_getEnumTagSinglePayload(v13, 1, v7);
  if (result != 1)
  {
    return (*(v10 + 8))(v13, v8);
  }

  return result;
}

uint64_t static RawRepresentable<>.convert(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v23 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_26D19B934();
  OUTLINED_FUNCTION_2();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - v11;
  OUTLINED_FUNCTION_2();
  v14 = v13;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v22 - v19;
  sub_26D187C98(a1, v24);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v12, 0, 1, AssociatedTypeWitness);
    (*(v14 + 32))(v20, v12, AssociatedTypeWitness);
    (*(v14 + 16))(v18, v20, AssociatedTypeWitness);
    sub_26D19B7F4();
    return (*(v14 + 8))(v20, AssociatedTypeWitness);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v12, 1, 1, AssociatedTypeWitness);
    (*(v9 + 8))(v12, v7);
    return __swift_storeEnumTagSinglePayload(v23, 1, 1, a2);
  }
}

uint64_t sub_26D18B8E0(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v4 = v3;
  v24 = a3;
  v25 = a2;
  v6 = *v3;
  v7 = *(*v3 + 88);
  v8 = sub_26D19B934();
  OUTLINED_FUNCTION_2();
  v23 = v9;
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - v11;
  OUTLINED_FUNCTION_2();
  v14 = v13;
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v15);
  v17 = &v22 - v16;
  swift_beginAccess();

  v19 = sub_26D186A68(v18);

  if (v19)
  {
    v26 = v4;

    swift_getWitnessTable();
    v20 = sub_26D18BC58(&v26, a1, v6);

    if (!v20)
    {
      v25(a1);
      if (__swift_getEnumTagSinglePayload(v12, 1, v7) == 1)
      {
        (*(v23 + 8))(v12, v8);
      }

      else
      {
        (*(v14 + 32))(v17, v12, v7);
        sub_26D18F1CC(v4);
        (*(v14 + 8))(v17, v7);
      }
    }
  }
}

uint64_t static String.convert(from:)(uint64_t a1)
{
  sub_26D187C98(a1, v4);
  if (OUTLINED_FUNCTION_0_1(&v3, v1))
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t Setting.migrate(from:)(uint64_t a1)
{
  if (qword_280AF3258 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_280AF3258);
  }

  v2 = qword_280AF3810;

  return sub_26D18BB68(a1, v2);
}

uint64_t sub_26D18BC30@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static String.convert(from:)(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

BOOL sub_26D18BC58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_2();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_0();
  v9 = v8 - v7;
  (*(v5 + 16))(v8 - v7);
  v10 = OUTLINED_FUNCTION_1_3();
  v11(v10);
  v18[0] = v18[1];
  v12 = sub_26D187BA4(v18);

  if (v12)
  {
    v13 = OUTLINED_FUNCTION_1_3();
    v15 = v14(v13);
    v16 = sub_26D187B08(v15);
  }

  else
  {
    v16 = 0;
  }

  (*(v5 + 8))(v9, a3);
  return v16;
}

unint64_t sub_26D18BEA0(uint64_t a1)
{
  result = sub_26D18BEC8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26D18BEC8()
{
  result = qword_280AF2BD8[0];
  if (!qword_280AF2BD8[0])
  {
    sub_26D19B5F4();
    result = swift_getWitnessTable();
    atomic_store(result, qword_280AF2BD8);
  }

  return result;
}

uint64_t Updatable.save<A>(setting:value:)(void *a1)
{
  v2 = *a1;
  if (qword_280AF3258 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_280AF3258);
  }

  v3 = qword_280AF3810;
  v12 = a1;
  v6 = v2 + 88;
  v4 = *(v2 + 88);
  v5 = *(v6 + 8);
  v7 = *(v5 + 32);

  v7(v11, v4, v5);
  v9 = type metadata accessor for Setting(0, v4, v5, v8);
  OUTLINED_FUNCTION_1_1();
  sub_26D18C38C(&v12, v11, v3, v9);
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
}

uint64_t sub_26D18C0D0(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(char *), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a5;
  v25 = a4;
  v10 = *a2;
  v11 = *(*a2 + 88);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](a1);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  v18 = swift_projectBox();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    (*(a7 + 8))(a2, v11, *(v10 + 96), a6, a7);
    swift_beginAccess();
    v23 = *(v12 + 16);
    v23(v15, v18, v11);
    v20 = sub_26D19B704();
    v21 = *(v12 + 8);
    v21(v15, v11);
    if (v20)
    {
      v21(v17, v11);
      return swift_unknownObjectRelease();
    }

    else
    {
      swift_beginAccess();
      (*(v12 + 24))(v18, v17, v11);
      swift_beginAccess();
      v23(v15, v18, v11);
      v25(v15);
      swift_unknownObjectRelease();
      v21(v15, v11);
      return (v21)(v17, v11);
    }
  }

  return result;
}

uint64_t sub_26D18C38C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_0();
  v11 = v10 - v9;
  (*(v7 + 16))(v10 - v9);
  v12 = OUTLINED_FUNCTION_1_3();
  v14 = v13(v12);
  v15 = sub_26D186A68(v14);

  if (v15)
  {
    v16 = OUTLINED_FUNCTION_1_3();
    v17(v16);
    v24[0] = v24[1];
    v18 = sub_26D187BA4(v24);

    if (v18)
    {
      __swift_project_boxed_opaque_existential_1(a2, a2[3]);
      v19 = sub_26D19BA84();
      v20 = OUTLINED_FUNCTION_1_3();
      v21(v20);
      v22 = sub_26D19B714();

      [v18 setObject:v19 forKey:v22];

      swift_unknownObjectRelease();
    }
  }

  return (*(v7 + 8))(v11, a4);
}

_BYTE *storeEnumTagSinglePayload for FeatureState(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x26D18C624);
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

uint64_t OUTLINED_FUNCTION_17()
{
}

uint64_t getEnumTagSinglePayload for Access(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

unint64_t sub_26D18C6F8()
{
  result = qword_280AF2868;
  if (!qword_280AF2868)
  {
    sub_26D18C97C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280AF2868);
  }

  return result;
}

void *sub_26D18C768(void *result, int64_t a2, char a3, uint64_t a4, unint64_t *a5, unint64_t *a6, uint64_t a7, void (*a8)(uint64_t, int64_t, void *))
{
  v12 = result;
  if ((a3 & 1) == 0)
  {
    v14 = a2;
    goto LABEL_8;
  }

  v13 = *(a4 + 24);
  v14 = v13 >> 1;
  if ((v13 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v14 + 0x4000000000000000 >= 0)
  {
    v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
    if ((v13 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v14 = a2;
    }

LABEL_8:
    v15 = *(a4 + 16);
    if (v14 <= v15)
    {
      v16 = *(a4 + 16);
    }

    else
    {
      v16 = v14;
    }

    if (v16)
    {
      sub_26D18C9CC(0, a5, a6, a7);
      v17 = swift_allocObject();
      v18 = _swift_stdlib_malloc_size(v17);
      v17[2] = v15;
      v17[3] = 2 * ((v18 - 32) / 40);
      if (v12)
      {
LABEL_13:
        a8(a4 + 32, v15, v17 + 4);
        *(a4 + 16) = 0;
LABEL_16:

        return v17;
      }
    }

    else
    {
      v17 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_26D188250(0, a6, a7);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

unint64_t sub_26D18C894(uint64_t a1)
{
  result = sub_26D18C6F8();
  *(a1 + 8) = result;
  return result;
}

uint64_t static Bool.convert(from:)(uint64_t a1)
{
  sub_26D187C98(a1, v4);
  if (OUTLINED_FUNCTION_0_1(&v3, v1))
  {
    return v3;
  }

  else
  {
    return 2;
  }
}

void *sub_26D18C908(void *a1, int64_t a2, char a3)
{
  result = sub_26D18C768(a1, a2, a3, *v3, qword_280AF30A0, qword_280AF31A8, &protocol descriptor for ConditionType, sub_26D198D40);
  *v3 = result;
  return result;
}

uint64_t sub_26D18C954@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = static Bool.convert(from:)(a1);
  *a2 = result;
  return result;
}

void sub_26D18C97C()
{
  if (!qword_280AF2870)
  {
    v0 = sub_26D19B8B4();
    if (!v1)
    {
      atomic_store(v0, &qword_280AF2870);
    }
  }
}

void sub_26D18C9CC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_26D188250(255, a3, a4);
    v5 = sub_26D19BA74();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t Array<A>.toData()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_26D18C97C();
  a2[3] = v4;
  *a2 = a1;
}

uint64_t static SettingReader.shared.getter()
{
  if (qword_280AF2FD0 != -1)
  {
    swift_once();
  }
}

uint64_t Setting<>.init(_:defaultValue:min:max:access:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  v31 = a4;
  v32 = a5;
  v30 = a2;
  v10 = *(v6 + 88);
  v11 = type metadata accessor for Trait(0, v10, a3, a4);
  OUTLINED_FUNCTION_2();
  v13 = v12;
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x28223BE20](v14);
  v16 = &v29 - v15;
  OUTLINED_FUNCTION_2();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v29 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a6) = *a6;
  (*(v18 + 16))(v21, a3, v10);
  v34 = a6;
  v33[0] = 0;
  v33[1] = 0;
  v22 = Setting.__allocating_init(_:defaultValue:domain:access:)(a1, v30, v21, v33, &v34);
  (*(v18 + 8))(a3, v10);
  v23 = *(swift_getTupleTypeMetadata2() + 48);
  v24 = *(v18 + 32);
  v24(v16, v31, v10);
  v24(&v16[v23], v32, v10);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_1_0();
  v26 = *(v25 + 152);
  swift_beginAccess();
  v27 = *(v13 + 40);

  v27(v22 + v26, v16, v11);
  swift_endAccess();

  return v22;
}

uint64_t SettingGroup.__allocating_init(key:defaultValue:access:domain:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v17 = *a4;
  v8 = *(v4 + 136);

  result = v8(a1, a2, a3, &v17);
  v10 = *(result + 16);
  if (v10)
  {
    v11 = result;

    v12 = *(v10 + 16);
    v13 = *(v10 + 24);

    sub_26D188BDC(0, v14, v15, v16);
    swift_allocObject();
    *(v11 + 16) = sub_26D1896B8(v12, v13);

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26D18CE5C(uint64_t a1, uint64_t a2)
{
  sub_26D187C98(a1, v13);
  v2 = swift_dynamicCast();
  return OUTLINED_FUNCTION_3_0(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12);
}

uint64_t Setting.__deallocating_deinit()
{
  Setting.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_26D18CF14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = static Int.convert(from:)(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

char *Setting.deinit()
{
  v1 = *v0;

  OUTLINED_FUNCTION_1_0();
  v2 = *(v1 + 88);
  OUTLINED_FUNCTION_5();
  (*(v3 + 8))(&v0[v4], v2);
  OUTLINED_FUNCTION_1_0();
  __swift_destroy_boxed_opaque_existential_1Tm(&v0[*(v5 + 120)]);
  OUTLINED_FUNCTION_1_0();

  OUTLINED_FUNCTION_1_0();

  OUTLINED_FUNCTION_1_0();
  v7 = *(v6 + 152);
  type metadata accessor for Trait(0, v2, v8, v9);
  OUTLINED_FUNCTION_6_0();
  (*(v10 + 8))(&v0[v7]);
  return v0;
}

void sub_26D18D09C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t static Array<A>.convert(from:)(uint64_t a1)
{
  sub_26D187C98(a1, v4);
  sub_26D18C97C();
  if (OUTLINED_FUNCTION_0_1(&v3, v1))
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26D18D144@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Array<A>.convert(from:)(a1);
  *a2 = result;
  return result;
}

uint64_t sub_26D18D16C(unsigned __int8 a1, char a2)
{
  v2 = 0x746C7561666564;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x64656C62616E65;
    }

    else
    {
      v4 = 0x64656C6261736964;
    }

    if (v3 == 1)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v4 = 0x746C7561666564;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x64656C62616E65;
    }

    else
    {
      v2 = 0x64656C6261736964;
    }

    if (a2 == 1)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE800000000000000;
    }
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_26D19BA94();
  }

  return v8 & 1;
}

uint64_t sub_26D18D268(uint64_t a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_1_0();
  v5 = *(v4 + 144);
  swift_beginAccess();
  sub_26D18D334();
  v6 = *(*(v1 + v5) + 16);
  sub_26D18D4DC(v6);
  v7 = *(v1 + v5);
  *(v7 + 16) = v6 + 1;
  sub_26D1868C4(a1, v7 + 40 * v6 + 32);
  *(v2 + v5) = v7;
  return swift_endAccess();
}

void *sub_26D18D334()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_26D18D398(result, v1[2] + 1, 1, v1, qword_280AF30A0, qword_280AF31A8, &protocol descriptor for ConditionType);
    *v0 = result;
  }

  return result;
}

void *sub_26D18D398(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6, uint64_t a7)
{
  v10 = result;
  if (a3)
  {
    v11 = a4[3];
    v12 = v11 >> 1;
    if ((v11 >> 1) < a2)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if ((v11 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v12 = a2;
      }
    }
  }

  else
  {
    v12 = a2;
  }

  v13 = a4[2];
  if (v12 <= v13)
  {
    v14 = a4[2];
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    sub_26D18C9CC(0, a5, a6, a7);
    v15 = swift_allocObject();
    v16 = _swift_stdlib_malloc_size(v15);
    v15[2] = v13;
    v15[3] = 2 * ((v16 - 32) / 40);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  if (v10)
  {
    if (v15 != a4 || &a4[5 * v13 + 4] <= v15 + 4)
    {
      memmove(v15 + 4, a4 + 4, 40 * v13);
    }

    a4[2] = 0;
  }

  else
  {
    sub_26D188250(0, a6, a7);
    swift_arrayInitWithCopy();
  }

  return v15;
}

void *sub_26D18D4DC(void *result)
{
  v2 = (*v1)[3];
  if (result + 1 > (v2 >> 1))
  {
    result = sub_26D18D398((v2 > 1), result + 1, 1, *v1, qword_280AF30A0, qword_280AF31A8, &protocol descriptor for ConditionType);
    *v1 = result;
  }

  return result;
}

uint64_t Configurable.isEnabled(_:with:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a4 + 8);
  v9 = sub_26D18851C();
  v8(&v11, a1, &type metadata for FeatureState, v9, a3, a4);
  if (v11)
  {
    a2 = v11 == 1;
  }

  else if (a2 == 2)
  {
    if (*(a1 + 32) && *(a1 + 32) == 1)
    {

      a2 = 1;
    }

    else
    {
      a2 = sub_26D19BA94();
    }
  }

  return a2 & 1;
}

uint64_t *Setting.migrate(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if (qword_280AF3258 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_280AF3258);
  }

  v6 = MEMORY[0x28223BE20](qword_280AF3810);
  v8[1] = *(v5 + 88);
  v9 = a1;
  v10 = a2;
  sub_26D18B8E0(v6, sub_26D1924F4, v8);
  return v2;
}

uint64_t sub_26D18D764(uint64_t a1, uint64_t a2)
{
  sub_26D188E94();
  swift_beginAccess();

  MEMORY[0x26D6B4540](v3);
  sub_26D18B428(*((*(a1 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10));
  sub_26D19B874();
  return swift_endAccess();
}

uint64_t static Double.convert(from:)(uint64_t a1)
{
  sub_26D187C98(a1, v13);
  v2 = OUTLINED_FUNCTION_0_1(&v12, v1);
  return OUTLINED_FUNCTION_3_0(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12);
}

uint64_t sub_26D18D848@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = static Double.convert(from:)(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_26D18D878()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26D18D8C0()
{
  swift_weakDestroy();
  v0 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_26D18D8F0()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_26D18D9B8()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_26D18DB70()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26D18DBA8()
{
  MEMORY[0x26D6B4C80](v0 + 16);
  OUTLINED_FUNCTION_4_3();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_26D18DBDC()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

__n128 sub_26D18DC50(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_26D18DC5C()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_2();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 40) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_26D18DD40()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26D18DDA8()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

char *sub_26D18DDEC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_7(a3, result);
  }

  return result;
}

uint64_t sub_26D18DE14@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26D1984C0();
  *a1 = result;
  return result;
}

uint64_t sub_26D18DE6C()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_26D18DEA4()
{

  OUTLINED_FUNCTION_2_3();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_26D18DEE0()
{

  OUTLINED_FUNCTION_2_3();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_26D18DF1C()
{

  switch(*(v0 + 112))
  {
    case 0:
    case 4:
    case 5:
    case 7:
    case 8:
      goto LABEL_8;
    case 1:

      goto LABEL_9;
    case 2:
    case 3:
    case 0xA:

LABEL_8:

      goto LABEL_9;
    case 6:

      break;
    case 9:

LABEL_9:

      break;
    case 0xB:
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
      break;
    default:
      break;
  }

  return MEMORY[0x2821FE8E8](v0, 114, 7);
}

uint64_t sub_26D18E054()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_26D18E08C()
{
  swift_weakDestroy();
  v0 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

uint64_t sub_26D18E0C0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void *Preset.__allocating_init(extends:apply:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

void *Preset.init(extends:apply:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

uint64_t sub_26D18E194()
{
}

uint64_t Preset.deinit()
{

  return v0;
}

uint64_t Preset.__deallocating_deinit()
{
  Preset.deinit();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_26D18E24C(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 16);
  if (v3)
  {
    v5 = result;
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    *(v6 + 24) = a2;

    v7 = sub_26D18E534(v3, 2, sub_26D18E508, v6);

    return v7 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26D18E2F4(uint64_t result)
{
  if (*(v1 + 16))
  {
    v2 = result;

    sub_26D18E34C(v3, v2 & 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_26D18E34C(void *a1, char a2)
{
  if (qword_280AF3258 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  v5 = sub_26D186A68(v4);

  if (v5)
  {
    v6 = a1[10];
    v10[0] = a1[9];
    v10[1] = v6;

    v7 = sub_26D187BA4(v10);

    if (v7)
    {
      LOBYTE(v10[0]) = a2 & 1;
      v8 = sub_26D19BAA4();
      v9 = sub_26D19B714();
      [v7 setObject:v8 forKey:v9];

      swift_unknownObjectRelease();
    }
  }
}

uint64_t SettingGroup.__allocating_init(key:defaultValue:access:)(uint64_t a1, uint64_t a2, int a3)
{
  OUTLINED_FUNCTION_1();
  v6 = swift_allocObject();
  SettingGroup.init(key:defaultValue:access:)(a1, a2, a3);
  return v6;
}

uint64_t SettingGroup.__deallocating_deinit()
{

  v0 = OUTLINED_FUNCTION_1();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_26D18E534(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();

  v9 = sub_26D186A68(v8);

  if (v9)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = sub_26D18A890(a1, 2) & 1;
    if (qword_280AF3258 != -1)
    {
      swift_once();
    }

    v11 = swift_allocObject();
    swift_weakInit();
    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = a1;
    v12[4] = v10;
    v12[5] = a3;
    v12[6] = a4;

    sub_26D18AF70(sub_26D18E8F8, v12, v14);

    __swift_project_boxed_opaque_existential_1(v14, v14[3]);
    sub_26D19B614();
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    swift_beginAccess();
    a2 = *(v10 + 16);
  }

  else if (a2 == 2)
  {
    a2 = *(a1 + 32);
  }

  return a2 & 1;
}

uint64_t sub_26D18E728(uint64_t a1)
{
  sub_26D1880EC(0, &qword_280AF2888, &qword_280AF2CF0, &protocol descriptor for SettingType, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26D18E824(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = sub_26D18A890(a2, 2) & 1;
    swift_beginAccess();
    if (v8 != *(a3 + 16))
    {
      swift_beginAccess();
      *(a3 + 16) = v8;
      v9 = v8;
      a4(&v9);
    }
  }

  return result;
}

uint64_t Access.hashValue.getter()
{
  v1 = *v0;
  sub_26D19BAC4();
  MEMORY[0x26D6B4810](v1);
  return sub_26D19BAE4();
}

uint64_t sub_26D18E99C(uint64_t a1)
{
  v2 = *v1;
  sub_26D19BAC4();
  MEMORY[0x26D6B4810](v2);
  return sub_26D19BAE4();
}

unint64_t sub_26D18E9E4()
{
  result = qword_2804DF278;
  if (!qword_2804DF278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804DF278);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Access(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_26D18EB84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = static Int64.convert(from:)(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t static Float.convert(from:)(uint64_t a1)
{
  sub_26D187C98(a1, v6);
  v2 = OUTLINED_FUNCTION_0_1(&v5, v1);
  v3 = v5;
  v6[0] = v2 ^ 1;
  if (!v2)
  {
    v3 = 0;
  }

  return v3 | ((v2 ^ 1u) << 32);
}

unint64_t sub_26D18EC34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = static Float.convert(from:)(a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t static Data.convert(from:)(uint64_t a1)
{
  sub_26D187C98(a1, v4);
  if (OUTLINED_FUNCTION_0_1(&v3, v1))
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t Data.toData()@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = MEMORY[0x277CC9318];
  *a3 = a1;
  a3[1] = a2;
  return sub_26D18ECD8(a1, a2);
}

uint64_t sub_26D18ECD8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_26D18ED34@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Data.convert(from:)(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

char sub_26D18ED6C@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  sub_26D187C98(a1, v6);
  v3 = swift_dynamicCast();
  if (v3)
  {
    LOBYTE(v3) = FeatureState.init(rawValue:)(v5);
  }

  else
  {
    *a2 = 3;
  }

  return v3;
}

uint64_t sub_26D18EDDC@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  if (result)
  {
    v2 = 0xE700000000000000;
    v3 = 0x64656C62616E65;
    if (result != 1)
    {
      v3 = 0x64656C6261736964;
      v2 = 0xE800000000000000;
    }
  }

  else
  {
    v2 = 0xE700000000000000;
    v3 = 0x746C7561666564;
  }

  a2[3] = MEMORY[0x277D837D0];
  *a2 = v3;
  a2[1] = v2;
  return result;
}

uint64_t static Date.convert(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_26D187C98(a1, v8);
  if (OUTLINED_FUNCTION_0_1(&v7, v3))
  {
    sub_26D19B5D4();
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = sub_26D19B5F4();
  return __swift_storeEnumTagSinglePayload(a2, v4, 1, v5);
}

unint64_t sub_26D18EEC4(uint64_t a1)
{
  result = sub_26D18EEEC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26D18EEEC()
{
  result = qword_280AF2860;
  if (!qword_280AF2860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280AF2860);
  }

  return result;
}

uint64_t sub_26D18EFA0()
{
  sub_26D18FFB0(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_26D18F004(void *a1)
{
  v2 = *v1;
  v3 = a1[2];
  result = sub_26D1893BC(v3);
  v5 = result;
  for (i = 0; ; ++i)
  {
    if (v5 == i)
    {
      v9 = a1[3];
      v12 = v2;
      v13 = &off_287E90460;
      v11[0] = v1;

      v9(v11);

      return __swift_destroy_boxed_opaque_existential_1Tm(v11);
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x26D6B46D0](i, v3);
      v7 = result;
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v7 = *(v3 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v8 = *(v7 + 24);
    v12 = v2;
    v13 = &off_287E90460;
    v11[0] = v1;

    v8(v11);

    result = __swift_destroy_boxed_opaque_existential_1Tm(v11);
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_26D18F19C()
{
  sub_26D18F174();
  OUTLINED_FUNCTION_13();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_26D18F1CC(uint64_t a1)
{
  v2 = v1;
  v12 = a1;
  OUTLINED_FUNCTION_10();
  v4 = *(v3 + 96);
  v5 = *(v4 + 32);
  OUTLINED_FUNCTION_10();
  v7 = *(v6 + 88);

  v5(v11, v7, v4);
  v9 = type metadata accessor for Setting(0, v7, v4, v8);
  OUTLINED_FUNCTION_7();
  swift_getWitnessTable();
  sub_26D18C38C(&v12, v11, v2, v9);
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
}

uint64_t sub_26D18F2A8(uint64_t a1)
{
  v7 = a1;
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_10();
  v5 = type metadata accessor for Setting(0, v3, *(v2 + 96), v4);

  OUTLINED_FUNCTION_7();
  swift_getWitnessTable();
  sub_26D18FE20(&v7, v1, v5);
}

unsigned __int8 *sub_26D18F384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_26D19B7A4();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_26D18F90C(result, v5);
    v36 = v35;

    v7 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_26D19B9B4();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v20 = v8 - 1;
        if (v8 != 1)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (result)
          {
            v14 = 0;
            v24 = result + 1;
            do
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v21)
              {
                if (v25 < 0x41 || v25 >= v22)
                {
                  v18 = 0;
                  if (v25 < 0x61 || v25 >= v23)
                  {
                    goto LABEL_127;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v14 * a3;
              if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v14 = v27 + (v25 + v26);
              if (__OFADD__(v27, (v25 + v26)))
              {
                goto LABEL_126;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v18 = v14;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (result)
        {
          v31 = 0;
          do
          {
            v32 = *result;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                v18 = 0;
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_127;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v31 * a3) >> 64 != (v31 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v31 = v34 + (v32 + v33);
            if (__OFADD__(v34, (v32 + v33)))
            {
              goto LABEL_126;
            }

            ++result;
            --v8;
          }

          while (v8);
          v18 = v34 + (v32 + v33);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          v14 = 0;
          v15 = result + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v13)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v14 * a3;
            if ((v14 * a3) >> 64 != (v14 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v14 = v19 - (v16 + v17);
            if (__OFSUB__(v19, (v16 + v17)))
            {
              goto LABEL_126;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
LABEL_127:

        return v18;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v37 = HIBYTE(v7) & 0xF;
  v62 = v6;
  v63 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v39 = 0;
        v55 = a3 + 48;
        v56 = a3 + 55;
        v57 = a3 + 87;
        if (a3 > 10)
        {
          v55 = 58;
        }

        else
        {
          v57 = 97;
          v56 = 65;
        }

        v58 = &v62;
        while (1)
        {
          v59 = *v58;
          if (v59 < 0x30 || v59 >= v55)
          {
            if (v59 < 0x41 || v59 >= v56)
            {
              v18 = 0;
              if (v59 < 0x61 || v59 >= v57)
              {
                goto LABEL_127;
              }

              v60 = -87;
            }

            else
            {
              v60 = -55;
            }
          }

          else
          {
            v60 = -48;
          }

          v61 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v61 + (v59 + v60);
          if (__OFADD__(v61, (v59 + v60)))
          {
            goto LABEL_126;
          }

          v58 = (v58 + 1);
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        v39 = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v62 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              v18 = 0;
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_127;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v39 = v46 - (v44 + v45);
          if (__OFSUB__(v46, (v44 + v45)))
          {
            goto LABEL_126;
          }

          ++v43;
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v39 = 0;
      v48 = a3 + 48;
      v49 = a3 + 55;
      v50 = a3 + 87;
      if (a3 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      v51 = &v62 + 1;
      do
      {
        v52 = *v51;
        if (v52 < 0x30 || v52 >= v48)
        {
          if (v52 < 0x41 || v52 >= v49)
          {
            v18 = 0;
            if (v52 < 0x61 || v52 >= v50)
            {
              goto LABEL_127;
            }

            v53 = -87;
          }

          else
          {
            v53 = -55;
          }
        }

        else
        {
          v53 = -48;
        }

        v54 = v39 * a3;
        if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v39 = v54 + (v52 + v53);
        if (__OFADD__(v54, (v52 + v53)))
        {
          goto LABEL_126;
        }

        ++v51;
        --v47;
      }

      while (v47);
LABEL_125:
      v18 = v39;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_26D18F90C(unint64_t a1, unint64_t a2)
{
  v2 = sub_26D18F978(sub_26D18F974, 0, a1, a2);
  v6 = sub_26D18F9AC(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_26D18F978(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3;
  }

  v5 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v5 = 11;
  }

  return MEMORY[0x2821FBFB0](15, v5 | (v4 << 16));
}

uint64_t sub_26D18F9AC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_26D19B944();
    if (!v9 || (v10 = v9, v11 = sub_26D18FB0C(v9, 0), v12 = sub_26D18FB94(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_26D19B734();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_26D19B734();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_26D19B9B4();
LABEL_4:

  return sub_26D19B734();
}

void *sub_26D18FB0C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  sub_26D18D09C(0, &qword_2804DF280, MEMORY[0x277D84B78], MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

unint64_t sub_26D18FB94(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_26D18FDA4(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_26D19B784();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_26D19B9B4();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_26D18FDA4(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_26D19B764();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

unint64_t sub_26D18FDA4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_26D19B794();
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
    v5 = MEMORY[0x26D6B44B0](15, a1 >> 16);
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

uint64_t sub_26D18FE20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_2();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_0();
  v9 = v8 - v7;
  (*(v5 + 16))(v8 - v7);
  v10 = OUTLINED_FUNCTION_1_3();
  v12 = v11(v10);
  v13 = sub_26D186A68(v12);

  if (v13)
  {
    v14 = OUTLINED_FUNCTION_1_3();
    v15(v14);
    v21[0] = v21[1];
    v16 = sub_26D187BA4(v21);

    if (v16)
    {
      v17 = OUTLINED_FUNCTION_1_3();
      v18(v17);
      v19 = sub_26D19B714();

      [v16 removeObjectForKey_];
    }
  }

  return (*(v5 + 8))(v9, a3);
}

uint64_t sub_26D18FFD8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_26D1900BC()
{
  v1 = *v0;
  sub_26D19BAC4();
  MEMORY[0x26D6B4810](v1);
  return sub_26D19BAE4();
}

unint64_t sub_26D190108()
{
  result = qword_2804DF288;
  if (!qword_2804DF288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804DF288);
  }

  return result;
}

unint64_t sub_26D190160()
{
  result = qword_2804DF290;
  if (!qword_2804DF290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804DF290);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11TeaSettings16SettingCellStyleO(uint64_t a1)
{
  if ((*(a1 + 80) & 0xFu) <= 0xB)
  {
    return *(a1 + 80) & 0xF;
  }

  else
  {
    return (*a1 + 12);
  }
}

uint64_t sub_26D1901E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF4 && *(a1 + 81))
  {
    return (*a1 + 244);
  }

  v3 = *(a1 + 80);
  if (v3 >= 0xD)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26D190220(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF3)
  {
    *(result + 80) = 0;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 244;
    if (a3 >= 0xF4)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF4)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = -a2;
    }
  }

  return result;
}

uint64_t sub_26D190274(uint64_t result, unsigned int a2)
{
  if (a2 > 0xB)
  {
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 12;
    LOBYTE(a2) = 12;
  }

  *(result + 80) = a2;
  return result;
}

uint64_t sub_26D1902AC(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *sub_26D190334(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t Group.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Group.footer.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void Group.visibleItems.getter()
{
  v1 = 0;
  v2 = *(v0 + 32);
  v3 = *(v2 + 16);
  v4 = v2 + 32;
  v5 = MEMORY[0x277D84F90];
  while (v3 != v1)
  {
    if (v1 >= *(v2 + 16))
    {
      __break(1u);
      return;
    }

    sub_26D1868C4(v4, &v21);
    v6 = v22;
    v7 = v23;
    __swift_project_boxed_opaque_existential_1(&v21, v22);
    if ((*(v7 + 32))(v6, v7))
    {
      sub_26D1885C4(&v21, v18);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = v5;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_26D190C54(0, *(v5 + 16) + 1, 1);
        v5 = v24;
      }

      v10 = *(v5 + 16);
      v9 = *(v5 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_26D190C54((v9 > 1), v10 + 1, 1);
      }

      v11 = v19;
      v12 = v20;
      v13 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
      MEMORY[0x28223BE20](v13);
      v15 = &v18[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v16 + 16))(v15);
      sub_26D190E34(v10, v15, &v24, v11, v12);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      v5 = v24;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm(&v21);
    }

    v4 += 40;
    ++v1;
  }
}

uint64_t Group.init(title:footer:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t Group.init(title:footer:group:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  sub_26D18C9CC(0, &qword_2804DF298, &qword_2804DF2A0, &protocol descriptor for Groupable);
  result = swift_allocObject();
  *(result + 16) = xmmword_26D19C050;
  v14 = *(a5 + 16);
  if (v14)
  {
    v15 = result;
    *&v39[0] = 0x20656C62616E45;
    *(&v39[0] + 1) = 0xE700000000000000;

    v37 = a1;
    MEMORY[0x26D6B4490](a1, a2);

    v16 = v39[0];
    sub_26D190F1C(0, v17, v18, v19);
    v21 = v20;
    v22 = swift_allocObject();
    *(v22 + 48) = 1;
    *(v22 + 56) = 1065353216;
    *(v22 + 64) = 128;
    *(v22 + 16) = v14;
    *(v22 + 24) = v16;
    *(v22 + 66) = 0;
    *(v22 + 49) = 256;
    v23 = MEMORY[0x277D84F90];
    *(v22 + 32) = *(&v16 + 1);
    *(v22 + 40) = v23;
    v15[7] = v21;
    v15[8] = &protocol witness table for Item<A>;
    v15[4] = v22;
    v43 = v15;
    v24 = *(a6 + 16);
    if (v24)
    {
      v36 = a3;
      v42 = v23;
      sub_26D190CA0(0, v24, 0);
      v25 = v42;
      v26 = a6 + 32;
      do
      {
        sub_26D1868C4(v26, v39);
        *(&v40 + 1) = sub_26D18A460;
        v41 = a5;
        v42 = v25;
        v27 = *(v25 + 16);
        v28 = *(v25 + 24);

        if (v27 >= v28 >> 1)
        {
          sub_26D190CA0((v28 > 1), v27 + 1, 1);
          v25 = v42;
        }

        *(v25 + 16) = v27 + 1;
        v29 = v25 + 56 * v27;
        v30 = v39[0];
        v31 = v39[1];
        v32 = v40;
        *(v29 + 80) = v41;
        *(v29 + 48) = v31;
        *(v29 + 64) = v32;
        *(v29 + 32) = v30;
        v26 += 40;
        --v24;
      }

      while (v24);

      v33 = a4;
      a3 = v36;
    }

    else
    {

      v25 = MEMORY[0x277D84F90];
      v33 = a4;
    }

    v34 = sub_26D19091C(v25);

    sub_26D190A48(v34);

    v35 = v43;
    *a7 = v37;
    a7[1] = a2;
    a7[2] = a3;
    a7[3] = v33;
    a7[4] = v35;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26D19091C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v12 = MEMORY[0x277D84F90];
    sub_26D190C54(0, v1, 0);
    v2 = v12;
    v4 = a1 + 32;
    do
    {
      sub_26D191010(v4, v11);
      v12 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_26D190C54((v5 > 1), v6 + 1, 1);
        v2 = v12;
      }

      v9 = &type metadata for ConditionalItem;
      v10 = &protocol witness table for ConditionalItem;
      *&v8 = swift_allocObject();
      sub_26D191010(v11, v8 + 16);
      *(v2 + 16) = v6 + 1;
      sub_26D1885C4(&v8, v2 + 40 * v6 + 32);
      sub_26D19106C(v11);
      v4 += 56;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_26D190A48(uint64_t a1)
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

  result = sub_26D190DBC(result, 1, sub_26D198AC4);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_26D188250(0, &qword_2804DF2A0, &protocol descriptor for Groupable);
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_26D190B3C(uint64_t a1)
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

  result = sub_26D190DBC(result, 1, sub_26D198BD8);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
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

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_26D190C14(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6, uint64_t a7)
{
  *(v7 + 48) = 1;
  *(v7 + 56) = 1065353216;
  *(v7 + 64) = 128;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 66) = a4 & 1;
  *(v7 + 50) = a5 & 1;
  *(v7 + 49) = a6 & 1;
  *(v7 + 32) = a3;
  *(v7 + 40) = a7;
  return v7;
}

void *sub_26D190C54(void *a1, int64_t a2, char a3)
{
  result = sub_26D18C768(a1, a2, a3, *v3, &qword_2804DF298, &qword_2804DF2A0, &protocol descriptor for Groupable, sub_26D198D40);
  *v3 = result;
  return result;
}

void *sub_26D190CA0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_26D190CC0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_26D190CC0(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_26D1910C0();
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 56);
      if (v5)
      {
LABEL_13:
        sub_26D1987B4((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_26D190DBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

uint64_t sub_26D190E34(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_26D1885C4(&v12, v10 + 40 * a1 + 32);
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

void sub_26D190F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_2804DF2A8)
  {
    v4 = type metadata accessor for Item(0, MEMORY[0x277D839B0], &protocol witness table for Bool, a4);
    if (!v5)
    {
      atomic_store(v4, &qword_2804DF2A8);
    }
  }
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26D190F88(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_26D190FC8(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

void sub_26D1910C0()
{
  if (!qword_2804DF2B0)
  {
    v0 = sub_26D19BA74();
    if (!v1)
    {
      atomic_store(v0, &qword_2804DF2B0);
    }
  }
}

uint64_t AppGroup.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_26D191144(uint64_t a1)
{
  v2 = sub_26D19B5B4();
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return AppGroup.containerURL.setter(v4);
}

uint64_t AppGroup.containerURL.setter(uint64_t a1)
{
  sub_26D188ACC(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26D19B5B4();
  (*(*(v6 - 8) + 32))(v5, a1, v6);
  __swift_storeEnumTagSinglePayload(v5, 0, 1, v6);
  v7 = OBJC_IVAR____TtC11TeaSettings8AppGroup____lazy_storage___containerURL;
  swift_beginAccess();
  sub_26D18A370(v5, v1 + v7);
  return swift_endAccess();
}

void (*AppGroup.containerURL.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = sub_26D19B5B4();
  v3[1] = v4;
  v5 = *(v4 - 8);
  v3[2] = v5;
  v6 = *(v5 + 64);
  v3[3] = __swift_coroFrameAllocStub(v6);
  v7 = __swift_coroFrameAllocStub(v6);
  v3[4] = v7;
  AppGroup.containerURL.getter(v7);
  return sub_26D1913DC;
}

void sub_26D1913DC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    AppGroup.containerURL.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    AppGroup.containerURL.setter(*(*a1 + 32));
  }

  free(v4);
  free(v3);

  free(v2);
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t AppGroup.settingsDomain.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC11TeaSettings8AppGroup_settingsDomain + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC11TeaSettings8AppGroup_settingsDomain);
  a1[1] = v2;
}

uint64_t AppGroup.__allocating_init(identifier:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  AppGroup.init(identifier:)(a1, a2);
  return v4;
}

uint64_t AppGroup.deinit()
{

  sub_26D189A40(v0 + OBJC_IVAR____TtC11TeaSettings8AppGroup____lazy_storage___containerURL);

  return v0;
}

uint64_t AppGroup.__deallocating_deinit()
{
  AppGroup.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for AppGroup(uint64_t a1)
{
  result = qword_280AF2EE8;
  if (!qword_280AF2EE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SettingReader.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t Option.description.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 32));

  return v2;
}

uint64_t sub_26D19174C(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
LABEL_26:
    if ((v6 & 0x80000000) != 0)
    {
      return __swift_getEnumTagSinglePayload((result + v7 + 16) & ~v7, v6, v4);
    }

    else
    {
      v17 = *(result + 8);
      if (v17 >= 0xFFFFFFFF)
      {
        LODWORD(v17) = -1;
      }

      return (v17 + 1);
    }
  }

  else
  {
    v9 = ((*(*(v4 - 8) + 64) + ((v7 + 16) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
    v10 = a2 - v8;
    v11 = v9 & 0xFFFFFFF8;
    if ((v9 & 0xFFFFFFF8) != 0)
    {
      v12 = 2;
    }

    else
    {
      v12 = v10 + 1;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    switch(v14)
    {
      case 1:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

LABEL_22:
        v16 = v15 - 1;
        if (v11)
        {
          v16 = 0;
          LODWORD(v11) = *result;
        }

        result = v8 + (v11 | v16) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_26D191894(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((*(*(v6 - 8) + 64) + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = a3 - v9;
    if (((*(*(v6 - 8) + 64) + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  if (a2 <= v9)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if ((v8 & 0x80000000) != 0)
          {
            v18 = &a1[v10 + 16] & ~v10;

            __swift_storeEnumTagSinglePayload(v18, a2, v8, v6);
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *a1 = a2 & 0x7FFFFFFF;
            *(a1 + 1) = 0;
          }

          else
          {
            *(a1 + 1) = (a2 - 1);
          }
        }

        break;
    }
  }

  else
  {
    if (((*(*(v6 - 8) + 64) + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((*(*(v6 - 8) + 64) + ((v10 + 16) & ~v10) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v17 = ~v9 + a2;
      bzero(a1, v11);
      *a1 = v17;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v16;
        break;
      case 2:
        *&a1[v11] = v16;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&a1[v11] = v16;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_26D191A74(uint64_t result, uint64_t *a2)
{
  v3 = *(result + 16);
  for (i = (result + 64); v3; --v3)
  {
    v5 = *i;

    sub_26D191B18(v5, a2);

    i += 5;
  }

  return result;
}

uint64_t sub_26D191B18(uint64_t result, uint64_t *a2)
{
  v2 = a2;
  v3 = 0;
  v4 = *(result + 16);
  v42 = result + 32;
  v30 = v4;
  while (v3 != v4)
  {
    v5 = v3 + 1;
    sub_26D1868C4(v42 + 40 * v3, v38);
    sub_26D188250(0, &qword_2804DF2A0, &protocol descriptor for Groupable);
    sub_26D188250(0, &qword_2804DF2B8, &protocol descriptor for Resettable);
    if (swift_dynamicCast())
    {
      v35 = v5;
      sub_26D1885C4(v36, v39);
      v6 = v40;
      v7 = v41;
      __swift_project_boxed_opaque_existential_1(v39, v40);
      v8 = (*(v7 + 8))(v6, v7);
      v9 = v8;
      v10 = v8 >> 62;
      if (v8 >> 62)
      {
        v11 = sub_26D19BA44();
      }

      else
      {
        v11 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (*v2 >> 62)
      {
        result = sub_26D19BA44();
      }

      else
      {
        result = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v12 = result + v11;
      if (__OFADD__(result, v11))
      {
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        return result;
      }

      v13 = *v2;
      result = swift_isUniquelyReferenced_nonNull_bridgeObject();
      *v2 = v13;
      if (result)
      {
        if ((v13 & 0x8000000000000000) == 0 && (v13 & 0x4000000000000000) == 0)
        {
          v14 = v13 & 0xFFFFFFFFFFFFFF8;
          if (v12 <= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_19;
          }

          goto LABEL_18;
        }
      }

      else if ((v13 & 0x8000000000000000) == 0 && (v13 & 0x4000000000000000) == 0)
      {
        goto LABEL_18;
      }

      sub_26D19BA44();
LABEL_18:
      result = sub_26D19B9A4();
      v13 = result;
      *v2 = result;
      v14 = result & 0xFFFFFFFFFFFFFF8;
LABEL_19:
      v15 = *(v14 + 16);
      v16 = (*(v14 + 24) >> 1) - v15;
      v17 = v14 + 8 * v15;
      v34 = v14;
      if (v10)
      {
        v20 = sub_26D19BA44();
        if (v20)
        {
          v21 = v20;
          result = sub_26D19BA44();
          if (v16 < result)
          {
            goto LABEL_40;
          }

          if (v21 < 1)
          {
            goto LABEL_42;
          }

          v32 = result;
          v33 = v11;
          sub_26D1920D0(0);
          sub_26D192128();
          for (i = 0; i != v21; ++i)
          {
            v23 = sub_26D19AFA4(v38, i, v9);
            v25 = *v24;

            (v23)(v38, 0);
            *(v17 + 32 + 8 * i) = v25;
          }

          v4 = v30;
          v2 = a2;
          v19 = v32;
          v11 = v33;
          goto LABEL_29;
        }
      }

      else
      {
        v18 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v18)
        {
          if (v16 < v18)
          {
            goto LABEL_40;
          }

          v19 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
          type metadata accessor for SettingAction();
          swift_arrayInitWithCopy();
LABEL_29:

          v26 = v35;
          if (v19 < v11)
          {
            goto LABEL_39;
          }

          if (v19 > 0)
          {
            v27 = *(v34 + 16);
            v28 = __OFADD__(v27, v19);
            v29 = v27 + v19;
            if (v28)
            {
              goto LABEL_41;
            }

            *(v34 + 16) = v29;
          }

          goto LABEL_34;
        }
      }

      v26 = v35;
      if (v11 > 0)
      {
        goto LABEL_39;
      }

LABEL_34:
      *v2 = v13;
      result = __swift_destroy_boxed_opaque_existential_1Tm(v39);
      v3 = v26;
    }

    else
    {
      v37 = 0;
      memset(v36, 0, sizeof(v36));
      result = sub_26D19200C(v36);
      v3 = v5;
    }
  }

  return result;
}

TeaSettings::Page __swiftcall Page.init(title:_:)(Swift::String title, Swift::OpaquePointer _)
{
  *v2 = title;
  *(v2 + 16) = _;
  result.title = title;
  result.layout = _;
  return result;
}

uint64_t Page.label.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Page.cellStyle.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = *(v1 + 16);
  *(a1 + 80) = 6;
}

uint64_t Page.reset()()
{
  v1 = *(v0 + 16);
  v3 = MEMORY[0x277D84F90];
  sub_26D191A74(v1, &v3);
  return v3;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_26D191F7C(uint64_t a1, int a2)
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

uint64_t sub_26D191FBC(uint64_t result, int a2, int a3)
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

uint64_t sub_26D19200C(uint64_t a1)
{
  sub_26D192068(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_26D192068(uint64_t a1)
{
  if (!qword_2804DF2C0)
  {
    sub_26D188250(255, &qword_2804DF2B8, &protocol descriptor for Resettable);
    v1 = sub_26D19B934();
    if (!v2)
    {
      atomic_store(v1, &qword_2804DF2C0);
    }
  }
}

void sub_26D1920D0(uint64_t a1)
{
  if (!qword_2804DF2C8)
  {
    type metadata accessor for SettingAction();
    v1 = sub_26D19B8B4();
    if (!v2)
    {
      atomic_store(v1, &qword_2804DF2C8);
    }
  }
}

unint64_t sub_26D192128()
{
  result = qword_2804DF2D0[0];
  if (!qword_2804DF2D0[0])
  {
    sub_26D1920D0(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_2804DF2D0);
  }

  return result;
}

uint64_t Updatable.reset<A>(setting:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  if (qword_280AF3258 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_280AF3258);
  }

  v6 = qword_280AF3810;
  v9 = a1;
  v7 = type metadata accessor for Setting(0, *(v5 + 88), *(v5 + 96), a4);

  OUTLINED_FUNCTION_1_1();
  sub_26D18FE20(&v9, v6, v7);
}

uint64_t sub_26D19223C(void *a1)
{
  if (qword_280AF3258 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_280AF3258);
  }

  return sub_26D18F004(a1);
}

uint64_t Updatable.apply(preset:)(void *a1)
{
  if (qword_280AF3258 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_280AF3258);
  }

  return sub_26D18F004(a1);
}

uint64_t Updatable.toggle(setting:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = MEMORY[0x277D839B0];
  (*(*(a3 + 8) + 8))(&v9, a1, MEMORY[0x277D839B0], &protocol witness table for Bool, a2);
  v8 = (v9 & 1) == 0;
  return (*(a3 + 16))(a1, &v8, v6, &protocol witness table for Bool, a2, a3);
}

uint64_t sub_26D1923DC()
{
  v1 = *v0;

  OUTLINED_FUNCTION_1_0();
  v2 = *(v1 + 88);
  OUTLINED_FUNCTION_5();
  (*(v3 + 8))(&v0[v4], v2);
  OUTLINED_FUNCTION_1_0();
  __swift_destroy_boxed_opaque_existential_1Tm(&v0[*(v5 + 120)]);
  OUTLINED_FUNCTION_1_0();

  OUTLINED_FUNCTION_1_0();

  OUTLINED_FUNCTION_1_0();
  v7 = *(v6 + 152);
  type metadata accessor for Trait(0, v2, v8, v9);
  OUTLINED_FUNCTION_6_0();
  v11 = *(v10 + 8);

  return v11(&v0[v7]);
}

uint64_t sub_26D192550(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = 8;
  if (((*(*(*(a3 + 16) - 8) + 64) + *(*(*(a3 + 16) - 8) + 80)) & ~*(*(*(a3 + 16) - 8) + 80)) + *(*(*(a3 + 16) - 8) + 64) > 8)
  {
    v3 = ((*(*(*(a3 + 16) - 8) + 64) + *(*(*(a3 + 16) - 8) + 80)) & ~*(*(*(a3 + 16) - 8) + 80)) + *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_22;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 253) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_22:
      v10 = *(a1 + v3);
      if (v10 >= 3)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_22;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    switch(v4)
    {
      case 2:
        LODWORD(v4) = *a1;
        break;
      case 3:
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v4) = *a1;
        break;
      default:
        LODWORD(v4) = *a1;
        break;
    }
  }

  return (v4 | v9) + 254;
}

void sub_26D1926B0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = ((*(*(*(a4 + 16) - 8) + 64) + *(*(*(a4 + 16) - 8) + 80)) & ~*(*(*(a4 + 16) - 8) + 80)) + *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFE)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 253) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFD)
  {
    v9 = a2 - 254;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

uint64_t static Settings.CompositionalList.useDiffableDataSource.getter()
{
  if (qword_280AF2878 != -1)
  {
    swift_once();
  }
}

uint64_t getEnumTagSinglePayload for SettingAction.PostInstruction(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for Settings.CompositionalList(_BYTE *result, int a2, int a3)
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

uint64_t sub_26D192AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a4;
  v7 = sub_26D19B694();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26D19B6B4();
  v27 = *(v11 - 8);
  v28 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a3 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  if ([objc_opt_self() isMainThread])
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      sub_26D192EC8(a1);
    }
  }

  else
  {
    sub_26D1893E8();
    v25 = v8;
    v24 = sub_26D19B914();
    (*(v15 + 16))(&v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3);
    v18 = (*(v15 + 80) + 40) & ~*(v15 + 80);
    v19 = swift_allocObject();
    v20 = v26;
    *(v19 + 2) = a3;
    *(v19 + 3) = v20;
    *(v19 + 4) = a2;
    (*(v15 + 32))(&v19[v18], &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
    aBlock[4] = sub_26D193C30;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_26D189534;
    aBlock[3] = &block_descriptor_0;
    v21 = _Block_copy(aBlock);

    sub_26D19B6A4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_26D189494(&qword_280AF3090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_26D1894DC(0);
    sub_26D189494(&qword_280AF3080, sub_26D1894DC, MEMORY[0x277D83970]);
    sub_26D19B964();
    v22 = v24;
    MEMORY[0x26D6B4660](0, v14, v10, v21);
    _Block_release(v21);

    (*(v25 + 8))(v10, v7);
    return (*(v27 + 8))(v14, v28);
  }

  return result;
}

uint64_t sub_26D192EC8(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  swift_getFunctionTypeMetadata1();

  v4 = sub_26D19B824();
  v8 = v4;
  if (v4 == sub_26D19B894())
  {
  }

  while (1)
  {
    v5 = sub_26D19B864();
    sub_26D19B834();
    if ((v5 & 1) == 0)
    {
      break;
    }

    v6 = *(v3 + 32 + 16 * v4);

    sub_26D19B8A4();
    v6(a1);

    v4 = v8;
    if (v8 == sub_26D19B894())
    {
    }
  }

  result = sub_26D19B984();
  __break(1u);
  return result;
}

uint64_t sub_26D19300C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_26D192EC8(a2);
  }

  return result;
}

uint64_t sub_26D19306C(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = &v5 - v1;
  (*(v3 + 16))(&v5 - v1);
  return SettingProperty.wrappedValue.setter(v2);
}

uint64_t SettingProperty.wrappedValue.setter(uint64_t a1)
{
  v3 = *v1;

  Updatable.save<A>(setting:value:)(v4);

  v5 = *(*(*(v3 + 80) - 8) + 8);

  return v5(a1);
}

void (*SettingProperty.wrappedValue.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  *v3 = v1;
  OUTLINED_FUNCTION_1_0();
  *(v5 + 8) = *(v4 + 80);
  OUTLINED_FUNCTION_2();
  *(v6 + 16) = v7;
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  SettingProperty.wrappedValue.getter(v10);
  return sub_26D1932D0;
}

void sub_26D1932D0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    SettingProperty.wrappedValue.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    SettingProperty.wrappedValue.setter(*(*a1 + 32));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t SettingProperty.observe(block:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_0();
  v5 = v4;
  v6 = sub_26D19B6C4();
  OUTLINED_FUNCTION_2();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_0();
  v12 = (v11 - v10);
  sub_26D1893E8();
  *v12 = sub_26D19B914();
  (*(v8 + 104))(v12, *MEMORY[0x277D85200], v6);
  v13 = sub_26D19B6D4();
  result = (*(v8 + 8))(v12, v6);
  if (v13)
  {
    v15 = swift_allocObject();
    v15[2] = *(v5 + 80);
    v15[3] = *(v5 + 88);
    v15[4] = a1;
    v15[5] = a2;
    swift_beginAccess();
    OUTLINED_FUNCTION_2_2();
    swift_getFunctionTypeMetadata1();
    sub_26D19B8B4();

    sub_26D19B884();
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void SettingProperty.observe<A>(disposeOn:block:)()
{
  OUTLINED_FUNCTION_4_2();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = *v0;
  v8 = sub_26D19B6C4();
  OUTLINED_FUNCTION_2();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4_0();
  v14 = (v13 - v12);
  sub_26D1893E8();
  *v14 = sub_26D19B914();
  (*(v10 + 104))(v14, *MEMORY[0x277D85200], v8);
  v15 = sub_26D19B6D4();
  (*(v10 + 8))(v14, v8);
  if (v15)
  {
    OUTLINED_FUNCTION_4_3();
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = swift_allocObject();
    v17[2] = *(v7 + 80);
    v17[3] = v2;
    v17[4] = *(v7 + 88);
    v17[5] = v16;
    v17[6] = v6;
    v17[7] = v4;
    swift_beginAccess();
    OUTLINED_FUNCTION_2_2();
    swift_getFunctionTypeMetadata1();
    sub_26D19B8B4();

    sub_26D19B884();
    swift_endAccess();

    OUTLINED_FUNCTION_3_3();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_26D193760(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    a3();
    return swift_unknownObjectRelease();
  }

  return result;
}

void SettingProperty.eagerObserve(block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_4_2();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  OUTLINED_FUNCTION_1_0();
  v27 = *(v26 + 80);
  OUTLINED_FUNCTION_2();
  v29 = v28;
  MEMORY[0x28223BE20](v30);
  v32 = &a9 - v31;
  v33 = sub_26D19B6C4();
  OUTLINED_FUNCTION_2();
  v35 = v34;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_4_0();
  v39 = (v38 - v37);
  sub_26D1893E8();
  *v39 = sub_26D19B914();
  (*(v35 + 104))(v39, *MEMORY[0x277D85200], v33);
  v40 = sub_26D19B6D4();
  (*(v35 + 8))(v39, v33);
  if (v40)
  {
    v41 = SettingProperty.observe(block:)(v25, v23);
    SettingProperty.wrappedValue.getter(v41);
    v25(v32);
    (*(v29 + 8))(v32, v27);
    OUTLINED_FUNCTION_3_3();
  }

  else
  {
    __break(1u);
  }
}

void SettingProperty.eagerObserve<A>(disposeOn:block:)()
{
  OUTLINED_FUNCTION_4_2();
  v20 = v0;
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_1_0();
  v21 = *(v5 + 80);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - v9;
  v11 = sub_26D19B6C4();
  OUTLINED_FUNCTION_2();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_4_0();
  v17 = (v16 - v15);
  sub_26D1893E8();
  *v17 = sub_26D19B914();
  (*(v13 + 104))(v17, *MEMORY[0x277D85200], v11);
  v18 = sub_26D19B6D4();
  (*(v13 + 8))(v17, v11);
  if (v18)
  {
    SettingProperty.observe<A>(disposeOn:block:)();
    SettingProperty.wrappedValue.getter(v19);
    v2(v4, v10);
    (*(v7 + 8))(v10, v21);
    OUTLINED_FUNCTION_3_3();
  }

  else
  {
    __break(1u);
  }
}

uint64_t SettingProperty.deinit()
{

  return v0;
}

uint64_t SettingProperty.__deallocating_deinit()
{
  SettingProperty.deinit();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t PresetApplicatorType.set<A>(_:to:)(void *a1)
{
  v2 = *a1;
  if (qword_280AF3258 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_280AF3258);
  }

  v3 = qword_280AF3810;
  v12 = a1;
  v6 = v2 + 88;
  v4 = *(v2 + 88);
  v5 = *(v6 + 8);
  v7 = *(v5 + 32);

  v7(v11, v4, v5);
  v9 = type metadata accessor for Setting(0, v4, v5, v8);
  OUTLINED_FUNCTION_1_1();
  sub_26D18C38C(&v12, v11, v3, v9);
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
}

uint64_t PresetApplicatorType.reset<A>(_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  if (qword_280AF3258 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_280AF3258);
  }

  v6 = qword_280AF3810;
  v9 = a1;
  v7 = type metadata accessor for Setting(0, *(v5 + 88), *(v5 + 96), a4);

  OUTLINED_FUNCTION_1_1();
  sub_26D18FE20(&v9, v6, v7);
}

uint64_t If.init(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;

  a3(v5);
}

uint64_t If.label.getter()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t If.cellStyle.getter()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t If.isEnabled.getter()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 24))(v1, v2) & 1;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_26D194048(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_26D194088(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t PresetItem.label.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

void *PresetItem.__allocating_init(_:label:actions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  return result;
}

void *PresetItem.init(_:label:actions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  return v4;
}

uint64_t sub_26D194188@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = 0;
  *(a1 + 8) = v2;
  *(a1 + 16) = sub_26D19423C;
  *(a1 + 24) = v1;
  *(a1 + 80) = 8;
}

uint64_t sub_26D1941DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (qword_280AF3258 != -1)
  {
    swift_once();
  }

  return sub_26D18F004(v1);
}

void *PresetItem.deinit()
{

  return v0;
}

uint64_t PresetItem.__deallocating_deinit()
{
  PresetItem.deinit();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

TeaSettings::FeatureState_optional __swiftcall FeatureState.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26D19BA64();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FeatureState.rawValue.getter()
{
  v1 = 0x64656C62616E65;
  if (*v0 != 1)
  {
    v1 = 0x64656C6261736964;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746C7561666564;
  }
}

uint64_t sub_26D19445C(uint64_t a1, unsigned __int8 a2)
{
  sub_26D19B744();
}

uint64_t sub_26D1944F0(uint64_t a1, char a2)
{
  sub_26D19BAC4();
  sub_26D19B744();

  return sub_26D19BAE4();
}

uint64_t sub_26D19459C@<X0>(uint64_t *a1@<X8>)
{
  result = FeatureState.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26D1945C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Option(319, *(a1 + 80), a3, a4);
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_26D194678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_26D1946D0(a1, a2, a3, v7);
  return v6;
}

char *sub_26D1946D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  *(v4 + 2) = a1;
  v8 = *(v7 + 104);
  v9 = type metadata accessor for Option(0, *(v7 + 80), a3, a4);
  (*(*(v9 - 8) + 32))(&v4[v8], a2, v9);
  OUTLINED_FUNCTION_1_0();
  *&v4[*(v10 + 112)] = a3;
  return v4;
}

char *sub_26D1948DC()
{
  v1 = *v0;

  OUTLINED_FUNCTION_1_0();
  v3 = *(v2 + 104);
  v6 = type metadata accessor for Option(0, *(v1 + 80), v4, v5);
  (*(*(v6 - 8) + 8))(&v0[v3], v6);
  OUTLINED_FUNCTION_1_0();

  return v0;
}

uint64_t sub_26D194984()
{
  sub_26D1948DC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_26D1949F4()
{
  OUTLINED_FUNCTION_1_0();
  v2 = *(v0 + *(v1 + 104));

  return v2;
}

uint64_t sub_26D194A38()
{
  OUTLINED_FUNCTION_1_0();
  *v2 = *(v0 + *(v1 + 112));
  *(v2 + 8) = sub_26D194C28;
  *(v2 + 16) = v0;
  *(v2 + 24) = sub_26D194C2C;
  *(v2 + 32) = v0;
  *(v2 + 80) = 1;
  swift_retain_n();
}

uint64_t sub_26D194ABC(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v4 = a2[2];
    type metadata accessor for Option(0, *(*a2 + 80), a3, a4);
    return Updatable.save<A>(setting:value:)(v4);
  }

  return result;
}

BOOL sub_26D194B48()
{
  swift_beginAccess();

  v1 = sub_26D186A68(v0);

  return v1;
}

uint64_t Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, char *a5, uint64_t a6)
{
  v6 = *a5;
  v9 = *a4;
  v8 = v6;
  return sub_26D1952CC(a1, a2, a3, 0, &v9, &v8, a6);
}

uint64_t sub_26D194C74(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x28223BE20](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = sub_26D19B8D4();
  if (!v19)
  {
    return sub_26D19B854();
  }

  v41 = v19;
  v45 = sub_26D19B9E4();
  v32 = sub_26D19B9F4();
  sub_26D19B9C4();
  result = sub_26D19B8C4();
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
      v22 = sub_26D19B8F4();
      v23 = v14;
      v24 = v14;
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
      sub_26D19B9D4();
      result = sub_26D19B8E4();
      ++v21;
      v14 = v24;
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

uint64_t Item.ResetBehavior.hashValue.getter()
{
  v1 = *v0;
  sub_26D19BAC4();
  MEMORY[0x26D6B4810](v1);
  return sub_26D19BAE4();
}

uint64_t sub_26D195130(uint64_t a1)
{
  sub_26D19BAC4();
  Item.ResetBehavior.hash(into:)();
  return sub_26D19BAE4();
}

uint64_t Item.label.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

void sub_26D1951B4(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  *a1 = *(v1 + 56);
  *(a1 + 8) = v2;
}

uint64_t sub_26D195208(char a1)
{
  sub_26D19BAC4();
  MEMORY[0x26D6B4810](a1 & 1);
  return sub_26D19BAE4();
}

uint64_t sub_26D195284(uint64_t a1)
{
  sub_26D19BAC4();
  sub_26D1951E0(v3, *v1);
  return sub_26D19BAE4();
}

uint64_t sub_26D1952CC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char *a5, char *a6, uint64_t a7)
{
  result = swift_allocObject();
  v15 = *a5;
  v16 = *a6;
  *(result + 48) = 1;
  *(result + 56) = 1065353216;
  *(result + 64) = 128;
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 66) = a4 & 1;
  *(result + 50) = v15;
  *(result + 49) = v16;
  *(result + 32) = a3;
  *(result + 40) = a7;
  return result;
}

void sub_26D195364(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = *(*v3 + 80);
  v8 = type metadata accessor for Trait(0, v7, a1, a2);
  OUTLINED_FUNCTION_2();
  v100 = v9;
  MEMORY[0x28223BE20](v10);
  v12 = (&v99 - v11);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v13);
  v14 = v3[2];
  sub_26D18AE44();
  switch(HIBYTE(v108))
  {
    case 1:
      v37 = OUTLINED_FUNCTION_3_4();
      v41 = type metadata accessor for Item(v37, v38, v39, v40);
      OUTLINED_FUNCTION_8_0(v41, v41, &protocol witness table for Item<A>, v42, v43, v44, v45, v46, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110);
      v47 = OUTLINED_FUNCTION_0_6();
      v48(v47);
      v49 = OUTLINED_FUNCTION_6_1();
      v50(v49);
      v51 = OUTLINED_FUNCTION_1_4();
      sub_26D18D09C(v51, v52, v53, v54);
      if (!OUTLINED_FUNCTION_4_4())
      {
        goto LABEL_11;
      }

      v55 = v3[5];
      *a3 = v102;
      *(a3 + 8) = v55;
      *(a3 + 16) = sub_26D1975B0;
      *(a3 + 24) = v4;
      *(a3 + 80) = 10;

      return;
    case 2:
      v56 = OUTLINED_FUNCTION_3_4();
      v60 = type metadata accessor for Item(v56, v57, v58, v59);
      OUTLINED_FUNCTION_8_0(v60, v60, &protocol witness table for Item<A>, v61, v62, v63, v64, v65, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110);
      v66 = OUTLINED_FUNCTION_0_6();
      v67(v66);
      v68 = OUTLINED_FUNCTION_6_1();
      v69(v68);
      if (!OUTLINED_FUNCTION_4_4())
      {
        goto LABEL_11;
      }

      v70 = v3[5];
      *a3 = v102;
      *(a3 + 8) = v70;
      *(a3 + 16) = sub_26D1976E8;
      *(a3 + 24) = v3;
      *(a3 + 80) = 0;

      return;
    case 3:
      v34 = MEMORY[0x277D83B88];
      v35 = sub_26D198204;
      v36 = sub_26D19822C;
      goto LABEL_16;
    case 4:
      v34 = MEMORY[0x277D84A28];
      v35 = sub_26D198204;
      v36 = sub_26D19822C;
      goto LABEL_16;
    case 5:
      v34 = MEMORY[0x277D83A90];
      v35 = sub_26D197588;
      v36 = sub_26D197590;
      goto LABEL_16;
    case 6:
      v34 = MEMORY[0x277D839F8];
      v35 = sub_26D197570;
      v36 = sub_26D19757C;
LABEL_16:

      sub_26D196708(v35, 0, v36, 0, v34, a3);
      return;
    case 7:
      goto LABEL_11;
    default:
      v15 = *(v6 + 88);
      v16 = OUTLINED_FUNCTION_3_4();
      v20 = type metadata accessor for Item(v16, v17, v18, v19);
      OUTLINED_FUNCTION_8_0(v20, v20, &protocol witness table for Item<A>, v21, v22, v23, v24, v25, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110);
      v26 = OUTLINED_FUNCTION_0_6();
      v27(v26);
      v28 = OUTLINED_FUNCTION_6_1();
      v29(v28);
      if (OUTLINED_FUNCTION_4_4())
      {
        v31 = v102;
        v30 = v103;
        v32 = *(*v14 + 152);
        swift_beginAccess();
        (*(v100 + 16))(v12, v14 + v32, v8);
        if (swift_getEnumCaseMultiPayload())
        {
          if (*(v4 + 66))
          {

            v33 = OUTLINED_FUNCTION_5_0();
            (*(v100 + 8))(v12, v8, v33);
          }

          else
          {
            v94 = *(v4 + 65);
            v95 = *(v4 + 40);
            *a3 = v31;
            *(a3 + 8) = v30;
            *(a3 + 16) = v95;
            v96 = (v100 + 8);
            if (v94 == 1)
            {
              *(a3 + 24) = sub_26D1975C0;
              *(a3 + 32) = v4;
              v97 = 3;
            }

            else
            {
              *(a3 + 24) = sub_26D1975B8;
              *(a3 + 32) = v4;
              v97 = 2;
            }

            *(a3 + 80) = v97;
            v98 = *v96;

            v98(v12, v8);
          }
        }

        else
        {

          v102 = *v12;
          v71 = v102;
          type metadata accessor for Option(255, v7, v72, v73);
          v74 = sub_26D19B8B4();
          v75 = OUTLINED_FUNCTION_3_4();
          v79 = type metadata accessor for OptionItem(v75, v76, v77, v78);
          v100 = v79;
          WitnessTable = swift_getWitnessTable();
          v99 = sub_26D194C74(sub_26D1975C8, v4, v74, v79, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v81);
          v102 = v71;
          MEMORY[0x28223BE20](v99);
          *(&v99 - 2) = v7;
          *(&v99 - 1) = v15;
          swift_getWitnessTable();
          v82 = MEMORY[0x277D837D0];
          v83 = sub_26D19B7C4();

          v102 = v83;
          v84 = OUTLINED_FUNCTION_1_4();
          sub_26D18D09C(v84, v85, v82, v86);
          sub_26D197604();
          v87 = sub_26D19B6F4();
          v89 = v88;

          sub_26D18D09C(0, &qword_2804DF360, &type metadata for Group, MEMORY[0x277D84560]);
          v90 = swift_allocObject();
          *(v90 + 16) = xmmword_26D19C050;
          sub_26D197680();
          v91 = v99;
          v92 = sub_26D19BA14();
          *(v90 + 32) = 0;
          *(v90 + 40) = 0;
          *(v90 + 48) = v87;
          *(v90 + 56) = v89;
          *(v90 + 64) = v92;
          v93 = swift_allocObject();
          v93[2] = v7;
          v93[3] = v15;
          v93[4] = v91;
          *a3 = v90;
          *(a3 + 8) = sub_26D1976DC;
          *(a3 + 16) = v93;
          *(a3 + 80) = 7;
        }
      }

      else
      {
LABEL_11:
        OUTLINED_FUNCTION_5_0();
      }

      return;
  }
}

uint64_t sub_26D195AA4@<X0>(char a1@<W0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  v21 = a3;
  v5 = *a2;
  v6 = *(*a2 + 80);
  v7 = sub_26D19B934();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v13 = *(v6 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v20 - v14;
  v22[3] = MEMORY[0x277D839B0];
  LOBYTE(v22[0]) = a1;
  v16 = *(v5 + 88);
  (*(v16 + 24))(v22, v6, v16);
  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v6);
    (*(v13 + 32))(v15, v11, v6);
    v17 = a2[2];
    type metadata accessor for Item(0, v6, v16, v18);
    Updatable.save<A>(setting:value:)(v17);
    result = (*(v13 + 8))(v15, v6);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v6);
    result = (*(v8 + 8))(v11, v7);
  }

  *v21 = *(a2 + 50);
  return result;
}

uint64_t sub_26D195D38@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v8 = *a2;
  v9 = *(*a2 + 80);
  v10 = type metadata accessor for Option(0, v9, a3, a4);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v17 - v12;
  type metadata accessor for OptionItem(0, v9, *(v8 + 88), v14);
  v15 = a2[2];
  (*(v11 + 16))(v13, a1, v10);
  *a5 = sub_26D194678(v15, v13, a2[5]);
}

uint64_t sub_26D195E8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = (a1 + *(type metadata accessor for Option(0, a2, a3, a4) + 32));
  result = *v6;
  if (v6[1])
  {
    MEMORY[0x26D6B4490](result);
    result = 547520738;
    v8 = 0xA400000000000000;
  }

  else
  {
    v8 = 0;
  }

  *a5 = result;
  a5[1] = v8;
  return result;
}

void *sub_26D195F08@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v6 = type metadata accessor for OptionItem(255, a2, a3, a4);
  sub_26D19B8B4();
  swift_getWitnessTable();
  result = sub_26D19B7D4();
  if (v9)
  {
    v8 = &off_287E90FA8;
  }

  else
  {
    v6 = 0;
    v8 = 0;
    a5[1] = 0;
    a5[2] = 0;
  }

  *a5 = v9;
  a5[3] = v6;
  a5[4] = v8;
  return result;
}

uint64_t sub_26D195FD0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *a3;
  v7 = *(*a3 + 80);
  v8 = sub_26D19B934();
  v21 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v22 = *(v7 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v21 - v13;
  v23[3] = MEMORY[0x277D837D0];
  v23[0] = a1;
  v23[1] = a2;
  v15 = *(v6 + 88);
  v16 = *(v15 + 24);

  v16(v23, v7, v15);
  __swift_destroy_boxed_opaque_existential_1Tm(v23);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v7);
    v17 = v22;
    (*(v22 + 32))(v14, v11, v7);
    v18 = a3[2];
    type metadata accessor for Item(0, v7, v15, v19);
    Updatable.save<A>(setting:value:)(v18);
    return (*(v17 + 8))(v14, v7);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v7);
    return (*(v21 + 8))(v11, v8);
  }
}

uint64_t sub_26D196268(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *a3;
  v7 = *(*a3 + 80);
  v21 = sub_26D19B934();
  v8 = *(v21 - 8);
  v9 = MEMORY[0x28223BE20](v21);
  v11 = &v20 - v10;
  v12 = *(v7 - 8);
  MEMORY[0x28223BE20](v9);
  v14 = &v20 - v13;
  v22[3] = MEMORY[0x277D837D0];
  v22[0] = a1;
  v22[1] = a2;
  v15 = *(v6 + 88);
  v16 = *(v15 + 24);

  v16(v22, v7, v15);
  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  if (__swift_getEnumTagSinglePayload(v11, 1, v7) == 1)
  {
    return (*(v8 + 8))(v11, v21);
  }

  (*(v12 + 32))(v14, v11, v7);
  v18 = a3[2];
  type metadata accessor for Item(0, v7, v15, v19);
  Updatable.save<A>(setting:value:)(v18);
  return (*(v12 + 8))(v14, v7);
}

uint64_t sub_26D1964A8(uint64_t a1, void *a2)
{
  v4 = *a2;
  v5 = *(*a2 + 80);
  v20 = sub_26D19B934();
  v6 = *(v20 - 8);
  v7 = MEMORY[0x28223BE20](v20);
  v9 = &v19 - v8;
  v10 = *(v5 - 8);
  MEMORY[0x28223BE20](v7);
  v12 = &v19 - v11;
  sub_26D18D09C(0, &qword_280AF2870, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  v21[3] = v13;
  v21[0] = a1;
  v14 = *(v4 + 88);
  v15 = *(v14 + 24);

  v15(v21, v5, v14);
  __swift_destroy_boxed_opaque_existential_1Tm(v21);
  if (__swift_getEnumTagSinglePayload(v9, 1, v5) == 1)
  {
    return (*(v6 + 8))(v9, v20);
  }

  (*(v10 + 32))(v12, v9, v5);
  v17 = a2[2];
  type metadata accessor for Item(0, v5, v14, v18);
  Updatable.save<A>(setting:value:)(v17);
  return (*(v10 + 8))(v12, v5);
}

void *sub_26D196708@<X0>(float (*a1)(void)@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v151 = a4;
  v150 = a3;
  v148 = a2;
  v149 = a1;
  v163 = a6;
  v8 = *v6;
  v9 = *(*v6 + 80);
  v10 = type metadata accessor for Trait(0, v9, a2, a3);
  v158 = *(v10 - 8);
  v159 = v10;
  MEMORY[0x28223BE20](v10);
  v157 = &v139 - v11;
  v12 = sub_26D19B934();
  v161 = *(v12 - 8);
  v162 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v144 = &v139 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v147 = &v139 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v139 - v18;
  v20 = *(v9 - 8);
  v21 = MEMORY[0x28223BE20](v17);
  v153 = &v139 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v154 = &v139 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v139 - v26;
  v156 = *(a5 - 8);
  v28 = MEMORY[0x28223BE20](v25);
  v143 = &v139 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v145 = &v139 - v31;
  MEMORY[0x28223BE20](v30);
  v33 = &v139 - v32;
  v34 = v6[2];
  v35 = *(v8 + 88);
  v37 = type metadata accessor for Item(0, v9, v35, v36);
  v160 = v6;
  Configurable.setting<A>(_:)(v34, v37, &protocol witness table for Item<A>, v38, v39, v40, v41, v42, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150);
  v43 = *(v35 + 32);
  v155 = v35;
  v146 = v43;
  v43(v164, v9, v35);
  v152 = v20;
  v45 = (v20 + 8);
  v44 = *(v20 + 8);
  v46 = v27;
  v47 = v9;
  v44(v46, v9);
  if (!swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v19, 1, 1, a5);
    result = (*(v161 + 8))(v19, v162);
    goto LABEL_10;
  }

  v142 = v44;
  __swift_storeEnumTagSinglePayload(v19, 0, 1, a5);
  v48 = v156;
  v49 = v19;
  v50 = *(v156 + 32);
  v141 = v156 + 32;
  v50(v33, v49, a5);
  v51 = *(*v34 + 152);
  swift_beginAccess();
  v52 = v157;
  (*(v158 + 16))(v157, v34 + v51, v159);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v54 = v48;
  v55 = v33;
  if (!EnumCaseMultiPayload)
  {
    v162 = &v139;
    v164[0] = *v52;
    MEMORY[0x28223BE20](EnumCaseMultiPayload);
    v63 = v160;
    *(&v139 - 2) = a5;
    *(&v139 - 1) = v63;
    v159 = v64;
    v65 = v47;
    type metadata accessor for Option(255, v47, v66, v67);
    v68 = sub_26D19B8B4();
    v69 = v155;
    v71 = type metadata accessor for OptionItem(0, v47, v155, v70);
    WitnessTable = swift_getWitnessTable();
    v74 = sub_26D194C74(sub_26D1981A8, (&v139 - 4), v68, v71, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v73);

    sub_26D18D09C(0, &qword_2804DF360, &type metadata for Group, MEMORY[0x277D84560]);
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_26D19C050;
    sub_26D197680();
    v76 = sub_26D19BA14();
    *(v75 + 32) = 0u;
    *(v75 + 48) = 0u;
    *(v75 + 64) = v76;
    (*(v54 + 8))(v159, a5);
    result = swift_allocObject();
    result[2] = v65;
    result[3] = a5;
    result[4] = v69;
    result[5] = v74;
    v77 = v163;
    *v163 = v75;
    v77[1] = sub_26D1981C8;
    v77[2] = result;
    *(v77 + 80) = 7;
    return result;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v78 = v160;
    if (*(v160 + 66))
    {
      result = (*(v48 + 8))(v33, a5);
      goto LABEL_10;
    }

    v109 = v160[7];
    v110 = *(v160 + 64);
    v111 = v163;
    if (v110 < 0)
    {
      v121 = v55;
      v122 = v149();
      (*(v54 + 8))(v121, a5);
      v123 = v78[5];
      v124 = swift_allocObject();
      v125 = v150;
      v124[2] = a5;
      v124[3] = v125;
      v124[4] = v151;
      v124[5] = v78;
      *v111 = v122;
      *(v111 + 1) = v109;
      v111[1] = 0x7F7FFFFF00000000;
      v111[2] = v123;
      v111[3] = sub_26D198208;
      v111[4] = v124;
      v118 = 4;
    }

    else
    {
      v112 = v55;
      v113 = v149();
      (*(v54 + 8))(v112, a5);
      v114 = v110 & 1;
      if (v110)
      {
        v109 = 0;
      }

      v115 = v78[5];
      v116 = swift_allocObject();
      v117 = v150;
      v116[2] = a5;
      v116[3] = v117;
      v116[4] = v151;
      v116[5] = v78;
      LOBYTE(v164[0]) = v114;
      *v111 = v113;
      v111[1] = v109;
      *(v111 + 16) = v114;
      *(v111 + 20) = 0x7F7FFFFF00000000;
      v111[4] = v115;
      v111[5] = sub_26D198208;
      v111[6] = v116;
      v118 = 5;
    }

    *(v111 + 80) = v118;

    goto LABEL_25;
  }

  v140 = v50;
  v158 = a5;
  v159 = v33;
  v56 = *(swift_getTupleTypeMetadata2() + 48);
  v57 = v47;
  v58 = *(v152 + 32);
  v59 = v154;
  v58(v154, v52, v57);
  v60 = v153;
  v58(v153, (v52 + v56), v57);
  if (*(v160 + 66))
  {
    v61 = v142;
    v142(v60, v57);
    v61(v59, v57);
    result = (*(v48 + 8))(v159, v158);
LABEL_10:
    v79 = 0uLL;
    v80 = v163;
LABEL_11:
    *(v80 + 3) = v79;
    *(v80 + 4) = v79;
    *(v80 + 1) = v79;
    *(v80 + 2) = v79;
    *v80 = v79;
    *(v80 + 80) = 12;
    return result;
  }

  v81 = v155;
  v82 = v146;
  v146(v164, v57, v155);
  v83 = v147;
  v84 = v158;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v119 = v83;
    v120 = v142;
    v142(v60, v57);
    v120(v59, v57);
    (*(v54 + 8))(v159, v84);
    __swift_storeEnumTagSinglePayload(v119, 1, 1, v84);
    result = (*(v161 + 8))(v119, v162);
LABEL_27:
    v80 = v163;
    v79 = 0uLL;
    goto LABEL_11;
  }

  v157 = v45;
  __swift_storeEnumTagSinglePayload(v83, 0, 1, v84);
  v85 = v145;
  v140(v145, v83, v84);
  v82(v164, v57, v81);
  v86 = v144;
  v87 = swift_dynamicCast();
  v88 = v60;
  v90 = v161;
  v89 = v162;
  if ((v87 & 1) == 0)
  {
    v126 = *(v54 + 8);
    v126(v85, v84);
    v127 = v142;
    v142(v88, v57);
    v127(v154, v57);
    v126(v159, v84);
    __swift_storeEnumTagSinglePayload(v86, 1, 1, v84);
    result = (*(v90 + 8))(v86, v89);
    goto LABEL_27;
  }

  v161 = v57;
  v91 = v159;
  v92 = v54;
  __swift_storeEnumTagSinglePayload(v86, 0, 1, v84);
  v93 = v143;
  v140(v143, v86, v84);
  v94 = v160;
  v162 = v160[7];
  v95 = *(v160 + 64);
  v96 = v163;
  if ((v95 & 0x80000000) == 0)
  {
    v97 = v149;
    v98 = (v149)(v91);
    LODWORD(v155) = v95 & 1;
    v99 = v162;
    if (v95)
    {
      v99 = 0;
    }

    v162 = v99;
    v100 = v145;
    v101 = (v97)(v145);
    v102 = (v97)(v93);
    v103 = *(v92 + 8);
    v103(v93, v84);
    v103(v100, v84);
    v104 = v161;
    v105 = v142;
    v142(v153, v161);
    v105(v154, v104);
    v103(v91, v84);
    v106 = v94[5];
    v107 = swift_allocObject();
    v108 = v150;
    v107[2] = v84;
    v107[3] = v108;
    v107[4] = v151;
    v107[5] = v94;
    LOBYTE(v108) = v155;
    LOBYTE(v164[0]) = v155;
    *v96 = v98;
    v96[1] = v162;
    *(v96 + 16) = v108;
    *(v96 + 5) = v101;
    *(v96 + 6) = v102;
    v96[4] = v106;
    v96[5] = sub_26D198208;
    v96[6] = v107;
    *(v96 + 80) = 5;

LABEL_25:
  }

  v128 = v149;
  v129 = (v149)(v91);
  v130 = v145;
  v131 = (v128)(v145);
  v132 = (v128)(v93);
  v133 = *(v54 + 8);
  v133(v93, v84);
  v133(v130, v84);
  v134 = v161;
  v135 = v142;
  v142(v153, v161);
  v135(v154, v134);
  v133(v91, v84);
  v136 = v94[5];
  v137 = swift_allocObject();
  v138 = v150;
  v137[2] = v84;
  v137[3] = v138;
  v137[4] = v151;
  v137[5] = v94;
  *v96 = v129;
  *(v96 + 1) = v162;
  *(v96 + 2) = v131;
  *(v96 + 3) = v132;
  v96[2] = v136;
  v96[3] = sub_26D198188;
  v96[4] = v137;
  *(v96 + 80) = 4;
}

void sub_26D197528(void *a1@<X8>, float a2@<S0>)
{
  if ((LODWORD(a2) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (a2 <= -9.2234e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (a2 < 9.2234e18)
  {
    *a1 = a2;
    return;
  }

LABEL_7:
  __break(1u);
}

double sub_26D19757C@<D0>(double *a1@<X8>, float a2@<S0>)
{
  result = a2;
  *a1 = result;
  return result;
}

unint64_t sub_26D197604()
{
  result = qword_2804DF358;
  if (!qword_2804DF358)
  {
    sub_26D18D09C(255, &qword_280AF2870, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804DF358);
  }

  return result;
}

unint64_t sub_26D197680()
{
  result = qword_2804DF2A0;
  if (!qword_2804DF2A0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2804DF2A0);
  }

  return result;
}

void *Item.deinit()
{

  return v0;
}

uint64_t Item.__deallocating_deinit()
{
  Item.deinit();

  return MEMORY[0x2821FE8D8](v0, 67, 7);
}

uint64_t Item.reset()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + 49))
  {
    return MEMORY[0x277D84F90];
  }

  v6 = *(v4 + 16);
  v7 = type metadata accessor for Item(0, *(*v4 + 80), *(*v4 + 88), a4);
  Updatable.reset<A>(setting:)(v6, v7, &protocol witness table for Item<A>, v8);
}

uint64_t Item<>.init(_:label:resetBehavior:type:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t *a5)
{
  v5 = *a5;
  v6 = *(a5 + 8);
  v9 = *a4;
  v8 = 0;
  result = Item.__allocating_init(_:label:changeBehavior:resetBehavior:actions:)(a1, a2, a3, &v8, &v9, MEMORY[0x277D84F90]);
  *(result + 56) = v5;
  *(result + 64) = v6;
  return result;
}

uint64_t Item<>.init(_:label:resetBehavior:actions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_26D19796C(0, a2, a3, a4);
  swift_allocObject();
  return sub_26D191110();
}

void sub_26D19796C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_2804DF368[0])
  {
    v4 = type metadata accessor for Item(0, MEMORY[0x277D837D0], &protocol witness table for String, a4);
    if (!v5)
    {
      atomic_store(v4, qword_2804DF368);
    }
  }
}

uint64_t Item<>.init(_:label:secure:changeBehavior:resetBehavior:actions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  sub_26D19796C(0, a2, a3, a4);
  swift_allocObject();
  result = sub_26D191110();
  *(result + 65) = v4;
  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_26D197B54(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7F && *(a1 + 9))
    {
      v2 = *a1 + 126;
    }

    else
    {
      v2 = (*(a1 + 8) & 0x7E | (*(a1 + 8) >> 7)) ^ 0x7F;
      if (v2 >= 0x7E)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_26D197B9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 8) = 0;
    *result = a2 - 127;
    if (a3 >= 0x7F)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

uint64_t sub_26D197C38(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26D197C58(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_26D197C88(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26D197CA4(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 8) = v2;
  return result;
}

_BYTE *sub_26D197CDC(_BYTE *result, unsigned int a2, unsigned int a3)
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

void *sub_26D197DDC@<X0>(uint64_t a2@<X1>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v6 = type metadata accessor for OptionItem(255, a2, a4, a4);
  sub_26D19B8B4();
  swift_getWitnessTable();
  result = sub_26D19B7D4();
  if (v9)
  {
    v8 = &off_287E90FA8;
  }

  else
  {
    v6 = 0;
    v8 = 0;
    a5[1] = 0;
    a5[2] = 0;
  }

  *a5 = v9;
  a5[3] = v6;
  a5[4] = v8;
  return result;
}

uint64_t sub_26D197EAC(void (*a1)(float), uint64_t a2, void *a3, uint64_t a4, float a5)
{
  v26[1] = a2;
  v9 = *a3;
  v10 = *(*a3 + 80);
  v11 = sub_26D19B934();
  OUTLINED_FUNCTION_2();
  v26[0] = v12;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  v21 = v26 - v20;
  v27[3] = a4;
  __swift_allocate_boxed_opaque_existential_0(v27);
  a1(a5);
  v22 = *(v9 + 88);
  (*(v22 + 24))(v27, v10, v22);
  __swift_destroy_boxed_opaque_existential_1Tm(v27);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v16, 0, 1, v10);
    (*(v18 + 32))(v21, v16, v10);
    v23 = a3[2];
    type metadata accessor for Item(0, v10, v22, v24);
    Updatable.save<A>(setting:value:)(v23);
    return (*(v18 + 8))(v21, v10);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v16, 1, 1, v10);
    return (*(v26[0] + 8))(v16, v11);
  }
}

uint64_t objectdestroy_24Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26D198240(uint64_t a1)
{
  type metadata accessor for SettingAction();
  v1 = swift_allocObject();
  v2 = MEMORY[0x277D84F90];
  v1[2] = 0x7070615F6C6C696BLL;
  v1[3] = 0xE800000000000000;
  v1[5] = 0;
  v1[6] = 0;
  v1[4] = v2;
  sub_26D198620();

  qword_2804DF5F0 = v1;
  return result;
}

void *SettingAction.__allocating_init(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  v9 = MEMORY[0x277D84F90];
  result[2] = a1;
  result[3] = a2;
  result[4] = v9;
  result[5] = a3;
  result[6] = a4;
  return result;
}

uint64_t static SettingActions.restart.getter()
{
  if (qword_2804DF270 != -1)
  {
    swift_once();
  }
}

uint64_t SettingAction.PostInstruction.hashValue.getter()
{
  sub_26D19BAC4();
  MEMORY[0x26D6B4810](0);
  return sub_26D19BAE4();
}

uint64_t sub_26D198424(uint64_t a1)
{
  sub_26D19BAC4();
  MEMORY[0x26D6B4810](0);
  return sub_26D19BAE4();
}

uint64_t SettingAction.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_26D1984F8(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
}

void *SettingAction.init(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x277D84F90];
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = v5;
  v4[5] = a3;
  v4[6] = a4;
  return v4;
}

uint64_t sub_26D1985B0()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    if (qword_280AF3258 != -1)
    {
      swift_once();
    }

    return v1(qword_280AF3810, &off_287E90478);
  }

  return result;
}

uint64_t sub_26D198620()
{
  swift_beginAccess();
  sub_26D1987DC();
  v1 = *(*(v0 + 32) + 16);
  sub_26D198828(v1);
  v2 = *(v0 + 32);
  *(v2 + 16) = v1 + 1;
  *(v0 + 32) = v2;
  swift_endAccess();
}

uint64_t sub_26D1986A0()
{

  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return sub_26D198868(v1, v2);
}

void *SettingAction.deinit()
{

  sub_26D198868(*(v0 + 40), *(v0 + 48));
  return v0;
}

uint64_t SettingAction.__deallocating_deinit()
{
  SettingAction.deinit();

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t static SettingAction.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_26D19BA94();
  }
}

char *sub_26D1987B4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[56 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_7(a3, result);
  }

  return result;
}

char *sub_26D1987DC()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_26D198AE0(result, *(v1 + 2) + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

char *sub_26D198828(char *result)
{
  v2 = *(*v1 + 3);
  if ((result + 1) > (v2 >> 1))
  {
    result = sub_26D198AE0((v2 > 1), (result + 1), 1, *v1);
    *v1 = result;
  }

  return result;
}

uint64_t sub_26D198868(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_26D19887C()
{
  result = qword_2804DF5F8;
  if (!qword_2804DF5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804DF5F8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SettingAction.PostInstruction(_BYTE *result, int a2, int a3)
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

char *sub_26D198AE0(char *result, int64_t a2, char a3, char *a4)
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
    sub_26D198CF4(0, &qword_2804DF600, &type metadata for SettingAction.PostInstruction);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_26D198BD8(char *result, int64_t a2, char a3, char *a4)
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
    sub_26D198CF4(0, &qword_2804DF360, &type metadata for Group);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[40 * v8] <= v12)
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_26D198CF4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_26D19BA74();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t PresetManager.__allocating_init()()
{
  v0 = swift_allocObject();
  PresetManager.init()();
  return v0;
}

Swift::Void __swiftcall PresetManager.register(_:presets:)(Swift::String _, Swift::OpaquePointer presets)
{
  object = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v2 + 32);
  sub_26D199040(presets._rawValue, countAndFlagsBits, object, isUniquelyReferenced_nonNull_native);
  *(v2 + 32) = v7;
  swift_endAccess();
}

uint64_t sub_26D198E44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_26D198F14(a1, a2);
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t PresetManager.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t PresetManager.__deallocating_deinit()
{
  PresetManager.deinit();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

unint64_t sub_26D198F14(uint64_t a1, uint64_t a2)
{
  sub_26D19BAC4();
  sub_26D19B744();
  v4 = sub_26D19BAE4();

  return sub_26D198F8C(a1, a2, v4);
}

unint64_t sub_26D198F8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_26D19BA94() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_26D199040(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_26D198F14(a2, a3);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v10;
  v13 = v11;
  sub_26D1991E8(0);
  if ((sub_26D19BA24() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_26D198F14(a2, a3);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_26D19BAB4();
    __break(1u);
    return result;
  }

  v12 = v14;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    *(v16[7] + 8 * v12) = a1;
  }

  else
  {
    sub_26D199250(v12, a2, a3, a1, v16);
  }
}

void sub_26D1991E8(uint64_t a1)
{
  if (!qword_2804DF608)
  {
    sub_26D189578(255);
    v1 = sub_26D19BA34();
    if (!v2)
    {
      atomic_store(v1, &qword_2804DF608);
    }
  }
}