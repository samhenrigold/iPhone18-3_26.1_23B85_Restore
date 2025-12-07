uint64_t sub_1DCCF4A64@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  type metadata accessor for Input(0);
  v6 = sub_1DCCF5648();
  if (v7)
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v8 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v8, qword_1EDE57E00);
    v9 = sub_1DD0DD8EC();
    v10 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1DCAFC000, v9, v10, "ChoiceResolver: No positional reference found in parse", v11, 2u);
      MEMORY[0x1E12A8390](v11, -1, -1);
    }

    v12 = *(a1 + 40);
    v40 = *(a1 + 16);
    v41 = vextq_s8(*(a1 + 24), *(a1 + 24), 8uLL);
    v42 = v12;
    type metadata accessor for DisambiguationPrompt.Choice(255, &v40);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v14 = a2;
LABEL_22:
    v26 = 1;
    return __swift_storeEnumTagSinglePayload(v14, v26, 1, TupleTypeMetadata2);
  }

  v15 = v6;
  if (v6 < 0)
  {
    v17 = *(a1 + 40);
    v40 = *(a1 + 16);
    v41 = vextq_s8(*(a1 + 24), *(a1 + 24), 8uLL);
    v42 = v17;
    type metadata accessor for DisambiguationPrompt.Choice(0, &v40);
    v18 = sub_1DD0DE3BC();
    v16 = v18 + v15;
    if (__OFADD__(v18, v15))
    {
      __break(1u);
LABEL_25:
      swift_once();
      goto LABEL_13;
    }
  }

  else
  {
    v16 = v6 - 1;
  }

  if (v16 < 0 || (v19 = *(a1 + 40), v40 = *(a1 + 16), v41 = vextq_s8(*(a1 + 24), *(a1 + 24), 8uLL), v42 = v19, type metadata accessor for DisambiguationPrompt.Choice(0, &v40), v16 >= sub_1DD0DE3BC()))
  {
    if (qword_1EDE4F900 != -1)
    {
      swift_once();
    }

    v38 = a2;
    v27 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v27, qword_1EDE57E00);
    v28 = *(a1 - 8);
    (*(v28 + 16))(&v40, v3, a1);
    v29 = sub_1DD0DD8EC();
    v30 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 134218240;
      *(v31 + 4) = v16;
      *(v31 + 12) = 2048;
      v32 = *(a1 + 16);
      v33 = *(a1 + 24);
      v35 = *(a1 + 32);
      v34 = *(a1 + 40);
      v39[0] = v32;
      v39[1] = v35;
      v39[2] = v33;
      v39[3] = v34;
      type metadata accessor for DisambiguationPrompt.Choice(0, v39);
      v36 = sub_1DD0DE3BC();
      (*(v28 + 8))(&v40, a1);
      *(v31 + 14) = v36;
      _os_log_impl(&dword_1DCAFC000, v29, v30, "Referenced list index (%ld) outside of choice range (count: %ld", v31, 0x16u);
      MEMORY[0x1E12A8390](v31, -1, -1);
    }

    else
    {
      (*(v28 + 8))(&v40, a1);

      v32 = *(a1 + 16);
      v33 = *(a1 + 24);
      v35 = *(a1 + 32);
      v34 = *(a1 + 40);
    }

    v40 = v32;
    v41.i64[0] = v35;
    v41.i64[1] = v33;
    v42 = v34;
    type metadata accessor for DisambiguationPrompt.Choice(255, &v40);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v14 = v38;
    goto LABEL_22;
  }

  if (qword_1EDE4F900 != -1)
  {
    goto LABEL_25;
  }

LABEL_13:
  v20 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v20, qword_1EDE57E00);
  v21 = sub_1DD0DD8EC();
  v22 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 134217984;
    *(v23 + 4) = v16;
    _os_log_impl(&dword_1DCAFC000, v21, v22, "ChoiceResolver: Found positional reference in parse. Index: %ld", v23, 0xCu);
    MEMORY[0x1E12A8390](v23, -1, -1);
  }

  v24 = swift_getTupleTypeMetadata2();
  v25 = *(v24 + 48);
  sub_1DD0DE43C();
  *(a2 + v25) = v16;
  v14 = a2;
  v26 = 0;
  TupleTypeMetadata2 = v24;
  return __swift_storeEnumTagSinglePayload(v14, v26, 1, TupleTypeMetadata2);
}

uint64_t sub_1DCCF4F4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for Parse(0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = (&v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for Input(0);
  sub_1DCB29E58(a1 + *(v11 + 20), v10);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1DCB283D8(v10, type metadata accessor for Parse);
    goto LABEL_20;
  }

  v12 = *v10;
  v13 = v10[1];
  v14 = v10[2];
  v15 = v12 == 0xD00000000000002ELL && 0x80000001DD1196F0 == v13;
  if (v15 || (sub_1DD0DF0AC() & 1) != 0)
  {
    if (v14)
    {
      sub_1DCB90D40();

      if (*(&v44[1] + 1))
      {
        if (swift_dynamicCast())
        {
          v16 = v43[0];
          if ((v43[0] & 0x8000000000000000) == 0)
          {
            v17 = *(a2 + 40);
            *&v44[0] = *(a2 + 16);
            *(v44 + 8) = vextq_s8(*(a2 + 24), *(a2 + 24), 8uLL);
            *(&v44[1] + 1) = v17;
            type metadata accessor for DisambiguationPrompt.Choice(0, v44);
            if (v16 < sub_1DD0DE3BC())
            {
              if (qword_1EDE4F900 != -1)
              {
                swift_once();
              }

              v18 = sub_1DD0DD8FC();
              __swift_project_value_buffer(v18, qword_1EDE57E00);
              v19 = sub_1DD0DD8EC();
              v20 = sub_1DD0DE6DC();
              if (os_log_type_enabled(v19, v20))
              {
                v21 = swift_slowAlloc();
                *v21 = 134217984;
                *(v21 + 4) = v16;
                _os_log_impl(&dword_1DCAFC000, v19, v20, "#interpretInputAsDirectChoice ChoiceResolver: Found direct invocation in parse. Index: %ld", v21, 0xCu);
                MEMORY[0x1E12A8390](v21, -1, -1);
              }

              TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
              v23 = *(TupleTypeMetadata2 + 48);
              sub_1DD0DE43C();
              *(a3 + v23) = v16;
              v24 = a3;
              v25 = 0;
              v26 = TupleTypeMetadata2;
              return __swift_storeEnumTagSinglePayload(v24, v25, 1, v26);
            }
          }

          if (qword_1EDE4F900 != -1)
          {
            swift_once();
          }

          v31 = sub_1DD0DD8FC();
          __swift_project_value_buffer(v31, qword_1EDE57E00);
          v32 = *(a2 - 8);
          (*(v32 + 16))(v44, v3, a2);
          v33 = sub_1DD0DD8EC();
          v34 = sub_1DD0DE6EC();
          if (os_log_type_enabled(v33, v34))
          {
            v35 = swift_slowAlloc();
            *v35 = 134218240;
            *(v35 + 4) = v16;
            *(v35 + 12) = 2048;
            v36 = *(a2 + 24);
            v42 = *(a2 + 16);
            v43[0] = v42;
            v38 = *(a2 + 32);
            v37 = *(a2 + 40);
            v43[1] = v38;
            v43[2] = v36;
            v43[3] = v37;
            type metadata accessor for DisambiguationPrompt.Choice(0, v43);
            v39 = sub_1DD0DE3BC();
            (*(v32 + 8))(v44, a2);
            *(v35 + 14) = v39;
            _os_log_impl(&dword_1DCAFC000, v33, v34, "#interpretInputAsDirectChoice Referenced list index (%ld) outside of choice range (count: %ld", v35, 0x16u);
            MEMORY[0x1E12A8390](v35, -1, -1);

            v40 = v42;
          }

          else
          {
            (*(v32 + 8))(v44, a2);

            v40 = *(a2 + 16);
            v36 = *(a2 + 24);
            v38 = *(a2 + 32);
            v37 = *(a2 + 40);
          }

          *&v44[0] = v40;
          *(&v44[0] + 1) = v38;
          *&v44[1] = v36;
          *(&v44[1] + 1) = v37;
LABEL_21:
          type metadata accessor for DisambiguationPrompt.Choice(255, v44);
          v26 = swift_getTupleTypeMetadata2();
          v24 = a3;
          v25 = 1;
          return __swift_storeEnumTagSinglePayload(v24, v25, 1, v26);
        }

LABEL_20:
        v27 = *(a2 + 40);
        *&v44[0] = *(a2 + 16);
        *(v44 + 8) = vextq_s8(*(a2 + 24), *(a2 + 24), 8uLL);
        *(&v44[1] + 1) = v27;
        goto LABEL_21;
      }
    }

    else
    {

      memset(v44, 0, 32);
    }

    sub_1DCB0E9D8(v44, &dword_1ECCA3CE0, &unk_1DD0E4F80);
    goto LABEL_20;
  }

  v29 = *(a2 + 40);
  *&v44[0] = *(a2 + 16);
  *(v44 + 8) = vextq_s8(*(a2 + 24), *(a2 + 24), 8uLL);
  *(&v44[1] + 1) = v29;
  type metadata accessor for DisambiguationPrompt.Choice(255, v44);
  v30 = swift_getTupleTypeMetadata2();
  __swift_storeEnumTagSinglePayload(a3, 1, 1, v30);
}

uint64_t sub_1DCCF54CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v8 = *(a2 + 24);
  v9 = type metadata accessor for Interpretable(0, v8, a4, a5);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v18 - v12;
  v14 = v5[4];
  v15 = v5[5];
  __swift_project_boxed_opaque_existential_1(v5 + 1, v14);
  (*(v15 + 16))(a1, v14, v15);
  if (__swift_getEnumTagSinglePayload(v13, 1, v8) == 1)
  {
    (*(v10 + 8))(v13, v9);
    v16 = 1;
  }

  else
  {
    (*(*(v8 - 8) + 32))(a3, v13, v8);
    v16 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a3, v16, 1, v8);
}

uint64_t sub_1DCCF5648()
{
  sub_1DCCF61C8();
  if (v0)
  {
    sub_1DD0DCF8C();
  }

  return 0;
}

uint64_t sub_1DCCF5A80(uint64_t a1)
{
  if (sub_1DD0DBC0C())
  {
    goto LABEL_2;
  }

  v3 = sub_1DD0DBDBC();
  if (v3)
  {
    if (sub_1DCB08B14(v3))
    {
      v4 = OUTLINED_FUNCTION_10_29();
      sub_1DCB35460(v4, v5, v6);
      if (!v1)
      {
        sub_1DD0DCF8C();
      }

      v16 = OUTLINED_FUNCTION_24_17();
      MEMORY[0x1E12A72C0](v16);

      sub_1DD0DBBBC();

      v1 = v19;
      if (v19)
      {
        v7 = sub_1DD0DBC0C();

        if (v7)
        {
          goto LABEL_2;
        }
      }
    }

    else
    {
    }
  }

  v8 = sub_1DD0DBDCC();
  if (v8)
  {
    if (sub_1DCB08B14(v8))
    {
      v9 = OUTLINED_FUNCTION_10_29();
      sub_1DCB35460(v9, v10, v11);
      if (!v1)
      {
        sub_1DD0DCF8C();
      }

      v17 = OUTLINED_FUNCTION_24_17();
      MEMORY[0x1E12A72C0](v17);

      sub_1DD0DBBBC();

      if (v19)
      {
        v12 = sub_1DD0DBC0C();

        if (v12)
        {
          goto LABEL_2;
        }
      }
    }

    else
    {
    }
  }

  v13 = sub_1DD0DBDDC();
  v2 = v13;
  if (!v13)
  {
    return v2;
  }

  if (!sub_1DCB08B14(v13))
  {

    return 0;
  }

  sub_1DCB35460(0, (v2 & 0xC000000000000001) == 0, v2);
  if ((v2 & 0xC000000000000001) == 0)
  {
    sub_1DD0DCF8C();
  }

  v18 = OUTLINED_FUNCTION_4_11();
  MEMORY[0x1E12A72C0](v18);

  sub_1DD0DBBBC();

  v2 = v19;
  if (v19)
  {
    v14 = sub_1DD0DBC0C();

    if (v14)
    {
LABEL_2:
      v2 = sub_1DCCF5C88();

      return v2;
    }

    return 0;
  }

  return v2;
}

uint64_t sub_1DCCF5C88()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4808, &unk_1DD0ECA80);
  OUTLINED_FUNCTION_20_0(v1);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v2, v3);
  OUTLINED_FUNCTION_36_18();
  v4 = sub_1DD0DC0AC();
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_10_2();
  v11 = (v9 - v10);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v20 - v14;
  sub_1DD0DC09C();
  OUTLINED_FUNCTION_38_2(v0);
  if (v16)
  {
    sub_1DCB0E9D8(v0, &qword_1ECCA4808, &unk_1DD0ECA80);
    return 0;
  }

  v18 = *(v6 + 32);
  v18(v15, v0, v4);
  v18(v11, v15, v4);
  v19 = (*(v6 + 88))(v11, v4);
  if (v19 == *MEMORY[0x1E69D1EB0])
  {
    return 4;
  }

  if (v19 == *MEMORY[0x1E69D1EB8])
  {
    return 2;
  }

  if (v19 == *MEMORY[0x1E69D1DE0])
  {
    return 1;
  }

  if (v19 == *MEMORY[0x1E69D1E50])
  {
    return 24;
  }

  if (v19 == *MEMORY[0x1E69D1E20])
  {
    return 17;
  }

  if (v19 == *MEMORY[0x1E69D1EA8])
  {
    return 8;
  }

  if (v19 == *MEMORY[0x1E69D1E28])
  {
    return -3;
  }

  if (v19 == *MEMORY[0x1E69D1E90])
  {
    return 6;
  }

  if (v19 == *MEMORY[0x1E69D1E10])
  {
    return 19;
  }

  if (v19 == *MEMORY[0x1E69D1E30])
  {
    return 25;
  }

  if (v19 == *MEMORY[0x1E69D1E88])
  {
    return 9;
  }

  if (v19 == *MEMORY[0x1E69D1ED8])
  {
    return 11;
  }

  if (v19 == *MEMORY[0x1E69D1E60])
  {
    return -1;
  }

  if (v19 == *MEMORY[0x1E69D1E08])
  {
    return 14;
  }

  if (v19 == *MEMORY[0x1E69D1E48])
  {
    return -2;
  }

  if (v19 == *MEMORY[0x1E69D1E38])
  {
    return 21;
  }

  if (v19 != *MEMORY[0x1E69D1E18])
  {
    if (v19 == *MEMORY[0x1E69D1E68])
    {
      return -1;
    }

    if (v19 == *MEMORY[0x1E69D1E58])
    {
      return 22;
    }

    if (v19 == *MEMORY[0x1E69D1DE8])
    {
      return 15;
    }

    if (v19 == *MEMORY[0x1E69D1DF8])
    {
      return 20;
    }

    if (v19 == *MEMORY[0x1E69D1E78])
    {
      return 5;
    }

    if (v19 == *MEMORY[0x1E69D1DF0])
    {
      return 16;
    }

    if (v19 == *MEMORY[0x1E69D1E80])
    {
      return 1;
    }

    if (v19 == *MEMORY[0x1E69D1EC8])
    {
      return 7;
    }

    if (v19 == *MEMORY[0x1E69D1E00])
    {
      return 18;
    }

    if (v19 == *MEMORY[0x1E69D1E40])
    {
      return 23;
    }

    if (v19 == *MEMORY[0x1E69D1ED0])
    {
      return 12;
    }

    if (v19 == *MEMORY[0x1E69D1EA0])
    {
      return 3;
    }

    if (v19 == *MEMORY[0x1E69D1E98])
    {
      return 10;
    }

    (*(v6 + 8))(v11, v4);
    return 0;
  }

  return 13;
}

void sub_1DCCF61C8()
{
  OUTLINED_FUNCTION_50();
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA29B8, &qword_1DD0E96C0);
  OUTLINED_FUNCTION_20_0(v3);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v4, v5);
  OUTLINED_FUNCTION_36_18();
  v6 = sub_1DD0DB5BC();
  OUTLINED_FUNCTION_9();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_10_2();
  v96 = (v11 - v12);
  v15 = MEMORY[0x1EEE9AC00](v13, v14);
  v97 = &v94 - v16;
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v94 - v18;
  type metadata accessor for Parse(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v20, v21);
  OUTLINED_FUNCTION_10_2();
  v24 = v22 - v23;
  v27 = MEMORY[0x1EEE9AC00](v25, v26);
  v29 = &v94 - v28;
  MEMORY[0x1EEE9AC00](v27, v30);
  v32 = &v94 - v31;
  v33 = type metadata accessor for USOParse(0);
  v34 = OUTLINED_FUNCTION_20_0(v33);
  MEMORY[0x1EEE9AC00](v34, v35);
  OUTLINED_FUNCTION_16();
  v38 = v37 - v36;
  sub_1DCB29E58(v2, v32);
  if (swift_getEnumCaseMultiPayload() == 6)
  {
    sub_1DCC6D300(v32, v38);
    Siri_Nlu_External_UserParse.preferredUserDialogAct.getter();
    if (__swift_getEnumTagSinglePayload(v1, 1, v6) != 1)
    {
      v95 = v38;
      v53 = v8;
      v54 = *(v8 + 32);
      v55 = v6;
      v54(v19, v1, v6);
      if (sub_1DD0DB51C())
      {
        v88 = sub_1DD0DB7DC();
        v89 = sub_1DCB08B14(v88);
        v90 = v97;
        if (v89)
        {
          v91 = OUTLINED_FUNCTION_10_29();
          sub_1DCB35460(v91, v92, v93);
          sub_1DD0DCF8C();
        }

        if (qword_1EDE4F900 != -1)
        {
          OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
        }

        v56 = sub_1DD0DD8FC();
        __swift_project_value_buffer(v56, qword_1EDE57E00);
        v57 = *(v53 + 16);
        v57(v90, v19, v6);
        v58 = sub_1DD0DD8EC();
        v59 = sub_1DD0DE6EC();
        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          v97 = v19;
          v62 = v53;
          v63 = v61;
          v98 = v61;
          *v60 = 136315138;
          v57(v96, v90, v55);
          OUTLINED_FUNCTION_35_17();
          v64 = sub_1DD0DE02C();
          v66 = v65;
          v67 = *(v62 + 8);
          v67(v90, v55);
          v68 = sub_1DCB10E9C(v64, v66, &v98);

          *(v60 + 4) = v68;
          OUTLINED_FUNCTION_24_2();
          _os_log_impl(v69, v70, v71, v72, v73, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v63);
          MEMORY[0x1E12A8390](v63, -1, -1);
          OUTLINED_FUNCTION_52();

          v67(v97, v55);
        }

        else
        {

          v86 = *(v53 + 8);
          v86(v90, v6);
          v87 = OUTLINED_FUNCTION_35_17();
          (v86)(v87);
        }

        OUTLINED_FUNCTION_0_22();
        v52 = v95;
      }

      else
      {
        if (qword_1EDE4F900 != -1)
        {
          OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
        }

        v74 = sub_1DD0DD8FC();
        __swift_project_value_buffer(v74, qword_1EDE57E00);
        v75 = sub_1DD0DD8EC();
        v76 = sub_1DD0DE6EC();
        v77 = os_log_type_enabled(v75, v76);
        v78 = v95;
        if (v77)
        {
          *swift_slowAlloc() = 0;
          OUTLINED_FUNCTION_24_2();
          _os_log_impl(v79, v80, v81, v82, v83, 2u);
          OUTLINED_FUNCTION_52();
        }

        v84 = OUTLINED_FUNCTION_35_17();
        v85(v84);
        OUTLINED_FUNCTION_0_22();
        v52 = v78;
      }

      goto LABEL_23;
    }

    OUTLINED_FUNCTION_0_22();
    sub_1DCB283D8(v38, v39);
    sub_1DCB0E9D8(v1, &qword_1ECCA29B8, &qword_1DD0E96C0);
  }

  else
  {
    OUTLINED_FUNCTION_4_42();
    sub_1DCB283D8(v32, v40);
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v41 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v41, qword_1EDE57E00);
  sub_1DCB29E58(v2, v29);
  v42 = sub_1DD0DD8EC();
  v43 = sub_1DD0DE6EC();
  if (!os_log_type_enabled(v42, v43))
  {

    OUTLINED_FUNCTION_4_42();
    v52 = v29;
LABEL_23:
    sub_1DCB283D8(v52, v51);
    goto LABEL_24;
  }

  v44 = swift_slowAlloc();
  v45 = swift_slowAlloc();
  v98 = v45;
  *v44 = 136315138;
  sub_1DCB29E58(v29, v24);
  v46 = sub_1DD0DE02C();
  v48 = v47;
  OUTLINED_FUNCTION_4_42();
  sub_1DCB283D8(v29, v49);
  v50 = sub_1DCB10E9C(v46, v48, &v98);

  *(v44 + 4) = v50;
  _os_log_impl(&dword_1DCAFC000, v42, v43, "Cannot extract task: USO parse has no UDAs. %s", v44, 0xCu);
  __swift_destroy_boxed_opaque_existential_1Tm(v45);
  OUTLINED_FUNCTION_52();
  MEMORY[0x1E12A8390](v44, -1, -1);

LABEL_24:
  OUTLINED_FUNCTION_49();
}

uint64_t sub_1DCCF687C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a1;
  v4 = *(*v2 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v5 = sub_1DD0DF22C();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8, v10);
  v50 = &v45 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = &v45 - v15;
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v45 - v18;
  v22 = type metadata accessor for Interpretable(0, v5, v20, v21);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v25 = &v45 - v24;
  v27 = v2[5];
  v26 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v27);
  (*(v26 + 16))(v51, v27, v26);
  v28 = 1;
  if (__swift_getEnumTagSinglePayload(v25, 1, v5) != 1)
  {
    (*(v6 + 32))(v19, v25, v5);
    v29 = *(v6 + 16);
    v29(v16, v19, v5);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v31 = *(v6 + 8);
    if (EnumCaseMultiPayload == 1)
    {
      v31(v16, v5);
      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v32 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v32, qword_1EDE57E00);
      v33 = v50;
      v29(v50, v19, v5);
      v34 = sub_1DD0DD8EC();
      LODWORD(v51) = sub_1DD0DE6EC();
      if (os_log_type_enabled(v34, v51))
      {
        v35 = swift_slowAlloc();
        v47 = v19;
        v48 = a2;
        v46 = v4;
        v36 = v35;
        v37 = swift_slowAlloc();
        v52 = v37;
        *v36 = 136315138;
        v29(v49, v33, v5);
        v38 = sub_1DD0DE02C();
        v40 = v39;
        v31(v33, v5);
        v41 = sub_1DCB10E9C(v38, v40, &v52);

        *(v36 + 4) = v41;
        _os_log_impl(&dword_1DCAFC000, v34, v51, "[DisambiguationPrompt] ChoiceResolver's inner entity resolver returned unexpected result %s", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v37);
        MEMORY[0x1E12A8390](v37, -1, -1);
        v42 = v36;
        v4 = v46;
        a2 = v48;
        MEMORY[0x1E12A8390](v42, -1, -1);

        v43 = v47;
      }

      else
      {

        v31(v33, v5);
        v43 = v19;
      }

      v31(v43, v5);
      v28 = 1;
    }

    else
    {
      v31(v19, v5);
      (*(*(v4 - 8) + 32))(a2, v16, v4);
      v28 = 0;
    }
  }

  return __swift_storeEnumTagSinglePayload(a2, v28, 1, v4);
}

uint64_t sub_1DCCF6CFC(uint64_t a1)
{
  v1 = (a1 + 8);

  return __swift_destroy_boxed_opaque_existential_1Tm(v1);
}

uint64_t sub_1DCCF6D2C(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  v4 = *(a2 + 2);
  *(a1 + 32) = v4;
  v5 = v4;
  v6 = **(v4 - 8);

  v6(a1 + 8, a2 + 1, v5);
  return a1;
}

uint64_t *sub_1DCCF6DB0(uint64_t *a1, uint64_t *a2)
{
  v3 = a2 + 1;
  *a1 = *a2;

  __swift_assign_boxed_opaque_existential_1(a1 + 1, v3);
  return a1;
}

uint64_t sub_1DCCF6E08(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  __swift_destroy_boxed_opaque_existential_1Tm((a1 + 8));
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  return a1;
}

uint64_t storeEnumTagSinglePayload for SiriKitIntentHandler(uint64_t result, int a2, int a3)
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

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DCCF6EAC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4[0] = *(a1 + 16);
  v4[1] = v1;
  type metadata accessor for DisambiguationPrompt.Response(255, v4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  result = sub_1DD0DF22C();
  if (v3 <= 0x3F)
  {
    swift_initEnumMetadataSinglePayload();
    return 0;
  }

  return result;
}

id *sub_1DCCF6F68(id *__dst, id *__src, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8);
  v6 = *(v5 + 64);
  v7 = *(a3 + 32);
  v8 = *(v7 - 8);
  if (*(v8 + 64) <= ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v9 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  else
  {
    v9 = *(*(v7 - 8) + 64);
  }

  if (v9 + 1 > 8)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 8;
  }

  if (((*(v8 + 80) | *(v5 + 80)) & 0x1000F8) != 0 || (v10 + 1) > 0x18)
  {
    *__dst = *__src;
    sub_1DD0DCF8C();
  }

  v13 = *(__src + v10);
  if (v13 > 1)
  {

    return memcpy(__dst, __src, v10 + 1);
  }

  else
  {
    if (v13 == 1)
    {
      v14 = *__src;
      v15 = *__src;
      *__dst = v14;
      *(__dst + v10) = 1;
    }

    else
    {
      v16 = *(__src + v9);
      v17 = v16 - 2;
      if (v16 >= 2)
      {
        if (v9 <= 3)
        {
          v18 = v9;
        }

        else
        {
          v18 = 4;
        }

        switch(v18)
        {
          case 1:
            v19 = *__src;
            goto LABEL_29;
          case 2:
            v19 = *__src;
            goto LABEL_29;
          case 3:
            v19 = *__src | (*(__src + 2) << 16);
            goto LABEL_29;
          case 4:
            v19 = *__src;
LABEL_29:
            if (v9 < 4)
            {
              v16 = (v19 | (v17 << (8 * v9))) + 2;
            }

            else
            {
              v16 = v19 + 2;
            }

            break;
          default:
            break;
        }
      }

      if (v16 == 1)
      {
        (*(v8 + 16))(__dst, __src, v7);
        *(__dst + v9) = 1;
      }

      else if (v16)
      {
        memcpy(__dst, __src, v9 + 1);
      }

      else
      {
        (*(v5 + 16))(__dst, __src);
        *((__dst + v6 + 7) & 0xFFFFFFFFFFFFFFF8) = *((__src + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
        *(__dst + v9) = 0;
      }

      *(__dst + v10) = 0;
    }

    return __dst;
  }
}

void sub_1DCCF7200(id *a1, uint64_t a2)
{
  v2 = *(*(a2 + 32) - 8);
  v3 = *(v2 + 64);
  if (v3 <= ((*(*(*(a2 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v3 = ((*(*(*(a2 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  v4 = 8;
  if (v3 + 1 > 8)
  {
    v4 = v3 + 1;
  }

  v5 = *(a1 + v4);
  if (v5 <= 1)
  {
    if (v5 == 1)
    {
    }

    else
    {
      v6 = *(a1 + v3);
      v7 = v6 - 2;
      if (v6 >= 2)
      {
        if (v3 <= 3)
        {
          v8 = v3;
        }

        else
        {
          v8 = 4;
        }

        switch(v8)
        {
          case 1:
            v9 = *a1;
            goto LABEL_17;
          case 2:
            v9 = *a1;
            goto LABEL_17;
          case 3:
            v9 = *a1 | (*(a1 + 2) << 16);
            goto LABEL_17;
          case 4:
            v9 = *a1;
LABEL_17:
            v10 = (v9 | (v7 << (8 * v3))) + 2;
            v6 = v9 + 2;
            if (v3 < 4)
            {
              v6 = v10;
            }

            break;
          default:
            break;
        }
      }

      if (v6 == 1)
      {
        (*(v2 + 8))();
      }

      else if (!v6)
      {
        (*(*(*(a2 + 16) - 8) + 8))();
      }
    }
  }
}

void *sub_1DCCF737C(void *__dst, unsigned __int8 *__src, uint64_t a3)
{
  v5 = *(*(*(a3 + 16) - 8) + 64);
  v6 = *(a3 + 32);
  if (*(*(v6 - 8) + 64) <= ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v7 = ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  else
  {
    v7 = *(*(v6 - 8) + 64);
  }

  if (v7 + 1 > 8)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 8;
  }

  v9 = __src[v8];
  if (v9 > 1)
  {

    return memcpy(__dst, __src, v8 + 1);
  }

  else
  {
    if (v9 == 1)
    {
      v10 = *__src;
      v11 = *__src;
      *__dst = v10;
      *(__dst + v8) = 1;
    }

    else
    {
      v13 = __src[v7];
      v14 = v13 - 2;
      if (v13 >= 2)
      {
        if (v7 <= 3)
        {
          v15 = v7;
        }

        else
        {
          v15 = 4;
        }

        switch(v15)
        {
          case 1:
            v16 = *__src;
            goto LABEL_22;
          case 2:
            v16 = *__src;
            goto LABEL_22;
          case 3:
            v16 = *__src | (__src[2] << 16);
            goto LABEL_22;
          case 4:
            v16 = *__src;
LABEL_22:
            v17 = (v16 | (v14 << (8 * v7))) + 2;
            v13 = v16 + 2;
            if (v7 < 4)
            {
              v13 = v17;
            }

            break;
          default:
            break;
        }
      }

      if (v13 == 1)
      {
        (*(*(v6 - 8) + 16))(__dst, __src, v6);
        *(__dst + v7) = 1;
      }

      else if (v13)
      {
        memcpy(__dst, __src, v7 + 1);
      }

      else
      {
        (*(*(*(a3 + 16) - 8) + 16))(__dst, __src);
        *((__dst + v5 + 7) & 0xFFFFFFFFFFFFFFF8) = *(&__src[v5 + 7] & 0xFFFFFFFFFFFFFFF8);
        *(__dst + v7) = 0;
      }

      *(__dst + v8) = 0;
    }

    return __dst;
  }
}

void **sub_1DCCF75C8(void **__dst, void **__src, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = *(a3 + 32);
  v9 = *(v8 - 8);
  if (*(v9 + 64) <= ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v10 = ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  else
  {
    v10 = *(v9 + 64);
  }

  if (v10 + 1 > 8)
  {
    v11 = v10 + 1;
  }

  else
  {
    v11 = 8;
  }

  v12 = *(__dst + v11);
  v13 = *(__src + v11);
  v14 = 8 * v10;
  if (v12 > 1)
  {
    if (v13 <= 1)
    {
      if (v13 == 1)
      {
LABEL_76:
        v37 = *__src;
        v38 = v37;
        *__dst = v37;
        *(__dst + v11) = 1;
        return __dst;
      }

      v16 = *(__src + v10);
      v17 = v16 - 2;
      if (v16 >= 2)
      {
        if (v10 <= 3)
        {
          v18 = v10;
        }

        else
        {
          v18 = 4;
        }

        switch(v18)
        {
          case 1:
            v19 = *__src;
            goto LABEL_39;
          case 2:
            v19 = *__src;
            goto LABEL_39;
          case 3:
            v19 = *__src | (*(__src + 2) << 16);
            goto LABEL_39;
          case 4:
            v19 = *__src;
LABEL_39:
            v28 = (v19 | (v17 << v14)) + 2;
            v16 = v19 + 2;
            if (v10 < 4)
            {
              v16 = v28;
            }

            break;
          default:
            break;
        }
      }

LABEL_89:
      if (v16 == 1)
      {
        (*(v9 + 16))(__dst, __src, v8);
        *(__dst + v10) = 1;
      }

      else if (v16)
      {
        memcpy(__dst, __src, v10 + 1);
      }

      else
      {
        (*(v6 + 16))(__dst, __src, v5);
        *((__dst + v7 + 7) & 0xFFFFFFFFFFFFFFF8) = *((__src + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
        *(__dst + v10) = 0;
      }

      *(__dst + v11) = 0;
      return __dst;
    }
  }

  else
  {
    if (v13 <= 1)
    {
      if (__dst == __src)
      {
        return __dst;
      }

      v43 = *(*(a3 + 16) - 8);
      if (v12 == 1)
      {
        v15 = *(*(a3 + 32) - 8);

        v9 = v15;
        v14 = 8 * v10;
LABEL_63:
        v32 = *(__src + v11);
        v33 = v32 - 2;
        if (v32 < 2)
        {
          v6 = v43;
        }

        else
        {
          if (v11 <= 3)
          {
            v34 = v11;
          }

          else
          {
            v34 = 4;
          }

          v6 = v43;
          switch(v34)
          {
            case 1:
              v35 = *__src;
              goto LABEL_73;
            case 2:
              v35 = *__src;
              goto LABEL_73;
            case 3:
              v35 = *__src | (*(__src + 2) << 16);
              goto LABEL_73;
            case 4:
              v35 = *__src;
LABEL_73:
              v36 = (v35 | (v33 << (8 * v11))) + 2;
              v32 = v35 + 2;
              if (v11 < 4)
              {
                v32 = v36;
              }

              break;
            default:
              break;
          }
        }

        if (v32 == 1)
        {
          goto LABEL_76;
        }

        v16 = *(__src + v10);
        v39 = v16 - 2;
        if (v16 >= 2)
        {
          if (v10 <= 3)
          {
            v40 = v10;
          }

          else
          {
            v40 = 4;
          }

          switch(v40)
          {
            case 1:
              v41 = *__src;
              goto LABEL_86;
            case 2:
              v41 = *__src;
              goto LABEL_86;
            case 3:
              v41 = *__src | (*(__src + 2) << 16);
              goto LABEL_86;
            case 4:
              v41 = *__src;
LABEL_86:
              if (v10 < 4)
              {
                v16 = (v41 | (v39 << v14)) + 2;
              }

              else
              {
                v16 = v41 + 2;
              }

              break;
            default:
              goto LABEL_89;
          }
        }

        goto LABEL_89;
      }

      v24 = *(__dst + v10);
      v25 = v24 - 2;
      if (v24 >= 2)
      {
        if (v10 <= 3)
        {
          v26 = v10;
        }

        else
        {
          v26 = 4;
        }

        switch(v26)
        {
          case 1:
            v27 = *__dst;
            goto LABEL_55;
          case 2:
            v27 = *__dst;
            goto LABEL_55;
          case 3:
            v27 = *__dst | (*(__dst + 2) << 16);
            goto LABEL_55;
          case 4:
            v27 = *__dst;
LABEL_55:
            if (v10 < 4)
            {
              v24 = (v27 | (v25 << v14)) + 2;
            }

            else
            {
              v24 = v27 + 2;
            }

            break;
          default:
            break;
        }
      }

      if (v24 == 1)
      {
        v31 = *(v9 + 8);
      }

      else
      {
        if (v24)
        {
          goto LABEL_63;
        }

        v31 = *(v6 + 8);
      }

      v42 = *(*(a3 + 32) - 8);
      v31();
      v9 = v42;
      goto LABEL_63;
    }

    if (v12 == 1)
    {
    }

    else
    {
      v20 = *(__dst + v10);
      v21 = v20 - 2;
      if (v20 >= 2)
      {
        if (v10 <= 3)
        {
          v22 = v10;
        }

        else
        {
          v22 = 4;
        }

        switch(v22)
        {
          case 1:
            v23 = *__dst;
            goto LABEL_43;
          case 2:
            v23 = *__dst;
            goto LABEL_43;
          case 3:
            v23 = *__dst | (*(__dst + 2) << 16);
            goto LABEL_43;
          case 4:
            v23 = *__dst;
LABEL_43:
            v29 = (v23 | (v21 << v14)) + 2;
            v20 = v23 + 2;
            if (v10 < 4)
            {
              v20 = v29;
            }

            break;
          default:
            break;
        }
      }

      if (v20 == 1)
      {
        (*(v9 + 8))(__dst, v8);
      }

      else if (!v20)
      {
        (*(v6 + 8))(__dst, v5);
      }
    }
  }

  return memcpy(__dst, __src, v11 + 1);
}

void *sub_1DCCF7B08(void *__dst, unsigned __int8 *__src, uint64_t a3)
{
  v5 = *(*(*(a3 + 16) - 8) + 64);
  v6 = *(a3 + 32);
  if (*(*(v6 - 8) + 64) <= ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v7 = ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  else
  {
    v7 = *(*(v6 - 8) + 64);
  }

  if (v7 + 1 > 8)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 8;
  }

  v9 = __src[v8];
  if (v9 > 1)
  {

    return memcpy(__dst, __src, v8 + 1);
  }

  else
  {
    if (v9 == 1)
    {
      *__dst = *__src;
      *(__dst + v8) = 1;
    }

    else
    {
      v11 = __src[v7];
      v12 = v11 - 2;
      if (v11 >= 2)
      {
        if (v7 <= 3)
        {
          v13 = v7;
        }

        else
        {
          v13 = 4;
        }

        switch(v13)
        {
          case 1:
            v14 = *__src;
            goto LABEL_22;
          case 2:
            v14 = *__src;
            goto LABEL_22;
          case 3:
            v14 = *__src | (__src[2] << 16);
            goto LABEL_22;
          case 4:
            v14 = *__src;
LABEL_22:
            v15 = (v14 | (v12 << (8 * v7))) + 2;
            v11 = v14 + 2;
            if (v7 < 4)
            {
              v11 = v15;
            }

            break;
          default:
            break;
        }
      }

      if (v11 == 1)
      {
        (*(*(v6 - 8) + 32))(__dst, __src, v6);
        *(__dst + v7) = 1;
      }

      else if (v11)
      {
        memcpy(__dst, __src, v7 + 1);
      }

      else
      {
        (*(*(*(a3 + 16) - 8) + 32))(__dst, __src);
        *((__dst + v5 + 7) & 0xFFFFFFFFFFFFFFF8) = *(&__src[v5 + 7] & 0xFFFFFFFFFFFFFFF8);
        *(__dst + v7) = 0;
      }

      *(__dst + v8) = 0;
    }

    return __dst;
  }
}

unsigned __int8 *sub_1DCCF7D4C(unsigned __int8 *__dst, unsigned __int8 *__src, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = *(a3 + 32);
  v9 = *(v8 - 8);
  if (*(v9 + 64) <= ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v10 = ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  else
  {
    v10 = *(v9 + 64);
  }

  if (v10 + 1 > 8)
  {
    v11 = v10 + 1;
  }

  else
  {
    v11 = 8;
  }

  v12 = __dst[v11];
  v13 = __src[v11];
  v14 = 8 * v10;
  if (v12 > 1)
  {
    if (v13 <= 1)
    {
      if (v13 == 1)
      {
LABEL_76:
        *__dst = *__src;
        __dst[v11] = 1;
        return __dst;
      }

      v16 = __src[v10];
      v17 = v16 - 2;
      if (v16 >= 2)
      {
        if (v10 <= 3)
        {
          v18 = v10;
        }

        else
        {
          v18 = 4;
        }

        switch(v18)
        {
          case 1:
            v19 = *__src;
            goto LABEL_39;
          case 2:
            v19 = *__src;
            goto LABEL_39;
          case 3:
            v19 = *__src | (__src[2] << 16);
            goto LABEL_39;
          case 4:
            v19 = *__src;
LABEL_39:
            v28 = (v19 | (v17 << v14)) + 2;
            v16 = v19 + 2;
            if (v10 < 4)
            {
              v16 = v28;
            }

            break;
          default:
            break;
        }
      }

LABEL_89:
      if (v16 == 1)
      {
        (*(v9 + 32))(__dst, __src, v8);
        __dst[v10] = 1;
      }

      else if (v16)
      {
        memcpy(__dst, __src, v10 + 1);
      }

      else
      {
        (*(v6 + 32))(__dst, __src, v5);
        *(&__dst[v7 + 7] & 0xFFFFFFFFFFFFFFF8) = *(&__src[v7 + 7] & 0xFFFFFFFFFFFFFFF8);
        __dst[v10] = 0;
      }

      __dst[v11] = 0;
      return __dst;
    }
  }

  else
  {
    if (v13 <= 1)
    {
      if (__dst == __src)
      {
        return __dst;
      }

      v41 = *(*(a3 + 16) - 8);
      if (v12 == 1)
      {
        v15 = *(*(a3 + 32) - 8);

        v9 = v15;
        v14 = 8 * v10;
LABEL_63:
        v32 = __src[v11];
        v33 = v32 - 2;
        if (v32 < 2)
        {
          v6 = v41;
        }

        else
        {
          if (v11 <= 3)
          {
            v34 = v11;
          }

          else
          {
            v34 = 4;
          }

          v6 = v41;
          switch(v34)
          {
            case 1:
              v35 = *__src;
              goto LABEL_73;
            case 2:
              v35 = *__src;
              goto LABEL_73;
            case 3:
              v35 = *__src | (__src[2] << 16);
              goto LABEL_73;
            case 4:
              v35 = *__src;
LABEL_73:
              v36 = (v35 | (v33 << (8 * v11))) + 2;
              v32 = v35 + 2;
              if (v11 < 4)
              {
                v32 = v36;
              }

              break;
            default:
              break;
          }
        }

        if (v32 == 1)
        {
          goto LABEL_76;
        }

        v16 = __src[v10];
        v37 = v16 - 2;
        if (v16 >= 2)
        {
          if (v10 <= 3)
          {
            v38 = v10;
          }

          else
          {
            v38 = 4;
          }

          switch(v38)
          {
            case 1:
              v39 = *__src;
              goto LABEL_86;
            case 2:
              v39 = *__src;
              goto LABEL_86;
            case 3:
              v39 = *__src | (__src[2] << 16);
              goto LABEL_86;
            case 4:
              v39 = *__src;
LABEL_86:
              if (v10 < 4)
              {
                v16 = (v39 | (v37 << v14)) + 2;
              }

              else
              {
                v16 = v39 + 2;
              }

              break;
            default:
              goto LABEL_89;
          }
        }

        goto LABEL_89;
      }

      v24 = __dst[v10];
      v25 = v24 - 2;
      if (v24 >= 2)
      {
        if (v10 <= 3)
        {
          v26 = v10;
        }

        else
        {
          v26 = 4;
        }

        switch(v26)
        {
          case 1:
            v27 = *__dst;
            goto LABEL_55;
          case 2:
            v27 = *__dst;
            goto LABEL_55;
          case 3:
            v27 = *__dst | (__dst[2] << 16);
            goto LABEL_55;
          case 4:
            v27 = *__dst;
LABEL_55:
            if (v10 < 4)
            {
              v24 = (v27 | (v25 << v14)) + 2;
            }

            else
            {
              v24 = v27 + 2;
            }

            break;
          default:
            break;
        }
      }

      if (v24 == 1)
      {
        v31 = *(v9 + 8);
      }

      else
      {
        if (v24)
        {
          goto LABEL_63;
        }

        v31 = *(v6 + 8);
      }

      v40 = *(*(a3 + 32) - 8);
      v31();
      v9 = v40;
      goto LABEL_63;
    }

    if (v12 == 1)
    {
    }

    else
    {
      v20 = __dst[v10];
      v21 = v20 - 2;
      if (v20 >= 2)
      {
        if (v10 <= 3)
        {
          v22 = v10;
        }

        else
        {
          v22 = 4;
        }

        switch(v22)
        {
          case 1:
            v23 = *__dst;
            goto LABEL_43;
          case 2:
            v23 = *__dst;
            goto LABEL_43;
          case 3:
            v23 = *__dst | (__dst[2] << 16);
            goto LABEL_43;
          case 4:
            v23 = *__dst;
LABEL_43:
            v29 = (v23 | (v21 << v14)) + 2;
            v20 = v23 + 2;
            if (v10 < 4)
            {
              v20 = v29;
            }

            break;
          default:
            break;
        }
      }

      if (v20 == 1)
      {
        (*(v9 + 8))(__dst, v8);
      }

      else if (!v20)
      {
        (*(v6 + 8))(__dst, v5);
      }
    }
  }

  return memcpy(__dst, __src, v11 + 1);
}

uint64_t sub_1DCCF8284(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v4 = *(*(a3 + 32) - 8);
  if (*(v4 + 64) > v3)
  {
    v3 = *(v4 + 64);
  }

  v5 = 8;
  if (v3 + 1 > 8)
  {
    v5 = v3 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_24;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if ((v5 + 1) > 3)
  {
    goto LABEL_8;
  }

  v10 = ((a2 + ~(-1 << v7) - 253) >> v7) + 1;
  if (HIWORD(v10))
  {
    v8 = *(a1 + v6);
    if (v8)
    {
      goto LABEL_16;
    }

LABEL_24:
    v12 = *(a1 + v5);
    if (v12 >= 2)
    {
      v13 = (v12 ^ 0xFF) + 1;
    }

    else
    {
      v13 = 0;
    }

    if (v13 >= 2)
    {
      return v13 - 1;
    }

    else
    {
      return 0;
    }
  }

  if (v10 > 0xFF)
  {
    v8 = *(a1 + v6);
    if (*(a1 + v6))
    {
      goto LABEL_16;
    }

    goto LABEL_24;
  }

  if (v10 < 2)
  {
    goto LABEL_24;
  }

LABEL_8:
  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_24;
  }

LABEL_16:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return (v6 | v11) + 254;
}

void sub_1DCCF83E4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = ((*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (*(*(*(a4 + 32) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 32) - 8) + 64);
  }

  if (v5 + 1 > 8)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = 8;
  }

  v7 = v6 + 1;
  v8 = 8 * (v6 + 1);
  if (a3 < 0xFE)
  {
    v9 = 0;
  }

  else if (v7 <= 3)
  {
    v12 = ((a3 + ~(-1 << v8) - 253) >> v8) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 >= 2)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (a2 > 0xFD)
  {
    v10 = a2 - 254;
    if (v7 < 4)
    {
      v11 = (v10 >> v8) + 1;
      if (v6 != -1)
      {
        v14 = v10 & ~(-1 << v8);
        bzero(a1, v7);
        if (v7 == 3)
        {
          *a1 = v14;
          a1[2] = BYTE2(v14);
        }

        else if (v7 == 2)
        {
          *a1 = v14;
        }

        else
        {
          *a1 = v10;
        }
      }
    }

    else
    {
      bzero(a1, v6 + 1);
      *a1 = v10;
      v11 = 1;
    }

    switch(v9)
    {
      case 1:
        a1[v7] = v11;
        break;
      case 2:
        *&a1[v7] = v11;
        break;
      case 3:
LABEL_40:
        __break(1u);
        break;
      case 4:
        *&a1[v7] = v11;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v9)
    {
      case 1:
        a1[v7] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_29;
      case 2:
        *&a1[v7] = 0;
        goto LABEL_28;
      case 3:
        goto LABEL_40;
      case 4:
        *&a1[v7] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_29;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:
          a1[v6] = ~a2;
        }

        break;
    }
  }
}

uint64_t sub_1DCCF85D8(uint64_t a1, uint64_t a2)
{
  v2 = ((*(*(*(a2 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v3 = *(*(a2 + 32) - 8);
  if (*(v3 + 64) > v2)
  {
    v2 = *(v3 + 64);
  }

  if (v2 + 1 > 8)
  {
    v4 = v2 + 1;
  }

  else
  {
    v4 = 8;
  }

  v5 = *(a1 + v4);
  if (v5 >= 2)
  {
    return (v5 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

void sub_1DCCF8640(_WORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (*(*(*(a3 + 32) - 8) + 64) > v4)
  {
    v4 = *(*(*(a3 + 32) - 8) + 64);
  }

  if (v4 + 1 > 8)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = 8;
  }

  if (a2 > 0xFE)
  {
    v6 = (v5 + 1);
    if (v6 <= 3)
    {
      v7 = ~(-1 << (8 * v6));
    }

    else
    {
      v7 = -1;
    }

    if (v6)
    {
      v8 = v7 & (a2 - 255);
      if (v6 <= 3)
      {
        v9 = v6;
      }

      else
      {
        v9 = 4;
      }

      bzero(a1, v6);
      switch(v9)
      {
        case 2:
          *a1 = v8;
          break;
        case 3:
          *a1 = v8;
          *(a1 + 2) = BYTE2(v8);
          break;
        case 4:
          *a1 = v8;
          break;
        default:
          *a1 = v8;
          break;
      }
    }
  }

  else if (a2)
  {
    *(a1 + v5) = -a2;
  }
}

uint64_t sub_1DCCF8758(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *sub_1DCCF8828(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8);
  v6 = *(a3 + 32);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = v8;
  v10 = *(v5 + 64) + v8;
  v11 = *(v5 + 80) | v8;
  v12 = v11;
  v13 = v11 & 0x100000;
  if (v12 > 7 || v13 != 0 || (v10 & ~v9) + *(v7 + 64) > 0x18)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v16 = ~v9;
  (*(v5 + 16))(a1, a2);
  (*(v7 + 16))((a1 + v10) & v16, (a2 + v10) & v16, v6);
  return a1;
}

uint64_t sub_1DCCF8984(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 16) - 8) + 8;
  (*v4)();
  v5 = *(*(a2 + 32) - 8);
  v6 = *(v5 + 8);
  v7 = (*(v4 + 56) + a1 + *(v5 + 80)) & ~*(v5 + 80);

  return v6(v7);
}

uint64_t sub_1DCCF8A28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 16;
  (*v6)();
  v7 = *(*(a3 + 32) - 8);
  (*(v7 + 16))((*(v6 + 48) + *(v7 + 80) + a1) & ~*(v7 + 80), (*(v6 + 48) + *(v7 + 80) + a2) & ~*(v7 + 80));
  return a1;
}

uint64_t sub_1DCCF8AD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 24;
  (*v6)();
  v7 = *(*(a3 + 32) - 8);
  (*(v7 + 24))((*(v6 + 40) + *(v7 + 80) + a1) & ~*(v7 + 80), (*(v6 + 40) + *(v7 + 80) + a2) & ~*(v7 + 80));
  return a1;
}

uint64_t sub_1DCCF8B78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 32;
  (*v6)();
  v7 = *(*(a3 + 32) - 8);
  (*(v7 + 32))((*(v6 + 32) + *(v7 + 80) + a1) & ~*(v7 + 80), (*(v6 + 32) + *(v7 + 80) + a2) & ~*(v7 + 80));
  return a1;
}

uint64_t sub_1DCCF8C20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 16) - 8) + 40;
  (*v6)();
  v7 = *(*(a3 + 32) - 8);
  (*(v7 + 40))((*(v6 + 24) + *(v7 + 80) + a1) & ~*(v7 + 80), (*(v6 + 24) + *(v7 + 80) + a2) & ~*(v7 + 80));
  return a1;
}

uint64_t sub_1DCCF8CC8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(a3 + 32);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  if (v9 <= v6)
  {
    v11 = *(*(v5 - 8) + 84);
  }

  else
  {
    v11 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(v5 - 8) + 64) + v10;
  v13 = a2 - v11;
  if (a2 <= v11)
  {
LABEL_25:
    if (v6 < v9)
    {
      a1 = ((a1 + v12) & ~v10);
      v6 = *(v8 + 84);
      v5 = v7;
    }

    return __swift_getEnumTagSinglePayload(a1, v6, v5);
  }

  v14 = (v12 & ~v10) + *(*(v7 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_24;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    switch(v19)
    {
      case 2:
        v20 = *a1;
        break;
      case 3:
        v20 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v20 = *a1;
        break;
      default:
        v20 = *a1;
        break;
    }
  }

  else
  {
    v20 = 0;
  }

  return v11 + (v20 | v18) + 1;
}

void sub_1DCCF8E90(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 16);
  v8 = *(a4 + 32);
  v9 = *(*(v7 - 8) + 84);
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = *(*(v7 - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(*(v7 - 8) + 64) + v13;
  v15 = (v14 & ~v13) + *(*(v8 - 8) + 64);
  v16 = 8 * v15;
  v17 = a3 >= v12;
  v18 = a3 - v12;
  if (v18 != 0 && v17)
  {
    if (v15 <= 3)
    {
      v22 = ((v18 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v22))
      {
        v19 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v19 = v23;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v12 >= a2)
  {
    switch(v19)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v9 < v11)
          {
            a1 = (&a1[v14] & ~v13);
            v9 = v11;
            v7 = v8;
          }

          __swift_storeEnumTagSinglePayload(a1, a2, v9, v7);
        }

        break;
    }
  }

  else
  {
    v20 = ~v12 + a2;
    if (v15 < 4)
    {
      v21 = (v20 >> v16) + 1;
      if (v15)
      {
        v24 = v20 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *v6 = v24;
          v6[2] = BYTE2(v24);
        }

        else if (v15 == 2)
        {
          *v6 = v24;
        }

        else
        {
          *v6 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *v6 = v20;
      v21 = 1;
    }

    switch(v19)
    {
      case 1:
        v6[v15] = v21;
        break;
      case 2:
        *&v6[v15] = v21;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&v6[v15] = v21;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1DCCF9148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t *))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28D0, &unk_1DD0E40C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD0E07C0;
  *(inited + 32) = a3;
  *(inited + 40) = a4;

  sub_1DCCF91E0(v12, v13, v14, v15, v16, v17, a8);
  swift_setDeallocating();
  return sub_1DCB19D2C();
}

void sub_1DCCF91E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t *))
{
  sub_1DCCF9278();
  v13 = swift_allocError();
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 1;
  a7(&v13);
  v8 = v13;
  v9 = v14;
  v10 = v15;
  v11 = v16;
  v12 = v17;

  sub_1DCCF92CC(v8, v9, v10, v11, v12);
}

unint64_t sub_1DCCF9278()
{
  result = qword_1ECCA4810;
  if (!qword_1ECCA4810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4810);
  }

  return result;
}

void sub_1DCCF92CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  else
  {
  }
}

uint64_t dispatch thunk of DucTemplateExecutor.execute(ducFamily:ducId:parameters:locale:_:)()
{
  return (*(*v0 + 88))();
}

{
  return (*(*v0 + 96))();
}

double DucTemplatingResult.asTemplatingResult()@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = sub_1DCB72FB0(0, 0xE000000000000000, *(v5 + 16));

  v8 = sub_1DCB73048(v3, v4, v7, v5, v6);

  *a1 = v3;
  *(a1 + 8) = v4;
  v9 = MEMORY[0x1E69E7CC8];
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v6;
  *(a1 + 40) = v5;
  result = 0.0;
  *(a1 + 48) = xmmword_1DD0E1E40;
  *(a1 + 64) = v7;
  return result;
}

uint64_t AppIntentSELFPerformanceLogger.__deallocating_deinit()
{
  AppIntentSELFPerformanceLogger.deinit();

  return swift_deallocClassInstance();
}

void sub_1DCCF9904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_10_4();
  if ((*(v24 + 80) & 1) == 0)
  {
    v25 = v24;
    v26 = [objc_allocWithZone(MEMORY[0x1E69CEB18]) init];
    if (v26)
    {
      v27 = v26;
      v28 = [objc_allocWithZone(MEMORY[0x1E69CEB38]) init];
      if (v28)
      {
        v29 = v28;
        [v28 setDomainExecutionType_];
        [v29 setDomainExecutionMetadata_];
        [v27 setStartedOrChanged_];
        [v27 setContextId_];
        v30 = *(v24 + 48);
        [*(v25 + 48) setFlowDomainExecutionContext_];
        type metadata accessor for SiriKitEvent(0);

        v31 = v30;
        OUTLINED_FUNCTION_1_46();
        SiriKitEvent.__allocating_init(taskType:domainPerfContext:_:)();
      }

      if (qword_1ECCA1290 != -1)
      {
        OUTLINED_FUNCTION_0_42(&qword_1ECCA1290);
      }

      v36 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v36, qword_1ECCD25E8);
      v37 = sub_1DD0DD8EC();
      v38 = sub_1DD0DE6EC();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = OUTLINED_FUNCTION_50_0();
        *v39 = 0;
        _os_log_impl(&dword_1DCAFC000, v37, v38, "Couldn't initialize FLOWSchemaFLOWDomainExecutionStarted", v39, 2u);
        OUTLINED_FUNCTION_80();
      }
    }

    else
    {
      if (qword_1ECCA1290 != -1)
      {
        OUTLINED_FUNCTION_0_42(&qword_1ECCA1290);
      }

      v32 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v32, qword_1ECCD25E8);
      v27 = sub_1DD0DD8EC();
      v33 = sub_1DD0DE6EC();
      if (OUTLINED_FUNCTION_22(v33))
      {
        *OUTLINED_FUNCTION_50_0() = 0;
        OUTLINED_FUNCTION_8_0(&dword_1DCAFC000, v34, v35, "Couldn't initialize start FLOWSchemaFLOWDomainExecutionContext");
        OUTLINED_FUNCTION_80();
      }
    }
  }

  OUTLINED_FUNCTION_11_7();
}

unint64_t sub_1DCCFA3D0()
{
  result = qword_1EDE4D700;
  if (!qword_1EDE4D700)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE4D700);
  }

  return result;
}

void sub_1DCCFA414(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD0DDF8C();

  [a3 setDomainExecutionAppIntentBundleID_];
}

Swift::Void __swiftcall Logger.error(output:test:file:function:line:)(Swift::String output, Swift::Bool test, Swift::String file, Swift::String function, Swift::Int line)
{
  object = file._object;
  countAndFlagsBits = file._countAndFlagsBits;
  v115 = output._countAndFlagsBits;
  v123[0] = 47;
  v123[1] = 0xE100000000000000;
  v121 = v123;
  sub_1DCC3C83C(sub_1DCC3CA80, v120, file._countAndFlagsBits, file._object);
  v9 = v8;

  v10 = sub_1DD0DD8EC();
  v11 = sub_1DD0DE6EC();

  v12 = os_log_type_enabled(v10, v11);
  if (v9)
  {
    if (v12)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v123[0] = v14;
      v22 = OUTLINED_FUNCTION_0_43(4.8154e-34, v14, v15, v16, v17, v18, v19, v20, v21, v94, v101, v109, v115, *v120, *&v120[8], v121, v122);
      *(v13 + 4) = v22;
      v30 = OUTLINED_FUNCTION_2_49(v22, v23, v24, v25, v26, v27, v28, v29, v95, v102, line, v116, *v120, *&v120[8], v121, v122);
      *(v13 + 24) = OUTLINED_FUNCTION_1_47(v30, v31, v32, v33, v34, v35, v36, v37, v96, v103, v110, v117, *v120, *&v120[8], v121, v122);
      *(v13 + 32) = line;
      v38 = sub_1DD0DE1EC();
      v39 = MEMORY[0x1E12A66E0](v38);
      v41 = v40;

      v42 = sub_1DCB10E9C(v39, v41, v123);

      *(v13 + 34) = v42;
      OUTLINED_FUNCTION_3_48(v43, v44, v45, v46, v47, v48, v49, v50, v97, v104, v111);
      OUTLINED_FUNCTION_4_44(&dword_1DCAFC000, v51, v52, "%s\n%{public}s: %s\n    at %{public}s:%{public}ld");
      swift_arrayDestroy();
      v53 = v14;
LABEL_9:
      MEMORY[0x1E12A8390](v53, -1, -1);
      MEMORY[0x1E12A8390](v13, -1, -1);
    }

LABEL_10:

    return;
  }

  if (!v12)
  {
    goto LABEL_10;
  }

  v13 = swift_slowAlloc();
  v123[0] = swift_slowAlloc();
  v61 = OUTLINED_FUNCTION_0_43(4.8154e-34, v123[0], v54, v55, v56, v57, v58, v59, v60, v94, v123[0], line, v115, *v120, *&v120[8], v121, v122);
  *(v13 + 4) = v61;
  v69 = OUTLINED_FUNCTION_2_49(v61, v62, v63, v64, v65, v66, v67, v68, v98, v105, v112, v118, *v120, *&v120[8], v121, v122);
  *(v13 + 24) = OUTLINED_FUNCTION_1_47(v69, v70, v71, v72, v73, v74, v75, v76, v99, v106, v113, v119, *v120, *&v120[8], v121, v122);
  *(v13 + 32) = line;
  v77 = sub_1DD0DE10C();
  v78 = HIBYTE(object) & 0xF;
  if ((object & 0x2000000000000000) == 0)
  {
    v78 = countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v78 >= v77 >> 14)
  {
    v79 = sub_1DD0DE1EC();
    v80 = MEMORY[0x1E12A66E0](v79);
    v82 = v81;

    v83 = sub_1DCB10E9C(v80, v82, v123);

    *(v13 + 34) = v83;
    OUTLINED_FUNCTION_3_48(v84, v85, v86, v87, v88, v89, v90, v91, v100, v107, v114);
    OUTLINED_FUNCTION_4_44(&dword_1DCAFC000, v92, v93, "%s\n%{public}s: %s\n    at %{public}s:%{public}ld");
    swift_arrayDestroy();
    v53 = v108;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_1DCCFA81C()
{
  v0 = sub_1DD0DD8FC();
  __swift_allocate_value_buffer(v0, qword_1ECCD25E8);
  __swift_project_value_buffer(v0, qword_1ECCD25E8);
  if (qword_1ECCA1298 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECCD2600;
  return sub_1DD0DD90C();
}

uint64_t sub_1DCCFA8A8()
{
  sub_1DCCFA914();
  result = sub_1DD0DE94C();
  qword_1ECCD2600 = result;
  return result;
}

unint64_t sub_1DCCFA914()
{
  result = qword_1EDE4F8F0;
  if (!qword_1EDE4F8F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE4F8F0);
  }

  return result;
}

uint64_t DucTemplatingLocalContext.countryCode.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DucTemplatingLocalContext.countryCode.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t DucTemplatingLocalContext.meCard.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 16), 0xB0uLL);
  memcpy(a1, (v1 + 16), 0xB0uLL);
  return sub_1DCB28B08(__dst, v4, &qword_1ECCA4818, &unk_1DD0ECB40);
}

void *DucTemplatingLocalContext.meCard.setter(const void *a1)
{
  memcpy(v4, (v1 + 16), sizeof(v4));
  sub_1DCCFAA94(v4);
  return memcpy((v1 + 16), a1, 0xB0uLL);
}

uint64_t sub_1DCCFAA94(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4818, &unk_1DD0ECB40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DucTemplatingLocalContext.nlIntent.setter(uint64_t a1)
{

  *(v1 + 192) = a1;
  return result;
}

uint64_t type metadata accessor for DucTemplatingLocalContext(uint64_t a1)
{
  result = qword_1EDE47C98;
  if (!qword_1EDE47C98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DucTemplatingLocalContext.requestStartTime.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for DucTemplatingLocalContext(0) + 28);

  return sub_1DCCFAC48(a1, v3);
}

uint64_t sub_1DCCFAC48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BA0, &qword_1DD0E6280);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t DucTemplatingLocalContext.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  sub_1DCCFAD70(v5);
  memcpy(a1 + 2, v5, 0xB0uLL);
  a1[24] = 0;
  v2 = *(type metadata accessor for DucTemplatingLocalContext(0) + 28);
  v3 = sub_1DD0DAFDC();
  return __swift_storeEnumTagSinglePayload(a1 + v2, 1, 1, v3);
}

uint64_t initializeBufferWithCopyOfBuffer for DucTemplatingLocalContext(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if ((*(*(a3 - 8) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v6 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v6;
  v7 = a2[3];

  if (v7)
  {
    if (v7 == 1)
    {
      memcpy((a1 + 16), a2 + 2, 0xB0uLL);
      goto LABEL_23;
    }

    *(a1 + 16) = a2[2];
    *(a1 + 24) = v7;
    v9 = a2[5];
    *(a1 + 32) = a2[4];
    *(a1 + 40) = v9;
  }

  else
  {
    v8 = *(a2 + 2);
    *(a1 + 16) = *(a2 + 1);
    *(a1 + 32) = v8;
  }

  v10 = a2[7];
  if (v10)
  {
    *(a1 + 48) = a2[6];
    *(a1 + 56) = v10;
    v11 = a2[9];
    *(a1 + 64) = a2[8];
    *(a1 + 72) = v11;
  }

  else
  {
    v12 = *(a2 + 4);
    *(a1 + 48) = *(a2 + 3);
    *(a1 + 64) = v12;
  }

  v13 = a2[11];
  if (v13)
  {
    *(a1 + 80) = a2[10];
    *(a1 + 88) = v13;
    v14 = a2[13];
    *(a1 + 96) = a2[12];
    *(a1 + 104) = v14;
  }

  else
  {
    v15 = *(a2 + 6);
    *(a1 + 80) = *(a2 + 5);
    *(a1 + 96) = v15;
  }

  v16 = a2[15];
  if (v16)
  {
    *(a1 + 112) = a2[14];
    *(a1 + 120) = v16;
    v17 = a2[17];
    *(a1 + 128) = a2[16];
    *(a1 + 136) = v17;
  }

  else
  {
    v18 = *(a2 + 8);
    *(a1 + 112) = *(a2 + 7);
    *(a1 + 128) = v18;
  }

  v19 = a2[19];
  if (v19)
  {
    *(a1 + 144) = a2[18];
    *(a1 + 152) = v19;
    v20 = a2[21];
    *(a1 + 160) = a2[20];
    *(a1 + 168) = v20;
  }

  else
  {
    v21 = *(a2 + 10);
    *(a1 + 144) = *(a2 + 9);
    *(a1 + 160) = v21;
  }

  v22 = a2[23];
  if (v22 >> 60 == 15)
  {
    *(a1 + 176) = *(a2 + 11);
  }

  else
  {
    v23 = a2[22];
    sub_1DCC91E80(v23, a2[23]);
    *(a1 + 176) = v23;
    *(a1 + 184) = v22;
  }

LABEL_23:
  *(a1 + 192) = a2[24];
  v24 = *(a3 + 28);
  v25 = sub_1DD0DAFDC();

  if (__swift_getEnumTagSinglePayload(a2 + v24, 1, v25))
  {
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BA0, &qword_1DD0E6280);
    memcpy((a1 + v24), a2 + v24, *(*(v26 - 8) + 64));
  }

  else
  {
    (*(*(v25 - 8) + 16))(a1 + v24, a2 + v24, v25);
    __swift_storeEnumTagSinglePayload(a1 + v24, 0, 1, v25);
  }

  return a1;
}

uint64_t destroy for DucTemplatingLocalContext(char *a1, uint64_t a2)
{

  v4 = *(a1 + 3);
  if (v4)
  {
    if (v4 == 1)
    {
      goto LABEL_14;
    }
  }

  if (*(a1 + 7))
  {
  }

  if (*(a1 + 11))
  {
  }

  if (*(a1 + 15))
  {
  }

  if (*(a1 + 19))
  {
  }

  v5 = *(a1 + 23);
  if (v5 >> 60 != 15)
  {
    sub_1DCB21A14(*(a1 + 22), v5);
  }

LABEL_14:

  v6 = *(a2 + 28);
  v7 = sub_1DD0DAFDC();
  result = __swift_getEnumTagSinglePayload(&a1[v6], 1, v7);
  if (!result)
  {
    v9 = *(*(v7 - 8) + 8);

    return v9(&a1[v6], v7);
  }

  return result;
}

uint64_t initializeWithCopy for DucTemplatingLocalContext(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v6;
  v7 = a2[3];

  if (v7)
  {
    if (v7 == 1)
    {
      memcpy((a1 + 16), a2 + 2, 0xB0uLL);
      goto LABEL_21;
    }

    *(a1 + 16) = a2[2];
    *(a1 + 24) = v7;
    v9 = a2[5];
    *(a1 + 32) = a2[4];
    *(a1 + 40) = v9;
  }

  else
  {
    v8 = *(a2 + 2);
    *(a1 + 16) = *(a2 + 1);
    *(a1 + 32) = v8;
  }

  v10 = a2[7];
  if (v10)
  {
    *(a1 + 48) = a2[6];
    *(a1 + 56) = v10;
    v11 = a2[9];
    *(a1 + 64) = a2[8];
    *(a1 + 72) = v11;
  }

  else
  {
    v12 = *(a2 + 4);
    *(a1 + 48) = *(a2 + 3);
    *(a1 + 64) = v12;
  }

  v13 = a2[11];
  if (v13)
  {
    *(a1 + 80) = a2[10];
    *(a1 + 88) = v13;
    v14 = a2[13];
    *(a1 + 96) = a2[12];
    *(a1 + 104) = v14;
  }

  else
  {
    v15 = *(a2 + 6);
    *(a1 + 80) = *(a2 + 5);
    *(a1 + 96) = v15;
  }

  v16 = a2[15];
  if (v16)
  {
    *(a1 + 112) = a2[14];
    *(a1 + 120) = v16;
    v17 = a2[17];
    *(a1 + 128) = a2[16];
    *(a1 + 136) = v17;
  }

  else
  {
    v18 = *(a2 + 8);
    *(a1 + 112) = *(a2 + 7);
    *(a1 + 128) = v18;
  }

  v19 = a2[19];
  if (v19)
  {
    *(a1 + 144) = a2[18];
    *(a1 + 152) = v19;
    v20 = a2[21];
    *(a1 + 160) = a2[20];
    *(a1 + 168) = v20;
  }

  else
  {
    v21 = *(a2 + 10);
    *(a1 + 144) = *(a2 + 9);
    *(a1 + 160) = v21;
  }

  v22 = a2[23];
  if (v22 >> 60 == 15)
  {
    *(a1 + 176) = *(a2 + 11);
  }

  else
  {
    v23 = a2[22];
    sub_1DCC91E80(v23, a2[23]);
    *(a1 + 176) = v23;
    *(a1 + 184) = v22;
  }

LABEL_21:
  *(a1 + 192) = a2[24];
  v24 = *(a3 + 28);
  v25 = sub_1DD0DAFDC();

  if (__swift_getEnumTagSinglePayload(a2 + v24, 1, v25))
  {
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BA0, &qword_1DD0E6280);
    memcpy((a1 + v24), a2 + v24, *(*(v26 - 8) + 64));
  }

  else
  {
    (*(*(v25 - 8) + 16))(a1 + v24, a2 + v24, v25);
    __swift_storeEnumTagSinglePayload(a1 + v24, 0, 1, v25);
  }

  return a1;
}

uint64_t assignWithCopy for DucTemplatingLocalContext(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  v6 = *(a1 + 24);
  v7 = *(a2 + 24);
  if (v6 == 1)
  {
    if (!v7)
    {
      v8 = *(a2 + 32);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 32) = v8;
      goto LABEL_12;
    }

    if (v7 != 1)
    {
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = *(a2 + 40);

LABEL_12:
      if (*(a2 + 56))
      {
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 56) = *(a2 + 56);
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 72) = *(a2 + 72);
      }

      else
      {
        v9 = *(a2 + 64);
        *(a1 + 48) = *(a2 + 48);
        *(a1 + 64) = v9;
      }

      if (*(a2 + 88))
      {
        *(a1 + 80) = *(a2 + 80);
        *(a1 + 88) = *(a2 + 88);
        *(a1 + 96) = *(a2 + 96);
        *(a1 + 104) = *(a2 + 104);
      }

      else
      {
        v10 = *(a2 + 96);
        *(a1 + 80) = *(a2 + 80);
        *(a1 + 96) = v10;
      }

      if (*(a2 + 120))
      {
        *(a1 + 112) = *(a2 + 112);
        *(a1 + 120) = *(a2 + 120);
        *(a1 + 128) = *(a2 + 128);
        *(a1 + 136) = *(a2 + 136);
      }

      else
      {
        v11 = *(a2 + 128);
        *(a1 + 112) = *(a2 + 112);
        *(a1 + 128) = v11;
      }

      if (*(a2 + 152))
      {
        *(a1 + 144) = *(a2 + 144);
        *(a1 + 152) = *(a2 + 152);
        *(a1 + 160) = *(a2 + 160);
        *(a1 + 168) = *(a2 + 168);
      }

      else
      {
        v12 = *(a2 + 160);
        *(a1 + 144) = *(a2 + 144);
        *(a1 + 160) = v12;
      }

      v13 = *(a2 + 184);
      goto LABEL_58;
    }

LABEL_7:
    memcpy((a1 + 16), (a2 + 16), 0xB0uLL);
    goto LABEL_63;
  }

  if (v7 == 1)
  {
    sub_1DCCFBAC0(a1 + 16);
    goto LABEL_7;
  }

  if (v6)
  {
    if (v7)
    {
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = *(a2 + 24);

      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = *(a2 + 40);
    }

    else
    {
      sub_1DCCFBA18(a1 + 16);
      v14 = *(a2 + 32);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 32) = v14;
    }
  }

  else if (v7)
  {
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = *(a2 + 40);
  }

  else
  {
    v15 = *(a2 + 32);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 32) = v15;
  }

  v16 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if (v16)
    {
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 56) = *(a2 + 56);

      *(a1 + 64) = *(a2 + 64);
      *(a1 + 72) = *(a2 + 72);
    }

    else
    {
      sub_1DCCFBA18(a1 + 48);
      v17 = *(a2 + 64);
      *(a1 + 48) = *(a2 + 48);
      *(a1 + 64) = v17;
    }
  }

  else if (v16)
  {
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 72) = *(a2 + 72);
  }

  else
  {
    v18 = *(a2 + 64);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 64) = v18;
  }

  v19 = *(a2 + 88);
  if (*(a1 + 88))
  {
    if (v19)
    {
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 88) = *(a2 + 88);

      *(a1 + 96) = *(a2 + 96);
      *(a1 + 104) = *(a2 + 104);
    }

    else
    {
      sub_1DCCFBA18(a1 + 80);
      v20 = *(a2 + 96);
      *(a1 + 80) = *(a2 + 80);
      *(a1 + 96) = v20;
    }
  }

  else if (v19)
  {
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 104) = *(a2 + 104);
  }

  else
  {
    v21 = *(a2 + 96);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = v21;
  }

  v22 = *(a2 + 120);
  if (*(a1 + 120))
  {
    if (v22)
    {
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 120) = *(a2 + 120);

      *(a1 + 128) = *(a2 + 128);
      *(a1 + 136) = *(a2 + 136);
    }

    else
    {
      sub_1DCCFBA18(a1 + 112);
      v23 = *(a2 + 128);
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 128) = v23;
    }
  }

  else if (v22)
  {
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 136) = *(a2 + 136);
  }

  else
  {
    v24 = *(a2 + 128);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 128) = v24;
  }

  v25 = *(a2 + 152);
  if (*(a1 + 152))
  {
    if (v25)
    {
      *(a1 + 144) = *(a2 + 144);
      *(a1 + 152) = *(a2 + 152);

      *(a1 + 160) = *(a2 + 160);
      *(a1 + 168) = *(a2 + 168);
    }

    else
    {
      sub_1DCCFBA18(a1 + 144);
      v26 = *(a2 + 160);
      *(a1 + 144) = *(a2 + 144);
      *(a1 + 160) = v26;
    }
  }

  else if (v25)
  {
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 168) = *(a2 + 168);
  }

  else
  {
    v27 = *(a2 + 160);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 160) = v27;
  }

  v13 = *(a2 + 184);
  if (*(a1 + 184) >> 60 == 15)
  {
LABEL_58:
    if (v13 >> 60 != 15)
    {
      v28 = *(a2 + 176);
      sub_1DCC91E80(v28, v13);
      *(a1 + 176) = v28;
      *(a1 + 184) = v13;
      goto LABEL_63;
    }

    goto LABEL_62;
  }

  if (v13 >> 60 == 15)
  {
    sub_1DCCFBA6C(a1 + 176);
LABEL_62:
    *(a1 + 176) = *(a2 + 176);
    goto LABEL_63;
  }

  v36 = *(a2 + 176);
  sub_1DCC91E80(v36, *(a2 + 184));
  v37 = *(a1 + 176);
  v38 = *(a1 + 184);
  *(a1 + 176) = v36;
  *(a1 + 184) = v13;
  sub_1DCB21A14(v37, v38);
LABEL_63:
  *(a1 + 192) = *(a2 + 192);

  v29 = *(a3 + 28);
  v30 = sub_1DD0DAFDC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1 + v29, 1, v30);
  v32 = __swift_getEnumTagSinglePayload(a2 + v29, 1, v30);
  if (!EnumTagSinglePayload)
  {
    v33 = *(v30 - 8);
    if (!v32)
    {
      (*(v33 + 24))(a1 + v29, a2 + v29, v30);
      return a1;
    }

    (*(v33 + 8))(a1 + v29, v30);
    goto LABEL_68;
  }

  if (v32)
  {
LABEL_68:
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BA0, &qword_1DD0E6280);
    memcpy((a1 + v29), (a2 + v29), *(*(v34 - 8) + 64));
    return a1;
  }

  (*(*(v30 - 8) + 16))(a1 + v29, a2 + v29, v30);
  __swift_storeEnumTagSinglePayload(a1 + v29, 0, 1, v30);
  return a1;
}

uint64_t initializeWithTake for DucTemplatingLocalContext(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  memcpy((a1 + 16), (a2 + 16), 0xB0uLL);
  *(a1 + 192) = *(a2 + 192);
  v6 = *(a3 + 28);
  v7 = sub_1DD0DAFDC();
  if (__swift_getEnumTagSinglePayload(a2 + v6, 1, v7))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BA0, &qword_1DD0E6280);
    memcpy((a1 + v6), (a2 + v6), *(*(v8 - 8) + 64));
  }

  else
  {
    (*(*(v7 - 8) + 32))(a1 + v6, a2 + v6, v7);
    __swift_storeEnumTagSinglePayload(a1 + v6, 0, 1, v7);
  }

  return a1;
}

void *assignWithTake for DucTemplatingLocalContext(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v6;

  v7 = a1[3];
  if (v7 == 1)
  {
    goto LABEL_4;
  }

  v8 = *(a2 + 24);
  if (v8 == 1)
  {
    sub_1DCCFBAC0((a1 + 2));
LABEL_4:
    memcpy(a1 + 2, (a2 + 16), 0xB0uLL);
    goto LABEL_5;
  }

  if (v7)
  {
    if (v8)
    {
      a1[2] = *(a2 + 16);
      a1[3] = v8;

      v16 = *(a2 + 40);
      a1[4] = *(a2 + 32);
      a1[5] = v16;

      goto LABEL_18;
    }

    sub_1DCCFBA18((a1 + 2));
  }

  v17 = *(a2 + 32);
  *(a1 + 1) = *(a2 + 16);
  *(a1 + 2) = v17;
LABEL_18:
  if (a1[7])
  {
    v18 = *(a2 + 56);
    if (v18)
    {
      a1[6] = *(a2 + 48);
      a1[7] = v18;

      v19 = *(a2 + 72);
      a1[8] = *(a2 + 64);
      a1[9] = v19;

      goto LABEL_23;
    }

    sub_1DCCFBA18((a1 + 6));
  }

  v20 = *(a2 + 64);
  *(a1 + 3) = *(a2 + 48);
  *(a1 + 4) = v20;
LABEL_23:
  if (a1[11])
  {
    v21 = *(a2 + 88);
    if (v21)
    {
      a1[10] = *(a2 + 80);
      a1[11] = v21;

      v22 = *(a2 + 104);
      a1[12] = *(a2 + 96);
      a1[13] = v22;

      goto LABEL_28;
    }

    sub_1DCCFBA18((a1 + 10));
  }

  v23 = *(a2 + 96);
  *(a1 + 5) = *(a2 + 80);
  *(a1 + 6) = v23;
LABEL_28:
  if (a1[15])
  {
    v24 = *(a2 + 120);
    if (v24)
    {
      a1[14] = *(a2 + 112);
      a1[15] = v24;

      v25 = *(a2 + 136);
      a1[16] = *(a2 + 128);
      a1[17] = v25;

      goto LABEL_33;
    }

    sub_1DCCFBA18((a1 + 14));
  }

  v26 = *(a2 + 128);
  *(a1 + 7) = *(a2 + 112);
  *(a1 + 8) = v26;
LABEL_33:
  if (a1[19])
  {
    v27 = *(a2 + 152);
    if (v27)
    {
      a1[18] = *(a2 + 144);
      a1[19] = v27;

      v28 = *(a2 + 168);
      a1[20] = *(a2 + 160);
      a1[21] = v28;

      goto LABEL_38;
    }

    sub_1DCCFBA18((a1 + 18));
  }

  v29 = *(a2 + 160);
  *(a1 + 9) = *(a2 + 144);
  *(a1 + 10) = v29;
LABEL_38:
  v30 = a1[23];
  if (v30 >> 60 == 15)
  {
LABEL_41:
    *(a1 + 11) = *(a2 + 176);
    goto LABEL_5;
  }

  v31 = *(a2 + 184);
  if (v31 >> 60 == 15)
  {
    sub_1DCCFBA6C((a1 + 22));
    goto LABEL_41;
  }

  v32 = a1[22];
  a1[22] = *(a2 + 176);
  a1[23] = v31;
  sub_1DCB21A14(v32, v30);
LABEL_5:
  a1[24] = *(a2 + 192);

  v9 = *(a3 + 28);
  v10 = sub_1DD0DAFDC();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1 + v9, 1, v10);
  v12 = __swift_getEnumTagSinglePayload(a2 + v9, 1, v10);
  if (!EnumTagSinglePayload)
  {
    v13 = *(v10 - 8);
    if (!v12)
    {
      (*(v13 + 40))(a1 + v9, a2 + v9, v10);
      return a1;
    }

    (*(v13 + 8))(a1 + v9, v10);
    goto LABEL_10;
  }

  if (v12)
  {
LABEL_10:
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BA0, &qword_1DD0E6280);
    memcpy(a1 + v9, (a2 + v9), *(*(v14 - 8) + 64));
    return a1;
  }

  (*(*(v10 - 8) + 32))(a1 + v9, a2 + v9, v10);
  __swift_storeEnumTagSinglePayload(a1 + v9, 0, 1, v10);
  return a1;
}

void sub_1DCCFBF58(uint64_t a1)
{
  sub_1DCC4A194(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

unint64_t DucParameterCodingError.description.getter()
{
  sub_1DCCFC130(v0, &v11);
  if (!v12)
  {
    return 0xD000000000000037;
  }

  v2 = v13;
  v1 = v14;
  sub_1DCAFF9E8(&v11, v8);
  sub_1DD0DEC1C();

  v3 = v9;
  v4 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  v5 = (*(v4 + 8))(v3, v4);
  MEMORY[0x1E12A6780](v5);

  MEMORY[0x1E12A6780](2112039, 0xE300000000000000);
  MEMORY[0x1E12A6780](v2, v1);

  v6 = 0xD000000000000022;
  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  return v6;
}

void *destroy for DucParameterCodingError(void *result)
{
  if (result[3] >= 0xFFFFFFFFuLL)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(result);
  }

  return result;
}

uint64_t initializeWithCopy for DucParameterCodingError(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  if (v4 < 0xFFFFFFFF)
  {
    v7 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v7;
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
  }

  else
  {
    v5 = *(a2 + 32);
    *(a1 + 24) = v4;
    *(a1 + 32) = v5;
    (**(v4 - 8))(a1, a2);
    v6 = *(a2 + 48);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 48) = v6;
  }

  return a1;
}

uint64_t assignWithCopy for DucParameterCodingError(uint64_t a1, __int128 *a2)
{
  v4 = *(a2 + 3);
  if (*(a1 + 24) < 0xFFFFFFFFuLL)
  {
    if (v4 >= 0xFFFFFFFF)
    {
      *(a1 + 24) = v4;
      *(a1 + 32) = *(a2 + 4);
      (**(v4 - 8))(a1, a2);
      *(a1 + 40) = *(a2 + 5);
      *(a1 + 48) = *(a2 + 6);

      return a1;
    }

LABEL_7:
    v5 = *a2;
    v6 = a2[1];
    v7 = a2[2];
    *(a1 + 48) = *(a2 + 6);
    *(a1 + 16) = v6;
    *(a1 + 32) = v7;
    *a1 = v5;
    return a1;
  }

  if (v4 < 0xFFFFFFFF)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);

    goto LABEL_7;
  }

  __swift_assign_boxed_opaque_existential_1(a1, a2);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 48) = *(a2 + 6);

  return a1;
}

uint64_t assignWithTake for DucParameterCodingError(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) < 0xFFFFFFFFuLL)
  {
    goto LABEL_5;
  }

  v4 = *(a2 + 24);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  if (v4 < 0xFFFFFFFF)
  {

LABEL_5:
    v6 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v6;
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    return a1;
  }

  v5 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v5;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);

  return a1;
}

uint64_t getEnumTagSinglePayload for DucParameterCodingError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DucParameterCodingError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

double sub_1DCCFC498(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1DCCFC510()
{
  sub_1DCCFA914();
  result = sub_1DD0DE94C();
  qword_1ECCD2608 = result;
  return result;
}

uint64_t DucTemplatingService.locale.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t DucTemplatingService.ducFamily.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t DucTemplatingService.synapseAppLaunchDucs.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

void DucTemplatingService.__allocating_init(ducFamily:locale:extensionValueTypeNamesByValueType:aceServiceInvoker:)()
{
  OUTLINED_FUNCTION_20_10();
  OUTLINED_FUNCTION_25_10();
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_17_17();
  swift_allocObject();
  DucTemplatingService.init(ducFamily:locale:extensionValueTypeNamesByValueType:aceServiceInvoker:)(v7, v5, v3, v2, v1, v0);
}

void DucTemplatingService.init(ducFamily:locale:extensionValueTypeNamesByValueType:aceServiceInvoker:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  OUTLINED_FUNCTION_14_31(a1, a2, a3, a4, "synapseAppLaunchDucs");
  if (qword_1EDE46628 != -1)
  {
    swift_once();
  }

  sub_1DCB4E718(&v8);
  __swift_destroy_boxed_opaque_existential_1Tm(&v8);
  type metadata accessor for DucTemplateExecutor();
  *(v6 + 48) = swift_allocObject();
  *(v6 + 56) = a5;
  sub_1DD0DCF8C();
}

uint64_t DucTemplatingService.__allocating_init(ducFamily:locale:extensionValueTypeNamesByValueType:aceServiceInvoker:deviceState:localContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t a8)
{
  OUTLINED_FUNCTION_17_17();
  v16 = swift_allocObject();
  DucTemplatingService.init(ducFamily:locale:extensionValueTypeNamesByValueType:aceServiceInvoker:deviceState:localContext:)(a1, a2, a3, a4, a5, a6, a7, a8);
  return v16;
}

uint64_t DucTemplatingService.init(ducFamily:locale:extensionValueTypeNamesByValueType:aceServiceInvoker:deviceState:localContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int128 *a7, uint64_t a8)
{
  OUTLINED_FUNCTION_14_31(a1, a2, a3, a4, "synapseAppLaunchDucs");
  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  sub_1DCB16D50(a8, &qword_1ECCA4820, &unk_1DD0ECCB0);
  type metadata accessor for DucTemplateExecutor();
  *(v8 + 48) = swift_allocObject();
  *(v8 + 56) = a5;
  sub_1DCB18FF0(a7, v8 + 80);
  return v8;
}

uint64_t sub_1DCCFC88C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(void))
{
  v9 = sub_1DCCF9278();
  OUTLINED_FUNCTION_34(&type metadata for DucFailure, v9);
  OUTLINED_FUNCTION_1_48();
  v10 = a8();
  OUTLINED_FUNCTION_9_30(v10, v11, v12, v13, v14, v15, v16, v17, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30);
  return sub_1DCB16D50(v31, &unk_1ECCA3260, &unk_1DD0E5AD0);
}

void sub_1DCCFC8F4()
{
  OUTLINED_FUNCTION_26_13();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v0);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v1, v2);
  v3 = OUTLINED_FUNCTION_12_8();
  OUTLINED_FUNCTION_11_6(v3);
  OUTLINED_FUNCTION_136();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_13_28(v4);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCCFC994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = sub_1DCCF9278();
  OUTLINED_FUNCTION_34(&type metadata for DucFailure, v6);
  OUTLINED_FUNCTION_1_48();
  v7 = a5();
  OUTLINED_FUNCTION_9_30(v7, v8, v9, v10, v11, v12, v13, v14, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27);
  return sub_1DCB16D50(v28, &unk_1ECCA3260, &unk_1DD0E5AD0);
}

void sub_1DCCFC9FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, void *a7, uint64_t a8, uint64_t a9)
{
  v17 = swift_allocObject();
  *(v17 + 16) = a8;
  *(v17 + 24) = a9;
  *(v17 + 32) = v9;
  *(v17 + 40) = a5;
  *(v17 + 48) = a1;
  *(v17 + 56) = a7;
  *(v17 + 64) = a2;
  *(v17 + 72) = a3;
  *(v17 + 80) = a6;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCCFCAE0(char *__src, uint64_t (*a2)(_BYTE *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  memcpy(__dst, __src, 0x49uLL);
  if ((__dst[9] & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1((a4 + 80), *(a4 + 104));
    memcpy(v10, __src, 0x49uLL);
    sub_1DCBBF670(v10, &v9);
    DeviceState.isVox.getter();
  }

  memcpy(v10, __src, 0x49uLL);
  return a2(v10);
}

uint64_t *sub_1DCCFCC84(uint64_t *result, uint64_t (*a2)(void *), uint64_t a3, const void *a4, uint64_t a5, uint64_t *a6)
{
  if (result[9])
  {
    v8 = *result;
    if (qword_1ECCA12A0 != -1)
    {
      swift_once();
    }

    v9 = qword_1ECCD2608;
    v10 = sub_1DD0DE6EC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1DD0E07C0;
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    __src[0] = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    sub_1DD0DEDBC();
    *(v11 + 56) = MEMORY[0x1E69E6158];
    *(v11 + 64) = sub_1DCB34060();
    *(v11 + 32) = 0;
    *(v11 + 40) = 0xE000000000000000;
    sub_1DD0DD7EC("Unable to build speakable disambiguation items using DUC. Ignoring error and returning template result without speakable items: %@", 130, 2, &dword_1DCAFC000, v9, v10, v11);

    memcpy(__dst, a4, 0x49uLL);
    return a2(__dst);
  }

  else
  {
    v12 = result[4];
    if (v12[2])
    {
      v14 = v12[4];
      v15 = v12[5];

      sub_1DCCFE594(a6, v14, v15, __src);

      v17 = 0;
      LOBYTE(__src[9]) = 0;
      a2(__src);
      memcpy(__dst, __src, 0x49uLL);
      return sub_1DCB16D50(__dst, &unk_1ECCA3260, &unk_1DD0E5AD0);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1DCCFCE94()
{
  OUTLINED_FUNCTION_26_13();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v0);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v1, v2);
  v3 = OUTLINED_FUNCTION_12_8();
  OUTLINED_FUNCTION_11_6(v3);
  OUTLINED_FUNCTION_136();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_13_28(v4);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCCFCF38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = sub_1DCCF9278();
  OUTLINED_FUNCTION_34(&type metadata for DucFailure, v5);
  OUTLINED_FUNCTION_1_48();
  v6 = a4();
  OUTLINED_FUNCTION_9_30(v6, v7, v8, v9, v10, v11, v12, v13, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26);
  return sub_1DCB16D50(v27, &unk_1ECCA3260, &unk_1DD0E5AD0);
}

void sub_1DCCFCFA0()
{
  OUTLINED_FUNCTION_20_10();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  OUTLINED_FUNCTION_20_0(v1);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v2, v3);
  OUTLINED_FUNCTION_15_3();
  sub_1DCCFD064((v0 + 80));
}

void sub_1DCCFD064(void *a1)
{
  v3 = sub_1DD0DB0FC();
  MEMORY[0x1EEE9AC00](v3, v4);
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  (*(v6 + 152))(v5, v6);
  sub_1DD0DD1BC();
  if (v7)
  {
    sub_1DCD00AE8();
    sub_1DCD00B3C();
    sub_1DD0DDF3C();
  }

  type metadata accessor for AppInformationResolver();
  swift_initStackObject();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCCFD260(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = sub_1DCCF9278();
  OUTLINED_FUNCTION_34(&type metadata for DucFailure, v3);
  OUTLINED_FUNCTION_1_48();
  v4 = a2();
  OUTLINED_FUNCTION_9_30(v4, v5, v6, v7, v8, v9, v10, v11, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24);
  return sub_1DCB16D50(v25, &unk_1ECCA3260, &unk_1DD0E5AD0);
}

void sub_1DCCFD2F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_20_10();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  OUTLINED_FUNCTION_20_0(v19);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v20, v21);
  sub_1DCCFD064((v18 + 80));
}

uint64_t sub_1DCCFD40C(uint64_t (*a1)(void))
{
  v2 = sub_1DCCF9278();
  OUTLINED_FUNCTION_34(&type metadata for DucFailure, v2);
  OUTLINED_FUNCTION_1_48();
  v3 = a1();
  OUTLINED_FUNCTION_9_30(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23);
  return sub_1DCB16D50(v24, &unk_1ECCA3260, &unk_1DD0E5AD0);
}

void sub_1DCCFD474()
{
  OUTLINED_FUNCTION_20_10();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  OUTLINED_FUNCTION_20_0(v1);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v2, v3);
  OUTLINED_FUNCTION_15_3();
  sub_1DCCFD064((v0 + 80));
}

void sub_1DCCFD538()
{
  OUTLINED_FUNCTION_20_10();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  OUTLINED_FUNCTION_20_0(v1);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v2, v3);
  OUTLINED_FUNCTION_15_3();
  sub_1DCCFD064((v0 + 80));
}

uint64_t sub_1DCCFD624(id a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *))
{
  sub_1DCCFD6B4(v6, a1, 0xD00000000000001FLL, 0x80000001DD119B20, a2, a3 & 1);
  a4(v6);
  memcpy(__dst, v6, 0x49uLL);
  return sub_1DCB16D50(__dst, &unk_1ECCA3260, &unk_1DD0E5AD0);
}

void sub_1DCCFD6B4(uint64_t *__return_ptr a1@<X8>, id a2@<X2>, uint64_t a3@<X0>, uint64_t a4@<X1>, uint64_t a5@<X3>, char a6@<W4>)
{
  if (a6)
  {
    v9 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    v10 = sub_1DD0DF06C();
    if (v10)
    {
      v11 = v10;
      sub_1DCD00AD8(a2, a5, 1);
    }

    else
    {
      v11 = swift_allocError();
      *v19 = a2;
    }

    *a1 = v11;
    *(a1 + 72) = 1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28D0, &unk_1DD0E40C0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1DD0E07C0;
    *(v14 + 32) = a2;
    *(v14 + 40) = a5;
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1DD0E07C0;
    *(v15 + 32) = a2;
    *(v15 + 40) = a5;
    sub_1DCCB6F38(a2, a5, 0);
    sub_1DCCB6F38(a2, a5, 0);
    v16 = sub_1DD0DE38C();
    v16[2] = 1;
    v16[4] = 0;
    v16[5] = 0xE000000000000000;

    v17 = sub_1DCB73048(a3, a4, v16, v15, v14);

    *a1 = a3;
    a1[1] = a4;
    v18 = MEMORY[0x1E69E7CC8];
    a1[2] = v17;
    a1[3] = v18;
    a1[4] = v14;
    a1[5] = v15;
    *(a1 + 3) = xmmword_1DD0E1E40;
    a1[8] = v16;
    *(a1 + 72) = 0;
  }
}

uint64_t sub_1DCCFD904(id a1, uint64_t a2, char a3, void (*a4)(uint64_t *))
{
  sub_1DCCFD6B4(v6, a1, 0xD000000000000036, 0x80000001DD119AE0, a2, a3 & 1);
  a4(v6);
  memcpy(__dst, v6, 0x49uLL);
  return sub_1DCB16D50(__dst, &unk_1ECCA3260, &unk_1DD0E5AD0);
}

uint64_t sub_1DCCFD9AC(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t, uint64_t))
{
  sub_1DCB17CA0(v3 + 80, v8);
  a3(v8, a1, a2);
  return sub_1DCB16D50(v8, &qword_1ECCA8AB0, &qword_1DD0E23E0);
}

void sub_1DCCFDB20()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v0);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v1, v2);
  v3 = OUTLINED_FUNCTION_12_8();
  OUTLINED_FUNCTION_11_6(v3);
  v4 = swift_allocObject();
  v5 = OUTLINED_FUNCTION_13_28(v4);
  v5[6] = &unk_1DD0ECD08;
  v5[7] = 0;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCCFDBDC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1DCCFDC6C;

  return sub_1DCC453B4();
}

uint64_t sub_1DCCFDC6C()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v5 = v4;
  v6 = *v1;
  *(*v1 + 32) = v0;

  if (!v0)
  {
    *(v6 + 40) = v3;
    *(v6 + 48) = v5;
  }

  OUTLINED_FUNCTION_152();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCCFDD94()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4] != 0;
  v4 = OUTLINED_FUNCTION_19_21();
  sub_1DCCFD6B4(v7, v6, v4, v5, v1, v3);
  sub_1DCD00AD8(v2, v1, v3);
  v8 = v0[1];

  return v8();
}

uint64_t sub_1DCCFDE30()
{
  v1 = *(v0 + 32);
  v2 = OUTLINED_FUNCTION_19_21();
  sub_1DCCFD6B4(v5, v4, v2, v3, 0, v1 != 0);
  sub_1DCD00AD8(v1, 0, v1 != 0);
  v6 = *(v0 + 8);

  return v6();
}

void sub_1DCCFDEE0()
{
  OUTLINED_FUNCTION_26_13();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v1);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v2, v3);
  v4 = OUTLINED_FUNCTION_27_1();
  __swift_storeEnumTagSinglePayload(v0, 1, 1, v4);
  OUTLINED_FUNCTION_136();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_28_13(v5);
}

void sub_1DCCFDFEC()
{
  OUTLINED_FUNCTION_20_10();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  OUTLINED_FUNCTION_20_0(v1);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v2, v3);
  OUTLINED_FUNCTION_15_3();
  sub_1DCCFD064((v0 + 80));
}

void sub_1DCCFE108()
{
  OUTLINED_FUNCTION_20_10();
  OUTLINED_FUNCTION_25_10();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v6);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_15_3();
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  *(v9 + 24) = v3;
  v10 = sub_1DD0DE4BC();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v10);
  OUTLINED_FUNCTION_136();
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v0;
  v11[5] = v9;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCCFE1F0(id a1, uint64_t a2, char a3, void (*a4)(uint64_t *))
{
  v5 = a1;
  if (a3)
  {
    LOBYTE(__dst[0]) = 1;
    v6 = a1;
    v7 = 1;
  }

  else
  {
    __src[0] = a1;
    __src[1] = a2;
    sub_1DCCFE2D8(__src, __dst);
    v7 = 0;
    v5 = __dst[0];
    v11 = *&__dst[1];
    v12 = *&__dst[3];
    v13 = *&__dst[5];
    v14 = *&__dst[7];
  }

  __src[0] = v5;
  *&__src[1] = v11;
  *&__src[3] = v12;
  *&__src[5] = v13;
  *&__src[7] = v14;
  LOBYTE(__src[9]) = v7;
  a4(__src);
  memcpy(__dst, __src, 0x49uLL);
  return sub_1DCB16D50(__dst, &unk_1ECCA3260, &unk_1DD0E5AD0);
}

double sub_1DCCFE2D8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28D0, &unk_1DD0E40C0);
  OUTLINED_FUNCTION_136();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1DD0E07C0;
  *(v5 + 32) = v4;
  *(v5 + 40) = v3;
  OUTLINED_FUNCTION_136();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1DD0E07C0;
  *(v6 + 32) = v4;
  *(v6 + 40) = v3;
  swift_bridgeObjectRetain_n();
  v7 = sub_1DD0DE38C();
  v7[2] = 1;
  v7[4] = 0;
  v7[5] = 0xE000000000000000;

  v8 = sub_1DCB73048(0xD000000000000010, 0x80000001DD119A90, v7, v6, v5);

  *a2 = 0xD000000000000010;
  *(a2 + 8) = 0x80000001DD119A90;
  v9 = MEMORY[0x1E69E7CC8];
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = v5;
  *(a2 + 40) = v6;
  result = 0.0;
  *(a2 + 48) = xmmword_1DD0E1E40;
  *(a2 + 64) = v7;
  return result;
}

void sub_1DCCFE42C()
{
  OUTLINED_FUNCTION_26_13();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v0);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v1, v2);
  v3 = OUTLINED_FUNCTION_12_8();
  OUTLINED_FUNCTION_11_6(v3);
  OUTLINED_FUNCTION_136();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_13_28(v4);
  sub_1DD0DCF8C();
}

void sub_1DCCFE4EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v1);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v2, v3);
  v4 = OUTLINED_FUNCTION_27_1();
  __swift_storeEnumTagSinglePayload(v0, 1, 1, v4);
  OUTLINED_FUNCTION_136();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_28_13(v5);
}

uint64_t *sub_1DCCFE594@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = result[4];
  if (v5[2])
  {
    v8 = result[5];
    v10 = *result;
    v9 = result[1];
    v12 = v5[4];
    v11 = v5[5];

    MEMORY[0x1E12A6780](a2, a3);

    MEMORY[0x1E12A6780](32, 0xE100000000000000);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA28D0, &unk_1DD0E40C0);
    OUTLINED_FUNCTION_136();
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1DD0E07C0;
    *(v13 + 32) = v12;
    *(v13 + 40) = v11;
    v14 = sub_1DCB72FB0(0, 0xE000000000000000, *(v8 + 16));

    v15 = sub_1DCB73048(v10, v9, v14, v8, v13);

    *a4 = v10;
    *(a4 + 8) = v9;
    v16 = MEMORY[0x1E69E7CC8];
    *(a4 + 16) = v15;
    *(a4 + 24) = v16;
    *(a4 + 32) = v13;
    *(a4 + 40) = v8;
    *(a4 + 48) = xmmword_1DD0E1E40;
    *(a4 + 64) = v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DCCFE710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  v7 = sub_1DCCF9278();
  OUTLINED_FUNCTION_34(&type metadata for DucFailure, v7);
  OUTLINED_FUNCTION_1_48();
  v8 = a6();
  OUTLINED_FUNCTION_9_30(v8, v9, v10, v11, v12, v13, v14, v15, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28);
  return sub_1DCB16D50(v29, &unk_1ECCA3260, &unk_1DD0E5AD0);
}

uint64_t sub_1DCCFE778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void))
{
  v8 = sub_1DCCF9278();
  OUTLINED_FUNCTION_34(&type metadata for DucFailure, v8);
  OUTLINED_FUNCTION_1_48();
  v9 = a7();
  OUTLINED_FUNCTION_9_30(v9, v10, v11, v12, v13, v14, v15, v16, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);
  return sub_1DCB16D50(v30, &unk_1ECCA3260, &unk_1DD0E5AD0);
}

void sub_1DCCFE7E0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a3;
  v52 = a4;
  v44 = &v51;

  v6 = sub_1DCCFFD40(0x7FFFFFFFFFFFFFFFLL, 1, sub_1DCD00108, v43, a1, a2);
  v7 = *(v6 + 16);
  if (v7)
  {
    v55 = MEMORY[0x1E69E7CC0];
    sub_1DCB38954();
    v8 = 0;
    v9 = v55;
    v10 = v6 + 56;
    v39 = v7;
    v40 = v6;
    while (v8 < *(v6 + 16))
    {
      v11 = *(v10 - 24);
      v12 = *(v10 - 16);
      swift_bridgeObjectRetain_n();
      v13 = OUTLINED_FUNCTION_16_21();
      if (v14)
      {
        v15 = v12;
      }

      else
      {
        v15 = v13;
      }

      if (v15 >> 14 < v11 >> 14)
      {
        goto LABEL_18;
      }

      v41 = v8;
      v42 = v9;
      v16 = OUTLINED_FUNCTION_29_13(v11, v15);
      v18 = v17;
      v20 = v19;
      v22 = v21;

      v51 = v16;
      v52 = v18;
      v53 = v20;
      v54 = v22;
      sub_1DCD00128();
      v23 = sub_1DD0DEA2C();
      v25 = v24;

      v26 = OUTLINED_FUNCTION_16_21();
      if (v27)
      {
        v26 = v12;
      }

      if (v12 >> 14 < v26 >> 14)
      {
        goto LABEL_19;
      }

      v28 = OUTLINED_FUNCTION_29_13(v26, v12);
      v30 = v29;
      v32 = v31;
      v34 = v33;

      v49 = v23;
      v50 = v25;
      v45 = v28;
      v46 = v30;
      v47 = v32;
      v48 = v34;
      sub_1DCB59970();

      sub_1DD0DE11C();

      v35 = v49;
      v36 = v50;
      v9 = v42;
      v55 = v42;
      v37 = *(v42 + 16);
      if (v37 >= *(v42 + 24) >> 1)
      {
        sub_1DCB38954();
        v9 = v55;
      }

      v8 = v41 + 1;
      *(v9 + 16) = v37 + 1;
      v38 = v9 + 16 * v37;
      *(v38 + 32) = v35;
      *(v38 + 40) = v36;
      v10 += 32;
      v6 = v40;
      if (v39 == v41 + 1)
      {

        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {

    v9 = MEMORY[0x1E69E7CC0];
LABEL_16:
    v51 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2758, &unk_1DD0E6880);
    sub_1DCB38974();
    sub_1DD0DDF6C();
  }
}

uint64_t DucTemplatingService.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));
  return v0;
}

uint64_t DucTemplatingService.__deallocating_deinit()
{
  DucTemplatingService.deinit();
  OUTLINED_FUNCTION_17_17();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCCFF704@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1BD8, &unk_1DD0E6A20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD0E07C0;
  *(inited + 32) = 0x65756C6176;
  *(inited + 40) = 0xE500000000000000;
  sub_1DCB0DF6C(v1 + 32, inited + 48);
  v4 = sub_1DD0DDE9C();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAABA0, &unk_1DD0E3FC0);
  *(a1 + 24) = result;
  *a1 = v4;
  *(a1 + 56) = 0;
  return result;
}

uint64_t sub_1DCCFF7C8()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_1DCCFF868()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_4(v1);
  OUTLINED_FUNCTION_152();

  return sub_1DCF68290();
}

uint64_t sub_1DCCFF8F4()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_4(v1);
  OUTLINED_FUNCTION_152();

  return sub_1DCF696F0();
}

uint64_t sub_1DCCFF998()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_4(v1);
  OUTLINED_FUNCTION_152();

  return sub_1DD01F588();
}

uint64_t sub_1DCCFFA24()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  v1[1] = sub_1DCB4A548;

  return sub_1DCCBFBD8();
}

uint64_t sub_1DCCFFAF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_211();
  v37 = v24;
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_5();
  v25 = swift_task_alloc();
  v26 = OUTLINED_FUNCTION_11_0(v25);
  *v26 = v27;
  OUTLINED_FUNCTION_0_4(v26);
  OUTLINED_FUNCTION_152();

  return sub_1DCD033B0(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, v22, v23, v37, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_1DCCFFB7C()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_4(v1);
  OUTLINED_FUNCTION_152();

  return sub_1DCDAF2DC();
}

uint64_t sub_1DCCFFC28()
{
  OUTLINED_FUNCTION_211();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_5();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_0_4(v1);
  OUTLINED_FUNCTION_152();

  return sub_1DCDAF034();
}

uint64_t sub_1DCCFFCB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_211();
  v37 = v24;
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_3_5();
  v25 = swift_task_alloc();
  v26 = OUTLINED_FUNCTION_11_0(v25);
  *v26 = v27;
  OUTLINED_FUNCTION_0_4(v26);
  OUTLINED_FUNCTION_152();

  return sub_1DCD033B0(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, v22, v23, v37, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_1DCCFFD40(uint64_t a1, char a2, uint64_t (*a3)(void *), uint64_t a4, uint64_t a5, unint64_t a6)
{
  v50 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v11 = a5;
  v14 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v15 = HIBYTE(a6) & 0xF) : (v15 = a5 & 0xFFFFFFFFFFFFLL), !v15))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v14 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v14 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v7 = sub_1DD0DE1EC();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    sub_1DCE195B4();
    v16 = v33;
    v9 = *(v33 + 16);
    v34 = *(v33 + 24);
LABEL_37:
    v10 = v9 + 1;
    if (v9 < v34 >> 1)
    {
LABEL_38:
      *(v16 + 16) = v10;
      v38 = (v16 + 32 * v9);
      v38[4] = v7;
      v38[5] = v11;
      v38[6] = v12;
      v38[7] = v13;
      return v16;
    }

LABEL_41:
    sub_1DCE195B4();
    v16 = v39;
    goto LABEL_38;
  }

  v7 = a4;
  v16 = 4 * v15;
  v48 = MEMORY[0x1E69E7CC0];
  v17 = 15;
  while (1)
  {
    v46 = v17;
    while (1)
    {
      v13 = v17 >> 14;
      if (v17 >> 14 == v16)
      {
        v17 = v46;
        goto LABEL_30;
      }

      v18 = sub_1DD0DE1CC();
      v12 = v19;
      v49[0] = v18;
      v49[1] = v19;
      v20 = v50(v49);
      if (v8)
      {

        return v16;
      }

      v21 = v20;

      if (v21)
      {
        break;
      }

      v17 = sub_1DD0DE0DC();
    }

    v23 = (v46 >> 14 == v13) & a2;
    if (v23)
    {
      goto LABEL_20;
    }

    if (v13 < v46 >> 14)
    {
      break;
    }

    v47 = sub_1DD0DE1EC();
    v42 = v25;
    v43 = v24;
    v41 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1DCE195B4();
      v48 = v28;
    }

    v13 = *(v48 + 16);
    v12 = v13 + 1;
    if (v13 >= *(v48 + 24) >> 1)
    {
      sub_1DCE195B4();
      v48 = v29;
    }

    *(v48 + 16) = v12;
    v27 = (v48 + 32 * v13);
    v27[4] = v47;
    v27[5] = v43;
    v27[6] = v42;
    v27[7] = v41;
LABEL_20:
    v17 = sub_1DD0DE0DC();
    if ((v23 & 1) == 0 && *(v48 + 16) == a1)
    {
LABEL_30:
      if (v17 >> 14 == v16 && (a2 & 1) != 0)
      {

        return v48;
      }

      if (v16 < v17 >> 14)
      {
        __break(1u);
      }

      else
      {
        v7 = sub_1DD0DE1EC();
        v11 = v35;
        v12 = v36;
        v13 = v37;

        v16 = v48;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_36:
          v9 = *(v16 + 16);
          v34 = *(v16 + 24);
          goto LABEL_37;
        }
      }

      sub_1DCE195B4();
      v16 = v40;
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1DCD00128()
{
  result = qword_1ECCA4828;
  if (!qword_1ECCA4828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4828);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DucFailure(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DCD00A84()
{
  result = qword_1ECCA4830;
  if (!qword_1ECCA4830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4830);
  }

  return result;
}

void sub_1DCD00AD8(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_1DCD00AE8()
{
  result = qword_1ECCA4838;
  if (!qword_1ECCA4838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4838);
  }

  return result;
}

unint64_t sub_1DCD00B3C()
{
  result = qword_1ECCA8EF0;
  if (!qword_1ECCA8EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA8EF0);
  }

  return result;
}

void sub_1DCD00B90(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, char a10)
{
  if (a10)
  {
  }

  else
  {

    sub_1DCB409A8(a7, a8);
  }
}

uint64_t sub_1DCD00C6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3260, &unk_1DD0E5AD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t EnableTCCAction.hashValue.getter()
{
  v1 = *v0;
  sub_1DD0DF1DC();
  MEMORY[0x1E12A7840](v1);
  return sub_1DD0DF20C();
}

unint64_t sub_1DCD00DB0()
{
  result = qword_1ECCA4840;
  if (!qword_1ECCA4840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4840);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EnableTCCAction(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DCD00EF4()
{
  sub_1DD0DEC1C();

  swift_getErrorValue();
  v0 = sub_1DD0DF18C();
  MEMORY[0x1E12A6780](v0);

  return 0xD000000000000012;
}

uint64_t sub_1DCD00F88(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = swift_unknownObjectRetain();
  return sub_1DCD01008(v3, v2);
}

uint64_t sub_1DCD01008(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return swift_unknownObjectRelease();
}

void *ErrorAction.error.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void *ErrorAction.__allocating_init(_:)(uint64_t a1)
{
  result = swift_allocObject();
  result[2] = 0;
  result[3] = 0;
  result[4] = a1;
  return result;
}

void *ErrorAction.init(_:)(uint64_t a1)
{
  v1[2] = 0;
  v1[3] = 0;
  v1[4] = a1;
  return v1;
}

uint64_t sub_1DCD010F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*(v4 + 16) + 32);
  swift_willThrow();
  v6 = v5;
  v7 = *(v4 + 8);

  return v7();
}

uint64_t ErrorAction.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t ErrorAction.__deallocating_deinit()
{
  ErrorAction.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1DCD011C8(uint64_t a1)
{
  result = sub_1DCD01304(&qword_1ECCA4848, &protocol conformance descriptor for ErrorAction);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DCD01234()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCB193FC;

  return sub_1DCD010D0();
}

uint64_t sub_1DCD012C0(uint64_t a1)
{
  result = sub_1DCD01304(&qword_1ECCA4850, &protocol conformance descriptor for ErrorAction);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DCD01304(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ErrorAction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t dispatch thunk of ErrorAction.run()()
{
  v4 = (*(*v0 + 136) + **(*v0 + 136));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1DCB193FC;

  return v4();
}

void sub_1DCD01548()
{
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7(&qword_1EDE48CE8);
  }

  v1 = qword_1EDE57D40;
  v2 = type metadata accessor for CATTemplateExecutor();
  v0[5] = v2;
  v0[6] = &off_1F58563F0;
  v0[2] = v1;
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD01650()
{
  OUTLINED_FUNCTION_44();
  v4 = v3;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v4 + 64) = v0;

  if (!v0)
  {
    *(v4 + 72) = v1;
  }

  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DCD01760()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[1];
  v2 = v0[9];

  return v1(v2);
}

uint64_t sub_1DCD017C4()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

void sub_1DCD0183C()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[25];
  v2 = sub_1DD0DDE9C();
  sub_1DCD01E78(v1, (v0 + 7));
  if (v0[10])
  {
    OUTLINED_FUNCTION_4_46();
  }

  sub_1DCD01EE8((v0 + 7));
  v0[26] = v2;
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7(&qword_1EDE48CE8);
  }

  v3 = qword_1EDE57D40;
  v4 = type metadata accessor for CATTemplateExecutor();
  v0[15] = v4;
  v0[16] = &off_1F58563F0;
  v0[12] = v3;
  __swift_project_boxed_opaque_existential_1(v0 + 12, v4);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD019BC()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_44();
  v4 = v3;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v4 + 224) = v0;

  if (!v0)
  {
    *(v4 + 232) = v1;
  }

  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DCD01AEC()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  v1 = v0[1];
  v2 = v0[29];

  return v1(v2);
}

uint64_t sub_1DCD01B50()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  v1 = *(v0 + 8);

  return v1();
}

void sub_1DCD01BC8()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[25];
  v2 = sub_1DD0DDE9C();
  sub_1DCD01E78(v1, (v0 + 7));
  if (v0[10])
  {
    OUTLINED_FUNCTION_4_46();
  }

  sub_1DCD01EE8((v0 + 7));
  v0[26] = v2;
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7(&qword_1EDE48CE8);
  }

  v3 = qword_1EDE57D40;
  v4 = type metadata accessor for CATTemplateExecutor();
  v0[15] = v4;
  v0[16] = &off_1F58563F0;
  v0[12] = v3;
  __swift_project_boxed_opaque_existential_1(v0 + 12, v4);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD01D48()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_44();
  v4 = v3;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_13_0();
  *v7 = v6;
  *(v4 + 224) = v0;

  if (!v0)
  {
    *(v4 + 232) = v1;
  }

  OUTLINED_FUNCTION_101();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DCD01E78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8AB0, &qword_1DD0E23E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DCD01EE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8AB0, &qword_1DD0E23E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void ErrorResponses.init()(uint64_t *a1@<X8>)
{
  if (qword_1EDE48CE8 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDE57D40;
  a1[3] = type metadata accessor for CATTemplateExecutor();
  a1[4] = &off_1F58563F0;
  *a1 = v2;

  sub_1DD0DCF8C();
}

uint64_t ErrorResponses.errorInApp(deviceState:catOverrides:)(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCD01FF4()
{
  OUTLINED_FUNCTION_39();
  v1 = sub_1DD0DDE9C();
  OUTLINED_FUNCTION_10_30(v1, v2, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  if (*(v0 + 80))
  {
    OUTLINED_FUNCTION_4_46();
  }

  sub_1DCB16D50(v0 + 56, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  OUTLINED_FUNCTION_4_47();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_31(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_5_41(v4);
  OUTLINED_FUNCTION_8_3();

  return sub_1DCC6FD30(v6, v7, v8, v9);
}

uint64_t sub_1DCD02118()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t ErrorResponses.appLaunchFailed(deviceState:catOverrides:)(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCD02248()
{
  OUTLINED_FUNCTION_39();
  v1 = sub_1DD0DDE9C();
  OUTLINED_FUNCTION_10_30(v1, v2, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  if (*(v0 + 80))
  {
    OUTLINED_FUNCTION_4_46();
  }

  sub_1DCB16D50(v0 + 56, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  OUTLINED_FUNCTION_4_47();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_31(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_5_41(v4);
  OUTLINED_FUNCTION_8_3();

  return sub_1DCC6FD30(v6, v7, v8, v9);
}

uint64_t ErrorResponses.noAppsFound(deviceState:shouldSuggestStoreSearch:catOverrides:)(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 232) = a3;
  *(v4 + 240) = v3;
  *(v4 + 280) = a2;
  *(v4 + 224) = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCD02388()
{
  OUTLINED_FUNCTION_39();
  v1 = sub_1DD0DDE9C();
  OUTLINED_FUNCTION_10_30(v1, v2, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  if (*(v0 + 80))
  {
    OUTLINED_FUNCTION_4_46();
  }

  sub_1DCB16D50(v0 + 56, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  v3 = *(v0 + 240);
  v4 = *(v0 + 280);
  *(v0 + 120) = MEMORY[0x1E69E6370];
  *(v0 + 96) = v4;
  sub_1DCB20B30((v0 + 96), (v0 + 128));
  swift_isUniquelyReferenced_nonNull_native();
  sub_1DCC60044();
  *(v0 + 248) = v1;
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v5 = swift_task_alloc();
  *(v0 + 256) = v5;
  *v5 = v0;
  v5[1] = sub_1DCD02540;
  OUTLINED_FUNCTION_8_3();

  return sub_1DCC6FD30(v6, v7, v8, v9);
}

uint64_t sub_1DCD02540(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v4 + 264) = v1;

  if (v1)
  {
    v7 = sub_1DCD026A0;
  }

  else
  {
    *(v4 + 272) = a1;
    v7 = sub_1DCD02684;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t ErrorResponses.appDoesNotSupportIntent(appDisplayInfo:catOverrides:)(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  v3[13] = swift_task_alloc();
  v4 = sub_1DD0DD23C();
  v3[14] = v4;
  v3[15] = *(v4 - 8);
  v3[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCD027B4, 0, 0);
}

uint64_t sub_1DCD027B4()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  sub_1DCB28B08(*(v0 + 80), v1, &qword_1ECCA8EE0, &unk_1DD0ECCD0);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_1DCB16D50(*(v0 + 104), &qword_1ECCA8EE0, &unk_1DD0ECCD0);
    v3 = MEMORY[0x1E69E7CC8];
  }

  else
  {
    v5 = *(v0 + 120);
    v4 = *(v0 + 128);
    v6 = *(v0 + 112);
    (*(v5 + 32))(v4, *(v0 + 104), v6);
    *(v0 + 16) = sub_1DD0DD21C();
    *(v0 + 40) = MEMORY[0x1E69E6158];
    *(v0 + 24) = v7;
    sub_1DCB20B30((v0 + 16), (v0 + 48));
    v3 = MEMORY[0x1E69E7CC8];
    swift_isUniquelyReferenced_nonNull_native();
    sub_1DCC60044();
    (*(v5 + 8))(v4, v6);
  }

  *(v0 + 136) = v3;
  __swift_project_boxed_opaque_existential_1(*(v0 + 96), *(*(v0 + 96) + 24));
  v8 = swift_task_alloc();
  *(v0 + 144) = v8;
  *v8 = v0;
  v8[1] = sub_1DCD02974;
  v9 = *(v0 + 88);

  return sub_1DCC6FD30(16, v3, 0, v9);
}

uint64_t sub_1DCD02974(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_27();
  *v6 = v5;
  *(v4 + 152) = v1;

  if (v1)
  {
    v7 = sub_1DCD02B2C;
  }

  else
  {
    *(v4 + 160) = a1;
    v7 = sub_1DCD02AB8;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1DCD02AB8()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 160);

  return v1(v2);
}

uint64_t sub_1DCD02B2C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t ErrorResponses.appNotFoundOnDevice(deviceState:catOverrides:)(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCD02BB4()
{
  OUTLINED_FUNCTION_39();
  v1 = sub_1DD0DDE9C();
  OUTLINED_FUNCTION_10_30(v1, v2, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  if (*(v0 + 80))
  {
    OUTLINED_FUNCTION_4_46();
  }

  sub_1DCB16D50(v0 + 56, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  OUTLINED_FUNCTION_4_47();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_31(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_5_41(v4);
  OUTLINED_FUNCTION_8_3();

  return sub_1DCC6FD30(v6, v7, v8, v9);
}

uint64_t ErrorResponses.targetDeviceIncompatible(deviceState:catOverrides:)(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCD02CF0()
{
  OUTLINED_FUNCTION_39();
  v1 = sub_1DD0DDE9C();
  OUTLINED_FUNCTION_10_30(v1, v2, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  if (*(v0 + 80))
  {
    OUTLINED_FUNCTION_4_46();
  }

  sub_1DCB16D50(v0 + 56, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  OUTLINED_FUNCTION_4_47();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_31(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_5_41(v4);
  OUTLINED_FUNCTION_8_3();

  return sub_1DCC6FD30(v6, v7, v8, v9);
}

uint64_t sub_1DCD02E28(uint64_t a1, char a2)
{
  *(v3 + 48) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1DCD02E40()
{
  OUTLINED_FUNCTION_39();
  v1 = sub_1DD0DDE9C();
  *(v0 + 32) = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 40) = v2;
  *v2 = v3;
  v2[1] = sub_1DCD02F20;
  v4 = *(v0 + 16);
  v5 = *(v0 + 48);

  return sub_1DCF66E08(v4, v5, v1, 0);
}

uint64_t sub_1DCD02F20()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  OUTLINED_FUNCTION_29();

  return v3();
}

void static ErrorTemplates.appDoesNotSupportIntent(appDisplayInfo:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  v7 = OUTLINED_FUNCTION_99(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7, v12);
  v14 = &v26 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v15);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v26 - v18;
  v20 = sub_1DD0DE4BC();
  OUTLINED_FUNCTION_7_5(v19, v21, v22, v20);
  sub_1DCB28B08(a1, v14, &qword_1ECCA8EE0, &unk_1DD0ECCD0);
  v23 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  sub_1DCD0506C(v14, v24 + v23);
  v25 = (v24 + ((v11 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v25 = a2;
  v25[1] = a3;
  sub_1DD0DCF8C();
}

void static ErrorTemplates.noAppsFound(deviceState:shouldSuggestStoreSearch:_:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v8);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v20[-v11 - 8];
  v13 = sub_1DD0DE4BC();
  OUTLINED_FUNCTION_7_5(v12, v14, v15, v13);
  sub_1DCB28B08(a1, v20, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  v16 = swift_allocObject();
  OUTLINED_FUNCTION_24_19(v16);
  *(v17 + 64) = v18;
  *(v17 + 72) = a2;
  *(v17 + 80) = a3;
  *(v17 + 88) = a4;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD03318()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1BD8, &unk_1DD0E6A20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD0E07C0;
  strcpy((inited + 32), "responseMode");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = 0;
  *(inited + 56) = 0xE000000000000000;
  result = sub_1DD0DDE9C();
  qword_1ECCA4858 = result;
  return result;
}

uint64_t sub_1DCD033B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_42();
  v22[22] = v23;
  v22[23] = v24;
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v22[24] = v25;
  *v25 = v26;
  v25[1] = sub_1DCD03440;

  return static ErrorTemplates.genericError()((v22 + 12));
}

uint64_t sub_1DCD03440()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 200) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCD03538()
{
  v5 = v0;
  OUTLINED_FUNCTION_34_4();
  v1 = *(v0 + 176);
  memcpy(v4, (v0 + 16), 0x49uLL);
  v1(v4);
  sub_1DCB16D50(v0 + 16, &unk_1ECCA3260, &unk_1DD0E5AD0);
  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DCD035D0()
{
  v6 = v0;
  v1 = *(v0 + 200);
  *(v0 + 208) = 1;
  *(v0 + 16) = v1;
  *(v0 + 88) = 1;
  v2 = *(v0 + 176);
  memcpy(__dst, (v0 + 16), 0x49uLL);
  v2(__dst);
  sub_1DCB16D50(v0 + 16, &unk_1ECCA3260, &unk_1DD0E5AD0);
  OUTLINED_FUNCTION_29();

  return v3();
}

void sub_1DCD03690()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7(&qword_1EDE48CE8);
  }

  v1 = qword_1EDE57D40;
  v2 = type metadata accessor for CATTemplateExecutor();
  v0[5] = v2;
  v0[6] = &off_1F58563F0;
  v0[2] = v1;
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_1DCD0377C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 72) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCD03874()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCD038D0()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_29();

  return v1();
}

void sub_1DCD0394C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v5);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v14 - v8;
  v10 = sub_1DD0DE4BC();
  OUTLINED_FUNCTION_7_5(v9, v11, v12, v10);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a1;
  v13[5] = a2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD03A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 216) = a4;
  *(v5 + 224) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1DCD03A40, 0, 0);
}

void sub_1DCD03A40()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7(&qword_1EDE48CE8);
  }

  v1 = qword_1EDE57D40;
  v2 = type metadata accessor for CATTemplateExecutor();
  v0[25] = v2;
  v0[26] = &off_1F58563F0;
  v0[22] = v1;
  __swift_project_boxed_opaque_existential_1(v0 + 22, v2);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD03BA0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v3 + 256) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1DCD03CC0()
{
  v5 = v0;
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 22);
  OUTLINED_FUNCTION_34_4();
  v1 = v0[27];
  memcpy(v4, v0 + 2, 0x49uLL);
  v1(v4);
  sub_1DCB16D50((v0 + 2), &unk_1ECCA3260, &unk_1DD0E5AD0);
  OUTLINED_FUNCTION_29();

  return v2();
}

uint64_t sub_1DCD03D60()
{
  v6 = v0;
  v1 = *(v0 + 256);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 176));
  *(v0 + 264) = 1;
  *(v0 + 16) = v1;
  *(v0 + 88) = 1;
  v2 = *(v0 + 216);
  memcpy(__dst, (v0 + 16), 0x49uLL);
  v2(__dst);
  sub_1DCB16D50(v0 + 16, &unk_1ECCA3260, &unk_1DD0E5AD0);
  OUTLINED_FUNCTION_29();

  return v3();
}

void sub_1DCD03E28()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7(&qword_1EDE48CE8);
  }

  v1 = qword_1EDE57D40;
  v2 = type metadata accessor for CATTemplateExecutor();
  v0[5] = v2;
  v0[6] = &off_1F58563F0;
  v0[2] = v1;
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD03F80()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 88) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCD040B8()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_29();

  return v1();
}

void sub_1DCD04134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v7);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v19[-v10 - 8];
  v12 = sub_1DD0DE4BC();
  OUTLINED_FUNCTION_7_5(v11, v13, v14, v12);
  sub_1DCB28B08(a1, v19, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  v15 = swift_allocObject();
  OUTLINED_FUNCTION_24_19(v15);
  v16[8] = v17;
  v16[9] = a2;
  v16[10] = a3;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD04230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[22] = a5;
  v6[23] = a6;
  v8 = swift_task_alloc();
  v6[24] = v8;
  *v8 = v6;
  v8[1] = sub_1DCD042D0;

  return static ErrorTemplates.errorInApp(deviceState:)((v6 + 12), a4);
}

uint64_t sub_1DCD042D0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 200) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t static ErrorTemplates.errorInApp(deviceState:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 200) = a1;
  *(v2 + 208) = a2;
  return OUTLINED_FUNCTION_0_2();
}

void sub_1DCD043DC()
{
  OUTLINED_FUNCTION_33();
  v1 = sub_1DD0DDE9C();
  OUTLINED_FUNCTION_10_30(v1, v2, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  if (*(v0 + 80))
  {
    OUTLINED_FUNCTION_4_46();
  }

  sub_1DCB16D50(v0 + 56, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  *(v0 + 216) = v1;
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7(&qword_1EDE48CE8);
  }

  v3 = type metadata accessor for CATTemplateExecutor();
  OUTLINED_FUNCTION_18_22(v3, v3, &off_1F58563F0);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD0458C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 240) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCD046C4()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCD04720()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCD0479C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[22] = a5;
  v6[23] = a6;
  v8 = swift_task_alloc();
  v6[24] = v8;
  *v8 = v6;
  v8[1] = sub_1DCD042D0;

  return static ErrorTemplates.appLaunchFailed(deviceState:)((v6 + 12), a4);
}

uint64_t static ErrorTemplates.appLaunchFailed(deviceState:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 200) = a1;
  *(v2 + 208) = a2;
  return OUTLINED_FUNCTION_0_2();
}

void sub_1DCD04850()
{
  OUTLINED_FUNCTION_33();
  v1 = sub_1DD0DDE9C();
  OUTLINED_FUNCTION_10_30(v1, v2, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  if (*(v0 + 80))
  {
    OUTLINED_FUNCTION_4_46();
  }

  sub_1DCB16D50(v0 + 56, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  *(v0 + 216) = v1;
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7(&qword_1EDE48CE8);
  }

  v3 = type metadata accessor for CATTemplateExecutor();
  OUTLINED_FUNCTION_18_22(v3, v3, &off_1F58563F0);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD04A00()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 240) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCD04B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = a5;
  v7[22] = a6;
  v7[23] = a7;
  v10 = swift_task_alloc();
  v7[24] = v10;
  *v10 = v7;
  v10[1] = sub_1DCD042D0;

  return static ErrorTemplates.noAppsFound(deviceState:shouldSuggestStoreSearch:)((v7 + 12), a4, v8);
}

uint64_t static ErrorTemplates.noAppsFound(deviceState:shouldSuggestStoreSearch:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 312) = a3;
  *(v3 + 264) = a1;
  *(v3 + 272) = a2;
  return OUTLINED_FUNCTION_0_2();
}

void sub_1DCD04BF8()
{
  OUTLINED_FUNCTION_33();
  v1 = sub_1DD0DDE9C();
  OUTLINED_FUNCTION_10_30(v1, v2, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  if (*(v0 + 80))
  {
    OUTLINED_FUNCTION_4_46();
  }

  sub_1DCB16D50(v0 + 56, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  v3 = *(v0 + 312);
  *(v0 + 160) = MEMORY[0x1E69E6370];
  *(v0 + 136) = v3;
  sub_1DCB20B30((v0 + 136), (v0 + 168));
  swift_isUniquelyReferenced_nonNull_native();
  sub_1DCC60044();
  *(v0 + 280) = v1;
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7(&qword_1EDE48CE8);
  }

  v4 = qword_1EDE57D40;
  v5 = type metadata accessor for CATTemplateExecutor();
  *(v0 + 120) = v5;
  *(v0 + 128) = &off_1F58563F0;
  *(v0 + 96) = v4;
  __swift_project_boxed_opaque_existential_1((v0 + 96), v5);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD04E38()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 304) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCD04F70()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCD04FCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[22] = a5;
  v6[23] = a6;
  v7 = swift_task_alloc();
  v6[24] = v7;
  *v7 = v6;
  v7[1] = sub_1DCD042D0;

  return static ErrorTemplates.appDoesNotSupportIntent(appDisplayInfo:)();
}

uint64_t sub_1DCD0506C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DCD050DC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  OUTLINED_FUNCTION_99(v1);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_1DCB4AE1C;
  OUTLINED_FUNCTION_26_14();

  return sub_1DCD04FCC(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1DCD05210()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_11_0(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_3_50(v5);

  return sub_1DCD04B38(v7, v8, v9, v10, v1, v2, v3);
}

uint64_t static ErrorTemplates.appDoesNotSupportIntent(appDisplayInfo:)()
{
  OUTLINED_FUNCTION_42();
  v0[15] = v1;
  v0[16] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  OUTLINED_FUNCTION_20_0(v3);
  v0[17] = swift_task_alloc();
  v4 = sub_1DD0DD23C();
  v0[18] = v4;
  OUTLINED_FUNCTION_99(v4);
  v0[19] = v5;
  v0[20] = swift_task_alloc();
  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1DCD053AC()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 128);
  v4 = MEMORY[0x1E69E6158];
  v5 = sub_1DD0DDE9C();
  sub_1DCB28B08(v3, v2, &qword_1ECCA8EE0, &unk_1DD0ECCD0);
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    sub_1DCB16D50(*(v0 + 136), &qword_1ECCA8EE0, &unk_1DD0ECCD0);
  }

  else
  {
    v7 = *(v0 + 152);
    v6 = *(v0 + 160);
    v8 = *(v0 + 144);
    (*(v7 + 32))(v6, *(v0 + 136), v8);
    *(v0 + 56) = sub_1DD0DD21C();
    *(v0 + 80) = v4;
    *(v0 + 64) = v9;
    sub_1DCB20B30((v0 + 56), (v0 + 88));
    swift_isUniquelyReferenced_nonNull_native();
    sub_1DCC60044();
    (*(v7 + 8))(v6, v8);
  }

  *(v0 + 168) = v5;
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7(&qword_1EDE48CE8);
  }

  v10 = qword_1EDE57D40;
  v11 = type metadata accessor for CATTemplateExecutor();
  *(v0 + 40) = v11;
  *(v0 + 48) = &off_1F58563F0;
  *(v0 + 16) = v10;
  __swift_project_boxed_opaque_existential_1((v0 + 16), v11);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD05610()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 192) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCD05748()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCD057BC()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCD05830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[22] = a5;
  v6[23] = a6;
  v8 = swift_task_alloc();
  v6[24] = v8;
  *v8 = v6;
  v8[1] = sub_1DCD042D0;

  return static ErrorTemplates.appNotFoundOnDevice(deviceState:)((v6 + 12), a4);
}

uint64_t sub_1DCD058D0()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_21_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_50(v1);
  OUTLINED_FUNCTION_26_14();

  return sub_1DCD05830(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1DCD05968()
{
  OUTLINED_FUNCTION_33();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_11_0(v3);
  *v4 = v5;
  v4[1] = sub_1DCB4AE1C;
  v6 = OUTLINED_FUNCTION_8_1();

  return sub_1DCD03A20(v6, v7, v8, v2, v1);
}

uint64_t sub_1DCD05A10()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_21_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_50(v1);
  OUTLINED_FUNCTION_26_14();

  return sub_1DCD04230(v3, v4, v5, v6, v7, v8);
}

uint64_t static ErrorTemplates.appNotFoundOnDevice(deviceState:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 200) = a1;
  *(v2 + 208) = a2;
  return OUTLINED_FUNCTION_0_2();
}

void sub_1DCD05ABC()
{
  OUTLINED_FUNCTION_33();
  v1 = sub_1DD0DDE9C();
  OUTLINED_FUNCTION_10_30(v1, v2, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  if (*(v0 + 80))
  {
    OUTLINED_FUNCTION_4_46();
  }

  sub_1DCB16D50(v0 + 56, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  *(v0 + 216) = v1;
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7(&qword_1EDE48CE8);
  }

  v3 = type metadata accessor for CATTemplateExecutor();
  OUTLINED_FUNCTION_18_22(v3, v3, &off_1F58563F0);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCD05C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[22] = a5;
  v6[23] = a6;
  v8 = swift_task_alloc();
  v6[24] = v8;
  *v8 = v6;
  v8[1] = sub_1DCD042D0;

  return static ErrorTemplates.targetDeviceIncompatible(deviceState:)((v6 + 12), a4);
}

uint64_t static ErrorTemplates.targetDeviceIncompatible(deviceState:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 200) = a1;
  *(v2 + 208) = a2;
  return OUTLINED_FUNCTION_0_2();
}

void sub_1DCD05D40()
{
  OUTLINED_FUNCTION_33();
  v1 = sub_1DD0DDE9C();
  OUTLINED_FUNCTION_10_30(v1, v2, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  if (*(v0 + 80))
  {
    OUTLINED_FUNCTION_4_46();
  }

  sub_1DCB16D50(v0 + 56, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  *(v0 + 216) = v1;
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7(&qword_1EDE48CE8);
  }

  v3 = type metadata accessor for CATTemplateExecutor();
  OUTLINED_FUNCTION_18_22(v3, v3, &off_1F58563F0);
  sub_1DD0DCF8C();
}

void sub_1DCD05F04()
{
  OUTLINED_FUNCTION_39();
  if (qword_1EDE48CE8 != -1)
  {
    OUTLINED_FUNCTION_1_7(&qword_1EDE48CE8);
  }

  v1 = qword_1EDE57D40;
  v2 = type metadata accessor for CATTemplateExecutor();
  v0[5] = v2;
  v0[6] = &off_1F58563F0;
  v0[2] = v1;
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  OUTLINED_FUNCTION_27_0();
}

uint64_t sub_1DCD05FF0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 72) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCD060E8()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_21_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_50(v1);
  OUTLINED_FUNCTION_26_14();

  return sub_1DCD0479C(v3, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_11Tm()
{
  swift_unknownObjectRelease();
  if (*(v0 + 56))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  }

  return swift_deallocObject();
}

uint64_t sub_1DCD061D0()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_21_15();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_11_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_50(v1);
  OUTLINED_FUNCTION_26_14();

  return sub_1DCD05C8C(v3, v4, v5, v6, v7, v8);
}

_BYTE *storeEnumTagSinglePayload for ErrorTemplates(_BYTE *result, int a2, int a3)
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

uint64_t sub_1DCD0632C(uint64_t a1, uint64_t a2)
{
  swift_getErrorValue();
  DynamicType = swift_getDynamicType();
  swift_getErrorValue();
  if (DynamicType != swift_getDynamicType())
  {
    goto LABEL_19;
  }

  swift_getErrorValue();
  v3 = sub_1DD0DF18C();
  v5 = v4;
  swift_getErrorValue();
  if (v3 == sub_1DD0DF18C() && v5 == v6)
  {
  }

  else
  {
    v8 = sub_1DD0DF0AC();

    if ((v8 & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  v9 = sub_1DD0DADFC();
  v10 = sub_1DD0DADFC();
  v11 = [v9 domain];
  v12 = sub_1DD0DDFBC();
  v14 = v13;

  v15 = [v10 domain];
  v16 = sub_1DD0DDFBC();
  v18 = v17;

  if (v12 == v16 && v14 == v18)
  {
  }

  else
  {
    v20 = sub_1DD0DF0AC();

    if ((v20 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  v21 = [v9 code];
  if (v21 != [v10 code])
  {
LABEL_18:

LABEL_19:
    v25 = 0;
    return v25 & 1;
  }

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v23 = OUTLINED_FUNCTION_0_44(v22);
  OUTLINED_FUNCTION_0_44(v23);
  v25 = 1;

  return v25 & 1;
}

uint64_t ErrorWithCodeConcept.conceptType.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

void *ErrorWithCodeConcept.__allocating_init(app:errorCode:intent:intentResponse:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[7] = 0xD000000000000013;
  result[8] = 0x80000001DD119C30;
  result[6] = a5;
  return result;
}

void *ErrorWithCodeConcept.init(app:errorCode:intent:intentResponse:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = a3;
  v5[5] = a4;
  v5[7] = 0xD000000000000013;
  v5[8] = 0x80000001DD119C30;
  v5[6] = a5;
  return v5;
}

uint64_t ErrorWithCodeConcept.deinit()
{

  return v0;
}

uint64_t ErrorWithCodeConcept.__deallocating_deinit()
{
  ErrorWithCodeConcept.deinit();

  return swift_deallocClassInstance();
}

uint64_t InterruptionPolicy.hashValue.getter()
{
  v1 = *v0;
  sub_1DD0DF1DC();
  MEMORY[0x1E12A7840](v1);
  return sub_1DD0DF20C();
}

uint64_t ExecutionContext.init(outputPublisher:aceServiceInvoker:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  sub_1DCAFF9E8(a1, a3);

  return sub_1DCAFF9E8(a2, a3 + 40);
}

unint64_t sub_1DCD06894()
{
  result = qword_1ECCA4860;
  if (!qword_1ECCA4860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4860);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for InterruptionPolicy(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t dispatch thunk of Executable.execute(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1DCB193FC;

  return v9(a1, a2, a3);
}

void SiriEnvironment.aceServiceContext.getter()
{
  type metadata accessor for AceServiceContextProvider();
  OUTLINED_FUNCTION_8_37();
  sub_1DCD0ED60(v0, v1, v2, &protocol conformance descriptor for AceServiceContextProvider);
  OUTLINED_FUNCTION_45_9();

  sub_1DD0DCA7C();
}

uint64_t sub_1DCD06BB8(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t AceServiceContextProvider.init(storage:)(uint64_t a1)
{

  *(v1 + 16) = 1;
  return v1;
}

uint64_t sub_1DCD06C68@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for AceServiceContextProvider();
  result = sub_1DD0DDAFC();
  *a2 = result;
  return result;
}

void sub_1DCD06CEC(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DD0DCF8C();
}

void sub_1DCD06D8C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4890, &qword_1DD0ED3E8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DD0DCF8C();
}

void sub_1DCD06E30(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  sub_1DCD070D4(v3, v4);
  sub_1DCD06E94(v3, v4, a1);

  sub_1DCD070F8(v3, v4);
}

void sub_1DCD06E94(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  switch(a2)
  {
    case 1:
      *a3 = a1;
      v4 = 2;
      goto LABEL_13;
    case 2:
      *a3 = a1;
      *(a3 + 8) = 0;

      goto LABEL_5;
    case 3:
      switch(a1)
      {
        case 1uLL:
          v14 = 1;
          goto LABEL_18;
        case 2uLL:
          *a3 = 3;
          *(a3 + 8) = 3;
          return;
        case 4uLL:
          v14 = 4;
LABEL_18:
          *a3 = v14;
          goto LABEL_19;
        default:
          if (qword_1EDE4F900 != -1)
          {
            OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
          }

          v6 = sub_1DD0DD8FC();
          OUTLINED_FUNCTION_92(v6, qword_1EDE57E00);
          sub_1DCD070D4(a1, 3u);
          v7 = sub_1DD0DD8EC();
          v8 = sub_1DD0DE6EC();
          sub_1DCD070F8(a1, 3u);
          if (os_log_type_enabled(v7, v8))
          {
            v9 = OUTLINED_FUNCTION_151();
            v10 = OUTLINED_FUNCTION_83();
            v16 = v10;
            *v9 = 136315138;
            sub_1DCD070D4(a1, 3u);
            v11 = sub_1DD0DE02C();
            v13 = sub_1DCB10E9C(v11, v12, &v16);

            *(v9 + 4) = v13;
            _os_log_impl(&dword_1DCAFC000, v7, v8, "ExecuteRemoteFlow exit value being read, but we're still in-progress in state=%s", v9, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v10);
            OUTLINED_FUNCTION_92_0();
            OUTLINED_FUNCTION_80();
          }

          *a3 = 0;
LABEL_19:
          *(a3 + 8) = 3;
          break;
      }

      return;
    default:
      *a3 = a1;
      v4 = 1;
LABEL_13:
      *(a3 + 8) = v4;

LABEL_5:
      v5 = a1;
      return;
  }
}

id sub_1DCD070D4(id result, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
    return result;
  }

  return result;
}

void sub_1DCD070F8(id a1, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
  }
}

void ExecuteOnRemoteFlow.__allocating_init(device:outputPublisher:executeOnRemoteFlowStrategy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = OUTLINED_FUNCTION_73_1(v4);
  ExecuteOnRemoteFlow.init(device:outputPublisher:executeOnRemoteFlowStrategy:)(v7, a2, a3);
}

void ExecuteOnRemoteFlow.init(device:outputPublisher:executeOnRemoteFlowStrategy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_15_29();
  type metadata accessor for Input(0);
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  swift_getKeyPath();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4878, &qword_1DD0ED358);
  OUTLINED_FUNCTION_73_1(v7);
  OUTLINED_FUNCTION_19_23();
}

void ExecuteOnRemoteFlow.init(device:outputPublisher:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_29();
  type metadata accessor for Input(0);
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  swift_getKeyPath();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4878, &qword_1DD0ED358);
  OUTLINED_FUNCTION_73_1(v6);
  OUTLINED_FUNCTION_19_23();
}

_BYTE *ExecuteOnRemoteFlowStrategy.__allocating_init(shouldFallbackOnAWDL:shouldSendSpeechPackage:shouldOutputErrorDialog:)(char a1, char a2, char a3)
{
  result = OUTLINED_FUNCTION_98_4(v3);
  result[16] = a1;
  result[17] = a2;
  result[18] = a3;
  return result;
}

void ExecuteOnRemoteFlow.__allocating_init(inputToExecute:device:outputPublisher:executeOnRemoteFlowStrategy:)()
{
  OUTLINED_FUNCTION_65_1();
  OUTLINED_FUNCTION_52_1();
  ExecuteOnRemoteFlow.init(inputToExecute:device:outputPublisher:executeOnRemoteFlowStrategy:)();
}

void ExecuteOnRemoteFlow.init(inputToExecute:device:outputPublisher:executeOnRemoteFlowStrategy:)()
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_79_4();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1DA0, &qword_1DD0ED3F0);
  OUTLINED_FUNCTION_20_0(v0);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v1, v2);
  OUTLINED_FUNCTION_15_29();
  v3 = type metadata accessor for Input(0);
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v3);
  swift_getKeyPath();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4878, &qword_1DD0ED358);
  OUTLINED_FUNCTION_73_1(v7);
  OUTLINED_FUNCTION_19_23();
}

void ExecuteOnRemoteFlow.__allocating_init(inputToExecute:device:outputPublisher:)()
{
  OUTLINED_FUNCTION_65_1();
  v0 = OUTLINED_FUNCTION_48_1();
  ExecuteOnRemoteFlow.init(inputToExecute:device:outputPublisher:)(v0);
}

void ExecuteOnRemoteFlow.init(inputToExecute:device:outputPublisher:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1DA0, &qword_1DD0ED3F0);
  OUTLINED_FUNCTION_20_0(v1);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v2, v3);
  OUTLINED_FUNCTION_15_29();
  v4 = type metadata accessor for Input(0);
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v4);
  swift_getKeyPath();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4878, &qword_1DD0ED358);
  OUTLINED_FUNCTION_73_1(v8);
  OUTLINED_FUNCTION_19_23();
}

void ExecuteOnRemoteFlow.__allocating_init(inputToExecute:device:outputPublisher:shouldSendSpeechPackage:)()
{
  OUTLINED_FUNCTION_65_1();
  OUTLINED_FUNCTION_52_1();
  ExecuteOnRemoteFlow.init(inputToExecute:device:outputPublisher:shouldSendSpeechPackage:)();
}

void ExecuteOnRemoteFlow.init(inputToExecute:device:outputPublisher:shouldSendSpeechPackage:)()
{
  OUTLINED_FUNCTION_50();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1DA0, &qword_1DD0ED3F0);
  OUTLINED_FUNCTION_20_0(v0);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v1, v2);
  OUTLINED_FUNCTION_15_29();
  v3 = type metadata accessor for Input(0);
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v3);
  swift_getKeyPath();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4878, &qword_1DD0ED358);
  OUTLINED_FUNCTION_73_1(v7);
  OUTLINED_FUNCTION_19_23();
}

void ExecuteOnRemoteFlow.__allocating_init(inputToExecute:device:shouldFallbackOnAWDL:outputPublisher:)()
{
  OUTLINED_FUNCTION_65_1();
  OUTLINED_FUNCTION_52_1();
  ExecuteOnRemoteFlow.init(inputToExecute:device:shouldFallbackOnAWDL:outputPublisher:)();
}

void ExecuteOnRemoteFlow.init(inputToExecute:device:shouldFallbackOnAWDL:outputPublisher:)()
{
  OUTLINED_FUNCTION_50();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1DA0, &qword_1DD0ED3F0);
  OUTLINED_FUNCTION_20_0(v0);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v1, v2);
  OUTLINED_FUNCTION_15_29();
  v3 = type metadata accessor for Input(0);
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v3);
  swift_getKeyPath();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4878, &qword_1DD0ED358);
  OUTLINED_FUNCTION_73_1(v7);
  OUTLINED_FUNCTION_19_23();
}

void ExecuteOnRemoteFlow.init(inputToExecute:device:outputPublisher:aceService:deviceState:executeOnRemoteFlowStrategy:)()
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_79_4();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1DA0, &qword_1DD0ED3F0);
  OUTLINED_FUNCTION_20_0(v0);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v1, v2);
  OUTLINED_FUNCTION_15_29();
  v3 = type metadata accessor for Input(0);
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v3);
  swift_getKeyPath();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4878, &qword_1DD0ED358);
  OUTLINED_FUNCTION_73_1(v7);
  OUTLINED_FUNCTION_19_23();
}

void ExecuteOnRemoteFlow.init(inputToExecute:device:outputPublisher:aceService:deviceState:)()
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_79_4();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1DA0, &qword_1DD0ED3F0);
  OUTLINED_FUNCTION_20_0(v0);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v1, v2);
  OUTLINED_FUNCTION_15_29();
  v3 = type metadata accessor for Input(0);
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v3);
  swift_getKeyPath();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4878, &qword_1DD0ED358);
  OUTLINED_FUNCTION_73_1(v7);
  OUTLINED_FUNCTION_19_23();
}

uint64_t sub_1DCD08B14(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1DA0, &qword_1DD0ED3F0);
  OUTLINED_FUNCTION_20_0(v3);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v19[-v6 - 8];
  if (*(v1 + 24) != 3)
  {
    return 0;
  }

  v8 = *(v1 + 16);
  if (v8 != 3 && v8 != 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_1_49();
  sub_1DCD0ECAC(a1, v7, v10);
  type metadata accessor for Input(0);
  v11 = 1;
  OUTLINED_FUNCTION_40_1();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  v16 = OBJC_IVAR____TtC11SiriKitFlow19ExecuteOnRemoteFlow_inputToExecute;
  OUTLINED_FUNCTION_5_35(v1 + OBJC_IVAR____TtC11SiriKitFlow19ExecuteOnRemoteFlow_inputToExecute, v19);
  sub_1DCD0E344(v7, v1 + v16);
  swift_endAccess();
  return v11;
}

void sub_1DCD08C04()
{
  OUTLINED_FUNCTION_42();
  v1[52] = v2;
  v1[53] = v0;
  v3 = type metadata accessor for ExecuteOnRemotePayload(0);
  v1[54] = v3;
  OUTLINED_FUNCTION_20_0(v3);
  v1[55] = OUTLINED_FUNCTION_38();
  v4 = type metadata accessor for IdentifiedUser(0);
  v1[56] = v4;
  OUTLINED_FUNCTION_20_0(v4);
  v1[57] = OUTLINED_FUNCTION_38();
  sub_1DD0DD53C();
}

uint64_t sub_1DCD098D8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCD099D8()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 512);
  v2 = *(v0 + 424);

  OUTLINED_FUNCTION_0_45();
  sub_1DCD0ED08(v1, v3);
  OUTLINED_FUNCTION_108_2(*(v2 + 16), 4);
  OUTLINED_FUNCTION_17_18();

  OUTLINED_FUNCTION_29();

  return v4();
}

uint64_t sub_1DCD09A8C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 568) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCD0A0D8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_27();
  *v5 = v4;
  *(v6 + 600) = v0;

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCD0A1D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_230();
  a19 = v23;
  a20 = v24;
  a18 = v20;
  v25 = *(v20 + 352);
  v26 = v25;
  v27 = sub_1DD0DD8EC();
  v28 = sub_1DD0DE6DC();
  sub_1DCB51C9C(v25);
  if (os_log_type_enabled(v27, v28))
  {
    OUTLINED_FUNCTION_151();
    v22 = OUTLINED_FUNCTION_109();
    a9 = v22;
    *v21 = 136315138;
    v29 = [v26 description];
    v30 = sub_1DD0DDFBC();
    v32 = v31;

    sub_1DCB51C9C(v25);
    v33 = sub_1DCB10E9C(v30, v32, &a9);

    *(v21 + 4) = v33;
    _os_log_impl(&dword_1DCAFC000, v27, v28, "ExecuteOnRemoteFlow: Got response from SAExecuteOnRemoteRequest: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    OUTLINED_FUNCTION_14_3();
    OUTLINED_FUNCTION_80();
  }

  if ([v26 topicSwitchDetected])
  {
    v34 = sub_1DD0DD8EC();
    v35 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_5(v35))
    {
      v36 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_167(v36);
      OUTLINED_FUNCTION_15_8();
      _os_log_impl(v37, v38, v39, v40, v41, 2u);
      OUTLINED_FUNCTION_92_0();
    }

    OUTLINED_FUNCTION_9_32();
    v42 = *(v20 + 416);

    OUTLINED_FUNCTION_4_48();
    sub_1DCD0ED08(v22, v44);
    v45 = OUTLINED_FUNCTION_20_15();
    v46(v45);
    OUTLINED_FUNCTION_0_45();
    sub_1DCD0ED08(v26, v47);
    OUTLINED_FUNCTION_46_11();
    v48 = type metadata accessor for ExecuteResponse(0);
    type metadata accessor for PluginAction(0);
    OUTLINED_FUNCTION_31();
    __swift_storeEnumTagSinglePayload(v49, v50, v51, v52);
    *v42 = 3;
    *(v42 + 8) = 0;
    *(v42 + 24) = 0;
    *(v42 + 16) = 0;
    *(v42 + 32) = xmmword_1DD0ED300;
LABEL_7:
    *(v42 + 48) = 0x80;
    v53 = (v42 + *(v48 + 40));
    *v53 = 0u;
    v53[1] = 0u;
    goto LABEL_19;
  }

  if ([v26 needsUserInput])
  {
    v54 = sub_1DD0DD8EC();
    v55 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_5(v55))
    {
      v56 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_167(v56);
      OUTLINED_FUNCTION_15_8();
      _os_log_impl(v57, v58, v59, v60, v61, 2u);
      OUTLINED_FUNCTION_92_0();
    }

    OUTLINED_FUNCTION_9_32();

    sub_1DCB51C9C(v25);
    OUTLINED_FUNCTION_4_48();
    sub_1DCD0ED08(v22, v63);
    v64 = OUTLINED_FUNCTION_20_15();
    v65(v64);
    OUTLINED_FUNCTION_0_45();
    sub_1DCD0ED08(v26, v66);
    OUTLINED_FUNCTION_99_2();
  }

  else
  {
    v67 = [v26 needsServerExecution];
    v68 = sub_1DD0DD8EC();
    v69 = sub_1DD0DE6DC();
    v70 = OUTLINED_FUNCTION_5(v69);
    if (v67)
    {
      if (v70)
      {
        v71 = OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_167(v71);
        OUTLINED_FUNCTION_15_8();
        _os_log_impl(v72, v73, v74, v75, v76, 2u);
        OUTLINED_FUNCTION_92_0();
      }

      OUTLINED_FUNCTION_9_32();
      v42 = *(v20 + 416);

      OUTLINED_FUNCTION_4_48();
      sub_1DCD0ED08(v22, v78);
      v79 = OUTLINED_FUNCTION_20_15();
      v80(v79);
      OUTLINED_FUNCTION_0_45();
      sub_1DCD0ED08(v26, v81);
      OUTLINED_FUNCTION_46_11();
      v48 = type metadata accessor for ExecuteResponse(0);
      type metadata accessor for PluginAction(0);
      OUTLINED_FUNCTION_31();
      __swift_storeEnumTagSinglePayload(v82, v83, v84, v85);
      *v42 = 3;
      *(v42 + 8) = 0;
      *(v42 + 16) = 0;
      *(v42 + 32) = 0;
      *(v42 + 40) = 0;
      *(v42 + 24) = 0;
      goto LABEL_7;
    }

    if (v70)
    {
      v86 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_167(v86);
      OUTLINED_FUNCTION_15_8();
      _os_log_impl(v87, v88, v89, v90, v91, 2u);
      OUTLINED_FUNCTION_92_0();
    }

    OUTLINED_FUNCTION_9_32();

    OUTLINED_FUNCTION_4_48();
    sub_1DCD0ED08(v22, v93);
    v94 = OUTLINED_FUNCTION_20_15();
    v95(v94);
    OUTLINED_FUNCTION_0_45();
    sub_1DCD0ED08(v26, v96);
    OUTLINED_FUNCTION_46_11();
    static ExecuteResponse.complete()();
  }

LABEL_19:
  OUTLINED_FUNCTION_17_18();

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_117();

  return v98(v97, v98, v99, v100, v101, v102, v103, v104, a9, a10, a11, a12);
}

uint64_t sub_1DCD0A620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_230();
  a19 = v24;
  a20 = v25;
  a18 = v21;
  v26 = *(v21 + 600);
  *(v21 + 384) = v26;
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_12;
  }

  v20 = *(v21 + 368);
  *(v21 + 608) = v20;
  v28 = *(v21 + 376);
  if (v28 != 1)
  {
    sub_1DCB6DE90(v20, v28);
LABEL_12:
    v44 = *(v21 + 600);
    *(v21 + 392) = v44;
    v45 = v44;
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_18;
    }

    v46 = sub_1DD0DD8EC();
    sub_1DD0DE6DC();
    OUTLINED_FUNCTION_8_5();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v48);
      OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v49, v50, "ExecuteOnRemoteFlow: Received BargeInError during EOR flow, silencing it");
      OUTLINED_FUNCTION_62();
    }

    v51 = *(v21 + 600);
    OUTLINED_FUNCTION_9_32();

    OUTLINED_FUNCTION_4_48();
    sub_1DCD0ED08(v23, v53);
    v54 = OUTLINED_FUNCTION_20_15();
    v55(v54);
    OUTLINED_FUNCTION_0_45();
    sub_1DCD0ED08(v20, v56);
    OUTLINED_FUNCTION_99_2();
    OUTLINED_FUNCTION_17_18();

    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_117();

    return v58(v57, v58, v59, v60, v61, v62, v63, v64, a9, a10, a11, a12);
  }

  v29 = v20;
  v30 = sub_1DD0DD8EC();
  v31 = sub_1DD0DE6EC();
  if (OUTLINED_FUNCTION_75(v31))
  {
    OUTLINED_FUNCTION_151();
    v32 = OUTLINED_FUNCTION_109();
    a9 = v32;
    *v22 = 136315138;
    v33 = sub_1DCB28184(v29, &selRef_reason);
    if (v34)
    {
      v35 = v34;
    }

    else
    {
      v33 = 0x3E6C696E3CLL;
      v35 = 0xE500000000000000;
    }

    v36 = sub_1DCB10E9C(v33, v35, &a9);

    *(v22 + 4) = v36;
    _os_log_impl(&dword_1DCAFC000, v30, v31, "ExecuteOnRemoteFlow: Error submitting SAExecuteOnRemoteRequest: Received SACommandFailed: reason='%s'", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    OUTLINED_FUNCTION_80();
    OUTLINED_FUNCTION_80();
  }

  v37 = sub_1DCB28184(v29, &selRef_reason);
  if (!v38 || (v39 = sub_1DCBBFDB4(v37, v38), , v39 == 6))
  {
    v40 = OUTLINED_FUNCTION_86_1();
    sub_1DCB6DE90(v40, v41);
    v42 = OUTLINED_FUNCTION_86_1();
    sub_1DCB6DE90(v42, v43);
LABEL_18:
    v66 = *(v21 + 600);
    v67 = v66;
    v68 = sub_1DD0DD8EC();
    v69 = sub_1DD0DE6EC();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = *(v21 + 600);
      v71 = OUTLINED_FUNCTION_151();
      v72 = OUTLINED_FUNCTION_83();
      a9 = v72;
      *v71 = 136315138;
      *(v21 + 408) = v70;
      v73 = v70;
      v74 = sub_1DD0DE02C();
      v76 = sub_1DCB10E9C(v74, v75, &a9);

      *(v71 + 4) = v76;
      OUTLINED_FUNCTION_15_8();
      _os_log_impl(v77, v78, v79, v80, v81, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v72);
      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_92_0();
    }

    v82 = *(v21 + 600);
    v83 = *(v21 + 424);
    v84 = *(v83 + 16);
    *(v83 + 16) = v82;
    v85 = *(v83 + 24);
    *(v83 + 24) = 1;
    v86 = v82;
    sub_1DCD070F8(v84, v85);
    v87 = swift_task_alloc();
    *(v21 + 624) = v87;
    *v87 = v21;
    OUTLINED_FUNCTION_30_17(v87);
    OUTLINED_FUNCTION_117();

    return sub_1DCD0B9DC();
  }

  v89 = *(v21 + 600);
  v90 = *(v21 + 424);
  v91 = *(v90 + 16);
  *(v90 + 16) = v89;
  v92 = *(v90 + 24);
  *(v90 + 24) = 1;
  v93 = v89;
  sub_1DCD070F8(v91, v92);
  v94 = swift_task_alloc();
  *(v21 + 616) = v94;
  *v94 = v21;
  OUTLINED_FUNCTION_30_17(v94);
  OUTLINED_FUNCTION_117();

  return sub_1DCD0BC84(v95);
}

uint64_t sub_1DCD0AAB8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCD0AB9C()
{
  v3 = *(v1 + 608);
  v4 = *(v1 + 600);
  OUTLINED_FUNCTION_9_32();

  sub_1DCB6DE90(v3, 1u);
  sub_1DCB6DE90(v3, 1u);

  OUTLINED_FUNCTION_4_48();
  sub_1DCD0ED08(v2, v6);
  v7 = OUTLINED_FUNCTION_20_15();
  v8(v7);
  OUTLINED_FUNCTION_0_45();
  sub_1DCD0ED08(v0, v9);
  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_17_18();

  OUTLINED_FUNCTION_29();

  return v10();
}

uint64_t sub_1DCD0AC98()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCD0AD7C()
{
  v1 = *(v0 + 600);
  v2 = *(v0 + 512);
  v4 = *(v0 + 480);
  v3 = *(v0 + 488);
  v5 = *(v0 + 472);
  v6 = *(v0 + 440);

  OUTLINED_FUNCTION_4_48();
  sub_1DCD0ED08(v6, v7);
  (*(v4 + 8))(v3, v5);
  OUTLINED_FUNCTION_0_45();
  sub_1DCD0ED08(v2, v8);
  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_17_18();

  OUTLINED_FUNCTION_29();

  return v9();
}

uint64_t sub_1DCD0AE74()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCD0AF74()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[64];
  v2 = v0[53];
  (*(v0[60] + 8))(v0[61], v0[59]);
  OUTLINED_FUNCTION_0_45();
  sub_1DCD0ED08(v1, v3);
  OUTLINED_FUNCTION_108_2(*(v2 + 16), 2);
  OUTLINED_FUNCTION_17_18();

  OUTLINED_FUNCTION_29();

  return v4();
}

uint64_t sub_1DCD0B038()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCD0B11C()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 512);
  v2 = *(v0 + 424);
  sub_1DCD0E418();
  v3 = swift_allocError();
  OUTLINED_FUNCTION_0_45();
  sub_1DCD0ED08(v1, v4);
  v5 = *(v2 + 16);
  *(v2 + 16) = v3;
  v6 = *(v2 + 24);
  *(v2 + 24) = 0;
  sub_1DCD070F8(v5, v6);
  static ExecuteResponse.complete()();
  OUTLINED_FUNCTION_17_18();

  OUTLINED_FUNCTION_29();

  return v7();
}

uint64_t sub_1DCD0B1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DCD0B21C, 0, 0);
}

uint64_t sub_1DCD0B21C()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[2];
  v2 = objc_allocWithZone(MEMORY[0x1E69C7898]);
  v0[5] = sub_1DCD0E3B4(0xD00000000000001BLL, 0x80000001DD119EE0);
  __swift_project_boxed_opaque_existential_1((v1 + 72), *(v1 + 96));
  v3 = swift_task_alloc();
  v0[6] = v3;
  sub_1DCB10E5C(0, &qword_1EDE46210, 0x1E69C7738);
  *v3 = v0;
  v3[1] = sub_1DCD0B338;

  return AceServiceInvokerAsync.submitToRemote<A>(_:_:)();
}

uint64_t sub_1DCD0B338()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_27();
  *v7 = v6;
  *(v8 + 56) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCD0B43C()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCD0B498()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_29();

  return v1();
}

void sub_1DCD0B4F4(void **a1)
{
  v1 = *a1;
  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v2 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v2, qword_1EDE57E00);
  v3 = v1;
  oslog = sub_1DD0DD8EC();
  v4 = sub_1DD0DE6EC();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    v7 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    v8 = sub_1DD0DE02C();
    v10 = sub_1DCB10E9C(v8, v9, &v12);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_1DCAFC000, oslog, v4, "ExecuteOnRemoteFlow: Could not retrieve reference resolution entities: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1E12A8390](v6, -1, -1);
    MEMORY[0x1E12A8390](v5, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1DCD0B698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DCD0B6BC, 0, 0);
}

id sub_1DCD0B6BC()
{
  OUTLINED_FUNCTION_33();
  v1 = v0[9];
  sub_1DCB17CA0(v0[8] + 72, (v0 + 2));
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  result = [v1 remoteExecution];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = sub_1DCB643F4(result, &selRef_executionDeviceAssistantId);
  v0[10] = v3;
  if (!v3)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v4 = swift_task_alloc();
  v0[11] = v4;
  sub_1DCB10E5C(0, &qword_1ECCA48C8, 0x1E69C7888);
  *v4 = v0;
  v4[1] = sub_1DCD0B7F4;

  return AceServiceInvokerAsync.submitToRemote<A>(_:_:)();
}

uint64_t sub_1DCD0B7F4()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  OUTLINED_FUNCTION_32_1();
  v5 = v4;
  OUTLINED_FUNCTION_13_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_27();
  *v8 = v7;
  *(v5 + 96) = v0;

  if (!v0)
  {

    *(v5 + 104) = v3;
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1DCD0B90C()
{
  OUTLINED_FUNCTION_42();
  **(v0 + 56) = *(v0 + 104);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCD0B974()
{
  OUTLINED_FUNCTION_42();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_29();

  return v1();
}

uint64_t sub_1DCD0B9DC()
{
  *(v1 + 96) = v0;
  v2 = OUTLINED_FUNCTION_15_0();
  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

void sub_1DCD0BA04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_33();
  v15 = *(v14 + 96);
  v16 = *(v15 + OBJC_IVAR____TtC11SiriKitFlow19ExecuteOnRemoteFlow_definedErrorDialogsFeatureToggle + 24);
  v17 = *(v15 + OBJC_IVAR____TtC11SiriKitFlow19ExecuteOnRemoteFlow_definedErrorDialogsFeatureToggle + 32);
  __swift_project_boxed_opaque_existential_1((v15 + OBJC_IVAR____TtC11SiriKitFlow19ExecuteOnRemoteFlow_definedErrorDialogsFeatureToggle), v16);
  (*(v17 + 8))(v16, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1BD8, &unk_1DD0E6A20);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_13_29(inited, xmmword_1DD0E07C0);
  v19 = *(v15 + 64);
  v20 = OUTLINED_FUNCTION_74_5((v15 + 32));
  sub_1DCCDE224(v20, v19);
}

uint64_t sub_1DCD0BB88()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  OUTLINED_FUNCTION_29();

  return v3();
}

uint64_t sub_1DCD0BC84(char a1)
{
  *(v2 + 160) = v1;
  *(v2 + 185) = a1;
  v3 = OUTLINED_FUNCTION_15_0();
  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_1DCD0BCB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_230();
  a19 = v21;
  a20 = v22;
  a18 = v20;
  v23 = *(v20 + 160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1BD8, &unk_1DD0E6A20);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_13_29(inited, xmmword_1DD0E07C0);
  v25 = *(v23 + 64);
  v26 = OUTLINED_FUNCTION_74_5((v23 + 32));
  sub_1DCCDE224(v26, v25);
}

uint64_t sub_1DCD0C154()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v1 = *v0;
  OUTLINED_FUNCTION_27();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1DCD0C254()
{
  OUTLINED_FUNCTION_42();
  *(v1 + 240) = v2;
  *(v1 + 248) = v0;
  *(v1 + 312) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  OUTLINED_FUNCTION_20_0(v4);
  *(v1 + 256) = swift_task_alloc();
  *(v1 + 264) = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  OUTLINED_FUNCTION_20_0(v5);
  *(v1 + 272) = OUTLINED_FUNCTION_38();
  v6 = type metadata accessor for AceOutput(0);
  *(v1 + 280) = v6;
  OUTLINED_FUNCTION_20_0(v6);
  *(v1 + 288) = OUTLINED_FUNCTION_38();
  v7 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCD0C340()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 248);
  if (*(*(v1 + OBJC_IVAR____TtC11SiriKitFlow19ExecuteOnRemoteFlow_executeOnRemoteFlowStrategy) + 18))
  {
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC11SiriKitFlow19ExecuteOnRemoteFlow_catExecutor), *(v1 + OBJC_IVAR____TtC11SiriKitFlow19ExecuteOnRemoteFlow_catExecutor + 24));
    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    *(v0 + 296) = v2;
    *v2 = v3;
    v2[1] = sub_1DCD0C4E4;
    v4 = *(v0 + 240);
    v5 = *(v0 + 312);

    return sub_1DCF66E08(v0 + 16, v5, v4, 0);
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v7 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v7, qword_1EDE57E00);
    v8 = sub_1DD0DD8EC();
    sub_1DD0DE6DC();
    OUTLINED_FUNCTION_8_5();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v10);
      OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v11, v12, "ExecuteOnRemoteFlowStrategy disables error dialog output");
      OUTLINED_FUNCTION_62();
    }

    OUTLINED_FUNCTION_97_3();

    OUTLINED_FUNCTION_29();

    return v13();
  }
}

uint64_t sub_1DCD0C4E4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  v2 = *v1;
  OUTLINED_FUNCTION_27();
  *v3 = v2;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

void sub_1DCD0C5E8()
{
  v9 = v0;
  v1 = *(v0 + 248);
  memcpy((v0 + 88), (v0 + 16), 0x48uLL);
  memcpy(__dst, (v0 + 16), sizeof(__dst));
  __swift_project_boxed_opaque_existential_1((v1 + 32), *(v1 + 56));
  v2 = OUTLINED_FUNCTION_124();
  v3(v2);
  type metadata accessor for NLContextUpdate(0);
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  *(v0 + 192) = 0;
  *(v0 + 176) = 0u;
  *(v0 + 160) = 0u;
  static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
}

uint64_t sub_1DCD0C84C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_32_1();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_27();
  *v6 = v5;

  if (v0)
  {
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v3 + 200));
  }

  OUTLINED_FUNCTION_24();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1DCD0C960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_79();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_90();
  a20 = v22;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
  }

  v26 = *(v22 + 256);
  v25 = *(v22 + 264);
  v27 = sub_1DD0DD8FC();
  v28 = __swift_project_value_buffer(v27, qword_1EDE57E00);
  v29 = *(v27 - 8);
  (*(v29 + 16))(v25, v28, v27);
  OUTLINED_FUNCTION_40_1();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v27);
  sub_1DCB099BC(v25, v26, &unk_1ECCA7470, &qword_1DD0E16E0);
  v33 = OUTLINED_FUNCTION_86_1();
  if (__swift_getEnumTagSinglePayload(v33, v34, v27) == 1)
  {
    sub_1DCB0E9D8(*(v22 + 256), &unk_1ECCA7470, &qword_1DD0E16E0);
  }

  else
  {
    v35 = sub_1DD0DD8EC();
    v36 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_75(v36))
    {
      v37 = OUTLINED_FUNCTION_83();
      a11 = swift_slowAlloc();
      *v37 = 136315650;
      v38 = sub_1DD0DEC3C();
      v40 = sub_1DCB10E9C(v38, v39, &a11);

      *(v37 + 4) = v40;
      *(v37 + 12) = 2048;
      *(v37 + 14) = 478;
      *(v37 + 22) = 2080;
      *(v37 + 24) = sub_1DCB10E9C(0xD000000000000034, 0x80000001DD1164B0, &a11);
      _os_log_impl(&dword_1DCAFC000, v35, v36, "FatalError at %s:%lu - %s", v37, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_62();
    }

    (*(v29 + 8))(*(v22 + 256), v27);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)(0xD000000000000034, 0x80000001DD1164B0);
}

uint64_t sub_1DCD0CBE0()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_42_13();
  OUTLINED_FUNCTION_97_3();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t sub_1DCD0CC58()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_42_13();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 200));
  OUTLINED_FUNCTION_97_3();

  OUTLINED_FUNCTION_29();

  return v1();
}

void sub_1DCD0CCD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_50();
  a19 = v20;
  a20 = v21;
  v80[18] = sub_1DD0DB09C();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v22, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA48D0, &qword_1DD0ED790);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v24, v25);
  v80[24] = v80 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA48D8, &qword_1DD0ED798);
  v28 = OUTLINED_FUNCTION_20_0(v27);
  MEMORY[0x1EEE9AC00](v28, v29);
  OUTLINED_FUNCTION_10_2();
  v80[13] = v30 - v31;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v32, v33);
  OUTLINED_FUNCTION_33_2();
  v80[17] = v34;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v35, v36);
  v80[16] = v80 - v37;
  sub_1DD0DB07C();
  OUTLINED_FUNCTION_9();
  v80[15] = v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v80[10] = v80 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80[20] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA48E0, &qword_1DD0ED7A0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v42, v43);
  v80[23] = v80 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA48E8, &qword_1DD0ED7A8);
  v46 = OUTLINED_FUNCTION_20_0(v45);
  MEMORY[0x1EEE9AC00](v46, v47);
  OUTLINED_FUNCTION_10_2();
  v80[14] = v48 - v49;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v50, v51);
  OUTLINED_FUNCTION_33_2();
  v80[21] = v52;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v53, v54);
  v80[22] = v80 - v55;
  sub_1DD0DB0DC();
  OUTLINED_FUNCTION_9();
  v80[25] = v56;
  v80[26] = v57;
  MEMORY[0x1EEE9AC00](v56, v58);
  OUTLINED_FUNCTION_10_2();
  v80[12] = v59 - v60;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v61, v62);
  OUTLINED_FUNCTION_33_2();
  v80[11] = v63;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v64, v65);
  OUTLINED_FUNCTION_33_2();
  v80[19] = v66;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v67, v68);
  sub_1DD0DB0FC();
  OUTLINED_FUNCTION_9();
  v80[27] = v69;
  MEMORY[0x1EEE9AC00](v70, v71);
  OUTLINED_FUNCTION_10_2();
  v74 = MEMORY[0x1EEE9AC00](v72, v73);
  MEMORY[0x1EEE9AC00](v74, v75);
  OUTLINED_FUNCTION_33_2();
  v80[29] = v76;
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v77, v78);
  v80[28] = v80 - v79;
  sub_1DCD0DBCC();
}

uint64_t sub_1DCD0DA80()
{
  v2 = v0;
  v3 = [*(v0 + OBJC_IVAR____TtC11SiriKitFlow19ExecuteOnRemoteFlow_prefs) languageCode];
  if (v3)
  {
    v4 = v3;
    sub_1DD0DDFBC();

    return sub_1DD0DB05C();
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0(&qword_1EDE4F900);
    }

    v6 = sub_1DD0DD8FC();
    OUTLINED_FUNCTION_92(v6, qword_1EDE57E00);
    v7 = sub_1DD0DD8EC();
    v8 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_75(v8))
    {
      v9 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_167(v9);
      _os_log_impl(&dword_1DCAFC000, v7, v8, "Did not find Siri input language, defaulting to deviceState locale which can use fallback language/output language instead.", v1, 2u);
      OUTLINED_FUNCTION_92_0();
    }

    v10 = v2[8];
    __swift_project_boxed_opaque_existential_1(v2 + 4, v2[7]);
    v11 = OUTLINED_FUNCTION_52_1();
    return v12(v11, v10);
  }
}

void sub_1DCD0DBCC()
{
  type metadata accessor for IdentifiedUser(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v0, v1);
  OUTLINED_FUNCTION_10_2();
  v4 = MEMORY[0x1EEE9AC00](v2, v3);
  MEMORY[0x1EEE9AC00](v4, v5);
  sub_1DCD06CC8();
}

uint64_t ExecuteOnRemoteFlow.deinit()
{
  sub_1DCD070F8(*(v0 + 16), *(v0 + 24));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 72));
  sub_1DCB0E9D8(v0 + OBJC_IVAR____TtC11SiriKitFlow19ExecuteOnRemoteFlow_inputToExecute, &qword_1ECCA1DA0, &qword_1DD0ED3F0);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC11SiriKitFlow19ExecuteOnRemoteFlow_outputPublisher));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC11SiriKitFlow19ExecuteOnRemoteFlow_referenceResolutionClient));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC11SiriKitFlow19ExecuteOnRemoteFlow_catExecutor));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC11SiriKitFlow19ExecuteOnRemoteFlow_definedErrorDialogsFeatureToggle));

  return v0;
}

uint64_t ExecuteOnRemoteFlow.__deallocating_deinit()
{
  ExecuteOnRemoteFlow.deinit();

  return swift_deallocClassInstance();
}

void sub_1DCD0E0D8()
{
  OUTLINED_FUNCTION_42();
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_1DCB4AD3C;

  sub_1DCD08C04();
}

uint64_t ExecuteOnRemoteDeviceSpecification.hashValue.getter()
{
  sub_1DD0DF1DC();
  MEMORY[0x1E12A7840](0);
  return sub_1DD0DF20C();
}

uint64_t ExecuteOnRemoteFlowStrategy.init(shouldFallbackOnAWDL:shouldSendSpeechPackage:shouldOutputErrorDialog:)(char a1, char a2, char a3)
{
  v3[16] = a1;
  v3[17] = a2;
  v3[18] = a3;
  return OUTLINED_FUNCTION_96_2();
}

uint64_t sub_1DCD0E344(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1DA0, &qword_1DD0ED3F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_1DCD0E3B4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1DD0DDF8C();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithReason_];

  return v4;
}

unint64_t sub_1DCD0E418()
{
  result = qword_1ECCA4898;
  if (!qword_1ECCA4898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA4898);
  }

  return result;
}

uint64_t type metadata accessor for ExecuteOnRemoteFlow(uint64_t a1)
{
  result = qword_1ECCA48B0;
  if (!qword_1ECCA48B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DCD0E4D0(id a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    sub_1DCB2C520(a1, a2);
  }
}

uint64_t sub_1DCD0E530(uint64_t a1)
{
  result = sub_1DCD0ED60(&qword_1ECCA48A0, 255, type metadata accessor for ExecuteOnRemoteFlow, &protocol conformance descriptor for ExecuteOnRemoteFlow);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1DCD0E590()
{
  result = qword_1ECCA48A8;
  if (!qword_1ECCA48A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA48A8);
  }

  return result;
}

void sub_1DCD0E684(uint64_t a1)
{
  sub_1DCD0E9BC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of ExecuteOnRemoteFlow.execute()()
{
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v7 = (*(*v0 + 360) + **(*v0 + 360));
  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  *(v1 + 16) = v4;
  *v4 = v5;
  v4[1] = sub_1DCB4AD3C;

  return v7(v3);
}

void sub_1DCD0E9BC(uint64_t a1)
{
  if (!qword_1ECCA48C0)
  {
    type metadata accessor for Input(255);
    v1 = sub_1DD0DE97C();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECCA48C0);
    }
  }
}

id sub_1DCD0EA14(id result, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
    return result;
  }

  return result;
}

void sub_1DCD0EA48(id a1, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
  }
}

uint64_t assignWithTake for ExecuteOnRemoteFlowResult(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *a1;
  *a1 = *a2;
  v5 = *(a1 + 8);
  *(a1 + 8) = v3;
  sub_1DCD0EA48(v4, v5);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for ExecuteOnRemoteDeviceSpecification(_BYTE *result, int a2, int a3)
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

uint64_t *sub_1DCD0EBFC(uint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void, void), void (*a5)(uint64_t, uint64_t))
{
  v7 = *a2;
  v8 = *(a2 + 8);
  (a4)(*a2, v8, a3);
  v9 = *a1;
  *a1 = v7;
  v10 = *(a1 + 8);
  *(a1 + 8) = v8;
  a5(v9, v10);
  return a1;
}

uint64_t assignWithTake for ExecuteOnRemoteFlow.State(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *a1;
  *a1 = *a2;
  v5 = *(a1 + 8);
  *(a1 + 8) = v3;
  sub_1DCD070F8(v4, v5);
  return a1;
}

uint64_t sub_1DCD0ECAC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_33_1();
  v5(v4);
  return a2;
}

uint64_t sub_1DCD0ED08(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1DCD0ED60(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_68_7()
{
  v5 = (v1 + *(v3 + 20));
  *v5 = v0;
  v5[1] = v2;

  return type metadata accessor for ExecuteOnRemoteFlow(0);
}

uint64_t OUTLINED_FUNCTION_105_5()
{

  return sub_1DCB099BC(v3, v4 + v2, v0, v1);
}

void OUTLINED_FUNCTION_107_3()
{
  v2 = *(v0 - 264);
}

uint64_t ExecuteOnRemotePayload.init(input:rrData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1DCC333DC(a1, a4);
  result = type metadata accessor for ExecuteOnRemotePayload(0);
  v8 = (a4 + *(result + 20));
  *v8 = a2;
  v8[1] = a3;
  return result;
}

uint64_t type metadata accessor for ExecuteOnRemotePayload(uint64_t a1)
{
  result = qword_1EDE48270;
  if (!qword_1EDE48270)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void ExecuteOnRemotePayload.makeExecuteOnRemoteRequest(targetDeviceId:currentRequest:device:shouldSendSpeechPackage:)(uint64_t a1, void *a2, uint64_t a3, void *a4, int a5)
{
  v17 = a5;
  v19 = a2;
  v18 = a1;
  v20 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  OUTLINED_FUNCTION_10_2();
  MEMORY[0x1EEE9AC00](v7, v8);
  v16[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4908, &qword_1DD0ED838);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_10_2();
  v16[0] = v11 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  OUTLINED_FUNCTION_6_36(v16 - v15);
  sub_1DD0DD58C();
}

uint64_t ExecuteOnRemotePayload.rrData.getter()
{
  type metadata accessor for ExecuteOnRemotePayload(0);
  v0 = OUTLINED_FUNCTION_33_1();
  sub_1DCC91E6C(v0, v1);
  return OUTLINED_FUNCTION_33_1();
}

id sub_1DCD10120(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1DD0DDF8C();

  v4 = [v2 initWithIdentifier_];

  return v4;
}

uint64_t ExecuteOnRemotePayload.ExecuteOnRemotePayloadError.hashValue.getter()
{
  sub_1DD0DF1DC();
  MEMORY[0x1E12A7840](0);
  return sub_1DD0DF20C();
}

uint64_t sub_1DCD10338(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7475706E69 && a2 == 0xE500000000000000;
  if (v4 || (sub_1DD0DF0AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x617461447272 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD0DF0AC();

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

uint64_t sub_1DCD103F8(char a1)
{
  if (a1)
  {
    return 0x617461447272;
  }

  else
  {
    return 0x7475706E69;
  }
}

uint64_t sub_1DCD10480@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DCD10338(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DCD104A8(uint64_t a1)
{
  v2 = sub_1DCD11648();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DCD104E4(uint64_t a1)
{
  v2 = sub_1DCD11648();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ExecuteOnRemotePayload.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4928, &qword_1DD0ED850);
  OUTLINED_FUNCTION_9();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v17[-v10];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DCD11648();
  sub_1DD0DF24C();
  LOBYTE(v18) = 0;
  type metadata accessor for Input(0);
  OUTLINED_FUNCTION_3_52();
  sub_1DCD1169C(v12, v13);
  sub_1DD0DEFFC();
  if (!v2)
  {
    v14 = (v3 + *(type metadata accessor for ExecuteOnRemotePayload(0) + 20));
    v15 = v14[1];
    v18 = *v14;
    v19 = v15;
    v17[15] = 1;
    sub_1DCC91E6C(v18, v15);
    sub_1DCB51540();
    sub_1DD0DEFAC();
    sub_1DCB2C520(v18, v19);
  }

  return (*(v7 + 8))(v11, v5);
}

uint64_t ExecuteOnRemotePayload.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  type metadata accessor for Input(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4, v5);
  OUTLINED_FUNCTION_16();
  v26 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4938, &qword_1DD0ED858);
  OUTLINED_FUNCTION_9();
  v24 = v9;
  v25 = v8;
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v23 - v11;
  v13 = type metadata accessor for ExecuteOnRemotePayload(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v14, v15);
  OUTLINED_FUNCTION_16();
  v18 = v17 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DCD11648();
  sub_1DD0DF23C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v19 = v24;
  v20 = v18;
  LOBYTE(v27) = 0;
  sub_1DCD1169C(&qword_1ECCA4940, &protocol conformance descriptor for Input);
  v21 = v25;
  sub_1DD0DEF4C();
  sub_1DCC333DC(v26, v20);
  v28 = 1;
  sub_1DCB5414C();
  sub_1DD0DEEFC();
  (*(v19 + 8))(v12, v21);
  *(v20 + *(v13 + 20)) = v27;
  sub_1DCD116E0(v20, v23, type metadata accessor for ExecuteOnRemotePayload);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_1DCD136A8(v20, type metadata accessor for ExecuteOnRemotePayload);
}

void SAIntentGroupRunSiriKitExecutor.executeOnRemotePayload()(uint64_t a1@<X8>)
{
  v3 = [v1 parse];
  if (v3 && (v4 = v3, v18 = [v3 directInvocation], v4, v18))
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v5 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v5, qword_1EDE57E00);
    v6 = sub_1DD0DD8EC();
    v7 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_5(v7))
    {
      v8 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_14_1(v8);
      OUTLINED_FUNCTION_7_0(&dword_1DCAFC000, v9, v10, "Extracting ExecuteOnRemotePayload from RSKE command");
      OUTLINED_FUNCTION_52();
    }

    sub_1DCD10B88(a1);
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v11 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v11, qword_1EDE57E00);
    v12 = sub_1DD0DD8EC();
    v13 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_5(v13))
    {
      v14 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_14_1(v14);
      OUTLINED_FUNCTION_7_0(&dword_1DCAFC000, v15, v16, "Could not extract ExecuteOnRemotePayload: Parse has no directInvocation");
      OUTLINED_FUNCTION_52();
    }

    v17 = type metadata accessor for ExecuteOnRemotePayload(0);

    __swift_storeEnumTagSinglePayload(a1, 1, 1, v17);
  }
}

uint64_t sub_1DCD10B88@<X0>(uint64_t a1@<X8>)
{
  v56 = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for Input(0);
  v5 = MEMORY[0x1EEE9AC00](v3, v4);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v48 - v9;
  v11 = sub_1DCB3B800(v1);
  if (v12 >> 60 != 15)
  {
    v19 = v11;
    v20 = v12;
    v21 = objc_opt_self();
    v22 = sub_1DD0DAEFC();
    v54[0] = 0;
    v23 = [v21 propertyListWithData:v22 options:0 format:0 error:v54];

    if (!v23)
    {
      v25 = v54[0];
      v26 = sub_1DD0DAE0C();

      swift_willThrow();
      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v27 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v27, qword_1EDE57E00);
      v28 = sub_1DD0DD8EC();
      v29 = sub_1DD0DE6EC();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_1DCAFC000, v28, v29, "SAExecuteOnRemoteRequest Direct Invocation data is not a valid serialized property list", v30, 2u);
        MEMORY[0x1E12A8390](v30, -1, -1);
      }

      sub_1DCB2C520(v19, v20);

      goto LABEL_33;
    }

    v24 = v54[0];
    sub_1DD0DEA6C();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAABA0, &unk_1DD0E3FC0);
    if (swift_dynamicCast())
    {
      sub_1DCB90D40();
      if (v55)
      {
        if (swift_dynamicCast())
        {
          v50 = v52;
          v51 = v53;
          sub_1DCB90D40();

          if (v55)
          {
            if (swift_dynamicCast())
            {
              v48 = v53;
              v49 = v52;
LABEL_41:
              sub_1DD0DAC9C();
              swift_allocObject();
              sub_1DD0DAC8C();
              sub_1DCD1169C(&qword_1ECCA4940, &protocol conformance descriptor for Input);
              v45 = v50;
              sub_1DD0DAC7C();
              sub_1DCB2C520(v19, v20);
              sub_1DCB21A14(v45, v51);

              sub_1DCC333DC(v7, v10);
              sub_1DCC333DC(v10, a1);
              v37 = type metadata accessor for ExecuteOnRemotePayload(0);
              v46 = (a1 + *(v37 + 20));
              v47 = v48;
              *v46 = v49;
              v46[1] = v47;
              v38 = a1;
              v39 = 0;
              return __swift_storeEnumTagSinglePayload(v38, v39, 1, v37);
            }
          }

          else
          {
            sub_1DCB0E9D8(v54, &dword_1ECCA3CE0, &unk_1DD0E4F80);
          }

          if (qword_1EDE4F900 != -1)
          {
            swift_once();
          }

          v40 = sub_1DD0DD8FC();
          __swift_project_value_buffer(v40, qword_1EDE57E00);
          v41 = sub_1DD0DD8EC();
          v42 = sub_1DD0DE6EC();
          if (os_log_type_enabled(v41, v42))
          {
            v43 = swift_slowAlloc();
            v44 = swift_slowAlloc();
            v54[0] = v44;
            *v43 = 136315138;
            *(v43 + 4) = sub_1DCB10E9C(0x617461447272, 0xE600000000000000, v54);
            _os_log_impl(&dword_1DCAFC000, v41, v42, "SAExecuteOnRemoteRequest Direct Invocation userData has nil value for %s: Understanding device out of date? No reference resolution entities will be scoped for this turn.", v43, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v44);
            MEMORY[0x1E12A8390](v44, -1, -1);
            MEMORY[0x1E12A8390](v43, -1, -1);
          }

          v48 = 0xF000000000000000;
          v49 = 0;
          goto LABEL_41;
        }
      }

      else
      {

        sub_1DCB0E9D8(v54, &dword_1ECCA3CE0, &unk_1DD0E4F80);
      }

      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v34 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v34, qword_1EDE57E00);
      v28 = sub_1DD0DD8EC();
      v35 = sub_1DD0DE6EC();
      if (!os_log_type_enabled(v28, v35))
      {
        goto LABEL_32;
      }

      v33 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v54[0] = v36;
      *v33 = 136315138;
      *(v33 + 4) = sub_1DCB10E9C(0x7461447475706E69, 0xE900000000000061, v54);
      _os_log_impl(&dword_1DCAFC000, v28, v35, "SAExecuteOnRemoteRequest Direct Invocation userData has no value for %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      MEMORY[0x1E12A8390](v36, -1, -1);
    }

    else
    {
      if (qword_1EDE4F900 != -1)
      {
        swift_once();
      }

      v31 = sub_1DD0DD8FC();
      __swift_project_value_buffer(v31, qword_1EDE57E00);
      v28 = sub_1DD0DD8EC();
      v32 = sub_1DD0DE6EC();
      if (!os_log_type_enabled(v28, v32))
      {
        goto LABEL_32;
      }

      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_1DCAFC000, v28, v32, "SAExecuteOnRemoteRequest Direct Invocation has invalid data", v33, 2u);
    }

    MEMORY[0x1E12A8390](v33, -1, -1);
LABEL_32:
    sub_1DCB2C520(v19, v20);
LABEL_33:

    v37 = type metadata accessor for ExecuteOnRemotePayload(0);
    v38 = a1;
    v39 = 1;
    return __swift_storeEnumTagSinglePayload(v38, v39, 1, v37);
  }

  if (qword_1EDE4F900 != -1)
  {
    swift_once();
  }

  v13 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v13, qword_1EDE57E00);
  v14 = sub_1DD0DD8EC();
  v15 = sub_1DD0DE6EC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1DCAFC000, v14, v15, "SAExecuteOnRemoteRequest Direct Invocation has no data", v16, 2u);
    MEMORY[0x1E12A8390](v16, -1, -1);
  }

  v17 = type metadata accessor for ExecuteOnRemotePayload(0);

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v17);
}