char *sub_21D867CB4(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + *(v5 + 80)) & ~*(v5 + 80)) + *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

id UIFont.ttr_withSize(_:)()
{
  v1 = [v0 fontWithSize_];

  return v1;
}

uint64_t static TTRHashtagEditingPresenterCapability.characterType(for:)@<X0>(char *a3@<X8>)
{
  v4 = sub_21DBF4CAC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v17 - v12;
  sub_21DBF4C1C();
  sub_21DBF4C2C();
  sub_21DBF4BDC();
  if (sub_21DBF4BFC())
  {
    v14 = 2;
  }

  else if (sub_21DBF4BFC())
  {
    v14 = sub_21DBF4BFC() & 1;
  }

  else
  {
    v14 = 3;
  }

  v15 = *(v5 + 8);
  v15(v7, v4);
  v15(v10, v4);
  result = (v15)(v13, v4);
  *a3 = v14;
  return result;
}

BOOL static TTRHashtagEditingPresenterCapability.tokenDelimiterExists(in:)(uint64_t a1, uint64_t a2)
{
  v4 = MEMORY[0x223D42B30]();
  v5 = static TTRHashtagEditingPresenterCapability.enumerateCharacters(of:in:)(a1, a2, 0, v4);
  v6 = *(v5 + 16) + 1;
  v7 = 48;
  do
  {
    if (!--v6)
    {
      break;
    }

    v8 = *(v5 + v7);
    v7 += 24;
  }

  while (v8 != 3);
  v9 = v6 != 0;

  return v9;
}

uint64_t static TTRHashtagEditingPresenterCapability.enumerateCharacters(of:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = MEMORY[0x223D42B30]();
  v8 = MEMORY[0x277D84F90];
  if ((a3 & 0x8000000000000000) == 0 && v7 >= a4 + a3)
  {
    v9 = sub_21DBFA12C();
    v10 = swift_allocObject();
    *(v10 + 16) = v8;
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = v4;
    v14[4] = sub_21D868D90;
    v14[5] = v11;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 1107296256;
    v14[2] = sub_21D8682A8;
    v14[3] = &block_descriptor_100;
    v12 = _Block_copy(v14);

    [v9 enumerateSubstringsInRange:a3 options:a4 usingBlock:{2, v12}];

    _Block_release(v12);
    swift_beginAccess();
    v8 = *(v10 + 16);
    sub_21DBF8E0C();
  }

  return v8;
}

double sub_21D8682A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *(a1 + 32);
  if (a2)
  {
    v13 = sub_21DBFA16C();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v12(v13, v15, a3, a4, a5, a6, a7);

  return result;
}

uint64_t static TTRHashtagEditingPresenterCapability.doAllCharactersMatch(charType:in:)(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_21DBF4CAC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v26 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = v26 - v14;
  v16 = *a1;
  v17 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v17 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v26[0] = a2;
  v26[1] = a3;
  v26[2] = 0;
  v26[3] = v17;
  sub_21DBF8E0C();
  sub_21DBFA30C();
  if (!v18)
  {
LABEL_19:
    v24 = 1;
    goto LABEL_20;
  }

  v19 = (v7 + 8);
  while (1)
  {
    sub_21DBF4C1C();
    sub_21DBF4C2C();
    sub_21DBF4BDC();
    if (sub_21DBF4BFC())
    {

      v21 = 2;
    }

    else if (sub_21DBF4BFC())
    {
      v22 = sub_21DBF4BFC();

      v21 = v22 & 1;
    }

    else
    {

      v21 = 3;
    }

    v23 = *v19;
    (*v19)(v9, v6);
    v23(v12, v6);
    v23(v15, v6);
    if (v16 == 2)
    {
      if (v21 != 2)
      {
        goto LABEL_18;
      }

      goto LABEL_6;
    }

    if (v16 != 3)
    {
      break;
    }

    if (v21 != 3)
    {
      goto LABEL_18;
    }

LABEL_6:
    sub_21DBFA30C();
    if (!v20)
    {
      goto LABEL_19;
    }
  }

  if (v21 < 2 && ((v21 ^ v16) & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_18:
  v24 = 0;
LABEL_20:

  return v24;
}

void static TTRHashtagEditingPresenterCapability.hashtagTextAttributes(of:in:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int16 *a5@<X8>)
{
  v6 = static TTRHashtagEditingPresenterCapability.enumerateCharacters(of:in:)(a1, a2, a3, a4);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = 0;
    v10 = (v6 + 72);
    v11 = 1;
    while (1)
    {
      v12 = *(v10 - 24);
      if (v12 == 2)
      {
        break;
      }

      if (v12 == 3)
      {
        goto LABEL_11;
      }

      v9 |= v12 ^ 1;
      v8 |= v12;
      ++v11;
      v10 += 24;
      if (v11 - v7 == 1)
      {
        v13 = 0;

        if (v8)
        {
LABEL_7:
          if ((v9 & 1) == 0)
          {
            v14 = 0;
LABEL_23:
            v15 = v14 | v13;
            goto LABEL_13;
          }

LABEL_22:
          v14 = 256;
          goto LABEL_23;
        }

LABEL_21:
        if ((v9 & 1) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_22;
      }
    }

    if (((v8 | v9) & 1) == 0 && v7 != v11)
    {
      v16 = 0;
      LOBYTE(v9) = 0;
      do
      {
        if (v11 >= v7)
        {
          __break(1u);
LABEL_25:
          __break(1u);
          return;
        }

        v17 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_25;
        }

        v18 = *v10;
        if (v18 == 2 || v18 == 3)
        {
          goto LABEL_11;
        }

        LOBYTE(v9) = v18 ^ 1 | v9;
        v16 |= v18;
        ++v11;
        v10 += 24;
      }

      while (v17 != v7);
      v13 = 1;

      if (v16)
      {
        goto LABEL_7;
      }

      goto LABEL_21;
    }
  }

LABEL_11:

LABEL_12:
  v15 = 2;
LABEL_13:
  *a5 = v15;
}

RemindersUICore::TTRHashtagEditingPresenterCapability::HashtagTextAttributes __swiftcall TTRHashtagEditingPresenterCapability.HashtagTextAttributes.init(hasPrefix:tokenTextType:)(Swift::Bool hasPrefix, RemindersUICore::TTRHashtagEditingPresenterCapability::HashtagTextAttributes::TokenTextType tokenTextType)
{
  v3 = *tokenTextType;
  *v2 = hasPrefix;
  v2[1] = v3;
  result.hasPrefix = hasPrefix;
  return result;
}

BOOL static TTRHashtagEditingPresenterCapability.CharacterType.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v2 == 3)
  {
    return v3 == 3;
  }

  if ((v3 & 0xFE) == 2)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

double TTRHashtagEditingPresenterCapability.CharacterType.hash(into:)()
{
  v1 = *v0;
  if (v1 == 2)
  {
    v2 = 0;
    goto LABEL_5;
  }

  if (v1 == 3)
  {
    v2 = 2;
LABEL_5:
    MEMORY[0x223D44FA0](v2);
    return result;
  }

  MEMORY[0x223D44FA0](1);
  sub_21DBFC7FC();
  return result;
}

uint64_t TTRHashtagEditingPresenterCapability.CharacterType.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  if (v1 == 2)
  {
    v2 = 0;
  }

  else
  {
    if (v1 != 3)
    {
      MEMORY[0x223D44FA0](1);
      sub_21DBFC7FC();
      return sub_21DBFC82C();
    }

    v2 = 2;
  }

  MEMORY[0x223D44FA0](v2);
  return sub_21DBFC82C();
}

uint64_t sub_21D868854()
{
  v1 = *v0;
  sub_21DBFC7DC();
  if (v1 == 2)
  {
    v2 = 0;
  }

  else
  {
    if (v1 != 3)
    {
      MEMORY[0x223D44FA0](1);
      sub_21DBFC7FC();
      return sub_21DBFC82C();
    }

    v2 = 2;
  }

  MEMORY[0x223D44FA0](v2);
  return sub_21DBFC82C();
}

double sub_21D8688CC()
{
  v1 = *v0;
  if (v1 == 2)
  {
    v2 = 0;
    goto LABEL_5;
  }

  if (v1 == 3)
  {
    v2 = 2;
LABEL_5:
    MEMORY[0x223D44FA0](v2);
    return result;
  }

  MEMORY[0x223D44FA0](1);
  sub_21DBFC7FC();
  return result;
}

uint64_t sub_21D868928(uint64_t a1)
{
  v2 = *v1;
  sub_21DBFC7DC();
  if (v2 == 2)
  {
    v3 = 0;
  }

  else
  {
    if (v2 != 3)
    {
      MEMORY[0x223D44FA0](1);
      sub_21DBFC7FC();
      return sub_21DBFC82C();
    }

    v3 = 2;
  }

  MEMORY[0x223D44FA0](v3);
  return sub_21DBFC82C();
}

BOOL sub_21D86899C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v2 == 3)
  {
    return v3 == 3;
  }

  if ((v3 & 0xFE) == 2)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

uint64_t TTRHashtagEditingPresenterCapability.HashtagTextAttributes.TokenTextType.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

void sub_21D868AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, uint64_t a8)
{
  v33 = a4;
  v12 = sub_21DBF4CAC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v33 - v17;
  MEMORY[0x28223BE20](v19);
  v22 = &v33 - v21;
  if (v20 && (sub_21D1954D0(a1, v20), v23))
  {
    sub_21DBF4C1C();
    sub_21DBF4C2C();
    sub_21DBF4BDC();
    if (sub_21DBF4BFC())
    {

      v24 = 2;
    }

    else if (sub_21DBF4BFC())
    {
      v25 = sub_21DBF4BFC();

      v24 = v25 & 1;
    }

    else
    {

      v24 = 3;
    }

    v26 = *(v13 + 8);
    v26(v15, v12);
    v26(v18, v12);
    v26(v22, v12);
    swift_beginAccess();
    v27 = *(a8 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a8 + 16) = v27;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v27 = sub_21D214DF4(0, *(v27 + 2) + 1, 1, v27);
      *(a8 + 16) = v27;
    }

    v30 = *(v27 + 2);
    v29 = *(v27 + 3);
    if (v30 >= v29 >> 1)
    {
      v27 = sub_21D214DF4((v29 > 1), v30 + 1, 1, v27);
    }

    *(v27 + 2) = v30 + 1;
    v31 = &v27[24 * v30];
    v32 = v33;
    *(v31 + 4) = a3;
    *(v31 + 5) = v32;
    v31[48] = v24;
    *(a8 + 16) = v27;
    swift_endAccess();
  }

  else
  {
    *a7 = 1;
  }
}

unint64_t sub_21D868DD4()
{
  result = qword_27CE62E38;
  if (!qword_27CE62E38)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRHashtagEditingPresenterCapability.CharacterType, &type metadata for TTRHashtagEditingPresenterCapability.CharacterType, v0, v1);
    atomic_store(result, &qword_27CE62E38);
  }

  return result;
}

unint64_t sub_21D868E2C()
{
  result = qword_27CE62E40;
  if (!qword_27CE62E40)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRHashtagEditingPresenterCapability.HashtagTextAttributes.TokenTextType, &type metadata for TTRHashtagEditingPresenterCapability.HashtagTextAttributes.TokenTextType, v0, v1);
    atomic_store(result, &qword_27CE62E40);
  }

  return result;
}

void static REMReminderPriorityLevel.displayString(for:defaultPriorityLevel:)(uint64_t result, uint64_t a2)
{
  if (a2 < result)
  {
    if (result > 1)
    {
      if (result == 2 || result == 3)
      {
        return;
      }
    }

    else if (!result || result == 1)
    {
      return;
    }

    v12 = v4;
    v13 = v2;
    if (qword_27CE56D68 != -1)
    {
      swift_once();
    }

    v8 = sub_21DBF84BC();
    __swift_project_value_buffer(v8, qword_27CE62E48);
    v9 = MEMORY[0x277D84F90];
    v10 = sub_21D17716C(MEMORY[0x277D84F90]);
    v11 = sub_21D17716C(v9);
    sub_21DAEAB00("unknown priority level", 22, 2, v10, v11, v5, v12, v3, v13, v6, v7);
    __break(1u);
  }
}

void REMReminderPriorityLevel.localizedString.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      if (qword_280D1BAA8 == -1)
      {
        goto LABEL_13;
      }

      goto LABEL_14;
    }

    if (a1 == 3)
    {
      if (qword_280D1BAA8 == -1)
      {
LABEL_13:
        sub_21DBF516C();
        return;
      }

LABEL_14:
      swift_once();
      goto LABEL_13;
    }
  }

  else
  {
    if (!a1)
    {
      if (qword_280D1BAA8 == -1)
      {
        goto LABEL_13;
      }

      goto LABEL_14;
    }

    if (a1 == 1)
    {
      if (qword_280D1BAA8 == -1)
      {
        goto LABEL_13;
      }

      goto LABEL_14;
    }
  }

  if (qword_27CE56D68 != -1)
  {
    swift_once();
  }

  v1 = sub_21DBF84BC();
  __swift_project_value_buffer(v1, qword_27CE62E48);
  v2 = MEMORY[0x277D84F90];
  v3 = sub_21D17716C(MEMORY[0x277D84F90]);
  v4 = sub_21D17716C(v2);
  sub_21DAEAB00("unknown priority level", 22, 2, v3, v4);
  __break(1u);
}

uint64_t sub_21D869324()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE62E48);
  v1 = __swift_project_value_buffer(v0, qword_27CE62E48);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void REMReminderPriorityLevel.image.getter(uint64_t result)
{
  if (result > 1)
  {
    if (result == 2 || result == 3)
    {
LABEL_7:
      v1 = sub_21DBFA12C();
      [objc_opt_self() _systemImageNamed_];

      return;
    }
  }

  else
  {
    if (!result)
    {
      return;
    }

    if (result == 1)
    {
      goto LABEL_7;
    }
  }

  if (qword_27CE56D68 != -1)
  {
    swift_once();
  }

  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_27CE62E48);
  v3 = MEMORY[0x277D84F90];
  v4 = sub_21D17716C(MEMORY[0x277D84F90]);
  v5 = sub_21D17716C(v3);
  sub_21DAEAB00("unknown priority level", 22, 2, v4, v5);
  __break(1u);
}

unint64_t sub_21D869558()
{
  result = qword_27CE62E60;
  if (!qword_27CE62E60)
  {
    type metadata accessor for REMReminderPriorityLevel(255);
    result = swift_getWitnessTable(byte_21DC08224, v3, v0, v1);
    atomic_store(result, &qword_27CE62E60);
  }

  return result;
}

unint64_t sub_21D8695B4()
{
  result = qword_27CE62E68;
  if (!qword_27CE62E68)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE62E70, &qword_21DC2D980);
    result = swift_getWitnessTable(MEMORY[0x277D83988], v3, v0, v1);
    atomic_store(result, &qword_27CE62E68);
  }

  return result;
}

uint64_t sub_21D869644()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE62E78);
  v1 = __swift_project_value_buffer(v0, qword_27CE62E78);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

double TTRParagraphStyleEditingPresenterProcessingOutput.paragraphStyleUpdate.getter@<D0>(void *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  *a1 = v1[1];
  a1[1] = v2;
  a1[2] = v3;
  sub_21DBF8E0C();

  sub_21DBF8E0C();
  return result;
}

void __swiftcall TTRParagraphStyleEditingPresenterProcessingOutput.init(textReplacements:paragraphStyleUpdate:expectedFinalText:postUpdateOption:)(RemindersUICore::TTRParagraphStyleEditingPresenterProcessingOutput *__return_ptr retstr, Swift::OpaquePointer textReplacements, RemindersUICore::TTRReminderCellParagraphStyleUpdate paragraphStyleUpdate, NSAttributedString expectedFinalText, RemindersUICore::TTRParagraphStyleEditingPresenterProcessingOutput::PostUpdateOption postUpdateOption)
{
  v5 = *paragraphStyleUpdate.paragraphStylesToAdd._rawValue;
  v6 = *(paragraphStyleUpdate.paragraphStylesToAdd._rawValue + 2);
  v7 = *paragraphStyleUpdate.expectedCurrentText._object;
  retstr->textReplacements = textReplacements;
  *&retstr->paragraphStyleUpdate.paragraphStylesToAdd._rawValue = v5;
  retstr->paragraphStyleUpdate.expectedCurrentText._object = v6;
  retstr->expectedFinalText.super.isa = paragraphStyleUpdate.expectedCurrentText._countAndFlagsBits;
  retstr->postUpdateOption.rawValue = v7;
}

void __swiftcall TTRParagraphStyleEditingPresenterProcessingOutput.output(appendingUpdatesFrom:)(RemindersUICore::TTRParagraphStyleEditingPresenterProcessingOutput *__return_ptr retstr, RemindersUICore::TTRParagraphStyleEditingPresenterProcessingOutput_optional *appendingUpdatesFrom)
{
  rawValue = appendingUpdatesFrom->value.textReplacements._rawValue;
  v5 = *v2;
  v6 = *(v2 + 8);
  v8 = *(v2 + 32);
  v7 = *(v2 + 40);
  if (appendingUpdatesFrom->value.textReplacements._rawValue)
  {
    expectedCurrentText = appendingUpdatesFrom->value.paragraphStyleUpdate.expectedCurrentText;
    isa = appendingUpdatesFrom->value.expectedFinalText.super.isa;
    v9 = appendingUpdatesFrom->value.paragraphStyleUpdate.paragraphStylesToAdd._rawValue;
    v10 = appendingUpdatesFrom->value.postUpdateOption.rawValue;
    sub_21D873834(rawValue, v9, expectedCurrentText._countAndFlagsBits, expectedCurrentText._object, isa);
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v11 = sub_21DBF8E0C();
    sub_21D56261C(v11);
    v12 = sub_21DBF8E0C();
    sub_21D562524(v12);
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v13 = sub_21D47A0F8(v8, rawValue, v9);

    v19 = v5;
    v14 = [v13 string];
    v15 = v10 | v7;
    v16 = sub_21DBFA16C();
    v18 = v17;
    sub_21D300E70(rawValue, v9, expectedCurrentText._countAndFlagsBits, expectedCurrentText._object, isa);

    retstr->textReplacements._rawValue = v19;
    retstr->paragraphStyleUpdate.paragraphStylesToAdd._rawValue = v6;
  }

  else
  {
    v15 = *(v2 + 40);
    v16 = *(v2 + 16);
    v18 = *(v2 + 24);
    retstr->textReplacements._rawValue = v5;
    retstr->paragraphStyleUpdate.paragraphStylesToAdd._rawValue = v6;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v13 = v8;
  }

  retstr->paragraphStyleUpdate.expectedCurrentText._countAndFlagsBits = v16;
  retstr->paragraphStyleUpdate.expectedCurrentText._object = v18;
  retstr->expectedFinalText.super.isa = v13;
  retstr->postUpdateOption.rawValue = v15;
}

void sub_21D86992C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = objc_opt_self();
  v10 = [v9 attributeNameForStyle_];
  v11 = v10;
  if (*(a1 + 16) && (v12 = sub_21D10FE34(v10), (v13 & 1) != 0))
  {
    sub_21D0CEB98(*(a1 + 56) + 32 * v12, v29);

    sub_21D0CF2E8(v29, &v30);
    v14 = [v9 attributeNameForStyle_];
    __swift_project_boxed_opaque_existential_1(&v30, v31);
    [a5 addAttribute:v14 value:sub_21DBFC62C() range:{a2, a3}];

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0(&v30);
  }

  else
  {
  }

  v15 = [v9 attributeNameForStyle_];
  v16 = v15;
  if (*(a1 + 16) && (v17 = sub_21D10FE34(v15), (v18 & 1) != 0))
  {
    sub_21D0CEB98(*(a1 + 56) + 32 * v17, v29);

    sub_21D0CF2E8(v29, &v30);
    v19 = [v9 attributeNameForStyle_];
    __swift_project_boxed_opaque_existential_1(&v30, v31);
    [a5 addAttribute:v19 value:sub_21DBFC62C() range:{a2, a3}];

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0(&v30);
  }

  else
  {
  }

  v20 = [v9 attributeNameForStyle_];
  v21 = v20;
  if (*(a1 + 16) && (v22 = sub_21D10FE34(v20), (v23 & 1) != 0))
  {
    sub_21D0CEB98(*(a1 + 56) + 32 * v22, v29);

    sub_21D0CF2E8(v29, &v30);
    v24 = objc_allocWithZone(MEMORY[0x277D44888]);
    __swift_project_boxed_opaque_existential_1(&v30, v31);
    v25 = [v24 initWithContents_];
    swift_unknownObjectRelease();
    if (v25)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5FB70, &unk_21DC0AEC0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_21DC08D00;
      *(inited + 32) = sub_21DBFA12C();
      v27 = [v25 remParagraphStyle];
      *(inited + 64) = MEMORY[0x277D83B88];
      *(inited + 40) = v27;
      sub_21D11274C(inited);
      swift_setDeallocating();
      sub_21D0CF7E0(inited + 32, &unk_27CE5F2C0, &qword_21DC09050);
      type metadata accessor for Key(0);
      sub_21D112874();
      v28 = sub_21DBF9E5C();

      [a5 addAttributes:v28 range:{a2, a3}];
    }

    __swift_destroy_boxed_opaque_existential_0(&v30);
  }

  else
  {
  }
}

uint64_t sub_21D869CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_21D0DB414(a1, v11);
  if (!v12)
  {
    return sub_21D0CF7E0(v11, &qword_27CE5C690, &unk_21DC11AB0);
  }

  result = swift_dynamicCast();
  if ((result & 1) != 0 && (v10 - 1) <= 2)
  {
    v9 = sub_21DBFA12C();
    [a5 removeAttribute:v9 range:{a2, a3}];

    return [a5 rem:v10 addParagraphNamedStyle:a2 inRange:a3];
  }

  return result;
}

double TTRParagraphStyleEditingPresenter.requestHandleBeginEditingText(_:editingSession:)@<D0>(void *a1@<X0>, uint64_t a2@<X2>, _OWORD *a3@<X8>)
{
  ObjectType = swift_getObjectType();
  if (TTRRemindersListEditingSession.supportsTextStyling.getter(ObjectType, a2))
  {

    sub_21D869E58(a1, a3);
  }

  else
  {
    result = 0.0;
    a3[1] = 0u;
    a3[2] = 0u;
    *a3 = 0u;
  }

  return result;
}

void sub_21D869E58(void *a1@<X0>, void *a2@<X8>)
{
  v4 = swift_allocObject();
  *(v4 + 16) = MEMORY[0x277D84F90];
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v6 = a1;
  v7 = [v6 string];
  if (v7)
  {
    v8 = v7;
    v9 = [v6 string];
    v10 = sub_21DBFA16C();
    v12 = v11;

    v13 = MEMORY[0x223D42B30](v10, v12);

    v14 = swift_allocObject();
    swift_weakInit();
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = v6;
    v15[4] = v5;
    v15[5] = v4;
    v26[4] = sub_21D873DB0;
    v26[5] = v15;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 1107296256;
    v26[2] = sub_21D8682A8;
    v26[3] = &block_descriptor_23_2;
    v16 = _Block_copy(v26);
    v17 = v6;

    [v8 enumerateSubstringsInRange:0 options:v13 usingBlock:{0, v16}];
    _Block_release(v16);

    swift_beginAccess();
    v18 = *(v4 + 16);
    sub_21DBF8E0C();
    v19 = MEMORY[0x277D84F90];
    v20 = sub_21D47A0F8(v17, MEMORY[0x277D84F90], v18);

    v21 = *(v4 + 16);
    sub_21DBF8E0C();
    v22 = [v20 string];
    v23 = sub_21DBFA16C();
    v25 = v24;

    *a2 = v19;
    a2[1] = v21;
    a2[2] = v23;
    a2[3] = v25;
    a2[4] = v20;
    a2[5] = 0;
  }

  else
  {
    __break(1u);
  }
}

void TTRParagraphStyleEditingPresenter.request(handlePaste:pasteDetail:selectedRange:editingSession:)(void *a1@<X0>, void *a2@<X1>, void (*a3)(char *, uint64_t)@<X4>, uint64_t a4@<X5>, _OWORD *a5@<X8>)
{
  v10 = sub_21DBF4CAC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a2[1];
  v15 = a2[3];
  v16 = a2[4];
  ObjectType = swift_getObjectType();
  if ((TTRRemindersListEditingSession.supportsTextStyling.getter(ObjectType, a4) & 1) == 0 || !v16)
  {
    goto LABEL_18;
  }

  v18 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v18 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18)
  {
LABEL_18:
    a5[1] = 0u;
    a5[2] = 0u;
    *a5 = 0u;
    return;
  }

  v69 = MEMORY[0x277D84F90];
  v70 = MEMORY[0x277D84F90];
  v19 = MEMORY[0x223D42B30](v15, v16);
  v20 = v14 + v19;
  if (__OFADD__(v14, v19))
  {
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v21 = [a1 string];
  v22 = sub_21DBFA16C();
  v24 = v23;

  sub_21DBF4C8C();
  v25 = String.rangeOfCharacter(inCharacterSet:atOrAfter:exclusiveEndIndextoSearch:)(v13, v14, v20, 0, v22, v24);
  LOBYTE(v22) = v26;

  a3 = *(v11 + 8);
  a3(v13, v10);
  if (v22)
  {
    v27 = v20;
  }

  else
  {
    v27 = v25;
  }

  v20 = v27 - v14;
  if (__OFSUB__(v27, v14))
  {
    goto LABEL_35;
  }

  v28 = sub_21D871E88(v14, a1);
  v62 = v28;
  if (!v28)
  {
    goto LABEL_29;
  }

  v29 = [v28 remParagraphStyle];
  if (v29 != 3)
  {
    if (v29 != 2)
    {
      if (v29 != 1)
      {
        goto LABEL_29;
      }

      if (qword_27CE56D90 != -1)
      {
        swift_once();
      }

      v30 = qword_27CE62ED8;
      goto LABEL_21;
    }

    if (qword_27CE56D88 == -1)
    {
LABEL_20:
      v30 = qword_27CE62EC0;
LABEL_21:
      v31 = __swift_project_value_buffer(v10, v30);
      if (sub_21D872168(v14, a1, v31))
      {
        goto LABEL_22;
      }

LABEL_29:
      sub_21D86A648(a1, v14, v20, &v63);
      v45 = v63;
      v44 = v64;
      v46 = v65;
      v47 = v66;
      v48 = v67;
      if (v63)
      {
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        v49 = v44;
        v50 = v45;
      }

      else
      {
        v49 = MEMORY[0x277D84F90];
        v50 = MEMORY[0x277D84F90];
      }

      sub_21D56261C(v50);
      sub_21D562524(v49);
      sub_21D300E70(v45, v44, v46, v47, v48);
      goto LABEL_33;
    }

LABEL_36:
    swift_once();
    goto LABEL_20;
  }

  sub_21D872400(v14, v20, a1);
  if ((v43 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_22:
  v61 = a3;
  v32 = [a1 string];
  sub_21DBFA16C();

  v71 = String.rangeOfCharacterComposedSequence(before:)(v14);
  location = v71.value.location;
  length = v71.value.length;
  is_nil = v71.is_nil;

  if (is_nil)
  {
LABEL_33:
    v51 = v69;
    v52 = v70;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v53 = sub_21D47A0F8(a1, v51, v52);

    v54 = [v53 string];
    v55 = sub_21DBFA16C();
    v57 = v56;

    v63 = v51;
    v64 = v52;
    v65 = v55;
    v66 = v57;
    v67 = v53;
    v68 = 0;
    v58 = v53;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v59 = v58;
    sub_21D86A9B0(&v63, a1, a5);

    sub_21D300E70(v63, v64, v65, v66, v67);
    return;
  }

  v36 = [a1 string];
  if (v36)
  {
    v37 = v36;
    v38 = [v36 substringWithRange_];

    sub_21DBFA16C();
    sub_21DBF4C8C();
    LOBYTE(v38) = sub_21DBF4C3C();

    (v61)(v13, v10);
    if ((v38 & 1) == 0)
    {
      v39 = sub_21D211FB8(0, 1, 1, MEMORY[0x277D84F90]);
      v41 = *(v39 + 2);
      v40 = *(v39 + 3);
      if (v41 >= v40 >> 1)
      {
        v39 = sub_21D211FB8((v40 > 1), v41 + 1, 1, v39);
      }

      *(v39 + 2) = v41 + 1;
      v42 = &v39[32 * v41];
      *(v42 + 4) = v14;
      *(v42 + 40) = xmmword_21DC2D9D0;
      *(v42 + 7) = 0xE100000000000000;
      v69 = v39;
    }

    goto LABEL_33;
  }

  __break(1u);
}

double sub_21D86A648@<D0>(void *a1@<X0>, Swift::Int a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = [a1 string];
  sub_21DBFA16C();

  v32 = String.rangeOfCharacterComposedSequence(before:)(a2);
  location = v32.value.location;
  LOBYTE(v8) = v32.is_nil;

  if ((v8 & 1) == 0)
  {
    v10 = [a1 rem:location paragraphStyleAtIndex:0 effectiveRange:?];
    if (v10)
    {
      v11 = v10;
      v12 = v10;
      v13 = [v12 remParagraphStyle];
      if ((v13 - 1) < 2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59AB8, &unk_21DC0CCF0);
        v14 = swift_allocObject();
        v15 = v14;
        *(v14 + 16) = xmmword_21DC08D00;
        *(v14 + 32) = v11;
        *(v14 + 40) = 0;
        *(v14 + 48) = 0;
LABEL_8:
        *(v14 + 56) = a2;
        *(v14 + 64) = a3;
        sub_21DBF8E0C();
        v16 = v12;
        sub_21DBF8E0C();
        v17 = MEMORY[0x277D84F90];
        v18 = sub_21D47A0F8(a1, MEMORY[0x277D84F90], v15);
        swift_bridgeObjectRelease_n();
        v19 = [v18 string];
        v20 = sub_21DBFA16C();
        v22 = v21;

        *a4 = v17;
        a4[1] = v15;
        a4[2] = v20;
        a4[3] = v22;
        a4[4] = v18;
        a4[5] = 0;
        return result;
      }

      if (v13 == 3)
      {
        if ([a1 attribute:*MEMORY[0x277D44C88] atIndex:location effectiveRange:0])
        {
          sub_21DBFBC1C();
          swift_unknownObjectRelease();
        }

        else
        {
          v29 = 0u;
          v30 = 0u;
        }

        v31[0] = v29;
        v31[1] = v30;
        if (*(&v30 + 1))
        {
          if (swift_dynamicCast())
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59AB8, &unk_21DC0CCF0);
            v14 = swift_allocObject();
            v15 = v14;
            *(v14 + 16) = xmmword_21DC08D00;
            *(v14 + 32) = v11;
            *(v14 + 40) = v28;
            *(v14 + 48) = 1;
            goto LABEL_8;
          }
        }

        else
        {

          sub_21D0CF7E0(v31, &qword_27CE5C690, &unk_21DC11AB0);
        }

        if (qword_27CE56D70 != -1)
        {
          swift_once();
        }

        v24 = sub_21DBF84BC();
        __swift_project_value_buffer(v24, qword_27CE62E78);
        v25 = sub_21DBF84AC();
        v26 = sub_21DBFAEBC();
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          *v27 = 0;
          _os_log_impl(&dword_21D0C9000, v25, v26, "Error.  Tried to extend an ordered list attribute value but there is no associated item number attribute value", v27, 2u);
          MEMORY[0x223D46520](v27, -1, -1);
        }
      }

      else
      {
      }
    }
  }

  result = 0.0;
  *(a4 + 1) = 0u;
  *(a4 + 2) = 0u;
  *a4 = 0u;
  return result;
}

void sub_21D86A9B0(void **a1@<X0>, objc_class *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  if (*a1)
  {
    v10 = a1[4];
  }

  else
  {
    v10 = a2;
  }

  v33 = v10;
  sub_21D86C7F8(v33, &v41);
  rawValue = v41.textReplacements._rawValue;
  object = v41.paragraphStyleUpdate.expectedCurrentText._object;
  isa = v41.expectedFinalText.super.isa;
  v32 = v41.expectedFinalText.super.isa;
  paragraphStyleUpdate = v41.paragraphStyleUpdate;
  v30 = v41.textReplacements._rawValue;
  if (v4)
  {
    v35 = v4;
    v36 = v5;
    v37 = v6;
    v38 = v7;
    v39 = v8;
    v40 = v9;
    appendingUpdatesFrom.value = v41;
    TTRParagraphStyleEditingPresenterProcessingOutput.output(appendingUpdatesFrom:)(&v41, &appendingUpdatesFrom);
    rawValue = v41.textReplacements._rawValue;
    object = v41.paragraphStyleUpdate.expectedCurrentText._object;
    countAndFlagsBits = v41.paragraphStyleUpdate.expectedCurrentText._countAndFlagsBits;
    v27 = v41.paragraphStyleUpdate.paragraphStylesToAdd._rawValue;
    v3 = v41.expectedFinalText.super.isa;
    v14 = v41.postUpdateOption.rawValue;
    isa = v41.expectedFinalText.super.isa;
  }

  else if (v41.textReplacements._rawValue)
  {
    v15 = v41.postUpdateOption.rawValue;
    v16 = v41.paragraphStyleUpdate.expectedCurrentText._countAndFlagsBits;
    v17 = v41.paragraphStyleUpdate.paragraphStylesToAdd._rawValue;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v3 = isa;
    countAndFlagsBits = v16;
    v27 = v17;
    v14 = v15;
  }

  else
  {
    countAndFlagsBits = v41.paragraphStyleUpdate.expectedCurrentText._countAndFlagsBits;
    v27 = v41.paragraphStyleUpdate.paragraphStylesToAdd._rawValue;
    v14 = v41.postUpdateOption.rawValue;
  }

  v18 = v3;
  sub_21D86D2FC(v18, &v41);
  v20 = v41.textReplacements._rawValue;
  v19 = v41.paragraphStyleUpdate.paragraphStylesToAdd._rawValue;
  v21 = v41.paragraphStyleUpdate.expectedCurrentText._countAndFlagsBits;
  v22 = v41.postUpdateOption.rawValue;
  v28 = *&v41.paragraphStyleUpdate.expectedCurrentText._object;
  if (rawValue)
  {
    v35 = rawValue;
    v36 = v27;
    v37 = countAndFlagsBits;
    v38 = object;
    v39 = isa;
    v40 = v14;
    appendingUpdatesFrom.value = v41;
    TTRParagraphStyleEditingPresenterProcessingOutput.output(appendingUpdatesFrom:)(&v41, &appendingUpdatesFrom);
    sub_21D300E70(v30, paragraphStyleUpdate.paragraphStylesToAdd._rawValue, paragraphStyleUpdate.expectedCurrentText._countAndFlagsBits, paragraphStyleUpdate.expectedCurrentText._object, v32);

    sub_21D300E70(v20, v19, v21, v28, *(&v28 + 1));
    sub_21D300E70(rawValue, v27, countAndFlagsBits, object, isa);
    v23 = v41.paragraphStyleUpdate.expectedCurrentText._countAndFlagsBits;
    v24 = *&v41.paragraphStyleUpdate.expectedCurrentText._object;
    v22 = v41.postUpdateOption.rawValue;
    v25 = a3;
    *a3 = *&v41.textReplacements._rawValue;
    *(a3 + 16) = v23;
  }

  else
  {
    sub_21D300E70(v30, paragraphStyleUpdate.paragraphStylesToAdd._rawValue, paragraphStyleUpdate.expectedCurrentText._countAndFlagsBits, paragraphStyleUpdate.expectedCurrentText._object, v32);

    v24 = v28;
    v25 = a3;
    *a3 = v20;
    *(a3 + 8) = v19;
    *(a3 + 16) = v21;
  }

  *(v25 + 24) = v24;
  *(v25 + 40) = v22;
}

double TTRParagraphStyleEditingPresenter.request(handleEditingTextChange:detail:hasMarkedText:editingSession:)@<D0>(objc_class *a1@<X0>, uint64_t *a2@<X1>, char a3@<W2>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v10 = *a2;
  v18 = *(a2 + 3);
  v19 = *(a2 + 1);
  ObjectType = swift_getObjectType();
  if (TTRRemindersListEditingSession.supportsTextStyling.getter(ObjectType, a5) & 1) == 0 || (a3)
  {
    result = 0.0;
    a6[1] = 0u;
    a6[2] = 0u;
    *a6 = 0u;
  }

  else
  {
    v20 = v10;
    v21 = v19;
    v22 = v18;
    sub_21D86ACF4(a1, &v20, v23);
    v12 = v23[0];
    v13 = v23[1];
    v14 = v23[2];
    v15 = v23[3];
    v16 = v23[4];
    sub_21D86A9B0(v23, a1, a6);

    sub_21D300E70(v12, v13, v14, v15, v16);
  }

  return result;
}

void sub_21D86ACF4(void *a1@<X0>, uint64_t a2@<X1>, Swift::Int a3@<X8>)
{
  v208 = sub_21DBF4CAC();
  v6 = *(v208 - 8);
  MEMORY[0x28223BE20](v208);
  *&v209 = &v191 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = *a2;
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v207 = *(a2 + 8);
  v199 = v8;
  v205 = v8;
  if (v9)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0xE000000000000000;
  }

  sub_21DBF8E0C();
  v12 = [a1 string];
  sub_21DBFA16C();

  v13 = a1;
  v14 = v207;
  v225 = String.rangeOfCharacterComposedSequence(before:)(v207);
  location = v225.value.location;
  length = v225.value.length;
  is_nil = v225.is_nil;

  v17 = 0;
  if (!is_nil)
  {
    v17 = sub_21D871E88(location, v13);
  }

  v201 = location;
  v18 = sub_21D872028(v14, v13);
  LODWORD(v200) = v19;
  if (!String.isOneNewlineCharacterComposedSequence.getter(v10, v11))
  {
    v194 = v18;
    v203 = v17;
    v202 = a3;
    v197 = v13;
    v20 = [v13 string];
    v21 = sub_21DBFA16C();
    v23 = v22;

    if (v9)
    {
      v24 = MEMORY[0x223D42B30](v205, v9);
    }

    else
    {
      v24 = 0;
    }

    v18 = v209;
    v35 = (v14 + v24);
    if (__OFADD__(v14, v24))
    {
      goto LABEL_148;
    }

    sub_21DBF4C8C();
    v196 = v14;
    v204 = String.rangeOfCharacter(inCharacterSet:atOrAfter:exclusiveEndIndextoSearch:)(v18, v14, v35, 0, v21, v23);
    *&v206 = v36;
    v38 = v37;

    v41 = *(v6 + 8);
    v39 = v6 + 8;
    v40 = v41;
    a3 = v208;
    v41(v18, v208);
    if (v38)
    {
      *aBlock = v10;
      *&aBlock[8] = v11;
      sub_21DBF4BBC();
      sub_21D176F0C();
      v42 = sub_21DBFBB3C();
      v44 = v43;
      v40(v18, a3);

      v45 = HIBYTE(v44) & 0xF;
      if ((v44 & 0x2000000000000000) == 0)
      {
        v45 = v42 & 0xFFFFFFFFFFFFLL;
      }

      v46 = v202;
      if (v45)
      {
        v47 = v203;
        if (v9)
        {
          v48 = MEMORY[0x223D42B30](v205, v9);
        }

        else
        {
          v48 = 0;
        }

        sub_21D86A648(v197, v196, v48, v46);
      }

      else
      {
        *aBlock = v198;
        *&aBlock[8] = v207;
        *&aBlock[24] = v199;
        sub_21D86F758(v197, aBlock, v202);
      }

      return;
    }

    v198 = v40;
    v205 = v39;
    v218 = MEMORY[0x277D84F90];
    v219 = MEMORY[0x277D84F90];
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    *&v199 = v25 + 16;
    v49 = sub_21DBFA12C();
    *&aBlock[32] = sub_21D873D08;
    *&aBlock[40] = v25;
    *aBlock = MEMORY[0x277D85DD0];
    *&aBlock[8] = 1107296256;
    *&aBlock[16] = sub_21D870A90;
    *&aBlock[24] = &block_descriptor_101;
    v9 = _Block_copy(aBlock);

    [v49 enumerateLinesUsingBlock_];
    _Block_release(v9);

    v50 = MEMORY[0x223D42B30](v10, v11);
    v51 = __OFSUB__(v50, 1);
    v52 = v50 - 1;
    v35 = v202;
    if (v51)
    {
      goto LABEL_150;
    }

    v227 = String.rangeOfNewlineCharacter(atOrBefore:)(v52);
    if (v227.is_nil)
    {

      v9 = v203;
      if (qword_27CE56D70 != -1)
      {
        goto LABEL_151;
      }

      goto LABEL_34;
    }

    v26 = v227.value.location;
    v9 = v227.value.length;
    v193 = v25;
    v57 = MEMORY[0x223D42B30](v10, v11);

    v28 = v57 - (v26 + v9);
    if (__OFSUB__(v57, v26 + v9))
    {
      __break(1u);
LABEL_153:
      __break(1u);
      goto LABEL_154;
    }

    v18 = &selRef_setAttributedText_;
    v58 = v197;
    v59 = [v197 string];
    sub_21DBFA16C();
    v9 = v60;

    v26 = v58;
    v25 = v204;
    v220.value = 0;
    v220.is_nil = 1;
    v228 = String.rangeOfNewlineCharacter(after:exclusiveEndIndextoSearch:)(v204, v220);
    *&v207 = v228.value.location;
    v61 = *&v228.is_nil;

    a3 = v196;
    v62 = sub_21D871E88(v196, v26);
    v35 = v199;
    v191 = v28;
    v192 = v61;
    if (v62)
    {

      if (v25 >= 1)
      {
        v51 = __OFSUB__(v25, a3);
        v25 -= a3;
        if (v51)
        {
          goto LABEL_159;
        }

        if (is_nil)
        {
          goto LABEL_42;
        }

        v94 = [v197 string];
        if (!v94)
        {
          sub_21DBFA16C();
          v94 = sub_21DBFA12C();
        }

        v95 = [v94 substringWithRange_];

        v96 = sub_21DBFA16C();
        v98 = v97;

        LOBYTE(v96) = String.isOneNewlineCharacterComposedSequence.getter(v96, v98);

        if ((v96 & 1) != 0 || a3 < 1)
        {
LABEL_42:
          v9 = v197;
          v26 = 0;
          v201 = MEMORY[0x277D84F90];
          v63 = a3;
          v28 = v204;
          a3 = v207;
        }

        else
        {
          sub_21DBF8E0C();
          v201 = sub_21D211FB8(0, 1, 1, MEMORY[0x277D84F90]);
          v100 = *(v201 + 2);
          v99 = *(v201 + 3);
          if (v100 >= v99 >> 1)
          {
            v201 = sub_21D211FB8((v99 > 1), v100 + 1, 1, v201);
          }

          v101 = v201;
          *(v201 + 2) = v100 + 1;
          v102 = &v101[32 * v100];
          *(v102 + 4) = a3;
          v206 = xmmword_21DC2D9D0;
          *(v102 + 40) = xmmword_21DC2D9D0;
          *(v102 + 7) = 0xE100000000000000;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58808, &unk_21DC09A50);
          v103 = swift_allocObject();
          *(v103 + 16) = xmmword_21DC08D00;
          *(v103 + 32) = a3;
          v104 = v103 + 32;
          *(v103 + 40) = v206;
          *(v103 + 56) = 0xE100000000000000;
          v9 = sub_21D47A0F8(v197, v103, MEMORY[0x277D84F90]);
          swift_setDeallocating();
          sub_21D873CB4(v104);
          swift_deallocClassInstance();
          v105 = [v9 string];
          v106 = sub_21DBFA16C();
          v108 = v107;

          v221.value = 0;
          v221.is_nil = 1;
          v229 = String.rangeOfNewlineCharacter(after:exclusiveEndIndextoSearch:)(a3, v221);
          v28 = v229.value.location;
          *&v206 = v229.value.length;
          v26 = *&v229.is_nil;

          a3 = v207;
          if ((v26 & 1) == 0)
          {
            v106 = [v9 string];
            v108 = sub_21DBFA16C();
            *&v207 = v25;

            v222.value = 0;
            v222.is_nil = 1;
            v230 = String.rangeOfNewlineCharacter(after:exclusiveEndIndextoSearch:)(v28, v222);
            a3 = v230.value.location;
            v192 = *&v230.is_nil;
            v25 = v207;
          }

          v109 = sub_21DBFA36C();
          v63 = v196 + v109;
          if (__OFADD__(v196, v109))
          {
            __break(1u);
            goto LABEL_163;
          }
        }

        sub_21D86E610(v9, v63, v25, 0, v194, v200 & 1, &v210);
        *aBlock = v210;
        *&aBlock[16] = v211;
        *&aBlock[32] = v212;
        v216 = v213;
        v217 = v214;
        if (v212)
        {
          v26 = *&aBlock[24];
          v25 = *(&v216 + 1);
          if (*&aBlock[24])
          {
            v207 = *aBlock;
            v28 = *&aBlock[16];
            sub_21DBF8E0C();
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              goto LABEL_71;
            }

            goto LABEL_161;
          }

          goto LABEL_74;
        }

        goto LABEL_81;
      }
    }

    else if (v25 >= 1)
    {
      if (__OFSUB__(v25, a3))
      {
        goto LABEL_160;
      }

      sub_21D86A648(v26, a3, v25 - a3, aBlock);
      v74 = v26;
      v26 = *aBlock;
      if (*aBlock)
      {
        v25 = *&aBlock[32];
        v75 = *&aBlock[24];
        v76 = *&aBlock[16];
        v77 = *&aBlock[8];
        v78 = sub_21DBF8E0C();
        sub_21D562524(v78);
        v79 = sub_21DBF8E0C();
        sub_21D56261C(v79);
        v81 = v218;
        v80 = v219;
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        v9 = sub_21D47A0F8(v74, v81, v80);
        v201 = v81;

        v82 = v77;
        v18 = &selRef_setAttributedText_;
        v83 = v76;
        v35 = v199;
        sub_21D300E70(v26, v82, v83, v75, v25);
        v26 = 0;
      }

      else
      {
        v9 = v74;
        v201 = MEMORY[0x277D84F90];
      }

      v28 = v204;
      a3 = v207;
      goto LABEL_81;
    }

    v9 = v26;
    v201 = MEMORY[0x277D84F90];
    v28 = v25;
    a3 = v207;
    goto LABEL_84;
  }

  if (is_nil)
  {
    goto LABEL_11;
  }

  if (!v17)
  {
    goto LABEL_77;
  }

  if (!v9)
  {
LABEL_11:

    goto LABEL_77;
  }

  v196 = v14;
  v203 = v17;
  v25 = v13;
  v26 = v17;
  v27 = [v25 string];
  v28 = sub_21DBFA16C();
  v30 = v29;

  v31 = sub_21D86F178(v201, v28, v30);

  if ((v31 & 1) == 0)
  {
    v64 = MEMORY[0x223D42B30](v205, v9);
    v65 = v196 + v64;
    if (__OFADD__(v196, v64))
    {
      goto LABEL_156;
    }

    v66 = v26;
    sub_21D86E610(v25, v65, 0, v203, v18, v200 & 1, aBlock);

    v67 = *&aBlock[32];
    if (*&aBlock[32])
    {
      v68 = v216;
      v69 = *&aBlock[40];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62F30, &qword_21DC2DC78);
      v70 = swift_allocObject();
      v71 = *&aBlock[16];
      v70[2] = *aBlock;
      v70[3] = v71;
      v70[1] = xmmword_21DC08D00;
      *&v210 = v70;
      sub_21DBF8E0C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62F38, &unk_21DC2DC80);
      sub_21D873D4C();
      v72 = sub_21DBFA41C();

      sub_21DBF8E0C();
      sub_21DBF8E0C();
      v73 = *(&v68 + 1);
      sub_21D0CF7E0(aBlock, &qword_27CE62F28, &qword_21DC2DC70);
      *a3 = v72;
      *(a3 + 8) = v67;
      *(a3 + 16) = v69;
      *(a3 + 24) = v68;
      *(a3 + 32) = v73;
      *(a3 + 40) = 0;
      return;
    }

LABEL_77:
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    return;
  }

  v32 = v25;
  v33 = [v25 string];
  if (!v33)
  {
    sub_21DBFA16C();
    v33 = sub_21DBFA12C();
  }

  sub_21DBFA16C();
  v34 = v196;
  if (v196 <= 0 || v34 >= MEMORY[0x223D42B30]())
  {
  }

  else
  {
    v226 = String.rangeOfCharacterComposedSequence(before:)([v33 rangeOfComposedCharacterSequenceAtIndex_]);
    if (v226.is_nil)
    {
    }

    else
    {
      v233 = String.rangeOfNewlineCharacter(atOrBefore:)(v226.value.location);
      v84 = v233.value.location;
      v190 = v233.is_nil;

      if (!v190)
      {
        v28 = 0xE100000000000000;
        v25 = 10;
        goto LABEL_56;
      }
    }
  }

  v84 = 0;
  v25 = 0;
  v28 = 0xE000000000000000;
LABEL_56:
  v85 = MEMORY[0x223D42B30](v205, v9);
  v86 = v196 + v85;
  if (__OFADD__(v196, v85))
  {
    goto LABEL_157;
  }

  v9 = v86 - v84;
  if (!__OFSUB__(v86, v84))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58808, &unk_21DC09A50);
    v87 = swift_allocObject();
    *(v87 + 16) = xmmword_21DC08D00;
    *(v87 + 32) = v84;
    *(v87 + 40) = v9;
    *(v87 + 48) = v25;
    *(v87 + 56) = v28;
    sub_21DBF8E0C();
    v88 = MEMORY[0x277D84F90];
    v89 = sub_21D47A0F8(v32, v87, MEMORY[0x277D84F90]);

    v90 = [v89 string];
    v91 = sub_21DBFA16C();
    v93 = v92;

    *a3 = v87;
    *(a3 + 8) = v88;
    *(a3 + 16) = v91;
    *(a3 + 24) = v93;
    *(a3 + 32) = v89;
    *(a3 + 40) = 0;
    return;
  }

  while (1)
  {
    __break(1u);
LABEL_159:
    __break(1u);
LABEL_160:
    __break(1u);
LABEL_161:
    v201 = sub_21D211FB8(0, *(v201 + 2) + 1, 1, v201);
LABEL_71:
    v111 = *(v201 + 2);
    v110 = *(v201 + 3);
    if (v111 >= v110 >> 1)
    {
      v201 = sub_21D211FB8((v110 > 1), v111 + 1, 1, v201);
    }

    v112 = v201;
    *(v201 + 2) = v111 + 1;
    v113 = &v112[32 * v111];
    *(v113 + 2) = v207;
    *(v113 + 6) = v28;
    *(v113 + 7) = v26;
    v35 = v199;
LABEL_74:
    v114 = sub_21DBF8E0C();
    sub_21D562524(v114);

    v9 = v25;
    v115 = [v9 v18[155]];
    sub_21DBFA16C();

    v223.value = 0;
    v223.is_nil = 1;
    v231 = String.rangeOfNewlineCharacter(after:exclusiveEndIndextoSearch:)(v196, v223);
    v28 = v231.value.location;
    *&v206 = v231.value.length;
    LOBYTE(v115) = v231.is_nil;

    if (v115)
    {
      sub_21D0CF7E0(aBlock, &qword_27CE62F28, &qword_21DC2DC70);
      v26 = 1;
    }

    else
    {
      v116 = [v9 v18[155]];
      sub_21DBFA16C();

      v224.value = 0;
      v224.is_nil = 1;
      v232 = String.rangeOfNewlineCharacter(after:exclusiveEndIndextoSearch:)(v28, v224);
      a3 = v232.value.location;
      v192 = *&v232.is_nil;
      sub_21D0CF7E0(aBlock, &qword_27CE62F28, &qword_21DC2DC70);

      v26 = 0;
    }

LABEL_81:
    swift_beginAccess();
    if (!__OFSUB__(*v35, 1))
    {
      break;
    }

LABEL_155:
    __break(1u);
LABEL_156:
    __break(1u);
LABEL_157:
    __break(1u);
  }

  --*v35;
  if (v26)
  {
    v26 = 0;
    v117 = 1;
    goto LABEL_86;
  }

LABEL_84:
  if (__OFSUB__(v28, 1))
  {
LABEL_154:
    __break(1u);
    goto LABEL_155;
  }

  v26 = sub_21D871E88(v28 - 1, v9);
  v117 = 0;
LABEL_86:
  swift_beginAccess();
  v118 = *v35;
  if (*v35 < 1 || (v192 & 1) != 0)
  {
    if (v117)
    {
      goto LABEL_143;
    }

LABEL_133:
    v171 = v28;
    v172 = v191;
    if (v191 < 1)
    {
      goto LABEL_143;
    }

    v173 = sub_21D872028(v171, v9);
    if (!v26)
    {
      goto LABEL_143;
    }

    v175 = v173;
    v176 = v174;
    v108 = v26;
    sub_21D86E610(v9, v206 + v171, v172, v26, v175, v176 & 1, aBlock);
    if (!*&aBlock[32])
    {

      goto LABEL_143;
    }

    v106 = *&aBlock[24];
    v35 = *(&v216 + 1);
    if (!*&aBlock[24])
    {
LABEL_141:
      v181 = sub_21DBF8E0C();
      sub_21D562524(v181);

      v9 = v35;
      sub_21D0CF7E0(aBlock, &qword_27CE62F28, &qword_21DC2DC70);
LABEL_143:
      v182 = v219;
      v183 = v201;
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      v184 = sub_21D47A0F8(v197, v183, v182);

      v185 = [v184 v18[155]];
      v186 = sub_21DBFA16C();
      v188 = v187;

      v189 = v202;
      *v202 = v183;
      v189[1] = v182;
      v189[2] = v186;
      v189[3] = v188;
      v189[4] = v184;
      v189[5] = 0;
      return;
    }

    v209 = *aBlock;
    v18 = *&aBlock[16];
    sub_21DBF8E0C();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_138:
      v178 = *(v201 + 2);
      v177 = *(v201 + 3);
      if (v178 >= v177 >> 1)
      {
        v201 = sub_21D211FB8((v177 > 1), v178 + 1, 1, v201);
      }

      v179 = v201;
      *(v201 + 2) = v178 + 1;
      v180 = &v179[32 * v178];
      *(v180 + 2) = v209;
      *(v180 + 6) = v18;
      *(v180 + 7) = v106;
      v18 = &selRef_setAttributedText_;
      goto LABEL_141;
    }

LABEL_163:
    v201 = sub_21D211FB8(0, *(v201 + 2) + 1, 1, v201);
    goto LABEL_138;
  }

  v119 = v26;
  while (1)
  {
    if (v117)
    {
      v26 = v119;
      goto LABEL_143;
    }

    v120 = v206 + v28;
    if (__OFSUB__(a3, v206 + v28))
    {
      break;
    }

    *v35 = v118 - 1;
    v204 = v28;
    v121 = sub_21D872028(v28, v9);
    sub_21D86E610(v9, v120, a3 - v120, v119, v121, v122 & 1, &v210);
    *aBlock = v210;
    *&aBlock[16] = v211;
    *&aBlock[32] = v212;
    v216 = v213;
    v217 = v214;
    *&v207 = v119;
    if (v212)
    {
      v123 = *&aBlock[24];
      v124 = *(&v216 + 1);
      v125 = v217;
      if (*&aBlock[24])
      {
        v200 = *aBlock;
        v126 = *&aBlock[16];
        sub_21DBF8E0C();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v201 = sub_21D211FB8(0, *(v201 + 2) + 1, 1, v201);
        }

        v128 = *(v201 + 2);
        v127 = *(v201 + 3);
        if (v128 >= v127 >> 1)
        {
          v201 = sub_21D211FB8((v127 > 1), v128 + 1, 1, v201);
        }

        v129 = v201;
        *(v201 + 2) = v128 + 1;
        v130 = &v129[32 * v128];
        *(v130 + 2) = v200;
        *(v130 + 6) = v126;
        *(v130 + 7) = v123;
      }

      v131 = sub_21DBF8E0C();
      sub_21D562524(v131);

      v9 = v124;
      v18 = &selRef_setAttributedText_;
      v132 = [v9 string];
      v133 = sub_21DBFA16C();
      v135 = v134;

      a3 = v209;
      sub_21DBF4C8C();
      v136 = String.rangeOfCharacter(inCharacterSet:atOrAfter:exclusiveEndIndextoSearch:)(a3, *(&v125 + 1) + v125, 0, 1, v133, v135);
      v138 = v137;
      v140 = v139;

      sub_21D0CF7E0(aBlock, &qword_27CE62F28, &qword_21DC2DC70);
      v141 = a3;
    }

    else
    {
      v142 = [v9 v18[155]];
      v143 = sub_21DBFA16C();
      v145 = v144;

      v146 = v209;
      sub_21DBF4C8C();
      v136 = String.rangeOfCharacter(inCharacterSet:atOrAfter:exclusiveEndIndextoSearch:)(v146, a3, 0, 1, v143, v145);
      v138 = v147;
      v140 = v148;

      v141 = v146;
    }

    v198(v141, v208);
    if (v140)
    {
      v26 = v119;
      v28 = v204;
      goto LABEL_133;
    }

    v25 = v9;
    v9 = v136;
    *&v206 = v138;
    v149 = [v25 v18[155]];
    v150 = v149;
    v26 = v149;
    if (!v149)
    {
      sub_21DBFA16C();
      v26 = sub_21DBFA12C();

      sub_21DBFA16C();
      v150 = sub_21DBFA12C();
    }

    v151 = sub_21DBFA16C();
    v153 = v152;
    if (v9 < 0)
    {
      goto LABEL_110;
    }

    v28 = v151;
    v35 = (HIBYTE(v152) & 0xF);
    if ((v152 & 0x1000000000000000) != 0)
    {
      v170 = sub_21DBFA35C();
      v155 = v170 - 1;
      if (__OFSUB__(v170, 1))
      {
        goto LABEL_149;
      }
    }

    else
    {
      v154 = sub_21DBFA36C();
      v155 = v154 - 1;
      if (__OFSUB__(v154, 1))
      {
        goto LABEL_149;
      }
    }

    if (v9 >= v155)
    {
LABEL_110:
      v160 = v149;

LABEL_117:

      a3 = 0;
      v165 = 1;
      goto LABEL_118;
    }

    v156 = v149;
    v157 = [v26 rangeOfComposedCharacterSequenceAtIndex_];
    if ((v157 & 0x8000000000000000) != 0)
    {
      goto LABEL_116;
    }

    v158 = v157;
    if ((v153 & 0x1000000000000000) != 0)
    {
      v159 = sub_21DBFA35C();
    }

    else
    {
      v159 = sub_21DBFA36C();
    }

    if (__OFSUB__(v159, 1))
    {
      goto LABEL_153;
    }

    if (v158 >= v159 - 1)
    {
LABEL_116:

      goto LABEL_117;
    }

    v161 = [v150 rangeOfComposedCharacterSequenceAtIndex_];
    v163 = v162;
    if ((v153 & 0x1000000000000000) != 0)
    {
      v164 = sub_21DBFA35C();
    }

    else
    {
      v164 = sub_21DBFA36C();
    }

    if (v161 + v163 >= v164)
    {

      a3 = 0;
      v165 = 1;
    }

    else
    {
      v167 = [v150 rangeOfComposedCharacterSequenceAtIndex_];

      v168 = v209;
      sub_21DBF4C8C();
      a3 = String.rangeOfCharacter(inCharacterSet:atOrAfter:exclusiveEndIndextoSearch:)(v168, v167, 0, 1, v28, v153);
      v165 = v169;

      v198(v168, v208);
    }

    v18 = &selRef_setAttributedText_;
LABEL_118:
    v35 = v199;
    v166 = v9 - 1;
    if (__OFSUB__(v9, 1))
    {
      goto LABEL_147;
    }

    v28 = v9;
    v9 = v25;
    v26 = sub_21D871E88(v166, v25);

    swift_beginAccess();
    v117 = 0;
    v118 = *v35;
    v119 = v26;
    if ((*v35 < 1) | v165 & 1)
    {
      goto LABEL_133;
    }
  }

  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  swift_once();
LABEL_34:
  v53 = sub_21DBF84BC();
  __swift_project_value_buffer(v53, qword_27CE62E78);
  v54 = sub_21DBF84AC();
  v55 = sub_21DBFAEBC();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&dword_21D0C9000, v54, v55, "TTRParagraphStyleEditingPresenter: Unexpectedly did not find a last newline range after processing a first newline range", v56, 2u);
    MEMORY[0x223D46520](v56, -1, -1);
  }

  v35[1] = 0u;
  v35[2] = 0u;
  *v35 = 0u;
}

char *TTRParagraphStyleEditingPresenter.request(toggleListStyle:in:selectedRange:editingSession:)(char *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();
  if ((TTRRemindersListEditingSession.supportsTextStyling.getter(ObjectType, a6) & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  sub_21D872630(a1, a2, a3, a4);
  v13 = v12;
  v15 = v14;
  sub_21D86C6D0(v14, v25);
  v16 = v25[0];
  if (v25[0])
  {
    v17 = v27;
    v24 = v26;
    v19 = v25[1];
    v18 = v25[2];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_21D2121E4(0, *(v13 + 2) + 1, 1, v13);
    }

    v21 = *(v13 + 2);
    v20 = *(v13 + 3);
    if (v21 >= v20 >> 1)
    {
      v13 = sub_21D2121E4((v20 > 1), v21 + 1, 1, v13);
    }

    *(v13 + 2) = v21 + 1;
    v22 = &v13[48 * v21];
    *(v22 + 4) = v16;
    *(v22 + 5) = v19;
    *(v22 + 6) = v18;
    *(v22 + 56) = v24;
    *(v22 + 9) = v17;
  }

  else
  {
  }

  return v13;
}

void sub_21D86C6D0(objc_class *a1@<X0>, uint64_t a2@<X8>)
{
  sub_21D86C7F8(a1, &v26);
  rawValue = v26.textReplacements._rawValue;
  v4 = v26.paragraphStyleUpdate.paragraphStylesToAdd._rawValue;
  countAndFlagsBits = v26.paragraphStyleUpdate.expectedCurrentText._countAndFlagsBits;
  object = v26.paragraphStyleUpdate.expectedCurrentText._object;
  isa = v26.expectedFinalText.super.isa;
  v9 = v26.postUpdateOption.rawValue;
  if (v26.textReplacements._rawValue)
  {
    v10 = v26.expectedFinalText.super.isa;
  }

  else
  {
    v10 = a1;
  }

  sub_21D86D2FC(v10, &v26);
  v11 = v26.textReplacements._rawValue;
  if (rawValue)
  {
    v20 = rawValue;
    v21 = v4;
    v22 = countAndFlagsBits;
    v23 = object;
    v24 = isa;
    v25 = v9;
    appendingUpdatesFrom.value = v26;
    v16 = v4;
    v17 = countAndFlagsBits;
    v12 = v26.expectedFinalText.super.isa;
    v13 = v26.paragraphStyleUpdate.expectedCurrentText._object;
    v18 = object;
    v14 = v26.paragraphStyleUpdate.expectedCurrentText._countAndFlagsBits;
    v15 = v26.paragraphStyleUpdate.paragraphStylesToAdd._rawValue;
    TTRParagraphStyleEditingPresenterProcessingOutput.output(appendingUpdatesFrom:)(&v26, &appendingUpdatesFrom);

    sub_21D300E70(v11, v15, v14, v13, v12);
    sub_21D300E70(rawValue, v16, v17, v18, isa);
    countAndFlagsBits = v26.paragraphStyleUpdate.expectedCurrentText._countAndFlagsBits;
    object = v26.paragraphStyleUpdate.expectedCurrentText._object;
    isa = v26.expectedFinalText.super.isa;
    v9 = v26.postUpdateOption.rawValue;
    *a2 = *&v26.textReplacements._rawValue;
  }

  else
  {
    sub_21D300E70(v26.textReplacements._rawValue, v26.paragraphStyleUpdate.paragraphStylesToAdd._rawValue, v26.paragraphStyleUpdate.expectedCurrentText._countAndFlagsBits, v26.paragraphStyleUpdate.expectedCurrentText._object, v26.expectedFinalText.super.isa);

    *a2 = 0;
    *(a2 + 8) = v4;
  }

  *(a2 + 16) = countAndFlagsBits;
  *(a2 + 24) = object;
  *(a2 + 32) = isa;
  *(a2 + 40) = v9;
}

uint64_t sub_21D86C7F8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_21DBF4CAC();
  v5 = *(v4 - 8);
  *&v6 = MEMORY[0x28223BE20](v4).n128_u64[0];
  v8 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = &selRef_setAttributedText_;
  v10 = [a1 string];
  v11 = sub_21DBFA16C();
  v13 = v12;

  sub_21DBF4C8C();
  v14 = String.rangeOfCharacter(inCharacterSet:atOrAfter:exclusiveEndIndextoSearch:)(v8, 0, 0, 1, v11, v13);
  LOBYTE(v11) = v15;

  v17 = *(v5 + 8);
  v16 = (v5 + 8);
  v99 = v8;
  v98 = v17;
  v17(v8, v4);
  if (v11)
  {
    v18 = [a1 string];
    v19 = sub_21DBFA16C();
    v21 = v20;

    v14 = MEMORY[0x223D42B30](v19, v21);
  }

  v92 = a1;
  sub_21D749C9C(0, 0, 2u);
  v22 = sub_21D2120C4(0, 1, 1, MEMORY[0x277D84F90]);
  v24 = *(v22 + 2);
  v23 = *(v22 + 3);
  v25 = v24 + 1;
  v90 = a2;
  if (v24 >= v23 >> 1)
  {
LABEL_67:
    v22 = sub_21D2120C4((v23 > 1), v25, 1, v22);
  }

  v26 = swift_allocObject();
  v27 = swift_allocObject();
  *(v22 + 2) = v25;
  v28 = &v22[40 * v24];
  *(v28 + 4) = 0;
  *(v28 + 5) = 0;
  v28[48] = 2;
  *(v28 + 7) = 0;
  *(v28 + 8) = 0;
  v95 = v26;
  *(v26 + 16) = v22;
  v101 = (v26 + 16);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59AB8, &unk_21DC0CCF0);
  inited = swift_initStackObject();
  v96 = xmmword_21DC08D00;
  *(inited + 16) = xmmword_21DC08D00;
  *(inited + 40) = 0;
  *(inited + 32) = 0;
  *(inited + 48) = 2;
  *(inited + 56) = 0;
  *(inited + 64) = 0;
  sub_21D749C9C(0, 0, 2u);
  v30 = v92;
  v22 = sub_21D47A0F8(v92, MEMORY[0x277D84F90], inited);
  swift_setDeallocating();
  sub_21D873C60(inited + 32);

  v94 = v27;
  *(v27 + 16) = v22;
  v100 = (v27 + 16);
  swift_beginAccess();
  v25 = 0;
  v89 = *MEMORY[0x277D44C88];
  v31 = v14;
  v93 = v16;
  while (1)
  {
    v32 = [v22 v9[155]];
    sub_21DBFA16C();
    v34 = v33;

    if ((v34 & 0x1000000000000000) != 0)
    {
      v35 = sub_21DBFA35C();
    }

    else
    {
      v35 = sub_21DBFA36C();
    }

    v36 = v35;

    if (v25 < v36)
    {
      v37 = sub_21D871E88(v25, v22);
      if (v37)
      {
        v38 = v37;
        v39 = [v37 remParagraphStyle];
        if (v39 <= 1)
        {
          if (v39 != 1)
          {
            goto LABEL_24;
          }

          if (qword_27CE56D90 != -1)
          {
            swift_once();
          }

          v40 = v4;
          v41 = qword_27CE62ED8;
          goto LABEL_22;
        }

        if (v39 == 2)
        {
          if (qword_27CE56D88 != -1)
          {
            swift_once();
          }

          v40 = v4;
          v41 = qword_27CE62EC0;
LABEL_22:
          v43 = __swift_project_value_buffer(v40, v41);
          if ((sub_21D872168(v25, v22, v43) & 1) == 0)
          {
            goto LABEL_24;
          }

          v105 = v38;
          LOBYTE(v106) = 0;
          goto LABEL_32;
        }

        if (v39 != 3 || (sub_21D872400(v25, v14, v22), (v42 & 1) == 0))
        {
LABEL_24:
          sub_21D86E264(v25, v14, v95, v94);

          goto LABEL_33;
        }

        if ([v92 attribute:v89 atIndex:v25 effectiveRange:0])
        {
          sub_21DBFBC1C();
          swift_unknownObjectRelease();
        }

        else
        {
          v104 = 0u;
          v103 = 0u;
        }

        v106 = v104;
        v105 = v103;
        if (*(&v104 + 1))
        {
          if (swift_dynamicCast())
          {
            v44 = v102;
LABEL_31:
            *&v105 = v38;
            *(&v105 + 1) = v44;
            LOBYTE(v106) = 1;
LABEL_32:
            sub_21D86E42C(&v105, v25, v14, v95, v94);
            sub_21D228468(v105, *(&v105 + 1), v106);
            goto LABEL_33;
          }
        }

        else
        {
          sub_21D0CF7E0(&v105, &qword_27CE5C690, &unk_21DC11AB0);
        }

        v44 = 1;
        goto LABEL_31;
      }
    }

LABEL_33:
    v45 = *v100;
    v46 = [*v100 v9[155]];
    v47 = sub_21DBFA16C();
    v49 = v48;

    v50 = v99;
    sub_21DBF4C8C();
    v14 = String.rangeOfCharacter(inCharacterSet:atOrAfter:exclusiveEndIndextoSearch:)(v50, v31, 0, 1, v47, v49);
    v25 = v51;
    LOBYTE(v47) = v52;

    v98(v50, v4);
    if (v47)
    {
      break;
    }

    v53 = v101;
    swift_beginAccess();
    v54 = *v53;
    sub_21D749C9C(0, 0, 2u);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v54 = sub_21D2120C4(0, *(v54 + 2) + 1, 1, v54);
    }

    v56 = *(v54 + 2);
    v55 = *(v54 + 3);
    if (v56 >= v55 >> 1)
    {
      v54 = sub_21D2120C4((v55 > 1), v56 + 1, 1, v54);
    }

    *(v54 + 2) = v56 + 1;
    v57 = &v54[40 * v56];
    *(v57 + 4) = 0;
    *(v57 + 5) = 0;
    v57[48] = 2;
    *(v57 + 7) = v14;
    *(v57 + 8) = v25;
    *v101 = v54;
    swift_endAccess();
    v24 = swift_initStackObject();
    *(v24 + 16) = v96;
    *(v24 + 40) = 0;
    *(v24 + 32) = 0;
    *(v24 + 48) = 2;
    *(v24 + 56) = v14;
    *(v24 + 64) = v25;
    sub_21D749C9C(0, 0, 2u);
    v22 = sub_21D47A0F8(v45, MEMORY[0x277D84F90], v24);
    swift_setDeallocating();
    sub_21D873C60(v24 + 32);
    *v100 = v22;

    v58 = [v22 v9[155]];
    if (!v58)
    {
      sub_21DBFA16C();
      v24 = v59;
      v58 = sub_21DBFA12C();
    }

    v60 = sub_21DBFA16C();
    v62 = v61;
    if (v14 < 0)
    {
      goto LABEL_51;
    }

    v63 = v60;
    if ((v61 & 0x1000000000000000) != 0)
    {
      v64 = sub_21DBFA35C();
    }

    else
    {
      v64 = sub_21DBFA36C();
    }

    v23 = v64 - 1;
    if (__OFSUB__(v64, 1))
    {
      goto LABEL_65;
    }

    if (v14 >= v23)
    {
LABEL_51:

LABEL_54:
      v76 = [v22 v9[155]];
      sub_21DBFA16C();
      v24 = v77;

      if ((v24 & 0x1000000000000000) != 0)
      {
        v78 = sub_21DBFA35C();
      }

      else
      {
        v78 = sub_21DBFA36C();
      }

      v31 = v78;

      goto LABEL_57;
    }

    v16 = v9;
    v65 = [v58 rangeOfComposedCharacterSequenceAtIndex_];
    if ((v65 & 0x8000000000000000) != 0)
    {
      goto LABEL_52;
    }

    v9 = v65;
    v66 = MEMORY[0x223D42B30](v63, v62);
    v23 = v66 - 1;
    if (__OFSUB__(v66, 1))
    {
      goto LABEL_66;
    }

    if (v9 >= v23)
    {
LABEL_52:

LABEL_53:
      v9 = v16;
      v16 = v93;
      goto LABEL_54;
    }

    v67 = sub_21DBFA12C();
    v68 = [v67 rangeOfComposedCharacterSequenceAtIndex_];
    v70 = &v68[v69];
    if (&v68[v69] >= MEMORY[0x223D42B30](v63, v62))
    {

      goto LABEL_53;
    }

    v71 = [v67 rangeOfComposedCharacterSequenceAtIndex_];

    v24 = v99;
    sub_21DBF4C8C();
    v31 = String.rangeOfCharacter(inCharacterSet:atOrAfter:exclusiveEndIndextoSearch:)(v24, v71, 0, 1, v63, v62);
    v91 = v72;

    v73 = v4;
    v74 = v4;
    v75 = v93;
    v98(v24, v74);
    v9 = v16;
    v16 = v75;
    v4 = v73;
    if (v91)
    {
      goto LABEL_54;
    }

LABEL_57:
    sub_21D228468(0, 0, 2u);
    v25 += v14;
    v14 = v31 - v25;
    if (__OFSUB__(v31, v25))
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }
  }

  swift_beginAccess();
  v79 = *(v95 + 16);
  sub_21DBF8E0C();
  v80 = MEMORY[0x277D84F90];
  v81 = sub_21D47A0F8(v92, MEMORY[0x277D84F90], v79);

  sub_21DBF8E0C();
  v82 = [v81 v9[155]];
  v83 = sub_21DBFA16C();
  v85 = v84;

  sub_21D228468(0, 0, 2u);

  v87 = v90;
  *v90 = v80;
  v87[1] = v79;
  v87[2] = v83;
  v87[3] = v85;
  v87[4] = v81;
  v87[5] = 0;
  return result;
}

void sub_21D86D2FC(void *a1@<X0>, char **a2@<X8>)
{
  v113 = a2;
  v3 = sub_21DBF4CAC();
  v4 = *(v3 - 8);
  *&v5 = MEMORY[0x28223BE20](v3).n128_u64[0];
  v7 = &v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 string];
  v9 = sub_21DBFA16C();
  v11 = v10;

  sub_21DBF4C8C();
  v12 = String.rangeOfCharacter(inCharacterSet:atOrAfter:exclusiveEndIndextoSearch:)(v7, 0, 0, 1, v9, v11);
  LOBYTE(v8) = v13;

  v14 = *(v4 + 8);
  v118 = v7;
  v119 = v4 + 8;
  v120 = v3;
  v117 = v14;
  v14(v7, v3);
  if (v8)
  {
    v15 = [a1 string];
    v16 = sub_21DBFA16C();
    v18 = v17;

    v12 = MEMORY[0x223D42B30](v16, v18);
  }

  v19 = a1;
  v20 = 0;
  v111 = xmmword_21DC08D00;
  v114 = MEMORY[0x277D84F90];
  v115 = MEMORY[0x277D84F90];
  v112 = v19;
  v21 = v12;
  v116 = 1;
  do
  {
    v22 = [v19 string];
    sub_21DBFA16C();
    v24 = v23;

    if ((v24 & 0x1000000000000000) != 0)
    {
      v25 = sub_21DBFA35C();
    }

    else
    {
      v25 = sub_21DBFA36C();
    }

    v26 = v25;

    if (v20 >= v26)
    {
      goto LABEL_13;
    }

    v27 = sub_21D871E88(v20, v19);
    if (!v27)
    {
      goto LABEL_13;
    }

    v28 = v27;
    if ([v27 remParagraphStyle] != 3)
    {

LABEL_13:
      v116 = 1;
      goto LABEL_14;
    }

    v121 = v19;
    v29 = [v19 string];
    v30 = sub_21DBFA16C();
    v32 = v31;

    v33 = v118;
    sub_21DBF4C4C();
    v34 = String.rangeOfCharacter(inCharacterSet:atOrAfter:exclusiveEndIndextoSearch:)(v33, v20, v12 + v20, 0, v30, v32);
    LOBYTE(v29) = v35;

    v117(v33, v120);
    if ((v29 & 1) != 0 || v34 == v20)
    {

      v116 = 1;
      v19 = v121;
    }

    else
    {
      v73 = v116;
      v122 = v116;
      v74 = sub_21DBFC5BC();
      v76 = v34 - v20;
      if (__OFSUB__(v34, v20))
      {
        goto LABEL_64;
      }

      if (__OFADD__(v73, 1))
      {
        goto LABEL_65;
      }

      v77 = v74;
      v78 = v75;
      v110 = v73 + 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58808, &unk_21DC09A50);
      inited = swift_initStackObject();
      *(inited + 16) = v111;
      *(inited + 32) = v20;
      v104 = inited + 32;
      v106 = v76;
      *(inited + 40) = v76;
      *(inited + 48) = v77;
      v108 = v77;
      *(inited + 56) = v78;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59AB8, &unk_21DC0CCF0);
      v80 = v78;
      v81 = swift_initStackObject();
      *(v81 + 16) = v111;
      *(v81 + 32) = v28;
      *(v81 + 40) = v73;
      *(v81 + 48) = 1;
      *(v81 + 56) = v20;
      *(v81 + 64) = v12;
      v109 = v28;
      v107 = v80;
      sub_21DBF8E0C();
      sub_21D749C9C(v28, v73, 1u);
      v82 = v121;
      v105 = sub_21D47A0F8(v121, inited, v81);

      swift_setDeallocating();
      sub_21D873C60(v81 + 32);
      swift_setDeallocating();
      sub_21D873CB4(v104);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v115 = sub_21D211FB8(0, *(v115 + 2) + 1, 1, v115);
      }

      v83 = v114;
      v85 = *(v115 + 2);
      v84 = *(v115 + 3);
      if (v85 >= v84 >> 1)
      {
        v115 = sub_21D211FB8((v84 > 1), v85 + 1, 1, v115);
      }

      v86 = v115;
      *(v115 + 2) = v85 + 1;
      v87 = &v86[32 * v85];
      v88 = v106;
      *(v87 + 4) = v20;
      *(v87 + 5) = v88;
      v89 = v107;
      *(v87 + 6) = v108;
      *(v87 + 7) = v89;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v83 = sub_21D2120C4(0, *(v83 + 2) + 1, 1, v83);
      }

      v91 = *(v83 + 2);
      v90 = *(v83 + 3);
      if (v91 >= v90 >> 1)
      {
        v83 = sub_21D2120C4((v90 > 1), v91 + 1, 1, v83);
      }

      *(v83 + 2) = v91 + 1;
      v114 = v83;
      v92 = &v83[40 * v91];
      v93 = v116;
      *(v92 + 4) = v28;
      *(v92 + 5) = v93;
      v92[48] = 1;
      *(v92 + 7) = v20;
      *(v92 + 8) = v12;
      v116 = v110;
      v19 = v105;
    }

LABEL_14:
    v36 = [v19 string];
    v37 = sub_21DBFA16C();
    v39 = v38;

    v40 = v118;
    sub_21DBF4C8C();
    v41 = String.rangeOfCharacter(inCharacterSet:atOrAfter:exclusiveEndIndextoSearch:)(v40, v21, 0, 1, v37, v39);
    v43 = v42;
    v45 = v44;

    v117(v40, v120);
    if (v45)
    {
      v95 = v115;
      sub_21DBF8E0C();
      v96 = v114;
      sub_21DBF8E0C();
      v97 = sub_21D47A0F8(v112, v95, v96);

      v98 = [v97 string];
      v99 = sub_21DBFA16C();
      v101 = v100;

      v102 = v113;
      *v113 = v95;
      v102[1] = v96;
      v102[2] = v99;
      v102[3] = v101;
      v102[4] = v97;
      v102[5] = 0;
      return;
    }

    v46 = [v19 string];
    v47 = v46;
    v48 = v46;
    if (!v46)
    {
      sub_21DBFA16C();
      v48 = sub_21DBFA12C();

      sub_21DBFA16C();
      v47 = sub_21DBFA12C();
    }

    v49 = sub_21DBFA16C();
    v51 = v50;
    if (v41 < 0)
    {
      v59 = v46;
      v60 = v48;
      goto LABEL_33;
    }

    v52 = v49;
    v121 = v19;
    if ((v50 & 0x1000000000000000) != 0)
    {
      v94 = sub_21DBFA35C();
      v54 = v94 - 1;
      if (__OFSUB__(v94, 1))
      {
        goto LABEL_62;
      }
    }

    else
    {
      v53 = sub_21DBFA36C();
      v54 = v53 - 1;
      if (__OFSUB__(v53, 1))
      {
        goto LABEL_62;
      }
    }

    v55 = v46;
    if (v41 >= v54)
    {
      v60 = v48;
LABEL_32:
      v19 = v121;
      goto LABEL_33;
    }

    v56 = [v48 rangeOfComposedCharacterSequenceAtIndex_];
    if ((v56 & 0x8000000000000000) != 0)
    {
      goto LABEL_31;
    }

    v57 = v56;
    if ((v51 & 0x1000000000000000) != 0)
    {
      v58 = sub_21DBFA35C();
    }

    else
    {
      v58 = sub_21DBFA36C();
    }

    if (__OFSUB__(v58, 1))
    {
      goto LABEL_63;
    }

    if (v57 >= v58 - 1)
    {
LABEL_31:
      v60 = v47;
      v47 = v48;
      goto LABEL_32;
    }

    v61 = [v47 rangeOfComposedCharacterSequenceAtIndex_];
    v63 = v62;
    if ((v51 & 0x1000000000000000) != 0)
    {
      v64 = sub_21DBFA35C();
    }

    else
    {
      v64 = sub_21DBFA36C();
    }

    v19 = v121;
    if (v61 + v63 < v64)
    {
      v69 = [v47 rangeOfComposedCharacterSequenceAtIndex_];

      v70 = v118;
      sub_21DBF4C8C();
      v21 = String.rangeOfCharacter(inCharacterSet:atOrAfter:exclusiveEndIndextoSearch:)(v70, v69, 0, 1, v52, v51);
      v72 = v71;

      v117(v70, v120);
      if ((v72 & 1) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v60 = v47;
    v47 = v48;
LABEL_33:

LABEL_34:
    v65 = [v19 string];
    sub_21DBFA16C();
    v67 = v66;

    if ((v67 & 0x1000000000000000) != 0)
    {
      v68 = sub_21DBFA35C();
    }

    else
    {
      v68 = sub_21DBFA36C();
    }

    v21 = v68;

LABEL_37:
    v20 = v43 + v41;
    v12 = v21 - v20;
  }

  while (!__OFSUB__(v21, v20));
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
}

Swift::Int sub_21D86DCE0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = sub_21DBF4CAC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v11 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {
    return 0;
  }

  MEMORY[0x223D42B30](a3, a4, v8);
  v12 = sub_21DBFB9CC();
  if (v14)
  {
    return 0;
  }

  v15 = v13;
  v16 = v12;
  v23 = String.rangeOfNewlineCharacter(atOrBefore:)(v12);
  v17 = v23.is_nil ? 0 : v23.value.location + v23.value.length;
  sub_21DBF4C8C();
  v18 = String.rangeOfCharacter(inCharacterSet:atOrAfter:exclusiveEndIndextoSearch:)(v10, v16 + v15, 0, 1, a3, a4);
  v20 = v19;
  (*(v7 + 8))(v10, v6);
  if (v20)
  {
    v18 = MEMORY[0x223D42B30](a3, a4);
  }

  if (v17 >= v18)
  {
    return 0;
  }

  result = v17;
  if (__OFSUB__(v18, v17))
  {
    __break(1u);
  }

  return result;
}

void sub_21D86DE7C(uint64_t a1, uint64_t a2, Swift::Int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return;
  }

  v14 = [objc_opt_self() attributeNameForStyle_];
  v15 = [a9 attribute:v14 atIndex:a3 effectiveRange:0];

  if (!v15)
  {
LABEL_16:

    return;
  }

  sub_21DBFBC1C();
  swift_unknownObjectRelease();
  sub_21D0CF2E8(&v43, &v44);
  v16 = objc_allocWithZone(MEMORY[0x277D44888]);
  __swift_project_boxed_opaque_existential_1(&v44, v45);
  v17 = [v16 initWithContents_];
  swift_unknownObjectRelease();
  if (!v17)
  {
    __swift_destroy_boxed_opaque_existential_0(&v44);
    goto LABEL_16;
  }

  if ([v17 remParagraphStyle] != 3)
  {
    __swift_destroy_boxed_opaque_existential_0(&v44);

    goto LABEL_16;
  }

  swift_beginAccess();
  v18 = [*(a10 + 16) string];
  sub_21DBFA16C();
  v20 = v19;

  v46 = String.rangeOfNewlineCharacter(atOrBefore:)(a3);
  location = v46.value.location;
  is_nil = v46.is_nil;

  v23 = 0;
  if (!is_nil)
  {
    swift_beginAccess();
    v24 = *(a10 + 16);
    v25 = sub_21D872028(location, v24);
    v20 = v26;

    if (v20)
    {
      v23 = 0;
    }

    else
    {
      v23 = v25;
    }
  }

  v27 = v23 + 1;
  if (__OFADD__(v23, 1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v11 = a11;
  swift_beginAccess();
  v20 = *(a11 + 16);
  v42 = v17;
  sub_21D749C9C(v17, v27, 1u);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a11 + 16) = v20;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_19:
    v20 = sub_21D2120C4(0, *(v20 + 2) + 1, 1, v20);
    *(v11 + 16) = v20;
  }

  v29 = *(v20 + 2);
  v30 = *(v20 + 3);
  v31 = v29 + 1;
  if (v29 >= v30 >> 1)
  {
    v41 = v29 + 1;
    v38 = v20;
    v39 = *(v20 + 2);
    v40 = sub_21D2120C4((v30 > 1), v29 + 1, 1, v38);
    v29 = v39;
    v31 = v41;
    v20 = v40;
  }

  *(v20 + 2) = v31;
  v32 = &v20[40 * v29];
  *(v32 + 4) = v17;
  *(v32 + 5) = v27;
  v32[48] = 1;
  *(v32 + 7) = a3;
  *(v32 + 8) = a4;
  *(v11 + 16) = v20;
  swift_endAccess();
  swift_beginAccess();
  v33 = *(a10 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59AB8, &unk_21DC0CCF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D00;
  *(inited + 32) = v17;
  *(inited + 40) = v27;
  *(inited + 48) = 1;
  *(inited + 56) = a3;
  *(inited + 64) = a4;
  sub_21D749C9C(v17, v27, 1u);
  v35 = v33;
  v36 = sub_21D47A0F8(v35, MEMORY[0x277D84F90], inited);

  swift_setDeallocating();
  sub_21D873C60(inited + 32);

  sub_21D228468(v17, v27, 1u);
  __swift_destroy_boxed_opaque_existential_0(&v44);
  swift_beginAccess();
  v37 = *(a10 + 16);
  *(a10 + 16) = v36;
}

void sub_21D86E264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v8 = *(a3 + 16);
  sub_21D749C9C(0, 0, 2u);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a3 + 16) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_21D2120C4(0, *(v8 + 2) + 1, 1, v8);
    *(a3 + 16) = v8;
  }

  v11 = *(v8 + 2);
  v10 = *(v8 + 3);
  if (v11 >= v10 >> 1)
  {
    v8 = sub_21D2120C4((v10 > 1), v11 + 1, 1, v8);
  }

  *(v8 + 2) = v11 + 1;
  v12 = &v8[40 * v11];
  *(v12 + 4) = 0;
  *(v12 + 5) = 0;
  v12[48] = 2;
  *(v12 + 7) = a1;
  *(v12 + 8) = a2;
  *(a3 + 16) = v8;
  swift_endAccess();
  swift_beginAccess();
  v13 = *(a4 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59AB8, &unk_21DC0CCF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D00;
  *(inited + 40) = 0;
  *(inited + 32) = 0;
  *(inited + 48) = 2;
  *(inited + 56) = a1;
  *(inited + 64) = a2;
  sub_21D749C9C(0, 0, 2u);
  v15 = v13;
  v16 = sub_21D47A0F8(v15, MEMORY[0x277D84F90], inited);
  sub_21D228468(0, 0, 2u);
  swift_setDeallocating();
  sub_21D873C60(inited + 32);

  swift_beginAccess();
  v17 = *(a4 + 16);
  *(a4 + 16) = v16;
}

void sub_21D86E42C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  swift_beginAccess();
  v12 = *(a4 + 16);
  sub_21D749C9C(v9, v10, v11);
  sub_21D749C9C(v9, v10, v11);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a4 + 16) = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = sub_21D2120C4(0, *(v12 + 2) + 1, 1, v12);
    *(a4 + 16) = v12;
  }

  v15 = *(v12 + 2);
  v14 = *(v12 + 3);
  if (v15 >= v14 >> 1)
  {
    v12 = sub_21D2120C4((v14 > 1), v15 + 1, 1, v12);
  }

  *(v12 + 2) = v15 + 1;
  v16 = &v12[40 * v15];
  *(v16 + 4) = v9;
  *(v16 + 5) = v10;
  v16[48] = v11;
  *(v16 + 7) = a2;
  *(v16 + 8) = a3;
  *(a4 + 16) = v12;
  swift_endAccess();
  swift_beginAccess();
  v17 = *(a5 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59AB8, &unk_21DC0CCF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D00;
  *(inited + 32) = v9;
  *(inited + 40) = v10;
  *(inited + 48) = v11;
  *(inited + 56) = a2;
  *(inited + 64) = a3;
  sub_21D749C9C(v9, v10, v11);
  v19 = v17;
  v20 = sub_21D47A0F8(v19, MEMORY[0x277D84F90], inited);
  sub_21D228468(v9, v10, v11);
  swift_setDeallocating();
  sub_21D873C60(inited + 32);

  swift_beginAccess();
  v21 = *(a5 + 16);
  *(a5 + 16) = v20;
}

void sub_21D86E610(void *a1@<X0>, Swift::Int a2@<X1>, Swift::Int a3@<X2>, id a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, _OWORD *a7@<X8>)
{
  v121 = a3;
  v122 = a7;
  v12 = sub_21DBF4CAC();
  v13 = *(v12 - 8);
  *&v14 = MEMORY[0x28223BE20](v12).n128_u64[0];
  v16 = &v110 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = a1;
  v17 = [a1 string];
  v18 = sub_21DBFA16C();
  v20 = v19;

  v21 = v18;
  v22 = a2;
  v23 = MEMORY[0x223D42B30](v21, v20);

  if (v23 > a2)
  {
    v24 = sub_21D871E88(a2, v123);
    if (v24)
    {
      v25 = v24;
      if (a6)
      {
        v26 = 0;
      }

      else
      {
        v26 = a5;
      }

      v27 = v26 + 1;
      v28 = __OFADD__(v26, 1);
      v29 = v24;
      if (!v28)
      {
        a4 = v29;
        v30 = [v29 remParagraphStyle];
        if (v30 <= 1)
        {
          v31 = &selRef_setAttributedText_;
          if (v30 == 1)
          {
            v117 = v25;
            v32 = [v123 string];
            if (v32)
            {
              v33 = v32;
              v34 = [v32 substringWithRange_];

              v35 = sub_21DBFA16C();
              v37 = v36;

              LOBYTE(v35) = sub_21D86F178(0, v35, v37);

              v38 = 0;
              LODWORD(v119) = 0;
              if ((v35 & 1) == 0)
              {
                v39 = 547520738;
LABEL_52:
                v44 = 0xA400000000000000;
                goto LABEL_58;
              }

              goto LABEL_50;
            }

            __break(1u);
            goto LABEL_77;
          }

LABEL_42:
          if (qword_27CE56D70 != -1)
          {
            swift_once();
          }

          v58 = sub_21DBF84BC();
          __swift_project_value_buffer(v58, qword_27CE62E78);
          v59 = sub_21DBF84AC();
          v60 = sub_21DBFAEBC();
          if (os_log_type_enabled(v59, v60))
          {
            v61 = swift_slowAlloc();
            *v61 = 0;
            _os_log_impl(&dword_21D0C9000, v59, v60, "Invalid REMTTParagraphStyle processed in TTRParagraphStyleEditingPresenter", v61, 2u);
            MEMORY[0x223D46520](v61, -1, -1);
          }

          goto LABEL_68;
        }

        v31 = &selRef_setAttributedText_;
        if (v30 == 2)
        {
          v117 = v25;
          v63 = [v123 string];
          if (v63)
          {
            v64 = v63;
            v65 = [v63 substringWithRange_];

            v66 = sub_21DBFA16C();
            v68 = v67;

            LOBYTE(v66) = sub_21D86F178(0, v66, v68);

            v38 = 0;
            LODWORD(v119) = 0;
            if ((v66 & 1) == 0)
            {
              v39 = 546537698;
              goto LABEL_52;
            }

LABEL_50:
            v69 = 0;
            v39 = 0;
            v44 = 0;
            goto LABEL_59;
          }

LABEL_78:
          __break(1u);
          return;
        }

        if (v30 != 3)
        {
          goto LABEL_42;
        }

        v120 = v27;
        v49 = [v123 string];
        if (!v49)
        {
LABEL_77:
          __break(1u);
          goto LABEL_78;
        }

        v50 = v49;
        v117 = v25;
        v111 = a4;
        v51 = [v49 substringWithRange_];

        v52 = sub_21DBFA16C();
        v54 = v53;

        v55 = HIBYTE(v54) & 0xF;
        if ((v54 & 0x2000000000000000) == 0)
        {
          v55 = v52 & 0xFFFFFFFFFFFFLL;
        }

        if (v55)
        {
          v56 = 4 * v55;
          do
          {
            sub_21DBFA3CC();
            sub_21DBF4BDC();
            v57 = sub_21DBF4BFC();

            (*(v13 + 8))(v16, v12);
          }

          while ((v57 & 1) != 0 && v56 != sub_21DBFA29C() >> 14);
        }

        sub_21DBFA3FC();

        v38 = sub_21DBFBACC();

        v27 = v120;
        v124 = v120;
        if (v38)
        {
          v39 = sub_21DBFC5BC();
          v44 = v70;
          LODWORD(v119) = 0;
        }

        else
        {
          v124 = sub_21DBFC5BC();
          v125 = v71;
          sub_21DBF8E0C();
          MEMORY[0x223D42AA0](46, 0xE100000000000000);

          sub_21DBF8E0C();
          MEMORY[0x223D42AA0](32, 0xE100000000000000);

          LODWORD(v119) = 0;
          v39 = v124;
          v44 = v125;
        }

        a4 = v111;
LABEL_57:
        v31 = &selRef_setAttributedText_;
        goto LABEL_58;
      }

LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }
  }

  if (!a4)
  {
LABEL_68:
    v88 = v122;
    v122[3] = 0u;
    v88[4] = 0u;
    v88[1] = 0u;
    v88[2] = 0u;
    *v88 = 0u;
    return;
  }

  v40 = a4;
  v41 = [v40 remParagraphStyle];
  a4 = [objc_allocWithZone(MEMORY[0x277D44888]) initWithStyle_];

  if (a6)
  {
    v42 = 0;
  }

  else
  {
    v42 = a5;
  }

  v27 = v42 + 1;
  if (__OFADD__(v42, 1))
  {
    goto LABEL_72;
  }

  v39 = 546537698;
  v43 = [a4 remParagraphStyle];
  if (v43 > 1)
  {
    if (v43 == 3)
    {
      v124 = v27;
      v124 = sub_21DBFC5BC();
      v125 = v62;
      sub_21DBF8E0C();
      MEMORY[0x223D42AA0](46, 0xE100000000000000);

      sub_21DBF8E0C();
      MEMORY[0x223D42AA0](32, 0xE100000000000000);

      v117 = 0;
      v38 = 0;
      v39 = v124;
      v44 = v125;
      LODWORD(v119) = 1;
      goto LABEL_57;
    }

    v31 = &selRef_setAttributedText_;
    if (v43 == 2)
    {
      v117 = 0;
      v38 = 0;
      goto LABEL_27;
    }

LABEL_28:
    if (qword_27CE56D70 == -1)
    {
LABEL_29:
      v45 = sub_21DBF84BC();
      __swift_project_value_buffer(v45, qword_27CE62E78);
      v46 = sub_21DBF84AC();
      v47 = sub_21DBFAEBC();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&dword_21D0C9000, v46, v47, "Invalid REMTTParagraphStyle processed in TTRParagraphStyleEditingPresenter", v48, 2u);
        MEMORY[0x223D46520](v48, -1, -1);
      }

      goto LABEL_68;
    }

LABEL_75:
    swift_once();
    goto LABEL_29;
  }

  if (!v43)
  {
    goto LABEL_28;
  }

  v31 = &selRef_setAttributedText_;
  if (v43 != 1)
  {
    goto LABEL_28;
  }

  v117 = 0;
  v38 = 0;
  v39 = 547520738;
LABEL_27:
  v44 = 0xA400000000000000;
  LODWORD(v119) = 1;
LABEL_58:
  v69 = v38;
  v38 = v22;
LABEL_59:
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62F30, &qword_21DC2DC78);
  v72 = swift_allocObject();
  v118 = xmmword_21DC08D00;
  *(v72 + 16) = xmmword_21DC08D00;
  *(v72 + 32) = v38;
  *(v72 + 40) = v69;
  v116 = v69;
  *(v72 + 48) = v39;
  *(v72 + 56) = v44;
  v124 = v72;
  v120 = v44;
  sub_21DBF8E0C();
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62F38, &unk_21DC2DC80);
  v113 = sub_21D873D4C();
  v114 = v73;
  v74 = sub_21DBFA41C();

  sub_21DBF8E0C();
  v75 = sub_21D47A0F8(v123, v74, MEMORY[0x277D84F90]);
  swift_bridgeObjectRelease_n();
  v76 = [v75 v31[155]];
  sub_21DBFA16C();

  v129.value = 0;
  v129.is_nil = 1;
  v130 = String.rangeOfNewlineCharacter(after:exclusiveEndIndextoSearch:)(v22, v129);
  location = v130.value.location;
  is_nil = v130.is_nil;

  if (is_nil)
  {
    v79 = [v75 v31[155]];
    v80 = sub_21DBFA16C();
    v82 = v81;

    location = MEMORY[0x223D42B30](v80, v82);
  }

  if (__OFSUB__(location, v22))
  {
    goto LABEL_73;
  }

  v112 = v39;
  v83 = (location - v22) & ~((location - v22) >> 63);
  v84 = v121 + v83;
  if (__OFADD__(v121, v83))
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  if (v119)
  {
    sub_21D86F618([a4 remParagraphStyle], a4, v22, v84, v27, &v124);
    v85 = v126;
    if (v126 == 255)
    {

      goto LABEL_68;
    }

    v119 = v84;
    v121 = v22;
    v111 = a4;
    v90 = v127;
    v89 = v128;
    v92 = v124;
    v91 = v125;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59AB8, &unk_21DC0CCF0);
    v93 = swift_allocObject();
    *(v93 + 16) = v118;
    *(v93 + 32) = v92;
    *(v93 + 40) = v91;
    *(v93 + 48) = v85;
    *(v93 + 56) = v90;
    *(v93 + 64) = v89;
    v86 = v117;
  }

  else
  {
    v86 = v117;
    sub_21D86F618([v86 remParagraphStyle], a4, v22, v84, v27, &v124);
    v87 = v126;
    if (v126 == 255)
    {

      goto LABEL_68;
    }

    v119 = v84;
    v121 = v22;
    v111 = a4;
    v95 = v127;
    v94 = v128;
    v96 = v124;
    v97 = v125;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59AB8, &unk_21DC0CCF0);
    v93 = swift_allocObject();
    *(v93 + 16) = v118;
    *(v93 + 32) = v96;
    *(v93 + 40) = v97;
    *(v93 + 48) = v87;
    *(v93 + 56) = v95;
    *(v93 + 64) = v94;
  }

  sub_21DBF8E0C();
  v98 = swift_allocObject();
  *(v98 + 16) = v118;
  v99 = v116;
  *(v98 + 32) = v38;
  *(v98 + 40) = v99;
  v100 = v112;
  *&v118 = v38;
  v101 = v120;
  *(v98 + 48) = v112;
  *(v98 + 56) = v101;
  v124 = v98;
  sub_21DBF8E0C();
  v102 = sub_21DBFA41C();

  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v103 = sub_21D47A0F8(v123, v102, v93);
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v104 = [v103 string];
  v105 = sub_21DBFA16C();
  v107 = v106;

  v108 = v122;
  *v122 = v118;
  v108[1] = v99;
  v108[2] = v100;
  v108[3] = v101;
  v108[4] = v93;
  v108[5] = v105;
  v108[6] = v107;
  v108[7] = v103;
  v109 = v119;
  v108[8] = v121;
  v108[9] = v109;
}

char *sub_21D86F178(Swift::Int a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_21DBF4CAC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v11 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {
    goto LABEL_37;
  }

  v12 = MEMORY[0x223D42B30](a2, a3, v8);
  v13 = 0;
  if (a1 < 0 || v12 <= a1)
  {
    return (v13 & 1);
  }

  v60 = v7;
  if (!a1 || MEMORY[0x223D42B30](a2, a3) <= a1)
  {
    goto LABEL_10;
  }

  v14 = sub_21DBFA12C();
  v64 = String.rangeOfCharacterComposedSequence(before:)([v14 rangeOfComposedCharacterSequenceAtIndex_]);
  if (v64.is_nil)
  {

LABEL_10:
    v15 = 0;
    goto LABEL_11;
  }

  v66 = String.rangeOfNewlineCharacter(atOrBefore:)(v64.value.location);
  location = v66.value.location;
  length = v66.value.length;
  is_nil = v66.is_nil;

  if (is_nil)
  {
    v15 = 0;
  }

  else
  {
    v15 = location + length;
  }

LABEL_11:
  v16 = sub_21DBFA12C();
  v17 = [v16 rangeOfComposedCharacterSequenceAtIndex_];
  v61 = v16;
  v19 = [v16 substringWithRange_];
  v20 = sub_21DBFA16C();
  v22 = v21;

  v62 = v20;
  v63 = v22;
  if (qword_27CE56D98 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v6, qword_27CE62EF0);
  v23 = sub_21D176F0C();
  v24 = sub_21DBFBB3C();
  v26 = v25;

  v27 = HIBYTE(v26) & 0xF;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v27 = v24 & 0xFFFFFFFFFFFFLL;
  }

  if (v27)
  {
    v13 = sub_21D870B0C(a1, 0, a2, a3);

    return (v13 & 1);
  }

  v59[1] = v23;
  v65 = String.rangeOfCharacterComposedSequence(after:)(v17);
  if (v65.is_nil)
  {

LABEL_37:
    v13 = 0;
    return (v13 & 1);
  }

  v28 = v65.value.location;
  v29 = v65.value.length;
  v30 = v61;
  result = [v61 rangeOfComposedCharacterSequenceAtIndex_];
  v33 = (v28 + v29);
  if (__OFADD__(v28, v29))
  {
    __break(1u);
    goto LABEL_45;
  }

  if (__OFADD__(result, v32))
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v33 <= &result[v32])
  {
    v33 = &result[v32];
  }

  if (v28 >= result)
  {
    v34 = result;
  }

  else
  {
    v34 = v28;
  }

  if (!__OFSUB__(v33, v34))
  {
    v35 = [v30 substringWithRange_];
    v36 = v35;
    v37 = v35;
    if (!v35)
    {
      sub_21DBFA16C();
      v37 = sub_21DBFA12C();

      sub_21DBFA16C();
      v36 = sub_21DBFA12C();
    }

    v38 = sub_21DBFA16C();
    v40 = v38;
    v41 = v39;
    if ((v39 & 0x2000000000000000) != 0)
    {
      v42 = HIBYTE(v39) & 0xF;
    }

    else
    {
      v42 = v38 & 0xFFFFFFFFFFFFLL;
    }

    v43 = v35;
    if (!v42)
    {

      v13 = 1;
      return (v13 & 1);
    }

    v44 = [v37 rangeOfComposedCharacterSequenceAtIndex_];
    v46 = v45;

    v47 = [v36 substringWithRange_];
    v48 = sub_21DBFA16C();
    v50 = v49;

    v62 = v48;
    v63 = v50;
    sub_21DBF4C5C();
    v51 = sub_21DBFBB3C();
    v53 = v52;
    (*(v60 + 8))(v10, v6);

    v54 = HIBYTE(v53) & 0xF;
    if ((v53 & 0x2000000000000000) == 0)
    {
      v54 = v51 & 0xFFFFFFFFFFFFLL;
    }

    if (!v54)
    {
      v58 = MEMORY[0x223D42B30](v40, v41);

      v13 = v46 == v58;
      return (v13 & 1);
    }

    goto LABEL_37;
  }

LABEL_46:
  __break(1u);
  return result;
}

void sub_21D86F618(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  if ((a1 - 1) < 2)
  {
    *a6 = a2;
    a6[1] = 0;
    a6[2] = 0;
    goto LABEL_5;
  }

  if (a1 == 3)
  {
    *a6 = a2;
    a6[1] = a5;
    a6[2] = 1;
LABEL_5:
    a6[3] = a3;
    a6[4] = a4;

    v7 = a2;
    return;
  }

  if (qword_27CE56D70 != -1)
  {
    swift_once();
  }

  v8 = sub_21DBF84BC();
  __swift_project_value_buffer(v8, qword_27CE62E78);
  v9 = sub_21DBF84AC();
  v10 = sub_21DBFAEBC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_21D0C9000, v9, v10, "Invalid REMTTParagraphStyle processed in TTRParagraphStyleEditingPresenter", v11, 2u);
    MEMORY[0x223D46520](v11, -1, -1);
  }

  *a6 = 0;
  a6[1] = 0;
  a6[3] = 0;
  a6[4] = 0;
  a6[2] = 255;
}

void sub_21D86F758(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = sub_21DBF4CAC();
  *&v9 = MEMORY[0x28223BE20](v6).n128_u64[0];
  v11 = (&v120 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = a2[1];
  v13 = a2[4];
  if (!v13)
  {
    v18 = 0;
    goto LABEL_5;
  }

  v131 = v8;
  *&v132 = v7;
  *&v134 = v13;
  v14 = a2[2];
  v15 = a2[3];
  v16 = &selRef_setAttributedText_;
  v17 = [a1 string];
  sub_21DBFA16C();

  v140 = String.rangeOfCharacterComposedSequence(before:)(v12);
  LOBYTE(v17) = v140.is_nil;

  if (v17)
  {
    v18 = MEMORY[0x223D42B30](v15, v134);
LABEL_5:
    sub_21D86A648(a1, v12, v18, a3);
    return;
  }

  v129 = v15;
  v19 = [a1 string];
  if (!v19)
  {
    sub_21DBFA16C();
    v19 = sub_21DBFA12C();
  }

  sub_21DBFA16C();
  v21 = v20;
  v130 = a3;
  if (v12 <= 0 || v12 >= MEMORY[0x223D42B30]())
  {

    goto LABEL_13;
  }

  v141 = String.rangeOfCharacterComposedSequence(before:)([v19 rangeOfComposedCharacterSequenceAtIndex_]);
  if (v141.is_nil)
  {

LABEL_13:
    v22 = 0;
    v23 = v12;
    goto LABEL_14;
  }

  v142 = String.rangeOfNewlineCharacter(atOrBefore:)(v141.value.location);
  location = v142.value.location;
  length = v142.value.length;
  v25 = *&v142.is_nil;

  if (v25)
  {
    v22 = 0;
    v23 = v12;
  }

  else
  {
    v22 = &location[length];
    v55 = __OFSUB__(v14 + v12, &location[length]);
    v23 = v14 + v12 - &location[length];
    if (v55)
    {
      goto LABEL_105;
    }
  }

  v16 = &selRef_setAttributedText_;
LABEL_14:
  v24 = [a1 v16[155]];
  if (!v24)
  {
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  v133 = v24;
  v25 = [v24 rangeOfComposedCharacterSequenceAtIndex_];
  v27 = v26;
  v28 = sub_21D871E88(v25, a1);
  if (v28)
  {

    v29 = MEMORY[0x223D42B30](v129, v134);
    sub_21D86A648(a1, v12, v29, v130);
    v30 = v133;

    return;
  }

  v127 = v27;
  v128 = v22;
  v31 = [v133 substringWithRange_];
  v21 = sub_21DBFA16C();
  location = v32;

  v34 = v21 == 42 && location == 0xE100000000000000;
  LODWORD(v14) = v34;
  if (v34)
  {
    goto LABEL_27;
  }

  v39 = sub_21DBFC64C();
  v40 = v21 == 45 && location == 0xE100000000000000;
  v41 = v40;
  if (v39 & 1) != 0 || v41 || (sub_21DBFC64C())
  {
    goto LABEL_27;
  }

  v137 = v21;
  v138 = location;
  if (qword_27CE56D98 != -1)
  {
    goto LABEL_106;
  }

  while (1)
  {
    v126 = __swift_project_value_buffer(v132, qword_27CE62EF0);
    v42 = sub_21D176F0C();
    v126 = sub_21DBFBB3C();
    v44 = v43;

    v45 = HIBYTE(v44) & 0xF;
    if ((v44 & 0x2000000000000000) == 0)
    {
      v45 = v126 & 0xFFFFFFFFFFFFLL;
    }

    if (v45)
    {
      break;
    }

LABEL_27:
    if (v128 != v25 || v23 != v127)
    {

      v52 = v130;
      *(v130 + 1) = 0u;
      v52[2] = 0u;
      *v52 = 0u;
      return;
    }

    v25 = v23;
    if (v14)
    {
      v35 = 10649826;

      v36 = 1;
      v11 = &selRef_setAttributedText_;
      v37 = v129;
      v38 = v134;
    }

    else
    {
      v54 = sub_21DBFC64C();
      v11 = &selRef_setAttributedText_;
      v37 = v129;
      v38 = v134;
      if (v54)
      {
        v35 = 10649826;

        v36 = 1;
      }

      else
      {
        v137 = v21;
        v138 = location;
        if (qword_27CE56D90 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v132, qword_27CE62ED8);
        sub_21D176F0C();
        v56 = sub_21DBFBB3C();
        v58 = v57;

        v59 = HIBYTE(v58) & 0xF;
        if ((v58 & 0x2000000000000000) == 0)
        {
          v59 = v56 & 0xFFFFFFFFFFFFLL;
        }

        if (v59)
        {
          v35 = 9666786;
        }

        else
        {
          v35 = 10649826;
        }

        if (v59)
        {
          v36 = 2;
        }

        else
        {
          v36 = 1;
        }
      }
    }

    v21 = [objc_allocWithZone(MEMORY[0x277D44888]) initWithStyle_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58808, &unk_21DC09A50);
    v12 = swift_allocObject();
    v134 = xmmword_21DC08D00;
    *(v12 + 16) = xmmword_21DC08D00;
    v23 = v128;
    *(v12 + 32) = v128;
    *(v12 + 40) = v25;
    *(v12 + 48) = v35;
    *(v12 + 56) = 0xA300000000000000;
    location = v21;
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    v60 = MEMORY[0x223D42B30](v35, 0xA300000000000000);

    v61 = MEMORY[0x223D42B30](v37, v38);
    v14 = v60 + v61;
    if (!__OFADD__(v60, v61))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59AB8, &unk_21DC0CCF0);
      v62 = swift_allocObject();
      *(v62 + 16) = v134;
      *(v62 + 32) = location;
      *(v62 + 40) = 0;
      *(v62 + 48) = 0;
      *(v62 + 56) = v23;
      *(v62 + 64) = v14;
      v63 = v130;
      goto LABEL_68;
    }

    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    swift_once();
  }

  v121 = v23;
  v137 = v21;
  v138 = location;
  sub_21DBF4BDC();
  v124 = v42;
  v46 = sub_21DBFBB3C();
  v48 = v47;
  v49 = v131 + 8;
  v123 = *(v131 + 8);
  v123(v11, v132);

  v50 = HIBYTE(v48) & 0xF;
  if ((v48 & 0x2000000000000000) == 0)
  {
    v50 = v46 & 0xFFFFFFFFFFFFLL;
  }

  if (v50 || (v69 = [a1 string], sub_21DBFA16C(), v69, v143 = String.rangeOfCharacterComposedSequence(after:)(v25), v70 = v143.value.location, v71 = v143.value.length, LODWORD(v131) = *&v143.is_nil, , (v131 & 1) != 0) || v12 != v70 + v71)
  {

    v51 = MEMORY[0x223D42B30](v129, v134);
    sub_21D86A648(a1, v12, v51, v130);
LABEL_48:

    return;
  }

  v137 = v21;
  v138 = location;
  v122 = [a1 string];
  if (!v122)
  {
LABEL_113:
    __break(1u);
    return;
  }

  v131 = v49;
  if (v70 < v12)
  {
    while (1)
    {
      v72 = v122;
      v73 = [v122 rangeOfComposedCharacterSequenceAtIndex_];
      v125 = v74;
      v126 = v73;
      v75 = [v72 substringWithRange_];
      v76 = sub_21DBFA16C();
      v78 = v77;

      v135 = v76;
      v136 = v78;
      if (qword_27CE56D80 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v132, qword_27CE62EA8);
      v79 = sub_21DBFBB3C();
      v81 = v80;

      v82 = HIBYTE(v81) & 0xF;
      if ((v81 & 0x2000000000000000) == 0)
      {
        v82 = v79 & 0xFFFFFFFFFFFFLL;
      }

      if (!v82)
      {

        v89 = 0;
        v88 = v125;
        v87 = v126;
        goto LABEL_84;
      }

      v135 = v76;
      v136 = v78;
      sub_21DBF4BDC();
      v83 = sub_21DBFBB3C();
      v85 = v84;
      v123(v11, v132);

      v86 = HIBYTE(v85) & 0xF;
      if ((v85 & 0x2000000000000000) == 0)
      {
        v86 = v83 & 0xFFFFFFFFFFFFLL;
      }

      if (v86)
      {
        break;
      }

      MEMORY[0x223D42AA0](v76, v78);

      v70 = v126 + v125;
      if (v126 + v125 >= v12)
      {
        goto LABEL_82;
      }
    }

    goto LABEL_103;
  }

LABEL_82:
  v87 = 0;
  v88 = 0;
  v89 = 1;
LABEL_84:
  v91 = v137;
  v90 = v138;
  sub_21DBF8E0C();
  v92 = sub_21D87037C(v91, v90);
  if (v89 & 1) != 0 || (v93)
  {
LABEL_103:

    v119 = MEMORY[0x223D42B30](v129, v134);
    sub_21D86A648(a1, v12, v119, v130);

    goto LABEL_48;
  }

  v120 = v92;
  v94 = (v88 + v87);
  if (__OFSUB__(&v128[v121], v88 + v87))
  {
    __break(1u);
    goto LABEL_108;
  }

  v95 = sub_21DBFB9CC();
  if ((v97 & 1) == 0)
  {
    v98 = [v122 substringWithRange_];
    v125 = v88;
    v126 = v87;
    v99 = v98;
    v100 = sub_21DBFA16C();
    v128 = v94;
    v101 = v91;
    v102 = v100;
    v104 = v103;

    v135 = v102;
    v136 = v104;
    sub_21DBF4C5C();
    v105 = sub_21DBFBB3C();
    v107 = v106;
    v123(v11, v132);

    v108 = HIBYTE(v107) & 0xF;
    v109 = v105 & 0xFFFFFFFFFFFFLL;
    v88 = v125;
    v87 = v126;
    v34 = (v107 & 0x2000000000000000) == 0;
    v91 = v101;
    v94 = v128;
    if (v34)
    {
      v108 = v109;
    }

    if (v108)
    {
      goto LABEL_103;
    }
  }

  v110 = (v25 + v127);
  if (__OFADD__(v25, v127))
  {
    goto LABEL_109;
  }

  if (__OFADD__(v87, v88))
  {
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  if (v110 <= v94)
  {
    v110 = v94;
  }

  if (v25 >= v87)
  {
    v111 = v87;
  }

  else
  {
    v111 = v25;
  }

  v112 = &v110[-v111];
  if (__OFSUB__(v110, v111))
  {
    goto LABEL_111;
  }

  v113 = [objc_allocWithZone(MEMORY[0x277D44888]) initWithStyle_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58808, &unk_21DC09A50);
  v12 = swift_allocObject();
  v132 = xmmword_21DC08D00;
  *(v12 + 16) = xmmword_21DC08D00;
  v135 = v91;
  v136 = v90;
  sub_21DBF8E0C();
  location = v113;
  MEMORY[0x223D42AA0](46, 0xE100000000000000);

  v114 = v135;
  v115 = v136;
  *(v12 + 32) = v111;
  *(v12 + 40) = v112;
  *(v12 + 48) = v114;
  *(v12 + 56) = v115;
  sub_21DBF8E0C();
  v116 = MEMORY[0x223D42B30](v129, v134);
  v55 = __OFADD__(v112, v116);
  v117 = &v112[v116];
  v63 = v130;
  v11 = &selRef_setAttributedText_;
  if (v55)
  {
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59AB8, &unk_21DC0CCF0);
  v62 = swift_allocObject();
  *(v62 + 16) = v132;
  v118 = v120;
  *(v62 + 32) = location;
  *(v62 + 40) = v118;
  *(v62 + 48) = 1;
  *(v62 + 56) = v111;
  *(v62 + 64) = v117;

LABEL_68:
  swift_bridgeObjectRetain_n();
  sub_21DBF8E0C();
  v64 = sub_21D47A0F8(a1, v12, v62);
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v65 = [v64 v11[155]];
  v66 = sub_21DBFA16C();
  v68 = v67;

  *v63 = v12;
  v63[1] = v62;
  v63[2] = v66;
  v63[3] = v68;
  v63[4] = v64;
  v63[5] = 1;
}

unint64_t sub_21D87037C(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v28[0] = result;
      v28[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v28 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v28;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v28 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_21DBFBFCC();
        v3 = v27;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v29 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  sub_21D871504(result, a2, 10);
  v6 = v25;
  v24 = v26;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_21D870690()
{
  v0 = sub_21DBF4CAC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - v5;
  __swift_allocate_value_buffer(v7, qword_27CE62EA8);
  __swift_project_value_buffer(v0, qword_27CE62EA8);
  if (qword_27CE56D78 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v0, qword_27CE62E90);
  (*(v1 + 16))(v6, v8, v0);
  sub_21DBF4BCC();
  sub_21DBF4C6C();
  v9 = *(v1 + 8);
  v9(v3, v0);
  return (v9)(v6, v0);
}

uint64_t sub_21D870850(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_21DBF4CAC();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_21DBF4BCC();
}

uint64_t sub_21D8708B0()
{
  v0 = sub_21DBF4CAC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v13 - v5;
  __swift_allocate_value_buffer(v7, qword_27CE62EF0);
  __swift_project_value_buffer(v0, qword_27CE62EF0);
  if (qword_27CE56D88 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v0, qword_27CE62EC0);
  v9 = *(v1 + 16);
  v9(v6, v8, v0);
  if (qword_27CE56D90 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v0, qword_27CE62ED8);
  v9(v3, v10, v0);
  sub_21DBF4C6C();
  v11 = *(v1 + 8);
  v11(v3, v0);
  return (v11)(v6, v0);
}

double sub_21D870A90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = sub_21DBFA16C();
  v7 = v6;

  v4(v5, v7, a3);

  return result;
}

uint64_t sub_21D870B0C(Swift::Int a1, int a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_21DBF4CAC();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v14 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14)
  {
    goto LABEL_23;
  }

  v97 = v10;
  v15 = MEMORY[0x223D42B30](a3, a4, v11);
  LOBYTE(v16) = 0;
  if ((a1 & 0x8000000000000000) == 0 && v15 > a1)
  {
    v99 = v9;
    if (a1 && MEMORY[0x223D42B30](a3, a4) > a1)
    {
      v17 = a2;
      v18 = sub_21DBFA12C();
      v103 = String.rangeOfCharacterComposedSequence(before:)([v18 rangeOfComposedCharacterSequenceAtIndex_]);
      if (v103.is_nil)
      {

        v19 = 0;
      }

      else
      {
        v104 = String.rangeOfNewlineCharacter(atOrBefore:)(v103.value.location);
        location = v104.value.location;
        length = v104.value.length;
        is_nil = v104.is_nil;

        if (is_nil)
        {
          v19 = 0;
        }

        else
        {
          v19 = location + length;
        }
      }

      a2 = v17;
    }

    else
    {
      v19 = 0;
    }

    v102.value = 0;
    v102.is_nil = 1;
    v105 = String.rangeOfNewlineCharacter(after:exclusiveEndIndextoSearch:)(a1, v102);
    v98 = v105.value.location;
    v92 = a2;
    if (v105.is_nil)
    {
      v98 = MEMORY[0x223D42B30](a3, a4);
    }

    v23 = sub_21DBFA12C();
    v93 = [v23 rangeOfComposedCharacterSequenceAtIndex_];
    v24 = [v23 substringWithRange_];
    v25 = sub_21DBFA16C();
    v27 = v26;

    v100 = v25;
    v101 = v27;
    sub_21DBF4BDC();
    v28 = sub_21D176F0C();
    v29 = sub_21DBFBB3C();
    v31 = v30;
    v32 = v13;
    v33 = v99 + 8;
    v34 = *(v99 + 8);
    v34(v32, v97);

    v35 = HIBYTE(v31) & 0xF;
    if ((v31 & 0x2000000000000000) == 0)
    {
      v35 = v29 & 0xFFFFFFFFFFFFLL;
    }

    if (v35)
    {

      goto LABEL_23;
    }

    v99 = v33;
    v94 = v28;
    v95 = v34;
    v96 = v23;
    v106 = String.rangeOfCharacterComposedSequence(after:)(v93);
    if (v106.is_nil)
    {
      goto LABEL_22;
    }

    v37 = v106.value.location;
    v38 = v96;
    v39 = 0;
    v16 = 0;
    if (v106.value.location >= v98)
    {
LABEL_67:

      if (v92)
      {
        LOBYTE(v16) = v16 & v39;
      }

      return v16 & 1;
    }

    v91 = 0;
    v40 = 0;
    v41 = v32;
    while (1)
    {
      v90 = v39;
      v42 = [v38 rangeOfComposedCharacterSequenceAtIndex_];
      v44 = v43;
      v45 = [v38 substringWithRange_];
      v46 = sub_21DBFA16C();
      v48 = v47;

      v100 = v46;
      v101 = v48;
      sub_21DBF4BDC();
      v49 = sub_21DBFBB3C();
      v51 = v50;
      v95(v41, v97);

      v52 = HIBYTE(v51) & 0xF;
      if ((v51 & 0x2000000000000000) == 0)
      {
        v52 = v49 & 0xFFFFFFFFFFFFLL;
      }

      v53 = v52 == 0;
      v54 = v52 == 0;
      v55 = !v53;
      LODWORD(v93) = v40;
      v56 = v55 | v40;
      if (v56)
      {
        v91 |= v54;
        v89 = v16;
        v16 = v56;
      }

      else
      {

        if (v42 + v44 >= v98)
        {
          LOBYTE(v16) = v56;
          v38 = v96;
LABEL_66:
          LOBYTE(v39) = v90;
          goto LABEL_67;
        }

        v38 = v96;
        v57 = v97;
        while (1)
        {
          v42 = [v38 rangeOfComposedCharacterSequenceAtIndex_];
          v44 = v58;
          v59 = [v38 substringWithRange_];
          v46 = sub_21DBFA16C();
          v48 = v60;

          v100 = v46;
          v101 = v48;
          sub_21DBF4BDC();
          v61 = sub_21DBFBB3C();
          v63 = v62;
          v95(v41, v57);

          v64 = HIBYTE(v63) & 0xF;
          if ((v63 & 0x2000000000000000) == 0)
          {
            v64 = v61 & 0xFFFFFFFFFFFFLL;
          }

          v55 = v64 != 0;
          if (v64)
          {
            break;
          }

          v56 = v55;
          v38 = v96;
          if (v42 + v44 >= v98)
          {
            LOBYTE(v16) = v55;
            goto LABEL_66;
          }
        }

        LODWORD(v93) = 0;
        v91 = 0;
        v89 = v56;
        v16 = v64 != 0;
      }

      v100 = v46;
      v101 = v48;
      v65 = v95;
      if (qword_27CE56D78 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v97, qword_27CE62E90);
      v66 = sub_21DBFBB3C();
      v68 = v67;

      v69 = HIBYTE(v68) & 0xF;
      if ((v68 & 0x2000000000000000) == 0)
      {
        v69 = v66 & 0xFFFFFFFFFFFFLL;
      }

      if (!v69)
      {

        if (v91)
        {
          goto LABEL_22;
        }

        v38 = v96;
        if (v42 + v44 >= v98)
        {
          goto LABEL_66;
        }

        v42 = [v96 rangeOfComposedCharacterSequenceAtIndex_];
        v44 = v70;
        v71 = [v38 substringWithRange_];
        v46 = sub_21DBFA16C();
        v48 = v72;

        v100 = v46;
        v101 = v48;
        sub_21DBF4BDC();
        v73 = sub_21DBFBB3C();
        v75 = v74;
        v76 = v65;
        v77 = v97;
        v76(v41, v97);

        v78 = HIBYTE(v75) & 0xF;
        if ((v75 & 0x2000000000000000) == 0)
        {
          v78 = v73 & 0xFFFFFFFFFFFFLL;
        }

        v55 = v78 != 0;
        v100 = v46;
        v101 = v48;
        if (qword_27CE56D78 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v77, qword_27CE62E90);
        v79 = sub_21DBFBB3C();
        v81 = v80;

        v82 = HIBYTE(v81) & 0xF;
        if ((v81 & 0x2000000000000000) == 0)
        {
          v82 = v79 & 0xFFFFFFFFFFFFLL;
        }

        if (!v82)
        {

LABEL_22:

LABEL_23:
          LOBYTE(v16) = 0;
          return v16 & 1;
        }

        v89 = 1;
        LODWORD(v93) = 1;
        v91 = 1;
      }

      v100 = v46;
      v101 = v48;
      sub_21DBF4BBC();
      v83 = sub_21DBFBB3C();
      v85 = v84;
      v95(v41, v97);

      v86 = HIBYTE(v85) & 0xF;
      if ((v85 & 0x2000000000000000) == 0)
      {
        v86 = v83 & 0xFFFFFFFFFFFFLL;
      }

      if (v86)
      {
        goto LABEL_22;
      }

      v87 = v89;
      if (!v55)
      {
        v87 = v93;
      }

      v38 = v96;
      if (v87 & 1) == 0 || (v90)
      {
        goto LABEL_22;
      }

      v37 = v42 + v44;
      v39 = 1;
      v40 = v93;
      if (v42 + v44 >= v98)
      {
        goto LABEL_67;
      }
    }
  }

  return v16 & 1;
}

double sub_21D8712EC@<D0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  ObjectType = swift_getObjectType();
  if (TTRRemindersListEditingSession.supportsTextStyling.getter(ObjectType, a2))
  {

    sub_21D869E58(a1, a3);
  }

  else
  {
    result = 0.0;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
  }

  return result;
}

void sub_21D871388(id a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = a2 + 56;
    do
    {
      v7 = *(v6 - 24);
      v8 = *(v6 - 16);
      sub_21DBF8E0C();
      v9 = sub_21DBFA12C();
      [a1 replaceCharactersInRange:v7 withString:{v8, v9}];

      v6 += 32;
      --v5;
    }

    while (v5);
  }

  if (*(a3 + 16))
  {
    [a1 beginEditing];
    sub_21D9F82C4(a1, a3);

    [a1 endEditing];
  }
}

unint64_t sub_21D871488(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_21DBFA38C();
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
    v5 = MEMORY[0x223D42AF0](15, a1 >> 16);
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

void sub_21D871504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a1;
  v66 = a2;
  sub_21DBF8E0C();
  v4 = sub_21DBFA3EC();
  v6 = v4;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_21D871A90(v4, v5);
    v36 = v35;

    v5 = v36;
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
      v7 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v7 = sub_21DBFBFCC();
      v8 = v64;
    }

    v9 = *v7;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v19 = v8 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (v7)
          {
            v23 = 0;
            v24 = v7 + 1;
            while (1)
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v20)
              {
                if (v25 < 0x41 || v25 >= v21)
                {
                  if (v25 < 0x61 || v25 >= v22)
                  {
                    goto LABEL_125;
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

              v27 = v23 * a3;
              if ((v23 * a3) >> 64 == (v23 * a3) >> 63)
              {
                v23 = v27 + (v25 + v26);
                if (!__OFADD__(v27, (v25 + v26)))
                {
                  ++v24;
                  if (--v19)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_125;
            }
          }
        }

        goto LABEL_125;
      }

      goto LABEL_129;
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

        if (v7)
        {
          v31 = 0;
          while (1)
          {
            v32 = *v7;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_125;
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
            if ((v31 * a3) >> 64 == (v31 * a3) >> 63)
            {
              v31 = v34 + (v32 + v33);
              if (!__OFADD__(v34, (v32 + v33)))
              {
                ++v7;
                if (--v8)
                {
                  continue;
                }
              }
            }

            goto LABEL_125;
          }
        }
      }

      goto LABEL_125;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v10)
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

        if (v7)
        {
          v14 = 0;
          v15 = v7 + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                if (v16 < 0x61 || v16 >= v13)
                {
                  break;
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

            v18 = v14 * a3;
            if ((v14 * a3) >> 64 == (v14 * a3) >> 63)
            {
              v14 = v18 - (v16 + v17);
              if (!__OFSUB__(v18, (v16 + v17)))
              {
                ++v15;
                if (--v10)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_125:

      return;
    }

    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v37 = HIBYTE(v5) & 0xF;
  v65 = v6;
  v66 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v56 = 0;
        v57 = a3 + 48;
        v58 = a3 + 55;
        v59 = a3 + 87;
        if (a3 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v65;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_125;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v56 * a3;
          if ((v56 * a3) >> 64 == (v56 * a3) >> 63)
          {
            v56 = v63 + (v61 + v62);
            if (!__OFADD__(v63, (v61 + v62)))
            {
              v60 = (v60 + 1);
              if (--v37)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
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

        v43 = &v65 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_125;
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
          if ((v39 * a3) >> 64 == (v39 * a3) >> 63)
          {
            v39 = v46 - (v44 + v45);
            if (!__OFSUB__(v46, (v44 + v45)))
            {
              ++v43;
              if (--v38)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    goto LABEL_128;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v48 = 0;
      v49 = a3 + 48;
      v50 = a3 + 55;
      v51 = a3 + 87;
      if (a3 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v65 + 1;
      while (1)
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_125;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v48 * a3;
        if ((v48 * a3) >> 64 == (v48 * a3) >> 63)
        {
          v48 = v55 + (v53 + v54);
          if (!__OFADD__(v55, (v53 + v54)))
          {
            ++v52;
            if (--v47)
            {
              continue;
            }
          }
        }

        goto LABEL_125;
      }
    }

    goto LABEL_125;
  }

LABEL_130:
  __break(1u);
}

uint64_t sub_21D871A90(uint64_t a1, unint64_t a2)
{
  v2 = sub_21DBFA3FC();
  v6 = sub_21D871B10(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_21D871B10(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_21DBFBABC();
    if (!v9 || (v10 = v9, v11 = sub_21D0CE2BC(v9, 0), v12 = sub_21D871C68(v14, (v11 + 4), v10, a1, a2, a3, a4), sub_21DBF8E0C(), , v12 == v10))
    {
      v13 = sub_21DBFA21C();

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
      return sub_21DBFA21C();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_21DBFBFCC();
LABEL_4:

  return sub_21DBFA21C();
}

unint64_t sub_21D871C68(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
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
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_21D871488(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_21DBFA34C();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_21DBFBFCC();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_21D871488(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_21DBFA32C();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

void *sub_21D871E88(uint64_t a1, id a2)
{
  v4 = [a2 string];
  v5 = sub_21DBFA16C();
  v7 = v6;

  v8 = MEMORY[0x223D42B30](v5, v7);

  result = 0;
  if ((a1 & 0x8000000000000000) == 0 && v8 > a1)
  {
    v10 = [objc_opt_self() attributeNameForStyle_];
    v11 = [a2 attribute:v10 atIndex:a1 effectiveRange:0];

    if (v11)
    {
      sub_21DBFBC1C();
      swift_unknownObjectRelease();
      sub_21D0CF2E8(&v16, &v17);
      v12 = objc_allocWithZone(MEMORY[0x277D44888]);
      __swift_project_boxed_opaque_existential_1(&v17, v18);
      v13 = [v12 initWithContents_];
      swift_unknownObjectRelease();
      if (v13)
      {
        v14 = v13;
        v15 = [v13 remParagraphStyle];
        __swift_destroy_boxed_opaque_existential_0(&v17);
        if ((v15 - 1) < 3)
        {
          return v14;
        }
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0(&v17);
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_21D872028(Swift::Int a1, id a2)
{
  v4 = [a2 string];
  sub_21DBFA16C();

  v11 = String.rangeOfCharacterComposedSequence(before:)(a1);
  location = v11.value.location;
  LOBYTE(v4) = v11.is_nil;

  if ((v4 & 1) == 0)
  {
    if ([a2 attribute:*MEMORY[0x277D44C88] atIndex:location effectiveRange:0])
    {
      sub_21DBFBC1C();
      swift_unknownObjectRelease();
    }

    else
    {
      v8 = 0u;
      v9 = 0u;
    }

    v10[0] = v8;
    v10[1] = v9;
    if (*(&v9 + 1))
    {
      if (swift_dynamicCast())
      {
        return v7;
      }
    }

    else
    {
      sub_21D0CF7E0(v10, &qword_27CE5C690, &unk_21DC11AB0);
    }
  }

  return 0;
}

id sub_21D872168(uint64_t a1, void *a2, uint64_t a3)
{
  v34[1] = a3;
  v5 = sub_21DBF4CAC();
  v34[0] = *(v5 - 8);
  *&v6 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a2 string];
  if (result)
  {
    v10 = result;
    v11 = [result rangeOfComposedCharacterSequenceAtIndex_];
    v13 = v12;
    v14 = [a2 string];
    sub_21DBFA16C();

    v37 = String.rangeOfCharacterComposedSequence(after:)(v11);
    location = v37.value.location;
    length = v37.value.length;
    is_nil = v37.is_nil;

    v18 = [v10 substringWithRange_];
    v19 = sub_21DBFA16C();
    v21 = v20;

    if (is_nil)
    {
      goto LABEL_6;
    }

    v22 = [v10 substringWithRange_];
    v23 = sub_21DBFA16C();
    v25 = v24;

    v35 = v19;
    v36 = v21;
    sub_21D176F0C();
    v26 = sub_21DBFBB3C();
    v28 = v27;

    v29 = HIBYTE(v28) & 0xF;
    if ((v28 & 0x2000000000000000) == 0)
    {
      v29 = v26 & 0xFFFFFFFFFFFFLL;
    }

    if (v29)
    {
LABEL_6:

      return 0;
    }

    v35 = v23;
    v36 = v25;
    sub_21DBF4BBC();
    v30 = sub_21DBFBB3C();
    v32 = v31;

    (*(v34[0] + 8))(v8, v5);

    v33 = HIBYTE(v32) & 0xF;
    if ((v32 & 0x2000000000000000) == 0)
    {
      v33 = v30 & 0xFFFFFFFFFFFFLL;
    }

    return !v33;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_21D872400(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_21DBF4CAC();
  v7 = *(v6 - 8);
  *&v8 = MEMORY[0x28223BE20](v6).n128_u64[0];
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a3 string];
  v12 = sub_21DBFA16C();
  v14 = v13;

  sub_21DBF4C4C();
  v15 = String.rangeOfCharacter(inCharacterSet:atOrAfter:exclusiveEndIndextoSearch:)(v10, a1, a2 + a1, 0, v12, v14);
  LOBYTE(v11) = v16;

  (*(v7 + 8))(v10, v6);
  if ((v11 & 1) == 0 && v15 != a1)
  {
    v17 = [a3 string];
    sub_21DBFA16C();

    v30 = String.rangeOfCharacterComposedSequence(after:)(v15);
    location = v30.value.location;
    length = v30.value.length;
    is_nil = v30.is_nil;

    if (!is_nil)
    {
      v21 = __OFSUB__(location + length, a1);
      v22 = location + length - a1;
      if (v21)
      {
        __break(1u);
      }

      else
      {
        v23 = [a3 string];
        if (v23)
        {
          v24 = v23;
          v25 = [v23 substringWithRange_];

          v26 = sub_21DBFA16C();
          v28 = v27;

          sub_21D870B0C(0, 1, v26, v28);

          return;
        }
      }

      __break(1u);
    }
  }
}

void sub_21D872630(char *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v123 = a1;
  v109 = sub_21DBF4CAC();
  v7 = *(v109 - 8);
  *&v8 = MEMORY[0x28223BE20](v109).n128_u64[0];
  v108 = &v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a2 string];
  v11 = sub_21DBFA16C();
  v13 = v12;

  v14 = sub_21D86DCE0(a3, a4, v11, v13);
  v16 = v15;
  LOBYTE(a3) = v17;

  if (a3)
  {
    goto LABEL_19;
  }

  v126 = v7;
  v18 = [a2 string];
  v19 = sub_21DBFA16C();
  v21 = v20;

  v22 = MEMORY[0x223D42B30](v19, v21);

  if (v14 + v16 >= v22)
  {
    v23 = v22;
  }

  else
  {
    v23 = v14 + v16;
  }

  v24 = [a2 string];
  if (!v24)
  {
    sub_21DBFA16C();
    v24 = sub_21DBFA12C();
  }

  v25 = sub_21DBFA16C();
  v27 = v26;
  v28 = a2;
  v29 = [a2 string];
  v30 = sub_21DBFA16C();
  v32 = v31;

  v33 = MEMORY[0x223D42B30](v30, v32);

  if (__OFSUB__(v33, 1))
  {
    goto LABEL_81;
  }

  if (v23 >= v33 - 1)
  {
    v34 = v33 - 1;
  }

  else
  {
    v34 = v23;
  }

  if (v34 <= 0 || v34 >= MEMORY[0x223D42B30](v25, v27))
  {
  }

  else
  {
    v130 = String.rangeOfCharacterComposedSequence(before:)([v24 rangeOfComposedCharacterSequenceAtIndex_]);
    if (v130.is_nil)
    {
    }

    else
    {
      v132 = String.rangeOfNewlineCharacter(atOrBefore:)(v130.value.location);
      location = v132.value.location;
      length = v132.value.length;
      is_nil = v132.is_nil;

      if (!is_nil)
      {
        goto LABEL_17;
      }
    }
  }

  location = 0;
  length = 0;
LABEL_17:
  if (length + location < v14)
  {
    a2 = v28;
LABEL_19:
    v126 = a2;
    v124 = MEMORY[0x277D84F90];
    return;
  }

  v111 = objc_opt_self();
  v107 = (v126 + 8);
  v37 = v28;
  v124 = MEMORY[0x277D84F90];
  v125 = xmmword_21DC08D00;
  v106 = v37;
  v126 = v37;
  v110 = v14;
  v38 = v23;
  while (1)
  {
    v39 = length + location;
    v40 = v38 - (length + location);
    if (__OFSUB__(v38, length + location))
    {
      break;
    }

    v38 = location;
    v41 = [v111 attributeNameForStyle_];
    v42 = [v126 attribute:v41 atIndex:length + location effectiveRange:0];

    if (!v42)
    {
      goto LABEL_29;
    }

    sub_21DBFBC1C();
    swift_unknownObjectRelease();
    v43 = objc_allocWithZone(MEMORY[0x277D44888]);
    __swift_project_boxed_opaque_existential_1(&v127, v129);
    v44 = [v43 initWithContents_];
    swift_unknownObjectRelease();
    if (!v44 || (v45 = [v44 remParagraphStyle], v44, (v45 - 1) >= 3))
    {
      __swift_destroy_boxed_opaque_existential_0(&v127);
LABEL_29:
      v47 = 0;
      goto LABEL_30;
    }

    if (v45 == v123)
    {
      __swift_destroy_boxed_opaque_existential_0(&v127);
      v46 = &selRef_setAttributedText_;
      goto LABEL_46;
    }

    v92 = [v126 string];
    v93 = sub_21DBFA16C();
    v95 = v94;

    v96 = v108;
    sub_21DBF4BBC();
    v97 = String.rangeOfCharacter(inCharacterSet:atOrAfter:exclusiveEndIndextoSearch:)(v96, v39, 0, 1, v93, v95);
    v99 = v98;
    v101 = v100;

    (*v107)(v96, v109);
    if (v101)
    {

      __swift_destroy_boxed_opaque_existential_0(&v127);
      a2 = v106;
      goto LABEL_19;
    }

    v102 = v97 + v99;
    __swift_destroy_boxed_opaque_existential_0(&v127);
    v47 = v102 - v39;
    if (__OFSUB__(v102, v39))
    {
      goto LABEL_82;
    }

LABEL_30:
    if (v123 == 3)
    {
      v49 = 0xE200000000000000;
      v122 = 1;
      v121 = 1;
      v48 = 11825;
    }

    else if (v123 == 2)
    {
      v122 = 0;
      v121 = 0;
      v49 = 0xA300000000000000;
      v48 = 9666786;
    }

    else
    {
      if (v123 != 1)
      {
        v120 = 0;
        v122 = 0;
        v48 = 0;
        v49 = 0xE000000000000000;
        v121 = 2;
        goto LABEL_38;
      }

      v122 = 0;
      v121 = 0;
      v48 = 10649826;
      v49 = 0xA300000000000000;
    }

    v50 = objc_allocWithZone(MEMORY[0x277D44888]);
    v120 = [v50 initWithStyle_];
LABEL_38:
    v127 = v48;
    v128 = v49;
    sub_21DBF8E0C();
    MEMORY[0x223D42AA0](32, 0xE100000000000000);

    v51 = v127;
    v52 = v128;
    if ((v128 & 0x1000000000000000) != 0)
    {
      v103 = sub_21DBFA35C();
      v54 = v103 + v40;
      if (__OFADD__(v103, v40))
      {
        goto LABEL_79;
      }
    }

    else
    {
      v53 = sub_21DBFA36C();
      v54 = v53 + v40;
      if (__OFADD__(v53, v40))
      {
        goto LABEL_79;
      }
    }

    v55 = v54 - v47;
    if (__OFSUB__(v54, v47))
    {
      goto LABEL_80;
    }

    v119 = v38;
    v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58808, &unk_21DC09A50);
    v56 = v39;
    inited = swift_initStackObject();
    *(inited + 16) = v125;
    *(inited + 32) = v56;
    v114 = v56;
    *(inited + 40) = v47;
    *(inited + 48) = v51;
    *(inited + 56) = v52;
    v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59AB8, &unk_21DC0CCF0);
    v58 = swift_initStackObject();
    *(v58 + 16) = v125;
    v116 = v52;
    v59 = v120;
    *(v58 + 32) = v120;
    v60 = v122;
    *(v58 + 40) = v122;
    v117 = v47;
    v61 = v121;
    *(v58 + 48) = v121;
    *(v58 + 56) = v56;
    *(v58 + 64) = v55;
    sub_21DBF8E0C();
    sub_21D749C9C(v59, v60, v61);
    sub_21D749C9C(v59, v60, v61);
    v115 = v51;
    v62 = v126;
    v112 = sub_21D47A0F8(v126, inited, v58);

    swift_setDeallocating();
    sub_21D873C60(v58 + 32);
    swift_setDeallocating();
    sub_21D873CB4(inited + 32);
    v63 = swift_allocObject();
    *(v63 + 16) = v125;
    *(v63 + 32) = v59;
    *(v63 + 40) = v60;
    *(v63 + 48) = v61;
    v64 = v114;
    *(v63 + 56) = v114;
    *(v63 + 64) = v55;
    sub_21D749C9C(v59, v60, v61);
    v46 = &selRef_setAttributedText_;
    v126 = v112;
    v65 = [v126 string];
    v66 = sub_21DBFA16C();
    v68 = v67;

    v69 = swift_allocObject();
    *(v69 + 16) = v125;
    v70 = v117;
    *(v69 + 32) = v64;
    *(v69 + 40) = v70;
    v71 = v116;
    *(v69 + 48) = v115;
    *(v69 + 56) = v71;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v124 = sub_21D2121E4(0, *(v124 + 2) + 1, 1, v124);
    }

    v73 = *(v124 + 2);
    v72 = *(v124 + 3);
    if (v73 >= v72 >> 1)
    {
      v124 = sub_21D2121E4((v72 > 1), v73 + 1, 1, v124);
    }

    v74 = v120;
    v75 = v122;
    v76 = v121;
    sub_21D228468(v120, v122, v121);
    sub_21D228468(v74, v75, v76);
    v77 = v124;
    *(v124 + 2) = v73 + 1;
    v78 = &v77[48 * v73];
    *(v78 + 4) = v69;
    *(v78 + 5) = v63;
    *(v78 + 6) = v66;
    *(v78 + 7) = v68;
    *(v78 + 8) = v126;
    *(v78 + 9) = 0;
    v14 = v110;
    v38 = v119;
LABEL_46:
    if (v38 < 1)
    {
      return;
    }

    v79 = [v126 v46[155]];
    v80 = v79;
    v81 = v79;
    if (!v79)
    {
      sub_21DBFA16C();
      v81 = sub_21DBFA12C();

      sub_21DBFA16C();
      v80 = sub_21DBFA12C();
    }

    sub_21DBFA16C();
    v83 = v82;
    if ((v82 & 0x1000000000000000) != 0)
    {
      v84 = sub_21DBFA35C();
    }

    else
    {
      v84 = sub_21DBFA36C();
    }

    v85 = v84;
    v86 = v79;
    if (v38 < v85)
    {
      v87 = [v81 rangeOfComposedCharacterSequenceAtIndex_];
      if (v87 >= 1)
      {
        v88 = v87;
        if ((v83 & 0x1000000000000000) == 0)
        {
          if (v87 >= sub_21DBFA36C())
          {
            goto LABEL_62;
          }

LABEL_58:
          v90 = [v80 rangeOfComposedCharacterSequenceAtIndex_];
          if (v90)
          {
            if (__OFSUB__(v90, 1))
            {
              goto LABEL_83;
            }

            v91 = [v80 rangeOfComposedCharacterSequenceAtIndex_];

            v131 = String.rangeOfNewlineCharacter(atOrBefore:)(v91);
            location = v131.value.location;
            length = v131.value.length;
            LOBYTE(v91) = v131.is_nil;

            if ((v91 & 1) == 0)
            {
              goto LABEL_65;
            }

            goto LABEL_64;
          }

          goto LABEL_62;
        }

        if (v87 < sub_21DBFA35C())
        {
          goto LABEL_58;
        }
      }

LABEL_62:
      v89 = v80;
      v80 = v81;
      goto LABEL_63;
    }

    v89 = v81;
LABEL_63:

LABEL_64:
    location = 0;
    length = 0;
LABEL_65:
    if (length + location < v14)
    {
      return;
    }
  }

  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
}

uint64_t _s15RemindersUICore33TTRParagraphStyleEditingPresenterC045dataRepresentationWithEncodedParagraphAndFontD03for10Foundation4DataVSgSo18NSAttributedStringC_tFZ_0(void *a1)
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  v2 = [a1 string];
  if (!v2)
  {
    sub_21DBFA16C();
    v2 = sub_21DBFA12C();
  }

  v3 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithString_];

  v4 = [a1 string];
  v5 = sub_21DBFA16C();
  v7 = v6;

  v8 = MEMORY[0x223D42B30](v5, v7);

  v9 = swift_allocObject();
  *(v9 + 16) = v3;
  v10 = swift_allocObject();
  v10[2] = sub_21D873DEC;
  v10[3] = v9;
  aBlock[4] = sub_21D301E58;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21D472CC4;
  aBlock[3] = &block_descriptor_41_1;
  v11 = _Block_copy(aBlock);
  v12 = v3;

  [a1 enumerateAttributesInRange:0 options:v8 usingBlock:{0, v11}];
  _Block_release(v11);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_7;
  }

  v14 = objc_opt_self();
  aBlock[0] = 0;
  v15 = [v14 archivedDataWithRootObject:v12 requiringSecureCoding:0 error:aBlock];
  v16 = aBlock[0];
  if (v15)
  {
    v17 = sub_21DBF551C();

    return v17;
  }

  v18 = v16;
  v8 = sub_21DBF52DC();

  swift_willThrow();
  if (qword_27CE56D70 != -1)
  {
    goto LABEL_13;
  }

LABEL_7:
  v19 = sub_21DBF84BC();
  __swift_project_value_buffer(v19, qword_27CE62E78);
  v20 = v8;
  v21 = sub_21DBF84AC();
  v22 = sub_21DBFAEBC();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    aBlock[0] = v24;
    *v23 = 136315138;
    swift_getErrorValue();
    v25 = sub_21DBFC75C();
    v27 = sub_21D0CDFB4(v25, v26, aBlock);

    *(v23 + 4) = v27;
    _os_log_impl(&dword_21D0C9000, v21, v22, "TTRParagraphStyleEditingPresenter:dataRepresentationWithEncodedParagraphAndFontStyle: error trying to encode attributedText- {error: %s}", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x223D46520](v24, -1, -1);
    MEMORY[0x223D46520](v23, -1, -1);
  }

  else
  {
  }

  return 0;
}

id sub_21D8735B0(id a1, uint64_t a2)
{
  sub_21D0D8CF0(0, &qword_27CE61DA0, 0x277CCAAC8);
  sub_21D0D8CF0(0, &qword_280D177E0, 0x277CCA898);
  v4 = sub_21DBFB07C();
  if (v2)
  {
    return a1;
  }

  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
  v7 = sub_21DBFA12C();
  v8 = [v5 string];
  v9 = sub_21DBFA16C();
  v11 = v10;

  v12 = MEMORY[0x223D42B30](v9, v11);

  v13 = swift_allocObject();
  *(v13 + 16) = v6;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_21D873DE4;
  *(v14 + 24) = v13;
  v17[4] = sub_21D24B3B4;
  v17[5] = v14;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_21D1A6068;
  v17[3] = &block_descriptor_32;
  v15 = _Block_copy(v17);
  a1 = v6;

  [v5 enumerateAttribute:v7 inRange:0 options:v12 usingBlock:{0, v15}];

  _Block_release(v15);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if ((v5 & 1) == 0)
  {
    return a1;
  }

  __break(1u);
  return result;
}

id sub_21D873834(id result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (result)
  {
    sub_21DBF8E0C();
    sub_21DBF8E0C();
    sub_21DBF8E0C();

    return a5;
  }

  return result;
}

unint64_t sub_21D873898()
{
  result = qword_27CE62F08;
  if (!qword_27CE62F08)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRParagraphStyleEditingPresenterProcessingOutput.PostUpdateOption, &type metadata for TTRParagraphStyleEditingPresenterProcessingOutput.PostUpdateOption, v0, v1);
    atomic_store(result, &qword_27CE62F08);
  }

  return result;
}

unint64_t sub_21D8738F0()
{
  result = qword_27CE62F10;
  if (!qword_27CE62F10)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRParagraphStyleEditingPresenterProcessingOutput.PostUpdateOption, &type metadata for TTRParagraphStyleEditingPresenterProcessingOutput.PostUpdateOption, v0, v1);
    atomic_store(result, &qword_27CE62F10);
  }

  return result;
}

unint64_t sub_21D873948()
{
  result = qword_27CE62F18;
  if (!qword_27CE62F18)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRParagraphStyleEditingPresenterProcessingOutput.PostUpdateOption, &type metadata for TTRParagraphStyleEditingPresenterProcessingOutput.PostUpdateOption, v0, v1);
    atomic_store(result, &qword_27CE62F18);
  }

  return result;
}

unint64_t sub_21D8739A0()
{
  result = qword_27CE62F20;
  if (!qword_27CE62F20)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRParagraphStyleEditingPresenterProcessingOutput.PostUpdateOption, &type metadata for TTRParagraphStyleEditingPresenterProcessingOutput.PostUpdateOption, v0, v1);
    atomic_store(result, &qword_27CE62F20);
  }

  return result;
}

void destroy for TTRParagraphStyleEditingPresenterProcessingOutput(uint64_t a1)
{

  v2 = *(a1 + 32);
}

uint64_t *initializeWithCopy for TTRParagraphStyleEditingPresenterProcessingOutput(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  v6 = a2[4];
  v5 = a2[5];
  a1[4] = v6;
  a1[5] = v5;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v7 = v6;
  return a1;
}

uint64_t *assignWithCopy for TTRParagraphStyleEditingPresenterProcessingOutput(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;
  sub_21DBF8E0C();

  a1[1] = a2[1];
  sub_21DBF8E0C();

  a1[2] = a2[2];
  a1[3] = a2[3];
  sub_21DBF8E0C();

  v4 = a2[4];
  v5 = a1[4];
  a1[4] = v4;
  v6 = v4;

  a1[5] = a2[5];
  return a1;
}

uint64_t assignWithTake for TTRParagraphStyleEditingPresenterProcessingOutput(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);

  v4 = *(a1 + 32);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 40) = *(a2 + 40);
  return a1;
}

void sub_21D873D08()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = __OFADD__(v1, 1);
  v3 = v1 + 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 16) = v3;
  }
}

unint64_t sub_21D873D4C()
{
  result = qword_27CE62F40;
  if (!qword_27CE62F40)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE62F38, &unk_21DC2DC80);
    result = swift_getWitnessTable(MEMORY[0x277D83970], v3, v0, v1);
    atomic_store(result, &qword_27CE62F40);
  }

  return result;
}

void destroy for TTRParagraphStyleEditingPresenter.TTRParagraphStyleEditingPresenterIndividualLineOutput(uint64_t a1)
{

  v2 = *(a1 + 56);
}

uint64_t initializeWithCopy for TTRParagraphStyleEditingPresenter.TTRParagraphStyleEditingPresenterIndividualLineOutput(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;
  v4 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v4;
  v5 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v5;
  *(a1 + 64) = *(a2 + 64);
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v6 = v5;
  return a1;
}

void *assignWithCopy for TTRParagraphStyleEditingPresenter.TTRParagraphStyleEditingPresenterIndividualLineOutput(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  sub_21DBF8E0C();

  a1[4] = a2[4];
  sub_21DBF8E0C();

  a1[5] = a2[5];
  a1[6] = a2[6];
  sub_21DBF8E0C();

  v4 = a2[7];
  v5 = a1[7];
  a1[7] = v4;
  v6 = v4;

  a1[8] = a2[8];
  a1[9] = a2[9];
  return a1;
}

uint64_t assignWithTake for TTRParagraphStyleEditingPresenter.TTRParagraphStyleEditingPresenterIndividualLineOutput(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 40) = *(a2 + 40);

  v4 = *(a1 + 56);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 64) = *(a2 + 64);
  return a1;
}

uint64_t getEnumTagSinglePayload for TTRParagraphStyleEditingPresenter.TTRParagraphStyleEditingPresenterIndividualLineOutput(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRParagraphStyleEditingPresenter.TTRParagraphStyleEditingPresenterIndividualLineOutput(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_21D874094@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_21D17EA0C(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_21D224524();
      v9 = v11;
    }

    sub_21D181D3C(*(v9 + 48) + 40 * v7);
    sub_21D0CF2E8((*(v9 + 56) + 32 * v7), a2);
    sub_21D4B560C(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_21D874138(uint64_t a1)
{
  v2 = v1;
  v3 = sub_21D17EF1C(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_21D2253EC();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = type metadata accessor for TTRRemindersListItemStateTracker.PromiseKey(0);
  sub_21D87726C(v8 + *(*(v9 - 8) + 72) * v5, type metadata accessor for TTRRemindersListItemStateTracker.PromiseKey);
  v10 = *(*(v7 + 56) + 8 * v5);
  sub_21D4B5BDC(v5, v7);
  *v2 = v7;
  return v10;
}

uint64_t sub_21D8741FC(void *a1)
{
  v2 = v1;
  v3 = sub_21D17EFA0(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_21D225D24();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = type metadata accessor for TTRAttachmentThumbnailsManager.ThumbnailRequest(0);
  sub_21D87726C(v8 + *(*(v9 - 8) + 72) * v5, type metadata accessor for TTRAttachmentThumbnailsManager.ThumbnailRequest);
  v10 = *(*(v7 + 56) + 8 * v5);
  sub_21D4B5E64(v5, v7);
  *v2 = v7;
  return v10;
}

uint64_t sub_21D8742C0()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE62F48);
  v1 = __swift_project_value_buffer(v0, qword_27CE62F48);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRRemindersListItemStateTracker.CellState.description.getter()
{
  if (*v0)
  {
    return 0x6579616C70736964;
  }

  else
  {
    return 0x65646F4D77656976;
  }
}

uint64_t TTRRemindersListItemStateTracker.CellState.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t sub_21D874460()
{
  if (*v0)
  {
    return 0x6579616C70736964;
  }

  else
  {
    return 0x65646F4D77656976;
  }
}

uint64_t TTRRemindersListItemStateTracker.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x277D84F98];
  return result;
}

uint64_t TTRRemindersListItemStateTracker.init()()
{
  result = v0;
  *(v0 + 16) = MEMORY[0x277D84F98];
  return result;
}

uint64_t TTRRemindersListItemStateTracker.makePromise(tracking:of:cancelsExistingPromise:)(_BYTE *a1, uint64_t a2, char a3)
{
  v6 = type metadata accessor for TTRRemindersListItemStateTracker.PromiseKey(0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(a1) = *a1;
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v9);
  v9[*(v7 + 28)] = a1;
  if (a3)
  {
    swift_beginAccess();
    if (*(*(v3 + 16) + 16) && (sub_21D17EF1C(v9), (v10 & 1) != 0))
    {
      swift_endAccess();
      v11 = sub_21DBF5F5C();
      sub_21D122DB4(&qword_280D0C850, MEMORY[0x277D44D58], MEMORY[0x277D44D60]);
      v12 = swift_allocError();
      (*(*(v11 - 8) + 104))(v13, *MEMORY[0x277D44D50], v11);

      sub_21DBF5FAC();
    }

    else
    {
      swift_endAccess();
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62F60, &qword_21DC2DCD0);
  swift_allocObject();
  v14 = sub_21DBF5FDC();
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(v3 + 16);
  *(v3 + 16) = 0x8000000000000000;
  sub_21D479060(v14, v9, isUniquelyReferenced_nonNull_native);
  *(v3 + 16) = v18;
  swift_endAccess();
  result = sub_21DBF5FBC();
  if (result)
  {
    v17 = result;
    sub_21D87726C(v9, type metadata accessor for TTRRemindersListItemStateTracker.PromiseKey);

    return v17;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for TTRRemindersListItemStateTracker.PromiseKey(uint64_t a1)
{
  result = qword_280D117E0;
  if (!qword_280D117E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TTRRemindersListItemStateTracker.fullfil(_:of:)(unsigned __int8 *a1, uint64_t a2)
{
  v4 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TTRRemindersListViewModel.Item(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TTRRemindersListItemStateTracker.PromiseKey(0);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v13);
  v13[*(v11 + 28)] = v14;
  swift_beginAccess();
  v15 = sub_21D874138(v13);
  swift_endAccess();
  if (v15)
  {
    if (qword_27CE56DA0 != -1)
    {
      swift_once();
    }

    v16 = sub_21DBF84BC();
    __swift_project_value_buffer(v16, qword_27CE62F48);
    sub_21D1D338C(a2, v9);
    v17 = sub_21DBF84AC();
    v18 = sub_21DBFAE9C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v32[0] = v30;
      *v19 = 136315394;
      TTRRemindersListViewModel.Item.treeItemIdentifier.getter(v6);
      v20 = TTRRemindersListViewModel.ItemID.description.getter();
      v31 = a2;
      v22 = v21;
      sub_21D87726C(v6, type metadata accessor for TTRRemindersListViewModel.ItemID);
      sub_21D87726C(v9, type metadata accessor for TTRRemindersListViewModel.Item);
      v23 = sub_21D0CDFB4(v20, v22, v32);

      *(v19 + 4) = v23;
      *(v19 + 12) = 2080;
      if (v14)
      {
        v24 = 0x6579616C70736964;
      }

      else
      {
        v24 = 0x65646F4D77656976;
      }

      if (v14)
      {
        v25 = 0xE900000000000064;
      }

      else
      {
        v25 = 0xEF646564616F4C6CLL;
      }

      v26 = sub_21D0CDFB4(v24, v25, v32);

      *(v19 + 14) = v26;
      _os_log_impl(&dword_21D0C9000, v17, v18, "TTRRemindersListItemStateTracker: resolve promise {itemID: %s, cellState: %s}", v19, 0x16u);
      v27 = v30;
      swift_arrayDestroy();
      MEMORY[0x223D46520](v27, -1, -1);
      MEMORY[0x223D46520](v19, -1, -1);
    }

    else
    {

      sub_21D87726C(v9, type metadata accessor for TTRRemindersListViewModel.Item);
    }

    sub_21DBF5FCC();
  }

  return sub_21D87726C(v13, type metadata accessor for TTRRemindersListItemStateTracker.PromiseKey);
}

uint64_t TTRRemindersListItemStateTracker.waitFor(_:of:cancelsExistingPromise:)(_BYTE *a1, uint64_t a2, char a3)
{
  *(v4 + 88) = a3;
  *(v4 + 16) = a2;
  *(v4 + 24) = v3;
  type metadata accessor for TTRRemindersListViewModel.Item(0);
  *(v4 + 32) = swift_task_alloc();
  *(v4 + 89) = *a1;
  sub_21DBFA84C();
  *(v4 + 40) = sub_21DBFA83C();
  v7 = sub_21DBFA7CC();
  *(v4 + 48) = v7;
  *(v4 + 56) = v6;

  return MEMORY[0x2822009F8](sub_21D874C18, v7, v6);
}

uint64_t sub_21D874C18()
{
  v7 = v0;
  v1 = *(v0 + 88);
  v2 = *(v0 + 16);
  v6 = *(v0 + 89);
  *(v0 + 64) = TTRRemindersListItemStateTracker.makePromise(tracking:of:cancelsExistingPromise:)(&v6, v2, v1);
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *v3 = v0;
  v3[1] = sub_21D874CD0;
  v4 = *(v0 + 32);

  return MEMORY[0x2821A7870](v4);
}

uint64_t sub_21D874CD0()
{
  v2 = *v1;
  (*v1)[10] = v0;

  if (v0)
  {
    v3 = v2[6];
    v4 = v2[7];
    v5 = sub_21D7E1420;
  }

  else
  {
    sub_21D87726C(v2[4], type metadata accessor for TTRRemindersListViewModel.Item);
    v3 = v2[6];
    v4 = v2[7];
    v5 = sub_21D7E13A8;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_21D874E00(uint64_t a1)
{
  sub_21DBFC7DC();
  v3 = TTRRemindersListViewModel.ItemID.hash(into:)(v5);
  MEMORY[0x223D44FA0](*(v1 + *(a1 + 20)), v3);
  return sub_21DBFC82C();
}

uint64_t sub_21D874E94(uint64_t a1, uint64_t a2)
{
  sub_21DBFC7DC();
  v4 = TTRRemindersListViewModel.ItemID.hash(into:)(v6);
  MEMORY[0x223D44FA0](*(v2 + *(a2 + 20)), v4);
  return sub_21DBFC82C();
}

uint64_t sub_21D874EE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_s15RemindersUICore25TTRRemindersListViewModelC6ItemIDO2eeoiySbAE_AEtFZ_0(a1, a2))
  {
    v6 = *(a1 + *(a3 + 20)) ^ *(a2 + *(a3 + 20)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t TTRRemindersListItemStateTracker.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_21D874F98()
{
  result = qword_27CE62F68;
  if (!qword_27CE62F68)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for TTRRemindersListItemStateTracker.CellState, &type metadata for TTRRemindersListItemStateTracker.CellState, v0, v1);
    atomic_store(result, &qword_27CE62F68);
  }

  return result;
}

char **sub_21D87504C(char **a1, char **a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) == 0)
  {
    v7 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v19 = *a2;
      *a1 = *a2;
      v20 = v19;
      goto LABEL_45;
    }

    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload)
      {
        memcpy(a1, a2, *(*(v7 - 8) + 64));
LABEL_46:
        *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
        return a1;
      }

      v9 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v10 = swift_getEnumCaseMultiPayload();
      if (v10 > 4)
      {
        if (v10 <= 7)
        {
          if (v10 == 5 || v10 == 6)
          {
            goto LABEL_24;
          }

          goto LABEL_35;
        }

        if (v10 != 8 && v10 != 9)
        {
          goto LABEL_35;
        }
      }

      else
      {
        if (v10 > 2)
        {
LABEL_24:
          v22 = sub_21DBF563C();
          (*(*(v22 - 8) + 16))(a1, a2, v22);
          swift_storeEnumTagMultiPayload();
          goto LABEL_45;
        }

        if (v10 != 1)
        {
          if (v10 == 2)
          {
            goto LABEL_24;
          }

LABEL_35:
          memcpy(a1, a2, *(*(v9 - 8) + 64));
          goto LABEL_45;
        }
      }

      v23 = *a2;
      *a1 = *a2;
      v24 = v23;
      swift_storeEnumTagMultiPayload();
      goto LABEL_45;
    }

    v12 = *a2;
    *a1 = *a2;
    v13 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v14 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v15 = *(v14 - 8);
    v16 = *(v15 + 48);
    v17 = v12;
    if (v16(a2 + v13, 1, v14))
    {
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      memcpy(a1 + v13, a2 + v13, *(*(v18 - 8) + 64));
LABEL_45:
      swift_storeEnumTagMultiPayload();
      goto LABEL_46;
    }

    v21 = swift_getEnumCaseMultiPayload();
    if (v21 > 4)
    {
      if (v21 <= 7)
      {
        if (v21 == 5 || v21 == 6)
        {
          goto LABEL_36;
        }

        goto LABEL_43;
      }

      if (v21 != 8 && v21 != 9)
      {
        goto LABEL_43;
      }
    }

    else
    {
      if (v21 > 2)
      {
LABEL_36:
        v25 = sub_21DBF563C();
        (*(*(v25 - 8) + 16))(a1 + v13, a2 + v13, v25);
        swift_storeEnumTagMultiPayload();
LABEL_44:
        (*(v15 + 56))(a1 + v13, 0, 1, v14);
        goto LABEL_45;
      }

      if (v21 != 1)
      {
        if (v21 == 2)
        {
          goto LABEL_36;
        }

LABEL_43:
        memcpy(a1 + v13, a2 + v13, *(v15 + 64));
        goto LABEL_44;
      }
    }

    v26 = *(a2 + v13);
    *(a1 + v13) = v26;
    v27 = v26;
    swift_storeEnumTagMultiPayload();
    goto LABEL_44;
  }

  v11 = *a2;
  *a1 = *a2;
  a1 = &v11[(v5 + 16) & ~v5];

  return a1;
}

void destroy for TTRBoardColumnItemIntermediateViewModel(id *a1)
{
  type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload != 1)
    {
      if (EnumCaseMultiPayload)
      {
        return;
      }

      type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v3 = swift_getEnumCaseMultiPayload();
      if (v3 > 4)
      {
        if (v3 <= 7)
        {
          if (v3 != 5 && v3 != 6)
          {
            return;
          }

          goto LABEL_20;
        }

        if (v3 != 8 && v3 != 9)
        {
          return;
        }
      }

      else
      {
        if (v3 > 2)
        {
LABEL_20:
          v7 = sub_21DBF563C();
          v8 = *(*(v7 - 8) + 8);
          v9 = v7;
          v10 = a1;
LABEL_31:

          v8(v10, v9);
          return;
        }

        if (v3 != 1)
        {
          if (v3 != 2)
          {
            return;
          }

          goto LABEL_20;
        }
      }

      goto LABEL_23;
    }

    v4 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v5 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    if ((*(*(v5 - 8) + 48))(a1 + v4, 1, v5))
    {
      return;
    }

    v6 = swift_getEnumCaseMultiPayload();
    if (v6 > 4)
    {
      if (v6 <= 7)
      {
        if (v6 != 5 && v6 != 6)
        {
          return;
        }

        goto LABEL_30;
      }

      if (v6 != 8 && v6 != 9)
      {
        return;
      }
    }

    else
    {
      if (v6 > 2)
      {
LABEL_30:
        v9 = sub_21DBF563C();
        v8 = *(*(v9 - 8) + 8);
        v10 = (a1 + v4);
        goto LABEL_31;
      }

      if (v6 != 1)
      {
        if (v6 != 2)
        {
          return;
        }

        goto LABEL_30;
      }
    }

    v11 = *(a1 + v4);
    goto LABEL_24;
  }

LABEL_23:
  v11 = *a1;
LABEL_24:
}

void **sub_21D875960(void **a1, void **a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v17 = *a2;
      *a1 = *a2;
      v18 = v17;
      goto LABEL_43;
    case 1:
      v10 = *a2;
      *a1 = *a2;
      v11 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v12 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v13 = *(v12 - 8);
      v14 = *(v13 + 48);
      v15 = v10;
      if (v14(a2 + v11, 1, v12))
      {
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
        memcpy(a1 + v11, a2 + v11, *(*(v16 - 8) + 64));
LABEL_43:
        swift_storeEnumTagMultiPayload();
        goto LABEL_44;
      }

      v19 = swift_getEnumCaseMultiPayload();
      if (v19 > 4)
      {
        if (v19 <= 7)
        {
          if (v19 == 5 || v19 == 6)
          {
            goto LABEL_34;
          }

          goto LABEL_41;
        }

        if (v19 != 8 && v19 != 9)
        {
          goto LABEL_41;
        }
      }

      else
      {
        if (v19 > 2)
        {
LABEL_34:
          v23 = sub_21DBF563C();
          (*(*(v23 - 8) + 16))(a1 + v11, a2 + v11, v23);
          swift_storeEnumTagMultiPayload();
LABEL_42:
          (*(v13 + 56))(a1 + v11, 0, 1, v12);
          goto LABEL_43;
        }

        if (v19 != 1)
        {
          if (v19 == 2)
          {
            goto LABEL_34;
          }

LABEL_41:
          memcpy(a1 + v11, a2 + v11, *(v13 + 64));
          goto LABEL_42;
        }
      }

      v24 = *(a2 + v11);
      *(a1 + v11) = v24;
      v25 = v24;
      swift_storeEnumTagMultiPayload();
      goto LABEL_42;
    case 0:
      v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v9 = swift_getEnumCaseMultiPayload();
      if (v9 > 4)
      {
        if (v9 <= 7)
        {
          if (v9 == 5 || v9 == 6)
          {
            goto LABEL_22;
          }

          goto LABEL_33;
        }

        if (v9 != 8 && v9 != 9)
        {
          goto LABEL_33;
        }
      }

      else
      {
        if (v9 > 2)
        {
LABEL_22:
          v20 = sub_21DBF563C();
          (*(*(v20 - 8) + 16))(a1, a2, v20);
          swift_storeEnumTagMultiPayload();
          goto LABEL_43;
        }

        if (v9 != 1)
        {
          if (v9 == 2)
          {
            goto LABEL_22;
          }

LABEL_33:
          memcpy(a1, a2, *(*(v8 - 8) + 64));
          goto LABEL_43;
        }
      }

      v21 = *a2;
      *a1 = *a2;
      v22 = v21;
      swift_storeEnumTagMultiPayload();
      goto LABEL_43;
  }

  memcpy(a1, a2, *(*(v6 - 8) + 64));
LABEL_44:
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

void **sub_21D875FF0(void **a1, void **a2, uint64_t a3)
{
  if (a1 == a2)
  {
    goto LABEL_45;
  }

  sub_21D87726C(a1, type metadata accessor for TTRRemindersListViewModel.ItemID);
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v17 = *a2;
      *a1 = *a2;
      v18 = v17;
      goto LABEL_44;
    case 1:
      v10 = *a2;
      *a1 = *a2;
      v11 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
      v12 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v13 = *(v12 - 8);
      v14 = *(v13 + 48);
      v15 = v10;
      if (v14(a2 + v11, 1, v12))
      {
        v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
        memcpy(a1 + v11, a2 + v11, *(*(v16 - 8) + 64));
LABEL_44:
        swift_storeEnumTagMultiPayload();
        goto LABEL_45;
      }

      v19 = swift_getEnumCaseMultiPayload();
      if (v19 > 4)
      {
        if (v19 <= 7)
        {
          if (v19 == 5 || v19 == 6)
          {
            goto LABEL_35;
          }

          goto LABEL_42;
        }

        if (v19 != 8 && v19 != 9)
        {
          goto LABEL_42;
        }
      }

      else
      {
        if (v19 > 2)
        {
LABEL_35:
          v23 = sub_21DBF563C();
          (*(*(v23 - 8) + 16))(a1 + v11, a2 + v11, v23);
          swift_storeEnumTagMultiPayload();
LABEL_43:
          (*(v13 + 56))(a1 + v11, 0, 1, v12);
          goto LABEL_44;
        }

        if (v19 != 1)
        {
          if (v19 == 2)
          {
            goto LABEL_35;
          }

LABEL_42:
          memcpy(a1 + v11, a2 + v11, *(v13 + 64));
          goto LABEL_43;
        }
      }

      v24 = *(a2 + v11);
      *(a1 + v11) = v24;
      v25 = v24;
      swift_storeEnumTagMultiPayload();
      goto LABEL_43;
    case 0:
      v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
      v9 = swift_getEnumCaseMultiPayload();
      if (v9 > 4)
      {
        if (v9 <= 7)
        {
          if (v9 == 5 || v9 == 6)
          {
            goto LABEL_23;
          }

          goto LABEL_34;
        }

        if (v9 != 8 && v9 != 9)
        {
          goto LABEL_34;
        }
      }

      else
      {
        if (v9 > 2)
        {
LABEL_23:
          v20 = sub_21DBF563C();
          (*(*(v20 - 8) + 16))(a1, a2, v20);
          swift_storeEnumTagMultiPayload();
          goto LABEL_44;
        }

        if (v9 != 1)
        {
          if (v9 == 2)
          {
            goto LABEL_23;
          }

LABEL_34:
          memcpy(a1, a2, *(*(v8 - 8) + 64));
          goto LABEL_44;
        }
      }

      v21 = *a2;
      *a1 = *a2;
      v22 = v21;
      swift_storeEnumTagMultiPayload();
      goto LABEL_44;
  }

  memcpy(a1, a2, *(*(v6 - 8) + 64));
LABEL_45:
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

char *sub_21D8766A4(char *a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    *a1 = *a2;
    v11 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v12 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(&a2[v11], 1, v12))
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      memcpy(&a1[v11], &a2[v11], *(*(v14 - 8) + 64));
      goto LABEL_31;
    }

    v15 = swift_getEnumCaseMultiPayload();
    if (v15 <= 3)
    {
      if (v15 == 2 || v15 == 3)
      {
        goto LABEL_18;
      }
    }

    else if (v15 == 4 || v15 == 5 || v15 == 6)
    {
LABEL_18:
      v16 = sub_21DBF563C();
      (*(*(v16 - 8) + 32))(&a1[v11], &a2[v11], v16);
      swift_storeEnumTagMultiPayload();
LABEL_30:
      (*(v13 + 56))(&a1[v11], 0, 1, v12);
      goto LABEL_31;
    }

    memcpy(&a1[v11], &a2[v11], *(v13 + 64));
    goto LABEL_30;
  }

  if (!EnumCaseMultiPayload)
  {
    v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v9 = swift_getEnumCaseMultiPayload();
    if (v9 <= 3)
    {
      if (v9 == 2 || v9 == 3)
      {
        goto LABEL_7;
      }
    }

    else if (v9 == 4 || v9 == 5 || v9 == 6)
    {
LABEL_7:
      v10 = sub_21DBF563C();
      (*(*(v10 - 8) + 32))(a1, a2, v10);
      swift_storeEnumTagMultiPayload();
LABEL_31:
      swift_storeEnumTagMultiPayload();
      goto LABEL_32;
    }

    memcpy(a1, a2, *(*(v8 - 8) + 64));
    goto LABEL_31;
  }

  memcpy(a1, a2, *(*(v6 - 8) + 64));
LABEL_32:
  a1[*(a3 + 20)] = a2[*(a3 + 20)];
  return a1;
}

char *sub_21D876BF4(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    goto LABEL_33;
  }

  sub_21D87726C(a1, type metadata accessor for TTRRemindersListViewModel.ItemID);
  v6 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    *a1 = *a2;
    v11 = *(type metadata accessor for TTRRemindersListViewModel.ReminderID(0) + 20);
    v12 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v13 = *(v12 - 8);
    if ((*(v13 + 48))(&a2[v11], 1, v12))
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD70, &unk_21DC09230);
      memcpy(&a1[v11], &a2[v11], *(*(v14 - 8) + 64));
      goto LABEL_32;
    }

    v15 = swift_getEnumCaseMultiPayload();
    if (v15 <= 3)
    {
      if (v15 == 2 || v15 == 3)
      {
        goto LABEL_19;
      }
    }

    else if (v15 == 4 || v15 == 5 || v15 == 6)
    {
LABEL_19:
      v16 = sub_21DBF563C();
      (*(*(v16 - 8) + 32))(&a1[v11], &a2[v11], v16);
      swift_storeEnumTagMultiPayload();
LABEL_31:
      (*(v13 + 56))(&a1[v11], 0, 1, v12);
      goto LABEL_32;
    }

    memcpy(&a1[v11], &a2[v11], *(v13 + 64));
    goto LABEL_31;
  }

  if (!EnumCaseMultiPayload)
  {
    v8 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
    v9 = swift_getEnumCaseMultiPayload();
    if (v9 <= 3)
    {
      if (v9 == 2 || v9 == 3)
      {
        goto LABEL_8;
      }
    }

    else if (v9 == 4 || v9 == 5 || v9 == 6)
    {
LABEL_8:
      v10 = sub_21DBF563C();
      (*(*(v10 - 8) + 32))(a1, a2, v10);
      swift_storeEnumTagMultiPayload();
LABEL_32:
      swift_storeEnumTagMultiPayload();
      goto LABEL_33;
    }

    memcpy(a1, a2, *(*(v8 - 8) + 64));
    goto LABEL_32;
  }

  memcpy(a1, a2, *(*(v6 - 8) + 64));
LABEL_33:
  a1[*(a3 + 20)] = a2[*(a3 + 20)];
  return a1;
}

uint64_t sub_21D877190(uint64_t a1)
{
  result = type metadata accessor for TTRRemindersListViewModel.ItemID(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_21D87726C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D8772CC()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE62F78);
  v1 = __swift_project_value_buffer(v0, qword_27CE62F78);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_21D877394(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  if ([objc_opt_self() isInternalInstall])
  {
    v4 = [objc_opt_self() daemonUserDefaults];
    v5 = [v4 enableInAppDebugMenu];

    if (v5)
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_21D877AC8(Strong, a2);
    }
  }
}

void static TTRIDebugMenuManager.startIfNeeded(attachingTo:makeDebugMenuViewController:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if ([objc_opt_self() isInternalInstall])
  {
    v8 = [objc_opt_self() daemonUserDefaults];
    v9 = [v8 enableInAppDebugMenu];

    if (v9)
    {
      v10 = sub_21D877720();
      if (v10)
      {

        if (qword_27CE56DA8 != -1)
        {
          swift_once();
        }

        v11 = sub_21DBF84BC();
        __swift_project_value_buffer(v11, qword_27CE62F78);
        oslog = sub_21DBF84AC();
        v12 = sub_21DBFAEBC();
        if (os_log_type_enabled(oslog, v12))
        {
          v13 = swift_slowAlloc();
          *v13 = 0;
          _os_log_impl(&dword_21D0C9000, oslog, v12, "TTRIDebugMenuManager: cannot attach debug menu to a view twice", v13, 2u);
          MEMORY[0x223D46520](v13, -1, -1);
        }
      }

      else
      {
        v14 = swift_allocObject();
        *(v14 + 2) = a2;
        *(v14 + 3) = a3;
        *(v14 + 4) = v4;
        v15 = type metadata accessor for DebugGestureHandler();
        v16 = objc_allocWithZone(v15);
        v17 = &v16[OBJC_IVAR____TtC15RemindersUICoreP33_C3D5BA548D44065B85FB6ED8321D992119DebugGestureHandler_handler];
        *v17 = sub_21D877868;
        v17[1] = v14;
        v23.receiver = v16;
        v23.super_class = v15;

        v18 = objc_msgSendSuper2(&v23, sel_init);
        v19 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v18 action:sel_tapGestureAction_];
        [v19 setNumberOfTapsRequired_];
        [v19 setNumberOfTouchesRequired_];
        [a1 addGestureRecognizer_];
        v20 = qword_27CE56DB0;
        v21 = v18;
        if (v20 != -1)
        {
          swift_once();
        }

        objc_setAssociatedObject(a1, qword_27CE62F90, v21, 1);
      }
    }
  }
}

uint64_t sub_21D877720()
{
  if (qword_27CE56DB0 != -1)
  {
    swift_once();
  }

  if (objc_getAssociatedObject(v0, qword_27CE62F90))
  {
    sub_21DBFBC1C();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    type metadata accessor for DebugGestureHandler();
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_21D1A8418(v5);
    return 0;
  }
}

void sub_21D877804(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  v4 = [a1 window];
  sub_21D877AC8(v4, a2);
}

void sub_21D8778B0(uint64_t a1)
{
  sub_21D0DB414(a1, v6);
  if (v7)
  {
    sub_21D877A7C();
    if (swift_dynamicCast())
    {
      v2 = [v5 view];
      if (v2)
      {
        v3 = v2;
        v4 = *(v1 + OBJC_IVAR____TtC15RemindersUICoreP33_C3D5BA548D44065B85FB6ED8321D992119DebugGestureHandler_handler);

        v4(v3);
      }

      else
      {
      }
    }
  }

  else
  {
    sub_21D1A8418(v6);
  }
}

void *sub_21D877A38()
{
  result = swift_slowAlloc();
  *result = 0;
  qword_27CE62F90 = result;
  return result;
}

unint64_t sub_21D877A7C()
{
  result = qword_27CE62FA0;
  if (!qword_27CE62FA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CE62FA0);
  }

  return result;
}

void sub_21D877AC8(void *a1, uint64_t (*a2)(void))
{
  if (qword_27CE56DA8 != -1)
  {
    swift_once();
  }

  v4 = sub_21DBF84BC();
  __swift_project_value_buffer(v4, qword_27CE62F78);
  v5 = sub_21DBF84AC();
  v6 = sub_21DBFAE9C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_21D0C9000, v5, v6, "TTRIDebugMenuManager: showing debug menu", v7, 2u);
    MEMORY[0x223D46520](v7, -1, -1);
  }

  if (a1)
  {
    v8 = a1;
    v9 = [v8 rootViewController];
    if (v9)
    {
      v10 = v9;
      oslog = a2();
      [v10 presentViewController_animated_completion_];

      goto LABEL_11;
    }
  }

  oslog = sub_21DBF84AC();
  v11 = sub_21DBFAEBC();
  if (os_log_type_enabled(oslog, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_21D0C9000, oslog, v11, "TTRIDebugMenuManager: not showing debug menu because rootViewController is not found", v12, 2u);
    MEMORY[0x223D46520](v12, -1, -1);
  }

LABEL_11:
}

id TTRSection.sectionID.getter@<X0>(void *a1@<X8>)
{
  result = [*v1 objectID];
  *a1 = result;
  return result;
}

id TTRSection.objectID.getter()
{
  v1 = [*v0 objectID];

  return v1;
}

uint64_t sub_21D877D18()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE62FA8);
  v1 = __swift_project_value_buffer(v0, qword_27CE62FA8);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id TTRSection.parentID.getter()
{
  v1 = [*v0 parentID];

  return v1;
}

uint64_t TTRSection.displayName.getter()
{
  v1 = [*v0 displayName];
  v2 = sub_21DBFA16C();

  return v2;
}

void TTRSection.init(with:store:)(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v54[1] = *MEMORY[0x277D85DE8];
  v6 = [a1 entityName];
  v7 = sub_21DBFA16C();
  v9 = v8;

  sub_21D0D8CF0(0, &qword_27CE584F8, 0x277D44698);
  v10 = [swift_getObjCClassFromMetadata() cdEntityName];
  v11 = sub_21DBFA16C();
  v13 = v12;

  if (v11 == v7 && v13 == v9)
  {

    goto LABEL_8;
  }

  v15 = sub_21DBFC64C();

  if ((v15 & 1) == 0)
  {
    sub_21D0D8CF0(0, &qword_27CE584A8, 0x277D44818);
    v25 = [swift_getObjCClassFromMetadata() cdEntityName];
    v26 = sub_21DBFA16C();
    v28 = v27;

    if (v26 == v7 && v28 == v9)
    {
    }

    else
    {
      v29 = sub_21DBFC64C();

      if ((v29 & 1) == 0)
      {
        sub_21D0D8CF0(0, &qword_27CE584B8, 0x277D448B8);
        v35 = [swift_getObjCClassFromMetadata() cdEntityName];
        v36 = sub_21DBFA16C();
        v38 = v37;

        if (v36 == v7 && v38 == v9)
        {
        }

        else
        {
          v39 = sub_21DBFC64C();

          if ((v39 & 1) == 0)
          {
            if (qword_27CE56DB8 != -1)
            {
              swift_once();
            }

            v47 = sub_21DBF84BC();
            __swift_project_value_buffer(v47, qword_27CE62FA8);
            v48 = a1;
            v49 = sub_21DBF84AC();
            v50 = sub_21DBFAECC();

            if (os_log_type_enabled(v49, v50))
            {
              v51 = swift_slowAlloc();
              v52 = swift_slowAlloc();
              *v51 = 138412290;
              *(v51 + 4) = v48;
              *v52 = v48;
              v53 = v48;
              _os_log_impl(&dword_21D0C9000, v49, v50, "attempted to create TTRSection from unsupported section %@", v51, 0xCu);
              sub_21D560EB8(v52);
              MEMORY[0x223D46520](v52, -1, -1);
              MEMORY[0x223D46520](v51, -1, -1);
            }

            else
            {
            }

            goto LABEL_26;
          }
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
        v40 = swift_allocObject();
        *(v40 + 16) = xmmword_21DC09CF0;
        *(v40 + 32) = a1;
        sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
        v17 = a1;
        v41 = sub_21DBFA5DC();

        v54[0] = 0;
        v42 = [a2 fetchTemplateSectionsWithObjectIDs:v41 error:v54];

        v20 = v54[0];
        if (!v42)
        {
          goto LABEL_25;
        }

        sub_21D183A0C();
        v43 = sub_21DBF9E6C();
        v44 = v20;

        v23 = sub_21D1AA2CC(v17, v43);

        if (v23)
        {
          v24 = 2;
          goto LABEL_27;
        }

        goto LABEL_26;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_21DC09CF0;
    *(v30 + 32) = a1;
    sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
    v17 = a1;
    v31 = sub_21DBFA5DC();

    v54[0] = 0;
    v32 = [a2 fetchSmartListSectionsWithObjectIDs:v31 error:v54];

    v20 = v54[0];
    if (!v32)
    {
      goto LABEL_25;
    }

    sub_21D183A0C();
    v33 = sub_21DBF9E6C();
    v34 = v20;

    v23 = sub_21D1AA2B8(v17, v33);

    if (v23)
    {
      v24 = 1;
      goto LABEL_27;
    }

LABEL_26:
    v23 = 0;
    v24 = -1;
    goto LABEL_27;
  }

LABEL_8:

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450, &unk_21DC09E70);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_21DC09CF0;
  *(v16 + 32) = a1;
  sub_21D0D8CF0(0, &qword_280D17880, 0x277D44700);
  v17 = a1;
  v18 = sub_21DBFA5DC();

  v54[0] = 0;
  v19 = [a2 fetchListSectionsWithObjectIDs:v18 error:v54];

  v20 = v54[0];
  if (!v19)
  {
LABEL_25:
    v45 = v20;
    v46 = sub_21DBF52DC();

    swift_willThrow();
    goto LABEL_26;
  }

  sub_21D183A0C();
  v21 = sub_21DBF9E6C();
  v22 = v20;

  v23 = sub_21D1AA2A4(v17, v21);

  if (!v23)
  {
    goto LABEL_26;
  }

  v24 = 0;
LABEL_27:
  *a3 = v23;
  *(a3 + 8) = v24;
}

uint64_t _s15RemindersUICore10TTRSectionO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (*(a1 + 8) == 1)
    {
      if (v4 == 1)
      {
LABEL_4:
        sub_21D0D8CF0(0, &qword_280D17680, 0x277D82BB8);
        v5 = v3;
        v6 = v2;
        v7 = sub_21DBFB63C();

        return v7 & 1;
      }
    }

    else if (v4 == 2)
    {
      goto LABEL_4;
    }
  }

  else if (!*(a2 + 8))
  {
    goto LABEL_4;
  }

  return 0;
}

uint64_t sub_21D8785C8()
{
  (*(*(v0 + 16) + 32))(&v4);
  v1 = v5;
  if (v5 >> 60 == 15)
  {
    return MEMORY[0x277D84FA0];
  }

  v2 = v4;
  sub_21DBF521C();
  swift_allocObject();
  sub_21DBF520C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62FC0, &qword_21DC2DF00);
  sub_21D8792A8(&qword_27CE62FD0, asc_21DC190E0);
  sub_21DBF51EC();

  sub_21D1BAF38(v2, v1);
  return v4;
}

void sub_21D87882C(uint64_t a1, char a2)
{
  v5 = v2;
  if (!*(a1 + 16) && (a2 & 1) == 0)
  {
    v8 = *(v2 + 16);
    v9 = *(v8 + 88);
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      __break(1u);
    }

    else
    {
      *(v8 + 88) = v11;
      v32 = xmmword_21DC18EF0;
      (*(v8 + 48))(&v32);
      v12 = *(v8 + 88);
      v10 = __OFSUB__(v12, 1);
      v13 = v12 - 1;
      if (!v10)
      {
        *(v8 + 88) = v13;
        if (qword_280D0F3A8 == -1)
        {
          goto LABEL_6;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_21:
    swift_once();
LABEL_6:
    v14 = sub_21DBF84BC();
    __swift_project_value_buffer(v14, qword_27CE5D1E0);

    oslog = sub_21DBF84AC();
    v15 = sub_21DBFAEAC();

    if (os_log_type_enabled(oslog, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *&v32 = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_21D0CDFB4(*(v5 + 24), *(v5 + 32), &v32);
      _os_log_impl(&dword_21D0C9000, oslog, v15, "Removed collapsed itemIDs from user defaults {persistence: %s}", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x223D46520](v17, -1, -1);
      MEMORY[0x223D46520](v16, -1, -1);
    }

    else
    {
    }

    return;
  }

  sub_21DBF525C();
  swift_allocObject();
  sub_21DBF524C();
  *&v32 = a1;
  BYTE8(v32) = a2 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE62FC0, &qword_21DC2DF00);
  sub_21D8792A8(&qword_27CE62FC8, byte_21DC19108);
  v18 = sub_21DBF522C();
  v20 = *(v2 + 16);
  v21 = *(v20 + 88);
  v10 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (v10)
  {
    __break(1u);
    goto LABEL_23;
  }

  v4 = v18;
  v3 = v19;
  *(v20 + 88) = v22;
  *&v32 = v18;
  *(&v32 + 1) = v19;
  v23 = *(v20 + 48);
  sub_21D1BAF70(v18, v19);
  v23(&v32);
  sub_21D17B8A8(v4, v3);
  v24 = *(v20 + 88);
  v10 = __OFSUB__(v24, 1);
  v25 = v24 - 1;
  if (v10)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  *(v20 + 88) = v25;
  if (qword_280D0F3A8 != -1)
  {
LABEL_24:
    swift_once();
  }

  v26 = sub_21DBF84BC();
  __swift_project_value_buffer(v26, qword_27CE5D1E0);

  sub_21DBF8E0C();
  v27 = sub_21DBF84AC();
  v28 = sub_21DBFAEAC();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *&v32 = v30;
    *v29 = 134218242;
    *(v29 + 4) = *(a1 + 16);

    *(v29 + 12) = 2080;
    *(v29 + 14) = sub_21D0CDFB4(*(v5 + 24), *(v5 + 32), &v32);
    _os_log_impl(&dword_21D0C9000, v27, v28, "Saved collapsed itemIDs to user defaults {count: %ld, persistence: %s}", v29, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x223D46520](v30, -1, -1);
    MEMORY[0x223D46520](v29, -1, -1);
  }

  else
  {
  }

  sub_21D17B8A8(v4, v3);
}

void static TTRTreeViewCollapsedStatesUserDefaultsPersistence<>.updateCollapsedState(to:sectionObjectID:listObjectID:requiresViewsToRefresh:userDefaults:)(int a1, void *a2, void *a3, int a4, uint64_t a5)
{
  v37 = a4;
  v38 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v36[-v9];
  v11 = type metadata accessor for TTRRemindersListViewModel.ItemID(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v36[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v16 = &v36[-v15];
  MEMORY[0x28223BE20](v17);
  v19 = &v36[-v18];
  v20 = type metadata accessor for TTRRemindersListViewModel.SectionID(0);
  MEMORY[0x28223BE20](v20);
  v22 = &v36[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v22 = a2;
  swift_storeEnumTagMultiPayload();
  sub_21D879240(v22, v19, type metadata accessor for TTRRemindersListViewModel.SectionID);
  swift_storeEnumTagMultiPayload();
  v23 = a2;
  v24 = [a3 stringRepresentation];
  v25 = sub_21DBFA16C();
  v27 = v26;

  sub_21D0D32E4(a5, v40);
  v28 = v41;
  v29 = v42;
  __swift_project_boxed_opaque_existential_1(v40, v41);
  v30 = (*(v29 + 8))(v25, v27, v28, v29);
  inited = swift_initStackObject();
  inited[2] = v30;
  inited[3] = v25;
  inited[4] = v27;
  __swift_destroy_boxed_opaque_existential_0(v40);
  v32 = sub_21D8785C8();
  v39 = v32;
  if (v38)
  {
    sub_21D879240(v19, v13, type metadata accessor for TTRRemindersListViewModel.ItemID);
    sub_21DBF8E0C();
    sub_21D29B520(v16, v13);
    sub_21D8791E0(v16, type metadata accessor for TTRRemindersListViewModel.ItemID);
  }

  else
  {
    sub_21DBF8E0C();
    sub_21D1AAD70(v19, v10);
    sub_21D879178(v10);
  }

  v33 = v39;
  sub_21D320EEC(v39, v32);
  v35 = v34;

  if (v35)
  {

    sub_21D8791E0(v19, type metadata accessor for TTRRemindersListViewModel.ItemID);
    sub_21D8791E0(v22, type metadata accessor for TTRRemindersListViewModel.SectionID);
  }

  else
  {
    sub_21D87882C(v33, v37 & 1);

    sub_21D8791E0(v19, type metadata accessor for TTRRemindersListViewModel.ItemID);
    sub_21D8791E0(v22, type metadata accessor for TTRRemindersListViewModel.SectionID);
  }
}

uint64_t sub_21D879178(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5FB90, &unk_21DC09290);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21D8791E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21D879240(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21D8792A8(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE62FC0, &qword_21DC2DF00);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21D8792F8()
{
  result = sub_21DBFA16C();
  qword_27CE62FD8 = result;
  unk_27CE62FE0 = v1;
  return result;
}

double sub_21D87945C@<D0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a5@<X8>)
{
  if (*a1 != -1)
  {
    v8 = a2;
    v9 = a3;
    v10 = a5;
    swift_once();
    a2 = v8;
    a5 = v10;
    a3 = v9;
  }

  v6 = *a3;
  *a5 = *a2;
  a5[1] = v6;

  sub_21DBF8E0C();
  return result;
}

uint64_t static TTRAuthorizationSource.isNonRemindersBundle.getter()
{
  if (qword_280D15608 != -1)
  {
    swift_once();
  }

  return byte_280D15610;
}

uint64_t TTRAuthorizationSource.description.getter()
{
  v1 = v0[1];
  if (!v1)
  {
    return 0x50746E6572727563;
  }

  v2 = *v0;
  sub_21DBFBEEC();

  MEMORY[0x223D42AA0](v2, v1);
  MEMORY[0x223D42AA0](41, 0xE100000000000000);
  return 0xD000000000000011;
}

uint64_t TTRTemplatePublicLinkData.CreatedStateDescription.DateType.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

uint64_t TTRTemplatePublicLinkData.CreatedStateDescription.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21DBF563C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TTRTemplatePublicLinkData.CreatedStateDescription.dateType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t TTRTemplatePublicLinkData.CreatedStateDescription.init(date:dateType:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = sub_21DBF563C();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
  *(a3 + *(result + 20)) = v5;
  return result;
}

BOOL static TTRTemplatePublicLinkData.CreatedStateDescription.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_21DBF55EC() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
  return *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20));
}

uint64_t TTRTemplatePublicLinkData.capabilities.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for TTRTemplatePublicLinkData(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

BOOL TTRTemplatePublicLinkData.hasPublicLink.getter()
{
  v1 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21D46D038(v0, v3);
  v4 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
  v5 = (*(*(v4 - 8) + 48))(v3, 1, v4);
  if (v5 != 1)
  {
    sub_21D87B178(v3, type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay);
  }

  return v5 != 1;
}

uint64_t TTRTemplatePublicLinkData.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  result = type metadata accessor for TTRTemplatePublicLinkData(0);
  *(a1 + *(result + 20)) = 0;
  return result;
}

uint64_t TTRTemplatePublicLinkData.init(template:now:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v102 = a3;
  v98 = sub_21DBF5A0C();
  v92 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v91 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF5A2C();
  v95 = *(v6 - 8);
  v96 = v6;
  MEMORY[0x28223BE20](v6);
  v100 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay(0);
  MEMORY[0x28223BE20](v8 - 8);
  v94 = &v80 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v97 = &v80 - v11;
  MEMORY[0x28223BE20](v12);
  v89 = &v80 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58D68, &unk_21DC0C060);
  MEMORY[0x28223BE20](v14 - 8);
  v90 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v99 = &v80 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v80 - v19;
  v21 = sub_21DBF563C();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v88 = &v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v87 = &v80 - v25;
  MEMORY[0x28223BE20](v26);
  v93 = &v80 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v80 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v80 - v32;
  v34 = sub_21DBFAE0C();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = &v80 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = a1;
  sub_21DBFAE1C();
  v38 = (*(v35 + 88))(v37, v34);
  if (v38 == *MEMORY[0x277D459D8])
  {
    (*(v35 + 96))(v37, v34);
    v39 = *v37;
    v85 = v37[8];
    sub_21D46CAFC(a2, v20);
    v40 = *(v22 + 48);
    v41 = v40(v20, 1, v21);
    v86 = a2;
    v83 = v40;
    if (v41 == 1)
    {
      v42 = v33;
      _s15RemindersUICore22TTRCurrentTimeProviderC3now10Foundation4DateVyF_0();
      if (v40(v20, 1, v21) != 1)
      {
        sub_21D0CF7E0(v20, &qword_27CE58D68, &unk_21DC0C060);
      }
    }

    else
    {
      v42 = v33;
      (*(v22 + 32))(v33, v20, v21);
    }

    v46 = v39;
    v47 = [v39 expirationDate];
    sub_21DBF55FC();

    v80 = sub_21D87AAA4();
    LOBYTE(v47) = sub_21DBFA08C();
    v84 = v22;
    v48 = (v22 + 8);
    v49 = *(v22 + 8);
    v49(v30, v21);
    if ((v47 & 1) == 0)
    {
      v60 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
      v61 = v89;
      (*(*(v60 - 8) + 56))(v89, 1, 1, v60);

      sub_21D0CF7E0(v86, &qword_27CE58D68, &unk_21DC0C060);
      v49(v42, v21);
      v44 = v85 ^ 1u;
      v62 = v61;
      v45 = v102;
LABEL_29:
      sub_21D87C33C(v62, v45, type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay);
      goto LABEL_30;
    }

    v82 = v42;
    _s15RemindersUICore22TTRCurrentTimeProviderC8calendar10Foundation8CalendarVvg_0();
    v50 = v91;
    v51 = v92;
    (*(v92 + 104))(v91, *MEMORY[0x277CC9998], v98);
    v81 = v46;
    v52 = v48;
    v53 = [v46 &selRef_parentAccountID];
    sub_21DBF55FC();

    v54 = v99;
    sub_21DBF599C();
    v89 = v52;
    v49(v30, v21);
    v55 = v49;
    (*(v51 + 8))(v50, v98);
    v56 = v54;
    v57 = v90;
    sub_21D46CAFC(v56, v90);
    if (v83(v57, 1, v21) == 1)
    {
      sub_21D0CF7E0(v57, &qword_27CE58D68, &unk_21DC0C060);
      v45 = v102;
      v58 = v93;
    }

    else
    {
      v63 = v87;
      (*(v84 + 32))(v87, v57, v21);
      v64 = sub_21DBFA08C();
      v58 = v93;
      if ((v64 & 1) == 0)
      {
        v65 = v81;
        v72 = [v81 expirationDate];
        sub_21DBF55FC();

        v49(v63, v21);
        v70 = 2;
        v45 = v102;
LABEL_20:
        v73 = v97;
        v74 = v94;
        (*(v84 + 16))(v97, v58, v21);
        v75 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
        *(v73 + *(v75 + 20)) = v70;
        v76 = *(v75 - 8);
        (*(v76 + 56))(v73, 0, 1, v75);
        v77 = [v65 canBeUpdated];
        if (v85)
        {

          sub_21D0CF7E0(v86, &qword_27CE58D68, &unk_21DC0C060);
          sub_21D0CF7E0(v99, &qword_27CE58D68, &unk_21DC0C060);
          (*(v95 + 8))(v100, v96);
          v55(v58, v21);
          v55(v82, v21);
          v44 = 0;
        }

        else
        {
          v78 = v77;
          sub_21D46D038(v73, v74);
          if ((*(v76 + 48))(v74, 1, v75) == 1)
          {

            sub_21D0CF7E0(v86, &qword_27CE58D68, &unk_21DC0C060);
            sub_21D0CF7E0(v99, &qword_27CE58D68, &unk_21DC0C060);
            (*(v95 + 8))(v100, v96);
            v55(v58, v21);
            v55(v82, v21);
            v44 = 1;
          }

          else
          {

            if (v78)
            {
              v44 = 6;
            }

            else
            {
              v44 = 4;
            }

            sub_21D0CF7E0(v86, &qword_27CE58D68, &unk_21DC0C060);
            sub_21D0CF7E0(v99, &qword_27CE58D68, &unk_21DC0C060);
            (*(v95 + 8))(v100, v96);
            v55(v58, v21);
            v55(v82, v21);
            sub_21D87B178(v74, type metadata accessor for TTRTemplatePublicLinkData.StateToDisplay);
          }
        }

        v62 = v73;
        goto LABEL_29;
      }

      v49(v63, v21);
      v45 = v102;
    }

    v65 = v81;
    v66 = [v81 lastModifiedDate];
    sub_21DBF55FC();

    v67 = [v65 creationDate];
    v68 = v88;
    sub_21DBF55FC();

    LOBYTE(v67) = sub_21DBF55CC();
    v49(v68, v21);
    v49(v30, v21);
    v55 = v49;
    if (v67)
    {
      v69 = [v65 lastModifiedDate];
      sub_21DBF55FC();

      v70 = 1;
    }

    else
    {
      v71 = [v65 creationDate];
      sub_21DBF55FC();

      v70 = 0;
    }

    goto LABEL_20;
  }

  if (v38 == *MEMORY[0x277D459C8])
  {
    v43 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
    v44 = 1;
    v45 = v102;
    (*(*(v43 - 8) + 56))(v102, 1, 1, v43);

    sub_21D0CF7E0(a2, &qword_27CE58D68, &unk_21DC0C060);
LABEL_30:
    result = type metadata accessor for TTRTemplatePublicLinkData(0);
    *(v45 + *(result + 20)) = v44;
    return result;
  }

  if (v38 == *MEMORY[0x277D459D0])
  {

    v59 = type metadata accessor for TTRTemplatePublicLinkData.CreatedStateDescription(0);
    v45 = v102;
    (*(*(v59 - 8) + 56))(v102, 1, 1, v59);
    sub_21D0CF7E0(a2, &qword_27CE58D68, &unk_21DC0C060);
    v44 = 0;
    goto LABEL_30;
  }

  result = sub_21DBFC63C();
  __break(1u);
  return result;
}