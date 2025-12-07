void sub_1B8D74F68(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  v10 = OUTLINED_FUNCTION_94();
  type metadata accessor for Searchfoundation_Date(v10);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_54();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E30, &qword_1B964D630);
  OUTLINED_FUNCTION_183(v12);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_88();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E38, &qword_1B96CD870);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  v15 = OUTLINED_FUNCTION_35();
  type metadata accessor for Searchfoundation_ProductInventory(v15);
  OUTLINED_FUNCTION_30_1();
  v82 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_442();
  MEMORY[0x1EEE9AC00](v18);
  v19 = OUTLINED_FUNCTION_440();
  type metadata accessor for Searchfoundation_ProductInventoryResult(v19);
  OUTLINED_FUNCTION_19_0();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_55();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_189_0();
  if (v33 && v22 && v3 != v2)
  {
    v74 = v4;
    OUTLINED_FUNCTION_60_0();
    OUTLINED_FUNCTION_506();
    v75 = v24;
    v26 = *(v25 + 72);
    v80 = v27;
    v73 = v26;
    while (1)
    {
      v28 = v23;
      v29 = v26 * v23;
      v30 = OUTLINED_FUNCTION_494();
      sub_1B8D745A4(v30);
      v78 = v28;
      if (v28 == v80)
      {
        break;
      }

      sub_1B8D745A4(v75 + v29);
      OUTLINED_FUNCTION_670();
      v33 = v33 && v31 == v32;
      if (!v33 && (sub_1B964C9F0() & 1) == 0 || (v34 = *(v8 + 16), v35 = *(v34 + 16), v81 = *(v9 + 16), v35 != *(v81 + 16)))
      {
LABEL_82:
        sub_1B8D745F8();
        OUTLINED_FUNCTION_218();
        sub_1B8D745F8();
        goto LABEL_83;
      }

      if (v35 && v34 != v81)
      {
        v36 = 0;
        OUTLINED_FUNCTION_93();
        v79 = v81 + v37;
        v71 = v9;
        v72 = v8;
        v76 = v38;
        v77 = v34;
        while (v36 < *(v34 + 16))
        {
          v39 = *(v82 + 72) * v36;
          v40 = OUTLINED_FUNCTION_534();
          sub_1B8D745A4(v40);
          if (v36 >= *(v81 + 16))
          {
            goto LABEL_85;
          }

          v41 = OUTLINED_FUNCTION_505(v79);
          sub_1B8D745A4(v41);
          OUTLINED_FUNCTION_209_0();
          if (v46)
          {
            v43 = v45;
          }

          if (v44 == 1)
          {
            if (v42)
            {
              if (v43 != 1)
              {
                goto LABEL_81;
              }
            }

            else if (v43)
            {
              goto LABEL_81;
            }
          }

          else if (v43 != v42)
          {
            goto LABEL_81;
          }

          OUTLINED_FUNCTION_156_1();
          v49 = v33 && v47 == v48;
          if (!v49 && (sub_1B964C9F0() & 1) == 0)
          {
            goto LABEL_81;
          }

          v50 = *(v7 + 32);
          v51 = *(v6 + 32);
          if (*(v6 + 40) == 1)
          {
            switch(v51)
            {
              case 1:
                if (v50 != 1)
                {
                  goto LABEL_81;
                }

                goto LABEL_37;
              case 2:
                if (v50 != 2)
                {
                  goto LABEL_81;
                }

                goto LABEL_37;
              case 3:
                if (v50 != 3)
                {
                  goto LABEL_81;
                }

                goto LABEL_37;
              default:
                if (v50)
                {
                  goto LABEL_81;
                }

                goto LABEL_37;
            }
          }

          if (v50 != v51)
          {
            goto LABEL_81;
          }

LABEL_37:
          if (*(v7 + 44) != *(v6 + 44))
          {
            goto LABEL_81;
          }

          OUTLINED_FUNCTION_482();
          if (v56)
          {
            v53 = v55;
          }

          if (v54 == 1)
          {
            if (v52)
            {
              if (v53 != 1)
              {
                goto LABEL_81;
              }
            }

            else if (v53)
            {
              goto LABEL_81;
            }
          }

          else if (v53 != v52)
          {
            goto LABEL_81;
          }

          OUTLINED_FUNCTION_573();
          sub_1B8D92024();
          sub_1B8D92024();
          v57 = OUTLINED_FUNCTION_207();
          OUTLINED_FUNCTION_98(v57, v58);
          if (v33)
          {
            OUTLINED_FUNCTION_57(v5 + v39);
            if (!v33)
            {
              goto LABEL_79;
            }

            v59 = OUTLINED_FUNCTION_511();
            sub_1B8D9207C(v59, v60, &qword_1B964D630);
            v34 = v77;
          }

          else
          {
            sub_1B8D92024();
            OUTLINED_FUNCTION_57(v5 + v39);
            if (v61)
            {
              OUTLINED_FUNCTION_345();
              sub_1B8D745F8();
LABEL_79:
              sub_1B8D9207C(v5, &qword_1EBAB8E38, &qword_1B96CD870);
LABEL_81:
              sub_1B8D745F8();
              OUTLINED_FUNCTION_197();
              sub_1B8D745F8();
              goto LABEL_82;
            }

            OUTLINED_FUNCTION_254();
            OUTLINED_FUNCTION_683();
            sub_1B8D920D4(v62);
            if (*v74 != COERCE_DOUBLE(0x7000F8D40))
            {
              sub_1B8D745F8();
              OUTLINED_FUNCTION_629();
              sub_1B8D9207C(v5, &qword_1EBAB8E30, &qword_1B964D630);
              goto LABEL_81;
            }

            sub_1B964C2B0();
            OUTLINED_FUNCTION_0_2();
            sub_1B8D5C8D0(&qword_1EBAB3B38, v63, MEMORY[0x1E69AAC10]);
            v64 = OUTLINED_FUNCTION_395();
            OUTLINED_FUNCTION_713(v64);
            OUTLINED_FUNCTION_365();
            sub_1B8D745F8();
            OUTLINED_FUNCTION_243_0();
            sub_1B8D745F8();
            sub_1B8D9207C(v5, &qword_1EBAB8E30, &qword_1B964D630);
            v9 = v71;
            v8 = v72;
            v34 = v77;
            if ((v39 & 1) == 0)
            {
              goto LABEL_81;
            }
          }

          v65 = *(v7 + 64) == *(v6 + 64) && *(v7 + 72) == *(v6 + 72);
          if (!v65 && (sub_1B964C9F0() & 1) == 0)
          {
            goto LABEL_81;
          }

          v66 = *(v7 + 80) == *(v6 + 80) && *(v7 + 88) == *(v6 + 88);
          if (!v66 && (sub_1B964C9F0() & 1) == 0)
          {
            goto LABEL_81;
          }

          sub_1B964C2B0();
          OUTLINED_FUNCTION_0_2();
          sub_1B8D5C8D0(&qword_1EBAB3B38, v67, MEMORY[0x1E69AAC10]);
          v68 = OUTLINED_FUNCTION_429();
          sub_1B8D745F8();
          OUTLINED_FUNCTION_245();
          sub_1B8D745F8();
          if ((v68 & 1) == 0)
          {
            goto LABEL_82;
          }

          if (v76 == ++v36)
          {
            goto LABEL_74;
          }
        }

        __break(1u);
LABEL_85:
        __break(1u);
        break;
      }

LABEL_74:
      OUTLINED_FUNCTION_524();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v69, MEMORY[0x1E69AAC10]);
      OUTLINED_FUNCTION_613();
      OUTLINED_FUNCTION_594();
      v70 = sub_1B964C850();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_243_0();
      sub_1B8D745F8();
      if (v70)
      {
        v23 = v78 + 1;
        v26 = v73;
        if (v78 + 1 != v80)
        {
          continue;
        }
      }

      goto LABEL_83;
    }

    __break(1u);
  }

  else
  {
LABEL_83:
    OUTLINED_FUNCTION_177();
    OUTLINED_FUNCTION_283();
  }
}

uint64_t sub_1B8D75790(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return OUTLINED_FUNCTION_228();
  }

  if (!v2 || result == a2)
  {
    return OUTLINED_FUNCTION_229();
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

void sub_1B8D7590C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_284();
  v8 = OUTLINED_FUNCTION_105();
  v10 = v9(v8);
  v11 = OUTLINED_FUNCTION_18_0(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_15_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_27_1();
  if (v16 && v7 && v6 != v3)
  {
    OUTLINED_FUNCTION_26_0();
    while (1)
    {
      OUTLINED_FUNCTION_255();
      v13 = OUTLINED_FUNCTION_113();
      sub_1B8D745A4(v13);
      OUTLINED_FUNCTION_131_0();
      v16 = v16 && v14 == v15;
      if (!v16 && (sub_1B964C9F0() & 1) == 0 || *(v5 + 16) != *(v4 + 16) || *(v5 + 20) != *(v4 + 20))
      {
        break;
      }

      v17 = *(v5 + 24);
      v18 = *(v4 + 24);
      if (*(v4 + 32) == 1)
      {
        if (v18)
        {
          if (v18 == 1)
          {
            if (v17 != 1)
            {
              break;
            }
          }

          else if (v17 != 2)
          {
            break;
          }
        }

        else if (v17)
        {
          break;
        }
      }

      else if (v17 != v18)
      {
        break;
      }

      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v19, MEMORY[0x1E69AAC10]);
      v20 = OUTLINED_FUNCTION_167();
      OUTLINED_FUNCTION_202();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_195();
      sub_1B8D745F8();
      if (v20)
      {
        OUTLINED_FUNCTION_39_0();
        if (!v16)
        {
          continue;
        }
      }

      goto LABEL_29;
    }

    OUTLINED_FUNCTION_202();
    sub_1B8D745F8();
    OUTLINED_FUNCTION_195();
    sub_1B8D745F8();
  }

LABEL_29:
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_283();
}

void sub_1B8D75B18(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  v5 = OUTLINED_FUNCTION_94();
  type metadata accessor for Apple_Parsec_Feedback_V2_Value.OneOf_Kind(v5);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_300(v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9158, &qword_1B964D940);
  OUTLINED_FUNCTION_183(v8);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_53(v10, v27);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9160, &qword_1B964D948);
  OUTLINED_FUNCTION_36(v11);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  v13 = OUTLINED_FUNCTION_35();
  type metadata accessor for Apple_Parsec_Feedback_V2_Value(v13);
  OUTLINED_FUNCTION_19_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_97();
  v16 = *(v3 + 16);
  OUTLINED_FUNCTION_192();
  if (!v22 || !v16 || v3 == v2)
  {
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_157(v17);
  while (1)
  {
    v18 = OUTLINED_FUNCTION_424();
    sub_1B8D745A4(v18);
    v19 = OUTLINED_FUNCTION_491();
    sub_1B8D745A4(v19);
    OUTLINED_FUNCTION_286();
    OUTLINED_FUNCTION_242_0();
    sub_1B8D92024();
    OUTLINED_FUNCTION_548();
    OUTLINED_FUNCTION_42(v4);
    if (!v22)
    {
      break;
    }

    OUTLINED_FUNCTION_42(v4 + v2);
    if (!v22)
    {
      goto LABEL_19;
    }

    v20 = OUTLINED_FUNCTION_186();
    sub_1B8D9207C(v20, v21, &qword_1B964D940);
LABEL_13:
    OUTLINED_FUNCTION_630();
    OUTLINED_FUNCTION_0_2();
    sub_1B8D5C8D0(&qword_1EBAB3B38, v26, MEMORY[0x1E69AAC10]);
    OUTLINED_FUNCTION_688();
    v2 = sub_1B964C850();
    sub_1B8D745F8();
    OUTLINED_FUNCTION_502();
    sub_1B8D745F8();
    if (v2)
    {
      OUTLINED_FUNCTION_162();
      OUTLINED_FUNCTION_194();
      if (!v22)
      {
        continue;
      }
    }

    goto LABEL_21;
  }

  OUTLINED_FUNCTION_202();
  OUTLINED_FUNCTION_548();
  OUTLINED_FUNCTION_42(v4 + v2);
  if (!v22)
  {
    OUTLINED_FUNCTION_254();
    OUTLINED_FUNCTION_459();
    sub_1B8D920D4(v23);
    OUTLINED_FUNCTION_488();
    static Apple_Parsec_Feedback_V2_Value.OneOf_Kind.== infix(_:_:)();
    v25 = v24;
    sub_1B8D745F8();
    OUTLINED_FUNCTION_472();
    sub_1B8D745F8();
    sub_1B8D9207C(v4, &qword_1EBAB9158, &qword_1B964D940);
    if ((v25 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_13;
  }

  OUTLINED_FUNCTION_297();
  sub_1B8D745F8();
LABEL_19:
  sub_1B8D9207C(v4, &qword_1EBAB9160, &qword_1B964D948);
LABEL_20:
  sub_1B8D745F8();
  OUTLINED_FUNCTION_218();
  sub_1B8D745F8();
LABEL_21:
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_283();
}

void sub_1B8D75EEC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  v6 = OUTLINED_FUNCTION_191_0();
  type metadata accessor for Searchfoundation_RFColor(v6);
  OUTLINED_FUNCTION_46();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_212_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DB8, &unk_1B96D9DC0);
  OUTLINED_FUNCTION_183(v8);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_164();
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DC0, &unk_1B964D5C0);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_158(v11);
  v12 = type metadata accessor for Searchfoundation_RFMapMarker.OneOf_Value(0);
  v13 = OUTLINED_FUNCTION_36(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_484(v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DC8, &unk_1B96DBC80);
  OUTLINED_FUNCTION_183(v15);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_84(v17, v53);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8DD0, &qword_1B964D5D0);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v18);
  v19 = OUTLINED_FUNCTION_151();
  type metadata accessor for Searchfoundation_RFMapMarker(v19);
  OUTLINED_FUNCTION_19_0();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_33_1();
  OUTLINED_FUNCTION_206();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_107();
  v22 = *(v2 + 16);
  if (v22 != *(v3 + 16) || !v22 || v2 == v3)
  {
    goto LABEL_29;
  }

  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_324();
  v55 = v24;
  v56 = v5;
  v25 = v57;
  while (1)
  {
    v60 = v23;
    sub_1B8D745A4(v23);
    OUTLINED_FUNCTION_717(v4);
    v26 = *(v59 + 48);
    OUTLINED_FUNCTION_606();
    OUTLINED_FUNCTION_635();
    OUTLINED_FUNCTION_635();
    v27 = OUTLINED_FUNCTION_443();
    OUTLINED_FUNCTION_178(v27, v28, v61);
    if (v31)
    {
      OUTLINED_FUNCTION_178(v5 + v26, 1, v61);
      if (!v31)
      {
        goto LABEL_24;
      }

      v29 = OUTLINED_FUNCTION_227();
      sub_1B8D9207C(v29, v30, &unk_1B96DBC80);
    }

    else
    {
      OUTLINED_FUNCTION_635();
      OUTLINED_FUNCTION_178(v5 + v26, 1, v61);
      if (v31)
      {
        sub_1B8D745F8();
LABEL_24:
        v50 = &qword_1EBAB8DD0;
        v51 = &qword_1B964D5D0;
        v52 = v5;
        goto LABEL_27;
      }

      v32 = OUTLINED_FUNCTION_471();
      sub_1B8D920D4(v32);
      OUTLINED_FUNCTION_246();
      static Searchfoundation_RFMapMarker.OneOf_Value.== infix(_:_:)();
      v54 = v33;
      sub_1B8D745F8();
      sub_1B8D745F8();
      v34 = OUTLINED_FUNCTION_227();
      sub_1B8D9207C(v34, v35, &unk_1B96DBC80);
      if ((v54 & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    v36 = *(v58 + 48);
    sub_1B8D92024();
    sub_1B8D92024();
    v37 = OUTLINED_FUNCTION_493();
    OUTLINED_FUNCTION_77(v37, v38);
    if (!v31)
    {
      break;
    }

    OUTLINED_FUNCTION_32(v25 + v36);
    if (!v31)
    {
      goto LABEL_26;
    }

    v39 = OUTLINED_FUNCTION_182();
    sub_1B8D9207C(v39, v40, &unk_1B96D9DC0);
LABEL_19:
    OUTLINED_FUNCTION_639();
    OUTLINED_FUNCTION_0_2();
    sub_1B8D5C8D0(&qword_1EBAB3B38, v48, MEMORY[0x1E69AAC10]);
    v49 = sub_1B964C850();
    sub_1B8D745F8();
    OUTLINED_FUNCTION_2();
    sub_1B8D745F8();
    if (v49)
    {
      v5 = v56;
      v4 += v55;
      v23 = v60 + v55;
      if (--v22)
      {
        continue;
      }
    }

    goto LABEL_29;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_32(v25 + v36);
  if (!v41)
  {
    v42 = OUTLINED_FUNCTION_615();
    sub_1B8D920D4(v42);
    v43 = OUTLINED_FUNCTION_486();
    v45 = static Searchfoundation_RFColor.== infix(_:_:)(v43, v44);
    v25 = v57;
    sub_1B8D745F8();
    OUTLINED_FUNCTION_2();
    sub_1B8D745F8();
    v46 = OUTLINED_FUNCTION_182();
    sub_1B8D9207C(v46, v47, &unk_1B96D9DC0);
    if ((v45 & 1) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_19;
  }

  OUTLINED_FUNCTION_510();
  sub_1B8D745F8();
LABEL_26:
  v50 = &qword_1EBAB8DC0;
  v51 = &unk_1B964D5C0;
  v52 = v25;
LABEL_27:
  sub_1B8D9207C(v52, v50, v51);
LABEL_28:
  sub_1B8D745F8();
  OUTLINED_FUNCTION_721();
LABEL_29:
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_283();
}

void sub_1B8D7650C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  v7 = OUTLINED_FUNCTION_64();
  type metadata accessor for Searchfoundation_LatLng(v7);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_1();
  if (v10 && v6 && v5 != v2)
  {
    OUTLINED_FUNCTION_3_2();
    while (1)
    {
      v11 = OUTLINED_FUNCTION_186();
      sub_1B8D745A4(v11);
      v12 = OUTLINED_FUNCTION_196();
      sub_1B8D745A4(v12);
      if (*v4 != *v3 || v4[1] != v3[1])
      {
        break;
      }

      OUTLINED_FUNCTION_517();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v13, MEMORY[0x1E69AAC10]);
      v14 = OUTLINED_FUNCTION_101();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_199();
      sub_1B8D745F8();
      if (v14)
      {
        OUTLINED_FUNCTION_7_1();
        if (!v10)
        {
          continue;
        }
      }

      goto LABEL_14;
    }

    sub_1B8D745F8();
    OUTLINED_FUNCTION_182();
    sub_1B8D745F8();
  }

LABEL_14:
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_283();
}

void sub_1B8D766BC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  v8 = OUTLINED_FUNCTION_64();
  type metadata accessor for Searchfoundation_HashBucketDetail.HashDetail(v8);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_0();
  if (v14 && v6 && v5 != v2)
  {
    OUTLINED_FUNCTION_45();
    OUTLINED_FUNCTION_289();
    while (1)
    {
      v11 = OUTLINED_FUNCTION_540();
      sub_1B8D745A4(v11);
      if (v7 == v6)
      {
        break;
      }

      OUTLINED_FUNCTION_522();
      OUTLINED_FUNCTION_74_0();
      v14 = v14 && v12 == v13;
      if (!v14 && (sub_1B964C9F0() & 1) == 0 || (OUTLINED_FUNCTION_477(), !v14) || (OUTLINED_FUNCTION_125(), !v14))
      {
LABEL_49:
        sub_1B8D745F8();
        OUTLINED_FUNCTION_182();
        sub_1B8D745F8();
        goto LABEL_50;
      }

      if (v15)
      {
        v18 = v16 == v17;
      }

      else
      {
        v18 = 1;
      }

      if (!v18)
      {
        v22 = (v16 + 32);
        v23 = (v17 + 40);
        while (v15)
        {
          v25 = *v22;
          v22 += 2;
          v24 = v25;
          v26 = *(v23 - 1);
          if (*v23 == 1)
          {
            switch(v26)
            {
              case 1:
                if (v24 != 1)
                {
                  goto LABEL_49;
                }

                goto LABEL_38;
              case 2:
                if (v24 != 2)
                {
                  goto LABEL_49;
                }

                goto LABEL_38;
              case 3:
                if (v24 != 3)
                {
                  goto LABEL_49;
                }

                goto LABEL_38;
              case 4:
                if (v24 != 4)
                {
                  goto LABEL_49;
                }

                goto LABEL_38;
              case 5:
                if (v24 != 5)
                {
                  goto LABEL_49;
                }

                goto LABEL_38;
              default:
                if (v24)
                {
                  goto LABEL_49;
                }

                goto LABEL_38;
            }
          }

          if (v24 != v26)
          {
            goto LABEL_49;
          }

LABEL_38:
          v23 += 16;
          if (!--v15)
          {
            goto LABEL_21;
          }
        }

        __break(1u);
        break;
      }

LABEL_21:
      OUTLINED_FUNCTION_587();
      if (!v14)
      {
        goto LABEL_49;
      }

      v19 = *(v4 + 40) == *(v3 + 40) && *(v4 + 48) == *(v3 + 48);
      if (!v19 && (sub_1B964C9F0() & 1) == 0)
      {
        goto LABEL_49;
      }

      OUTLINED_FUNCTION_723();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v20, MEMORY[0x1E69AAC10]);
      v21 = OUTLINED_FUNCTION_153();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_1_0();
      sub_1B8D745F8();
      if (v21)
      {
        OUTLINED_FUNCTION_262();
        if (!v14)
        {
          continue;
        }
      }

      goto LABEL_50;
    }

    __break(1u);
  }

  else
  {
LABEL_50:
    OUTLINED_FUNCTION_177();
    OUTLINED_FUNCTION_283();
  }
}

void sub_1B8D76954(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  v7 = OUTLINED_FUNCTION_64();
  type metadata accessor for Searchfoundation_DomainEngagementScore(v7);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_1();
  if (v10 && v6 && v5 != v2)
  {
    OUTLINED_FUNCTION_3_2();
    while (1)
    {
      v11 = OUTLINED_FUNCTION_186();
      sub_1B8D745A4(v11);
      v12 = OUTLINED_FUNCTION_196();
      sub_1B8D745A4(v12);
      OUTLINED_FUNCTION_597(*v4);
      v13 = Searchfoundation_EngagementDomain.rawValue.getter();
      if (v13 != Searchfoundation_EngagementDomain.rawValue.getter())
      {
        break;
      }

      OUTLINED_FUNCTION_553();
      if (!v10)
      {
        break;
      }

      OUTLINED_FUNCTION_586_0();
      if (!v10 || *(v4 + 20) != *(v3 + 20))
      {
        break;
      }

      OUTLINED_FUNCTION_547();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v14, MEMORY[0x1E69AAC10]);
      v15 = OUTLINED_FUNCTION_101();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_199();
      sub_1B8D745F8();
      if (v15)
      {
        OUTLINED_FUNCTION_7_1();
        if (!v10)
        {
          continue;
        }
      }

      goto LABEL_18;
    }

    sub_1B8D745F8();
    OUTLINED_FUNCTION_182();
    sub_1B8D745F8();
  }

LABEL_18:
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_283();
}

void sub_1B8D76B34(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  v8 = OUTLINED_FUNCTION_64();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AppVocabularyConcept(v8);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_0();
  if (v16 && v6 && v5 != v2)
  {
    OUTLINED_FUNCTION_11_1(v11);
    while (1)
    {
      v12 = v5 * v7;
      v13 = OUTLINED_FUNCTION_147();
      sub_1B8D745A4(v13);
      if (v7 == v6)
      {
        break;
      }

      OUTLINED_FUNCTION_522();
      OUTLINED_FUNCTION_74_0();
      v16 = v16 && v14 == v15;
      if (!v16 && (sub_1B964C9F0() & 1) == 0 || (OUTLINED_FUNCTION_95_0(), !v16))
      {
LABEL_33:
        sub_1B8D745F8();
        OUTLINED_FUNCTION_182();
        sub_1B8D745F8();
        goto LABEL_34;
      }

      if (v12)
      {
        v19 = v18 == v17;
      }

      else
      {
        v19 = 1;
      }

      if (!v19)
      {
        OUTLINED_FUNCTION_299();
        while (v12)
        {
          OUTLINED_FUNCTION_109();
          v22 = v16 && v20 == v21;
          if (!v22 && (sub_1B964C9F0() & 1) == 0)
          {
            goto LABEL_33;
          }

          OUTLINED_FUNCTION_108();
          if (v16)
          {
            goto LABEL_27;
          }
        }

        __break(1u);
        break;
      }

LABEL_27:
      if (*(v4 + 24) != *(v3 + 24))
      {
        goto LABEL_33;
      }

      OUTLINED_FUNCTION_636();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v23, MEMORY[0x1E69AAC10]);
      v24 = OUTLINED_FUNCTION_153();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_1_0();
      sub_1B8D745F8();
      if (v24)
      {
        OUTLINED_FUNCTION_262();
        if (!v16)
        {
          continue;
        }
      }

      goto LABEL_34;
    }

    __break(1u);
  }

  else
  {
LABEL_34:
    OUTLINED_FUNCTION_177();
    OUTLINED_FUNCTION_283();
  }
}

void sub_1B8D76D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_284();
  a19 = v28;
  a20 = v29;
  v30 = OUTLINED_FUNCTION_94();
  type metadata accessor for Searchfoundation_ButtonItemAppearance(v30);
  OUTLINED_FUNCTION_46();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_212_0();
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E78, &unk_1B96CA0F0);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_139();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E80, &qword_1B964D680);
  v34 = OUTLINED_FUNCTION_183(v33);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_44_0();
  v215 = v35;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_266_0();
  v223 = v37;
  v38 = OUTLINED_FUNCTION_201();
  v218 = type metadata accessor for Searchfoundation_ButtonItem.OneOf_Value(v38);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_62();
  v42 = v41 - v40;
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E88, &qword_1B964D688);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_185();
  OUTLINED_FUNCTION_247_0(v44);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E90, &qword_1B964D690);
  v46 = OUTLINED_FUNCTION_183(v45);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_438();
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v184 - v48;
  v225 = type metadata accessor for Searchfoundation_ButtonItem(0);
  OUTLINED_FUNCTION_30_1();
  v206 = v50;
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_563();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_211();
  v209 = type metadata accessor for Searchfoundation_Command(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_247_0(v54);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E98, &qword_1B964D698);
  OUTLINED_FUNCTION_183(v55);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_185();
  OUTLINED_FUNCTION_247_0(v57);
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EBAB8EA0, &unk_1B964D6A0);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_185();
  v212 = v59;
  v60 = OUTLINED_FUNCTION_201();
  v211 = type metadata accessor for Searchfoundation_Image(v60);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_247_0(v62);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_183(v63);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_185();
  OUTLINED_FUNCTION_247_0(v65);
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EB0, &qword_1B964D6B0);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_185();
  v214 = v67;
  v68 = OUTLINED_FUNCTION_201();
  v224 = type metadata accessor for Searchfoundation_CommandButtonItem(v68);
  OUTLINED_FUNCTION_30_1();
  v213 = v69;
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_44_0();
  v222 = v71;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_266_0();
  v221 = v73;
  v74 = OUTLINED_FUNCTION_201();
  type metadata accessor for Searchfoundation_InfoTuple(v74);
  OUTLINED_FUNCTION_19_0();
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_33_1();
  v220 = v76;
  OUTLINED_FUNCTION_206();
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_249();
  OUTLINED_FUNCTION_666();
  OUTLINED_FUNCTION_189_0();
  if (!v94 || !v79 || v22 == v21)
  {
    goto LABEL_97;
  }

  v190 = v78;
  v198 = v20;
  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_506();
  v197 = v80;
  v82 = *(v81 + 72);
  v189 = v23;
  v191 = v42;
  v192 = v26;
  v203 = v49;
  v83 = 0;
  v84 = v222;
  v85 = v221;
  v86 = v220;
  v87 = v219;
  v200 = v88;
  v188 = v89;
  v187 = v82;
  while (1)
  {
    v90 = OUTLINED_FUNCTION_494();
    sub_1B8D745A4(v90);
    if (v83 == v200)
    {
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
      return;
    }

    v91 = OUTLINED_FUNCTION_244(&v224);
    sub_1B8D745A4(v91);
    OUTLINED_FUNCTION_74_0();
    v94 = v94 && v92 == v93;
    if (!v94 && (sub_1B964C9F0() & 1) == 0)
    {
      goto LABEL_96;
    }

    v95 = v87[2];
    v96 = *(v95 + 16);
    v207 = *(v86 + 16);
    if (v96 != *(v207 + 16))
    {
      goto LABEL_96;
    }

    if (v96 && v95 != v207)
    {
      break;
    }

LABEL_68:
    OUTLINED_FUNCTION_568();
    if (!v94)
    {
      goto LABEL_96;
    }

    OUTLINED_FUNCTION_89();
    v175 = v94 && v173 == v174;
    if (!v175 && (sub_1B964C9F0() & 1) == 0)
    {
      goto LABEL_96;
    }

    OUTLINED_FUNCTION_621();
    OUTLINED_FUNCTION_0_2();
    sub_1B8D5C8D0(&qword_1EBAB3B38, v176, MEMORY[0x1E69AAC10]);
    v177 = OUTLINED_FUNCTION_181();
    OUTLINED_FUNCTION_333();
    sub_1B8D745F8();
    OUTLINED_FUNCTION_182();
    sub_1B8D745F8();
    if ((v177 & 1) != 0 && ++v83 != v200)
    {
      continue;
    }

    goto LABEL_97;
  }

  OUTLINED_FUNCTION_499();
  OUTLINED_FUNCTION_93();
  v195 = v95 + v98;
  v194 = v207 + v98;
  v186 = v83;
  v185 = v95;
  v184 = v99;
  while (1)
  {
    if (v97 >= *(v95 + 16))
    {
      goto LABEL_99;
    }

    OUTLINED_FUNCTION_499();
    v102 = v101;
    v103 = *(v100 + 72) * v101;
    OUTLINED_FUNCTION_340();
    v104 = OUTLINED_FUNCTION_244(&v222);
    sub_1B8D745A4(v104);
    v105 = *(v207 + 16);
    v196 = v102;
    if (v102 >= v105)
    {
      goto LABEL_100;
    }

    OUTLINED_FUNCTION_340();
    v106 = OUTLINED_FUNCTION_244(&v221);
    sub_1B8D745A4(v106);
    OUTLINED_FUNCTION_447();
    OUTLINED_FUNCTION_513();
    sub_1B8D92024();
    OUTLINED_FUNCTION_577();
    v107 = OUTLINED_FUNCTION_256();
    OUTLINED_FUNCTION_81(v107, v108);
    if (v94)
    {
      OUTLINED_FUNCTION_37_0(v102 + v103);
      if (!v94)
      {
        goto LABEL_87;
      }

      v109 = OUTLINED_FUNCTION_303();
      sub_1B8D9207C(v109, v110, &unk_1B96B77D0);
    }

    else
    {
      OUTLINED_FUNCTION_600();
      sub_1B8D92024();
      OUTLINED_FUNCTION_37_0(v102 + v103);
      if (v111)
      {
        OUTLINED_FUNCTION_510();
        sub_1B8D745F8();
LABEL_87:
        v180 = &qword_1EBAB8EB0;
        v181 = &qword_1B964D6B0;
        goto LABEL_90;
      }

      sub_1B8D920D4(v102 + v103);
      OUTLINED_FUNCTION_656();
      if (!v94)
      {

        OUTLINED_FUNCTION_543();
        sub_1B94C6890();
        OUTLINED_FUNCTION_649();

        if ((&qword_1EBAB8EA8 & 1) == 0)
        {
          sub_1B8D745F8();
          OUTLINED_FUNCTION_444();
          sub_1B8D745F8();
          v180 = &qword_1EBAB8EA8;
          v181 = &unk_1B96B77D0;
          v183 = &a9;
LABEL_93:
          v182 = *(v183 - 32);
          goto LABEL_94;
        }
      }

      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v112, MEMORY[0x1E69AAC10]);
      OUTLINED_FUNCTION_425();
      v113 = sub_1B964C850();
      v102 = type metadata accessor for Searchfoundation_Image;
      sub_1B8D745F8();
      OUTLINED_FUNCTION_622();
      sub_1B8D9207C(v214, &qword_1EBAB8EA8, &unk_1B96B77D0);
      if ((v113 & 1) == 0)
      {
        goto LABEL_95;
      }
    }

    OUTLINED_FUNCTION_210();
    v116 = v94 && v114 == v115;
    if (!v116 && (sub_1B964C9F0() & 1) == 0)
    {
      goto LABEL_95;
    }

    OUTLINED_FUNCTION_359();
    v118 = *(v117 + 48);
    OUTLINED_FUNCTION_513();
    v87 = &qword_1EBAB8E98;
    sub_1B8D92024();
    OUTLINED_FUNCTION_577();
    v119 = OUTLINED_FUNCTION_256();
    OUTLINED_FUNCTION_81(v119, v120);
    if (!v94)
    {
      OUTLINED_FUNCTION_600();
      sub_1B8D92024();
      OUTLINED_FUNCTION_37_0(v102 + v118);
      if (!v123)
      {
        sub_1B8D920D4(v102 + v118);
        OUTLINED_FUNCTION_656();
        if (v94 || (, , OUTLINED_FUNCTION_543(), sub_1B93EDA54(), OUTLINED_FUNCTION_649(), , (&qword_1EBAB8E98 & 1) != 0))
        {
          sub_1B964C2B0();
          OUTLINED_FUNCTION_0_2();
          sub_1B8D5C8D0(&qword_1EBAB3B38, v124, MEMORY[0x1E69AAC10]);
          OUTLINED_FUNCTION_425();
          v125 = sub_1B964C850();
          sub_1B8D745F8();
          OUTLINED_FUNCTION_622();
          sub_1B8D9207C(v212, &qword_1EBAB8E98, &qword_1B964D698);
          if ((v125 & 1) == 0)
          {
            goto LABEL_95;
          }

          goto LABEL_41;
        }

        sub_1B8D745F8();
        OUTLINED_FUNCTION_444();
        sub_1B8D745F8();
        v180 = &qword_1EBAB8E98;
        v181 = &qword_1B964D698;
        v183 = &v232;
        goto LABEL_93;
      }

      OUTLINED_FUNCTION_510();
      sub_1B8D745F8();
LABEL_89:
      v180 = &dword_1EBAB8EA0;
      v181 = &unk_1B964D6A0;
LABEL_90:
      v182 = v102;
LABEL_94:
      sub_1B8D9207C(v182, v180, v181);
      goto LABEL_95;
    }

    OUTLINED_FUNCTION_37_0(v102 + v118);
    if (!v94)
    {
      goto LABEL_89;
    }

    v121 = OUTLINED_FUNCTION_303();
    sub_1B8D9207C(v121, v122, &qword_1B964D698);
LABEL_41:
    v126 = *(v85 + 16);
    v127 = *(v84 + 16);
    v128 = *(v126 + 16);
    if (v128 != *(v127 + 16))
    {
      goto LABEL_95;
    }

    if (v128 && v126 != v127)
    {
      break;
    }

LABEL_64:
    if (*(v85 + 24) != *(v84 + 24) || *(v85 + 32) != *(v84 + 32))
    {
      goto LABEL_95;
    }

    OUTLINED_FUNCTION_621();
    OUTLINED_FUNCTION_0_2();
    sub_1B8D5C8D0(&qword_1EBAB3B38, v171, MEMORY[0x1E69AAC10]);
    OUTLINED_FUNCTION_613();
    OUTLINED_FUNCTION_435();
    v172 = sub_1B964C850();
    sub_1B8D745F8();
    OUTLINED_FUNCTION_629();
    v86 = v220;
    OUTLINED_FUNCTION_293();
    v83 = v186;
    v95 = v185;
    if ((v172 & 1) == 0)
    {
      goto LABEL_96;
    }

    v97 = v196 + 1;
    if ((v196 + 1) == v184)
    {
      goto LABEL_68;
    }
  }

  OUTLINED_FUNCTION_96();
  v87 = (v129 + v130);
  v132 = v131 + v130;
  v199 = *(v133 + 72);
  v205 = v27;
  v201 = v24;
  v202 = v25;
  while (2)
  {
    OUTLINED_FUNCTION_337();
    v134 = OUTLINED_FUNCTION_1_0();
    sub_1B8D745A4(v134);
    OUTLINED_FUNCTION_337();
    v135 = OUTLINED_FUNCTION_236();
    sub_1B8D745A4(v135);
    v136 = *(v225 + 20);
    v137 = *(v25 + v136);
    v138 = *(v24 + v136);
    if (v137 == v138)
    {
      goto LABEL_62;
    }

    v204 = v87;
    v139 = OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__value;
    OUTLINED_FUNCTION_521(v137 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__value, &v231);
    OUTLINED_FUNCTION_655();
    sub_1B8D92024();
    OUTLINED_FUNCTION_521(v138 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__value, &v230);
    OUTLINED_FUNCTION_447();
    OUTLINED_FUNCTION_599();
    sub_1B8D92024();
    sub_1B8D92024();
    v140 = OUTLINED_FUNCTION_454();
    OUTLINED_FUNCTION_110(v140, v141);
    if (v94)
    {

      v142 = OUTLINED_FUNCTION_686();
      sub_1B8D9207C(v142, v143, &qword_1B964D690);
      OUTLINED_FUNCTION_75(v27 + v139);
      if (!v94)
      {
        goto LABEL_80;
      }

      v144 = OUTLINED_FUNCTION_233();
      sub_1B8D9207C(v144, v145, &qword_1B964D690);
    }

    else
    {
      OUTLINED_FUNCTION_694();
      sub_1B8D92024();
      OUTLINED_FUNCTION_75(v27 + v139);
      if (v146)
      {

        sub_1B8D9207C(v203, &qword_1EBAB8E90, &qword_1B964D690);
        OUTLINED_FUNCTION_465();
        sub_1B8D745F8();
LABEL_80:
        v178 = &qword_1EBAB8E88;
        v179 = &qword_1B964D688;
        v156 = v27;
        goto LABEL_83;
      }

      OUTLINED_FUNCTION_655();
      sub_1B8D920D4(v147);

      OUTLINED_FUNCTION_198();
      static Searchfoundation_ButtonItem.OneOf_Value.== infix(_:_:)();
      v149 = v148;
      sub_1B8D745F8();
      sub_1B8D9207C(v203, &qword_1EBAB8E90, &qword_1B964D690);
      sub_1B8D745F8();
      v150 = OUTLINED_FUNCTION_186();
      sub_1B8D9207C(v150, v151, &qword_1B964D690);
      OUTLINED_FUNCTION_667();
      if ((v149 & 1) == 0)
      {
        goto LABEL_84;
      }
    }

    OUTLINED_FUNCTION_521(v137 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__buttonAppearance, &v229);
    v24 = &qword_1B964D680;
    sub_1B8D92024();
    OUTLINED_FUNCTION_521(v138 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__buttonAppearance, &v228);
    OUTLINED_FUNCTION_447();
    OUTLINED_FUNCTION_694();
    OUTLINED_FUNCTION_549();
    OUTLINED_FUNCTION_549();
    v152 = OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_77(v152, v153);
    if (v94)
    {
      v154 = OUTLINED_FUNCTION_275();
      sub_1B8D9207C(v154, v155, &qword_1B964D680);
      OUTLINED_FUNCTION_32(&qword_1EBAB8E90 + &qword_1EBAB8E80);
      v156 = &qword_1EBAB8E90;
      if (!v94)
      {
        goto LABEL_82;
      }

      OUTLINED_FUNCTION_466();
      sub_1B8D9207C(v157, v158, v159);
      OUTLINED_FUNCTION_667();
LABEL_60:
      v165 = OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__uniqueID;
      OUTLINED_FUNCTION_521(v137 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__uniqueID, &v227);
      v166 = *(v137 + v165);
      v167 = OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__uniqueID;
      OUTLINED_FUNCTION_521(v138 + OBJC_IVAR____TtCV10PegasusAPI27Searchfoundation_ButtonItemP33_8B6B46006750B7327475329E07D4337013_StorageClass__uniqueID, &v226);
      v168 = *(v138 + v167);

      v94 = v166 == v168;
      v27 = v205;
      v84 = v222;
      v85 = v221;
      v87 = v204;
      if (!v94)
      {
        goto LABEL_85;
      }

LABEL_62:
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v169, MEMORY[0x1E69AAC10]);
      v25 = v202;
      OUTLINED_FUNCTION_257();
      v170 = sub_1B964C850();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_200();
      sub_1B8D745F8();
      if ((v170 & 1) == 0)
      {
        goto LABEL_95;
      }

      v132 += v199;
      v87 = (v87 + v199);
      if (!--v128)
      {
        goto LABEL_64;
      }

      continue;
    }

    break;
  }

  OUTLINED_FUNCTION_549();
  OUTLINED_FUNCTION_32(&qword_1EBAB8E90 + &qword_1EBAB8E80);
  if (!v160)
  {
    v24 = v215;
    OUTLINED_FUNCTION_655();
    sub_1B8D920D4(v161);
    OUTLINED_FUNCTION_467();
    static Searchfoundation_ButtonItemAppearance.== infix(_:_:)();
    v193 = v162;
    sub_1B8D745F8();
    sub_1B8D9207C(v223, &qword_1EBAB8E80, &qword_1B964D680);
    OUTLINED_FUNCTION_667();
    sub_1B8D745F8();
    v163 = OUTLINED_FUNCTION_502();
    sub_1B8D9207C(v163, v164, &qword_1B964D680);
    if ((v193 & 1) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_60;
  }

  sub_1B8D9207C(v223, &qword_1EBAB8E80, &qword_1B964D680);
  sub_1B8D745F8();
  v156 = &qword_1EBAB8E90;
LABEL_82:
  v178 = &qword_1EBAB8E78;
  v179 = &unk_1B96CA0F0;
LABEL_83:
  sub_1B8D9207C(v156, v178, v179);
  OUTLINED_FUNCTION_667();
LABEL_84:

LABEL_85:
  sub_1B8D745F8();
  OUTLINED_FUNCTION_718();
LABEL_95:
  sub_1B8D745F8();
  OUTLINED_FUNCTION_218();
  sub_1B8D745F8();
  OUTLINED_FUNCTION_293();
LABEL_96:
  OUTLINED_FUNCTION_333();
  sub_1B8D745F8();
  OUTLINED_FUNCTION_182();
  sub_1B8D745F8();
LABEL_97:
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_283();
}

void sub_1B8D77F8C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  v7 = OUTLINED_FUNCTION_64();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ContactAddress(v7);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_1();
  if (v14 && v6 && v5 != v2)
  {
    OUTLINED_FUNCTION_3_2();
    while (1)
    {
      v10 = OUTLINED_FUNCTION_186();
      sub_1B8D745A4(v10);
      v11 = OUTLINED_FUNCTION_196();
      sub_1B8D745A4(v11);
      OUTLINED_FUNCTION_74_0();
      v14 = v14 && v12 == v13;
      if (!v14 && (sub_1B964C9F0() & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_83_0();
      v17 = v14 && v15 == v16;
      if (!v17 && (sub_1B964C9F0() & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_89();
      v20 = v14 && v18 == v19;
      if (!v20 && (sub_1B964C9F0() & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_274();
      v23 = v14 && v21 == v22;
      if (!v23 && (sub_1B964C9F0() & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_451();
      v26 = v14 && v24 == v25;
      if (!v26 && (sub_1B964C9F0() & 1) == 0)
      {
        break;
      }

      v27 = *(v4 + 80) == *(v3 + 80) && *(v4 + 88) == *(v3 + 88);
      if (!v27 && (sub_1B964C9F0() & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_641();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v28, MEMORY[0x1E69AAC10]);
      v29 = OUTLINED_FUNCTION_101();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_199();
      sub_1B8D745F8();
      if (v29)
      {
        OUTLINED_FUNCTION_7_1();
        if (!v14)
        {
          continue;
        }
      }

      goto LABEL_42;
    }

    sub_1B8D745F8();
    OUTLINED_FUNCTION_182();
    sub_1B8D745F8();
  }

LABEL_42:
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_283();
}

void sub_1B8D78208(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  v8 = OUTLINED_FUNCTION_64();
  type metadata accessor for Kgqsapipb_LocaleBasedClaimValue(v8);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_0();
  if (v15 && v6 && v5 != v2)
  {
    OUTLINED_FUNCTION_11_1(v11);
    while (1)
    {
      v12 = OUTLINED_FUNCTION_147();
      sub_1B8D745A4(v12);
      if (v7 == v6)
      {
        break;
      }

      OUTLINED_FUNCTION_522();
      OUTLINED_FUNCTION_74_0();
      v15 = v15 && v13 == v14;
      if (!v15 && (sub_1B964C9F0() & 1) == 0)
      {
        goto LABEL_36;
      }

      OUTLINED_FUNCTION_83_0();
      v18 = v15 && v16 == v17;
      if (!v18 && (sub_1B964C9F0() & 1) == 0)
      {
        goto LABEL_36;
      }

      if (*(v4 + 32) != *(v3 + 32))
      {
        goto LABEL_36;
      }

      OUTLINED_FUNCTION_95_0();
      if (!v15)
      {
        goto LABEL_36;
      }

      if (v5 * v7 && v20 != v19)
      {
        OUTLINED_FUNCTION_299();
        while (1)
        {
          OUTLINED_FUNCTION_109();
          v23 = v15 && v21 == v22;
          if (!v23 && (sub_1B964C9F0() & 1) == 0)
          {
            break;
          }

          OUTLINED_FUNCTION_108();
          if (v15)
          {
            goto LABEL_30;
          }
        }

LABEL_36:
        sub_1B8D745F8();
        OUTLINED_FUNCTION_182();
        sub_1B8D745F8();
        goto LABEL_37;
      }

LABEL_30:
      sub_1B8DB0EA4();
      if ((v24 & 1) == 0)
      {
        goto LABEL_36;
      }

      OUTLINED_FUNCTION_723();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v25, MEMORY[0x1E69AAC10]);
      v26 = OUTLINED_FUNCTION_153();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_1_0();
      sub_1B8D745F8();
      if (v26)
      {
        OUTLINED_FUNCTION_262();
        if (!v15)
        {
          continue;
        }
      }

      goto LABEL_37;
    }

    __break(1u);
  }

  else
  {
LABEL_37:
    OUTLINED_FUNCTION_177();
    OUTLINED_FUNCTION_283();
  }
}

void sub_1B8D78434(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  v6 = OUTLINED_FUNCTION_64();
  type metadata accessor for Apple_Parsec_Feedback_V2_IntentInfo(v6);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_0();
  if (v14 && v4 && v3 != v2)
  {
    OUTLINED_FUNCTION_11_1(v9);
    while (1)
    {
      v10 = v3 * v5;
      v11 = OUTLINED_FUNCTION_147();
      sub_1B8D745A4(v11);
      if (v5 == v4)
      {
        break;
      }

      OUTLINED_FUNCTION_522();
      OUTLINED_FUNCTION_74_0();
      v14 = v14 && v12 == v13;
      if (!v14 && (sub_1B964C9F0() & 1) == 0 || (v15 = OUTLINED_FUNCTION_532(), sub_1B8D7DBBC(v15, v16, type metadata accessor for Apple_Parsec_Feedback_V2_ArgInfo), (v17 & 1) == 0) || (OUTLINED_FUNCTION_95_0(), !v14))
      {
LABEL_33:
        sub_1B8D745F8();
        OUTLINED_FUNCTION_182();
        sub_1B8D745F8();
        goto LABEL_34;
      }

      if (v10)
      {
        v20 = v19 == v18;
      }

      else
      {
        v20 = 1;
      }

      if (!v20)
      {
        OUTLINED_FUNCTION_299();
        while (v10)
        {
          OUTLINED_FUNCTION_109();
          v23 = v14 && v21 == v22;
          if (!v23 && (sub_1B964C9F0() & 1) == 0)
          {
            goto LABEL_33;
          }

          OUTLINED_FUNCTION_108();
          if (v14)
          {
            goto LABEL_28;
          }
        }

        __break(1u);
        break;
      }

LABEL_28:
      OUTLINED_FUNCTION_636();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v24, MEMORY[0x1E69AAC10]);
      v25 = OUTLINED_FUNCTION_153();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_1_0();
      sub_1B8D745F8();
      if (v25)
      {
        OUTLINED_FUNCTION_262();
        if (!v14)
        {
          continue;
        }
      }

      goto LABEL_34;
    }

    __break(1u);
  }

  else
  {
LABEL_34:
    OUTLINED_FUNCTION_177();
    OUTLINED_FUNCTION_283();
  }
}

void sub_1B8D787AC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  v6 = OUTLINED_FUNCTION_165();
  type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityID.OneOf_ID(v6);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_300(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90E0, &qword_1B964D8D0);
  OUTLINED_FUNCTION_183(v9);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_53(v11, v25);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90E8, &qword_1B964D8D8);
  OUTLINED_FUNCTION_36(v12);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  v14 = OUTLINED_FUNCTION_91();
  type metadata accessor for Apple_Parsec_Kg_V1alpha_EntityID(v14);
  OUTLINED_FUNCTION_19_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_55();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_273();
  if (v22 && v5 && v4 != v2)
  {
    OUTLINED_FUNCTION_60_0();
    OUTLINED_FUNCTION_157(v17);
    while (1)
    {
      v18 = OUTLINED_FUNCTION_292();
      sub_1B8D745A4(v18);
      v19 = OUTLINED_FUNCTION_371();
      sub_1B8D745A4(v19);
      OUTLINED_FUNCTION_111();
      sub_1B8D92024();
      OUTLINED_FUNCTION_270();
      OUTLINED_FUNCTION_42(v3);
      if (v22)
      {
        OUTLINED_FUNCTION_42(v3 + v2);
        if (!v22)
        {
          OUTLINED_FUNCTION_396();
          sub_1B8D745F8();
          OUTLINED_FUNCTION_197();
LABEL_19:
          sub_1B8D745F8();
          sub_1B8D9207C(v3, &qword_1EBAB90E8, &qword_1B964D8D8);
          break;
        }

        v20 = OUTLINED_FUNCTION_236();
        sub_1B8D9207C(v20, v21, &qword_1B964D8D0);
      }

      else
      {
        OUTLINED_FUNCTION_193();
        sub_1B8D92024();
        OUTLINED_FUNCTION_42(v3 + v2);
        if (v22)
        {
          sub_1B8D745F8();
          OUTLINED_FUNCTION_287();
          sub_1B8D745F8();
          OUTLINED_FUNCTION_297();
          goto LABEL_19;
        }

        OUTLINED_FUNCTION_282();
        OUTLINED_FUNCTION_488();
        static Apple_Parsec_Kg_V1alpha_EntityID.OneOf_ID.== infix(_:_:)();
        v2 = v23;
        sub_1B8D745F8();
        OUTLINED_FUNCTION_221();
        sub_1B8D745F8();
        sub_1B8D9207C(v3, &qword_1EBAB90E0, &qword_1B964D8D0);
        if ((v2 & 1) == 0)
        {
          OUTLINED_FUNCTION_396();
          sub_1B8D745F8();
          OUTLINED_FUNCTION_197();
          sub_1B8D745F8();
          break;
        }
      }

      OUTLINED_FUNCTION_496();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v24, MEMORY[0x1E69AAC10]);
      OUTLINED_FUNCTION_276();
      OUTLINED_FUNCTION_368();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_220();
      sub_1B8D745F8();
      if (v2)
      {
        OUTLINED_FUNCTION_85_0();
        if (!v22)
        {
          continue;
        }
      }

      break;
    }
  }

  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_283();
}

void sub_1B8D78B24(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  v5 = OUTLINED_FUNCTION_64();
  type metadata accessor for Searchfoundation_CoreSpotlightShareItem(v5);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_21();
  v7 = OUTLINED_FUNCTION_201();
  v8 = type metadata accessor for Searchfoundation_URLShareItem(v7);
  v9 = OUTLINED_FUNCTION_183(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_258();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EE8, &qword_1B96B9A30);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  v12 = OUTLINED_FUNCTION_87(v11, v49);
  v13 = type metadata accessor for Searchfoundation_ShareItem.OneOf_Value(v12);
  v14 = OUTLINED_FUNCTION_49(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_44_0();
  v54 = v15;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_682();
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_266_0();
  OUTLINED_FUNCTION_300(v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EF0, &qword_1B964D6F0);
  OUTLINED_FUNCTION_183(v19);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_169(v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EF8, &qword_1B964D6F8);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_53(v23, v50);
  type metadata accessor for Searchfoundation_ShareItem(0);
  OUTLINED_FUNCTION_19_0();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_61();
  OUTLINED_FUNCTION_675();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_575();
  v26 = *(v3 + 16);
  OUTLINED_FUNCTION_411();
  if (v35 && v26 && v3 != v2)
  {
    OUTLINED_FUNCTION_60_0();
    v28 = v3 + v27;
    OUTLINED_FUNCTION_324();
    v52 = v29;
    v30 = v53;
    while (1)
    {
      v31 = OUTLINED_FUNCTION_202();
      sub_1B8D745A4(v31);
      if (!v26)
      {
        break;
      }

      v55 = v26;
      v32 = OUTLINED_FUNCTION_507();
      sub_1B8D745A4(v32);
      OUTLINED_FUNCTION_500();
      v33 = v56;
      OUTLINED_FUNCTION_397();
      sub_1B8D92024();
      OUTLINED_FUNCTION_701();
      OUTLINED_FUNCTION_50(v56);
      if (v35)
      {
        OUTLINED_FUNCTION_50(v56 + v2);
        v34 = v56;
        if (!v35)
        {
          goto LABEL_40;
        }
      }

      else
      {
        OUTLINED_FUNCTION_199();
        sub_1B8D92024();
        OUTLINED_FUNCTION_50(v56 + v2);
        if (v35)
        {
          OUTLINED_FUNCTION_67_0();
          sub_1B8D745F8();
          v34 = v56;
LABEL_40:
          v47 = &qword_1EBAB8EF8;
          v48 = &qword_1B964D6F8;
          goto LABEL_44;
        }

        v36 = OUTLINED_FUNCTION_615();
        sub_1B8D920D4(v36);
        v37 = *(v51 + 48);
        sub_1B8D745A4(v30);
        OUTLINED_FUNCTION_702();
        OUTLINED_FUNCTION_544();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          OUTLINED_FUNCTION_329();
          sub_1B8D745A4(v57);
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            goto LABEL_42;
          }

          OUTLINED_FUNCTION_637();
          v38 = *v54 == *v37 && v54[1] == v37[1];
          v33 = v53;
          if (!v38 && (sub_1B964C9F0() & 1) == 0 || (v54[2] == v37[2] ? (v39 = v54[3] == v37[3]) : (v39 = 0), !v39 && (sub_1B964C9F0() & 1) == 0 || (v54[4] == v37[4] ? (v40 = v54[5] == v37[5]) : (v40 = 0), !v40 && (sub_1B964C9F0() & 1) == 0 || (OUTLINED_FUNCTION_642(), OUTLINED_FUNCTION_0_2(), sub_1B8D5C8D0(&qword_1EBAB3B38, v41, MEMORY[0x1E69AAC10]), (OUTLINED_FUNCTION_588() & 1) == 0))))
          {
            sub_1B8D745F8();
            OUTLINED_FUNCTION_311();
            sub_1B8D745F8();
            OUTLINED_FUNCTION_67_0();
            sub_1B8D745F8();
            goto LABEL_43;
          }

          sub_1B8D745F8();
          OUTLINED_FUNCTION_200();
          sub_1B8D745F8();
          OUTLINED_FUNCTION_67_0();
          sub_1B8D745F8();
        }

        else
        {
          OUTLINED_FUNCTION_329();
          sub_1B8D745A4(v57);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            OUTLINED_FUNCTION_510();
LABEL_42:
            sub_1B8D745F8();
            OUTLINED_FUNCTION_658();
            sub_1B8D9207C(v57, &qword_1EBAB8EE8, &qword_1B96B9A30);
LABEL_43:
            OUTLINED_FUNCTION_328();
            sub_1B8D745F8();
            OUTLINED_FUNCTION_526();
            v47 = &qword_1EBAB8EF0;
            v48 = &qword_1B964D6F0;
            v34 = v56;
LABEL_44:
            sub_1B8D9207C(v34, v47, v48);
            sub_1B8D745F8();
            OUTLINED_FUNCTION_432();
            sub_1B8D745F8();
            goto LABEL_45;
          }

          OUTLINED_FUNCTION_638();
          v42 = OUTLINED_FUNCTION_353();
          static Searchfoundation_URLShareItem.== infix(_:_:)(v42, v43);
          v45 = v44;
          sub_1B8D745F8();
          OUTLINED_FUNCTION_622();
          OUTLINED_FUNCTION_67_0();
          sub_1B8D745F8();
          OUTLINED_FUNCTION_658();
          if ((v45 & 1) == 0)
          {
            goto LABEL_43;
          }
        }

        OUTLINED_FUNCTION_328();
        sub_1B8D745F8();
        v30 = v33;
        OUTLINED_FUNCTION_526();
        v34 = v56;
      }

      sub_1B8D9207C(v34, &qword_1EBAB8EF0, &qword_1B964D6F0);
      OUTLINED_FUNCTION_551();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v46, MEMORY[0x1E69AAC10]);
      OUTLINED_FUNCTION_689();
      v2 = sub_1B964C850();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_514();
      sub_1B8D745F8();
      if (v2)
      {
        v26 = v55 - 1;
        v4 += v52;
        v28 += v52;
        if (v55 != 1)
        {
          continue;
        }
      }

      goto LABEL_45;
    }

    __break(1u);
  }

  else
  {
LABEL_45:
    OUTLINED_FUNCTION_177();
    OUTLINED_FUNCTION_283();
  }
}

void sub_1B8D79238(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  v6 = OUTLINED_FUNCTION_82_0();
  type metadata accessor for Searchfoundation_CommandReference(v6);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_487(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8D80, &unk_1B964D580);
  OUTLINED_FUNCTION_183(v9);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_88();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8D88, &qword_1B96CA730);
  OUTLINED_FUNCTION_49(v11);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  v13 = OUTLINED_FUNCTION_35();
  type metadata accessor for Searchfoundation_RFPreview(v13);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_52();
  if (v20 && v5 && v4 != v2)
  {
    OUTLINED_FUNCTION_58();
    OUTLINED_FUNCTION_564();
    v33 = v16;
    while (1)
    {
      v17 = OUTLINED_FUNCTION_198();
      sub_1B8D745A4(v17);
      if (!v5)
      {
        break;
      }

      v34 = v5;
      sub_1B8D745A4(v35);
      OUTLINED_FUNCTION_155();
      v20 = v20 && v18 == v19;
      if (!v20 && (sub_1B964C9F0() & 1) == 0)
      {
        goto LABEL_31;
      }

      OUTLINED_FUNCTION_450();
      OUTLINED_FUNCTION_576();
      OUTLINED_FUNCTION_645();
      OUTLINED_FUNCTION_42(v3);
      if (v20)
      {
        OUTLINED_FUNCTION_42(v3 + v2);
        if (!v20)
        {
          goto LABEL_29;
        }

        v21 = OUTLINED_FUNCTION_512();
        sub_1B8D9207C(v21, v22, &unk_1B964D580);
      }

      else
      {
        OUTLINED_FUNCTION_186();
        sub_1B8D92024();
        OUTLINED_FUNCTION_42(v3 + v2);
        if (v23)
        {
          OUTLINED_FUNCTION_222();
          sub_1B8D745F8();
LABEL_29:
          v31 = &qword_1EBAB8D88;
          v32 = &qword_1B96CA730;
          goto LABEL_30;
        }

        OUTLINED_FUNCTION_254();
        OUTLINED_FUNCTION_592();
        sub_1B8D920D4(v24);
        OUTLINED_FUNCTION_264_0();
        v27 = v20 && v25 == v26;
        if (!v27 && (sub_1B964C9F0() & 1) == 0)
        {
          sub_1B8D745F8();
          OUTLINED_FUNCTION_182();
          sub_1B8D745F8();
          v31 = &qword_1EBAB8D80;
          v32 = &unk_1B964D580;
LABEL_30:
          sub_1B8D9207C(v3, v31, v32);
LABEL_31:
          sub_1B8D745F8();
          OUTLINED_FUNCTION_197();
          sub_1B8D745F8();
          goto LABEL_32;
        }

        OUTLINED_FUNCTION_639();
        OUTLINED_FUNCTION_0_2();
        sub_1B8D5C8D0(&qword_1EBAB3B38, v28, MEMORY[0x1E69AAC10]);
        OUTLINED_FUNCTION_508();
        v29 = sub_1B964C850();
        sub_1B8D745F8();
        OUTLINED_FUNCTION_492();
        sub_1B8D745F8();
        sub_1B8D9207C(v3, &qword_1EBAB8D80, &unk_1B964D580);
        if ((v29 & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v30, MEMORY[0x1E69AAC10]);
      v2 = OUTLINED_FUNCTION_278();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_650();
      if (v2)
      {
        --v5;
        v35 += v33;
        v4 += v33;
        if (v34 != 1)
        {
          continue;
        }
      }

      goto LABEL_32;
    }

    __break(1u);
  }

  else
  {
LABEL_32:
    OUTLINED_FUNCTION_177();
    OUTLINED_FUNCTION_283();
  }
}

void sub_1B8D79668(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  v8 = OUTLINED_FUNCTION_82_0();
  v9 = type metadata accessor for Latencyinfopb_RootLatencyInfo(v8);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_62();
  v13 = (v12 - v11);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9220, &qword_1B965FDA0);
  OUTLINED_FUNCTION_183(v14);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_88();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9228, &unk_1B964DA10);
  OUTLINED_FUNCTION_36(v16);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_53(v18, v38);
  v19 = type metadata accessor for Latencyinfopb_DomainLatencyInfo(0);
  v20 = OUTLINED_FUNCTION_18_0(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_100();
  v22 = *(v6 + 16);
  OUTLINED_FUNCTION_192();
  if (!v30 || !v22 || v6 == v2)
  {
    goto LABEL_63;
  }

  OUTLINED_FUNCTION_60_0();
  v24 = v6 + v23;
  OUTLINED_FUNCTION_620();
  v39 = v25;
  v40 = v9;
  while (1)
  {
    v26 = OUTLINED_FUNCTION_544();
    sub_1B8D745A4(v26);
    v27 = OUTLINED_FUNCTION_292();
    sub_1B8D745A4(v27);
    v28 = *v4;
    if (*(v4 + 8) == 1)
    {
      v28 = qword_1B964E438[v28];
    }

    v29 = *v5;
    if (*(v5 + 8))
    {
      switch(v29)
      {
        case 1:
          if (v28 != 1)
          {
            goto LABEL_62;
          }

          goto LABEL_13;
        case 2:
          if (v28 != 2)
          {
            goto LABEL_62;
          }

          goto LABEL_13;
        case 3:
          if (v28 != 7)
          {
            goto LABEL_62;
          }

          goto LABEL_13;
        case 4:
          if (v28 != 8)
          {
            goto LABEL_62;
          }

          goto LABEL_13;
        case 5:
          if (v28 != 10)
          {
            goto LABEL_62;
          }

          goto LABEL_13;
        case 6:
          if (v28 != 13)
          {
            goto LABEL_62;
          }

          goto LABEL_13;
        case 7:
          if (v28 != 14)
          {
            goto LABEL_62;
          }

          goto LABEL_13;
        case 8:
          if (v28 != 16)
          {
            goto LABEL_62;
          }

          goto LABEL_13;
        case 9:
          if (v28 != 22)
          {
            goto LABEL_62;
          }

          goto LABEL_13;
        case 10:
          if (v28 != 23)
          {
            goto LABEL_62;
          }

          goto LABEL_13;
        case 11:
          if (v28 != 27)
          {
            goto LABEL_62;
          }

          goto LABEL_13;
        case 12:
          if (v28 != 42)
          {
            goto LABEL_62;
          }

          goto LABEL_13;
        default:
          if (v28)
          {
            goto LABEL_62;
          }

          goto LABEL_13;
      }
    }

    if (v28 != v29)
    {
      goto LABEL_62;
    }

LABEL_13:
    if (v4[2] != v5[2])
    {
      goto LABEL_62;
    }

    OUTLINED_FUNCTION_286();
    OUTLINED_FUNCTION_635();
    OUTLINED_FUNCTION_635();
    OUTLINED_FUNCTION_57(v41);
    if (!v30)
    {
      break;
    }

    OUTLINED_FUNCTION_57(v41 + v2);
    if (!v30)
    {
      OUTLINED_FUNCTION_325();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_200();
      goto LABEL_65;
    }

    sub_1B8D9207C(v41, &qword_1EBAB9220, &qword_1B965FDA0);
LABEL_32:
    OUTLINED_FUNCTION_546();
    OUTLINED_FUNCTION_0_2();
    sub_1B8D5C8D0(&qword_1EBAB3B38, v37, MEMORY[0x1E69AAC10]);
    v2 = sub_1B964C850();
    sub_1B8D745F8();
    OUTLINED_FUNCTION_196();
    sub_1B8D745F8();
    if (v2)
    {
      v7 += v39;
      v24 += v39;
      OUTLINED_FUNCTION_194();
      if (!v30)
      {
        continue;
      }
    }

    goto LABEL_63;
  }

  OUTLINED_FUNCTION_466();
  sub_1B8D92024();
  OUTLINED_FUNCTION_57(v41 + v2);
  if (!v30)
  {
    v31 = OUTLINED_FUNCTION_471();
    sub_1B8D920D4(v31);
    OUTLINED_FUNCTION_669();
    if (!v30 || v3[1] != v13[1] || (sub_1B8DB1D98(), (v32 & 1) == 0) || v3[3] != v13[3] || v3[4] != v13[4] || (v3[5] == v13[5] ? (v33 = v3[6] == v13[6]) : (v33 = 0), !v33 && (sub_1B964C9F0() & 1) == 0))
    {
      sub_1B8D745F8();
      OUTLINED_FUNCTION_526();
      sub_1B8D9207C(v41, &qword_1EBAB9220, &qword_1B965FDA0);
LABEL_62:
      sub_1B8D745F8();
      OUTLINED_FUNCTION_195();
      sub_1B8D745F8();
      goto LABEL_63;
    }

    v34 = *(v40 + 40);
    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_2();
    sub_1B8D5C8D0(&qword_1EBAB3B38, v35, MEMORY[0x1E69AAC10]);
    v36 = OUTLINED_FUNCTION_722(v3 + v34);
    sub_1B8D745F8();
    OUTLINED_FUNCTION_461();
    sub_1B8D745F8();
    sub_1B8D9207C(v41, &qword_1EBAB9220, &qword_1B965FDA0);
    if ((v36 & 1) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_32;
  }

  OUTLINED_FUNCTION_325();
  sub_1B8D745F8();
  OUTLINED_FUNCTION_200();
  sub_1B8D745F8();
LABEL_65:
  sub_1B8D745F8();
  sub_1B8D9207C(v41, &qword_1EBAB9228, &unk_1B964DA10);
LABEL_63:
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_283();
}

void sub_1B8D79C8C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  v8 = OUTLINED_FUNCTION_191_0();
  type metadata accessor for Electionspb_CongressInfo(v8);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_212_0();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9250, &qword_1B964DA38);
  OUTLINED_FUNCTION_183(v10);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_79();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9258, &unk_1B964DA40);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_173();
  v14 = type metadata accessor for Electionspb_Candidate(0);
  v68 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_265();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_211();
  type metadata accessor for Electionspb_PoliticalParty(0);
  OUTLINED_FUNCTION_19_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_33_1();
  v67 = v17;
  OUTLINED_FUNCTION_206();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_351();
  OUTLINED_FUNCTION_260();
  if (v28 && v20 && v2 != v3)
  {
    v64 = v19;
    v65 = v20;
    v61 = v12;
    v62 = v6;
    v57 = v4;
    v58 = v5;
    v21 = 0;
    OUTLINED_FUNCTION_60_0();
    v23 = v2 + v22;
    v25 = *(v24 + 72);
    v66 = v7;
    v59 = v25;
    v60 = v2 + v22;
    while (1)
    {
      OUTLINED_FUNCTION_323();
      sub_1B8D745A4(v23 + v25 * v21);
      if (v21 == v65)
      {
        goto LABEL_55;
      }

      v63 = v21;
      OUTLINED_FUNCTION_323();
      OUTLINED_FUNCTION_704();
      OUTLINED_FUNCTION_428();
      v28 = v28 && v26 == v27;
      if (!v28 && (sub_1B964C9F0() & 1) == 0)
      {
        goto LABEL_51;
      }

      OUTLINED_FUNCTION_357();
      v31 = v28 && v29 == v30;
      if (!v31 && (sub_1B964C9F0() & 1) == 0)
      {
        goto LABEL_51;
      }

      v32 = *(v66 + 32);
      v33 = *(v67 + 32);
      v34 = *(v32 + 16);
      if (v34 != *(v33 + 16))
      {
        goto LABEL_51;
      }

      if (v34 && v32 != v33)
      {
        break;
      }

LABEL_25:
      if (*(v66 + 40) != *(v67 + 40))
      {
        goto LABEL_51;
      }

      v42 = *(v64 + 36);
      v43 = *(v61 + 48);
      OUTLINED_FUNCTION_535();
      sub_1B8D92024();
      OUTLINED_FUNCTION_643(v67 + v42, v62 + v43);
      v44 = OUTLINED_FUNCTION_207();
      OUTLINED_FUNCTION_81(v44, v45);
      if (v28)
      {
        OUTLINED_FUNCTION_37_0(v62 + v43);
        if (!v28)
        {
          goto LABEL_49;
        }

        v46 = OUTLINED_FUNCTION_467();
        sub_1B8D9207C(v46, v47, &qword_1B964DA38);
      }

      else
      {
        OUTLINED_FUNCTION_643(v62, v58);
        OUTLINED_FUNCTION_37_0(v62 + v43);
        if (v48)
        {
          OUTLINED_FUNCTION_222();
          sub_1B8D745F8();
LABEL_49:
          v55 = &qword_1EBAB9258;
          v56 = &unk_1B964DA40;
          goto LABEL_50;
        }

        v49 = OUTLINED_FUNCTION_430();
        sub_1B8D920D4(v49);
        OUTLINED_FUNCTION_445();
        if (!v28 || (OUTLINED_FUNCTION_557(), !v28) || *(v58 + 8) != *(v57 + 8) || (OUTLINED_FUNCTION_553(), !v28) || (OUTLINED_FUNCTION_477(), !v28) || *(v58 + 17) != *(v57 + 17))
        {
          sub_1B8D745F8();
          OUTLINED_FUNCTION_182();
          sub_1B8D745F8();
          v55 = &qword_1EBAB9250;
          v56 = &qword_1B964DA38;
LABEL_50:
          sub_1B8D9207C(v62, v55, v56);
LABEL_51:
          sub_1B8D745F8();
          sub_1B8D745F8();
          goto LABEL_52;
        }

        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_2();
        sub_1B8D5C8D0(&qword_1EBAB3B38, v50, MEMORY[0x1E69AAC10]);
        v43 = OUTLINED_FUNCTION_181();
        sub_1B8D745F8();
        OUTLINED_FUNCTION_526();
        v51 = OUTLINED_FUNCTION_467();
        sub_1B8D9207C(v51, v52, &qword_1B964DA38);
        if ((v43 & 1) == 0)
        {
          goto LABEL_51;
        }
      }

      OUTLINED_FUNCTION_621();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v53, MEMORY[0x1E69AAC10]);
      v54 = OUTLINED_FUNCTION_518(v66 + v43);
      sub_1B8D745F8();
      OUTLINED_FUNCTION_375();
      sub_1B8D745F8();
      if (v54)
      {
        v21 = v63 + 1;
        v25 = v59;
        v23 = v60;
        if (v63 + 1 != v65)
        {
          continue;
        }
      }

      goto LABEL_52;
    }

    v35 = 0;
    OUTLINED_FUNCTION_93();
    v37 = v32 + v36;
    v38 = v33 + v36;
    while (v35 < *(v32 + 16))
    {
      v39 = *(v68 + 72) * v35;
      OUTLINED_FUNCTION_321();
      sub_1B8D745A4(v37 + v39);
      if (v35 >= *(v33 + 16))
      {
        goto LABEL_54;
      }

      OUTLINED_FUNCTION_321();
      sub_1B8D745A4(v38 + v39);
      OUTLINED_FUNCTION_603();
      static Electionspb_Candidate.== infix(_:_:)();
      v41 = v40;
      sub_1B8D745F8();
      OUTLINED_FUNCTION_200();
      sub_1B8D745F8();
      if ((v41 & 1) == 0)
      {
        goto LABEL_51;
      }

      if (v34 == ++v35)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
  }

  else
  {
LABEL_52:
    OUTLINED_FUNCTION_498();
    OUTLINED_FUNCTION_283();
  }
}

void sub_1B8D7A27C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_252();
  v6 = OUTLINED_FUNCTION_301(*MEMORY[0x1E69E9840]);
  type metadata accessor for Apple_Parsec_Search_V2_Rendering(v6);
  OUTLINED_FUNCTION_19_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_43();
  if (!v10 || !v2 || v5 == v3)
  {
    goto LABEL_93;
  }

  OUTLINED_FUNCTION_51_0(v9);
  while (1)
  {
    v11 = OUTLINED_FUNCTION_236();
    sub_1B8D745A4(v11);
    v12 = OUTLINED_FUNCTION_275();
    sub_1B8D745A4(v12);
    OUTLINED_FUNCTION_482();
    if (v17)
    {
      v14 = v16;
    }

    if (v15 == 1)
    {
      if (v13)
      {
        if (v14 != 1)
        {
          goto LABEL_92;
        }
      }

      else if (v14)
      {
        goto LABEL_92;
      }
    }

    else if (v14 != v13)
    {
      goto LABEL_92;
    }

    v19 = *(v4 + 16);
    v18 = *(v4 + 24);
    OUTLINED_FUNCTION_161();
    if (!v10)
    {
      switch(v22)
      {
        case 1:
          if (!__OFSUB__(v21, v20))
          {
            goto LABEL_30;
          }

LABEL_95:
          __break(1u);
LABEL_96:
          __break(1u);
LABEL_97:
          __break(1u);
LABEL_98:
          __break(1u);
LABEL_99:
          __break(1u);
          break;
        case 2:
          OUTLINED_FUNCTION_250();
          if (!v26)
          {
            goto LABEL_30;
          }

          goto LABEL_96;
        default:
          goto LABEL_30;
      }

LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
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
    }

    if (v20)
    {
      break;
    }

    OUTLINED_FUNCTION_421();
    v25 = v10 && v23 >= 3;
    if (!v25 || v19 || v18 != v24)
    {
      break;
    }

LABEL_87:
    OUTLINED_FUNCTION_546();
    OUTLINED_FUNCTION_0_2();
    sub_1B8D5C8D0(&qword_1EBAB3B38, v93, MEMORY[0x1E69AAC10]);
    v94 = OUTLINED_FUNCTION_180();
    sub_1B8D745F8();
    OUTLINED_FUNCTION_253();
    sub_1B8D745F8();
    if (v94)
    {
      OUTLINED_FUNCTION_56();
      if (!v10)
      {
        continue;
      }
    }

    goto LABEL_93;
  }

LABEL_30:
  OUTLINED_FUNCTION_160();
  switch(v32)
  {
    case 1:
      LODWORD(v33) = v29 - v19;
      if (__OFSUB__(v29, v19))
      {
        goto LABEL_94;
      }

      v33 = v33;
LABEL_39:
      if (v31 != v33)
      {
        goto LABEL_92;
      }

      if (v31 < 1)
      {
        goto LABEL_87;
      }

      break;
    case 2:
      OUTLINED_FUNCTION_420();
      if (!v26)
      {
        goto LABEL_39;
      }

      __break(1u);
LABEL_94:
      __break(1u);
      goto LABEL_95;
    case 3:
      if (v31)
      {
        goto LABEL_92;
      }

      goto LABEL_87;
    default:
      v33 = v27;
      goto LABEL_39;
  }

  v34 = v19 >> 32;
  switch(v30)
  {
    case 1:
      OUTLINED_FUNCTION_290();
      if (v63 != v26)
      {
        goto LABEL_97;
      }

      v95 = v62;
      v64 = OUTLINED_FUNCTION_2();
      sub_1B8D91FCC(v64, v65);
      v66 = OUTLINED_FUNCTION_2();
      sub_1B8D91FCC(v66, v67);
      v68 = OUTLINED_FUNCTION_2();
      sub_1B8D91FCC(v68, v69);
      if (sub_1B964C070())
      {
        sub_1B964C090();
        OUTLINED_FUNCTION_497();
        if (v26)
        {
          goto LABEL_100;
        }
      }

      else
      {
        v70 = v95;
      }

      v48 = v19 - v70;
LABEL_71:
      sub_1B964C080();
      OUTLINED_FUNCTION_22_2();
      v71 = OUTLINED_FUNCTION_2();
      sub_1B8D538A0(v71, v72);
      v73 = OUTLINED_FUNCTION_2();
      sub_1B8D538A0(v73, v74);
      v75 = OUTLINED_FUNCTION_2();
      sub_1B8D538A0(v75, v76);
      v96 = v48;
      if (v48)
      {
        goto LABEL_113;
      }

      if ((v97 & 1) == 0)
      {
        goto LABEL_92;
      }

      goto LABEL_87;
    case 2:
      v48 = *(v28 + 16);
      v49 = OUTLINED_FUNCTION_2();
      sub_1B8D91FCC(v49, v50);
      v51 = OUTLINED_FUNCTION_2();
      sub_1B8D91FCC(v51, v52);
      v53 = OUTLINED_FUNCTION_2();
      sub_1B8D91FCC(v53, v54);
      if (sub_1B964C070() && __OFSUB__(v48, sub_1B964C090()))
      {
        goto LABEL_99;
      }

      OUTLINED_FUNCTION_453();
      if (!v26)
      {
        goto LABEL_71;
      }

      goto LABEL_98;
    case 3:
      OUTLINED_FUNCTION_434();
      if (!v55)
      {
        goto LABEL_67;
      }

      if (v55 == 2)
      {
        v56 = *(v19 + 16);
        v57 = *(v19 + 24);
        v58 = OUTLINED_FUNCTION_2();
        sub_1B8D91FCC(v58, v59);
        v60 = sub_1B964C070();
        if (v60)
        {
          v61 = sub_1B964C090();
          if (__OFSUB__(v56, v61))
          {
            goto LABEL_105;
          }

          v60 += v56 - v61;
        }

        if (__OFSUB__(v57, v56))
        {
          goto LABEL_103;
        }

        sub_1B964C080();
        if (!v60)
        {
          goto LABEL_110;
        }

LABEL_85:
        v81 = OUTLINED_FUNCTION_102_0();
        goto LABEL_86;
      }

      if (v34 < v19)
      {
        goto LABEL_101;
      }

      v77 = OUTLINED_FUNCTION_2();
      sub_1B8D91FCC(v77, v78);
      v79 = sub_1B964C070();
      if (v79)
      {
        v80 = sub_1B964C090();
        if (__OFSUB__(v19, v80))
        {
          goto LABEL_108;
        }

        v79 += v19 - v80;
      }

      sub_1B964C080();
      if (v79)
      {
LABEL_79:
        v81 = OUTLINED_FUNCTION_80_0();
LABEL_86:
        v90 = memcmp(v81, v82, v83);
        v91 = OUTLINED_FUNCTION_2();
        sub_1B8D538A0(v91, v92);
        if (!v90)
        {
          goto LABEL_87;
        }

LABEL_92:
        sub_1B8D745F8();
        OUTLINED_FUNCTION_202();
        sub_1B8D745F8();
LABEL_93:
        OUTLINED_FUNCTION_177();
        OUTLINED_FUNCTION_283();
        return;
      }

      __break(1u);
LABEL_110:
      __break(1u);
LABEL_111:
      __break(1u);
LABEL_112:
      __break(1u);
LABEL_113:
      MEMORY[0x1BFADCCF0](v96);
      __break(1u);
      return;
    default:
      OUTLINED_FUNCTION_106();
      OUTLINED_FUNCTION_12_2();
      OUTLINED_FUNCTION_291();
      if (!v43)
      {
LABEL_67:
        if (OUTLINED_FUNCTION_9_1(v35, v36, v37, v38, v39, v40, v41, v42))
        {
          goto LABEL_92;
        }

        goto LABEL_87;
      }

      if (v43 == 1)
      {
        if (v34 < v19)
        {
          goto LABEL_102;
        }

        v44 = OUTLINED_FUNCTION_2();
        sub_1B8D91FCC(v44, v45);
        v46 = sub_1B964C070();
        if (v46)
        {
          v47 = sub_1B964C090();
          if (__OFSUB__(v19, v47))
          {
            goto LABEL_107;
          }

          v46 += v19 - v47;
        }

        sub_1B964C080();
        if (!v46)
        {
          goto LABEL_112;
        }

        goto LABEL_79;
      }

      v84 = *(v19 + 16);
      v85 = *(v19 + 24);
      v86 = OUTLINED_FUNCTION_2();
      sub_1B8D91FCC(v86, v87);
      v88 = sub_1B964C070();
      if (v88)
      {
        v89 = sub_1B964C090();
        if (__OFSUB__(v84, v89))
        {
          goto LABEL_106;
        }

        v88 += v84 - v89;
      }

      if (__OFSUB__(v85, v84))
      {
        goto LABEL_104;
      }

      sub_1B964C080();
      if (!v88)
      {
        goto LABEL_111;
      }

      goto LABEL_85;
  }
}

void sub_1B8D7A8D4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  v5 = OUTLINED_FUNCTION_94();
  type metadata accessor for Searchfoundation_CopyItem.OneOf_Value(v5);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_300(v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8ED8, &qword_1B964D6D8);
  OUTLINED_FUNCTION_183(v8);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_53(v10, v27);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EE0, &unk_1B964D6E0);
  OUTLINED_FUNCTION_36(v11);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  v13 = OUTLINED_FUNCTION_35();
  type metadata accessor for Searchfoundation_CopyItem(v13);
  OUTLINED_FUNCTION_19_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_97();
  v16 = *(v3 + 16);
  OUTLINED_FUNCTION_192();
  if (!v22 || !v16 || v3 == v2)
  {
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_157(v17);
  while (1)
  {
    v18 = OUTLINED_FUNCTION_424();
    sub_1B8D745A4(v18);
    v19 = OUTLINED_FUNCTION_491();
    sub_1B8D745A4(v19);
    OUTLINED_FUNCTION_286();
    OUTLINED_FUNCTION_242_0();
    sub_1B8D92024();
    OUTLINED_FUNCTION_548();
    OUTLINED_FUNCTION_42(v4);
    if (!v22)
    {
      break;
    }

    OUTLINED_FUNCTION_42(v4 + v2);
    if (!v22)
    {
      goto LABEL_19;
    }

    v20 = OUTLINED_FUNCTION_186();
    sub_1B8D9207C(v20, v21, &qword_1B964D6D8);
LABEL_13:
    OUTLINED_FUNCTION_630();
    OUTLINED_FUNCTION_0_2();
    sub_1B8D5C8D0(&qword_1EBAB3B38, v26, MEMORY[0x1E69AAC10]);
    OUTLINED_FUNCTION_688();
    v2 = sub_1B964C850();
    sub_1B8D745F8();
    OUTLINED_FUNCTION_502();
    sub_1B8D745F8();
    if (v2)
    {
      OUTLINED_FUNCTION_162();
      OUTLINED_FUNCTION_194();
      if (!v22)
      {
        continue;
      }
    }

    goto LABEL_21;
  }

  OUTLINED_FUNCTION_202();
  OUTLINED_FUNCTION_548();
  OUTLINED_FUNCTION_42(v4 + v2);
  if (!v22)
  {
    OUTLINED_FUNCTION_254();
    OUTLINED_FUNCTION_459();
    sub_1B8D920D4(v23);
    OUTLINED_FUNCTION_488();
    static Searchfoundation_CopyItem.OneOf_Value.== infix(_:_:)();
    v25 = v24;
    sub_1B8D745F8();
    OUTLINED_FUNCTION_472();
    sub_1B8D745F8();
    sub_1B8D9207C(v4, &qword_1EBAB8ED8, &qword_1B964D6D8);
    if ((v25 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_13;
  }

  OUTLINED_FUNCTION_297();
  sub_1B8D745F8();
LABEL_19:
  sub_1B8D9207C(v4, &qword_1EBAB8EE0, &unk_1B964D6E0);
LABEL_20:
  sub_1B8D745F8();
  OUTLINED_FUNCTION_218();
  sub_1B8D745F8();
LABEL_21:
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_283();
}

void sub_1B8D7AC94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_284();
  v8 = OUTLINED_FUNCTION_76();
  v10 = v9(v8);
  v11 = OUTLINED_FUNCTION_18_0(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_15_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_27_1();
  if (v16 && v7 && v6 != v3)
  {
    OUTLINED_FUNCTION_26_0();
    while (1)
    {
      OUTLINED_FUNCTION_255();
      v13 = OUTLINED_FUNCTION_113();
      sub_1B8D745A4(v13);
      OUTLINED_FUNCTION_131_0();
      v16 = v16 && v14 == v15;
      if (!v16 && (sub_1B964C9F0() & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_267();
      v19 = v16 && v17 == v18;
      if (!v19 && (sub_1B964C9F0() & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_554();
      v22 = v16 && v20 == v21;
      if (!v22 && (sub_1B964C9F0() & 1) == 0)
      {
        break;
      }

      v23 = *(v5 + 48) == *(v4 + 48) && *(v5 + 56) == *(v4 + 56);
      if (!v23 && (sub_1B964C9F0() & 1) == 0)
      {
        break;
      }

      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v24, MEMORY[0x1E69AAC10]);
      v25 = OUTLINED_FUNCTION_167();
      OUTLINED_FUNCTION_202();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_195();
      sub_1B8D745F8();
      if (v25)
      {
        OUTLINED_FUNCTION_39_0();
        if (!v16)
        {
          continue;
        }
      }

      goto LABEL_32;
    }

    OUTLINED_FUNCTION_202();
    sub_1B8D745F8();
    OUTLINED_FUNCTION_195();
    sub_1B8D745F8();
  }

LABEL_32:
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_283();
}

void sub_1B8D7AE94(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  v5 = OUTLINED_FUNCTION_64();
  type metadata accessor for Apple_Parsec_Kg_V1alpha_Fact.Qualifier(v5);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_1();
  if (v14 && v4 && v3 != v2)
  {
    OUTLINED_FUNCTION_3_2();
    while (1)
    {
      v8 = OUTLINED_FUNCTION_186();
      sub_1B8D745A4(v8);
      v9 = OUTLINED_FUNCTION_196();
      sub_1B8D745A4(v9);
      OUTLINED_FUNCTION_150();
      if (v14)
      {
        switch(v10)
        {
          case 7:
            if (v11 != 7)
            {
              goto LABEL_50;
            }

            goto LABEL_10;
          case 8:
            if (v11 != 8)
            {
              goto LABEL_50;
            }

            goto LABEL_10;
          case 9:
            if (v11 != 9)
            {
              goto LABEL_50;
            }

            goto LABEL_10;
          case 10:
            if (v11 != 10)
            {
              goto LABEL_50;
            }

            goto LABEL_10;
          case 11:
            if (v11 != 11)
            {
              goto LABEL_50;
            }

            goto LABEL_10;
          case 12:
            if (v11 != 12)
            {
              goto LABEL_50;
            }

            goto LABEL_10;
          case 13:
            if (v11 != 13)
            {
              goto LABEL_50;
            }

            goto LABEL_10;
          case 14:
            if (v11 != 14)
            {
              goto LABEL_50;
            }

            goto LABEL_10;
          case 15:
            if (v11 != 15)
            {
              goto LABEL_50;
            }

            goto LABEL_10;
          case 16:
            if (v11 != 16)
            {
              goto LABEL_50;
            }

            goto LABEL_10;
          case 17:
            if (v11 != 17)
            {
              goto LABEL_50;
            }

            goto LABEL_10;
          case 18:
            if (v11 != 18)
            {
              goto LABEL_50;
            }

            goto LABEL_10;
          case 19:
            if (v11 != 19)
            {
              goto LABEL_50;
            }

            goto LABEL_10;
          case 20:
            if (v11 != 20)
            {
              goto LABEL_50;
            }

            goto LABEL_10;
          case 21:
            if (v11 != 21)
            {
              goto LABEL_50;
            }

            goto LABEL_10;
          case 22:
            if (v11 != 22)
            {
              goto LABEL_50;
            }

            goto LABEL_10;
          default:
            break;
        }
      }

      if (v11 != v10)
      {
        break;
      }

LABEL_10:
      OUTLINED_FUNCTION_83_0();
      v14 = v14 && v12 == v13;
      if (!v14 && (sub_1B964C9F0() & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_517();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v15, MEMORY[0x1E69AAC10]);
      v16 = OUTLINED_FUNCTION_101();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_199();
      sub_1B8D745F8();
      if (v16)
      {
        OUTLINED_FUNCTION_7_1();
        if (!v14)
        {
          continue;
        }
      }

      goto LABEL_51;
    }

LABEL_50:
    OUTLINED_FUNCTION_319();
    sub_1B8D745F8();
    OUTLINED_FUNCTION_182();
    sub_1B8D745F8();
  }

LABEL_51:
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_283();
}

void sub_1B8D7B19C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_191_0();
  v9 = sub_1B964C130();
  OUTLINED_FUNCTION_30_1();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_381(v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9270, &unk_1B9660450);
  OUTLINED_FUNCTION_183(v14);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_79();
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9278, &unk_1B964DA60);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_84(v17, v63);
  type metadata accessor for Locationpb_Point(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_487(v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9280, &qword_1B96535F0);
  OUTLINED_FUNCTION_183(v20);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_173();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9288, &unk_1B964DA70);
  OUTLINED_FUNCTION_49(v22);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v23);
  v24 = OUTLINED_FUNCTION_151();
  v25 = type metadata accessor for Snippetpb_ExperimentalVisualEntity(v24);
  v26 = OUTLINED_FUNCTION_18_0(v25);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_187_0();
  v28 = *(v2 + 16);
  OUTLINED_FUNCTION_192();
  if (v36 && v28 && v2 != v3)
  {
    v67 = v5;
    v68 = v9;
    OUTLINED_FUNCTION_60_0();
    v29 = v11;
    v31 = v2 + v30;
    v32 = v3 + v30;
    v64 = v8;
    v65 = (v29 + 8);
    v69 = *(v33 + 72);
    v70 = v7;
    while (1)
    {
      v34 = OUTLINED_FUNCTION_243_0();
      sub_1B8D745A4(v34);
      v35 = OUTLINED_FUNCTION_1_0();
      sub_1B8D745A4(v35);
      v36 = *v4 == *v6 && v4[1] == v6[1];
      if (!v36 && (sub_1B964C9F0() & 1) == 0)
      {
        break;
      }

      v37 = v4[2] == v6[2] && v4[3] == v6[3];
      if (!v37 && (sub_1B964C9F0() & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_490();
      sub_1B8D92024();
      sub_1B8D92024();
      v38 = OUTLINED_FUNCTION_443();
      OUTLINED_FUNCTION_110(v38, v39);
      if (v36)
      {
        OUTLINED_FUNCTION_75(v8 + v3);
        if (!v36)
        {
          goto LABEL_53;
        }

        sub_1B8D9207C(v8, &qword_1EBAB9280, &qword_1B96535F0);
      }

      else
      {
        OUTLINED_FUNCTION_292();
        sub_1B8D92024();
        OUTLINED_FUNCTION_75(v8 + v3);
        if (v40)
        {
          sub_1B8D745F8();
LABEL_53:
          v59 = &qword_1EBAB9288;
          v60 = &unk_1B964DA70;
          goto LABEL_57;
        }

        OUTLINED_FUNCTION_471();
        OUTLINED_FUNCTION_592();
        sub_1B8D920D4(v41);
        if (*v7 != *v3 || *(v7 + 8) != *(v3 + 8))
        {
          goto LABEL_56;
        }

        v42 = *(v7 + 16);
        v43 = *(v3 + 16);
        if (*(v3 + 24) == 1)
        {
          if (v43)
          {
            if (v43 == 1)
            {
              if (v42 != 1)
              {
                goto LABEL_56;
              }
            }

            else if (v42 != 2)
            {
              goto LABEL_56;
            }
          }

          else if (v42)
          {
            goto LABEL_56;
          }
        }

        else if (v42 != v43)
        {
          goto LABEL_56;
        }

        v44 = *(v7 + 32) == *(v3 + 32) && *(v7 + 40) == *(v3 + 40);
        if (!v44 && (sub_1B964C9F0() & 1) == 0)
        {
          goto LABEL_56;
        }

        v45 = *(v72 + 48);
        sub_1B8D92024();
        OUTLINED_FUNCTION_549();
        v46 = OUTLINED_FUNCTION_355();
        OUTLINED_FUNCTION_81(v46, v47);
        if (v36)
        {
          OUTLINED_FUNCTION_37_0(v71 + v45);
          v48 = v71;
          if (!v36)
          {
            goto LABEL_55;
          }

          sub_1B8D9207C(v71, &qword_1EBAB9270, &unk_1B9660450);
        }

        else
        {
          sub_1B8D92024();
          OUTLINED_FUNCTION_37_0(v71 + v45);
          if (v49)
          {
            v61 = OUTLINED_FUNCTION_311();
            v62(v61);
            v48 = v71;
LABEL_55:
            sub_1B8D9207C(v48, &qword_1EBAB9278, &unk_1B964DA60);
LABEL_56:
            sub_1B8D745F8();
            OUTLINED_FUNCTION_197();
            sub_1B8D745F8();
            v59 = &qword_1EBAB9280;
            v60 = &qword_1B96535F0;
LABEL_57:
            sub_1B8D9207C(v8, v59, v60);
            break;
          }

          v50 = OUTLINED_FUNCTION_685();
          v51(v50);
          sub_1B8D5C8D0(&qword_1EBAB9290, MEMORY[0x1E69AA930], MEMORY[0x1E69AA938]);
          OUTLINED_FUNCTION_467();
          v66 = sub_1B964C850();
          v52 = *v65;
          v53 = OUTLINED_FUNCTION_287();
          v52(v53);
          (v52)(v67, v68);
          v8 = v64;
          v54 = OUTLINED_FUNCTION_218();
          sub_1B8D9207C(v54, v55, &unk_1B9660450);
          if ((v66 & 1) == 0)
          {
            goto LABEL_56;
          }
        }

        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_2();
        sub_1B8D5C8D0(&qword_1EBAB3B38, v56, MEMORY[0x1E69AAC10]);
        v57 = sub_1B964C850();
        v7 = v70;
        sub_1B8D745F8();
        OUTLINED_FUNCTION_220();
        sub_1B8D745F8();
        sub_1B8D9207C(v8, &qword_1EBAB9280, &qword_1B96535F0);
        if ((v57 & 1) == 0)
        {
          break;
        }
      }

      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v58, MEMORY[0x1E69AAC10]);
      v3 = sub_1B964C850();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_236();
      sub_1B8D745F8();
      if (v3)
      {
        v32 += v69;
        v31 += v69;
        OUTLINED_FUNCTION_194();
        if (!v36)
        {
          continue;
        }
      }

      goto LABEL_59;
    }

    sub_1B8D745F8();
    OUTLINED_FUNCTION_294();
    sub_1B8D745F8();
  }

LABEL_59:
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_283();
}

void sub_1B8D7B99C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_284();
  v6 = OUTLINED_FUNCTION_105();
  v8 = v7(v6);
  v9 = OUTLINED_FUNCTION_18_0(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_27_1();
  if (v14 && v5 && v4 != v3)
  {
    OUTLINED_FUNCTION_26_0();
    while (1)
    {
      OUTLINED_FUNCTION_255();
      v11 = OUTLINED_FUNCTION_113();
      sub_1B8D745A4(v11);
      OUTLINED_FUNCTION_131_0();
      v14 = v14 && v12 == v13;
      if (!v14 && (sub_1B964C9F0() & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_267();
      v17 = v14 && v15 == v16;
      if (!v17 && (sub_1B964C9F0() & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_554();
      v20 = v14 && v18 == v19;
      if (!v20 && (sub_1B964C9F0() & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_628();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v21, MEMORY[0x1E69AAC10]);
      v22 = OUTLINED_FUNCTION_167();
      OUTLINED_FUNCTION_202();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_195();
      sub_1B8D745F8();
      if (v22)
      {
        OUTLINED_FUNCTION_39_0();
        if (!v14)
        {
          continue;
        }
      }

      goto LABEL_27;
    }

    OUTLINED_FUNCTION_202();
    sub_1B8D745F8();
    OUTLINED_FUNCTION_195();
    sub_1B8D745F8();
  }

LABEL_27:
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_283();
}

void sub_1B8D7BC20(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  v7 = OUTLINED_FUNCTION_64();
  type metadata accessor for Argos_Protos_Productdatapb_ProductImage(v7);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_1();
  if (v14 && v6 && v5 != v2)
  {
    OUTLINED_FUNCTION_3_2();
    while (1)
    {
      v10 = OUTLINED_FUNCTION_186();
      sub_1B8D745A4(v10);
      v11 = OUTLINED_FUNCTION_196();
      sub_1B8D745A4(v11);
      OUTLINED_FUNCTION_74_0();
      v14 = v14 && v12 == v13;
      if (!v14 && (sub_1B964C9F0() & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_477();
      if (!v14)
      {
        break;
      }

      if (*(v4 + 17) != *(v3 + 17))
      {
        break;
      }

      if (*(v4 + 20) != *(v3 + 20))
      {
        break;
      }

      OUTLINED_FUNCTION_568();
      if (!v14 || *(v4 + 28) != *(v3 + 28))
      {
        break;
      }

      OUTLINED_FUNCTION_641();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v15, MEMORY[0x1E69AAC10]);
      v16 = OUTLINED_FUNCTION_101();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_199();
      sub_1B8D745F8();
      if (v16)
      {
        OUTLINED_FUNCTION_7_1();
        if (!v14)
        {
          continue;
        }
      }

      goto LABEL_24;
    }

    sub_1B8D745F8();
    OUTLINED_FUNCTION_182();
    sub_1B8D745F8();
  }

LABEL_24:
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B8D7BE5C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return OUTLINED_FUNCTION_228();
  }

  if (!v2 || result == a2)
  {
    return OUTLINED_FUNCTION_229();
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void sub_1B8D7BEB0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  v6 = OUTLINED_FUNCTION_82_0();
  type metadata accessor for Searchfoundation_URL(v6);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_487(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E20, &unk_1B964D620);
  OUTLINED_FUNCTION_183(v9);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_88();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8E28, &unk_1B96B7BB0);
  OUTLINED_FUNCTION_49(v11);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  v13 = OUTLINED_FUNCTION_35();
  type metadata accessor for Searchfoundation_UserActivityInfo(v13);
  OUTLINED_FUNCTION_19_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_556();
  if (v26 && v3 && v5 != v2)
  {
    OUTLINED_FUNCTION_60_0();
    v17 = v5 + v16;
    OUTLINED_FUNCTION_564();
    v42 = v18;
    while (1)
    {
      sub_1B8D745A4(v17);
      sub_1B8D745A4(v43);
      OUTLINED_FUNCTION_209_0();
      if (v23)
      {
        v20 = v22;
      }

      if (v21 == 1)
      {
        if (v19)
        {
          if (v20 != 1)
          {
            break;
          }
        }

        else if (v20)
        {
          break;
        }
      }

      else if (v20 != v19)
      {
        break;
      }

      OUTLINED_FUNCTION_156_1();
      v26 = v26 && v24 == v25;
      if (!v26 && (sub_1B964C9F0() & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_583();
      v29 = v26 && v27 == v28;
      if (!v29 && (sub_1B964C9F0() & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_450();
      OUTLINED_FUNCTION_623();
      sub_1B8D92024();
      OUTLINED_FUNCTION_42(v4);
      if (v26)
      {
        OUTLINED_FUNCTION_42(v4 + v2);
        if (!v26)
        {
          goto LABEL_43;
        }

        v30 = OUTLINED_FUNCTION_512();
        sub_1B8D9207C(v30, v31, &unk_1B964D620);
      }

      else
      {
        OUTLINED_FUNCTION_186();
        OUTLINED_FUNCTION_645();
        OUTLINED_FUNCTION_42(v4 + v2);
        if (v32)
        {
          OUTLINED_FUNCTION_222();
          sub_1B8D745F8();
LABEL_43:
          v40 = &qword_1EBAB8E28;
          v41 = &unk_1B96B7BB0;
LABEL_44:
          sub_1B8D9207C(v4, v40, v41);
          break;
        }

        OUTLINED_FUNCTION_254();
        OUTLINED_FUNCTION_592();
        sub_1B8D920D4(v33);
        OUTLINED_FUNCTION_264_0();
        v36 = v26 && v34 == v35;
        if (!v36 && (sub_1B964C9F0() & 1) == 0)
        {
          sub_1B8D745F8();
          OUTLINED_FUNCTION_182();
          sub_1B8D745F8();
          v40 = &qword_1EBAB8E20;
          v41 = &unk_1B964D620;
          goto LABEL_44;
        }

        OUTLINED_FUNCTION_639();
        OUTLINED_FUNCTION_0_2();
        sub_1B8D5C8D0(&qword_1EBAB3B38, v37, MEMORY[0x1E69AAC10]);
        OUTLINED_FUNCTION_508();
        v38 = sub_1B964C850();
        sub_1B8D745F8();
        OUTLINED_FUNCTION_492();
        sub_1B8D745F8();
        sub_1B8D9207C(v4, &qword_1EBAB8E20, &unk_1B964D620);
        if ((v38 & 1) == 0)
        {
          break;
        }
      }

      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v39, MEMORY[0x1E69AAC10]);
      v2 = OUTLINED_FUNCTION_278();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_650();
      if (v2)
      {
        v43 += v42;
        v17 += v42;
        OUTLINED_FUNCTION_659();
        if (!v26)
        {
          continue;
        }
      }

      goto LABEL_46;
    }

    sub_1B8D745F8();
    OUTLINED_FUNCTION_197();
    sub_1B8D745F8();
  }

LABEL_46:
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_283();
}

void sub_1B8D7C374(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_284();
  v6 = OUTLINED_FUNCTION_76();
  v8 = v7(v6);
  v9 = OUTLINED_FUNCTION_18_0(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_27_1();
  if (v14 && v5 && v4 != v3)
  {
    OUTLINED_FUNCTION_26_0();
    while (1)
    {
      OUTLINED_FUNCTION_255();
      v11 = OUTLINED_FUNCTION_113();
      sub_1B8D745A4(v11);
      OUTLINED_FUNCTION_131_0();
      v14 = v14 && v12 == v13;
      if (!v14 && (sub_1B964C9F0() & 1) == 0)
      {
        break;
      }

      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v15, MEMORY[0x1E69AAC10]);
      v16 = OUTLINED_FUNCTION_167();
      OUTLINED_FUNCTION_202();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_195();
      sub_1B8D745F8();
      if (v16)
      {
        OUTLINED_FUNCTION_39_0();
        if (!v14)
        {
          continue;
        }
      }

      goto LABEL_17;
    }

    OUTLINED_FUNCTION_202();
    sub_1B8D745F8();
    OUTLINED_FUNCTION_195();
    sub_1B8D745F8();
  }

LABEL_17:
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_283();
}

void sub_1B8D7C4D0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  v6 = OUTLINED_FUNCTION_64();
  type metadata accessor for Kgqsapipb_CFGFeature(v6);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_0();
  if (v14 && v4 && v3 != v2)
  {
    OUTLINED_FUNCTION_11_1(v9);
    while (1)
    {
      v10 = v3 * v5;
      v11 = OUTLINED_FUNCTION_147();
      sub_1B8D745A4(v11);
      if (v5 == v4)
      {
        break;
      }

      OUTLINED_FUNCTION_522();
      OUTLINED_FUNCTION_74_0();
      v14 = v14 && v12 == v13;
      if (!v14 && (sub_1B964C9F0() & 1) == 0 || (OUTLINED_FUNCTION_95_0(), !v14))
      {
LABEL_32:
        sub_1B8D745F8();
        OUTLINED_FUNCTION_182();
        sub_1B8D745F8();
        goto LABEL_33;
      }

      if (v10)
      {
        v17 = v16 == v15;
      }

      else
      {
        v17 = 1;
      }

      if (!v17)
      {
        OUTLINED_FUNCTION_299();
        while (v10)
        {
          OUTLINED_FUNCTION_109();
          v20 = v14 && v18 == v19;
          if (!v20 && (sub_1B964C9F0() & 1) == 0)
          {
            goto LABEL_32;
          }

          OUTLINED_FUNCTION_108();
          if (v14)
          {
            goto LABEL_27;
          }
        }

        __break(1u);
        break;
      }

LABEL_27:
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v21, MEMORY[0x1E69AAC10]);
      v22 = OUTLINED_FUNCTION_153();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_1_0();
      sub_1B8D745F8();
      if (v22)
      {
        OUTLINED_FUNCTION_262();
        if (!v14)
        {
          continue;
        }
      }

      goto LABEL_33;
    }

    __break(1u);
  }

  else
  {
LABEL_33:
    OUTLINED_FUNCTION_177();
    OUTLINED_FUNCTION_283();
  }
}

void sub_1B8D7C774(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  v8 = OUTLINED_FUNCTION_462();
  v9 = type metadata accessor for Kgqsapipb_Span(v8);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_238_0();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9240, &qword_1B965A610);
  OUTLINED_FUNCTION_183(v11);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_88();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9248, &qword_1B964DA30);
  OUTLINED_FUNCTION_36(v13);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_53(v15, v51);
  v16 = type metadata accessor for Kgqsapipb_ArgInfo(0);
  v17 = OUTLINED_FUNCTION_18_0(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_351();
  v19 = *(v7 + 16);
  OUTLINED_FUNCTION_312();
  if (v23 && v19 && v7 != v2)
  {
    v20 = 0;
    OUTLINED_FUNCTION_60_0();
    v55 = v7 + v21;
    v56 = v9;
    v54 = v2 + v21;
    v52 = v6;
    v53 = v5;
    while (1)
    {
      v22 = OUTLINED_FUNCTION_470(v55);
      sub_1B8D745A4(v22);
      if (v20 == v19)
      {
        break;
      }

      OUTLINED_FUNCTION_640(v54);
      v23 = *v6 == *v5 && v6[1] == v5[1];
      if (!v23 && (sub_1B964C9F0() & 1) == 0)
      {
        goto LABEL_66;
      }

      v24 = v6[2] == v5[2] && v6[3] == v5[3];
      if (!v24 && (sub_1B964C9F0() & 1) == 0)
      {
        goto LABEL_66;
      }

      OUTLINED_FUNCTION_286();
      sub_1B8D92024();
      OUTLINED_FUNCTION_623();
      v25 = OUTLINED_FUNCTION_454();
      v26 = v56;
      OUTLINED_FUNCTION_178(v25, v27, v56);
      if (v23)
      {
        OUTLINED_FUNCTION_48(v57 + v2);
        if (!v23)
        {
          goto LABEL_69;
        }

        v28 = OUTLINED_FUNCTION_606();
        sub_1B8D9207C(v28, v29, &qword_1B965A610);
        v6 = v52;
        v5 = v53;
      }

      else
      {
        OUTLINED_FUNCTION_537();
        OUTLINED_FUNCTION_623();
        OUTLINED_FUNCTION_48(v57 + v2);
        if (v30)
        {
          OUTLINED_FUNCTION_222();
          sub_1B8D745F8();
LABEL_69:
          sub_1B8D9207C(v57, &qword_1EBAB9248, &qword_1B964DA30);
          goto LABEL_66;
        }

        v31 = OUTLINED_FUNCTION_540();
        sub_1B8D920D4(v31);
        OUTLINED_FUNCTION_74_0();
        v34 = v23 && v32 == v33;
        v6 = v52;
        v5 = v53;
        if (!v34 && (sub_1B964C9F0() & 1) == 0)
        {
          goto LABEL_65;
        }

        OUTLINED_FUNCTION_83_0();
        v37 = v23 && v35 == v36;
        if (!v37 && (sub_1B964C9F0() & 1) == 0)
        {
          goto LABEL_65;
        }

        OUTLINED_FUNCTION_89();
        v40 = v23 && v38 == v39;
        if (!v40 && (sub_1B964C9F0() & 1) == 0)
        {
          goto LABEL_65;
        }

        OUTLINED_FUNCTION_95_0();
        if (!v23)
        {
          goto LABEL_65;
        }

        if (v2 && v42 != v41)
        {
          v43 = (v42 + 40);
          v44 = (v41 + 40);
          while (1)
          {
            v45 = *(v43 - 1) == *(v44 - 1) && *v43 == *v44;
            if (!v45 && (sub_1B964C9F0() & 1) == 0)
            {
              break;
            }

            v43 += 2;
            v44 += 2;
            if (!--v2)
            {
              goto LABEL_49;
            }
          }

LABEL_65:
          sub_1B8D745F8();
          OUTLINED_FUNCTION_182();
          sub_1B8D745F8();
          sub_1B8D9207C(v57, &qword_1EBAB9240, &qword_1B965A610);
LABEL_66:
          sub_1B8D745F8();
          OUTLINED_FUNCTION_427();
          sub_1B8D745F8();
          goto LABEL_67;
        }

LABEL_49:
        if (*(v4 + 56) != *(v3 + 56) || *(v4 + 60) != *(v3 + 60))
        {
          goto LABEL_65;
        }

        v46 = *(v4 + 64);
        v47 = *(v3 + 64);
        if (*(v3 + 72) == 1)
        {
          switch(v47)
          {
            case 1:
              if (v46 != 1)
              {
                goto LABEL_65;
              }

              goto LABEL_56;
            case 2:
              if (v46 != 2)
              {
                goto LABEL_65;
              }

              goto LABEL_56;
            case 3:
              if (v46 != 3)
              {
                goto LABEL_65;
              }

              goto LABEL_56;
            default:
              if (v46)
              {
                goto LABEL_65;
              }

              goto LABEL_56;
          }
        }

        if (v46 != v47)
        {
          goto LABEL_65;
        }

LABEL_56:
        v26 = *(v56 + 44);
        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_2();
        sub_1B8D5C8D0(&qword_1EBAB3B38, v48, MEMORY[0x1E69AAC10]);
        v49 = OUTLINED_FUNCTION_181();
        sub_1B8D745F8();
        OUTLINED_FUNCTION_610();
        sub_1B8D745F8();
        sub_1B8D9207C(v57, &qword_1EBAB9240, &qword_1B965A610);
        if ((v49 & 1) == 0)
        {
          goto LABEL_66;
        }
      }

      OUTLINED_FUNCTION_524();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v50, MEMORY[0x1E69AAC10]);
      v2 = OUTLINED_FUNCTION_525(v6 + v26);
      sub_1B8D745F8();
      OUTLINED_FUNCTION_606();
      sub_1B8D745F8();
      if ((v2 & 1) != 0 && ++v20 != v19)
      {
        continue;
      }

      goto LABEL_67;
    }

    __break(1u);
  }

  else
  {
LABEL_67:
    OUTLINED_FUNCTION_177();
    OUTLINED_FUNCTION_283();
  }
}

void sub_1B8D7CD18(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  v6 = OUTLINED_FUNCTION_64();
  type metadata accessor for Kgqsapipb_OntologyPath(v6);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_0();
  if (v14 && v4 && v3 != v2)
  {
    OUTLINED_FUNCTION_11_1(v9);
    while (1)
    {
      v10 = v3 * v5;
      v11 = OUTLINED_FUNCTION_147();
      sub_1B8D745A4(v11);
      if (v5 == v4)
      {
        break;
      }

      OUTLINED_FUNCTION_522();
      OUTLINED_FUNCTION_95_0();
      if (!v14)
      {
LABEL_27:
        sub_1B8D745F8();
        OUTLINED_FUNCTION_182();
        sub_1B8D745F8();
        goto LABEL_28;
      }

      if (v10)
      {
        v14 = v13 == v12;
      }

      else
      {
        v14 = 1;
      }

      if (!v14)
      {
        OUTLINED_FUNCTION_299();
        while (v10)
        {
          OUTLINED_FUNCTION_109();
          v17 = v14 && v15 == v16;
          if (!v17 && (sub_1B964C9F0() & 1) == 0)
          {
            goto LABEL_27;
          }

          OUTLINED_FUNCTION_108();
          if (v14)
          {
            goto LABEL_22;
          }
        }

        __break(1u);
        break;
      }

LABEL_22:
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v18, MEMORY[0x1E69AAC10]);
      v19 = OUTLINED_FUNCTION_153();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_1_0();
      sub_1B8D745F8();
      if (v19)
      {
        OUTLINED_FUNCTION_262();
        if (!v14)
        {
          continue;
        }
      }

      goto LABEL_28;
    }

    __break(1u);
  }

  else
  {
LABEL_28:
    OUTLINED_FUNCTION_177();
    OUTLINED_FUNCTION_283();
  }
}

void sub_1B8D7CEFC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_214();
  v9 = sub_1B964C110();
  OUTLINED_FUNCTION_30_1();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_238_0();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EBAB90F0, &unk_1B964D8E0);
  OUTLINED_FUNCTION_183(v13);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_104(v15, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90F8, &qword_1B9687990);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v16);
  v17 = OUTLINED_FUNCTION_35();
  type metadata accessor for Moviespb_Showtime(v17);
  OUTLINED_FUNCTION_19_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_86_0();
  if (!v28 || !v4 || v6 == v2)
  {
    goto LABEL_37;
  }

  v41 = v3;
  OUTLINED_FUNCTION_60_0();
  v21 = v6 + v20;
  v22 = v2 + v20;
  v42 = (v11 + 8);
  v44 = *(v23 + 72);
  v45 = v5;
  while (1)
  {
    v24 = OUTLINED_FUNCTION_672();
    sub_1B8D745A4(v24);
    v47 = v21;
    v25 = OUTLINED_FUNCTION_491();
    sub_1B8D745A4(v25);
    OUTLINED_FUNCTION_272();
    sub_1B8D92024();
    OUTLINED_FUNCTION_248();
    sub_1B8D92024();
    OUTLINED_FUNCTION_48(v5);
    if (!v28)
    {
      break;
    }

    OUTLINED_FUNCTION_48(v5 + v2);
    if (!v28)
    {
      goto LABEL_35;
    }

    v26 = OUTLINED_FUNCTION_511();
    sub_1B8D9207C(v26, v27, &unk_1B964D8E0);
LABEL_13:
    v34 = *v8;
    v35 = *v7;
    if (*(v7 + 8) == 1)
    {
      switch(v35)
      {
        case 1:
          if (v34 != 1)
          {
            goto LABEL_36;
          }

          goto LABEL_18;
        case 2:
          if (v34 != 2)
          {
            goto LABEL_36;
          }

          goto LABEL_18;
        case 3:
          if (v34 != 3)
          {
            goto LABEL_36;
          }

          goto LABEL_18;
        default:
          if (v34)
          {
            goto LABEL_36;
          }

          goto LABEL_18;
      }
    }

    if (v34 != v35)
    {
      goto LABEL_36;
    }

LABEL_18:
    OUTLINED_FUNCTION_569();
    if (v28)
    {
      v38 = v36 == v37;
    }

    else
    {
      v38 = 0;
    }

    if (!v38 && (sub_1B964C9F0() & 1) == 0)
    {
      goto LABEL_36;
    }

    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_2();
    sub_1B8D5C8D0(&qword_1EBAB3B38, v39, MEMORY[0x1E69AAC10]);
    v2 = OUTLINED_FUNCTION_232();
    sub_1B8D745F8();
    OUTLINED_FUNCTION_243_0();
    sub_1B8D745F8();
    if (v2)
    {
      v5 = v45;
      v22 += v44;
      v21 = v47 + v44;
      OUTLINED_FUNCTION_423();
      if (!v28)
      {
        continue;
      }
    }

    goto LABEL_37;
  }

  OUTLINED_FUNCTION_248();
  sub_1B8D92024();
  OUTLINED_FUNCTION_48(v5 + v2);
  if (!v28)
  {
    OUTLINED_FUNCTION_674();
    v9 = v46;
    v29(v41);
    OUTLINED_FUNCTION_122();
    sub_1B8D5C8D0(&qword_1EBAB9120, v30, MEMORY[0x1E69AA908]);
    OUTLINED_FUNCTION_485();
    v43 = sub_1B964C850();
    v31 = *v42;
    v32 = OUTLINED_FUNCTION_678();
    v31(v32);
    v33 = OUTLINED_FUNCTION_375();
    v31(v33);
    sub_1B8D9207C(v5, &off_1EBAB90F0, &unk_1B964D8E0);
    if ((v43 & 1) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_13;
  }

  (*v42)(v46, v9);
LABEL_35:
  sub_1B8D9207C(v5, &qword_1EBAB90F8, &qword_1B9687990);
LABEL_36:
  sub_1B8D745F8();
  OUTLINED_FUNCTION_218();
  sub_1B8D745F8();
LABEL_37:
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_283();
}

void sub_1B8D7D3E0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  v6 = OUTLINED_FUNCTION_64();
  type metadata accessor for Kgqsapipb_LSTMScoresArray(v6);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_0();
  if (v13 && v4 && v3 != v2)
  {
    OUTLINED_FUNCTION_45();
    OUTLINED_FUNCTION_289();
    while (1)
    {
      v9 = OUTLINED_FUNCTION_540();
      sub_1B8D745A4(v9);
      if (v5 == v4)
      {
        break;
      }

      OUTLINED_FUNCTION_522();
      OUTLINED_FUNCTION_125();
      if (!v13)
      {
LABEL_23:
        sub_1B8D745F8();
        OUTLINED_FUNCTION_182();
        sub_1B8D745F8();
        goto LABEL_24;
      }

      if (v10)
      {
        v13 = v11 == v12;
      }

      else
      {
        v13 = 1;
      }

      if (!v13)
      {
        OUTLINED_FUNCTION_480();
        while (v14)
        {
          if (*v15 != *v16)
          {
            goto LABEL_23;
          }

          OUTLINED_FUNCTION_437();
          if (v13)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
        break;
      }

LABEL_18:
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v17, MEMORY[0x1E69AAC10]);
      v18 = OUTLINED_FUNCTION_153();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_1_0();
      sub_1B8D745F8();
      if (v18)
      {
        OUTLINED_FUNCTION_262();
        if (!v13)
        {
          continue;
        }
      }

      goto LABEL_24;
    }

    __break(1u);
  }

  else
  {
LABEL_24:
    OUTLINED_FUNCTION_177();
    OUTLINED_FUNCTION_283();
  }
}

void sub_1B8D7D5C0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  v5 = OUTLINED_FUNCTION_64();
  type metadata accessor for Kgqsapipb_TokenPair(v5);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_1();
  if (v8 && v4 && v3 != v2)
  {
    OUTLINED_FUNCTION_3_2();
    while (1)
    {
      v9 = OUTLINED_FUNCTION_186();
      sub_1B8D745A4(v9);
      v10 = OUTLINED_FUNCTION_196();
      sub_1B8D745A4(v10);
      OUTLINED_FUNCTION_445();
      if (!v8)
      {
        break;
      }

      OUTLINED_FUNCTION_557();
      if (!v8)
      {
        break;
      }

      OUTLINED_FUNCTION_517();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v11, MEMORY[0x1E69AAC10]);
      v12 = OUTLINED_FUNCTION_101();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_199();
      sub_1B8D745F8();
      if (v12)
      {
        OUTLINED_FUNCTION_7_1();
        if (!v8)
        {
          continue;
        }
      }

      goto LABEL_16;
    }

    sub_1B8D745F8();
    OUTLINED_FUNCTION_182();
    sub_1B8D745F8();
  }

LABEL_16:
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_283();
}

void sub_1B8D7D760(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  v7 = OUTLINED_FUNCTION_64();
  type metadata accessor for Kgqsapipb_GeoEntity(v7);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_1();
  if (v14 && v6 && v5 != v2)
  {
    OUTLINED_FUNCTION_3_2();
    while (1)
    {
      v10 = OUTLINED_FUNCTION_186();
      sub_1B8D745A4(v10);
      v11 = OUTLINED_FUNCTION_196();
      sub_1B8D745A4(v11);
      OUTLINED_FUNCTION_74_0();
      v14 = v14 && v12 == v13;
      if (!v14 && (sub_1B964C9F0() & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_83_0();
      v17 = v14 && v15 == v16;
      if (!v17 && (sub_1B964C9F0() & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_89();
      v20 = v14 && v18 == v19;
      if (!v20 && (sub_1B964C9F0() & 1) == 0)
      {
        break;
      }

      sub_1B8D7D760(*(v4 + 48), *(v3 + 48));
      if ((v21 & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_547();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v22, MEMORY[0x1E69AAC10]);
      v23 = OUTLINED_FUNCTION_101();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_199();
      sub_1B8D745F8();
      if (v23)
      {
        OUTLINED_FUNCTION_7_1();
        if (!v14)
        {
          continue;
        }
      }

      goto LABEL_28;
    }

    sub_1B8D745F8();
    OUTLINED_FUNCTION_182();
    sub_1B8D745F8();
  }

LABEL_28:
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_283();
}

void sub_1B8D7D9D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_284();
  v32 = v3;
  v33 = v4;
  v31 = v5;
  v7 = v6;
  v9 = v8;
  v10(0);
  OUTLINED_FUNCTION_30_1();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_563();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_211();
  v15 = *(v9 + 16);
  if (v15 == *(v7 + 16) && v15 && v9 != v7)
  {
    v16 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v17 = v9 + v16;
    v18 = v7 + v16;
    v20 = *(v12 + 16);
    v19 = v12 + 16;
    v21 = (v19 - 8);
    v29 = *(v19 + 56);
    v30 = v20;
    do
    {
      OUTLINED_FUNCTION_481();
      v30();
      v22 = OUTLINED_FUNCTION_253();
      v23 = v19;
      (v30)(v22);
      sub_1B8D5C8D0(v31, v32, v33);
      OUTLINED_FUNCTION_257();
      v24 = sub_1B964C850();
      v25 = *v21;
      v26 = OUTLINED_FUNCTION_311();
      v25(v26);
      v27 = OUTLINED_FUNCTION_200();
      v25(v27);
      if ((v24 & 1) == 0)
      {
        break;
      }

      v18 += v29;
      v17 += v29;
      OUTLINED_FUNCTION_309();
      v19 = v23;
    }

    while (!v28);
  }

  OUTLINED_FUNCTION_283();
}

void sub_1B8D7DBBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_284();
  v6 = OUTLINED_FUNCTION_105();
  v8 = v7(v6);
  v9 = OUTLINED_FUNCTION_18_0(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_15_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_27_1();
  if (v14 && v5 && v4 != v3)
  {
    OUTLINED_FUNCTION_26_0();
    while (1)
    {
      OUTLINED_FUNCTION_255();
      v11 = OUTLINED_FUNCTION_113();
      sub_1B8D745A4(v11);
      OUTLINED_FUNCTION_131_0();
      v14 = v14 && v12 == v13;
      if (!v14 && (sub_1B964C9F0() & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_267();
      v17 = v14 && v15 == v16;
      if (!v17 && (sub_1B964C9F0() & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_495();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v18, MEMORY[0x1E69AAC10]);
      v19 = OUTLINED_FUNCTION_167();
      OUTLINED_FUNCTION_202();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_195();
      sub_1B8D745F8();
      if (v19)
      {
        OUTLINED_FUNCTION_39_0();
        if (!v14)
        {
          continue;
        }
      }

      goto LABEL_22;
    }

    OUTLINED_FUNCTION_202();
    sub_1B8D745F8();
    OUTLINED_FUNCTION_195();
    sub_1B8D745F8();
  }

LABEL_22:
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B8D7DD80(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return OUTLINED_FUNCTION_228();
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    for (i = (a2 + 40); ; i += 16)
    {
      v6 = *v3;
      v3 += 2;
      v5 = v6;
      v7 = *(i - 1);
      if (*i == 1)
      {
        switch(v7)
        {
          case 1:
            if (v5 != 1)
            {
              return OUTLINED_FUNCTION_228();
            }

            goto LABEL_10;
          case 2:
            if (v5 != 2)
            {
              return OUTLINED_FUNCTION_228();
            }

            goto LABEL_10;
          case 3:
            if (v5 != 3)
            {
              return OUTLINED_FUNCTION_228();
            }

            goto LABEL_10;
          case 4:
            if (v5 != 4)
            {
              return OUTLINED_FUNCTION_228();
            }

            goto LABEL_10;
          case 5:
            if (v5 != 5)
            {
              return OUTLINED_FUNCTION_228();
            }

            goto LABEL_10;
          default:
            if (v5)
            {
              return OUTLINED_FUNCTION_228();
            }

            goto LABEL_10;
        }
      }

      if (v5 != v7)
      {
        break;
      }

LABEL_10:
      if (!--v2)
      {
        return OUTLINED_FUNCTION_229();
      }
    }

    return OUTLINED_FUNCTION_228();
  }

  return OUTLINED_FUNCTION_229();
}

void sub_1B8D7DE40(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  v5 = OUTLINED_FUNCTION_64();
  type metadata accessor for Amppb_Preview(v5);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_1();
  if (v12 && v4 && v3 != v2)
  {
    OUTLINED_FUNCTION_3_2();
    while (1)
    {
      v8 = OUTLINED_FUNCTION_186();
      sub_1B8D745A4(v8);
      v9 = OUTLINED_FUNCTION_196();
      sub_1B8D745A4(v9);
      OUTLINED_FUNCTION_566();
      if (!v12)
      {
        break;
      }

      OUTLINED_FUNCTION_174();
      v12 = v12 && v10 == v11;
      if (!v12 && (sub_1B964C9F0() & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_517();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v13, MEMORY[0x1E69AAC10]);
      OUTLINED_FUNCTION_101();
      OUTLINED_FUNCTION_134();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_199();
      sub_1B8D745F8();
      if (v2)
      {
        OUTLINED_FUNCTION_7_1();
        if (!v12)
        {
          continue;
        }
      }

      goto LABEL_19;
    }

    OUTLINED_FUNCTION_149();
    sub_1B8D745F8();
    OUTLINED_FUNCTION_182();
    sub_1B8D745F8();
  }

LABEL_19:
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_283();
}

void sub_1B8D7DFD0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  v7 = OUTLINED_FUNCTION_64();
  type metadata accessor for Amppb_LocalizedField(v7);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_1();
  if (v14 && v6 && v5 != v2)
  {
    OUTLINED_FUNCTION_3_2();
    while (1)
    {
      v10 = OUTLINED_FUNCTION_186();
      sub_1B8D745A4(v10);
      v11 = OUTLINED_FUNCTION_196();
      sub_1B8D745A4(v11);
      OUTLINED_FUNCTION_74_0();
      v14 = v14 && v12 == v13;
      if (!v14 && (sub_1B964C9F0() & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_83_0();
      v17 = v14 && v15 == v16;
      if (!v17 && (sub_1B964C9F0() & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_89();
      v20 = v14 && v18 == v19;
      if (!v20 && (sub_1B964C9F0() & 1) == 0 || *(v4 + 48) != *(v3 + 48))
      {
        break;
      }

      OUTLINED_FUNCTION_547();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v21, MEMORY[0x1E69AAC10]);
      v22 = OUTLINED_FUNCTION_101();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_199();
      sub_1B8D745F8();
      if (v22)
      {
        OUTLINED_FUNCTION_7_1();
        if (!v14)
        {
          continue;
        }
      }

      goto LABEL_28;
    }

    sub_1B8D745F8();
    OUTLINED_FUNCTION_182();
    sub_1B8D745F8();
  }

LABEL_28:
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_283();
}

void sub_1B8D7E1B8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  v10 = OUTLINED_FUNCTION_82_0();
  v39 = type metadata accessor for Amppb_Preview(v10);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_54();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92E0, &qword_1B964DAC0);
  OUTLINED_FUNCTION_183(v12);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_88();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92E8, &qword_1B964DAC8);
  OUTLINED_FUNCTION_36(v14);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v15);
  v16 = OUTLINED_FUNCTION_35();
  v17 = type metadata accessor for Amppb_Asset(v16);
  v18 = OUTLINED_FUNCTION_18_0(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_52();
  if (v25 && v8 && v7 != v3)
  {
    OUTLINED_FUNCTION_58();
    OUTLINED_FUNCTION_620();
    v38 = v20;
    while (1)
    {
      v21 = OUTLINED_FUNCTION_198();
      sub_1B8D745A4(v21);
      v22 = OUTLINED_FUNCTION_353();
      sub_1B8D745A4(v22);
      if (*v6 != *v5 || *(v6 + 8) != *(v5 + 8))
      {
        break;
      }

      OUTLINED_FUNCTION_156_1();
      v25 = v25 && v23 == v24;
      if (!v25 && (sub_1B964C9F0() & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_224();
      sub_1B8D92024();
      OUTLINED_FUNCTION_452();
      sub_1B8D92024();
      v26 = OUTLINED_FUNCTION_207();
      OUTLINED_FUNCTION_81(v26, v27);
      if (v25)
      {
        OUTLINED_FUNCTION_37_0(v4 + v2);
        if (!v25)
        {
          goto LABEL_35;
        }

        sub_1B8D9207C(v4, &qword_1EBAB92E0, &qword_1B964DAC0);
      }

      else
      {
        OUTLINED_FUNCTION_186();
        OUTLINED_FUNCTION_625();
        OUTLINED_FUNCTION_37_0(v4 + v2);
        if (v28)
        {
          OUTLINED_FUNCTION_29_1();
          sub_1B8D745F8();
LABEL_35:
          v36 = &qword_1EBAB92E8;
          v37 = &qword_1B964DAC8;
LABEL_36:
          sub_1B8D9207C(v4, v36, v37);
          break;
        }

        OUTLINED_FUNCTION_281();
        OUTLINED_FUNCTION_566();
        if (!v25 || ((OUTLINED_FUNCTION_174(), v25) ? (v31 = v29 == v30) : (v31 = 0), !v31 && (sub_1B964C9F0() & 1) == 0))
        {
          OUTLINED_FUNCTION_149();
          sub_1B8D745F8();
          OUTLINED_FUNCTION_182();
          sub_1B8D745F8();
          v36 = &qword_1EBAB92E0;
          v37 = &qword_1B964DAC0;
          goto LABEL_36;
        }

        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_2();
        sub_1B8D5C8D0(&qword_1EBAB3B38, v32, MEMORY[0x1E69AAC10]);
        OUTLINED_FUNCTION_181();
        OUTLINED_FUNCTION_134();
        v2 = v33;
        sub_1B8D745F8();
        OUTLINED_FUNCTION_182();
        sub_1B8D745F8();
        sub_1B8D9207C(v4, &qword_1EBAB92E0, &qword_1B964DAC0);
        if ((v39 & 1) == 0)
        {
          break;
        }
      }

      if (*(v6 + 32) != *(v5 + 32))
      {
        break;
      }

      OUTLINED_FUNCTION_621();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v34, MEMORY[0x1E69AAC10]);
      v35 = OUTLINED_FUNCTION_279_0();
      OUTLINED_FUNCTION_148();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_197();
      sub_1B8D745F8();
      if (v35)
      {
        v9 += v38;
        v7 += v38;
        OUTLINED_FUNCTION_194();
        if (!v25)
        {
          continue;
        }
      }

      goto LABEL_38;
    }

    OUTLINED_FUNCTION_148();
    sub_1B8D745F8();
    OUTLINED_FUNCTION_197();
    sub_1B8D745F8();
  }

LABEL_38:
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_283();
}

void sub_1B8D7E5B8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  v11 = OUTLINED_FUNCTION_462();
  v12 = type metadata accessor for Amppb_Preview(v11);
  v13 = OUTLINED_FUNCTION_36(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_54();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92E0, &qword_1B964DAC0);
  OUTLINED_FUNCTION_183(v14);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_88();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92E8, &qword_1B964DAC8);
  OUTLINED_FUNCTION_49(v16);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_458();
  type metadata accessor for Amppb_Asset(0);
  OUTLINED_FUNCTION_30_1();
  v76 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_442();
  MEMORY[0x1EEE9AC00](v20);
  v21 = OUTLINED_FUNCTION_440();
  v22 = type metadata accessor for Amppb_Offer(v21);
  OUTLINED_FUNCTION_19_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_15_1();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_187_0();
  OUTLINED_FUNCTION_260();
  if (v44 && v25 && v10 != v3)
  {
    OUTLINED_FUNCTION_60_0();
    v65 = v2;
    v66 = v3 + v27;
    v29 = *(v28 + 72);
    v74 = v4;
    v64 = v22;
    v71 = v30;
    v63 = v29;
    while (1)
    {
      v31 = v26;
      v32 = v29 * v26;
      v33 = OUTLINED_FUNCTION_494();
      sub_1B8D745A4(v33);
      v67 = v31;
      if (v31 == v71)
      {
        break;
      }

      sub_1B8D745A4(v66 + v32);
      v34 = *v4;
      v35 = *v6;
      v36 = *(v34 + 16);
      if (v36 != *(*v6 + 16))
      {
        goto LABEL_56;
      }

      if (v36 && v34 != v35)
      {
        v37 = 0;
        OUTLINED_FUNCTION_93();
        v72 = v35 + v38;
        v73 = v34 + v38;
        v69 = v35;
        v70 = v34;
        v68 = v39;
        while (v37 < *(v34 + 16))
        {
          v40 = *(v76 + 72) * v37;
          OUTLINED_FUNCTION_413();
          OUTLINED_FUNCTION_589(v73);
          if (v37 >= *(v35 + 16))
          {
            goto LABEL_59;
          }

          OUTLINED_FUNCTION_413();
          v41 = OUTLINED_FUNCTION_505(v72);
          sub_1B8D745A4(v41);
          if (*v8 != *v7 || *(v8 + 8) != *(v7 + 8))
          {
            goto LABEL_55;
          }

          OUTLINED_FUNCTION_156_1();
          v44 = v44 && v42 == v43;
          if (!v44 && (sub_1B964C9F0() & 1) == 0)
          {
            goto LABEL_55;
          }

          OUTLINED_FUNCTION_490();
          sub_1B8D92024();
          OUTLINED_FUNCTION_648();
          v45 = OUTLINED_FUNCTION_256();
          OUTLINED_FUNCTION_178(v45, v46, v75);
          if (v44)
          {
            OUTLINED_FUNCTION_118(v9 + v40);
            if (!v44)
            {
              goto LABEL_53;
            }
          }

          else
          {
            OUTLINED_FUNCTION_303();
            OUTLINED_FUNCTION_648();
            OUTLINED_FUNCTION_118(v9 + v40);
            if (v47)
            {
              OUTLINED_FUNCTION_29_1();
              sub_1B8D745F8();
LABEL_53:
              v60 = &qword_1EBAB92E8;
              v61 = &qword_1B964DAC8;
              v62 = v9;
LABEL_54:
              sub_1B8D9207C(v62, v60, v61);
LABEL_55:
              OUTLINED_FUNCTION_148();
              sub_1B8D745F8();
              OUTLINED_FUNCTION_197();
              sub_1B8D745F8();
              goto LABEL_56;
            }

            sub_1B8D920D4(v9 + v40);
            if (*v5 != *v65 || (v5[1] == v65[1] ? (v48 = v5[2] == v65[2]) : (v48 = 0), !v48 && (sub_1B964C9F0() & 1) == 0))
            {
              OUTLINED_FUNCTION_29_1();
              sub_1B8D745F8();
LABEL_51:
              OUTLINED_FUNCTION_29_1();
              sub_1B8D745F8();
              v60 = &qword_1EBAB92E0;
              v61 = &qword_1B964DAC0;
              v62 = v9;
              goto LABEL_54;
            }

            sub_1B964C2B0();
            OUTLINED_FUNCTION_0_2();
            sub_1B8D5C8D0(&qword_1EBAB3B38, v49, MEMORY[0x1E69AAC10]);
            v50 = sub_1B964C850();
            OUTLINED_FUNCTION_29_1();
            sub_1B8D745F8();
            if ((v50 & 1) == 0)
            {
              goto LABEL_51;
            }

            OUTLINED_FUNCTION_29_1();
            sub_1B8D745F8();
          }

          v51 = OUTLINED_FUNCTION_427();
          sub_1B8D9207C(v51, v52, &qword_1B964DAC0);
          v34 = v70;
          if (*(v8 + 32) != *(v7 + 32))
          {
            goto LABEL_55;
          }

          sub_1B964C2B0();
          OUTLINED_FUNCTION_0_2();
          sub_1B8D5C8D0(&qword_1EBAB3B38, v53, MEMORY[0x1E69AAC10]);
          v54 = OUTLINED_FUNCTION_707();
          sub_1B8D745F8();
          OUTLINED_FUNCTION_507();
          sub_1B8D745F8();
          v35 = v69;
          if ((v54 & 1) == 0)
          {
            goto LABEL_56;
          }

          if (v68 == ++v37)
          {
            goto LABEL_36;
          }
        }

        __break(1u);
LABEL_59:
        __break(1u);
        break;
      }

LABEL_36:
      v55 = v74[1] == v6[1] && v74[2] == v6[2];
      if (!v55 && (sub_1B964C9F0() & 1) == 0 || (v74[3] == v6[3] ? (v56 = v74[4] == v6[4]) : (v56 = 0), !v56 && (sub_1B964C9F0() & 1) == 0))
      {
LABEL_56:
        sub_1B8D745F8();
        OUTLINED_FUNCTION_680();
        sub_1B8D745F8();
        goto LABEL_57;
      }

      v57 = *(v64 + 28);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v58, MEMORY[0x1E69AAC10]);
      v4 = v74;
      v59 = OUTLINED_FUNCTION_712(v74 + v57);
      sub_1B8D745F8();
      OUTLINED_FUNCTION_601();
      sub_1B8D745F8();
      if (v59)
      {
        v26 = v67 + 1;
        v29 = v63;
        if (v67 + 1 != v71)
        {
          continue;
        }
      }

      goto LABEL_57;
    }

    __break(1u);
  }

  else
  {
LABEL_57:
    OUTLINED_FUNCTION_177();
    OUTLINED_FUNCTION_283();
  }
}

void sub_1B8D7EC84(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  v7 = OUTLINED_FUNCTION_64();
  type metadata accessor for Apple_Parsec_Feedback_V2_SearchSuggestionForFeedback(v7);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_1();
  if (v14 && v6 && v5 != v2)
  {
    OUTLINED_FUNCTION_3_2();
    while (1)
    {
      v10 = OUTLINED_FUNCTION_186();
      sub_1B8D745A4(v10);
      v11 = OUTLINED_FUNCTION_196();
      sub_1B8D745A4(v11);
      OUTLINED_FUNCTION_74_0();
      v14 = v14 && v12 == v13;
      if (!v14 && (sub_1B964C9F0() & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_83_0();
      v17 = v14 && v15 == v16;
      if (!v17 && (sub_1B964C9F0() & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_89();
      v20 = v14 && v18 == v19;
      if (!v20 && (sub_1B964C9F0() & 1) == 0 || *(v4 + 48) != *(v3 + 48))
      {
        break;
      }

      v21 = *(v4 + 56);
      v22 = *(v3 + 56);
      if (*(v3 + 64) == 1)
      {
        switch(v22)
        {
          case 1:
            if (v21 != 1)
            {
              goto LABEL_70;
            }

            goto LABEL_25;
          case 2:
            if (v21 != 2)
            {
              goto LABEL_70;
            }

            goto LABEL_25;
          case 3:
            if (v21 != 3)
            {
              goto LABEL_70;
            }

            goto LABEL_25;
          case 4:
            if (v21 != 4)
            {
              goto LABEL_70;
            }

            goto LABEL_25;
          case 5:
            if (v21 != 5)
            {
              goto LABEL_70;
            }

            goto LABEL_25;
          case 6:
            if (v21 != 6)
            {
              goto LABEL_70;
            }

            goto LABEL_25;
          case 7:
            if (v21 != 7)
            {
              goto LABEL_70;
            }

            goto LABEL_25;
          case 8:
            if (v21 != 8)
            {
              goto LABEL_70;
            }

            goto LABEL_25;
          case 9:
            if (v21 != 9)
            {
              goto LABEL_70;
            }

            goto LABEL_25;
          case 10:
            if (v21 != 10)
            {
              goto LABEL_70;
            }

            goto LABEL_25;
          case 11:
            if (v21 != 11)
            {
              goto LABEL_70;
            }

            goto LABEL_25;
          case 12:
            if (v21 != 12)
            {
              goto LABEL_70;
            }

            goto LABEL_25;
          case 13:
            if (v21 != 13)
            {
              goto LABEL_70;
            }

            goto LABEL_25;
          case 14:
            if (v21 != 14)
            {
              goto LABEL_70;
            }

            goto LABEL_25;
          case 15:
            if (v21 != 15)
            {
              goto LABEL_70;
            }

            goto LABEL_25;
          case 16:
            if (v21 != 16)
            {
              goto LABEL_70;
            }

            goto LABEL_25;
          default:
            break;
        }
      }

      if (v21 != v22)
      {
        break;
      }

LABEL_25:
      v23 = *(v4 + 72) == *(v3 + 72) && *(v4 + 80) == *(v3 + 80);
      if (!v23 && (sub_1B964C9F0() & 1) == 0)
      {
        break;
      }

      v24 = *(v4 + 88) == *(v3 + 88) && *(v4 + 96) == *(v3 + 96);
      if (!v24 && (sub_1B964C9F0() & 1) == 0)
      {
        break;
      }

      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v25, MEMORY[0x1E69AAC10]);
      v26 = OUTLINED_FUNCTION_101();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_199();
      sub_1B8D745F8();
      if (v26)
      {
        OUTLINED_FUNCTION_7_1();
        if (!v14)
        {
          continue;
        }
      }

      goto LABEL_71;
    }

LABEL_70:
    sub_1B8D745F8();
    OUTLINED_FUNCTION_182();
    sub_1B8D745F8();
  }

LABEL_71:
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_283();
}

void sub_1B8D7EFB0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  v5 = OUTLINED_FUNCTION_64();
  v6 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenSymbol(v5);
  v7 = OUTLINED_FUNCTION_183(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_258();
  v8 = type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenText(0);
  v9 = OUTLINED_FUNCTION_183(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_21();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB91C8, &qword_1B964D9B0);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  v12 = OUTLINED_FUNCTION_87(v11, v47);
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerToken.OneOf_Value(v12);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_265();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_682();
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_266_0();
  OUTLINED_FUNCTION_295(v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB91D0, &qword_1B964D9B8);
  OUTLINED_FUNCTION_183(v17);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_139();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB91D8, &unk_1B964D9C0);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_458();
  type metadata accessor for Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerToken(0);
  OUTLINED_FUNCTION_19_0();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_33_1();
  v50 = v21;
  OUTLINED_FUNCTION_206();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_63_0();
  v23 = *(v3 + 16);
  OUTLINED_FUNCTION_312();
  if (!v32 || !v23 || v3 == v2)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_60_0();
  v25 = v3 + v24;
  v26 = v2 + v24;
  v49 = *(v27 + 72);
  v28 = v50;
  while (1)
  {
    v29 = OUTLINED_FUNCTION_486();
    sub_1B8D745A4(v29);
    v30 = OUTLINED_FUNCTION_202();
    sub_1B8D745A4(v30);
    v31 = *(v52 + 48);
    OUTLINED_FUNCTION_492();
    sub_1B8D92024();
    sub_1B8D92024();
    OUTLINED_FUNCTION_99_0(v4);
    if (!v32)
    {
      break;
    }

    OUTLINED_FUNCTION_99_0(v4 + v31);
    if (!v32)
    {
      goto LABEL_23;
    }

LABEL_18:
    v41 = OUTLINED_FUNCTION_205();
    sub_1B8D9207C(v41, v42, &qword_1B964D9B8);
    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_2();
    sub_1B8D5C8D0(&qword_1EBAB3B38, v43, MEMORY[0x1E69AAC10]);
    v44 = sub_1B964C850();
    sub_1B8D745F8();
    OUTLINED_FUNCTION_1_0();
    sub_1B8D745F8();
    if (v44)
    {
      v26 += v49;
      v25 += v49;
      if (--v23)
      {
        continue;
      }
    }

    goto LABEL_27;
  }

  OUTLINED_FUNCTION_661();
  sub_1B8D92024();
  OUTLINED_FUNCTION_99_0(v4 + v31);
  if (v32)
  {
    OUTLINED_FUNCTION_144();
    sub_1B8D745F8();
LABEL_23:
    v45 = &qword_1EBAB91D8;
    v46 = &unk_1B964D9C0;
    goto LABEL_26;
  }

  v33 = OUTLINED_FUNCTION_540();
  sub_1B8D920D4(v33);
  v34 = *(v48 + 48);
  sub_1B8D745A4(v28);
  sub_1B8D745A4(v51);
  OUTLINED_FUNCTION_261();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v35 = OUTLINED_FUNCTION_298();
    sub_1B8D745A4(v35);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      goto LABEL_24;
    }

    sub_1B8D920D4(v53 + v34);
    OUTLINED_FUNCTION_261();
    static Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenSymbol.== infix(_:_:)();
    v37 = v36;
    sub_1B8D745F8();
    OUTLINED_FUNCTION_544();
    sub_1B8D745F8();
    OUTLINED_FUNCTION_144();
    sub_1B8D745F8();
    v28 = v50;
    if ((v37 & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_17;
  }

  v38 = OUTLINED_FUNCTION_298();
  sub_1B8D745A4(v38);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B8D920D4(v53 + v34);
    OUTLINED_FUNCTION_261();
    static Apple_Parsec_DeviceExpert_V0alpha_ClientComponent_DeviceExpertResult.AnswerTokenText.== infix(_:_:)();
    v40 = v39;
    sub_1B8D745F8();
    OUTLINED_FUNCTION_544();
    sub_1B8D745F8();
    OUTLINED_FUNCTION_144();
    sub_1B8D745F8();
    v28 = v50;
    if ((v40 & 1) == 0)
    {
      goto LABEL_25;
    }

LABEL_17:
    OUTLINED_FUNCTION_403();
    sub_1B8D745F8();
    sub_1B8D745F8();
    goto LABEL_18;
  }

LABEL_24:
  sub_1B8D745F8();
  sub_1B8D9207C(v53, &qword_1EBAB91C8, &qword_1B964D9B0);
LABEL_25:
  OUTLINED_FUNCTION_403();
  sub_1B8D745F8();
  sub_1B8D745F8();
  v45 = &qword_1EBAB91D0;
  v46 = &qword_1B964D9B8;
LABEL_26:
  sub_1B8D9207C(v4, v45, v46);
  sub_1B8D745F8();
  OUTLINED_FUNCTION_526();
LABEL_27:
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_283();
}

void sub_1B8D7F68C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_284();
  v18 = v8;
  v9 = OUTLINED_FUNCTION_82_0();
  v10(v9);
  OUTLINED_FUNCTION_19_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_65();
  if (v13 && v7 && v6 != v3)
  {
    OUTLINED_FUNCTION_58();
    OUTLINED_FUNCTION_607();
    while (1)
    {
      v14 = OUTLINED_FUNCTION_163();
      sub_1B8D745A4(v14);
      v15 = OUTLINED_FUNCTION_205();
      sub_1B8D745A4(v15);
      if ((v18(*v5, *v4) & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_565();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v16, MEMORY[0x1E69AAC10]);
      v17 = OUTLINED_FUNCTION_277();
      OUTLINED_FUNCTION_195();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_197();
      sub_1B8D745F8();
      if (v17)
      {
        OUTLINED_FUNCTION_112_0();
        if (!v13)
        {
          continue;
        }
      }

      goto LABEL_13;
    }

    OUTLINED_FUNCTION_195();
    sub_1B8D745F8();
    OUTLINED_FUNCTION_197();
    sub_1B8D745F8();
  }

LABEL_13:
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_283();
}

void sub_1B8D7F7FC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  v7 = OUTLINED_FUNCTION_64();
  type metadata accessor for Apple_Parsec_Feedback_V2_ButtonForFeedback(v7);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_1();
  if (v16 && v6 && v5 != v2)
  {
    OUTLINED_FUNCTION_3_2();
    while (1)
    {
      v10 = OUTLINED_FUNCTION_186();
      sub_1B8D745A4(v10);
      v11 = OUTLINED_FUNCTION_196();
      sub_1B8D745A4(v11);
      v12 = *v4;
      if (*(v4 + 8) == 1)
      {
        v12 = qword_1B964E1A0[v12];
      }

      v13 = *v3;
      if (*(v3 + 8))
      {
        switch(v13)
        {
          case 23:
            if (v12 != 23)
            {
              goto LABEL_72;
            }

            goto LABEL_11;
          case 24:
            if (v12 != 24)
            {
              goto LABEL_72;
            }

            goto LABEL_11;
          case 25:
            if (v12 != 25)
            {
              goto LABEL_72;
            }

            goto LABEL_11;
          case 26:
            if (v12 != 26)
            {
              goto LABEL_72;
            }

            goto LABEL_11;
          case 27:
            if (v12 != 27)
            {
              goto LABEL_72;
            }

            goto LABEL_11;
          case 28:
            if (v12 != 28)
            {
              goto LABEL_72;
            }

            goto LABEL_11;
          case 29:
            if (v12 != 29)
            {
              goto LABEL_72;
            }

            goto LABEL_11;
          case 30:
            if (v12 != 30)
            {
              goto LABEL_72;
            }

            goto LABEL_11;
          case 31:
            if (v12 != 31)
            {
              goto LABEL_72;
            }

            goto LABEL_11;
          case 32:
            if (v12 != 32)
            {
              goto LABEL_72;
            }

            goto LABEL_11;
          case 33:
            if (v12 != 33)
            {
              goto LABEL_72;
            }

            goto LABEL_11;
          case 34:
            if (v12 != 34)
            {
              goto LABEL_72;
            }

            goto LABEL_11;
          case 35:
            if (v12 != 35)
            {
              goto LABEL_72;
            }

            goto LABEL_11;
          case 36:
            if (v12 != 36)
            {
              goto LABEL_72;
            }

            goto LABEL_11;
          case 37:
            if (v12 != 37)
            {
              goto LABEL_72;
            }

            goto LABEL_11;
          case 38:
            if (v12 != 38)
            {
              goto LABEL_72;
            }

            goto LABEL_11;
          case 39:
            if (v12 != 39)
            {
              goto LABEL_72;
            }

            goto LABEL_11;
          case 40:
            if (v12 != 40)
            {
              goto LABEL_72;
            }

            goto LABEL_11;
          case 41:
            if (v12 != 41)
            {
              goto LABEL_72;
            }

            goto LABEL_11;
          case 42:
            if (v12 != 42)
            {
              goto LABEL_72;
            }

            goto LABEL_11;
          case 43:
            if (v12 != 43)
            {
              goto LABEL_72;
            }

            goto LABEL_11;
          case 44:
            if (v12 != 44)
            {
              goto LABEL_72;
            }

            goto LABEL_11;
          case 45:
            if (v12 != 45)
            {
              goto LABEL_72;
            }

            goto LABEL_11;
          case 46:
            if (v12 != 46)
            {
              goto LABEL_72;
            }

            goto LABEL_11;
          case 47:
            if (v12 != 47)
            {
              goto LABEL_72;
            }

            goto LABEL_11;
          case 48:
            if (v12 != 50)
            {
              goto LABEL_72;
            }

            goto LABEL_11;
          default:
            break;
        }
      }

      if (v12 != v13)
      {
        break;
      }

LABEL_11:
      OUTLINED_FUNCTION_83_0();
      v16 = v16 && v14 == v15;
      if (!v16 && (sub_1B964C9F0() & 1) == 0 || v4[4] != v3[4])
      {
        break;
      }

      OUTLINED_FUNCTION_561();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v17, MEMORY[0x1E69AAC10]);
      v18 = OUTLINED_FUNCTION_101();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_199();
      sub_1B8D745F8();
      if (v18)
      {
        OUTLINED_FUNCTION_7_1();
        if (!v16)
        {
          continue;
        }
      }

      goto LABEL_73;
    }

LABEL_72:
    sub_1B8D745F8();
    OUTLINED_FUNCTION_182();
    sub_1B8D745F8();
  }

LABEL_73:
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_283();
}

void sub_1B8D7FBE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_284();
  v21 = v6;
  v7 = OUTLINED_FUNCTION_82_0();
  v8(v7);
  OUTLINED_FUNCTION_19_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_78();
  v11 = *(v4 + 16);
  OUTLINED_FUNCTION_695();
  if (v12 && v11 && v4 != v3)
  {
    OUTLINED_FUNCTION_58();
    v14 = v3 + v13;
    v16 = *(v15 + 72);
    while (1)
    {
      v17 = OUTLINED_FUNCTION_163();
      sub_1B8D745A4(v17);
      v18 = OUTLINED_FUNCTION_205();
      sub_1B8D745A4(v18);
      OUTLINED_FUNCTION_605();
      if (!v12)
      {

        v19 = v21(v3, v5);

        if ((v19 & 1) == 0)
        {
          break;
        }
      }

      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v20, MEMORY[0x1E69AAC10]);
      OUTLINED_FUNCTION_259();
      if ((sub_1B964C850() & 1) == 0)
      {
        break;
      }

      OUTLINED_FUNCTION_572();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_287();
      sub_1B8D745F8();
      v14 += v16;
      v4 += v16;
      if (!--v11)
      {
        goto LABEL_12;
      }
    }

    OUTLINED_FUNCTION_604();
    sub_1B8D745F8();
    OUTLINED_FUNCTION_197();
    sub_1B8D745F8();
  }

LABEL_12:
  OUTLINED_FUNCTION_283();
}

void sub_1B8D7FD9C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  v9 = OUTLINED_FUNCTION_94();
  v10 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(v9);
  OUTLINED_FUNCTION_30_1();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_44_0();
  v102 = v14;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_563();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_442();
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v87 - v19;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_441();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9168, &qword_1B964D950);
  OUTLINED_FUNCTION_183(v21);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_159();
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9170, &qword_1B964D958);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_172(v24);
  v97 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultRankingFeedback(0);
  OUTLINED_FUNCTION_19_0();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_33_1();
  v101 = v26;
  OUTLINED_FUNCTION_206();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_189_0();
  if (v40 && v28 && v3 != v2)
  {
    v91 = v4;
    v92 = v8;
    v93 = v12;
    v29 = 0;
    OUTLINED_FUNCTION_60_0();
    v31 = v3 + v30;
    OUTLINED_FUNCTION_620();
    v99 = v7;
    v100 = v10;
    v95 = v33;
    v89 = v8;
    v90 = v31;
    v88 = v32;
    while (1)
    {
      v34 = v32 * v29;
      OUTLINED_FUNCTION_73();
      sub_1B8D745A4(v31 + v34);
      if (v29 == v95)
      {
        break;
      }

      v94 = v29;
      OUTLINED_FUNCTION_73();
      sub_1B8D745A4(v8 + v34);
      OUTLINED_FUNCTION_669();
      if (!v40)
      {
        goto LABEL_47;
      }

      v35 = *(v96 + 48);
      v36 = v98;
      sub_1B8D92024();
      sub_1B8D92024();
      OUTLINED_FUNCTION_32(v36);
      if (v40)
      {
        OUTLINED_FUNCTION_32(v36 + v35);
        if (!v40)
        {
          goto LABEL_44;
        }

        v37 = OUTLINED_FUNCTION_303();
        sub_1B8D9207C(v37, v38, &qword_1B964D950);
      }

      else
      {
        v39 = v92;
        OUTLINED_FUNCTION_600();
        sub_1B8D92024();
        OUTLINED_FUNCTION_32(v36 + v35);
        if (v40)
        {
          OUTLINED_FUNCTION_391();
          sub_1B8D745F8();
LABEL_44:
          v84 = &qword_1EBAB9170;
          v85 = &qword_1B964D958;
          v86 = v36;
          goto LABEL_46;
        }

        OUTLINED_FUNCTION_392();
        v41 = v91;
        sub_1B8D920D4(v36 + v35);
        v42 = *(v10 + 20);
        v43 = *(v39 + v42);
        if (v43 != *(v41 + v42))
        {

          v44 = OUTLINED_FUNCTION_543();
          v46 = sub_1B8FB7DA4(v44, v45);

          if (!v46)
          {
            OUTLINED_FUNCTION_16_1();
            sub_1B8D745F8();
            OUTLINED_FUNCTION_425();
            sub_1B8D745F8();
            v84 = &qword_1EBAB9168;
            v85 = &qword_1B964D950;
            v86 = v98;
LABEL_46:
            sub_1B8D9207C(v86, v84, v85);
            goto LABEL_47;
          }
        }

        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_2();
        sub_1B8D5C8D0(&qword_1EBAB3B38, v47, MEMORY[0x1E69AAC10]);
        OUTLINED_FUNCTION_486();
        sub_1B964C850();
        OUTLINED_FUNCTION_38();
        sub_1B8D745F8();
        OUTLINED_FUNCTION_622();
        sub_1B8D9207C(v98, &qword_1EBAB9168, &qword_1B964D950);
        if ((v43 & 1) == 0)
        {
          goto LABEL_47;
        }
      }

      OUTLINED_FUNCTION_190();
      if (!v40)
      {
        goto LABEL_47;
      }

      if (v35 && v49 != v48)
      {
        OUTLINED_FUNCTION_96();
        v52 = v50 + v51;
        v54 = v53 + v51;
        v56 = *(v55 + 72);
        while (1)
        {
          OUTLINED_FUNCTION_8_0();
          sub_1B8D745A4(v52);
          OUTLINED_FUNCTION_8_0();
          v57 = OUTLINED_FUNCTION_353();
          sub_1B8D745A4(v57);
          v58 = *(v10 + 20);
          v59 = *&v20[v58];
          if (v59 != *(v6 + v58))
          {

            v60 = OUTLINED_FUNCTION_616();
            v62 = sub_1B8FB7DA4(v60, v61);

            if (!v62)
            {
              break;
            }
          }

          sub_1B964C2B0();
          OUTLINED_FUNCTION_0_2();
          sub_1B8D5C8D0(&qword_1EBAB3B38, v63, MEMORY[0x1E69AAC10]);
          OUTLINED_FUNCTION_259();
          sub_1B964C850();
          OUTLINED_FUNCTION_38();
          sub_1B8D745F8();
          OUTLINED_FUNCTION_686();
          sub_1B8D745F8();
          v10 = v100;
          if ((v59 & 1) == 0)
          {
            goto LABEL_47;
          }

          v54 += v56;
          v52 += v56;
          if (!--v35)
          {
            goto LABEL_27;
          }
        }

LABEL_42:
        OUTLINED_FUNCTION_16_1();
        sub_1B8D745F8();
        sub_1B8D745F8();
LABEL_47:
        OUTLINED_FUNCTION_390();
        sub_1B8D745F8();
        OUTLINED_FUNCTION_662();
        sub_1B8D745F8();
        goto LABEL_48;
      }

LABEL_27:
      OUTLINED_FUNCTION_190();
      if (!v40)
      {
        goto LABEL_47;
      }

      if (v35 && v65 != v64)
      {
        OUTLINED_FUNCTION_96();
        v68 = v66 + v67;
        v70 = v69 + v67;
        v72 = *(v71 + 72);
        do
        {
          OUTLINED_FUNCTION_8_0();
          v73 = OUTLINED_FUNCTION_236();
          sub_1B8D745A4(v73);
          OUTLINED_FUNCTION_8_0();
          v74 = v102;
          sub_1B8D745A4(v70);
          v75 = *(v10 + 20);
          v76 = *(v5 + v75);
          if (v76 != *(v74 + v75))
          {

            v77 = OUTLINED_FUNCTION_616();
            v79 = sub_1B8FB7DA4(v77, v78);

            if (!v79)
            {
              goto LABEL_42;
            }
          }

          sub_1B964C2B0();
          OUTLINED_FUNCTION_0_2();
          sub_1B8D5C8D0(&qword_1EBAB3B38, v80, MEMORY[0x1E69AAC10]);
          OUTLINED_FUNCTION_485();
          sub_1B964C850();
          OUTLINED_FUNCTION_38();
          sub_1B8D745F8();
          OUTLINED_FUNCTION_253();
          sub_1B8D745F8();
          v10 = v100;
          if ((v76 & 1) == 0)
          {
            goto LABEL_47;
          }

          v70 += v72;
          v68 += v72;
        }

        while (--v35);
      }

      if (*(v99 + 24) != *(v101 + 24) || *(v99 + 32) != *(v101 + 32))
      {
        goto LABEL_47;
      }

      v81 = *(v97 + 36);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v82, MEMORY[0x1E69AAC10]);
      v83 = OUTLINED_FUNCTION_552(v99 + v81);
      sub_1B8D745F8();
      OUTLINED_FUNCTION_243_0();
      sub_1B8D745F8();
      if (v83)
      {
        v29 = v94 + 1;
        v8 = v89;
        v31 = v90;
        v32 = v88;
        if (v94 + 1 != v95)
        {
          continue;
        }
      }

      goto LABEL_48;
    }

    __break(1u);
  }

  else
  {
LABEL_48:
    OUTLINED_FUNCTION_177();
    OUTLINED_FUNCTION_283();
  }
}

void sub_1B8D80560(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_284();
  v7 = OUTLINED_FUNCTION_82_0();
  v8 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_Value(v7);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_251(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9060, &qword_1B964D850);
  OUTLINED_FUNCTION_183(v11);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_79();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9068, &qword_1B964D858);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_139();
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_TemplateItem(0);
  OUTLINED_FUNCTION_19_0();
  v15 = MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_31_0(v15, v16, v17, v18, v19, v20, v21, v22, v40);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_63_0();
  v24 = *(v6 + 16);
  OUTLINED_FUNCTION_192();
  if (!v32 || !v24 || v6 == v3)
  {
    goto LABEL_61;
  }

  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_564();
  v41 = v8;
  v42 = v26;
  v45 = v4;
  while (1)
  {
    sub_1B8D745A4(v25);
    sub_1B8D745A4(v46);
    v27 = *v4;
    v28 = *v47;
    if (*(v47 + 8) == 1)
    {
      switch(v28)
      {
        case 1:
          if (v27 != 1)
          {
            goto LABEL_60;
          }

          goto LABEL_11;
        case 2:
          if (v27 != 2)
          {
            goto LABEL_60;
          }

          goto LABEL_11;
        case 3:
          if (v27 != 3)
          {
            goto LABEL_60;
          }

          goto LABEL_11;
        case 4:
          if (v27 != 4)
          {
            goto LABEL_60;
          }

          goto LABEL_11;
        case 5:
          if (v27 != 5)
          {
            goto LABEL_60;
          }

          goto LABEL_11;
        case 6:
          if (v27 != 6)
          {
            goto LABEL_60;
          }

          goto LABEL_11;
        case 7:
          if (v27 != 7)
          {
            goto LABEL_60;
          }

          goto LABEL_11;
        case 8:
          if (v27 != 8)
          {
            goto LABEL_60;
          }

          goto LABEL_11;
        case 9:
          if (v27 != 9)
          {
            goto LABEL_60;
          }

          goto LABEL_11;
        case 10:
          if (v27 != 10)
          {
            goto LABEL_60;
          }

          goto LABEL_11;
        case 11:
          if (v27 != 11)
          {
            goto LABEL_60;
          }

          goto LABEL_11;
        case 12:
          if (v27 != 12)
          {
            goto LABEL_60;
          }

          goto LABEL_11;
        case 13:
          if (v27 != 13)
          {
            goto LABEL_60;
          }

          goto LABEL_11;
        case 14:
          if (v27 != 14)
          {
            goto LABEL_60;
          }

          goto LABEL_11;
        case 15:
          if (v27 != 15)
          {
            goto LABEL_60;
          }

          goto LABEL_11;
        case 16:
          if (v27 != 16)
          {
            goto LABEL_60;
          }

          goto LABEL_11;
        default:
          if (v27)
          {
            goto LABEL_60;
          }

          goto LABEL_11;
      }
    }

    if (v27 != v28)
    {
      goto LABEL_60;
    }

LABEL_11:
    v29 = *(v44 + 48);
    sub_1B8D92024();
    OUTLINED_FUNCTION_577();
    OUTLINED_FUNCTION_57(v2);
    if (!v32)
    {
      break;
    }

    OUTLINED_FUNCTION_57(v2 + v29);
    if (!v32)
    {
      OUTLINED_FUNCTION_387();
      sub_1B8D745F8();
LABEL_58:
      sub_1B8D745F8();
      sub_1B8D9207C(v2, &qword_1EBAB9068, &qword_1B964D858);
      goto LABEL_61;
    }

    v30 = OUTLINED_FUNCTION_472();
    sub_1B8D9207C(v30, v31, &qword_1B964D850);
LABEL_20:
    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_2();
    sub_1B8D5C8D0(&qword_1EBAB3B38, v38, MEMORY[0x1E69AAC10]);
    v39 = sub_1B964C850();
    sub_1B8D745F8();
    OUTLINED_FUNCTION_186();
    sub_1B8D745F8();
    if (v39)
    {
      v46 += v42;
      v4 = v45;
      OUTLINED_FUNCTION_194();
      if (!v32)
      {
        continue;
      }
    }

    goto LABEL_61;
  }

  OUTLINED_FUNCTION_221();
  OUTLINED_FUNCTION_577();
  OUTLINED_FUNCTION_57(v2 + v29);
  if (v32)
  {
    OUTLINED_FUNCTION_387();
    sub_1B8D745F8();
    sub_1B8D745F8();
    goto LABEL_58;
  }

  v33 = OUTLINED_FUNCTION_541();
  sub_1B8D920D4(v33);
  if (*(v5 + *(v8 + 20)) == *(v43 + *(v8 + 20)) || (, , OUTLINED_FUNCTION_696(), sub_1B9142E4C(), v35 = v34, , , (v35 & 1) != 0))
  {
    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_2();
    sub_1B8D5C8D0(&qword_1EBAB3B38, v36, MEMORY[0x1E69AAC10]);
    OUTLINED_FUNCTION_489();
    v37 = sub_1B964C850();
    sub_1B8D745F8();
    OUTLINED_FUNCTION_186();
    sub_1B8D745F8();
    sub_1B8D9207C(v2, &qword_1EBAB9060, &qword_1B964D850);
    v8 = v41;
    if ((v37 & 1) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_20;
  }

  sub_1B8D745F8();
  OUTLINED_FUNCTION_571();
  sub_1B8D9207C(v2, &qword_1EBAB9060, &qword_1B964D850);
LABEL_60:
  OUTLINED_FUNCTION_388();
  sub_1B8D745F8();
  sub_1B8D745F8();
LABEL_61:
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_283();
}

void sub_1B8D80B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_284();
  a19 = v25;
  a20 = v26;
  v28 = v27;
  v30 = v29;
  v31 = OUTLINED_FUNCTION_533(*MEMORY[0x1E69E9840]);
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_WatchImageResource(v31);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_212_0();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9038, &qword_1B9694780);
  OUTLINED_FUNCTION_183(v33);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_173();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9040, &unk_1B964D830);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_185();
  v162 = v36;
  v37 = OUTLINED_FUNCTION_201();
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_Answer.Line(v37);
  OUTLINED_FUNCTION_30_1();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_44_0();
  v166 = v39;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_266_0();
  OUTLINED_FUNCTION_457(v41);
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9048, &unk_1B96947A0);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v42);
  v43 = OUTLINED_FUNCTION_35();
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SnippetObject.OneOf_Object(v43);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_608(v45);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9050, &qword_1B964D840);
  OUTLINED_FUNCTION_183(v46);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_164();
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9058, &qword_1B964D848);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v48);
  v49 = OUTLINED_FUNCTION_151();
  type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SnippetObject(v49);
  OUTLINED_FUNCTION_19_0();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_33_1();
  OUTLINED_FUNCTION_206();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_249();
  v165 = v52;
  OUTLINED_FUNCTION_260();
  if (!v60 || !v53 || v30 == v28)
  {
    goto LABEL_187;
  }

  v153 = v22;
  v158 = v20;
  OUTLINED_FUNCTION_60_0();
  OUTLINED_FUNCTION_666();
  v154 = v23;
  v161 = v54;
  while (1)
  {
    OUTLINED_FUNCTION_530();
    OUTLINED_FUNCTION_386();
    v55 = OUTLINED_FUNCTION_244(&a18);
    v57 = v56;
    sub_1B8D745A4(v55);
    if (v57 == v161)
    {
      __break(1u);
LABEL_189:
      __break(1u);
LABEL_190:
      __break(1u);
LABEL_191:
      __break(1u);
LABEL_192:
      __break(1u);
LABEL_193:
      __break(1u);
LABEL_194:
      __break(1u);
LABEL_195:
      __break(1u);
LABEL_196:
      __break(1u);
LABEL_197:
      __break(1u);
LABEL_198:
      __break(1u);
LABEL_199:
      __break(1u);
LABEL_200:
      __break(1u);
LABEL_201:
      __break(1u);
LABEL_202:
      __break(1u);
LABEL_203:
      __break(1u);
LABEL_204:
      __break(1u);
LABEL_205:
      __break(1u);
LABEL_206:
      __break(1u);
    }

    OUTLINED_FUNCTION_386();
    v58 = OUTLINED_FUNCTION_244(&a15);
    sub_1B8D745A4(v58);
    v59 = *(v164 + 48);
    sub_1B8D92024();
    OUTLINED_FUNCTION_248();
    sub_1B8D92024();
    OUTLINED_FUNCTION_50(v24);
    if (!v60)
    {
      break;
    }

    OUTLINED_FUNCTION_50(v24 + v59);
    if (!v60)
    {
      OUTLINED_FUNCTION_140();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_288();
LABEL_180:
      sub_1B8D745F8();
      sub_1B8D9207C(v24, &qword_1EBAB9058, &qword_1B964D848);
      goto LABEL_187;
    }

    sub_1B8D9207C(v24, &qword_1EBAB9050, &qword_1B964D840);
LABEL_174:
    OUTLINED_FUNCTION_536();
    OUTLINED_FUNCTION_624();
    OUTLINED_FUNCTION_0_2();
    sub_1B8D5C8D0(&qword_1EBAB3B38, v147, MEMORY[0x1E69AAC10]);
    v148 = OUTLINED_FUNCTION_525(v165 + v59);
    sub_1B8D745F8();
    OUTLINED_FUNCTION_287();
    sub_1B8D745F8();
    if ((v148 & 1) == 0 || v57 + 1 == v161)
    {
      goto LABEL_187;
    }
  }

  OUTLINED_FUNCTION_686();
  OUTLINED_FUNCTION_248();
  sub_1B8D92024();
  OUTLINED_FUNCTION_50(v24 + v59);
  if (v60)
  {
    OUTLINED_FUNCTION_140();
    sub_1B8D745F8();
    OUTLINED_FUNCTION_288();
    sub_1B8D745F8();
    OUTLINED_FUNCTION_465();
    goto LABEL_180;
  }

  sub_1B8D920D4(v24 + v59);
  v61 = (v21 + *(v160 + 48));
  sub_1B8D745A4(v23);
  sub_1B8D745A4(v163);
  v62 = *v21 == *v61 && v21[1] == v61[1];
  if (!v62 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_185;
  }

  v63 = v21[2];
  v64 = v61[2];
  v65 = *(v63 + 16);
  if (v65 != *(v64 + 16))
  {
    goto LABEL_185;
  }

  if (!v65 || v63 == v64)
  {
LABEL_173:
    type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_Answer(0);
    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_2();
    sub_1B8D5C8D0(&qword_1EBAB3B38, v145, MEMORY[0x1E69AAC10]);
    v146 = OUTLINED_FUNCTION_509();
    v59 = OUTLINED_FUNCTION_518(v146);
    sub_1B8D745F8();
    sub_1B8D745F8();
    OUTLINED_FUNCTION_253();
    sub_1B8D745F8();
    v23 = v154;
    OUTLINED_FUNCTION_629();
    sub_1B8D9207C(v24, &qword_1EBAB9050, &qword_1B964D840);
    if ((v59 & 1) == 0)
    {
      goto LABEL_186;
    }

    goto LABEL_174;
  }

  v66 = 0;
  OUTLINED_FUNCTION_93();
  v155 = v64;
  v157 = v21;
  v156 = v63;
  while (2)
  {
    if (v66 >= *(v63 + 16))
    {
      goto LABEL_189;
    }

    OUTLINED_FUNCTION_130();
    v67 = OUTLINED_FUNCTION_244(&a11);
    sub_1B8D745A4(v67);
    if (v66 >= *(v64 + 16))
    {
      goto LABEL_190;
    }

    v159 = v66;
    OUTLINED_FUNCTION_130();
    v68 = OUTLINED_FUNCTION_244(&a10);
    v69 = v166;
    sub_1B8D745A4(v68);
    OUTLINED_FUNCTION_428();
    if (v60)
    {
      v72 = v70 == v71;
    }

    else
    {
      v72 = 0;
    }

    if (!v72 && (sub_1B964C9F0() & 1) == 0)
    {
      goto LABEL_184;
    }

    OUTLINED_FUNCTION_447();
    v73 = v162;
    OUTLINED_FUNCTION_548();
    OUTLINED_FUNCTION_548();
    OUTLINED_FUNCTION_77(v162, 1);
    if (v60)
    {
      OUTLINED_FUNCTION_32(v162 + v166);
      if (!v60)
      {
        goto LABEL_182;
      }

      sub_1B8D9207C(v162, &qword_1EBAB9038, &qword_1B9694780);
      v21 = v157;
      goto LABEL_170;
    }

    OUTLINED_FUNCTION_548();
    OUTLINED_FUNCTION_32(v162 + v166);
    if (v74)
    {
      OUTLINED_FUNCTION_433();
LABEL_182:
      v149 = &qword_1EBAB9040;
      v150 = &unk_1B964D830;
      goto LABEL_183;
    }

    v75 = OUTLINED_FUNCTION_302();
    sub_1B8D920D4(v75);
    v76 = *v153 == *v158 && v153[1] == *(v158 + 8);
    if (!v76 && (sub_1B964C9F0() & 1) == 0)
    {
      goto LABEL_178;
    }

    OUTLINED_FUNCTION_582();
    if (!v60)
    {
      goto LABEL_178;
    }

    OUTLINED_FUNCTION_581();
    if (!v60)
    {
      goto LABEL_178;
    }

    OUTLINED_FUNCTION_580();
    if (!v60)
    {
      goto LABEL_178;
    }

    OUTLINED_FUNCTION_579();
    if (!v60)
    {
      goto LABEL_178;
    }

    v77 = v153[6];
    v78 = *(v158 + 48);
    if (*(v158 + 56) == 1)
    {
      switch(v78)
      {
        case 1:
          if (v77 != 1)
          {
            goto LABEL_178;
          }

          goto LABEL_53;
        case 2:
          if (v77 != 2)
          {
            goto LABEL_178;
          }

          goto LABEL_53;
        case 3:
          if (v77 != 3)
          {
            goto LABEL_178;
          }

          goto LABEL_53;
        case 4:
          if (v77 != 4)
          {
            goto LABEL_178;
          }

          goto LABEL_53;
        case 5:
          if (v77 != 5)
          {
            goto LABEL_178;
          }

          goto LABEL_53;
        case 6:
          if (v77 != 6)
          {
            goto LABEL_178;
          }

          goto LABEL_53;
        case 7:
          if (v77 != 7)
          {
            goto LABEL_178;
          }

          goto LABEL_53;
        case 8:
          if (v77 != 8)
          {
            goto LABEL_178;
          }

          goto LABEL_53;
        case 9:
          if (v77 != 9)
          {
            goto LABEL_178;
          }

          goto LABEL_53;
        case 10:
          if (v77 != 10)
          {
            goto LABEL_178;
          }

          goto LABEL_53;
        case 11:
          if (v77 != 11)
          {
            goto LABEL_178;
          }

          goto LABEL_53;
        case 12:
          if (v77 != 12)
          {
            goto LABEL_178;
          }

          goto LABEL_53;
        default:
          if (v77)
          {
            goto LABEL_178;
          }

          goto LABEL_53;
      }
    }

    if (v77 != v78)
    {
LABEL_178:
      OUTLINED_FUNCTION_143();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_202();
      sub_1B8D745F8();
      v149 = &qword_1EBAB9038;
      v150 = &qword_1B9694780;
LABEL_183:
      sub_1B8D9207C(v73, v149, v150);
LABEL_184:
      OUTLINED_FUNCTION_335();
      sub_1B8D745F8();
      sub_1B8D745F8();
LABEL_185:
      sub_1B8D745F8();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_311();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_718();
      sub_1B8D9207C(v24, &qword_1EBAB9050, &qword_1B964D840);
LABEL_186:
      OUTLINED_FUNCTION_140();
      sub_1B8D745F8();
      sub_1B8D745F8();
LABEL_187:
      OUTLINED_FUNCTION_498();
      OUTLINED_FUNCTION_283();
      return;
    }

LABEL_53:
    OUTLINED_FUNCTION_578();
    if (!v60)
    {
      goto LABEL_178;
    }

    v79 = v153[8];
    v80 = *(v158 + 64);
    if (*(v158 + 72) == 1)
    {
      switch(v80)
      {
        case 1:
          if (v79 != 1)
          {
            goto LABEL_178;
          }

          goto LABEL_60;
        case 2:
          if (v79 != 2)
          {
            goto LABEL_178;
          }

          goto LABEL_60;
        case 3:
          if (v79 != 3)
          {
            goto LABEL_178;
          }

          goto LABEL_60;
        case 4:
          goto LABEL_178;
        case 5:
          if (v79 != 5)
          {
            goto LABEL_178;
          }

          goto LABEL_60;
        case 6:
          if (v79 != 6)
          {
            goto LABEL_178;
          }

          goto LABEL_60;
        default:
          if (v79)
          {
            goto LABEL_178;
          }

          goto LABEL_60;
      }
    }

    if (v79 != v80)
    {
      goto LABEL_178;
    }

LABEL_60:
    while (2)
    {
      v81 = v153[11];
      v83 = *(v158 + 80);
      v82 = *(v158 + 88);
      OUTLINED_FUNCTION_558();
      if (v60)
      {
        v89 = 0;
        if (!v85 && v81 == 0xC000000000000000 && v84 >= 3)
        {
          v89 = 0;
          if (!v83 && v82 == 0xC000000000000000)
          {
            goto LABEL_169;
          }
        }
      }

      else
      {
        v89 = 0;
        switch(v87)
        {
          case 1:
            if (__OFSUB__(v86, v85))
            {
              goto LABEL_193;
            }

            v89 = v86 - v85;
            break;
          case 2:
            OUTLINED_FUNCTION_250();
            if (!v90)
            {
              break;
            }

            goto LABEL_194;
          case 3:
            break;
          default:
            v89 = BYTE6(v81);
            break;
        }
      }

      v91 = BYTE6(v82);
      switch(v84)
      {
        case 0uLL:
          v92 = BYTE6(v82);
          goto LABEL_85;
        case 1uLL:
          LODWORD(v92) = HIDWORD(v83) - v83;
          if (__OFSUB__(HIDWORD(v83), v83))
          {
            goto LABEL_192;
          }

          v92 = v92;
LABEL_85:
          if (v89 != v92)
          {
            goto LABEL_178;
          }

          if (v89 < 1)
          {
            goto LABEL_169;
          }

          break;
        case 2uLL:
          OUTLINED_FUNCTION_698();
          if (!v90)
          {
            goto LABEL_85;
          }

          goto LABEL_191;
        case 3uLL:
          if (v89)
          {
            goto LABEL_178;
          }

          goto LABEL_169;
        default:
          continue;
      }

      break;
    }

    v93 = v83 >> 32;
    switch(v87)
    {
      case 1:
        if (v85 >> 32 < v85)
        {
          goto LABEL_195;
        }

        v114 = OUTLINED_FUNCTION_234();
        sub_1B8D91FCC(v114, v115);
        v116 = OUTLINED_FUNCTION_234();
        sub_1B8D91FCC(v116, v117);
        v118 = OUTLINED_FUNCTION_234();
        sub_1B8D91FCC(v118, v119);
        if (sub_1B964C070())
        {
          sub_1B964C090();
          OUTLINED_FUNCTION_483();
          if (v90)
          {
            goto LABEL_198;
          }
        }

        OUTLINED_FUNCTION_359();
        goto LABEL_152;
      case 2:
        v152 = *(v85 + 16);
        v151 = *(v85 + 24);
        v100 = OUTLINED_FUNCTION_234();
        sub_1B8D91FCC(v100, v101);
        v102 = OUTLINED_FUNCTION_234();
        sub_1B8D91FCC(v102, v103);
        v104 = OUTLINED_FUNCTION_234();
        sub_1B8D91FCC(v104, v105);
        if (sub_1B964C070())
        {
          sub_1B964C090();
          OUTLINED_FUNCTION_483();
          if (v90)
          {
            goto LABEL_197;
          }
        }

        else
        {
          v106 = v152;
        }

        if (__OFSUB__(v151, v106))
        {
          goto LABEL_196;
        }

LABEL_152:
        sub_1B964C080();
        OUTLINED_FUNCTION_223();
        OUTLINED_FUNCTION_460();
        sub_1B8D91D0C(v168, v120, v83, v82);
        v121 = OUTLINED_FUNCTION_234();
        sub_1B8D538A0(v121, v122);
        v123 = OUTLINED_FUNCTION_234();
        sub_1B8D538A0(v123, v124);
        v125 = OUTLINED_FUNCTION_234();
        sub_1B8D538A0(v125, v126);
        v73 = v162;
        if ((v168[0] & 1) == 0)
        {
          goto LABEL_178;
        }

        goto LABEL_169;
      case 3:
        memset(v168, 0, 14);
        if (!v84)
        {
          goto LABEL_121;
        }

        if (v84 == 2)
        {
          v107 = *(v83 + 16);
          v108 = OUTLINED_FUNCTION_234();
          sub_1B8D91FCC(v108, v109);
          v96 = sub_1B964C070();
          if (v96)
          {
            v110 = sub_1B964C090();
            if (__OFSUB__(v107, v110))
            {
              goto LABEL_204;
            }

            v96 += v107 - v110;
          }

          OUTLINED_FUNCTION_359();
          v90 = __OFSUB__(v111, v107);
          v112 = v111 - v107;
          if (v90)
          {
            goto LABEL_202;
          }

          v113 = sub_1B964C080();
          if (!v96)
          {
            goto LABEL_208;
          }

LABEL_165:
          if (v113 >= v112)
          {
            v132 = v112;
          }

          else
          {
            v132 = v113;
          }

          goto LABEL_168;
        }

        if (v93 < v83)
        {
          goto LABEL_199;
        }

        v127 = OUTLINED_FUNCTION_234();
        sub_1B8D91FCC(v127, v128);
        v96 = sub_1B964C070();
        if (v96)
        {
          sub_1B964C090();
          OUTLINED_FUNCTION_359();
          v90 = __OFSUB__(v130, v129);
          v131 = v130 - v129;
          if (v90)
          {
            goto LABEL_205;
          }

          v96 += v131;
        }

        sub_1B964C080();
        if (v96)
        {
LABEL_159:
          OUTLINED_FUNCTION_359();
          OUTLINED_FUNCTION_241();
LABEL_168:
          v138 = memcmp(v168, v96, v132);
          v139 = OUTLINED_FUNCTION_234();
          sub_1B8D538A0(v139, v140);
          v73 = v162;
          if (v138)
          {
            goto LABEL_178;
          }

LABEL_169:
          sub_1B964C2B0();
          OUTLINED_FUNCTION_0_2();
          sub_1B8D5C8D0(&qword_1EBAB3B38, v141, MEMORY[0x1E69AAC10]);
          v142 = OUTLINED_FUNCTION_509();
          v69 = OUTLINED_FUNCTION_552(v142);
          sub_1B8D745F8();
          OUTLINED_FUNCTION_311();
          sub_1B8D745F8();
          sub_1B8D9207C(v73, &qword_1EBAB9038, &qword_1B9694780);
          v21 = v157;
          if ((v69 & 1) == 0)
          {
            goto LABEL_184;
          }

LABEL_170:
          if (*(v167 + 16) != *(v166 + 16))
          {
            goto LABEL_184;
          }

          OUTLINED_FUNCTION_524();
          OUTLINED_FUNCTION_0_2();
          sub_1B8D5C8D0(&qword_1EBAB3B38, v143, MEMORY[0x1E69AAC10]);
          v144 = OUTLINED_FUNCTION_518(v167 + v69);
          v64 = v155;
          sub_1B8D745F8();
          OUTLINED_FUNCTION_200();
          sub_1B8D745F8();
          v63 = v156;
          if ((v144 & 1) == 0)
          {
            goto LABEL_185;
          }

          v66 = v159 + 1;
          if (v65 == v159 + 1)
          {
            goto LABEL_173;
          }

          continue;
        }

        __break(1u);
LABEL_208:
        __break(1u);
LABEL_209:
        __break(1u);
LABEL_210:
        __break(1u);
        return;
      default:
        LOWORD(v168[0]) = v85;
        BYTE2(v168[0]) = BYTE2(v85);
        BYTE3(v168[0]) = BYTE3(v85);
        BYTE4(v168[0]) = v86;
        BYTE5(v168[0]) = BYTE5(v85);
        BYTE6(v168[0]) = BYTE6(v85);
        HIBYTE(v168[0]) = HIBYTE(v85);
        LOWORD(v168[1]) = v81;
        BYTE2(v168[1]) = BYTE2(v81);
        BYTE3(v168[1]) = BYTE3(v81);
        BYTE4(v168[1]) = BYTE4(v81);
        BYTE5(v168[1]) = BYTE5(v81);
        if (!v84)
        {
LABEL_121:
          if (OUTLINED_FUNCTION_152(SBYTE1(v82), SHIBYTE(v83), v91, SBYTE6(v83), SBYTE5(v83), SBYTE3(v83), SBYTE2(v83), SBYTE1(v83)))
          {
            goto LABEL_178;
          }

          goto LABEL_169;
        }

        if (v84 == 1)
        {
          if (v93 < v83)
          {
            goto LABEL_200;
          }

          v94 = OUTLINED_FUNCTION_234();
          sub_1B8D91FCC(v94, v95);
          v96 = sub_1B964C070();
          if (v96)
          {
            sub_1B964C090();
            OUTLINED_FUNCTION_359();
            v90 = __OFSUB__(v98, v97);
            v99 = v98 - v97;
            if (v90)
            {
              goto LABEL_206;
            }

            v96 += v99;
          }

          sub_1B964C080();
          if (!v96)
          {
            goto LABEL_210;
          }

          goto LABEL_159;
        }

        v133 = *(v83 + 16);
        v134 = OUTLINED_FUNCTION_234();
        sub_1B8D91FCC(v134, v135);
        v96 = sub_1B964C070();
        if (v96)
        {
          v136 = sub_1B964C090();
          if (__OFSUB__(v133, v136))
          {
            goto LABEL_203;
          }

          v96 += v133 - v136;
        }

        OUTLINED_FUNCTION_359();
        v90 = __OFSUB__(v137, v133);
        v112 = v137 - v133;
        if (v90)
        {
          goto LABEL_201;
        }

        v113 = sub_1B964C080();
        if (!v96)
        {
          goto LABEL_209;
        }

        goto LABEL_165;
    }
  }
}

void sub_1B8D81CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_284();
  a19 = v29;
  a20 = v30;
  v31 = OUTLINED_FUNCTION_191_0();
  v32 = type metadata accessor for Apple_Parsec_Feedback_V2_ResultSectionForFeedback(v31);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_21();
  v168 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAB9178, &unk_1B964D960);
  OUTLINED_FUNCTION_183(v35);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_137();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9180, &unk_1B966FA10);
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_173();
  v179 = type metadata accessor for Apple_Parsec_Feedback_V2_SearchResultForFeedback(0);
  OUTLINED_FUNCTION_30_1();
  v171 = v38;
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_44_0();
  v178 = v40;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_265();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_438();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_473();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_266_0();
  OUTLINED_FUNCTION_654(v45);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9168, &qword_1B964D950);
  OUTLINED_FUNCTION_183(v46);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_185();
  v170 = v48;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9170, &qword_1B964D958);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_170(v50);
  type metadata accessor for Apple_Parsec_Feedback_V2_ResultRankingFeedback(0);
  OUTLINED_FUNCTION_30_1();
  v174 = v51;
  v175 = v52;
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_44_0();
  v177 = v53;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v54);
  v55 = OUTLINED_FUNCTION_68();
  type metadata accessor for Apple_Parsec_Feedback_V2_SectionRankingFeedback(v55);
  OUTLINED_FUNCTION_19_0();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_61();
  v58 = MEMORY[0x1EEE9AC00](v57);
  v61 = *(v20 + 16);
  if (v61 == *(v21 + 16) && v61 && v20 != v21)
  {
    v160 = v28;
    v161 = v32;
    v164 = v58;
    v165 = v61;
    v166 = &v149 - v59;
    v167 = v60;
    v62 = 0;
    OUTLINED_FUNCTION_60_0();
    v162 = v21 + v63;
    v65 = *(v64 + 72);
    v176 = v23;
    v159 = v20 + v63;
    v158 = v65;
    while (1)
    {
      v66 = v65 * v62;
      v67 = OUTLINED_FUNCTION_494();
      v69 = v68;
      sub_1B8D745A4(v67);
      v163 = v62;
      if (v62 == v165)
      {
        break;
      }

      sub_1B8D745A4(v162 + v66);
      OUTLINED_FUNCTION_669();
      if (!v89)
      {
        goto LABEL_64;
      }

      v71 = *(v69 + 8);
      v72 = *(v70 + 8);
      v73 = *(v71 + 16);
      if (v73 != *(v72 + 16))
      {
        goto LABEL_64;
      }

      if (v73 && v71 != v72)
      {
        OUTLINED_FUNCTION_93();
        v156 = v76 + v75;
        v154 = v24;
        v153 = v25;
        v152 = v27;
        v151 = v71;
        v157 = v76;
        v150 = v77;
        v149 = v71 + v75;
        do
        {
          if (v74 >= *(v71 + 16))
          {
            goto LABEL_69;
          }

          v78 = v74;
          v79 = *(v175 + 72) * v74;
          OUTLINED_FUNCTION_73();
          sub_1B8D745A4(v80 + v79);
          OUTLINED_FUNCTION_530();
          v82 = *(v81 + 16);
          v155 = v78;
          if (v78 >= v82)
          {
            goto LABEL_70;
          }

          OUTLINED_FUNCTION_73();
          v83 = OUTLINED_FUNCTION_244(&a16);
          sub_1B8D745A4(v83);
          OUTLINED_FUNCTION_669();
          v84 = v179;
          if (!v89)
          {
            goto LABEL_63;
          }

          v85 = v173;
          v86 = *(v172 + 48);
          v87 = v176;
          sub_1B8D92024();
          OUTLINED_FUNCTION_673();
          OUTLINED_FUNCTION_720();
          OUTLINED_FUNCTION_50(v85);
          if (v89)
          {
            OUTLINED_FUNCTION_50(v85 + v86);
            if (!v89)
            {
              goto LABEL_61;
            }
          }

          else
          {
            v88 = v170;
            sub_1B8D92024();
            OUTLINED_FUNCTION_50(v85 + v86);
            if (v89)
            {
              OUTLINED_FUNCTION_391();
              sub_1B8D745F8();
LABEL_61:
              v147 = &qword_1EBAB9170;
              v148 = &qword_1B964D958;
              goto LABEL_62;
            }

            OUTLINED_FUNCTION_392();
            v90 = v169;
            sub_1B8D920D4(v85 + v86);
            if (*(v88 + *(v84 + 20)) != *(v90 + *(v84 + 20)) && (, , v91 = OUTLINED_FUNCTION_432(), v93 = sub_1B8FB7DA4(v91, v92), , , !v93) || (sub_1B964C2B0(), OUTLINED_FUNCTION_0_2(), sub_1B8D5C8D0(&qword_1EBAB3B38, v94, MEMORY[0x1E69AAC10]), OUTLINED_FUNCTION_275(), (sub_1B964C850() & 1) == 0))
            {
              OUTLINED_FUNCTION_16_1();
              sub_1B8D745F8();
              OUTLINED_FUNCTION_197();
              sub_1B8D745F8();
              v147 = &qword_1EBAB9168;
              v148 = &qword_1B964D950;
LABEL_62:
              sub_1B8D9207C(v85, v147, v148);
              goto LABEL_63;
            }

            OUTLINED_FUNCTION_16_1();
            sub_1B8D745F8();
            OUTLINED_FUNCTION_197();
            sub_1B8D745F8();
            v87 = v176;
          }

          v95 = OUTLINED_FUNCTION_677();
          sub_1B8D9207C(v95, v96, &qword_1B964D950);
          v97 = *(v87 + 8);
          v98 = *(v177 + 8);
          v99 = *(v97 + 16);
          if (v99 != *(v98 + 16))
          {
            goto LABEL_63;
          }

          if (v99 && v97 != v98)
          {
            OUTLINED_FUNCTION_96();
            v102 = v100 + v101;
            v104 = v103 + v101;
            v106 = *(v105 + 72);
            while (1)
            {
              OUTLINED_FUNCTION_8_0();
              v107 = OUTLINED_FUNCTION_514();
              sub_1B8D745A4(v107);
              OUTLINED_FUNCTION_8_0();
              v108 = OUTLINED_FUNCTION_253();
              sub_1B8D745A4(v108);
              v109 = *(v84 + 20);
              v110 = *(v22 + v109);
              v111 = *(v26 + v109);
              if (v110 != v111)
              {

                v112 = sub_1B8FB7DA4(v110, v111);

                if (!v112)
                {
                  break;
                }
              }

              sub_1B964C2B0();
              OUTLINED_FUNCTION_0_2();
              sub_1B8D5C8D0(&qword_1EBAB3B38, v113, MEMORY[0x1E69AAC10]);
              OUTLINED_FUNCTION_672();
              sub_1B964C850();
              OUTLINED_FUNCTION_38();
              sub_1B8D745F8();
              sub_1B8D745F8();
              v84 = v179;
              if ((v110 & 1) == 0)
              {
                goto LABEL_63;
              }

              v104 += v106;
              v102 += v106;
              if (!--v99)
              {
                goto LABEL_33;
              }
            }

LABEL_58:
            OUTLINED_FUNCTION_16_1();
            sub_1B8D745F8();
            sub_1B8D745F8();
LABEL_63:
            OUTLINED_FUNCTION_390();
            sub_1B8D745F8();
            OUTLINED_FUNCTION_680();
            sub_1B8D745F8();
            goto LABEL_64;
          }

LABEL_33:
          v114 = *(v176 + 16);
          v115 = *(v177 + 16);
          v116 = *(v114 + 16);
          if (v116 != *(v115 + 16))
          {
            goto LABEL_63;
          }

          if (v116 && v114 != v115)
          {
            OUTLINED_FUNCTION_96();
            v119 = v117 + v118;
            v121 = v120 + v118;
            v123 = *(v122 + 72);
            do
            {
              OUTLINED_FUNCTION_8_0();
              v124 = OUTLINED_FUNCTION_617();
              sub_1B8D745A4(v124);
              OUTLINED_FUNCTION_8_0();
              v125 = v178;
              sub_1B8D745A4(v121);
              v126 = *(v84 + 20);
              v127 = *(v28 + v126);
              v128 = *(v125 + v126);
              if (v127 != v128)
              {

                v129 = sub_1B8FB7DA4(v127, v128);

                if (!v129)
                {
                  goto LABEL_58;
                }
              }

              sub_1B964C2B0();
              OUTLINED_FUNCTION_0_2();
              sub_1B8D5C8D0(&qword_1EBAB3B38, v130, MEMORY[0x1E69AAC10]);
              OUTLINED_FUNCTION_481();
              sub_1B964C850();
              OUTLINED_FUNCTION_38();
              sub_1B8D745F8();
              OUTLINED_FUNCTION_353();
              sub_1B8D745F8();
              v84 = v179;
              if ((v127 & 1) == 0)
              {
                goto LABEL_63;
              }

              v121 += v123;
              v119 += v123;
            }

            while (--v116);
          }

          if (*(v176 + 24) != *(v177 + 24) || *(v176 + 32) != *(v177 + 32))
          {
            goto LABEL_63;
          }

          v131 = *(v174 + 36);
          sub_1B964C2B0();
          OUTLINED_FUNCTION_0_2();
          sub_1B8D5C8D0(&qword_1EBAB3B38, v132, MEMORY[0x1E69AAC10]);
          LOBYTE(v131) = OUTLINED_FUNCTION_552(v176 + v131);
          sub_1B8D745F8();
          OUTLINED_FUNCTION_311();
          sub_1B8D745F8();
          v24 = v154;
          v25 = v153;
          v27 = v152;
          v71 = v151;
          if ((v131 & 1) == 0)
          {
            goto LABEL_64;
          }

          v74 = v155 + 1;
        }

        while (v155 + 1 != v150);
      }

      v133 = *(v27 + 48);
      sub_1B8D92024();
      OUTLINED_FUNCTION_549();
      v134 = OUTLINED_FUNCTION_538();
      OUTLINED_FUNCTION_81(v134, v135);
      if (v89)
      {
        OUTLINED_FUNCTION_37_0(v25 + v133);
        if (!v89)
        {
          goto LABEL_67;
        }

        v136 = OUTLINED_FUNCTION_275();
        sub_1B8D9207C(v136, v137, &unk_1B964D960);
        v139 = v166;
        v138 = v167;
      }

      else
      {
        OUTLINED_FUNCTION_259();
        OUTLINED_FUNCTION_549();
        OUTLINED_FUNCTION_37_0(v25 + v133);
        if (v140)
        {
          OUTLINED_FUNCTION_464();
          sub_1B8D745F8();
LABEL_67:
          sub_1B8D9207C(v25, &qword_1EBAB9180, &unk_1B966FA10);
LABEL_64:
          sub_1B8D745F8();
          OUTLINED_FUNCTION_202();
          sub_1B8D745F8();
          goto LABEL_65;
        }

        sub_1B8D920D4(v25 + v133);
        OUTLINED_FUNCTION_603();
        static Apple_Parsec_Feedback_V2_ResultSectionForFeedback.== infix(_:_:)();
        v142 = v141;
        sub_1B8D745F8();
        OUTLINED_FUNCTION_200();
        sub_1B8D745F8();
        v143 = OUTLINED_FUNCTION_275();
        sub_1B8D9207C(v143, v144, &unk_1B964D960);
        v139 = v166;
        v138 = v167;
        if ((v142 & 1) == 0)
        {
          goto LABEL_64;
        }
      }

      if (*(v139 + 4) != *(v138 + 16) || *(v139 + 3) != *(v138 + 24))
      {
        goto LABEL_64;
      }

      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v145, MEMORY[0x1E69AAC10]);
      OUTLINED_FUNCTION_509();
      v146 = sub_1B964C850();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_311();
      sub_1B8D745F8();
      if (v146)
      {
        v62 = v163 + 1;
        v28 = v160;
        v65 = v158;
        if (v163 + 1 != v165)
        {
          continue;
        }
      }

      goto LABEL_65;
    }

    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
  }

  else
  {
LABEL_65:
    OUTLINED_FUNCTION_498();
    OUTLINED_FUNCTION_283();
  }
}

void sub_1B8D828D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_284();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v27 = v26;
  v28 = OUTLINED_FUNCTION_533(*MEMORY[0x1E69E9840]);
  v217 = type metadata accessor for Apple_Parsec_Multimodal_V1_BoundingBox(v28);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_62();
  v32 = v31 - v30;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90C0, &unk_1B964D8B0);
  OUTLINED_FUNCTION_183(v33);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_116();
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90C8, &unk_1B9683B30);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_185();
  v214 = v36;
  OUTLINED_FUNCTION_201();
  v216 = sub_1B964C1C0();
  OUTLINED_FUNCTION_30_1();
  v38 = v37;
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_247_0(v40);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F20, &qword_1B964D720);
  OUTLINED_FUNCTION_183(v41);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_185();
  v212[1] = v43;
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F28, &unk_1B9683B20);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_185();
  v223 = v45;
  v46 = OUTLINED_FUNCTION_201();
  v222 = type metadata accessor for Apple_Parsec_Multimodal_V1_Rendering(v46);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_21();
  v221 = v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90D0, &qword_1B964D8C0);
  OUTLINED_FUNCTION_183(v49);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_185();
  v220 = v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90D8, &qword_1B964D8C8);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_169(v54);
  v225 = type metadata accessor for Apple_Parsec_Multimodal_V1_SectionResult(0);
  OUTLINED_FUNCTION_30_1();
  v219 = v55;
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_34_0();
  MEMORY[0x1EEE9AC00](v57);
  v58 = OUTLINED_FUNCTION_440();
  type metadata accessor for Apple_Parsec_Multimodal_V1_SectionRendering(v58);
  OUTLINED_FUNCTION_19_0();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_33_1();
  v226 = v60;
  OUTLINED_FUNCTION_206();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_249();
  v227 = v62;
  OUTLINED_FUNCTION_269();
  if (!v73 || !v20 || v27 == v25)
  {
    goto LABEL_199;
  }

  v207 = v63;
  OUTLINED_FUNCTION_60_0();
  v66 = v27 + v65;
  v202 = (v38 + 8);
  v68 = *(v67 + 72);
  v205 = v20;
  v204 = v27 + v65;
  v203 = v68;
  while (1)
  {
    v211 = v64;
    sub_1B8D745A4(v66 + v68 * v64);
    OUTLINED_FUNCTION_530();
    if (v69 == v20)
    {
      goto LABEL_205;
    }

    v70 = OUTLINED_FUNCTION_448(&a9);
    sub_1B8D745A4(v70);
    OUTLINED_FUNCTION_428();
    v73 = v73 && v71 == v72;
    if (!v73 && (sub_1B964C9F0() & 1) == 0)
    {
      goto LABEL_198;
    }

    OUTLINED_FUNCTION_357();
    v76 = v73 && v74 == v75;
    if (!v76 && (sub_1B964C9F0() & 1) == 0)
    {
      goto LABEL_198;
    }

    v77 = *(v227 + 32);
    v78 = *(v226 + 32);
    v79 = *(v77 + 16);
    if (v79 != *(v78 + 16))
    {
      goto LABEL_198;
    }

    if (v79 && v77 != v78)
    {
      break;
    }

LABEL_170:
    if (*(v227 + 40) != *(v226 + 40))
    {
      goto LABEL_198;
    }

    v186 = *(v207 + 36);
    v187 = v214;
    v188 = *(v213 + 48);
    sub_1B8D92024();
    sub_1B8D92024();
    v189 = OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_178(v189, v190, v217);
    if (v73)
    {
      OUTLINED_FUNCTION_178(v187 + v188, 1, v217);
      if (!v73)
      {
        goto LABEL_201;
      }

      sub_1B8D9207C(v187, &qword_1EBAB90C0, &unk_1B964D8B0);
    }

    else
    {
      OUTLINED_FUNCTION_513();
      sub_1B8D92024();
      OUTLINED_FUNCTION_178(v187 + v188, 1, v217);
      if (v191)
      {
        OUTLINED_FUNCTION_28_0();
        sub_1B8D745F8();
LABEL_201:
        v197 = &qword_1EBAB90C8;
        v198 = &unk_1B9683B30;
LABEL_202:
        sub_1B8D9207C(v187, v197, v198);
        goto LABEL_198;
      }

      OUTLINED_FUNCTION_408();
      sub_1B8D920D4(v187 + v188);
      if (*v186 != *v32 || *(v186 + 4) != *(v32 + 4) || *(v186 + 8) != *(v32 + 8) || *(v186 + 12) != *(v32 + 12) || (*(v186 + 16) == *(v32 + 16) ? (v192 = *(v186 + 24) == *(v32 + 24)) : (v192 = 0), !v192 && (sub_1B964C9F0() & 1) == 0))
      {
        sub_1B8D745F8();
        OUTLINED_FUNCTION_571();
        v197 = &qword_1EBAB90C0;
        v198 = &unk_1B964D8B0;
        goto LABEL_202;
      }

      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_2();
      sub_1B8D5C8D0(&qword_1EBAB3B38, v193, MEMORY[0x1E69AAC10]);
      OUTLINED_FUNCTION_395();
      sub_1B964C850();
      OUTLINED_FUNCTION_133();
      sub_1B8D745F8();
      OUTLINED_FUNCTION_243_0();
      sub_1B8D745F8();
      sub_1B8D9207C(v187, &qword_1EBAB90C0, &unk_1B964D8B0);
      if ((v188 & 1) == 0)
      {
        goto LABEL_198;
      }
    }

    v194 = *(v207 + 32);
    sub_1B964C2B0();
    OUTLINED_FUNCTION_0_2();
    sub_1B8D5C8D0(&qword_1EBAB3B38, v195, MEMORY[0x1E69AAC10]);
    v196 = OUTLINED_FUNCTION_713(v227 + v194);
    sub_1B8D745F8();
    OUTLINED_FUNCTION_246();
    sub_1B8D745F8();
    if (v196)
    {
      v64 = v211 + 1;
      v20 = v205;
      v66 = v204;
      v68 = v203;
      if (v211 + 1 != v205)
      {
        continue;
      }
    }

    goto LABEL_199;
  }

  v80 = 0;
  OUTLINED_FUNCTION_93();
  v206 = v32;
  v210 = v77;
  v209 = v78;
  v208 = v81;
  while (1)
  {
    if (v80 >= *(v77 + 16))
    {
      __break(1u);
LABEL_204:
      __break(1u);
LABEL_205:
      __break(1u);
LABEL_206:
      __break(1u);
LABEL_207:
      __break(1u);
LABEL_208:
      __break(1u);
LABEL_209:
      __break(1u);
LABEL_210:
      __break(1u);
LABEL_211:
      __break(1u);
LABEL_212:
      __break(1u);
LABEL_213:
      __break(1u);
LABEL_214:
      __break(1u);
LABEL_215:
      __break(1u);
LABEL_216:
      __break(1u);
LABEL_217:
      __break(1u);
LABEL_218:
      __break(1u);
LABEL_219:
      __break(1u);
LABEL_220:
      __break(1u);
LABEL_221:
      __break(1u);
LABEL_222:
      __break(1u);
LABEL_223:
      __break(1u);
LABEL_224:
      __break(1u);
LABEL_225:
      __break(1u);
LABEL_226:
      __break(1u);
LABEL_227:
      __break(1u);
LABEL_228:
      __break(1u);
    }

    OUTLINED_FUNCTION_132();
    v82 = OUTLINED_FUNCTION_448(&a16);
    sub_1B8D745A4(v82);
    if (v80 >= *(v78 + 16))
    {
      goto LABEL_204;
    }

    v218 = v80;
    OUTLINED_FUNCTION_132();
    v83 = OUTLINED_FUNCTION_448(&a14);
    sub_1B8D745A4(v83);
    v84 = v52;
    v85 = *(v52 + 48);
    v86 = v224;
    sub_1B8D92024();
    sub_1B8D92024();
    v87 = OUTLINED_FUNCTION_493();
    OUTLINED_FUNCTION_98(v87, v88);
    if (!v73)
    {
      break;
    }

    OUTLINED_FUNCTION_57(v86 + v85);
    v89 = v86;
    if (!v73)
    {
      goto LABEL_193;
    }

    sub_1B8D9207C(v86, &qword_1EBAB90D0, &qword_1B964D8C0);
    OUTLINED_FUNCTION_293();
    v90 = v218;
LABEL_151:
    v180 = *v21;
    v181 = *v86;
    if (*(v86 + 8) == 1)
    {
      switch(v181)
      {
        case 1:
          if (v180 != 1)
          {
            goto LABEL_197;
          }

          goto LABEL_156;
        case 2:
          if (v180 != 2)
          {
            goto LABEL_197;
          }

          goto LABEL_156;
        case 3:
          if (v180 != 3)
          {
            goto LABEL_197;
          }

          goto LABEL_156;
        default:
          if (v180)
          {
            goto LABEL_197;
          }

          goto LABEL_156;
      }
    }

    if (v180 != v181)
    {
      goto LABEL_197;
    }

LABEL_156:
    OUTLINED_FUNCTION_663();
    v184 = v73 && v182 == v183;
    if (!v184 && (sub_1B964C9F0() & 1) == 0)
    {
      goto LABEL_197;
    }

    OUTLINED_FUNCTION_546();
    OUTLINED_FUNCTION_0_2();
    sub_1B8D5C8D0(&qword_1EBAB3B38, v185, MEMORY[0x1E69AAC10]);
    sub_1B964C850();
    OUTLINED_FUNCTION_370();
    sub_1B8D745F8();
    OUTLINED_FUNCTION_245();
    sub_1B8D745F8();
    v77 = v210;
    v78 = v209;
    if ((v85 & 1) == 0)
    {
      goto LABEL_198;
    }

    v80 = v90 + 1;
    if (v208 == v80)
    {
      goto LABEL_170;
    }
  }

  OUTLINED_FUNCTION_492();
  sub_1B8D92024();
  OUTLINED_FUNCTION_57(v86 + v85);
  if (v91)
  {
    OUTLINED_FUNCTION_463();
    sub_1B8D745F8();
    v89 = v86;
LABEL_193:
    sub_1B8D9207C(v89, &qword_1EBAB90D8, &qword_1B964D8C8);
    OUTLINED_FUNCTION_293();
    goto LABEL_197;
  }

  OUTLINED_FUNCTION_354();
  sub_1B8D920D4(v86 + v85);
  v92 = *(v215 + 48);
  v86 = v223;
  sub_1B8D92024();
  OUTLINED_FUNCTION_550();
  v93 = OUTLINED_FUNCTION_493();
  v94 = v216;
  OUTLINED_FUNCTION_77(v93, v95);
  if (v73)
  {
    OUTLINED_FUNCTION_32(v223 + v92);
    if (!v73)
    {
      goto LABEL_195;
    }

    sub_1B8D9207C(v223, &qword_1EBAB8F20, &qword_1B964D720);
    OUTLINED_FUNCTION_293();
    v90 = v218;
    goto LABEL_36;
  }

  v97 = v223;
  OUTLINED_FUNCTION_550();
  OUTLINED_FUNCTION_32(v97 + v92);
  if (!v98)
  {
    OUTLINED_FUNCTION_422();
    v86 = v223;
    v99(v212[0], v223 + v92, v94);
    OUTLINED_FUNCTION_25_1();
    sub_1B8D5C8D0(&qword_1EBAB8F40, v100, MEMORY[0x1E69AAB20]);
    OUTLINED_FUNCTION_601();
    v101 = sub_1B964C850();
    v102 = *v202;
    v103 = OUTLINED_FUNCTION_2();
    v102(v103);
    v104 = OUTLINED_FUNCTION_371();
    v102(v104);
    sub_1B8D9207C(v86, &qword_1EBAB8F20, &qword_1B964D720);
    OUTLINED_FUNCTION_293();
    v90 = v218;
    if ((v101 & 1) == 0)
    {
      goto LABEL_196;
    }

LABEL_36:
    v105 = *v220;
    v106 = v220[1];
    v107 = v106 >> 62;
    v108 = *v221;
    v85 = v221[1];
    v109 = HIDWORD(*v220);
    v110 = v85 >> 62;
    if (v96)
    {
      v112 = 0;
      if (!v105 && v106 == 0xC000000000000000 && v85 >> 62 == 3)
      {
        v112 = 0;
        if (!v108 && v85 == 0xC000000000000000)
        {
LABEL_150:
          OUTLINED_FUNCTION_551();
          OUTLINED_FUNCTION_0_2();
          sub_1B8D5C8D0(&qword_1EBAB3B38, v179, MEMORY[0x1E69AAC10]);
          OUTLINED_FUNCTION_713(v220 + v106);
          OUTLINED_FUNCTION_364();
          sub_1B8D745F8();
          OUTLINED_FUNCTION_376();
          sub_1B8D745F8();
          sub_1B8D9207C(v224, &qword_1EBAB90D0, &qword_1B964D8C0);
          v32 = v206;
          if ((v85 & 1) == 0)
          {
            goto LABEL_197;
          }

          goto LABEL_151;
        }
      }
    }

    else
    {
      v112 = 0;
      switch(v107)
      {
        case 0uLL:
          v112 = BYTE6(v106);
          break;
        case 1uLL:
          LODWORD(v112) = v109 - v105;
          if (__OFSUB__(v109, v105))
          {
            goto LABEL_208;
          }

          v112 = v112;
          break;
        case 2uLL:
          v114 = *(v105 + 16);
          v113 = *(v105 + 24);
          v115 = __OFSUB__(v113, v114);
          v112 = v113 - v114;
          if (!v115)
          {
            break;
          }

          goto LABEL_209;
        case 3uLL:
          break;
        default:
          goto LABEL_243;
      }
    }

    v116 = HIDWORD(v108);
    v117 = BYTE6(v85);
    switch(v110)
    {
      case 1uLL:
        LODWORD(v118) = HIDWORD(v108) - v108;
        if (__OFSUB__(HIDWORD(v108), v108))
        {
          goto LABEL_206;
        }

        v118 = v118;
LABEL_61:
        if (v112 != v118)
        {
          goto LABEL_196;
        }

        if (v112 < 1)
        {
          goto LABEL_150;
        }

        break;
      case 2uLL:
        v120 = *(v108 + 16);
        v119 = *(v108 + 24);
        v115 = __OFSUB__(v119, v120);
        v118 = v119 - v120;
        if (!v115)
        {
          goto LABEL_61;
        }

        goto LABEL_207;
      case 3uLL:
        if (v112)
        {
          goto LABEL_196;
        }

        goto LABEL_150;
      default:
        v118 = BYTE6(v85);
        goto LABEL_61;
    }

    v121 = v108 >> 16;
    v122 = v108 >> 24;
    v123 = v108 >> 40;
    v124 = HIWORD(v108);
    v125 = HIBYTE(v108);
    v126 = v85 >> 8;
    v127 = v85 >> 16;
    v128 = v85 >> 24;
    v129 = HIDWORD(v85);
    v130 = v85 >> 40;
    switch(v107)
    {
      case 1:
        OUTLINED_FUNCTION_219(v116, v127, BYTE6(v85), v126, v125, v124, v123, v122);
        v146 = v145;
        if (v145 > v145 >> 32)
        {
          goto LABEL_210;
        }

        v218 = v85;
        sub_1B8D91FCC(v108, v85);
        v147 = sub_1B964C070();
        if (v147)
        {
          v148 = OUTLINED_FUNCTION_719(v147, v212);
          if (__OFSUB__(v146, v148))
          {
            goto LABEL_212;
          }

          v201 += v146 - v148;
        }

        else
        {
          v201 = 0;
        }

        v52 = v84;
        v153 = sub_1B964C080();
        if (v110 == 2)
        {
          v151 = OUTLINED_FUNCTION_632(v153);
          if (v151)
          {
            v169 = sub_1B964C090();
            if (__OFSUB__(v106, v169))
            {
              goto LABEL_227;
            }

            v151 += v106 - v169;
            LOBYTE(v84) = v218;
          }

          OUTLINED_FUNCTION_503();
          v115 = __OFSUB__(v170, v106);
          v106 = v170 - v106;
          if (v115)
          {
            goto LABEL_220;
          }

          LOBYTE(v85) = v84;
          sub_1B964C080();
          OUTLINED_FUNCTION_223();
          v166 = OUTLINED_FUNCTION_679();
          if (!v166)
          {
            goto LABEL_240;
          }

          if (!v151)
          {
            goto LABEL_239;
          }
        }

        else
        {
          if (v110 != 1)
          {
            v168 = OUTLINED_FUNCTION_203();
            if (!v168)
            {
              goto LABEL_236;
            }

LABEL_128:
            v171 = &v241;
            goto LABEL_140;
          }

          OUTLINED_FUNCTION_503();
          if (v154 < v108)
          {
            goto LABEL_219;
          }

          v151 = sub_1B964C070();
          if (v151)
          {
            sub_1B964C090();
            OUTLINED_FUNCTION_483();
            if (v115)
            {
              goto LABEL_228;
            }

            v151 += v155;
          }

          OUTLINED_FUNCTION_503();
          v106 = v177 - v178;
          LOBYTE(v85) = v218;
          sub_1B964C080();
          OUTLINED_FUNCTION_223();
          v166 = OUTLINED_FUNCTION_679();
          if (!v166)
          {
            goto LABEL_238;
          }

          if (!v151)
          {
            goto LABEL_237;
          }
        }

LABEL_146:
        if (v166 == v151)
        {
          sub_1B8D538A0(v108, v218);
          goto LABEL_150;
        }

        LODWORD(v85) = memcmp(v166, v151, v167);
        v173 = v108;
        v174 = v218;
        goto LABEL_149;
      case 2:
        OUTLINED_FUNCTION_219(v116, v127, BYTE6(v85), v126, v125, v124, v123, v122);
        v218 = v85;
        sub_1B8D91FCC(v108, v85);
        v136 = sub_1B964C070();
        if (v136)
        {
          v137 = v136;
          sub_1B964C090();
          OUTLINED_FUNCTION_504();
          if (v115)
          {
            goto LABEL_211;
          }

          v201 = v138 + v137;
        }

        else
        {
          v201 = 0;
        }

        v52 = v84;
        v149 = sub_1B964C080();
        if (v110 == 2)
        {
          v151 = OUTLINED_FUNCTION_632(v149);
          if (v151)
          {
            v164 = sub_1B964C090();
            if (__OFSUB__(v106, v164))
            {
              goto LABEL_223;
            }

            v151 += v106 - v164;
            LOBYTE(v84) = v218;
          }

          OUTLINED_FUNCTION_503();
          v115 = __OFSUB__(v165, v106);
          v106 = v165 - v106;
          if (v115)
          {
            goto LABEL_218;
          }

          LOBYTE(v85) = v84;
          sub_1B964C080();
          OUTLINED_FUNCTION_223();
          v166 = OUTLINED_FUNCTION_679();
          if (!v166)
          {
            goto LABEL_235;
          }

          if (!v151)
          {
            goto LABEL_234;
          }
        }

        else
        {
          if (v110 != 1)
          {
            v168 = OUTLINED_FUNCTION_203();
            if (!v168)
            {
              goto LABEL_231;
            }

            goto LABEL_128;
          }

          OUTLINED_FUNCTION_503();
          if (v150 < v108)
          {
            goto LABEL_216;
          }

          v151 = sub_1B964C070();
          if (v151)
          {
            sub_1B964C090();
            OUTLINED_FUNCTION_483();
            if (v115)
            {
              goto LABEL_226;
            }

            v151 += v152;
          }

          OUTLINED_FUNCTION_503();
          v106 = v175 - v176;
          LOBYTE(v85) = v218;
          sub_1B964C080();
          OUTLINED_FUNCTION_223();
          v166 = OUTLINED_FUNCTION_679();
          if (!v166)
          {
            goto LABEL_233;
          }

          if (!v151)
          {
            goto LABEL_232;
          }
        }

        goto LABEL_146;
      case 3:
        OUTLINED_FUNCTION_434();
        LOBYTE(v121) = v140;
        if (v110)
        {
          if (v110 == 2)
          {
            v141 = *(v108 + 24);
            v218 = *(v108 + 16);
            v142 = OUTLINED_FUNCTION_444();
            sub_1B8D91FCC(v142, v143);
            v134 = sub_1B964C070();
            if (v134)
            {
              if (__OFSUB__(v218, OUTLINED_FUNCTION_703()))
              {
                goto LABEL_222;
              }

              OUTLINED_FUNCTION_697();
            }

            else
            {
              v144 = v218;
            }

            v115 = __OFSUB__(v141, v144);
            v106 = v141 - v144;
            if (v115)
            {
              goto LABEL_217;
            }

            v172 = sub_1B964C080();
            if (!v134)
            {
              goto LABEL_230;
            }

LABEL_136:
            if (v172 >= v106)
            {
              v159 = v106;
            }

            else
            {
              v159 = v172;
            }
          }

          else
          {
            OUTLINED_FUNCTION_595();
            if (v131 != v115)
            {
              goto LABEL_214;
            }

            v156 = OUTLINED_FUNCTION_444();
            sub_1B8D91FCC(v156, v157);
            v106 = v85;
            v134 = sub_1B964C070();
            if (v134)
            {
              sub_1B964C090();
              OUTLINED_FUNCTION_504();
              if (v115)
              {
                goto LABEL_224;
              }

              v134 += v158;
            }

            sub_1B964C080();
            if (!v134)
            {
              __break(1u);
LABEL_230:
              __break(1u);
LABEL_231:
              __break(1u);
LABEL_232:
              __break(1u);
LABEL_233:
              __break(1u);
LABEL_234:
              __break(1u);
LABEL_235:
              __break(1u);
LABEL_236:
              __break(1u);
LABEL_237:
              __break(1u);
LABEL_238:
              __break(1u);
LABEL_239:
              __break(1u);
LABEL_240:
              __break(1u);
LABEL_241:
              __break(1u);
LABEL_242:
              __break(1u);
LABEL_243:
              JUMPOUT(0);
            }

LABEL_107:
            OUTLINED_FUNCTION_241();
          }

          v168 = &v241;
          v171 = v134;
LABEL_140:
          LODWORD(v85) = memcmp(v168, v171, v159);
          v173 = OUTLINED_FUNCTION_425();
LABEL_149:
          sub_1B8D538A0(v173, v174);
          if (v85)
          {
            goto LABEL_196;
          }
        }

        else
        {
          LOBYTE(v228) = v108;
          HIBYTE(v228) = v139;
LABEL_100:
          v229 = v121;
          v230 = v122;
          v231 = v116;
          v232 = v123;
          v233 = v124;
          v234 = v125;
          v235 = v85;
          v236 = v126;
          v237 = v127;
          v238 = v128;
          v239 = v129;
          v240 = v130;
          if (memcmp(&v241, &v228, v117))
          {
            goto LABEL_196;
          }
        }

        break;
      default:
        v241 = *v220;
        v242 = BYTE2(v105);
        v243 = BYTE3(v105);
        v244 = v109;
        v245 = BYTE5(v105);
        v246 = BYTE6(v105);
        v247 = HIBYTE(v105);
        v248 = v106;
        v249 = BYTE2(v106);
        v250 = BYTE3(v106);
        v251 = BYTE4(v106);
        v252 = BYTE5(v106);
        if (!v110)
        {
          v228 = v108;
          goto LABEL_100;
        }

        if (v110 == 1)
        {
          OUTLINED_FUNCTION_595();
          if (v131 != v115)
          {
            goto LABEL_213;
          }

          v132 = OUTLINED_FUNCTION_444();
          sub_1B8D91FCC(v132, v133);
          v106 = v85;
          v134 = sub_1B964C070();
          if (v134)
          {
            sub_1B964C090();
            OUTLINED_FUNCTION_504();
            if (v115)
            {
              goto LABEL_225;
            }

            v134 += v135;
          }

          sub_1B964C080();
          if (!v134)
          {
            goto LABEL_242;
          }

          goto LABEL_107;
        }

        v160 = *(v108 + 24);
        v218 = *(v108 + 16);
        v161 = OUTLINED_FUNCTION_444();
        sub_1B8D91FCC(v161, v162);
        v134 = sub_1B964C070();
        if (v134)
        {
          if (__OFSUB__(v218, OUTLINED_FUNCTION_703()))
          {
            goto LABEL_221;
          }

          OUTLINED_FUNCTION_697();
        }

        else
        {
          v163 = v218;
        }

        v115 = __OFSUB__(v160, v163);
        v106 = v160 - v163;
        if (v115)
        {
          goto LABEL_215;
        }

        v172 = sub_1B964C080();
        if (!v134)
        {
          goto LABEL_241;
        }

        goto LABEL_136;
    }

    goto LABEL_150;
  }

  OUTLINED_FUNCTION_422();
  v199 = OUTLINED_FUNCTION_449();
  v200(v199);
LABEL_195:
  sub_1B8D9207C(v223, &qword_1EBAB8F28, &unk_1B9683B20);
  OUTLINED_FUNCTION_293();
LABEL_196:
  sub_1B8D745F8();
  sub_1B8D745F8();
  sub_1B8D9207C(v224, &qword_1EBAB90D0, &qword_1B964D8C0);
LABEL_197:
  sub_1B8D745F8();
  OUTLINED_FUNCTION_287();
  sub_1B8D745F8();
LABEL_198:
  sub_1B8D745F8();
  sub_1B8D745F8();
LABEL_199:
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_283();
}