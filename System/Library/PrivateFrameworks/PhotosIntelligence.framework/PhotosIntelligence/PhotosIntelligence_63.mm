void sub_1C741D6B4()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BCD8, &qword_1C758A868);
  v6 = OUTLINED_FUNCTION_76(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14_2();
  v51 = v7;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_84_14();
  v9 = sub_1C754F58C();
  OUTLINED_FUNCTION_3_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_14_2();
  v50 = v13;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v48 - v15;
  type metadata accessor for Hastings.Feature(0);
  OUTLINED_FUNCTION_3_0();
  v56 = v18;
  v57 = v17;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_14_0();
  v55 = v20 - v19;
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v9);
  v24 = v2 + 56;
  v25 = 1 << *(v2 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(v2 + 56);
  v28 = (v25 + 63) >> 6;
  v53 = (v11 + 32);
  v54 = (v11 + 16);
  v49 = (v11 + 8);
  v59 = v2;
  sub_1C75504FC();
  v29 = 0;
  v58 = v4;
  while (v27)
  {
    v30 = v29;
LABEL_9:
    v31 = __clz(__rbit64(v27));
    v27 &= v27 - 1;
    v32 = v55;
    OUTLINED_FUNCTION_28_37(v31 | (v30 << 6));
    v34 = v33;
    sub_1C74228D0();
    (*v54)(v16, v32 + *(v57 + 24), v9);
    sub_1C7422928(v32, v34);
    OUTLINED_FUNCTION_64();
    sub_1C6FD7F70();
    OUTLINED_FUNCTION_80_4(v0, 1, v9);
    if (v35)
    {
      sub_1C6FD7FC8(v4, &qword_1EC21BCD8, &qword_1C758A868);
      sub_1C6FD7FC8(v0, &qword_1EC21BCD8, &qword_1C758A868);
      (*v53)(v4, v16, v9);
      OUTLINED_FUNCTION_25_8();
      __swift_storeEnumTagSinglePayload(v36, v37, v38, v9);
      v29 = v30;
    }

    else
    {
      v52 = *v53;
      v39 = v16;
      v40 = v50;
      v52(v50, v0, v9);
      OUTLINED_FUNCTION_13_81();
      sub_1C7423CAC(&qword_1EC21BD90, v41, MEMORY[0x1E69C1940]);
      v42 = sub_1C755061C();
      sub_1C6FD7FC8(v58, &qword_1EC21BCD8, &qword_1C758A868);
      if (v42)
      {
        v43 = v40;
      }

      else
      {
        v43 = v39;
      }

      if (v42)
      {
        v44 = v39;
      }

      else
      {
        v44 = v40;
      }

      (*v49)(v43, v9);
      v52(v51, v44, v9);
      v4 = v58;
      OUTLINED_FUNCTION_25_8();
      __swift_storeEnumTagSinglePayload(v45, v46, v47, v9);
      v16 = v39;
      sub_1C7091CBC();
      v29 = v30;
    }
  }

  while (1)
  {
    v30 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v30 >= v28)
    {

      OUTLINED_FUNCTION_25_0();
      return;
    }

    v27 = *(v24 + 8 * v30);
    ++v29;
    if (v27)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1C741DAC8()
{
  result = type metadata accessor for Hastings.ClusterAssetElector.ElectedAssetIterator(0);
  v2 = *(v0 + *(result + 76));
  if (*(v2 + 16))
  {
    v3 = *(result + 80);
    sub_1C75504FC();
    sub_1C6FB05E8();
    v4 = *(*(v0 + v3) + 16);
    sub_1C6FB0EE4(v4, v5, v6, v7, v8, v9, v10);

    return sub_1C7423B58(v4, v2, 0, (v0 + v3));
  }

  return result;
}

void sub_1C741DB6C()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v38 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BDA8, &qword_1C758AB40);
  v4 = OUTLINED_FUNCTION_76(v3);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v38 - v5;
  v7 = type metadata accessor for Hastings.ClusterAssetElector.ElectedAssetIterator.CandidateAsset(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14_0();
  v11 = v10 - v9;
  v12 = *(type metadata accessor for Hastings.ClusterAssetElector.ElectedAssetIterator(0) + 80);
  v39 = v7;
  while (1)
  {
    v13 = *(v1 + v12);
    v14 = *(v13 + 16);
    if (!v14)
    {
      type metadata accessor for Hastings.Asset(0);
      OUTLINED_FUNCTION_84();
      __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
LABEL_15:
      OUTLINED_FUNCTION_25_0();
      return;
    }

    sub_1C6FB5E28(v13 + 40 * v14 - 8, v43);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C70E3D4C();
      v13 = v27;
    }

    v15 = *(v13 + 16);
    if (!v15)
    {
      break;
    }

    v16 = v15 - 1;
    __swift_destroy_boxed_opaque_existential_1((v13 + 40 * v15 - 8));
    *(v13 + 16) = v16;
    *(v1 + v12) = v13;
    __swift_mutable_project_boxed_opaque_existential_0(v43, v43[3]);
    OUTLINED_FUNCTION_431();
    sub_1C755150C();
    OUTLINED_FUNCTION_80_4(v6, 1, v7);
    if (v17)
    {
      sub_1C6FD7FC8(v6, &qword_1EC21BDA8, &qword_1C758AB40);
      __swift_destroy_boxed_opaque_existential_1(v43);
    }

    else
    {
      sub_1C7422980();
      sub_1C6FB5E28(v43, v40);
      *(v1 + v12) = v13;
      v18 = *(v13 + 16);
      if (v18 >= *(v13 + 24) >> 1)
      {
        sub_1C6FB1730();
        v13 = v28;
        *(v1 + v12) = v28;
      }

      v19 = v41;
      v20 = v42;
      v21 = __swift_mutable_project_boxed_opaque_existential_0(v40, v41);
      MEMORY[0x1EEE9AC00](v21);
      OUTLINED_FUNCTION_14_0();
      v24 = v23 - v22;
      (*(v25 + 16))(v23 - v22);
      sub_1C7423C0C(v18, v24, (v1 + v12), v19, v20);
      __swift_destroy_boxed_opaque_existential_1(v40);
      *(v1 + v12) = v13;
      Hastings.ClusterAssetElector.ElectedAssetIterator.process(asset:)();
      if (!LOBYTE(v40[0]))
      {
        OUTLINED_FUNCTION_2_122();
        sub_1C74228D0();
        OUTLINED_FUNCTION_1_132();
        sub_1C7422928(v11, v33);
        type metadata accessor for Hastings.Asset(0);
        OUTLINED_FUNCTION_25_8();
        __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
        __swift_destroy_boxed_opaque_existential_1(v43);
        goto LABEL_15;
      }

      OUTLINED_FUNCTION_1_132();
      sub_1C7422928(v11, v26);
      __swift_destroy_boxed_opaque_existential_1(v43);
      v7 = v39;
    }
  }

  __break(1u);
}

uint64_t sub_1C741DEA4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2168B0, &qword_1C75656C0);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v15 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  sub_1C6FD7F70();

  v6 = Hastings.Feature.description.getter();
  v8 = v7;
  sub_1C7422928(v5, type metadata accessor for Hastings.Feature);
  sub_1C6FD7F70();

  v9 = Hastings.Feature.description.getter();
  v11 = v10;
  sub_1C7422928(v2, type metadata accessor for Hastings.Feature);
  if (v6 == v9 && v8 == v11)
  {
    v13 = 0;
  }

  else
  {
    v13 = sub_1C7551DBC();
  }

  return v13 & 1;
}

uint64_t sub_1C741E03C()
{
  type metadata accessor for Hastings.ClusterAssetElector.ElectedAssetIterator(0);
  sub_1C7009ADC();
  return v0 & 1;
}

uint64_t Hastings.ClusterAssetElector.ElectedAssetIterator.testCandidateAsset(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Hastings.Asset(0);
  v6 = OUTLINED_FUNCTION_76(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_2_122();
  OUTLINED_FUNCTION_64();
  sub_1C74228D0();
  v7 = type metadata accessor for Hastings.ClusterAssetElector.ElectedAssetIterator(0);
  v8 = sub_1C6FE0FD0(a1, *(v2 + *(v7 + 28)));
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CD0];
  }

  v10 = *(v2 + *(v7 + 36));
  v14 = a1;
  v11 = sub_1C7073774(sub_1C71598A8, v13, v10);
  OUTLINED_FUNCTION_6_104();
  sub_1C7422980();
  result = type metadata accessor for Hastings.ClusterAssetElector.ElectedAssetIterator.CandidateAsset(0);
  *(a2 + *(result + 20)) = v9;
  *(a2 + *(result + 24)) = v11;
  return result;
}

void sub_1C741E1D8(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  OUTLINED_FUNCTION_115();
  if (v9 < v8 || (a4(0), OUTLINED_FUNCTION_12(), v5 + *(v10 + 72) * v4 <= a3))
  {
    a4(0);
    OUTLINED_FUNCTION_19_69();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != v5)
  {
    OUTLINED_FUNCTION_19_69();

    swift_arrayInitWithTakeBackToFront();
  }
}

char *sub_1C741E300(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[128 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_177(a3, result);
  }

  return result;
}

char *sub_1C741E320(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[4 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_177(a3, result);
  }

  return result;
}

char *sub_1C741E370(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[120 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_177(a3, result);
  }

  return result;
}

char *sub_1C741E3C8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_177(a3, result);
  }

  return result;
}

char *sub_1C741E3EC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[104 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_177(a3, result);
  }

  return result;
}

char *sub_1C741E414(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[48 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_177(a3, result);
  }

  return result;
}

char *sub_1C741E43C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[64 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_177(a3, result);
  }

  return result;
}

char *sub_1C741E45C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[80 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_177(a3, result);
  }

  return result;
}

char *sub_1C741E484(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[112 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_177(a3, result);
  }

  return result;
}

char *sub_1C741E4AC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[136 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_177(a3, result);
  }

  return result;
}

char *sub_1C741E4D4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[144 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_177(a3, result);
  }

  return result;
}

char *sub_1C741E52C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[56 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_177(a3, result);
  }

  return result;
}

char *sub_1C741E584(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[72 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_177(a3, result);
  }

  return result;
}

char *sub_1C741E5C4(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[152 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_177(a3, result);
  }

  return result;
}

char *sub_1C741E604(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_177(a3, result);
  }

  return result;
}

char *sub_1C741E6AC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[192 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_177(a3, result);
  }

  return result;
}

char *sub_1C741E74C(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[88 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_177(a3, result);
  }

  return result;
}

char *sub_1C741E7BC(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[112 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_16_62(a3, result, 112 * a2);
  }

  return result;
}

void sub_1C741E870(uint64_t a1, uint64_t a2, unint64_t a3)
{
  OUTLINED_FUNCTION_115();
  if (v7 < v6 || (v8 = OUTLINED_FUNCTION_103(), __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9), OUTLINED_FUNCTION_12(), v4 + *(v10 + 72) * v3 <= a3))
  {
    v11 = OUTLINED_FUNCTION_103();
    __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
    OUTLINED_FUNCTION_19_69();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != v4)
  {
    OUTLINED_FUNCTION_19_69();

    swift_arrayInitWithTakeBackToFront();
  }
}

void sub_1C741E950(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1C7551D7C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2168B0, &qword_1C75656C0);
        v6 = sub_1C7550BBC();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2168B0, &qword_1C75656C0) - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_1C741F014(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1C741EA98(0, v2, 1, a1);
  }
}

void sub_1C741EA98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2168B0, &qword_1C75656C0);
  MEMORY[0x1EEE9AC00](v55);
  v45 = &v36[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v49 = &v36[-v10];
  MEMORY[0x1EEE9AC00](v11);
  v48 = &v36[-v12];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v36[-v14];
  MEMORY[0x1EEE9AC00](v16);
  v38 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v54 = "Hastings.curatedAssets";
    v20 = *(v17 + 72);
    v21 = v19 + v20 * (a3 - 1);
    v43 = -v20;
    v44 = v19;
    v22 = a1 - a3;
    v37 = v20;
    v23 = v19 + v20 * a3;
    v46 = v15;
    v47 = &v36[-v18];
    while (2)
    {
      v41 = v21;
      v42 = a3;
      v39 = v23;
      v40 = v22;
      v24 = v22;
      while (1)
      {
        v50 = v24;
        sub_1C6FD7F70();
        sub_1C6FD7F70();
        v25 = v48;
        sub_1C6FD7F70();

        v56 = 0;
        v57 = 0xE000000000000000;
        sub_1C755180C();
        MEMORY[0x1CCA5CD70](0x2865727574616546, 0xEC000000203A6469);
        MEMORY[0x1CCA5CD70](*v25, *(v25 + 8));
        MEMORY[0x1CCA5CD70](0x203A65707974202CLL, 0xE800000000000000);
        v58 = *(v25 + 16);
        sub_1C75519EC();
        MEMORY[0x1CCA5CD70](0xD000000000000010, v54 | 0x8000000000000000);
        v53 = type metadata accessor for Hastings.Feature(0);
        v52 = sub_1C754F58C();
        sub_1C75519EC();
        MEMORY[0x1CCA5CD70](41, 0xE100000000000000);
        v26 = v56;
        v27 = v57;
        v28 = v46;
        v51 = type metadata accessor for Hastings.Feature;
        sub_1C7422928(v25, type metadata accessor for Hastings.Feature);
        v29 = v49;
        sub_1C6FD7F70();

        v56 = 0;
        v57 = 0xE000000000000000;
        sub_1C755180C();
        MEMORY[0x1CCA5CD70](0x2865727574616546, 0xEC000000203A6469);
        MEMORY[0x1CCA5CD70](*v29, *(v29 + 8));
        MEMORY[0x1CCA5CD70](0x203A65707974202CLL, 0xE800000000000000);
        v58 = *(v29 + 16);
        sub_1C75519EC();
        MEMORY[0x1CCA5CD70](0xD000000000000010, v54 | 0x8000000000000000);
        sub_1C75519EC();
        MEMORY[0x1CCA5CD70](41, 0xE100000000000000);
        v31 = v56;
        v30 = v57;
        sub_1C7422928(v29, v51);
        if (v26 == v31 && v27 == v30)
        {
          break;
        }

        v33 = sub_1C7551DBC();

        sub_1C6FD7FC8(v28, &qword_1EC2168B0, &qword_1C75656C0);
        sub_1C6FD7FC8(v47, &qword_1EC2168B0, &qword_1C75656C0);
        v34 = v50;
        if (v33)
        {
          if (!v44)
          {
            __break(1u);
            return;
          }

          sub_1C7091CBC();
          swift_arrayInitWithTakeFrontToBack();
          sub_1C7091CBC();
          v21 += v43;
          v23 += v43;
          v35 = __CFADD__(v34, 1);
          v24 = v34 + 1;
          if (!v35)
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      sub_1C6FD7FC8(v28, &qword_1EC2168B0, &qword_1C75656C0);
      sub_1C6FD7FC8(v47, &qword_1EC2168B0, &qword_1C75656C0);
LABEL_14:
      a3 = v42 + 1;
      v21 = v41 + v37;
      v22 = v40 - 1;
      v23 = v39 + v37;
      if (v42 + 1 != v38)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1C741F014(const char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v146 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2168B0, &qword_1C75656C0);
  v155 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v149 = &v140 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v162 = &v140 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v164 = &v140 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v163 = &v140 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v166 = &v140 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v165 = &v140 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v154 = &v140 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v153 = &v140 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v158 = &v140 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v157 = &v140 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v140 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v156 = a3;
  v34 = a3[1];
  if (v34 < 1)
  {
    v36 = MEMORY[0x1E69E7CC0];
LABEL_114:
    v174 = *v146;
    if (!v174)
    {
      goto LABEL_156;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_116;
    }

    goto LABEL_150;
  }

  v140 = &v140 - v33;
  v35 = 0;
  v36 = MEMORY[0x1E69E7CC0];
  v174 = "Hastings.curatedAssets";
  v145 = a4;
  v167 = v32;
  v141 = v30;
  while (1)
  {
    v37 = v35;
    v38 = v35 + 1;
    if (v38 >= v34)
    {
      v45 = v38;
    }

    else
    {
      v168 = v34;
      v144 = v36;
      v39 = *v156;
      v40 = *(v155 + 72);
      v41 = v38;
      v173 = *v156 + v40 * v38;
      v42 = v140;
      sub_1C6FD7F70();
      sub_1C6FD7F70();
      LODWORD(v161) = sub_1C741DEA4();
      if (v5)
      {
        sub_1C6FD7FC8(v30, &qword_1EC2168B0, &qword_1C75656C0);
        sub_1C6FD7FC8(v42, &qword_1EC2168B0, &qword_1C75656C0);
LABEL_124:

        return;
      }

      v142 = 0;
      sub_1C6FD7FC8(v30, &qword_1EC2168B0, &qword_1C75656C0);
      sub_1C6FD7FC8(v42, &qword_1EC2168B0, &qword_1C75656C0);
      v143 = v37;
      v43 = v37 + 2;
      v44 = (v39 + v40 * (v37 + 2));
      v45 = v41;
      v169 = v40;
      v46 = v168;
      v47 = v173;
      while (1)
      {
        v48 = v43;
        if (v45 + 1 >= v46)
        {
          break;
        }

        v171 = v44;
        v172 = v43;
        v159 = v45;
        sub_1C6FD7F70();
        v173 = v47;
        sub_1C6FD7F70();
        v49 = v153;
        sub_1C6FD7F70();

        v175 = 0;
        v176 = 0xE000000000000000;
        sub_1C755180C();
        MEMORY[0x1CCA5CD70](0x2865727574616546, 0xEC000000203A6469);
        MEMORY[0x1CCA5CD70](*v49, *(v49 + 8));
        MEMORY[0x1CCA5CD70](0x203A65707974202CLL, 0xE800000000000000);
        v177 = *(v49 + 16);
        sub_1C75519EC();
        v50 = v174;
        MEMORY[0x1CCA5CD70](0xD000000000000010, v174 | 0x8000000000000000);
        type metadata accessor for Hastings.Feature(0);
        sub_1C754F58C();
        sub_1C75519EC();
        MEMORY[0x1CCA5CD70](41, 0xE100000000000000);
        v51 = v176;
        v170 = v175;
        sub_1C7422928(v49, type metadata accessor for Hastings.Feature);
        v5 = v154;
        v52 = v51;
        sub_1C6FD7F70();

        v175 = 0;
        v176 = 0xE000000000000000;
        sub_1C755180C();
        MEMORY[0x1CCA5CD70](0x2865727574616546, 0xEC000000203A6469);
        MEMORY[0x1CCA5CD70](*v5, *(v5 + 8));
        MEMORY[0x1CCA5CD70](0x203A65707974202CLL, 0xE800000000000000);
        v177 = *(v5 + 16);
        sub_1C75519EC();
        MEMORY[0x1CCA5CD70](0xD000000000000010, v50 | 0x8000000000000000);
        sub_1C75519EC();
        MEMORY[0x1CCA5CD70](41, 0xE100000000000000);
        v54 = v175;
        v53 = v176;
        sub_1C7422928(v5, type metadata accessor for Hastings.Feature);
        if (v170 == v54 && v52 == v53)
        {
          v56 = 0;
        }

        else
        {
          v56 = sub_1C7551DBC();
        }

        v40 = v169;

        sub_1C6FD7FC8(v158, &qword_1EC2168B0, &qword_1C75656C0);
        sub_1C6FD7FC8(v157, &qword_1EC2168B0, &qword_1C75656C0);
        v57 = v161 ^ v56;
        v48 = v172;
        v44 = (v171 + v40);
        v47 = v173 + v40;
        v45 = v159 + 1;
        v43 = v172 + 1;
        v46 = v168;
        if (v57)
        {
          goto LABEL_17;
        }
      }

      v45 = v46;
LABEL_17:
      a4 = v145;
      if (v161)
      {
        v37 = v143;
        if (v45 < v143)
        {
          goto LABEL_149;
        }

        if (v143 >= v45)
        {
          v5 = v142;
          v36 = v144;
        }

        else
        {
          v58 = v46 >= v48 ? v48 : v46;
          v59 = v40 * (v58 - 1);
          v60 = v45;
          v61 = v40 * v58;
          v62 = v143 * v40;
          v159 = v60;
          v63 = v143;
          v5 = v142;
          do
          {
            if (v63 != --v60)
            {
              v64 = *v156;
              if (!*v156)
              {
                goto LABEL_154;
              }

              sub_1C7091CBC();
              v65 = v62 < v59 || v64 + v62 >= (v64 + v61);
              if (v65)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v62 != v59)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1C7091CBC();
              v40 = v169;
            }

            ++v63;
            v59 -= v40;
            v61 -= v40;
            v62 += v40;
          }

          while (v63 < v60);
          a4 = v145;
          v36 = v144;
          v45 = v159;
        }
      }

      else
      {
        v5 = v142;
        v36 = v144;
        v37 = v143;
      }
    }

    v66 = v156[1];
    if (v45 < v66)
    {
      if (__OFSUB__(v45, v37))
      {
        goto LABEL_146;
      }

      if (v45 - v37 < a4)
      {
        break;
      }
    }

LABEL_61:
    if (v45 < v37)
    {
      goto LABEL_145;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C6FB17EC(0, *(v36 + 2) + 1, 1, v36);
      v36 = v130;
    }

    v87 = *(v36 + 2);
    v86 = *(v36 + 3);
    v88 = v87 + 1;
    v159 = v45;
    if (v87 >= v86 >> 1)
    {
      sub_1C6FB17EC(v86 > 1, v87 + 1, 1, v36);
      v36 = v131;
    }

    *(v36 + 2) = v88;
    v89 = v36 + 32;
    v90 = &v36[16 * v87 + 32];
    v91 = v159;
    *v90 = v37;
    *(v90 + 1) = v91;
    v173 = *v146;
    if (!v173)
    {
      goto LABEL_155;
    }

    if (v87)
    {
      while (1)
      {
        v92 = v88 - 1;
        v93 = &v89[16 * v88 - 16];
        v94 = &v36[16 * v88];
        if (v88 >= 4)
        {
          break;
        }

        if (v88 == 3)
        {
          v95 = *(v36 + 4);
          v96 = *(v36 + 5);
          v105 = __OFSUB__(v96, v95);
          v97 = v96 - v95;
          v98 = v105;
LABEL_81:
          if (v98)
          {
            goto LABEL_132;
          }

          v110 = *v94;
          v109 = *(v94 + 1);
          v111 = __OFSUB__(v109, v110);
          v112 = v109 - v110;
          v113 = v111;
          if (v111)
          {
            goto LABEL_135;
          }

          v114 = *(v93 + 1);
          v115 = v114 - *v93;
          if (__OFSUB__(v114, *v93))
          {
            goto LABEL_138;
          }

          if (__OFADD__(v112, v115))
          {
            goto LABEL_140;
          }

          if (v112 + v115 >= v97)
          {
            if (v97 < v115)
            {
              v92 = v88 - 2;
            }

            goto LABEL_103;
          }

          goto LABEL_96;
        }

        if (v88 < 2)
        {
          goto LABEL_134;
        }

        v117 = *v94;
        v116 = *(v94 + 1);
        v105 = __OFSUB__(v116, v117);
        v112 = v116 - v117;
        v113 = v105;
LABEL_96:
        if (v113)
        {
          goto LABEL_137;
        }

        v119 = *v93;
        v118 = *(v93 + 1);
        v105 = __OFSUB__(v118, v119);
        v120 = v118 - v119;
        if (v105)
        {
          goto LABEL_139;
        }

        if (v120 < v112)
        {
          goto LABEL_110;
        }

LABEL_103:
        if (v92 - 1 >= v88)
        {
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
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
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
          goto LABEL_148;
        }

        if (!*v156)
        {
          goto LABEL_152;
        }

        v124 = v36;
        v125 = &v89[16 * v92 - 16];
        v126 = *v125;
        v127 = &v89[16 * v92];
        v128 = *(v127 + 1);
        sub_1C74200EC(*v156 + *(v155 + 72) * *v125, *v156 + *(v155 + 72) * *v127, (*v156 + *(v155 + 72) * v128), v173);
        if (v5)
        {
          goto LABEL_124;
        }

        if (v128 < v126)
        {
          goto LABEL_127;
        }

        v129 = *(v124 + 2);
        if (v92 > v129)
        {
          goto LABEL_128;
        }

        *v125 = v126;
        *(v125 + 1) = v128;
        if (v92 >= v129)
        {
          goto LABEL_129;
        }

        v88 = v129 - 1;
        memmove(&v89[16 * v92], v127 + 16, 16 * (v129 - 1 - v92));
        v36 = v124;
        *(v124 + 2) = v129 - 1;
        if (v129 <= 2)
        {
          goto LABEL_110;
        }
      }

      v99 = &v89[16 * v88];
      v100 = *(v99 - 8);
      v101 = *(v99 - 7);
      v105 = __OFSUB__(v101, v100);
      v102 = v101 - v100;
      if (v105)
      {
        goto LABEL_130;
      }

      v104 = *(v99 - 6);
      v103 = *(v99 - 5);
      v105 = __OFSUB__(v103, v104);
      v97 = v103 - v104;
      v98 = v105;
      if (v105)
      {
        goto LABEL_131;
      }

      v106 = *(v94 + 1);
      v107 = v106 - *v94;
      if (__OFSUB__(v106, *v94))
      {
        goto LABEL_133;
      }

      v105 = __OFADD__(v97, v107);
      v108 = v97 + v107;
      if (v105)
      {
        goto LABEL_136;
      }

      if (v108 >= v102)
      {
        v122 = *v93;
        v121 = *(v93 + 1);
        v105 = __OFSUB__(v121, v122);
        v123 = v121 - v122;
        if (v105)
        {
          goto LABEL_144;
        }

        if (v97 < v123)
        {
          v92 = v88 - 2;
        }

        goto LABEL_103;
      }

      goto LABEL_81;
    }

LABEL_110:
    v34 = v156[1];
    v35 = v159;
    a4 = v145;
    v30 = v141;
    if (v159 >= v34)
    {
      goto LABEL_114;
    }
  }

  v67 = v37 + a4;
  if (__OFADD__(v37, a4))
  {
    goto LABEL_147;
  }

  if (v67 >= v66)
  {
    v67 = v156[1];
  }

  if (v67 < v37)
  {
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    v36 = sub_1C7420830();
LABEL_116:
    v132 = v36 + 16;
    v133 = *(v36 + 2);
    while (v133 >= 2)
    {
      if (!*v156)
      {
        goto LABEL_153;
      }

      v134 = v36;
      v135 = &v36[16 * v133];
      v136 = *v135;
      v137 = &v132[2 * v133];
      v138 = v137[1];
      sub_1C74200EC(*v156 + *(v155 + 72) * *v135, *v156 + *(v155 + 72) * *v137, (*v156 + *(v155 + 72) * v138), v174);
      if (v5)
      {
        break;
      }

      if (v138 < v136)
      {
        goto LABEL_141;
      }

      if (v133 - 2 >= *v132)
      {
        goto LABEL_142;
      }

      *v135 = v136;
      *(v135 + 1) = v138;
      v139 = *v132 - v133;
      if (*v132 < v133)
      {
        goto LABEL_143;
      }

      v133 = *v132 - 1;
      memmove(v137, v137 + 2, 16 * v139);
      *v132 = v133;
      v36 = v134;
    }

    goto LABEL_124;
  }

  if (v45 == v67)
  {
    goto LABEL_61;
  }

  v144 = v36;
  v142 = v5;
  v68 = *v156;
  v69 = *(v155 + 72);
  v70 = *v156 + v69 * (v45 - 1);
  v160 = -v69;
  v143 = v37;
  v71 = v37 - v45;
  v159 = v45;
  v161 = v68;
  v147 = v69;
  v72 = v68 + v45 * v69;
  v148 = v67;
LABEL_48:
  v150 = v72;
  v151 = v71;
  v73 = v71;
  v152 = v70;
  while (1)
  {
    v169 = v72;
    v170 = v73;
    sub_1C6FD7F70();
    v168 = v70;
    sub_1C6FD7F70();
    v74 = v163;
    sub_1C6FD7F70();

    v175 = 0;
    v176 = 0xE000000000000000;
    sub_1C755180C();
    MEMORY[0x1CCA5CD70](0x2865727574616546, 0xEC000000203A6469);
    MEMORY[0x1CCA5CD70](*v74, *(v74 + 8));
    MEMORY[0x1CCA5CD70](0x203A65707974202CLL, 0xE800000000000000);
    v177 = *(v74 + 16);
    sub_1C75519EC();
    MEMORY[0x1CCA5CD70](0xD000000000000010, v174 | 0x8000000000000000);
    v173 = type metadata accessor for Hastings.Feature(0);
    v172 = sub_1C754F58C();
    sub_1C75519EC();
    MEMORY[0x1CCA5CD70](41, 0xE100000000000000);
    v76 = v175;
    v75 = v176;
    v171 = type metadata accessor for Hastings.Feature;
    sub_1C7422928(v74, type metadata accessor for Hastings.Feature);
    v77 = v166;
    v78 = v164;
    sub_1C6FD7F70();

    v175 = 0;
    v176 = 0xE000000000000000;
    sub_1C755180C();
    MEMORY[0x1CCA5CD70](0x2865727574616546, 0xEC000000203A6469);
    MEMORY[0x1CCA5CD70](*v78, *(v78 + 8));
    MEMORY[0x1CCA5CD70](0x203A65707974202CLL, 0xE800000000000000);
    v177 = *(v78 + 16);
    sub_1C75519EC();
    MEMORY[0x1CCA5CD70](0xD000000000000010, v174 | 0x8000000000000000);
    sub_1C75519EC();
    MEMORY[0x1CCA5CD70](41, 0xE100000000000000);
    v80 = v175;
    v79 = v176;
    sub_1C7422928(v78, v171);
    if (v76 == v80 && v75 == v79)
    {

      sub_1C6FD7FC8(v77, &qword_1EC2168B0, &qword_1C75656C0);
      sub_1C6FD7FC8(v165, &qword_1EC2168B0, &qword_1C75656C0);
LABEL_59:
      v70 = v152 + v147;
      v71 = v151 - 1;
      v72 = v150 + v147;
      if (++v159 == v148)
      {
        v45 = v148;
        v5 = v142;
        v36 = v144;
        v37 = v143;
        goto LABEL_61;
      }

      goto LABEL_48;
    }

    v82 = sub_1C7551DBC();

    sub_1C6FD7FC8(v77, &qword_1EC2168B0, &qword_1C75656C0);
    sub_1C6FD7FC8(v165, &qword_1EC2168B0, &qword_1C75656C0);
    if ((v82 & 1) == 0)
    {
      goto LABEL_59;
    }

    v83 = v170;
    if (!v161)
    {
      break;
    }

    v84 = v169;
    sub_1C7091CBC();
    v85 = v168;
    swift_arrayInitWithTakeFrontToBack();
    sub_1C7091CBC();
    v70 = v85 + v160;
    v72 = v84 + v160;
    v65 = __CFADD__(v83, 1);
    v73 = v83 + 1;
    if (v65)
    {
      goto LABEL_59;
    }
  }

  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
}

void sub_1C74200EC(unint64_t a1, unint64_t a2, char *a3, unint64_t a4)
{
  v80 = a3;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2168B0, &qword_1C75656C0);
  MEMORY[0x1EEE9AC00](v84);
  v73 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v72 = &v70 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v77 = &v70 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v76 = &v70 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v79 = &v70 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v78 = &v70 - v17;
  MEMORY[0x1EEE9AC00](v18);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v70 - v21;
  v24 = *(v23 + 72);
  if (!v24)
  {
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    return;
  }

  v25 = a2 - a1;
  if (a2 - a1 == 0x8000000000000000 && v24 == -1)
  {
    goto LABEL_71;
  }

  v27 = &v80[-a2];
  if (&v80[-a2] == 0x8000000000000000 && v24 == -1)
  {
    goto LABEL_72;
  }

  v29 = v25 / v24;
  v87 = a1;
  v86 = a4;
  v30 = v27 / v24;
  if (v25 / v24 < v27 / v24)
  {
    v76 = v20;
    sub_1C741E870(a1, v25 / v24, a4);
    v77 = a4 + v29 * v24;
    v85 = v77;
    v31 = v80;
    v74 = v22;
    v75 = v24;
    while (1)
    {
      if (a4 >= v77 || a2 >= v31)
      {
        goto LABEL_69;
      }

      v81 = a1;
      v83 = a2;
      sub_1C6FD7F70();
      v82 = a4;
      v33 = v76;
      sub_1C6FD7F70();
      v34 = v78;
      sub_1C6FD7F70();

      v35 = Hastings.Feature.description.getter();
      v37 = v36;
      sub_1C7422928(v34, type metadata accessor for Hastings.Feature);
      v38 = v79;
      sub_1C6FD7F70();

      v39 = Hastings.Feature.description.getter();
      v41 = v40;
      sub_1C7422928(v38, type metadata accessor for Hastings.Feature);
      if (v35 == v39 && v37 == v41)
      {

        sub_1C6FD7FC8(v33, &qword_1EC2168B0, &qword_1C75656C0);
        sub_1C6FD7FC8(v74, &qword_1EC2168B0, &qword_1C75656C0);
      }

      else
      {
        v43 = sub_1C7551DBC();

        sub_1C6FD7FC8(v33, &qword_1EC2168B0, &qword_1C75656C0);
        sub_1C6FD7FC8(v74, &qword_1EC2168B0, &qword_1C75656C0);
        if (v43)
        {
          a4 = v82;
          v44 = v75;
          a2 = v83 + v75;
          v45 = v81;
          if (v81 < v83 || v81 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v81 != v83)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          goto LABEL_37;
        }
      }

      v45 = v81;
      v44 = v75;
      a4 = v82 + v75;
      v47 = v81 < v82 || v81 >= a4;
      a2 = v83;
      if (v47)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v81 != v82)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v86 = a4;
LABEL_37:
      a1 = v45 + v44;
      v87 = a1;
      v31 = v80;
    }
  }

  sub_1C741E870(a2, v27 / v24, a4);
  v48 = a4 + v30 * v24;
  v49 = -v24;
  v50 = v48;
  v51 = v80;
  v81 = a1;
  v82 = a4;
  v75 = -v24;
LABEL_41:
  v52 = v51;
  v71 = v50;
  v53 = v50;
  v83 = a2;
  v78 = (a2 + v49);
  while (1)
  {
    if (v48 <= a4)
    {
      v87 = a2;
      v85 = v53;
      goto LABEL_69;
    }

    if (a2 <= a1)
    {
      break;
    }

    v79 = v52;
    v80 = v48;
    v74 = v53;
    v54 = v48 + v49;
    sub_1C6FD7F70();
    sub_1C6FD7F70();
    v55 = v72;
    sub_1C6FD7F70();

    v56 = Hastings.Feature.description.getter();
    v58 = v57;
    sub_1C7422928(v55, type metadata accessor for Hastings.Feature);
    v59 = v73;
    sub_1C6FD7F70();

    v60 = Hastings.Feature.description.getter();
    v62 = v61;
    sub_1C7422928(v59, type metadata accessor for Hastings.Feature);
    if (v56 == v60 && v58 == v62)
    {
      v64 = 0;
    }

    else
    {
      v64 = sub_1C7551DBC();
    }

    v49 = v75;
    v65 = v79;
    v51 = &v79[v75];
    sub_1C6FD7FC8(v77, &qword_1EC2168B0, &qword_1C75656C0);
    sub_1C6FD7FC8(v76, &qword_1EC2168B0, &qword_1C75656C0);
    a1 = v81;
    a4 = v82;
    a2 = v83;
    if (v64)
    {
      v67 = v65 < v83 || v51 >= v83;
      v48 = v80;
      if (v67)
      {
        a2 = v78;
        swift_arrayInitWithTakeFrontToBack();
        v50 = v74;
      }

      else
      {
        v68 = v74;
        v50 = v74;
        v69 = v78;
        a2 = v78;
        if (v65 != v83)
        {
          swift_arrayInitWithTakeBackToFront();
          a2 = v69;
          v50 = v68;
        }
      }

      goto LABEL_41;
    }

    if (v65 < v80 || v51 >= v80)
    {
      swift_arrayInitWithTakeFrontToBack();
      v52 = &v65[v49];
      v48 = v54;
      v53 = v54;
    }

    else
    {
      v53 = v54;
      v52 = &v65[v49];
      v48 = v54;
      if (v80 != v65)
      {
        swift_arrayInitWithTakeBackToFront();
        v52 = &v65[v49];
        v48 = v54;
        v53 = v54;
      }
    }
  }

  v87 = a2;
  v85 = v71;
LABEL_69:
  sub_1C74209F4(&v87, &v86, &v85, &qword_1EC2168B0, &qword_1C75656C0);
}

void sub_1C742092C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  a4(0);
  OUTLINED_FUNCTION_12();
  v8 = *(v7 + 72);
  if (!v8)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_72_22();
  v11 = !v11 || v4 >= v10;
  if (v11)
  {
    OUTLINED_FUNCTION_66_2();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {
    OUTLINED_FUNCTION_66_2();

    swift_arrayInitWithTakeBackToFront();
  }
}

void sub_1C74209F4(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  OUTLINED_FUNCTION_12();
  v9 = *(v8 + 72);
  if (!v9)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  if (v7 - v6 == 0x8000000000000000 && v9 == -1)
  {
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_72_22();
  v12 = !v12 || v5 >= v11;
  if (v12)
  {
    OUTLINED_FUNCTION_66_2();

    swift_arrayInitWithTakeFrontToBack();
  }

  else if (v5 != v6)
  {
    OUTLINED_FUNCTION_66_2();

    swift_arrayInitWithTakeBackToFront();
  }
}

char *sub_1C7420ABC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C30, &unk_1C755BDB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void sub_1C7420BBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BD80, &qword_1C758AB28);
  v25 = OUTLINED_FUNCTION_76(v24);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &a9 - v26;
  v28 = type metadata accessor for Hastings.Feature(0);
  MEMORY[0x1EEE9AC00](v28 - 8);
  OUTLINED_FUNCTION_14_0();
  v31 = (v30 - v29);
  OUTLINED_FUNCTION_38_3();
  if (v32)
  {
    OUTLINED_FUNCTION_11();
    v35 = v34 & v33;
    v37 = (v36 + 63) >> 6;
    sub_1C75504FC();
    v38 = 0;
    if (!v35)
    {
      goto LABEL_4;
    }

    do
    {
      v39 = v38;
LABEL_8:
      v40 = __clz(__rbit64(v35));
      v35 &= v35 - 1;
      OUTLINED_FUNCTION_28_37(v40 | (v39 << 6));
      v42 = v41;
      sub_1C74228D0();
      sub_1C742159C(v31, v27);
      sub_1C7422928(v31, v42);
      sub_1C6FD7FC8(v27, &qword_1EC21BD80, &qword_1C758AB28);
    }

    while (v35);
LABEL_4:
    while (1)
    {
      v39 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      if (v39 >= v37)
      {

        goto LABEL_11;
      }

      v35 = *(v23 + 56 + 8 * v39);
      ++v38;
      if (v35)
      {
        v38 = v39;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:
    OUTLINED_FUNCTION_25_0();
  }
}

void sub_1C7420D70()
{
  OUTLINED_FUNCTION_68_23();
  if (v6)
  {
    if (!*(v5 + 16))
    {
      return;
    }
  }

  else if (!sub_1C75516BC())
  {
    return;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1C755165C();
    sub_1C6FDEC1C();
    v7 = sub_1C7423CAC(&qword_1EDD0CD08, sub_1C6FDEC1C, MEMORY[0x1E69E81B8]);
    OUTLINED_FUNCTION_89_17(v7, v8, v9, v10);
    v1 = v19;
    v2 = v20;
    v0 = v21;
    v11 = v22;
    v3 = v23;
  }

  else
  {
    OUTLINED_FUNCTION_9_2();
    OUTLINED_FUNCTION_42_36();
    v11 = 0;
  }

  v12 = (v0 + 64) >> 6;
  if (v1 < 0)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v13 = v11;
    v14 = v11;
    if (!v3)
    {
      break;
    }

LABEL_13:
    v15 = OUTLINED_FUNCTION_45_36();
    if (!v15)
    {
LABEL_19:
      v17 = OUTLINED_FUNCTION_64();
      sub_1C6F61E88(v17);
      return;
    }

    while (1)
    {
      v16 = sub_1C7422460(v15, sub_1C6FDEC1C, sub_1C7237660, sub_1C72F2D40, sub_1C7235B44);

      v11 = v14;
      v3 = v4;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_15:
      if (sub_1C75516FC())
      {
        sub_1C6FDEC1C();
        swift_dynamicCast();
        v15 = v18;
        v14 = v11;
        v4 = v3;
        if (v18)
        {
          continue;
        }
      }

      goto LABEL_19;
    }
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v12)
    {
      goto LABEL_19;
    }

    ++v13;
    if (*(v2 + 8 * v14))
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

void sub_1C7420F88()
{
  OUTLINED_FUNCTION_38_3();
  if (v1)
  {
    v2 = v0 + 56;
    OUTLINED_FUNCTION_11();
    v5 = v4 & v3;
    v7 = (v6 + 63) >> 6;
    sub_1C75504FC();
    v8 = 0;
    if (!v5)
    {
      goto LABEL_4;
    }

    do
    {
LABEL_8:
      v5 &= v5 - 1;
      sub_1C75504FC();
      v10 = OUTLINED_FUNCTION_64();
      sub_1C7421CF8(v10, v11);
    }

    while (v5);
    while (1)
    {
LABEL_4:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v7)
      {
        break;
      }

      v5 = *(v2 + 8 * v9);
      ++v8;
      if (v5)
      {
        v8 = v9;
        goto LABEL_8;
      }
    }
  }
}

void sub_1C7421098()
{
  OUTLINED_FUNCTION_38_3();
  if (v1)
  {
    v2 = v0;
    v3 = v0 + 56;
    OUTLINED_FUNCTION_11();
    v6 = v5 & v4;
    v8 = (v7 + 63) >> 6;
    sub_1C75504FC();
    v9 = 0;
    if (!v6)
    {
      goto LABEL_4;
    }

    do
    {
      v10 = v9;
LABEL_8:
      v11 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      sub_1C7421E0C(*(*(v2 + 48) + ((v10 << 9) | (8 * v11))));
    }

    while (v6);
    while (1)
    {
LABEL_4:
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        return;
      }

      if (v10 >= v8)
      {
        break;
      }

      v6 = *(v3 + 8 * v10);
      ++v9;
      if (v6)
      {
        v9 = v10;
        goto LABEL_8;
      }
    }
  }
}

void sub_1C7421178()
{
  OUTLINED_FUNCTION_38_3();
  if (v1)
  {
    v2 = v0;
    v3 = v0 + 56;
    OUTLINED_FUNCTION_11();
    v6 = v5 & v4;
    v8 = (v7 + 63) >> 6;
    sub_1C75504FC();
    v9 = 0;
    if (!v6)
    {
      goto LABEL_4;
    }

    do
    {
      v10 = v9;
LABEL_8:
      v11 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      sub_1C7421EF8(*(*(v2 + 48) + (v11 | (v10 << 6))), &v12);
    }

    while (v6);
    while (1)
    {
LABEL_4:
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        return;
      }

      if (v10 >= v8)
      {
        break;
      }

      v6 = *(v3 + 8 * v10);
      ++v9;
      if (v6)
      {
        v9 = v10;
        goto LABEL_8;
      }
    }
  }
}

void sub_1C7421264()
{
  OUTLINED_FUNCTION_68_23();
  if (v6)
  {
    if (!*(v5 + 16))
    {
      return;
    }
  }

  else if (!sub_1C75516BC())
  {
    return;
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1C755165C();
    type metadata accessor for Spatial3DCuration.WallpaperSuggester.SuggestionCandidate(0);
    v7 = sub_1C7423CAC(&qword_1EC2167A8, type metadata accessor for Spatial3DCuration.WallpaperSuggester.SuggestionCandidate, MEMORY[0x1E69E81B8]);
    OUTLINED_FUNCTION_89_17(v7, v8, v9, v10);
    v1 = v19;
    v2 = v20;
    v0 = v21;
    v11 = v22;
    v3 = v23;
  }

  else
  {
    OUTLINED_FUNCTION_9_2();
    OUTLINED_FUNCTION_42_36();
    v11 = 0;
  }

  v12 = (v0 + 64) >> 6;
  if (v1 < 0)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v13 = v11;
    v14 = v11;
    if (!v3)
    {
      break;
    }

LABEL_13:
    v15 = OUTLINED_FUNCTION_45_36();
    if (!v15)
    {
LABEL_19:
      v17 = OUTLINED_FUNCTION_64();
      sub_1C6F61E88(v17);
      return;
    }

    while (1)
    {
      v16 = sub_1C7422460(v15, type metadata accessor for Spatial3DCuration.WallpaperSuggester.SuggestionCandidate, sub_1C7237660, sub_1C72F4C8C, sub_1C7235B6C);

      v11 = v14;
      v3 = v4;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_15:
      if (sub_1C75516FC())
      {
        type metadata accessor for Spatial3DCuration.WallpaperSuggester.SuggestionCandidate(0);
        swift_dynamicCast();
        v15 = v18;
        v14 = v11;
        v4 = v3;
        if (v18)
        {
          continue;
        }
      }

      goto LABEL_19;
    }
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v12)
    {
      goto LABEL_19;
    }

    ++v13;
    if (*(v2 + 8 * v14))
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

void sub_1C742147C()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_38_3();
  if (v1)
  {
    v2 = v0;
    v3 = v0 + 56;
    OUTLINED_FUNCTION_11();
    v6 = v5 & v4;
    v8 = (v7 + 63) >> 6;
    sub_1C75504FC();
    v9 = 0;
    if (!v6)
    {
      goto LABEL_4;
    }

    do
    {
      v10 = v9;
LABEL_8:
      v11 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      memcpy(__dst, (*(v2 + 48) + 192 * (v11 | (v10 << 6))), sizeof(__dst));
      sub_1C7080654(__dst, v13);
      sub_1C74225EC(__dst, v12);
      sub_1C70806B0(__dst);
      memcpy(v13, v12, sizeof(v13));
      sub_1C6FD7FC8(v13, &qword_1EC21BDB0, &unk_1C758FFE0);
    }

    while (v6);
LABEL_4:
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v8)
      {

        goto LABEL_11;
      }

      v6 = *(v3 + 8 * v10);
      ++v9;
      if (v6)
      {
        v9 = v10;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:
    OUTLINED_FUNCTION_25_0();
  }
}

uint64_t sub_1C742159C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = type metadata accessor for Hastings.Feature(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v2;
  v8 = *v2;
  sub_1C7551F3C();
  v9 = *a1;
  v10 = a1[1];
  sub_1C75505AC();
  sub_1C6FF7814();
  v33 = v4;
  v11 = *(v4 + 24);
  sub_1C754F58C();
  sub_1C7423CAC(&qword_1EC215238, MEMORY[0x1E69C1928], MEMORY[0x1E69C1938]);
  v32 = v11;
  sub_1C755059C();
  v12 = sub_1C7551FAC();
  v36 = v8 + 56;
  v37 = v8;
  v13 = -1 << *(v8 + 32);
  v14 = v12 & ~v13;
  if (((*(v8 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_33:
    v24 = v31;
    v25 = 1;
    return __swift_storeEnumTagSinglePayload(v24, v25, 1, v33);
  }

  v34 = ~v13;
  v35 = *(v5 + 72);
  while (1)
  {
    sub_1C74228D0();
    v15 = *v7 == v9 && *(v7 + 1) == v10;
    if (!v15 && (sub_1C7551DBC() & 1) == 0)
    {
LABEL_25:
      sub_1C7422928(v7, type metadata accessor for Hastings.Feature);
      goto LABEL_32;
    }

    v16 = 0xE900000000000072;
    v17 = 0x6574636172616843;
    switch(v7[16])
    {
      case 1:
        v16 = 0xE800000000000000;
        v17 = 0x6E6F697461636F4CLL;
        break;
      case 2:
        v16 = 0xE500000000000000;
        v17 = 0x746E657645;
        break;
      case 3:
        v16 = 0xE400000000000000;
        v17 = 1885958740;
        break;
      case 4:
        v16 = 0xE500000000000000;
        v17 = 0x7972657551;
        break;
      case 5:
        v17 = 0x6B61657262656954;
        v16 = 0xEA00000000007265;
        break;
      default:
        break;
    }

    v18 = 0x6574636172616843;
    v19 = 0xE900000000000072;
    switch(*(a1 + 16))
    {
      case 1:
        v19 = 0xE800000000000000;
        v18 = 0x6E6F697461636F4CLL;
        break;
      case 2:
        v19 = 0xE500000000000000;
        v18 = 0x746E657645;
        break;
      case 3:
        v19 = 0xE400000000000000;
        v18 = 1885958740;
        break;
      case 4:
        v19 = 0xE500000000000000;
        v18 = 0x7972657551;
        break;
      case 5:
        v18 = 0x6B61657262656954;
        v19 = 0xEA00000000007265;
        break;
      default:
        break;
    }

    if (v17 == v18 && v16 == v19)
    {
    }

    else
    {
      v21 = sub_1C7551DBC();

      if ((v21 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    sub_1C7423CAC(&qword_1EC2147A0, MEMORY[0x1E69C1928], MEMORY[0x1E69C1950]);
    sub_1C7550A5C();
    sub_1C7550A5C();
    if (v40 == v38 && v41 == v39)
    {
      break;
    }

    v23 = sub_1C7551DBC();

    sub_1C7422928(v7, type metadata accessor for Hastings.Feature);
    if (v23)
    {
      goto LABEL_35;
    }

LABEL_32:
    v14 = (v14 + 1) & v34;
    if (((*(v36 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_33;
    }
  }

  sub_1C7422928(v7, type metadata accessor for Hastings.Feature);
LABEL_35:
  v26 = v30;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v26;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1C72F2BC4();
  }

  v28 = v31;
  sub_1C7422980();
  sub_1C7235DDC(v14);
  *v26 = v40;
  v24 = v28;
  v25 = 0;
  return __swift_storeEnumTagSinglePayload(v24, v25, 1, v33);
}

void sub_1C7421AD4(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v25 = a1[3];
  v26 = a1[2];
  v6 = *v2;
  sub_1C7551F3C();
  sub_1C75505AC();
  sub_1C7551FAC();
  OUTLINED_FUNCTION_9_2();
  v9 = v8 & ~v7;
  v28 = v10;
  v11 = 0uLL;
  if (((*(v10 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    v20 = 0;
    v21 = 0uLL;
    goto LABEL_18;
  }

  v12 = ~v7;
  while (1)
  {
    v13 = (*(v6 + 48) + 40 * v9);
    v14 = v13[2];
    v15 = v13[3];
    v16 = *v13 == v4 && v13[1] == v5;
    if (!v16 && (sub_1C7551DBC() & 1) == 0)
    {
      goto LABEL_12;
    }

    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C7036A90(v14, v26);
    if ((v17 & 1) == 0)
    {

      goto LABEL_12;
    }

    sub_1C7036A90(v15, v25);
    v19 = v18;

    if (v19)
    {
      break;
    }

LABEL_12:
    v9 = (v9 + 1) & v12;
    if (((*(v28 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      v20 = 0;
      v21 = 0uLL;
      v11 = 0uLL;
      goto LABEL_18;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v2;
  v30 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1C72F3284();
    v23 = v30;
  }

  v24 = *(v23 + 48) + 40 * v9;
  v20 = *v24;
  v27 = *(v24 + 24);
  v29 = *(v24 + 8);
  sub_1C723614C(v9);
  v21 = v27;
  v11 = v29;
  *v2 = v30;
LABEL_18:
  *a2 = v20;
  *(a2 + 8) = v11;
  *(a2 + 24) = v21;
}

uint64_t sub_1C7421CF8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1C7551F3C();
  sub_1C75505AC();
  sub_1C7551FAC();
  OUTLINED_FUNCTION_9_2();
  v8 = ~v7;
  while (1)
  {
    v9 = v6 & v8;
    OUTLINED_FUNCTION_77_15();
    if ((v10 & 1) == 0)
    {
      break;
    }

    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_1C7551DBC() & 1) != 0)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = *v2;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C72F28DC();
      }

      sub_1C723634C();
      *v2 = v15;
      return OUTLINED_FUNCTION_64();
    }

    v6 = v9 + 1;
  }

  return OUTLINED_FUNCTION_64();
}

uint64_t sub_1C7421E0C(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = sub_1C7551F2C();
  v6 = ~(-1 << *(v4 + 32));
  while (1)
  {
    v7 = v5 & v6;
    if (((1 << (v5 & v6)) & *(v4 + 56 + (((v5 & v6) >> 3) & 0xFFFFFFFFFFFFFF8))) == 0)
    {
      return 0;
    }

    if (*(*(v4 + 48) + 8 * v7) == a1)
    {
      break;
    }

    v5 = v7 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v2;
  v12 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1C72F44D0();
    v10 = v12;
  }

  v8 = *(*(v10 + 48) + 8 * v7);
  sub_1C7236474(v7);
  *v2 = v12;
  return v8;
}

void sub_1C7421EF8(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = v2;
  v4 = a1;
  v6 = *v3;
  v7 = sub_1C72DF388(*(*v3 + 40), a1);
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      v11 = 0xE400000000000000;
      v12 = 1701736302;
      switch(*(*(v6 + 48) + v9))
      {
        case 1:
          v11 = 0xE600000000000000;
          v13 = 1936876912;
          goto LABEL_21;
        case 2:
          v12 = 0x67416E6F73726570;
          v15 = 0x6570795465;
          goto LABEL_12;
        case 3:
          v12 = 1702125924;
          break;
        case 4:
          v11 = 0xE900000000000079;
          v12 = 0x6144664F74726170;
          break;
        case 5:
          v11 = 0xEA00000000006B65;
          v12 = 0x6557664F74726170;
          break;
        case 6:
          v11 = 0xE600000000000000;
          v13 = 1935762803;
LABEL_21:
          v12 = v13 & 0xFFFF0000FFFFFFFFLL | 0x6E6F00000000;
          break;
        case 7:
          v11 = 0xE800000000000000;
          v14 = 1633906540;
          goto LABEL_16;
        case 8:
          v12 = 0x4C636972656E6567;
          v11 = 0xEF6E6F697461636FLL;
          break;
        case 9:
          v12 = 1952540791;
          break;
        case 0xA:
          v12 = 0x764563696C627570;
          v11 = 0xEB00000000746E65;
          break;
        case 0xB:
          v12 = 0x6C616E6F73726570;
          v15 = 0x746E657645;
LABEL_12:
          v11 = v15 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          break;
        case 0xC:
          v12 = 0x746954636973756DLL;
          v11 = 0xEA0000000000656CLL;
          break;
        case 0xD:
          v11 = 0xEB00000000747369;
          v12 = 0x747241636973756DLL;
          break;
        case 0xE:
          v11 = 0xEA00000000006572;
          v12 = 0x6E6547636973756DLL;
          break;
        case 0xF:
          v12 = 1685024621;
          break;
        case 0x10:
          v11 = 0xE800000000000000;
          v14 = 1634891108;
LABEL_16:
          v12 = v14 | 0x6E6F697400000000;
          break;
        case 0x11:
          v11 = 0xE600000000000000;
          v12 = 0x706972547369;
          break;
        case 0x12:
          v12 = 0x6D69546C6C417369;
          v11 = 0xE900000000000065;
          break;
        case 0x13:
          v11 = 0xE900000000000072;
          v12 = 0x6564724F74726F73;
          break;
        default:
          break;
      }

      v16 = 0xE400000000000000;
      v17 = 1701736302;
      switch(v4)
      {
        case 1:
          v16 = 0xE600000000000000;
          v18 = 1936876912;
          goto LABEL_44;
        case 2:
          v17 = 0x67416E6F73726570;
          v20 = 0x6570795465;
          goto LABEL_35;
        case 3:
          v17 = 1702125924;
          break;
        case 4:
          v16 = 0xE900000000000079;
          v17 = 0x6144664F74726170;
          break;
        case 5:
          v16 = 0xEA00000000006B65;
          v17 = 0x6557664F74726170;
          break;
        case 6:
          v16 = 0xE600000000000000;
          v18 = 1935762803;
LABEL_44:
          v17 = v18 & 0xFFFF0000FFFFFFFFLL | 0x6E6F00000000;
          break;
        case 7:
          v16 = 0xE800000000000000;
          v19 = 1633906540;
          goto LABEL_39;
        case 8:
          v17 = 0x4C636972656E6567;
          v16 = 0xEF6E6F697461636FLL;
          break;
        case 9:
          v17 = 1952540791;
          break;
        case 10:
          v17 = 0x764563696C627570;
          v16 = 0xEB00000000746E65;
          break;
        case 11:
          v17 = 0x6C616E6F73726570;
          v20 = 0x746E657645;
LABEL_35:
          v16 = v20 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          break;
        case 12:
          v17 = 0x746954636973756DLL;
          v16 = 0xEA0000000000656CLL;
          break;
        case 13:
          v16 = 0xEB00000000747369;
          v17 = 0x747241636973756DLL;
          break;
        case 14:
          v16 = 0xEA00000000006572;
          v17 = 0x6E6547636973756DLL;
          break;
        case 15:
          v17 = 1685024621;
          break;
        case 16:
          v16 = 0xE800000000000000;
          v19 = 1634891108;
LABEL_39:
          v17 = v19 | 0x6E6F697400000000;
          break;
        case 17:
          v16 = 0xE600000000000000;
          v17 = 0x706972547369;
          break;
        case 18:
          v17 = 0x6D69546C6C417369;
          v16 = 0xE900000000000065;
          break;
        case 19:
          v16 = 0xE900000000000072;
          v17 = 0x6564724F74726F73;
          break;
        default:
          break;
      }

      if (v12 == v17 && v11 == v16)
      {
        break;
      }

      v22 = sub_1C7551DBC();

      if (v22)
      {
        goto LABEL_57;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_55;
      }
    }

LABEL_57:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v25 = *v3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1C72F2FD4();
      v24 = v25;
    }

    *a2 = *(*(v24 + 48) + v9);
    sub_1C72365C4();
    *v3 = v25;
  }

  else
  {
LABEL_55:
    *a2 = 20;
  }
}

uint64_t sub_1C7422460(void *a1, void (*a2)(void), void (*a3)(uint64_t), void (*a4)(void), uint64_t (*a5)(uint64_t, id))
{
  v6 = v5;
  v8 = *v5;
  if ((*v5 & 0xC000000000000001) == 0)
  {
    a2(0);
    sub_1C75513DC();
    OUTLINED_FUNCTION_9_2();
    v17 = ~v16;
    while (1)
    {
      v18 = v15 & v17;
      if (((*(v8 + 56 + (((v15 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v17)) & 1) == 0)
      {
        break;
      }

      v19 = *(*(v8 + 48) + 8 * v18);
      v20 = sub_1C75513EC();

      if (v20)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v22 = *v6;
        v25 = *v6;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          a4();
          v22 = v25;
        }

        v13 = *(*(v22 + 48) + 8 * v18);
        a3(v18);
        *v6 = v25;
        return v13;
      }

      v15 = v18 + 1;
    }

    return 0;
  }

  if (v8 < 0)
  {
    v10 = *v5;
  }

  else
  {
    v10 = v8 & 0xFFFFFFFFFFFFFF8;
  }

  sub_1C75504FC();
  v11 = a1;
  v12 = sub_1C755170C();

  if ((v12 & 1) == 0)
  {

    return 0;
  }

  v13 = a5(v10, v11);

  return v13;
}

void sub_1C74225EC(unsigned __int8 *a1@<X0>, void *a2@<X8>)
{
  v4 = *v2;
  sub_1C7551F3C();
  v5 = *a1;
  v6 = *(a1 + 1);
  v7 = *(a1 + 2);
  sub_1C75505AC();
  v23 = v5;
  sub_1C6FF87E8();
  v8 = sub_1C7551FAC();
  v9 = -1 << *(v4 + 32);
  v10 = v8 & ~v9;
  if (((*(v4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_22:
    sub_1C7423CA4(__dst);
    memcpy(a2, __dst, 0xC0uLL);
    return;
  }

  v24 = ~v9;
  while (1)
  {
    memcpy(__dst, (*(v4 + 48) + 192 * v10), 0xC0uLL);
    v11 = __dst[1] == v6 && __dst[2] == v7;
    if (!v11 && (sub_1C7551DBC() & 1) == 0)
    {
      goto LABEL_21;
    }

    v12 = 0xD000000000000011;
    v13 = "edMoodsInferredFallback";
    switch(LOBYTE(__dst[0]))
    {
      case 1:
        v12 = 0xD000000000000016;
        v13 = "appleMusicMaestro";
        break;
      case 2:
        v12 = 0xD000000000000015;
        v13 = "appleMusicSimpleSearch";
        break;
      case 3:
        v12 = 0xD000000000000010;
        v13 = "appleMusicSmartSearch";
        break;
      default:
        break;
    }

    v14 = v13 | 0x8000000000000000;
    v15 = 0xD000000000000011;
    v16 = "edMoodsInferredFallback";
    switch(v23)
    {
      case 1:
        v15 = 0xD000000000000016;
        v16 = "appleMusicMaestro";
        break;
      case 2:
        v15 = 0xD000000000000015;
        v16 = "appleMusicSimpleSearch";
        break;
      case 3:
        v15 = 0xD000000000000010;
        v16 = "appleMusicSmartSearch";
        break;
      default:
        break;
    }

    if (v12 == v15 && v14 == (v16 | 0x8000000000000000))
    {
      break;
    }

    v18 = sub_1C7551DBC();
    sub_1C7080654(__dst, v25);

    sub_1C70806B0(__dst);
    if (v18)
    {
      goto LABEL_24;
    }

LABEL_21:
    v10 = (v10 + 1) & v24;
    if (((*(v4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  sub_1C7080654(__dst, v25);

  sub_1C70806B0(__dst);
LABEL_24:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v21;
  v25[0] = *v21;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1C72F2FE8();
    v20 = v25[0];
  }

  memmove(a2, (*(v20 + 48) + 192 * v10), 0xC0uLL);
  sub_1C72369E8(v10);
  *v21 = v25[0];
  CGRectMake();
}

uint64_t sub_1C74228D0()
{
  OUTLINED_FUNCTION_115();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_90();
  v3(v2);
  return v0;
}

uint64_t sub_1C7422928(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C7422980()
{
  OUTLINED_FUNCTION_115();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_90();
  v3(v2);
  return v0;
}

unint64_t sub_1C74229D8()
{
  result = qword_1EC21BCD0;
  if (!qword_1EC21BCD0)
  {
    result = swift_getWitnessTable(byte_1C758AAD4, &_s20ElectedAssetIteratorV18DiagnosticReporterC10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC21BCD0);
  }

  return result;
}

unint64_t sub_1C7422F84()
{
  result = qword_1EC21BCE0;
  if (!qword_1EC21BCE0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Hastings.ClusterAssetElector.ElectedAssetIterator.ProcessingResult, &type metadata for Hastings.ClusterAssetElector.ElectedAssetIterator.ProcessingResult, v0, v1);
    atomic_store(result, &qword_1EC21BCE0);
  }

  return result;
}

void sub_1C7423000(uint64_t a1)
{
  sub_1C754FF1C();
  if (v1 <= 0x3F)
  {
    sub_1C7423284();
    if (v2 <= 0x3F)
    {
      sub_1C74232D4(319);
      if (v3 <= 0x3F)
      {
        sub_1C742338C(319);
        if (v4 <= 0x3F)
        {
          sub_1C74235F4(319, &qword_1EC21BD18, &qword_1EC2168C8, &unk_1C75656D0);
          if (v5 <= 0x3F)
          {
            sub_1C7423444(319, &qword_1EC21BD20, 255, type metadata accessor for Hastings.Asset, MEMORY[0x1E69E62F8]);
            if (v7 <= 0x3F)
            {
              sub_1C7423444(319, &qword_1EC21BD28, v6, type metadata accessor for Hastings.ClusterAssetElector.ElectedAssetIterator.DiagnosticReporter, MEMORY[0x1E69E6720]);
              if (v8 <= 0x3F)
              {
                sub_1C74234CC(319);
                if (v9 <= 0x3F)
                {
                  sub_1C7042C44();
                  if (v10 <= 0x3F)
                  {
                    sub_1C7423560(319);
                    if (v11 <= 0x3F)
                    {
                      sub_1C74235F4(319, &qword_1EC21BD40, &qword_1EC214E90, &unk_1C758A990);
                      if (v12 <= 0x3F)
                      {
                        sub_1C7423444(319, &qword_1EC21BD48, 255, type metadata accessor for Hastings.ClusterAssetElector.ElectedAssetIterator.CandidateAsset, MEMORY[0x1E69E62F8]);
                        if (v13 <= 0x3F)
                        {
                          sub_1C74235F4(319, &qword_1EC21BD50, &qword_1EC214E80, &qword_1C755C068);
                          if (v14 <= 0x3F)
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
          }
        }
      }
    }
  }
}

void sub_1C7423284()
{
  if (!qword_1EC21BCF8)
  {
    v0 = sub_1C7550C3C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC21BCF8);
    }
  }
}

void sub_1C74232D4(uint64_t a1)
{
  if (!qword_1EC21BD00)
  {
    type metadata accessor for Hastings.Feature(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC2168C8, &unk_1C75656D0);
    sub_1C7423CAC(&qword_1EC216778, type metadata accessor for Hastings.Feature, protocol conformance descriptor for Hastings.Feature);
    v1 = sub_1C755055C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC21BD00);
    }
  }
}

void sub_1C742338C(uint64_t a1)
{
  if (!qword_1EC21BD08)
  {
    type metadata accessor for Hastings.Asset(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC21BD10, &unk_1C758A980);
    sub_1C7423CAC(&qword_1EC216190, type metadata accessor for Hastings.Asset, protocol conformance descriptor for Hastings.Asset);
    v1 = sub_1C755055C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC21BD08);
    }
  }
}

void sub_1C7423444(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = a4(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1C74234CC(uint64_t a1)
{
  if (!qword_1EC21BD30)
  {
    type metadata accessor for Hastings.Asset(255);
    sub_1C7423CAC(&qword_1EC216190, type metadata accessor for Hastings.Asset, protocol conformance descriptor for Hastings.Asset);
    v1 = sub_1C755101C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC21BD30);
    }
  }
}

void sub_1C7423560(uint64_t a1)
{
  if (!qword_1EC21BD38)
  {
    type metadata accessor for Hastings.Feature(255);
    sub_1C7423CAC(&qword_1EC216778, type metadata accessor for Hastings.Feature, protocol conformance descriptor for Hastings.Feature);
    v1 = sub_1C755101C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC21BD38);
    }
  }
}

void sub_1C74235F4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_1C7550C3C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  if (*(*(v7 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v7);
  }

  else
  {
    v9 = *(a1 + *(a3 + 20));
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    return (v9 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_1C742381C(uint64_t a1)
{
  type metadata accessor for Hastings.Asset(319);
  if (v1 <= 0x3F)
  {
    sub_1C7423560(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

_BYTE *_s20ElectedAssetIteratorV16ProcessingResultOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *_s20ElectedAssetIteratorV18DiagnosticReporterC10CodingKeysOwst(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C7423A34()
{
  result = qword_1EC21BD68;
  if (!qword_1EC21BD68)
  {
    result = swift_getWitnessTable(byte_1C758AAAC, &_s20ElectedAssetIteratorV18DiagnosticReporterC10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC21BD68);
  }

  return result;
}

unint64_t sub_1C7423A8C()
{
  result = qword_1EC21BD70;
  if (!qword_1EC21BD70)
  {
    result = swift_getWitnessTable(byte_1C758AA1C, &_s20ElectedAssetIteratorV18DiagnosticReporterC10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC21BD70);
  }

  return result;
}

unint64_t sub_1C7423AE4()
{
  result = qword_1EC21BD78;
  if (!qword_1EC21BD78)
  {
    result = swift_getWitnessTable(byte_1C758AA44, &_s20ElectedAssetIteratorV18DiagnosticReporterC10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC21BD78);
  }

  return result;
}

uint64_t sub_1C7423B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BD98, &qword_1C758AB38);
  v12 = sub_1C7099594(&qword_1EC21BDA0, &qword_1EC21BD98, &qword_1C758AB38, MEMORY[0x1E69E6CF8]);
  *&v10 = a2;
  *(&v10 + 1) = a3;
  v8 = *a4;
  *(v8 + 16) = a1 + 1;
  return sub_1C6F699F8(&v10, v8 + 40 * a1 + 32);
}

uint64_t sub_1C7423C0C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1C6F699F8(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_1C7423CAC(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t OUTLINED_FUNCTION_21_57(uint64_t a1)
{
  *(v1 + 4) = a1;
  *(v1 + 12) = 2080;

  return sub_1C75504FC();
}

void OUTLINED_FUNCTION_32_39(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t OUTLINED_FUNCTION_42_36()
{

  return sub_1C75504FC();
}

uint64_t OUTLINED_FUNCTION_43_36()
{
}

void OUTLINED_FUNCTION_60_24()
{
  v2 = *(v0 - 152);
  *(v0 - 160) = *(v0 - 160);
  *(v0 - 152) = v2;

  JUMPOUT(0x1CCA5CD70);
}

BOOL OUTLINED_FUNCTION_64_20()
{

  return os_log_type_enabled(v0, v1);
}

void OUTLINED_FUNCTION_88_17()
{

  sub_1C6FB0EFC();
}

void *OUTLINED_FUNCTION_89_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{

  return sub_1C7550FEC();
}

uint64_t AlchemistConstants.OutputType.hashValue.getter()
{
  v1 = *v0;
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](v1);
  return sub_1C7551FAC();
}

uint64_t sub_1C7423FD8()
{
  result = sub_1C755201C();
  qword_1EC21BDB8 = result;
  unk_1EC21BDC0 = v1;
  return result;
}

uint64_t static AlchemistConstants.smkDepthPulseCycleTimeInSeconds.getter()
{
  if (qword_1EC2140E0 != -1)
  {
    swift_once();
  }

  return qword_1EC21BDB8;
}

unint64_t sub_1C7424058()
{
  result = qword_1EC21BDC8;
  if (!qword_1EC21BDC8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AlchemistConstants.OutputType, &type metadata for AlchemistConstants.OutputType, v0, v1);
    atomic_store(result, &qword_1EC21BDC8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AlchemistConstants(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for AlchemistConstants.OutputType(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1C7424234(uint64_t a1, uint64_t (*a2)(uint64_t), double a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v30 = MEMORY[0x1E69E7CC0];
    v29 = *(a1 + 16);
    sub_1C716DA70(0, v3, 0);
    v8 = a2(a1);
    v10 = v9;
    v11 = v29;
    v12 = 0;
    v13 = a1 + 64;
    v14 = 1;
    v15 = -2;
    if ((v8 & 0x8000000000000000) == 0)
    {
      while (v8 < v14 << *(a1 + 32))
      {
        v16 = v8 >> 6;
        v17 = v14 << v8;
        if ((*(v13 + 8 * (v8 >> 6)) & (v14 << v8)) == 0)
        {
          goto LABEL_23;
        }

        if (*(a1 + 36) != v10)
        {
          goto LABEL_24;
        }

        v18 = *(*(a1 + 56) + 8 * v8);
        v20 = *(v30 + 16);
        v19 = *(v30 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_1C716DA70(v19 > 1, v20 + 1, 1);
          OUTLINED_FUNCTION_14_66();
        }

        *(v30 + 16) = v20 + 1;
        *(v30 + 8 * v20 + 32) = (v18 - a3) * (v18 - a3);
        v21 = v14 << *(a1 + 32);
        if (v8 >= v21)
        {
          goto LABEL_25;
        }

        v22 = *(v13 + 8 * v16);
        if ((v22 & v17) == 0)
        {
          goto LABEL_26;
        }

        if (*(a1 + 36) != v10)
        {
          goto LABEL_27;
        }

        v23 = v22 & (v15 << (v8 & 0x3F));
        if (v23)
        {
          v21 = __clz(__rbit64(v23)) | v8 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v24 = v16 << 6;
          v25 = v16 + 1;
          v26 = (a1 + 72 + 8 * v16);
          while (v25 < (v21 + 63) >> 6)
          {
            v28 = *v26++;
            v27 = v28;
            v24 += 64;
            ++v25;
            if (v28)
            {
              sub_1C6F9ED50(v8, v10, v7 & 1);
              OUTLINED_FUNCTION_14_66();
              v21 = __clz(__rbit64(v27)) + v24;
              goto LABEL_18;
            }
          }

          sub_1C6F9ED50(v8, v10, v7 & 1);
          OUTLINED_FUNCTION_14_66();
        }

LABEL_18:
        if (++v12 == v11)
        {
          return;
        }

        v7 = 0;
        v10 = *(a1 + 36);
        v8 = v21;
        if (v21 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }
}

uint64_t sub_1C7424474(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v35 = a8;
  v44 = a1;
  v45 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  OUTLINED_FUNCTION_14_0();
  v46 = v12 - v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3_0();
  v48 = v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v33 - v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_14_0();
  v42 = v19 - v18;
  OUTLINED_FUNCTION_21_58();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3_0();
  v36 = v21;
  v37 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v33 - v22;
  v24 = sub_1C755106C();
  if (!v24)
  {
    return sub_1C7550BAC();
  }

  v47 = v24;
  v51 = sub_1C755199C();
  v38 = sub_1C75519AC();
  sub_1C755194C();
  result = sub_1C755105C();
  if ((v47 & 0x8000000000000000) == 0)
  {
    v33 = v10;
    v34 = a5;
    v26 = 0;
    v39 = (v48 + 16);
    v40 = v48 + 8;
    v41 = v8;
    while (!__OFADD__(v26, 1))
    {
      v48 = v26 + 1;
      v27 = sub_1C75510CC();
      (*v39)(v16);
      v27(v50, 0);
      v28 = v49;
      v44(v16, v46);
      if (v28)
      {
        v31 = OUTLINED_FUNCTION_18_62();
        v32(v31);
        (*(v36 + 8))(v23, v37);

        return (*(v33 + 32))(v35, v46, v34);
      }

      v49 = 0;
      v29 = OUTLINED_FUNCTION_18_62();
      v30(v29);
      sub_1C755198C();
      result = sub_1C755108C();
      ++v26;
      if (v48 == v47)
      {
        (*(v36 + 8))(v23, v37);
        return v51;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C742484C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

uint64_t sub_1C7424890(uint64_t result)
{
  v1 = 1 << *(result + 32);
  v2 = -1;
  if (v1 < 64)
  {
    v2 = ~(-1 << v1);
  }

  v3 = v2 & *(result + 64);
  if (v3)
  {
    v4 = 0;
    v5 = __clz(__rbit64(v3));
    v6 = (v3 - 1) & v3;
    v7 = (v1 + 63) >> 6;
LABEL_9:
    v11 = *(result + 56);
    v12 = *(v11 + 8 * v5);
    if (!v6)
    {
      goto LABEL_11;
    }

    do
    {
      v13 = v4;
LABEL_15:
      v14 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v15 = (v13 << 9) | (8 * v14);
      if (v12 < *(v11 + v15))
      {
        v12 = *(v11 + v15);
      }
    }

    while (v6);
LABEL_11:
    while (1)
    {
      v13 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v13 >= v7)
      {
        return *&v12;
      }

      v6 = *(result + 64 + 8 * v13);
      ++v4;
      if (v6)
      {
        v4 = v13;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v7 = (v1 + 63) >> 6;
    while (1)
    {
      v4 = v9 + 1;
      if (v9 + 1 >= v7)
      {
        return 0;
      }

      v10 = *(result + 72 + 8 * v9);
      v8 += 64;
      ++v9;
      if (v10)
      {
        v6 = (v10 - 1) & v10;
        v5 = __clz(__rbit64(v10)) + v8;
        goto LABEL_9;
      }
    }
  }

  return result;
}

uint64_t sub_1C742499C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - v11;
  v23 = *(a1 + 16);
  if (v23)
  {
    v22 = a2;
    v14 = *(v6 + 16);
    v15 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v14(&v22 - v11, v15, v4, v12);
    v16 = (v6 + 32);
    for (i = 1; v23 != i; ++i)
    {
      (v14)(v9, v15 + *(v6 + 72) * i, v4);
      sub_1C70BBF78();
      v18 = sub_1C755060C();
      v19 = *(v6 + 8);
      if (v18)
      {
        v19(v13, v4);
        (*v16)(v13, v9, v4);
      }

      else
      {
        v19(v9, v4);
      }
    }

    v20 = v22;
    (*v16)(v22, v13, v4);
    return __swift_storeEnumTagSinglePayload(v20, 0, 1, v4);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
  }
}

uint64_t sub_1C7424BCC(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return 0;
  }

  result = a1[4];
  v4 = v1 - 1;
  if (v1 != 1)
  {
    v5 = a1 + 5;
    do
    {
      v7 = *v5++;
      v6 = v7;
      if (result <= v7)
      {
        result = v6;
      }

      --v4;
    }

    while (v4);
  }

  return result;
}

unint64_t sub_1C7424C10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = v1 - 1;
    if (v1 != 1)
    {
      v4 = (a1 + 36);
      do
      {
        v5 = *v4++;
        v6 = v5;
        if (v2 < v5)
        {
          v2 = v6;
        }

        --v3;
      }

      while (v3);
    }

    v7 = LODWORD(v2);
  }

  else
  {
    v7 = 0;
  }

  return v7 | ((v1 == 0) << 32);
}

uint64_t static StoryGenerationUtilities.normalizedSoftmaxWithTemperature(_:temperature:)(uint64_t a1, double a2)
{
  if (a2 >= 0.0)
  {
    v5 = *(a1 + 16);
    if (v5)
    {
      v6 = 0;
      v7 = (a1 + 32);
      v8 = 0.0;
      do
      {
        v9 = v7[v6++];
        v8 = v8 + v9;
      }

      while (v5 != v6);
      v10 = 0;
      v11 = v8 / v5;
      v12 = 0.0;
      do
      {
        v13 = v7[v10++];
        v12 = v12 + (v13 - v11) * (v13 - v11);
      }

      while (v5 != v10);
      v14 = sqrt(v12 / v5);
      v15 = OUTLINED_FUNCTION_16_63();
      sub_1C716DA70(v15, v5, 0);
      v16 = v14 + 0.000001;
      v17 = v44;
      v18 = *(v44 + 16);
      do
      {
        v19 = *v7;
        v44 = v17;
        v20 = *(v17 + 24);
        if (v18 >= v20 >> 1)
        {
          v21 = OUTLINED_FUNCTION_15(v20);
          sub_1C716DA70(v21, v18 + 1, 1);
        }

        *(v17 + 16) = v18 + 1;
        *(v17 + 8 * v18 + 32) = (v19 - v11) / v16;
        ++v7;
        ++v18;
        --v5;
      }

      while (v5);
    }

    else
    {
      v17 = MEMORY[0x1E69E7CC0];
    }

    v22 = COERCE_DOUBLE(sub_1C742484C(v17));
    if (v23)
    {
      v24 = 0.0;
    }

    else
    {
      v24 = v22;
    }

    v25 = *(v17 + 16);
    if (v25)
    {
      v26 = OUTLINED_FUNCTION_16_63();
      sub_1C716DA70(v26, v25, 0);
      v27 = v44;
      v28 = *(v44 + 16);
      v29 = 32;
      do
      {
        v30 = exp((*(v17 + v29) - v24) / a2);
        v44 = v27;
        v31 = *(v27 + 24);
        if (v28 >= v31 >> 1)
        {
          v32 = OUTLINED_FUNCTION_15(v31);
          sub_1C716DA70(v32, v28 + 1, 1);
        }

        *(v27 + 16) = v28 + 1;
        *(v27 + 8 * v28 + 32) = v30;
        v29 += 8;
        ++v28;
        --v25;
      }

      while (v25);
    }

    else
    {

      v27 = MEMORY[0x1E69E7CC0];
    }

    v33 = *(v27 + 16);
    if (v33)
    {
      v34 = 0;
      v35 = 0.0;
      do
      {
        v36 = *(v27 + 8 * v34++ + 32);
        v35 = v35 + v36;
      }

      while (v33 != v34);
      v37 = OUTLINED_FUNCTION_16_63();
      sub_1C716DA70(v37, v33, 0);
      v2 = v44;
      v38 = *(v44 + 16);
      v39 = 32;
      do
      {
        v40 = *(v27 + v39);
        v41 = *(v44 + 24);
        if (v38 >= v41 >> 1)
        {
          v42 = OUTLINED_FUNCTION_15(v41);
          sub_1C716DA70(v42, v38 + 1, 1);
        }

        *(v44 + 16) = v38 + 1;
        *(v44 + 8 * v38 + 32) = v40 / v35;
        v39 += 8;
        ++v38;
        --v33;
      }

      while (v33);
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    sub_1C7196EF4();
    swift_allocError();
    *v4 = a2;
    *(v4 + 8) = 0;
    swift_willThrow();
  }

  return v2;
}

void static StoryGenerationUtilities.weightedSamplingWithoutReplacement<A, B>(items:probabilities:sampleSize:using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v52 = a6;
  v53 = a7;
  v13 = sub_1C7550BFC();
  if (v13 < 1)
  {
    OUTLINED_FUNCTION_21_58();
    sub_1C7550BAC();
    return;
  }

  v14 = v13;
  if (v13 != *(a2 + 16))
  {
    sub_1C7196EF4();
    swift_allocError();
    *v21 = 7;
    *(v21 + 8) = 2;
    swift_willThrow();
    return;
  }

  if (v13 >= a3)
  {
    v49 = a1;
    v50 = a3;
    v54 = MEMORY[0x1E69E7CC0];
    sub_1C716E164();
    v22 = 0;
    v23 = v54;
    v24 = a2 + 32;
    v51 = a5;
    do
    {
      if (v14 == v22)
      {
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v25 = sub_1C7426C50(v22, a4, *(v24 + 8 * v22));
      if (v7)
      {

        return;
      }

      v27 = v25;
      v28 = v26;
      v54 = v23;
      v30 = *(v23 + 16);
      v29 = *(v23 + 24);
      if (v30 >= v29 >> 1)
      {
        OUTLINED_FUNCTION_15(v29);
        sub_1C716E164();
        v23 = v54;
      }

      ++v22;
      *(v23 + 16) = v30 + 1;
      v31 = v23 + 16 * v30;
      *(v31 + 32) = v27;
      *(v31 + 40) = v28;
    }

    while (v14 != v22);
    v54 = v23;
    sub_1C75504FC();
    sub_1C7426874(&v54);

    sub_1C7033F04(v50, v54);
    v35 = v34 >> 1;
    v36 = (v34 >> 1) - v33;
    if (__OFSUB__(v34 >> 1, v33))
    {
      __break(1u);
    }

    else
    {
      v48[7] = 0;
      if (!v36)
      {
        v44 = swift_unknownObjectRelease();
        v39 = MEMORY[0x1E69E7CC0];
LABEL_28:
        v54 = v39;
        MEMORY[0x1EEE9AC00](v44);
        v48[2] = v51;
        v48[3] = v52;
        v48[4] = v53;
        v48[5] = v49;
        v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216650, &qword_1C7564ED0);
        v46 = sub_1C7426D84();
        sub_1C7424474(sub_1C7426D50, v48, v45, v51, MEMORY[0x1E69E73E0], v46, MEMORY[0x1E69E7410], v47);

        return;
      }

      v37 = v32;
      v38 = v33;
      v54 = MEMORY[0x1E69E7CC0];
      sub_1C716D854();
      if ((v36 & 0x8000000000000000) == 0)
      {
        v39 = v54;
        v40 = (v37 + 16 * v38);
        while (v38 < v35)
        {
          v41 = *v40;
          v54 = v39;
          v43 = *(v39 + 16);
          v42 = *(v39 + 24);
          if (v43 >= v42 >> 1)
          {
            OUTLINED_FUNCTION_15(v42);
            sub_1C716D854();
            v39 = v54;
          }

          *(v39 + 16) = v43 + 1;
          *(v39 + 8 * v43 + 32) = v41;
          ++v38;
          v40 += 2;
          if (v35 == v38)
          {
            v44 = swift_unknownObjectRelease();
            goto LABEL_28;
          }
        }

        goto LABEL_30;
      }
    }

    __break(1u);

    __break(1u);
    return;
  }

  if (qword_1EDD0DBE0 != -1)
  {
LABEL_31:
    OUTLINED_FUNCTION_2();
    swift_once();
  }

  v15 = sub_1C754FF1C();
  __swift_project_value_buffer(v15, qword_1EDD28D28);
  v16 = sub_1C754FEEC();
  v17 = sub_1C75511BC();
  v18 = OUTLINED_FUNCTION_72();
  if (os_log_type_enabled(v18, v19))
  {
    OUTLINED_FUNCTION_96_0();
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_1C6F5C000, v16, v17, "Returning all items as the sample size exceeds the population", v20, 2u);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  sub_1C75504FC();
}

uint64_t sub_1C742537C(uint64_t a1, uint64_t a2, unint64_t a3, double a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217360, &qword_1C7585CB0);
  v86 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v85 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v87 = &v79 - v10;
  v11 = sub_1C754DFFC();
  OUTLINED_FUNCTION_3_0();
  v88 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_14_0();
  v16 = v15 - v14;
  if (qword_1EDD0DBE8 != -1)
  {
LABEL_53:
    OUTLINED_FUNCTION_2_123(&qword_1EDD0DBE8);
  }

  v17 = qword_1EDD28D40;
  type metadata accessor for PerformanceMeasure(0);
  swift_allocObject();
  v18 = v17;
  v19 = PerformanceMeasure.init(name:log:)();
  if (qword_1EDD0DBE0 != -1)
  {
    OUTLINED_FUNCTION_2();
    swift_once();
  }

  v20 = sub_1C754FF1C();
  v21 = __swift_project_value_buffer(v20, qword_1EDD28D28);
  v22 = sub_1C754FEEC();
  v23 = sub_1C755117C();
  if (os_log_type_enabled(v22, v23))
  {
    OUTLINED_FUNCTION_96_0();
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_1C6F5C000, v22, v23, "Beginning GaussianResults", v24, 2u);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  v25 = *(a1 + 16);
  if (v25 < 2)
  {
    v34 = sub_1C75504FC();
    v35 = sub_1C71CD9D0(v34);
    v36 = v35;
    if ((a3 & 1) != 0 || *(v35 + 16) <= a2)
    {
      goto LABEL_51;
    }

    if (a2 < 0)
    {
      __break(1u);
LABEL_55:
      __break(1u);
    }

    else
    {
      v37 = OUTLINED_FUNCTION_21_58();
      v25 = sub_1C74B8130(v37, v38, v36);
      v21 = v39;
      a2 = v40;
      a3 = v41;

      if ((a3 & 1) == 0)
      {
LABEL_18:
        sub_1C739C57C(v25, v21, a2, a3);
        v36 = v42;
LABEL_40:
        swift_unknownObjectRelease();
        goto LABEL_51;
      }

      sub_1C7551DEC();
      OUTLINED_FUNCTION_141();
      swift_unknownObjectRetain_n();
      v70 = swift_dynamicCastClass();
      if (!v70)
      {
        swift_unknownObjectRelease();
        v70 = MEMORY[0x1E69E7CC0];
      }

      v71 = *(v70 + 16);

      if (!__OFSUB__(a3 >> 1, a2))
      {
        if (v71 == (a3 >> 1) - a2)
        {
          swift_dynamicCastClass();
          OUTLINED_FUNCTION_141();
          swift_unknownObjectRelease();
          if (!v36)
          {
            swift_unknownObjectRelease();
            v36 = MEMORY[0x1E69E7CC0];
          }

          goto LABEL_40;
        }

        goto LABEL_57;
      }
    }

    __break(1u);
LABEL_57:
    swift_unknownObjectRelease_n();
    goto LABEL_18;
  }

  v29 = OUTLINED_FUNCTION_5_95();
  if (!v30)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_12:
    OUTLINED_FUNCTION_109_2();
    v29 = OUTLINED_FUNCTION_19_70(v32);
  }

  while (v33);
  while (1)
  {
LABEL_9:
    v31 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
      goto LABEL_53;
    }

    if (v31 >= v28)
    {
      break;
    }

    ++v26;
    if (*(v27 + 8 * v31))
    {
      goto LABEL_12;
    }
  }

  v43 = v29 / v25;
  v44 = sub_1C75504FC();
  sub_1C7424234(v44, sub_1C7117368, v43);
  if (*(v45 + 16))
  {
    do
    {
      OUTLINED_FUNCTION_12_74();
    }

    while (!v46);
  }

  sqrt(0.0 / (v25 - 1));
  v47 = sub_1C7429208();
  v89 = sub_1C739C5A8(v47);
  sub_1C74267C0(&v89);

  v25 = v89;
  v48 = *(v89 + 16);
  if (v48)
  {
    v80 = v21;
    v81 = a3;
    v82 = a2;
    v83 = a1;
    v84 = v19;
    v89 = MEMORY[0x1E69E7CC0];
    sub_1C716E10C(0, v48, 0);
    v49 = v85;
    v50 = *(v86 + 80);
    v79 = v25;
    v51 = v25 + ((v50 + 32) & ~v50);
    v86 = *(v86 + 72);
    v36 = v89;
    v52 = (v88 + 32);
    do
    {
      v53 = v87;
      sub_1C74295B8(v51, v87);
      sub_1C7429628(v53, v49);
      v54 = *v52;
      (*v52)(v16, v49, v11);
      v89 = v36;
      v55 = v16;
      v56 = v11;
      v58 = *(v36 + 16);
      v57 = *(v36 + 24);
      v25 = v58 + 1;
      if (v58 >= v57 >> 1)
      {
        v59 = OUTLINED_FUNCTION_15(v57);
        sub_1C716E10C(v59, v58 + 1, 1);
        v49 = v85;
        v36 = v89;
      }

      *(v36 + 16) = v25;
      v54(v36 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v58, v55, v56);
      v51 += v86;
      --v48;
      v11 = v56;
      v16 = v55;
    }

    while (v48);

    a2 = v82;
    a3 = v81;
    v21 = v80;
    if (v81)
    {
      goto LABEL_48;
    }
  }

  else
  {

    v36 = MEMORY[0x1E69E7CC0];
    if (a3)
    {
      goto LABEL_48;
    }
  }

  if (*(v36 + 16) > a2)
  {
    if (a2 < 0)
    {
      goto LABEL_55;
    }

    v60 = OUTLINED_FUNCTION_21_58();
    v62 = sub_1C74B8130(v60, v61, v36);
    v64 = v63;
    v66 = v65;
    v68 = v67;

    if (v68)
    {
      sub_1C7551DEC();
      OUTLINED_FUNCTION_141();
      swift_unknownObjectRetain_n();
      v72 = swift_dynamicCastClass();
      if (!v72)
      {
        swift_unknownObjectRelease();
        v72 = MEMORY[0x1E69E7CC0];
      }

      v73 = *(v72 + 16);

      if (__OFSUB__(v68 >> 1, v66))
      {
        __break(1u);
      }

      else if (v73 == (v68 >> 1) - v66)
      {
        swift_dynamicCastClass();
        OUTLINED_FUNCTION_141();
        swift_unknownObjectRelease();
        if (!v36)
        {
          swift_unknownObjectRelease();
          v36 = MEMORY[0x1E69E7CC0];
        }

        goto LABEL_47;
      }

      swift_unknownObjectRelease_n();
    }

    sub_1C739C57C(v62, v64, v66, v68);
    v36 = v69;
LABEL_47:
    swift_unknownObjectRelease();
  }

LABEL_48:
  v74 = sub_1C754FEEC();
  v75 = sub_1C755117C();
  if (os_log_type_enabled(v74, v75))
  {
    OUTLINED_FUNCTION_96_0();
    v76 = swift_slowAlloc();
    *v76 = 0;
    _os_log_impl(&dword_1C6F5C000, v74, v75, "Finished GaussianResults", v76, 2u);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0](v77);
  }

LABEL_51:
  sub_1C6F85170();

  return v36;
}

uint64_t sub_1C7425AD0(uint64_t a1, uint64_t a2, char a3, double a4)
{
  if (qword_1EDD0DBE8 != -1)
  {
LABEL_53:
    OUTLINED_FUNCTION_2_123(&qword_1EDD0DBE8);
  }

  v7 = qword_1EDD28D40;
  type metadata accessor for PerformanceMeasure(0);
  swift_allocObject();
  v8 = v7;
  PerformanceMeasure.init(name:log:)();
  if (qword_1EDD0DBE0 != -1)
  {
    OUTLINED_FUNCTION_2();
    swift_once();
  }

  v9 = sub_1C754FF1C();
  __swift_project_value_buffer(v9, qword_1EDD28D28);
  v10 = sub_1C754FEEC();
  v11 = sub_1C755117C();
  if (os_log_type_enabled(v10, v11))
  {
    OUTLINED_FUNCTION_96_0();
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1C6F5C000, v10, v11, "Beginning GaussianResults", v12, 2u);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  v13 = *(a1 + 16);
  if (v13 < 2)
  {
    v22 = sub_1C75504FC();
    v23 = sub_1C71CD90C(v22);
    v24 = v23;
    if ((a3 & 1) != 0 || *(v23 + 16) <= a2)
    {
      goto LABEL_51;
    }

    if (a2 < 0)
    {
      __break(1u);
LABEL_55:
      __break(1u);
    }

    else
    {
      sub_1C74B833C();
      v26 = v25;
      v28 = v27;

      if ((v28 & 1) == 0)
      {
LABEL_18:
        sub_1C739C274();
        v24 = v29;
LABEL_40:
        swift_unknownObjectRelease();
        goto LABEL_51;
      }

      sub_1C7551DEC();
      swift_unknownObjectRetain_n();
      v64 = swift_dynamicCastClass();
      if (!v64)
      {
        swift_unknownObjectRelease();
        v64 = MEMORY[0x1E69E7CC0];
      }

      v65 = *(v64 + 16);

      if (!__OFSUB__(v28 >> 1, v26))
      {
        if (v65 == (v28 >> 1) - v26)
        {
          v24 = swift_dynamicCastClass();
          swift_unknownObjectRelease();
          if (!v24)
          {
            swift_unknownObjectRelease();
            v24 = MEMORY[0x1E69E7CC0];
          }

          goto LABEL_40;
        }

        goto LABEL_57;
      }
    }

    __break(1u);
LABEL_57:
    swift_unknownObjectRelease_n();
    goto LABEL_18;
  }

  v17 = OUTLINED_FUNCTION_5_95();
  if (!v18)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_12:
    OUTLINED_FUNCTION_109_2();
    v17 = OUTLINED_FUNCTION_19_70(v20);
  }

  while (v21);
  while (1)
  {
LABEL_9:
    v19 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_53;
    }

    if (v19 >= v16)
    {
      break;
    }

    ++v15;
    if (*(v14 + 8 * v19))
    {
      goto LABEL_12;
    }
  }

  v30 = v17 / v13;
  v31 = sub_1C75504FC();
  sub_1C7424234(v31, sub_1C7117368, v30);
  if (*(v32 + 16))
  {
    do
    {
      OUTLINED_FUNCTION_12_74();
    }

    while (!v33);
  }

  sqrt(0.0 / (v13 - 1));
  v34 = sub_1C7429208();
  sub_1C739CBBC(v34, v35, v36, v37, v38, v39, v40, v41, v74, v76, v78, v79, v80[0], v80[1], v80[2], v80[3], v80[4], v80[5], v80[6], v80[7], v80[8], v80[9], v80[10], v80[11], v80[12], v80[13]);
  v80[0] = v42;
  sub_1C7426918(v80);

  v47 = v80[0];
  v48 = *(v80[0] + 16);
  if (v48)
  {
    v75 = a3;
    v77 = a2;
    v80[0] = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C(0, v48, 0, v43, v44, v45, v46);
    v24 = v80[0];
    v49 = (v47 + 40);
    do
    {
      v50 = *(v49 - 1);
      v51 = *v49;
      v80[0] = v24;
      v53 = *(v24 + 16);
      v52 = *(v24 + 24);
      sub_1C75504FC();
      if (v53 >= v52 >> 1)
      {
        sub_1C6F7ED9C(v52 > 1, v53 + 1, 1, v54, v55, v56, v57);
        v24 = v80[0];
      }

      *(v24 + 16) = v53 + 1;
      v58 = v24 + 16 * v53;
      *(v58 + 32) = v50;
      *(v58 + 40) = v51;
      v49 += 3;
      --v48;
    }

    while (v48);

    a2 = v77;
    if (v75)
    {
      goto LABEL_48;
    }
  }

  else
  {

    v24 = MEMORY[0x1E69E7CC0];
    if (a3)
    {
      goto LABEL_48;
    }
  }

  if (*(v24 + 16) > a2)
  {
    if (a2 < 0)
    {
      goto LABEL_55;
    }

    sub_1C74B833C();
    v60 = v59;
    v62 = v61;

    if (v62)
    {
      sub_1C7551DEC();
      swift_unknownObjectRetain_n();
      v66 = swift_dynamicCastClass();
      if (!v66)
      {
        swift_unknownObjectRelease();
        v66 = MEMORY[0x1E69E7CC0];
      }

      v67 = *(v66 + 16);

      if (__OFSUB__(v62 >> 1, v60))
      {
        __break(1u);
      }

      else if (v67 == (v62 >> 1) - v60)
      {
        v24 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (!v24)
        {
          swift_unknownObjectRelease();
          v24 = MEMORY[0x1E69E7CC0];
        }

        goto LABEL_47;
      }

      swift_unknownObjectRelease_n();
    }

    sub_1C739C274();
    v24 = v63;
LABEL_47:
    swift_unknownObjectRelease();
  }

LABEL_48:
  v68 = sub_1C754FEEC();
  v69 = sub_1C755117C();
  v70 = OUTLINED_FUNCTION_72();
  if (os_log_type_enabled(v70, v71))
  {
    OUTLINED_FUNCTION_96_0();
    v72 = swift_slowAlloc();
    *v72 = 0;
    _os_log_impl(&dword_1C6F5C000, v68, v69, "Finished GaussianResults", v72, 2u);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

LABEL_51:
  sub_1C6F85170();

  return v24;
}

uint64_t static StoryGenerationUtilities.gaussianResults<A>(from:comparator:maximumNumberOfResults:cumulativeDistributionThreshold:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, int a5, uint64_t a6, unint64_t a7, double a8)
{
  v66 = a2;
  v67 = a3;
  if (qword_1EDD0DBE8 != -1)
  {
    OUTLINED_FUNCTION_2_123(&qword_1EDD0DBE8);
  }

  v13 = qword_1EDD28D40;
  type metadata accessor for PerformanceMeasure(0);
  swift_allocObject();
  v14 = v13;
  v15 = PerformanceMeasure.init(name:log:)();
  if (qword_1EDD0DBE0 != -1)
  {
    OUTLINED_FUNCTION_2();
    swift_once();
  }

  v16 = sub_1C754FF1C();
  v68 = __swift_project_value_buffer(v16, qword_1EDD28D28);
  v17 = sub_1C754FEEC();
  v18 = sub_1C755117C();
  v19 = OUTLINED_FUNCTION_72();
  if (os_log_type_enabled(v19, v20))
  {
    OUTLINED_FUNCTION_96_0();
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_1C6F5C000, v17, v18, "Beginning GaussianResults", v21, 2u);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  v22 = sub_1C755050C();
  if (v22 < 2)
  {
    OUTLINED_FUNCTION_35();
    *&v72 = sub_1C75504FC();
    OUTLINED_FUNCTION_6_105();
    v32 = sub_1C75504EC();
    swift_getWitnessTable(MEMORY[0x1E69E5D90], v32);
    OUTLINED_FUNCTION_35();
    v33 = sub_1C7550C4C();
    if ((a5 & 1) == 0 && sub_1C7550BFC() > a4)
    {
      v71 = a4;
      OUTLINED_FUNCTION_6_105();
      v34 = sub_1C7550C3C();
      v35 = OUTLINED_FUNCTION_1_133();
      swift_getWitnessTable(v35, v34);
      OUTLINED_FUNCTION_15_77();
      sub_1C755109C();
      v69 = v72;
      v70 = v73;
      OUTLINED_FUNCTION_6_105();
      v36 = sub_1C75515DC();
      OUTLINED_FUNCTION_4_104(v36);
      OUTLINED_FUNCTION_35();
      v33 = sub_1C7550C4C();
    }
  }

  else
  {
    v23 = v22;
    v64 = a5;
    v62 = a4;
    v65 = v15;
    v24 = MEMORY[0x1E69E63B0];
    *&v69 = sub_1C755053C();
    v71 = 0;
    OUTLINED_FUNCTION_6_105();
    v25 = sub_1C755051C();
    swift_getWitnessTable(MEMORY[0x1E69E5DE8], v25);
    OUTLINED_FUNCTION_15_77();
    v26 = sub_1C75509FC();
    v27 = *&v72 / v23;
    v63 = v69;
    *&v72 = v69;
    *&v28 = MEMORY[0x1EEE9AC00](v26).n128_u64[0];
    v60 = *&v27;
    WitnessTable = swift_getWitnessTable(MEMORY[0x1E69E5DF0], v25, v28);
    if (*(sub_1C7424474(sub_1C7426DE8, &v58, v25, v24, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v30) + 16))
    {
      do
      {
        OUTLINED_FUNCTION_12_74();
      }

      while (!v31);
    }

    sqrt(0.0 / (v23 - 1));
    v38 = MEMORY[0x1EEE9AC00](v37).n128_u64[0];
    v58 = *&v27;
    v59 = v38;
    v60 = *&a8;
    MEMORY[0x1EEE9AC00](v39);
    sub_1C75504FC();
    *&v72 = sub_1C755052C();
    MEMORY[0x1EEE9AC00](v72);
    v58 = a6;
    v59 = a7;
    v60 = v66;
    v61 = v67;
    OUTLINED_FUNCTION_6_105();
    v40 = sub_1C755055C();
    swift_getWitnessTable(MEMORY[0x1E69E5E50], v40);
    v41 = sub_1C7550A0C();

    *&v72 = v41;
    MEMORY[0x1EEE9AC00](v42);
    v60 = a6;
    v61 = a7;
    swift_getTupleTypeMetadata2();
    v43 = sub_1C7550C3C();
    v44 = OUTLINED_FUNCTION_1_133();
    v45 = swift_getWitnessTable(v44, v43);
    v47 = sub_1C7424474(sub_1C7426E6C, &v58, v43, a6, MEMORY[0x1E69E73E0], v45, MEMORY[0x1E69E7410], v46);

    if ((v64 & 1) == 0 && sub_1C7550BFC() > v62)
    {
      *&v69 = v47;
      v71 = v62;
      OUTLINED_FUNCTION_6_105();
      v48 = sub_1C7550C3C();
      v49 = OUTLINED_FUNCTION_1_133();
      swift_getWitnessTable(v49, v48);
      OUTLINED_FUNCTION_15_77();
      sub_1C755109C();
      v69 = v72;
      v70 = v73;
      OUTLINED_FUNCTION_6_105();
      v50 = sub_1C75515DC();
      OUTLINED_FUNCTION_4_104(v50);
      OUTLINED_FUNCTION_35();
      v47 = sub_1C7550C4C();
    }

    v51 = sub_1C754FEEC();
    v52 = sub_1C755117C();
    v53 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v53, v54))
    {
      OUTLINED_FUNCTION_96_0();
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_1C6F5C000, v51, v52, "Finished GaussianResults", v55, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    *&v72 = v47;
    OUTLINED_FUNCTION_6_105();
    v56 = sub_1C7550C3C();
    swift_getWitnessTable(MEMORY[0x1E69E6328], v56);
    OUTLINED_FUNCTION_35();
    v33 = sub_1C7550C4C();
  }

  sub_1C6F85170();

  return v33;
}

void sub_1C74267C0(uint64_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217360, &qword_1C7585CB0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C7422C54();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  sub_1C7426E8C(v6);
  *a1 = v3;
}

uint64_t sub_1C7426874(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C7422C6C();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1C7426FD4(v6, &qword_1EC21BDD8, &qword_1C758AC10, sub_1C7427DEC, sub_1C7427310);
  *a1 = v2;
  return result;
}

uint64_t sub_1C7426918(void *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C7422DBC();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1C7426FD4(v6, &qword_1EC2182D0, &qword_1C7571178, sub_1C7428398, sub_1C742739C);
  *a1 = v2;
  return result;
}

long double static StoryGenerationUtilities.cumulativeNormalDistribution(for:mu:sigma:)(double a1, double a2, double a3)
{
  if (a3 <= 0.0)
  {
    v4 = a1 == a2;
    result = 0.0;
    if (v4)
    {
      return 1.0;
    }
  }

  else
  {
    result = erfc((a2 - a1) / a3 * 0.707106781) * 0.5;
    if (result > 1.0)
    {
      return 1.0;
    }
  }

  return result;
}

double sub_1C7426A1C@<D0>(double *a1@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  result = *a1 + *a2;
  *a3 = result;
  return result;
}

BOOL sub_1C7426A30(double a1, double a2, double a3, double a4)
{
  if (a3 <= 0.0)
  {
    v6 = a1 == a2;
    v5 = 0.0;
    if (v6)
    {
      v5 = 1.0;
    }
  }

  else
  {
    v5 = erfc((a2 - a1) / a3 * 0.707106781) * 0.5;
    if (v5 > 1.0)
    {
      v5 = 1.0;
    }
  }

  return v5 >= a4;
}

BOOL sub_1C7426AA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  v8 = *(swift_getTupleTypeMetadata2() + 48);
  v9 = *(a1 + v8);
  v10 = *(a2 + v8);
  if (v9 == v10)
  {
    return a3(a1, a2) & 1;
  }

  else
  {
    return v10 < v9;
  }
}

uint64_t sub_1C7426B38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v9 = v12 - v8;
  (*(v10 + 16))(v12 - v8, a1, v7);
  return (*(*(a2 - 8) + 32))(a3, v9, a2);
}

uint64_t sub_1C7426C50(uint64_t a1, uint64_t a2, double a3)
{
  if (a3 <= 0.0)
  {
    sub_1C7196EF4();
    swift_allocError();
    *v6 = a3;
    *(v6 + 8) = 1;
    swift_willThrow();
  }

  else
  {
    v3 = a1;
    sub_1C70AB55C();
    sub_1C70AB5B0();
    sub_1C755047C();
    v5 = v8;
    if (v8 <= 1.0e-10)
    {
      v5 = 1.0e-10;
    }

    log(v5);
  }

  return v3;
}

unint64_t sub_1C7426D84()
{
  result = qword_1EC21BDD0;
  if (!qword_1EC21BDD0)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC216650, &qword_1C7564ED0);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &qword_1EC21BDD0);
  }

  return result;
}

double sub_1C7426DE8@<D0>(double *a1@<X0>, double *a2@<X8>)
{
  result = (*a1 - *(v2 + 16)) * (*a1 - *(v2 + 16));
  *a2 = result;
  return result;
}

void sub_1C7426E8C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1C7551D7C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217360, &qword_1C7585CB0);
        v6 = sub_1C7550BBC();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217360, &qword_1C7585CB0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1C7427494(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1C74270F0(0, v2, 1, a1);
  }
}

uint64_t sub_1C7426FD4(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v10 = *(a1 + 8);
  result = sub_1C7551D7C();
  if (result < v10)
  {
    if (v10 >= -1)
    {
      v12 = result;
      v13 = v10 / 2;
      if (v10 <= 1)
      {
        v14 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
        v14 = sub_1C7550BBC();
        *(v14 + 16) = v13;
      }

      v15[0] = v14 + 32;
      v15[1] = v13;
      a4(v15, v16, a1, v12);
      *(v14 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v10 < 0)
  {
    goto LABEL_12;
  }

  if (v10)
  {
    return a5(0, v10, 1, a1);
  }

  return result;
}

void sub_1C74270F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217360, &qword_1C7585CB0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v29 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v29 - v16;
  v31 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v36 = v18;
    v30 = v19;
    v23 = v18 + v19 * a3;
    while (2)
    {
      v34 = v20;
      v35 = a3;
      v32 = v23;
      v33 = v22;
      do
      {
        sub_1C74295B8(v23, v17);
        sub_1C74295B8(v20, v13);
        v24 = *(v8 + 48);
        v25 = *&v17[v24];
        v26 = *&v13[v24];
        if (v25 == v26)
        {
          v27 = MEMORY[0x1CCA5A4B0](v17, v13);
        }

        else
        {
          v27 = v26 < v25;
        }

        sub_1C7429698(v13);
        sub_1C7429698(v17);
        if ((v27 & 1) == 0)
        {
          break;
        }

        if (!v36)
        {
          __break(1u);
          return;
        }

        sub_1C7429628(v23, v10);
        swift_arrayInitWithTakeFrontToBack();
        sub_1C7429628(v10, v20);
        v20 += v21;
        v23 += v21;
      }

      while (!__CFADD__(v22++, 1));
      a3 = v35 + 1;
      v20 = v34 + v30;
      v22 = v33 - 1;
      v23 = v32 + v30;
      if (v35 + 1 != v31)
      {
        continue;
      }

      break;
    }
  }
}

uint64_t sub_1C7427310(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3 - 16;
    v6 = result - a3;
    while (2)
    {
      v7 = (v4 + 16 * a3);
      v8 = *v7;
      v9 = v7[1];
      v10 = v6;
      v11 = v5;
      do
      {
        v12 = *(v11 + 8);
        v13 = *&v8 < *v11;
        if (v9 != v12)
        {
          v13 = v9 < v12;
        }

        if (!v13)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        *(v11 + 16) = *v11;
        *v11 = v8;
        *(v11 + 8) = v9;
        v11 -= 16;
      }

      while (!__CFADD__(v10++, 1));
      ++a3;
      v5 += 16;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1C742739C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3 - 24;
    v8 = result - a3;
    while (2)
    {
      v9 = v6 + 24 * v4;
      result = *v9;
      v10 = *(v9 + 8);
      v11 = *(v9 + 16);
      v12 = v8;
      v13 = v7;
      do
      {
        v14 = *(v13 + 16);
        if (v11 == v14)
        {
          if (result == *v13 && v10 == *(v13 + 8))
          {
            break;
          }

          result = sub_1C7551DBC();
          if ((result & 1) == 0)
          {
            break;
          }
        }

        else if (v14 >= v11)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *(v13 + 24);
        v10 = *(v13 + 32);
        v11 = *(v13 + 40);
        v16 = *(v13 + 16);
        *(v13 + 24) = *v13;
        *(v13 + 40) = v16;
        *v13 = result;
        *(v13 + 8) = v10;
        *(v13 + 16) = v11;
        v13 -= 24;
      }

      while (!__CFADD__(v12++, 1));
      ++v4;
      v7 += 24;
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

void sub_1C7427494(int64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v136 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217360, &qword_1C7585CB0);
  v144 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v140 = &v131 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v151 = &v131 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v131 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v131 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v146 = &v131 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v143 = &v131 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v135 = &v131 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v148 = a3;
  v24 = a3[1];
  if (v24 < 1)
  {
    v26 = MEMORY[0x1E69E7CC0];
LABEL_107:
    v27 = *v136;
    if (!*v136)
    {
      goto LABEL_147;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_109:
      v123 = (v26 + 16);
      for (i = *(v26 + 2); i >= 2; *v123 = i)
      {
        if (!*v148)
        {
          goto LABEL_144;
        }

        v125 = &v26[16 * i];
        v126 = *v125;
        v127 = &v123[2 * i];
        v128 = *(v127 + 1);
        v129 = v150;
        sub_1C74289C4(*v148 + *(v144 + 72) * *v125, *v148 + *(v144 + 72) * *v127, *v148 + *(v144 + 72) * v128, v27);
        v150 = v129;
        if (v129)
        {
          break;
        }

        if (v128 < v126)
        {
          goto LABEL_132;
        }

        if (i - 2 >= *v123)
        {
          goto LABEL_133;
        }

        *v125 = v126;
        *(v125 + 1) = v128;
        v130 = *v123 - i;
        if (*v123 < i)
        {
          goto LABEL_134;
        }

        i = *v123 - 1;
        sub_1C7423CF4(v127 + 16, v130, v127);
      }

LABEL_105:

      return;
    }

LABEL_141:
    v26 = sub_1C7420830();
    goto LABEL_109;
  }

  v132 = a4;
  v133 = &v131 - v23;
  v25 = 0;
  v26 = MEMORY[0x1E69E7CC0];
  v152 = v6;
  v27 = v143;
  v147 = v12;
  while (1)
  {
    v28 = v25;
    v29 = v25 + 1;
    v137 = v25;
    if (v25 + 1 < v24)
    {
      v141 = v24;
      v30 = *v148;
      v31 = *(v144 + 72);
      v149 = v25 + 1;
      v32 = v133;
      sub_1C74295B8(v30 + v31 * v29, v133);
      v145 = v31;
      v33 = v30 + v31 * v28;
      v34 = v135;
      sub_1C74295B8(v33, v135);
      v35 = *(v6 + 48);
      v36 = *(v32 + v35);
      v37 = *(v34 + v35);
      if (v36 == v37)
      {
        v38 = MEMORY[0x1CCA5A4B0](v32, v34);
        v34 = v135;
        LODWORD(v142) = v38;
      }

      else
      {
        LODWORD(v142) = v37 < v36;
      }

      v134 = v26;
      sub_1C7429698(v34);
      sub_1C7429698(v32);
      v39 = v28 + 2;
      v40 = v145 * (v28 + 2);
      v41 = v30 + v40;
      v42 = v149;
      v43 = v145 * v149;
      v44 = v30 + v145 * v149;
      do
      {
        v45 = v39;
        v46 = v42;
        v47 = v43;
        v48 = v40;
        v149 = v39;
        if (v39 >= v141)
        {
          break;
        }

        sub_1C74295B8(v41, v27);
        v49 = v27;
        v50 = v146;
        sub_1C74295B8(v44, v146);
        v51 = *(v6 + 48);
        v52 = *(v49 + v51);
        v53 = *(v50 + v51);
        v54 = v50;
        if (v52 == v53)
        {
          v55 = MEMORY[0x1CCA5A4B0](v49, v50);
          v54 = v146;
          v56 = v55;
        }

        else
        {
          v56 = v53 < v52;
        }

        v27 = v49;
        sub_1C7429698(v54);
        sub_1C7429698(v49);
        v57 = v56;
        v45 = v149;
        v39 = v149 + 1;
        v41 += v145;
        v44 += v145;
        v42 = v46 + 1;
        v43 = v47 + v145;
        v40 = v48 + v145;
        v6 = v152;
        v12 = v147;
      }

      while ((v142 & 1) == v57);
      if (v142)
      {
        v28 = v137;
        if (v45 < v137)
        {
          goto LABEL_138;
        }

        if (v137 >= v45)
        {
          v29 = v45;
          v26 = v134;
          goto LABEL_33;
        }

        v58 = v137 * v145;
        do
        {
          if (v28 != v46)
          {
            v59 = *v148;
            if (!*v148)
            {
              goto LABEL_145;
            }

            sub_1C7429628(v59 + v58, v140);
            v60 = v58 < v47 || v59 + v58 >= v59 + v48;
            if (v60)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v58 != v47)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1C7429628(v140, v59 + v47);
            v45 = v149;
            v27 = v143;
          }

          ++v28;
          v47 -= v145;
          v48 -= v145;
          v58 += v145;
          v61 = v28 < v46--;
        }

        while (v61);
        v29 = v45;
        v26 = v134;
        v6 = v152;
      }

      else
      {
        v29 = v45;
        v26 = v134;
      }

      v28 = v137;
    }

LABEL_33:
    v62 = v148[1];
    if (v29 < v62)
    {
      if (__OFSUB__(v29, v28))
      {
        goto LABEL_137;
      }

      if (v29 - v28 < v132)
      {
        break;
      }
    }

LABEL_54:
    if (v29 < v28)
    {
      goto LABEL_136;
    }

    v149 = v29;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C6FB17EC(0, *(v26 + 2) + 1, 1, v26);
      v26 = v121;
    }

    v76 = *(v26 + 2);
    v75 = *(v26 + 3);
    v77 = v76 + 1;
    v25 = v149;
    if (v76 >= v75 >> 1)
    {
      sub_1C6FB17EC(v75 > 1, v76 + 1, 1, v26);
      v25 = v149;
      v26 = v122;
    }

    *(v26 + 2) = v77;
    v78 = v26 + 32;
    v79 = &v26[16 * v76 + 32];
    *v79 = v137;
    *(v79 + 1) = v25;
    v145 = *v136;
    if (!v145)
    {
      goto LABEL_146;
    }

    if (v76)
    {
      while (1)
      {
        v80 = v77 - 1;
        v81 = &v78[16 * v77 - 16];
        v82 = &v26[16 * v77];
        if (v77 >= 4)
        {
          break;
        }

        if (v77 == 3)
        {
          v83 = *(v26 + 4);
          v84 = *(v26 + 5);
          v93 = __OFSUB__(v84, v83);
          v85 = v84 - v83;
          v86 = v93;
LABEL_74:
          if (v86)
          {
            goto LABEL_123;
          }

          v98 = *v82;
          v97 = *(v82 + 1);
          v99 = __OFSUB__(v97, v98);
          v100 = v97 - v98;
          v101 = v99;
          if (v99)
          {
            goto LABEL_126;
          }

          v102 = *(v81 + 1);
          v103 = v102 - *v81;
          if (__OFSUB__(v102, *v81))
          {
            goto LABEL_129;
          }

          if (__OFADD__(v100, v103))
          {
            goto LABEL_131;
          }

          if (v100 + v103 >= v85)
          {
            if (v85 < v103)
            {
              v80 = v77 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        if (v77 < 2)
        {
          goto LABEL_125;
        }

        v105 = *v82;
        v104 = *(v82 + 1);
        v93 = __OFSUB__(v104, v105);
        v100 = v104 - v105;
        v101 = v93;
LABEL_89:
        if (v101)
        {
          goto LABEL_128;
        }

        v107 = *v81;
        v106 = *(v81 + 1);
        v93 = __OFSUB__(v106, v107);
        v108 = v106 - v107;
        if (v93)
        {
          goto LABEL_130;
        }

        if (v108 < v100)
        {
          goto LABEL_103;
        }

LABEL_96:
        if (v80 - 1 >= v77)
        {
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
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
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
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
          goto LABEL_140;
        }

        if (!*v148)
        {
          goto LABEL_143;
        }

        v112 = v15;
        v113 = v26;
        v114 = &v78[16 * v80 - 16];
        v115 = *v114;
        v116 = v78;
        v117 = v80;
        v118 = &v78[16 * v80];
        v119 = *(v118 + 1);
        v120 = v150;
        sub_1C74289C4(*v148 + *(v144 + 72) * *v114, *v148 + *(v144 + 72) * *v118, *v148 + *(v144 + 72) * v119, v145);
        v150 = v120;
        if (v120)
        {
          goto LABEL_105;
        }

        if (v119 < v115)
        {
          goto LABEL_118;
        }

        v27 = *(v113 + 2);
        if (v117 > v27)
        {
          goto LABEL_119;
        }

        *v114 = v115;
        *(v114 + 1) = v119;
        if (v117 >= v27)
        {
          goto LABEL_120;
        }

        v77 = v27 - 1;
        sub_1C7423CF4(v118 + 16, v27 - 1 - v117, v118);
        v26 = v113;
        *(v113 + 2) = v27 - 1;
        v61 = v27 > 2;
        v27 = v143;
        v25 = v149;
        v78 = v116;
        v15 = v112;
        v12 = v147;
        if (!v61)
        {
          goto LABEL_103;
        }
      }

      v87 = &v78[16 * v77];
      v88 = *(v87 - 8);
      v89 = *(v87 - 7);
      v93 = __OFSUB__(v89, v88);
      v90 = v89 - v88;
      if (v93)
      {
        goto LABEL_121;
      }

      v92 = *(v87 - 6);
      v91 = *(v87 - 5);
      v93 = __OFSUB__(v91, v92);
      v85 = v91 - v92;
      v86 = v93;
      if (v93)
      {
        goto LABEL_122;
      }

      v94 = *(v82 + 1);
      v95 = v94 - *v82;
      if (__OFSUB__(v94, *v82))
      {
        goto LABEL_124;
      }

      v93 = __OFADD__(v85, v95);
      v96 = v85 + v95;
      if (v93)
      {
        goto LABEL_127;
      }

      if (v96 >= v90)
      {
        v110 = *v81;
        v109 = *(v81 + 1);
        v93 = __OFSUB__(v109, v110);
        v111 = v109 - v110;
        if (v93)
        {
          goto LABEL_135;
        }

        if (v85 < v111)
        {
          v80 = v77 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_74;
    }

LABEL_103:
    v24 = v148[1];
    v6 = v152;
    if (v25 >= v24)
    {
      goto LABEL_107;
    }
  }

  v63 = v28 + v132;
  if (__OFADD__(v28, v132))
  {
    goto LABEL_139;
  }

  if (v63 >= v62)
  {
    v63 = v148[1];
  }

  if (v63 < v28)
  {
LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  if (v29 == v63)
  {
    goto LABEL_54;
  }

  v134 = v26;
  v64 = *v148;
  v65 = *(v144 + 72);
  v66 = *v148 + v65 * (v29 - 1);
  v67 = -v65;
  v68 = v28 - v29;
  v138 = v65;
  v139 = v63;
  v69 = v64 + v29 * v65;
LABEL_42:
  v149 = v29;
  v141 = v69;
  v142 = v68;
  v145 = v66;
  while (1)
  {
    sub_1C74295B8(v69, v15);
    sub_1C74295B8(v66, v12);
    v70 = *(v6 + 48);
    v71 = *&v15[v70];
    v72 = *&v12[v70];
    if (v71 == v72)
    {
      v73 = MEMORY[0x1CCA5A4B0](v15, v12);
    }

    else
    {
      v73 = v72 < v71;
    }

    sub_1C7429698(v12);
    sub_1C7429698(v15);
    if ((v73 & 1) == 0)
    {
      v6 = v152;
LABEL_52:
      v29 = v149 + 1;
      v66 = v145 + v138;
      v68 = v142 - 1;
      v69 = v141 + v138;
      if (v149 + 1 == v139)
      {
        v29 = v139;
        v26 = v134;
        v27 = v143;
        v28 = v137;
        goto LABEL_54;
      }

      goto LABEL_42;
    }

    if (!v64)
    {
      break;
    }

    v74 = v151;
    sub_1C7429628(v69, v151);
    v6 = v152;
    swift_arrayInitWithTakeFrontToBack();
    sub_1C7429628(v74, v66);
    v66 += v67;
    v69 += v67;
    v60 = __CFADD__(v68++, 1);
    if (v60)
    {
      goto LABEL_52;
    }
  }

  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
}

void sub_1C7427DEC(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_95:
    v100 = *result;
    if (!*result)
    {
      goto LABEL_136;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_97:
      v90 = (v8 + 16);
      for (i = *(v8 + 2); i >= 2; *v90 = i)
      {
        if (!*a3)
        {
          goto LABEL_133;
        }

        v92 = &v8[16 * i];
        v93 = *v92;
        v94 = &v90[2 * i];
        v95 = v94[1];
        sub_1C7428E30((*a3 + 16 * *v92), (*a3 + 16 * *v94), (*a3 + 16 * v95), v100);
        if (v5)
        {
          break;
        }

        if (v95 < v93)
        {
          goto LABEL_121;
        }

        if (i - 2 >= *v90)
        {
          goto LABEL_122;
        }

        *v92 = v93;
        *(v92 + 1) = v95;
        v96 = *v90 - i;
        if (*v90 < i)
        {
          goto LABEL_123;
        }

        i = *v90 - 1;
        memmove(v94, v94 + 2, 16 * v96);
      }

LABEL_105:

      return;
    }

LABEL_130:
    v8 = sub_1C7420830();
    goto LABEL_97;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v97 = a4;
  while (1)
  {
    v9 = v7 + 1;
    if (v7 + 1 < v6)
    {
      v10 = *a3 + 16 * v9;
      v11 = *v10;
      v12 = *(v10 + 8);
      v13 = *a3 + 16 * v7;
      v14 = 16 * v7;
      v15 = *(v13 + 8);
      v16 = *v10 < *v13;
      if (v12 != v15)
      {
        v16 = v12 < v15;
      }

      v17 = (v13 + 40);
      v18 = v7 + 2;
      while (1)
      {
        v19 = v18;
        if (++v9 >= v6)
        {
          break;
        }

        v20 = *(v17 - 1);
        v21 = *v17;
        v17 += 2;
        v22 = v21;
        v23 = v20 >= v11;
        v24 = v21 >= v12;
        if (v21 == v12)
        {
          v25 = v23;
        }

        else
        {
          v25 = v24;
        }

        v18 = v19 + 1;
        v12 = v22;
        v11 = v20;
        if (v16 == v25)
        {
          if (!v16)
          {
            goto LABEL_25;
          }

          goto LABEL_15;
        }
      }

      v9 = v6;
      if (!v16)
      {
        goto LABEL_25;
      }

LABEL_15:
      if (v9 < v7)
      {
        goto LABEL_127;
      }

      if (v7 < v9)
      {
        if (v6 >= v19)
        {
          v6 = v19;
        }

        v26 = 16 * v6;
        v27 = v9;
        v28 = v7;
        do
        {
          if (v28 != --v27)
          {
            v29 = *a3;
            if (!*a3)
            {
              goto LABEL_134;
            }

            v30 = (v29 + v14);
            v31 = v29 + v26;
            v32 = *v30;
            v33 = v30[1];
            *v30 = *(v31 - 16);
            *(v31 - 16) = v32;
            *(v31 - 8) = v33;
          }

          ++v28;
          v26 -= 16;
          v14 += 16;
        }

        while (v28 < v27);
        v6 = a3[1];
      }
    }

LABEL_25:
    if (v9 < v6)
    {
      if (__OFSUB__(v9, v7))
      {
        goto LABEL_126;
      }

      if (v9 - v7 < a4)
      {
        break;
      }
    }

LABEL_43:
    if (v9 < v7)
    {
      goto LABEL_125;
    }

    v99 = v9;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C6FB17EC(0, *(v8 + 2) + 1, 1, v8);
      v8 = v88;
    }

    v46 = *(v8 + 2);
    v45 = *(v8 + 3);
    v47 = v46 + 1;
    if (v46 >= v45 >> 1)
    {
      sub_1C6FB17EC(v45 > 1, v46 + 1, 1, v8);
      v8 = v89;
    }

    *(v8 + 2) = v47;
    v48 = v8 + 32;
    v49 = &v8[16 * v46 + 32];
    *v49 = v7;
    *(v49 + 1) = v9;
    v100 = *result;
    if (!*result)
    {
      goto LABEL_135;
    }

    if (v46)
    {
      while (1)
      {
        v50 = v47 - 1;
        v51 = &v48[16 * v47 - 16];
        v52 = &v8[16 * v47];
        if (v47 >= 4)
        {
          break;
        }

        if (v47 == 3)
        {
          v53 = *(v8 + 4);
          v54 = *(v8 + 5);
          v63 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          v56 = v63;
LABEL_63:
          if (v56)
          {
            goto LABEL_112;
          }

          v68 = *v52;
          v67 = *(v52 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_115;
          }

          v72 = *(v51 + 1);
          v73 = v72 - *v51;
          if (__OFSUB__(v72, *v51))
          {
            goto LABEL_118;
          }

          if (__OFADD__(v70, v73))
          {
            goto LABEL_120;
          }

          if (v70 + v73 >= v55)
          {
            if (v55 < v73)
            {
              v50 = v47 - 2;
            }

            goto LABEL_85;
          }

          goto LABEL_78;
        }

        if (v47 < 2)
        {
          goto LABEL_114;
        }

        v75 = *v52;
        v74 = *(v52 + 1);
        v63 = __OFSUB__(v74, v75);
        v70 = v74 - v75;
        v71 = v63;
LABEL_78:
        if (v71)
        {
          goto LABEL_117;
        }

        v77 = *v51;
        v76 = *(v51 + 1);
        v63 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v63)
        {
          goto LABEL_119;
        }

        if (v78 < v70)
        {
          goto LABEL_92;
        }

LABEL_85:
        if (v50 - 1 >= v47)
        {
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
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v82 = &v48[16 * v50 - 16];
        v83 = *v82;
        v84 = &v48[16 * v50];
        v85 = *(v84 + 1);
        sub_1C7428E30((*a3 + 16 * *v82), (*a3 + 16 * *v84), (*a3 + 16 * v85), v100);
        if (v5)
        {
          goto LABEL_105;
        }

        if (v85 < v83)
        {
          goto LABEL_107;
        }

        v5 = v8;
        v86 = *(v8 + 2);
        if (v50 > v86)
        {
          goto LABEL_108;
        }

        *v82 = v83;
        *(v82 + 1) = v85;
        if (v50 >= v86)
        {
          goto LABEL_109;
        }

        v47 = v86 - 1;
        sub_1C7423CF4(v84 + 16, v86 - 1 - v50, &v48[16 * v50]);
        *(v5 + 2) = v86 - 1;
        v87 = v86 > 2;
        v8 = v5;
        v5 = 0;
        if (!v87)
        {
          goto LABEL_92;
        }
      }

      v57 = &v48[16 * v47];
      v58 = *(v57 - 8);
      v59 = *(v57 - 7);
      v63 = __OFSUB__(v59, v58);
      v60 = v59 - v58;
      if (v63)
      {
        goto LABEL_110;
      }

      v62 = *(v57 - 6);
      v61 = *(v57 - 5);
      v63 = __OFSUB__(v61, v62);
      v55 = v61 - v62;
      v56 = v63;
      if (v63)
      {
        goto LABEL_111;
      }

      v64 = *(v52 + 1);
      v65 = v64 - *v52;
      if (__OFSUB__(v64, *v52))
      {
        goto LABEL_113;
      }

      v63 = __OFADD__(v55, v65);
      v66 = v55 + v65;
      if (v63)
      {
        goto LABEL_116;
      }

      if (v66 >= v60)
      {
        v80 = *v51;
        v79 = *(v51 + 1);
        v63 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v63)
        {
          goto LABEL_124;
        }

        if (v55 < v81)
        {
          v50 = v47 - 2;
        }

        goto LABEL_85;
      }

      goto LABEL_63;
    }

LABEL_92:
    v6 = a3[1];
    v7 = v99;
    a4 = v97;
    if (v99 >= v6)
    {
      goto LABEL_95;
    }
  }

  if (__OFADD__(v7, a4))
  {
    goto LABEL_128;
  }

  if (v7 + a4 < v6)
  {
    v6 = v7 + a4;
  }

  if (v6 < v7)
  {
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  if (v9 == v6)
  {
    goto LABEL_43;
  }

  v34 = *a3;
  v35 = *a3 + 16 * v9 - 16;
  v36 = v7 - v9;
LABEL_34:
  v37 = (v34 + 16 * v9);
  v38 = *v37;
  v39 = v37[1];
  v40 = v36;
  v41 = v35;
  while (1)
  {
    v42 = *(v41 + 8);
    v43 = *&v38 < *v41;
    if (v39 != v42)
    {
      v43 = v39 < v42;
    }

    if (!v43)
    {
LABEL_41:
      ++v9;
      v35 += 16;
      --v36;
      if (v9 == v6)
      {
        v9 = v6;
        goto LABEL_43;
      }

      goto LABEL_34;
    }

    if (!v34)
    {
      break;
    }

    *(v41 + 16) = *v41;
    *v41 = v38;
    *(v41 + 8) = v39;
    v41 -= 16;
    if (__CFADD__(v40++, 1))
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
}

void sub_1C7428398(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_109:
    v101 = *result;
    if (!*result)
    {
      goto LABEL_150;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_111:
      v91 = v6 + 16;
      v92 = *(v6 + 2);
      while (v92 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_147;
        }

        v93 = v6;
        v94 = &v6[16 * v92];
        v95 = *v94;
        v96 = &v91[2 * v92];
        v97 = v96[1];
        sub_1C7428FEC((*a3 + 24 * *v94), (*a3 + 24 * *v96), *a3 + 24 * v97, v101);
        if (v103)
        {
          break;
        }

        if (v97 < v95)
        {
          goto LABEL_135;
        }

        if (v92 - 2 >= *v91)
        {
          goto LABEL_136;
        }

        *v94 = v95;
        *(v94 + 1) = v97;
        v98 = *v91 - v92;
        if (*v91 < v92)
        {
          goto LABEL_137;
        }

        v103 = 0;
        v92 = *v91 - 1;
        memmove(v96, v96 + 2, 16 * v98);
        *v91 = v92;
        v6 = v93;
      }

LABEL_119:

      return;
    }

LABEL_144:
    v6 = sub_1C7420830();
    goto LABEL_111;
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v7 = v5++;
    if (v5 >= v4)
    {
      goto LABEL_33;
    }

    v8 = *a3;
    v9 = *a3 + 24 * v5;
    v10 = *(v9 + 16);
    v11 = *a3 + 24 * v7;
    v12 = *(v11 + 16);
    if (v10 == v12)
    {
      if (*v9 == *v11 && *(v9 + 8) == *(v11 + 8))
      {
        v14 = 0;
      }

      else
      {
        v14 = sub_1C7551DBC();
      }
    }

    else
    {
      v14 = v12 < v10;
    }

    v5 = v7 + 2;
    v15 = v8 + 24 * v7;
    v16 = 24 * v7;
    v17 = (v15 + 64);
    while (v5 < v4)
    {
      v18 = *(v17 - 3);
      if (*v17 == v18)
      {
        if (*(v17 - 2) == *(v17 - 5) && *(v17 - 1) == *(v17 - 4))
        {
          if (v14)
          {
            goto LABEL_26;
          }

          goto LABEL_24;
        }

        v20 = sub_1C7551DBC();
      }

      else
      {
        v20 = v18 < *v17;
      }

      if ((v14 ^ v20))
      {
        break;
      }

LABEL_24:
      ++v5;
      v17 += 3;
    }

    if ((v14 & 1) == 0)
    {
      goto LABEL_33;
    }

LABEL_26:
    if (v5 < v7)
    {
      goto LABEL_141;
    }

    if (v7 < v5)
    {
      v21 = 24 * v5 - 8;
      v22 = v5;
      v23 = v7;
      do
      {
        if (v23 != --v22)
        {
          v24 = *a3;
          if (!*a3)
          {
            goto LABEL_148;
          }

          v25 = (v24 + v16);
          v26 = (v24 + v21);
          v27 = *v25;
          v28 = v25[1];
          v29 = v25[2];
          v30 = *v26;
          *v25 = *(v26 - 1);
          v25[2] = v30;
          *(v26 - 2) = v27;
          *(v26 - 1) = v28;
          *v26 = v29;
        }

        ++v23;
        v21 -= 24;
        v16 += 24;
      }

      while (v23 < v22);
    }

LABEL_33:
    v31 = a3[1];
    if (v5 >= v31)
    {
      goto LABEL_57;
    }

    if (__OFSUB__(v5, v7))
    {
      goto LABEL_140;
    }

    if (v5 - v7 >= a4)
    {
LABEL_57:
      if (v5 < v7)
      {
        goto LABEL_139;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB17EC(0, *(v6 + 2) + 1, 1, v6);
        v6 = v89;
      }

      v47 = *(v6 + 2);
      v46 = *(v6 + 3);
      v48 = v47 + 1;
      if (v47 >= v46 >> 1)
      {
        sub_1C6FB17EC(v46 > 1, v47 + 1, 1, v6);
        v6 = v90;
      }

      *(v6 + 2) = v48;
      v49 = v6 + 32;
      v50 = &v6[16 * v47 + 32];
      *v50 = v7;
      *(v50 + 1) = v5;
      v101 = *result;
      if (!*result)
      {
        goto LABEL_149;
      }

      if (!v47)
      {
LABEL_106:
        v4 = a3[1];
        if (v5 >= v4)
        {
          goto LABEL_109;
        }

        continue;
      }

      while (1)
      {
        v51 = v48 - 1;
        v52 = &v49[16 * v48 - 16];
        v53 = &v6[16 * v48];
        if (v48 >= 4)
        {
          break;
        }

        if (v48 == 3)
        {
          v54 = *(v6 + 4);
          v55 = *(v6 + 5);
          v64 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          v57 = v64;
LABEL_77:
          if (v57)
          {
            goto LABEL_126;
          }

          v69 = *v53;
          v68 = *(v53 + 1);
          v70 = __OFSUB__(v68, v69);
          v71 = v68 - v69;
          v72 = v70;
          if (v70)
          {
            goto LABEL_129;
          }

          v73 = *(v52 + 1);
          v74 = v73 - *v52;
          if (__OFSUB__(v73, *v52))
          {
            goto LABEL_132;
          }

          if (__OFADD__(v71, v74))
          {
            goto LABEL_134;
          }

          if (v71 + v74 >= v56)
          {
            if (v56 < v74)
            {
              v51 = v48 - 2;
            }

            goto LABEL_99;
          }

          goto LABEL_92;
        }

        if (v48 < 2)
        {
          goto LABEL_128;
        }

        v76 = *v53;
        v75 = *(v53 + 1);
        v64 = __OFSUB__(v75, v76);
        v71 = v75 - v76;
        v72 = v64;
LABEL_92:
        if (v72)
        {
          goto LABEL_131;
        }

        v78 = *v52;
        v77 = *(v52 + 1);
        v64 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v64)
        {
          goto LABEL_133;
        }

        if (v79 < v71)
        {
          goto LABEL_106;
        }

LABEL_99:
        if (v51 - 1 >= v48)
        {
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
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
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
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
          goto LABEL_143;
        }

        if (!*a3)
        {
          goto LABEL_146;
        }

        v83 = v6;
        v84 = &v49[16 * v51 - 16];
        v85 = *v84;
        v86 = &v49[16 * v51];
        v87 = *(v86 + 1);
        sub_1C7428FEC((*a3 + 24 * *v84), (*a3 + 24 * *v86), *a3 + 24 * v87, v101);
        if (v103)
        {
          goto LABEL_119;
        }

        if (v87 < v85)
        {
          goto LABEL_121;
        }

        v88 = *(v83 + 2);
        if (v51 > v88)
        {
          goto LABEL_122;
        }

        *v84 = v85;
        *(v84 + 1) = v87;
        if (v51 >= v88)
        {
          goto LABEL_123;
        }

        v103 = 0;
        v48 = v88 - 1;
        sub_1C7423CF4(v86 + 16, v88 - 1 - v51, &v49[16 * v51]);
        v6 = v83;
        *(v83 + 2) = v88 - 1;
        if (v88 <= 2)
        {
          goto LABEL_106;
        }
      }

      v58 = &v49[16 * v48];
      v59 = *(v58 - 8);
      v60 = *(v58 - 7);
      v64 = __OFSUB__(v60, v59);
      v61 = v60 - v59;
      if (v64)
      {
        goto LABEL_124;
      }

      v63 = *(v58 - 6);
      v62 = *(v58 - 5);
      v64 = __OFSUB__(v62, v63);
      v56 = v62 - v63;
      v57 = v64;
      if (v64)
      {
        goto LABEL_125;
      }

      v65 = *(v53 + 1);
      v66 = v65 - *v53;
      if (__OFSUB__(v65, *v53))
      {
        goto LABEL_127;
      }

      v64 = __OFADD__(v56, v66);
      v67 = v56 + v66;
      if (v64)
      {
        goto LABEL_130;
      }

      if (v67 >= v61)
      {
        v81 = *v52;
        v80 = *(v52 + 1);
        v64 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v64)
        {
          goto LABEL_138;
        }

        if (v56 < v82)
        {
          v51 = v48 - 2;
        }

        goto LABEL_99;
      }

      goto LABEL_77;
    }

    break;
  }

  if (__OFADD__(v7, a4))
  {
    goto LABEL_142;
  }

  if (v7 + a4 >= v31)
  {
    v32 = a3[1];
  }

  else
  {
    v32 = v7 + a4;
  }

  if (v32 < v7)
  {
LABEL_143:
    __break(1u);
    goto LABEL_144;
  }

  if (v5 == v32)
  {
    goto LABEL_57;
  }

  v33 = *a3;
  v34 = *a3 + 24 * v5 - 24;
  v35 = v7 - v5;
LABEL_43:
  v36 = (v33 + 24 * v5);
  v37 = *v36;
  v38 = *(v36 + 1);
  v39 = v36[2];
  v40 = v35;
  v41 = v34;
  while (1)
  {
    v42 = *(v41 + 16);
    if (v39 == v42)
    {
      v43 = *&v37 == *v41 && v38 == *(v41 + 8);
      if (v43 || (sub_1C7551DBC() & 1) == 0)
      {
LABEL_55:
        ++v5;
        v34 += 24;
        --v35;
        if (v5 == v32)
        {
          v5 = v32;
          goto LABEL_57;
        }

        goto LABEL_43;
      }
    }

    else if (v42 >= v39)
    {
      goto LABEL_55;
    }

    if (!v33)
    {
      break;
    }

    v37 = *(v41 + 24);
    v38 = *(v41 + 32);
    v39 = *(v41 + 40);
    v44 = *(v41 + 16);
    *(v41 + 24) = *v41;
    *(v41 + 40) = v44;
    *v41 = v37;
    *(v41 + 8) = v38;
    *(v41 + 16) = v39;
    v41 -= 24;
    if (__CFADD__(v40++, 1))
    {
      goto LABEL_55;
    }
  }

  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
}

void sub_1C74289C4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217360, &qword_1C7585CB0);
  MEMORY[0x1EEE9AC00](v55);
  v52 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v53 = &v49 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v49 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v49 - v15;
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    return;
  }

  v19 = a2 - a1;
  v20 = a2 - a1 == 0x8000000000000000 && v18 == -1;
  if (v20)
  {
    goto LABEL_67;
  }

  v21 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_68;
  }

  v23 = v19 / v18;
  v58 = a1;
  v57 = a4;
  v24 = v21 / v18;
  if (v19 / v18 >= v21 / v18)
  {
    sub_1C741E684(a2, v21 / v18, a4);
    v33 = a4 + v24 * v18;
    v34 = -v18;
    v35 = v33;
    v36 = v53;
    v54 = v34;
LABEL_40:
    v51 = a2 + v34;
    v37 = a3;
    v49 = v35;
    while (1)
    {
      if (v33 <= a4)
      {
        v58 = a2;
        v56 = v35;
        goto LABEL_65;
      }

      if (a2 <= a1)
      {
        break;
      }

      v50 = v35;
      v38 = v33 + v34;
      sub_1C74295B8(v33 + v34, v36);
      v39 = v52;
      sub_1C74295B8(v51, v52);
      v40 = *(v55 + 48);
      v41 = *(v36 + v40);
      v42 = *(v39 + v40);
      if (v41 == v42)
      {
        v43 = MEMORY[0x1CCA5A4B0](v36, v39);
      }

      else
      {
        v43 = v42 < v41;
      }

      v44 = v39;
      a3 = v37 + v54;
      sub_1C7429698(v44);
      sub_1C7429698(v36);
      if (v43)
      {
        if (v37 < a2 || a3 >= a2)
        {
          a2 = v51;
          swift_arrayInitWithTakeFrontToBack();
          v35 = v50;
          v36 = v53;
          v34 = v54;
        }

        else
        {
          v35 = v50;
          v20 = v37 == a2;
          v47 = v51;
          a2 = v51;
          v36 = v53;
          v34 = v54;
          if (!v20)
          {
            v48 = v50;
            swift_arrayInitWithTakeBackToFront();
            a2 = v47;
            v35 = v48;
          }
        }

        goto LABEL_40;
      }

      if (v37 < v33 || a3 >= v33)
      {
        swift_arrayInitWithTakeFrontToBack();
        v37 = a3;
        v33 = v38;
        v35 = v38;
        v36 = v53;
        v34 = v54;
      }

      else
      {
        v35 = v38;
        v20 = v33 == v37;
        v37 = a3;
        v33 = v38;
        v36 = v53;
        v34 = v54;
        if (!v20)
        {
          swift_arrayInitWithTakeBackToFront();
          v37 = a3;
          v33 = v38;
          v35 = v38;
        }
      }
    }

    v58 = a2;
    v56 = v49;
  }

  else
  {
    sub_1C741E684(a1, v19 / v18, a4);
    v25 = a4 + v23 * v18;
    v56 = v25;
    while (a4 < v25 && a2 < a3)
    {
      sub_1C74295B8(a2, v16);
      sub_1C74295B8(a4, v13);
      v27 = *(v55 + 48);
      v28 = *&v16[v27];
      v29 = *&v13[v27];
      if (v28 == v29)
      {
        v30 = MEMORY[0x1CCA5A4B0](v16, v13);
      }

      else
      {
        v30 = v29 < v28;
      }

      sub_1C7429698(v13);
      sub_1C7429698(v16);
      if (v30)
      {
        if (a1 < a2 || a1 >= a2 + v18)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v18;
      }

      else
      {
        if (a1 < a4 || a1 >= a4 + v18)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v57 = a4 + v18;
        a4 += v18;
      }

      a1 += v18;
      v58 = a1;
    }
  }

LABEL_65:
  sub_1C742088C(&v58, &v57, &v56);
}

uint64_t sub_1C7428E30(char *a1, char *a2, double *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_1C6F9EE08(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_32;
      }

      v12 = *(v6 + 1);
      v13 = *(v4 + 1);
      v14 = *v6 < *v4;
      if (v12 != v13)
      {
        v14 = v12 < v13;
      }

      if (!v14)
      {
        break;
      }

      v15 = v6;
      v16 = v7 == v6;
      v6 += 16;
      if (!v16)
      {
        goto LABEL_14;
      }

LABEL_15:
      v7 += 16;
    }

    v15 = v4;
    v16 = v7 == v4;
    v4 += 16;
    if (v16)
    {
      goto LABEL_15;
    }

LABEL_14:
    *v7 = *v15;
    goto LABEL_15;
  }

  sub_1C6F9EE08(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_17:
  v17 = v6 - 16;
  for (v5 -= 2; v10 > v4 && v6 > v7; v5 -= 2)
  {
    v19 = *(v10 - 1);
    v20 = *(v6 - 1);
    v21 = *(v10 - 2) < *(v6 - 2);
    if (v19 != v20)
    {
      v21 = v19 < v20;
    }

    if (v21)
    {
      v16 = v5 + 2 == v6;
      v6 -= 16;
      if (!v16)
      {
        *v5 = *v17;
        v6 = v17;
      }

      goto LABEL_17;
    }

    if (v10 != (v5 + 2))
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_32:
  v22 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v22])
  {
    memmove(v6, v4, 16 * v22);
  }

  return 1;
}

uint64_t sub_1C7428FEC(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 24;
  v9 = (a3 - a2) / 24;
  if (v8 < v9)
  {
    sub_1C7423D18(a1, (a2 - a1) / 24, a4);
    v10 = &v4[24 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v19 = v7;
        goto LABEL_41;
      }

      v12 = *(v6 + 2);
      v13 = *(v4 + 2);
      if (v12 == v13)
      {
        v14 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
        if (v14 || (sub_1C7551DBC() & 1) == 0)
        {
LABEL_13:
          v15 = v4;
          v14 = v7 == v4;
          v4 += 24;
          if (v14)
          {
            goto LABEL_15;
          }

LABEL_14:
          v16 = *v15;
          *(v7 + 2) = *(v15 + 2);
          *v7 = v16;
          goto LABEL_15;
        }
      }

      else if (v13 >= v12)
      {
        goto LABEL_13;
      }

      v15 = v6;
      v14 = v7 == v6;
      v6 += 24;
      if (!v14)
      {
        goto LABEL_14;
      }

LABEL_15:
      v7 += 24;
    }
  }

  sub_1C7423D18(a2, (a3 - a2) / 24, a4);
  v17 = &v4[24 * v9];
LABEL_21:
  v18 = 0;
  v19 = v6;
  v6 -= 24;
  while (1)
  {
    v10 = &v17[v18];
    if (&v17[v18] <= v4 || v19 <= v7)
    {
      break;
    }

    v21 = *(v10 - 1);
    v22 = *(v19 - 1);
    if (v21 == v22)
    {
      v23 = *(v10 - 3) == *(v19 - 3) && *(v10 - 2) == *(v19 - 2);
      if (!v23 && (sub_1C7551DBC() & 1) != 0)
      {
LABEL_38:
        v26 = (v5 + v18);
        v5 = v5 + v18 - 24;
        v17 += v18;
        if (v26 != v19)
        {
          v27 = *v6;
          *(v5 + 16) = *(v6 + 2);
          *v5 = v27;
        }

        goto LABEL_21;
      }
    }

    else if (v22 < v21)
    {
      goto LABEL_38;
    }

    if (v10 != (v5 + v18))
    {
      v24 = v5 + v18 - 24;
      v25 = *(v10 - 24);
      *(v24 + 16) = *(v10 - 1);
      *v24 = v25;
    }

    v18 -= 24;
  }

LABEL_41:
  v28 = (v10 - v4) / 24;
  if (v19 != v4 || v19 >= &v4[24 * v28])
  {
    memmove(v19, v4, 24 * v28);
  }

  return 1;
}

uint64_t sub_1C7429208()
{
  v1 = v0;
  OUTLINED_FUNCTION_13_82();
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = *(v2 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      swift_slowAlloc();
      OUTLINED_FUNCTION_8_86();
      sub_1C7429510(v11, v12, v13, v14);
      v1 = v15;
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      return v1;
    }
  }

  MEMORY[0x1EEE9AC00](v2);
  sub_1C71FAC38(0, v4, v16 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0));
  OUTLINED_FUNCTION_8_86();
  sub_1C7429370(v5, v6, v7, v8);
  if (!v0)
  {
    return v9;
  }

  swift_willThrow();
  return v1;
}

void sub_1C7429370(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_13_82();
  v10 = v9;
  v12 = v11;
  v13 = 0;
  v14 = 0;
  v15 = v8 + 64;
  v16 = 1 << *(v8 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v8 + 64);
  v19 = (v16 + 63) >> 6;
  while (v18)
  {
    v20 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
LABEL_11:
    v23 = v20 | (v14 << 6);
    v24 = *(*(a3 + 56) + 8 * v23);
    if (v5 <= 0.0)
    {
      if (v24 == v6)
      {
        goto LABEL_16;
      }

      if (v4 <= 0.0)
      {
LABEL_19:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        if (__OFADD__(v13++, 1))
        {
          __break(1u);
LABEL_22:
          a4(v12, v10, v13, a3);
          return;
        }
      }
    }

    else
    {
      v25 = erfc((v6 - v24) / v5 * 0.707106781) * 0.5;
      if (v25 > 1.0)
      {
LABEL_16:
        if (v4 <= 1.0)
        {
          goto LABEL_19;
        }
      }

      else if (v25 >= v4)
      {
        goto LABEL_19;
      }
    }
  }

  v21 = v14;
  while (1)
  {
    v14 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      goto LABEL_22;
    }

    v22 = *(v15 + 8 * v14);
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v18 = (v22 - 1) & v22;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1C7429510(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_13_82();
    v8 = v7;
    v9 = v6;
    v10 = v5;
    if (v6)
    {
      bzero(v5, 8 * v6);
    }

    sub_1C7429370(v10, v9, v8, a4);
  }
}

uint64_t sub_1C74295B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217360, &qword_1C7585CB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C7429628(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217360, &qword_1C7585CB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C7429698(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217360, &qword_1C7585CB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C742970C(void *__src, const void *a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(__srca, a2, sizeof(__srca));
  memcpy(v13, __src, sizeof(v13));
  if (sub_1C73A1B7C(v13) == 1)
  {
    sub_1C6F66C14(v13);
    memcpy(v9, __srca, sizeof(v9));
    v4 = sub_1C73A1B7C(v9);
    sub_1C6F66C14(v9);
    if (v4 == 1)
    {
      v5 = -1;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    sub_1C6F66C14(v13);
    memcpy(v9, __srca, sizeof(v9));
    v6 = sub_1C73A1B7C(v9);
    sub_1C6F66C14(v9);
    if (v6 == 1)
    {
      v5 = 0;
    }

    else
    {
      v5 = -1;
    }
  }

  memcpy(v9, __dst, sizeof(v9));
  memcpy(v10, __srca, sizeof(v10));
  sub_1C73A1EE0(__srca, v8);
  sub_1C73A1EE0(__dst, v8);
  sub_1C7030CDC(v9, &qword_1EC21B078, &unk_1C7585E40);
  return v5 & 1;
}

uint64_t sub_1C7429844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  *(v6 + 64) = a4;
  *(v6 + 72) = a5;
  *(v6 + 48) = a2;
  *(v6 + 56) = a3;
  *(v6 + 40) = a1;
  *(v6 + 80) = *(a3 + 16);
  v7 = *(a3 + 296);
  *(v6 + 96) = *(a3 + 208);
  *(v6 + 104) = v7;
  v8 = *a6;
  *(v6 + 152) = *(a6 + 4);
  v9 = a6[2];
  *(v6 + 112) = v8;
  *(v6 + 120) = v9;
  v10 = OUTLINED_FUNCTION_24_1();
  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C742989C(__n128 a1)
{
  if (PFOSVariantHasInternalDiagnostics() && *(*(v1 + 72) + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_shouldForceDiagnosticAsSeedOrFCS) != 1)
  {
    if (qword_1EDD07C00 != -1)
    {
      OUTLINED_FUNCTION_0_159(&qword_1EDD07C00);
    }

    v7 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v7, qword_1EDD289D8);
    v8 = sub_1C754FEEC();
    sub_1C755118C();
    OUTLINED_FUNCTION_16_1();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_37_0(v10);
      OUTLINED_FUNCTION_6(&dword_1C6F5C000, v11, v12, "Public files not saved, does not match the condition");
      OUTLINED_FUNCTION_23_3();
    }

    OUTLINED_FUNCTION_43();

    return v13();
  }

  else
  {
    v2 = *(v1 + 152);
    v4 = *(v1 + 112);
    v3 = *(v1 + 120);
    sub_1C742A1A8();
    *(v1 + 16) = v4;
    *(v1 + 24) = v2;
    *(v1 + 32) = v3;
    v5 = swift_task_alloc();
    *(v1 + 128) = v5;
    *v5 = v1;
    v5[1] = sub_1C7429A28;

    return sub_1C742A50C();
  }
}

uint64_t sub_1C7429A28()
{
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;
  v3 = *v0;
  *v2 = *v0;

  *(v1 + 136) = type metadata accessor for FreeformStory(0);
  v4 = swift_task_alloc();
  *(v1 + 144) = v4;
  *v4 = v3;
  v4[1] = sub_1C7429B94;

  return sub_1C742B450();
}

uint64_t sub_1C7429B94()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C7429C78()
{
  v7 = v0;
  v1 = v0[7];
  v6[0] = *(v0[6] + *(v0[17] + 44));
  sub_1C742BBF0();
  sub_1C742C508();
  memcpy(v6, (v1 + 216), sizeof(v6));
  ExtendedTokenCollection.allTokens.getter();
  sub_1C742C940();

  sub_1C742D380();
  if (qword_1EC214138 != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  os_unfair_lock_lock(&dword_1EC25B920);
  sub_1C742DD34(&qword_1EC25B928, v2);
  os_unfair_lock_unlock(&dword_1EC25B920);
  sub_1C742E018(v0[9], v3);
  OUTLINED_FUNCTION_43();

  return v4();
}

double sub_1C7429E14(const void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8, &qword_1C755FF40);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10[-v5];
  memcpy(v11, a1, sizeof(v11));
  v7 = sub_1C7550D5C();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a2;
  memcpy(v8 + 5, v11, 0x90uLL);

  sub_1C73A1EE0(v11, v10);
  sub_1C6FEB80C(0, 0, v6, &unk_1C758AFD8, v8);

  return result;
}

uint64_t sub_1C7429F40()
{
  result = sub_1C755068C();
  qword_1EC25B890 = result;
  *algn_1EC25B898 = v1;
  return result;
}

uint64_t sub_1C7429F70()
{
  result = sub_1C755068C();
  qword_1EC25B8A0 = result;
  *algn_1EC25B8A8 = v1;
  return result;
}

uint64_t sub_1C7429FA0()
{
  result = sub_1C755068C();
  qword_1EC25B8B0 = result;
  *algn_1EC25B8B8 = v1;
  return result;
}

uint64_t sub_1C7429FD0()
{
  result = sub_1C755068C();
  qword_1EC25B8C0 = result;
  *algn_1EC25B8C8 = v1;
  return result;
}

uint64_t sub_1C742A000()
{
  result = sub_1C755068C();
  qword_1EC25B8D0 = result;
  *algn_1EC25B8D8 = v1;
  return result;
}

uint64_t sub_1C742A030()
{
  result = sub_1C755068C();
  qword_1EC25B8E0 = result;
  *algn_1EC25B8E8 = v1;
  return result;
}

uint64_t sub_1C742A060()
{
  result = sub_1C755068C();
  qword_1EC25B8F0 = result;
  *algn_1EC25B8F8 = v1;
  return result;
}

uint64_t sub_1C742A090()
{
  result = sub_1C755068C();
  qword_1EC25B900 = result;
  *algn_1EC25B908 = v1;
  return result;
}

uint64_t sub_1C742A0C0()
{
  result = sub_1C755068C();
  qword_1EC25B910 = result;
  *algn_1EC25B918 = v1;
  return result;
}

uint64_t sub_1C742A0F0()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EDD289D8);
  __swift_project_value_buffer(v0, qword_1EDD289D8);
  return sub_1C754FEFC();
}

void sub_1C742A1A8()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1C75506DC();
  OUTLINED_FUNCTION_3_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14_0();
  v12 = v11 - v10;
  if (PFOSVariantHasInternalDiagnostics() && *(v1 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_shouldForceDiagnosticAsSeedOrFCS) != 1)
  {
    if (qword_1EDD07C00 != -1)
    {
      OUTLINED_FUNCTION_0_159(&qword_1EDD07C00);
    }

    v29 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v29, qword_1EDD289D8);
    v34 = sub_1C754FEEC();
    sub_1C755118C();
    OUTLINED_FUNCTION_16_1();
    if (os_log_type_enabled(v34, v30))
    {
      v31 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_35_29(v31);
      OUTLINED_FUNCTION_40_45(&dword_1C6F5C000, v34, v1, "Prompt: Skipping public diagnostics as user is internal.");
      OUTLINED_FUNCTION_21_59();
    }

    OUTLINED_FUNCTION_25_0();
  }

  else
  {
    v13 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v13 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v13)
    {
      sub_1C75504FC();
    }

    else
    {
      v3 = 0xEC0000007974706DLL;
      v5 = 0x652074706D6F7250;
    }

    sub_1C75506CC();
    sub_1C755069C();
    v15 = v14;
    (*(v8 + 8))(v12, v6);
    if (v15 >> 60 == 15)
    {

      if (qword_1EDD07C00 != -1)
      {
        OUTLINED_FUNCTION_0_159(&qword_1EDD07C00);
      }

      v16 = sub_1C754FF1C();
      OUTLINED_FUNCTION_23_2(v16, qword_1EDD289D8);
      v17 = sub_1C754FEEC();
      v18 = sub_1C755119C();
      if (OUTLINED_FUNCTION_7_0(v18))
      {
        v19 = OUTLINED_FUNCTION_127();
        OUTLINED_FUNCTION_37_0(v19);
        OUTLINED_FUNCTION_9_87(&dword_1C6F5C000, v20, v21, "Prompt: couldn't encode string.");
        OUTLINED_FUNCTION_23_3();
      }
    }

    else
    {
      if (qword_1EC214140 != -1)
      {
        OUTLINED_FUNCTION_1_118(&qword_1EC214140);
      }

      os_unfair_lock_lock(&dword_1EC25B930);
      if (qword_1EC214118 != -1)
      {
        OUTLINED_FUNCTION_12_75(&qword_1EC214118);
      }

      v22 = qword_1EC25B8F0;
      v23 = *algn_1EC25B8F8;
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C6FB0D6C();
      v24 = *(qword_1EC25B938 + 16);
      sub_1C6FB1594();

      v25 = qword_1EC25B938;
      *(qword_1EC25B938 + 16) = v24 + 1;
      v26 = (v25 + (v24 << 6));
      v26[4] = v22;
      v26[5] = v23;
      v26[6] = 0x7470697263736544;
      v26[7] = 0xEB000000006E6F69;
      v26[8] = 0;
      v26[9] = 0;
      v26[10] = v5;
      v26[11] = v3;
      os_unfair_lock_unlock(&dword_1EC25B930);
      OUTLINED_FUNCTION_46_35();
      sub_1C7161C08();
      v27 = OUTLINED_FUNCTION_15_1();
      sub_1C70B5C10(v27, v28);
    }

    OUTLINED_FUNCTION_25_0();
  }
}

uint64_t sub_1C742A50C()
{
  OUTLINED_FUNCTION_42();
  v2 = v1;
  *(v0 + 184) = v3;
  *(v0 + 192) = v4;
  v5 = sub_1C75506DC();
  *(v0 + 200) = v5;
  OUTLINED_FUNCTION_18(v5);
  *(v0 + 208) = v6;
  *(v0 + 216) = OUTLINED_FUNCTION_77();
  v7 = sub_1C754DF6C();
  *(v0 + 224) = v7;
  OUTLINED_FUNCTION_18(v7);
  *(v0 + 232) = v8;
  *(v0 + 240) = OUTLINED_FUNCTION_77();
  sub_1C754F2FC();
  v9 = OUTLINED_FUNCTION_77();
  v10 = *v2;
  *(v0 + 248) = v9;
  *(v0 + 256) = v10;
  *(v0 + 312) = *(v2 + 4);
  *(v0 + 264) = v2[2];
  v11 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

void sub_1C742A638(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  if (!PFOSVariantHasInternalDiagnostics() || *(*(v19 + 192) + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_shouldForceDiagnosticAsSeedOrFCS) == 1)
  {
    v20 = *(v19 + 256);
    v21 = *(v19 + 184);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1C755BAB0;
    v23 = v20;

    v24 = sub_1C70CAC04(v21);
    if (v25)
    {
      v26 = *(v19 + 256);
      v27 = *(v19 + 312);
      *(v22 + 32) = v24;
      *(v22 + 40) = v25;
      sub_1C754F41C();
      *(v19 + 144) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219EA0, &unk_1C75706A0);
      *(v19 + 152) = swift_getOpaqueTypeConformance2();
      __swift_allocate_boxed_opaque_existential_0((v19 + 120));
      MEMORY[0x1CCA5B6D0]();
      sub_1C754F30C();
      v28 = v26;

      v29 = [v28 librarySpecificFetchOptions];
      *(v19 + 272) = v29;
      [v29 setSharingFilter_];

      v30 = objc_opt_self();
      v31 = v29;
      v32 = sub_1C6FCA158(v22, v29, v30);
      *(v19 + 280) = v32;

      if (v32)
      {

        *(v19 + 112) = 0;
        *(v19 + 80) = 0u;
        *(v19 + 96) = 0u;
        *(v19 + 48) = 0u;
        *(v19 + 64) = 0u;
        *(v19 + 32) = 0u;
        *(v19 + 16) = 0u;
        v33 = swift_task_alloc();
        *(v19 + 288) = v33;
        *v33 = v19;
        v33[1] = sub_1C742A970;
        v34 = *(v19 + 264);
        v35 = *(v19 + 248);
        v36 = MEMORY[0x1E69E7CC0];

        sub_1C74B075C(v32, v36, (v19 + 16), v34, v19 + 120, v35, 0);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  if (qword_1EDD07C00 != -1)
  {
    OUTLINED_FUNCTION_0_159(&qword_1EDD07C00);
  }

  v37 = sub_1C754FF1C();
  OUTLINED_FUNCTION_23_2(v37, qword_1EDD289D8);
  v38 = sub_1C754FEEC();
  sub_1C755118C();
  OUTLINED_FUNCTION_16_1();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_37_0(v40);
    OUTLINED_FUNCTION_6(&dword_1C6F5C000, v41, v42, "Key Asset: Skipping public diagnostics as user is internal.");
    OUTLINED_FUNCTION_23_3();
  }

  OUTLINED_FUNCTION_43();

  v43();
}

uint64_t sub_1C742A970(uint64_t a1)
{
  OUTLINED_FUNCTION_47();
  v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_14();
  *v7 = v6;
  *(v5 + 296) = v1;

  if (v1)
  {
    v8 = sub_1C742AEE0;
  }

  else
  {
    *(v5 + 304) = a1;
    v8 = sub_1C742AA8C;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1C742AA8C()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 280);

  __swift_destroy_boxed_opaque_existential_1((v0 + 120));
  v41 = sub_1C710DADC(v1);
  v4 = v3;

  v5 = *(v0 + 232);
  v6 = *(v0 + 240);
  v7 = *(v0 + 216);
  v8 = *(v0 + 208);
  v42 = *(v0 + 200);
  v43 = *(v0 + 224);
  v9 = *(v0 + 184);
  v10 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1C7069CE4(0xD000000000000018, 0x80000001C75AD2D0, v10);
  OUTLINED_FUNCTION_50_31();
  *(v0 + 160) = v44;
  *(v0 + 168) = v45;
  OUTLINED_FUNCTION_10_2();
  MEMORY[0x1CCA5CD70](0xD000000000000010);
  [v9 curationScore];
  sub_1C7550F5C();
  OUTLINED_FUNCTION_36_35();
  v11 = [v9 cls_universalDate];
  sub_1C754DF2C();

  v12 = sub_1C754DECC();
  (*(v5 + 8))(v6, v43);
  v13 = [v10 stringFromDate_];

  v14 = sub_1C755068C();
  v16 = v15;

  MEMORY[0x1CCA5CD70](v14, v16);

  v17 = OUTLINED_FUNCTION_49_31();
  MEMORY[0x1CCA5CD70](v17, 0xEA0000000000203ALL);
  if (v4)
  {
    v18 = v41;
  }

  else
  {
    v18 = 0xD00000000000001FLL;
  }

  if (v4)
  {
    v19 = v4;
  }

  else
  {
    v19 = 0x80000001C75B02E0;
  }

  MEMORY[0x1CCA5CD70](v18, v19);

  v20 = OUTLINED_FUNCTION_42_2();
  MEMORY[0x1CCA5CD70](v20);
  sub_1C75506CC();
  OUTLINED_FUNCTION_34_41();
  v21 = sub_1C755069C();
  v23 = v22;

  (*(v8 + 8))(v7, v42);
  if (v23 >> 60 == 15)
  {
    if (qword_1EDD07C00 != -1)
    {
      OUTLINED_FUNCTION_0_159(&qword_1EDD07C00);
    }

    v24 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v24, qword_1EDD289D8);
    v25 = sub_1C754FEEC();
    v26 = sub_1C755119C();
    v27 = OUTLINED_FUNCTION_128(v26);
    v28 = *(v0 + 256);
    if (v27)
    {
      *OUTLINED_FUNCTION_127() = 0;
      OUTLINED_FUNCTION_52_30(&dword_1C6F5C000, v29, v30, "Key Asset: couldn't encode string.");
      OUTLINED_FUNCTION_109();
    }
  }

  else
  {
    if (qword_1EC214140 != -1)
    {
      OUTLINED_FUNCTION_1_118(&qword_1EC214140);
    }

    os_unfair_lock_lock(&dword_1EC25B930);
    if (qword_1EC2140F8 != -1)
    {
      OUTLINED_FUNCTION_16_64(&qword_1EC2140F8);
    }

    OUTLINED_FUNCTION_48_27();
    sub_1C75504FC();
    v31 = sub_1C742F968(v21);
    v33 = v32;
    sub_1C6FB0D6C();
    v34 = *(qword_1EC25B938 + 16);
    sub_1C6FB1594();
    v35 = qword_1EC25B938;
    *(qword_1EC25B938 + 16) = v34 + 1;
    OUTLINED_FUNCTION_47_24(v35 + (v34 << 6));
    v36[6] = v37;
    v36[7] = 0x80000001C75B0300;
    v36[8] = v31;
    v36[9] = v33;
    v36[10] = 0;
    v36[11] = 0;
    os_unfair_lock_unlock(&dword_1EC25B930);
    OUTLINED_FUNCTION_23_51();
    sub_1C7161C08();

    sub_1C70B5C10(v33, v23);
    v25 = v10;
  }

  OUTLINED_FUNCTION_43();

  return v38();
}

uint64_t sub_1C742AEE0()
{
  v52 = v0;
  v1 = *(v0 + 280);

  __swift_destroy_boxed_opaque_existential_1((v0 + 120));
  if (qword_1EDD07C00 != -1)
  {
    OUTLINED_FUNCTION_0_159(&qword_1EDD07C00);
  }

  v2 = *(v0 + 296);
  v49 = sub_1C754FF1C();
  OUTLINED_FUNCTION_23_2(v49, qword_1EDD289D8);
  v3 = v2;
  v4 = sub_1C754FEEC();
  v5 = sub_1C755119C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 296);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v51[0] = v9;
    *v8 = 136315138;
    *(v0 + 176) = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
    v11 = sub_1C75506EC();
    v13 = sub_1C6F765A4(v11, v12, v51);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1C6F5C000, v4, v5, "Error while retrieve caption for key asset. Error: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  else
  {
  }

  v15 = *(v0 + 232);
  v14 = *(v0 + 240);
  v16 = *(v0 + 224);
  v17 = *(v0 + 184);
  v18 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1C7069CE4(0xD000000000000018, 0x80000001C75AD2D0, v18);
  OUTLINED_FUNCTION_50_31();
  v19 = v51[1];
  *(v0 + 160) = v51[0];
  *(v0 + 168) = v19;
  OUTLINED_FUNCTION_10_2();
  MEMORY[0x1CCA5CD70](0xD000000000000010);
  [v17 curationScore];
  sub_1C7550F5C();
  MEMORY[0x1CCA5CD70](0x203A657461440ALL, 0xE700000000000000);
  v20 = [v17 cls_universalDate];
  sub_1C754DF2C();

  v21 = sub_1C754DECC();
  (*(v15 + 8))(v14, v16);
  v50 = v18;
  v22 = [v18 stringFromDate_];

  v23 = sub_1C755068C();
  v25 = v24;

  MEMORY[0x1CCA5CD70](v23, v25);

  v26 = OUTLINED_FUNCTION_49_31();
  MEMORY[0x1CCA5CD70](v26, 0xEA0000000000203ALL);
  MEMORY[0x1CCA5CD70](0xD00000000000001FLL, 0x80000001C75B02E0);

  v27 = OUTLINED_FUNCTION_42_2();
  MEMORY[0x1CCA5CD70](v27);
  sub_1C75506CC();
  OUTLINED_FUNCTION_34_41();
  v28 = sub_1C755069C();
  v30 = v29;

  v31 = OUTLINED_FUNCTION_15_1();
  v32(v31);
  if (v30 >> 60 == 15)
  {
    if (qword_1EDD07C00 != -1)
    {
      OUTLINED_FUNCTION_0_159(&qword_1EDD07C00);
    }

    OUTLINED_FUNCTION_23_2(v49, qword_1EDD289D8);
    v33 = sub_1C754FEEC();
    v34 = sub_1C755119C();
    v35 = OUTLINED_FUNCTION_128(v34);
    v36 = *(v0 + 256);
    if (v35)
    {
      *OUTLINED_FUNCTION_127() = 0;
      OUTLINED_FUNCTION_52_30(&dword_1C6F5C000, v37, v38, "Key Asset: couldn't encode string.");
      OUTLINED_FUNCTION_109();
    }
  }

  else
  {
    if (qword_1EC214140 != -1)
    {
      OUTLINED_FUNCTION_1_118(&qword_1EC214140);
    }

    os_unfair_lock_lock(&dword_1EC25B930);
    if (qword_1EC2140F8 != -1)
    {
      OUTLINED_FUNCTION_16_64(&qword_1EC2140F8);
    }

    OUTLINED_FUNCTION_48_27();
    sub_1C75504FC();
    v39 = sub_1C742F968(v28);
    v41 = v40;
    sub_1C6FB0D6C();
    v42 = *(qword_1EC25B938 + 16);
    sub_1C6FB1594();
    v43 = qword_1EC25B938;
    *(qword_1EC25B938 + 16) = v42 + 1;
    OUTLINED_FUNCTION_47_24(v43 + (v42 << 6));
    v44[6] = v45;
    v44[7] = 0x80000001C75B0300;
    v44[8] = v39;
    v44[9] = v41;
    v44[10] = 0;
    v44[11] = 0;
    os_unfair_lock_unlock(&dword_1EC25B930);
    OUTLINED_FUNCTION_23_51();
    sub_1C7161C08();

    sub_1C70B5C10(v41, v30);
    v33 = v50;
  }

  OUTLINED_FUNCTION_43();

  return v46();
}

uint64_t sub_1C742B450()
{
  OUTLINED_FUNCTION_42();
  v0[147] = v1;
  v0[146] = v2;
  v3 = sub_1C75506DC();
  v0[148] = v3;
  OUTLINED_FUNCTION_18(v3);
  v0[149] = v4;
  v0[150] = OUTLINED_FUNCTION_77();
  v5 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C742B4F8(__n128 a1)
{
  if (PFOSVariantHasInternalDiagnostics() && *(*(v1 + 1176) + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_shouldForceDiagnosticAsSeedOrFCS) != 1)
  {
    if (qword_1EDD07C00 != -1)
    {
      OUTLINED_FUNCTION_0_159(&qword_1EDD07C00);
    }

    v4 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v4, qword_1EDD289D8);
    v5 = sub_1C754FEEC();
    sub_1C755118C();
    OUTLINED_FUNCTION_16_1();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_37_0(v7);
      OUTLINED_FUNCTION_6(&dword_1C6F5C000, v8, v9, "Music: Skipping public diagnostics as user is internal.");
      OUTLINED_FUNCTION_23_3();
    }

    OUTLINED_FUNCTION_43();

    return v10();
  }

  else
  {
    type metadata accessor for StoryMusicCurator(0);
    v2 = swift_task_alloc();
    *(v1 + 1208) = v2;
    *v2 = v1;
    v2[1] = sub_1C742B66C;

    return static StoryMusicCurator.isUserEligibleForAppleMusic()();
  }
}

uint64_t sub_1C742B66C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  *(v1 + 1216) = v0;

  v2 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1C742B75C()
{
  v1 = 40;
  if (*(v0 + 1216))
  {
    v1 = 32;
  }

  v2 = *(*(v0 + 1168) + v1);
  if (*(v2 + 16))
  {
    memcpy((v0 + 400), (v2 + 32), 0xC0uLL);
    v4 = *(v0 + 424);
    v3 = *(v0 + 432);
    v6 = *(v0 + 408);
    v5 = *(v0 + 416);
    memmove((v0 + 208), (v2 + 32), 0xC0uLL);
    CGRectMake();
    sub_1C7080654(v0 + 400, v0 + 592);
    sub_1C7080654(v0 + 400, v0 + 784);
    sub_1C755180C();

    sub_1C75504FC();
    MEMORY[0x1CCA5CD70](v4, v3);

    MEMORY[0x1CCA5CD70](0x6669746E6564490ALL, 0xED0000203A726569);
    sub_1C75504FC();
    MEMORY[0x1CCA5CD70](v6, v5);
    sub_1C70806B0(v0 + 400);

    OUTLINED_FUNCTION_10_2();
    MEMORY[0x1CCA5CD70](0xD000000000000013);
    memcpy((v0 + 16), (v0 + 208), 0xC0uLL);
  }

  else
  {
    sub_1C7423CA4((v0 + 16));
  }

  sub_1C75506CC();
  OUTLINED_FUNCTION_34_41();
  v7 = sub_1C755069C();
  v9 = v8;

  v10 = OUTLINED_FUNCTION_55();
  v11(v10);
  if (v9 >> 60 == 15)
  {
    sub_1C7030CDC(v0 + 16, &qword_1EC21BDB0, &unk_1C758FFE0);
    if (qword_1EDD07C00 != -1)
    {
      OUTLINED_FUNCTION_0_159(&qword_1EDD07C00);
    }

    v12 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v12, qword_1EDD289D8);
    v13 = sub_1C754FEEC();
    sub_1C755119C();
    OUTLINED_FUNCTION_16_1();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_37_0(v15);
      OUTLINED_FUNCTION_6(&dword_1C6F5C000, v16, v17, "Music: couldn't encode string.");
      OUTLINED_FUNCTION_23_3();
    }
  }

  else
  {
    memcpy((v0 + 976), (v0 + 16), 0xC0uLL);
    if (sub_1C70808D8(v0 + 976) == 1)
    {
      v18 = 0xED00006174616420;
      v19 = 0x636973756D206F4ELL;
    }

    else
    {
      sub_1C75504FC();
      v20 = OUTLINED_FUNCTION_15_1();
      MEMORY[0x1CCA5CD70](v20);

      MEMORY[0x1CCA5CD70](0x2079622022, 0xE500000000000000);
      sub_1C75504FC();
      v21 = OUTLINED_FUNCTION_15_1();
      MEMORY[0x1CCA5CD70](v21);
      sub_1C7030CDC(v0 + 16, &qword_1EC21BDB0, &unk_1C758FFE0);

      v19 = 34;
      v18 = 0xE100000000000000;
    }

    if (qword_1EC214140 != -1)
    {
      OUTLINED_FUNCTION_1_118(&qword_1EC214140);
    }

    os_unfair_lock_lock(&dword_1EC25B930);
    if (qword_1EC2140F0 != -1)
    {
      swift_once();
    }

    v22 = qword_1EC25B8A0;
    v23 = *algn_1EC25B8A8;
    sub_1C75504FC();
    sub_1C6FB0D6C();
    OUTLINED_FUNCTION_51_28();
    OUTLINED_FUNCTION_41_42();
    v24[4] = v22;
    v24[5] = v23;
    v24[6] = 1735290707;
    v24[7] = 0xE400000000000000;
    v24[8] = v19;
    v24[9] = v18;
    v24[10] = 0;
    v24[11] = 0;
    os_unfair_lock_unlock(&dword_1EC25B930);
    sub_1C7161C08();
    sub_1C70B5C10(v7, v9);
  }

  OUTLINED_FUNCTION_43();

  return v25();
}

void sub_1C742BBF0()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1C75506DC();
  OUTLINED_FUNCTION_3_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14_0();
  v12 = v11 - v10;
  v67 = *v3;
  if (PFOSVariantHasInternalDiagnostics() && *(v1 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_shouldForceDiagnosticAsSeedOrFCS) != 1)
  {
    if (qword_1EDD07C00 != -1)
    {
      OUTLINED_FUNCTION_0_159(&qword_1EDD07C00);
    }

    v47 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v47, qword_1EDD289D8);
    v70 = sub_1C754FEEC();
    sub_1C755118C();
    OUTLINED_FUNCTION_16_1();
    if (os_log_type_enabled(v70, v48))
    {
      v49 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_35_29(v49);
      OUTLINED_FUNCTION_40_45(&dword_1C6F5C000, v70, v3, "Memory: Skipping public diagnostics as user is internal.");
      OUTLINED_FUNCTION_21_59();
    }

    OUTLINED_FUNCTION_25_0();
  }

  else
  {
    v62 = v5;
    v63 = v12;
    v64 = v8;
    v65 = v6;
    v13 = *(v1 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_statistics);
    OUTLINED_FUNCTION_0_53();
    swift_beginAccess();
    v66 = v13;
    v14 = *(v13 + 40);

    v15 = sub_1C75504DC();
    v16 = OBJC_IVAR____TtC18PhotosIntelligence16MemoryStatistics_assetNumberByStage;
    OUTLINED_FUNCTION_0_53();
    swift_beginAccess();
    v17 = *(v14 + v16);
    v18 = 1 << *(v17 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v17 + 64);
    v21 = (v18 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v22 = 0;
    v68 = v15;
    while (v20)
    {
      v23 = v20;
LABEL_12:
      v20 = (v23 - 1) & v23;
      if (*(v15 + 16))
      {
        v25 = (*(v17 + 48) + 16 * (__clz(__rbit64(v23)) | (v22 << 6)));
        v27 = *v25;
        v26 = v25[1];
        sub_1C75504FC();
        v28 = sub_1C6F78124(v27, v26);
        if (v29)
        {
          v30 = (*(v15 + 56) + 16 * v28);
          v31 = *v30;
          v32 = v30[1];
          sub_1C75504FC();
          MEMORY[0x1CCA5CD70](v31, v32);

          MEMORY[0x1CCA5CD70](8250, 0xE200000000000000);
          v33 = sub_1C7551D8C();
          MEMORY[0x1CCA5CD70](v33);

          v34 = OUTLINED_FUNCTION_42_2();
          MEMORY[0x1CCA5CD70](v34);
          MEMORY[0x1CCA5CD70](9, 0xE100000000000000);
          v15 = v68;
        }
      }
    }

    while (1)
    {
      v24 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

      if (v24 >= v21)
      {
        break;
      }

      v23 = *(v17 + 64 + 8 * v24);
      ++v22;
      if (v23)
      {
        v22 = v24;
        goto LABEL_12;
      }
    }

    v35 = *(v66 + 32);
    OUTLINED_FUNCTION_0_53();
    swift_beginAccess();
    v36 = *(v35 + 24);
    v69 = *(v36 + 16);

    sub_1C75504FC();
    v37 = 0;
    v38 = v36 + 80;
    while (v69 != v37)
    {
      v39 = *(v36 + 16);
      if (v37 == v39)
      {
        break;
      }

      if (v37 >= v39)
      {
        goto LABEL_66;
      }

      v38 += 80;
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C755180C();

      v40 = sub_1C7551D8C();
      MEMORY[0x1CCA5CD70](v40);

      MEMORY[0x1CCA5CD70](8250, 0xE200000000000000);
      v41 = sub_1C7551D8C();
      MEMORY[0x1CCA5CD70](v41);

      v42 = OUTLINED_FUNCTION_42_2();
      MEMORY[0x1CCA5CD70](v42);
      MEMORY[0x1CCA5CD70](0x7265747061684309, 0xE900000000000020);

      ++v37;
    }

    sub_1C755180C();
    OUTLINED_FUNCTION_36_35();
    MEMORY[0x1CCA5CD70](*v62, v62[1]);
    MEMORY[0x1CCA5CD70](0x6C7469746275530ALL, 0xEB00000000203A65);
    if (v62[4])
    {
      v44 = v62[5];
      v43 = v62[6];
      sub_1C75504FC();
    }

    else
    {
      v43 = 0xEB00000000656C74;
      v44 = 0x6974627573206F4ELL;
    }

    MEMORY[0x1CCA5CD70](v44, v43);

    OUTLINED_FUNCTION_36_35();
    v45 = 0xE600000000000000;
    v46 = 0x79636167654CLL;
    switch(v67 >> 5)
    {
      case 1u:
        if (v67)
        {
          v46 = 0xD00000000000001CLL;
        }

        else
        {
          v46 = 0xD00000000000001BLL;
        }

        if (v67)
        {
          v45 = 0x80000001C75A0570;
        }

        else
        {
          v45 = 0x80000001C75A0590;
        }

        break;
      case 2u:
        if (v67 == 64)
        {
          v46 = 0x42206C6175736956;
        }

        else
        {
          v46 = 0xD00000000000001ALL;
        }

        if (v67 == 64)
        {
          v45 = 0xEC00000064657361;
        }

        else
        {
          v45 = 0x80000001C75A0550;
        }

        break;
      case 3u:
        if (v67 == 96)
        {
          v46 = 0x736552207473614CLL;
        }

        else
        {
          v46 = 0x61622D7469617254;
        }

        if (v67 == 96)
        {
          v45 = 0xEB0000000074726FLL;
        }

        else
        {
          v45 = 0xEB00000000646573;
        }

        break;
      case 4u:
        break;
      default:
        if (v67)
        {
          v45 = 0x80000001C75A05D0;
        }

        else
        {
          v45 = 0x80000001C75A05B0;
        }

        v46 = 0xD000000000000012;
        break;
    }

    MEMORY[0x1CCA5CD70](v46, v45);

    MEMORY[0x1CCA5CD70](0xD000000000000033, 0x80000001C75B0220);
    MEMORY[0x1CCA5CD70](0, 0xE000000000000000);

    MEMORY[0x1CCA5CD70](0xD000000000000019, 0x80000001C75B0260);
    MEMORY[0x1CCA5CD70](0, 0xE000000000000000);

    v52 = OUTLINED_FUNCTION_42_2();
    MEMORY[0x1CCA5CD70](v52);
    sub_1C75506CC();
    v53 = sub_1C755069C();
    v55 = v54;

    (*(v64 + 8))(v63, v65);
    if (v55 >> 60 == 15)
    {
      if (qword_1EDD07C00 == -1)
      {
LABEL_56:
        v56 = sub_1C754FF1C();
        OUTLINED_FUNCTION_23_2(v56, qword_1EDD289D8);
        v57 = sub_1C754FEEC();
        v58 = sub_1C755119C();
        if (OUTLINED_FUNCTION_7_0(v58))
        {
          v59 = OUTLINED_FUNCTION_127();
          OUTLINED_FUNCTION_37_0(v59);
          OUTLINED_FUNCTION_9_87(&dword_1C6F5C000, v60, v61, "Memory: couldn't encode string.");
          OUTLINED_FUNCTION_23_3();
        }

        goto LABEL_64;
      }

LABEL_67:
      OUTLINED_FUNCTION_0_159(&qword_1EDD07C00);
      goto LABEL_56;
    }

    if (qword_1EC214140 != -1)
    {
      OUTLINED_FUNCTION_1_118(&qword_1EC214140);
    }

    os_unfair_lock_lock(&dword_1EC25B930);
    sub_1C742E2C0(&qword_1EC25B938, v67);
    os_unfair_lock_unlock(&dword_1EC25B930);
    if (qword_1EC214100 != -1)
    {
      swift_once();
    }

    sub_1C7161C08();
    sub_1C70B5C10(v53, v55);

LABEL_64:
    OUTLINED_FUNCTION_25_0();
  }
}

void sub_1C742C508()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v3 = v2;
  v4 = sub_1C75506DC();
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14_0();
  v10 = v9 - v8;
  if (PFOSVariantHasInternalDiagnostics() && *(v1 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_shouldForceDiagnosticAsSeedOrFCS) != 1)
  {
    if (qword_1EDD07C00 != -1)
    {
      OUTLINED_FUNCTION_0_159(&qword_1EDD07C00);
    }

    v31 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v31, qword_1EDD289D8);
    v36 = sub_1C754FEEC();
    sub_1C755118C();
    OUTLINED_FUNCTION_16_1();
    if (os_log_type_enabled(v36, v32))
    {
      v33 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_35_29(v33);
      OUTLINED_FUNCTION_40_45(&dword_1C6F5C000, v36, v1, "Assets: Skipping public diagnostics as user is internal.");
      OUTLINED_FUNCTION_21_59();
    }

    OUTLINED_FUNCTION_25_0();
  }

  else
  {
    v11 = [objc_opt_self() fetchSceneClassificationsGroupedByAssetLocalIdentifierForAssets_];
    if (v11)
    {
      v12 = v11;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21BE28, &qword_1C758AFE0);
      v13 = sub_1C75504AC();
    }

    else
    {
      v13 = 0;
    }

    v14 = [v3 fetchedObjects];
    if (v14)
    {
      v15 = v14;
      sub_1C6FDEC1C();
      v16 = sub_1C7550B5C();
    }

    else
    {
      v16 = MEMORY[0x1E69E7CC0];
    }

    v38[0] = 0;
    v38[1] = 0xE000000000000000;
    v17 = sub_1C6FB6304();
    for (i = 0; v17 != i; ++i)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x1CCA5DDD0](i, v16);
      }

      else
      {
        if (i >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_36;
        }

        v19 = *(v16 + 8 * i + 32);
      }

      v20 = v19;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        OUTLINED_FUNCTION_0_159(&qword_1EDD07C00);
LABEL_19:
        v23 = sub_1C754FF1C();
        OUTLINED_FUNCTION_23_2(v23, qword_1EDD289D8);
        v24 = sub_1C754FEEC();
        v25 = sub_1C755119C();
        if (OUTLINED_FUNCTION_7_0(v25))
        {
          v26 = OUTLINED_FUNCTION_127();
          OUTLINED_FUNCTION_37_0(v26);
          OUTLINED_FUNCTION_9_87(&dword_1C6F5C000, v27, v28, "Assets: couldn't encode string.");
          OUTLINED_FUNCTION_23_3();
        }

        goto LABEL_27;
      }

      v37 = v19;
      sub_1C742E520(v38, &v37, v13);
    }

    sub_1C75506CC();
    sub_1C755069C();
    v22 = v21;

    (*(v6 + 8))(v10, v4);
    if (v22 >> 60 == 15)
    {
      if (qword_1EDD07C00 != -1)
      {
        goto LABEL_37;
      }

      goto LABEL_19;
    }

    if (qword_1EC214140 != -1)
    {
      OUTLINED_FUNCTION_1_118(&qword_1EC214140);
    }

    os_unfair_lock_lock(&dword_1EC25B930);
    sub_1C742E888(&qword_1EC25B938);
    os_unfair_lock_unlock(&dword_1EC25B930);
    if (qword_1EC214108 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_46_35();
    sub_1C7161C08();
    v29 = OUTLINED_FUNCTION_15_1();
    sub_1C70B5C10(v29, v30);
LABEL_27:
    OUTLINED_FUNCTION_25_0();
  }
}