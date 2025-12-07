uint64_t sub_1C949C9C0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for LocationOfInterest(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v50[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v50[-1] - v11;
  v13 = type metadata accessor for LocationCoalescenceProvider.Labeling(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v50[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LocationCoalescenceProvider.LocationLabelingResult(0);
  sub_1C94996D4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1C9499788();
    sub_1C94996D4();
    v51 = type metadata accessor for LocationCoalescenceProvider.LocationWrapper(0);
    v52 = &off_1F4909DA0;
    __swift_allocate_boxed_opaque_existential_1(v50);
    sub_1C94996D4();
    sub_1C94998A0(v9, type metadata accessor for LocationOfInterest);
    v21 = v3[5];
    v22 = v3[6];
    __swift_project_boxed_opaque_existential_1(v3 + 2, v21);
    v19 = (*(v22 + 32))(v21, v22);
    v20 = v12;
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1C9469B6C(a1, v50);
    v17 = v3[5];
    v18 = v3[6];
    __swift_project_boxed_opaque_existential_1(v3 + 2, v17);
    v19 = (*(v18 + 32))(v17, v18);
    v20 = v15;
LABEL_5:
    sub_1C94998A0(v20, type metadata accessor for LocationOfInterest);
    goto LABEL_7;
  }

  sub_1C9469B6C(a1, v50);
  v23 = v3[5];
  v24 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v23);
  v19 = (*(v24 + 24))(v23, v24);
LABEL_7:
  v25 = v51;
  v26 = v52;
  __swift_project_boxed_opaque_existential_1(v50, v51);
  v27 = (v26[2])(v25, v26);
  v29 = v28;
  v30 = a2[3];
  v31 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v30);
  if (v27 == (*(v31 + 16))(v30, v31) && v29 == v32)
  {
  }

  else
  {
    v34 = sub_1C96A7DE4();

    if ((v34 & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v50);
      goto LABEL_15;
    }
  }

  v35 = v51;
  v36 = v52;
  __swift_project_boxed_opaque_existential_1(v50, v51);
  v37 = (v36[1])(v35, v36);
  v39 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:v37 longitude:v38];
  v40 = a2[3];
  v41 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v40);
  v42 = (*(v41 + 8))(v40, v41);
  v44 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:v42 longitude:v43];
  [v39 distanceFromLocation_];
  v46 = v45;

  __swift_destroy_boxed_opaque_existential_1Tm(v50);
  if (v46 <= v19)
  {
    result = sub_1C9469B6C(a1, a3);
    *(a3 + 40) = v46;
    v48 = 1;
    goto LABEL_17;
  }

LABEL_15:
  result = sub_1C9469B6C(a1, a3);
  v48 = 0;
LABEL_17:
  *(a3 + 48) = v48;
  return result;
}

uint64_t sub_1C949CEB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void AppConfigurationLocationCoalescenceOptionsProvider.locationOfInterestDedupingDistanceThreshold.getter()
{
  v0 = type metadata accessor for LocationsConfiguration(0);
  v1 = OUTLINED_FUNCTION_7(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1_54(v2, v3);
  OUTLINED_FUNCTION_0_83();
  OUTLINED_FUNCTION_2_55();
}

void *CurrentLocation.identifier.getter@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for Location(0);
  v4 = OUTLINED_FUNCTION_7(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_35_4();
  type metadata accessor for CurrentLocation(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14();
  v8 = v7 - v6;
  sub_1C949D15C(v1, v7 - v6);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    if (qword_1EDB79F80 != -1)
    {
      OUTLINED_FUNCTION_4_35(&qword_1EDB79F80);
    }

    memcpy(__dst, &qword_1EDB79F88, sizeof(__dst));
    v13 = OUTLINED_FUNCTION_11();
    memcpy(v13, v14, 0x48uLL);
    return sub_1C95087DC(__dst, v15);
  }

  else
  {
    OUTLINED_FUNCTION_11_23();
    sub_1C949A788(v8, v1, v9);
    memcpy(__dst, v1, sizeof(__dst));
    sub_1C95087DC(__dst, v15);
    v10 = OUTLINED_FUNCTION_21_17();
    sub_1C948E940(v10, v11);
    return memcpy(a1, __dst, 0x48uLL);
  }
}

uint64_t sub_1C949D15C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CurrentLocation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t CurrentLocation.locationName.getter()
{
  CurrentLocation.identifier.getter(v1);
  sub_1C96A53C4();
  sub_1C953AEDC(v1);
  return OUTLINED_FUNCTION_11();
}

uint64_t sub_1C949D204()
{
  v1 = *(v0 + 16);
  sub_1C96A53C4();
  return v1;
}

double CurrentLocation.coordinate.getter()
{
  v2 = type metadata accessor for Location(0);
  v3 = OUTLINED_FUNCTION_7(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14();
  v6 = v5 - v4;
  type metadata accessor for CurrentLocation(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_35_4();
  sub_1C949D15C(v0, v0);
  OUTLINED_FUNCTION_21_17();
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    if (qword_1EDB79F80 != -1)
    {
      OUTLINED_FUNCTION_4_35(&qword_1EDB79F80);
    }

    v9 = *&qword_1EDB79FA8;
    sub_1C96A53C4();
    sub_1C96A53C4();
    sub_1C96A53C4();
  }

  else
  {
    OUTLINED_FUNCTION_8_25();
    sub_1C949A788(v0, v6, v8);
    v9 = *(v6 + 32);
    sub_1C96A53C4();
    sub_1C96A53C4();
    sub_1C96A53C4();
    sub_1C948E940(v6, v1);
  }

  return v9;
}

void AppConfigurationLocationCoalescenceOptionsProvider.savedLocationDedupingDistanceThreshold.getter()
{
  v0 = type metadata accessor for LocationsConfiguration(0);
  v1 = OUTLINED_FUNCTION_7(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_1_54(v2, v3);
  OUTLINED_FUNCTION_0_83();
  OUTLINED_FUNCTION_2_55();
}

uint64_t sub_1C949D528(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 56 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = v8;
      v10 = v7;
      do
      {
        sub_1C949D47C(v10, v24);
        v11 = v10 - 56;
        sub_1C949D47C(v10 - 56, v23);
        sub_1C949D47C(v24, v20);
        if (v22)
        {
          v12 = v21;
        }

        else
        {
          v12 = INFINITY;
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v20);
        sub_1C949D47C(v23, v20);
        if (v22)
        {
          v13 = v21;
        }

        else
        {
          v13 = INFINITY;
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v20);
        sub_1C949D4E4(v23);
        result = sub_1C949D4E4(v24);
        if (v12 >= v13)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v14 = *(v10 + 48);
        v16 = *(v10 + 16);
        v15 = *(v10 + 32);
        v17 = *v10;
        v18 = *(v10 - 40);
        *v10 = *v11;
        *(v10 + 16) = v18;
        *(v10 + 32) = *(v10 - 24);
        *(v10 + 48) = *(v10 - 8);
        *v11 = v17;
        *(v10 - 40) = v16;
        *(v10 - 24) = v15;
        v10 -= 56;
        *(v11 + 48) = v14;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v7 += 56;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

double sub_1C949D688@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_1C949D47C(a1 + 32, a2);
  }

  else
  {
    result = 0.0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    *(a2 + 48) = -1;
  }

  return result;
}

void sub_1C949D6B4()
{
  OUTLINED_FUNCTION_129();
  v3 = v2;
  v4 = 0;
  v6 = *(v5 + 16);
  v7 = v5 + 32;
  v8 = MEMORY[0x1E69E7CC0];
  v20 = v2;
  v21 = v5;
  v19 = v6;
  while (1)
  {
    if (v6 == v4)
    {
      goto LABEL_14;
    }

    if (v4 >= *(v1 + 16))
    {
      break;
    }

    sub_1C949D8BC(v7, v25);
    v9 = v3(v25);
    if (v0)
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v25);

LABEL_14:

      return;
    }

    if (v9)
    {
      sub_1C94670AC(v25, v22);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v26 = v8;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_126();
        sub_1C9496280();
        v8 = v26;
      }

      v11 = *(v8 + 16);
      if (v11 >= *(v8 + 24) >> 1)
      {
        sub_1C9496280();
      }

      v12 = v23;
      v13 = v24;
      v14 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
      MEMORY[0x1EEE9AC00](v14);
      OUTLINED_FUNCTION_14();
      v17 = v16 - v15;
      (*(v18 + 16))(v16 - v15);
      sub_1C94999F8(v11, v17, &v26, v12, v13);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      v8 = v26;
      v3 = v20;
      v1 = v21;
      v6 = v19;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
    }

    v7 += 40;
    ++v4;
  }

  __break(1u);
}

uint64_t sub_1C949D8BC(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_8_1();
  (*v3)(a2);
  return a2;
}

BOOL sub_1C949D91C(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = (*(v4 + 8))(v3, v4);
  v7 = v6;
  v8 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v8);
  v10 = v5 != (*(v9 + 8))(v8, v9);
  return v7 != v11 || v10;
}

void OUTLINED_FUNCTION_65_1()
{
  *v0 = v1;
  v0[1] = v2;
  v0[2] = v3;
  v0[3] = v4;
}

uint64_t OUTLINED_FUNCTION_65_2()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

uint64_t sub_1C949DA68(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1C949DB44(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5400, &qword_1C96ADAE0);
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1C949DB5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

char *sub_1C949DBD4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_18(a3, result);
  }

  return result;
}

uint64_t sub_1C949DC00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7A78, &qword_1C96C19A0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14[-v7];
  v15 = a1;
  sub_1C949DD60(sub_1C949E21C, v14, a2, &v14[-v7]);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6E38, &unk_1C96C1790);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_1C9470AFC(v8, &qword_1EC3A7A78, &qword_1C96C19A0);
    v10 = type metadata accessor for LocationOfInterest(0);
    return __swift_storeEnumTagSinglePayload(a3, 1, 1, v10);
  }

  else
  {
    v12 = *(v9 + 48);
    sub_1C9499788();
    v13 = type metadata accessor for LocationOfInterest(0);
    __swift_storeEnumTagSinglePayload(a3, 0, 1, v13);
    return __swift_destroy_boxed_opaque_existential_1Tm(&v8[v12]);
  }
}

uint64_t sub_1C949DD60@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = v4;
  v36 = a2;
  v37 = a1;
  v34 = a4;
  v9 = &qword_1EC3A6E38;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6E38, &unk_1C96C1790);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v35 = &v34 - v14;
  v15 = a3 + 64;
  OUTLINED_FUNCTION_6_42();
  v39 = a3;
  result = sub_1C96A53C4();
  v17 = 0;
  if (v5)
  {
    while (1)
    {
      v18 = v12;
      v40 = v7;
      v19 = v9;
      v20 = v17;
LABEL_7:
      v21 = __clz(__rbit64(v5)) | (v20 << 6);
      v22 = v39;
      v23 = *(v39 + 48);
      v24 = type metadata accessor for LocationOfInterest(0);
      OUTLINED_FUNCTION_7(v24);
      v26 = v23 + *(v25 + 72) * v21;
      v27 = v35;
      sub_1C949E0B0(v26, v35, type metadata accessor for LocationOfInterest);
      sub_1C9469B6C(*(v22 + 56) + 40 * v21, v27 + *(v38 + 48));
      v28 = v27;
      v12 = v18;
      v9 = v19;
      sub_1C95F9818(v28, v18, v19, &unk_1C96C1790);
      v29 = v40;
      v30 = v37(v18);
      v7 = v29;
      if (v29)
      {
        sub_1C9470AFC(v18, &qword_1EC3A6E38, &unk_1C96C1790);
      }

      if (v30)
      {
        break;
      }

      v5 &= v5 - 1;
      result = sub_1C9470AFC(v18, v9, &unk_1C96C1790);
      v17 = v20;
      if (!v5)
      {
        goto LABEL_3;
      }
    }

    v33 = v34;
    sub_1C95F9818(v12, v34, &qword_1EC3A6E38, &unk_1C96C1790);
    v31 = v33;
    v32 = 0;
    return __swift_storeEnumTagSinglePayload(v31, v32, 1, v38);
  }

  else
  {
LABEL_3:
    while (1)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v20 >= v6)
      {

        v31 = v34;
        v32 = 1;
        return __swift_storeEnumTagSinglePayload(v31, v32, 1, v38);
      }

      v5 = *(v15 + 8 * v20);
      ++v17;
      if (v5)
      {
        v18 = v12;
        v40 = v7;
        v19 = v9;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C949E000()
{
  v1 = OUTLINED_FUNCTION_36_2();
  v2(v1);
  OUTLINED_FUNCTION_6();
  v3 = OUTLINED_FUNCTION_11();
  v4(v3);
  return v0;
}

uint64_t sub_1C949E054(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  v4 = OUTLINED_FUNCTION_11();
  v5(v4);
  return a2;
}

uint64_t sub_1C949E0B0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C949E110(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_51(a1, a2, a3, a4);
  OUTLINED_FUNCTION_6();
  v5 = OUTLINED_FUNCTION_11();
  v6(v5);
  return v4;
}

uint64_t sub_1C949E15C()
{
  OUTLINED_FUNCTION_40_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_6();
  v3 = OUTLINED_FUNCTION_11();
  v4(v3);
  return v0;
}

uint64_t sub_1C949E1B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C949E23C(uint64_t a1, void *a2)
{
  v3 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6E38, &unk_1C96C1790) + 48));
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  return sub_1C949C170(a2, v4, v5) & 1;
}

unint64_t sub_1C949E2BC(char a1)
{
  OUTLINED_FUNCTION_21_6();
  MEMORY[0x1CCA8D880](a1 & 1);
  v2 = sub_1C96A7F24();
  return sub_1C949E31C(a1 & 1, v2);
}

unint64_t sub_1C949E31C(char a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  result = a2 & v4;
  v6 = a1 & 1;
  while (((1 << result) & *(v2 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0 && *(*(v2 + 48) + result) != v6)
  {
    result = (result + 1) & v4;
  }

  return result;
}

uint64_t sub_1C949E390(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A58E0, &qword_1C96B1480);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v54 - v3;
  v5 = type metadata accessor for CurrentLocation(0);
  MEMORY[0x1EEE9AC00](v5);
  v54[4] = v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v57 = v54 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5938, &unk_1C96B15B0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v63 = v54 - v10;
  v62 = type metadata accessor for SavedLocation(0);
  MEMORY[0x1EEE9AC00](v62 - 8);
  v55 = v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v61 = v54 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5450, &qword_1C96AD580);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v54 - v15;
  v59 = type metadata accessor for Location(0);
  v54[2] = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59 - 8);
  v58 = v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v54[3] = v54 - v19;
  v64 = MEMORY[0x1E69E7CC8];
  v71 = MEMORY[0x1E69E7CC8];
  v20 = a1 + 64;
  v21 = 1 << *(a1 + 32);
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  else
  {
    v22 = -1;
  }

  v23 = v22 & *(a1 + 64);
  v24 = (v21 + 63) >> 6;
  result = sub_1C96A53C4();
  v26 = 0;
  v72 = a1;
  v56 = v5;
  v60 = v16;
  while (v23)
  {
    v27 = v4;
LABEL_11:
    v29 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    v30 = v29 | (v26 << 6);
    v31 = *(*(a1 + 48) + v30);
    sub_1C9469B6C(*(a1 + 56) + 40 * v30, v70 + 8);
    LOBYTE(v70[0]) = v31;
    v67 = v70[0];
    v68 = v70[1];
    v69 = v70[2];
    sub_1C9469B6C(&v67 + 8, v65);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5400, &qword_1C96ADAE0);
    v32 = v63;
    v33 = v62;
    if (swift_dynamicCast())
    {
      __swift_storeEnumTagSinglePayload(v32, 0, 1, v33);
      sub_1C9495F48();
      v34 = v55;
      sub_1C9489990();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1C948E888(v34, type metadata accessor for SavedLocation);
        v35 = 1;
        v4 = v27;
        v36 = v60;
      }

      else
      {
        v36 = v60;
        sub_1C9495F48();
        v35 = 0;
        v4 = v27;
      }

      v41 = v59;
      a1 = v72;
      __swift_storeEnumTagSinglePayload(v36, v35, 1, v59);
      sub_1C948E888(v61, type metadata accessor for SavedLocation);
      goto LABEL_20;
    }

    __swift_storeEnumTagSinglePayload(v32, 1, 1, v33);
    sub_1C9470AFC(v32, &qword_1EC3A5938, &unk_1C96B15B0);
    sub_1C9469B6C(&v67 + 8, v65);
    v4 = v27;
    v37 = v56;
    if (swift_dynamicCast())
    {
      v38 = 1;
      __swift_storeEnumTagSinglePayload(v4, 0, 1, v37);
      sub_1C9495F48();
      sub_1C9489990();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v36 = v60;
      if (EnumCaseMultiPayload <= 2)
      {
        sub_1C9495F48();
        v38 = 0;
      }

      v40 = v38;
      v41 = v59;
      __swift_storeEnumTagSinglePayload(v36, v40, 1, v59);
      sub_1C948E888(v57, type metadata accessor for CurrentLocation);
      a1 = v72;
LABEL_20:
      if (__swift_getEnumTagSinglePayload(v36, 1, v41) == 1)
      {
        goto LABEL_26;
      }

      sub_1C9495F48();
      v66[0] = v67;
      v66[1] = v68;
      v66[2] = v69;
      sub_1C9495F48();
      if (v64[3] <= v64[2])
      {
        sub_1C949EC6C();
      }

      v42 = v71;
      v43 = LOBYTE(v66[0]);
      sub_1C96A7EE4();
      MEMORY[0x1CCA8D880](v43);
      result = sub_1C96A7F24();
      v44 = v42 + 64;
      v64 = v42;
      v45 = -1 << *(v42 + 32);
      v46 = result & ~v45;
      v47 = v46 >> 6;
      if (((-1 << v46) & ~*(v42 + 64 + 8 * (v46 >> 6))) == 0)
      {
        v49 = 0;
        v50 = (63 - v45) >> 6;
        while (++v47 != v50 || (v49 & 1) == 0)
        {
          v51 = v47 == v50;
          if (v47 == v50)
          {
            v47 = 0;
          }

          v49 |= v51;
          v52 = *(v44 + 8 * v47);
          if (v52 != -1)
          {
            v48 = __clz(__rbit64(~v52)) + (v47 << 6);
            goto LABEL_34;
          }
        }

        goto LABEL_37;
      }

      v48 = __clz(__rbit64((-1 << v46) & ~*(v42 + 64 + 8 * (v46 >> 6)))) | v46 & 0x7FFFFFFFFFFFFFC0;
LABEL_34:
      *(v44 + ((v48 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v48;
      v53 = v64;
      *(v64[6] + v48) = v43;
      sub_1C9495F48();
      ++v53[2];
      result = __swift_destroy_boxed_opaque_existential_1Tm(v66 + 1);
      a1 = v72;
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v4, 1, 1, v37);
      sub_1C9470AFC(v4, &qword_1EC3A58E0, &qword_1C96B1480);
      v36 = v60;
      __swift_storeEnumTagSinglePayload(v60, 1, 1, v59);
      a1 = v72;
LABEL_26:
      sub_1C9470AFC(&v67, &qword_1EC3A5960, &qword_1C96B15D8);
      result = sub_1C9470AFC(v36, &qword_1EC3A5450, &qword_1C96AD580);
    }
  }

  while (1)
  {
    v28 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v28 >= v24)
    {

      return v64;
    }

    v23 = *(v20 + 8 * v28);
    ++v26;
    if (v23)
    {
      v27 = v4;
      v26 = v28;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

void sub_1C949EC6C()
{
  OUTLINED_FUNCTION_103();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for Location(0);
  v34 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  OUTLINED_FUNCTION_14();
  v36 = v6 - v5;
  v7 = *v0;
  v35 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5610, &unk_1C96AF040);
  v8 = sub_1C96A7BC4();
  v9 = v8;
  if (!*(v7 + 16))
  {
LABEL_32:

LABEL_33:
    *v1 = v9;
    OUTLINED_FUNCTION_101();
    return;
  }

  v10 = 0;
  v11 = (v7 + 64);
  v12 = 1 << *(v7 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(v7 + 64);
  v15 = (v12 + 63) >> 6;
  v16 = v8 + 64;
  if (!v14)
  {
LABEL_7:
    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v19 = v11[v10];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v14 = (v19 - 1) & v19;
        goto LABEL_12;
      }
    }

    if ((v35 & 1) == 0)
    {

      v1 = v0;
      goto LABEL_33;
    }

    v33 = 1 << *(v7 + 32);
    v1 = v0;
    if (v33 >= 64)
    {
      sub_1C94C18E0(0, (v33 + 63) >> 6, v7 + 64);
    }

    else
    {
      *v11 = -1 << v33;
    }

    *(v7 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v17 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_12:
    v20 = v17 | (v10 << 6);
    v21 = *(*(v7 + 48) + v20);
    v22 = *(v34 + 72);
    v23 = *(v7 + 56) + v22 * v20;
    if (v35)
    {
      sub_1C94898C4(v23, v36);
    }

    else
    {
      sub_1C9489760(v23, v36);
    }

    sub_1C96A7EE4();
    MEMORY[0x1CCA8D880](v21);
    v24 = sub_1C96A7F24();
    v25 = -1 << *(v9 + 32);
    v26 = v24 & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v16 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    *(*(v9 + 48) + v28) = v21;
    sub_1C94898C4(v36, *(v9 + 56) + v22 * v28);
    ++*(v9 + 16);
    if (!v14)
    {
      goto LABEL_7;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v16 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
}

uint64_t sub_1C949EF70(void (*a1)(uint64_t, __n128), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5928, &unk_1C96B15A0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v27 - v7;
  v9 = type metadata accessor for LocationModel(0);
  v31 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v32 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v30 = &v27 - v13;
  v14 = 0;
  v15 = *(a3 + 16);
  v16 = a3 + 32;
  v33 = MEMORY[0x1E69E7CC0];
  for (i = a3 + 32; ; v16 = i)
  {
    v17 = ~v14;
    v18 = v16 + 40 * v14;
    v19 = v15 - v14;
    if (!v19)
    {
      break;
    }

    while (1)
    {
      a1(v18, v12);
      if (v3)
      {
        v25 = v33;

        return v25;
      }

      if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
      {
        break;
      }

      sub_1C9470AFC(v8, &qword_1EC3A5928, &unk_1C96B15A0);
      --v17;
      v18 += 40;
      if (!--v19)
      {
        return v33;
      }
    }

    sub_1C9495F48();
    sub_1C9495F48();
    v20 = v33;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C94A033C();
      v20 = v23;
    }

    v21 = *(v20 + 16);
    v22 = v21 + 1;
    if (v21 >= *(v20 + 24) >> 1)
    {
      v28 = v21 + 1;
      sub_1C94A033C();
      v22 = v28;
      v33 = v24;
    }

    else
    {
      v33 = v20;
    }

    v14 = -v17;
    *(v33 + 16) = v22;
    sub_1C9495F48();
  }

  return v33;
}

uint64_t sub_1C949F248@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v33[2] = a5;
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v37 = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5450, &qword_1C96AD580);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5930, &unk_1C96B1930);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A58E0, &qword_1C96B1480);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v33 - v14;
  v16 = type metadata accessor for CurrentLocation(0);
  MEMORY[0x1EEE9AC00](v16);
  v33[1] = v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5938, &unk_1C96B15B0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = v33 - v19;
  v21 = type metadata accessor for SavedLocation(0);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C9469B6C(a1, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5400, &qword_1C96ADAE0);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v20, 0, 1, v21);
    sub_1C9495F48();
    SavedLocation.location.getter();
    sub_1C949FB28(v34, v35, v12);
    sub_1C9470AFC(v9, &qword_1EC3A5450, &qword_1C96AD580);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5948, &qword_1C96B15C0);
    v23 = v37;
    v24 = v37 + *(v22 + 48);
    sub_1C9495F48();
    sub_1C949E15C();
    *(v24 + *(type metadata accessor for LocationModelData(0) + 20)) = 0;
    v25 = type metadata accessor for LocationModel(0);
    swift_storeEnumTagMultiPayload();
    v26 = v23;
  }

  else
  {
    v27 = v12;
    v28 = v37;
    __swift_storeEnumTagSinglePayload(v20, 1, 1, v21);
    sub_1C9470AFC(v20, &qword_1EC3A5938, &unk_1C96B15B0);
    sub_1C9469B6C(a1, v38);
    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_storeEnumTagSinglePayload(v15, 1, 1, v16);
      sub_1C9470AFC(v15, &qword_1EC3A58E0, &qword_1C96B1480);
      v31 = type metadata accessor for LocationModel(0);
      v26 = v28;
      v30 = 1;
      return __swift_storeEnumTagSinglePayload(v26, v30, 1, v31);
    }

    __swift_storeEnumTagSinglePayload(v15, 0, 1, v16);
    sub_1C9495F48();
    sub_1C949F768(v9);
    sub_1C949FB28(v34, v35, v27);
    sub_1C9470AFC(v9, &qword_1EC3A5450, &qword_1C96AD580);
    v29 = v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5940, &qword_1C96B1940) + 48);
    sub_1C9495F48();
    sub_1C949E15C();
    *(v29 + *(type metadata accessor for LocationModelData(0) + 20)) = 0;
    v25 = type metadata accessor for LocationModel(0);
    swift_storeEnumTagMultiPayload();
    v26 = v28;
  }

  v30 = 0;
  v31 = v25;
  return __swift_storeEnumTagSinglePayload(v26, v30, 1, v31);
}

uint64_t sub_1C949F768@<X0>(uint64_t a2@<X8>)
{
  v3 = type metadata accessor for CurrentLocation(0);
  MEMORY[0x1EEE9AC00](v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5938, &unk_1C96B15B0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16[-v5 - 8];
  v7 = type metadata accessor for SavedLocation(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1C955FEC0();
  if (v17)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5400, &qword_1C96ADAE0);
    v10 = swift_dynamicCast();
    __swift_storeEnumTagSinglePayload(v6, v10 ^ 1u, 1, v7);
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
    {
      sub_1C9495F48();
      SavedLocation.location.getter();
      return sub_1C948E888(v9, type metadata accessor for SavedLocation);
    }
  }

  else
  {
    sub_1C9470AFC(v16, &qword_1EC3A58E8, &unk_1C96C1760);
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  }

  sub_1C9470AFC(v6, &qword_1EC3A5938, &unk_1C96B15B0);
  sub_1C9489990();
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v12 = type metadata accessor for Location(0);
    v13 = a2;
    v14 = 1;
  }

  else
  {
    sub_1C9495F48();
    v12 = type metadata accessor for Location(0);
    v13 = a2;
    v14 = 0;
  }

  return __swift_storeEnumTagSinglePayload(v13, v14, 1, v12);
}

uint64_t SavedLocation.location.getter()
{
  v2 = OUTLINED_FUNCTION_40_0();
  type metadata accessor for SavedLocation(v2);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_1();
  sub_1C949A614(v1, v1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C949A9FC(v1, type metadata accessor for SavedLocation);
    v4 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_1_73();
    sub_1C949A7E4(v1, v0, v5);
    v4 = 0;
  }

  v6 = type metadata accessor for Location(0);
  return __swift_storeEnumTagSinglePayload(v0, v4, 1, v6);
}

uint64_t sub_1C949FB28@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v41 = a2;
  v43 = a4;
  v5 = type metadata accessor for LocationOfInterest(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v39 = &v39 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v40 = &v39 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5450, &qword_1C96AD580);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v39 - v13;
  v15 = type metadata accessor for Location(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C955FEC0();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1C9470AFC(v14, &qword_1EC3A5450, &qword_1C96AD580);
  }

  else
  {
    sub_1C9495F48();
    sub_1C949FF24(v17, v41, &v44);
    v18 = v44;
    if (v44 != 2)
    {
      v22 = 0;
      v23 = *(a3 + 16);
      while (v23 != v22)
      {
        v24 = v18 & 1;
        sub_1C9489990();
        if (*v7 == (v18 & 1))
        {
          sub_1C948E888(v17, type metadata accessor for Location);
          sub_1C9495F48();
          v25 = v40;
          sub_1C9495F48();
          v26 = v43;
          sub_1C9489990();
          v27 = *(v25 + v5[6]);
          v28 = (v25 + v5[7]);
          v29 = v28[1];
          v42 = *v28;
          v30 = v5[9];
          v31 = (v25 + v5[8]);
          v33 = *v31;
          v32 = v31[1];
          v35 = *(v25 + v30);
          v34 = *(v25 + v30 + 8);
          sub_1C96A53C4();
          sub_1C96A53C4();
          sub_1C96A53C4();
          sub_1C948E888(v25, type metadata accessor for LocationOfInterest);
          *v26 = v24;
          v26[v5[6]] = v27;
          v36 = &v26[v5[7]];
          *v36 = v42;
          v36[1] = v29;
          v37 = &v26[v5[8]];
          *v37 = v33;
          v37[1] = v32;
          v38 = &v26[v5[9]];
          *v38 = v35;
          v38[1] = v34;
          v19 = v26;
          v20 = 0;
          return __swift_storeEnumTagSinglePayload(v19, v20, 1, v5);
        }

        ++v22;
        sub_1C948E888(v7, type metadata accessor for LocationOfInterest);
      }
    }

    sub_1C948E888(v17, type metadata accessor for Location);
  }

  v19 = v43;
  v20 = 1;
  return __swift_storeEnumTagSinglePayload(v19, v20, 1, v5);
}

uint64_t sub_1C949FF24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5950, &qword_1C96B15C8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12[-v7];
  v13 = a1;
  sub_1C94A004C(sub_1C94A031C, v12, a2, &v12[-v7]);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5958, &qword_1C96B15D0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    result = sub_1C9470AFC(v8, &qword_1EC3A5950, &qword_1C96B15C8);
    v11 = 2;
  }

  else
  {
    v11 = *v8;
    result = sub_1C948E888(&v8[*(v9 + 48)], type metadata accessor for Location);
  }

  *a3 = v11;
  return result;
}

uint64_t sub_1C94A004C@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = v4;
  v38 = a2;
  v39 = a1;
  v36 = a4;
  v9 = &qword_1EC3A5958;
  v10 = &qword_1C96B15D0;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5958, &qword_1C96B15D0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v11);
  v43 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v37 = &v35 - v14;
  v15 = a3 + 64;
  OUTLINED_FUNCTION_6_42();
  v41 = a3;
  result = sub_1C96A53C4();
  v17 = 0;
  if (v5)
  {
    while (1)
    {
      v18 = v10;
      v42 = v7;
      v19 = v9;
      v20 = v17;
LABEL_7:
      v21 = __clz(__rbit64(v5)) | (v20 << 6);
      v22 = *(v41 + 56);
      v23 = *(*(v41 + 48) + v21);
      v24 = type metadata accessor for Location(0);
      OUTLINED_FUNCTION_7(v24);
      v26 = v22 + *(v25 + 72) * v21;
      v27 = v37;
      sub_1C949E0B0(v26, &v37[*(v40 + 48)], type metadata accessor for Location);
      *v27 = v23;
      v28 = v27;
      v29 = v43;
      v9 = v19;
      v10 = v18;
      sub_1C95F9818(v28, v43, v19, v18);
      v30 = v42;
      v31 = v39(v29);
      v7 = v30;
      if (v30)
      {
        sub_1C9470AFC(v43, &qword_1EC3A5958, &qword_1C96B15D0);
      }

      if (v31)
      {
        break;
      }

      v5 &= v5 - 1;
      result = sub_1C9470AFC(v43, v9, v18);
      v17 = v20;
      if (!v5)
      {
        goto LABEL_3;
      }
    }

    v34 = v36;
    sub_1C95F9818(v43, v36, &qword_1EC3A5958, &qword_1C96B15D0);
    v32 = v34;
    v33 = 0;
    return __swift_storeEnumTagSinglePayload(v32, v33, 1, v40);
  }

  else
  {
LABEL_3:
    while (1)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v20 >= v6)
      {

        v32 = v36;
        v33 = 1;
        return __swift_storeEnumTagSinglePayload(v32, v33, 1, v40);
      }

      v5 = *(v15 + 8 * v20);
      ++v17;
      if (v5)
      {
        v18 = v10;
        v42 = v7;
        v19 = v9;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1C94A033C()
{
  OUTLINED_FUNCTION_1_8();
  if (v4)
  {
    OUTLINED_FUNCTION_0_7();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_15_2();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_3_2();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_23_5(v2, v5, &qword_1EC3A4CE0, &qword_1C96AAE20);
  v8 = OUTLINED_FUNCTION_17_7();
  type metadata accessor for LocationModel(v8);
  OUTLINED_FUNCTION_16_1();
  OUTLINED_FUNCTION_12_6();
  if (v1)
  {
    v10 = OUTLINED_FUNCTION_2_10(v9);
    sub_1C94A05B8(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_10_4();
  }
}

void *sub_1C94A0404(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
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
    return MEMORY[0x1E69E7CC0];
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

void sub_1C94A0500(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_112_0();
  if (v8 && (a4(0), OUTLINED_FUNCTION_8_1(), v5 + *(v9 + 72) * v4 > v6))
  {
    if (v6 != v5)
    {
      OUTLINED_FUNCTION_36_0();

      swift_arrayInitWithTakeBackToFront();
    }
  }

  else
  {
    a4(0);
    OUTLINED_FUNCTION_36_0();

    swift_arrayInitWithTakeFrontToBack();
  }
}

uint64_t get_enum_tag_for_layout_string_11WeatherCore19CoalescableLocation_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t WeatherCoalescedLocationResult.coalescedLocations.getter()
{
  type metadata accessor for WeatherCoalescedLocationResult(0);

  return sub_1C96A53C4();
}

uint64_t AppConfiguration.init(lastRefreshed:appConfigRefreshTimeInterval:locationDecimalPrecision:reverseGeocodingRefreshTimeInterval:reverseGeocodingDynamicCacheQueryDistance:weatherDynamicCacheQueryDistance:weatherDynamicCacheQueryTimeInterval:appStoreReview:endpoints:features:geocode:historicalFacts:locationsConfiguration:maps:namedNetworkConfigurations:network:news:notifications:predictedLocations:privacy:widgetPrivacy:providerAttribution:reportWeather:temperatureScale:unitConfiguration:weatherData:weatherDataService:weatherMenu:widget:languageConfigs:fallbackLanguage:treatmentIDs:segmentSetIDs:)@<X0>(uint64_t a1@<X0>, double a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, double a6@<X5>, int a7@<W6>, double a8@<X7>, uint64_t a9@<X8>, unsigned __int8 a10, double a11, unsigned __int8 a12, double a13, unsigned __int8 a14, void *a15, uint64_t a16, uint64_t a17, uint64_t *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t *a23, uint64_t a24, uint64_t *a25, int8x16_t *a26, __int128 *a27, uint64_t a28, uint64_t a29, unint64_t *a30, void (**a31)(void), uint64_t a32, uint64_t a33, void *a34, uint64_t a35, Swift::Double *a36, uint64_t a37, uint64_t a38, unint64_t a39, uint64_t a40, uint64_t a41)
{
  v391 = a8;
  v388 = a7;
  v387 = a6;
  v384 = a5;
  v386 = a4;
  v383 = a3;
  v382 = a2;
  v428 = a1;
  v397 = a9;
  LODWORD(v393) = a14;
  v392 = a13;
  v390 = a12;
  v389 = a11;
  v385 = a10;
  v379 = a36;
  v377 = a35;
  v375 = a34;
  v376 = a33;
  v374 = a31;
  v373 = a30;
  v372 = a29;
  v426.i64[0] = a24;
  v425.i64[0] = a19;
  v424.i64[0] = a17;
  v318 = sub_1C96A4764();
  OUTLINED_FUNCTION_1();
  v303 = v41;
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_24();
  v302 = v43;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_51_0();
  v317 = v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A70, &qword_1C96B05D0);
  v47 = OUTLINED_FUNCTION_7(v46);
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_24();
  v300 = v48;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_18_1();
  v335 = v50;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_18_1();
  v301 = v52;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_18_1();
  v337 = v54;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_18_1();
  v336 = v56;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_51_0();
  v338 = v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A62F0, &qword_1C96B51D0);
  OUTLINED_FUNCTION_7(v59);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v60);
  v417 = &v298 - v61;
  v62 = OUTLINED_FUNCTION_15_4();
  v427 = type metadata accessor for LocationsConfiguration(v62);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_24();
  v399 = v64;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_51_0();
  v339 = v66;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430, &unk_1C96AAB30);
  OUTLINED_FUNCTION_7(v67);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v68);
  v70 = &v298 - v69;
  v368 = sub_1C96A4A54();
  OUTLINED_FUNCTION_1();
  v370 = v71;
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_14();
  v369 = v74 - v73;
  v371 = *a15;
  v75 = a15[1];
  v316 = a15[2];
  v76 = a15[3];
  v378 = *v424.i64[0];
  v398 = *a18;
  v77 = a18[1];
  v78 = a18[2];
  v333 = a18[3];
  v334 = v78;
  v381 = *v425.i64[0];
  v418 = *a21;
  v413 = *(a21 + 8);
  v408 = *(a21 + 9);
  v407 = *(a21 + 10);
  v479 = *(a21 + 11);
  v480 = *(a21 + 15);
  v79 = *(a21 + 24);
  v409 = *(a21 + 16);
  v410 = v79;
  v406 = *(a21 + 32);
  v343 = *(a21 + 40);
  v416 = *(a21 + 41);
  v477 = *(a21 + 42);
  v478 = *(a21 + 46);
  v80 = *(a21 + 56);
  v395 = *(a21 + 48);
  v411 = v80;
  v81 = *(a21 + 72);
  v380 = *(a21 + 64);
  v396 = v81;
  v82 = *(a21 + 88);
  v394 = *(a21 + 80);
  v83 = *(a21 + 96);
  v84 = *(a21 + 104);
  v85 = *(a21 + 120);
  v405 = *(a21 + 112);
  v404 = v85;
  v414 = *(a21 + 128);
  v415 = *(a21 + 136);
  v403 = *(a21 + 137);
  v402 = *(a21 + 138);
  v476 = *(a21 + 143);
  v475 = *(a21 + 141);
  v401 = *(a21 + 139);
  v400 = *(a21 + 140);
  v86 = *(a21 + 152);
  v412 = *(a21 + 144);
  v342 = v86;
  v87 = *a23;
  v344 = a23[1];
  v88 = *(a23 + 16);
  v324 = *(a23 + 17);
  v325 = v88;
  v323 = *(a23 + 18);
  v90 = a23[3];
  v89 = a23[4];
  v326 = v87;
  v327 = v89;
  v319 = *(a23 + 40);
  v91 = a23[7];
  v321 = a23[6];
  v322 = v90;
  v320 = v91;
  v341 = *(v426.i64[0] + 2);
  v340 = *v426.i64[0];
  v92 = *a25;
  v345 = a25[1];
  v346 = v92;
  v93 = a25[2];
  v94 = *(a25 + 5);
  v351 = *(a25 + 4);
  v352 = v94;
  *&v94 = a25[12];
  v95 = a25[13];
  v347 = v93;
  v348 = v94;
  v350 = v95;
  v96 = a25[3];
  v349 = a25[4];
  v97 = a25[6];
  v307 = a25[5];
  v305 = v96;
  v306 = v97;
  v304 = a25[7];
  v98 = a26[1];
  v419 = *a26;
  v420 = v98;
  v99 = a26[3];
  v421 = a26[2];
  v422 = v99;
  v100 = a26[4];
  v424 = a26[5];
  v423 = v100;
  v101 = a26[6];
  v426 = a26[7];
  v425 = v101;
  v354 = a26[8].i64[0];
  v353 = a26[8].u8[8];
  v102 = *v372;
  v362 = *(v372 + 8);
  v103 = *(v372 + 24);
  v329 = *(v372 + 16);
  v330 = v102;
  v331 = v103;
  v328 = *(v372 + 32);
  v104 = v373[1];
  v332 = *v373;
  v363 = v104;
  v105 = *v374;
  v106 = v375[1];
  v374 = *v375;
  v375 = v106;
  v312 = *(a27 + 6);
  v355 = *(a27 + 28);
  v361 = *(a28 + 40);
  LODWORD(v373) = *(v376 + 32);
  v107 = *(v377 + 40);
  v108 = *a27;
  v310 = a27[1];
  v311 = v108;
  v99.i64[0] = *(a27 + 4);
  v308 = *(a27 + 5);
  v309 = v99.i64[0];
  *&v108 = *(a28 + 8);
  v360 = *a28;
  v359 = *&v108;
  *&v108 = *(a28 + 24);
  v358 = *(a28 + 16);
  v357 = *&v108;
  v356 = *(a28 + 32);
  *&v108 = *(v376 + 8);
  v364 = *v376;
  v365 = *&v108;
  *&v108 = *(v376 + 24);
  v367 = *(v376 + 16);
  v372 = v108;
  v109 = *(v377 + 16);
  v314 = *v377;
  v315 = v109;
  v376 = *(v377 + 32);
  *&v108 = *(v377 + 56);
  v313 = *(v377 + 48);
  v377 = v108;
  memcpy(__dst, v379, sizeof(__dst));
  v110 = *(v379 + 10);
  v111 = v379[11];
  v112 = v368;
  sub_1C9470AA0(v428, v70, &unk_1EC3A5430, &unk_1C96AAB30);
  v113 = OUTLINED_FUNCTION_94();
  OUTLINED_FUNCTION_23_1(v113, v114, v112);
  if (v115)
  {
    v119 = v369;
    sub_1C96A4954();
    v116 = OUTLINED_FUNCTION_94();
    OUTLINED_FUNCTION_23_1(v116, v117, v112);
    v118 = v370;
    if (!v115)
    {
      sub_1C9470AFC(v70, &unk_1EC3A5430, &unk_1C96AAB30);
    }
  }

  else
  {
    v118 = v370;
    v119 = v369;
    (*(v370 + 32))(v369, v70, v112);
  }

  v120 = a16;
  v121 = v397;
  (*(v118 + 32))(v397, v119, v112);
  if (v383)
  {
    v122 = 86400.0;
  }

  else
  {
    v122 = v382;
  }

  v123 = type metadata accessor for AppConfiguration(0);
  v124 = v123;
  *(v121 + v123[5]) = v122;
  v125 = 3;
  if ((v384 & 1) == 0)
  {
    v125 = v386;
  }

  *(v121 + v123[6]) = v125;
  v126 = v387;
  if (v388)
  {
    v126 = 432000.0;
  }

  *(v121 + v123[7]) = v126;
  v127 = v391;
  if (v385)
  {
    v127 = 8000.0;
  }

  *(v121 + v123[8]) = v127;
  v128 = v389;
  if (v390)
  {
    v128 = 8000.0;
  }

  *(v121 + v123[9]) = v128;
  v129 = v392;
  v130 = v393;
  v393 = 0x40F5180000000000;
  if (v130)
  {
    v129 = 86400.0;
  }

  *(v121 + v123[10]) = v129;
  v131 = v371;
  v132 = v418;
  v133 = v417;
  if (v371 == 2)
  {
    v131 = 0;
    v76 = 0x41C2CC0300000000;
    v134 = 15;
    v75 = 0x3F847AE147AE147BLL;
  }

  else
  {
    v134 = v316;
  }

  v135 = v121 + v123[11];
  *v135 = v131 & 1;
  *(v135 + 8) = v75;
  *(v135 + 16) = v134;
  *(v135 + 24) = v76;
  v136 = v84;
  if (a16)
  {
    v137 = v82;
    v138 = v394;
    v139 = v380;
    v140 = v395;
    v141 = v83;
  }

  else
  {
    v137 = v82;
    v139 = v380;
    v141 = v83;
    if (qword_1EDB7BF10 != -1)
    {
      OUTLINED_FUNCTION_23_18();
      swift_once();
    }

    OUTLINED_FUNCTION_31_5();
    swift_beginAccess();
    v120 = qword_1EDB7BF18;
    sub_1C96A53C4();
    v138 = v394;
    v140 = v395;
  }

  *(v121 + v124[12]) = v120;
  OUTLINED_FUNCTION_57_2((v378 == 2) | v378);
  v143 = v396;
  if (v142)
  {
    v144 = v381;
    v146 = v333;
    v145 = v334;
  }

  else
  {
    v145 = 0;
    v146 = 0;
    v77 = 1.0;
    v142 = &unk_1F48FACF0;
    v144 = v381;
  }

  v147 = (v121 + v124[14]);
  *v147 = v142;
  v147[1] = v77;
  v147[2] = v145;
  v147[3] = v146;
  if (!v144)
  {
    if (qword_1EDB7D890 != -1)
    {
      OUTLINED_FUNCTION_0_62();
      swift_once();
    }

    v144 = sub_1C96A53C4();
  }

  *(v121 + v124[15]) = v144;
  sub_1C9470AA0(a20, v133, &qword_1EC3A62F0, &qword_1C96B51D0);
  OUTLINED_FUNCTION_23_1(v133, 1, v427);
  v398 = a20;
  v366 = v105;
  if (v115)
  {
    v394 = v107;
    v395 = v111;
    v148 = v338;
    v149 = OUTLINED_FUNCTION_94();
    v150 = v318;
    __swift_storeEnumTagSinglePayload(v149, v151, 1, v318);
    v152 = v336;
    __swift_storeEnumTagSinglePayload(v336, 1, 1, v150);
    v153 = v399;
    *v399 = xmmword_1C96B4F40;
    v153[1] = xmmword_1C96B4F50;
    v154 = v148;
    v155 = v337;
    sub_1C9470AA0(v154, v337, &qword_1EC3A4A70, &qword_1C96B05D0);
    v156 = OUTLINED_FUNCTION_94();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v156, v157, v150);
    v299 = v110;
    if (EnumTagSinglePayload == 1)
    {
      v159 = v301;
      OUTLINED_FUNCTION_52();
      sub_1C96A4754();
      v160 = OUTLINED_FUNCTION_94();
      result = OUTLINED_FUNCTION_23_1(v160, v161, v150);
      v163 = v317;
      if (v115)
      {
        __break(1u);
        goto LABEL_123;
      }

      OUTLINED_FUNCTION_51_4();
      (v105)(v163, v159, v150);
      v164 = v337;
      v165 = OUTLINED_FUNCTION_94();
      OUTLINED_FUNCTION_23_1(v165, v166, v150);
      if (!v115)
      {
        sub_1C9470AFC(v164, &qword_1EC3A4A70, &qword_1C96B05D0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_51_4();
      v163 = v317;
      (v105)(v317, v155, v150);
    }

    (v105)(v399 + *(v427 + 32), v163, v150);
    v169 = v152;
    v170 = v335;
    sub_1C9470AA0(v169, v335, &qword_1EC3A4A70, &qword_1C96B05D0);
    OUTLINED_FUNCTION_28(v170);
    if (!v115)
    {
      OUTLINED_FUNCTION_41_7();
      sub_1C9470AFC(v180, v181, v182);
      OUTLINED_FUNCTION_41_7();
      sub_1C9470AFC(v183, v184, v185);
      v186 = OUTLINED_FUNCTION_50_3();
      v105(v186);
LABEL_45:
      v187 = v427;
      v188 = v399;
      (v105)(v399 + *(v427 + 36), &qword_1EC3A4A70, v150);
      *(v188 + *(v187 + 40)) = 1;
      OUTLINED_FUNCTION_0_74();
      v168 = v339;
      sub_1C9482928(v188, v339);
      v189 = v417;
      v190 = OUTLINED_FUNCTION_94();
      OUTLINED_FUNCTION_23_1(v190, v191, v187);
      v107 = v394;
      v110 = v299;
      v111 = v395;
      v132 = v418;
      if (!v115)
      {
        sub_1C9470AFC(v189, &qword_1EC3A62F0, &qword_1C96B51D0);
      }

      goto LABEL_47;
    }

    v171 = v300;
    OUTLINED_FUNCTION_52();
    sub_1C96A4754();
    result = OUTLINED_FUNCTION_28(v171);
    if (!v115)
    {
      OUTLINED_FUNCTION_41_7();
      sub_1C9470AFC(v172, v173, v174);
      OUTLINED_FUNCTION_41_7();
      sub_1C9470AFC(v175, v176, v177);
      v178 = OUTLINED_FUNCTION_50_3();
      v105(v178);
      v179 = v335;
      OUTLINED_FUNCTION_28(v335);
      if (!v115)
      {
        sub_1C9470AFC(v179, &qword_1EC3A4A70, &qword_1C96B05D0);
      }

      goto LABEL_45;
    }

LABEL_123:
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_0_74();
  v167 = v133;
  v168 = v339;
  sub_1C9482928(v167, v339);
LABEL_47:
  OUTLINED_FUNCTION_0_74();
  sub_1C9482928(v168, v121 + v192);
  v442 = v132;
  v443 = v413;
  v444 = v408;
  v445 = v407;
  v446 = v479;
  v447 = v480;
  v448 = v409;
  v449 = v410;
  v450 = v406;
  v193 = v343;
  v451 = v343;
  v452 = v416;
  v453 = v477;
  v454 = v478;
  v455 = v140;
  v456 = v411;
  v457 = v139;
  v458 = v143;
  v459 = v138;
  v460 = v137;
  v461 = v141;
  v462 = v136;
  v463 = v405;
  v464 = v404;
  v465 = v414;
  v466 = v415;
  v467 = v403;
  v468 = v402;
  v469 = v401;
  v470 = v400;
  v472 = v476;
  v471 = v475;
  v473 = v412;
  v194 = v342;
  v474 = v342;
  if (sub_1C94829E0(&v442) == 1)
  {
    if (qword_1EDB7EF18 != -1)
    {
      OUTLINED_FUNCTION_0_64();
      swift_once();
    }

    OUTLINED_FUNCTION_31_5();
    swift_beginAccess();
    v132 = off_1EDB7EF20;
    sub_1C96A53C4();
    v193 = 0;
    v136 = 9.5;
    OUTLINED_FUNCTION_63_3();
    v140 = 11.0;
    v198 = 2;
    v194 = 100;
    v199 = 20;
    v141 = 0x4022333333333333;
    v200 = 0x4021CCCCCCCCCCCDLL;
    v201 = 0xC0BC200000000000;
    v202 = 0xC0F5180000000000;
    v203 = 2;
    v204 = 2;
    v205 = 0xC0F5180000000000;
    v206 = 9.0;
    v207 = 7.5;
    v208 = 2;
    v209 = 2;
    v210 = 2;
    v211 = 2;
  }

  else
  {
    v440 = v479;
    v441 = v480;
    v438 = v477;
    v439 = v478;
    v436 = v475;
    v437 = v476;
    v195 = v416;
    v196 = v415;
    v197 = v414;
    v198 = v413;
    v199 = v412;
    v200 = v411;
    v201 = v410;
    v202 = v409;
    v203 = v408;
    v204 = v407;
    v205 = v406;
    v206 = v405;
    v207 = v404;
    v208 = v403;
    v209 = v402;
    v210 = v401;
    v211 = v400;
  }

  v212 = v121 + v124[17];
  *v212 = v132;
  *(v212 + 8) = v198;
  *(v212 + 9) = v203;
  *(v212 + 10) = v204;
  *(v212 + 11) = v440;
  *(v212 + 15) = v441;
  *(v212 + 16) = v202;
  *(v212 + 24) = v201;
  *(v212 + 32) = v205;
  *(v212 + 40) = v193;
  *(v212 + 41) = v195;
  *(v212 + 42) = v438;
  *(v212 + 46) = v439;
  *(v212 + 48) = v140;
  *(v212 + 56) = v200;
  *(v212 + 64) = v139;
  *(v212 + 72) = v143;
  *(v212 + 80) = v138;
  *(v212 + 88) = v137;
  *(v212 + 96) = v141;
  *(v212 + 104) = v136;
  *(v212 + 112) = v206;
  *(v212 + 120) = v207;
  *(v212 + 128) = v197;
  *(v212 + 136) = v196;
  *(v212 + 137) = v208;
  *(v212 + 138) = v209;
  *(v212 + 139) = v210;
  *(v212 + 140) = v211;
  *(v212 + 143) = v437;
  *(v212 + 141) = v436;
  v213 = MEMORY[0x1E69E7CC0];
  *(v212 + 144) = v199;
  *(v212 + 152) = v194;
  if (a22)
  {
    v214 = a22;
  }

  else
  {
    v214 = v213;
  }

  *(v121 + v124[18]) = v214;
  v215 = v344;
  if (v344)
  {
    v216 = v376;
    v217 = v326;
    v218 = v327;
    v220 = v324;
    v219 = v325;
    v222 = v322;
    v221 = v323;
    v224 = v320;
    v223 = v321;
    v225 = v319;
  }

  else
  {
    v217 = 0;
    v219 = 0;
    v220 = 0;
    v218 = 0;
    v221 = 1;
    v215 = v213;
    v222 = 1;
    v225 = 1;
    v223 = v213;
    v224 = &unk_1F48FBB00;
    v216 = v376;
  }

  v226 = v225 & 1;
  v435 = v226;
  v227 = v121 + v124[19];
  *v227 = v217 & 1;
  *(v227 + 8) = v215;
  *(v227 + 16) = v219 & 1;
  *(v227 + 17) = v220 & 1;
  *(v227 + 18) = v221 & 1;
  *(v227 + 24) = v222;
  *(v227 + 32) = v218;
  *(v227 + 40) = v226;
  *(v227 + 48) = v223;
  *(v227 + 56) = v224;
  OUTLINED_FUNCTION_59_2();
  if (v115)
  {
    v229 = 1;
  }

  else
  {
    v229 = 0;
  }

  OUTLINED_FUNCTION_44_5(v229 | v228);
  if (v349 == 1)
  {
    sub_1C96A4EE4();
    sub_1C96A4EC4();
    if (qword_1EDB7FD00 != -1)
    {
      OUTLINED_FUNCTION_24_15();
      swift_once();
    }

    sub_1C96A4EB4();

    v230 = xmmword_1C96B4FD0;
    v231 = xmmword_1C96B4FC0;
    v232 = 80000.0;
    v233 = 10000.0;
    v234 = 2700.0;
    v235 = 900.0;
    v236 = 900.0;
  }

  OUTLINED_FUNCTION_33_6(v124[21], v230, v231, v232, v233, v234, v235, v236);
  v432[0] = v419;
  v432[1] = v420;
  v432[2] = v421;
  v432[3] = v422;
  v432[4] = v423;
  v432[5] = v424;
  v432[6] = v425;
  v432[7] = v426;
  v433 = v354;
  v434 = v353;
  sub_1C948CB7C(v432);
  OUTLINED_FUNCTION_32_4();
  v239 = vbslq_s8(v238, xmmword_1C96B4FE0, v420);
  *v240 = vbslq_s8(v238, v237, v419);
  v240[1] = v239;
  v241 = vbslq_s8(v238, xmmword_1C96B5000, v422);
  v240[2] = vbslq_s8(v238, xmmword_1C96B4FF0, v421);
  v240[3] = v241;
  v242 = vbslq_s8(v238, xmmword_1C96B5020, v424);
  v240[4] = vbslq_s8(v238, xmmword_1C96B5010, v423);
  v240[5] = v242;
  v243 = vbslq_s8(v238, xmmword_1C96B5030, v425);
  v244 = vbslq_s8(v238, xmmword_1C96B5040, v426);
  v240[6] = v243;
  v240[7] = v244;
  v240[8].i64[0] = v245;
  OUTLINED_FUNCTION_59_2();
  if (v115)
  {
    *&v251 = OUTLINED_FUNCTION_66_3();
    v252 = *(v248 + 80);
    v247 = 1;
    v250 = 10;
    v253 = 0x4143C68000000000;
    v254 = 0x4143C68000000000;
  }

  else
  {
    v249 = v246 >> 8;
    v250 = v312;
    v252 = v310;
    v251 = v311;
    v254 = v308;
    v253 = v309;
  }

  v255 = v121 + v124[22];
  *v255 = v251;
  *(v255 + 16) = v252;
  *(v255 + 32) = v253;
  *(v255 + 40) = v254;
  *(v255 + 48) = v250;
  *(v255 + 56) = v247;
  *(v255 + 57) = v249;
  v256 = 0.2;
  v257 = v360;
  if (v361)
  {
    v257 = 0.2;
  }

  v258 = v359;
  if (v361)
  {
    v258 = 0.2;
  }

  v259 = v358;
  if (v361)
  {
    v259 = 0.2;
  }

  v260 = v357;
  if (v361)
  {
    v260 = 0.2;
  }

  else
  {
    v256 = v356;
  }

  OUTLINED_FUNCTION_60_3(v124[24], v256, v257, v258, v259, v260);
  v262 = v362;
  if (v362)
  {
    v263 = v366;
    v265 = v330;
    v264 = v331;
    v266 = v329;
    v267 = v328;
  }

  else
  {
    v262 = 0x80000001C96CC960;
    v264 = 0x80000001C96D2630;
    v265 = 0xD000000000000022;
    v266 = 0xD000000000000035;
    v267 = 1;
    v263 = v366;
  }

  v268 = v121 + v124[25];
  *v268 = v265;
  *(v268 + 8) = v262;
  *(v268 + 16) = v266;
  *(v268 + 24) = v264;
  *(v268 + 32) = v267 & 1;
  if (v261)
  {
    v269 = v332;
  }

  else
  {
    v269 = sub_1C947660C();
  }

  v270 = (v121 + v124[26]);
  *v270 = v269;
  v270[1] = v261;
  if (!v263)
  {
    if (qword_1EDB7D638 != -1)
    {
      OUTLINED_FUNCTION_1_45();
      swift_once();
    }

    v263 = qword_1EDB7D640;
    sub_1C96A53C4();
  }

  *(v121 + v124[27]) = v263;
  v271 = 0x4082C00000000000;
  if (!v373)
  {
    v271 = v364;
  }

  v272 = 3.0;
  if (!v373)
  {
    v272 = v365;
  }

  v273 = 0x40EFA40000000000;
  if (!v373)
  {
    v273 = v367;
  }

  v274 = 0x40B3880000000000;
  if (!v373)
  {
    v274 = v372;
  }

  v275 = (v121 + v124[29]);
  *v275 = v271;
  *(v275 + 1) = v272;
  v275[2] = v273;
  v275[3] = v274;
  v276 = v374;
  if (!v375)
  {
    v276 = 0;
  }

  v277 = 0xE000000000000000;
  if (v375)
  {
    v277 = v375;
  }

  v278 = (v121 + v124[30]);
  *v278 = v276;
  v278[1] = v277;
  if (v107 == 2)
  {
    v279 = 0;
    LOBYTE(v280) = 0;
    v281 = xmmword_1C96B5090;
    v282 = xmmword_1C96B5080;
    v283 = 0x4092C00000000000;
    v216 = 0x404E000000000000;
    v284 = v393;
  }

  else
  {
    v280 = v107 >> 8;
    v279 = v107;
    v283 = v377;
    v282 = v314;
    v281 = v315;
    v284 = v313;
  }

  v285 = a37;
  v286 = v121 + v124[31];
  *v286 = v282;
  *(v286 + 16) = v281;
  *(v286 + 32) = v216;
  *(v286 + 40) = v279;
  *(v286 + 41) = v280;
  *(v286 + 46) = HIWORD(v107);
  *(v286 + 42) = v107 >> 16;
  *(v286 + 48) = v284;
  *(v286 + 56) = v283;
  if (v110 == 2)
  {
    v430 = 1;
    v482.value = 0.0;
    memset(&v429, 0, 80);
    v429.is_nil = 1;
    v482.is_nil = 0;
    WidgetConfiguration.init(refresh:useBackgroundReverseGeocodingPriority:timelineReloadDebouncingInterval:)(&v431, &v429, 2, v482);
  }

  else
  {
    memcpy(&v431, __dst, 0x50uLL);
    *&v431.useBackgroundReverseGeocodingPriority = v110;
    v431.timelineReloadDebouncingInterval = v111;
  }

  v287 = a39;
  memcpy((v121 + v124[32]), &v431, 0x60uLL);
  if (!a37)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A62F8, &qword_1C96B51D8);
    v285 = swift_allocObject();
    *(v285 + 16) = xmmword_1C96AA1C0;
    v288 = sub_1C96A4B54();
    if (v288[2])
    {
      v289 = v288[4];
      v290 = v288[5];
      sub_1C96A53C4();
    }

    else
    {
      v290 = 0xE500000000000000;
      v289 = 0x53552D6E65;
    }

    v291 = sub_1C947660C();
    *(v285 + 32) = v289;
    *(v285 + 40) = v290;
    *(v285 + 48) = v291;
    *(v285 + 56) = v292;
  }

  *(v121 + v124[33]) = v285;
  if (!a39)
  {
    v294 = sub_1C96A4B54();
    if (v294[2])
    {
      a38 = v294[4];
      v287 = v294[5];
      sub_1C96A53C4();
    }

    else
    {
      a38 = 0x53552D6E65;

      v287 = 0xE500000000000000;
    }
  }

  v295 = (v121 + v124[34]);
  *v295 = a38;
  v295[1] = v287;
  if (a40)
  {
    v296 = a40;
  }

  else
  {
    v296 = v213;
  }

  *(v121 + v124[35]) = v296;
  if (a41)
  {
    v297 = a41;
  }

  else
  {
    v297 = v213;
  }

  sub_1C9470AFC(v398, &qword_1EC3A62F0, &qword_1C96B51D0);
  result = sub_1C9470AFC(v428, &unk_1EC3A5430, &unk_1C96AAB30);
  *(v121 + v124[36]) = v297;
  return result;
}

uint64_t sub_1C94A1C74()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7970, &qword_1C96C0AF0);
  v0 = *(type metadata accessor for EndpointConfiguration(0) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C96AE890;
  v4 = (v3 + v2);
  static EndpointConfiguration.default(for:)(0, v4);
  static EndpointConfiguration.default(for:)(1, &v4[v1]);
  static EndpointConfiguration.default(for:)(2, &v4[2 * v1]);
  static EndpointConfiguration.default(for:)(3, &v4[3 * v1]);
  static EndpointConfiguration.default(for:)(4, &v4[4 * v1]);
  static EndpointConfiguration.default(for:)(5, &v4[5 * v1]);
  static EndpointConfiguration.default(for:)(6, &v4[6 * v1]);
  return v3;
}

uint64_t sub_1C94A1D90()
{
  result = sub_1C94A1C74();
  qword_1EDB7BF18 = result;
  return result;
}

uint64_t static EndpointConfiguration.default(for:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v175 = a1;
  v173 = a2;
  v176 = sub_1C96A4764();
  OUTLINED_FUNCTION_1();
  v174 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2();
  v172 = v5 - v6;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v7);
  v171 = &v156 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A70, &qword_1C96B05D0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  OUTLINED_FUNCTION_2();
  v159 = v10 - v11;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v12);
  MEMORY[0x1EEE9AC00](&v156 - v13);
  MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_18_1();
  v166 = v20;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v21);
  MEMORY[0x1EEE9AC00](v22);
  MEMORY[0x1EEE9AC00](v23);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_18_1();
  v168 = v25;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_18_1();
  v163 = v27;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_18_1();
  v167 = v29;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_18_1();
  v170 = v31;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_18_1();
  v157 = v33;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_18_1();
  v158 = v35;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v156 - v37;
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_18_1();
  v165 = v40;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_18_1();
  v169 = v42;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_18_1();
  v156 = v44;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_18_1();
  v164 = v46;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v156 - v48;
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_18_1();
  v162 = v51;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_18_1();
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_18_1();
  v161 = v54;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_18_1();
  v160 = v56;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v57);
  v59 = &v156 - v58;
  MEMORY[0x1EEE9AC00](v60);
  v62 = &v156 - v61;
  MEMORY[0x1EEE9AC00](v63);
  v65 = &v156 - v64;
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_19_28();
  MEMORY[0x1EEE9AC00](v67);
  v69 = &v156 - v68;
  MEMORY[0x1EEE9AC00](v70);
  v72 = (&v156 - v71);
  MEMORY[0x1EEE9AC00](v73);
  v75 = &v156 - v74;
  MEMORY[0x1EEE9AC00](v76);
  v87 = &v156 - v86;
  switch(v175)
  {
    case 1:
      sub_1C96A4754();
      v120 = v176;
      OUTLINED_FUNCTION_23_1(v65, 1, v176);
      if (v89)
      {
        goto LABEL_50;
      }

      sub_1C96A4754();
      OUTLINED_FUNCTION_23_1(v59, 1, v120);
      v122 = v160;
      v121 = v161;
      if (v89)
      {
        goto LABEL_57;
      }

      v123 = *(v174 + 32);
      v123(v62, v59, v120);
      __swift_storeEnumTagSinglePayload(v62, 0, 1, v120);
      sub_1C96A4754();
      v124 = OUTLINED_FUNCTION_11_38();
      OUTLINED_FUNCTION_23_1(v124, v125, v120);
      if (v89)
      {
        goto LABEL_64;
      }

      sub_1C96A4754();
      OUTLINED_FUNCTION_23_1(v121, 1, v120);
      if (v89)
      {
        goto LABEL_71;
      }

      v126 = v173;
      *v173 = 1;
      v127 = type metadata accessor for EndpointConfiguration(0);
      v123(&v126[v127[5]], v65, v120);
      sub_1C947D474(v62, &v126[v127[6]]);
      v123(&v126[v127[7]], v122, v120);
      result = (v123)(&v126[v127[8]], v121, v120);
      v126[v127[9]] = 0;
      return result;
    case 2:
      OUTLINED_FUNCTION_14_33();
      v95 = v107;
      sub_1C96A4754();
      v108 = OUTLINED_FUNCTION_11_38();
      v97 = v176;
      OUTLINED_FUNCTION_1_72(v108, v109);
      if (v89)
      {
        goto LABEL_47;
      }

      sub_1C96A4754();
      OUTLINED_FUNCTION_6_0(v49);
      v100 = v164;
      v101 = v162;
      if (v89)
      {
        goto LABEL_54;
      }

      v110 = OUTLINED_FUNCTION_18_28();
      v72(v110, v49, v97);
      v111 = OUTLINED_FUNCTION_9_39();
      __swift_storeEnumTagSinglePayload(v111, v112, v113, v97);
      sub_1C96A4754();
      OUTLINED_FUNCTION_6_0(v100);
      if (v89)
      {
        goto LABEL_61;
      }

      v94 = v156;
      sub_1C96A4754();
      OUTLINED_FUNCTION_6_0(v94);
      if (v89)
      {
        goto LABEL_68;
      }

      v106 = 2;
      goto LABEL_32;
    case 3:
      OUTLINED_FUNCTION_14_33();
      v95 = v169;
      sub_1C96A4754();
      v114 = OUTLINED_FUNCTION_11_38();
      v97 = v176;
      OUTLINED_FUNCTION_1_72(v114, v115);
      if (v89)
      {
        goto LABEL_48;
      }

      sub_1C96A4754();
      OUTLINED_FUNCTION_6_0(v38);
      v101 = v165;
      if (v89)
      {
        goto LABEL_56;
      }

      v116 = OUTLINED_FUNCTION_18_28();
      v72(v116, v38, v97);
      v117 = OUTLINED_FUNCTION_9_39();
      __swift_storeEnumTagSinglePayload(v117, v118, v119, v97);
      v100 = v158;
      sub_1C96A4754();
      OUTLINED_FUNCTION_6_0(v100);
      if (v89)
      {
        goto LABEL_62;
      }

      v94 = v157;
      sub_1C96A4754();
      OUTLINED_FUNCTION_6_0(v94);
      if (v89)
      {
        goto LABEL_70;
      }

      v106 = 3;
      goto LABEL_32;
    case 4:
      v94 = v83;
      OUTLINED_FUNCTION_14_33();
      v95 = v170;
      sub_1C96A4754();
      v96 = OUTLINED_FUNCTION_11_38();
      v97 = v176;
      OUTLINED_FUNCTION_1_72(v96, v98);
      if (v89)
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
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
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
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
        JUMPOUT(0x1C94A2DA4);
      }

      v99 = v163;
      sub_1C96A4754();
      OUTLINED_FUNCTION_6_0(v99);
      v101 = v167;
      v100 = v168;
      if (v89)
      {
        goto LABEL_53;
      }

      v102 = OUTLINED_FUNCTION_18_28();
      v72(v102, v99, v97);
      v103 = OUTLINED_FUNCTION_9_39();
      __swift_storeEnumTagSinglePayload(v103, v104, v105, v97);
      sub_1C96A4754();
      OUTLINED_FUNCTION_6_0(v100);
      if (v89)
      {
        goto LABEL_60;
      }

      sub_1C96A4754();
      OUTLINED_FUNCTION_6_0(v94);
      if (v89)
      {
        goto LABEL_67;
      }

      v106 = 4;
LABEL_32:
      v134 = v173;
      *v173 = v106;
      v135 = type metadata accessor for EndpointConfiguration(0);
      v72(&v134[v135[5]], v95, v97);
      sub_1C947D474(v101, &v134[v135[6]]);
      v72(&v134[v135[7]], v100, v97);
      result = (v72)(&v134[v135[8]], v94, v97);
      v134[v135[9]] = 0;
      return result;
    case 5:
      v101 = v82;
      v100 = v80;
      v94 = v78;
      OUTLINED_FUNCTION_14_33();
      v72 = v128;
      sub_1C96A4754();
      v95 = v72;
      v97 = v176;
      OUTLINED_FUNCTION_1_72(v72, 1);
      if (v89)
      {
        goto LABEL_51;
      }

      v129 = v166;
      sub_1C96A4754();
      OUTLINED_FUNCTION_6_0(v129);
      if (v89)
      {
        goto LABEL_58;
      }

      v130 = OUTLINED_FUNCTION_18_28();
      v72(v130, v129, v97);
      v131 = OUTLINED_FUNCTION_9_39();
      __swift_storeEnumTagSinglePayload(v131, v132, v133, v97);
      sub_1C96A4754();
      OUTLINED_FUNCTION_6_0(v100);
      if (v89)
      {
        goto LABEL_65;
      }

      sub_1C96A4754();
      OUTLINED_FUNCTION_6_0(v94);
      if (v89)
      {
        goto LABEL_72;
      }

      v106 = 5;
      goto LABEL_32;
    case 6:
      v136 = v81;
      v137 = v79;
      v138 = v77;
      v175 = v85;
      v170 = v84;
      sub_1C96A4EE4();
      sub_1C96A4EC4();
      if (qword_1EDB7FD28 != -1)
      {
        swift_once();
      }

      sub_1C96A4EB4();

      v169 = v178;
      sub_1C96A4754();
      v139 = OUTLINED_FUNCTION_11_38();
      v140 = v176;
      OUTLINED_FUNCTION_23_1(v139, v141, v176);
      v142 = v174;
      v143 = v171;
      v144 = v172;
      if (v89)
      {
        sub_1C96A4754();
        OUTLINED_FUNCTION_14_16(v136);
        if (v89)
        {
          goto LABEL_73;
        }

        v145 = OUTLINED_FUNCTION_15_34();
        v136(v145);
        OUTLINED_FUNCTION_14_16(v137);
        if (!v89)
        {
          sub_1C9470AFC(v137, &qword_1EC3A4A70, &qword_1C96B05D0);
        }
      }

      else
      {
        v146 = OUTLINED_FUNCTION_15_34();
        v136(v146);
      }

      sub_1C96A4EC4();
      if (qword_1EDB7FD10 != -1)
      {
        swift_once();
      }

      sub_1C96A4EB4();

      v147 = v177;
      v148 = v175;
      sub_1C96A4754();
      OUTLINED_FUNCTION_14_16(v148);
      if (v89)
      {
        goto LABEL_52;
      }

      sub_1C96A4754();
      OUTLINED_FUNCTION_14_16(v138);
      if (v89)
      {
        goto LABEL_59;
      }

      v149 = v170;
      (v136)(v170, v138, v140);
      v150 = OUTLINED_FUNCTION_9_39();
      __swift_storeEnumTagSinglePayload(v150, v151, v152, v140);
      sub_1C94A3188(v147, v144);
      v153 = v159;
      sub_1C96A4754();
      OUTLINED_FUNCTION_14_16(v153);
      if (!v89)
      {
        (*(v142 + 8))(v143, v140);

        v154 = v173;
        *v173 = 6;
        v155 = type metadata accessor for EndpointConfiguration(0);
        (v136)(&v154[v155[5]], v175, v140);
        sub_1C947D474(v149, &v154[v155[6]]);
        (v136)(&v154[v155[7]], v144, v140);
        result = (v136)(&v154[v155[8]], v153, v140);
        v154[v155[9]] = v147 == 0;
        return result;
      }

      goto LABEL_66;
    default:
      OUTLINED_FUNCTION_14_33();
      sub_1C96A4754();
      v88 = v176;
      OUTLINED_FUNCTION_23_1(v87, 1, v176);
      if (v89)
      {
        goto LABEL_49;
      }

      sub_1C96A4754();
      OUTLINED_FUNCTION_14_16(v72);
      if (v89)
      {
        goto LABEL_55;
      }

      v90 = *(v174 + 32);
      v90(v75, v72, v88);
      __swift_storeEnumTagSinglePayload(v75, 0, 1, v88);
      sub_1C96A4754();
      OUTLINED_FUNCTION_14_16(v69);
      if (v89)
      {
        goto LABEL_63;
      }

      sub_1C96A4754();
      OUTLINED_FUNCTION_14_16(v2);
      if (v89)
      {
        goto LABEL_69;
      }

      v91 = v173;
      *v173 = 0;
      v92 = type metadata accessor for EndpointConfiguration(0);
      v90(&v91[v92[5]], v87, v88);
      sub_1C947D474(v75, &v91[v92[6]]);
      v90(&v91[v92[7]], v69, v88);
      result = (v90)(&v91[v92[8]], v2, v88);
      v91[v92[9]] = 0;
      return result;
  }
}

uint64_t sub_1C94A2DE8()
{
  v0 = sub_1C96A4F24();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14();
  v6 = v5 - v4;
  v7 = sub_1C96A4F34();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14();
  if (qword_1EDB80020 != -1)
  {
    OUTLINED_FUNCTION_2_0(&qword_1EDB80020);
  }

  __swift_project_value_buffer(v7, qword_1EDB80028);
  v9 = OUTLINED_FUNCTION_5_5();
  v10(v9);
  (*(v2 + 104))(v6, *MEMORY[0x1E69D6E88], v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5F20, &qword_1C96B3D10);
  swift_allocObject();
  result = sub_1C96A4F74();
  qword_1EDB7FD30 = result;
  return result;
}

uint64_t sub_1C94A2FC0()
{
  v0 = sub_1C96A4F24();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14();
  v6 = v5 - v4;
  v7 = sub_1C96A4F34();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14();
  if (qword_1EDB80020 != -1)
  {
    OUTLINED_FUNCTION_2_0(&qword_1EDB80020);
  }

  __swift_project_value_buffer(v7, qword_1EDB80028);
  v9 = OUTLINED_FUNCTION_5_5();
  v10(v9);
  (*(v2 + 104))(v6, *MEMORY[0x1E69D6E88], v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7440, &qword_1C96BE598);
  swift_allocObject();
  result = sub_1C96A4F74();
  qword_1EDB7FD18 = result;
  return result;
}

uint64_t sub_1C94A3188@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A70, &qword_1C96B05D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7140, &qword_1C96BD008);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v17 - v9;
  v11 = sub_1C96A43B4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C96A4334();
  result = __swift_getEnumTagSinglePayload(v10, 1, v11);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    if (!sub_1C94A33CC(a2, &unk_1F48FBAA0))
    {
      sub_1C96A4374();
    }

    sub_1C96A4344();
    v16 = sub_1C96A4764();
    result = __swift_getEnumTagSinglePayload(v7, 1, v16);
    if (result != 1)
    {
      (*(v12 + 8))(v14, v11);
      return (*(*(v16 - 8) + 32))(a3, v7, v16);
    }
  }

  __break(1u);
  return result;
}

BOOL sub_1C94A33CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t OUTLINED_FUNCTION_33_3()
{

  return sub_1C9486640();
}

void OUTLINED_FUNCTION_33_6(uint64_t a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, double a4@<D2>, double a5@<D3>, double a6@<D4>, double a7@<D5>, double a8@<D6>)
{
  v14 = (v13 + a1);
  v14->n128_f64[0] = a7;
  v14->n128_f64[1] = a8;
  v14[1].n128_f64[0] = a6;
  v14[1].n128_u64[1] = v11;
  v14[2].n128_u64[0] = v10;
  v14[2].n128_u64[1] = v8;
  v14[3].n128_u64[0] = v9;
  v14[3].n128_u64[1] = v12;
  v14[4] = a3;
  v14[5] = a2;
  v14[6].n128_f64[0] = a5;
  v14[6].n128_f64[1] = a4;
}

uint64_t OUTLINED_FUNCTION_33_12(uint64_t a1, uint64_t a2)
{

  return sub_1C96A4754();
}

void sub_1C94A3510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_22_14();
  v31 = v30;
  if (*(v30 + 16) && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5A40, &unk_1C96B1920), v32 = OUTLINED_FUNCTION_18_18(), v33 = v32, (v34 = *(v31 + 16)) != 0))
  {
    v35 = 0;
    v36 = v32 + 56;
    while (v35 < *(v31 + 16))
    {
      v37 = (v31 + 32 + 16 * v35);
      v39 = *v37;
      v38 = v37[1];
      ++v35;
      sub_1C96A7EE4();
      sub_1C96A53C4();
      sub_1C96A7144();
      v40 = sub_1C96A7F24();
      v41 = ~(-1 << *(v33 + 32));
      while (1)
      {
        v42 = v40 & v41;
        v43 = (v40 & v41) >> 6;
        v44 = *(v36 + 8 * v43);
        v45 = 1 << (v40 & v41);
        if ((v45 & v44) == 0)
        {
          break;
        }

        v46 = (*(v33 + 48) + 16 * v42);
        v47 = *v46 == v39 && v46[1] == v38;
        if (v47 || (sub_1C96A7DE4() & 1) != 0)
        {

          goto LABEL_16;
        }

        v40 = v42 + 1;
      }

      *(v36 + 8 * v43) = v45 | v44;
      v48 = (*(v33 + 48) + 16 * v42);
      *v48 = v39;
      v48[1] = v38;
      v49 = *(v33 + 16);
      v50 = __OFADD__(v49, 1);
      v51 = v49 + 1;
      if (v50)
      {
        goto LABEL_19;
      }

      *(v33 + 16) = v51;
LABEL_16:
      if (v35 == v34)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_17:

    OUTLINED_FUNCTION_23_14();
  }
}

uint64_t OUTLINED_FUNCTION_54_2()
{
}

uint64_t OUTLINED_FUNCTION_54_6(uint64_t a1)
{

  return sub_1C9470AFC(a1, v1, v2);
}

uint64_t OUTLINED_FUNCTION_54_7()
{
}

void OUTLINED_FUNCTION_53()
{
  *(v2 - 144) = 0;
  *(v2 - 136) = 0;
  *(v2 - 128) = v0;
  *(v2 - 120) = v1;
}

uint64_t OUTLINED_FUNCTION_53_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_53_2(uint64_t a1)
{

  return sub_1C9470AFC(a1, v1, v2);
}

uint64_t sub_1C94A3788()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A70, &qword_1C96B05D0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v27 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v26 - v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4CD0, &unk_1C96B6B60);
  v14 = type metadata accessor for MapsConfiguration.EndpointConfiguration(0);
  v15 = *(*(v14 - 8) + 72);
  v16 = (*(*(v14 - 8) + 80) + 32) & ~*(*(v14 - 8) + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1C96B20F0;
  sub_1C96A4754();
  v18 = sub_1C96A4764();
  result = __swift_getEnumTagSinglePayload(v13, 1, v18);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_8;
  }

  v26 = v17;
  v20 = (v17 + v16);
  *v20 = 4;
  v21 = *(*(v18 - 8) + 32);
  v21(&v20[*(v14 + 20)], v13, v18);
  v20[*(v14 + 28)] = 1;
  sub_1C96A4754();
  result = __swift_getEnumTagSinglePayload(v10, 1, v18);
  if (result == 1)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v20[v15] = 2;
  v21(&v20[v15 + *(v14 + 20)], v10, v18);
  v20[v15 + *(v14 + 28)] = 1;
  sub_1C96A4754();
  result = __swift_getEnumTagSinglePayload(v7, 1, v18);
  if (result == 1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v22 = &v20[2 * v15];
  *v22 = 3;
  v21(&v22[*(v14 + 20)], v7, v18);
  v22[*(v14 + 28)] = 1;
  sub_1C96A4754();
  result = __swift_getEnumTagSinglePayload(v4, 1, v18);
  if (result == 1)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v23 = &v20[3 * v15];
  *v23 = 1;
  v21(&v23[*(v14 + 20)], v4, v18);
  v23[*(v14 + 28)] = 1;
  v24 = v27;
  sub_1C96A4754();
  result = __swift_getEnumTagSinglePayload(v24, 1, v18);
  if (result != 1)
  {
    v25 = &v20[4 * v15];
    *v25 = 5;
    v21(&v25[*(v14 + 20)], v24, v18);
    v25[*(v14 + 28)] = 1;
    return v26;
  }

LABEL_11:
  __break(1u);
  return result;
}

void *sub_1C94A3BA4()
{
  result = sub_1C94A3788();
  off_1EDB7EF20 = result;
  return result;
}

void sub_1C94A3BC4()
{
  OUTLINED_FUNCTION_30_1();
  v0 = sub_1C96A4F24();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14();
  v6 = v5 - v4;
  v7 = sub_1C96A4F34();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14();
  if (qword_1EDB80020 != -1)
  {
    OUTLINED_FUNCTION_2_0(&qword_1EDB80020);
  }

  __swift_project_value_buffer(v7, qword_1EDB80028);
  v9 = OUTLINED_FUNCTION_5_1();
  v10(v9);
  (*(v2 + 104))(v6, *MEMORY[0x1E69D6E90], v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4BD0, &unk_1C96B1390);
  swift_allocObject();
  qword_1EDB7FD08 = sub_1C96A4F74();
  OUTLINED_FUNCTION_20_4();
}

double sub_1C94A3D7C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A68E8, &qword_1C96B9218);
  v0 = swift_allocObject();
  *&result = 9;
  *(v0 + 16) = xmmword_1C96B3B40;
  *(v0 + 32) = 0x443430303033;
  *(v0 + 40) = 0xE600000000000000;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0x364436353835;
  *(v0 + 64) = 0xE600000000000000;
  *(v0 + 72) = 0x3FD0000000000000;
  *(v0 + 80) = 0x464641373030;
  *(v0 + 88) = 0xE600000000000000;
  *(v0 + 96) = 0x3FE0000000000000;
  *(v0 + 104) = 0x414638434135;
  *(v0 + 112) = 0xE600000000000000;
  *(v0 + 120) = 0x3FE4000000000000;
  *(v0 + 128) = 0x464334443636;
  *(v0 + 136) = 0xE600000000000000;
  *(v0 + 144) = 0x3FE6AAAAAAAAAAABLL;
  *(v0 + 152) = 0x303043434646;
  *(v0 + 160) = 0xE600000000000000;
  *(v0 + 168) = 0x3FE9555555555555;
  *(v0 + 176) = 0x303035394646;
  *(v0 + 184) = 0xE600000000000000;
  *(v0 + 192) = 0x3FEAAAAAAAAAAAABLL;
  *(v0 + 200) = 0x303342334646;
  *(v0 + 208) = 0xE600000000000000;
  *(v0 + 216) = 0x3FED555555555555;
  *(v0 + 224) = 0x303037303737;
  *(v0 + 232) = 0xE600000000000000;
  *(v0 + 240) = 0x3FF0000000000000;
  qword_1EDB7D640 = v0;
  return result;
}

Swift::String __swiftcall GeocodeManagerGetCurrentCountryCode()()
{
  v0 = [objc_opt_self() sharedConfiguration];
  if (v0)
  {
    v0 = sub_1C94A3EF4(v0);
    if (!v1)
    {
      v0 = 0;
      v1 = 0xE000000000000000;
    }
  }

  else
  {
    __break(1u);
  }

  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t sub_1C94A3EF4(void *a1)
{
  v2 = [a1 countryCode];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1C96A7024();

  return v3;
}

uint64_t static UnitManager.standard.getter()
{
  if (qword_1EDB80318 != -1)
  {
    OUTLINED_FUNCTION_16(&qword_1EDB80318);
  }

  return sub_1C96A3D04();
}

uint64_t OUTLINED_FUNCTION_50_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C96A7DE4();
}

uint64_t OUTLINED_FUNCTION_50_2()
{

  return sub_1C96A5514();
}

BOOL OUTLINED_FUNCTION_50_4()
{

  return os_log_type_enabled(v0, v1);
}

void *OUTLINED_FUNCTION_50_5(void *a1)
{

  return memcpy(a1, v1, 0x48uLL);
}

uint64_t UnitManager.preferredPrecipitationUnit.getter()
{
  OUTLINED_FUNCTION_41_5();
  OUTLINED_FUNCTION_36_1(v3);
  v0 = OUTLINED_FUNCTION_1_23();
  v1(v0);
  return __swift_destroy_boxed_opaque_existential_1Tm(v3);
}

uint64_t sub_1C94A4134(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  sub_1C96A5134();
  sub_1C96A3D04();
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  sub_1C96A5554();
}

void (*sub_1C94A41E0(void (*a1)(uint64_t)))(uint64_t)
{
  sub_1C96A4C14();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_3();
  sub_1C94A42AC();
  a1(v1);
  v4 = OUTLINED_FUNCTION_22_7();
  v5(v4);
  return a1;
}

uint64_t sub_1C94A42AC()
{
  sub_1C96A3D04();
  sub_1C96A55D4();
}

id UnitManager.precipitationRainfall(locale:)()
{
  OUTLINED_FUNCTION_33_3();
  OUTLINED_FUNCTION_15_9();
  v2 = OUTLINED_FUNCTION_9_14();
  v3(v2);
  v4 = OUTLINED_FUNCTION_34_4();
  if (v5)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_22();
    MEMORY[0x1EEE9AC00](v6);
    OUTLINED_FUNCTION_6_17();
    v7 = OUTLINED_FUNCTION_23_7();
    sub_1C954DD90(v7, v8);
    os_unfair_lock_unlock(v1 + 6);
    OUTLINED_FUNCTION_54_2();
    return OUTLINED_FUNCTION_20_8();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    v10 = objc_opt_self();
    if (v0)
    {
      v11 = [v10 millimeters];
    }

    else
    {
      v11 = [v10 inches];
    }

    return v11;
  }
}

uint64_t sub_1C94A440C(uint64_t a1)
{
  result = sub_1C96A4C14();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_32_3()
{

  return sub_1C96A7924();
}

uint64_t OUTLINED_FUNCTION_32_5(uint64_t a1)
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_32_6()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_32_7()
{
  v4 = v2 + *(v0 + 24);

  return __swift_getEnumTagSinglePayload(v4, 1, v1);
}

id sub_1C94A4584(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5670, &unk_1C96BD450);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v7);
  v30 = &v29 - v8;
  v9 = sub_1C96A4C14();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for UnitDefaults.UnitLengthCacheKey(0);
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15);
  v29 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v29 - v20;
  v22 = *(v11 + 16);
  v32 = a1;
  v22(&v29 - v20, a1, v9, v19);
  v23 = *(v6 + 16);
  v24 = &v21[*(v16 + 28)];
  v33 = a2;
  v31 = v4;
  v23(v24, a2, v4);
  if (qword_1EDB7FF58 != -1)
  {
    swift_once();
  }

  sub_1C96A5574();
  v25 = v34;
  if (v34)
  {
    sub_1C94A4BCC(v21);
    return v25;
  }

  else
  {
    sub_1C946B5D0(0, &qword_1EDB7FDA0, 0x1E696B058);
    (v22)(v14, v32, v9);
    v23(v30, v33, v31);
    v27 = sub_1C96A7654();
    sub_1C94A4A40(v21, v29);
    v34 = v27;
    v28 = v27;
    sub_1C96A5584();
    sub_1C94A4BCC(v21);
    return v28;
  }
}

void sub_1C94A4878(uint64_t a1)
{
  sub_1C96A4C14();
  if (v1 <= 0x3F)
  {
    sub_1C94A48FC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C94A48FC(uint64_t a1)
{
  if (!qword_1EDB80058)
  {
    sub_1C946B5D0(255, &qword_1EDB7FDA0, 0x1E696B058);
    v1 = sub_1C96A4674();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDB80058);
    }
  }
}

uint64_t sub_1C94A4964()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7198, &qword_1C96BD498);
  swift_allocObject();
  result = sub_1C96A5564();
  qword_1EDB7FF60 = result;
  return result;
}

uint64_t sub_1C94A49F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C94A4A40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnitDefaults.UnitLengthCacheKey(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C94A4AA4(uint64_t a1)
{
  sub_1C96A7EE4();
  sub_1C96A4C14();
  sub_1C94A49F8(&qword_1EDB80048, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
  sub_1C96A6F34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5670, &unk_1C96BD450);
  sub_1C94A4B68();
  sub_1C96A6F34();
  return sub_1C96A7F24();
}

unint64_t sub_1C94A4B68()
{
  result = qword_1EDB80060;
  if (!qword_1EDB80060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3A5670, &unk_1C96BD450);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB80060);
  }

  return result;
}

uint64_t sub_1C94A4BCC(uint64_t a1)
{
  v2 = type metadata accessor for UnitDefaults.UnitLengthCacheKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C94A4C28(uint64_t a1)
{
  v2 = type metadata accessor for UnitDefaults(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1C94A4C84()
{
  v0 = objc_opt_self();
  v1 = [v0 megameters];
  OUTLINED_FUNCTION_4_67(v1, &qword_1EDB7FDA0);
  OUTLINED_FUNCTION_9_0();
  v2 = sub_1C96A78B4();

  if ((v2 & 1) == 0)
  {
    v3 = OUTLINED_FUNCTION_2_79();
    v4 = OUTLINED_FUNCTION_0_111(v3);

    if ((v4 & 1) == 0)
    {
      v5 = OUTLINED_FUNCTION_2_79();
      v6 = OUTLINED_FUNCTION_0_111(v5);

      if ((v6 & 1) == 0)
      {
        v7 = OUTLINED_FUNCTION_2_79();
        v8 = OUTLINED_FUNCTION_0_111(v7);

        if ((v8 & 1) == 0)
        {
          v9 = OUTLINED_FUNCTION_2_79();
          v10 = OUTLINED_FUNCTION_0_111(v9);

          if ((v10 & 1) == 0)
          {
            v11 = OUTLINED_FUNCTION_2_79();
            v12 = OUTLINED_FUNCTION_0_111(v11);

            if ((v12 & 1) == 0)
            {
              v13 = OUTLINED_FUNCTION_2_79();
              v14 = OUTLINED_FUNCTION_0_111(v13);

              if ((v14 & 1) == 0)
              {
                v15 = OUTLINED_FUNCTION_5_55();
                v16 = OUTLINED_FUNCTION_0_111(v15);

                if ((v16 & 1) == 0)
                {
                  v17 = OUTLINED_FUNCTION_2_79();
                  v18 = OUTLINED_FUNCTION_0_111(v17);

                  if ((v18 & 1) == 0)
                  {
                    v19 = OUTLINED_FUNCTION_2_79();
                    v20 = OUTLINED_FUNCTION_0_111(v19);

                    if ((v20 & 1) == 0)
                    {
                      v21 = OUTLINED_FUNCTION_2_79();
                      v22 = OUTLINED_FUNCTION_0_111(v21);

                      if ((v22 & 1) == 0)
                      {
                        v23 = OUTLINED_FUNCTION_2_79();
                        v24 = OUTLINED_FUNCTION_0_111(v23);

                        if ((v24 & 1) == 0)
                        {
                          v25 = OUTLINED_FUNCTION_2_79();
                          v26 = OUTLINED_FUNCTION_0_111(v25);

                          if ((v26 & 1) == 0)
                          {
                            v27 = OUTLINED_FUNCTION_2_79();
                            v28 = OUTLINED_FUNCTION_0_111(v27);

                            if ((v28 & 1) == 0)
                            {
                              v29 = OUTLINED_FUNCTION_2_79();
                              v30 = OUTLINED_FUNCTION_0_111(v29);

                              if ((v30 & 1) == 0)
                              {
                                v31 = OUTLINED_FUNCTION_2_79();
                                v32 = OUTLINED_FUNCTION_0_111(v31);

                                if ((v32 & 1) == 0)
                                {
                                  v33 = OUTLINED_FUNCTION_2_79();
                                  v34 = OUTLINED_FUNCTION_0_111(v33);

                                  if ((v34 & 1) == 0)
                                  {
                                    v35 = OUTLINED_FUNCTION_2_79();
                                    v36 = OUTLINED_FUNCTION_0_111(v35);

                                    if ((v36 & 1) == 0)
                                    {
                                      v37 = OUTLINED_FUNCTION_2_79();
                                      v38 = OUTLINED_FUNCTION_0_111(v37);

                                      if ((v38 & 1) == 0)
                                      {
                                        v39 = OUTLINED_FUNCTION_2_79();
                                        v40 = OUTLINED_FUNCTION_0_111(v39);

                                        if ((v40 & 1) == 0)
                                        {
                                          v41 = OUTLINED_FUNCTION_2_79();
                                          v42 = OUTLINED_FUNCTION_0_111(v41);

                                          if ((v42 & 1) == 0)
                                          {
                                            OUTLINED_FUNCTION_0_111([v0 parsecs]);
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v43 = OUTLINED_FUNCTION_2_79();

  return v43;
}

void OUTLINED_FUNCTION_60_1(void *a1@<X8>)
{
  v3 = *(v1 - 256);
  *a1 = v2;
  a1[1] = v3;
}

void OUTLINED_FUNCTION_60_3(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>)
{
  v7 = (v6 + a1);
  *v7 = a3;
  v7[1] = a4;
  v7[2] = a5;
  v7[3] = a6;
  v7[4] = a2;
}

void OUTLINED_FUNCTION_60_4(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_60_5()
{
}

uint64_t UnitManager.preferredPressureUnit.getter()
{
  OUTLINED_FUNCTION_41_5();
  OUTLINED_FUNCTION_36_1(v3);
  v0 = OUTLINED_FUNCTION_1_23();
  v1(v0);
  return __swift_destroy_boxed_opaque_existential_1Tm(v3);
}

id UnitManager.pressure(locale:)()
{
  OUTLINED_FUNCTION_33_3();
  OUTLINED_FUNCTION_15_9();
  v1 = OUTLINED_FUNCTION_9_14();
  v2(v1);
  __swift_destroy_boxed_opaque_existential_1Tm(&v9);
  switch(v8)
  {
    case 1:
      v3 = [objc_opt_self() inchesOfMercury];
      goto LABEL_7;
    case 2:
      v3 = [objc_opt_self() millimetersOfMercury];
      goto LABEL_7;
    case 3:
      v3 = [objc_opt_self() hectopascals];
      goto LABEL_7;
    case 4:
      v3 = [objc_opt_self() kilopascals];
      goto LABEL_7;
    case 5:
      swift_getKeyPath();
      OUTLINED_FUNCTION_2_22();
      MEMORY[0x1EEE9AC00](v5);
      OUTLINED_FUNCTION_6_17();
      v6 = OUTLINED_FUNCTION_23_7();
      sub_1C954DD90(v6, v7);
      os_unfair_lock_unlock(v0 + 6);
      OUTLINED_FUNCTION_54_2();
      return OUTLINED_FUNCTION_20_8();
    default:
      v3 = [objc_opt_self() millibars];
LABEL_7:

      return v3;
  }
}

uint64_t OUTLINED_FUNCTION_48_5()
{

  return sub_1C96A53C4();
}

uint64_t OUTLINED_FUNCTION_48_6()
{
}

unint64_t OUTLINED_FUNCTION_48_7()
{

  return sub_1C9484164(v0, v1, (v2 - 120));
}

uint64_t OUTLINED_FUNCTION_48_8()
{

  return sub_1C96A5194();
}

void OUTLINED_FUNCTION_48_10(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_48_11(uint64_t a1)
{

  return sub_1C96A78B4();
}

uint64_t OUTLINED_FUNCTION_62_4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, void (*a3)(void)@<X2>)
{
  v4 = *(a2 - 256);

  return sub_1C960A530(a1, v4, a3);
}

uint64_t OUTLINED_FUNCTION_45_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(a1, a2, a3, a4);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_45_4(uint64_t a1, uint64_t a2)
{

  return sub_1C96A7C04();
}

uint64_t OUTLINED_FUNCTION_45_5(uint64_t a1)
{

  return sub_1C96A5504();
}

void OUTLINED_FUNCTION_45_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

id OUTLINED_FUNCTION_45_8(uint64_t a1, uint64_t a2)
{

  return sub_1C9611DB8(a1, a2, 0);
}

void OUTLINED_FUNCTION_45_9(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = v1;
  *(a1 + 16) = 0;
  *(a1 + 18) = v2;
}

id sub_1C94A5580()
{
  v0 = objc_opt_self();
  v1 = [v0 newtonsPerMetersSquared];
  OUTLINED_FUNCTION_4_67(v1, &qword_1EDB7FD98);
  OUTLINED_FUNCTION_9_0();
  v2 = sub_1C96A78B4();

  if ((v2 & 1) == 0)
  {
    v3 = OUTLINED_FUNCTION_2_79();
    v4 = OUTLINED_FUNCTION_0_111(v3);

    if ((v4 & 1) == 0)
    {
      v5 = OUTLINED_FUNCTION_2_79();
      v6 = OUTLINED_FUNCTION_0_111(v5);

      if ((v6 & 1) == 0)
      {
        v7 = OUTLINED_FUNCTION_2_79();
        v8 = OUTLINED_FUNCTION_0_111(v7);

        if ((v8 & 1) == 0)
        {
          v9 = OUTLINED_FUNCTION_5_55();
          v10 = OUTLINED_FUNCTION_0_111(v9);

          if ((v10 & 1) == 0)
          {
            v11 = OUTLINED_FUNCTION_2_79();
            v12 = OUTLINED_FUNCTION_0_111(v11);

            if ((v12 & 1) == 0)
            {
              v13 = OUTLINED_FUNCTION_2_79();
              v14 = OUTLINED_FUNCTION_0_111(v13);

              if ((v14 & 1) == 0)
              {
                v15 = OUTLINED_FUNCTION_2_79();
                v16 = OUTLINED_FUNCTION_0_111(v15);

                if ((v16 & 1) == 0)
                {
                  v17 = OUTLINED_FUNCTION_2_79();
                  v18 = OUTLINED_FUNCTION_0_111(v17);

                  if ((v18 & 1) == 0)
                  {
                    OUTLINED_FUNCTION_0_111([v0 poundsForcePerSquareInch]);
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v19 = OUTLINED_FUNCTION_2_79();

  return v19;
}

uint64_t UnitManager.preferredTemperatureUnit.getter()
{
  OUTLINED_FUNCTION_41_5();
  OUTLINED_FUNCTION_36_1(v3);
  v0 = OUTLINED_FUNCTION_1_23();
  v1(v0);
  return __swift_destroy_boxed_opaque_existential_1Tm(v3);
}

uint64_t UnitManager.systemWideTemperatureUnit.getter@<X0>(char *a1@<X8>)
{
  sub_1C96A4C14();
  OUTLINED_FUNCTION_3_13();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4_3();
  sub_1C96A4BC4();
  v3 = sub_1C96A4B64();
  v4 = [v3 objectForKey_];

  if (v4)
  {
    sub_1C96A79C4();
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
      v5 = sub_1C96A7024();
      if (v27 == v5 && v28 == v6)
      {
      }

      else
      {
        v8 = OUTLINED_FUNCTION_40_3(v5);

        if ((v8 & 1) == 0)
        {
          v9 = sub_1C96A7024();
          if (v27 == v9 && v28 == v10)
          {

            v25 = OUTLINED_FUNCTION_18_10();
            result = v26(v25);
            v16 = 1;
          }

          else
          {
            v12 = OUTLINED_FUNCTION_40_3(v9);

            v13 = OUTLINED_FUNCTION_18_10();
            result = v14(v13);
            if (v12)
            {
              v16 = 1;
            }

            else
            {
              v16 = 2;
            }
          }

          goto LABEL_26;
        }
      }

      v23 = OUTLINED_FUNCTION_18_10();
      v24(v23);

      v16 = 0;
      goto LABEL_26;
    }
  }

  else
  {
    sub_1C94BE204(v31, &qword_1EC3A4A90, &qword_1C96B0AA0);
  }

  if (qword_1EDB80080 != -1)
  {
    OUTLINED_FUNCTION_0_29(&qword_1EDB80080);
  }

  v17 = sub_1C96A6154();
  __swift_project_value_buffer(v17, qword_1EDB80088);
  v18 = sub_1C96A6134();
  v19 = sub_1C96A7684();
  if (OUTLINED_FUNCTION_14_7(v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_1C945E000, v18, v19, "Failed to read user's temperature unit from the locale", v20, 2u);
    OUTLINED_FUNCTION_26();
  }

  v21 = OUTLINED_FUNCTION_18_10();
  result = v22(v21);
  v16 = 2;
LABEL_26:
  *a1 = v16;
  return result;
}

id sub_1C94A5B10(void *a1, SEL *a2, SEL *a3)
{
  v6 = *v3;
  v7 = objc_opt_self();
  if (v6)
  {
    v8 = a2;
  }

  else
  {
    v8 = a3;
  }

  v9 = [v7 *v8];

  return v9;
}

uint64_t UnitManager.preferredDistanceUnit.getter()
{
  OUTLINED_FUNCTION_41_5();
  OUTLINED_FUNCTION_36_1(v3);
  v0 = OUTLINED_FUNCTION_1_23();
  v1(v0);
  return __swift_destroy_boxed_opaque_existential_1Tm(v3);
}

id UnitManager.visibility(locale:)()
{
  OUTLINED_FUNCTION_33_3();
  OUTLINED_FUNCTION_15_9();
  v2 = OUTLINED_FUNCTION_9_14();
  v3(v2);
  v4 = OUTLINED_FUNCTION_34_4();
  if (v5)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    swift_getKeyPath();
    OUTLINED_FUNCTION_2_22();
    MEMORY[0x1EEE9AC00](v6);
    OUTLINED_FUNCTION_6_17();
    v7 = OUTLINED_FUNCTION_23_7();
    sub_1C954DD90(v7, v8);
    os_unfair_lock_unlock(v1 + 6);
    OUTLINED_FUNCTION_54_2();
    return OUTLINED_FUNCTION_20_8();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
    v10 = objc_opt_self();
    if (v0)
    {
      v11 = [v10 kilometers];
    }

    else
    {
      v11 = [v10 miles];
    }

    return v11;
  }
}

id UnitDefaults.visibility.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5670, &unk_1C96BD450);
  OUTLINED_FUNCTION_7(v2);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_3_44();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_3();
  sub_1C946B5D0(0, &qword_1EDB7FDA0, 0x1E696B058);
  (*(v6 + 16))(v1, v0, v4);
  sub_1C96A4624();
  v8 = sub_1C96A7654();
  v9 = NSUnitLength.isMetricVisibility.getter();
  v10 = objc_opt_self();
  v11 = &selRef_kilometers;
  if ((v9 & 1) == 0)
  {
    v11 = &selRef_miles;
  }

  v12 = [v10 *v11];

  return v12;
}

uint64_t NSUnitLength.isMetricVisibility.getter()
{
  v0 = objc_opt_self();
  v1 = [v0 millimeters];
  OUTLINED_FUNCTION_4_67(v1, &qword_1EDB7FDA0);
  OUTLINED_FUNCTION_9_0();
  v2 = sub_1C96A78B4();

  if (v2)
  {
    return 1;
  }

  v3 = OUTLINED_FUNCTION_1_82([v0 centimeters]);

  if (v3)
  {
    return 1;
  }

  v4 = OUTLINED_FUNCTION_1_82([v0 meters]);

  if (v4)
  {
    return 1;
  }

  v6 = [v0 kilometers];
  v7 = sub_1C96A78B4();

  return v7 & 1;
}

uint64_t UnitManager.preferredWindUnit.getter()
{
  OUTLINED_FUNCTION_41_5();
  OUTLINED_FUNCTION_36_1(v3);
  v0 = OUTLINED_FUNCTION_1_23();
  v1(v0);
  return __swift_destroy_boxed_opaque_existential_1Tm(v3);
}

id UnitManager.windSpeed(locale:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5290, &qword_1C96AD6F0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v21 - v2;
  if (*(v0 + 48) == 1)
  {
LABEL_2:
    if (qword_1EDB77D10 != -1)
    {
      OUTLINED_FUNCTION_21_10(&qword_1EDB77D10);
    }

    v4 = qword_1EDB77D18;

    return v4;
  }

  else
  {
    sub_1C9486640();
    v6 = v24;
    v7 = v25;
    __swift_project_boxed_opaque_existential_1(v23, v24);
    (*(v7 + 40))(&v22, v6, v7);
    v8 = v22;
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    switch(v8)
    {
      case 1:
LABEL_10:
        v9 = [objc_opt_self() kilometersPerHour];
        goto LABEL_12;
      case 2:
LABEL_11:
        v9 = [objc_opt_self() metersPerSecond];
        goto LABEL_12;
      case 3:
        goto LABEL_2;
      case 4:
LABEL_9:
        v9 = [objc_opt_self() knots];
        goto LABEL_12;
      case 5:
        sub_1C96A4BB4();
        v10 = sub_1C96A4BA4();
        if (__swift_getEnumTagSinglePayload(v3, 1, v10) == 1)
        {
          sub_1C94BE204(v3, &qword_1EC3A5290, &qword_1C96AD6F0);
        }

        else
        {
          v11 = sub_1C96A4AC4();
          v13 = v12;
          (*(*(v10 - 8) + 8))(v3, v10);
          if (qword_1EDB799D0 != -1)
          {
            swift_once();
          }

          v14 = off_1EDB7C348;
          if (*(off_1EDB7C348 + 2))
          {
            v15 = sub_1C9476F90(v11, v13);
            v10 = v16;

            if (v10)
            {
              v17 = *(v14[7] + v15);
              switch(v17)
              {
                case 3:

                  goto LABEL_2;
                default:
                  v18 = sub_1C96A7DE4();

                  if (v18)
                  {
                    switch(v17)
                    {
                      case 0:
                        goto LABEL_8;
                      case 1:
                        goto LABEL_10;
                      case 2:
                        goto LABEL_11;
                      case 3:
                        goto LABEL_2;
                      case 4:
                        goto LABEL_9;
                      default:
                        JUMPOUT(0);
                    }
                  }

                  break;
              }
            }
          }

          else
          {
          }
        }

        swift_getKeyPath();
        OUTLINED_FUNCTION_2_22();
        MEMORY[0x1EEE9AC00](v19);
        OUTLINED_FUNCTION_6_17();
        sub_1C954DB44(v10 + 16, v23);
        os_unfair_lock_unlock((v10 + 24));
        v20 = v23[0];

        return v20;
      default:
LABEL_8:
        v9 = [objc_opt_self() milesPerHour];
LABEL_12:

        result = v9;
        break;
    }
  }

  return result;
}

id NSUnitSpeed.canonical.getter()
{
  v0 = objc_opt_self();
  v1 = [v0 metersPerSecond];
  OUTLINED_FUNCTION_4_67(v1, &qword_1EDB80070);
  OUTLINED_FUNCTION_9_0();
  v2 = sub_1C96A78B4();

  if (v2)
  {
    goto LABEL_14;
  }

  v3 = OUTLINED_FUNCTION_0_111([v0 kilometersPerHour]);

  if (v3)
  {
    v4 = [v0 kilometersPerHour];
LABEL_15:

    return v4;
  }

  v5 = OUTLINED_FUNCTION_0_111([v0 milesPerHour]);

  if (v5)
  {
    v4 = [v0 milesPerHour];
    goto LABEL_15;
  }

  v6 = OUTLINED_FUNCTION_0_111([v0 knots]);

  if (v6)
  {
    v4 = [v0 knots];
    goto LABEL_15;
  }

  if (qword_1EDB77D10 != -1)
  {
    swift_once();
  }

  v9 = qword_1EDB77D18;
  v7 = sub_1C96A78B4();

  if ((v7 & 1) == 0)
  {
LABEL_14:
    v4 = [v0 metersPerSecond];
    goto LABEL_15;
  }

  return v9;
}

void *LocationDisplayContextManager.fetchDisplayContextByLocation()()
{
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6788, &unk_1C96C4560);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v1);
  v62 = &v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v61 = &v56 - v4;
  MEMORY[0x1EEE9AC00](v5);
  v65 = &v56 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6790, &unk_1C96C3130);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v56 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60B0, &qword_1C96B43D0);
  OUTLINED_FUNCTION_1();
  v60 = v11;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v56 - v13;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6798, &unk_1C96C3140);
  OUTLINED_FUNCTION_1();
  v57 = v15;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v56 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F90, &qword_1C96B31A0);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v56 - v20;
  v22 = type metadata accessor for SyncedData(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = v0[5];
  v27 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v26);
  (*(v27 + 40))(v26, v27);
  if (__swift_getEnumTagSinglePayload(v21, 1, v22) != 1)
  {
    sub_1C95739FC(v21, v25);
    (*(v60 + 16))(v14, &v25[*(v22 + 20)], v10);
    sub_1C9469CB4(&qword_1EC3A67B8, &qword_1EC3A60B0, &qword_1C96B43D0, MEMORY[0x1E69951F8]);
    sub_1C96A71F4();
    v60 = sub_1C9469CB4(&qword_1EC3A67C0, &qword_1EC3A6798, &unk_1C96C3140, MEMORY[0x1E69951E8]);
    v32 = MEMORY[0x1E69E7CC8];
    v58 = v9;
    for (i = v18; ; v18 = i)
    {
      sub_1C96A7944();
      v33 = v63;
      if (__swift_getEnumTagSinglePayload(v9, 1, v63) == 1)
      {
        (*(v57 + 8))(v18, v64);
        sub_1C966CD74(v25, type metadata accessor for SyncedData);
        return v32;
      }

      v34 = v25;
      v35 = v65;
      sub_1C9657E18(v9, v65);
      v36 = v61;
      sub_1C9657E88(v35, v61);

      v37 = *(v33 + 48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5158, &unk_1C96ACD20);
      sub_1C96A66E4();
      v39 = v66;
      v38 = v67;
      sub_1C966CD74(v36 + v37, type metadata accessor for SyncedLocationDisplayContext);
      v40 = v62;
      sub_1C9657E88(v35, v62);

      v41 = v40 + *(v33 + 48);
      type metadata accessor for SyncedLocationDisplayContext(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A67C8, &qword_1C96BBDB0);
      sub_1C96A66E4();
      v42 = v66;
      sub_1C966CD74(v41, type metadata accessor for SyncedLocationDisplayContext);
      swift_isUniquelyReferenced_nonNull_native();
      v66 = v32;
      v43 = sub_1C9476F90(v39, v38);
      if (__OFADD__(v32[2], (v44 & 1) == 0))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v45 = v43;
      v46 = v44;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7B40, &unk_1C96C3150);
      if (sub_1C96A7B84())
      {
        v47 = sub_1C9476F90(v39, v38);
        if ((v46 & 1) != (v48 & 1))
        {
          result = sub_1C96A7E44();
          __break(1u);
          return result;
        }

        v45 = v47;
      }

      v25 = v34;
      if (v46)
      {

        v49 = v65;
        v32 = v66;
        *(v66[7] + v45) = v42;
        sub_1C9470AFC(v49, &qword_1EC3A6788, &unk_1C96C4560);
      }

      else
      {
        v50 = v65;
        v32 = v66;
        v66[(v45 >> 6) + 8] |= 1 << v45;
        v51 = (v32[6] + 16 * v45);
        *v51 = v39;
        v51[1] = v38;
        *(v32[7] + v45) = v42;
        sub_1C9470AFC(v50, &qword_1EC3A6788, &unk_1C96C4560);
        v52 = v32[2];
        v53 = __OFADD__(v52, 1);
        v54 = v52 + 1;
        if (v53)
        {
          goto LABEL_20;
        }

        v32[2] = v54;
      }

      v9 = v58;
    }
  }

  sub_1C9470AFC(v21, &unk_1EC3A5F90, &qword_1C96B31A0);
  if (qword_1EDB7D010 != -1)
  {
LABEL_21:
    swift_once();
  }

  v28 = sub_1C96A6154();
  __swift_project_value_buffer(v28, qword_1EDB7D018);
  v29 = sub_1C96A6134();
  v30 = sub_1C96A7684();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_1C945E000, v29, v30, "Could not access local Coherence synced data", v31, 2u);
    MEMORY[0x1CCA8E3D0](v31, -1, -1);
  }

  return sub_1C96A6F04();
}

uint64_t SyncedDataManager.getSyncedData()@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5F90, &qword_1C96B31A0);
  OUTLINED_FUNCTION_7(v5);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_42();
  sub_1C96A50E4();
  v7 = OBJC_IVAR____TtC11WeatherCore17SyncedDataManager_cachedSyncedData;
  swift_beginAccess();
  sub_1C9470A40(v3 + v7, v2, &unk_1EC3A5F90, &qword_1C96B31A0);
  v8 = type metadata accessor for SyncedData(0);
  v9 = OUTLINED_FUNCTION_44_7();
  OUTLINED_FUNCTION_23_1(v9, v10, v8);
  if (v11)
  {
    sub_1C9470AFC(v2, &unk_1EC3A5F90, &qword_1C96B31A0);
    v12 = sub_1C94A71A8();
    if (v13 >> 60 != 15)
    {
      v25 = v12;
      v26 = v13;
      SyncedDataManager.makeSyncedData(from:)(v12, v13);
      sub_1C9485BFC(v25, v26);
      return sub_1C96A50F4();
    }

    if (qword_1EDB7D060 != -1)
    {
      OUTLINED_FUNCTION_0_54(&qword_1EDB7D060);
    }

    v14 = sub_1C96A6154();
    OUTLINED_FUNCTION_54_0(v14, qword_1EDB7D068);
    v15 = sub_1C96A6134();
    v16 = sub_1C96A7684();
    if (os_log_type_enabled(v15, v16))
    {
      *OUTLINED_FUNCTION_29() = 0;
      OUTLINED_FUNCTION_33_11();
      _os_log_impl(v17, v18, v19, v20, v21, 2u);
      OUTLINED_FUNCTION_26();
    }

    v23 = OUTLINED_FUNCTION_21_3();
  }

  else
  {
    OUTLINED_FUNCTION_0_50();
    sub_1C9651904(v2, a1, v22);
    v23 = a1;
    v24 = 0;
  }

  __swift_storeEnumTagSinglePayload(v23, v24, 1, v8);
  return sub_1C96A50F4();
}

uint64_t sub_1C94A70A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60A8, &unk_1C96BEA90);
  OUTLINED_FUNCTION_16_1();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A60B0, &qword_1C96B43D0);
  OUTLINED_FUNCTION_16_1();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 24));
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

uint64_t sub_1C94A71A8()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 24))(v1, v2);
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t static CurrentLocation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Location(0);
  v5 = OUTLINED_FUNCTION_7(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2();
  v41 = v6 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v40 - v9);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v40 - v12);
  type metadata accessor for CurrentLocation(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v40 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v40 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6450, &unk_1C96B5BF0);
  OUTLINED_FUNCTION_7(v24);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v40 - v26;
  v29 = *(v28 + 56);
  sub_1C949D15C(a1, &v40 - v26);
  sub_1C949D15C(a2, &v27[v29]);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1C949D15C(v27, v20);
      if (OUTLINED_FUNCTION_29_6() == 1)
      {
        OUTLINED_FUNCTION_11_23();
        sub_1C949A788(&v27[v29], v10, v35);
        v33 = static Location.== infix(_:_:)(v20, v10);
        sub_1C948E940(v10, v13);
        v34 = v20;
        v36 = v13;
        goto LABEL_15;
      }

      v17 = v20;
      goto LABEL_11;
    case 2u:
      sub_1C949D15C(v27, v17);
      if (OUTLINED_FUNCTION_29_6() != 2)
      {
        goto LABEL_11;
      }

      OUTLINED_FUNCTION_9_25();
      v30 = &v27[v29];
      v31 = v41;
      sub_1C949A788(v30, v41, v32);
      v33 = static Location.== infix(_:_:)(v17, v31);
      sub_1C948E940(v31, v10);
      v34 = v17;
      goto LABEL_14;
    case 3u:
      if (OUTLINED_FUNCTION_29_6() != 3)
      {
        goto LABEL_12;
      }

      OUTLINED_FUNCTION_13_24();
      v33 = 1;
      return v33 & 1;
    default:
      sub_1C949D15C(v27, v23);
      if (OUTLINED_FUNCTION_29_6())
      {
        v17 = v23;
LABEL_11:
        OUTLINED_FUNCTION_10_23();
        sub_1C948E940(v17, v37);
LABEL_12:
        sub_1C9470AFC(v27, &qword_1EC3A6450, &unk_1C96B5BF0);
        v33 = 0;
      }

      else
      {
        OUTLINED_FUNCTION_9_25();
        sub_1C949A788(&v27[v29], v13, v38);
        v33 = static Location.== infix(_:_:)(v23, v13);
        sub_1C948E940(v13, v10);
        v34 = v23;
LABEL_14:
        v36 = v10;
LABEL_15:
        sub_1C948E940(v34, v36);
        OUTLINED_FUNCTION_13_24();
      }

      return v33 & 1;
  }
}

uint64_t LocationModel.locationOfInterest.getter()
{
  v2 = OUTLINED_FUNCTION_40_0();
  v3 = type metadata accessor for LocationModelData(v2);
  v4 = OUTLINED_FUNCTION_7(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_35_4();
  type metadata accessor for LocationModel(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_2_31();
  sub_1C949E000();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5948, &qword_1C96B15C0);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5940, &qword_1C96B1940);
  }

  OUTLINED_FUNCTION_7_17();
  sub_1C94A8124();
  sub_1C94A7894(v1, v0);
  v6 = OUTLINED_FUNCTION_37_5();
  return sub_1C949A950(v6, v7);
}

uint64_t sub_1C94A7894(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5930, &unk_1C96B1930);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t CurrentLocation.id.getter()
{
  CurrentLocation.identifier.getter(&v1);
  sub_1C96A53C4();
  sub_1C953AEDC(&v1);
  return OUTLINED_FUNCTION_11();
}

uint64_t CurrentLocation.location.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for CurrentLocation(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_35_4();
  sub_1C949D15C(v1, v1);
  OUTLINED_FUNCTION_21_17();
  if (swift_getEnumCaseMultiPayload() > 2)
  {
    v4 = 1;
  }

  else
  {
    sub_1C949A788(v1, a1, type metadata accessor for Location);
    v4 = 0;
  }

  v5 = type metadata accessor for Location(0);
  return __swift_storeEnumTagSinglePayload(a1, v4, 1, v5);
}

void *SavedLocation.identifier.getter()
{
  v2 = OUTLINED_FUNCTION_40_0();
  v3 = type metadata accessor for Location(v2);
  v4 = OUTLINED_FUNCTION_7(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_1();
  type metadata accessor for SavedLocation(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14();
  v8 = (v7 - v6);
  sub_1C949A614(v1, v7 - v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    memcpy(__dst, v8, sizeof(__dst));
    sub_1C95087DC(__dst, v13);
    sub_1C955FE40(__dst);
  }

  else
  {
    OUTLINED_FUNCTION_1_73();
    sub_1C949A7E4(v8, v1, v9);
    memcpy(__dst, v1, 0x48uLL);
    sub_1C95087DC(__dst, v13);
    OUTLINED_FUNCTION_0_98();
    sub_1C949A9FC(v1, v10);
  }

  return memcpy(v0, __dst, 0x48uLL);
}

uint64_t OUTLINED_FUNCTION_70_1()
{

  return sub_1C960A590(v1, v0);
}

uint64_t static SavedLocation.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Location(0);
  v5 = OUTLINED_FUNCTION_7(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14();
  v8 = v7 - v6;
  type metadata accessor for SavedLocation(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2();
  v12 = (v10 - v11);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v27[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A79B0, &unk_1C96C1030);
  OUTLINED_FUNCTION_7(v16);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v27[-v18];
  v21 = *(v20 + 56);
  sub_1C949A614(a1, &v27[-v18]);
  sub_1C949A614(a2, &v19[v21]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C949A614(v19, v12);
    memcpy(__dst, v12, sizeof(__dst));
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      memcpy(v29, &v19[v21], sizeof(v29));
      memcpy(v28, v12, sizeof(v28));
      memcpy(v27, &v19[v21], sizeof(v27));
      v22 = static SavedLocation.Placeholder.== infix(_:_:)(v28, v27);
      sub_1C955FE40(v29);
      sub_1C955FE40(__dst);
LABEL_9:
      OUTLINED_FUNCTION_6_53();
      sub_1C949A9FC(v19, v25);
      return v22 & 1;
    }

    sub_1C955FE40(__dst);
  }

  else
  {
    sub_1C949A614(v19, v15);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      OUTLINED_FUNCTION_1_73();
      sub_1C949A7E4(&v19[v21], v8, v24);
      v22 = static Location.== infix(_:_:)(v15, v8);
      sub_1C949A9FC(v8, type metadata accessor for Location);
      sub_1C949A9FC(v15, type metadata accessor for Location);
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_0_98();
    sub_1C949A9FC(v15, v23);
  }

  sub_1C96465CC(v19);
  v22 = 0;
  return v22 & 1;
}

uint64_t SavedLocation.id.getter()
{
  v2 = type metadata accessor for Location(0);
  v3 = OUTLINED_FUNCTION_7(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_1();
  type metadata accessor for SavedLocation(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_25_21(v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    memcpy(__dst, v0, sizeof(__dst));
    v6 = __dst[0];
    sub_1C96A53C4();
    sub_1C96A53C4();
    sub_1C96A53C4();
    sub_1C955FE40(__dst);
  }

  else
  {
    OUTLINED_FUNCTION_1_73();
    v7 = OUTLINED_FUNCTION_11();
    sub_1C949A7E4(v7, v8, v9);
    v6 = *v1;
    sub_1C96A53C4();
    sub_1C96A53C4();
    sub_1C96A53C4();
    OUTLINED_FUNCTION_0_98();
    sub_1C949A9FC(v1, v10);
  }

  return v6;
}

uint64_t LocationOfInterest.location.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for LocationOfInterest(0);
  OUTLINED_FUNCTION_3_60();
  return sub_1C9489BB0(v1 + v3, a1, v4);
}

uint64_t LocationModel.identifier.getter()
{
  v3 = OUTLINED_FUNCTION_40_0();
  v4 = type metadata accessor for SavedLocation(v3);
  v5 = OUTLINED_FUNCTION_7(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_35_4();
  v6 = type metadata accessor for CurrentLocation(0);
  v7 = OUTLINED_FUNCTION_7(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14();
  v8 = OUTLINED_FUNCTION_27_7();
  type metadata accessor for LocationModel(v8);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_2_31();
  sub_1C949E000();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5948, &qword_1C96B15C0);
    OUTLINED_FUNCTION_6_22();
    sub_1C94A8124();
    SavedLocation.identifier.getter();
    OUTLINED_FUNCTION_1_31();
    v11 = v1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5940, &qword_1C96B1940);
    OUTLINED_FUNCTION_5_21();
    OUTLINED_FUNCTION_37_5();
    sub_1C94A8124();
    CurrentLocation.identifier.getter(v0);
    OUTLINED_FUNCTION_3_23();
    v11 = v2;
  }

  sub_1C949A950(v11, v10);
  OUTLINED_FUNCTION_0_43();
  return sub_1C949A950(v12, v13);
}

uint64_t sub_1C94A8124()
{
  v1 = OUTLINED_FUNCTION_36_2();
  v2(v1);
  OUTLINED_FUNCTION_6();
  v3 = OUTLINED_FUNCTION_11();
  v4(v3);
  return v0;
}

uint64_t sub_1C94A8178(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  v4 = OUTLINED_FUNCTION_11();
  v5(v4);
  return a2;
}

uint64_t sub_1C94A81D4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t Location.identifier.getter()
{
  memcpy(__dst, v0, sizeof(__dst));
  v1 = OUTLINED_FUNCTION_11();
  memcpy(v1, v2, 0x48uLL);
  return sub_1C95087DC(__dst, &v4);
}

uint64_t sub_1C94A82A4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_1C94A8344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1C94BB15C;
  *(v13 + 24) = v12;
  v15[4] = sub_1C94BB0E4;
  v15[5] = v13;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1C94BB03C;
  v15[3] = &block_descriptor_37;
  v14 = _Block_copy(v15);
  sub_1C96A3D04();

  [a5 migrateStore:a6 toStore:a7 completionBlock:v14];
  _Block_release(v14);
}

uint64_t sub_1C94A8498(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (*(a1 + 56))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6618, &qword_1C96B77D0);
    swift_allocObject();
    v2 = v1;
    return sub_1C96A56A4();
  }

  v4 = sub_1C96A3D04();
  result = MEMORY[0x1CCA8AE50](v4);
  if (result)
  {
    v3 = result;
    sub_1C94A855C(v1, 0);
    return v3;
  }

  __break(1u);
  return result;
}

void sub_1C94A855C(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

void *sub_1C94A8568@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5038, &qword_1C96AC4D8);
  result = sub_1C96A5274();
  if (!v24)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7D78, &qword_1C96C4268);
  result = sub_1C96A5274();
  if (!v22)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7DA8, &qword_1C96C4298);
  result = sub_1C96A5274();
  if (!v19)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v5 = type metadata accessor for SavedLocationsReader();
  if (qword_1EDB80350 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = qword_1EDB80358;
  v17[3] = sub_1C946B5D0(0, &qword_1EDB80340, 0x1E695E000);
  v17[4] = &protocol witness table for NSUserDefaults;
  v17[0] = v6;
  v7 = v19;
  v8 = v20;
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  (*(v13 + 16))(v12, v10);
  v14 = v6;
  v15 = sub_1C9630950(v23, v21, v12, v17, v5, v7, v8);
  result = __swift_destroy_boxed_opaque_existential_1Tm(v18);
  a2[3] = v5;
  a2[4] = &protocol witness table for SavedLocationsReader;
  *a2 = v15;
  return result;
}

uint64_t sub_1C94A8804@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = a1(0);
  result = swift_allocObject();
  a3[3] = v5;
  a3[4] = a2;
  *a3 = result;
  return result;
}

uint64_t sub_1C94A89B4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A70, &qword_1C96B05D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7E88, &qword_1C96C4378);
  sub_1C96A5254();
  v7 = v16;
  if (v16 == 5)
  {
    v15 = 0;
    v8 = sub_1C96A4764();
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v8);
    v9 = type metadata accessor for CoherenceContextProvider(0);
    swift_allocObject();
    v10 = &v15;
  }

  else
  {
    if (v16 == 4)
    {
      v7 = 0;
    }

    v14 = v7;
    v11 = sub_1C96A4764();
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v11);
    v9 = type metadata accessor for CoherenceContextProvider(0);
    swift_allocObject();
    v10 = &v14;
  }

  result = sub_1C94A8C50(v10, v6, 0);
  a2[3] = v9;
  a2[4] = &off_1F4908FD8;
  *a2 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for CoherenceContainerName(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1C94A8C28);
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

uint64_t sub_1C94A8C50(unsigned __int8 *a1, uint64_t a2, int a3)
{
  v4 = v3;
  v30 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A70, &qword_1C96B05D0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v27 - v9;
  v11 = sub_1C96A4764();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_24();
  v28 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v27 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v27 - v20;
  v22 = *a1;
  type metadata accessor for CoherenceFileMigrator();
  inited = swift_initStackObject();
  v29 = a2;
  sub_1C947F224(a2, v10);
  if (OUTLINED_FUNCTION_5_51(v10) == 1)
  {
    v27[1] = inited;
    v27[2] = v22;
    if (qword_1EDB7BBB8 != -1)
    {
      OUTLINED_FUNCTION_2_65(&qword_1EDB7BBB8);
    }

    v27[0] = __swift_project_value_buffer(v7, qword_1EDB7BBC0);
    sub_1C96A4FD4();
    sub_1C96A4FB4();
    sub_1C96A4F94();

    sub_1C9493028(v27[0], v18, v21);

    (*(v13 + 8))(v18, v11);
    v24 = OUTLINED_FUNCTION_5_51(v10);
    if (v24 != 1)
    {
      sub_1C9470AFC(v10, &qword_1EC3A4A70, &qword_1C96B05D0);
    }
  }

  else
  {
    (*(v13 + 32))(v21, v10, v11);
  }

  (*(v13 + 16))(v4 + OBJC_IVAR____TtC11WeatherCore24CoherenceContextProvider_containerURL, v21, v11);
  v25 = v28;
  sub_1C96A4704();

  sub_1C9470AFC(v29, &qword_1EC3A4A70, &qword_1C96B05D0);
  (*(v13 + 8))(v21, v11);
  (*(v13 + 32))(v4 + OBJC_IVAR____TtC11WeatherCore24CoherenceContextProvider_storageURL, v25, v11);
  *(v4 + OBJC_IVAR____TtC11WeatherCore24CoherenceContextProvider_useTransientContext) = v30 & 1;
  return v4;
}

uint64_t type metadata accessor for DataProtectionInformationManager(uint64_t a1)
{
  result = qword_1EDB7B3C8;
  if (!qword_1EDB7B3C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C94A90BC(uint64_t a1)
{
  result = sub_1C96A4764();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t *sub_1C94A91A4(uint64_t a1, void *a2)
{
  v3 = v2;
  sub_1C96A5174();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_15_4();
  v50 = sub_1C96A65E4();
  OUTLINED_FUNCTION_1();
  v55 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14();
  v47 = v10 - v9;
  OUTLINED_FUNCTION_15_4();
  v11 = sub_1C96A7724();
  OUTLINED_FUNCTION_1();
  v54 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_14();
  v46 = v15 - v14;
  OUTLINED_FUNCTION_15_4();
  v16 = sub_1C96A5114();
  v17 = OUTLINED_FUNCTION_7(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_14();
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  v18 = OBJC_IVAR____TtC11WeatherCore32DataProtectionInformationManager_lock;
  sub_1C96A5104();
  sub_1C96A5134();
  swift_allocObject();
  *(v2 + v18) = sub_1C96A5124();
  v19 = (v2 + OBJC_IVAR____TtC11WeatherCore32DataProtectionInformationManager_deviceUUID);
  *v19 = 0;
  v19[1] = 0;
  *(v2 + OBJC_IVAR____TtC11WeatherCore32DataProtectionInformationManager_observers) = MEMORY[0x1E69E7CC0];
  *(v2 + OBJC_IVAR____TtC11WeatherCore32DataProtectionInformationManager_dataExpirationTime) = 0x417E133800000000;
  *(v2 + OBJC_IVAR____TtC11WeatherCore32DataProtectionInformationManager_updateTimeInterval) = 0x40F5180000000000;
  v20 = OBJC_IVAR____TtC11WeatherCore32DataProtectionInformationManager_storeURL;
  v21 = sub_1C96A4764();
  v51 = *(v21 - 8);
  v52 = v21;
  (*(v51 + 16))(v3 + v20, a1);
  v53 = a2;
  sub_1C9469B6C(a2, v3 + OBJC_IVAR____TtC11WeatherCore32DataProtectionInformationManager_coherenceContextProvider);
  sub_1C94A9950();
  sub_1C946F908(&qword_1EDB7CDC0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A68, &qword_1C96AA320);
  v49 = MEMORY[0x1E69E6328];
  sub_1C9469CB4(&qword_1EDB7CE50, &qword_1EC3A4A68, &qword_1C96AA320, MEMORY[0x1E69E6328]);
  sub_1C96A79E4();
  sub_1C96A6594();
  v22 = sub_1C96A7714();
  v23 = *(v55 + 8);
  v23(v47, v50);
  v24 = *(v54 + 8);
  v24(v46, v11);
  *(v3 + OBJC_IVAR____TtC11WeatherCore32DataProtectionInformationManager_notifyQueue) = v22;
  sub_1C96A79E4();
  sub_1C96A6594();
  v25 = sub_1C96A7714();
  v23(v47, v50);
  v24(v46, v11);
  *(v3 + OBJC_IVAR____TtC11WeatherCore32DataProtectionInformationManager_iCloudUpdateQueue) = v25;
  sub_1C946F908(&qword_1EDB7D098, MEMORY[0x1E69D6420], MEMORY[0x1E69D6428]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5350, &qword_1C96AD9E0);
  sub_1C9469CB4(&qword_1EDB7CE98, &unk_1EC3A5350, &qword_1C96AD9E0, v49);
  sub_1C96A79E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6540, &qword_1C96B77E0);
  swift_allocObject();
  v3[6] = sub_1C96A5544();
  v26 = sub_1C94A9994(a1);
  v27 = v3[2];
  v28 = v3[3];
  v3[2] = v26;
  v3[3] = v29;
  v3[4] = v30;
  v3[5] = v31;
  sub_1C94AA668(v27, v28);
  if (qword_1EDB7ABF8 != -1)
  {
    OUTLINED_FUNCTION_0_76(&qword_1EDB7ABF8);
  }

  v32 = sub_1C96A6154();
  __swift_project_value_buffer(v32, qword_1EDB7AC00);
  sub_1C96A3D04();
  v33 = sub_1C96A6134();
  v34 = sub_1C96A76A4();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v56 = v36;
    *v35 = 141558275;
    *(v35 + 4) = 1752392040;
    *(v35 + 12) = 2081;
    sub_1C94AA6AC(v3[2], v3[3], v3[4], v3[5]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6C88, &qword_1C96BAF58);
    v37 = sub_1C96A70A4();
    v39 = sub_1C9484164(v37, v38, &v56);

    *(v35 + 14) = v39;
    _os_log_impl(&dword_1C945E000, v33, v34, "Saved data protection data to file %{private,mask.hash}s", v35, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_26();
  }

  v40 = [objc_opt_self() defaultCenter];
  v41 = *MEMORY[0x1E696A9E8];
  sub_1C96A3D04();
  v42 = sub_1C94AA700();
  [v40 addObserver:v3 selector:sel_handleNSUbiquitousKeyValueStoreExternallyNotification_ name:v41 object:v42];

  v43 = sub_1C94AA700();
  [v43 synchronize];

  v44 = sub_1C94AA700();
  [v44 wc:0 synchronizeWithCompletionHandler:?];

  __swift_destroy_boxed_opaque_existential_1Tm(v53);
  (*(v51 + 8))(a1, v52);
  return v3;
}

unint64_t sub_1C94A9950()
{
  result = qword_1EDB7CDB0;
  if (!qword_1EDB7CDB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDB7CDB0);
  }

  return result;
}

uint64_t sub_1C94A9994(uint64_t a1)
{
  v2 = sub_1C96A4764();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v63 = (&v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v57 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v57 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v57 - v12;
  v14 = [objc_opt_self() defaultManager];
  v64 = a1;
  sub_1C96A4744();
  v15 = sub_1C96A7004();

  LODWORD(a1) = [v14 fileExistsAtPath_];

  v16 = 0;
  if (a1)
  {
    v62 = v10;
    if (qword_1EDB7ABF8 != -1)
    {
      swift_once();
    }

    v17 = sub_1C96A6154();
    v18 = __swift_project_value_buffer(v17, qword_1EDB7AC00);
    v19 = v64;
    v60 = *(v3 + 16);
    v61 = v3 + 16;
    v60(v13, v64, v2);
    v20 = sub_1C96A6134();
    v21 = sub_1C96A76A4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v58 = v18;
      v24 = v23;
      v65 = v23;
      *v22 = 141558275;
      *(v22 + 4) = 1752392040;
      *(v22 + 12) = 2081;
      v25 = sub_1C96A4744();
      v59 = v7;
      v26 = v2;
      v28 = v27;
      v29 = *(v3 + 8);
      v29(v13, v26);
      v30 = sub_1C9484164(v25, v28, &v65);
      v2 = v26;
      v7 = v59;

      *(v22 + 14) = v30;
      _os_log_impl(&dword_1C945E000, v20, v21, "Found local data protection store at %{private,mask.hash}s", v22, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x1CCA8E3D0](v24, -1, -1);
      v31 = v22;
      v19 = v64;
      MEMORY[0x1CCA8E3D0](v31, -1, -1);
    }

    else
    {

      v29 = *(v3 + 8);
      v29(v13, v2);
    }

    sub_1C96A4744();
    v32 = v62;
    sub_1C96A46D4();

    v33 = sub_1C96A47B4();
    v34 = v32;
    v36 = v35;
    v64 = v2;
    v29(v34, v2);
    sub_1C96A4184();
    swift_allocObject();
    sub_1C96A4174();
    sub_1C94AA1D8();
    sub_1C96A4154();
    v58 = v3 + 8;
    v59 = v33;
    v62 = v36;
    v63 = v29;

    v16 = v65;
    v38 = v66;
    v39 = v19;
    v40 = v67;
    v41 = v68;
    v42 = v64;
    v60(v7, v39, v64);
    sub_1C96A53C4();
    sub_1C96A53C4();
    v43 = sub_1C96A6134();
    v44 = sub_1C96A76A4();

    if (os_log_type_enabled(v43, v44))
    {
      v46 = swift_slowAlloc();
      LODWORD(v60) = v44;
      v47 = v7;
      v48 = v46;
      v61 = swift_slowAlloc();
      v68 = v41;
      v69[0] = v61;
      *v48 = 141558787;
      *(v48 + 4) = 1752392040;
      *(v48 + 12) = 2081;
      v65 = v16;
      v66 = v38;
      v67 = v40;
      sub_1C96A53C4();
      sub_1C96A53C4();
      v49 = sub_1C96A70A4();
      v51 = sub_1C9484164(v49, v50, v69);

      *(v48 + 14) = v51;
      *(v48 + 22) = 2160;
      *(v48 + 24) = 1752392040;
      *(v48 + 32) = 2081;
      v52 = sub_1C96A4744();
      v54 = v53;
      v63(v47, v42);
      v55 = sub_1C9484164(v52, v54, v69);

      *(v48 + 34) = v55;
      _os_log_impl(&dword_1C945E000, v43, v60, "DataProtectionEntry content: %{private,mask.hash}s, from file %{private,mask.hash}s", v48, 0x2Au);
      v56 = v61;
      swift_arrayDestroy();
      MEMORY[0x1CCA8E3D0](v56, -1, -1);
      MEMORY[0x1CCA8E3D0](v48, -1, -1);
      sub_1C9482F3C(v59, v62);
    }

    else
    {
      sub_1C9482F3C(v59, v62);

      v63(v7, v42);
    }
  }

  return v16;
}

unint64_t sub_1C94AA1D8()
{
  result = qword_1EDB7C190;
  if (!qword_1EDB7C190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7C190);
  }

  return result;
}

uint64_t sub_1C94AA22C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6958, &qword_1C96B94C0);
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v3);
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C94AA4DC();
  sub_1C96A7F44();
  if (!v1)
  {
    v4 = sub_1C96A7C84();
    sub_1C96A7C84();
    v6 = OUTLINED_FUNCTION_0_70();
    v7(v6);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v4;
}

uint64_t sub_1C94AA3EC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C94AA22C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

unint64_t sub_1C94AA430()
{
  result = qword_1EDB7C198;
  if (!qword_1EDB7C198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7C198);
  }

  return result;
}

unint64_t sub_1C94AA488()
{
  result = qword_1EDB7C1A0;
  if (!qword_1EDB7C1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7C1A0);
  }

  return result;
}

unint64_t sub_1C94AA4DC()
{
  result = qword_1EDB7C1A8[0];
  if (!qword_1EDB7C1A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDB7C1A8);
  }

  return result;
}

uint64_t sub_1C94AA538(char a1)
{
  if (a1)
  {
    return 0x746C615368736168;
  }

  else
  {
    return 0x5555656369766564;
  }
}

_BYTE *storeEnumTagSinglePayload for DataProtectionEntry.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1C94AA640);
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

uint64_t sub_1C94AA668(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void sub_1C94AA6AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    sub_1C96A53C4();

    sub_1C96A53C4();
  }
}

id sub_1C94AA734@<X0>(void *a1@<X8>)
{
  result = [objc_opt_self() wc_sharedInstance];
  *a1 = result;
  return result;
}

void *sub_1C94AA778(uint64_t a1, uint64_t a2)
{
  v14 = type metadata accessor for DataProtectionInformationManager(0);
  v15 = &off_1F4906618;
  v13[0] = a1;
  type metadata accessor for HashSaltProvider();
  v4 = swift_allocObject();
  v5 = __swift_mutable_project_boxed_opaque_existential_1(v13, v14);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = (&v13[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v8, v6);
  v10 = sub_1C94AA8B8(*v8, a2, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v13);
  return v10;
}

void *sub_1C94AA8B8(uint64_t a1, uint64_t a2, void *a3)
{
  v58 = a2;
  v56 = sub_1C96A4A94();
  v55 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v54 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1C96A5174();
  MEMORY[0x1EEE9AC00](v63);
  v62 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C96A7754();
  v60 = *(v8 - 8);
  v61 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v59 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C96A7724();
  MEMORY[0x1EEE9AC00](v10);
  v11 = sub_1C96A65E4();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = sub_1C96A5114();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v68[3] = sub_1C946B5D0(0, &qword_1EDB80340, 0x1E695E000);
  v68[4] = &protocol witness table for NSUserDefaults;
  v68[0] = a2;
  v66 = type metadata accessor for DataProtectionInformationManager(0);
  v67 = &off_1F4906618;
  v65[0] = a1;
  sub_1C96A5104();
  sub_1C96A5134();
  swift_allocObject();
  a3[8] = sub_1C96A5124();
  v57 = sub_1C946B5D0(0, &qword_1EDB7CDB0, 0x1E69E9610);
  sub_1C96A6594();
  *&v64[0] = MEMORY[0x1E69E7CC0];
  sub_1C946F998(&qword_1EDB7CDC0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A68, &qword_1C96AA320);
  v13 = MEMORY[0x1E69E6328];
  sub_1C9469CB4(&qword_1EDB7CE50, &qword_1EC3A4A68, &qword_1C96AA320, MEMORY[0x1E69E6328]);
  sub_1C96A79E4();
  (*(v60 + 104))(v59, *MEMORY[0x1E69E8090], v61);
  a3[9] = sub_1C96A7784();
  v14 = MEMORY[0x1E69E7CC0];
  a3[10] = MEMORY[0x1E69E7CC0];
  a3[13] = 0;
  a3[14] = 0;
  sub_1C9469B6C(v65, (a3 + 3));
  sub_1C9469B6C(v68, v64);
  v15 = swift_allocObject();
  sub_1C94670AC(v64, v15 + 16);
  *&v64[0] = v14;
  sub_1C946F998(&qword_1EDB7D098, MEMORY[0x1E69D6420], MEMORY[0x1E69D6428]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5350, &qword_1C96AD9E0);
  sub_1C9469CB4(&qword_1EDB7CE98, &unk_1EC3A5350, &qword_1C96AD9E0, v13);
  sub_1C96A79E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7E80, &qword_1C96C4370);
  swift_allocObject();
  a3[2] = sub_1C96A5544();
  v16 = sub_1C94AB2AC(0x5555656369766564, 0xEA00000000004449);
  if (v17)
  {
    v18 = v16;
    v19 = v17;
    if (qword_1EDB7ABF8 != -1)
    {
      swift_once();
    }

    v20 = sub_1C96A6154();
    __swift_project_value_buffer(v20, qword_1EDB7AC00);
    v21 = sub_1C96A6134();
    v22 = sub_1C96A76A4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1C945E000, v21, v22, "Found device uuid from store", v23, 2u);
      MEMORY[0x1CCA8E3D0](v23, -1, -1);
    }
  }

  else
  {
    v24 = v54;
    v25 = v55;
    v26 = v56;
    if (qword_1EDB7ABF8 != -1)
    {
      swift_once();
    }

    v27 = sub_1C96A6154();
    __swift_project_value_buffer(v27, qword_1EDB7AC00);
    v28 = sub_1C96A6134();
    v29 = sub_1C96A76A4();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1C945E000, v28, v29, "No device uuid found from store create a new one", v30, 2u);
      MEMORY[0x1CCA8E3D0](v30, -1, -1);
    }

    *&v64[0] = 0x5F454349564544;
    *(&v64[0] + 1) = 0xE700000000000000;
    sub_1C96A4A84();
    v31 = sub_1C96A4A64();
    v33 = v32;
    (*(v25 + 8))(v24, v26);
    MEMORY[0x1CCA8CB00](v31, v33);

    v19 = *(&v64[0] + 1);
    v18 = *&v64[0];
  }

  a3[11] = v18;
  a3[12] = v19;
  if (qword_1EDB7ABF8 != -1)
  {
    swift_once();
  }

  v34 = sub_1C96A6154();
  __swift_project_value_buffer(v34, qword_1EDB7AC00);
  sub_1C96A3D04();
  v35 = sub_1C96A6134();
  v36 = sub_1C96A76A4();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *&v64[0] = v38;
    *v37 = 136446210;
    v39 = a3[11];
    v40 = a3[12];
    sub_1C96A53C4();
    v41 = sub_1C9484164(v39, v40, v64);

    *(v37 + 4) = v41;
    _os_log_impl(&dword_1C945E000, v35, v36, "HashSaltProvider init with deviceUUID: %{public}s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    MEMORY[0x1CCA8E3D0](v38, -1, -1);
    MEMORY[0x1CCA8E3D0](v37, -1, -1);
  }

  v42 = a3[11];
  v43 = a3[12];
  sub_1C96A53C4();
  sub_1C94AB374(v42, v43);

  __swift_project_boxed_opaque_existential_1(v65, v66);
  v45 = a3[11];
  v44 = a3[12];
  sub_1C96A53C4();
  sub_1C94AB490(v45, v44);

  sub_1C94ABCEC(v46);
  if (sub_1C94ABF18())
  {
    v47 = __swift_project_boxed_opaque_existential_1(v65, v66);
    sub_1C95E386C(v47);
  }

  else
  {
    v48 = sub_1C96A6134();
    v49 = sub_1C96A76A4();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_1C945E000, v48, v49, "Device not sign into iCloud", v50, 2u);
      MEMORY[0x1CCA8E3D0](v50, -1, -1);
    }
  }

  v51 = *__swift_project_boxed_opaque_existential_1(v65, v66);
  v52 = sub_1C96A3D04();
  sub_1C94ABFB8(v52, v51);

  __swift_destroy_boxed_opaque_existential_1Tm(v68);
  __swift_destroy_boxed_opaque_existential_1Tm(v65);
  return a3;
}

uint64_t sub_1C94AB270()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1C94AB2AC(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C96A7004();
  v4 = [v2 objectForKey_];

  if (v4)
  {
    sub_1C96A79C4();
    swift_unknownObjectRelease();
    sub_1C946306C(&v6, v7);
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A90, &qword_1C96B0AA0);
  if (swift_dynamicCast())
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

void sub_1C94AB374(uint64_t a1, uint64_t a2)
{
  sub_1C96A53C4();
  sub_1C96A7E24();
  OUTLINED_FUNCTION_18_8();
  v2 = sub_1C96A7004();
  OUTLINED_FUNCTION_56_0(v2, sel_setObject_forKey_);
  swift_unknownObjectRelease();
}

void OUTLINED_FUNCTION_46_0()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0);

  JUMPOUT(0x1CCA8E3D0);
}

uint64_t OUTLINED_FUNCTION_46_2()
{

  return sub_1C96A7444();
}

id OUTLINED_FUNCTION_46_4(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

void OUTLINED_FUNCTION_46_5(uint64_t a1@<X8>)
{
  v6 = (v5 + v3);
  *v6 = v1;
  v6[1] = a1;
  v6[2] = v4 + 21;
  v6[3] = v2;
}

uint64_t sub_1C94AB490(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6C98, &unk_1C96BAF88);
  OUTLINED_FUNCTION_7(v6);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v47 - v8;
  v10 = type metadata accessor for DataProtectionValue(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v47 - v15;
  v17 = type metadata accessor for DataProtectionData(0);
  v18 = OUTLINED_FUNCTION_7(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_14();
  v21 = v20 - v19;
  v22 = *(v2 + OBJC_IVAR____TtC11WeatherCore32DataProtectionInformationManager_lock);
  sub_1C96A50E4();
  v23 = (v3 + OBJC_IVAR____TtC11WeatherCore32DataProtectionInformationManager_deviceUUID);
  *v23 = a1;
  v23[1] = a2;

  if (v3[3])
  {
    sub_1C96A53C4();
  }

  else
  {
    v50 = v22;
    v24 = qword_1EDB7ABF8;
    sub_1C96A53C4();
    if (v24 != -1)
    {
      OUTLINED_FUNCTION_0_76(&qword_1EDB7ABF8);
    }

    v25 = sub_1C96A6154();
    v49 = __swift_project_value_buffer(v25, qword_1EDB7AC00);
    v26 = sub_1C96A6134();
    v27 = sub_1C96A76A4();
    if (OUTLINED_FUNCTION_41(v27))
    {
      v28 = OUTLINED_FUNCTION_29();
      v48 = v21;
      *v28 = 0;
      OUTLINED_FUNCTION_1_35(&dword_1C945E000, v29, v30, "Attempt to get dataProtectionEntry from NSUbiquitousKeyValueStore");
      v21 = v48;
      OUTLINED_FUNCTION_26();
    }

    sub_1C95E8678(v21);
    v51 = a1;
    v52 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5120, &unk_1C96BAF70);
    sub_1C96A6C04();
    if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
    {
      sub_1C9470AFC(v9, &qword_1EC3A6C98, &unk_1C96BAF88);
      v31 = sub_1C96A6134();
      v32 = sub_1C96A76A4();
      if (OUTLINED_FUNCTION_41(v32))
      {
        v33 = OUTLINED_FUNCTION_29();
        *v33 = 0;
        _os_log_impl(&dword_1C945E000, v31, v24, "No data protection data from NSUbiquitousKeyValueStore for this device either", v33, 2u);
        OUTLINED_FUNCTION_26();
      }
    }

    else
    {
      sub_1C95EAFF8(v9, v16, type metadata accessor for DataProtectionValue);
      v48 = v16;
      sub_1C95EAF9C(v16, v13, type metadata accessor for DataProtectionValue);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5158, &unk_1C96ACD20);
      sub_1C96A66E4();
      v35 = v51;
      v34 = v52;
      sub_1C96A66E4();
      OUTLINED_FUNCTION_6_40();
      sub_1C95EAF44(v13, v36);
      v38 = v51;
      v37 = v52;
      v3[2] = v35;
      v3[3] = v34;
      v3[4] = v38;
      v3[5] = v37;
      sub_1C96A53C4();
      sub_1C96A53C4();
      v39 = OUTLINED_FUNCTION_11();
      sub_1C94AA668(v39, v40);
      v41 = sub_1C96A6134();
      v42 = sub_1C96A76A4();
      if (OUTLINED_FUNCTION_41(v42))
      {
        *OUTLINED_FUNCTION_29() = 0;
        OUTLINED_FUNCTION_1_35(&dword_1C945E000, v43, v44, "Found dataProtectionEntry from NSUbiquitousKeyValueStore, use it to update local data");
        OUTLINED_FUNCTION_26();
      }

      sub_1C95E2B70(v35, v34, v38, v37);

      OUTLINED_FUNCTION_6_40();
      sub_1C95EAF44(v48, v45);
    }

    sub_1C95EAF44(v21, type metadata accessor for DataProtectionData);
  }

  return sub_1C96A50F4();
}

uint64_t type metadata accessor for DataProtectionValue(uint64_t a1)
{
  result = qword_1EDB7C138;
  if (!qword_1EDB7C138)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C94AB8F0(uint64_t a1)
{
  sub_1C9494FB4(319, &qword_1EDB7CF38, MEMORY[0x1E69E6158], MEMORY[0x1E6995500]);
  if (v1 <= 0x3F)
  {
    sub_1C9494FB4(319, &qword_1EDB7ABC0, MEMORY[0x1E69E63B0], MEMORY[0x1E6995518]);
    if (v2 <= 0x3F)
    {
      sub_1C9495004(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t type metadata accessor for DataProtectionData(uint64_t a1)
{
  result = qword_1EDB7CA20;
  if (!qword_1EDB7CA20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C94ABA08(uint64_t a1)
{
  if (!qword_1EDB7AB98)
  {
    type metadata accessor for DataProtectionValue(255);
    sub_1C94ABB48(&qword_1EDB7C160, type metadata accessor for DataProtectionValue, &unk_1C96B2F40);
    v1 = sub_1C96A6BF4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDB7AB98);
    }
  }
}

void sub_1C94ABAC4(uint64_t a1)
{
  sub_1C94ABA08(319);
  if (v1 <= 0x3F)
  {
    sub_1C9495004(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C94ABB48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C94ABBC4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DataProtectionValue(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C94ABCEC(uint64_t a1)
{
  v2 = v1;
  sub_1C96A50E4();
  v3 = __swift_project_boxed_opaque_existential_1(v2 + 3, v2[6]);
  sub_1C94ABEC0(v3);
  if (v6)
  {
    v7 = v4;
    v8 = v5;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  OUTLINED_FUNCTION_113((v2 + 13), v19);
  v2[13] = v7;
  v2[14] = v8;

  if (qword_1EDB7ABF8 != -1)
  {
    OUTLINED_FUNCTION_0_76(&qword_1EDB7ABF8);
  }

  v9 = sub_1C96A6154();
  __swift_project_value_buffer(v9, qword_1EDB7AC00);
  sub_1C96A3D04();
  v10 = sub_1C96A6134();
  v11 = sub_1C96A76A4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v18 = v13;
    *v12 = 141558275;
    *(v12 + 4) = 1752392040;
    *(v12 + 12) = 2081;
    sub_1C96A53C4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A6430, &qword_1C96AC0D0);
    v14 = sub_1C96A70A4();
    v16 = sub_1C9484164(v14, v15, &v18);

    *(v12 + 14) = v16;
    _os_log_impl(&dword_1C945E000, v10, v11, "Read salt from store: %{private,mask.hash}s", v12, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_26();
  }

  return sub_1C96A50F4();
}

uint64_t sub_1C94ABEC0(uint64_t a1)
{
  sub_1C96A50E4();
  v1 = OUTLINED_FUNCTION_13_31();
  sub_1C94AA6AC(v1, v2, v3, v4);
  sub_1C96A50F4();
  return OUTLINED_FUNCTION_13_31();
}

BOOL sub_1C94ABF18()
{
  v0 = [objc_opt_self() account];
  v1 = v0;
  if (v0)
  {
  }

  return v1 != 0;
}

uint64_t sub_1C94ABFB8(uint64_t a1, uint64_t a2)
{
  sub_1C96A50E4();
  v3 = OBJC_IVAR____TtC11WeatherCore32DataProtectionInformationManager_observers;
  swift_beginAccess();
  v4 = *(a2 + v3);
  v10 = MEMORY[0x1E69E7CC0];
  v5 = sub_1C946D04C();
  result = sub_1C96A53C4();
  for (i = 0; ; ++i)
  {
    if (v5 == i)
    {

      *(a2 + v3) = v10;

      type metadata accessor for DataProtectionInformationManagerObserverProxy();
      v8 = swift_allocObject();
      *(v8 + 24) = 0;
      swift_unknownObjectWeakInit();
      *(v8 + 24) = &off_1F490ADD0;
      swift_unknownObjectWeakAssign();
      v9 = swift_beginAccess();
      MEMORY[0x1CCA8CC10](v9);
      sub_1C94AC1D4(*((*(a2 + v3) & 0xFFFFFFFFFFFFFF8) + 0x10));
      sub_1C96A7314();
      swift_endAccess();
      return sub_1C96A50F4();
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1CCA8D440](i, v4);
    }

    else
    {
      if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      result = sub_1C96A3D04();
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      sub_1C96A7B14();
      sub_1C96A7B34();
      sub_1C96A7B44();
      result = sub_1C96A7B24();
    }

    else
    {
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1C94AC1DC(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_1C96A72F4();
  }

  return result;
}

uint64_t sub_1C94AC22C(void *a1, void *a2, void *a3, void *a4, char a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5090, &qword_1C96AD060);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v22[-1] - v11;
  type metadata accessor for NotificationSubscriptionManager();
  v13 = swift_allocObject();
  v22[3] = sub_1C946B5D0(0, &qword_1EDB80340, 0x1E695E000);
  v22[4] = &protocol witness table for NSUserDefaults;
  v22[0] = a3;
  v21 = a3;
  swift_defaultActor_initialize();
  *(v13 + 112) = MEMORY[0x1E69E7CC0];
  *(v13 + 240) = 1;
  sub_1C946B5D0(0, &unk_1EDB7CD20, 0x1E69E9BF8);
  *(v13 + 248) = sub_1C96A7904();
  *(v13 + 256) = 1;
  *(v13 + 272) = 0;
  *(v13 + 280) = 0;
  *(v13 + 264) = 0;
  *(v13 + 288) = 0x80;
  *(v13 + 344) = 0;
  sub_1C9469B6C(a1, v13 + 120);
  sub_1C9469B6C(a2, v13 + 160);
  sub_1C9469B6C(v22, v13 + 200);
  sub_1C9469B6C(a4, v13 + 296);
  *(v13 + 336) = a5;
  v14 = a4[3];
  v15 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v14);
  v16 = *(v15 + 32);
  v17 = sub_1C96A3D04();
  v16(v17, &protocol witness table for NotificationSubscriptionManager, v14, v15);

  v18 = sub_1C96A7414();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v13;
  sub_1C96A3D04();
  sub_1C951C258();

  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  return v13;
}

uint64_t sub_1C94AC4C0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t HashSaltProvider.addObserver(_:)(uint64_t a1, uint64_t a2)
{
  sub_1C96A50E4();
  OUTLINED_FUNCTION_113(v2 + 80, v11);
  v3 = *(v2 + 80);
  v10 = MEMORY[0x1E69E7CC0];
  v4 = sub_1C946D04C();
  result = sub_1C96A53C4();
  for (i = 0; ; ++i)
  {
    if (v4 == i)
    {

      *(v2 + 80) = v10;

      type metadata accessor for HashSaltProviderObserverProxy();
      OUTLINED_FUNCTION_54();
      swift_allocObject();
      v7 = swift_unknownObjectRetain();
      sub_1C94AC734(v7, a2);
      v8 = swift_beginAccess();
      MEMORY[0x1CCA8CC10](v8);
      sub_1C94AC1D4(*((*(v2 + 80) & 0xFFFFFFFFFFFFFF8) + 0x10));
      sub_1C96A7314();
      swift_endAccess();
      return sub_1C96A50F4();
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1CCA8D440](i, v3);
    }

    else
    {
      if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      result = sub_1C96A3D04();
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      sub_1C96A7B14();
      sub_1C96A7B34();
      sub_1C96A7B44();
      result = sub_1C96A7B24();
    }

    else
    {
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1C94AC734(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_1C94AC78C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_8_1();
  (*(v4 + 8))(a1);
  return a1;
}

void *NotificationsManagerProxy.init()()
{
  v1 = sub_1C96A5114();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1C96A5104();
  sub_1C96A5134();
  swift_allocObject();
  v2 = sub_1C96A5124();
  v0[3] = 0;
  v0[4] = 0;
  v0[2] = v2;
  return v0;
}

uint64_t sub_1C94AC8AC()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_60();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_17_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_4(v1);

  return v4(v3);
}

id sub_1C94AC93C@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for PredictedLocationsServiceProxy();
  result = [objc_allocWithZone(v2) init];
  a1[3] = v2;
  a1[4] = &off_1F49078C0;
  *a1 = result;
  return result;
}

uint64_t sub_1C94AC988()
{
  OUTLINED_FUNCTION_30();
  v1 = v0;
  v7 = (v2 + *v2);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_17_1(v3);
  *v4 = v5;
  v4[1] = sub_1C94B0CF0;

  return v7(v1);
}

uint64_t sub_1C94ACA98()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_82_0();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_17_1(v2);
  *v3 = v4;
  v3[1] = sub_1C94B0C0C;
  v5 = OUTLINED_FUNCTION_21_8();

  return sub_1C94ACBA0(v5, v6, v1, v0);
}

uint64_t OUTLINED_FUNCTION_69_3()
{
}

id sub_1C94ACBBC()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_1C94ACBF4()
{
  OUTLINED_FUNCTION_30();
  if (qword_1EDB7AC88 != -1)
  {
    OUTLINED_FUNCTION_4_14(&qword_1EDB7AC88);
  }

  v1 = sub_1C96A6154();
  *(v0 + 24) = __swift_project_value_buffer(v1, qword_1EDB7AC90);
  v2 = sub_1C96A6134();
  v3 = sub_1C96A76A4();
  if (OUTLINED_FUNCTION_41(v3))
  {
    v4 = OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_47(v4);
    OUTLINED_FUNCTION_16_4();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_38_0();
  }

  v10 = OUTLINED_FUNCTION_90_0();

  return MEMORY[0x1EEE6DFA0](v10, v11, 0);
}

uint64_t OUTLINED_FUNCTION_86_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
}

uint64_t sub_1C94ACD20()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5090, &qword_1C96AD060);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10 - v2;
  if (*(v0 + 344))
  {
    v4 = *(v0 + 344);
  }

  else
  {
    v5 = sub_1C96A7414();
    __swift_storeEnumTagSinglePayload(v3, 1, 1, v5);
    v6 = sub_1C94ACEF0();
    v7 = swift_allocObject();
    v7[2] = v0;
    v7[3] = v6;
    v7[4] = v0;
    swift_retain_n();
    sub_1C951C258();
    v4 = v8;
    *(v0 + 344) = v8;
    sub_1C96A3D04();
  }

  sub_1C96A3D04();
  return v4;
}

uint64_t sub_1C94ACE44()
{
  OUTLINED_FUNCTION_18();
  v1 = sub_1C94ACD20();
  *(v0 + 32) = v1;
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_1C94B0FDC;
  v3 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DA40](v2, v1, v3);
}

unint64_t sub_1C94ACEF0()
{
  result = qword_1EDB7B5B0;
  if (!qword_1EDB7B5B0)
  {
    type metadata accessor for NotificationSubscriptionManager();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7B5B0);
  }

  return result;
}

uint64_t Debouncer.init(interval:queue:)(uint64_t a1, double a2)
{
  v5 = sub_1C96A5114();
  MEMORY[0x1EEE9AC00](v5 - 8);
  *(v2 + 32) = 0;
  sub_1C96A5104();
  sub_1C96A5134();
  swift_allocObject();
  *(v2 + 40) = sub_1C96A5124();
  *(v2 + 16) = a2;
  *(v2 + 24) = a1;
  return v2;
}

uint64_t sub_1C94AD074(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  return sub_1C96A3D04();
}

uint64_t sub_1C94AD0C0()
{
  v0 = sub_1C96A4F24();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1C96A4F34();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EDB80020 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_1EDB80028);
  (*(v5 + 16))(v7, v8, v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  v10[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4BD0, &unk_1C96B1390);
  swift_allocObject();
  result = sub_1C96A4F74();
  qword_1EDB7AA20 = result;
  return result;
}

uint64_t sub_1C94AD2C4()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_82_0();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_17_1(v2);
  *v3 = v4;
  v3[1] = sub_1C94B0CEC;
  v5 = OUTLINED_FUNCTION_21_8();

  return sub_1C94AD4D0(v5, v6, v1, v0);
}

uint64_t sub_1C94AD35C()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_10_7((*(v0 + 176) + 160));
  OUTLINED_FUNCTION_12_3();
  v1 = swift_task_alloc();
  *(v0 + 184) = v1;
  *v1 = v0;
  v1[1] = sub_1C94AD830;
  OUTLINED_FUNCTION_79_0();

  return v2();
}

uint64_t sub_1C94AD4F0(uint64_t a1, uint64_t a2)
{
  sub_1C94AD768(a1, a2);
  v3 = *(v2 + 8);

  return v3();
}

uint64_t NotificationsOptInManager.init()()
{
  v1 = [objc_opt_self() standardUserDefaults];
  *(v0 + 16) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6330, &qword_1C96B5620);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C96AE890;
  *(inited + 32) = 0xD000000000000024;
  *(inited + 40) = 0x80000001C96D2670;
  v3 = MEMORY[0x1E69E6530];
  *(inited + 48) = 0;
  *(inited + 72) = v3;
  *(inited + 80) = 0xD000000000000028;
  *(inited + 88) = 0x80000001C96D26A0;
  v4 = v1;
  v5 = sub_1C96A6F04();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6338, &qword_1C96B5628);
  *(inited + 96) = v5;
  *(inited + 120) = v6;
  *(inited + 128) = 0xD000000000000025;
  *(inited + 136) = 0x80000001C96D26D0;
  *(inited + 144) = 0;
  OUTLINED_FUNCTION_3_32();
  *(inited + 168) = v7;
  *(inited + 176) = 0xD000000000000028;
  *(inited + 184) = v8;
  *(inited + 192) = 0;
  OUTLINED_FUNCTION_3_32();
  *(inited + 216) = v9;
  *(inited + 224) = 0xD000000000000034;
  *(inited + 232) = v10;
  *(inited + 240) = 0;
  OUTLINED_FUNCTION_3_32();
  *(inited + 264) = v11;
  *(inited + 272) = 0xD00000000000002ALL;
  *(inited + 280) = v12;
  *(inited + 288) = 0;
  OUTLINED_FUNCTION_3_32();
  *(inited + 312) = v13;
  *(inited + 320) = 0xD00000000000002CLL;
  *(inited + 360) = v3;
  *(inited + 328) = v14;
  *(inited + 336) = 0;
  sub_1C96A6F04();
  v15 = sub_1C96A6EC4();

  [v4 registerDefaults_];

  return v0;
}

uint64_t sub_1C94AD768(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C94AD800();
  v5 = *(*(v2 + 64) + 16);
  sub_1C94AD818(v5);
  v6 = *(v2 + 64);
  *(v6 + 16) = v5 + 1;
  v7 = v6 + 16 * v5;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  *(v2 + 64) = v6;
  swift_endAccess();
  return swift_unknownObjectRetain();
}

uint64_t sub_1C94AD830()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C94AD928()
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_10_7((*(v0 + 176) + 120));
  OUTLINED_FUNCTION_12_3();
  v1 = swift_task_alloc();
  *(v0 + 192) = v1;
  *v1 = v0;
  v1[1] = sub_1C94ADB38;
  OUTLINED_FUNCTION_79_0();

  return v2();
}

uint64_t sub_1C94ADA40(uint64_t a1, uint64_t a2)
{
  LegacyNotificationSubscriptionManager.addObserver(_:)(a1, a2);
  v3 = *(v2 + 8);

  return v3();
}

uint64_t LegacyNotificationSubscriptionManager.addObserver(_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1C94AD800();
  v5 = *(*(v2 + 24) + 16);
  sub_1C94AD818(v5);
  v6 = *(v2 + 24);
  *(v6 + 16) = v5 + 1;
  v7 = v6 + 16 * v5;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  *(v2 + 24) = v6;
  swift_endAccess();
  return swift_unknownObjectRetain();
}

uint64_t sub_1C94ADB38()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_1C94ADC30()
{
  OUTLINED_FUNCTION_19_3();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_8_7(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_6_5();
    if (v3)
    {
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4CF0, &unk_1C96AD400);
      v8 = OUTLINED_FUNCTION_24_1(v7);
      _swift_stdlib_malloc_size(v8);
      OUTLINED_FUNCTION_11_2();
      v8[2] = v2;
      v8[3] = v9;
      if (v1)
      {
LABEL_8:
        v10 = OUTLINED_FUNCTION_9_4();
        sub_1C94B9454(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4CF8, &qword_1C96AAE28);
    OUTLINED_FUNCTION_13_2();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_18_5();
  if (!v5)
  {
    OUTLINED_FUNCTION_7_6();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_1C94ADCF0()
{
  OUTLINED_FUNCTION_18();
  if (*(*(v0 + 176) + 336) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 200) = v1;
    *v1 = v0;
    v1[1] = sub_1C94B0464;

    return NotificationSubscriptionManager.migrateSubscriptionIfNeeded()();
  }

  else
  {
    OUTLINED_FUNCTION_17();

    return v3();
  }
}

uint64_t NotificationSubscriptionManager.migrateSubscriptionIfNeeded()()
{
  OUTLINED_FUNCTION_18();
  v1[2] = v0;
  v2 = sub_1C96A60A4();
  v1[3] = v2;
  OUTLINED_FUNCTION_9(v2);
  v1[4] = v3;
  v1[5] = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_15_7();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C94ADE64()
{
  OUTLINED_FUNCTION_30();
  v1 = *(v0[2] + 248);
  v0[6] = v1;
  v2 = v1;
  sub_1C96A6084();
  sub_1C96A77F4();
  sub_1C96A6074();
  v0[7] = sub_1C94ADF48();
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_1C94AFA38;

  return sub_1C94AE39C();
}

id sub_1C94ADF48()
{
  v19[1] = *MEMORY[0x1E69E9840];
  sub_1C946B5D0(0, &qword_1EDB7AB20, 0x1E69C7560);
  v0 = sub_1C94AE264(0xD000000000000010, 0x80000001C96CDFD0);
  v1 = [objc_opt_self() currentProcess];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5390, &qword_1C96AD420);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C96ACFF0;
  *(v2 + 32) = v0;
  objc_allocWithZone(MEMORY[0x1E69C7548]);
  v3 = v0;
  v4 = sub_1C94AE2F4(0xD00000000000002CLL, 0x80000001C96CDFF0, v1, v2);
  v19[0] = 0;
  if ([v4 acquireWithError_])
  {
    v5 = v19[0];
  }

  else
  {
    v6 = v19[0];
    v7 = sub_1C96A4584();

    swift_willThrow();
    if (qword_1EDB7AC88 != -1)
    {
      swift_once();
    }

    v8 = sub_1C96A6154();
    __swift_project_value_buffer(v8, qword_1EDB7AC90);
    v9 = v7;
    v10 = sub_1C96A6134();
    v11 = sub_1C96A7684();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19[0] = v13;
      *v12 = 136446210;
      v14 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5380, &qword_1C96AA2F0);
      v15 = sub_1C96A70C4();
      v17 = sub_1C9484164(v15, v16, v19);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_1C945E000, v10, v11, "failed to perform notification subscriptions data migration. error=%{public}s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v13);
      MEMORY[0x1CCA8E3D0](v13, -1, -1);
      MEMORY[0x1CCA8E3D0](v12, -1, -1);
    }

    [v4 invalidate];
    return 0;
  }

  return v4;
}

id sub_1C94AE264(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C96A7004();

  OUTLINED_FUNCTION_38();
  v3 = sub_1C96A7004();

  v4 = [swift_getObjCClassFromMetadata() attributeWithDomain:v2 name:v3];

  return v4;
}

id sub_1C94AE2F4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = sub_1C96A7004();

  sub_1C946B5D0(0, &qword_1EDB7AB50, 0x1E69C7550);
  v7 = sub_1C96A7294();

  v8 = [v4 initWithExplanation:v6 target:a3 attributes:v7];

  return v8;
}

uint64_t sub_1C94AE39C()
{
  v1[12] = v0;
  v2 = type metadata accessor for NotificationSubscription(0);
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C94AEA04, v0, 0);
}

void sub_1C94AE4B8(uint64_t a1)
{
  type metadata accessor for NotificationSubscription.Location(319);
  if (v1 <= 0x3F)
  {
    sub_1C94AE54C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C94AE54C()
{
  if (!qword_1EDB7AB60)
  {
    v0 = sub_1C96A7934();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDB7AB60);
    }
  }
}

uint64_t sub_1C94AE59C(uint64_t a1)
{
  v14 = sub_1C96A7754();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14();
  v7 = v6 - v5;
  v8 = sub_1C96A7724();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14();
  v9 = sub_1C96A65E4();
  MEMORY[0x1EEE9AC00](v9 - 8);
  OUTLINED_FUNCTION_14();
  v10 = sub_1C96A5114();
  MEMORY[0x1EEE9AC00](v10 - 8);
  OUTLINED_FUNCTION_14();
  *(v1 + 24) = 3;
  *(v1 + 32) = MEMORY[0x1E69E7CC0];
  sub_1C96A5104();
  sub_1C96A5134();
  swift_allocObject();
  *(v1 + 40) = sub_1C96A5124();
  sub_1C94A9950();
  sub_1C96A6594();
  sub_1C9469BD0(&qword_1EDB7CDC0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A68, &qword_1C96AA320);
  sub_1C9469C60(&qword_1EDB7CE50, &qword_1EC3A4A68, &qword_1C96AA320);
  sub_1C96A79E4();
  v11 = *MEMORY[0x1E69E8090];
  v12 = *(v3 + 104);
  v12(v7, v11, v14);
  *(v1 + 48) = OUTLINED_FUNCTION_2_27(0xD000000000000042, 0x80000001C96CF2F0);
  sub_1C96A65A4();
  sub_1C96A79E4();
  v12(v7, v11, v14);
  *(v1 + 56) = OUTLINED_FUNCTION_2_27(0xD000000000000050, 0x80000001C96CF340);
  *(v1 + 16) = a1;
  return v1;
}

uint64_t sub_1C94AE8E8()
{
  v1 = v0[28];
  v2 = v0[29];
  __swift_project_boxed_opaque_existential_1(v0 + 25, v1);
  (*(v2 + 8))(&v4, 0xD00000000000001ELL, 0x80000001C96CDFB0, MEMORY[0x1E69E63B0], v1, v2);
  return v4;
}

uint64_t sub_1C94AE970@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for StubPPTWeatherDataManager();
  result = sub_1C96A5264();
  if (result)
  {
    v4 = result;
    result = sub_1C94AF5F4(&qword_1EC3A7B98, type metadata accessor for StubPPTWeatherDataManager, &protocol conformance descriptor for StubPPTWeatherDataManager);
    *a2 = v4;
    a2[1] = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C94AEA04()
{
  v46 = v1;
  v2 = COERCE_DOUBLE(sub_1C94AE8E8());
  if ((v3 & 1) == 0 && v2 == 2.0)
  {
    if (qword_1EDB7AC88 != -1)
    {
      OUTLINED_FUNCTION_4_14(&qword_1EDB7AC88);
    }

    v4 = sub_1C96A6154();
    __swift_project_value_buffer(v4, qword_1EDB7AC90);
    v5 = sub_1C96A6134();
    v6 = sub_1C96A76A4();
    if (OUTLINED_FUNCTION_14_7(v6))
    {
      v7 = OUTLINED_FUNCTION_9_8();
      v8 = OUTLINED_FUNCTION_8_4();
      v45 = v8;
      *v7 = 136446210;
      v9 = sub_1C96A7514();
      v11 = sub_1C9484164(v9, v10, &v45);

      *(v7 + 4) = v11;
      OUTLINED_FUNCTION_69();
      _os_log_impl(v12, v13, v14, v15, v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      OUTLINED_FUNCTION_40();
      OUTLINED_FUNCTION_26();
    }

    v16 = v1[12];
    *(v16 + 240) = 0;
    v17 = *(v16 + 256);
    v18 = *(v16 + 264);
    v19 = *(v16 + 272);
    v20 = *(v16 + 280);
    *(v16 + 256) = 0u;
    *(v16 + 272) = 0u;
    v21 = *(v16 + 288);
    *(v16 + 288) = 0;
    sub_1C94AF5A0(v17, v18, v19, v20, v21);
    v22 = swift_task_alloc();
    v1[18] = v22;
    *v22 = v1;
    v23 = sub_1C94AF8BC;
LABEL_8:
    v22[1] = v23;

    return sub_1C94AF63C();
  }

  v25 = COERCE_DOUBLE(sub_1C94AE8E8());
  if ((v26 & 1) == 0 && v25 != 2.0)
  {
    if (qword_1EDB7AC88 != -1)
    {
      OUTLINED_FUNCTION_4_14(&qword_1EDB7AC88);
    }

    v31 = sub_1C96A6154();
    __swift_project_value_buffer(v31, qword_1EDB7AC90);
    v32 = sub_1C96A6134();
    v33 = sub_1C96A76A4();
    if (OUTLINED_FUNCTION_14_7(v33))
    {
      v34 = OUTLINED_FUNCTION_102();
      v45 = swift_slowAlloc();
      *v34 = 136446466;
      v35 = sub_1C96A7514();
      v37 = sub_1C9484164(v35, v36, &v45);

      *(v34 + 4) = v37;
      *(v34 + 12) = 2080;
      v38 = sub_1C96A7514();
      v40 = sub_1C9484164(v38, v39, &v45);

      *(v34 + 14) = v40;
      OUTLINED_FUNCTION_69();
      _os_log_impl(v41, v42, v43, v44, v34, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_40();
      OUTLINED_FUNCTION_26();
    }

    *(v1[12] + 240) = 0;
    v22 = swift_task_alloc();
    v1[19] = v22;
    *v22 = v1;
    v23 = sub_1C951EB3C;
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_19_7((v1[12] + 120));
  OUTLINED_FUNCTION_75_1();
  *(v0 + 16) = v27;
  OUTLINED_FUNCTION_9_11();
  v28 = swift_task_alloc();
  v1[20] = v28;
  *v28 = v1;
  v29 = OUTLINED_FUNCTION_8_11(v28);

  return v30(v29);
}

void *StubPPTWeatherDataManager.init()()
{
  sub_1C96A50D4();
  sub_1C96A50C4();
  OUTLINED_FUNCTION_8_3();
  *(v0 + 24) = v1;
  *(v0 + 32) = 0xD00000000000007ALL;
  *(v0 + 40) = v2;
  type metadata accessor for StubWeatherDataBuilder(0);
  swift_allocObject();
  *(v0 + 48) = sub_1C94AF30C();
  sub_1C96A4204();
  swift_allocObject();
  *(v0 + 56) = sub_1C96A41F4();
  *(v0 + 72) = 32123;
  *(v0 + 80) = 0xE200000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7138, &qword_1C96BD000);
  swift_allocObject();
  *(v0 + 88) = sub_1C96A55B4();
  OUTLINED_FUNCTION_8_38();
  *(v0 + 96) = sub_1C96A55B4();
  OUTLINED_FUNCTION_8_38();
  *(v0 + 104) = sub_1C96A55B4();
  sub_1C96A4EE4();
  sub_1C96A4EC4();
  if (qword_1EDB7FD10 != -1)
  {
    swift_once();
  }

  sub_1C96A4EB4();

  *(v0 + 16) = 0;
  sub_1C96A4EC4();
  if (qword_1EDB7A968 != -1)
  {
    swift_once();
  }

  sub_1C96A4EB4();

  *(v0 + 64) = 0;
  return v0;
}

void *sub_1C94AF024(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4B70, &unk_1C96AAAD0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

void *sub_1C94AF094(uint64_t a1, unint64_t a2)
{
  v3 = sub_1C94B2190(a1, a2);
  sub_1C94AF12C(&unk_1F48FA998);
  return v3;
}

uint64_t type metadata accessor for StubWeatherDataBuilder(uint64_t a1)
{
  result = qword_1EDB7A800;
  if (!qword_1EDB7A800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C94AF12C(uint64_t result)
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

    result = sub_1C94F7038(result, v7, 1, v3);
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

uint64_t sub_1C94AF210(uint64_t a1)
{
  result = sub_1C96A5AD4();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_85_1()
{

  return sub_1C96A4DF4();
}

uint64_t sub_1C94AF30C()
{
  *(v0 + 16) = xmmword_1C96C0380;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 32) = 60;
  *(v0 + 40) = v1;
  *(v0 + 48) = v1;
  *(v0 + 56) = v1;
  *(v0 + 64) = xmmword_1C96C0390;
  *(v0 + 80) = 0;
  v2 = OBJC_IVAR____TtC11WeatherCore22StubWeatherDataBuilder_currentWeatherCondition;
  v3 = *MEMORY[0x1E69E1848];
  v4 = sub_1C96A5AD4();
  (*(*(v4 - 8) + 104))(v0 + v2, v3, v4);
  v5 = v0 + OBJC_IVAR____TtC11WeatherCore22StubWeatherDataBuilder_aqiScaleName;
  strcpy((v0 + OBJC_IVAR____TtC11WeatherCore22StubWeatherDataBuilder_aqiScaleName), "EPA_NowCast.1");
  *(v5 + 14) = -4864;
  *(v0 + OBJC_IVAR____TtC11WeatherCore22StubWeatherDataBuilder____lazy_storage___nextDays) = 0;
  *(v0 + OBJC_IVAR____TtC11WeatherCore22StubWeatherDataBuilder____lazy_storage___nextHours) = 0;
  *(v0 + OBJC_IVAR____TtC11WeatherCore22StubWeatherDataBuilder____lazy_storage___nextMinutes) = 0;
  return v0;
}

uint64_t sub_1C94AF408()
{
  v0 = sub_1C96A4F24();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14();
  v6 = v5 - v4;
  sub_1C96A4F34();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14();
  (*(v10 + 104))(v9 - v8, *MEMORY[0x1E69D6EA0]);
  (*(v2 + 104))(v6, *MEMORY[0x1E69D6E88], v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4BD0, &unk_1C96B1390);
  swift_allocObject();
  result = sub_1C96A4F74();
  qword_1EDB7A970 = result;
  return result;
}

uint64_t sub_1C94AF5A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 0xC0) == 0x40)
  {
  }

  return result;
}

uint64_t sub_1C94AF5F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C94AF65C()
{
  v24 = v0;
  v1 = *(v0 + 40);
  OUTLINED_FUNCTION_84(v1 + 112, v0 + 16);
  v14 = *(*(v1 + 112) + 16);
  result = sub_1C96A53C4();
  v3 = 0;
  v15 = result;
  v4 = (result + 40);
  while (v14 != v3)
  {
    if (v3 >= *(v15 + 16))
    {
      __break(1u);
      return result;
    }

    v17 = v4;
    v18 = v3 + 1;
    v5 = *v4;
    ObjectType = swift_getObjectType();
    v6 = *(v1 + 264);
    v7 = *(v1 + 272);
    v8 = *(v1 + 280);
    v9 = *(v1 + 288);
    v19 = *(v1 + 256);
    v20 = v6;
    v21 = v7;
    v22 = v8;
    v23 = v9;
    v10 = *(v5 + 24);
    swift_unknownObjectRetain();
    v11 = OUTLINED_FUNCTION_95_0();
    sub_1C9524A7C(v11, v12, v7, v8, v9);
    v10(&v19, ObjectType, v5);
    swift_unknownObjectRelease();
    result = sub_1C94AF5A0(v19, v20, v21, v22, v23);
    v3 = v18;
    v4 = v17 + 2;
  }

  OUTLINED_FUNCTION_17();

  return v13();
}

uint64_t sub_1C94AF7BC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t OUTLINED_FUNCTION_71_0(void *a1)
{
  v2 = __swift_project_boxed_opaque_existential_1(a1, v1);

  return MEMORY[0x1EEE6BEA8](v2, v1, 1);
}

unint64_t OUTLINED_FUNCTION_71_3(uint64_t a1, unint64_t a2)
{

  return sub_1C9484164(a1, a2, (v2 - 120));
}

uint64_t sub_1C94AF864(uint64_t a1, uint64_t a2)
{
  result = sub_1C94AF7BC(&qword_1EC3A7150, a2, type metadata accessor for StubPPTWeatherDataManager, &protocol conformance descriptor for StubPPTWeatherDataManager);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C94AF8BC()
{
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_64_1();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  OUTLINED_FUNCTION_91_0();

  OUTLINED_FUNCTION_45_1();

  return v3();
}

uint64_t OUTLINED_FUNCTION_84_2()
{
}

uint64_t sub_1C94AFA38()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

Swift::Void __swiftcall StubPPTWeatherDataManager.setupStubData()()
{
  v0 = sub_1C96A5AD4();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14();
  v6 = v5 - v4;
  (*(v2 + 104))(v5 - v4, *MEMORY[0x1E69E1848], v0);
  StubPPTWeatherDataManager.setupStubData(for:)(v6);
  (*(v2 + 8))(v6, v0);
  sub_1C94B1278();
}

void StubPPTWeatherDataManager.setupStubData(for:)(uint64_t a1)
{
  v2 = v1;
  v62 = a1;
  v3 = sub_1C96A5AD4();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v60 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v7;
  v8 = sub_1C96A41C4();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_14();
  v14 = v13 - v12;
  sub_1C94B055C(0, 0xF000000000000000);
  sub_1C94B081C(0, 0xF000000000000000);
  sub_1C94B0888(0, 0xF000000000000000);
  if (qword_1EDB7ACB0 != -1)
  {
    OUTLINED_FUNCTION_1_59(&qword_1EDB7ACB0);
  }

  v15 = sub_1C96A6154();
  __swift_project_value_buffer(v15, qword_1EDB7ACB8);
  v16 = sub_1C96A6134();
  v17 = sub_1C96A76A4();
  if (OUTLINED_FUNCTION_21(v17))
  {
    v18 = OUTLINED_FUNCTION_29();
    *v18 = 0;
    OUTLINED_FUNCTION_69();
    _os_log_impl(v19, v20, v21, v22, v18, 2u);
    OUTLINED_FUNCTION_26();
  }

  v23 = *(v2 + 16);
  if ((v23 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v23 >> 16)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v24 = *(v2 + 24);
  sub_1C96A5094();
  (*(v10 + 104))(v14, *MEMORY[0x1E6967FA8], v8);
  sub_1C96A41D4();
  v25 = sub_1C96A6134();
  v26 = sub_1C96A76A4();
  if (OUTLINED_FUNCTION_21(v26))
  {
    v27 = OUTLINED_FUNCTION_29();
    *v27 = 0;
    OUTLINED_FUNCTION_69();
    _os_log_impl(v28, v29, v30, v31, v27, 2u);
    OUTLINED_FUNCTION_26();
  }

  v59 = *(v2 + 48);
  v32 = v59;
  v33 = OBJC_IVAR____TtC11WeatherCore22StubWeatherDataBuilder_currentWeatherCondition;
  swift_beginAccess();
  v34 = v62;
  (*(v5 + 24))(v32 + v33, v62, v3);
  swift_endAccess();
  *(v32 + 81) = *(v2 + 64);
  OUTLINED_FUNCTION_23_0();
  v35 = swift_allocObject();
  OUTLINED_FUNCTION_10_35(v35);
  sub_1C96A3D04();
  sub_1C96A5084();

  v36 = *(v2 + 40);
  v58 = *(v2 + 32);
  v56 = 0x80000001C96D4870;
  v57 = v36;
  v63 = 0xD00000000000002DLL;
  v64 = 0x80000001C96D4870;
  MEMORY[0x1CCA8CB00]();
  v49 = v63;
  OUTLINED_FUNCTION_23_0();
  v37 = swift_allocObject();
  OUTLINED_FUNCTION_10_35(v37);
  v53 = v24;
  v55 = *(v5 + 16);
  v38 = v60;
  v55(v60, v34, v3);
  v39 = *(v5 + 80);
  v50 = v3;
  v51 = v2;
  v52 = (v39 + 24) & ~v39;
  v40 = swift_allocObject();
  *(v40 + 16) = v37;
  v54 = *(v5 + 32);
  v54(v40 + ((v39 + 24) & ~v39), v38, v3);
  sub_1C96A3D04();
  sub_1C96A5084();

  v63 = 0xD00000000000002DLL;
  v64 = v56;
  MEMORY[0x1CCA8CB00](v58, v57);
  v58 = v63;
  OUTLINED_FUNCTION_23_0();
  v41 = swift_allocObject();
  swift_weakInit();
  v42 = v50;
  v55(v38, v62, v50);
  v43 = v52;
  v44 = swift_allocObject();
  *(v44 + 16) = v41;
  v54(v44 + v43, v38, v42);
  sub_1C96A3D04();
  sub_1C96A5084();

  v63 = 0;
  v64 = 0xE000000000000000;
  sub_1C96A7A94();

  OUTLINED_FUNCTION_8_3();
  v63 = 0xD00000000000001FLL;
  v64 = v45;
  v46 = *(v59 + OBJC_IVAR____TtC11WeatherCore22StubWeatherDataBuilder_aqiScaleName);
  v47 = *(v59 + OBJC_IVAR____TtC11WeatherCore22StubWeatherDataBuilder_aqiScaleName + 8);
  sub_1C96A53C4();
  MEMORY[0x1CCA8CB00](v46, v47);

  OUTLINED_FUNCTION_23_0();
  v48 = swift_allocObject();
  OUTLINED_FUNCTION_10_35(v48);
  sub_1C96A3D04();
  sub_1C96A5084();

  sub_1C96A5084();
  OUTLINED_FUNCTION_101();
}

uint64_t sub_1C94B0360()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_23_0();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C94B039C()
{
  OUTLINED_FUNCTION_39();
  v1 = v0[7];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];
  [v1 invalidate];
  sub_1C96A77E4();
  sub_1C96A6074();

  (*(v3 + 8))(v2, v4);

  OUTLINED_FUNCTION_17();

  return v5();
}

uint64_t sub_1C94B0464()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_7();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C94B055C(uint64_t a1, unint64_t a2)
{
  sub_1C96A3D04();
  sub_1C94B05C8(a1, a2);
  sub_1C96A55E4();

  return sub_1C9485BFC(a1, a2);
}

uint64_t sub_1C94B05C8(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1C94874C0(result, a2);
  }

  return result;
}

uint64_t sub_1C94B05DC()
{
  OUTLINED_FUNCTION_39();
  v1 = *(v0 + 176);
  if (*(v1 + 240) == 1)
  {
    v2 = *(v1 + 144);
    v3 = *(v1 + 152);
    v4 = (v1 + 120);
  }

  else
  {
    v2 = *(v1 + 184);
    v3 = *(v1 + 192);
    v4 = (v1 + 160);
  }

  __swift_project_boxed_opaque_existential_1(v4, v2);
  *(v0 + 40) = v2;
  *(v0 + 48) = *(v3 + 8);
  __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  OUTLINED_FUNCTION_8_1();
  (*(v5 + 16))();
  sub_1C949D8BC(v0 + 16, v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5190, &qword_1C96AD2B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5198, &qword_1C96AD2C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 168) = 0;
    *(v0 + 152) = 0u;
    *(v0 + 136) = 0u;
    sub_1C94AC78C(v0 + 136, &qword_1EC3A51A0, &qword_1C96AD2C8);
    goto LABEL_8;
  }

  v6 = *(v0 + 176);
  sub_1C94670AC((v0 + 136), v0 + 56);
  if (*(v6 + 288) >> 6)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
LABEL_8:
    OUTLINED_FUNCTION_24_5();

    return v7();
  }

  OUTLINED_FUNCTION_10_7((v0 + 56));
  OUTLINED_FUNCTION_12_3();
  v9 = swift_task_alloc();
  *(v0 + 208) = v9;
  *v9 = v0;
  v10 = OUTLINED_FUNCTION_5_0(v9);

  return v11(v10);
}

uint64_t sub_1C94B081C(uint64_t a1, unint64_t a2)
{
  sub_1C96A3D04();
  sub_1C94B05C8(a1, a2);
  sub_1C96A55E4();

  return sub_1C9485BFC(a1, a2);
}

uint64_t sub_1C94B0888(uint64_t a1, unint64_t a2)
{
  sub_1C96A3D04();
  sub_1C94B05C8(a1, a2);
  sub_1C96A55E4();

  return sub_1C9485BFC(a1, a2);
}

uint64_t sub_1C94B0914()
{
  v1 = sub_1C94B0978();
  v2 = *(v0 + 8);
  v3 = v1;

  return v2(v3);
}

BOOL sub_1C94B0978()
{
  __swift_project_boxed_opaque_existential_1((v0 + 232), *(v0 + 256));
  v1 = OUTLINED_FUNCTION_23_25();
  v2(v1);
  v4 = v3;
  if (v3)
  {
  }

  return v4 != 0;
}

uint64_t HashSaltProvider.salt.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 104);
  sub_1C96A53C4();
  return v1;
}

uint64_t sub_1C94B0A44()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;
  *(v4 + 224) = v3;

  v5 = OUTLINED_FUNCTION_15_7();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C94B0B44()
{
  OUTLINED_FUNCTION_18();
  if (*(v0 + 224))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
    OUTLINED_FUNCTION_24_5();

    return v1();
  }

  else
  {
    v3 = swift_task_alloc();
    *(v0 + 216) = v3;
    *v3 = v0;
    v3[1] = sub_1C951B66C;

    return sub_1C951B7BC();
  }
}

uint64_t sub_1C94B0C0C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  OUTLINED_FUNCTION_17();

  return v3();
}

uint64_t sub_1C94B0D18(void *a1, void *a2, uint64_t a3, void *a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5090, &qword_1C96AD060);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v28[-1] - v17;
  v28[3] = a7;
  v28[4] = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
  (*(*(a7 - 8) + 32))(boxed_opaque_existential_1, a3, a7);
  swift_defaultActor_initialize();
  *(a6 + 112) = MEMORY[0x1E69E7CC0];
  *(a6 + 240) = 1;
  sub_1C946B5D0(0, &unk_1EDB7CD20, 0x1E69E9BF8);
  *(a6 + 248) = sub_1C96A7904();
  *(a6 + 256) = 1;
  *(a6 + 272) = 0;
  *(a6 + 280) = 0;
  *(a6 + 264) = 0;
  *(a6 + 288) = 0x80;
  *(a6 + 344) = 0;
  sub_1C949D8BC(a1, a6 + 120);
  sub_1C949D8BC(a2, a6 + 160);
  sub_1C949D8BC(v28, a6 + 200);
  sub_1C949D8BC(a4, a6 + 296);
  *(a6 + 336) = a5;
  v20 = a4[3];
  v21 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v20);
  v22 = *(v21 + 32);
  v23 = sub_1C96A3D04();
  v22(v23, &protocol witness table for NotificationSubscriptionManager, v20, v21);

  v24 = sub_1C96A7414();
  __swift_storeEnumTagSinglePayload(v18, 1, 1, v24);
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = a6;
  sub_1C96A3D04();
  sub_1C951C258();

  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  return a6;
}

uint64_t objectdestroy_22Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C94B0FDC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_98();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C94B10DC()
{
  OUTLINED_FUNCTION_30();
  v0 = sub_1C96A6134();
  v1 = sub_1C96A76A4();
  if (OUTLINED_FUNCTION_41(v1))
  {
    v2 = OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_47(v2);
    OUTLINED_FUNCTION_16_4();
    _os_log_impl(v3, v4, v5, v6, v7, 2u);
    OUTLINED_FUNCTION_38_0();
  }

  OUTLINED_FUNCTION_17();

  return v8();
}

uint64_t OUTLINED_FUNCTION_79_1(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_79_2(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C96A6344();
}

uint64_t objectdestroy_3Tm()
{
  v1 = sub_1C96A5AD4();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1C94B1278()
{
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_5();
  sub_1C96A5084();
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_0_4();
  return OUTLINED_FUNCTION_0_4();
}

uint64_t sub_1C94B13EC()
{
  v0 = sub_1C96A4F24();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14();
  v6 = v5 - v4;
  v7 = sub_1C96A4F34();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7428, &qword_1C96BE580);
  v17[1] = 0;
  if (qword_1EDB80020 != -1)
  {
    OUTLINED_FUNCTION_2_0(&qword_1EDB80020);
  }

  __swift_project_value_buffer(v7, qword_1EDB80028);
  v9 = OUTLINED_FUNCTION_5_5();
  v10(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7430, &qword_1C96BE588);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A7438, &qword_1C96BE590);
  *(swift_allocObject() + 16) = xmmword_1C96AE890;
  v17[0] = 0;
  OUTLINED_FUNCTION_4(0x69746375646F7250, 0xEA00000000006E6FLL, v17);
  v16[1] = 1;
  sub_1C96A4F44();
  v16[0] = 2;
  OUTLINED_FUNCTION_4(0x676E6967617453, 0xE700000000000000, v16);
  v15 = 3;
  OUTLINED_FUNCTION_4(16721, 0xE200000000000000, &v15);
  v14 = 4;
  OUTLINED_FUNCTION_4(1953719636, 0xE400000000000000, &v14);
  v13 = 5;
  OUTLINED_FUNCTION_4(0x6C65766544, 0xE500000000000000, &v13);
  v12 = 6;
  OUTLINED_FUNCTION_4(0xD000000000000013, 0x80000001C96D5630, &v12);
  (*(v2 + 104))(v6, *MEMORY[0x1E69D6E88], v0);
  sub_1C94B17F0();
  result = sub_1C96A4F54();
  qword_1EDB7FD40 = result;
  return result;
}

unint64_t sub_1C94B179C()
{
  result = qword_1EDB7EB00;
  if (!qword_1EDB7EB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7EB00);
  }

  return result;
}

unint64_t sub_1C94B17F0()
{
  result = qword_1EDB7EB10;
  if (!qword_1EDB7EB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7EB10);
  }

  return result;
}

uint64_t sub_1C94B1844(uint64_t a1)
{
  v2 = sub_1C947D324();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45770](a1, v2, v3);
}

uint64_t sub_1C94B1898@<X0>(uint64_t *a1@<X8>)
{
  result = ContentEnvironment.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t ContentEnvironment.rawValue.getter(char a1)
{
  result = 0x49544355444F5250;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x474E4947415453;
      break;
    case 3:
      result = OUTLINED_FUNCTION_1_4();
      break;
    case 4:
      result = 1414743380;
      break;
    case 5:
      result = 0x4C45564544;
      break;
    case 6:
      result = 0x6C61636F6CLL;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ContentEnvironment(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
        JUMPOUT(0x1C94B1A5CLL);
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C94B1A84(uint64_t a1)
{
  v2 = sub_1C947D324();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45780](a1, v2, v3);
}

uint64_t sub_1C94B1AD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C947D324();
  v5 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45778](a1, a2, v4, v5);
}

uint64_t AppConfiguration.endpointConfig(for:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = type metadata accessor for EndpointConfiguration(0);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14();
  v11 = (v10 - v9);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6A88, &qword_1C96BA188);
  v13 = OUTLINED_FUNCTION_7(v12);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v45 - v17;
  v19 = *(v2 + *(type metadata accessor for AppConfiguration(0) + 48));
  v51 = *(v19 + 16);
  if (v51)
  {
    v46 = v15;
    v47 = v5;
    v48 = v18;
    v49 = a2;
    v20 = 0;
    v21 = 0x49544355444F5250;
    v18 = (v19 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
    v50 = 0x80000001C96CBC40;
    v22 = v7;
    while (v20 < *(v19 + 16))
    {
      v23 = v20 + 1;
      a2 = v22;
      sub_1C948CBE4(&v18[*(v22 + 9) * v20], v11);
      v24 = 0xEA00000000004E4FLL;
      v25 = v21;
      switch(*v11)
      {
        case 1:
          v25 = 0xD000000000000010;
          v24 = v50;
          break;
        case 2:
          v24 = 0xE700000000000000;
          v25 = 0x474E4947415453;
          break;
        case 3:
          v24 = 0xE200000000000000;
          v25 = 16721;
          break;
        case 4:
          v24 = 0xE400000000000000;
          v25 = 1414743380;
          break;
        case 5:
          v24 = 0xE500000000000000;
          v25 = 0x4C45564544;
          break;
        case 6:
          v24 = 0xE500000000000000;
          v25 = 0x6C61636F6CLL;
          break;
        default:
          break;
      }

      v26 = v21;
      v27 = v21;
      v28 = 0xEA00000000004E4FLL;
      switch(a1)
      {
        case 1:
          v27 = 0xD000000000000010;
          v28 = v50;
          break;
        case 2:
          v28 = 0xE700000000000000;
          v27 = 0x474E4947415453;
          break;
        case 3:
          v28 = 0xE200000000000000;
          v27 = 16721;
          break;
        case 4:
          v28 = 0xE400000000000000;
          v27 = 1414743380;
          break;
        case 5:
          v28 = 0xE500000000000000;
          v27 = 0x4C45564544;
          break;
        case 6:
          v28 = 0xE500000000000000;
          v27 = 0x6C61636F6CLL;
          break;
        default:
          break;
      }

      v29 = a1;
      if (v25 == v27 && v24 == v28)
      {

LABEL_27:
        OUTLINED_FUNCTION_27_12();
        v18 = v48;
        sub_1C9482928(v11, v48);
        v32 = 0;
        a2 = v49;
        a1 = v29;
LABEL_28:
        v15 = v46;
        v5 = v47;
        goto LABEL_29;
      }

      v31 = sub_1C96A7DE4();

      if (v31)
      {
        goto LABEL_27;
      }

      sub_1C95DA048(v11);
      v20 = v23;
      a1 = v29;
      v22 = a2;
      v21 = v26;
      if (v51 == v23)
      {
        v32 = 1;
        v18 = v48;
        a2 = v49;
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_36:
    OUTLINED_FUNCTION_5_34();
    swift_once();
    goto LABEL_31;
  }

  v32 = 1;
LABEL_29:
  __swift_storeEnumTagSinglePayload(v18, v32, 1, v5);
  sub_1C9470AA0(v18, v15, &qword_1EC3A6A88, &qword_1C96BA188);
  if (__swift_getEnumTagSinglePayload(v15, 1, v5) != 1)
  {
    sub_1C9470AFC(v18, &qword_1EC3A6A88, &qword_1C96BA188);
    OUTLINED_FUNCTION_27_12();
    return sub_1C9482928(v15, a2);
  }

  sub_1C9470AFC(v15, &qword_1EC3A6A88, &qword_1C96BA188);
  if (qword_1EDB7CFF0 != -1)
  {
    goto LABEL_36;
  }

LABEL_31:
  v33 = sub_1C96A6154();
  __swift_project_value_buffer(v33, qword_1EDB7CFF8);
  v34 = sub_1C96A6134();
  v35 = sub_1C96A7684();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = a2;
    v37 = v18;
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v52 = v39;
    *v38 = 136446210;
    v40 = sub_1C94B20BC(a1);
    v42 = sub_1C9484164(v40, v41, &v52);

    *(v38 + 4) = v42;
    _os_log_impl(&dword_1C945E000, v34, v35, "Failed to find app config endpoint for environment: %{public}s. Loading default for that environment.", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    MEMORY[0x1CCA8E3D0](v39, -1, -1);
    v43 = v38;
    v18 = v37;
    a2 = v36;
    MEMORY[0x1CCA8E3D0](v43, -1, -1);
  }

  static EndpointConfiguration.default(for:)(a1, a2);
  return sub_1C9470AFC(v18, &qword_1EC3A6A88, &qword_1C96BA188);
}

unint64_t sub_1C94B20BC(char a1)
{
  result = 0x69746375646F7250;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0x676E6967617453;
      break;
    case 3:
      result = 16721;
      break;
    case 4:
      result = 1953719636;
      break;
    case 5:
      result = 0x6C65766544;
      break;
    case 6:
      result = 0x6C61636F4CLL;
      break;
    default:
      return result;
  }

  return result;
}

void *sub_1C94B2190(uint64_t a1, unint64_t a2)
{
  v4 = (HIBYTE(a2) & 0xF);
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

  for (; v5; v5 = sub_1C96A7184())
  {
    result = sub_1C94AF024(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1C96A7A84();
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

        v9 = result + 4;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v4 = (a1 & 0xFFFFFFFFFFFFLL);
        }

        else
        {
          result = sub_1C96A7AF4();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 4;
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

  return MEMORY[0x1E69E7CC0];
}

uint64_t EndpointConfiguration.weatherDataURL.getter()
{
  OUTLINED_FUNCTION_20_25();
  sub_1C96A4764();
  OUTLINED_FUNCTION_6();
  v0 = OUTLINED_FUNCTION_3_24();

  return v1(v0);
}

__n128 AppConfiguration.privacy.getter()
{
  v1 = OUTLINED_FUNCTION_40_0();
  v2 = type metadata accessor for AppConfiguration(v1);
  OUTLINED_FUNCTION_42_7(*(v2 + 88));
  *(v0 + 32) = *(v3 + 32);
  result = *(v3 + 42);
  *(v0 + 42) = result;
  return result;
}

uint64_t sub_1C94B2380(uint64_t a1)
{
  result = type metadata accessor for UserIdentity(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C94B23F4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for AppConfiguration(0);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14();
  v7 = v6 - v5;
  v8 = v1[5];
  v9 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v8);
  (*(v9 + 8))(v8, v9);
  v10 = (v7 + *(v4 + 96));
  v11 = sub_1C94B2638(v10[3]);
  if (sub_1C94B4790(v10[4]))
  {
    v12 = v11 & 1 | 2;
  }

  else
  {
    v12 = v11 & 1;
  }

  if (sub_1C94B51C0(v10[5]))
  {
    v13 = v12 | 4;
  }

  else
  {
    v13 = v12;
  }

  if (v13)
  {
    if (qword_1EDB7CB98 != -1)
    {
      swift_once();
    }

    sub_1C94B39A0(&qword_1EDB796A0, &unk_1C96C2928);
    sub_1C96A4FE4();
    if (v13)
    {
      sub_1C964C8FC();
    }
  }

  v14 = v1[10];
  v15 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v14);
  (*(v15 + 8))(v14, v15);
  sub_1C94B37E0(v7, type metadata accessor for AppConfiguration);
  result = type metadata accessor for UserIdentityChange(0);
  *(a1 + *(result + 20)) = v13;
  return result;
}

uint64_t sub_1C94B2638(double a1)
{
  v2 = v1;
  v80 = *v1;
  v4 = type metadata accessor for UserIdentity(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1C96A4A54();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v79 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v73 = &v69 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v69 - v13;
  if (qword_1EDB7CF60 != -1)
  {
    swift_once();
  }

  v15 = sub_1C96A6154();
  v81 = __swift_project_value_buffer(v15, qword_1EDB7CF68);
  v16 = sub_1C96A6134();
  v17 = sub_1C96A76A4();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1C945E000, v16, v17, "Checking if userIdentifier needs to be reset...", v18, 2u);
    MEMORY[0x1CCA8E3D0](v18, -1, -1);
  }

  v19 = v2[10];
  v20 = v2[11];
  __swift_project_boxed_opaque_existential_1(v2 + 7, v19);
  (*(v20 + 8))(v19, v20);
  v21 = *(v8 + 16);
  v21(v14, v6 + *(v4 + 20), v7);
  sub_1C94B37E0(v6, type metadata accessor for UserIdentity);
  if (qword_1EDB7CB80 != -1)
  {
    swift_once();
  }

  v22 = qword_1EDB7CB88;
  sub_1C94B39A0(qword_1EDB7BC80, &unk_1C96C2968);
  v78 = v22;
  sub_1C96A4E44();
  if (v82 == 1)
  {
    goto LABEL_11;
  }

  if (qword_1EDB7CB98 != -1)
  {
    swift_once();
  }

  sub_1C96A4E44();
  if (v83)
  {
LABEL_11:
    v23 = 1;
LABEL_12:
    v72 = v21;
    v74 = v6;
    v24 = v79;
    v21(v79, v14, v7);
    sub_1C96A3D04();
    v25 = sub_1C96A6134();
    v26 = sub_1C96A76A4();

    v27 = os_log_type_enabled(v25, v26);
    v76 = v14;
    v77 = v7;
    v75 = v8;
    if (v27)
    {
      v28 = swift_slowAlloc();
      v70 = v23;
      v29 = v28;
      v71 = swift_slowAlloc();
      v82 = v71;
      *v29 = 141558787;
      *(v29 + 4) = 1752392040;
      *(v29 + 12) = 2081;
      v30 = v8;
      v31 = v7;
      v33 = v2[10];
      v32 = v2[11];
      __swift_project_boxed_opaque_existential_1(v2 + 7, v33);
      v34 = *(v32 + 8);
      v35 = v74;
      v69 = v26;
      v34(v33, v32);
      v36 = *v35;
      v37 = v35[1];
      sub_1C96A53C4();
      sub_1C94B37E0(v35, type metadata accessor for UserIdentity);
      v38 = sub_1C9484164(v36, v37, &v82);

      *(v29 + 14) = v38;
      *(v29 + 22) = 2082;
      v39 = v79;
      v72(v73, v79, v31);
      v40 = sub_1C96A70C4();
      v42 = v41;
      v43 = *(v30 + 8);
      v43(v39, v31);
      v44 = sub_1C9484164(v40, v42, &v82);

      *(v29 + 24) = v44;
      *(v29 + 32) = 1024;
      v45 = v69;
      *(v29 + 34) = v70;
      _os_log_impl(&dword_1C945E000, v25, v45, "About to reset an identifier; (old) userIdentifier=%{private,mask.hash}s; userIdentifierLastResetDate=%{public}s; forcedRotation=%{BOOL}d", v29, 0x26u);
      v46 = v71;
      swift_arrayDestroy();
      MEMORY[0x1CCA8E3D0](v46, -1, -1);
      MEMORY[0x1CCA8E3D0](v29, -1, -1);
    }

    else
    {

      v47 = v24;
      v43 = *(v8 + 8);
      v43(v47, v7);
    }

    v48 = v2[10];
    v49 = v2[11];
    __swift_project_boxed_opaque_existential_1(v2 + 7, v48);
    (*(v49 + 16))(v48, v49);
    LOBYTE(v82) = 0;
    sub_1C94B39A0(&qword_1EDB796A0, &unk_1C96C2928);
    sub_1C96A4FE4();
    sub_1C96A3D04();
    v50 = sub_1C96A6134();
    v51 = sub_1C96A76A4();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v82 = v53;
      *v52 = 136315138;
      v54 = v2[10];
      v55 = v2[11];
      __swift_project_boxed_opaque_existential_1(v2 + 7, v54);
      v56 = v74;
      (*(v55 + 8))(v54, v55);
      v57 = *v56;
      v58 = v56[1];
      sub_1C96A53C4();
      sub_1C94B37E0(v56, type metadata accessor for UserIdentity);
      v59 = sub_1C9484164(v57, v58, &v82);

      *(v52 + 4) = v59;
      _os_log_impl(&dword_1C945E000, v50, v51, "Just reset an identifier; (new) userIdentifier=%s", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v53);
      MEMORY[0x1CCA8E3D0](v53, -1, -1);
      MEMORY[0x1CCA8E3D0](v52, -1, -1);
    }

    v43(v76, v77);
    return 1;
  }

  sub_1C96A5954();
  v61 = v73;
  sub_1C96A5944();
  v62 = sub_1C94B3B6C(v61, a1);
  v74 = *(v8 + 8);
  (v74)(v61, v7);
  if (v62)
  {
    v23 = 0;
    goto LABEL_12;
  }

  v63 = sub_1C96A6134();
  v64 = sub_1C96A76A4();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = v7;
    v66 = swift_slowAlloc();
    *v66 = 0;
    _os_log_impl(&dword_1C945E000, v63, v64, "The userIdentifier does NOT need to be reset", v66, 2u);
    MEMORY[0x1CCA8E3D0](v66, -1, -1);

    v67 = v14;
    v68 = v65;
  }

  else
  {

    v67 = v14;
    v68 = v7;
  }

  (v74)(v67, v68);
  return 0;
}

void IdentityService.identity.getter(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6538, &qword_1C96B6B70);
  v3 = OUTLINED_FUNCTION_7(v2);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v7 - v4;
  sub_1C94B2FFC();
  v6 = type metadata accessor for UserIdentity(0);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_1C9470AFC(v5, &qword_1EC3A6538, &qword_1C96B6B70);
    sub_1C956BE78(a1);
    sub_1C95B2694(a1);
  }

  else
  {
    sub_1C94B3690(v5, a1, type metadata accessor for UserIdentity);
  }
}

void sub_1C94B2FFC()
{
  OUTLINED_FUNCTION_103();
  v71 = v0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430, &unk_1C96AAB30);
  v2 = OUTLINED_FUNCTION_7(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2();
  v5 = v3 - v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v62 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v62 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v62 - v13;
  v15 = sub_1C96A4A54();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2();
  v69 = (v19 - v20);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v62 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v70 = &v62 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v62 - v27;
  v29 = sub_1C94AB2AC(0x6E65644972657375, 0xEE00726569666974);
  if (!v30)
  {
    goto LABEL_16;
  }

  v31 = v30;
  v68 = v29;
  sub_1C94B35B4(v14);
  OUTLINED_FUNCTION_13(v14);
  if (v53)
  {

    goto LABEL_5;
  }

  v65 = v5;
  v66 = *(v17 + 32);
  v67 = v17 + 32;
  v66(v28, v14, v15);
  v33 = sub_1C94AB2AC(0xD000000000000015, 0x80000001C96CAD90);
  if (v34)
  {
    v35 = v34;
    v64 = v33;
    sub_1C94B35B4(v11);
    OUTLINED_FUNCTION_13(v11);
    if (v53)
    {
      v36 = OUTLINED_FUNCTION_117_0();
      v37(v36);

      v32 = v11;
      goto LABEL_15;
    }

    v63 = v35;
    v40 = v70;
    v66(v70, v11, v15);
    v41 = sub_1C94AB2AC(0xD000000000000017, 0x80000001C96CADB0);
    v43 = v17;
    if (!v42)
    {

      v50 = *(v17 + 8);
      v50(v40, v15);
      v51 = OUTLINED_FUNCTION_117_0();
      (v50)(v51);
      goto LABEL_16;
    }

    v44 = v42;
    v62 = v41;
    sub_1C94B35B4(v8);
    OUTLINED_FUNCTION_13(v8);
    if (v53)
    {

      v45 = *(v17 + 8);
      v45(v40, v15);
      v46 = OUTLINED_FUNCTION_117_0();
      (v45)(v46);
      v32 = v8;
      goto LABEL_15;
    }

    v52 = v66;
    v66(v23, v8, v15);
    v14 = v65;
    sub_1C94B35B4(v65);
    OUTLINED_FUNCTION_13(v14);
    if (!v53)
    {
      v56 = v69;
      v52(v69, v14, v15);
      v57 = type metadata accessor for UserIdentity(0);
      v58 = v71;
      v52(v71 + v57[5], v28, v15);
      v52(v58 + v57[7], v70, v15);
      v52(v58 + v57[9], v23, v15);
      v52(v58 + v57[10], v56, v15);
      *v58 = v68;
      v58[1] = v31;
      v59 = (v58 + v57[6]);
      v60 = v63;
      *v59 = v64;
      v59[1] = v60;
      v61 = (v58 + v57[8]);
      *v61 = v62;
      v61[1] = v44;
      v48 = v58;
      v49 = 0;
      v47 = v57;
      goto LABEL_17;
    }

    v54 = *(v43 + 8);
    v54(v23, v15);
    v54(v70, v15);
    v55 = OUTLINED_FUNCTION_117_0();
    (v54)(v55);
LABEL_5:
    v32 = v14;
LABEL_15:
    sub_1C9470AFC(v32, &unk_1EC3A5430, &unk_1C96AAB30);
    goto LABEL_16;
  }

  v38 = OUTLINED_FUNCTION_117_0();
  v39(v38);

LABEL_16:
  v47 = type metadata accessor for UserIdentity(0);
  v48 = v71;
  v49 = 1;
LABEL_17:
  __swift_storeEnumTagSinglePayload(v48, v49, 1, v47);
  OUTLINED_FUNCTION_101();
}

uint64_t sub_1C94B35B4@<X0>(uint64_t a3@<X8>)
{
  v5 = sub_1C96A7004();
  v6 = [v3 objectForKey_];

  if (v6)
  {
    sub_1C96A79C4();
    swift_unknownObjectRelease();
    sub_1C946306C(&v10, v11);
  }

  else
  {
    memset(v11, 0, sizeof(v11));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A90, &qword_1C96B0AA0);
  v7 = sub_1C96A4A54();
  v8 = swift_dynamicCast();
  return __swift_storeEnumTagSinglePayload(a3, v8 ^ 1u, 1, v7);
}