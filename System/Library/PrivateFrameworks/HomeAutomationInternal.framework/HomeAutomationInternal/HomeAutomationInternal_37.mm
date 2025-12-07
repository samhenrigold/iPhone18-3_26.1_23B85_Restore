char *sub_252BF8258()
{

  sub_252E36744();

  if ((~v30 & 0xC0C0) == 0)
  {
    if (qword_27F53F4B8 != -1)
    {
      swift_once();
    }

    v0 = sub_252E36AD4();
    __swift_project_value_buffer(v0, qword_27F544CD0);
    sub_252E379F4();

    v1 = sub_252A96AFC();
    MEMORY[0x2530AD570](v1);

    sub_252CC4050(0xD00000000000002ALL, 0x8000000252E898C0, 0xD000000000000075, 0x8000000252E891C0, 0xD000000000000016, 0x8000000252E898F0, 220);

    return 0;
  }

  if (!(v30 >> 14))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543EF8, &unk_252E52320);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_252E3C290;
    if (qword_27F53F3B8 != -1)
    {
      v28 = inited;
      swift_once();
      inited = v28;
    }

    v4 = off_27F543EA0;
    if (*(off_27F543EA0 + 2))
    {
      v5 = inited;
      v6 = sub_252A44A88(v30);
      if (v11)
      {
        goto LABEL_11;
      }

      goto LABEL_16;
    }

LABEL_22:
    *(inited + 32) = 0;
    *(inited + 40) = 1;
    goto LABEL_23;
  }

  if (v30 >> 14 != 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543EF8, &unk_252E52320);
    v12 = swift_initStackObject();
    *(v12 + 16) = xmmword_252E3C3C0;
    if (qword_27F53F3B8 != -1)
    {
      swift_once();
    }

    v13 = off_27F543EA0;
    if (*(off_27F543EA0 + 2) && (v14 = sub_252A44A88(v30), (v15 & 1) != 0))
    {
      v16 = 0;
      v17 = *(v13[7] + 8 * v14);
    }

    else
    {
      v17 = 0;
      v16 = 1;
    }

    *(v12 + 32) = v17;
    *(v12 + 40) = v16;
    if (v13[2] && (v18 = sub_252A44A88(HIBYTE(v30) & 0x3F), (v19 & 1) != 0))
    {
      v20 = 0;
      v8 = *(v13[7] + 8 * v18);
    }

    else
    {
      v8 = 0;
      v20 = 1;
    }

    *(v12 + 48) = v8;
    *(v12 + 56) = v20;
    if (*(v12 + 40))
    {
      v21 = MEMORY[0x277D84F90];
    }

    else
    {
      v22 = *(v12 + 32);
      v23 = sub_2529F7B8C(0, 1, 1, MEMORY[0x277D84F90]);
      v24 = *(v23 + 2);
      v25 = *(v23 + 3);
      v26 = v24 + 1;
      if (v24 >= v25 >> 1)
      {
        v29 = *(v23 + 2);
        v23 = sub_2529F7B8C((v25 > 1), v26, 1, v23);
        v24 = v29;
      }

      *(v23 + 2) = v26;
      v21 = v23;
      *&v23[8 * v24 + 32] = v22;
    }

    if (v20)
    {
      return v21;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_2529F7B8C(0, *(v21 + 2) + 1, 1, v21);
    }

    result = v21;
    v10 = *(v21 + 2);
    v9 = *(v21 + 3);
    goto LABEL_39;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543EF8, &unk_252E52320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E3C290;
  if (qword_27F53F3B8 != -1)
  {
    v27 = inited;
    swift_once();
    inited = v27;
  }

  v4 = off_27F543EA0;
  if (!*(off_27F543EA0 + 2))
  {
    goto LABEL_22;
  }

  v5 = inited;
  v6 = sub_252A44A88(HIBYTE(v30) & 0x3F);
  if ((v7 & 1) == 0)
  {
LABEL_16:
    *(v5 + 32) = 0;
    *(v5 + 40) = 1;
LABEL_23:

    return MEMORY[0x277D84F90];
  }

LABEL_11:
  v8 = *(v4[7] + 8 * v6);
  *(v5 + 32) = v8;
  *(v5 + 40) = 0;

  result = sub_2529F7B8C(0, 1, 1, MEMORY[0x277D84F90]);
  v10 = *(result + 2);
  v9 = *(result + 3);
LABEL_39:
  if (v10 >= v9 >> 1)
  {
    result = sub_2529F7B8C((v9 > 1), v10 + 1, 1, result);
  }

  *(result + 2) = v10 + 1;
  *&result[8 * v10 + 32] = v8;
  return result;
}

unint64_t sub_252BF86D8(unint64_t isUniquelyReferenced_nonNull_bridgeObject, uint64_t (*a2)(uint64_t))
{
  v3 = v2;
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_48;
  }

  v4 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v4)
  {
    v5 = 0;
    v34 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v35 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v6 = MEMORY[0x277D84F90];
    v31 = isUniquelyReferenced_nonNull_bridgeObject;
    v32 = v4;
    v33 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    while (v35)
    {
      isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x2530ADF00](v5, v31);
      v7 = isUniquelyReferenced_nonNull_bridgeObject;
      v8 = __OFADD__(v5++, 1);
      if (v8)
      {
        goto LABEL_42;
      }

LABEL_9:
      v9 = v3;
      v10 = a2(v7);
      if (v3)
      {
        goto LABEL_41;
      }

      v11 = v10;

      v12 = v11 >> 62;
      if (v11 >> 62)
      {
        v13 = sub_252E378C4();
      }

      else
      {
        v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v14 = v6 >> 62;
      if (v6 >> 62)
      {
        v28 = sub_252E378C4();
        v16 = v28 + v13;
        if (__OFADD__(v28, v13))
        {
LABEL_40:
          __break(1u);
LABEL_41:

          return v6;
        }
      }

      else
      {
        v15 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v16 = v15 + v13;
        if (__OFADD__(v15, v13))
        {
          goto LABEL_40;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v14)
        {
          v17 = v6 & 0xFFFFFFFFFFFFFF8;
          if (v16 <= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

LABEL_19:
        sub_252E378C4();
        goto LABEL_20;
      }

      if (v14)
      {
        goto LABEL_19;
      }

LABEL_20:
      isUniquelyReferenced_nonNull_bridgeObject = sub_252E37A54();
      v6 = isUniquelyReferenced_nonNull_bridgeObject;
      v17 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v38 = v13;
      v18 = *(v17 + 16);
      v19 = *(v17 + 24);
      if (v12)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v20 = isUniquelyReferenced_nonNull_bridgeObject;
        if (!isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_4:

          if (v38 > 0)
          {
            goto LABEL_44;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v20 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v20)
        {
          goto LABEL_4;
        }
      }

      if (((v19 >> 1) - v18) < v38)
      {
        goto LABEL_45;
      }

      v21 = v17 + 8 * v18 + 32;
      if (v12)
      {
        if (v20 < 1)
        {
          goto LABEL_47;
        }

        sub_252A00B04(&qword_27F542DB0, &qword_27F542DA8, &qword_252E49180);
        for (i = 0; i != v20; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542DA8, &qword_252E49180);
          v23 = sub_2529FBD80(v37, i, v11);
          v25 = *v24;
          (v23)(v37, 0);
          *(v21 + 8 * i) = v25;
        }
      }

      else
      {
        type metadata accessor for HomeAttributeTargetArea();
        swift_arrayInitWithCopy();
      }

      v3 = v9;
      if (v38 >= 1)
      {
        v26 = *(v17 + 16);
        v8 = __OFADD__(v26, v38);
        v27 = v26 + v38;
        if (v8)
        {
          goto LABEL_46;
        }

        *(v17 + 16) = v27;
      }

LABEL_5:
      if (v5 == v32)
      {
        return v6;
      }
    }

    if (v5 >= *(v34 + 16))
    {
      goto LABEL_43;
    }

    v7 = *(v33 + 8 * v5);

    v8 = __OFADD__(v5++, 1);
    if (!v8)
    {
      goto LABEL_9;
    }

LABEL_42:
    __break(1u);
LABEL_43:
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
    v29 = isUniquelyReferenced_nonNull_bridgeObject;
    v4 = sub_252E378C4();
    isUniquelyReferenced_nonNull_bridgeObject = v29;
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_252BF8A5C(unint64_t isUniquelyReferenced_nonNull_bridgeObject, uint64_t (*a2)(uint64_t))
{
  v3 = v2;
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_48;
  }

  v4 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v4)
  {
    v5 = 0;
    v34 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v35 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v6 = MEMORY[0x277D84F90];
    v31 = isUniquelyReferenced_nonNull_bridgeObject;
    v32 = v4;
    v33 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    while (v35)
    {
      isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x2530ADF00](v5, v31);
      v7 = isUniquelyReferenced_nonNull_bridgeObject;
      v8 = __OFADD__(v5++, 1);
      if (v8)
      {
        goto LABEL_42;
      }

LABEL_9:
      v9 = v3;
      v10 = a2(v7);
      if (v3)
      {
        goto LABEL_41;
      }

      v11 = v10;

      v12 = v11 >> 62;
      if (v11 >> 62)
      {
        v13 = sub_252E378C4();
      }

      else
      {
        v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v14 = v6 >> 62;
      if (v6 >> 62)
      {
        v28 = sub_252E378C4();
        v16 = v28 + v13;
        if (__OFADD__(v28, v13))
        {
LABEL_40:
          __break(1u);
LABEL_41:

          return v6;
        }
      }

      else
      {
        v15 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v16 = v15 + v13;
        if (__OFADD__(v15, v13))
        {
          goto LABEL_40;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v14)
        {
          v17 = v6 & 0xFFFFFFFFFFFFFF8;
          if (v16 <= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

LABEL_19:
        sub_252E378C4();
        goto LABEL_20;
      }

      if (v14)
      {
        goto LABEL_19;
      }

LABEL_20:
      isUniquelyReferenced_nonNull_bridgeObject = sub_252E37A54();
      v6 = isUniquelyReferenced_nonNull_bridgeObject;
      v17 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v38 = v13;
      v18 = *(v17 + 16);
      v19 = *(v17 + 24);
      if (v12)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v20 = isUniquelyReferenced_nonNull_bridgeObject;
        if (!isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_4:

          if (v38 > 0)
          {
            goto LABEL_44;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v20 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v20)
        {
          goto LABEL_4;
        }
      }

      if (((v19 >> 1) - v18) < v38)
      {
        goto LABEL_45;
      }

      v21 = v17 + 8 * v18 + 32;
      if (v12)
      {
        if (v20 < 1)
        {
          goto LABEL_47;
        }

        sub_252A00B04(&qword_27F5433E0, &qword_27F5433D8, &qword_252E4B828);
        for (i = 0; i != v20; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5433D8, &qword_252E4B828);
          v23 = sub_2529FBD80(v37, i, v11);
          v25 = *v24;
          (v23)(v37, 0);
          *(v21 + 8 * i) = v25;
        }
      }

      else
      {
        type metadata accessor for HomeAttributeTargetMap();
        swift_arrayInitWithCopy();
      }

      v3 = v9;
      if (v38 >= 1)
      {
        v26 = *(v17 + 16);
        v8 = __OFADD__(v26, v38);
        v27 = v26 + v38;
        if (v8)
        {
          goto LABEL_46;
        }

        *(v17 + 16) = v27;
      }

LABEL_5:
      if (v5 == v32)
      {
        return v6;
      }
    }

    if (v5 >= *(v34 + 16))
    {
      goto LABEL_43;
    }

    v7 = *(v33 + 8 * v5);

    v8 = __OFADD__(v5++, 1);
    if (!v8)
    {
      goto LABEL_9;
    }

LABEL_42:
    __break(1u);
LABEL_43:
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
    v29 = isUniquelyReferenced_nonNull_bridgeObject;
    v4 = sub_252E378C4();
    isUniquelyReferenced_nonNull_bridgeObject = v29;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_252BF8DE0(uint64_t a1)
{
  if (qword_27F53F3C0 != -1)
  {
    swift_once();
  }

  v2 = off_27F543EA8;
  if (*(off_27F543EA8 + 2))
  {
    v3 = sub_252A456C4(a1);
    if (v4)
    {
      return *(v2[7] + 8 * v3);
    }
  }

  if (qword_27F53F3C8 != -1)
  {
    swift_once();
  }

  v2 = off_27F543EB0;
  if (*(off_27F543EB0 + 2))
  {
    v3 = sub_252A456C4(a1);
    if (v5)
    {
      return *(v2[7] + 8 * v3);
    }
  }

  if (qword_27F53F4B8 != -1)
  {
    swift_once();
  }

  v7 = sub_252E36AD4();
  __swift_project_value_buffer(v7, qword_27F544CD0);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000033, 0x8000000252E893A0);
  sub_252E37AE4();
  sub_252CC4050(0, 0xE000000000000000, 0xD000000000000075, 0x8000000252E891C0, 0xD000000000000018, 0x8000000252E893E0, 241);

  return 0;
}

void *sub_252BF8FB8(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  v5 = sub_252BF8DE0(a2);
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  v8 = *a1;
  v9 = *(a1 + 1) | ((*(a1 + 5) | (a1[7] << 16)) << 32);
  v11 = *(a1 + 1);
  v10 = *(a1 + 2);
  v12 = *(a1 + 3);
  v13 = a1[32];
  switch(v13 >> 2)
  {
    case 1u:
      v65 = (v8 & 1) == 0;
      if (v8)
      {
        v55 = 0x3031657A6973;
      }

      else
      {
        v55 = 0x355F32657A6973;
      }

      if (v65)
      {
        v56 = 0xE700000000000000;
      }

      else
      {
        v56 = 0xE600000000000000;
      }

      goto LABEL_61;
    case 2u:
      v47 = 0xE700000000000000;
      v48 = 0x6E776F6E6B6E75;
      v49 = 0xE400000000000000;
      v50 = 1919508838;
      v51 = 0xE800000000000000;
      v52 = 0x726F697265666E69;
      if (v8 != 4)
      {
        v52 = 1919905648;
        v51 = 0xE400000000000000;
      }

      if (v8 != 3)
      {
        v50 = v52;
        v49 = v51;
      }

      v53 = 0xE900000000000074;
      v54 = 0x6E656C6C65637865;
      if (v8 != 1)
      {
        v54 = 1685024615;
        v53 = 0xE400000000000000;
      }

      if (*a1)
      {
        v48 = v54;
        v47 = v53;
      }

      if (*a1 <= 2u)
      {
        v55 = v48;
      }

      else
      {
        v55 = v50;
      }

      if (*a1 <= 2u)
      {
        v56 = v47;
      }

      else
      {
        v56 = v49;
      }

LABEL_61:
      type metadata accessor for HomeAttributeValue();
      v59 = v55;
      v60 = v56;
      goto LABEL_62;
    case 3u:
    case 4u:
    case 0x13u:
    case 0x32u:
      v24 = v8 | (v9 << 8);
      v25 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
      v26 = sub_252E36F04();
      v27 = [v25 initWithIdentifier:0 displayString:v26];

      v18 = v27;
      [v18 setIntegerValue_];
      [v18 setUnit_];
      goto LABEL_11;
    case 5u:
    case 8u:
    case 0xBu:
    case 0xDu:
    case 0x17u:
    case 0x1Bu:
    case 0x1Du:
    case 0x1Eu:
    case 0x20u:
    case 0x21u:
    case 0x25u:
    case 0x2Bu:
    case 0x2Eu:
      v19 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
      v20 = sub_252E36F04();
      v21 = [v19 initWithIdentifier:0 displayString:v20];

      v22 = v21;
      [v22 setBoolValue_];
      [v22 setType_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541648, &qword_252E40910);
      result = swift_allocObject();
      *(result + 1) = xmmword_252E3C290;
      result[4] = v7;
      result[5] = v22;
      return result;
    case 0xCu:
      type metadata accessor for HomeAttributeValue();
      MEMORY[0x2530AD570](977425224, 0xE400000000000000);
      sub_252E37374();
      MEMORY[0x2530AD570](44, 0xE100000000000000);
      sub_252E37374();
      MEMORY[0x2530AD570](3878956, 0xE300000000000000);
      v60 = 0xE000000000000000;
      v59 = 0;
LABEL_62:
      v18 = HomeAttributeValue.__allocating_init(stringValue:unit:)(v59, v60, 0);
      goto LABEL_13;
    case 0xEu:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541648, &qword_252E40910);
      v61 = swift_allocObject();
      *(v61 + 16) = xmmword_252E3C290;
      v62 = v61;
      *(v61 + 32) = v7;
      type metadata accessor for HomeAttributeValue();
      if (v8)
      {
        if (v8 == 1)
        {
          v63 = 1162626121;
          v64 = 0xE400000000000000;
        }

        else
        {
          v63 = 0x4E49594649525550;
          v64 = 0xED00005249415F47;
        }
      }

      else
      {
        v63 = 0x4556495443414E49;
        v64 = 0xE800000000000000;
      }

      v94 = HomeAttributeValue.__allocating_init(stringValue:unit:)(v63, v64, 0);
      result = v62;
      v62[5] = v94;
      return result;
    case 0xFu:
    case 0x2Fu:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541648, &qword_252E40910);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_252E3C290;
      *(v32 + 32) = v7;
      v33 = sub_252A7CAA0(v8);
      goto LABEL_18;
    case 0x10u:
      if (qword_27F53F4B8 != -1)
      {
        swift_once();
      }

      v39 = sub_252E36AD4();
      __swift_project_value_buffer(v39, qword_27F544CD0);
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD00000000000001BLL, 0x8000000252E891A0);
      sub_252E37AE4();
      v38 = 636;
      goto LABEL_31;
    case 0x12u:
    case 0x31u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541648, &qword_252E40910);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_252E3C290;
      *(v32 + 32) = v7;
      v33 = sub_252A7D058(v8);
      goto LABEL_18;
    case 0x14u:
    case 0x33u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541648, &qword_252E40910);
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_252E3C290;
      *(v32 + 32) = v7;
      v33 = sub_252A7E300(v8);
LABEL_18:
      v34 = v33;
      result = v32;
      *(v32 + 40) = v34;
      return result;
    case 0x15u:
      *&v66 = v8 | (v9 << 8);
      v67 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
      v68 = sub_252E36F04();
      v69 = [v67 initWithIdentifier:0 displayString:v68];

      v18 = v69;
      [v18 setDoubleValue_];
      [v18 setUnit_];
      goto LABEL_6;
    case 0x16u:
    case 0x34u:
      return sub_252A7EA18(*a1);
    case 0x18u:
      v43 = 0;
      v44 = 1;
      goto LABEL_65;
    case 0x19u:
      v43 = *(a1 + 1);
      v44 = 0;
LABEL_65:
      v57 = 0;
      v58 = 1;
      return sub_252A7F818(v43, v44, v57, v58, *a1);
    case 0x1Au:
      v43 = *(a1 + 1);
      v44 = 0;
      v57 = *(a1 + 2);
      v58 = 0;
      return sub_252A7F818(v43, v44, v57, v58, *a1);
    case 0x26u:
    case 0x2Cu:
      v28 = v8 | (v9 << 8);
      v29 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
      v30 = sub_252E36F04();
      v31 = [v29 initWithIdentifier:0 displayString:v30];

      v18 = v31;
      [v18 setIntegerValue_];
      [v18 setUnit_];
LABEL_11:
      [v18 setType_];
      goto LABEL_12;
    case 0x27u:
      type metadata accessor for HomeAttributeValue();
      if (v8)
      {
        v45 = 0xD000000000000010;
        v46 = 0x8000000252E66F40;
      }

      else
      {
        v45 = 0x5349574B434F4C43;
        v46 = 0xE900000000000045;
      }

      v93 = HomeAttributeValue.__allocating_init(stringValue:unit:)(v45, v46, 0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541648, &qword_252E40910);
      result = swift_allocObject();
      *(result + 1) = xmmword_252E3C290;
      result[4] = 12;
      result[5] = v93;
      return result;
    case 0x29u:
      v40 = sub_252D366E0(*a1);
      if (v41)
      {
        if (qword_27F53F4B8 != -1)
        {
          swift_once();
        }

        v42 = sub_252E36AD4();
        __swift_project_value_buffer(v42, qword_27F544CD0);
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD00000000000002ALL, 0x8000000252E892B0);
        sub_252E37AE4();
        v38 = 586;
        goto LABEL_31;
      }

      v114 = v40;
      v81 = *(v11 + 16);
      v82 = MEMORY[0x277D84F90];
      if (v81)
      {
        v83 = (v11 + 32);
        do
        {
          v84 = *v83++;
          v85 = sub_252D36D20(v84);
          if ((v86 & 1) == 0)
          {
            v87 = v85;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v82 = sub_2529F7F9C(0, *(v82 + 2) + 1, 1, v82);
            }

            v89 = *(v82 + 2);
            v88 = *(v82 + 3);
            if (v89 >= v88 >> 1)
            {
              v82 = sub_2529F7F9C((v88 > 1), v89 + 1, 1, v82);
            }

            *(v82 + 2) = v89 + 1;
            *&v82[8 * v89 + 32] = v87;
          }

          --v81;
        }

        while (v81);
      }

      if (v10)
      {
        v115 = MEMORY[0x277D84F90];
        v90 = *(v10 + 16);
        if (v90)
        {
          v91 = (v10 + 32);
          do
          {
            v92 = *v91++;
            if (sub_252BF7874(a3, sub_252D365D0, 0, sub_252D365E8, 0, type metadata accessor for HomeAttributeTargetArea, &qword_27F543ED8, &qword_252E52300, v92, sub_252BF86D8))
            {
              MEMORY[0x2530AD700]();
              if (*((v115 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v115 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_252E372A4();
              }

              sub_252E372D4();
            }

            --v90;
          }

          while (v90);
        }

        v95 = 0;
      }

      else if (v13)
      {
        v95 = 0;
      }

      else
      {
        v95 = sub_252BF7874(a3, sub_252D365F8, 0, sub_252D366D0, 0, type metadata accessor for HomeAttributeTargetMap, &qword_27F543EE0, &qword_252E52308, v12, sub_252BF8A5C);
      }

      v96 = objc_allocWithZone(type metadata accessor for HomeAttributeCleaningJob());
      v97 = v95;
      v98 = sub_252E36F04();
      v99 = &off_279711000;
      v100 = [v96 initWithIdentifier:0 displayString:v98];

      v101 = v100;
      [v101 setRunState_];
      v102 = *(v82 + 2);
      if (v102)
      {
        v116 = MEMORY[0x277D84F90];
        sub_2529AA3C0(0, v102, 0);
        v103 = *(v116 + 16);
        v104 = 32;
        do
        {
          v105 = *&v82[v104];
          v106 = *(v116 + 24);
          if (v103 >= v106 >> 1)
          {
            sub_2529AA3C0((v106 > 1), v103 + 1, 1);
          }

          *(v116 + 16) = v103 + 1;
          *(v116 + 8 * v103 + 32) = v105;
          v104 += 8;
          ++v103;
          --v102;
        }

        while (v102);

        v99 = &off_279711000;
      }

      else
      {
      }

      v107 = sub_252E37254();

      [v101 setCleanModes_];

      type metadata accessor for HomeAttributeTargetArea();
      v108 = sub_252E37254();

      [v101 setTargetAreas_];

      [v101 setTargetMap_];
      v109 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
      v110 = sub_252E36F04();
      v111 = [v109 v99[226]];

      v112 = v111;
      [v112 setType_];
      [v112 setCleaningJob_];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541648, &qword_252E40910);
      v113 = swift_allocObject();
      *(v113 + 16) = xmmword_252E3C290;
      *(v113 + 32) = 67;
      *(v113 + 40) = v112;

      result = v113;
      break;
    case 0x2Au:
      v35 = sub_252D37230(*a1);
      if (v36)
      {
        if (qword_27F53F4B8 != -1)
        {
          swift_once();
        }

        v37 = sub_252E36AD4();
        __swift_project_value_buffer(v37, qword_27F544CD0);
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD000000000000038, 0x8000000252E89270);
        sub_252E37AE4();
        v38 = 607;
LABEL_31:
        sub_252CC4050(0, 0xE000000000000000, 0xD000000000000075, 0x8000000252E891C0, 0xD000000000000029, 0x8000000252E89240, v38);

        result = 0;
      }

      else
      {
        v70 = v35;
        v71 = objc_allocWithZone(type metadata accessor for HomeAttributeCleaningJob());
        v72 = sub_252E36F04();
        v73 = [v71 initWithIdentifier:0 displayString:v72];

        v74 = v73;
        [v74 setRunState_];
        v75 = sub_252E37254();
        [v74 setCleanModes_];

        type metadata accessor for HomeAttributeTargetArea();
        v76 = sub_252E37254();
        [v74 setTargetAreas_];

        [v74 setTargetMap_];
        v77 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
        v78 = sub_252E36F04();
        v79 = [v77 initWithIdentifier:0 displayString:v78];

        v80 = v79;
        [v80 setType_];
        [v80 setCleaningJob_];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541648, &qword_252E40910);
        result = swift_allocObject();
        *(result + 1) = xmmword_252E3C290;
        result[4] = 67;
        result[5] = v80;
      }

      break;
    case 0x35u:
      return sub_252A7EB54(*a1, *(a1 + 1));
    case 0x36u:
      return sub_252A7EDA8(*(a1 + 2), 0, *(a1 + 1), 0, *a1);
    default:
      *&v14 = v8 | (v9 << 8);
      v15 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
      v16 = sub_252E36F04();
      v17 = [v15 initWithIdentifier:0 displayString:v16];

      v18 = v17;
      [v18 setDoubleValue_];
      [v18 setUnit_];
LABEL_6:
      [v18 setType_];
LABEL_12:

LABEL_13:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541648, &qword_252E40910);
      result = swift_allocObject();
      *(result + 1) = xmmword_252E3C290;
      result[4] = v7;
      result[5] = v18;
      return result;
  }

  return result;
}

uint64_t sub_252BFA054(void *a1, void *a2)
{
  if (a1)
  {
    v3 = a1;
    v4 = [v3 type];
    v5 = 0;
    v6 = v4 != 2;
    if (v4 == 2)
    {
      [v3 doubleValue];
      v5 = v7;
    }

    if ([v3 type] == 6)
    {
      v8 = [v3 rangeValue];
      if (v8)
      {
        v9 = v8;
        [v8 lowerValue];
        v11 = v10;
        [v9 upperValue];
        v13 = v12;

        v14 = 0;
        if (!a2)
        {
          goto LABEL_7;
        }

LABEL_15:
        v19 = a2;
        v20 = [v19 stringValue];
        if (v20)
        {
          v21 = v20;
          v22 = sub_252E36F34();
          v24 = v23;
        }

        else
        {
          v22 = 0;
          v24 = 0;
        }

        v15 = sub_252A812C0(v22, v24);

        if ((v14 & 1) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_19;
      }
    }

    v14 = 1;
    v13 = 0;
  }

  else
  {
    v6 = 1;
    v5 = 0;
    v13 = 0;
    v14 = 1;
  }

  v11 = 0;
  if (a2)
  {
    goto LABEL_15;
  }

LABEL_7:
  v15 = 6;
  if ((v14 & 1) == 0)
  {
LABEL_8:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543EE8, &qword_252E52310);
    result = swift_allocObject();
    *(result + 16) = xmmword_252E3C290;
    if (v15 == 6)
    {
      v17 = 0;
    }

    else
    {
      v17 = v15;
    }

    *(result + 32) = v17;
    *(result + 40) = v11;
    *(result + 48) = v13;
    *(result + 56) = 0;
    v18 = -40;
    goto LABEL_27;
  }

LABEL_19:
  if (v6)
  {
    if (v15 == 6)
    {
      return 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543EE8, &qword_252E52310);
    result = swift_allocObject();
    *(result + 16) = xmmword_252E3C290;
    *(result + 32) = v15;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    v18 = -48;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543EE8, &qword_252E52310);
    result = swift_allocObject();
    *(result + 16) = xmmword_252E3C290;
    if (v15 == 6)
    {
      v25 = 0;
    }

    else
    {
      v25 = v15;
    }

    *(result + 32) = v25;
    *(result + 40) = v5;
    *(result + 48) = 0;
    *(result + 56) = 0;
    v18 = -44;
  }

LABEL_27:
  *(result + 64) = v18;
  return result;
}

char *sub_252BFA2C0(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) != 0 || a2 != 5)
  {
LABEL_18:
    if (qword_27F53F3C8 == -1)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (qword_27F53F3C0 != -1)
    {
      v39 = a1;
      swift_once();
      a1 = v39;
    }

    v3 = 0;
    v4 = 1 << *(off_27F543EA8 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(off_27F543EA8 + 8);
    v7 = (v4 + 63) >> 6;
    while (v6)
    {
      v8 = v3;
LABEL_14:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = v9 | (v8 << 6);
      if (*(*(off_27F543EA8 + 7) + 8 * v10) == a1)
      {
        v11 = a1;
        v12 = *(*(off_27F543EA8 + 6) + v10);
        if (qword_27F53F4B8 != -1)
        {
          swift_once();
        }

        v13 = sub_252E36AD4();
        __swift_project_value_buffer(v13, qword_27F544CD0);
        sub_252E379F4();

        v14 = 0x8000000252E89480;
        v15 = 0xD000000000000025;
LABEL_32:
        v43 = v15;
        v44 = v14;
        v25 = HomeAttributeType.description.getter(v11);
        MEMORY[0x2530AD570](v25);

        sub_252CC3D90(v43, v44, 0xD000000000000075, 0x8000000252E891C0);

        v26 = sub_2529F8764(0, 1, 1, MEMORY[0x277D84F90]);
        v27 = *(v26 + 2);
        v28 = *(v26 + 3);
        v29 = v27 + 1;
        if (v27 >= v28 >> 1)
        {
          v40 = v26;
          v41 = *(v26 + 2);
          v42 = sub_2529F8764((v28 > 1), v27 + 1, 1, v40);
          v27 = v41;
          v26 = v42;
        }

        *(v26 + 2) = v29;
        v30 = v26 + 16;
        v26[v27 + 32] = v12;
LABEL_36:
        if (sub_2529A78E0(13, v26))
        {
          if (qword_27F53F4B0 != -1)
          {
            swift_once();
          }

          v31 = sub_252E36AD4();
          __swift_project_value_buffer(v31, qword_27F544CB8);
          sub_252CC3D90(0xD000000000000026, 0x8000000252E89420, 0xD000000000000075, 0x8000000252E891C0);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v26 = sub_2529F8764(0, *v30 + 1, 1, v26);
          }

          v33 = *(v26 + 2);
          v32 = *(v26 + 3);
          if (v33 >= v32 >> 1)
          {
            v26 = sub_2529F8764((v32 > 1), v33 + 1, 1, v26);
          }

          *(v26 + 2) = v33 + 1;
          v26[v33 + 32] = 3;
        }

        return v26;
      }
    }

    while (1)
    {
      v8 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if (v8 >= v7)
      {
        goto LABEL_18;
      }

      v6 = *(off_27F543EA8 + v8 + 8);
      ++v3;
      if (v6)
      {
        v3 = v8;
        goto LABEL_14;
      }
    }

LABEL_49:
    __break(1u);
  }

  v38 = a1;
  swift_once();
  a1 = v38;
LABEL_19:
  v16 = 0;
  v17 = 1 << *(off_27F543EB0 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(off_27F543EB0 + 8);
  v20 = (v17 + 63) >> 6;
  while (v19)
  {
    v21 = v16;
LABEL_28:
    v22 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v23 = v22 | (v21 << 6);
    if (*(*(off_27F543EB0 + 7) + 8 * v23) == a1)
    {
      v11 = a1;
      v12 = *(*(off_27F543EB0 + 6) + v23);
      if (qword_27F53F4B8 != -1)
      {
        swift_once();
      }

      v24 = sub_252E36AD4();
      __swift_project_value_buffer(v24, qword_27F544CD0);
      sub_252E379F4();

      v14 = 0x8000000252E89400;
      v15 = 0xD00000000000001BLL;
      goto LABEL_32;
    }
  }

  while (1)
  {
    v21 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_49;
    }

    if (v21 >= v20)
    {
      break;
    }

    v19 = *(off_27F543EB0 + v21 + 8);
    ++v16;
    if (v19)
    {
      v16 = v21;
      goto LABEL_28;
    }
  }

  v26 = MEMORY[0x277D84F90];
  v30 = (MEMORY[0x277D84F90] + 16);
  if (*(MEMORY[0x277D84F90] + 16))
  {
    goto LABEL_36;
  }

  v34 = a1;

  if (qword_27F53F4B0 != -1)
  {
    swift_once();
  }

  v35 = sub_252E36AD4();
  __swift_project_value_buffer(v35, qword_27F544CB8);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD00000000000002FLL, 0x8000000252E89450);
  v36 = HomeAttributeType.description.getter(v34);
  MEMORY[0x2530AD570](v36);

  MEMORY[0x2530AD570](0x6E7275746572202CLL, 0xEF6C696E20676E69);
  sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000075, 0x8000000252E891C0);

  return 0;
}

void sub_252BFA88C(uint64_t a1, id a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  switch(a1)
  {
    case 2:
    case 11:
      if ([a2 type] != 2)
      {
        goto LABEL_35;
      }

      if (qword_27F53F3D0 != -1)
      {
        swift_once();
      }

      v34 = off_27F543EB8;
      if (!*(off_27F543EB8 + 2) || (v35 = sub_252A488EC(), (v36 & 1) == 0))
      {
LABEL_35:
        if (qword_27F53F4B8 != -1)
        {
          swift_once();
        }

        v38 = sub_252E36AD4();
        __swift_project_value_buffer(v38, qword_27F544CD0);
        sub_252E379F4();

        *(&v187 + 1) = 0x8000000252E89780;
        v39 = HomeAttributeType.description.getter(a1);
        MEMORY[0x2530AD570](v39);

        v18 = 0xD00000000000002BLL;
        v19 = 0x8000000252E89780;
        v20 = 351;
        goto LABEL_154;
      }

      v11 = *(v34[7] + 16 * v35);
      if (a3 != 1)
      {
        goto LABEL_112;
      }

      [a2 doubleValue];
      if (v37 == 0.0)
      {
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543EE8, &qword_252E52310);
        v153 = swift_allocObject();
        *(v153 + 16) = xmmword_252E3C3C0;
        *(v153 + 32) = 1;
        *(v153 + 40) = 0;
        *(v153 + 48) = 0;
        *(v153 + 56) = 0;
        *(v153 + 64) = -108;
        [a2 doubleValue];
        v190 = v154;
        v11(&v187, &v190);

        v155 = v189;
        v156 = v188;
        *(v153 + 72) = v187;
        *(v153 + 88) = v156;
        *(v153 + 104) = v155;
      }

      return;
    case 5:
      if ([a2 type] != 3 || (v90 = objc_msgSend(a2, sel_stringValue)) == 0 || (v91 = v90, v92 = sub_252E36F34(), v94 = v93, v91, v95 = sub_252C5C088(v92, v94), (v97 & 1) != 0))
      {
        if (qword_27F53F4B8 != -1)
        {
          swift_once();
        }

        v98 = sub_252E36AD4();
        __swift_project_value_buffer(v98, qword_27F544CD0);
        sub_252E379F4();

        *(&v187 + 1) = 0x8000000252E897B0;
        v99 = HomeAttributeType.description.getter(5);
        MEMORY[0x2530AD570](v99);

        v18 = 0xD00000000000002BLL;
        v19 = 0x8000000252E897B0;
        v20 = 358;
        goto LABEL_154;
      }

      v133 = v95;
      v134 = v96;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543EE8, &qword_252E52310);
      v135 = swift_allocObject();
      *(v135 + 16) = xmmword_252E3C3C0;
      *(v135 + 32) = 1;
      *(v135 + 40) = 0;
      *(v135 + 48) = 0;
      *(v135 + 56) = 0;
      *(v135 + 64) = -108;
      *(v135 + 72) = v133;
      *(v135 + 80) = v134;
      *(v135 + 88) = 0;
      *(v135 + 96) = 0;
      *(v135 + 104) = 48;
      return;
    case 8:
      v53 = a6;
      if ([a2 type] != 1)
      {
        if (qword_27F53F4B8 != -1)
        {
          swift_once();
        }

        v116 = sub_252E36AD4();
        __swift_project_value_buffer(v116, qword_27F544CD0);
        sub_252E379F4();

        *(&v187 + 1) = 0x8000000252E89680;
        v117 = HomeAttributeType.description.getter(8);
        MEMORY[0x2530AD570](v117);

        v18 = 0xD00000000000002FLL;
        v19 = 0x8000000252E89680;
        v20 = 425;
        goto LABEL_154;
      }

      v54 = [a2 BOOLValue];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543EE8, &qword_252E52310);
      v55 = swift_allocObject();
      *(v55 + 16) = xmmword_252E3C290;
      if (v53)
      {
        if (v54)
        {
          *(v55 + 32) = 1;
          *(v55 + 40) = 0;
          *(v55 + 48) = 0;
          *(v55 + 56) = 0;
        }

        else
        {
          *(v55 + 32) = 0u;
          *(v55 + 48) = 0u;
        }

        *(v55 + 64) = 72;
      }

      else
      {
        if (v54)
        {
          *(v55 + 32) = 1;
          *(v55 + 40) = 0;
          *(v55 + 48) = 0;
          *(v55 + 56) = 0;
        }

        else
        {
          *(v55 + 32) = 0u;
          *(v55 + 48) = 0u;
        }

        *(v55 + 64) = -60;
      }

      return;
    case 9:
      v68 = a6;
      if ([a2 type] != 4)
      {
        if (qword_27F53F4B8 != -1)
        {
          swift_once();
        }

        v120 = sub_252E36AD4();
        __swift_project_value_buffer(v120, qword_27F544CD0);
        *(&v187 + 1) = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD000000000000031, 0x8000000252E89850);
        v121 = HomeAttributeType.description.getter(9);
        MEMORY[0x2530AD570](v121);

        v18 = 0;
        v19 = 0xE000000000000000;
        v20 = 311;
        goto LABEL_154;
      }

      if (v68)
      {
        if (qword_27F53F3E8 != -1)
        {
          swift_once();
        }

        v69 = off_27F543ED0;
        if (*(off_27F543ED0 + 2))
        {
          v70 = sub_252A488EC();
          if (v71)
          {
            goto LABEL_78;
          }
        }
      }

      if (qword_27F53F3E0 != -1)
      {
        goto LABEL_207;
      }

      goto LABEL_76;
    case 10:
      v56 = a6;
      if ([a2 type] == 1)
      {
        v57 = [a2 BOOLValue];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543EE8, &qword_252E52310);
        v58 = swift_allocObject();
        *(v58 + 16) = xmmword_252E3C290;
        if (v56)
        {
          if (v57)
          {
            *(v58 + 32) = 0u;
            *(v58 + 48) = 0u;
          }

          else
          {
            *(v58 + 32) = 1;
            *(v58 + 40) = 0;
            *(v58 + 48) = 0;
            *(v58 + 56) = 0;
          }

          *(v58 + 64) = 60;
        }

        else
        {
          if (v57)
          {
            *(v58 + 32) = 0u;
            *(v58 + 48) = 0u;
          }

          else
          {
            *(v58 + 32) = 1;
            *(v58 + 40) = 0;
            *(v58 + 48) = 0;
            *(v58 + 56) = 0;
          }

          *(v58 + 64) = -68;
        }

        return;
      }

      if (qword_27F53F4B8 != -1)
      {
        swift_once();
      }

      v118 = sub_252E36AD4();
      __swift_project_value_buffer(v118, qword_27F544CD0);
      *(&v187 + 1) = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000034, 0x8000000252E895C0);
      v119 = HomeAttributeType.description.getter(10);
      MEMORY[0x2530AD570](v119);

      v18 = 0;
      v19 = 0xE000000000000000;
      v20 = 451;
      goto LABEL_154;
    case 12:
      if ([a2 type] == 3)
      {
        v100 = [a2 stringValue];
        if (v100)
        {
          v101 = v100;
          sub_252E36F34();

          v102 = sub_252E37B74();

          if (v102 <= 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543EE8, &qword_252E52310);
            v103 = swift_allocObject();
            *(v103 + 16) = xmmword_252E3C3C0;
            *(v103 + 32) = 1;
            *(v103 + 40) = 0;
            *(v103 + 48) = 0;
            *(v103 + 56) = 0;
            *(v103 + 64) = -108;
            *(v103 + 72) = v102;
            *(v103 + 80) = 0;
            *(v103 + 88) = 0;
            *(v103 + 96) = 0;
            *(v103 + 104) = -100;
            return;
          }
        }
      }

      if (qword_27F53F4B8 != -1)
      {
        swift_once();
      }

      v104 = sub_252E36AD4();
      __swift_project_value_buffer(v104, qword_27F544CD0);
      *(&v187 + 1) = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD00000000000003BLL, 0x8000000252E89580);
      v105 = HomeAttributeType.description.getter(12);
      MEMORY[0x2530AD570](v105);

      v18 = 0;
      v19 = 0xE000000000000000;
      v20 = 461;
      goto LABEL_154;
    case 13:
      v45 = a6;
      if ([a2 type] == 3)
      {
        v46 = [a2 stringValue];
        if (v46 && (v47 = v46, v48 = sub_252E36F34(), v50 = v49, v47, v51 = sub_252A81380(v48, v50), , v51 != 5))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543EE8, &qword_252E52310);
          v131 = swift_allocObject();
          *(v131 + 16) = xmmword_252E3C290;
          *(v131 + 32) = v51;
          *(v131 + 40) = 0;
          *(v131 + 48) = 0;
          *(v131 + 56) = 0;
          if (v45)
          {
            v132 = 80;
          }

          else
          {
            v132 = -52;
          }

          *(v131 + 64) = v132;
        }

        else
        {
          if (qword_27F53F4B8 != -1)
          {
            swift_once();
          }

          v52 = sub_252E36AD4();
          __swift_project_value_buffer(v52, qword_27F544CD0);
          sub_252CC4050(0xD000000000000031, 0x8000000252E89640, 0xD000000000000075, 0x8000000252E891C0, 0xD000000000000047, 0x8000000252E894F0, 437);
        }

        return;
      }

      if (qword_27F53F4B8 != -1)
      {
        swift_once();
      }

      v114 = sub_252E36AD4();
      __swift_project_value_buffer(v114, qword_27F544CD0);
      *(&v187 + 1) = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD00000000000003ELL, 0x8000000252E89600);
      v115 = HomeAttributeType.description.getter(13);
      MEMORY[0x2530AD570](v115);

      v18 = 0;
      v19 = 0xE000000000000000;
      v20 = 440;
      goto LABEL_154;
    case 14:
    case 15:
      if ([a2 type] != 3)
      {
        goto LABEL_151;
      }

      v23 = [a2 stringValue];
      if (!v23)
      {
        goto LABEL_151;
      }

      v24 = v23;
      sub_252E36F34();

      if (qword_27F53F308 != -1)
      {
        swift_once();
      }

      v25 = off_27F542288;
      v26 = sub_252E36FA4();
      if (v25[2])
      {
        v28 = sub_252A44A10(v26, v27);
        v30 = v29;

        if (v30)
        {
          v31 = *(v25[7] + v28);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543EE8, &qword_252E52310);
          v32 = swift_allocObject();
          *(v32 + 16) = xmmword_252E3C290;
          *(v32 + 32) = v31;
          *(v32 + 40) = 0;
          *(v32 + 48) = 0;
          *(v32 + 56) = 0;
          *(v32 + 64) = -48;
          return;
        }
      }

      else
      {
      }

LABEL_151:
      if (qword_27F53F4B8 != -1)
      {
        swift_once();
      }

      v129 = sub_252E36AD4();
      __swift_project_value_buffer(v129, qword_27F544CD0);
      *(&v187 + 1) = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000033, 0x8000000252E89540);
      v130 = HomeAttributeType.description.getter(a1);
      MEMORY[0x2530AD570](v130);

      v18 = 0;
      v19 = 0xE000000000000000;
      v20 = 470;
      goto LABEL_154;
    case 20:
      v59 = [a2 stringValue];
      if (!v59)
      {
        goto LABEL_135;
      }

      v60 = v59;
      v61 = sub_252E36F34();
      v63 = v62;

      v64 = sub_252DB4EB4(v61, v63);
      if (v64 <= 1)
      {
        if (v64)
        {
          v65 = 3;
        }

        else
        {
          v65 = 2;
        }

        goto LABEL_134;
      }

      if (v64 == 2)
      {
        v65 = 4;
LABEL_134:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543EE8, &qword_252E52310);
        v124 = swift_allocObject();
        *(v124 + 16) = xmmword_252E3C290;
        *(v124 + 32) = v65;
        *(v124 + 40) = 0;
        *(v124 + 48) = 0;
        *(v124 + 56) = 0;
        *(v124 + 64) = 96;
        return;
      }

LABEL_135:
      if (qword_27F53F4B8 != -1)
      {
        swift_once();
      }

      v125 = sub_252E36AD4();
      __swift_project_value_buffer(v125, qword_27F544CD0);
      *(&v187 + 1) = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD00000000000003FLL, 0x8000000252E89740);
      v126 = HomeAttributeType.description.getter(20);
      MEMORY[0x2530AD570](v126);

      v18 = 0;
      v19 = 0xE000000000000000;
      v20 = 375;
      goto LABEL_154;
    case 22:
    case 46:
    case 66:
      if ([a2 type] == 1)
      {
        if (qword_27F53F3D8 != -1)
        {
          swift_once();
        }

        v8 = off_27F543EC0;
        if (*(off_27F543EC0 + 2))
        {
          v9 = sub_252A488EC();
          if (v10)
          {
            goto LABEL_7;
          }
        }
      }

      if (qword_27F53F4B8 != -1)
      {
        swift_once();
      }

      v21 = sub_252E36AD4();
      __swift_project_value_buffer(v21, qword_27F544CD0);
      *(&v187 + 1) = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000031, 0x8000000252E89810);
      v22 = HomeAttributeType.description.getter(a1);
      MEMORY[0x2530AD570](v22);

      v18 = 0;
      v19 = 0xE000000000000000;
      v20 = 320;
      goto LABEL_154;
    case 23:
    case 24:
    case 50:
      if ([a2 type] != 2)
      {
        goto LABEL_14;
      }

      if (qword_27F53F3D0 != -1)
      {
        swift_once();
      }

      v13 = off_27F543EB8;
      if (!*(off_27F543EB8 + 2) || (v14 = sub_252A488EC(), (v15 & 1) == 0))
      {
LABEL_14:
        if (qword_27F53F4B8 != -1)
        {
          swift_once();
        }

        v16 = sub_252E36AD4();
        __swift_project_value_buffer(v16, qword_27F544CD0);
        sub_252E379F4();

        *(&v187 + 1) = 0x8000000252E89780;
        v17 = HomeAttributeType.description.getter(a1);
        MEMORY[0x2530AD570](v17);

        v18 = 0xD00000000000002BLL;
        v19 = 0x8000000252E89780;
        v20 = 367;
        goto LABEL_154;
      }

      v11 = *(v13[7] + 16 * v14);
LABEL_112:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543EE8, &qword_252E52310);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_252E3C290;

      [a2 doubleValue];
      v190 = v106;
      goto LABEL_113;
    case 27:
      v40 = a5;
      if ([a2 type] == 1)
      {
        if ((v40 & 1) == 0)
        {
          if (a4 == 3 || a4 == 29)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543EE8, &qword_252E52310);
            v136 = swift_allocObject();
            *(v136 + 16) = xmmword_252E3C290;
            v137 = [a2 BOOLValue] == 0;
            v138 = 1;
            if (!v137)
            {
              v138 = 2;
            }

            *(v136 + 32) = v138;
            *(v136 + 40) = 0;
            *(v136 + 48) = 0;
            *(v136 + 56) = 0;
            *(v136 + 64) = -48;
            return;
          }

          if (a4 == 30)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543EE8, &qword_252E52310);
            v128 = swift_allocObject();
            *(v128 + 16) = xmmword_252E3C290;
            *(v128 + 32) = [a2 BOOLValue];
            *(v128 + 40) = 0;
            *(v128 + 48) = 0;
            *(v128 + 56) = 0;
            *(v128 + 64) = 96;
            return;
          }
        }

        if (qword_27F53F3D8 != -1)
        {
          swift_once();
        }

        v8 = off_27F543EC0;
        if (*(off_27F543EC0 + 2))
        {
          v9 = sub_252A488EC();
          if (v42)
          {
LABEL_7:
            v11 = *(v8[7] + 16 * v9);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543EE8, &qword_252E52310);
            v12 = swift_allocObject();
            *(v12 + 16) = xmmword_252E3C290;

            LOBYTE(v190) = [a2 BOOLValue];
            goto LABEL_113;
          }
        }

        if (qword_27F53F4B8 != -1)
        {
          swift_once();
        }

        v43 = sub_252E36AD4();
        __swift_project_value_buffer(v43, qword_27F544CD0);
        *(&v187 + 1) = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD000000000000031, 0x8000000252E89810);
        v44 = HomeAttributeType.description.getter(27);
        MEMORY[0x2530AD570](v44);

        v18 = 0;
        v19 = 0xE000000000000000;
        v20 = 333;
      }

      else
      {
        if (qword_27F53F4B8 != -1)
        {
          swift_once();
        }

        v109 = sub_252E36AD4();
        __swift_project_value_buffer(v109, qword_27F544CD0);
        sub_252E379F4();

        *(&v187 + 1) = 0x8000000252E897E0;
        v110 = [a2 description];
        v111 = sub_252E36F34();
        v113 = v112;

        MEMORY[0x2530AD570](v111, v113);

        v18 = 0xD000000000000020;
        v19 = 0x8000000252E897E0;
        v20 = 337;
      }

      goto LABEL_154;
    case 67:
      if ([a2 type] != 8)
      {
        if (qword_27F53F4B8 != -1)
        {
          swift_once();
        }

        v122 = sub_252E36AD4();
        __swift_project_value_buffer(v122, qword_27F544CD0);
        *(&v187 + 1) = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD000000000000031, 0x8000000252E896B0);
        v123 = HomeAttributeType.description.getter(67);
        MEMORY[0x2530AD570](v123);

        v18 = 0;
        v19 = 0xE000000000000000;
        v20 = 414;
        goto LABEL_154;
      }

      v73 = &off_279711000;
      v74 = [a2 cleaningJob];
      if (!v74)
      {
        goto LABEL_173;
      }

      v75 = v74;
      v76 = [v74 cleanModes];

      v77 = sub_252E37264();
      v78 = *(v77 + 16);
      if (v78)
      {
        v186 = MEMORY[0x277D84F90];
        v79 = 32;
        do
        {
          v81 = sub_252E289F0(*(v77 + v79));
          if (v82)
          {
            v83 = 0;
          }

          else
          {
            v83 = v81;
          }

          if (qword_27F53F6E8 != -1)
          {
            swift_once();
          }

          v84 = off_27F545908;
          if (*(off_27F545908 + 2) && (v85 = sub_252A488EC(), (v86 & 1) != 0))
          {
            v87 = *(v84[7] + v85);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v186 = sub_2529F80F0(0, *(v186 + 2) + 1, 1, v186);
            }

            v89 = *(v186 + 2);
            v88 = *(v186 + 3);
            if (v89 >= v88 >> 1)
            {
              v186 = sub_2529F80F0((v88 > 1), v89 + 1, 1, v186);
            }

            *(v186 + 2) = v89 + 1;
            v186[v89 + 32] = v87;
          }

          else
          {
            if (qword_27F53F4B8 != -1)
            {
              swift_once();
            }

            v80 = sub_252E36AD4();
            __swift_project_value_buffer(v80, qword_27F544CD0);
            *&v187 = 0;
            *(&v187 + 1) = 0xE000000000000000;
            sub_252E379F4();
            MEMORY[0x2530AD570](0xD00000000000003DLL, 0x8000000252E6E290);
            v190 = v83;
            sub_252E37AE4();
            sub_252CC4050(0, 0xE000000000000000, 0xD000000000000079, 0x8000000252E6E2D0, 0xD000000000000013, 0x8000000252E6E350, 65);
          }

          v79 += 8;
          --v78;
        }

        while (v78);

        v73 = &off_279711000;
      }

      else
      {

LABEL_173:
        v186 = MEMORY[0x277D84F90];
      }

      v139 = [a2 v73[207]];
      if (!v139)
      {

        if (qword_27F53F4B8 != -1)
        {
          swift_once();
        }

        v146 = sub_252E36AD4();
        __swift_project_value_buffer(v146, qword_27F544CD0);
        sub_252E379F4();

        *&v187 = 0xD000000000000016;
        *(&v187 + 1) = 0x8000000252E89720;
        v190 = [a2 v73[207]];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5433C8, &qword_252E4B818);
        v147 = sub_252E36F94();
        MEMORY[0x2530AD570](v147);

        MEMORY[0x2530AD570](0x74746120726F6620, 0xEF20657475626972);
        v148 = HomeAttributeType.description.getter(67);
        MEMORY[0x2530AD570](v148);

        v18 = 0xD000000000000016;
        v19 = 0x8000000252E89720;
        v20 = 411;
        goto LABEL_154;
      }

      v140 = v139;
      v141 = [v139 runState];

      v142 = sub_252D375A8(v141);
      if (v142 != 3)
      {
        v149 = v142;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543EE8, &qword_252E52310);
        v150 = swift_allocObject();
        *(v150 + 16) = xmmword_252E3C290;
        *(v150 + 32) = v149;
        *(v150 + 40) = 0;
        *(v150 + 48) = 0;
        *(v150 + 56) = 0;
        *(v150 + 64) = -88;
        return;
      }

      v143 = sub_252D3772C(v141);
      if (v143 == 16)
      {

        if (qword_27F53F4B8 != -1)
        {
          swift_once();
        }

        v144 = sub_252E36AD4();
        __swift_project_value_buffer(v144, qword_27F544CD0);
        sub_252E379F4();

        *&v187 = 0xD00000000000002BLL;
        *(&v187 + 1) = 0x8000000252E896F0;
        v190 = [a2 v73[207]];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5433C8, &qword_252E4B818);
        v145 = sub_252E36F94();
        MEMORY[0x2530AD570](v145);

        v18 = 0xD00000000000002BLL;
        v19 = 0x8000000252E896F0;
        v20 = 408;
LABEL_154:
        sub_252CC4050(v18, v19, 0xD000000000000075, 0x8000000252E891C0, 0xD000000000000047, 0x8000000252E894F0, v20);

        return;
      }

      v151 = v143;
      if (sub_252A7D814(v143) == 0x676E696E6E7572 && v152 == 0xE700000000000000)
      {
      }

      else
      {
        v157 = sub_252E37DB4();

        if ((v157 & 1) == 0)
        {
          goto LABEL_228;
        }
      }

      v158 = [a2 v73[207]];
      if (!v158)
      {
        goto LABEL_222;
      }

      v159 = v158;
      v160 = [v158 targetAreas];

      if (!v160)
      {
        goto LABEL_222;
      }

      type metadata accessor for HomeAttributeTargetArea();
      v161 = sub_252E37264();

      if (!(v161 >> 62))
      {
        v162 = *((v161 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v185 = v151;
        if (v162)
        {
          goto LABEL_193;
        }

        goto LABEL_209;
      }

      v162 = sub_252E378C4();
      v185 = v151;
      if (!v162)
      {
LABEL_209:
        v164 = MEMORY[0x277D84F90];
LABEL_210:

        v172 = *(v164 + 2);
        if (v172)
        {
          v173 = MEMORY[0x277D84F90];
          v174 = 32;
          while (1)
          {
            v175 = *&v164[v174];
            if ((*&v175 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              break;
            }

            if (v175 <= -9.22337204e18)
            {
              goto LABEL_233;
            }

            if (v175 >= 9.22337204e18)
            {
              goto LABEL_234;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v173 = sub_2529F8104(0, *(v173 + 2) + 1, 1, v173);
            }

            v177 = *(v173 + 2);
            v176 = *(v173 + 3);
            if (v177 >= v176 >> 1)
            {
              v173 = sub_2529F8104((v176 > 1), v177 + 1, 1, v173);
            }

            *(v173 + 2) = v177 + 1;
            *&v173[8 * v177 + 32] = v175;
            v174 += 8;
            if (!--v172)
            {

              v178 = 1;
              v151 = v185;
LABEL_231:
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543EE8, &qword_252E52310);
              v184 = swift_allocObject();
              *(v184 + 16) = xmmword_252E3C290;
              *(v184 + 32) = v151;
              *(v184 + 40) = v186;
              *(v184 + 48) = v173;
              *(v184 + 56) = v172;
              *(v184 + 64) = v178 | 0xA4;
              return;
            }
          }

          __break(1u);
LABEL_233:
          __break(1u);
LABEL_234:
          __break(1u);
          goto LABEL_235;
        }

        v73 = &off_279711000;
        v151 = v185;
LABEL_222:
        v179 = [a2 v73[207]];
        if (v179)
        {
          v180 = v179;
          v173 = [v179 targetMap];

          if (v173)
          {
            [v173 mapID];
            v182 = v181;
            v183 = v181;

            if ((*&v183 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              if (v182 > -9.22337204e18)
              {
                if (v182 < 9.22337204e18)
                {
                  v178 = 0;
                  v173 = 0;
                  v172 = v182;
                  goto LABEL_231;
                }

                goto LABEL_237;
              }

LABEL_236:
              __break(1u);
LABEL_237:
              __break(1u);
              return;
            }

LABEL_235:
            __break(1u);
            goto LABEL_236;
          }

          v172 = 0;
LABEL_230:
          v178 = 1;
          goto LABEL_231;
        }

LABEL_228:
        v172 = 0;
        v173 = 0;
        goto LABEL_230;
      }

LABEL_193:
      v163 = 0;
      v164 = MEMORY[0x277D84F90];
      while (1)
      {
        if ((v161 & 0xC000000000000001) != 0)
        {
          v165 = MEMORY[0x2530ADF00](v163, v161);
        }

        else
        {
          if (v163 >= *((v161 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_206;
          }

          v165 = *(v161 + 8 * v163 + 32);
        }

        v166 = v165;
        v167 = v163 + 1;
        if (__OFADD__(v163, 1))
        {
          break;
        }

        [v165 areaID];
        v169 = v168;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v164 = sub_2529F7D44(0, *(v164 + 2) + 1, 1, v164);
        }

        v171 = *(v164 + 2);
        v170 = *(v164 + 3);
        if (v171 >= v170 >> 1)
        {
          v164 = sub_2529F7D44((v170 > 1), v171 + 1, 1, v164);
        }

        *(v164 + 2) = v171 + 1;
        *&v164[8 * v171 + 32] = v169;
        ++v163;
        if (v167 == v162)
        {
          goto LABEL_210;
        }
      }

      __break(1u);
LABEL_206:
      __break(1u);
LABEL_207:
      swift_once();
LABEL_76:
      v69 = off_27F543EC8;
      if (*(off_27F543EC8 + 2) && (v70 = sub_252A488EC(), (v72 & 1) != 0))
      {
LABEL_78:
        v11 = *(v69[7] + 16 * v70);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543EE8, &qword_252E52310);
        v12 = swift_allocObject();
        *(v12 + 16) = xmmword_252E3C290;

        v190 = [a2 integerValue];
LABEL_113:
        v11(&v187, &v190);

        v107 = v189;
        v108 = v188;
        *(v12 + 32) = v187;
        *(v12 + 48) = v108;
        *(v12 + 64) = v107;
      }

      else
      {
        if (qword_27F53F4B8 != -1)
        {
          swift_once();
        }

        v127 = sub_252E36AD4();
        __swift_project_value_buffer(v127, qword_27F544CD0);
        sub_252CC4050(0xD000000000000025, 0x8000000252E89890, 0xD000000000000075, 0x8000000252E891C0, 0xD000000000000047, 0x8000000252E894F0, 307);
      }

      return;
    default:
      if (qword_27F53F4B8 != -1)
      {
        swift_once();
      }

      v66 = sub_252E36AD4();
      __swift_project_value_buffer(v66, qword_27F544CD0);
      *(&v187 + 1) = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000034, 0x8000000252E894B0);
      v67 = HomeAttributeType.description.getter(a1);
      MEMORY[0x2530AD570](v67);

      v18 = 0;
      v19 = 0xE000000000000000;
      v20 = 474;
      goto LABEL_154;
  }
}

uint64_t sub_252BFCBC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543EF0, &qword_252E52318);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_252BFCC2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v21 - v8;
  if ((a1 != 0x6974616D6F747561 || a2 != 0xEB00000000736E6FLL) && (sub_252E37DB4() & 1) == 0)
  {
    if (a1 == 0x746E756F63 && a2 == 0xE500000000000000 || (sub_252E37DB4() & 1) != 0)
    {
      v12 = *(sub_252BF6CBC() + 2);

      *(a3 + 24) = MEMORY[0x277D839F8];
      *a3 = v12;
      return result;
    }

    if (a1 == 0x73656D616ELL && a2 == 0xE500000000000000 || (sub_252E37DB4() & 1) != 0)
    {
      v13 = sub_252BF6CBC();
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540600, &qword_252E3CF90);
      *(a3 + 24) = result;
      *a3 = v13;
      return result;
    }

    if (a1 == 0x656D6F48656D6173 && a2 == 0xE800000000000000 || (sub_252E37DB4() & 1) != 0)
    {
      sub_252BF7010(v9);
      v14 = sub_252E36324();
      v15 = *(v14 - 8);
      if ((*(v15 + 48))(v9, 1, v14) != 1)
      {
        *(a3 + 24) = v14;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
        return (*(v15 + 32))(boxed_opaque_existential_0, v9, v14);
      }

      result = sub_252938BBC(v9);
LABEL_20:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    if (a1 == 0x6D61536E49657261 && a2 == 0xED0000656D6F4865 || (sub_252E37DB4() & 1) != 0)
    {
      result = sub_252BF714C();
      *(a3 + 24) = MEMORY[0x277D839B0];
      *a3 = result & 1;
      return result;
    }

    if (a1 == 0xD000000000000010 && 0x8000000252E899C0 == a2 || (sub_252E37DB4() & 1) != 0)
    {
      v17 = *(sub_252BF6CBC() + 2);

      v18 = MEMORY[0x277D839B0];
      v19 = v17 == 1;
    }

    else
    {
      if (a1 != 0xD000000000000027 || 0x8000000252E899E0 != a2)
      {
        result = sub_252E37DB4();
        if ((result & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      v20 = *(sub_252BF6CBC() + 2);

      v18 = MEMORY[0x277D839B0];
      v19 = (v20 - 2) < 4;
    }

    *(a3 + 24) = v18;
    *a3 = v19;
    return result;
  }

  v10 = *(v3 + 24);
  *(a3 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543F20, &qword_252E52470);
  *a3 = v10;
}

uint64_t sub_252BFD01C()
{
  sub_252E37EC4();
  sub_252E37044();
  return sub_252E37F14();
}

uint64_t sub_252BFD098(uint64_t a1)
{
  sub_252E37EC4();
  sub_252E37044();
  return sub_252E37F14();
}

uint64_t sub_252BFD0F0@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_252E37B74();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_252BFD188@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_252E37B74();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_252BFD1E0(uint64_t a1)
{
  v2 = sub_252BFD780();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252BFD21C(uint64_t a1)
{
  v2 = sub_252BFD780();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252BFD27C(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543F38, &qword_252E52478);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252BFD780();
  sub_252E37F84();
  v9[1] = *(v2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543F20, &qword_252E52470);
  sub_252BFD7D4(&qword_27F543F40, &qword_27F543F48, byte_252E61E10, MEMORY[0x277D83948]);
  sub_252E37D54();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_252BFD438(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543F10, &qword_252E52468);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  *(v1 + 16) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252BFD780();
  sub_252E37F74();
  if (v2)
  {

    type metadata accessor for HomeAutomationAutomations();
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543F20, &qword_252E52470);
    sub_252BFD7D4(&qword_27F543F28, &qword_27F543F30, aU_25, MEMORY[0x277D83978]);
    sub_252E37C64();
    (*(v5 + 8))(v7, v4);
    *(v1 + 24) = v9[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_252BFD674@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for HomeAutomationAutomations();
  v5 = swift_allocObject();
  result = sub_252BFD438(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t sub_252BFD780()
{
  result = qword_27F543F18;
  if (!qword_27F543F18)
  {
    result = swift_getWitnessTable(byte_252E5257C, &type metadata for HomeAutomationAutomations.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F543F18);
  }

  return result;
}

uint64_t sub_252BFD7D4(unint64_t *a1, unint64_t *a2, const char *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F543F20, &qword_252E52470);
    v10 = sub_252BFD874(a2, 255, type metadata accessor for HomeAutomationAutomation, a3);
    result = swift_getWitnessTable(a4, v9, &v10);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_252BFD874(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = a3(a2);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_252BFD8D0()
{
  result = qword_27F543F50;
  if (!qword_27F543F50)
  {
    result = swift_getWitnessTable(aU_12, &type metadata for HomeAutomationAutomations.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F543F50);
  }

  return result;
}

unint64_t sub_252BFD928()
{
  result = qword_27F543F58;
  if (!qword_27F543F58)
  {
    result = swift_getWitnessTable(byte_252E5248C, &type metadata for HomeAutomationAutomations.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F543F58);
  }

  return result;
}

unint64_t sub_252BFD980()
{
  result = qword_27F543F60;
  if (!qword_27F543F60)
  {
    result = swift_getWitnessTable(asc_252E524B4, &type metadata for HomeAutomationAutomations.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F543F60);
  }

  return result;
}

uint64_t sub_252BFD9D4(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_252E3C3C0;
  strcpy((v4 + 32), "intentContext");
  *(v4 + 46) = -4864;
  if (a1)
  {
    v5 = type metadata accessor for HomeAutomationIntentContext(0);
    v6 = a1;
  }

  else
  {
    v6 = 0;
    v5 = 0;
    *(v4 + 56) = 0;
    *(v4 + 64) = 0;
  }

  *(v4 + 48) = v6;
  *(v4 + 72) = v5;
  *(v4 + 80) = 0x65736E6F70736572;
  *(v4 + 88) = 0xE900000000000073;
  if (a2)
  {
    v7 = type metadata accessor for HomeAutomationEntityResponses();
    v8 = a2;
  }

  else
  {
    v8 = 0;
    v7 = 0;
    *(v4 + 104) = 0;
    *(v4 + 112) = 0;
  }

  *(v4 + 96) = v8;
  *(v4 + 120) = v7;

  sub_252E362B4();
}

uint64_t sub_252BFDB14(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_252E3C3C0;
  strcpy((v4 + 32), "intentContext");
  *(v4 + 46) = -4864;
  if (a1)
  {
    v5 = type metadata accessor for HomeAutomationIntentContext(0);
    v6 = a1;
  }

  else
  {
    v6 = 0;
    v5 = 0;
    *(v4 + 56) = 0;
    *(v4 + 64) = 0;
  }

  *(v4 + 48) = v6;
  *(v4 + 72) = v5;
  *(v4 + 80) = 0x65736E6F70736572;
  *(v4 + 88) = 0xE900000000000073;
  if (a2)
  {
    v7 = type metadata accessor for HomeAutomationEntityResponses();
    v8 = a2;
  }

  else
  {
    v8 = 0;
    v7 = 0;
    *(v4 + 104) = 0;
    *(v4 + 112) = 0;
  }

  *(v4 + 96) = v8;
  *(v4 + 120) = v7;

  sub_252E362B4();
}

uint64_t sub_252BFDC54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_252E3C3C0;
  *(v7 + 32) = 0xD000000000000010;
  *(v7 + 40) = 0x8000000252E89B30;
  sub_252938414(a1, v6, &qword_27F540298, &unk_252E3C270);
  v8 = sub_252E36324();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v6, 1, v8) == 1)
  {
    sub_25293847C(v6, &qword_27F540298, &unk_252E3C270);
    *(v7 + 48) = 0u;
    *(v7 + 64) = 0u;
  }

  else
  {
    *(v7 + 72) = v8;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v7 + 48));
    (*(v9 + 32))(boxed_opaque_existential_0, v6, v8);
  }

  *(v7 + 80) = 0xD000000000000011;
  *(v7 + 88) = 0x8000000252E764A0;
  *(v7 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540600, &qword_252E3CF90);
  *(v7 + 96) = a2;

  sub_252E362B4();
}

uint64_t sub_252BFDE5C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_252E3C3C0;
  *(v4 + 32) = 0x6974616D6F747561;
  *(v4 + 40) = 0xEB00000000736E6FLL;
  if (a1)
  {
    v5 = type metadata accessor for HomeAutomationAutomations();
    v6 = a1;
  }

  else
  {
    v6 = 0;
    v5 = 0;
    *(v4 + 56) = 0;
    *(v4 + 64) = 0;
  }

  *(v4 + 48) = v6;
  *(v4 + 72) = v5;
  strcpy((v4 + 80), "intentContext");
  *(v4 + 94) = -4864;
  if (a2)
  {
    v7 = type metadata accessor for HomeAutomationIntentContext(0);
    v8 = a2;
  }

  else
  {
    v8 = 0;
    v7 = 0;
    *(v4 + 104) = 0;
    *(v4 + 112) = 0;
  }

  *(v4 + 96) = v8;
  *(v4 + 120) = v7;

  sub_252E362B4();
}

uint64_t sub_252BFDFA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_252E3C3C0;
  *(v10 + 32) = 0x726F7463656C6573;
  *(v10 + 40) = 0xE800000000000000;
  sub_252938414(a1, v9, &qword_27F540298, &unk_252E3C270);
  v11 = sub_252E36324();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (v13(v9, 1, v11) == 1)
  {
    sub_25293847C(v9, &qword_27F540298, &unk_252E3C270);
    *(v10 + 48) = 0u;
    *(v10 + 64) = 0u;
  }

  else
  {
    *(v10 + 72) = v11;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v10 + 48));
    (*(v12 + 32))(boxed_opaque_existential_0, v9, v11);
  }

  *(v10 + 80) = 0x6E6F697461636F6CLL;
  *(v10 + 88) = 0xE800000000000000;
  sub_252938414(a2, v7, &qword_27F540298, &unk_252E3C270);
  if (v13(v7, 1, v11) == 1)
  {
    sub_25293847C(v7, &qword_27F540298, &unk_252E3C270);
    *(v10 + 96) = 0u;
    *(v10 + 112) = 0u;
  }

  else
  {
    *(v10 + 120) = v11;
    v15 = __swift_allocate_boxed_opaque_existential_0((v10 + 96));
    (*(v12 + 32))(v15, v7, v11);
  }

  sub_252E362B4();
}

uint64_t sub_252BFE230(char a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_252E3C3C0;
  *(v7 + 32) = 0x786F567369;
  *(v7 + 40) = 0xE500000000000000;
  v8 = MEMORY[0x277D839B0];
  *(v7 + 48) = a1;
  *(v7 + 72) = v8;
  strcpy((v7 + 80), "remoteHomeName");
  *(v7 + 95) = -18;
  sub_252938414(a2, v6, &qword_27F540298, &unk_252E3C270);
  v9 = sub_252E36324();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v6, 1, v9) == 1)
  {
    sub_25293847C(v6, &qword_27F540298, &unk_252E3C270);
    *(v7 + 96) = 0u;
    *(v7 + 112) = 0u;
  }

  else
  {
    *(v7 + 120) = v9;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v7 + 96));
    (*(v10 + 32))(boxed_opaque_existential_0, v6, v9);
  }

  sub_252E362B4();
}

uint64_t sub_252BFE424(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_252E3C3C0;
  strcpy((v4 + 32), "intentContext");
  *(v4 + 46) = -4864;
  if (a1)
  {
    v5 = type metadata accessor for HomeAutomationIntentContext(0);
    v6 = a1;
  }

  else
  {
    v6 = 0;
    v5 = 0;
    *(v4 + 56) = 0;
    *(v4 + 64) = 0;
  }

  *(v4 + 48) = v6;
  *(v4 + 72) = v5;
  *(v4 + 80) = 0x65736E6F70736572;
  *(v4 + 88) = 0xE900000000000073;
  if (a2)
  {
    v7 = type metadata accessor for HomeAutomationEntityResponses();
    v8 = a2;
  }

  else
  {
    v8 = 0;
    v7 = 0;
    *(v4 + 104) = 0;
    *(v4 + 112) = 0;
  }

  *(v4 + 96) = v8;
  *(v4 + 120) = v7;

  sub_252E362B4();
}

uint64_t sub_252BFE564(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_252E3C3C0;
  *(v4 + 32) = 0x6552797469746E65;
  *(v4 + 40) = 0xEF7365736E6F7073;
  if (a1)
  {
    v5 = type metadata accessor for HomeAutomationEntityResponses();
    v6 = a1;
  }

  else
  {
    v6 = 0;
    v5 = 0;
    *(v4 + 56) = 0;
    *(v4 + 64) = 0;
  }

  *(v4 + 48) = v6;
  *(v4 + 72) = v5;
  strcpy((v4 + 80), "intentContext");
  *(v4 + 94) = -4864;
  if (a2)
  {
    v7 = type metadata accessor for HomeAutomationIntentContext(0);
    v8 = a2;
  }

  else
  {
    v8 = 0;
    v7 = 0;
    *(v4 + 104) = 0;
    *(v4 + 112) = 0;
  }

  *(v4 + 96) = v8;
  *(v4 + 120) = v7;

  sub_252E362B4();
}

uint64_t HomeAutomationCATs.__allocating_init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_252E363B4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540370, &qword_252E3C450);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v14 - v10;
  swift_allocObject();
  sub_252938414(a1, v11, &qword_27F540370, &qword_252E3C450);
  (*(v6 + 16))(v8, a2, v5);
  v12 = sub_252E362A4();
  (*(v6 + 8))(a2, v5);
  sub_25293847C(a1, &qword_27F540370, &qword_252E3C450);
  return v12;
}

uint64_t HomeAutomationCATs.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_252E363B4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540370, &qword_252E3C450);
  MEMORY[0x28223BE20](v9 - 8);
  sub_252938414(a1, &v13 - v10, &qword_27F540370, &qword_252E3C450);
  (*(v6 + 16))(v8, a2, v5);
  v11 = sub_252E362A4();
  (*(v6 + 8))(a2, v5);
  sub_25293847C(a1, &qword_27F540370, &qword_252E3C450);
  return v11;
}

uint64_t HomeAutomationCATs.__deallocating_deinit()
{
  _s22HomeAutomationInternal0aB4CATsCfd_0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HomeAutomationCATs(uint64_t a1)
{
  result = qword_2814B0DF0;
  if (!qword_2814B0DF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL sub_252BFEAD0(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = v3 - 1;
    v6 = (a1 + 40);
    do
    {
      v7 = *v6;
      v11[0] = *(v6 - 1);
      v11[1] = v7;

      v8 = sub_252D92654(v11, a2);

      if (v2)
      {
        break;
      }

      v9 = v5-- == 0;
      v6 += 2;
    }

    while (!v8 && !v9);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

void sub_252BFEB74(void *a1, uint64_t a2)
{
  v3 = a1[19];
  if (*(v3 + 16) || (v3 = a1[21], *(v3 + 16)) || (v3 = a1[20], *(v3 + 16)))
  {
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v4 = MEMORY[0x277D84F90];
  v26 = MEMORY[0x277D84F90];
  v5 = *(a2 + 16);
  if (!v5)
  {
LABEL_37:
    if (*(v3 + 16))
    {
      sub_252BFEAD0(v3, &v26);
    }

    return;
  }

  v6 = (a2 + 32);
  while (1)
  {
    memcpy(__dst, v6, sizeof(__dst));
    memcpy(v24, v6, sizeof(v24));
    sub_2529353AC(__dst, v23);
    sub_252A13A70();
    if (v7)
    {
      break;
    }

    sub_252935408(__dst);
LABEL_8:
    v6 += 504;
    if (!--v5)
    {
      goto LABEL_37;
    }
  }

  v8 = __dst[41];
  v9 = *(__dst[41] + 16);
  v10 = *(v4 + 2);
  v11 = v10 + v9;
  if (!__OFADD__(v10, v9))
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v11 <= *(v4 + 3) >> 1)
    {
      if (*(v8 + 16))
      {
LABEL_14:
        if ((*(v4 + 3) >> 1) - *(v4 + 2) < v9)
        {
          goto LABEL_45;
        }

        swift_arrayInitWithCopy();

        v13 = *(v4 + 2);
        if (v9)
        {
          v14 = __OFADD__(v13, v9);
          v13 += v9;
          if (v14)
          {
            goto LABEL_47;
          }

          *(v4 + 2) = v13;
        }

        goto LABEL_24;
      }
    }

    else
    {
      if (v10 <= v11)
      {
        v15 = v10 + v9;
      }

      else
      {
        v15 = v10;
      }

      v4 = sub_2529F7A80(isUniquelyReferenced_nonNull_native, v15, 1, v4);
      if (*(v8 + 16))
      {
        goto LABEL_14;
      }
    }

    if (v9)
    {
      goto LABEL_42;
    }

    v13 = *(v4 + 2);
LABEL_24:
    v16 = __dst[42];
    v17 = *(__dst[42] + 16);
    v18 = v13 + v17;
    if (__OFADD__(v13, v17))
    {
      goto LABEL_43;
    }

    v19 = *(v4 + 3) >> 1;

    if (v19 < v18)
    {
      if (v13 <= v18)
      {
        v22 = v13 + v17;
      }

      else
      {
        v22 = v13;
      }

      v4 = sub_2529F7A80(1, v22, 1, v4);
      v13 = *(v4 + 2);
      v19 = *(v4 + 3) >> 1;
      if (*(v16 + 16))
      {
        goto LABEL_27;
      }
    }

    else if (v17)
    {
LABEL_27:
      if ((v19 - v13) < v17)
      {
        goto LABEL_46;
      }

      swift_arrayInitWithCopy();

      if (v17)
      {
        v20 = *(v4 + 2);
        v14 = __OFADD__(v20, v17);
        v21 = v20 + v17;
        if (v14)
        {
          goto LABEL_48;
        }

        *(v4 + 2) = v21;
      }

LABEL_36:
      sub_252935408(__dst);
      v26 = v4;
      goto LABEL_8;
    }

    if (v17)
    {
      goto LABEL_44;
    }

    goto LABEL_36;
  }

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
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
}

void *sub_252BFEE34(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = a1;
  v3 = a1[2];
  v4 = a1 + 4;
  v5 = MEMORY[0x277D84F90];
  v6 = a1 + 4;
  v7 = v3;
  while (1)
  {
    memcpy(v34, v6, sizeof(v34));
    memcpy(v35, v6, 0x1F8uLL);
    sub_2529353AC(v34, v33);
    if (sub_252A13FE0())
    {
      break;
    }

    memcpy(v33, v34, sizeof(v33));
    if (sub_252A13BEC())
    {
      break;
    }

    memcpy(v35, v34, 0x1F8uLL);
    v8 = sub_252A143D4();
    sub_252935408(v34);
    if (v8)
    {
      goto LABEL_9;
    }

    v6 += 63;
    if (!--v7)
    {
      return v5;
    }
  }

  sub_252935408(v34);
  while (1)
  {
LABEL_9:
    if (!v3)
    {
      __break(1u);
      goto LABEL_45;
    }

    memcpy(v35, v4, 0x1F8uLL);
    sub_252A13A70();
    if (v9)
    {
      break;
    }

    v4 += 63;
    if (!--v3)
    {
      return MEMORY[0x277D84F90];
    }
  }

  v10 = 0;
  v4 = MEMORY[0x277D84F90];
LABEL_14:
  v11 = &v2[63 * v10 + 4];
  v12 = v10;
  while (v12 < v1)
  {
    memcpy(v35, v11, 0x1F8uLL);
    v10 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      goto LABEL_46;
    }

    memcpy(v33, v11, sizeof(v33));
    sub_2529353AC(v35, v31);
    if (sub_252A13FE0() & 1) != 0 || (memcpy(v31, v35, sizeof(v31)), (sub_252A13BEC()) || (memcpy(v33, v35, sizeof(v33)), (sub_252A143D4()) || (memcpy(v33, v35, sizeof(v33)), sub_252A13A70(), (v13))
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = v4;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2529AA480(0, v4[2] + 1, 1);
        v4 = v32;
      }

      v16 = v4[2];
      v15 = v4[3];
      if (v16 >= v15 >> 1)
      {
        sub_2529AA480((v15 > 1), v16 + 1, 1);
        v4 = v32;
      }

      v4[2] = v16 + 1;
      memcpy(&v4[63 * v16 + 4], v35, 0x1F8uLL);
      if (v10 != v1)
      {
        goto LABEL_14;
      }

LABEL_28:
      if (qword_27F53F520 != -1)
      {
        goto LABEL_49;
      }

      goto LABEL_29;
    }

    sub_252935408(v35);
    ++v12;
    v11 += 504;
    if (v10 == v1)
    {
      goto LABEL_28;
    }
  }

LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  swift_once();
LABEL_29:
  v17 = sub_252E36AD4();
  __swift_project_value_buffer(v17, qword_27F544E08);
  v35[0] = 0;
  v35[1] = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000044, 0x8000000252E89BF0);
  v18 = MEMORY[0x2530AD730](v4, &type metadata for HomeAutomationIntent);
  MEMORY[0x2530AD570](v18);

  sub_252CC3D90(v35[0], v35[1], 0xD0000000000000A4, 0x8000000252E89C40);

  v19 = 0;
  v20 = v2 + 4;
  v5 = MEMORY[0x277D84F90];
  v30 = v2 + 4;
  do
  {
    v21 = &v20[63 * v19];
    v22 = v19;
    while (1)
    {
      if (v22 >= v1)
      {
        goto LABEL_47;
      }

      memcpy(v35, v21, 0x1F8uLL);
      v19 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        goto LABEL_48;
      }

      v23 = memcpy(v33, v21, sizeof(v33));
      MEMORY[0x28223BE20](v23);
      v2 = v29;
      v29[2] = v33;
      sub_2529353AC(v35, v31);
      if ((sub_2529EDA1C(sub_25295AD78, v29, v4) & 1) == 0)
      {
        break;
      }

      sub_252BFEB74(v35, v4);
      if ((v24 & 1) == 0)
      {
        break;
      }

      sub_252935408(v35);
      ++v22;
      v21 += 504;
      if (v19 == v1)
      {
        goto LABEL_42;
      }
    }

    v25 = swift_isUniquelyReferenced_nonNull_native();
    v32 = v5;
    if ((v25 & 1) == 0)
    {
      sub_2529AA480(0, v5[2] + 1, 1);
      v5 = v32;
    }

    v27 = v5[2];
    v26 = v5[3];
    v2 = (v27 + 1);
    if (v27 >= v26 >> 1)
    {
      sub_2529AA480((v26 > 1), v27 + 1, 1);
      v5 = v32;
    }

    v5[2] = v2;
    memcpy(&v5[63 * v27 + 4], v35, 0x1F8uLL);
    v20 = v30;
  }

  while (v19 != v1);
LABEL_42:

  return v5;
}

char *sub_252BFF350(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  v3 = v2 + 1;
  v4 = 360;
  while (--v3)
  {
    v5 = *(a1 + v4);
    v4 += 504;
    if (*(v5 + 16))
    {
      v6 = qword_27F53F520;

      if (v6 != -1)
      {
        goto LABEL_41;
      }

      while (1)
      {
        v7 = sub_252E36AD4();
        __swift_project_value_buffer(v7, qword_27F544E08);
        __src[0] = 0;
        __src[1] = 0xE000000000000000;
        sub_252E379F4();

        __src[0] = 0xD000000000000024;
        __src[1] = 0x8000000252E89CF0;
        v8 = MEMORY[0x2530AD730](v1, &type metadata for HomeAutomationIntent);
        MEMORY[0x2530AD570](v8);

        sub_252CC3D90(__src[0], __src[1], 0xD0000000000000A0, 0x8000000252E89D20);

        if (!v2)
        {
LABEL_9:
          v12 = *(v1 + 2);
          goto LABEL_10;
        }

        v10 = 0;
        v11 = 536;
        while (*(*&v1[v11 - 176] + 16) <= 1uLL)
        {
          ++v10;
          v11 += 504;
          if (v2 == v10)
          {
            goto LABEL_9;
          }
        }

        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_45;
        }

        v15 = *(v1 + 2);
        if (v12 == v15)
        {
          break;
        }

        v2 = v10;
        while (v12 < v15)
        {
          if (*(*&v1[v11 + 328] + 16) <= 1uLL)
          {
            if (v12 != v2)
            {
              if (v2 >= v15)
              {
                goto LABEL_38;
              }

              memcpy(__dst, &v1[504 * v2 + 32], sizeof(__dst));
              memcpy(__src, &v1[v11], sizeof(__src));
              sub_2529353AC(__dst, v18);
              sub_2529353AC(__src, v18);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v1 = sub_252D57AC0(v1);
              }

              if (v2 >= *(v1 + 2))
              {
                goto LABEL_39;
              }

              v16 = &v1[504 * v2];
              memcpy(v17, v16 + 32, sizeof(v17));
              memcpy(v16 + 32, __src, 0x1F8uLL);
              sub_252935408(v17);
              if (v12 >= *(v1 + 2))
              {
                goto LABEL_40;
              }

              memcpy(v18, &v1[v11], sizeof(v18));
              memcpy(&v1[v11], __dst, 0x1F8uLL);
              result = sub_252935408(v18);
            }

            ++v2;
          }

          ++v12;
          v15 = *(v1 + 2);
          v11 += 504;
          if (v12 == v15)
          {
            goto LABEL_10;
          }
        }

        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        swift_once();
      }

      v2 = v10;
LABEL_10:
      if (v2 > v12)
      {
        __break(1u);
      }

      else if ((v2 & 0x8000000000000000) == 0)
      {
        if (!__OFADD__(v12, v2 - v12))
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          __src[0] = v1;
          if (!isUniquelyReferenced_nonNull_native || v2 > *(v1 + 3) >> 1)
          {
            if (v12 <= v2)
            {
              v14 = v2;
            }

            else
            {
              v14 = v12;
            }

            v1 = sub_2529F7FB0(isUniquelyReferenced_nonNull_native, v14, 1, v1);
            __src[0] = v1;
          }

          sub_252B7B280(v2, v12, 0);
          return v1;
        }

LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
        return result;
      }

      __break(1u);
      goto LABEL_44;
    }
  }

  return v1;
}

uint64_t sub_252BFF6BC()
{
  type metadata accessor for TurnOnAirPurifierHandleDelegate();

  return swift_allocObject();
}

void sub_252BFF6EC(void *a1, void (*a2)(void), uint64_t a3)
{
  v6 = sub_252E36AD4();
  v7 = *(v6 - 1);
  MEMORY[0x28223BE20](v6);
  v9 = &v120 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 filters];
  if (!v10)
  {
    if (qword_27F53F498 != -1)
    {
      goto LABEL_115;
    }

    goto LABEL_8;
  }

  v11 = v10;
  v129 = v9;
  v133 = a1;
  v135 = a3;
  v136 = a2;
  type metadata accessor for HomeFilter();
  v12 = sub_252E37264();

  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
  inited = swift_initStackObject();
  v128 = xmmword_252E3C130;
  *(inited + 16) = xmmword_252E3C130;
  v127 = type metadata accessor for HomeUserTask();
  v14 = objc_allocWithZone(v127);
  v15 = sub_252E36F04();
  v16 = [v14 initWithIdentifier:0 displayString:v15];

  v17 = v16;
  [v17 setTaskType_];
  [v17 setAttribute_];
  [v17 setValue_];

  *(inited + 32) = v17;
  v18 = sub_252B4CA9C(v12, inited, 0, 1);
  LOBYTE(v17) = v19;

  swift_setDeallocating();
  swift_arrayDestroy();
  if (v17)
  {
    v20 = v18;
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v6, qword_27F544C70);
    v144 = 0;
    v145 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0x6F72724520746F47, 0xEA00000000002072);
    v142 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
    sub_252E37AE4();
    MEMORY[0x2530AD570](0xD000000000000016, 0x8000000252E89EA0);
    sub_252CC4050(v144, v145, 0xD000000000000085, 0x8000000252E89E10, 0xD000000000000021, 0x8000000252E68B10, 97);

    v21 = v133;
    v22 = sub_252B4CD30(v133, 0, 1);
    if (v23)
    {
      v144 = 0;
      v145 = 0xE000000000000000;
      v24 = v22;
      v25 = v22;
      sub_252E379F4();
      MEMORY[0x2530AD570](0x6F72724520746F47, 0xEA00000000002072);
      v142 = v24;
      sub_252E37AE4();
      MEMORY[0x2530AD570](0xD000000000000020, 0x8000000252E89EC0);
      sub_252CC4050(v144, v145, 0xD000000000000085, 0x8000000252E89E10, 0xD000000000000021, 0x8000000252E68B10, 106);

      v26 = parse(error:with:)(v24, v21);
      v136();

      sub_252927D3C(v24);
      v27 = v24;
    }

    else
    {
      v73 = v22;
      v136();
      v27 = v73;
    }

    sub_252927D3C(v27);
    sub_252927D3C(v18);
    v74 = v18;
    goto LABEL_120;
  }

  v31 = v18;
  v32 = [v31 entityResponses];
  if (!v32)
  {
    goto LABEL_119;
  }

  v33 = v32;
  v123 = type metadata accessor for HomeEntityResponse();
  v34 = sub_252E37264();

  v142 = MEMORY[0x277D84F90];
  if (v34 >> 62)
  {
    v35 = sub_252E378C4();
  }

  else
  {
    v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v125 = v34;
  v124 = v31;
  v134 = v18;
  if (!v35)
  {
    a2 = 0;
    v75 = MEMORY[0x277D84F90];
    goto LABEL_67;
  }

  v121 = v7;
  v122 = v6;
  v36 = 0;
  a2 = 0;
  v6 = (v125 & 0xC000000000000001);
  v37 = v125 & 0xFFFFFFFFFFFFFF8;
  v38 = v125 + 32;
  v137 = v35;
  v132 = v125 & 0xC000000000000001;
  v131 = v125 & 0xFFFFFFFFFFFFFF8;
  v130 = v125 + 32;
  while (1)
  {
    if (v6)
    {
      v39 = MEMORY[0x2530ADF00](v36, v125);
    }

    else
    {
      if (v36 >= *(v37 + 16))
      {
        goto LABEL_112;
      }

      v39 = *(v38 + 8 * v36);
    }

    v40 = v39;
    v41 = __OFADD__(v36++, 1);
    if (v41)
    {
      goto LABEL_111;
    }

    v42 = [v39 taskResponses];
    if (!v42)
    {
      goto LABEL_15;
    }

    v43 = v42;
    v138 = type metadata accessor for HomeUserTaskResponse();
    v44 = sub_252E37264();

    v45 = [v40 entity];
    if (v45)
    {
      break;
    }

LABEL_15:

LABEL_16:
    if (v36 == v35)
    {
      v75 = v142;
      v6 = v122;
      v7 = v121;
LABEL_67:

      v76 = v75 < 0 || (v75 & 0x4000000000000000) != 0;
      if (v76)
      {
        if (sub_252E378C4())
        {
LABEL_72:
          if (qword_27F53F498 != -1)
          {
            swift_once();
          }

          v77 = __swift_project_value_buffer(v6, qword_27F544C70);
          v78 = *(v7 + 16);
          v140 = v77;
          v78(v129);
          v144 = 0;
          v145 = 0xE000000000000000;
          sub_252E379F4();
          if (v76)
          {
            v79 = sub_252E378C4();
          }

          else
          {
            v79 = *(v75 + 16);
          }

          v142 = v79;
          v143 = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541EE0, &qword_252E4D8A0);
          v80 = sub_252E36F94();
          MEMORY[0x2530AD570](v80);

          MEMORY[0x2530AD570](0xA65687420666F20, 0xE800000000000000);
          v81 = [v124 entityResponses];
          if (v81)
          {
            v82 = sub_252E37264();

            if (v82 >> 62)
            {
              v83 = sub_252E378C4();
            }

            else
            {
              v83 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }
          }

          else
          {
            v83 = 0;
          }

          v142 = v83;
          v143 = v81 == 0;
          v84 = sub_252E36F94();
          MEMORY[0x2530AD570](v84);

          MEMORY[0x2530AD570](0xD00000000000002DLL, 0x8000000252E89EF0);
          v139 = "rnOnAirPurifierHandleDelegate";
          v85 = v129;
          sub_252CC3D90(v144, v145, 0xD000000000000085, 0x8000000252E89E10);

          (*(v7 + 8))(v85, v6);
          if (v76)
          {
            v86 = sub_252E378C4();
            if (v86)
            {
LABEL_84:
              v138 = a2;
              a2 = 0;
              v141 = MEMORY[0x277D84F90];
LABEL_85:
              v87 = a2;
              while (1)
              {
                if ((v75 & 0xC000000000000001) != 0)
                {
                  v88 = MEMORY[0x2530ADF00](v87, v75);
                }

                else
                {
                  if (v87 >= *(v75 + 16))
                  {
                    goto LABEL_114;
                  }

                  v88 = *(v75 + 8 * v87 + 32);
                }

                v89 = v88;
                a2 = (v87 + 1);
                if (__OFADD__(v87, 1))
                {
                  goto LABEL_113;
                }

                v90 = [v88 entity];
                if (v90)
                {
                  v6 = v90;
                  v91 = [v90 entityIdentifier];

                  if (v91)
                  {
                    v92 = sub_252E36F34();
                    v6 = v93;

                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      v141 = sub_2529F7A80(0, *(v141 + 2) + 1, 1, v141);
                    }

                    v96 = *(v141 + 2);
                    v95 = *(v141 + 3);
                    if (v96 >= v95 >> 1)
                    {
                      v141 = sub_2529F7A80((v95 > 1), v96 + 1, 1, v141);
                    }

                    v97 = v141;
                    *(v141 + 2) = v96 + 1;
                    v98 = &v97[16 * v96];
                    *(v98 + 4) = v92;
                    *(v98 + 5) = v6;
                    if (a2 != v86)
                    {
                      goto LABEL_85;
                    }

                    goto LABEL_103;
                  }
                }

                ++v87;
                if (a2 == v86)
                {
                  goto LABEL_103;
                }
              }
            }
          }

          else
          {
            v86 = *(v75 + 16);
            if (v86)
            {
              goto LABEL_84;
            }
          }

          v141 = MEMORY[0x277D84F90];
LABEL_103:

          v99 = swift_allocObject();
          *(v99 + 16) = v128;
          type metadata accessor for HomeFilter.Builder();
          swift_allocObject();
          v100.n128_f64[0] = HomeFilter.Builder.init()();
          v102 = (*(*v101 + 568))(v141, v100);

          v104 = (*(*v102 + 760))(v103);

          *(v99 + 32) = v104;
          v105 = swift_initStackObject();
          *(v105 + 16) = v128;
          v106 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
          v107 = sub_252E36F04();
          v108 = [v106 initWithIdentifier:0 displayString:v107];

          v109 = v108;
          [v109 setBoolValue_];
          [v109 setType_];

          v110 = objc_allocWithZone(v127);
          v111 = sub_252E36F04();
          v112 = [v110 initWithIdentifier:0 displayString:v111];

          v113 = v112;
          [v113 setTaskType_];
          [v113 setAttribute_];
          [v113 setValue_];

          *(v105 + 32) = v113;
          v114 = sub_252B4CA9C(v99, v105, 0, 1);
          LOBYTE(v113) = v115;

          swift_setDeallocating();
          swift_arrayDestroy();
          if (v113)
          {
            v144 = 0;
            v145 = 0xE000000000000000;
            v116 = v114;
            sub_252E379F4();
            MEMORY[0x2530AD570](0x6F72724520746F47, 0xEA00000000002072);
            v142 = v114;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
            sub_252E37AE4();
            MEMORY[0x2530AD570](0xD000000000000017, 0x8000000252E89F20);
            sub_252CC4050(v144, v145, 0xD000000000000085, v139 | 0x8000000000000000, 0xD000000000000021, 0x8000000252E68B10, 89);

            v117 = parse(error:with:)(v114, v133);
            v136();
          }

          else
          {
            v118 = v114;
            (v136)(v118);
          }

          sub_252927D3C(v114);
          sub_252927D3C(v114);
          v119 = v134;
          sub_252927D3C(v134);
          v74 = v119;
          goto LABEL_120;
        }
      }

      else if (*(v75 + 16))
      {
        goto LABEL_72;
      }

      v31 = v124;
LABEL_119:
      (v136)(v31);
      sub_252927D3C(v18);
      v74 = v18;
LABEL_120:
      sub_252927D3C(v74);
      return;
    }
  }

  if (!(v44 >> 62))
  {
    v46 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v46)
    {
      goto LABEL_25;
    }

    goto LABEL_59;
  }

  v46 = sub_252E378C4();
  if (!v46)
  {
LABEL_59:

    v35 = v137;
    goto LABEL_16;
  }

LABEL_25:
  v47 = 0;
  v141 = (v44 & 0xC000000000000001);
  v139 = v44 & 0xFFFFFFFFFFFFFF8;
  v140 = v40;
  while (2)
  {
    if (v141)
    {
      v48 = MEMORY[0x2530ADF00](v47, v44);
    }

    else
    {
      if (v47 >= *(v139 + 16))
      {
        goto LABEL_110;
      }

      v48 = *(v44 + 32 + 8 * v47);
    }

    v49 = v48;
    v41 = __OFADD__(v47++, 1);
    if (v41)
    {
      goto LABEL_109;
    }

    v6 = a2;
    if (qword_27F53F728 != -1)
    {
      swift_once();
    }

    v50 = qword_27F575C38;
    v51 = [v49 taskOutcome];
    if (!*(v50 + 16))
    {
      a2 = v6;
      goto LABEL_27;
    }

    v52 = v51;
    sub_252E37EC4();
    MEMORY[0x2530AE390](v52);
    v53 = sub_252E37F14();
    v54 = v50 + 56;
    v55 = -1 << *(v50 + 32);
    v56 = v53 & ~v55;
    if (((*(v50 + 56 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56) & 1) == 0)
    {
      a2 = v6;
      v40 = v140;
LABEL_27:

      if (v47 == v46)
      {

LABEL_56:
        v18 = v134;
        v35 = v137;
        v6 = v132;
        v37 = v131;
        v38 = v130;
        goto LABEL_16;
      }

      continue;
    }

    break;
  }

  v57 = ~v55;
  v58 = *(v50 + 48);
  a2 = v6;
  v40 = v140;
  while (*(v58 + 8 * v56) != v52)
  {
    v56 = (v56 + 1) & v57;
    if (((*(v54 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56) & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v59 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
  v60 = sub_252E36F04();
  v61 = [v59 initWithIdentifier:0 displayString:v60];

  v62 = v61;
  v63 = sub_252E36F04();
  [v62 setStringValue_];

  [v62 setUnit_];
  [v62 setType_];
  v141 = v62;

  v64 = [v140 taskResponses];
  if (!v64)
  {
    goto LABEL_62;
  }

  v65 = v64;
  v66 = sub_252E37264();

  if (!(v66 >> 62))
  {
    v67 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v67)
    {
      goto LABEL_45;
    }

LABEL_61:

LABEL_62:
    v18 = v134;
    v35 = v137;
    v6 = v132;
    v37 = v131;
    v38 = v130;

    sub_252E37A94();
    sub_252E37AC4();
    sub_252E37AD4();
    sub_252E37AA4();
    goto LABEL_16;
  }

  v67 = sub_252E378C4();
  if (!v67)
  {
    goto LABEL_61;
  }

LABEL_45:
  v68 = 0;
  v6 = (v66 & 0xC000000000000001);
  while (1)
  {
    if (v6)
    {
      v69 = MEMORY[0x2530ADF00](v68, v66);
    }

    else
    {
      if (v68 >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_108;
      }

      v69 = *(v66 + 8 * v68 + 32);
    }

    v70 = v69;
    v71 = v68 + 1;
    if (__OFADD__(v68, 1))
    {
      break;
    }

    v144 = v69;
    v72 = sub_252DA5D40(&v144, 0x2F, v141, 0, 1);

    if (v72)
    {

      goto LABEL_56;
    }

    ++v68;
    if (v71 == v67)
    {
      goto LABEL_61;
    }
  }

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
  swift_once();
LABEL_8:
  __swift_project_value_buffer(v6, qword_27F544C70);
  sub_252CC4050(0xD000000000000014, 0x8000000252E6D520, 0xD000000000000085, 0x8000000252E89E10, 0xD000000000000021, 0x8000000252E68B10, 51);
  v28 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
  v29 = OBJC_IVAR___ControlHomeIntentResponse_code;
  swift_beginAccess();
  *&v28[v29] = 5;
  [v28 setUserActivity_];
  type metadata accessor for HomeEntityResponse();
  v30 = sub_252E37254();
  [v28 setEntityResponses_];

  (a2)(v28);
}

uint64_t sub_252C00ABC(void *a1)
{
  v2 = [a1 userTask];
  if (!v2)
  {
    goto LABEL_24;
  }

  v3 = v2;
  v4 = [v2 taskType];

  if (v4 != 1)
  {
    return 0;
  }

  v5 = [a1 userTask];
  if (!v5)
  {
LABEL_24:
    sub_252C515AC();
    return 0;
  }

  v6 = v5;
  v7 = [v5 attribute];

  if (v7 != 27)
  {
    return 0;
  }

  result = [a1 userTask];
  if (!result)
  {
    return result;
  }

  v9 = result;
  v10 = [result value];

  if (!v10)
  {
    return 0;
  }

  v11 = [v10 BOOLValue];

  if (!v11)
  {
    return 0;
  }

  result = [a1 filters];
  if (!result)
  {
    return result;
  }

  v12 = result;
  type metadata accessor for HomeFilter();
  v13 = sub_252E37264();

  KeyPath = swift_getKeyPath();
  v15 = sub_2529304DC(KeyPath, v13);

  if ((v15 & 1) != 0 || (v16 = swift_getKeyPath(), v17 = sub_252BAF91C(v16, v13), , v17))
  {
    v18 = type metadata accessor for HomeStore(0);
    v19 = static HomeStore.shared.getter(v18);
    v20 = HomeStore.accessories(matching:supporting:)(v13, 0);
    LOBYTE(v22) = v21;

    if ((v22 & 1) == 0)
    {
      if (v20 >> 62)
      {
LABEL_54:
        v23 = sub_252E378C4();
        if (v23)
        {
LABEL_14:
          v24 = 0;
          while (v23 != v24)
          {
            if ((v20 & 0xC000000000000001) != 0)
            {
              v22 = MEMORY[0x2530ADF00](v24, v20);
              if (__OFADD__(v24, 1))
              {
LABEL_23:
                __break(1u);
                goto LABEL_24;
              }
            }

            else
            {
              if (v24 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                goto LABEL_54;
              }

              v22 = *(v20 + 8 * v24 + 32);

              if (__OFADD__(v24, 1))
              {
                goto LABEL_23;
              }
            }

            v25 = (*(*v22 + 256))();

            ++v24;
            if (v25 != 39)
            {
              goto LABEL_51;
            }
          }

LABEL_49:
          sub_252929F10(v20, 0);
          return 1;
        }
      }

      else
      {
        v23 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v23)
        {
          goto LABEL_14;
        }
      }
    }

    sub_252929F10(v20, v22 & 1);
    if (qword_27F53F520 != -1)
    {
      swift_once();
    }

    v48 = sub_252E36AD4();
    __swift_project_value_buffer(v48, qword_27F544E08);
    v49 = sub_252E36AC4();
    v50 = sub_252E374C4();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_252917000, v49, v50, "Couldn't get targetedAccessories. Invalidating candidate", v51, 2u);
      MEMORY[0x2530AED00](v51, -1, -1);
    }

    return 0;
  }

  v26 = type metadata accessor for HomeStore(0);
  v27 = static HomeStore.shared.getter(v26);
  v28 = v27[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
  if (v28 == 2 || (v28 & 1) != 0)
  {
    v29 = [a1 filters];
    if (v29)
    {
      v30 = v29;
      v31 = sub_252E37264();

      v32 = [a1 userTask];
      v20 = HomeStore.services(matching:supporting:)(v31, v32);
      v34 = v33;

      if (v34)
      {
        v35 = v20;
        v36 = 1;
LABEL_52:
        sub_252929F10(v35, v36);
        return 0;
      }

      if (v20 >> 62)
      {
LABEL_62:
        v37 = sub_252E378C4();
        if (v37)
        {
LABEL_35:
          v38 = 0;
          while (v37 != v38)
          {
            if ((v20 & 0xC000000000000001) != 0)
            {
              v39 = MEMORY[0x2530ADF00](v38, v20);
              if (__OFADD__(v38, 1))
              {
                goto LABEL_60;
              }
            }

            else
            {
              if (v38 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_61;
              }

              v39 = *(v20 + 8 * v38 + 32);

              if (__OFADD__(v38, 1))
              {
LABEL_60:
                __break(1u);
LABEL_61:
                __break(1u);
                goto LABEL_62;
              }
            }

            v40 = [*(v39 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
            v41 = sub_252E36F34();
            v43 = v42;

            if (qword_27F53F8B8 != -1)
            {
              swift_once();
            }

            v44 = off_27F546230;
            if (!*(off_27F546230 + 2) || (v45 = sub_252A44A10(v41, v43), (v46 & 1) == 0))
            {

              goto LABEL_51;
            }

            v47 = *(v44[7] + 8 * v45);

            ++v38;
            if (v47 != 39)
            {
              goto LABEL_51;
            }
          }

          goto LABEL_49;
        }
      }

      else
      {
        v37 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v37)
        {
          goto LABEL_35;
        }
      }

LABEL_51:
      v35 = v20;
      v36 = 0;
      goto LABEL_52;
    }
  }

  return 0;
}

uint64_t sub_252C0104C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[25] = a3;
  v4[26] = v3;
  v4[23] = a1;
  v4[24] = a2;
  v4[27] = type metadata accessor for HomeAutomationSetSwingModeParameters(0);
  v4[28] = swift_task_alloc();
  sub_252E33944();
  v4[29] = swift_task_alloc();
  v5 = sub_252E34014();
  v4[30] = v5;
  v4[31] = *(v5 - 8);
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C01184, 0, 0);
}

uint64_t sub_252C01184()
{
  v1 = *(v0 + 192);
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D84F90];
  *(v0 + 280) = v2;
  *(v2 + 16) = v3;
  v4 = (v2 + 16);
  v5 = [v1 userTask];
  if (v5)
  {
    v6 = v5;
    if (*(v0 + 200))
    {
      v7 = sub_252C2B064(v5);
      v8 = v7;
      v52 = v3;
      v9 = v7 & 0xFFFFFFFFFFFFFF8;
      if (v7 >> 62)
      {
LABEL_34:
        v10 = sub_252E378C4();
      }

      else
      {
        v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = 0;
      v49 = MEMORY[0x277D84F90];
      while (v10 != v11)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x2530ADF00](v11, v8);
        }

        else
        {
          if (v11 >= *(v9 + 16))
          {
            goto LABEL_33;
          }

          v12 = *(v8 + 8 * v11 + 32);
        }

        v13 = v12;
        v14 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          __break(1u);
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

        v15 = sub_252DA124C(0);

        ++v11;
        if (v15)
        {
          MEMORY[0x2530AD700]();
          if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_252E372A4();
          }

          sub_252E372D4();
          v49 = v52;
          v11 = v14;
        }
      }

      v4 = (v2 + 16);
      v16 = v49;
    }

    else
    {

      v16 = MEMORY[0x277D84F90];
    }

    *v4 = v16;
  }

  v17 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v5);
  sub_252929E74((v17 + 288), v0 + 16);

  v18 = *(v0 + 40);
  v19 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v18);
  v20 = (*(v19 + 120))(v18, v19);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if (v20)
  {
    v22 = *(v0 + 200);
    v21 = *(v0 + 208);
    v23 = *(v0 + 192);
    v24 = swift_task_alloc();
    *(v0 + 288) = v24;
    v24[2] = v23;
    v24[3] = v4;
    v24[4] = v21;
    *(v0 + 512) = sub_252DC6D48(v23, v22);
    sub_252E33924();
    sub_252E33F54();
    v25 = swift_task_alloc();
    *(v0 + 296) = v25;
    *v25 = v0;
    v25[1] = sub_252C017F0;
    v26 = *(v0 + 208);

    return sub_252C034C0(v26, v2);
  }

  else
  {
    v29 = *(v0 + 200);
    v28 = *(v0 + 208);
    v30 = *(v0 + 192);
    v31 = swift_allocObject();
    *(v0 + 408) = v31;
    v31[2] = v28;
    v31[3] = v2;
    v31[4] = v30;
    swift_retain_n();
    v32 = v30;

    *(v0 + 514) = sub_252DC6D48(v32, v29);
    if (v29)
    {
      v33 = *(v0 + 216);
      v34 = *(v0 + 224);
      v35 = *(v0 + 208);
      v36 = *(v0 + 192);
      v37 = *(v35 + 48);
      v38 = *(v0 + 200);
      __swift_project_boxed_opaque_existential_1((v35 + 24), v37);
      v39 = sub_252E36324();
      v40 = *(*(v39 - 8) + 56);
      v41 = v36;

      v40(v34, 1, 1, v39);
      v40(v34 + v33[10], 1, 1, v39);
      *(v34 + v33[5]) = 0;
      *(v34 + v33[6]) = 0;
      *(v34 + v33[7]) = 0;
      *(v34 + v33[8]) = 0;
      *(v34 + v33[9]) = 0;
      sub_252C040D8(v34, v4, v41, v35);
      v42 = sub_252C0A244();
      *(v0 + 416) = v42;
      v50 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
      v43 = swift_task_alloc();
      *(v0 + 424) = v43;
      *v43 = v0;
      v43[1] = sub_252C02784;

      return v50(0xD00000000000001BLL, 0x8000000252E66680, v42);
    }

    else
    {

      if (qword_27F53F4D0 != -1)
      {
        swift_once();
      }

      v44 = *(v0 + 208);
      v45 = sub_252E36AD4();
      __swift_project_value_buffer(v45, qword_27F544D18);
      sub_252CC4050(0xD00000000000003CLL, 0x8000000252E6B3F0, 0xD00000000000008FLL, 0x8000000252E6B430, 0xD000000000000042, 0x8000000252E6B4C0, 205);
      v46 = *(v44 + 96);
      __swift_project_boxed_opaque_existential_1((v44 + 72), v46);
      sub_252AD7CC4();
      v47 = swift_task_alloc();
      *(v0 + 472) = v47;
      *v47 = v0;
      v47[1] = sub_252C02B6C;
      v48 = *(v0 + 264);

      return sub_252BDB88C(v0 + 56, &unk_252E52778, v31, v48, 0, 0, 0, v46);
    }
  }
}

uint64_t sub_252C017F0(uint64_t a1, char a2)
{
  v6 = *v3;
  *(*v3 + 304) = v2;

  if (v2)
  {
    v7 = sub_252C01BC0;
  }

  else
  {
    *(v6 + 312) = a1;
    *(v6 + 513) = a2;
    v7 = sub_252C01928;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_252C01928()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 200);
  if (*(v0 + 513))
  {
    if (v2)
    {
      v3 = v2;
      v4 = swift_task_alloc();
      *(v0 + 344) = v4;
      *v4 = v0;
      v4[1] = sub_252C01D98;

      return sub_252DC8A98(v3);
    }

    goto LABEL_11;
  }

  if (!v2)
  {
    v8 = sub_252BE8FD4();

    v1 = v8;
LABEL_11:
    *(v0 + 368) = v1;
    v9 = *(v0 + 288);
    __swift_project_boxed_opaque_existential_1((*(v0 + 208) + 72), *(*(v0 + 208) + 96));
    v10 = swift_task_alloc();
    *(v0 + 376) = v10;
    *(v10 + 16) = v1;
    v11 = swift_task_alloc();
    *(v0 + 384) = v11;
    *(v11 + 16) = &unk_252E52798;
    *(v11 + 24) = v9;
    v12 = v1;
    v13 = swift_task_alloc();
    *(v0 + 392) = v13;
    *v13 = v0;
    v13[1] = sub_252C0213C;
    v14 = *(v0 + 272);

    return sub_252A199A8(v0 + 136, &unk_252E400A0, v10, &unk_252E3D1A0, v11, v14, 0, 0);
  }

  v6 = v2;
  v7 = swift_task_alloc();
  *(v0 + 320) = v7;
  *v7 = v0;
  v7[1] = sub_252C01C84;

  return sub_252E174F4(v6);
}

uint64_t sub_252C01BC0()
{
  (*(v0[31] + 8))(v0[34], v0[30]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_252C01C84(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 328) = a1;
  *(v3 + 336) = v1;

  if (v1)
  {
    v4 = sub_252C02060;
  }

  else
  {
    v4 = sub_252C01EAC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252C01D98(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 352) = a1;
  *(v3 + 360) = v1;

  if (v1)
  {
    v4 = sub_252C026A8;
  }

  else
  {
    v4 = sub_252C0250C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252C01EAC()
{
  v1 = *(v0 + 328);
  if (v1)
  {
    v2 = *(v0 + 312);
    v3 = *(v0 + 200);
    v4 = sub_252BE8A5C(*(v0 + 328));
    v5 = sub_252BE8FD4();
  }

  else
  {

    v4 = *(v0 + 312);
    v5 = sub_252BE8FD4();
  }

  *(v0 + 368) = v5;
  v6 = *(v0 + 288);
  __swift_project_boxed_opaque_existential_1((*(v0 + 208) + 72), *(*(v0 + 208) + 96));
  v7 = swift_task_alloc();
  *(v0 + 376) = v7;
  *(v7 + 16) = v5;
  v8 = swift_task_alloc();
  *(v0 + 384) = v8;
  *(v8 + 16) = &unk_252E52798;
  *(v8 + 24) = v6;
  v9 = v5;
  v10 = swift_task_alloc();
  *(v0 + 392) = v10;
  *v10 = v0;
  v10[1] = sub_252C0213C;
  v11 = *(v0 + 272);

  return sub_252A199A8(v0 + 136, &unk_252E400A0, v7, &unk_252E3D1A0, v8, v11, 0, 0);
}

uint64_t sub_252C02060()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 272);
  v3 = *(v0 + 240);
  v4 = *(v0 + 248);

  (*(v4 + 8))(v2, v3);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_252C0213C()
{
  v2 = *v1;
  *(*v1 + 400) = v0;

  if (v0)
  {

    v3 = sub_252C02434;
  }

  else
  {

    v3 = sub_252C022B0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252C022B0()
{
  v1 = v0[26];
  v2 = v0[24];
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

  v8 = v0[46];
  v9 = v0[34];
  v10 = v0[30];
  v11 = v0[31];
  (*(v4 + 112))(v7, v0 + 17, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  (*(v11 + 8))(v9, v10);

  v12 = v0[1];

  return v12();
}

uint64_t sub_252C02434()
{
  v1 = v0[46];
  v2 = v0[34];
  v3 = v0[30];
  v4 = v0[31];

  (*(v4 + 8))(v2, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_252C0250C()
{
  v1 = *(v0 + 352);
  if (v1)
  {
    v2 = *(v0 + 312);
    v3 = *(v0 + 200);
    v4 = sub_252BE92A0(*(v0 + 352));
  }

  else
  {

    v4 = *(v0 + 312);
  }

  *(v0 + 368) = v4;
  v5 = *(v0 + 288);
  __swift_project_boxed_opaque_existential_1((*(v0 + 208) + 72), *(*(v0 + 208) + 96));
  v6 = swift_task_alloc();
  *(v0 + 376) = v6;
  *(v6 + 16) = v4;
  v7 = swift_task_alloc();
  *(v0 + 384) = v7;
  *(v7 + 16) = &unk_252E52798;
  *(v7 + 24) = v5;
  v8 = v4;
  v9 = swift_task_alloc();
  *(v0 + 392) = v9;
  *v9 = v0;
  v9[1] = sub_252C0213C;
  v10 = *(v0 + 272);

  return sub_252A199A8(v0 + 136, &unk_252E400A0, v6, &unk_252E3D1A0, v7, v10, 0, 0);
}

uint64_t sub_252C026A8()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 272);
  v3 = *(v0 + 240);
  v4 = *(v0 + 248);

  (*(v4 + 8))(v2, v3);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_252C02784(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 432) = a1;
  *(v3 + 440) = v1;

  if (v1)
  {
    v4 = sub_252C02A90;
  }

  else
  {
    v4 = sub_252C028B8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252C028B8()
{
  v1 = v0[25];
  v2 = v0[24];
  sub_252C04788(v0[28]);

  v3 = swift_task_alloc();
  v0[56] = v3;
  *v3 = v0;
  v3[1] = sub_252C0297C;

  return sub_252E174F4(v1);
}

uint64_t sub_252C0297C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 456) = a1;
  *(v3 + 464) = v1;

  if (v1)
  {
    v4 = sub_252C02E38;
  }

  else
  {
    v4 = sub_252C02CDC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252C02A90()
{
  v1 = v0[25];
  v2 = v0[24];
  sub_252C04788(v0[28]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_252C02B6C()
{
  v2 = *(*v1 + 264);
  v3 = *(*v1 + 248);
  v4 = *(*v1 + 240);
  *(*v1 + 480) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_252C03414;
  }

  else
  {
    v5 = sub_252C032C8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252C02CDC()
{
  v1 = *(v0 + 432);
  *(v0 + 176) = v1;
  v2 = (v0 + 176);
  v3 = *(v0 + 456);
  if (v3)
  {
    v4 = v1;
    v5 = v3;
    v6 = sub_252BE8A5C(v5);

    *v2 = v6;
  }

  else
  {
    v7 = v1;
  }

  v8 = *(v0 + 208);
  v9 = *(v8 + 96);
  __swift_project_boxed_opaque_existential_1((v8 + 72), v9);
  v10 = swift_task_alloc();
  *(v0 + 488) = v10;
  *(v10 + 16) = v2;
  sub_252AD7CC4();
  v11 = swift_task_alloc();
  *(v0 + 496) = v11;
  *v11 = v0;
  v11[1] = sub_252C02EF8;
  v12 = *(v0 + 514);
  v13 = *(v0 + 256);

  return sub_252BDB88C(v0 + 96, &unk_252E3F140, v10, v13, 0, 0, v12, v9);
}

uint64_t sub_252C02E38()
{
  v1 = *(v0 + 200);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252C02EF8()
{
  v2 = *(*v1 + 256);
  v3 = *(*v1 + 248);
  v4 = *(*v1 + 240);
  *(*v1 + 504) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_252C031EC;
  }

  else
  {

    v5 = sub_252C03078;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252C03078()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 192);
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

  v8 = *(v0 + 456);
  v9 = *(v0 + 432);
  v10 = *(v0 + 200);
  (*(v4 + 112))(v7, v0 + 96, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 96));

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_252C031EC()
{
  v1 = *(v0 + 456);
  v2 = *(v0 + 200);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_252C032C8()
{
  v1 = v0[26];
  v2 = v0[24];
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

  (*(v4 + 112))(v7, v0 + 7, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_252C03414()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252C034C0(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_252C034E0, 0, 0);
}

uint64_t sub_252C034E0()
{
  v1 = v0[6];
  v0[7] = *(v0[5] + 64);
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = type metadata accessor for HomeAutomationBooleanResponses();
  v4 = swift_allocObject();
  v0[8] = v4;
  *(v4 + 16) = 0;
  *(v4 + 24) = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v5 = swift_allocObject();
  *(v5 + 32) = 0xD000000000000016;
  *(v5 + 40) = 0x8000000252E89F80;
  *(v5 + 72) = v3;
  v8 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);
  v0[9] = v5;
  *(v5 + 16) = xmmword_252E3C290;
  *(v5 + 48) = v4;

  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = sub_252C0366C;

  return v8(0xD00000000000001BLL, 0x8000000252E66680, v5);
}

uint64_t sub_252C0366C(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 88) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_252C037D8, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1, 1);
  }
}

uint64_t sub_252C037D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252C03850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[134] = a4;
  v4[133] = a3;
  v4[132] = a2;
  v4[131] = a1;
  return MEMORY[0x2822009F8](sub_252C0387C, 0, 0);
}

uint64_t sub_252C0387C()
{
  v13 = v0;
  v1 = v0[134];
  v2 = v0[133];
  v3 = v0[132];
  type metadata accessor for HomeAutomationEntityResponses.Builder();
  *(swift_allocObject() + 16) = MEMORY[0x277D84F90];
  swift_beginAccess();
  v4 = *v2;
  type metadata accessor for HomeAutomationBooleanResponses();
  v5 = swift_allocObject();
  v0[135] = v5;
  *(v5 + 16) = 0;
  swift_setDeallocating();
  swift_deallocClassInstance();
  *(v5 + 24) = v4;
  memcpy(v0 + 2, (v1 + 112), 0x1F8uLL);
  memcpy(__dst, (v1 + 112), sizeof(__dst));

  sub_2529D291C((v0 + 2), (v0 + 65));
  v6 = v3;
  v7 = sub_252953488(v3, __dst, 0);
  v0[136] = v7;

  v8 = swift_task_alloc();
  v0[137] = v8;
  *v8 = v0;
  v8[1] = sub_252C03A10;
  v9 = v0[132];
  v10 = v0[131];

  return sub_252A2D160(v10, v9, v5, v7);
}

uint64_t sub_252C03A10()
{
  *(*v1 + 1104) = v0;

  if (v0)
  {
    v2 = sub_252C03BB0;
  }

  else
  {

    v2 = sub_252C03B38;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_252C03B38()
{
  type metadata accessor for HomeAutomationSnippetModels(0);
  swift_storeEnumTagMultiPayload();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252C03BB0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252C03C20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = type metadata accessor for HomeAutomationSetSwingModeParameters(0);
  v3[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C03CB8, 0, 0);
}

uint64_t sub_252C03CB8()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  __swift_project_boxed_opaque_existential_1((v5 + 24), *(v5 + 48));
  v6 = sub_252E36324();
  v7 = *(*(v6 - 8) + 56);
  v8 = v3;

  v7(v1, 1, 1, v6);
  v7(v1 + v2[10], 1, 1, v6);
  *(v1 + v2[5]) = 0;
  *(v1 + v2[6]) = 0;
  *(v1 + v2[7]) = 0;
  *(v1 + v2[8]) = 0;
  *(v1 + v2[9]) = 0;
  sub_252C040D8(v1, (v4 + 16), v8, v5);
  v9 = sub_252C0A244();
  v0[7] = v9;
  v12 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v10 = swift_task_alloc();
  v0[8] = v10;
  *v10 = v0;
  v10[1] = sub_252C03E70;

  return v12(0xD00000000000001BLL, 0x8000000252E66680, v9);
}

uint64_t sub_252C03E70(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_252C0404C;
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = sub_252C03FBC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252C03FBC()
{
  v1 = v0[4];
  sub_252C04788(v0[6]);

  v2 = v0[1];
  v3 = v0[10];

  return v2(v3);
}

uint64_t sub_252C0404C()
{
  v1 = v0[4];
  sub_252C04788(v0[6]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_252C040D8(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v41 = a3;
  v47 = *MEMORY[0x277D85DE8];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v42 = &v41 - v10;
  type metadata accessor for HomeAutomationEntityResponses.Builder();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D84F90];
  *(v11 + 16) = MEMORY[0x277D84F90];
  swift_beginAccess();
  v13 = *a2;
  type metadata accessor for HomeAutomationEntityResponses();
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  swift_setDeallocating();
  swift_deallocClassInstance();
  *(v14 + 24) = v13;
  v15 = type metadata accessor for HomeAutomationSetSwingModeParameters(0);
  *(a1 + v15[9]) = v14;
  *(swift_allocObject() + 16) = v12;
  v16 = *a2;

  type metadata accessor for HomeAutomationBooleanResponses();
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  swift_setDeallocating();
  swift_deallocClassInstance();
  *(v17 + 24) = v16;
  v18 = v15[5];

  *(a1 + v18) = v17;
  memcpy(v46, (a4 + 112), sizeof(v46));
  memcpy(v45, (a4 + 112), 0x1F8uLL);
  v19 = v41;
  v20 = v41;
  sub_2529D291C(v46, &v44);
  v21 = sub_252953488(v19, v45, 0);

  v22 = v15[7];

  *(a1 + v22) = v21;
  v23 = 1;
  v24 = sub_25294833C(1u, 0, 0);
  if (v24)
  {
    v25 = v24;
    v26 = [v24 dictionary];
    if (v26)
    {
      v27 = v26;
      v28 = objc_opt_self();
      v45[0] = 0;
      v29 = [v28 dataWithPropertyList:v27 format:200 options:0 error:v45];
      v30 = v45[0];
      v31 = v42;
      if (v29)
      {
        v32 = sub_252E32D34();
        v34 = v33;

        sub_252E32D24();
        sub_252E362F4();

        sub_25296464C(v32, v34);
        v23 = 0;
      }

      else
      {
        v35 = v30;
        v36 = sub_252E32C54();

        swift_willThrow();
        v23 = 1;
      }
    }

    else
    {

      v31 = v42;
    }
  }

  else
  {
    v31 = v42;
  }

  v37 = sub_252E36324();
  v38 = *(*(v37 - 8) + 56);
  v38(v31, v23, 1, v37);
  sub_252956C98(v31, a1 + v15[10]);
  v39 = v43;
  sub_252E37024();
  v38(v39, 0, 1, v37);
  return sub_252956C98(v39, a1);
}

uint64_t sub_252C04524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25293B808;

  return sub_252C0104C(a1, a2, a3);
}

void *sub_252C045D8@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for SetSwingModeResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

BOOL sub_252C0463C(void *a1)
{
  v2 = [a1 userTask];
  if (!v2)
  {
LABEL_5:
    sub_252C515AC();
    return 0;
  }

  v3 = v2;
  v4 = [v2 taskType];

  if (v4 == 1)
  {
    v5 = [a1 userTask];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 attribute];

      return v7 == 22;
    }

    goto LABEL_5;
  }

  return 0;
}

uint64_t sub_252C046E0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25294B958;

  return sub_252C03C20(v2, v3, v4);
}

uint64_t sub_252C04788(uint64_t a1)
{
  v2 = type metadata accessor for HomeAutomationSetSwingModeParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_252C047E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25294B954;

  return sub_252C03850(a1, v4, v5, v6);
}

uint64_t sub_252C04898(__int16 a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_252E3C280;
  *(v4 + 32) = 0xD000000000000017;
  *(v4 + 40) = 0x8000000252E6FE70;
  v5 = MEMORY[0x277D839B0];
  *(v4 + 48) = a1 & 1;
  *(v4 + 72) = v5;
  *(v4 + 80) = 0x616572636E497369;
  *(v4 + 88) = 0xEA00000000006573;
  *(v4 + 96) = HIBYTE(a1) & 1;
  *(v4 + 120) = v5;
  *(v4 + 128) = 0xD000000000000011;
  *(v4 + 136) = 0x8000000252E8A0C0;
  if (a2)
  {
    v6 = sub_252E360E4();
    v7 = a2;
  }

  else
  {
    v7 = 0;
    v6 = 0;
    *(v4 + 152) = 0;
    *(v4 + 160) = 0;
  }

  *(v4 + 144) = v7;
  *(v4 + 168) = v6;

  return v4;
}

uint64_t sub_252C04998()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v17 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_252E3EF80;
  *(v4 + 32) = 0xD000000000000017;
  *(v4 + 40) = 0x8000000252E6FE70;
  v5 = MEMORY[0x277D839B0];
  *(v4 + 48) = *v0;
  *(v4 + 72) = v5;
  strcpy((v4 + 80), "intentContext");
  *(v4 + 94) = -4864;
  v6 = *(v0 + 8);
  if (v6)
  {
    v7 = type metadata accessor for HomeAutomationIntentContext(0);
    v8 = v6;
  }

  else
  {
    v8 = 0;
    v7 = 0;
    *(v4 + 104) = 0;
    *(v4 + 112) = 0;
  }

  *(v4 + 96) = v8;
  *(v4 + 120) = v7;
  *(v4 + 128) = 0x65736E6F70736572;
  *(v4 + 136) = 0xE900000000000073;
  v9 = *(v0 + 16);
  if (v9)
  {
    v10 = type metadata accessor for HomeAutomationEntityResponses();
    v11 = v9;
  }

  else
  {
    v11 = 0;
    v10 = 0;
    *(v4 + 152) = 0;
    *(v4 + 160) = 0;
  }

  *(v4 + 144) = v11;
  *(v4 + 168) = v10;
  *(v4 + 176) = 0xD000000000000011;
  *(v4 + 184) = 0x8000000252E8A660;
  v12 = type metadata accessor for HomeAutomationAlreadyOffParameters(0);
  sub_252938414(v0 + *(v12 + 28), v3, &qword_27F540298, &unk_252E3C270);
  v13 = sub_252E36324();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v3, 1, v13) == 1)
  {

    sub_25293847C(v3, &qword_27F540298, &unk_252E3C270);
    *(v4 + 192) = 0u;
    *(v4 + 208) = 0u;
  }

  else
  {
    *(v4 + 216) = v13;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v4 + 192));
    (*(v14 + 32))(boxed_opaque_existential_0, v3, v13);
  }

  return v4;
}

uint64_t sub_252C04C14()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v26 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_252E419D0;
  *(v8 + 32) = 0x6C646E7542707061;
  *(v8 + 40) = 0xEB00000000444965;
  sub_252938414(v1, v7, &qword_27F540298, &unk_252E3C270);
  v9 = sub_252E36324();
  v10 = *(v9 - 8);
  v26 = *(v10 + 48);
  if (v26(v7, 1, v9) == 1)
  {
    sub_25293847C(v7, &qword_27F540298, &unk_252E3C270);
    *(v8 + 48) = 0u;
    *(v8 + 64) = 0u;
  }

  else
  {
    *(v8 + 72) = v9;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v8 + 48));
    (*(v10 + 32))(boxed_opaque_existential_0, v7, v9);
  }

  *(v8 + 80) = 0x6552797469746E65;
  *(v8 + 88) = 0xEF7365736E6F7073;
  v12 = type metadata accessor for HomeAutomationAsyncFailedToSetPolledStateParameters(0);
  v13 = *(v1 + v12[5]);
  v27 = v5;
  if (v13)
  {
    v14 = type metadata accessor for HomeAutomationEntityResponses();
    v15 = v13;
  }

  else
  {
    v15 = 0;
    v14 = 0;
    *(v8 + 104) = 0;
    *(v8 + 112) = 0;
  }

  *(v8 + 96) = v15;
  *(v8 + 120) = v14;
  *(v8 + 128) = 0xD000000000000017;
  *(v8 + 136) = 0x8000000252E6FE70;
  v16 = MEMORY[0x277D839B0];
  *(v8 + 144) = *(v1 + v12[6]);
  *(v8 + 168) = v16;
  *(v8 + 176) = 0xD000000000000010;
  *(v8 + 184) = 0x8000000252E8A020;
  v17 = *(v1 + v12[7]);
  if (v17)
  {
    v18 = type metadata accessor for HomeAutomationEntityResponses();
    v19 = v17;
  }

  else
  {
    v19 = 0;
    v18 = 0;
    *(v8 + 200) = 0;
    *(v8 + 208) = 0;
  }

  *(v8 + 192) = v19;
  *(v8 + 216) = v18;
  strcpy((v8 + 224), "intentContext");
  *(v8 + 238) = -4864;
  v20 = *(v1 + v12[8]);
  if (v20)
  {
    v21 = type metadata accessor for HomeAutomationIntentContext(0);
    v22 = v20;
  }

  else
  {
    v22 = 0;
    v21 = 0;
    *(v8 + 248) = 0;
    *(v8 + 256) = 0;
  }

  *(v8 + 240) = v22;
  *(v8 + 264) = v21;
  *(v8 + 272) = 0xD000000000000011;
  *(v8 + 280) = 0x8000000252E69800;
  *(v8 + 288) = *(v1 + v12[9]);
  *(v8 + 312) = MEMORY[0x277D839B0];
  *(v8 + 320) = 0x5074657070696E73;
  *(v8 + 328) = 0xEF74754F68636E75;
  v23 = v27;
  sub_252938414(v1 + v12[10], v27, &qword_27F540298, &unk_252E3C270);
  if (v26(v23, 1, v9) == 1)
  {

    sub_25293847C(v23, &qword_27F540298, &unk_252E3C270);
    *(v8 + 336) = 0u;
    *(v8 + 352) = 0u;
  }

  else
  {
    *(v8 + 360) = v9;
    v24 = __swift_allocate_boxed_opaque_existential_0((v8 + 336));
    (*(v10 + 32))(v24, v23, v9);
  }

  return v8;
}

uint64_t sub_252C05030(uint64_t a1, char a2, uint64_t a3, char a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_252E3EF80;
  *(v8 + 32) = 0x6552797469746E65;
  *(v8 + 40) = 0xEF7365736E6F7073;
  if (a1)
  {
    v9 = type metadata accessor for HomeAutomationEntityResponses();
    v10 = a1;
  }

  else
  {
    v10 = 0;
    v9 = 0;
    *(v8 + 56) = 0;
    *(v8 + 64) = 0;
  }

  *(v8 + 48) = v10;
  *(v8 + 72) = v9;
  *(v8 + 80) = 0xD000000000000017;
  *(v8 + 88) = 0x8000000252E6FE70;
  v11 = MEMORY[0x277D839B0];
  *(v8 + 96) = a2 & 1;
  *(v8 + 120) = v11;
  strcpy((v8 + 128), "intentContext");
  *(v8 + 142) = -4864;
  if (a3)
  {
    v12 = type metadata accessor for HomeAutomationIntentContext(0);
    v13 = a3;
  }

  else
  {
    v13 = 0;
    v12 = 0;
    *(v8 + 152) = 0;
    *(v8 + 160) = 0;
  }

  *(v8 + 144) = v13;
  *(v8 + 168) = v12;
  *(v8 + 176) = 0xD000000000000010;
  *(v8 + 184) = 0x8000000252E69A10;
  *(v8 + 216) = v11;
  *(v8 + 192) = a4 & 1;

  return v8;
}

uint64_t sub_252C051A4(char a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_252E3C280;
  *(v6 + 32) = 0xD000000000000017;
  *(v6 + 40) = 0x8000000252E6FE70;
  v7 = MEMORY[0x277D839B0];
  *(v6 + 48) = a1;
  *(v6 + 72) = v7;
  strcpy((v6 + 80), "intentContext");
  *(v6 + 94) = -4864;
  if (a2)
  {
    v8 = type metadata accessor for HomeAutomationIntentContext(0);
    v9 = a2;
  }

  else
  {
    v9 = 0;
    v8 = 0;
    *(v6 + 104) = 0;
    *(v6 + 112) = 0;
  }

  *(v6 + 96) = v9;
  *(v6 + 120) = v8;
  *(v6 + 128) = 0xD000000000000010;
  *(v6 + 136) = 0x8000000252E72940;
  if (a3)
  {
    v10 = type metadata accessor for HomeAutomationEntityResponses();
    v11 = a3;
  }

  else
  {
    v11 = 0;
    v10 = 0;
    *(v6 + 152) = 0;
    *(v6 + 160) = 0;
  }

  *(v6 + 144) = v11;
  *(v6 + 168) = v10;

  return v6;
}

uint64_t sub_252C052D8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v26 - v6;
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_252E419C0;
  *(v10 + 32) = 0x6C646E7542707061;
  *(v10 + 40) = 0xEB00000000444965;
  sub_252938414(v0, v9, &qword_27F540298, &unk_252E3C270);
  v11 = sub_252E36324();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  v14 = v13(v9, 1, v11);
  v26 = v13;
  v27 = v4;
  if (v14 == 1)
  {
    sub_25293847C(v9, &qword_27F540298, &unk_252E3C270);
    *(v10 + 48) = 0u;
    *(v10 + 64) = 0u;
  }

  else
  {
    *(v10 + 72) = v11;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v10 + 48));
    (*(v12 + 32))(boxed_opaque_existential_0, v9, v11);
  }

  *(v10 + 80) = 0xD000000000000017;
  *(v10 + 88) = 0x8000000252E6FE70;
  v16 = type metadata accessor for HomeAutomationAsyncSceneFailuresParameters(0);
  v17 = MEMORY[0x277D839B0];
  *(v10 + 96) = *(v0 + v16[5]);
  *(v10 + 120) = v17;
  *(v10 + 128) = 0xD000000000000010;
  *(v10 + 136) = 0x8000000252E8A020;
  v18 = *(v0 + v16[6]);
  if (v18)
  {
    v19 = type metadata accessor for HomeAutomationEntityResponses();
    v20 = v18;
  }

  else
  {
    v20 = 0;
    v19 = 0;
    *(v10 + 152) = 0;
    *(v10 + 160) = 0;
  }

  *(v10 + 144) = v20;
  *(v10 + 168) = v19;
  *(v10 + 176) = 0xD000000000000012;
  *(v10 + 184) = 0x8000000252E8A290;
  *(v10 + 192) = *(v0 + v16[7]);
  *(v10 + 216) = v17;
  *(v10 + 224) = 0xD000000000000013;
  *(v10 + 232) = 0x8000000252E8A2B0;
  *(v10 + 240) = *(v0 + v16[8]);
  *(v10 + 264) = v17;
  strcpy((v10 + 272), "isSecureScene");
  *(v10 + 286) = -4864;
  *(v10 + 288) = *(v0 + v16[9]);
  *(v10 + 312) = v17;
  *(v10 + 320) = 0x6D614E656E656373;
  *(v10 + 328) = 0xE900000000000065;
  sub_252938414(v0 + v16[10], v7, &qword_27F540298, &unk_252E3C270);
  v21 = v26;
  if (v26(v7, 1, v11) == 1)
  {

    sub_25293847C(v7, &qword_27F540298, &unk_252E3C270);
    *(v10 + 336) = 0u;
    *(v10 + 352) = 0u;
  }

  else
  {
    *(v10 + 360) = v11;
    v22 = __swift_allocate_boxed_opaque_existential_0((v10 + 336));
    (*(v12 + 32))(v22, v7, v11);
  }

  v23 = v27;
  *(v10 + 368) = 0x5074657070696E73;
  *(v10 + 376) = 0xEF74754F68636E75;
  sub_252938414(v0 + v16[11], v23, &qword_27F540298, &unk_252E3C270);
  if (v21(v23, 1, v11) == 1)
  {
    sub_25293847C(v23, &qword_27F540298, &unk_252E3C270);
    *(v10 + 384) = 0u;
    *(v10 + 400) = 0u;
  }

  else
  {
    *(v10 + 408) = v11;
    v24 = __swift_allocate_boxed_opaque_existential_0((v10 + 384));
    (*(v12 + 32))(v24, v23, v11);
  }

  return v10;
}

uint64_t sub_252C05740()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_252E3EF90;
  *(v7 + 32) = 0x6C646E7542707061;
  *(v7 + 40) = 0xEB00000000444965;
  sub_252938414(v0, v6, &qword_27F540298, &unk_252E3C270);
  v8 = sub_252E36324();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v6, 1, v8) == 1)
  {
    sub_25293847C(v6, &qword_27F540298, &unk_252E3C270);
    *(v7 + 48) = 0u;
    *(v7 + 64) = 0u;
  }

  else
  {
    *(v7 + 72) = v8;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v7 + 48));
    (*(v9 + 32))(boxed_opaque_existential_0, v6, v8);
  }

  *(v7 + 80) = 0xD000000000000017;
  *(v7 + 88) = 0x8000000252E6FE70;
  v12 = type metadata accessor for HomeAutomationAsyncUnreachablePollingResponseParameters(0);
  v13 = MEMORY[0x277D839B0];
  *(v7 + 96) = *(v0 + v12[5]);
  *(v7 + 120) = v13;
  *(v7 + 128) = 0xD000000000000010;
  *(v7 + 136) = 0x8000000252E8A020;
  v14 = *(v0 + v12[6]);
  if (v14)
  {
    v15 = type metadata accessor for HomeAutomationEntityResponses();
    v16 = v14;
  }

  else
  {
    v16 = 0;
    v15 = 0;
    *(v7 + 152) = 0;
    *(v7 + 160) = 0;
  }

  *(v7 + 144) = v16;
  *(v7 + 168) = v15;
  *(v7 + 176) = 0x5074657070696E73;
  *(v7 + 184) = 0xEF74754F68636E75;
  sub_252938414(v0 + v12[7], v4, &qword_27F540298, &unk_252E3C270);
  if (v10(v4, 1, v8) == 1)
  {

    sub_25293847C(v4, &qword_27F540298, &unk_252E3C270);
    *(v7 + 192) = 0u;
    *(v7 + 208) = 0u;
  }

  else
  {
    *(v7 + 216) = v8;
    v17 = __swift_allocate_boxed_opaque_existential_0((v7 + 192));
    (*(v9 + 32))(v17, v4, v8);
  }

  *(v7 + 224) = 0xD00000000000001ALL;
  *(v7 + 232) = 0x8000000252E696C0;
  v18 = *(v0 + v12[8]);
  if (v18)
  {
    v19 = type metadata accessor for HomeAutomationEntityResponses();
  }

  else
  {
    v19 = 0;
    *(v7 + 248) = 0;
    *(v7 + 256) = 0;
  }

  *(v7 + 240) = v18;
  *(v7 + 264) = v19;

  return v7;
}

uint64_t sub_252C05A94(uint64_t a1, __int16 a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_252E3C280;
  *(v4 + 32) = 0xD000000000000016;
  *(v4 + 40) = 0x8000000252E8A910;
  if (a1)
  {
    v5 = sub_252E360E4();
    v6 = a1;
  }

  else
  {
    v6 = 0;
    v5 = 0;
    *(v4 + 56) = 0;
    *(v4 + 64) = 0;
  }

  *(v4 + 48) = v6;
  *(v4 + 72) = v5;
  *(v4 + 80) = 0xD000000000000017;
  *(v4 + 88) = 0x8000000252E6FE70;
  v7 = MEMORY[0x277D839B0];
  *(v4 + 96) = a2 & 1;
  *(v4 + 120) = v7;
  *(v4 + 128) = 0x616572636E497369;
  *(v4 + 136) = 0xEA00000000006573;
  *(v4 + 168) = v7;
  *(v4 + 144) = HIBYTE(a2) & 1;

  return v4;
}

uint64_t sub_252C05BDC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v15 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_252E3EF80;
  *(v4 + 32) = 0xD000000000000017;
  *(v4 + 40) = 0x8000000252E6FE70;
  v5 = MEMORY[0x277D839B0];
  *(v4 + 48) = *v0;
  *(v4 + 72) = v5;
  *(v4 + 80) = 0xD000000000000015;
  *(v4 + 88) = 0x8000000252E8A620;
  v6 = *(v0 + 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540600, &qword_252E3CF90);
  *(v4 + 96) = v6;
  *(v4 + 120) = v7;
  *(v4 + 128) = 0xD000000000000010;
  *(v4 + 136) = 0x8000000252E8A560;
  v8 = type metadata accessor for HomeAutomationBluetoothWakeUpParameters(0);
  sub_252938414(v0 + *(v8 + 24), v3, &qword_27F540298, &unk_252E3C270);
  v9 = sub_252E36324();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v3, 1, v9) == 1)
  {

    sub_25293847C(v3, &qword_27F540298, &unk_252E3C270);
    *(v4 + 144) = 0u;
    *(v4 + 160) = 0u;
  }

  else
  {
    *(v4 + 168) = v9;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v4 + 144));
    (*(v10 + 32))(boxed_opaque_existential_0, v3, v9);
  }

  strcpy((v4 + 176), "uniqueRoomName");
  *(v4 + 191) = -18;
  v12 = *(v0 + *(v8 + 28));
  if (v12)
  {
    v13 = type metadata accessor for HomeAutomationHomeLocation(0);
  }

  else
  {
    v13 = 0;
    *(v4 + 200) = 0;
    *(v4 + 208) = 0;
  }

  *(v4 + 192) = v12;
  *(v4 + 216) = v13;

  return v4;
}

uint64_t sub_252C05E4C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_252E3C280;
  *(v7 + 32) = 0x6C646E7542707061;
  *(v7 + 40) = 0xEB00000000444965;
  sub_252938414(v0, v6, &qword_27F540298, &unk_252E3C270);
  v8 = sub_252E36324();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v6, 1, v8) == 1)
  {
    sub_25293847C(v6, &qword_27F540298, &unk_252E3C270);
    *(v7 + 48) = 0u;
    *(v7 + 64) = 0u;
  }

  else
  {
    *(v7 + 72) = v8;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v7 + 48));
    (*(v9 + 32))(boxed_opaque_existential_0, v6, v8);
  }

  *(v7 + 80) = 0xD000000000000017;
  *(v7 + 88) = 0x8000000252E6FE70;
  v12 = type metadata accessor for HomeAutomationCalibrationInProgressParameters(0);
  v13 = MEMORY[0x277D839B0];
  *(v7 + 96) = *(v0 + *(v12 + 20));
  *(v7 + 120) = v13;
  *(v7 + 128) = 0x5074657070696E73;
  *(v7 + 136) = 0xEF74754F68636E75;
  sub_252938414(v0 + *(v12 + 24), v4, &qword_27F540298, &unk_252E3C270);
  if (v10(v4, 1, v8) == 1)
  {
    sub_25293847C(v4, &qword_27F540298, &unk_252E3C270);
    *(v7 + 144) = 0u;
    *(v7 + 160) = 0u;
  }

  else
  {
    *(v7 + 168) = v8;
    v14 = __swift_allocate_boxed_opaque_existential_0((v7 + 144));
    (*(v9 + 32))(v14, v4, v8);
  }

  return v7;
}

uint64_t sub_252C0610C(uint64_t (*a1)(void))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_252E3C280;
  *(v6 + 32) = 0x6C646E7542707061;
  *(v6 + 40) = 0xEB00000000444965;
  sub_252938414(v1, v5, &qword_27F540298, &unk_252E3C270);
  v7 = sub_252E36324();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    sub_25293847C(v5, &qword_27F540298, &unk_252E3C270);
    *(v6 + 48) = 0u;
    *(v6 + 64) = 0u;
  }

  else
  {
    *(v6 + 72) = v7;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v6 + 48));
    (*(v8 + 32))(boxed_opaque_existential_0, v5, v7);
  }

  *(v6 + 80) = 0xD000000000000017;
  *(v6 + 88) = 0x8000000252E6FE70;
  v10 = a1(0);
  v11 = MEMORY[0x277D839B0];
  *(v6 + 96) = *(v1 + *(v10 + 20));
  *(v6 + 120) = v11;
  *(v6 + 128) = 0x436572756C696166;
  *(v6 + 136) = 0xEB0000000065646FLL;
  v12 = v1 + *(v10 + 24);
  if (*(v12 + 8))
  {
    v13 = 0;
    *(v6 + 152) = 0;
    *(v6 + 160) = 0;
    v14 = 0;
  }

  else
  {
    v14 = *v12;
    v13 = MEMORY[0x277D839F8];
  }

  *(v6 + 144) = v14;
  *(v6 + 168) = v13;
  return v6;
}

uint64_t sub_252C06334()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v25 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v24 - v5;
  MEMORY[0x28223BE20](v4);
  v8 = &v24 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_252E527A0;
  *(v9 + 32) = 0xD000000000000017;
  *(v9 + 40) = 0x8000000252E6FE70;
  v10 = MEMORY[0x277D839B0];
  *(v9 + 48) = *v0;
  *(v9 + 72) = v10;
  strcpy((v9 + 80), "expectedState");
  *(v9 + 94) = -4864;
  v11 = type metadata accessor for HomeAutomationConvenienceAnswerParameters(0);
  sub_252938414(&v0[v11[5]], v8, &qword_27F540298, &unk_252E3C270);
  v12 = sub_252E36324();
  v13 = *(v12 - 8);
  v14 = *(v13 + 48);
  if (v14(v8, 1, v12) == 1)
  {
    sub_25293847C(v8, &qword_27F540298, &unk_252E3C270);
    *(v9 + 96) = 0u;
    *(v9 + 112) = 0u;
  }

  else
  {
    *(v9 + 120) = v12;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v9 + 96));
    (*(v13 + 32))(boxed_opaque_existential_0, v8, v12);
  }

  *(v9 + 128) = 0x7473657551736168;
  *(v9 + 136) = 0xEF657079546E6F69;
  *(v9 + 144) = v0[v11[6]];
  *(v9 + 168) = MEMORY[0x277D839B0];
  *(v9 + 176) = 0xD000000000000013;
  *(v9 + 184) = 0x8000000252E8A500;
  v16 = *&v0[v11[7]];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540600, &qword_252E3CF90);
  *(v9 + 192) = v16;
  v24 = v17;
  *(v9 + 216) = v17;
  *(v9 + 224) = 0xD000000000000010;
  *(v9 + 232) = 0x8000000252E8A520;
  sub_252938414(&v0[v11[8]], v6, &qword_27F540298, &unk_252E3C270);
  if (v14(v6, 1, v12) == 1)
  {

    sub_25293847C(v6, &qword_27F540298, &unk_252E3C270);
    *(v9 + 240) = 0u;
    *(v9 + 256) = 0u;
  }

  else
  {
    *(v9 + 264) = v12;
    v18 = __swift_allocate_boxed_opaque_existential_0((v9 + 240));
    (*(v13 + 32))(v18, v6, v12);
  }

  v19 = v25;
  strcpy((v9 + 272), "shouldFollowUp");
  *(v9 + 287) = -18;
  *(v9 + 288) = v0[v11[9]];
  v20 = MEMORY[0x277D839B0];
  *(v9 + 312) = MEMORY[0x277D839B0];
  *(v9 + 320) = 0xD000000000000012;
  *(v9 + 328) = 0x8000000252E8A540;
  *(v9 + 336) = v0[v11[10]];
  *(v9 + 360) = v20;
  strcpy((v9 + 368), "shouldSayYes");
  *(v9 + 381) = 0;
  *(v9 + 382) = -5120;
  *(v9 + 384) = v0[v11[11]];
  *(v9 + 408) = v20;
  *(v9 + 416) = 0xD000000000000010;
  *(v9 + 424) = 0x8000000252E8A560;
  sub_252938414(&v0[v11[12]], v19, &qword_27F540298, &unk_252E3C270);
  if (v14(v19, 1, v12) == 1)
  {
    sub_25293847C(v19, &qword_27F540298, &unk_252E3C270);
    *(v9 + 432) = 0u;
    *(v9 + 448) = 0u;
  }

  else
  {
    *(v9 + 456) = v12;
    v21 = __swift_allocate_boxed_opaque_existential_0((v9 + 432));
    (*(v13 + 32))(v21, v19, v12);
  }

  *(v9 + 464) = 0xD000000000000015;
  *(v9 + 472) = 0x8000000252E8A580;
  v22 = *&v0[v11[13]];
  *(v9 + 504) = v24;
  *(v9 + 480) = v22;

  return v9;
}

uint64_t sub_252C06814()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v12 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_252E3C280;
  *(v4 + 32) = 0xD000000000000017;
  *(v4 + 40) = 0x8000000252E6FE70;
  v5 = MEMORY[0x277D839B0];
  *(v4 + 48) = *v0;
  *(v4 + 72) = v5;
  strcpy((v4 + 80), "expectedState");
  *(v4 + 94) = -4864;
  v6 = type metadata accessor for HomeAutomationConvenienceAnswerFollowUpParameters(0);
  sub_252938414(&v0[*(v6 + 20)], v3, &qword_27F540298, &unk_252E3C270);
  v7 = sub_252E36324();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v3, 1, v7) == 1)
  {
    sub_25293847C(v3, &qword_27F540298, &unk_252E3C270);
    *(v4 + 96) = 0u;
    *(v4 + 112) = 0u;
  }

  else
  {
    *(v4 + 120) = v7;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v4 + 96));
    (*(v8 + 32))(boxed_opaque_existential_0, v3, v7);
  }

  *(v4 + 128) = 0x656C7069746C756DLL;
  *(v4 + 136) = 0xEF73746567726154;
  v10 = v0[*(v6 + 24)];
  *(v4 + 168) = v5;
  *(v4 + 144) = v10;
  return v4;
}

uint64_t sub_252C06A24()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v23 - v6;
  MEMORY[0x28223BE20](v5);
  v9 = &v23 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_252E3F1F0;
  *(v10 + 32) = 0x6C646E7542707061;
  *(v10 + 40) = 0xEB00000000444965;
  sub_252938414(v0, v9, &qword_27F540298, &unk_252E3C270);
  v11 = sub_252E36324();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (v13(v9, 1, v11) == 1)
  {
    sub_25293847C(v9, &qword_27F540298, &unk_252E3C270);
    *(v10 + 48) = 0u;
    *(v10 + 64) = 0u;
  }

  else
  {
    *(v10 + 72) = v11;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v10 + 48));
    (*(v12 + 32))(boxed_opaque_existential_0, v9, v11);
  }

  *(v10 + 80) = 0xD000000000000014;
  *(v10 + 88) = 0x8000000252E8A040;
  v15 = type metadata accessor for HomeAutomationDisambiguateFiltersParameters(0);
  sub_252938414(v0 + v15[5], v7, &qword_27F540298, &unk_252E3C270);
  if (v13(v7, 1, v11) == 1)
  {
    sub_25293847C(v7, &qword_27F540298, &unk_252E3C270);
    *(v10 + 96) = 0u;
    *(v10 + 112) = 0u;
  }

  else
  {
    *(v10 + 120) = v11;
    v16 = __swift_allocate_boxed_opaque_existential_0((v10 + 96));
    (*(v12 + 32))(v16, v7, v11);
  }

  *(v10 + 128) = 0xD000000000000014;
  *(v10 + 136) = 0x8000000252E8A060;
  sub_252938414(v0 + v15[6], v4, &qword_27F540298, &unk_252E3C270);
  if (v13(v4, 1, v11) == 1)
  {
    sub_25293847C(v4, &qword_27F540298, &unk_252E3C270);
    *(v10 + 144) = 0u;
    *(v10 + 160) = 0u;
  }

  else
  {
    *(v10 + 168) = v11;
    v17 = __swift_allocate_boxed_opaque_existential_0((v10 + 144));
    (*(v12 + 32))(v17, v4, v11);
  }

  *(v10 + 176) = 0x74616469646E6163;
  *(v10 + 184) = 0xEF73656D614E7365;
  v18 = *(v0 + v15[7]);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540600, &qword_252E3CF90);
  *(v10 + 192) = v18;
  *(v10 + 216) = v19;
  *(v10 + 224) = 0xD000000000000017;
  *(v10 + 232) = 0x8000000252E6FE70;
  v20 = MEMORY[0x277D839B0];
  *(v10 + 240) = *(v0 + v15[8]);
  *(v10 + 264) = v20;
  *(v10 + 272) = 0x736D657469;
  *(v10 + 280) = 0xE500000000000000;
  v21 = *(v0 + v15[9]);
  *(v10 + 312) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543F78, &qword_252E52860);
  *(v10 + 288) = v21;

  return v10;
}

uint64_t sub_252C06E1C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_252E3EF90;
  *(v1 + 32) = 0x6552797469746E65;
  *(v1 + 40) = 0xEF7365736E6F7073;
  v2 = *v0;
  v15 = v2;
  v3 = 0;
  if (v2)
  {
    v3 = type metadata accessor for HomeAutomationEntityResponses();
  }

  else
  {
    *(v1 + 56) = 0;
    *(v1 + 64) = 0;
  }

  *(v1 + 48) = v2;
  *(v1 + 72) = v3;
  *(v1 + 80) = 0xD000000000000017;
  *(v1 + 88) = 0x8000000252E6FE70;
  v4 = MEMORY[0x277D839B0];
  *(v1 + 96) = *(v0 + 8);
  *(v1 + 120) = v4;
  strcpy((v1 + 128), "intentContext");
  *(v1 + 142) = -4864;
  v5 = v0[2];
  v14 = v5;
  v6 = 0;
  if (v5)
  {
    v6 = type metadata accessor for HomeAutomationIntentContext(0);
  }

  else
  {
    *(v1 + 152) = 0;
    *(v1 + 160) = 0;
  }

  *(v1 + 144) = v5;
  *(v1 + 168) = v6;
  *(v1 + 176) = 0xD00000000000001FLL;
  *(v1 + 184) = 0x8000000252E8A4A0;
  if (v0[4])
  {
    v7 = 0;
    v8 = 0;
    *(v1 + 200) = 0;
    *(v1 + 208) = 0;
  }

  else
  {
    v7 = v0[3];
    v8 = MEMORY[0x277D839F8];
  }

  *(v1 + 192) = v7;
  *(v1 + 216) = v8;
  *(v1 + 224) = 0xD000000000000017;
  *(v1 + 232) = 0x8000000252E8A4C0;
  v9 = v0[5];
  v13 = v9;
  v10 = 0;
  if (v9)
  {
    v10 = type metadata accessor for HomeAutomationEntityResponses();
  }

  else
  {
    *(v1 + 248) = 0;
    *(v1 + 256) = 0;
  }

  *(v1 + 240) = v9;
  *(v1 + 264) = v10;
  sub_252938414(&v15, &v12, &qword_27F541B90, &qword_252E41C08);
  sub_252938414(&v14, &v12, &qword_27F543F80, &qword_252E52920);
  sub_252938414(&v13, &v12, &qword_27F541B90, &qword_252E41C08);
  return v1;
}

uint64_t sub_252C0700C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v22 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_252E3EF90;
  *(v8 + 32) = 0x6C646E7542707061;
  *(v8 + 40) = 0xEB00000000444965;
  sub_252938414(v1, v7, &qword_27F540298, &unk_252E3C270);
  v9 = sub_252E36324();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) == 1)
  {
    sub_25293847C(v7, &qword_27F540298, &unk_252E3C270);
    *(v8 + 48) = 0u;
    *(v8 + 64) = 0u;
  }

  else
  {
    *(v8 + 72) = v9;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v8 + 48));
    (*(v10 + 32))(boxed_opaque_existential_0, v7, v9);
  }

  *(v8 + 80) = 0xD000000000000017;
  *(v8 + 88) = 0x8000000252E6FE70;
  v13 = type metadata accessor for HomeAutomationFailureResponseParameters(0);
  v14 = MEMORY[0x277D839B0];
  *(v8 + 96) = *(v1 + v13[5]);
  *(v8 + 120) = v14;
  *(v8 + 128) = 0xD000000000000011;
  *(v8 + 136) = 0x8000000252E851F0;
  v15 = *(v1 + v13[6]);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540600, &qword_252E3CF90);
  *(v8 + 144) = v15;
  *(v8 + 168) = v16;
  *(v8 + 176) = 0xD000000000000010;
  *(v8 + 184) = 0x8000000252E8A020;
  v17 = *(v1 + v13[7]);
  if (v17)
  {
    v18 = type metadata accessor for HomeAutomationEntityResponses();
    v19 = v17;
  }

  else
  {
    v19 = 0;
    v18 = 0;
    *(v8 + 200) = 0;
    *(v8 + 208) = 0;
  }

  *(v8 + 192) = v19;
  *(v8 + 216) = v18;
  *(v8 + 224) = 0x5074657070696E73;
  *(v8 + 232) = 0xEF74754F68636E75;
  sub_252938414(v1 + v13[8], v5, &qword_27F540298, &unk_252E3C270);
  if (v11(v5, 1, v9) == 1)
  {

    sub_25293847C(v5, &qword_27F540298, &unk_252E3C270);
    *(v8 + 240) = 0u;
    *(v8 + 256) = 0u;
  }

  else
  {
    *(v8 + 264) = v9;
    v20 = __swift_allocate_boxed_opaque_existential_0((v8 + 240));
    (*(v10 + 32))(v20, v5, v9);
  }

  return v8;
}

uint64_t sub_252C07368()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v24 - v6;
  MEMORY[0x28223BE20](v5);
  v9 = &v24 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_252E3F1F0;
  *(v10 + 32) = 0x6C646E7542707061;
  *(v10 + 40) = 0xEB00000000444965;
  sub_252938414(v0, v9, &qword_27F540298, &unk_252E3C270);
  v11 = sub_252E36324();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (v13(v9, 1, v11) == 1)
  {
    sub_25293847C(v9, &qword_27F540298, &unk_252E3C270);
    *(v10 + 48) = 0u;
    *(v10 + 64) = 0u;
  }

  else
  {
    *(v10 + 72) = v11;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v10 + 48));
    (*(v12 + 32))(boxed_opaque_existential_0, v9, v11);
  }

  *(v10 + 80) = 0xD000000000000017;
  *(v10 + 88) = 0x8000000252E6FE70;
  found = type metadata accessor for HomeAutomationFoundNoMatchingEntitiesParameters(0);
  v16 = found;
  v17 = MEMORY[0x277D839B0];
  *(v10 + 96) = *(v0 + found[5]);
  *(v10 + 120) = v17;
  *(v10 + 128) = 0x436572756C696166;
  *(v10 + 136) = 0xEB0000000065646FLL;
  v18 = v0 + found[6];
  if (*(v18 + 8))
  {
    v19 = 0;
    *(v10 + 152) = 0;
    *(v10 + 160) = 0;
    v20 = 0;
  }

  else
  {
    v20 = *v18;
    v19 = MEMORY[0x277D839F8];
  }

  *(v10 + 144) = v20;
  *(v10 + 168) = v19;
  *(v10 + 176) = 0x656D614E656D6F68;
  *(v10 + 184) = 0xE800000000000000;
  sub_252938414(v0 + found[7], v7, &qword_27F540298, &unk_252E3C270);
  if (v13(v7, 1, v11) == 1)
  {
    sub_25293847C(v7, &qword_27F540298, &unk_252E3C270);
    *(v10 + 192) = 0u;
    *(v10 + 208) = 0u;
  }

  else
  {
    *(v10 + 216) = v11;
    v21 = __swift_allocate_boxed_opaque_existential_0((v10 + 192));
    (*(v12 + 32))(v21, v7, v11);
  }

  *(v10 + 224) = 0x7571655256547369;
  *(v10 + 232) = 0xEB00000000747365;
  *(v10 + 240) = *(v0 + v16[8]);
  *(v10 + 264) = v17;
  *(v10 + 272) = 0xD00000000000001ELL;
  *(v10 + 280) = 0x8000000252E6DE40;
  sub_252938414(v0 + v16[9], v4, &qword_27F540298, &unk_252E3C270);
  if (v13(v4, 1, v11) == 1)
  {
    sub_25293847C(v4, &qword_27F540298, &unk_252E3C270);
    *(v10 + 288) = 0u;
    *(v10 + 304) = 0u;
  }

  else
  {
    *(v10 + 312) = v11;
    v22 = __swift_allocate_boxed_opaque_existential_0((v10 + 288));
    (*(v12 + 32))(v22, v4, v11);
  }

  return v10;
}

uint64_t sub_252C07778(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_252E3EF80;
  *(v8 + 32) = 0xD000000000000014;
  *(v8 + 40) = 0x8000000252E89FE0;
  if (a1)
  {
    v9 = type metadata accessor for HomeAutomationCarbonOxideResponses();
    v10 = a1;
  }

  else
  {
    v10 = 0;
    v9 = 0;
    *(v8 + 56) = 0;
    *(v8 + 64) = 0;
  }

  *(v8 + 48) = v10;
  *(v8 + 72) = v9;
  *(v8 + 80) = 0xD00000000000001FLL;
  *(v8 + 88) = 0x8000000252E8A000;
  if (a2)
  {
    v11 = type metadata accessor for HomeAutomationCarbonOxideResponses();
    v12 = a2;
  }

  else
  {
    v12 = 0;
    v11 = 0;
    *(v8 + 104) = 0;
    *(v8 + 112) = 0;
  }

  *(v8 + 96) = v12;
  *(v8 + 120) = v11;
  *(v8 + 128) = 0xD000000000000017;
  *(v8 + 136) = 0x8000000252E6FE70;
  v13 = MEMORY[0x277D839B0];
  *(v8 + 144) = a3 & 1;
  *(v8 + 168) = v13;
  strcpy((v8 + 176), "intentContext");
  *(v8 + 190) = -4864;
  if (a4)
  {
    v14 = type metadata accessor for HomeAutomationIntentContext(0);
    v15 = a4;
  }

  else
  {
    v15 = 0;
    v14 = 0;
    *(v8 + 200) = 0;
    *(v8 + 208) = 0;
  }

  *(v8 + 192) = v15;
  *(v8 + 216) = v14;

  return v8;
}

uint64_t sub_252C078FC(char a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_252E3C280;
  *(v6 + 32) = 0xD000000000000017;
  *(v6 + 40) = 0x8000000252E6FE70;
  v7 = MEMORY[0x277D839B0];
  *(v6 + 48) = a1;
  *(v6 + 72) = v7;
  *(v6 + 80) = 0xD000000000000015;
  *(v6 + 88) = 0x8000000252E8A250;
  if (a2)
  {
    v8 = type metadata accessor for HomeAutomationBooleanResponses();
    v9 = a2;
  }

  else
  {
    v9 = 0;
    v8 = 0;
    *(v6 + 104) = 0;
    *(v6 + 112) = 0;
  }

  *(v6 + 96) = v9;
  *(v6 + 120) = v8;
  *(v6 + 128) = 0xD000000000000013;
  *(v6 + 136) = 0x8000000252E8A270;
  if (a3)
  {
    v10 = type metadata accessor for HomeAutomationNumericEntityResponses();
    v11 = a3;
  }

  else
  {
    v11 = 0;
    v10 = 0;
    *(v6 + 152) = 0;
    *(v6 + 160) = 0;
  }

  *(v6 + 144) = v11;
  *(v6 + 168) = v10;

  return v6;
}

uint64_t sub_252C07A24(char a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_252E3C280;
  *(v6 + 32) = 0xD000000000000017;
  *(v6 + 40) = 0x8000000252E6FE70;
  v7 = MEMORY[0x277D839B0];
  *(v6 + 48) = a1;
  *(v6 + 72) = v7;
  *(v6 + 80) = 0xD000000000000013;
  *(v6 + 88) = 0x8000000252E8A8D0;
  if (a2)
  {
    v8 = type metadata accessor for HomeAutomationEntityResponses();
    v9 = a2;
  }

  else
  {
    v9 = 0;
    v8 = 0;
    *(v6 + 104) = 0;
    *(v6 + 112) = 0;
  }

  *(v6 + 96) = v9;
  *(v6 + 120) = v8;
  *(v6 + 128) = 0xD000000000000010;
  *(v6 + 136) = 0x8000000252E8A8F0;
  if (a3)
  {
    v10 = type metadata accessor for HomeAutomationBooleanResponses();
    v11 = a3;
  }

  else
  {
    v11 = 0;
    v10 = 0;
    *(v6 + 152) = 0;
    *(v6 + 160) = 0;
  }

  *(v6 + 144) = v11;
  *(v6 + 168) = v10;

  return v6;
}

uint64_t sub_252C07B4C(char a1, uint64_t a2, int a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_252E3EF90;
  *(v6 + 32) = 0xD000000000000017;
  *(v6 + 40) = 0x8000000252E6FE70;
  v7 = MEMORY[0x277D839B0];
  *(v6 + 48) = a1;
  *(v6 + 72) = v7;
  strcpy((v6 + 80), "getResponses");
  *(v6 + 93) = 0;
  *(v6 + 94) = -5120;
  if (a2)
  {
    v8 = type metadata accessor for HomeAutomationClimateResponses();
    v9 = a2;
  }

  else
  {
    v9 = 0;
    v8 = 0;
    *(v6 + 104) = 0;
    *(v6 + 112) = 0;
  }

  *(v6 + 96) = v9;
  *(v6 + 120) = v8;
  strcpy((v6 + 128), "hasYesNoAnswer");
  *(v6 + 143) = -18;
  *(v6 + 144) = a3 & 1;
  *(v6 + 168) = v7;
  strcpy((v6 + 176), "isModeQuestion");
  *(v6 + 191) = -18;
  *(v6 + 192) = BYTE1(a3) & 1;
  *(v6 + 216) = v7;
  strcpy((v6 + 224), "isYesNoAnswer");
  *(v6 + 238) = -4864;
  *(v6 + 264) = v7;
  *(v6 + 240) = BYTE2(a3) & 1;

  return v6;
}

uint64_t sub_252C07CF4(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_252E3EF80;
  *(v8 + 32) = 0xD000000000000017;
  *(v8 + 40) = 0x8000000252E6FE70;
  v9 = MEMORY[0x277D839B0];
  *(v8 + 48) = a1;
  *(v8 + 72) = v9;
  *(v8 + 80) = 0xD000000000000011;
  *(v8 + 88) = 0x8000000252E851F0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540600, &qword_252E3CF90);
  *(v8 + 96) = a2;
  *(v8 + 120) = v10;
  *(v8 + 128) = 0xD000000000000015;
  *(v8 + 136) = 0x8000000252E85230;
  *(v8 + 144) = a3;
  *(v8 + 168) = v10;
  *(v8 + 176) = 0xD000000000000016;
  *(v8 + 216) = v10;
  *(v8 + 184) = 0x8000000252E85210;
  *(v8 + 192) = a4;

  return v8;
}

uint64_t sub_252C07E14()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v17 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v7 = swift_allocObject();
  *(v7 + 32) = 0xD000000000000017;
  *(v7 + 40) = 0x8000000252E6FE70;
  v8 = MEMORY[0x277D839B0];
  *(v7 + 48) = *v0;
  *(v7 + 16) = xmmword_252E3F1F0;
  *(v7 + 72) = v8;
  *(v7 + 80) = 0xD000000000000010;
  *(v7 + 88) = 0x8000000252E89B30;
  v9 = type metadata accessor for HomeAutomationPromptForUserTaskParameters(0);
  sub_252938414(&v0[v9[5]], v6, &qword_27F540298, &unk_252E3C270);
  v10 = sub_252E36324();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v6, 1, v10) == 1)
  {
    sub_25293847C(v6, &qword_27F540298, &unk_252E3C270);
    *(v7 + 96) = 0u;
    *(v7 + 112) = 0u;
  }

  else
  {
    *(v7 + 120) = v10;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v7 + 96));
    (*(v11 + 32))(boxed_opaque_existential_0, v6, v10);
  }

  strcpy((v7 + 128), "missingPercent");
  *(v7 + 143) = -18;
  *(v7 + 144) = v0[v9[6]];
  *(v7 + 168) = v8;
  *(v7 + 176) = 0xD00000000000001ALL;
  *(v7 + 184) = 0x8000000252E8A810;
  *(v7 + 192) = v0[v9[7]];
  *(v7 + 216) = v8;
  *(v7 + 224) = 0xD000000000000010;
  *(v7 + 232) = 0x8000000252E764C0;
  sub_252938414(&v0[v9[8]], v4, &qword_27F540298, &unk_252E3C270);
  if (v12(v4, 1, v10) == 1)
  {
    sub_25293847C(v4, &qword_27F540298, &unk_252E3C270);
    *(v7 + 240) = 0u;
    *(v7 + 256) = 0u;
  }

  else
  {
    *(v7 + 264) = v10;
    v14 = __swift_allocate_boxed_opaque_existential_0((v7 + 240));
    (*(v11 + 32))(v14, v4, v10);
  }

  *(v7 + 272) = 0xD000000000000011;
  *(v7 + 280) = 0x8000000252E764A0;
  v15 = *&v0[v9[9]];
  *(v7 + 312) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540600, &qword_252E3CF90);
  *(v7 + 288) = v15;

  return v7;
}

uint64_t sub_252C08158()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v16 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_252E3EF90;
  *(v4 + 32) = 0xD000000000000017;
  *(v4 + 40) = 0x8000000252E6FE70;
  v5 = MEMORY[0x277D839B0];
  *(v4 + 48) = *v0;
  *(v4 + 72) = v5;
  strcpy((v4 + 80), "intentContext");
  *(v4 + 94) = -4864;
  v6 = *(v0 + 8);
  if (v6)
  {
    v7 = type metadata accessor for HomeAutomationIntentContext(0);
    v8 = v6;
  }

  else
  {
    v8 = 0;
    v7 = 0;
    *(v4 + 104) = 0;
    *(v4 + 112) = 0;
  }

  *(v4 + 96) = v8;
  *(v4 + 120) = v7;
  *(v4 + 128) = 0x6572756365537369;
  *(v4 + 136) = 0xEF74736575716552;
  *(v4 + 144) = *(v0 + 16);
  *(v4 + 168) = v5;
  *(v4 + 176) = 0xD000000000000012;
  *(v4 + 184) = 0x8000000252E728F0;
  v9 = type metadata accessor for HomeAutomationRequestSentParameters(0);
  sub_252938414(v0 + *(v9 + 28), v3, &qword_27F540298, &unk_252E3C270);
  v10 = sub_252E36324();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v3, 1, v10) == 1)
  {

    sub_25293847C(v3, &qword_27F540298, &unk_252E3C270);
    *(v4 + 192) = 0u;
    *(v4 + 208) = 0u;
  }

  else
  {
    *(v4 + 216) = v10;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v4 + 192));
    (*(v11 + 32))(boxed_opaque_existential_0, v3, v10);
  }

  *(v4 + 224) = 0xD000000000000010;
  *(v4 + 232) = 0x8000000252E72940;
  v13 = *(v0 + *(v9 + 32));
  if (v13)
  {
    v14 = type metadata accessor for HomeAutomationEntityResponses();
  }

  else
  {
    v14 = 0;
    *(v4 + 248) = 0;
    *(v4 + 256) = 0;
  }

  *(v4 + 240) = v13;
  *(v4 + 264) = v14;

  return v4;
}

uint64_t sub_252C08400(uint64_t (*a1)(void))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v28 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v27 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v27 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v27 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_252E3EF90;
  *(v14 + 32) = 0x6C646E7542707061;
  *(v14 + 40) = 0xEB00000000444965;
  sub_252938414(v1, v13, &qword_27F540298, &unk_252E3C270);
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

  *(v14 + 80) = 0xD000000000000017;
  *(v14 + 88) = 0x8000000252E6FE70;
  v19 = a1(0);
  v20 = MEMORY[0x277D839B0];
  *(v14 + 96) = *(v1 + v19[5]);
  *(v14 + 120) = v20;
  *(v14 + 128) = 0x6D614E656E656373;
  *(v14 + 136) = 0xE900000000000065;
  sub_252938414(v1 + v19[6], v11, &qword_27F540298, &unk_252E3C270);
  if (v17(v11, 1, v15) == 1)
  {
    sub_25293847C(v11, &qword_27F540298, &unk_252E3C270);
    *(v14 + 144) = 0u;
    *(v14 + 160) = 0u;
  }

  else
  {
    *(v14 + 168) = v15;
    v21 = __swift_allocate_boxed_opaque_existential_0((v14 + 144));
    (*(v16 + 32))(v21, v11, v15);
  }

  *(v14 + 176) = 0x707954656E656373;
  *(v14 + 184) = 0xE900000000000065;
  sub_252938414(v1 + v19[7], v8, &qword_27F540298, &unk_252E3C270);
  if (v17(v8, 1, v15) == 1)
  {
    sub_25293847C(v8, &qword_27F540298, &unk_252E3C270);
    *(v14 + 192) = 0u;
    *(v14 + 208) = 0u;
  }

  else
  {
    *(v14 + 216) = v15;
    v22 = __swift_allocate_boxed_opaque_existential_0((v14 + 192));
    (*(v16 + 32))(v22, v8, v15);
  }

  *(v14 + 224) = 0x5074657070696E73;
  *(v14 + 232) = 0xEF74754F68636E75;
  v23 = v1 + v19[8];
  v24 = v28;
  sub_252938414(v23, v28, &qword_27F540298, &unk_252E3C270);
  if (v17(v24, 1, v15) == 1)
  {
    sub_25293847C(v24, &qword_27F540298, &unk_252E3C270);
    *(v14 + 240) = 0u;
    *(v14 + 256) = 0u;
  }

  else
  {
    *(v14 + 264) = v15;
    v25 = __swift_allocate_boxed_opaque_existential_0((v14 + 240));
    (*(v16 + 32))(v25, v24, v15);
  }

  return v14;
}

uint64_t sub_252C08850()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v22 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_252E419D0;
  *(v8 + 32) = 0x6C646E7542707061;
  *(v8 + 40) = 0xEB00000000444965;
  sub_252938414(v1, v7, &qword_27F540298, &unk_252E3C270);
  v9 = sub_252E36324();
  v10 = *(v9 - 8);
  v23 = *(v10 + 48);
  if (v23(v7, 1, v9) == 1)
  {
    sub_25293847C(v7, &qword_27F540298, &unk_252E3C270);
    *(v8 + 48) = 0u;
    *(v8 + 64) = 0u;
  }

  else
  {
    *(v8 + 72) = v9;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v8 + 48));
    (*(v10 + 32))(boxed_opaque_existential_0, v7, v9);
  }

  *(v8 + 80) = 0xD000000000000017;
  *(v8 + 88) = 0x8000000252E6FE70;
  v12 = type metadata accessor for HomeAutomationScenePartialFailureParameters(0);
  v13 = MEMORY[0x277D839B0];
  *(v8 + 96) = *(v1 + v12[5]);
  *(v8 + 120) = v13;
  *(v8 + 128) = 0xD000000000000010;
  *(v8 + 136) = 0x8000000252E8A020;
  v14 = *(v1 + v12[6]);
  if (v14)
  {
    v15 = type metadata accessor for HomeAutomationEntityResponses();
    v16 = v14;
  }

  else
  {
    v16 = 0;
    v15 = 0;
    *(v8 + 152) = 0;
    *(v8 + 160) = 0;
  }

  *(v8 + 144) = v16;
  *(v8 + 168) = v15;
  *(v8 + 176) = 0xD000000000000018;
  *(v8 + 184) = 0x8000000252E8A350;
  *(v8 + 192) = *(v1 + v12[7]);
  *(v8 + 216) = v13;
  *(v8 + 224) = 0x786F567369;
  *(v8 + 232) = 0xE500000000000000;
  *(v8 + 240) = *(v1 + v12[8]);
  *(v8 + 264) = v13;
  *(v8 + 272) = 0xD000000000000016;
  *(v8 + 280) = 0x8000000252E8A370;
  v17 = *(v1 + v12[9]);
  if (v17)
  {
    v18 = type metadata accessor for HomeAutomationEntityResponses();
    v19 = v17;
  }

  else
  {
    v19 = 0;
    v18 = 0;
    *(v8 + 296) = 0;
    *(v8 + 304) = 0;
  }

  *(v8 + 288) = v19;
  *(v8 + 312) = v18;
  *(v8 + 320) = 0x5074657070696E73;
  *(v8 + 328) = 0xEF74754F68636E75;
  sub_252938414(v1 + v12[10], v5, &qword_27F540298, &unk_252E3C270);
  if (v23(v5, 1, v9) == 1)
  {

    sub_25293847C(v5, &qword_27F540298, &unk_252E3C270);
    *(v8 + 336) = 0u;
    *(v8 + 352) = 0u;
  }

  else
  {
    *(v8 + 360) = v9;
    v20 = __swift_allocate_boxed_opaque_existential_0((v8 + 336));
    (*(v10 + 32))(v20, v5, v9);
  }

  return v8;
}

uint64_t sub_252C08C10()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v30 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_252E419C0;
  *(v7 + 32) = 0x6C646E7542707061;
  *(v7 + 40) = 0xEB00000000444965;
  sub_252938414(v0, v6, &qword_27F540298, &unk_252E3C270);
  v8 = sub_252E36324();
  v9 = *(v8 - 8);
  v29 = *(v9 + 48);
  if (v29(v6, 1, v8) == 1)
  {
    sub_25293847C(v6, &qword_27F540298, &unk_252E3C270);
    *(v7 + 48) = 0u;
    *(v7 + 64) = 0u;
  }

  else
  {
    *(v7 + 72) = v8;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v7 + 48));
    (*(v9 + 32))(boxed_opaque_existential_0, v6, v8);
  }

  *(v7 + 80) = 0x6974616D6F747561;
  *(v7 + 88) = 0xEA00000000006E6FLL;
  v11 = type metadata accessor for HomeAutomationScheduleFutureActionParameters(0);
  v12 = *(v1 + v11[5]);
  if (v12)
  {
    v13 = type metadata accessor for HomeAutomationAutomation();
    v14 = v12;
  }

  else
  {
    v14 = 0;
    v13 = 0;
    *(v7 + 104) = 0;
    *(v7 + 112) = 0;
  }

  *(v7 + 96) = v14;
  *(v7 + 120) = v13;
  *(v7 + 128) = 0xD000000000000017;
  *(v7 + 136) = 0x8000000252E6FE70;
  v15 = MEMORY[0x277D839B0];
  *(v7 + 144) = *(v1 + v11[6]);
  *(v7 + 168) = v15;
  strcpy((v7 + 176), "intentContext");
  *(v7 + 190) = -4864;
  v16 = *(v1 + v11[7]);
  if (v16)
  {
    v17 = type metadata accessor for HomeAutomationIntentContext(0);
    v18 = v16;
  }

  else
  {
    v18 = 0;
    v17 = 0;
    *(v7 + 200) = 0;
    *(v7 + 208) = 0;
  }

  *(v7 + 192) = v18;
  *(v7 + 216) = v17;
  *(v7 + 224) = 0xD00000000000001ALL;
  *(v7 + 232) = 0x8000000252E8A330;
  *(v7 + 240) = *(v1 + v11[8]);
  *(v7 + 264) = v15;
  strcpy((v7 + 272), "labelResponses");
  *(v7 + 287) = -18;
  v19 = *(v1 + v11[9]);
  if (v19)
  {
    v20 = type metadata accessor for HomeAutomationEntityResponses();
    v21 = v19;
  }

  else
  {
    v21 = 0;
    v20 = 0;
    *(v7 + 296) = 0;
    *(v7 + 304) = 0;
  }

  *(v7 + 288) = v21;
  *(v7 + 312) = v20;
  *(v7 + 320) = 0x65736E6F70736572;
  *(v7 + 328) = 0xE900000000000073;
  v22 = *(v1 + v11[10]);
  if (v22)
  {
    v23 = type metadata accessor for HomeAutomationEntityResponses();
    v24 = v22;
  }

  else
  {
    v24 = 0;
    v23 = 0;
    *(v7 + 344) = 0;
    *(v7 + 352) = 0;
  }

  *(v7 + 336) = v24;
  *(v7 + 360) = v23;
  *(v7 + 368) = 0x5074657070696E73;
  *(v7 + 376) = 0xEF74754F68636E75;
  v25 = v1 + v11[11];
  v26 = v30;
  sub_252938414(v25, v30, &qword_27F540298, &unk_252E3C270);
  if (v29(v26, 1, v8) == 1)
  {

    sub_25293847C(v26, &qword_27F540298, &unk_252E3C270);
    *(v7 + 384) = 0u;
    *(v7 + 400) = 0u;
  }

  else
  {
    *(v7 + 408) = v8;
    v27 = __swift_allocate_boxed_opaque_existential_0((v7 + 384));
    (*(v9 + 32))(v27, v26, v8);
  }

  return v7;
}

uint64_t sub_252C09084()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v33 - v6;
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v33 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v33 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_252E419C0;
  *(v13 + 32) = 0x6C646E7542707061;
  *(v13 + 40) = 0xEB00000000444965;
  sub_252938414(v0, v12, &qword_27F540298, &unk_252E3C270);
  v14 = sub_252E36324();
  v15 = *(v14 - 8);
  v36 = *(v15 + 48);
  v16 = v36(v12, 1, v14);
  v35 = v15;
  if (v16 == 1)
  {
    sub_25293847C(v12, &qword_27F540298, &unk_252E3C270);
    *(v13 + 48) = 0u;
    *(v13 + 64) = 0u;
  }

  else
  {
    *(v13 + 72) = v14;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v13 + 48));
    (*(v15 + 32))(boxed_opaque_existential_0, v12, v14);
  }

  *(v13 + 80) = 0x6974616D6F747561;
  *(v13 + 88) = 0xEA00000000006E6FLL;
  v18 = type metadata accessor for HomeAutomationScheduleFutureSceneParameters(0);
  v19 = *(v0 + v18[5]);
  v33 = v7;
  v34 = v4;
  if (v19)
  {
    v20 = type metadata accessor for HomeAutomationAutomation();
    v21 = v19;
  }

  else
  {
    v21 = 0;
    v20 = 0;
    *(v13 + 104) = 0;
    *(v13 + 112) = 0;
  }

  *(v13 + 96) = v21;
  *(v13 + 120) = v20;
  *(v13 + 128) = 0xD000000000000017;
  *(v13 + 136) = 0x8000000252E6FE70;
  v22 = MEMORY[0x277D839B0];
  *(v13 + 144) = *(v0 + v18[6]);
  *(v13 + 168) = v22;
  strcpy((v13 + 176), "intentContext");
  *(v13 + 190) = -4864;
  v23 = *(v0 + v18[7]);
  if (v23)
  {
    v24 = type metadata accessor for HomeAutomationIntentContext(0);
    v25 = v23;
  }

  else
  {
    v25 = 0;
    v24 = 0;
    *(v13 + 200) = 0;
    *(v13 + 208) = 0;
  }

  *(v13 + 192) = v25;
  *(v13 + 216) = v24;
  *(v13 + 224) = 0xD00000000000001ALL;
  *(v13 + 232) = 0x8000000252E8A330;
  *(v13 + 240) = *(v0 + v18[8]);
  *(v13 + 264) = v22;
  *(v13 + 272) = 0x6D614E656E656373;
  *(v13 + 280) = 0xE900000000000065;
  sub_252938414(v0 + v18[9], v10, &qword_27F540298, &unk_252E3C270);
  if (v36(v10, 1, v14) == 1)
  {

    sub_25293847C(v10, &qword_27F540298, &unk_252E3C270);
    *(v13 + 288) = 0u;
    *(v13 + 304) = 0u;
  }

  else
  {
    *(v13 + 312) = v14;
    v26 = __swift_allocate_boxed_opaque_existential_0((v13 + 288));
    (*(v35 + 32))(v26, v10, v14);
  }

  v28 = v33;
  v27 = v34;
  *(v13 + 320) = 0x707954656E656373;
  *(v13 + 328) = 0xE900000000000065;
  sub_252938414(v0 + v18[10], v28, &qword_27F540298, &unk_252E3C270);
  if (v36(v28, 1, v14) == 1)
  {
    sub_25293847C(v28, &qword_27F540298, &unk_252E3C270);
    *(v13 + 336) = 0u;
    *(v13 + 352) = 0u;
    v29 = v35;
  }

  else
  {
    *(v13 + 360) = v14;
    v30 = __swift_allocate_boxed_opaque_existential_0((v13 + 336));
    v29 = v35;
    (*(v35 + 32))(v30, v28, v14);
  }

  *(v13 + 368) = 0x5074657070696E73;
  *(v13 + 376) = 0xEF74754F68636E75;
  sub_252938414(v0 + v18[11], v27, &qword_27F540298, &unk_252E3C270);
  if (v36(v27, 1, v14) == 1)
  {
    sub_25293847C(v27, &qword_27F540298, &unk_252E3C270);
    *(v13 + 384) = 0u;
    *(v13 + 400) = 0u;
  }

  else
  {
    *(v13 + 408) = v14;
    v31 = __swift_allocate_boxed_opaque_existential_0((v13 + 384));
    (*(v29 + 32))(v31, v27, v14);
  }

  return v13;
}

uint64_t sub_252C09648()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v23 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_252E3EF90;
  *(v8 + 32) = 0x6C646E7542707061;
  *(v8 + 40) = 0xEB00000000444965;
  sub_252938414(v1, v7, &qword_27F540298, &unk_252E3C270);
  v9 = sub_252E36324();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) == 1)
  {
    sub_25293847C(v7, &qword_27F540298, &unk_252E3C270);
    *(v8 + 48) = 0u;
    *(v8 + 64) = 0u;
  }

  else
  {
    *(v8 + 72) = v9;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v8 + 48));
    (*(v10 + 32))(boxed_opaque_existential_0, v7, v9);
  }

  *(v8 + 80) = 0xD000000000000017;
  *(v8 + 88) = 0x8000000252E6FE70;
  v13 = type metadata accessor for HomeAutomationSetColorParameters(0);
  v14 = MEMORY[0x277D839B0];
  *(v8 + 96) = *(v1 + v13[5]);
  *(v8 + 120) = v14;
  strcpy((v8 + 128), "intentContext");
  *(v8 + 142) = -4864;
  v15 = *(v1 + v13[6]);
  if (v15)
  {
    v16 = type metadata accessor for HomeAutomationIntentContext(0);
    v17 = v15;
  }

  else
  {
    v17 = 0;
    v16 = 0;
    *(v8 + 152) = 0;
    *(v8 + 160) = 0;
  }

  *(v8 + 144) = v17;
  *(v8 + 168) = v16;
  strcpy((v8 + 176), "labelResponses");
  *(v8 + 191) = -18;
  v18 = *(v1 + v13[7]);
  if (v18)
  {
    v19 = type metadata accessor for HomeAutomationEntityResponses();
    v20 = v18;
  }

  else
  {
    v20 = 0;
    v19 = 0;
    *(v8 + 200) = 0;
    *(v8 + 208) = 0;
  }

  *(v8 + 192) = v20;
  *(v8 + 216) = v19;
  *(v8 + 224) = 0x5074657070696E73;
  *(v8 + 232) = 0xEF74754F68636E75;
  sub_252938414(v1 + v13[8], v5, &qword_27F540298, &unk_252E3C270);
  if (v11(v5, 1, v9) == 1)
  {

    sub_25293847C(v5, &qword_27F540298, &unk_252E3C270);
    *(v8 + 240) = 0u;
    *(v8 + 256) = 0u;
  }

  else
  {
    *(v8 + 264) = v9;
    v21 = __swift_allocate_boxed_opaque_existential_0((v8 + 240));
    (*(v10 + 32))(v21, v5, v9);
  }

  return v8;
}

uint64_t sub_252C099F4(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  v28 = a2;
  v4 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v28 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_252E419D0;
  *(v11 + 32) = 0x6C646E7542707061;
  *(v11 + 40) = 0xEB00000000444965;
  sub_252938414(v4, v10, &qword_27F540298, &unk_252E3C270);
  v12 = sub_252E36324();
  v13 = *(v12 - 8);
  v29 = *(v13 + 48);
  if (v29(v10, 1, v12) == 1)
  {
    sub_25293847C(v10, &qword_27F540298, &unk_252E3C270);
    *(v11 + 48) = 0u;
    *(v11 + 64) = 0u;
  }

  else
  {
    *(v11 + 72) = v12;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v11 + 48));
    (*(v13 + 32))(boxed_opaque_existential_0, v10, v12);
  }

  *(v11 + 80) = 0xD000000000000017;
  *(v11 + 88) = 0x8000000252E6FE70;
  v15 = a1(0);
  v16 = MEMORY[0x277D839B0];
  *(v11 + 96) = *(v4 + v15[5]);
  *(v11 + 120) = v16;
  *(v11 + 128) = 0x726F727245736168;
  *(v11 + 136) = 0xE900000000000073;
  *(v11 + 144) = *(v4 + v15[6]);
  *(v11 + 168) = v16;
  strcpy((v11 + 176), "intentContext");
  *(v11 + 190) = -4864;
  v17 = *(v4 + v15[7]);
  if (v17)
  {
    v18 = type metadata accessor for HomeAutomationIntentContext(0);
    v19 = v17;
  }

  else
  {
    v19 = 0;
    v18 = 0;
    *(v11 + 200) = 0;
    *(v11 + 208) = 0;
  }

  *(v11 + 192) = v19;
  *(v11 + 216) = v18;
  strcpy((v11 + 224), "labelResponses");
  *(v11 + 239) = -18;
  v20 = *(v4 + v15[8]);
  if (v20)
  {
    v21 = type metadata accessor for HomeAutomationEntityResponses();
    v22 = v20;
  }

  else
  {
    v22 = 0;
    v21 = 0;
    *(v11 + 248) = 0;
    *(v11 + 256) = 0;
  }

  *(v11 + 240) = v22;
  *(v11 + 264) = v21;
  *(v11 + 272) = 0x65736E6F70736572;
  *(v11 + 280) = 0xE900000000000073;
  v23 = *(v4 + v15[9]);
  if (v23)
  {
    v24 = v28(0);
    v25 = v23;
  }

  else
  {
    v25 = 0;
    v24 = 0;
    *(v11 + 296) = 0;
    *(v11 + 304) = 0;
  }

  *(v11 + 288) = v25;
  *(v11 + 312) = v24;
  *(v11 + 320) = 0x5074657070696E73;
  *(v11 + 328) = 0xEF74754F68636E75;
  sub_252938414(v4 + v15[10], v8, &qword_27F540298, &unk_252E3C270);
  if (v29(v8, 1, v12) == 1)
  {

    sub_25293847C(v8, &qword_27F540298, &unk_252E3C270);
    *(v11 + 336) = 0u;
    *(v11 + 352) = 0u;
  }

  else
  {
    *(v11 + 360) = v12;
    v26 = __swift_allocate_boxed_opaque_existential_0((v11 + 336));
    (*(v13 + 32))(v26, v8, v12);
  }

  return v11;
}

uint64_t sub_252C09E40(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v30 = a3;
  v6 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v30 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_252E3F1F0;
  *(v13 + 32) = 0x6C646E7542707061;
  *(v13 + 40) = 0xEB00000000444965;
  sub_252938414(v6, v12, &qword_27F540298, &unk_252E3C270);
  v14 = sub_252E36324();
  v15 = *(v14 - 8);
  v31 = *(v15 + 48);
  if (v31(v12, 1, v14) == 1)
  {
    sub_25293847C(v12, &qword_27F540298, &unk_252E3C270);
    *(v13 + 48) = 0u;
    *(v13 + 64) = 0u;
  }

  else
  {
    *(v13 + 72) = v14;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v13 + 48));
    (*(v15 + 32))(boxed_opaque_existential_0, v12, v14);
  }

  *(v13 + 80) = 0xD000000000000017;
  *(v13 + 88) = 0x8000000252E6FE70;
  v17 = a1(0);
  v18 = MEMORY[0x277D839B0];
  *(v13 + 96) = *(v6 + v17[5]);
  *(v13 + 120) = v18;
  strcpy((v13 + 128), "intentContext");
  *(v13 + 142) = -4864;
  v19 = *(v6 + v17[6]);
  if (v19)
  {
    v20 = type metadata accessor for HomeAutomationIntentContext(0);
    v21 = v19;
  }

  else
  {
    v21 = 0;
    v20 = 0;
    *(v13 + 152) = 0;
    *(v13 + 160) = 0;
  }

  *(v13 + 144) = v21;
  *(v13 + 168) = v20;
  strcpy((v13 + 176), "labelResponses");
  *(v13 + 191) = -18;
  v22 = *(v6 + v17[7]);
  if (v22)
  {
    v23 = a2(0);
    v24 = v22;
  }

  else
  {
    v24 = 0;
    v23 = 0;
    *(v13 + 200) = 0;
    *(v13 + 208) = 0;
  }

  *(v13 + 192) = v24;
  *(v13 + 216) = v23;
  *(v13 + 224) = 0x65736E6F70736572;
  *(v13 + 232) = 0xE900000000000073;
  v25 = *(v6 + v17[8]);
  if (v25)
  {
    v26 = v30(0);
    v27 = v25;
  }

  else
  {
    v27 = 0;
    v26 = 0;
    *(v13 + 248) = 0;
    *(v13 + 256) = 0;
  }

  *(v13 + 240) = v27;
  *(v13 + 264) = v26;
  *(v13 + 272) = 0x5074657070696E73;
  *(v13 + 280) = 0xEF74754F68636E75;
  sub_252938414(v6 + v17[9], v10, &qword_27F540298, &unk_252E3C270);
  if (v31(v10, 1, v14) == 1)
  {

    sub_25293847C(v10, &qword_27F540298, &unk_252E3C270);
    *(v13 + 288) = 0u;
    *(v13 + 304) = 0u;
  }

  else
  {
    *(v13 + 312) = v14;
    v28 = __swift_allocate_boxed_opaque_existential_0((v13 + 288));
    (*(v15 + 32))(v28, v10, v14);
  }

  return v13;
}

uint64_t sub_252C0A244()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v30 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_252E419D0;
  *(v7 + 32) = 0x6C646E7542707061;
  *(v7 + 40) = 0xEB00000000444965;
  sub_252938414(v0, v6, &qword_27F540298, &unk_252E3C270);
  v8 = sub_252E36324();
  v9 = *(v8 - 8);
  v29 = *(v9 + 48);
  if (v29(v6, 1, v8) == 1)
  {
    sub_25293847C(v6, &qword_27F540298, &unk_252E3C270);
    *(v7 + 48) = 0u;
    *(v7 + 64) = 0u;
  }

  else
  {
    *(v7 + 72) = v8;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v7 + 48));
    (*(v9 + 32))(boxed_opaque_existential_0, v6, v8);
  }

  *(v7 + 80) = 0xD000000000000016;
  *(v7 + 88) = 0x8000000252E89F80;
  v11 = type metadata accessor for HomeAutomationSetSwingModeParameters(0);
  v12 = *(v1 + v11[5]);
  if (v12)
  {
    v13 = type metadata accessor for HomeAutomationBooleanResponses();
    v14 = v12;
  }

  else
  {
    v14 = 0;
    v13 = 0;
    *(v7 + 104) = 0;
    *(v7 + 112) = 0;
  }

  *(v7 + 96) = v14;
  *(v7 + 120) = v13;
  *(v7 + 128) = 0xD000000000000017;
  *(v7 + 136) = 0x8000000252E6FE70;
  v15 = MEMORY[0x277D839B0];
  *(v7 + 144) = *(v1 + v11[6]);
  *(v7 + 168) = v15;
  strcpy((v7 + 176), "intentContext");
  *(v7 + 190) = -4864;
  v16 = *(v1 + v11[7]);
  if (v16)
  {
    v17 = type metadata accessor for HomeAutomationIntentContext(0);
    v18 = v16;
  }

  else
  {
    v18 = 0;
    v17 = 0;
    *(v7 + 200) = 0;
    *(v7 + 208) = 0;
  }

  *(v7 + 192) = v18;
  *(v7 + 216) = v17;
  strcpy((v7 + 224), "labelResponses");
  *(v7 + 239) = -18;
  v19 = *(v1 + v11[8]);
  if (v19)
  {
    v20 = type metadata accessor for HomeAutomationEntityResponses();
    v21 = v19;
  }

  else
  {
    v21 = 0;
    v20 = 0;
    *(v7 + 248) = 0;
    *(v7 + 256) = 0;
  }

  *(v7 + 240) = v21;
  *(v7 + 264) = v20;
  *(v7 + 272) = 0x65736E6F70736572;
  *(v7 + 280) = 0xE900000000000073;
  v22 = *(v1 + v11[9]);
  if (v22)
  {
    v23 = type metadata accessor for HomeAutomationEntityResponses();
    v24 = v22;
  }

  else
  {
    v24 = 0;
    v23 = 0;
    *(v7 + 296) = 0;
    *(v7 + 304) = 0;
  }

  *(v7 + 288) = v24;
  *(v7 + 312) = v23;
  *(v7 + 320) = 0x5074657070696E73;
  *(v7 + 328) = 0xEF74754F68636E75;
  v25 = v1 + v11[10];
  v26 = v30;
  sub_252938414(v25, v30, &qword_27F540298, &unk_252E3C270);
  if (v29(v26, 1, v8) == 1)
  {

    sub_25293847C(v26, &qword_27F540298, &unk_252E3C270);
    *(v7 + 336) = 0u;
    *(v7 + 352) = 0u;
  }

  else
  {
    *(v7 + 360) = v8;
    v27 = __swift_allocate_boxed_opaque_existential_0((v7 + 336));
    (*(v9 + 32))(v27, v26, v8);
  }

  return v7;
}

uint64_t sub_252C0A68C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v23 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_252E419D0;
  *(v8 + 32) = 0x6C646E7542707061;
  *(v8 + 40) = 0xEB00000000444965;
  sub_252938414(v1, v7, &qword_27F540298, &unk_252E3C270);
  v9 = sub_252E36324();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v7, 1, v9) == 1)
  {
    sub_25293847C(v7, &qword_27F540298, &unk_252E3C270);
    *(v8 + 48) = 0u;
    *(v8 + 64) = 0u;
  }

  else
  {
    *(v8 + 72) = v9;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v8 + 48));
    (*(v10 + 32))(boxed_opaque_existential_0, v7, v9);
  }

  *(v8 + 80) = 0xD000000000000017;
  *(v8 + 88) = 0x8000000252E6FE70;
  v13 = type metadata accessor for HomeAutomationSetTemperatureRangeValueParameters(0);
  v14 = MEMORY[0x277D839B0];
  *(v8 + 96) = *(v1 + v13[5]);
  *(v8 + 120) = v14;
  *(v8 + 128) = 0x6165726365447369;
  *(v8 + 136) = 0xEA00000000006573;
  *(v8 + 144) = *(v1 + v13[6]);
  *(v8 + 168) = v14;
  *(v8 + 176) = 0x616572636E497369;
  *(v8 + 184) = 0xEA00000000006573;
  *(v8 + 192) = *(v1 + v13[7]);
  *(v8 + 216) = v14;
  strcpy((v8 + 224), "labelResponses");
  *(v8 + 239) = -18;
  v15 = *(v1 + v13[8]);
  if (v15)
  {
    v16 = type metadata accessor for HomeAutomationEntityResponses();
    v17 = v15;
  }

  else
  {
    v17 = 0;
    v16 = 0;
    *(v8 + 248) = 0;
    *(v8 + 256) = 0;
  }

  *(v8 + 240) = v17;
  *(v8 + 264) = v16;
  strcpy((v8 + 272), "setResponses");
  *(v8 + 285) = 0;
  *(v8 + 286) = -5120;
  v18 = *(v1 + v13[9]);
  if (v18)
  {
    v19 = type metadata accessor for HomeAutomationClimateResponses();
    v20 = v18;
  }

  else
  {
    v20 = 0;
    v19 = 0;
    *(v8 + 296) = 0;
    *(v8 + 304) = 0;
  }

  *(v8 + 288) = v20;
  *(v8 + 312) = v19;
  *(v8 + 320) = 0x5074657070696E73;
  *(v8 + 328) = 0xEF74754F68636E75;
  sub_252938414(v1 + v13[10], v5, &qword_27F540298, &unk_252E3C270);
  if (v11(v5, 1, v9) == 1)
  {

    sub_25293847C(v5, &qword_27F540298, &unk_252E3C270);
    *(v8 + 336) = 0u;
    *(v8 + 352) = 0u;
  }

  else
  {
    *(v8 + 360) = v9;
    v21 = __swift_allocate_boxed_opaque_existential_0((v8 + 336));
    (*(v10 + 32))(v21, v5, v9);
  }

  return v8;
}

uint64_t sub_252C0AA90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_252E3C3C0;
  *(v10 + 32) = 0xD000000000000017;
  *(v10 + 40) = 0x8000000252E6FE70;
  v11 = MEMORY[0x277D839B0];
  *(v10 + 48) = *v3;
  *(v10 + 72) = v11;
  *(v10 + 80) = a1;
  *(v10 + 88) = a2;
  v12 = a3(0);
  sub_252938414(&v3[*(v12 + 20)], v9, &qword_27F540298, &unk_252E3C270);
  v13 = sub_252E36324();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v9, 1, v13) == 1)
  {
    sub_25293847C(v9, &qword_27F540298, &unk_252E3C270);
    *(v10 + 96) = 0u;
    *(v10 + 112) = 0u;
  }

  else
  {
    *(v10 + 120) = v13;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v10 + 96));
    (*(v14 + 32))(boxed_opaque_existential_0, v9, v13);
  }

  return v10;
}

uint64_t sub_252C0AC58()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v16 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_252E3EF80;
  *(v4 + 32) = 0x6C646E7542707061;
  *(v4 + 40) = 0xEB00000000444965;
  sub_252938414(v0, v3, &qword_27F540298, &unk_252E3C270);
  v5 = sub_252E36324();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v3, 1, v5) == 1)
  {
    sub_25293847C(v3, &qword_27F540298, &unk_252E3C270);
    *(v4 + 48) = 0u;
    *(v4 + 64) = 0u;
  }

  else
  {
    *(v4 + 72) = v5;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v4 + 48));
    (*(v6 + 32))(boxed_opaque_existential_0, v3, v5);
  }

  *(v4 + 80) = 0xD000000000000017;
  *(v4 + 88) = 0x8000000252E6FE70;
  v8 = type metadata accessor for HomeAutomationUnauthorizedUserParameters(0);
  v9 = MEMORY[0x277D839B0];
  *(v4 + 96) = *(v0 + v8[5]);
  *(v4 + 120) = v9;
  *(v4 + 128) = 0x436572756C696166;
  *(v4 + 136) = 0xEB0000000065646FLL;
  v10 = v0 + v8[6];
  if (*(v10 + 8))
  {
    v11 = 0;
    *(v4 + 152) = 0;
    *(v4 + 160) = 0;
    v12 = 0;
  }

  else
  {
    v12 = *v10;
    v11 = MEMORY[0x277D839F8];
  }

  *(v4 + 144) = v12;
  *(v4 + 168) = v11;
  strcpy((v4 + 176), "intentContext");
  *(v4 + 190) = -4864;
  v13 = *(v0 + v8[7]);
  if (v13)
  {
    v14 = type metadata accessor for HomeAutomationIntentContext(0);
  }

  else
  {
    v14 = 0;
    *(v4 + 200) = 0;
    *(v4 + 208) = 0;
  }

  *(v4 + 192) = v13;
  *(v4 + 216) = v14;

  return v4;
}

uint64_t sub_252C0AEE4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v23 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_252E419D0;
  *(v8 + 32) = 0x6C646E7542707061;
  *(v8 + 40) = 0xEB00000000444965;
  sub_252938414(v1, v7, &qword_27F540298, &unk_252E3C270);
  v9 = sub_252E36324();
  v10 = *(v9 - 8);
  v24 = *(v10 + 48);
  if (v24(v7, 1, v9) == 1)
  {
    sub_25293847C(v7, &qword_27F540298, &unk_252E3C270);
    *(v8 + 48) = 0u;
    *(v8 + 64) = 0u;
  }

  else
  {
    *(v8 + 72) = v9;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v8 + 48));
    (*(v10 + 32))(boxed_opaque_existential_0, v7, v9);
  }

  *(v8 + 80) = 0xD000000000000017;
  *(v8 + 88) = 0x8000000252E6FE70;
  v12 = type metadata accessor for HomeAutomationUnreachableResponseParameters(0);
  v13 = MEMORY[0x277D839B0];
  *(v8 + 96) = *(v1 + v12[5]);
  *(v8 + 120) = v13;
  *(v8 + 128) = 0xD000000000000015;
  *(v8 + 136) = 0x8000000252E696E0;
  v14 = *(v1 + v12[6]);
  if (v14)
  {
    v15 = type metadata accessor for HomeAutomationEntityResponses();
    v16 = v14;
  }

  else
  {
    v16 = 0;
    v15 = 0;
    *(v8 + 152) = 0;
    *(v8 + 160) = 0;
  }

  *(v8 + 144) = v16;
  *(v8 + 168) = v15;
  *(v8 + 176) = 0xD000000000000010;
  *(v8 + 184) = 0x8000000252E8A020;
  v17 = *(v1 + v12[7]);
  if (v17)
  {
    v18 = type metadata accessor for HomeAutomationEntityResponses();
    v19 = v17;
  }

  else
  {
    v19 = 0;
    v18 = 0;
    *(v8 + 200) = 0;
    *(v8 + 208) = 0;
  }

  *(v8 + 192) = v19;
  *(v8 + 216) = v18;
  *(v8 + 224) = 0xD000000000000018;
  *(v8 + 232) = 0x8000000252E8A310;
  *(v8 + 240) = *(v1 + v12[8]);
  v20 = MEMORY[0x277D839B0];
  *(v8 + 264) = MEMORY[0x277D839B0];
  strcpy((v8 + 272), "isSceneRequest");
  *(v8 + 287) = -18;
  *(v8 + 288) = *(v1 + v12[9]);
  *(v8 + 312) = v20;
  *(v8 + 320) = 0x5074657070696E73;
  *(v8 + 328) = 0xEF74754F68636E75;
  sub_252938414(v1 + v12[10], v5, &qword_27F540298, &unk_252E3C270);
  if (v24(v5, 1, v9) == 1)
  {

    sub_25293847C(v5, &qword_27F540298, &unk_252E3C270);
    *(v8 + 336) = 0u;
    *(v8 + 352) = 0u;
  }

  else
  {
    *(v8 + 360) = v9;
    v21 = __swift_allocate_boxed_opaque_existential_0((v8 + 336));
    (*(v10 + 32))(v21, v5, v9);
  }

  return v8;
}

uint64_t sub_252C0B308(char a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_252E3C280;
  *(v6 + 32) = 0xD000000000000017;
  *(v6 + 40) = 0x8000000252E6FE70;
  v7 = MEMORY[0x277D839B0];
  *(v6 + 48) = a1;
  *(v6 + 72) = v7;
  *(v6 + 80) = 0xD00000000000001ALL;
  *(v6 + 88) = 0x8000000252E8A960;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540600, &qword_252E3CF90);
  *(v6 + 96) = a2;
  *(v6 + 120) = v8;
  *(v6 + 128) = 0xD00000000000001ALL;
  *(v6 + 168) = v8;
  *(v6 + 136) = 0x8000000252E8A980;
  *(v6 + 144) = a3;

  return v6;
}

uint64_t sub_252C0B3FC(char a1, char a2)
{
  *(v3 + 16) = v2;
  *(v3 + 49) = a2;
  *(v3 + 48) = a1;
  return MEMORY[0x2822009F8](sub_252C0B424, 0, 0);
}

uint64_t sub_252C0B424()
{
  v1 = *(v0 + 49);
  v2 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v3 = swift_allocObject();
  *(v0 + 24) = v3;
  *(v3 + 16) = xmmword_252E3C3C0;
  *(v3 + 32) = 0xD000000000000017;
  *(v3 + 40) = 0x8000000252E6FE70;
  v4 = MEMORY[0x277D839B0];
  *(v3 + 48) = v2;
  *(v3 + 72) = v4;
  *(v3 + 80) = 0x616572636E497369;
  *(v3 + 88) = 0xEA00000000006573;
  *(v3 + 120) = v4;
  *(v3 + 96) = v1;
  v7 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  v5[1] = sub_252C0B580;

  return v7(0xD00000000000002CLL, 0x8000000252E8A680, v3);
}

uint64_t sub_252C0B580(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_252C1A190, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_252C0B6D8(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a2;
  *(v4 + 88) = a1;
  *(v4 + 40) = type metadata accessor for HomeAutomationAlreadyOffParameters(0);
  *(v4 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C0B774, 0, 0);
}

uint64_t sub_252C0B774()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  v3 = *(v0 + 88);
  v4 = *(*(v0 + 40) + 28);
  v5 = sub_252E36324();
  (*(*(v5 - 8) + 56))(v1 + v4, 1, 1, v5);
  *v1 = v3;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  v2(v1);
  v6 = sub_252C04998();
  *(v0 + 56) = v6;
  v9 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v7 = swift_task_alloc();
  *(v0 + 64) = v7;
  *v7 = v0;
  v7[1] = sub_252C0B8B8;

  return v9(0xD000000000000019, 0x8000000252E8A640, v6);
}

uint64_t sub_252C0B8B8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_252C0BA8C;
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = sub_252C0BA04;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252C0BA04()
{
  sub_252C16904(v0[6], type metadata accessor for HomeAutomationAlreadyOffParameters);

  v1 = v0[1];
  v2 = v0[10];

  return v1(v2);
}

uint64_t sub_252C0BA8C()
{
  sub_252C16904(*(v0 + 48), type metadata accessor for HomeAutomationAlreadyOffParameters);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252C0BB10(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = v4;
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  *(v5 + 96) = a1;
  *(v5 + 48) = type metadata accessor for HomeAutomationBluetoothWakeUpParameters(0);
  *(v5 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C0BBAC, 0, 0);
}

uint64_t sub_252C0BBAC()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 24);
  v4 = *(v0 + 16);
  v5 = *(v0 + 96);
  v6 = *(v2 + 24);
  v7 = sub_252E36324();
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  *v1 = v5;
  *(v1 + 8) = v4;
  *(v1 + *(v2 + 28)) = 0;

  v3(v1);
  v8 = sub_252C05BDC();
  *(v0 + 64) = v8;
  v11 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v9 = swift_task_alloc();
  *(v0 + 72) = v9;
  *v9 = v0;
  v9[1] = sub_252C0BD0C;

  return v11(0xD00000000000001ELL, 0x8000000252E8A600, v8);
}

uint64_t sub_252C0BD0C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = sub_252C0BEE0;
  }

  else
  {
    *(v4 + 88) = a1;
    v5 = sub_252C0BE58;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252C0BE58()
{
  sub_252C16904(v0[7], type metadata accessor for HomeAutomationBluetoothWakeUpParameters);

  v1 = v0[1];
  v2 = v0[11];

  return v1(v2);
}

uint64_t sub_252C0BEE0()
{
  sub_252C16904(*(v0 + 56), type metadata accessor for HomeAutomationBluetoothWakeUpParameters);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252C0BF64(char a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a3;
  *(v4 + 48) = a4;
  *(v4 + 97) = a2;
  *(v4 + 96) = a1;
  return MEMORY[0x2822009F8](sub_252C0BF8C, 0, 0);
}

uint64_t sub_252C0BF8C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 97);
  v3 = *(v0 + 96);
  swift_beginAccess();
  v4 = *v1;
  v5 = type metadata accessor for HomeAutomationBooleanResponses();
  v6 = swift_allocObject();
  *(v0 + 56) = v6;
  *(v6 + 16) = 0;
  *(v6 + 24) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v7 = swift_allocObject();
  *(v0 + 64) = v7;
  *(v7 + 16) = xmmword_252E3C280;
  *(v7 + 32) = 0x6552797469746E65;
  *(v7 + 40) = 0xEF7365736E6F7073;
  *(v7 + 48) = v6;
  *(v7 + 72) = v5;
  *(v7 + 80) = 0xD000000000000017;
  *(v7 + 88) = 0x8000000252E6FE70;
  v8 = MEMORY[0x277D839B0];
  *(v7 + 96) = v3;
  *(v7 + 120) = v8;
  *(v7 + 128) = 0x726F727245736168;
  *(v7 + 136) = 0xE900000000000073;
  *(v7 + 168) = v8;
  *(v7 + 144) = v2;
  v11 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);

  v9 = swift_task_alloc();
  *(v0 + 72) = v9;
  *v9 = v0;
  v9[1] = sub_252C0C174;

  return v11(0xD00000000000001ELL, 0x8000000252E8A7C0, v7);
}

uint64_t sub_252C0C174(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = sub_252C0C328;
  }

  else
  {
    *(v4 + 88) = a1;
    v5 = sub_252C0C2C0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252C0C2C0()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 88);

  return v1(v2);
}

uint64_t sub_252C0C328()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252C0C38C(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  *(v3 + 96) = a1;
  return MEMORY[0x2822009F8](sub_252C0C3B0, 0, 0);
}

uint64_t sub_252C0C3B0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 96);
  swift_beginAccess();
  v3 = *v1;
  v4 = type metadata accessor for HomeAutomationBooleanResponses();
  v5 = swift_allocObject();
  *(v0 + 56) = v5;
  *(v5 + 16) = 0;
  *(v5 + 24) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v6 = swift_allocObject();
  *(v0 + 64) = v6;
  *(v6 + 16) = xmmword_252E3C3C0;
  *(v6 + 32) = 0xD000000000000017;
  *(v6 + 40) = 0x8000000252E6FE70;
  v7 = MEMORY[0x277D839B0];
  *(v6 + 48) = v2;
  *(v6 + 72) = v7;
  *(v6 + 80) = 0x65736E6F70736572;
  *(v6 + 120) = v4;
  *(v6 + 88) = 0xE900000000000073;
  *(v6 + 96) = v5;
  v10 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);

  v8 = swift_task_alloc();
  *(v0 + 72) = v8;
  *v8 = v0;
  v8[1] = sub_252C0C560;

  return v10(0xD000000000000024, 0x8000000252E8A700, v6);
}

uint64_t sub_252C0C560(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = sub_252C1A18C;
  }

  else
  {
    *(v4 + 88) = a1;
    v5 = sub_252C1A188;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252C0C6AC(char a1, char a2)
{
  *(v3 + 16) = v2;
  *(v3 + 49) = a2;
  *(v3 + 48) = a1;
  return MEMORY[0x2822009F8](sub_252C0C6D4, 0, 0);
}

uint64_t sub_252C0C6D4()
{
  v1 = *(v0 + 49);
  v2 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v3 = swift_allocObject();
  *(v0 + 24) = v3;
  *(v3 + 16) = xmmword_252E3C3C0;
  *(v3 + 32) = 0xD000000000000017;
  *(v3 + 40) = 0x8000000252E6FE70;
  v4 = MEMORY[0x277D839B0];
  *(v3 + 48) = v2;
  *(v3 + 72) = v4;
  strcpy((v3 + 80), "isLowHumidity");
  *(v3 + 94) = -4864;
  *(v3 + 120) = v4;
  *(v3 + 96) = v1;
  v7 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  v5[1] = sub_252AD7EB4;

  return v7(0xD000000000000027, 0x8000000252E8A5D0, v3);
}

uint64_t sub_252C0C838(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  *(v3 + 96) = a1;
  return MEMORY[0x2822009F8](sub_252C0C85C, 0, 0);
}

uint64_t sub_252C0C85C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 96);
  swift_beginAccess();
  v3 = *v1;
  v4 = type metadata accessor for HomeAutomationBooleanResponses();
  v5 = swift_allocObject();
  *(v0 + 56) = v5;
  *(v5 + 16) = 0;
  *(v5 + 24) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v6 = swift_allocObject();
  *(v0 + 64) = v6;
  *(v6 + 16) = xmmword_252E3C3C0;
  *(v6 + 32) = 0xD000000000000017;
  *(v6 + 40) = 0x8000000252E6FE70;
  v7 = MEMORY[0x277D839B0];
  *(v6 + 48) = v2;
  *(v6 + 72) = v7;
  *(v6 + 80) = 0x65736E6F70736572;
  *(v6 + 120) = v4;
  *(v6 + 88) = 0xE900000000000073;
  *(v6 + 96) = v5;
  v10 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);

  v8 = swift_task_alloc();
  *(v0 + 72) = v8;
  *v8 = v0;
  v8[1] = sub_252C0C560;

  return v10(0xD000000000000021, 0x8000000252E8A760, v6);
}

uint64_t sub_252C0CA0C(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  *(v3 + 96) = a1;
  return MEMORY[0x2822009F8](sub_252C0CA30, 0, 0);
}

uint64_t sub_252C0CA30()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 96);
  swift_beginAccess();
  v3 = *v1;
  v4 = type metadata accessor for HomeAutomationBooleanResponses();
  v5 = swift_allocObject();
  *(v0 + 56) = v5;
  *(v5 + 16) = 0;
  *(v5 + 24) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v6 = swift_allocObject();
  *(v0 + 64) = v6;
  *(v6 + 16) = xmmword_252E3C3C0;
  *(v6 + 32) = 0xD000000000000017;
  *(v6 + 40) = 0x8000000252E6FE70;
  v7 = MEMORY[0x277D839B0];
  *(v6 + 48) = v2;
  *(v6 + 72) = v7;
  *(v6 + 80) = 0x65736E6F70736572;
  *(v6 + 120) = v4;
  *(v6 + 88) = 0xE900000000000073;
  *(v6 + 96) = v5;
  v10 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);

  v8 = swift_task_alloc();
  *(v0 + 72) = v8;
  *v8 = v0;
  v8[1] = sub_252C0C560;

  return v10(0xD000000000000023, 0x8000000252E8A790, v6);
}

uint64_t sub_252C0CBE0(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  *(v3 + 96) = a1;
  return MEMORY[0x2822009F8](sub_252C0CC04, 0, 0);
}

uint64_t sub_252C0CC04()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 96);
  swift_beginAccess();
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v4 = swift_allocObject();
  *(v0 + 56) = v4;
  *(v4 + 16) = xmmword_252E3C3C0;
  *(v4 + 32) = 0xD000000000000017;
  *(v4 + 40) = 0x8000000252E6FE70;
  v5 = MEMORY[0x277D839B0];
  *(v4 + 48) = v2;
  *(v4 + 72) = v5;
  *(v4 + 80) = 0xD000000000000016;
  *(v4 + 88) = 0x8000000252E8A830;
  v6 = 0;
  if (v3)
  {
    v6 = type metadata accessor for HomeAutomationNumericEntityResponses();
  }

  else
  {
    *(v4 + 104) = 0;
    *(v4 + 112) = 0;
  }

  *(v0 + 64) = v3;
  *(v4 + 96) = v3;
  *(v4 + 120) = v6;
  v9 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  swift_retain_n();
  v7 = swift_task_alloc();
  *(v0 + 72) = v7;
  *v7 = v0;
  v7[1] = sub_252C0CDA0;

  return v9(0xD00000000000001ELL, 0x8000000252E8A850, v4);
}

uint64_t sub_252C0CDA0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = sub_252C0CF54;
  }

  else
  {
    *(v4 + 88) = a1;
    v5 = sub_252C0CEEC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252C0CEEC()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 88);

  return v1(v2);
}

uint64_t sub_252C0CF54()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252C0CFB8(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  *(v3 + 96) = a1;
  return MEMORY[0x2822009F8](sub_252C0CFDC, 0, 0);
}

uint64_t sub_252C0CFDC()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 96);
  swift_beginAccess();
  v3 = *v1;
  v4 = type metadata accessor for HomeAutomationBooleanResponses();
  v5 = swift_allocObject();
  *(v0 + 56) = v5;
  *(v5 + 16) = 0;
  *(v5 + 24) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v6 = swift_allocObject();
  *(v0 + 64) = v6;
  *(v6 + 16) = xmmword_252E3C3C0;
  *(v6 + 32) = 0xD000000000000017;
  *(v6 + 40) = 0x8000000252E6FE70;
  v7 = MEMORY[0x277D839B0];
  *(v6 + 48) = v2;
  *(v6 + 72) = v7;
  *(v6 + 80) = 0x65736E6F70736572;
  *(v6 + 120) = v4;
  *(v6 + 88) = 0xE900000000000073;
  *(v6 + 96) = v5;
  v10 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);

  v8 = swift_task_alloc();
  *(v0 + 72) = v8;
  *v8 = v0;
  v8[1] = sub_252C0C560;

  return v10(0xD000000000000026, 0x8000000252E8A730, v6);
}

uint64_t sub_252C0D18C(char a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  *(v3 + 96) = a1;
  return MEMORY[0x2822009F8](sub_252C0D1B0, 0, 0);
}

uint64_t sub_252C0D1B0()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 96);
  swift_beginAccess();
  v3 = *v1;
  v4 = type metadata accessor for HomeAutomationBooleanResponses();
  v5 = swift_allocObject();
  *(v0 + 56) = v5;
  *(v5 + 16) = 0;
  *(v5 + 24) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v6 = swift_allocObject();
  *(v0 + 64) = v6;
  *(v6 + 16) = xmmword_252E3C3C0;
  *(v6 + 32) = 0xD000000000000016;
  *(v6 + 40) = 0x8000000252E89F80;
  *(v6 + 48) = v5;
  *(v6 + 72) = v4;
  *(v6 + 80) = 0xD000000000000017;
  *(v6 + 88) = 0x8000000252E6FE70;
  *(v6 + 120) = MEMORY[0x277D839B0];
  *(v6 + 96) = v2;
  v9 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);

  v7 = swift_task_alloc();
  *(v0 + 72) = v7;
  *v7 = v0;
  v7[1] = sub_252C0C560;

  return v9(0xD000000000000023, 0x8000000252E8A0E0, v6);
}

uint64_t sub_252C0D360(char a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  *(v3 + 56) = a1;
  return MEMORY[0x2822009F8](sub_252C0D384, 0, 0);
}

uint64_t sub_252C0D384()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v3 = swift_allocObject();
  *(v0 + 32) = v3;
  *(v3 + 16) = xmmword_252E3C3C0;
  *(v3 + 32) = 0xD000000000000017;
  *(v3 + 40) = 0x8000000252E6FE70;
  v4 = MEMORY[0x277D839B0];
  *(v3 + 48) = v2;
  *(v3 + 72) = v4;
  *(v3 + 80) = 0xD000000000000011;
  *(v3 + 88) = 0x8000000252E764A0;
  *(v3 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540600, &qword_252E3CF90);
  *(v3 + 96) = v1;
  v7 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);

  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *v5 = v0;
  v5[1] = sub_252C0D500;

  return v7(0xD000000000000024, 0x8000000252E8A5A0, v3);
}

uint64_t sub_252C0D500(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_252C0D658, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_252C0D658()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252C0D6BC(char a1, char a2)
{
  *(v3 + 16) = v2;
  *(v3 + 49) = a2;
  *(v3 + 48) = a1;
  return MEMORY[0x2822009F8](sub_252C0D6E4, 0, 0);
}

uint64_t sub_252C0D6E4()
{
  v1 = *(v0 + 49);
  v2 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v3 = swift_allocObject();
  *(v0 + 24) = v3;
  *(v3 + 16) = xmmword_252E3C3C0;
  *(v3 + 32) = 0xD000000000000017;
  *(v3 + 40) = 0x8000000252E6FE70;
  v4 = MEMORY[0x277D839B0];
  *(v3 + 48) = v2;
  *(v3 + 72) = v4;
  *(v3 + 80) = 0x656C62616E457369;
  *(v3 + 88) = 0xEF74736575716552;
  *(v3 + 120) = v4;
  *(v3 + 96) = v1;
  v7 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v5 = swift_task_alloc();
  *(v0 + 32) = v5;
  *v5 = v0;
  v5[1] = sub_252C0B580;

  return v7(0xD00000000000002DLL, 0x8000000252E76840, v3);
}

uint64_t HomeAutomationCATPatternsExecutor.__allocating_init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_252E363B4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540370, &qword_252E3C450);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v14 - v10;
  swift_allocObject();
  sub_252938414(a1, v11, &qword_27F540370, &qword_252E3C450);
  (*(v6 + 16))(v8, a2, v5);
  v12 = sub_252E362A4();
  (*(v6 + 8))(a2, v5);
  sub_25293847C(a1, &qword_27F540370, &qword_252E3C450);
  return v12;
}

uint64_t HomeAutomationCATPatternsExecutor.init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_252E363B4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540370, &qword_252E3C450);
  MEMORY[0x28223BE20](v9 - 8);
  sub_252938414(a1, &v13 - v10, &qword_27F540370, &qword_252E3C450);
  (*(v6 + 16))(v8, a2, v5);
  v11 = sub_252E362A4();
  (*(v6 + 8))(a2, v5);
  sub_25293847C(a1, &qword_27F540370, &qword_252E3C450);
  return v11;
}

uint64_t HomeAutomationCATPatternsExecutor.__deallocating_deinit()
{
  _s22HomeAutomationInternal0aB4CATsCfd_0();

  return swift_deallocClassInstance();
}

uint64_t sub_252C0DCF0(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 16) = a2;
  *(v4 + 88) = a1;
  *(v4 + 40) = type metadata accessor for HomeAutomationSetColorParameters(0);
  *(v4 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252C0DD8C, 0, 0);
}

uint64_t sub_252C0DD8C()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 88);
  v6 = sub_252E36324();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v7(v1 + v2[8], 1, 1, v6);
  *(v1 + v2[5]) = v5;
  *(v1 + v2[6]) = 0;
  *(v1 + v2[7]) = 0;
  sub_25296373C(v1, v4, v3);
  v8 = sub_252C09648();
  *(v0 + 56) = v8;
  v11 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v9 = swift_task_alloc();
  *(v0 + 64) = v9;
  *v9 = v0;
  v9[1] = sub_252C0DF0C;

  return v11(0xD000000000000017, 0x8000000252E66630, v8);
}