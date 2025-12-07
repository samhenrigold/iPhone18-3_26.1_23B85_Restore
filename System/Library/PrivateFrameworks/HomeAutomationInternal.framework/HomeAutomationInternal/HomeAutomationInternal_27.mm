uint64_t sub_252B1E408(uint64_t a1)
{
  result = sub_252E34164();
  if (v2 <= 0x3F)
  {
    result = sub_252E33764();
    if (v3 <= 0x3F)
    {
      result = sub_252B1E4B8();
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for AutomateHomeIntent();
        if (v5 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

unint64_t sub_252B1E4B8()
{
  result = qword_27F543428;
  if (!qword_27F543428)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F543428);
  }

  return result;
}

uint64_t sub_252B1E504@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for HomeAutomationSnippetModels(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_252B1F32C(a1, a2, type metadata accessor for AutomationSnippetModel);
      v5 = type metadata accessor for AutomationSnippetModel(0);
    }

    else if (EnumCaseMultiPayload == 4)
    {
      sub_252B1F32C(a1, a2, type metadata accessor for CallToActionSnippetModel);
      v5 = type metadata accessor for CallToActionSnippetModel(0);
    }

    else
    {
      sub_252B1F32C(a1, a2, type metadata accessor for TemperatureSnippetModel);
      v5 = type metadata accessor for TemperatureSnippetModel(0);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_252B1F32C(a1, a2, type metadata accessor for ConfirmationSnippetModel);
      v5 = type metadata accessor for ConfirmationSnippetModel(0);
    }

    else
    {
      sub_252B1F32C(a1, a2, type metadata accessor for CompletionSnippetModel);
      v5 = type metadata accessor for CompletionSnippetModel(0);
    }
  }

  else
  {
    sub_252B1F32C(a1, a2, type metadata accessor for DisambiguationSnippetModel);
    v5 = type metadata accessor for DisambiguationSnippetModel(0);
  }

  (*(*(v5 - 8) + 56))(a2, 0, 1);
  type metadata accessor for SnippetResponseViewIds(0);

  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_252B1E6EC()
{
  v1 = type metadata accessor for SnippetResponseViewIds(0);
  v2 = MEMORY[0x28223BE20](v1);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = v25 - v5;
  v7 = sub_252B1E9C8();
  if (v8)
  {
    v9 = v7;
    v10 = v8;
    v25[0] = 0;
    v25[1] = 0xE000000000000000;
    sub_252B1F268(v0, v6);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v12 = "ompletionResponse";
    v13 = "onfirmationResponse";
    v14 = "isambiguationResponse";
    v15 = 0xD000000000000023;
    if (EnumCaseMultiPayload != 4)
    {
      v15 = 0xD000000000000025;
      v14 = "HomeAutomation#CallToAction";
    }

    if (EnumCaseMultiPayload == 3)
    {
      v15 = 0xD000000000000022;
    }

    else
    {
      v13 = v14;
    }

    v16 = "e snippet result: ";
    v17 = 0xD00000000000001BLL;
    if (EnumCaseMultiPayload != 1)
    {
      v17 = 0xD000000000000021;
      v16 = "emperatureResponse";
    }

    if (EnumCaseMultiPayload)
    {
      v12 = v16;
    }

    else
    {
      v17 = 0xD000000000000021;
    }

    if (EnumCaseMultiPayload <= 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = v15;
    }

    if (EnumCaseMultiPayload <= 2)
    {
      v19 = v12;
    }

    else
    {
      v19 = v13;
    }

    sub_252B1F2CC(v6, type metadata accessor for SnippetResponseViewIds);
    MEMORY[0x2530AD570](v18, v19 | 0x8000000000000000);

    MEMORY[0x2530AD570](v9, v10);

    return v25[0];
  }

  else
  {
    sub_252B1F268(v0, v4);
    v21 = swift_getEnumCaseMultiPayload();
    v22 = 0xD000000000000023;
    if (v21 != 4)
    {
      v22 = 0xD000000000000025;
    }

    if (v21 == 3)
    {
      v22 = 0xD000000000000022;
    }

    v23 = 0xD00000000000001BLL;
    if (v21 != 1)
    {
      v23 = 0xD000000000000021;
    }

    if (!v21)
    {
      v23 = 0xD000000000000021;
    }

    if (v21 <= 2)
    {
      v20 = v23;
    }

    else
    {
      v20 = v22;
    }

    sub_252B1F2CC(v4, type metadata accessor for SnippetResponseViewIds);
  }

  return v20;
}

uint64_t type metadata accessor for SnippetResponseViewIds(uint64_t a1)
{
  result = qword_27F543458;
  if (!qword_27F543458)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_252B1E9C8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543430, &qword_252E4BA90);
  v1 = MEMORY[0x28223BE20](v0 - 8);
  v60 = &v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v59 = &v56 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543438, &qword_252E4BA98);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v58 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v57 = &v56 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543440, &qword_252E4BAA0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v56 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543448, &unk_252E4BAA8);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v56 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542768, &qword_252E46530);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v56 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543450, &qword_252E4BAB8);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v29 = &v56 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = &v56 - v30;
  v32 = type metadata accessor for SnippetResponseViewIds(0);
  MEMORY[0x28223BE20](v32);
  v34 = &v56 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252B1F268(v61, v34);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v45 = &qword_27F543430;
      v46 = &qword_252E4BA90;
      v47 = v59;
      sub_25293DDF0(v34, v59, &qword_27F543430, &qword_252E4BA90);
      v48 = v60;
      sub_252938414(v47, v60, &qword_27F543430, &qword_252E4BA90);
      v49 = type metadata accessor for TemperatureSnippetModel(0);
      if ((*(*(v49 - 8) + 48))(v48, 1, v49) == 1)
      {
        sub_25293847C(v47, &qword_27F543430, &qword_252E4BA90);
        v41 = v48;
LABEL_17:
        v42 = v45;
        v43 = v46;
        goto LABEL_18;
      }

      v52 = TemperatureSnippetModel.stringId.getter();
      sub_25293847C(v47, &qword_27F543430, &qword_252E4BA90);
      v53 = type metadata accessor for TemperatureSnippetModel;
      v54 = v48;
      goto LABEL_24;
    }

    if (EnumCaseMultiPayload == 4)
    {
      sub_25293DDF0(v34, v25, &qword_27F542768, &qword_252E46530);
      sub_252938414(v25, v23, &qword_27F542768, &qword_252E46530);
      v40 = type metadata accessor for ConfirmationSnippetModel(0);
      if ((*(*(v40 - 8) + 48))(v23, 1, v40) != 1)
      {
        v55 = ConfirmationSnippetModel.stringId.getter();
        sub_25293847C(v25, &qword_27F542768, &qword_252E46530);
        sub_252B1F2CC(v23, type metadata accessor for ConfirmationSnippetModel);
        return v55;
      }

      sub_25293847C(v25, &qword_27F542768, &qword_252E46530);
      v41 = v23;
      v42 = &qword_27F542768;
      v43 = &qword_252E46530;
LABEL_18:
      sub_25293847C(v41, v42, v43);
      return 0;
    }

    v45 = &qword_27F543440;
    v46 = &qword_252E4BAA0;
    sub_25293DDF0(v34, v13, &qword_27F543440, &qword_252E4BAA0);
    sub_252938414(v13, v11, &qword_27F543440, &qword_252E4BAA0);
    v51 = type metadata accessor for DisambiguationSnippetModel(0);
    if ((*(*(v51 - 8) + 48))(v11, 1, v51) == 1)
    {
      sub_25293847C(v13, &qword_27F543440, &qword_252E4BAA0);
      v41 = v11;
      goto LABEL_17;
    }

    v52 = DisambiguationSnippetModel.stringId.getter();
    sub_25293847C(v13, &qword_27F543440, &qword_252E4BAA0);
    v53 = type metadata accessor for DisambiguationSnippetModel;
    v54 = v11;
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v36 = v57;
        sub_25293DDF0(v34, v57, &qword_27F543438, &qword_252E4BA98);
        v37 = v58;
        sub_252938414(v36, v58, &qword_27F543438, &qword_252E4BA98);
        v38 = type metadata accessor for CallToActionSnippetModel(0);
        (*(*(v38 - 8) + 48))(v37, 1, v38);
        sub_25293847C(v36, &qword_27F543438, &qword_252E4BA98);
        sub_25293847C(v37, &qword_27F543438, &qword_252E4BA98);
        return 0;
      }

      v45 = &qword_27F543448;
      v46 = &unk_252E4BAA8;
      sub_25293DDF0(v34, v19, &qword_27F543448, &unk_252E4BAA8);
      sub_252938414(v19, v17, &qword_27F543448, &unk_252E4BAA8);
      v50 = type metadata accessor for CompletionSnippetModel(0);
      if ((*(*(v50 - 8) + 48))(v17, 1, v50) == 1)
      {
        sub_25293847C(v19, &qword_27F543448, &unk_252E4BAA8);
        v41 = v17;
        goto LABEL_17;
      }

      v52 = CompletionSnippetModel.stringId.getter();
      sub_25293847C(v19, &qword_27F543448, &unk_252E4BAA8);
      v53 = type metadata accessor for CompletionSnippetModel;
      v54 = v17;
      goto LABEL_24;
    }

    sub_25293DDF0(v34, v31, &qword_27F543450, &qword_252E4BAB8);
    sub_252938414(v31, v29, &qword_27F543450, &qword_252E4BAB8);
    v44 = type metadata accessor for AutomationSnippetModel(0);
    if ((*(*(v44 - 8) + 48))(v29, 1, v44) == 1)
    {
      sub_25293847C(v31, &qword_27F543450, &qword_252E4BAB8);
      v41 = v29;
      v42 = &qword_27F543450;
      v43 = &qword_252E4BAB8;
      goto LABEL_18;
    }

    v52 = AutomationSnippetModel.stringId.getter();
    sub_25293847C(v31, &qword_27F543450, &qword_252E4BAB8);
    v53 = type metadata accessor for AutomationSnippetModel;
    v54 = v29;
  }

LABEL_24:
  sub_252B1F2CC(v54, v53);
  return v52;
}

uint64_t sub_252B1F268(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SnippetResponseViewIds(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_252B1F2CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_252B1F32C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_252B1F394(uint64_t a1)
{
  sub_252B1F500(319, &qword_27F543468, type metadata accessor for AutomationSnippetModel);
  if (v1 <= 0x3F)
  {
    sub_252B1F500(319, &qword_27F543470, type metadata accessor for CallToActionSnippetModel);
    if (v2 <= 0x3F)
    {
      sub_252B1F500(319, &qword_27F543478, type metadata accessor for CompletionSnippetModel);
      if (v3 <= 0x3F)
      {
        sub_252B1F500(319, &qword_27F543480, type metadata accessor for TemperatureSnippetModel);
        if (v4 <= 0x3F)
        {
          sub_252B1F500(319, &qword_27F543488, type metadata accessor for ConfirmationSnippetModel);
          if (v5 <= 0x3F)
          {
            sub_252B1F500(319, &qword_27F543490, type metadata accessor for DisambiguationSnippetModel);
            if (v6 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_252B1F500(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_252E37734();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_252B1F554(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_49;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v33 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v34 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v29 = isUniquelyReferenced_nonNull_bridgeObject;
    v32 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x277D84F90];
    v4 = &qword_27F541850;
    v30 = v1;
    while (1)
    {
      if (v34)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x2530ADF00](v2, v29);
      }

      else
      {
        if (v2 >= *(v33 + 16))
        {
          goto LABEL_44;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v32 + 8 * v2);
      }

      v5 = isUniquelyReferenced_nonNull_bridgeObject;
      v6 = __OFADD__(v2++, 1);
      if (v6)
      {
        break;
      }

      v7 = [isUniquelyReferenced_nonNull_bridgeObject taskResponses];
      if (v7)
      {
        v8 = v7;
        type metadata accessor for HomeUserTaskResponse();
        v9 = sub_252E37264();

        v5 = v8;
      }

      else
      {
        v9 = MEMORY[0x277D84F90];
      }

      v10 = v9 >> 62;
      if (v9 >> 62)
      {
        v11 = sub_252E378C4();
      }

      else
      {
        v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v12 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v13 = isUniquelyReferenced_nonNull_bridgeObject + v11;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v11))
        {
LABEL_42:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v13 = isUniquelyReferenced_nonNull_bridgeObject + v11;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v11))
        {
          goto LABEL_42;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (!isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v12)
        {
          goto LABEL_24;
        }

LABEL_23:
        sub_252E378C4();
        goto LABEL_24;
      }

      if (v12)
      {
        goto LABEL_23;
      }

      v14 = v3 & 0xFFFFFFFFFFFFFF8;
      if (v13 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v37 = v3;
        goto LABEL_25;
      }

LABEL_24:
      isUniquelyReferenced_nonNull_bridgeObject = sub_252E37A54();
      v37 = isUniquelyReferenced_nonNull_bridgeObject;
      v14 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_25:
      v15 = *(v14 + 16);
      v16 = *(v14 + 24);
      if (v10)
      {
        v18 = v14;
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v14 = v18;
        v17 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_29:
          if (((v16 >> 1) - v15) < v11)
          {
            goto LABEL_46;
          }

          v35 = v2;
          v19 = v14 + 8 * v15 + 32;
          v31 = v14;
          if (v10)
          {
            if (v17 < 1)
            {
              goto LABEL_48;
            }

            sub_252B21AB4();
            for (i = 0; i != v17; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(v4, &qword_252E43DC0);
              v21 = sub_2529FBD80(v36, i, v9);
              v23 = v4;
              v24 = *v22;
              (v21)(v36, 0);
              *(v19 + 8 * i) = v24;
              v4 = v23;
            }
          }

          else
          {
            type metadata accessor for HomeUserTaskResponse();
            swift_arrayInitWithCopy();
          }

          v2 = v35;
          v1 = v30;
          v3 = v37;
          if (v11 >= 1)
          {
            v25 = *(v31 + 16);
            v6 = __OFADD__(v25, v11);
            v26 = v25 + v11;
            if (v6)
            {
              goto LABEL_47;
            }

            *(v31 + 16) = v26;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v17 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v17)
        {
          goto LABEL_29;
        }
      }

      v3 = v37;
      if (v11 > 0)
      {
        goto LABEL_45;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_44:
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
    v27 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_252E378C4();
    isUniquelyReferenced_nonNull_bridgeObject = v27;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_252B1F8D4(unint64_t a1)
{
  v34 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_19:
    v2 = sub_252E378C4();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x2530ADF00](v3, a1);
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v4 = *(a1 + 8 * v3 + 32);
        }

        v5 = v4;
        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          __break(1u);
LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

        v7 = [v4 isExcludeFilter];
        sub_25293F638(0, &qword_27F5404D8, 0x277CCABB0);
        v8 = sub_252E37664();
        v9 = v8;
        if (v7)
        {
          v10 = sub_252E37694();

          if (v10)
          {
            sub_252E37A94();
            sub_252E37AC4();
            sub_252E37AD4();
            sub_252E37AA4();
            goto LABEL_6;
          }
        }

        else
        {
        }

LABEL_6:
        ++v3;
        if (v6 == v2)
        {
          v11 = v34;
          if ((v34 & 0x8000000000000000) == 0)
          {
            goto LABEL_21;
          }

          goto LABEL_43;
        }
      }
    }
  }

  v11 = MEMORY[0x277D84F90];
  if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
  {
    goto LABEL_43;
  }

LABEL_21:
  if ((v11 & 0x4000000000000000) != 0)
  {
LABEL_43:
    type metadata accessor for HomeFilter();

    v12 = sub_252E37B14();
  }

  else
  {

    sub_252E37DD4();
    type metadata accessor for HomeFilter();
    v12 = v11;
  }

  if (qword_27F53F4E8 != -1)
  {
    goto LABEL_42;
  }

  while (1)
  {
    v13 = sub_252E36AD4();
    __swift_project_value_buffer(v13, qword_27F544D60);
    sub_252CC3D90(0xD000000000000036, 0x8000000252E7CEA0, 0xD000000000000084, 0x8000000252E7CEE0);
    KeyPath = swift_getKeyPath();
    v15 = sub_2529304DC(KeyPath, v12);

    if (v15)
    {

      v16 = 3;
      goto LABEL_47;
    }

    v17 = swift_getKeyPath();
    v18 = sub_2529304DC(v17, v12);

    if (v18)
    {

      v16 = 2;
      goto LABEL_47;
    }

    if (v12 >> 62)
    {
      break;
    }

    v19 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v19)
    {
      goto LABEL_45;
    }

LABEL_30:
    v20 = 0;
    while (1)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x2530ADF00](v20, v12);
      }

      else
      {
        if (v20 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_41;
        }

        v21 = *(v12 + 8 * v20 + 32);
      }

      v22 = v21;
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      v24 = [v21 zoneName];
      if (v24)
      {
        v25 = v24;

        v16 = 1;
        goto LABEL_47;
      }

      ++v20;
      if (v23 == v19)
      {
        goto LABEL_45;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    swift_once();
  }

  v19 = sub_252E378C4();
  if (v19)
  {
    goto LABEL_30;
  }

LABEL_45:
  v26 = swift_getKeyPath();
  v27 = sub_2529304DC(v26, v12);

  if ((v27 & 1) == 0)
  {
    sub_252CC3D90(0xD00000000000001BLL, 0x8000000252E7CFA0, 0xD000000000000084, 0x8000000252E7CEE0);
    return 4;
  }

  v16 = 0;
LABEL_47:
  sub_252E379F4();

  v28 = 1701670760;
  v29 = 0xE400000000000000;
  v30 = 1836019570;
  if (v16 != 2)
  {
    v30 = 0x70756F7267;
    v29 = 0xE500000000000000;
  }

  if (v16)
  {
    v28 = 1701736314;
  }

  if (v16 <= 1)
  {
    v31 = v28;
  }

  else
  {
    v31 = v30;
  }

  if (v16 <= 1)
  {
    v32 = 0xE400000000000000;
  }

  else
  {
    v32 = v29;
  }

  MEMORY[0x2530AD570](v31, v32);

  sub_252CC3D90(0xD000000000000024, 0x8000000252E7CF70, 0xD000000000000084, 0x8000000252E7CEE0);

  return v16;
}

id sub_252B1FDB0(id a1)
{
  v2 = v1;
  v4 = [v1 entityResponses];
  v5 = MEMORY[0x277D84F90];
  v49 = a1;
  if (!v4)
  {
    v7 = 0;
    goto LABEL_46;
  }

  v6 = v4;
  type metadata accessor for HomeEntityResponse();
  v7 = sub_252E37264();

  v58 = v5;
  if (v7 >> 62)
  {
    goto LABEL_100;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_252E378C4())
  {
    v9 = MEMORY[0x277D84F90];
    if (i)
    {
      v46 = v2;
      v47 = v7;
      v2 = 0;
      v54 = v7 & 0xFFFFFFFFFFFFFF8;
      v56 = v7 & 0xC000000000000001;
      v50 = i;
      v52 = v7 + 32;
      v7 = &off_279711000;
      while (1)
      {
        if (v56)
        {
          v10 = MEMORY[0x2530ADF00](v2, v47);
        }

        else
        {
          if (v2 >= *(v54 + 16))
          {
            goto LABEL_95;
          }

          v10 = *(v52 + 8 * v2);
        }

        v11 = v10;
        v12 = __OFADD__(v2++, 1);
        if (v12)
        {
          goto LABEL_94;
        }

        v13 = [v10 taskResponses];
        if (v13)
        {
          v14 = v13;
          type metadata accessor for HomeUserTaskResponse();
          v15 = sub_252E37264();

          v5 = (v15 & 0xFFFFFFFFFFFFFF8);
          if (v15 >> 62)
          {
            v16 = sub_252E378C4();
          }

          else
          {
            v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v17 = 0;
          while (1)
          {
            if (v16 == v17)
            {

              i = v50;
              goto LABEL_7;
            }

            if ((v15 & 0xC000000000000001) != 0)
            {
              v18 = MEMORY[0x2530ADF00](v17, v15);
            }

            else
            {
              if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_89;
              }

              v18 = *(v15 + 8 * v17 + 32);
            }

            v19 = v18;
            if (__OFADD__(v17, 1))
            {
              break;
            }

            a1 = [v18 taskOutcome];

            ++v17;
            if (a1 == 1)
            {

              sub_252E37A94();
              a1 = *(v58 + 16);
              sub_252E37AC4();
              sub_252E37AD4();
              sub_252E37AA4();
              i = v50;
              goto LABEL_7;
            }
          }

          __break(1u);
LABEL_89:
          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
          goto LABEL_92;
        }

LABEL_7:
        if (v2 == i)
        {
          v20 = v58;
          a1 = v49;
          v5 = MEMORY[0x277D84F90];
          v2 = v46;
          v9 = MEMORY[0x277D84F90];
          goto LABEL_30;
        }
      }
    }

    v20 = MEMORY[0x277D84F90];
LABEL_30:

    v58 = v9;
    if ((v20 & 0x8000000000000000) != 0 || (v20 & 0x4000000000000000) != 0)
    {
      v7 = sub_252E378C4();
      if (v7)
      {
LABEL_33:
        v21 = v2;
        v22 = v5;
        v2 = 0;
        a1 = (v20 & 0xC000000000000001);
        while (1)
        {
          if (a1)
          {
            v23 = MEMORY[0x2530ADF00](v2, v20);
          }

          else
          {
            if (v2 >= *(v20 + 16))
            {
              goto LABEL_93;
            }

            v23 = *(v20 + 8 * v2 + 32);
          }

          v5 = (v2 + 1);
          if (__OFADD__(v2, 1))
          {
            break;
          }

          MEMORY[0x2530AD700](v23);
          if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_252E372A4();
          }

          sub_252E372D4();
          ++v2;
          if (v5 == v7)
          {
            a1 = v49;
            v5 = v22;
            v2 = v21;
            goto LABEL_43;
          }
        }

LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
        goto LABEL_96;
      }
    }

    else
    {
      v7 = *(v20 + 16);
      if (v7)
      {
        goto LABEL_33;
      }
    }

LABEL_43:

    if (v9 >> 62)
    {
      v7 = sub_252E378C4();
    }

    else
    {
      v7 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

LABEL_46:
    v24 = [v2 entityResponses];
    if (!v24)
    {
      j = 0;
      goto LABEL_110;
    }

    v25 = v24;
    type metadata accessor for HomeEntityResponse();
    v26 = sub_252E37264();

    v58 = v5;
    v27 = v26;
    if (v26 >> 62)
    {
      v28 = sub_252E378C4();
      v27 = v26;
    }

    else
    {
      v28 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v48 = v7;
    a1 = MEMORY[0x277D84F90];
    if (v28)
    {
      v2 = 0;
      v55 = v27 & 0xFFFFFFFFFFFFFF8;
      v57 = v27 & 0xC000000000000001;
      v46 = v27;
      v51 = v28;
      v53 = v27 + 32;
      v5 = &off_279711000;
      while (1)
      {
        if (v57)
        {
          v29 = MEMORY[0x2530ADF00](v2, v46);
        }

        else
        {
          if (v2 >= *(v55 + 16))
          {
            goto LABEL_99;
          }

          v29 = *(v53 + 8 * v2);
        }

        v30 = v29;
        v12 = __OFADD__(v2++, 1);
        if (v12)
        {
          goto LABEL_98;
        }

        v31 = [v29 taskResponses];
        if (v31)
        {
          v32 = v31;
          type metadata accessor for HomeUserTaskResponse();
          v33 = sub_252E37264();

          v7 = v33 & 0xFFFFFFFFFFFFFF8;
          if (v33 >> 62)
          {
            v34 = sub_252E378C4();
          }

          else
          {
            v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v35 = 0;
          do
          {
            if (v34 == v35)
            {

              v28 = v51;
              goto LABEL_52;
            }

            if ((v33 & 0xC000000000000001) != 0)
            {
              v36 = MEMORY[0x2530ADF00](v35, v33);
            }

            else
            {
              if (v35 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_91;
              }

              v36 = *(v33 + 8 * v35 + 32);
            }

            v37 = v36;
            if (__OFADD__(v35, 1))
            {
              goto LABEL_90;
            }

            a1 = [v36 taskOutcome];

            ++v35;
          }

          while (a1 != 1);

          v28 = v51;
        }

        else
        {
LABEL_52:
          sub_252E37A94();
          a1 = *(v58 + 16);
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
        }

        if (v2 == v28)
        {
          v39 = v58;
          a1 = MEMORY[0x277D84F90];
          goto LABEL_75;
        }
      }
    }

    v39 = MEMORY[0x277D84F90];
LABEL_75:

    v58 = a1;
    if ((v39 & 0x8000000000000000) == 0 && (v39 & 0x4000000000000000) == 0)
    {
      v5 = *(v39 + 16);
      v7 = v48;
      a1 = v49;
      if (!v5)
      {
        break;
      }

      goto LABEL_78;
    }

    v5 = sub_252E378C4();
    v7 = v48;
    a1 = v49;
    if (!v5)
    {
      break;
    }

LABEL_78:
    v2 = 0;
    a1 = (v39 & 0xC000000000000001);
    while (1)
    {
      if (a1)
      {
        v40 = MEMORY[0x2530ADF00](v2, v39);
      }

      else
      {
        if (v2 >= *(v39 + 16))
        {
          goto LABEL_97;
        }

        v40 = *(v39 + 8 * v2 + 32);
      }

      v7 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      MEMORY[0x2530AD700](v40);
      if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();
      ++v2;
      if (v7 == v5)
      {
        v41 = v58;
        v7 = v48;
        a1 = v49;
        goto LABEL_107;
      }
    }

LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    ;
  }

  v41 = MEMORY[0x277D84F90];
LABEL_107:

  if (v41 >> 62)
  {
    goto LABEL_120;
  }

  for (j = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10); ; j = sub_252E378C4())
  {

LABEL_110:
    v12 = __OFADD__(v7, j);
    v42 = v7 + j;
    if (!v12)
    {
      break;
    }

    __break(1u);
LABEL_120:
    ;
  }

  sub_252C77A20(v7);
  sub_252C77358(v42);
  if (v7)
  {
    v43 = a1;
    if (v7 >= v42)
    {
      v44 = 1;
    }

    else
    {
      v44 = 3;
    }
  }

  else
  {
    v43 = a1;
    v44 = 2;
  }

  return [v43 setHomeAutomationRequestOutcome_];
}

void *sub_252B2053C(void *a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x277D57588]) init];
  if (!v3)
  {
    if (qword_27F53F530 != -1)
    {
      swift_once();
    }

    v13 = sub_252E36AD4();
    __swift_project_value_buffer(v13, qword_27F544E38);
    sub_252CC4050(0xD00000000000002ELL, 0x8000000252E7A5D0, 0xD000000000000076, 0x8000000252E7CDF0, 0xD000000000000028, 0x8000000252E7CE70, 68);
    return 0;
  }

  v4 = v3;
  v100 = a1;
  v5 = [a1 filters];
  v101 = v4;
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();

    v102 = MEMORY[0x277D84F90];
    if (v7 >> 62)
    {
      goto LABEL_21;
    }

    for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v9 = v1;
      v10 = 0;
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x2530ADF00](v10, v7);
        }

        else
        {
          if (v10 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_20;
          }

          v11 = *(v7 + 8 * v10 + 32);
        }

        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        MEMORY[0x2530AD700](v11);
        if (*((v102 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v102 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
        }

        v1 = &v102;
        sub_252E372D4();
        ++v10;
        if (v12 == i)
        {
          v15 = v102;
          v1 = v9;
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      ;
    }

    v15 = MEMORY[0x277D84F90];
LABEL_23:

    v17 = sub_252B1F8D4(v15);

    v16 = dword_252E4BB84[v17];
    v4 = v101;
  }

  else
  {
    v16 = 0;
  }

  [v4 setSmallestTargetedContainer_];
  v18 = sub_252C2F554();
  if (v18 >> 62)
  {
    goto LABEL_110;
  }

  v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_26:

  if (!v19)
  {
    v27 = [v1 entityResponses];
    if (!v27)
    {
      v14 = v101;
      goto LABEL_82;
    }

    v28 = v27;
    type metadata accessor for HomeEntityResponse();
    v29 = sub_252E37264();

    if (v29 >> 62)
    {
      v30 = sub_252E378C4();
    }

    else
    {
      v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v99 = v1;
    v31 = MEMORY[0x277D84F90];
    if (v30)
    {
      v32 = 0;
      v1 = (v29 & 0xFFFFFFFFFFFFFF8);
      do
      {
        if ((v29 & 0xC000000000000001) != 0)
        {
          v33 = MEMORY[0x2530ADF00](v32, v29);
        }

        else
        {
          if (v32 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_105;
          }

          v33 = *(v29 + 8 * v32 + 32);
        }

        v34 = v33;
        v35 = v32 + 1;
        if (__OFADD__(v32, 1))
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
          v19 = sub_252E378C4();
          goto LABEL_26;
        }

        v36 = [v33 entity];
        if (v36 && (v37 = v36, v38 = [v36 deviceTypes], v37, v38))
        {
          v39 = sub_252E37264();

          v34 = v38;
        }

        else
        {
          v39 = &unk_2864A8578;
        }

        v40 = v39[2];
        v41 = *(v31 + 2);
        v42 = v41 + v40;
        if (__OFADD__(v41, v40))
        {
          goto LABEL_106;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (isUniquelyReferenced_nonNull_native && v42 <= *(v31 + 3) >> 1)
        {
          if (v39[2])
          {
            goto LABEL_52;
          }
        }

        else
        {
          if (v41 <= v42)
          {
            v44 = v41 + v40;
          }

          else
          {
            v44 = v41;
          }

          v31 = sub_2529F8104(isUniquelyReferenced_nonNull_native, v44, 1, v31);
          if (v39[2])
          {
LABEL_52:
            v45 = *(v31 + 2);
            if ((*(v31 + 3) >> 1) - v45 < v40)
            {
              goto LABEL_108;
            }

            memcpy(&v31[8 * v45 + 32], v39 + 4, 8 * v40);

            if (v40)
            {
              v46 = *(v31 + 2);
              v47 = __OFADD__(v46, v40);
              v48 = v46 + v40;
              if (v47)
              {
                goto LABEL_109;
              }

              *(v31 + 2) = v48;
            }

            goto LABEL_34;
          }
        }

        if (v40)
        {
          goto LABEL_107;
        }

LABEL_34:
        ++v32;
      }

      while (v35 != v30);
    }

    v49 = *(v31 + 2);
    if (v49)
    {
      v102 = MEMORY[0x277D84F90];
      sub_2529AA420(0, v49, 0);
      v50 = 32;
      v51 = v102;
      do
      {
        v52 = sub_252E25FC4(*&v31[v50]);
        if (v53)
        {
          v54 = 0;
        }

        else
        {
          v54 = v52;
        }

        v102 = v51;
        v56 = *(v51 + 2);
        v55 = *(v51 + 3);
        if (v56 >= v55 >> 1)
        {
          sub_2529AA420((v55 > 1), v56 + 1, 1);
          v51 = v102;
        }

        *(v51 + 2) = v56 + 1;
        *&v51[8 * v56 + 32] = v54;
        v50 += 8;
        --v49;
      }

      while (v49);

      v57 = *(v51 + 2);
      if (v57)
      {
        goto LABEL_68;
      }
    }

    else
    {

      v51 = MEMORY[0x277D84F90];
      v57 = *(MEMORY[0x277D84F90] + 16);
      if (v57)
      {
LABEL_68:
        v58 = (v51 + 32);
        v59 = MEMORY[0x277D84F90];
        do
        {
          v60 = *v58++;
          v61 = HomeDeviceType.description.getter(v60);
          v62 = v61;
          v64 = v63;
          v65 = HIBYTE(v63) & 0xF;
          if ((v63 & 0x2000000000000000) == 0)
          {
            v65 = v61 & 0xFFFFFFFFFFFFLL;
          }

          if (v65)
          {
            sub_252E37174();
            v66 = sub_252E36FC4();
            v68 = v67;

            v62 = sub_252AD52A0(0xFuLL, 15, v66, v68, v62, v64);
            v70 = v69;

            v64 = v70;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v59 = sub_2529F7A80(0, *(v59 + 2) + 1, 1, v59);
          }

          v72 = *(v59 + 2);
          v71 = *(v59 + 3);
          if (v72 >= v71 >> 1)
          {
            v59 = sub_2529F7A80((v71 > 1), v72 + 1, 1, v59);
          }

          *(v59 + 2) = v72 + 1;
          v73 = &v59[16 * v72];
          *(v73 + 4) = v62;
          *(v73 + 5) = v64;
          --v57;
        }

        while (v57);
        goto LABEL_81;
      }
    }

    v59 = MEMORY[0x277D84F90];
LABEL_81:

    v74 = sub_252DF88E4(v59);

    v102 = v74;

    sub_252AC841C(&v102);

    v14 = v101;
    v1 = v99;
    goto LABEL_82;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401B0, &qword_252E41DB0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_252E3C290;
  sub_252E37174();
  v21 = sub_252E36FC4();
  v23 = v22;

  v24 = sub_252AD52A0(0xFuLL, 15, v21, v23, 0x656E656373uLL, 0xE500000000000000);
  v26 = v25;

  *(v20 + 32) = v24;
  *(v20 + 40) = v26;
  v14 = v101;
LABEL_82:
  v75 = sub_252E37254();

  [v14 setTargetedEntityTypes_];

  v76 = [v1 entityResponses];
  if (!v76)
  {
    return v14;
  }

  v77 = v76;
  type metadata accessor for HomeEntityResponse();
  v78 = sub_252E37264();

  if (v78 >> 62)
  {
    if (!sub_252E378C4())
    {
      goto LABEL_116;
    }
  }

  else if (!*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_116:

    return v14;
  }

  if ((v78 & 0xC000000000000001) != 0)
  {
    v79 = MEMORY[0x2530ADF00](0, v78);
  }

  else
  {
    if (!*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_115;
    }

    v79 = *(v78 + 32);
  }

  v77 = v79;

  v80 = [v77 taskResponses];

  if (!v80)
  {
    return v14;
  }

  type metadata accessor for HomeUserTaskResponse();
  v78 = sub_252E37264();

  if (!(v78 >> 62))
  {
    if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_91;
    }

    goto LABEL_116;
  }

LABEL_115:
  if (!sub_252E378C4())
  {
    goto LABEL_116;
  }

LABEL_91:
  if ((v78 & 0xC000000000000001) != 0)
  {
    v81 = MEMORY[0x2530ADF00](0, v78);
LABEL_94:
    v82 = v81;

    v83 = [v82 userTask];

    if (v83)
    {
      v84 = [v100 userTask];
      if (v84 && (v85 = v84, v86 = [v84 value], v85, v86) && (v87 = objc_msgSend(v86, sel_cleaningJob), v86, v87))
      {
        sub_252DB7E0C(v87);
        v88 = sub_252E36F04();

        [v14 setTargetAttribute_];
      }

      else
      {
        HomeAttributeType.description.getter([v83 attribute]);
        v89 = sub_252E36FA4();
        v91 = v90;

        v92 = HIBYTE(v91) & 0xF;
        if ((v91 & 0x2000000000000000) == 0)
        {
          v92 = v89 & 0xFFFFFFFFFFFFLL;
        }

        if (v92)
        {
          sub_252E37174();
          v93 = sub_252E36FC4();
          v95 = v94;

          v96 = v93;
          v14 = v101;
          sub_252AD52A0(0xFuLL, 15, v96, v95, v89, v91);
        }

        v97 = sub_252E36F04();

        [v14 setTargetAttribute_];
      }
    }

    return v14;
  }

  if (*((v78 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v81 = *(v78 + 32);
    goto LABEL_94;
  }

  __break(1u);

  __break(1u);
  return result;
}

void *sub_252B21010(void *a1)
{
  result = sub_252B21778();
  if (!result)
  {
    return result;
  }

  v5 = result;
  v6 = [result homeAutomationRequests];
  if (!v6)
  {

    return 0;
  }

  v7 = v6;
  sub_25293F638(0, &qword_27F5418B8, 0x277D57580);
  v8 = sub_252E37264();

  if (!(v8 >> 62))
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

  if (!sub_252E378C4())
  {
LABEL_25:

    return 0;
  }

LABEL_5:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v7 = v5;
    v9 = MEMORY[0x2530ADF00](0, v8);
  }

  else
  {
    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_29;
    }

    v7 = v5;
    v9 = *(v8 + 32);
  }

  v54 = v9;

  v2 = &off_279711000;
  v10 = [v1 entityResponses];
  if (!v10)
  {
    goto LABEL_35;
  }

  v11 = v10;
  type metadata accessor for HomeEntityResponse();
  v8 = sub_252E37264();

  if (v8 >> 62)
  {
LABEL_29:
    if (!sub_252E378C4())
    {
      goto LABEL_34;
    }

    goto LABEL_11;
  }

  if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_34;
  }

LABEL_11:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x2530ADF00](0, v8);
  }

  else
  {
    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_33;
    }

    v12 = *(v8 + 32);
  }

  v13 = v12;

  v14 = [v13 taskResponses];

  if (!v14)
  {
    goto LABEL_35;
  }

  type metadata accessor for HomeUserTaskResponse();
  v8 = sub_252E37264();

  if (v8 >> 62)
  {
LABEL_33:
    if (sub_252E378C4())
    {
      goto LABEL_17;
    }

LABEL_34:

    goto LABEL_35;
  }

  if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_34;
  }

LABEL_17:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x2530ADF00](0, v8);
  }

  else
  {
    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_90;
    }

    v15 = *(v8 + 32);
  }

  v16 = v15;

  v17 = [v16 userTask];

  if (v17)
  {
    v18 = [v17 taskType];

    if (v18 < 7)
    {
      [v54 setHomeAutomationRequestType_];
      goto LABEL_35;
    }

LABEL_90:
    result = sub_252E37DF4();
    __break(1u);
    return result;
  }

LABEL_35:
  v19 = sub_252B2053C(a1);
  v20 = v54;
  if (v19)
  {
    v21 = v19;
    [v54 setHomeAutomationRequestMetadata_];
  }

  sub_252B1FDB0(v54);
  v22 = OBJC_IVAR___ControlHomeIntentResponse_code;
  swift_beginAccess();
  v23 = *&v1[v22];
  if (v23)
  {
    if (v23 == 101)
    {
      v24 = 3;
    }

    else if (v23 == 4)
    {
      v24 = 1;
    }

    else
    {
      v24 = 2;
    }
  }

  else
  {
    v24 = 0;
  }

  [v7 setCommandOutcome_];
  if ([v7 commandOutcome] != 1)
  {
    v25 = [v1 v2[219]];
    v26 = MEMORY[0x277D84F90];
    if (v25)
    {
      v27 = v25;
      type metadata accessor for HomeEntityResponse();
      v28 = sub_252E37264();

      v29 = sub_252B1F554(v28);

      if (v29 >> 62)
      {
        goto LABEL_61;
      }

      v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      for (i = &off_279711000; v30; i = &off_279711000)
      {
        v32 = 0;
        while (1)
        {
          if ((v29 & 0xC000000000000001) != 0)
          {
            v33 = MEMORY[0x2530ADF00](v32, v29);
          }

          else
          {
            if (v32 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_60;
            }

            v33 = *(v29 + 8 * v32 + 32);
          }

          v34 = v33;
          v35 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
            break;
          }

          if ([v33 taskOutcome] == 1)
          {
          }

          else
          {
            sub_252E37A94();
            sub_252E37AC4();
            sub_252E37AD4();
            sub_252E37AA4();
          }

          ++v32;
          if (v35 == v30)
          {
            v36 = v26;
            goto LABEL_63;
          }
        }

        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        v30 = sub_252E378C4();
      }

      v36 = MEMORY[0x277D84F90];
LABEL_63:

      if ((v36 & 0x8000000000000000) != 0 || (v36 & 0x4000000000000000) != 0)
      {
        goto LABEL_80;
      }

      for (j = *(v36 + 2); j; j = sub_252E378C4())
      {
        v38 = 0;
        v26 = MEMORY[0x277D84F90];
        while (1)
        {
          if ((v36 & 0xC000000000000001) != 0)
          {
            v39 = MEMORY[0x2530ADF00](v38, v36);
          }

          else
          {
            if (v38 >= *(v36 + 2))
            {
              goto LABEL_79;
            }

            v39 = *&v36[8 * v38 + 32];
          }

          v40 = v39;
          v41 = v38 + 1;
          if (__OFADD__(v38, 1))
          {
            break;
          }

          v42 = sub_252B9ACF0([v39 i[230]]);
          v44 = v43;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v26 = sub_2529F7A80(0, *(v26 + 2) + 1, 1, v26);
          }

          v46 = *(v26 + 2);
          v45 = *(v26 + 3);
          if (v46 >= v45 >> 1)
          {
            v26 = sub_2529F7A80((v45 > 1), v46 + 1, 1, v26);
          }

          *(v26 + 2) = v46 + 1;
          v47 = &v26[16 * v46];
          *(v47 + 4) = v42;
          *(v47 + 5) = v44;
          ++v38;
          i = &off_279711000;
          if (v41 == j)
          {
            goto LABEL_82;
          }
        }

        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        ;
      }

      v26 = MEMORY[0x277D84F90];
LABEL_82:

      v20 = v54;
    }

    sub_252AD4414(v26);

    v48 = sub_252E37254();

    [v20 setHomeAutomationRequestErrorReasons_];
  }

  if (qword_27F53F530 != -1)
  {
    swift_once();
  }

  v49 = sub_252E36AD4();
  __swift_project_value_buffer(v49, qword_27F544E38);
  sub_252E379F4();

  v50 = [v7 description];
  v51 = sub_252E36F34();
  v53 = v52;

  MEMORY[0x2530AD570](v51, v53);

  sub_252CC3D90(0xD000000000000015, 0x8000000252E7CDD0, 0xD000000000000076, 0x8000000252E7CDF0);

  return v7;
}

void *sub_252B21778()
{
  v0 = sub_252E32E84();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x277D57570]) init];
  if (!v4)
  {
    if (qword_27F53F530 != -1)
    {
      swift_once();
    }

    v14 = sub_252E36AD4();
    __swift_project_value_buffer(v14, qword_27F544E38);
    sub_252CC4050(0xD000000000000025, 0x8000000252E71520, 0xD000000000000076, 0x8000000252E7CDF0, 0xD00000000000001FLL, 0x8000000252E7CFC0, 137);
    return 0;
  }

  v5 = v4;
  sub_252E32E74();
  v6 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  v7 = sub_252E32E44();
  v8 = [v6 initWithNSUUID_];

  (*(v1 + 8))(v3, v0);
  [v5 setCommandId_];

  [v5 setCommandType_];
  v9 = [objc_allocWithZone(MEMORY[0x277D57580]) init];
  if (!v9)
  {
    if (qword_27F53F530 != -1)
    {
      swift_once();
    }

    v15 = sub_252E36AD4();
    __swift_project_value_buffer(v15, qword_27F544E38);
    sub_252CC4050(0xD000000000000025, 0x8000000252E71520, 0xD000000000000076, 0x8000000252E7CDF0, 0xD00000000000001FLL, 0x8000000252E7CFC0, 143);

    return 0;
  }

  v10 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_252E3C130;
  *(v11 + 32) = v10;
  sub_25293F638(0, &qword_27F5418B8, 0x277D57580);
  v12 = v10;
  v13 = sub_252E37254();

  [v5 setHomeAutomationRequests_];

  return v5;
}

unint64_t sub_252B21AB4()
{
  result = qword_27F5421A8;
  if (!qword_27F5421A8)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F541850, &qword_252E43DC0);
    result = swift_getWitnessTable(MEMORY[0x277D83988], v3, v0, v1);
    atomic_store(result, &qword_27F5421A8);
  }

  return result;
}

uint64_t sub_252B21B30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[153] = v3;
  v4[152] = a3;
  v4[151] = a2;
  v4[150] = a1;
  v5 = sub_252E34014();
  v4[154] = v5;
  v4[155] = *(v5 - 8);
  v4[156] = swift_task_alloc();
  v4[157] = swift_task_alloc();
  v4[158] = swift_task_alloc();
  v4[159] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252B21C20, 0, 0);
}

uint64_t sub_252B21C20(uint64_t a1)
{
  v52 = v1;
  v2 = *(v1 + 1216);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = sub_252C285F0();
    v5 = v4;
    __dst[0] = v3;
    v55 = v2;
    v6 = v4 & 0xFFFFFFFFFFFFFF8;
    if (v4 >> 62)
    {
LABEL_40:
      v7 = sub_252E378C4();
    }

    else
    {
      v7 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = 0;
    while (v7 != v8)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x2530ADF00](v8, v5);
      }

      else
      {
        if (v8 >= *(v6 + 16))
        {
          goto LABEL_39;
        }

        v9 = *(v5 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      v12 = sub_252DA124C(0);

      ++v8;
      if (v12)
      {
        MEMORY[0x2530AD700]();
        if (*((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
        }

        sub_252E372D4();
        v3 = __dst[0];
        v8 = v11;
      }
    }

    v2 = v55;
  }

  *(v1 + 1280) = v3;
  v13 = [*(v1 + 1208) userTask];
  if (v13)
  {
    v14 = v13;
    if ([v13 taskType] == 4)
    {

LABEL_21:
      v16 = *(v1 + 1224);
      v17 = swift_allocObject();
      *(v1 + 1288) = v17;
      v17[2] = v16;
      v17[3] = v3;

      if (v2)
      {
        v18 = *(v16 + 48);
        v19 = *(v1 + 1216);
        v20 = *__swift_project_boxed_opaque_existential_1((v16 + 24), v18);
        v55 = sub_252C0FE24;

        v21 = swift_task_alloc();
        *(v1 + 1296) = v21;
        *v21 = v1;
        v21[1] = sub_252B223F0;

        return v55(0, v20, v3);
      }

      if (qword_27F53F4D0 != -1)
      {
        swift_once();
      }

      v47 = *(v1 + 1224);
      v48 = sub_252E36AD4();
      __swift_project_value_buffer(v48, qword_27F544D18);
      sub_252CC4050(0xD00000000000003CLL, 0x8000000252E6B3F0, 0xD00000000000008FLL, 0x8000000252E6B430, 0xD000000000000042, 0x8000000252E6B4C0, 205);
      v41 = v47[12];
      v49 = v47[13];
      __swift_project_boxed_opaque_existential_1(v47 + 9, v41);
      sub_252AD7CC4();
      v50 = swift_task_alloc();
      *(v1 + 1344) = v50;
      *v50 = v1;
      v50[1] = sub_252B22750;
      v44 = *(v1 + 1272);
      v54 = v49;
      v45 = &unk_252E4BC40;
      v46 = v1 + 1104;
      goto LABEL_35;
    }

    v15 = [v14 taskType];

    if (v15 == 5)
    {
      goto LABEL_21;
    }
  }

  else
  {
    sub_252C515AC();
  }

  v23 = *(v1 + 1224);
  v24 = *(v1 + 1208);
  v17 = swift_allocObject();
  *(v1 + 1384) = v17;
  v17[2] = v23;
  v17[3] = v3;
  v17[4] = v24;

  v25 = v24;
  if (!v2)
  {

    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v39 = *(v1 + 1224);
    v40 = sub_252E36AD4();
    __swift_project_value_buffer(v40, qword_27F544D18);
    sub_252CC4050(0xD00000000000003CLL, 0x8000000252E6B3F0, 0xD00000000000008FLL, 0x8000000252E6B430, 0xD000000000000042, 0x8000000252E6B4C0, 205);
    v41 = v39[12];
    v42 = v39[13];
    __swift_project_boxed_opaque_existential_1(v39 + 9, v41);
    sub_252AD7CC4();
    v43 = swift_task_alloc();
    *(v1 + 1464) = v43;
    *v43 = v1;
    v43[1] = sub_252B23464;
    v44 = *(v1 + 1256);
    v54 = v42;
    v45 = &unk_252E4BC28;
    v46 = v1 + 1024;
LABEL_35:

    return sub_252BDB88C(v46, v45, v17, v44, 0, 0, 0, v41);
  }

  v26 = v25;
  v27 = v23[6];
  v28 = *(v1 + 1216);
  __swift_project_boxed_opaque_existential_1(v23 + 3, v27);
  v29 = type metadata accessor for HomeAutomationWaterSystemResponses();
  v30 = swift_allocObject();
  *(v1 + 1392) = v30;
  *(v30 + 16) = 0;
  *(v30 + 24) = v3;
  memcpy((v1 + 16), v23 + 14, 0x1F8uLL);

  v31 = v26;
  memcpy(__dst, v23 + 14, 0x1F8uLL);

  v32 = v31;
  sub_2529D291C(v1 + 16, v1 + 520);
  v33 = sub_252953488(v26, __dst, 0);
  *(v1 + 1400) = v33;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v34 = swift_allocObject();
  *(v1 + 1408) = v34;
  *(v34 + 16) = xmmword_252E3C280;
  *(v34 + 32) = 0xD000000000000017;
  *(v34 + 40) = 0x8000000252E6FE70;
  v35 = MEMORY[0x277D839B0];
  *(v34 + 48) = 0;
  *(v34 + 72) = v35;
  strcpy((v34 + 80), "intentContext");
  *(v34 + 94) = -4864;
  v36 = type metadata accessor for HomeAutomationIntentContext(0);
  *(v34 + 96) = v33;
  *(v34 + 120) = v36;
  *(v34 + 128) = 0x65736E6F70736572;
  *(v34 + 168) = v29;
  *(v34 + 136) = 0xE900000000000073;
  *(v34 + 144) = v30;
  v55 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);

  v37 = swift_task_alloc();
  *(v1 + 1416) = v37;
  *v37 = v1;
  v37[1] = sub_252B23050;
  v38 = v55;

  return v38(0x20, 0x8000000252E66650, v34);
}

uint64_t sub_252B223F0(uint64_t a1)
{
  v3 = *v2;
  v3[163] = a1;
  v3[164] = v1;

  swift_bridgeObjectRelease_n();
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_252B226B0, 0, 0);
  }

  else
  {
    v4 = v3[152];
    v5 = swift_task_alloc();
    v3[165] = v5;
    *v5 = v3;
    v5[1] = sub_252B22598;

    return sub_252E174F4(v4);
  }
}

uint64_t sub_252B22598(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1328) = a1;
  *(v3 + 1336) = v1;

  if (v1)
  {
    v4 = sub_252B22A1C;
  }

  else
  {
    v4 = sub_252B228C0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252B226B0()
{
  v1 = *(v0 + 1216);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252B22750()
{
  v2 = *(*v1 + 1272);
  v3 = *(*v1 + 1240);
  v4 = *(*v1 + 1232);
  *(*v1 + 1352) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_252B22FB8;
  }

  else
  {
    v5 = sub_252B22E78;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252B228C0()
{
  v1 = v0 + 149;
  v2 = v0[166];
  v3 = v0[163];
  v0[149] = v3;
  if (v2)
  {
    v4 = v3;
    v5 = v2;
    v6 = sub_252BE8A5C(v5);

    *v1 = v6;
  }

  else
  {
    v7 = v3;
  }

  v8 = v0[153];
  v9 = *(v8 + 96);
  __swift_project_boxed_opaque_existential_1((v8 + 72), v9);
  v10 = swift_task_alloc();
  v0[170] = v10;
  *(v10 + 16) = v1;
  sub_252AD7CC4();
  v11 = swift_task_alloc();
  v0[171] = v11;
  *v11 = v0;
  v11[1] = sub_252B22AC8;
  v12 = v0[158];

  return sub_252BDB88C((v0 + 143), &unk_252E3FA50, v10, v12, 0, 0, 0, v9);
}

uint64_t sub_252B22A1C()
{
  v1 = *(v0 + 1216);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252B22AC8()
{
  v2 = *(*v1 + 1264);
  v3 = *(*v1 + 1240);
  v4 = *(*v1 + 1232);
  *(*v1 + 1376) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_252B22DB0;
  }

  else
  {

    v5 = sub_252B22C48;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252B22C48()
{
  v1 = *(v0 + 1224);
  v2 = *(v0 + 1208);
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = *(v0 + 1328);
  v9 = *(v0 + 1304);
  v10 = *(v0 + 1216);
  (*(v4 + 112))(v7, v0 + 1144, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 1144));

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_252B22DB0()
{
  v1 = *(v0 + 1328);
  v2 = *(v0 + 1216);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_252B22E78()
{
  v1 = v0[153];
  v2 = v0[151];
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  (*(v4 + 112))(v7, v0 + 138, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + 138);

  v8 = v0[1];

  return v8();
}

uint64_t sub_252B22FB8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252B23050(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1424) = a1;
  *(v3 + 1432) = v1;

  if (v1)
  {
    v4 = sub_252B23380;
  }

  else
  {
    v4 = sub_252B23188;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252B23188()
{
  v1 = v0[152];
  v2 = v0[151];

  swift_bridgeObjectRelease_n();
  v3 = swift_task_alloc();
  v0[180] = v3;
  *v3 = v0;
  v3[1] = sub_252B23268;

  return sub_252E174F4(v1);
}

uint64_t sub_252B23268(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1448) = a1;
  *(v3 + 1456) = v1;

  if (v1)
  {
    v4 = sub_252B23730;
  }

  else
  {
    v4 = sub_252B235D4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252B23380()
{
  v1 = v0[152];
  v2 = v0[151];

  swift_bridgeObjectRelease_n();

  v3 = v0[1];

  return v3();
}

uint64_t sub_252B23464()
{
  v2 = *(*v1 + 1256);
  v3 = *(*v1 + 1240);
  v4 = *(*v1 + 1232);
  *(*v1 + 1472) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_252B23CCC;
  }

  else
  {
    v5 = sub_252B23B8C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252B235D4()
{
  v1 = v0 + 148;
  v2 = v0[181];
  v3 = v0[178];
  v0[148] = v3;
  if (v2)
  {
    v4 = v3;
    v5 = v2;
    v6 = sub_252BE8A5C(v5);

    *v1 = v6;
  }

  else
  {
    v7 = v3;
  }

  v8 = v0[153];
  v9 = *(v8 + 96);
  __swift_project_boxed_opaque_existential_1((v8 + 72), v9);
  v10 = swift_task_alloc();
  v0[185] = v10;
  *(v10 + 16) = v1;
  sub_252AD7CC4();
  v11 = swift_task_alloc();
  v0[186] = v11;
  *v11 = v0;
  v11[1] = sub_252B237DC;
  v12 = v0[156];

  return sub_252BDB88C((v0 + 133), &unk_252E3F140, v10, v12, 0, 0, 0, v9);
}

uint64_t sub_252B23730()
{
  v1 = *(v0 + 1216);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252B237DC()
{
  v2 = *(*v1 + 1248);
  v3 = *(*v1 + 1240);
  v4 = *(*v1 + 1232);
  *(*v1 + 1496) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_252B23AC4;
  }

  else
  {

    v5 = sub_252B2395C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252B2395C()
{
  v1 = *(v0 + 1224);
  v2 = *(v0 + 1208);
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = *(v0 + 1448);
  v9 = *(v0 + 1424);
  v10 = *(v0 + 1216);
  (*(v4 + 112))(v7, v0 + 1064, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 1064));

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_252B23AC4()
{
  v1 = *(v0 + 1448);
  v2 = *(v0 + 1216);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_252B23B8C()
{
  v1 = v0[153];
  v2 = v0[151];
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  (*(v4 + 112))(v7, v0 + 128, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + 128);

  v8 = v0[1];

  return v8();
}

uint64_t sub_252B23CCC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252B23D64(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_252B23D84, 0, 0);
}

uint64_t sub_252B23D84()
{
  v1 = *__swift_project_boxed_opaque_existential_1((v0[2] + 24), *(v0[2] + 48));

  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_25299F248;
  v3 = v0[3];

  return sub_252C0FE24(0, v1, v3);
}

uint64_t sub_252B23E58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[130] = a3;
  v3[129] = a2;
  v3[128] = a1;
  return MEMORY[0x2822009F8](sub_252B23E80, 0, 0);
}

uint64_t sub_252B23E80()
{
  v16 = v0;
  v1 = v0[130];
  v2 = v0[129];
  v3 = v0[128];
  __swift_project_boxed_opaque_existential_1(v3 + 3, v3[6]);
  v4 = type metadata accessor for HomeAutomationWaterSystemResponses();
  v5 = swift_allocObject();
  v0[131] = v5;
  *(v5 + 16) = 0;
  *(v5 + 24) = v2;
  memcpy(v0 + 2, v3 + 14, 0x1F8uLL);

  v6 = v1;

  memcpy(__dst, v3 + 14, sizeof(__dst));

  v7 = v6;
  sub_2529D291C((v0 + 2), (v0 + 65));
  v8 = sub_252953488(v1, __dst, 0);
  v0[132] = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v9 = swift_allocObject();
  v0[133] = v9;
  *(v9 + 16) = xmmword_252E3C280;
  *(v9 + 32) = 0xD000000000000017;
  *(v9 + 40) = 0x8000000252E6FE70;
  v10 = MEMORY[0x277D839B0];
  *(v9 + 48) = 0;
  *(v9 + 72) = v10;
  strcpy((v9 + 80), "intentContext");
  *(v9 + 94) = -4864;
  v11 = type metadata accessor for HomeAutomationIntentContext(0);
  *(v9 + 96) = v8;
  *(v9 + 120) = v11;
  *(v9 + 128) = 0x65736E6F70736572;
  *(v9 + 168) = v4;
  *(v9 + 136) = 0xE900000000000073;
  *(v9 + 144) = v5;
  v14 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);

  v12 = swift_task_alloc();
  v0[134] = v12;
  *v12 = v0;
  v12[1] = sub_2529D23F0;

  return v14(0xD000000000000020, 0x8000000252E66650, v9);
}

uint64_t sub_252B24100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25293B808;

  return sub_252B21B30(a1, a2, a3);
}

void *sub_252B241B4@<X0>(const void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for SprinklerResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

uint64_t sub_252B24218(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = sub_252C285F0();
    v3 = v2;
    if (v2 >> 62)
    {
      goto LABEL_34;
    }

    for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v5 = 0;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x2530ADF00](v5, v3);
        }

        else
        {
          if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_33;
          }

          v6 = *(v3 + 32 + 8 * v5);
        }

        v7 = v6;
        if (__OFADD__(v5++, 1))
        {
          break;
        }

        v9 = sub_252DA10F8();
        v10 = *(v9 + 16);
        if (v10)
        {
          v11 = 32;
          while (v10)
          {
            v12 = *(v9 + v11);
            v11 += 8;
            --v10;
            if (v12 == 32)
            {

              return 1;
            }
          }
        }

        v13 = sub_252DA10F8();
        v14 = *(v13 + 16);
        if (v14)
        {
          v15 = 32;
          while (v14)
          {
            v16 = *(v13 + v15);
            v15 += 8;
            --v14;
            if (v16 == 33)
            {

              v17 = sub_252DA6828();
              v18 = *(v17 + 2);
              v19 = 32;
              while (v18)
              {
                v20 = *&v17[v19];
                v19 += 8;
                --v18;
                if (v20 == 51)
                {
LABEL_21:

                  return 1;
                }
              }

              v21 = sub_252DA6828();
              v22 = *(v21 + 2);
              v23 = 32;
              while (v22)
              {
                v24 = *&v21[v23];
                v23 += 8;
                --v22;
                if (v24 == 46)
                {
                  goto LABEL_21;
                }
              }

              break;
            }
          }

          if (v5 == i)
          {
            goto LABEL_35;
          }
        }

        else
        {

          if (v5 == i)
          {
            goto LABEL_35;
          }
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      ;
    }

LABEL_35:

    return 0;
  }

  return result;
}

uint64_t sub_252B24428()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25294B958;

  return sub_252B23E58(v2, v3, v4);
}

uint64_t sub_252B244D0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25294B958;

  return sub_252B23D64(v2, v3);
}

id DiscoverHomeIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_252B2459C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25296BC70;

  return sub_252B2547C(a1);
}

uint64_t sub_252B247CC(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_252B248A0;

  return sub_252B2547C(v6);
}

uint64_t sub_252B248A0(uint64_t a1)
{
  v2 = *(*v1 + 32);
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v8 = *v1;

  type metadata accessor for DiscoverHomeFiltersResolutionResult();
  v5 = sub_252E37254();

  (v2)[2](v2, v5);

  _Block_release(v2);
  v6 = *(v8 + 8);

  return v6();
}

uint64_t sub_252B24A24()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2529C9ED8;

  return sub_252B256FC();
}

uint64_t sub_252B24C4C(int a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_252A91798;

  return sub_252B256FC();
}

uint64_t sub_252B24CF8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2529C9ED8;

  return sub_252B258F4(a1);
}

id sub_252B24DA0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  if (qword_27F53F580 != -1)
  {
    swift_once();
  }

  v10 = qword_27F544F08;
  *&v60[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5434A0, &qword_252E4BD38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5434A8, &unk_252E4BD40);
  v41 = 1;
  v40 = 1;
  v39 = 1;
  v38 = 1;
  *&v42 = 0;
  BYTE8(v42) = 1;
  v43 = 0;
  v44 = 0;
  *&v45 = 0;
  *(&v45 + 1) = a1;
  *&v46 = a2;
  *(&v46 + 1) = sub_252E36F94();
  v47 = v11;
  v48 = 0;
  v49 = 0;
  v50 = 0;
  LOBYTE(v51) = 1;
  v52 = 0;
  v53 = 0;
  v54 = 0;
  LOWORD(v55) = 513;
  v56 = 0;
  v57 = 0;
  v58 = 0;
  v59 = 1;
  GEOLocationCoordinate2DMake();
  v35 = v55;
  v36 = 0u;
  v37 = 1;
  v31 = v47;
  v32 = 0u;
  v33 = v51;
  v34 = 0u;
  v27 = v42;
  v28 = 0u;
  v29 = v45;
  v30 = v46;

  _s22HomeAutomationInternal8SignpostO3end7logging___ySo9OS_os_logC_0H012OSSignpostIDVs12StaticStringVAC7ContextVSgtFZ_0(v10, a4, "HandleIntent", 12, 2, &v27);
  v60[8] = v35;
  v60[9] = v36;
  v61 = v37;
  v60[4] = v31;
  v60[5] = v32;
  v60[6] = v33;
  v60[7] = v34;
  v60[0] = v27;
  v60[1] = v28;
  v60[2] = v29;
  v60[3] = v30;
  sub_25293847C(v60, &qword_27F5407B0, &unk_252E42860);
  sub_252E35F84();
  sub_252E35F74();
  sub_252E35F34();

  v12 = sub_252E36804();
  v14 = v13;

  if (v14)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F544FF0, &unk_252E46670);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_252E3C290;
    *(inited + 32) = 25705;
    v16 = inited + 32;
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = 0xE200000000000000;
    *(inited + 48) = v12;
    *(inited + 56) = v14;
    sub_252CC630C(inited);
    swift_setDeallocating();
    sub_25293847C(v16, &unk_27F541F10, &unk_252E42870);
  }

  v17 = [objc_opt_self() sharedAnalytics];
  if (v17)
  {
    v18 = v17;

    sub_252CC1408(v19);

    v20 = sub_252E36E24();

    [v18 logEventWithType:6506 context:v20];
  }

  else
  {
  }

  sub_252DB7C84(v21);

  v22 = sub_252DB5924();

  result = sub_252DE16D0(a5);
  v24 = result;
  if (!result)
  {
    goto LABEL_12;
  }

  if ((v22 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v22))
  {
    result = [result setCommandDuration_];
LABEL_12:
    sub_252DB7C84(result);
    sub_252DB7138(v24);

    sub_252DB7C84(v25);
    sub_252DB649C(0, 0, 1);

    v26 = a3;

    return v26;
  }

  __break(1u);
  return result;
}

uint64_t sub_252B25300(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_252A91F78;

  return sub_252B258F4(v6);
}

id DiscoverHomeIntentHandler.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DiscoverHomeIntentHandler();
  return objc_msgSendSuper2(&v3, sel_init);
}

id DiscoverHomeIntentHandler.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DiscoverHomeIntentHandler();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_252B2549C()
{
  if ([*(v0 + 16) discoveryType] != 3 || (sub_2529D679C(), (v1 & 1) != 0) || (sub_2529D6968(), (v2 & 1) != 0) || (sub_2529D6B60() & 1) != 0)
  {
    v3 = [*(v0 + 16) filters];
    v4 = MEMORY[0x277D84F90];
    if (v3)
    {
      v5 = v3;
      type metadata accessor for HomeFilter();
      v6 = sub_252E37264();
    }

    else
    {
      v6 = MEMORY[0x277D84F90];
    }

    v15 = v4;
    if (v6 >> 62)
    {
      goto LABEL_23;
    }

    for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v8 = 0;
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x2530ADF00](v8, v6);
        }

        else
        {
          if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v9 = *(v6 + 8 * v8 + 32);
        }

        v10 = v9;
        v11 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        type metadata accessor for DiscoverHomeFiltersResolutionResult();
        sub_252E2B004(v10);

        MEMORY[0x2530AD700]();
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
        }

        sub_252E372D4();
        ++v8;
        if (v11 == i)
        {
          v12 = v15;
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      ;
    }

    v12 = MEMORY[0x277D84F90];
LABEL_25:
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_252E3C130;
    type metadata accessor for DiscoverHomeFiltersResolutionResult();
    *(v12 + 32) = sub_252E20FF8(1);
  }

  v13 = *(v0 + 8);

  return v13(v12);
}

uint64_t sub_252B25718()
{
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v1 = sub_252E36AD4();
  __swift_project_value_buffer(v1, qword_27F544C70);
  sub_252CC3D90(0xD00000000000003ALL, 0x8000000252E7D1D0, 0xD000000000000080, 0x8000000252E7D120);
  v2 = [objc_allocWithZone(type metadata accessor for DiscoverHomeIntentResponse()) init];
  v3 = OBJC_IVAR___DiscoverHomeIntentResponse_code;
  swift_beginAccess();
  *&v2[v3] = 1;
  [v2 setUserActivity_];
  v4 = *(v0 + 8);

  return v4(v2);
}

uint64_t sub_252B25854(uint64_t a1)
{
  v2 = type metadata accessor for TriggersHandleDelegate();
  if (off_2864BFFE8(a1, v2, &off_2864BFFD8))
  {
    return (off_2864BFFF0)();
  }

  type metadata accessor for AccessoriesHandleDelegate();
  return swift_allocObject();
}

uint64_t sub_252B258F4(uint64_t a1)
{
  v1[21] = a1;
  v2 = sub_252E32E04();
  v1[22] = v2;
  v1[23] = *(v2 - 8);
  v1[24] = swift_task_alloc();
  v3 = sub_252E36AB4();
  v1[25] = v3;
  v1[26] = *(v3 - 8);
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252B25A1C, 0, 0);
}

uint64_t sub_252B25A1C()
{
  if (qword_27F53F580 != -1)
  {
    swift_once();
  }

  v1 = qword_27F544F08;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  sub_252E35F84();
  sub_252E35F74();
  sub_252E35F34();

  v2 = sub_252E36804();
  v4 = v3;

  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F544FF0, &unk_252E46670);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_252E3C290;
    *(inited + 32) = 25705;
    v6 = inited + 32;
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = 0xE200000000000000;
    *(inited + 48) = v2;
    *(inited + 56) = v4;
    sub_252CC630C(inited);
    swift_setDeallocating();
    sub_25293847C(v6, &unk_27F541F10, &unk_252E42870);
  }

  v7 = [objc_opt_self() sharedAnalytics];
  if (v7)
  {
    v8 = v7;

    sub_252CC1408(v9);

    v10 = sub_252E36E24();

    [v8 logEventWithType:6505 context:v10];
  }

  v13 = v0[23];
  v12 = v0[24];
  v14 = v0[22];
  v15 = sub_252DB7C84(v11)[5];

  sub_252E32DF4();
  sub_252E32D44();
  v17 = v16;
  (*(v13 + 8))(v12, v14);
  v18 = v17 * 1000.0;
  if (COERCE__INT64(fabs(v17 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v18 <= -9.22337204e18)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v18 < 9.22337204e18)
  {
    v20 = v0[27];
    v19 = v0[28];
    v21 = v0[25];
    v22 = v0[26];
    *(v15 + 16) = v18;

    (*(v22 + 16))(v20, v19, v21);
    if (qword_2814B09D0 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  swift_once();
LABEL_11:
  v23 = v0[21];
  v24 = sub_252E36AD4();
  __swift_project_value_buffer(v24, qword_2814B09D8);
  sub_252E379F4();

  v25 = v23;
  v26 = [v25 description];
  v27 = sub_252E36F34();
  v29 = v28;

  MEMORY[0x2530AD570](v27, v29);

  sub_252CC4A5C(0xD000000000000028, 0x8000000252E7D0F0, 1, 0xD000000000000080, 0x8000000252E7D120);

  v30 = [v25 filters];
  if (v30)
  {
    v31 = v0[21];

    v32 = sub_252B25854(v31);
    v34 = v33;
    v0[29] = v32;
    v0[18] = swift_getObjectType();
    v0[19] = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543498, &qword_252E4BD30);
    v35 = sub_252E36F94();
    v37 = v36;
    v0[30] = v35;
    v0[31] = v36;
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v0[32] = __swift_project_value_buffer(v24, qword_27F544C70);
    sub_252E379F4();

    MEMORY[0x2530AD570](v35, v37);
    sub_252CC4A5C(0xD000000000000011, 0x8000000252E73E80, 1, 0xD000000000000080, 0x8000000252E7D120);

    ObjectType = swift_getObjectType();
    v51 = (*(v34 + 8) + **(v34 + 8));
    v39 = swift_task_alloc();
    v0[33] = v39;
    *v39 = v0;
    v39[1] = sub_252B261DC;
    v40 = v0[21];

    return v51(v40, ObjectType, v34);
  }

  else
  {
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v42 = v0[27];
    v43 = v0[21];
    __swift_project_value_buffer(v24, qword_27F544C70);
    sub_252CC4050(0xD00000000000001FLL, 0x8000000252E6D800, 0xD000000000000080, 0x8000000252E7D120, 0x6928656C646E6168, 0xEF293A746E65746ELL, 62);
    v44 = [objc_allocWithZone(type metadata accessor for DiscoverHomeIntentResponse()) init];
    v45 = OBJC_IVAR___DiscoverHomeIntentResponse_code;
    swift_beginAccess();
    *&v44[v45] = 5;
    [v44 setUserActivity_];
    v46 = sub_252B24DA0(7104878, 0xE300000000000000, v44, v42, v43);

    v47 = v0[28];
    v48 = v0[25];
    v49 = *(v0[26] + 8);
    v49(v0[27], v48);
    v49(v47, v48);

    v50 = v0[1];

    return v50(v46);
  }
}

uint64_t sub_252B261DC(uint64_t a1)
{
  *(*v1 + 272) = a1;

  return MEMORY[0x2822009F8](sub_252B262DC, 0, 0);
}

uint64_t sub_252B262DC()
{
  v1 = v0[34];
  v2 = v0[31];
  v3 = v0[30];
  v13 = v0[27];
  v4 = v0[21];
  sub_252E379F4();

  v5 = OBJC_IVAR___DiscoverHomeIntentResponse_code;
  swift_beginAccess();
  v0[20] = *&v1[v5];
  v6 = sub_252E36F94();
  MEMORY[0x2530AD570](v6);

  sub_252CC3D90(0xD00000000000001ELL, 0x8000000252E7D1B0, 0xD000000000000080, 0x8000000252E7D120);

  v7 = sub_252B24DA0(v3, v2, v1, v13, v4);

  swift_unknownObjectRelease();
  v8 = v0[28];
  v9 = v0[25];
  v10 = *(v0[26] + 8);
  v10(v0[27], v9);
  v10(v8, v9);

  v11 = v0[1];

  return v11(v7);
}

uint64_t dispatch thunk of DiscoverHomeIntentHandler.resolveFilters(for:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x50);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25296BC70;

  return v7(a1);
}

uint64_t dispatch thunk of DiscoverHomeIntentHandler.confirm(intent:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x58);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2529C9ED8;

  return v7(a1);
}

uint64_t dispatch thunk of DiscoverHomeIntentHandler.handle(intent:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x60);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2529C9ED8;

  return v7(a1);
}

uint64_t sub_252B2686C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25294B954;

  return sub_252B25300(v2, v3, v4);
}

uint64_t sub_252B26920()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25294B954;

  return sub_252CD43D0(v2, v3, v4);
}

uint64_t sub_252B269E0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25294B954;

  return sub_252B24C4C(v2, v3);
}

uint64_t sub_252B26A94()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25293B808;

  return sub_252B247CC(v2, v3, v4);
}

char *sub_252B26B48(unint64_t *a1, uint64_t *a2, void *a3, uint64_t a4, char a5)
{
  v8 = *a1;
  v9 = *a2;
  if (*a1 >> 62)
  {
    v10 = sub_252E378C4();
  }

  else
  {
    v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v10)
  {

    v11 = [a3 userTask];
    if (v11)
    {
      v12 = v11;
      v13 = sub_2529B78B0(v8, v11, a4, a5 & 1);

      return v13;
    }
  }

  if (v9)
  {

    v15 = sub_2529B46E8(a3, v9);

    return v15;
  }

  else
  {
    if (qword_27F53F568 != -1)
    {
      swift_once();
    }

    v16 = sub_252E36AD4();
    __swift_project_value_buffer(v16, qword_27F544EE0);
    sub_252CC3D90(0xD000000000000037, 0x8000000252E7D270, 0xD00000000000007BLL, 0x8000000252E6E7F0);
    v17 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
    v18 = OBJC_IVAR___ControlHomeIntentResponse_code;
    swift_beginAccess();
    *&v17[v18] = 5;
    [v17 setUserActivity_];
    type metadata accessor for HomeEntityResponse();
    v19 = sub_252E37254();
    [v17 setEntityResponses_];

    return v17;
  }
}

uint64_t sub_252B26D8C(uint64_t a1, const void *a2)
{
  v3[129] = v2;
  v3[128] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540330, &unk_252E3C7F0);
  v3[130] = swift_task_alloc();
  memcpy(v3 + 2, a2, 0x1F8uLL);

  return MEMORY[0x2822009F8](sub_252B26E40, 0, 0);
}

uint64_t sub_252B26E40()
{
  v18 = v0;
  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v1 = v0[128];
  v2 = sub_252E36AD4();
  __swift_project_value_buffer(v2, qword_27F544DA8);
  sub_252CC3D90(0xD000000000000032, 0x8000000252E7D400, 0xD00000000000008FLL, 0x8000000252E7D320);
  memcpy(__dst, v0 + 2, sizeof(__dst));
  v3 = v1;
  sub_2529D291C((v0 + 2), (v0 + 65));
  v4 = sub_252953488(v1, __dst, 0);
  v0[131] = v4;

  v5 = [v3 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();

    v8 = type metadata accessor for HomeStore(0);
    v9 = static HomeStore.shared.getter(v8);
    v10 = HomeStore.services(matching:supporting:)(v7, 0);
    v12 = v11;

    if ((v12 & 1) == 0)
    {
      goto LABEL_7;
    }

    sub_252929F10(v10, 1);
  }

  v10 = MEMORY[0x277D84F90];
LABEL_7:
  type metadata accessor for HomeAutomationEntityResponses();

  v13 = sub_25299DDFC(v10);
  sub_252BFD9D4(v4, v13);

  v14 = swift_task_alloc();
  v0[132] = v14;
  *v14 = v0;
  v14[1] = sub_252B270B8;
  v15 = v0[130];

  return sub_2529588CC(v15);
}

uint64_t sub_252B270B8()
{
  v2 = *(*v1 + 1040);
  *(*v1 + 1064) = v0;

  sub_25295A3FC(v2);
  if (v0)
  {
    v3 = sub_252B27258;
  }

  else
  {
    v3 = sub_252B271E8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252B271E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252B27258()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252B272F0(uint64_t a1, const void *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25293B808;

  return sub_252B26D8C(a1, a2);
}

void *sub_252B27398@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for BlockFeatureNotAvailableForDeviceHandler();
  swift_allocObject();
  result = sub_252D192A0();
  *a1 = result;
  return result;
}

uint64_t sub_252B273D4(void *a1, const void *a2)
{
  memcpy(__dst, a2, sizeof(__dst));
  v3 = [a1 filters];
  if (!v3)
  {
    if (qword_27F53F500 != -1)
    {
      goto LABEL_81;
    }

    goto LABEL_6;
  }

  v4 = v3;
  type metadata accessor for HomeFilter();
  v5 = sub_252E37264();

  v6 = [a1 userTask];
  if (!v6)
  {

    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v17 = sub_252E36AD4();
    __swift_project_value_buffer(v17, qword_27F544DA8);
    v14 = 0xD000000000000022;
    v15 = 0x8000000252E7D3D0;
    v16 = 42;
    goto LABEL_10;
  }

  v7 = v6;
  v8 = type metadata accessor for HomeStore(0);
  v9 = static HomeStore.shared.getter(v8);
  v10 = HomeStore.accessories(matching:supporting:)(v5, 0);
  v12 = v11;

  if (v12)
  {
    sub_252929F10(v10, 1);

    return 0;
  }

  v135 = v7;
  memcpy(v138, __dst, sizeof(v138));
  v19 = sub_252A12828();
  v20 = sub_2529A6C88(70, v19);

  if (v20)
  {
    if (v10 >> 62)
    {
      v21 = sub_252E378C4();
      v22 = v21;
      if (v21)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v22 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v22)
      {
LABEL_15:
        v23 = 0;
        v24 = v10 & 0xC000000000000001;
        v25 = v10 + 32;
        v136 = v22;
        while (1)
        {
          if (v24)
          {
            v26 = MEMORY[0x2530ADF00](v23, v10);
            v27 = __OFADD__(v23++, 1);
            if (v27)
            {
              goto LABEL_79;
            }
          }

          else
          {
            if (v23 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_80;
            }

            v26 = *(v25 + 8 * v23);

            v27 = __OFADD__(v23++, 1);
            if (v27)
            {
LABEL_79:
              __break(1u);
LABEL_80:
              __break(1u);
LABEL_81:
              swift_once();
LABEL_6:
              v13 = sub_252E36AD4();
              __swift_project_value_buffer(v13, qword_27F544DA8);
              v14 = 0xD00000000000001ELL;
              v15 = 0x8000000252E7D300;
              v16 = 37;
LABEL_10:
              sub_252CC4050(v14, v15, 0xD00000000000008FLL, 0x8000000252E7D320, 0xD00000000000001ALL, 0x8000000252E7D3B0, v16);
              return 0;
            }
          }

          v28 = (*v26 + 256);
          v29 = *v28;
          if ((*v28)() != 35)
          {
            break;
          }

LABEL_17:
          if (v23 == v22)
          {
            goto LABEL_83;
          }
        }

        v30 = (*v26 + 272);
        v31 = *v30;
        v32 = (*v30)();
        if (*(v32 + 16))
        {
          v33 = v32;
          sub_252E37EC4();
          MEMORY[0x2530AE390](35);
          v34 = sub_252E37F14();
          v35 = -1 << *(v33 + 32);
          v36 = v34 & ~v35;
          if ((*(v33 + 56 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36))
          {
            v37 = ~v35;
            while (*(*(v33 + 48) + 8 * v36) != 35)
            {
              v36 = (v36 + 1) & v37;
              if (((*(v33 + 56 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
              {
                goto LABEL_27;
              }
            }

            goto LABEL_64;
          }
        }

LABEL_27:

        v39 = (v29)(v38);
        if (v39 == 38)
        {
          v42 = &unk_2864ACCC8;
        }

        else
        {
          v40 = v39;
          v41 = MEMORY[0x277D84FA0];
          if (v40 != 41)
          {
LABEL_32:
            if (*(v41 + 16))
            {
              v43 = v41;
              sub_252E37EC4();
              MEMORY[0x2530AE390](35);
              v44 = sub_252E37F14();
              v45 = -1 << *(v43 + 32);
              v46 = v44 & ~v45;
              if ((*(v43 + 56 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46))
              {
                v47 = ~v45;
                while (*(*(v43 + 48) + 8 * v46) != 35)
                {
                  v46 = (v46 + 1) & v47;
                  if (((*(v43 + 56 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46) & 1) == 0)
                  {
                    goto LABEL_37;
                  }
                }

                goto LABEL_64;
              }
            }

LABEL_37:

            if (sub_252D4FE78(35) || v29() == 45)
            {
              goto LABEL_65;
            }

            v48 = v31();
            if (*(v48 + 16))
            {
              v49 = v48;
              sub_252E37EC4();
              MEMORY[0x2530AE390](45);
              v50 = sub_252E37F14();
              v51 = -1 << *(v49 + 32);
              v52 = v50 & ~v51;
              if ((*(v49 + 56 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52))
              {
                v53 = ~v51;
                while (*(*(v49 + 48) + 8 * v52) != 45)
                {
                  v52 = (v52 + 1) & v53;
                  if (((*(v49 + 56 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52) & 1) == 0)
                  {
                    goto LABEL_44;
                  }
                }

LABEL_64:

LABEL_65:

                v24 = v10 & 0xC000000000000001;
                v22 = v136;
                v25 = v10 + 32;
                goto LABEL_17;
              }
            }

LABEL_44:

            v55 = (v29)(v54);
            if (v55 == 38)
            {
              v58 = &unk_2864ACD18;
            }

            else
            {
              v56 = v55;
              v57 = MEMORY[0x277D84FA0];
              if (v56 != 41)
              {
                goto LABEL_49;
              }

              v58 = &unk_2864ACD40;
            }

            v57 = sub_2529FC004(v58);
LABEL_49:
            if (!*(v57 + 16) || (v59 = v57, sub_252E37EC4(), MEMORY[0x2530AE390](45), v60 = sub_252E37F14(), v61 = -1 << *(v59 + 32), v62 = v60 & ~v61, ((*(v59 + 56 + ((v62 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v62) & 1) == 0))
            {
LABEL_54:

              if (!sub_252D4FE78(45) && v29() != 32)
              {
                v64 = v31();
                v24 = v10 & 0xC000000000000001;
                v22 = v136;
                v25 = v10 + 32;
                if (*(v64 + 16))
                {
                  sub_252E37EC4();
                  MEMORY[0x2530AE390](32);
                  v65 = sub_252E37F14();
                  v66 = -1 << *(v64 + 32);
                  v67 = v65 & ~v66;
                  if ((*(v64 + 56 + ((v67 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v67))
                  {
                    v68 = ~v66;
                    while (*(*(v64 + 48) + 8 * v67) != 32)
                    {
                      v67 = (v67 + 1) & v68;
                      if (((*(v64 + 56 + ((v67 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v67) & 1) == 0)
                      {
                        goto LABEL_61;
                      }
                    }

LABEL_75:

                    goto LABEL_17;
                  }
                }

LABEL_61:

                v70 = (v29)(v69);
                if (v70 == 38)
                {
                  v72 = &unk_2864ACD68;
LABEL_67:
                  v71 = sub_2529FC004(v72);
                }

                else
                {
                  v71 = MEMORY[0x277D84FA0];
                  if (v70 == 41)
                  {
                    v72 = &unk_2864ACD90;
                    goto LABEL_67;
                  }
                }

                if (!*(v71 + 16) || (sub_252E37EC4(), MEMORY[0x2530AE390](32), v73 = sub_252E37F14(), v74 = -1 << *(v71 + 32), v75 = v73 & ~v74, ((*(v71 + 56 + ((v75 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v75) & 1) == 0))
                {
LABEL_73:

                  v77 = sub_252D4FE78(32);

                  if (!v77)
                  {
LABEL_156:
                    sub_252929F10(v10, 0);
                    goto LABEL_154;
                  }

                  goto LABEL_17;
                }

                v76 = ~v74;
                while (*(*(v71 + 48) + 8 * v75) != 32)
                {
                  v75 = (v75 + 1) & v76;
                  if (((*(v71 + 56 + ((v75 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v75) & 1) == 0)
                  {
                    goto LABEL_73;
                  }
                }

                goto LABEL_75;
              }

              goto LABEL_65;
            }

            v63 = ~v61;
            while (*(*(v59 + 48) + 8 * v62) != 45)
            {
              v62 = (v62 + 1) & v63;
              if (((*(v59 + 56 + ((v62 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v62) & 1) == 0)
              {
                goto LABEL_54;
              }
            }

            goto LABEL_64;
          }

          v42 = &unk_2864ACCF0;
        }

        v41 = sub_2529FC004(v42);
        goto LABEL_32;
      }
    }
  }

LABEL_83:
  v78 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v21);
  sub_252929E74((v78 + 288), v138);

  v79 = v138[3];
  v80 = v138[4];
  __swift_project_boxed_opaque_existential_1(v138, v138[3]);
  v81 = (*(v80 + 24))(v79, v80);
  __swift_destroy_boxed_opaque_existential_1(v138);
  if ((v81 & 1) != 0 || (sub_252C4B680(0x1D) & 1) == 0)
  {
    goto LABEL_130;
  }

  v82 = (v10 & 0xFFFFFFFFFFFFFF8);
  if (v10 >> 62)
  {
    goto LABEL_159;
  }

  v83 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_87:
  v84 = 0;
  v85 = v10 & 0xC000000000000001;
  v86 = v10 + 32;
  v137 = v83;
  while (1)
  {
    if (v84 == v83)
    {
      goto LABEL_130;
    }

    if (!v85)
    {
      if (v84 >= v82[2])
      {
        goto LABEL_158;
      }

      v87 = *(v86 + 8 * v84);

      v27 = __OFADD__(v84++, 1);
      if (!v27)
      {
        goto LABEL_92;
      }

LABEL_129:
      __break(1u);
LABEL_130:
      v82 = v135;
      if (sub_252C4B5D4() && [v135 attribute] == 6)
      {
        if (v10 >> 62)
        {
          v120 = sub_252E378C4();
          if (v120)
          {
            goto LABEL_134;
          }
        }

        else
        {
          v120 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v120)
          {
LABEL_134:
            v121 = 0;
            v88 = (v10 & 0xC000000000000001);
            do
            {
              if (v88)
              {
                v122 = MEMORY[0x2530ADF00](v121, v10);
                v27 = __OFADD__(v121++, 1);
                if (v27)
                {
LABEL_147:
                  __break(1u);
                  goto LABEL_148;
                }
              }

              else
              {
                if (v121 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  __break(1u);
LABEL_158:
                  __break(1u);
LABEL_159:
                  v83 = sub_252E378C4();
                  goto LABEL_87;
                }

                v122 = *(v10 + 32 + 8 * v121);

                v27 = __OFADD__(v121++, 1);
                if (v27)
                {
                  goto LABEL_147;
                }
              }

              v123 = (*(*v122 + 272))();
              if (*(v123 + 16))
              {
                v124 = v123;
                sub_252E37EC4();
                MEMORY[0x2530AE390](29);
                v125 = sub_252E37F14();
                v126 = v124;
                v82 = v135;
                v127 = -1 << *(v126 + 32);
                v128 = v125 & ~v127;
                if ((*(v126 + 56 + ((v128 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v128))
                {
                  v129 = ~v127;
                  do
                  {
                    if (*(*(v126 + 48) + 8 * v128) == 29)
                    {

                      goto LABEL_176;
                    }

                    v128 = (v128 + 1) & v129;
                  }

                  while (((*(v126 + 56 + ((v128 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v128) & 1) != 0);
                }
              }
            }

            while (v121 != v120);
          }
        }
      }

      if (v10 >> 62)
      {
        goto LABEL_175;
      }

      v131 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v131)
      {
LABEL_176:
        sub_252929F10(v10, 0);

        return 0;
      }

LABEL_163:
      v132 = 0;
      while (1)
      {
        if (v131 == v132)
        {
          goto LABEL_173;
        }

        if ((v10 & 0xC000000000000001) != 0)
        {
          v133 = MEMORY[0x2530ADF00](v132, v10);
          if (__OFADD__(v132, 1))
          {
LABEL_172:
            __break(1u);
LABEL_173:
            sub_252929F10(v10, 0);

            return 1;
          }
        }

        else
        {
          if (v132 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_175:
            v131 = sub_252E378C4();
            if (!v131)
            {
              goto LABEL_176;
            }

            goto LABEL_163;
          }

          v133 = *(v10 + 8 * v132 + 32);

          if (__OFADD__(v132, 1))
          {
            goto LABEL_172;
          }
        }

        v134 = (*(*v133 + 392))(v82);

        ++v132;
        if (v134)
        {
          goto LABEL_176;
        }
      }
    }

    v87 = MEMORY[0x2530ADF00](v84, v10);
    v27 = __OFADD__(v84++, 1);
    if (v27)
    {
      goto LABEL_129;
    }

LABEL_92:
    v88 = v10;
    v89 = (*v87 + 256);
    v90 = *v89;
    if ((*v89)() == 35)
    {
      goto LABEL_155;
    }

    v91 = (*v87 + 272);
    v92 = *v91;
    v93 = (*v91)();
    if (*(v93 + 16))
    {
      sub_252E37EC4();
      MEMORY[0x2530AE390](35);
      v94 = sub_252E37F14();
      v95 = -1 << *(v93 + 32);
      v96 = v94 & ~v95;
      if ((*(v93 + 56 + ((v96 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v96))
      {
        v97 = ~v95;
        while (*(*(v93 + 48) + 8 * v96) != 35)
        {
          v96 = (v96 + 1) & v97;
          if (((*(v93 + 56 + ((v96 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v96) & 1) == 0)
          {
            goto LABEL_98;
          }
        }

LABEL_148:
        sub_252929F10(v88, 0);

LABEL_149:

        goto LABEL_154;
      }
    }

LABEL_98:

    v99 = (v90)(v98);
    if (v99 == 38)
    {
      v101 = &unk_2864ACDB8;
      goto LABEL_102;
    }

    v100 = MEMORY[0x277D84FA0];
    if (v99 == 41)
    {
      v101 = &unk_2864ACDE0;
LABEL_102:
      v100 = sub_2529FC004(v101);
    }

    if (*(v100 + 16))
    {
      sub_252E37EC4();
      MEMORY[0x2530AE390](35);
      v102 = sub_252E37F14();
      v103 = -1 << *(v100 + 32);
      v104 = v102 & ~v103;
      if ((*(v100 + 56 + ((v104 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v104))
      {
        v105 = ~v103;
        while (*(*(v100 + 48) + 8 * v104) != 35)
        {
          v104 = (v104 + 1) & v105;
          if (((*(v100 + 56 + ((v104 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v104) & 1) == 0)
          {
            goto LABEL_108;
          }
        }

        goto LABEL_148;
      }
    }

LABEL_108:

    if (sub_252D4FE78(35) || v90() == 45)
    {
LABEL_155:
      sub_252929F10(v10, 0);
      goto LABEL_149;
    }

    v106 = v92();
    if (*(v106 + 16))
    {
      sub_252E37EC4();
      MEMORY[0x2530AE390](45);
      v107 = sub_252E37F14();
      v108 = -1 << *(v106 + 32);
      v109 = v107 & ~v108;
      if ((*(v106 + 56 + ((v109 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v109))
      {
        break;
      }
    }

LABEL_115:

    v112 = (v90)(v111);
    if (v112 == 38)
    {
      v114 = &unk_2864ACE08;
      goto LABEL_119;
    }

    v113 = MEMORY[0x277D84FA0];
    if (v112 == 41)
    {
      v114 = &unk_2864ACE30;
LABEL_119:
      v113 = sub_2529FC004(v114);
    }

    if (*(v113 + 16))
    {
      sub_252E37EC4();
      MEMORY[0x2530AE390](45);
      v115 = sub_252E37F14();
      v116 = -1 << *(v113 + 32);
      v117 = v115 & ~v116;
      if ((*(v113 + 56 + ((v117 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v117))
      {
        v118 = ~v116;
        while (*(*(v113 + 48) + 8 * v117) != 45)
        {
          v117 = (v117 + 1) & v118;
          if (((*(v113 + 56 + ((v117 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v117) & 1) == 0)
          {
            goto LABEL_125;
          }
        }

        v130 = v10;
        goto LABEL_153;
      }
    }

LABEL_125:

    v119 = sub_252D4FE78(45);

    v85 = v10 & 0xC000000000000001;
    v83 = v137;
    v86 = v10 + 32;
    if (v119)
    {
      goto LABEL_156;
    }
  }

  v110 = ~v108;
  while (*(*(v106 + 48) + 8 * v109) != 45)
  {
    v109 = (v109 + 1) & v110;
    if (((*(v106 + 56 + ((v109 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v109) & 1) == 0)
    {
      goto LABEL_115;
    }
  }

  v130 = v10;
LABEL_153:
  sub_252929F10(v130, 0);

LABEL_154:

  return 1;
}

uint64_t sub_252B28410@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AddDefaultSwingModeHandler();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

BOOL sub_252B28444(void *a1)
{
  v2 = [a1 userTask];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 taskType];

    if (v4 != 1 || (sub_252CCFCB8() & 1) != 0)
    {
      return 0;
    }

    v5 = [a1 userTask];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 attribute];

      return v7 == 22;
    }
  }

  sub_252C515AC();
  return 0;
}

id sub_252B284F0(void *a1)
{
  v2 = sub_252E36AD4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 userTask];
  if (v6)
  {
    v7 = v6;
    type metadata accessor for MutableHomeUserTask();
    swift_allocObject();
    v8 = sub_252D6CA80(v7);
    v9 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());

    v10 = sub_252E36F04();
    v11 = [v9 initWithIdentifier:0 displayString:v10];

    v12 = v11;
    [v12 setBoolValue_];
    [v12 setType_];

    type metadata accessor for MutableAttributeValue();
    swift_allocObject();
    v13 = sub_252D6CC80(v12);
    swift_beginAccess();
    v8[4] = v13;
  }

  else
  {
    v8 = 0;
  }

  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v2, qword_27F544DA8);
  (*(v3 + 16))(v5, v14, v2);
  v24 = 0;
  v25 = 0xE000000000000000;
  sub_252E379F4();
  v27 = v24;
  v28 = v25;
  MEMORY[0x2530AD570](0xD00000000000003ELL, 0x8000000252E7D480);
  if (v8)
  {
    swift_beginAccess();
  }

  else
  {
    v15 = 0;
  }

  v26 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5434B0, &unk_252E4BE00);
  v16 = sub_252E36F94();
  MEMORY[0x2530AD570](v16);

  sub_252CC3D90(v27, v28, 0xD000000000000093, 0x8000000252E7D4C0);

  (*(v3 + 8))(v5, v2);
  if (v8)
  {

    v17 = sub_252D6CB58();
  }

  else
  {
    v17 = 0;
  }

  v18 = [a1 filters];
  if (v18)
  {
    v19 = v18;
    type metadata accessor for HomeFilter();
    v20 = sub_252E37264();
  }

  else
  {
    v20 = 0;
  }

  type metadata accessor for ControlHomeIntent();
  v21 = sub_252D473EC(v17, v20);

  return v21;
}

id sub_252B288A4(unint64_t a1)
{
  v1 = a1;
  v2 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_61;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    return 0;
  }

LABEL_3:
  v4 = 0;
  v5 = v1 & 0xC000000000000001;
  v6 = v1 & 0xFFFFFFFFFFFFFF8;
  while (v3 != v4)
  {
    if (v5)
    {
      v7 = MEMORY[0x2530ADF00](v4, v1);
    }

    else
    {
      if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_57;
      }

      v7 = *(v1 + 8 * v4 + 32);
    }

    v8 = v7;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      v3 = sub_252E378C4();
      if (!v3)
      {
        return 0;
      }

      goto LABEL_3;
    }

    v9 = [v7 outerDeviceType];

    ++v4;
    if (v9)
    {
      goto LABEL_17;
    }
  }

  v10 = type metadata accessor for HomeStore(0);
  v11 = static HomeStore.shared.getter(v10);
  if (v2)
  {
    type metadata accessor for HomeFilter();

    v2 = sub_252E37B14();
  }

  else
  {

    sub_252E37DD4();
    type metadata accessor for HomeFilter();
    v2 = v1;
  }

  v4 = HomeStore.services(matching:supporting:)(v2, 0);
  v8 = v12;

  if (v8)
  {
    sub_252929F10(v4, 1);
LABEL_17:
    if (v5)
    {
      goto LABEL_64;
    }

    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v14 = *(v1 + 32);
      goto LABEL_20;
    }

    __break(1u);
  }

  else
  {
    v8 = v4 & 0xFFFFFFFFFFFFFF8;
    if (!(v4 >> 62))
    {
      v39 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v39)
      {
LABEL_67:
        sub_252929F10(v4, 0);
        return 0;
      }

      goto LABEL_32;
    }
  }

  result = sub_252E378C4();
  v39 = result;
  if (!result)
  {
    goto LABEL_67;
  }

LABEL_32:
  v37 = v8;
  if ((v4 & 0xC000000000000001) != 0)
  {
    v38 = MEMORY[0x2530ADF00](0, v4);
  }

  else
  {
    if (!*(v8 + 16))
    {
      __break(1u);
      return result;
    }

    v38 = *(v4 + 32);
  }

  v6 = 0;
  v21 = OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate;
  v22 = &off_279711000;
  while (1)
  {
    if (v39 == v6)
    {
      sub_252929F10(v4, 0);
      v36 = sub_252CD941C();

      return v36;
    }

    if ((v4 & 0xC000000000000001) == 0)
    {
      break;
    }

    v2 = MEMORY[0x2530ADF00](v6, v4);
    if (__OFADD__(v6, 1))
    {
      goto LABEL_60;
    }

LABEL_45:
    v24 = [*&v2[OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate] v22[202]];
    v25 = sub_252E36F34();
    v27 = v26;

    if (qword_27F53F8B8 != -1)
    {
      swift_once();
    }

    v28 = off_27F546230;
    if (*(off_27F546230 + 2) && (v29 = sub_252A44A10(v25, v27), (v30 & 1) != 0))
    {
      v1 = *(v28[7] + 8 * v29);
    }

    else
    {
      v1 = 0;
    }

    v3 = v22;
    v31 = [*(v38 + v21) v22[202]];
    v5 = sub_252E36F34();
    v33 = v32;

    if (v28[2] && (v34 = sub_252A44A10(v5, v33), (v35 & 1) != 0))
    {
      v23 = *(v28[7] + 8 * v34);
    }

    else
    {
      v23 = 0;
    }

    v22 = v3;

    ++v6;
    if (v1 != v23)
    {
      sub_252929F10(v4, 0);

      return 0;
    }
  }

  if (v6 < *(v37 + 16))
  {
    v2 = *(v4 + 8 * v6 + 32);

    if (__OFADD__(v6, 1))
    {
      goto LABEL_60;
    }

    goto LABEL_45;
  }

  __break(1u);
LABEL_64:
  v14 = MEMORY[0x2530ADF00](0, v1);
LABEL_20:
  v15 = v14;
  for (i = 0; v3 != i; ++i)
  {
    if (v5)
    {
      v17 = MEMORY[0x2530ADF00](i, v1);
    }

    else
    {
      if (i >= *(v6 + 16))
      {
        goto LABEL_59;
      }

      v17 = *(v1 + 8 * i + 32);
    }

    v18 = v17;
    if (__OFADD__(i, 1))
    {
      goto LABEL_58;
    }

    v2 = [v17 deviceType];
    v19 = [v15 deviceType];

    if (v2 != v19)
    {

      return 0;
    }
  }

  v20 = [v15 outerDeviceType];

  return v20;
}

uint64_t sub_252B28D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a6;
  v7[13] = a7;
  v7[10] = a4;
  v7[11] = a5;
  v7[8] = a1;
  v7[9] = a3;
  v8 = sub_252E36324();
  v7[14] = v8;
  v7[15] = *(v8 - 8);
  v7[16] = swift_task_alloc();
  v7[17] = *(type metadata accessor for DisambiguationOption(0) - 8);
  v7[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v7[19] = swift_task_alloc();
  v7[20] = swift_task_alloc();
  v7[21] = swift_task_alloc();
  v7[22] = swift_task_alloc();
  v7[23] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_252B28ED0, 0, 0);
}

uint64_t sub_252B28ED0()
{
  v1 = [*(v0 + 64) userTask];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 value];

    if (v3)
    {
      v4 = [v3 type];

      if (v4 == 8)
      {
        sub_252B288A4(*(v0 + 72));
        if (qword_27F53F2A0 != -1)
        {
          swift_once();
        }

        if (*(off_27F541CD0 + 2) && (sub_252A488EC(), (v5 & 1) != 0))
        {
          AccessoryTypeSemantic.rawValue.getter();
          sub_252E362F4();
          v6 = 0;
        }

        else
        {
          v6 = 1;
        }

        v7 = *(v0 + 176);
        v8 = *(v0 + 184);
        (*(*(v0 + 120) + 56))(v7, v6, 1, *(v0 + 112));
        swift_beginAccess();
        sub_252A909F4(v7, v8, &qword_27F540298, &unk_252E3C270);
      }
    }
  }

  v34 = *(v0 + 88);

  sub_25297C39C(v9);
  v10 = *(v34 + 16);
  if (v10)
  {
    v11 = *(v0 + 136);
    v31 = *(v0 + 120);
    v12 = v34 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v32 = (v31 + 32);
    v33 = *(v11 + 72);
    v13 = MEMORY[0x277D84F90];
    do
    {
      v15 = *(v0 + 144);
      v14 = *(v0 + 152);
      v16 = *(v0 + 112);
      sub_252B2A9C0(v12, v15);
      sub_252E37024();
      (*(v31 + 56))(v14, 0, 1, v16);
      sub_252B2AA24(v15, type metadata accessor for DisambiguationOption);
      if ((*(v31 + 48))(v14, 1, v16) == 1)
      {
        sub_252938BBC(*(v0 + 152));
      }

      else
      {
        v17 = *v32;
        (*v32)(*(v0 + 128), *(v0 + 152), *(v0 + 112));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_2529F7F74(0, *(v13 + 2) + 1, 1, v13);
        }

        v19 = *(v13 + 2);
        v18 = *(v13 + 3);
        if (v19 >= v18 >> 1)
        {
          v13 = sub_2529F7F74((v18 > 1), v19 + 1, 1, v13);
        }

        v20 = *(v0 + 128);
        v21 = *(v0 + 112);
        *(v13 + 2) = v19 + 1;
        v17(&v13[((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v19], v20, v21);
      }

      v12 += v33;
      --v10;
    }

    while (v10);
  }

  else
  {

    v13 = MEMORY[0x277D84F90];
  }

  *(v0 + 192) = v13;
  v22 = *(v0 + 184);
  v24 = *(v0 + 160);
  v23 = *(v0 + 168);
  v26 = *(v0 + 112);
  v25 = *(v0 + 120);
  sub_252BEBD04(*(v0 + 104));
  sub_252E37024();

  (*(v25 + 56))(v23, 0, 1, v26);
  swift_beginAccess();
  sub_252956C1C(v22, v24);
  v27 = swift_task_alloc();
  *(v0 + 200) = v27;
  *v27 = v0;
  v27[1] = sub_252B29300;
  v29 = *(v0 + 160);
  v28 = *(v0 + 168);

  return sub_252D27C94(v13, v28, v29);
}

uint64_t sub_252B29300(uint64_t a1)
{
  v4 = *v2;
  v4[26] = v1;

  if (v1)
  {
    v5 = v4[21];
    sub_252938BBC(v4[20]);
    sub_252938BBC(v5);

    return MEMORY[0x2822009F8](sub_252B294E0, 0, 0);
  }

  else
  {
    v6 = v4[21];
    sub_252938BBC(v4[20]);
    sub_252938BBC(v6);

    v7 = v4[1];

    return v7(a1);
  }
}

uint64_t sub_252B294E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252B29588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  v5[8] = a1;
  v5[9] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v5[15] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_252B29650, 0, 0);
}

uint64_t sub_252B29650()
{
  v1 = [*(v0 + 64) userTask];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 value];

    if (v3)
    {
      v4 = [v3 type];

      if (v4 == 8)
      {
        sub_252B288A4(*(v0 + 72));
        if (qword_27F53F2A0 != -1)
        {
          swift_once();
        }

        if (*(off_27F541CD0 + 2) && (sub_252A488EC(), (v5 & 1) != 0))
        {
          AccessoryTypeSemantic.rawValue.getter();
          sub_252E362F4();
          v6 = 0;
        }

        else
        {
          v6 = 1;
        }

        v8 = *(v0 + 112);
        v7 = *(v0 + 120);
        v9 = sub_252E36324();
        (*(*(v9 - 8) + 56))(v8, v6, 1, v9);
        swift_beginAccess();
        sub_252A909F4(v8, v7, &qword_27F540298, &unk_252E3C270);
      }
    }
  }

  v10 = *(v0 + 120);
  v12 = *(v0 + 96);
  v11 = *(v0 + 104);
  sub_252BEBD04(*(v0 + 88));
  sub_252E37024();

  v13 = sub_252E36324();
  (*(*(v13 - 8) + 56))(v11, 0, 1, v13);
  swift_beginAccess();
  sub_252956C1C(v10, v12);
  v14 = swift_task_alloc();
  *(v0 + 128) = v14;
  *v14 = v0;
  v14[1] = sub_252B298E0;
  v15 = *(v0 + 96);
  v16 = *(v0 + 104);

  return sub_252D28210(v16, v15);
}

uint64_t sub_252B298E0(uint64_t a1)
{
  v4 = *v2;
  v4[17] = v1;

  if (v1)
  {
    v5 = v4[13];
    sub_252938BBC(v4[12]);
    sub_252938BBC(v5);

    return MEMORY[0x2822009F8](sub_252B29A6C, 0, 0);
  }

  else
  {
    v6 = v4[13];
    sub_252938BBC(v4[12]);
    sub_252938BBC(v6);

    v7 = v4[1];

    return v7(a1);
  }
}

uint64_t sub_252B29A6C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252B29AE4(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5434B8, &qword_252E4BE48);
  v5[7] = swift_task_alloc();
  v9 = (a2 + *a2);
  v7 = swift_task_alloc();
  v5[8] = v7;
  *v7 = v5;
  v7[1] = sub_252B29C14;

  return v9();
}

uint64_t sub_252B29C14(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 72) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_252B29D64, 0, 0);
  }
}

uint64_t sub_252B29D64()
{
  v1 = [*(v0 + 72) dialog];
  sub_252B2A974();
  v2 = sub_252E37264();

  if (v2 >> 62)
  {
    result = sub_252E378C4();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    v22 = 0xE000000000000000;
    v23 = 0;
    goto LABEL_9;
  }

  result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x2530ADF00](0, v2);
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v4 = *(v2 + 32);
  }

  v5 = v4;

  v6 = [v5 fullPrint];

  v7 = sub_252E36F34();
  v22 = v8;
  v23 = v7;

LABEL_9:
  v9 = *(v0 + 48);
  v10 = *(v9 + 16);
  v11 = type metadata accessor for DisambiguationOption(0);
  v12 = *(v11 - 8);
  if (v10)
  {
    sub_252B2A9C0(v9 + ((*(*(v11 - 8) + 80) + 32) & ~*(*(v11 - 8) + 80)), *(v0 + 56));
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = *(v0 + 72);
  v15 = *(v0 + 56);
  v16 = *(v0 + 32);
  v17 = *(v0 + 40);
  v18 = *(v12 + 56);
  v18(v15, v13, 1, v11);
  v19 = type metadata accessor for DisambiguationSnippetModel(0);
  v20 = *(v19 + 24);
  v18(v16 + v20, 1, 1, v11);
  *(v0 + 16) = v23;
  *(v0 + 24) = v22;
  sub_252E330C4();

  *(v16 + *(v19 + 20)) = v17;

  sub_252A909F4(v15, v16 + v20, &qword_27F5434B8, &qword_252E4BE48);
  type metadata accessor for HomeAutomationSnippetModels(0);
  swift_storeEnumTagMultiPayload();

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_252B29FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = type metadata accessor for HomeAutomationDisambiguateFiltersParameters(0);
  v4[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v4[8] = swift_task_alloc();
  v5 = sub_252E36324();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252B2A114, 0, 0);
}

uint64_t sub_252B2A114()
{
  v1 = *(v0 + 24);
  __swift_project_boxed_opaque_existential_1(*(v0 + 16), *(*(v0 + 16) + 24));
  if (v1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v3 = 0;
    v26 = v1 & 0xFFFFFFFFFFFFFF8;
    v28 = v1 & 0xC000000000000001;
    v24 = *(v0 + 80);
    v25 = *(v0 + 24) + 32;
    v1 = v24 + 32;
    v4 = MEMORY[0x277D84F90];
    while (v28)
    {
      v5 = MEMORY[0x2530ADF00](v3, *(v0 + 24));
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_17;
      }

LABEL_9:
      v8 = *(v0 + 64);
      v7 = *(v0 + 72);
      sub_252956C1C(v5 + OBJC_IVAR____TtC22HomeAutomationInternal29HomeAutomationTappableCommand_label, v8);

      if ((*(v24 + 48))(v8, 1, v7) == 1)
      {
        sub_252938BBC(*(v0 + 64));
      }

      else
      {
        v9 = *v1;
        (*v1)(*(v0 + 88), *(v0 + 64), *(v0 + 72));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_2529F7F74(0, *(v4 + 2) + 1, 1, v4);
        }

        v11 = *(v4 + 2);
        v10 = *(v4 + 3);
        if (v11 >= v10 >> 1)
        {
          v4 = sub_2529F7F74((v10 > 1), v11 + 1, 1, v4);
        }

        v12 = *(v0 + 88);
        v13 = *(v0 + 72);
        *(v4 + 2) = v11 + 1;
        v9(&v4[((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v11], v12, v13);
      }

      ++v3;
      if (v6 == i)
      {
        goto LABEL_21;
      }
    }

    if (v3 >= *(v26 + 16))
    {
      goto LABEL_18;
    }

    v5 = *(v25 + 8 * v3);

    v6 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_9;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v4 = MEMORY[0x277D84F90];
LABEL_21:
  v14 = *(v0 + 72);
  v16 = *(v0 + 48);
  v15 = *(v0 + 56);
  v18 = *(v0 + 32);
  v17 = *(v0 + 40);
  v19 = *(v0 + 24);
  v20 = *(*(v0 + 80) + 56);
  v20(v15, 1, 1, v14);
  v20(v15 + v16[5], 1, 1, v14);
  v20(v15 + v16[6], 1, 1, v14);
  *(v15 + v16[7]) = v4;
  *(v15 + v16[8]) = 0;
  *(v15 + v16[9]) = v19;

  sub_252B2A714(v15, v18, v17);
  v21 = sub_252C06A24();
  *(v0 + 96) = v21;
  v27 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v22 = swift_task_alloc();
  *(v0 + 104) = v22;
  *v22 = v0;
  v22[1] = sub_252B2A484;

  return v27(0xD000000000000022, 0x8000000252E7D560, v21);
}

uint64_t sub_252B2A484(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v5 = sub_252B2A674;
  }

  else
  {
    *(v4 + 120) = a1;
    v5 = sub_252B2A5D0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252B2A5D0()
{
  sub_252B2AA24(v0[7], type metadata accessor for HomeAutomationDisambiguateFiltersParameters);

  v1 = v0[1];
  v2 = v0[15];

  return v1(v2);
}

uint64_t sub_252B2A674()
{
  sub_252B2AA24(*(v0 + 56), type metadata accessor for HomeAutomationDisambiguateFiltersParameters);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252B2A714(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v20[-v10];
  sub_252E37024();
  v12 = sub_252E36324();
  v13 = *(*(v12 - 8) + 56);
  v13(v11, 0, 1, v12);
  sub_252A909F4(v11, a1, &qword_27F540298, &unk_252E3C270);
  sub_252BAFC18(a2);
  if (qword_27F53F2A0 != -1)
  {
    swift_once();
  }

  v14 = off_27F541CD0;
  if (*(off_27F541CD0 + 2) && (v15 = sub_252A488EC(), (v16 & 1) != 0))
  {
    v20[15] = *(v14[7] + v15);
    AccessoryTypeSemantic.rawValue.getter();
    sub_252E362F4();
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  v13(v9, v17, 1, v12);
  v18 = type metadata accessor for HomeAutomationDisambiguateFiltersParameters(0);
  sub_252A909F4(v9, a1 + *(v18 + 20), &qword_27F540298, &unk_252E3C270);
  sub_252BEBD04(a3);
  sub_252E37024();

  v13(v11, 0, 1, v12);
  return sub_252A909F4(v11, a1 + *(v18 + 24), &qword_27F540298, &unk_252E3C270);
}

unint64_t sub_252B2A974()
{
  result = qword_27F542128;
  if (!qword_27F542128)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F542128);
  }

  return result;
}

uint64_t sub_252B2A9C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DisambiguationOption(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_252B2AA24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_252B2AAC8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ToggleHandler();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

BOOL sub_252B2AAFC(void *a1)
{
  v2 = [a1 userTask];
  if (!v2)
  {
    goto LABEL_12;
  }

  v3 = v2;
  v4 = [v2 taskType];

  if (v4 == 1)
  {
    v5 = [a1 userTask];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 value];

      if (v7)
      {

        return 0;
      }
    }

    v8 = [a1 userTask];
    if (v8)
    {
      v9 = v8;
      v10 = [v8 attribute];

      if (v10 == 12)
      {
        return 1;
      }
    }

    else
    {
      sub_252C515AC();
    }

    v12 = [a1 userTask];
    if (v12)
    {
      v13 = v12;
      v14 = [v12 attribute];

      return v14 == 27;
    }

LABEL_12:
    sub_252C515AC();
  }

  return 0;
}

id sub_252B2AC2C(void *a1)
{
  v2 = [a1 userTask];
  if (v2)
  {
    type metadata accessor for MutableHomeUserTask();
    swift_allocObject();
    sub_252D6CA80(v2)[2] = 6;

    v2 = sub_252D6CB58();
  }

  v3 = [a1 filters];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for HomeFilter();
    v5 = sub_252E37264();
  }

  else
  {
    v5 = 0;
  }

  v6 = [a1 time];
  v7 = [objc_allocWithZone(type metadata accessor for ControlHomeIntent()) init];
  [v7 setUserTask_];
  if (v5)
  {
    type metadata accessor for HomeFilter();
    v8 = sub_252E37254();
  }

  else
  {
    v8 = 0;
  }

  [v7 setFilters_];

  [v7 setTime_];

  return v7;
}

BOOL sub_252B2ADC8(id a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

    return 0;
  }

LABEL_14:
  v4 = sub_252E378C4();
  if (!v4)
  {
    return 0;
  }

LABEL_3:
  v5 = 0;
  do
  {
    v6 = v4 != v5;
    if (v4 == v5)
    {
      break;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x2530ADF00](v5, a2);
    }

    else
    {
      if (v5 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v7 = *(a2 + 8 * v5 + 32);
    }

    v8 = v7;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    v9 = [v7 entityType];

    ++v5;
  }

  while (v9 != a1);
  return v6;
}

uint64_t sub_252B2AEC0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270) - 8);
  v3[5] = v4;
  v3[6] = *(v4 + 64);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252B2AFB8, 0, 0);
}

uint64_t sub_252B2AFB8(uint64_t a1)
{
  sub_252C4BEAC();
  if (v2)
  {
    sub_252E37024();

    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = v1[10];
  v5 = sub_252E36324();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, v3, 1, v5);
  sub_252C51E70();
  if (!v7)
  {
    sub_252C51FFC();
    if (v9)
    {

      sub_252C51FFC();
      if (!v10)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_252C4BEAC();
      if (!v11)
      {
        goto LABEL_13;
      }

      sub_252C4BEAC();
      if (!v12)
      {
        goto LABEL_13;
      }
    }

LABEL_12:
    sub_252E37024();

    v13 = 0;
    goto LABEL_14;
  }

  sub_252C51E70();
  if (v8)
  {
    goto LABEL_12;
  }

LABEL_13:
  v13 = 1;
LABEL_14:
  v14 = 1;
  v6(v1[9], v13, 1, v5);
  if ((sub_252C4B680(0x24) & 1) == 0)
  {
    v14 = sub_252C4B680(0x29);
  }

  v31 = v14;
  v15 = v1[9];
  v16 = v1[10];
  v17 = v1[7];
  v18 = v1[8];
  v20 = v1[5];
  v19 = v1[6];
  v21 = v1[4];
  v22 = v21[12];
  v32 = v21[13];
  v33 = v15;
  __swift_project_boxed_opaque_existential_1(v21 + 9, v22);
  sub_252956C1C(v15, v18);
  v23 = v17;
  sub_252956C1C(v16, v17);
  v24 = *(v20 + 80);
  v25 = (v24 + 24) & ~v24;
  v26 = (v19 + v24 + v25) & ~v24;
  v27 = v26 + v19;
  v28 = swift_allocObject();
  *(v28 + 16) = v21;
  sub_2529439A0(v18, v28 + v25);
  sub_2529439A0(v23, v28 + v26);
  *(v28 + v27) = v31 & 1;

  sub_252943BD0(sub_252B2DBF0, v28, 1, v22, v32);

  sub_25293847C(v33, &qword_27F540298, &unk_252E3C270);
  sub_25293847C(v16, &qword_27F540298, &unk_252E3C270);

  v29 = v1[1];

  return v29();
}

uint64_t sub_252B2B2B0@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v21[1] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v21 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_252E3C280;
  *(v14 + 32) = 0xD00000000000001ELL;
  *(v14 + 40) = 0x8000000252E6DE40;
  sub_252956C1C(a2, v13);
  v15 = sub_252E36324();
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  if (v17(v13, 1, v15) == 1)
  {

    sub_25293847C(v13, &qword_27F540298, &unk_252E3C270);
    *(v14 + 48) = 0u;
    *(v14 + 64) = 0u;
  }

  else
  {
    *(v14 + 72) = v15;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v14 + 48));
    (*(v16 + 32))(boxed_opaque_existential_0, v13, v15);
  }

  *(v14 + 80) = 0x656D614E656D6F68;
  *(v14 + 88) = 0xE800000000000000;
  sub_252956C1C(a3, v11);
  if (v17(v11, 1, v15) == 1)
  {
    sub_25293847C(v11, &qword_27F540298, &unk_252E3C270);
    *(v14 + 96) = 0u;
    *(v14 + 112) = 0u;
  }

  else
  {
    *(v14 + 120) = v15;
    v19 = __swift_allocate_boxed_opaque_existential_0((v14 + 96));
    (*(v16 + 32))(v19, v11, v15);
  }

  *(v14 + 128) = 0x7571655256547369;
  *(v14 + 136) = 0xEB00000000747365;
  *(v14 + 168) = MEMORY[0x277D839B0];
  *(v14 + 144) = a4 & 1;
  sub_252E362B4();
}

uint64_t sub_252B2B588(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_252E34014();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252B2B654, 0, 0);
}

uint64_t sub_252B2B654(uint64_t a1)
{
  v2 = v1[8];
  v3 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(a1);
  sub_252929E74((v3 + 288), (v1 + 2));

  v4 = v1[5];
  v5 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v4);
  v6 = (*(v5 + 120))(v4, v5);
  __swift_destroy_boxed_opaque_existential_1(v1 + 2);
  v7 = *(v2 + 96);
  __swift_project_boxed_opaque_existential_1((v2 + 72), v7);
  if (v6)
  {
    sub_252B03B94();
    v8 = swift_task_alloc();
    v1[13] = v8;
    *v8 = v1;
    v8[1] = sub_252B2B87C;
    v9 = v1[12];
    v10 = v1[7];
    v11 = v1[8];

    return sub_252A199A8(v10, &unk_252E4BF78, v11, &unk_252E4BF80, 0, v9, 0, 0);
  }

  else
  {
    sub_252AD7CC4();
    v13 = swift_task_alloc();
    v1[15] = v13;
    *v13 = v1;
    v13[1] = sub_252B2BA30;
    v14 = v1[11];
    v15 = v1[7];
    v16 = v1[8];

    return sub_252BDB88C(v15, &unk_252E4BF68, v16, v14, 0, 0, 0, v7);
  }
}

uint64_t sub_252B2B87C()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *v1;
  *(v5 + 112) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_252B2BBE4, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_252B2BA30()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v4 = *(*v1 + 72);
  v5 = *v1;
  *(v5 + 128) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_252B2BC50, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_252B2BBE4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252B2BC50()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252B2BCBC(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v1[3] = swift_task_alloc();
  v1[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252B2BD64, 0, 0);
}

uint64_t sub_252B2BD64()
{
  v2 = v0[3];
  v1 = v0[4];
  v0[5] = *(v0[2] + 64);
  v3 = sub_252E36324();
  v4 = *(*(v3 - 8) + 56);
  v4(v1, 1, 1, v3);
  v4(v2, 1, 1, v3);

  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_252B2BE88;
  v6 = v0[3];
  v7 = v0[4];

  return sub_252D28554(v7, v6, 0);
}

uint64_t sub_252B2BE88(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 56) = v1;

  v6 = *(v4 + 32);
  sub_25293847C(*(v4 + 24), &qword_27F540298, &unk_252E3C270);
  sub_25293847C(v6, &qword_27F540298, &unk_252E3C270);
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_252B2C064, 0, 0);
  }

  else
  {

    v7 = *(v5 + 8);

    return v7(a1);
  }
}

uint64_t sub_252B2C064()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252B2C0D0(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v1[3] = swift_task_alloc();
  v1[4] = type metadata accessor for HomeAutomationFoundNoMatchingEntitiesParameters(0);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252B2C19C, 0, 0);
}

uint64_t sub_252B2C19C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  __swift_project_boxed_opaque_existential_1((v0[2] + 24), *(v0[2] + 48));
  v4 = sub_252E36324();
  v5 = *(*(v4 - 8) + 56);
  v5(v1, 1, 1, v4);
  v5(v1 + v2[7], 1, 1, v4);
  v5(v1 + v2[9], 1, 1, v4);
  *(v1 + v2[5]) = 0;
  v6 = v1 + v2[6];
  *v6 = 0;
  *(v6 + 8) = 1;
  *(v1 + v2[8]) = 0;
  *v6 = 0x4014000000000000;
  *(v6 + 8) = 0;
  sub_252E37024();
  v5(v3, 0, 1, v4);
  sub_252956C98(v3, v1);
  v7 = sub_252C07368();
  v0[6] = v7;
  v10 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v8 = swift_task_alloc();
  v0[7] = v8;
  *v8 = v0;
  v8[1] = sub_252B2C3A0;

  return v10(0xD000000000000026, 0x8000000252E6DE60, v7);
}

uint64_t sub_252B2C3A0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = sub_252B2C56C;
  }

  else
  {
    *(v4 + 72) = a1;
    v5 = sub_252B2C4EC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252B2C4EC()
{
  sub_252B2DA74(v0[5]);

  v1 = v0[1];
  v2 = v0[9];

  return v1(v2);
}

uint64_t sub_252B2C56C()
{
  sub_252B2DA74(*(v0 + 40));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252B2C5E8(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_252E34014();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252B2C6B8, 0, 0);
}

uint64_t sub_252B2C6B8()
{
  *(v0 + 152) = 5;
  v1 = (v0 + 152);
  v2 = [*(v0 + 64) filters];
  if (v2)
  {
    v3 = v2;
    type metadata accessor for HomeFilter();
    v4 = sub_252E37264();

    LOBYTE(v3) = sub_252B2ADC8(6, v4);

    if (v3)
    {
      *v1 = 6;
    }
  }

  v5 = *(v0 + 72);
  v6 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v2);
  sub_252929E74((v6 + 288), v0 + 16);

  v7 = *(v0 + 40);
  v8 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v7);
  LOBYTE(v8) = (*(v8 + 120))(v7, v8);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v9 = *(v5 + 96);
  __swift_project_boxed_opaque_existential_1((v5 + 72), v9);
  if (v8)
  {
    sub_252B03B94();
    v10 = swift_task_alloc();
    *(v0 + 112) = v10;
    *v10 = v0;
    v10[1] = sub_252B2C980;
    v11 = *(v0 + 104);
    v12 = *(v0 + 72);
    v13 = *(v0 + 56);

    return sub_252A199A8(v13, &unk_252E4BF48, v12, &unk_252E4BF50, 0, v11, 0, 0);
  }

  else
  {
    v15 = *(v0 + 72);
    v16 = swift_task_alloc();
    *(v0 + 128) = v16;
    *(v16 + 16) = v15;
    *(v16 + 24) = v1;
    sub_252AD7CC4();
    v17 = swift_task_alloc();
    *(v0 + 136) = v17;
    *v17 = v0;
    v17[1] = sub_252B2CB5C;
    v18 = *(v0 + 96);
    v19 = *(v0 + 56);

    return sub_252BDB88C(v19, &unk_252E4BF38, v16, v18, 0, 0, 0, v9);
  }
}

uint64_t sub_252B2C980()
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  *(*v1 + 120) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_252B2CCDC;
  }

  else
  {
    v5 = sub_252B2CAF0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252B2CAF0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252B2CB5C()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  *(*v1 + 144) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_252B2CD48;
  }

  else
  {

    v5 = sub_252B2DCA0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252B2CCDC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252B2CD48()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252B2CDBC(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v1[3] = swift_task_alloc();
  v1[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252B2CE64, 0, 0);
}

uint64_t sub_252B2CE64()
{
  v2 = v0[3];
  v1 = v0[4];
  v0[5] = *(v0[2] + 64);
  v3 = sub_252E36324();
  v4 = *(*(v3 - 8) + 56);
  v4(v1, 1, 1, v3);
  v4(v2, 1, 1, v3);

  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_252B2CF88;
  v6 = v0[3];
  v7 = v0[4];

  return sub_252D28554(v7, v6, 0);
}

uint64_t sub_252B2CF88(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 56) = v1;

  v6 = *(v4 + 32);
  sub_25293847C(*(v4 + 24), &qword_27F540298, &unk_252E3C270);
  sub_25293847C(v6, &qword_27F540298, &unk_252E3C270);
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_252B2DCA8, 0, 0);
  }

  else
  {

    v7 = *(v5 + 8);

    return v7(a1);
  }
}

uint64_t sub_252B2D184(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v2[4] = swift_task_alloc();
  v2[5] = type metadata accessor for HomeAutomationFoundNoMatchingEntitiesParameters(0);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252B2D250, 0, 0);
}

uint64_t sub_252B2D250()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  __swift_project_boxed_opaque_existential_1((v0[2] + 24), *(v0[2] + 48));
  v4 = sub_252E36324();
  v5 = *(*(v4 - 8) + 56);
  v5(v1, 1, 1, v4);
  v5(v1 + v2[7], 1, 1, v4);
  v5(v1 + v2[9], 1, 1, v4);
  *(v1 + v2[5]) = 0;
  v6 = v1 + v2[6];
  *v6 = 0;
  *(v6 + 8) = 1;
  *(v1 + v2[8]) = 0;
  v7 = v0[6];
  v8 = v0[4];
  *v6 = qword_252E4BF90[*v3];
  *(v6 + 8) = 0;
  sub_252E37024();
  v5(v8, 0, 1, v4);
  sub_252956C98(v8, v7);
  v9 = sub_252C07368();
  v0[7] = v9;
  v12 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v10 = swift_task_alloc();
  v0[8] = v10;
  *v10 = v0;
  v10[1] = sub_252B2D46C;

  return v12(0xD000000000000026, 0x8000000252E6DE60, v9);
}

uint64_t sub_252B2D46C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_252B2D638;
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = sub_252B2D5B8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252B2D5B8()
{
  sub_252B2DA74(v0[6]);

  v1 = v0[1];
  v2 = v0[10];

  return v1(v2);
}

uint64_t sub_252B2D638()
{
  sub_252B2DA74(*(v0 + 48));

  v1 = *(v0 + 8);

  return v1();
}

BOOL sub_252B2D6D8(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = OBJC_IVAR___ControlHomeIntentResponse_code;
  swift_beginAccess();
  return *(a2 + v2) == 102;
}

uint64_t sub_252B2D73C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25293B808;

  return sub_252B2AEC0(a1, a2);
}

BOOL sub_252B2D7E8(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR___DiscoverHomeIntentResponse_code;
  swift_beginAccess();
  return *(a2 + v3) == 100;
}

uint64_t sub_252B2D83C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25294B954;

  return sub_252B2C5E8(a1, a2);
}

void *sub_252B2D8E8@<X0>(const void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for FoundNoMatchingEntitiesResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

uint64_t sub_252B2D94C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25294B958;

  return sub_252B2D184(v2, v3);
}

uint64_t sub_252B2D9E4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_25294B958;

  return sub_252B2CDBC(v0);
}

uint64_t sub_252B2DA74(uint64_t a1)
{
  found = type metadata accessor for HomeAutomationFoundNoMatchingEntitiesParameters(0);
  (*(*(found - 8) + 8))(a1, found);
  return a1;
}

uint64_t sub_252B2DAD0()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_25294B958;

  return sub_252B2C0D0(v0);
}

uint64_t sub_252B2DB60()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_25294B7BC;

  return sub_252B2BCBC(v0);
}

uint64_t sub_252B2DBF0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270) - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);
  v7 = v1 + ((v6 + v4 + v5) & ~v4);
  v8 = *(v7 + v6);

  return sub_252B2B2B0(v1 + v5, v7, v8, a1);
}

uint64_t DateAttributeSemantic.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_252E37B74();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_252B2DD30()
{
  sub_252E37EC4();
  sub_252E37044();
  return sub_252E37F14();
}

uint64_t sub_252B2DD9C(uint64_t a1)
{
  sub_252E37EC4();
  sub_252E37044();
  return sub_252E37F14();
}

uint64_t sub_252B2DDEC@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_252E37B74();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_252B2DF1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_252B2E10C();
  v5 = sub_252B2E160();
  v6 = sub_252B2E1B4();

  return MEMORY[0x2821C21F8](a1, a2, v4, v5, v6);
}

unint64_t sub_252B2DF90()
{
  result = qword_27F5434C0;
  if (!qword_27F5434C0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DateAttributeSemantic, &type metadata for DateAttributeSemantic, v0, v1);
    atomic_store(result, &qword_27F5434C0);
  }

  return result;
}

unint64_t sub_252B2DFE8()
{
  result = qword_27F5434C8;
  if (!qword_27F5434C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DateAttributeSemantic, &type metadata for DateAttributeSemantic, v0, v1);
    atomic_store(result, &qword_27F5434C8);
  }

  return result;
}

unint64_t sub_252B2E040()
{
  result = qword_27F5434D0;
  if (!qword_27F5434D0)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5434D8, &qword_252E4C0F0);
    result = swift_getWitnessTable(MEMORY[0x277D83988], v3, v0, v1);
    atomic_store(result, &qword_27F5434D0);
  }

  return result;
}

unint64_t sub_252B2E0A8()
{
  result = qword_27F5434E0;
  if (!qword_27F5434E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DateAttributeSemantic, &type metadata for DateAttributeSemantic, v0, v1);
    atomic_store(result, &qword_27F5434E0);
  }

  return result;
}

unint64_t sub_252B2E10C()
{
  result = qword_27F5434E8;
  if (!qword_27F5434E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DateAttributeSemantic, &type metadata for DateAttributeSemantic, v0, v1);
    atomic_store(result, &qword_27F5434E8);
  }

  return result;
}

unint64_t sub_252B2E160()
{
  result = qword_27F5434F0;
  if (!qword_27F5434F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DateAttributeSemantic, &type metadata for DateAttributeSemantic, v0, v1);
    atomic_store(result, &qword_27F5434F0);
  }

  return result;
}

unint64_t sub_252B2E1B4()
{
  result = qword_27F5434F8;
  if (!qword_27F5434F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DateAttributeSemantic, &type metadata for DateAttributeSemantic, v0, v1);
    atomic_store(result, &qword_27F5434F8);
  }

  return result;
}

void *sub_252B2E20C(uint64_t a1)
{
  v32 = sub_252E32E84();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v31 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x277D84F90];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_252E37874();
    sub_25292A2F8();
    sub_252B307F8(&qword_27F53FBB0, sub_25292A2F8, MEMORY[0x277D85378]);
    result = sub_252E373E4();
    a1 = v35;
    v5 = v36;
    v6 = v37;
    v7 = v38;
    v8 = v39;
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v5 = a1 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(a1 + 56);

    v7 = 0;
  }

  v28[1] = v6;
  v30 = (v2 + 8);
  v12 = MEMORY[0x277D84F90];
  v29 = v5;
  if (a1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v13 = v7;
    v14 = v8;
    v15 = v7;
    if (!v8)
    {
      break;
    }

LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(a1 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v17)
    {
LABEL_27:
      sub_25291AE30(a1);
      return v12;
    }

    while (1)
    {
      v19 = a1;
      type metadata accessor for Action();
      v20 = swift_allocObject();
      *(v20 + 16) = v17;
      v21 = v17;
      v22 = [v21 uniqueIdentifier];
      v23 = v31;
      sub_252E32E64();

      v24 = sub_252E32E24();
      v26 = v25;
      (*v30)(v23, v32);
      *(v20 + 24) = v24;
      *(v20 + 32) = v26;
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v27 = 1;
        a1 = v19;
      }

      else
      {
        objc_opt_self();
        a1 = v19;
        if (swift_dynamicCastObjCClass())
        {
          v27 = 2;
        }

        else
        {
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            v27 = 3;
          }

          else
          {
            objc_opt_self();
            v27 = 4 * (swift_dynamicCastObjCClass() != 0);
          }
        }
      }

      *(v20 + 40) = v27;
      MEMORY[0x2530AD700]();
      if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      result = sub_252E372D4();
      v12 = v40;
      v7 = v15;
      v8 = v16;
      v5 = v29;
      if ((a1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v18 = sub_252E37904();
      if (v18)
      {
        v33 = v18;
        sub_25292A2F8();
        swift_dynamicCast();
        v17 = v34;
        v15 = v7;
        v16 = v8;
        if (v34)
        {
          continue;
        }
      }

      goto LABEL_27;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= ((v6 + 64) >> 6))
    {
      goto LABEL_27;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void *sub_252B2E608()
{
  v1 = [*(v0 + OBJC_IVAR____TtC22HomeAutomationInternal5Scene_delegate) actions];
  sub_25292A2F8();
  sub_252B307F8(&qword_27F53FBB0, sub_25292A2F8, MEMORY[0x277D85378]);
  v2 = sub_252E373A4();

  v3 = sub_252B2E20C(v2);

  return v3;
}

void *sub_252B2E718(void *a1)
{
  v3 = sub_252E32E84();
  v44 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540488, &unk_252E3C940);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v37 - v8;
  v10 = a1[3];
  v49 = a1;
  v11 = __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_252950A0C();
  sub_252E37F74();
  if (v1)
  {
LABEL_3:
    __swift_destroy_boxed_opaque_existential_1(v49);
    type metadata accessor for Scene(0);
    swift_deallocPartialClassInstance();
    return v11;
  }

  v12 = v7;
  LOBYTE(v46[0]) = 0;
  sub_252B307F8(&qword_27F540498, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  sub_252E37C64();
  LOBYTE(v47) = 1;
  sub_252950A60();
  sub_252E37C64();
  v13 = v46[0];
  LOBYTE(v46[0]) = 2;
  v41 = sub_252E37C04();
  v42 = v13;
  v43 = v14;
  LOBYTE(v46[0]) = 3;
  v15 = sub_252E37BA4();
  v18 = v17;
  v38 = v9;
  v40 = v3;
  v19 = v15;
  v20 = type metadata accessor for HomeStore(0);
  v21 = static HomeStore.shared.getter(v20);
  v22 = sub_2529DA828();

  MEMORY[0x28223BE20](v23);
  v39 = v5;
  v24 = v41;
  v25 = v42;
  *(&v37 - 6) = v5;
  *(&v37 - 5) = v24;
  *(&v37 - 4) = v43;
  *(&v37 - 3) = v19;
  *(&v37 - 2) = v18;
  *(&v37 - 1) = v25;
  v26 = v18;
  v27 = sub_2529A3DE8(sub_252B307D0, (&v37 - 8), v22);
  v37 = 0;

  if (!v27)
  {
    v37 = v19;
    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v31 = sub_252E36AD4();
    v32 = __swift_project_value_buffer(v31, qword_27F544CB8);
    sub_252CC4050(0xD000000000000022, 0x8000000252E7D640, 0xD00000000000006BLL, 0x8000000252E7D670, 0x6F72662874696E69, 0xEB00000000293A6DLL, 46);
    strcpy(v46, "identifier: ");
    BYTE5(v46[1]) = 0;
    HIWORD(v46[1]) = -5120;
    sub_252B307F8(&qword_27F5404A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v33 = sub_252E37D94();
    MEMORY[0x2530AD570](v33);

    sub_252CC4050(v46[0], v46[1], 0xD00000000000006BLL, 0x8000000252E7D670, 0x6F72662874696E69, 0xEB00000000293A6DLL, 47);

    v46[0] = 0x203A656D616ELL;
    v46[1] = 0xE600000000000000;
    MEMORY[0x2530AD570](v41, v43);

    sub_252CC4050(v46[0], v46[1], 0xD00000000000006BLL, 0x8000000252E7D670, 0x6F72662874696E69, 0xEB00000000293A6DLL, 48);

    v46[0] = 0;
    v46[1] = 0xE000000000000000;
    sub_252E379F4();

    v46[0] = 0xD000000000000015;
    v46[1] = 0x8000000252E6AA20;
    v47 = v37;
    v48 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
    v34 = sub_252E36F94();
    MEMORY[0x2530AD570](v34);

    sub_252CC4050(v46[0], v46[1], 0xD00000000000006BLL, 0x8000000252E7D670, 0x6F72662874696E69, 0xEB00000000293A6DLL, 49);

    strcpy(v46, "entityType: ");
    BYTE5(v46[1]) = 0;
    HIWORD(v46[1]) = -5120;
    v47 = v42;
    v35 = sub_252E36F94();
    MEMORY[0x2530AD570](v35);

    v11 = v32;
    sub_252CC4050(v46[0], v46[1], 0xD00000000000006BLL, 0x8000000252E7D670, 0x6F72662874696E69, 0xEB00000000293A6DLL, 50);

    sub_252950B20();
    swift_allocError();
    swift_willThrow();
    (*(v12 + 8))(v38, v6);
    (*(v44 + 8))(v39, v40);
    goto LABEL_3;
  }

  v28 = *(v27 + OBJC_IVAR____TtC22HomeAutomationInternal5Scene_delegate);

  v11 = v45;
  *(v45 + OBJC_IVAR____TtC22HomeAutomationInternal5Scene_delegate) = v28;
  sub_252929E74(v49, v46);
  v29 = v37;
  v30 = Entity.init(from:)(v46);
  if (v29)
  {
    (*(v12 + 8))(v38, v6);

    (*(v44 + 8))(v39, v40);
    __swift_destroy_boxed_opaque_existential_1(v49);
  }

  else
  {
    v11 = v30;
    (*(v12 + 8))(v38, v6);

    v36 = *(v44 + 8);

    v36(v39, v40);
    __swift_destroy_boxed_opaque_existential_1(v49);
  }

  return v11;
}

BOOL sub_252B2EF9C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *a1;
  if (sub_252E32E54())
  {
    v13 = *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == a3 && *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == a4;
    if (v13 || (sub_252E37DB4() & 1) != 0)
    {
      v14 = *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);
      if (a6)
      {
        if (v14)
        {
          v15 = *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier) == a5 && v14 == a6;
          if (v15 || (sub_252E37DB4() & 1) != 0)
          {
            return a7 == 5;
          }
        }
      }

      else if (!v14)
      {
        return a7 == 5;
      }
    }
  }

  return 0;
}

uint64_t sub_252B2F098()
{
  v1 = [*(v0 + OBJC_IVAR____TtC22HomeAutomationInternal5Scene_delegate) actionSetType];
  v2 = sub_252E36F34();
  v4 = v3;

  if (qword_27F53F8B0 != -1)
  {
    swift_once();
  }

  v5 = off_27F546228;
  if (*(off_27F546228 + 2) && (v6 = sub_252A44A10(v2, v4), (v7 & 1) != 0))
  {
    v8 = *(v5[7] + 8 * v6);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t sub_252B2F15C(void *a1)
{
  v3 = [*(v1 + OBJC_IVAR____TtC22HomeAutomationInternal5Scene_delegate) home];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for Home(0);
    swift_allocObject();
    v5 = v4;
    v6 = sub_2529E65BC(v5);
    v7 = type metadata accessor for HomeStore(0);
    v8 = static HomeStore.shared.getter(v7);
    v9 = sub_2529F3704(a1);

    v14 = v6;
    MEMORY[0x28223BE20](v10);
    v13[2] = &v14;
    v11 = sub_252A00B58(sub_2529E963C, v13, v9);
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

char *sub_252B2F280(uint64_t a1)
{
  v1 = sub_252B2F470();
  v2 = v1;
  v15 = MEMORY[0x277D84F90];
  v3 = v1 & 0xFFFFFFFFFFFFFF8;
  if (!(v1 >> 62))
  {
    v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_21:
    v6 = MEMORY[0x277D84F90];
    goto LABEL_22;
  }

LABEL_20:
  v4 = sub_252E378C4();
  if (!v4)
  {
    goto LABEL_21;
  }

LABEL_3:
  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  do
  {
    v7 = v5;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x2530ADF00](v7, v2);
        v5 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (v7 >= *(v3 + 16))
        {
          goto LABEL_19;
        }

        v8 = *(v2 + 8 * v7 + 32);

        v5 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_18:
          __break(1u);
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }
      }

      v9 = [*(v8 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) accessory];
      if (v9)
      {
        break;
      }

      ++v7;
      if (v5 == v4)
      {
        goto LABEL_22;
      }
    }

    v10 = v9;
    type metadata accessor for Accessory(0);
    swift_allocObject();
    sub_252D4CE7C(v10);

    MEMORY[0x2530AD700](v11);
    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_252E372A4();
    }

    sub_252E372D4();
    v6 = v15;
  }

  while (v5 != v4);
LABEL_22:

  v12 = sub_252C759D4(v6);

  v13 = sub_2529A3758(v12);

  return v13;
}

uint64_t sub_252B2F470()
{
  v1 = sub_252E32E84();
  v2 = *(v1 - 1);
  MEMORY[0x28223BE20](v1);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [*(v0 + OBJC_IVAR____TtC22HomeAutomationInternal5Scene_delegate) actions];
  sub_25292A2F8();
  sub_252B307F8(&qword_27F53FBB0, sub_25292A2F8, MEMORY[0x277D85378]);
  v6 = sub_252E373A4();

  v7 = sub_252B2E20C(v6);

  v38 = MEMORY[0x277D84F90];
  if (v7 >> 62)
  {
LABEL_25:
    v8 = sub_252E378C4();
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_26:
    v37 = MEMORY[0x277D84F90];
    goto LABEL_27;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
    goto LABEL_26;
  }

LABEL_3:
  v9 = 0;
  v36 = v4;
  v37 = MEMORY[0x277D84F90];
  v34 = (v2 + 32);
  v35 = v1;
  do
  {
    v4 = v9;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x2530ADF00](v4, v7);
        v9 = (v4 + 1);
        if (__OFADD__(v4, 1))
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v4 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v10 = *(v7 + 8 * v4 + 32);

        v9 = (v4 + 1);
        if (__OFADD__(v4, 1))
        {
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
          goto LABEL_25;
        }
      }

      if (*(v10 + 40) == 1)
      {
        v1 = *(v10 + 16);
        objc_opt_self();
        v11 = swift_dynamicCastObjCClass();
        if (v11)
        {
          break;
        }
      }

LABEL_5:

      ++v4;
      if (v9 == v8)
      {
        goto LABEL_27;
      }
    }

    v12 = v11;
    v1 = v1;
    v2 = [v12 characteristic];
    v13 = [v2 service];

    if (!v13)
    {

      goto LABEL_5;
    }

    type metadata accessor for Service(0);
    v37 = swift_allocObject();
    *(v37 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) = v13;
    v14 = v13;
    v15 = [v14 uniqueIdentifier];
    sub_252E32E64();

    v16 = [v14 name];
    v17 = sub_252E36F34();
    v32 = v18;
    v33 = v17;

    v19 = [v14 assistantIdentifier];
    if (v19)
    {
      v20 = v19;
      v31 = sub_252E36F34();
      v22 = v21;

      v23 = v22;
      v24 = v31;
    }

    else
    {

      v24 = 0;
      v23 = 0;
    }

    v2 = v37;
    v25 = (*v34)(v37 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v36, v35);
    v26 = &v2[OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name];
    v27 = v32;
    *v26 = v33;
    v26[1] = v27;
    *&v2[OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType] = 7;
    v28 = &v2[OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier];
    *v28 = v24;
    v28[1] = v23;
    MEMORY[0x2530AD700](v25);
    if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_252E372A4();
      v2 = v37;
    }

    sub_252E372D4();
    v37 = v38;
  }

  while (v9 != v8);
LABEL_27:

  return v37;
}

char *sub_252B2F8B4()
{
  v1 = [*(v0 + OBJC_IVAR____TtC22HomeAutomationInternal5Scene_delegate) actions];
  sub_25292A2F8();
  sub_252B307F8(&qword_27F53FBB0, sub_25292A2F8, MEMORY[0x277D85378]);
  v2 = sub_252E373A4();

  v3 = sub_252B2E20C(v2);

  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_23:
    v6 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

LABEL_22:
  v4 = sub_252E378C4();
  if (!v4)
  {
    goto LABEL_23;
  }

LABEL_3:
  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  do
  {
    v7 = v5;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x2530ADF00](v7, v3);
        v5 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v8 = *(v3 + 8 * v7 + 32);

        v5 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }
      }

      v9 = *(v8 + 16);
      objc_opt_self();
      v10 = swift_dynamicCastObjCClass();
      if (v10)
      {
        break;
      }

      ++v7;
      if (v5 == v4)
      {
        goto LABEL_24;
      }
    }

    v11 = v10;
    v12 = v9;
    v13 = [v11 state];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_2529F834C(0, *(v6 + 2) + 1, 1, v6);
    }

    v15 = *(v6 + 2);
    v14 = *(v6 + 3);
    if (v15 >= v14 >> 1)
    {
      v6 = sub_2529F834C((v14 > 1), v15 + 1, 1, v6);
    }

    *(v6 + 2) = v15 + 1;
    *&v6[8 * v15 + 32] = v13;
  }

  while (v5 != v4);
LABEL_24:

  return v6;
}

uint64_t sub_252B2FB08()
{
  v0 = sub_252B2F470();
  v1 = v0;
  if (!(v0 >> 62))
  {
    v2 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_29:

    return 0;
  }

LABEL_28:
  v2 = sub_252E378C4();
  if (!v2)
  {
    goto LABEL_29;
  }

LABEL_3:
  v3 = 0;
  v20 = v1 & 0xC000000000000001;
  while (1)
  {
    if (v20)
    {
      v4 = MEMORY[0x2530ADF00](v3, v1);
      v5 = __OFADD__(v3++, 1);
      if (v5)
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }

      v4 = *(v1 + 32 + 8 * v3);

      v5 = __OFADD__(v3++, 1);
      if (v5)
      {
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }
    }

    if (qword_27F53F410 != -1)
    {
      swift_once();
    }

    v6 = qword_27F575A48;
    v7 = [*(v4 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
    v8 = sub_252E36F34();
    v10 = v9;

    if (qword_27F53F8B8 != -1)
    {
      swift_once();
    }

    v11 = off_27F546230;
    if (*(off_27F546230 + 2) && (v12 = sub_252A44A10(v8, v10), (v13 & 1) != 0))
    {
      v14 = *(v11[7] + 8 * v12);
    }

    else
    {
      v14 = 0;
    }

    if (*(v6 + 16))
    {
      sub_252E37EC4();
      MEMORY[0x2530AE390](v14);
      v15 = sub_252E37F14();
      v16 = -1 << *(v6 + 32);
      v17 = v15 & ~v16;
      if ((*(v6 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
      {
        break;
      }
    }

LABEL_4:

    if (v3 == v2)
    {
      goto LABEL_29;
    }
  }

  v18 = ~v16;
  while (*(*(v6 + 48) + 8 * v17) != v14)
  {
    v17 = (v17 + 1) & v18;
    if (((*(v6 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  return 1;
}

uint64_t sub_252B2FD74()
{
  v35 = sub_252E32E84();
  v1 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = [*(v0 + OBJC_IVAR____TtC22HomeAutomationInternal5Scene_delegate) actions];
  sub_25292A2F8();
  sub_252B307F8(&qword_27F53FBB0, sub_25292A2F8, MEMORY[0x277D85378]);
  v4 = sub_252E373A4();

  v5 = sub_252B2E20C(v4);

  if (v5 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v7 = 0;
    LOBYTE(v8) = 0;
    v9 = v5 & 0xC000000000000001;
    v29 = v5 & 0xFFFFFFFFFFFFFF8;
    v30 = v5 & 0xC000000000000001;
    v32 = (v1 + 32);
    v33 = (v1 + 8);
    v31 = i;
    while (1)
    {
      if (v9)
      {
        v10 = MEMORY[0x2530ADF00](v7, v5);
        v11 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        goto LABEL_12;
      }

      if (v7 >= *(v29 + 16))
      {
        goto LABEL_32;
      }

      v10 = *(v5 + 8 * v7 + 32);

      v11 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

LABEL_12:
      if (sub_252B3DE94())
      {
        if (*(v10 + 40) != 1)
        {
          goto LABEL_28;
        }

        v12 = *(v10 + 16);
        objc_opt_self();
        v8 = swift_dynamicCastObjCClass();
        if (!v8)
        {

LABEL_26:

          return v8 & 1;
        }

        v13 = v12;
        v14 = [v8 characteristic];
        v15 = [v14 service];

        if (!v15)
        {

LABEL_28:

          goto LABEL_29;
        }

        type metadata accessor for Service(0);
        v16 = swift_allocObject();
        v17 = v15;
        v18 = [v17 uniqueIdentifier];
        sub_252E32E64();

        v19 = [v17 assistantIdentifier];
        if (v19)
        {
          v20 = v19;
          sub_252E36F34();
        }

        (*v32)(v16 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v34, v35);
        v21 = [v17 serviceType];
        v22 = sub_252E36F34();
        v1 = v23;

        if (qword_27F53F8B8 != -1)
        {
          swift_once();
        }

        v24 = off_27F546230;
        if (!*(off_27F546230 + 2) || (v25 = sub_252A44A10(v22, v1), (v26 & 1) == 0))
        {

          swift_setDeallocating();
          (*v33)(v16 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v35);

          swift_deallocClassInstance();
          goto LABEL_29;
        }

        v27 = *(v24[7] + 8 * v25);

        swift_setDeallocating();
        (*v33)(v16 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v35);

        swift_deallocClassInstance();
        if (v27 != 4)
        {
          goto LABEL_29;
        }

        LOBYTE(v8) = 1;
        v9 = v30;
        i = v31;
      }

      else
      {
      }

      ++v7;
      if (v11 == i)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

LABEL_29:

  LOBYTE(v8) = 0;
  return v8 & 1;
}

id sub_252B30298()
{
  result = [*(v0 + OBJC_IVAR____TtC22HomeAutomationInternal5Scene_delegate) home];
  if (result)
  {
    v2 = result;
    type metadata accessor for Home(0);
    swift_allocObject();
    return sub_2529E65BC(v2);
  }

  return result;
}

uint64_t sub_252B302FC()
{
  type metadata accessor for HomeEntity.Builder();
  swift_allocObject();
  v1.n128_f64[0] = HomeEntity.Builder.init()();
  v3 = (*(*v2 + 376))(*(v0 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name), *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8), v1);

  v4 = (*(*v3 + 384))(5);

  v5 = sub_252E32E24();
  v6 = (*(*v4 + 392))(v5);

  v7 = sub_252B2F098();
  v8 = (*(*v6 + 408))(v7);

  v9 = [*(v0 + OBJC_IVAR____TtC22HomeAutomationInternal5Scene_delegate) home];
  if (v9)
  {
    v10 = v9;
    type metadata accessor for Home(0);
    swift_allocObject();
    v11 = sub_2529E65BC(v10);
    v12 = *(v11 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
    v13 = *(v11 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

    v14 = (*(*v8 + 424))(v12, v13);

    v8 = v14;
  }

  v15 = (*(*v8 + 448))();

  return v15;
}

uint64_t Scene.deinit()
{
  v1 = OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier;
  v2 = sub_252E32E84();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t Scene.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier;
  v2 = sub_252E32E84();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for Scene(uint64_t a1)
{
  result = qword_2814B0570;
  if (!qword_2814B0570)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_252B307F8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_252B30840(uint64_t a1, uint64_t a2)
{
  v3[84] = v2;
  v3[83] = a2;
  v3[82] = a1;
  v4 = sub_252E34014();
  v3[85] = v4;
  v3[86] = *(v4 - 8);
  v3[87] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v3[88] = swift_task_alloc();
  v3[89] = swift_task_alloc();
  v3[90] = swift_task_alloc();
  v5 = sub_252E32E84();
  v3[91] = v5;
  v3[92] = *(v5 - 8);
  v3[93] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252B309E0, 0, 0);
}

uint64_t sub_252B309E0()
{
  v120 = v0;
  v119[63] = *MEMORY[0x277D85DE8];
  v0[80] = 0;
  v1 = type metadata accessor for HomeStore(0);
  v2 = static HomeStore.shared.getter(v1);
  v3 = v2[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
  if (v3 != 2 && (v3 & 1) == 0)
  {
    v34 = 12;
    goto LABEL_39;
  }

  v4 = [v0[83] filters];
  if (!v4)
  {
    v34 = 1;
LABEL_39:
    sub_2529318DC();
    swift_allocError();
    *v35 = v34;

    goto LABEL_40;
  }

  v5 = v4;
  v6 = v0[83];
  type metadata accessor for HomeFilter();
  v7 = sub_252E37264();

  v8 = [v6 userTask];
  v9 = HomeStore.accessories(matching:supporting:)(v7, v8);
  LOBYTE(v6) = v10;

  if (v6)
  {
LABEL_40:
    swift_willThrow();

    v36 = v0[1];

    return v36();
  }

  v119[0] = MEMORY[0x277D84F90];
  v113 = v9 & 0xFFFFFFFFFFFFFF8;
  if (v9 >> 62)
  {
    goto LABEL_89;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_252E378C4())
  {
    v12 = MEMORY[0x277D84F90];
    v117 = v0;
    v108 = v9;
    v114 = i;
    if (!i)
    {
      break;
    }

    v13 = 0;
    v118 = v9 & 0xC000000000000001;
    v116 = v9 + 32;
    v14 = v113;
    while (1)
    {
      if (v118)
      {
        v15 = MEMORY[0x2530ADF00](v13, v108);
        v16 = __OFADD__(v13++, 1);
        if (v16)
        {
          goto LABEL_86;
        }
      }

      else
      {
        if (v13 >= *(v14 + 16))
        {
          goto LABEL_87;
        }

        v15 = *(v116 + 8 * v13);

        v16 = __OFADD__(v13++, 1);
        if (v16)
        {
          goto LABEL_86;
        }
      }

      v17 = (*(*v15 + 272))();
      v18 = v17;
      v19 = *(v17 + 32);
      v20 = ((1 << v19) + 63) >> 6;
      if ((v19 & 0x3Fu) <= 0xD)
      {
        break;
      }

      if (swift_stdlib_isStackAllocationSafe())
      {

        v14 = v113;
        break;
      }

      v9 = swift_slowAlloc();

      v33 = sub_252C54758(v9, v20, v18, sub_252AFABD8);
      v115 = 0;
      v32 = v33;
      swift_bridgeObjectRelease_n();
      MEMORY[0x2530AED00](v9, -1, -1);
      v14 = v113;
LABEL_29:

      sub_25297AEDC(v32);
      i = v114;
      if (v13 == v114)
      {
        v12 = v119[0];
        v0 = v117;
        goto LABEL_43;
      }
    }

    v0 = &v102;
    MEMORY[0x28223BE20](v17);
    v9 = &v102 - ((v21 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v21);
    v22 = 0;
    v23 = 0;
    v24 = 1 << *(v18 + 32);
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v26 = v25 & *(v18 + 56);
    v27 = (v24 + 63) >> 6;
    while (v26)
    {
      v28 = __clz(__rbit64(v26));
      v26 &= v26 - 1;
      v29 = v28 | (v23 << 6);
LABEL_24:
      if (*(*(v18 + 48) + 8 * v29))
      {
        *(v9 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
        v16 = __OFADD__(v22++, 1);
        if (v16)
        {
          goto LABEL_88;
        }
      }
    }

    v30 = v23;
    while (1)
    {
      v23 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v23 >= v27)
      {
        v32 = sub_252C53500(v9, v20, v22, v18);
        goto LABEL_29;
      }

      v31 = *(v18 + 56 + 8 * v23);
      ++v30;
      if (v31)
      {
        v26 = (v31 - 1) & v31;
        v29 = __clz(__rbit64(v31)) | (v23 << 6);
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    ;
  }

LABEL_43:
  v38 = sub_252C759A0(v12);

  if (*(v38 + 16) == 1)
  {
    v39 = sub_252DB4F48();
    v41 = v40;

    v42 = (v41 & 1) == 0;
    i = v114;
    if (v42)
    {
      v43 = v39;
    }

    else
    {
      v43 = 0;
    }

    v105 = v43;
  }

  else
  {

    v105 = 0;
  }

  v44 = v108;
  v45 = v113;
  v46 = MEMORY[0x277D84F90];
  v0[81] = MEMORY[0x277D84F90];
  if (i)
  {
    v47 = 0;
    v48 = v0[92];
    v106 = v0 + 81;
    v107 = v44 & 0xC000000000000001;
    v103 = (v48 + 8);
    v104 = (v48 + 32);
    do
    {
      if (v107)
      {
        v49 = MEMORY[0x2530ADF00](v47, v44);
        v50 = v47 + 1;
        if (__OFADD__(v47, 1))
        {
          goto LABEL_84;
        }
      }

      else
      {
        if (v47 >= *(v45 + 16))
        {
          goto LABEL_85;
        }

        v49 = *(v44 + 8 * v47 + 32);

        v50 = v47 + 1;
        if (__OFADD__(v47, 1))
        {
          goto LABEL_84;
        }
      }

      v115 = v50;
      v51 = [*(v49 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) room];
      v116 = v47;
      v118 = v49;
      if (v51)
      {
        v52 = v51;
        type metadata accessor for Room(0);
        v53 = swift_allocObject();
        v54 = v52;
        v55 = [v54 uniqueIdentifier];
        sub_252E32E64();

        v56 = [v54 name];
        v57 = sub_252E36F34();
        v110 = v58;
        v111 = v57;

        v59 = [v54 assistantIdentifier];
        if (v59)
        {
          v60 = v59;
          sub_252E36F34();
        }

        else
        {
        }

        v72 = v117[91];
        v73 = v117[90];
        (*v104)(v53 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v117[93], v72);
        swift_setDeallocating();
        (*v103)(v53 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v72);

        swift_deallocClassInstance();
        type metadata accessor for HomeAutomationEntityResponse.Builder(0);
        v74 = swift_allocObject();
        v75 = OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityName;
        v76 = sub_252E36324();
        v77 = *(*(v76 - 8) + 56);
        v77(v74 + v75, 1, 1, v76);
        v77(v74 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityIdentifier, 1, 1, v76);
        v109 = OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_room;
        *(v74 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_room) = 0;
        v78 = MEMORY[0x277D84F90];
        *(v74 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_zones) = MEMORY[0x277D84F90];
        *(v74 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_home) = 0;
        v112 = OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_type;
        v77(v74 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_type, 1, 1, v76);
        *(v74 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_types) = v78;
        *(v74 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_states) = v78;

        sub_252E362F4();
        v77(v73, 0, 1, v76);
        swift_beginAccess();
        sub_252956C98(v73, v74 + v75);
        swift_endAccess();
        type metadata accessor for HomeAutomationHomeLocation.Builder(0);
        v79 = swift_allocObject();
        v80 = OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name;
        v77(v79 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name, 1, 1, v76);
        sub_252E362F4();
        v77(v73, 0, 1, v76);
        swift_beginAccess();
        sub_252956BAC(v73, v79 + v80);
        swift_endAccess();
        v9 = &unk_252E3C270;
        sub_25293847C(v73, &qword_27F540298, &unk_252E3C270);
        type metadata accessor for HomeAutomationHomeLocation(0);
        v81 = swift_allocObject();
        *(v81 + 16) = 0;
        sub_252956C1C(v79 + v80, v81 + OBJC_IVAR____TtC22HomeAutomationInternal26HomeAutomationHomeLocation_name);
        swift_setDeallocating();
        sub_25293847C(v79 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name, &qword_27F540298, &unk_252E3C270);
        swift_deallocClassInstance();
        *(v74 + v109) = v81;
        if (qword_27F53F2A0 != -1)
        {
          swift_once();
        }

        v82 = off_27F541CD0;
        v45 = v113;
        if (*(off_27F541CD0 + 2) && (v83 = sub_252A488EC(), (v84 & 1) != 0))
        {
          LOBYTE(v119[0]) = *(v82[7] + v83);
          AccessoryTypeSemantic.rawValue.getter();
          v45 = v113;
          sub_252E362F4();
          v85 = 0;
        }

        else
        {
          v85 = 1;
        }

        v0 = v117;
        v86 = v117[89];
        v77(v86, v85, 1, v76);
        v87 = v112;
        swift_beginAccess();
        sub_252956C98(v86, v74 + v87);
        swift_endAccess();
        type metadata accessor for HomeAutomationEntityResponse(0);
        swift_allocObject();
        sub_2529605C0(v74);
        swift_setDeallocating();
        sub_25295E9E4();
      }

      else
      {
        v61 = v0[90];
        type metadata accessor for HomeAutomationEntityResponse.Builder(0);
        v62 = swift_allocObject();
        v63 = OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityName;
        v64 = sub_252E36324();
        v9 = *(*(v64 - 8) + 56);
        (v9)(v62 + v63, 1, 1, v64);
        (v9)(v62 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityIdentifier, 1, 1, v64);
        *(v62 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_room) = 0;
        v65 = MEMORY[0x277D84F90];
        *(v62 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_zones) = MEMORY[0x277D84F90];
        *(v62 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_home) = 0;
        v112 = OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_type;
        (v9)(v62 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_type, 1, 1, v64);
        *(v62 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_types) = v65;
        *(v62 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_states) = v65;

        sub_252E362F4();
        (v9)(v61, 0, 1, v64);
        swift_beginAccess();
        v0 = v117;
        sub_252956C98(v61, v62 + v63);
        swift_endAccess();
        if (qword_27F53F2A0 != -1)
        {
          swift_once();
        }

        v66 = off_27F541CD0;
        if (*(off_27F541CD0 + 2) && (v67 = sub_252A488EC(), (v68 & 1) != 0))
        {
          LOBYTE(v119[0]) = *(v66[7] + v67);
          AccessoryTypeSemantic.rawValue.getter();
          sub_252E362F4();
          v69 = 0;
        }

        else
        {
          v69 = 1;
        }

        v45 = v113;
        v70 = v0[88];
        (v9)(v70, v69, 1, v64);
        v71 = v112;
        swift_beginAccess();
        sub_252956C98(v70, v62 + v71);
        swift_endAccess();
        type metadata accessor for HomeAutomationEntityResponse(0);
        swift_allocObject();
        sub_2529605C0(v62);
        swift_setDeallocating();
        sub_25293847C(v62 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityName, &qword_27F540298, &unk_252E3C270);
        sub_25293847C(v62 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_entityIdentifier, &qword_27F540298, &unk_252E3C270);
        sub_25293847C(v62 + OBJC_IVAR____TtCC22HomeAutomationInternal28HomeAutomationEntityResponse7Builder_type, &qword_27F540298, &unk_252E3C270);
      }

      swift_deallocClassInstance();

      v89 = v106;
      MEMORY[0x2530AD700](v88);
      if (*((*v89 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v89 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
        v45 = v113;
      }

      sub_252E372D4();
      v47 = v116 + 1;
      v44 = v108;
    }

    while (v115 != v114);
    v90 = *v89;
    v46 = MEMORY[0x277D84F90];
  }

  else
  {
    v90 = v46;
  }

  v91 = v0[84];
  v92 = v0[83];
  sub_252929F10(v108, 0);
  type metadata accessor for HomeAutomationEntityResponses.Builder();
  *(swift_allocObject() + 16) = v46;
  type metadata accessor for HomeAutomationEntityResponses();
  v93 = swift_allocObject();
  *(v93 + 16) = 0;
  swift_setDeallocating();
  swift_deallocClassInstance();
  *(v93 + 24) = v90;
  v0[80] = v93;
  sub_25293DEE0((v0 + 2));
  memcpy(v119, v0 + 2, 0x1F8uLL);
  v94 = v92;
  v95 = sub_252953488(v92, v119, 0);
  v0[94] = v95;

  v96 = v91[12];
  v97 = v91[13];
  __swift_project_boxed_opaque_existential_1(v91 + 9, v96);
  v98 = swift_task_alloc();
  v0[95] = v98;
  v98[2] = v91;
  v98[3] = v0 + 80;
  v98[4] = v95;
  sub_252AD7CC4();
  v99 = swift_task_alloc();
  v0[96] = v99;
  *v99 = v0;
  v99[1] = sub_252B31AD4;
  v100 = v0[87];
  v101 = v0[82];
  v122 = v97;

  return sub_252BDB88C(v101, &unk_252E4C2A0, v98, v100, 0, 0, 0, v96);
}

uint64_t sub_252B31AD4()
{
  v2 = *v1;
  *(*v1 + 776) = v0;

  (*(v2[86] + 8))(v2[87], v2[85]);
  if (v0)
  {
    v3 = sub_252B31D44;
  }

  else
  {

    v3 = sub_252B31C60;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252B31C60()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252B31D44()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252B31E3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_252B31E60, 0, 0);
}

uint64_t sub_252B31E60()
{
  v2 = v0[3];
  v1 = v0[4];
  __swift_project_boxed_opaque_existential_1((v0[2] + 24), *(v0[2] + 48));
  v3 = *v2;
  v0[5] = v3;

  v4 = sub_252C051A4(0, v1, v3);
  v0[6] = v4;
  v7 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);

  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_252B31F84;

  return v7(0xD000000000000028, 0x8000000252E7D720, v4);
}

uint64_t sub_252B31F84(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = sub_252B32144;
  }

  else
  {
    *(v4 + 72) = a1;
    v5 = sub_252B320D0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252B320D0()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 72);

  return v1(v2);
}

uint64_t sub_252B32144()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252B321DC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25293B808;

  return sub_252B30840(a1, a2);
}

void *sub_252B32288@<X0>(const void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for AsyncEagerResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

id sub_252B322EC(void *a1, char *a2)
{
  v3 = sub_2529408F4(a1);
  result = 0;
  if ((v3 & 1) != 0 && a2)
  {
    v5 = OBJC_IVAR___ControlHomeIntentResponse_code;
    swift_beginAccess();
    if (*&a2[v5] == 4)
    {
      result = [a2 entityResponses];
      if (result)
      {
        v6 = result;
        type metadata accessor for HomeEntityResponse();
        v7 = sub_252E37264();

        if (v7 >> 62)
        {
          v8 = sub_252E378C4();
        }

        else
        {
          v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        return (v8 == 0);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_252B323D0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25294B7BC;

  return sub_252B31E3C(v2, v3, v4);
}

uint64_t HueSemantic.rawValue.getter()
{
  result = 0x6873696E65657267;
  switch(*v0)
  {
    case 1:
      return 0x656C646E6163;
    case 2:
      return 0x676E757420773034;
    case 3:
      return 0x6E75742077303031;
    case 4:
      return 0x6E65676F6C6168;
    case 5:
      return 0x61206E6F62726163;
    case 6:
      return 0x6F6F6E2068676968;
    case 7:
      return 0x747361637265766FLL;
    case 8:
      return 0x6C62207261656C63;
    case 9:
      return 0xD000000000000010;
    case 0xA:
    case 0x11:
    case 0x52:
    case 0xAD:
    case 0xFB:
    case 0x13B:
    case 0x18C:
    case 0x268:
    case 0x287:
      return 0xD000000000000014;
    case 0xB:
    case 0x166:
    case 0x189:
    case 0x23E:
      return 0xD000000000000016;
    case 0xC:
      v35 = 9;
      return v35 | 0xD000000000000010;
    case 0xD:
      return 0xD000000000000017;
    case 0xE:
      return 0x207972756372656DLL;
    case 0xF:
      return 0x76206D7569646F73;
    case 0x10:
      return 0x6168206C6174656DLL;
    case 0x12:
      return 0x63726F6620726961;
    case 0x13:
      return 0x6C62206563696C61;
    case 0x14:
      return 0xD000000000000010;
    case 0x15:
      return 0x646E6F6D6C61;
    case 0x16:
      return 0x68746E6172616D61;
    case 0x17:
      return 0x7265626D61;
    case 0x18:
      return 0x6E61636972656D61;
    case 0x19:
      return 0x7473796874656D61;
    case 0x1A:
    case 0x1C:
      return 0x2065757169746E61;
    case 0x1B:
      return 0x2065757169746E61;
    case 0x1D:
      return 0x746F6369727061;
    case 0x1E:
      return 1635086689;
    case 0x1F:
      return 0x6972616D61757161;
    case 0x20:
      v2 = 2037215841;
      return v2 | 0x6572672000000000;
    case 0x21:
      return 0x206564696C797261;
    case 0x22:
      return 0x7965726720687361;
    case 0x23:
      return 0x7567617261707361;
    case 0x24:
      return 0xD000000000000010;
    case 0x25:
      return 0x6E7275627561;
    case 0x26:
      return 0x6E696C6F65727561;
    case 0x27:
      return 0x6174656D6F727561;
    case 0x28:
      return 0x6572757A61;
    case 0x29:
      v10 = 2036490594;
      return v10 | 0x756C622000000000;
    case 0x2A:
      v5 = 2036490594;
      return v5 | 0x6E69702000000000;
    case 0x2B:
      return 0x6D20616E616E6162;
    case 0x2C:
      v7 = 0x616E616E6162;
      return v7 & 0xFFFFFFFFFFFFLL | 0x7920000000000000;
    case 0x2D:
      return 0x6873656C74746162;
    case 0x2E:
      return 0x756C622075616562;
    case 0x2F:
      return 0x6567696562;
    case 0x30:
      return 0x657571736962;
    case 0x31:
      return 0x657274736962;
    case 0x32:
      return 0x7773726574746962;
    case 0x33:
      return 0x6B63616C62;
    case 0x34:
      return 0x646568636E616C62;
    case 0x35:
      return 0x2065642075656C62;
    case 0x36:
      return 0x646E6F6C62;
    case 0x37:
      return 1702194274;
    case 0x38:
      return 0x6172672065756C62;
    case 0x39:
      v2 = 1702194274;
      return v2 | 0x6572672000000000;
    case 0x3A:
      return 0x7275702065756C62;
    case 0x3B:
      return 0x6F69762065756C62;
    case 0x3C:
      return 0x6873756C62;
    case 0x3D:
      return 0x6C622069646E6F62;
    case 0x3E:
      return 1701736290;
    case 0x3F:
    case 0x68:
      v35 = 5;
      return v35 | 0xD000000000000010;
    case 0x40:
      v26 = 0x656C74746F62;
      goto LABEL_608;
    case 0x41:
      return 0x65626E6573796F62;
    case 0x42:
      return 0x736965646E617262;
    case 0x43:
      return 0x7373617262;
    case 0x44:
      return 0x6572206B63697262;
    case 0x45:
      return 0x61696E6F676562;
    case 0x46:
      return 0x7220746867697262;
    case 0x47:
      v9 = 0x746867697262;
      return v9 & 0xFFFFFFFFFFFFLL | 0x7720000000000000;
    case 0x48:
      v7 = 0x746867697262;
      return v7 & 0xFFFFFFFFFFFFLL | 0x7920000000000000;
    case 0x49:
      v3 = 0x746867697262;
      return v3 & 0xFFFFFFFFFFFFLL | 0x6220000000000000;
    case 0x4A:
      return 0x6320746867697262;
    case 0x4B:
      v26 = 0x746867697262;
      goto LABEL_608;
    case 0x4C:
      return 0x6C20746867697262;
    case 0x4D:
      return 0x6D20746867697262;
    case 0x4E:
      v36 = 0x746867697262;
      return v36 & 0xFFFFFFFFFFFFLL | 0x7020000000000000;
    case 0x4F:
      return 0xD000000000000010;
    case 0x50:
    case 0xB2:
    case 0xBB:
    case 0xC1:
    case 0xD9:
    case 0x10E:
    case 0x110:
    case 0x125:
    case 0x15D:
    case 0x161:
    case 0x165:
    case 0x20E:
    case 0x21D:
    case 0x225:
      return 0xD000000000000012;
    case 0x51:
      return 0x6E61696C6C697262;
    case 0x53:
      return 0x657A6E6F7262;
    case 0x54:
      return 0x6E776F7262;
    case 0x55:
      return 0x6720656C62627562;
    case 0x56:
      return 1717990754;
    case 0x57:
      return 0x61697261676C7562;
    case 0x58:
      return 0x79646E7567727562;
    case 0x59:
      return 0x6F6F77796C727562;
    case 0x5A:
      return 0x726F20746E727562;
    case 0x5B:
      return 0x697320746E727562;
    case 0x5C:
      return 0x6D7520746E727562;
    case 0x5D:
      return 0x6E69746E617A7962;
    case 0x5E:
      return 0x7569746E617A7962;
    case 0x5F:
      return 0x65756C62206763;
    case 0x60:
      return 0x646572206763;
    case 0x61:
      return 0x7465646163;
    case 0x62:
      return 0x6C62207465646163;
    case 0x63:
      return 0x7267207465646163;
    case 0x64:
      return 0x206D75696D646163;
    case 0x65:
      return 0x206D75696D646163;
    case 0x66:
      return 0x206D75696D646163;
    case 0x67:
      return 0x206D75696D646163;
    case 0x69:
      return 0x67646972626D6163;
    case 0x6A:
      return 0xD000000000000010;
    case 0x6B:
      return 0x7972616E6163;
    case 0x6C:
      v22 = 0x7972616E6163;
      return v22 & 0xFFFFFFFFFFFFLL | 0x7920000000000000;
    case 0x6D:
      return 0x70612079646E6163;
    case 0x6E:
      return 0x69702079646E6163;
    case 0x6F:
      return 0x6972706163;
    case 0x70:
      return 0x6F6D207475706163;
    case 0x71:
      return 0x6C616E6964726163;
    case 0x72:
      return 0x6165626269726163;
    case 0x73:
      return 0x656E696D726163;
    case 0x74:
      return 0x20656E696D726163;
    case 0x75:
      return 0x20656E696D726163;
    case 0x76:
      return 0x6F6974616E726163;
    case 0x77:
      return 0x61696C656E726163;
    case 0x78:
      return 0x616E696C6F726163;
    case 0x79:
      return 0x6F20746F72726163;
    case 0x7A:
      return 0x6E6F64616C6563;
    case 0x7B:
      return 0x657473656C6563;
    case 0x7C:
      return 0x61697473656C6563;
    case 0x7D:
      return 0x657369726563;
    case 0x7E:
      v36 = 0x657369726563;
      return v36 & 0xFFFFFFFFFFFFLL | 0x7020000000000000;
    case 0x7F:
      return 0x6E61656C75726563;
    case 0x80:
      return 0x6E61656C75726563;
    case 0x81:
      return 0x6573696F6D616863;
    case 0x82:
      return 0x6E6761706D616863;
    case 0x83:
      return 0x6C616F6372616863;
    case 0x84:
      return 0x7565727472616863;
    case 0x85:
      return 0x797272656863;
    case 0x86:
    case 0x16A:
    case 0x186:
    case 0x18D:
    case 0x194:
      return 0xD000000000000013;
    case 0x87:
      return 0x74756E7473656863;
    case 0x88:
      return 0x74616C6F636F6863;
    case 0x89:
      v22 = 0x656D6F726863;
      return v22 & 0xFFFFFFFFFFFFLL | 0x7920000000000000;
    case 0x8A:
      return 0x756F6572656E6963;
    case 0x8B:
      return 0x726162616E6E6963;
    case 0x8C:
      return 0x6E6F6D616E6E6963;
    case 0x8D:
      return 0x656E6972746963;
    case 0x8E:
      return 0x2063697373616C63;
    case 0x8F:
      return 0x746C61626F63;
    case 0x90:
      v30 = 0x20616F636F63;
      return v30 & 0xFFFFFFFFFFFFLL | 0x7262000000000000;
    case 0x91:
      return 0x656566666F63;
    case 0x92:
      return 0x6169626D756C6F63;
    case 0x93:
      return 0x616C62206C6F6F63;
    case 0x94:
      v4 = 1819242339;
      return v4 | 0x6572672000000000;
    case 0x95:
      return 0x726570706F63;
    case 0x96:
      return 0x7220726570706F63;
    case 0x97:
      return 0x63696C6575716F63;
    case 0x98:
      return 0x6C61726F63;
    case 0x99:
      return 0x6970206C61726F63;
    case 0x9A:
      return 0x6572206C61726F63;
    case 0x9B:
      return 0x6E61766F64726F63;
    case 0x9C:
      return 1852993379;
    case 0x9D:
      v16 = 1852993379;
      goto LABEL_302;
    case 0x9E:
      return 0x776F6C666E726F63;
    case 0x9F:
      return 0x776F6C666E726F63;
    case 0xA0:
      return 0x6B6C69736E726F63;
    case 0xA1:
      return 0x6C2063696D736F63;
    case 0xA2:
      return 0x63206E6F74746F63;
    case 0xA3:
      return 0x6D61657263;
    case 0xA4:
      return 0x6E6F736D697263;
    case 0xA5:
      return 0x206E6F736D697263;
    case 0xA6:
      return 0x206E6F736D697263;
    case 0xA7:
      return 1851881827;
    case 0xA8:
      return 0x6C69646F66666164;
    case 0xA9:
      return 0x6F696C65646E6164;
    case 0xAA:
      v10 = 1802658148;
      return v10 | 0x756C622000000000;
    case 0xAB:
      return 0x6F7262206B726164;
    case 0xAC:
      return 0x7A7962206B726164;
    case 0xAE:
      v37 = 1802658148;
      return v37 | 0x7265632000000000;
    case 0xAF:
      return 0x656863206B726164;
    case 0xB0:
      return 0x726F63206B726164;
    case 0xB1:
      return 0x617963206B726164;
    case 0xB3:
      return 0x6C6F67206B726164;
    case 0xB4:
      return 0x617267206B726164;
    case 0xB5:
      v2 = 1802658148;
      return v2 | 0x6572672000000000;
    case 0xB6:
    case 0xC0:
    case 0xCD:
    case 0xD8:
    case 0xDF:
    case 0xF8:
    case 0x16D:
    case 0x187:
    case 0x191:
    case 0x193:
    case 0x198:
    case 0x1B4:
    case 0x1CA:
    case 0x24E:
    case 0x290:
    case 0x2C4:
      return 0xD000000000000011;
    case 0xB7:
      return 0x61686B206B726164;
    case 0xB8:
      return 0x76616C206B726164;
    case 0xB9:
      v40 = 1802658148;
      return v40 | 0x76616C2000000000;
    case 0xBA:
      return 0x67616D206B726164;
    case 0xBC:
      return 0xD000000000000010;
    case 0xBD:
      return 0x61726F206B726164;
    case 0xBE:
      return 0x63726F206B726164;
    case 0xBF:
      return 0xD000000000000010;
    case 0xC2:
      return 0x736170206B726164;
    case 0xC3:
      v5 = 1802658148;
      return v5 | 0x6E69702000000000;
    case 0xC4:
      return 0xD000000000000010;
    case 0xC5:
      return 0x736172206B726164;
    case 0xC6:
      v23 = 1802658148;
      return v23 | 0x6465722000000000;
    case 0xC7:
      return 0x6C6173206B726164;
    case 0xC8:
      return 0x616373206B726164;
    case 0xC9:
      return 0x616573206B726164;
    case 0xCA:
      return 0x656973206B726164;
    case 0xCB:
      return 0x616C73206B726164;
    case 0xCC:
      return 0x616C73206B726164;
    case 0xCE:
      return 0x6E6174206B726164;
    case 0xCF:
      return 0x6E6174206B726164;
    case 0xD0:
      return 0x756174206B726164;
    case 0xD1:
      return 0xD000000000000010;
    case 0xD2:
      return 0x727574206B726164;
    case 0xD3:
      return 0x6F6976206B726164;
    case 0xD4:
      return 0x6C6579206B726164;
    case 0xD5:
      return 0x74756F6D74726164;
    case 0xD6:
      v4 = 2037801316;
      return v4 | 0x6572672000000000;
    case 0xD7:
      return 0x7261632070656564;
    case 0xDA:
      return 0x7265632070656564;
    case 0xDB:
      return 0x6168632070656564;
    case 0xDC:
      v34 = 1885693284;
      return v34 | 0x6568632000000000;
    case 0xDD:
      return 0x666F632070656564;
    case 0xDE:
      return 0x6375662070656564;
    case 0xE0:
      return 0x6C696C2070656564;
    case 0xE1:
      return 0x67616D2070656564;
    case 0xE2:
      v15 = 1885693284;
      return v15 | 0x6165702000000000;
    case 0xE3:
      return 0x6E69702070656564;
    case 0xE4:
      return 0x6661732070656564;
    case 0xE5:
      return 0x796B732070656564;
    case 0xE6:
      return 0x6D696E6564;
    case 0xE7:
      return 0x747265736564;
    case 0xE8:
      return 0x7320747265736564;
    case 0xE9:
      return 0x79617267206D6964;
    case 0xEA:
      v25 = 0x726567646F64;
      return v25 & 0xFFFFFFFFFFFFLL | 0x6220000000000000;
    case 0xEB:
      return 0x20646F6F77676F64;
    case 0xEC:
      return 0x622072616C6C6F64;
    case 0xED:
      return 1650553444;
    case 0xEE:
      v24 = 1701541220;
      return v24 | 0x756C622000000000;
    case 0xEF:
      return 0x6579206874726165;
    case 0xF0:
      return 1970430821;
    case 0xF1:
      return 0x746E616C70676765;
    case 0xF2:
      return 0x6C6C656873676765;
    case 0xF3:
      return 0x6E61697470796765;
    case 0xF4:
      return 0x6369727463656C65;
    case 0xF5:
      return 0xD000000000000010;
    case 0xF6:
    case 0xF9:
      return 0x6369727463656C65;
    case 0xF7:
      return 0x6369727463656C65;
    case 0xFA:
      return 0x6369727463656C65;
    case 0xFC:
      return 0x6369727463656C65;
    case 0xFD:
      return 0x646C6172656D65;
    case 0xFE:
      v24 = 1852798053;
      return v24 | 0x756C622000000000;
    case 0xFF:
      return 0x776F6C6C6166;
    case 0x100:
      v23 = 1970037094;
      return v23 | 0x6465722000000000;
    case 0x101:
      return 0x206E6F6968736166;
    case 0x102:
      return 1853317478;
    case 0x103:
      return 1852990822;
    case 0x104:
      v41 = 1852990822;
      return v41 | 0x6572672000000000;
    case 0x105:
      return 0x2069726172726566;
    case 0x106:
      return 0x726420646C656966;
    case 0x107:
      return 0x676E652065726966;
    case 0x108:
      return 0x6369726265726966;
    case 0x109:
      v14 = 1835101286;
      goto LABEL_367;
    case 0x10A:
      return 0x6F676E696D616C66;
    case 0x10B:
      return 0x6563736576616C66;
    case 0x10C:
      return 2019650662;
    case 0x10D:
      v9 = 0x6C61726F6C66;
      return v9 & 0xFFFFFFFFFFFFLL | 0x7720000000000000;
    case 0x10F:
    case 0x133:
    case 0x149:
    case 0x170:
    case 0x18B:
    case 0x192:
    case 0x196:
    case 0x197:
    case 0x1A7:
    case 0x20C:
    case 0x228:
    case 0x24C:
    case 0x254:
    case 0x265:
    case 0x273:
    case 0x29E:
    case 0x2BB:
      return 0xD000000000000010;
    case 0x111:
      return 0x796C6C6F66;
    case 0x112:
      v26 = 0x747365726F66;
      goto LABEL_608;
    case 0x113:
      return 0x622068636E657266;
    case 0x114:
      v3 = 0x68636E657266;
      return v3 & 0xFFFFFFFFFFFFLL | 0x6220000000000000;
    case 0x115:
      return 0x6C2068636E657266;
    case 0x116:
      return 0x722068636E657266;
    case 0x117:
      v28 = 0x697368637566;
      return v28 & 0xFFFFFFFFFFFFLL | 0x61000000000000;
    case 0x118:
      return 0x2061697368637566;
    case 0x119:
      return 0x757720797A7A7566;
    case 0x11A:
      return 0x726F62736E696167;
    case 0x11B:
      return 0x65676F626D6167;
    case 0x11C:
      return 0x68772074736F6867;
    case 0x11D:
      v17 = 1735289191;
      return v17 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
    case 0x11E:
      return 0x73756F6375616C67;
    case 0x11F:
      return 0x72657474696C67;
    case 0x120:
      return 1684828007;
    case 0x121:
      v33 = 0x6E65646C6F67;
      return v33 & 0xFFFFFFFFFFFFLL | 0x6220000000000000;
    case 0x122:
      return 0x70206E65646C6F67;
    case 0x123:
      v7 = 0x6E65646C6F67;
      return v7 & 0xFFFFFFFFFFFFLL | 0x7920000000000000;
    case 0x124:
      return 0x6F726E65646C6F67;
    case 0x126:
      return 2036429415;
    case 0x127:
      v8 = 1701147239;
      return v8 & 0xFFFF0000FFFFFFFFLL | 0x6E00000000;
    case 0x128:
      return 0x6C62206E65657267;
    case 0x129:
      v18 = 0x206E65657267;
      return v18 & 0xFFFFFFFFFFFFLL | 0x6579000000000000;
    case 0x12A:
      return 0x6F6C6C757267;
    case 0x12B:
      return 0x6720656970707567;
    case 0x12C:
      v31 = 544104808;
      return v31 | 0x65756C6200000000;
    case 0x12D:
      return 0x70727570206E6168;
    case 0x12E:
      return 0x65792061736E6168;
    case 0x12F:
      return 0x2064726176726168;
    case 0x130:
      return 0x2074736576726168;
    case 0x131:
      return 0x6F67207472616568;
    case 0x132:
      return 0x6F72746F696C6568;
    case 0x134:
      return 0x77656479656E6F68;
    case 0x135:
      return 0x6567616D20746F68;
    case 0x136:
      return 0x6B6E697020746F68;
    case 0x137:
      return 0x656E697265746369;
    case 0x138:
      return 0x7365646E61636E69;
    case 0x139:
      return 0x6F6769646E69;
    case 0x13A:
      return 0xD000000000000018;
    case 0x13C:
      return 1936290409;
    case 0x13D:
      return 0x696C6C6562617369;
    case 0x13E:
      return 0x79726F7669;
    case 0x13F:
      return 1701077354;
    case 0x140:
      v6 = 1836278122;
      goto LABEL_129;
    case 0x141:
      return 0x72657073616ALL;
    case 0x142:
      return 0x727265627A7A616ALL;
    case 0x143:
      v32 = 0x6975716E6F6ALL;
      return v32 & 0xFFFFFFFFFFFFLL | 0x6C000000000000;
    case 0x144:
      return 0x64756220656E756ALL;
    case 0x145:
      return 0x6720656C676E756ALL;
    case 0x146:
      return 0x726720796C6C656BLL;
    case 0x147:
      return 0x696B61686BLL;
    case 0x148:
      return 0x656C6C617320616CLL;
    case 0x14A:
      return 0x616C20736970616CLL;
    case 0x14B:
      return 0x656C20726573616CLL;
    case 0x14C:
      v26 = 0x6C657275616CLL;
      goto LABEL_608;
    case 0x14D:
      return 1635148140;
    case 0x14E:
      return 0x7265646E6576616CLL;
    case 0x14F:
      return 0x7265646E6576616CLL;
    case 0x150:
    case 0x151:
    case 0x153:
      return 0x7265646E6576616CLL;
    case 0x152:
      return 0x7265646E6576616CLL;
    case 0x154:
      return 0x7265646E6576616CLL;
    case 0x155:
      return 0x7265646E6576616CLL;
    case 0x156:
      return 0x7265646E6576616CLL;
    case 0x157:
      v2 = 1853317484;
      return v2 | 0x6572672000000000;
    case 0x158:
      v8 = 1869440364;
      return v8 & 0xFFFF0000FFFFFFFFLL | 0x6E00000000;
    case 0x159:
      return 0x6579206E6F6D656CLL;
    case 0x15A:
      return 0x6863206E6F6D656CLL;
    case 0x15B:
      return 0x696C206E6F6D656CLL;
    case 0x15C:
      return 0x726320746867696CLL;
    case 0x15E:
      return 0x706120746867696CLL;
    case 0x15F:
      return 0x6C6220746867696CLL;
    case 0x160:
      return 0x726220746867696CLL;
    case 0x162:
      return 0x6F6320746867696CLL;
    case 0x163:
      v20 = 5;
      return v20 | 0xD000000000000010;
    case 0x164:
      return 0x796320746867696CLL;
    case 0x167:
      return 0x726720746867696CLL;
    case 0x168:
      v39 = 0x20746867696CLL;
      return v39 & 0xFFFFFFFFFFFFLL | 0x7267000000000000;
    case 0x169:
      return 0x686B20746867696CLL;
    case 0x16B:
      return 0x697020746867696CLL;
    case 0x16C:
      return 0x617320746867696CLL;
    case 0x16E:
      return 0x657320746867696CLL;
    case 0x16F:
      return 0x6B7320746867696CLL;
    case 0x171:
      return 0x617420746867696CLL;
    case 0x172:
      v18 = 0x20746867696CLL;
      return v18 & 0xFFFFFFFFFFFFLL | 0x6579000000000000;
    case 0x173:
      return 0x63616C696CLL;
    case 0x174:
      return 1701669228;
    case 0x175:
      v41 = 1701669228;
      return v41 | 0x6572672000000000;
    case 0x176:
      return 0x206E6C6F636E696CLL;
    case 0x177:
      v8 = 1701734764;
      return v8 & 0xFFFF0000FFFFFFFFLL | 0x6E00000000;
    case 0x178:
      return 1852795244;
    case 0x179:
      return 0x656572672075736DLL;
    case 0x17A:
      v28 = 0x746E6567616DLL;
      return v28 & 0xFFFFFFFFFFFFLL | 0x61000000000000;
    case 0x17B:
      return 0x696D20636967616DLL;
    case 0x17C:
      return 0x61696C6F6E67616DLL;
    case 0x17D:
      return 0x796E61676F68616DLL;
    case 0x17E:
      return 0x657A69616DLL;
    case 0x17F:
      return 0x6C6C65726F6A616DLL;
    case 0x180:
      return 0x74696863616C616DLL;
    case 0x181:
      return 0x6174206F676E616DLL;
    case 0x182:
      return 0x6E6F6F72616DLL;
    case 0x183:
      v14 = 1987404141;
      goto LABEL_367;
    case 0x184:
      return 0x617420657675616DLL;
    case 0x185:
      return 0x756F6C657675616DLL;
    case 0x188:
      v25 = 0x6D756964656DLL;
      return v25 & 0xFFFFFFFFFFFFLL | 0x6220000000000000;
    case 0x18A:
      return 0x63206D756964656DLL;
    case 0x18E:
      return 0xD000000000000017;
    case 0x18F:
      return 0x6F206D756964656DLL;
    case 0x190:
      v38 = 0x6D756964656DLL;
      return v38 & 0xFFFFFFFFFFFFLL | 0x7020000000000000;
    case 0x195:
      return 0x74206D756964656DLL;
    case 0x199:
      v8 = 1869374829;
      return v8 & 0xFFFF0000FFFFFFFFLL | 0x6E00000000;
    case 0x19A:
      return 0x746867696E64696DLL;
    case 0x19B:
      return 0x746867696E64696DLL;
    case 0x19C:
      v7 = 0x6F64616B696DLL;
      return v7 & 0xFFFFFFFFFFFFLL | 0x7920000000000000;
    case 0x19D:
      return 1953393005;
    case 0x19E:
      return 0x65726320746E696DLL;
    case 0x19F:
      return 0x65726720746E696DLL;
    case 0x1A0:
      return 0x6F7220797473696DLL;
    case 0x1A1:
      return 0x6E69736163636F6DLL;
    case 0x1A2:
      return 0x6965622065646F6DLL;
    case 0x1A3:
      return 0x6E6F74736E6F6F6DLL;
    case 0x1A4:
      return 0x20746E6164726F6DLL;
    case 0x1A5:
      v41 = 1936945005;
      return v41 | 0x6572672000000000;
    case 0x1A6:
      return 0x6E6961746E756F6DLL;
    case 0x1A8:
      return 0x79727265626C756DLL;
    case 0x1A9:
      v32 = 0x6C65736E756DLL;
      return v32 & 0xFFFFFFFFFFFFLL | 0x6C000000000000;
    case 0x1AA:
      return 0x6472617473756DLL;
    case 0x1AB:
      return 0x656C7472796DLL;
    case 0x1AC:
      return 0x6B6968736564616ELL;
    case 0x1AD:
      v26 = 0x72656970616ELL;
      goto LABEL_608;
    case 0x1AE:
      v22 = 0x73656C70616ELL;
      return v22 & 0xFFFFFFFFFFFFLL | 0x7920000000000000;
    case 0x1AF:
      return 0x77206F6A6176616ELL;
    case 0x1B0:
      v10 = 2037801326;
      return v10 | 0x756C622000000000;
    case 0x1B1:
      return 0x726163206E6F656ELL;
    case 0x1B2:
      return 0x637566206E6F656ELL;
    case 0x1B3:
      v2 = 1852794222;
      return v2 | 0x6572672000000000;
    case 0x1B5:
      return 0x6F62206E6165636FLL;
    case 0x1B6:
      v14 = 1919443823;
      goto LABEL_367;
    case 0x1B7:
      v26 = 0x65636966666FLL;
      goto LABEL_608;
    case 0x1B8:
      return 0x646C6F6720646C6FLL;
    case 0x1B9:
      return 0x6563616C20646C6FLL;
    case 0x1BA:
      return 0x6576616C20646C6FLL;
    case 0x1BB:
      return 0x7675616D20646C6FLL;
    case 0x1BC:
      return 0x65736F7220646C6FLL;
    case 0x1BD:
      return 0x6576696C6FLL;
    case 0x1BE:
      return 0x7264206576696C6FLL;
    case 0x1BF:
      v39 = 0x206576696C6FLL;
      return v39 & 0xFFFFFFFFFFFFLL | 0x7267000000000000;
    case 0x1C0:
      v6 = 1986620527;
LABEL_129:
      v13 = v6 & 0xFFFF0000FFFFFFFFLL | 0x6E6900000000;
      return v13 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
    case 0x1C1:
      return 2021224047;
    case 0x1C2:
      return 0x616D20617265706FLL;
    case 0x1C3:
      return 0x65676E61726FLL;
    case 0x1C4:
      v7 = 0x65676E61726FLL;
      return v7 & 0xFFFFFFFFFFFFLL | 0x7920000000000000;
    case 0x1C5:
      return 0x702065676E61726FLL;
    case 0x1C6:
      return 0x722065676E61726FLL;
    case 0x1C7:
      return 0x64696863726FLL;
    case 0x1C8:
      return 0x726220726574746FLL;
    case 0x1C9:
      return 0x707320726574756FLL;
    case 0x1CB:
      v3 = 0x64726F66786FLL;
      return v3 & 0xFFFFFFFFFFFFLL | 0x6220000000000000;
    case 0x1CC:
      return 0x2063696669636170;
    case 0x1CD:
      return 0x75716120656C6170;
    case 0x1CE:
      v10 = 1701601648;
      return v10 | 0x756C622000000000;
    case 0x1CF:
      return 0x6F726220656C6170;
    case 0x1D0:
      return 0x72616320656C6170;
    case 0x1D1:
      v37 = 1701601648;
      return v37 | 0x7265632000000000;
    case 0x1D2:
      v34 = 1701601648;
      return v34 | 0x6568632000000000;
    case 0x1D3:
      return 0x706F6320656C6170;
    case 0x1D4:
      return 0xD000000000000014;
    case 0x1D5:
      return 0x6C6F6720656C6170;
    case 0x1D6:
      return 0x6C6F6720656C6170;
    case 0x1D7:
      v2 = 1701601648;
      return v2 | 0x6572672000000000;
    case 0x1D8:
      v40 = 1701601648;
      return v40 | 0x76616C2000000000;
    case 0x1D9:
      return 0x67616D20656C6170;
    case 0x1DA:
      return 0x6E697020656C6170;
    case 0x1DB:
      return 0x756C7020656C6170;
    case 0x1DC:
      return 0x64657220656C6170;
    case 0x1DD:
      return 0xD000000000000013;
    case 0x1DE:
      return 0x6C697320656C6170;
    case 0x1DF:
      return 0x75617420656C6170;
    case 0x1E0:
      return 0x6F697620656C6170;
    case 0x1E1:
      return 0x7720617961706170;
    case 0x1E2:
      v39 = 0x207369726170;
      return v39 & 0xFFFFFFFFFFFFLL | 0x7267000000000000;
    case 0x1E3:
      v25 = 0x6C6574736170;
      return v25 & 0xFFFFFFFFFFFFLL | 0x6220000000000000;
    case 0x1E4:
      return 0x62206C6574736170;
    case 0x1E5:
      return 0x67206C6574736170;
    case 0x1E6:
      return 0x67206C6574736170;
    case 0x1E7:
      return 0x6D206C6574736170;
    case 0x1E8:
      v11 = 0x6C6574736170;
      return v11 & 0xFFFFFFFFFFFFLL | 0x6F20000000000000;
    case 0x1E9:
      v36 = 0x6C6574736170;
      return v36 & 0xFFFFFFFFFFFFLL | 0x7020000000000000;
    case 0x1EA:
      v38 = 0x6C6574736170;
      return v38 & 0xFFFFFFFFFFFFLL | 0x7020000000000000;
    case 0x1EB:
      return 0x72206C6574736170;
    case 0x1EC:
      return 0x76206C6574736170;
    case 0x1ED:
      v7 = 0x6C6574736170;
      return v7 & 0xFFFFFFFFFFFFLL | 0x7920000000000000;
    case 0x1EE:
      return 0x726720656E796170;
    case 0x1EF:
      return 0x6863616570;
    case 0x1F0:
      return 0x7570206863616570;
    case 0x1F1:
      v18 = 0x206863616570;
      return v18 & 0xFFFFFFFFFFFFLL | 0x6579000000000000;
    case 0x1F2:
      return 1918985584;
    case 0x1F3:
      return 0x6C72616570;
    case 0x1F4:
      return 0x7161206C72616570;
    case 0x1F5:
      return 0x746F6469726570;
    case 0x1F6:
      return 0x6B6E697769726570;
    case 0x1F7:
      return 0x206E616973726570;
    case 0x1F8:
      return 0x206E616973726570;
    case 0x1F9:
      return 0x206E616973726570;
    case 0x1FA:
      return 0x206E616973726570;
    case 0x1FB:
      return 0x206E616973726570;
    case 0x1FC:
      return 0x206E616973726570;
    case 0x1FD:
      return 0x206E616973726570;
    case 0x1FE:
      return 0x786F6C6870;
    case 0x1FF:
      return 0x206F6C6168746870;
    case 0x200:
      return 0x206F6C6168746870;
    case 0x201:
      return 0x6970207967676970;
    case 0x202:
      v2 = 1701734768;
      return v2 | 0x6572672000000000;
    case 0x203:
      return 1802398064;
    case 0x204:
      return 0x616C66206B6E6970;
    case 0x205:
      return 0x656873206B6E6970;
    case 0x206:
      v15 = 1802398064;
      return v15 | 0x6165702000000000;
    case 0x207:
      return 0x6968636174736970;
    case 0x208:
      return 0x6D756E6974616C70;
    case 0x209:
      return 1836412016;
    case 0x20A:
      return 0x646E616C74726F70;
    case 0x20B:
      v25 = 0x726564776F70;
      return v25 & 0xFFFFFFFFFFFFLL | 0x6220000000000000;
    case 0x20D:
      return 0x6E61697373757270;
    case 0x20F:
      return 1701016944;
    case 0x210:
      v12 = 0x696B706D7570;
      return v12 & 0xFFFFFFFFFFFFLL | 0x6E000000000000;
    case 0x211:
      return 0x656C70727570;
    case 0x212:
      return 0x6820656C70727570;
    case 0x213:
      v20 = 9;
      return v20 | 0xD000000000000010;
    case 0x214:
      return 0xD000000000000017;
    case 0x215:
      return 0x7020656C70727570;
    case 0x216:
      return 0x7420656C70727570;
    case 0x217:
      v21 = 0x616369646172;
      return v21 & 0xFFFFFFFFFFFFLL | 0x206C000000000000;
    case 0x218:
      return 0x7272656270736172;
    case 0x219:
      return 0x7272656270736172;
    case 0x21A:
      return 0x7272656270736172;
    case 0x21B:
      return 0x7272656270736172;
    case 0x21C:
      return 0x6E65697320776172;
    case 0x21E:
      return 0x6174616D7A7A6172;
    case 0x21F:
      return 6579570;
    case 0x220:
      return 0x6E61726F20646572;
    case 0x221:
      return 0x776F726220646572;
    case 0x222:
      return 0x6C6F697620646572;
    case 0x223:
      return 0x616C622068636972;
    case 0x224:
      return 0x7261632068636972;
    case 0x226:
      return 0x6C696C2068636972;
    case 0x227:
      return 0x72616D2068636972;
    case 0x229:
      return 1702063986;
    case 0x22A:
      return 0x6E6F622065736F72;
    case 0x22B:
      return 0x6F62652065736F72;
    case 0x22C:
      return 0x64616D2065736F72;
    case 0x22D:
      v5 = 1702063986;
      return v5 | 0x6E69702000000000;
    case 0x22E:
      return 0x6175712065736F72;
    case 0x22F:
      return 0x7561742065736F72;
    case 0x230:
      return 0x6C61762065736F72;
    case 0x231:
      return 0x646F6F7765736F72;
    case 0x232:
      return 0x6F63206F73736F72;
    case 0x233:
      return 0x6F72622079736F72;
    case 0x234:
      return 0x7A61206C61796F72;
    case 0x235:
      v19 = 1635348338;
      return v19 | 0x6C62206C00000000;
    case 0x236:
      return 0x7566206C61796F72;
    case 0x237:
      return 0x7570206C61796F72;
    case 0x238:
      return 2036495730;
    case 0x239:
      return 0x7262207964647572;
    case 0x23A:
      return 0x6970207964647572;
    case 0x23B:
      return 0x73756F667572;
    case 0x23C:
      v29 = 1936946546;
      return v29 & 0xFFFF0000FFFFFFFFLL | 0x746500000000;
    case 0x23D:
      return 1953723762;
    case 0x23F:
      v33 = 0x656C64646173;
      return v33 & 0xFFFFFFFFFFFFLL | 0x6220000000000000;
    case 0x240:
      v11 = 0x797465666173;
      return v11 & 0xFFFFFFFFFFFFLL | 0x6F20000000000000;
    case 0x241:
      v12 = 0x6F7266666173;
      return v12 & 0xFFFFFFFFFFFFLL | 0x6E000000000000;
    case 0x242:
      return 0xD000000000000012;
    case 0x243:
      return 0x6E6F6D6C6173;
    case 0x244:
      return 0x70206E6F6D6C6173;
    case 0x245:
      return 1684955507;
    case 0x246:
      return 0x6E756420646E6173;
    case 0x247:
      return 0x726F7473646E6173;
    case 0x248:
      v30 = 0x2079646E6173;
      return v30 & 0xFFFFFFFFFFFFLL | 0x7262000000000000;
    case 0x249:
      return 0x61742079646E6173;
    case 0x24A:
      return 0x6565726720706173;
    case 0x24B:
      return 0x6572696870706173;
    case 0x24D:
      return 0x74656C72616373;
    case 0x24F:
      return 0x6E696D6165726373;
    case 0x250:
      v31 = 543253875;
      return v31 | 0x65756C6200000000;
    case 0x251:
      return 0x6565726720616573;
    case 0x252:
      return 0x6F7262206C616573;
    case 0x253:
      return 0x6C6C656873616573;
    case 0x255:
      return 0x6169706573;
    case 0x256:
      return 0x776F64616873;
    case 0x257:
      return 0x6B636F726D616873;
    case 0x258:
      return 0x6B636F726D616873;
    case 0x259:
      return 0x676E696B636F6873;
    case 0x25A:
      return 0x616E6E656973;
    case 0x25B:
      v17 = 1986816371;
      return v17 & 0xFFFF0000FFFFFFFFLL | 0x726500000000;
    case 0x25C:
      return 0x666F6C65626F6B73;
    case 0x25D:
      v31 = 544828275;
      return v31 | 0x65756C6200000000;
    case 0x25E:
      return 0x6567616D20796B73;
    case 0x25F:
      return 0x6C62206574616C73;
    case 0x260:
      return 0x7267206574616C73;
    case 0x261:
      return 0x746C616D73;
    case 0x262:
      return 0x742079656B6F6D73;
    case 0x263:
      return 0x6C6220796B6F6D73;
    case 0x264:
      return 2003791475;
    case 0x266:
      v26 = 0x676E69727073;
      goto LABEL_608;
    case 0x267:
      v19 = 1701147763;
      return v19 | 0x6C62206C00000000;
    case 0x269:
      return 0x617A7A697473;
    case 0x26A:
      return 0x6F6C636D726F7473;
    case 0x26B:
      return 0x7761727473;
    case 0x26C:
      return 0x776F6C676E7573;
    case 0x26D:
      return 0x746867696C6E7573;
    case 0x26E:
      v29 = 1936618867;
      return v29 & 0xFFFF0000FFFFFFFFLL | 0x746500000000;
    case 0x26F:
      v27 = 0x7465736E7573;
      goto LABEL_399;
    case 0x270:
      return 7233908;
    case 0x271:
      return 0x6F6C65676E6174;
    case 0x272:
      return 0x6E697265676E6174;
    case 0x274:
      v14 = 1886740852;
      goto LABEL_367;
    case 0x275:
      return 0x7267206570756174;
    case 0x276:
      return 0x796E776174;
    case 0x277:
      return 0x6565726720616574;
    case 0x278:
      return 0x65736F7220616574;
    case 0x279:
      return 1818322292;
    case 0x27A:
      v24 = 1818322292;
      return v24 | 0x756C622000000000;
    case 0x27B:
      return 0x657267206C616574;
    case 0x27C:
      return 0x6F63206172726574;
    case 0x27D:
      v13 = 0x6C7473696874;
      return v13 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
    case 0x27E:
      return 0x206E61696C756874;
    case 0x27F:
      return 0x20796E6166666974;
    case 0x280:
      return 0x7965207265676974;
    case 0x281:
      return 0x6F777265626D6974;
    case 0x282:
      return 0x6D75696E61746974;
    case 0x283:
      return 0x6F74616D6F74;
    case 0x284:
      return 0x7A61706F74;
    case 0x285:
      return 0x20726F7463617274;
    case 0x286:
      return 0x2079656C6C6F7274;
    case 0x288:
      v24 = 1702195828;
      return v24 | 0x756C622000000000;
    case 0x289:
      return 0x6C62207374667574;
    case 0x28A:
      return 0x6577656C626D7574;
    case 0x28B:
      return 0x206873696B727574;
    case 0x28C:
      return 0x73696F7571727574;
    case 0x28D:
      return 0x73696F7571727574;
    case 0x28E:
      return 0x73696F7571727574;
    case 0x28F:
      return 0x72206E6163737574;
    case 0x291:
      return 0x70206E6169727974;
    case 0x292:
      v13 = 0x756C62206175;
      return v13 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
    case 0x293:
      return 0x646572206175;
    case 0x294:
      v10 = 1634493301;
      return v10 | 0x756C622000000000;
    case 0x295:
      return 0x6C6F6720616C6375;
    case 0x296:
      return 0x65657267206F6675;
    case 0x297:
      return 0x7365726F66207075;
    case 0x298:
      return 0x6F6F72616D207075;
    case 0x299:
      return 0x6472616320637375;
    case 0x29A:
      return 0x646C6F6720637375;
    case 0x29B:
      return 6644341;
    case 0x29C:
      return 0x6970206172746C75;
    case 0x29D:
      return 0x72616D6172746C75;
    case 0x29F:
      return 0x7265626D75;
    case 0x2A0:
      return 0xD000000000000013;
    case 0x2A1:
      v20 = 13;
      return v20 | 0xD000000000000010;
    case 0x2A2:
      return 0x776F6C6C656D6E75;
    case 0x2A3:
      v16 = 1685287029;
LABEL_302:
      v21 = v16 & 0xFFFF0000FFFFFFFFLL | 0x6C6500000000;
      return v21 & 0xFFFFFFFFFFFFLL | 0x206C000000000000;
    case 0x2A4:
      v28 = 0x6C6C696E6176;
      return v28 & 0xFFFFFFFFFFFFLL | 0x61000000000000;
    case 0x2A5:
      return 0x6F67207361676576;
    case 0x2A6:
      return 0x6E616974656E6576;
    case 0x2A7:
      return 0x6972676964726576;
    case 0x2A8:
      return 0x6F696C696D726576;
    case 0x2A9:
      return 0x6163696E6F726576;
    case 0x2AA:
      v29 = 1819240822;
      return v29 & 0xFFFF0000FFFFFFFFLL | 0x746500000000;
    case 0x2AB:
      v25 = 0x74656C6F6976;
      return v25 & 0xFFFFFFFFFFFFLL | 0x6220000000000000;
    case 0x2AC:
      return 0x722074656C6F6976;
    case 0x2AD:
      return 0x6E61696469726976;
    case 0x2AE:
      return 0x7561206469766976;
    case 0x2AF:
      return 0x7562206469766976;
    case 0x2B0:
      return 0x6563206469766976;
    case 0x2B1:
      return 0x6174206469766976;
    case 0x2B2:
      return 0x6976206469766976;
    case 0x2B3:
      return 0x616C62206D726177;
    case 0x2B4:
      return 0x6F70737265746177;
    case 0x2B5:
      v14 = 1735288183;
      goto LABEL_367;
    case 0x2B6:
      return 0x7461656877;
    case 0x2B7:
      v14 = 1953065079;
LABEL_367:
      result = v14 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
      break;
    case 0x2B8:
      result = 0x6D73206574696877;
      break;
    case 0x2B9:
      result = 0x72747320646C6977;
      break;
    case 0x2BA:
      result = 0x74617720646C6977;
      break;
    case 0x2BC:
      result = 1701734775;
      break;
    case 0x2BD:
      result = 0x6169726574736977;
      break;
    case 0x2BE:
      result = 0x7564616E6178;
      break;
    case 0x2BF:
      result = 0x756C6220656C6179;
      break;
    case 0x2C0:
      result = 0x776F6C6C6579;
      break;
    case 0x2C1:
      v27 = 0x776F6C6C6579;
LABEL_399:
      result = v27 & 0xFFFFFFFFFFFFLL | 0x6F20000000000000;
      break;
    case 0x2C2:
      v26 = 0x776F6C6C6579;
LABEL_608:
      result = v26 & 0xFFFFFFFFFFFFLL | 0x6720000000000000;
      break;
    case 0x2C3:
      result = 0x65726666617ALL;
      break;
    default:
      return result;
  }

  return result;
}