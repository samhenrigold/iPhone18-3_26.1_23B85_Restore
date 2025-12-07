uint64_t *sub_252919DE8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  *a2 = 5;
  *(a2 + 8) = v2;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 100;
  return result;
}

void *sub_252919E68@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_252919EA0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_252E36F34();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_DWORD *sub_252919F00@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_252919F68@<X0>(uint64_t a1@<X8>)
{
  result = sub_252E36164();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

void *sub_252919FAC@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  result = sub_252E330E4();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_25291A048(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_14:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_13:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_14;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_13;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540080, &qword_252E3BCA8);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_13;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540078, &qword_252E3BCA0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[9];
    goto LABEL_13;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540070, &qword_252E3BC98);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[11];
    goto LABEL_13;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540068, &qword_252E3BC90);
  v20 = *(*(v19 - 8) + 48);
  v21 = a1 + a3[14];

  return v20(v21, a2, v19);
}

uint64_t sub_25291A2FC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_14:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_13:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_14;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_13;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540080, &qword_252E3BCA8);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_13;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540078, &qword_252E3BCA0);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[9];
    goto LABEL_13;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540070, &qword_252E3BC98);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[11];
    goto LABEL_13;
  }

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540068, &qword_252E3BC90);
  v22 = *(*(v21 - 8) + 56);
  v23 = a1 + a4[14];

  return v22(v23, a2, a2, v21);
}

uint64_t sub_25291A5BC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25291A610()
{
  v1 = sub_252E36984();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_252E36974();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v11 + 8, v10 | 7);
}

uint64_t sub_25291A90C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540330, &unk_252E3C7F0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v5 = sub_252E33C84();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25291AAB4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540330, &unk_252E3C7F0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v5 = sub_252E33C84();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25291ABB0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_25291ABE8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t sub_25291AC7C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25291ACD8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25291AD10()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25291AD50()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25291AD90@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 176);
}

uint64_t sub_25291ADE0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 184);
}

uint64_t sub_25291AF40()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_25291B034()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25291B074()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25291B0B4()
{

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_25291B0FC()
{

  return MEMORY[0x2821FE8E8](v0, 28, 7);
}

uint64_t sub_25291B14C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25291B378()
{

  return MEMORY[0x2821FE8E8](v0, 30, 7);
}

uint64_t sub_25291B3B0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25291B448()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_25291B4A0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25291B4E0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25291B530()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25291B570()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25291B5B0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25291B5F8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_25291B664(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_45;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v26 = isUniquelyReferenced_nonNull_bridgeObject;
    v28 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x277D84F90];
    v27 = v1;
    while (1)
    {
      if (v30)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x2530ADF00](v2, v26);
      }

      else
      {
        if (v2 >= *(v29 + 16))
        {
          goto LABEL_40;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v28 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2, 1);
      v6 = v2 + 1;
      if (v5)
      {
        break;
      }

      v7 = [isUniquelyReferenced_nonNull_bridgeObject accessories];
      sub_25293F638(0, &qword_2814B0270, 0x277CD1650);
      v8 = sub_252E37264();

      v9 = v8 >> 62;
      if (v8 >> 62)
      {
        v10 = sub_252E378C4();
      }

      else
      {
        v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
LABEL_38:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
          goto LABEL_38;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v31 = v6;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v11)
        {
          v13 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

LABEL_19:
        sub_252E378C4();
        goto LABEL_20;
      }

      if (v11)
      {
        goto LABEL_19;
      }

LABEL_20:
      isUniquelyReferenced_nonNull_bridgeObject = sub_252E37A54();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v33 = v3;
      v14 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v16 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_25:
          if (((v15 >> 1) - v14) < v10)
          {
            goto LABEL_42;
          }

          v17 = v13 + 8 * v14 + 32;
          if (v9)
          {
            if (v16 < 1)
            {
              goto LABEL_44;
            }

            sub_2529E6488(&qword_27F541390, &qword_27F541388, &qword_252E404A8, MEMORY[0x277D83988]);
            for (i = 0; i != v16; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541388, &qword_252E404A8);
              v19 = sub_2529FBD80(v32, i, v8);
              v21 = *v20;
              (v19)(v32, 0);
              *(v17 + 8 * i) = v21;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v27;
          v3 = v33;
          if (v10 >= 1)
          {
            v22 = *(v13 + 16);
            v5 = __OFADD__(v22, v10);
            v23 = v22 + v10;
            if (v5)
            {
              goto LABEL_43;
            }

            *(v13 + 16) = v23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16)
        {
          goto LABEL_25;
        }
      }

      v3 = v33;
      if (v10 > 0)
      {
        goto LABEL_41;
      }

LABEL_5:
      v2 = v31;
      if (v31 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_252E378C4();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_25291BA8C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25291BACC()
{
  v1 = sub_252E36AB4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25291BB90()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_25291BCB0(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_46;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v26 = isUniquelyReferenced_nonNull_bridgeObject;
    v28 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x277D84F90];
    v27 = v1;
    while (1)
    {
      if (v30)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x2530ADF00](v2, v26);
        v4 = isUniquelyReferenced_nonNull_bridgeObject;
        v5 = __OFADD__(v2, 1);
        v6 = v2 + 1;
        if (v5)
        {
          goto LABEL_40;
        }
      }

      else
      {
        if (v2 >= *(v29 + 16))
        {
          goto LABEL_41;
        }

        v4 = *(v28 + 8 * v2);

        v5 = __OFADD__(v2, 1);
        v6 = v2 + 1;
        if (v5)
        {
          goto LABEL_40;
        }
      }

      v7 = [*(v4 + OBJC_IVAR____TtC22HomeAutomationInternal4Zone_delegate) rooms];
      sub_25293F638(0, &qword_2814B0200, 0x277CD1D88);
      v8 = sub_252E37264();

      v9 = v8 >> 62;
      v10 = v8 >> 62 ? sub_252E378C4() : *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v11 = v3 >> 62;
      if (v3 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
      {
        goto LABEL_39;
      }

LABEL_13:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v31 = v6;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v11)
        {
          v13 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_20;
          }

          goto LABEL_19;
        }

LABEL_18:
        sub_252E378C4();
        goto LABEL_19;
      }

      if (v11)
      {
        goto LABEL_18;
      }

LABEL_19:
      isUniquelyReferenced_nonNull_bridgeObject = sub_252E37A54();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_20:
      v33 = v3;
      v14 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v16 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_24:
          if (((v15 >> 1) - v14) < v10)
          {
            goto LABEL_43;
          }

          v17 = v13 + 8 * v14 + 32;
          if (v9)
          {
            if (v16 < 1)
            {
              goto LABEL_45;
            }

            sub_252A00B04(&qword_27F5413B0, &qword_27F5413A8, &qword_252E404B8);
            for (i = 0; i != v16; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5413A8, &qword_252E404B8);
              v19 = sub_2529FBD80(v32, i, v8);
              v21 = *v20;
              (v19)(v32, 0);
              *(v17 + 8 * i) = v21;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v27;
          v3 = v33;
          if (v10 >= 1)
          {
            v22 = *(v13 + 16);
            v5 = __OFADD__(v22, v10);
            v23 = v22 + v10;
            if (v5)
            {
              goto LABEL_44;
            }

            *(v13 + 16) = v23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16)
        {
          goto LABEL_24;
        }
      }

      v3 = v33;
      if (v10 > 0)
      {
        goto LABEL_42;
      }

LABEL_5:
      v2 = v31;
      if (v31 == v1)
      {
        return v3;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
    v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
    {
      goto LABEL_13;
    }

LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_252E378C4();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_25291C340()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_25291C6B8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25291C6F0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25291C728()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25291C780()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25291C7C0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25291C83C()
{
  sub_252A6569C(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

id sub_25291CA90@<X0>(void *a1@<X8>)
{
  result = [*v1 accessory];
  *a1 = result;
  return result;
}

id sub_25291CB10@<X0>(void *a1@<X8>)
{
  result = [*v1 characteristic];
  *a1 = result;
  return result;
}

id sub_25291CB4C()
{
  v1 = [*v0 request];

  return v1;
}

uint64_t sub_25291CB84()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25291CBBC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25291CC00()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_25291CC38()
{
  v1 = sub_252E36AB4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_25291CD1C()
{
  v1 = sub_252E36AB4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_25291D214()
{
  sub_2529B7A2C(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 49, 7);
}

uint64_t sub_25291D374()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25291D3AC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25291D678()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_25291D6C0()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_25291D720()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_25291D770()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25291D7B8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25291DA2C(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[7];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A18, &qword_252E5FE30);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B50, &unk_252E47970);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[11];

  return v15(v16, a2, v14);
}

uint64_t sub_25291DBBC(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A18, &qword_252E5FE30);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B50, &unk_252E47970);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[11];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_25291DE5C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25291DEF4@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_25291E090()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25291E118()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void *sub_25291E150@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  result = sub_252E330E4();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_25291E1C4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B68, &qword_252E49240);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_7;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B70, &qword_252E41BF8);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[8];

  return v17(v18, a2, v16);
}

uint64_t sub_25291E37C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B68, &qword_252E49240);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_7;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B70, &qword_252E41BF8);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[8];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_25291E540()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_25291E594()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25291E5CC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25291E60C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25291E64C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_252E36324();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, v4 + v3 + 2, v2 | 7);
}

uint64_t sub_25291E770()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_25291E7C0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25291E800()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25291EA2C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25291EA64()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25291EAAC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25291EAEC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25291EB24()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25291EB5C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25291ED2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_252E36C84();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_25291ED98(uint64_t a1, uint64_t a2)
{
  v4 = sub_252E36C84();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_25291EE80()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_25291EFD0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25291F018()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25291F07C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270) - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 24) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;

  v6 = sub_252E36324();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  if (!v8(v0 + v4, 1, v6))
  {
    (*(v7 + 8))(v0 + v4, v6);
  }

  if (!v8(v0 + v5, 1, v6))
  {
    (*(v7 + 8))(v0 + v5, v6);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v5 + 1, v2 | 7);
}

uint64_t sub_25291FE10()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25291FE50()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25291FE90()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25291FEC8()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_25291FF20()
{
  v1 = sub_252E36AB4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_25292003C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void *sub_252920084@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  result = sub_252E330E4();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_252920110(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_11:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_12;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B68, &qword_252E49240);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_11;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B60, &qword_252E41BF0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v12 = *(v16 - 8);
    v13 = a3[9];
    goto LABEL_11;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B70, &qword_252E41BF8);
  v19 = *(*(v18 - 8) + 48);
  v20 = a1 + a3[10];

  return v19(v20, a2, v18);
}

uint64_t sub_252920370(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_11:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_12;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B68, &qword_252E49240);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_11;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_11;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B60, &qword_252E41BF0);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[9];
    goto LABEL_11;
  }

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B70, &qword_252E41BF8);
  v21 = *(*(v20 - 8) + 56);
  v22 = a1 + a4[10];

  return v21(v22, a2, a2, v20);
}

uint64_t sub_2529205DC()
{
  sub_252927D3C(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_252920618()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_252920668()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2529206B0()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2529206FC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_252920738()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_252920780()
{

  return MEMORY[0x2821FE8E8](v0, 168, 7);
}

uint64_t sub_252920804()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25292083C()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 152, 7);
}

uint64_t sub_2529208B8()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_252920A2C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_252920A64()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_252920B84()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_252920BC8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_252920C00()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_252920C40()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_252920C78()
{

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_252920CD4()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_252920D1C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_252920D64()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_252920DD4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_252920E1C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_252920E64()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_252E36324();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_252920FC8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2529212B4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2529212FC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540330, &unk_252E3C7F0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v5 = sub_252E33C84();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2529213F8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_252BA385C(a1, a2, a3, type metadata accessor for HomeAutomationSceneEnabledGoodMorningParameters, 0x6E726F4D646F6F67, 0xEB00000000676E69);
}

uint64_t sub_252921480(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_252BA385C(a1, a2, a3, type metadata accessor for HomeAutomationSceneEnabledGoodNightParameters, 0x6867694E646F6F67, 0xE900000000000074);
}

uint64_t sub_252921504(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_252BA385C(a1, a2, a3, type metadata accessor for HomeAutomationSceneEnabledLeavingHomeParameters, 0x6E697661654C6D69, 0xE900000000000067);
}

uint64_t sub_252921588(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_252BA385C(a1, a2, a3, type metadata accessor for HomeAutomationSceneEnabledArrivingHomeParameters, 0x656D6F486D69, 0xE600000000000000);
}

void *sub_252921604@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  result = sub_252E330E4();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_252921680(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543920, &unk_252E4FDF8);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543928, &qword_252E4FE08);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_7;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
  v17 = *(*(v16 - 8) + 48);
  v18 = a1 + a3[9];

  return v17(v18, a2, v16);
}

uint64_t sub_252921838(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543920, &unk_252E4FDF8);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543928, &qword_252E4FE08);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_7;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[9];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_2529219FC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_252921A3C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_252921BF8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_252BCEFDC(a1, a2, a3);
}

uint64_t sub_252921C50()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_252921C88()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void *sub_252921CD4@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  result = sub_252E330E4();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_252921D30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A18, &qword_252E5FE30);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 2)
      {
        return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_252921E64(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A18, &qword_252E5FE30);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_252921FEC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_252922064()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2529220A4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540788, &unk_252E3DC30);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_252922184()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

id sub_252922284@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

uint64_t sub_2529222E4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25292231C()
{
  v1 = sub_252E36D54();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2529223CC()
{
  v1 = sub_252E36D54();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2529224B0()
{
  v1 = sub_252E36D54();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_252922598()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2529225D4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_252922614()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_252922874()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2529228AC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_252922914(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 36));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_2529229E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_252922AAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_252922B80(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32)) = a2;
  }

  return result;
}

uint64_t sub_252922C5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 28));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_252922D28(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_252922DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_252922EB4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_252922F64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_25292302C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2529230F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2529231B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2529233E8()
{

  return MEMORY[0x2821FE8E8](v0, 73, 7);
}

uint64_t sub_252923430()
{
  if (*(v0 + 56))
  {
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t sub_25292347C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2529234B4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2529234F4()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_252923544()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_252923750()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t sub_252923908()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_252923948()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_252E36324();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_252923A6C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_252923AAC()
{

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_252923D84()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_252923E0C@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(a2, __src, 0x1F8uLL);
  return sub_2529353AC(__dst, &v5);
}

uint64_t sub_252923FD8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_252924028()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_252924130()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_252924170()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2529241B0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2529241E8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_252924220()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_252924268()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2529242A8()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2529242F4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25292432C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_252924384()
{

  return MEMORY[0x2821FE8E8](v0, 168, 7);
}

uint64_t sub_252924414()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 73, 7);
}

uint64_t sub_2529244F8()
{
  v1 = sub_252E36AB4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545828, &qword_252E5C408);
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8 + 8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);

  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

void sub_25292466C(uint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x797469746E45;
  v4 = 0xEB00000000746E65;
  v5 = 0x5374736575716552;
  if (*v1 != 2)
  {
    v5 = 0x6574617453;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x6E6F707365526F4ELL;
    v2 = 0xEA00000000006573;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_2529246F0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_252924730()
{
  v1 = sub_252E36AB4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_252924840()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_252924878()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2529248D0()
{
  v1 = sub_252E36AB4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_2529249FC()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_252924B38()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_252924B70()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void *sub_252924BC8@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  result = sub_252E330E4();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_252924C1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B50, &unk_252E47970);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A18, &qword_252E5FE30);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_252924D58(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B50, &unk_252E47970);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A18, &qword_252E5FE30);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_252924E94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5434B8, &qword_252E4BE48);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_252924FD0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5434B8, &qword_252E4BE48);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_25292510C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5439D0, &qword_252E50220);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_2529251C8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5439D0, &qword_252E50220);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2529253C0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2529254D4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25292550C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_252925550()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_252925590()
{
  v1 = *(*v0 + 16);

  return v1;
}

uint64_t sub_2529255C4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2529255FC()
{
  v1 = sub_252E34164();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2529256C0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t sub_252925710@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 56);
  *a2 = *(v3 + 48);
  a2[1] = v4;
}

uint64_t sub_252925768()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2529257A0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2529257D8()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_252925820()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id sub_252925908@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *a2 = v4;

  return v4;
}

uint64_t sub_252925964()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_252925A94()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_252925ADC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_252925C14()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_252925C4C@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A18, &qword_252E5FE30);
  result = sub_252E33074();
  *a1 = result;
  return result;
}

uint64_t sub_252925C90(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A18, &qword_252E5FE30);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_252925D08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542A18, &qword_252E5FE30);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_252925E28()
{

  return MEMORY[0x2821FE8E8](v0, 30, 7);
}

uint64_t sub_252925E9C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_252925ED4()
{

  return MEMORY[0x2821FE8E8](v0, 176, 7);
}

uint64_t sub_252925F5C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_252925FC0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_252926088()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2529260D0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_252926118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_252E358D4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2529261D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_252E358D4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_25292628C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2529262C4()
{
  v1 = sub_252E36AB4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_252926364()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2529263AC()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2529263F4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_25292643C()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_25292649C()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2529264EC()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25292662C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_252926674()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2529266C4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id sub_252926744@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 trigger];
  *a2 = result;
  return result;
}

id sub_252926794@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 automatableTask];
  *a2 = result;
  return result;
}

uint64_t sub_2529267F4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___AutomateHomeIntentResponse_code;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_25292684C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___AutomateHomeIntentResponse_code;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id sub_2529268A0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 discoveryType];
  *a2 = result;
  return result;
}

uint64_t sub_2529269B8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___DiscoverHomeIntentResponse_code;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_252926A10(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___DiscoverHomeIntentResponse_code;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id sub_252926A6C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 dateTimeRange];
  *a2 = result;
  return result;
}

uint64_t sub_252926AC4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___ShowHomeIntentResponse_code;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_252926B1C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___ShowHomeIntentResponse_code;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id sub_252926B70@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 userTask];
  *a2 = result;
  return result;
}

id sub_252926C28@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 time];
  *a2 = result;
  return result;
}

uint64_t sub_252926CE0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___ControlHomeIntentResponse_code;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_252926D38(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___ControlHomeIntentResponse_code;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id sub_252926D8C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 type];
  *a2 = result;
  return result;
}

id sub_252926DD4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 value];
  *a2 = result;
  return result;
}

id sub_252926E74@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 entityType];
  *a2 = result;
  return result;
}

id sub_252926EBC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 outerDeviceType];
  *a2 = result;
  return result;
}

id sub_252926F44@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 deviceType];
  *a2 = result;
  return result;
}

id sub_25292708C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 isExcludeFilter];
  *a2 = result;
  return result;
}

id sub_2529270DC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 hasAllQuantifier];
  *a2 = result;
  return result;
}

id sub_2529271AC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 referencesFavorites];
  *a2 = result;
  return result;
}

id sub_25292723C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 type];
  *a2 = result;
  return result;
}

id sub_252927314@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 sceneType];
  *a2 = result;
  return result;
}

id sub_25292746C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 taskType];
  *a2 = result;
  return result;
}

id sub_2529274B4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 attribute];
  *a2 = result;
  return result;
}

id sub_2529274FC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 value];
  *a2 = result;
  return result;
}

id sub_25292754C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 BOOLValue];
  *a2 = result;
  return result;
}

id sub_252927594@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 doubleValue];
  *a2 = v4;
  return result;
}

id sub_2529275DC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 integerValue];
  *a2 = result;
  return result;
}

id sub_25292762C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 limitValue];
  *a2 = result;
  return result;
}

id sub_252927674@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 unit];
  *a2 = result;
  return result;
}

id sub_2529276BC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 rangeValue];
  *a2 = result;
  return result;
}

id sub_25292770C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 type];
  *a2 = result;
  return result;
}

id sub_252927754@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 cleaningJob];
  *a2 = result;
  return result;
}

id sub_2529277A4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 lowerValue];
  *a2 = v4;
  return result;
}

id sub_2529277EC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 upperValue];
  *a2 = v4;
  return result;
}

id sub_252927834@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 interval];
  *a2 = result;
  return result;
}

id sub_25292787C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 frequency];
  *a2 = result;
  return result;
}

id sub_2529278C4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 weeklyRecurrenceDays];
  *a2 = result;
  return result;
}

id sub_25292790C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 userTask];
  *a2 = result;
  return result;
}

id sub_25292795C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 taskOutcome];
  *a2 = result;
  return result;
}

id sub_2529279A4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 entity];
  *a2 = result;
  return result;
}

id sub_2529279FC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 runState];
  *a2 = result;
  return result;
}

void sub_252927A48(void *a1, void **a2)
{
  v2 = *a2;
  v3 = sub_252E37254();
  [v2 setCleanModes_];
}

id sub_252927AB4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 targetMap];
  *a2 = result;
  return result;
}

id sub_252927B0C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 areaID];
  *a2 = v4;
  return result;
}

id sub_252927B54@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 mapID];
  *a2 = v4;
  return result;
}

id sub_252927BA4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 mapID];
  *a2 = v4;
  return result;
}

uint64_t sub_252927BEC(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_252927C20(void *a1)
{
  v4 = *(v1 + 8);
  v2 = a1;

  return v4(v2);
}

uint64_t sub_252927CC8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_252E36474();
  *a1 = result;
  return result;
}

void sub_252927E20(void *a1, char *a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_252E32E84();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v109 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 filters];
  if (!v11)
  {
    if (qword_27F53F498 != -1)
    {
LABEL_78:
      swift_once();
    }

    v23 = sub_252E36AD4();
    __swift_project_value_buffer(v23, qword_27F544C70);
    v20 = 0xD00000000000002ALL;
    v21 = 0x8000000252E68A60;
    v22 = 48;
    goto LABEL_7;
  }

  v12 = v11;
  v103 = v8;
  type metadata accessor for HomeFilter();
  v13 = sub_252E37264();

  v14 = type metadata accessor for HomeStore(0);
  v15 = static HomeStore.shared.getter(v14);
  v16 = HomeStore.scenes(matching:)(v13);
  v18 = v17;

  if (v18)
  {
    sub_252929F10(v16, 1);
    if (qword_27F53F498 != -1)
    {
      goto LABEL_81;
    }

    goto LABEL_4;
  }

  v107 = a2;
  v27 = sub_252929F1C(v16);
  v29 = v28;
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v30 = sub_252E36AD4();
  __swift_project_value_buffer(v30, qword_27F544C70);
  v112 = 0;
  v113 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000018, 0x8000000252E68B70);
  v105 = v27;
  v106 = v29;
  v114 = v27;
  v115 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F53FBA0, &qword_252E3B238);
  sub_252E37AE4();
  sub_252CC4050(v112, v113, 0xD00000000000007FLL, 0x8000000252E68A90, 0xD000000000000021, 0x8000000252E68B10, 60);

  v31 = *(v4 + 24);
  v32 = v16 & 0xFFFFFFFFFFFFFF8;
  v102 = *(v4 + 16);
  v101 = v31;
  if (v16 >> 62)
  {
    v33 = sub_252E378C4();
  }

  else
  {
    v33 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v34 = v106;
  a2 = v107;
  v35 = v105;
  if (!v33)
  {
LABEL_70:
    v88 = 0;
    goto LABEL_72;
  }

  v36 = 0;
  v104 = 0;
  v37 = v16 & 0xC000000000000001;
  v38 = v16 + 32;
  v93 = (v9 + 32);
  v96 = v33;
  v95 = v16 & 0xC000000000000001;
  v100 = a3;
  v99 = a1;
  v111 = v16;
  v97 = v16 & 0xFFFFFFFFFFFFFF8;
  v94 = v16 + 32;
  while (2)
  {
    if (v37)
    {
      v69 = v36;
      v108 = MEMORY[0x2530ADF00](v36, v16);
      v40 = __OFADD__(v69, 1);
      v41 = v69 + 1;
      if (v40)
      {
        goto LABEL_79;
      }
    }

    else
    {
      if (v36 >= *(v32 + 16))
      {
        goto LABEL_80;
      }

      v108 = *(v38 + 8 * v36);
      v39 = v36;

      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        swift_once();
LABEL_4:
        v19 = sub_252E36AD4();
        __swift_project_value_buffer(v19, qword_27F544C70);
        v20 = 0xD000000000000025;
        v21 = 0x8000000252E68B40;
        v22 = 53;
LABEL_7:
        sub_252CC4050(v20, v21, 0xD00000000000007FLL, 0x8000000252E68A90, 0xD000000000000021, 0x8000000252E68B10, v22);
        v24 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
        v25 = OBJC_IVAR___ControlHomeIntentResponse_code;
        swift_beginAccess();
        *&v24[v25] = 102;
        [v24 setUserActivity_];
        type metadata accessor for HomeEntityResponse();
        v26 = sub_252E37254();
        [v24 setEntityResponses_];

        goto LABEL_73;
      }
    }

    v98 = v41;
    v42 = [*(v108 + OBJC_IVAR____TtC22HomeAutomationInternal5Scene_delegate) actions];
    sub_25292A2F8();
    sub_2529299AC(&qword_27F53FBB0, sub_25292A2F8, MEMORY[0x277D85378]);
    v43 = sub_252E373A4();

    v44 = v104;
    v45 = sub_252B2E20C(v43);
    v104 = v44;

    v112 = MEMORY[0x277D84F90];
    if (v45 >> 62)
    {
      v46 = sub_252E378C4();
      if (!v46)
      {
LABEL_43:
        v110 = MEMORY[0x277D84F90];
        goto LABEL_44;
      }
    }

    else
    {
      v46 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v46)
      {
        goto LABEL_43;
      }
    }

    v47 = 0;
    v110 = MEMORY[0x277D84F90];
    while (2)
    {
      v48 = v47;
      while (1)
      {
        if ((v45 & 0xC000000000000001) != 0)
        {
          v49 = MEMORY[0x2530ADF00](v48, v45);
          v47 = v48 + 1;
          if (__OFADD__(v48, 1))
          {
            goto LABEL_74;
          }
        }

        else
        {
          if (v48 >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_75;
          }

          v49 = *(v45 + 8 * v48 + 32);

          v47 = v48 + 1;
          if (__OFADD__(v48, 1))
          {
LABEL_74:
            __break(1u);
LABEL_75:
            __break(1u);
LABEL_76:
            __break(1u);
LABEL_77:
            __break(1u);
            goto LABEL_78;
          }
        }

        if (*(v49 + 40) == 1)
        {
          v50 = *(v49 + 16);
          objc_opt_self();
          v51 = swift_dynamicCastObjCClass();
          if (v51)
          {
            break;
          }
        }

LABEL_21:

        ++v48;
        if (v47 == v46)
        {
          goto LABEL_44;
        }
      }

      v52 = v51;
      a2 = v50;
      v53 = [v52 characteristic];
      v54 = [v53 service];

      if (!v54)
      {

        goto LABEL_21;
      }

      type metadata accessor for Service(0);
      v91 = swift_allocObject();
      *(v91 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) = v54;
      v55 = v54;
      v56 = [v55 uniqueIdentifier];
      sub_252E32E64();

      v57 = [v55 name];
      v110 = sub_252E36F34();
      v92 = v58;

      v59 = [v55 assistantIdentifier];
      if (v59)
      {
        v60 = v59;
        v90 = sub_252E36F34();
        v62 = v61;

        v63 = v90;
      }

      else
      {

        v63 = 0;
        v62 = 0;
      }

      v64 = v91;
      v65 = (*v93)(v91 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v109, v103);
      v66 = (v64 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v67 = v92;
      *v66 = v110;
      v66[1] = v67;
      *(v64 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = 7;
      v68 = (v64 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
      *v68 = v63;
      v68[1] = v62;
      MEMORY[0x2530AD700](v65);
      if (*((v112 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v112 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();
      v110 = v112;
      if (v47 != v46)
      {
        continue;
      }

      break;
    }

LABEL_44:

    if (v110 >> 62)
    {
      v70 = sub_252E378C4();
      v16 = v111;
      if (v70)
      {
        goto LABEL_46;
      }

LABEL_69:

      v36 = v98;
      v34 = v106;
      a2 = v107;
      a1 = v99;
      v35 = v105;
      v32 = v97;
      v37 = v95;
      v38 = v94;
      if (v98 == v96)
      {
        goto LABEL_70;
      }

      continue;
    }

    break;
  }

  v70 = *((v110 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v16 = v111;
  if (!v70)
  {
    goto LABEL_69;
  }

LABEL_46:
  v71 = 0;
  v72 = v110 & 0xC000000000000001;
  v73 = v110 & 0xFFFFFFFFFFFFFF8;
  v74 = v110 + 32;
  while (1)
  {
    if (v72)
    {
      a2 = MEMORY[0x2530ADF00](v71, v110);
      v40 = __OFADD__(v71++, 1);
      if (v40)
      {
        goto LABEL_76;
      }
    }

    else
    {
      if (v71 >= *(v73 + 16))
      {
        goto LABEL_77;
      }

      a2 = *(v74 + 8 * v71);

      v40 = __OFADD__(v71++, 1);
      if (v40)
      {
        goto LABEL_76;
      }
    }

    if (qword_27F53F410 != -1)
    {
      swift_once();
    }

    v75 = qword_27F575A48;
    v76 = [*&a2[OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate] serviceType];
    v77 = sub_252E36F34();
    v79 = v78;

    if (qword_27F53F8B8 != -1)
    {
      swift_once();
    }

    v80 = off_27F546230;
    if (*(off_27F546230 + 2) && (v81 = sub_252A44A10(v77, v79), (v82 & 1) != 0))
    {
      v83 = *(v80[7] + 8 * v81);
    }

    else
    {
      v83 = 0;
    }

    if (*(v75 + 16))
    {
      sub_252E37EC4();
      MEMORY[0x2530AE390](v83);
      v84 = sub_252E37F14();
      v85 = -1 << *(v75 + 32);
      v86 = v84 & ~v85;
      if ((*(v75 + 56 + ((v86 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v86))
      {
        break;
      }
    }

LABEL_47:

    v16 = v111;
    if (v71 == v70)
    {
      goto LABEL_69;
    }
  }

  v87 = ~v85;
  while (*(*(v75 + 48) + 8 * v86) != v83)
  {
    v86 = (v86 + 1) & v87;
    if (((*(v75 + 56 + ((v86 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v86) & 1) == 0)
    {
      goto LABEL_47;
    }
  }

  v88 = 1;
  v34 = v106;
  a2 = v107;
  a1 = v99;
  v16 = v111;
  v35 = v105;
LABEL_72:
  sub_252929F10(v16, 0);
  v24 = sub_252B84730(a1, v102, v101, v35, v88, v34, 0);
  *(sub_252B680FC(v24) + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_preferNotices) = 1;

LABEL_73:
  (a2)(v24);
}

unint64_t sub_2529289F0(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_46;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v27 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v28 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v3 = MEMORY[0x277D84F90];
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v25 = v1;
    while (1)
    {
      if (v28)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x2530ADF00](v2, v24);
        v4 = __OFADD__(v2++, 1);
        if (v4)
        {
          goto LABEL_40;
        }
      }

      else
      {
        if (v2 >= *(v27 + 16))
        {
          goto LABEL_41;
        }

        v4 = __OFADD__(v2++, 1);
        if (v4)
        {
          goto LABEL_40;
        }
      }

      v5 = sub_252B2F470();

      v6 = v5 >> 62;
      v7 = v5 >> 62 ? sub_252E378C4() : *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v8 = v3 >> 62;
      if (v3 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = isUniquelyReferenced_nonNull_bridgeObject + v7;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v7))
      {
        goto LABEL_39;
      }

LABEL_13:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v8)
        {
          v10 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v9 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_20;
          }

          goto LABEL_19;
        }

LABEL_18:
        sub_252E378C4();
        goto LABEL_19;
      }

      if (v8)
      {
        goto LABEL_18;
      }

LABEL_19:
      isUniquelyReferenced_nonNull_bridgeObject = sub_252E37A54();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v10 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_20:
      v11 = *(v10 + 16);
      v12 = *(v10 + 24);
      if (v6)
      {
        v14 = v10;
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v10 = v14;
        v13 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_24:
          if (((v12 >> 1) - v11) < v7)
          {
            goto LABEL_43;
          }

          v30 = v3;
          v15 = v10 + 8 * v11 + 32;
          v26 = v10;
          if (v6)
          {
            if (v13 < 1)
            {
              goto LABEL_45;
            }

            sub_25292A398();
            for (i = 0; i != v13; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F53FBC0, &unk_252E3B240);
              v17 = sub_2529FBE00(v29, i, v5);
              v19 = *v18;

              (v17)(v29, 0);
              *(v15 + 8 * i) = v19;
            }
          }

          else
          {
            type metadata accessor for Service(0);
            swift_arrayInitWithCopy();
          }

          v1 = v25;
          v3 = v30;
          if (v7 >= 1)
          {
            v20 = *(v26 + 16);
            v4 = __OFADD__(v20, v7);
            v21 = v20 + v7;
            if (v4)
            {
              goto LABEL_44;
            }

            *(v26 + 16) = v21;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v13 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v13)
        {
          goto LABEL_24;
        }
      }

      if (v7 > 0)
      {
        goto LABEL_42;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
    v9 = isUniquelyReferenced_nonNull_bridgeObject + v7;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v7))
    {
      goto LABEL_13;
    }

LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    v22 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_252E378C4();
    isUniquelyReferenced_nonNull_bridgeObject = v22;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_252928D30()
{

  return swift_deallocClassInstance();
}

uint64_t sub_252928D70()
{
  v0 = sub_252E32E84();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AsyncScenesHandleDelegate();
  v4 = swift_allocObject();
  sub_252E32E74();
  v5 = sub_252E32E24();
  v7 = v6;
  (*(v1 + 8))(v3, v0);
  *(v4 + 16) = v5;
  *(v4 + 24) = v7;
  return v4;
}

double *sub_252928E60@<X0>(double *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  if ((*result & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v2 < 9.22337204e18)
  {
    *a2 = v2;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = 12;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_252928EC0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = -96;
  return result;
}

void *sub_252928ED8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = -32;
  return result;
}

unsigned __int8 *sub_252928EF0@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = -108;
  return result;
}

unsigned __int8 *sub_252928F08@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 120;
  return result;
}

unsigned __int8 *sub_252928F20@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = -72;
  return result;
}

void *sub_252928F38@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 76;
  return result;
}

void *sub_252928F50@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = -56;
  return result;
}

uint64_t sub_25292904C(uint64_t a1)
{
  v2 = sub_2529299AC(&qword_27F53FDB0, type metadata accessor for HMError, byte_252E3BB04);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_2529290B8(uint64_t a1)
{
  v2 = sub_2529299AC(&qword_27F53FDB0, type metadata accessor for HMError, byte_252E3BB04);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_252929124(uint64_t a1)
{
  v2 = sub_2529299AC(&qword_27F541F00, type metadata accessor for HMError, byte_252E3BBEC);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_252929198()
{
  v1 = *v0;
  sub_252E37EC4();
  MEMORY[0x2530AE390](v1);
  return sub_252E37F14();
}

uint64_t sub_2529291E0(uint64_t a1)
{
  v2 = *v1;
  sub_252E37EC4();
  MEMORY[0x2530AE390](v2);
  return sub_252E37F14();
}

uint64_t sub_252929224(uint64_t a1, id *a2)
{
  result = sub_252E36F14();
  *a2 = 0;
  return result;
}

uint64_t sub_25292929C(uint64_t a1, id *a2)
{
  v3 = sub_252E36F24();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_25292931C@<X0>(uint64_t *a2@<X8>)
{
  sub_252E36F34();
  v3 = sub_252E36F04();

  *a2 = v3;
  return result;
}

uint64_t sub_252929360()
{
  sub_252E37EC4();
  sub_252E37EF4();
  return sub_252E37F14();
}

uint64_t sub_2529293A8(uint64_t a1)
{
  sub_252E37EC4();
  sub_252E37EF4();
  return sub_252E37F14();
}

uint64_t sub_2529293FC(uint64_t a1)
{
  v2 = sub_2529299AC(&qword_27F541F00, type metadata accessor for HMError, byte_252E3BBEC);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_252929468(uint64_t a1)
{
  v2 = sub_2529299AC(&qword_27F541F00, type metadata accessor for HMError, byte_252E3BBEC);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_2529294D4(void *a1, uint64_t a2)
{
  v4 = sub_2529299AC(&qword_27F541F00, type metadata accessor for HMError, byte_252E3BBEC);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_252929588(uint64_t a1, uint64_t a2)
{
  v4 = sub_2529299AC(&qword_27F541F00, type metadata accessor for HMError, byte_252E3BBEC);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_252929604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_252E37EC4();
  sub_252E36E94();
  return sub_252E37F14();
}

uint64_t sub_252929664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2529299AC(&qword_27F541F00, type metadata accessor for HMError, byte_252E3BBEC);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_2529296E8@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_252E36F04();

  *a2 = v3;
  return result;
}

uint64_t sub_252929730(uint64_t a1)
{
  v2 = sub_2529299AC(&qword_27F53FA60, type metadata accessor for HMReportDomain, byte_252E3B19C);
  v3 = sub_2529299AC(&qword_27F53FA68, type metadata accessor for HMReportDomain, byte_252E3B144);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2529297EC(uint64_t a1)
{
  v2 = sub_2529299AC(&qword_27F53FDE0, type metadata accessor for HMSignificantEvent, asc_252E3B68C);
  v3 = sub_2529299AC(&qword_27F53FDE8, type metadata accessor for HMSignificantEvent, byte_252E3B62C);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2529298A8(uint64_t a1)
{
  v2 = sub_2529299AC(&qword_27F53FA70, type metadata accessor for HMAttributeName, asc_252E3B05C);
  v3 = sub_2529299AC(&qword_27F53FA78, type metadata accessor for HMAttributeName, asc_252E3B004);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2529299AC(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_252929A3C()
{
  v0 = sub_252E36F34();
  v1 = MEMORY[0x2530AD610](v0);

  return v1;
}

uint64_t sub_252929A78(uint64_t a1)
{
  sub_252E36F34();
  sub_252E37044();
}

uint64_t sub_252929ACC(uint64_t a1)
{
  sub_252E36F34();
  sub_252E37EC4();
  sub_252E37044();
  v1 = sub_252E37F14();

  return v1;
}

uint64_t sub_252929B40(void *a1, uint64_t *a2)
{
  v2 = sub_252E36F34();
  v4 = v3;
  if (v2 == sub_252E36F34() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_252E37DB4();
  }

  return v7 & 1;
}

uint64_t sub_252929CE8(uint64_t a1)
{
  v1 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(a1);
  sub_252929E74((v1 + 16), v8);

  __swift_project_boxed_opaque_existential_1(v8, v9);
  if (sub_252E338F4())
  {
    v2 = sub_252C4D664(5);
    v3 = __swift_destroy_boxed_opaque_existential_1(v8);
    if (v2)
    {
      v4 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v3);
      sub_252929E74((v4 + 288), v8);

      v5 = v9;
      v6 = v10;
      __swift_project_boxed_opaque_existential_1(v8, v9);
      LOBYTE(v5) = (*(v6 + 64))(v5, v6);
      __swift_destroy_boxed_opaque_existential_1(v8);
      if (v5)
      {
        return 1;
      }
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  return 0;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

uint64_t sub_252929E74(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_252929F10(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_252929F1C(unint64_t a1)
{
  v1 = sub_2529289F0(a1);
  v2 = v1;
  if (v1 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v4 = 0;
    v29 = v2 & 0xC000000000000001;
    v5 = MEMORY[0x277D84F90];
    while (v29)
    {
      v6 = MEMORY[0x2530ADF00](v4, v2);
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_21;
      }

LABEL_7:
      v8 = [*(v6 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
      v9 = sub_252E36F34();
      v11 = v10;

      if (qword_27F53F8B8 != -1)
      {
        swift_once();
      }

      v12 = off_27F546230;
      if (*(off_27F546230 + 2) && (v13 = sub_252A44A10(v9, v11), (v14 & 1) != 0))
      {
        v15 = *(v12[7] + 8 * v13);
      }

      else
      {
        v15 = 0;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_2529F7B8C(0, *(v5 + 2) + 1, 1, v5);
      }

      v17 = *(v5 + 2);
      v16 = *(v5 + 3);
      if (v17 >= v16 >> 1)
      {
        v5 = sub_2529F7B8C((v16 > 1), v17 + 1, 1, v5);
      }

      *(v5 + 2) = v17 + 1;
      *&v5[8 * v17 + 32] = v15;
      ++v4;
      if (v7 == i)
      {
        goto LABEL_25;
      }
    }

    if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_22;
    }

    v6 = *(v2 + 8 * v4 + 32);

    v7 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_7;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

  v5 = MEMORY[0x277D84F90];
LABEL_25:

  v19 = 0;
  v20 = *(v5 + 2);
  while (v20 != v19)
  {
    v21 = &v5[8 * v19++];
    if (*(v21 + 4) == 4)
    {

      return 100;
    }
  }

  if (v20)
  {
    v22 = 0;
    while (1)
    {
      if (v22 >= *(v5 + 2))
      {
        __break(1u);
        return result;
      }

      v23 = *&v5[8 * v22 + 32];
      v24 = sub_25292A344();
      v30 = MEMORY[0x2530AD880](4, &type metadata for HomeDeviceType, v24);
      sub_252DA6E20(v31, 7);
      sub_252DA6E20(v31, 4);
      sub_252DA6E20(v31, 27);
      sub_252DA6E20(v31, 28);
      if (*(v30 + 16))
      {
        sub_252E37EC4();
        MEMORY[0x2530AE390](v23);
        v25 = sub_252E37F14();
        v26 = -1 << *(v30 + 32);
        v27 = v25 & ~v26;
        if ((*(v30 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27))
        {
          break;
        }
      }

LABEL_31:
      ++v22;

      if (v22 == v20)
      {
        goto LABEL_41;
      }
    }

    v28 = ~v26;
    while (*(*(v30 + 48) + 8 * v27) != v23)
    {
      v27 = (v27 + 1) & v28;
      if (((*(v30 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    return 100;
  }

LABEL_41:

  return 600;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_25292A2F8()
{
  result = qword_27F5412F0;
  if (!qword_27F5412F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F5412F0);
  }

  return result;
}

unint64_t sub_25292A344()
{
  result = qword_27F53FBB8;
  if (!qword_27F53FBB8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HomeDeviceType, &type metadata for HomeDeviceType, v0, v1);
    atomic_store(result, &qword_27F53FBB8);
  }

  return result;
}

unint64_t sub_25292A398()
{
  result = qword_27F541360;
  if (!qword_27F541360)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F53FBC0, &unk_252E3B240);
    result = swift_getWitnessTable(MEMORY[0x277D83988], v3, v0, v1);
    atomic_store(result, &qword_27F541360);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_25292A468(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25292A488(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

void sub_25292A58C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_25292AA5C()
{
  result = qword_27F53FDD8;
  if (!qword_27F53FDD8)
  {
    result = swift_getWitnessTable(MEMORY[0x277D83BE8], MEMORY[0x277D83B88], v0, v1);
    atomic_store(result, &qword_27F53FDD8);
  }

  return result;
}

uint64_t sub_25292AB10@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25296E640();
  *a1 = result;
  return result;
}

uint64_t sub_25292AB64(void *a1)
{
  v2 = v1;
  v4 = sub_252E36AD4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v162 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v162 - v9;
  if ([a1 attribute] != 67)
  {
    if (qword_27F53F498 != -1)
    {
      goto LABEL_115;
    }

    goto LABEL_8;
  }

  v11 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(67);
  v12 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
  swift_beginAccess();
  v13 = *&v11[v12];
  if (v13 >> 62)
  {
    v25 = sub_252E378C4();

    if (!v25)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v14)
    {
      goto LABEL_10;
    }
  }

  v16 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(v15);
  v17 = sub_252AC0884(v2);

  if (v17)
  {
    if (!*(v17 + 16))
    {
LABEL_16:

      if (qword_27F53F498 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v4, qword_27F544C70);
      v172 = 0;
      v173 = 0xE000000000000000;
      sub_252E379F4();
      v174 = v172;
      v175 = v173;
      MEMORY[0x2530AD570](0xD00000000000002BLL, 0x8000000252E68C50);
      MEMORY[0x2530AD570](*(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name), *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8));
      v30 = MEMORY[0x2530AD570](0x203A6E6920, 0xE500000000000000);
      v31 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(v30);
      v32 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
      swift_beginAccess();
      v33 = *&v31[v32];
      if (v33 >> 62)
      {
        v134 = sub_252E378C4();

        if (!v134)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (!v34)
        {
          goto LABEL_21;
        }
      }

      v36 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(v35);
      v37 = sub_252AC0884(v2);

      if (v37)
      {
LABEL_22:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540030, &qword_252E491C0);
        sub_25292C260();
        v38 = sub_252E36E54();
        v40 = v39;

        MEMORY[0x2530AD570](v38, v40);

        v22 = v174;
        v23 = v175;
        v24 = 20;
        goto LABEL_23;
      }

LABEL_21:
      sub_252CC479C(MEMORY[0x277D84F90]);
      goto LABEL_22;
    }

    goto LABEL_11;
  }

LABEL_10:
  v17 = sub_252CC479C(MEMORY[0x277D84F90]);
  if (!*(v17 + 16))
  {
    goto LABEL_16;
  }

LABEL_11:
  v26 = sub_252A488EC();
  if ((v27 & 1) == 0)
  {
    goto LABEL_16;
  }

  v28 = *(*(v17 + 56) + 8 * v26);

  if ([a1 taskType] == 4)
  {

    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v4, qword_27F544C70);
    sub_252CC3D90(0xD000000000000022, 0x8000000252E68DF0, 0xD000000000000079, 0x8000000252E68BB0);
    v29 = 1;
    return v29 & 1;
  }

  v42 = [a1 value];
  if (!v42 || (v43 = v42, v44 = [v42 cleaningJob], v43, !v44))
  {

    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v4, qword_27F544C70);
    v172 = 0;
    v173 = 0xE000000000000000;
    sub_252E379F4();

    v172 = 0xD000000000000022;
    v173 = 0x8000000252E68C80;
    v51 = [a1 description];
    v52 = sub_252E36F34();
    v54 = v53;

    MEMORY[0x2530AD570](v52, v54);

    v22 = v172;
    v23 = v173;
    v24 = 30;
    goto LABEL_23;
  }

  v167 = v10;
  v168 = v5;
  v169 = v4;
  v170 = v44;
  v172 = MEMORY[0x277D84F90];
  v166 = v8;
  a1 = (v28 & 0xFFFFFFFFFFFFFF8);
  if (v28 >> 62)
  {
    v45 = sub_252E378C4();
  }

  else
  {
    v45 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v46 = 0;
  v4 = v28 & 0xC000000000000001;
  v171 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v45 == v46)
    {

      if (v171 >> 62)
      {
        v135 = sub_252E378C4();
        v55 = v170;
        if (!v135)
        {
          goto LABEL_120;
        }
      }

      else
      {
        v55 = v170;
        if (!*((v171 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_120;
        }
      }

      v56 = [v55 cleanModes];
      v57 = sub_252E37264();

      if (*(v57 + 16))
      {
        v58 = *(v57 + 32);

        v59 = [v55 cleanModes];
        v60 = sub_252E37264();

        v61 = *(v60 + 16);

        if (v61 == 1 && v58 == 14)
        {

          v29 = 1;
          return v29 & 1;
        }
      }

      else
      {
      }

      v63 = [v55 cleanModes];
      v64 = sub_252E37264();

      v65 = *(v64 + 16);
      if (v65)
      {
        v66 = (v64 + 32);
        v67 = MEMORY[0x277D84F90];
        do
        {
          v69 = *v66++;
          v68 = v69;
          if (v69 <= 0xF)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v67 = sub_2529F7F9C(0, *(v67 + 2) + 1, 1, v67);
            }

            v71 = *(v67 + 2);
            v70 = *(v67 + 3);
            if (v71 >= v70 >> 1)
            {
              v67 = sub_2529F7F9C((v70 > 1), v71 + 1, 1, v67);
            }

            *(v67 + 2) = v71 + 1;
            *&v67[8 * v71 + 32] = v68;
          }

          --v65;
        }

        while (v65);
      }

      else
      {
        v67 = MEMORY[0x277D84F90];
      }

      v72 = &off_279711000;
      v73 = [v55 runState];
      v74 = v171;
      if (v73 == 17 && Array<A>.containsResume()(v171))
      {

        if (qword_27F53F498 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v169, qword_27F544C70);
        v172 = 0;
        v173 = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD000000000000017, 0x8000000252E68DD0);
        v75 = [v55 description];
LABEL_103:
        v111 = v75;
        v112 = sub_252E36F34();
        v114 = v113;

        MEMORY[0x2530AD570](v112, v114);

        MEMORY[0x2530AD570](0xD000000000000018, 0x8000000252E68D00);
        v115 = type metadata accessor for HomeAttributeCleaningJob();
        v116 = MEMORY[0x2530AD730](v74, v115);
        v118 = v117;

        MEMORY[0x2530AD570](v116, v118);

        sub_252CC3D90(v172, v173, 0xD000000000000079, 0x8000000252E68BB0);

        v29 = 1;
        return v29 & 1;
      }

      if ([v55 runState] == 2)
      {
        v76 = Array<A>.contains(_:)(v67, v74);

        if (v76)
        {
          if (qword_27F53F498 != -1)
          {
            swift_once();
          }

          v77 = __swift_project_value_buffer(v169, qword_27F544C70);
          v172 = 0;
          v173 = 0xE000000000000000;
          sub_252E379F4();

          v172 = 0xD000000000000016;
          v173 = 0x8000000252E68D20;
          v78 = [v55 description];
          v79 = sub_252E36F34();
          v81 = v80;

          MEMORY[0x2530AD570](v79, v81);
          v82 = v170;

          MEMORY[0x2530AD570](0xD000000000000018, 0x8000000252E68D00);
          v83 = type metadata accessor for HomeAttributeCleaningJob();
          v84 = MEMORY[0x2530AD730](v171, v83);
          v86 = v85;

          MEMORY[0x2530AD570](v84, v86);

          sub_252CC3D90(v172, v173, 0xD000000000000079, 0x8000000252E68BB0);

          v87 = [v82 targetAreas];
          if (v87)
          {
            v88 = v87;
            v89 = type metadata accessor for HomeAttributeTargetArea();
            v74 = sub_252E37264();

            if (v74 >> 62)
            {
              v90 = sub_252E378C4();
              v55 = v90;
              if (v90)
              {
LABEL_76:
                v166 = v89;
                v91 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(v90);
                v92 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
                swift_beginAccess();
                v93 = *&v91[v92];
                if (v93 >> 62)
                {
                  v94 = sub_252E378C4();
                }

                else
                {
                  v94 = *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                v72 = MEMORY[0x277D84F90];
                v164 = v77;
                if (v94)
                {
                  v96 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(v95);
                  v97 = sub_252AC0F68(v2);

                  if (v97)
                  {
                    v72 = v97;
                  }
                }

                v165 = "No RVC attribute found for ";
                v98 = 0;
                v171 = MEMORY[0x277D84F90];
                do
                {
                  v2 = v98;
                  while (1)
                  {
                    if ((v74 & 0xC000000000000001) != 0)
                    {
                      v99 = MEMORY[0x2530ADF00](v2, v74);
                    }

                    else
                    {
                      if (v2 >= *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        goto LABEL_122;
                      }

                      v99 = *(v74 + 8 * v2 + 32);
                    }

                    v100 = v99;
                    v98 = (v2 + 1);
                    if (__OFADD__(v2, 1))
                    {
                      __break(1u);
LABEL_122:
                      __break(1u);
                      goto LABEL_123;
                    }

                    v101 = [v99 name];
                    if (v101)
                    {
                      break;
                    }

                    ++v2;
                    if (v98 == v55)
                    {
                      goto LABEL_107;
                    }
                  }

                  v102 = v101;
                  v103 = sub_252E36F34();
                  v163 = v104;

                  v105 = v72;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v171 = sub_2529F7A80(0, *(v171 + 16) + 1, 1, v171);
                  }

                  v107 = *(v171 + 16);
                  v106 = *(v171 + 24);
                  if (v107 >= v106 >> 1)
                  {
                    v171 = sub_2529F7A80((v106 > 1), v107 + 1, 1, v171);
                  }

                  v108 = v171;
                  *(v171 + 16) = v107 + 1;
                  v109 = v108 + 16 * v107;
                  v110 = v163;
                  *(v109 + 32) = v103;
                  *(v109 + 40) = v110;
                  v72 = v105;
                }

                while (v98 != v55);
LABEL_107:
                v29 = Array<A>.contains(_:)(v171, v72);

                v127 = v167;
                v126 = v168;
                v128 = v169;
                (*(v168 + 16))(v167, v164, v169);
                v129 = 0xE000000000000000;
                v174 = 0;
                v175 = 0xE000000000000000;
                sub_252E379F4();
                MEMORY[0x2530AD570](0xD000000000000019, 0x8000000252E68DB0);
                if (v29)
                {
                  v130 = 0;
                }

                else
                {
                  v130 = 544501614;
                }

                if ((v29 & 1) == 0)
                {
                  v129 = 0xE400000000000000;
                }

                MEMORY[0x2530AD570](v130, v129);

                MEMORY[0x2530AD570](0xD00000000000001ALL, 0x8000000252E68D90);
                v131 = MEMORY[0x2530AD730](v74, v166);
                v133 = v132;

                MEMORY[0x2530AD570](v131, v133);

                sub_252CC3D90(v174, v175, 0xD000000000000079, v165 | 0x8000000000000000);

                (*(v126 + 8))(v127, v128);
                return v29 & 1;
              }
            }

            else
            {
              v55 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v55)
              {
                goto LABEL_76;
              }
            }

            v82 = v170;
          }

          v171 = 0xD000000000000016;
          v136 = v77;
          v137 = [v82 targetMap];
          if (v137)
          {
            v138 = v137;
            v139 = [v137 name];
            if (v139)
            {
              v140 = v139;
              v141 = sub_252E36F34();
              v143 = v142;

              v145 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(v144);
              v146 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
              swift_beginAccess();
              v147 = *&v145[v146];
              v165 = "No RVC attribute found for ";
              if (v147 >> 62)
              {
                v148 = sub_252E378C4();
              }

              else
              {
                v148 = *((v147 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              v150 = MEMORY[0x277D84F90];
              if (v148)
              {
                v151 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(v149);
                v152 = sub_252AC11C8(v2);

                if (v152)
                {
                  v150 = v152;
                }
              }

              v29 = Array<A>.contains(_:)(v141, v143, v150);

              v154 = v168;
              v153 = v169;
              v155 = v166;
              (*(v168 + 16))(v166, v136, v169);
              v156 = 0xE000000000000000;
              v174 = 0;
              v175 = 0xE000000000000000;
              sub_252E379F4();
              MEMORY[0x2530AD570](v171, 0x8000000252E68D70);
              if (v29)
              {
                v157 = 0;
              }

              else
              {
                v157 = 544501614;
              }

              if ((v29 & 1) == 0)
              {
                v156 = 0xE400000000000000;
              }

              MEMORY[0x2530AD570](v157, v156);

              MEMORY[0x2530AD570](0xD00000000000001ALL, 0x8000000252E68D90);
              v158 = [v138 description];
              v159 = sub_252E36F34();
              v161 = v160;

              MEMORY[0x2530AD570](v159, v161);

              sub_252CC3D90(v174, v175, 0xD000000000000079, v165 | 0x8000000000000000);

              (*(v154 + 8))(v155, v153);
              return v29 & 1;
            }
          }

          sub_252CC4050(0xD000000000000028, 0x8000000252E68D40, 0xD000000000000079, 0x8000000252E68BB0, 0xD000000000000017, 0x8000000252E68C30, 71);

          v29 = 1;
          return v29 & 1;
        }
      }

      else
      {
      }

      if (qword_27F53F918 != -1)
      {
LABEL_123:
        swift_once();
      }

      [v55 v72[209]];
      if (sub_252DB4F4C())
      {
        if (qword_27F53F498 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v169, qword_27F544C70);
        v172 = 0;
        v173 = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD00000000000001ELL, 0x8000000252E68CE0);
        v75 = [v55 description];
        goto LABEL_103;
      }

      if (qword_27F53F498 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v169, qword_27F544C70);
      v172 = 0;
      v173 = 0xE000000000000000;
      sub_252E379F4();
      v119 = v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name;
      v121 = *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v120 = *(v119 + 8);

      v172 = v121;
      v173 = v120;
      MEMORY[0x2530AD570](0xD000000000000027, 0x8000000252E68CB0);
      v122 = [v55 description];
      v123 = sub_252E36F34();
      v125 = v124;

      MEMORY[0x2530AD570](v123, v125);

      sub_252CC4050(v172, v173, 0xD000000000000079, 0x8000000252E68BB0, 0xD000000000000017, 0x8000000252E68C30, 79);
LABEL_120:

      goto LABEL_24;
    }

    if (v4)
    {
      v47 = MEMORY[0x2530ADF00](v46, v28);
    }

    else
    {
      if (v46 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_114;
      }

      v47 = *(v28 + 8 * v46 + 32);
    }

    v48 = v47;
    v49 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      break;
    }

    v50 = [v47 cleaningJob];

    ++v46;
    if (v50)
    {
      MEMORY[0x2530AD700]();
      if (*((v172 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v172 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();
      v171 = v172;
      v46 = v49;
    }
  }

  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  swift_once();
LABEL_8:
  __swift_project_value_buffer(v4, qword_27F544C70);
  v176 = 0;
  v177 = 0xE000000000000000;
  sub_252E379F4();

  v176 = 0xD00000000000001BLL;
  v177 = 0x8000000252E68B90;
  MEMORY[0x2530AD570](*(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name), *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8));
  MEMORY[0x2530AD570](0x203A6E6920, 0xE500000000000000);
  v18 = [a1 description];
  v19 = sub_252E36F34();
  v21 = v20;

  MEMORY[0x2530AD570](v19, v21);

  v22 = v176;
  v23 = v177;
  v24 = 15;
LABEL_23:
  sub_252CC4050(v22, v23, 0xD000000000000079, 0x8000000252E68BB0, 0xD000000000000017, 0x8000000252E68C30, v24);

LABEL_24:
  v29 = 0;
  return v29 & 1;
}

uint64_t sub_25292C040(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = a1;
  v7 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(a1);
  v8 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
  swift_beginAccess();
  v9 = *(v7 + v8);
  if (v9 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_252E378C4())
  {

    v7 = MEMORY[0x277D84F90];
    if (i)
    {
      v12 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0(v11);
      v13 = (a3)(v3);

      if (v13)
      {
        v7 = v13;
      }
    }

    if (v7 >> 62)
    {
      break;
    }

    v3 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_29;
    }

LABEL_8:
    a3 = 0;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x2530ADF00](a3, v7);
      }

      else
      {
        if (a3 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v14 = *(v7 + 8 * a3 + 32);
      }

      v15 = v14;
      v16 = (a3 + 1);
      if (__OFADD__(a3, 1))
      {
        break;
      }

      v17 = [v14 name];
      if (v17)
      {
        v18 = v17;
        v19 = v6;
        v20 = a2;
        v21 = sub_252E36F34();
        v23 = v22;

        v24 = v21;
        a2 = v20;
        if (v24 == v19 && v23 == v20)
        {

          return 1;
        }

        v6 = v19;
        v26 = sub_252E37DB4();

        if (v26)
        {

          return 1;
        }
      }

      else
      {
      }

      ++a3;
      if (v16 == v3)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    ;
  }

  v3 = sub_252E378C4();
  if (v3)
  {
    goto LABEL_8;
  }

LABEL_29:

  return 0;
}

unint64_t sub_25292C260()
{
  result = qword_27F540038;
  if (!qword_27F540038)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HomeAttributeType, &type metadata for HomeAttributeType, v0, v1);
    atomic_store(result, &qword_27F540038);
  }

  return result;
}

uint64_t static IconConfiguration.== infix(_:_:)()
{
  v0 = IconConfiguration.description.getter();
  v2 = v1;
  if (v0 == IconConfiguration.description.getter() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_252E37DB4();
  }

  return v4 & 1;
}

uint64_t IconConfiguration.description.getter()
{
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000014, 0x8000000252E68E20);
  type metadata accessor for IconConfiguration(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
  sub_252E330E4();
  if (v7)
  {
    v0 = 1702195828;
  }

  else
  {
    v0 = 0x65736C6166;
  }

  if (v7)
  {
    v1 = 0xE400000000000000;
  }

  else
  {
    v1 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v0, v1);

  MEMORY[0x2530AD570](0x614E6E6F6369202CLL, 0xEC000000203A656DLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  sub_252E330E4();
  MEMORY[0x2530AD570]();

  MEMORY[0x2530AD570](0x6F436E6F6369202CLL, 0xED0000203A726F6CLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  sub_252E330E4();
  if (v8)
  {
    v2 = v7;
  }

  else
  {
    v2 = 7104878;
  }

  if (v8)
  {
    v3 = v8;
  }

  else
  {
    v3 = 0xE300000000000000;
  }

  MEMORY[0x2530AD570](v2, v3);

  MEMORY[0x2530AD570](0xD000000000000010, 0x8000000252E68E40);
  sub_252E330E4();
  if (v8)
  {
    v4 = v7;
  }

  else
  {
    v4 = 7104878;
  }

  if (v8)
  {
    v5 = v8;
  }

  else
  {
    v5 = 0xE300000000000000;
  }

  MEMORY[0x2530AD570](v4, v5);

  return 0;
}

uint64_t IconConfiguration.init(iconName:iconColor:circleColor:onStateIconName:offStateIconName:action:rgbIconColor:deviceType:onStateMode:offStateMode:)@<X0>(uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char *a14, char *a15, char *a16)
{
  v17 = type metadata accessor for IconConfiguration(0);
  v30 = v17[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  sub_252E330C4();
  v28 = v17[6];
  sub_252E330C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540058, &unk_252E3BC80);
  sub_252E330C4();
  v18 = v17[10];
  sub_252E330C4();
  v29 = v17[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540060, &unk_252E46540);
  sub_252E330C4();
  v19 = v17[12];
  sub_252E330C4();
  v27 = v17[13];
  sub_252E330C4();
  v20 = v17[14];
  v21 = type metadata accessor for DirectInvocationConfig(0);
  (*(*(v21 - 8) + 56))(a9 + v20, 1, 1, v21);

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  v23 = *(*(v22 - 8) + 8);
  v23(a9 + v18, v22);
  sub_252E330C4();

  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
  (*(*(v24 - 8) + 8))(a9 + v28, v24);
  sub_252E330C4();
  sub_25292D864(a12, a9 + v20);
  sub_252E330C4();
  v23(a9 + v30, v22);
  sub_252E330C4();
  v23(a9 + v19, v22);
  sub_252E330C4();
  v23(a9 + v27, v22);
  sub_252E330C4();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540070, &qword_252E3BC98);
  (*(*(v25 - 8) + 8))(a9 + v29, v25);
  sub_252E330C4();
  sub_252E330C4();
  sub_252E330C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540078, &qword_252E3BCA0);
  sub_252E330F4();
  return sub_25292D8D4(a12);
}

uint64_t IconConfiguration.circleColor.setter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for IconConfiguration(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  return sub_252E330F4();
}

uint64_t IconConfiguration.shouldRenderCircle.setter(char a1)
{
  type metadata accessor for IconConfiguration(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
  return sub_252E330F4();
}

uint64_t IconConfiguration.iconColor.setter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for IconConfiguration(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  return sub_252E330F4();
}

uint64_t IconConfiguration.onStateIconName.setter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for IconConfiguration(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  return sub_252E330F4();
}

uint64_t IconConfiguration.offStateIconName.setter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for IconConfiguration(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  return sub_252E330F4();
}

uint64_t IconConfiguration.rgbIconColor.setter(uint64_t a1)
{
  type metadata accessor for IconConfiguration(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540070, &qword_252E3BC98);
  return sub_252E330F4();
}

uint64_t IconConfiguration.onStateMode.setter(char *a1)
{
  type metadata accessor for IconConfiguration(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540080, &qword_252E3BCA8);
  return sub_252E330F4();
}

uint64_t IconConfiguration.offStateMode.setter(char *a1)
{
  type metadata accessor for IconConfiguration(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540080, &qword_252E3BCA8);
  return sub_252E330F4();
}

uint64_t IconConfiguration.deviceType.setter(char *a1)
{
  type metadata accessor for IconConfiguration(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540078, &qword_252E3BCA0);
  return sub_252E330F4();
}

uint64_t IconConfiguration.id.getter()
{
  v0 = sub_252E32E84();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252E32E74();
  v4 = sub_252E32E24();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t IconConfiguration.iconName.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  sub_252E330E4();
  return v1;
}

uint64_t sub_25292CE3C(uint64_t *a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  return sub_252E330F4();
}

uint64_t (*IconConfiguration.iconName.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  *(v3 + 32) = sub_252E330D4();
  return sub_2529304D8;
}

uint64_t IconConfiguration.iconColor.getter()
{
  type metadata accessor for IconConfiguration(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  sub_252E330E4();
  return v1;
}

double sub_25292CF70@<D0>(_OWORD *a1@<X8>)
{
  type metadata accessor for IconConfiguration(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  sub_252E330E4();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_25292CFD8(void *a1)
{
  type metadata accessor for IconConfiguration(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  return sub_252E330F4();
}

uint64_t (*IconConfiguration.iconColor.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for IconConfiguration(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  *(v3 + 32) = sub_252E330D4();
  return sub_2529304D8;
}

uint64_t IconConfiguration.shouldRenderCircle.getter()
{
  type metadata accessor for IconConfiguration(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
  sub_252E330E4();
  return v1;
}

uint64_t type metadata accessor for IconConfiguration(uint64_t a1)
{
  result = qword_27F540108;
  if (!qword_27F540108)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_25292D184@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for IconConfiguration(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
  result = sub_252E330E4();
  *a1 = v3;
  return result;
}

uint64_t sub_25292D1EC(char *a1)
{
  type metadata accessor for IconConfiguration(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
  return sub_252E330F4();
}

uint64_t (*IconConfiguration.shouldRenderCircle.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for IconConfiguration(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
  *(v3 + 32) = sub_252E330D4();
  return sub_2529304D8;
}

void *IconConfiguration.onStateMode.getter()
{
  type metadata accessor for IconConfiguration(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540080, &qword_252E3BCA8);
  return sub_252E330E4();
}

void *sub_25292D33C@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for IconConfiguration(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540080, &qword_252E3BCA8);
  result = sub_252E330E4();
  *a1 = v3;
  return result;
}

uint64_t sub_25292D3A4(char *a1)
{
  type metadata accessor for IconConfiguration(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540080, &qword_252E3BCA8);
  return sub_252E330F4();
}

uint64_t (*IconConfiguration.onStateMode.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for IconConfiguration(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540080, &qword_252E3BCA8);
  *(v3 + 32) = sub_252E330D4();
  return sub_2529304D8;
}

void *IconConfiguration.offStateMode.getter()
{
  type metadata accessor for IconConfiguration(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540080, &qword_252E3BCA8);
  return sub_252E330E4();
}

void *sub_25292D4F4@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for IconConfiguration(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540080, &qword_252E3BCA8);
  result = sub_252E330E4();
  *a1 = v3;
  return result;
}

uint64_t sub_25292D55C(char *a1)
{
  type metadata accessor for IconConfiguration(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540080, &qword_252E3BCA8);
  return sub_252E330F4();
}

uint64_t (*IconConfiguration.offStateMode.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for IconConfiguration(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540080, &qword_252E3BCA8);
  *(v3 + 32) = sub_252E330D4();
  return sub_2529304D8;
}

void *IconConfiguration.deviceType.getter()
{
  type metadata accessor for IconConfiguration(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540078, &qword_252E3BCA0);
  return sub_252E330E4();
}

void *sub_25292D6AC@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for IconConfiguration(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540078, &qword_252E3BCA0);
  result = sub_252E330E4();
  *a1 = v3;
  return result;
}

uint64_t sub_25292D714(char *a1)
{
  type metadata accessor for IconConfiguration(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540078, &qword_252E3BCA0);
  return sub_252E330F4();
}

uint64_t (*IconConfiguration.deviceType.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for IconConfiguration(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540078, &qword_252E3BCA0);
  *(v3 + 32) = sub_252E330D4();
  return sub_2529304D8;
}

uint64_t IconConfiguration.circleColor.getter()
{
  type metadata accessor for IconConfiguration(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  sub_252E330E4();
  return v1;
}

uint64_t sub_25292D864(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540068, &qword_252E3BC90);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_25292D8D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540068, &qword_252E3BC90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_25292D93C@<D0>(_OWORD *a1@<X8>)
{
  type metadata accessor for IconConfiguration(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  sub_252E330E4();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_25292D9A4(void *a1)
{
  type metadata accessor for IconConfiguration(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  return sub_252E330F4();
}

uint64_t (*IconConfiguration.circleColor.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for IconConfiguration(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  *(v3 + 32) = sub_252E330D4();
  return sub_2529304D8;
}

uint64_t IconConfiguration.rgbIconColor.getter()
{
  type metadata accessor for IconConfiguration(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540070, &qword_252E3BC98);
  sub_252E330E4();
  return v1;
}

void *sub_25292DB04@<X0>(void *a1@<X8>)
{
  type metadata accessor for IconConfiguration(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540070, &qword_252E3BC98);
  result = sub_252E330E4();
  *a1 = v3;
  return result;
}

uint64_t sub_25292DB6C(uint64_t *a1)
{
  type metadata accessor for IconConfiguration(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540070, &qword_252E3BC98);
  return sub_252E330F4();
}

uint64_t (*IconConfiguration.rgbIconColor.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for IconConfiguration(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540070, &qword_252E3BC98);
  *(v3 + 32) = sub_252E330D4();
  return sub_25292DC78;
}

uint64_t IconConfiguration.onStateIconName.getter()
{
  type metadata accessor for IconConfiguration(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  sub_252E330E4();
  return v1;
}

double sub_25292DCD0@<D0>(_OWORD *a1@<X8>)
{
  type metadata accessor for IconConfiguration(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  sub_252E330E4();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_25292DD38(void *a1)
{
  type metadata accessor for IconConfiguration(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  return sub_252E330F4();
}

uint64_t (*IconConfiguration.onStateIconName.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for IconConfiguration(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  *(v3 + 32) = sub_252E330D4();
  return sub_2529304D8;
}

uint64_t IconConfiguration.offStateIconName.getter()
{
  type metadata accessor for IconConfiguration(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  sub_252E330E4();
  return v1;
}

double sub_25292DE98@<D0>(_OWORD *a1@<X8>)
{
  type metadata accessor for IconConfiguration(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  sub_252E330E4();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_25292DF00(void *a1)
{
  type metadata accessor for IconConfiguration(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  return sub_252E330F4();
}

uint64_t (*IconConfiguration.offStateIconName.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for IconConfiguration(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  *(v3 + 32) = sub_252E330D4();
  return sub_2529304D8;
}

void sub_25292E00C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t IconConfiguration.action.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for IconConfiguration(0) + 56);

  return sub_25292E09C(v3, a1);
}

uint64_t sub_25292E09C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540068, &qword_252E3BC90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t IconConfiguration.action.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for IconConfiguration(0) + 56);

  return sub_25292E150(a1, v3);
}

uint64_t sub_25292E150(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540068, &qword_252E3BC90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_25292E20C(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x4965746174536E6FLL;
    v7 = 0x4D65746174536E6FLL;
    v8 = 0x657461745366666FLL;
    if (a1 != 3)
    {
      v8 = 0x7954656369766564;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0xD000000000000010;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x656D614E6E6F6369;
    v2 = 0x6F6C6F436E6F6369;
    if (a1 != 9)
    {
      v2 = 0x436E6F6349626772;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000012;
    v4 = 0x6F43656C63726963;
    if (a1 != 6)
    {
      v4 = 0x6E6F69746361;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_25292E3A4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_25292E20C(*a1);
  v5 = v4;
  if (v3 == sub_25292E20C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_252E37DB4();
  }

  return v8 & 1;
}

uint64_t sub_25292E42C()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_25292E20C(v1);
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_25292E490(uint64_t a1)
{
  sub_25292E20C(*v1);
  sub_252E37044();
}

uint64_t sub_25292E4E4(uint64_t a1)
{
  v2 = *v1;
  sub_252E37EC4();
  sub_25292E20C(v2);
  sub_252E37044();

  return sub_252E37F14();
}

unint64_t sub_25292E544@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25293048C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_25292E574@<X0>(unint64_t *a1@<X8>)
{
  result = sub_25292E20C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_25292E5BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25293048C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25292E5FC(uint64_t a1)
{
  v2 = sub_25292F29C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25292E638(uint64_t a1)
{
  v2 = sub_25292F29C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IconConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540068, &qword_252E3BC90);
  MEMORY[0x28223BE20](v3 - 8);
  v76 = v68 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540088, &qword_252E3BCB0);
  v77 = *(v5 - 8);
  v78 = v5;
  MEMORY[0x28223BE20](v5);
  v91 = v68 - v6;
  v7 = type metadata accessor for IconConfiguration(0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v8 + 20);
  v92 = 0;
  v93 = 0;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  v90 = v11;
  sub_252E330C4();
  v13 = v7[6];
  LOBYTE(v92) = 0;
  v84 = v13;
  sub_252E330C4();
  v14 = v7[9];
  LOBYTE(v92) = 48;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540058, &unk_252E3BC80);
  v83 = v14;
  v75 = v15;
  sub_252E330C4();
  v16 = v7[10];
  v92 = 0;
  v93 = 0;
  v88 = v16;
  sub_252E330C4();
  v17 = v7[11];
  v92 = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540060, &unk_252E46540);
  v89 = v17;
  sub_252E330C4();
  v19 = v7[12];
  v92 = 0;
  v93 = 0;
  v87 = v19;
  sub_252E330C4();
  v20 = v7[13];
  v92 = 0;
  v93 = 0;
  v86 = v20;
  sub_252E330C4();
  v81 = v7;
  v21 = v7[14];
  v22 = type metadata accessor for DirectInvocationConfig(0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 56);
  v25 = v23 + 56;
  v85 = v21;
  v80 = v10;
  v24(&v10[v21], 1, 1, v22);
  v26 = a1[3];
  v82 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_25292F29C();
  v27 = v79;
  sub_252E37F74();
  if (v27)
  {
    v28 = v83;
    v29 = v80;
    __swift_destroy_boxed_opaque_existential_1(v82);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
    v31 = *(*(v30 - 8) + 8);
    v31(&v29[v90], v30);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
    (*(*(v32 - 8) + 8))(&v29[v84], v32);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540078, &qword_252E3BCA0);
    (*(*(v33 - 8) + 8))(&v29[v28], v33);
    v31(&v29[v88], v30);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540070, &qword_252E3BC98);
    (*(*(v34 - 8) + 8))(&v29[v89], v34);
    v31(&v29[v87], v30);
    v31(&v29[v86], v30);
    return sub_25292D8D4(&v29[v85]);
  }

  else
  {
    v70 = v25;
    v71 = v24;
    v72 = v22;
    v79 = v12;
    v73 = v18;
    LOBYTE(v92) = 8;
    v92 = sub_252E37C04();
    v93 = v35;
    v36 = v80;
    sub_252E330C4();
    LOBYTE(v92) = 9;
    v37 = sub_252E37C04();
    v39 = v38;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
    v41 = *(v40 - 8);
    v42 = *(v41 + 8);
    v43 = v41 + 8;
    v42(v36 + v90, v40);
    v92 = v37;
    v93 = v39;
    sub_252E330C4();
    LOBYTE(v92) = 5;
    v44 = sub_252E37C14();
    v68[1] = v43;
    v69 = v42;
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
    (*(*(v45 - 8) + 8))(v36 + v84, v45);
    LOBYTE(v92) = v44 & 1;
    sub_252E330C4();
    LOBYTE(v92) = 6;
    v46 = sub_252E37C04();
    v48 = v47;
    v49 = v40;
    v50 = v40;
    v51 = v69;
    v69(v36 + v88, v50);
    v92 = v46;
    v93 = v48;
    sub_252E330C4();
    LOBYTE(v92) = 0;
    v52 = sub_252E37C04();
    v54 = v53;
    v51(v36 + v87, v49);
    v92 = v52;
    v93 = v54;
    sub_252E330C4();
    LOBYTE(v92) = 1;
    v55 = sub_252E37C04();
    v57 = v56;
    v51(v36 + v86, v49);
    v92 = v55;
    v93 = v57;
    sub_252E330C4();
    LOBYTE(v92) = 7;
    sub_25292FB54(&qword_27F540098, protocol conformance descriptor for DirectInvocationConfig);
    v58 = v76;
    v59 = v72;
    sub_252E37C64();
    v60 = v83;
    v71(v58, 0, 1, v59);
    sub_25292E150(v58, v36 + v85);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5400A0, &qword_252E3BCB8);
    v94 = 10;
    sub_25292FC48(&qword_27F5400A8, MEMORY[0x277D83808], MEMORY[0x277D83A30], MEMORY[0x277D83528]);
    sub_252E37C64();
    v61 = v92;
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540070, &qword_252E3BC98);
    (*(*(v62 - 8) + 8))(v36 + v89, v62);
    v92 = v61;
    sub_252E330C4();
    v94 = 4;
    sub_25292F2F0();
    v63 = v78;
    sub_252E37C64();
    LOBYTE(v61) = v92;
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540078, &qword_252E3BCA0);
    (*(*(v64 - 8) + 8))(v36 + v60, v64);
    LOBYTE(v92) = v61;
    sub_252E330C4();
    v94 = 2;
    sub_25292F344();
    v65 = v91;
    sub_252E37C64();
    v94 = v92;
    sub_252E330C4();
    v94 = 3;
    sub_252E37C64();
    v66 = v77;
    v94 = v92;
    sub_252E330C4();
    (*(v66 + 8))(v65, v63);
    sub_25292F398(v36, v74);
    __swift_destroy_boxed_opaque_existential_1(v82);
    return sub_25292F3FC(v36);
  }
}

unint64_t sub_25292F29C()
{
  result = qword_27F540090;
  if (!qword_27F540090)
  {
    result = swift_getWitnessTable(byte_252E3BEA0, &type metadata for IconConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F540090);
  }

  return result;
}

unint64_t sub_25292F2F0()
{
  result = qword_27F5400B0;
  if (!qword_27F5400B0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SnippetHomeDeviceType, &type metadata for SnippetHomeDeviceType, v0, v1);
    atomic_store(result, &qword_27F5400B0);
  }

  return result;
}

unint64_t sub_25292F344()
{
  result = qword_27F5400B8;
  if (!qword_27F5400B8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SnippetRenderingMode, &type metadata for SnippetRenderingMode, v0, v1);
    atomic_store(result, &qword_27F5400B8);
  }

  return result;
}

uint64_t sub_25292F398(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IconConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25292F3FC(uint64_t a1)
{
  v2 = type metadata accessor for IconConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t IconConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5400C0, &qword_252E3BCC0);
  v14 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v13 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25292F29C();
  sub_252E37F84();
  type metadata accessor for IconConfiguration(0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540050, &unk_252E3BC70);
  sub_252E330E4();
  v19 = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  sub_25292FA38();
  v15 = v6;
  sub_252E37D54();
  v7 = v1;
  if (v1)
  {

    v7 = 0;
  }

  sub_252E330E4();
  v19 = 1;
  sub_252E37D54();
  v8 = v7;
  if (v7)
  {

    v8 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540040, &unk_252E3BC60);
  sub_252E330E4();
  LOBYTE(v17) = 5;
  sub_252E37D04();
  v9 = v8;
  if (v8)
  {

    v9 = 0;
  }

  sub_252E330E4();
  v19 = 6;
  sub_252E37D54();
  v10 = v9;
  if (v9)
  {

    v10 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540048, &unk_252E49230);
  sub_252E330E4();
  LOBYTE(v17) = 8;
  sub_252E37CF4();
  v11 = v10;
  if (v10)
  {

    v11 = 0;
  }

  sub_252E330E4();
  v19 = 9;
  sub_252E37D54();
  if (v11)
  {
  }

  LOBYTE(v17) = 7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540068, &qword_252E3BC90);
  sub_25292FAB4();
  sub_252E37D54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540070, &qword_252E3BC98);
  sub_252E330E4();
  v19 = 10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540060, &unk_252E46540);
  sub_25292FB98();
  sub_252E37D54();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540078, &qword_252E3BCA0);
  sub_252E330E4();
  v19 = v17;
  v18 = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540058, &unk_252E3BC80);
  sub_25292FCB8();
  sub_252E37D54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540080, &qword_252E3BCA8);
  sub_252E330E4();
  v19 = v17;
  v18 = 2;
  sub_25292FD90();
  sub_252E37D54();
  sub_252E330E4();
  v19 = v17;
  v18 = 3;
  sub_252E37D54();
  return (*(v14 + 8))(v5, v3);
}

unint64_t sub_25292FA38()
{
  result = qword_27F5400C8;
  if (!qword_27F5400C8)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F541300, &qword_252E3C100);
    v4[0] = MEMORY[0x277D837D8];
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v3, v4);
    atomic_store(result, &qword_27F5400C8);
  }

  return result;
}

unint64_t sub_25292FAB4()
{
  result = qword_27F5400D0;
  if (!qword_27F5400D0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F540068, &qword_252E3BC90);
    v4[0] = sub_25292FB54(&qword_27F5400D8, protocol conformance descriptor for DirectInvocationConfig);
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v3, v4);
    atomic_store(result, &qword_27F5400D0);
  }

  return result;
}

uint64_t sub_25292FB54(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for DirectInvocationConfig(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25292FB98()
{
  result = qword_27F5400E0;
  if (!qword_27F5400E0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F540060, &unk_252E46540);
    v4[0] = sub_25292FC48(&qword_27F5400E8, MEMORY[0x277D837D8], MEMORY[0x277D83A08], MEMORY[0x277D83508]);
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v3, v4);
    atomic_store(result, &qword_27F5400E0);
  }

  return result;
}

uint64_t sub_25292FC48(unint64_t *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5400A0, &qword_252E3BCB8);
    v10[0] = a2;
    v10[1] = a3;
    result = swift_getWitnessTable(a4, v9, v10);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25292FCB8()
{
  result = qword_27F5400F0;
  if (!qword_27F5400F0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F540058, &unk_252E3BC80);
    v4[0] = sub_25292FD3C();
    result = swift_getWitnessTable(MEMORY[0x277D84F40], v3, v4);
    atomic_store(result, &qword_27F5400F0);
  }

  return result;
}

unint64_t sub_25292FD3C()
{
  result = qword_27F5400F8;
  if (!qword_27F5400F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SnippetHomeDeviceType, &type metadata for SnippetHomeDeviceType, v0, v1);
    atomic_store(result, &qword_27F5400F8);
  }

  return result;
}

unint64_t sub_25292FD90()
{
  result = qword_27F540100;
  if (!qword_27F540100)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SnippetRenderingMode, &type metadata for SnippetRenderingMode, v0, v1);
    atomic_store(result, &qword_27F540100);
  }

  return result;
}

uint64_t sub_25292FE20@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_252E32E84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252E32E74();
  v6 = sub_252E32E24();
  v8 = v7;
  result = (*(v3 + 8))(v5, v2);
  *a1 = v6;
  a1[1] = v8;
  return result;
}

uint64_t sub_25292FEFC()
{
  v0 = IconConfiguration.description.getter();
  v2 = v1;
  if (v0 == IconConfiguration.description.getter() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_252E37DB4();
  }

  return v4 & 1;
}

void sub_25292FFB0(uint64_t a1)
{
  sub_252930130(319, &qword_27F540118, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_25293017C(319, &qword_27F540120, &unk_27F541300, &qword_252E3C100);
    if (v2 <= 0x3F)
    {
      sub_252930130(319, &qword_27F540128, MEMORY[0x277D839B0]);
      if (v3 <= 0x3F)
      {
        sub_252930130(319, &qword_27F540130, &type metadata for SnippetRenderingMode);
        if (v4 <= 0x3F)
        {
          sub_25293017C(319, &qword_27F540138, &qword_27F540058, &unk_252E3BC80);
          if (v5 <= 0x3F)
          {
            sub_25293017C(319, &qword_27F540140, &qword_27F540060, &unk_252E46540);
            if (v6 <= 0x3F)
            {
              sub_2529301D0(319);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_252930130(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_252E33114();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_25293017C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_252E33114();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_2529301D0(uint64_t a1)
{
  if (!qword_27F540148)
  {
    type metadata accessor for DirectInvocationConfig(255);
    v1 = sub_252E37734();
    if (!v2)
    {
      atomic_store(v1, &qword_27F540148);
    }
  }
}

uint64_t getEnumTagSinglePayload for IconConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IconConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_252930388()
{
  result = qword_27F540150;
  if (!qword_27F540150)
  {
    result = swift_getWitnessTable(aQ_10, &type metadata for IconConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F540150);
  }

  return result;
}

unint64_t sub_2529303E0()
{
  result = qword_27F540158;
  if (!qword_27F540158)
  {
    result = swift_getWitnessTable(byte_252E3BDB0, &type metadata for IconConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F540158);
  }

  return result;
}

unint64_t sub_252930438()
{
  result = qword_27F540160;
  if (!qword_27F540160)
  {
    result = swift_getWitnessTable(byte_252E3BDD8, &type metadata for IconConfiguration.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F540160);
  }

  return result;
}

unint64_t sub_25293048C(uint64_t a1, uint64_t a2)
{
  v2 = sub_252E37B74();

  if (v2 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2529304DC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
LABEL_15:
    v3 = sub_252E378C4();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      do
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x2530ADF00](v4, a2);
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:

            return 1;
          }
        }

        else
        {
          if (v4 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          v5 = *(a2 + 8 * v4 + 32);
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_12;
          }
        }

        v7 = v5;
        swift_getAtKeyPath();

        if (v9)
        {
          goto LABEL_13;
        }

        ++v4;
      }

      while (v6 != v3);
    }
  }

  return 0;
}

uint64_t sub_2529305F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540178, &unk_252E50250);
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - v5;
  v7 = sub_252E36934();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252931984(a1, v6);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return sub_2529319F4(v6);
  }

  (*(v8 + 32))(v10, v6, v7);
  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v11 = sub_252E36AD4();
  __swift_project_value_buffer(v11, qword_27F544DA8);
  v15 = 0;
  v16 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000075, 0x8000000252E69040);
  v12 = MEMORY[0x2530AD730](a2, MEMORY[0x277D837D0]);
  MEMORY[0x2530AD570](v12);

  MEMORY[0x2530AD570](0x6572206874697720, 0xEE00203A6E6F7361);
  sub_252931A5C();
  v13 = sub_252E37E54();
  MEMORY[0x2530AD570](v13);

  sub_252CC4050(v15, v16, 0xD00000000000009BLL, 0x8000000252E68EE0, 0xD000000000000018, 0x8000000252E68F80, 55);

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_2529308F4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PauseSpeakersWhenTurningOffHandler();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t sub_252930928(void *a1)
{
  v2 = [a1 userTask];
  if (!v2)
  {
    sub_252C515AC();
    return 0;
  }

  v3 = v2;
  v4 = [v2 attribute];

  if (v4 != 27 || !sub_252C4B5D4())
  {
    return 0;
  }

  result = [a1 userTask];
  if (!result)
  {
    return result;
  }

  v6 = result;
  v7 = [result value];

  if (!v7)
  {
    return 0;
  }

  v8 = [v7 BOOLValue];

  if (v8)
  {
    return 0;
  }

  result = [a1 filters];
  if (!result)
  {
    return result;
  }

  v9 = result;
  type metadata accessor for HomeFilter();
  v10 = sub_252E37264();

  KeyPath = swift_getKeyPath();
  v12 = sub_2529304DC(KeyPath, v10);

  if (v12)
  {

    return 0;
  }

  v13 = type metadata accessor for HomeStore(0);
  v14 = static HomeStore.shared.getter(v13);
  v15 = HomeStore.accessories(matching:supporting:)(v10, 0);
  v17 = v16;

  if (v17)
  {
    sub_252929F10(v15, 1);
    return 0;
  }

  v18 = v15 & 0xFFFFFFFFFFFFFF8;
  if (v15 >> 62)
  {
LABEL_64:
    v19 = sub_252E378C4();
    if (v19)
    {
      goto LABEL_17;
    }

LABEL_65:
    v44 = v15;
LABEL_66:
    sub_252929F10(v44, 0);
    return 0;
  }

  v19 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v19)
  {
    goto LABEL_65;
  }

LABEL_17:
  v20 = 0;
  v45 = v15;
  v46 = v19;
  v48 = v15 + 32;
  v49 = v15 & 0xC000000000000001;
  v47 = v18;
  while (1)
  {
    if (v49)
    {
      v21 = MEMORY[0x2530ADF00](v20, v45);
      v22 = __OFADD__(v20++, 1);
      if (v22)
      {
        goto LABEL_62;
      }
    }

    else
    {
      if (v20 >= *(v18 + 16))
      {
        goto LABEL_63;
      }

      v21 = *(v48 + 8 * v20);

      v22 = __OFADD__(v20++, 1);
      if (v22)
      {
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }
    }

    v23 = [*(v21 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) profiles];
    sub_252931930();
    v24 = sub_252E37264();

    if (v24 >> 62)
    {
      break;
    }

    v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v25)
    {
      goto LABEL_25;
    }

LABEL_18:

LABEL_19:
    v18 = v47;
    if (v20 == v46)
    {
      v44 = v45;
      goto LABEL_66;
    }
  }

  v25 = sub_252E378C4();
  if (!v25)
  {
    goto LABEL_18;
  }

LABEL_25:
  v26 = 0;
  v15 = v24 & 0xC000000000000001;
  v18 = v24 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v15)
    {
      v27 = MEMORY[0x2530ADF00](v26, v24);
    }

    else
    {
      if (v26 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_61;
      }

      v27 = *(v24 + 8 * v26 + 32);
    }

    v28 = v27;
    v29 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      break;
    }

    ++v26;
    if (v29 == v25)
    {
      goto LABEL_18;
    }
  }

  v30 = (*v21 + 256);
  v31 = *v30;
  if ((*v30)() == 26)
  {
    goto LABEL_58;
  }

  v32 = (*v21 + 272);
  v15 = *v32;
  (*v32)();
  v33 = sub_252DB4F4C();

  if (v33)
  {
    goto LABEL_58;
  }

  v35 = (v31)(v34);
  if (v35 == 38)
  {
    v36 = &unk_2864A2500;
LABEL_40:
    sub_2529FC004(v36);
  }

  else if (v35 == 41)
  {
    v36 = &unk_2864A2528;
    goto LABEL_40;
  }

  v37 = sub_252DB4F4C();

  if (v37)
  {
    goto LABEL_58;
  }

  if (sub_252D4FE78(26))
  {
    goto LABEL_58;
  }

  if (v31() == 44)
  {
    goto LABEL_58;
  }

  (v15)();
  v38 = sub_252DB4F4C();

  if (v38)
  {
    goto LABEL_58;
  }

  v40 = (v31)(v39);
  if (v40 == 38)
  {
    v41 = &unk_2864A2550;
LABEL_49:
    sub_2529FC004(v41);
  }

  else if (v40 == 41)
  {
    v41 = &unk_2864A2578;
    goto LABEL_49;
  }

  v42 = sub_252DB4F4C();

  if (v42)
  {
LABEL_58:
    sub_252929F10(v45, 0);

    return 1;
  }

  v43 = sub_252D4FE78(44);

  if (!v43)
  {
    goto LABEL_19;
  }

  sub_252929F10(v45, 0);
  return 1;
}

id sub_252930E5C(void *a1)
{
  v2 = sub_252E36AD4();
  v3 = *(v2 - 1);
  MEMORY[0x28223BE20](v2);
  v5 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 filters];
  if (!v6)
  {
LABEL_4:
    if (qword_27F53F500 == -1)
    {
LABEL_5:
      __swift_project_value_buffer(v2, qword_27F544DA8);
      sub_252CC4050(0xD000000000000027, 0x8000000252E68EB0, 0xD00000000000009BLL, 0x8000000252E68EE0, 0xD000000000000018, 0x8000000252E68F80, 35);
      sub_2529318DC();
      result = swift_allocError();
      *v14 = 8;
      return result;
    }

LABEL_75:
    swift_once();
    goto LABEL_5;
  }

  v7 = v6;
  v74 = v5;
  type metadata accessor for HomeFilter();
  v8 = sub_252E37264();

  v9 = type metadata accessor for HomeStore(0);
  v10 = static HomeStore.shared.getter(v9);
  v11 = HomeStore.accessories(matching:supporting:)(v8, 0);
  LOBYTE(v7) = v12;

  if (v7)
  {
    sub_252929F10(v11, 1);
    goto LABEL_4;
  }

  v79 = MEMORY[0x277D84F90];
  v15 = v11 & 0xFFFFFFFFFFFFFF8;
  v71 = v11;
  if (v11 >> 62)
  {
    v16 = sub_252E378C4();
  }

  else
  {
    v16 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v72 = v3;
  v73 = v2;
  v70 = a1;
  if (!v16)
  {
    v40 = MEMORY[0x277D84F90];
    goto LABEL_53;
  }

  v17 = 0;
  v77 = (v71 + 32);
  v78 = v71 & 0xC000000000000001;
  v75 = v16;
  v76 = v15;
  while (2)
  {
    if (v78)
    {
      v18 = MEMORY[0x2530ADF00](v17, v71);
      v19 = __OFADD__(v17++, 1);
      if (v19)
      {
        goto LABEL_73;
      }
    }

    else
    {
      if (v17 >= *(v15 + 16))
      {
        goto LABEL_74;
      }

      v18 = *&v77[8 * v17];

      v19 = __OFADD__(v17++, 1);
      if (v19)
      {
        goto LABEL_73;
      }
    }

    v20 = [*(v18 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) profiles];
    sub_252931930();
    v21 = sub_252E37264();

    if (v21 >> 62)
    {
      v22 = sub_252E378C4();
      if (!v22)
      {
LABEL_49:

        goto LABEL_50;
      }
    }

    else
    {
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v22)
      {
        goto LABEL_49;
      }
    }

    v23 = 0;
    v2 = (v21 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x2530ADF00](v23, v21);
      }

      else
      {
        if (v23 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_70;
        }

        v24 = *(v21 + 8 * v23 + 32);
      }

      v25 = v24;
      v26 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
        goto LABEL_75;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        break;
      }

      ++v23;
      if (v26 == v22)
      {
        goto LABEL_49;
      }
    }

    v27 = (*v18 + 256);
    v28 = *v27;
    if ((*v27)() == 26)
    {
      goto LABEL_10;
    }

    v29 = (*v18 + 272);
    v2 = *v29;
    (*v29)();
    v30 = sub_252DB4F4C();

    if (v30)
    {
      goto LABEL_10;
    }

    v32 = (v28)(v31);
    if (v32 == 38)
    {
      v33 = &unk_2864A0E78;
LABEL_32:
      sub_2529FC004(v33);
    }

    else if (v32 == 41)
    {
      v33 = &unk_2864A0EA0;
      goto LABEL_32;
    }

    v34 = sub_252DB4F4C();

    if (v34)
    {
      goto LABEL_10;
    }

    if (sub_252D4FE78(26))
    {
      goto LABEL_10;
    }

    if (v28() == 44)
    {
      goto LABEL_10;
    }

    v2();
    v35 = sub_252DB4F4C();

    if (v35)
    {
      goto LABEL_10;
    }

    v37 = (v28)(v36);
    if (v37 == 38)
    {
      v38 = &unk_2864A0E78;
LABEL_41:
      sub_2529FC004(v38);
    }

    else if (v37 == 41)
    {
      v38 = &unk_2864A0EA0;
      goto LABEL_41;
    }

    v39 = sub_252DB4F4C();

    if ((v39 & 1) != 0 || sub_252D4FE78(44))
    {
LABEL_10:
      sub_252E37A94();
      sub_252E37AC4();
      sub_252E37AD4();
      sub_252E37AA4();
    }

    else
    {
LABEL_50:
    }

    v15 = v76;
    if (v17 != v75)
    {
      continue;
    }

    break;
  }

  v40 = v79;
LABEL_53:
  sub_252929F10(v71, 0);
  if (v40 < 0 || (v40 & 0x4000000000000000) != 0)
  {
    v41 = sub_252E378C4();
    v78 = v41;
    if (v41)
    {
      goto LABEL_56;
    }
  }

  else
  {
    v41 = *(v40 + 16);
    v78 = v41;
    if (v41)
    {
LABEL_56:
      v42 = 0;
      v43 = MEMORY[0x277D84F90];
      while (1)
      {
        if ((v40 & 0xC000000000000001) != 0)
        {
          v44 = MEMORY[0x2530ADF00](v42, v40);
          v2 = (v42 + 1);
          if (__OFADD__(v42, 1))
          {
            goto LABEL_71;
          }
        }

        else
        {
          if (v42 >= *(v40 + 16))
          {
            goto LABEL_72;
          }

          v44 = *(v40 + 8 * v42 + 32);

          v2 = (v42 + 1);
          if (__OFADD__(v42, 1))
          {
            goto LABEL_71;
          }
        }

        v45 = [*(v44 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) deviceIdentifier];
        v46 = sub_252E36F34();
        v48 = v47;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = sub_2529F7A80(0, *(v43 + 2) + 1, 1, v43);
        }

        v50 = *(v43 + 2);
        v49 = *(v43 + 3);
        if (v50 >= v49 >> 1)
        {
          v43 = sub_2529F7A80((v49 > 1), v50 + 1, 1, v43);
        }

        *(v43 + 2) = v50 + 1;
        v51 = &v43[16 * v50];
        *(v51 + 4) = v46;
        *(v51 + 5) = v48;
        ++v42;
        v41 = v78;
        if (v2 == v78)
        {
          goto LABEL_79;
        }
      }
    }
  }

  v43 = MEMORY[0x277D84F90];
LABEL_79:
  if (qword_27F53F500 != -1)
  {
    goto LABEL_101;
  }

LABEL_80:
  v52 = __swift_project_value_buffer(v73, qword_27F544DA8);
  v53 = *(v72 + 16);
  v77 = v52;
  v53(v74);
  v79 = 0;
  v80 = 0xE000000000000000;
  sub_252E379F4();

  v79 = 0xD000000000000013;
  v80 = 0x8000000252E68FA0;
  if (v41)
  {
    v54 = 0;
    v55 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v40 & 0xC000000000000001) != 0)
      {
        v56 = MEMORY[0x2530ADF00](v54, v40);
        v41 = v54 + 1;
        if (__OFADD__(v54, 1))
        {
          goto LABEL_99;
        }
      }

      else
      {
        if (v54 >= *(v40 + 16))
        {
          goto LABEL_100;
        }

        v56 = *(v40 + 8 * v54 + 32);

        v41 = v54 + 1;
        if (__OFADD__(v54, 1))
        {
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          swift_once();
          goto LABEL_80;
        }
      }

      v57 = *(v56 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v58 = *(v56 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v55 = sub_2529F7A80(0, *(v55 + 2) + 1, 1, v55);
      }

      v60 = *(v55 + 2);
      v59 = *(v55 + 3);
      if (v60 >= v59 >> 1)
      {
        v55 = sub_2529F7A80((v59 > 1), v60 + 1, 1, v55);
      }

      *(v55 + 2) = v60 + 1;
      v61 = &v55[16 * v60];
      *(v61 + 4) = v57;
      *(v61 + 5) = v58;
      ++v54;
      if (v41 == v78)
      {
        goto LABEL_95;
      }
    }
  }

  v55 = MEMORY[0x277D84F90];
LABEL_95:

  v62 = MEMORY[0x2530AD730](v55, MEMORY[0x277D837D0]);
  v64 = v63;

  MEMORY[0x2530AD570](v62, v64);

  v65 = v74;
  sub_252CC3D90(v79, v80, 0xD00000000000009BLL, 0x8000000252E68EE0);

  (*(v72 + 8))(v65, v73);
  if (*(v43 + 2))
  {
    sub_252CC4A5C(0xD000000000000051, 0x8000000252E68FC0, 0, 0xD00000000000009BLL, 0x8000000252E68EE0);
    v79 = 0;
    v80 = 0xE000000000000000;
    sub_252E379F4();

    v79 = 0xD00000000000001ELL;
    v80 = 0x8000000252E69020;
    v66 = MEMORY[0x2530AD730](v43, MEMORY[0x277D837D0]);
    MEMORY[0x2530AD570](v66);

    sub_252CC3D90(v79, v80, 0xD00000000000009BLL, 0x8000000252E68EE0);

    v68 = *(_s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v67) + 51);

    if (v68)
    {
      *(swift_allocObject() + 16) = v43;

      sub_252E36904();
    }
  }

  return v70;
}

unint64_t sub_2529318DC()
{
  result = qword_27F540168;
  if (!qword_27F540168)
  {
    result = swift_getWitnessTable(aE_14, &type metadata for Log.Errors, v0, v1);
    atomic_store(result, &qword_27F540168);
  }

  return result;
}

unint64_t sub_252931930()
{
  result = qword_27F540170;
  if (!qword_27F540170)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F540170);
  }

  return result;
}

uint64_t sub_252931984(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540178, &unk_252E50250);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2529319F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540178, &unk_252E50250);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_252931A5C()
{
  result = qword_27F540180;
  if (!qword_27F540180)
  {
    v3 = sub_252E36934();
    result = swift_getWitnessTable(MEMORY[0x277D5F6E8], v3, v0, v1);
    atomic_store(result, &qword_27F540180);
  }

  return result;
}

void *sub_252931AE8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402C8, &unk_252E5D320);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_252931C1C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401B0, &qword_252E41DB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_252931D28(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402C0, &unk_252E3C0F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_252931E40(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402A8, &unk_252E3E850);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402B0, &qword_252E3C0E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_252931F88(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401C8, &unk_252E3BFF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401D0, &unk_252E466B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2529320D0(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

char *sub_2529321CC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540190, &qword_252E4A5F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 504);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[504 * v8])
    {
      memmove(v12, v13, 504 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2529322F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540198, &qword_252E3BFC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

void *sub_25293245C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540230, &unk_252E3C060);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540238, &qword_252E610B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2529325A4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540220, &unk_252E3C050);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_2529326B8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

char *sub_2529327A4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401F0, &unk_252E5BAD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 152);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[152 * v8])
    {
      memmove(v12, v13, 152 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2529328C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540278, &qword_252E3C0A8);
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
    if (v10 != a4 || v12 >= &v13[v8])
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

void *sub_252932A04(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_252932B5C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

void *sub_252932D44(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 24);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[3 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 24 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_252932EDC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540258, &qword_252E3C088);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_252933008(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540208, &qword_252E3C030);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540210, &qword_252E3C038);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_25293313C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540218, &unk_252E3C040);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541E80, &qword_252E3DFA0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_252933270(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540260, &qword_252E3C090);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}