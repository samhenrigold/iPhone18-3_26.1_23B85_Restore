uint64_t sub_1E385C68C(uint64_t a1, char a2)
{
  v2 = a1 - 1;
  result = 0x7473726946;
  switch(v2)
  {
    case 0:
      return result;
    case 1:
      return 0x646E6F636553;
    case 2:
      return 0x6472696854;
    case 3:
      v7 = 1920298822;
      return v7 & 0xFFFF0000FFFFFFFFLL | 0x687400000000;
    case 4:
      v6 = 1952868678;
      return v6 & 0xFFFF0000FFFFFFFFLL | 0x6800000000;
    case 5:
      v6 = 1954048339;
      return v6 & 0xFFFF0000FFFFFFFFLL | 0x6800000000;
    case 6:
      v5 = 0x746E65766553;
      return v5 & 0xFFFFFFFFFFFFLL | 0x68000000000000;
    case 7:
      v7 = 1751607621;
      return v7 & 0xFFFF0000FFFFFFFFLL | 0x687400000000;
    case 8:
      return 0x68746E694ELL;
    case 9:
      v6 = 1953391956;
      return v6 & 0xFFFF0000FFFFFFFFLL | 0x6800000000;
    case 10:
      return 0x68746E6576656C45;
    case 11:
      v5 = 0x74666C657754;
      return v5 & 0xFFFFFFFFFFFFLL | 0x68000000000000;
    case 12:
      if (a2)
      {
        return 0x6E65697472696854;
      }

      else
      {
        return 0x6E65657472696854;
      }

    case 13:
      v8 = 1920298822;
      return v8 | 0x6E65657400000000;
    case 14:
      v4 = 1952868678;
      return v4 | 0x746E656500000000;
    case 15:
      v4 = 1954048339;
      return v4 | 0x746E656500000000;
    case 16:
      return 0x6565746E65766553;
    case 17:
      v8 = 1751607621;
      return v8 | 0x6E65657400000000;
    case 18:
      v8 = 1701734734;
      return v8 | 0x6E65657400000000;
    case 19:
      v9 = 1852143444;
      goto LABEL_36;
    case 20:
    case 23:
      return 0x462D79746E657754;
    case 21:
    case 25:
    case 26:
      return 0x532D79746E657754;
    case 22:
      return 0x542D79746E657754;
    case 24:
      return 0x462D79746E657754;
    case 27:
      return 0x452D79746E657754;
    case 28:
      return 0x4E2D79746E657754;
    case 29:
      v9 = 1919510612;
LABEL_36:
      result = v9 | 0x7465697400000000;
      break;
    default:
      result = 0x6172747845;
      break;
  }

  return result;
}

uint64_t sub_1E385C974()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BD90, &unk_1E42A6300);
  v3 = OUTLINED_FUNCTION_17_2(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_6();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_21_30();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_12();
  v12 = [objc_opt_self() sharedInstance];
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  v14 = type metadata accessor for SportsPlayPeriod(0);
  (*(v10 + 16))(v1, v0 + *(v14 + 20), v8);
  v15 = OUTLINED_FUNCTION_124();
  if (v16(v15) != *MEMORY[0x1E69D3BD8])
  {

    v18 = OUTLINED_FUNCTION_124();
    v19(v18);
    return 0;
  }

  sub_1E385B9C0(v0 + *(v14 + 24), v0);
  v17 = sub_1E4205B24();
  if (__swift_getEnumTagSinglePayload(v0, 1, v17) == 1)
  {

LABEL_5:
    sub_1E325F6F0(v0, &qword_1ECF2BD90, &unk_1E42A6300);
    return 0;
  }

  sub_1E385B9C0(v0, v6);
  v22 = *(v17 - 8);
  v23 = (*(v22 + 88))(v6, v17);
  if (v23 == *MEMORY[0x1E69D3CC0])
  {
    OUTLINED_FUNCTION_15_42();
  }

  else if (v23 != *MEMORY[0x1E69D3CB0])
  {

    (*(v22 + 8))(v6, v17);
    goto LABEL_5;
  }

  sub_1E325F6F0(v0, &qword_1ECF2BD90, &unk_1E42A6300);
  sub_1E42074B4();

  OUTLINED_FUNCTION_4_51();
  v32 = v25;
  v33 = v24 | 0xEE002E646E450000;
  v26 = OUTLINED_FUNCTION_53();
  MEMORY[0x1E69109E0](v26);

  MEMORY[0x1E69109E0](0xD000000000000011, 0x80000001E4263840);
  v27 = sub_1E385C68C(*v0, 0);
  v29 = v28;

  MEMORY[0x1E69109E0](v27, v29);

  v30 = sub_1E38469F4(v32, v33, v13);
  if (v30)
  {
    v31 = v30;
    v20 = sub_1E4205F14();

    return v20;
  }

  return 0;
}

void sub_1E385CD18()
{
  OUTLINED_FUNCTION_31_1();
  v2 = sub_1E4205BF4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = sub_1E4205784();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_12();
  v13 = [objc_opt_self() sharedInstance];
  if (v13)
  {
    v14 = v13;
    v15 = type metadata accessor for SportsPlayPeriod(0);
    (*(v11 + 16))(v1, v0 + *(v15 + 20), v9);
    v16 = OUTLINED_FUNCTION_124();
    v18 = v17(v16);
    if (v18 == *MEMORY[0x1E69D3BE0])
    {
      v19 = 0x80000001E4263940;
      v20 = OUTLINED_FUNCTION_7_58(*v0);
      v21 = 0xD000000000000012;
    }

    else
    {
      if (v18 == *MEMORY[0x1E69D3BD0])
      {
        OUTLINED_FUNCTION_7_58(*v0);
        OUTLINED_FUNCTION_4_51();
        v34 = v23;
        v35 = v22 | 0xEF2E666C61480000;
        goto LABEL_7;
      }

      if (v18 != *MEMORY[0x1E69D3BD8])
      {
        if (v18 != *MEMORY[0x1E69D3BF0])
        {
          if (v18 != *MEMORY[0x1E69D3BF8])
          {

            v32 = OUTLINED_FUNCTION_124();
            v33(v32);
            goto LABEL_12;
          }

          v24 = 0xD00000000000001ELL;
          v25 = 0x80000001E42638A0;
          goto LABEL_9;
        }

        v28 = *(v15 + 28);
        (*(v4 + 104))(v8, *MEMORY[0x1E69D3D78], v2);
        OUTLINED_FUNCTION_1_75();
        LOBYTE(v28) = sub_1E385BEE4(v0 + v28, v8, v29, v30, MEMORY[0x1E69D3D90], MEMORY[0x1E69D3DA0]);
        (*(v4 + 8))(v8, v2);
        if (v28)
        {
          v34 = 0xD00000000000001FLL;
          v35 = 0x80000001E4263900;
          if (*v0 == 2)
          {
            v31 = OUTLINED_FUNCTION_11_37();
          }

          else
          {
            if (*v0 != 1)
            {
              goto LABEL_8;
            }

            v31 = OUTLINED_FUNCTION_12_37();
          }

          MEMORY[0x1E69109E0](v31);
          goto LABEL_8;
        }

        if (*v0 == 1)
        {
          v25 = 0x80000001E42638E0;
          v24 = 0xD000000000000012;
LABEL_9:
          v26 = sub_1E38469F4(v24, v25, v14);
          if (v26)
          {
            v27 = v26;
            sub_1E4205F14();
            OUTLINED_FUNCTION_145();
          }

          else
          {
          }

          goto LABEL_12;
        }

        v20 = OUTLINED_FUNCTION_7_58(*v0);
        v34 = 0xD000000000000019;
        v35 = 0x80000001E42638C0;
LABEL_7:
        MEMORY[0x1E69109E0](v20);

LABEL_8:
        v24 = v34;
        v25 = v35;
        goto LABEL_9;
      }

      v19 = 0x80000001E4263920;
      v20 = OUTLINED_FUNCTION_7_58(*v0);
      v21 = 0xD000000000000019;
    }

    v34 = v21;
    v35 = v19;
    goto LABEL_7;
  }

LABEL_12:
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E385D0F0()
{
  v1 = sub_1E4205BF4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  v8 = [objc_opt_self() sharedInstance];
  if (v8)
  {
    v9 = v8;
    v10 = 0xD000000000000012;
    v11 = type metadata accessor for SportsPlayPeriod(0);
    (*(v3 + 16))(v7, v0 + *(v11 + 28), v1);
    if ((*(v3 + 88))(v7, v1) == *MEMORY[0x1E69D3D88])
    {
      v12 = "TV.Scores.Ordinal.";
      v10 = 0xD000000000000025;
    }

    else
    {
      (*(v3 + 8))(v7, v1);
      v12 = "TV.Scores.Quarter.";
    }

    v13 = v12 | 0x8000000000000000;
    v14 = sub_1E385C68C(*v0, 1);
    v16 = v15;

    MEMORY[0x1E69109E0](v14, v16);

    v17 = sub_1E38469F4(v10, v13, v9);
    if (v17)
    {
      v18 = v17;
      sub_1E4205F14();
      OUTLINED_FUNCTION_145();
    }

    else
    {
    }
  }

  return OUTLINED_FUNCTION_57();
}

void sub_1E385D2C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = sub_1E4205B24();
  OUTLINED_FUNCTION_0_10();
  v29 = v28;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_5();
  v33 = v32 - v31;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BD90, &unk_1E42A6300);
  OUTLINED_FUNCTION_17_2(v34);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_9_12();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BDA0, &unk_1E42E44D0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v37);
  v39 = &a9 - v38;
  if (*v26 != *v24)
  {
    goto LABEL_12;
  }

  v40 = type metadata accessor for SportsPlayPeriod(0);
  OUTLINED_FUNCTION_5_55();
  if ((sub_1E385BEE4(v26 + v41, v24 + v41, v42, v43, MEMORY[0x1E69D3C00], MEMORY[0x1E69D3C18]) & 1) == 0)
  {
    goto LABEL_12;
  }

  v44 = *(v40 + 24);
  v45 = *(v36 + 48);
  sub_1E385B9C0(v26 + v44, v39);
  sub_1E385B9C0(v24 + v44, &v39[v45]);
  OUTLINED_FUNCTION_23_25(v39);
  if (v46)
  {
    OUTLINED_FUNCTION_23_25(&v39[v45]);
    if (v46)
    {
      sub_1E325F6F0(v39, &qword_1ECF2BD90, &unk_1E42A6300);
LABEL_14:
      OUTLINED_FUNCTION_1_75();
      sub_1E385BEE4(v26 + v49, v24 + v49, v50, v51, MEMORY[0x1E69D3D90], MEMORY[0x1E69D3DA0]);
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  sub_1E385B9C0(v39, v20);
  OUTLINED_FUNCTION_23_25(&v39[v45]);
  if (v46)
  {
    (*(v29 + 8))(v20, v27);
LABEL_11:
    sub_1E325F6F0(v39, &qword_1ECF2BDA0, &unk_1E42E44D0);
    goto LABEL_12;
  }

  (*(v29 + 32))(v33, &v39[v45], v27);
  sub_1E385D720(&qword_1ECF2BDA8, MEMORY[0x1E69D3CC8], MEMORY[0x1E69D3CD8]);
  v47 = sub_1E4205E84();
  v48 = *(v29 + 8);
  v48(v33, v27);
  v48(v20, v27);
  sub_1E325F6F0(v39, &qword_1ECF2BD90, &unk_1E42A6300);
  if (v47)
  {
    goto LABEL_14;
  }

LABEL_12:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E385D61C(uint64_t a1)
{
  sub_1E4205784();
  if (v1 <= 0x3F)
  {
    sub_1E385D6C8(319);
    if (v2 <= 0x3F)
    {
      sub_1E4205BF4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E385D6C8(uint64_t a1)
{
  if (!qword_1ECF2BDB0)
  {
    sub_1E4205B24();
    v1 = sub_1E4207104();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECF2BDB0);
    }
  }
}

uint64_t sub_1E385D720(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

int *sub_1E385D788@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  *a5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for SportsCanonicalBannerScoreboardView(0);
  *(a5 + result[5]) = a1;
  *(a5 + result[6]) = a2;
  *(a5 + result[7]) = a3;
  *(a5 + result[8]) = a4;
  return result;
}

void sub_1E385D824()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v3 = type metadata accessor for SportsCanonicalBannerScoreboardView(0);
  v4 = *(v0 + v3[5]);
  v5 = *(v0 + v3[7]);
  v6 = *(v0 + v3[8]);
  *v2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  swift_storeEnumTagMultiPayload();
  v7 = type metadata accessor for ClockScoresView(0);
  v8 = (v2 + v7[5]);
  type metadata accessor for SportsCanonicalBannerScoreboardViewModel(0);
  OUTLINED_FUNCTION_1_76();
  sub_1E38683E4(v9, v10, &unk_1E42E1620);

  *v8 = sub_1E42010C4();
  v8[1] = v11;
  v12 = (v2 + v7[7]);
  type metadata accessor for SportsCanonicalBannerScoreboardViewLayout(0);
  OUTLINED_FUNCTION_19_25();
  sub_1E38683E4(v13, v14, &unk_1E42ABC48);

  *v12 = sub_1E42010C4();
  v12[1] = v15;
  v16 = (*(*v4 + 1144))();
  sub_1E32772D8(v16);
  sub_1E3CFEA54();
  type metadata accessor for FavoriteTeams(0);
  v17 = swift_allocObject();

  sub_1E3866760();
  *(v2 + v7[6]) = v17;
  *(v2 + v7[8]) = v5;
  *(v2 + v7[9]) = v6;
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E385DA24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextBadge(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  OUTLINED_FUNCTION_36();
  (*(v9 + 1856))();
  OUTLINED_FUNCTION_25_13();
  if (v11)
  {
    if (a1)
    {
      goto LABEL_8;
    }
  }

  else if (a1)
  {
    sub_1E3F11040(v10);
    if (v12)
    {
      a1 = v12;
LABEL_9:

      OUTLINED_FUNCTION_18();
      sub_1E3FC96D0(a1, a2, v8);
      v13 = OUTLINED_FUNCTION_8_6();
      sub_1E3867678(v13, v14, v15);
      OUTLINED_FUNCTION_114();
      return __swift_storeEnumTagSinglePayload(v16, v17, v18, v4);
    }

LABEL_8:

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_32_2();

  return __swift_storeEnumTagSinglePayload(v20, v21, v22, v4);
}

void sub_1E385DB90(uint64_t a1@<X8>)
{
  v2 = sub_1E4201B24();
  v3 = sub_1E392CEFC();
  (*(*v3 + 152))(v13);
  v4 = v13[0];
  v5 = v13[1];
  v6 = v13[2];
  v7 = v13[3];

  v11 = v14;
  v12.n128_u64[0] = 0;
  if ((v14 & 1) == 0)
  {
    v8.n128_u64[0] = v4;
    v12.n128_u64[0] = v5;
    v9.n128_u64[0] = v6;
    v10.n128_u64[0] = v7;
    j_nullsub_1(v8, v12, v9, v10);
  }

  *a1 = v2;
  *(a1 + 8) = v12.n128_u64[0];
  *(a1 + 16) = v11 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BDC0, &qword_1E42A6398);
  sub_1E385DC74();
}

void sub_1E385DC74()
{
  OUTLINED_FUNCTION_9_4();
  v3 = v2;
  v152 = v4;
  v142 = sub_1E4202494();
  OUTLINED_FUNCTION_0_10();
  v141 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_17_3(v8 - v7);
  v135 = type metadata accessor for SportsClockView(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_17_3(v11 - v10);
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BF90, &qword_1E42A67D8);
  OUTLINED_FUNCTION_0_10();
  v138 = v12;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v14);
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C220, &qword_1E42A6A58);
  OUTLINED_FUNCTION_0_10();
  v136 = v15;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v17);
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BF98, &qword_1E42A67E0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2_5();
  v132 = v19;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v21);
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BF88, &qword_1E42A67D0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_44();
  v145 = v23;
  v24 = OUTLINED_FUNCTION_138();
  v144 = type metadata accessor for BaseballClockView(v24);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_17_3(v27 - v26);
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BFA0, &qword_1E42A67E8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_44();
  v146 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BFA8, &qword_1E42A67F0);
  v31 = OUTLINED_FUNCTION_17_2(v30);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_2_5();
  v151 = v32;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_25_3();
  v150 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C228, &qword_1E42A6A60);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v131 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C230, &qword_1E42A6A68);
  OUTLINED_FUNCTION_0_10();
  v40 = v39;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_49_2();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C238, &qword_1E42A6A70);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_2_5();
  v148 = v44;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_71_6();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_25_3();
  v153 = v47;
  sub_1E385E7E4();
  v48 = *(v3 + 40);
  sub_1E3868DE8();
  View.accessibilityIdentifier(key:location:)();
  sub_1E325F6F0(v37, &qword_1ECF2C228, &qword_1E42A6A60);
  if (v3[4] && (OUTLINED_FUNCTION_8(), (*(v49 + 152))(v157), (v158 & 1) == 0))
  {
    v52.n128_u64[0] = v157[2];
    v53.n128_u64[0] = v157[3];
    v50.n128_u64[0] = v157[0];
    v51.n128_u64[0] = v157[1];
    j_nullsub_1(v50, v51, v52, v53);
  }

  else
  {
    OUTLINED_FUNCTION_5_8();
  }

  OUTLINED_FUNCTION_3();
  v54 = sub_1E4202734();
  (*(v40 + 32))(v0, v1, v38);
  v55 = (v0 + *(v42 + 36));
  *v55 = v54;
  OUTLINED_FUNCTION_11_4(v55);
  sub_1E3741EA0(v0, v153, &qword_1ECF2C238, &qword_1E42A6A70);
  v56 = *v3;
  if (!*v3)
  {
    goto LABEL_10;
  }

  v57 = static SportsAccessibilityIdentifier.Location.__derived_enum_equals(_:_:)(v48, 4);
  v58 = (*(*v56 + 1184))();
  if ((v57 & 1) == 0 || (v58 & 1) == 0)
  {
    if ((v58 & ~v57 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_12:
    type metadata accessor for SportsBaseballScoreboardViewModel(0);
    v61 = swift_dynamicCastClass();
    if (v61)
    {
      v64 = v61;
      LOBYTE(v155) = v48;
      v154 = 4;
      sub_1E3762E70(v61, v62, v63);

      if ((OUTLINED_FUNCTION_131_2() & 1) == 0)
      {
        OUTLINED_FUNCTION_47_0();
        v142 = (*(v95 + 2432))();
        v96 = *(*v64 + 1520);

        v98 = v96(v97);
        v100 = v99;
        v102 = v101;

        v103 = sub_1E392CEFC();
        LOBYTE(v155) = v48;
        v154 = 4;
        v104 = OUTLINED_FUNCTION_131_2();
        v105 = v131;
        sub_1E3DF3424(v98, v100, v102, v48, 1, v103, (v104 & 1) == 0, v131);
        OUTLINED_FUNCTION_47_11();
        sub_1E3869000(v105, v145, v106);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_7_59();
        sub_1E38683E4(v107, v108, &unk_1E42D3CF8);
        sub_1E3867790();
        v91 = v146;
        sub_1E4201F44();

        OUTLINED_FUNCTION_46_11();
        sub_1E3868194(v105, v109);
        goto LABEL_17;
      }
    }

    (*(*v56 + 1520))(v61);
    static SportsAccessibilityIdentifier.Location.__derived_enum_equals(_:_:)(v48, 4);
    sub_1E392CEFC();
    static SportsAccessibilityIdentifier.Location.__derived_enum_equals(_:_:)(v48, 4);
    v65 = v133;
    sub_1E3B476D4();
    OUTLINED_FUNCTION_52_10();
    v68 = sub_1E38683E4(v66, v67, &unk_1E42BCE20);
    v69 = v134;
    v70 = v135;
    View.accessibilityIdentifier(key:location:)();
    OUTLINED_FUNCTION_51_10();
    sub_1E3868194(v65, v71);
    v72 = v140;
    sub_1E4202464();
    v155 = v70;
    v156 = v68;
    OUTLINED_FUNCTION_8_16();
    swift_getOpaqueTypeConformance2();
    v73 = v139;
    sub_1E4203224();
    (*(v141 + 8))(v72, v142);
    (*(v138 + 8))(v69, v73);

    v74 = sub_1E3FEA350();
    v76 = v75;
    v77 = v132;
    v78 = OUTLINED_FUNCTION_34();
    v79(v78);
    v80 = (v77 + *(v147 + 36));
    *v80 = v74;
    v80[1] = v76;
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v81, v82, v83, v84);
    OUTLINED_FUNCTION_19_1();
    sub_1E3743538(v85, v86, v87, v88);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_7_59();
    sub_1E38683E4(v89, v90, &unk_1E42D3CF8);
    sub_1E3867790();
    v91 = v146;
    sub_1E4201F44();

    OUTLINED_FUNCTION_21_1();
    sub_1E325F6F0(v92, v93, v94);
LABEL_17:
    v60 = v150;
    sub_1E3741EA0(v91, v150, &qword_1ECF2BFA0, &qword_1E42A67E8);
    v59 = 0;
    goto LABEL_18;
  }

  if ((*(*v56 + 1192))())
  {
    goto LABEL_12;
  }

LABEL_9:

LABEL_10:
  v59 = 1;
  v60 = v150;
LABEL_18:
  __swift_storeEnumTagSinglePayload(v60, v59, 1, v149);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v110, v111, v112, v113);
  OUTLINED_FUNCTION_96_2();
  sub_1E3743538(v114, v115, v116, v117);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v118, v119, v120, v121);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C270, &qword_1E42A6A88);
  OUTLINED_FUNCTION_76_4(v122);
  OUTLINED_FUNCTION_107_2(v60);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v123, v124, v125);
  v126 = OUTLINED_FUNCTION_8_6();
  sub_1E325F6F0(v126, v127, &qword_1E42A67F0);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v128, v129, v130);
  OUTLINED_FUNCTION_10_3();
}

void sub_1E385E7E4()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  type metadata accessor for TextBadge(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C278, &qword_1E42A6A90);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_19_2();
  v45 = *v2;
  if (v45)
  {
    v8 = v2[2];
    v9 = v2[3];
    OUTLINED_FUNCTION_132_1();
    OUTLINED_FUNCTION_132_1();
    type metadata accessor for SportsCanonicalBannerScoreboardViewModel(0);
    OUTLINED_FUNCTION_1_76();
    sub_1E38683E4(v10, v11, &unk_1E42E1620);

    OUTLINED_FUNCTION_114_1();
    v12 = sub_1E42010C4();
    *v0 = v8;
    v0[1] = v9;
    v0[2] = v12;
    v0[3] = v13;
    OUTLINED_FUNCTION_34();
    v14 = swift_storeEnumTagMultiPayload();
    sub_1E3868FAC(v14, v15, v16);
    OUTLINED_FUNCTION_9_37();
    sub_1E38683E4(v17, v18, &unk_1E42E3350);

    sub_1E4201F44();
    sub_1E325F6F0(&v45, &qword_1ECF29420, &qword_1E429AFA0);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C260, &qword_1E42A6A80);
LABEL_5:
    OUTLINED_FUNCTION_114();
    __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v19 = v2[2];
  v44 = v19;
  if (v19)
  {
    v20 = v2[3];
    OUTLINED_FUNCTION_158();
    sub_1E3743538(v21, v22, v23, v24);
    OUTLINED_FUNCTION_158();
    sub_1E3743538(v25, v26, v27, v28);

    OUTLINED_FUNCTION_18();
    sub_1E3FC96D0(v19, v20, v6);
    sub_1E3869000(v6, v0, type metadata accessor for TextBadge);
    OUTLINED_FUNCTION_34();
    v29 = swift_storeEnumTagMultiPayload();
    sub_1E3868FAC(v29, v30, v31);
    OUTLINED_FUNCTION_9_37();
    sub_1E38683E4(v32, v33, &unk_1E42E3350);
    sub_1E4201F44();
    sub_1E325F6F0(&v44, &qword_1ECF2BB28, &qword_1E42A2A60);
    OUTLINED_FUNCTION_54_5();
    sub_1E3868194(v6, v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C260, &qword_1E42A6A80);
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C260, &qword_1E42A6A80);
  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_25_2();

  __swift_storeEnumTagSinglePayload(v39, v40, v41, v42);
}

uint64_t sub_1E385EB44@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
}

uint64_t sub_1E385EB60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E38684A0(a1, a2, a3);
  result = sub_1E4201B94();
  qword_1EE28B518 = result;
  return result;
}

uint64_t sub_1E385EB90(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E385EBB8(uint64_t a1, char a2)
{
  sub_1E4207B44();
  MEMORY[0x1E69124B0](a2 & 1);
  return sub_1E4207BA4();
}

uint64_t sub_1E385EBFC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1E385EB90(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1E385EC28@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E385EBA8(*v1);
  *a1 = result;
  return result;
}

void sub_1E385EC74(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BDE8, &qword_1E42A6628);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_19_2();
  sub_1E385ED94();
  OUTLINED_FUNCTION_45_14();
  OUTLINED_FUNCTION_8();
  (*(v5 + 176))(v12);
  if (v13)
  {
    OUTLINED_FUNCTION_5_8();
  }

  else
  {
    v8.n128_u64[0] = v12[2];
    v9.n128_u64[0] = v12[3];
    v6.n128_u64[0] = v12[0];
    v7.n128_u64[0] = v12[1];
    j_nullsub_1(v6, v7, v8, v9);
  }

  OUTLINED_FUNCTION_3();
  v10 = sub_1E4202734();
  sub_1E3741EA0(v1, a1, &qword_1ECF2BDE8, &qword_1E42A6628);
  v11 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BDF0, &qword_1E42A6630) + 36));
  *v11 = v10;
  OUTLINED_FUNCTION_11_4(v11);
}

void sub_1E385ED94()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BDF8, &qword_1E42A6638);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BE00, &qword_1E42A6640);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_21_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BE08, &qword_1E42A6648);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BE10, &qword_1E42A6650);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_49_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BE18, &qword_1E42A6658);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_44();
  v10 = OUTLINED_FUNCTION_138();
  v11 = type metadata accessor for ScoreboardErrorView(v10);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BE20, &qword_1E42A6660);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_71_6();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v18);
  v19 = type metadata accessor for ClockScoresView(0);
  OUTLINED_FUNCTION_40_16();
  if (((*(v20 + 2120))() & 1) == 0 || (sub_1E3F95854(), OUTLINED_FUNCTION_25_13(), v22))
  {
    OUTLINED_FUNCTION_8();
    if ((*(v23 + 2000))())
    {
      sub_1E392D7D8();
      OUTLINED_FUNCTION_18();
      sub_1E3F23370();

      KeyPath = swift_getKeyPath();
      v25 = (v1 + *(v82 + 36));
      *v25 = KeyPath;
      OUTLINED_FUNCTION_122_3(v25);
      OUTLINED_FUNCTION_114_1();
      OUTLINED_FUNCTION_19_1();
      sub_1E3743538(v26, v27, v28, v29);
      swift_storeEnumTagMultiPayload();
      sub_1E3867198();
      sub_1E3867268();
      sub_1E4201F44();
    }

    else
    {
      sub_1E385F3FC();
      OUTLINED_FUNCTION_19_1();
      sub_1E3743538(v30, v31, v32, v33);
      swift_storeEnumTagMultiPayload();
      sub_1E3867198();
      sub_1E3867268();
      sub_1E4201F44();
    }

    OUTLINED_FUNCTION_21_1();
    sub_1E325F6F0(v34, v35, v36);
    OUTLINED_FUNCTION_12_12();
    sub_1E3743538(v37, v38, v39, v40);
    swift_storeEnumTagMultiPayload();
    sub_1E3867490();
    sub_1E3867594();
    sub_1E4201F44();
    OUTLINED_FUNCTION_21_1();
    sub_1E325F6F0(v41, v42, v43);
  }

  else
  {
    v44 = v21;
    v45 = *(v3 + *(v19 + 28) + 8);
    *(v15 + *(v11 + 24)) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
    swift_storeEnumTagMultiPayload();
    *(v15 + *(v11 + 28)) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C20, &qword_1E429F7D0);
    swift_storeEnumTagMultiPayload();
    *v15 = v45;
    *(v15 + 8) = v44;
    OUTLINED_FUNCTION_8();
    v47 = *(v46 + 224);

    v49 = v47(v48);
    v51 = v50;
    OUTLINED_FUNCTION_8();
    v53 = (*(v52 + 248))();
    v55 = v54;
    sub_1E4203DB4();
    v56 = *&v49;
    if (v51)
    {
      v56 = -INFINITY;
    }

    v57 = *&v53;
    if (v55)
    {
      v57 = v56;
    }

    if (v56 > v57)
    {
      v58 = sub_1E4206804();
      v59 = sub_1E42026D4();
      OUTLINED_FUNCTION_108(v58, &dword_1E323F000, v59, "Contradictory frame constraints specified.");
    }

    OUTLINED_FUNCTION_27_17();
    OUTLINED_FUNCTION_80_2();
    OUTLINED_FUNCTION_97_6(v60, v61, v62, v63, v64, v55 & 1, v65, v66, v81);
    v67 = OUTLINED_FUNCTION_8_6();
    sub_1E3867678(v67, v68, v69);
    memcpy((v0 + *(v83 + 36)), v84, 0x70uLL);
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v70, v71, v72, v73);
    OUTLINED_FUNCTION_12_12();
    sub_1E3743538(v74, v75, v76, v77);
    swift_storeEnumTagMultiPayload();
    sub_1E3867490();
    sub_1E3867594();
    OUTLINED_FUNCTION_75();
    sub_1E4201F44();
    OUTLINED_FUNCTION_21_1();
    sub_1E325F6F0(v78, v79, v80);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E385F3FC()
{
  OUTLINED_FUNCTION_31_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BE90, &qword_1E42A6690);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_49_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BEA8, &qword_1E42A6700);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_26_2();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BE60, &qword_1E42A6678);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14_5();
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BE50, &qword_1E42A6670);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_23_8();
  v8 = OUTLINED_FUNCTION_45_14();
  v10 = sub_1E392B158(v8, v9);
  if (sub_1E392AFBC(v10) == 2)
  {
    nullsub_1();
    sub_1E3861644();
    OUTLINED_FUNCTION_8();
    v12 = (*(v11 + 224))();
    v14 = v13;
    OUTLINED_FUNCTION_8();
    v16 = (*(v15 + 248))();
    v18 = v17;
    sub_1E4203DB4();
    v19 = *&v12;
    if (v14)
    {
      v19 = -INFINITY;
    }

    v20 = *&v16;
    if (v18)
    {
      v20 = v19;
    }

    if (v19 > v20)
    {
      v21 = sub_1E4206804();
      v22 = sub_1E42026D4();
      OUTLINED_FUNCTION_108(v21, &dword_1E323F000, v22, "Contradictory frame constraints specified.");
    }

    OUTLINED_FUNCTION_27_17();
    OUTLINED_FUNCTION_80_2();
    OUTLINED_FUNCTION_97_6(v23, v24, v25, v26, v27, v18 & 1, v28, v29, v57);
    v30 = OUTLINED_FUNCTION_114_1();
    sub_1E3741EA0(v30, v31, v32, v33);
    memcpy((v1 + *(v58 + 36)), v59, 0x70uLL);
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v34, v35, v36, v37);
    OUTLINED_FUNCTION_12_12();
    sub_1E3743538(v38, v39, v40, v41);
    swift_storeEnumTagMultiPayload();
    sub_1E3867320();
    OUTLINED_FUNCTION_9_0();
    sub_1E32752B0(v42, v43, v44, v45);
    OUTLINED_FUNCTION_75();
    sub_1E4201F44();
  }

  else
  {
    if (_MergedGlobals_162 != -1)
    {
      OUTLINED_FUNCTION_11_38(&_MergedGlobals_162);
    }

    *v0 = qword_1EE28B518;
    *(v0 + 8) = 0;
    *(v0 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BEB0, &qword_1E42A6708);
    sub_1E3863AD0();
    OUTLINED_FUNCTION_12_12();
    sub_1E3743538(v46, v47, v48, v49);
    OUTLINED_FUNCTION_74();
    swift_storeEnumTagMultiPayload();
    sub_1E3867320();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_21_1();
    sub_1E32752B0(v50, v51, v52, v53);
    sub_1E4201F44();
  }

  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v54, v55, v56);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E385F7E8()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v72 = type metadata accessor for CompetitorScoreView(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BF68, &unk_1E42A67A8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_25_3();
  v16 = OUTLINED_FUNCTION_138();
  v17 = type metadata accessor for ClockScoresView(v16);
  v18 = **(v2 + *(v17 + 20) + 8);
  v71 = v6 & 1;
  if (v4)
  {
    v19 = (*(v18 + 1472))();
  }

  else
  {
    v19 = (*(v18 + 1424))();
  }

  v73[14] = v19;
  v73[0] = v6 & 1;
  LOBYTE(v73[1]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B6E8, &qword_1E42A0FA0);
  OUTLINED_FUNCTION_46();
  sub_1E32752B0(v20, v21, &qword_1E42A0FA0, v22);
  sub_1E38D2054(v73, &v74);

  v24 = v74;
  v26 = sub_1E392B158(v23, v25);
  v27 = sub_1E392AFBC(v26);
  if (v27 == 2)
  {
    v28 = 0x7FF0000000000000;
  }

  else
  {
    v28 = 0;
  }

  if (!v24)
  {
    goto LABEL_14;
  }

  v29 = v27;
  v70 = v24;
  v30 = *(v2 + *(v17 + 20) + 8);
  OUTLINED_FUNCTION_47_0();
  if (((*(v31 + 1088))() & 1) == 0)
  {

LABEL_14:
    v42 = 1;
    goto LABEL_19;
  }

  v69 = v8;
  OUTLINED_FUNCTION_47_0();
  v33 = *(v32 + 2288);

  v35 = v33(v34);
  v68 = v36;
  v67 = (*(*v30 + 1712))();
  v37 = *(v2 + *(v17 + 20) + 8);
  v38 = (*(*v37 + 1216))();
  LOBYTE(v39) = 1;
  if (v38)
  {
    v66 = v1;
    v40 = (*v37 + 1568);
    v41 = *v40;
    if (((*v40)() & 1) != 0 || (v41() & 0x100) != 0)
    {
      v73[0] = v37;
      v43 = type metadata accessor for SportsCanonicalBannerScoreboardViewModel(0);
      v44 = sub_1E383ACA0(v71, v43, &off_1F5D8FCF0);
      v45 = v41();
      LOBYTE(v39) = v45;
      if ((v44 & 1) == 0)
      {
        v39 = (v45 >> 8) & 1;
      }
    }

    else
    {
      LOBYTE(v39) = 1;
    }

    v1 = v66;
  }

  v46 = v39;
  v73[0] = v30;
  v47 = type metadata accessor for SportsCanonicalBannerScoreboardViewModel(0);
  v48 = sub_1E383ACA0(v71, v47, &off_1F5D8FCF0);
  *(v12 + *(v72 + 40)) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  swift_storeEnumTagMultiPayload();
  *(v12 + *(v72 + 44)) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C20, &qword_1E429F7D0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for SportsCanonicalBannerScoreboardViewLayout(0);
  OUTLINED_FUNCTION_19_25();
  sub_1E38683E4(v49, v50, &unk_1E42ABC48);
  *v12 = sub_1E42010C4();
  *(v12 + 8) = v51;
  *(v12 + 16) = v35;
  *(v12 + 24) = v68;
  *(v12 + 32) = v70;
  *(v12 + 40) = v67 & 1;
  *(v12 + 41) = v46 & 1;
  *(v12 + 42) = v48 & 1;
  sub_1E4203DA4();
  v52 = OUTLINED_FUNCTION_14_8();
  OUTLINED_FUNCTION_99_1(v52, v53, v54, v55, v28, v29 != 2, v56, v57, 0);
  sub_1E3867678(v12, v1, type metadata accessor for CompetitorScoreView);
  memcpy((v1 + *(v13 + 36)), v73, 0x70uLL);
  OUTLINED_FUNCTION_19_1();
  sub_1E3741EA0(v58, v59, v60, v61);
  v8 = v69;
  OUTLINED_FUNCTION_19_1();
  sub_1E3741EA0(v62, v63, v64, v65);
  v42 = 0;
LABEL_19:
  __swift_storeEnumTagSinglePayload(v8, v42, 1, v13);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E385FDD0(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BF70, &qword_1E42A67B8);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_26_2();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BF78, &qword_1E42A67C0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_19_2();
  OUTLINED_FUNCTION_45_14();
  OUTLINED_FUNCTION_40_16();
  v9 = (*(v8 + 1152))();
  v11 = v10;
  *v2 = sub_1E4201D44();
  *(v2 + 8) = v9;
  *(v2 + 16) = v11 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BF80, &qword_1E42A67C8);
  sub_1E3860090();
  sub_1E4203DA4();
  OUTLINED_FUNCTION_27_17();
  OUTLINED_FUNCTION_80_2();
  OUTLINED_FUNCTION_99_1(v12, 0, 0, 1, 0, 1, v13, v14, v24);
  v15 = OUTLINED_FUNCTION_74();
  sub_1E3741EA0(v15, v16, v17, v18);
  memcpy((v1 + *(v6 + 36)), __src, 0x70uLL);
  OUTLINED_FUNCTION_36();
  v20 = *(v19 + 304);

  v20(v21);

  sub_1E4203DA4();
  OUTLINED_FUNCTION_59();
  sub_1E4200D94();
  sub_1E3741EA0(v1, a1, &qword_1ECF2BF78, &qword_1E42A67C0);
  v22 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BEC8, &qword_1E42A6720) + 36));
  v23 = v27;
  *v22 = v26;
  v22[1] = v23;
  v22[2] = v28;
  OUTLINED_FUNCTION_54_0();
}

void sub_1E3860090()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  type metadata accessor for BaseballClockView(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v97 = (v5 - v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BF88, &qword_1E42A67D0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_44();
  v100 = v7;
  OUTLINED_FUNCTION_138();
  sub_1E4202494();
  OUTLINED_FUNCTION_0_10();
  v95 = v9;
  v96 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v93 = v11 - v10;
  v12 = OUTLINED_FUNCTION_138();
  type metadata accessor for SportsClockView(v12);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BF90, &qword_1E42A67D8);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_20_1();
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BF98, &qword_1E42A67E0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_44();
  v94 = v19;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BFA0, &qword_1E42A67E8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_44();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BFA8, &qword_1E42A67F0);
  v22 = OUTLINED_FUNCTION_17_2(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_23_8();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BFB0, &qword_1E42A67F8);
  v25 = OUTLINED_FUNCTION_17_2(v24);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_68_1();
  MEMORY[0x1EEE9AC00](v26);
  sub_1E3860820();
  v27 = *(v2 + *(type metadata accessor for ClockScoresView(0) + 20) + 8);
  if ((*(*v27 + 1184))())
  {
    type metadata accessor for SportsBaseballScoreboardViewModel(0);
    v28 = swift_dynamicCastClass();
    if (v28)
    {
      v29 = *(*v28 + 2432);

      v29(v30);
      OUTLINED_FUNCTION_36();
      v32 = *(v31 + 1520);

      v34 = v32(v33);
      v36 = v35;
      LOBYTE(v32) = v37;

      v40 = sub_1E392B158(v38, v39);
      v41 = sub_1E392AFBC(v40);
      v42 = sub_1E392CEFC();
      v43 = OUTLINED_FUNCTION_51_1();
      sub_1E3DF3424(v34, v36, v32, 1, v41, v42, v43 & 1, v97);
      OUTLINED_FUNCTION_47_11();
      sub_1E3869000(v97, v100, v44);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_7_59();
      sub_1E38683E4(v45, v46, &unk_1E42D3CF8);
      sub_1E3867790();
      OUTLINED_FUNCTION_117_1();
      sub_1E4201F44();

      OUTLINED_FUNCTION_46_11();
      sub_1E3868194(v97, v47);
    }

    else
    {
      v98 = (*(*v27 + 1520))();
      v50 = sub_1E392B158(v98, v49);
      sub_1E392AFBC(v50);
      sub_1E392CEFC();
      OUTLINED_FUNCTION_18();
      sub_1E3B476D4();
      OUTLINED_FUNCTION_52_10();
      sub_1E38683E4(v51, v52, &unk_1E42BCE20);
      OUTLINED_FUNCTION_41_0();
      View.accessibilityIdentifier(key:location:)();
      OUTLINED_FUNCTION_51_10();
      sub_1E3868194(v16, v53);
      sub_1E4202464();
      OUTLINED_FUNCTION_8_16();
      swift_getOpaqueTypeConformance2();
      sub_1E4203224();
      (*(v95 + 8))(v93, v96);
      v54 = OUTLINED_FUNCTION_8_6();
      v55(v54);

      v56 = sub_1E3FEA350();
      v57 = (v94 + *(v99 + 36));
      *v57 = v56;
      v57[1] = v58;
      OUTLINED_FUNCTION_12_12();
      sub_1E3743538(v59, v60, v61, v62);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_7_59();
      sub_1E38683E4(v63, v64, &unk_1E42D3CF8);
      sub_1E3867790();
      sub_1E4201F44();
      OUTLINED_FUNCTION_21_1();
      sub_1E325F6F0(v65, v66, v67);
    }

    v68 = OUTLINED_FUNCTION_146();
    sub_1E3741EA0(v68, v69, v70, v71);
    v48 = 0;
  }

  else
  {
    v48 = 1;
  }

  __swift_storeEnumTagSinglePayload(v0, v48, 1, v101);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v72, v73, v74, v75);
  OUTLINED_FUNCTION_96_2();
  sub_1E3743538(v76, v77, v78, v79);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v80, v81, v82, v83);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BFB8, &qword_1E42A6800);
  OUTLINED_FUNCTION_76_4(v84);
  OUTLINED_FUNCTION_107_2(v0);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v85, v86, v87);
  v88 = OUTLINED_FUNCTION_8_6();
  sub_1E325F6F0(v88, v89, &qword_1E42A67F0);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v90, v91, v92);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3860820()
{
  OUTLINED_FUNCTION_31_1();
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BFD0, &qword_1E42A6808);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_26_2();
  type metadata accessor for TextBadge(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BFD8, &qword_1E42A6810);
  OUTLINED_FUNCTION_0_10();
  v31 = v12;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_19_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BFE0, &qword_1E42A6818);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_8_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BFE8, &qword_1E42A6820);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_31_2();
  v16 = type metadata accessor for ClockScoresView(0);
  OUTLINED_FUNCTION_40_16();
  (*(v17 + 1856))();
  OUTLINED_FUNCTION_25_13();
  if (!v19 && *(v5 + *(v16 + 32)) && (sub_1E3F11040(v18), v20))
  {
    v22 = v20;
  }

  else
  {
    v22 = *(v5 + *(v16 + 32));

    if (!v22)
    {
      *v3 = sub_1E42036E4();
      swift_storeEnumTagMultiPayload();
      sub_1E3867914();
      sub_1E4201F44();
      goto LABEL_11;
    }
  }

  v23 = sub_1E392B158(v20, v21);
  if (sub_1E392AFBC(v23) == 2)
  {

    OUTLINED_FUNCTION_18();
    sub_1E3FC96D0(v22, 0, v10);
    OUTLINED_FUNCTION_9_37();
    sub_1E38683E4(v24, v25, &unk_1E42E3350);
    OUTLINED_FUNCTION_41_0();
    View.accessibilityIdentifier(key:location:)();
    OUTLINED_FUNCTION_54_5();
    sub_1E3868194(v10, v26);
    v27 = OUTLINED_FUNCTION_74();
    v28(v27);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_8_16();
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_125();
    sub_1E4201F44();
    (*(v31 + 8))(v0, v11);
  }

  else
  {
    *v1 = sub_1E42036E4();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_9_37();
    sub_1E38683E4(v29, v30, &unk_1E42E3350);
    OUTLINED_FUNCTION_8_16();
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_125();
    sub_1E4201F44();
  }

  sub_1E3743538(v2, v3, &qword_1ECF2BFE0, &qword_1E42A6818);
  swift_storeEnumTagMultiPayload();
  sub_1E3867914();
  sub_1E4201F44();

  OUTLINED_FUNCTION_45_3(v2);
LABEL_11:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3860C70()
{
  OUTLINED_FUNCTION_31_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BFF8, &qword_1E42A6828);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_8_4();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BF30, &qword_1E42A6768);
  v4 = OUTLINED_FUNCTION_17_2(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_71_6();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_23_8();
  sub_1E386138C(0, 1, v1);
  v6 = [objc_opt_self() sharedInstance];
  if (v6)
  {
    v7 = v6;
    v8 = OUTLINED_FUNCTION_85_4();
    v9 = [v7 localizedStringForKey_];

    if (v9)
    {
      sub_1E4205F14();

      sub_1E32822E0(v10, v11, v12);
      v13 = sub_1E4202C44();
      OUTLINED_FUNCTION_94_5(v13, v14, v15);
      OUTLINED_FUNCTION_96_4();
      v16 = OUTLINED_FUNCTION_22_20();
      v0(v16);
      OUTLINED_FUNCTION_70_7();
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C000, &qword_1E42A6830);
      v18 = OUTLINED_FUNCTION_16_31(v17);
      v0(v18);
      v19 = OUTLINED_FUNCTION_29_16();
      sub_1E37E6F1C(v19, v20, v21);

      sub_1E325F6F0(v27, &qword_1ECF2BF30, &qword_1E42A6768);
      v22 = OUTLINED_FUNCTION_88_7();
      v23(v22);
      v24 = OUTLINED_FUNCTION_29_16();
      sub_1E37434B8(v24, v25, v26);

      OUTLINED_FUNCTION_112_4();
      OUTLINED_FUNCTION_25_2();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1E3860EC4()
{
  OUTLINED_FUNCTION_31_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BF28, &qword_1E42A6760);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_8_4();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BF30, &qword_1E42A6768);
  v3 = OUTLINED_FUNCTION_17_2(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_71_6();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_23_8();
  v5 = OUTLINED_FUNCTION_106_3();
  sub_1E386138C(v5, 1, v6);
  v7 = [objc_opt_self() sharedInstance];
  if (v7)
  {
    v8 = v7;
    v9 = OUTLINED_FUNCTION_85_4();
    v10 = [v8 localizedStringForKey_];

    if (v10)
    {
      sub_1E4205F14();

      sub_1E32822E0(v11, v12, v13);
      v14 = sub_1E4202C44();
      OUTLINED_FUNCTION_94_5(v14, v15, v16);
      OUTLINED_FUNCTION_96_4();
      v17 = OUTLINED_FUNCTION_22_20();
      v0(v17);
      OUTLINED_FUNCTION_70_7();
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BF38, &qword_1E42A6770);
      v19 = OUTLINED_FUNCTION_16_31(v18);
      v0(v19);
      v20 = OUTLINED_FUNCTION_29_16();
      sub_1E37E6F1C(v20, v21, v22);

      sub_1E325F6F0(v28, &qword_1ECF2BF30, &qword_1E42A6768);
      v23 = OUTLINED_FUNCTION_88_7();
      v24(v23);
      v25 = OUTLINED_FUNCTION_29_16();
      sub_1E37434B8(v25, v26, v27);

      OUTLINED_FUNCTION_112_4();
      OUTLINED_FUNCTION_25_2();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1E3861114()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C068, &qword_1E42A6880);
  OUTLINED_FUNCTION_0_10();
  v45 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8_4();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BF30, &qword_1E42A6768);
  v11 = OUTLINED_FUNCTION_17_2(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v12);
  v14 = (v40 - v13);
  sub_1E386138C(v4 & 1, 1, v40 - v13);
  v15 = [objc_opt_self() sharedInstance];
  if (v15)
  {
    v16 = v15;
    v42 = v2;
    v43 = v6;
    v44 = v7;
    v17 = OUTLINED_FUNCTION_85_4();
    v18 = [v16 localizedStringForKey_];

    if (v18)
    {
      v19 = sub_1E4205F14();
      v21 = v20;

      v46 = v19;
      v47 = v21;
      sub_1E32822E0(v22, v23, v24);
      v25 = sub_1E4202C44();
      OUTLINED_FUNCTION_94_5(v25, v26, v27);
      v40[1] = v28;
      v40[2] = v0;
      v41 = v14;
      sub_1E3743538(v14, v0, &qword_1ECF2BF30, &qword_1E42A6768);
      v29 = OUTLINED_FUNCTION_22_20();
      v14(v29);
      OUTLINED_FUNCTION_70_7();
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C070, &qword_1E42A6888);
      v31 = OUTLINED_FUNCTION_16_31(v30);
      v14(v31);
      v32 = OUTLINED_FUNCTION_29_16();
      sub_1E37E6F1C(v32, v33, v34);

      sub_1E325F6F0(v41, &qword_1ECF2BF30, &qword_1E42A6768);
      v35 = OUTLINED_FUNCTION_88_7();
      v36(v35);
      v37 = OUTLINED_FUNCTION_29_16();
      sub_1E37434B8(v37, v38, v39);

      OUTLINED_FUNCTION_112_4();
      OUTLINED_FUNCTION_25_2();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1E386138C@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BF40, &qword_1E42A6778);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_26_2();
  type metadata accessor for SportsBannerLogoViewModel();
  type metadata accessor for ClockScoresView(0);

  v10 = *sub_1E3CBAB38(v9, a1 & 1);
  if (a2)
  {
    v11 = (*(v10 + 176))();
  }

  else
  {
    v11 = (*(v10 + 152))();
  }

  if (v11)
  {
    sub_1E392D628();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_146();
    sub_1E3F23370();

    OUTLINED_FUNCTION_36();
    v13 = *(v12 + 304);

    v13(v14);

    sub_1E4203DB4();
    OUTLINED_FUNCTION_59();
    sub_1E4200D94();
    v15 = (v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BF48, &qword_1E42A6780) + 36));
    *v15 = v26;
    v15[1] = v27;
    v15[2] = v28;
    if (_MergedGlobals_162 != -1)
    {
      OUTLINED_FUNCTION_11_38(&_MergedGlobals_162);
    }

    v16 = qword_1EE28B518;

    v17 = (v3 + *(v7 + 36));
    *v17 = v16;
    v17[1] = sub_1E374AE08;
    v17[2] = 0;
    sub_1E3741EA0(v3, a3, &qword_1ECF2BF40, &qword_1E42A6778);
    OUTLINED_FUNCTION_114();
    return __swift_storeEnumTagSinglePayload(v18, v19, v20, v7);
  }

  else
  {

    v22 = OUTLINED_FUNCTION_34_5();

    return __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  }
}

void sub_1E3861644()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v54 = v4;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BEB8, &qword_1E42A6710);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8_4();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BEC0, &qword_1E42A6718);
  OUTLINED_FUNCTION_0_10();
  v61 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_5();
  v51 = v8;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_25_3();
  v59 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BEC8, &qword_1E42A6720);
  v12 = OUTLINED_FUNCTION_17_2(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_5();
  v50 = v13;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_25_3();
  v55 = v15;
  v49[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BED0, &qword_1E42A6728);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  v18 = v49 - v17;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BED8, &qword_1E42A6730);
  OUTLINED_FUNCTION_0_10();
  v60 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_2_5();
  v57 = v21;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_23_8();
  v56 = v1;
  *v18 = sub_1E4201B64();
  *(v18 + 1) = 0;
  v18[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BEE0, &qword_1E42A6738);
  sub_1E3861BC8();
  v63 = v3;
  v23 = OUTLINED_FUNCTION_114_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v23, v24);
  v25 = MEMORY[0x1E69817F8];
  sub_1E32752B0(&qword_1ECF2BEF0, &qword_1ECF2BED0, &qword_1E42A6728, MEMORY[0x1E69817F8]);
  v26 = MEMORY[0x1E6981F48];
  sub_1E32752B0(&qword_1ECF2BEF8, &qword_1ECF2BEE8, &qword_1E42A6740, MEMORY[0x1E6981F48]);
  sub_1E42030F4();
  sub_1E325F6F0(v18, &qword_1ECF2BED0, &qword_1E42A6728);
  v27 = v55;
  sub_1E385FDD0(v55);
  *v0 = sub_1E4201B64();
  *(v0 + 8) = 0;
  *(v0 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BF00, &qword_1E42A6748);
  sub_1E3862034();
  v62 = v3;
  v28 = OUTLINED_FUNCTION_32_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v28, v29);
  sub_1E32752B0(&qword_1ECF2BF10, &qword_1ECF2BEB8, &qword_1E42A6710, v25);
  OUTLINED_FUNCTION_21_1();
  sub_1E32752B0(v30, v31, v32, v26);
  v33 = v59;
  sub_1E42030F4();
  sub_1E325F6F0(v0, &qword_1ECF2BEB8, &qword_1E42A6710);
  v34 = *(v60 + 16);
  v35 = v57;
  v36 = v58;
  v34(v57, v56, v58);
  v37 = v27;
  v38 = v50;
  sub_1E3743538(v37, v50, &qword_1ECF2BEC8, &qword_1E42A6720);
  v39 = *(v61 + 16);
  v40 = v51;
  v41 = v33;
  v42 = v53;
  v39(v51, v41, v53);
  v43 = v54;
  v34(v54, v35, v36);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BF20, &qword_1E42A6758);
  sub_1E3743538(v38, v43 + *(v44 + 48), &qword_1ECF2BEC8, &qword_1E42A6720);
  v39(v43 + *(v44 + 64), v40, v42);
  v45 = *(v61 + 8);
  v45(v59, v42);
  sub_1E325F6F0(v55, &qword_1ECF2BEC8, &qword_1E42A6720);
  v46 = *(v60 + 8);
  v47 = v58;
  v46(v56, v58);
  v48 = OUTLINED_FUNCTION_8_6();
  (v45)(v48);
  sub_1E325F6F0(v38, &qword_1ECF2BEC8, &qword_1E42A6720);
  v46(v57, v47);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3861BC8()
{
  OUTLINED_FUNCTION_31_1();
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BF58, &qword_1E42A6790);
  v7 = OUTLINED_FUNCTION_17_2(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_23_8();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BF50, &qword_1E42A6788);
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_68_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_77_0();
  sub_1E3861DC0(0);
  sub_1E385F7E8();
  v14 = *(v11 + 16);
  v14(v2, v3, v9);
  sub_1E3743538(v1, v0, &qword_1ECF2BF58, &qword_1E42A6790);
  v14(v5, v2, v9);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C008, &qword_1E42A6838);
  sub_1E3743538(v0, v5 + *(v15 + 48), &qword_1ECF2BF58, &qword_1E42A6790);
  sub_1E325F6F0(v1, &qword_1ECF2BF58, &qword_1E42A6790);
  v16 = *(v11 + 8);
  v16(v3, v9);
  sub_1E325F6F0(v0, &qword_1ECF2BF58, &qword_1E42A6790);
  v17 = OUTLINED_FUNCTION_102_1();
  (v16)(v17);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3861DC0(char a1)
{
  v2 = v1;
  type metadata accessor for SportsBannerLogoViewModel();
  v4 = *(v2 + *(type metadata accessor for ClockScoresView(0) + 20) + 8);
  v5 = a1 & 1;
  v6 = a1 & 1;
  v7 = swift_retain_n();
  v8 = sub_1E3CBAB38(v7, v6);
  OUTLINED_FUNCTION_40_16();
  v33 = (*(v9 + 1144))();
  v31 = v6;
  v32 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420, &qword_1E429CDD0);
  OUTLINED_FUNCTION_46();
  sub_1E32752B0(v10, v11, &qword_1E429CDD0, v12);
  sub_1E38D2054(&v31, &v26);
  v13 = v27;
  if (v27)
  {
    v14 = v26;

    v15 = sub_1E3866538();
    v16 = sub_1E3862230(v14, v13, v15);
  }

  else
  {

    v16 = 0;
  }

  type metadata accessor for SportsCanonicalBannerScoreboardViewLayout(0);
  OUTLINED_FUNCTION_19_25();
  sub_1E38683E4(v17, v18, &unk_1E42ABC48);

  v19 = sub_1E42010C4();
  v26 = v8;
  LOBYTE(v27) = v5;
  v28 = v19;
  v29 = v20;
  v30 = v16;
  v31 = v4;
  v21 = type metadata accessor for SportsCanonicalBannerScoreboardViewModel(0);
  sub_1E383ACA0(v6, v21, &off_1F5D8FCF0);

  sub_1E386771C(v22, v23, v24);
  OUTLINED_FUNCTION_41_0();
  View.accessibilityIdentifier(key:location:)();
}

void sub_1E3862034()
{
  OUTLINED_FUNCTION_31_1();
  v20 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BF50, &qword_1E42A6788);
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  v19 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_14();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_23_8();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BF58, &qword_1E42A6790);
  v11 = OUTLINED_FUNCTION_17_2(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_68_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_77_0();
  sub_1E385F7E8();
  v13 = OUTLINED_FUNCTION_106_3();
  sub_1E3861DC0(v13);
  sub_1E3743538(v3, v2, &qword_1ECF2BF58, &qword_1E42A6790);
  v14 = *(v7 + 16);
  v14(v0, v1, v5);
  sub_1E3743538(v2, v20, &qword_1ECF2BF58, &qword_1E42A6790);
  v15 = v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BF60, &unk_1E42A6798) + 48);
  v14(v15, v0, v5);
  v16 = *(v19 + 8);
  v16(v1, v5);
  sub_1E325F6F0(v3, &qword_1ECF2BF58, &qword_1E42A6790);
  v16(v0, v5);
  v17 = OUTLINED_FUNCTION_102_1();
  sub_1E325F6F0(v17, v18, &qword_1E42A6790);
  OUTLINED_FUNCTION_25_2();
}

BOOL sub_1E3862230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1E4207B44();
  sub_1E4206014();
  v6 = sub_1E4207BA4();
  v7 = ~(-1 << *(a3 + 32));
  do
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(a3 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    v10 = v9 != 0;
    if (!v9)
    {
      break;
    }

    v11 = (*(a3 + 48) + 16 * v8);
    if (*v11 == a1 && v11[1] == a2)
    {
      break;
    }

    v13 = sub_1E42079A4();
    v6 = v8 + 1;
  }

  while ((v13 & 1) == 0);
  return v10;
}

void sub_1E386231C()
{
  OUTLINED_FUNCTION_31_1();
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C148, &qword_1E42A6930);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_49_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C150, &qword_1E42A6938);
  OUTLINED_FUNCTION_0_10();
  v44 = v8;
  v45 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_44();
  v43 = v10;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C158, &qword_1E42A6940);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_21_3();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C160, &qword_1E42A6948);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_14_5();
  v13 = type metadata accessor for ClockScoresView(0);
  OUTLINED_FUNCTION_40_16();
  v50 = (*(v14 + 1144))();
  v15 = v5 & 1;
  v46 = v15;
  v47 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420, &qword_1E429CDD0);
  OUTLINED_FUNCTION_46();
  sub_1E32752B0(v16, v17, &qword_1E429CDD0, v18);
  sub_1E38D2054(&v46, &v48);
  v19 = v49;
  if (v49)
  {
    v20 = v48;

    v21 = sub_1E3866538();
    sub_1E3862230(v20, v19, v21);
  }

  type metadata accessor for SportsBannerLogoViewModel();
  v22 = *(v0 + *(v13 + 20) + 8);
  v23 = swift_retain_n();
  v24 = sub_1E3CBAB38(v23, v15);

  v27 = sub_1E392B158(v25, v26);
  sub_1E392AFBC(v27);
  OUTLINED_FUNCTION_168();
  sub_1E386274C();

  v48 = v22;
  v28 = type metadata accessor for SportsCanonicalBannerScoreboardViewModel(0);
  sub_1E383ACA0(v15, v28, &off_1F5D8FCF0);

  sub_1E3867DF0();
  OUTLINED_FUNCTION_117_1();
  OUTLINED_FUNCTION_41_0();
  View.accessibilityIdentifier(key:location:)();
  sub_1E325F6F0(v1, &qword_1ECF2C148, &qword_1E42A6930);
  v29 = sub_1E4203DA4();
  v31 = v30;
  v32 = v3 + *(v41 + 36);
  sub_1E3862D88();
  v33 = (v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C1C0, &qword_1E42A6978) + 36));
  *v33 = v29;
  v33[1] = v31;
  (*(v44 + 32))(v3, v43, v45);
  sub_1E3741EA0(v3, v2, &qword_1ECF2C158, &qword_1E42A6940);
  *(v2 + *(v42 + 52)) = v24;
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_77();
  sub_1E32752B0(v34, v35, v36, v37);
  sub_1E4202ED4();
  OUTLINED_FUNCTION_77();
  sub_1E325F6F0(v38, v39, v40);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E386274C()
{
  OUTLINED_FUNCTION_9_4();
  v73 = v4;
  v6 = v5;
  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C218, &unk_1E42A6A20);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_20_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C1A8, &qword_1E42C9810);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_21_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C198, &unk_1E42A6960);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_14_5();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C188, &qword_1E42A6958);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v15);
  if ((*(*v8 + 288))())
  {
    v71 = v2;
    v72 = v12;
    OUTLINED_FUNCTION_99();
    v18 = v17;
    v19 = (*(v16 + 1696))();
    v21 = v20;
    v22 = j__OUTLINED_FUNCTION_51_1();
    v23 = j__OUTLINED_FUNCTION_18();
    v70 = j__OUTLINED_FUNCTION_18() & 1;
    OUTLINED_FUNCTION_27_17();
    OUTLINED_FUNCTION_80_2();
    sub_1E3EB9C0C(v19, v21, v24, 0, 0, 1, v22 & 1, 2, v25, v66, v67, v68, v69, 0, 2, v23 & 1, v70);

    v26 = OUTLINED_FUNCTION_18();
    sub_1E37E8BE8(v18, &v74, v6, v26 & 1, sub_1E386842C, v8, v3);

    OUTLINED_FUNCTION_99();
    v28 = (*(v27 + 200))();
    (*(*v6 + 304))(v28);
    sub_1E4203DA4();
    OUTLINED_FUNCTION_59();
    sub_1E4200D94();
    OUTLINED_FUNCTION_141();
    v30 = (v3 + v29);
    v31 = v80;
    *v30 = v79;
    v30[1] = v31;
    v30[2] = v81;
    OUTLINED_FUNCTION_99();
    (*(v32 + 152))(v82);
    if (v83)
    {
      OUTLINED_FUNCTION_5_8();
    }

    else
    {
      v35.n128_u64[0] = v82[2];
      v36.n128_u64[0] = v82[3];
      v33.n128_u64[0] = v82[0];
      v34.n128_u64[0] = v82[1];
      j_nullsub_1(v33, v34, v35, v36);
    }

    OUTLINED_FUNCTION_3();
    v42 = sub_1E4202734();
    sub_1E3741EA0(v3, v71, &qword_1ECF2C1A8, &qword_1E42C9810);
    OUTLINED_FUNCTION_141();
    v44 = (v71 + v43);
    *v44 = v42;
    OUTLINED_FUNCTION_11_4(v44);
    sub_1E3741EA0(v71, v0, &qword_1ECF2C198, &unk_1E42A6960);
    *(v0 + *(v72 + 36)) = 1;
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v45, v46, v47, v48);
    OUTLINED_FUNCTION_102_1();
    OUTLINED_FUNCTION_19_1();
    sub_1E3743538(v49, v50, v51, v52);
    OUTLINED_FUNCTION_8_6();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C1B8, &qword_1E42A6970);
    sub_1E3867F00();
    sub_1E3868110();
    OUTLINED_FUNCTION_146();
    OUTLINED_FUNCTION_96_2();
    sub_1E4201F44();
    sub_1E375C31C(&v74);

    OUTLINED_FUNCTION_21_1();
    sub_1E325F6F0(v53, v54, v55);
    goto LABEL_11;
  }

  if (v73 != 2)
  {
    v56 = sub_1E42036E4();
    OUTLINED_FUNCTION_99();
    (*(v57 + 304))();
    sub_1E4203DA4();
    OUTLINED_FUNCTION_59();
    sub_1E4200D94();
    v58 = v74;
    v59 = v75;
    v60 = v76;
    v61 = v77;
    *v1 = v56;
    *(v1 + 8) = v58;
    *(v1 + 16) = v59;
    *(v1 + 24) = v60;
    *(v1 + 32) = v61;
    *(v1 + 40) = v78;
    OUTLINED_FUNCTION_146();
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C1B8, &qword_1E42A6970);
    sub_1E3867F00();
    sub_1E3868110();
    OUTLINED_FUNCTION_12_12();
    sub_1E4201F44();
LABEL_11:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C178, &qword_1E42A6950);
    OUTLINED_FUNCTION_114();
    __swift_storeEnumTagSinglePayload(v62, v63, v64, v65);
    OUTLINED_FUNCTION_10_3();
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C178, &qword_1E42A6950);
  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_10_3();

  __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
}

void sub_1E3862D88()
{
  OUTLINED_FUNCTION_9_4();
  v4 = v3;
  v5 = type metadata accessor for SportsCanonicalBannerScoreboardViewLayout.SymbolLayout(0);
  v6 = OUTLINED_FUNCTION_17_2(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C1D0, &qword_1E42A6980);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_21_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C1D8, &qword_1E42A6988);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_49_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C1E0, &qword_1E42A6990);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_26_2();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C1E8, &unk_1E42A6998);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5_14();
  MEMORY[0x1EEE9AC00](v15);
  if (v4)
  {
    OUTLINED_FUNCTION_8();
    if ((*(v16 + 288))())
    {
    }

    else
    {
      type metadata accessor for ClockScoresView(0);
      OUTLINED_FUNCTION_8();
      v23 = *(v22 + 152);

      v23(v78, v24);
    }

    OUTLINED_FUNCTION_45_14();
    sub_1E392D428(v25, v9);
    sub_1E3863314();
    OUTLINED_FUNCTION_20_31();
    sub_1E3868194(v9, v26);
    OUTLINED_FUNCTION_8();
    v75 = *(v27 + 176);
    v75(v76);
    if ((v77 & 1) == 0)
    {
      v31.n128_u64[0] = v76[3];
      v30.n128_u64[0] = v76[2];
      v29.n128_u64[0] = v76[1];
      v28.n128_u64[0] = v76[0];
      j_nullsub_1(v28, v29, v30, v31);
    }

    sub_1E4203DC4();
    OUTLINED_FUNCTION_27_17();
    OUTLINED_FUNCTION_80_2();
    v32 = OUTLINED_FUNCTION_14_8();
    OUTLINED_FUNCTION_99_1(v32, v33, v34, v35, v36, 0, v37, v38, v74);
    OUTLINED_FUNCTION_65_6();
    v39 = OUTLINED_FUNCTION_120();
    v40(v39);
    OUTLINED_FUNCTION_141();
    memcpy((v2 + v41), v78, 0x70uLL);
    v42 = sub_1E4202784();
    sub_1E4200A54();
    OUTLINED_FUNCTION_3();
    sub_1E3741EA0(v2, v0, &qword_1ECF2C1D8, &qword_1E42A6988);
    OUTLINED_FUNCTION_141();
    v44 = (v0 + v43);
    *v44 = v42;
    OUTLINED_FUNCTION_11_4(v44);
    v75(v79);
    if (v80)
    {
      v49 = -0.0;
    }

    else
    {
      v47.n128_u64[0] = v79[2];
      v48.n128_u64[0] = v79[3];
      v45.n128_u64[0] = v79[0];
      v46.n128_u64[0] = v79[1];
      j_nullsub_1(v45, v46, v47, v48);
      v49 = -v50;
    }

    OUTLINED_FUNCTION_8();
    v52 = *(v51 + 304);

    v54 = COERCE_DOUBLE(v52(v53));
    v56 = v55;

    if (v56)
    {
      v57 = 0.0;
    }

    else
    {
      v57 = v54 * 0.5;
    }

    v58 = OUTLINED_FUNCTION_75();
    sub_1E3741EA0(v58, v59, v60, v61);
    v62 = (v1 + *(v13 + 36));
    *v62 = v49;
    v62[1] = v57;
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v63, v64, v65, v66);
    OUTLINED_FUNCTION_12_12();
    sub_1E3741EA0(v67, v68, v69, v70);
    OUTLINED_FUNCTION_114();
    __swift_storeEnumTagSinglePayload(v71, v72, v73, v13);
    OUTLINED_FUNCTION_10_3();
  }

  else
  {
    OUTLINED_FUNCTION_34_5();
    OUTLINED_FUNCTION_10_3();

    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  }
}

void sub_1E3863314()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v29 = v4;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A1F8, &qword_1E429E7F0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_26_2();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C1F0, &qword_1E42A69A8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C1F8, &qword_1E42A69B0);
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_31_2();

  v30 = sub_1E42037C4();
  sub_1E39B9610();

  v13 = *(v3 + 16);
  v14 = sub_1E4203644();
  KeyPath = swift_getKeyPath();
  v16 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C200, &qword_1E42A69E8) + 36)];
  *v16 = KeyPath;
  v16[1] = v14;
  v17 = *(v3 + 40);
  v18 = swift_getKeyPath();
  v19 = &v9[*(v6 + 36)];
  *v19 = v18;
  v19[1] = v17;
  v20 = sub_1E3868244();

  sub_1E4202D34();
  sub_1E325F6F0(v9, &qword_1ECF2C1F0, &qword_1E42A69A8);
  v21 = *(type metadata accessor for SportsCanonicalBannerScoreboardViewLayout.SymbolLayout(0) + 36);
  v22 = sub_1E42012F4();
  sub_1E38683E4(&qword_1EE289CC8, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
  if (sub_1E4205E84())
  {
    (*(*(v22 - 8) + 16))(v0, v3 + v21, v22);
    v30 = v6;
    v31 = v20;
    swift_getOpaqueTypeConformance2();
    sub_1E32752B0(&qword_1EE23ACD8, &qword_1ECF2A1F8, &qword_1E429E7F0, MEMORY[0x1E69E6ED8]);
    v23 = v27;
    sub_1E4202FA4();
    v24 = OUTLINED_FUNCTION_74();
    sub_1E325F6F0(v24, v25, &qword_1E429E7F0);
    (*(v11 + 8))(v1, v23);
    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    __break(1u);
  }
}

void sub_1E3863674()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BF30, &qword_1E42A6768);
  v7 = OUTLINED_FUNCTION_17_2(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_14();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_120_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_66_5();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_34_1();
  sub_1E386138C(0, v3 & 1, v1);
  v11 = OUTLINED_FUNCTION_106_3();
  sub_1E386138C(v11, v12, v13);
  v14 = OUTLINED_FUNCTION_102_1();
  OUTLINED_FUNCTION_98_0(v14, v15);
  v16 = OUTLINED_FUNCTION_168();
  OUTLINED_FUNCTION_98_0(v16, v17);
  OUTLINED_FUNCTION_98_0(v0, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C130, &qword_1E42A6918);
  v18 = OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_98_0(v18, v19);
  OUTLINED_FUNCTION_77();
  sub_1E325F6F0(v20, v21, v22);
  OUTLINED_FUNCTION_77();
  sub_1E325F6F0(v23, v24, v25);
  OUTLINED_FUNCTION_77();
  sub_1E325F6F0(v26, v27, v28);
  OUTLINED_FUNCTION_77();
  sub_1E325F6F0(v29, v30, v31);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E38637B4()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v23 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BF58, &qword_1E42A6790);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_31_2();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C038, &qword_1E42A6868);
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_5();
  v22 = v10;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_18_6();
  v21 = v12;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_18_6();
  v20 = v14;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_77_0();
  sub_1E385F7E8();
  v25[2] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C040, &qword_1E42A6870);
  sub_1E3867A2C();
  sub_1E32752B0(&qword_1ECF2C058, &qword_1ECF2C040, &qword_1E42A6870, MEMORY[0x1E6981F48]);
  OUTLINED_FUNCTION_110_1(sub_1E3867A00, v25);
  sub_1E325F6F0(v0, &qword_1ECF2BF58, &qword_1E42A6790);
  OUTLINED_FUNCTION_106_3();
  sub_1E385F7E8();
  v24[2] = v3;
  OUTLINED_FUNCTION_110_1(sub_1E3867B6C, v24);
  sub_1E325F6F0(v0, &qword_1ECF2BF58, &qword_1E42A6790);
  v16 = *(v8 + 16);
  v16(v21, v1, v6);
  v16(v22, v20, v6);
  v16(v23, v21, v6);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C060, &qword_1E42A6878);
  v16(v23 + *(v17 + 48), v22, v6);
  v18 = *(v8 + 8);
  v18(v20, v6);
  v18(v1, v6);
  v19 = OUTLINED_FUNCTION_8_6();
  (v18)(v19);
  v18(v21, v6);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3863AD0()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C010, &qword_1E42A6840);
  v5 = OUTLINED_FUNCTION_17_2(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v22 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C018, &qword_1E42A6848);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5_14();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_23_8();
  if (_MergedGlobals_162 != -1)
  {
    OUTLINED_FUNCTION_11_38(&_MergedGlobals_162);
  }

  *v1 = qword_1EE28B518;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C020, &qword_1E42A6850);
  sub_1E3863D48();
  sub_1E4203DB4();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_14_8();
  sub_1E4200D94();
  OUTLINED_FUNCTION_67_3(v1 + *(v12 + 36));
  v15 = sub_1E4201D54();
  v16 = OUTLINED_FUNCTION_45_14();
  v18 = sub_1E392B2CC(v16, v17);
  *v11 = v15;
  v11[1] = v18;
  *(v11 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C028, &qword_1E42A6858);
  sub_1E38637B4();
  v19 = OUTLINED_FUNCTION_168();
  sub_1E3743538(v19, v20, &qword_1ECF2C018, &qword_1E42A6848);
  sub_1E3743538(v11, v8, &qword_1ECF2C010, &qword_1E42A6840);
  sub_1E3743538(v0, v3, &qword_1ECF2C018, &qword_1E42A6848);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C030, &qword_1E42A6860);
  sub_1E3743538(v8, v3 + *(v21 + 48), &qword_1ECF2C010, &qword_1E42A6840);
  sub_1E325F6F0(v11, &qword_1ECF2C010, &qword_1E42A6840);
  sub_1E325F6F0(v1, &qword_1ECF2C018, &qword_1E42A6848);
  sub_1E325F6F0(v8, &qword_1ECF2C010, &qword_1E42A6840);
  sub_1E325F6F0(v0, &qword_1ECF2C018, &qword_1E42A6848);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3863D48()
{
  OUTLINED_FUNCTION_31_1();
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C078, &qword_1E42A6890);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_47_2();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_77_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C080, &qword_1E42A6898);
  v10 = OUTLINED_FUNCTION_17_2(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_68_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_93_0();
  sub_1E3863FFC();
  v12 = sub_1E42036E4();
  v13 = OUTLINED_FUNCTION_45_14();
  sub_1E392B4A8(v13, v14);
  sub_1E4203DA4();
  OUTLINED_FUNCTION_59();
  sub_1E4200D94();
  v15 = sub_1E4201D64();
  v17 = sub_1E392B2CC(v15, v16);
  *v3 = v15;
  *(v3 + 8) = v17;
  *(v3 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C028, &qword_1E42A6858);
  sub_1E38637B4();
  sub_1E4203DC4();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_14_8();
  sub_1E4200D94();
  OUTLINED_FUNCTION_67_3(v3 + *(v7 + 44));
  sub_1E3743538(v0, v2, &qword_1ECF2C080, &qword_1E42A6898);
  sub_1E3743538(v3, v1, &qword_1ECF2C078, &qword_1E42A6890);
  sub_1E3743538(v2, v5, &qword_1ECF2C080, &qword_1E42A6898);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C088, &qword_1E42A68A0);
  v19 = v5 + *(v18 + 48);
  *v19 = v12;
  *(v19 + 8) = v20;
  *(v19 + 16) = v21;
  *(v19 + 24) = v22;
  *(v19 + 32) = v23;
  *(v19 + 40) = v24;
  *(v19 + 48) = v25;
  sub_1E3743538(v1, v5 + *(v18 + 64), &qword_1ECF2C078, &qword_1E42A6890);

  OUTLINED_FUNCTION_45_3(v3);
  sub_1E325F6F0(v0, &qword_1ECF2C080, &qword_1E42A6898);
  OUTLINED_FUNCTION_45_3(v1);

  sub_1E325F6F0(v2, &qword_1ECF2C080, &qword_1E42A6898);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3863FFC()
{
  OUTLINED_FUNCTION_31_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C090, &qword_1E42A68A8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_44();
  v83 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C098, &qword_1E42A68B0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44();
  v85 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C0A0, &qword_1E42A68B8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_19_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C0A8, &qword_1E42A68C0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44();
  v84 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C0B0, &qword_1E42A68C8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_21_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C0B8, &qword_1E42A68D0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_20_1();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C0C0, &qword_1E42A68D8);
  v15 = OUTLINED_FUNCTION_17_2(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_23_8();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C0C8, &qword_1E42A68E0);
  v18 = OUTLINED_FUNCTION_17_2(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_77_0();
  v20 = sub_1E4201D54();
  v21 = OUTLINED_FUNCTION_45_14();
  v23 = sub_1E392B2CC(v21, v22);
  *v3 = v20;
  *(v3 + 8) = v23;
  *(v3 + 16) = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C0D0, &qword_1E42A68E8);
  v25 = sub_1E38646D4(v3 + *(v24 + 44));
  v27 = sub_1E392B158(v25, v26);
  if (sub_1E3D3CD44(v27, 3))
  {
    v28 = sub_1E4201D54();
    v30 = sub_1E392B2CC(v28, v29);
    *v4 = v28;
    *(v4 + 8) = v30;
    *(v4 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C0D8, &qword_1E42A68F0);
    sub_1E3863674();
    OUTLINED_FUNCTION_1();
    v33 = sub_1E32752B0(v31, &qword_1ECF2C0B0, &qword_1E42A68C8, v32);
    OUTLINED_FUNCTION_130_2(v33, v34, v33);
    sub_1E325F6F0(v4, &qword_1ECF2C0B0, &qword_1E42A68C8);
    v35 = OUTLINED_FUNCTION_8_6();
    sub_1E3743538(v35, v36, v37, &qword_1E42A68D0);
    swift_storeEnumTagMultiPayload();
    sub_1E3867C24();
    sub_1E3867D0C();
    sub_1E4201F44();
    OUTLINED_FUNCTION_77();
    sub_1E3743538(v38, v39, v40, &qword_1E42A68C0);
    swift_storeEnumTagMultiPayload();
    sub_1E3867B98();
    sub_1E4201F44();
    sub_1E325F6F0(v84, &qword_1ECF2C0A8, &qword_1E42A68C0);
    v41 = v1;
    v42 = &qword_1ECF2C0B8;
LABEL_6:
    v45 = &qword_1E42A68D0;
    goto LABEL_7;
  }

  if (!sub_1E392B2BC())
  {
    v46 = sub_1E4201D54();
    v48 = sub_1E392B2CC(v46, v47);
    *v4 = v46;
    *(v4 + 8) = v48;
    *(v4 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C0D8, &qword_1E42A68F0);
    sub_1E3863674();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_77();
    v53 = sub_1E32752B0(v49, v50, v51, v52);
    OUTLINED_FUNCTION_130_2(v53, v54, v53);
    OUTLINED_FUNCTION_77();
    sub_1E325F6F0(v55, v56, v57);
    OUTLINED_FUNCTION_19_1();
    sub_1E3743538(v58, v59, v60, v61);
    swift_storeEnumTagMultiPayload();
    sub_1E3867B98();
    sub_1E3867C24();
    sub_1E4201F44();
    v41 = v1;
    v42 = &qword_1ECF2C0B8;
    goto LABEL_6;
  }

  *v83 = sub_1E3F2793C(0);
  *(v83 + 8) = v43 & 1;
  *(v83 + 16) = v44;
  sub_1E3864810();
  sub_1E3743538(v83, v0, &qword_1ECF2C090, &qword_1E42A68A8);
  swift_storeEnumTagMultiPayload();
  sub_1E3867C24();
  sub_1E3867D0C();
  sub_1E4201F44();
  sub_1E3743538(v84, v85, &qword_1ECF2C0A8, &qword_1E42A68C0);
  swift_storeEnumTagMultiPayload();
  sub_1E3867B98();
  sub_1E4201F44();
  sub_1E325F6F0(v84, &qword_1ECF2C0A8, &qword_1E42A68C0);
  v41 = v83;
  v42 = &qword_1ECF2C090;
  v45 = &qword_1E42A68A8;
LABEL_7:
  sub_1E325F6F0(v41, v42, v45);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v62, v63, v64, v65);
  OUTLINED_FUNCTION_96_2();
  sub_1E3743538(v66, v67, v68, v69);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v70, v71, v72, v73);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C120, &qword_1E42A6908);
  OUTLINED_FUNCTION_76_4(v74);
  OUTLINED_FUNCTION_107_2(v2);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v75, v76, v77);
  v78 = OUTLINED_FUNCTION_8_6();
  sub_1E325F6F0(v78, v79, &qword_1E42A68D8);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v80, v81, v82);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E38646D4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C138, &qword_1E42A6920);
  v4 = OUTLINED_FUNCTION_17_2(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_14();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_120_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_66_5();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_34_1();
  sub_1E386231C();
  OUTLINED_FUNCTION_106_3();
  sub_1E386231C();
  v8 = OUTLINED_FUNCTION_102_1();
  OUTLINED_FUNCTION_98_0(v8, v9);
  v10 = OUTLINED_FUNCTION_168();
  OUTLINED_FUNCTION_98_0(v10, v11);
  OUTLINED_FUNCTION_98_0(v1, a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C140, &qword_1E42A6928);
  v12 = OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_98_0(v12, v13);
  OUTLINED_FUNCTION_77();
  sub_1E325F6F0(v14, v15, v16);
  OUTLINED_FUNCTION_77();
  sub_1E325F6F0(v17, v18, v19);
  OUTLINED_FUNCTION_77();
  sub_1E325F6F0(v20, v21, v22);
  OUTLINED_FUNCTION_77();
  return sub_1E325F6F0(v23, v24, v25);
}

void sub_1E3864810()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v50 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C0B0, &qword_1E42A68C8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_49_2();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C0B8, &qword_1E42A68D0);
  v6 = OUTLINED_FUNCTION_17_2(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_5();
  v49 = v7;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_18_6();
  v48 = v9;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v47 - v12;
  v14 = sub_1E4201D54();
  v15 = OUTLINED_FUNCTION_45_14();
  v47 = v2;
  v17 = sub_1E392B2CC(v15, v16);
  *v0 = v14;
  *(v0 + 8) = v17;
  *(v0 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C0D8, &qword_1E42A68F0);
  sub_1E3863674();
  OUTLINED_FUNCTION_1();
  sub_1E32752B0(v18, &qword_1ECF2C0B0, &qword_1E42A68C8, v19);
  OUTLINED_FUNCTION_133_2();
  sub_1E325F6F0(v0, &qword_1ECF2C0B0, &qword_1E42A68C8);
  v20 = sub_1E4201D54();
  v22 = sub_1E392B2CC(v20, v21);
  *v0 = v20;
  *(v0 + 8) = v22;
  *(v0 + 16) = 0;
  sub_1E3863674();
  OUTLINED_FUNCTION_133_2();
  sub_1E325F6F0(v0, &qword_1ECF2C0B0, &qword_1E42A68C8);
  sub_1E3743538(v13, v48, &qword_1ECF2C0B8, &qword_1E42A68D0);
  OUTLINED_FUNCTION_12_12();
  sub_1E3743538(v23, v24, v25, v26);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v27, v28, v29, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C128, &qword_1E42A6910);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v31, v32, v33, v34);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v35, v36, v37);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v38, v39, v40);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v41, v42, v43);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v44, v45, v46);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3864AB0()
{
  OUTLINED_FUNCTION_31_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C2C8, &qword_1E42A6C78);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_26_2();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C2D0, &qword_1E42A6C80);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_20_1();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C2D8, &qword_1E42A6C88);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_8_4();
  if (*(v0 + 8))
  {
    v10 = sub_1E4201D54();
  }

  else
  {
    v10 = sub_1E4201D64();
  }

  *v1 = v10;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C2E0, &qword_1E42A6C90);
  sub_1E386514C();
  v11 = sub_1E4203DA4();
  v13 = v12;
  v14 = v3 + *(v6 + 36);
  sub_1E3865308(v0, v14);
  v15 = (v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C2E8, &qword_1E42A6C98) + 36));
  *v15 = v11;
  v15[1] = v13;
  v16 = OUTLINED_FUNCTION_125();
  sub_1E3741EA0(v16, v17, v18, v19);
  v20 = *v0;
  sub_1E3741EA0(v3, v2, &qword_1ECF2C2D0, &qword_1E42A6C80);
  *(v2 + *(v8 + 52)) = v20;
  OUTLINED_FUNCTION_69();
  sub_1E32752B0(v21, &qword_1ECF2C2D8, &qword_1E42A6C88, v22);

  sub_1E4202ED4();
  sub_1E325F6F0(v2, &qword_1ECF2C2D8, &qword_1E42A6C88);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3864CBC()
{
  OUTLINED_FUNCTION_31_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BDF8, &qword_1E42A6638);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14_5();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C338, &qword_1E42A6CD0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_26_2();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C340, &qword_1E42A6CD8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_20_1();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C348, &qword_1E42A6CE0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_25_3();
  v14 = *v0;
  OUTLINED_FUNCTION_47_0();
  if ((*(v15 + 152))())
  {
    v45 = v8;
    sub_1E392D628();
    OUTLINED_FUNCTION_18();
    sub_1E3F23370();

    KeyPath = swift_getKeyPath();
    v17 = (v3 + *(v4 + 36));
    *v17 = KeyPath;
    OUTLINED_FUNCTION_122_3(v17);
    OUTLINED_FUNCTION_8();
    (*(v18 + 200))();
    if ((*(*v14 + 288))())
    {
    }

    else
    {
      sub_1E386509C();
    }

    sub_1E4203DA4();
    OUTLINED_FUNCTION_59();
    sub_1E4200D94();
    sub_1E3741EA0(v3, v1, &qword_1ECF2BDF8, &qword_1E42A6638);
    OUTLINED_FUNCTION_67_3(v1 + *(v46 + 36));
    if (_MergedGlobals_162 != -1)
    {
      OUTLINED_FUNCTION_11_38(&_MergedGlobals_162);
    }

    v24 = qword_1EE28B518;

    v25 = OUTLINED_FUNCTION_125();
    sub_1E3741EA0(v25, v26, v27, v28);
    v29 = (v2 + *(v47 + 36));
    *v29 = v24;
    v29[1] = sub_1E374AE08;
    v29[2] = 0;
    v30 = OUTLINED_FUNCTION_146();
    sub_1E3741EA0(v30, v31, v32, v33);
    *(v12 + *(v45 + 36)) = 1;
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v34, v35, v36, v37);
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v38, v39, v40, v41);
    OUTLINED_FUNCTION_114();
    __swift_storeEnumTagSinglePayload(v42, v43, v44, v45);
    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    OUTLINED_FUNCTION_32_2();
    OUTLINED_FUNCTION_25_2();

    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  }
}

double sub_1E386509C()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout_logoImageLayout);
  OUTLINED_FUNCTION_8();
  v3 = COERCE_DOUBLE((*(v2 + 200))());
  if (v4)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v3;
  }

  (*(*v1 + 304))();
  return v5;
}

void sub_1E386514C()
{
  OUTLINED_FUNCTION_31_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C328, &qword_1E42A6CC0);
  v5 = OUTLINED_FUNCTION_17_2(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_14();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_34_1();
  v7 = OUTLINED_FUNCTION_146();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  v10 = OUTLINED_FUNCTION_17_2(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_93_0();
  v14 = sub_1E392B158(v12, v13);
  sub_1E392AFBC(v14);
  OUTLINED_FUNCTION_34();
  sub_1E386274C();
  sub_1E3864CBC();
  OUTLINED_FUNCTION_158();
  sub_1E3743538(v15, v16, v17, v18);
  sub_1E3743538(v2, v1, &qword_1ECF2C328, &qword_1E42A6CC0);
  OUTLINED_FUNCTION_158();
  sub_1E3743538(v19, v20, v21, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C330, &qword_1E42A6CC8);
  v23 = OUTLINED_FUNCTION_95_3();
  sub_1E3743538(v23, v24, &qword_1ECF2C328, &qword_1E42A6CC0);
  OUTLINED_FUNCTION_45_3(v2);
  sub_1E325F6F0(v0, &qword_1ECF2C148, &qword_1E42A6930);
  OUTLINED_FUNCTION_45_3(v1);
  sub_1E325F6F0(v3, &qword_1ECF2C148, &qword_1E42A6930);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3865308(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C2F8, &qword_1E42A6CA0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v10);
  v11 = type metadata accessor for SportsCanonicalBannerScoreboardViewLayout.SymbolLayout(0);
  v12 = OUTLINED_FUNCTION_17_2(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C1D0, &qword_1E42A6980);
  OUTLINED_FUNCTION_0_10();
  v121 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v112 - v19;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C1D8, &qword_1E42A6988);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_2_5();
  v119 = v22;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v112 - v24;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C300, &qword_1E42A6CA8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_18_6();
  v118 = v28;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_66_5();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_93_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C308, &qword_1E42A6CB0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v31);
  if (*(a1 + 32))
  {
    v113 = &v112 - v34;
    v114 = v33;
    v116 = v8;
    v117 = a2;
    v35 = *(a1 + 8);
    v115 = a1;
    sub_1E392D428(v32, v15);
    if (v35)
    {
      sub_1E3863314();
      OUTLINED_FUNCTION_20_31();
      sub_1E3868194(v15, v36);
      OUTLINED_FUNCTION_8();
      v38 = *(v37 + 176);
      (v38)(v124);
      if ((v125 & 1) == 0)
      {
        OUTLINED_FUNCTION_84_6(v39, v40, v41, v42);
      }

      sub_1E4203DB4();
      OUTLINED_FUNCTION_27_17();
      OUTLINED_FUNCTION_80_2();
      v43 = OUTLINED_FUNCTION_14_8();
      OUTLINED_FUNCTION_99_1(v43, v44, v45, v46, v47, 0, v48, v49, v111);
      OUTLINED_FUNCTION_65_6();
      v50 = v119;
      v51(v119, v5, v122);
      OUTLINED_FUNCTION_141();
      v53 = memcpy((v50 + v52), __src, 0x70uLL);
      v38(&v127, v53);
      v58 = 0.0;
      if ((v131 & 1) == 0)
      {
        v56.n128_u64[0] = v129;
        v57.n128_u64[0] = v130;
        v54.n128_u64[0] = v127;
        v55.n128_u64[0] = v128;
        j_nullsub_1(v54, v55, v56, v57);
        v58 = v59;
      }

      v60 = v58 + sub_1E386509C() + 1.0;
      sub_1E386509C();
      v62 = v61 * 0.5;
      sub_1E3741EA0(v50, v4, &qword_1ECF2C1D8, &qword_1E42A6988);
      v63 = (v4 + *(v123 + 36));
      *v63 = v60;
      v63[1] = v62;
      v2 = v118;
      sub_1E3741EA0(v4, v118, &qword_1ECF2C300, &qword_1E42A6CA8);
    }

    else
    {
      sub_1E3863314();
      OUTLINED_FUNCTION_20_31();
      sub_1E3868194(v15, v69);
      OUTLINED_FUNCTION_8();
      v71 = *(v70 + 176);
      (v71)(v124);
      if ((v125 & 1) == 0)
      {
        OUTLINED_FUNCTION_84_6(v72, v73, v74, v75);
      }

      sub_1E4203DC4();
      OUTLINED_FUNCTION_27_17();
      OUTLINED_FUNCTION_80_2();
      v76 = OUTLINED_FUNCTION_14_8();
      OUTLINED_FUNCTION_99_1(v76, v77, v78, v79, v80, 0, v81, v82, v111);
      OUTLINED_FUNCTION_65_6();
      v83(v25, v20, v122);
      OUTLINED_FUNCTION_141();
      v85 = memcpy(&v25[v84], __src, 0x70uLL);
      v71(&v127, v85);
      v90 = -1.0;
      if ((v131 & 1) == 0)
      {
        v88.n128_u64[0] = v129;
        v89.n128_u64[0] = v130;
        v86.n128_u64[0] = v127;
        v87.n128_u64[0] = v128;
        j_nullsub_1(v86, v87, v88, v89);
        v90 = -1.0 - v91;
      }

      sub_1E386509C();
      v93 = v92 * 0.5;
      v94 = OUTLINED_FUNCTION_146();
      sub_1E3741EA0(v94, v95, v96, v97);
      v98 = (v3 + *(v123 + 36));
      *v98 = v90;
      v98[1] = v93;
      sub_1E3741EA0(v3, v2, &qword_1ECF2C300, &qword_1E42A6CA8);
    }

    OUTLINED_FUNCTION_96_2();
    sub_1E3743538(v99, v100, v101, v102);
    swift_storeEnumTagMultiPayload();
    sub_1E3869630();
    v103 = v113;
    sub_1E4201F44();
    OUTLINED_FUNCTION_107_2(v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C310, &qword_1E42A6CB8);
    OUTLINED_FUNCTION_121_1();
    OUTLINED_FUNCTION_114();
    __swift_storeEnumTagSinglePayload(v104, v105, v106, v107);
    sub_1E3741EA0(v103, v117, &qword_1ECF2C308, &qword_1E42A6CB0);
    OUTLINED_FUNCTION_114();
    __swift_storeEnumTagSinglePayload(v108, v109, v110, v114);
    OUTLINED_FUNCTION_54_0();
  }

  else
  {
    OUTLINED_FUNCTION_32_2();
    OUTLINED_FUNCTION_54_0();

    __swift_storeEnumTagSinglePayload(v64, v65, v66, v67);
  }
}

uint64_t sub_1E3865A2C@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C350, &qword_1E42A6CE8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_26_2();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C358, &qword_1E42A6CF0);
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_20_1();
  if (*(v1 + 32) && *(v1 + 40) == 1)
  {

    sub_1E3865BE0();
    sub_1E3869820();
    OUTLINED_FUNCTION_117_1();
    OUTLINED_FUNCTION_41_0();
    View.accessibilityIdentifier(key:location:)();

    sub_1E325F6F0(v2, &qword_1ECF2C350, &qword_1E42A6CE8);
    (*(v8 + 32))(a1, v3, v6);
    OUTLINED_FUNCTION_114();
    return __swift_storeEnumTagSinglePayload(v10, v11, v12, v6);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_34_5();

    return __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  }
}

void sub_1E3865BE0()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v29 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8_4();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A140, &qword_1E42B7E30);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_26_2();
  v11 = sub_1E373F6E0(*(v3 + 98), 238, v7, v8, v9, v10);
  v13 = *(v0 + 41);
  v14 = *(v0 + 8);
  if (v11)
  {
    if (v13)
    {
      sub_1E392CD70(v12);
    }

    else
    {
      sub_1E392CDDC(v12);
    }
  }

  else if (v13)
  {
    sub_1E392CD64(v12);
  }

  else
  {
    sub_1E392C8EC(v12);
  }

  OUTLINED_FUNCTION_18();
  sub_1E3F23370();
  v15 = *(**(v14 + OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout_logoImageLayout) + 200);

  v15(v16);

  sub_1E4203DA4();
  OUTLINED_FUNCTION_80_2();
  v17 = OUTLINED_FUNCTION_14_8();
  OUTLINED_FUNCTION_99_1(v17, v18, v19, v20, 0, 1, v21, v22, v27);
  v23 = OUTLINED_FUNCTION_75();
  v24(v23);
  memcpy((v1 + *(v28 + 36)), v30, 0x70uLL);
  if (_MergedGlobals_162 != -1)
  {
    OUTLINED_FUNCTION_11_38(&_MergedGlobals_162);
  }

  v25 = qword_1EE28B518;

  sub_1E3741EA0(v1, v29, &qword_1ECF2A140, &qword_1E42B7E30);
  v26 = (v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C350, &qword_1E42A6CE8) + 36));
  *v26 = v25;
  v26[1] = sub_1E374AE08;
  v26[2] = 0;
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3865EAC(uint64_t a2@<X8>)
{
  *a2 = sub_1E4201D44();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C2B0, &unk_1E42A6C60);
  sub_1E3865EFC();
}

void sub_1E3865EFC()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v68 = v2;
  v72 = sub_1E4201CF4();
  OUTLINED_FUNCTION_0_10();
  v75 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  v71 = sub_1E4201324();
  OUTLINED_FUNCTION_0_10();
  v74 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = (v11 - v10);
  v70 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v73 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v17 = (v16 - v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C2B8, &unk_1E42AA120);
  OUTLINED_FUNCTION_0_10();
  v66 = v19;
  v67 = v18;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2_5();
  v65 = v20;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_18_6();
  v64 = v22;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_18_6();
  v63 = v24;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_25_3();
  v69 = v26;
  v62 = *(v1 + 8);
  v27 = SportsDisplayError.title.getter();
  sub_1E32822E0(v27, v28, v29);
  v58 = sub_1E4202C44();
  v57 = v30;
  v56 = v31 & 1;
  v32 = sub_1E392D9F0();
  type metadata accessor for ScoreboardErrorView(0);
  sub_1E3746E10(v17);
  sub_1E374709C(v12);
  v33 = MEMORY[0x1E6981148];
  v34 = MEMORY[0x1E6981138];
  OUTLINED_FUNCTION_120();
  v35 = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_120();
  sub_1E37B5FBC(v36);
  OUTLINED_FUNCTION_120();
  v37 = j__OUTLINED_FUNCTION_18();
  sub_1E37B6028(v32, v17, v12, v35, v7, v37 & 1, v33, v34, v69);

  v61 = *(v75 + 8);
  v61(v7, v72);
  v60 = *(v74 + 8);
  v60(v12, v71);
  v59 = *(v73 + 8);
  v38 = v17;
  v59(v17, v70);
  sub_1E37434B8(v58, v57, v56);

  SportsDisplayError.subtitle.getter(v62);
  v39 = sub_1E4202C44();
  v41 = v40;
  LOBYTE(v32) = v42 & 1;
  sub_1E392DACC();
  sub_1E3746E10(v38);
  sub_1E374709C(v12);
  v43 = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_117_1();
  sub_1E37B5FBC(v44);
  j__OUTLINED_FUNCTION_18();
  v45 = OUTLINED_FUNCTION_34();
  sub_1E37B6028(v45, v46, v12, v43, v7, v47, MEMORY[0x1E6981148], MEMORY[0x1E6981138], v48);

  v61(v7, v72);
  v60(v12, v71);
  v59(v38, v70);
  sub_1E37434B8(v39, v41, v32);

  v49 = *(v66 + 16);
  v49(v64, v69, v67);
  v49(v65, v63, v67);
  *v68 = 0;
  OUTLINED_FUNCTION_122_3(v68);
  v51 = v50;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C2C0, &qword_1E42A6C70);
  v49(v51 + v52[12], v64, v67);
  v49(v51 + v52[16], v65, v67);
  v53 = (v51 + v52[20]);
  *v53 = 0;
  OUTLINED_FUNCTION_122_3(v53);
  v54 = *(v66 + 8);
  v54(v63, v67);
  v54(v69, v67);
  v55 = OUTLINED_FUNCTION_168();
  (v54)(v55);
  v54(v64, v67);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3866538()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_49_11();
  sub_1E386754C(v0, v1, &unk_1E42A65B8);
  sub_1E41FE8F4();
}

uint64_t sub_1E38665C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3866538();
  *a1 = result;
  return result;
}

uint64_t sub_1E3866620(uint64_t a1)
{

  v4 = sub_1E3868C04(v3, a1);

  if (v4)
  {
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_49_11();
    sub_1E386754C(v7, v8, &unk_1E42A65B8);
    sub_1E41FE8E4();
  }
}

void sub_1E3866760()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C280, &qword_1E42A6A98);
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_20_1();
  v10 = MEMORY[0x1E69E7CD0];
  v2[3] = MEMORY[0x1E69E7CD0];
  v2[4] = v10;
  sub_1E41FE924();
  v2[2] = v6;
  OUTLINED_FUNCTION_47_0();
  (*(v11 + 136))();
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  OUTLINED_FUNCTION_2_4();
  v12 = swift_allocObject();
  *(v12 + 16) = v2;
  *(v12 + 24) = v4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32570, &unk_1E4299870);
  sub_1E32752B0(&qword_1EE28A1B0, &unk_1ECF32570, &unk_1E4299870, MEMORY[0x1E695BED8]);
  sub_1E42006D4();

  swift_unownedRelease();

  swift_unownedRetainStrong();
  swift_unownedRetain();

  OUTLINED_FUNCTION_2_4();
  v13 = swift_allocObject();
  *(v13 + 16) = v2;
  *(v13 + 24) = v4;
  OUTLINED_FUNCTION_2_4();
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1E386905C;
  *(v14 + 24) = v13;
  sub_1E32752B0(&qword_1ECF2C288, &qword_1ECF2C280, &qword_1E42A6A98, MEMORY[0x1E695BCC0]);

  sub_1E4200844();

  (*(v8 + 8))(v1, v15);
  swift_beginAccess();
  sub_1E42004C4();
  swift_endAccess();

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3866ABC()
{
  OUTLINED_FUNCTION_10_34();
  sub_1E3869244(319, v0, v1, MEMORY[0x1E697DCC0]);
  if (v2 <= 0x3F)
  {
    type metadata accessor for SportsCanonicalBannerScoreboardViewModel(319);
    if (v3 <= 0x3F)
    {
      type metadata accessor for SportsCanonicalBannerScoreboardViewLayout(319);
      if (v4 <= 0x3F)
      {
        OUTLINED_FUNCTION_55_9();
        sub_1E3869244(319, v5, v6, MEMORY[0x1E69E6720]);
        if (v7 <= 0x3F)
        {
          OUTLINED_FUNCTION_53_13();
          sub_1E3869244(319, v8, v9, MEMORY[0x1E69E6720]);
          if (v10 <= 0x3F)
          {
            OUTLINED_FUNCTION_72();
            swift_cvw_initStructMetadataWithLayoutString();
            OUTLINED_FUNCTION_165();
          }
        }
      }
    }
  }
}

uint64_t sub_1E3866BDC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

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

  return OUTLINED_FUNCTION_17_7(v2);
}

uint64_t sub_1E3866C28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 < 0 && *(a1 + 41))
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

  return OUTLINED_FUNCTION_17_7(v2);
}

uint64_t sub_1E3866C74(uint64_t a1)
{

  v3 = sub_1E38684F4(v2, a1);

  return sub_1E3866620(v3);
}

uint64_t sub_1E3866CD0()
{

  v1 = OBJC_IVAR____TtC8VideosUIP33_1EC953D8B34D2FAE255957480D41103213FavoriteTeams___observationRegistrar;
  sub_1E41FE934();
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(v0 + v1);
  OUTLINED_FUNCTION_36();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v4, v5);
}

uint64_t sub_1E3866D80(uint64_t a1)
{
  result = sub_1E41FE934();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1E3866E24()
{
  result = qword_1ECF2BDC8;
  if (!qword_1ECF2BDC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29610, &qword_1E429B750);
    sub_1E38683E4(qword_1EE23BBE8, type metadata accessor for TextBadge, &unk_1E42E3350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BDC8);
  }

  return result;
}

void sub_1E3866F00()
{
  OUTLINED_FUNCTION_10_34();
  sub_1E3869244(319, v0, v1, MEMORY[0x1E697DCC0]);
  if (v2 <= 0x3F)
  {
    sub_1E3867038(319);
    if (v3 <= 0x3F)
    {
      type metadata accessor for FavoriteTeams(319);
      if (v4 <= 0x3F)
      {
        sub_1E38670CC(319);
        if (v5 <= 0x3F)
        {
          OUTLINED_FUNCTION_55_9();
          sub_1E3869244(319, v6, v7, MEMORY[0x1E69E6720]);
          if (v8 <= 0x3F)
          {
            OUTLINED_FUNCTION_53_13();
            sub_1E3869244(319, v9, v10, MEMORY[0x1E69E6720]);
            if (v11 <= 0x3F)
            {
              OUTLINED_FUNCTION_72();
              swift_cvw_initStructMetadataWithLayoutString();
              OUTLINED_FUNCTION_165();
            }
          }
        }
      }
    }
  }
}

void sub_1E3867038(uint64_t a1)
{
  if (!qword_1EE289D00)
  {
    type metadata accessor for SportsCanonicalBannerScoreboardViewModel(255);
    sub_1E38683E4(&qword_1EE23D9B0, type metadata accessor for SportsCanonicalBannerScoreboardViewModel, &unk_1E42E1620);
    v1 = sub_1E42010F4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE289D00);
    }
  }
}

void sub_1E38670CC(uint64_t a1)
{
  if (!qword_1ECF2BDE0)
  {
    type metadata accessor for SportsCanonicalBannerScoreboardViewLayout(255);
    sub_1E38683E4(qword_1EE23CF78, type metadata accessor for SportsCanonicalBannerScoreboardViewLayout, &unk_1E42ABC48);
    v1 = sub_1E42010F4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECF2BDE0);
    }
  }
}

unint64_t sub_1E3867198()
{
  result = qword_1ECF2BE28;
  if (!qword_1ECF2BE28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2BDF8, &qword_1E42A6638);
    swift_getOpaqueTypeConformance2();
    sub_1E32752B0(&qword_1ECF2BE30, &qword_1ECF2BE38, &qword_1E42A6668, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BE28);
  }

  return result;
}

unint64_t sub_1E3867268()
{
  result = qword_1ECF2BE40;
  if (!qword_1ECF2BE40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2BE08, &qword_1E42A6648);
    sub_1E3867320();
    sub_1E32752B0(&qword_1ECF2BE88, &qword_1ECF2BE90, &qword_1E42A6690, MEMORY[0x1E69817F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BE40);
  }

  return result;
}

unint64_t sub_1E3867320()
{
  result = qword_1ECF2BE48;
  if (!qword_1ECF2BE48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2BE50, &qword_1E42A6670);
    sub_1E38673AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BE48);
  }

  return result;
}

unint64_t sub_1E38673AC()
{
  result = qword_1ECF2BE58;
  if (!qword_1ECF2BE58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2BE60, &qword_1E42A6678);
    sub_1E32752B0(&qword_1ECF2BE68, &qword_1ECF2BE70, &qword_1E42A6680, MEMORY[0x1E697DDD0]);
    sub_1E32752B0(&qword_1ECF2BE78, &qword_1ECF2BE80, &qword_1E42A6688, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BE58);
  }

  return result;
}

unint64_t sub_1E3867490()
{
  result = qword_1ECF2BE98;
  if (!qword_1ECF2BE98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2BE20, &qword_1E42A6660);
    sub_1E386754C(qword_1ECF4E2D0, type metadata accessor for ScoreboardErrorView, &unk_1E42A6C10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BE98);
  }

  return result;
}

uint64_t sub_1E386754C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E3867594()
{
  result = qword_1ECF2BEA0;
  if (!qword_1ECF2BEA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2BE10, &qword_1E42A6650);
    sub_1E3867198();
    sub_1E3867268();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BEA0);
  }

  return result;
}

uint64_t sub_1E3867620@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E4201844();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1E3867678(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_32_0();
  v5(v4);
  return a2;
}

unint64_t sub_1E386771C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF4E2E8;
  if (!qword_1ECF4E2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF4E2E8);
  }

  return result;
}

unint64_t sub_1E3867790()
{
  result = qword_1ECF2BFC0;
  if (!qword_1ECF2BFC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2BF98, &qword_1E42A67E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2BF90, &qword_1E42A67D8);
    type metadata accessor for SportsClockView(255);
    sub_1E38683E4(qword_1EE2800B8, type metadata accessor for SportsClockView, &unk_1E42BCE20);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_1E38678C0(OpaqueTypeConformance2, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BFC0);
  }

  return result;
}

unint64_t sub_1E38678C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF2BFC8;
  if (!qword_1ECF2BFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BFC8);
  }

  return result;
}

unint64_t sub_1E3867914()
{
  result = qword_1ECF2BFF0;
  if (!qword_1ECF2BFF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2BFE0, &qword_1E42A6818);
    type metadata accessor for TextBadge(255);
    sub_1E38683E4(qword_1EE23BBE8, type metadata accessor for TextBadge, &unk_1E42E3350);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BFF0);
  }

  return result;
}

unint64_t sub_1E3867A2C()
{
  result = qword_1ECF2C048;
  if (!qword_1ECF2C048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2BF58, &qword_1E42A6790);
    sub_1E3867AB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2C048);
  }

  return result;
}

unint64_t sub_1E3867AB0()
{
  result = qword_1ECF2C050;
  if (!qword_1ECF2C050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2BF68, &unk_1E42A67A8);
    sub_1E386754C(qword_1ECF4E2F0, type metadata accessor for CompetitorScoreView, &unk_1E42A6B70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2C050);
  }

  return result;
}

unint64_t sub_1E3867B98()
{
  result = qword_1ECF2C0E8;
  if (!qword_1ECF2C0E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2C0A8, &qword_1E42A68C0);
    sub_1E3867C24();
    sub_1E3867D0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2C0E8);
  }

  return result;
}

unint64_t sub_1E3867C24()
{
  result = qword_1ECF2C0F0;
  if (!qword_1ECF2C0F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2C0B8, &qword_1E42A68D0);
    sub_1E32752B0(&qword_1ECF2C0E0, &qword_1ECF2C0B0, &qword_1E42A68C8, MEMORY[0x1E6981870]);
    sub_1E38683E4(&qword_1EE288768, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2C0F0);
  }

  return result;
}

unint64_t sub_1E3867D0C()
{
  result = qword_1ECF2C0F8;
  if (!qword_1ECF2C0F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2C090, &qword_1E42A68A8);
    sub_1E32752B0(&qword_1ECF2C100, &qword_1ECF2C108, &qword_1E42A68F8, MEMORY[0x1E697F5A8]);
    sub_1E32752B0(&qword_1ECF2C110, &qword_1ECF2C118, &qword_1E42A6900, MEMORY[0x1E6981F48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2C0F8);
  }

  return result;
}

unint64_t sub_1E3867DF0()
{
  result = qword_1ECF2C168;
  if (!qword_1ECF2C168)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2C148, &qword_1E42A6930);
    sub_1E3867E74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2C168);
  }

  return result;
}

unint64_t sub_1E3867E74()
{
  result = qword_1ECF2C170;
  if (!qword_1ECF2C170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2C178, &qword_1E42A6950);
    sub_1E3867F00();
    sub_1E3868110();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2C170);
  }

  return result;
}

unint64_t sub_1E3867F00()
{
  result = qword_1ECF2C180;
  if (!qword_1ECF2C180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2C188, &qword_1E42A6958);
    v3 = sub_1E3867F8C();
    sub_1E38680BC(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2C180);
  }

  return result;
}

unint64_t sub_1E3867F8C()
{
  result = qword_1ECF2C190;
  if (!qword_1ECF2C190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2C198, &unk_1E42A6960);
    sub_1E3868018();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2C190);
  }

  return result;
}

unint64_t sub_1E3868018()
{
  result = qword_1ECF2C1A0;
  if (!qword_1ECF2C1A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2C1A8, &qword_1E42C9810);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2C1A0);
  }

  return result;
}

unint64_t sub_1E38680BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE288750;
  if (!qword_1EE288750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288750);
  }

  return result;
}

unint64_t sub_1E3868110()
{
  result = qword_1ECF2C1B0;
  if (!qword_1ECF2C1B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2C1B8, &qword_1E42A6970);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2C1B0);
  }

  return result;
}

uint64_t sub_1E3868194(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1E38681EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E42019D4();
  *a1 = result;
  return result;
}

unint64_t sub_1E3868244()
{
  result = qword_1ECF2C208;
  if (!qword_1ECF2C208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2C1F0, &qword_1E42A69A8);
    sub_1E38682FC();
    sub_1E32752B0(&qword_1EE2887A0, &qword_1ECF2A208, &unk_1E42BB350, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2C208);
  }

  return result;
}

unint64_t sub_1E38682FC()
{
  result = qword_1ECF2C210;
  if (!qword_1ECF2C210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2C200, &qword_1E42A69E8);
    swift_getOpaqueTypeConformance2();
    sub_1E32752B0(&qword_1EE288788, &qword_1ECF28998, &unk_1E4297E30, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2C210);
  }

  return result;
}

uint64_t sub_1E38683E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void (*sub_1E386842C(void (*result)(void)))(void)
{
  if (!result)
  {
    OUTLINED_FUNCTION_8();
    result = (*(v1 + 248))();
    if (result)
    {
      result();
      v2 = OUTLINED_FUNCTION_32_0();

      return sub_1E37FAED8(v2, v3);
    }
  }

  return result;
}

unint64_t sub_1E38684A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF4E308;
  if (!qword_1ECF4E308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF4E308);
  }

  return result;
}

uint64_t sub_1E38684F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v34 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;

  if (v7 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v30 = v3;
    v28[1] = v28;
    MEMORY[0x1EEE9AC00](v10);
    v29 = v8;
    v31 = (v28 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_1E373CBF0(0, v8, v31);
    v32 = 0;
    v33 = v5;
    v11 = 0;
    v13 = *(v5 + 56);
    v5 += 56;
    v12 = v13;
    v14 = 1 << *(v5 - 24);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & v12;
    v8 = (v14 + 63) >> 6;
    while (v16)
    {
      v17 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_12:
      v9 = v17 | (v11 << 6);
      v20 = (*(v33 + 48) + 16 * v9);
      v21 = *v20;
      v22 = v20[1];
      v23 = *(*a2 + 376);
      v3 = *a2 + 376;

      LOBYTE(v23) = v23(v21, v22);

      if (v23)
      {
        *(v31 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        if (__OFADD__(v32++, 1))
        {
          __break(1u);
LABEL_16:
          v25 = sub_1E38689E8(v31, v29, v32, v33);

          return v25;
        }
      }
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v8)
      {
        goto LABEL_16;
      }

      v19 = *(v5 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v16 = (v19 - 1) & v19;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v27 = swift_slowAlloc();

  v25 = sub_1E3868948(v27, v8, v5, a2);

  MEMORY[0x1E69143B0](v27, -1, -1);

  return v25;
}

unint64_t *sub_1E38687B0(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = result;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(a3 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    v18 = *(*a4 + 376);

    LOBYTE(v18) = v18(v16, v17);

    if (v18)
    {
      *(v22 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
LABEL_15:

        v20 = sub_1E38689E8(v22, a2, v23, a3);

        return v20;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_15;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1E3868948(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_retain_n();
    v8 = sub_1E38687B0(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1E38689E8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF363E0, &unk_1E42A79A0);
  result = sub_1E4207464();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_1E4207B44();

    sub_1E4206014();
    result = sub_1E4207BA4();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1E3868C04(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v21 = result;
  if (v7)
  {
    while (2)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_13:
      v12 = (*(result + 48) + 16 * (v9 | (v3 << 6)));
      v14 = *v12;
      v13 = v12[1];
      sub_1E4207B44();

      sub_1E4206014();
      v15 = sub_1E4207BA4();
      v16 = ~(-1 << *(a2 + 32));
      do
      {
        v17 = v15 & v16;
        if (((*(a2 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
        {

          return 0;
        }

        v18 = (*(a2 + 48) + 16 * v17);
        if (*v18 == v14 && v18[1] == v13)
        {
          break;
        }

        v20 = sub_1E42079A4();
        v15 = v17 + 1;
      }

      while ((v20 & 1) == 0);

      result = v21;
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3868DAC()
{
  *(*(v0 + 16) + 24) = *(v0 + 24);
}

unint64_t sub_1E3868DE8()
{
  result = qword_1ECF2C240;
  if (!qword_1ECF2C240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2C228, &qword_1E42A6A60);
    sub_1E3868E6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2C240);
  }

  return result;
}

unint64_t sub_1E3868E6C()
{
  result = qword_1ECF2C248;
  if (!qword_1ECF2C248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2C250, &qword_1E42A6A78);
    sub_1E3868EF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2C248);
  }

  return result;
}

unint64_t sub_1E3868EF0()
{
  result = qword_1ECF2C258;
  if (!qword_1ECF2C258)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2C260, &qword_1E42A6A80);
    sub_1E3868FAC(v1, v2, v3);
    sub_1E38683E4(qword_1EE23BBE8, type metadata accessor for TextBadge, &unk_1E42E3350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2C258);
  }

  return result;
}

unint64_t sub_1E3868FAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF2C268;
  if (!qword_1ECF2C268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2C268);
  }

  return result;
}

uint64_t sub_1E3869000(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_32_0();
  v5(v4);
  return a2;
}

double sub_1E386905C()
{
  v1 = *(v0 + 24);
  swift_unownedRetainStrong();
  sub_1E3866C74(v1);

  return result;
}

uint64_t objectdestroyTm_8(__n128 a1)
{
  swift_unownedRelease();

  OUTLINED_FUNCTION_2_4();

  return swift_deallocObject();
}

void sub_1E3869118()
{
  sub_1E38670CC(319);
  if (v0 <= 0x3F)
  {
    sub_1E3869244(319, qword_1EE283398, type metadata accessor for TextViewModel, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      OUTLINED_FUNCTION_10_34();
      sub_1E3869244(319, v2, v3, MEMORY[0x1E697DCC0]);
      if (v4 <= 0x3F)
      {
        OUTLINED_FUNCTION_50_5();
        sub_1E3869244(319, v5, v6, MEMORY[0x1E697DCC0]);
        if (v7 <= 0x3F)
        {
          OUTLINED_FUNCTION_72();
          swift_cvw_initStructMetadataWithLayoutString();
          OUTLINED_FUNCTION_165();
        }
      }
    }
  }
}

void sub_1E3869244(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1E38692BC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 < 0 && *(a1 + 33))
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

  return OUTLINED_FUNCTION_17_7(v2);
}

uint64_t sub_1E38692F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1E3869374()
{
  type metadata accessor for SportsCanonicalBannerScoreboardViewLayout(319);
  if (v0 <= 0x3F)
  {
    OUTLINED_FUNCTION_10_34();
    sub_1E3869244(319, v1, v2, MEMORY[0x1E697DCC0]);
    if (v3 <= 0x3F)
    {
      OUTLINED_FUNCTION_50_5();
      sub_1E3869244(319, v4, v5, MEMORY[0x1E697DCC0]);
      if (v6 <= 0x3F)
      {
        OUTLINED_FUNCTION_72();
        swift_cvw_initStructMetadataWithLayoutString();
        OUTLINED_FUNCTION_165();
      }
    }
  }
}

unint64_t sub_1E386944C()
{
  result = qword_1ECF2C290;
  if (!qword_1ECF2C290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2BDF0, &qword_1E42A6630);
    sub_1E38694D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2C290);
  }

  return result;
}

unint64_t sub_1E38694D8()
{
  result = qword_1ECF2C298;
  if (!qword_1ECF2C298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2BDE8, &qword_1E42A6628);
    sub_1E386955C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2C298);
  }

  return result;
}

unint64_t sub_1E386955C()
{
  result = qword_1ECF2C2A0;
  if (!qword_1ECF2C2A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2C2A8, &qword_1E42A6B38);
    sub_1E3867490();
    sub_1E3867594();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2C2A0);
  }

  return result;
}

unint64_t sub_1E3869630()
{
  result = qword_1ECF2C318;
  if (!qword_1ECF2C318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2C300, &qword_1E42A6CA8);
    sub_1E38696BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2C318);
  }

  return result;
}

unint64_t sub_1E38696BC()
{
  result = qword_1ECF2C320;
  if (!qword_1ECF2C320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2C1D8, &qword_1E42A6988);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2C1F8, &qword_1E42A69B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A1F8, &qword_1E429E7F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2C1F0, &qword_1E42A69A8);
    sub_1E3868244();
    swift_getOpaqueTypeConformance2();
    sub_1E32752B0(&qword_1EE23ACD8, &qword_1ECF2A1F8, &qword_1E429E7F0, MEMORY[0x1E69E6ED8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2C320);
  }

  return result;
}

unint64_t sub_1E3869820()
{
  result = qword_1ECF2C360;
  if (!qword_1ECF2C360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2C350, &qword_1E42A6CE8);
    sub_1E37AE064();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2C360);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TeamSide(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1E3869988()
{
  result = qword_1ECF2C378;
  if (!qword_1ECF2C378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2C380, &qword_1E42A6D10);
    sub_1E32752B0(&qword_1ECF2C2F0, &qword_1ECF2C2D8, &qword_1E42A6C88, MEMORY[0x1E6981810]);
    sub_1E38683E4(&qword_1EE288768, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2C378);
  }

  return result;
}

unint64_t sub_1E3869A70()
{
  result = qword_1ECF2C388;
  if (!qword_1ECF2C388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECF2C390, qword_1E42A6D18);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2C350, &qword_1E42A6CE8);
    sub_1E3869820();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2C388);
  }

  return result;
}

unint64_t sub_1E3869B34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF4E5C0[0];
  if (!qword_1ECF4E5C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF4E5C0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_70_7()
{
  v5 = *(v3 - 120);

  return sub_1E3743538(v1, v5, v2, v0);
}

double OUTLINED_FUNCTION_84_6(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  a4.n128_u64[0] = *(v4 - 272);
  a3.n128_u64[0] = *(v4 - 280);
  a2.n128_u64[0] = *(v4 - 288);
  a1.n128_u64[0] = *(v4 - 296);

  return j_nullsub_1(a1, a2, a3, a4);
}

uint64_t OUTLINED_FUNCTION_96_4()
{
  *(v4 - 136) = v2;

  return sub_1E3743538(v2, v0, v3, v1);
}

uint64_t OUTLINED_FUNCTION_110_1(uint64_t a1, uint64_t a2)
{

  return sub_1E42030F4();
}

uint64_t OUTLINED_FUNCTION_112_4()
{
  v4 = *(v2 - 144);

  return sub_1E325F6F0(v4, v0, v1);
}

uint64_t OUTLINED_FUNCTION_130_2(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1E4202ED4();
}

uint64_t OUTLINED_FUNCTION_131_2()
{

  return sub_1E4205E84();
}

uint64_t OUTLINED_FUNCTION_132_1()
{

  return sub_1E3743538(v2 - 88, v2 - 96, v0, v1);
}

uint64_t OUTLINED_FUNCTION_133_2()
{

  return sub_1E4202ED4();
}

void *sub_1E3869D48()
{
  v1 = OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_fullscreenPlayerViewController;
  OUTLINED_FUNCTION_3_49();
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1E3869D8C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_fullscreenPlayerViewController;
  OUTLINED_FUNCTION_37(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1E3869DD4()
{
  v1 = OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController____lazy_storage___metricsRecorder;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController____lazy_storage___metricsRecorder))
  {
    v2 = *(v0 + OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController____lazy_storage___metricsRecorder);
  }

  else
  {
    v3 = v0;
    type metadata accessor for MultiPlayerMetricsRecorder();
    OUTLINED_FUNCTION_50();
    v4 = swift_unknownObjectRetain();
    v2 = sub_1E40AD790(v4, &off_1F5D8BA00);
    *(v3 + v1) = v2;
  }

  return v2;
}

void sub_1E3869EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_201_0();
  a17 = v18;
  a18 = v19;
  OUTLINED_FUNCTION_120_1();
  OUTLINED_FUNCTION_21();
  a10 = (*(v20 + 264))();
  v21 = sub_1E386A9A8();
  if (!v21)
  {
    goto LABEL_8;
  }

  v22 = v21;
  sub_1E3878B80(&a10, v22);
  v24 = v23;
  v25 = a10;
  v26 = sub_1E32AE9B0(a10);
  v27 = v26 - v24;
  if (v26 < v24)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v24 < 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v28 = v26;
  if (sub_1E32AE9B0(v25) < v26)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v29 = __OFSUB__(0, v27);
  v30 = -v27;
  if (v29)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v31 = sub_1E32AE9B0(v25);
  v29 = __OFADD__(v31, v30);
  v32 = v31 + v30;
  if (!v29)
  {
    sub_1E3879104(v32, 1);
    sub_1E38791AC(v24, v28, 0);

LABEL_8:
    OUTLINED_FUNCTION_200();
    return;
  }

LABEL_13:
  __break(1u);
}

uint64_t sub_1E3869FE4()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_presentationPlayerViewControllers);
  if (v1)
  {
    if (v1 >> 62)
    {

      return sub_1E4207384();
    }

    else
    {
      return *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    OUTLINED_FUNCTION_21();
    v4 = (*(v3 + 424))();
    sub_1E32AE9B0(v4);
    OUTLINED_FUNCTION_50();

    return v0;
  }
}

id sub_1E386A094()
{
  v3 = OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController____lazy_storage___gestureManager;
  v4 = *(v1 + OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController____lazy_storage___gestureManager);
  if (v4)
  {
    v5 = *(v1 + OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController____lazy_storage___gestureManager);
  }

  else
  {
    v6 = OUTLINED_FUNCTION_156_0();
    _s14GestureManagerCMa(v6);
    OUTLINED_FUNCTION_4_0();
    v7 = swift_allocObject();
    OUTLINED_FUNCTION_83_1(v7);
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_4_0();
    v8 = swift_allocObject();
    OUTLINED_FUNCTION_45_2(v8);
    sub_1E3BC5B38(v0, sub_1E387F548, v2, sub_1E387F5C0, v8);
    v9 = *&v0[v3];
    *&v0[v3] = v10;
    v5 = v10;

    v4 = 0;
  }

  v11 = v4;
  return v5;
}

char *sub_1E386A170()
{
  v2 = OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController____lazy_storage___backgroundView;
  v3 = *(v1 + OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController____lazy_storage___backgroundView);
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController____lazy_storage___backgroundView);
  }

  else
  {
    OUTLINED_FUNCTION_156_0();
    type metadata accessor for MultiPlayerBackgroundView();

    v5 = sub_1E3D314E4();
    v6 = *(v0 + v2);
    *(v0 + v2) = v5;
    v4 = v5;

    v3 = 0;
  }

  v7 = v3;
  return v4;
}

id sub_1E386A230()
{
  v0 = sub_1E386A170();
  v1 = sub_1E3D310A4();

  return v1;
}

void sub_1E386A2B8()
{
  sub_1E386A170();
  OUTLINED_FUNCTION_37_3();
  v0 = OUTLINED_FUNCTION_190();
  sub_1E3D31190(v0);
}

void (*sub_1E386A304(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  v3 = sub_1E386A170();
  v4 = sub_1E3D310A4();

  *a1 = v4;
  return sub_1E386A364;
}

void sub_1E386A364(uint64_t a1, char a2)
{
  v7 = *(*(a1 + 8) + OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController____lazy_storage___backgroundView);
  if (a2)
  {
    v2 = *a1;
    v3 = v7;
    v4 = OUTLINED_FUNCTION_50();
    sub_1E3D31190(v4);
  }

  else
  {
    v5 = v7;
    v6 = OUTLINED_FUNCTION_50();
    sub_1E3D31190(v6);
  }
}

void *sub_1E386A3EC()
{
  OUTLINED_FUNCTION_120_1();
  OUTLINED_FUNCTION_21();
  result = (*(v0 + 800))();
  if (result)
  {
    v2 = result;
    [result bounds];
    Width = CGRectGetWidth(v5);
    [v2 bounds];
    Height = CGRectGetHeight(v6);

    return (Width < Height);
  }

  return result;
}

double sub_1E386A48C()
{
  if (UIAccessibilityIsVoiceOverRunning())
  {
    return 300.0;
  }

  IsSwitchControlRunning = UIAccessibilityIsSwitchControlRunning();
  result = 300.0;
  if (!IsSwitchControlRunning)
  {
    return 15.0;
  }

  return result;
}

uint64_t sub_1E386A554()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v0 = OUTLINED_FUNCTION_16_0();
  sub_1E37FAED4(v0, v1);
  return OUTLINED_FUNCTION_16_0();
}

uint64_t sub_1E386A644(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_presentationCompletion);
  OUTLINED_FUNCTION_3_0(v5, v9);
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1E37FAED8(v6, v7);
}

uint64_t sub_1E386A730()
{
  OUTLINED_FUNCTION_3_49();
  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1E386A7C8(uint64_t a1)
{
  OUTLINED_FUNCTION_37(a1);
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1E386A818(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_delegate;
  v3[4] = v1;
  v3[5] = v4;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1E373B95C;
}

uint64_t sub_1E386A8D0()
{
  OUTLINED_FUNCTION_120_1();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 480))();
}

uint64_t sub_1E386A92C()
{
  v1 = OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_isDetailsViewControllerVisible;
  OUTLINED_FUNCTION_3_49();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1E386A968(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_isDetailsViewControllerVisible;
  result = OUTLINED_FUNCTION_37(a1);
  *(v1 + v3) = v2;
  return result;
}

BOOL sub_1E386AA4C()
{
  v0 = sub_1E386A9A8();
  v1 = v0;
  if (v0)
  {
  }

  return v1 != 0;
}

uint64_t sub_1E386AAB4()
{
  v0 = sub_1E386A9A8();
  if (v0)
  {
    v1 = v0;
    OUTLINED_FUNCTION_120_1();
    v2 = MEMORY[0x1E69E7D40];
    OUTLINED_FUNCTION_21();
    v4 = (*(v3 + 264))();
    OUTLINED_FUNCTION_36_3();
    v6 = (*((*v2 & v5) + 0x1F8))();
    sub_1E386ABC0(v6, v4);
    v8 = v7;
    v10 = v9;

    if ((v10 & 1) == 0)
    {
      return v8;
    }
  }

  return sub_1E41FDD54();
}

void sub_1E386ABC0(uint64_t a1, unint64_t a2)
{
  v3 = sub_1E32AE9B0(a2);
  v4 = 0;
  while (v3 != v4)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1E6911E60](v4, a2);
    }

    else
    {
      if (v4 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }

      v5 = *(a2 + 8 * v4 + 32);
    }

    v6 = v5;
    sub_1E3280A90(0, &qword_1ECF2C3E0, 0x1E6958608);
    v7 = sub_1E4206F64();

    if (v7)
    {
      return;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_14;
    }
  }
}

uint64_t sub_1E386AD2C()
{
  v1 = OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController____lazy_storage___headerPresenter;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController____lazy_storage___headerPresenter))
  {
    v2 = *(v0 + OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController____lazy_storage___headerPresenter);
  }

  else
  {
    sub_1E386AD94();
    v2 = v3;
    *(v0 + v1) = v3;
  }

  return v2;
}

void sub_1E386AD94()
{
  OUTLINED_FUNCTION_31_1();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C488, &qword_1E42A6E70);
  OUTLINED_FUNCTION_0_10();
  v29 = v0;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C490, &qword_1E42A6E78);
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C498, &qword_1E42A6E80);
  OUTLINED_FUNCTION_17_2(v8);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  type metadata accessor for MultiPlayerHeaderPresenter(0);
  OUTLINED_FUNCTION_36_3();
  v13 = (*((*MEMORY[0x1E69E7D40] & v12) + 0x258))();
  v14 = sub_1E386B444();
  v28 = sub_1E3CB8C8C(v13, v14);
  sub_1E3CB8B38();
  v26 = sub_1E32752B0(&qword_1ECF2C4A0, &qword_1ECF2C490, &qword_1E42A6E78, MEMORY[0x1E695C068]);
  MEMORY[0x1E690B1C0](v2, v26);
  v15 = *(v4 + 8);
  v24 = v4 + 8;
  v25 = v15;
  v15(v7, v2);
  OUTLINED_FUNCTION_64_9();
  sub_1E32752B0(v16, &qword_1ECF2C488, &qword_1E42A6E70, v17);
  sub_1E3879E68(&qword_1ECF2C4B0, type metadata accessor for MultiPlayerViewControllerPlayerDistribution, &unk_1E42A6FD0);
  OUTLINED_FUNCTION_198_0();
  v18 = *(v29 + 8);
  v29 += 8;
  v19 = OUTLINED_FUNCTION_171_0();
  v18(v19);
  OUTLINED_FUNCTION_4_0();
  v20 = swift_allocObject();
  OUTLINED_FUNCTION_105_2(v20);
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_173_0();
  sub_1E386D7EC();

  sub_1E325F6F0(v11, &qword_1ECF2C498, &qword_1E42A6E80);
  OUTLINED_FUNCTION_21();
  (*(v21 + 504))();
  MEMORY[0x1E690B1C0](v2, v26);
  v25(v7, v2);
  OUTLINED_FUNCTION_198_0();
  v22 = OUTLINED_FUNCTION_171_0();
  v18(v22);
  OUTLINED_FUNCTION_4_0();
  v23 = swift_allocObject();
  OUTLINED_FUNCTION_105_2(v23);
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_173_0();
  sub_1E386D7EC();

  sub_1E325F6F0(v11, &qword_1ECF2C498, &qword_1E42A6E80);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E386B1A4(unint64_t a1, void *a2)
{
  v10 = sub_1E32AE9B0(a1);
  v4 = 0;
  while (1)
  {
    if (v10 == v4)
    {
LABEL_11:

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1E6911E60](v4, a1);
      goto LABEL_6;
    }

    if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v5 = *(a1 + 8 * v4 + 32);
LABEL_6:
    v6 = v5;
    sub_1E3280A90(0, &qword_1EE23AD70, 0x1E69E58C0);
    v7 = (*((*MEMORY[0x1E69E7D40] & *a2) + 0x1F8))();
    v8 = sub_1E4206F64();

    if (v8)
    {
      goto LABEL_11;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

id sub_1E386B308()
{
  v1 = OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController____lazy_storage___headerView;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController____lazy_storage___headerView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController____lazy_storage___headerView);
  }

  else
  {
    v4 = v0;
    sub_1E386AD2C();
    OUTLINED_FUNCTION_4_0();
    v5 = swift_allocObject();
    OUTLINED_FUNCTION_45_2(v5);
    v6 = OUTLINED_FUNCTION_121();
    sub_1E3CB9B88(v6, v7, v8, v9);
    v10 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C578, &qword_1E42A6F38));
    v11 = sub_1E4201214();
    v12 = *(v0 + v1);
    *(v4 + v1) = v11;
    v3 = v11;

    v2 = 0;
  }

  v13 = v2;
  return v3;
}

id sub_1E386B3D4()
{
  v2 = OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController____lazy_storage___grabberView;
  v3 = *(v1 + OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController____lazy_storage___grabberView);
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController____lazy_storage___grabberView);
  }

  else
  {
    OUTLINED_FUNCTION_156_0();
    type metadata accessor for MultiPlayerGrabberView();
    v5 = sub_1E416EA48(0);
    v6 = *(v0 + v2);
    *(v0 + v2) = v5;
    v4 = v5;

    v3 = 0;
  }

  v7 = v3;
  return v4;
}

BOOL sub_1E386B444()
{
  if (*(v0 + OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_presentationPlayerViewControllers))
  {
    v1 = *(v0 + OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_presentationPlayerViewControllers);
  }

  else
  {
    OUTLINED_FUNCTION_21();
    v1 = (*(v2 + 424))();
  }

  if (v1 >> 62)
  {
    v3 = sub_1E4207384();
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v3 == 2 || v3 == 4;
}

uint64_t sub_1E386B500()
{
  v1 = objc_allocWithZone(v0);
  v2 = OUTLINED_FUNCTION_74();
  return sub_1E386B548(v2);
}

void sub_1E386BFE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void (*a13)(), void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_193();
  a25 = v27;
  a26 = v28;
  v29 = *(v26 + OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_presentationPlayerViewControllers);
  if (v29)
  {
    v30 = *(v26 + OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_ghostPlayerViewController);
    OUTLINED_FUNCTION_21();
    v32 = *(v31 + 848);

    (v32)(v30, 0, 0, 0, 0, 0);

    v34 = sub_1E386C214(1, v29);
    v36 = v35;
    v38 = v37 >> 1;
    while (v38 != v33)
    {
      if (v33 >= v38)
      {
        __break(1u);
LABEL_16:
        v41 = MEMORY[0x1E6911E60](0, v29);
LABEL_10:
        v42 = v41;
        OUTLINED_FUNCTION_4_0();
        v43 = swift_allocObject();
        OUTLINED_FUNCTION_83_1(v43);
        swift_unknownObjectWeakInit();
        OUTLINED_FUNCTION_5_10();
        v44 = swift_allocObject();
        v44[2] = v34;
        v44[3] = v42;
        v44[4] = v29;
        a13 = sub_1E387E9D0;
        a14 = v44;
        OUTLINED_FUNCTION_3_4();
        a10 = 1107296256;
        OUTLINED_FUNCTION_14_1();
        a11 = v45;
        a12 = &block_descriptor_415;
        v46 = _Block_copy(&a9);
        v47 = v42;
        OUTLINED_FUNCTION_38();

        v48 = OUTLINED_FUNCTION_184_0();
        [v48 v49];
        _Block_release(v46);

        goto LABEL_11;
      }

      v39 = v33 + 1;
      v40 = *(v36 + 8 * v33);
      v32();

      v33 = v39;
    }

    swift_unknownObjectRelease();
    if (sub_1E32AE9B0(v29))
    {
      if ((v29 & 0xC000000000000001) != 0)
      {
        goto LABEL_16;
      }

      if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v41 = *(v29 + 32);
        goto LABEL_10;
      }

      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_140_0();
    }
  }

  else
  {
LABEL_11:
    OUTLINED_FUNCTION_140_0();
  }
}

unint64_t sub_1E386C214(uint64_t a1, unint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v4 = sub_1E32AE9B0(a2);
  v5 = sub_1E380055C(0, a1, v4);
  if (v6)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  if (v4 < v7)
  {
    goto LABEL_18;
  }

  sub_1E37EFABC(v7, a2);
  result = sub_1E37EFABC(v4, a2);
  if ((a2 & 0xC000000000000001) == 0 || v7 == v4)
  {
  }

  else
  {
    if (v7 >= v4)
    {
      goto LABEL_21;
    }

    sub_1E3280A90(0, &qword_1ECF2C3E0, 0x1E6958608);

    result = v7;
    do
    {
      v9 = result + 1;
      sub_1E42074F4();
      result = v9;
    }

    while (v4 != v9);
  }

  if (a2 >> 62)
  {
LABEL_19:

    v10 = sub_1E4207704();

    return v10;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {

    return a2 & 0xFFFFFFFFFFFFFF8;
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

double sub_1E386C378()
{
  OUTLINED_FUNCTION_82_2();
  OUTLINED_FUNCTION_4_0();
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_83_1(v1);
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_26_3();
  v2 = MEMORY[0x1E69E7D40];
  v4 = *((*MEMORY[0x1E69E7D40] & v3) + 0x1D0);

  v4(sub_1E387E7FC, v0);

  OUTLINED_FUNCTION_4_0();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_45_2(v5);
  OUTLINED_FUNCTION_26_3();
  v7 = *((*v2 & v6) + 0x180);

  v7(sub_1E387E804, v5);
  OUTLINED_FUNCTION_95();

  return result;
}

void sub_1E386C4C4()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C3D8, qword_1E42A6DE8);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_102_5(inited, xmmword_1E4299720);
  v10 = sub_1E3280A90(0, &qword_1ECF2C3E0, 0x1E6958608);
  inited[4].n128_u64[0] = v10;
  inited[2].n128_u64[1] = v4;
  inited[4].n128_u8[8] = 1;
  inited[6].n128_u64[1] = MEMORY[0x1E69E6530];
  inited[5].n128_u64[0] = v2;
  v13 = sub_1E3879330(v10, v11, v12);
  v14 = v4;
  v15 = sub_1E4205CB4();
  sub_1E324FBDC();
  OUTLINED_FUNCTION_183_1();
  v16 = OUTLINED_FUNCTION_101();
  v17(v16);
  v18 = v14;
  v19 = sub_1E41FFC94();
  v20 = sub_1E42067E4();

  if (os_log_type_enabled(v19, v20))
  {
    v28 = v13;
    v21 = OUTLINED_FUNCTION_49_0();
    v22 = OUTLINED_FUNCTION_160();
    *v21 = 138412546;
    *(v21 + 4) = v18;
    *v22 = v18;
    *(v21 + 12) = 2048;
    *(v21 + 14) = v2;
    v23 = v18;
    _os_log_impl(&dword_1E323F000, v19, v20, "MultiPlayerViewController:: did pinch player view controller %@ - %ld", v21, 0x16u);
    sub_1E325F6F0(v22, &unk_1ECF28E30, &qword_1E429E820);
    OUTLINED_FUNCTION_6_0();
    v13 = v28;
    OUTLINED_FUNCTION_6_0();
  }

  (*(v7 + 8))(v0, v5);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v25 = Strong;
    v26 = *(Strong + OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_stateMachine);

    OUTLINED_FUNCTION_117_2(3);
    OUTLINED_FUNCTION_21();
    (*(v27 + 160))(&v30, v29, v15, &unk_1F5D8ADC8, v13, &off_1F5D8AC18);

    sub_1E325F6F0(v29, &unk_1ECF296E0, &unk_1E4298030);
  }

  else
  {
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E386C7BC()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v49 = v2;
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v47 = v8 - v7;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v45 = v5;
    v46 = v3;
    v48 = Strong;
    OUTLINED_FUNCTION_21();
    v11 = (*(v10 + 264))();
    v12 = MEMORY[0x1E69E7CC0];
    v50[0] = MEMORY[0x1E69E7CC0];
    v13 = sub_1E32AE9B0(v11);
    for (i = 0; v13 != i; ++i)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x1E6911E60](i, v11);
      }

      else
      {
        if (i >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }

        v15 = *(v11 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
        return;
      }

      if (v15 == v49)
      {
      }

      else
      {
        sub_1E4207544();
        sub_1E4207584();
        OUTLINED_FUNCTION_35_5();
        sub_1E4207594();
        sub_1E4207554();
      }
    }

    v16 = v50[0];
    v50[0] = v12;
    v17 = sub_1E32AE9B0(v16);
    v18 = 0;
    while (v17 != v18)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x1E6911E60](v18, v16);
      }

      else
      {
        if (v18 >= *(v16 + 16))
        {
          goto LABEL_39;
        }

        v19 = *(v16 + 8 * v18 + 32);
      }

      v20 = v19;
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_38;
      }

      OUTLINED_FUNCTION_21();
      v23 = (*(v22 + 920))(v20);

      ++v18;
      if (v23)
      {
        MEMORY[0x1E6910BF0]();
        if (*((v50[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1E42062F4();
        }

        OUTLINED_FUNCTION_35_5();
        sub_1E4206324();
        v12 = v50[0];
        v18 = v21;
      }
    }

    v24 = sub_1E32AE9B0(v12);
    v25 = 0;
    v26 = v3;
    while (v24 != v25)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x1E6911E60](v25, v12);
      }

      else
      {
        if (v25 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_41;
        }

        v27 = *(v12 + 8 * v25 + 32);
      }

      v28 = v27;
      if (__OFADD__(v25, 1))
      {
        goto LABEL_40;
      }

      sub_1E3FD93C0();
      OUTLINED_FUNCTION_21();
      (*(v29 + 680))(1, 1);

      ++v25;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C3D8, qword_1E42A6DE8);
    inited = swift_initStackObject();
    OUTLINED_FUNCTION_102_5(inited, xmmword_1E4299720);
    v31 = sub_1E3280A90(0, &qword_1ECF2C3E0, 0x1E6958608);
    inited[4].n128_u64[0] = v31;
    inited[2].n128_u64[1] = v49;
    inited[4].n128_u8[8] = 1;
    inited[6].n128_u64[1] = MEMORY[0x1E69E6530];
    inited[5].n128_u64[0] = v1;
    v34 = sub_1E3879330(v31, v32, v33);
    v35 = v49;
    v36 = sub_1E4205CB4();
    sub_1E324FBDC();
    OUTLINED_FUNCTION_0_11();
    v37(v47);
    v38 = v35;
    v39 = sub_1E41FFC94();
    v40 = sub_1E42067E4();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = OUTLINED_FUNCTION_49_0();
      v42 = OUTLINED_FUNCTION_160();
      *v41 = 138412546;
      *(v41 + 4) = v38;
      *v42 = v38;
      *(v41 + 12) = 2048;
      *(v41 + 14) = v1;
      v43 = v38;
      _os_log_impl(&dword_1E323F000, v39, v40, "MultiPlayerViewController:: did select player view controller %@ - %ld", v41, 0x16u);
      sub_1E325F6F0(v42, &unk_1ECF28E30, &qword_1E429E820);
      v26 = v46;
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    (*(v45 + 8))(v47, v26);
    OUTLINED_FUNCTION_117_2(10);
    OUTLINED_FUNCTION_21();
    (*(v44 + 160))(&v51, v50, v36, &unk_1F5D8ADC8, v34, &off_1F5D8AC18);

    sub_1E325F6F0(v50, &unk_1ECF296E0, &unk_1E4298030);
  }

  OUTLINED_FUNCTION_25_2();
}

double sub_1E386CDC0(char a1)
{
  v2 = (a1 & 1) == 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_isStatusBarHidden) = v2;
  *(v1 + OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_isHomeIndicatorHidden) = v2;
  sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);
  OUTLINED_FUNCTION_4_0();
  v3 = swift_allocObject();
  OUTLINED_FUNCTION_83_1(v3);
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_197(v4);
  OUTLINED_FUNCTION_5_11();
  OUTLINED_FUNCTION_25();
  sub_1E3B02778();

  return result;
}

void sub_1E386CEA4()
{
  v1 = [v0 view];
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = v1;
  v3 = [objc_opt_self() blackColor];
  [v2 setBackgroundColor_];

  v4 = [v0 view];
  if (!v4)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v5 = v4;
  sub_1E386A170();
  OUTLINED_FUNCTION_178_0();
  [v5 insertSubview_atIndex_];
}

void sub_1E386CF88()
{
  OUTLINED_FUNCTION_93_1();
  v1 = v0;
  v3 = v2;
  v4 = OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_layout;
  type metadata accessor for MultiPlayerViewControllerLayout();
  *(v0 + v4) = sub_1E3E0CEEC();
  v18 = OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_fullscreenPlayerViewController;
  *(v0 + OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_fullscreenPlayerViewController) = 0;
  v5 = (v0 + OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_exitFullscreenCompletion);
  *v5 = 0;
  v5[1] = 0;
  v6 = v0 + OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_swappedPlayerIndices;
  *v6 = 0;
  *(v6 + 8) = 0;
  *(v6 + 16) = 1;
  *(v0 + OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController____lazy_storage___metricsRecorder) = 0;
  v20 = OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController____lazy_storage___gestureManager;
  *(v0 + OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController____lazy_storage___gestureManager) = 0;
  v22 = OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController____lazy_storage___backgroundView;
  *(v0 + OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController____lazy_storage___backgroundView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_dimmingTimeout) = 0x4014000000000000;
  *(v0 + OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_inactivityTask) = 0;
  v7 = OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_ghostPlayerViewController;
  v15 = OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_ghostPlayerViewController;
  v8 = [objc_allocWithZone(MEMORY[0x1E6958608]) init];

  *(v1 + v7) = v8;
  v9 = (v1 + OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_presentationCompletion);
  *v9 = 0;
  v9[1] = 0;
  v10 = OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_delegate;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_isDetailsViewControllerVisible) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_isStatusBarHidden) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_isHomeIndicatorHidden) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController____lazy_storage___headerPresenter) = 0;
  v11 = OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController____lazy_storage___headerView;
  *(v1 + OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController____lazy_storage___headerView) = 0;
  v12 = OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController____lazy_storage___grabberView;
  *(v1 + OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController____lazy_storage___grabberView) = 0;
  v13 = OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_detailsViewController;
  *(v1 + OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_detailsViewController) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_isDetailsContentsLoaded) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_presentationPlayerViewControllers) = 0;
  v16 = OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_topConstraint;
  *(v1 + OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_topConstraint) = 0;
  v17 = OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_bottomConstraint;
  *(v1 + OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_bottomConstraint) = 0;
  v19 = OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_leadingConstraint;
  *(v1 + OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_leadingConstraint) = 0;
  v21 = OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_trailingConstraint;
  *(v1 + OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_trailingConstraint) = 0;
  v14 = OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_grabberBottomConstraint;
  *(v1 + OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_grabberBottomConstraint) = 0;

  sub_1E37FAED8(*v5, v5[1]);

  sub_1E37FAED8(*v9, v9[1]);
  sub_1E32AF6F8(v1 + v10);

  type metadata accessor for MultiPlayerViewController();
  swift_deallocPartialClassInstance();
  OUTLINED_FUNCTION_94_0();
}

void sub_1E386D284()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for MultiPlayerViewController();
  objc_msgSendSuper2(&v7, sel_viewDidLayoutSubviews);
  v1 = sub_1E386A170();
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    [v2 bounds];
    OUTLINED_FUNCTION_3();

    v4 = OUTLINED_FUNCTION_6();
    [v5 v6];
  }

  else
  {
    __break(1u);
  }
}

void sub_1E386D370(char a1)
{
  v8.receiver = v1;
  v8.super_class = type metadata accessor for MultiPlayerViewController();
  objc_msgSendSuper2(&v8, sel_viewWillAppear_, a1 & 1);
  if (*(v1 + OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_initiallyShowsDetails) == 1)
  {
    v3 = OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_needsShowDetailsBeforeAppear;
    if (*(v1 + OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_needsShowDetailsBeforeAppear) == 1)
    {
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_25();
      v4();
      OUTLINED_FUNCTION_169();
      sub_1E3874870(v5, v6, v7);
      *(v1 + v3) = 0;
    }
  }
}

uint64_t sub_1E386D478(char a1)
{
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v18.receiver = v1;
  v18.super_class = type metadata accessor for MultiPlayerViewController();
  objc_msgSendSuper2(&v18, sel_viewDidAppear_, a1 & 1);
  sub_1E3874C44();
  OUTLINED_FUNCTION_26_3();
  (*((*MEMORY[0x1E69E7D40] & v10) + 0x4D0))();
  v11 = sub_1E324FBDC();
  (*(v5 + 16))(v9, v11, v3);
  v12 = sub_1E41FFC94();
  v13 = sub_1E42067D4();
  if (OUTLINED_FUNCTION_104(v13))
  {
    v14 = OUTLINED_FUNCTION_125_0();
    *v14 = 0;
    _os_log_impl(&dword_1E323F000, v12, v13, "MultiPlayerViewController:: entered multiview", v14, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  v15 = OUTLINED_FUNCTION_13_8();
  return v16(v15);
}

uint64_t sub_1E386D650(char a1)
{
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v15.receiver = v1;
  v15.super_class = type metadata accessor for MultiPlayerViewController();
  objc_msgSendSuper2(&v15, sel_viewDidDisappear_, a1 & 1);
  v10 = sub_1E324FBDC();
  (*(v5 + 16))(v9, v10, v3);
  v11 = sub_1E41FFC94();
  v12 = sub_1E42067D4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = OUTLINED_FUNCTION_125_0();
    *v13 = 0;
    _os_log_impl(&dword_1E323F000, v11, v12, "MultiPlayerViewController:: exited multiview", v13, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  return (*(v5 + 8))(v9, v3);
}

void sub_1E386D7EC()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C498, &qword_1E42A6E80);
  OUTLINED_FUNCTION_8_0(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_106_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_26_2();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  OUTLINED_FUNCTION_17_2(v12);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v14 = OUTLINED_FUNCTION_71_9();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v14);
  sub_1E3879D88();
  sub_1E4206434();
  OUTLINED_FUNCTION_50();

  v15 = sub_1E4206424();
  v16 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v17 = (v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E85E0];
  *(v18 + 16) = v15;
  *(v18 + 24) = v19;
  v20 = sub_1E3879BB8(v0, v18 + v16);
  v21 = (v18 + v17);
  *v21 = v5;
  v21[1] = v3;
  OUTLINED_FUNCTION_77_4(v20, v22, v23, &unk_1E42A6E90);

  OUTLINED_FUNCTION_25_2();
}

void sub_1E386D97C()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_155();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C558, &unk_1E42C0DE0);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_106_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_26_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_71_9();
  v6 = OUTLINED_FUNCTION_43_13(v5);
  v7(v6);
  sub_1E4206434();
  OUTLINED_FUNCTION_50();

  sub_1E4206424();
  OUTLINED_FUNCTION_28_23();
  v8 = swift_allocObject();
  v9 = OUTLINED_FUNCTION_54_6(v8, MEMORY[0x1E69E85E0]);
  v11 = v10(v9);
  v12 = (v8 + v1);
  *v12 = sub_1E387F1D8;
  v12[1] = v0;
  OUTLINED_FUNCTION_77_4(v11, v13, v14, &unk_1E42A6F28);

  OUTLINED_FUNCTION_25_2();
}

void sub_1E386DAE0()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_155();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34700, &qword_1E42A6EF8);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_106_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_26_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_71_9();
  v6 = OUTLINED_FUNCTION_43_13(v5);
  v7(v6);
  sub_1E4206434();
  OUTLINED_FUNCTION_50();

  sub_1E4206424();
  OUTLINED_FUNCTION_28_23();
  v8 = swift_allocObject();
  v9 = OUTLINED_FUNCTION_54_6(v8, MEMORY[0x1E69E85E0]);
  v11 = v10(v9);
  v12 = (v8 + v1);
  *v12 = sub_1E387EBD4;
  v12[1] = v0;
  OUTLINED_FUNCTION_77_4(v11, v13, v14, &unk_1E42A6F08);

  OUTLINED_FUNCTION_25_2();
}

void sub_1E386DC44()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_155();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C510, &qword_1E42A6ED0);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_106_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_26_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_71_9();
  v6 = OUTLINED_FUNCTION_43_13(v5);
  v7(v6);
  sub_1E4206434();
  OUTLINED_FUNCTION_50();

  sub_1E4206424();
  OUTLINED_FUNCTION_28_23();
  v8 = swift_allocObject();
  v9 = OUTLINED_FUNCTION_54_6(v8, MEMORY[0x1E69E85E0]);
  v11 = v10(v9);
  v12 = (v8 + v1);
  *v12 = sub_1E387E864;
  v12[1] = v0;
  OUTLINED_FUNCTION_77_4(v11, v13, v14, &unk_1E42A6EE8);

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E386DDA8()
{
  OUTLINED_FUNCTION_24();
  v0[10] = v1;
  v0[11] = v2;
  v0[9] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C488, &qword_1E42A6E70);
  v0[12] = v4;
  OUTLINED_FUNCTION_8_0(v4);
  v0[13] = v5;
  v0[14] = OUTLINED_FUNCTION_86_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C4B8, &qword_1E42A6E98);
  v0[15] = v6;
  OUTLINED_FUNCTION_17_2(v6);
  v0[16] = OUTLINED_FUNCTION_86_0();
  v7 = sub_1E4206434();
  v0[18] = OUTLINED_FUNCTION_162_2(v7);
  OUTLINED_FUNCTION_50();
  v8 = sub_1E42063B4();
  OUTLINED_FUNCTION_133_3(v8, v9);
  v10 = OUTLINED_FUNCTION_151();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1E386DEB0()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 96);
  v4 = *(v0 + 72);
  v5 = OUTLINED_FUNCTION_101();
  v6(v5, v4, v3);
  OUTLINED_FUNCTION_64_9();
  sub_1E32752B0(v7, v8, v9, v10);
  OUTLINED_FUNCTION_183_1();
  sub_1E4206544();
  v11 = (v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C498, &qword_1E42A6E80) + 36));
  v12 = *v11;
  *(v0 + 168) = *v11;
  v13 = v11[1];
  *(v0 + 176) = v13;
  v14 = *(v2 + 40);
  *(v0 + 28) = v14;
  v15 = (v1 + v14);
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = (v1 + *(v2 + 36));
  *v16 = v12;
  v16[1] = v13;
  v17 = *v15;
  *(v0 + 26) = *(v15 + 8);
  *(v0 + 25) = 1;
  *(v0 + 184) = 0;
  *(v0 + 192) = v17;

  *(v0 + 200) = sub_1E4206424();
  v18 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v18, v19, v20);
}

uint64_t sub_1E386DFE0()
{
  OUTLINED_FUNCTION_27_2();
  if (*(v0 + 25))
  {
    v1 = OUTLINED_FUNCTION_16_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
    OUTLINED_FUNCTION_14_40(&qword_1ECF2C4C8);
    swift_task_alloc();
    OUTLINED_FUNCTION_33_3();
    *(v0 + 208) = v3;
    *v3 = v4;
    v3[1] = sub_1E386E11C;
    v5 = v0 + 16;
  }

  else
  {
    *(v0 + 48) = *(v0 + 184);
    v6 = OUTLINED_FUNCTION_16_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
    OUTLINED_FUNCTION_14_40(&qword_1ECF2C4C8);
    swift_task_alloc();
    OUTLINED_FUNCTION_33_3();
    *(v0 + 224) = v8;
    *v8 = v9;
    v5 = OUTLINED_FUNCTION_57_7(v8);
  }

  return MEMORY[0x1EEE6D8C8](v5);
}

uint64_t sub_1E386E11C()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v3 = v2;
  OUTLINED_FUNCTION_31();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7();
  *v6 = v5;
  *(v3 + 216) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_103_3();
  }

  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1E386E21C()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v3 = v2;
  OUTLINED_FUNCTION_31();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7();
  *v6 = v5;
  *(v3 + 232) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_103_3();
  }

  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1E386E31C()
{
  OUTLINED_FUNCTION_24();
  if (*(v0 + 40))
  {
    v1 = *(v0 + 26);
    v2 = *(v0 + 200);
    v3 = *(v0 + 128) + *(v0 + 28);
    *v3 = *(v0 + 192);
    *(v3 + 8) = v1;
    if (v2)
    {
      swift_getObjectType();
      sub_1E42063B4();
      OUTLINED_FUNCTION_142_2();
    }

    else
    {
      OUTLINED_FUNCTION_158_1();
    }

    return MEMORY[0x1EEE6DFA0](sub_1E386E728, v5, v4);
  }

  else
  {
    v6 = *(v0 + 168);
    v7 = *(v0 + 32);
    *(v0 + 240) = v7;
    *(v0 + 64) = v7;
    v11 = (v6 + *v6);
    swift_task_alloc();
    OUTLINED_FUNCTION_33_3();
    *(v0 + 248) = v8;
    *v8 = v9;
    v8[1] = sub_1E386E520;

    return v11(v0 + 48, v0 + 64);
  }
}

uint64_t sub_1E386E498()
{
  OUTLINED_FUNCTION_24();
  v0[33] = v0[29];
  if (v0[25])
  {
    swift_getObjectType();
    sub_1E42063B4();
    OUTLINED_FUNCTION_142_2();
  }

  else
  {
    OUTLINED_FUNCTION_158_1();
  }

  return MEMORY[0x1EEE6DFA0](sub_1E386EA50, v2, v1);
}

uint64_t sub_1E386E520()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_31();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 27) = v3;

  v4 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1E386E60C()
{
  OUTLINED_FUNCTION_27_2();
  if (*(v0 + 27) == 1)
  {
    v1 = OUTLINED_FUNCTION_16_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
    OUTLINED_FUNCTION_14_40(&qword_1ECF2C4C8);
    swift_task_alloc();
    OUTLINED_FUNCTION_33_3();
    *(v0 + 224) = v3;
    *v3 = v4;
    v5 = OUTLINED_FUNCTION_57_7(v3);

    return MEMORY[0x1EEE6D8C8](v5);
  }

  else
  {
    if (*(v0 + 200))
    {
      swift_getObjectType();
      sub_1E42063B4();
      OUTLINED_FUNCTION_142_2();
    }

    else
    {
      OUTLINED_FUNCTION_158_1();
    }

    return MEMORY[0x1EEE6DFA0](sub_1E386E810, v7, v6);
  }
}

uint64_t sub_1E386E728()
{
  OUTLINED_FUNCTION_24();

  v1 = *(v0 + 152);
  v2 = *(v0 + 160);

  return MEMORY[0x1EEE6DFA0](sub_1E386E788, v1, v2);
}

uint64_t sub_1E386E788()
{
  OUTLINED_FUNCTION_24();

  sub_1E325F6F0(*(v0 + 128), &qword_1ECF2C4B8, &qword_1E42A6E98);

  OUTLINED_FUNCTION_15_12();

  return v1();
}

uint64_t sub_1E386E810()
{
  OUTLINED_FUNCTION_24();

  *(v0 + 272) = *(v0 + 240);
  v1 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1E386E874()
{
  OUTLINED_FUNCTION_24();
  v1 = *(v0 + 200);
  *(v0 + 256) = *(v0 + 16);
  *(v0 + 41) = *(v0 + 24);
  if (v1)
  {
    swift_getObjectType();
    sub_1E42063B4();
    OUTLINED_FUNCTION_142_2();
  }

  else
  {
    OUTLINED_FUNCTION_158_1();
  }

  return MEMORY[0x1EEE6DFA0](sub_1E386E904, v3, v2);
}

uint64_t sub_1E386E904()
{
  OUTLINED_FUNCTION_24();

  v1 = *(v0 + 152);
  v2 = *(v0 + 160);

  return MEMORY[0x1EEE6DFA0](sub_1E386E964, v1, v2);
}

uint64_t sub_1E386E964()
{
  OUTLINED_FUNCTION_27_2();
  v1 = *(v0 + 256);
  if (*(v0 + 41))
  {
    v2 = *(v0 + 28);
    v3 = *(v0 + 128);

    v4 = v3 + v2;
    *v4 = v1;
    *(v4 + 8) = 1;
    sub_1E325F6F0(*(v0 + 128), &qword_1ECF2C4B8, &qword_1E42A6E98);

    OUTLINED_FUNCTION_15_12();

    return v5();
  }

  else
  {
    *(v0 + 272) = v1;
    v7 = OUTLINED_FUNCTION_11_1();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }
}

uint64_t sub_1E386EA50()
{
  OUTLINED_FUNCTION_27_2();
  v0[7] = v0[33];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480, &unk_1E42A9410);
  swift_dynamicCast();
  swift_willThrowTypedImpl();

  v1 = v0[19];
  v2 = v0[20];

  return MEMORY[0x1EEE6DFA0](sub_1E386EB08, v1, v2);
}

uint64_t sub_1E386EB08()
{
  OUTLINED_FUNCTION_27_2();

  if (!sub_1E4207974())
  {
    OUTLINED_FUNCTION_206(MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
  }

  sub_1E325F6F0(*(v0 + 128), &qword_1ECF2C4B8, &qword_1E42A6E98);

  OUTLINED_FUNCTION_54();

  return v1();
}

uint64_t sub_1E386EBC8()
{
  OUTLINED_FUNCTION_24();
  v0[33] = v0[27];
  if (v0[25])
  {
    swift_getObjectType();
    sub_1E42063B4();
    OUTLINED_FUNCTION_142_2();
  }

  else
  {
    OUTLINED_FUNCTION_158_1();
  }

  return MEMORY[0x1EEE6DFA0](sub_1E386EA50, v2, v1);
}

uint64_t sub_1E386EC50()
{
  OUTLINED_FUNCTION_24();
  *(v0 + 280) = OUTLINED_FUNCTION_203(v1);
  OUTLINED_FUNCTION_50();
  sub_1E42063B4();
  OUTLINED_FUNCTION_109();
  v2 = OUTLINED_FUNCTION_42_5();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1E386ECC0()
{
  OUTLINED_FUNCTION_27_2();
  v7 = v0;
  v1 = v0[34];
  v2 = v0[10];

  v6 = v1;
  v2(&v6);
  v3 = v0[19];
  v4 = v0[20];

  return MEMORY[0x1EEE6DFA0](sub_1E386ED3C, v3, v4);
}

uint64_t sub_1E386ED3C()
{
  OUTLINED_FUNCTION_24();
  v1 = *(v0 + 272);
  *(v0 + 25) = 0;
  *(v0 + 184) = v1;
  *(v0 + 192) = v1;
  *(v0 + 200) = sub_1E4206424();
  v2 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1E386EDA8()
{
  OUTLINED_FUNCTION_24();
  v0[14] = v1;
  v0[15] = v2;
  v0[13] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C558, &unk_1E42C0DE0);
  v0[16] = v4;
  OUTLINED_FUNCTION_8_0(v4);
  v0[17] = v5;
  v0[18] = OUTLINED_FUNCTION_86_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C560, &qword_1E42A6F30);
  v0[19] = v6;
  OUTLINED_FUNCTION_8_0(v6);
  v0[20] = v7;
  v0[21] = OUTLINED_FUNCTION_86_0();
  v0[22] = sub_1E4206434();
  v0[23] = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  v0[24] = sub_1E42063B4();
  v0[25] = v8;
  v9 = OUTLINED_FUNCTION_151();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1E386EEEC()
{
  OUTLINED_FUNCTION_27_2();
  v1 = OUTLINED_FUNCTION_130_3();
  v2(v1);
  OUTLINED_FUNCTION_81_4(&qword_1ECF2C568, &qword_1ECF2C558, &unk_1E42C0DE0);
  OUTLINED_FUNCTION_111_1();
  *(v0 + 208) = sub_1E4206424();
  OUTLINED_FUNCTION_7_60(&qword_1ECF2C570, &qword_1ECF2C560, &qword_1E42A6F30);
  swift_task_alloc();
  OUTLINED_FUNCTION_33_3();
  *(v0 + 216) = v3;
  *v3 = v4;
  OUTLINED_FUNCTION_56_9(v3);
  OUTLINED_FUNCTION_34_22();

  return MEMORY[0x1EEE6D8D0](v5);
}

uint64_t sub_1E386EFE4()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_179();
  v3 = *v2;
  OUTLINED_FUNCTION_7();
  *v4 = v3;

  OUTLINED_FUNCTION_92_3();

  OUTLINED_FUNCTION_92_3();
  v6 = *(v5 + 200);
  v7 = *(v1 + 192);
  if (v0)
  {
    v8 = sub_1E386F204;
  }

  else
  {
    v8 = sub_1E386F120;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1E386F120()
{
  OUTLINED_FUNCTION_27_2();
  if (*(v0 + 56))
  {
    v1 = OUTLINED_FUNCTION_115_0();
    v2(v1);

    OUTLINED_FUNCTION_15_12();

    return v3();
  }

  else
  {
    v5 = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
    *(v0 + 224) = vextq_s8(*(v0 + 40), *(v0 + 40), 8uLL);
    *(v0 + 240) = v5;
    *(v0 + 256) = *(v0 + 16);
    v6 = OUTLINED_FUNCTION_11_1();

    return MEMORY[0x1EEE6DFA0](v6, v7, v8);
  }
}

uint64_t sub_1E386F204()
{
  OUTLINED_FUNCTION_27_2();

  if (!sub_1E4207974())
  {
    OUTLINED_FUNCTION_206(MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
  }

  v0 = OUTLINED_FUNCTION_115_0();
  v1(v0);

  OUTLINED_FUNCTION_54();

  return v2();
}

uint64_t sub_1E386F2BC()
{
  OUTLINED_FUNCTION_24();
  *(v0 + 264) = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  sub_1E42063B4();
  OUTLINED_FUNCTION_109();
  v1 = OUTLINED_FUNCTION_42_5();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1E386F334()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 112);
  v6 = *(v0 + 240);
  v7 = *(v0 + 224);

  *(v0 + 64) = v1;
  *(v0 + 88) = vextq_s8(v7, v7, 8uLL);
  *(v0 + 72) = vextq_s8(v6, v6, 8uLL);
  v2(v0 + 64);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);

  return MEMORY[0x1EEE6DFA0](sub_1E386F3D0, v3, v4);
}

uint64_t sub_1E386F3D0()
{
  OUTLINED_FUNCTION_27_2();
  *(v0 + 208) = sub_1E4206424();
  OUTLINED_FUNCTION_7_60(&qword_1ECF2C570, &qword_1ECF2C560, &qword_1E42A6F30);
  swift_task_alloc();
  OUTLINED_FUNCTION_33_3();
  *(v0 + 216) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_56_9(v1);
  OUTLINED_FUNCTION_34_22();

  return MEMORY[0x1EEE6D8D0](v3);
}

uint64_t sub_1E386F488()
{
  OUTLINED_FUNCTION_24();
  v0[9] = v1;
  v0[10] = v2;
  v0[8] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34700, &qword_1E42A6EF8);
  v0[11] = v4;
  OUTLINED_FUNCTION_8_0(v4);
  v0[12] = v5;
  v0[13] = OUTLINED_FUNCTION_86_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C540, &unk_1E42A6F10);
  v0[14] = v6;
  OUTLINED_FUNCTION_8_0(v6);
  v0[15] = v7;
  v0[16] = OUTLINED_FUNCTION_86_0();
  v8 = sub_1E4206434();
  v0[18] = OUTLINED_FUNCTION_162_2(v8);
  OUTLINED_FUNCTION_50();
  v9 = sub_1E42063B4();
  OUTLINED_FUNCTION_133_3(v9, v10);
  v11 = OUTLINED_FUNCTION_151();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1E386F5B8()
{
  OUTLINED_FUNCTION_27_2();
  v1 = OUTLINED_FUNCTION_130_3();
  v2(v1);
  OUTLINED_FUNCTION_81_4(&qword_1ECF2C548, &qword_1ECF34700, &qword_1E42A6EF8);
  OUTLINED_FUNCTION_111_1();
  *(v0 + 168) = sub_1E4206424();
  OUTLINED_FUNCTION_7_60(&qword_1ECF2C550, &qword_1ECF2C540, &unk_1E42A6F10);
  swift_task_alloc();
  OUTLINED_FUNCTION_33_3();
  *(v0 + 176) = v3;
  *v3 = v4;
  OUTLINED_FUNCTION_58_10(v3);
  OUTLINED_FUNCTION_34_22();

  return MEMORY[0x1EEE6D8D0](v5);
}

uint64_t sub_1E386F6B0()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_179();
  v3 = *v2;
  OUTLINED_FUNCTION_7();
  *v4 = v3;

  OUTLINED_FUNCTION_92_3();

  OUTLINED_FUNCTION_92_3();
  v6 = *(v5 + 160);
  v7 = *(v1 + 152);
  if (v0)
  {
    v8 = sub_1E386F8CC;
  }

  else
  {
    v8 = sub_1E386F7EC;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1E386F7EC()
{
  OUTLINED_FUNCTION_27_2();
  v1 = *(v0 + 16);
  *(v0 + 184) = v1;
  if (v1)
  {
    *(v0 + 33) = *(v0 + 32);
    *(v0 + 192) = *(v0 + 24);
    v2 = OUTLINED_FUNCTION_11_1();

    return MEMORY[0x1EEE6DFA0](v2, v3, v4);
  }

  else
  {
    v5 = OUTLINED_FUNCTION_115_0();
    v6(v5);

    OUTLINED_FUNCTION_15_12();

    return v7();
  }
}

uint64_t sub_1E386F8CC()
{
  OUTLINED_FUNCTION_27_2();

  if (!sub_1E4207974())
  {
    OUTLINED_FUNCTION_206(MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
  }

  v0 = OUTLINED_FUNCTION_115_0();
  v1(v0);

  OUTLINED_FUNCTION_54();

  return v2();
}

uint64_t sub_1E386F984()
{
  OUTLINED_FUNCTION_24();
  *(v0 + 200) = OUTLINED_FUNCTION_203(v1);
  OUTLINED_FUNCTION_50();
  sub_1E42063B4();
  OUTLINED_FUNCTION_109();
  v2 = OUTLINED_FUNCTION_42_5();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1E386F9F4()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 33);
  v3 = *(v0 + 184);
  v4 = *(v0 + 72);

  *(v0 + 40) = v3;
  *(v0 + 48) = v1;
  *(v0 + 56) = v2 & 1;
  v4(v0 + 40);
  v5 = *(v0 + 152);
  v6 = *(v0 + 160);

  return MEMORY[0x1EEE6DFA0](sub_1E386FA94, v5, v6);
}

uint64_t sub_1E386FA94()
{
  OUTLINED_FUNCTION_27_2();

  *(v0 + 168) = sub_1E4206424();
  OUTLINED_FUNCTION_7_60(&qword_1ECF2C550, &qword_1ECF2C540, &unk_1E42A6F10);
  swift_task_alloc();
  OUTLINED_FUNCTION_33_3();
  *(v0 + 176) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_58_10(v1);
  OUTLINED_FUNCTION_34_22();

  return MEMORY[0x1EEE6D8D0](v3);
}

uint64_t sub_1E386FB54()
{
  OUTLINED_FUNCTION_24();
  v0[3] = v1;
  v0[4] = v2;
  v0[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C510, &qword_1E42A6ED0);
  v0[5] = v4;
  OUTLINED_FUNCTION_8_0(v4);
  v0[6] = v5;
  v0[7] = OUTLINED_FUNCTION_86_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C520, &qword_1E42A6EF0);
  v0[8] = v6;
  OUTLINED_FUNCTION_8_0(v6);
  v0[9] = v7;
  v0[10] = OUTLINED_FUNCTION_86_0();
  v0[11] = sub_1E4206434();
  v0[12] = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  v0[13] = sub_1E42063B4();
  v0[14] = v8;
  v9 = OUTLINED_FUNCTION_151();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1E386FC98()
{
  OUTLINED_FUNCTION_27_2();
  v1 = OUTLINED_FUNCTION_130_3();
  v2(v1);
  sub_1E32752B0(&qword_1ECF2C528, &qword_1ECF2C510, &qword_1E42A6ED0, MEMORY[0x1E69E8878]);
  OUTLINED_FUNCTION_111_1();
  *(v0 + 120) = sub_1E4206424();
  OUTLINED_FUNCTION_80_3(&unk_1ECF2C530, &qword_1ECF2C520, &qword_1E42A6EF0);
  swift_task_alloc();
  OUTLINED_FUNCTION_33_3();
  *(v0 + 128) = v3;
  *v3 = v4;
  OUTLINED_FUNCTION_59_5(v3);
  OUTLINED_FUNCTION_34_22();

  return MEMORY[0x1EEE6D8D0](v5);
}

uint64_t sub_1E386FDA4()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_179();
  v3 = *v2;
  OUTLINED_FUNCTION_7();
  *v4 = v3;

  OUTLINED_FUNCTION_92_3();

  OUTLINED_FUNCTION_92_3();
  v6 = *(v5 + 112);
  v7 = *(v1 + 104);
  if (v0)
  {
    v8 = sub_1E386FFA8;
  }

  else
  {
    v8 = sub_1E386FEE0;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1E386FEE0()
{
  OUTLINED_FUNCTION_27_2();
  if (*(v0 + 144))
  {
    v1 = OUTLINED_FUNCTION_115_0();
    v2(v1);

    OUTLINED_FUNCTION_15_12();

    return v3();
  }

  else
  {
    v5 = OUTLINED_FUNCTION_11_1();

    return MEMORY[0x1EEE6DFA0](v5, v6, v7);
  }
}

uint64_t sub_1E386FFA8()
{
  OUTLINED_FUNCTION_27_2();

  if (!sub_1E4207974())
  {
    OUTLINED_FUNCTION_206(MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
  }

  v0 = OUTLINED_FUNCTION_115_0();
  v1(v0);

  OUTLINED_FUNCTION_54();

  return v2();
}

uint64_t sub_1E3870060()
{
  OUTLINED_FUNCTION_24();
  *(v0 + 136) = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  sub_1E42063B4();
  OUTLINED_FUNCTION_109();
  v1 = OUTLINED_FUNCTION_42_5();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1E38700D8()
{
  OUTLINED_FUNCTION_24();
  v1 = v0[3];

  v1(v2);
  v3 = v0[13];
  v4 = v0[14];

  return MEMORY[0x1EEE6DFA0](sub_1E3870144, v3, v4);
}

uint64_t sub_1E3870144()
{
  OUTLINED_FUNCTION_27_2();
  *(v0 + 120) = sub_1E4206424();
  OUTLINED_FUNCTION_80_3(&unk_1ECF2C530, &qword_1ECF2C520, &qword_1E42A6EF0);
  swift_task_alloc();
  OUTLINED_FUNCTION_33_3();
  *(v0 + 128) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_59_5(v1);
  OUTLINED_FUNCTION_34_22();

  return MEMORY[0x1EEE6D8D0](v3);
}

uint64_t sub_1E38701FC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C558, &unk_1E42C0DE0);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_19_2();
  v1 = sub_1E386A094();
  v2 = OUTLINED_FUNCTION_144_2();
  v3(v2);

  OUTLINED_FUNCTION_4_0();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_83_1(v4);
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_2_4();
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1E387ED78;
  *(v5 + 24) = v1;
  sub_1E386D97C();

  v6 = OUTLINED_FUNCTION_13_8();
  return v7(v6);
}

void sub_1E3870360(double a1, double a2, double a3)
{
  v6 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v8 = (*(v7 + 576))();
  if (v8)
  {
    [v8 detailsViewHeightForMultiPlayerViewController_];
    v10 = v9;
    swift_unknownObjectRelease();
    v11 = a2 + a3;
  }

  else
  {
    v11 = a2 + a3;
    v10 = 0.0;
  }

  if (v11 < 0.0 && v11 > -(v10 + 40.0))
  {
    [*(v3 + OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_bottomConstraint) setConstant_];
    OUTLINED_FUNCTION_26_3();
    v13 = *((*v6 & v12) + 0x260);
    v14 = a2 / v10;
    v15 = v13();
    v16 = -v14;
    if (v15)
    {
      v16 = v14;
    }

    if (v16 > 1.0)
    {
      v16 = 1.0;
    }

    v17 = v16 > 0.0 ? v16 : 0.0;
    v18 = OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_detailsViewController;
    v19 = *(v3 + OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_detailsViewController);
    if (v19)
    {
      v20 = [v19 view];
      if (v20)
      {
        v21 = v20;
        [v20 setHidden_];

        v22 = *(v3 + v18);
        if (!v22)
        {
          return;
        }

        v25 = [v22 view];
        if (v25)
        {
          v23 = v13();
          v24 = 1.0 - v17;
          if ((v23 & 1) == 0)
          {
            v24 = v17;
          }

          [v25 setAlpha_];

          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }
  }
}

uint64_t sub_1E387057C(double a1, double a2, double a3, double a4, double a5)
{
  OUTLINED_FUNCTION_6_41();
  if ((*(v8 + 608))())
  {
    if (a5 <= a2 || a4 > 200.0)
    {
LABEL_12:
      v10 = 8;
      goto LABEL_13;
    }
  }

  else if (-a5 < a2 && a4 >= -200.0)
  {
    goto LABEL_12;
  }

  v10 = 7;
LABEL_13:
  v15 = v10;
  OUTLINED_FUNCTION_116_0();
  OUTLINED_FUNCTION_6_41();
  (*(v12 + 152))(&v15, v14, 0);
  return sub_1E325F6F0(v14, &unk_1ECF296E0, &unk_1E4298030);
}

uint64_t sub_1E3870694()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34700, &qword_1E42A6EF8);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_19_2();
  v1 = sub_1E386A094();
  v2 = OUTLINED_FUNCTION_144_2();
  v3(v2);

  OUTLINED_FUNCTION_4_0();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_83_1(v4);
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_2_4();
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1E387EBCC;
  *(v5 + 24) = v1;
  sub_1E386DAE0();

  v6 = OUTLINED_FUNCTION_13_8();
  return v7(v6);
}

void sub_1E38707C0(void *a1, char a2, uint64_t a3, CGFloat a4)
{
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    if (a4 >= 0.9)
    {
      if (a2)
      {
        sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);
        OUTLINED_FUNCTION_4_0();
        *(swift_allocObject() + 16) = a1;
        OUTLINED_FUNCTION_4_0();
        *(swift_allocObject() + 16) = a1;
        v27 = a1;
        OUTLINED_FUNCTION_5_11();
        sub_1E3B02648();
      }

      else
      {
        [a1 setShowsPlaybackControls_];
        v28 = [a1 view];
        if (!v28)
        {
          __break(1u);
          return;
        }

        v29 = v28;
        CGAffineTransformMakeScale(&v30, a4, a4);
        [v29 setTransform_];
      }
    }

    else
    {
      sub_1E324FBDC();
      OUTLINED_FUNCTION_51_4();
      v10 = OUTLINED_FUNCTION_123_3();
      v11(v10);
      v12 = sub_1E41FFC94();
      v13 = sub_1E42067E4();
      if (OUTLINED_FUNCTION_77_3(v13))
      {
        v14 = OUTLINED_FUNCTION_125_0();
        OUTLINED_FUNCTION_168_2(v14);
        OUTLINED_FUNCTION_108_1(&dword_1E323F000, v15, v16, "MultiPlayerViewController:: dismissing fullscreen from a pinch");
        OUTLINED_FUNCTION_6_0();
      }

      v17 = OUTLINED_FUNCTION_127_2();
      v18(v17);
      OUTLINED_FUNCTION_36_3();
      v19 = MEMORY[0x1E69E7D40];
      if ((*((*MEMORY[0x1E69E7D40] & v20) + 0x240))())
      {
        v21 = v9;
        v22 = OUTLINED_FUNCTION_123_3();
        [v22 v23];

        swift_unknownObjectRelease();
      }

      sub_1E386A094();
      OUTLINED_FUNCTION_71();
      OUTLINED_FUNCTION_64();
      v25 = (*(v24 + 368))();

      OUTLINED_FUNCTION_36_3();
      (*((*v19 & v26) + 0x4D0))();
    }
  }
}

uint64_t sub_1E3870B1C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C510, &qword_1E42A6ED0);
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_26_2();
  v5 = [objc_opt_self() defaultCenter];
  sub_1E4206BF4();

  sub_1E4206BE4();
  sub_1E3879E68(&qword_1ECF2C518, MEMORY[0x1E6969F08], MEMORY[0x1E6969F10]);
  sub_1E4207624();
  OUTLINED_FUNCTION_4_0();
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_105_2(v6);
  swift_unknownObjectWeakInit();
  sub_1E386DC44();

  return (*(v3 + 8))(v0, v1);
}

_OWORD *sub_1E3870D0C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_1E329504C(a1, v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    result = sub_1E3878F6C(v16, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
  }

  else
  {
    sub_1E325F6F0(a1, &unk_1ECF296E0, &unk_1E4298030);
    v8 = sub_1E3878E40(a2, v6, v7);
    if (v9)
    {
      v10 = v8;
      swift_isUniquelyReferenced_nonNull_native();
      v15 = *v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C4E8, &unk_1E42A6EB8);
      sub_1E4207644();
      v11 = sub_1E329504C((*(v15 + 56) + 32 * v10), v16);
      sub_1E3879330(v11, v12, v13);
      sub_1E4207664();
      *v2 = v15;
    }

    else
    {
      memset(v16, 0, sizeof(v16));
    }

    return sub_1E325F6F0(v16, &unk_1ECF296E0, &unk_1E4298030);
  }

  return result;
}

void sub_1E3870F24()
{
  OUTLINED_FUNCTION_31_1();
  v36 = v0;
  v35 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C3D8, qword_1E42A6DE8);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_102_5(inited, xmmword_1E4299720);
  v17 = sub_1E3280A90(0, &qword_1ECF2C3E0, 0x1E6958608);
  inited[4].n128_u64[0] = v17;
  inited[2].n128_u64[1] = v11;
  inited[4].n128_u8[8] = 3;
  inited[6].n128_u64[1] = MEMORY[0x1E69E6370];
  v34 = v9;
  inited[5].n128_u8[0] = v9;
  v20 = sub_1E3879330(v17, v18, v19);
  v21 = v11;
  v40 = sub_1E4205CB4();
  if (v7)
  {
    OUTLINED_FUNCTION_2_4();
    v22 = swift_allocObject();
    *(v22 + 16) = v7;
    *(v22 + 24) = v5;
    *(&v38 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C3F0, qword_1E42A0B50);
    *&v37 = v3;
    *(&v37 + 1) = v22;

    sub_1E3870D0C(&v37, 4);
  }

  sub_1E324FBDC();
  OUTLINED_FUNCTION_51_4();
  v23(v15);
  v24 = v21;
  v25 = sub_1E41FFC94();
  v26 = sub_1E42067E4();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = OUTLINED_FUNCTION_160();
    *v27 = 138412546;
    *(v27 + 4) = v24;
    *v28 = v24;
    *(v27 + 12) = 1024;
    *(v27 + 14) = v34 & 1;
    v29 = v24;
    _os_log_impl(&dword_1E323F000, v25, v26, v35, v27, 0x12u);
    sub_1E325F6F0(v28, &unk_1ECF28E30, &qword_1E429E820);
    OUTLINED_FUNCTION_79();
    OUTLINED_FUNCTION_6_0();
  }

  v30 = OUTLINED_FUNCTION_53();
  v31(v30);
  v39 = v36;
  v37 = 0u;
  v38 = 0u;
  v32 = v40;
  OUTLINED_FUNCTION_21();
  (*(v33 + 160))(&v39, &v37, v32, &unk_1F5D8ADC8, v20, &off_1F5D8AC18);

  sub_1E325F6F0(&v37, &unk_1ECF296E0, &unk_1E4298030);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E387130C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C3D8, qword_1E42A6DE8);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_102_5(inited, xmmword_1E4297BD0);
  v15 = sub_1E3280A90(0, &qword_1ECF2C3E0, 0x1E6958608);
  inited[4].n128_u64[0] = v15;
  inited[2].n128_u64[1] = v9;
  inited[4].n128_u8[8] = 1;
  inited[6].n128_u64[1] = MEMORY[0x1E69E6530];
  inited[5].n128_u64[0] = v7;
  inited[7].n128_u8[0] = 3;
  inited[9].n128_u64[0] = MEMORY[0x1E69E6370];
  inited[7].n128_u8[8] = v5;
  v18 = sub_1E3879330(v15, v16, v17);
  v19 = v9;
  v40 = sub_1E4205CB4();
  if (v3)
  {
    OUTLINED_FUNCTION_2_4();
    v20 = swift_allocObject();
    *(v20 + 16) = v3;
    *(v20 + 24) = v1;
    *(&v38 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C3F0, qword_1E42A0B50);
    *&v37 = sub_1E37D1918;
    *(&v37 + 1) = v20;

    sub_1E3870D0C(&v37, 4);
  }

  sub_1E324FBDC();
  OUTLINED_FUNCTION_183_1();
  (*(v21 + 16))(v13);
  v22 = v19;
  v23 = sub_1E41FFC94();
  v24 = sub_1E42067E4();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = OUTLINED_FUNCTION_160();
    *v25 = 138412546;
    *(v25 + 4) = v22;
    *v26 = v22;
    *(v25 + 12) = 1024;
    *(v25 + 14) = v5 & 1;
    v27 = v22;
    OUTLINED_FUNCTION_134_1();
    _os_log_impl(v28, v29, v30, v31, v32, 0x12u);
    sub_1E325F6F0(v26, &unk_1ECF28E30, &qword_1E429E820);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_79();
  }

  v33 = OUTLINED_FUNCTION_74();
  v34(v33);
  v39 = 2;
  v38 = 0u;
  v37 = 0u;
  v35 = v40;
  OUTLINED_FUNCTION_21();
  (*(v36 + 160))(&v39, &v37, v35, &unk_1F5D8ADC8, v18, &off_1F5D8AC18);

  sub_1E325F6F0(&v37, &unk_1ECF296E0, &unk_1E4298030);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E387172C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C3D8, qword_1E42A6DE8);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_102_5(inited, xmmword_1E4297BE0);
  v11 = sub_1E3280A90(0, &qword_1ECF2C3E0, 0x1E6958608);
  inited[4].n128_u64[0] = v11;
  inited[2].n128_u64[1] = v5;
  v14 = sub_1E3879330(v11, v12, v13);
  v15 = v5;
  v31 = sub_1E4205CB4();
  if (v3)
  {
    OUTLINED_FUNCTION_2_4();
    v16 = swift_allocObject();
    *(v16 + 16) = v3;
    *(v16 + 24) = v1;
    *(&v29 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C3F0, qword_1E42A0B50);
    *&v28 = sub_1E37D1918;
    *(&v28 + 1) = v16;

    sub_1E3870D0C(&v28, 4);
  }

  sub_1E324FBDC();
  OUTLINED_FUNCTION_0_11();
  v17(v9);
  v18 = v15;
  v19 = sub_1E41FFC94();
  v20 = sub_1E42067E4();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = OUTLINED_FUNCTION_160();
    *v21 = 138412290;
    *(v21 + 4) = v18;
    *v22 = v18;
    v23 = v18;
    _os_log_impl(&dword_1E323F000, v19, v20, "MultiPlayerViewController:: enter fullscreen for player view controller %@", v21, 0xCu);
    sub_1E325F6F0(v22, &unk_1ECF28E30, &qword_1E429E820);
    OUTLINED_FUNCTION_79();
    OUTLINED_FUNCTION_6_0();
  }

  v24 = OUTLINED_FUNCTION_74();
  v25(v24);
  v30 = 3;
  v28 = 0u;
  v29 = 0u;
  v26 = v31;
  OUTLINED_FUNCTION_21();
  (*(v27 + 160))(&v30, &v28, v26, &unk_1F5D8ADC8, v14, &off_1F5D8AC18);

  sub_1E325F6F0(&v28, &unk_1ECF296E0, &unk_1E4298030);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3871ADC()
{
  OUTLINED_FUNCTION_82_2();
  v2 = v1;
  v4 = v3;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v12 = sub_1E3879330(v9, v10, v11);
  v24 = sub_1E4205CB4();
  if (v4)
  {
    OUTLINED_FUNCTION_2_4();
    v0 = swift_allocObject();
    *(v0 + 16) = v4;
    *(v0 + 24) = v2;
    *(&v22 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C3F0, qword_1E42A0B50);
    *&v21 = sub_1E37D1918;
    *(&v21 + 1) = v0;

    sub_1E3870D0C(&v21, 4);
  }

  sub_1E324FBDC();
  OUTLINED_FUNCTION_51_4();
  v13(v8);
  v14 = sub_1E41FFC94();
  v15 = sub_1E42067E4();
  if (OUTLINED_FUNCTION_104(v15))
  {
    v16 = OUTLINED_FUNCTION_125_0();
    OUTLINED_FUNCTION_168_2(v16);
    _os_log_impl(&dword_1E323F000, v14, v15, "MultiPlayerViewController:: exit fullscreen", v0, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  v17 = OUTLINED_FUNCTION_53();
  v18(v17);
  v23 = 5;
  v21 = 0u;
  v22 = 0u;
  v19 = v24;
  OUTLINED_FUNCTION_21();
  (*(v20 + 160))(&v23, &v21, v19, &unk_1F5D8ADC8, v12, &off_1F5D8AC18);

  sub_1E325F6F0(&v21, &unk_1ECF296E0, &unk_1E4298030);
  OUTLINED_FUNCTION_95();
}

uint64_t sub_1E3871DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_82_2();
  OUTLINED_FUNCTION_21();
  v11 = (*(v10 + 424))();
  sub_1E32AE9B0(v11);
  OUTLINED_FUNCTION_169_1();

  OUTLINED_FUNCTION_26_3();
  OUTLINED_FUNCTION_95();

  return v18(v12, v13, v14, v15, v16, v17, v18, v19, a9, a10);
}

uint64_t sub_1E3871F44(int a1, unint64_t a2, char a3, uint64_t (*a4)(uint64_t), uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C3D8, qword_1E42A6DE8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BE0;
  *(inited + 32) = 3;
  *(inited + 64) = MEMORY[0x1E69E6370];
  *(inited + 40) = a3;
  v13 = sub_1E3879330(inited, v11, v12);
  v35 = sub_1E4205CB4();
  v14 = sub_1E386A9A8();
  v15 = MEMORY[0x1E69E7D40];
  if (v14)
  {
    v16 = v14;
    OUTLINED_FUNCTION_21();
    (*(v17 + 264))();
    OUTLINED_FUNCTION_129_1();
    v19 = (*((*v15 & v18) + 0x1F8))();
    sub_1E386ABC0(v19, a2);
    v21 = v20;
    v23 = v22;

    if (v23)
    {

      v24 = 0;
    }

    else
    {
      v24 = v21 == a2;
      v34 = MEMORY[0x1E69E6530];
      v33[0] = v21;
      sub_1E3870D0C(v33, 2);
    }
  }

  else
  {
    v24 = 0;
  }

  OUTLINED_FUNCTION_85();
  if ((((*(v25 + 664))() ^ a1) & 1) != 0 || ((a1 ^ 1 | v24) & 1) == 0)
  {
    if (a4)
    {
      OUTLINED_FUNCTION_2_4();
      v27 = swift_allocObject();
      *(v27 + 16) = a4;
      *(v27 + 24) = a5;
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C3F0, qword_1E42A0B50);
      v33[0] = sub_1E37D1918;
      v33[1] = v27;

      sub_1E3870D0C(v33, 4);
    }

    v34 = MEMORY[0x1E69E6530];
    v33[0] = a2;
    sub_1E3870D0C(v33, 1);
    if (a1)
    {
      v28 = 11;
    }

    else
    {
      v29 = sub_1E386A9A8();
      if (!v29)
      {
      }

      v28 = 12;
    }

    v32 = v28;
    OUTLINED_FUNCTION_25_4();
    v30 = v35;
    OUTLINED_FUNCTION_21();
    (*(v31 + 160))(&v32, v33, v30, &unk_1F5D8ADC8, v13, &off_1F5D8AC18);

    return sub_1E325F6F0(v33, &unk_1ECF296E0, &unk_1E4298030);
  }

  else
  {

    if (a4)
    {
      return a4(result);
    }
  }

  return result;
}

void sub_1E387237C(int a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v131 = a4;
  v130 = a3;
  v8 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v133 = v123 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v132 = v123 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v123 - v17;
  v19 = sub_1E324FBDC();
  v20 = *(v10 + 16);
  v136 = v19;
  v137 = v20;
  v20(v18);
  v21 = sub_1E41FFC94();
  v22 = sub_1E42067E4();
  v23 = os_log_type_enabled(v21, v22);
  v140 = a1;
  if (v23)
  {
    v24 = swift_slowAlloc();
    *v24 = 67109376;
    *(v24 + 4) = v140 & 1;
    *(v24 + 8) = 1024;
    *(v24 + 10) = a2 & 1;
    _os_log_impl(&dword_1E323F000, v21, v22, "MultiPlayerViewController:: set details view controller visible %{BOOL}d - %{BOOL}d", v24, 0xEu);
    a1 = v140;
    OUTLINED_FUNCTION_6_0();
  }

  v129 = a2;

  v25 = *(v10 + 8);
  v139 = v10 + 8;
  v138 = v25;
  v25(v18, v8);
  OUTLINED_FUNCTION_67_1();
  v26 = MEMORY[0x1E69E7D40];
  v28 = *((*MEMORY[0x1E69E7D40] & v27) + 0x260);
  v127 = v28();
  v29 = OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_isDetailsViewControllerVisible;
  OUTLINED_FUNCTION_3_0(&v5[OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_isDetailsViewControllerVisible], v148);
  v128 = a1 & 1;
  v5[v29] = a1 & 1;
  OUTLINED_FUNCTION_21();
  (*(v30 + 408))((a1 & 1) == 0);
  OUTLINED_FUNCTION_67_1();
  v32 = *((*v26 & v31) + 0x240);
  v126 = (*v26 & v31) + 576;
  v125 = v32;
  v33 = v32();
  if (v33)
  {
    [v33 detailsViewHeightForMultiPlayerViewController_];
    v35 = v34;
    swift_unknownObjectRelease();
    if (a1)
    {
      goto LABEL_5;
    }

LABEL_8:
    v134 = 0;
    v135 = 0;
LABEL_9:
    if (!*&v5[OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_detailsViewController])
    {
      v54 = OUTLINED_FUNCTION_31_18();
      v55(v54);
      v56 = sub_1E41FFC94();
      v57 = sub_1E42067E4();
      if (os_log_type_enabled(v56, v57))
      {
        *OUTLINED_FUNCTION_125_0() = 0;
        OUTLINED_FUNCTION_15_14(&dword_1E323F000, v58, v59, "MultiPlayerViewController:: not showing details because view controller is missing");
        OUTLINED_FUNCTION_6_0();
      }

      OUTLINED_FUNCTION_17_30();
      v60();
      goto LABEL_50;
    }

    v42 = *&v5[OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_layout];
    OUTLINED_FUNCTION_26();
    v44 = *(v43 + 1736);
    v124 = v45;
    v44();
    OUTLINED_FUNCTION_30();
    (*(v46 + 176))(v149);

    if (v150)
    {
      v48 = 0.0;
    }

    else
    {
      v48 = *&v149[2];
    }

    if ((v28)(v47))
    {
      OUTLINED_FUNCTION_26();
      (*(v49 + 1712))();
      OUTLINED_FUNCTION_30();
      (*(v50 + 176))(&aBlock);
      v51 = *&v142;
      v53 = v143;
      v52 = v144;

      if (v145)
      {
        v51 = *(MEMORY[0x1E69DDCE0] + 8);
        v53 = *(MEMORY[0x1E69DDCE0] + 16);
        v52 = *(MEMORY[0x1E69DDCE0] + 24);
      }
    }

    else
    {
      v51 = v42[14];
      v53 = v42[15];
      v52 = v42[16];
    }

    v61 = OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_bottomConstraint;
    v62 = *&v5[OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_bottomConstraint];
    if (v62)
    {
      if (a1)
      {
        v63 = -(v35 + v48);
        v64 = v62;
      }

      else
      {
        v64 = v62;
        v65 = sub_1E386B308();
        [v65 frame];
        v67 = v66;
        v69 = v68;
        v71 = v70;
        v73 = v72;

        v151.origin.x = v67;
        v151.origin.y = v69;
        v151.size.width = v71;
        v151.size.height = v73;
        v63 = -(v53 + CGRectGetMaxY(v151));
      }

      [v64 setConstant_];
    }

    v74 = *&v5[OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_leadingConstraint];
    if (v74)
    {
      [v74 setConstant_];
    }

    v75 = *&v5[OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_trailingConstraint];
    if (v75)
    {
      [v75 setConstant_];
    }

    v76 = v132;
    v77 = OUTLINED_FUNCTION_31_18();
    v123[1] = v10 + 16;
    v78(v77);
    v79 = v5;
    v80 = sub_1E41FFC94();
    v81 = sub_1E42067E4();

    if (os_log_type_enabled(v80, v81))
    {
      v123[0] = v8;
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v147 = v83;
      *v82 = 136315138;
      v84 = *&v5[v61];
      if (v84)
      {
        [v84 constant];
      }

      v85 = sub_1E4206584();
      v87 = sub_1E3270FC8(v85, v86, &v147);

      *(v82 + 4) = v87;
      _os_log_impl(&dword_1E323F000, v80, v81, "MultiPlayerViewController:: setting detail bottom spacing %s", v82, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v83);
      OUTLINED_FUNCTION_79();
      OUTLINED_FUNCTION_6_0();

      OUTLINED_FUNCTION_17_30();
      v88();
      a1 = v140;
    }

    else
    {

      v138(v76, v8);
    }

    LODWORD(v132) = v127 & a1;
    v89 = OUTLINED_FUNCTION_31_18();
    v90(v89);
    v91 = v79;
    v92 = sub_1E41FFC94();
    v93 = sub_1E42067E4();

    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v147 = v95;
      *v94 = 136315138;
      v96 = *&v91[OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_topConstraint];
      v97 = v131;
      if (v96)
      {
        [v96 constant];
      }

      v99 = sub_1E4206584();
      v101 = sub_1E3270FC8(v99, v100, &v147);

      *(v94 + 4) = v101;
      _os_log_impl(&dword_1E323F000, v92, v93, "MultiPlayerViewController:: setting detail top spacing %s", v94, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v95);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      OUTLINED_FUNCTION_17_30();
      v102();
    }

    else
    {

      OUTLINED_FUNCTION_17_30();
      v98();
      v97 = v131;
    }

    v103 = v130;
    OUTLINED_FUNCTION_4_0();
    v104 = swift_allocObject();
    OUTLINED_FUNCTION_45_2(v104);
    v105 = swift_allocObject();
    v106 = v124;
    *(v105 + 16) = v104;
    *(v105 + 24) = v106;
    v107 = v128;
    *(v105 + 32) = v128;
    OUTLINED_FUNCTION_4_0();
    v108 = swift_allocObject();
    OUTLINED_FUNCTION_45_2(v108);
    OUTLINED_FUNCTION_89();
    v109 = swift_allocObject();
    *(v109 + 16) = v108;
    *(v109 + 24) = v107;
    v110 = v132;
    *(v109 + 25) = v132 & 1;
    *(v109 + 32) = v106;
    *(v109 + 40) = v103;
    *(v109 + 48) = v97;
    v111 = v106;

    v112 = OUTLINED_FUNCTION_171_0();
    sub_1E37FAED4(v112, v113);
    if (v140)
    {
      if ((v110 & 1) == 0)
      {
        OUTLINED_FUNCTION_153_1();
        v115 = v114();
        if (v115)
        {
          v116 = v115;
          v117 = &selRef_multiPlayerViewController_detailsViewControllerWillAppear_;
LABEL_45:
          [v116 *v117];
          swift_unknownObjectRelease();
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_153_1();
      v119 = v118();
      if (v119)
      {
        v116 = v119;
        v117 = &selRef_multiPlayerViewController_detailsViewControllerWillDisappear_;
        goto LABEL_45;
      }
    }

    v120 = v140;
    v121 = v129;
    [v111 vui:v140 & 1 beginAppearanceTransition:v129 & 1 animated:?];
    if (v121)
    {

      sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);
      OUTLINED_FUNCTION_2_4();
      v122 = swift_allocObject();
      *(v122 + 16) = sub_1E3879390;
      *(v122 + 24) = v109;

      OUTLINED_FUNCTION_5_11();
      sub_1E3B02648();
    }

    else
    {
      sub_1E3872FF4(v104, v111, v120 & 1);

      sub_1E3873140();
    }

LABEL_50:
    sub_1E37FAED8(v134, v135);
    return;
  }

  v35 = 0.0;
  if ((a1 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  v36 = objc_opt_self();
  OUTLINED_FUNCTION_4_0();
  v37 = swift_allocObject();
  *(v37 + 16) = v5;
  OUTLINED_FUNCTION_2_4();
  v38 = swift_allocObject();
  v134 = sub_1E38793A8;
  *(v38 + 16) = sub_1E38793A8;
  *(v38 + 24) = v37;
  v135 = v37;
  v145 = sub_1E379E500;
  v146 = v38;
  aBlock = MEMORY[0x1E69E9820];
  v142 = 1107296256;
  OUTLINED_FUNCTION_67();
  v143 = v39;
  v144 = COERCE_DOUBLE(&block_descriptor_19);
  v40 = _Block_copy(&aBlock);
  v41 = v5;

  [v36 performWithoutAnimation_];
  _Block_release(v40);
  LOBYTE(v36) = swift_isEscapingClosureAtFileLocation();

  if ((v36 & 1) == 0)
  {
    a1 = v140;
    goto LABEL_9;
  }

  __break(1u);
}

void sub_1E3872FF4(uint64_t a1, void *a2, char a3)
{
  OUTLINED_FUNCTION_3_49();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [a2 view];
    if (v7)
    {
      v8 = v7;
      if ((a3 & 1) == 0 || (v9 = 1.0, (v6[OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_isDetailsContentsLoaded] & 1) == 0))
      {
        v9 = 0.0;
      }

      [v7 setAlpha_];

      v10 = *&v6[OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_grabberBottomConstraint];
      if (v10)
      {
        v11 = 26.5;
        if (a3)
        {
          v11 = 18.5;
        }

        [v10 setConstant_];
      }

      v12 = v6;
      v13 = [v12 view];
      if (v13)
      {
        v14 = v13;
        [v13 setNeedsLayout];

        v15 = [v12 view];
        if (v15)
        {
          [v15 layoutIfNeeded];

          return;
        }

LABEL_16:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_16;
  }
}

void sub_1E3873140()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
LABEL_15:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v14 = Strong;
  sub_1E324FBDC();
  OUTLINED_FUNCTION_183_1();
  v15 = OUTLINED_FUNCTION_101();
  v16(v15);
  v17 = sub_1E41FFC94();
  v18 = sub_1E42067E4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = OUTLINED_FUNCTION_160();
    *v19 = 67109120;
    *(v19 + 4) = v8 & 1;
    _os_log_impl(&dword_1E323F000, v17, v18, "MultiPlayerViewController:: did finish animation details %{BOOL}d", v19, 8u);
    OUTLINED_FUNCTION_6_0();
  }

  (*(v11 + 8))(v0, v9);
  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_45();
    if (!(*(v22 + 576))())
    {
      goto LABEL_11;
    }

    v21 = v2;
    goto LABEL_10;
  }

  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_45();
    if ((*(v20 + 576))())
    {
      v21 = v2;
LABEL_10:
      v23 = v14;
      v24 = OUTLINED_FUNCTION_121();
      [v24 v25];

      swift_unknownObjectRelease();
      v2 = v21;
    }
  }

LABEL_11:
  [v4 vui_endAppearanceTransition];
  v26 = [v4 view];
  if (v26)
  {
    v27 = v26;
    OUTLINED_FUNCTION_45();
    [v27 setHidden_];

    if (v2)
    {
      v2();
    }

    goto LABEL_15;
  }

  __break(1u);
}

void sub_1E38734BC()
{
  v5 = v0;
  v6 = *&v0[OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_playerView];
  v7 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_12_5();
  v9 = (*(v8 + 920))();
  if (v9)
  {
    v10 = v9;
    [v9 frame];
    OUTLINED_FUNCTION_171();

LABEL_11:
    OUTLINED_FUNCTION_170();
    return;
  }

  OUTLINED_FUNCTION_12_5();
  (*(v11 + 528))(v28);
  v12 = v29;
  v13 = v30;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  if (*&v0[OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_presentationPlayerViewControllers])
  {
    v14 = *&v0[OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_presentationPlayerViewControllers];
  }

  else
  {
    OUTLINED_FUNCTION_85();
    v14 = (*(v15 + 424))();
  }

  [v6 bounds];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_67_1();
  v17 = (*((*v7 & v16) + 0x260))();
  OUTLINED_FUNCTION_67_1();
  v19 = (*((*v7 & v18) + 0x258))();
  OUTLINED_FUNCTION_67_1();
  (*((*v7 & v20) + 0x200))();
  v22 = (*(v13 + 56))(v14, (v17 & 1) == 0, v19, v21 & 1, v12, v13, v1, v2, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v28);
  if (*(v22 + 16))
  {
    if ([v5 view])
    {
      OUTLINED_FUNCTION_28_3();
      v23 = OUTLINED_FUNCTION_170();
      [v24 v25];
      OUTLINED_FUNCTION_171();

      goto LABEL_11;
    }

    __break(1u);
  }

  else
  {
    v26 = [v5 view];
    if (v26)
    {
      v27 = v26;

      [v27 bounds];
      OUTLINED_FUNCTION_171();

      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1E3873860(double a1, double a2)
{
  OUTLINED_FUNCTION_8();
  (*(v4 + 1712))();
  OUTLINED_FUNCTION_30();
  (*(v5 + 176))(v22);
  v6 = *&v22[2];

  v7 = 0.0;
  if ((v23 & 1) == 0)
  {
    v8 = OUTLINED_FUNCTION_170();
    v7 = sub_1E3952BD8(v8, v9, v6);
  }

  v10 = a2 - v7;
  v11 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  (*(v12 + 528))(v19);
  v13 = v20;
  v14 = v21;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  OUTLINED_FUNCTION_36_3();
  (*((*v11 & v15) + 0x200))();
  v17 = (*(v14 + 72))(v16 & 1, v13, v14, a1, v10);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return v17 & 1;
}

uint64_t sub_1E3873A5C()
{
  OUTLINED_FUNCTION_120_1();
  v0 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_6_41();
  (*(v1 + 896))(0);
  OUTLINED_FUNCTION_26_3();
  return (*((*v0 & v2) + 0x388))(0);
}

void sub_1E3873B40()
{
  OUTLINED_FUNCTION_193();
  v1 = v0;
  OUTLINED_FUNCTION_6_41();
  v3 = (*(v2 + 424))();
  v4 = sub_1E32AE9B0(v3);
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    OUTLINED_FUNCTION_120_1();
    OUTLINED_FUNCTION_6_41();
    v8 = *(v7 + 552);
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1E6911E60](v6, v3);
      }

      else
      {
        if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(v3 + 8 * v6 + 32);
      }

      v10 = v9;
      v11 = v8();

      if (v11)
      {

        if (v10 == v11)
        {
          goto LABEL_11;
        }
      }

      v12 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      ++v6;
      if (v12 == v5)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  else
  {
LABEL_11:

    sub_1E3869DD4();
    if ((v1 & 1) == 0)
    {
      OUTLINED_FUNCTION_18();
    }

    OUTLINED_FUNCTION_8();
    v13 = OUTLINED_FUNCTION_53();
    v14(v13);
    OUTLINED_FUNCTION_140_0();
  }
}

void sub_1E3873DE0(uint64_t a1)
{
  sub_1E386A094();
  OUTLINED_FUNCTION_37_3();
  OUTLINED_FUNCTION_64();
  (*(v2 + 344))(a1);
}

void sub_1E3873EAC()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_playerView];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  OUTLINED_FUNCTION_26_3();
  v4 = (*((*MEMORY[0x1E69E7D40] & v3) + 0x260))();
  v5 = *&v0[OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_layout];
  if (v4)
  {
    OUTLINED_FUNCTION_8();
    (*(v6 + 1712))();
    OUTLINED_FUNCTION_30();
    (*(v7 + 176))(v78);
    v73 = v78[1];
    v75 = v78[0];

    if (v79)
    {
      v8 = -1;
    }

    else
    {
      v8 = 0;
    }

    v9 = vdupq_n_s64(v8);
    v74 = vbslq_s8(v9, *(MEMORY[0x1E69DDCE0] + 16), v73);
    v10 = vbslq_s8(v9, *MEMORY[0x1E69DDCE0], v75);
  }

  else
  {
    v74 = *(v5 + 120);
    v10 = *(v5 + 104);
  }

  v76 = v10;
  v11 = sub_1E386B308();
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
  OUTLINED_FUNCTION_27_10();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1E42A1E20;
  v13 = OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController____lazy_storage___headerView;
  v14 = [*&v1[OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController____lazy_storage___headerView] topAnchor];
  v15 = [v1 view];
  if (!v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v16 = v15;
  v17 = [v15 topAnchor];

  v18 = [v14 constraintEqualToAnchor:v17 constant:36.0];
  *(v12 + 32) = v18;
  v19 = [*&v1[v13] leadingAnchor];
  v20 = [v1 view];
  if (!v20)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v21 = v20;
  v22 = [v20 safeAreaLayoutGuide];

  v23 = [v22 leadingAnchor];
  v24 = [v19 constraintEqualToAnchor_];

  *(v12 + 40) = v24;
  v25 = [*&v1[v13] trailingAnchor];
  v26 = [v1 view];
  if (!v26)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v27 = v26;
  v28 = objc_opt_self();
  v29 = [v27 safeAreaLayoutGuide];

  v30 = [v29 trailingAnchor];
  v31 = [v25 constraintEqualToAnchor_];

  *(v12 + 48) = v31;
  v32 = [*&v1[v13] heightAnchor];
  v33 = [v32 constraintEqualToConstant_];

  *(v12 + 56) = v33;
  sub_1E3280A90(0, &qword_1EE23B1A0, 0x1E696ACD8);
  OUTLINED_FUNCTION_124();
  sub_1E42062A4();
  OUTLINED_FUNCTION_169_1();

  [v28 activateConstraints_];

  v34 = [v2 topAnchor];
  v35 = [*&v1[v13] bottomAnchor];
  v36 = [v34 constraintEqualToAnchor:v35 constant:*v76.i64];

  v37 = [v2 bottomAnchor];
  v38 = [v1 view];
  if (!v38)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v39 = v38;
  v40 = [v38 bottomAnchor];

  v41 = [v37 constraintEqualToAnchor:v40 constant:-(*v74.i64 + 76.0)];
  v42 = [v2 leadingAnchor];
  v43 = [v1 view];
  if (!v43)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v44 = v43;
  v45 = [v43 leadingAnchor];

  v46 = [v42 &selRef_disableScrubbing + 6];
  v47 = [v2 trailingAnchor];
  v48 = [v1 view];
  if (v48)
  {
    v49 = v48;
    v50 = [v48 trailingAnchor];

    v51 = [v47 &selRef_disableScrubbing + 6];
    OUTLINED_FUNCTION_27_10();
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_1E42A1E20;
    *(v52 + 32) = v46;
    *(v52 + 40) = v51;
    *(v52 + 48) = v36;
    *(v52 + 56) = v41;
    v53 = v46;
    v54 = v51;
    v55 = v36;
    v56 = v41;
    OUTLINED_FUNCTION_35_5();
    v57 = sub_1E42062A4();

    [v28 activateConstraints_];

    v58 = *&v1[OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_topConstraint];
    *&v1[OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_topConstraint] = v55;
    v59 = v55;

    v60 = *&v1[OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_bottomConstraint];
    *&v1[OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_bottomConstraint] = v56;
    v61 = v56;

    v62 = *&v1[OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_leadingConstraint];
    *&v1[OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_leadingConstraint] = v53;
    v63 = v53;

    v64 = *&v1[OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_trailingConstraint];
    *&v1[OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_trailingConstraint] = v54;
    v65 = v54;

    v66 = objc_opt_self();
    OUTLINED_FUNCTION_4_0();
    v67 = swift_allocObject();
    *(v67 + 16) = v1;
    OUTLINED_FUNCTION_2_4();
    v68 = swift_allocObject();
    *(v68 + 16) = sub_1E387E80C;
    *(v68 + 24) = v67;
    aBlock[4] = sub_1E37D1918;
    aBlock[5] = v68;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    OUTLINED_FUNCTION_67();
    aBlock[2] = v69;
    aBlock[3] = &block_descriptor_401;
    v70 = _Block_copy(aBlock);
    v71 = v1;

    [v66 performWithoutAnimation_];

    _Block_release(v70);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_20:
  __break(1u);
}

double sub_1E38746CC()
{
  sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);
  OUTLINED_FUNCTION_4_0();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_83_1(v0);
  swift_unknownObjectWeakInit();
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_197(v1);
  OUTLINED_FUNCTION_5_11();
  OUTLINED_FUNCTION_25();
  sub_1E3B02648();

  return result;
}

double sub_1E3874790(uint64_t a1, char a2)
{
  if (a2)
  {
    MEMORY[0x1EEE9AC00](a1);
    sub_1E4203E44();
    sub_1E4200FE4();
  }

  else
  {
    sub_1E386AD2C();
    sub_1E3CB8C20();
  }

  return result;
}

void sub_1E3874870(char a1, void (*a2)(uint64_t), uint64_t a3)
{
  v4 = v3;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  OUTLINED_FUNCTION_26_3();
  v13 = (*((*MEMORY[0x1E69E7D40] & v12) + 0x240))();
  v14 = 0.0;
  v15 = 0.0;
  if (v13)
  {
    [v13 detailsViewHeightForMultiPlayerViewController_];
    v15 = v16;
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_8();
  (*(v17 + 1736))();
  OUTLINED_FUNCTION_30();
  (*(v18 + 176))(v43);

  v19 = *&v43[2];
  if (v44)
  {
    v19 = 0.0;
  }

  v20 = v15 + v19;
  v21 = OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_bottomConstraint;
  v22 = *&v3[OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_bottomConstraint];
  if (v22)
  {
    [v22 constant];
    v14 = v23;
  }

  v24 = -v20;
  sub_1E324FBDC();
  OUTLINED_FUNCTION_0_11();
  v25(v11);
  v26 = sub_1E41FFC94();
  v27 = sub_1E42067E4();
  if (OUTLINED_FUNCTION_104(v27))
  {
    v28 = OUTLINED_FUNCTION_49_0();
    *v28 = 134218240;
    *(v28 + 4) = v24;
    *(v28 + 12) = 2048;
    *(v28 + 14) = v14;
    OUTLINED_FUNCTION_134_1();
    _os_log_impl(v29, v30, v31, v32, v33, 0x16u);
    OUTLINED_FUNCTION_6_0();
  }

  v34 = OUTLINED_FUNCTION_123_1();
  v36 = v35(v34);
  if (v14 != v24)
  {
    [*&v4[v21] setConstant_];
    if (a1)
    {
      sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);
      OUTLINED_FUNCTION_4_0();
      v37 = swift_allocObject();
      OUTLINED_FUNCTION_99_4(v37);
      OUTLINED_FUNCTION_2_4();
      v38 = swift_allocObject();
      *(v38 + 16) = a2;
      *(v38 + 24) = a3;

      sub_1E37FAED4(a2, a3);
      OUTLINED_FUNCTION_5_11();
      sub_1E3B02648();

      return;
    }

    v39 = [v4 view];
    if (v39)
    {
      v40 = v39;
      [v39 setNeedsLayout];

      v41 = [v4 view];
      if (v41)
      {
        v42 = v41;
        [v41 layoutIfNeeded];

        if (a2)
        {
          goto LABEL_11;
        }

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  if (a2)
  {
LABEL_11:
    a2(v36);
  }
}

void sub_1E3874C44()
{
  OUTLINED_FUNCTION_156_0();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v148 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v148 - v6;
  v8 = OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_detailsViewController;
  if (!*(v1 + OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_detailsViewController))
  {
    OUTLINED_FUNCTION_12_5();
    v9 += 72;
    v10 = *v9;
    v11 = (*v9)();
    if (v11)
    {
      v12 = [v11 detailsViewControllerForMultiPlayerViewController_];
      v13 = swift_unknownObjectRelease();
      if (v12)
      {
        v14 = v0;
        v15 = (v10)(v13);
        v148 = v8;
        if (v15)
        {
          v14 = v15;
          [v15 detailsViewHeightForMultiPlayerViewController_];
          v17 = v16;
          swift_unknownObjectRelease();
        }

        else
        {
          v17 = 0;
        }

        OUTLINED_FUNCTION_4_0();
        v25 = swift_allocObject();
        OUTLINED_FUNCTION_105_2(v25);
        swift_unknownObjectWeakInit();
        OUTLINED_FUNCTION_2_4();
        v26 = swift_allocObject();
        *(v26 + 16) = v14;
        *(v26 + 24) = v12;
        v156 = sub_1E387A07C;
        v157 = v26;
        aBlock = MEMORY[0x1E69E9820];
        v153 = 1107296256;
        v154 = sub_1E378AEA4;
        v155 = &block_descriptor_211;
        v27 = _Block_copy(&aBlock);
        v151 = v12;
        v28 = v12;

        [v28 setContentsDidLoad_];
        _Block_release(v27);
        OUTLINED_FUNCTION_4_0();
        v29 = swift_allocObject();
        OUTLINED_FUNCTION_45_2(v29);
        v156 = sub_1E387A168;
        v157 = v29;
        aBlock = MEMORY[0x1E69E9820];
        v153 = 1107296256;
        v154 = sub_1E37EB82C;
        v155 = &block_descriptor_215;
        v30 = _Block_copy(&aBlock);

        [v28 setDidInteract_];
        _Block_release(v30);
        sub_1E324FBDC();
        OUTLINED_FUNCTION_0_11();
        v31(v7);
        v32 = v28;
        v33 = sub_1E41FFC94();
        v34 = sub_1E42067E4();

        if (os_log_type_enabled(v33, v34))
        {
          v35 = OUTLINED_FUNCTION_49_0();
          v36 = OUTLINED_FUNCTION_160();
          *v35 = 138412546;
          *(v35 + 4) = v32;
          *v36 = v151;
          *(v35 + 12) = 2048;
          *(v35 + 14) = v17;
          v37 = v32;
          _os_log_impl(&dword_1E323F000, v33, v34, "MultiPlayerViewController:: embedding details %@ with height %f", v35, 0x16u);
          sub_1E325F6F0(v36, &unk_1ECF28E30, &qword_1E429E820);
          OUTLINED_FUNCTION_79();
          OUTLINED_FUNCTION_6_0();
        }

        v38 = OUTLINED_FUNCTION_53();
        v39(v38);
        [v0 addChildViewController_];
        v40 = OUTLINED_FUNCTION_19_23();
        if (v40)
        {
          v41 = v40;
          v42 = [v32 view];
          v43 = MEMORY[0x1E69E7D40];
          if (v42)
          {
            v44 = v42;
            v45 = *(v0 + OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_playerView);
            v46 = OUTLINED_FUNCTION_123_3();
            [v46 v47];

            [v32 didMoveToParentViewController_];
            v48 = [v32 view];
            if (v48)
            {
              v49 = v48;
              OUTLINED_FUNCTION_12_5();
              v150 = *(v50 + 608);
              if ((v150() & 1) == 0 || (v51 = 1.0, (*(v0 + OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_isDetailsContentsLoaded) & 1) == 0))
              {
                v51 = 0.0;
              }

              [v49 setAlpha_];

              sub_1E386A094();
              OUTLINED_FUNCTION_7_5();
              v53 = *((*v43 & v52) + 0x150);
              v54 = v32;
              v53();

              v55 = OUTLINED_FUNCTION_165_2();
              if (v55)
              {
                v56 = v55;
                v57 = OUTLINED_FUNCTION_19_23();
                if (v57)
                {
                  v58 = v57;
                  [v57 frame];
                  OUTLINED_FUNCTION_3();

                  v158.origin.x = OUTLINED_FUNCTION_6();
                  MaxY = CGRectGetMaxY(v158);
                  v60 = OUTLINED_FUNCTION_19_23();
                  if (v60)
                  {
                    v61 = v60;
                    [v60 frame];
                    v63 = v62;
                    v65 = v64;
                    v67 = v66;
                    v69 = v68;

                    v159.origin.x = v63;
                    v159.origin.y = v65;
                    v159.size.width = v67;
                    v159.size.height = v69;
                    Width = CGRectGetWidth(v159);
                    v71 = OUTLINED_FUNCTION_19_23();
                    if (v71)
                    {
                      v72 = v71;
                      v149 = v45;
                      [v71 frame];
                      OUTLINED_FUNCTION_171();
                      v74 = v73;
                      v76 = v75;

                      v160.origin.x = OUTLINED_FUNCTION_170();
                      v160.size.width = v74;
                      v160.size.height = v76;
                      [v56 setFrame_];

                      v77 = OUTLINED_FUNCTION_165_2();
                      if (v77)
                      {
                        v78 = v77;
                        [v77 setTranslatesAutoresizingMaskIntoConstraints_];

                        v79 = OUTLINED_FUNCTION_165_2();
                        if (v79)
                        {
                          v80 = v79;
                          [v79 setAlpha_];

                          v81 = sub_1E386B3D4();
                          [v81 setTranslatesAutoresizingMaskIntoConstraints_];

                          v82 = OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController____lazy_storage___grabberView;
                          v83 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x1B0);
                          v84 = *(v0 + OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController____lazy_storage___grabberView);
                          v85 = v83();
                          v86 = 1.0;
                          if (v85 < 2)
                          {
                            v86 = 0.0;
                          }

                          [v84 setAlpha_];

                          v87 = *(v0 + v82);
                          type metadata accessor for Accessibility();
                          v88 = v87;
                          sub_1E40A7DC8();
                          sub_1E3839D34(v89, v90, v88);

                          [*(v0 + v82) setIsAccessibilityElement_];
                          v91 = [v0 &selRef_viewControllerDocumentIdentifier];
                          if (v91)
                          {
                            v92 = v91;
                            [v91 addSubview_];

                            v93 = [*(v0 + v82) bottomAnchor];
                            v94 = [v54 &selRef_viewControllerDocumentIdentifier];
                            if (v94)
                            {
                              v95 = v94;
                              v96 = [v94 topAnchor];

                              v97 = v150();
                              v98 = 26.5;
                              if (v97)
                              {
                                v98 = 18.5;
                              }

                              v150 = [v93 constraintEqualToAnchor:v96 constant:v98];

                              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
                              v99 = swift_allocObject();
                              *(v99 + 16) = xmmword_1E42A6DD0;
                              v100 = [v54 &selRef_viewControllerDocumentIdentifier];
                              if (v100)
                              {
                                v101 = v100;
                                v102 = [v100 topAnchor];

                                v103 = [v149 bottomAnchor];
                                v104 = [v102 constraintEqualToAnchor:v103 constant:33.0];

                                *(v99 + 32) = v104;
                                v105 = [v54 &selRef_viewControllerDocumentIdentifier];
                                if (v105)
                                {
                                  v106 = v105;
                                  v107 = [v105 leadingAnchor];

                                  v108 = [v0 &selRef_viewControllerDocumentIdentifier];
                                  if (v108)
                                  {
                                    v109 = v108;
                                    v110 = [v108 leadingAnchor];

                                    v111 = [v107 constraintEqualToAnchor_];
                                    *(v99 + 40) = v111;
                                    v112 = OUTLINED_FUNCTION_165_2();
                                    if (v112)
                                    {
                                      v113 = v112;
                                      v114 = [v112 trailingAnchor];

                                      v115 = OUTLINED_FUNCTION_19_23();
                                      if (v115)
                                      {
                                        v116 = v115;
                                        v117 = [v115 trailingAnchor];

                                        v118 = [v114 constraintEqualToAnchor_];
                                        *(v99 + 48) = v118;
                                        v119 = OUTLINED_FUNCTION_165_2();
                                        if (v119)
                                        {
                                          v120 = v119;
                                          v121 = [v119 heightAnchor];

                                          v122 = OUTLINED_FUNCTION_19_23();
                                          if (v122)
                                          {
                                            v123 = v122;
                                            v124 = [v122 heightAnchor];

                                            v125 = [v121 constraintEqualToAnchor_];
                                            *(v99 + 56) = v125;
                                            v126 = [*(v0 + v82) centerXAnchor];
                                            v127 = [v0 view];
                                            if (v127)
                                            {
                                              v128 = v127;
                                              v129 = objc_opt_self();
                                              v130 = [v128 centerXAnchor];

                                              v131 = [v126 &selRef_disableBackgroundMediaPlayback + 5];
                                              *(v99 + 64) = v131;
                                              v132 = [*(v0 + v82) widthAnchor];
                                              v133 = [v132 constraintEqualToConstant_];

                                              *(v99 + 72) = v133;
                                              v134 = [*(v0 + v82) heightAnchor];
                                              v135 = [v134 constraintEqualToConstant_];

                                              v136 = v150;
                                              *(v99 + 80) = v135;
                                              *(v99 + 88) = v136;
                                              sub_1E3280A90(0, &qword_1EE23B1A0, 0x1E696ACD8);
                                              v137 = v136;
                                              OUTLINED_FUNCTION_124();
                                              v138 = sub_1E42062A4();

                                              [v129 activateConstraints_];

                                              v139 = *(v0 + OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_grabberBottomConstraint);
                                              *(v0 + OBJC_IVAR____TtC8VideosUI25MultiPlayerViewController_grabberBottomConstraint) = v137;
                                              v140 = v137;

                                              v141 = OUTLINED_FUNCTION_19_23();
                                              if (v141)
                                              {
                                                v142 = v141;
                                                [v141 setNeedsLayout];

                                                v143 = OUTLINED_FUNCTION_19_23();
                                                v144 = v148;
                                                v145 = v151;
                                                if (v143)
                                                {
                                                  v146 = v143;
                                                  [v143 layoutIfNeeded];

                                                  v147 = *(v0 + v144);
                                                  *(v0 + v144) = v145;

                                                  return;
                                                }

LABEL_62:
                                                __break(1u);
                                                return;
                                              }

LABEL_61:
                                              __break(1u);
                                              goto LABEL_62;
                                            }

LABEL_60:
                                            __break(1u);
                                            goto LABEL_61;
                                          }

LABEL_59:
                                          __break(1u);
                                          goto LABEL_60;
                                        }

LABEL_58:
                                        __break(1u);
                                        goto LABEL_59;
                                      }

LABEL_57:
                                      __break(1u);
                                      goto LABEL_58;
                                    }

LABEL_56:
                                    __break(1u);
                                    goto LABEL_57;
                                  }

LABEL_55:
                                  __break(1u);
                                  goto LABEL_56;
                                }

LABEL_54:
                                __break(1u);
                                goto LABEL_55;
                              }

LABEL_53:
                              __break(1u);
                              goto LABEL_54;
                            }

LABEL_52:
                            __break(1u);
                            goto LABEL_53;
                          }

LABEL_51:
                          __break(1u);
                          goto LABEL_52;
                        }

LABEL_50:
                        __break(1u);
                        goto LABEL_51;
                      }

LABEL_49:
                      __break(1u);
                      goto LABEL_50;
                    }

LABEL_48:
                    __break(1u);
                    goto LABEL_49;
                  }

LABEL_47:
                  __break(1u);
                  goto LABEL_48;
                }

LABEL_46:
                __break(1u);
                goto LABEL_47;
              }

LABEL_45:
              __break(1u);
              goto LABEL_46;
            }

LABEL_44:
            __break(1u);
            goto LABEL_45;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_44;
      }
    }

    sub_1E324FBDC();
    OUTLINED_FUNCTION_0_11();
    v18(v4);
    v19 = sub_1E41FFC94();
    v20 = sub_1E42067F4();
    if (os_log_type_enabled(v19, v20))
    {
      *OUTLINED_FUNCTION_125_0() = 0;
      OUTLINED_FUNCTION_15_14(&dword_1E323F000, v21, v22, "MultiPlayerViewController:: failed to create details view controller");
      OUTLINED_FUNCTION_6_0();
    }

    v23 = OUTLINED_FUNCTION_171_0();
    v24(v23);
  }
}