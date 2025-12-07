char *sub_22314C6A8(char *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = a4[3];
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059910, &qword_22320D320);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      OUTLINED_FUNCTION_9_11(v11);
      if (v5)
      {
LABEL_13:
        sub_223184234(a4 + 4, v8, (v10 + 32));
        a4[2] = 0;
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

uint64_t sub_22314C798(uint64_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = a4[3];
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058A58, &qword_223214500);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      OUTLINED_FUNCTION_9_11(v11);
      if (v5)
      {
LABEL_13:
        sub_223184234(a4 + 4, v8, (v10 + 32));
        a4[2] = 0;
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

    memcpy((v10 + 32), a4 + 4, 16 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_22314C880(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_22314C97C()
{
  result = qword_27D0589C8;
  if (!qword_27D0589C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0589C8);
  }

  return result;
}

unint64_t sub_22314C9D0()
{
  result = qword_27D0589D8;
  if (!qword_27D0589D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0589D0, &qword_22320D048);
    sub_22314CCE0(&qword_27D0589E0, &qword_27D0589E8, &protocol conformance descriptor for NLParseResponse, MEMORY[0x277D84F58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0589D8);
  }

  return result;
}

unint64_t sub_22314CA94()
{
  result = qword_27D0589F0;
  if (!qword_27D0589F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0589F0);
  }

  return result;
}

unint64_t sub_22314CAE8()
{
  result = qword_27D058A00;
  if (!qword_27D058A00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0589F8, &unk_22320D050);
    sub_22314CBA4(&qword_27D057B18, sub_2230FB7A0, MEMORY[0x277D83978]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058A00);
  }

  return result;
}

uint64_t sub_22314CBA4(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D057B10, &qword_2232063C0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22314CC1C()
{
  result = qword_280FCA508;
  if (!qword_280FCA508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0589D0, &qword_22320D048);
    sub_22314CCE0(&qword_280FCABA8, qword_280FCABC0, &protocol conformance descriptor for NLParseResponse, MEMORY[0x277D84F40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCA508);
  }

  return result;
}

uint64_t sub_22314CCE0(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0589B0, &qword_22320D030);
    sub_22314CD7C(a2, type metadata accessor for NLParseResponse, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22314CD7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_22314CDC4()
{
  result = qword_280FCA4F8;
  if (!qword_280FCA4F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0589F8, &unk_22320D050);
    sub_22314CBA4(&qword_280FCA4C8, sub_2230D7754, MEMORY[0x277D83948]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCA4F8);
  }

  return result;
}

unint64_t sub_22314CE84()
{
  result = qword_27D058A20;
  if (!qword_27D058A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058A20);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MUXNLTRPCandidateMessage.MUXNLTRPCandidateMessageError(_BYTE *result, int a2, int a3)
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

uint64_t sub_22314D190(uint64_t a1)
{
  sub_2230D525C(319, &qword_280FCB0A8, &type metadata for MessageSource);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8, MEMORY[0x277D837D0]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_2230F6D30(319);
      if (v7 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_223110900(319, &qword_280FCA500, &qword_27D0589D0, &qword_22320D048);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          sub_223110900(319, &qword_280FCA4F0, &qword_27D058A38, &qword_22320D1C0);
          v2 = v10;
          if (v11 <= 0x3F)
          {
            sub_2230D525C(319, &qword_280FCA740, &type metadata for UserID);
            v2 = v12;
            if (v13 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v2;
}

_BYTE *storeEnumTagSinglePayload for MUXNLTRPCandidateMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22314D3E0()
{
  result = qword_27D058A40;
  if (!qword_27D058A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058A40);
  }

  return result;
}

unint64_t sub_22314D438()
{
  result = qword_27D058A48;
  if (!qword_27D058A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058A48);
  }

  return result;
}

unint64_t sub_22314D490()
{
  result = qword_27D058A50;
  if (!qword_27D058A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058A50);
  }

  return result;
}

void *sub_22314D4E8(int64_t a1, char a2)
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

    result = sub_22314C4A8(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

void *MUXResultCandidateAcceptanceMessage.init(from:)(void *a1)
{
  sub_2230F7158(a1, v4);
  v2 = ResultSelectedMessageBase.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

id MUXResultCandidateAcceptanceMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MUXResultCandidateAcceptanceMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for MUXResultCandidateAcceptanceMessage(uint64_t a1)
{
  result = qword_27D058A70;
  if (!qword_27D058A70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22314D700(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000223221290 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2232006B4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22314D7A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22314D700(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22314D7CC(uint64_t a1)
{
  v2 = sub_22314EAD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22314D808(uint64_t a1)
{
  v2 = sub_22314EAD8();

  return MEMORY[0x2821FE720](a1, v2);
}

id MUXResultSelectedMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return MUXResultSelectedMessage.init(build:)(v1);
}

id MUXResultSelectedMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  v56 = v1;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v50 - v4;
  v6 = sub_2231FFDA4();
  OUTLINED_FUNCTION_9();
  v52 = v7;
  MEMORY[0x28223BE20](v8);
  v53 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MUXResultSelectedMessage.Builder(0);
  v11 = (v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v13 = 15;
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  v14 = v11[8];
  v54 = v6;
  __swift_storeEnumTagSinglePayload(&v13[v14], 1, 1, v6);
  v15 = &v13[v11[9]];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = &v13[v11[10]];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = v11[11];
  v13[v17] = 2;
  v18 = &v13[v11[12]];
  *v18 = 0;
  v18[8] = 1;
  v19 = v11[13];
  *&v13[v19] = 0;
  a1(v13);
  v20 = *v13;
  if (v20 != 15)
  {
    v21 = *(v13 + 2);
    if (v21)
    {
      v22 = *(v13 + 1);
      sub_2230D1480(&v13[v14], v5);
      v23 = v54;
      if (__swift_getEnumTagSinglePayload(v5, 1, v54) == 1)
      {
        sub_2230D69D4(v5);
      }

      else
      {
        v50 = v22;
        v51 = v21;
        v24 = v52;
        v25 = v53;
        v26 = (*(v52 + 32))(v53, v5, v23);
        v27 = *(v15 + 1);
        if (v27)
        {
          v28 = *(v16 + 1);
          if (v28)
          {
            if (v13[v17] != 2)
            {
              v39 = *&v13[v19];
              v40 = v53;
              if (v39)
              {
                *(v56 + OBJC_IVAR____TtC16SiriMessageTypes24MUXResultSelectedMessage_voiceIdScoreCard) = v39;
                MEMORY[0x28223BE20](v26);
                *(&v50 - 80) = v20;
                v41 = v51;
                *(&v50 - 9) = v50;
                *(&v50 - 8) = v41;
                *(&v50 - 7) = v40;
                *(&v50 - 6) = v42;
                *(&v50 - 5) = v27;
                *(&v50 - 4) = v43;
                *(&v50 - 3) = v28;
                *(&v50 - 16) = v44 & 1;
                *(&v50 - 1) = v13;
                v46 = v45;

                v37 = ResultSelectedMessageBase.init(build:)(sub_22314EA90);
                v47 = v37;

                if (v37)
                {

                  v48 = *(v52 + 8);
                  v49 = v47;
                  v48(v40, v54);
                  sub_22314DDE4(v13);
                }

                else
                {
                  (*(v52 + 8))(v40, v54);
                  sub_22314DDE4(v13);
                }

                return v37;
              }
            }
          }

          (*(v24 + 8))(v53, v23);
        }

        else
        {
          (*(v24 + 8))(v25, v23);
        }
      }
    }
  }

  if (qword_280FCA778 != -1)
  {
    swift_once();
  }

  v29 = sub_223200014();
  __swift_project_value_buffer(v29, qword_280FCE830);
  v30 = sub_223200004();
  v31 = sub_223200254();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v57 = v33;
    *v32 = 136446210;
    v34 = sub_2230F7898(ObjectType);
    v36 = sub_2231A5D38(v34, v35, &v57);

    *(v32 + 4) = v36;
    _os_log_impl(&dword_2230CE000, v30, v31, "Could not build %{public}s: Builder has missing required fields", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v33);
    MEMORY[0x223DD6780](v33, -1, -1);
    MEMORY[0x223DD6780](v32, -1, -1);
  }

  sub_22314DDE4(v13);
  type metadata accessor for MUXResultSelectedMessage(0);
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_22314DDE4(uint64_t a1)
{
  v2 = type metadata accessor for MUXResultSelectedMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22314DE60(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11)
{
  *a1 = a2;

  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  v18 = type metadata accessor for ResultSelectedMessageBase.Builder(0);
  v19 = v18[6];
  sub_2230D69D4(a1 + v19);
  v20 = sub_2231FFDA4();
  (*(*(v20 - 8) + 16))(a1 + v19, a5, v20);
  __swift_storeEnumTagSinglePayload(a1 + v19, 0, 1, v20);
  v21 = (a1 + v18[7]);

  *v21 = a6;
  v21[1] = a7;
  v22 = (a1 + v18[8]);

  *v22 = a8;
  v22[1] = a9;
  *(a1 + v18[9]) = a10;
  result = type metadata accessor for MUXResultSelectedMessage.Builder(0);
  v24 = (a11 + *(result + 40));
  v25 = *v24;
  LOBYTE(v24) = *(v24 + 8);
  v26 = a1 + v18[10];
  *v26 = v25;
  *(v26 + 8) = v24;
  return result;
}

void *MUXResultSelectedMessage.init(from:)(void *a1)
{
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058A80, &qword_22320D378);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22314EAD8();
  sub_223200794();
  if (!v2)
  {
    sub_2230FB7A0();
    sub_223200554();
    sub_2230FB7F4(0, &qword_27D0576E8, 0x277CCAAC8);
    sub_2230FB7F4(0, &qword_280FCA3C8, 0x277CEF520);
    v8 = sub_223200264();
    v11 = v8;
    if (v8)
    {
      *(v3 + OBJC_IVAR____TtC16SiriMessageTypes24MUXResultSelectedMessage_voiceIdScoreCard) = v8;
      sub_2230F7158(a1, &v15);
      v16 = v11;
      v9 = ResultSelectedMessageBase.init(from:)(&v15);
      v13 = OUTLINED_FUNCTION_2();
      v14(v13);
      OUTLINED_FUNCTION_5_1();

      __swift_destroy_boxed_opaque_existential_1(a1);
      return v9;
    }

    sub_2230F9E38();
    swift_allocError();
    *v12 = 0xD000000000000033;
    *(v12 + 8) = 0x8000000223223760;
    *(v12 + 16) = 0;
    swift_willThrow();
    OUTLINED_FUNCTION_5_1();
    v6 = OUTLINED_FUNCTION_2();
    v7(v6);
  }

  v9 = 0;
  __swift_destroy_boxed_opaque_existential_1(a1);
  type metadata accessor for MUXResultSelectedMessage(0);
  swift_deallocPartialClassInstance();
  return v9;
}

uint64_t sub_22314E30C(void *a1)
{
  v20[2] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058A90, &qword_22320D380);
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v20[-1] - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22314EAD8();
  sub_2232007A4();
  v10 = objc_opt_self();
  v11 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes24MUXResultSelectedMessage_voiceIdScoreCard);
  v20[0] = 0;
  v12 = [v10 archivedDataWithRootObject:v11 requiringSecureCoding:1 error:v20];
  v13 = v20[0];
  if (v12)
  {
    v14 = sub_2231FFD24();
    v16 = v15;

    v20[0] = v14;
    v20[1] = v16;
    sub_2230D7754();
    sub_223200654();
    if (!v2)
    {
      sub_223191F2C(a1);
    }

    (*(v6 + 8))(v9, v4);
    return OUTLINED_FUNCTION_5_1();
  }

  else
  {
    v18 = v13;
    sub_2231FFD04();

    swift_willThrow();
    return (*(v6 + 8))(v9, v4);
  }
}

uint64_t MUXResultSelectedMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t MUXResultSelectedMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t MUXResultSelectedMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MUXResultSelectedMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t MUXResultSelectedMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_3_19() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t MUXResultSelectedMessage.Builder.requestId.getter()
{
  v1 = *(v0 + *(type metadata accessor for MUXResultSelectedMessage.Builder(0) + 28));

  return v1;
}

uint64_t MUXResultSelectedMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for MUXResultSelectedMessage.Builder(0) + 28));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t MUXResultSelectedMessage.Builder.resultCandidateId.getter()
{
  v1 = *(v0 + *(type metadata accessor for MUXResultSelectedMessage.Builder(0) + 32));

  return v1;
}

uint64_t MUXResultSelectedMessage.Builder.resultCandidateId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for MUXResultSelectedMessage.Builder(0) + 32));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t MUXResultSelectedMessage.Builder.isMitigated.setter(char a1)
{
  result = type metadata accessor for MUXResultSelectedMessage.Builder(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t MUXResultSelectedMessage.Builder.endpointMode.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MUXResultSelectedMessage.Builder(0);
  v6 = v2 + *(result + 40);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

void *MUXResultSelectedMessage.Builder.voiceIdScoreCard.getter()
{
  v1 = *(v0 + *(type metadata accessor for MUXResultSelectedMessage.Builder(0) + 44));
  v2 = v1;
  return v1;
}

void MUXResultSelectedMessage.Builder.voiceIdScoreCard.setter()
{
  v2 = *(OUTLINED_FUNCTION_3_19() + 44);

  *(v1 + v2) = v0;
}

id MUXResultSelectedMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MUXResultSelectedMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_22314EAD8()
{
  result = qword_27D058A88;
  if (!qword_27D058A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058A88);
  }

  return result;
}

uint64_t sub_22314EBD0(uint64_t a1)
{
  sub_2230D525C(319, &qword_280FCB0A8, &type metadata for MessageSource);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8, MEMORY[0x277D837D0]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_22314ED48(319, &qword_280FCE678, MEMORY[0x277CC95F0]);
      if (v7 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_2230D525C(319, &qword_280FCA440, MEMORY[0x277D839B0]);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          sub_22314ED48(319, &qword_280FCA3D8, type metadata accessor for AFEndpointMode);
          v2 = v10;
          if (v11 <= 0x3F)
          {
            sub_223110954(319);
            v2 = v12;
            if (v13 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v2;
}

void sub_22314ED48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2232002D4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for MUXResultSelectedMessage.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_22314EE4C()
{
  result = qword_27D058AB8;
  if (!qword_27D058AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058AB8);
  }

  return result;
}

unint64_t sub_22314EEA4()
{
  result = qword_27D058AC0;
  if (!qword_27D058AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058AC0);
  }

  return result;
}

unint64_t sub_22314EEFC()
{
  result = qword_27D058AC8;
  if (!qword_27D058AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058AC8);
  }

  return result;
}

uint64_t MUXServerFallbackMessage.init(from:)(void *a1)
{
  sub_2230F7158(a1, v5);
  ExecuteNLOnServerMessageBase.init(from:)(v5);
  v3 = v2;
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

id MUXServerFallbackMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MUXServerFallbackMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for MUXServerFallbackMessage(uint64_t a1)
{
  result = qword_27D058AD0;
  if (!qword_27D058AD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id MUXSpeechPackageMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return MUXSpeechPackageMessage.init(build:)(v1);
}

id MUXSpeechPackageMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v39 - v5;
  v7 = sub_2231FFDA4();
  OUTLINED_FUNCTION_9();
  v41 = v8;
  MEMORY[0x28223BE20](v9);
  v42 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MUXSpeechPackageMessage.Builder(0);
  v12 = (v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v14 = 15;
  *(v14 + 1) = 0;
  *(v14 + 2) = 0;
  v15 = v12[8];
  __swift_storeEnumTagSinglePayload(&v14[v15], 1, 1, v7);
  v16 = &v14[v12[9]];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = &v14[v12[10]];
  *v17 = 0;
  *(v17 + 1) = 0;
  v18 = v12[11];
  *&v14[v18] = 0;
  a1(v14);
  v19 = *v14;
  if (v19 == 15)
  {
    goto LABEL_12;
  }

  v20 = *(v14 + 2);
  if (!v20)
  {
    goto LABEL_12;
  }

  v40 = *(v14 + 1);
  sub_2230D1480(&v14[v15], v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_2230D69D4(v6);
LABEL_12:
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v30 = sub_223200014();
    __swift_project_value_buffer(v30, qword_280FCE830);
    v31 = sub_223200004();
    v32 = sub_223200254();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v44 = v34;
      *v33 = 136446210;
      v35 = sub_2230F7898(ObjectType);
      v37 = sub_2231A5D38(v35, v36, &v44);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_2230CE000, v31, v32, "Could not build %{public}s: Builder has missing required fields", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x223DD6780](v34, -1, -1);
      MEMORY[0x223DD6780](v33, -1, -1);
    }

    sub_22314F5C4(v14);
    type metadata accessor for MUXSpeechPackageMessage(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v21 = v41;
  (*(v41 + 32))(v42, v6, v7);
  if (!*(v16 + 1) || !*(v17 + 1) || (v22 = *&v14[v18], v23 = v42, !v22))
  {
    (*(v21 + 8))(v42, v7);
    goto LABEL_12;
  }

  *(v2 + OBJC_IVAR____TtC16SiriMessageTypes23MUXSpeechPackageMessage_speechPackageDict) = v22;
  MEMORY[0x28223BE20](v22);
  *(&v39 - 64) = v19;
  *(&v39 - 7) = v40;
  *(&v39 - 6) = v20;
  *(&v39 - 5) = v23;
  *(&v39 - 4) = v24;
  *(&v39 - 3) = v25;
  *(&v39 - 2) = v26;
  *(&v39 - 1) = v27;

  v28 = ResultCandidateRequestMessageBase.init(build:)(sub_2231122E4);
  v29 = v28;
  sub_22314F5C4(v14);
  if (v28)
  {
  }

  (*(v41 + 8))(v23, v7);
  return v28;
}

uint64_t sub_22314F5C4(uint64_t a1)
{
  v2 = type metadata accessor for MUXSpeechPackageMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *MUXSpeechPackageMessage.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058AE0, &unk_22320D548);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223150044();
  sub_223200794();
  if (v2)
  {
    v7 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for MUXSpeechPackageMessage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057AB0, &qword_223206160);
    sub_223110600(&qword_27D057AB8, sub_2231105AC, sub_2230FB7A0, MEMORY[0x277D83528]);
    sub_223200554();
    v6 = sub_22310F3AC(v10[0]);

    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes23MUXSpeechPackageMessage_speechPackageDict) = v6;
    sub_2230F7158(a1, v10);
    v7 = ResultCandidateRequestMessageBase.init(from:)(v10);
    v8 = OUTLINED_FUNCTION_2();
    v9(v8);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v7;
}

uint64_t sub_22314F934(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058AF0, &qword_22320D558);
  OUTLINED_FUNCTION_9();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223150044();
  sub_2232007A4();
  v9 = sub_223110C08();
  if (!v1)
  {
    v11[1] = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057AB0, &qword_223206160);
    sub_223110600(&qword_280FCA538, sub_2230D37F0, sub_2230D7754, MEMORY[0x277D83508]);
    sub_223200654();

    sub_223190B78(a1);
  }

  return (*(v5 + 8))(v8, v3);
}

BOOL sub_22314FB18@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2230EC284(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_22314FB4C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2230EC2CC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_22314FB78@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2230EC284(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22314FBA4(uint64_t a1)
{
  v2 = sub_223150044();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22314FBE0(uint64_t a1)
{
  v2 = sub_223150044();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MUXSpeechPackageMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t MUXSpeechPackageMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t MUXSpeechPackageMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MUXSpeechPackageMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t MUXSpeechPackageMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_2_23() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t MUXSpeechPackageMessage.Builder.requestId.getter()
{
  v1 = *(v0 + *(type metadata accessor for MUXSpeechPackageMessage.Builder(0) + 28));

  return v1;
}

uint64_t MUXSpeechPackageMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for MUXSpeechPackageMessage.Builder(0) + 28));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t MUXSpeechPackageMessage.Builder.resultCandidateId.getter()
{
  v1 = *(v0 + *(type metadata accessor for MUXSpeechPackageMessage.Builder(0) + 32));

  return v1;
}

uint64_t MUXSpeechPackageMessage.Builder.resultCandidateId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for MUXSpeechPackageMessage.Builder(0) + 32));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t MUXSpeechPackageMessage.Builder.speechPackageDict.getter()
{
  type metadata accessor for MUXSpeechPackageMessage.Builder(0);
}

uint64_t MUXSpeechPackageMessage.Builder.speechPackageDict.setter()
{
  v2 = *(OUTLINED_FUNCTION_2_23() + 36);

  *(v1 + v2) = v0;
  return result;
}

id MUXSpeechPackageMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MUXSpeechPackageMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_223150044()
{
  result = qword_27D058AE8;
  if (!qword_27D058AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058AE8);
  }

  return result;
}

uint64_t sub_22315013C(uint64_t a1)
{
  sub_2230D525C(319, &qword_280FCB0A8, &type metadata for MessageSource);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8, MEMORY[0x277D837D0]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_2230F6D30(319);
      if (v7 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_223144BD0(319);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v2;
}

_BYTE *storeEnumTagSinglePayload for MUXSpeechPackageMessage.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_2231502E4()
{
  result = qword_27D058B18;
  if (!qword_27D058B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058B18);
  }

  return result;
}

unint64_t sub_22315033C()
{
  result = qword_27D058B20;
  if (!qword_27D058B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058B20);
  }

  return result;
}

unint64_t sub_223150394()
{
  result = qword_27D058B28;
  if (!qword_27D058B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058B28);
  }

  return result;
}

uint64_t sub_2231503F8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x636E617265747475 && a2 == 0xE900000000000065;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000223221290 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_2232006B4();

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

uint64_t sub_2231504D0(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x636E617265747475;
  }
}

uint64_t sub_223150518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231503F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_223150540(uint64_t a1)
{
  v2 = sub_2231518F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22315057C(uint64_t a1)
{
  v2 = sub_2231518F4();

  return MEMORY[0x2821FE720](a1, v2);
}

void *MUXTextBasedResultCandidateMessage.voiceIdScoreCard.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes34MUXTextBasedResultCandidateMessage_voiceIdScoreCard);
  v2 = v1;
  return v1;
}

id MUXTextBasedResultCandidateMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return MUXTextBasedResultCandidateMessage.init(build:)(v1);
}

id MUXTextBasedResultCandidateMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  v72 = a1;
  v73 = v1;
  ObjectType = swift_getObjectType();
  sub_2231FFC84();
  OUTLINED_FUNCTION_9();
  v67 = v3;
  v68 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_2();
  v66 = v5 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v64 - v7;
  v9 = sub_2231FFDA4();
  OUTLINED_FUNCTION_9();
  v69 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_2();
  v70 = v13 - v12;
  v14 = type metadata accessor for MUXTextBasedResultCandidateMessage.Builder(0);
  v15 = (v14 - 8);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_2();
  v18 = (v17 - v16);
  *v18 = 15;
  *(v18 + 1) = 0;
  *(v18 + 2) = 0;
  v19 = v15[8];
  v20 = v9;
  __swift_storeEnumTagSinglePayload(v17 - v16 + v19, 1, 1, v9);
  v21 = &v18[v15[9]];
  *v21 = 0;
  *(v21 + 1) = 0;
  v22 = &v18[v15[10]];
  *v22 = 0;
  *(v22 + 1) = 0;
  v23 = &v18[v15[11]];
  *v23 = 0;
  v23[1] = 0;
  v24 = v15[12];
  *&v18[v24] = 0;
  v72(v18);
  v25 = *v18;
  if (v25 == 15)
  {
    goto LABEL_15;
  }

  v26 = *(v18 + 2);
  if (!v26)
  {
    goto LABEL_15;
  }

  v72 = *(v18 + 1);
  sub_2230D1480(&v18[v19], v8);
  v27 = v20;
  if (__swift_getEnumTagSinglePayload(v8, 1, v20) == 1)
  {
    sub_2230D69D4(v8);
LABEL_15:
    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_280FCA778);
    }

    v49 = sub_223200014();
    __swift_project_value_buffer(v49, qword_280FCE830);
    v50 = sub_223200004();
    v51 = sub_223200254();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v74[0] = v53;
      *v52 = 136446210;
      v54 = sub_2230F7898(ObjectType);
      v56 = sub_2231A5D38(v54, v55, v74);

      *(v52 + 4) = v56;
      _os_log_impl(&dword_2230CE000, v50, v51, "Could not build %{public}s: Builder has missing required fields", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v53);
      MEMORY[0x223DD6780](v53, -1, -1);
      MEMORY[0x223DD6780](v52, -1, -1);
    }

    sub_223150CA0(v18);
LABEL_20:
    type metadata accessor for MUXTextBasedResultCandidateMessage(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v65 = v26;
  v29 = v69;
  v28 = v70;
  (*(v69 + 32))(v70, v8, v27);
  v30 = *(v21 + 1);
  if (!v30 || !*(v22 + 1) || (v31 = v23[1]) == 0)
  {
    (*(v29 + 8))(v28, v27);
    goto LABEL_15;
  }

  ObjectType = *(v22 + 1);
  v32 = *v21;
  v64 = *v22;
  v74[0] = *v23;
  v74[1] = v31;
  v33 = v66;
  sub_2231FFC74();
  sub_2230D1D30();
  v34 = sub_2232002E4();
  v36 = v35;
  v37 = (*(v67 + 8))(v33, v68);
  v38 = HIBYTE(v36) & 0xF;
  if ((v36 & 0x2000000000000000) == 0)
  {
    v38 = v34 & 0xFFFFFFFFFFFFLL;
  }

  if (!v38)
  {

    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_280FCA778);
    }

    v58 = sub_223200014();
    __swift_project_value_buffer(v58, qword_280FCE830);
    v59 = sub_223200004();
    v60 = sub_223200254();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_2230CE000, v59, v60, "utterance is empty, can't create message", v61, 2u);
      MEMORY[0x223DD6780](v61, -1, -1);
    }

    sub_223150CA0(v18);
    v62 = OUTLINED_FUNCTION_7_0();
    v63(v62);
    goto LABEL_20;
  }

  v39 = v34;
  v40 = v73;
  v41 = (v73 + OBJC_IVAR____TtC16SiriMessageTypes34MUXTextBasedResultCandidateMessage_utterance);
  *v41 = v39;
  v41[1] = v36;
  *(v40 + OBJC_IVAR____TtC16SiriMessageTypes34MUXTextBasedResultCandidateMessage_voiceIdScoreCard) = *&v18[v24];
  MEMORY[0x28223BE20](v37);
  *(&v64 - 64) = v25;
  v42 = v65;
  *(&v64 - 7) = v72;
  *(&v64 - 6) = v42;
  v43 = v70;
  *(&v64 - 5) = v70;
  *(&v64 - 4) = v32;
  v44 = v64;
  *(&v64 - 3) = v30;
  *(&v64 - 2) = v44;
  *(&v64 - 1) = ObjectType;
  v46 = v45;
  v47 = ResultCandidateRequestMessageBase.init(build:)(sub_2231122E4);
  v48 = v47;
  sub_223150CA0(v18);
  if (v47)
  {
  }

  (*(v29 + 8))(v43, v27);
  return v47;
}

uint64_t sub_223150CA0(uint64_t a1)
{
  v2 = type metadata accessor for MUXTextBasedResultCandidateMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MUXTextBasedResultCandidateMessage.init(from:)(void *a1)
{
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058B30, &qword_22320D718);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231518F4();
  sub_223200794();
  if (v2)
  {
    v7 = 0;
  }

  else
  {
    LOBYTE(v23) = 0;
    v6 = sub_2232004F4();
    v9 = (v1 + OBJC_IVAR____TtC16SiriMessageTypes34MUXTextBasedResultCandidateMessage_utterance);
    *v9 = v6;
    v9[1] = v10;
    v25 = 1;
    sub_2230FB7A0();
    sub_2232004C4();
    if (v24 >> 60 == 15)
    {
      v11 = 0;
LABEL_11:
      *(v3 + OBJC_IVAR____TtC16SiriMessageTypes34MUXTextBasedResultCandidateMessage_voiceIdScoreCard) = v11;
      sub_2230F7158(a1, &v23);
      v7 = ResultCandidateRequestMessageBase.init(from:)(&v23);
      v12 = OUTLINED_FUNCTION_2();
      v13(v12);
      v14 = OUTLINED_FUNCTION_7_0();
      sub_22310A610(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(a1);
      return v7;
    }

    sub_2230FB7F4(0, &qword_27D0576E8, 0x277CCAAC8);
    sub_2230FB7F4(0, &qword_280FCA3C8, 0x277CEF520);
    sub_223110BA0(v23, v24);
    v11 = sub_223200264();
    v16 = OUTLINED_FUNCTION_7_0();
    sub_22310A610(v16, v17);
    if (v11)
    {
      goto LABEL_11;
    }

    sub_2230F9E38();
    swift_allocError();
    *v18 = 0xD000000000000020;
    *(v18 + 8) = 0x8000000223223D00;
    *(v18 + 16) = 0;
    swift_willThrow();
    v19 = OUTLINED_FUNCTION_7_0();
    sub_22310A610(v19, v20);
    v21 = OUTLINED_FUNCTION_2();
    v22(v21);
    v7 = 1;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  if (v7)
  {
  }

  type metadata accessor for MUXTextBasedResultCandidateMessage(0);
  swift_deallocPartialClassInstance();
  return v7;
}

uint64_t sub_22315112C(void *a1)
{
  v23[2] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058B40, &qword_22320D720);
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231518F4();
  sub_2232007A4();
  LOBYTE(v23[0]) = 0;
  sub_2232005F4();
  if (!v2)
  {
    v10 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes34MUXTextBasedResultCandidateMessage_voiceIdScoreCard);
    if (!v10)
    {
LABEL_6:
      sub_223190B78(a1);
      return (*(v6 + 8))(v9, v4);
    }

    v11 = objc_opt_self();
    v23[0] = 0;
    v12 = v10;
    v13 = [v11 archivedDataWithRootObject:v12 requiringSecureCoding:1 error:v23];
    v14 = v23[0];
    if (v13)
    {
      v21 = v12;
      v15 = sub_2231FFD24();
      v17 = v16;

      v23[0] = v15;
      v23[1] = v17;
      v22 = 1;
      sub_2230D7754();
      sub_223200654();

      sub_2230D94DC(v15, v17);
      goto LABEL_6;
    }

    v18 = v14;
    sub_2231FFD04();

    swift_willThrow();
  }

  return (*(v6 + 8))(v9, v4);
}

uint64_t MUXTextBasedResultCandidateMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t MUXTextBasedResultCandidateMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MUXTextBasedResultCandidateMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t MUXTextBasedResultCandidateMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_9_12() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t MUXTextBasedResultCandidateMessage.Builder.requestId.getter()
{
  type metadata accessor for MUXTextBasedResultCandidateMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t MUXTextBasedResultCandidateMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for MUXTextBasedResultCandidateMessage.Builder(0) + 28));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t MUXTextBasedResultCandidateMessage.Builder.resultCandidateId.getter()
{
  type metadata accessor for MUXTextBasedResultCandidateMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t MUXTextBasedResultCandidateMessage.Builder.resultCandidateId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for MUXTextBasedResultCandidateMessage.Builder(0) + 32));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t MUXTextBasedResultCandidateMessage.Builder.utterance.getter()
{
  type metadata accessor for MUXTextBasedResultCandidateMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t MUXTextBasedResultCandidateMessage.Builder.utterance.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for MUXTextBasedResultCandidateMessage.Builder(0) + 36));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

void *MUXTextBasedResultCandidateMessage.Builder.voiceIdScoreCard.getter()
{
  v1 = *(v0 + *(type metadata accessor for MUXTextBasedResultCandidateMessage.Builder(0) + 40));
  v2 = v1;
  return v1;
}

void MUXTextBasedResultCandidateMessage.Builder.voiceIdScoreCard.setter()
{
  v2 = *(OUTLINED_FUNCTION_9_12() + 40);

  *(v1 + v2) = v0;
}

void sub_223151828()
{

  v1 = *(v0 + OBJC_IVAR____TtC16SiriMessageTypes34MUXTextBasedResultCandidateMessage_voiceIdScoreCard);
}

id MUXTextBasedResultCandidateMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MUXTextBasedResultCandidateMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2231518F4()
{
  result = qword_27D058B38;
  if (!qword_27D058B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058B38);
  }

  return result;
}

uint64_t sub_2231519F0(uint64_t a1)
{
  sub_2230D525C(319, &qword_280FCB0A8, &type metadata for MessageSource);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8, MEMORY[0x277D837D0]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_2230F6D30(319);
      if (v7 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_223110954(319);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v2;
}

_BYTE *storeEnumTagSinglePayload for MUXTextBasedResultCandidateMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_223151BC4()
{
  result = qword_27D058B68;
  if (!qword_27D058B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058B68);
  }

  return result;
}

unint64_t sub_223151C1C()
{
  result = qword_27D058B70;
  if (!qword_27D058B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058B70);
  }

  return result;
}

unint64_t sub_223151C74()
{
  result = qword_27D058B78;
  if (!qword_27D058B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058B78);
  }

  return result;
}

uint64_t MUXTextBasedResultSelectedMessage.expectedSelectedUserId.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes33MUXTextBasedResultSelectedMessage_expectedSelectedUserId + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes33MUXTextBasedResultSelectedMessage_expectedSelectedUserId);
  a1[1] = v2;
}

id MUXTextBasedResultSelectedMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return MUXTextBasedResultSelectedMessage.init(build:)(v1);
}

id MUXTextBasedResultSelectedMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  v54 = v1;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v48 - v4;
  v6 = sub_2231FFDA4();
  OUTLINED_FUNCTION_9();
  v50 = v7;
  MEMORY[0x28223BE20](v8);
  v51 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MUXTextBasedResultSelectedMessage.Builder(0);
  v11 = (v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v13 = 15;
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  v14 = v11[8];
  v52 = v6;
  __swift_storeEnumTagSinglePayload(&v13[v14], 1, 1, v6);
  v15 = &v13[v11[9]];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = &v13[v11[10]];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = v11[11];
  v13[v17] = 2;
  v18 = &v13[v11[12]];
  *v18 = 0;
  v18[8] = 1;
  v19 = &v13[v11[13]];
  *v19 = 0;
  *(v19 + 1) = 0;
  a1(v13);
  v20 = *v13;
  if (v20 != 15)
  {
    v21 = *(v13 + 2);
    if (v21)
    {
      v22 = *(v13 + 1);
      sub_2230D1480(&v13[v14], v5);
      v23 = v52;
      if (__swift_getEnumTagSinglePayload(v5, 1, v52) == 1)
      {
        sub_2230D69D4(v5);
      }

      else
      {
        v48 = v22;
        v49 = v21;
        v24 = v50;
        v25 = v51;
        (*(v50 + 32))(v51, v5, v23);
        v26 = *(v15 + 1);
        if (v26)
        {
          v27 = *(v16 + 1);
          if (v27 && v13[v17] != 2)
          {
            v38 = *(v19 + 1);
            v39 = (v54 + OBJC_IVAR____TtC16SiriMessageTypes33MUXTextBasedResultSelectedMessage_expectedSelectedUserId);
            *v39 = *v19;
            v39[1] = v38;
            MEMORY[0x28223BE20](v38);
            *(&v48 - 80) = v20;
            v40 = v49;
            *(&v48 - 9) = v48;
            *(&v48 - 8) = v40;
            v41 = v51;
            *(&v48 - 7) = v51;
            *(&v48 - 6) = v42;
            *(&v48 - 5) = v26;
            *(&v48 - 4) = v43;
            *(&v48 - 3) = v27;
            *(&v48 - 16) = v44 & 1;
            *(&v48 - 1) = v13;

            v36 = ResultSelectedMessageBase.init(build:)(sub_223152ED0);
            v45 = v36;

            if (v36)
            {

              v46 = *(v50 + 8);
              v47 = v45;
              v46(v41, v52);
              sub_22315227C(v13);
            }

            else
            {
              (*(v50 + 8))(v41, v52);
              sub_22315227C(v13);
            }

            return v36;
          }

          (*(v24 + 8))(v51, v23);
        }

        else
        {
          (*(v24 + 8))(v25, v23);
        }
      }
    }
  }

  if (qword_280FCA778 != -1)
  {
    swift_once();
  }

  v28 = sub_223200014();
  __swift_project_value_buffer(v28, qword_280FCE830);
  v29 = sub_223200004();
  v30 = sub_223200254();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v55 = v32;
    *v31 = 136446210;
    v33 = sub_2230F7898(ObjectType);
    v35 = sub_2231A5D38(v33, v34, &v55);

    *(v31 + 4) = v35;
    _os_log_impl(&dword_2230CE000, v29, v30, "Could not build %{public}s: Builder has missing required fields", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v32);
    MEMORY[0x223DD6780](v32, -1, -1);
    MEMORY[0x223DD6780](v31, -1, -1);
  }

  sub_22315227C(v13);
  type metadata accessor for MUXTextBasedResultSelectedMessage(0);
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_22315227C(uint64_t a1)
{
  v2 = type metadata accessor for MUXTextBasedResultSelectedMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2231522F8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11)
{
  *a1 = a2;

  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  v18 = type metadata accessor for ResultSelectedMessageBase.Builder(0);
  v19 = v18[6];
  sub_2230D69D4(a1 + v19);
  v20 = sub_2231FFDA4();
  (*(*(v20 - 8) + 16))(a1 + v19, a5, v20);
  __swift_storeEnumTagSinglePayload(a1 + v19, 0, 1, v20);
  v21 = (a1 + v18[7]);

  *v21 = a6;
  v21[1] = a7;
  v22 = (a1 + v18[8]);

  *v22 = a8;
  v22[1] = a9;
  *(a1 + v18[9]) = a10;
  result = type metadata accessor for MUXTextBasedResultSelectedMessage.Builder(0);
  v24 = (a11 + *(result + 40));
  v25 = *v24;
  LOBYTE(v24) = *(v24 + 8);
  v26 = a1 + v18[10];
  *v26 = v25;
  *(v26 + 8) = v24;
  return result;
}

void *MUXTextBasedResultSelectedMessage.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058B80, &qword_22320D8E8);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223152F18();
  sub_223200794();
  if (v2)
  {
    v6 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for MUXTextBasedResultSelectedMessage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    sub_2231105AC();
    sub_2232004C4();
    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes33MUXTextBasedResultSelectedMessage_expectedSelectedUserId) = v9[0];
    sub_2230F7158(a1, v9);
    v6 = ResultSelectedMessageBase.init(from:)(v9);
    v7 = OUTLINED_FUNCTION_2();
    v8(v7);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v6;
}

uint64_t sub_2231526C4(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058B90, &qword_22320D8F0);
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223152F18();
  sub_2232007A4();
  v10 = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes33MUXTextBasedResultSelectedMessage_expectedSelectedUserId + 8);
  if (!v10 || (v12[0] = *(v1 + OBJC_IVAR____TtC16SiriMessageTypes33MUXTextBasedResultSelectedMessage_expectedSelectedUserId), v12[1] = v10, sub_2230D37F0(), sub_223200654(), !v2))
  {
    sub_223191F2C(a1);
  }

  return (*(v6 + 8))(v9, v4);
}

BOOL sub_223152844@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2230EC590(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_223152878@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2230EC5D8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_2231528A4@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2230EC590(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2231528D0(uint64_t a1)
{
  v2 = sub_223152F18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22315290C(uint64_t a1)
{
  v2 = sub_223152F18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MUXTextBasedResultSelectedMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t MUXTextBasedResultSelectedMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t MUXTextBasedResultSelectedMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MUXTextBasedResultSelectedMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t MUXTextBasedResultSelectedMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_4_19() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t MUXTextBasedResultSelectedMessage.Builder.requestId.getter()
{
  v1 = *(v0 + *(type metadata accessor for MUXTextBasedResultSelectedMessage.Builder(0) + 28));

  return v1;
}

uint64_t MUXTextBasedResultSelectedMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for MUXTextBasedResultSelectedMessage.Builder(0) + 28));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t MUXTextBasedResultSelectedMessage.Builder.resultCandidateId.getter()
{
  v1 = *(v0 + *(type metadata accessor for MUXTextBasedResultSelectedMessage.Builder(0) + 32));

  return v1;
}

uint64_t MUXTextBasedResultSelectedMessage.Builder.resultCandidateId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for MUXTextBasedResultSelectedMessage.Builder(0) + 32));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t MUXTextBasedResultSelectedMessage.Builder.isMitigated.setter(char a1)
{
  result = type metadata accessor for MUXTextBasedResultSelectedMessage.Builder(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t MUXTextBasedResultSelectedMessage.Builder.endpointMode.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for MUXTextBasedResultSelectedMessage.Builder(0);
  v6 = v2 + *(result + 40);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t MUXTextBasedResultSelectedMessage.Builder.expectedSelectedUserId.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MUXTextBasedResultSelectedMessage.Builder(0) + 44));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t MUXTextBasedResultSelectedMessage.Builder.expectedSelectedUserId.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for MUXTextBasedResultSelectedMessage.Builder(0) + 44));

  *v4 = v2;
  v4[1] = v3;
  return result;
}

id MUXTextBasedResultSelectedMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MUXTextBasedResultSelectedMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_223152F18()
{
  result = qword_27D058B88;
  if (!qword_27D058B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058B88);
  }

  return result;
}

uint64_t sub_22315300C(uint64_t a1)
{
  sub_2230D525C(319, &qword_280FCB0A8, &type metadata for MessageSource);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8, MEMORY[0x277D837D0]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_22314ED48(319, &qword_280FCE678, MEMORY[0x277CC95F0]);
      if (v7 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_2230D525C(319, &qword_280FCA440, MEMORY[0x277D839B0]);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          sub_22314ED48(319, &qword_280FCA3D8, type metadata accessor for AFEndpointMode);
          v2 = v10;
          if (v11 <= 0x3F)
          {
            sub_2230D525C(319, &qword_280FCA740, &type metadata for UserID);
            v2 = v12;
            if (v13 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return v2;
}

_BYTE *storeEnumTagSinglePayload for MUXTextBasedResultSelectedMessage.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_223153244()
{
  result = qword_27D058BB8;
  if (!qword_27D058BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058BB8);
  }

  return result;
}

unint64_t sub_22315329C()
{
  result = qword_27D058BC0;
  if (!qword_27D058BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058BC0);
  }

  return result;
}

unint64_t sub_2231532F4()
{
  result = qword_27D058BC8;
  if (!qword_27D058BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058BC8);
  }

  return result;
}

uint64_t NLParseResponse.responseStatusCode.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16SiriMessageTypes15NLParseResponse_responseStatusCode;
  sub_2231FFE44();
  OUTLINED_FUNCTION_4();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

unint64_t sub_223153494(uint64_t a1, uint64_t a2)
{
  v2 = sub_223200464();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_2231534E8(char a1)
{
  result = 0x7372615072657375;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0x6B6361626C6C6166;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2231535E0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_223153494(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_223153610@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2231534E8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_223153658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2231534E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_223153680(uint64_t a1)
{
  v2 = sub_223155D30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231536BC(uint64_t a1)
{
  v2 = sub_223155D30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NLParseResponse.NLResponseError.hashValue.getter()
{
  sub_223200744();
  MEMORY[0x223DD60B0](0);
  return sub_223200764();
}

id NLParseResponse.init(build:)(void (*a1)(uint64_t *))
{
  v52 = a1;
  v53 = v1;
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058BE8, &qword_22320DAF0);
  OUTLINED_FUNCTION_9_13(v2);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v3);
  v5 = &ObjectType - v4;
  v6 = sub_2231FFE44();
  OUTLINED_FUNCTION_9();
  v51 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_2();
  v11 = v10 - v9;
  v12 = type metadata accessor for NLParseResponse.Builder(0);
  v13 = (v12 - 8);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_2();
  v16 = (v15 - v14);
  *(v15 - v14) = 0;
  v17 = v13[7];
  OUTLINED_FUNCTION_10_8();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v6);
  v21 = v13[8];
  sub_2231FFE94();
  OUTLINED_FUNCTION_10_8();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  v26 = v13[9];
  *(v16 + v26) = 7;
  v27 = v13[10];
  sub_2231FFE84();
  OUTLINED_FUNCTION_10_8();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  v32 = (v16 + v13[11]);
  *v32 = 0;
  v32[1] = 0;
  v52(v16);
  v33 = *v16;
  if (!*v16)
  {
    goto LABEL_4;
  }

  sub_2230D3008(v16 + v17, v5, &qword_27D058BE8, &qword_22320DAF0);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_2230D40E0(v5, &qword_27D058BE8, &qword_22320DAF0);
LABEL_4:
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v34 = sub_223200014();
    __swift_project_value_buffer(v34, qword_280FCE830);
    v35 = sub_223200004();
    v36 = sub_223200254();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v55 = v38;
      *v37 = 136446210;
      v39 = sub_2230F7898(ObjectType);
      v41 = sub_2231A5D38(v39, v40, &v55);

      *(v37 + 4) = v41;
      _os_log_impl(&dword_2230CE000, v35, v36, "Could not build %{public}s: Builder has missing required fields", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v38);
      MEMORY[0x223DD6780](v38, -1, -1);
      MEMORY[0x223DD6780](v37, -1, -1);
    }

    sub_223153CA4(v16);
    type metadata accessor for NLParseResponse(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v43 = *(v51 + 32);
  v51 += 32;
  v52 = v43;
  (v43)(v11, v5, v6);
  v44 = v53;
  *&v53[OBJC_IVAR____TtC16SiriMessageTypes15NLParseResponse_userParses] = v33;
  v55 = MEMORY[0x277D84F90];
  v45 = *(v33 + 16);

  if (v45)
  {
    sub_223153ED4(v33, &v55);
  }

  (v52)(&v44[OBJC_IVAR____TtC16SiriMessageTypes15NLParseResponse_responseStatusCode], v11, v6);
  sub_2230D3008(v16 + v21, &v44[OBJC_IVAR____TtC16SiriMessageTypes15NLParseResponse_fallbackParse], &qword_27D058BD8, &qword_22320DAE0);
  v44[OBJC_IVAR____TtC16SiriMessageTypes15NLParseResponse_serverFallbackReason] = *(v16 + v26);
  sub_2230D3008(v16 + v27, &v44[OBJC_IVAR____TtC16SiriMessageTypes15NLParseResponse_languageVariantResult], &qword_27D058BE0, &qword_22320DAE8);
  v46 = *v32;
  v47 = v32[1];

  sub_223153CA4(v16);
  v48 = &v44[OBJC_IVAR____TtC16SiriMessageTypes15NLParseResponse_responseVariantResult];
  *v48 = v46;
  v48[1] = v47;

  v49 = type metadata accessor for NLParseResponse(0);
  v54.receiver = v44;
  v54.super_class = v49;
  return objc_msgSendSuper2(&v54, sel_init, ObjectType);
}

uint64_t sub_223153CA4(uint64_t a1)
{
  v2 = type metadata accessor for NLParseResponse.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_223153D20(uint64_t a1, void *a2)
{
  sub_2231FFE14();
  sub_223156574(&qword_280FCE660, MEMORY[0x277D5DB08], MEMORY[0x277D5DB00]);
  v4 = sub_2231FFFE4();
  if (v2)
  {
  }

  else
  {
    v10 = v4;
    v11 = v5;
    v12 = objc_allocWithZone(MEMORY[0x277D5DDE0]);
    if (sub_223155C90(v10, v11))
    {
      MEMORY[0x223DD5B10]();
      sub_223155D04(*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
      sub_223200214();
      return;
    }
  }

  if (qword_280FCA778 != -1)
  {
    swift_once();
  }

  v6 = sub_223200014();
  __swift_project_value_buffer(v6, qword_280FCE830);
  v7 = sub_223200004();
  v8 = sub_223200254();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2230CE000, v7, v8, "Could not convert from Swift to Obj-C?! Skipping this one", v9, 2u);
    MEMORY[0x223DD6780](v9, -1, -1);
  }
}

void sub_223153ED4(uint64_t a1, void *a2)
{
  v5 = 0;
  v6 = *(a1 + 16);
  do
  {
    if (v6 == v5)
    {
      break;
    }

    v7 = *(sub_2231FFE14() - 8);
    sub_223153D20(a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v5++, a2);
  }

  while (!v2);
}

uint64_t NLParseResponse.init(from:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058BE0, &qword_22320DAE8);
  OUTLINED_FUNCTION_9_13(v2);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v3);
  v124 = &v115 - v4;
  v125 = sub_2231FFE84();
  OUTLINED_FUNCTION_9();
  v121 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_2();
  v122 = (v8 - v7);
  v9 = sub_2231FFFA4();
  v10 = OUTLINED_FUNCTION_9_13(v9);
  v11 = MEMORY[0x28223BE20](v10);
  v123 = &v115 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v128 = &v115 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058BD8, &qword_22320DAE0);
  OUTLINED_FUNCTION_9_13(v14);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v15);
  v129 = &v115 - v16;
  v130 = sub_2231FFE94();
  OUTLINED_FUNCTION_9();
  v126 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_2_2();
  v127 = (v20 - v19);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058BE8, &qword_22320DAF0);
  OUTLINED_FUNCTION_9_13(v21);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v22);
  v24 = &v115 - v23;
  v25 = sub_2231FFE44();
  OUTLINED_FUNCTION_9();
  v131 = v26;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_2_2();
  v30 = v29 - v28;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058BF0, &unk_22320DAF8);
  OUTLINED_FUNCTION_9();
  v132 = v32;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v33);
  v35 = &v115 - v34;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223155D30();
  v36 = v133;
  sub_223200794();
  if (v36)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    goto LABEL_4;
  }

  v119 = v30;
  v37 = v132;
  v120 = v25;
  v133 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057B10, &qword_2232063C0);
  v140 = 0;
  sub_22311A5F0(&qword_27D057B18, sub_2230FB7A0, MEMORY[0x277D83978]);
  OUTLINED_FUNCTION_20_4();
  sub_223200554();
  sub_22315B998();
  v40 = v39;

  v118 = OBJC_IVAR____TtC16SiriMessageTypes15NLParseResponse_userParses;
  *&v134[OBJC_IVAR____TtC16SiriMessageTypes15NLParseResponse_userParses] = v40;
  LOBYTE(v135) = 1;
  sub_2232004B4();
  v43 = v41;
  if (v41)
  {
    v139 = v41;
    v44 = sub_223155D84();
    v45 = OUTLINED_FUNCTION_26(&type metadata for NLParseResponse.NLResponseError, v44);
    OUTLINED_FUNCTION_24_2(v45);
    (*(v37 + 8))(v35, v31);
    v46 = v134;
LABEL_8:
    v24 = v139 ^ 1u;
    v47 = v139 ^ 1;
LABEL_9:
    v48 = v133;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v48);

    if (v24)
    {
      (*(v131 + 8))(&v46[OBJC_IVAR____TtC16SiriMessageTypes15NLParseResponse_responseStatusCode], v120);
      if ((v47 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    else if ((v47 & 1) == 0)
    {
      goto LABEL_4;
    }

    sub_2230D40E0(&v46[OBJC_IVAR____TtC16SiriMessageTypes15NLParseResponse_fallbackParse], &qword_27D058BD8, &qword_22320DAE0);
LABEL_4:
    type metadata accessor for NLParseResponse(0);
    swift_deallocPartialClassInstance();
    return v24;
  }

  v117 = v35;
  sub_2231FFE24();
  v49 = v120;
  if (__swift_getEnumTagSinglePayload(v24, 1, v120) == 1)
  {
    sub_2230D40E0(v24, &qword_27D058BE8, &qword_22320DAF0);
    v50 = sub_223155D84();
    v51 = OUTLINED_FUNCTION_26(&type metadata for NLParseResponse.NLResponseError, v50);
    OUTLINED_FUNCTION_24_2(v51);
    v52 = OUTLINED_FUNCTION_12_5();
    v42(v52, v31);
    v24 = 0;
    v47 = 0;
    v46 = v134;
    goto LABEL_9;
  }

  v139 = v43;
  v116 = 0;
  v53 = v131;
  v54 = v119;
  (*(v131 + 32))(v119, v24, v49);
  (*(v53 + 16))(&v134[OBJC_IVAR____TtC16SiriMessageTypes15NLParseResponse_responseStatusCode], v54, v49);
  v140 = 2;
  sub_2230FB7A0();
  OUTLINED_FUNCTION_20_4();
  v55 = v117;
  v56 = v116;
  sub_2232004C4();
  v116 = v56;
  if (v56)
  {
    (*(v53 + 8))(v54, v49);
    (*(v37 + 8))(v55, v31);
    v47 = 0;
    v24 = 1;
    v48 = v133;
    v46 = v134;
    goto LABEL_10;
  }

  v57 = *(&v135 + 1);
  if (*(&v135 + 1) >> 60 == 15)
  {
    v46 = v134;
    OUTLINED_FUNCTION_10_8();
    __swift_storeEnumTagSinglePayload(v58, v59, v60, v130);
    v61 = v116;
  }

  else
  {
    v62 = v135;
    v137 = 0;
    v135 = 0u;
    v136 = 0u;
    sub_223110BA0(v62, v57);
    sub_2231FFF94();
    OUTLINED_FUNCTION_4_20();
    sub_223156574(v63, v64, MEMORY[0x277D5DD78]);
    v115 = v62;
    v65 = v130;
    v66 = v116;
    sub_2231FFFD4();
    v61 = v66;
    if (v66)
    {

      v24 = 1;
      v67 = v129;
      OUTLINED_FUNCTION_10_8();
      __swift_storeEnumTagSinglePayload(v68, v69, v70, v65);
      sub_2230D40E0(v67, &qword_27D058BD8, &qword_22320DAE0);
      v71 = sub_223155D84();
      v72 = OUTLINED_FUNCTION_26(&type metadata for NLParseResponse.NLResponseError, v71);
      OUTLINED_FUNCTION_24_2(v72);
      sub_22310A610(v115, v57);
      (*(v131 + 8))(v119, v49);
      v73 = OUTLINED_FUNCTION_12_5();
      v74(v73, v31);
      v47 = 0;
      v48 = v133;
      v46 = v134;
      goto LABEL_10;
    }

    sub_22310A610(v115, v57);
    v75 = v129;
    OUTLINED_FUNCTION_17_2();
    __swift_storeEnumTagSinglePayload(v76, v77, v78, v65);
    v79 = *(v126 + 32);
    v79(v127, v75, v65);
    v46 = v134;
    v79(&v134[OBJC_IVAR____TtC16SiriMessageTypes15NLParseResponse_fallbackParse], v127, v65);
    OUTLINED_FUNCTION_17_2();
    __swift_storeEnumTagSinglePayload(v80, v81, v82, v65);
  }

  v140 = 3;
  sub_2231123E8();
  OUTLINED_FUNCTION_20_4();
  sub_2232004C4();
  v83 = v31;
  v84 = v131;
  if (v61)
  {
    v85 = OUTLINED_FUNCTION_1_17();
    v86(v85);
    v87 = OUTLINED_FUNCTION_8_10();
    v88(v87);
    goto LABEL_8;
  }

  v46[OBJC_IVAR____TtC16SiriMessageTypes15NLParseResponse_serverFallbackReason] = v135;
  v140 = 4;
  OUTLINED_FUNCTION_20_4();
  sub_2232004C4();
  v134 = v83;
  if (*(&v135 + 1) >> 60 == 15)
  {
    OUTLINED_FUNCTION_10_8();
    __swift_storeEnumTagSinglePayload(v89, v90, v91, v125);
  }

  else
  {
    v137 = 0;
    v135 = 0u;
    v136 = 0u;
    v92 = OUTLINED_FUNCTION_18_4();
    sub_223110BA0(v92, v93);
    sub_2231FFF94();
    OUTLINED_FUNCTION_6_12();
    sub_223156574(v94, v95, MEMORY[0x277D5DD68]);
    v96 = v124;
    OUTLINED_FUNCTION_18_4();
    v97 = v125;
    sub_2231FFFD4();
    v98 = OUTLINED_FUNCTION_18_4();
    sub_22310A610(v98, v99);
    OUTLINED_FUNCTION_17_2();
    __swift_storeEnumTagSinglePayload(v100, v101, v102, v97);
    v103 = *(v121 + 32);
    v103(v122, v96, v97);
    v103(&v46[OBJC_IVAR____TtC16SiriMessageTypes15NLParseResponse_languageVariantResult], v122, v97);
    OUTLINED_FUNCTION_17_2();
    __swift_storeEnumTagSinglePayload(v104, v105, v106, v97);
    v84 = v131;
  }

  LOBYTE(v135) = 5;
  v107 = sub_223200494();
  v116 = 0;
  v108 = v107;
  v110 = v109;
  (*(v84 + 8))(v119, v120);
  v111 = OUTLINED_FUNCTION_8_10();
  v112(v111);
  v113 = &v46[OBJC_IVAR____TtC16SiriMessageTypes15NLParseResponse_responseVariantResult];
  *v113 = v108;
  v113[1] = v110;
  v114 = type metadata accessor for NLParseResponse(0);
  v138.receiver = v46;
  v138.super_class = v114;
  v24 = objc_msgSendSuper2(&v138, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v133);
  return v24;
}

uint64_t sub_223154C7C(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058BE0, &qword_22320DAE8);
  OUTLINED_FUNCTION_9_13(v4);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v5);
  v7 = v40 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058BD8, &qword_22320DAE0);
  OUTLINED_FUNCTION_9_13(v8);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v9);
  v11 = v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058C00, &qword_22320DB08);
  OUTLINED_FUNCTION_9();
  v14 = v13;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v15);
  v17 = v40 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223155D30();
  sub_2232007A4();
  sub_22315BC2C();
  *&v43 = v18;
  v44 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057B10, &qword_2232063C0);
  sub_22311A5F0(&qword_280FCA4C8, sub_2230D7754, MEMORY[0x277D83948]);
  OUTLINED_FUNCTION_11_6();
  v19 = v42;
  sub_223200654();
  if (v19)
  {
    (*(v14 + 8))(v17, v12);
  }

  else
  {
    v41 = v7;
    v42 = v14;

    sub_2231FFE34();
    LOBYTE(v43) = 1;
    sub_223200634();
    v21 = v2;
    sub_2230D3008(v2 + OBJC_IVAR____TtC16SiriMessageTypes15NLParseResponse_fallbackParse, v11, &qword_27D058BD8, &qword_22320DAE0);
    v22 = sub_2231FFE94();
    if (__swift_getEnumTagSinglePayload(v11, 1, v22) == 1)
    {
      sub_2230D40E0(v11, &qword_27D058BD8, &qword_22320DAE0);
      v23 = 0;
      v24 = 0xF000000000000000;
    }

    else
    {
      OUTLINED_FUNCTION_4_20();
      sub_223156574(v25, v26, MEMORY[0x277D5DD78]);
      OUTLINED_FUNCTION_6_10();
      v23 = sub_2231FFFE4();
      v24 = v27;
      OUTLINED_FUNCTION_5_0();
      (*(v28 + 8))(v11, v22);
    }

    *&v43 = v23;
    *(&v43 + 1) = v24;
    v44 = 2;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058C08, &qword_22320DB10);
    sub_223155DD8(&qword_280FCE698, &qword_27D058C08, &qword_22320DB10, sub_2230D7754);
    OUTLINED_FUNCTION_22_2();
    sub_223200654();
    v40[1] = v29;
    sub_22310A610(v43, *(&v43 + 1));
    LOBYTE(v43) = *(v2 + OBJC_IVAR____TtC16SiriMessageTypes15NLParseResponse_serverFallbackReason);
    v44 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058C10, &unk_22320DB18);
    v30 = v17;
    sub_223155DD8(&qword_280FCA818, &qword_27D058C10, &unk_22320DB18, sub_2231124D0);
    OUTLINED_FUNCTION_11_6();
    OUTLINED_FUNCTION_6_10();
    sub_223200654();
    v31 = v41;
    sub_2230D3008(v2 + OBJC_IVAR____TtC16SiriMessageTypes15NLParseResponse_languageVariantResult, v41, &qword_27D058BE0, &qword_22320DAE8);
    v32 = sub_2231FFE84();
    if (__swift_getEnumTagSinglePayload(v31, 1, v32) == 1)
    {
      sub_2230D40E0(v31, &qword_27D058BE0, &qword_22320DAE8);
      v33 = 0;
      v34 = 0xF000000000000000;
    }

    else
    {
      OUTLINED_FUNCTION_6_12();
      sub_223156574(v35, v36, MEMORY[0x277D5DD68]);
      v33 = sub_2231FFFE4();
      v34 = v37;
      OUTLINED_FUNCTION_5_0();
      (*(v38 + 8))(v31, v32);
    }

    *&v43 = v33;
    *(&v43 + 1) = v34;
    v44 = 4;
    OUTLINED_FUNCTION_22_2();
    OUTLINED_FUNCTION_6_10();
    sub_223200654();
    sub_22310A610(v43, *(&v43 + 1));
    v39 = v42;
    v43 = *(v21 + OBJC_IVAR____TtC16SiriMessageTypes15NLParseResponse_responseVariantResult);
    v44 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057640, &qword_2232037A0);
    sub_2230F994C();
    OUTLINED_FUNCTION_11_6();
    OUTLINED_FUNCTION_6_10();
    sub_223200654();
    return (*(v39 + 8))(v30, v33);
  }
}

uint64_t sub_223155380()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058BE0, &qword_22320DAE8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v2);
  v4 = v23 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058BD8, &qword_22320DAE0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v5);
  v7 = v23 - v6;
  v25 = 0;
  v26 = 0xE000000000000000;
  sub_223200374();
  v8 = type metadata accessor for NLParseResponse(0);
  v24.receiver = v0;
  v24.super_class = v8;
  v9 = objc_msgSendSuper2(&v24, sel_description);
  v10 = sub_2232000C4();
  v12 = v11;

  MEMORY[0x223DD5AA0](v10, v12);

  MEMORY[0x223DD5AA0](0xD000000000000030, 0x8000000223223E30);
  sub_2231FFE44();
  sub_2232003C4();
  MEMORY[0x223DD5AA0](0xD000000000000013, 0x8000000223223E70);
  sub_2230D3008(&v1[OBJC_IVAR____TtC16SiriMessageTypes15NLParseResponse_fallbackParse], v7, &qword_27D058BD8, &qword_22320DAE0);
  v13 = sub_223200104();
  MEMORY[0x223DD5AA0](v13);

  MEMORY[0x223DD5AA0](0xD00000000000001ALL, 0x8000000223223E90);
  v14 = v1[OBJC_IVAR____TtC16SiriMessageTypes15NLParseResponse_serverFallbackReason];
  if (v14 == 7)
  {
    LOBYTE(v14) = 6;
  }

  LOBYTE(v23[0]) = v14;
  sub_2232003C4();
  MEMORY[0x223DD5AA0](2108478, 0xE300000000000000);
  v15 = v25;
  v16 = v26;
  v25 = 0;
  v26 = 0xE000000000000000;
  sub_223200374();
  MEMORY[0x223DD5AA0](0xD000000000000018, 0x8000000223223EB0);
  sub_2230D3008(&v1[OBJC_IVAR____TtC16SiriMessageTypes15NLParseResponse_languageVariantResult], v4, &qword_27D058BE0, &qword_22320DAE8);
  v17 = sub_223200104();
  MEMORY[0x223DD5AA0](v17);

  MEMORY[0x223DD5AA0](0xD00000000000001BLL, 0x8000000223223ED0);
  v18 = *&v1[OBJC_IVAR____TtC16SiriMessageTypes15NLParseResponse_responseVariantResult + 8];
  v23[0] = *&v1[OBJC_IVAR____TtC16SiriMessageTypes15NLParseResponse_responseVariantResult];
  v23[1] = v18;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057640, &qword_2232037A0);
  v19 = sub_223200104();
  MEMORY[0x223DD5AA0](v19);

  MEMORY[0x223DD5AA0](10558, 0xE200000000000000);
  v20 = v25;
  v21 = v26;
  v25 = v15;
  v26 = v16;

  MEMORY[0x223DD5AA0](v20, v21);

  return v25;
}

uint64_t NLParseResponse.Builder.userParses.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t NLParseResponse.Builder.serverFallbackReason.getter()
{
  result = OUTLINED_FUNCTION_25_1();
  *v0 = *(v1 + *(result + 28));
  return result;
}

uint64_t NLParseResponse.Builder.serverFallbackReason.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for NLParseResponse.Builder(0);
  *(v1 + *(result + 28)) = v2;
  return result;
}

uint64_t NLParseResponse.Builder.responseVariantResult.getter()
{
  type metadata accessor for NLParseResponse.Builder(0);

  return OUTLINED_FUNCTION_2_1();
}

uint64_t NLParseResponse.Builder.responseVariantResult.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for NLParseResponse.Builder(0) + 36));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

id NLParseResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NLParseResponse.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NLParseResponse(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_223155C40@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = NLParseResponse.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id sub_223155C90(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_2231FFD14();
    sub_22310A610(a1, a2);
  }

  v6 = [v2 initWithData_];

  return v6;
}

uint64_t sub_223155D04(uint64_t result)
{
  v2 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18);
  if (result + 1 > (v2 >> 1))
  {
    return MEMORY[0x2821FC280](v2 > 1);
  }

  return result;
}

unint64_t sub_223155D30()
{
  result = qword_280FCAC78;
  if (!qword_280FCAC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCAC78);
  }

  return result;
}

unint64_t sub_223155D84()
{
  result = qword_27D058BF8;
  if (!qword_27D058BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058BF8);
  }

  return result;
}

uint64_t sub_223155DD8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_223155E58()
{
  result = qword_27D058C18;
  if (!qword_27D058C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058C18);
  }

  return result;
}

void sub_223155EB4(uint64_t a1)
{
  sub_2231FFE44();
  if (v1 <= 0x3F)
  {
    sub_22315633C(319, &qword_280FCE5D0, MEMORY[0x277D5DD80]);
    if (v2 <= 0x3F)
    {
      sub_22315633C(319, &qword_280FCE5E0, MEMORY[0x277D5DD70]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

_BYTE *storeEnumTagSinglePayload for NLParseResponse.NLResponseError(_BYTE *result, int a2, int a3)
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

void sub_223156180(uint64_t a1)
{
  sub_2231562D8(319);
  if (v1 <= 0x3F)
  {
    sub_22315633C(319, &qword_280FCE650, MEMORY[0x277D5DBC0]);
    if (v2 <= 0x3F)
    {
      sub_22315633C(319, &qword_280FCE5D0, MEMORY[0x277D5DD80]);
      if (v3 <= 0x3F)
      {
        sub_2230D525C(319, &qword_280FCA820, &type metadata for ServerFallbackReason);
        if (v4 <= 0x3F)
        {
          sub_22315633C(319, &qword_280FCE5E0, MEMORY[0x277D5DD70]);
          if (v5 <= 0x3F)
          {
            sub_2230D525C(319, &qword_280FCA4D8, MEMORY[0x277D837D0]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_2231562D8(uint64_t a1)
{
  if (!qword_280FCA4B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D058C20, &qword_22320DCC8);
    v1 = sub_2232002D4();
    if (!v2)
    {
      atomic_store(v1, &qword_280FCA4B0);
    }
  }
}

void sub_22315633C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2232002D4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for NLParseResponse.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_223156470()
{
  result = qword_27D058C28;
  if (!qword_27D058C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058C28);
  }

  return result;
}

unint64_t sub_2231564C8()
{
  result = qword_280FCAC68;
  if (!qword_280FCAC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCAC68);
  }

  return result;
}

unint64_t sub_223156520()
{
  result = qword_280FCAC70;
  if (!qword_280FCAC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCAC70);
  }

  return result;
}

uint64_t sub_223156574(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_25_1()
{

  return type metadata accessor for NLParseResponse.Builder(0);
}

BOOL sub_22315660C@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2230ECA10(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_223156640@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2230ECA58();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_22315666C@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2230ECA10(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_223156698(uint64_t a1)
{
  v2 = sub_2231575CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231566D4(uint64_t a1)
{
  v2 = sub_2231575CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NLRepetitionMessage.NLRepetitionError.hashValue.getter()
{
  sub_223200744();
  MEMORY[0x223DD60B0](0);
  return sub_223200764();
}

id NLRepetitionMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return NLRepetitionMessage.init(build:)(v1);
}

id NLRepetitionMessage.init(build:)(void (*a1)(unsigned __int8 *))
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v39 - v5;
  v7 = sub_2231FFDA4();
  OUTLINED_FUNCTION_9();
  v41 = v8;
  MEMORY[0x28223BE20](v9);
  v42 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for NLRepetitionMessage.Builder(0);
  v12 = (v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v14 = 15;
  *(v14 + 1) = 0;
  *(v14 + 2) = 0;
  v15 = v12[8];
  __swift_storeEnumTagSinglePayload(&v14[v15], 1, 1, v7);
  v16 = &v14[v12[9]];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = &v14[v12[10]];
  *v17 = 0;
  *(v17 + 1) = 0;
  v18 = v12[11];
  *&v14[v18] = 0;
  a1(v14);
  v19 = *v14;
  if (v19 == 15)
  {
    goto LABEL_12;
  }

  v20 = *(v14 + 2);
  if (!v20)
  {
    goto LABEL_12;
  }

  v40 = *(v14 + 1);
  sub_2230D1480(&v14[v15], v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_2230D69D4(v6);
LABEL_12:
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v30 = sub_223200014();
    __swift_project_value_buffer(v30, qword_280FCE830);
    v31 = sub_223200004();
    v32 = sub_223200254();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v44 = v34;
      *v33 = 136446210;
      v35 = sub_2230F7898(ObjectType);
      v37 = sub_2231A5D38(v35, v36, &v44);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_2230CE000, v31, v32, "Could not build %{public}s: Builder has missing required fields", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x223DD6780](v34, -1, -1);
      MEMORY[0x223DD6780](v33, -1, -1);
    }

    sub_223156C90(v14);
    type metadata accessor for NLRepetitionMessage(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v21 = v41;
  (*(v41 + 32))(v42, v6, v7);
  if (!*(v16 + 1) || !*(v17 + 1) || (v22 = *&v14[v18], v23 = v42, !v22))
  {
    (*(v21 + 8))(v42, v7);
    goto LABEL_12;
  }

  *(v2 + OBJC_IVAR____TtC16SiriMessageTypes19NLRepetitionMessage_repetitionResults) = v22;
  MEMORY[0x28223BE20](v22);
  *(&v39 - 64) = v19;
  *(&v39 - 7) = v40;
  *(&v39 - 6) = v20;
  *(&v39 - 5) = v23;
  *(&v39 - 4) = v24;
  *(&v39 - 3) = v25;
  *(&v39 - 2) = v26;
  *(&v39 - 1) = v27;

  v28 = ResultCandidateRequestMessageBase.init(build:)(sub_2231122E4);
  v29 = v28;
  sub_223156C90(v14);
  if (v28)
  {
  }

  (*(v41 + 8))(v23, v7);
  return v28;
}

uint64_t sub_223156C90(uint64_t a1)
{
  v2 = type metadata accessor for NLRepetitionMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *NLRepetitionMessage.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058C30, &unk_22320DE28);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231575CC();
  sub_223200794();
  if (v2)
  {
    v8 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for NLRepetitionMessage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057B10, &qword_2232063C0);
    sub_22311A5F0(&qword_27D057B18, sub_2230FB7A0, MEMORY[0x277D83978]);
    sub_223200554();
    sub_22315B74C();
    v7 = v6;

    *(v1 + OBJC_IVAR____TtC16SiriMessageTypes19NLRepetitionMessage_repetitionResults) = v7;
    sub_2230F7158(a1, v11);
    v8 = ResultCandidateRequestMessageBase.init(from:)(v11);
    v9 = OUTLINED_FUNCTION_2();
    v10(v9);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v8;
}

uint64_t sub_223156FC4(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058C38, &qword_22320DE38);
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2231575CC();
  sub_2232007A4();
  sub_22315BBE4(*(v1 + OBJC_IVAR____TtC16SiriMessageTypes19NLRepetitionMessage_repetitionResults), *(v1 + OBJC_IVAR____TtC16SiriMessageTypes19NLRepetitionMessage_repetitionResults));
  v12[1] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057B10, &qword_2232063C0);
  sub_22311A5F0(&qword_280FCA4C8, sub_2230D7754, MEMORY[0x277D83948]);
  sub_223200654();
  if (v2)
  {
    (*(v6 + 8))(v9, v4);
  }

  else
  {

    sub_223190B78(a1);
    return (*(v6 + 8))(v9, v4);
  }
}

uint64_t NLRepetitionMessage.Builder.assistantId.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t NLRepetitionMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t NLRepetitionMessage.Builder.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NLRepetitionMessage.Builder(0) + 24);

  return sub_2230D1480(v3, a1);
}

uint64_t NLRepetitionMessage.Builder.sessionId.setter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_2_24() + 24);

  return sub_2230D4E04(v0, v2);
}

uint64_t NLRepetitionMessage.Builder.requestId.getter()
{
  v1 = *(v0 + *(type metadata accessor for NLRepetitionMessage.Builder(0) + 28));

  return v1;
}

uint64_t NLRepetitionMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for NLRepetitionMessage.Builder(0) + 28));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t NLRepetitionMessage.Builder.resultCandidateId.getter()
{
  v1 = *(v0 + *(type metadata accessor for NLRepetitionMessage.Builder(0) + 32));

  return v1;
}

uint64_t NLRepetitionMessage.Builder.resultCandidateId.setter()
{
  OUTLINED_FUNCTION_6_1();
  v3 = (v1 + *(type metadata accessor for NLRepetitionMessage.Builder(0) + 32));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t NLRepetitionMessage.Builder.repetitionResults.getter()
{
  type metadata accessor for NLRepetitionMessage.Builder(0);
}

uint64_t NLRepetitionMessage.Builder.repetitionResults.setter()
{
  v2 = *(OUTLINED_FUNCTION_2_24() + 36);

  *(v1 + v2) = v0;
  return result;
}

id NLRepetitionMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NLRepetitionMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_2231575CC()
{
  result = qword_280FCE398;
  if (!qword_280FCE398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE398);
  }

  return result;
}

unint64_t sub_223157624()
{
  result = qword_27D058C40;
  if (!qword_27D058C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058C40);
  }

  return result;
}

uint64_t sub_2231576E4(uint64_t a1)
{
  sub_2230D525C(319, &qword_280FCB0A8, &type metadata for MessageSource);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8, MEMORY[0x277D837D0]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_2230F6D30(319);
      if (v7 > 0x3F)
      {
        return v6;
      }

      else
      {
        sub_2231577DC(319);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v2;
}

void sub_2231577DC(uint64_t a1)
{
  if (!qword_280FCA498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D058A08, &qword_22320D060);
    v1 = sub_2232002D4();
    if (!v2)
    {
      atomic_store(v1, &qword_280FCA498);
    }
  }
}

_BYTE *sub_223157840(_BYTE *result, int a2, int a3)
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

unint64_t sub_2231578F0()
{
  result = qword_27D058C48;
  if (!qword_27D058C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058C48);
  }

  return result;
}

unint64_t sub_223157948()
{
  result = qword_280FCE388;
  if (!qword_280FCE388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE388);
  }

  return result;
}

unint64_t sub_2231579A0()
{
  result = qword_280FCE390;
  if (!qword_280FCE390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE390);
  }

  return result;
}

uint64_t sub_223157A4C(uint64_t a1, uint64_t a2)
{
  v2 = sub_223200464();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_223157AC4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_223157A4C(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_223157AF4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2230ECBCC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_223157B28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_223157A4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_223157B50(uint64_t a1)
{
  v2 = sub_223159654();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223157B8C(uint64_t a1)
{
  v2 = sub_223159654();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NLResultCandidateMessage.NLResultCandidateError.hashValue.getter()
{
  sub_223200744();
  MEMORY[0x223DD60B0](0);
  return sub_223200764();
}

void *NLResultCandidateMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v3 = objc_allocWithZone(v1);
  return NLResultCandidateMessage.init(build:)(v2, v0);
}

void *NLResultCandidateMessage.init(build:)(void (*a1)(unsigned __int8 *), uint64_t a2)
{
  v105 = a2;
  v106 = a1;
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058BE8, &qword_22320DAF0);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v2);
  v97 = &v91 - v3;
  v4 = sub_2231FFE44();
  OUTLINED_FUNCTION_9();
  v95 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_2();
  v98 = v8 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v9);
  v11 = &v91 - v10;
  v12 = sub_2231FFDA4();
  OUTLINED_FUNCTION_9();
  v101 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_2();
  v102 = v16 - v15;
  v17 = type metadata accessor for NLResultCandidateMessage.Builder(0);
  v18 = (v17 - 8);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_2();
  v21 = (v20 - v19);
  *v21 = 15;
  *(v21 + 1) = 0;
  *(v21 + 2) = 0;
  v22 = v18[8];
  OUTLINED_FUNCTION_10_8();
  v103 = v12;
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v12);
  v26 = &v21[v18[9]];
  *v26 = 0;
  *(v26 + 1) = 0;
  v27 = &v21[v18[10]];
  *v27 = 0;
  *(v27 + 1) = 0;
  v28 = &v21[v18[11]];
  *v28 = 0;
  *(v28 + 1) = 0;
  v29 = v18[12];
  v99 = v4;
  v100 = v29;
  *&v21[v29] = 0;
  v96 = v18[13];
  OUTLINED_FUNCTION_10_8();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v4);
  v33 = &v21[v18[14]];
  *v33 = 0;
  v33[4] = 1;
  v34 = &v21[v18[15]];
  *v34 = 0;
  v34[8] = 1;
  sub_2231FFE94();
  OUTLINED_FUNCTION_10_8();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
  sub_2231FFE84();
  OUTLINED_FUNCTION_10_8();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v42);
  v43 = &v21[v18[18]];
  *v43 = 0;
  *(v43 + 1) = 0;
  v106(v21);
  v44 = *v21;
  if (v44 != 15 && *(v21 + 2))
  {
    v106 = *(v21 + 2);
    v105 = *(v21 + 1);
    sub_2230D30B8(&v21[v22], v11, &qword_27D0575C0, &qword_2232035E0);
    v45 = v103;
    if (__swift_getEnumTagSinglePayload(v11, 1, v103) == 1)
    {
      sub_2230D4138(v11, &qword_27D0575C0, &qword_2232035E0);
    }

    else
    {
      v46 = v45;
      v48 = v101;
      v47 = v102;
      v49 = v11;
      v50 = v46;
      (*(v101 + 32))(v102, v49);
      if (*(v26 + 1))
      {
        v51 = *(v27 + 1);
        if (v51 && *(v28 + 1) && (v52 = *&v21[v100]) != 0)
        {
          v53 = *(v26 + 1);
          v100 = *(v28 + 1);
          v93 = *v26;
          v94 = v52;
          v54 = *v27;
          v55 = *v28;
          v56 = v97;
          sub_2230D30B8(&v21[v96], v97, &qword_27D058BE8, &qword_22320DAF0);
          v57 = v99;
          if (__swift_getEnumTagSinglePayload(v56, 1, v99) != 1)
          {
            v96 = v55;
            v70 = v95;
            v71 = *(v95 + 32);
            v92 = v54;
            v72 = v51;
            v73 = v98;
            v74 = v71(v98, v56, v57);
            ObjectType = &v91;
            v75 = v107;
            v76 = v107 + OBJC_IVAR____TtC16SiriMessageTypes24NLResultCandidateMessage_voiceIdScore;
            *v76 = *v33;
            *(v76 + 4) = v33[4];
            LOBYTE(v76) = v34[8];
            v77 = v75 + OBJC_IVAR____TtC16SiriMessageTypes24NLResultCandidateMessage_voiceIdClassification;
            *v77 = *v34;
            *(v77 + 8) = v76;
            MEMORY[0x28223BE20](v74);
            *(&v91 - 112) = v44;
            v78 = v106;
            *(&v91 - 13) = v105;
            *(&v91 - 12) = v78;
            v79 = v92;
            v80 = v93;
            *(&v91 - 11) = v102;
            *(&v91 - 10) = v80;
            *(&v91 - 9) = v53;
            *(&v91 - 8) = v79;
            v81 = v94;
            *(&v91 - 7) = v72;
            *(&v91 - 6) = v81;
            v82 = v96;
            *(&v91 - 5) = v73;
            *(&v91 - 4) = v82;
            *(&v91 - 3) = v100;
            *(&v91 - 2) = v21;

            NLResultCandidateMessageBase.init(build:)();
            v68 = v83;
            v84 = v83;

            if (v68)
            {

              v85 = *(v70 + 8);
              v86 = v84;
              v85(v98, v99);
              v87 = OUTLINED_FUNCTION_9_14();
              v88(v87);
              sub_223158440(v21);
            }

            else
            {
              (*(v70 + 8))(v98, v99);
              v89 = OUTLINED_FUNCTION_9_14();
              v90(v89);
              sub_223158440(v21);
            }

            return v68;
          }

          sub_2230D4138(v56, &qword_27D058BE8, &qword_22320DAF0);
          v58 = OUTLINED_FUNCTION_9_14();
          v59(v58);
        }

        else
        {
          (*(v48 + 8))(v102, v103);
        }
      }

      else
      {
        (*(v48 + 8))(v47, v50);
      }
    }
  }

  if (qword_280FCA778 != -1)
  {
    swift_once();
  }

  v60 = sub_223200014();
  __swift_project_value_buffer(v60, qword_280FCE830);
  v61 = sub_223200004();
  v62 = sub_223200254();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v108 = v64;
    *v63 = 136446210;
    v65 = sub_2230F7898(ObjectType);
    v67 = sub_2231A5D38(v65, v66, &v108);

    *(v63 + 4) = v67;
    _os_log_impl(&dword_2230CE000, v61, v62, "Could not build %{public}s: Builder has missing required fields", v63, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v64);
    MEMORY[0x223DD6780](v64, -1, -1);
    MEMORY[0x223DD6780](v63, -1, -1);
  }

  sub_223158440(v21);
  type metadata accessor for NLResultCandidateMessage(0);
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_223158440(uint64_t a1)
{
  v2 = type metadata accessor for NLResultCandidateMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2231584BC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *a1 = a2;

  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  v20 = type metadata accessor for NLResultCandidateMessageBase.Builder(0);
  v21 = v20[6];
  sub_2230D4138(a1 + v21, &qword_27D0575C0, &qword_2232035E0);
  v22 = sub_2231FFDA4();
  (*(*(v22 - 8) + 16))(a1 + v21, a5, v22);
  __swift_storeEnumTagSinglePayload(a1 + v21, 0, 1, v22);
  v23 = (a1 + v20[7]);

  *v23 = a6;
  v23[1] = a7;
  v24 = (a1 + v20[8]);

  *v24 = a8;
  v24[1] = a9;
  v25 = v20[10];

  *(a1 + v25) = a10;
  v26 = v20[11];
  sub_2230D4138(a1 + v26, &qword_27D058BE8, &qword_22320DAF0);
  v27 = sub_2231FFE44();
  (*(*(v27 - 8) + 16))(a1 + v26, a11, v27);
  __swift_storeEnumTagSinglePayload(a1 + v26, 0, 1, v27);
  v28 = (a1 + v20[9]);

  *v28 = a12;
  v28[1] = a13;
  v29 = type metadata accessor for NLResultCandidateMessage.Builder(0);
  sub_223159CBC(a14 + v29[14], a1 + v20[12], &qword_27D058BD8, &qword_22320DAE0);
  sub_223159CBC(a14 + v29[15], a1 + v20[13], &qword_27D058BE0, &qword_22320DAE8);
  v30 = (a14 + v29[16]);
  v32 = *v30;
  v31 = v30[1];
  v33 = (a1 + v20[14]);

  *v33 = v32;
  v33[1] = v31;
  return result;
}

void *NLResultCandidateMessage.init(from:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058C50, &qword_22320E0D0);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223159654();
  sub_223200794();
  if (v2)
  {
    v9 = 0;
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for NLResultCandidateMessage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    OUTLINED_FUNCTION_0();
    v5 = sub_2232004D4();
    v6 = v1 + OBJC_IVAR____TtC16SiriMessageTypes24NLResultCandidateMessage_voiceIdScore;
    *v6 = v5;
    *(v6 + 4) = BYTE4(v5) & 1;
    LOBYTE(v15[0]) = 1;
    OUTLINED_FUNCTION_0();
    v7 = sub_2232004B4();
    v11 = v1 + OBJC_IVAR____TtC16SiriMessageTypes24NLResultCandidateMessage_voiceIdClassification;
    if (v8)
    {
      v12 = 0;
    }

    else
    {
      v12 = v7;
    }

    *v11 = v12;
    *(v11 + 8) = v8 & 1;
    sub_2230F7158(a1, v15);
    v9 = NLResultCandidateMessageBase.init(from:)(v15);
    v13 = OUTLINED_FUNCTION_2();
    v14(v13);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

uint64_t sub_2231589C4(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058C58, &qword_22320E0D8);
  OUTLINED_FUNCTION_9();
  v6 = v5;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v7);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_223159654();
  sub_2232007A4();
  if ((*(v1 + OBJC_IVAR____TtC16SiriMessageTypes24NLResultCandidateMessage_voiceIdScore + 4) & 1) != 0 || (v12 = 0, sub_223200664(), !v2))
  {
    if ((*(v1 + OBJC_IVAR____TtC16SiriMessageTypes24NLResultCandidateMessage_voiceIdClassification + 8) & 1) != 0 || (v13 = 1, sub_223200634(), !v2))
    {
      sub_22315B0F8(a1);
    }
  }

  return (*(v6 + 8))(v9, v4);
}

uint64_t sub_223158B74()
{
  v8 = 0;
  v9 = 0xE000000000000000;
  sub_223200374();
  v7.receiver = v0;
  v7.super_class = type metadata accessor for NLResultCandidateMessage(0);
  v1 = objc_msgSendSuper2(&v7, sel_description);
  v2 = sub_2232000C4();
  v4 = v3;

  MEMORY[0x223DD5AA0](v2, v4);

  MEMORY[0x223DD5AA0](0xD000000000000011, 0x8000000223223FC0);
  v5 = sub_2232006A4();
  MEMORY[0x223DD5AA0](v5);

  MEMORY[0x223DD5AA0](0xD00000000000001BLL, 0x8000000223223FE0);
  type metadata accessor for AFUserIdentityClassfication();
  sub_2232003C4();
  MEMORY[0x223DD5AA0](62, 0xE100000000000000);
  return v8;
}

id sub_223158D18(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_2232000A4();

  return v5;
}

uint64_t NLResultCandidateMessage.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t NLResultCandidateMessage.Builder.requestId.getter()
{
  type metadata accessor for NLResultCandidateMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t NLResultCandidateMessage.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  type metadata accessor for NLResultCandidateMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t NLResultCandidateMessage.Builder.resultCandidateId.getter()
{
  type metadata accessor for NLResultCandidateMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t NLResultCandidateMessage.Builder.resultCandidateId.setter()
{
  OUTLINED_FUNCTION_6_1();
  type metadata accessor for NLResultCandidateMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t NLResultCandidateMessage.Builder.userId.getter()
{
  v2 = (v1 + *(OUTLINED_FUNCTION_12_6() + 36));
  v3 = v2[1];
  *v0 = *v2;
  v0[1] = v3;
}

uint64_t NLResultCandidateMessage.Builder.userId.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  type metadata accessor for NLResultCandidateMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2();
  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t NLResultCandidateMessage.Builder.userParses.getter()
{
  type metadata accessor for NLResultCandidateMessage.Builder(0);
}

uint64_t NLResultCandidateMessage.Builder.userParses.setter()
{
  v2 = *(OUTLINED_FUNCTION_4_21() + 40);

  *(v1 + v2) = v0;
  return result;
}

uint64_t NLResultCandidateMessage.Builder.voiceIdScore.setter()
{
  result = OUTLINED_FUNCTION_4_21();
  v3 = v1 + *(result + 48);
  *v3 = v0;
  *(v3 + 4) = BYTE4(v0) & 1;
  return result;
}

uint64_t NLResultCandidateMessage.Builder.voiceIdClassification.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for NLResultCandidateMessage.Builder(0);
  v6 = v2 + *(result + 52);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t NLResultCandidateMessage.Builder.responseVariantResult.getter()
{
  type metadata accessor for NLResultCandidateMessage.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t NLResultCandidateMessage.Builder.responseVariantResult.setter()
{
  OUTLINED_FUNCTION_6_1();
  type metadata accessor for NLResultCandidateMessage.Builder(0);
  result = OUTLINED_FUNCTION_10_2();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

id NLResultCandidateMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NLResultCandidateMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_223159654()
{
  result = qword_280FCD848;
  if (!qword_280FCD848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD848);
  }

  return result;
}

unint64_t sub_2231596AC()
{
  result = qword_27D058C60;
  if (!qword_27D058C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058C60);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for NLResultCandidateMessage.NLResultCandidateError(_BYTE *result, int a2, int a3)
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

uint64_t sub_223159854(uint64_t a1)
{
  sub_2230D525C(319, &qword_280FCB0A8, &type metadata for MessageSource);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8, MEMORY[0x277D837D0]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_223159A84(319, &qword_280FCE678, MEMORY[0x277CC95F0]);
      if (v7 > 0x3F)
      {
        return v6;
      }

      sub_2230D525C(319, &qword_280FCA740, &type metadata for UserID);
      if (v8 > 0x3F)
      {
        return v6;
      }

      sub_2231562D8(319);
      if (v9 > 0x3F)
      {
        return v6;
      }

      sub_223159A84(319, &qword_280FCE650, MEMORY[0x277D5DBC0]);
      if (v10 > 0x3F)
      {
        return v6;
      }

      sub_2230D525C(319, &qword_280FCA340, MEMORY[0x277D849A8]);
      if (v11 > 0x3F)
      {
        return v6;
      }

      sub_223159A84(319, &qword_280FCA368, type metadata accessor for AFUserIdentityClassfication);
      if (v12 > 0x3F)
      {
        return v6;
      }

      sub_223159A84(319, &qword_280FCE5D0, MEMORY[0x277D5DD80]);
      if (v13 > 0x3F)
      {
        return v6;
      }

      sub_223159A84(319, &qword_280FCE5E0, MEMORY[0x277D5DD70]);
      if (v14 > 0x3F)
      {
        return v6;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v2;
}

void sub_223159A84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2232002D4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for NLResultCandidateMessage.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_223159BB8()
{
  result = qword_27D058C68;
  if (!qword_27D058C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058C68);
  }

  return result;
}

unint64_t sub_223159C10()
{
  result = qword_280FCD838;
  if (!qword_280FCD838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD838);
  }

  return result;
}

unint64_t sub_223159C68()
{
  result = qword_280FCD840;
  if (!qword_280FCD840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD840);
  }

  return result;
}

uint64_t sub_223159CBC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_18_1(a1, a2, a3, a4);
  OUTLINED_FUNCTION_18();
  v5 = OUTLINED_FUNCTION_2_1();
  v6(v5);
  return v4;
}

uint64_t OUTLINED_FUNCTION_12_6()
{

  return type metadata accessor for NLResultCandidateMessage.Builder(0);
}

void NLResultCandidateMessageBase.init(build:)()
{
  OUTLINED_FUNCTION_42();
  v97 = v1;
  v98 = v0;
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058BE8, &qword_22320DAF0);
  OUTLINED_FUNCTION_9_13(v2);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_3();
  v91 = v4;
  OUTLINED_FUNCTION_31_1();
  v5 = sub_2231FFE44();
  OUTLINED_FUNCTION_9();
  v89 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_18();
  v88 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0575C0, &qword_2232035E0);
  OUTLINED_FUNCTION_9_13(v9);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v80 - v11;
  v13 = sub_2231FFDA4();
  OUTLINED_FUNCTION_9();
  v93 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_18();
  v94 = v16;
  v17 = OUTLINED_FUNCTION_31_1();
  v18 = type metadata accessor for NLResultCandidateMessageBase.Builder(v17);
  v19 = (v18 - 8);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_2_2();
  v22 = (v21 - v20);
  *v22 = 15;
  *(v22 + 1) = 0;
  *(v22 + 2) = 0;
  v23 = v19[8];
  OUTLINED_FUNCTION_10_8();
  v95 = v13;
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v13);
  v27 = &v22[v19[9]];
  *v27 = 0;
  *(v27 + 1) = 0;
  v28 = &v22[v19[10]];
  *v28 = 0;
  *(v28 + 1) = 0;
  v29 = &v22[v19[11]];
  *v29 = 0;
  *(v29 + 1) = 0;
  v30 = v19[12];
  *&v22[v30] = 0;
  v90 = v19[13];
  OUTLINED_FUNCTION_10_8();
  v92 = v5;
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v5);
  v34 = v19[14];
  sub_2231FFE94();
  v87 = v34;
  OUTLINED_FUNCTION_10_8();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
  v39 = v19[15];
  sub_2231FFE84();
  v86 = v39;
  OUTLINED_FUNCTION_10_8();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v43);
  v44 = &v22[v19[16]];
  *v44 = 0;
  *(v44 + 1) = 0;
  v97(v22);
  if (*v22 == 15)
  {
    goto LABEL_15;
  }

  v45 = *(v22 + 2);
  if (!v45)
  {
    goto LABEL_15;
  }

  v85 = *v22;
  v97 = *(v22 + 1);
  sub_2230D3008(&v22[v23], v12, &qword_27D0575C0, &qword_2232035E0);
  v46 = v95;
  if (__swift_getEnumTagSinglePayload(v12, 1, v95) == 1)
  {
    sub_2230D40E0(v12, &qword_27D0575C0, &qword_2232035E0);
LABEL_15:
    if (qword_280FCA778 != -1)
    {
      swift_once();
    }

    v57 = sub_223200014();
    __swift_project_value_buffer(v57, qword_280FCE830);
    v58 = sub_223200004();
    v59 = sub_223200254();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v99[0] = v61;
      *v60 = 136446210;
      v62 = sub_2230F7898(ObjectType);
      v64 = sub_2231A5D38(v62, v63, v99);

      *(v60 + 4) = v64;
      _os_log_impl(&dword_2230CE000, v58, v59, "Could not build %{public}s: Builder has missing required fields", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v61);
      MEMORY[0x223DD6780](v61, -1, -1);
      MEMORY[0x223DD6780](v60, -1, -1);
    }

    sub_22315A4FC(v22);
    type metadata accessor for NLResultCandidateMessageBase(0);
    swift_deallocPartialClassInstance();
    goto LABEL_20;
  }

  v84 = v45;
  v47 = v93;
  v48 = v94;
  (*(v93 + 32))(v94, v12, v46);
  v49 = *(v27 + 1);
  if (!v49)
  {
    (*(v47 + 8))(v48, v46);
    goto LABEL_15;
  }

  v50 = v47;
  v51 = *(v28 + 1);
  if (!v51 || !*(v29 + 1))
  {
    (*(v50 + 8))(v94, v46);
    goto LABEL_15;
  }

  v52 = *&v22[v30];
  if (!v52)
  {
    (*(v50 + 8))(v94, v95);
    goto LABEL_15;
  }

  v82 = *(v29 + 1);
  v83 = v49;
  v53 = *v27;
  v81 = *v28;
  v54 = *v29;
  v55 = v91;
  sub_2230D3008(&v22[v90], v91, &qword_27D058BE8, &qword_22320DAF0);
  v56 = v92;
  if (__swift_getEnumTagSinglePayload(v55, 1, v92) == 1)
  {
    sub_2230D40E0(v55, &qword_27D058BE8, &qword_22320DAF0);
    (*(v50 + 8))(v94, v95);
    goto LABEL_15;
  }

  v80 = v53;
  v90 = v54;
  ObjectType = v51;
  v65 = v89;
  v66 = v88;
  (*(v89 + 32))();
  v67 = v98;
  *(v98 + OBJC_IVAR____TtC16SiriMessageTypes28NLResultCandidateMessageBase_userParses) = v52;
  v99[0] = MEMORY[0x277D84F90];
  v68 = *(v52 + 16);

  if (v68)
  {
    sub_22315BE6C(v52, v99);
  }

  v69 = v66;
  (*(v65 + 16))(v67 + OBJC_IVAR____TtC16SiriMessageTypes28NLResultCandidateMessageBase_responseStatusCode, v66, v56);
  sub_2230D3008(&v22[v87], v67 + OBJC_IVAR____TtC16SiriMessageTypes28NLResultCandidateMessageBase_fallbackParse, &qword_27D058BD8, &qword_22320DAE0);
  sub_2230D3008(&v22[v86], v67 + OBJC_IVAR____TtC16SiriMessageTypes28NLResultCandidateMessageBase_languageVariantResult, &qword_27D058BE0, &qword_22320DAE8);
  v70 = *(v44 + 1);
  v71 = (v67 + OBJC_IVAR____TtC16SiriMessageTypes28NLResultCandidateMessageBase_responseVariantResult);
  *v71 = *v44;
  v71[1] = v70;
  MEMORY[0x28223BE20](v70);
  *(&v80 - 80) = v85;
  v72 = v84;
  *(&v80 - 9) = v97;
  *(&v80 - 8) = v72;
  v73 = v94;
  v74 = v80;
  *(&v80 - 7) = v94;
  *(&v80 - 6) = v74;
  v75 = v81;
  *(&v80 - 5) = v83;
  *(&v80 - 4) = v75;
  v76 = v90;
  *(&v80 - 3) = ObjectType;
  *(&v80 - 2) = v76;
  *(&v80 - 1) = v82;

  v77 = UserIdAwareResultCandidateMessageBase.init(build:)(sub_22315D118);
  (*(v65 + 8))(v69, v56);
  v78 = v77;
  sub_22315A4FC(v22);
  if (v77)
  {

    v79 = v78;

    (*(v50 + 8))(v73, v95);
  }

  else
  {

    (*(v50 + 8))(v73, v95);
  }

LABEL_20:
  OUTLINED_FUNCTION_40();
}

{
  NLResultCandidateMessageBase.__allocating_init(build:)();
}

uint64_t sub_22315A4FC(uint64_t a1)
{
  v2 = type metadata accessor for NLResultCandidateMessageBase.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *NLResultCandidateMessageBase.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058BE0, &qword_22320DAE8);
  OUTLINED_FUNCTION_9_13(v3);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_3();
  v92 = v5;
  OUTLINED_FUNCTION_31_1();
  v95 = sub_2231FFE84();
  OUTLINED_FUNCTION_9();
  v89 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_18();
  v90 = v8;
  OUTLINED_FUNCTION_31_1();
  v9 = sub_2231FFFA4();
  v10 = OUTLINED_FUNCTION_9_13(v9);
  v11 = MEMORY[0x28223BE20](v10);
  v91 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v100 = &v87 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058BD8, &qword_22320DAE0);
  OUTLINED_FUNCTION_9_13(v14);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4_3();
  v96 = v16;
  OUTLINED_FUNCTION_31_1();
  v97 = sub_2231FFE94();
  OUTLINED_FUNCTION_9();
  v94 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_18();
  v93 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058BE8, &qword_22320DAF0);
  OUTLINED_FUNCTION_9_13(v20);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v21);
  v23 = &v87 - v22;
  sub_2231FFE44();
  OUTLINED_FUNCTION_9();
  v98 = v25;
  v99 = v24;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_2_2();
  v28 = v27 - v26;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058C70, &unk_22320E3D0);
  OUTLINED_FUNCTION_9();
  v31 = v30;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v32);
  v33 = a1[3];
  v102 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v33);
  sub_22315D158();
  sub_223200794();
  if (v1)
  {
    v34 = 0;
    OUTLINED_FUNCTION_4_22();
    v35 = v102;
  }

  else
  {
    v88 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057B10, &qword_2232063C0);
    v105 = 0;
    sub_22311A5F0(&qword_27D057B18, sub_2230FB7A0, MEMORY[0x277D83978]);
    OUTLINED_FUNCTION_28_2();
    sub_223200554();
    sub_22315B998();
    v33 = v36;

    *(v101 + OBJC_IVAR____TtC16SiriMessageTypes28NLResultCandidateMessageBase_userParses) = v33;
    LOBYTE(v103) = 1;
    OUTLINED_FUNCTION_28_2();
    sub_2232004B4();
    if ((v37 & 1) == 0)
    {
      v38 = v23;
      sub_2231FFE24();
      v28 = v99;
      if (__swift_getEnumTagSinglePayload(v23, 1, v99) != 1)
      {
        v43 = v98;
        v44 = v88;
        (*(v98 + 32))(v88, v38, v28);
        (*(v43 + 16))(v101 + OBJC_IVAR____TtC16SiriMessageTypes28NLResultCandidateMessageBase_responseStatusCode, v44, v28);
        v105 = 2;
        v45 = sub_2230FB7A0();
        OUTLINED_FUNCTION_36_1();
        OUTLINED_FUNCTION_28_2();
        sub_2232004C4();
        v87 = v45;
        if (v104 >> 60 == 15)
        {
          v46 = v101;
          OUTLINED_FUNCTION_10_8();
          v50 = v97;
        }

        else
        {
          OUTLINED_FUNCTION_15_5();
          v51 = OUTLINED_FUNCTION_33_1();
          sub_223110BA0(v51, v52);
          sub_2231FFF94();
          OUTLINED_FUNCTION_9_15();
          sub_22315D944(v53, v54, MEMORY[0x277D5DD78]);
          v55 = v96;
          OUTLINED_FUNCTION_33_1();
          v56 = v97;
          sub_2231FFFD4();
          v57 = OUTLINED_FUNCTION_33_1();
          sub_22310A610(v57, v58);
          OUTLINED_FUNCTION_17_2();
          __swift_storeEnumTagSinglePayload(v59, v60, v61, v56);
          v62 = v93;
          v63 = *(v94 + 32);
          v63(v93, v55, v56);
          v46 = v101;
          v63(v101 + OBJC_IVAR____TtC16SiriMessageTypes28NLResultCandidateMessageBase_fallbackParse, v62, v56);
          OUTLINED_FUNCTION_17_2();
          v50 = v56;
        }

        __swift_storeEnumTagSinglePayload(v47, v48, v49, v50);
        v105 = 3;
        OUTLINED_FUNCTION_36_1();
        OUTLINED_FUNCTION_28_2();
        sub_2232004C4();
        v64 = v98;
        v100 = v29;
        v65 = v104;
        v66 = v102;
        if (v104 >> 60 == 15)
        {
          OUTLINED_FUNCTION_10_8();
          __swift_storeEnumTagSinglePayload(v67, v68, v69, v95);
        }

        else
        {
          v70 = v103;
          OUTLINED_FUNCTION_15_5();
          sub_223110BA0(v70, v65);
          sub_2231FFF94();
          OUTLINED_FUNCTION_8_11();
          sub_22315D944(v71, v72, MEMORY[0x277D5DD68]);
          v73 = v92;
          v97 = v70;
          v74 = v95;
          sub_2231FFFD4();
          sub_22310A610(v97, v65);
          OUTLINED_FUNCTION_17_2();
          __swift_storeEnumTagSinglePayload(v75, v76, v77, v74);
          v78 = *(v89 + 32);
          v78(v90, v73, v74);
          v78(v46 + OBJC_IVAR____TtC16SiriMessageTypes28NLResultCandidateMessageBase_languageVariantResult, v90, v74);
          OUTLINED_FUNCTION_17_2();
          __swift_storeEnumTagSinglePayload(v79, v80, v81, v74);
          v64 = v98;
        }

        LOBYTE(v103) = 4;
        OUTLINED_FUNCTION_28_2();
        v82 = sub_223200494();
        v83 = (v46 + OBJC_IVAR____TtC16SiriMessageTypes28NLResultCandidateMessageBase_responseVariantResult);
        *v83 = v82;
        v83[1] = v84;
        sub_2230F7158(v66, &v103);
        v31 = UserIdAwareResultCandidateMessageBase.init(from:)(&v103);
        (*(v64 + 8))(v88, v99);
        v85 = OUTLINED_FUNCTION_37_0();
        v86(v85, v100);
        __swift_destroy_boxed_opaque_existential_1(v66);
        return v31;
      }

      sub_2230D40E0(v23, &qword_27D058BE8, &qword_22320DAF0);
    }

    sub_22315D1AC();
    swift_allocError();
    swift_willThrow();
    v39 = OUTLINED_FUNCTION_13_3();
    v40(v39);
    OUTLINED_FUNCTION_4_22();
    v34 = 1;
    v35 = v102;
  }

  __swift_destroy_boxed_opaque_existential_1(v35);
  if ((v28 & 1) == 0)
  {
    v41 = v101;
    if (v34)
    {
    }

    if (v33)
    {
      sub_2230D40E0(v41 + OBJC_IVAR____TtC16SiriMessageTypes28NLResultCandidateMessageBase_fallbackParse, &qword_27D058BD8, &qword_22320DAE0);
      if (!v31)
      {
        goto LABEL_16;
      }
    }

    else if (!v31)
    {
LABEL_16:
      type metadata accessor for NLResultCandidateMessageBase(0);
      swift_deallocPartialClassInstance();
      return v31;
    }

    sub_2230D40E0(v41 + OBJC_IVAR____TtC16SiriMessageTypes28NLResultCandidateMessageBase_languageVariantResult, &qword_27D058BE0, &qword_22320DAE8);
    goto LABEL_16;
  }

  return v31;
}

uint64_t sub_22315B0F8(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058BE0, &qword_22320DAE8);
  OUTLINED_FUNCTION_9_13(v4);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4_3();
  v43 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058BD8, &qword_22320DAE0);
  OUTLINED_FUNCTION_9_13(v7);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v41 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058C80, &qword_22320E3E0);
  OUTLINED_FUNCTION_9();
  v13 = v12;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_4_11();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22315D158();
  v15 = v1;
  sub_2232007A4();
  OUTLINED_FUNCTION_22_3();
  sub_22315BC74();
  *&v45 = v16;
  v46 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057B10, &qword_2232063C0);
  sub_22311A5F0(&qword_280FCA4C8, sub_2230D7754, MEMORY[0x277D83948]);
  v17 = v44;
  sub_223200654();
  if (v17)
  {
    (*(v13 + 8))(v2, v11);
  }

  else
  {

    sub_2231FFE34();
    LOBYTE(v45) = 1;
    sub_223200634();
    v44 = v11;
    sub_2230D3008(v1 + OBJC_IVAR____TtC16SiriMessageTypes28NLResultCandidateMessageBase_fallbackParse, v10, &qword_27D058BD8, &qword_22320DAE0);
    v19 = sub_2231FFE94();
    v20 = v13;
    if (__swift_getEnumTagSinglePayload(v10, 1, v19) == 1)
    {
      sub_2230D40E0(v10, &qword_27D058BD8, &qword_22320DAE0);
      v21 = 0;
      v22 = 0xF000000000000000;
      v23 = a1;
    }

    else
    {
      OUTLINED_FUNCTION_9_15();
      sub_22315D944(v24, v25, MEMORY[0x277D5DD78]);
      v26 = v10;
      sub_2231FFFE4();
      v22 = v27;
      v23 = a1;
      OUTLINED_FUNCTION_5_0();
      v30 = v29;
      (*(v28 + 8))(v26, v19);
      v21 = v30;
    }

    *&v45 = v21;
    *(&v45 + 1) = v22;
    v46 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058C08, &qword_22320DB10);
    sub_22315D200();
    OUTLINED_FUNCTION_21_4();
    sub_22310A610(v45, *(&v45 + 1));
    v31 = v43;
    sub_2230D3008(v15 + OBJC_IVAR____TtC16SiriMessageTypes28NLResultCandidateMessageBase_languageVariantResult, v43, &qword_27D058BE0, &qword_22320DAE8);
    v32 = sub_2231FFE84();
    if (__swift_getEnumTagSinglePayload(v31, 1, v32) == 1)
    {
      sub_2230D40E0(v31, &qword_27D058BE0, &qword_22320DAE8);
      v33 = 0;
      v34 = 0xF000000000000000;
    }

    else
    {
      v42 = v23;
      OUTLINED_FUNCTION_8_11();
      sub_22315D944(v35, v36, MEMORY[0x277D5DD68]);
      sub_2231FFFE4();
      v34 = v37;
      OUTLINED_FUNCTION_5_0();
      v40 = v39;
      (*(v38 + 8))(v31);
      v33 = v40;
      v23 = v42;
    }

    *&v45 = v33;
    *(&v45 + 1) = v34;
    v46 = 3;
    OUTLINED_FUNCTION_21_4();
    sub_22310A610(v45, *(&v45 + 1));
    v45 = *(v15 + OBJC_IVAR____TtC16SiriMessageTypes28NLResultCandidateMessageBase_responseVariantResult);
    v46 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057640, &qword_2232037A0);
    sub_2230F994C();
    sub_223200654();
    sub_2231EEBE4(v23);
    return (*(v20 + 8))(v2, v31);
  }
}

void NLResultCandidateMessageBase.__allocating_init(build:)()
{
  _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
}

{
  OUTLINED_FUNCTION_6_1();
  v1 = objc_allocWithZone(v0);
  NLResultCandidateMessageBase.init(build:)();
}

void sub_22315B74C()
{
  OUTLINED_FUNCTION_42();
  v3 = sub_2231FFFA4();
  v4 = OUTLINED_FUNCTION_9_13(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_2();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058C98, &unk_22320E6C0);
  OUTLINED_FUNCTION_9_13(v5);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_11();
  v7 = sub_2231FFE74();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_18();
  OUTLINED_FUNCTION_18_6(v9);
  v32 = MEMORY[0x277D84F90];
  for (i = v11; ; v11 = i)
  {
    v12 = (v11 + 16 * v1);
    v1 = v10 - v1;
    if (!v1)
    {
      break;
    }

    while (1)
    {
      v13 = v10;
      v15 = *(v12 - 1);
      v14 = *v12;
      OUTLINED_FUNCTION_15_5();
      sub_223110BA0(v15, v14);
      sub_2231FFF94();
      v16 = sub_22315D944(&qword_280FCE5F0, MEMORY[0x277D5DCA0], MEMORY[0x277D5DC98]);
      OUTLINED_FUNCTION_20_5(v16);
      if (!v0)
      {
        break;
      }

      OUTLINED_FUNCTION_10_8();
      __swift_storeEnumTagSinglePayload(v17, v18, v19, v7);
      sub_2230D40E0(v2, &qword_27D058C98, &unk_22320E6C0);
      OUTLINED_FUNCTION_29_2();
    }

    OUTLINED_FUNCTION_17_2();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v7);
    v23 = OUTLINED_FUNCTION_35_1();
    v12(v23);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = OUTLINED_FUNCTION_12_7();
      v32 = sub_22314C4A8(v27, v28, v29, v30);
    }

    OUTLINED_FUNCTION_34_1();
    if (v25)
    {
      v32 = sub_22314C4A8((v24 > 1), v14, 1, v32);
    }

    v26 = OUTLINED_FUNCTION_6_13();
    v12(v26);
    v10 = v13;
  }

  OUTLINED_FUNCTION_40();
}

void sub_22315B998()
{
  OUTLINED_FUNCTION_42();
  v3 = sub_2231FFFA4();
  v4 = OUTLINED_FUNCTION_9_13(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_2();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058CA0, &qword_2232194E0);
  OUTLINED_FUNCTION_9_13(v5);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_11();
  v7 = sub_2231FFE14();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_18();
  OUTLINED_FUNCTION_18_6(v9);
  v32 = MEMORY[0x277D84F90];
  for (i = v11; ; v11 = i)
  {
    v12 = (v11 + 16 * v1);
    v1 = v10 - v1;
    if (!v1)
    {
      break;
    }

    while (1)
    {
      v13 = v10;
      v15 = *(v12 - 1);
      v14 = *v12;
      OUTLINED_FUNCTION_15_5();
      sub_223110BA0(v15, v14);
      sub_2231FFF94();
      v16 = sub_22315D944(&qword_280FCE660, MEMORY[0x277D5DB08], MEMORY[0x277D5DB00]);
      OUTLINED_FUNCTION_20_5(v16);
      if (!v0)
      {
        break;
      }

      OUTLINED_FUNCTION_10_8();
      __swift_storeEnumTagSinglePayload(v17, v18, v19, v7);
      sub_2230D40E0(v2, &qword_27D058CA0, &qword_2232194E0);
      OUTLINED_FUNCTION_29_2();
    }

    OUTLINED_FUNCTION_17_2();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v7);
    v23 = OUTLINED_FUNCTION_35_1();
    v12(v23);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = OUTLINED_FUNCTION_12_7();
      v32 = sub_22314C5A8(v27, v28, v29, v30);
    }

    OUTLINED_FUNCTION_34_1();
    if (v25)
    {
      v32 = sub_22314C5A8((v24 > 1), v14, 1, v32);
    }

    v26 = OUTLINED_FUNCTION_6_13();
    v12(v26);
    v10 = v13;
  }

  OUTLINED_FUNCTION_40();
}

void sub_22315BC74()
{
  OUTLINED_FUNCTION_42();
  v1 = v0;
  v3 = v2;
  v36 = v4;
  v6 = v5;
  v8 = v7(0);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v9);
  v12 = &v31 - v11;
  v13 = *(v6 + 16);
  if (v13)
  {
    v15 = *(v10 + 16);
    v14 = v10 + 16;
    v16 = v6 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v34 = *(v14 + 56);
    v35 = v15;
    v33 = v14 - 8;
    v37 = MEMORY[0x277D84F90];
    v31 = v3;
    v32 = v1;
    do
    {
      v17 = v14;
      v35(v12, v16, v8);
      sub_22315D944(v36, v3, v1);
      v18 = sub_2231FFFE4();
      v20 = v19;
      v21 = OUTLINED_FUNCTION_39_0();
      v22(v21);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = OUTLINED_FUNCTION_12_7();
        v37 = sub_22314C6A8(v27, v28, v29, v30);
      }

      v24 = *(v37 + 2);
      v23 = *(v37 + 3);
      if (v24 >= v23 >> 1)
      {
        v37 = sub_22314C6A8((v23 > 1), v24 + 1, 1, v37);
      }

      v25 = v37;
      *(v37 + 2) = v24 + 1;
      v26 = &v25[16 * v24];
      *(v26 + 4) = v18;
      *(v26 + 5) = v20;
      v3 = v31;
      v1 = v32;
      v16 += v34;
      --v13;
      v14 = v17;
    }

    while (v13);
  }

  else
  {
    v37 = MEMORY[0x277D84F90];
  }

  OUTLINED_FUNCTION_40();
}

void sub_22315BE6C(uint64_t result, void *a2)
{
  v5 = 0;
  v6 = *(result + 16);
  do
  {
    if (v6 == v5)
    {
      break;
    }

    v7 = *(sub_2231FFE14() - 8);
    sub_22315C320(result + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v5++, a2);
  }

  while (!v2);
}

uint64_t NLResultCandidateMessageBase.responseStatusCode.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16SiriMessageTypes28NLResultCandidateMessageBase_responseStatusCode;
  sub_2231FFE44();
  OUTLINED_FUNCTION_4();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

unint64_t sub_22315C04C(char a1)
{
  result = 0x7372615072657375;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0x6B6361626C6C6166;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_22315C124@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2230ECF58(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_22315C154@<X0>(unint64_t *a1@<X8>)
{
  result = sub_22315C04C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_22315C19C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2230ECF58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22315C1C4(uint64_t a1)
{
  v2 = sub_22315D158();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22315C200(uint64_t a1)
{
  v2 = sub_22315D158();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t NLResultCandidateMessageBase.NLResultCandidateError.hashValue.getter()
{
  sub_223200744();
  MEMORY[0x223DD60B0](0);
  return sub_223200764();
}

void sub_22315C320(uint64_t a1, void *a2)
{
  sub_2231FFE14();
  sub_22315D944(&qword_280FCE660, MEMORY[0x277D5DB08], MEMORY[0x277D5DB00]);
  v4 = sub_2231FFFE4();
  if (v2)
  {
  }

  else
  {
    v10 = v4;
    v11 = v5;
    v12 = objc_allocWithZone(MEMORY[0x277D5DDE0]);
    if (sub_223155C90(v10, v11))
    {
      MEMORY[0x223DD5B10]();
      sub_223155D04(*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
      sub_223200214();
      return;
    }
  }

  if (qword_280FCA778 != -1)
  {
    swift_once();
  }

  v6 = sub_223200014();
  __swift_project_value_buffer(v6, qword_280FCE830);
  v7 = sub_223200004();
  v8 = sub_223200254();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2230CE000, v7, v8, "Could not convert from Swift to Obj-C?! Skipping this one", v9, 2u);
    MEMORY[0x223DD6780](v9, -1, -1);
  }
}

uint64_t sub_22315C4D4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *a1 = a2;

  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  v18 = type metadata accessor for UserIdAwareResultCandidateMessageBase.Builder(0);
  v19 = v18[6];
  sub_2230D40E0(a1 + v19, &qword_27D0575C0, &qword_2232035E0);
  v20 = sub_2231FFDA4();
  (*(*(v20 - 8) + 16))(a1 + v19, a5, v20);
  __swift_storeEnumTagSinglePayload(a1 + v19, 0, 1, v20);
  v21 = (a1 + v18[7]);

  *v21 = a6;
  v21[1] = a7;
  v22 = (a1 + v18[8]);

  *v22 = a8;
  v22[1] = a9;
  v23 = (a1 + v18[9]);

  *v23 = a10;
  v23[1] = a11;
  return result;
}

uint64_t sub_22315C6E8()
{
  v2 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058BD8, &qword_22320DAE0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4_11();
  v11 = 0;
  v12 = 0xE000000000000000;
  sub_223200374();
  v10.receiver = v0;
  v10.super_class = type metadata accessor for NLResultCandidateMessageBase(0);
  v4 = objc_msgSendSuper2(&v10, sel_description);
  v5 = sub_2232000C4();
  v7 = v6;

  MEMORY[0x223DD5AA0](v5, v7);

  MEMORY[0x223DD5AA0](0xD000000000000030, 0x8000000223223E30);
  sub_2231FFE44();
  sub_2232003C4();
  MEMORY[0x223DD5AA0](0xD000000000000013, 0x8000000223223E70);
  sub_2230D3008(v2 + OBJC_IVAR____TtC16SiriMessageTypes28NLResultCandidateMessageBase_fallbackParse, v1, &qword_27D058BD8, &qword_22320DAE0);
  v8 = sub_223200104();
  MEMORY[0x223DD5AA0](v8);

  MEMORY[0x223DD5AA0](62, 0xE100000000000000);
  return v11;
}

uint64_t NLResultCandidateMessageBase.Builder.assistantId.setter()
{
  OUTLINED_FUNCTION_6_1();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t NLResultCandidateMessageBase.Builder.requestId.getter()
{
  type metadata accessor for NLResultCandidateMessageBase.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t NLResultCandidateMessageBase.Builder.requestId.setter()
{
  OUTLINED_FUNCTION_6_1();
  type metadata accessor for NLResultCandidateMessageBase.Builder(0);
  result = OUTLINED_FUNCTION_10_2();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t NLResultCandidateMessageBase.Builder.resultCandidateId.getter()
{
  type metadata accessor for NLResultCandidateMessageBase.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t NLResultCandidateMessageBase.Builder.resultCandidateId.setter()
{
  OUTLINED_FUNCTION_6_1();
  type metadata accessor for NLResultCandidateMessageBase.Builder(0);
  result = OUTLINED_FUNCTION_10_2();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t NLResultCandidateMessageBase.Builder.userId.getter()
{
  v2 = (v1 + *(OUTLINED_FUNCTION_32_1() + 36));
  v3 = v2[1];
  *v0 = *v2;
  v0[1] = v3;
}

uint64_t NLResultCandidateMessageBase.Builder.userId.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  type metadata accessor for NLResultCandidateMessageBase.Builder(0);
  result = OUTLINED_FUNCTION_10_2();
  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t NLResultCandidateMessageBase.Builder.userParses.getter()
{
  type metadata accessor for NLResultCandidateMessageBase.Builder(0);
}

uint64_t NLResultCandidateMessageBase.Builder.userParses.setter()
{
  v2 = *(OUTLINED_FUNCTION_23_2() + 40);

  *(v1 + v2) = v0;
  return result;
}

uint64_t NLResultCandidateMessageBase.Builder.responseVariantResult.getter()
{
  type metadata accessor for NLResultCandidateMessageBase.Builder(0);
  OUTLINED_FUNCTION_3_0();
  return OUTLINED_FUNCTION_2_1();
}

uint64_t NLResultCandidateMessageBase.Builder.responseVariantResult.setter()
{
  OUTLINED_FUNCTION_6_1();
  type metadata accessor for NLResultCandidateMessageBase.Builder(0);
  result = OUTLINED_FUNCTION_10_2();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_22315CF54()
{

  v1 = OBJC_IVAR____TtC16SiriMessageTypes28NLResultCandidateMessageBase_responseStatusCode;
  sub_2231FFE44();
  OUTLINED_FUNCTION_4();
  (*(v2 + 8))(v0 + v1);
  sub_2230D40E0(v0 + OBJC_IVAR____TtC16SiriMessageTypes28NLResultCandidateMessageBase_fallbackParse, &qword_27D058BD8, &qword_22320DAE0);
  sub_2230D40E0(v0 + OBJC_IVAR____TtC16SiriMessageTypes28NLResultCandidateMessageBase_languageVariantResult, &qword_27D058BE0, &qword_22320DAE8);
}

id NLResultCandidateMessageBase.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NLResultCandidateMessageBase(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_22315D158()
{
  result = qword_280FCD760;
  if (!qword_280FCD760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD760);
  }

  return result;
}

unint64_t sub_22315D1AC()
{
  result = qword_27D058C78;
  if (!qword_27D058C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058C78);
  }

  return result;
}

unint64_t sub_22315D200()
{
  result = qword_280FCE698;
  if (!qword_280FCE698)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D058C08, &qword_22320DB10);
    sub_2230D7754();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCE698);
  }

  return result;
}

unint64_t sub_22315D288()
{
  result = qword_27D058C88;
  if (!qword_27D058C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058C88);
  }

  return result;
}

void sub_22315D2E4(uint64_t a1)
{
  sub_2231FFE44();
  if (v1 <= 0x3F)
  {
    sub_22315D70C(319, &qword_280FCE5D0, MEMORY[0x277D5DD80]);
    if (v2 <= 0x3F)
    {
      sub_22315D70C(319, &qword_280FCE5E0, MEMORY[0x277D5DD70]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

_BYTE *storeEnumTagSinglePayload for NLResultCandidateMessageBase.NLResultCandidateError(_BYTE *result, int a2, int a3)
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

uint64_t sub_22315D538(uint64_t a1)
{
  sub_2230D525C(319, &qword_280FCB0A8, &type metadata for MessageSource);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_2230D525C(319, &qword_280FCA4D8, MEMORY[0x277D837D0]);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_22315D70C(319, &qword_280FCE678, MEMORY[0x277CC95F0]);
      if (v7 > 0x3F)
      {
        return v6;
      }

      sub_2230D525C(319, &qword_280FCA740, &type metadata for UserID);
      if (v8 > 0x3F)
      {
        return v6;
      }

      sub_2231562D8(319);
      if (v9 > 0x3F)
      {
        return v6;
      }

      sub_22315D70C(319, &qword_280FCE650, MEMORY[0x277D5DBC0]);
      if (v10 > 0x3F)
      {
        return v6;
      }

      sub_22315D70C(319, &qword_280FCE5D0, MEMORY[0x277D5DD80]);
      if (v11 > 0x3F)
      {
        return v6;
      }

      sub_22315D70C(319, &qword_280FCE5E0, MEMORY[0x277D5DD70]);
      if (v12 > 0x3F)
      {
        return v6;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v2;
}

void sub_22315D70C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2232002D4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for NLResultCandidateMessageBase.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_22315D840()
{
  result = qword_27D058C90;
  if (!qword_27D058C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D058C90);
  }

  return result;
}

unint64_t sub_22315D898()
{
  result = qword_280FCD750;
  if (!qword_280FCD750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD750);
  }

  return result;
}

unint64_t sub_22315D8F0()
{
  result = qword_280FCD758;
  if (!qword_280FCD758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FCD758);
  }

  return result;
}

uint64_t sub_22315D944(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_20_5(uint64_t a1)
{

  return sub_2231FFFD4();
}

uint64_t OUTLINED_FUNCTION_21_4()
{

  return sub_223200654();
}

uint64_t OUTLINED_FUNCTION_23_2()
{

  return type metadata accessor for NLResultCandidateMessageBase.Builder(0);
}

uint64_t OUTLINED_FUNCTION_32_1()
{

  return type metadata accessor for NLResultCandidateMessageBase.Builder(0);
}

uint64_t OUTLINED_FUNCTION_43_0@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{

  return sub_2230D2E1C(v3, v4 + a3, a1, a2);
}

void *NLRouterIFSessionClientReadyMessage.init(from:)(void *a1)
{
  sub_2230F7158(a1, v4);
  v2 = SessionMessageBase.init(from:)(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

id NLRouterIFSessionClientReadyMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NLRouterIFSessionClientReadyMessage(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for NLRouterIFSessionClientReadyMessage(uint64_t a1)
{
  result = qword_27D058CA8;
  if (!qword_27D058CA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t NLRoutingDecisionMessage.routingDecision.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + OBJC_IVAR____TtC16SiriMessageTypes24NLRoutingDecisionMessage_routingDecision), 0x41uLL);
  memcpy(a1, (v1 + OBJC_IVAR____TtC16SiriMessageTypes24NLRoutingDecisionMessage_routingDecision), 0x41uLL);
  return sub_2230E6EA8(__dst, &v4);
}

id NLRoutingDecisionMessage.__allocating_init(build:)()
{
  OUTLINED_FUNCTION_6_1();
  v2 = objc_allocWithZone(v0);
  return NLRoutingDecisionMessage.init(build:)(v1);
}

id NLRoutingDecisionMessage.init(build:)(void (*a1)(char *))
{
  v2 = v1;
  v4 = type metadata accessor for NLRoutingDecisionMessage.Builder(0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v7 = 0u;
  *(v7 + 1) = 0u;
  *(v7 + 4) = 0;
  *(v7 + 5) = 0x1FFFFFFFELL;
  *(v7 + 6) = 0;
  *(v7 + 7) = 0;
  v7[64] = 0;
  *(v7 + 9) = 0;
  *(v7 + 10) = 0;
  v7[88] = 15;
  *(v7 + 12) = 0;
  *(v7 + 13) = 0;
  v8 = *(v5 + 40);
  v9 = sub_2231FFDA4();
  __swift_storeEnumTagSinglePayload(&v7[v8], 1, 1, v9);
  v10 = &v7[*(v5 + 44)];
  *v10 = 0;
  *(v10 + 1) = 0;
  a1(v7);
  v11 = memcpy(__dst, v7, 0x41uLL);
  v12 = __dst[5];
  if ((__dst[5] & 0x7FFFFFFFFFFFFFFELL) == 0x1FFFFFFFELL || (v13 = *(v7 + 10)) == 0)
  {
    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_280FCA778);
    }

    v19 = sub_223200014();
    __swift_project_value_buffer(v19, qword_280FCE830);
    v20 = sub_223200004();
    v21 = sub_223200254();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = OUTLINED_FUNCTION_72();
      *v22 = 0;
      _os_log_impl(&dword_2230CE000, v20, v21, "NLRoutingDecisionMessage: Unable to create NLRoutingDecisionMessage, missing required fields", v22, 2u);
      MEMORY[0x223DD6780](v22, -1, -1);
    }

    sub_22315DFC8(v7);
    type metadata accessor for NLRoutingDecisionMessage(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    v14 = *(v7 + 9);
    v15 = v2 + OBJC_IVAR____TtC16SiriMessageTypes24NLRoutingDecisionMessage_routingDecision;
    v16 = *(v7 + 1);
    *v15 = *v7;
    *(v15 + 16) = v16;
    *(v15 + 32) = *(v7 + 4);
    *(v15 + 40) = v12;
    *(v15 + 48) = *(v7 + 3);
    *(v15 + 64) = v7[64];
    v17 = (v2 + OBJC_IVAR____TtC16SiriMessageTypes24NLRoutingDecisionMessage_trpCandidateId);
    *v17 = v14;
    v17[1] = v13;
    MEMORY[0x28223BE20](v11);
    v24[-2] = v7;
    sub_2230E3D68(__dst, v24, &qword_27D057DC8, &qword_22320E730);

    v18 = RequestMessageBase.init(build:)(sub_223164D4C);
    sub_22315DFC8(v7);
  }

  return v18;
}

uint64_t sub_22315DFC8(uint64_t a1)
{
  v2 = type metadata accessor for NLRoutingDecisionMessage.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22315E044(uint64_t a1, uint64_t a2)
{
  *a1 = *(a2 + 88);
  v5 = *(a2 + 96);
  v4 = *(a2 + 104);

  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  v6 = type metadata accessor for NLRoutingDecisionMessage.Builder(0);
  v7 = *(v6 + 32);
  v8 = type metadata accessor for RequestMessageBase.Builder(0);
  sub_2230DAEC8(a2 + v7, a1 + *(v8 + 24));
  v9 = (a2 + *(v6 + 36));
  v11 = *v9;
  v10 = v9[1];
  v12 = (a1 + *(v8 + 28));

  *v12 = v11;
  v12[1] = v10;
  return result;
}

uint64_t NLRoutingDecisionMessage.RoutingDecision.routingDecisionDebugString.getter()
{
  v1 = *v0;
  v2 = v0[5];
  result = 0x5869726973;
  switch((v2 >> 60) & 7)
  {
    case 1uLL:
      v4 = 0x525869726973;
      goto LABEL_11;
    case 2uLL:
      v4 = 0x527972657571;
LABEL_11:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x7765000000000000;
      break;
    case 3uLL:
      result = 2019650145;
      break;
    case 4uLL:
      v5 = v0[4];
      v6 = v0[6] | v0[7];
      v7 = v0[3] | v0[2] | v0[1];
      if (!*(v0 + 64) && (v2 == 0x4000000000000000 ? (v8 = (v6 | v1 | v5 | v7) == 0) : (v8 = 0), v8))
      {
        result = 0x6C61465869726973;
      }

      else
      {
        v11 = v1 == 1 && (v6 | v5 | v7) == 0 && v2 == 0x4000000000000000;
        if (*(v0 + 64) == 0 && v11)
        {
          result = 0x72656E6E616C70;
        }

        else
        {
          result = 0x686372616573;
        }
      }

      break;
    default:
      return result;
  }

  return result;
}

BOOL NLRoutingDecisionMessage.RoutingDecision.shouldBeHandledBySiriX.getter()
{
  memcpy(__dst, v0, 0x41uLL);
  v1 = __dst[0];
  result = 1;
  switch((__dst[5] >> 60) & 7)
  {
    case 2:
      v3 = *(__dst[0] + 16);
      if (v3 >= 2)
      {
        if (qword_280FCA778 != -1)
        {
          OUTLINED_FUNCTION_1_0(&qword_280FCA778);
        }

        v4 = sub_223200014();
        __swift_project_value_buffer(v4, qword_280FCE830);

        v5 = sub_223200004();
        v6 = sub_223200254();
        sub_2230E6410(__dst);
        if (os_log_type_enabled(v5, v6))
        {
          v7 = swift_slowAlloc();
          v8 = swift_slowAlloc();
          v22 = v8;
          *v7 = 136315138;
          v9 = MEMORY[0x223DD5B40](v1, &type metadata for NLRoutingDecisionMessage.QueryRewrite);
          v11 = sub_2231A5D38(v9, v10, &v22);

          *(v7 + 4) = v11;
          OUTLINED_FUNCTION_38_0();
          _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v8);
          MEMORY[0x223DD6780](v8, -1, -1);
          OUTLINED_FUNCTION_51_0();
        }

        v3 = *(v1 + 16);
      }

      if (v3)
      {
        result = *(v1 + 64) < 0x40u;
      }

      else
      {
        if (qword_280FCA778 != -1)
        {
          OUTLINED_FUNCTION_1_0(&qword_280FCA778);
        }

        v18 = sub_223200014();
        __swift_project_value_buffer(v18, qword_280FCE830);
        v19 = sub_223200004();
        v20 = sub_223200254();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = OUTLINED_FUNCTION_72();
          *v21 = 0;
          _os_log_impl(&dword_2230CE000, v19, v20, ".queryRewrite case without any QueryRewrite subcomponent.", v21, 2u);
          MEMORY[0x223DD6780](v21, -1, -1);
        }

        result = 1;
      }

      break;
    case 3:
      goto LABEL_15;
    case 4:
      if (LOBYTE(__dst[8]) || (__dst[5] == 0x4000000000000000 ? (v17 = (__dst[6] | __dst[7] | __dst[0] | __dst[4] | __dst[3] | __dst[2] | __dst[1]) == 0) : (v17 = 0), !v17))
      {
LABEL_15:
        result = 0;
      }

      break;
    default:
      return result;
  }

  return result;
}

uint64_t NLRoutingDecisionMessage.RoutingDecision.SiriXRoute.init(_:)@<X0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_83();

  *a2 = v4;
  swift_getKeyPath();
  OUTLINED_FUNCTION_83();

  *(a2 + 16) = v4;
  swift_getKeyPath();
  OUTLINED_FUNCTION_83();

  *(a2 + 32) = v4;
  swift_getKeyPath();
  OUTLINED_FUNCTION_83();

  *(a2 + 33) = v4;
  return result;
}

uint64_t static NLRoutingDecisionMessage.RoutingDecision.SiriXRoute.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = *(a1 + 33);
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v12 = *(a2 + 33);
  if (v3)
  {
    if (!v8)
    {
      return 0;
    }

    v13 = *a1 == *a2 && v3 == v8;
    if (!v13 && (sub_2232006B4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (!v5)
  {
    result = 0;
    if (v10)
    {
      return result;
    }

    goto LABEL_19;
  }

  if (!v10)
  {
    return 0;
  }

  if (v4 == v9 && v5 == v10)
  {
    if (v6 == v11)
    {
LABEL_22:
      if (v7 == 2)
      {
        if (v12 != 2)
        {
          return 0;
        }
      }

      else if (v12 == 2 || ((v12 ^ v7) & 1) != 0)
      {
        return 0;
      }

      return 1;
    }

    return 0;
  }

  v15 = OUTLINED_FUNCTION_2_1();
  v17 = OUTLINED_FUNCTION_33_0(v15, v16);
  result = 0;
  if ((v17 & 1) == 0)
  {
    return result;
  }

LABEL_19:
  if (((v6 ^ v11) & 1) == 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_22315E6C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000012 && 0x8000000223220F70 == a2;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x8000000223224190 == a2;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x80000002232241B0 == a2;
      if (v7 || (sub_2232006B4() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD00000000000001BLL && 0x80000002232241D0 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_2232006B4();

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

unint64_t sub_22315E824(char a1)
{
  result = 0xD000000000000012;
  switch(a1)
  {
    case 1:
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0xD00000000000001BLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22315E8A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22315E6C4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22315E8D0(uint64_t a1)
{
  v2 = sub_223164D54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22315E90C(uint64_t a1)
{
  v2 = sub_223164D54();

  return MEMORY[0x2821FE720](a1, v2);
}

void NLRoutingDecisionMessage.RoutingDecision.SiriXRoute.encode(to:)()
{
  OUTLINED_FUNCTION_8_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058CB8, &qword_22320E7B8);
  OUTLINED_FUNCTION_9();
  v6 = v5;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_29(v3, v3[3]);
  sub_223164D54();
  OUTLINED_FUNCTION_55();
  sub_2232007A4();
  OUTLINED_FUNCTION_37_1();
  sub_2232005C4();
  if (!v0)
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_8_2();
    sub_2232005C4();
    OUTLINED_FUNCTION_77();
    sub_223164DA8();
    OUTLINED_FUNCTION_8_2();
    sub_2232005E4();
    sub_223164DFC();
    OUTLINED_FUNCTION_8_2();
    sub_2232005E4();
  }

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_9_0();
}

void NLRoutingDecisionMessage.RoutingDecision.SiriXRoute.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_8_1();
  v28 = v27;
  v30 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058CD0, &qword_22320E7C0);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_29(v28, v28[3]);
  sub_223164D54();
  sub_223200794();
  if (v26)
  {
    __swift_destroy_boxed_opaque_existential_1(v28);
  }

  else
  {
    v32 = sub_223200494();
    v39 = v33;
    OUTLINED_FUNCTION_54();
    v37 = sub_223200494();
    v38 = v34;
    OUTLINED_FUNCTION_77();
    sub_223164E50();
    OUTLINED_FUNCTION_22_4();
    sub_2232004C4();
    sub_223164EA4();
    OUTLINED_FUNCTION_22_4();
    sub_2232004C4();
    v35 = OUTLINED_FUNCTION_29_3();
    v36(v35);
    *v30 = v32;
    *(v30 + 8) = v39;
    *(v30 + 16) = v37;
    *(v30 + 24) = v38;
    *(v30 + 32) = a14;
    *(v30 + 33) = a12;

    __swift_destroy_boxed_opaque_existential_1(v28);
  }

  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_9_0();
}

uint64_t static NLRoutingDecisionMessage.RoutingDecision.== infix(_:_:)(uint64_t a1, const void *a2)
{
  OUTLINED_FUNCTION_71(&v35);
  memcpy(__dst, a2, 0x41uLL);
  OUTLINED_FUNCTION_71(v45);
  memcpy(v46, a2, sizeof(v46));
  v3 = v38 | (v39 << 32);
  switch((v40 >> 60) & 7)
  {
    case 1uLL:
      if ((*(&__dst[2] + 1) & 0x7000000000000000) != 0x1000000000000000)
      {
        goto LABEL_48;
      }

      v4 = sub_22315F340(v35, *&__dst[0]);
      goto LABEL_19;
    case 2uLL:
      if ((*(&__dst[2] + 1) & 0x7000000000000000) != 0x2000000000000000)
      {
        goto LABEL_48;
      }

      sub_2230E6EA8(__dst, v27);
      sub_2230E6EA8(&v35, v27);
      v9 = OUTLINED_FUNCTION_2_1();
      v11 = sub_22315F3CC(v9, v10);
      goto LABEL_20;
    case 3uLL:
      if ((*(&__dst[2] + 1) & 0x7000000000000000) != 0x3000000000000000)
      {
        goto LABEL_48;
      }

      v27[0] = v35;
      v27[1] = v36;
      v28 = v37;
      v29 = v38;
      v30 = WORD2(v3);
      v31 = v40 & 0x8FFFFFFFFFFFFFFFLL;
      v32 = v41;
      v33 = v42;
      v34 = v43;
      v21 = __dst[0];
      v22 = __dst[1];
      v23 = *&__dst[2];
      v24 = *(&__dst[2] + 1) & 0x8FFFFFFFFFFFFFFFLL;
      v25 = __dst[3];
      v26 = __dst[4];
      sub_2230E6EA8(__dst, v19);
      sub_2230E6EA8(&v35, v19);
      sub_2230E6EA8(__dst, v19);
      sub_2230E6EA8(&v35, v19);
      v11 = static AjaxMetadata.== infix(_:_:)(v27, &v21);
      sub_2230E3C4C(v45, &qword_27D058CE8, &qword_22320E7C8);
      sub_2230E6410(__dst);
      sub_2230E6410(&v35);
      return v11 & 1;
    case 4uLL:
      v5 = v37 | (HIBYTE(v37) << 8) | (v3 << 16);
      v6 = v36 | *(&v35 + 1);
      if (!v43 && v40 == 0x4000000000000000 && !(v6 | v35 | *(&v36 + 1) | v41 | v42 | v5))
      {
        OUTLINED_FUNCTION_35_2();
        if (!v12)
        {
          goto LABEL_48;
        }

        if (LOBYTE(__dst[4]))
        {
          goto LABEL_48;
        }

        if (v7 != 0x4000000000000000)
        {
          goto LABEL_48;
        }

        v8 = vorrq_s8(*(__dst + 8), *(&__dst[1] + 8));
        if (*&vorr_s8(*v8.i8, *&vextq_s8(v8, v8, 8uLL)) | *&__dst[3] | *(&__dst[3] + 1) | *&__dst[0])
        {
          goto LABEL_48;
        }

LABEL_47:
        sub_2230E3C4C(v45, &qword_27D058CE8, &qword_22320E7C8);
        v11 = 1;
        return v11 & 1;
      }

      if (v43 || (v40 == 0x4000000000000000 ? (v12 = v35 == 1) : (v12 = 0), !v12 || v6 | *(&v36 + 1) | v41 | v42 | v5))
      {
        OUTLINED_FUNCTION_35_2();
        if (!v12 || LOBYTE(__dst[4]) || __dst[3] != 0)
        {
          goto LABEL_48;
        }

        if (v15 != 0x4000000000000000 || *&__dst[0] != 2)
        {
          goto LABEL_48;
        }
      }

      else
      {
        OUTLINED_FUNCTION_35_2();
        if (!v12 || LOBYTE(__dst[4]) || __dst[3] != 0)
        {
          goto LABEL_48;
        }

        if (v13 != 0x4000000000000000 || *&__dst[0] != 1)
        {
          goto LABEL_48;
        }
      }

      v17 = vorrq_s8(*(__dst + 8), *(&__dst[1] + 8));
      if (!*&vorr_s8(*v17.i8, *&vextq_s8(v17, v17, 8uLL)))
      {
        goto LABEL_47;
      }

LABEL_48:
      sub_2230E6EA8(__dst, v27);
      sub_2230E6EA8(&v35, v27);
      sub_2230E3C4C(v45, &qword_27D058CE8, &qword_22320E7C8);
      v11 = 0;
      return v11 & 1;
    default:
      if ((HIBYTE(__dst[2]) & 0x70) != 0)
      {
        goto LABEL_48;
      }

      v21 = v35;
      v22 = v36;
      LOWORD(v23) = v37 & 0xFF01;
      v19[0] = __dst[0];
      v19[1] = __dst[1];
      v20 = __dst[2] & 0xFF01;
      v4 = static NLRoutingDecisionMessage.RoutingDecision.SiriXRoute.== infix(_:_:)(&v21, v19);
LABEL_19:
      v11 = v4;
      sub_2230E6EA8(__dst, v27);
      sub_2230E6EA8(&v35, v27);
LABEL_20:
      sub_2230E3C4C(v45, &qword_27D058CE8, &qword_22320E7C8);
      return v11 & 1;
  }
}

uint64_t sub_22315F180(unint64_t a1, unint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_223200414())
  {
    if (a2 >> 62)
    {
      result = sub_223200414();
    }

    else
    {
      result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (i != result)
    {
      v20 = 0;
      return v20 & 1;
    }

    if (!i)
    {
      goto LABEL_31;
    }

    v7 = a1 & 0xFFFFFFFFFFFFFF8;
    v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a1 & 0x8000000000000000) != 0)
    {
      v7 = a1;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    v21 = a2 & 0xFFFFFFFFFFFFFF8;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_31:
      v20 = 1;
      return v20 & 1;
    }

    if (i < 0)
    {
      break;
    }

    v4 = sub_223167B64();
    v11 = a2 & 0xC000000000000001;
    v12 = 4;
    v13 = a2;
    while (1)
    {
      v14 = v12 - 4;
      v15 = v12 - 3;
      if (__OFADD__(v12 - 4, 1))
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x223DD5CE0](v12 - 4, a1);
      }

      else
      {
        if (v14 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }

        v16 = *(a1 + 8 * v12);
      }

      v17 = v16;
      if (v11)
      {
        v18 = MEMORY[0x223DD5CE0](v12 - 4, a2);
      }

      else
      {
        if (v14 >= *(v21 + 16))
        {
          goto LABEL_35;
        }

        v18 = *(a2 + 8 * v12);
      }

      v19 = v18;
      v20 = sub_2232002B4();

      if (v20)
      {
        ++v12;
        a2 = v13;
        if (v15 != i)
        {
          continue;
        }
      }

      return v20 & 1;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_22315F340(uint64_t a1, uint64_t a2)
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
      if (!v5 && (sub_2232006B4() & 1) == 0)
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

uint64_t sub_22315F3CC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    v13 = 0;
    return v13 & 1;
  }

  if (!v2 || result == a2)
  {
    v13 = 1;
    return v13 & 1;
  }

  v3 = (a2 + 64);
  v4 = (result + 64);
  while (1)
  {
    v5 = *(v4 - 4);
    v6 = *(v4 - 3);
    v7 = *(v4 - 2);
    v8 = *(v4 - 1);
    v9 = *v4;
    v20[0] = v5;
    v20[1] = v6;
    v20[2] = v7;
    v20[3] = v8;
    v21 = v9;
    if (!v2)
    {
      break;
    }

    v14 = v2;
    v11 = *(v3 - 2);
    v15 = *(v3 - 1);
    v16 = *(v3 - 3);
    v18[0] = *(v3 - 4);
    v10 = v18[0];
    v18[1] = v16;
    v18[2] = v11;
    v18[3] = v15;
    v19 = *v3;
    v12 = v19;
    sub_2231654C8(v5, v6, v7, v8, v9);
    sub_2231654C8(v10, v16, v11, v15, v12);
    v17 = static NLRoutingDecisionMessage.QueryRewrite.== infix(_:_:)(v20, v18);
    sub_223167BA8(v10, v16, v11, v15, v12);
    result = sub_223167BA8(v5, v6, v7, v8, v9);
    v13 = v17;
    if (v17)
    {
      v4 += 40;
      v3 += 40;
      v2 = v14 - 1;
      if (v14 != 1)
      {
        continue;
      }
    }

    return v13 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_22315F524(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5869726973 && a2 == 0xE500000000000000;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C61465869726973 && a2 == 0xED00006B6361626CLL;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7765525869726973 && a2 == 0xEC00000065746972;
      if (v7 || (sub_2232006B4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x72656E6E616C70 && a2 == 0xE700000000000000;
        if (v8 || (sub_2232006B4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x686372616573 && a2 == 0xE600000000000000;
          if (v9 || (sub_2232006B4() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7765527972657571 && a2 == 0xEC00000065746972;
            if (v10 || (sub_2232006B4() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 2019650145 && a2 == 0xE400000000000000)
            {

              return 6;
            }

            else
            {
              v12 = sub_2232006B4();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_22315F768(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x636E617265747475 && a2 == 0xEA00000000007365)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2232006B4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22315F804(uint64_t a1)
{
  v2 = sub_223164EF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22315F840(uint64_t a1)
{
  v2 = sub_223164EF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22315F87C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22315F524(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22315F8A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22315F760();
  *a1 = result;
  return result;
}

uint64_t sub_22315F8CC(uint64_t a1)
{
  v2 = sub_2230E702C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22315F908(uint64_t a1)
{
  v2 = sub_2230E702C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22315F944(uint64_t a1)
{
  v2 = sub_223165048();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22315F980(uint64_t a1)
{
  v2 = sub_223165048();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22315F9BC(uint64_t a1)
{
  v2 = sub_223164F4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22315F9F8(uint64_t a1)
{
  v2 = sub_223164F4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22315FA34(uint64_t a1)
{
  v2 = sub_223164FF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22315FA70(uint64_t a1)
{
  v2 = sub_223164FF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22315FAAC(uint64_t a1)
{
  v2 = sub_2231650F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22315FAE8(uint64_t a1)
{
  v2 = sub_2231650F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22315FB24(uint64_t a1)
{
  v2 = sub_2230E7228();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22315FB60(uint64_t a1)
{
  v2 = sub_2230E7228();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22315FBA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22315F768(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22315FBCC(uint64_t a1)
{
  v2 = sub_22316509C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22315FC08(uint64_t a1)
{
  v2 = sub_22316509C();

  return MEMORY[0x2821FE720](a1, v2);
}

void NLRoutingDecisionMessage.RoutingDecision.init(from:)()
{
  OUTLINED_FUNCTION_8_1();
  v120 = v0;
  v4 = v3;
  v115 = v5;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058D68, &qword_22320E820);
  OUTLINED_FUNCTION_9();
  v111 = v6;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_3();
  v118 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058D70, &qword_22320E828);
  OUTLINED_FUNCTION_9();
  v109 = v9;
  v110 = v10;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4_3();
  v114 = v12;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058D78, &qword_22320E830);
  OUTLINED_FUNCTION_9();
  v107 = v13;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_4_3();
  v113 = v15;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058D80, &qword_22320E838);
  OUTLINED_FUNCTION_9();
  v103 = v16;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4_3();
  v112 = v18;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058D88, &qword_22320E840);
  OUTLINED_FUNCTION_9();
  v106 = v19;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_4_3();
  v116 = v21;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058D90, &qword_22320E848);
  OUTLINED_FUNCTION_9();
  v101 = v22;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v23);
  v25 = v96 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058D98, &qword_22320E850);
  OUTLINED_FUNCTION_9();
  v100 = v27;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_4_11();
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058DA0, &unk_22320E858);
  OUTLINED_FUNCTION_9();
  v31 = v30;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_1();
  v33 = v4[3];
  v119 = v4;
  OUTLINED_FUNCTION_29(v4, v33);
  sub_2230E702C();
  OUTLINED_FUNCTION_50_0();
  v34 = v120;
  sub_223200794();
  if (v34)
  {
    goto LABEL_9;
  }

  v97 = v25;
  v98 = v1;
  v96[1] = v26;
  v35 = v117;
  v120 = v31;
  v36 = sub_223200594();
  sub_2230E0B80(v36, 0);
  v40 = v29;
  if (v38 == v39 >> 1)
  {
LABEL_8:
    v47 = sub_2232003A4();
    OUTLINED_FUNCTION_26(v47, MEMORY[0x277D841A0]);
    v49 = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057788, &qword_223203DF0);
    *v49 = &type metadata for NLRoutingDecisionMessage.RoutingDecision;
    v50 = sub_223200484();
    OUTLINED_FUNCTION_48(v50);
    OUTLINED_FUNCTION_5_0();
    (*(v51 + 104))(v49);
    swift_willThrow();
    swift_unknownObjectRelease();
    v52 = OUTLINED_FUNCTION_26_1();
    v53(v52, v40);
LABEL_9:
    v54 = v119;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v54);
    OUTLINED_FUNCTION_9_0();
    return;
  }

  v99 = v2;
  v96[0] = 0;
  if (v38 < (v39 >> 1))
  {
    v41 = *(v37 + v38);
    sub_2230E0B40(v38 + 1);
    v43 = v42;
    v45 = v44;
    swift_unknownObjectRelease();
    if (v43 == v45 >> 1)
    {
      v46 = v115;
      switch(v41)
      {
        case 1:
          LOBYTE(v121) = 1;
          sub_2230E7228();
          v65 = v97;
          OUTLINED_FUNCTION_2_25(&type metadata for NLRoutingDecisionMessage.RoutingDecision.SiriXFallbackCodingKeys, &v121);
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_27_1();
          v66(v65, v102);
          v67 = OUTLINED_FUNCTION_10_9();
          v68(v67);
          OUTLINED_FUNCTION_33_2();
          v84 = 0uLL;
          goto LABEL_15;
        case 2:
          LOBYTE(v121) = 2;
          sub_22316509C();
          OUTLINED_FUNCTION_2_25(&type metadata for NLRoutingDecisionMessage.RoutingDecision.SiriXRewriteCodingKeys, &v121);
          v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D059880, &unk_223214380);
          sub_223165264(&qword_27D058DB8, MEMORY[0x277D83808], MEMORY[0x277D83978]);
          OUTLINED_FUNCTION_80(v59, v60);
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_27_1();
          v72 = OUTLINED_FUNCTION_47_2();
          v73(v72);
          v74 = OUTLINED_FUNCTION_16_5();
          v75(v74);
          LOBYTE(v87) = 0;
          v83 = 0;
          *&v84 = v121;
          v82 = 0x1000000000000000;
          break;
        case 3:
          LOBYTE(v121) = 3;
          sub_223165048();
          v61 = v112;
          OUTLINED_FUNCTION_2_25(&type metadata for NLRoutingDecisionMessage.RoutingDecision.PlannerCodingKeys, &v121);
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_27_1();
          v62(v61, v104);
          v63 = OUTLINED_FUNCTION_10_9();
          v64(v63);
          OUTLINED_FUNCTION_33_2();
          v84 = xmmword_22320E720;
          goto LABEL_15;
        case 4:
          LOBYTE(v121) = 4;
          sub_223164FF4();
          v55 = v113;
          OUTLINED_FUNCTION_2_25(&type metadata for NLRoutingDecisionMessage.RoutingDecision.SearchCodingKeys, &v121);
          swift_unknownObjectRelease();
          OUTLINED_FUNCTION_27_1();
          v56(v55, v35);
          v57 = OUTLINED_FUNCTION_10_9();
          v58(v57);
          OUTLINED_FUNCTION_33_2();
          v84 = xmmword_22320E710;
LABEL_15:
          v85 = 0uLL;
          v82 = 0x4000000000000000;
          v81 = 0uLL;
          break;
        case 5:
          LOBYTE(v121) = 5;
          sub_223164F4C();
          OUTLINED_FUNCTION_2_25(&type metadata for NLRoutingDecisionMessage.RoutingDecision.QueryRewriteCodingKeys, &v121);
          v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058D38, &unk_22320E810);
          sub_223165198(&qword_27D058DA8, sub_223165210, MEMORY[0x277D83978]);
          OUTLINED_FUNCTION_80(v69, v70);
          swift_unknownObjectRelease();
          v88 = OUTLINED_FUNCTION_47_2();
          v89(v88);
          v90 = OUTLINED_FUNCTION_16_5();
          v91(v90);
          LOBYTE(v87) = 0;
          v83 = 0;
          *&v84 = v121;
          v82 = 0x2000000000000000;
          break;
        case 6:
          LOBYTE(v121) = 6;
          sub_223164EF8();
          OUTLINED_FUNCTION_2_25(&type metadata for NLRoutingDecisionMessage.RoutingDecision.AjaxCodingKeys, &v121);
          sub_223129A24();
          v71 = v105;
          OUTLINED_FUNCTION_22_4();
          sub_223200554();
          swift_unknownObjectRelease();
          v92 = OUTLINED_FUNCTION_42_2();
          v93(v92, v71);
          v94 = OUTLINED_FUNCTION_52_0();
          v95(v94);
          v84 = v121;
          v85 = v122;
          v86 = v123;
          v81 = v125;
          v80 = v126;
          v82 = v124 & 0x8000000000000001 | 0x3000000000000000;
          v87 = v123 >> 8;
          v83 = v123 & 0xFFFFFFFFFFFF0000;
          break;
        default:
          LOBYTE(v121) = 0;
          sub_2231650F0();
          OUTLINED_FUNCTION_2_25(&type metadata for NLRoutingDecisionMessage.RoutingDecision.SiriXCodingKeys, &v121);
          sub_2231652D0();
          OUTLINED_FUNCTION_44_2();
          sub_223200554();
          swift_unknownObjectRelease();
          v76 = OUTLINED_FUNCTION_47_2();
          v77(v76);
          v78 = OUTLINED_FUNCTION_52_0();
          v79(v78);
          v82 = 0;
          v83 = 0;
          v84 = v121;
          v85 = v122;
          v86 = v123;
          LOBYTE(v87) = BYTE1(v123);
          break;
      }

      v54 = v119;
      *v46 = v84;
      *(v46 + 16) = v85;
      *(v46 + 32) = v83 | (v87 << 8) | v86;
      *(v46 + 40) = v82;
      *(v46 + 48) = v81;
      *(v46 + 64) = v80;
      goto LABEL_10;
    }

    v40 = v29;
    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_2231607B0(uint64_t a1)
{
  v2 = sub_223165324();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231607EC(uint64_t a1)
{
  v2 = sub_223165324();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_223160828(uint64_t a1)
{
  v2 = sub_223165378();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223160864(uint64_t a1)
{
  v2 = sub_223165378();

  return MEMORY[0x2821FE720](a1, v2);
}

void NLRoutingDecisionMessage.CorrectionOutcome.encode(to:)()
{
  OUTLINED_FUNCTION_8_1();
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058DC8, &qword_22320E868);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_35_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058DD0, &qword_22320E870);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_3(v1);
  sub_223165324();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_20();
  sub_2232007A4();
  sub_223165378();
  OUTLINED_FUNCTION_9_16();
  sub_2232005B4();
  v4 = OUTLINED_FUNCTION_28();
  v5(v4);
  v6 = OUTLINED_FUNCTION_1_10();
  v7(v6);
  OUTLINED_FUNCTION_9_0();
}

void NLRoutingDecisionMessage.CorrectionOutcome.init(from:)()
{
  OUTLINED_FUNCTION_8_1();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058DE8, &qword_22320E878);
  OUTLINED_FUNCTION_9();
  v29 = v4;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_30_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058DF0, &qword_22320E880);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_16();
  v7 = v2[3];
  v8 = v2[4];
  OUTLINED_FUNCTION_5_3(v2);
  v9 = sub_223165324();
  OUTLINED_FUNCTION_65(&type metadata for NLRoutingDecisionMessage.CorrectionOutcome.CodingKeys, v10, v9);
  if (v0)
  {
    goto LABEL_8;
  }

  v11 = sub_223200594();
  sub_2230E0B80(v11, 0);
  if (v13 == v12 >> 1)
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_53();
  if (v15 == v16)
  {
    __break(1u);
    return;
  }

  v17 = OUTLINED_FUNCTION_75(v14);
  sub_2230E0B40(v17);
  OUTLINED_FUNCTION_81();
  if (v8 != v7 >> 1)
  {
LABEL_7:
    v19 = sub_2232003A4();
    OUTLINED_FUNCTION_26(v19, MEMORY[0x277D841A0]);
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057788, &qword_223203DF0);
    *v21 = &type metadata for NLRoutingDecisionMessage.CorrectionOutcome;
    v22 = sub_223200484();
    OUTLINED_FUNCTION_48(v22);
    OUTLINED_FUNCTION_5_0();
    (*(v23 + 104))(v21);
    swift_willThrow();
    swift_unknownObjectRelease();
    v24 = OUTLINED_FUNCTION_28();
    v25(v24);
LABEL_8:
    v28 = v2;
    goto LABEL_9;
  }

  sub_223165378();
  OUTLINED_FUNCTION_57(&type metadata for NLRoutingDecisionMessage.CorrectionOutcome.UndoCodingKeys, v18);
  swift_unknownObjectRelease();
  (*(v29 + 8))(v8, v3);
  v26 = OUTLINED_FUNCTION_39_1();
  v27(v26);
  v28 = v2;
LABEL_9:
  __swift_destroy_boxed_opaque_existential_1(v28);
  OUTLINED_FUNCTION_9_0();
}

uint64_t sub_223160D38(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000002232241F0 == a2;
  if (v3 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000223224210 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_2232006B4();

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

unint64_t sub_223160E0C(char a1)
{
  if (a1)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_223160E4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_223160D38(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_223160E74(uint64_t a1)
{
  v2 = sub_2231653CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223160EB0(uint64_t a1)
{
  v2 = sub_2231653CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_223160EEC(uint64_t a1)
{
  v2 = sub_223165474();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223160F28(uint64_t a1)
{
  v2 = sub_223165474();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_223160F64(uint64_t a1)
{
  v2 = sub_223165420();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223160FA0(uint64_t a1)
{
  v2 = sub_223165420();

  return MEMORY[0x2821FE720](a1, v2);
}

void NLRoutingDecisionMessage.GenAIFallbackSuppressReason.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_8_1();
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058DF8, &qword_22320E888);
  OUTLINED_FUNCTION_9();
  v43[3] = v27;
  v43[4] = v26;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_4_3();
  v43[2] = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058E00, &qword_22320E890);
  OUTLINED_FUNCTION_9();
  v43[0] = v31;
  v43[1] = v30;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_7_16();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058E08, &qword_22320E898);
  OUTLINED_FUNCTION_9();
  v35 = v34;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v36);
  v38 = v43 - v37;
  v39 = *v23;
  OUTLINED_FUNCTION_29(v25, v25[3]);
  sub_2231653CC();
  sub_2232007A4();
  v40 = (v35 + 8);
  if (v39)
  {
    sub_223165420();
    sub_2232005B4();
    v41 = OUTLINED_FUNCTION_42_2();
  }

  else
  {
    sub_223165474();
    sub_2232005B4();
    v41 = OUTLINED_FUNCTION_25();
  }

  v42(v41);
  (*v40)(v38, v33);
  OUTLINED_FUNCTION_9_0();
}

uint64_t NLRoutingDecisionMessage.GenAIFallbackSuppressReason.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_70();
  MEMORY[0x223DD60B0](v1);
  return sub_223200764();
}

void NLRoutingDecisionMessage.GenAIFallbackSuppressReason.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_8_1();
  a22 = v25;
  a23 = v26;
  v28 = v27;
  v56 = v29;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058E28, &qword_22320E8A0);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_30_1();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058E30, &qword_22320E8A8);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_1();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058E38, &qword_22320E8B0);
  OUTLINED_FUNCTION_9();
  v57 = v34;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_5_3(v28);
  sub_2231653CC();
  sub_223200794();
  if (v23)
  {
    goto LABEL_8;
  }

  v59 = v28;
  v36 = sub_223200594();
  sub_2230E0B80(v36, 0);
  if (v38 == v39 >> 1)
  {
LABEL_7:
    v49 = sub_2232003A4();
    OUTLINED_FUNCTION_26(v49, MEMORY[0x277D841A0]);
    v51 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057788, &qword_223203DF0);
    *v51 = &type metadata for NLRoutingDecisionMessage.GenAIFallbackSuppressReason;
    v52 = sub_223200484();
    OUTLINED_FUNCTION_48(v52);
    OUTLINED_FUNCTION_5_0();
    (*(v53 + 104))(v51);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v57 + 8))(v24, v33);
    v28 = v59;
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(v28);
LABEL_9:
    OUTLINED_FUNCTION_9_0();
    return;
  }

  if (v38 < (v39 >> 1))
  {
    v40 = *(v37 + v38);
    sub_2230E0B40(v38 + 1);
    v42 = v41;
    v44 = v43;
    swift_unknownObjectRelease();
    if (v42 == v44 >> 1)
    {
      if (v40)
      {
        a13 = 1;
        sub_223165420();
        OUTLINED_FUNCTION_3(&type metadata for NLRoutingDecisionMessage.GenAIFallbackSuppressReason.UserAgentCorrectionCodingKeys, &a13);
        v45 = v56;
        swift_unknownObjectRelease();
        v46 = OUTLINED_FUNCTION_26_1();
        v48 = v58;
      }

      else
      {
        a12 = 0;
        sub_223165474();
        OUTLINED_FUNCTION_3(&type metadata for NLRoutingDecisionMessage.GenAIFallbackSuppressReason.GenAINotAvailableCodingKeys, &a12);
        v45 = v56;
        swift_unknownObjectRelease();
        v46 = OUTLINED_FUNCTION_26_1();
        v48 = v31;
      }

      v47(v46, v48);
      v54 = OUTLINED_FUNCTION_47_2();
      v55(v54);
      *v45 = v40;
      __swift_destroy_boxed_opaque_existential_1(v59);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t static NLRoutingDecisionMessage.QueryRewrite.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  v11 = *(a2 + 32);
  v46[0] = *a1;
  v46[1] = v2;
  v46[2] = v4;
  v46[3] = v5;
  v47 = v6;
  v48 = v8;
  v49 = v7;
  v50 = v9;
  v51 = v10;
  v52 = v11;
  if (v6 >> 6)
  {
    if (v6 >> 6 == 1)
    {
      if ((v11 & 0xC0) == 0x40)
      {
        v12 = v3;
        v13 = v2;
        if (v3 != v8 || v2 != v7)
        {
          v39 = sub_2232006B4();
          OUTLINED_FUNCTION_13_4();
          v15 = OUTLINED_FUNCTION_11_7();
          sub_2231654C8(v15, v16, v17, v18, v6);
          sub_2230E3C4C(v46, &qword_27D058E40, &qword_22320E8B8);
          v19 = 0;
          if ((v39 & 1) == 0)
          {
            return v19 & 1;
          }

          goto LABEL_33;
        }

        v26 = v9;
        v27 = v10;
        goto LABEL_31;
      }
    }

    else if ((v11 & 0xC0) == 0x80)
    {
      v20 = v3 == v8 && v2 == v7;
      if (v20 || (sub_2232006B4() & 1) != 0)
      {
        if (v5)
        {
          if (v10)
          {
            if (v4 == v9 && v5 == v10)
            {
              v12 = OUTLINED_FUNCTION_21();
              v26 = v4;
              v27 = v5;
LABEL_31:
              sub_2231654C8(v12, v13, v26, v27, v11);
              v32 = OUTLINED_FUNCTION_11_7();
LABEL_32:
              sub_2231654C8(v32, v33, v34, v35, v6);
              sub_2230E3C4C(v46, &qword_27D058E40, &qword_22320E8B8);
LABEL_33:
              v19 = 1;
              return v19 & 1;
            }

            v41 = sub_2232006B4();
            OUTLINED_FUNCTION_13_4();
            v22 = OUTLINED_FUNCTION_11_7();
            sub_2231654C8(v22, v23, v24, v25, v6);
            sub_2230E3C4C(v46, &qword_27D058E40, &qword_22320E8B8);
            if (v41)
            {
              goto LABEL_33;
            }

            goto LABEL_29;
          }
        }

        else if (!v10)
        {
          v37 = OUTLINED_FUNCTION_21();
          sub_2231654C8(v37, v38, v9, 0, v11);
          v32 = v3;
          v33 = v2;
          v34 = v4;
          v35 = 0;
          goto LABEL_32;
        }
      }
    }

LABEL_28:
    OUTLINED_FUNCTION_13_4();
    v28 = OUTLINED_FUNCTION_11_7();
    sub_2231654C8(v28, v29, v30, v31, v6);
    sub_2230E3C4C(v46, &qword_27D058E40, &qword_22320E8B8);
LABEL_29:
    v19 = 0;
    return v19 & 1;
  }

  if (v11 >= 0x40)
  {
    goto LABEL_28;
  }

  v44[0] = v3;
  v44[1] = v2;
  v44[2] = v4;
  v44[3] = v5;
  v45 = v6 & 1;
  v42[0] = v8;
  v42[1] = v7;
  v42[2] = v9;
  v42[3] = v10;
  v43 = v11 & 1;
  v40 = v4;
  v19 = static NLRoutingDecisionMessage.SiriXQueryRewrite.== infix(_:_:)(v44, v42);
  OUTLINED_FUNCTION_13_4();
  sub_2231654C8(v3, v2, v40, v5, v6);
  sub_2230E3C4C(v46, &qword_27D058E40, &qword_22320E8B8);
  return v19 & 1;
}

uint64_t static NLRoutingDecisionMessage.SiriXQueryRewrite.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(a1 + 32);
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v8 || (sub_2232006B4() & 1) != 0)
  {
    if (v3)
    {
      if (v5)
      {
        if (v2 == v6 && v3 == v5)
        {
          return v4 ^ v7 ^ 1u;
        }

        v10 = OUTLINED_FUNCTION_2_1();
        if (OUTLINED_FUNCTION_33_0(v10, v11))
        {
          return v4 ^ v7 ^ 1u;
        }
      }
    }

    else if (!v5)
    {
      return v4 ^ v7 ^ 1u;
    }
  }

  return 0;
}

uint64_t static NLRoutingDecisionMessage.PlannerQueryRewrite.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return OUTLINED_FUNCTION_62();
  }

  else
  {
    return sub_2232006B4();
  }
}

uint64_t static NLRoutingDecisionMessage.SearchQueryRewrite.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_2232006B4(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v4)
      {
        if (v2 == v5 && v3 == v4)
        {
          return 1;
        }

        v10 = OUTLINED_FUNCTION_79();
        if (OUTLINED_FUNCTION_33_0(v10, v11))
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_223161AF0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5869726973 && a2 == 0xE500000000000000;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x72656E6E616C70 && a2 == 0xE700000000000000;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x686372616573 && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_2232006B4();

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

uint64_t sub_223161BF8(char a1)
{
  if (!a1)
  {
    return 0x5869726973;
  }

  if (a1 == 1)
  {
    return 0x72656E6E616C70;
  }

  return 0x686372616573;
}

uint64_t sub_223161C50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_223161AF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_223161C78(uint64_t a1)
{
  v2 = sub_223165534();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223161CB4(uint64_t a1)
{
  v2 = sub_223165534();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_223161CF0(uint64_t a1)
{
  v2 = sub_223165630();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223161D2C(uint64_t a1)
{
  v2 = sub_223165630();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_223161D68(uint64_t a1)
{
  v2 = sub_223165588();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223161DA4(uint64_t a1)
{
  v2 = sub_223165588();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_223161DE0(uint64_t a1)
{
  v2 = sub_2231656D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223161E1C(uint64_t a1)
{
  v2 = sub_2231656D8();

  return MEMORY[0x2821FE720](a1, v2);
}

void NLRoutingDecisionMessage.QueryRewrite.encode(to:)()
{
  OUTLINED_FUNCTION_8_1();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058E48, &qword_22320E8C0);
  OUTLINED_FUNCTION_9();
  v24 = v6;
  v25 = v5;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_3();
  v23 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058E50, &qword_22320E8C8);
  OUTLINED_FUNCTION_9();
  v22 = v9;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_7_16();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058E58, &qword_22320E8D0);
  OUTLINED_FUNCTION_9();
  v21 = v12;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_30_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058E60, &qword_22320E8D8);
  OUTLINED_FUNCTION_9();
  v28 = v15;
  v29 = v14;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_35_0();
  v26 = *v1;
  v27 = v1[1];
  v17 = *(v1 + 32);
  OUTLINED_FUNCTION_5_3(v4);
  sub_223165534();
  sub_2232007A4();
  if (v17 >> 6)
  {
    if (v17 >> 6 == 1)
    {
      LOBYTE(v30[0]) = 1;
      sub_223165630();
      OUTLINED_FUNCTION_82(&type metadata for NLRoutingDecisionMessage.QueryRewrite.PlannerCodingKeys, v30);
      v30[0] = v26;
      v30[1] = v27;
      sub_223165684();
      v18 = v22;
      sub_223200654();
      v19 = OUTLINED_FUNCTION_25();
    }

    else
    {
      LOBYTE(v30[0]) = 2;
      sub_223165588();
      OUTLINED_FUNCTION_82(&type metadata for NLRoutingDecisionMessage.QueryRewrite.SearchCodingKeys, v30);
      OUTLINED_FUNCTION_76();
      sub_2231655DC();
      v18 = v25;
      sub_223200654();
      v20 = *(v24 + 8);
      v19 = v23;
    }

    v20(v19, v18);
    (*(v28 + 8))(v2, v0);
  }

  else
  {
    LOBYTE(v30[0]) = 0;
    sub_2231656D8();
    OUTLINED_FUNCTION_22_4();
    sub_2232005B4();
    OUTLINED_FUNCTION_76();
    v31 = v17 & 1;
    sub_22316572C();
    sub_223200654();
    (*(v21 + 8))(v0, v11);
    (*(v28 + 8))(v2, v29);
  }

  OUTLINED_FUNCTION_9_0();
}

void NLRoutingDecisionMessage.QueryRewrite.init(from:)()
{
  OUTLINED_FUNCTION_8_1();
  v2 = v1;
  v52 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058E88, &qword_22320E8E0);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058E90, &qword_22320E8E8);
  OUTLINED_FUNCTION_9();
  v51 = v5;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058E98, &qword_22320E8F0);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_7_16();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058EA0, &qword_22320E8F8);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_35_0();
  v53 = v2;
  v11 = OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_29(v11, v12);
  sub_223165534();
  sub_223200794();
  if (!v0)
  {
    v13 = sub_223200594();
    sub_2230E0B80(v13, 0);
    v15 = v9;
    if (v16 != v14 >> 1)
    {
      OUTLINED_FUNCTION_53();
      if (v19 == v20)
      {
        __break(1u);
        return;
      }

      v21 = *(v18 + v17);
      sub_2230E0B40(v17 + 1);
      v23 = v22;
      v25 = v24;
      swift_unknownObjectRelease();
      if (v23 == v25 >> 1)
      {
        if (v21)
        {
          if (v21 == 1)
          {
            LOBYTE(v54) = 1;
            sub_223165630();
            OUTLINED_FUNCTION_9_16();
            sub_223200474();
            v26 = v52;
            sub_2231657D4();
            sub_223200554();
            swift_unknownObjectRelease();
            v34 = OUTLINED_FUNCTION_25();
            v35(v34, v51);
            v36 = OUTLINED_FUNCTION_9_5();
            v37(v36);
            v38 = v54;
            v39 = v55;
            v40 = 0uLL;
            v41 = 64;
          }

          else
          {
            LOBYTE(v54) = 2;
            sub_223165588();
            OUTLINED_FUNCTION_9_16();
            sub_223200474();
            v26 = v52;
            sub_223165780();
            sub_223200554();
            swift_unknownObjectRelease();
            v47 = OUTLINED_FUNCTION_21();
            v48(v47);
            v49 = OUTLINED_FUNCTION_1_10();
            v50(v49);
            v38 = v54;
            v39 = v55;
            v41 = 0x80;
            v40 = v56;
          }

          v46 = v53;
        }

        else
        {
          LOBYTE(v54) = 0;
          sub_2231656D8();
          OUTLINED_FUNCTION_9_16();
          sub_223200474();
          sub_223165828();
          OUTLINED_FUNCTION_44_2();
          sub_223200554();
          swift_unknownObjectRelease();
          v42 = OUTLINED_FUNCTION_25();
          v43(v42, v7);
          v44 = OUTLINED_FUNCTION_1_10();
          v45(v44);
          v38 = v54;
          v39 = v55;
          v40 = v56;
          v41 = v57;
          v46 = v53;
          v26 = v52;
        }

        *v26 = v38;
        *(v26 + 8) = v39;
        *(v26 + 16) = v40;
        *(v26 + 32) = v41;
        __swift_destroy_boxed_opaque_existential_1(v46);
        goto LABEL_12;
      }

      v15 = v9;
    }

    v27 = sub_2232003A4();
    OUTLINED_FUNCTION_26(v27, MEMORY[0x277D841A0]);
    v29 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057788, &qword_223203DF0);
    *v29 = &type metadata for NLRoutingDecisionMessage.QueryRewrite;
    v30 = sub_223200484();
    OUTLINED_FUNCTION_48(v30);
    OUTLINED_FUNCTION_5_0();
    (*(v31 + 104))(v29);
    swift_willThrow();
    swift_unknownObjectRelease();
    v32 = OUTLINED_FUNCTION_26_1();
    v33(v32, v15);
  }

  __swift_destroy_boxed_opaque_existential_1(v53);
LABEL_12:
  OUTLINED_FUNCTION_9_0();
}

uint64_t sub_2231628B4(uint64_t a1, uint64_t a2)
{
  if (a1 == 1868852853 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2232006B4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22316292C(uint64_t a1)
{
  v2 = sub_22316587C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223162968(uint64_t a1)
{
  v2 = sub_22316587C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2231629A4(uint64_t a1)
{
  v2 = sub_2231658D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231629E0(uint64_t a1)
{
  v2 = sub_2231658D0();

  return MEMORY[0x2821FE720](a1, v2);
}

void NLRoutingDecisionMessage.SiriXQueryRewrite.CorrectionOutcome.encode(to:)()
{
  OUTLINED_FUNCTION_8_1();
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058EC0, &qword_22320E900);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_35_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058EC8, &qword_22320E908);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_3(v1);
  sub_22316587C();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_20();
  sub_2232007A4();
  sub_2231658D0();
  OUTLINED_FUNCTION_9_16();
  sub_2232005B4();
  v4 = OUTLINED_FUNCTION_28();
  v5(v4);
  v6 = OUTLINED_FUNCTION_1_10();
  v7(v6);
  OUTLINED_FUNCTION_9_0();
}

uint64_t sub_223162BB8()
{
  OUTLINED_FUNCTION_70();
  MEMORY[0x223DD60B0](0);
  return sub_223200764();
}

void NLRoutingDecisionMessage.SiriXQueryRewrite.CorrectionOutcome.init(from:)()
{
  OUTLINED_FUNCTION_8_1();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058EE0, &qword_22320E910);
  OUTLINED_FUNCTION_9();
  v29 = v4;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_30_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058EE8, &qword_22320E918);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7_16();
  v7 = v2[3];
  v8 = v2[4];
  OUTLINED_FUNCTION_5_3(v2);
  v9 = sub_22316587C();
  OUTLINED_FUNCTION_65(&type metadata for NLRoutingDecisionMessage.SiriXQueryRewrite.CorrectionOutcome.CodingKeys, v10, v9);
  if (v0)
  {
    goto LABEL_8;
  }

  v11 = sub_223200594();
  sub_2230E0B80(v11, 0);
  if (v13 == v12 >> 1)
  {
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_53();
  if (v15 == v16)
  {
    __break(1u);
    return;
  }

  v17 = OUTLINED_FUNCTION_75(v14);
  sub_2230E0B40(v17);
  OUTLINED_FUNCTION_81();
  if (v8 != v7 >> 1)
  {
LABEL_7:
    v19 = sub_2232003A4();
    OUTLINED_FUNCTION_26(v19, MEMORY[0x277D841A0]);
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D057788, &qword_223203DF0);
    *v21 = &type metadata for NLRoutingDecisionMessage.SiriXQueryRewrite.CorrectionOutcome;
    v22 = sub_223200484();
    OUTLINED_FUNCTION_48(v22);
    OUTLINED_FUNCTION_5_0();
    (*(v23 + 104))(v21);
    swift_willThrow();
    swift_unknownObjectRelease();
    v24 = OUTLINED_FUNCTION_28();
    v25(v24);
LABEL_8:
    v28 = v2;
    goto LABEL_9;
  }

  sub_2231658D0();
  OUTLINED_FUNCTION_57(&type metadata for NLRoutingDecisionMessage.SiriXQueryRewrite.CorrectionOutcome.UndoCodingKeys, v18);
  swift_unknownObjectRelease();
  (*(v29 + 8))(v8, v3);
  v26 = OUTLINED_FUNCTION_39_1();
  v27(v26);
  v28 = v2;
LABEL_9:
  __swift_destroy_boxed_opaque_existential_1(v28);
  OUTLINED_FUNCTION_9_0();
}

uint64_t NLRoutingDecisionMessage.SiriXQueryRewrite.Builder.redactedUtterance.setter()
{
  OUTLINED_FUNCTION_6_1();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t sub_223163018(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000012 && 0x8000000223220F70 == a2;
  if (v4 || (sub_2232006B4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x8000000223224190 == a2;
    if (v6 || (sub_2232006B4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD000000000000011 && 0x80000002232241B0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_2232006B4();

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

uint64_t sub_223163134(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_70();
  MEMORY[0x223DD60B0](a1);
  return sub_223200764();
}

unint64_t sub_223163174(char a1)
{
  result = 0xD000000000000011;
  if (!a1)
  {
    return 0xD000000000000012;
  }

  return result;
}

uint64_t sub_2231631CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_223163018(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2231631F4(uint64_t a1)
{
  v2 = sub_223165924();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_223163230(uint64_t a1)
{
  v2 = sub_223165924();

  return MEMORY[0x2821FE720](a1, v2);
}

void NLRoutingDecisionMessage.SiriXQueryRewrite.encode(to:)()
{
  OUTLINED_FUNCTION_8_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058EF0, &qword_22320E920);
  OUTLINED_FUNCTION_9();
  v6 = v5;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_8_12();
  OUTLINED_FUNCTION_29(v3, v3[3]);
  sub_223165924();
  OUTLINED_FUNCTION_55();
  sub_2232007A4();
  OUTLINED_FUNCTION_37_1();
  sub_2232005F4();
  if (!v0)
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_8_2();
    sub_2232005C4();
    OUTLINED_FUNCTION_77();
    sub_223165978();
    OUTLINED_FUNCTION_8_2();
    sub_2232005E4();
  }

  (*(v6 + 8))(v1, v4);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_9_0();
}

void NLRoutingDecisionMessage.SiriXQueryRewrite.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_8_1();
  v26 = v25;
  v28 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D058EF8, &qword_22320E928);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_3(v26);
  sub_223165924();
  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_20();
  sub_223200794();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  else
  {
    v31 = sub_2232004F4();
    v38 = v32;
    OUTLINED_FUNCTION_54();
    v36 = sub_223200494();
    v37 = v33;
    OUTLINED_FUNCTION_77();
    sub_2231659CC();
    OUTLINED_FUNCTION_44_2();
    sub_2232004C4();
    v34 = OUTLINED_FUNCTION_21_5();
    v35(v34, v29);
    *v28 = v31;
    *(v28 + 8) = v38;
    *(v28 + 16) = v36;
    *(v28 + 24) = v37;
    *(v28 + 32) = a12;

    __swift_destroy_boxed_opaque_existential_1(v26);
  }

  OUTLINED_FUNCTION_9_0();
}

void NLRoutingDecisionMessage.PlannerQueryRewrite.init(build:)(void (*a1)(uint64_t *)@<X0>, void *a2@<X8>)
{
  v12 = 0;
  v13 = 0;
  a1(&v12);
  v3 = v13;
  if (v13)
  {
    *a2 = v12;
    a2[1] = v3;
  }

  else
  {
    if (qword_280FCA778 != -1)
    {
      OUTLINED_FUNCTION_1_0(&qword_280FCA778);
    }

    v4 = sub_223200014();
    __swift_project_value_buffer(v4, qword_280FCE830);
    v5 = sub_223200004();
    v6 = sub_223200254();
    if (OUTLINED_FUNCTION_61(v6))
    {
      *OUTLINED_FUNCTION_72() = 0;
      OUTLINED_FUNCTION_38_0();
      _os_log_impl(v7, v8, v9, v10, v11, 2u);
      OUTLINED_FUNCTION_51_0();
    }

    *a2 = 0;
    a2[1] = 0;
  }
}

uint64_t NLRoutingDecisionMessage.PlannerQueryRewrite.Builder.rewrittenUtterance.setter()
{
  OUTLINED_FUNCTION_6_1();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t sub_223163798(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x8000000223220F70 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2232006B4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_223163838@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_223163798(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_223163864(uint64_t a1)
{
  v2 = sub_223165A20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2231638A0(uint64_t a1)
{
  v2 = sub_223165A20();

  return MEMORY[0x2821FE720](a1, v2);
}