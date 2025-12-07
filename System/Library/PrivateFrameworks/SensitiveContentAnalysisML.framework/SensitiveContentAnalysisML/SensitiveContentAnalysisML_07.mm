uint64_t FeatureFlags.hashValue.getter()
{
  v1 = *v0;
  sub_1B8AF1018();
  MEMORY[0x1B8CC6810](v1);
  return sub_1B8AF1038();
}

unint64_t sub_1B8AE5274()
{
  result = qword_1EBA97740;
  if (!qword_1EBA97740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97740);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FeatureFlags(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FeatureFlags(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1B8AE5448()
{
  sub_1B8AE5884(byte_1F3747B50);
  sub_1B8AE5884(byte_1F3747BD0);
  v0 = sub_1B8ABE324(&unk_1F3747AA0);

  qword_1EBA97748 = v0;
  return result;
}

id SCMLLocale.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SCMLLocale.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SCMLLocale();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SCMLLocale.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SCMLLocale();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1B8AE5794(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1B8AF0BA8();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_1B8AF0BA8();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1B8AE5978(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1B8ADAB2C(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

char *sub_1B8AE5884(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1B8ABAC24(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1B8AE5978(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1B8AF0BA8();
LABEL_9:
  result = sub_1B8AF0AE8();
  *v2 = result;
  return result;
}

uint64_t _s26SensitiveContentAnalysisML10SCMLLocaleC11isSupported6localeSb10Foundation6LocaleVSg_tFZ_0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97758, &unk_1B8AFD388);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v36 = &v33 - v3;
  v4 = sub_1B8AEFCA8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97750, &qword_1B8AFD380);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v33 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96528, &unk_1B8AF64B0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v33 - v15;
  v17 = sub_1B8AEFCC8();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B8AA2E1C(a1, v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_1B8A897C4(v16, &qword_1EBA96528, &unk_1B8AF64B0);
    return 0;
  }

  (*(v18 + 32))(v20, v16, v17);
  sub_1B8AEFCB8();
  sub_1B8AEFC88();
  v21 = *(v5 + 8);
  v34 = v4;
  v35 = v5 + 8;
  v21(v10, v4);
  v22 = sub_1B8AEFC48();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v13, 1, v22) == 1)
  {
    sub_1B8A897C4(v13, &qword_1EBA97750, &qword_1B8AFD380);
    v24 = 0;
    v25 = 0xE000000000000000;
  }

  else
  {
    sub_1B8AEFC38();
    (*(v23 + 8))(v13, v22);
    v24 = sub_1B8AF06C8();
    v25 = v26;
  }

  v27 = v34;
  if (qword_1EDB75600 != -1)
  {
    swift_once();
  }

  if ((sub_1B8AD1830(v24, v25, qword_1EBA97748) & 1) == 0)
  {
    (*(v18 + 8))(v20, v17);

    return 0;
  }

  if (v24 == 26746 && v25 == 0xE200000000000000)
  {
  }

  else
  {
    v29 = sub_1B8AF0EA8();

    if ((v29 & 1) == 0)
    {
      (*(v18 + 8))(v20, v17);
      return 1;
    }
  }

  sub_1B8AEFCB8();
  v30 = v36;
  sub_1B8AEFC98();
  v21(v8, v27);
  v31 = sub_1B8AEFC78();
  v32 = *(v31 - 8);
  if ((*(v32 + 48))(v30, 1, v31) == 1)
  {
    (*(v18 + 8))(v20, v17);
    sub_1B8A897C4(v30, &qword_1EBA97758, &unk_1B8AFD388);
  }

  else
  {
    sub_1B8AEFC38();
    (*(v32 + 8))(v30, v31);
    sub_1B8AF06C8();

    (*(v18 + 8))(v20, v17);
  }

  return 1;
}

uint64_t _s26SensitiveContentAnalysisML10SCMLLocaleC15isEnglishLocaleySb10Foundation0H0VFZ_0()
{
  v0 = sub_1B8AEFCA8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97750, &qword_1B8AFD380);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15 - v5;
  sub_1B8AEFCB8();
  sub_1B8AEFC88();
  (*(v1 + 8))(v3, v0);
  v7 = sub_1B8AEFC48();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1B8A897C4(v6, &qword_1EBA97750, &qword_1B8AFD380);
    v9 = 0;
  }

  else
  {
    sub_1B8AEFC38();
    (*(v8 + 8))(v6, v7);
    v10 = sub_1B8AF06C8();
    v12 = v11;

    if (v10 == 28261 && v12 == 0xE200000000000000)
    {

      v9 = 1;
    }

    else
    {
      v9 = sub_1B8AF0EA8();
    }
  }

  return v9 & 1;
}

uint64_t SimpleError.description.getter(uint64_t a1, uint64_t a2)
{
  v10 = SimpleError.localizedDescription.getter(a1, a2);
  MEMORY[0x1B8CC5F50](32, 0xE100000000000000);
  v4 = sub_1B8AE315C(a1, *(*(a2 + 8) + 8));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA96B70, &qword_1B8AF8B30);
  v6 = MEMORY[0x1B8CC6010](v4, v5);
  v8 = v7;

  MEMORY[0x1B8CC5F50](v6, v8);

  return v10;
}

unint64_t SimpleError.errorUserInfo.getter(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA965C8, &unk_1B8AF7340);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B8AF6490;
  *(inited + 32) = sub_1B8AF0668();
  *(inited + 40) = v5;
  v6 = SimpleError.localizedDescription.getter(a1, a2);
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v6;
  *(inited + 56) = v7;
  v8 = sub_1B8AE6590(inited);
  swift_setDeallocating();
  sub_1B8AB3660(inited + 32);
  return v8;
}

uint64_t SimpleError.localizedDescription.getter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *(a2 + 48);
  v9[3] = a1;
  v9[4] = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_1, v3, a1);
  v7 = TerseEncoder.encode(_:typeNameStyle:)(v9, &unk_1F3746E88);
  __swift_destroy_boxed_opaque_existential_0(v9);
  return v7;
}

unint64_t sub_1B8AE647C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97770, &qword_1B8AFD3C8);
    v3 = sub_1B8AF0BD8();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1B8AC402C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B8AE6590(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97108, &unk_1B8AFAB60);
    v3 = sub_1B8AF0BD8();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B8A8975C(v4, &v13, &qword_1EBA965D0, &qword_1B8AF6740);
      v5 = v13;
      v6 = v14;
      result = sub_1B8AC402C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1B8AAB328(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B8AE66C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97798, &unk_1B8AFD420);
    v3 = sub_1B8AF0BD8();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B8A8975C(v4, &v13, &qword_1EBA96558, qword_1B8AF64E0);
      v5 = v13;
      v6 = v14;
      result = sub_1B8AC402C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1B8A4270C(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B8AE67F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97790, &unk_1B8AFD410);
    v3 = sub_1B8AF0BD8();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B8A8975C(v4, &v13, &qword_1EBA967D0, &qword_1B8AF7358);
      v5 = v13;
      v6 = v14;
      result = sub_1B8AC402C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1B8A4270C(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B8AE6928(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97100, &qword_1B8AFAB58);
    v3 = sub_1B8AF0BD8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1B8AC402C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B8AE6A2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97788, &unk_1B8AFD3F0);
    v3 = sub_1B8AF0BD8();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1B8AC402C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B8AE6B28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA970E8, &qword_1B8AFD3D0);
    v3 = sub_1B8AF0BD8();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B8A8975C(v4, &v11, &qword_1EBA97778, &qword_1B8AFD3D8);
      v5 = v11;
      result = sub_1B8AC4058(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1B8AAB328(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B8AE6C50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97120, &unk_1B8AFD400);
    v3 = sub_1B8AF0BD8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1B8AC402C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B8AE6D54(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97118, &qword_1B8AFAB70);
    v3 = sub_1B8AF0BD8();

    for (i = (a1 + 44); ; i += 16)
    {
      v5 = *(i - 12);
      v6 = *(i - 8);
      v7 = *(i - 7);
      v8 = *(i - 1);
      v9 = *i;
      result = sub_1B8AC4110(v5);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v12 = v3[7] + 12 * result;
      *v12 = v6;
      *(v12 + 1) = v7;
      *(v12 + 4) = v8;
      *(v12 + 8) = v9;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *sub_1B8AE6E68(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA970F8, &qword_1B8AFAB50);
  v3 = sub_1B8AF0BD8();
  v4 = a1[4];
  v5 = a1[5];
  v7 = a1[6];
  v6 = a1[7];
  v8 = sub_1B8A3FBF0(v4, v5);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v10 = v8;
  result = v5;
  v12 = a1 + 11;
  while (1)
  {
    *(v3 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    v13 = 16 * v10;
    v14 = (v3[6] + v13);
    *v14 = v4;
    v14[1] = result;
    v15 = (v3[7] + v13);
    *v15 = v7;
    v15[1] = v6;
    v16 = v3[2];
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (v17)
    {
      break;
    }

    v3[2] = v18;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v19 = v12 + 4;
    v4 = *(v12 - 3);
    v20 = *(v12 - 2);
    v7 = *(v12 - 1);
    v21 = *v12;

    v10 = sub_1B8A3FBF0(v4, v20);
    v12 = v19;
    v6 = v21;
    result = v20;
    if (v22)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1B8AE6FA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97780, &unk_1B8AFD3E0);
    v3 = sub_1B8AF0BD8();

    for (i = (a1 + 48); ; i += 6)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1B8AC402C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 4 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1B8AE70AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97760, &qword_1B8AFD3B8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97768, &qword_1B8AFD3C0);
    v7 = sub_1B8AF0BD8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1B8A8975C(v9, v5, &qword_1EBA97760, &qword_1B8AFD3B8);
      result = sub_1B8AC41B0(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1B8AF0B88();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      result = sub_1B8AAB328(&v5[v8], (v7[7] + 32 * v13));
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t StandaloneBinarySemaphore.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  type metadata accessor for Condition();
  v1 = swift_allocObject();
  *(v1 + 16) = *sub_1B8AF0188();
  *(v0 + 120) = v1;

  return v0;
}

uint64_t StandaloneBinarySemaphore.init()()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  type metadata accessor for Condition();
  v1 = swift_allocObject();
  *(v1 + 16) = *sub_1B8AF0188();
  *(v0 + 120) = v1;

  return v0;
}

uint64_t sub_1B8AE7358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = swift_task_alloc();
  v4[6] = v5;
  *v5 = v4;
  v5[1] = sub_1B8AE73EC;

  return sub_1B8AE78B4();
}

uint64_t sub_1B8AE73EC()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *v0;

  v7 = (v2 + *v2);
  v4 = swift_task_alloc();
  *(v1 + 56) = v4;
  *v4 = v3;
  v4[1] = sub_1B8AE75B4;
  v5 = *(v1 + 16);

  return v7(v5);
}

uint64_t sub_1B8AE75B4()
{
  v2 = *(*v1 + 40);
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_1B8AE7790;
  }

  else
  {
    v3 = sub_1B8AE76DC;
  }

  return MEMORY[0x1EEE6DFA0](v3, v2, 0);
}

void sub_1B8AE76DC()
{
  v2 = *(v0 + 40);
  if (*(v2 + 112) == 1)
  {
    sub_1B8A9E818();

    v3 = sub_1B8ADEA08(v2);

    if ((v3 & 1) == 0)
    {
      *(*(v0 + 40) + 112) = 0;
    }

    v4 = *(v0 + 8);

    v4();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B8AE7790(uint64_t (*a1)(uint64_t a1), uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 40);
  if (*(v5 + 112) == 1)
  {
    sub_1B8A9E818();

    v6 = sub_1B8ADEA08(v5);

    if ((v6 & 1) == 0)
    {
      *(*(v3 + 40) + 112) = 0;
    }

    a1 = sub_1B8AE7848;
    a2 = 0;
    a3 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DFA0](a1, a2, a3);
}

uint64_t sub_1B8AE7848(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1B8AE78D4()
{
  v1 = v0[2];
  if (*(v1 + 112) == 1)
  {
    v0[3] = *(v1 + 120);
    v0[4] = sub_1B8A9E818();

    swift_getObjectType();
    v3 = sub_1B8AF0858();
    v0[5] = v3;
    v0[6] = v2;

    return MEMORY[0x1EEE6DFA0](sub_1B8AE79BC, v3, v2);
  }

  else
  {
    *(v1 + 112) = 1;
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1B8AE79BC()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_1B8AE7AA0;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1B8AE7AA0()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x1EEE6DFA0](sub_1B8AE7BC0, v3, v2);
}

uint64_t sub_1B8AE7BC0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1B8AE7C28, v1, 0);
}

uint64_t sub_1B8AE7C28()
{
  if (*(*(v0 + 16) + 112) == 1)
  {
    return (*(v0 + 8))();
  }

  __break(1u);
  return result;
}

uint64_t StandaloneBinarySemaphore.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t StandaloneBinarySemaphore.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t dispatch thunk of StandaloneBinarySemaphore.withLock<A>(block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 160) + **(*v4 + 160));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1B8A7B414;

  return v12(a1, a2, a3, a4);
}

uint64_t TerseEncoder.encode(_:typeNameStyle:)(void *a1, uint64_t a2)
{
  sub_1B8A85238(a1, &v11);
  v5 = type metadata accessor for TerseEncoder.Impl();
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E7CC0];
  v6[9] = 0;
  v6[10] = 0;
  v6[8] = v7;
  sub_1B8A4270C(&v11, (v6 + 2));
  v6[7] = a2;
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = v5;
  v13 = sub_1B8AE7FA4();
  *&v11 = v6;

  v9 = v8;
  sub_1B8AF05D8();
  if (v2)
  {

    __swift_destroy_boxed_opaque_existential_0(&v11);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(&v11);
    v9 = sub_1B8AE8254();
  }

  return v9;
}

unint64_t sub_1B8AE7FA4()
{
  result = qword_1EDB75368;
  if (!qword_1EDB75368)
  {
    type metadata accessor for TerseEncoder.Impl();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB75368);
  }

  return result;
}

uint64_t sub_1B8AE7FFC(uint64_t a1, uint64_t a2)
{
  swift_getDynamicType();
  swift_getMetatypeMetadata();
  v2 = sub_1B8AF06D8();
  v4 = sub_1B8AEC790(v2, v3);

  return v4;
}

uint64_t TerseEncoder.TypeNameStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1B8AF1018();
  MEMORY[0x1B8CC6810](v1);
  return sub_1B8AF1038();
}

uint64_t sub_1B8AE80F4()
{
  v0 = sub_1B8AE647C(&unk_1F3746B78);
  result = sub_1B8AEC9D0(&unk_1F3746B98);
  off_1EBA977A0 = v0;
  return result;
}

void sub_1B8AE8134()
{
  v1 = *(v0 + 56);
  if (*(v1 + 16))
  {
    v2 = v0 + 16;
    if (*(v1 + 32) - 1 > 1)
    {
      sub_1B8A85238(v2, v5);
      __swift_project_boxed_opaque_existential_1(v5, v6);
      swift_getDynamicType();
      __swift_destroy_boxed_opaque_existential_0(v5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA977D0, &unk_1B8AFD5E0);
      v3 = sub_1B8AF06D8();
      sub_1B8AEC790(v3, v4);
    }

    else
    {
      sub_1B8A85238(v2, v5);
      __swift_project_boxed_opaque_existential_1(v5, v6);
      swift_getDynamicType();
      __swift_destroy_boxed_opaque_existential_0(v5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA977D0, &unk_1B8AFD5E0);
      sub_1B8AF06B8();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B8AE8254()
{
  swift_beginAccess();
  v18 = v0[8];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA965E8, &qword_1B8AF6770);
  sub_1B8AAA7CC();
  v1 = sub_1B8AF0608();
  v3 = v2;

  v4 = v0[10];
  if (!v4)
  {
    sub_1B8A85238((v0 + 2), &v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA977D8, &qword_1B8AFD5F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA977E0, &qword_1B8AFD5F8);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0(&v16);
    }

    else if (swift_dynamicCast())
    {
    }

    else if (!swift_dynamicCast())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97110, &qword_1B8AFD600);
      if (swift_dynamicCast() || (__swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBA977E8, &qword_1B8AFD608), swift_dynamicCast()))
      {

        v16 = 91;
        v17 = 0xE100000000000000;
        MEMORY[0x1B8CC5F50](v1, v3);

        v13 = 93;
      }

      else
      {
        if (v1 == 7104878 && v3 == 0xE300000000000000 || (sub_1B8AF0EA8() & 1) != 0)
        {
          goto LABEL_21;
        }

        sub_1B8AE8134();
        v16 = v14;
        v17 = v15;
        MEMORY[0x1B8CC5F50](40, 0xE100000000000000);
        MEMORY[0x1B8CC5F50](v1, v3);

        v13 = 41;
      }

      MEMORY[0x1B8CC5F50](v13, 0xE100000000000000);
      v1 = v16;
    }

LABEL_21:
    __swift_destroy_boxed_opaque_existential_0(&v18);
    return v1;
  }

  v5 = v0[9];
  v6 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v6 = v1 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {

    sub_1B8AE8134();
    v18 = v7;
    v19 = v8;
    MEMORY[0x1B8CC5F50](46, 0xE100000000000000);
    MEMORY[0x1B8CC5F50](v5, v4);

    MEMORY[0x1B8CC5F50](40, 0xE100000000000000);
    MEMORY[0x1B8CC5F50](v1, v3);

    MEMORY[0x1B8CC5F50](41, 0xE100000000000000);
    return v18;
  }

  v10 = v0[7];
  if (*(v10 + 16))
  {
    if (*(v10 + 32) == 2)
    {
      v18 = 46;
      v19 = 0xE100000000000000;
    }

    else
    {
      sub_1B8AE8134();
      v18 = v11;
      v19 = v12;
      MEMORY[0x1B8CC5F50](46, 0xE100000000000000);
    }

    MEMORY[0x1B8CC5F50](v5, v4);

    return v18;
  }

  __break(1u);
  return result;
}

unint64_t sub_1B8AE85D4()
{
  result = qword_1EBA977A8;
  if (!qword_1EBA977A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA977A8);
  }

  return result;
}

uint64_t sub_1B8AE8648(void *a1)
{
  v3 = *(v1 + 56);
  v4 = *(v3 + 16);
  if (__PAIR128__(v4, 1) < v4)
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = a1;
  if (v4 > 1)
  {
LABEL_6:
    sub_1B8ACE80C(v3, v3 + 32, v4 > 1, (2 * v4) | 1);
    v3 = v7;
    goto LABEL_4;
  }

LABEL_4:
  v5 = TerseEncoder.encode(_:typeNameStyle:)(v2, v3);

  return v5;
}

uint64_t sub_1B8AE86EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TerseEncoder.KeyedContainer(0, a2, a3, a4);

  swift_getWitnessTable();
  return sub_1B8AF0CF8();
}

uint64_t sub_1B8AE876C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x1EEE6BDC0](v0, 88, 7);
}

uint64_t sub_1B8AE8838@<X0>(uint64_t a1@<X2>, uint64_t (*a2)(void)@<X3>, void *a3@<X8>)
{
  v5 = *v3;
  a3[3] = a1;
  a3[4] = a2();
  *a3 = v5;
}

unint64_t sub_1B8AE8884()
{
  result = qword_1EBA977B0;
  if (!qword_1EBA977B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA977B0);
  }

  return result;
}

unint64_t sub_1B8AE88D8()
{
  result = qword_1EBA977B8;
  if (!qword_1EBA977B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA977B8);
  }

  return result;
}

uint64_t sub_1B8AE892C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = sub_1B8AF1078();
  if (v13)
  {
    sub_1B8A85238(a3 + 16, &v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA977D8, &qword_1B8AFD5F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBA977E8, &qword_1B8AFD608);
    if (swift_dynamicCast())
    {

      sub_1B8AF1068();
      v14 = sub_1B8AF0708();
      v16 = v15;

      goto LABEL_7;
    }

    v17 = sub_1B8AF1068();
  }

  else
  {
    v32 = v12;
    v17 = sub_1B8AF0D28();
  }

  v14 = v17;
  v16 = v18;
LABEL_7:
  v34 = a5;
  v35 = a7;
  v19 = __swift_allocate_boxed_opaque_existential_1(&v32);
  (*(*(a5 - 8) + 16))(v19, a1, a5);
  v20 = sub_1B8AE8648(&v32);
  if (v7)
  {

    return __swift_destroy_boxed_opaque_existential_0(&v32);
  }

  else
  {
    v23 = v21;
    v24 = v20;
    __swift_destroy_boxed_opaque_existential_0(&v32);
    v32 = v14;
    v33 = v16;
    MEMORY[0x1B8CC5F50](8250, 0xE200000000000000);
    MEMORY[0x1B8CC5F50](v24, v23);

    v25 = v32;
    v26 = v33;
    swift_beginAccess();
    v27 = *(a3 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a3 + 64) = v27;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v27 = sub_1B8ABAC24(0, *(v27 + 2) + 1, 1, v27);
      *(a3 + 64) = v27;
    }

    v30 = *(v27 + 2);
    v29 = *(v27 + 3);
    if (v30 >= v29 >> 1)
    {
      v27 = sub_1B8ABAC24((v29 > 1), v30 + 1, 1, v27);
    }

    *(v27 + 2) = v30 + 1;
    v31 = &v27[16 * v30];
    *(v31 + 4) = v25;
    *(v31 + 5) = v26;
    *(a3 + 64) = v27;
    return swift_endAccess();
  }
}

uint64_t sub_1B8AE8B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *v5;
  *(v9 + 72) = sub_1B8AF1068();
  *(v9 + 80) = v10;

  return sub_1B8AE86EC(a1, a4, a5, v11);
}

uint64_t sub_1B8AE8C10@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = &type metadata for TerseEncoder.UnkeyedContainer;
  a1[4] = sub_1B8AE88D8();
  *a1 = v3;
}

uint64_t sub_1B8AE8C60@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = type metadata accessor for TerseEncoder.Impl();
  a1[4] = sub_1B8AE7FA4();
  *a1 = v3;
}

uint64_t sub_1B8AE8D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a1;
  v6[1] = a2;
  return sub_1B8AE892C(v6, a3, *v4, *(a4 + 16), MEMORY[0x1E69E6158], *(a4 + 24), MEMORY[0x1E69E6160]);
}

uint64_t sub_1B8AE93D4(char a1, uint64_t a2)
{
  sub_1B8A85238(a2 + 16, &v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA977D8, &qword_1B8AFD5F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBA977E8, &qword_1B8AFD608);
  if (swift_dynamicCast())
  {

    swift_beginAccess();
    v7 = *(*(a2 + 64) + 16);
    if (v7)
    {
      v29 = MEMORY[0x1E69E6370];
      v30 = MEMORY[0x1E69E6378];
      LOBYTE(v27) = a1 & 1;
      v8 = a2;
      v9 = sub_1B8AE8648(&v27);
      v11 = v10;
      result = __swift_destroy_boxed_opaque_existential_0(&v27);
      if (v2)
      {
        return result;
      }

      v13 = *(a2 + 64);
      if (v7 > *(v13 + 16))
      {
        __break(1u);
      }

      else
      {
        v3 = v7 - 1;
        v14 = v13 + 16 * (v7 - 1);
        v15 = *(v14 + 40);
        v27 = *(v14 + 32);
        v28 = v15;

        MEMORY[0x1B8CC5F50](8250, 0xE200000000000000);
        MEMORY[0x1B8CC5F50](v9, v11);

        v9 = v27;
        v4 = v28;
        swift_beginAccess();
        v8 = *(a2 + 64);
        result = swift_isUniquelyReferenced_nonNull_native();
        *(a2 + 64) = v8;
        if (result)
        {
          goto LABEL_6;
        }
      }

      result = sub_1B8ADAB18(v8);
      v8 = result;
      *(a2 + 64) = result;
LABEL_6:
      if (v7 > *(v8 + 16))
      {
        __break(1u);
      }

      else
      {
        v16 = v8 + 16 * v3;
        *(v16 + 32) = v9;
        *(v16 + 40) = v4;
        *(a2 + 64) = v8;
        swift_endAccess();
      }

      return result;
    }
  }

  v29 = MEMORY[0x1E69E6370];
  v30 = MEMORY[0x1E69E6378];
  LOBYTE(v27) = a1 & 1;
  v17 = sub_1B8AE8648(&v27);
  v19 = v18;
  result = __swift_destroy_boxed_opaque_existential_0(&v27);
  if (!v2)
  {
    swift_beginAccess();
    v20 = *(a2 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 64) = v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v20 = sub_1B8ABAC24(0, *(v20 + 2) + 1, 1, v20);
      *(a2 + 64) = v20;
    }

    v23 = *(v20 + 2);
    v22 = *(v20 + 3);
    v24 = v23 + 1;
    if (v23 >= v22 >> 1)
    {
      v26 = sub_1B8ABAC24((v22 > 1), v23 + 1, 1, v20);
      v24 = v23 + 1;
      v20 = v26;
    }

    *(v20 + 2) = v24;
    v25 = &v20[16 * v23];
    *(v25 + 4) = v17;
    *(v25 + 5) = v19;
    *(a2 + 64) = v20;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1B8AE9684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B8A85238(a3 + 16, &v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA977D8, &qword_1B8AFD5F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBA977E8, &qword_1B8AFD608);
  if (swift_dynamicCast())
  {

    swift_beginAccess();
    v9 = *(*(a3 + 64) + 16);
    if (v9)
    {
      v31 = MEMORY[0x1E69E6158];
      v32 = MEMORY[0x1E69E6160];
      v29 = a1;
      v30 = a2;

      v10 = a3;
      v11 = sub_1B8AE8648(&v29);
      v13 = v12;
      result = __swift_destroy_boxed_opaque_existential_0(&v29);
      if (v3)
      {
        return result;
      }

      v15 = *(a3 + 64);
      if (v9 > *(v15 + 16))
      {
        __break(1u);
      }

      else
      {
        v4 = v9 - 1;
        v16 = v15 + 16 * (v9 - 1);
        v17 = *(v16 + 40);
        v29 = *(v16 + 32);
        v30 = v17;

        MEMORY[0x1B8CC5F50](8250, 0xE200000000000000);
        MEMORY[0x1B8CC5F50](v11, v13);

        v11 = v29;
        v5 = v30;
        swift_beginAccess();
        v10 = *(a3 + 64);
        result = swift_isUniquelyReferenced_nonNull_native();
        *(a3 + 64) = v10;
        if (result)
        {
          goto LABEL_6;
        }
      }

      result = sub_1B8ADAB18(v10);
      v10 = result;
      *(a3 + 64) = result;
LABEL_6:
      if (v9 > *(v10 + 16))
      {
        __break(1u);
      }

      else
      {
        v18 = v10 + 16 * v4;
        *(v18 + 32) = v11;
        *(v18 + 40) = v5;
        *(a3 + 64) = v10;
        swift_endAccess();
      }

      return result;
    }
  }

  v31 = MEMORY[0x1E69E6158];
  v32 = MEMORY[0x1E69E6160];
  v29 = a1;
  v30 = a2;

  v19 = sub_1B8AE8648(&v29);
  v21 = v20;
  result = __swift_destroy_boxed_opaque_existential_0(&v29);
  if (!v3)
  {
    swift_beginAccess();
    v22 = *(a3 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a3 + 64) = v22;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v22 = sub_1B8ABAC24(0, *(v22 + 2) + 1, 1, v22);
      *(a3 + 64) = v22;
    }

    v25 = *(v22 + 2);
    v24 = *(v22 + 3);
    v26 = v25 + 1;
    if (v25 >= v24 >> 1)
    {
      v28 = sub_1B8ABAC24((v24 > 1), v25 + 1, 1, v22);
      v26 = v25 + 1;
      v22 = v28;
    }

    *(v22 + 2) = v26;
    v27 = &v22[16 * v25];
    *(v27 + 4) = v19;
    *(v27 + 5) = v21;
    *(a3 + 64) = v22;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1B8AE9940(uint64_t a1, double a2)
{
  sub_1B8A85238(a1 + 16, &v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA977D8, &qword_1B8AFD5F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBA977E8, &qword_1B8AFD608);
  if (swift_dynamicCast())
  {

    swift_beginAccess();
    v7 = *(*(a1 + 64) + 16);
    if (v7)
    {
      v29 = MEMORY[0x1E69E63B0];
      v30 = MEMORY[0x1E69E63C0];
      v27 = a2;
      v8 = a1;
      v9 = sub_1B8AE8648(&v27);
      v11 = v10;
      result = __swift_destroy_boxed_opaque_existential_0(&v27);
      if (v2)
      {
        return result;
      }

      v13 = *(a1 + 64);
      if (v7 > *(v13 + 16))
      {
        __break(1u);
      }

      else
      {
        v3 = v7 - 1;
        v14 = v13 + 16 * (v7 - 1);
        v15 = *(v14 + 40);
        v27 = *(v14 + 32);
        v28 = v15;

        MEMORY[0x1B8CC5F50](8250, 0xE200000000000000);
        MEMORY[0x1B8CC5F50](v9, v11);

        v9 = *&v27;
        v4 = v28;
        swift_beginAccess();
        v8 = *(a1 + 64);
        result = swift_isUniquelyReferenced_nonNull_native();
        *(a1 + 64) = v8;
        if (result)
        {
          goto LABEL_6;
        }
      }

      result = sub_1B8ADAB18(v8);
      v8 = result;
      *(a1 + 64) = result;
LABEL_6:
      if (v7 > *(v8 + 16))
      {
        __break(1u);
      }

      else
      {
        v16 = v8 + 16 * v3;
        *(v16 + 32) = v9;
        *(v16 + 40) = v4;
        *(a1 + 64) = v8;
        swift_endAccess();
      }

      return result;
    }
  }

  v29 = MEMORY[0x1E69E63B0];
  v30 = MEMORY[0x1E69E63C0];
  v27 = a2;
  v17 = sub_1B8AE8648(&v27);
  v19 = v18;
  result = __swift_destroy_boxed_opaque_existential_0(&v27);
  if (!v2)
  {
    swift_beginAccess();
    v20 = *(a1 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + 64) = v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v20 = sub_1B8ABAC24(0, *(v20 + 2) + 1, 1, v20);
      *(a1 + 64) = v20;
    }

    v23 = *(v20 + 2);
    v22 = *(v20 + 3);
    v24 = v23 + 1;
    if (v23 >= v22 >> 1)
    {
      v31 = v23 + 1;
      v26 = sub_1B8ABAC24((v22 > 1), v23 + 1, 1, v20);
      v24 = v31;
      v20 = v26;
    }

    *(v20 + 2) = v24;
    v25 = &v20[16 * v23];
    *(v25 + 4) = v17;
    *(v25 + 5) = v19;
    *(a1 + 64) = v20;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1B8AE9BF0(uint64_t a1, float a2)
{
  sub_1B8A85238(a1 + 16, &v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA977D8, &qword_1B8AFD5F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBA977E8, &qword_1B8AFD608);
  if (swift_dynamicCast())
  {

    swift_beginAccess();
    v7 = *(*(a1 + 64) + 16);
    if (v7)
    {
      v29 = MEMORY[0x1E69E6448];
      v30 = MEMORY[0x1E69E6458];
      *&v27 = a2;
      v8 = a1;
      v9 = sub_1B8AE8648(&v27);
      v11 = v10;
      result = __swift_destroy_boxed_opaque_existential_0(&v27);
      if (v2)
      {
        return result;
      }

      v13 = *(a1 + 64);
      if (v7 > *(v13 + 16))
      {
        __break(1u);
      }

      else
      {
        v3 = v7 - 1;
        v14 = v13 + 16 * (v7 - 1);
        v15 = *(v14 + 40);
        v27 = *(v14 + 32);
        v28 = v15;

        MEMORY[0x1B8CC5F50](8250, 0xE200000000000000);
        MEMORY[0x1B8CC5F50](v9, v11);

        v9 = v27;
        v4 = v28;
        swift_beginAccess();
        v8 = *(a1 + 64);
        result = swift_isUniquelyReferenced_nonNull_native();
        *(a1 + 64) = v8;
        if (result)
        {
          goto LABEL_6;
        }
      }

      result = sub_1B8ADAB18(v8);
      v8 = result;
      *(a1 + 64) = result;
LABEL_6:
      if (v7 > *(v8 + 16))
      {
        __break(1u);
      }

      else
      {
        v16 = v8 + 16 * v3;
        *(v16 + 32) = v9;
        *(v16 + 40) = v4;
        *(a1 + 64) = v8;
        swift_endAccess();
      }

      return result;
    }
  }

  v29 = MEMORY[0x1E69E6448];
  v30 = MEMORY[0x1E69E6458];
  *&v27 = a2;
  v17 = sub_1B8AE8648(&v27);
  v19 = v18;
  result = __swift_destroy_boxed_opaque_existential_0(&v27);
  if (!v2)
  {
    swift_beginAccess();
    v20 = *(a1 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + 64) = v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v20 = sub_1B8ABAC24(0, *(v20 + 2) + 1, 1, v20);
      *(a1 + 64) = v20;
    }

    v23 = *(v20 + 2);
    v22 = *(v20 + 3);
    v24 = v23 + 1;
    if (v23 >= v22 >> 1)
    {
      v31 = v23 + 1;
      v26 = sub_1B8ABAC24((v22 > 1), v23 + 1, 1, v20);
      v24 = v31;
      v20 = v26;
    }

    *(v20 + 2) = v24;
    v25 = &v20[16 * v23];
    *(v25 + 4) = v17;
    *(v25 + 5) = v19;
    *(a1 + 64) = v20;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1B8AE9EA0(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B8A85238(a2 + 16, &v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA977D8, &qword_1B8AFD5F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBA977E8, &qword_1B8AFD608);
  if (swift_dynamicCast())
  {

    swift_beginAccess();
    v11 = *(*(a2 + 64) + 16);
    if (v11)
    {
      v33 = a3;
      v34 = a4;
      LOBYTE(v31) = a1;
      v12 = a2;
      v13 = sub_1B8AE8648(&v31);
      v15 = v14;
      result = __swift_destroy_boxed_opaque_existential_0(&v31);
      if (v4)
      {
        return result;
      }

      v17 = *(a2 + 64);
      if (v11 > *(v17 + 16))
      {
        __break(1u);
      }

      else
      {
        v5 = v11 - 1;
        v18 = v17 + 16 * (v11 - 1);
        v19 = *(v18 + 40);
        v31 = *(v18 + 32);
        v32 = v19;

        MEMORY[0x1B8CC5F50](8250, 0xE200000000000000);
        MEMORY[0x1B8CC5F50](v13, v15);

        v13 = v31;
        v6 = v32;
        swift_beginAccess();
        v12 = *(a2 + 64);
        result = swift_isUniquelyReferenced_nonNull_native();
        *(a2 + 64) = v12;
        if (result)
        {
          goto LABEL_6;
        }
      }

      result = sub_1B8ADAB18(v12);
      v12 = result;
      *(a2 + 64) = result;
LABEL_6:
      if (v11 > *(v12 + 16))
      {
        __break(1u);
      }

      else
      {
        v20 = v12 + 16 * v5;
        *(v20 + 32) = v13;
        *(v20 + 40) = v6;
        *(a2 + 64) = v12;
        swift_endAccess();
      }

      return result;
    }
  }

  v33 = a3;
  v34 = a4;
  LOBYTE(v31) = a1;
  v21 = sub_1B8AE8648(&v31);
  v23 = v22;
  result = __swift_destroy_boxed_opaque_existential_0(&v31);
  if (!v4)
  {
    swift_beginAccess();
    v24 = *(a2 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 64) = v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v24 = sub_1B8ABAC24(0, *(v24 + 2) + 1, 1, v24);
      *(a2 + 64) = v24;
    }

    v27 = *(v24 + 2);
    v26 = *(v24 + 3);
    v28 = v27 + 1;
    if (v27 >= v26 >> 1)
    {
      v30 = sub_1B8ABAC24((v26 > 1), v27 + 1, 1, v24);
      v28 = v27 + 1;
      v24 = v30;
    }

    *(v24 + 2) = v28;
    v29 = &v24[16 * v27];
    *(v29 + 4) = v21;
    *(v29 + 5) = v23;
    *(a2 + 64) = v24;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1B8AEA130(__int16 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B8A85238(a2 + 16, &v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA977D8, &qword_1B8AFD5F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBA977E8, &qword_1B8AFD608);
  if (swift_dynamicCast())
  {

    swift_beginAccess();
    v11 = *(*(a2 + 64) + 16);
    if (v11)
    {
      v33 = a3;
      v34 = a4;
      LOWORD(v31) = a1;
      v12 = a2;
      v13 = sub_1B8AE8648(&v31);
      v15 = v14;
      result = __swift_destroy_boxed_opaque_existential_0(&v31);
      if (v4)
      {
        return result;
      }

      v17 = *(a2 + 64);
      if (v11 > *(v17 + 16))
      {
        __break(1u);
      }

      else
      {
        v5 = v11 - 1;
        v18 = v17 + 16 * (v11 - 1);
        v19 = *(v18 + 40);
        v31 = *(v18 + 32);
        v32 = v19;

        MEMORY[0x1B8CC5F50](8250, 0xE200000000000000);
        MEMORY[0x1B8CC5F50](v13, v15);

        v13 = v31;
        v6 = v32;
        swift_beginAccess();
        v12 = *(a2 + 64);
        result = swift_isUniquelyReferenced_nonNull_native();
        *(a2 + 64) = v12;
        if (result)
        {
          goto LABEL_6;
        }
      }

      result = sub_1B8ADAB18(v12);
      v12 = result;
      *(a2 + 64) = result;
LABEL_6:
      if (v11 > *(v12 + 16))
      {
        __break(1u);
      }

      else
      {
        v20 = v12 + 16 * v5;
        *(v20 + 32) = v13;
        *(v20 + 40) = v6;
        *(a2 + 64) = v12;
        swift_endAccess();
      }

      return result;
    }
  }

  v33 = a3;
  v34 = a4;
  LOWORD(v31) = a1;
  v21 = sub_1B8AE8648(&v31);
  v23 = v22;
  result = __swift_destroy_boxed_opaque_existential_0(&v31);
  if (!v4)
  {
    swift_beginAccess();
    v24 = *(a2 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 64) = v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v24 = sub_1B8ABAC24(0, *(v24 + 2) + 1, 1, v24);
      *(a2 + 64) = v24;
    }

    v27 = *(v24 + 2);
    v26 = *(v24 + 3);
    v28 = v27 + 1;
    if (v27 >= v26 >> 1)
    {
      v30 = sub_1B8ABAC24((v26 > 1), v27 + 1, 1, v24);
      v28 = v27 + 1;
      v24 = v30;
    }

    *(v24 + 2) = v28;
    v29 = &v24[16 * v27];
    *(v29 + 4) = v21;
    *(v29 + 5) = v23;
    *(a2 + 64) = v24;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1B8AEA3C0(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B8A85238(a2 + 16, &v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA977D8, &qword_1B8AFD5F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBA977E8, &qword_1B8AFD608);
  if (swift_dynamicCast())
  {

    swift_beginAccess();
    v11 = *(*(a2 + 64) + 16);
    if (v11)
    {
      v33 = a3;
      v34 = a4;
      LODWORD(v31) = a1;
      v12 = a2;
      v13 = sub_1B8AE8648(&v31);
      v15 = v14;
      result = __swift_destroy_boxed_opaque_existential_0(&v31);
      if (v4)
      {
        return result;
      }

      v17 = *(a2 + 64);
      if (v11 > *(v17 + 16))
      {
        __break(1u);
      }

      else
      {
        v5 = v11 - 1;
        v18 = v17 + 16 * (v11 - 1);
        v19 = *(v18 + 40);
        v31 = *(v18 + 32);
        v32 = v19;

        MEMORY[0x1B8CC5F50](8250, 0xE200000000000000);
        MEMORY[0x1B8CC5F50](v13, v15);

        v13 = v31;
        v6 = v32;
        swift_beginAccess();
        v12 = *(a2 + 64);
        result = swift_isUniquelyReferenced_nonNull_native();
        *(a2 + 64) = v12;
        if (result)
        {
          goto LABEL_6;
        }
      }

      result = sub_1B8ADAB18(v12);
      v12 = result;
      *(a2 + 64) = result;
LABEL_6:
      if (v11 > *(v12 + 16))
      {
        __break(1u);
      }

      else
      {
        v20 = v12 + 16 * v5;
        *(v20 + 32) = v13;
        *(v20 + 40) = v6;
        *(a2 + 64) = v12;
        swift_endAccess();
      }

      return result;
    }
  }

  v33 = a3;
  v34 = a4;
  LODWORD(v31) = a1;
  v21 = sub_1B8AE8648(&v31);
  v23 = v22;
  result = __swift_destroy_boxed_opaque_existential_0(&v31);
  if (!v4)
  {
    swift_beginAccess();
    v24 = *(a2 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 64) = v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v24 = sub_1B8ABAC24(0, *(v24 + 2) + 1, 1, v24);
      *(a2 + 64) = v24;
    }

    v27 = *(v24 + 2);
    v26 = *(v24 + 3);
    v28 = v27 + 1;
    if (v27 >= v26 >> 1)
    {
      v30 = sub_1B8ABAC24((v26 > 1), v27 + 1, 1, v24);
      v28 = v27 + 1;
      v24 = v30;
    }

    *(v24 + 2) = v28;
    v29 = &v24[16 * v27];
    *(v29 + 4) = v21;
    *(v29 + 5) = v23;
    *(a2 + 64) = v24;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1B8AEA650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B8A85238(a2 + 16, &v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA977D8, &qword_1B8AFD5F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBA977E8, &qword_1B8AFD608);
  if (swift_dynamicCast())
  {

    swift_beginAccess();
    v11 = *(*(a2 + 64) + 16);
    if (v11)
    {
      v33 = a3;
      v34 = a4;
      v31 = a1;
      v12 = a2;
      v13 = sub_1B8AE8648(&v31);
      v15 = v14;
      result = __swift_destroy_boxed_opaque_existential_0(&v31);
      if (v4)
      {
        return result;
      }

      v17 = *(a2 + 64);
      if (v11 > *(v17 + 16))
      {
        __break(1u);
      }

      else
      {
        v5 = v11 - 1;
        v18 = v17 + 16 * (v11 - 1);
        v19 = *(v18 + 40);
        v31 = *(v18 + 32);
        v32 = v19;

        MEMORY[0x1B8CC5F50](8250, 0xE200000000000000);
        MEMORY[0x1B8CC5F50](v13, v15);

        v13 = v31;
        v6 = v32;
        swift_beginAccess();
        v12 = *(a2 + 64);
        result = swift_isUniquelyReferenced_nonNull_native();
        *(a2 + 64) = v12;
        if (result)
        {
          goto LABEL_6;
        }
      }

      result = sub_1B8ADAB18(v12);
      v12 = result;
      *(a2 + 64) = result;
LABEL_6:
      if (v11 > *(v12 + 16))
      {
        __break(1u);
      }

      else
      {
        v20 = v12 + 16 * v5;
        *(v20 + 32) = v13;
        *(v20 + 40) = v6;
        *(a2 + 64) = v12;
        swift_endAccess();
      }

      return result;
    }
  }

  v33 = a3;
  v34 = a4;
  v31 = a1;
  v21 = sub_1B8AE8648(&v31);
  v23 = v22;
  result = __swift_destroy_boxed_opaque_existential_0(&v31);
  if (!v4)
  {
    swift_beginAccess();
    v24 = *(a2 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 64) = v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v24 = sub_1B8ABAC24(0, *(v24 + 2) + 1, 1, v24);
      *(a2 + 64) = v24;
    }

    v27 = *(v24 + 2);
    v26 = *(v24 + 3);
    v28 = v27 + 1;
    if (v27 >= v26 >> 1)
    {
      v30 = sub_1B8ABAC24((v26 > 1), v27 + 1, 1, v24);
      v28 = v27 + 1;
      v24 = v30;
    }

    *(v24 + 2) = v28;
    v29 = &v24[16 * v27];
    *(v29 + 4) = v21;
    *(v29 + 5) = v23;
    *(a2 + 64) = v24;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1B8AEA8E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B8A85238(a2 + 16, &v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA977D8, &qword_1B8AFD5F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBA977E8, &qword_1B8AFD608);
  if (swift_dynamicCast())
  {

    swift_beginAccess();
    v11 = *(*(a2 + 64) + 16);
    if (v11)
    {
      v35 = a3;
      v36 = a4;
      v12 = __swift_allocate_boxed_opaque_existential_1(&v33);
      (*(*(a3 - 8) + 16))(v12, a1, a3);
      v13 = a2;
      v14 = sub_1B8AE8648(&v33);
      v16 = v15;
      result = __swift_destroy_boxed_opaque_existential_0(&v33);
      if (v4)
      {
        return result;
      }

      v18 = *(a2 + 64);
      if (v11 > *(v18 + 16))
      {
        __break(1u);
      }

      else
      {
        v5 = v11 - 1;
        v19 = v18 + 16 * (v11 - 1);
        v20 = *(v19 + 40);
        v33 = *(v19 + 32);
        v34 = v20;

        MEMORY[0x1B8CC5F50](8250, 0xE200000000000000);
        MEMORY[0x1B8CC5F50](v14, v16);

        v14 = v33;
        v6 = v34;
        swift_beginAccess();
        v13 = *(a2 + 64);
        result = swift_isUniquelyReferenced_nonNull_native();
        *(a2 + 64) = v13;
        if (result)
        {
          goto LABEL_6;
        }
      }

      result = sub_1B8ADAB18(v13);
      v13 = result;
      *(a2 + 64) = result;
LABEL_6:
      if (v11 > *(v13 + 16))
      {
        __break(1u);
      }

      else
      {
        v21 = v13 + 16 * v5;
        *(v21 + 32) = v14;
        *(v21 + 40) = v6;
        *(a2 + 64) = v13;
        swift_endAccess();
      }

      return result;
    }
  }

  v35 = a3;
  v36 = a4;
  v22 = __swift_allocate_boxed_opaque_existential_1(&v33);
  (*(*(a3 - 8) + 16))(v22, a1, a3);
  v23 = sub_1B8AE8648(&v33);
  v25 = v24;
  result = __swift_destroy_boxed_opaque_existential_0(&v33);
  if (!v4)
  {
    swift_beginAccess();
    v26 = *(a2 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 64) = v26;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v26 = sub_1B8ABAC24(0, *(v26 + 2) + 1, 1, v26);
      *(a2 + 64) = v26;
    }

    v29 = *(v26 + 2);
    v28 = *(v26 + 3);
    v30 = v29 + 1;
    if (v29 >= v28 >> 1)
    {
      v32 = sub_1B8ABAC24((v28 > 1), v29 + 1, 1, v26);
      v30 = v29 + 1;
      v26 = v32;
    }

    *(v26 + 2) = v30;
    v31 = &v26[16 * v29];
    *(v31 + 4) = v23;
    *(v31 + 5) = v25;
    *(a2 + 64) = v26;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_1B8AEB180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *v3;
  a3[3] = a1;
  a3[4] = a2;
  *a3 = v4;
}

uint64_t sub_1B8AEB194(char a1)
{
  v3 = *v1;
  sub_1B8A85238(*v1 + 16, &v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA977D8, &qword_1B8AFD5F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBA97870, &unk_1B8AFDA30);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(&v13);
    v13 = 0;
    v14 = 0xE000000000000000;
    sub_1B8A85238((v3 + 2), &v15);
    sub_1B8AF0B78();
    __swift_destroy_boxed_opaque_existential_0(&v15);
    v4 = v14;
    v3[9] = v13;
    v3[10] = v4;
  }

  else
  {
    sub_1B8A85238((v3 + 2), &v15);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0(&v13);
    }

    v15 = 0;
    v16 = 0xE000000000000000;
    LOBYTE(v13) = a1 & 1;
    sub_1B8AF0B78();
    v6 = v15;
    v7 = v16;
    swift_beginAccess();
    v8 = v3[8];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v3[8] = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_1B8ABAC24(0, *(v8 + 2) + 1, 1, v8);
      v3[8] = v8;
    }

    v11 = *(v8 + 2);
    v10 = *(v8 + 3);
    if (v11 >= v10 >> 1)
    {
      v8 = sub_1B8ABAC24((v10 > 1), v11 + 1, 1, v8);
    }

    *(v8 + 2) = v11 + 1;
    v12 = &v8[16 * v11];
    *(v12 + 4) = v6;
    *(v12 + 5) = v7;
    v3[8] = v8;
    return swift_endAccess();
  }
}

uint64_t sub_1B8AEB38C(uint64_t a1, unint64_t a2)
{
  v5 = *v2;
  sub_1B8A85238(*v2 + 16, &v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA977D8, &qword_1B8AFD5F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBA97870, &unk_1B8AFDA30);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(&v16);
    v16 = 0;
    v17 = 0xE000000000000000;
    sub_1B8A85238((v5 + 2), &v18);
    sub_1B8AF0B78();
    __swift_destroy_boxed_opaque_existential_0(&v18);
    v6 = v17;
    v5[9] = v16;
    v5[10] = v6;
  }

  else
  {
    sub_1B8A85238((v5 + 2), &v18);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0(&v16);
      v18 = 0;
      v19 = 0xE000000000000000;
      v16 = a1;
      v17 = a2;
      sub_1B8AF0B78();
      v8 = v18;
      v9 = v19;
    }

    else
    {
      v8 = sub_1B8AF0708();
      v9 = v10;
    }

    swift_beginAccess();
    v11 = v5[8];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5[8] = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_1B8ABAC24(0, *(v11 + 2) + 1, 1, v11);
      v5[8] = v11;
    }

    v14 = *(v11 + 2);
    v13 = *(v11 + 3);
    if (v14 >= v13 >> 1)
    {
      v11 = sub_1B8ABAC24((v13 > 1), v14 + 1, 1, v11);
    }

    *(v11 + 2) = v14 + 1;
    v15 = &v11[16 * v14];
    *(v15 + 4) = v8;
    *(v15 + 5) = v9;
    v5[8] = v11;
    return swift_endAccess();
  }
}

uint64_t sub_1B8AEB59C(double a1)
{
  v3 = *v1;
  sub_1B8A85238((*v1 + 2), &v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA977D8, &qword_1B8AFD5F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBA97870, &unk_1B8AFDA30);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(&v13);
    v13 = 0.0;
    v14 = 0xE000000000000000;
    sub_1B8A85238((v3 + 2), &v15);
    sub_1B8AF0B78();
    __swift_destroy_boxed_opaque_existential_0(&v15);
    v4 = v14;
    v3[9] = v13;
    *(v3 + 10) = v4;
  }

  else
  {
    sub_1B8A85238((v3 + 2), &v15);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0(&v13);
    }

    v15 = 0;
    v16 = 0xE000000000000000;
    v13 = a1;
    sub_1B8AF0B78();
    v6 = v15;
    v7 = v16;
    swift_beginAccess();
    v8 = *(v3 + 8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 8) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_1B8ABAC24(0, *(v8 + 2) + 1, 1, v8);
      *(v3 + 8) = v8;
    }

    v11 = *(v8 + 2);
    v10 = *(v8 + 3);
    if (v11 >= v10 >> 1)
    {
      v8 = sub_1B8ABAC24((v10 > 1), v11 + 1, 1, v8);
    }

    *(v8 + 2) = v11 + 1;
    v12 = &v8[16 * v11];
    *(v12 + 4) = v6;
    *(v12 + 5) = v7;
    *(v3 + 8) = v8;
    return swift_endAccess();
  }
}

uint64_t sub_1B8AEB798(float a1)
{
  v3 = *v1;
  sub_1B8A85238(*v1 + 16, &v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA977D8, &qword_1B8AFD5F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBA97870, &unk_1B8AFDA30);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(&v13);
    v13 = 0;
    v14 = 0xE000000000000000;
    sub_1B8A85238((v3 + 2), &v15);
    sub_1B8AF0B78();
    __swift_destroy_boxed_opaque_existential_0(&v15);
    v4 = v14;
    v3[9] = v13;
    v3[10] = v4;
  }

  else
  {
    sub_1B8A85238((v3 + 2), &v15);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0(&v13);
    }

    v15 = 0;
    v16 = 0xE000000000000000;
    *&v13 = a1;
    sub_1B8AF0B78();
    v6 = v15;
    v7 = v16;
    swift_beginAccess();
    v8 = v3[8];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v3[8] = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = sub_1B8ABAC24(0, *(v8 + 2) + 1, 1, v8);
      v3[8] = v8;
    }

    v11 = *(v8 + 2);
    v10 = *(v8 + 3);
    if (v11 >= v10 >> 1)
    {
      v8 = sub_1B8ABAC24((v10 > 1), v11 + 1, 1, v8);
    }

    *(v8 + 2) = v11 + 1;
    v12 = &v8[16 * v11];
    *(v12 + 4) = v6;
    *(v12 + 5) = v7;
    v3[8] = v8;
    return swift_endAccess();
  }
}

uint64_t sub_1B8AEB994(char a1, uint64_t a2)
{
  v4 = *v2;
  sub_1B8A85238(*v2 + 16, &v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA977D8, &qword_1B8AFD5F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBA97870, &unk_1B8AFDA30);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(&v14);
    v14 = 0;
    v15 = 0xE000000000000000;
    sub_1B8A85238((v4 + 2), &v16);
    sub_1B8AF0B78();
    __swift_destroy_boxed_opaque_existential_0(&v16);
    v5 = v15;
    v4[9] = v14;
    v4[10] = v5;
  }

  else
  {
    sub_1B8A85238((v4 + 2), &v16);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0(&v14);
    }

    v16 = 0;
    v17 = 0xE000000000000000;
    LOBYTE(v14) = a1;
    sub_1B8AF0B78();
    v7 = v16;
    v8 = v17;
    swift_beginAccess();
    v9 = v4[8];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4[8] = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = sub_1B8ABAC24(0, *(v9 + 2) + 1, 1, v9);
      v4[8] = v9;
    }

    v12 = *(v9 + 2);
    v11 = *(v9 + 3);
    if (v12 >= v11 >> 1)
    {
      v9 = sub_1B8ABAC24((v11 > 1), v12 + 1, 1, v9);
    }

    *(v9 + 2) = v12 + 1;
    v13 = &v9[16 * v12];
    *(v13 + 4) = v7;
    *(v13 + 5) = v8;
    v4[8] = v9;
    return swift_endAccess();
  }
}

uint64_t sub_1B8AEBB88(__int16 a1, uint64_t a2)
{
  v4 = *v2;
  sub_1B8A85238(*v2 + 16, &v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA977D8, &qword_1B8AFD5F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBA97870, &unk_1B8AFDA30);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(&v14);
    v14 = 0;
    v15 = 0xE000000000000000;
    sub_1B8A85238((v4 + 2), &v16);
    sub_1B8AF0B78();
    __swift_destroy_boxed_opaque_existential_0(&v16);
    v5 = v15;
    v4[9] = v14;
    v4[10] = v5;
  }

  else
  {
    sub_1B8A85238((v4 + 2), &v16);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0(&v14);
    }

    v16 = 0;
    v17 = 0xE000000000000000;
    LOWORD(v14) = a1;
    sub_1B8AF0B78();
    v7 = v16;
    v8 = v17;
    swift_beginAccess();
    v9 = v4[8];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4[8] = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = sub_1B8ABAC24(0, *(v9 + 2) + 1, 1, v9);
      v4[8] = v9;
    }

    v12 = *(v9 + 2);
    v11 = *(v9 + 3);
    if (v12 >= v11 >> 1)
    {
      v9 = sub_1B8ABAC24((v11 > 1), v12 + 1, 1, v9);
    }

    *(v9 + 2) = v12 + 1;
    v13 = &v9[16 * v12];
    *(v13 + 4) = v7;
    *(v13 + 5) = v8;
    v4[8] = v9;
    return swift_endAccess();
  }
}

uint64_t sub_1B8AEBD7C(int a1, uint64_t a2)
{
  v4 = *v2;
  sub_1B8A85238(*v2 + 16, &v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA977D8, &qword_1B8AFD5F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBA97870, &unk_1B8AFDA30);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(&v14);
    v14 = 0;
    v15 = 0xE000000000000000;
    sub_1B8A85238((v4 + 2), &v16);
    sub_1B8AF0B78();
    __swift_destroy_boxed_opaque_existential_0(&v16);
    v5 = v15;
    v4[9] = v14;
    v4[10] = v5;
  }

  else
  {
    sub_1B8A85238((v4 + 2), &v16);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0(&v14);
    }

    v16 = 0;
    v17 = 0xE000000000000000;
    LODWORD(v14) = a1;
    sub_1B8AF0B78();
    v7 = v16;
    v8 = v17;
    swift_beginAccess();
    v9 = v4[8];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4[8] = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = sub_1B8ABAC24(0, *(v9 + 2) + 1, 1, v9);
      v4[8] = v9;
    }

    v12 = *(v9 + 2);
    v11 = *(v9 + 3);
    if (v12 >= v11 >> 1)
    {
      v9 = sub_1B8ABAC24((v11 > 1), v12 + 1, 1, v9);
    }

    *(v9 + 2) = v12 + 1;
    v13 = &v9[16 * v12];
    *(v13 + 4) = v7;
    *(v13 + 5) = v8;
    v4[8] = v9;
    return swift_endAccess();
  }
}

uint64_t sub_1B8AEBF70(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  sub_1B8A85238(*v2 + 16, &v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA977D8, &qword_1B8AFD5F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBA97870, &unk_1B8AFDA30);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(&v14);
    v14 = 0;
    v15 = 0xE000000000000000;
    sub_1B8A85238((v4 + 2), &v16);
    sub_1B8AF0B78();
    __swift_destroy_boxed_opaque_existential_0(&v16);
    v5 = v15;
    v4[9] = v14;
    v4[10] = v5;
  }

  else
  {
    sub_1B8A85238((v4 + 2), &v16);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0(&v14);
    }

    v16 = 0;
    v17 = 0xE000000000000000;
    v14 = a1;
    sub_1B8AF0B78();
    v7 = v16;
    v8 = v17;
    swift_beginAccess();
    v9 = v4[8];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4[8] = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = sub_1B8ABAC24(0, *(v9 + 2) + 1, 1, v9);
      v4[8] = v9;
    }

    v12 = *(v9 + 2);
    v11 = *(v9 + 3);
    if (v12 >= v11 >> 1)
    {
      v9 = sub_1B8ABAC24((v11 > 1), v12 + 1, 1, v9);
    }

    *(v9 + 2) = v12 + 1;
    v13 = &v9[16 * v12];
    *(v13 + 4) = v7;
    *(v13 + 5) = v8;
    v4[8] = v9;
    return swift_endAccess();
  }
}

uint64_t sub_1B8AEC164(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_1B8A85238(*v2 + 16, &v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA977D8, &qword_1B8AFD5F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBA97870, &unk_1B8AFDA30);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(&v19);
    v19 = 0;
    v20 = 0xE000000000000000;
    sub_1B8A85238((v8 + 2), &v21);
    sub_1B8AF0B78();
    __swift_destroy_boxed_opaque_existential_0(&v21);
    v9 = v20;
    v8[9] = v19;
    v8[10] = v9;
  }

  sub_1B8A85238((v8 + 2), &v21);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(&v19);
LABEL_7:
    v21 = 0;
    v22 = 0xE000000000000000;
    sub_1B8AF0E98();
    v11 = v21;
    v13 = v22;
    goto LABEL_8;
  }

  (*(v5 + 16))(v7, a1, a2);
  if (!swift_dynamicCast())
  {
    goto LABEL_7;
  }

  v11 = sub_1B8AF0708();
  v13 = v12;

LABEL_8:
  swift_beginAccess();
  v14 = v8[8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[8] = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_1B8ABAC24(0, *(v14 + 2) + 1, 1, v14);
    v8[8] = v14;
  }

  v17 = *(v14 + 2);
  v16 = *(v14 + 3);
  if (v17 >= v16 >> 1)
  {
    v14 = sub_1B8ABAC24((v16 > 1), v17 + 1, 1, v14);
  }

  *(v14 + 2) = v17 + 1;
  v18 = &v14[16 * v17];
  *(v18 + 4) = v11;
  *(v18 + 5) = v13;
  v8[8] = v14;
  return swift_endAccess();
}

uint64_t sub_1B8AEC418()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 64);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 64) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1B8ABAC24(0, *(v2 + 2) + 1, 1, v2);
    *(v1 + 64) = v2;
  }

  v5 = *(v2 + 2);
  v4 = *(v2 + 3);
  if (v5 >= v4 >> 1)
  {
    v2 = sub_1B8ABAC24((v4 > 1), v5 + 1, 1, v2);
  }

  *(v2 + 2) = v5 + 1;
  v6 = &v2[16 * v5];
  *(v6 + 4) = 7104878;
  *(v6 + 5) = 0xE300000000000000;
  *(v1 + 64) = v2;
  return swift_endAccess();
}

unint64_t sub_1B8AEC6E0(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_1B8AF0748();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_1B8AF07D8();
}

uint64_t sub_1B8AEC790(uint64_t a1, unint64_t a2)
{
  if (qword_1EBA96498 != -1)
  {
LABEL_14:
    swift_once();
  }

  v3 = off_1EBA977A0;
  v4 = off_1EBA977A0 + 64;
  v5 = 1 << *(off_1EBA977A0 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(off_1EBA977A0 + 8);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  while (1)
  {
    v10 = v9;
    if (!v7)
    {
      break;
    }

LABEL_9:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v12 = (v3[7] + ((v9 << 10) | (16 * v11)));
    v13 = *v12;
    v14 = v12[1];

    if (sub_1B8AF07A8())
    {
      v15 = sub_1B8AF0728();

      sub_1B8AEC6E0(v15, a1, a2);

      sub_1B8AEC97C();
      sub_1B8AF0758();

      a2 = v14;
      a1 = v13;
    }

    else
    {
    }
  }

  while (1)
  {
    v9 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_14;
    }

    if (v9 >= v8)
    {
      break;
    }

    v7 = *&v4[8 * v9];
    ++v10;
    if (v7)
    {
      goto LABEL_9;
    }
  }

  return a1;
}

unint64_t sub_1B8AEC97C()
{
  result = qword_1EBA977C0;
  if (!qword_1EBA977C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA977C0);
  }

  return result;
}

uint64_t sub_1B8AEC9D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA977C8, &qword_1B8AFD5D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B8AECA50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B8AECAD8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B8AECB48(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
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

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_1B8AECC88(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
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

uint64_t sub_1B8AECEA8(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97950, &qword_1B8AFDCD0);
  v20 = *(v4 - 8);
  v21 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97958, &qword_1B8AFDCD8);
  v19 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97960, &qword_1B8AFDCE0);
  v23 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v18 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B8AEE8B0();
  sub_1B8AF1058();
  v13 = *(v2 + 16);
  v18[1] = *(v2 + 24);
  v18[2] = v13;
  if (*(v2 + 48))
  {
    v30 = 1;
    sub_1B8AEE904();
    sub_1B8AF0C88();
    v29 = 0;
    v15 = v21;
    v14 = v22;
    sub_1B8AF0C98();
    if (!v14)
    {
      v28 = 1;
      sub_1B8AF0C98();
      v27 = 2;
      sub_1B8AF0C98();
    }

    (*(v20 + 8))(v6, v15);
  }

  else
  {
    v26 = 0;
    sub_1B8AEE958();
    sub_1B8AF0C88();
    v25 = 0;
    v16 = v22;
    sub_1B8AF0C98();
    if (!v16)
    {
      v24 = 1;
      sub_1B8AF0C98();
    }

    (*(v19 + 8))(v9, v7);
  }

  return (*(v23 + 8))(v12, v10);
}

uint64_t sub_1B8AED244()
{
  if (*v0)
  {
    return 8461777051906630000;
  }

  else
  {
    return 0x6F6F426573726170;
  }
}

uint64_t sub_1B8AED28C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F6F426573726170 && a2 == 0xEC0000006E61656CLL;
  if (v6 || (sub_1B8AF0EA8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 8461777051906630000 && a2 == 0xE90000000000006DLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B8AF0EA8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1B8AED374(uint64_t a1)
{
  v2 = sub_1B8AEE8B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8AED3B0(uint64_t a1)
{
  v2 = sub_1B8AEE8B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8AED3EC()
{
  if (*v0)
  {
    return 0x65756C6176;
  }

  else
  {
    return 7955819;
  }
}

uint64_t sub_1B8AED41C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v5 || (sub_1B8AF0EA8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B8AF0EA8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1B8AED4F4(uint64_t a1)
{
  v2 = sub_1B8AEE958();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8AED530(uint64_t a1)
{
  v2 = sub_1B8AEE958();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B8AED56C()
{
  v1 = 0x65756C6176;
  if (*v0 != 1)
  {
    v1 = 0x657079546D756E65;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7955819;
  }
}

uint64_t sub_1B8AED5BC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B8AEE12C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B8AED5E4(uint64_t a1)
{
  v2 = sub_1B8AEE904();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8AED620(uint64_t a1)
{
  v2 = sub_1B8AEE904();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1B8AED65C@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1B8AEE240(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

unint64_t sub_1B8AED6C4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA965C8, &unk_1B8AF7340);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B8AF6490;
  *(inited + 32) = sub_1B8AF0668();
  *(inited + 40) = v1;
  v2 = sub_1B8AD6C1C();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v2;
  *(inited + 56) = v3;
  v4 = sub_1B8AE6590(inited);
  swift_setDeallocating();
  sub_1B8AB3660(inited + 32);
  return v4;
}

uint64_t sub_1B8AED788(uint64_t a1)
{
  v2 = sub_1B8ADA438();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1B8AED7C4(uint64_t a1)
{
  v2 = sub_1B8ADA438();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

id static SCMLUserDefaults.globalBool(name:defaultValue:)(uint64_t a1, uint64_t a2, char a3)
{
  result = sub_1B8AEDA08(a1, a2);
  if (!v3)
  {
    if (result == 2)
    {
      v6 = a3;
    }

    else
    {
      v6 = result;
    }

    return [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  }

  return result;
}

id SCMLUserDefaults.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SCMLUserDefaults.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SCMLUserDefaults();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SCMLUserDefaults.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for SCMLUserDefaults();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1B8AEDA08(uint64_t a1, uint64_t a2)
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v5 = result;
    internalBuild = MobileGestalt_get_internalBuild();

    if (!internalBuild)
    {
      return 2;
    }

    v7 = [objc_opt_self() standardUserDefaults];
    *&v19[0] = 0xD000000000000025;
    *(&v19[0] + 1) = 0x80000001B8B07500;
    MEMORY[0x1B8CC5F50](a1, a2);
    v8 = sub_1B8AF0658();

    v9 = [v7 objectForKey_];

    if (!v9)
    {
      return 2;
    }

    sub_1B8AF0A18();
    swift_unknownObjectRelease();
    sub_1B8AAB328(v19, v20);
    sub_1B8A7BBE0(v20, v19);
    sub_1B8AEDD48();
    if (swift_dynamicCast())
    {
      v10 = [v18 integerValue];

      __swift_destroy_boxed_opaque_existential_0(v20);
      return v10 != 0;
    }

    sub_1B8A7BBE0(v20, v19);
    if (swift_dynamicCast())
    {
      v11 = sub_1B8AF06C8();
      v13 = v12;

      if (v11 == 7562617 && v13 == 0xE300000000000000 || (sub_1B8AF0EA8() & 1) != 0)
      {
        __swift_destroy_boxed_opaque_existential_0(v20);

        return 1;
      }

      if (v11 == 28526 && v13 == 0xE200000000000000)
      {

LABEL_16:
        __swift_destroy_boxed_opaque_existential_0(v20);
        return 0;
      }

      v14 = sub_1B8AF0EA8();

      if (v14)
      {
        goto LABEL_16;
      }
    }

    *&v19[0] = 0xD000000000000025;
    *(&v19[0] + 1) = 0x80000001B8B07500;
    MEMORY[0x1B8CC5F50](a1, a2);
    v15 = v19[0];
    *&v19[0] = 0;
    *(&v19[0] + 1) = 0xE000000000000000;
    sub_1B8AF0B78();
    v16 = v19[0];
    sub_1B8ADA48C();
    swift_allocError();
    *v17 = v15;
    *(v17 + 16) = v16;
    *(v17 + 32) = 0;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_0(v20);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1B8AEDD48()
{
  result = qword_1EBA978F8;
  if (!qword_1EBA978F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBA978F8);
  }

  return result;
}

id sub_1B8AEDD94(uint64_t a1, uint64_t a2)
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v5 = result;
    internalBuild = MobileGestalt_get_internalBuild();

    if (internalBuild && (v7 = [objc_opt_self() standardUserDefaults], MEMORY[0x1B8CC5F50](a1, a2), v8 = sub_1B8AF0658(), , v9 = objc_msgSend(v7, sel_stringForKey_, v8), v7, v8, v9))
    {
      v10 = sub_1B8AF0668();

      return v10;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1B8AEDED4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B8AEDF1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

unint64_t sub_1B8AEDF8C(void *a1)
{
  a1[1] = sub_1B8ADA438();
  a1[2] = sub_1B8AEDFDC();
  a1[3] = sub_1B8AEE030();
  a1[4] = sub_1B8AEE084();
  a1[5] = sub_1B8AEE0D8();
  result = sub_1B8ADA320();
  a1[6] = result;
  return result;
}

unint64_t sub_1B8AEDFDC()
{
  result = qword_1EBA97900;
  if (!qword_1EBA97900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97900);
  }

  return result;
}

unint64_t sub_1B8AEE030()
{
  result = qword_1EBA97908;
  if (!qword_1EBA97908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97908);
  }

  return result;
}

unint64_t sub_1B8AEE084()
{
  result = qword_1EBA97910;
  if (!qword_1EBA97910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97910);
  }

  return result;
}

unint64_t sub_1B8AEE0D8()
{
  result = qword_1EBA97918;
  if (!qword_1EBA97918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97918);
  }

  return result;
}

uint64_t sub_1B8AEE12C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v3 || (sub_1B8AF0EA8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000 || (sub_1B8AF0EA8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657079546D756E65 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B8AF0EA8();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1B8AEE240@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97920, &qword_1B8AFDCB0);
  v46 = *(v3 - 8);
  v47 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v41 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97928, &qword_1B8AFDCB8);
  v45 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v41 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA97930, &unk_1B8AFDCC0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v41 - v11;
  v13 = a1[3];
  v50 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1B8AEE8B0();
  v14 = v49;
  sub_1B8AF1048();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_0(v50);
  }

  v44 = v6;
  v15 = v5;
  v16 = v47;
  v17 = v48;
  v49 = v10;
  v18 = sub_1B8AF0C78();
  v19 = (2 * *(v18 + 16)) | 1;
  v51 = v18;
  v52 = v18 + 32;
  v53 = 0;
  v54 = v19;
  v20 = sub_1B8AE4FD0();
  v21 = v12;
  if (v20 == 2 || v53 != v54 >> 1)
  {
    v26 = sub_1B8AF0B08();
    swift_allocError();
    v28 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA966C8, &qword_1B8AF9190);
    *v28 = &_s5ErrorON_1;
    sub_1B8AF0C08();
    sub_1B8AF0AF8();
    (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
    swift_willThrow();
    (*(v49 + 8))(v21, v9);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0(v50);
  }

  v55 = v20;
  if (v20)
  {
    v56 = 1;
    sub_1B8AEE904();
    v22 = v15;
    sub_1B8AF0BF8();
    v23 = v49;
    v24 = v17;
    v25 = v21;
    v56 = 0;
    v43 = sub_1B8AF0C18();
    v45 = v32;
    v56 = 1;
    v41 = sub_1B8AF0C18();
    v42 = v35;
    v56 = 2;
    v44 = sub_1B8AF0C18();
    v38 = v37;
    (*(v46 + 8))(v22, v16);
    (*(v23 + 8))(v25, v9);
    swift_unknownObjectRelease();
    v39 = v45;
  }

  else
  {
    v56 = 0;
    sub_1B8AEE958();
    sub_1B8AF0BF8();
    v29 = v49;
    v24 = v17;
    v56 = 0;
    v30 = v44;
    v31 = sub_1B8AF0C18();
    v39 = v33;
    v43 = v31;
    v56 = 1;
    v41 = sub_1B8AF0C18();
    v42 = v36;
    (*(v45 + 8))(v8, v30);
    (*(v29 + 8))(v12, v9);
    swift_unknownObjectRelease();
    v44 = 0;
    v38 = 0;
  }

  result = __swift_destroy_boxed_opaque_existential_0(v50);
  *v24 = v43;
  *(v24 + 8) = v39;
  v40 = v42;
  *(v24 + 16) = v41;
  *(v24 + 24) = v40;
  *(v24 + 32) = v44;
  *(v24 + 40) = v38;
  *(v24 + 48) = v55 & 1;
  return result;
}

unint64_t sub_1B8AEE8B0()
{
  result = qword_1EBA97938;
  if (!qword_1EBA97938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97938);
  }

  return result;
}

unint64_t sub_1B8AEE904()
{
  result = qword_1EBA97940;
  if (!qword_1EBA97940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97940);
  }

  return result;
}

unint64_t sub_1B8AEE958()
{
  result = qword_1EBA97948;
  if (!qword_1EBA97948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97948);
  }

  return result;
}

unint64_t sub_1B8AEE9E0()
{
  result = qword_1EBA97968;
  if (!qword_1EBA97968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97968);
  }

  return result;
}

unint64_t sub_1B8AEEA38()
{
  result = qword_1EBA97970;
  if (!qword_1EBA97970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97970);
  }

  return result;
}

unint64_t sub_1B8AEEA90()
{
  result = qword_1EBA97978;
  if (!qword_1EBA97978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97978);
  }

  return result;
}

unint64_t sub_1B8AEEAE8()
{
  result = qword_1EBA97980;
  if (!qword_1EBA97980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97980);
  }

  return result;
}

unint64_t sub_1B8AEEB40()
{
  result = qword_1EBA97988;
  if (!qword_1EBA97988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97988);
  }

  return result;
}

unint64_t sub_1B8AEEB98()
{
  result = qword_1EBA97990;
  if (!qword_1EBA97990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97990);
  }

  return result;
}

unint64_t sub_1B8AEEBF0()
{
  result = qword_1EBA97998;
  if (!qword_1EBA97998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA97998);
  }

  return result;
}

unint64_t sub_1B8AEEC48()
{
  result = qword_1EBA979A0;
  if (!qword_1EBA979A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA979A0);
  }

  return result;
}

unint64_t sub_1B8AEECA0()
{
  result = qword_1EBA979A8;
  if (!qword_1EBA979A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA979A8);
  }

  return result;
}

void anonymous namespace::tensorViewCHW()
{
  __assert_rtn("tensorViewCHW", "SCMLImageAnalyzer.mm", 501, "buf->sequence_length == 1");
}

{
  __assert_rtn("tensorViewCHW", "SCMLImageAnalyzer.mm", 502, "buf->batch_number == 1");
}

uint64_t E5RT::ExecutionStreamOperation::CreatePreCompiledComputeOp()
{
  return MEMORY[0x1EEE02E98]();
}

{
  return MEMORY[0x1EEE02EA0]();
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__filename(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x1EEE63A08](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__parent_path(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x1EEE63A18](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__root_directory(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x1EEE63A20](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__stem(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x1EEE63A48](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const char *a2)
{
  return MEMORY[0x1EEE63B20](this, a2);
}

{
  return MEMORY[0x1EEE63B38](this, a2);
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const std::string *a2)
{
  return MEMORY[0x1EEE63B28](this, a2);
}

{
  return MEMORY[0x1EEE63B40](this, a2);
}

void std::runtime_error::~runtime_error(std::runtime_error *this)
{
  MEMORY[0x1EEE63B50](this);
}

{
  MEMORY[0x1EEE63B58](this);
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x1EEE63EB0]();
}

{
  return MEMORY[0x1EEE63ED0]();
}

{
  return MEMORY[0x1EEE63EE8]();
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}