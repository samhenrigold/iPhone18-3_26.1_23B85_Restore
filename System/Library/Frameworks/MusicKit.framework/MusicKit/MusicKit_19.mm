uint64_t sub_21738EAE0@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = &type metadata for Track;
  a1[4] = &protocol witness table for Track;
  v3 = swift_allocObject();
  *a1 = v3;

  return sub_217275710(v1, v3 + 16);
}

uint64_t sub_21738EB44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a4)(uint64_t, uint64_t)@<X3>, uint64_t *a5@<X8>)
{
  a5[3] = a1;
  a5[4] = a2;
  v7 = swift_allocObject();
  *a5 = v7;

  return a4(v5, v7 + 16);
}

uint64_t _s8MusicKit0A14LibraryAddablePAAE9itemToAddAA0A4Item_pSgvg_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2 + 8);
  a3[3] = a1;
  a3[4] = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
  v8 = *(*(a1 - 8) + 16);

  return v8(boxed_opaque_existential_0, v3, a1);
}

uint64_t sub_21738ECC8(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  v4 = v1;
  if (v5 <= 0x3F)
  {
    type metadata accessor for PartialMusicAsyncProperty(255, v1, v2, v3);
    v4 = sub_217752418();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v4;
}

uint64_t sub_21738ED8C(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 9) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((((((v6 + 9) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_21738EED8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((((v9 + 9) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if (((((((v9 + 9) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
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
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 9] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((((((v9 + 9) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((((((v9 + 9) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((((((v9 + 9) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_21738F0D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v15 = *a3;
  v16 = *a4;
  v17 = *(a5 - 8);
  (*(v17 + 16))(a9);
  v35[0] = a5;
  v35[1] = a6;
  v35[2] = a7;
  v35[3] = a8;
  v18 = type metadata accessor for MusicAsyncPropertyRequest(0, v35);
  *(a9 + v18[13]) = v15;
  *(a9 + v18[14]) = v16;
  type metadata accessor for PartialMusicAsyncProperty(0, a5, v19, v20);
  OUTLINED_FUNCTION_25_6();
  v35[0] = sub_217752338();
  OUTLINED_FUNCTION_25_6();
  v34 = sub_217752338();
  OUTLINED_FUNCTION_25_6();
  v33 = sub_217752338();
  sub_217751DE8();
  v21 = sub_2177522A8();

  v32 = v21;
  OUTLINED_FUNCTION_60_11();
  if (v21 != sub_217752388())
  {
    do
    {
      OUTLINED_FUNCTION_60_11();
      v24 = sub_217752358();
      sub_2177522D8();
      if (v24)
      {
        v25 = *(a2 + 32 + 8 * v21);
      }

      else
      {
        OUTLINED_FUNCTION_1_5();
        v25 = sub_217752AC8();
      }

      sub_2177523E8();
      v26 = *(v25 + 96);
      v27 = *(v26 + 16);
      v28 = (v26 + 32);
      if (v15)
      {
        do
        {
          if (!v27)
          {
            break;
          }

          v29 = *v28++;
          --v27;
        }

        while (v29 != 1);
      }

      else
      {
        do
        {
          if (!v27)
          {
            break;
          }

          v30 = *v28++;
          --v27;
        }

        while ((v30 & 1) != 0);
      }

      OUTLINED_FUNCTION_25_6();
      sub_217752418();
      sub_2177523C8();
      OUTLINED_FUNCTION_60_11();
      v21 = v32;
    }

    while (v32 != sub_217752388());
  }

  result = (*(v17 + 8))(a1, a5, v22);
  *(a9 + v18[15]) = v35[0];
  *(a9 + v18[16]) = v34;
  *(a9 + v18[17]) = v33;
  return result;
}

uint64_t sub_21738F380()
{
  OUTLINED_FUNCTION_10();
  v1[6] = v2;
  v1[7] = v0;
  v1[5] = v3;
  v4 = *(v2 + 16);
  v1[8] = v4;
  v1[9] = *(v4 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v5 = sub_2177528F8();
  v1[13] = v5;
  v1[14] = *(v5 - 8);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_21738F884()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 216) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21738FC24()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 248) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21738FF4C()
{
  v3 = OUTLINED_FUNCTION_32_12();
  v2(v3);
  (v2)(v0, v1);

  OUTLINED_FUNCTION_20_0();

  return v4();
}

uint64_t sub_217390034()
{
  v3 = OUTLINED_FUNCTION_32_12();
  v2(v3);
  (v2)(v0, v1);

  OUTLINED_FUNCTION_20_0();

  return v4();
}

uint64_t sub_21739011C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[381] = v4;
  v5[380] = a4;
  v5[379] = a3;
  v5[378] = a2;
  v5[377] = a1;
  v6 = *(a4 + 16);
  v5[382] = v6;
  v7 = sub_2177528F8();
  v5[383] = v7;
  v5[384] = *(v7 - 8);
  v5[385] = swift_task_alloc();
  v5[386] = swift_task_alloc();
  v5[387] = swift_task_alloc();
  v5[388] = swift_task_alloc();
  v5[389] = swift_task_alloc();
  v5[390] = swift_task_alloc();
  v5[391] = swift_task_alloc();
  v5[392] = swift_task_alloc();
  v5[393] = *(v6 - 8);
  v5[394] = swift_task_alloc();
  v5[395] = swift_task_alloc();
  v5[396] = swift_task_alloc();
  v5[397] = swift_task_alloc();
  v5[398] = swift_task_alloc();
  v5[399] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2173902D8, 0, 0);
}

uint64_t sub_2173902D8()
{
  v152 = v0;
  v3 = *(v0 + 3192);
  v4 = *(v0 + 3144);
  v5 = *(v0 + 3056);
  v6 = *(v0 + 3048);
  v7 = *(v4 + 16);
  *(v0 + 3200) = v7;
  *(v0 + 3208) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v3, v6, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB279B0, &unk_21776B580);
  OUTLINED_FUNCTION_17_13();
  if (swift_dynamicCast())
  {
    sub_2171F3F0C((v0 + 2944), v0 + 2904);
    OUTLINED_FUNCTION_65_9();
    v8 = OUTLINED_FUNCTION_20_6();
    v9(v8);
    v10 = __dst[0];
    OUTLINED_FUNCTION_65_9();
    v11 = OUTLINED_FUNCTION_20_6();
    v13 = v12(v11);
    __swift_destroy_boxed_opaque_existential_1((v0 + 2904));
  }

  else
  {
    *(v0 + 2976) = 0;
    *(v0 + 2944) = 0u;
    *(v0 + 2960) = 0u;
    sub_2173919B4(v0 + 2944);
    v13 = 0;
    v10 = 0;
  }

  *(v0 + 369) = v10;
  v14 = *(v0 + 3056);
  v15 = *(v0 + 3024);
  __swift_storeEnumTagSinglePayload(*(v0 + 3136), 1, 1, v14);
  v16 = OUTLINED_FUNCTION_181();
  __swift_storeEnumTagSinglePayload(v16, v17, 1, v14);
  *(v0 + 2984) = v15;
  v20 = type metadata accessor for PartialMusicAsyncProperty(255, v14, v18, v19);
  OUTLINED_FUNCTION_25_6();
  *(v0 + 3216) = sub_217752418();
  OUTLINED_FUNCTION_33();
  *(v0 + 3224) = swift_getWitnessTable();
  if ((sub_217752738() & 1) == 0 || (*(v0 + 3008) = *(v0 + 3032), v21 = (v0 + 3008), (sub_217752738() & 1) == 0))
  {
    v2 = (v0 + 2992);
    v22 = *(v0 + 3040);
    *(v0 + 2992) = *(v0 + 3024);
    v21 = *(v0 + 3048);
    switch(v10)
    {
      case 1:
        v23 = *(v22 + 24);
        sub_217751DE8();
        v38 = OUTLINED_FUNCTION_89_4();
        MusicItem.identifierSet.getter(v38, v39, v40);
        v1 = *(v0 + 1856);
        v27 = *(v0 + 1864);
        sub_217751DE8();
        sub_217269F50(v0 + 1816);
        if (v27)
        {
          goto LABEL_18;
        }

        goto LABEL_24;
      case 2:
        v23 = *(v22 + 24);
        sub_217751DE8();
        v32 = OUTLINED_FUNCTION_89_4();
        MusicItem.identifierSet.getter(v32, v33, v34);
        v1 = *(v0 + 1472);
        v27 = *(v0 + 1480);
        sub_217751DE8();
        v31 = v0 + 1456;
        goto LABEL_15;
      case 3:
        v23 = *(v22 + 24);
        sub_217751DE8();
        v35 = OUTLINED_FUNCTION_89_4();
        MusicItem.identifierSet.getter(v35, v36, v37);
        v1 = *(v0 + 1112);
        v27 = *(v0 + 1120);
        sub_217751DE8();
        v31 = v0 + 1096;
        goto LABEL_15;
      case 4:
        v23 = *(v22 + 24);
        sub_217751DE8();
        v28 = OUTLINED_FUNCTION_89_4();
        MusicItem.identifierSet.getter(v28, v29, v30);
        v1 = *(v0 + 32);
        v27 = *(v0 + 40);
        sub_217751DE8();
        v31 = v0 + 16;
LABEL_15:
        sub_217269F50(v31);
        if (!v27)
        {
          goto LABEL_24;
        }

        goto LABEL_18;
      default:
        v23 = *(v22 + 24);
        sub_217751DE8();
        v24 = OUTLINED_FUNCTION_89_4();
        MusicItem.identifierSet.getter(v24, v25, v26);
        v21 = *(v0 + 2192);
        v27 = *(v0 + 2200);
        sub_217751DE8();
        sub_217269F50(v0 + 2176);
        if (v27)
        {
          v1 = v21;
        }

        else
        {
          v1 = 0;
        }

        sub_217752368();
        if (v27)
        {
LABEL_18:
          *(v0 + 3232) = v27;
          v41 = *(v0 + 3056);
          v42 = *(v0 + 3040);
          MusicItem.identifierSet.getter(v41, v23, v0 + 736);
          memcpy(__dst, (v0 + 736), sizeof(__dst));
          v43 = MusicIdentifierSet.isLibraryResource.getter();
          sub_217269F50(v0 + 736);
          v44 = 25705;
          if ((v43 & v13 & (v10 == 0)) != 0)
          {
            v44 = 0x656C617669757165;
            v45 = 0xEB0000000073746ELL;
          }

          else
          {
            v45 = 0xE200000000000000;
          }

          *__dst = v44;
          *&__dst[8] = v45;
          v151[0] = v10;
          v46 = *(v42 + 40);
          sub_217751DE8();
          sub_217751DE8();
          sub_2172B8588(__dst, v1, v27, v0 + 2720, v151, 1, v41, v23, v46);
          v47 = *(v0 + 2992);

          *(v0 + 2736) = v47;
          v48 = swift_task_alloc();
          *(v0 + 3240) = v48;
          v49 = OUTLINED_FUNCTION_25_6();
          *(v0 + 3248) = type metadata accessor for MusicCatalogResourceRequest(v49, v50, v23, v46);
          *v48 = v0;
          v48[1] = sub_217390A68;
          OUTLINED_FUNCTION_46_2();

          return sub_2172C0954();
        }

LABEL_24:

        break;
    }
  }

  if (!*(v0 + 369) || (OUTLINED_FUNCTION_58_8() & 1) != 0 || (v21 = *(v0 + 3136), v53 = *(v0 + 3056), v54 = OUTLINED_FUNCTION_181(), __swift_getEnumTagSinglePayload(v54, v55, v53)) || (v107 = OUTLINED_FUNCTION_40_12(), v109 = v108(v107), OUTLINED_FUNCTION_59_4(v109, v110, v111, v112, v113, v114, v115, v116, v131, v133, v135), v117 = v1 + 8, v118 = OUTLINED_FUNCTION_89_4(), v119(v118), memcpy((v0 + 376), __dst, 0x161uLL), v21 = *(v0 + 392), v120 = *(v0 + 400), sub_217751DE8(), v121 = sub_217269F50(v0 + 376), !v120))
  {
    v56 = OUTLINED_FUNCTION_14_19();
    v20(v56);
    OUTLINED_FUNCTION_0_36();
    if (!v60)
    {
      v57 = OUTLINED_FUNCTION_5_28();
      v58(v57);
      v59 = OUTLINED_FUNCTION_7_23();
      v20(v59);
      OUTLINED_FUNCTION_2_36();
      if (!v60)
      {
        v72 = OUTLINED_FUNCTION_3_35();
        v74 = v73(v72);
        OUTLINED_FUNCTION_30_16(v74, v75, v76, v77, v78, v79, v80, v81, v131, v133, v135, v137, v139, v141, v143, v145);
        v82 = OUTLINED_FUNCTION_54_9();
        v21(v82);
        v83 = (v21)(v13, v20);
        v91 = OUTLINED_FUNCTION_53_10(v83, v84, v85, v86, v87, v88, v89, v90, v132, v134, v136, v138, v140, v142, v144, v146, v147, v148);
        v92(v91);
        goto LABEL_43;
      }

      v61 = OUTLINED_FUNCTION_23_20();
      v62(v61);
    }

    v63 = OUTLINED_FUNCTION_8_26();
    (v2)(v63);
    v64 = OUTLINED_FUNCTION_7_23();
    v20(v64);
    OUTLINED_FUNCTION_2_36();
    if (v60)
    {
      v65 = OUTLINED_FUNCTION_13_17();
      v66(v65);
      OUTLINED_FUNCTION_0_36();
      if (v60)
      {
        v67 = OUTLINED_FUNCTION_12_16();
        v68(v67);
        OUTLINED_FUNCTION_0_36();
        if (!v60)
        {
          OUTLINED_FUNCTION_16_20();
          v2();
        }
      }

      else
      {
        v93 = OUTLINED_FUNCTION_28_14();
        v94(v93);
      }

      v95 = *(v0 + 3088);
      v96 = OUTLINED_FUNCTION_181();
      if (__swift_getEnumTagSinglePayload(v96, v97, v98) != 1)
      {
        OUTLINED_FUNCTION_16_20();
        (v2)(v95);
      }
    }

    else
    {
      v69 = OUTLINED_FUNCTION_11_25();
      (v2)(v69);
      v70 = OUTLINED_FUNCTION_17_13();
      v71(v70);
    }

    v99 = OUTLINED_FUNCTION_9_21();
    v100(v99);
LABEL_43:
    v101 = OUTLINED_FUNCTION_1_32();
    v102(v101);
    v103 = OUTLINED_FUNCTION_34_12();
    v104(v103);

    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_46_2();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_29_15(v121, v122, v123, v124, v125, v126, v127, v128, v131, v133, v135, v137, v139, v141, v143, v145, v147, v148, v149, *__dst, *&__dst[8]);
  sub_217751DE8();

  *(v0 + 2552) = v117;
  v129 = swift_task_alloc();
  *(v0 + 3272) = OUTLINED_FUNCTION_55_7(v129);
  *v120 = v0;
  OUTLINED_FUNCTION_22_18();
  OUTLINED_FUNCTION_46_2();

  return sub_2172C045C();
}

uint64_t sub_217390A68()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 3256) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_217390B7C()
{
  v106 = v1;
  v5 = *(v1 + 3248);
  (*(*(v1 + 3072) + 40))(*(v1 + 3136), *(v1 + 3120), *(v1 + 3064));
  OUTLINED_FUNCTION_58();
  (*(v6 + 8))(v1 + 2720, v5);
  if (!*(v1 + 369) || (OUTLINED_FUNCTION_58_8() & 1) != 0 || (v5 = *(v1 + 3136), v7 = *(v1 + 3056), v8 = OUTLINED_FUNCTION_181(), __swift_getEnumTagSinglePayload(v8, v9, v7)) || (v61 = OUTLINED_FUNCTION_40_12(), v63 = v62(v61), OUTLINED_FUNCTION_59_4(v63, v64, v65, v66, v67, v68, v69, v70, v86, v88, v90), v71 = v2 + 8, v72 = OUTLINED_FUNCTION_89_4(), v73(v72), memcpy((v1 + 376), __src, 0x161uLL), v5 = *(v1 + 392), v74 = *(v1 + 400), sub_217751DE8(), v75 = sub_217269F50(v1 + 376), !v74))
  {
    v10 = OUTLINED_FUNCTION_14_19();
    v3(v10);
    OUTLINED_FUNCTION_0_36();
    if (!v14)
    {
      v11 = OUTLINED_FUNCTION_5_28();
      v12(v11);
      v13 = OUTLINED_FUNCTION_7_23();
      v3(v13);
      OUTLINED_FUNCTION_2_36();
      if (!v14)
      {
        v26 = OUTLINED_FUNCTION_3_35();
        v28 = v27(v26);
        OUTLINED_FUNCTION_30_16(v28, v29, v30, v31, v32, v33, v34, v35, v86, v88, v90, v92, v94, v96, v98, v100);
        v36 = OUTLINED_FUNCTION_54_9();
        v5(v36);
        v37 = (v5)(v0, v3);
        v45 = OUTLINED_FUNCTION_53_10(v37, v38, v39, v40, v41, v42, v43, v44, v87, v89, v91, v93, v95, v97, v99, v101, v102, v103);
        v46(v45);
        goto LABEL_19;
      }

      v15 = OUTLINED_FUNCTION_23_20();
      v16(v15);
    }

    v17 = OUTLINED_FUNCTION_8_26();
    (v4)(v17);
    v18 = OUTLINED_FUNCTION_7_23();
    v3(v18);
    OUTLINED_FUNCTION_2_36();
    if (v14)
    {
      v19 = OUTLINED_FUNCTION_13_17();
      v20(v19);
      OUTLINED_FUNCTION_0_36();
      if (v14)
      {
        v21 = OUTLINED_FUNCTION_12_16();
        v22(v21);
        OUTLINED_FUNCTION_0_36();
        if (!v14)
        {
          OUTLINED_FUNCTION_16_20();
          v4();
        }
      }

      else
      {
        v47 = OUTLINED_FUNCTION_28_14();
        v48(v47);
      }

      v49 = *(v1 + 3088);
      v50 = OUTLINED_FUNCTION_181();
      if (__swift_getEnumTagSinglePayload(v50, v51, v52) != 1)
      {
        OUTLINED_FUNCTION_16_20();
        (v4)(v49);
      }
    }

    else
    {
      v23 = OUTLINED_FUNCTION_11_25();
      (v4)(v23);
      v24 = OUTLINED_FUNCTION_17_13();
      v25(v24);
    }

    v53 = OUTLINED_FUNCTION_9_21();
    v54(v53);
LABEL_19:
    v55 = OUTLINED_FUNCTION_1_32();
    v56(v55);
    v57 = OUTLINED_FUNCTION_34_12();
    v58(v57);

    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_46_2();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_29_15(v75, v76, v77, v78, v79, v80, v81, v82, v86, v88, v90, v92, v94, v96, v98, v100, v102, v103, v104, __src[0], __src[1]);
  sub_217751DE8();

  *(v1 + 2552) = v71;
  v83 = swift_task_alloc();
  *(v1 + 3272) = OUTLINED_FUNCTION_55_7(v83);
  *v74 = v1;
  OUTLINED_FUNCTION_22_18();
  OUTLINED_FUNCTION_46_2();

  return sub_2172C045C();
}

uint64_t sub_217390F20()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 3280) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_217391018()
{
  v2 = v0[409];
  v3 = v0[391];
  v4 = v0[389];
  v5 = v0[384];
  v6 = v0[382];
  v7 = OUTLINED_FUNCTION_145_0();
  v8(v7);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v6);
  v9 = (v5 + 32);
  v10 = OUTLINED_FUNCTION_20_6();
  v11(v10);
  OUTLINED_FUNCTION_58();
  (*(v12 + 8))(v0 + 317, v2);
  v13 = OUTLINED_FUNCTION_14_19();
  v9(v13);
  OUTLINED_FUNCTION_0_36();
  if (!v17)
  {
    v14 = OUTLINED_FUNCTION_5_28();
    v15(v14);
    v16 = OUTLINED_FUNCTION_7_23();
    v9(v16);
    OUTLINED_FUNCTION_2_36();
    if (!v17)
    {
      v29 = OUTLINED_FUNCTION_3_35();
      v31 = v30(v29);
      OUTLINED_FUNCTION_30_16(v31, v32, v33, v34, v35, v36, v37, v38, v64, v66, v68, v70, v72, v74, v76, v78);
      v39 = OUTLINED_FUNCTION_54_9();
      v2(v39);
      v40 = (v2)(v3, v9);
      v48 = OUTLINED_FUNCTION_53_10(v40, v41, v42, v43, v44, v45, v46, v47, v65, v67, v69, v71, v73, v75, v77, v79, v80, v81);
      v49(v48);
      goto LABEL_16;
    }

    v18 = OUTLINED_FUNCTION_23_20();
    v19(v18);
  }

  v20 = OUTLINED_FUNCTION_8_26();
  (v1)(v20);
  v21 = OUTLINED_FUNCTION_7_23();
  v9(v21);
  OUTLINED_FUNCTION_2_36();
  if (v17)
  {
    v22 = OUTLINED_FUNCTION_13_17();
    v23(v22);
    OUTLINED_FUNCTION_0_36();
    if (v17)
    {
      v24 = OUTLINED_FUNCTION_12_16();
      v25(v24);
      OUTLINED_FUNCTION_0_36();
      if (!v17)
      {
        OUTLINED_FUNCTION_16_20();
        v1();
      }
    }

    else
    {
      v50 = OUTLINED_FUNCTION_28_14();
      v51(v50);
    }

    v52 = v0[386];
    v53 = OUTLINED_FUNCTION_181();
    if (__swift_getEnumTagSinglePayload(v53, v54, v55) != 1)
    {
      OUTLINED_FUNCTION_16_20();
      (v1)(v52);
    }
  }

  else
  {
    v26 = OUTLINED_FUNCTION_11_25();
    (v1)(v26);
    v27 = OUTLINED_FUNCTION_17_13();
    v28(v27);
  }

  v56 = OUTLINED_FUNCTION_9_21();
  v57(v56);
LABEL_16:
  v58 = OUTLINED_FUNCTION_1_32();
  v59(v58);
  v60 = OUTLINED_FUNCTION_34_12();
  v61(v60);

  OUTLINED_FUNCTION_0_2();

  return v62();
}

uint64_t sub_217391318()
{
  v2 = *(v0 + 3248);
  v3 = OUTLINED_FUNCTION_63_10();
  v1(v3);
  OUTLINED_FUNCTION_58();
  (*(v4 + 8))(v0 + 2720, v2);
  v5 = OUTLINED_FUNCTION_18_18();
  v1(v5);

  OUTLINED_FUNCTION_20_0();

  return v6();
}

uint64_t sub_217391450()
{
  v2 = *(v0 + 3272);
  v3 = OUTLINED_FUNCTION_63_10();
  v1(v3);
  OUTLINED_FUNCTION_58();
  (*(v4 + 8))(v0 + 2536, v2);
  v5 = OUTLINED_FUNCTION_18_18();
  v1(v5);

  OUTLINED_FUNCTION_20_0();

  return v6();
}

uint64_t sub_217391588(uint64_t a1, uint64_t a2, void *a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v6 = a3[2];
  v4[6] = v6;
  v4[7] = *(v6 - 8);
  v4[8] = swift_task_alloc();
  v7 = a3[3];
  v4[9] = v7;
  v8 = a3[4];
  v4[10] = v8;
  v9 = type metadata accessor for MusicLibraryResourceRequest(0, v6, v7, v8);
  v4[11] = v9;
  v4[12] = *(v9 - 8);
  v4[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2173916C0, 0, 0);
}

uint64_t sub_2173916C0(double a1)
{
  v18 = v1;
  v2 = v1[13];
  v4 = v1[9];
  v3 = v1[10];
  v5 = v1[8];
  v7 = v1[5];
  v6 = v1[6];
  v8 = v1[3];
  v9 = v1[4];
  v10 = OUTLINED_FUNCTION_60_11();
  v11(v10);
  v17 = *(v7 + *(v9 + 56));
  sub_217751DE8();
  sub_2176C892C(v5, v8, &v17, v6, v2, v4, v3);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  v1[14] = v12;
  *v12 = v13;
  v12[1] = sub_2173917D8;
  v14 = v1[11];
  v15 = v1[2];

  return sub_2176C8C40(v15, v14);
}

uint64_t sub_2173917D8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 120) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2173918D0()
{
  OUTLINED_FUNCTION_10();
  v0 = OUTLINED_FUNCTION_56_8();
  v1(v0);

  OUTLINED_FUNCTION_0_2();

  return v2();
}

uint64_t sub_217391940()
{
  OUTLINED_FUNCTION_10();
  v0 = OUTLINED_FUNCTION_56_8();
  v1(v0);

  OUTLINED_FUNCTION_20_0();

  return v2();
}

uint64_t sub_2173919B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26A00, &unk_217765430);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_20_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{

  return sub_21763F724(a14, v14, v16, v15);
}

double OUTLINED_FUNCTION_29_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unint64_t a21)
{
  v27 = *(v24 + 369);
  v28 = *(v24 + 3056);
  v29 = *(v24 + 3040);
  a20 = 25705;
  a21 = 0xE200000000000000;
  *(v25 - 81) = v27;
  v30 = *(v29 + 40);

  return sub_2172B8588(&a20, v22, v23, v24 + 2536, (v25 - 81), 1, v28, v21, v30);
}

uint64_t OUTLINED_FUNCTION_55_7(uint64_t a1)
{
  *(v2 + 3264) = a1;

  return type metadata accessor for MusicCatalogResourceRequest(0, v3, v1, v4);
}

uint64_t OUTLINED_FUNCTION_58_8()
{
  *(v0 + 3000) = *(v0 + 3032);

  return sub_217752738();
}

void OUTLINED_FUNCTION_59_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  v14 = *(v11 + 24);

  MusicItem.identifierSet.getter(v12, v14, va);
}

void *OUTLINED_FUNCTION_65_9()
{
  v2 = *(v0 + 2928);

  return __swift_project_boxed_opaque_existential_1((v0 + 2904), v2);
}

uint64_t sub_217391D18(uint64_t a1)
{
  result = sub_217391E58(&qword_280BE2248, type metadata accessor for MusicKit_SoftLinking_MPModelSongVariants, &unk_217757A14);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_217391D70(uint64_t a1)
{
  result = sub_217391E58(&unk_280BE2290, type metadata accessor for MusicKit_SoftLinking_MPModelSongOptions, &unk_2177579DC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_217391E58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_217391EA0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB275A0, &qword_217757BC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2177643B0;
  KeyPath = swift_getKeyPath(byte_217765650);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26A20, &qword_217765678);
  swift_allocObject();
  *(v0 + 32) = sub_2173836F4(KeyPath);
  v2 = swift_getKeyPath("h\\=e");
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26A28, &qword_2177656A8);
  swift_allocObject();
  *(v0 + 40) = sub_2173836F4(v2);
  v3 = swift_getKeyPath("@\\=e");
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26A30, &qword_2177656D8);
  swift_allocObject();
  *(v0 + 48) = sub_2173836F4(v3);
  v4 = swift_getKeyPath(byte_2177656E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26A38, &qword_217765708);
  swift_allocObject();
  *(v0 + 56) = sub_217383700(v4);
  v5 = swift_getKeyPath(byte_217765710);
  v6 = sub_217382930(v5, 33, 25);

  *(v0 + 64) = v6;
  v7 = swift_getKeyPath(byte_217765738);
  v8 = sub_217382E24(v7, 33, 29, 11);

  *(v0 + 72) = v8;
  v9 = swift_getKeyPath(byte_217765760);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26730, &unk_217764718);
  swift_allocObject();
  *(v0 + 80) = sub_21738340C(v9, &unk_28295B908);
  swift_getKeyPath(byte_217765788);
  v10 = sub_217382754();

  *(v0 + 88) = v10;
  qword_280C01FA8 = v0;
  return result;
}

uint64_t sub_2173920DC(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_217392134(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 24))(v1, v2);
}

uint64_t sub_21739218C(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 32))(v1, v2);
}

uint64_t sub_2173921E4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_21739223C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 40))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_217392294@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 48))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_2173922EC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 56))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_217392344@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 64))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_21739239C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB275A0, &qword_217757BC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_217765440;
  KeyPath = swift_getKeyPath(byte_2177654B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26A18, &qword_2177654E0);
  swift_allocObject();
  *(v0 + 32) = sub_2173836F8(KeyPath, 33, 25);
  swift_getKeyPath(byte_2177654E8);
  swift_allocObject();
  *(v0 + 40) = sub_2173836FC();
  v2 = swift_getKeyPath(byte_217765510);
  v3 = swift_allocObject();
  v3[2] = v2;
  v3[3] = &unk_28295B978;
  v3[4] = 0;
  v3[5] = 0;
  *(v0 + 48) = v3;
  v4 = swift_getKeyPath("p]=e");
  swift_allocObject();
  *(v0 + 56) = sub_217383704(v4, 6);
  v5 = swift_getKeyPath("P]=e");
  swift_allocObject();
  *(v0 + 64) = sub_217383704(v5, 7);
  v6 = swift_getKeyPath("0]=e");
  swift_allocObject();
  *(v0 + 72) = sub_217383704(v6, 23);
  v7 = swift_getKeyPath(byte_2177655B0);
  swift_allocObject();
  *(v0 + 80) = sub_217383704(v7, 24);
  v8 = swift_getKeyPath(byte_2177655D8);
  swift_allocObject();
  *(v0 + 88) = sub_217383704(v8, 25);
  v9 = swift_getKeyPath(byte_217765600);
  swift_allocObject();
  *(v0 + 96) = sub_217383704(v9, 28);
  v10 = swift_getKeyPath(byte_217765628);
  swift_allocObject();
  result = sub_217383704(v10, 29);
  *(v0 + 104) = result;
  qword_27CB8A290 = v0;
  return result;
}

uint64_t sub_217392644@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_21739269C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 16))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_2173926F4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 24))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_21739274C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 32))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_2173927AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 40))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_21739280C(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 48))(v1, v2);
}

uint64_t sub_217392864(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 56))(v1, v2);
}

uint64_t sub_2173928BC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 64))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

uint64_t sub_21739291C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 72))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_217392974@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 80))(v3, v4);
  *a2 = result;
  *(a2 + 8) = v6 & 1;
  return result;
}

id sub_2173929D4(uint64_t a1, uint64_t a2)
{
  v3 = objc_allocWithZone(MusicKit_SoftLinking_MPModelSongKind);

  return [v3 initWithVariants:1 options:a2];
}

unint64_t sub_217392A20(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27810, qword_217775A50);
  v1 = swift_dynamicCastClass();
  if (v1)
  {
    v2 = v1;
    v3 = qword_280BE9918;

    if (v3 != -1)
    {
      swift_once();
    }

    if (static AnyMusicProperty.== infix(_:_:)(qword_280C02960, v2))
    {
      goto LABEL_8;
    }

    v4 = qword_280BE9880;

    if (v4 != -1)
    {
      swift_once();
    }

    v5 = static AnyMusicProperty.== infix(_:_:)(qword_280BE9888, v2);

    if (v5)
    {
      goto LABEL_8;
    }

    v8 = qword_280BE9738;

    if (v8 != -1)
    {
      OUTLINED_FUNCTION_1_33(&qword_280BE9738);
    }

    v9 = static AnyMusicProperty.== infix(_:_:)(qword_280BE9740, v2);

    if (v9)
    {
      goto LABEL_8;
    }

    v10 = qword_280BE9710;

    if (v10 != -1)
    {
      OUTLINED_FUNCTION_0_37(&qword_280BE9710);
    }

    v11 = static AnyMusicProperty.== infix(_:_:)(qword_280BE9718, v2);

    if (v11)
    {
      goto LABEL_8;
    }

    v12 = qword_280BE9720;

    if (v12 != -1)
    {
      OUTLINED_FUNCTION_4_39(&qword_280BE9720);
    }

    v13 = static AnyMusicProperty.== infix(_:_:)(qword_280BE9728, v2);

    if (v13)
    {
LABEL_8:
      v6 = Song.LegacyModelSongPropertyKey.rawValue.getter();
    }

    else
    {

      return 0;
    }

    return v6;
  }

  else
  {
    OUTLINED_FUNCTION_1_1();
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD000000000000029, 0x80000002177AC4B0);
    type metadata accessor for AnyMusicProperty();
    sub_217752C78();
    MEMORY[0x21CEA23B0](46, 0xE100000000000000);
    result = OUTLINED_FUNCTION_5_29("Fatal error");
    __break(1u);
  }

  return result;
}

uint64_t sub_217392CE4@<X0>(char *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27810, qword_217775A50);
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;
    v5 = qword_280BE9738;

    if (v5 != -1)
    {
      OUTLINED_FUNCTION_1_33(&qword_280BE9738);
    }

    if (static AnyMusicProperty.== infix(_:_:)(qword_280BE9740, v4))
    {

      v7 = 0;
    }

    else
    {
      v8 = qword_280BE9710;

      if (v8 != -1)
      {
        OUTLINED_FUNCTION_0_37(&qword_280BE9710);
      }

      v9 = static AnyMusicProperty.== infix(_:_:)(qword_280BE9718, v4);

      if (v9)
      {

        v7 = 34;
      }

      else
      {
        if (qword_280BE9720 != -1)
        {
          OUTLINED_FUNCTION_4_39(&qword_280BE9720);
        }

        v10 = static AnyMusicProperty.== infix(_:_:)(qword_280BE9728, v4);

        if (v10)
        {
          v7 = 8;
        }

        else
        {
          v7 = 34;
        }
      }
    }

    *a2 = v7;
  }

  else
  {
    OUTLINED_FUNCTION_1_1();
    sub_217752AA8();
    v11 = OUTLINED_FUNCTION_25_3();
    MEMORY[0x21CEA23B0](v11, 0xE900000000000020);
    type metadata accessor for AnyMusicProperty();
    sub_217752C78();
    MEMORY[0x21CEA23B0](0xD000000000000018, 0x80000002177AC460);
    result = OUTLINED_FUNCTION_5_29("Fatal error");
    __break(1u);
  }

  return result;
}

uint64_t sub_217392EDC(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v4 + 2216) = v3;
  *(v4 + 2208) = a2;
  *(v4 + 2200) = a1;
  *(v4 + 369) = *a3;
  return MEMORY[0x2822009F8](sub_217392F0C, 0, 0);
}

uint64_t sub_217392F0C()
{
  v1 = *(v0 + 2208);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27810, qword_217775A50);
  v2 = swift_dynamicCastClass();
  if (!v2)
  {
    OUTLINED_FUNCTION_1_1();
    sub_217752AA8();
    *(v0 + 2168) = v21;
    *(v0 + 2176) = v22;
    v15 = OUTLINED_FUNCTION_25_3();
    MEMORY[0x21CEA23B0](v15, 0xE900000000000020);
    *(v0 + 2192) = v1;
    type metadata accessor for AnyMusicProperty();
    sub_217752C78();
    MEMORY[0x21CEA23B0](0xD000000000000018, 0x80000002177AC460);
    return OUTLINED_FUNCTION_5_29("Fatal error");
  }

  v3 = v2;
  v4 = qword_280BE9710;

  if (v4 != -1)
  {
    OUTLINED_FUNCTION_0_37(&qword_280BE9710);
  }

  if ((static AnyMusicProperty.== infix(_:_:)(qword_280BE9718, v3) & 1) == 0)
  {
    v16 = *(v0 + 2208);
    OUTLINED_FUNCTION_1_1();
    sub_217752AA8();
    *(v0 + 2152) = v21;
    *(v0 + 2160) = v22;
    MEMORY[0x21CEA23B0](0xD000000000000027, 0x80000002177AC480);
    *(v0 + 2184) = v16;
    type metadata accessor for AnyMusicProperty();
    sub_217752C78();
    MEMORY[0x21CEA23B0](46, 0xE100000000000000);
    return OUTLINED_FUNCTION_5_29("Fatal error");
  }

  *(v0 + 1040) = 0;
  *(v0 + 1008) = 0u;
  *(v0 + 1024) = 0u;
  *(v0 + 976) = 0u;
  *(v0 + 992) = 0u;
  *(v0 + 944) = 0u;
  *(v0 + 960) = 0u;
  *(v0 + 2224) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB275A0, &qword_217757BC0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_217759C00;
  if (qword_280BE9738 != -1)
  {
    OUTLINED_FUNCTION_1_33(&qword_280BE9738);
  }

  v6 = *(v0 + 369);
  v7 = *(v0 + 2216);
  v8 = qword_280BE9740;
  *(v0 + 2232) = qword_280BE9740;
  *(v5 + 32) = v8;

  sub_217283AFC(v7, v0 + 1656);
  sub_217444C10(v0 + 1656, v5, 1, v6, v9, v10, v11, v12, v17, v18, v19, v20, v21);
  v13 = swift_task_alloc();
  *(v0 + 2240) = v13;
  *v13 = v0;
  v13[1] = sub_217393224;

  return sub_217446AEC(v0 + 1712);
}

uint64_t sub_217393224()
{
  OUTLINED_FUNCTION_10();
  v2 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  *(v4 + 2248) = v0;

  if (v0)
  {
    v5 = sub_2173938BC;
  }

  else
  {
    v5 = sub_21739332C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_21739332C()
{
  v41 = v0;
  v1 = (v0 + 1488);
  v2 = *(v0 + 2232);
  sub_2171F06D8(v0 + 1344, &qword_27CB26A08, &qword_21776B250);
  sub_2176CA544(v2, v3, v4, v5, v6, v7, v8, v9, v36, v38, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14], __src[15], __src[16], __src[17], __src[18], __src[19]);
  sub_217283B58(v0 + 1712);
  sub_217202078(v0 + 1048, v0 + 736, &qword_27CB25318, &qword_2177657C0);
  if (*(v0 + 824))
  {
    sub_2172CE9F8();
    sub_2171F06D8(v0 + 736, &qword_27CB25388, &unk_21775D410);
    if (*(v0 + 1496))
    {
      v10 = *(v0 + 1504);
      *(v0 + 1544) = *v1;
      *(v0 + 1560) = v10;
      *(v0 + 1576) = *(v0 + 1520);
      *(v0 + 1592) = *(v0 + 1536);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_217759C00;
      if (qword_280BE9430 != -1)
      {
        swift_once();
      }

      v12 = *(v0 + 369);
      v13 = qword_280BE9438;
      *(v0 + 2256) = qword_280BE9438;
      *(v11 + 32) = v13;

      sub_21725CF0C(v0 + 1544, v0 + 1824);
      sub_217444C50(v0 + 1824, v11, 1, v12, v14, v15, v16, v17, v37, v39, __src[0], __src[1], __src[2]);
      v18 = swift_task_alloc();
      *(v0 + 2264) = v18;
      *v18 = v0;
      v18[1] = sub_21739394C;

      return sub_2174473A4(v0 + 1768);
    }
  }

  else
  {
    sub_2171F06D8(v0 + 736, &qword_27CB25318, &qword_2177657C0);
    *v1 = 0u;
    *(v0 + 1504) = 0u;
    *(v0 + 1520) = 0u;
    *(v0 + 1536) = 0;
  }

  v20 = v0 + 1152;
  sub_2171F06D8(v0 + 1488, &unk_27CB275E0, &qword_2177589D0);
  if (qword_280BE8358 != -1)
  {
    OUTLINED_FUNCTION_3(&qword_280BE8358);
  }

  v21 = *(v0 + 2216);
  v22 = sub_217751AF8();
  __swift_project_value_buffer(v22, qword_280C02570);
  sub_217283AFC(v21, v0 + 1600);
  sub_217283AFC(v21, v0 + 1432);
  v23 = sub_217751AD8();
  v24 = sub_217752808();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    __src[45] = swift_slowAlloc();
    *v25 = 136446466;
    Song.description.getter();
    OUTLINED_FUNCTION_12_17();
    sub_217283B58(v0 + 1600);
    OUTLINED_FUNCTION_7_3();
    OUTLINED_FUNCTION_6_23();

    *(v25 + 4) = v0 + 1600;
    *(v25 + 12) = 2082;
    *(v0 + 2016) = &type metadata for Song;
    *(v0 + 2024) = &protocol witness table for Song;
    v26 = swift_allocObject();
    *(v0 + 1992) = v26;
    sub_217283AFC(v0 + 1432, v26 + 16);
    v27 = __swift_project_boxed_opaque_existential_1((v0 + 1992), &type metadata for Song);
    sub_21729C5E8((v27 + 2), v0 + 2032);
    v28 = *(v0 + 2064);
    __swift_project_boxed_opaque_existential_1((v0 + 2032), *(v0 + 2056));
    v29 = OUTLINED_FUNCTION_6_23();
    v30(v29, v28);
    sub_21729C644(v0 + 2032);
    __swift_destroy_boxed_opaque_existential_1((v0 + 1992));
    memcpy((v0 + 16), __src, 0x161uLL);
    sub_217751FA8();
    OUTLINED_FUNCTION_12_17();
    sub_217283B58(v0 + 1432);
    OUTLINED_FUNCTION_7_3();
    OUTLINED_FUNCTION_6_23();

    *(v25 + 14) = &type metadata for Song;
    OUTLINED_FUNCTION_13_18(&dword_2171EE000, v31, v32, "Unable to resolve <Song, Artist> relationship because no albums were found for %{public}s [%{public}s]");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_28_4();
    OUTLINED_FUNCTION_28_4();
  }

  else
  {

    sub_217283B58(v0 + 1432);
    sub_217283B58(v0 + 1600);
  }

  v33 = *(v0 + 2200);
  sub_217202078(v0 + 944, v0 + 1152, &qword_27CB25310, &unk_21775D3D0);
  v33[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25398, &unk_21776C4F0);
  v33[4] = &protocol witness table for MusicItemCollection<A>;
  v34 = swift_allocObject();
  *v33 = v34;
  if (*(v0 + 1240))
  {
    memcpy((v34 + 16), (v0 + 1152), 0x68uLL);

    sub_2171F06D8(v0 + 1048, &qword_27CB25318, &qword_2177657C0);
    v20 = v0 + 944;
LABEL_17:
    sub_2171F06D8(v20, &qword_27CB25310, &unk_21775D3D0);
    goto LABEL_18;
  }

  sub_2174AA180(MEMORY[0x277D84F90]);

  sub_2171F06D8(v0 + 1048, &qword_27CB25318, &qword_2177657C0);
  sub_2171F06D8(v0 + 944, &qword_27CB25310, &unk_21775D3D0);
  if (*(v0 + 1240))
  {
    goto LABEL_17;
  }

LABEL_18:
  OUTLINED_FUNCTION_20_0();

  return v35();
}

uint64_t sub_2173938BC()
{
  OUTLINED_FUNCTION_10();
  sub_2171F06D8(v0 + 1344, &qword_27CB26A08, &qword_21776B250);

  sub_2171F06D8(v0 + 944, &qword_27CB25310, &unk_21775D3D0);
  OUTLINED_FUNCTION_20_0();

  return v1();
}

uint64_t sub_21739394C()
{
  OUTLINED_FUNCTION_10();
  v2 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  *(v4 + 2272) = v0;

  if (v0)
  {
    v5 = sub_217393E68;
  }

  else
  {
    v5 = sub_217393A54;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_217393A54()
{
  v26 = v0;
  v1 = (v0 + 144);
  v2 = v0[282];
  sub_2171F06D8((v0 + 157), &qword_27CB26A10, &qword_21776B000);
  sub_2176CA7B4(v2, v3, v4, v5, v6, v7, v8, v9, v25[0], v25[1], v25[2], v25[3], v25[4], v25[5], v25[6], v25[7], v25[8], v25[9], v25[10], v25[11], v25[12], v25[13], v25[14], v25[15], v25[16], v25[17], v25[18], v25[19], v25[20], v25[21]);
  sub_21725CE44((v0 + 221));
  if (v0[116])
  {
    sub_21725CE44((v0 + 193));
    sub_2171F06D8((v0 + 118), &qword_27CB25310, &unk_21775D3D0);
    memcpy(v0 + 118, v0 + 105, 0x68uLL);
  }

  else
  {
    sub_2171F06D8((v0 + 105), &qword_27CB25310, &unk_21775D3D0);
    if (qword_280BE8358 != -1)
    {
      OUTLINED_FUNCTION_3(&qword_280BE8358);
    }

    v10 = sub_217751AF8();
    __swift_project_value_buffer(v10, qword_280C02570);
    sub_21725CF0C((v0 + 193), (v0 + 235));
    sub_21725CF0C((v0 + 193), (v0 + 242));
    v11 = sub_217751AD8();
    v12 = sub_217752808();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v25[45] = swift_slowAlloc();
      *v13 = 136446466;
      Album.description.getter();
      OUTLINED_FUNCTION_12_17();
      sub_21725CE44((v0 + 235));
      OUTLINED_FUNCTION_7_3();
      OUTLINED_FUNCTION_6_23();

      *(v13 + 4) = v0 + 235;
      *(v13 + 12) = 2082;
      v0[262] = &type metadata for Album;
      v0[263] = &protocol witness table for Album;
      v14 = swift_allocObject();
      v0[259] = v14;
      sub_21725CF0C((v0 + 242), v14 + 16);
      v15 = __swift_project_boxed_opaque_existential_1(v0 + 259, &type metadata for Album);
      sub_21729C5E8((v15 + 2), (v0 + 264));
      v16 = v0[268];
      __swift_project_boxed_opaque_existential_1(v0 + 264, v0[267]);
      v17 = OUTLINED_FUNCTION_6_23();
      v18(v17, v16);
      sub_21729C644((v0 + 264));
      __swift_destroy_boxed_opaque_existential_1(v0 + 259);
      memcpy(v0 + 47, v25, 0x161uLL);
      sub_217751FA8();
      OUTLINED_FUNCTION_12_17();
      sub_21725CE44((v0 + 242));
      OUTLINED_FUNCTION_7_3();
      OUTLINED_FUNCTION_6_23();

      *(v13 + 14) = &type metadata for Album;
      OUTLINED_FUNCTION_13_18(&dword_2171EE000, v19, v20, "Unable to resolve <Song, Artist> relationship because no artists were found for %{public}s [%{public}s]");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_28_4();
      OUTLINED_FUNCTION_28_4();
    }

    else
    {

      sub_21725CE44((v0 + 242));
      sub_21725CE44((v0 + 235));
    }

    sub_21725CE44((v0 + 193));
  }

  v21 = v0[275];
  sub_217202078((v0 + 118), (v0 + 144), &qword_27CB25310, &unk_21775D3D0);
  v21[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25398, &unk_21776C4F0);
  v21[4] = &protocol witness table for MusicItemCollection<A>;
  v22 = swift_allocObject();
  *v21 = v22;
  if (v0[155])
  {
    memcpy((v22 + 16), v0 + 144, 0x68uLL);

    sub_2171F06D8((v0 + 131), &qword_27CB25318, &qword_2177657C0);
    v1 = (v0 + 118);
  }

  else
  {
    sub_2174AA180(MEMORY[0x277D84F90]);

    sub_2171F06D8((v0 + 131), &qword_27CB25318, &qword_2177657C0);
    sub_2171F06D8((v0 + 118), &qword_27CB25310, &unk_21775D3D0);
    if (!v0[155])
    {
      goto LABEL_13;
    }
  }

  sub_2171F06D8(v1, &qword_27CB25310, &unk_21775D3D0);
LABEL_13:
  OUTLINED_FUNCTION_20_0();

  return v23();
}

uint64_t sub_217393E68()
{
  OUTLINED_FUNCTION_10();
  sub_2171F06D8(v0 + 1256, &qword_27CB26A10, &qword_21776B000);

  sub_21725CE44(v0 + 1544);
  sub_2171F06D8(v0 + 1048, &qword_27CB25318, &qword_2177657C0);
  sub_2171F06D8(v0 + 944, &qword_27CB25310, &unk_21775D3D0);
  OUTLINED_FUNCTION_20_0();

  return v1();
}

uint64_t sub_217393F70(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21725B86C;

  return sub_217392EDC(a1, a2, a3);
}

void *sub_217394020(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = 0;
  v2[5] = 0;
  return v2;
}

void MusicVideoPropertyProvider.init(identifierSet:type:href:rawAttributes:rawRelationships:rawAssociations:rawMetadata:)()
{
  OUTLINED_FUNCTION_12();
  v55 = v0;
  v56 = v1;
  v53 = v2;
  v54 = v3;
  v51 = v4;
  v52 = v5;
  v7 = v6;
  v9 = v8;
  memcpy(__dst, v10, sizeof(__dst));
  v11 = *v7;
  v12 = v7[1];
  v13 = *(v7 + 16);
  sub_2172A497C(__src);
  memcpy(v9, __src, 0x221uLL);
  sub_21733B708(v59);
  memcpy((v9 + 552), v59, 0x161uLL);
  *(v9 + 912) = 0;
  *(v9 + 920) = 0u;
  *(v9 + 936) = 1;
  v14 = type metadata accessor for MusicVideoPropertyProvider(0);
  *(v9 + 944) = 0u;
  v15 = v14[9];
  v16 = sub_2177516D8();
  __swift_storeEnumTagSinglePayload(v9 + v15, 1, 1, v16);
  v17 = v9 + v14[10];
  *(v17 + 4) = 0;
  *v17 = 512;
  *(v9 + v14[11]) = 2;
  OUTLINED_FUNCTION_44_9(v14[12]);
  *(v9 + v14[13]) = 0;
  v18 = (v9 + v14[14]);
  *v18 = xmmword_2177586D0;
  v18[1] = 0u;
  v18[2] = 0u;
  v18[3] = 0u;
  *(v9 + v14[15]) = 0;
  *(v9 + v14[16]) = 0;
  *(v9 + v14[17]) = 2;
  *(v9 + v14[18]) = 2;
  *(v9 + v14[19]) = 2;
  v19 = OUTLINED_FUNCTION_55_8(v14[20]);
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v16);
  *(v9 + v14[21]) = 2;
  OUTLINED_FUNCTION_182_3(v14[22]);
  OUTLINED_FUNCTION_182_3(v14[23]);
  *(v22 + 16) = 0;
  OUTLINED_FUNCTION_182_3(v14[24]);
  *(v23 + 16) = 1;
  memcpy((v9 + v14[25]), __src, 0x221uLL);
  *(v9 + v14[26]) = 0;
  v24 = v9 + v14[27];
  *(v24 + 112) = 0;
  *(v24 + 80) = 0u;
  *(v24 + 96) = 0u;
  *(v24 + 48) = 0u;
  *(v24 + 64) = 0u;
  *(v24 + 16) = 0u;
  *(v24 + 32) = 0u;
  *v24 = 0u;
  *(v9 + v14[28]) = 0;
  v25 = v14[29];
  v26 = sub_2177517D8();
  __swift_storeEnumTagSinglePayload(v9 + v25, 1, 1, v26);
  OUTLINED_FUNCTION_44_9(v14[30]);
  OUTLINED_FUNCTION_182_3(v14[31]);
  OUTLINED_FUNCTION_44_9(v14[32]);
  v27 = OUTLINED_FUNCTION_55_8(v14[33]);
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v16);
  OUTLINED_FUNCTION_182_3(v14[34]);
  v30 = OUTLINED_FUNCTION_55_8(v14[35]);
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v26);
  *(v9 + v14[36]) = 3;
  *(v9 + v14[37]) = 2;
  *(v9 + v14[38]) = 2;
  *(v9 + v14[39]) = 2;
  *(v9 + v14[40]) = 5;
  *(v9 + v14[41]) = 7;
  OUTLINED_FUNCTION_44_9(v14[42]);
  v33 = OUTLINED_FUNCTION_55_8(v14[43]);
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v26);
  v36 = OUTLINED_FUNCTION_55_8(v14[44]);
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v26);
  OUTLINED_FUNCTION_44_9(v14[45]);
  *(v9 + v14[46]) = 2;
  *(v9 + v14[47]) = 10;
  OUTLINED_FUNCTION_44_9(v14[48]);
  v39 = v9 + v14[49];
  *(v39 + 96) = 0;
  *(v39 + 64) = 0u;
  *(v39 + 80) = 0u;
  *(v39 + 32) = 0u;
  *(v39 + 48) = 0u;
  *v39 = 0u;
  *(v39 + 16) = 0u;
  OUTLINED_FUNCTION_2_3(v14[50], 0);
  OUTLINED_FUNCTION_2_3(v14[51], v40);
  OUTLINED_FUNCTION_2_3(v14[52], v41);
  OUTLINED_FUNCTION_2_3(v14[53], v42);
  OUTLINED_FUNCTION_2_3(v14[54], v43);
  OUTLINED_FUNCTION_2_3(v14[55], v44);
  OUTLINED_FUNCTION_2_3(v14[56], v45);
  *(v9 + v14[57]) = 0;
  v46 = v9 + v14[58];
  *v46 = 0;
  *(v46 + 8) = 1;
  *(v9 + v14[59]) = 0;
  if (qword_280BE5E60 != -1)
  {
    swift_once();
  }

  v47 = qword_280C01FE0;
  if (qword_280C01FE0 >> 62)
  {
    type metadata accessor for AnyMusicProperty();
    sub_217751DE8();
    OUTLINED_FUNCTION_148_3();
    v50 = sub_217752D28();

    v47 = v50;
  }

  else
  {
    sub_217751DE8();
    sub_217753128();
    type metadata accessor for AnyMusicProperty();
  }

  *(v9 + v14[60]) = v47;
  v48 = (v9 + v14[63]);
  memcpy((v9 + v14[61]), __dst, 0x161uLL);
  v49 = v9 + v14[62];
  *v49 = v11;
  *(v49 + 8) = v12;
  *(v49 + 16) = v13;
  *v48 = v51;
  v48[1] = v52;
  *(v9 + v14[64]) = v53;
  *(v9 + v14[65]) = v54;
  *(v9 + v14[66]) = v55;
  *(v9 + v14[67]) = v56;
  OUTLINED_FUNCTION_13();
}

uint64_t type metadata accessor for MusicVideoPropertyProvider(uint64_t a1)
{
  result = qword_280BE7F68;
  if (!qword_280BE7F68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MusicVideoPropertyProvider.artwork.getter()
{
  OUTLINED_FUNCTION_225_3(v4);
  v0 = OUTLINED_FUNCTION_93();
  memcpy(v0, v1, 0x221uLL);
  return sub_21726A630(v4, v3, &qword_27CB24400, &unk_21775E9A0);
}

void *MusicVideoPropertyProvider.artwork.setter(const void *a1)
{
  OUTLINED_FUNCTION_225_3(v4);
  sub_2171F0738(v4, &qword_27CB24400, &unk_21775E9A0);
  return memcpy(v1, a1, 0x221uLL);
}

uint64_t MusicVideoPropertyProvider.albumIdentifierSet.getter@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_192_4(v5);
  memcpy(a1, (v1 + 552), 0x161uLL);
  return sub_21726A630(v5, v4, &qword_27CB25468, &qword_21775CD00);
}

void *MusicVideoPropertyProvider.albumIdentifierSet.setter(const void *a1)
{
  OUTLINED_FUNCTION_192_4(v4);
  sub_2171F0738(v4, &qword_27CB25468, &qword_21775CD00);
  return memcpy((v1 + 552), a1, 0x161uLL);
}

void MusicVideoPropertyProvider.albumTitle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 912) = a1;
  *(v2 + 920) = a2;
}

uint64_t MusicVideoPropertyProvider.albumTrackCount.setter(uint64_t result, char a2)
{
  *(v2 + 928) = result;
  *(v2 + 936) = a2 & 1;
  return result;
}

void MusicVideoPropertyProvider.artistName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 944) = a1;
  *(v2 + 952) = a2;
}

uint64_t MusicVideoPropertyProvider.catalogAsset.getter()
{
  result = OUTLINED_FUNCTION_130_6();
  v3 = (v1 + *(result + 40));
  v4 = *v3;
  *(v0 + 4) = *(v3 + 4);
  *v0 = v4;
  return result;
}

uint64_t MusicVideoPropertyProvider.catalogAsset.setter(int *a1)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  result = type metadata accessor for MusicVideoPropertyProvider(0);
  v5 = v1 + *(result + 40);
  *(v5 + 4) = v3;
  *v5 = v2;
  return result;
}

uint64_t MusicVideoPropertyProvider.contentRating.setter()
{
  result = OUTLINED_FUNCTION_173_5();
  *(v1 + *(result + 44)) = v0;
  return result;
}

void MusicVideoPropertyProvider.duration.setter()
{
  v0 = OUTLINED_FUNCTION_168_0();
  v1 = type metadata accessor for MusicVideoPropertyProvider(v0);
  OUTLINED_FUNCTION_28_15(*(v1 + 48));
}

uint64_t MusicVideoPropertyProvider.editorialArtworks.getter()
{
  type metadata accessor for MusicVideoPropertyProvider(0);

  return sub_217751DE8();
}

void MusicVideoPropertyProvider.editorialArtworks.setter()
{
  v2 = *(OUTLINED_FUNCTION_118_7() + 52);

  *(v1 + v2) = v0;
}

uint64_t MusicVideoPropertyProvider.editorialNotes.getter()
{
  v2 = (v1 + *(OUTLINED_FUNCTION_130_6() + 56));
  v3 = v2[1];
  v8[0] = *v2;
  v8[1] = v3;
  v4 = v2[3];
  v9 = v2[2];
  v5 = v9;
  v10 = v4;
  *v0 = v8[0];
  v0[1] = v3;
  v0[2] = v5;
  v0[3] = v4;
  return sub_21726A630(v8, &v7, &qword_27CB24B70, &unk_217759460);
}

__n128 MusicVideoPropertyProvider.editorialNotes.setter()
{
  v2 = (v1 + *(OUTLINED_FUNCTION_118_7() + 56));
  v3 = v2[1];
  v8[0] = *v2;
  v8[1] = v3;
  v4 = v2[3];
  v8[2] = v2[2];
  v8[3] = v4;
  sub_2171F0738(v8, &qword_27CB24B70, &unk_217759460);
  v5 = *(v0 + 16);
  *v2 = *v0;
  v2[1] = v5;
  result = *(v0 + 32);
  v7 = *(v0 + 48);
  v2[2] = result;
  v2[3] = v7;
  return result;
}

uint64_t MusicVideoPropertyProvider.editorialVideoArtworks.getter()
{
  type metadata accessor for MusicVideoPropertyProvider(0);

  return sub_217751DE8();
}

void MusicVideoPropertyProvider.editorialVideoArtworks.setter()
{
  v2 = *(OUTLINED_FUNCTION_118_7() + 60);

  *(v1 + v2) = v0;
}

uint64_t MusicVideoPropertyProvider.genreNames.getter()
{
  type metadata accessor for MusicVideoPropertyProvider(0);

  return sub_217751DE8();
}

void MusicVideoPropertyProvider.genreNames.setter()
{
  v2 = *(OUTLINED_FUNCTION_118_7() + 64);

  *(v1 + v2) = v0;
}

uint64_t MusicVideoPropertyProvider.has4K.setter()
{
  result = OUTLINED_FUNCTION_118_7();
  *(v1 + *(result + 68)) = v0;
  return result;
}

uint64_t MusicVideoPropertyProvider.hasHDR.setter()
{
  result = OUTLINED_FUNCTION_118_7();
  *(v1 + *(result + 72)) = v0;
  return result;
}

uint64_t MusicVideoPropertyProvider.homeSharingAsset.setter()
{
  result = OUTLINED_FUNCTION_173_5();
  *(v1 + *(result + 76)) = v0;
  return result;
}

uint64_t MusicVideoPropertyProvider.isPreview.setter()
{
  result = OUTLINED_FUNCTION_118_7();
  *(v1 + *(result + 84)) = v0;
  return result;
}

uint64_t MusicVideoPropertyProvider.isrc.getter()
{
  type metadata accessor for MusicVideoPropertyProvider(0);
  OUTLINED_FUNCTION_97();
  return OUTLINED_FUNCTION_93();
}

void MusicVideoPropertyProvider.isrc.setter(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_168_0();
  type metadata accessor for MusicVideoPropertyProvider(v5);
  OUTLINED_FUNCTION_193_3();
  *v2 = v3;
  v2[1] = a2;
}

uint64_t MusicVideoPropertyProvider.localFileAsset.getter()
{
  v0 = OUTLINED_FUNCTION_130_6();
  OUTLINED_FUNCTION_160_0(*(v0 + 92));

  return sub_217751DE8();
}

void MusicVideoPropertyProvider.localFileAsset.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  type metadata accessor for MusicVideoPropertyProvider(0);
  OUTLINED_FUNCTION_193_3();
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
}

uint64_t MusicVideoPropertyProvider.lyrics.getter()
{
  v2 = (v1 + *(OUTLINED_FUNCTION_130_6() + 96));
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  *v0 = *v2;
  v0[1] = v4;
  v0[2] = v5;

  return sub_21739AF10(v3, v4, v5);
}

__n128 MusicVideoPropertyProvider.lyrics.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = (v1 + *(type metadata accessor for MusicVideoPropertyProvider(0) + 96));
  sub_21733B290(*v3, v3[1], v3[2]);
  result = v5;
  *v3 = v5;
  v3[2] = v2;
  return result;
}

uint64_t MusicVideoPropertyProvider.mainUberArtwork.getter()
{
  v2 = *(OUTLINED_FUNCTION_130_6() + 100);
  memcpy(__dst, (v1 + v2), 0x221uLL);
  memcpy(v0, (v1 + v2), 0x221uLL);
  return sub_21726A630(__dst, &v4, &qword_27CB24400, &unk_21775E9A0);
}

void *MusicVideoPropertyProvider.mainUberArtwork.setter()
{
  v2 = *(OUTLINED_FUNCTION_118_7() + 100);
  memcpy(__dst, (v1 + v2), 0x221uLL);
  sub_2171F0738(__dst, &qword_27CB24400, &unk_21775E9A0);
  return memcpy((v1 + v2), v0, 0x221uLL);
}

uint64_t MusicVideoPropertyProvider.offers.getter()
{
  type metadata accessor for MusicVideoPropertyProvider(0);

  return sub_217751DE8();
}

void MusicVideoPropertyProvider.offers.setter()
{
  v2 = *(OUTLINED_FUNCTION_118_7() + 104);

  *(v1 + v2) = v0;
}

uint64_t MusicVideoPropertyProvider.playParameters.getter()
{
  v2 = *(OUTLINED_FUNCTION_130_6() + 108);
  memcpy(__dst, (v1 + v2), sizeof(__dst));
  memcpy(v0, (v1 + v2), 0x78uLL);
  return sub_21726A630(__dst, &v4, &qword_27CB244D0, &unk_21775D620);
}

void *MusicVideoPropertyProvider.playParameters.setter()
{
  v2 = *(OUTLINED_FUNCTION_118_7() + 108);
  memcpy(__dst, (v1 + v2), sizeof(__dst));
  sub_2171F0738(__dst, &qword_27CB244D0, &unk_21775D620);
  return memcpy((v1 + v2), v0, 0x78uLL);
}

uint64_t MusicVideoPropertyProvider.previewAssets.getter()
{
  type metadata accessor for MusicVideoPropertyProvider(0);

  return sub_217751DE8();
}

void MusicVideoPropertyProvider.previewAssets.setter()
{
  v2 = *(OUTLINED_FUNCTION_118_7() + 112);

  *(v1 + v2) = v0;
}

void MusicVideoPropertyProvider.releaseYear.setter()
{
  v0 = OUTLINED_FUNCTION_168_0();
  v1 = type metadata accessor for MusicVideoPropertyProvider(v0);
  OUTLINED_FUNCTION_28_15(*(v1 + 120));
}

uint64_t MusicVideoPropertyProvider.title.getter()
{
  type metadata accessor for MusicVideoPropertyProvider(0);
  OUTLINED_FUNCTION_97();
  return OUTLINED_FUNCTION_93();
}

void MusicVideoPropertyProvider.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_168_0();
  type metadata accessor for MusicVideoPropertyProvider(v5);
  OUTLINED_FUNCTION_193_3();
  *v2 = v3;
  v2[1] = a2;
}

void MusicVideoPropertyProvider.trackNumber.setter()
{
  v0 = OUTLINED_FUNCTION_168_0();
  v1 = type metadata accessor for MusicVideoPropertyProvider(v0);
  OUTLINED_FUNCTION_28_15(*(v1 + 128));
}

uint64_t MusicVideoPropertyProvider.workName.getter()
{
  type metadata accessor for MusicVideoPropertyProvider(0);
  OUTLINED_FUNCTION_97();
  return OUTLINED_FUNCTION_93();
}

void MusicVideoPropertyProvider.workName.setter(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_168_0();
  type metadata accessor for MusicVideoPropertyProvider(v5);
  OUTLINED_FUNCTION_193_3();
  *v2 = v3;
  v2[1] = a2;
}

uint64_t MusicVideoPropertyProvider.favoriteStatus.setter()
{
  result = OUTLINED_FUNCTION_173_5();
  *(v1 + *(result + 144)) = v0;
  return result;
}

uint64_t MusicVideoPropertyProvider.isLibraryAdded.setter()
{
  result = OUTLINED_FUNCTION_118_7();
  *(v1 + *(result + 148)) = v0;
  return result;
}

uint64_t MusicVideoPropertyProvider.isLibraryAddEligible.setter()
{
  result = OUTLINED_FUNCTION_118_7();
  *(v1 + *(result + 152)) = v0;
  return result;
}

uint64_t MusicVideoPropertyProvider.isPinned.setter()
{
  result = OUTLINED_FUNCTION_118_7();
  *(v1 + *(result + 156)) = v0;
  return result;
}

uint64_t MusicVideoPropertyProvider.keepLocalEnabledStatus.setter()
{
  result = OUTLINED_FUNCTION_173_5();
  *(v1 + *(result + 160)) = v0;
  return result;
}

uint64_t MusicVideoPropertyProvider.keepLocalManagedStatus.setter()
{
  result = OUTLINED_FUNCTION_173_5();
  *(v1 + *(result + 164)) = v0;
  return result;
}

uint64_t MusicVideoPropertyProvider.keepLocalManagedStatusReasons.getter()
{
  result = OUTLINED_FUNCTION_130_6();
  v3 = (v1 + *(result + 168));
  v4 = *v3;
  LOBYTE(v3) = *(v3 + 8);
  *v0 = v4;
  *(v0 + 8) = v3;
  return result;
}

uint64_t MusicVideoPropertyProvider.keepLocalManagedStatusReasons.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = type metadata accessor for MusicVideoPropertyProvider(0);
  v5 = v1 + *(result + 168);
  *v5 = v2;
  *(v5 + 8) = v3;
  return result;
}

void MusicVideoPropertyProvider.playCount.setter()
{
  v0 = OUTLINED_FUNCTION_168_0();
  v1 = type metadata accessor for MusicVideoPropertyProvider(v0);
  OUTLINED_FUNCTION_28_15(*(v1 + 180));
}

uint64_t MusicVideoPropertyProvider.hasCloudSyncSource.setter()
{
  result = OUTLINED_FUNCTION_118_7();
  *(v1 + *(result + 184)) = v0;
  return result;
}

uint64_t MusicVideoPropertyProvider.cloudStatus.setter()
{
  result = OUTLINED_FUNCTION_173_5();
  *(v1 + *(result + 188)) = v0;
  return result;
}

void MusicVideoPropertyProvider.userRating.setter()
{
  v0 = OUTLINED_FUNCTION_168_0();
  v1 = type metadata accessor for MusicVideoPropertyProvider(v0);
  OUTLINED_FUNCTION_28_15(*(v1 + 192));
}

uint64_t MusicVideoPropertyProvider.contributorSocialProfileIDs.getter()
{
  type metadata accessor for MusicVideoPropertyProvider(0);

  return sub_217751DE8();
}

void MusicVideoPropertyProvider.contributorSocialProfileIDs.setter()
{
  v2 = *(OUTLINED_FUNCTION_118_7() + 228);

  *(v1 + v2) = v0;
}

void MusicVideoPropertyProvider.popularity.setter()
{
  v0 = OUTLINED_FUNCTION_168_0();
  v1 = type metadata accessor for MusicVideoPropertyProvider(v0);
  OUTLINED_FUNCTION_28_15(*(v1 + 232));
}

uint64_t MusicVideoPropertyProvider.searchContextSnippets.getter()
{
  type metadata accessor for MusicVideoPropertyProvider(0);

  return sub_217751DE8();
}

void MusicVideoPropertyProvider.searchContextSnippets.setter()
{
  v2 = *(OUTLINED_FUNCTION_118_7() + 236);

  *(v1 + v2) = v0;
}

void MusicVideoPropertyProvider.subscript.getter()
{
  OUTLINED_FUNCTION_12();
  v215 = v0;
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  v6 = OUTLINED_FUNCTION_45_0(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_31();
  v214 = v7;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_99();
  v213 = v9;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_99();
  v212 = v11;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v12);
  v14 = &v210 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v16 = OUTLINED_FUNCTION_45_0(v15);
  MEMORY[0x28223BE20](v16);
  v18 = &v210 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v210 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v210 - v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26A40, &qword_2177657C8);
  if (!swift_dynamicCastClass())
  {
    *&v220[0] = sub_21770B54C(45);
    *(&v220[0] + 1) = v153;
    MEMORY[0x21CEA23B0](0xD00000000000002ALL, 0x80000002177AC510);
    v219[0] = v2;
    type metadata accessor for AnyMusicProperty();
    sub_217752C78();
    OUTLINED_FUNCTION_217_0();
    OUTLINED_FUNCTION_184_3();
    v154 = 94;
    goto LABEL_196;
  }

  v25 = qword_280BE6B50;
  v216 = v2;

  if (v25 != -1)
  {
    OUTLINED_FUNCTION_82_7(&qword_280BE6B50);
  }

  if (OUTLINED_FUNCTION_168(qword_280C02258))
  {
    v26 = v215;
    OUTLINED_FUNCTION_225_3(v219);
    OUTLINED_FUNCTION_225_3(v220);
    OUTLINED_FUNCTION_104(v220);
    if (!v168)
    {
      swift_allocObject();
      v27 = OUTLINED_FUNCTION_154_4();
      memcpy(v27, v28, 0x221uLL);
      sub_217284028(v218, v217);

      memcpy((v26 + 16), v220, 0x221uLL);
      v29 = &type metadata for Artwork;
LABEL_19:
      *v4 = v26;
      v4[1] = 0;
LABEL_20:
      v4[2] = 0;
      v4[3] = v29;
      goto LABEL_21;
    }

    goto LABEL_12;
  }

  v30 = qword_27CB23DE8;

  if (v30 != -1)
  {
    OUTLINED_FUNCTION_81_8(&qword_27CB23DE8);
  }

  OUTLINED_FUNCTION_168(qword_27CB8A300);
  OUTLINED_FUNCTION_195_4();
  if (v30)
  {
    v26 = v215;
    OUTLINED_FUNCTION_192_4(v219);
    OUTLINED_FUNCTION_192_4(v220);
    OUTLINED_FUNCTION_104(v220);
    if (!v168)
    {
      swift_allocObject();
      v36 = OUTLINED_FUNCTION_154_4();
      memcpy(v36, v37, 0x161uLL);
      sub_217269EF4(v218, v217);

      memcpy((v26 + 16), v220, 0x161uLL);
      v29 = &type metadata for MusicIdentifierSet;
      goto LABEL_19;
    }

LABEL_12:

    v29 = 0;
    v26 = 0;
    goto LABEL_19;
  }

  v31 = qword_280BE6DA8;

  if (v31 != -1)
  {
    OUTLINED_FUNCTION_79_9(&qword_280BE6DA8);
  }

  OUTLINED_FUNCTION_168(qword_280C02390);
  OUTLINED_FUNCTION_195_4();
  if (v31)
  {
    v32 = v4;
    v33 = *(v215 + 920);
    if (v33)
    {
      v34 = *(v215 + 912);
LABEL_18:
      sub_217751DE8();
      v35 = MEMORY[0x277D837D0];
LABEL_33:

      *v32 = v34;
      v32[1] = v33;
      v32[2] = 0;
      v32[3] = v35;
      goto LABEL_21;
    }

    goto LABEL_32;
  }

  v38 = qword_27CB23DE0;

  if (v38 != -1)
  {
    OUTLINED_FUNCTION_78_5(&qword_27CB23DE0);
  }

  OUTLINED_FUNCTION_168(qword_27CB8A2F8);
  OUTLINED_FUNCTION_195_4();
  if (v38)
  {
    if (*(v215 + 936))
    {
      v39 = 0;
      v40 = 0;
    }

    else
    {
      v40 = *(v215 + 928);
      v39 = MEMORY[0x277D83B88];
    }

LABEL_35:

    *v4 = v40;
    v4[1] = 0;
    v4[2] = 0;
    v4[3] = v39;
    goto LABEL_21;
  }

  v41 = qword_280BE6DA0;

  if (v41 != -1)
  {
    OUTLINED_FUNCTION_77(&qword_280BE6DA0);
  }

  OUTLINED_FUNCTION_168(qword_280C02388);
  OUTLINED_FUNCTION_195_4();
  if (v41)
  {
    v32 = v4;
    v33 = *(v215 + 952);
    if (v33)
    {
      v34 = *(v215 + 944);
      goto LABEL_18;
    }

LABEL_32:
    v35 = 0;
    v34 = 0;
    goto LABEL_33;
  }

  v211 = v4;
  v2 = v218;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25658, &unk_2177657D0);
  OUTLINED_FUNCTION_31_11(v42);
  v43 = OUTLINED_FUNCTION_53_11();
  v44 = OUTLINED_FUNCTION_168(v43);

  if (v44)
  {
    v45 = type metadata accessor for MusicVideoPropertyProvider(0);
    v46 = OUTLINED_FUNCTION_67_8(*(v45 + 36));
    sub_21726A630(v46, v24, v47, v48);
    sub_2177516D8();
    OUTLINED_FUNCTION_73(v24);
    v49 = v211;
    if (v168)
    {

      sub_2171F0738(v24, &unk_27CB277C0, &qword_217758DC0);
      memset(v220, 0, 32);
    }

    else
    {
      OUTLINED_FUNCTION_167_5();
      OUTLINED_FUNCTION_58();
      (*(v57 + 32))();
    }

    v58 = v220[1];
    *v49 = v220[0];
    *(v49 + 1) = v58;
    goto LABEL_21;
  }

  v50 = qword_280BE6D38;

  v4 = v211;
  if (v50 != -1)
  {
    OUTLINED_FUNCTION_76_7(&qword_280BE6D38);
  }

  OUTLINED_FUNCTION_168(qword_280C02348);
  OUTLINED_FUNCTION_155_6();
  if (v50)
  {
    type metadata accessor for MusicVideoPropertyProvider(0);
    OUTLINED_FUNCTION_68_8();
    v52 = *(v51 + 4);
    v53 = *v51;
    v54 = v53 | (v52 << 32);
    v55 = v53 & 0xFF00;

    v56 = v54 & 0x1010101FFLL;
    if (v55 == 512)
    {
      v56 = 0;
    }

    *v4 = v56;
    v4[1] = 0;
    if (v55 == 512)
    {
      v29 = 0;
    }

    else
    {
      v29 = &type metadata for CatalogAsset;
    }

    goto LABEL_20;
  }

  v59 = qword_280BE6D00;

  if (v59 != -1)
  {
    OUTLINED_FUNCTION_75_6(&qword_280BE6D00);
  }

  OUTLINED_FUNCTION_168(qword_280C02330);
  OUTLINED_FUNCTION_155_6();
  if (v59)
  {
    v60 = *(v215 + *(type metadata accessor for MusicVideoPropertyProvider(0) + 44));

    v61 = &type metadata for ContentRating;
    if (v60 == 2)
    {
      v61 = 0;
    }

    *v4 = v60 & 1;
    v4[1] = 0;
    v4[2] = 0;
    v4[3] = v61;
    goto LABEL_21;
  }

  v62 = qword_280BE6B38;

  if (v62 != -1)
  {
    OUTLINED_FUNCTION_74_7(&qword_280BE6B38);
  }

  OUTLINED_FUNCTION_168(qword_280C02250);
  OUTLINED_FUNCTION_155_6();
  if (v62)
  {
    type metadata accessor for MusicVideoPropertyProvider(0);
    v39 = 0;
    v40 = 0;
    OUTLINED_FUNCTION_68_8();
    if ((*(v63 + 8) & 1) == 0)
    {
      v40 = *v63;
      v39 = MEMORY[0x277D839F8];
    }

    goto LABEL_35;
  }

  v64 = qword_280BE6C60;

  if (v64 != -1)
  {
    OUTLINED_FUNCTION_12_18(&qword_280BE6C60);
  }

  OUTLINED_FUNCTION_168(qword_280C022C8);
  OUTLINED_FUNCTION_155_6();
  if (v64)
  {
    type metadata accessor for MusicVideoPropertyProvider(0);
    OUTLINED_FUNCTION_135_4();
    if (v64)
    {
      v65 = &qword_27CB24BE8;
      v66 = &qword_2177595F0;
LABEL_66:
      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(v65, v66);
      sub_217751DE8();
LABEL_78:

      *v4 = v64;
      v4[1] = 0;
      v4[2] = 0;
      v4[3] = v67;
      goto LABEL_21;
    }

    goto LABEL_77;
  }

  v68 = qword_280BE6CD8;

  if (v68 != -1)
  {
    OUTLINED_FUNCTION_73_1(&qword_280BE6CD8);
  }

  OUTLINED_FUNCTION_168(qword_280C02318);
  OUTLINED_FUNCTION_155_6();
  if (v68)
  {
    v69 = (v215 + *(type metadata accessor for MusicVideoPropertyProvider(0) + 56));
    v71 = *v69;
    v70 = v69[1];
    v72 = *(v69 + 2);
    v218[0] = *(v69 + 1);
    v218[1] = v72;
    v218[2] = *(v69 + 3);
    if (v70 != 1)
    {
      v74 = swift_allocObject();
      *&v220[0] = v71;
      *(&v220[0] + 1) = v70;
      v75 = *(v69 + 2);
      v220[1] = *(v69 + 1);
      v220[2] = v75;
      v220[3] = *(v69 + 3);
      sub_217350F74(v220, v219);

      *(v74 + 16) = v71;
      *(v74 + 24) = v70;
      v76 = v218[1];
      *(v74 + 32) = v218[0];
      *(v74 + 48) = v76;
      *(v74 + 64) = v218[2];
      v73 = &type metadata for EditorialNotes;
      goto LABEL_80;
    }

LABEL_71:

    v73 = 0;
    v74 = 0;
LABEL_80:
    v77 = v211;
    *v211 = v74;
    v77[1] = 0;
    v77[2] = 0;
    v77[3] = v73;
    goto LABEL_21;
  }

  v64 = qword_280BE6DC0;

  if (v64 != -1)
  {
    OUTLINED_FUNCTION_11_26(&qword_280BE6DC0);
  }

  OUTLINED_FUNCTION_168(qword_280C023A0);
  OUTLINED_FUNCTION_155_6();
  if (v64)
  {
    type metadata accessor for MusicVideoPropertyProvider(0);
    OUTLINED_FUNCTION_135_4();
    if (v64)
    {
      v65 = &qword_27CB24BE0;
      v66 = &unk_2177657E0;
      goto LABEL_66;
    }

LABEL_77:
    v67 = 0;
    goto LABEL_78;
  }

  v78 = qword_280BE6D98;

  if (v78 != -1)
  {
    OUTLINED_FUNCTION_72_8(&qword_280BE6D98);
  }

  OUTLINED_FUNCTION_168(qword_280C02380);
  OUTLINED_FUNCTION_155_6();
  if (v78)
  {
    type metadata accessor for MusicVideoPropertyProvider(0);
    OUTLINED_FUNCTION_135_4();
    if (v78)
    {
      v79 = &qword_27CB24C58;
      v80 = &unk_2177677B0;
LABEL_86:
      v81 = __swift_instantiateConcreteTypeFromMangledNameV2(v79, v80);
      sub_217751DE8();
LABEL_327:

      v160 = v211;
      *v211 = v78;
      v160[1] = 0;
LABEL_328:
      v160[2] = 0;
      v160[3] = v81;
      goto LABEL_21;
    }

    goto LABEL_326;
  }

  v82 = qword_280BE6BF0;

  if (v82 != -1)
  {
    OUTLINED_FUNCTION_117_9(&qword_280BE6BF0);
  }

  OUTLINED_FUNCTION_168(qword_280C02280);
  OUTLINED_FUNCTION_155_6();
  if ((v82 & 1) == 0)
  {
    v84 = qword_280BE6C90;

    if (v84 != -1)
    {
      OUTLINED_FUNCTION_116_9(&qword_280BE6C90);
    }

    OUTLINED_FUNCTION_168(qword_280C022E8);
    OUTLINED_FUNCTION_128_7();
    if (v84)
    {
      type metadata accessor for MusicVideoPropertyProvider(0);
      OUTLINED_FUNCTION_68_8();
      if (v85[2] == 1)
      {
      }

      else
      {
        v91 = *v85;
        v92 = *v85 & 0xFF0000;

        if (v92 != 0x20000)
        {
          v93 = (v91 >> 16) & 1;
          v94 = MEMORY[0x277D839B0];
          goto LABEL_112;
        }
      }

      v93 = 0;
      v94 = 0;
LABEL_112:
      v96 = v211;
      *v211 = v93;
      v96[1] = 0;
      v96[2] = 0;
      v96[3] = v94;
      goto LABEL_21;
    }

    v86 = qword_280BE6B88;

    if (v86 != -1)
    {
      OUTLINED_FUNCTION_115_5(&qword_280BE6B88);
    }

    OUTLINED_FUNCTION_168(qword_280C02270);
    OUTLINED_FUNCTION_128_7();
    if (v86)
    {
      v87 = *(type metadata accessor for MusicVideoPropertyProvider(0) + 72);
LABEL_100:
      v83 = *(v215 + v87);
      goto LABEL_101;
    }

    v95 = qword_280BE6C80;

    if (v95 != -1)
    {
      OUTLINED_FUNCTION_114_4(&qword_280BE6C80);
    }

    OUTLINED_FUNCTION_168(qword_280C022D8);
    OUTLINED_FUNCTION_128_7();
    if (v95)
    {
      v83 = *(v215 + *(type metadata accessor for MusicVideoPropertyProvider(0) + 76));

      v88 = v83 & 1;
      v89 = &type metadata for HomeSharingAsset;
      goto LABEL_102;
    }

    v97 = qword_280BE6D08;

    if (v97 != -1)
    {
      OUTLINED_FUNCTION_21_16(&qword_280BE6D08);
    }

    OUTLINED_FUNCTION_168(qword_280C02338);
    OUTLINED_FUNCTION_128_7();
    if (v97)
    {
      v98 = type metadata accessor for MusicVideoPropertyProvider(0);
      v99 = OUTLINED_FUNCTION_67_8(*(v98 + 80));
      sub_21726A630(v99, v21, v100, v101);
      sub_2177516D8();
      OUTLINED_FUNCTION_73(v21);
      if (!v168)
      {
        goto LABEL_251;
      }

      v102 = &unk_27CB277C0;
      v103 = &qword_217758DC0;
      v104 = v21;
LABEL_119:
      sub_2171F0738(v104, v102, v103);
      memset(v220, 0, 32);
LABEL_124:
      v106 = v2[70];
      v107 = v211;
      *v211 = v2[69];
      *(v107 + 1) = v106;
      goto LABEL_21;
    }

    v105 = qword_280BE6B20;

    if (v105 != -1)
    {
      OUTLINED_FUNCTION_113_7(&qword_280BE6B20);
    }

    OUTLINED_FUNCTION_168(qword_280C02240);
    OUTLINED_FUNCTION_128_7();
    if (v105)
    {
      v87 = *(type metadata accessor for MusicVideoPropertyProvider(0) + 84);
      goto LABEL_100;
    }

    v108 = qword_280BE6BF8;

    if (v108 != -1)
    {
      OUTLINED_FUNCTION_112_8(&qword_280BE6BF8);
    }

    OUTLINED_FUNCTION_168(qword_280C02288);
    OUTLINED_FUNCTION_128_7();
    if (v108)
    {
      type metadata accessor for MusicVideoPropertyProvider(0);
      OUTLINED_FUNCTION_68_8();
      v110 = v109[1];
      if (!v110)
      {
        v112 = 0;
        v111 = 0;
        goto LABEL_141;
      }

LABEL_129:
      v111 = *v109;
      sub_217751DE8();
      v112 = MEMORY[0x277D837D0];
LABEL_141:

      v127 = v211;
      *v211 = v111;
      v127[1] = v110;
      v127[2] = 0;
      v127[3] = v112;
      goto LABEL_21;
    }

    v113 = qword_280BE6CB0;

    if (v113 != -1)
    {
      OUTLINED_FUNCTION_111_8(&qword_280BE6CB0);
    }

    OUTLINED_FUNCTION_168(qword_280C02300);
    OUTLINED_FUNCTION_128_7();
    if (v113)
    {
      type metadata accessor for MusicVideoPropertyProvider(0);
      OUTLINED_FUNCTION_68_8();
      v115 = v114[1];
      if (v115)
      {
        v116 = *(v114 + 16);
        v117 = *v114;
        sub_217751DE8();

        v118 = v116 & 1;
        v119 = v117 & 0xFF01;
        v120 = &type metadata for FileAsset;
      }

      else
      {

        v118 = 0;
        v120 = 0;
        v119 = 0;
      }

      v129 = v211;
      *v211 = v119;
      v129[1] = v115;
      v129[2] = v118;
      v129[3] = v120;
      goto LABEL_21;
    }

    v121 = qword_280BE6B78;

    if (v121 != -1)
    {
      OUTLINED_FUNCTION_20_1(&qword_280BE6B78);
    }

    OUTLINED_FUNCTION_168(qword_280C02268);
    OUTLINED_FUNCTION_128_7();
    if (v121)
    {
      type metadata accessor for MusicVideoPropertyProvider(0);
      OUTLINED_FUNCTION_68_8();
      v123 = v122[2];
      if (v123 == 1)
      {

        v124 = 0;
        v123 = 0;
        v125 = 0;
        v126 = 0;
      }

      else
      {
        v130 = *v122;
        v125 = v122[1];
        sub_217751DE8();

        v126 = v130 & 0xFFFFFF;
        v124 = &type metadata for MusicLyrics;
      }

      v131 = v211;
      *v211 = v126;
      v131[1] = v125;
      v131[2] = v123;
      v131[3] = v124;
      goto LABEL_21;
    }

    v128 = qword_280BE6C88;

    if (v128 != -1)
    {
      OUTLINED_FUNCTION_109_6(&qword_280BE6C88);
    }

    OUTLINED_FUNCTION_168(qword_280C022E0);
    OUTLINED_FUNCTION_128_7();
    if (v128)
    {
      v74 = *(type metadata accessor for MusicVideoPropertyProvider(0) + 100);
      memcpy(v219, (v215 + v74), 0x221uLL);
      memcpy(v220, (v215 + v74), 0x221uLL);
      OUTLINED_FUNCTION_104(v220);
      if (!v168)
      {
        swift_allocObject();
        v132 = OUTLINED_FUNCTION_154_4();
        memcpy(v132, v133, 0x221uLL);
        sub_217284028(v218, v217);

        memcpy((v74 + 16), v220, 0x221uLL);
        v73 = &type metadata for Artwork;
        goto LABEL_80;
      }

      goto LABEL_71;
    }

    v78 = qword_280BE6B70;

    if (v78 != -1)
    {
      OUTLINED_FUNCTION_19_11(&qword_280BE6B70);
    }

    OUTLINED_FUNCTION_168(qword_280C02260);
    OUTLINED_FUNCTION_128_7();
    if (v78)
    {
      type metadata accessor for MusicVideoPropertyProvider(0);
      OUTLINED_FUNCTION_135_4();
      if (v78)
      {
        v79 = &qword_27CB24C50;
        v80 = &unk_217759650;
        goto LABEL_86;
      }

LABEL_326:
      v81 = 0;
      goto LABEL_327;
    }

    v134 = qword_280BE6CA8;

    if (v134 != -1)
    {
      OUTLINED_FUNCTION_108_7(&qword_280BE6CA8);
    }

    OUTLINED_FUNCTION_168(qword_280C022F8);
    OUTLINED_FUNCTION_128_7();
    if (v134)
    {
      v135 = (v215 + *(type metadata accessor for MusicVideoPropertyProvider(0) + 108));
      v137 = *v135;
      v136 = v135[1];
      OUTLINED_FUNCTION_196_4(v218);
      if (v136)
      {
        v74 = swift_allocObject();
        *&v220[0] = v137;
        *(&v220[0] + 1) = v136;
        OUTLINED_FUNCTION_196_4(&v220[1]);
        sub_2172DF5A4(v220, v219);

        *(v74 + 16) = v137;
        *(v74 + 24) = v136;
        memcpy((v74 + 32), v218, 0x68uLL);
        v73 = &type metadata for PlayParameters;
        goto LABEL_80;
      }

      goto LABEL_71;
    }

    v78 = qword_280BE6CF0;

    if (v78 != -1)
    {
      OUTLINED_FUNCTION_107_6(&qword_280BE6CF0);
    }

    OUTLINED_FUNCTION_168(qword_280C02328);
    OUTLINED_FUNCTION_128_7();
    if (v78)
    {
      type metadata accessor for MusicVideoPropertyProvider(0);
      OUTLINED_FUNCTION_135_4();
      if (v78)
      {
        v79 = &qword_27CB24C48;
        v80 = &qword_217759648;
        goto LABEL_86;
      }

      goto LABEL_326;
    }

    v138 = qword_280BE6D58;

    if (v138 != -1)
    {
      OUTLINED_FUNCTION_106_5(&qword_280BE6D58);
    }

    OUTLINED_FUNCTION_168(qword_280C02360);
    OUTLINED_FUNCTION_128_7();
    if (v138)
    {
      v139 = type metadata accessor for MusicVideoPropertyProvider(0);
      v140 = OUTLINED_FUNCTION_67_8(*(v139 + 116));
      sub_21726A630(v140, v14, v141, v142);
      sub_2177517D8();
      OUTLINED_FUNCTION_73(v14);
      if (!v168)
      {
        goto LABEL_251;
      }

      v102 = &qword_27CB241C0;
      v103 = &qword_217759480;
      v104 = v14;
      goto LABEL_119;
    }

    v143 = qword_280BE6BC8;

    if (v143 != -1)
    {
      OUTLINED_FUNCTION_105_1(&qword_280BE6BC8);
    }

    OUTLINED_FUNCTION_168(qword_280C02278);
    OUTLINED_FUNCTION_128_7();
    if (v143)
    {
LABEL_176:
      type metadata accessor for MusicVideoPropertyProvider(0);
      OUTLINED_FUNCTION_68_8();
      v110 = v109[1];
      if (!v110)
      {
        v111 = 0;
        v112 = 0;
        goto LABEL_141;
      }

      goto LABEL_129;
    }

    v144 = qword_280BE6D50;

    if (v144 != -1)
    {
      OUTLINED_FUNCTION_104_5(&qword_280BE6D50);
    }

    OUTLINED_FUNCTION_168(qword_280C02358);
    OUTLINED_FUNCTION_128_7();
    if (v144)
    {
      goto LABEL_181;
    }

    v147 = qword_280BE6C08;

    if (v147 != -1)
    {
      OUTLINED_FUNCTION_103_7(&qword_280BE6C08);
    }

    OUTLINED_FUNCTION_168(qword_280C02290);
    OUTLINED_FUNCTION_128_7();
    if (v147)
    {
      v148 = type metadata accessor for MusicVideoPropertyProvider(0);
      v149 = OUTLINED_FUNCTION_67_8(*(v148 + 132));
      sub_21726A630(v149, v18, v150, v151);
      sub_2177516D8();
      OUTLINED_FUNCTION_73(v18);
      if (!v168)
      {
        goto LABEL_251;
      }

      v102 = &unk_27CB277C0;
      v103 = &qword_217758DC0;
      v104 = v18;
      goto LABEL_119;
    }

    v152 = qword_280BE6B30;

    if (v152 != -1)
    {
      OUTLINED_FUNCTION_102_7(&qword_280BE6B30);
    }

    OUTLINED_FUNCTION_168(qword_280C02248);
    OUTLINED_FUNCTION_128_7();
    if (v152)
    {
      goto LABEL_176;
    }

    v155 = qword_280BE6D18;

    if (v155 != -1)
    {
      OUTLINED_FUNCTION_18_19(&qword_280BE6D18);
    }

    OUTLINED_FUNCTION_168(qword_280C02340);
    OUTLINED_FUNCTION_128_7();
    if (v155)
    {
      type metadata accessor for MusicVideoPropertyProvider(0);
      v156 = 0;
      v157 = 0;
      v81 = 0;
      OUTLINED_FUNCTION_68_8();
      if (*(v158 + 16) >= 2uLL)
      {
        v156 = *(v158 + 8);
        v159 = sub_217751DE8();
        v81 = MEMORY[0x277D837D0];
        v157 = v159;
      }

      v160 = v211;
      *v211 = v156;
      v160[1] = v157;
      goto LABEL_328;
    }

    v161 = qword_280BE6CE8;

    if (v161 != -1)
    {
      OUTLINED_FUNCTION_100_7(&qword_280BE6CE8);
    }

    OUTLINED_FUNCTION_168(qword_280C02320);
    OUTLINED_FUNCTION_128_7();
    if (v161)
    {
      v162 = type metadata accessor for MusicVideoPropertyProvider(0);
      v163 = OUTLINED_FUNCTION_67_8(*(v162 + 140));
      v164 = v212;
      sub_21726A630(v163, v212, v165, v166);
      sub_2177517D8();
      OUTLINED_FUNCTION_73(v164);
      if (!v168)
      {
        goto LABEL_251;
      }

      v102 = &qword_27CB241C0;
      v103 = &qword_217759480;
      v104 = v212;
      goto LABEL_119;
    }

    v167 = qword_280BE6CA0;

    if (v167 != -1)
    {
      OUTLINED_FUNCTION_99_7(&qword_280BE6CA0);
    }

    OUTLINED_FUNCTION_168(qword_280C022F0);
    OUTLINED_FUNCTION_128_7();
    if (v167)
    {
      type metadata accessor for MusicVideoPropertyProvider(0);
      OUTLINED_FUNCTION_193_4();
      v94 = &type metadata for LegacyModelFavoriteStatus;
      v168 = v167 == 3;
      goto LABEL_213;
    }

    v169 = qword_280BE6CC8;

    if (v169 != -1)
    {
      OUTLINED_FUNCTION_97_7(&qword_280BE6CC8);
    }

    OUTLINED_FUNCTION_168(qword_280C02310);
    OUTLINED_FUNCTION_128_7();
    if (v169)
    {
      v87 = *(type metadata accessor for MusicVideoPropertyProvider(0) + 148);
      goto LABEL_100;
    }

    v170 = qword_280BE6C40;

    if (v170 != -1)
    {
      OUTLINED_FUNCTION_96_7(&qword_280BE6C40);
    }

    OUTLINED_FUNCTION_168(qword_280C022B8);
    OUTLINED_FUNCTION_128_7();
    if (v170)
    {
      v87 = *(type metadata accessor for MusicVideoPropertyProvider(0) + 152);
      goto LABEL_100;
    }

    v171 = qword_27CB23DD8;

    if (v171 != -1)
    {
      OUTLINED_FUNCTION_95_8(&qword_27CB23DD8);
    }

    OUTLINED_FUNCTION_168(qword_27CB8A2F0);
    OUTLINED_FUNCTION_128_7();
    if (v171)
    {
      v87 = *(type metadata accessor for MusicVideoPropertyProvider(0) + 156);
      goto LABEL_100;
    }

    v167 = qword_280BE6C38;

    if (v167 != -1)
    {
      OUTLINED_FUNCTION_94_5(&qword_280BE6C38);
    }

    OUTLINED_FUNCTION_168(qword_280C022B0);
    OUTLINED_FUNCTION_128_7();
    if (v167)
    {
      type metadata accessor for MusicVideoPropertyProvider(0);
      OUTLINED_FUNCTION_193_4();
      v94 = &type metadata for LegacyModelKeepLocalEnabledStatus;
      v168 = v167 == 5;
      goto LABEL_213;
    }

    v167 = qword_280BE6C30;

    if (v167 != -1)
    {
      OUTLINED_FUNCTION_93_8(&qword_280BE6C30);
    }

    OUTLINED_FUNCTION_168(qword_280C022A8);
    OUTLINED_FUNCTION_128_7();
    if (v167)
    {
      type metadata accessor for MusicVideoPropertyProvider(0);
      OUTLINED_FUNCTION_193_4();
      v94 = &type metadata for LegacyModelKeepLocalManagedStatus;
      v168 = v167 == 7;
      goto LABEL_213;
    }

    v144 = qword_280BE6C18;

    if (v144 != -1)
    {
      OUTLINED_FUNCTION_92_7(&qword_280BE6C18);
    }

    OUTLINED_FUNCTION_168(qword_280C02298);
    OUTLINED_FUNCTION_128_7();
    if (v144)
    {
      type metadata accessor for MusicVideoPropertyProvider(0);
      OUTLINED_FUNCTION_134_5();
      OUTLINED_FUNCTION_68_8();
      if ((v172[1] & 1) == 0)
      {
        v18 = *v172;
        v144 = &type metadata for LegacyModelKeepLocalManagedStatusReasons;
      }

      goto LABEL_183;
    }

    v173 = qword_280BE6CB8;

    if (v173 != -1)
    {
      OUTLINED_FUNCTION_91_7(&qword_280BE6CB8);
    }

    OUTLINED_FUNCTION_168(qword_280C02308);
    OUTLINED_FUNCTION_128_7();
    if (v173)
    {
      v174 = type metadata accessor for MusicVideoPropertyProvider(0);
      v175 = OUTLINED_FUNCTION_67_8(*(v174 + 172));
      v176 = v213;
      sub_21726A630(v175, v213, v177, v178);
      sub_2177517D8();
      OUTLINED_FUNCTION_73(v176);
      if (!v168)
      {
        goto LABEL_251;
      }

      v102 = &qword_27CB241C0;
      v103 = &qword_217759480;
      v104 = v213;
      goto LABEL_119;
    }

    v179 = qword_280BE6C70;

    if (v179 != -1)
    {
      OUTLINED_FUNCTION_90_8(&qword_280BE6C70);
    }

    OUTLINED_FUNCTION_168(qword_280C022D0);
    OUTLINED_FUNCTION_128_7();
    if (v179)
    {
      v180 = type metadata accessor for MusicVideoPropertyProvider(0);
      v181 = v214;
      sub_21726A630(v215 + *(v180 + 176), v214, &qword_27CB241C0, &qword_217759480);
      sub_2177517D8();
      OUTLINED_FUNCTION_73(v181);
      if (v168)
      {

        v102 = &qword_27CB241C0;
        v103 = &qword_217759480;
        v104 = v214;
        goto LABEL_119;
      }

LABEL_251:
      OUTLINED_FUNCTION_167_5();
      OUTLINED_FUNCTION_58();
      (*(v182 + 32))();

      goto LABEL_124;
    }

    v144 = qword_280BE6B18;

    if (v144 != -1)
    {
      OUTLINED_FUNCTION_89_7(&qword_280BE6B18);
    }

    OUTLINED_FUNCTION_168(qword_280C02238);
    OUTLINED_FUNCTION_128_7();
    if (v144)
    {
      goto LABEL_181;
    }

    v183 = qword_280BE6C50;

    if (v183 != -1)
    {
      OUTLINED_FUNCTION_88_7(&qword_280BE6C50);
    }

    OUTLINED_FUNCTION_168(qword_280C022C0);
    OUTLINED_FUNCTION_128_7();
    if (v183)
    {
      v87 = *(type metadata accessor for MusicVideoPropertyProvider(0) + 184);
      goto LABEL_100;
    }

    v167 = qword_280BE6D78;

    if (v167 != -1)
    {
      OUTLINED_FUNCTION_86_5(&qword_280BE6D78);
    }

    OUTLINED_FUNCTION_168(qword_280C02368);
    OUTLINED_FUNCTION_128_7();
    if (v167)
    {
      type metadata accessor for MusicVideoPropertyProvider(0);
      OUTLINED_FUNCTION_193_4();
      v94 = &type metadata for CloudStatus;
      v168 = v167 == 10;
LABEL_213:
      if (v168)
      {
        v94 = 0;
        v93 = 0;
      }

      else
      {
        v93 = v167;
      }

      goto LABEL_112;
    }

    v144 = qword_280BE6D80;

    if (v144 != -1)
    {
      OUTLINED_FUNCTION_85_7(&qword_280BE6D80);
    }

    OUTLINED_FUNCTION_168(qword_280C02370);
    OUTLINED_FUNCTION_128_7();
    if (v144)
    {
LABEL_267:
      type metadata accessor for MusicVideoPropertyProvider(0);
      OUTLINED_FUNCTION_134_5();
      OUTLINED_FUNCTION_68_8();
      if ((v184[1] & 1) == 0)
      {
        v18 = *v184;
        v144 = MEMORY[0x277D839F8];
      }

      goto LABEL_183;
    }

    v144 = qword_280BE6D40;

    if (v144 != -1)
    {
      OUTLINED_FUNCTION_84_7(&qword_280BE6D40);
    }

    OUTLINED_FUNCTION_168(qword_280C02350);
    OUTLINED_FUNCTION_128_7();
    if (v144)
    {
LABEL_181:
      type metadata accessor for MusicVideoPropertyProvider(0);
      OUTLINED_FUNCTION_134_5();
      OUTLINED_FUNCTION_68_8();
      if ((v145[1] & 1) == 0)
      {
        v18 = *v145;
        v144 = MEMORY[0x277D83B88];
      }

      goto LABEL_183;
    }

    v144 = qword_280BE6BB0;

    if (v144 != -1)
    {
      OUTLINED_FUNCTION_17_0(&qword_280BE6BB0);
    }

    OUTLINED_FUNCTION_168(qword_280BE6BB8);
    OUTLINED_FUNCTION_128_7();
    if (v144)
    {
      v185 = type metadata accessor for MusicVideoPropertyProvider(0);
      v186 = OUTLINED_FUNCTION_67_8(*(v185 + 196));
      sub_21726A630(v186, v220, v187, v188);
      if (*(&v220[5] + 1))
      {
        v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25388, &unk_21775D410);
LABEL_294:
        v18 = swift_allocObject();
        memcpy(v18 + 16, v220, 0x68uLL);
LABEL_183:

LABEL_184:
        v146 = v211;
        *v211 = v18;
        v146[1] = 0;
        v146[2] = 0;
        v146[3] = v144;
        goto LABEL_21;
      }

      v197 = &qword_27CB25318;
      v198 = &qword_2177657C0;
      goto LABEL_312;
    }

    v144 = qword_280BE6DB0;

    if (v144 != -1)
    {
      OUTLINED_FUNCTION_16_21(&qword_280BE6DB0);
    }

    OUTLINED_FUNCTION_168(qword_280C02398);
    OUTLINED_FUNCTION_128_7();
    if (v144)
    {
      v189 = *(type metadata accessor for MusicVideoPropertyProvider(0) + 200);
LABEL_281:
      v190 = OUTLINED_FUNCTION_67_8(v189);
      sub_21726A630(v190, v220, v191, v192);
      if (*(&v220[5] + 1))
      {
        v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25380, &unk_21775DAA0);
        goto LABEL_294;
      }

      v197 = &unk_27CB25338;
      v198 = &unk_21775D3E0;
LABEL_312:
      sub_2171F0738(v220, v197, v198);
      OUTLINED_FUNCTION_134_5();
      goto LABEL_184;
    }

    v144 = qword_280BE6B58;

    if (v144 != -1)
    {
      OUTLINED_FUNCTION_15_7(&qword_280BE6B58);
    }

    OUTLINED_FUNCTION_168(qword_280BE6B60);
    OUTLINED_FUNCTION_128_7();
    if (v144)
    {
      v193 = type metadata accessor for MusicVideoPropertyProvider(0);
      v194 = OUTLINED_FUNCTION_67_8(*(v193 + 204));
      sub_21726A630(v194, v220, v195, v196);
      if (*(&v220[5] + 1))
      {
        v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25398, &unk_21776C4F0);
        goto LABEL_294;
      }

      v197 = &qword_27CB25310;
      v198 = &unk_21775D3D0;
      goto LABEL_312;
    }

    v144 = qword_280BE6B98;

    if (v144 != -1)
    {
      OUTLINED_FUNCTION_14_4(&qword_280BE6B98);
    }

    OUTLINED_FUNCTION_168(qword_280BE6BA0);
    OUTLINED_FUNCTION_128_7();
    if (v144)
    {
      v199 = type metadata accessor for MusicVideoPropertyProvider(0);
      v200 = OUTLINED_FUNCTION_67_8(*(v199 + 208));
      sub_21726A630(v200, v220, v201, v202);
      if (*(&v220[5] + 1))
      {
        v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27C80, &unk_21775D420);
        goto LABEL_294;
      }

      v197 = &unk_27CB25320;
      v198 = &unk_21776E020;
      goto LABEL_312;
    }

    v144 = qword_280BE6B40;

    if (v144 != -1)
    {
      OUTLINED_FUNCTION_13_19(&qword_280BE6B40);
    }

    OUTLINED_FUNCTION_168(qword_280BE6B48);
    OUTLINED_FUNCTION_128_7();
    if (v144)
    {
      v189 = *(type metadata accessor for MusicVideoPropertyProvider(0) + 212);
      goto LABEL_281;
    }

    v144 = qword_280BE6BD8;

    if (v144 != -1)
    {
      OUTLINED_FUNCTION_6_24();
      swift_once();
    }

    OUTLINED_FUNCTION_168(qword_280BE6BE0);
    OUTLINED_FUNCTION_128_7();
    if (v144)
    {
      v203 = type metadata accessor for MusicVideoPropertyProvider(0);
      v204 = OUTLINED_FUNCTION_67_8(*(v203 + 216));
      sub_21726A630(v204, v220, v205, v206);
      if (*(&v220[5] + 1))
      {
        v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27820, &qword_21775DAB0);
        goto LABEL_294;
      }

      v197 = &unk_27CB255A8;
      v198 = &unk_21775D450;
      goto LABEL_312;
    }

    v144 = qword_280BE6D20;

    if (v144 != -1)
    {
      OUTLINED_FUNCTION_5_30();
      swift_once();
    }

    OUTLINED_FUNCTION_168(qword_280BE6D28);
    OUTLINED_FUNCTION_128_7();
    if (v144)
    {
      v189 = *(type metadata accessor for MusicVideoPropertyProvider(0) + 220);
      goto LABEL_281;
    }

    v144 = qword_280BE6D68;

    if (v144 != -1)
    {
      OUTLINED_FUNCTION_4_40();
      swift_once();
    }

    OUTLINED_FUNCTION_168(qword_280BE6D70);
    OUTLINED_FUNCTION_128_7();
    if (v144)
    {
      v189 = *(type metadata accessor for MusicVideoPropertyProvider(0) + 224);
      goto LABEL_281;
    }

    v78 = qword_280BE6C20;

    if (v78 != -1)
    {
      OUTLINED_FUNCTION_3_36();
      swift_once();
    }

    OUTLINED_FUNCTION_168(qword_280C022A0);
    OUTLINED_FUNCTION_128_7();
    if (v78)
    {
      type metadata accessor for MusicVideoPropertyProvider(0);
      OUTLINED_FUNCTION_135_4();
      if (v78)
      {
        v79 = &qword_27CB24C40;
        v80 = &qword_217759640;
        goto LABEL_86;
      }

      goto LABEL_326;
    }

    v144 = qword_280BE6D90;

    if (v144 != -1)
    {
      OUTLINED_FUNCTION_2_37();
      swift_once();
    }

    OUTLINED_FUNCTION_168(qword_280C02378);
    OUTLINED_FUNCTION_128_7();
    if (v144)
    {
      goto LABEL_267;
    }

    v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB254B0, &unk_21775D5A0);
    OUTLINED_FUNCTION_31_11(v207);
    v208 = OUTLINED_FUNCTION_54_0();
    OUTLINED_FUNCTION_168(v208);
    OUTLINED_FUNCTION_5_4();

    *&v220[0] = sub_21770B54C(24);
    *(&v220[0] + 1) = v209;
    MEMORY[0x21CEA23B0](0xD000000000000015, 0x80000002177ABD50);
    v219[0] = v216;
    type metadata accessor for AnyMusicProperty();
    sub_217752C78();
    OUTLINED_FUNCTION_217_0();
    OUTLINED_FUNCTION_184_3();
    v154 = 220;
LABEL_196:
    v210 = v154;
    OUTLINED_FUNCTION_142_7("Fatal error");
    __break(1u);
    goto LABEL_251;
  }

  v83 = *(v215 + *(type metadata accessor for MusicVideoPropertyProvider(0) + 68));
LABEL_101:

  v88 = v83 & 1;
  v89 = MEMORY[0x277D839B0];
LABEL_102:
  if (v83 == 2)
  {
    v89 = 0;
  }

  v90 = v211;
  *v211 = v88;
  v90[1] = 0;
  v90[2] = 0;
  v90[3] = v89;
LABEL_21:
  OUTLINED_FUNCTION_13();
}

uint64_t sub_21739898C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  sub_21726A630(a1, v5, &qword_27CB2AD40, &qword_2177583F0);

  return MusicVideoPropertyProvider.subscript.setter(v5, v3);
}

uint64_t MusicVideoPropertyProvider.subscript.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26A40, &qword_2177657C8);
  if (!swift_dynamicCastClass())
  {
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD00000000000002ALL, 0x80000002177AC510);
    type metadata accessor for AnyMusicProperty();
    sub_217752C78();
    OUTLINED_FUNCTION_217_0();
    goto LABEL_76;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25658, &unk_2177657D0);
  swift_initStackObject();
  v5 = OUTLINED_FUNCTION_53_11();
  OUTLINED_FUNCTION_139_7(v5);
  OUTLINED_FUNCTION_5_4();
  swift_retain_n();

  if (v2)
  {
    swift_getKeyPath(byte_217765A18);
    goto LABEL_4;
  }

  v7 = qword_280BE6D18;

  if (v7 != -1)
  {
    OUTLINED_FUNCTION_18_19(&qword_280BE6D18);
  }

  OUTLINED_FUNCTION_139_7(qword_280C02340);
  OUTLINED_FUNCTION_5_4();

  if ((v7 & 1) == 0)
  {
    v8 = qword_280BE6C60;

    if (v8 != -1)
    {
      OUTLINED_FUNCTION_12_18(&qword_280BE6C60);
    }

    OUTLINED_FUNCTION_139_7(qword_280C022C8);
    OUTLINED_FUNCTION_5_4();

    if (v8)
    {
      swift_getKeyPath(byte_2177659D8);
      OUTLINED_FUNCTION_79_1();
      sub_217351C74(v9, v10);
      goto LABEL_5;
    }

    v12 = qword_280BE6DC0;

    if (v12 != -1)
    {
      OUTLINED_FUNCTION_11_26(&qword_280BE6DC0);
    }

    OUTLINED_FUNCTION_139_7(qword_280C023A0);
    OUTLINED_FUNCTION_5_4();

    if (v12)
    {
      swift_getKeyPath(byte_2177659B8);
      OUTLINED_FUNCTION_79_1();
      sub_217351C78(v13, v14);
      goto LABEL_5;
    }

    v15 = qword_280BE6D08;

    if (v15 != -1)
    {
      OUTLINED_FUNCTION_21_16(&qword_280BE6D08);
    }

    OUTLINED_FUNCTION_139_7(qword_280C02338);
    OUTLINED_FUNCTION_5_4();

    if ((v15 & 1) == 0)
    {
      v16 = qword_280BE6B78;

      if (v16 != -1)
      {
        OUTLINED_FUNCTION_20_1(&qword_280BE6B78);
      }

      OUTLINED_FUNCTION_139_7(qword_280C02268);
      OUTLINED_FUNCTION_5_4();

      if (v16)
      {
        swift_getKeyPath("\bZ=e");
        OUTLINED_FUNCTION_79_1();
        sub_217351C7C();
      }

      else
      {
        v17 = qword_280BE6B70;

        if (v17 != -1)
        {
          OUTLINED_FUNCTION_19_11(&qword_280BE6B70);
        }

        OUTLINED_FUNCTION_139_7(qword_280C02260);
        OUTLINED_FUNCTION_5_4();

        if (v17)
        {
          swift_getKeyPath(" Z=e");
          OUTLINED_FUNCTION_79_1();
          sub_217351C80(v18, v19);
        }

        else
        {
          v20 = qword_280BE6BB0;

          if (v20 != -1)
          {
            OUTLINED_FUNCTION_17_0(&qword_280BE6BB0);
          }

          OUTLINED_FUNCTION_139_7(qword_280BE6BB8);
          OUTLINED_FUNCTION_5_4();

          if (v20)
          {
            swift_getKeyPath("8Z=e");
            OUTLINED_FUNCTION_79_1();
            sub_217351CA0(v21, v22);
          }

          else
          {
            v23 = qword_280BE6B58;

            if (v23 != -1)
            {
              OUTLINED_FUNCTION_15_7(&qword_280BE6B58);
            }

            OUTLINED_FUNCTION_139_7(qword_280BE6B60);
            OUTLINED_FUNCTION_5_4();

            if (v23)
            {
              swift_getKeyPath("PZ=e");
              OUTLINED_FUNCTION_79_1();
              sub_217351CA8(v24, v25);
            }

            else
            {
              v26 = qword_280BE6DB0;

              if (v26 != -1)
              {
                OUTLINED_FUNCTION_16_21(&qword_280BE6DB0);
              }

              OUTLINED_FUNCTION_139_7(qword_280C02398);
              OUTLINED_FUNCTION_5_4();

              if (v26)
              {
                swift_getKeyPath("hZ=e");
              }

              else
              {
                v29 = qword_280BE6B98;

                if (v29 != -1)
                {
                  OUTLINED_FUNCTION_14_4(&qword_280BE6B98);
                }

                OUTLINED_FUNCTION_139_7(qword_280BE6BA0);
                OUTLINED_FUNCTION_5_4();

                if (v29)
                {
                  swift_getKeyPath(byte_2177658D8);
                  OUTLINED_FUNCTION_79_1();
                  sub_217351CA4(v30, v31);
                  goto LABEL_5;
                }

                v32 = qword_280BE6B40;

                if (v32 != -1)
                {
                  OUTLINED_FUNCTION_13_19(&qword_280BE6B40);
                }

                OUTLINED_FUNCTION_139_7(qword_280BE6B48);
                OUTLINED_FUNCTION_5_4();

                if (v32)
                {
                  swift_getKeyPath(byte_2177658B8);
                }

                else
                {
                  v33 = qword_280BE6BD8;

                  if (v33 != -1)
                  {
                    OUTLINED_FUNCTION_6_24();
                    swift_once();
                  }

                  OUTLINED_FUNCTION_139_7(qword_280BE6BE0);
                  OUTLINED_FUNCTION_5_4();

                  if (v33)
                  {
                    swift_getKeyPath(byte_217765898);
                    OUTLINED_FUNCTION_79_1();
                    sub_217351CAC(v34, v35);
                    goto LABEL_5;
                  }

                  v36 = qword_280BE6D20;

                  if (v36 != -1)
                  {
                    OUTLINED_FUNCTION_5_30();
                    swift_once();
                  }

                  OUTLINED_FUNCTION_139_7(qword_280BE6D28);
                  OUTLINED_FUNCTION_5_4();

                  if (v36)
                  {
                    swift_getKeyPath(byte_217765878);
                  }

                  else
                  {
                    v37 = qword_280BE6D68;

                    if (v37 != -1)
                    {
                      OUTLINED_FUNCTION_4_40();
                      swift_once();
                    }

                    OUTLINED_FUNCTION_139_7(qword_280BE6D70);
                    OUTLINED_FUNCTION_5_4();

                    if ((v37 & 1) == 0)
                    {
                      v38 = qword_280BE6C20;

                      if (v38 != -1)
                      {
                        OUTLINED_FUNCTION_3_36();
                        swift_once();
                      }

                      OUTLINED_FUNCTION_139_7(qword_280C022A0);
                      OUTLINED_FUNCTION_5_4();

                      if (v38)
                      {
                        swift_getKeyPath(byte_217765838);
                        OUTLINED_FUNCTION_79_1();
                        sub_217351C84(v39, v40);
                      }

                      else
                      {
                        v41 = qword_280BE6D90;

                        if (v41 != -1)
                        {
                          OUTLINED_FUNCTION_2_37();
                          swift_once();
                        }

                        OUTLINED_FUNCTION_139_7(qword_280C02378);
                        OUTLINED_FUNCTION_5_4();

                        if ((v41 & 1) == 0)
                        {
                          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB254B0, &unk_21775D5A0);
                          swift_initStackObject();
                          v44 = OUTLINED_FUNCTION_54_0();
                          OUTLINED_FUNCTION_139_7(v44);
                          OUTLINED_FUNCTION_5_4();

                          while (1)
                          {
                            sub_217752AA8();
                            MEMORY[0x21CEA23B0](0xD00000000000001BLL, 0x80000002177AC540);
                            type metadata accessor for AnyMusicProperty();
                            sub_217752C78();
                            OUTLINED_FUNCTION_217_0();
LABEL_76:
                            OUTLINED_FUNCTION_142_7("Fatal error");
                            __break(1u);
                          }
                        }

                        swift_getKeyPath(byte_217765818);
                        OUTLINED_FUNCTION_79_1();
                        sub_217351C88(v42, v43);
                      }

                      goto LABEL_5;
                    }

                    swift_getKeyPath(byte_217765858);
                  }
                }
              }

              OUTLINED_FUNCTION_79_1();
              sub_217351CB0(v27, v28);
            }
          }
        }
      }

LABEL_5:

LABEL_6:

      return sub_2171F0738(a1, &qword_27CB2AD40, &qword_2177583F0);
    }

    swift_getKeyPath(byte_217765998);
LABEL_4:
    OUTLINED_FUNCTION_79_1();
    sub_217351C70();
    goto LABEL_5;
  }

  if (*(v3 + *(type metadata accessor for MusicVideoPropertyProvider(0) + 96) + 16) != 1)
  {
    KeyPath = swift_getKeyPath(byte_2177659F8);
    sub_217399204(KeyPath, a1);

    goto LABEL_6;
  }

  sub_2171F0738(a1, &qword_27CB2AD40, &qword_2177583F0);
}

uint64_t sub_217399204(uint64_t a1, uint64_t a2)
{
  sub_21726A630(a2, v3, &qword_27CB2AD40, &qword_2177583F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2AD40, &qword_2177583F0);
  swift_dynamicCast();
  return swift_setAtWritableKeyPath();
}

void (*MusicVideoPropertyProvider.subscript.modify(void *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v5;
  v5[8] = a2;
  v5[9] = v2;
  MusicVideoPropertyProvider.subscript.getter();
  return sub_217399308;
}

void sub_217399308(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 64);
  if (a2)
  {
    OUTLINED_FUNCTION_250();

    MusicVideoPropertyProvider.subscript.setter(v2 + 32, v3);
    sub_2171F0738(v2, &qword_27CB2AD40, &qword_2177583F0);
  }

  else
  {

    MusicVideoPropertyProvider.subscript.setter(v2, v3);
  }

  free(v2);
}

void MusicVideoPropertyProvider.merge<A>(_:with:)()
{
  OUTLINED_FUNCTION_12();
  v77 = v0;
  v3 = v2;
  v5 = v4;
  v6 = *v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v8 = OUTLINED_FUNCTION_45_0(v7);
  MEMORY[0x28223BE20](v8);
  v10 = &v78[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v78[-1] - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26A48, &qword_217765A38);
  v15 = OUTLINED_FUNCTION_45_0(v14);
  MEMORY[0x28223BE20](v15);
  v17 = &v78[-1] - v16;
  v18 = type metadata accessor for MusicVideoPropertyProvider(0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v19);
  v21 = &v78[-1] - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26A50, qword_217765A40);
  v22 = swift_dynamicCastClass();
  if (!v22)
  {
    OUTLINED_FUNCTION_152_6();
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD000000000000030, 0x80000002177AC560);
    v78[0] = v5;
    type metadata accessor for PartialMusicAsyncProperty(0, *(v6 + 216), v72, v73);
    sub_217753018();
    OUTLINED_FUNCTION_217_0();
    OUTLINED_FUNCTION_153_4();
    v74 = 278;
    goto LABEL_124;
  }

  v1 = v22;
  sub_2171FF30C(v3, v80);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24B38, &unk_21776C4E0);
  if (!swift_dynamicCast())
  {
    v75 = OUTLINED_FUNCTION_181();
    __swift_storeEnumTagSinglePayload(v75, v76, 1, v18);
    sub_2171F0738(v17, &qword_27CB26A48, &qword_217765A38);
    OUTLINED_FUNCTION_152_6();
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD000000000000033, 0x80000002177AC5A0);
    sub_217752C78();
    OUTLINED_FUNCTION_217_0();
    OUTLINED_FUNCTION_153_4();
    v74 = 281;
    goto LABEL_124;
  }

  __swift_storeEnumTagSinglePayload(v17, 0, 1, v18);
  sub_21739EF44(v17, v21);
  v23 = qword_280BE6D18;

  if (v23 != -1)
  {
    OUTLINED_FUNCTION_18_19(&qword_280BE6D18);
  }

  OUTLINED_FUNCTION_168(qword_280C02340);
  OUTLINED_FUNCTION_140_7();
  if (v23)
  {
    OUTLINED_FUNCTION_188_4();
    if (*(v25 + v24 + 16) == 1)
    {
      sub_21739EFA8(v21);
    }

    else
    {
      KeyPath = swift_getKeyPath(byte_2177659F8);
      sub_21739A2C4(KeyPath, *&v21[v18[24]], *&v21[v18[24] + 8], *&v21[v18[24] + 16]);

      sub_21739EFA8(v21);
    }

    goto LABEL_20;
  }

  v26 = qword_280BE6C60;

  if (v26 != -1)
  {
    OUTLINED_FUNCTION_12_18(&qword_280BE6C60);
  }

  OUTLINED_FUNCTION_168(qword_280C022C8);
  OUTLINED_FUNCTION_140_7();
  if (v26)
  {

    OUTLINED_FUNCTION_179_2();
    sub_21739EFA8(v21);
    v27 = v18[13];
LABEL_17:
    v29 = v77;
    if (!v26)
    {
      v26 = sub_217751DE8();
    }

    *(v29 + v27) = v26;
    goto LABEL_20;
  }

  v26 = qword_280BE6DC0;

  if (v26 != -1)
  {
    OUTLINED_FUNCTION_11_26(&qword_280BE6DC0);
  }

  OUTLINED_FUNCTION_168(qword_280C023A0);
  OUTLINED_FUNCTION_140_7();
  if (v26)
  {

    OUTLINED_FUNCTION_179_2();
    sub_21739EFA8(v21);
    v27 = v18[15];
    goto LABEL_17;
  }

  v30 = qword_280BE6D08;

  if (v30 != -1)
  {
    OUTLINED_FUNCTION_21_16(&qword_280BE6D08);
  }

  OUTLINED_FUNCTION_168(qword_280C02338);
  OUTLINED_FUNCTION_140_7();
  if (v30)
  {

    sub_21726A630(&v21[v18[20]], v10, &unk_27CB277C0, &qword_217758DC0);
    sub_21739EFA8(v21);
    v31 = sub_2177516D8();
    OUTLINED_FUNCTION_133(v10, 1, v31);
    if (v32)
    {
      v44 = v77;
      sub_21726A630(v77 + v18[20], v13, &unk_27CB277C0, &qword_217758DC0);
      OUTLINED_FUNCTION_133(v10, 1, v31);
      if (!v32)
      {
        sub_2171F0738(v10, &unk_27CB277C0, &qword_217758DC0);
      }
    }

    else
    {
      (*(*(v31 - 8) + 32))(v13, v10, v31);
      __swift_storeEnumTagSinglePayload(v13, 0, 1, v31);
      v44 = v77;
    }

    v45 = &unk_27CB277C0;
    v46 = &qword_217758DC0;
    v47 = v44 + v18[20];
    v48 = v13;
    goto LABEL_34;
  }

  v33 = qword_280BE6B78;

  if (v33 != -1)
  {
    OUTLINED_FUNCTION_20_1(&qword_280BE6B78);
  }

  OUTLINED_FUNCTION_168(qword_280C02268);
  OUTLINED_FUNCTION_140_7();
  if (v33)
  {

    v34 = &v21[v18[24]];
    v35 = *v34;
    v36 = v34[1];
    v37 = v34[2];
    v38 = OUTLINED_FUNCTION_93();
    sub_21739AF10(v38, v39, v37);
    sub_21739EFA8(v21);
    v40 = v77;
    if (v37 == 1)
    {
      v41 = (v77 + v18[24]);
      v35 = *v41;
      v36 = v41[1];
      v37 = v41[2];
      v42 = OUTLINED_FUNCTION_93();
      sub_21739AF10(v42, v43, v37);
    }

    v49 = (v40 + v18[24]);
    sub_21733B290(*v49, v49[1], v49[2]);
    *v49 = v35;
    v49[1] = v36;
    v49[2] = v37;
    goto LABEL_20;
  }

  v26 = qword_280BE6B70;

  if (v26 != -1)
  {
    OUTLINED_FUNCTION_19_11(&qword_280BE6B70);
  }

  OUTLINED_FUNCTION_168(qword_280C02260);
  OUTLINED_FUNCTION_140_7();
  if (v26)
  {

    OUTLINED_FUNCTION_179_2();
    sub_21739EFA8(v21);
    v27 = v18[26];
    goto LABEL_17;
  }

  v50 = qword_280BE6BB0;

  if (v50 != -1)
  {
    OUTLINED_FUNCTION_17_0(&qword_280BE6BB0);
  }

  OUTLINED_FUNCTION_168(qword_280BE6BB8);
  OUTLINED_FUNCTION_140_7();
  if (v50)
  {

    OUTLINED_FUNCTION_156_6(&qword_27CB25318, &qword_2177657C0, v18[49]);
    sub_21739EFA8(v21);
    if (v79)
    {
      OUTLINED_FUNCTION_63_11();
      OUTLINED_FUNCTION_132_6();
    }

    else
    {
      OUTLINED_FUNCTION_41_12(&qword_27CB25318, &qword_2177657C0, v18[49]);
      if (v79)
      {
        sub_2171F0738(v78, &qword_27CB25318, &qword_2177657C0);
      }
    }

    v51 = v18[49];
    v45 = &qword_27CB25318;
    v46 = &qword_2177657C0;
    goto LABEL_83;
  }

  v50 = qword_280BE6DB0;

  if (v50 != -1)
  {
    OUTLINED_FUNCTION_16_21(&qword_280BE6DB0);
  }

  OUTLINED_FUNCTION_168(qword_280C02398);
  OUTLINED_FUNCTION_140_7();
  if (v50)
  {

    OUTLINED_FUNCTION_156_6(&qword_27CB25338, &unk_21775D3E0, v18[50]);
    sub_21739EFA8(v21);
    if (v79)
    {
      OUTLINED_FUNCTION_63_11();
      OUTLINED_FUNCTION_132_6();
    }

    else
    {
      OUTLINED_FUNCTION_41_12(&qword_27CB25338, &unk_21775D3E0, v18[50]);
      if (v79)
      {
        sub_2171F0738(v78, &qword_27CB25338, &unk_21775D3E0);
      }
    }

    v51 = v18[50];
LABEL_66:
    v45 = &qword_27CB25338;
    v46 = &unk_21775D3E0;
LABEL_83:
    v48 = v80;
    v47 = v50 + v51;
LABEL_34:
    sub_21733BBDC(v48, v47, v45, v46);
    goto LABEL_20;
  }

  v50 = qword_280BE6B58;

  if (v50 != -1)
  {
    OUTLINED_FUNCTION_15_7(&qword_280BE6B58);
  }

  OUTLINED_FUNCTION_168(qword_280BE6B60);
  OUTLINED_FUNCTION_140_7();
  if (v50)
  {

    OUTLINED_FUNCTION_156_6(&qword_27CB25310, &unk_21775D3D0, v18[51]);
    sub_21739EFA8(v21);
    if (v79)
    {
      OUTLINED_FUNCTION_63_11();
      OUTLINED_FUNCTION_132_6();
    }

    else
    {
      OUTLINED_FUNCTION_41_12(&qword_27CB25310, &unk_21775D3D0, v18[51]);
      if (v79)
      {
        sub_2171F0738(v78, &qword_27CB25310, &unk_21775D3D0);
      }
    }

    v51 = v18[51];
    v45 = &qword_27CB25310;
    v46 = &unk_21775D3D0;
    goto LABEL_83;
  }

  v50 = qword_280BE6B98;

  if (v50 != -1)
  {
    OUTLINED_FUNCTION_14_4(&qword_280BE6B98);
  }

  OUTLINED_FUNCTION_168(qword_280BE6BA0);
  OUTLINED_FUNCTION_140_7();
  if (v50)
  {

    OUTLINED_FUNCTION_156_6(&qword_27CB25320, &unk_21776E020, v18[52]);
    sub_21739EFA8(v21);
    if (v79)
    {
      OUTLINED_FUNCTION_63_11();
      OUTLINED_FUNCTION_132_6();
    }

    else
    {
      OUTLINED_FUNCTION_41_12(&qword_27CB25320, &unk_21776E020, v18[52]);
      if (v79)
      {
        sub_2171F0738(v78, &qword_27CB25320, &unk_21776E020);
      }
    }

    v51 = v18[52];
    v45 = &qword_27CB25320;
    v46 = &unk_21776E020;
    goto LABEL_83;
  }

  v50 = qword_280BE6B40;

  if (v50 != -1)
  {
    OUTLINED_FUNCTION_13_19(&qword_280BE6B40);
  }

  OUTLINED_FUNCTION_168(qword_280BE6B48);
  OUTLINED_FUNCTION_140_7();
  if (v50)
  {

    OUTLINED_FUNCTION_156_6(&qword_27CB25338, &unk_21775D3E0, v18[53]);
    sub_21739EFA8(v21);
    if (v79)
    {
      OUTLINED_FUNCTION_63_11();
      OUTLINED_FUNCTION_132_6();
    }

    else
    {
      OUTLINED_FUNCTION_41_12(&qword_27CB25338, &unk_21775D3E0, v18[53]);
      if (v79)
      {
        sub_2171F0738(v78, &qword_27CB25338, &unk_21775D3E0);
      }
    }

    v51 = v18[53];
    goto LABEL_66;
  }

  v50 = qword_280BE6BD8;

  if (v50 != -1)
  {
    OUTLINED_FUNCTION_6_24();
    swift_once();
  }

  OUTLINED_FUNCTION_168(qword_280BE6BE0);
  OUTLINED_FUNCTION_140_7();
  if (v50)
  {

    OUTLINED_FUNCTION_156_6(&qword_27CB255A8, &unk_21775D450, v18[54]);
    sub_21739EFA8(v21);
    if (v79)
    {
      OUTLINED_FUNCTION_63_11();
      OUTLINED_FUNCTION_132_6();
    }

    else
    {
      OUTLINED_FUNCTION_41_12(&qword_27CB255A8, &unk_21775D450, v18[54]);
      if (v79)
      {
        sub_2171F0738(v78, &qword_27CB255A8, &unk_21775D450);
      }
    }

    v51 = v18[54];
    v45 = &qword_27CB255A8;
    v46 = &unk_21775D450;
    goto LABEL_83;
  }

  v50 = qword_280BE6D20;

  if (v50 != -1)
  {
    OUTLINED_FUNCTION_5_30();
    swift_once();
  }

  OUTLINED_FUNCTION_168(qword_280BE6D28);
  OUTLINED_FUNCTION_140_7();
  if (v50)
  {

    OUTLINED_FUNCTION_156_6(&qword_27CB25338, &unk_21775D3E0, v18[55]);
    sub_21739EFA8(v21);
    if (v79)
    {
      OUTLINED_FUNCTION_63_11();
      OUTLINED_FUNCTION_132_6();
    }

    else
    {
      OUTLINED_FUNCTION_41_12(&qword_27CB25338, &unk_21775D3E0, v18[55]);
      if (v79)
      {
        sub_2171F0738(v78, &qword_27CB25338, &unk_21775D3E0);
      }
    }

    v51 = v18[55];
    goto LABEL_66;
  }

  v52 = qword_280BE6D68;

  if (v52 != -1)
  {
    OUTLINED_FUNCTION_4_40();
    swift_once();
  }

  OUTLINED_FUNCTION_168(qword_280BE6D70);
  OUTLINED_FUNCTION_140_7();
  if (v52)
  {

    OUTLINED_FUNCTION_156_6(&qword_27CB25338, &unk_21775D3E0, v18[56]);
    sub_21739EFA8(v21);
    if (v79)
    {
      OUTLINED_FUNCTION_63_11();
    }

    else
    {
      OUTLINED_FUNCTION_188_4();
      sub_21726A630(v64 + v63, v80, v65, v66);
      if (v79)
      {
        sub_2171F0738(v78, &qword_27CB25338, &unk_21775D3E0);
      }
    }

    OUTLINED_FUNCTION_188_4();
    v47 = v68 + v67;
    goto LABEL_34;
  }

  v53 = qword_280BE6C20;

  if (v53 != -1)
  {
    OUTLINED_FUNCTION_3_36();
    swift_once();
  }

  OUTLINED_FUNCTION_168(qword_280C022A0);
  OUTLINED_FUNCTION_140_7();
  if (v53)
  {

    OUTLINED_FUNCTION_179_2();
    sub_21739EFA8(v21);
    v54 = v18[57];
  }

  else
  {
    v55 = qword_280BE6D90;

    if (v55 != -1)
    {
      OUTLINED_FUNCTION_2_37();
      swift_once();
    }

    OUTLINED_FUNCTION_168(qword_280C02378);
    OUTLINED_FUNCTION_140_7();
    if (v55)
    {

      v56 = &v21[v18[58]];
      v57 = *v56;
      v58 = v56[8];
      sub_21739EFA8(v21);
      v59 = v18[58];
      if (v58 == 1)
      {
        OUTLINED_FUNCTION_188_4();
        v61 = (v60 + v59);
        v57 = *v61;
        v62 = *(v61 + 8);
      }

      else
      {
        v62 = 0;
      }

      v71 = v77 + v59;
      *v71 = v57;
      *(v71 + 8) = v62;
      goto LABEL_20;
    }

    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB254B0, &unk_21775D5A0);
    OUTLINED_FUNCTION_31_11(v69);
    v53 = OUTLINED_FUNCTION_54_0();
    v70 = OUTLINED_FUNCTION_168(v53);

    if ((v70 & 1) == 0)
    {
      while (1)
      {
        OUTLINED_FUNCTION_152_6();
        sub_217752AA8();
        MEMORY[0x21CEA23B0](0xD000000000000027, 0x80000002177AC5E0);
        v78[0] = v1;
        sub_217752C78();
        OUTLINED_FUNCTION_217_0();
        OUTLINED_FUNCTION_153_4();
        v74 = 324;
LABEL_124:
        v77 = v74;
        OUTLINED_FUNCTION_142_7("Fatal error");
        __break(1u);
      }
    }

    OUTLINED_FUNCTION_179_2();
    sub_21739EFA8(v21);
    v54 = v18[59];
  }

  if (!v53)
  {
    v53 = sub_217751DE8();
  }

  *(v77 + v54) = v53;
LABEL_20:
  OUTLINED_FUNCTION_13();
}

double sub_21739A2C4(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_readAtKeyPath();
  v10 = *v8;
  v9 = v8[1];
  sub_217751DE8();
  v7(&v14, 0);
  if (a4 != 1)
  {
    LOWORD(v14) = a2;
    BYTE2(v14) = BYTE2(a2);
    v15 = a3;
    v16 = a4;
    sub_217751DE8();
    swift_getAtKeyPath();

    if (v13)
    {
      v10 = v12;

      v9 = v13;
    }
  }

  v14 = v10;
  v15 = v9;
  sub_217751DE8();
  swift_setAtWritableKeyPath();
}

uint64_t sub_21739A3CC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB275A0, &qword_217757BC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2177657B0;
  if (qword_280BE6B50 != -1)
  {
    OUTLINED_FUNCTION_82_7(&qword_280BE6B50);
  }

  *(v0 + 32) = qword_280C02258;
  v1 = qword_27CB23DE8;

  if (v1 != -1)
  {
    OUTLINED_FUNCTION_81_8(&qword_27CB23DE8);
  }

  *(v0 + 40) = qword_27CB8A300;
  v2 = qword_280BE6DA8;

  if (v2 != -1)
  {
    OUTLINED_FUNCTION_79_9(&qword_280BE6DA8);
  }

  *(v0 + 48) = qword_280C02390;
  v3 = qword_27CB23DE0;

  if (v3 != -1)
  {
    OUTLINED_FUNCTION_78_5(&qword_27CB23DE0);
  }

  *(v0 + 56) = qword_27CB8A2F8;
  v4 = qword_280BE6DA0;

  if (v4 != -1)
  {
    OUTLINED_FUNCTION_77(&qword_280BE6DA0);
  }

  *(v0 + 64) = qword_280C02388;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25658, &unk_2177657D0);
  OUTLINED_FUNCTION_31_11(v5);
  *(v0 + 72) = OUTLINED_FUNCTION_53_11();
  v6 = qword_280BE6D38;

  if (v6 != -1)
  {
    OUTLINED_FUNCTION_76_7(&qword_280BE6D38);
  }

  *(v0 + 80) = qword_280C02348;
  v7 = qword_280BE6D00;

  if (v7 != -1)
  {
    OUTLINED_FUNCTION_75_6(&qword_280BE6D00);
  }

  *(v0 + 88) = qword_280C02330;
  v8 = qword_280BE6B38;

  if (v8 != -1)
  {
    OUTLINED_FUNCTION_74_7(&qword_280BE6B38);
  }

  *(v0 + 96) = qword_280C02250;
  v9 = qword_280BE6C60;

  if (v9 != -1)
  {
    OUTLINED_FUNCTION_12_18(&qword_280BE6C60);
  }

  *(v0 + 104) = qword_280C022C8;
  v10 = qword_280BE6CD8;

  if (v10 != -1)
  {
    OUTLINED_FUNCTION_73_1(&qword_280BE6CD8);
  }

  *(v0 + 112) = qword_280C02318;
  v11 = qword_280BE6DC0;

  if (v11 != -1)
  {
    OUTLINED_FUNCTION_11_26(&qword_280BE6DC0);
  }

  *(v0 + 120) = qword_280C023A0;
  v12 = qword_280BE6D98;

  if (v12 != -1)
  {
    OUTLINED_FUNCTION_72_8(&qword_280BE6D98);
  }

  *(v0 + 128) = qword_280C02380;
  v13 = qword_280BE6BF0;

  if (v13 != -1)
  {
    OUTLINED_FUNCTION_117_9(&qword_280BE6BF0);
  }

  *(v0 + 136) = qword_280C02280;
  v14 = qword_280BE6C90;

  if (v14 != -1)
  {
    OUTLINED_FUNCTION_116_9(&qword_280BE6C90);
  }

  *(v0 + 144) = qword_280C022E8;
  v15 = qword_280BE6B88;

  if (v15 != -1)
  {
    OUTLINED_FUNCTION_115_5(&qword_280BE6B88);
  }

  *(v0 + 152) = qword_280C02270;
  v16 = qword_280BE6C80;

  if (v16 != -1)
  {
    OUTLINED_FUNCTION_114_4(&qword_280BE6C80);
  }

  *(v0 + 160) = qword_280C022D8;
  v17 = qword_280BE6D08;

  if (v17 != -1)
  {
    OUTLINED_FUNCTION_21_16(&qword_280BE6D08);
  }

  *(v0 + 168) = qword_280C02338;
  v18 = qword_280BE6B20;

  if (v18 != -1)
  {
    OUTLINED_FUNCTION_113_7(&qword_280BE6B20);
  }

  *(v0 + 176) = qword_280C02240;
  v19 = qword_280BE6BF8;

  if (v19 != -1)
  {
    OUTLINED_FUNCTION_112_8(&qword_280BE6BF8);
  }

  *(v0 + 184) = qword_280C02288;
  v20 = qword_280BE6CB0;

  if (v20 != -1)
  {
    OUTLINED_FUNCTION_111_8(&qword_280BE6CB0);
  }

  *(v0 + 192) = qword_280C02300;
  v21 = qword_280BE6B78;

  if (v21 != -1)
  {
    OUTLINED_FUNCTION_20_1(&qword_280BE6B78);
  }

  *(v0 + 200) = qword_280C02268;
  v22 = qword_280BE6C88;

  if (v22 != -1)
  {
    OUTLINED_FUNCTION_109_6(&qword_280BE6C88);
  }

  *(v0 + 208) = qword_280C022E0;
  v23 = qword_280BE6B70;

  if (v23 != -1)
  {
    OUTLINED_FUNCTION_19_11(&qword_280BE6B70);
  }

  *(v0 + 216) = qword_280C02260;
  v24 = qword_280BE6CA8;

  if (v24 != -1)
  {
    OUTLINED_FUNCTION_108_7(&qword_280BE6CA8);
  }

  *(v0 + 224) = qword_280C022F8;
  v25 = qword_280BE6CF0;

  if (v25 != -1)
  {
    OUTLINED_FUNCTION_107_6(&qword_280BE6CF0);
  }

  *(v0 + 232) = qword_280C02328;
  v26 = qword_280BE6D58;

  if (v26 != -1)
  {
    OUTLINED_FUNCTION_106_5(&qword_280BE6D58);
  }

  *(v0 + 240) = qword_280C02360;
  v27 = qword_280BE6BC8;

  if (v27 != -1)
  {
    OUTLINED_FUNCTION_105_1(&qword_280BE6BC8);
  }

  *(v0 + 248) = qword_280C02278;
  v28 = qword_280BE6D50;

  if (v28 != -1)
  {
    OUTLINED_FUNCTION_104_5(&qword_280BE6D50);
  }

  *(v0 + 256) = qword_280C02358;
  v29 = qword_280BE6C08;

  if (v29 != -1)
  {
    OUTLINED_FUNCTION_103_7(&qword_280BE6C08);
  }

  *(v0 + 264) = qword_280C02290;
  v30 = qword_280BE6B30;

  if (v30 != -1)
  {
    OUTLINED_FUNCTION_102_7(&qword_280BE6B30);
  }

  *(v0 + 272) = qword_280C02248;
  v31 = qword_280BE6D18;

  if (v31 != -1)
  {
    OUTLINED_FUNCTION_18_19(&qword_280BE6D18);
  }

  *(v0 + 280) = qword_280C02340;
  v32 = qword_280BE6CE8;

  if (v32 != -1)
  {
    OUTLINED_FUNCTION_100_7(&qword_280BE6CE8);
  }

  *(v0 + 288) = qword_280C02320;
  v33 = qword_280BE6CA0;

  if (v33 != -1)
  {
    OUTLINED_FUNCTION_99_7(&qword_280BE6CA0);
  }

  *(v0 + 296) = qword_280C022F0;
  v34 = qword_280BE6CC8;

  if (v34 != -1)
  {
    OUTLINED_FUNCTION_97_7(&qword_280BE6CC8);
  }

  *(v0 + 304) = qword_280C02310;
  v35 = qword_280BE6C40;

  if (v35 != -1)
  {
    OUTLINED_FUNCTION_96_7(&qword_280BE6C40);
  }

  *(v0 + 312) = qword_280C022B8;
  v36 = qword_27CB23DD8;

  if (v36 != -1)
  {
    OUTLINED_FUNCTION_95_8(&qword_27CB23DD8);
  }

  *(v0 + 320) = qword_27CB8A2F0;
  v37 = qword_280BE6C38;

  if (v37 != -1)
  {
    OUTLINED_FUNCTION_94_5(&qword_280BE6C38);
  }

  *(v0 + 328) = qword_280C022B0;
  v38 = qword_280BE6C30;

  if (v38 != -1)
  {
    OUTLINED_FUNCTION_93_8(&qword_280BE6C30);
  }

  *(v0 + 336) = qword_280C022A8;
  v39 = qword_280BE6C18;

  if (v39 != -1)
  {
    OUTLINED_FUNCTION_92_7(&qword_280BE6C18);
  }

  *(v0 + 344) = qword_280C02298;
  v40 = qword_280BE6CB8;

  if (v40 != -1)
  {
    OUTLINED_FUNCTION_91_7(&qword_280BE6CB8);
  }

  *(v0 + 352) = qword_280C02308;
  v41 = qword_280BE6C70;

  if (v41 != -1)
  {
    OUTLINED_FUNCTION_90_8(&qword_280BE6C70);
  }

  *(v0 + 360) = qword_280C022D0;
  v42 = qword_280BE6B18;

  if (v42 != -1)
  {
    OUTLINED_FUNCTION_89_7(&qword_280BE6B18);
  }

  *(v0 + 368) = qword_280C02238;
  v43 = qword_280BE6C50;

  if (v43 != -1)
  {
    OUTLINED_FUNCTION_88_7(&qword_280BE6C50);
  }

  *(v0 + 376) = qword_280C022C0;
  v44 = qword_280BE6D78;

  if (v44 != -1)
  {
    OUTLINED_FUNCTION_86_5(&qword_280BE6D78);
  }

  *(v0 + 384) = qword_280C02368;
  v45 = qword_280BE6D80;

  if (v45 != -1)
  {
    OUTLINED_FUNCTION_85_7(&qword_280BE6D80);
  }

  *(v0 + 392) = qword_280C02370;
  v46 = qword_280BE6D40;

  if (v46 != -1)
  {
    OUTLINED_FUNCTION_84_7(&qword_280BE6D40);
  }

  *(v0 + 400) = qword_280C02350;
  v47 = qword_280BE6BB0;

  if (v47 != -1)
  {
    OUTLINED_FUNCTION_17_0(&qword_280BE6BB0);
  }

  *(v0 + 408) = qword_280BE6BB8;
  v48 = qword_280BE6DB0;

  if (v48 != -1)
  {
    OUTLINED_FUNCTION_16_21(&qword_280BE6DB0);
  }

  *(v0 + 416) = qword_280C02398;
  v49 = qword_280BE6B58;

  if (v49 != -1)
  {
    OUTLINED_FUNCTION_15_7(&qword_280BE6B58);
  }

  *(v0 + 424) = qword_280BE6B60;
  v50 = qword_280BE6B98;

  if (v50 != -1)
  {
    OUTLINED_FUNCTION_14_4(&qword_280BE6B98);
  }

  *(v0 + 432) = qword_280BE6BA0;
  v51 = qword_280BE6B40;

  if (v51 != -1)
  {
    OUTLINED_FUNCTION_13_19(&qword_280BE6B40);
  }

  *(v0 + 440) = qword_280BE6B48;
  v52 = qword_280BE6BD8;

  if (v52 != -1)
  {
    OUTLINED_FUNCTION_6_24();
    swift_once();
  }

  *(v0 + 448) = qword_280BE6BE0;
  v53 = qword_280BE6D20;

  if (v53 != -1)
  {
    OUTLINED_FUNCTION_5_30();
    swift_once();
  }

  *(v0 + 456) = qword_280BE6D28;
  v54 = qword_280BE6D68;

  if (v54 != -1)
  {
    OUTLINED_FUNCTION_4_40();
    swift_once();
  }

  *(v0 + 464) = qword_280BE6D70;
  v55 = qword_280BE6C20;

  if (v55 != -1)
  {
    OUTLINED_FUNCTION_3_36();
    swift_once();
  }

  *(v0 + 472) = qword_280C022A0;
  v56 = qword_280BE6D90;

  if (v56 != -1)
  {
    OUTLINED_FUNCTION_2_37();
    swift_once();
  }

  *(v0 + 480) = qword_280C02378;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB254B0, &unk_21775D5A0);
  OUTLINED_FUNCTION_31_11(v57);
  *(v0 + 488) = OUTLINED_FUNCTION_54_0();
  qword_280C01FE0 = v0;
}

uint64_t sub_21739AF10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
    return sub_217751DE8();
  }

  return result;
}

uint64_t MusicVideoPropertyProvider.knownProperties.getter()
{
  type metadata accessor for MusicVideoPropertyProvider(0);

  return sub_217751DE8();
}

uint64_t MusicVideoPropertyProvider.identifierSet.getter()
{
  v2 = *(OUTLINED_FUNCTION_130_6() + 244);
  memcpy(__dst, (v1 + v2), 0x161uLL);
  memcpy(v0, (v1 + v2), 0x161uLL);
  return sub_217269EF4(__dst, &v4);
}

void *MusicVideoPropertyProvider.identifierSet.setter()
{
  v2 = *(OUTLINED_FUNCTION_118_7() + 244);
  memcpy(__dst, (v1 + v2), 0x161uLL);
  sub_217269F50(__dst);
  return memcpy((v1 + v2), v0, 0x161uLL);
}

uint64_t MusicVideoPropertyProvider.type.getter()
{
  v0 = OUTLINED_FUNCTION_130_6();
  OUTLINED_FUNCTION_160_0(*(v0 + 248));

  return sub_217751DE8();
}

void MusicVideoPropertyProvider.type.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  type metadata accessor for MusicVideoPropertyProvider(0);
  OUTLINED_FUNCTION_193_3();
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
}

uint64_t MusicVideoPropertyProvider.href.getter()
{
  type metadata accessor for MusicVideoPropertyProvider(0);
  OUTLINED_FUNCTION_97();
  return OUTLINED_FUNCTION_93();
}

void MusicVideoPropertyProvider.href.setter(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_168_0();
  type metadata accessor for MusicVideoPropertyProvider(v5);
  OUTLINED_FUNCTION_193_3();
  *v2 = v3;
  v2[1] = a2;
}

uint64_t MusicVideoPropertyProvider.rawAttributes.getter()
{
  type metadata accessor for MusicVideoPropertyProvider(0);

  return sub_217751DE8();
}

uint64_t MusicVideoPropertyProvider.rawRelationships.getter()
{
  type metadata accessor for MusicVideoPropertyProvider(0);

  return sub_217751DE8();
}

uint64_t MusicVideoPropertyProvider.rawAssociations.getter()
{
  type metadata accessor for MusicVideoPropertyProvider(0);

  return sub_217751DE8();
}

uint64_t MusicVideoPropertyProvider.rawMetadata.getter()
{
  type metadata accessor for MusicVideoPropertyProvider(0);

  return sub_217751DE8();
}

void static MusicVideoPropertyProvider.== infix(_:_:)()
{
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v1);
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_165_4();
  v6 = sub_2177517D8();
  OUTLINED_FUNCTION_0_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_81();
  v715 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  v12 = OUTLINED_FUNCTION_45_0(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_31();
  v714 = v13;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_99();
  v711 = v15;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_99();
  v709 = v17;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v18);
  v705 = &v699 - v19;
  v712 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25C10, &unk_217765A50);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_31();
  v713 = v21;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_99();
  v710 = v23;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_99();
  v708 = v25;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v26);
  v704 = &v699 - v27;
  v719 = sub_2177516D8();
  OUTLINED_FUNCTION_0_0();
  v717 = v28;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_81();
  v716 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v32 = OUTLINED_FUNCTION_45_0(v31);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_31();
  v707 = v33;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v34);
  v36 = &v699 - v35;
  MEMORY[0x28223BE20](v37);
  v39 = &v699 - v38;
  v718 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24840, &unk_217758DD0);
  OUTLINED_FUNCTION_43();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_31();
  v706 = v41;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v42);
  v44 = &v699 - v43;
  MEMORY[0x28223BE20](v45);
  v47 = &v699 - v46;
  v48 = OUTLINED_FUNCTION_163_3();
  memcpy(v48, v5, 0x221uLL);
  v49 = OUTLINED_FUNCTION_162_4();
  memcpy(v49, v3, 0x221uLL);
  v50 = OUTLINED_FUNCTION_40_13();
  memcpy(v50, v5, 0x221uLL);
  memcpy((v0 + 552), v3, 0x221uLL);
  memcpy(v758, v5, 0x221uLL);
  OUTLINED_FUNCTION_104(v758);
  if (v68)
  {
    v51 = OUTLINED_FUNCTION_37_12();
    OUTLINED_FUNCTION_223_2(v51);
    v52 = OUTLINED_FUNCTION_37_12();
    OUTLINED_FUNCTION_104(v52);
    if (!v68)
    {
      OUTLINED_FUNCTION_163_3();
      OUTLINED_FUNCTION_159_5();
      OUTLINED_FUNCTION_157(v81, v82);
      OUTLINED_FUNCTION_162_4();
      OUTLINED_FUNCTION_159_5();
LABEL_10:
      OUTLINED_FUNCTION_157(v83, v84);
      goto LABEL_11;
    }

    v702 = v8;
    v703 = v6;
    OUTLINED_FUNCTION_58_9();
    OUTLINED_FUNCTION_42_9();
    memcpy(v53, v54, 0x221uLL);
    OUTLINED_FUNCTION_163_3();
    OUTLINED_FUNCTION_32_13();
    sub_21726A630(v55, v56, v57, &unk_21775E9A0);
    OUTLINED_FUNCTION_162_4();
    OUTLINED_FUNCTION_32_13();
    sub_21726A630(v58, v59, v60, &unk_21775E9A0);
    v61 = OUTLINED_FUNCTION_58_9();
    sub_2171F0738(v61, &qword_27CB24400, &unk_21775E9A0);
  }

  else
  {
    OUTLINED_FUNCTION_58_9();
    OUTLINED_FUNCTION_42_9();
    memcpy(v62, v63, 0x221uLL);
    OUTLINED_FUNCTION_71_10();
    OUTLINED_FUNCTION_42_9();
    memcpy(v64, v65, 0x221uLL);
    v66 = OUTLINED_FUNCTION_37_12();
    OUTLINED_FUNCTION_223_2(v66);
    v67 = OUTLINED_FUNCTION_37_12();
    OUTLINED_FUNCTION_104(v67);
    if (v68)
    {
      OUTLINED_FUNCTION_42_9();
      memcpy(v69, v70, 0x221uLL);
      OUTLINED_FUNCTION_163_3();
      OUTLINED_FUNCTION_59_5();
      sub_21726A630(v71, v72, v73, &unk_21775E9A0);
      OUTLINED_FUNCTION_162_4();
      OUTLINED_FUNCTION_59_5();
      sub_21726A630(v74, v75, v76, &unk_21775E9A0);
      v77 = OUTLINED_FUNCTION_49_10();
      sub_21726A630(v77, v78, v79, &unk_21775E9A0);
      v80 = v727;
LABEL_9:
      sub_217284084(v80);
LABEL_11:
      OUTLINED_FUNCTION_37_12();
      OUTLINED_FUNCTION_42_9();
      memcpy(v85, v86, 0x449uLL);
LABEL_22:
      v139 = OUTLINED_FUNCTION_37_12();
LABEL_23:
      sub_2171F0738(v139, v140, v141);
      goto LABEL_24;
    }

    v702 = v8;
    v703 = v6;
    OUTLINED_FUNCTION_223_2(v727);
    OUTLINED_FUNCTION_163_3();
    OUTLINED_FUNCTION_59_5();
    sub_21726A630(v87, v88, v89, &unk_21775E9A0);
    OUTLINED_FUNCTION_162_4();
    OUTLINED_FUNCTION_59_5();
    sub_21726A630(v90, v91, v92, &unk_21775E9A0);
    v93 = OUTLINED_FUNCTION_49_10();
    sub_21726A630(v93, v94, v95, &unk_21775E9A0);
    v96 = OUTLINED_FUNCTION_71_10();
    v97 = static Artwork.== infix(_:_:)(v96, v727);
    memcpy(v725, v727, 0x221uLL);
    sub_217284084(v725);
    OUTLINED_FUNCTION_64_11();
    memcpy(v98, v99, 0x221uLL);
    sub_217284084(v726);
    OUTLINED_FUNCTION_42_9();
    memcpy(v100, v101, 0x221uLL);
    sub_2171F0738(v727, &qword_27CB24400, &unk_21775E9A0);
    if ((v97 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  OUTLINED_FUNCTION_178_4(&v736);
  v102 = OUTLINED_FUNCTION_161_4();
  memcpy(v102, (v3 + 552), 0x161uLL);
  OUTLINED_FUNCTION_165_4();
  v103 = OUTLINED_FUNCTION_40_13();
  OUTLINED_FUNCTION_178_4(v103);
  memcpy(&qword_27CB24568, (v3 + 552), 0x161uLL);
  OUTLINED_FUNCTION_178_4(v737);
  OUTLINED_FUNCTION_104(v737);
  if (v68)
  {
    v104 = OUTLINED_FUNCTION_37_12();
    memcpy(v104, &qword_27CB24568, 0x161uLL);
    v105 = OUTLINED_FUNCTION_37_12();
    OUTLINED_FUNCTION_104(v105);
    if (v68)
    {
      OUTLINED_FUNCTION_58_9();
      OUTLINED_FUNCTION_42_9();
      memcpy(v106, v107, 0x161uLL);
      OUTLINED_FUNCTION_32_13();
      sub_21726A630(v108, v109, v110, &qword_21775CD00);
      OUTLINED_FUNCTION_161_4();
      OUTLINED_FUNCTION_32_13();
      sub_21726A630(v111, v112, v113, &qword_21775CD00);
      v114 = OUTLINED_FUNCTION_58_9();
      sub_2171F0738(v114, &qword_27CB25468, &qword_21775CD00);
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_159_5();
    OUTLINED_FUNCTION_157(v133, v134);
    OUTLINED_FUNCTION_161_4();
    OUTLINED_FUNCTION_159_5();
    OUTLINED_FUNCTION_157(v135, v136);
LABEL_21:
    OUTLINED_FUNCTION_37_12();
    OUTLINED_FUNCTION_42_9();
    memcpy(v137, v138, 0x2C9uLL);
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_58_9();
  OUTLINED_FUNCTION_42_9();
  memcpy(v115, v116, 0x161uLL);
  OUTLINED_FUNCTION_71_10();
  OUTLINED_FUNCTION_42_9();
  memcpy(v117, v118, 0x161uLL);
  v119 = OUTLINED_FUNCTION_37_12();
  memcpy(v119, &qword_27CB24568, 0x161uLL);
  v120 = OUTLINED_FUNCTION_37_12();
  OUTLINED_FUNCTION_104(v120);
  if (v121)
  {
    OUTLINED_FUNCTION_42_9();
    memcpy(v122, v123, 0x161uLL);
    OUTLINED_FUNCTION_59_5();
    sub_21726A630(v124, v125, v126, &qword_21775CD00);
    OUTLINED_FUNCTION_161_4();
    OUTLINED_FUNCTION_59_5();
    sub_21726A630(v127, v128, v129, &qword_21775CD00);
    v130 = OUTLINED_FUNCTION_49_10();
    sub_21726A630(v130, v131, v132, &qword_21775CD00);
    sub_217269F50(v727);
    goto LABEL_21;
  }

  memcpy(v727, &qword_27CB24568, 0x161uLL);
  OUTLINED_FUNCTION_59_5();
  sub_21726A630(v142, v143, v144, &qword_21775CD00);
  OUTLINED_FUNCTION_161_4();
  OUTLINED_FUNCTION_59_5();
  sub_21726A630(v145, v146, v147, &qword_21775CD00);
  v148 = OUTLINED_FUNCTION_49_10();
  sub_21726A630(v148, v149, v150, &qword_21775CD00);
  OUTLINED_FUNCTION_71_10();
  static MusicIdentifierSet.== infix(_:_:)();
  v152 = v151;
  memcpy(v725, v727, 0x161uLL);
  sub_217269F50(v725);
  OUTLINED_FUNCTION_64_11();
  memcpy(v153, v154, 0x161uLL);
  sub_217269F50(v726);
  OUTLINED_FUNCTION_42_9();
  memcpy(v155, v156, 0x161uLL);
  sub_2171F0738(v727, &qword_27CB25468, &qword_21775CD00);
  if ((v152 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_26:
  v157 = *(v5 + 920);
  v158 = *(v3 + 920);
  if (v157)
  {
    if (!v158)
    {
      goto LABEL_24;
    }

    v159 = *(v5 + 912) == *(v3 + 912) && v157 == v158;
    if (!v159 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else if (v158)
  {
    goto LABEL_24;
  }

  v160 = *(v3 + 936);
  if (*(v5 + 936))
  {
    if (!*(v3 + 936))
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (*(v5 + 928) != *(v3 + 928))
    {
      v160 = 1;
    }

    if (v160)
    {
      goto LABEL_24;
    }
  }

  v161 = *(v5 + 952);
  v162 = *(v3 + 952);
  if (v161)
  {
    if (!v162)
    {
      goto LABEL_24;
    }

    v163 = *(v5 + 944) == *(v3 + 944) && v161 == v162;
    if (!v163 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else if (v162)
  {
    goto LABEL_24;
  }

  v701 = type metadata accessor for MusicVideoPropertyProvider(0);
  v164 = v701[9];
  v165 = *(v718 + 48);
  sub_21726A630(v5 + v164, v47, &unk_27CB277C0, &qword_217758DC0);
  sub_21726A630(v3 + v164, &v47[v165], &unk_27CB277C0, &qword_217758DC0);
  v166 = v719;
  OUTLINED_FUNCTION_133(v47, 1, v719);
  if (v68)
  {
    OUTLINED_FUNCTION_133(&v47[v165], 1, v166);
    if (v68)
    {
      sub_2171F0738(v47, &unk_27CB277C0, &qword_217758DC0);
      goto LABEL_60;
    }

LABEL_58:
    v140 = &qword_27CB24840;
    v141 = &unk_217758DD0;
    v139 = v47;
    goto LABEL_23;
  }

  sub_21726A630(v47, v39, &unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_133(&v47[v165], 1, v166);
  if (v167)
  {
    (*(v717 + 8))(v39, v166);
    goto LABEL_58;
  }

  v168 = v717;
  (*(v717 + 32))(v716, &v47[v165], v166);
  OUTLINED_FUNCTION_1_34();
  sub_21739F04C(v169, v170, MEMORY[0x277CC9278]);
  OUTLINED_FUNCTION_148_3();
  v165 = v166;
  HIDWORD(v700) = sub_217751F08();
  v171 = *(v168 + 8);
  v171(v716, v166);
  v172 = OUTLINED_FUNCTION_148_3();
  (v171)(v172);
  sub_2171F0738(v47, &unk_27CB277C0, &qword_217758DC0);
  if ((v700 & 0x100000000) == 0)
  {
    goto LABEL_24;
  }

LABEL_60:
  v173 = v701;
  OUTLINED_FUNCTION_165_4();
  *(v165 + 4) = v176;
  LODWORD(v749) = v177;
  *(v165 + 9) = v178;
  *(v165 + 5) = v179;
  if ((v174 & 0xFF00) == 0x200)
  {
    if ((v175 & 0xFF00) != 0x200)
    {
      goto LABEL_24;
    }
  }

  else
  {
    LODWORD(v741) = v174;
    BYTE4(v741) = BYTE4(v174);
    if ((v175 & 0xFF00) == 0x200)
    {
      goto LABEL_24;
    }

    v180 = OUTLINED_FUNCTION_37_12();
    if (!static CatalogAsset.== infix(_:_:)(v180, (v182 | v181)))
    {
      goto LABEL_24;
    }
  }

  v183 = v173[11];
  v184 = *(v5 + v183);
  v185 = *(v3 + v183);
  *v165 = v184;
  *(v165 + 1) = v185;
  if (v184 == 2)
  {
    if (v185 != 2)
    {
      goto LABEL_24;
    }
  }

  else
  {
    LOBYTE(v741) = v184;
    if (v185 == 2)
    {
      goto LABEL_24;
    }

    v186 = OUTLINED_FUNCTION_9_22();
    if (!static ContentRating.== infix(_:_:)(v186, v187))
    {
      goto LABEL_24;
    }
  }

  OUTLINED_FUNCTION_144_3();
  if (v189)
  {
    if (!v188)
    {
      goto LABEL_24;
    }
  }

  else
  {
    OUTLINED_FUNCTION_83_2();
    if (v190)
    {
      goto LABEL_24;
    }
  }

  v191 = v173[13];
  v192 = *(v3 + v191);
  if (*(v5 + v191))
  {
    if (!v192)
    {
      goto LABEL_24;
    }

    sub_217751DE8();
    OUTLINED_FUNCTION_148_3();
    sub_217262A00();
    v194 = v193;

    if ((v194 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else if (v192)
  {
    goto LABEL_24;
  }

  v195 = (v5 + v173[14]);
  v196 = v195[2];
  v731 = v195[3];
  v197 = v195[1];
  v728 = *v195;
  v729 = v197;
  v198 = v195[1];
  v730 = v195[2];
  v199 = (v3 + v173[14]);
  v200 = v199[2];
  v735 = v199[3];
  v201 = v199[1];
  v732 = *v199;
  v733 = v201;
  v202 = v199[1];
  v734 = v199[2];
  v726[0] = v198;
  v726[1] = v196;
  v726[2] = v195[3];
  v203 = v728;
  v204 = v732;
  v725[0] = v202;
  v725[1] = v200;
  v725[2] = v199[3];
  if (*(&v728 + 1) == 1)
  {
    if (*(&v732 + 1) == 1)
    {
      *&v749 = v728;
      *(&v749 + 1) = 1;
      v205 = v195[2];
      v750 = v195[1];
      v751 = v205;
      OUTLINED_FUNCTION_182_4();
      *(v206 + 255) = v207;
      OUTLINED_FUNCTION_57_9();
      OUTLINED_FUNCTION_194_4(v208, v209);
      OUTLINED_FUNCTION_57_9();
      OUTLINED_FUNCTION_194_4(v210, v211);
      v212 = OUTLINED_FUNCTION_40_13();
      sub_2171F0738(v212, &qword_27CB24B70, &unk_217759460);
      goto LABEL_88;
    }

    OUTLINED_FUNCTION_42_9();
    OUTLINED_FUNCTION_176_5(v229, v230);
    OUTLINED_FUNCTION_42_9();
    OUTLINED_FUNCTION_176_5(v231, v232);
LABEL_85:
    v749 = v203;
    v750 = v726[0];
    v751 = v726[1];
    OUTLINED_FUNCTION_182_4();
    *(v233 + 255) = v234;
    v752 = v204;
    v753 = v725[0];
    v754 = v725[1];
    v755 = v725[2];
    goto LABEL_86;
  }

  v749 = v728;
  v213 = v195[2];
  v750 = v195[1];
  v751 = v213;
  OUTLINED_FUNCTION_182_4();
  *(v215 + 255) = v216;
  v741 = v749;
  v742 = v217;
  v743 = v218;
  v744 = v216;
  if (*(&v204 + 1) == 1)
  {
    v745 = v749;
    v746 = v750;
    OUTLINED_FUNCTION_182_4();
    v220 = *(v219 + 255);
    v747 = v221;
    v748 = v220;
    OUTLINED_FUNCTION_64_11();
    OUTLINED_FUNCTION_176_5(v222, v223);
    OUTLINED_FUNCTION_64_11();
    OUTLINED_FUNCTION_176_5(v224, v225);
    OUTLINED_FUNCTION_40_13();
    OUTLINED_FUNCTION_64_11();
    OUTLINED_FUNCTION_176_5(v226, v227);
    v228 = OUTLINED_FUNCTION_58_9();
    sub_217351248(v228);
    goto LABEL_85;
  }

  v235 = v214[2];
  v746 = v214[1];
  v747 = v235;
  v748 = v214[3];
  v745 = v204;
  OUTLINED_FUNCTION_37_12();
  OUTLINED_FUNCTION_159_5();
  HIDWORD(v700) = static EditorialNotes.== infix(_:_:)(v236, v237);
  v727[0] = v745;
  v727[1] = v746;
  v727[2] = v747;
  v727[3] = v748;
  OUTLINED_FUNCTION_32_13();
  sub_21726A630(v238, v239, v240, &unk_217759460);
  OUTLINED_FUNCTION_32_13();
  sub_21726A630(v241, v242, v243, &unk_217759460);
  OUTLINED_FUNCTION_40_13();
  OUTLINED_FUNCTION_32_13();
  sub_21726A630(v244, v245, v246, &unk_217759460);
  sub_217351248(v727);
  *&v737[360] = v741;
  v738 = v742;
  v739 = v743;
  v740 = v744;
  v247 = OUTLINED_FUNCTION_71_10();
  sub_217351248(v247);
  v745 = v203;
  v746 = v726[0];
  v747 = v726[1];
  v748 = v726[2];
  v248 = OUTLINED_FUNCTION_58_9();
  sub_2171F0738(v248, &qword_27CB24B70, &unk_217759460);
  if ((v700 & 0x100000000) == 0)
  {
    goto LABEL_24;
  }

LABEL_88:
  v249 = v701[15];
  v250 = *(v3 + v249);
  if (*(v5 + v249))
  {
    if (!v250)
    {
      goto LABEL_24;
    }

    sub_217751DE8();
    OUTLINED_FUNCTION_148_3();
    sub_217262CB4();
    v252 = v251;

    if ((v252 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else if (v250)
  {
    goto LABEL_24;
  }

  if (OUTLINED_FUNCTION_136(v701[16]))
  {
    if (!v253)
    {
      goto LABEL_24;
    }

    sub_217270790();
    if ((v254 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else if (v253)
  {
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_31_13();
  if (v68)
  {
    if (v255 != 2)
    {
      goto LABEL_24;
    }
  }

  else if (v255 == 2 || ((v255 ^ v256) & 1) != 0)
  {
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_31_13();
  if (v68)
  {
    if (v257 != 2)
    {
      goto LABEL_24;
    }
  }

  else if (v257 == 2 || ((v257 ^ v258) & 1) != 0)
  {
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_10_19(v701[19]);
  if (v260 == 2)
  {
    if (v259 != 2)
    {
      goto LABEL_24;
    }
  }

  else
  {
    LOBYTE(v741) = v260;
    if (v259 == 2)
    {
      goto LABEL_24;
    }

    v261 = OUTLINED_FUNCTION_9_22();
    if (!static HomeSharingAsset.== infix(_:_:)(v261, v262))
    {
      goto LABEL_24;
    }
  }

  v263 = v701[20];
  v264 = *(v718 + 48);
  OUTLINED_FUNCTION_194_4(v5 + v263, v44);
  OUTLINED_FUNCTION_194_4(v3 + v263, &v44[v264]);
  OUTLINED_FUNCTION_133(v44, 1, v719);
  if (v68)
  {
    OUTLINED_FUNCTION_133(&v44[v264], 1, v719);
    if (v68)
    {
      sub_2171F0738(v44, &unk_27CB277C0, &qword_217758DC0);
      goto LABEL_125;
    }

LABEL_123:
    v140 = &qword_27CB24840;
    v141 = &unk_217758DD0;
    v139 = v44;
    goto LABEL_23;
  }

  sub_21726A630(v44, v36, &unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_133(&v44[v264], 1, v719);
  if (v265)
  {
    (*(v717 + 8))(v36, v719);
    goto LABEL_123;
  }

  v266 = v717;
  v267 = v719;
  (*(v717 + 32))(v716, &v44[v264], v719);
  OUTLINED_FUNCTION_1_34();
  sub_21739F04C(v268, v269, MEMORY[0x277CC9278]);
  OUTLINED_FUNCTION_211();
  v270 = sub_217751F08();
  v271 = *(v266 + 8);
  v271(v716, v267);
  v271(v36, v267);
  sub_2171F0738(v44, &unk_27CB277C0, &qword_217758DC0);
  if ((v270 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_125:
  OUTLINED_FUNCTION_31_13();
  if (v68)
  {
    if (v272 != 2)
    {
      goto LABEL_24;
    }
  }

  else if (v272 == 2 || ((v272 ^ v273) & 1) != 0)
  {
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_24_3();
  if (v276)
  {
    if (!v274)
    {
      goto LABEL_24;
    }

    OUTLINED_FUNCTION_59_0(v275);
    v279 = v68 && v277 == v278;
    if (!v279 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else if (v274)
  {
    goto LABEL_24;
  }

  v280 = v701[23];
  v281 = v5 + v280;
  v282 = *(v5 + v280 + 8);
  v283 = (v3 + v280);
  v284 = v283[1];
  if (!v282)
  {
    if (!v284)
    {

      goto LABEL_147;
    }

LABEL_145:
    sub_217751DE8();

    goto LABEL_24;
  }

  v285 = *v283;
  v286 = *(v283 + 16);
  v287 = *(v281 + 16);
  *&v749 = *v281;
  *(&v749 + 1) = v282;
  LOBYTE(v750) = v287;
  if (!v284)
  {
    goto LABEL_145;
  }

  LOWORD(v741) = v285 & 0xFF01;
  *(&v741 + 1) = v284;
  LOBYTE(v742) = v286 & 1;
  v288 = OUTLINED_FUNCTION_8_27();
  v290 = static FileAsset.== infix(_:_:)(v288, v289);
  swift_bridgeObjectRetain_n();
  sub_217751DE8();

  if ((v290 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_147:
  v291 = v701[24];
  v293 = *(v5 + v291);
  v292 = *(v5 + v291 + 8);
  v294 = *(v5 + v291 + 16);
  v295 = (v3 + v291);
  v297 = *v295;
  v296 = v295[1];
  v298 = v295[2];
  if (v294 == 1)
  {
    v299 = OUTLINED_FUNCTION_211();
    sub_21739AF10(v299, v300, 1);
    if (v298 == 1)
    {
      v301 = OUTLINED_FUNCTION_172_2();
      sub_21739AF10(v301, v302, 1);
      v303 = OUTLINED_FUNCTION_211();
      sub_21733B290(v303, v304, 1);
      goto LABEL_155;
    }

    v313 = OUTLINED_FUNCTION_172_2();
    sub_21739AF10(v313, v314, v298);
LABEL_153:
    v315 = OUTLINED_FUNCTION_46_13();
    sub_21733B290(v315, v316, v317);
    v318 = OUTLINED_FUNCTION_172_2();
    sub_21733B290(v318, v319, v298);
    goto LABEL_24;
  }

  *&v749 = v293;
  *(&v749 + 1) = v292;
  *&v750 = v294;
  if (v298 == 1)
  {
    v305 = OUTLINED_FUNCTION_46_13();
    sub_21739AF10(v305, v306, v307);
    v308 = OUTLINED_FUNCTION_172_2();
    sub_21739AF10(v308, v309, 1);
    v310 = OUTLINED_FUNCTION_46_13();
    sub_21739AF10(v310, v311, v312);

    goto LABEL_153;
  }

  LOWORD(v741) = v297;
  BYTE2(v741) = BYTE2(v297);
  *(&v741 + 1) = v296;
  *&v742 = v298;
  v320 = OUTLINED_FUNCTION_8_27();
  HIDWORD(v700) = static MusicLyrics.== infix(_:_:)(v320, v321);
  v699 = v742;
  v322 = OUTLINED_FUNCTION_46_13();
  sub_21739AF10(v322, v323, v324);
  v325 = OUTLINED_FUNCTION_172_2();
  sub_21739AF10(v325, v326, v298);
  v327 = OUTLINED_FUNCTION_46_13();
  sub_21739AF10(v327, v328, v329);

  v330 = OUTLINED_FUNCTION_46_13();
  sub_21733B290(v330, v331, v332);
  if ((v700 & 0x100000000) == 0)
  {
    goto LABEL_24;
  }

LABEL_155:
  v333 = v701;
  v334 = v701[25];
  memcpy(v727, (v5 + v334), 0x221uLL);
  v335 = v701[25];
  v336 = OUTLINED_FUNCTION_71_10();
  memcpy(v336, (v3 + v335), 0x221uLL);
  OUTLINED_FUNCTION_165_4();
  v337 = OUTLINED_FUNCTION_40_13();
  memcpy(v337, (v5 + v334), 0x221uLL);
  memcpy(v333 + 138, (v3 + v335), 0x221uLL);
  v338 = OUTLINED_FUNCTION_58_9();
  memcpy(v338, (v5 + v334), 0x221uLL);
  v339 = OUTLINED_FUNCTION_58_9();
  OUTLINED_FUNCTION_104(v339);
  if (v68)
  {
    v340 = OUTLINED_FUNCTION_37_12();
    OUTLINED_FUNCTION_223_2(v340);
    v341 = OUTLINED_FUNCTION_37_12();
    OUTLINED_FUNCTION_104(v341);
    if (v68)
    {
      OUTLINED_FUNCTION_42_9();
      memcpy(v342, v343, 0x221uLL);
      OUTLINED_FUNCTION_123_7();
      sub_21726A630(v344, v345, v346, &unk_21775E9A0);
      OUTLINED_FUNCTION_71_10();
      OUTLINED_FUNCTION_123_7();
      sub_21726A630(v347, v348, v349, &unk_21775E9A0);
      OUTLINED_FUNCTION_103_3();
      sub_2171F0738(v350, v351, v352);
      goto LABEL_164;
    }

    OUTLINED_FUNCTION_59_5();
    sub_21726A630(v363, v364, v365, &unk_21775E9A0);
    v83 = OUTLINED_FUNCTION_71_10();
    v84 = v726;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_42_9();
  memcpy(v353, v354, 0x221uLL);
  OUTLINED_FUNCTION_42_9();
  memcpy(v355, v356, 0x221uLL);
  v357 = OUTLINED_FUNCTION_37_12();
  OUTLINED_FUNCTION_223_2(v357);
  v358 = OUTLINED_FUNCTION_37_12();
  OUTLINED_FUNCTION_104(v358);
  if (v359)
  {
    OUTLINED_FUNCTION_42_9();
    memcpy(v360, v361, 0x221uLL);
    OUTLINED_FUNCTION_157(v727, v721);
    v362 = OUTLINED_FUNCTION_71_10();
    OUTLINED_FUNCTION_157(v362, v721);
    OUTLINED_FUNCTION_157(v726, v721);
    v80 = v722;
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_223_2(v722);
  OUTLINED_FUNCTION_195_3(v727, v721);
  v366 = OUTLINED_FUNCTION_71_10();
  OUTLINED_FUNCTION_195_3(v366, v721);
  OUTLINED_FUNCTION_195_3(v726, v721);
  v367 = static Artwork.== infix(_:_:)(v725, v722);
  memcpy(v720, v722, 0x221uLL);
  sub_217284084(v720);
  memcpy(v721, v725, 0x221uLL);
  sub_217284084(v721);
  OUTLINED_FUNCTION_42_9();
  memcpy(v368, v369, 0x221uLL);
  OUTLINED_FUNCTION_103_3();
  sub_2171F0738(v370, v371, v372);
  if ((v367 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_164:
  v373 = v701[26];
  v374 = *(v3 + v373);
  if (*(v5 + v373))
  {
    if (!v374)
    {
      goto LABEL_24;
    }

    sub_217751DE8();
    OUTLINED_FUNCTION_211();
    v375 = sub_2172711A8();

    if ((v375 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else if (v374)
  {
    goto LABEL_24;
  }

  v376 = v5 + v701[27];
  memcpy(v723, v376, sizeof(v723));
  memcpy(v724, (v3 + v701[27]), sizeof(v724));
  v377 = v723[0];
  v378 = v723[1];
  memcpy(v721, (v376 + 16), 0x68uLL);
  v379 = v724[0];
  v380 = v724[1];
  OUTLINED_FUNCTION_196_4(v720);
  if (!v378)
  {
    if (!v380)
    {
      v749 = v377;
      OUTLINED_FUNCTION_171_4();
      OUTLINED_FUNCTION_57_9();
      OUTLINED_FUNCTION_195_3(v416, v417);
      OUTLINED_FUNCTION_57_9();
      OUTLINED_FUNCTION_195_3(v418, v419);
      OUTLINED_FUNCTION_40_13();
      OUTLINED_FUNCTION_103_3();
      sub_2171F0738(v420, v421, v422);
      goto LABEL_178;
    }

    OUTLINED_FUNCTION_42_9();
    OUTLINED_FUNCTION_157(v401, v402);
    OUTLINED_FUNCTION_42_9();
    OUTLINED_FUNCTION_157(v403, v404);
LABEL_176:
    *&v749 = v377;
    *(&v749 + 1) = v378;
    OUTLINED_FUNCTION_165_4();
    memcpy(&qword_27CB244E0, v721, 0x68uLL);
    *(&v755 + 1) = v379;
    v756 = v380;
    memcpy(&qword_27CB24558, v720, 0x68uLL);
    goto LABEL_86;
  }

  *&v749 = v377;
  *(&v749 + 1) = v378;
  OUTLINED_FUNCTION_171_4();
  OUTLINED_FUNCTION_37_12();
  OUTLINED_FUNCTION_42_9();
  memcpy(v381, v382, 0x78uLL);
  if (!v380)
  {
    OUTLINED_FUNCTION_42_9();
    memcpy(v405, v406, 0x78uLL);
    OUTLINED_FUNCTION_123_7();
    sub_21726A630(v407, v408, v409, &unk_21775D620);
    OUTLINED_FUNCTION_123_7();
    sub_21726A630(v410, v411, v412, &unk_21775D620);
    OUTLINED_FUNCTION_40_13();
    OUTLINED_FUNCTION_123_7();
    sub_21726A630(v413, v414, v415, &unk_21775D620);
    sub_2172848C0(v726);
    goto LABEL_176;
  }

  OUTLINED_FUNCTION_196_4(&v726[1]);
  *&v726[0] = v379;
  *(&v726[0] + 1) = v380;
  OUTLINED_FUNCTION_123_7();
  sub_21726A630(v383, v384, v385, &unk_21775D620);
  OUTLINED_FUNCTION_123_7();
  sub_21726A630(v386, v387, v388, &unk_21775D620);
  OUTLINED_FUNCTION_40_13();
  OUTLINED_FUNCTION_123_7();
  sub_21726A630(v389, v390, v391, &unk_21775D620);
  v392 = OUTLINED_FUNCTION_29_16();
  static PlayParameters.== infix(_:_:)(v392, v393);
  v395 = v394;
  memcpy(v722, v726, 0x78uLL);
  sub_2172848C0(v722);
  OUTLINED_FUNCTION_57_9();
  memcpy(v396, v397, 0x78uLL);
  sub_2172848C0(v725);
  *&v726[0] = v377;
  *(&v726[0] + 1) = v378;
  memcpy(&v726[1], v721, 0x68uLL);
  OUTLINED_FUNCTION_103_3();
  sub_2171F0738(v398, v399, v400);
  if ((v395 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_178:
  v423 = v701[28];
  v424 = *(v3 + v423);
  if (*(v5 + v423))
  {
    if (!v424)
    {
      goto LABEL_24;
    }

    sub_217751DE8();
    v425 = OUTLINED_FUNCTION_211();
    sub_2172714AC(v425, v426);
    v428 = v427;

    if ((v428 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else if (v424)
  {
    goto LABEL_24;
  }

  v429 = *(v712 + 48);
  v430 = v704;
  OUTLINED_FUNCTION_195_3(v5 + v701[29], v704);
  OUTLINED_FUNCTION_54_10();
  OUTLINED_FUNCTION_23_21(v430);
  if (v68)
  {
    OUTLINED_FUNCTION_133(v429 + v704, 1, v703);
    if (v68)
    {
      sub_2171F0738(v704, &qword_27CB241C0, &qword_217759480);
      goto LABEL_193;
    }

LABEL_191:
    v140 = &qword_27CB25C10;
    v141 = &unk_217765A50;
    v139 = v704;
    goto LABEL_23;
  }

  v431 = v704;
  sub_21726A630(v704, v705, &qword_27CB241C0, &qword_217759480);
  OUTLINED_FUNCTION_23_21(v429 + v431);
  if (v432)
  {
    OUTLINED_FUNCTION_181_4();
    v433(v705);
    goto LABEL_191;
  }

  OUTLINED_FUNCTION_151_3();
  v434 = OUTLINED_FUNCTION_80_7();
  v435(v434);
  OUTLINED_FUNCTION_0_38();
  sub_21739F04C(v436, v437, MEMORY[0x277CC9598]);
  OUTLINED_FUNCTION_141_6();
  v438 = OUTLINED_FUNCTION_98_10();
  v429(v438);
  v439 = OUTLINED_FUNCTION_172_2();
  v429(v439);
  sub_2171F0738(v704, &qword_27CB241C0, &qword_217759480);
  if ((v431 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_193:
  OUTLINED_FUNCTION_144_3();
  if (v441)
  {
    if (!v440)
    {
      goto LABEL_24;
    }
  }

  else
  {
    OUTLINED_FUNCTION_112();
    if (v442)
    {
      goto LABEL_24;
    }
  }

  OUTLINED_FUNCTION_24_3();
  if (v445)
  {
    if (!v443)
    {
      goto LABEL_24;
    }

    OUTLINED_FUNCTION_59_0(v444);
    v448 = v68 && v446 == v447;
    if (!v448 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else if (v443)
  {
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_144_3();
  if (v450)
  {
    if (!v449)
    {
      goto LABEL_24;
    }
  }

  else
  {
    OUTLINED_FUNCTION_112();
    if (v451)
    {
      goto LABEL_24;
    }
  }

  v452 = *(v718 + 48);
  v453 = v706;
  OUTLINED_FUNCTION_195_3(v5 + v701[33], v706);
  OUTLINED_FUNCTION_54_10();
  OUTLINED_FUNCTION_133(v453, 1, v719);
  if (v68)
  {
    OUTLINED_FUNCTION_133(v706 + v452, 1, v719);
    if (v68)
    {
      sub_2171F0738(v706, &unk_27CB277C0, &qword_217758DC0);
      goto LABEL_220;
    }

LABEL_218:
    v140 = &qword_27CB24840;
    v141 = &unk_217758DD0;
    v139 = v706;
    goto LABEL_23;
  }

  v454 = v706;
  sub_21726A630(v706, v707, &unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_133(v454 + v452, 1, v719);
  if (v455)
  {
    (*(v717 + 8))(v707, v719);
    goto LABEL_218;
  }

  v456 = v716;
  OUTLINED_FUNCTION_180_5();
  v457 = v706 + v452;
  v458 = v719;
  v459(v456, v457, v719);
  OUTLINED_FUNCTION_1_34();
  sub_21739F04C(v460, v461, MEMORY[0x277CC9278]);
  v462 = v707;
  OUTLINED_FUNCTION_190_5();
  v463 = OUTLINED_FUNCTION_183_4();
  (qword_217758DC0)(v463);
  (qword_217758DC0)(v462, v458);
  sub_2171F0738(v706, &unk_27CB277C0, &qword_217758DC0);
  if ((v454 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_220:
  OUTLINED_FUNCTION_24_3();
  if (v466)
  {
    if (!v464)
    {
      goto LABEL_24;
    }

    OUTLINED_FUNCTION_59_0(v465);
    v469 = v68 && v467 == v468;
    if (!v469 && (sub_217753058() & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else if (v464)
  {
    goto LABEL_24;
  }

  v470 = *(v712 + 48);
  v471 = v708;
  OUTLINED_FUNCTION_195_3(v5 + v701[35], v708);
  OUTLINED_FUNCTION_54_10();
  OUTLINED_FUNCTION_23_21(v471);
  if (v68)
  {
    OUTLINED_FUNCTION_23_21(v470 + v708);
    if (v68)
    {
      sub_2171F0738(v708, &qword_27CB241C0, &qword_217759480);
      goto LABEL_239;
    }

LABEL_237:
    v140 = &qword_27CB25C10;
    v141 = &unk_217765A50;
    v139 = v708;
    goto LABEL_23;
  }

  v472 = v708;
  sub_21726A630(v708, v709, &qword_27CB241C0, &qword_217759480);
  OUTLINED_FUNCTION_23_21(v470 + v472);
  if (v473)
  {
    OUTLINED_FUNCTION_181_4();
    v474(v709);
    goto LABEL_237;
  }

  OUTLINED_FUNCTION_151_3();
  v475 = OUTLINED_FUNCTION_80_7();
  v476(v475);
  OUTLINED_FUNCTION_0_38();
  sub_21739F04C(v477, v478, MEMORY[0x277CC9598]);
  OUTLINED_FUNCTION_141_6();
  v479 = OUTLINED_FUNCTION_98_10();
  v470(v479);
  v480 = OUTLINED_FUNCTION_172_2();
  v470(v480);
  sub_2171F0738(v708, &qword_27CB241C0, &qword_217759480);
  if ((v472 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_239:
  OUTLINED_FUNCTION_10_19(v701[36]);
  if (v482 == 3)
  {
    if (v481 != 3)
    {
      goto LABEL_24;
    }
  }

  else
  {
    LOBYTE(v741) = v482;
    if (v481 == 3)
    {
      goto LABEL_24;
    }

    v483 = OUTLINED_FUNCTION_9_22();
    if (!static LegacyModelFavoriteStatus.== infix(_:_:)(v483, v484))
    {
      goto LABEL_24;
    }
  }

  OUTLINED_FUNCTION_31_13();
  if (v68)
  {
    if (v485 != 2)
    {
      goto LABEL_24;
    }
  }

  else if (v485 == 2 || ((v485 ^ v486) & 1) != 0)
  {
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_31_13();
  if (v68)
  {
    if (v487 != 2)
    {
      goto LABEL_24;
    }
  }

  else if (v487 == 2 || ((v487 ^ v488) & 1) != 0)
  {
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_31_13();
  if (v68)
  {
    if (v489 != 2)
    {
      goto LABEL_24;
    }
  }

  else if (v489 == 2 || ((v489 ^ v490) & 1) != 0)
  {
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_10_19(v701[40]);
  if (v492 == 5)
  {
    if (v491 != 5)
    {
      goto LABEL_24;
    }
  }

  else
  {
    LOBYTE(v741) = v492;
    if (v491 == 5)
    {
      goto LABEL_24;
    }

    v493 = OUTLINED_FUNCTION_9_22();
    if (!static LegacyModelKeepLocalEnabledStatus.== infix(_:_:)(v493, v494))
    {
      goto LABEL_24;
    }
  }

  OUTLINED_FUNCTION_10_19(v701[41]);
  if (v496 == 7)
  {
    if (v495 != 7)
    {
      goto LABEL_24;
    }
  }

  else
  {
    LOBYTE(v741) = v496;
    if (v495 == 7)
    {
      goto LABEL_24;
    }

    v497 = OUTLINED_FUNCTION_9_22();
    if (!static LegacyModelKeepLocalManagedStatus.== infix(_:_:)(v497, v498))
    {
      goto LABEL_24;
    }
  }

  v499 = v701[42];
  v500 = (v5 + v499);
  v501 = *(v5 + v499 + 8);
  v502 = v3 + v499;
  if (v501)
  {
    if ((*(v502 + 8) & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else if ((*(v502 + 8) & 1) != 0 || !sub_21770C140(*v500, *v502))
  {
    goto LABEL_24;
  }

  v503 = *(v712 + 48);
  v504 = v710;
  OUTLINED_FUNCTION_195_3(v5 + v701[43], v710);
  OUTLINED_FUNCTION_54_10();
  OUTLINED_FUNCTION_23_21(v504);
  if (v68)
  {
    OUTLINED_FUNCTION_23_21(v503 + v710);
    if (v68)
    {
      sub_2171F0738(v710, &qword_27CB241C0, &qword_217759480);
      goto LABEL_287;
    }

LABEL_285:
    v140 = &qword_27CB25C10;
    v141 = &unk_217765A50;
    v139 = v710;
    goto LABEL_23;
  }

  v505 = v710;
  sub_21726A630(v710, v711, &qword_27CB241C0, &qword_217759480);
  OUTLINED_FUNCTION_23_21(v503 + v505);
  if (v506)
  {
    OUTLINED_FUNCTION_181_4();
    v507(v711);
    goto LABEL_285;
  }

  OUTLINED_FUNCTION_151_3();
  v508 = OUTLINED_FUNCTION_80_7();
  v509(v508);
  OUTLINED_FUNCTION_0_38();
  sub_21739F04C(v510, v511, MEMORY[0x277CC9598]);
  OUTLINED_FUNCTION_141_6();
  v512 = OUTLINED_FUNCTION_98_10();
  v503(v512);
  v513 = OUTLINED_FUNCTION_172_2();
  v503(v513);
  sub_2171F0738(v710, &qword_27CB241C0, &qword_217759480);
  if ((v505 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_287:
  v514 = v713;
  v515 = *(v712 + 48);
  OUTLINED_FUNCTION_195_3(v5 + v701[44], v713);
  OUTLINED_FUNCTION_54_10();
  OUTLINED_FUNCTION_23_21(v514);
  if (v68)
  {
    OUTLINED_FUNCTION_23_21(v713 + v515);
    if (v68)
    {
      sub_2171F0738(v713, &qword_27CB241C0, &qword_217759480);
      goto LABEL_297;
    }

LABEL_295:
    v140 = &qword_27CB25C10;
    v141 = &unk_217765A50;
    v139 = v713;
    goto LABEL_23;
  }

  v516 = v713;
  sub_21726A630(v713, v714, &qword_27CB241C0, &qword_217759480);
  OUTLINED_FUNCTION_23_21(v516 + v515);
  if (v517)
  {
    OUTLINED_FUNCTION_181_4();
    v518(v714);
    goto LABEL_295;
  }

  OUTLINED_FUNCTION_180_5();
  v519 = OUTLINED_FUNCTION_80_7();
  v520 = v703;
  v521(v519);
  OUTLINED_FUNCTION_0_38();
  sub_21739F04C(v522, v523, MEMORY[0x277CC9598]);
  v524 = v714;
  OUTLINED_FUNCTION_190_5();
  v525 = OUTLINED_FUNCTION_183_4();
  (qword_217759480)(v525);
  (qword_217759480)(v524, v520);
  sub_2171F0738(v713, &qword_27CB241C0, &qword_217759480);
  if ((v516 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_297:
  OUTLINED_FUNCTION_144_3();
  if (v527)
  {
    if (!v526)
    {
      goto LABEL_24;
    }
  }

  else
  {
    OUTLINED_FUNCTION_112();
    if (v528)
    {
      goto LABEL_24;
    }
  }

  OUTLINED_FUNCTION_31_13();
  if (v68)
  {
    if (v529 != 2)
    {
      goto LABEL_24;
    }
  }

  else if (v529 == 2 || ((v529 ^ v530) & 1) != 0)
  {
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_10_19(v701[47]);
  if (v532 == 10)
  {
    if (v531 != 10)
    {
      goto LABEL_24;
    }
  }

  else
  {
    LOBYTE(v741) = v532;
    if (v531 == 10)
    {
      goto LABEL_24;
    }

    v533 = OUTLINED_FUNCTION_9_22();
    if (!static CloudStatus.== infix(_:_:)(v533, v534))
    {
      goto LABEL_24;
    }
  }

  OUTLINED_FUNCTION_144_3();
  if (v536)
  {
    if (!v535)
    {
      goto LABEL_24;
    }
  }

  else
  {
    OUTLINED_FUNCTION_83_2();
    if (v537)
    {
      goto LABEL_24;
    }
  }

  OUTLINED_FUNCTION_126_7();
  OUTLINED_FUNCTION_25_19();
  OUTLINED_FUNCTION_34_13();
  if (*(&v753 + 1))
  {
    v538 = OUTLINED_FUNCTION_8_27();
    sub_21726A630(v538, v539, v540, v541);
    if (!v757)
    {
      v561 = OUTLINED_FUNCTION_37_12();
      sub_2171F0738(v561, v562, v563);
      goto LABEL_86;
    }

    OUTLINED_FUNCTION_61_4();
    v542 = OUTLINED_FUNCTION_29_16();
    v544 = sub_21733E33C(v542, v543);
    OUTLINED_FUNCTION_62_10();
    OUTLINED_FUNCTION_35_11();
    v545 = OUTLINED_FUNCTION_40_13();
    sub_2171F0738(v545, v546, v547);
    if ((v544 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (v757)
    {
      goto LABEL_86;
    }

    v548 = OUTLINED_FUNCTION_40_13();
    sub_2171F0738(v548, v549, v550);
  }

  OUTLINED_FUNCTION_126_7();
  OUTLINED_FUNCTION_25_19();
  OUTLINED_FUNCTION_34_13();
  if (*(&v753 + 1))
  {
    v551 = OUTLINED_FUNCTION_8_27();
    sub_21726A630(v551, v552, v553, v554);
    if (!v757)
    {
      goto LABEL_376;
    }

    OUTLINED_FUNCTION_61_4();
    v555 = OUTLINED_FUNCTION_29_16();
    v557 = sub_21733E8C8(v555, v556);
    OUTLINED_FUNCTION_62_10();
    OUTLINED_FUNCTION_35_11();
    v558 = OUTLINED_FUNCTION_40_13();
    sub_2171F0738(v558, v559, v560);
    if ((v557 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (v757)
    {
      goto LABEL_86;
    }

    v564 = OUTLINED_FUNCTION_40_13();
    sub_2171F0738(v564, v565, v566);
  }

  OUTLINED_FUNCTION_126_7();
  OUTLINED_FUNCTION_25_19();
  OUTLINED_FUNCTION_34_13();
  if (*(&v753 + 1))
  {
    v567 = OUTLINED_FUNCTION_8_27();
    sub_21726A630(v567, v568, v569, v570);
    if (!v757)
    {
      v590 = OUTLINED_FUNCTION_37_12();
      sub_2171F0738(v590, v591, v592);
      goto LABEL_86;
    }

    OUTLINED_FUNCTION_61_4();
    v571 = OUTLINED_FUNCTION_29_16();
    v573 = sub_21733E820(v571, v572);
    OUTLINED_FUNCTION_62_10();
    OUTLINED_FUNCTION_35_11();
    v574 = OUTLINED_FUNCTION_40_13();
    sub_2171F0738(v574, v575, v576);
    if ((v573 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (v757)
    {
      goto LABEL_86;
    }

    v577 = OUTLINED_FUNCTION_40_13();
    sub_2171F0738(v577, v578, v579);
  }

  OUTLINED_FUNCTION_126_7();
  OUTLINED_FUNCTION_25_19();
  OUTLINED_FUNCTION_34_13();
  if (*(&v753 + 1))
  {
    v580 = OUTLINED_FUNCTION_8_27();
    sub_21726A630(v580, v581, v582, v583);
    if (!v757)
    {
      v606 = OUTLINED_FUNCTION_37_12();
      sub_2171F0738(v606, v607, v608);
      goto LABEL_86;
    }

    OUTLINED_FUNCTION_61_4();
    v584 = OUTLINED_FUNCTION_29_16();
    v586 = sub_21733E874(v584, v585);
    OUTLINED_FUNCTION_62_10();
    OUTLINED_FUNCTION_35_11();
    v587 = OUTLINED_FUNCTION_40_13();
    sub_2171F0738(v587, v588, v589);
    if ((v586 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (v757)
    {
      goto LABEL_86;
    }

    v593 = OUTLINED_FUNCTION_40_13();
    sub_2171F0738(v593, v594, v595);
  }

  OUTLINED_FUNCTION_126_7();
  OUTLINED_FUNCTION_25_19();
  OUTLINED_FUNCTION_34_13();
  if (*(&v753 + 1))
  {
    v596 = OUTLINED_FUNCTION_8_27();
    sub_21726A630(v596, v597, v598, v599);
    if (!v757)
    {
      goto LABEL_376;
    }

    OUTLINED_FUNCTION_61_4();
    v600 = OUTLINED_FUNCTION_29_16();
    v602 = sub_21733E8C8(v600, v601);
    OUTLINED_FUNCTION_62_10();
    OUTLINED_FUNCTION_35_11();
    v603 = OUTLINED_FUNCTION_40_13();
    sub_2171F0738(v603, v604, v605);
    if ((v602 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (v757)
    {
      goto LABEL_86;
    }

    v609 = OUTLINED_FUNCTION_40_13();
    sub_2171F0738(v609, v610, v611);
  }

  OUTLINED_FUNCTION_126_7();
  OUTLINED_FUNCTION_25_19();
  OUTLINED_FUNCTION_34_13();
  if (*(&v753 + 1))
  {
    v612 = OUTLINED_FUNCTION_8_27();
    sub_21726A630(v612, v613, v614, v615);
    if (!v757)
    {
      v635 = OUTLINED_FUNCTION_37_12();
      sub_2171F0738(v635, v636, v637);
      goto LABEL_86;
    }

    OUTLINED_FUNCTION_61_4();
    v616 = OUTLINED_FUNCTION_29_16();
    v618 = sub_21733E970(v616, v617);
    OUTLINED_FUNCTION_62_10();
    OUTLINED_FUNCTION_35_11();
    v619 = OUTLINED_FUNCTION_40_13();
    sub_2171F0738(v619, v620, v621);
    if ((v618 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (v757)
    {
      goto LABEL_86;
    }

    v622 = OUTLINED_FUNCTION_40_13();
    sub_2171F0738(v622, v623, v624);
  }

  OUTLINED_FUNCTION_126_7();
  OUTLINED_FUNCTION_25_19();
  OUTLINED_FUNCTION_34_13();
  if (*(&v753 + 1))
  {
    v625 = OUTLINED_FUNCTION_8_27();
    sub_21726A630(v625, v626, v627, v628);
    if (v757)
    {
      OUTLINED_FUNCTION_61_4();
      v629 = OUTLINED_FUNCTION_29_16();
      v631 = sub_21733E8C8(v629, v630);
      OUTLINED_FUNCTION_62_10();
      OUTLINED_FUNCTION_35_11();
      v632 = OUTLINED_FUNCTION_40_13();
      sub_2171F0738(v632, v633, v634);
      if ((v631 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_366;
    }

LABEL_376:
    v655 = OUTLINED_FUNCTION_37_12();
    sub_2171F0738(v655, v656, v657);
    goto LABEL_86;
  }

  if (v757)
  {
    goto LABEL_86;
  }

  v638 = OUTLINED_FUNCTION_40_13();
  sub_2171F0738(v638, v639, v640);
LABEL_366:
  OUTLINED_FUNCTION_126_7();
  OUTLINED_FUNCTION_25_19();
  OUTLINED_FUNCTION_34_13();
  if (*(&v753 + 1))
  {
    v641 = OUTLINED_FUNCTION_8_27();
    sub_21726A630(v641, v642, v643, v644);
    if (v757)
    {
      OUTLINED_FUNCTION_61_4();
      v645 = OUTLINED_FUNCTION_29_16();
      v647 = sub_21733E8C8(v645, v646);
      OUTLINED_FUNCTION_62_10();
      OUTLINED_FUNCTION_35_11();
      v648 = OUTLINED_FUNCTION_40_13();
      sub_2171F0738(v648, v649, v650);
      if ((v647 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_372;
    }

    goto LABEL_376;
  }

  if (v757)
  {
LABEL_86:
    v139 = OUTLINED_FUNCTION_40_13();
    goto LABEL_23;
  }

  v651 = OUTLINED_FUNCTION_40_13();
  sub_2171F0738(v651, v652, v653);
LABEL_372:
  if (OUTLINED_FUNCTION_136(v701[57]))
  {
    if (!v654 || (sub_2172849CC() & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else if (v654)
  {
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_144_3();
  if (v659)
  {
    if (!v658)
    {
      goto LABEL_24;
    }
  }

  else
  {
    OUTLINED_FUNCTION_83_2();
    if (v660)
    {
      goto LABEL_24;
    }
  }

  v661 = v701[59];
  v662 = *(v3 + v661);
  if (*(v5 + v661))
  {
    if (!v662)
    {
      goto LABEL_24;
    }

    sub_217751DE8();
    OUTLINED_FUNCTION_211();
    sub_21726F358();
    v664 = v663;

    if ((v664 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else if (v662)
  {
    goto LABEL_24;
  }

  v665 = OUTLINED_FUNCTION_136(v701[60]);
  sub_217270140(v665, v666, v667, v668, v669, v670, v671, v672, v699, v700, v701, v702);
  if ((v673 & 1) == 0)
  {
    goto LABEL_24;
  }

  v674 = v701[61];
  memcpy(v725, (v5 + v674), 0x161uLL);
  memcpy(v722, (v5 + v674), 0x161uLL);
  v675 = v701[61];
  memcpy(v726, (v3 + v675), 0x161uLL);
  memcpy(v721, (v3 + v675), 0x161uLL);
  sub_217269EF4(v725, v720);
  sub_217269EF4(v726, v720);
  static MusicIdentifierSet.== infix(_:_:)();
  LOBYTE(v675) = v676;
  v677 = OUTLINED_FUNCTION_37_12();
  memcpy(v677, v721, 0x161uLL);
  v678 = OUTLINED_FUNCTION_37_12();
  sub_217269F50(v678);
  v679 = OUTLINED_FUNCTION_40_13();
  memcpy(v679, v722, 0x161uLL);
  v680 = OUTLINED_FUNCTION_40_13();
  sub_217269F50(v680);
  if ((v675 & 1) == 0)
  {
    goto LABEL_24;
  }

  v681 = v701[62];
  if ((sub_2177060AC(*(v5 + v681), *(v5 + v681 + 8), *(v5 + v681 + 16), *(v3 + v681), *(v3 + v681 + 8)) & 1) == 0)
  {
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_24_3();
  if (!v684)
  {
    if (v682)
    {
      goto LABEL_24;
    }

    goto LABEL_400;
  }

  if (v682)
  {
    OUTLINED_FUNCTION_59_0(v683);
    v687 = v68 && v685 == v686;
    if (v687 || (sub_217753058() & 1) != 0)
    {
LABEL_400:
      v688 = OUTLINED_FUNCTION_136(v701[64]);
      sub_217261FB0(v688, v689);
      if (v690)
      {
        v691 = OUTLINED_FUNCTION_136(v701[65]);
        sub_217261FB0(v691, v692);
        if (v693)
        {
          v694 = OUTLINED_FUNCTION_136(v701[66]);
          sub_217261FB0(v694, v695);
          if (v696)
          {
            v697 = OUTLINED_FUNCTION_136(v701[67]);
            sub_217261FB0(v697, v698);
          }
        }
      }
    }
  }

LABEL_24:
  OUTLINED_FUNCTION_13();
}

void MusicVideoPropertyProvider.hash(into:)()
{
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v2);
  v3 = v0;
  OUTLINED_FUNCTION_168_0();
  v4 = sub_2177517D8();
  OUTLINED_FUNCTION_0_0();
  v142 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_81();
  v146 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB241C0, &qword_217759480);
  v9 = OUTLINED_FUNCTION_45_0(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_31();
  v141 = v10;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_99();
  v140 = v12;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_99();
  v139 = v14;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v15);
  v137 = &v137 - v16;
  v17 = sub_2177516D8();
  OUTLINED_FUNCTION_0_0();
  v145 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_81();
  v144 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  v22 = OUTLINED_FUNCTION_45_0(v21);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_31();
  v138 = v23;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v24);
  v26 = &v137 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v137 - v28;
  OUTLINED_FUNCTION_225_3(v159);
  OUTLINED_FUNCTION_225_3(v160);
  OUTLINED_FUNCTION_104(v160);
  if (v30)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    memcpy(v152, v159, 0x221uLL);
    OUTLINED_FUNCTION_119();
    memcpy(v153, v159, 0x221uLL);
    sub_217284028(v153, v154);
    Artwork.hash(into:)(v1);
    memcpy(v154, v152, 0x221uLL);
    sub_217284084(v154);
  }

  OUTLINED_FUNCTION_178_4(v150);
  OUTLINED_FUNCTION_178_4(v151);
  OUTLINED_FUNCTION_104(v151);
  if (v30)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    memcpy(v152, v150, 0x161uLL);
    OUTLINED_FUNCTION_119();
    memcpy(v153, v150, 0x161uLL);
    sub_217269EF4(v153, v154);
    MusicIdentifierSet.hash(into:)(v1);
    memcpy(v154, v152, 0x161uLL);
    sub_217269F50(v154);
  }

  if (*(v0 + 920))
  {
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_185_0();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v0 + 936) == 1)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    v31 = *(v0 + 928);
    OUTLINED_FUNCTION_119();
    MEMORY[0x21CEA3550](v31);
  }

  if (*(v0 + 952))
  {
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_185_0();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v32 = type metadata accessor for MusicVideoPropertyProvider(0);
  sub_21726A630(v0 + v32[9], v29, &unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_133(v29, 1, v17);
  v143 = v4;
  if (v30)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    v33 = v144;
    v34 = v145;
    (*(v145 + 32))(v144, v29, v17);
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_1_34();
    v37 = sub_21739F04C(v35, v36, MEMORY[0x277CC9270]);
    OUTLINED_FUNCTION_143_5(v37);
    (*(v34 + 8))(v33, v17);
  }

  v38 = *(v0 + v32[10]);
  if ((v38 & 0xFF00) != 0x200)
  {
    OUTLINED_FUNCTION_119();
    MEMORY[0x21CEA3550](v38);
    sub_217753208();
    sub_217753208();
    sub_217753208();
  }

  sub_217753208();
  v39 = *(v0 + v32[11]);
  if (v39 == 2)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    OUTLINED_FUNCTION_119();
    MEMORY[0x21CEA3550](v39 & 1);
  }

  OUTLINED_FUNCTION_189_0();
  if (v30)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    v41 = *v40;
    OUTLINED_FUNCTION_119();
    if ((v41 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v42 = v41;
    }

    else
    {
      v42 = 0;
    }

    MEMORY[0x21CEA3580](v42);
  }

  if (*(v0 + v32[13]))
  {
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_95_6();
    sub_217267C90();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v43 = (v0 + v32[14]);
  v44 = v43[1];
  v155 = *v43;
  v156 = v44;
  v45 = v43[3];
  v157 = v43[2];
  v158 = v45;
  sub_217265238();
  if (*(v0 + v32[15]))
  {
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_95_6();
    sub_2172660B4();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v46 = *(v0 + v32[16]);
  if (v46)
  {
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_95_6();
    sub_217281100();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  OUTLINED_FUNCTION_152_2();
  if (!v30)
  {
    OUTLINED_FUNCTION_119();
  }

  sub_217753208();
  OUTLINED_FUNCTION_152_2();
  if (!v30)
  {
    OUTLINED_FUNCTION_119();
  }

  sub_217753208();
  OUTLINED_FUNCTION_152_2();
  if (!v30)
  {
    OUTLINED_FUNCTION_119();
  }

  sub_217753208();
  sub_21726A630(v0 + v32[20], v26, &unk_27CB277C0, &qword_217758DC0);
  OUTLINED_FUNCTION_133(v26, 1, v17);
  if (v30)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    v47 = v144;
    v46 = v145;
    OUTLINED_FUNCTION_180_5();
    v48(v47, v26, v17);
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_1_34();
    v51 = sub_21739F04C(v49, v50, MEMORY[0x277CC9270]);
    OUTLINED_FUNCTION_143_5(v51);
    (*(v46 + 8))(v47, v17);
  }

  v52 = v143;
  OUTLINED_FUNCTION_152_2();
  if (!v30)
  {
    OUTLINED_FUNCTION_119();
  }

  sub_217753208();
  OUTLINED_FUNCTION_187_4();
  if (v46)
  {
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_185_0();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  OUTLINED_FUNCTION_187_4();
  if (v46)
  {
    v54 = *v53;
    OUTLINED_FUNCTION_119();
    sub_217753208();
    MEMORY[0x21CEA3550](BYTE1(v54));
    OUTLINED_FUNCTION_95_6();
    sub_2172849DC();
  }

  v55 = v142;
  sub_217753208();
  sub_217265574(v1, *(v0 + v32[24]), *(v0 + v32[24] + 8), *(v0 + v32[24] + 16));
  v56 = v32[25];
  memcpy(v153, (v3 + v56), 0x221uLL);
  memcpy(v154, (v3 + v56), 0x221uLL);
  OUTLINED_FUNCTION_104(v154);
  if (v30)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    memcpy(v148, v153, 0x221uLL);
    OUTLINED_FUNCTION_119();
    memcpy(v149, v153, 0x221uLL);
    sub_217284028(v149, v152);
    Artwork.hash(into:)(v1);
    memcpy(v152, v148, 0x221uLL);
    sub_217284084(v152);
  }

  if (*(v3 + v32[26]))
  {
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_95_6();
    sub_217280F7C();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v57 = (v3 + v32[27]);
  v58 = *v57;
  v59 = v57[1];
  memcpy(v147, v57 + 2, sizeof(v147));
  if (v59)
  {
    memcpy(&v148[2], v57 + 2, 0x68uLL);
    v148[0] = v58;
    v148[1] = v59;
    OUTLINED_FUNCTION_119();
    v149[0] = v58;
    v149[1] = v59;
    memcpy(&v149[2], v147, 0x68uLL);
    sub_2172DF5A4(v149, v152);
    PlayParameters.hash(into:)(v1);
    memcpy(v152, v148, 0x78uLL);
    sub_2172848C0(v152);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v60 = *(v3 + v32[28]);
  if (v60)
  {
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_95_6();
    sub_217281CE8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  sub_21726A630(v3 + v32[29], v137, &qword_27CB241C0, &qword_217759480);
  v61 = OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_133(v61, v62, v52);
  if (v30)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    v63 = OUTLINED_FUNCTION_27_18();
    v64(v63);
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_0_38();
    v67 = sub_21739F04C(v65, v66, MEMORY[0x277CC9588]);
    OUTLINED_FUNCTION_81_5(v67);
    v68 = OUTLINED_FUNCTION_64_8();
    v69(v68);
  }

  OUTLINED_FUNCTION_189_0();
  if (v30)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    v60 = *v70;
    OUTLINED_FUNCTION_119();
    MEMORY[0x21CEA3550](v60);
  }

  OUTLINED_FUNCTION_187_4();
  if (v60)
  {
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_185_0();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  OUTLINED_FUNCTION_189_0();
  if (v30)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    v60 = *v71;
    OUTLINED_FUNCTION_119();
    MEMORY[0x21CEA3550](v60);
  }

  sub_21726A630(v3 + v32[33], v138, &unk_27CB277C0, &qword_217758DC0);
  v72 = OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_133(v72, v73, v17);
  if (v30)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    v74 = v144;
    v75 = v145;
    OUTLINED_FUNCTION_180_5();
    v76 = OUTLINED_FUNCTION_148_3();
    v77(v76);
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_1_34();
    v80 = sub_21739F04C(v78, v79, MEMORY[0x277CC9270]);
    OUTLINED_FUNCTION_143_5(v80);
    v81 = *(v75 + 8);
    v60 = v75 + 8;
    v82 = v74;
    v52 = v143;
    v81(v82, v17);
  }

  OUTLINED_FUNCTION_187_4();
  if (v60)
  {
    OUTLINED_FUNCTION_119();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  sub_21726A630(v3 + v32[35], v139, &qword_27CB241C0, &qword_217759480);
  v83 = OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_133(v83, v84, v52);
  if (v30)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    v85 = OUTLINED_FUNCTION_27_18();
    v86(v85);
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_0_38();
    v89 = sub_21739F04C(v87, v88, MEMORY[0x277CC9588]);
    OUTLINED_FUNCTION_81_5(v89);
    v90 = OUTLINED_FUNCTION_64_8();
    v91(v90);
  }

  v92 = *(v3 + v32[36]);
  if (v92 == 3)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    OUTLINED_FUNCTION_119();
    MEMORY[0x21CEA3550](v92);
  }

  OUTLINED_FUNCTION_152_2();
  if (!v30)
  {
    OUTLINED_FUNCTION_119();
  }

  sub_217753208();
  OUTLINED_FUNCTION_152_2();
  if (!v30)
  {
    OUTLINED_FUNCTION_119();
  }

  sub_217753208();
  OUTLINED_FUNCTION_152_2();
  if (!v30)
  {
    OUTLINED_FUNCTION_119();
  }

  sub_217753208();
  v93 = *(v3 + v32[40]);
  if (v93 == 5)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    OUTLINED_FUNCTION_119();
    MEMORY[0x21CEA3550](v93);
  }

  v94 = *(v3 + v32[41]);
  if (v94 == 7)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    OUTLINED_FUNCTION_119();
    MEMORY[0x21CEA3550](v94);
  }

  OUTLINED_FUNCTION_189_0();
  if (v30)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    v94 = *v95;
    OUTLINED_FUNCTION_119();
    MEMORY[0x21CEA3550](v94);
  }

  sub_21726A630(v3 + v32[43], v140, &qword_27CB241C0, &qword_217759480);
  v96 = OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_133(v96, v97, v52);
  if (v30)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    v98 = OUTLINED_FUNCTION_27_18();
    v99(v98);
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_0_38();
    v102 = sub_21739F04C(v100, v101, MEMORY[0x277CC9588]);
    OUTLINED_FUNCTION_81_5(v102);
    v103 = OUTLINED_FUNCTION_64_8();
    v104(v103);
  }

  sub_21726A630(v3 + v32[44], v141, &qword_27CB241C0, &qword_217759480);
  v105 = OUTLINED_FUNCTION_181();
  OUTLINED_FUNCTION_133(v105, v106, v52);
  if (v30)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    v107 = OUTLINED_FUNCTION_27_18();
    v108(v107);
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_0_38();
    v111 = sub_21739F04C(v109, v110, MEMORY[0x277CC9588]);
    OUTLINED_FUNCTION_81_5(v111);
    (*(v55 + 8))(v94, v52);
  }

  OUTLINED_FUNCTION_189_0();
  if (v30)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    v113 = *v112;
    OUTLINED_FUNCTION_119();
    MEMORY[0x21CEA3550](v113);
  }

  if (*(v3 + v32[46]) != 2)
  {
    OUTLINED_FUNCTION_119();
  }

  sub_217753208();
  v114 = *(v3 + v32[47]);
  if (v114 == 10)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    OUTLINED_FUNCTION_119();
    MEMORY[0x21CEA3550](v114);
  }

  OUTLINED_FUNCTION_189_0();
  if (v30)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    v116 = *v115;
    OUTLINED_FUNCTION_119();
    if ((v116 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v117 = v116;
    }

    else
    {
      v117 = 0;
    }

    MEMORY[0x21CEA3580](v117);
  }

  OUTLINED_FUNCTION_157_5(&qword_27CB25318, &qword_2177657C0, v32[49]);
  if (v152[11])
  {
    OUTLINED_FUNCTION_60_12();
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_121_7();
    _s8MusicKit0A31PersonalRecommendationsResponseV4hash4intoys6HasherVz_tF_0();
    sub_2171F0738(v149, &qword_27CB25388, &unk_21775D410);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  OUTLINED_FUNCTION_157_5(&qword_27CB25338, &unk_21775D3E0, v32[50]);
  if (v152[11])
  {
    OUTLINED_FUNCTION_60_12();
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_121_7();
    _s8MusicKit0A31PersonalRecommendationsResponseV4hash4intoys6HasherVz_tF_0();
    sub_2171F0738(v149, &qword_27CB25380, &unk_21775DAA0);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  OUTLINED_FUNCTION_157_5(&qword_27CB25310, &unk_21775D3D0, v32[51]);
  if (v152[11])
  {
    OUTLINED_FUNCTION_60_12();
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_121_7();
    _s8MusicKit0A31PersonalRecommendationsResponseV4hash4intoys6HasherVz_tF_0();
    sub_2171F0738(v149, &qword_27CB25398, &unk_21776C4F0);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  OUTLINED_FUNCTION_157_5(&qword_27CB25320, &unk_21776E020, v32[52]);
  if (v152[11])
  {
    OUTLINED_FUNCTION_60_12();
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_121_7();
    _s8MusicKit0A31PersonalRecommendationsResponseV4hash4intoys6HasherVz_tF_0();
    sub_2171F0738(v149, &qword_27CB27C80, &unk_21775D420);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  OUTLINED_FUNCTION_157_5(&qword_27CB25338, &unk_21775D3E0, v32[53]);
  if (v152[11])
  {
    OUTLINED_FUNCTION_60_12();
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_121_7();
    _s8MusicKit0A31PersonalRecommendationsResponseV4hash4intoys6HasherVz_tF_0();
    sub_2171F0738(v149, &qword_27CB25380, &unk_21775DAA0);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  OUTLINED_FUNCTION_157_5(&qword_27CB255A8, &unk_21775D450, v32[54]);
  if (v152[11])
  {
    OUTLINED_FUNCTION_60_12();
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_121_7();
    _s8MusicKit0A31PersonalRecommendationsResponseV4hash4intoys6HasherVz_tF_0();
    sub_2171F0738(v149, &qword_27CB27820, &qword_21775DAB0);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  OUTLINED_FUNCTION_157_5(&qword_27CB25338, &unk_21775D3E0, v32[55]);
  if (v152[11])
  {
    OUTLINED_FUNCTION_60_12();
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_121_7();
    _s8MusicKit0A31PersonalRecommendationsResponseV4hash4intoys6HasherVz_tF_0();
    sub_2171F0738(v149, &qword_27CB25380, &unk_21775DAA0);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  OUTLINED_FUNCTION_157_5(&qword_27CB25338, &unk_21775D3E0, v32[56]);
  if (v152[11])
  {
    OUTLINED_FUNCTION_60_12();
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_121_7();
    _s8MusicKit0A31PersonalRecommendationsResponseV4hash4intoys6HasherVz_tF_0();
    sub_2171F0738(v149, &qword_27CB25380, &unk_21775DAA0);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  if (*(v3 + v32[57]))
  {
    OUTLINED_FUNCTION_119();
    sub_2172849D8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  OUTLINED_FUNCTION_189_0();
  if (v30)
  {
    OUTLINED_FUNCTION_120();
  }

  else
  {
    v119 = *v118;
    OUTLINED_FUNCTION_119();
    if ((v119 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v120 = v119;
    }

    else
    {
      v120 = 0;
    }

    MEMORY[0x21CEA3580](v120);
  }

  v121 = *(v3 + v32[59]);
  if (v121)
  {
    OUTLINED_FUNCTION_119();
    sub_21727DDE0(v1, v121, v122, v123, v124, v125, v126);
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v127 = OUTLINED_FUNCTION_201();
  sub_217281970(v127, v128);
  memcpy(v152, (v3 + v32[61]), 0x161uLL);
  MusicIdentifierSet.hash(into:)(v1);
  sub_217751FF8();
  if (*(v3 + v32[63] + 8))
  {
    OUTLINED_FUNCTION_119();
    OUTLINED_FUNCTION_95_6();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_120();
  }

  v129 = OUTLINED_FUNCTION_201();
  sub_217265A08(v129, v130);
  v131 = OUTLINED_FUNCTION_201();
  sub_217265A08(v131, v132);
  v133 = OUTLINED_FUNCTION_201();
  sub_217265A08(v133, v134);
  v135 = OUTLINED_FUNCTION_201();
  sub_217265A08(v135, v136);
  OUTLINED_FUNCTION_13();
}

uint64_t MusicVideoPropertyProvider.hashValue.getter()
{
  sub_2177531E8();
  MusicVideoPropertyProvider.hash(into:)();
  return sub_217753238();
}

void (*sub_21739EE44(void *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v5 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v5;
  v5[8] = a2;
  v5[9] = v2;
  MusicVideoPropertyProvider.subscript.getter();
  return sub_217399308;
}

uint64_t sub_21739EEC0(uint64_t a1)
{
  sub_2177531E8();
  MusicVideoPropertyProvider.hash(into:)();
  return sub_217753238();
}

uint64_t sub_21739EF44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicVideoPropertyProvider(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21739EFA8(uint64_t a1)
{
  v2 = type metadata accessor for MusicVideoPropertyProvider(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21739F04C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21739F0BC(uint64_t a1)
{
  sub_2172E2E58(319, &qword_280BE7698, &type metadata for Artwork);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2172E2E58(319, &qword_280BE8010, &type metadata for MusicIdentifierSet);
    if (v5 > 0x3F)
    {
      return v4;
    }

    sub_2172E2E58(319, &qword_280BE7598, MEMORY[0x277D837D0]);
    if (v7 > 0x3F)
    {
      return v6;
    }

    sub_2172E2E58(319, &qword_280BE7528, MEMORY[0x277D83B88]);
    if (v9 > 0x3F)
    {
      return v8;
    }

    sub_21739F80C(319, qword_280BE99F8, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
    if (v11 > 0x3F)
    {
      return v10;
    }

    sub_2172E2E58(319, qword_280BE7E70, &type metadata for CatalogAsset);
    if (v12 > 0x3F)
    {
      return v4;
    }

    sub_2172E2E58(319, &qword_280BE7E08, &type metadata for ContentRating);
    if (v13 > 0x3F)
    {
      return v4;
    }

    sub_2172E2E58(319, &qword_280BE7538, MEMORY[0x277D839F8]);
    if (v15 > 0x3F)
    {
      return v14;
    }

    sub_217351B44(319, &qword_280BE75A8, &qword_27CB24BE8, &qword_2177595F0);
    if (v16 > 0x3F)
    {
      return v4;
    }

    sub_2172E2E58(319, &qword_280BE7DE8, &type metadata for EditorialNotes);
    if (v17 > 0x3F)
    {
      return v4;
    }

    sub_217351B44(319, &qword_280BE75B0, &qword_27CB24BE0, &unk_2177657E0);
    if (v18 > 0x3F)
    {
      return v4;
    }

    sub_217351B44(319, &qword_280BE7548, &qword_27CB24C58, &unk_2177677B0);
    if (v19 > 0x3F)
    {
      return v4;
    }

    sub_2172E2E58(319, &qword_280BE7540, MEMORY[0x277D839B0]);
    if (v20 > 0x3F)
    {
      return v4;
    }

    sub_2172E2E58(319, &qword_280BE7CB0, &type metadata for HomeSharingAsset);
    if (v21 > 0x3F)
    {
      return v4;
    }

    sub_2172E2E58(319, &qword_280BE7618, &type metadata for FileAsset);
    if (v22 > 0x3F)
    {
      return v4;
    }

    sub_2172E2E58(319, &qword_280BE7F18, &type metadata for MusicLyrics);
    if (v23 > 0x3F)
    {
      return v4;
    }

    sub_217351B44(319, &qword_280BE7558, &qword_27CB24C50, &unk_217759650);
    v2 = v24;
    if (v25 > 0x3F)
    {
      return v2;
    }

    sub_2172E2E58(319, &qword_280BE7DD0, &type metadata for PlayParameters);
    v2 = v26;
    if (v27 > 0x3F)
    {
      return v2;
    }

    sub_217351B44(319, &qword_280BE7568, &qword_27CB24C48, &qword_217759648);
    v2 = v28;
    if (v29 > 0x3F)
    {
      return v2;
    }

    sub_21739F80C(319, &qword_280BE99F0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    v2 = v30;
    if (v31 > 0x3F)
    {
      return v2;
    }

    sub_2172E2E58(319, qword_280BE7948, &type metadata for LegacyModelFavoriteStatus);
    if (v32 > 0x3F)
    {
      return v4;
    }

    sub_2172E2E58(319, &qword_280BE77E0, &type metadata for LegacyModelKeepLocalEnabledStatus);
    if (v33 > 0x3F)
    {
      return v4;
    }

    sub_2172E2E58(319, &qword_280BE77D8, &type metadata for LegacyModelKeepLocalManagedStatus);
    if (v34 > 0x3F)
    {
      return v4;
    }

    sub_2172E2E58(319, &qword_280BE77C0, &type metadata for LegacyModelKeepLocalManagedStatusReasons);
    if (v35 > 0x3F)
    {
      return v4;
    }

    sub_2172E2E58(319, &unk_280BE7EF8, &type metadata for CloudStatus);
    v2 = v36;
    if (v37 > 0x3F)
    {
      return v2;
    }

    sub_217351B44(319, &qword_280BE7FB8, &qword_27CB25388, &unk_21775D410);
    v2 = v38;
    if (v39 > 0x3F)
    {
      return v2;
    }

    sub_217351B44(319, &qword_280BE7FD0, &qword_27CB25380, &unk_21775DAA0);
    v2 = v40;
    if (v41 > 0x3F)
    {
      return v2;
    }

    sub_217351B44(319, &qword_280BE7FA0, &qword_27CB25398, &unk_21776C4F0);
    if (v42 > 0x3F)
    {
      return v4;
    }

    sub_217351B44(319, &qword_280BE7FB0, &qword_27CB27C80, &unk_21775D420);
    if (v43 > 0x3F)
    {
      return v4;
    }

    sub_217351B44(319, &qword_280BE7FC0, &qword_27CB27820, &qword_21775DAB0);
    if (v44 > 0x3F)
    {
      return v4;
    }

    sub_217351B44(319, &qword_280BE7578, &qword_27CB24C40, &qword_217759640);
    v2 = v45;
    if (v46 <= 0x3F)
    {
      sub_217351B44(319, &qword_280BE7550, &qword_27CB24BD8, &unk_2177595E0);
      v2 = v47;
      if (v48 <= 0x3F)
      {
        sub_21739F80C(319, &qword_280BE7590, type metadata accessor for AnyMusicProperty, MEMORY[0x277D83940]);
        v2 = v49;
        if (v50 <= 0x3F)
        {
          sub_217351BFC();
          v2 = v51;
          if (v52 <= 0x3F)
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

void sub_21739F80C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t OUTLINED_FUNCTION_11_26(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_16_21(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_18_19(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_21_16(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_34_13()
{

  return sub_21726A630(v1 + v4, v3 + 104, v0, v2);
}

uint64_t OUTLINED_FUNCTION_41_12@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v5 = *(v3 - 304) + a3;

  return sub_21726A630(v5, v3 - 192, a1, a2);
}

uint64_t OUTLINED_FUNCTION_53_11()
{

  return sub_2172E3DC0();
}

uint64_t OUTLINED_FUNCTION_54_10()
{

  return sub_21726A630(v1 + v4, v5 + v3, v0, v2);
}

void *OUTLINED_FUNCTION_60_12()
{

  return memcpy((v0 + 736), (v0 + 2008), 0x68uLL);
}

void *OUTLINED_FUNCTION_61_4()
{

  return memcpy((v0 + 2624), (v1 + 104), 0x68uLL);
}

uint64_t OUTLINED_FUNCTION_62_10()
{

  return sub_2171F0738(v0 + 2624, v1, v2);
}

void *OUTLINED_FUNCTION_63_11()
{

  return memcpy((v0 - 192), (v0 - 296), 0x68uLL);
}

uint64_t OUTLINED_FUNCTION_72_8(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_74_7(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_76_7(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_78_5(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_79_9(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_81_8(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_82_7(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_85_7(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_86_5(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_88_7(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_90_8(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_91_7(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_92_7(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_93_8(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_94_5(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_96_7(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_97_7(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_99_7(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_100_7(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_102_7(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_103_7(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_104_5(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_106_5(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_107_6(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_108_7(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_109_6(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_111_8(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_112_8(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_113_7(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_114_4(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_115_5(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_116_9(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_117_9(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_118_7()
{

  return type metadata accessor for MusicVideoPropertyProvider(0);
}

uint64_t OUTLINED_FUNCTION_128_7()
{
}

uint64_t OUTLINED_FUNCTION_130_6()
{

  return type metadata accessor for MusicVideoPropertyProvider(0);
}

uint64_t OUTLINED_FUNCTION_139_7(uint64_t a1)
{

  return static AnyMusicProperty.== infix(_:_:)(a1, v1);
}

uint64_t OUTLINED_FUNCTION_140_7()
{
}

uint64_t OUTLINED_FUNCTION_141_6()
{

  return sub_217751F08();
}

uint64_t OUTLINED_FUNCTION_142_7(uint64_t a1)
{

  return sub_217752D08();
}

uint64_t OUTLINED_FUNCTION_155_6()
{
}

uint64_t OUTLINED_FUNCTION_156_6@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_21726A630(v3 + a3, v4 - 296, a1, a2);
}

uint64_t OUTLINED_FUNCTION_157_5@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_21726A630(v4 + a3, v3 + 2008, a1, a2);
}

uint64_t *OUTLINED_FUNCTION_167_5()
{
  *(v0 + 1736) = v1;

  return __swift_allocate_boxed_opaque_existential_0((v0 + 1712));
}

void *OUTLINED_FUNCTION_171_4()
{

  return memcpy((v0 + 7192), (v1 + 16), 0x68uLL);
}

uint64_t OUTLINED_FUNCTION_173_5()
{

  return type metadata accessor for MusicVideoPropertyProvider(0);
}

uint64_t OUTLINED_FUNCTION_176_5(uint64_t a1, uint64_t a2)
{

  return sub_21726A630(a1, a2, v3, v2);
}

void *OUTLINED_FUNCTION_178_4(void *a1)
{

  return memcpy(a1, (v1 + 552), 0x161uLL);
}

uint64_t OUTLINED_FUNCTION_179_2()
{

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_190_5()
{

  return sub_217751F08();
}

void *OUTLINED_FUNCTION_192_4(void *a1)
{

  return memcpy(a1, (v1 + 552), 0x161uLL);
}

uint64_t OUTLINED_FUNCTION_193_4()
{
}

uint64_t OUTLINED_FUNCTION_194_4(uint64_t a1, uint64_t a2)
{

  return sub_21726A630(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_195_4()
{
}

void *OUTLINED_FUNCTION_196_4(void *a1)
{

  return memcpy(a1, (v1 + 16), 0x68uLL);
}

uint64_t get_enum_tag_for_layout_string_8MusicKit0A3APIV8MetadataV14AuthenticationVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
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

uint64_t get_enum_tag_for_layout_string_8MusicKit0A3APIV8MetadataVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  v3 = v2 <= 0;
  if (v2 < 0)
  {
    v2 = -1;
  }

  if (v3)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2173A0298(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFD && *(a1 + 24))
    {
      v2 = *a1 + 2147483644;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v4 = v3 - 1;
      if (v4 <= 1)
      {
        v5 = 1;
      }

      else
      {
        v5 = v4;
      }

      v6 = v5 - 2;
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

uint64_t sub_2173A02FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_2173A036C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB26A80;
  if (!qword_27CB26A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB26A80);
  }

  return result;
}

uint64_t sub_2173A03C0(int a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  if (a3 == 2)
  {
    if (a6 == 2)
    {
      return 1;
    }
  }

  else if (a6 != 2)
  {
    if (a3 == 1)
    {
      if (a6 == 1)
      {
        return 1;
      }
    }

    else if (a6 != 1)
    {
      if (a1 == 2)
      {
        if (a4 != 2)
        {
          return 0;
        }
      }

      else if (a4 == 2 || ((a4 ^ a1) & 1) != 0)
      {
        return 0;
      }

      if (a3)
      {
        if (a6)
        {
          v7 = a2 == a5 && a3 == a6;
          if (v7 || (sub_217753058() & 1) != 0)
          {
            return 1;
          }
        }
      }

      else if (!a6)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_2173A0480(uint64_t a1, uint64_t a2)
{
  if (a1 == 1635018093 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_217753058();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2173A04F8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26AA0, &qword_217765E50);
  OUTLINED_FUNCTION_0_39();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = v21 - v12;
  v14 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2173A0B08(v14, v15, v16);
  v17 = sub_2177532F8();
  v21[1] = a2;
  v21[2] = a3;
  v21[3] = a4;
  sub_2173A0BB0(v17, v18, v19);
  sub_217752F38();
  return (*(v10 + 8))(v13, v4);
}

uint64_t sub_2173A0644(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a4 == 2)
  {
    return sub_217753208();
  }

  sub_217753208();
  if (a4 == 1)
  {
    return sub_217753208();
  }

  sub_217753208();
  if (a2 != 2)
  {
    sub_217753208();
  }

  sub_217753208();
  if (!a4)
  {
    return sub_217753208();
  }

  sub_217753208();

  return sub_217751FF8();
}

uint64_t sub_2173A06FC(char a1, uint64_t a2, uint64_t a3)
{
  sub_2177531E8();
  if (a3 == 2)
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_35();
  if (a3 == 1)
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_1_35();
  if (a1 != 2)
  {
    OUTLINED_FUNCTION_1_35();
  }

  sub_217753208();
  if (!a3)
  {
LABEL_7:
    sub_217753208();
  }

  else
  {
    OUTLINED_FUNCTION_1_35();
    sub_217751FF8();
  }

  return sub_217753238();
}

void *sub_2173A07AC(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26A88, &qword_217765E48);
  OUTLINED_FUNCTION_0_39();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = v16 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2173A0B08(v9, v10, v11);
  v12 = sub_2177532C8();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    sub_2173A0B5C(v12, v13, v14);
    sub_217752E58();
    (*(v5 + 8))(v8, v2);
    v9 = v16[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}