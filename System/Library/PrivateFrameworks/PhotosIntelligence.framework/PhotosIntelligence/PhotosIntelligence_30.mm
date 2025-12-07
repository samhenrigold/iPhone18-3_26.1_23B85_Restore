void sub_1C7193C40(void *a1)
{
  switch(*a1 >> 61)
  {
    case 2:
      return;
    case 3:
      OUTLINED_FUNCTION_0_53();
      swift_beginAccess();
      v11 = *(v1 + 128);
      sub_1C719164C(&v10);
      if (!v2)
      {
        v9 = v10;
        OUTLINED_FUNCTION_3_58();
        sub_1C7193E1C();

        v11 = 0x8000000000000000;
        OUTLINED_FUNCTION_3_58();
        sub_1C7194268(v7);
      }

      break;
    case 4:
      OUTLINED_FUNCTION_0_53();
      swift_beginAccess();
      v4 = *(v1 + 128);
      switch(v4 >> 62)
      {
        case 1uLL:
          goto LABEL_8;
        case 2uLL:
          v4 = *((v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
LABEL_8:

          v11 = v4;
          OUTLINED_FUNCTION_3_58();
          sub_1C7193E1C();
          if (!v2)
          {

            OUTLINED_FUNCTION_0_53();
            swift_beginAccess();
            v10 = *(v1 + 112);
            sub_1C7191FEC(&v9);
            OUTLINED_FUNCTION_3_58();
            sub_1C719487C(v8);
          }

          break;
        default:
          v5 = sub_1C7195E04();
          OUTLINED_FUNCTION_166_0(&type metadata for StoryState.Error, v5);
          *v6 = v4;
          *(v6 + 8) = 2;
          swift_willThrow();

          break;
      }

      break;
    default:
      v12 = 0;
      OUTLINED_FUNCTION_3_58();
      sub_1C7194DF4(v3);
      break;
  }
}

void sub_1C7193E1C()
{
  OUTLINED_FUNCTION_28_16();
  if (v2)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2151A0, &unk_1C755BE10);
    v4 = OUTLINED_FUNCTION_39_19(v3);
    OUTLINED_FUNCTION_42_19(v4, xmmword_1C755BAB0);
    v22[0] = 0;
    v22[1] = v5;
    sub_1C755180C();
    OUTLINED_FUNCTION_10_2();
    MEMORY[0x1CCA5CD70](0xD000000000000019);
    OUTLINED_FUNCTION_0_53();
    swift_beginAccess();
    v6 = *(v0 + 128);

    sub_1C73E6C1C(v6);

    OUTLINED_FUNCTION_104();
    sub_1C73E6C1C(v1);
    OUTLINED_FUNCTION_5_45(0);
  }

  OUTLINED_FUNCTION_56();
  swift_beginAccess();
  v7 = *(v0 + 128);
  switch(v1 >> 62)
  {
    case 1uLL:
      v8 = 24;
      switch(v7 >> 62)
      {
        case 1uLL:
          v16 = *((v1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          v17 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

          sub_1C7036A90(v16, v17);
          if ((v18 & 1) == 0)
          {

            goto LABEL_20;
          }

          v19 = sub_1C7043F5C();

          if ((v19 & 1) == 0)
          {
            goto LABEL_20;
          }

          break;
        case 2uLL:
          goto LABEL_14;
        case 3uLL:
          goto LABEL_28;
        default:
          goto LABEL_18;
      }

      goto LABEL_27;
    case 2uLL:
      switch(v7 >> 62)
      {
        case 1uLL:
          goto LABEL_18;
        case 2uLL:
          v10 = *((v1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          v11 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

          sub_1C7036A90(v10, v11);
          LOBYTE(v11) = v12;

          if ((v11 & 1) == 0)
          {
            goto LABEL_20;
          }

          goto LABEL_27;
        default:
LABEL_28:
          OUTLINED_FUNCTION_16_18();
          OUTLINED_FUNCTION_6_49();
          __break(1u);
          break;
      }

      break;
    case 3uLL:
      v13 = 1;
      v8 = 48;
      v14 = 0;
      v15 = v1;
      switch(v7 >> 62)
      {
        case 1uLL:
          goto LABEL_14;
        case 2uLL:
          goto LABEL_12;
        case 3uLL:
          return;
        default:
          goto LABEL_22;
      }

    default:
      v8 = 48;
      switch(v7 >> 62)
      {
        case 1uLL:
          goto LABEL_14;
        case 2uLL:
LABEL_12:
          v8 = 24;
LABEL_14:
          v15 = *((v7 & 0x3FFFFFFFFFFFFFFFLL) + v8);

          v14 = 1;
          v13 = 1;
          goto LABEL_22;
        case 3uLL:
LABEL_18:

          v14 = 0;
          v13 = 0;
          goto LABEL_21;
        default:
          memcpy(__dst, (v7 + 16), sizeof(__dst));
          memcpy(v22, (v1 + 16), sizeof(v22));

          v9 = static StoryState.RetrievedAssetInfo.== infix(_:_:)(v22, __dst);

          if (v9)
          {
            break;
          }

LABEL_20:
          v14 = 0;
          v13 = 1;
LABEL_21:
          v15 = v1;
LABEL_22:
          v20 = *(v0 + 128);
          *(v0 + 128) = v15;

          if (v13)
          {
            v22[0] = v20;
            OUTLINED_FUNCTION_3_58();
            sub_1C71941CC();
          }

          else if (v14)
          {
            v22[0] = v1;
            OUTLINED_FUNCTION_3_58();
            sub_1C7193E1C();
          }

          break;
      }

LABEL_27:

      break;
  }
}

void sub_1C71941CC()
{
  OUTLINED_FUNCTION_25_19();
  if (!v1)
  {
    OUTLINED_FUNCTION_0_53();
    swift_beginAccess();
    OUTLINED_FUNCTION_12_37();
    sub_1C71910A4(v2);
    if (!v0)
    {
      OUTLINED_FUNCTION_3_58();
      sub_1C71937C4();

      OUTLINED_FUNCTION_3_58();
      sub_1C7194268(v3);
    }
  }
}

void sub_1C7194268(unint64_t *a1)
{
  v3 = v2;
  v4 = v1;
  v59 = sub_1C754DFFC();
  v6 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v57 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v53 - v9;
  v11 = *a1;
  if (*(v1 + 168) == 1)
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2151A0, &unk_1C755BE10);
    v13 = OUTLINED_FUNCTION_39_19(v12);
    OUTLINED_FUNCTION_42_19(v13, xmmword_1C755BAB0);
    v60 = 0;
    v61 = v14;
    sub_1C755180C();

    OUTLINED_FUNCTION_3_1();
    v60 = 0xD000000000000019;
    v61 = v15;
    OUTLINED_FUNCTION_0_53();
    swift_beginAccess();
    v63 = *(v1 + 136);

    v17 = StoryState.TraitState.description.getter(v16);
    MEMORY[0x1CCA5CD70](v17);

    OUTLINED_FUNCTION_104();
    v63 = v11;
    v19 = StoryState.TraitState.description.getter(v18);
    MEMORY[0x1CCA5CD70](v19);

    v20 = v60;
    v21 = v61;
    v13[3].n128_u64[1] = MEMORY[0x1E69E6158];
    v13[2].n128_u64[0] = v20;
    v13[2].n128_u64[1] = v21;
    OUTLINED_FUNCTION_6_6(v13);
  }

  OUTLINED_FUNCTION_56();
  swift_beginAccess();
  v22 = *(v1 + 136);
  v23 = v22 >> 62;
  if (v11 >> 62)
  {
    if (v11 >> 62 == 1)
    {
      v24 = v11 & 0x3FFFFFFFFFFFFFFFLL;
      if (v23)
      {
        if (v23 != 1)
        {
          OUTLINED_FUNCTION_16_18();
          OUTLINED_FUNCTION_6_49();
          __break(1u);
          return;
        }

        v22 &= 0x3FFFFFFFFFFFFFFFuLL;
        goto LABEL_15;
      }

      goto LABEL_10;
    }

    if (!v23)
    {
      v25 = 0;
      v26 = 1;
      goto LABEL_22;
    }

    if (v23 != 1)
    {
      return;
    }

    goto LABEL_13;
  }

  if (v23)
  {
    if (v23 != 1)
    {
LABEL_10:

      v25 = 0;
      v26 = 0;
LABEL_22:
      v27 = v11;
      goto LABEL_31;
    }

LABEL_13:
    v27 = *((v22 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);

    v25 = 1;
    v26 = 1;
    goto LABEL_31;
  }

  v24 = v11;
LABEL_15:
  v53 = v1;
  v55 = v2;
  v28 = *(v22 + 16);
  v29 = *(v24 + 16);
  v30 = *(v29 + 16);
  v31 = MEMORY[0x1E69E7CC0];
  v54 = v11;
  v56 = v28;
  if (v30)
  {
    v64 = MEMORY[0x1E69E7CC0];
    sub_1C75504FC();
    sub_1C75504FC();

    sub_1C716E10C(0, v30, 0);
    v32 = v64;
    v58 = v29;
    v33 = v29 + 32;
    do
    {
      sub_1C6FB5E28(v33, &v60);
      __swift_project_boxed_opaque_existential_1(&v60, v62);
      sub_1C755182C();
      __swift_destroy_boxed_opaque_existential_1(&v60);
      v64 = v32;
      v35 = *(v32 + 16);
      v34 = *(v32 + 24);
      if (v35 >= v34 >> 1)
      {
        OUTLINED_FUNCTION_15(v34);
        OUTLINED_FUNCTION_116_0();
        sub_1C716E10C(v36, v37, v38);
        v32 = v64;
      }

      *(v32 + 16) = v35 + 1;
      (*(v6 + 32))(v32 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v35, v10, v59);
      v33 += 40;
      --v30;
    }

    while (v30);

    v28 = v56;
    v31 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    sub_1C75504FC();
    v32 = MEMORY[0x1E69E7CC0];
  }

  v39 = *(v28 + 16);
  v40 = v57;
  if (v39)
  {
    v64 = v31;
    v41 = OUTLINED_FUNCTION_105();
    sub_1C716E10C(v41, v42, v43);
    v44 = v64;
    v45 = v28 + 32;
    v58 = v6 + 32;
    do
    {
      sub_1C6FB5E28(v45, &v60);
      __swift_project_boxed_opaque_existential_1(&v60, v62);
      sub_1C755182C();
      __swift_destroy_boxed_opaque_existential_1(&v60);
      v64 = v44;
      v47 = *(v44 + 16);
      v46 = *(v44 + 24);
      if (v47 >= v46 >> 1)
      {
        OUTLINED_FUNCTION_15(v46);
        OUTLINED_FUNCTION_116_0();
        sub_1C716E10C(v48, v49, v50);
        v44 = v64;
      }

      *(v44 + 16) = v47 + 1;
      (*(v6 + 32))(v44 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v47, v40, v59);
      v45 += 40;
      --v39;
    }

    while (v39);
  }

  sub_1C7003CFC(v32);
  v52 = v51;

  if (v52)
  {
    goto LABEL_36;
  }

  v25 = 0;
  v4 = v53;
  v11 = v54;
  v22 = *(v53 + 136);
  v26 = 1;
  v27 = v54;
  v3 = v55;
LABEL_31:
  *(v4 + 136) = v27;

  if (!v26 || (v60 = v22, sub_1C71947F8(), !v3))
  {
    if (v25)
    {
      v60 = v11;
      sub_1C7194268(&v60);
    }
  }

LABEL_36:
}

void sub_1C71947F8()
{
  OUTLINED_FUNCTION_25_19();
  if (v1 == 1)
  {
    OUTLINED_FUNCTION_0_53();
    swift_beginAccess();
    OUTLINED_FUNCTION_12_37();
    sub_1C7191FEC(v2);
    if (!v0)
    {
      OUTLINED_FUNCTION_3_58();
      sub_1C719487C(v3);
    }
  }
}

void sub_1C719487C(unint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  if (*(v1 + 168) == 1)
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2151A0, &unk_1C755BE10);
    v5 = OUTLINED_FUNCTION_39_19(v4);
    OUTLINED_FUNCTION_42_19(v5, xmmword_1C755BAB0);
    sub_1C755180C();

    OUTLINED_FUNCTION_3_1();
    *&v38 = 0xD00000000000001ALL;
    *(&v38 + 1) = v6;
    OUTLINED_FUNCTION_0_53();
    swift_beginAccess();

    v7 = StoryState.PromptState.description.getter();
    MEMORY[0x1CCA5CD70](v7);

    OUTLINED_FUNCTION_104();
    *&v35 = v3;
    v8 = StoryState.PromptState.description.getter();
    MEMORY[0x1CCA5CD70](v8);

    v9 = *(&v38 + 1);
    v5[3].n128_u64[1] = MEMORY[0x1E69E6158];
    v5[2].n128_u64[0] = 0xD00000000000001ALL;
    v5[2].n128_u64[1] = v9;
    OUTLINED_FUNCTION_6_6(v5);
  }

  OUTLINED_FUNCTION_56();
  swift_beginAccess();
  v10 = *(v1 + 112);
  switch(v3 >> 62)
  {
    case 1uLL:
      v11 = 48;
      switch(v10 >> 62)
      {
        case 1uLL:
          sub_1C6F65BE8(0, &qword_1EDD10100, 0x1E69E58C0);

          v28 = sub_1C75513EC();

          if ((v28 & 1) == 0)
          {
            goto LABEL_27;
          }

          break;
        case 2uLL:
          goto LABEL_24;
        case 3uLL:
          goto LABEL_23;
        default:
          goto LABEL_22;
      }

      goto LABEL_34;
    case 2uLL:
      v12 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v13 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      v11 = 88;
      switch(v10 >> 62)
      {
        case 1uLL:
          goto LABEL_22;
        case 2uLL:
          v14 = (v10 & 0x3FFFFFFFFFFFFFFFLL);
          v15 = v14[4];
          v16 = v14[5];
          v17 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) == v14[2] && *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) == v14[3];
          if (!v17 && (sub_1C7551DBC() & 1) == 0)
          {
            goto LABEL_16;
          }

          v18 = v12 == v15 && v13 == v16;
          if (!v18 && (sub_1C7551DBC() & 1) == 0)
          {
            goto LABEL_16;
          }

          break;
        case 3uLL:
          goto LABEL_24;
        default:
          goto LABEL_36;
      }

      return;
    case 3uLL:
      v19 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v20 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      v38 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v39 = v20;
      v40[0] = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
      *(v40 + 9) = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x41);
      switch(v10 >> 62)
      {
        case 2uLL:
LABEL_22:

          v25 = 0;
          v26 = 0;
          goto LABEL_28;
        case 3uLL:
          v21 = *((v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          v22 = *((v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
          v35 = *((v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
          v36 = v22;
          v37[0] = *((v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
          *(v37 + 9) = *((v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x41);

          sub_1C708C6E4(v19, v21);
          if ((v23 & 1) == 0)
          {

            goto LABEL_27;
          }

          v33[0] = v38;
          v33[1] = v39;
          v34[0] = v40[0];
          *(v34 + 9) = *(v40 + 9);
          v31[0] = v35;
          v31[1] = v36;
          v32[0] = v37[0];
          *(v32 + 9) = *(v37 + 9);
          v24 = static LLMSamplingParameters.== infix(_:_:)(v33, v31);

          if ((v24 & 1) == 0)
          {
            goto LABEL_27;
          }

          break;
        default:
LABEL_36:
          OUTLINED_FUNCTION_6_49();
          __break(1u);
          return;
      }

LABEL_34:

      return;
    default:
      v11 = 48;
      switch(v10 >> 62)
      {
        case 1uLL:
LABEL_16:

LABEL_27:
          v25 = 0;
          v26 = 1;
LABEL_28:
          v27 = v3;
          goto LABEL_29;
        case 2uLL:
          goto LABEL_24;
        case 3uLL:
LABEL_23:
          v11 = 88;
LABEL_24:
          v27 = *((v10 & 0x3FFFFFFFFFFFFFFFLL) + v11);

          v25 = 1;
          v26 = 1;
LABEL_29:
          v29 = *(v2 + 112);
          *(v2 + 112) = v27;

          if (v26)
          {
            *&v38 = v29;
            OUTLINED_FUNCTION_3_58();
            sub_1C7194CF8();
          }

          else if (v25)
          {
            *&v38 = v3;
            OUTLINED_FUNCTION_3_58();
            sub_1C719487C(v30);
          }

          goto LABEL_34;
        default:
          return;
      }
  }
}

void sub_1C7194CF8()
{
  OUTLINED_FUNCTION_25_19();
  if ((v1 - 2) >= 2)
  {
    if (v1)
    {
      OUTLINED_FUNCTION_0_53();
      swift_beginAccess();
      OUTLINED_FUNCTION_12_37();
      sub_1C719164C(v2);
      if (!v0)
      {
        OUTLINED_FUNCTION_3_58();
        sub_1C7193E1C();

        OUTLINED_FUNCTION_3_58();
        sub_1C7194268(v3);
      }
    }

    else
    {
      OUTLINED_FUNCTION_3_58();
      sub_1C7193E1C();
      if (!v0)
      {
        OUTLINED_FUNCTION_27_1();
        *(swift_allocObject() + 16) = 0;
        OUTLINED_FUNCTION_3_58();
        sub_1C71937C4();
      }
    }
  }
}

void sub_1C7194DF4(uint64_t *a1)
{
  v3 = *a1;
  if (*(v1 + 168) == 1)
  {
    v42 = v2;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2151A0, &unk_1C755BE10);
    *(OUTLINED_FUNCTION_39_19(v4) + 16) = xmmword_1C755BAB0;
    *&v35 = 0;
    *(&v35 + 1) = 0xE000000000000000;
    sub_1C755180C();

    OUTLINED_FUNCTION_3_1();
    *&v31[0] = 0xD00000000000001ELL;
    *(&v31[0] + 1) = v5;
    OUTLINED_FUNCTION_0_53();
    swift_beginAccess();
    v6 = *(v1 + 144);
    if (v6)
    {
      v27 = *(v6 + 32);
      v29 = *(v6 + 16);
      v7 = *(v6 + 48);
      v8 = *(v6 + 56);
      v9 = *(v6 + 57);
      v40 = 0;
      v41 = 0xE000000000000000;

      MEMORY[0x1CCA5CD70](0x6F74737265646E75, 0xEB0000000028646FLL);
      v35 = v29;
      v36 = v27;
      v37 = v7;
      v38 = v8;
      v39 = v9;
      sub_1C75519EC();
      v10 = 0;
      v11 = 0xE000000000000000;
    }

    else
    {
      v11 = 0xE400000000000000;
      v10 = OUTLINED_FUNCTION_32_16();
    }

    MEMORY[0x1CCA5CD70](v10, v11);

    v12 = 0xE400000000000000;
    OUTLINED_FUNCTION_104();
    if (v3)
    {
      v28 = *(v3 + 32);
      v30 = *(v3 + 16);
      v13 = *(v3 + 48);
      v14 = *(v3 + 56);
      v15 = *(v3 + 57);
      v40 = 0;
      v41 = 0xE000000000000000;
      v16 = OUTLINED_FUNCTION_1_66();
      MEMORY[0x1CCA5CD70](v16);
      v35 = v30;
      v36 = v28;
      v37 = v13;
      v38 = v14;
      v39 = v15;
      sub_1C75519EC();
      v17 = 0;
      v12 = 0xE000000000000000;
    }

    else
    {
      v17 = OUTLINED_FUNCTION_32_16();
    }

    MEMORY[0x1CCA5CD70](v17, v12);

    OUTLINED_FUNCTION_5_45(*&v31[0]);
  }

  OUTLINED_FUNCTION_56();
  swift_beginAccess();
  v18 = *(v1 + 144);
  if (!v3)
  {
    if (!v18)
    {
      return;
    }

    goto LABEL_14;
  }

  if (!v18 || (v19 = *(v3 + 57), v20 = *(v3 + 56), v21 = *(v3 + 48), v22 = *(v18 + 32), v23 = *(v18 + 48), v24 = *(v18 + 56), v25 = *(v18 + 57), v26 = *(v3 + 32), v35 = *(v3 + 16), v36 = v26, v37 = v21, v38 = v20, v39 = v19, v31[0] = *(v18 + 16), v31[1] = v22, v32 = v23, v33 = v24, v34 = v25, !static StoryPromptAttributes.== infix(_:_:)(&v35, v31)))
  {
LABEL_14:
    *(v1 + 144) = v3;
  }
}

void sub_1C71950BC(char *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_56();
  swift_beginAccess();
  *(v1 + 152) = v2;
}

uint64_t sub_1C71950F8(uint64_t a1)
{
  OUTLINED_FUNCTION_56();
  swift_beginAccess();
  *(v1 + 160) = a1;
  sub_1C75504FC();
}

uint64_t StoryState.deinit()
{

  sub_1C7195390(v0 + OBJC_IVAR____TtC18PhotosIntelligence10StoryState_promptOrigin, type metadata accessor for StoryState.PromptOrigin);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t StoryState.__deallocating_deinit()
{
  StoryState.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1C7195258(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoryState.PromptOrigin(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C71952BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2183C0, &unk_1C7571A80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C719532C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoryState.PromptOrigin(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C7195390(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C7195410(uint64_t a1)
{
  result = type metadata accessor for StoryState.PromptOrigin(319);
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18PhotosIntelligence10StoryStateC05AssetD0O(void *a1)
{
  v1 = *a1 >> 62;
  if (v1 == 3)
  {
    return (*a1 >> 3) + 3;
  }

  else
  {
    return v1;
  }
}

unint64_t get_enum_tag_for_layout_string_18PhotosIntelligence10StoryStateC05TraitD0O(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_1C7195904(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 9))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 4)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C7195944(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C71959A0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7C && *(a1 + 8))
    {
      v2 = *a1 + 123;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7B)
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

uint64_t sub_1C71959F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7B)
  {
    *result = a2 - 124;
    if (a3 >= 0x7C)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7C)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1C7195A80(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1C7195AC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t *sub_1C7195B20(unint64_t *result, uint64_t a2)
{
  if (a2 < 3)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    v2 = (8 * (a2 - 3)) | 0xC000000000000000;
  }

  *result = v2;
  return result;
}

uint64_t sub_1C7195B58(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 8))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7D)
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

uint64_t sub_1C7195BAC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_1C7195BFC(unint64_t *result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    v2 = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  *result = v2;
  return result;
}

uint64_t sub_1C7195C34(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7D && *(a1 + 8))
    {
      v2 = *a1 + 124;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7C)
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

uint64_t sub_1C7195C88(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1C7195D34(uint64_t a1)
{
  sub_1C7195D8C(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_1C7195D8C(uint64_t a1)
{
  if (!qword_1EC218838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC2183C0, &unk_1C7571A80);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC218838);
    }
  }
}

unint64_t sub_1C7195E04()
{
  result = qword_1EC218840;
  if (!qword_1EC218840)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StoryState.Error, &type metadata for StoryState.Error, v0, v1);
    atomic_store(result, &qword_1EC218840);
  }

  return result;
}

void *OUTLINED_FUNCTION_21_27@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  return memcpy(va, ((a1 & 0x1FFFFFFFFFFFFFFFLL) + 16), 0x50uLL);
}

void OUTLINED_FUNCTION_40_19()
{

  JUMPOUT(0x1CCA5CD70);
}

id sub_1C7195EE4(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1C754DC8C();
  v4 = [v2 initWithContentsOfURL_];

  v5 = sub_1C754DD2C();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

uint64_t GlobalTraitGeneratorConfiguration.init(numberOfGlobalTraits:llmVersion:contextSize:minimumNumberOfAssetsRequiredForGlobalTrait:maximumNumberOfAssetsRequiredForGlobalTrait:minimumRatioOfAssetsRequiredForGlobalTrait:maximumNumberOfTokensForLifeContext:computeNumberOfTokens:useGlobalTraitsV3:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(uint64_t a1, uint64_t a2)@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, unsigned __int8 a11)
{
  v41 = a3;
  v42 = a6;
  v37 = a4;
  v38 = a5;
  v39 = a2;
  v36 = a1;
  v40 = a11;
  v15 = sub_1C754E15C();
  OUTLINED_FUNCTION_3_0();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v33 - v22;
  if (a7)
  {
    v24 = a7;
  }

  else
  {
    v24 = sub_1C7196254;
  }

  if (a7)
  {
    v25 = a8;
  }

  else
  {
    v25 = 0;
  }

  v34 = v25;
  v35 = v24;
  sub_1C6F9EE84(a7, a8);
  sub_1C754E0AC();
  sub_1C754E04C();
  v26 = *(v17 + 8);
  v26(v20, v15);
  sub_1C754E03C();
  v27 = sub_1C719647C(v23);
  sub_1C6F6E5B4(a7, a8);
  result = (v26)(v23, v15);
  v29 = v37;
  *a9 = v36;
  *(a9 + 8) = v29;
  *(a9 + 16) = v38;
  *(a9 + 24) = a10;
  *(a9 + 32) = v27;
  *(a9 + 40) = 1;
  v31 = v41;
  v30 = v42;
  *(a9 + 48) = v39;
  *(a9 + 56) = v31;
  *(a9 + 64) = v30;
  v32 = v34;
  *(a9 + 72) = v35;
  *(a9 + 80) = v32;
  *(a9 + 88) = v40;
  return result;
}

uint64_t sub_1C7196154()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EDD07540);
  __swift_project_value_buffer(v0, qword_1EDD07540);
  return sub_1C754FEFC();
}

uint64_t GlobalTraitGeneratorConfiguration.computeNumberOfTokens.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

void sub_1C7196254(uint64_t a1, uint64_t a2)
{
  if (a1 || a2 != 0xE000000000000000)
  {
    OUTLINED_FUNCTION_103();
    if ((sub_1C7551DBC() & 1) == 0)
    {
      v5 = objc_allocWithZone(MEMORY[0x1E696AE70]);
      v6 = sub_1C71C8B80(0x5A2D417A2D615E5BLL, 0xED00005D20392D30, 0);
      if (v2)
      {
      }

      else
      {
        v7 = v6;
        if (v6)
        {
          v8 = objc_allocWithZone(MEMORY[0x1E696AE70]);
          v9 = sub_1C71C8B80(0x5D275C090A5BLL, 0xE600000000000000, 0);
          v11 = v9;
          if (v9)
          {
            sub_1C6FB5E8C();
            v17 = *(sub_1C755152C() + 16);

            OUTLINED_FUNCTION_103();
            v12 = sub_1C75507FC();
            OUTLINED_FUNCTION_103();
            v13 = sub_1C755065C();
            v14 = [v7 numberOfMatchesInString:v13 options:0 range:{0, v12, 32, 0xE100000000000000, a1, a2}];

            OUTLINED_FUNCTION_103();
            v15 = sub_1C755065C();
            v16 = [v11 numberOfMatchesInString:v15 options:0 range:{0, v12}];

            if (!__OFADD__(v17, v14))
            {
              if (!__OFADD__(&v14[v17], v16))
              {
                return;
              }

              __break(1u);
            }

            __break(1u);
            return;
          }
        }
      }

      sub_1C7196EF4();
      swift_allocError();
      *v10 = 0;
      *(v10 + 8) = 2;
      swift_willThrow();
    }
  }
}

uint64_t sub_1C719647C(uint64_t a1)
{
  v78 = sub_1C754E15C();
  OUTLINED_FUNCTION_3_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C754DD2C();
  OUTLINED_FUNCTION_3_0();
  v75 = v8;
  v76 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v10 = v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v74 - v12;
  v14 = sub_1C754E13C();
  OUTLINED_FUNCTION_3_0();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2177A8, &qword_1C757FB70);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = v74 - v21;
  v23 = [objc_allocWithZone(type metadata accessor for StoryRemoteConfiguration()) init];
  v77 = a1;
  sub_1C754E14C();
  sub_1C754E12C();
  (*(v16 + 8))(v19, v14);
  v24 = sub_1C754E07C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v22, 1, v24);
  v79 = v23;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C7196DE0(v22);
    sub_1C7196E48();
    v26 = swift_allocError();
    *v27 = 1;
    swift_willThrow();
LABEL_11:
    v46 = v78;
    if (qword_1EDD07538 != -1)
    {
      OUTLINED_FUNCTION_0_87(&qword_1EDD07538);
    }

    v47 = sub_1C754FF1C();
    __swift_project_value_buffer(v47, qword_1EDD07540);
    (*(v3 + 16))(v6, v77, v46);
    v48 = v26;
    v49 = sub_1C754FEEC();
    v50 = sub_1C755119C();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v81[0] = swift_slowAlloc();
      *v51 = 136315394;
      sub_1C7196E9C();
      v52 = sub_1C7551D8C();
      v54 = v53;
      (*(v3 + 8))(v6, v46);
      v55 = sub_1C6F765A4(v52, v54, v81);

      *(v51 + 4) = v55;
      *(v51 + 12) = 2080;
      v80 = v26;
      v56 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
      v57 = sub_1C75506EC();
      v59 = sub_1C6F765A4(v57, v58, v81);

      *(v51 + 14) = v59;
      _os_log_impl(&dword_1C6F5C000, v49, v50, "Failed to load file for global traits deny list for locale %s: %s. Using empty deny list.", v51, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    else
    {

      (*(v3 + 8))(v6, v46);
    }

    return MEMORY[0x1E69E7CD0];
  }

  v28 = sub_1C754E05C();
  v30 = v29;
  (*(*(v24 - 8) + 8))(v22, v24);
  sub_1C6F85DE8(0xD000000000000036, 0x80000001C75A26B0);
  v74[0] = v28;
  sub_1C70A9E44();
  v31 = *(v75 + 16);
  v74[1] = v13;
  v31(v10, v13, v76);
  v32 = sub_1C7195EE4(v10);
  if (!v32 || (v33 = v32, v81[0] = 0, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70), sub_1C755049C(), v33, !v81[0]))
  {

    sub_1C7196E48();
    v26 = swift_allocError();
    *v43 = 0;
    swift_willThrow();
    v44 = OUTLINED_FUNCTION_2_58();
    v45(v44);
    goto LABEL_11;
  }

  v34 = sub_1C6FE3768();

  if (!v34)
  {
    if (qword_1EDD07538 != -1)
    {
      OUTLINED_FUNCTION_0_87(&qword_1EDD07538);
    }

    v62 = sub_1C754FF1C();
    __swift_project_value_buffer(v62, qword_1EDD07540);
    sub_1C75504FC();
    v63 = sub_1C754FEEC();
    v64 = sub_1C75511BC();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v81[0] = v66;
      *v65 = 136315138;
      v67 = sub_1C6F765A4(v74[0], v30, v81);

      *(v65 + 4) = v67;
      _os_log_impl(&dword_1C6F5C000, v63, v64, "No deny list found for language code %s - using empty deny list", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v66);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    else
    {
    }

    v72 = OUTLINED_FUNCTION_2_58();
    v73(v72);
    return MEMORY[0x1E69E7CD0];
  }

  if (qword_1EDD07538 != -1)
  {
    OUTLINED_FUNCTION_0_87(&qword_1EDD07538);
  }

  v35 = sub_1C754FF1C();
  __swift_project_value_buffer(v35, qword_1EDD07540);
  sub_1C75504FC();
  sub_1C75504FC();
  v36 = sub_1C754FEEC();
  v37 = sub_1C75511BC();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v81[0] = swift_slowAlloc();
    *v38 = 136380931;
    v39 = MEMORY[0x1CCA5D090](v34, MEMORY[0x1E69E6158]);
    v41 = sub_1C6F765A4(v39, v40, v81);

    *(v38 + 4) = v41;
    *(v38 + 12) = 2080;
    v42 = sub_1C6F765A4(v74[0], v30, v81);

    *(v38 + 14) = v42;
    _os_log_impl(&dword_1C6F5C000, v36, v37, "Using deny list %{private}s for language code %s", v38, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  else
  {
  }

  v68 = v79;
  sub_1C706D154();
  v60 = v69;

  v70 = OUTLINED_FUNCTION_2_58();
  v71(v70);
  return v60;
}

uint64_t sub_1C7196D38(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 89))
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

uint64_t sub_1C7196D78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C7196DE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2177A8, &qword_1C757FB70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C7196E48()
{
  result = qword_1EC218848;
  if (!qword_1EC218848)
  {
    result = swift_getWitnessTable(byte_1C7573CC0, &type metadata for GlobalTraitGeneratorConfiguration.Error, v0, v1);
    atomic_store(result, &qword_1EC218848);
  }

  return result;
}

unint64_t sub_1C7196E9C()
{
  result = qword_1EDD0CB88;
  if (!qword_1EDD0CB88)
  {
    v3 = sub_1C754E15C();
    result = swift_getWitnessTable(MEMORY[0x1E6969798], v3, v0, v1);
    atomic_store(result, &qword_1EDD0CB88);
  }

  return result;
}

unint64_t sub_1C7196EF4()
{
  result = qword_1EC218C40;
  if (!qword_1EC218C40)
  {
    result = swift_getWitnessTable(byte_1C7575EEC, &type metadata for StoryGenerationUtilities.Error, v0, v1);
    atomic_store(result, &qword_1EC218C40);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for GlobalTraitGeneratorConfiguration.Error(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C7197028()
{
  result = qword_1EC218850;
  if (!qword_1EC218850)
  {
    result = swift_getWitnessTable(byte_1C7573C98, &type metadata for GlobalTraitGeneratorConfiguration.Error, v0, v1);
    atomic_store(result, &qword_1EC218850);
  }

  return result;
}

PHFetchOptions __swiftcall StoryPhotoLibraryContext.sharingFilterFetchOptions()()
{
  v1 = *(v0 + 8);
  v2 = [*v0 librarySpecificFetchOptions];
  [v2 setSharingFilter_];
  return v2;
}

uint64_t StoryPhotoLibraryContext.init(photoLibrary:sharingFilter:generationCache:)@<X0>(uint64_t result@<X0>, __int16 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

void static CropUtilities.cropVariants(forAsset:targetSize:faces:)(void *a1, void *a2, double a3, double a4)
{
  v9 = a3 / a4;
  v10 = sub_1C71973D8(a1);
  v11 = sub_1C7197554(a1, v10, a2, v9);

  v16 = MEMORY[0x1E69E7CC0];
  sub_1C6FB6304();
  OUTLINED_FUNCTION_5_46();
  while (1)
  {
    if (a1 == v10)
    {

      v16 = sub_1C71CC8EC(v15);
      sub_1C7199160(&v16);

      sub_1C7197774(&v16);
      return;
    }

    if (v4)
    {
      v12 = MEMORY[0x1CCA5DDD0](v10, v11);
    }

    else
    {
      if (v10 >= *(v5 + 16))
      {
        goto LABEL_14;
      }

      v12 = *(v11 + 8 * v10 + 32);
    }

    v13 = v12;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    [v12 (v6 + 1698)];
    if (v14 <= v9)
    {
    }

    else
    {
      sub_1C755192C();
      sub_1C755196C();
      sub_1C755197C();
      sub_1C755193C();
    }

    ++v10;
  }

  __break(1u);
LABEL_14:
  __break(1u);

  __break(1u);
}

uint64_t sub_1C71973D8(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215008, &qword_1C755C208);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C75604F0;
  *(v2 + 32) = xmmword_1C756A560;
  v3 = [a1 mediaAnalysisProperties];
  v4 = [v3 faceCount];
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_13:
    v12 = OUTLINED_FUNCTION_15(v5);
    OUTLINED_FUNCTION_8_36(v12, 4);
    v2 = v13;
    goto LABEL_4;
  }

  if (!v4)
  {

    return v2;
  }

  OUTLINED_FUNCTION_8_36(1, 3);
  v2 = v6;
  v6[2] = 3;
  v6[6] = 3;
  v5 = v6[3];
  if (v5 <= 7)
  {
    goto LABEL_13;
  }

LABEL_4:
  *(v2 + 16) = 4;
  *(v2 + 56) = 6;
  v7 = [a1 curationProperties];
  if (sub_1C7199CD0(v7) && (v8 = sub_1C6FB6304(), , v8 > 0))
  {
    v10 = *(v2 + 16);
    v9 = *(v2 + 24);
    if (v10 >= v9 >> 1)
    {
      v14 = OUTLINED_FUNCTION_15(v9);
      OUTLINED_FUNCTION_8_36(v14, v10 + 1);
      v2 = v15;
    }

    *(v2 + 16) = v10 + 1;
    *(v2 + 8 * v10 + 32) = 4;
  }

  else
  {
  }

  return v2;
}

unint64_t sub_1C7197554(void *a1, uint64_t a2, void *a3, double a4)
{
  v7 = *MEMORY[0x1E695F050];
  v8 = *(MEMORY[0x1E695F050] + 8);
  v9 = *(MEMORY[0x1E695F050] + 16);
  v10 = *(MEMORY[0x1E695F050] + 24);
  v11 = [a1 mediaAnalysisProperties];
  v12 = [v11 faceCount];
  v13 = v7;
  v14 = v8;
  v15 = v9;
  v16 = v10;
  if (v12)
  {
    [a1 faceAreaMinX];
    v13 = v17;
    [a1 faceAreaMinY];
    v14 = v18;
    [a1 faceAreaMaxX];
    v20 = v19;
    [a1 faceAreaMaxY];
    v15 = v20 - v13;
    v16 = v21 - v14;
  }

  v44 = *&v16;
  v45 = v15;
  v46 = v14;
  v47 = v13;
  v22 = [a1 curationProperties];
  v23 = sub_1C7199CD0(v22);
  if (a3)
  {
    sub_1C7198620(a3);
    OUTLINED_FUNCTION_1_67();
  }

  if (v23)
  {
    v24 = v23;
  }

  else
  {
    v24 = MEMORY[0x1E69E7CC0];
  }

  v25 = [a1 pixelWidth];
  v26 = [a1 pixelHeight];
  [a1 acceptableCropRect];
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  [a1 preferredCropRect];
  v42 = sub_1C7197F0C(a2, v25, v26, v24, 1, a4, v28, v30, v32, v34, v38, v39, v40, v35, v36, v37, v41, v47, v46, v45, v44, v7, v8, v9, v10);

  return v42;
}

void sub_1C7197774(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >> 62)
  {
    v2 = sub_1C75516BC();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2 >= 2)
  {
    v3 = v1 & 0xC000000000000001;
    sub_1C6FB6330();
    v4 = (v1 & 0xC000000000000001) != 0 ? MEMORY[0x1CCA5DDD0](0, v1) : *(v1 + 32);
    v5 = v4;
    v6 = [v4 cropType];

    if (v6 == 1)
    {
      sub_1C6FB6330();
      v7 = v3 ? MEMORY[0x1CCA5DDD0](1, v1) : *(v1 + 40);
      v8 = v7;
      v9 = [v7 cropType];

      if (v9 == 3)
      {
        sub_1C6FB6330();
        if (v3)
        {
          v10 = MEMORY[0x1CCA5DDD0](0, v1);
        }

        else
        {
          v10 = *(v1 + 32);
        }

        v11 = v10;
        [v10 cropScore];
        v13 = v12;

        sub_1C6FB6330();
        if (v3)
        {
          v14 = MEMORY[0x1CCA5DDD0](1, v1);
        }

        else
        {
          v14 = *(v1 + 40);
        }

        v15 = v14;
        [v14 cropScore];
        v17 = v16;

        if (v13 - v17 < 0.1)
        {
          sub_1C73B3944(0, 1uLL);
        }
      }
    }
  }
}

void static CropUtilities.cropVariants(forAsset:faces:)(void *a1, void *a2)
{
  PFDeviceScreenSize();

  static CropUtilities.cropVariants(forAsset:targetSize:faces:)(a1, a2, v4, v5);
}

void static CropUtilities.cropVariantsFromSignals(requestedCropTypes:aspectRatio:sourcePixelWidth:sourcePixelHeight:acceptableCropRect:preferredCropRect:normalizedFaceAreaRect:objectSaliencyRects:gazeAreaRect:isDenormalized:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, void x5_0, void x6_0, void x7_0, double a14, double a15, double a16, double a17, uint64_t a18, double a19, double a20, double a21, double a22)
{
  v23 = a5;
  v26 = a2;
  v27 = a21;
  v28 = a22;
  v29 = a19;
  v30 = a20;
  v31 = a17;
  v32 = a18;
  v33 = a16;
  v34 = *(a1 + 16);
  v35 = MEMORY[0x1E69E7CC0];
  if (v34)
  {
    v73 = MEMORY[0x1E69E7CC0];
    sub_1C716E678(0, v34, 0);
    v40 = v73;
    v41 = (a1 + 32);
    v22 = *(v73 + 16);
    do
    {
      v43 = *v41++;
      v42 = v43;
      v73 = v40;
      v44 = *(v40 + 24);
      if (v22 >= v44 >> 1)
      {
        v45 = OUTLINED_FUNCTION_15(v44);
        sub_1C716E678(v45, v22 + 1, 1);
        v40 = v73;
      }

      *(v40 + 16) = v22 + 1;
      *(v40 + 8 * v22++ + 32) = v42;
      --v34;
    }

    while (v34);
    v46 = a12;
    v47 = a13;
    v48 = a10;
    v49 = a11;
    v26 = a2;
    v50 = a8;
    v51 = a9;
    v35 = MEMORY[0x1E69E7CC0];
    v52 = a6;
    v53 = a7;
    v23 = a5;
    v54 = a14;
  }

  else
  {
    OUTLINED_FUNCTION_3_59();
    v57 = v56;
    v58 = sub_1C7197DAC();
    a15 = v57;
    v33 = a16;
    v31 = a17;
    v32 = a18;
    v29 = a19;
    v30 = a20;
    v27 = a21;
    v28 = a22;
    v40 = v58;
    v46 = a12;
    v47 = a13;
    v48 = a10;
    v49 = a11;
    v50 = a8;
    v51 = a9;
    v52 = a6;
    v53 = a7;
    v54 = a14;
  }

  v59 = sub_1C7197F0C(v40, v26, a3, a4, v23 & 1, v52, v53, v50, v51, v48, v49, v46, v47, v37, v38, v39, v54, a15, v33, v31, v32, v29, v30, v27, v28);

  v73 = v35;
  sub_1C6FB6304();
  OUTLINED_FUNCTION_5_46();
  while (1)
  {
    if (a4 == v26)
    {

      sub_1C7197774(&v73);
      return;
    }

    if (v40)
    {
      v60 = MEMORY[0x1CCA5DDD0](v26, v59);
    }

    else
    {
      if (v26 >= MEMORY[0x10])
      {
        goto LABEL_21;
      }

      v60 = *(v59 + 8 * v26 + 32);
    }

    v61 = v60;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    [v60 (v22 + 1698)];
    if (v62 <= v54)
    {
    }

    else
    {
      sub_1C755192C();
      sub_1C755196C();
      sub_1C755197C();
      sub_1C755193C();
    }

    ++v26;
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_1C7197DAC()
{
  OUTLINED_FUNCTION_10_41();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215008, &qword_1C755C208);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C75604F0;
  *(v0 + 32) = xmmword_1C756A560;
  OUTLINED_FUNCTION_0_88();
  OUTLINED_FUNCTION_3_59();
  if (!CGRectEqualToRect(v11, v13))
  {
    OUTLINED_FUNCTION_8_36(1, 3);
    v0 = v1;
    *(v1 + 16) = 3;
    *(v1 + 48) = 3;
  }

  if (sub_1C6FB6304() >= 1)
  {
    v3 = *(v0 + 16);
    v2 = *(v0 + 24);
    if (v3 >= v2 >> 1)
    {
      v7 = OUTLINED_FUNCTION_15(v2);
      OUTLINED_FUNCTION_8_36(v7, v3 + 1);
      v0 = v8;
    }

    *(v0 + 16) = v3 + 1;
    *(v0 + 8 * v3 + 32) = 4;
  }

  OUTLINED_FUNCTION_3_59();
  if (!CGRectEqualToRect(v12, v14))
  {
    v5 = *(v0 + 16);
    v4 = *(v0 + 24);
    if (v5 >= v4 >> 1)
    {
      v9 = OUTLINED_FUNCTION_15(v4);
      OUTLINED_FUNCTION_8_36(v9, v5 + 1);
      v0 = v10;
    }

    *(v0 + 16) = v5 + 1;
    *(v0 + 8 * v5 + 32) = 6;
  }

  return v0;
}

unint64_t sub_1C7197F0C(uint64_t a1, uint64_t a2, uint64_t a3, int64_t a4, int a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13, uint64_t x5_0, uint64_t x6_0, uint64_t x7_0, double a14, double a15, double a16, double a17, uint64_t a18, double a22, double a23, double a24, double a25)
{
  CGRectMake();
  v108.origin.x = v30;
  r2 = v30;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v106.size.width = a17 * 1.1;
  v106.size.height = *&a18 * 1.1;
  v37 = a15 + a17 * 0.5;
  v38 = a16 + *&a18 * 0.5;
  v106.origin.x = v37 + a17 * 1.1 * -0.5;
  v106.origin.y = v38 + *&a18 * 1.1 * -0.5;
  v108.origin.y = v32;
  v108.size.width = v34;
  v108.size.height = v36;
  CGRectIntersection(v106, v108);
  v99 = a17;
  v107.size.width = v99 + v99;
  v107.size.height = *&a18 + *&a18;
  v107.origin.x = v37 + (v99 + v99) * -0.5;
  v107.origin.y = v38 + (*&a18 + *&a18) * -0.5;
  v109.origin.x = r2;
  v109.origin.y = v32;
  v109.size.width = v34;
  v109.size.height = v36;
  CGRectIntersection(v107, v109);
  if (sub_1C6FB6304())
  {
    sub_1C6FB6330();
    isUniquelyReferenced_nonNull_bridgeObject = 0;
    if ((a4 & 0xC000000000000001) != 0)
    {
      goto LABEL_52;
    }

    sub_1C6FB6330();
    v40 = *(a4 + 32);
LABEL_4:
    v41 = v40;
    v42 = v99;
    MEMORY[0x1CCA5E7F0]();
  }

  else
  {
    v42 = a17;
  }

  v105 = MEMORY[0x1E69E7CC0];
  v43 = *(a1 + 16);
  if (v43)
  {
    v44 = 0;
    v99 = a25;
    a1 += 32;
    v103 = MEMORY[0x1E69E7CC0];
    v97 = v43;
    v98 = a2;
    v94 = a5;
    v93 = a3;
    v96 = a1;
    while (1)
    {
      if (*(a1 + 8 * v44) == 5)
      {
        OUTLINED_FUNCTION_7_42();
        OUTLINED_FUNCTION_6_50();
        v60 = sub_1C7198878(v45, a3, v52, v53, v54, v55, v56, v57, v58, v59, v46, v47, v48, v49, v50, v51, v90, v91, v92, *&v42, a18);
        MEMORY[0x1CCA5D040]();
        v61 = *((v105 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v105 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v61 >> 1)
        {
          OUTLINED_FUNCTION_15(v61);
          sub_1C7550B9C();
        }

        sub_1C7550BEC();

        v103 = v105;
        goto LABEL_40;
      }

      OUTLINED_FUNCTION_7_42();
      OUTLINED_FUNCTION_6_50();
      v72 = sub_1C7198C18(v62, a2, a3, v63, v64, v65, v66, v67, v68, v69, v70, v71, v90, *&v91, *&v92, v42, *&a18, a22, a23, a24, a25);
      v73 = v72;
      v74 = v72 >> 62;
      if (v72 >> 62)
      {
        v75 = sub_1C75516BC();
      }

      else
      {
        v75 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      a2 = v103;
      a4 = v103 >> 62;
      if (v103 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_1C75516BC();
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v102 = v75;
      v76 = __OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v75);
      v77 = isUniquelyReferenced_nonNull_bridgeObject + v75;
      if (v76)
      {
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        MEMORY[0x1CCA5DDD0](isUniquelyReferenced_nonNull_bridgeObject, a4);
        swift_unknownObjectRelease();
        sub_1C6FB6330();
        v40 = MEMORY[0x1CCA5DDD0](0, a4);
        goto LABEL_4;
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        break;
      }

      if (a4)
      {
        goto LABEL_22;
      }

LABEL_23:
      isUniquelyReferenced_nonNull_bridgeObject = sub_1C75518CC();
      a2 = isUniquelyReferenced_nonNull_bridgeObject;
      v78 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_24:
      v103 = a2;
      v79 = *(v78 + 16);
      a4 = (*(v78 + 24) >> 1) - v79;
      v80 = v78 + 8 * v79;
      v101 = v78;
      if (v74)
      {
        v81 = sub_1C75516BC();
        if (!v81)
        {
LABEL_38:

          v86 = a2;
          if (v102 > 0)
          {
            goto LABEL_47;
          }

          goto LABEL_39;
        }

        a2 = v81;
        isUniquelyReferenced_nonNull_bridgeObject = sub_1C75516BC();
        if (a4 < isUniquelyReferenced_nonNull_bridgeObject)
        {
          goto LABEL_49;
        }

        if (a2 < 1)
        {
          goto LABEL_51;
        }

        v95 = isUniquelyReferenced_nonNull_bridgeObject;
        a4 = v80 + 32;
        sub_1C7199C6C();
        v82 = 0;
        do
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215660, qword_1C7573DA0);
          v83 = sub_1C6FDD09C(v104, v82, v73);
          v85 = *v84;
          v83(v104, 0);
          *(a4 + 8 * v82++) = v85;
        }

        while (a2 != v82);
        a5 = v94;
        a3 = v93;
        a1 = v95;
      }

      else
      {
        a1 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!a1)
        {
          goto LABEL_38;
        }

        if (a4 < a1)
        {
          goto LABEL_50;
        }

        sub_1C6F65BE8(0, &qword_1EDD0CE98, off_1E829F3D0);
        swift_arrayInitWithCopy();
      }

      v86 = v103;
      if (a1 < v102)
      {
        goto LABEL_47;
      }

      if (a1 > 0)
      {
        v87 = *(v101 + 16);
        v76 = __OFADD__(v87, a1);
        v88 = v87 + a1;
        if (v76)
        {
          goto LABEL_48;
        }

        *(v101 + 16) = v88;
      }

LABEL_39:
      v105 = v86;
      v43 = v97;
      a2 = v98;
      a1 = v96;
LABEL_40:
      if (++v44 == v43)
      {
        return v103;
      }
    }

    if (!a4)
    {
      v78 = v103 & 0xFFFFFFFFFFFFFF8;
      if (v77 <= *((v103 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

LABEL_22:
    sub_1C75516BC();
    goto LABEL_23;
  }

  return MEMORY[0x1E69E7CC0];
}

double sub_1C7198620(void *a1)
{
  v2 = swift_allocObject();
  v3 = *(MEMORY[0x1E695F050] + 16);
  *(v2 + 16) = *MEMORY[0x1E695F050];
  *(v2 + 32) = v3;
  v7[4] = sub_1C7199D40;
  v7[5] = v2;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1C7067B48;
  v7[3] = &block_descriptor_13;
  v4 = _Block_copy(v7);

  [a1 enumerateObjectsUsingBlock_];
  _Block_release(v4);
  swift_beginAccess();
  v5 = *(v2 + 16);

  return v5;
}

void sub_1C7198764(void *a1, uint64_t a2, uint64_t a3, double *a4)
{
  [a1 gazeRect];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  CGRectMake();
  v33.origin.x = v14;
  v33.origin.y = v15;
  v33.size.width = v16;
  v33.size.height = v17;
  v30.origin.x = v7;
  v30.origin.y = v9;
  v30.size.width = v11;
  v30.size.height = v13;
  if (!CGRectEqualToRect(v30, v33))
  {
    swift_beginAccess();
    v18 = a4[2];
    v19 = a4[3];
    v20 = a4[4];
    v21 = a4[5];
    [a1 gazeRect];
    v34.origin.x = v22;
    v34.origin.y = v23;
    v34.size.width = v24;
    v34.size.height = v25;
    v31.origin.x = v18;
    v31.origin.y = v19;
    v31.size.width = v20;
    v31.size.height = v21;
    v32 = CGRectUnion(v31, v34);
    x = v32.origin.x;
    y = v32.origin.y;
    width = v32.size.width;
    height = v32.size.height;
    swift_beginAccess();
    a4[2] = x;
    a4[3] = y;
    a4[4] = width;
    a4[5] = height;
  }
}

id sub_1C7198878(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, double a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v36[1] = *MEMORY[0x1E69E9840];
  CGRectMake();
  v35 = 0;
  v36[0] = 0.0;
  v34 = 1;
  v26 = [objc_opt_self() deviceConfigurationForOrientation_];
  if (!v26)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  v27 = v26;
  [objc_opt_self() bestCropRectV2ForPosterClassification:1 layoutConfiguration:v26 sourcePixelWidth:a1 sourcePixelHeight:a2 sourcePreferredCropRectNormalized:v36 sourceAcceptableCropRectNormalized:&v35 sourceFaceAreaRectNormalized:a8 outputCropScore:a9 outputLayoutScore:a10 outputClockOverlapAcceptable:{a17, a4, a5, a6, a7, a18, a19, a20, a21, &v34}];
  OUTLINED_FUNCTION_1_67();

  result = OUTLINED_FUNCTION_15_38(objc_allocWithZone(PNCropVariant), sel_initWithAspectRatio_scaleFactor_cropScore_cropType_cropRect_, a3, 1.0, v36[0]);
  if (!result)
  {
    goto LABEL_5;
  }

  return result;
}

void static CropUtilities.computeIOU(_:_:)(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  if (a3 != 0.0 && a4 != 0.0)
  {
    v9 = *MEMORY[0x1E69BDDB0];
    v10 = *(MEMORY[0x1E69BDDB0] + 8);
    v11 = v10 == a4 && v9 == a3;
    if (!v11 && a3 * a4 > 0.0 && a7 != 0.0 && a8 != 0.0)
    {
      v12 = v10 == a8 && v9 == a7;
      if (!v12 && a7 * a8 > 0.0)
      {
        OUTLINED_FUNCTION_2_59();
        CGRectGetMinX(v13);
        v14.origin.x = OUTLINED_FUNCTION_0_88();
        CGRectGetMinX(v14);
        OUTLINED_FUNCTION_2_59();
        CGRectGetMinY(v15);
        v16.origin.x = OUTLINED_FUNCTION_0_88();
        CGRectGetMinY(v16);
        OUTLINED_FUNCTION_2_59();
        CGRectGetMaxX(v17);
        v18.origin.x = OUTLINED_FUNCTION_0_88();
        CGRectGetMaxX(v18);
        OUTLINED_FUNCTION_2_59();
        CGRectGetMaxY(v19);
        v20.origin.x = OUTLINED_FUNCTION_0_88();
        CGRectGetMaxY(v20);
      }
    }
  }
}

uint64_t sub_1C7198BC8()
{
  OUTLINED_FUNCTION_10_41();
  v4 = (v3 >= 0.0) & ~CGRectIsNull(v6);
  if (v2 < 0.0)
  {
    v4 = 0;
  }

  if (v1 <= 0.0)
  {
    v4 = 0;
  }

  if (v0 > 0.0)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

id sub_1C7198C18(uint64_t a1, uint64_t a2, uint64_t a3, char a4, double a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, CGFloat a13, double a14, double a15, double a16, double a17, double a18, double a19, double a20, double a21)
{
  v111[1] = *MEMORY[0x1E69E9840];
  x = *MEMORY[0x1E695F050];
  y = *(MEMORY[0x1E695F050] + 8);
  width = *(MEMORY[0x1E695F050] + 16);
  height = *(MEMORY[0x1E695F050] + 24);
  v29 = OUTLINED_FUNCTION_9_43();
  switch(a1)
  {
    case 0:
      height = a13;
      x = v34;
      y = v35;
      width = v36;
      r2 = v37;
      v103 = v31;
      v105 = v32;
      v107 = v33;
      if ((sub_1C7198BC8() & 1) == 0)
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_13_39();
      *&v29 = CGRectUnion(v112, v117);
      v38 = v40;
      v39 = v41;
      goto LABEL_20;
    case 1:
      v63 = v31;
      v64 = v32;
      v65 = v33;
      v66 = v37;
      v67 = sub_1C7198BC8();
      v68 = v66;
      v69 = v65;
      v70 = v66;
      v71 = v63;
      v72 = v64;
      v73 = v65;
      if ((v67 & 1) == 0)
      {
        goto LABEL_11;
      }

      static CropUtilities.computeIOU(_:_:)(v66, v63, v64, v65, a14, a15, a16, a17);
      if (v74 <= 0.5)
      {
        return MEMORY[0x1E69E7CC0];
      }

      OUTLINED_FUNCTION_13_39();
      *&v70 = CGRectIntersection(v115, v119);
      v72 = v75;
      v73 = v76;
      v69 = v65;
      v68 = v66;
LABEL_11:
      v77 = v63;
      v78 = v64;
      a21 = v70;
      a20 = v71;
      a19 = v72;
      a18 = v73;
      v79 = v69;
      v80 = v68;
      CGRectMake();
      v120.origin.x = v81;
      v120.origin.y = v82;
      v120.size.width = v83;
      v120.size.height = v84;
      v116.size.width = v78 * 1.2;
      v116.size.height = v79 * 1.2;
      v116.origin.x = v80 + v78 * 0.5 + v78 * 1.2 * -0.5;
      v116.origin.y = v77 + v79 * 0.5 + v79 * 1.2 * -0.5;
      v114 = CGRectIntersection(v116, v120);
      goto LABEL_12;
    case 2:
      OUTLINED_FUNCTION_12_38();
      v43 = v42;
      v45 = v44;
      v47 = v46;
      v49 = v48;
      height = v50;
      width = v51;
      y = v52;
      x = v53;
      v54 = sub_1C7198BC8();
      v29 = v49;
      v30 = v47;
      v38 = v45;
      v39 = v43;
      if (v54)
      {
        goto LABEL_20;
      }

      return MEMORY[0x1E69E7CC0];
    case 3:
      OUTLINED_FUNCTION_11_35();
      OUTLINED_FUNCTION_12_38();
      v105 = v86;
      v107 = v85;
      r2 = v88;
      v103 = v87;
      goto LABEL_15;
    case 4:
      OUTLINED_FUNCTION_11_35();
      r2 = v90;
      v103 = v89;
      v105 = v92;
      v107 = v91;
      OUTLINED_FUNCTION_0_88();
LABEL_15:
      if ((sub_1C7198BC8() & 1) == 0)
      {
        return MEMORY[0x1E69E7CC0];
      }

      v93 = OUTLINED_FUNCTION_0_88();
      x = OUTLINED_FUNCTION_14_36(v93, v94, v95, v96);
      y = v97;
      width = v98;
      height = v99;
LABEL_17:
      v29 = r2;
      v30 = v103;
      v38 = v105;
      v39 = v107;
      goto LABEL_20;
    case 5:
      goto LABEL_20;
    case 6:
      v104 = v34;
      v106 = v35;
      v108 = v36;
      OUTLINED_FUNCTION_0_88();
      if ((sub_1C7198BC8() & 1) == 0)
      {
        return MEMORY[0x1E69E7CC0];
      }

      v59 = OUTLINED_FUNCTION_0_88();
      OUTLINED_FUNCTION_14_36(v59, v60, v61, v62);
      OUTLINED_FUNCTION_1_67();
      v118.origin.x = v104;
      v118.origin.y = v106;
      v118.size.width = v108;
      v118.size.height = a13;
      v114 = CGRectUnion(v113, v118);
LABEL_12:
      v39 = a18;
      v38 = a19;
      x = v114.origin.x;
      v29 = a21;
      y = v114.origin.y;
      v30 = a20;
      width = v114.size.width;
      height = v114.size.height;
LABEL_20:
      v110 = MEMORY[0x1E69E7CC0];
      v111[0] = 0.0;
      [objc_opt_self() bestCropRectV2ForAspectRatio:a2 zoom:a3 sourcePixelWidth:v111 sourcePixelHeight:a5 sourceEssentialAreaRect:1.0 sourceSecondaryEssentialAreaRect:v29 outputCropScore:{v30, v38, v39, *&x, *&y, *&width, *&height}];
      OUTLINED_FUNCTION_1_67();
      if (a4)
      {
        CGRectMake();
      }

      result = OUTLINED_FUNCTION_15_38(objc_allocWithZone(PNCropVariant), sel_initWithAspectRatio_scaleFactor_cropScore_cropType_cropRect_, a5, 1.0, v111[0]);
      if (result)
      {
        MEMORY[0x1CCA5D040]();
        v101 = *((v110 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v110 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v101 >> 1)
        {
          OUTLINED_FUNCTION_15(v101);
          sub_1C7550B9C();
        }

        sub_1C7550BEC();
        return v110;
      }

      else
      {
        __break(1u);
      }

      return result;
    default:
      v29 = OUTLINED_FUNCTION_9_43();
      goto LABEL_20;
  }
}

id CropUtilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CropUtilities.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CropUtilities();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CropUtilities.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CropUtilities();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C7199160(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1C7423D10();
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1C71991DC(v6);
  return sub_1C755193C();
}

void sub_1C71991DC(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_1C7551D7C();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_1C739D560(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_1C71993B0(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_1C71992BC(0, v3, 1, a1);
  }
}

void sub_1C71992BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
    while (2)
    {
      v8 = *(v5 + 8 * v4);
      v9 = v7;
      v10 = v6;
      do
      {
        v11 = *v10;
        v12 = v8;
        v13 = v11;
        [v12 cropScore];
        v15 = v14;
        [v13 cropScore];
        v17 = v16;

        if (v17 >= v15)
        {
          break;
        }

        if (!v5)
        {
          __break(1u);
          return;
        }

        v18 = *v10;
        v8 = *(v10 + 8);
        *v10 = v8;
        *(v10 + 8) = v18;
        v10 -= 8;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v6 += 8;
      --v7;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1C71993B0(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_93:
    v115 = *a1;
    if (!*a1)
    {
      goto LABEL_134;
    }

    v5 = v117;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_95:
      v100 = v6 + 16;
      v101 = *(v6 + 2);
      while (v101 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_131;
        }

        v102 = v6;
        v103 = &v6[16 * v101];
        v104 = *v103;
        v105 = &v100[2 * v101];
        v106 = *(v105 + 1);
        sub_1C7199A10((*a3 + 8 * *v103), (*a3 + 8 * *v105), (*a3 + 8 * v106), v115);
        if (v5)
        {
          break;
        }

        if (v106 < v104)
        {
          goto LABEL_119;
        }

        if (v101 - 2 >= *v100)
        {
          goto LABEL_120;
        }

        *v103 = v104;
        *(v103 + 1) = v106;
        v107 = *v100 - v101;
        if (*v100 < v101)
        {
          goto LABEL_121;
        }

        v101 = *v100 - 1;
        sub_1C7423CF4(v105 + 16, v107, v105);
        *v100 = v101;
        v6 = v102;
      }

LABEL_103:

      return;
    }

LABEL_128:
    v6 = sub_1C7420830();
    goto LABEL_95;
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  v7 = &selRef_clsSceneClassifications;
  while (1)
  {
    v8 = v5++;
    if (v5 < v4)
    {
      v109 = v6;
      v9 = v8;
      v10 = (*a3 + 8 * v8);
      v11 = 8 * v9;
      v13 = *v10;
      v12 = v10 + 2;
      v14 = *(*a3 + 8 * v5);
      v15 = v13;
      [v14 v7[42]];
      v17 = v16;
      [v15 v7[42]];
      v19 = v18;

      v112 = v9;
      v20 = v9 + 2;
      while (1)
      {
        v21 = v20;
        if (++v5 >= v4)
        {
          break;
        }

        v22 = *(v12 - 1);
        v23 = *v12;
        v24 = v22;
        [v23 v7[42]];
        v26 = v25;
        [v24 v7[42]];
        v28 = v27;

        ++v12;
        v20 = v21 + 1;
        if (v19 < v17 == v28 >= v26)
        {
          goto LABEL_9;
        }
      }

      v5 = v4;
LABEL_9:
      if (v19 >= v17)
      {
        v6 = v109;
        v8 = v112;
      }

      else
      {
        v8 = v112;
        if (v5 < v112)
        {
          goto LABEL_125;
        }

        if (v112 >= v5)
        {
          v6 = v109;
        }

        else
        {
          if (v4 >= v21)
          {
            v29 = v21;
          }

          else
          {
            v29 = v4;
          }

          v30 = 8 * v29 - 8;
          v31 = v5;
          v32 = v112;
          v6 = v109;
          do
          {
            if (v32 != --v31)
            {
              v33 = *a3;
              if (!*a3)
              {
                goto LABEL_132;
              }

              v34 = *(v33 + v11);
              *(v33 + v11) = *(v33 + v30);
              *(v33 + v30) = v34;
            }

            ++v32;
            v30 -= 8;
            v11 += 8;
          }

          while (v32 < v31);
        }
      }
    }

    v35 = a3[1];
    if (v5 < v35)
    {
      if (__OFSUB__(v5, v8))
      {
        goto LABEL_124;
      }

      if (v5 - v8 < a4)
      {
        break;
      }
    }

LABEL_39:
    if (v5 < v8)
    {
      goto LABEL_123;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C6FB17EC(0, *(v6 + 2) + 1, 1, v6);
      v6 = v98;
    }

    v53 = *(v6 + 2);
    v52 = *(v6 + 3);
    v54 = v53 + 1;
    if (v53 >= v52 >> 1)
    {
      sub_1C6FB17EC(v52 > 1, v53 + 1, 1, v6);
      v6 = v99;
    }

    *(v6 + 2) = v54;
    v55 = v6 + 32;
    v56 = &v6[16 * v53 + 32];
    *v56 = v8;
    *(v56 + 1) = v5;
    v115 = *a1;
    if (!*a1)
    {
      goto LABEL_133;
    }

    if (v53)
    {
      v114 = v5;
      while (1)
      {
        v57 = v54 - 1;
        v58 = &v55[16 * v54 - 16];
        v59 = &v6[16 * v54];
        if (v54 >= 4)
        {
          break;
        }

        if (v54 == 3)
        {
          v60 = *(v6 + 4);
          v61 = *(v6 + 5);
          v70 = __OFSUB__(v61, v60);
          v62 = v61 - v60;
          v63 = v70;
LABEL_60:
          if (v63)
          {
            goto LABEL_110;
          }

          v75 = *v59;
          v74 = *(v59 + 1);
          v76 = __OFSUB__(v74, v75);
          v77 = v74 - v75;
          v78 = v76;
          if (v76)
          {
            goto LABEL_113;
          }

          v79 = *(v58 + 1);
          v80 = v79 - *v58;
          if (__OFSUB__(v79, *v58))
          {
            goto LABEL_116;
          }

          if (__OFADD__(v77, v80))
          {
            goto LABEL_118;
          }

          if (v77 + v80 >= v62)
          {
            if (v62 < v80)
            {
              v57 = v54 - 2;
            }

            goto LABEL_82;
          }

          goto LABEL_75;
        }

        if (v54 < 2)
        {
          goto LABEL_112;
        }

        v82 = *v59;
        v81 = *(v59 + 1);
        v70 = __OFSUB__(v81, v82);
        v77 = v81 - v82;
        v78 = v70;
LABEL_75:
        if (v78)
        {
          goto LABEL_115;
        }

        v84 = *v58;
        v83 = *(v58 + 1);
        v70 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v70)
        {
          goto LABEL_117;
        }

        if (v85 < v77)
        {
          goto LABEL_89;
        }

LABEL_82:
        if (v57 - 1 >= v54)
        {
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
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*a3)
        {
          goto LABEL_130;
        }

        v89 = &v55[16 * v57 - 16];
        v90 = *v89;
        v91 = v57;
        v92 = &v55[16 * v57];
        v93 = *(v92 + 1);
        sub_1C7199A10((*a3 + 8 * *v89), (*a3 + 8 * *v92), (*a3 + 8 * v93), v115);
        if (v117)
        {
          goto LABEL_103;
        }

        if (v93 < v90)
        {
          goto LABEL_105;
        }

        v5 = v55;
        v94 = v7;
        v95 = v6;
        v96 = *(v6 + 2);
        if (v91 > v96)
        {
          goto LABEL_106;
        }

        *v89 = v90;
        *(v89 + 1) = v93;
        if (v91 >= v96)
        {
          goto LABEL_107;
        }

        v54 = v96 - 1;
        sub_1C7423CF4(v92 + 16, v96 - 1 - v91, v92);
        *(v95 + 2) = v96 - 1;
        v97 = v96 > 2;
        v6 = v95;
        v7 = v94;
        v55 = v5;
        v5 = v114;
        if (!v97)
        {
          goto LABEL_89;
        }
      }

      v64 = &v55[16 * v54];
      v65 = *(v64 - 8);
      v66 = *(v64 - 7);
      v70 = __OFSUB__(v66, v65);
      v67 = v66 - v65;
      if (v70)
      {
        goto LABEL_108;
      }

      v69 = *(v64 - 6);
      v68 = *(v64 - 5);
      v70 = __OFSUB__(v68, v69);
      v62 = v68 - v69;
      v63 = v70;
      if (v70)
      {
        goto LABEL_109;
      }

      v71 = *(v59 + 1);
      v72 = v71 - *v59;
      if (__OFSUB__(v71, *v59))
      {
        goto LABEL_111;
      }

      v70 = __OFADD__(v62, v72);
      v73 = v62 + v72;
      if (v70)
      {
        goto LABEL_114;
      }

      if (v73 >= v67)
      {
        v87 = *v58;
        v86 = *(v58 + 1);
        v70 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v70)
        {
          goto LABEL_122;
        }

        if (v62 < v88)
        {
          v57 = v54 - 2;
        }

        goto LABEL_82;
      }

      goto LABEL_60;
    }

LABEL_89:
    v4 = a3[1];
    if (v5 >= v4)
    {
      goto LABEL_93;
    }
  }

  v36 = v8 + a4;
  if (__OFADD__(v8, a4))
  {
    goto LABEL_126;
  }

  if (v36 >= v35)
  {
    v36 = a3[1];
  }

  if (v36 < v8)
  {
LABEL_127:
    __break(1u);
    goto LABEL_128;
  }

  if (v5 == v36)
  {
    goto LABEL_39;
  }

  v110 = v6;
  v37 = *a3;
  v38 = *a3 + 8 * v5 - 8;
  v113 = v8;
  v115 = v36;
  v39 = v8 - v5;
LABEL_32:
  v40 = *(v37 + 8 * v5);
  v41 = v39;
  v42 = v38;
  while (1)
  {
    v43 = *v42;
    v44 = v40;
    v45 = v43;
    [v44 v7[42]];
    v47 = v46;
    [v45 v7[42]];
    v49 = v48;

    if (v49 >= v47)
    {
LABEL_37:
      ++v5;
      v38 += 8;
      --v39;
      if (v5 == v115)
      {
        v5 = v115;
        v6 = v110;
        v8 = v113;
        goto LABEL_39;
      }

      goto LABEL_32;
    }

    if (!v37)
    {
      break;
    }

    v50 = *v42;
    v40 = *(v42 + 8);
    *v42 = v40;
    *(v42 + 8) = v50;
    v42 -= 8;
    if (__CFADD__(v41++, 1))
    {
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
}

uint64_t sub_1C7199A10(char *a1, id *a2, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = a3 - a2;
  if (v8 < v9)
  {
    sub_1C7423CF8(a1, (a2 - a1) / 8, a4);
    v11 = &v4[v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= a3)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v13 = *v4;
      v14 = *v6;
      v15 = v13;
      [v14 cropScore];
      v17 = v16;
      [v15 cropScore];
      v19 = v18;

      if (v19 >= v17)
      {
        break;
      }

      v20 = v6;
      v21 = v7 == v6++;
      if (!v21)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
    }

    v20 = v4;
    v21 = v7 == v4++;
    if (v21)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v20;
    goto LABEL_13;
  }

  sub_1C7423CF8(a2, a3 - a2, a4);
  v11 = &v4[v9];
  v38 = v4;
LABEL_15:
  v22 = v6 - 1;
  --v5;
  while (v11 > v4 && v6 > v7)
  {
    v24 = v7;
    v25 = v22;
    v26 = *v22;
    v27 = *(v11 - 1);
    v28 = v26;
    [v27 cropScore];
    v30 = v29;
    [v28 cropScore];
    v32 = v31;

    v33 = v5 + 1;
    if (v32 < v30)
    {
      v21 = v33 == v6;
      v34 = v25;
      v6 = v25;
      v7 = v24;
      v4 = v38;
      if (!v21)
      {
        *v5 = *v34;
        v6 = v34;
      }

      goto LABEL_15;
    }

    if (v11 != v33)
    {
      *v5 = *(v11 - 1);
    }

    --v5;
    --v11;
    v22 = v25;
    v7 = v24;
    v4 = v38;
  }

LABEL_28:
  v35 = v11 - v4;
  if (v6 != v4 || v6 >= &v4[v35])
  {
    memmove(v6, v4, 8 * v35);
  }

  return 1;
}

unint64_t sub_1C7199C6C()
{
  result = qword_1EC215668;
  if (!qword_1EC215668)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC215660, qword_1C7573DA0);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &qword_1EC215668);
  }

  return result;
}

uint64_t sub_1C7199CD0(void *a1)
{
  v1 = [a1 objectSaliencyRects];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1C6F65BE8(0, &unk_1EDD0CD10, 0x1E696B098);
  v3 = sub_1C7550B5C();

  return v3;
}

uint64_t dispatch thunk of QueryTokenProviding.groundedQueryTokens(prompt:eventRecorder:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 8) + **(a6 + 8));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1C70E8468;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t type metadata accessor for PromptSuggestionQueryTokenProvider(uint64_t a1)
{
  result = qword_1EC218858;
  if (!qword_1EC218858)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1C7199F04(uint64_t a1)
{
  result = sub_1C7091218();
  if (v2 <= 0x3F)
  {
    result = sub_1C754FF1C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C7199F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = a4;
  v5[12] = v4;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2155A8, &unk_1C7570210);
  v5[13] = swift_task_alloc();
  v5[14] = type metadata accessor for PromptSuggestion(0);
  v5[15] = swift_task_alloc();
  v6 = sub_1C754F38C();
  v5[16] = v6;
  v5[17] = *(v6 - 8);
  v5[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C719A0B8, 0, 0);
}

uint64_t sub_1C719A0B8()
{
  v64 = v0;
  v1 = v0[10];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_1C754F1CC();
  sub_1C754F2CC();
  type metadata accessor for PromptSuggestionQueryTokenProvider(0);
  sub_1C75504FC();
  v2 = sub_1C754FEEC();
  v3 = sub_1C75511BC();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[8];
    v4 = v0[9];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v63[0] = v7;
    *v6 = 136380675;
    *(v6 + 4) = sub_1C6F765A4(v5, v4, v63);
    _os_log_impl(&dword_1C6F5C000, v2, v3, "Getting grounded query tokens for PromptSuggestion: %{private}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  v8 = v0[12];
  v10 = v0[8];
  v9 = v0[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C755BAB0;
  *(inited + 32) = v10;
  *(inited + 40) = v9;
  v12 = *v8;
  sub_1C75504FC();
  v13 = static PromptSuggestionReader.promptSuggestionByPromptText(_:in:sources:)(inited, v12, &unk_1F46A8310);
  swift_setDeallocating();
  sub_1C6FDC9DC();
  sub_1C754F2DC();
  v15 = v0[13];
  v14 = v0[14];
  sub_1C710D950(v13, v15);

  if (__swift_getEnumTagSinglePayload(v15, 1, v14) == 1)
  {
    sub_1C719AA74(v0[13]);
    v16 = sub_1C75504FC();
    v17 = OUTLINED_FUNCTION_4_48(v16);
    v18 = sub_1C75511BC();

    if (os_log_type_enabled(v17, v18))
    {
      v20 = v0[8];
      v19 = v0[9];
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v63[0] = v22;
      *v21 = 136380675;
      *(v21 + 4) = sub_1C6F765A4(v20, v19, v63);
      _os_log_impl(&dword_1C6F5C000, v17, v18, "Failed to find backing PHSuggestion for prompt %{private}s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    v24 = v0[17];
    v23 = v0[18];
    v25 = v0[16];
    v26 = v0[11];
    __swift_project_boxed_opaque_existential_1(v0[10], v1[3]);
    sub_1C754F1AC();
    (*(v24 + 8))(v23, v25);
    sub_1C754F2FC();
    OUTLINED_FUNCTION_3();
    (*(v27 + 8))(v26);
LABEL_22:
    v49 = MEMORY[0x1E69E7CC0];
    goto LABEL_23;
  }

  v28 = v0[15];
  v29 = sub_1C7159368(v0[13], v28);
  v30 = *(v28 + 88);
  if (!*(v30 + 16))
  {
    v39 = OUTLINED_FUNCTION_4_48(v29);
    v40 = sub_1C75511BC();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_1C6F5C000, v39, v40, "Prompt suggestion has missing query tokens", v41, 2u);
      OUTLINED_FUNCTION_109();
    }

    v43 = v0[17];
    v42 = v0[18];
    v45 = v0[15];
    v44 = v0[16];
    v47 = v0[10];
    v46 = v0[11];

    sub_1C715930C(v45);
    __swift_project_boxed_opaque_existential_1(v47, v1[3]);
    sub_1C754F1AC();
    (*(v43 + 8))(v42, v44);
    sub_1C754F2FC();
    OUTLINED_FUNCTION_3();
    (*(v48 + 8))(v46);
    goto LABEL_22;
  }

  v31 = v0[15];
  v32 = *(v31 + 136);
  v33 = v32 == v0[8] && *(v31 + 144) == v0[9];
  if (v33 || (v32 = sub_1C7551DBC(), (v32 & 1) != 0))
  {
    v34 = OUTLINED_FUNCTION_4_48(v32);
    v35 = sub_1C755118C();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_1C6F5C000, v34, v35, "Prompt suggestion might contain music", v36, 2u);
      OUTLINED_FUNCTION_109();
    }

    v37 = v0[15];

    if (*(v37 + 96))
    {
      v38 = *(v37 + 96);
    }

    else
    {
      v38 = MEMORY[0x1E69E7CC0];
    }

    sub_1C75504FC();
  }

  else
  {
    v38 = MEMORY[0x1E69E7CC0];
  }

  v63[0] = v30;
  sub_1C75504FC();
  sub_1C6FD33F0(v38);
  v49 = v63[0];
  v52 = sub_1C75504FC();
  v53 = OUTLINED_FUNCTION_4_48(v52);
  v54 = sub_1C75511BC();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v63[0] = v56;
    *v55 = 134218242;
    *(v55 + 4) = *(v49 + 16);

    *(v55 + 12) = 2080;
    v57 = MEMORY[0x1CCA5D090](v49, &type metadata for QueryToken);
    v59 = sub_1C6F765A4(v57, v58, v63);

    *(v55 + 14) = v59;
    _os_log_impl(&dword_1C6F5C000, v53, v54, "Found %ld cached query tokens. %s", v55, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v56);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  else
  {
  }

  sub_1C754F2EC();
  v60 = v0[10];
  sub_1C715930C(v0[15]);
  __swift_project_boxed_opaque_existential_1(v60, v1[3]);
  sub_1C754F1AC();
  v61 = OUTLINED_FUNCTION_1_68();
  v62(v61);
LABEL_23:

  v50 = v0[1];

  return v50(v49);
}

uint64_t sub_1C719A8B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1C719A974;

  return sub_1C7199F88(a1, a2, a3, a4);
}

uint64_t sub_1C719A974(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_1C719AA74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2155A8, &unk_1C7570210);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t QueryGenerator.addDisambiguationSuggestions(to:retrievedAssetUUIDs:consolidatedAssetUUIDsByMetadataTokenCategoryTypeString:eventRecorder:progressReporter:)()
{
  OUTLINED_FUNCTION_42();
  v1[292] = v0;
  v1[291] = v2;
  v1[290] = v3;
  v1[289] = v4;
  v1[288] = v5;
  v1[287] = v6;
  v1[293] = *(type metadata accessor for QueryTokenSuggestion(0) - 8);
  v1[294] = swift_task_alloc();
  v1[295] = swift_task_alloc();
  v7 = sub_1C754F38C();
  v1[296] = v7;
  v1[297] = *(v7 - 8);
  v1[298] = swift_task_alloc();
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

void sub_1C719AC0C(uint64_t a1)
{
  v148 = v1;
  v2 = sub_1C754FEEC();
  v3 = sub_1C755117C();
  if (OUTLINED_FUNCTION_21_0(v3))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_8_1();
    _os_log_impl(v4, v5, v6, v7, v8, 2u);
    OUTLINED_FUNCTION_109();
  }

  v9 = *(v1 + 2384);
  v10 = *(v1 + 2320);
  v11 = *(v1 + 2296);

  v137 = v10;
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  sub_1C754F1CC();
  v12 = *(v11 + 16);
  if (!v12)
  {
    v15 = 0;
    v13 = 0;
LABEL_36:
    v49 = sub_1C754FEEC();
    v50 = sub_1C755118C();
    if (OUTLINED_FUNCTION_21_0(v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 134217984;
      *(v51 + 4) = v15;
      _os_log_impl(&dword_1C6F5C000, v49, v9, "Unable to support %ld query tokens that need date and event disambiguation", v51, 0xCu);
      OUTLINED_FUNCTION_109();
    }

    v52 = *(v1 + 2384);
    v53 = *(v1 + 2376);
    v54 = *(v1 + 2368);
    v142 = *(v1 + 2328);
    v55 = *(v1 + 2320);

    sub_1C75504FC();

    __swift_project_boxed_opaque_existential_1(v55, v137[3]);
    OUTLINED_FUNCTION_9_44();
    sub_1C754F1AC();
    (*(v53 + 8))(v52, v54);
    sub_1C754F2FC();
    OUTLINED_FUNCTION_3();
    (*(v56 + 8))(v142);
    goto LABEL_39;
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = (*(v1 + 2296) + 32);
  v17 = MEMORY[0x1E69E7CC8];
  v139 = v16;
  v140 = v12;
  do
  {
    memcpy((v1 + 16), v16, 0x78uLL);
    memcpy(v147, v16, 0x78uLL);
    sub_1C6FCA6E4(v1 + 16, v1 + 136);
    static StoryGenerationUtilities.needsEventDisambiguation(for:)();
    if (v18)
    {
      sub_1C6F6E5B4(v13, 0);
      swift_isUniquelyReferenced_nonNull_native();
      v147[0] = v17;
      sub_1C6FC30F8();
      OUTLINED_FUNCTION_19_29();
      if (v20)
      {
        __break(1u);
LABEL_104:
        __break(1u);
LABEL_105:
        __break(1u);
LABEL_106:
        __break(1u);
        goto LABEL_107;
      }

      LOBYTE(v9) = v19;
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218868, &qword_1C7573E28);
      v22 = OUTLINED_FUNCTION_21_28(v21);
      v17 = v147[0];
      if (v22)
      {
        sub_1C6FC30F8();
        if ((v9 & 1) != (v23 & 1))
        {
          goto LABEL_43;
        }
      }

      if ((v9 & 1) == 0)
      {
        sub_1C6FCABDC();
      }

      sub_1C70F50AC();
      OUTLINED_FUNCTION_24_23((v1 + 2176));
      sub_1C6FDD548(v1 + 2176);
      v20 = __OFADD__(v15++, 1);
      if (v20)
      {
        goto LABEL_104;
      }

      v13 = sub_1C719D928;
    }

    else
    {
      memcpy(v147, (v1 + 16), 0x78uLL);
      static StoryGenerationUtilities.needsDateDisambiguation(for:)();
      if (v24)
      {
        OUTLINED_FUNCTION_14_37();
        swift_isUniquelyReferenced_nonNull_native();
        v147[0] = v17;
        sub_1C6FC30F8();
        OUTLINED_FUNCTION_19_29();
        if (v20)
        {
          goto LABEL_105;
        }

        LOBYTE(v9) = v25;
        v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218868, &qword_1C7573E28);
        v27 = OUTLINED_FUNCTION_21_28(v26);
        v17 = v147[0];
        if (v27)
        {
          sub_1C6FC30F8();
          if ((v9 & 1) != (v28 & 1))
          {
LABEL_43:
            OUTLINED_FUNCTION_44();

            sub_1C7551E4C();
            return;
          }
        }

        if ((v9 & 1) == 0)
        {
          sub_1C6FCABDC();
        }

        sub_1C70F50AC();
        OUTLINED_FUNCTION_24_23((v1 + 2056));
        sub_1C6FDD548(v1 + 2056);
        v20 = __OFADD__(v15++, 1);
        if (v20)
        {
          goto LABEL_106;
        }

        v14 = sub_1C719D928;
      }

      else
      {
        sub_1C6FDD548(v1 + 16);
      }
    }

    *(v1 + 2408) = v17;
    *(v1 + 2400) = v14;
    v16 += 120;
    *(v1 + 2392) = v13;
    --v12;
  }

  while (v12);
  if (v15 != 1)
  {
    goto LABEL_36;
  }

  v29 = sub_1C6FE13B4(2, v17);
  if (v29)
  {
    v30 = v29;
    sub_1C719D310(v29);
    if (v32)
    {
      goto LABEL_111;
    }

    if (*(v30 + 36) != v31)
    {
      goto LABEL_109;
    }

    OUTLINED_FUNCTION_8_37();
    if (v33 != v35)
    {
      OUTLINED_FUNCTION_20_31(v33, v34);

      OUTLINED_FUNCTION_24_23((v1 + 256));
      sub_1C6FCA6E4(v1 + 256, v1 + 376);
      v60 = sub_1C754FEEC();
      v61 = sub_1C75511BC();
      sub_1C6FDD548(v1 + 256);
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v147[0] = v63;
        *v62 = 136380675;
        v64 = *(v1 + 272);
        v65 = *(v1 + 280);
        sub_1C75504FC();
        v66 = sub_1C6F765A4(v64, v65, v147);

        *(v62 + 4) = v66;
        OUTLINED_FUNCTION_8_1();
        _os_log_impl(v67, v68, v69, v70, v71, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v63);
        OUTLINED_FUNCTION_109();
        OUTLINED_FUNCTION_109();
      }

      memcpy((v1 + 496), (v1 + 256), 0x78uLL);
      v72 = swift_task_alloc();
      *(v1 + 2416) = v72;
      *v72 = v1;
      v72[1] = sub_1C719B85C;
      OUTLINED_FUNCTION_44();

      sub_1C719BB8C(v73, v74, v75, v76, v77, v78);
      return;
    }
  }

  v36 = sub_1C6FE13B4(1, v17);
  if (!v36)
  {
    goto LABEL_34;
  }

  v37 = v36;
  sub_1C719D310(v36);
  if (v39)
  {
    goto LABEL_112;
  }

  if (*(v37 + 36) != v38)
  {
    goto LABEL_110;
  }

  OUTLINED_FUNCTION_8_37();
  if (v40 == v42)
  {

LABEL_34:
    v43 = *(v1 + 2384);
    v44 = *(v1 + 2376);
    v45 = *(v1 + 2368);
    v46 = *(v1 + 2328);
    v47 = *(v1 + 2320);
    sub_1C75504FC();

    __swift_project_boxed_opaque_existential_1(v47, v137[3]);
    OUTLINED_FUNCTION_9_44();
    sub_1C754F1AC();
    (*(v44 + 8))(v43, v45);
    sub_1C754F2FC();
    OUTLINED_FUNCTION_3();
    (*(v48 + 8))(v46);
LABEL_39:
    sub_1C6F6E5B4(v13, 0);
    OUTLINED_FUNCTION_14_37();
    goto LABEL_40;
  }

  OUTLINED_FUNCTION_20_31(v40, v41);

  OUTLINED_FUNCTION_24_23((v1 + 616));
  sub_1C6FCA6E4(v1 + 616, v1 + 736);
  v80 = sub_1C754FEEC();
  v81 = sub_1C75511BC();
  sub_1C6FDD548(v1 + 616);
  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v147[0] = v83;
    *v82 = 136380675;
    v84 = *(v1 + 632);
    v85 = *(v1 + 640);
    sub_1C75504FC();
    v86 = sub_1C6F765A4(v84, v85, v147);

    *(v82 + 4) = v86;
    _os_log_impl(&dword_1C6F5C000, v80, v81, "QueryToken %{private}s needs date disambiguation", v82, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v83);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  v134 = *(v1 + 2344);
  v145 = MEMORY[0x1E69E7CC0];
  sub_1C716D7D8(0, v140, 0);
  v87 = 0;
  v88 = v145;
  v141 = *(v1 + 640);
  v143 = *(v1 + 632);
  v129 = *(v1 + 664);
  v130 = *(v1 + 656);
  OUTLINED_FUNCTION_16_29();
  v138 = v89;
  v126 = (v89 + 40);
  while (1)
  {
    memcpy((v1 + 856), &v139[120 * v87], 0x78uLL);
    if (*(v1 + 872) != v143 || *(v1 + 880) != v141)
    {
      v91 = sub_1C7551DBC();
      v92 = v1 + 976;
      if ((v91 & 1) == 0)
      {
        goto LABEL_97;
      }
    }

    v93 = *(v1 + 920);
    if (v93)
    {
      v92 = v1 + 1696;
      if (!v138)
      {
        goto LABEL_97;
      }

      v94 = *(v93 + 16);
      v92 = v1 + 1816;
      if (v94 != *(v138 + 16))
      {
        goto LABEL_97;
      }

      if (v94)
      {
        v95 = v93 == v138;
      }

      else
      {
        v95 = 1;
      }

      if (!v95)
      {
        v96 = (v93 + 40);
        v97 = v126;
        while (1)
        {
          v98 = *(v96 - 1) == *(v97 - 1) && *v96 == *v97;
          if (!v98 && (sub_1C7551DBC() & 1) == 0)
          {
            break;
          }

          v97 += 2;
          v96 += 2;
          if (!--v94)
          {
            goto LABEL_75;
          }
        }

        v92 = v1 + 1936;
LABEL_97:
        sub_1C6FCA6E4(v1 + 856, v92);
LABEL_98:
        memcpy(__dst, (v1 + 856), sizeof(__dst));
        v116 = *(v1 + 968);
        goto LABEL_99;
      }
    }

    else
    {
      v92 = v1 + 1096;
      if (v138)
      {
        goto LABEL_97;
      }
    }

LABEL_75:
    v135 = *(v1 + 936);
    v99 = *(v135 + 16);
    OUTLINED_FUNCTION_15_39();
    v92 = v1 + 1216;
    if (v99 != v100)
    {
      goto LABEL_97;
    }

    v101 = v1 + 1576;
    if (v99)
    {
      v101 = v1 + 1456;
      if (v135 != v136)
      {
        break;
      }
    }

    sub_1C6FCA6E4(v1 + 856, v101);
LABEL_85:
    if (*(v1 + 912))
    {
      if (!v128)
      {
        goto LABEL_98;
      }
    }

    else
    {
      v114 = v127;
      if (*(v1 + 896) != v130)
      {
        v114 = 0;
      }

      if (v114 != 1 || *(v1 + 904) != v129)
      {
        goto LABEL_98;
      }
    }

    memcpy(__dst, (v1 + 856), sizeof(__dst));

    v116 = MEMORY[0x1E69E7CC0];
LABEL_99:
    memcpy(v147, __dst, 0x70uLL);
    v118 = *(v88 + 16);
    v117 = *(v88 + 24);
    if (v118 >= v117 >> 1)
    {
      v120 = OUTLINED_FUNCTION_15(v117);
      sub_1C716D7D8(v120, v118 + 1, 1);
    }

    ++v87;
    *(v88 + 16) = v118 + 1;
    v119 = v88 + 120 * v118;
    memcpy((v119 + 32), v147, 0x70uLL);
    *(v119 + 144) = v116;
    if (v87 == v140)
    {
      v121 = *(v1 + 2384);
      v122 = *(v1 + 2376);
      v123 = *(v1 + 2368);
      v144 = *(v1 + 2328);
      v124 = *(v1 + 2320);
      sub_1C6FDD548(v1 + 616);

      __swift_project_boxed_opaque_existential_1(v124, v137[3]);
      OUTLINED_FUNCTION_9_44();
      sub_1C754F1AC();
      (*(v122 + 8))(v121, v123);
      sub_1C754F2FC();
      OUTLINED_FUNCTION_3();
      (*(v125 + 8))(v144);
      sub_1C6F6E5B4(v13, 0);
      OUTLINED_FUNCTION_14_37();
LABEL_40:

      OUTLINED_FUNCTION_44();

      __asm { BRAA            X2, X16 }
    }
  }

  OUTLINED_FUNCTION_12_39();
  v133 = v102;
  v131 = v136 + v103;
  sub_1C6FCA6E4(v1 + 856, v1 + 1336);
  v104 = 0;
  v132 = v87;
  while (v104 < *(v135 + 16))
  {
    v105 = *(v134 + 72) * v104;
    sub_1C7161564(v133 + v105, *(v1 + 2360));
    OUTLINED_FUNCTION_15_39();
    if (v104 >= v106)
    {
      goto LABEL_108;
    }

    v107 = v13;
    v108 = v14;
    v109 = v88;
    v110 = *(v1 + 2360);
    v111 = *(v1 + 2352);
    sub_1C7161564(v131 + v105, v111);
    v112 = static QueryTokenSuggestion.== infix(_:_:)(v110, v111);
    sub_1C719D800(v111);
    v113 = v110;
    v88 = v109;
    v14 = v108;
    v13 = v107;
    v87 = v132;
    sub_1C719D800(v113);
    if ((v112 & 1) == 0)
    {
      goto LABEL_98;
    }

    if (v99 == ++v104)
    {
      goto LABEL_85;
    }
  }

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
}

uint64_t sub_1C719B85C(uint64_t a1)
{
  OUTLINED_FUNCTION_47();
  v5 = v4;
  OUTLINED_FUNCTION_40();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_40();
  *v8 = v7;
  *(v5 + 2424) = v1;

  if (!v1)
  {
    *(v5 + 2432) = a1;
    sub_1C6FDD548(v5 + 256);
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C719B97C()
{
  v1 = v0[300];
  v2 = v0[298];
  v3 = v0[297];
  v4 = v0[296];
  v5 = v0[290];

  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_1C754F1AC();
  (*(v3 + 8))(v2, v4);
  OUTLINED_FUNCTION_14_37();
  sub_1C6F6E5B4(v1, 0);

  v6 = OUTLINED_FUNCTION_0_89();

  return v7(v6);
}

uint64_t sub_1C719BA78()
{
  v1 = v0[300];
  v2 = v0[298];
  v3 = v0[297];
  v4 = v0[296];
  v5 = v0[290];
  sub_1C6FDD548((v0 + 32));

  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_1C754F1AC();
  (*(v3 + 8))(v2, v4);
  OUTLINED_FUNCTION_14_37();
  sub_1C6F6E5B4(v1, 0);

  OUTLINED_FUNCTION_43();

  return v6();
}

uint64_t sub_1C719BB8C(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[202] = v6;
  v7[201] = a6;
  v7[200] = a5;
  v7[199] = a4;
  v7[198] = a2;
  v7[197] = a1;
  v7[203] = *(type metadata accessor for QueryTokenSuggestion(0) - 8);
  v7[204] = swift_task_alloc();
  v7[205] = swift_task_alloc();
  memcpy(v7 + 2, a1, 0x78uLL);

  return MEMORY[0x1EEE6DFA0](sub_1C719BC7C, 0, 0);
}

uint64_t sub_1C719BC7C()
{
  v1 = *(v0 + 1616);
  Generator = type metadata accessor for QueryGenerator(0);
  *(v0 + 1648) = Generator;
  if (*(v1 + *(Generator + 52)) == 1)
  {
    memcpy((v0 + 136), *(v0 + 1576), 0x78uLL);
    v3 = swift_task_alloc();
    *(v0 + 1656) = v3;
    *v3 = v0;
    v3[1] = sub_1C719BE44;
    v4 = *(v0 + 1600);
    v5 = *(v0 + 1592);

    return sub_1C719C6FC((v0 + 136), v5, v4);
  }

  else
  {
    v7 = sub_1C754FEEC();
    v8 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_21_0(v8))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_8_1();
      _os_log_impl(v9, v10, v11, v12, v13, 2u);
      OUTLINED_FUNCTION_109();
    }

    v14 = *(v0 + 1608);

    v15 = sub_1C754F2FC();
    v16 = *(*(v15 - 8) + 8);
    sub_1C75504FC();
    v16(v14, v15);

    v17 = OUTLINED_FUNCTION_0_89();

    return v18(v17);
  }
}

uint64_t sub_1C719BE44()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 1664) = v4;
  *(v2 + 1672) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

void sub_1C719BF4C()
{
  v87 = v0;
  v1 = *(v0 + 1584);
  v82 = [objc_opt_self() targetNumberOfEventSuggestions];
  v2 = 0;
  v3 = *(v1 + 16);
  v80 = v1 + 32;
  v4 = v1 + 136;
  v5 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v6 = (v4 + 120 * v2);
  while (v3 != v2)
  {
    if (v2 >= v3)
    {
      __break(1u);
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    v7 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_80;
    }

    v9 = *v6;
    v6 += 15;
    v8 = v9;
    ++v2;
    if (v9)
    {
      sub_1C75504FC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB226C();
        v5 = v12;
      }

      v11 = *(v5 + 16);
      v10 = *(v5 + 24);
      if (v11 >= v10 >> 1)
      {
        OUTLINED_FUNCTION_15(v10);
        sub_1C6FB226C();
        v5 = v13;
      }

      *(v5 + 16) = v11 + 1;
      *(v5 + 8 * v11 + 32) = v8;
      v2 = v7;
      goto LABEL_2;
    }
  }

  v14 = *(v5 + 16);
  if (v14)
  {
    __dst[0] = MEMORY[0x1E69E7CC0];
    sub_1C716E23C(0, v14, 0);
    v15 = 32;
    v16 = __dst[0];
    do
    {
      sub_1C75504FC();
      sub_1C706D154();
      v18 = v17;
      __dst[0] = v16;
      v20 = *(v16 + 16);
      v19 = *(v16 + 24);
      if (v20 >= v19 >> 1)
      {
        v21 = OUTLINED_FUNCTION_15(v19);
        sub_1C716E23C(v21, v20 + 1, 1);
        v16 = __dst[0];
      }

      *(v16 + 16) = v20 + 1;
      *(v16 + 8 * v20 + 32) = v18;
      v15 += 8;
      --v14;
    }

    while (v14);
  }

  else
  {

    v16 = MEMORY[0x1E69E7CC0];
  }

  v22 = *(v0 + 1672);
  v23 = *(v0 + 1664);
  v24 = *(v0 + 1608);
  v25 = *(v0 + 1600);
  memcpy(__dst, (v0 + 16), sizeof(__dst));
  v86[0] = v82;
  v86[1] = v16;
  v26 = QueryDisambiguationSuggestionProducer.produceEventSuggestions(forQueryToken:withAssetUUIDs:recipe:eventRecorder:progressReporter:)(__dst, v23, v86, v25, v24);
  if (v22)
  {

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_44();

    __asm { BRAA            X1, X16 }
  }

  sub_1C75504FC();
  sub_1C6FCA6E4(v0 + 16, v0 + 256);
  v29 = sub_1C754FEEC();
  v30 = sub_1C75511BC();
  sub_1C6FDD548(v0 + 16);
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    __dst[0] = v32;
    *v31 = 134218243;
    *(v31 + 4) = *(v26 + 16);

    *(v31 + 12) = 2081;
    *(v31 + 14) = sub_1C6F765A4(*(v0 + 32), *(v0 + 40), __dst);
    _os_log_impl(&dword_1C6F5C000, v29, v30, "Add %ld event suggestions to query token %{private}s", v31, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v32);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  else
  {
  }

  if (!v3)
  {
LABEL_76:

    OUTLINED_FUNCTION_0_89();
    OUTLINED_FUNCTION_44();

    __asm { BRAA            X2, X16 }
  }

  v74 = v26;
  v77 = *(v0 + 1624);
  v85 = MEMORY[0x1E69E7CC0];
  sub_1C716D7D8(0, v3, 0);
  v33 = 0;
  v34 = v85;
  v35 = *(v0 + 32);
  v72 = *(v0 + 64);
  v73 = *(v0 + 56);
  OUTLINED_FUNCTION_16_29();
  v81 = v36;
  v83 = v37;
  v69 = (v36 + 40);
  while (1)
  {
    memcpy((v0 + 376), (v80 + 120 * v33), 0x78uLL);
    if (*(v0 + 392) != v35 || *(v0 + 400) != v83)
    {
      v39 = sub_1C7551DBC();
      v40 = v0 + 496;
      if ((v39 & 1) == 0)
      {
        goto LABEL_71;
      }
    }

    v41 = *(v0 + 440);
    if (v41)
    {
      v40 = v0 + 1216;
      if (!v81)
      {
        goto LABEL_71;
      }

      v42 = *(v41 + 16);
      v40 = v0 + 1336;
      if (v42 != *(v81 + 16))
      {
        goto LABEL_71;
      }

      if (v42)
      {
        v43 = v41 == v81;
      }

      else
      {
        v43 = 1;
      }

      if (!v43)
      {
        v44 = (v41 + 40);
        v45 = v69;
        while (1)
        {
          v46 = *(v44 - 1) == *(v45 - 1) && *v44 == *v45;
          if (!v46 && (sub_1C7551DBC() & 1) == 0)
          {
            break;
          }

          v45 += 2;
          v44 += 2;
          if (!--v42)
          {
            goto LABEL_49;
          }
        }

        v40 = v0 + 1456;
LABEL_71:
        sub_1C6FCA6E4(v0 + 376, v40);
LABEL_72:
        memcpy(v86, (v0 + 376), 0x70uLL);
        v62 = *(v0 + 488);
        goto LABEL_73;
      }
    }

    else
    {
      v40 = v0 + 616;
      if (v81)
      {
        goto LABEL_71;
      }
    }

LABEL_49:
    v78 = *(v0 + 456);
    v47 = *(v78 + 16);
    OUTLINED_FUNCTION_15_39();
    v40 = v0 + 736;
    if (v47 != v48)
    {
      goto LABEL_71;
    }

    v49 = v0 + 1096;
    if (v47)
    {
      v49 = v0 + 976;
      if (v78 != v79)
      {
        break;
      }
    }

    sub_1C6FCA6E4(v0 + 376, v49);
LABEL_59:
    if (*(v0 + 432))
    {
      if (!v71)
      {
        goto LABEL_72;
      }
    }

    else
    {
      v60 = v70;
      if (*(v0 + 416) != v73)
      {
        v60 = 0;
      }

      if (v60 != 1 || *(v0 + 424) != v72)
      {
        goto LABEL_72;
      }
    }

    memcpy(v86, (v0 + 376), 0x70uLL);
    v62 = v74;
    sub_1C75504FC();

LABEL_73:
    memcpy(__dst, v86, 0x70uLL);
    v85 = v34;
    v64 = *(v34 + 16);
    v63 = *(v34 + 24);
    if (v64 >= v63 >> 1)
    {
      v66 = OUTLINED_FUNCTION_15(v63);
      sub_1C716D7D8(v66, v64 + 1, 1);
      v34 = v85;
    }

    ++v33;
    *(v34 + 16) = v64 + 1;
    v65 = v34 + 120 * v64;
    memcpy((v65 + 32), __dst, 0x70uLL);
    *(v65 + 144) = v62;
    if (v33 == v3)
    {
      goto LABEL_76;
    }
  }

  OUTLINED_FUNCTION_12_39();
  v76 = v50;
  v75 = v79 + v51;
  sub_1C6FCA6E4(v0 + 376, v0 + 856);
  v52 = 0;
  while (v52 < *(v78 + 16))
  {
    v53 = *(v77 + 72) * v52;
    sub_1C7161564(v76 + v53, *(v0 + 1640));
    OUTLINED_FUNCTION_15_39();
    if (v52 >= v54)
    {
      goto LABEL_82;
    }

    v55 = *(v0 + 1640);
    v56 = v35;
    v57 = *(v0 + 1632);
    sub_1C7161564(v75 + v53, v57);
    v58 = static QueryTokenSuggestion.== infix(_:_:)(v55, v57);
    v59 = v57;
    v35 = v56;
    sub_1C719D800(v59);
    sub_1C719D800(v55);
    if ((v58 & 1) == 0)
    {
      goto LABEL_72;
    }

    if (v47 == ++v52)
    {
      goto LABEL_59;
    }
  }

LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
}

uint64_t sub_1C719C664()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 1608);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v1);

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t sub_1C719C6FC(const void *a1, uint64_t a2, uint64_t a3)
{
  v4[96] = v3;
  v4[95] = a3;
  v4[94] = a2;
  v4[93] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216328, &qword_1C7575BE0);
  v4[97] = swift_task_alloc();
  v6 = sub_1C754F14C();
  v4[98] = v6;
  v4[99] = *(v6 - 8);
  v4[100] = swift_task_alloc();
  memcpy(v4 + 40, a1, 0x78uLL);

  return MEMORY[0x1EEE6DFA0](sub_1C719C814, 0, 0);
}

uint64_t sub_1C719C814()
{
  v34 = v0;
  v1 = *(v0 + 784);
  v2 = *(v0 + 776);
  memcpy(__dst, *(v0 + 744), sizeof(__dst));
  QueryToken.publicEvent()();
  if (__swift_getEnumTagSinglePayload(v2, 1, v1) == 1)
  {
    sub_1C719D8C0(*(v0 + 776));
LABEL_8:
    if (qword_1EDD0E0A0 != -1)
    {
      swift_once();
    }

    TokenCategoryType = type metadata accessor for QueryTokenCategoryType(0);
    v25 = __swift_project_value_buffer(TokenCategoryType, qword_1EDD0E0A8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215040, &qword_1C7570ED0);
    inited = swift_initStackObject();
    OUTLINED_FUNCTION_22_33(inited, xmmword_1C755BAB0);
    *(swift_task_alloc() + 16) = v25;
    sub_1C6FCA6E4(v0 + 320, v0 + 440);
    v27 = sub_1C707351C();
    swift_setDeallocating();
    sub_1C6FDC98C();

    if (v27)
    {
      v28 = *(v0 + 752);
      v29 = swift_initStackObject();
      *(v0 + 848) = v29;
      OUTLINED_FUNCTION_22_33(v29, xmmword_1C755BAB0);
      type metadata accessor for QueryGenerator(0);
      *(v0 + 680) = 1;
      *(v0 + 688) = v29;
      *(v0 + 696) = v28;
      *(v0 + 704) = 0;
      *(v0 + 712) = 0;
      *(v0 + 720) = 0;
      sub_1C75504FC();
      sub_1C6FCA6E4(v0 + 320, v0 + 560);
      v30 = swift_task_alloc();
      *(v0 + 856) = v30;
      *v30 = v0;
      v30[1] = sub_1C719CE60;

      return QueryAssetsRetrievalProcessor.performAssetsRetrieval(with:eventRecorder:diagnosticContext:)(v0 + 728, v0 + 680);
    }

    else
    {

      v31 = *(v0 + 8);
      v32 = MEMORY[0x1E69E7CD0];

      return v31(v32);
    }
  }

  v3 = *(v0 + 800);
  v4 = *(v0 + 792);
  v5 = *(v0 + 784);
  (*(v4 + 32))(v3, *(v0 + 776), v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217890, &qword_1C756C600);
  v6 = *(v4 + 72);
  v7 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C75604F0;
  v9 = v8 + v7;
  v10 = *(v4 + 104);
  v10(v9, *MEMORY[0x1E69C17C0], v5);
  v10(v9 + v6, *MEMORY[0x1E69C17B0], v5);
  v11 = swift_task_alloc();
  *(v11 + 16) = v3;
  LOBYTE(v4) = sub_1C70734EC(sub_1C710104C, v11, v8);
  swift_setDeallocating();
  sub_1C6FDC924();

  if ((v4 & 1) == 0)
  {
    v22 = OUTLINED_FUNCTION_2_60();
    v23(v22);
    goto LABEL_8;
  }

  v12 = sub_1C75504FC();
  v13 = sub_1C71CD938(v12);
  sub_1C6FDE498(v13);
  v15 = v14;
  *(v0 + 808) = v14;

  type metadata accessor for QueryGenerator(0);
  v16 = sub_1C754F10C();
  v18 = v17;
  *(v0 + 816) = v17;
  *(v0 + 722) = 0;
  v19 = swift_task_alloc();
  *(v0 + 824) = v19;
  *v19 = v0;
  v19[1] = sub_1C719CCA4;
  v20 = *(v0 + 760);

  return QueryAssetsRetrievalProcessor.performQueryAssetsRetrieval(for:retrievalType:scopedAssetUUIDs:eventRecorder:)(v16, v18, (v0 + 722), v15, v20);
}

uint64_t sub_1C719CCA4(uint64_t a1)
{
  OUTLINED_FUNCTION_47();
  v5 = v4;
  OUTLINED_FUNCTION_40();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_40();
  *v8 = v7;
  *(v5 + 832) = v1;

  if (!v1)
  {
    *(v5 + 840) = a1;
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C719CDF0()
{
  OUTLINED_FUNCTION_42();
  v0 = OUTLINED_FUNCTION_2_60();
  v1(v0);
  OUTLINED_FUNCTION_23_24();

  v2 = OUTLINED_FUNCTION_0_89();

  return v3(v2);
}

uint64_t sub_1C719CE60()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_40();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_40();
  *v6 = v5;
  *(v3 + 864) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C719CF7C()
{
  v1 = *(v0 + 728);
  if (v1)
  {
    v2 = sub_1C75504FC();
    sub_1C716A74C(v2);
    v3 = v1 + 64;
    v4 = -1 << *(v1 + 32);
    if (-v4 < 64)
    {
      v5 = ~(-1 << -v4);
    }

    else
    {
      v5 = -1;
    }

    v6 = v5 & *(v1 + 64);
    v7 = (63 - v4) >> 6;
    result = sub_1C75504FC();
    v9 = 0;
    v22 = v1;
    if (v6)
    {
LABEL_6:
      v10 = v9;
LABEL_10:
      v11 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v12 = *(*(v1 + 56) + ((v10 << 9) | (8 * v11)));
      v23 = MEMORY[0x1E69E7CC0];
      v13 = -1 << *(v12 + 32);
      if (-v13 < 64)
      {
        v14 = ~(-1 << -v13);
      }

      else
      {
        v14 = -1;
      }

      v15 = v14 & *(v12 + 64);
      v16 = (63 - v13) >> 6;
      result = swift_bridgeObjectRetain_n();
      v17 = 0;
      if (v15)
      {
        goto LABEL_19;
      }

      while (1)
      {
        v18 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v18 >= v16)
        {

          sub_1C73978C4(v23);

          v9 = v10;
          v1 = v22;
          if (!v6)
          {
            goto LABEL_7;
          }

          goto LABEL_6;
        }

        v15 = *(v12 + 64 + 8 * v18);
        ++v17;
        if (v15)
        {
          v17 = v18;
          do
          {
LABEL_19:
            v15 &= v15 - 1;
            v19 = sub_1C75504FC();
            result = sub_1C6FD25FC(v19);
          }

          while (v15);
          continue;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_7:
      while (1)
      {
        v10 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v10 >= v7)
        {

          goto LABEL_24;
        }

        v6 = *(v3 + 8 * v10);
        ++v9;
        if (v6)
        {
          goto LABEL_10;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_24:
    OUTLINED_FUNCTION_23_24();

    v20 = OUTLINED_FUNCTION_0_89();

    return v21(v20);
  }

  return result;
}

uint64_t sub_1C719D1C4()
{
  OUTLINED_FUNCTION_42();
  v0 = OUTLINED_FUNCTION_2_60();
  v1(v0);
  OUTLINED_FUNCTION_23_24();

  OUTLINED_FUNCTION_43();

  return v2();
}

uint64_t sub_1C719D234()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_23_24();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C719D2B0(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_1C755164C();
  }

  else
  {
    return sub_1C755160C();
  }
}

uint64_t sub_1C719D350(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    return sub_1C755171C();
  }

  else
  {
    return 1 << *(a1 + 32);
  }
}

uint64_t sub_1C719D3B8@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v5 = (*(a3 + 48) + 48 * result);
  v6 = v5[1];
  v7 = v5[2];
  v8 = v5[3];
  v9 = v5[4];
  v10 = v5[5];
  *a4 = *v5;
  a4[1] = v6;
  a4[2] = v7;
  a4[3] = v8;
  a4[4] = v9;
  a4[5] = v10;
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();

  return sub_1C75504FC();
}

uint64_t sub_1C719D474(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = *(*(a4 + 48) + 16 * result);
    sub_1C75504FC();
    return v4;
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_1C719D504(uint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, void *a6)
{
  v7 = a5;
  v9 = a2;
  v10 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v11 = a4;
      }

      else
      {
        v11 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x1CCA5DBF0](a1, a2, v11);
      sub_1C6F65BE8(0, v7, a6);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_1C6F65BE8(0, a5, a6);
    if (sub_1C755169C() == *(a4 + 36))
    {
      sub_1C75516AC();
      swift_dynamicCast();
      v7 = v19;
      v12 = sub_1C75513DC();
      v13 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v10 = v12 & v13;
        if (((*(a4 + 56 + (((v12 & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v12 & v13)) & 1) == 0)
        {
          goto LABEL_25;
        }

        v14 = *(*(a4 + 48) + 8 * v10);
        v15 = sub_1C75513EC();

        if (v15)
        {
          goto LABEL_18;
        }

        v12 = v10 + 1;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

  if (a1 < 0 || (OUTLINED_FUNCTION_8_37(), v16 <= v10))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v10 >> 6) + 56) >> v10) & 1) == 0)
  {
LABEL_24:
    __break(1u);
LABEL_25:

    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != v9)
  {
    __break(1u);
LABEL_18:
  }

  v17 = *(*(a4 + 48) + 8 * v10);

  v18 = v17;
}

uint64_t sub_1C719D700@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    *a4 = *(*(a3 + 48) + result);
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1C719D754@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    v5 = (*(a3 + 48) + 120 * result);
    memcpy(__dst, v5, sizeof(__dst));
    memcpy(a4, v5, 0x78uLL);
    return sub_1C6FCA6E4(__dst, &v6);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1C719D800(uint64_t a1)
{
  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(0);
  (*(*(TokenSuggestion - 8) + 8))(a1, TokenSuggestion);
  return a1;
}

uint64_t sub_1C719D870(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 2 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1C719D8C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216328, &qword_1C7575BE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_21_28(uint64_t a1)
{

  return sub_1C7551A2C();
}

void *OUTLINED_FUNCTION_24_23(void *a1)
{

  return memcpy(a1, (v1 - 200), 0x78uLL);
}

uint64_t sub_1C719D998()
{
  sub_1C6F65BE8(0, &qword_1EDD0FA60, 0x1E69E9BF8);
  result = sub_1C755146C();
  qword_1EC218870 = result;
  return result;
}

uint64_t sub_1C719DA10()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC218878);
  __swift_project_value_buffer(v0, qword_1EC218878);
  if (qword_1EC213E60 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC218870;
  return sub_1C754FF2C();
}

uint64_t QueryDisambiguationAssetFetcher.init(photoLibrary:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = type metadata accessor for PhotosSearchBasedStoryAssetsFetcher(0);
  a2[4] = &protocol witness table for PhotosSearchBasedStoryAssetsFetcher;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a2);
  sub_1C754FEFC();
  type metadata accessor for PhotosSearchQueryManagerProxy();
  swift_allocObject();
  result = sub_1C72FC904(a1, 0);
  *boxed_opaque_existential_0 = result;
  return result;
}

uint64_t QueryDisambiguationAssetFetcher.previewDateAssetUUIDs(forStartDateComponents:endDateComponents:eventRecorder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[24] = a3;
  v4[25] = v3;
  v4[22] = a1;
  v4[23] = a2;
  v5 = sub_1C754F38C();
  v4[26] = v5;
  v4[27] = *(v5 - 8);
  v4[28] = swift_task_alloc();
  v4[29] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218C50, &qword_1C75606A0);
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v6 = sub_1C754DABC();
  v4[32] = v6;
  v4[33] = *(v6 - 8);
  v4[34] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C719DCBC, 0, 0);
}

uint64_t sub_1C719DCBC()
{
  v36 = v0;
  if (qword_1EC213E68 != -1)
  {
    OUTLINED_FUNCTION_0_90(&qword_1EC213E68);
  }

  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v4 = *(v0 + 248);
  v3 = *(v0 + 256);
  v6 = *(v0 + 176);
  v5 = *(v0 + 184);
  v7 = sub_1C754FF1C();
  __swift_project_value_buffer(v7, qword_1EC218878);
  (*(v2 + 16))(v1, v6, v3);
  sub_1C7026190(v5, v4);
  v8 = sub_1C754FEEC();
  v9 = sub_1C75511BC();
  v10 = os_log_type_enabled(v8, v9);
  v12 = *(v0 + 264);
  v11 = *(v0 + 272);
  v13 = *(v0 + 248);
  v14 = *(v0 + 256);
  if (v10)
  {
    v33 = *(v0 + 240);
    v15 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v15 = 136315394;
    sub_1C719EAB0();
    v16 = sub_1C7551D8C();
    v18 = v17;
    (*(v12 + 8))(v11, v14);
    sub_1C6F765A4(v16, v18, &v35);
    OUTLINED_FUNCTION_2_61();

    *(v15 + 4) = v11;
    *(v15 + 12) = 2080;
    sub_1C7026190(v13, v33);
    v19 = sub_1C75506EC();
    v21 = v20;
    sub_1C70EA928(v13);
    sub_1C6F765A4(v19, v21, &v35);
    OUTLINED_FUNCTION_2_61();

    *(v15 + 14) = v19;
    _os_log_impl(&dword_1C6F5C000, v8, v9, "Retrieving preview date assets with start date components = %s and end date components = %s", v15, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  else
  {

    sub_1C70EA928(v13);
    (*(v12 + 8))(v11, v14);
  }

  __swift_project_boxed_opaque_existential_1(*(v0 + 192), *(*(v0 + 192) + 24));
  sub_1C754F1CC();
  static StoryGenerationUtilities.dateComponentsAttributedQueryStringWithAdjustedRange(withStartDateComponents:endDateComponents:localizedText:)();
  v23 = v22;
  *(v0 + 280) = v22;
  *(v0 + 56) = &type metadata for EmbeddingSearchThresholdingModels.VersionHandlingEmbeddingSearchThresholdModel;
  *(v0 + 64) = &off_1F46ACFD0;
  v24 = [objc_opt_self() currentUnifiedEmbeddingVersion];
  v25 = v24;
  if (v24)
  {
    v26 = [v24 integerValue];
  }

  else
  {
    v26 = 0;
  }

  v27 = *(v0 + 200);
  *(v0 + 32) = 4;
  *(v0 + 40) = v26;
  *(v0 + 48) = v25 == 0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
  *(v0 + 88) = 1;
  *(v0 + 112) = vdupq_n_s64(1uLL);
  *(v0 + 128) = 0;
  *(v0 + 136) = 0;
  *(v0 + 144) = 1;
  *(v0 + 72) = 4000;
  *(v0 + 80) = 0;
  v28 = v27[3];
  v29 = v27[4];
  __swift_project_boxed_opaque_existential_1(v27, v28);
  v34 = (*(v29 + 16) + **(v29 + 16));
  v30 = swift_task_alloc();
  *(v0 + 288) = v30;
  *v30 = v0;
  v30[1] = sub_1C719E108;
  v31 = *(v0 + 192);

  return v34(v0 + 152, v23, v0 + 16, v31, v28, v29);
}

uint64_t sub_1C719E108()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_1C719E3F4;
  }

  else
  {
    v2 = sub_1C719E21C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C719E21C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7[19];
  v30 = v7[20];
  v9 = *(v8 + 16);
  if (v9)
  {
    v31 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C(0, v9, 0, a4, a5, a6, a7);
    v10 = *(v31 + 16);
    v11 = 16 * v10;
    v12 = (v8 + 40);
    do
    {
      v14 = *(v12 - 1);
      v13 = *v12;
      v15 = *(v31 + 24);
      sub_1C75504FC();
      if (v10 >= v15 >> 1)
      {
        sub_1C6F7ED9C(v15 > 1, v10 + 1, 1, v16, v17, v18, v19);
      }

      *(v31 + 16) = v10 + 1;
      v20 = v31 + v11;
      *(v20 + 32) = v14;
      *(v20 + 40) = v13;
      v11 += 16;
      v12 += 4;
      ++v10;
      --v9;
    }

    while (v9);
  }

  v21 = v7[35];
  v23 = v7[27];
  v22 = v7[28];
  v24 = v7[26];
  v25 = v7[24];
  sub_1C706D154();
  v29 = v26;

  swift_unknownObjectRelease();
  sub_1C70DF138((v7 + 2));
  __swift_project_boxed_opaque_existential_1(v25, v25[3]);
  sub_1C754F1AC();
  (*(v23 + 8))(v22, v24);

  v27 = v7[1];

  return v27(v29);
}

uint64_t sub_1C719E3F4()
{
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v3 = *(v0 + 208);
  v4 = *(v0 + 192);

  sub_1C70DF138(v0 + 16);
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  OUTLINED_FUNCTION_2_61();
  sub_1C754F1AC();
  (*(v2 + 8))(v1, v3);

  v5 = *(v0 + 8);

  return v5();
}

void *static QueryDisambiguationAssetFetcher.fetchEventSuggestionAssetUUIDs(forMomentUUIDs:shouldApplyCurationFilter:storyPhotoLibraryContext:eventRecorder:)(uint64_t a1, char a2, void **a3, void *a4)
{
  v56 = sub_1C754F38C();
  v54 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a3;
  v12 = *(a3 + 4);
  v52 = a3[2];
  if (qword_1EC213E68 != -1)
  {
    OUTLINED_FUNCTION_0_90(&qword_1EC213E68);
  }

  v13 = sub_1C754FF1C();
  __swift_project_value_buffer(v13, qword_1EC218878);
  OUTLINED_FUNCTION_2_61();
  sub_1C75504FC();
  v51 = v4;
  v14 = sub_1C754FEEC();
  v15 = sub_1C75511BC();

  v16 = os_log_type_enabled(v14, v15);
  v55 = v11;
  v53 = v12;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v57 = v18;
    *v17 = 136315138;
    v19 = sub_1C7550F9C();
    v21 = sub_1C6F765A4(v19, v20, &v57);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_1C6F5C000, v14, v15, "Fetching event suggestion assets for moments = %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  sub_1C754F1CC();
  if (a2)
  {
    v22 = MEMORY[0x1E69E6158];
    sub_1C6F65BE8(0, &qword_1EDD0FAD0, 0x1E696AE18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1C75604F0;
    *(v23 + 56) = v22;
    v24 = sub_1C6F6D524();
    v50 = v10;
    v25 = v24;
    *(v23 + 64) = v24;
    *(v23 + 32) = 0x752E746E656D6F6DLL;
    *(v23 + 40) = 0xEB00000000646975;
    *(v23 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0, &qword_1C755C2F0);
    *(v23 + 104) = sub_1C7067A60();
    *(v23 + 72) = a1;
    sub_1C75504FC();
    v26 = sub_1C755112C();
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1C755BAB0;
    *(v27 + 56) = v22;
    *(v27 + 64) = v25;
    *(v27 + 32) = 0xD00000000000001CLL;
    *(v27 + 40) = 0x80000001C75A2960;
    v28 = sub_1C755112C();
    v29 = v55;
    v30 = v53;
    v31 = static StoryGenerationUtilities.assetIdentifiersFetchOptions(for:sharingFilter:wantsIncrementalChangeDetails:)(v55, v53, 0);
    sub_1C6F65BE8(0, &qword_1EDD0FA80, 0x1E696AB28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70, &unk_1C7565390);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1C7564A90;
    *(v32 + 32) = v26;
    *(v32 + 40) = v28;
    v33 = v26;
    v34 = v28;
    v35 = v32;
    v10 = v50;
    v36 = sub_1C6F6E5C4(v35);
    [v31 setInternalPredicate_];
  }

  else
  {
    v31 = 0;
    v29 = v55;
    v30 = v53;
  }

  v37 = objc_autoreleasePoolPush();
  sub_1C71C8640(a1, v31, v29, v30, &v57);
  objc_autoreleasePoolPop(v37);
  v38 = v57;
  v39 = v57[2];
  if (v39 >= 3)
  {
  }

  else
  {

    sub_1C75504FC();
    v40 = sub_1C754FEEC();
    v41 = sub_1C75511BC();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = v10;
      v44 = swift_slowAlloc();
      v57 = v44;
      *v42 = 134218498;
      *(v42 + 4) = v39;
      *(v42 + 12) = 2048;
      *(v42 + 14) = 3;
      *(v42 + 22) = 2080;
      v45 = sub_1C7550F9C();
      v47 = sub_1C6F765A4(v45, v46, &v57);

      *(v42 + 24) = v47;
      _os_log_impl(&dword_1C6F5C000, v40, v41, "The number of assets (%ld) is below %ld for moments = %s", v42, 0x20u);
      __swift_destroy_boxed_opaque_existential_1(v44);
      v10 = v43;
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    v38 = MEMORY[0x1E69E7CD0];
  }

  __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  sub_1C754F1AC();
  (*(v54 + 8))(v10, v56);
  return v38;
}

unint64_t sub_1C719EAB0()
{
  result = qword_1EC218890;
  if (!qword_1EC218890)
  {
    v3 = sub_1C754DABC();
    result = swift_getWitnessTable(MEMORY[0x1E69682A0], v3, v0, v1);
    atomic_store(result, &qword_1EC218890);
  }

  return result;
}

uint64_t sub_1C719EB08(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1C719EB48(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

void sub_1C719EBA0(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v4 = 0;
  v34 = *(result + 16);
  v33 = result + 32;
  v5 = a2 + 56;
  v31 = MEMORY[0x1E69E7CC0];
  while (1)
  {
LABEL_2:
    if (v4 == v34)
    {

      return;
    }

    if (v4 >= *(result + 16))
    {
      break;
    }

    v6 = (v33 + 16 * v4);
    v8 = *v6;
    v7 = v6[1];
    ++v4;
    if (*(a2 + 16))
    {
      sub_1C7551F3C();
      sub_1C75504FC();
      sub_1C75505AC();
      v9 = sub_1C7551FAC();
      v10 = ~(-1 << *(a2 + 32));
      while (1)
      {
        v11 = v9 & v10;
        if (((*(v5 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
        {
          break;
        }

        v12 = (*(a2 + 48) + 16 * v11);
        if (*v12 != v8 || v12[1] != v7)
        {
          v14 = sub_1C7551DBC();
          v9 = v11 + 1;
          if ((v14 & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_2;
      }
    }

    else
    {
      sub_1C75504FC();
    }

    v15 = *a3;
    if (*(*a3 + 16))
    {
      sub_1C7551F3C();
      sub_1C75504FC();
      sub_1C75505AC();
      v16 = sub_1C7551FAC();
      v17 = ~(-1 << *(v15 + 32));
      do
      {
        v18 = v16 & v17;
        if (((*(v15 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
        {

          goto LABEL_24;
        }

        v19 = (*(v15 + 48) + 16 * v18);
        if (*v19 == v8 && v19[1] == v7)
        {
          break;
        }

        v21 = sub_1C7551DBC();
        v16 = v18 + 1;
      }

      while ((v21 & 1) == 0);
    }

    else
    {
LABEL_24:
      sub_1C75504FC();
      sub_1C70F082C(v36, v8, v7);

      v22 = v31;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = v31;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C6F7ED9C(0, *(v31 + 16) + 1, 1, v24, v25, v26, v27);
        v22 = v37;
      }

      v29 = *(v22 + 16);
      v28 = *(v22 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_1C6F7ED9C(v28 > 1, v29 + 1, 1, v24, v25, v26, v27);
        v22 = v37;
      }

      *(v22 + 16) = v29 + 1;
      v31 = v22;
      v30 = v22 + 16 * v29;
      *(v30 + 32) = v8;
      *(v30 + 40) = v7;
    }
  }

  __break(1u);
}

uint64_t sub_1C719EE4C()
{
  OUTLINED_FUNCTION_42();
  v2 = v0;
  v4 = v3;
  v1[215] = v2;
  v1[214] = v5;
  v1[213] = v6;
  v1[212] = v7;
  v1[211] = v8;
  v1[210] = v9;
  v1[216] = *v2;
  v10 = sub_1C754F2FC();
  v1[217] = v10;
  OUTLINED_FUNCTION_18(v10);
  v1[218] = v11;
  v1[219] = swift_task_alloc();
  v1[220] = swift_task_alloc();
  v1[221] = swift_task_alloc();
  v1[222] = swift_task_alloc();
  v1[223] = swift_task_alloc();
  v1[224] = swift_task_alloc();
  v12 = sub_1C754F38C();
  v1[225] = v12;
  OUTLINED_FUNCTION_18(v12);
  v1[226] = v13;
  v1[227] = swift_task_alloc();
  memcpy(v1 + 2, v4, 0x68uLL);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1C719EFDC()
{
  v1 = v0[213];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_1C754F1CC();
  sub_1C754F2CC();
  v2 = v0[224];
  v9 = v0[221];
  v3 = v0[218];
  v4 = v0[217];
  OUTLINED_FUNCTION_70(v0[213], v1[3]);
  sub_1C754F15C();
  sub_1C754F2BC();
  sub_1C754F2BC();
  sub_1C754F2BC();
  memcpy(v0 + 41, v0 + 2, 0x68uLL);
  v5 = *(v3 + 32);
  v0[228] = v5;
  v0[229] = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v5(v9, v2, v4);
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  v0[230] = v6;
  *v6 = v7;
  v6[1] = sub_1C719F2C0;

  return sub_1C71A1814();
}

uint64_t sub_1C719F2C0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 1848) = v4;
  *(v2 + 1856) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C719F3C8()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 1720);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  *(v0 + 1864) = v3;
  *(v0 + 1872) = v2;
  v4 = *(v1 + OBJC_IVAR____TtC18PhotosIntelligence27FreeformStoryChapterCurator_diagnosticContext);
  *(v0 + 1880) = v4;
  if (v4)
  {
    sub_1C75504FC();
    MEMORY[0x1CCA5CD70](0x657463656C45203ALL, 0xE900000000000064);
    OUTLINED_FUNCTION_61_9();
    v10 = sub_1C7164AD8(v5, v6, v7, v8, v9);
  }

  *(v0 + 1664) = v3;
  *(v0 + 1672) = v2;
  *(v0 + 1648) = 32;
  *(v0 + 1656) = 0xE100000000000000;
  *(v0 + 1632) = 95;
  *(v0 + 1640) = 0xE100000000000000;
  v34 = sub_1C6FB5E8C();
  v33 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_61_9();
  *(v0 + 1888) = sub_1C755155C();
  *(v0 + 1896) = v11;
  sub_1C755180C();

  v12 = OUTLINED_FUNCTION_55();
  MEMORY[0x1CCA5CD70](v12);
  MEMORY[0x1CCA5CD70](1819113518, 0xE400000000000000);
  if (v4)
  {
    v13 = *(v0 + 1848);
    sub_1C75504FC();
    sub_1C7162B4C(0xD000000000000011, 0x80000001C75A2B50, v4, v13);
  }

  v14 = *(v0 + 1848);

  v15 = *(v0 + 24);
  v16 = OUTLINED_FUNCTION_0_11();
  sub_1C703255C(v16, v17, v18, v15, v19);
  memcpy((v0 + 984), (v0 + 1144), 0x50uLL);
  v20 = *(v14 + 16);
  *(v0 + 1904) = v20;
  *(v0 + 1016) = v20;
  v21 = objc_opt_self();
  sub_1C75504FC();
  sub_1C75504FC();
  v22 = [v21 useShadowNamesInAssetCuration];
  *(v0 + 1444) = v22;
  v23 = sub_1C754FEEC();
  v24 = sub_1C75511BC();
  v25 = OUTLINED_FUNCTION_72();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 67109120;
    *(v27 + 4) = v22;
    _os_log_impl(&dword_1C6F5C000, v23, v24, "Use shadow names during curation is %{BOOL}d", v27, 8u);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  v28 = *(v0 + 1720);

  *(v0 + 1445) = [v21 usePersonPromptAnnotations];
  v29 = *(v28 + OBJC_IVAR____TtC18PhotosIntelligence27FreeformStoryChapterCurator_storyPhotoLibraryContext);
  *(v0 + 1912) = v29;
  type metadata accessor for AssetCurationUtilities();
  v30 = swift_task_alloc();
  *(v0 + 1920) = v30;
  *v30 = v0;
  v30[1] = sub_1C719F708;
  v31 = OUTLINED_FUNCTION_61_3(*(v0 + 1848));

  return static AssetCurationUtilities.generateCharacterSummaryByCharacterUUID(for:photoLibrary:)(v31, v29);
}

uint64_t sub_1C719F708()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  *v4 = *v1;
  v3[241] = v5;
  v3[242] = v0;

  if (v0)
  {
    memcpy(v3 + 103, v3 + 123, 0x50uLL);
    sub_1C703307C((v3 + 103));
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1C719F844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_111_0();
  v19 = *(v18 + 1936);
  sub_1C71A1E04(*(v18 + 1888), *(v18 + 1896), *(v18 + 1928));
  if (v19)
  {
    v20 = *(v18 + 1808);
    v90 = *(v18 + 1800);
    v21 = *(v18 + 1784);
    v22 = *(v18 + 1776);
    v23 = *(v18 + 1744);
    v24 = *(v18 + 1736);
    v88 = *(v18 + 1816);
    v89 = *(v18 + 1712);

    memcpy((v18 + 904), (v18 + 984), 0x50uLL);
    sub_1C703307C(v18 + 904);
    __swift_destroy_boxed_opaque_existential_1((v18 + 1592));
    v25 = *(v23 + 8);
    v25(v22, v24);
    v25(v21, v24);
    v26 = OUTLINED_FUNCTION_291();
    OUTLINED_FUNCTION_70(v26, v27);
    OUTLINED_FUNCTION_291();
    sub_1C754F1AC();
    (*(v20 + 8))(v88, v90);
    v25(v89, v24);
    OUTLINED_FUNCTION_8_38(*(v18 + 1816));

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_94_1();

    v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, v88, v89, v90, v19, a14, a15, a16, a17, a18);
  }

  else
  {
    v36 = *(v18 + 1720);

    v91 = v36 + OBJC_IVAR____TtC18PhotosIntelligence27FreeformStoryChapterCurator_storyElements;
    v37 = *(v36 + OBJC_IVAR____TtC18PhotosIntelligence27FreeformStoryChapterCurator_storyElements + 216);
    v38 = *(v37 + 16);
    v39 = MEMORY[0x1E69E7CC0];
LABEL_6:
    v40 = (v37 + 32 + 72 * v19);
    while (v38 != v19)
    {
      if (v19 >= *(v37 + 16))
      {
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
        return;
      }

      memcpy((v18 + 1448), v40, 0x41uLL);
      if ((*(v18 + 1472) & 1) == 0)
      {
        sub_1C7025F3C(v18 + 1448, v18 + 1520);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_99();
          sub_1C716D97C();
        }

        v42 = v39[2];
        v41 = v39[3];
        if (v42 >= v41 >> 1)
        {
          OUTLINED_FUNCTION_15(v41);
          sub_1C716D97C();
        }

        ++v19;
        v39[2] = v42 + 1;
        memcpy(&v39[9 * v42 + 4], (v18 + 1448), 0x41uLL);
        goto LABEL_6;
      }

      v40 += 72;
      ++v19;
    }

    v43 = 0;
    v44 = v39[2];
    v45 = v39 + 9;
    v46 = MEMORY[0x1E69E7CC0];
    while (v44 != v43)
    {
      if (v43 >= v39[2])
      {
        goto LABEL_47;
      }

      v48 = *(v45 - 1);
      v47 = *v45;
      sub_1C75504FC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_99();
        sub_1C6FB1814();
        v46 = v52;
      }

      v50 = *(v46 + 16);
      v49 = *(v46 + 24);
      if (v50 >= v49 >> 1)
      {
        OUTLINED_FUNCTION_15(v49);
        sub_1C6FB1814();
        v46 = v53;
      }

      *(v46 + 16) = v50 + 1;
      v51 = v46 + 16 * v50;
      *(v51 + 32) = v48;
      *(v51 + 40) = v47;
      v45 += 9;
      ++v43;
    }

    sub_1C706D154();
    v54 = 0;
    v55 = *(v91 + 224);
    v56 = *(v55 + 16);
    v57 = MEMORY[0x1E69E7CC0];
LABEL_25:
    v58 = (v55 + 32 + 72 * v54);
    while (v56 != v54)
    {
      if (v54 >= *(v55 + 16))
      {
        goto LABEL_48;
      }

      memcpy((v18 + 1376), v58, 0x42uLL);
      if ((*(v18 + 1400) & 1) == 0)
      {
        sub_1C7025FF8(v18 + 1376, v18 + 1304);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_99();
          sub_1C716D940();
        }

        v60 = v57[2];
        v59 = v57[3];
        if (v60 >= v59 >> 1)
        {
          OUTLINED_FUNCTION_15(v59);
          sub_1C716D940();
        }

        ++v54;
        v57[2] = v60 + 1;
        memcpy(&v57[9 * v60 + 4], (v18 + 1376), 0x42uLL);
        goto LABEL_25;
      }

      v58 += 72;
      ++v54;
    }

    v61 = 0;
    v62 = v57[2];
    v63 = v57 + 9;
    v64 = MEMORY[0x1E69E7CC0];
    while (v62 != v61)
    {
      if (v61 >= v57[2])
      {
        goto LABEL_49;
      }

      v66 = *(v63 - 1);
      v65 = *v63;
      sub_1C75504FC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_99();
        sub_1C6FB1814();
        v64 = v70;
      }

      v68 = *(v64 + 16);
      v67 = *(v64 + 24);
      if (v68 >= v67 >> 1)
      {
        OUTLINED_FUNCTION_15(v67);
        sub_1C6FB1814();
        v64 = v71;
      }

      *(v64 + 16) = v68 + 1;
      v69 = v64 + 16 * v68;
      *(v69 + 32) = v66;
      *(v69 + 40) = v65;
      v63 += 9;
      ++v61;
    }

    v72 = *(v18 + 1444);
    v73 = *(v18 + 1824);
    v74 = *(v18 + 1784);
    v75 = *(v18 + 1760);
    v76 = *(v18 + 1736);

    sub_1C706D154();
    sub_1C70738FC();
    *(v18 + 1944) = v77;
    memcpy((v18 + 640), (v18 + 16), 0x68uLL);
    *(v18 + 1370) = 16843009;
    *(v18 + 1374) = 1;
    *(v18 + 1375) = v72;
    v73(v75, v74, v76);
    sub_1C6FC061C(v18 + 16, v18 + 536);
    v78 = swift_task_alloc();
    *(v18 + 1952) = v78;
    *v78 = v18;
    v78[1] = sub_1C719FE34;
    OUTLINED_FUNCTION_61_3(*(v18 + 1848));
    OUTLINED_FUNCTION_94_1();

    AssetRichDescriptionsGenerator.generateAssetRichDescriptionResults(for:chapter:characterSummaryByCharacterUUID:userQueryCharacterUUIDs:options:eventRecorder:progressReporter:diagnosticContext:)(v79, v80, v81, v82, v83, v84, v85, v86);
  }
}

uint64_t sub_1C719FE34()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  *v4 = *v1;
  v3[245] = v5;
  v3[246] = v0;

  if (v0)
  {

    memcpy(v3 + 54, v3 + 80, 0x68uLL);
    sub_1C6FB5FC8((v3 + 54), &qword_1EC217EF8, &qword_1C756FD40);
    memcpy(v3 + 133, v3 + 123, 0x50uLL);
    sub_1C703307C((v3 + 133));
  }

  else
  {
    memcpy(v3 + 28, v3 + 80, 0x68uLL);
    sub_1C6FB5FC8((v3 + 28), &qword_1EC217EF8, &qword_1C756FD40);
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C719FFD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, os_unfair_lock_s *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_75_0();
  v31 = *(v26 + 1880);
  if (v31)
  {
    v32 = *(v26 + 1960);
    v33 = *(v32 + 16);
    if (v33)
    {
      v88 = *(v26 + 1880);
      v90 = MEMORY[0x1E69E7CC0];
      sub_1C6F7ED9C(0, v33, 0, v27, v28, v29, v30);
      v34 = *(v90 + 16);
      v35 = 16 * v34;
      v36 = (v32 + 40);
      do
      {
        v38 = *(v36 - 1);
        v37 = *v36;
        v39 = v34 + 1;
        v40 = *(v90 + 24);
        sub_1C75504FC();
        if (v34 >= v40 >> 1)
        {
          sub_1C6F7ED9C(v40 > 1, v39, 1, v41, v42, v43, v44);
        }

        *(v90 + 16) = v39;
        v45 = v90 + v35;
        *(v45 + 32) = v38;
        *(v45 + 40) = v37;
        v35 += 16;
        v36 += 4;
        ++v34;
        --v33;
      }

      while (v33);
      v32 = *(v26 + 1960);
      v31 = v88;
    }

    v46 = *(v26 + 1872);
    v47 = *(v26 + 1864);
    v48 = *(v26 + 1848);
    a22 = v47;
    a23 = v46;
    sub_1C75504FC();
    MEMORY[0x1CCA5CD70](0x6E49204D4C4C203ALL, 0xEB00000000747570);
    OUTLINED_FUNCTION_61_9();
    v54 = sub_1C7164AD8(v49, v50, v51, v52, v53);

    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C71616E4(v31, v48, v47, v46, v32, v55);
  }

  v56 = *(v26 + 1960);

  v57 = *(v56 + 16);
  *(v26 + 1024) = v57;
  if (v57)
  {
    v58 = *(v26 + 1445);
    v59 = *(v26 + 1444);
    v60 = *(v26 + 1824);
    memcpy((v26 + 120), (v26 + 16), 0x68uLL);
    *(v26 + 1442) = v59;
    *(v26 + 1443) = v58;
    v61 = OUTLINED_FUNCTION_90();
    v60(v61);
    v62 = swift_task_alloc();
    *(v26 + 1976) = v62;
    *v62 = v26;
    v62[1] = sub_1C71A03BC;
    OUTLINED_FUNCTION_61_3(*(v26 + 1960));
    OUTLINED_FUNCTION_130_0();

    return sub_1C71A1FC4();
  }

  else
  {
    v65 = *(v26 + 1816);
    v66 = *(v26 + 1808);
    v82 = *(v26 + 1800);
    v67 = *(v26 + 1744);
    v68 = *(v26 + 1704);

    v87 = *(v26 + 1160);
    v89 = *(v26 + 1192);
    v85 = *(v26 + 1144);
    v86 = *(v26 + 1208);

    v84 = [objc_allocWithZone(MEMORY[0x1E6978840]) init];
    __swift_destroy_boxed_opaque_existential_1((v26 + 1592));
    v69 = *(v67 + 8);
    v70 = OUTLINED_FUNCTION_55();
    (v69)(v70);
    OUTLINED_FUNCTION_70(v68, v68[3]);
    sub_1C754F1AC();
    (*(v66 + 8))(v65, v82);
    OUTLINED_FUNCTION_48_15();
    v81 = *(v26 + 1752);
    v83 = v71;
    v72 = *(v26 + 1680);
    v69();

    *v72 = v84;
    *(v72 + 8) = 0;
    *(v72 + 16) = 0;
    *(v72 + 24) = v85;
    *(v72 + 40) = v87;
    *(v72 + 56) = v83;
    *(v72 + 64) = 0;
    *(v72 + 88) = v86;
    *(v72 + 72) = v89;
    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_130_0();

    return v74(v73, v74, v75, v76, v77, v78, v79, v80, a9, v81, v83, v84, v85, *(&v85 + 1), v86, *(&v86 + 1), v87, *(&v87 + 1), v89, *(&v89 + 1), a21, a22, a23, a24, a25, a26);
  }
}

uint64_t sub_1C71A03BC()
{
  OUTLINED_FUNCTION_123();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *v5 = *v1;
  v4[248] = v0;

  if (v0)
  {
    memcpy(v4 + 153, v4 + 123, 0x50uLL);
    sub_1C703307C((v4 + 153));
  }

  else
  {

    v4[249] = v3;
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C71A0538()
{
  v1 = *(v0 + 1984);
  v2 = sub_1C71A2CA8();

  sub_1C754F2EC();
  if (v1)
  {

    memcpy((v0 + 744), (v0 + 984), 0x50uLL);
    sub_1C703307C(v0 + 744);
    __swift_destroy_boxed_opaque_existential_1((v0 + 1592));
    v3 = OUTLINED_FUNCTION_66_2();
    OUTLINED_FUNCTION_70(v3, v4);
    sub_1C754F1AC();
    v5 = OUTLINED_FUNCTION_55();
    v6(v5);
    OUTLINED_FUNCTION_8_38(*(v0 + 1816));

    OUTLINED_FUNCTION_6_0();
  }

  else
  {
    v8 = *(v0 + 1704);
    __swift_destroy_boxed_opaque_existential_1((v0 + 1592));
    v17 = *(v0 + 984);
    v15 = *(v0 + 1008);
    v16 = *(v0 + 1000);
    v18 = *(v0 + 1056);
    v19 = *(v0 + 1048);
    v13 = *(v0 + 1032);
    v14 = *(v0 + 1016);
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    sub_1C754F1AC();
    v9 = *(v0 + 1816);
    OUTLINED_FUNCTION_48_15();
    v10 = *(v0 + 1680);
    v11(v9);

    *v10 = v2;
    *(v10 + 8) = 0;
    *(v10 + 16) = 0;
    *(v10 + 24) = v17;
    *(v10 + 40) = v16;
    *(v10 + 48) = v15;
    *(v10 + 72) = v13;
    *(v10 + 56) = v14;
    *(v10 + 88) = v19;
    *(v10 + 96) = v18;
    OUTLINED_FUNCTION_43();
  }

  return v7();
}

uint64_t sub_1C71A0784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  v17 = OUTLINED_FUNCTION_31_21();
  v15(v17);
  v18 = OUTLINED_FUNCTION_82();
  v15(v18);
  OUTLINED_FUNCTION_12_2(v16);
  sub_1C754F1AC();
  v19 = OUTLINED_FUNCTION_44_15();
  v20(v19);
  (v15)(a10, v14);
  OUTLINED_FUNCTION_5_47();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_17_1();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1C71A086C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  v17 = OUTLINED_FUNCTION_31_21();
  v15(v17);
  v18 = OUTLINED_FUNCTION_82();
  v15(v18);
  OUTLINED_FUNCTION_12_2(v16);
  sub_1C754F1AC();
  v19 = OUTLINED_FUNCTION_44_15();
  v20(v19);
  (v15)(a10, v14);
  OUTLINED_FUNCTION_5_47();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_17_1();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1C71A0954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  v15 = v14[222];
  v16 = v14[218];
  v17 = v14[217];
  v32 = v14[214];
  v33 = v14[225];
  __swift_destroy_boxed_opaque_existential_1(v14 + 199);
  v18 = *(v16 + 8);
  v18(v15, v17);
  v19 = OUTLINED_FUNCTION_98_1();
  OUTLINED_FUNCTION_0_22(v19, v20);
  sub_1C754F1AC();
  v21 = OUTLINED_FUNCTION_44_15();
  v22(v21);
  v18(v32, v17);
  OUTLINED_FUNCTION_5_47();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_17_1();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, v32, v33, a12, a13, a14);
}

uint64_t sub_1C71A0A64()
{
  v1 = *(v0 + 1704);
  __swift_destroy_boxed_opaque_existential_1((v0 + 1592));
  OUTLINED_FUNCTION_0_22(v1, v1[3]);
  sub_1C754F1AC();
  v2 = OUTLINED_FUNCTION_57_0();
  v3(v2);
  v4 = OUTLINED_FUNCTION_117_0();
  v5(v4);
  OUTLINED_FUNCTION_5_47();

  OUTLINED_FUNCTION_43();

  return v6();
}

uint64_t sub_1C71A0B78(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72657470616863 && a2 == 0xE700000000000000;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x734174706D6F7270 && a2 == 0xEC00000073746573;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x74706D6F7270 && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C7551DBC();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1C71A0C88(char a1)
{
  if (!a1)
  {
    return 0x72657470616863;
  }

  if (a1 == 1)
  {
    return 0x734174706D6F7270;
  }

  return 0x74706D6F7270;
}

uint64_t sub_1C71A0CE4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2188B8, &qword_1C7574320);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - v5;
  memcpy(__dst, v1, 0x68uLL);
  v7 = v1[13];
  v25 = v1[14];
  v26 = v7;
  v8 = v1[15];
  v23 = v1[16];
  v24 = v8;
  v9 = v1[17];
  v19 = v1[18];
  v20 = v9;
  v10 = v1[20];
  v21 = v1[19];
  v22 = v10;
  v11 = OUTLINED_FUNCTION_98_1();
  __swift_project_boxed_opaque_existential_1(v11, v12);
  sub_1C6FC061C(__dst, v35);
  sub_1C71A8434();
  sub_1C755200C();
  memcpy(v35, __dst, sizeof(v35));
  v38 = 0;
  sub_1C716A2A8();
  sub_1C7551D2C();
  if (v2)
  {
    memcpy(v34, v35, sizeof(v34));
    sub_1C70552E0(v34);
    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    v14 = v23;
    v15 = v24;
    v16 = v25;
    v18 = v4;
    v17 = v22;
    memcpy(v34, v35, sizeof(v34));
    sub_1C70552E0(v34);
    v27 = v26;
    v37 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2188C0, &qword_1C7574328);
    sub_1C71A8488();
    sub_1C7551D2C();
    v27 = v16;
    v28 = v15;
    v29 = v14;
    v30 = v20;
    v31 = v19;
    v32 = v21;
    v33 = v17;
    v37 = 2;
    sub_1C71A8560();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C7551D2C();

    return (*(v18 + 8))(v6, v3);
  }
}

uint64_t sub_1C71A0FD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C71A0B78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C71A1000(uint64_t a1)
{
  v2 = sub_1C71A8434();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C71A103C(uint64_t a1)
{
  v2 = sub_1C71A8434();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void __swiftcall ChapterLLMCurationResult.init(assetUUIDs:llmCuratedAssetCount:llmExtraAssetCount:llmDupeAssetCount:llmHallucinatedAssetCount:unfilteredCompletion:)(PhotosIntelligence::ChapterLLMCurationResult *__return_ptr retstr, Swift::OpaquePointer assetUUIDs, Swift::Int llmCuratedAssetCount, Swift::Int llmExtraAssetCount, Swift::Int llmDupeAssetCount, Swift::Int llmHallucinatedAssetCount, Swift::OpaquePointer unfilteredCompletion)
{
  retstr->assetUUIDs = assetUUIDs;
  retstr->llmCuratedAssetCount = llmCuratedAssetCount;
  retstr->llmExtraAssetCount = llmExtraAssetCount;
  retstr->llmDupeAssetCount = llmDupeAssetCount;
  retstr->llmHallucinatedAssetCount = llmHallucinatedAssetCount;
  retstr->unfilteredCompletion = unfilteredCompletion;
}

unint64_t sub_1C71A10F0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return 0xD000000000000022;
  }

  else
  {
    return 0xD00000000000001FLL;
  }
}

uint64_t sub_1C71A1128(uint64_t a1)
{
  v2 = sub_1C71A8020();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1C71A1164(uint64_t a1)
{
  v2 = sub_1C71A8020();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1C71A11A4()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EDD08E68);
  __swift_project_value_buffer(v0, qword_1EDD08E68);
  return sub_1C754FEFC();
}

uint64_t sub_1C71A1238()
{
  if (qword_1EC213E78 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EC25B6C0);
  v0 = qword_1EC25B6C8;
  if (!qword_1EC25B6C8)
  {
    if (qword_1EDD0A988 != -1)
    {
      OUTLINED_FUNCTION_30_0(&qword_1EDD0A988);
    }

    static LLMWrapper.tokenGenerator(for:)();
    v0 = v1;
    qword_1EC25B6C8 = v1;
  }

  os_unfair_lock_unlock(&dword_1EC25B6C0);
  return v0;
}

uint64_t sub_1C71A12F8(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, __int128 *a9)
{
  v10 = v9;
  v46 = a8;
  v51 = a5;
  v52 = a7;
  v49 = a1;
  v50 = a4;
  v48 = a3;
  v47 = a9;
  v45 = type metadata accessor for AssetCurationDiagnosticsGenerator(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v13);
  v42 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for AssetRichDescriptionsGenerator(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v55, a2, 0x130uLL);
  v18 = *a6;
  v43 = *(a6 + 8);
  v19 = *(a6 + 16);
  v20 = OBJC_IVAR____TtC18PhotosIntelligence27FreeformStoryChapterCurator_logger;
  if (qword_1EDD08E60 != -1)
  {
    OUTLINED_FUNCTION_3_61();
    swift_once();
  }

  v21 = sub_1C754FF1C();
  v22 = __swift_project_value_buffer(v21, qword_1EDD08E68);
  (*(*(v21 - 8) + 16))(v10 + v20, v22, v21);
  v23 = OBJC_IVAR____TtC18PhotosIntelligence27FreeformStoryChapterCurator_curationSession;
  *(v10 + v23) = [objc_allocWithZone(CLSCurationSession) init];
  *(v10 + OBJC_IVAR____TtC18PhotosIntelligence27FreeformStoryChapterCurator_configuration) = v49;
  memcpy((v10 + OBJC_IVAR____TtC18PhotosIntelligence27FreeformStoryChapterCurator_storyElements), a2, 0x130uLL);
  v24 = (v10 + OBJC_IVAR____TtC18PhotosIntelligence27FreeformStoryChapterCurator_storyTitle);
  v25 = v50;
  v26 = v51;
  *v24 = v48;
  v24[1] = v25;
  *(v10 + OBJC_IVAR____TtC18PhotosIntelligence27FreeformStoryChapterCurator_traits) = v26;
  v27 = v10 + OBJC_IVAR____TtC18PhotosIntelligence27FreeformStoryChapterCurator_storyPhotoLibraryContext;
  *v27 = v18;
  v28 = v43;
  *(v27 + 8) = v43;
  *(v27 + 16) = v19;
  sub_1C6FB5E28(v52, v10 + OBJC_IVAR____TtC18PhotosIntelligence27FreeformStoryChapterCurator_storyAssetsFetcher);
  sub_1C6FDE884(v55, v54);
  sub_1C75504FC();
  sub_1C75504FC();
  v29 = v18;

  sub_1C754FEFC();
  v30 = &v17[*(v44 + 20)];
  *v30 = v29;
  *(v30 + 4) = v28;
  *(v30 + 2) = v19;
  sub_1C71A8320(v17, v10 + OBJC_IVAR____TtC18PhotosIntelligence27FreeformStoryChapterCurator_assetRichDescriptionsGenerator, type metadata accessor for AssetRichDescriptionsGenerator);
  type metadata accessor for LLMAssetCache();
  swift_allocObject();
  *(v10 + OBJC_IVAR____TtC18PhotosIntelligence27FreeformStoryChapterCurator_assetCache) = LLMAssetCache.init()();
  v31 = v46;
  *(v10 + OBJC_IVAR____TtC18PhotosIntelligence27FreeformStoryChapterCurator_diagnosticContext) = v46;
  swift_retain_n();
  v32 = v42;
  sub_1C754FEFC();
  *v32 = v31;
  sub_1C71A8320(v32, v10 + OBJC_IVAR____TtC18PhotosIntelligence27FreeformStoryChapterCurator_assetCurationDiagnosticsGenerator, type metadata accessor for AssetCurationDiagnosticsGenerator);
  v33 = v55[1];
  memcpy(v54, &v55[27], 0x50uLL);
  v34 = objc_opt_self();
  v35 = v33;
  sub_1C7027A20(&v55[27], &v53);
  LOBYTE(v34) = [v34 shufflePromptParameters];
  type metadata accessor for AssetCurationPromptGeneratorConfiguration();
  swift_allocObject();
  AssetCurationPromptGeneratorConfiguration.init(userPrompt:storyTitle:extendedTokens:traits:targetAssetCount:lifeContextMaximumTokenCount:assetCurationPromptMaximumTokenCount:shufflePromptParameters:)(v35, v48, v50, v54, v51, v49, 200, 3700, v34);
  type metadata accessor for AssetCurationPromptGenerator(0);
  swift_allocObject();

  *(v10 + OBJC_IVAR____TtC18PhotosIntelligence27FreeformStoryChapterCurator_assetCurationPromptGenerator) = AssetCurationPromptGenerator.init(with:)(v36);
  if (qword_1EDD0E038 != -1)
  {
    swift_once();
  }

  TokenCategoryType = type metadata accessor for QueryTokenCategoryType(0);
  v38 = __swift_project_value_buffer(TokenCategoryType, qword_1EDD0E040);
  MEMORY[0x1EEE9AC00](v38);
  v39 = sub_1C707351C();
  sub_1C6FE0DC0(v55);

  __swift_destroy_boxed_opaque_existential_1(v52);
  *(v10 + OBJC_IVAR____TtC18PhotosIntelligence27FreeformStoryChapterCurator_promoteAssetsWithLocation) = v39;
  sub_1C6F699F8(v47, v10 + OBJC_IVAR____TtC18PhotosIntelligence27FreeformStoryChapterCurator_aiEventReporting);
  return v10;
}

uint64_t sub_1C71A1814()
{
  OUTLINED_FUNCTION_42();
  v1[143] = v0;
  v1[142] = v2;
  v1[141] = v3;
  v1[140] = v4;
  v1[139] = v5;
  v1[138] = v6;
  v7 = sub_1C754F38C();
  v1[144] = v7;
  OUTLINED_FUNCTION_18(v7);
  v1[145] = v8;
  v1[146] = swift_task_alloc();
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C71A18D8()
{
  v41 = v0;
  __swift_project_boxed_opaque_existential_1(*(v0 + 1128), *(*(v0 + 1128) + 24));
  sub_1C754F1CC();
  v1 = sub_1C754FEEC();
  sub_1C75511BC();
  v2 = OUTLINED_FUNCTION_72();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_23_1();
    v5 = OUTLINED_FUNCTION_20_1();
    v40[0] = v5;
    *v4 = 136315394;
    v6 = sub_1C6F765A4(27444, 0xE200000000000000, v40);
    OUTLINED_FUNCTION_43_18(v6);
    *(v4 + 14) = 55;
    OUTLINED_FUNCTION_8_1();
    _os_log_impl(v7, v8, v9, v10, v11, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v5);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  v12 = *(v0 + 1144);
  v13 = *(v0 + 1104);
  v14 = objc_opt_self();
  v15 = [v14 promotePlayableAssetsInStories];
  v16 = [v14 chapterCuratorFeatureTypesForDistribution];
  sub_1C7212E74(v16, v17, v18, v19, v20, v21, v22, v23, v39, SWORD2(v39), SBYTE6(v39), SHIBYTE(v39), v40[0], v40[1], v40[2], v40[3], v40[4], v40[5], v41, v42, v43);
  v25 = v24;

  *(v0 + 1032) = 20;
  *(v0 + 1040) = 55;
  *(v0 + 1048) = 0x3F847AE147AE147BLL;
  *(v0 + 1056) = 0x3F847AE147AE147BLL;
  *(v0 + 1064) = 1;
  *(v0 + 1065) = v15;
  *(v0 + 1072) = v25;
  v26 = OBJC_IVAR____TtC18PhotosIntelligence27FreeformStoryChapterCurator_storyElements;
  memcpy((v0 + 16), (v12 + OBJC_IVAR____TtC18PhotosIntelligence27FreeformStoryChapterCurator_storyElements), 0x130uLL);
  memcpy((v0 + 320), (v12 + v26), 0x130uLL);
  v27 = *(v12 + OBJC_IVAR____TtC18PhotosIntelligence27FreeformStoryChapterCurator_storyPhotoLibraryContext);
  v28 = *(v12 + OBJC_IVAR____TtC18PhotosIntelligence27FreeformStoryChapterCurator_storyPhotoLibraryContext + 8);
  v29 = *(v12 + OBJC_IVAR____TtC18PhotosIntelligence27FreeformStoryChapterCurator_storyPhotoLibraryContext + 16);
  *(v0 + 1080) = v27;
  *(v0 + 1088) = v28;
  *(v0 + 1096) = v29;
  v30 = *(v12 + OBJC_IVAR____TtC18PhotosIntelligence27FreeformStoryChapterCurator_diagnosticContext);
  type metadata accessor for FreeformStoryAssetElector(0);
  swift_allocObject();
  sub_1C6FDE884(v0 + 16, v0 + 624);

  v31 = v27;

  *(v0 + 1176) = sub_1C72133FC((v0 + 1032), v0 + 320, 1, (v0 + 1080), v30);
  memcpy((v0 + 928), v13, 0x68uLL);
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 1184) = v32;
  *v32 = v33;
  v32[1] = sub_1C71A1BC0;
  v34 = *(v0 + 1136);
  v35 = *(v0 + 1128);
  v36 = *(v0 + 1120);
  v37 = *(v0 + 1112);

  return sub_1C7210E4C(v0 + 928, v37, v36, v35, v34);
}

uint64_t sub_1C71A1BC0()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  v5 = v4;
  OUTLINED_FUNCTION_6_4();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_14();
  *v8 = v7;
  *(v5 + 1192) = v0;

  if (!v0)
  {
    *(v5 + 1200) = v3;
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C71A1CCC()
{
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_58_14();
  OUTLINED_FUNCTION_12_2(v0);
  sub_1C754F1AC();
  v2 = OUTLINED_FUNCTION_57_0();
  v3(v2);

  v4 = *(v1 + 8);
  v5 = *(v1 + 1200);

  return v4(v5);
}

uint64_t sub_1C71A1D6C()
{
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_58_14();
  OUTLINED_FUNCTION_12_2(v0);
  sub_1C754F1AC();
  v1 = OUTLINED_FUNCTION_57_0();
  v2(v1);

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t sub_1C71A1E04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C755180C();

  MEMORY[0x1CCA5CD70](a1, a2);
  MEMORY[0x1CCA5CD70](1819113518, 0xE400000000000000);
  v7 = *(v3 + OBJC_IVAR____TtC18PhotosIntelligence27FreeformStoryChapterCurator_diagnosticContext);
  if (v7)
  {
    sub_1C75504FC();
    sub_1C7162634(0xD000000000000014, 0x80000001C75A2BD0, v7, a3);
  }
}

void sub_1C71A1EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a2 + 16);
  sub_1C75504FC();
  sub_1C6FB0C38();
  v10 = *(*(a1 + 48) + 16);
  sub_1C6FB147C();
  v11 = *(a1 + 48);
  *(v11 + 16) = v10 + 1;
  v12 = v11 + 32 * v10;
  *(v12 + 32) = v9;
  *(v12 + 40) = a3;
  *(v12 + 48) = a4;
  *(v12 + 56) = 15;
  *(a1 + 48) = v11;
  v13 = *(a5 + 16);
  sub_1C75504FC();
  sub_1C6FB0C38();
  v14 = *(*(a1 + 48) + 16);
  sub_1C6FB147C();
  v15 = *(a1 + 48);
  *(v15 + 16) = v14 + 1;
  v16 = v15 + 32 * v14;
  *(v16 + 32) = v13;
  *(v16 + 40) = a3;
  *(v16 + 48) = a4;
  *(v16 + 56) = 16;
  *(a1 + 48) = v15;
}

uint64_t sub_1C71A1FC4()
{
  OUTLINED_FUNCTION_49_0();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  *(v1 + 1048) = v2;
  *(v1 + 1040) = v7;
  *(v1 + 1032) = v8;
  *(v1 + 1024) = v9;
  *(v1 + 1016) = v10;
  *(v1 + 1008) = v11;
  *(v1 + 1000) = v12;
  *(v1 + 1056) = *v2;
  v13 = sub_1C754F2FC();
  *(v1 + 1064) = v13;
  OUTLINED_FUNCTION_18(v13);
  *(v1 + 1072) = v14;
  *(v1 + 1080) = swift_task_alloc();
  *(v1 + 1088) = swift_task_alloc();
  *(v1 + 1096) = swift_task_alloc();
  *(v1 + 1104) = swift_task_alloc();
  memcpy((v1 + 352), v6, 0x68uLL);
  *(v1 + 1234) = *v4;
  *(v1 + 1235) = v4[1];
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_1C71A2108(__n128 a1, __n128 a2)
{
  v3 = *(v2 + 1000);
  sub_1C754F2BC();
  sub_1C754F2BC();
  v4 = *(v3 + 16);
  *(v2 + 1112) = v4;
  *(v2 + 1120) = OBJC_IVAR____TtC18PhotosIntelligence27FreeformStoryChapterCurator_assetCache;
  *(v2 + 1144) = MEMORY[0x1E69E7CC0];
  *(v2 + 1128) = 0u;
  if (v4)
  {
    v5 = *(v2 + 1000);
    *(v2 + 1152) = v5[4];
    v6 = v5[5];
    *(v2 + 1160) = v6;
    *(v2 + 1168) = v5[6];
    *(v2 + 1176) = v5[7];
    OUTLINED_FUNCTION_21_29(v6);
    sub_1C75504FC();
    OUTLINED_FUNCTION_0_11();
    OUTLINED_FUNCTION_12_1();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    v11 = *(v2 + 1235);
    v12 = *(v2 + 1234);
    v13 = *(v2 + 1104);
    v14 = *(v2 + 1088);
    v15 = *(v2 + 1072);
    v16 = *(v2 + 1064);
    v33 = *(v2 + 1024);
    v17 = *(v2 + 1016);
    v18 = *(v2 + 1008);
    v19 = *(*(v2 + 1048) + OBJC_IVAR____TtC18PhotosIntelligence27FreeformStoryChapterCurator_assetCurationPromptGenerator);
    memcpy((v2 + 456), (v2 + 352), 0x68uLL);
    *(v2 + 1232) = v12;
    *(v2 + 1233) = v11;
    v20 = *(v15 + 32);
    v20(v14, v13, v16);
    v21 = MEMORY[0x1E69E7CC0];
    v22 = OUTLINED_FUNCTION_71_7();
    sub_1C7437AAC(v22, v23, v18, v24, v17, v33, v14, v25);
    v26 = OUTLINED_FUNCTION_70_12();
    v34 = v27;
    v32 = v26;
    OUTLINED_FUNCTION_76_9();
    *(v2 + 120) = v21;
    *(v2 + 128) = v34;
    *(v2 + 144) = v32;
    *(v2 + 160) = v17;
    OUTLINED_FUNCTION_59_12((v2 + 808));
    v20(0, v19, v11);
    sub_1C6FC061C(v2 + 352, v2 + 560);
    sub_1C75504FC();
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    *(v2 + 1216) = v28;
    *v28 = v29;
    OUTLINED_FUNCTION_15_40(v28);
    OUTLINED_FUNCTION_12_1();

    return sub_1C71A2D00();
  }
}

uint64_t sub_1C71A23E0()
{
  OUTLINED_FUNCTION_49_0();
  v1 = v0[141];
  v2 = sub_1C70CDFD4(v0[144], v0[145]);
  v0[149] = v1;
  v0[150] = v2;
  v0[151] = v3;
  if (v1)
  {
    swift_bridgeObjectRelease_n();
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C71A2498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_111_0();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *(v18 + 1144);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v66 = OUTLINED_FUNCTION_99();
    sub_1C6FB27E8(v66);
    v20 = v67;
  }

  v22 = *(v20 + 16);
  v21 = *(v20 + 24);
  if (v22 >= v21 >> 1)
  {
    v68 = OUTLINED_FUNCTION_15(v21);
    sub_1C6FB27E8(v68);
    v20 = v69;
  }

  v23 = *(v18 + 1200);
  v24 = *(v18 + 1176);
  v25 = *(v18 + 1168);
  v26 = *(v18 + 1152);
  *(v20 + 16) = v22 + 1;
  v27 = v20 + 48 * v22;
  *(v27 + 32) = v26;
  *(v27 + 48) = v23;
  *(v27 + 64) = v25;
  *(v27 + 72) = v24;
  v28 = *(v18 + 1192);
  v29 = *(v18 + 1136) + 1;
  *(v18 + 1144) = v20;
  *(v18 + 1136) = v29;
  *(v18 + 1128) = v28;
  if (v29 == *(v18 + 1112))
  {
    v30 = *(v18 + 1235);
    v70 = (v18 + 808);
    v31 = *(v18 + 1234);
    v32 = *(v18 + 1104);
    v33 = *(v18 + 1088);
    v34 = *(v18 + 1072);
    v35 = *(v18 + 1064);
    v74 = *(v18 + 1024);
    v36 = *(v18 + 1008);
    v71 = *(*(v18 + 1048) + OBJC_IVAR____TtC18PhotosIntelligence27FreeformStoryChapterCurator_assetCurationPromptGenerator);
    v72 = *(v18 + 1016);
    memcpy((v18 + 456), (v18 + 352), 0x68uLL);
    *(v18 + 1232) = v31;
    *(v18 + 1233) = v30;
    v37 = *(v34 + 32);
    v37(v33, v32, v35);
    v38 = OUTLINED_FUNCTION_71_7();
    sub_1C7437AAC(v38, v39, v36, v40, v72, v74, v33, v41);
    if (v28)
    {
      v42 = *(v18 + 1096);
      v43 = *(v18 + 1072);
      v44 = *(v18 + 1064);

      v45 = *(v43 + 8);
      v45(v42, v44);
      v46 = OUTLINED_FUNCTION_117_0();
      (v45)(v46);
      OUTLINED_FUNCTION_36_17();

      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_94_1();

      return v48(v47, v48, v49, v50, v51, v52, v53, v54, v70, v71, v72, a12, v74, a14, a15, a16, a17, a18);
    }

    else
    {
      v73 = OUTLINED_FUNCTION_70_12();
      v75 = v62;
      OUTLINED_FUNCTION_76_9();
      *(v18 + 120) = v20;
      *(v18 + 128) = v75;
      *(v18 + 144) = v73;
      *(v18 + 160) = v35;
      OUTLINED_FUNCTION_59_12(v70);
      v37(0, v71, v33);
      sub_1C6FC061C(v18 + 352, v18 + 560);
      sub_1C75504FC();
      swift_task_alloc();
      OUTLINED_FUNCTION_48();
      *(v18 + 1216) = v63;
      *v63 = v64;
      OUTLINED_FUNCTION_15_40(v63);
      OUTLINED_FUNCTION_94_1();

      return sub_1C71A2D00();
    }
  }

  else
  {
    v56 = (*(v18 + 1000) + 32 * v29);
    *(v18 + 1152) = v56[4];
    v57 = v56[5];
    *(v18 + 1160) = v57;
    *(v18 + 1168) = v56[6];
    *(v18 + 1176) = v56[7];
    OUTLINED_FUNCTION_21_29(v57);
    sub_1C75504FC();
    OUTLINED_FUNCTION_0_11();
    OUTLINED_FUNCTION_94_1();

    return MEMORY[0x1EEE6DFA0](v58, v59, v60);
  }
}

uint64_t sub_1C71A2798()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 1224) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C71A2898()
{
  v1 = *(v0 + 1048);
  v2 = *(v0 + 1040);
  v3 = *(v0 + 888);
  *(v0 + 824) = *(v0 + 872);
  *(v0 + 840) = v3;
  *(v0 + 856) = *(v0 + 904);
  v4 = *(v0 + 824);
  v2[6] = *(v0 + 832);
  v2[7] = *(v0 + 840);
  v2[8] = *(v0 + 848);
  v2[9] = *(v0 + 856);
  if (*(v1 + OBJC_IVAR____TtC18PhotosIntelligence27FreeformStoryChapterCurator_diagnosticContext))
  {
    *(v0 + 968) = *(v0 + 368);
    sub_1C75504FC();

    sub_1C6FCA460(v0 + 968, v0 + 984);
    MEMORY[0x1CCA5CD70](0x754F204D4C4C203ALL, 0xEC00000074757074);
    OUTLINED_FUNCTION_61_9();
    v10 = sub_1C7164AD8(v5, v6, v7, v8, v9);

    sub_1C6FC061C(v0 + 352, v0 + 664);
    sub_1C71A8178(v0 + 824, v0 + 920);
    sub_1C716167C(v11);
  }

  else
  {
    sub_1C75504FC();
  }

  v12 = *(v0 + 1224);

  OUTLINED_FUNCTION_32_17();
  static FreeformStoryChapterCurator.checkHallucinatedAssets(result:numberOfPromptAssets:targetNumberOfAssetsPerChapter:)(v13);
  if (v12)
  {
    v15 = *(v0 + 1072);
    v16 = *(v0 + 1064);
    v17 = *(v0 + 1032);

    sub_1C6FC1868(v0 + 16);
    sub_1C716A018(v0 + 824);
    (*(v15 + 8))(v17, v16);
    OUTLINED_FUNCTION_36_17();

    OUTLINED_FUNCTION_6_0();

    return v18();
  }

  else
  {
    OUTLINED_FUNCTION_32_17();
    static FreeformStoryChapterCurator.checkDuplicatedAssets(result:numberOfPromptAssets:targetNumberOfAssetsPerChapter:)(v14);
    sub_1C716A018(v0 + 824);
    sub_1C754F2EC();
    sub_1C6FC1868(v0 + 16);

    v20 = *(v0 + 8);

    return v20(v4);
  }
}

uint64_t sub_1C71A2B40()
{
  OUTLINED_FUNCTION_123();
  v1 = *(v0[134] + 8);
  (v1)(v0[137], v0[133]);
  v2 = OUTLINED_FUNCTION_66_2();
  v1(v2);
  v3 = OUTLINED_FUNCTION_0_11();
  v1(v3);
  OUTLINED_FUNCTION_77_9();

  OUTLINED_FUNCTION_43();

  return v4();
}

uint64_t sub_1C71A2C08()
{
  OUTLINED_FUNCTION_49_0();
  sub_1C6FC1868(v0 + 16);
  v1 = OUTLINED_FUNCTION_90();
  v2(v1);
  OUTLINED_FUNCTION_77_9();

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t sub_1C71A2CA8()
{
  v0 = objc_autoreleasePoolPush();
  v1 = OUTLINED_FUNCTION_90();
  sub_1C71A36E0(v1, v2, v3);
  objc_autoreleasePoolPop(v0);
  return v5;
}

uint64_t sub_1C71A2D00()
{
  OUTLINED_FUNCTION_42();
  v1[100] = v0;
  v1[99] = v2;
  v1[98] = v3;
  v1[97] = v4;
  v1[96] = v5;
  v1[101] = *v0;
  memcpy(v1 + 28, v4, 0xA8uLL);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C71A2DA0()
{
  OUTLINED_FUNCTION_49_0();
  v1 = sub_1C71A1238();
  *(v0 + 816) = v1;
  if (v1)
  {
    v2 = v1;
    memcpy((v0 + 392), *(v0 + 776), 0xA8uLL);
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    *(v0 + 824) = v3;
    *v3 = v4;
    v3[1] = sub_1C71A2EF4;
    v5 = *(v0 + 792);
    v6 = *(v0 + 784);
    v7 = *(v0 + 768);

    return sub_1C71A3894(v7, (v0 + 392), v2, v6, v5);
  }

  else
  {
    v9 = *(v0 + 792);
    sub_1C6FB5280();
    swift_allocError();
    swift_willThrow();
    sub_1C754F2FC();
    OUTLINED_FUNCTION_3();
    (*(v10 + 8))(v9);
    OUTLINED_FUNCTION_43();

    return v11();
  }
}

uint64_t sub_1C71A2EF4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 832) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C71A2FF0()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C71A304C()
{
  v10 = v0;
  v1 = *(v0 + 832);
  sub_1C6FC1764(v0 + 224, v0 + 560);
  sub_1C755180C();

  *&v9[0] = 0xD000000000000013;
  *(&v9[0] + 1) = 0x80000001C75A2B70;
  *(v0 + 752) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
  v3 = sub_1C75506EC();
  MEMORY[0x1CCA5CD70](v3);

  MEMORY[0x1CCA5CD70](0xD000000000000015, 0x80000001C75A2B90);
  swift_getErrorValue();
  v4 = sub_1C7551EAC();
  MEMORY[0x1CCA5CD70](v4);

  MEMORY[0x1CCA5CD70](34, 0xE100000000000000);
  v5 = v9[0];
  memcpy((v0 + 16), (v0 + 224), 0xA8uLL);
  v6 = MEMORY[0x1E69E7CC0];
  *(v0 + 184) = MEMORY[0x1E69E7CC0];
  *(v0 + 192) = v6;
  *(v0 + 200) = v6;
  *(v0 + 208) = v5;
  memcpy(v9, (v0 + 16), sizeof(v9));
  sub_1C6FC11CC(v9);
  swift_willThrow();
  sub_1C71A81B0(v0 + 16);

  OUTLINED_FUNCTION_43();

  return v7();
}

uint64_t sub_1C71A320C(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  swift_isUniquelyReferenced_nonNull_native();
  v4 = *(a1 + 56);
  v5 = OUTLINED_FUNCTION_117_0();
  v7 = sub_1C6F78124(v5, v6);
  if (__OFADD__(*(v4 + 16), (v8 & 1) == 0))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = v7;
  v10 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2151A8, &qword_1C755C750);
  if ((sub_1C7551A2C() & 1) == 0)
  {
LABEL_5:
    *(a1 + 56) = v4;
    if ((v10 & 1) == 0)
    {
      sub_1C6FC6D3C(v9, 0x7543207465737341, 0xEE006E6F69746172, 0, v4);
    }

    v15 = *(v4 + 56);
    v16 = *(v15 + 8 * v9);
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (!v17)
    {
      *(v15 + 8 * v9) = v18;
      sub_1C75519EC();
      swift_isUniquelyReferenced_nonNull_native();
      v20 = *(a1 + 176);
      result = sub_1C6FC80A4();
      *(a1 + 176) = v20;
      return result;
    }

    goto LABEL_10;
  }

  v11 = OUTLINED_FUNCTION_117_0();
  v13 = sub_1C6F78124(v11, v12);
  if ((v10 & 1) == (v14 & 1))
  {
    v9 = v13;
    goto LABEL_5;
  }

LABEL_11:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

void static FreeformStoryChapterCurator.checkHallucinatedAssets(result:numberOfPromptAssets:targetNumberOfAssetsPerChapter:)(uint64_t a1)
{
  if (*(a1 + 32) >= 1)
  {
    OUTLINED_FUNCTION_63_12();
    if (v6 ^ v7 | v5)
    {
      v8 = v4;
    }

    else
    {
      v8 = v3;
    }

    if (v8 <= v2)
    {
      OUTLINED_FUNCTION_46_17(v1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
      v21 = sub_1C703328C();
      v22 = OUTLINED_FUNCTION_57_14(v21);
      v24 = v23;

      MEMORY[0x1CCA5CD70](v22, v24);

      MEMORY[0x1CCA5CD70](93, 0xE100000000000000);
      sub_1C70553F8();
      swift_allocError();
      *v25 = v26;
      *(v25 + 8) = v27;
      *(v25 + 16) = 1;
      swift_willThrow();
    }

    else
    {
      if (qword_1EDD08E60 != -1)
      {
        OUTLINED_FUNCTION_3_61();
        swift_once();
      }

      v9 = sub_1C754FF1C();
      __swift_project_value_buffer(v9, qword_1EDD08E68);
      v10 = sub_1C754FEEC();
      sub_1C75511BC();
      v11 = OUTLINED_FUNCTION_72();
      if (os_log_type_enabled(v11, v12))
      {
        OUTLINED_FUNCTION_65_13();
        v13 = swift_slowAlloc();
        OUTLINED_FUNCTION_28_17(v13, 3.8523e-34);
        OUTLINED_FUNCTION_45_16();
        _os_log_impl(v14, v15, v16, v17, v18, v19);
        v20 = OUTLINED_FUNCTION_6_51();
        MEMORY[0x1CCA5F8E0](v20);
      }
    }
  }
}

void static FreeformStoryChapterCurator.checkDuplicatedAssets(result:numberOfPromptAssets:targetNumberOfAssetsPerChapter:)(uint64_t a1)
{
  if (*(a1 + 24) >= 1)
  {
    OUTLINED_FUNCTION_63_12();
    if (v6 ^ v7 | v5)
    {
      v8 = v4;
    }

    else
    {
      v8 = v3;
    }

    if (v8 <= v2)
    {
      OUTLINED_FUNCTION_46_17(v1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
      v21 = sub_1C703328C();
      v22 = OUTLINED_FUNCTION_57_14(v21);
      v24 = v23;

      MEMORY[0x1CCA5CD70](v22, v24);

      MEMORY[0x1CCA5CD70](93, 0xE100000000000000);
      sub_1C70553F8();
      swift_allocError();
      *v25 = v26;
      *(v25 + 8) = v27;
      *(v25 + 16) = 0;
      swift_willThrow();
    }

    else
    {
      if (qword_1EDD08E60 != -1)
      {
        OUTLINED_FUNCTION_3_61();
        swift_once();
      }

      v9 = sub_1C754FF1C();
      __swift_project_value_buffer(v9, qword_1EDD08E68);
      v10 = sub_1C754FEEC();
      sub_1C75511BC();
      v11 = OUTLINED_FUNCTION_72();
      if (os_log_type_enabled(v11, v12))
      {
        OUTLINED_FUNCTION_65_13();
        v13 = swift_slowAlloc();
        OUTLINED_FUNCTION_28_17(v13, 3.8523e-34);
        OUTLINED_FUNCTION_45_16();
        _os_log_impl(v14, v15, v16, v17, v18, v19);
        v20 = OUTLINED_FUNCTION_6_51();
        MEMORY[0x1CCA5F8E0](v20);
      }
    }
  }
}

void sub_1C71A36E0(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = [a1 librarySpecificFetchOptions];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C755BAB0;
  *(v6 + 32) = sub_1C755068C();
  *(v6 + 40) = v7;
  sub_1C6FCA0EC(v6, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2151A0, &unk_1C755BE10);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C75604F0;
  v9 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v10 = sub_1C6F6AF98(0x6165724365746164, 0xEB00000000646574, 1);
  v11 = sub_1C6F65BE8(0, &qword_1EDD108F0, 0x1E696AEB0);
  *(v8 + 56) = v11;
  *(v8 + 32) = v10;
  v12 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v13 = sub_1C6F6AF98(0x44497463656A626FLL, 0xE800000000000000, 1);
  *(v8 + 88) = v11;
  *(v8 + 64) = v13;
  sub_1C70E7F40(v8, v5);
  v14 = objc_opt_self();
  v15 = v5;
  v16 = sub_1C6FCA158(a2, v5, v14);

  if (v16)
  {

    *a3 = v16;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1C71A3894(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[90] = v5;
  v6[89] = a5;
  v6[88] = a4;
  v6[87] = a3;
  v6[86] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DF8, &qword_1C755BFD0);
  v6[91] = swift_task_alloc();
  v8 = sub_1C754FA7C();
  v6[92] = v8;
  v6[93] = *(v8 - 8);
  v6[94] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214BF0, &qword_1C7574200);
  v6[95] = swift_task_alloc();
  v9 = sub_1C754F38C();
  v6[96] = v9;
  v6[97] = *(v9 - 8);
  v6[98] = swift_task_alloc();
  v10 = sub_1C754F61C();
  v6[99] = v10;
  v6[100] = *(v10 - 8);
  v6[101] = swift_task_alloc();
  v11 = sub_1C754DFFC();
  v6[102] = v11;
  v6[103] = *(v11 - 8);
  v6[104] = swift_task_alloc();
  v6[105] = swift_task_alloc();
  v12 = sub_1C754E72C();
  v6[106] = v12;
  v6[107] = *(v12 - 8);
  v6[108] = swift_task_alloc();
  v6[109] = swift_task_alloc();
  v6[110] = swift_task_alloc();
  v6[111] = type metadata accessor for LLMConfiguration(0);
  v6[112] = swift_task_alloc();
  v6[113] = swift_task_alloc();
  memcpy(v6 + 2, a2, 0xA8uLL);

  return MEMORY[0x1EEE6DFA0](sub_1C71A3BB8, 0, 0);
}

uint64_t sub_1C71A3BB8()
{
  v82 = v0;
  if (qword_1EDD0A988 != -1)
  {
    OUTLINED_FUNCTION_30_0(&qword_1EDD0A988);
  }

  v1 = *(v0 + 904);
  v2 = *(v0 + 720);
  type metadata accessor for LLMConfigurationProvider();
  LOBYTE(v80[0]) = 13;
  static LLMConfigurationProvider.configuration(for:logger:)(v80, v1, v2 + OBJC_IVAR____TtC18PhotosIntelligence27FreeformStoryChapterCurator_logger);
  v3 = *(v0 + 720);
  v4 = (*(v0 + 904) + *(*(v0 + 888) + 40));
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  *(v0 + 561) = *(v4 + 41);
  *(v0 + 536) = v6;
  *(v0 + 552) = v7;
  *(v0 + 520) = v5;
  v8 = v4[1];
  v80[0] = *v4;
  v80[1] = v8;
  v81[0] = v4[2];
  *(v81 + 9) = *(v4 + 41);
  static LLMWrapper.gmsSamplingParameters(from:)();
  v9 = *(v0 + 136);
  v10 = *(v0 + 144);
  v11 = *(v0 + 152);
  v12 = *(v0 + 160);
  v13 = *(v0 + 168);
  v14 = *(v0 + 176);
  *(v0 + 584) = *(v0 + 128);
  *(v0 + 592) = v9;
  *(v0 + 600) = v10;
  *(v0 + 608) = v11;
  *(v0 + 616) = v12;
  *(v0 + 624) = v13;
  *(v0 + 632) = v14;
  v15 = *(v3 + OBJC_IVAR____TtC18PhotosIntelligence27FreeformStoryChapterCurator_diagnosticContext);
  if (v15)
  {
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    if (sub_1C71656D8(v16))
    {
      v17 = (v15 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_generationSummaryLock);
      os_unfair_lock_lock(v17);
      sub_1C71A606C(&v17[2], 13, v0 + 584, (v0 + 520));
      os_unfair_lock_unlock(v17);
    }
  }

  v18 = *(v0 + 720);
  sub_1C754DFEC();
  v19 = OBJC_IVAR____TtC18PhotosIntelligence27FreeformStoryChapterCurator_aiEventReporting;
  *(v0 + 912) = OBJC_IVAR____TtC18PhotosIntelligence27FreeformStoryChapterCurator_aiEventReporting;
  __swift_project_boxed_opaque_existential_1((v18 + v19), *(v18 + v19 + 24));
  LOBYTE(v80[0]) = 4;
  OUTLINED_FUNCTION_52_15();
  v20();
  type metadata accessor for LLMDefaults();
  static LLMDefaults.backendType.getter(v80);
  v79 = v14;
  switch(LOBYTE(v80[0]))
  {
    case 3:

      break;
    default:
      sub_1C7551DBC();

      break;
  }

  sub_1C754F60C();
  v72 = *(v0 + 904);
  v73 = *(v0 + 896);
  v75 = *(v0 + 872);
  v76 = *(v0 + 880);
  v21 = *(v0 + 856);
  v74 = *(v0 + 848);
  v22 = *(v0 + 808);
  v23 = *(v0 + 800);
  v24 = *(v0 + 792);
  v25 = *(v0 + 760);
  v70 = *(v0 + 752);
  v71 = *(v0 + 888);
  v26 = *(v0 + 744);
  v69 = *(v0 + 736);
  __swift_project_boxed_opaque_existential_1(*(v0 + 704), *(*(v0 + 704) + 24));
  (*(v23 + 16))(v25, v22, v24);
  __swift_storeEnumTagSinglePayload(v25, 0, 1, v24);
  sub_1C754F16C();
  sub_1C6FB5FC8(v25, &qword_1EC214BF0, &qword_1C7574200);
  (*(v26 + 16))(v70, v72 + *(v71 + 24), v69);
  sub_1C71A8204(v72, v73);
  v27 = *(v21 + 16);
  v27(v75, v76, v74);
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  v28 = v14;
  sub_1C75504FC();
  sub_1C6FC1764(v0 + 16, v0 + 184);
  v29 = sub_1C754FEEC();
  v30 = sub_1C75511BC();
  sub_1C6FC1868(v0 + 16);

  v31 = os_log_type_enabled(v29, v30);
  v32 = *(v0 + 896);
  if (v31)
  {
    v78 = *(v0 + 872);
    v77 = *(v0 + 864);
    v33 = *(v0 + 856);
    v34 = *(v0 + 848);
    OUTLINED_FUNCTION_65_13();
    v35 = swift_slowAlloc();
    *&v80[0] = swift_slowAlloc();
    *v35 = 136643587;
    sub_1C75504FC();
    v36 = OUTLINED_FUNCTION_66_2();
    v39 = sub_1C6F765A4(v36, v37, v38);

    *(v35 + 4) = v39;
    *(v35 + 12) = 2085;
    v40 = sub_1C75504BC();
    v42 = sub_1C6F765A4(v40, v41, v80);

    *(v35 + 14) = v42;
    *(v35 + 22) = 2080;
    sub_1C754E15C();
    sub_1C71A82D8(&qword_1EDD0CB88, MEMORY[0x1E6969770], MEMORY[0x1E6969798]);
    sub_1C7551D8C();
    OUTLINED_FUNCTION_0_91();
    sub_1C71A8268(v32, v43);
    v44 = OUTLINED_FUNCTION_66_2();
    v47 = sub_1C6F765A4(v44, v45, v46);

    *(v35 + 24) = v47;
    *(v35 + 32) = 2080;
    v27(v77, v78, v34);
    sub_1C75506EC();
    v48 = *(v33 + 8);
    v49 = v34;
    v28 = v79;
    (v48)(v78, v49);
    v50 = OUTLINED_FUNCTION_66_2();
    v53 = sub_1C6F765A4(v50, v51, v52);

    *(v35 + 34) = v53;
    _os_log_impl(&dword_1C6F5C000, v29, v30, "Generating asset curation for chapter %{sensitive}s with bindings: %{sensitive}s, locale: %s, and sampling parameters: %s", v35, 0x2Au);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
    v54 = *(v0 + 856);

    v48 = *(v54 + 8);
    v55 = OUTLINED_FUNCTION_66_2();
    v48(v55);
    OUTLINED_FUNCTION_0_91();
    sub_1C71A8268(v32, v56);
  }

  *(v0 + 920) = v48;
  v57 = *(v0 + 904);
  v58 = *(v0 + 728);
  v59 = *(*(v0 + 888) + 44);
  v60 = sub_1C754E15C();
  OUTLINED_FUNCTION_12();
  (*(v61 + 16))(v58, v57 + v59, v60);
  __swift_storeEnumTagSinglePayload(v58, 0, 1, v60);
  v62 = swift_task_alloc();
  *(v0 + 928) = v62;
  *v62 = v0;
  v62[1] = sub_1C71A44C4;
  v63 = OUTLINED_FUNCTION_61_3(*(v0 + 752));

  return sub_1C71A4F00(v63, v64, v65, v28, v66, v67);
}

uint64_t sub_1C71A44C4()
{
  OUTLINED_FUNCTION_49_0();
  v2 = *v1;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_40();
  *v6 = v5;
  *(v8 + 936) = v7;
  *(v8 + 944) = v0;

  sub_1C6FB5FC8(*(v2 + 728), &qword_1EC214DF8, &qword_1C755BFD0);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C71A4600()
{
  v1 = v0[98];
  v2 = v0[97];
  v3 = v0[96];
  v4 = v0[88];
  (*(v0[93] + 8))(v0[94], v0[92]);
  OUTLINED_FUNCTION_70(v4, v4[3]);
  sub_1C754F1AC();
  (*(v2 + 8))(v1, v3);
  v5 = OUTLINED_FUNCTION_57_0();
  v6(v5);
  memcpy(v0 + 44, v0 + 2, 0xA8uLL);
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  v0[119] = v7;
  *v7 = v8;
  v7[1] = sub_1C71A4758;

  return sub_1C71A61D0();
}

uint64_t sub_1C71A4758()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 960) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C71A4860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_75_0();
  v27 = v26[118];
  v61 = v26[115];
  v63 = v26[113];
  v57 = v26[106];
  v58 = v26[110];
  v53 = v26[104];
  v54 = v26[105];
  v28 = v26[103];
  v55 = v26[102];
  v56 = v26[107];
  v29 = v26[100];
  v51 = v26[99];
  v52 = v26[101];
  v30 = v26[98];
  v31 = v26[97];
  v50 = v26[96];
  v59 = v26[89];
  v32 = v26[88];
  v33 = (v26[90] + v26[114]);
  (*(v26[93] + 8))(v26[94], v26[92]);
  OUTLINED_FUNCTION_70(v32, v32[3]);
  sub_1C754F1AC();
  (*(v31 + 8))(v30, v50);
  (*(v29 + 8))(v52, v51);
  swift_willThrow();
  v34 = v33[4];
  OUTLINED_FUNCTION_70(v33, v33[3]);
  HIBYTE(a22) = 4;
  v35 = *(v34 + 16);
  v36 = v27;
  OUTLINED_FUNCTION_52_15();
  v35();

  v37 = *(v28 + 8);
  v37(v53, v55);
  v37(v54, v55);
  v61(v58, v57);
  OUTLINED_FUNCTION_0_91();
  sub_1C71A8268(v63, v38);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v39 + 8))(v59);
  OUTLINED_FUNCTION_10_42();
  v60 = v26[94];
  v62 = v26[91];
  v64 = v40;

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_130_0();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, v50, v51, v52, "memoryCreation.Storyteller", v53, v54, v55, v56, v57, v58, v60, v62, v64, a22, a23, a24, a25, a26);
}

uint64_t sub_1C71A4B1C()
{
  v1 = *(v0 + 904);
  v18 = *(v0 + 920);
  v16 = *(v0 + 848);
  v17 = *(v0 + 880);
  v2 = *(v0 + 840);
  v3 = *(v0 + 832);
  v4 = *(v0 + 824);
  v5 = *(v0 + 816);
  v6 = *(v0 + 688);
  v7 = (*(v0 + 720) + *(v0 + 912));
  v8 = *(v0 + 680);
  v9 = *(v0 + 648);
  v10 = *(v0 + 664);
  *v6 = *(v0 + 640);
  *(v6 + 8) = v9;
  *(v6 + 24) = v10;
  *(v6 + 40) = v8;
  OUTLINED_FUNCTION_70(v7, v7[3]);
  OUTLINED_FUNCTION_52_15();
  v11();
  v12 = *(v4 + 8);
  v12(v3, v5);
  v12(v2, v5);
  v18(v17, v16);
  OUTLINED_FUNCTION_0_91();
  sub_1C71A8268(v1, v13);

  OUTLINED_FUNCTION_43();

  return v14();
}

uint64_t sub_1C71A4D30()
{
  v12 = v0[115];
  v13 = v0[113];
  v10 = v0[106];
  v11 = v0[110];
  v1 = v0[103];
  v2 = (v0[90] + v0[114]);
  OUTLINED_FUNCTION_70(v2, v2[3]);
  OUTLINED_FUNCTION_52_15();
  v3();
  v4 = *(v1 + 8);
  v5 = OUTLINED_FUNCTION_98_1();
  v4(v5);
  v6 = OUTLINED_FUNCTION_291();
  v4(v6);
  v12(v11, v10);
  OUTLINED_FUNCTION_0_91();
  sub_1C71A8268(v13, v7);
  OUTLINED_FUNCTION_10_42();

  OUTLINED_FUNCTION_43();

  return v8();
}

uint64_t sub_1C71A4F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v6[29] = a5;
  v6[30] = a6;
  v6[27] = a3;
  v6[28] = a4;
  v6[25] = a1;
  v6[26] = a2;
  v6[31] = *a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E00, &unk_1C755BFE0);
  v6[32] = v7;
  v6[33] = *(v7 - 8);
  v6[34] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E08, &unk_1C7574220);
  v6[35] = swift_task_alloc();
  v6[36] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E10, &unk_1C755BFF0);
  v6[37] = swift_task_alloc();
  v8 = sub_1C754EECC();
  v6[38] = v8;
  v6[39] = *(v8 - 8);
  v6[40] = swift_task_alloc();
  v9 = sub_1C754EEEC();
  v6[41] = v9;
  v6[42] = *(v9 - 8);
  v6[43] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E18, &unk_1C7574230);
  v6[44] = swift_task_alloc();
  v10 = sub_1C754FD9C();
  v6[45] = v10;
  v6[46] = *(v10 - 8);
  v6[47] = swift_task_alloc();
  v6[48] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E20, &unk_1C755C000);
  v6[49] = v11;
  v6[50] = *(v11 - 8);
  v6[51] = swift_task_alloc();
  v12 = sub_1C755029C();
  v6[52] = v12;
  v6[53] = *(v12 - 8);
  v6[54] = swift_task_alloc();
  v6[55] = swift_task_alloc();
  v6[56] = swift_task_alloc();
  v6[57] = swift_task_alloc();
  v6[58] = swift_task_alloc();
  v6[59] = swift_task_alloc();
  v6[60] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C71A52D4, 0, 0);
}

uint64_t sub_1C71A52D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_75_0();
  v59 = *(v26 + 472);
  v60 = *(v26 + 480);
  v27 = *(v26 + 448);
  v29 = *(v26 + 424);
  v28 = *(v26 + 432);
  v30 = *(v26 + 416);
  v56 = *(v26 + 408);
  v53 = *(v26 + 456);
  v54 = *(v26 + 400);
  v57 = *(v26 + 392);
  v58 = *(v26 + 464);
  v62 = *(v26 + 384);
  v55 = *(v26 + 232);
  v52 = *(v26 + 224);
  v61 = *(v26 + 352);
  v31 = *(v26 + 200);
  *(swift_task_alloc() + 16) = v31;
  sub_1C75502AC();

  sub_1C755028C();
  v32 = *(v29 + 8);
  *(v26 + 488) = v32;
  *(v26 + 496) = (v29 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v32(v28, v30);
  sub_1C754DF8C();
  *(v26 + 504) = sub_1C71A82D8(&qword_1EDD06CA8, MEMORY[0x1E69C61F8], MEMORY[0x1E69C61F0]);
  OUTLINED_FUNCTION_82();
  sub_1C75503AC();

  v33 = OUTLINED_FUNCTION_98_1();
  (v32)(v33);
  sub_1C70BFEC0();
  sub_1C75503DC();

  v32(v27, v30);
  *(v26 + 512) = sub_1C754E72C();
  OUTLINED_FUNCTION_12();
  v35 = *(v34 + 16);
  *(v26 + 520) = v35;
  *(v26 + 528) = (v34 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v35(v56, v55);
  *(v26 + 600) = *MEMORY[0x1E69A1370];
  v36 = *(v54 + 104);
  *(v26 + 536) = v36;
  *(v26 + 544) = (v54 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v36(v56);
  sub_1C75503BC();
  v37 = *(v54 + 8);
  *(v26 + 552) = v37;
  *(v26 + 560) = (v54 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v37(v56, v57);
  v38 = OUTLINED_FUNCTION_98_1();
  (v32)(v38);
  sub_1C755037C();
  v39 = OUTLINED_FUNCTION_291();
  (v32)(v39);
  sub_1C755038C();
  v32(v59, v30);
  v40 = sub_1C754FD8C();
  __swift_storeEnumTagSinglePayload(v61, 1, 1, v40);
  sub_1C754FD7C();
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v26 + 568) = v41;
  *v41 = v42;
  v41[1] = sub_1C71A5670;
  OUTLINED_FUNCTION_52_15();
  OUTLINED_FUNCTION_130_0();

  return MEMORY[0x1EEE0B310](v43, v44, v45, v46, v47, v48, v49, v50, a9, v32, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, " with description: ", v62, a23, a24, a25, a26);
}

uint64_t sub_1C71A5670()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 576) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C71A576C()
{
  v1 = *(v0 + 280);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E28, &unk_1C7574240);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_1C6FB5FC8(v1, &qword_1EC214E08, &unk_1C7574220);
  }

  else
  {
    v40 = *(v0 + 552);
    v39 = *(v0 + 536);
    v38 = *(v0 + 600);
    v37 = *(v0 + 520);
    v36 = *(v0 + 512);
    v47 = *(v0 + 488);
    v42 = *(v0 + 472);
    v43 = *(v0 + 480);
    v45 = *(v0 + 416);
    v46 = *(v0 + 424);
    v34 = *(v0 + 408);
    v35 = *(v0 + 392);
    v48 = *(v0 + 344);
    v44 = *(v0 + 336);
    v3 = *(v0 + 328);
    v32 = *(v0 + 320);
    v4 = *(v0 + 304);
    v5 = *(v0 + 312);
    v7 = *(v0 + 288);
    v6 = *(v0 + 296);
    v33 = *(v0 + 232);
    v41 = *(v0 + 200);
    v30 = *(v7 + 48);
    v31 = *(v2 + 48);
    v8 = *(v44 + 32);
    v8(v6, v1, v3);
    v9 = *(v5 + 32);
    v9(v6 + v30, v1 + v31, v4);
    v10 = *(v7 + 48);
    v8(v48, v6, v3);
    v9(v32, v6 + v10, v4);
    sub_1C754EEBC();
    v11 = OUTLINED_FUNCTION_457();
    v12(v11);
    v13 = OUTLINED_FUNCTION_57_0();
    v14(v13);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E30, &unk_1C755C010);
    sub_1C75504DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E38, &qword_1C756D840);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C755BAB0;
    *(inited + 32) = 0xD00000000000004FLL;
    *(inited + 40) = 0x80000001C75973D0;
    v37(v34, v33, v36);
    v39(v34, v38, v35);
    *(inited + 72) = v36;
    __swift_allocate_boxed_opaque_existential_0((inited + 48));
    sub_1C754EBEC();
    v16 = OUTLINED_FUNCTION_57_0();
    v40(v16);
    OUTLINED_FUNCTION_82();
    sub_1C75504DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E40, &unk_1C755C020);
    v17 = swift_initStackObject();
    *(v17 + 16) = xmmword_1C755BAB0;
    strcpy((v17 + 32), "promptTemplate");
    *(v17 + 47) = -18;
    v18 = sub_1C754FA7C();
    *(v17 + 72) = v18;
    *(v17 + 80) = sub_1C71A82D8(&qword_1EDD06CB0, MEMORY[0x1E69A14E8], MEMORY[0x1E69A14B8]);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v17 + 48));
    (*(*(v18 - 8) + 16))(boxed_opaque_existential_0, v41, v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E48, &qword_1C7574250);
    OUTLINED_FUNCTION_82();
    sub_1C75504DC();
    sub_1C754EEAC();

    (*(v5 + 8))(v32, v4);
    (*(v44 + 8))(v48, v3);
    v47(v43, v45);
    (*(v46 + 32))(v43, v42, v45);
  }

  v20 = *(v0 + 488);
  v21 = *(v0 + 472);
  v22 = *(v0 + 416);
  v23 = *(v0 + 240);
  sub_1C755039C();
  *(v0 + 192) = v23;
  sub_1C75503CC();
  v20(v21, v22);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
  v25 = swift_task_alloc();
  *(v0 + 584) = v25;
  v26 = sub_1C71A82D8(&qword_1EDD0CB38, MEMORY[0x1E69DA470], MEMORY[0x1E69DA460]);
  v27 = sub_1C6FF60E4(&qword_1EDD06AB0, MEMORY[0x1E69A0EB0], MEMORY[0x1E69A0EB8]);
  *v25 = v0;
  v25[1] = sub_1C71A5D5C;
  v28 = *(v0 + 256);

  return MEMORY[0x1EEE0A3A0](v0 + 184, v24, v24, v28, v24, v26, v27);
}

uint64_t sub_1C71A5D5C()
{
  OUTLINED_FUNCTION_49_0();
  v2 = *v1;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 592) = v0;

  (*(v2[33] + 8))(v2[34], v2[32]);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C71A5EB4(uint64_t a1)
{
  v1 = sub_1C755029C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C754FA7C();
  sub_1C71A82D8(&qword_1EDD06CB0, MEMORY[0x1E69A14E8], MEMORY[0x1E69A14B8]);
  sub_1C75502CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E50, &qword_1C755C030);
  v5 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C755BAB0;
  (*(v2 + 16))(v6 + v5, v4, v1);
  MEMORY[0x1CCA5C7D0](v6);

  return (*(v2 + 8))(v4, v1);
}

void sub_1C71A606C(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v6 = *(a3 + 48);
  sub_1C75504FC();
  swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a1 + 64);
  v8 = sub_1C6FC296C();
  if (__OFADD__(*(v7 + 16), (v9 & 1) == 0))
  {
    __break(1u);
    goto LABEL_9;
  }

  v10 = v8;
  v11 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C58, &qword_1C755BDD0);
  if (sub_1C7551A2C())
  {
    v12 = sub_1C6FC296C();
    if ((v11 & 1) == (v13 & 1))
    {
      v10 = v12;
      goto LABEL_5;
    }

LABEL_9:
    sub_1C7551E4C();
    __break(1u);
    return;
  }

LABEL_5:
  *(a1 + 64) = v7;
  if ((v11 & 1) == 0)
  {
    sub_1C6FCABDC();
  }

  v14 = *(v7 + 56) + 8 * v10;
  sub_1C6FB0734();
  v15 = *(*v14 + 16);
  sub_1C6FB0FE8(v15, v16, v17, v18, v19, v20, v21);
  v22 = *v14;
  *(v22 + 16) = v15 + 1;
  v23 = v22 + 72 * v15;
  *(v23 + 32) = v6;
  v24 = a4[1];
  *(v23 + 40) = *a4;
  *(v23 + 56) = v24;
  *(v23 + 72) = a4[2];
  *(v23 + 81) = *(a4 + 41);
}

uint64_t sub_1C71A61D0()
{
  OUTLINED_FUNCTION_42();
  v2 = v0;
  v4 = v3;
  v1[76] = v2;
  v1[75] = v5;
  v1[74] = v6;
  v1[73] = v7;
  v1[72] = v8;
  v1[77] = *v2;
  v9 = sub_1C754F38C();
  v1[78] = v9;
  OUTLINED_FUNCTION_18(v9);
  v1[79] = v10;
  v1[80] = swift_task_alloc();
  memcpy(v1 + 28, v4, 0xA8uLL);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C71A6CC4()
{
  OUTLINED_FUNCTION_49_0();
  v1 = v0[87];
  v0[92] = sub_1C70CE7C8(v0[90], v2, v3, v4, v5, v6, v7);
  v0[93] = v1;

  if (v1)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

void sub_1C71A6D74()
{
  v87 = v0;
  v1 = v0;
  v82 = v0 + 70;
  v2 = v0[92];
  sub_1C75504FC();
  sub_1C75504FC();
  v3 = sub_1C754FEEC();
  v4 = sub_1C75511BC();

  v84 = v0;
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[92];
    v6 = v0[82];
    v7 = v0[81];
    OUTLINED_FUNCTION_23_1();
    *&__dst[0] = OUTLINED_FUNCTION_60_11();
    *v2 = 136643075;
    v8 = v7;
    v1 = v0;
    *(v2 + 4) = sub_1C6F765A4(v8, v6, __dst);
    *(v2 + 12) = 2080;
    v9 = MEMORY[0x1CCA5D090](v5, MEMORY[0x1E69E6158]);
    v11 = sub_1C6F765A4(v9, v10, __dst);

    *(v2 + 14) = v11;
    OUTLINED_FUNCTION_8_1();
    _os_log_impl(v12, v13, v14, v15, v16, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  v17 = v1[89];
  v18 = v1[88];
  v78 = *(v1[86] + 16);
  v79 = *(v1[92] + 16);
  sub_1C75504FC();

  v77 = *(v17 + 16);

  v83 = *(v18 + 16);
  v19 = v1[93];
  sub_1C75504FC();
  v24 = 0;
  v25 = v18 + 72;
  v80 = v18 + 72;
  v81 = MEMORY[0x1E69E7CC0];
LABEL_4:
  v26 = (v25 + 48 * v24);
  while (v83 != v24)
  {
    if (v24 >= *(v1[88] + 16))
    {
      __break(1u);
      return;
    }

    v85 = v24;
    v27 = *(v26 - 5);
    v28 = *(v26 - 4);
    v29 = *(v26 - 3);
    v30 = *(v26 - 2);
    v32 = *(v26 - 1);
    v31 = *v26;
    v1[70] = v27;
    v1[71] = v28;
    *(swift_task_alloc() + 16) = v82;
    swift_bridgeObjectRetain_n();
    sub_1C75504FC();
    sub_1C75504FC();
    v33 = sub_1C70735F4();

    if (v33)
    {
      v34 = v81;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&__dst[0] = v81;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v36 = OUTLINED_FUNCTION_99();
        sub_1C716DEF8(v36, v37, v38);
        v34 = *&__dst[0];
      }

      v39 = v85;
      v40 = v29;
      v41 = v32;
      v43 = *(v34 + 16);
      v42 = *(v34 + 24);
      if (v43 >= v42 >> 1)
      {
        v45 = OUTLINED_FUNCTION_15(v42);
        sub_1C716DEF8(v45, v43 + 1, 1);
        v41 = v32;
        v40 = v29;
        v39 = v85;
        v34 = *&__dst[0];
      }

      v24 = v39 + 1;
      *(v34 + 16) = v43 + 1;
      v81 = v34;
      v44 = (v34 + 48 * v43);
      v44[4] = v27;
      v44[5] = v28;
      v44[6] = v40;
      v44[7] = v30;
      v44[8] = v41;
      v44[9] = v31;
      v1 = v84;
      v25 = v80;
      goto LABEL_4;
    }

    v26 += 6;
    v1 = v84;
    v24 = v85 + 1;
  }

  v46 = *(v81 + 16);
  if (v46)
  {
    *&__dst[0] = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C(0, v46, 0, v20, v21, v22, v23);
    v47 = 0;
    v48 = *&__dst[0];
    v49 = *(*&__dst[0] + 16);
    v50 = 16 * v49;
    do
    {
      v51 = *(v81 + v47 + 64);
      v52 = *(v81 + v47 + 72);
      *&__dst[0] = v48;
      v53 = *(v48 + 24);
      v54 = v49 + 1;
      sub_1C75504FC();
      if (v49 >= v53 >> 1)
      {
        sub_1C6F7ED9C(v53 > 1, v54, 1, v55, v56, v57, v58);
        v48 = *&__dst[0];
      }

      *(v48 + 16) = v54;
      v59 = v48 + v50;
      *(v59 + 32) = v51;
      *(v59 + 40) = v52;
      v50 += 16;
      v47 += 48;
      ++v49;
      --v46;
    }

    while (v46);

    v1 = v84;
  }

  else
  {

    v48 = MEMORY[0x1E69E7CC0];
  }

  v60 = v1[92];
  v61 = v1[73];
  memcpy(v1 + 2, v1 + 28, 0xA8uLL);
  v1[23] = v61;
  v1[24] = v60;
  v1[26] = 0;
  v1[27] = 0;
  v1[25] = v48;
  memcpy(__dst, v1 + 2, 0xD0uLL);
  sub_1C75504FC();
  sub_1C6FC1764((v1 + 28), (v1 + 49));
  sub_1C6FC11CC(__dst);
  sub_1C754F2EC();
  if (v19)
  {
    v62 = v1[85];
    sub_1C71A81B0((v1 + 2));

    v63 = OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_0_22(v63, v64);
    sub_1C754F1AC();
    v65 = OUTLINED_FUNCTION_457();
    v66(v65);

    OUTLINED_FUNCTION_6_0();
  }

  else
  {
    v68 = v1[92];
    v69 = v1[85];
    v70 = v1[84];
    v71 = v1[74];
    v72 = v1[73];
    v73 = v1;
    v74 = v1[72];

    sub_1C71A81B0((v73 + 2));
    *v74 = v68;
    v74[1] = v79;
    v74[2] = v70;
    v74[3] = v78;
    v74[4] = v77;
    v74[5] = v72;
    OUTLINED_FUNCTION_12_2(v71);
    sub_1C754F1AC();
    v75 = OUTLINED_FUNCTION_57_0();
    v76(v75);

    OUTLINED_FUNCTION_43();
  }

  v67();
}

uint64_t sub_1C71A730C()
{
  v1 = *(v0 + 600);

  v2 = OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_0_22(v2, v3);
  sub_1C754F1AC();
  v4 = OUTLINED_FUNCTION_57_0();
  v5(v4);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v6 + 8))(v1);

  OUTLINED_FUNCTION_43();

  return v7();
}

uint64_t sub_1C71A73F8(void *a1, void *a2)
{
  v4 = sub_1C754DC0C();
  v13 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C755114C();

  sub_1C71A82D8(&qword_1EDD0CBE0, MEMORY[0x1E6968EB0], MEMORY[0x1E6968EB8]);
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1C755150C();
    if (!v15)
    {
      break;
    }

    sub_1C6F9ED18(&v14, &v16);
    __swift_project_boxed_opaque_existential_1(&v16, v17);
    v8 = [a2 countForObject_];
    swift_unknownObjectRelease();
    if (v8 <= 1)
    {
      __swift_destroy_boxed_opaque_existential_1(&v16);
    }

    else
    {
      sub_1C6F9ED18(&v16, &v14);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = v7;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C716D6A4(0, *(v7 + 16) + 1, 1);
        v7 = v18;
      }

      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1C716D6A4(v10 > 1, v11 + 1, 1);
        v7 = v18;
      }

      *(v7 + 16) = v11 + 1;
      sub_1C6F9ED18(&v14, (v7 + 32 * v11 + 32));
    }
  }

  (*(v13 + 8))(v6, v4);
  sub_1C6FB5FC8(&v14, &qword_1EC219770, &unk_1C755C740);

  return v7;
}

uint64_t static FreeformStoryChapterCurator.removeDupesAnd(hallucinatedIDs:from:)(uint64_t a1)
{
  v6 = MEMORY[0x1E69E7CD0];
  sub_1C75504FC();
  v2 = sub_1C75504FC();
  sub_1C719EBA0(v2, a1, &v6);
  v4 = v3;

  return v4;
}

void sub_1C71A76AC(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, void *a6@<X8>)
{
  v6 = a6;
  v7 = *(a1 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v38 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C(0, v7, 0, a2, a3, a4, a5);
    v8 = v38;
    v11 = sub_1C70D4544();
    v12 = a1 + 64;
    v13 = v7 - 1;
    if ((v11 & 0x8000000000000000) == 0)
    {
      while (v11 < 1 << *(a1 + 32))
      {
        if ((*(v12 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
        {
          goto LABEL_17;
        }

        if (v10 != *(a1 + 36))
        {
          goto LABEL_18;
        }

        v33 = v13;
        v34 = v10;
        v14 = (*(a1 + 48) + 16 * v11);
        v15 = *v14;
        v16 = v14[1];
        sub_1C6FB5E28(*(a1 + 56) + 40 * v11, v37);
        v35[0] = v15;
        v35[1] = v16;
        sub_1C6F699F8(v37, &v36);
        sub_1C75504FC();
        v17 = OUTLINED_FUNCTION_90();
        v20 = sub_1C71A78EC(v17, v18, v19);
        v22 = v21;
        sub_1C6FB5FC8(v35, &qword_1EC2181B8, &unk_1C7570F90);
        v38 = v8;
        v24 = *(v8 + 16);
        v23 = *(v8 + 24);
        if (v24 >= v23 >> 1)
        {
          v27 = OUTLINED_FUNCTION_15(v23);
          sub_1C6F7ED9C(v27, v24 + 1, 1, v28, v29, v30, v31);
          v8 = v38;
        }

        *(v8 + 16) = v24 + 1;
        v25 = v8 + 16 * v24;
        *(v25 + 32) = v20;
        *(v25 + 40) = v22;
        if (v11 >= -(-1 << *(a1 + 32)))
        {
          goto LABEL_19;
        }

        v12 = a1 + 64;
        if ((*(a1 + 64 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
        {
          goto LABEL_20;
        }

        if (v34 != *(a1 + 36))
        {
          goto LABEL_21;
        }

        v26 = sub_1C755162C();
        if (!v33)
        {
          v6 = a6;
          goto LABEL_15;
        }

        v11 = v26;
        v10 = *(a1 + 36);
        v13 = v33 - 1;
        if (v26 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
LABEL_15:
    v6[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    v6[4] = sub_1C6FF60E4(&qword_1EDD0CF60, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    *v6 = v8;
  }
}

uint64_t sub_1C71A78EC(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1C755180C();
  sub_1C75504FC();

  v16 = a1;
  MEMORY[0x1CCA5CD70](8250, 0xE200000000000000);
  v5 = a3[3];
  v6 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v5);
  v7 = (*(v6 + 16))(v5, v6);
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v7 = 0x64656D616E6E55;
    v9 = 0xE700000000000000;
  }

  MEMORY[0x1CCA5CD70](v7, v9);

  MEMORY[0x1CCA5CD70](0x776F64616873202CLL, 0xEF203A656D616E20);
  v10 = a3[3];
  v11 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v10);
  v12 = (*(v11 + 24))(v10, v11);
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v12 = 0x6F64616873206F4ELL;
    v14 = 0xEE00656D616E2077;
  }

  MEMORY[0x1CCA5CD70](v12, v14);

  return v16;
}

uint64_t FreeformStoryChapterCurator.deinit()
{
  v1 = OBJC_IVAR____TtC18PhotosIntelligence27FreeformStoryChapterCurator_logger;
  sub_1C754FF1C();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v0 + v1);
  memcpy(__dst, (v0 + OBJC_IVAR____TtC18PhotosIntelligence27FreeformStoryChapterCurator_storyElements), 0x130uLL);
  sub_1C6FE0DC0(__dst);

  v3 = *(v0 + OBJC_IVAR____TtC18PhotosIntelligence27FreeformStoryChapterCurator_storyPhotoLibraryContext);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18PhotosIntelligence27FreeformStoryChapterCurator_storyAssetsFetcher));
  sub_1C71A8268(v0 + OBJC_IVAR____TtC18PhotosIntelligence27FreeformStoryChapterCurator_assetRichDescriptionsGenerator, type metadata accessor for AssetRichDescriptionsGenerator);

  sub_1C71A8268(v0 + OBJC_IVAR____TtC18PhotosIntelligence27FreeformStoryChapterCurator_assetCurationDiagnosticsGenerator, type metadata accessor for AssetCurationDiagnosticsGenerator);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18PhotosIntelligence27FreeformStoryChapterCurator_aiEventReporting));
  return v0;
}

uint64_t FreeformStoryChapterCurator.__deallocating_deinit()
{
  FreeformStoryChapterCurator.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1C71A7C1C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return 106;
  }

  else
  {
    return 105;
  }
}

uint64_t sub_1C71A7C2C@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E698C2B0];
  sub_1C754F8AC();
  OUTLINED_FUNCTION_12();
  v5 = *(v4 + 104);

  return v5(a1, v2, v3);
}

void sub_1C71A7C9C()
{
  sub_1C71A8124();

  JUMPOUT(0x1CCA5BE40);
}

uint64_t sub_1C71A7CD8(uint64_t *a1, int a2)
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

uint64_t sub_1C71A7D18(uint64_t result, int a2, int a3)
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

uint64_t type metadata accessor for FreeformStoryChapterCurator(uint64_t a1)
{
  result = qword_1EDD08E50;
  if (!qword_1EDD08E50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C71A7DC8(uint64_t a1)
{
  result = sub_1C754FF1C();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for AssetRichDescriptionsGenerator(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for AssetCurationDiagnosticsGenerator(319);
      if (v4 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_1C71A7F7C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C71A7FBC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_1C71A8020()
{
  result = qword_1EC218898;
  if (!qword_1EC218898)
  {
    result = swift_getWitnessTable(byte_1C7574088, &type metadata for FreeformStoryChapterCurator.Error, v0, v1);
    atomic_store(result, &qword_1EC218898);
  }

  return result;
}

unint64_t sub_1C71A8078()
{
  result = qword_1EC2188A0;
  if (!qword_1EC2188A0)
  {
    result = swift_getWitnessTable(byte_1C75740C8, &type metadata for FreeformStoryChapterCurator.Error, v0, v1);
    atomic_store(result, &qword_1EC2188A0);
  }

  return result;
}

unint64_t sub_1C71A80D0()
{
  result = qword_1EC2188A8;
  if (!qword_1EC2188A8)
  {
    result = swift_getWitnessTable(byte_1C7574060, &type metadata for FreeformStoryChapterCurator.Error, v0, v1);
    atomic_store(result, &qword_1EC2188A8);
  }

  return result;
}

unint64_t sub_1C71A8124()
{
  result = qword_1EC2188B0;
  if (!qword_1EC2188B0)
  {
    result = swift_getWitnessTable(byte_1C7574110, &type metadata for FreeformStoryChapterCurator.Error, v0, v1);
    atomic_store(result, &qword_1EC2188B0);
  }

  return result;
}

uint64_t sub_1C71A8204(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LLMConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}