void *sub_268157068(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = sub_2682E5984(*(a1 + 16), 0);
  sub_2682CAEE4();
  v4 = v3;
  sub_2681281A4(v6);
  if (v4 != v1)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v2;
}

id sub_2681570F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7[3] = a3;
  v5 = *a1;
  v7[2] = a2;
  result = sub_26836FCA8(sub_26815ECFC, v7, v5);
  *a4 = result;
  return result;
}

uint64_t sub_26815714C@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DBC8, &qword_2683E3D30);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v14[-v9];
  v11 = *a1;
  v12 = [v11 objectID];
  sub_2682DFAC4(a2, v10);

  v15 = a3;
  v16 = v11;
  sub_2683B0060(sub_26815ED18, a4);
  return sub_26812D9E0(v10, &qword_28024DBC8, &qword_2683E3D30);
}

uint64_t sub_268157270(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_26815D5B8(a1, sub_26815D0B4, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

uint64_t sub_2681572F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB50, &qword_2683D4250);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - v5;
  v7 = sub_2683CB598();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + *(type metadata accessor for Snippet.Reminder(0) + 20) + 8))
  {
    goto LABEL_6;
  }

  sub_2683CB538();
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_26812D9E0(v6, &qword_28024DB50, &qword_2683D4250);
LABEL_6:
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DC18, &unk_2683F5380);
    v16 = a2;
    v17 = 1;
    return __swift_storeEnumTagSinglePayload(v16, v17, 1, v18);
  }

  (*(v8 + 32))(v10, v6, v7);
  v11 = objc_opt_self();
  v12 = sub_2683CB558();
  v13 = [v11 objectIDWithUUID_];

  (*(v8 + 8))(v10, v7);
  if (!v13)
  {
    goto LABEL_6;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DC18, &unk_2683F5380);
  v15 = *(v14 + 48);
  *a2 = v13;
  sub_26815E3F0(a1, a2 + v15);
  v16 = a2;
  v17 = 0;
  v18 = v14;
  return __swift_storeEnumTagSinglePayload(v16, v17, 1, v18);
}

uint64_t sub_268157538(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DC00, &unk_2683E3D90);
    v3 = sub_2683D03F8();
  }

  else
  {
    v3 = MEMORY[0x277D84F98];
  }

  v6 = v3;
  sub_26815D21C(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

void sub_2681575D0()
{
  OUTLINED_FUNCTION_30_0();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DBB8, &unk_2683D4310);
  OUTLINED_FUNCTION_23(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v5);
  v87 = v80 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB08, qword_2683D5760);
  OUTLINED_FUNCTION_23(v7);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18_4();
  v10 = *v3;
  v9 = *(v3 + 8);
  v11 = *(v3 + 96);

  v12 = sub_2681562D8(v10, v9);
  if (v12)
  {
    v13 = v12;

    v14 = sub_2683CF5B8();
    OUTLINED_FUNCTION_0_3();
    v88 = v15;
    MEMORY[0x28223BE20](v16);
    OUTLINED_FUNCTION_14_3();
    v19 = v18 - v17;
    v20 = sub_2683CF678();
    v86 = v80;
    OUTLINED_FUNCTION_0_3();
    v22 = v21;
    MEMORY[0x28223BE20](v23);
    OUTLINED_FUNCTION_14_3();
    OUTLINED_FUNCTION_45_1();
    *v0 = v13;
    (*(v22 + 104))(v0, *MEMORY[0x277D45BC8], v20);
    sub_2683CB528();
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
    sub_2683CB7A8();
    v28 = v87;
    OUTLINED_FUNCTION_4_0();
    __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
    v33 = v13;
    sub_2683CF638();
    sub_26812D9E0(v28, &qword_28024DBB8, &unk_2683D4310);
    sub_26812D9E0(v1, &qword_28024DB08, qword_2683D5760);
    (*(v22 + 8))(v0, v20);
    v60 = sub_2683CF5A8();
    v87 = sub_2683CF688();
    OUTLINED_FUNCTION_0_3();
    MEMORY[0x28223BE20](v61);
    OUTLINED_FUNCTION_14_3();
    v86 = (v63 - v62);
    v64 = *(v60 + 16);
    v65 = v19;
    if (v64)
    {
      v80[1] = v80;
      v81 = v33;
      OUTLINED_FUNCTION_11_7();
      v80[0] = v60;
      v67 = (v60 + v66);
      v82 = *(v68 + 56);
      v84 = (v68 - 8);
      v85 = v69;
      v70 = MEMORY[0x277D84F90];
      v83 = v19;
      while (1)
      {
        v65 = v14;
        v72 = v86;
        v71 = v87;
        v85(v86, v67, v87);
        v14 = sub_2683BE52C();
        (*v84)(v72, v71);
        v73 = *(v14 + 16);
        v74 = *(v70 + 16);
        if (__OFADD__(v74, v73))
        {
          break;
        }

        if (!swift_isUniquelyReferenced_nonNull_native() || v74 + v73 > *(v70 + 24) >> 1)
        {
          sub_2682E4C00();
          v70 = v75;
        }

        if (*(v14 + 16))
        {
          v74 = *(v70 + 16);
          v76 = (*(v70 + 24) >> 1) - v74;
          _s14descr2878F8F29V11ListContentOMa(0);
          if (v76 < v73)
          {
            goto LABEL_30;
          }

          swift_arrayInitWithCopy();

          OUTLINED_FUNCTION_29_3();
          if (v73)
          {
            v77 = *(v70 + 16);
            v78 = __OFADD__(v77, v73);
            v79 = v77 + v73;
            if (v78)
            {
              goto LABEL_31;
            }

            *(v70 + 16) = v79;
          }
        }

        else
        {

          OUTLINED_FUNCTION_29_3();
          if (v73)
          {
            goto LABEL_29;
          }
        }

        v67 += v82;
        if (!--v64)
        {

          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      OUTLINED_FUNCTION_0_11(&qword_28024C8F0);
      v34 = sub_2683CF7E8();
      __swift_project_value_buffer(v34, qword_28027C988);
      v35 = OUTLINED_FUNCTION_38_2();
      v36 = sub_2683CF7C8();
      v37 = sub_2683CFE78();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v89[0] = swift_slowAlloc();
        *v38 = 136315394;
        v90 = v64;
        v39 = v64;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3E0, &qword_2683D2360);
        v40 = sub_2683CFAD8();
        v42 = v67;
        v43 = sub_2681610A0(v40, v41, v89);

        *(v38 + 4) = v43;
        *(v38 + 12) = 2080;
        swift_getErrorValue();
        v44 = sub_2683D0638();
        v46 = sub_2681610A0(v44, v45, v89);

        *(v38 + 14) = v46;
        _os_log_impl(&dword_2680EB000, v36, v37, "[ReminderKitExtensionProvider] Unable to load list contents with error: %s - %s", v38, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_38();
        OUTLINED_FUNCTION_38();
      }

      else
      {
      }
    }

    else
    {

      v74 = v88;
LABEL_26:
      (*(v74 + 8))(v65, v14);
    }
  }

  else
  {
    if (qword_28024C8F0 != -1)
    {
      OUTLINED_FUNCTION_0_11(&qword_28024C8F0);
    }

    v47 = sub_2683CF7E8();
    __swift_project_value_buffer(v47, qword_28027C988);
    OUTLINED_FUNCTION_38_2();

    v48 = OUTLINED_FUNCTION_32_3();
    sub_268151B1C(v48, v49, v11);
    v50 = sub_2683CF7C8();
    v51 = sub_2683CFE78();

    v52 = OUTLINED_FUNCTION_32_3();
    sub_268151B3C(v52, v53, v11);
    if (os_log_type_enabled(v50, v51))
    {
      v54 = v10;
      v55 = OUTLINED_FUNCTION_49();
      v56 = OUTLINED_FUNCTION_53();
      v89[1] = v9;
      v90 = v56;
      *v55 = 136315138;
      v89[0] = v54;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB98, &unk_2683D5280);
      v57 = sub_2683CFAD8();
      v59 = sub_2681610A0(v57, v58, &v90);

      *(v55 + 4) = v59;
      _os_log_impl(&dword_2680EB000, v50, v51, "[ReminderKitExtensionProvider] Could not make list id from %s. Not able to fetch list contents for sections and ordering.", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v56);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_29_0();
}

void sub_268157E08()
{
  OUTLINED_FUNCTION_30_0();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DBB8, &unk_2683D4310);
  OUTLINED_FUNCTION_23(v3);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v4);
  v6 = v69 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB08, qword_2683D5760);
  OUTLINED_FUNCTION_23(v7);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18_4();
  v9 = sub_2683CF5B8();
  OUTLINED_FUNCTION_0_3();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_14_3();
  v15 = v14 - v13;
  v16 = sub_2683CF678();
  OUTLINED_FUNCTION_0_3();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_14_3();
  v22 = v21 - v20;
  sub_2683BF510(v2, v21 - v20);
  (*(v18 + 104))(v22, *MEMORY[0x277D45BC0], v16);
  sub_2683CB528();
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  sub_2683CB7A8();
  OUTLINED_FUNCTION_4_0();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  sub_2683CF638();
  sub_26812D9E0(v6, &qword_28024DBB8, &unk_2683D4310);
  sub_26812D9E0(v0, &qword_28024DB08, qword_2683D5760);
  v44 = OUTLINED_FUNCTION_49_2();
  v45(v44);
  v46 = sub_2683CF5A8();
  v75 = sub_2683CF688();
  OUTLINED_FUNCTION_0_3();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_14_3();
  v50 = v49 - v48;
  v51 = *(v46 + 16);
  if (v51)
  {
    v69[2] = v69;
    v70 = v15;
    OUTLINED_FUNCTION_11_7();
    v69[1] = v46;
    v53 = v46 + v52;
    v55 = *(v54 + 56);
    v71 = v9;
    v72 = v55;
    v73 = (v54 - 8);
    v74 = v56;
    v57 = MEMORY[0x277D84F90];
    while (1)
    {
      v58 = v11;
      v59 = OUTLINED_FUNCTION_32_3();
      v60 = v75;
      v74(v59);
      v61 = sub_2683BE52C();
      (*v73)(v50, v60);
      v62 = *(v61 + 16);
      v63 = *(v57 + 16);
      if (__OFADD__(v63, v62))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v63 + v62 > *(v57 + 24) >> 1)
      {
        sub_2682E4C00();
        v57 = v64;
      }

      if (*(v61 + 16))
      {
        v65 = (*(v57 + 24) >> 1) - *(v57 + 16);
        _s14descr2878F8F29V11ListContentOMa(0);
        if (v65 < v62)
        {
          goto LABEL_24;
        }

        swift_arrayInitWithCopy();

        v11 = v58;
        if (v62)
        {
          v66 = *(v57 + 16);
          v67 = __OFADD__(v66, v62);
          v68 = v66 + v62;
          if (v67)
          {
            goto LABEL_25;
          }

          *(v57 + 16) = v68;
        }
      }

      else
      {

        v11 = v58;
        if (v62)
        {
          goto LABEL_23;
        }
      }

      v53 += v72;
      if (!--v51)
      {

        v15 = v70;
        v9 = v71;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    OUTLINED_FUNCTION_0_11(&qword_28024C8F0);
    v31 = sub_2683CF7E8();
    __swift_project_value_buffer(v31, qword_28027C988);
    v32 = OUTLINED_FUNCTION_38_2();
    v33 = sub_2683CF7C8();
    v34 = sub_2683CFE78();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v76 = v51;
      v77 = v36;
      *v35 = 136315394;
      v37 = v51;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3E0, &qword_2683D2360);
      v38 = sub_2683CFAD8();
      v40 = OUTLINED_FUNCTION_34_3(v38, v39);

      *(v35 + 4) = v40;
      *(v35 + 12) = 2080;
      swift_getErrorValue();
      v41 = sub_2683D0638();
      v43 = OUTLINED_FUNCTION_34_3(v41, v42);

      *(v35 + 14) = v43;
      _os_log_impl(&dword_2680EB000, v33, v34, "[ReminderKitExtensionProvider] Unable to load list contents with error: %s - %s", v35, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    else
    {
    }
  }

  else
  {

LABEL_20:
    (*(v11 + 8))(v15, v9);
  }

  OUTLINED_FUNCTION_29_0();
}

void sub_268158448(void *a1)
{
  if (!a1)
  {
    return;
  }

  v2 = a1;
  v3 = [v2 appearanceContext];
  v4 = [v3 badge];

  if (v4)
  {
    v5 = sub_26815E30C(v4, &selRef_emoji);
    v7 = v6;
    if (v6)
    {
      v8 = v5;

      v9 = v7;
LABEL_7:
      v13 = v7 == 0;
      goto LABEL_13;
    }

    v10 = [v4 emblem];
    if (v10)
    {
      v11 = v10;
      v8 = sub_2683CFA78();
      v9 = v12;

      goto LABEL_7;
    }
  }

  v14 = [v2 badgeEmblem];
  if (v14)
  {
    v15 = v14;
    v8 = sub_2683CFA78();
    v9 = v16;
  }

  else
  {
    v8 = sub_2683CFA78();
    v9 = v17;
  }

  v13 = 1;
LABEL_13:
  v30[1] = v13;
  v18 = v13;
  sub_268151B3C(*(v1 + 80), *(v1 + 88), *(v1 + 96));
  *(v1 + 80) = v8;
  *(v1 + 88) = v9;
  *(v1 + 96) = v18;
  v19 = [v2 color];
  if (v19)
  {
    v20 = v19;
    [v19 red];
    v28 = v21;
    [v20 green];
    v27 = v22;
    [v20 blue];
    v24 = v23;
    sub_268158738([v20 colorRGBSpace], v30);

    *&v26 = v28;
    v25 = v30[0];
    *(&v26 + 1) = v27;
  }

  else
  {
    if (qword_28024C880 != -1)
    {
      OUTLINED_FUNCTION_4_5();
      swift_once();
    }

    v29 = xmmword_28024DB10;
    v24 = qword_28024DB20;
    v25 = byte_28024DB28;

    v26 = v29;
  }

  *(v1 + 48) = v26;
  *(v1 + 64) = v24;
  *(v1 + 72) = v25;
}

void sub_268158680(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    [a1 red];
    v5 = v4;
    [a1 green];
    v7 = v6;
    [a1 blue];
    v9 = v8;
    sub_268158738([a1 colorRGBSpace], &v11);

    v10 = v11;
  }

  else
  {
    v10 = 3;
    v5 = 0;
    v7 = 0;
    v9 = 0;
  }

  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
}

void sub_268158738(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  if (a1 >= 3)
  {
    if (qword_28024C8E0 != -1)
    {
      swift_once();
    }

    v4 = sub_2683CF7E8();
    __swift_project_value_buffer(v4, qword_28027C958);
    v5 = sub_2683CF7C8();
    v6 = sub_2683CFE88();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = OUTLINED_FUNCTION_49();
      v8 = OUTLINED_FUNCTION_53();
      v12 = v8;
      *v7 = 136315138;
      type metadata accessor for REMColorRGBSpace(0);
      v9 = sub_2683CFAD8();
      v11 = sub_2681610A0(v9, v10, &v12);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_2680EB000, v5, v6, "Got unknown value when converting REMColorRGBSpace to Snippet color space: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    LOBYTE(v3) = 2;
  }

  else
  {
    v3 = 0x20001u >> (8 * a1);
  }

  *a2 = v3;
}

void sub_268158898()
{
  sub_268129504(0, &qword_28024DB90, 0x277D445D0);
  v0 = sub_2683CFA78();
  v2 = sub_2681588FC(v0, v1);

  sub_268158680(v2, &xmmword_28024DB10);
}

id sub_2681588FC(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_2683CFA68();

  v4 = [v2 initWithHexString_];

  return v4;
}

double static Snippet.Color.default.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_28024C880 != -1)
  {
    OUTLINED_FUNCTION_4_5();
    swift_once();
  }

  v2 = qword_28024DB20;
  v3 = byte_28024DB28;
  result = *&xmmword_28024DB10;
  *a1 = xmmword_28024DB10;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  return result;
}

uint64_t sub_2681589F4(uint64_t a1)
{
  v2 = type metadata accessor for Snippet.Reminder.AppLink(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_14_3();
  v6 = v5 - v4;
  v7 = sub_2683CB438();
  OUTLINED_FUNCTION_0_3();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_14_3();
  v13 = v12 - v11;
  if (__swift_getEnumTagSinglePayload(a1, 1, v7) == 1)
  {
    sub_26812D9E0(a1, &qword_28024D258, &unk_2683D1F60);
    OUTLINED_FUNCTION_4_0();

    return __swift_storeEnumTagSinglePayload(v14, v15, v16, v2);
  }

  else
  {
    v18 = *(v9 + 32);
    v18(v13, a1, v7);
    v18(v6, v13, v7);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_8_6();
    sub_26815E568();
    v19 = OUTLINED_FUNCTION_25_4();
    return __swift_storeEnumTagSinglePayload(v19, v20, v21, v2);
  }
}

uint64_t sub_268158B9C(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Snippet.Reminder.AppLink(0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14_3();
  v8 = (v7 - v6);
  if (a2 >> 60 == 15)
  {
    OUTLINED_FUNCTION_4_0();

    return __swift_storeEnumTagSinglePayload(v9, v10, v11, v4);
  }

  else
  {
    *v8 = a1;
    v8[1] = a2;
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_8_6();
    sub_26815E568();
    v13 = OUTLINED_FUNCTION_25_4();
    return __swift_storeEnumTagSinglePayload(v13, v14, v15, v4);
  }
}

uint64_t sub_268158C84(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_2683D4200;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

BOOL sub_268158CE8(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v7 = *v3;
  sub_2683D0698();
  sub_2683CFB48();
  sub_2683D06D8();
  OUTLINED_FUNCTION_14_6();
  v10 = ~v9;
  while (1)
  {
    v11 = v8 & v10;
    v12 = (1 << (v8 & v10)) & *(v7 + 56 + (((v8 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      break;
    }

    v13 = (*(v7 + 48) + 16 * v11);
    v14 = *v13 == a2 && v13[1] == a3;
    if (v14 || (sub_2683D0598() & 1) != 0)
    {

      v15 = (*(v7 + 48) + 16 * v11);
      v16 = v15[1];
      *a1 = *v15;
      a1[1] = v16;

      return v12 == 0;
    }

    v8 = v11 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v3;

  sub_26815AA48(a2, a3, v11, isUniquelyReferenced_nonNull_native);
  *v3 = v19;
  *a1 = a2;
  a1[1] = a3;
  return v12 == 0;
}

BOOL sub_268158E54(char *a1, char *a2)
{
  v22 = a1;
  v4 = sub_2683CB438();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v8 = *v2;
  sub_26815E520(&qword_28024D760, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  v27 = a2;
  v9 = sub_2683CF9F8();
  v24 = v8;
  v25 = v8 + 56;
  v10 = ~(-1 << *(v8 + 32));
  v26 = v5 + 16;
  v23 = v5 + 8;
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v25 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      v17 = v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = v27;
      (*(v5 + 16))(v7, v27, v4);
      v28 = *v17;
      sub_26815ABB0(v7, v11, isUniquelyReferenced_nonNull_native);
      *v17 = v28;
      (*(v5 + 32))(v22, v19, v4);
      return v12 == 0;
    }

    v13 = *(v5 + 72) * v11;
    v14 = *(v5 + 16);
    v14(v7, *(v24 + 48) + v13, v4);
    sub_26815E520(&qword_28024DB70, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
    v15 = sub_2683CFA58();
    v16 = *(v5 + 8);
    v16(v7, v4);
    if (v15)
    {
      break;
    }

    v9 = v11 + 1;
  }

  v16(v27, v4);
  v14(v22, *(v24 + 48) + v13, v4);
  return v12 == 0;
}

uint64_t sub_268159140(uint64_t *a1, void *a2, unint64_t *a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_2683D00B8();

    if (v17)
    {

      sub_268129504(0, a3, a4);
      OUTLINED_FUNCTION_33_3();
      result = 0;
      *a1 = v34;
    }

    else
    {
      result = sub_2683D00A8();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v25 = sub_2681598A8(v15, result + 1, a5, a6, a3, a4);
        if (*(v25 + 24) <= *(v25 + 16))
        {
          sub_26815A038();
        }

        v26 = v16;
        sub_26815A9CC();

        *v11 = v25;
        *a1 = v26;
        return 1;
      }
    }
  }

  else
  {
    sub_268129504(0, a3, a4);
    sub_2683CFF58();
    OUTLINED_FUNCTION_14_6();
    v21 = ~v20;
    while (1)
    {
      v22 = v19 & v21;
      if (((*(v14 + 56 + (((v19 & v21) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v19 & v21)) & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v35 = *v11;
        v28 = a2;
        sub_26815AE60(v28, v22, isUniquelyReferenced_nonNull_native, a5, a6);
        *v11 = v35;
        *a1 = v28;
        return 1;
      }

      v23 = *(*(v14 + 48) + 8 * v22);
      v24 = sub_2683CFF68();

      if (v24)
      {
        break;
      }

      v19 = v22 + 1;
    }

    v29 = *(*(v14 + 48) + 8 * v22);
    *a1 = v29;
    v30 = v29;
    return 0;
  }

  return result;
}

uint64_t sub_268159390(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  sub_2683D0698();
  sub_2683CFB48();
  OUTLINED_FUNCTION_37_1();
  sub_2683CFB48();
  sub_2683D06D8();
  v11 = v10 + 56;
  OUTLINED_FUNCTION_14_6();
  v14 = v13 & ~v12;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v12;
    v28 = v10;
    v16 = *(v10 + 48);
    while (1)
    {
      v17 = (v16 + 32 * v14);
      v18 = v17[2];
      v19 = v17[3];
      v20 = *v17 == a2 && v17[1] == a3;
      if (v20 || (sub_2683D0598() & 1) != 0)
      {
        v21 = v18 == a4 && v19 == a5;
        if (v21 || (sub_2683D0598() & 1) != 0)
        {
          break;
        }
      }

      v14 = (v14 + 1) & v15;
      if (((*(v11 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    v24 = (*(v28 + 48) + 32 * v14);
    v25 = v24[1];
    v26 = v24[2];
    v27 = v24[3];
    *a1 = *v24;
    a1[1] = v25;
    a1[2] = v26;
    a1[3] = v27;

    return 0;
  }

  else
  {
LABEL_14:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *v29;

    sub_26815AFCC(a2, a3, a4, a5, v14, isUniquelyReferenced_nonNull_native);
    *v29 = v31;
    *a1 = a2;
    a1[1] = a3;
    a1[2] = a4;
    a1[3] = a5;
    return 1;
  }
}

void sub_26815955C()
{
  OUTLINED_FUNCTION_30_0();
  v2 = v1;
  v27 = v3;
  v4 = sub_2683CB598();
  OUTLINED_FUNCTION_0_3();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_14_3();
  v10 = v9 - v8;
  v26 = v0;
  v11 = *v0;
  OUTLINED_FUNCTION_9_5();
  sub_26815E520(v12, v13, MEMORY[0x277CC9600]);
  sub_2683CF9F8();
  v28 = v11;
  v29 = v11 + 56;
  OUTLINED_FUNCTION_14_6();
  v16 = ~v15;
  while (1)
  {
    v17 = v14 & v16;
    if (((1 << (v14 & v16)) & *(v29 + (((v14 & v16) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      (*(v6 + 16))(v10, v2, v4);
      v30 = *v26;
      v24 = OUTLINED_FUNCTION_32_3();
      sub_26815B194(v24, v25, isUniquelyReferenced_nonNull_native);
      *v26 = v30;
      (*(v6 + 32))(v27, v2, v4);
      goto LABEL_7;
    }

    v18 = *(v6 + 72) * v17;
    v19 = *(v6 + 16);
    v19(v10, *(v28 + 48) + v18, v4);
    OUTLINED_FUNCTION_9_5();
    sub_26815E520(&qword_28024DBA8, v20, MEMORY[0x277CC9610]);
    v21 = sub_2683CFA58();
    v22 = *(v6 + 8);
    v22(v10, v4);
    if (v21)
    {
      break;
    }

    v14 = v17 + 1;
  }

  v22(v2, v4);
  v19(v27, *(v28 + 48) + v18, v4);
LABEL_7:
  OUTLINED_FUNCTION_29_0();
}

BOOL sub_2681597D8(unint64_t *a1, unint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_2683D0688();
  v8 = ~(-1 << *(v6 + 32));
  while (1)
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(v6 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v10)
    {
      break;
    }

    if (*(*(v6 + 48) + 8 * v9) == a2)
    {
      goto LABEL_6;
    }

    v7 = v9 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v3;
  sub_26815B444(a2, v9, isUniquelyReferenced_nonNull_native);
  *v3 = v13;
LABEL_6:
  result = v10 == 0;
  *a1 = a2;
  return result;
}

uint64_t sub_2681598A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, void *a6)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v8 = sub_2683D0138();
    v20 = v8;
    sub_2683D0098();
    while (1)
    {
      if (!sub_2683D00C8())
      {

        return v8;
      }

      sub_268129504(0, a5, a6);
      swift_dynamicCast();
      if (*(v8 + 24) <= *(v8 + 16))
      {
        OUTLINED_FUNCTION_37_1();
        sub_26815A038();
      }

      v8 = v20;
      result = sub_2683CFF58();
      v10 = v20 + 56;
      v11 = -1 << *(v20 + 32);
      v12 = result & ~v11;
      v13 = v12 >> 6;
      if (((-1 << v12) & ~*(v20 + 56 + 8 * (v12 >> 6))) == 0)
      {
        break;
      }

      v14 = __clz(__rbit64((-1 << v12) & ~*(v20 + 56 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v20 + 48) + 8 * v14) = v19;
      ++*(v20 + 16);
    }

    v15 = 0;
    v16 = (63 - v11) >> 6;
    while (++v13 != v16 || (v15 & 1) == 0)
    {
      v17 = v13 == v16;
      if (v13 == v16)
      {
        v13 = 0;
      }

      v15 |= v17;
      v18 = *(v10 + 8 * v13);
      if (v18 != -1)
      {
        v14 = __clz(__rbit64(~v18)) + (v13 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_268159A84(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DC20, qword_2683D4378);
  result = sub_2683D0128();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_268158C84(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_2683D0698();
    sub_2683CFB48();
    result = sub_2683D06D8();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

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
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_268159CE0(uint64_t a1)
{
  v2 = v1;
  v36 = sub_2683CB438();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB78, &unk_2683D4268);
  result = sub_2683D0128();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return result;
  }

  v30 = v1;
  v31 = v5;
  v8 = 0;
  v9 = (v5 + 56);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 56);
  v13 = (v10 + 63) >> 6;
  v34 = v3 + 32;
  v14 = result + 56;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      sub_268158C84(0, (v28 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48) + *(v3 + 72) * (v15 | (v8 << 6));
    v19 = *(v3 + 32);
    v32 = *(v3 + 72);
    v33 = v19;
    v19(v35, v18, v36);
    sub_26815E520(&qword_28024D760, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
    result = sub_2683CF9F8();
    v20 = -1 << *(v7 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = v33(*(v7 + 48) + v23 * v32, v35, v36);
    ++*(v7 + 16);
    v5 = v31;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v14 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

void sub_26815A038()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_21_3(v2, v3, v4);
  v5 = sub_2683D0128();
  v6 = v5;
  if (!*(v1 + 16))
  {
LABEL_27:

    *v0 = v6;
    OUTLINED_FUNCTION_29_0();
    return;
  }

  v7 = 0;
  v8 = (v1 + 56);
  v9 = 1 << *(v1 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v1 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = v5 + 56;
  if (!v11)
  {
LABEL_7:
    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v7 >= v12)
      {
        break;
      }

      ++v14;
      if (v8[v7])
      {
        OUTLINED_FUNCTION_6_5();
        v11 = v16 & v15;
        goto LABEL_12;
      }
    }

    OUTLINED_FUNCTION_27_1();
    if (v25 >= 64)
    {
      sub_268158C84(0, (v25 + 63) >> 6, v1 + 56);
    }

    else
    {
      OUTLINED_FUNCTION_14_6();
      *v8 = v26;
    }

    *(v1 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    OUTLINED_FUNCTION_46_2();
LABEL_12:
    v17 = sub_2683CFF58() & ~(-1 << *(v6 + 32));
    if (((-1 << v17) & ~*(v13 + 8 * (v17 >> 6))) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_44_2();
LABEL_21:
    OUTLINED_FUNCTION_40_2();
    *(v13 + v22) |= v23;
    OUTLINED_FUNCTION_26_3(v24);
    if (!v11)
    {
      goto LABEL_7;
    }
  }

  OUTLINED_FUNCTION_43_2();
  while (++v18 != v20 || (v19 & 1) == 0)
  {
    v21 = v18 == v20;
    if (v18 == v20)
    {
      v18 = 0;
    }

    v19 |= v21;
    if (*(v13 + 8 * v18) != -1)
    {
      OUTLINED_FUNCTION_41_1();
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
}

uint64_t sub_26815A1CC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB80, &qword_2683D4278);
  result = sub_2683D0128();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v31 = v2;
  v32 = v3;
  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_268158C84(0, (v30 + 63) >> 6, v7);
    }

    else
    {
      *v7 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 32 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = v16[2];
    v20 = v16[3];
    sub_2683D0698();
    v33 = v17;
    sub_2683CFB48();
    sub_2683CFB48();
    result = sub_2683D06D8();
    v21 = -1 << *(v5 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v5 + 48) + 32 * v24);
    v3 = v32;
    *v29 = v33;
    v29[1] = v18;
    v29[2] = v19;
    v29[3] = v20;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v12 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_26815A450(uint64_t a1)
{
  v2 = v1;
  v36 = sub_2683CB598();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DBB0, &qword_2683D4308);
  result = sub_2683D0128();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return result;
  }

  v30 = v1;
  v31 = v5;
  v8 = 0;
  v9 = (v5 + 56);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 56);
  v13 = (v10 + 63) >> 6;
  v34 = v3 + 32;
  v14 = result + 56;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      sub_268158C84(0, (v28 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48) + *(v3 + 72) * (v15 | (v8 << 6));
    v19 = *(v3 + 32);
    v32 = *(v3 + 72);
    v33 = v19;
    v19(v35, v18, v36);
    sub_26815E520(&qword_28024D890, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    result = sub_2683CF9F8();
    v20 = -1 << *(v7 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = v33(*(v7 + 48) + v23 * v32, v35, v36);
    ++*(v7 + 16);
    v5 = v31;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v14 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_26815A7A8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DBA0, &qword_2683D4300);
  result = sub_2683D0128();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v8 = (v3 + 56);
  v7 = *(v3 + 56);
  v9 = 1 << *(v3 + 32);
  v25 = v2;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v7;
  v12 = result + 56;
  if ((v10 & v7) == 0)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= ((v9 + 63) >> 6))
      {
        break;
      }

      v15 = v8[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    if (v9 >= 64)
    {
      sub_268158C84(0, (v9 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v25;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    result = sub_2683D0688();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + 8 * v20) = v16;
    ++*(v5 + 16);
    if (!v11)
    {
      goto LABEL_7;
    }
  }

  v21 = 0;
  v22 = (63 - v17) >> 6;
  while (++v19 != v22 || (v21 & 1) == 0)
  {
    v23 = v19 == v22;
    if (v19 == v22)
    {
      v19 = 0;
    }

    v21 |= v23;
    v24 = *(v12 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_26815A9CC()
{
  OUTLINED_FUNCTION_36_2();
  sub_2683CFF58();
  OUTLINED_FUNCTION_14_6();
  result = sub_2683D0088();
  *(v0 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(v0 + 48) + 8 * result) = v1;
  ++*(v0 + 16);
  return result;
}

unint64_t sub_26815AA48(unint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_268159A84(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_26815BC50(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_2683D0698();
      sub_2683CFB48();
      result = sub_2683D06D8();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (sub_2683D0598() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_26815B548();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_2683D05F8();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t sub_26815ABB0(uint64_t a1, unint64_t a2, char a3)
{
  v22 = a1;
  v6 = sub_2683CB438();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_268159CE0(v10 + 1);
      goto LABEL_8;
    }

    if (v11 <= v10)
    {
      sub_26815BE84(v10 + 1);
LABEL_8:
      v21 = v3;
      v12 = *v3;
      sub_26815E520(&qword_28024D760, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
      v13 = sub_2683CF9F8();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v9, *(v12 + 48) + *(v7 + 72) * a2, v6);
        sub_26815E520(&qword_28024DB70, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
        v15 = sub_2683CFA58();
        (*(v7 + 8))(v9, v6);
        if (v15)
        {
          goto LABEL_16;
        }

        v13 = a2 + 1;
      }

      v3 = v21;
      goto LABEL_13;
    }

    sub_26815B920();
  }

LABEL_13:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v16 + 48) + *(v7 + 72) * a2, v22, v6);
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_16:
    result = sub_2683D05F8();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }

  return result;
}

void sub_26815AE60(uint64_t result, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v8 = *(*v5 + 16);
  v9 = *(*v5 + 24);
  if (v9 <= v8 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_26815A038();
      goto LABEL_8;
    }

    if (v9 <= v8)
    {
      sub_26815C19C(v8 + 1, a4, a5);
LABEL_8:
      v10 = *v5;
      sub_2683CFF58();
      OUTLINED_FUNCTION_14_6();
      v13 = ~v12;
      while (1)
      {
        a2 = v11 & v13;
        if (((*(v10 + 56 + (((v11 & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v13)) & 1) == 0)
        {
          goto LABEL_12;
        }

        OUTLINED_FUNCTION_37_1();
        sub_268129504(v14, v15, v16);
        v17 = *(*(v10 + 48) + 8 * a2);
        v18 = sub_2683CFF68();

        if (v18)
        {
          goto LABEL_15;
        }

        v11 = a2 + 1;
      }
    }

    sub_26815B6A0(a4, a5);
  }

LABEL_12:
  v19 = *v5;
  *(*v5 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + 8 * a2) = result;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
LABEL_15:
    sub_2683D05F8();
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v22;
  }
}

uint64_t sub_26815AFCC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v11 = result;
  v12 = *(*v6 + 16);
  v13 = *(*v6 + 24);
  if (v13 > v12 && (a6 & 1) != 0)
  {
    goto LABEL_21;
  }

  if (a6)
  {
    sub_26815A1CC(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      result = sub_26815B7B8();
      goto LABEL_21;
    }

    sub_26815C33C(v12 + 1);
  }

  v14 = *v6;
  sub_2683D0698();
  sub_2683CFB48();
  sub_2683CFB48();
  result = sub_2683D06D8();
  v15 = v14 + 56;
  v16 = -1 << *(v14 + 32);
  a5 = result & ~v16;
  if ((*(v14 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v17 = ~v16;
    v18 = *(v14 + 48);
    do
    {
      v19 = (v18 + 32 * a5);
      v20 = v19[2];
      v21 = v19[3];
      v22 = *v19 == v11 && v19[1] == a2;
      if (v22 || (result = sub_2683D0598(), (result & 1) != 0))
      {
        if (v20 == a3 && v21 == a4)
        {
          goto LABEL_24;
        }

        result = sub_2683D0598();
        if (result)
        {
          goto LABEL_24;
        }
      }

      a5 = (a5 + 1) & v17;
    }

    while (((*(v15 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) != 0);
  }

LABEL_21:
  v24 = *v29;
  *(*v29 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v25 = (*(v24 + 48) + 32 * a5);
  *v25 = v11;
  v25[1] = a2;
  v25[2] = a3;
  v25[3] = a4;
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_24:
  result = sub_2683D05F8();
  __break(1u);
  return result;
}

uint64_t sub_26815B194(uint64_t a1, unint64_t a2, char a3)
{
  v22 = a1;
  v6 = sub_2683CB598();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_26815A450(v10 + 1);
      goto LABEL_8;
    }

    if (v11 <= v10)
    {
      sub_26815C59C(v10 + 1);
LABEL_8:
      v21 = v3;
      v12 = *v3;
      sub_26815E520(&qword_28024D890, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v13 = sub_2683CF9F8();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v9, *(v12 + 48) + *(v7 + 72) * a2, v6);
        sub_26815E520(&qword_28024DBA8, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
        v15 = sub_2683CFA58();
        (*(v7 + 8))(v9, v6);
        if (v15)
        {
          goto LABEL_16;
        }

        v13 = a2 + 1;
      }

      v3 = v21;
      goto LABEL_13;
    }

    sub_26815B920();
  }

LABEL_13:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v16 + 48) + *(v7 + 72) * a2, v22, v6);
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_16:
    result = sub_2683D05F8();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }

  return result;
}

unint64_t sub_26815B444(unint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_26815A7A8(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_26815C8B4(v6 + 1);
LABEL_10:
      v12 = *v3;
      result = sub_2683D0688();
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + 8 * a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_26815BB10();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_2683D05F8();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

void *sub_26815B548()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DC20, qword_2683D4378);
  v2 = *v0;
  v3 = sub_2683D0118();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_26815B6A0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_2683D0118();
  if (v4[2])
  {
    OUTLINED_FUNCTION_27_1();
    v8 = (v7 + 63) >> 6;
    if (v5 != v4 || v6 >= &v4[v8 + 7])
    {
      memmove(v6, v4 + 7, 8 * v8);
    }

    v10 = 0;
    *(v5 + 16) = v4[2];
    OUTLINED_FUNCTION_27_1();
    OUTLINED_FUNCTION_48_2();
    v13 = v12 & v11;
    v15 = (v14 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        OUTLINED_FUNCTION_46_2();
LABEL_15:
        v20 = v16 | (v10 << 6);
        v21 = *(v4[6] + 8 * v20);
        *(*(v5 + 48) + 8 * v20) = v21;
        v22 = v21;
      }

      while (v13);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_17;
      }

      ++v17;
      if (v4[v10 + 7])
      {
        OUTLINED_FUNCTION_6_5();
        v13 = v19 & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v3 = v5;
  }
}

void *sub_26815B7B8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB80, &qword_2683D4278);
  v2 = *v0;
  v3 = sub_2683D0118();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 32 * v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v22 = (*(v4 + 48) + 32 * v17);
        *v22 = *v18;
        v22[1] = v19;
        v22[2] = v20;
        v22[3] = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_26815B920()
{
  OUTLINED_FUNCTION_30_0();
  v2 = v0;
  v4 = v3(0);
  OUTLINED_FUNCTION_0_3();
  v6 = v5;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18_4();
  v8 = OUTLINED_FUNCTION_49_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  v10 = *v0;
  v11 = sub_2683D0118();
  if (v10[2])
  {
    v27 = v2;
    OUTLINED_FUNCTION_27_1();
    v14 = (v13 + 63) >> 6;
    if (v11 != v10 || v12 >= &v10[v14 + 7])
    {
      memmove(v12, v10 + 7, 8 * v14);
    }

    v16 = 0;
    *(v11 + 16) = v10[2];
    OUTLINED_FUNCTION_27_1();
    OUTLINED_FUNCTION_48_2();
    v19 = v18 & v17;
    v21 = (v20 + 63) >> 6;
    if ((v18 & v17) != 0)
    {
      do
      {
        v22 = __clz(__rbit64(v19));
        v19 &= v19 - 1;
LABEL_15:
        v26 = *(v6 + 72) * (v22 | (v16 << 6));
        (*(v6 + 16))(v1, v10[6] + v26, v4);
        (*(v6 + 32))(*(v11 + 48) + v26, v1, v4);
      }

      while (v19);
    }

    v23 = v16;
    while (1)
    {
      v16 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v16 >= v21)
      {

        v2 = v27;
        goto LABEL_19;
      }

      ++v23;
      if (v10[v16 + 7])
      {
        OUTLINED_FUNCTION_6_5();
        v19 = v25 & v24;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_19:
    *v2 = v11;
    OUTLINED_FUNCTION_29_0();
  }
}

void *sub_26815BB10()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DBA0, &qword_2683D4300);
  v2 = *v0;
  v3 = sub_2683D0118();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_26815BC50(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DC20, qword_2683D4378);
  result = sub_2683D0128();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        sub_2683D0698();

        sub_2683CFB48();
        result = sub_2683D06D8();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_26815BE84(uint64_t a1)
{
  v2 = v1;
  v33 = sub_2683CB438();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB78, &unk_2683D4268);
  v7 = sub_2683D0128();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_26815E520(&qword_28024D760, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
        result = sub_2683CF9F8();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v7;
  }

  return result;
}

void sub_26815C19C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_21_3(a1, a2, a3);
  v5 = sub_2683D0128();
  v6 = v5;
  if (*(v4 + 16))
  {
    v26 = v3;
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v5 + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_12:
        v17 = *(*(v4 + 48) + 8 * (v13 | (v7 << 6)));
        OUTLINED_FUNCTION_39_2();
        v18 = sub_2683CFF58() & ~(-1 << *(v6 + 32));
        if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        OUTLINED_FUNCTION_44_2();
LABEL_21:
        OUTLINED_FUNCTION_40_2();
        *(v12 + v23) |= v24;
        OUTLINED_FUNCTION_26_3(v25);
        if (!v10)
        {
          goto LABEL_7;
        }
      }

      OUTLINED_FUNCTION_43_2();
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        if (*(v12 + 8 * v19) != -1)
        {
          OUTLINED_FUNCTION_41_1();
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v3 = v26;
          goto LABEL_25;
        }

        ++v14;
        if (*(v4 + 56 + 8 * v7))
        {
          OUTLINED_FUNCTION_6_5();
          v10 = v16 & v15;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v3 = v6;
  }
}

uint64_t sub_26815C33C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB80, &qword_2683D4278);
  result = sub_2683D0128();
  v5 = result;
  if (*(v3 + 16))
  {
    v30 = v1;
    v31 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_12:
        v16 = (*(v3 + 48) + 32 * (v13 | (v6 << 6)));
        v17 = *v16;
        v18 = v16[1];
        v19 = v16[2];
        v20 = v16[3];
        sub_2683D0698();

        sub_2683CFB48();
        sub_2683CFB48();
        result = sub_2683D06D8();
        v21 = -1 << *(v5 + 32);
        v22 = result & ~v21;
        v23 = v22 >> 6;
        if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
        {
          break;
        }

        v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
        v29 = (*(v5 + 48) + 32 * v24);
        *v29 = v17;
        v29[1] = v18;
        v29[2] = v19;
        v29[3] = v20;
        ++*(v5 + 16);
        v3 = v31;
        if (!v10)
        {
          goto LABEL_7;
        }
      }

      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v14 = v6;
      while (1)
      {
        v6 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v6 >= v11)
        {

          v2 = v30;
          goto LABEL_25;
        }

        v15 = *(v7 + 8 * v6);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_26815C59C(uint64_t a1)
{
  v2 = v1;
  v33 = sub_2683CB598();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DBB0, &qword_2683D4308);
  v7 = sub_2683D0128();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_26815E520(&qword_28024D890, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
        result = sub_2683CF9F8();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_26815C8B4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DBA0, &qword_2683D4300);
  result = sub_2683D0128();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + 8 * (v12 | (v6 << 6)));
        result = sub_2683D0688();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + 8 * v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {
          goto LABEL_23;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_23:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_26815CAA0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DBF0, &qword_2683D4348);
    v2 = sub_2683D03E8();
    v21 = v2;
    sub_2683D02D8();
    while (1)
    {
      v3 = sub_2683D0368();
      if (!v3)
      {

        return v2;
      }

      v19 = v3;
      sub_268129504(0, &qword_28024DB40, 0x277D44700);
      swift_dynamicCast();
      sub_268129504(0, &qword_28024DB60, 0x277D44750);
      swift_dynamicCast();
      v8 = *(v2 + 16);
      if (*(v2 + 24) <= v8)
      {
        sub_2682C0DB4(v8 + 1, 1, v4, v5, v6, v7);
      }

      v2 = v21;
      result = sub_2683CFF58();
      v10 = v21 + 64;
      v11 = -1 << *(v21 + 32);
      v12 = result & ~v11;
      v13 = v12 >> 6;
      if (((-1 << v12) & ~*(v21 + 64 + 8 * (v12 >> 6))) == 0)
      {
        break;
      }

      v14 = __clz(__rbit64((-1 << v12) & ~*(v21 + 64 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v21 + 48) + 8 * v14) = v20;
      *(*(v21 + 56) + 8 * v14) = v19;
      ++*(v21 + 16);
    }

    v15 = 0;
    v16 = (63 - v11) >> 6;
    while (++v13 != v16 || (v15 & 1) == 0)
    {
      v17 = v13 == v16;
      if (v13 == v16)
      {
        v13 = 0;
      }

      v15 |= v17;
      v18 = *(v10 + 8 * v13);
      if (v18 != -1)
      {
        v14 = __clz(__rbit64(~v18)) + (v13 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *sub_26815CCC8(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DC10, &qword_2683D4368);
  result = sub_2683D03C8();
  v6 = result;
  v7 = 0;
  v27 = a3;
  v28 = result;
  v10 = *(a3 + 64);
  v9 = a3 + 64;
  v8 = v10;
  v11 = 1 << *(v9 - 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  v25 = result + 8;
  if ((v12 & v8) != 0)
  {
    while (1)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_10:
      v18 = v15 | (v7 << 6);
      v19 = *(*(v27 + 48) + 8 * v18);
      v30 = *(*(v27 + 56) + 8 * v18);
      v20 = v19;

      a1(&v29, &v30);

      if (v3)
      {
        break;
      }

      *(v25 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v6 = v28;
      v21 = v29;
      *(v28[6] + 8 * v18) = v20;
      *(v28[7] + 8 * v18) = v21;
      v22 = v28[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_17;
      }

      v28[2] = v24;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    v6 = v28;

    return v6;
  }

  else
  {
LABEL_5:
    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v14)
      {
        return v6;
      }

      v17 = *(v9 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

unint64_t *sub_26815CE7C(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();

      v4 = sub_26815DF0C(v12, v7, v4, a2);
      MEMORY[0x26D617A40](v12, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x28223BE20](v8);
  v9 = (v13 - ((8 * v7 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_268158C84(0, v7, v9);

  sub_26815DB0C(v9, v7, v4, a2);
  if (v2)
  {
    swift_willThrow();
  }

  else
  {
    v4 = v10;
  }

  swift_bridgeObjectRelease_n();
LABEL_6:

  return v4;
}

id sub_26815D040(uint64_t a1, void *a2, uint64_t a3)
{
  sub_26815E3F0(a3, a1);

  return a2;
}

id sub_26815D080(void *a1, void *a2, void *a3)
{
  *a1 = a3;
  v4 = a2;
  v5 = a3;
  return v4;
}

id sub_26815D0B4@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DBC0, &unk_2683D4320) + 48);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DBD0, &qword_2683E6590);
  result = sub_26815D040(a2 + *(v5 + 48), *a1, a1 + v4);
  *a2 = result;
  return result;
}

uint64_t sub_26815D124(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t *a4)
{
  v9 = *a4;
  if ((*a4 & 0xC000000000000001) != 0)
  {
    if (v9 < 0)
    {
      v10 = *a4;
    }

    else
    {
      v10 = v9 & 0xFFFFFFFFFFFFFF8;
    }

    v11 = sub_2683D00A8();
    v14 = sub_26815CAA0(v10, v11);
    sub_26815D924(a1, a2, a3, 1, &v14);
    if (v4)
    {
    }
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *a4;
    result = sub_26815D924(a1, a2, a3, isUniquelyReferenced_nonNull_native, &v14);
  }

  *a4 = v14;
  return result;
}

uint64_t sub_26815D21C(uint64_t a1, char a2, void *a3)
{
  v42 = a3;
  v5 = type metadata accessor for Snippet.Reminder(0);
  v40 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v36 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DBD0, &qword_2683E6590);
  v11 = MEMORY[0x28223BE20](v10);
  v41 = (&v35 - v13);
  v39 = *(a1 + 16);
  if (!v39)
  {
  }

  v14 = 0;
  v15 = *(v11 + 48);
  v37 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
  v38 = v15;
  while (v14 < *(a1 + 16))
  {
    v16 = v12;
    v17 = v41;
    sub_26815ED48();
    v18 = *v17;
    v19 = v9;
    sub_26815E568();
    v20 = *v42;
    v22 = sub_2682E186C();
    v23 = v20[2];
    v24 = (v21 & 1) == 0;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_18;
    }

    v25 = v21;
    if (v20[3] >= v23 + v24)
    {
      if ((a2 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DBE0, &qword_2683D4338);
        sub_2683D02A8();
      }
    }

    else
    {
      sub_2682C0B00();
      v26 = sub_2682E186C();
      if ((v25 & 1) != (v27 & 1))
      {
        goto LABEL_20;
      }

      v22 = v26;
    }

    v28 = *v42;
    if (v25)
    {
      v29 = *(v40 + 72) * v22;
      v30 = v36;
      sub_26815E3F0(v28[7] + v29, v36);
      v9 = v19;
      sub_26815E454(v19);

      sub_26815EC40(v30, v28[7] + v29);
    }

    else
    {
      v28[(v22 >> 6) + 8] |= 1 << v22;
      *(v28[6] + 8 * v22) = v18;
      v9 = v19;
      sub_26815E568();
      v31 = v28[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_19;
      }

      v28[2] = v33;
    }

    ++v14;
    a2 = 1;
    v12 = v16;
    if (v39 == v14)
    {
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  sub_268129504(0, &qword_28024DB40, 0x277D44700);
  result = sub_2683D0608();
  __break(1u);
  return result;
}

uint64_t sub_26815D5B8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = type metadata accessor for Snippet.Reminder(0);
  v41 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v34 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DBD8, &qword_2683D4330);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = (v34 - v17);
  sub_26815E694(a1, a2, a3, v39);
  v35 = v39[0];
  v36 = v39[1];
  v37 = v39[2];
  v38 = v40;
  v34[2] = a1;

  v34[1] = a3;

  while (1)
  {
    sub_26815E768(v18);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DBD0, &qword_2683E6590);
    if (__swift_getEnumTagSinglePayload(v18, 1, v19) == 1)
    {
      sub_2681281A4(v35);
    }

    v20 = *v18;
    sub_26815E568();
    v21 = *a5;
    v23 = sub_2682E186C();
    v24 = v21[2];
    v25 = (v22 & 1) == 0;
    if (__OFADD__(v24, v25))
    {
      break;
    }

    v26 = v22;
    if (v21[3] >= v24 + v25)
    {
      if ((a4 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DBE0, &qword_2683D4338);
        sub_2683D02A8();
      }
    }

    else
    {
      sub_2682C0B00();
      v27 = sub_2682E186C();
      if ((v26 & 1) != (v28 & 1))
      {
        goto LABEL_16;
      }

      v23 = v27;
    }

    v29 = *a5;
    if (v26)
    {
      sub_26815E3F0(v15, v13);
      sub_26815E454(v15);

      sub_26815EC40(v13, v29[7] + *(v41 + 72) * v23);
      a4 = 1;
    }

    else
    {
      v29[(v23 >> 6) + 8] |= 1 << v23;
      *(v29[6] + 8 * v23) = v20;
      sub_26815E568();
      v30 = v29[2];
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_15;
      }

      v29[2] = v32;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  sub_268129504(0, &qword_28024DB40, 0x277D44700);
  result = sub_2683D0608();
  __break(1u);
  return result;
}

uint64_t sub_26815D924(unint64_t a1, unint64_t a2, unint64_t a3, char a4, void *a5)
{
  sub_26815E6D0(a1, a2, a3, &v31);
  v30 = v31;

  while (1)
  {
    sub_26815EA80(v7);
    if (!v8)
    {
      sub_2681281A4(v30);
    }

    v10 = v8;
    v11 = v9;
    v12 = *a5;
    v18 = sub_2682E186C();
    v19 = v12[2];
    v20 = (v13 & 1) == 0;
    v7 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      break;
    }

    v21 = v13;
    if (v12[3] >= v7)
    {
      if ((a4 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DBF8, &unk_2683D4350);
        v7 = sub_2683D02A8();
      }
    }

    else
    {
      sub_2682C0DB4(v7, a4 & 1, v14, v15, v16, v17);
      v7 = sub_2682E186C();
      if ((v21 & 1) != (v22 & 1))
      {
        goto LABEL_16;
      }

      v18 = v7;
    }

    v23 = *a5;
    if (v21)
    {

      v24 = v23[7];
      v25 = *(v24 + 8 * v18);
      *(v24 + 8 * v18) = v11;

      a4 = 1;
    }

    else
    {
      v23[(v18 >> 6) + 8] |= 1 << v18;
      *(v23[6] + 8 * v18) = v10;
      *(v23[7] + 8 * v18) = v11;
      v26 = v23[2];
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_15;
      }

      v23[2] = v28;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  sub_268129504(0, &qword_28024DB40, 0x277D44700);
  result = sub_2683D0608();
  __break(1u);
  return result;
}

void sub_26815DB0C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a2;
  v37 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DBC0, &unk_2683D4320);
  MEMORY[0x28223BE20](v6);
  v8 = (&v35 - v7);
  v9 = type metadata accessor for Snippet.Reminder(0);
  v45 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v47 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0;
  v12 = *(a3 + 64);
  v40 = a3 + 64;
  v41 = 0;
  v13 = 1 << *(a3 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & v12;
  v16 = (v13 + 63) >> 6;
  v44 = a4 & 0xC000000000000001;
  v17 = a4 & 0xFFFFFFFFFFFFFF8;
  if (a4 < 0)
  {
    v17 = a4;
  }

  v42 = v17;
  v50 = a4 + 56;
  v48 = v8;
  v46 = (v13 + 63) >> 6;
  v38 = v6;
  v39 = a3;
  while (v15)
  {
    v49 = (v15 - 1) & v15;
    v18 = __clz(__rbit64(v15)) | (v11 << 6);
    v19 = v47;
LABEL_14:
    v22 = *(*(a3 + 48) + 8 * v18);
    sub_26815E3F0(*(a3 + 56) + *(v45 + 72) * v18, v19);
    *v8 = v22;
    sub_26815E3F0(v19, v8 + *(v6 + 48));
    if (v44)
    {
      v43 = v18;
      v23 = v22;
      v24 = sub_2683D00D8();
      sub_26812D9E0(v48, &qword_28024DBC0, &unk_2683D4320);
      sub_26815E454(v19);

      v8 = v48;
      v15 = v49;
      v16 = v46;
      if (v24)
      {
LABEL_22:
        *(v37 + ((v43 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v43;
        if (__OFADD__(v41++, 1))
        {
          goto LABEL_29;
        }
      }
    }

    else
    {
      if (*(a4 + 16))
      {
        v43 = v18;
        sub_268129504(0, &qword_28024DB40, 0x277D44700);
        v25 = v22;
        v26 = v22;
        v27 = sub_2683CFF58();
        v28 = ~(-1 << *(a4 + 32));
        while (1)
        {
          v29 = v27 & v28;
          if (((*(v50 + (((v27 & v28) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v27 & v28)) & 1) == 0)
          {
            break;
          }

          v30 = a4;
          v31 = *(*(a4 + 48) + 8 * v29);
          v32 = sub_2683CFF68();

          a4 = v30;
          v25 = v22;
          v27 = v29 + 1;
          if (v32)
          {
            v8 = v48;
            sub_26812D9E0(v48, &qword_28024DBC0, &unk_2683D4320);
            sub_26815E454(v47);

            v6 = v38;
            a3 = v39;
            v16 = v46;
            v15 = v49;
            goto LABEL_22;
          }
        }
      }

      else
      {
        v25 = v22;
        v34 = v22;
      }

      v8 = v48;
      sub_26812D9E0(v48, &qword_28024DBC0, &unk_2683D4320);
      sub_26815E454(v47);

      v6 = v38;
      a3 = v39;
      v16 = v46;
      v15 = v49;
    }
  }

  v20 = v11;
  v19 = v47;
  while (1)
  {
    v11 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v11 >= v16)
    {
      sub_26815DFAC(v37, v36, v41, a3);

      return;
    }

    v21 = *(v40 + 8 * v11);
    ++v20;
    if (v21)
    {
      v49 = (v21 - 1) & v21;
      v18 = __clz(__rbit64(v21)) | (v11 << 6);
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
}

unint64_t *sub_26815DF0C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    swift_bridgeObjectRetain_n();
    sub_26815DB0C(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

uint64_t sub_26815DFAC(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for Snippet.Reminder(0);
  v33 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  MEMORY[0x28223BE20](v9);
  v32 = &v31 - v10;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DC00, &unk_2683E3D90);
  result = sub_2683D03F8();
  v12 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 64;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v34 = (v13 - 1) & v13;
LABEL_16:
    v19 = v16 | (v14 << 6);
    v20 = *(a4[6] + 8 * v19);
    sub_26815E3F0(a4[7] + *(v33 + 72) * v19, v32);
    sub_26815E568();
    v21 = v20;
    result = sub_2683CFF58();
    v22 = -1 << *(v12 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v15 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v15 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    *(*(v12 + 48) + 8 * v25) = v21;
    result = sub_26815E568();
    ++*(v12 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_31;
    }

    a4 = v31;
    v13 = v34;
    if (!a3)
    {
      return v12;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      return v12;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v34 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_26815E2B0(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_2683CB468();
  }

  return OUTLINED_FUNCTION_9_0();
}

uint64_t sub_26815E30C(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (v2)
  {
    v3 = v2;
    sub_2683CFA78();
  }

  return OUTLINED_FUNCTION_9_0();
}

unint64_t sub_26815E368()
{
  result = qword_28024DB48;
  if (!qword_28024DB48)
  {
    sub_268129504(255, &qword_28024DB40, 0x277D44700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DB48);
  }

  return result;
}

uint64_t sub_26815E3F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Snippet.Reminder(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26815E454(uint64_t a1)
{
  v2 = type metadata accessor for Snippet.Reminder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26815E4B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D5D8, &qword_2683D4260);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26815E520(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26815E568()
{
  OUTLINED_FUNCTION_36_2();
  v1(0);
  OUTLINED_FUNCTION_1();
  v2 = OUTLINED_FUNCTION_9_0();
  v3(v2);
  return v0;
}

uint64_t sub_26815E5C0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_26815E600(uint64_t result, int a2, int a3)
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

uint64_t sub_26815E694@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

unint64_t sub_26815E6D0@<X0>(unint64_t result@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  if ((result & 0xC000000000000001) != 0)
  {
    v7 = sub_2683D02D8();
    v8 = 0;
    v9 = 0;
    v10 = 0;
    result = v7 | 0x8000000000000000;
  }

  else
  {
    v11 = -1;
    v12 = -1 << *(result + 32);
    v8 = result + 64;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v11 = ~(-1 << v13);
    }

    v10 = v11 & *(result + 64);
  }

  *a4 = result;
  a4[1] = v8;
  a4[2] = v9;
  a4[3] = 0;
  a4[4] = v10;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t sub_26815E768@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DBC0, &unk_2683D4320);
  MEMORY[0x28223BE20](v3);
  v5 = &v32 - v4;
  v6 = type metadata accessor for Snippet.Reminder(0);
  v33 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DBE8, &qword_2683D4340);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v15 = (&v32 - v14);
  v16 = *v1;
  v17 = v1[1];
  v18 = v1[2];
  v19 = v1[3];
  v20 = v1[4];
  v34 = v18;
  v35 = a1;
  v32 = v5;
  if (v20)
  {
    v21 = v19;
LABEL_7:
    v22 = (v20 - 1) & v20;
    v23 = __clz(__rbit64(v20)) | (v21 << 6);
    v24 = *(*(v16 + 48) + 8 * v23);
    sub_26815E3F0(*(v16 + 56) + *(v33 + 72) * v23, v8);
    *v15 = v24;
    sub_26815E568();
    __swift_storeEnumTagSinglePayload(v15, 0, 1, v3);
    v25 = v24;
LABEL_8:
    *v1 = v16;
    v1[1] = v17;
    v1[2] = v34;
    v1[3] = v19;
    v1[4] = v22;
    v26 = v1[5];
    sub_26815ECA4();
    v27 = 1;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v3);
    v29 = v35;
    if (EnumTagSinglePayload != 1)
    {
      v30 = v32;
      sub_26815ECA4();
      v26(v30);
      sub_26812D9E0(v30, &qword_28024DBC0, &unk_2683D4320);
      v27 = 0;
    }

    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DBD0, &qword_2683E6590);
    return __swift_storeEnumTagSinglePayload(v29, v27, 1, v31);
  }

  else
  {
    while (1)
    {
      v21 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v21 >= ((v18 + 64) >> 6))
      {
        __swift_storeEnumTagSinglePayload(&v32 - v14, 1, 1, v3);
        v22 = 0;
        goto LABEL_8;
      }

      v20 = *(v17 + 8 * v21);
      ++v19;
      if (v20)
      {
        v19 = v21;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_26815EA80(uint64_t result)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0x8000000000000000) != 0)
  {
    if (sub_2683D0368())
    {
      v8 = v7;
      sub_268129504(0, &qword_28024DB40, 0x277D44700);
      swift_dynamicCast();
      v9 = v17[0];
      v16 = v8;
      sub_268129504(0, &qword_28024DB60, 0x277D44750);
      swift_dynamicCast();
      v10 = v17[0];
      if (v17[0])
      {
LABEL_13:
        v15 = v2[5];
        v17[0] = v9;
        v17[1] = v10;
        v15(&v16, v17);
      }
    }
  }

  else
  {
    v5 = v1[3];
    v4 = v2[4];
    if (v4)
    {
      v6 = v2[3];
LABEL_11:
      v11 = (v4 - 1) & v4;
      v12 = (v6 << 9) | (8 * __clz(__rbit64(v4)));
      v9 = *(*(v3 + 48) + v12);
      v13 = *(*(v3 + 56) + v12);
      v14 = v9;
      v10 = v13;
LABEL_12:
      v2[3] = v5;
      v2[4] = v11;
      if (v9)
      {
        goto LABEL_13;
      }
    }

    else
    {
      while (1)
      {
        v6 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        if (v6 >= ((v2[2] + 64) >> 6))
        {
          v10 = 0;
          v9 = 0;
          v11 = 0;
          goto LABEL_12;
        }

        v4 = *(v2[1] + 8 * v6);
        ++v5;
        if (v4)
        {
          v5 = v6;
          goto LABEL_11;
        }
      }

      __break(1u);
    }
  }
}

id sub_26815EC04@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = sub_26815D080(&v5, *a1, a1[1]);
  v4 = v5;
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_26815EC40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Snippet.Reminder(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26815ECA4()
{
  OUTLINED_FUNCTION_36_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_1();
  v3 = OUTLINED_FUNCTION_9_0();
  v4(v3);
  return v0;
}

uint64_t sub_26815ED48()
{
  OUTLINED_FUNCTION_36_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_1();
  v3 = OUTLINED_FUNCTION_9_0();
  v4(v3);
  return v0;
}

uint64_t OUTLINED_FUNCTION_0_11(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_21_3(uint64_t a1, uint64_t *a2, uint64_t *a3)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
}

double OUTLINED_FUNCTION_30_1()
{
  result = 0.0;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0;
  *(v0 + 72) = 3;
  return result;
}

uint64_t OUTLINED_FUNCTION_33_3()
{

  return swift_dynamicCast();
}

unint64_t OUTLINED_FUNCTION_34_3(uint64_t a1, unint64_t a2)
{

  return sub_2681610A0(a1, a2, (v2 - 96));
}

uint64_t OUTLINED_FUNCTION_50_1()
{

  return sub_268151B3C(0, 0, 255);
}

uint64_t type metadata accessor for NotebookBaseCATs(uint64_t a1)
{
  result = qword_28024DC28;
  if (!qword_28024DC28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26815F10C()
{
  OUTLINED_FUNCTION_14();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26815F1A8);
}

uint64_t sub_26815F1A8()
{
  v1 = v0[5];
  v2 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v3 = swift_allocObject();
  v0[6] = v3;
  *(v3 + 16) = xmmword_2683D1EC0;
  *(v3 + 32) = 0x4E746361746E6F63;
  *(v3 + 40) = 0xEB00000000656D61;
  sub_26812C2A8(v2, v1, &unk_28024E7C0, &unk_2683D6CA0);
  v4 = sub_2683CF168();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v4);
  v6 = v0[5];
  if (EnumTagSinglePayload == 1)
  {
    sub_26812C310(v0[5], &unk_28024E7C0, &unk_2683D6CA0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v4;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v3 + 48));
    (*(*(v4 - 8) + 32))(boxed_opaque_existential_0, v6, v4);
  }

  v11 = (*MEMORY[0x277D55BF0] + MEMORY[0x277D55BF0]);
  v8 = swift_task_alloc();
  v0[7] = v8;
  *v8 = v0;
  v9 = OUTLINED_FUNCTION_3_3(v8);

  return v11(v9, 0xD000000000000021, 0x80000002683FD3F0, v3);
}

uint64_t sub_26815F374()
{
  OUTLINED_FUNCTION_14();
  v2 = *v1;
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_26();
  *v5 = v4;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26815F4AC);
  }

  else
  {

    OUTLINED_FUNCTION_40();

    return v6();
  }
}

uint64_t sub_26815F4AC()
{
  OUTLINED_FUNCTION_14();

  OUTLINED_FUNCTION_40();

  return v0();
}

uint64_t sub_26815F510(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_26815F528()
{
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v2 = swift_allocObject();
  v0[5] = v2;
  *(v2 + 16) = xmmword_2683D1EC0;
  *(v2 + 32) = 0x72656767697274;
  *(v2 + 40) = 0xE700000000000000;
  v3 = 0;
  if (v1)
  {
    v3 = type metadata accessor for NotebookSpatialEventTriggerConcept(0);
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  *(v2 + 48) = v1;
  *(v2 + 72) = v3;
  OUTLINED_FUNCTION_5_5();
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v5 = OUTLINED_FUNCTION_3_3(v4);

  return v7(v5, 0xD000000000000037, 0x80000002683FD3B0, v2);
}

uint64_t sub_26815F65C()
{
  OUTLINED_FUNCTION_14();
  v2 = *v1;
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_26();
  *v5 = v4;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26815FC74);
  }

  else
  {

    OUTLINED_FUNCTION_40();

    return v6();
  }
}

uint64_t sub_26815F788(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_26815F7A0()
{
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v2 = swift_allocObject();
  v0[5] = v2;
  *(v2 + 16) = xmmword_2683D1EC0;
  *(v2 + 32) = 0x747065636E6F63;
  *(v2 + 40) = 0xE700000000000000;
  v3 = 0;
  if (v1)
  {
    v3 = type metadata accessor for NotebookSpatialEventTriggerConcept(0);
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  *(v2 + 48) = v1;
  *(v2 + 72) = v3;
  OUTLINED_FUNCTION_5_5();
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v5 = OUTLINED_FUNCTION_3_3(v4);

  return v7(v5, 0xD000000000000030, 0x80000002683FD370, v2);
}

uint64_t sub_26815F8D4()
{
  OUTLINED_FUNCTION_14();
  v2 = *v1;
  OUTLINED_FUNCTION_26();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_26();
  *v5 = v4;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26815FA00);
  }

  else
  {

    OUTLINED_FUNCTION_40();

    return v6();
  }
}

uint64_t sub_26815FA00()
{
  OUTLINED_FUNCTION_14();

  OUTLINED_FUNCTION_40();

  return v0();
}

uint64_t sub_26815FAB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2683CF238();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D258, &unk_2683D1F60);
  MEMORY[0x28223BE20](v9 - 8);
  sub_26812C2A8(a1, &v13 - v10, &qword_28024D258, &unk_2683D1F60);
  (*(v6 + 16))(v8, a2, v5);
  v11 = sub_2683CF0A8();
  (*(v6 + 8))(a2, v5);
  sub_26812C310(a1, &qword_28024D258, &unk_2683D1F60);
  return v11;
}

uint64_t sub_26815FC3C()
{
  v0 = sub_2683CF0C8();

  return MEMORY[0x2821FE8D8](v0, 16, 7);
}

uint64_t OUTLINED_FUNCTION_5_5()
{
}

uint64_t DIIdentifier.namespace.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DIIdentifier.namespace.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t DIIdentifier.id.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t DIIdentifier.id.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

SiriNotebook::DIIdentifier __swiftcall DIIdentifier.init(namespace:id:)(Swift::String a1, Swift::String id)
{
  *v2 = a1;
  v2[1] = id;
  result.id = id;
  result.namespace = a1;
  return result;
}

uint64_t DIIdentifier.payloadId.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = *v0;

  OUTLINED_FUNCTION_3_4();
  MEMORY[0x26D616690](v1, v2);
  return v4;
}

uint64_t DirectInvocationCodable.init(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v73 = a4;
  v78[4] = *MEMORY[0x277D85DE8];
  v7 = sub_2683CCBD8();
  OUTLINED_FUNCTION_1_7();
  v72 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_1();
  v71 = v10;
  MEMORY[0x28223BE20](v11);
  v70 = &v69 - v12;
  OUTLINED_FUNCTION_1_7();
  v69 = v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = a1;
  v17 = sub_2683CCBB8();
  v19 = v18;
  v20 = a2;
  (*(a3 + 32))(v78, a2, a3);
  v21 = v78[2];
  v22 = v78[3];
  v76 = v78[0];
  v77 = v78[1];

  OUTLINED_FUNCTION_3_4();
  MEMORY[0x26D616690](v21, v22);

  v23 = v17 == v76 && v19 == v77;
  v74 = v20;
  if (v23)
  {
  }

  else
  {
    v24 = sub_2683D0598();

    if ((v24 & 1) == 0)
    {
      (v72)[1](v75, v7);
LABEL_17:
      v68 = 1;
      v67 = v73;
      return __swift_storeEnumTagSinglePayload(v67, v68, 1, v74);
    }
  }

  v25 = v75;
  v26 = v7;
  if (!sub_2683CCBC8())
  {
    sub_2683CF9D8();
  }

  v27 = v72;
  v28 = v16;
  v29 = objc_opt_self();
  v30 = sub_2683CF9B8();

  v78[0] = 0;
  v31 = [v29 dataWithPropertyList:v30 format:200 options:0 error:v78];

  v32 = v78[0];
  v33 = v70;
  if (!v31)
  {
    v37 = v32;
    v38 = sub_2683CB388();

    swift_willThrow();
    v39 = v71;
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v40 = sub_2683CF7E8();
    __swift_project_value_buffer(v40, qword_28027C958);
    v41 = v27[2];
    v41(v33, v25, v26);
    v41(v39, v25, v26);
    v42 = v38;
    v43 = sub_2683CF7C8();
    v44 = sub_2683CFE78();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      LODWORD(v71) = v44;
      v46 = v33;
      v47 = v45;
      v72 = swift_slowAlloc();
      v78[0] = v72;
      *v47 = 136315906;
      v48 = sub_2683CCBB8();
      v49 = v39;
      v51 = v50;
      v52 = v27[1];
      v52(v46, v26);
      v53 = sub_2681610A0(v48, v51, v78);

      *(v47 + 4) = v53;
      *(v47 + 12) = 2080;
      v76 = v38;
      v54 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3E0, &qword_2683D2360);
      v55 = sub_2683CFAD8();
      v57 = sub_2681610A0(v55, v56, v78);

      *(v47 + 14) = v57;
      *(v47 + 22) = 2080;
      swift_getErrorValue();
      v58 = sub_2683D0638();
      v60 = sub_2681610A0(v58, v59, v78);

      *(v47 + 24) = v60;
      *(v47 + 32) = 2080;
      v76 = sub_2683CCBC8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DC38, &qword_2683D4408);
      v61 = sub_2683CFAD8();
      v63 = v62;
      v52(v49, v26);
      v64 = sub_2681610A0(v61, v63, v78);

      *(v47 + 34) = v64;
      _os_log_impl(&dword_2680EB000, v43, v71, "Decode failed for DI %s with error: %s [%s]\n User data: %s", v47, 0x2Au);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();

      v52(v75, v26);
    }

    else
    {

      v65 = v27[1];
      v65(v25, v26);
      v65(v39, v26);
      v65(v33, v26);
    }

    goto LABEL_17;
  }

  v34 = sub_2683CB468();
  v36 = v35;

  sub_2683CB348();
  swift_allocObject();
  sub_2683CB338();
  sub_2683CB328();
  (v27)[1](v75, v26);

  sub_268143054(v34, v36);
  v67 = v73;
  (*(v69 + 32))(v73, v28, v74);
  v68 = 0;
  return __swift_storeEnumTagSinglePayload(v67, v68, 1, v74);
}

id DirectInvocationCodable.asPayload.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_7();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268161610();
  (*(v6 + 16))(v9, v2, a1);
  return SKIDirectInvocationPayload.init<A>(_:)(v9, a1, a2);
}

id SKIDirectInvocationPayload.init<A>(_:)(char *a1, uint64_t a2, uint64_t a3)
{
  v59[4] = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_7();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_1();
  v54 = v9;
  MEMORY[0x28223BE20](v10);
  v56 = &v51 - v11;
  v12 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  (*(a3 + 32))(v59, a2, a3);
  v13 = v59[2];
  v14 = v59[3];
  v57 = v59[0];
  v58 = v59[1];

  OUTLINED_FUNCTION_3_4();
  MEMORY[0x26D616690](v13, v14);
  v15 = sub_2683CFA68();

  v16 = a1;

  v17 = [v12 initWithIdentifier_];

  sub_2683CB378();
  swift_allocObject();
  sub_2683CB368();
  v40 = sub_2683CB358();
  v42 = v41;

  v43 = objc_opt_self();
  v44 = sub_2683CB448();
  v59[0] = 0;
  v45 = [v43 propertyListWithData:v44 options:0 format:0 error:v59];

  if (v45)
  {
    v46 = v59[0];
    sub_2683D0038();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DC48, &qword_2683D4410);
    if (swift_dynamicCast())
    {
      sub_268160CEC(v57);

      v47 = sub_2683CF9B8();
    }

    else
    {
      v47 = 0;
    }

    [v17 setUserData_];
    sub_268143054(v40, v42);

    (*(v7 + 8))(a1, a2);
  }

  else
  {
    v48 = v59[0];
    v49 = sub_2683CB388();

    swift_willThrow();
    sub_268143054(v40, v42);
    v55 = v17;
    v18 = v56;
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v19 = sub_2683CF7E8();
    __swift_project_value_buffer(v19, qword_28027C958);
    v20 = *(v7 + 16);
    v20(v18, v16, a2);
    v21 = v49;
    v22 = sub_2683CF7C8();
    v23 = sub_2683CFE78();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v59[0] = v53;
      *v24 = 136315650;
      v57 = v49;
      v25 = v49;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3E0, &qword_2683D2360);
      v26 = sub_2683CFAD8();
      HIDWORD(v51) = v23;
      v28 = sub_2681610A0(v26, v27, v59);
      v52 = v16;
      v29 = v7;
      v30 = v28;

      *(v24 + 4) = v30;
      *(v24 + 12) = 2080;
      swift_getErrorValue();
      v31 = sub_2683D0638();
      v33 = sub_2681610A0(v31, v32, v59);

      *(v24 + 14) = v33;
      *(v24 + 22) = 2080;
      v20(v54, v18, a2);
      v34 = sub_2683CFAD8();
      v36 = v35;
      v37 = *(v29 + 8);
      v37(v18, a2);
      v38 = sub_2681610A0(v34, v36, v59);

      *(v24 + 24) = v38;
      _os_log_impl(&dword_2680EB000, v22, BYTE4(v51), "Failed to serialize DirectInvocation with error: %s - %s. Object: %s", v24, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();

      v37(v52, a2);
    }

    else
    {

      v39 = *(v7 + 8);
      v39(v16, a2);
      v39(v18, a2);
    }

    return v55;
  }

  return v17;
}

id DirectInvocationCodable.serializeToAceCommand(context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_opt_self();
  v7 = DirectInvocationCodable.asPayload.getter(a2, a3);
  v8 = [v6 runSiriKitExecutorCommandWithContext:a1 payload:v7];

  return v8;
}

id DirectInvocationCodable.serializeToStartLocalRequest(context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = DirectInvocationCodable.serializeToAceCommand(context:)(a1, a2, a3);
  v4 = [objc_opt_self() wrapCommandInStartLocalRequest_];

  return v4;
}

uint64_t DirectInvocationCodable.serializeToBase64(context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = DirectInvocationCodable.serializeToAceCommand(context:)(a1, a2, a3);
  v4 = sub_2683CFF78();

  return v4;
}

uint64_t sub_268160CEC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DC50, &qword_2683D4488);
    v2 = sub_2683D03F8();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v5)) | (v9 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_26813CC6C(*(a1 + 56) + 32 * v11, v35);
    *&v34 = v14;
    *(&v34 + 1) = v13;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_268161678(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_268161678(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_268161678(v31, v32);
    result = sub_2683D00E8();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v7 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v18 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    v23 = *(v2 + 48) + 40 * v18;
    *v23 = v24;
    *(v23 + 16) = v25;
    *(v23 + 32) = v26;
    result = sub_268161678(v32, (*(v2 + 56) + 32 * v18));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t Parse.DirectInvocation.is<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2683CCBB8();
  v7 = v6;
  (*(a3 + 32))(v15, a2, a3);
  v8 = v15[2];
  v9 = v15[3];
  v13 = v15[0];
  v14 = v15[1];

  OUTLINED_FUNCTION_3_4();
  MEMORY[0x26D616690](v8, v9);

  if (v5 == v13 && v7 == v14)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2683D0598();
  }

  return v11 & 1;
}

unint64_t sub_2681610A0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_268161164(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_26813CC6C(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_268161164(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_268161264(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_2683D01E8();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_268161264(uint64_t a1, unint64_t a2)
{
  v3 = sub_2681612B0(a1, a2);
  sub_2681613C8(&unk_2878FAD40);
  return v3;
}

uint64_t sub_2681612B0(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_2683CFBC8())
  {
    result = sub_2681614AC(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_2683D0158();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_2683D01E8();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2681613C8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_26816151C(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2681614AC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DC58, &qword_2683D4490);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_26816151C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DC58, &qword_2683D4490);
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

unint64_t sub_268161610()
{
  result = qword_28024DC40;
  if (!qword_28024DC40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28024DC40);
  }

  return result;
}

_OWORD *sub_268161678(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void OUTLINED_FUNCTION_3_4()
{

  JUMPOUT(0x26D616690);
}

uint64_t sub_2681616D0()
{
  v0 = sub_2683CDAB8();
  v1 = MEMORY[0x277D84F90];
  if (v0)
  {
    v2 = v0;
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  swift_getKeyPath();
  result = sub_2683ABE58();
  v4 = result;
  v5 = 0;
  v6 = v1;
  while (1)
  {
    if (v4 == v5)
    {

      result = sub_2683ABE58();
      v8 = result;
      for (i = 0; ; ++i)
      {
        if (v8 == i)
        {

          swift_getKeyPath();
          v14 = MEMORY[0x277D84F90];
          v19 = MEMORY[0x277D84F90];
          result = sub_2683ABE58();
          v15 = result;
          v16 = 0;
          while (v15 != v16)
          {
            if ((v1 & 0xC000000000000001) != 0)
            {
              result = MEMORY[0x26D616C90](v16, v1);
            }

            else
            {
              if (v16 >= *(v1 + 16))
              {
                goto LABEL_49;
              }
            }

            v17 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              goto LABEL_48;
            }

            swift_getAtKeyPath();

            ++v16;
            if (v18)
            {
              MEMORY[0x26D616770](result);
              if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_2683CFCD8();
              }

              result = sub_2683CFD08();
              v14 = v19;
              v16 = v17;
            }
          }

          return v14;
        }

        if ((v6 & 0xC000000000000001) != 0)
        {
          result = MEMORY[0x26D616C90](i, v6);
        }

        else
        {
          if (i >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_47;
          }
        }

        if (__OFADD__(i, 1))
        {
          goto LABEL_46;
        }

        v10 = sub_2683CD4B8();
        if (!v11)
        {
          break;
        }

        if (v10 == 0x7465536F54646461 && v11 == 0xE800000000000000)
        {
        }

        else
        {
          v13 = sub_2683D0598();

          if ((v13 & 1) == 0)
          {
            break;
          }
        }

        sub_2683D01F8();
        sub_2683D0238();
        sub_2683D0248();
        result = sub_2683D0208();
LABEL_30:
        ;
      }

      goto LABEL_30;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x26D616C90](v5, v2);
    }

    else
    {
      if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_45;
      }
    }

    v7 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    swift_getAtKeyPath();

    ++v5;
    if (v18)
    {
      MEMORY[0x26D616770](result);
      if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2683CFCD8();
      }

      result = sub_2683CFD08();
      v6 = v1;
      v5 = v7;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

void *sub_268161A6C@<X0>(void *a1@<X8>)
{
  result = sub_2683CD4C8();
  *a1 = v3;
  return result;
}

uint64_t sub_268161AA8()
{
  v0 = sub_2683CDAB8();
  v1 = MEMORY[0x277D84F90];
  if (v0)
  {
    v2 = v0;
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v11 = MEMORY[0x277D84F90];
  result = sub_2683ABE58();
  v4 = result;
  for (i = 0; v4 != i; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x26D616C90](i, v2);
    }

    else
    {
      if (i >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      return result;
    }

    if (sub_2683CD438())
    {
    }

    else
    {
      sub_2683D01F8();
      sub_2683D0238();
      sub_2683D0248();
      result = sub_2683D0208();
    }
  }

  v6 = v11;
  swift_getKeyPath();
  v12 = v1;
  result = sub_2683ABE58();
  v7 = result;
  v8 = 0;
  while (v7 != v8)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x26D616C90](v8, v6);
    }

    else
    {
      if (v8 >= *(v6 + 16))
      {
        goto LABEL_30;
      }
    }

    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_29;
    }

    swift_getAtKeyPath();

    ++v8;
    if (v10)
    {
      MEMORY[0x26D616770](result);
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2683CFCD8();
      }

      result = sub_2683CFD08();
      v1 = v12;
      v8 = v9;
    }
  }

  return v1;
}

uint64_t sub_268161CE4()
{
  v0 = sub_2683CDAB8();
  v1 = MEMORY[0x277D84F90];
  if (!v0)
  {
    return v1;
  }

  v2 = v0;
  swift_getKeyPath();
  v8 = v1;
  result = sub_2683ABE58();
  v4 = result;
  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {

      return v1;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x26D616C90](v5, v2);
    }

    else
    {
      if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }
    }

    v6 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    swift_getAtKeyPath();

    ++v5;
    if (v7)
    {
      MEMORY[0x26D616770](result);
      if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2683CFCD8();
      }

      result = sub_2683CFD08();
      v1 = v8;
      v5 = v6;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_268161E50()
{
  v0 = sub_2681616D0();
  if (sub_2683ABE58())
  {
    return v0;
  }

  return sub_268161AA8();
}

uint64_t sub_268161EA4()
{
  result = sub_2683CDAB8();
  if (result)
  {
    v1 = result;
    result = sub_2683ABE58();
    v2 = result;
    for (i = 0; ; ++i)
    {
      if (v2 == i)
      {

        return 0;
      }

      if ((v1 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x26D616C90](i, v1);
      }

      else
      {
        if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      if (sub_2683CD438() && (v4 = sub_2683CD4B8(), v6 = v5, , v6))
      {
        if (v4 == 0x724665766F6D6572 && v6 == 0xED00007465536D6FLL)
        {

          return 1;
        }

        v8 = sub_2683D0598();

        if (v8)
        {

          return 1;
        }
      }

      else
      {
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  return result;
}

uint64_t sub_26816201C(uint64_t a1)
{

  sub_2683CDDE8();
  OUTLINED_FUNCTION_0_12();
  sub_2683CDDD8();
  if (v9)
  {
    sub_2683CD7C8();
  }

  OUTLINED_FUNCTION_0_12();
  sub_2683CDDD8();
  if (v9 && (v1 = sub_2683CD7D8(), , v1))
  {
    swift_getKeyPath();
    v8 = MEMORY[0x277D84F90];
    result = sub_2683ABE58();
    v3 = result;
    v4 = 0;
    while (1)
    {
      if (v3 == v4)
      {

        goto LABEL_18;
      }

      if ((v1 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x26D616C90](v4, v1);
      }

      else
      {
        if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }
      }

      v5 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      swift_getAtKeyPath();

      ++v4;
      if (v7)
      {
        MEMORY[0x26D616770](result);
        if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2683CFCD8();
        }

        result = sub_2683CFD08();
        v4 = v5;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {
LABEL_18:
    OUTLINED_FUNCTION_0_12();
    sub_2683CDDE8();

    if (!v9 || (v6 = sub_2683CD4E8(), , !v6))
    {
      OUTLINED_FUNCTION_0_12();
      sub_2683CDDD8();
      if (v9)
      {
        sub_2683CD4E8();
      }
    }

    return v9;
  }

  return result;
}

id sub_268162270(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4B0, &unk_2683D26E0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  if (!a1)
  {
    return 0;
  }

  sub_2683CD7B8();
  if (!v8)
  {
    return 0;
  }

  sub_268129504(0, &qword_280253310, 0x277CD4220);
  sub_268129504(0, &qword_28024CDB8, 0x277CD4188);
  v9 = sub_26835E5F8();
  v10 = sub_2683CB0D8();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v10);
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v10);
  return sub_26835E66C(v9, 0, 0, 0, 0, v7, v5, 0, 0, 0, 0, 0, 0, 0);
}

uint64_t sub_2681623EC(uint64_t a1)
{
  v2 = sub_2683CD928();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DC60, &qword_2683D4660);
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DC68, &qword_2683D4668);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v23 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v23 - v16;
  if (a1 && sub_2683CD4D8())
  {
    sub_2683CD918();
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v17, 1, 1, v2);
  }

  (*(v3 + 104))(v15, *MEMORY[0x277D5EA28], v2);
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v2);
  v18 = *(v6 + 48);
  sub_26816284C(v17, v8);
  sub_26816284C(v15, &v8[v18]);
  OUTLINED_FUNCTION_2_6(v8);
  if (!v20)
  {
    sub_26816284C(v8, v12);
    OUTLINED_FUNCTION_2_6(&v8[v18]);
    if (!v20)
    {
      (*(v3 + 32))(v5, &v8[v18], v2);
      sub_2681628BC();
      v19 = sub_2683CFA58();
      v21 = *(v3 + 8);
      v21(v5, v2);
      sub_26812C310(v15, &qword_28024DC68, &qword_2683D4668);
      sub_26812C310(v17, &qword_28024DC68, &qword_2683D4668);
      v21(v12, v2);
      sub_26812C310(v8, &qword_28024DC68, &qword_2683D4668);
      return v19 & 1;
    }

    OUTLINED_FUNCTION_1_8(v15);
    OUTLINED_FUNCTION_1_8(v17);
    (*(v3 + 8))(v12, v2);
LABEL_13:
    sub_26812C310(v8, &qword_28024DC60, &qword_2683D4660);
    v19 = 0;
    return v19 & 1;
  }

  OUTLINED_FUNCTION_1_8(v15);
  OUTLINED_FUNCTION_1_8(v17);
  OUTLINED_FUNCTION_2_6(&v8[v18]);
  if (!v20)
  {
    goto LABEL_13;
  }

  sub_26812C310(v8, &qword_28024DC68, &qword_2683D4668);
  v19 = 1;
  return v19 & 1;
}

uint64_t sub_268162794(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_2681627E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_26816284C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DC68, &qword_2683D4668);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2681628BC()
{
  result = qword_28024DC70;
  if (!qword_28024DC70)
  {
    sub_2683CD928();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DC70);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_8(uint64_t a1)
{

  return sub_26812C310(a1, v1, v2);
}

uint64_t type metadata accessor for SetTaskAttributeCATPatternsExecutor(uint64_t a1)
{
  result = qword_28024DC78;
  if (!qword_28024DC78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2681629E4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_2681629F8()
{
  OUTLINED_FUNCTION_25();
  v8 = v1;
  OUTLINED_FUNCTION_15();
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v3 = swift_allocObject();
  v0[4] = v3;
  OUTLINED_FUNCTION_4(v3, xmmword_2683D1EC0);
  v3[4].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D268, &unk_2683D1F70);
  v3[3].n128_u64[0] = v2;
  OUTLINED_FUNCTION_12();
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  OUTLINED_FUNCTION_9(v4);
  v5 = OUTLINED_FUNCTION_17(49);

  return v6(v5);
}

uint64_t sub_268162AF4()
{
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11();

    return MEMORY[0x2822009F8](v7);
  }

  else
  {

    v8 = OUTLINED_FUNCTION_5();

    return v9(v8);
  }
}

uint64_t sub_268162C20(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_268162C34()
{
  OUTLINED_FUNCTION_25();
  v8 = v1;
  OUTLINED_FUNCTION_15();
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v3 = swift_allocObject();
  v0[4] = v3;
  OUTLINED_FUNCTION_4(v3, xmmword_2683D1EC0);
  v3[4].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D268, &unk_2683D1F70);
  v3[3].n128_u64[0] = v2;
  OUTLINED_FUNCTION_12();
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  OUTLINED_FUNCTION_9(v4);
  v5 = OUTLINED_FUNCTION_17(39);

  return v6(v5);
}

uint64_t sub_268162D30(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_268162D44()
{
  OUTLINED_FUNCTION_25();
  v8 = v1;
  OUTLINED_FUNCTION_15();
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v3 = swift_allocObject();
  v0[4] = v3;
  OUTLINED_FUNCTION_4(v3, xmmword_2683D1EC0);
  v3[4].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D268, &unk_2683D1F70);
  v3[3].n128_u64[0] = v2;
  OUTLINED_FUNCTION_12();
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  OUTLINED_FUNCTION_9(v4);
  v5 = OUTLINED_FUNCTION_17(38);

  return v6(v5);
}

uint64_t sub_268162E40()
{
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11();

    return MEMORY[0x2822009F8](v7);
  }

  else
  {

    v8 = OUTLINED_FUNCTION_5();

    return v9(v8);
  }
}

uint64_t sub_268162F6C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_268163024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2683CF238();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D258, &unk_2683D1F60);
  MEMORY[0x28223BE20](v9 - 8);
  sub_268163198(a1, &v13 - v10);
  (*(v6 + 16))(v8, a2, v5);
  v11 = sub_2683CF0A8();
  (*(v6 + 8))(a2, v5);
  sub_268163208(a1);
  return v11;
}

uint64_t sub_268163198(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D258, &unk_2683D1F60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_268163208(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D258, &unk_2683D1F60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_268163274(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_0_13();
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - v5;
  type metadata accessor for NotebookSpatialEventTriggerConcept.Builder(0);
  swift_allocObject();
  v7 = sub_2681E0784();
  sub_2683C7AE4([a1 event], v6);
  v8 = OBJC_IVAR____TtCC12SiriNotebook34NotebookSpatialEventTriggerConcept7Builder_event;
  OUTLINED_FUNCTION_2_7();
  sub_268163BC8(v6, v7 + v8);
  swift_endAccess();
  sub_26812C310(v6, &unk_28024E7C0, &unk_2683D6CA0);
  if ([a1 mobileSpace] == 1)
  {
    sub_2683CFB38();
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = sub_2683CF168();
  __swift_storeEnumTagSinglePayload(v1, v9, 1, v10);
  v11 = OBJC_IVAR____TtCC12SiriNotebook34NotebookSpatialEventTriggerConcept7Builder_mobileSpace;
  OUTLINED_FUNCTION_2_7();
  sub_268163BC8(v1, v7 + v11);
  swift_endAccess();
  sub_26812C310(v1, &unk_28024E7C0, &unk_2683D6CA0);
  sub_2683CF088();
  v12 = sub_26812E314([a1 placemark]);
  v13 = sub_2681E07F4(v12);

  type metadata accessor for NotebookSpatialEventTriggerConcept(0);
  swift_allocObject();
  v14 = sub_2681E08AC(v13);

  return v14;
}

uint64_t sub_26816349C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_26816350C()
{
  result = qword_28024DC90;
  if (!qword_28024DC90)
  {
    sub_2683CF168();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DC90);
  }

  return result;
}

uint64_t sub_268163574(uint64_t a1)
{
  v3 = sub_2683CF168();
  OUTLINED_FUNCTION_0_3();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DC88, &qword_2683D4708);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  MEMORY[0x28223BE20](v13 - 8);
  OUTLINED_FUNCTION_0_13();
  MEMORY[0x28223BE20](v14);
  v16 = &v23 - v15;
  v17 = OBJC_IVAR____TtC12SiriNotebook34NotebookSpatialEventTriggerConcept_event;
  sub_2683CFB38();
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v3);
  v18 = *(v10 + 56);
  sub_26816349C(v1 + v17, v12);
  sub_26816349C(v16, &v12[v18]);
  OUTLINED_FUNCTION_3_5(v12);
  if (!v20)
  {
    sub_26816349C(v12, v2);
    OUTLINED_FUNCTION_3_5(&v12[v18]);
    if (!v20)
    {
      (*(v5 + 32))(v8, &v12[v18], v3);
      sub_26816350C();
      v19 = sub_2683CFA58();
      v21 = *(v5 + 8);
      v21(v8, v3);
      sub_26812C310(v16, &unk_28024E7C0, &unk_2683D6CA0);
      v21(v2, v3);
      sub_26812C310(v12, &unk_28024E7C0, &unk_2683D6CA0);
      return v19 & 1;
    }

    sub_26812C310(v16, &unk_28024E7C0, &unk_2683D6CA0);
    (*(v5 + 8))(v2, v3);
LABEL_9:
    sub_26812C310(v12, &qword_28024DC88, &qword_2683D4708);
    v19 = 0;
    return v19 & 1;
  }

  sub_26812C310(v16, &unk_28024E7C0, &unk_2683D6CA0);
  OUTLINED_FUNCTION_3_5(&v12[v18]);
  if (!v20)
  {
    goto LABEL_9;
  }

  sub_26812C310(v12, &unk_28024E7C0, &unk_2683D6CA0);
  v19 = 1;
  return v19 & 1;
}

uint64_t sub_268163894(uint64_t a1)
{
  v3 = v1;
  v4 = sub_2683CF168();
  OUTLINED_FUNCTION_0_3();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v26[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DC88, &qword_2683D4708);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v26[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v26[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v19 = &v26[-v18];
  v20 = OBJC_IVAR____TtC12SiriNotebook34NotebookSpatialEventTriggerConcept_mobileSpace;
  sub_2683CFB38();
  __swift_storeEnumTagSinglePayload(v19, 0, 1, v4);
  v21 = *(v11 + 56);
  sub_26816349C(v3 + v20, v13);
  sub_26816349C(v19, &v13[v21]);
  OUTLINED_FUNCTION_4_6(v13);
  if (v22)
  {
    sub_26812C310(v19, &unk_28024E7C0, &unk_2683D6CA0);
    OUTLINED_FUNCTION_4_6(&v13[v21]);
    if (v22)
    {
      sub_26812C310(v13, &unk_28024E7C0, &unk_2683D6CA0);
LABEL_12:
      v23 = sub_268163574(a1);
      return v23 & 1;
    }

    goto LABEL_9;
  }

  sub_26816349C(v13, v17);
  OUTLINED_FUNCTION_4_6(&v13[v21]);
  if (v22)
  {
    sub_26812C310(v19, &unk_28024E7C0, &unk_2683D6CA0);
    (*(v6 + 8))(v17, v4);
LABEL_9:
    sub_26812C310(v13, &qword_28024DC88, &qword_2683D4708);
    goto LABEL_10;
  }

  (*(v6 + 32))(v9, &v13[v21], v4);
  sub_26816350C();
  v27 = sub_2683CFA58();
  v24 = *(v6 + 8);
  v24(v9, v4);
  sub_26812C310(v19, &unk_28024E7C0, &unk_2683D6CA0);
  v24(v17, v4);
  sub_26812C310(v13, &unk_28024E7C0, &unk_2683D6CA0);
  if (v27)
  {
    goto LABEL_12;
  }

LABEL_10:
  v23 = 0;
  return v23 & 1;
}

uint64_t sub_268163BC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_2_7()
{

  return swift_beginAccess();
}

uint64_t Snippet.Note.identifier.setter()
{
  OUTLINED_FUNCTION_13_3();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Snippet.Note.title.setter()
{
  OUTLINED_FUNCTION_13_3();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Snippet.Note.groupName.setter()
{
  OUTLINED_FUNCTION_13_3();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Snippet.Note.textContent.setter()
{
  OUTLINED_FUNCTION_13_3();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t Snippet.Note.init(identifier:title:groupName:textContent:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

uint64_t static Snippet.Note.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v8 = a1[5];
  v7 = a1[6];
  v9 = a1[7];
  v10 = a2[1];
  v11 = a2[2];
  v13 = a2[3];
  v12 = a2[4];
  v15 = a2[5];
  v14 = a2[6];
  v16 = a2[7];
  if (v3)
  {
    if (!v10)
    {
      return 0;
    }

    if (*a1 != *a2 || v3 != v10)
    {
      v32 = a2[7];
      v33 = a1[4];
      v18 = a2[6];
      v19 = a1[7];
      v20 = a1[6];
      v21 = a2[4];
      v22 = sub_2683D0598();
      v12 = v21;
      v7 = v20;
      v9 = v19;
      v14 = v18;
      v16 = v32;
      v5 = v33;
      if ((v22 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (v4 != v11 || v6 != v13)
  {
    v24 = v7;
    v25 = v12;
    v26 = sub_2683D0598();
    v12 = v25;
    v7 = v24;
    if ((v26 & 1) == 0)
    {
      return 0;
    }
  }

  if (v8)
  {
    if (v15)
    {
      if (v5 == v12 && v8 == v15)
      {
        goto LABEL_22;
      }

      v28 = v7;
      v29 = sub_2683D0598();
      v7 = v28;
      if (v29)
      {
        goto LABEL_22;
      }
    }

    return 0;
  }

  if (v15)
  {
    return 0;
  }

LABEL_22:
  if (v7 == v14 && v9 == v16)
  {
    return 1;
  }

  return sub_2683D0598();
}

uint64_t sub_268164058(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_2683D0598() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
    if (v6 || (sub_2683D0598() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6D614E70756F7267 && a2 == 0xE900000000000065;
      if (v7 || (sub_2683D0598() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x746E6F4374786574 && a2 == 0xEB00000000746E65)
      {

        return 3;
      }

      else
      {
        v9 = sub_2683D0598();

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

uint64_t sub_2681641C8(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 0x656C746974;
      break;
    case 2:
      result = 0x6D614E70756F7267;
      break;
    case 3:
      result = 0x746E6F4374786574;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_268164260@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268164058(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268164288@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2681641C0();
  *a1 = result;
  return result;
}

uint64_t sub_2681642B0(uint64_t a1)
{
  v2 = sub_2681644F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2681642EC(uint64_t a1)
{
  v2 = sub_2681644F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Snippet.Note.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DC98, &qword_2683D4710);
  OUTLINED_FUNCTION_0_3();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = v14 - v7;
  v9 = v1[2];
  v14[5] = v1[3];
  v14[6] = v9;
  v10 = v1[4];
  v14[3] = v1[5];
  v14[4] = v10;
  v11 = v1[6];
  v14[1] = v1[7];
  v14[2] = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2681644F0();
  sub_2683D0718();
  v18 = 0;
  v12 = v14[7];
  sub_2683D04D8();
  if (!v12)
  {
    v17 = 1;
    OUTLINED_FUNCTION_2_8();
    sub_2683D0518();
    v16 = 2;
    OUTLINED_FUNCTION_2_8();
    sub_2683D04D8();
    v15 = 3;
    OUTLINED_FUNCTION_2_8();
    sub_2683D0518();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_2681644F0()
{
  result = qword_28024DCA0;
  if (!qword_28024DCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DCA0);
  }

  return result;
}

uint64_t Snippet.Note.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 40);
  if (*(v1 + 8))
  {
    sub_2683D06B8();
    sub_2683CFB48();
  }

  else
  {
    sub_2683D06B8();
  }

  sub_2683CFB48();
  sub_2683D06B8();
  if (v2)
  {
    sub_2683CFB48();
  }

  return sub_2683CFB48();
}

uint64_t Snippet.Note.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 40);
  sub_2683D0698();
  sub_2683D06B8();
  if (v1)
  {
    sub_2683CFB48();
  }

  sub_2683CFB48();
  sub_2683D06B8();
  if (v2)
  {
    sub_2683CFB48();
  }

  sub_2683CFB48();
  return sub_2683D06D8();
}

uint64_t Snippet.Note.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DCA8, &qword_2683D4718);
  OUTLINED_FUNCTION_0_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2681644F0();
  sub_2683D06F8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    LOBYTE(v39[0]) = 0;
    OUTLINED_FUNCTION_1_9();
    v11 = sub_2683D0438();
    v13 = v12;
    v34 = v11;
    LOBYTE(v39[0]) = 1;
    OUTLINED_FUNCTION_1_9();
    v14 = sub_2683D0478();
    v16 = v15;
    v32 = v14;
    v33 = a2;
    LOBYTE(v39[0]) = 2;
    OUTLINED_FUNCTION_1_9();
    v17 = sub_2683D0438();
    v19 = v18;
    v31 = v17;
    v40 = 3;
    v20 = sub_2683D0478();
    v21 = v10;
    v23 = v22;
    (*(v7 + 8))(v21, v5);
    v24 = v34;
    *&v35 = v34;
    *(&v35 + 1) = v13;
    v25 = v32;
    *&v36 = v32;
    *(&v36 + 1) = v16;
    *&v37 = v31;
    *(&v37 + 1) = v19;
    *&v38 = v20;
    *(&v38 + 1) = v23;
    v26 = v36;
    v27 = v33;
    *v33 = v35;
    v27[1] = v26;
    v28 = v38;
    v27[2] = v37;
    v27[3] = v28;
    sub_268164A18(&v35, v39);
    __swift_destroy_boxed_opaque_existential_0(a1);
    v39[0] = v24;
    v39[1] = v13;
    v39[2] = v25;
    v39[3] = v16;
    v39[4] = v31;
    v39[5] = v19;
    v39[6] = v20;
    v39[7] = v23;
    return sub_268164A50(v39);
  }
}

uint64_t sub_2681649DC(uint64_t a1)
{
  sub_2683D0698();
  Snippet.Note.hash(into:)(v2);
  return sub_2683D06D8();
}

unint64_t sub_268164A84()
{
  result = qword_28024DCB0;
  if (!qword_28024DCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DCB0);
  }

  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_268164AF0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_268164B30(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t _s14descr2878F8F29V4NoteV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s14descr2878F8F29V4NoteV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_268164CF8()
{
  result = qword_28024DCB8;
  if (!qword_28024DCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DCB8);
  }

  return result;
}

unint64_t sub_268164D50()
{
  result = qword_28024DCC0;
  if (!qword_28024DCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DCC0);
  }

  return result;
}

unint64_t sub_268164DA8()
{
  result = qword_28024DCC8;
  if (!qword_28024DCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DCC8);
  }

  return result;
}

uint64_t sub_268164E38(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_268164E78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_268164EE4()
{
  OUTLINED_FUNCTION_14();
  v0[7] = v1;
  v0[8] = v2;
  v3 = sub_2683CF388();
  v0[9] = v3;
  OUTLINED_FUNCTION_3_1(v3);
  v0[10] = v4;
  v0[11] = OUTLINED_FUNCTION_15_1();
  v5 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_268164F88()
{
  sub_2683CFA78();
  sub_2683CF378();
  sub_2683CF368();
  *(v0 + 96) = sub_2683CF358();
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DCE0, &qword_2683E6230);
  v1 = sub_2683CF9D8();
  *(v0 + 104) = v1;
  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  *v2 = v0;
  v2[1] = sub_26816517C;
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);

  return MEMORY[0x2821C6040](v3, v4, 0, 0, v0 + 16, v1, 0, 0);
}

uint64_t sub_26816517C()
{
  v2 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v3 = v2;
  *v3 = *v1;

  if (v0)
  {

    sub_26812C310(v2 + 16, &qword_28024DCE8, &qword_2683D49C8);
    v4 = sub_268165384;
  }

  else
  {
    sub_26812C310(v2 + 16, &qword_28024DCE8, &qword_2683D49C8);

    v4 = sub_268165314;
  }

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_268165314()
{
  OUTLINED_FUNCTION_14();
  (*(v0[10] + 8))(v0[11], v0[9]);

  OUTLINED_FUNCTION_40();

  return v1();
}

uint64_t sub_268165384()
{
  OUTLINED_FUNCTION_14();
  (*(v0[10] + 8))(v0[11], v0[9]);
  v1 = sub_2683CF2F8();
  OUTLINED_FUNCTION_8_7(v1);
  OUTLINED_FUNCTION_40();

  return v2();
}

uint64_t sub_2681653FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[16] = a5;
  v6[17] = v5;
  v6[14] = a3;
  v6[15] = a4;
  v6[12] = a1;
  v6[13] = a2;
  v7 = OUTLINED_FUNCTION_48();
  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_26816542C()
{
  v6 = v0[16];
  sub_26813CA00(v0[17] + 40, (v0 + 7));
  v5 = (*(v6 + 8) + **(v6 + 8));
  v1 = swift_task_alloc();
  v0[18] = v1;
  *v1 = v0;
  v1[1] = sub_268165554;
  v2 = v0[15];
  v3 = v0[16];

  return v5(v0 + 2, v0 + 7, v2, v3);
}

uint64_t sub_268165554()
{
  OUTLINED_FUNCTION_14();
  v4 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v1 = v4;

  sub_268165AD4(v4 + 56);
  v2 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v2);
}

uint64_t sub_268165644()
{
  v1 = v0[5];
  if (v1)
  {
    v2 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v3 = (*(v2 + 8))(v1, v2);
    v0[19] = v3;
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    if (*(v3 + 16))
    {
      v4 = v0[17];
      v5 = v4[3];
      v6 = v4[4];
      __swift_project_boxed_opaque_existential_1(v4, v5);
      v7 = swift_task_alloc();
      v0[20] = v7;
      v8 = *(v6 + 8);
      *v7 = v0;
      v7[1] = sub_2681657AC;
      v10 = v0[13];
      v9 = v0[14];

      return MEMORY[0x2821C5FE0](v10, v9, v3, v5, v8);
    }
  }

  else
  {
    sub_26812C310((v0 + 2), &qword_28024DCD0, &unk_2683D4990);
  }

  OUTLINED_FUNCTION_40();

  return v11();
}

uint64_t sub_2681657AC()
{
  OUTLINED_FUNCTION_14();
  v2 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v3 = v2;
  *(v4 + 168) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2681658EC);
  }

  else
  {
    OUTLINED_FUNCTION_40();

    return v5();
  }
}

uint64_t sub_2681658EC()
{
  v18 = v0;
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v1 = v0[21];
  v2 = sub_2683CF7E8();
  __swift_project_value_buffer(v2, qword_28027C958);

  v3 = v1;
  v4 = sub_2683CF7C8();
  v5 = sub_2683CFE78();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[21];
  if (v6)
  {
    v9 = v0[13];
    v8 = v0[14];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_2681610A0(v9, v8, &v17);
    *(v10 + 12) = 2112;
    v13 = v7;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    *v11 = v14;
    _os_log_impl(&dword_2680EB000, v4, v5, "[SuggestionsProvider] Failed to submit SiriSuggestion Execution Parameters for request %s: %@.", v10, 0x16u);
    sub_26812C310(v11, &qword_28024DCD8, &qword_2683D5060);
    OUTLINED_FUNCTION_38();
    __swift_destroy_boxed_opaque_existential_0(v12);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  else
  {
  }

  OUTLINED_FUNCTION_40();

  return v15();
}

uint64_t sub_268165B28()
{
  OUTLINED_FUNCTION_14();
  v1[4] = v2;
  v1[5] = v0;
  v1[2] = v3;
  v1[3] = v4;
  v5 = sub_2683CF408();
  v1[6] = v5;
  OUTLINED_FUNCTION_3_1(v5);
  v1[7] = v6;
  v1[8] = OUTLINED_FUNCTION_15_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB50, &qword_2683D4250);
  v1[9] = OUTLINED_FUNCTION_15_1();
  v7 = sub_2683CB598();
  v1[10] = v7;
  OUTLINED_FUNCTION_3_1(v7);
  v1[11] = v8;
  v1[12] = OUTLINED_FUNCTION_15_1();
  v9 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_268165C4C()
{
  v25 = v0;
  v1 = v0[9];
  v2 = v0[10];
  sub_2683CB538();
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_26812C310(v0[9], &qword_28024DB50, &qword_2683D4250);
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v3 = sub_2683CF7E8();
    __swift_project_value_buffer(v3, qword_28027C958);

    v4 = sub_2683CF7C8();
    v5 = sub_2683CFE78();

    if (os_log_type_enabled(v4, v5))
    {
      v7 = v0[3];
      v6 = v0[4];
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v24 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_2681610A0(v7, v6, &v24);
      _os_log_impl(&dword_2680EB000, v4, v5, "[SuggestionsProvider] Unable to parse %s to UUID", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    OUTLINED_FUNCTION_40();

    return v10();
  }

  else
  {
    v13 = v0[7];
    v12 = v0[8];
    v15 = v0[5];
    v14 = v0[6];
    v16 = v0[2];
    (*(v0[11] + 32))(v0[12], v0[9], v0[10]);
    v17 = v15[3];
    v18 = v15[4];
    __swift_project_boxed_opaque_existential_1(v15, v17);
    *v12 = v16;
    (*(v13 + 104))(v12, *MEMORY[0x277D60918], v14);
    v19 = *(v18 + 8);
    v20 = v16;
    v21 = swift_task_alloc();
    v0[13] = v21;
    *v21 = v0;
    v21[1] = sub_268165F04;
    v22 = v0[12];
    v23 = v0[8];

    return MEMORY[0x2821C5FD0](v22, v23, 1, v17, v19);
  }
}

uint64_t sub_268165F04()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v7 + 112) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v8 = sub_2681660F0;
  }

  else
  {
    v8 = sub_26816606C;
  }

  return MEMORY[0x2822009F8](v8);
}

uint64_t sub_26816606C()
{
  OUTLINED_FUNCTION_14();
  (*(v0[11] + 8))(v0[12], v0[10]);

  OUTLINED_FUNCTION_40();

  return v1();
}

uint64_t sub_2681660F0()
{
  v23 = v0;
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v1 = v0[14];
  v2 = sub_2683CF7E8();
  __swift_project_value_buffer(v2, qword_28027C958);

  v3 = v1;
  v4 = sub_2683CF7C8();
  v5 = sub_2683CFE78();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[14];
  v9 = v0[11];
  v8 = v0[12];
  v10 = v0[10];
  if (v6)
  {
    v21 = v0[12];
    v11 = v0[3];
    v12 = v0[4];
    v20 = v0[10];
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v22 = v15;
    *v13 = 136315394;
    *(v13 + 4) = sub_2681610A0(v11, v12, &v22);
    *(v13 + 12) = 2112;
    v16 = v7;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v17;
    *v14 = v17;
    _os_log_impl(&dword_2680EB000, v4, v5, "[SuggestionsProvider] Failed to submit SiriSuggestion intent for request %s: %@.", v13, 0x16u);
    sub_26812C310(v14, &qword_28024DCD8, &qword_2683D5060);
    OUTLINED_FUNCTION_38();
    __swift_destroy_boxed_opaque_existential_0(v15);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();

    (*(v9 + 8))(v21, v20);
  }

  else
  {

    (*(v9 + 8))(v8, v10);
  }

  OUTLINED_FUNCTION_40();

  return v18();
}

uint64_t OUTLINED_FUNCTION_8_7(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t sub_268166370(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_2681663B0(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_268166410()
{
  v1 = _s12FlowStrategyV21IntentConversionErrorOMa(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v9[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024F220, &qword_2683D20F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2683D1EC0;
  *(inited + 32) = sub_2683CFA78();
  *(inited + 40) = v5;
  sub_268167F18(v0, v3);
  v6 = sub_2683CFAD8();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v6;
  *(inited + 56) = v7;
  return sub_2683CF9D8();
}

uint64_t sub_268166510(uint64_t a1)
{
  v2 = sub_268167ED4(&qword_28024DD20, &unk_2683D4B88);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_268166568(uint64_t a1)
{
  v2 = sub_268167ED4(&qword_28024DD20, &unk_2683D4B88);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_2681665C4()
{
  v1 = sub_2683CCC18();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 48);
  sub_2683CCB88();
  v5(v35, v4, 0);
  (*(v2 + 8))(v4, v1);
  sub_268167C34(v35, v34);
  if (v34[56] == 255)
  {
    goto LABEL_6;
  }

  sub_268167C34(v34, v30);
  if (v33)
  {
    if (v33 == 7)
    {
      v6 = vorrq_s8(v31, v32);
      if (!(*&vorr_s8(*v6.i8, *&vextq_s8(v6, v6, 8uLL)) | v30[2] | v30[1] | v30[0]))
      {
        if (qword_28024C8E0 != -1)
        {
          OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
        }

        v22 = sub_2683CF7E8();
        __swift_project_value_buffer(v22, qword_28027C958);
        v23 = sub_2683CF7C8();
        v24 = sub_2683CFE98();
        if (OUTLINED_FUNCTION_45(v24))
        {
          *swift_slowAlloc() = 0;
          OUTLINED_FUNCTION_9_6(&dword_2680EB000, v25, v26, "[AddTasks FlowStrategy] returning .cancel()");
          OUTLINED_FUNCTION_25_0();
        }

        sub_2683CC298();
        goto LABEL_12;
      }
    }

    sub_26813A1A0(v30);
LABEL_6:
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v7 = sub_2683CF7E8();
    __swift_project_value_buffer(v7, qword_28027C958);
    sub_268167C34(v35, v30);
    v8 = sub_2683CF7C8();
    v9 = sub_2683CFE98();
    if (OUTLINED_FUNCTION_45(v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v29 = v11;
      *v10 = 136315138;
      sub_268167C34(v30, &v28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D460, &qword_2683D5050);
      v12 = sub_2683CFAD8();
      v14 = v13;
      sub_268167CA4(v30);
      v15 = sub_2681610A0(v12, v14, &v29);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_2680EB000, v8, v9, "[AddTasks FlowStrategy] unsupported task, ignoring: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    else
    {

      sub_268167CA4(v30);
    }

    sub_2683CC2B8();
LABEL_12:
    sub_268167CA4(v35);
    return sub_268167CA4(v34);
  }

  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v16 = sub_2683CF7E8();
  __swift_project_value_buffer(v16, qword_28027C958);
  v17 = sub_2683CF7C8();
  v18 = sub_2683CFE98();
  if (OUTLINED_FUNCTION_45(v18))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_9_6(&dword_2680EB000, v19, v20, "[AddTasks FlowStrategy] returning .handle() for supported task");
    OUTLINED_FUNCTION_25_0();
  }

  sub_2683CC2A8();
  sub_268167CA4(v35);
  sub_26813A1A0(v30);
  return sub_268167CA4(v34);
}

uint64_t sub_2681669B0(uint64_t a1, uint64_t a2)
{
  v3[40] = a2;
  v3[41] = v2;
  v3[39] = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_2681669C8()
{
  v24 = v0;
  (*(*(v0 + 328) + 48))(*(v0 + 312), 0);
  sub_268167C34(v0 + 16, v0 + 80);
  if (*(v0 + 136))
  {
    v1 = v0 + 80;
    if (*(v0 + 136) == 255)
    {
      sub_268167CA4(v1);
    }

    else
    {
      sub_26813A1A0(v1);
    }

    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
    }

    v8 = sub_2683CF7E8();
    __swift_project_value_buffer(v8, qword_28027C958);
    sub_268167C34(v0 + 16, v0 + 144);
    v9 = sub_2683CF7C8();
    v10 = sub_2683CFE78();
    if (OUTLINED_FUNCTION_45(v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v23 = v12;
      *v11 = 136315138;
      sub_268167C34(v0 + 144, v0 + 208);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D460, &qword_2683D5050);
      v13 = sub_2683CFAD8();
      v15 = v14;
      sub_268167CA4(v0 + 144);
      v16 = sub_2681610A0(v13, v15, &v23);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_2680EB000, v9, v10, "[AddTasks FlowStrategy] Did not get addTasks task from parse. Got: %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      OUTLINED_FUNCTION_25_0();
      OUTLINED_FUNCTION_38();
    }

    else
    {

      sub_268167CA4(v0 + 144);
    }

    v17 = *(v0 + 312);
    _s12FlowStrategyV21IntentConversionErrorOMa(0);
    sub_268167ED4(&qword_28024DD08, &unk_2683D4BC8);
    swift_allocError();
    v19 = v18;
    v20 = sub_2683CCC18();
    (*(*(v20 - 8) + 16))(v19, v17, v20);
    swift_willThrow();
    sub_268167CA4(v0 + 16);
    OUTLINED_FUNCTION_40();

    return v21();
  }

  else
  {
    v2 = *(v0 + 328);
    sub_268128148((v0 + 80), v0 + 272);
    v3 = *(v0 + 296);
    v4 = *(v0 + 304);
    __swift_project_boxed_opaque_existential_1((v0 + 272), v3);
    v5 = *v2;
    *(v0 + 336) = v5;
    v22 = (*(v4 + 24) + **(v4 + 24));
    v6 = swift_task_alloc();
    *(v0 + 344) = v6;
    *v6 = v0;
    v6[1] = sub_268166D6C;

    return v22(1, v5, v3, v4);
  }
}

uint64_t sub_268166D6C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  *(v2 + 352) = v1;
  *(v2 + 360) = v0;

  if (v0)
  {
    v3 = sub_2681672B4;
  }

  else
  {
    v3 = sub_268166E78;
  }

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_268166E78()
{
  v1 = v0[37];
  v2 = v0[38];
  __swift_project_boxed_opaque_existential_1(v0 + 34, v1);
  v6 = (*(v2 + 24) + **(v2 + 24));
  v3 = swift_task_alloc();
  v0[46] = v3;
  *v3 = v0;
  v3[1] = sub_268166FA4;
  v4 = v0[42];

  return v6(0, v4, v1, v2);
}

uint64_t sub_268166FA4()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  *(v2 + 376) = v1;
  *(v2 + 384) = v0;

  if (v0)
  {
    v3 = sub_268167318;
  }

  else
  {
    v3 = sub_2681670B0;
  }

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2681670B0()
{
  v22 = v0;
  if (*(v0 + 320))
  {
    v1 = sub_2682D33A8(*(v0 + 352));
  }

  else
  {
    v1 = *(v0 + 376);
  }

  v2 = v1;
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5(&qword_28024C8E0);
  }

  v3 = sub_2683CF7E8();
  __swift_project_value_buffer(v3, qword_28027C958);
  v4 = v2;
  v5 = sub_2683CF7C8();
  v6 = sub_2683CFE98();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 352);
  if (v7)
  {
    v20 = *(v0 + 376);
    v19 = *(v0 + 352);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315138;
    v11 = v4;
    v12 = [v11 description];
    v13 = sub_2683CFA78();
    v15 = v14;

    v16 = sub_2681610A0(v13, v15, &v21);

    *(v9 + 4) = v16;
    _os_log_impl(&dword_2680EB000, v5, v6, "[AddTasks FlowStrategy] Updated intent: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_25_0();
  }

  else
  {
  }

  sub_268167CA4(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0((v0 + 272));
  OUTLINED_FUNCTION_37();

  return v17(v4);
}

uint64_t sub_2681672B4()
{
  OUTLINED_FUNCTION_14();
  sub_268167CA4(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0((v0 + 272));
  OUTLINED_FUNCTION_40();

  return v1();
}

uint64_t sub_268167318()
{
  OUTLINED_FUNCTION_14();

  sub_268167CA4(v0 + 16);
  __swift_destroy_boxed_opaque_existential_0((v0 + 272));
  OUTLINED_FUNCTION_40();

  return v1();
}

uint64_t sub_268167384(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_26816739C()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[3];
  v2 = v0[2];
  __swift_project_boxed_opaque_existential_1((v0[4] + 8), *(v0[4] + 32));
  sub_2682B28A0(v2, v1);
  OUTLINED_FUNCTION_37();

  return v3();
}

uint64_t sub_268167418(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_268132F90;

  return sub_2681669B0(a1, a2);
}

uint64_t sub_2681674C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2681342AC;

  return MEMORY[0x2821BB5D8](a1, a2, a3, a4);
}

uint64_t sub_268167584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2681342AC;

  return MEMORY[0x2821B9D90](a1, a2, a3, a4, a5);
}

uint64_t sub_268167650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2681342AC;

  return MEMORY[0x2821B9D88](a1, a2, a3, a4, a5);
}

uint64_t sub_26816771C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2681342AC;

  return MEMORY[0x2821B9D80](a1, a2, a3, a4, a5);
}

uint64_t sub_2681677E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_268133EC8;

  return MEMORY[0x2821B9D78](a1, a2, a3, a4, a5, a6);
}

uint64_t sub_2681678C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_2681342AC;

  return MEMORY[0x2821BA0D8](a1, a2, a3, a4, a5, a6);
}

uint64_t sub_2681679A0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_268167A44;

  return sub_268167384(a1, a2);
}

uint64_t sub_268167A44()
{
  OUTLINED_FUNCTION_14();
  v2 = v1;
  OUTLINED_FUNCTION_42();
  v3 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;

  OUTLINED_FUNCTION_37();

  return v5(v2);
}

unint64_t sub_268167B30()
{
  result = qword_28024DCF0;
  if (!qword_28024DCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DCF0);
  }

  return result;
}

unint64_t sub_268167B88()
{
  result = qword_28024DCF8;
  if (!qword_28024DCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DCF8);
  }

  return result;
}

unint64_t sub_268167BE0()
{
  result = qword_28024DD00;
  if (!qword_28024DD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024DD00);
  }

  return result;
}

uint64_t sub_268167C34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D460, &qword_2683D5050);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_268167CA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D460, &qword_2683D5050);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s12FlowStrategyV21IntentConversionErrorOMa(uint64_t a1)
{
  result = qword_28024DD10;
  if (!qword_28024DD10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268167D58(uint64_t a1, uint64_t a2)
{
  v4 = sub_2683CCC18();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_268167DA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2683CCC18();

  return __swift_storeEnumTagSinglePayload(a1, a2, a3, v6);
}

uint64_t sub_268167DF8(uint64_t a1)
{
  v2 = sub_2683CCC18();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v2 - 8) + 84);
    return 0;
  }

  return v2;
}

uint64_t sub_268167ED4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    _s12FlowStrategyV21IntentConversionErrorOMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_268167F18(uint64_t a1, uint64_t a2)
{
  v4 = _s12FlowStrategyV21IntentConversionErrorOMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void OUTLINED_FUNCTION_9_6(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_268167FAC(uint64_t (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  OUTLINED_FUNCTION_14_3();
  v47 = v13 - v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_3();
  v49 = v14;
  OUTLINED_FUNCTION_3_0();
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v34 - v17;
  v19 = a4 - 8;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_14_3();
  v43 = v21 - v20;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_3();
  v37 = v23;
  v38 = v22;
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_18_4();
  v25 = sub_2683CFDE8();
  if (!v25)
  {
    return sub_2683CFCE8();
  }

  v48 = v25;
  v52 = sub_2683D0268();
  v39 = sub_2683D0278();
  sub_2683D0218();
  result = sub_2683CFDD8();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v27 = 0;
    v40 = (v49 + 16);
    v41 = v49 + 8;
    v42 = v8;
    while (!__OFADD__(v27, 1))
    {
      v49 = v27 + 1;
      v28 = sub_2683CFE28();
      (*v40)(v18);
      v28(v51, 0);
      v29 = v50;
      v45(v18, v47);
      if (v29)
      {
        v32 = OUTLINED_FUNCTION_22_3();
        v33(v32);
        (*(v37 + 8))(v19, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      v30 = OUTLINED_FUNCTION_22_3();
      v31(v30);
      sub_2683D0258();
      result = sub_2683CFE08();
      ++v27;
      if (v49 == v48)
      {
        (*(v37 + 8))(v19, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_268168378()
{
  OUTLINED_FUNCTION_30_0();
  v2 = v1;
  v42 = v3;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD70, &unk_2683D4E80);
  OUTLINED_FUNCTION_23(v8);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_18_4();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD28, &qword_2683D4CF0);
  OUTLINED_FUNCTION_23(v10);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v11);
  v13 = &v35 - v12;
  v14 = sub_2683CF8B8();
  OUTLINED_FUNCTION_0_3();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_14_3();
  v40 = (v19 - v18);
  sub_2683CC518();
  if (qword_28024CB58 != -1)
  {
    OUTLINED_FUNCTION_3_6(&qword_28024CB58);
  }

  sub_2683CCFA8();
  v38 = v7;
  sub_2683CC438();
  v20 = 0;
  v37 = v16;
  v39 = (v16 + 32);
  v21 = v2 + 40;
  v41 = MEMORY[0x277D84F90];
  v22 = *(v2 + 16);
  v35 = v22;
  for (i = v2 + 40; ; v21 = i)
  {
    v23 = ~v20;
    v24 = (v21 + 16 * v20);
    v25 = v22 - v20;
    if (v22 == v20)
    {
      break;
    }

    while (1)
    {
      v26 = *v24;
      ObjectType = swift_getObjectType();
      v28 = sub_2683CF828();
      __swift_storeEnumTagSinglePayload(v0, 1, 1, v28);
      swift_unknownObjectRetain();
      sub_26816A834(v5, v42, 0, 0, v0, ObjectType, v26, v13);
      swift_unknownObjectRelease();
      sub_26812C310(v0, &qword_28024DD70, &unk_2683D4E80);
      if (__swift_getEnumTagSinglePayload(v13, 1, v14) != 1)
      {
        break;
      }

      sub_26812C310(v13, &qword_28024DD28, &qword_2683D4CF0);
      --v23;
      v24 += 2;
      if (!--v25)
      {
        goto LABEL_13;
      }
    }

    v29 = *v39;
    (*v39)(v40, v13, v14);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2682E48E8();
      v41 = v33;
    }

    v30 = *(v41 + 16);
    if (v30 >= *(v41 + 24) >> 1)
    {
      sub_2682E48E8();
      v41 = v34;
    }

    v20 = -v23;
    v31 = v40;
    v32 = v41;
    *(v41 + 16) = v30 + 1;
    v29(v32 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v30, v31, v14);
    v22 = v35;
  }

LABEL_13:
  sub_2683CC418();
  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_2681686A4(void *a1)
{
  sub_268168DC4();
  sub_2683CC4E8();
  v2 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  OUTLINED_FUNCTION_5_6();
  v4 = v3(v2);
  sub_2682BFDDC(v4);
  return sub_2683CC4F8();
}

uint64_t sub_26816873C()
{
  sub_2683CC518();
  if (qword_28024CB58 != -1)
  {
    swift_once();
  }

  sub_2683CCFA8();
  v0 = sub_2683CC438();
  sub_2681E1E24(v0, v1);
  sub_2683CC4A8();
  return sub_2683CC468();
}

void sub_2681687C8()
{
  OUTLINED_FUNCTION_30_0();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD30, &qword_2683D4CF8);
  OUTLINED_FUNCTION_23(v3);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_18_4();
  v5 = sub_2683CCF08();
  OUTLINED_FUNCTION_0_3();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_14_3();
  v29 = v10 - v9;
  sub_26816873C();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
  v12 = OUTLINED_FUNCTION_19_4(v11);
  *(v12 + 16) = xmmword_2683D1EC0;
  if (qword_28024CB98 != -1)
  {
    OUTLINED_FUNCTION_1_10(&qword_28024CB98);
  }

  *(v12 + 32) = sub_2681E1E3C();
  *(v12 + 40) = v13;
  v14 = v2[3];
  __swift_project_boxed_opaque_existential_1(v2, v14);
  OUTLINED_FUNCTION_5_6();
  v16 = v15(v14);
  sub_2682BFDDC(v16);
  sub_2683CC4F8();
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_2683D1ED0;
  v30 = sub_2681E1E3C();
  v33 = v18;
  OUTLINED_FUNCTION_18_5();
  v19 = OUTLINED_FUNCTION_7_6();
  MEMORY[0x26D616690](v19);

  *(v17 + 32) = v30;
  *(v17 + 40) = v33;
  v31 = sub_2681E1E3C();
  v34 = v20;
  OUTLINED_FUNCTION_18_5();
  v21 = sub_2683CFB08();
  MEMORY[0x26D616690](v21);

  *(v17 + 48) = v31;
  *(v17 + 56) = v34;
  v32 = sub_2681E1E3C();
  v35 = v22;
  OUTLINED_FUNCTION_18_5();
  v23 = sub_2683CFB08();
  v25 = v24;
  MEMORY[0x26D616690](v23);

  *(v17 + 64) = v32;
  *(v17 + 72) = v35;
  sub_2683CC4D8();
  OUTLINED_FUNCTION_17_3();
  OUTLINED_FUNCTION_5_6();
  if (v26(v25))
  {
    sub_268368174();
    OUTLINED_FUNCTION_16_7();
    if (v27)
    {

      sub_26812C310(v0, &qword_28024DD30, &qword_2683D4CF8);
    }

    else
    {
      (*(v7 + 32))(v29, v0, v5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD38, &unk_2683D6D10);
      v28 = OUTLINED_FUNCTION_11_8();
      *(v28 + 16) = xmmword_2683D1EC0;
      (*(v7 + 16))(v28 + v0, v29, v5);
      sub_2683CC448();

      (*(v7 + 8))(v29, v5);
    }
  }

  OUTLINED_FUNCTION_29_0();
}

void sub_268168B1C()
{
  OUTLINED_FUNCTION_30_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD30, &qword_2683D4CF8);
  OUTLINED_FUNCTION_23(v1);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_18_4();
  v3 = sub_2683CCF08();
  OUTLINED_FUNCTION_0_3();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14_3();
  v9 = v8 - v7;
  sub_2683CC518();
  if (qword_28024CB58 != -1)
  {
    OUTLINED_FUNCTION_3_6(&qword_28024CB58);
  }

  v10 = qword_28027CC98;
  sub_2683CCFA8();
  sub_2683CC438();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
  v12 = OUTLINED_FUNCTION_19_4(v11);
  *(v12 + 16) = xmmword_2683D1EC0;
  if (qword_28024CB98 != -1)
  {
    OUTLINED_FUNCTION_1_10(&qword_28024CB98);
  }

  v26 = sub_2681E1E3C();
  v27 = v13;
  v14 = OUTLINED_FUNCTION_21_4();
  MEMORY[0x26D616690](v14, 0xE700000000000000);
  v15 = OUTLINED_FUNCTION_7_6();
  MEMORY[0x26D616690](v15);

  *(v12 + 32) = v26;
  *(v12 + 40) = v27;
  v16 = sub_2683CC488();
  sub_2681E1E24(v16, v17);
  sub_2683CC4B8();
  OUTLINED_FUNCTION_17_3();
  OUTLINED_FUNCTION_5_6();
  v18(v10);
  sub_2683CC498();
  OUTLINED_FUNCTION_17_3();
  OUTLINED_FUNCTION_5_6();
  if (v19(v10))
  {
    sub_268368174();
    OUTLINED_FUNCTION_16_7();
    if (v20)
    {

      sub_26812C310(v0, &qword_28024DD30, &qword_2683D4CF8);
    }

    else
    {
      v21 = OUTLINED_FUNCTION_15_6();
      v22(v21);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD38, &unk_2683D6D10);
      v23 = OUTLINED_FUNCTION_11_8();
      v24 = OUTLINED_FUNCTION_9_7(v23);
      v25(v24);
      sub_2683CC448();

      (*(v5 + 8))(v9, v3);
    }
  }

  OUTLINED_FUNCTION_29_0();
}

void sub_268168DC4()
{
  OUTLINED_FUNCTION_30_0();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD30, &qword_2683D4CF8);
  OUTLINED_FUNCTION_23(v1);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_18_4();
  v3 = sub_2683CCF08();
  OUTLINED_FUNCTION_0_3();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14_3();
  v9 = v8 - v7;
  sub_26816873C();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
  v11 = OUTLINED_FUNCTION_19_4(v10);
  *(v11 + 16) = xmmword_2683D1EC0;
  if (qword_28024CB98 != -1)
  {
    OUTLINED_FUNCTION_1_10(&qword_28024CB98);
  }

  *(v11 + 32) = sub_2681E1E3C();
  *(v11 + 40) = v12;
  sub_2683CC4F8();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2683D1ED0;
  v28 = sub_2681E1E3C();
  v29 = v14;
  OUTLINED_FUNCTION_20_6();
  MEMORY[0x26D616690](v11, 0xE700000000000000);
  v15 = OUTLINED_FUNCTION_7_6();
  MEMORY[0x26D616690](v15);

  *(v13 + 32) = v28;
  *(v13 + 40) = v29;
  v16 = sub_2681E1E3C();
  OUTLINED_FUNCTION_12_4(v16, v17);
  v18 = sub_2683CFB08();
  MEMORY[0x26D616690](v18);

  *(v13 + 48) = v28;
  *(v13 + 56) = v29;
  v19 = sub_2681E1E3C();
  OUTLINED_FUNCTION_12_4(v19, v20);
  v21 = sub_2683CFB08();
  MEMORY[0x26D616690](v21);

  *(v13 + 64) = v28;
  *(v13 + 72) = v29;
  sub_2683CC4D8();
  sub_2683CC468();
  sub_268368414();
  OUTLINED_FUNCTION_16_7();
  if (v22)
  {
    sub_26812C310(v0, &qword_28024DD30, &qword_2683D4CF8);
  }

  else
  {
    v23 = OUTLINED_FUNCTION_15_6();
    v24(v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD38, &unk_2683D6D10);
    v25 = OUTLINED_FUNCTION_11_8();
    v26 = OUTLINED_FUNCTION_9_7(v25);
    v27(v26);
    sub_2683CC448();
    (*(v5 + 8))(v9, v3);
  }

  OUTLINED_FUNCTION_29_0();
}

void sub_268169078()
{
  OUTLINED_FUNCTION_30_0();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD40, &qword_2683D4D10);
  OUTLINED_FUNCTION_23(v4);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v5);
  v7 = &v46 - v6;
  v51 = sub_2683CC168();
  OUTLINED_FUNCTION_0_3();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_14_3();
  v13 = v12 - v11;
  sub_26816873C();
  v14 = sub_2683CC458();
  if (qword_28024CB58 != -1)
  {
    v14 = OUTLINED_FUNCTION_3_6(&qword_28024CB58);
  }

  sub_2681E1E24(v14, v15);
  sub_2683CC4A8();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
  v16 = OUTLINED_FUNCTION_19_4(v47);
  v50 = xmmword_2683D1EC0;
  *(v16 + 16) = xmmword_2683D1EC0;
  if (qword_28024CB98 != -1)
  {
    OUTLINED_FUNCTION_1_10(&qword_28024CB98);
  }

  OUTLINED_FUNCTION_20_6();
  v46 = qword_28027CCD8;
  v17 = sub_2681E1E3C();
  OUTLINED_FUNCTION_12_4(v17, v18);
  v19 = sub_2683CFB08();
  MEMORY[0x26D616690](v19);

  v20 = v56;
  *(v16 + 32) = v55;
  *(v16 + 40) = v20;
  v49 = v3;
  sub_2683CC478();
  v21 = *(v1 + 16);
  v48 = v1;
  if (v21)
  {
    v23 = *(v9 + 16);
    v22 = v9 + 16;
    v24 = v1 + ((*(v22 + 64) + 32) & ~*(v22 + 64));
    v53 = *(v22 + 56);
    v54 = v23;
    v25 = (v22 - 8);
    v26 = MEMORY[0x277D84F90];
    v27 = v51;
    v52 = v22;
    do
    {
      v54(v13, v24, v27);
      sub_2683CC148();
      v28 = sub_2683CC288();
      if (__swift_getEnumTagSinglePayload(v7, 1, v28) == 1)
      {
        (*v25)(v13, v27);
        sub_26812C310(v7, &qword_28024DD40, &qword_2683D4D10);
      }

      else
      {
        v29 = sub_2683CC278();
        v31 = v30;
        (*v25)(v13, v27);
        (*(*(v28 - 8) + 8))(v7, v28);
        if (v31)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2682E4728(0, *(v26 + 16) + 1, 1, v26);
            v26 = v35;
          }

          v33 = *(v26 + 16);
          v32 = *(v26 + 24);
          if (v33 >= v32 >> 1)
          {
            sub_2682E4728(v32 > 1, v33 + 1, 1, v26);
            v26 = v36;
          }

          *(v26 + 16) = v33 + 1;
          v34 = v26 + 16 * v33;
          *(v34 + 32) = v29;
          *(v34 + 40) = v31;
          v27 = v51;
        }
      }

      v24 += v53;
      --v21;
    }

    while (v21);
  }

  else
  {
    v26 = MEMORY[0x277D84F90];
  }

  v37 = sub_2682B4344(v26);
  v38 = v47;
  inited = swift_initStackObject();
  *(inited + 16) = v50;
  *(inited + 32) = sub_2681E1E3C();
  *(inited + 40) = v40;
  sub_2681694C4(v37, inited);

  swift_setDeallocating();
  sub_2681F5508();
  sub_2683CC4F8();
  v41 = OUTLINED_FUNCTION_19_4(v38);
  *(v41 + 16) = v50;
  v55 = sub_2681E1E3C();
  v56 = v42;
  v43 = OUTLINED_FUNCTION_21_4();
  MEMORY[0x26D616690](v43, 0xE700000000000000);
  v44 = OUTLINED_FUNCTION_7_6();
  MEMORY[0x26D616690](v44);

  v45 = v56;
  *(v41 + 32) = v55;
  *(v41 + 40) = v45;
  sub_2683CC4D8();

  sub_2683CC428();
  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_2681694C4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(result + 16);
  v4 = __OFADD__(v2, v3);
  v5 = v2 + v3;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    sub_2682E4728(0, v5 & ~(v5 >> 63), 0, MEMORY[0x277D84F90]);
    v9 = v6;

    sub_2682BFE84(v7);

    sub_2682BFDDC(v8);
    return v9;
  }

  return result;
}

void sub_26816954C()
{
  OUTLINED_FUNCTION_30_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD30, &qword_2683D4CF8);
  OUTLINED_FUNCTION_23(v10);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v11);
  v13 = v29 - v12;
  v14 = sub_2683CCF08();
  OUTLINED_FUNCTION_0_3();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_14_3();
  v20 = v19 - v18;
  v23 = type metadata accessor for SimpleDisambiguationItem(255, v1, v21, v22);
  type metadata accessor for IdentifiableItem(0, v23, v24, v25);
  v31 = &off_28790C6F8;
  swift_getWitnessTable();
  v29[1] = v9;
  sub_268169858();
  v30 = v7;
  v29[4] = v1;
  v29[5] = v5;
  v29[6] = v3;
  sub_2683CFD28();
  sub_2683CD208();
  OUTLINED_FUNCTION_6_6();
  sub_2683CFC28();
  sub_268368898();

  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    v26 = sub_26812C310(v13, &qword_28024DD30, &qword_2683D4CF8);
  }

  else
  {
    (*(v16 + 32))(v20, v13, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DD38, &unk_2683D6D10);
    v27 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_2683D1EC0;
    (*(v16 + 16))(v28 + v27, v20, v14);
    sub_2683CC448();
    v26 = (*(v16 + 8))(v20, v14);
  }

  v30 = v7;
  MEMORY[0x28223BE20](v26);
  v29[-2] = v1;
  sub_2683CF8B8();
  sub_2683CFC28();
  sub_2683CC418();
  OUTLINED_FUNCTION_29_0();
}