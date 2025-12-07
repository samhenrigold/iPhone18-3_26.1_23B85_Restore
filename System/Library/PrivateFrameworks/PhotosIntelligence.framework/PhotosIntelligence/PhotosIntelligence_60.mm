void sub_1C73D8C60(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v54 = a4;
  v51 = type metadata accessor for Hastings.ClusterAssetElector.StochatizedAsset(0);
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v52 = &v43 - v10;
  v12 = *(v11 + 72);
  if (!v12)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  v13 = a2 - a1 == 0x8000000000000000 && v12 == -1;
  if (v13)
  {
    goto LABEL_60;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_61;
  }

  v45 = v4;
  v16 = (a2 - a1) / v12;
  v57 = a1;
  v56 = v54;
  v17 = v14 / v12;
  if (v16 >= v14 / v12)
  {
    v49 = a1;
    v29 = v54;
    sub_1C741E844(a2, v14 / v12, v54);
    v30 = v29 + v17 * v12;
    v31 = -v12;
    v32 = v30;
    v47 = v31;
LABEL_36:
    v50 = a2 + v31;
    v33 = a3;
    v44 = v32;
    v48 = a2;
    while (1)
    {
      if (v30 <= v54)
      {
        v57 = a2;
        v55 = v32;
        goto LABEL_58;
      }

      if (a2 <= v49)
      {
        break;
      }

      v46 = v32;
      v34 = v33 + v31;
      v35 = v30 + v31;
      v36 = v52;
      sub_1C73D968C();
      v37 = v53;
      sub_1C73D968C();
      v38 = sub_1C73D798C(v36, v37);
      sub_1C73D96E4(v37, type metadata accessor for Hastings.ClusterAssetElector.StochatizedAsset);
      sub_1C73D96E4(v36, type metadata accessor for Hastings.ClusterAssetElector.StochatizedAsset);
      if (v38)
      {
        v40 = v33 < v48 || v34 >= v48;
        a3 = v34;
        if (v40)
        {
          a2 = v50;
          swift_arrayInitWithTakeFrontToBack();
          v32 = v46;
          v31 = v47;
        }

        else
        {
          v41 = v46;
          v31 = v47;
          v32 = v46;
          v42 = v50;
          a2 = v50;
          if (v33 != v48)
          {
            swift_arrayInitWithTakeBackToFront();
            a2 = v42;
            v32 = v41;
          }
        }

        goto LABEL_36;
      }

      if (v33 < v30 || v34 >= v30)
      {
        swift_arrayInitWithTakeFrontToBack();
        v33 = v34;
        v30 = v35;
        v32 = v35;
        v31 = v47;
        a2 = v48;
      }

      else
      {
        v32 = v35;
        v13 = v30 == v33;
        v33 = v34;
        v30 = v35;
        v31 = v47;
        a2 = v48;
        if (!v13)
        {
          swift_arrayInitWithTakeBackToFront();
          v33 = v34;
          v30 = v35;
          v32 = v35;
        }
      }
    }

    v57 = a2;
    v55 = v44;
  }

  else
  {
    v18 = v54;
    sub_1C741E844(a1, (a2 - a1) / v12, v54);
    v50 = v18 + v16 * v12;
    v55 = v50;
    for (i = a1; v54 < v50 && a2 < a3; v57 = i)
    {
      v21 = a3;
      v22 = a2;
      v23 = v52;
      sub_1C73D968C();
      v24 = v53;
      sub_1C73D968C();
      v25 = sub_1C73D798C(v23, v24);
      sub_1C73D96E4(v24, type metadata accessor for Hastings.ClusterAssetElector.StochatizedAsset);
      sub_1C73D96E4(v23, type metadata accessor for Hastings.ClusterAssetElector.StochatizedAsset);
      if (v25)
      {
        a2 = v22 + v12;
        if (i < v22 || i >= a2)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v21;
        }

        else
        {
          a3 = v21;
          if (i != v22)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      else
      {
        a2 = v22;
        v27 = v54 + v12;
        if (i < v54 || i >= v27)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v21;
        }

        else
        {
          a3 = v21;
          if (i != v54)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v56 = v27;
        v54 = v27;
      }

      i += v12;
    }
  }

LABEL_58:
  sub_1C7420914(&v57, &v56, &v55);
}

uint64_t sub_1C73D9104()
{
  OUTLINED_FUNCTION_58_27();
  *v0 = v1;
  sub_1C75504FC();
  return OUTLINED_FUNCTION_66_2();
}

uint64_t sub_1C73D9134(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_49_29(a1, a2, a3, a4);
  sub_1C75504FC();
  return v4;
}

uint64_t sub_1C73D916C()
{
  OUTLINED_FUNCTION_58_27();
  OUTLINED_FUNCTION_21_56();
  sub_1C73D968C();
  sub_1C75504FC();
  return OUTLINED_FUNCTION_66_2();
}

uint64_t sub_1C73D91A8()
{
  OUTLINED_FUNCTION_58_27();
  OUTLINED_FUNCTION_20_57();
  sub_1C73D968C();
  sub_1C75504FC();
  return OUTLINED_FUNCTION_66_2();
}

uint64_t sub_1C73D9228(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_49_29(a1, a2, a3, a4);
  v6 = v4;
  return v5;
}

uint64_t sub_1C73D925C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a4;
  a1[1] = a5;
  sub_1C75504FC();
  v6 = OUTLINED_FUNCTION_66_2();
  sub_1C6FEB1B0(v6, v7);
  return a2;
}

uint64_t sub_1C73D92AC()
{
  OUTLINED_FUNCTION_58_27();
  *v0 = v1;
  sub_1C75504FC();
  return OUTLINED_FUNCTION_66_2();
}

uint64_t sub_1C73D92DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2168B0, &qword_1C75656C0) + 48);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B6E0, &qword_1C75891A8) + 48);
  result = sub_1C6F995F8(a2, a1, *(a1 + v4));
  *(a2 + v5) = result;
  return result;
}

void sub_1C73D934C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v30[0] = type metadata accessor for Hastings.Feature(0);
  v37 = *(v30[0] - 8);
  MEMORY[0x1EEE9AC00](v30[0]);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B6E8, &unk_1C75891B0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v30 - v12;
  sub_1C6F78034(v35);
  v31 = v35[0];
  v32 = v35[1];
  v33 = v35[2];
  v34 = v36;
  v30[2] = a1;
  sub_1C75504FC();
  v30[1] = a3;

  while (1)
  {
    sub_1C73DB0D0(v13);
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B6E0, &qword_1C75891A8);
    if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
    {
      sub_1C7251404(v31);

      return;
    }

    v15 = *(v14 + 48);
    sub_1C73D973C();
    v16 = *&v13[v15];
    v17 = *a5;
    v19 = sub_1C6FC27A8();
    v20 = *(v17 + 16);
    v21 = (v18 & 1) == 0;
    v22 = v20 + v21;
    if (__OFADD__(v20, v21))
    {
      break;
    }

    v23 = v18;
    if (*(v17 + 24) >= v22)
    {
      if ((a4 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2151F8, &qword_1C755CAD0);
        sub_1C7551A3C();
      }
    }

    else
    {
      sub_1C7355040(v22, a4 & 1);
      v24 = sub_1C6FC27A8();
      if ((v23 & 1) != (v25 & 1))
      {
        goto LABEL_16;
      }

      v19 = v24;
    }

    v26 = *a5;
    if (v23)
    {
      sub_1C73D96E4(v10, type metadata accessor for Hastings.Feature);
      *(*(v26 + 56) + 8 * v19) = v16;

      a4 = 1;
    }

    else
    {
      *(v26 + 8 * (v19 >> 6) + 64) |= 1 << v19;
      sub_1C73D973C();
      *(*(v26 + 56) + 8 * v19) = v16;
      v27 = *(v26 + 16);
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        goto LABEL_15;
      }

      *(v26 + 16) = v29;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  sub_1C7551E4C();
  __break(1u);
}

uint64_t sub_1C73D968C()
{
  OUTLINED_FUNCTION_115();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_90();
  v3(v2);
  return v0;
}

uint64_t sub_1C73D96E4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C73D973C()
{
  OUTLINED_FUNCTION_115();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_90();
  v3(v2);
  return v0;
}

unint64_t sub_1C73D9794()
{
  result = qword_1EC21B570;
  if (!qword_1EC21B570)
  {
    result = swift_getWitnessTable(byte_1C75890E4, &_s19ClusterAssetElectorC16StochatizedAssetV14DependencyTypeO10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC21B570);
  }

  return result;
}

unint64_t sub_1C73D97E8()
{
  result = qword_1EC21B578;
  if (!qword_1EC21B578)
  {
    result = swift_getWitnessTable(asc_1C7589094, &_s19ClusterAssetElectorC16StochatizedAssetV14DependencyTypeO19DependentCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC21B578);
  }

  return result;
}

unint64_t sub_1C73D983C()
{
  result = qword_1EC21B580;
  if (!qword_1EC21B580)
  {
    result = swift_getWitnessTable(aU_11, &_s19ClusterAssetElectorC16StochatizedAssetV14DependencyTypeO21IndependentCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC21B580);
  }

  return result;
}

unint64_t sub_1C73D9890()
{
  result = qword_1EC21B588;
  if (!qword_1EC21B588)
  {
    result = swift_getWitnessTable(byte_1C7588FF4, &_s19ClusterAssetElectorC16StochatizedAssetV14DependencyTypeO16AnchorCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC21B588);
  }

  return result;
}

unint64_t sub_1C73D98E4()
{
  result = qword_1EC21B5B0;
  if (!qword_1EC21B5B0)
  {
    result = swift_getWitnessTable(byte_1C7588FA4, &_s19ClusterAssetElectorC16StochatizedAssetV14PersonMatchingO10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC21B5B0);
  }

  return result;
}

unint64_t sub_1C73D9938()
{
  result = qword_1EC21B5B8;
  if (!qword_1EC21B5B8)
  {
    result = swift_getWitnessTable(aE_7, &_s19ClusterAssetElectorC16StochatizedAssetV14PersonMatchingO15OtherCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC21B5B8);
  }

  return result;
}

unint64_t sub_1C73D998C()
{
  result = qword_1EC21B5C0;
  if (!qword_1EC21B5C0)
  {
    result = swift_getWitnessTable(byte_1C7588F04, &_s19ClusterAssetElectorC16StochatizedAssetV14PersonMatchingO36AllRequiredCharactersAssetCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC21B5C0);
  }

  return result;
}

unint64_t sub_1C73D99E0()
{
  result = qword_1EC21B5C8;
  if (!qword_1EC21B5C8)
  {
    result = swift_getWitnessTable(byte_1C7588EB4, &_s19ClusterAssetElectorC16StochatizedAssetV14PersonMatchingO43OnlyAndAllRequiredCharactersAssetCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC21B5C8);
  }

  return result;
}

unint64_t sub_1C73D9A34()
{
  result = qword_1EC21B5D8;
  if (!qword_1EC21B5D8)
  {
    result = swift_getWitnessTable(aU_12, &_s19ClusterAssetElectorC16StochatizedAssetV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC21B5D8);
  }

  return result;
}

unint64_t sub_1C73D9A88()
{
  result = qword_1EC21B5E0;
  if (!qword_1EC21B5E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Hastings.ClusterAssetElector.StochatizedAsset.DependencyType, &type metadata for Hastings.ClusterAssetElector.StochatizedAsset.DependencyType, v0, v1);
    atomic_store(result, &qword_1EC21B5E0);
  }

  return result;
}

unint64_t sub_1C73D9ADC()
{
  result = qword_1EC21B5E8;
  if (!qword_1EC21B5E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Hastings.ClusterAssetElector.StochatizedAsset.PersonMatching, &type metadata for Hastings.ClusterAssetElector.StochatizedAsset.PersonMatching, v0, v1);
    atomic_store(result, &qword_1EC21B5E8);
  }

  return result;
}

unint64_t sub_1C73D9B34()
{
  result = qword_1EC21B5F0;
  if (!qword_1EC21B5F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Hastings.ClusterAssetElector.StochatizedAsset.DependencyType, &type metadata for Hastings.ClusterAssetElector.StochatizedAsset.DependencyType, v0, v1);
    atomic_store(result, &qword_1EC21B5F0);
  }

  return result;
}

unint64_t sub_1C73D9B8C()
{
  result = qword_1EC21B5F8;
  if (!qword_1EC21B5F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Hastings.ClusterAssetElector.StochatizedAsset.PersonMatching, &type metadata for Hastings.ClusterAssetElector.StochatizedAsset.PersonMatching, v0, v1);
    atomic_store(result, &qword_1EC21B5F8);
  }

  return result;
}

uint64_t sub_1C73D9C08(uint64_t a1)
{
  result = sub_1C754FF1C();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

__n128 __swift_memcpy58_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1C73D9D1C(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[58])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t sub_1C73D9D68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 58) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 58) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void sub_1C73D9E68(uint64_t a1)
{
  type metadata accessor for Hastings.Asset(319);
  if (v1 <= 0x3F)
  {
    sub_1C7028B94();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

_BYTE *_s19ClusterAssetElectorC16StochatizedAssetV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C73DA0A8(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C73DA188()
{
  result = qword_1EC21B620;
  if (!qword_1EC21B620)
  {
    result = swift_getWitnessTable(byte_1C7588A34, &_s19ClusterAssetElectorC18DiagnosticReporterC10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC21B620);
  }

  return result;
}

unint64_t sub_1C73DA1E0()
{
  result = qword_1EC21B628;
  if (!qword_1EC21B628)
  {
    result = swift_getWitnessTable(aM_11, &_s19ClusterAssetElectorC16StochatizedAssetV14DependencyTypeO10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC21B628);
  }

  return result;
}

unint64_t sub_1C73DA238()
{
  result = qword_1EC21B630;
  if (!qword_1EC21B630)
  {
    result = swift_getWitnessTable(byte_1C7588D84, &_s19ClusterAssetElectorC16StochatizedAssetV14PersonMatchingO10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC21B630);
  }

  return result;
}

unint64_t sub_1C73DA290()
{
  result = qword_1EC21B638;
  if (!qword_1EC21B638)
  {
    result = swift_getWitnessTable("\r", &_s19ClusterAssetElectorC16StochatizedAssetV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC21B638);
  }

  return result;
}

unint64_t sub_1C73DA2E8()
{
  result = qword_1EC21B640;
  if (!qword_1EC21B640)
  {
    result = swift_getWitnessTable(aE_8, &_s19ClusterAssetElectorC16StochatizedAssetV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC21B640);
  }

  return result;
}

unint64_t sub_1C73DA340()
{
  result = qword_1EC21B648;
  if (!qword_1EC21B648)
  {
    result = swift_getWitnessTable(asc_1C7588DD4, &_s19ClusterAssetElectorC16StochatizedAssetV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC21B648);
  }

  return result;
}

unint64_t sub_1C73DA398()
{
  result = qword_1EC21B650;
  if (!qword_1EC21B650)
  {
    result = swift_getWitnessTable(aM_12, &_s19ClusterAssetElectorC16StochatizedAssetV14PersonMatchingO43OnlyAndAllRequiredCharactersAssetCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC21B650);
  }

  return result;
}

unint64_t sub_1C73DA3F0()
{
  result = qword_1EC21B658;
  if (!qword_1EC21B658)
  {
    result = swift_getWitnessTable(aE_9, &_s19ClusterAssetElectorC16StochatizedAssetV14PersonMatchingO43OnlyAndAllRequiredCharactersAssetCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC21B658);
  }

  return result;
}

unint64_t sub_1C73DA448()
{
  result = qword_1EC21B660;
  if (!qword_1EC21B660)
  {
    result = swift_getWitnessTable(byte_1C7588C54, &_s19ClusterAssetElectorC16StochatizedAssetV14PersonMatchingO36AllRequiredCharactersAssetCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC21B660);
  }

  return result;
}

unint64_t sub_1C73DA4A0()
{
  result = qword_1EC21B668;
  if (!qword_1EC21B668)
  {
    result = swift_getWitnessTable(byte_1C7588C7C, &_s19ClusterAssetElectorC16StochatizedAssetV14PersonMatchingO36AllRequiredCharactersAssetCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC21B668);
  }

  return result;
}

unint64_t sub_1C73DA4F8()
{
  result = qword_1EC21B670;
  if (!qword_1EC21B670)
  {
    result = swift_getWitnessTable(byte_1C7588C04, &_s19ClusterAssetElectorC16StochatizedAssetV14PersonMatchingO15OtherCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC21B670);
  }

  return result;
}

unint64_t sub_1C73DA550()
{
  result = qword_1EC21B678;
  if (!qword_1EC21B678)
  {
    result = swift_getWitnessTable(byte_1C7588C2C, &_s19ClusterAssetElectorC16StochatizedAssetV14PersonMatchingO15OtherCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC21B678);
  }

  return result;
}

unint64_t sub_1C73DA5A8()
{
  result = qword_1EC21B680;
  if (!qword_1EC21B680)
  {
    result = swift_getWitnessTable(byte_1C7588CF4, &_s19ClusterAssetElectorC16StochatizedAssetV14PersonMatchingO10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC21B680);
  }

  return result;
}

unint64_t sub_1C73DA600()
{
  result = qword_1EC21B688;
  if (!qword_1EC21B688)
  {
    result = swift_getWitnessTable(byte_1C7588D1C, &_s19ClusterAssetElectorC16StochatizedAssetV14PersonMatchingO10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC21B688);
  }

  return result;
}

unint64_t sub_1C73DA658()
{
  result = qword_1EC21B690;
  if (!qword_1EC21B690)
  {
    result = swift_getWitnessTable(byte_1C7588AFC, &_s19ClusterAssetElectorC16StochatizedAssetV14DependencyTypeO16AnchorCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC21B690);
  }

  return result;
}

unint64_t sub_1C73DA6B0()
{
  result = qword_1EC21B698;
  if (!qword_1EC21B698)
  {
    result = swift_getWitnessTable(asc_1C7588B24, &_s19ClusterAssetElectorC16StochatizedAssetV14DependencyTypeO16AnchorCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC21B698);
  }

  return result;
}

unint64_t sub_1C73DA708()
{
  result = qword_1EC21B6A0;
  if (!qword_1EC21B6A0)
  {
    result = swift_getWitnessTable(aE_10, &_s19ClusterAssetElectorC16StochatizedAssetV14DependencyTypeO21IndependentCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC21B6A0);
  }

  return result;
}

unint64_t sub_1C73DA760()
{
  result = qword_1EC21B6A8;
  if (!qword_1EC21B6A8)
  {
    result = swift_getWitnessTable(asc_1C7588AD4, &_s19ClusterAssetElectorC16StochatizedAssetV14DependencyTypeO21IndependentCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC21B6A8);
  }

  return result;
}

unint64_t sub_1C73DA7B8()
{
  result = qword_1EC21B6B0;
  if (!qword_1EC21B6B0)
  {
    result = swift_getWitnessTable(byte_1C7588A5C, &_s19ClusterAssetElectorC16StochatizedAssetV14DependencyTypeO19DependentCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC21B6B0);
  }

  return result;
}

unint64_t sub_1C73DA810()
{
  result = qword_1EC21B6B8;
  if (!qword_1EC21B6B8)
  {
    result = swift_getWitnessTable(byte_1C7588A84, &_s19ClusterAssetElectorC16StochatizedAssetV14DependencyTypeO19DependentCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC21B6B8);
  }

  return result;
}

unint64_t sub_1C73DA868()
{
  result = qword_1EC21B6C0;
  if (!qword_1EC21B6C0)
  {
    result = swift_getWitnessTable(byte_1C7588B4C, &_s19ClusterAssetElectorC16StochatizedAssetV14DependencyTypeO10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC21B6C0);
  }

  return result;
}

unint64_t sub_1C73DA8C0()
{
  result = qword_1EC21B6C8;
  if (!qword_1EC21B6C8)
  {
    result = swift_getWitnessTable(byte_1C7588B74, &_s19ClusterAssetElectorC16StochatizedAssetV14DependencyTypeO10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC21B6C8);
  }

  return result;
}

unint64_t sub_1C73DA918()
{
  result = qword_1EC21B6D0;
  if (!qword_1EC21B6D0)
  {
    result = swift_getWitnessTable(aM_13, &_s19ClusterAssetElectorC18DiagnosticReporterC10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC21B6D0);
  }

  return result;
}

unint64_t sub_1C73DA970()
{
  result = qword_1EC21B6D8;
  if (!qword_1EC21B6D8)
  {
    result = swift_getWitnessTable(aE_11, &_s19ClusterAssetElectorC18DiagnosticReporterC10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC21B6D8);
  }

  return result;
}

void sub_1C73DA9C4()
{
  OUTLINED_FUNCTION_33();
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217038, &qword_1C7568F30);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_60_22();
  v10 = type metadata accessor for AssetSummaryInfo(v9);
  v11 = OUTLINED_FUNCTION_18(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_45_34();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B700, &qword_1C75891F0);
  v13 = OUTLINED_FUNCTION_76(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_29_8();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_102_4();
  OUTLINED_FUNCTION_41_38();
  if (v16)
  {
    OUTLINED_FUNCTION_51_26();
    v17 = v4;
LABEL_7:
    OUTLINED_FUNCTION_22_61(v17);
    OUTLINED_FUNCTION_21_56();
    sub_1C73D968C();
    *v3 = v7;
    v3[1] = v6;
    sub_1C73D973C();
    v19 = OUTLINED_FUNCTION_38_36();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v2);
    sub_1C75504FC();
    v6 = v24;
LABEL_8:
    OUTLINED_FUNCTION_46_32();
    sub_1C7091CBC();
    OUTLINED_FUNCTION_27_47();
    if (!v22)
    {
      OUTLINED_FUNCTION_23_47();
      v0(v1);
      OUTLINED_FUNCTION_48_26();
      v3 = 0;
    }

    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217040, &qword_1C7568F38);
    __swift_storeEnumTagSinglePayload(v6, v3, 1, v23);
    OUTLINED_FUNCTION_25_0();
  }

  else
  {
    while (1)
    {
      v18 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v18 >= ((v15 + 64) >> 6))
      {
        OUTLINED_FUNCTION_29_39();
        v1 = 0;
        goto LABEL_8;
      }

      ++v4;
      if (*(v0 + v18))
      {
        OUTLINED_FUNCTION_51_26();
        goto LABEL_7;
      }
    }

    __break(1u);
  }
}

void sub_1C73DAC08()
{
  OUTLINED_FUNCTION_33();
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217068, &unk_1C7568F60);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_60_22();
  v10 = type metadata accessor for MomentInformation(v9);
  v11 = OUTLINED_FUNCTION_18(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_45_34();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B708, &qword_1C75891F8);
  v13 = OUTLINED_FUNCTION_76(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_29_8();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_102_4();
  OUTLINED_FUNCTION_41_38();
  if (v16)
  {
    OUTLINED_FUNCTION_51_26();
    v17 = v4;
LABEL_7:
    OUTLINED_FUNCTION_22_61(v17);
    OUTLINED_FUNCTION_20_57();
    sub_1C73D968C();
    *v3 = v7;
    v3[1] = v6;
    sub_1C73D973C();
    v19 = OUTLINED_FUNCTION_38_36();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v2);
    sub_1C75504FC();
    v6 = v24;
LABEL_8:
    OUTLINED_FUNCTION_46_32();
    sub_1C7091CBC();
    OUTLINED_FUNCTION_27_47();
    if (!v22)
    {
      OUTLINED_FUNCTION_23_47();
      v0(v1);
      OUTLINED_FUNCTION_48_26();
      v3 = 0;
    }

    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217070, &unk_1C7589200);
    __swift_storeEnumTagSinglePayload(v6, v3, 1, v23);
    OUTLINED_FUNCTION_25_0();
  }

  else
  {
    while (1)
    {
      v18 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v18 >= ((v15 + 64) >> 6))
      {
        OUTLINED_FUNCTION_29_39();
        v1 = 0;
        goto LABEL_8;
      }

      ++v4;
      if (*(v0 + v18))
      {
        OUTLINED_FUNCTION_51_26();
        goto LABEL_7;
      }
    }

    __break(1u);
  }
}

void sub_1C73DAE4C()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216A40, &qword_1C7565B28);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v30 - v6;
  v8 = type metadata accessor for Hastings.Feature(0);
  v9 = OUTLINED_FUNCTION_18(v8);
  v32 = v10;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_45_34();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216A30, &qword_1C7565B18);
  v12 = OUTLINED_FUNCTION_76(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_29_8();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_102_4();
  v14 = *v0;
  v15 = v0[1];
  v16 = v0[2];
  v17 = v0[3];
  v18 = v0[4];
  v30[1] = v7;
  v33 = v16;
  if (v18)
  {
    v31 = v3;
    v19 = v17;
LABEL_7:
    v20 = (v18 - 1) & v18;
    v21 = __clz(__rbit64(v18)) | (v19 << 6);
    OUTLINED_FUNCTION_2_120();
    sub_1C73D968C();
    v22 = *(*(v14 + 56) + 8 * v21);
    v23 = *(v4 + 48);
    OUTLINED_FUNCTION_16_61();
    sub_1C73D973C();
    *(v1 + v23) = v22;
    v24 = OUTLINED_FUNCTION_38_36();
    __swift_storeEnumTagSinglePayload(v24, v25, v26, v4);
    sub_1C75504FC();
    v3 = v31;
LABEL_8:
    *v0 = v14;
    v0[1] = v15;
    v0[2] = v33;
    v0[3] = v17;
    v0[4] = v20;
    v27 = v0[5];
    sub_1C7091CBC();
    OUTLINED_FUNCTION_27_47();
    if (!v28)
    {
      OUTLINED_FUNCTION_23_47();
      v27(v17);
      OUTLINED_FUNCTION_48_26();
      v1 = 0;
    }

    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AC20, &unk_1C75891E0);
    __swift_storeEnumTagSinglePayload(v3, v1, 1, v29);
    OUTLINED_FUNCTION_25_0();
  }

  else
  {
    while (1)
    {
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v19 >= ((v16 + 64) >> 6))
      {
        OUTLINED_FUNCTION_29_39();
        v20 = 0;
        goto LABEL_8;
      }

      v18 = *(v15 + 8 * v19);
      ++v17;
      if (v18)
      {
        v31 = v3;
        v17 = v19;
        goto LABEL_7;
      }
    }

    __break(1u);
  }
}

void sub_1C73DB0D0(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2168B0, &qword_1C75656C0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v27 - v4;
  v6 = type metadata accessor for Hastings.Feature(0);
  v31 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216A08, &unk_1C7565AE0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v27 - v11;
  v13 = *v1;
  v14 = v1[1];
  v15 = v1[2];
  v16 = v1[3];
  v17 = v1[4];
  v28 = v5;
  v32 = v15;
  if (v17)
  {
    v29 = v9;
    v30 = a1;
    v18 = v16;
LABEL_7:
    v19 = (v17 - 1) & v17;
    v20 = __clz(__rbit64(v17)) | (v18 << 6);
    sub_1C73D968C();
    v21 = *(*(v13 + 56) + 8 * v20);
    v22 = *(v3 + 48);
    sub_1C73D973C();
    *&v12[v22] = v21;
    __swift_storeEnumTagSinglePayload(v12, 0, 1, v3);
    sub_1C75504FC();
    v9 = v29;
    a1 = v30;
LABEL_8:
    *v1 = v13;
    v1[1] = v14;
    v1[2] = v32;
    v1[3] = v16;
    v1[4] = v19;
    v23 = v1[5];
    sub_1C7091CBC();
    v24 = 1;
    if (__swift_getEnumTagSinglePayload(v9, 1, v3) != 1)
    {
      v25 = v28;
      sub_1C7091CBC();
      v23(v25);
      sub_1C6FD7FC8(v25, &qword_1EC2168B0, &qword_1C75656C0);
      v24 = 0;
    }

    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B6E0, &qword_1C75891A8);
    __swift_storeEnumTagSinglePayload(a1, v24, 1, v26);
  }

  else
  {
    while (1)
    {
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v18 >= ((v15 + 64) >> 6))
      {
        __swift_storeEnumTagSinglePayload(&v27 - v11, 1, 1, v3);
        v19 = 0;
        goto LABEL_8;
      }

      v17 = *(v14 + 8 * v18);
      ++v16;
      if (v17)
      {
        v29 = v9;
        v30 = a1;
        v16 = v18;
        goto LABEL_7;
      }
    }

    __break(1u);
  }
}

uint64_t OUTLINED_FUNCTION_47_23(uint64_t a1)
{

  return sub_1C754FEEC();
}

void OUTLINED_FUNCTION_50_29()
{

  JUMPOUT(0x1CCA5CD70);
}

uint64_t OUTLINED_FUNCTION_69_23(uint64_t a2, uint64_t a3, ...)
{

  return sub_1C7550F5C();
}

uint64_t OUTLINED_FUNCTION_70_20(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1C755200C();
}

uint64_t StoryPlaceholderAssetsGenerator.init(storyPhotoLibraryContext:storyAssetsFetcher:storyAssetManager:)@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = *(a1 + 4);
  v9 = a1[2];
  type metadata accessor for StoryPlaceholderAssetsGenerator(0);
  if (qword_1EDD07B20 != -1)
  {
    OUTLINED_FUNCTION_1_127(&qword_1EDD07B20);
  }

  v10 = qword_1EDD07B28;
  sub_1C754FF2C();
  *a4 = v7;
  *(a4 + 8) = v8;
  *(a4 + 16) = v9;
  result = sub_1C6FD80E4(a2, a4 + 24);
  *(a4 + 64) = a3;
  return result;
}

uint64_t type metadata accessor for StoryPlaceholderAssetsGenerator(uint64_t a1)
{
  result = qword_1EDD0D530;
  if (!qword_1EDD0D530)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void StoryPlaceholderAssetsGenerator.generateRandomPlaceholderAssetUUIDs(eventRecorder:progressReporter:forPrewarming:)(void *a1, uint64_t a2, char a3)
{
  v7 = sub_1C754F38C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C754F1CC();
  sub_1C754F2CC();
  if (v3)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1C754F1AC();
    (*(v8 + 8))(v10, v7);
    sub_1C754F2FC();
    OUTLINED_FUNCTION_3();
    (*(v11 + 8))(a2);
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    sub_1C73DC404(v13[1], a3 & 1, &v14);
    objc_autoreleasePoolPop(v12);
    sub_1C754F2EC();
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1C754F1AC();
    (*(v8 + 8))(v10, v7);
  }
}

uint64_t StoryPlaceholderAssetsGenerator.generatePlaceholderAssets(from:eventRecorder:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[31] = a5;
  v6[32] = v5;
  v6[29] = a3;
  v6[30] = a4;
  v6[27] = a1;
  v6[28] = a2;
  v7 = sub_1C754F38C();
  v6[33] = v7;
  v6[34] = *(v7 - 8);
  v6[35] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C73DB978, 0, 0);
}

uint64_t sub_1C73DB978()
{
  type metadata accessor for StoryPlaceholderAssetsGenerator(0);
  v1 = sub_1C754FEEC();
  v2 = sub_1C755117C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1C6F5C000, v1, v2, "Start generating placeholder assets using user prompt", v3, 2u);
    MEMORY[0x1CCA5F8E0](v3, -1, -1);
  }

  v4 = *(v0 + 240);

  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1C754F1CC();
  sub_1C754F2CC();
  __swift_project_boxed_opaque_existential_1(*(v0 + 240), v4[3]);
  sub_1C754F15C();
  *(v0 + 56) = &type metadata for EmbeddingSearchThresholdingModels.VersionHandlingEmbeddingSearchThresholdModel;
  *(v0 + 64) = &off_1F46ACFD0;
  v5 = [objc_opt_self() currentUnifiedEmbeddingVersion];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 integerValue];
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v0 + 256);
  *(v0 + 32) = 4;
  *(v0 + 40) = v7;
  *(v0 + 48) = v6 == 0;
  *(v0 + 16) = 2;
  *(v0 + 24) = 1;
  *(v0 + 88) = xmmword_1C7569120;
  *(v0 + 104) = xmmword_1C7589230;
  *(v0 + 120) = 1;
  *(v0 + 128) = 1;
  *(v0 + 136) = 700;
  *(v0 + 144) = 0;
  *(v0 + 72) = 250;
  *(v0 + 80) = 0;
  v9 = v8[6];
  v10 = v8[7];
  __swift_project_boxed_opaque_existential_1(v8 + 3, v9);
  sub_1C6F65BE8(0, &qword_1EDD0CE30, 0x1E696AAB0);
  sub_1C75504FC();
  v11 = sub_1C7073450();
  *(v0 + 288) = v11;
  v14 = (*(v10 + 16) + **(v10 + 16));
  v12 = swift_task_alloc();
  *(v0 + 296) = v12;
  *v12 = v0;
  v12[1] = sub_1C73DBD90;

  return v14(v0 + 192, v11, v0 + 16, v0 + 152, v9, v10);
}

uint64_t sub_1C73DBD90()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v3 = sub_1C73DC154;
  }

  else
  {
    v3 = sub_1C73DBEC4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1C73DBEC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v33 = v7;
  v8 = v7[38];
  v9 = v7[25];
  v10 = v7[26];
  v29 = v7[24];
  v30 = v9;
  v31 = v10;
  v11 = FreeformStoryFetching.Result.uuids.getter(a1, a2, a3, a4, a5, a6, a7);
  sub_1C7033F04(250, v11);
  sub_1C706E83C();
  v13 = v12;
  sub_1C754F2DC();
  if (v8)
  {
    v14 = v7[34];
    v15 = v7[35];
    v16 = v7[33];
    v27 = v7[31];
    __swift_destroy_boxed_opaque_existential_1(v7 + 19);

    swift_unknownObjectRelease();
    sub_1C70DF138((v7 + 2));
    OUTLINED_FUNCTION_38_1();
    sub_1C754F1AC();
    (*(v14 + 8))(v15, v16);
    sub_1C754F2FC();
    OUTLINED_FUNCTION_3();
    (*(v17 + 8))(v27);

    OUTLINED_FUNCTION_43();
  }

  else
  {
    StoryAsset.Manager.collection(with:)(v13, &v29);

    v18 = v29;
    v19 = v30;
    v25 = v31;
    v26 = v32;
    sub_1C754F2EC();
    v21 = v7[34];
    v20 = v7[35];
    v28 = v7[33];
    v24 = v7[27];
    __swift_destroy_boxed_opaque_existential_1(v7 + 19);

    swift_unknownObjectRelease();
    sub_1C70DF138((v7 + 2));
    *v24 = v18;
    v24[1] = v19;
    v24[2] = v25;
    v24[3] = v26;
    OUTLINED_FUNCTION_38_1();
    sub_1C754F1AC();
    (*(v21 + 8))(v20, v28);

    OUTLINED_FUNCTION_43();
  }

  return v22();
}

uint64_t sub_1C73DC154()
{
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[33];
  v4 = v0[30];
  v5 = v0[31];
  __swift_destroy_boxed_opaque_existential_1(v0 + 19);
  sub_1C70DF138((v0 + 2));
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1C754F1AC();
  (*(v2 + 8))(v1, v3);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v6 + 8))(v5);

  OUTLINED_FUNCTION_43();

  return v7();
}

uint64_t sub_1C73DC250()
{
  sub_1C6F65BE8(0, &qword_1EDD0FA60, 0x1E69E9BF8);
  result = sub_1C755146C();
  qword_1EDD07B28 = result;
  return result;
}

uint64_t static StoryPlaceholderAssetsGenerator.placeHolderAssetGenerator(storyPhotoLibraryContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  static FreeformStoryFetching.fetcher(with:isForTesting:)(*a1, 0, v15);
  v12 = v3;
  v13 = v4;
  v14 = v5;
  type metadata accessor for StoryAsset.Manager();
  swift_allocObject();
  v6 = v3;

  v7 = StoryAsset.Manager.init(storyPhotoLibraryContext:)(&v12);
  sub_1C6FB5E28(v15, a2 + 24);
  type metadata accessor for StoryPlaceholderAssetsGenerator(0);
  v8 = qword_1EDD07B20;
  v9 = v6;

  if (v8 != -1)
  {
    OUTLINED_FUNCTION_1_127(&qword_1EDD07B20);
  }

  v10 = qword_1EDD07B28;
  sub_1C754FF2C();
  result = __swift_destroy_boxed_opaque_existential_1(v15);
  *a2 = v9;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 64) = v7;
  return result;
}

void sub_1C73DC404(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v68 = a3;
  v70 = *(type metadata accessor for StoryPlaceholderAssetsGenerator(0) + 28);
  v4 = sub_1C754FEEC();
  v5 = sub_1C755117C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1C6F5C000, v4, v5, "Start generating random placeholder assets", v6, 2u);
    MEMORY[0x1CCA5F8E0](v6, -1, -1);
  }

  v71 = a1;
  v74 = static StoryGenerationUtilities.assetIdentifiersFetchOptions(for:sharingFilter:wantsIncrementalChangeDetails:)(*a1, *(a1 + 8), 0);
  sub_1C6F65BE8(0, &qword_1EDD0FAD0, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C75604F0;
  v8 = MEMORY[0x1E69E6158];
  *(v7 + 56) = MEMORY[0x1E69E6158];
  v9 = sub_1C6F6D524();
  *(v7 + 64) = v9;
  v10 = 0xD000000000000020;
  *(v7 + 32) = 0xD000000000000028;
  *(v7 + 40) = 0x80000001C75A3700;
  v11 = MEMORY[0x1E69E72E8];
  *(v7 + 96) = MEMORY[0x1E69E7290];
  *(v7 + 104) = v11;
  *(v7 + 72) = 1;
  v12 = sub_1C755112C();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1C75604F0;
  *(v13 + 56) = v8;
  *(v13 + 64) = v9;
  *(v13 + 32) = 0xD00000000000002BLL;
  *(v13 + 40) = 0x80000001C75AE980;
  v14 = MEMORY[0x1E69E75F8];
  v15 = MEMORY[0x1E69E7660];
  *(v13 + 96) = MEMORY[0x1E69E75F8];
  *(v13 + 104) = v15;
  *(v13 + 72) = 3;
  v16 = sub_1C755112C();
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1C75604F0;
  *(v17 + 56) = v8;
  *(v17 + 64) = v9;
  *(v17 + 32) = 0xD000000000000020;
  *(v17 + 40) = 0x80000001C75AE9B0;
  *(v17 + 96) = v14;
  *(v17 + 104) = v15;
  *(v17 + 72) = 7;
  v18 = sub_1C755112C();
  sub_1C6F65BE8(0, &qword_1EDD0FA80, 0x1E696AB28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70, &unk_1C7565390);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1C75650C0;
  *(v19 + 32) = v12;
  *(v19 + 40) = v16;
  *(v19 + 48) = v18;
  v20 = v12;
  v21 = v16;
  v22 = v18;
  v23 = sub_1C6F6E5C4(v19);
  [v74 setInternalPredicate_];

  if (a2)
  {
    v24 = 100;
  }

  else
  {
    v24 = 250;
  }

  v25 = [objc_opt_self() placeholderAssetFetchMultiplier];
  if ((v24 * v25) >> 64 != (v24 * v25) >> 63)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v73 = v24;
  [v74 setFetchLimit_];
  v26 = [objc_opt_self() fetchAssetsWithOptions_];
  v27 = [v26 fetchedObjects];

  v66 = v20;
  v67 = v22;
  v65 = v21;
  if (v27)
  {
    sub_1C6F65BE8(0, &qword_1EDD0FA70, 0x1E6978630);
    v28 = sub_1C7550B5C();
  }

  else
  {
    v28 = MEMORY[0x1E69E7CC0];
  }

  v29 = sub_1C6FB6304();
  v30 = 0;
  v75 = MEMORY[0x1E69E7CC0];
  while (v29 != v30)
  {
    if ((v28 & 0xC000000000000001) != 0)
    {
      v31 = MEMORY[0x1CCA5DDD0](v30, v28);
    }

    else
    {
      if (v30 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_39;
      }

      v31 = *(v28 + 8 * v30 + 32);
    }

    v10 = v31;
    v32 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v33 = sub_1C70CAC04(v31);
    v35 = v34;

    ++v30;
    if (v35)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB1814();
        v75 = v37;
      }

      v10 = *(v75 + 16);
      if (v10 >= *(v75 + 24) >> 1)
      {
        sub_1C6FB1814();
        v75 = v38;
      }

      *(v75 + 16) = v10 + 1;
      v36 = v75 + 16 * v10;
      *(v36 + 32) = v33;
      *(v36 + 40) = v35;
      v30 = v32;
    }
  }

  sub_1C70CFE0C(v39, v40, v41, v42, v43, v44, v45, v46, v64, v65, v20, v22, v68, v69, v70, v71, v73, v74, v75, 4, v76, v75);
  v47 = *(v77 + 16);
  v48 = sub_1C754FEEC();
  v49 = sub_1C75511BC();
  v10 = &unk_1C755C000;
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 134217984;
    *(v50 + 4) = v47;
    _os_log_impl(&dword_1C6F5C000, v48, v49, "Generated %ld curated / summary assets", v50, 0xCu);
    MEMORY[0x1CCA5F8E0](v50, -1, -1);
  }

  sub_1C74B833C();
  v52 = v51;
  v54 = v53;

  if ((v54 & 1) == 0)
  {
    goto LABEL_26;
  }

  sub_1C7551DEC();
  swift_unknownObjectRetain_n();
  v59 = swift_dynamicCastClass();
  if (!v59)
  {
    swift_unknownObjectRelease();
    v59 = MEMORY[0x1E69E7CC0];
  }

  v60 = *(v59 + 16);

  if (__OFSUB__(v54 >> 1, v52))
  {
LABEL_41:
    __break(1u);
LABEL_42:
    swift_unknownObjectRelease_n();
LABEL_26:
    sub_1C739C274();
    v56 = v55;
    v57 = v67;
    v58 = v65;
LABEL_33:
    swift_unknownObjectRelease();
    goto LABEL_34;
  }

  if (v60 != (v54 >> 1) - v52)
  {
    goto LABEL_42;
  }

  v56 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  v57 = v67;
  v58 = v65;
  if (!v56)
  {
    v56 = MEMORY[0x1E69E7CC0];
    goto LABEL_33;
  }

LABEL_34:

  v61 = sub_1C754FEEC();
  v62 = sub_1C75511BC();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    *v63 = *(v10 + 3176);
    *(v63 + 4) = *(v56 + 16);

    _os_log_impl(&dword_1C6F5C000, v61, v62, "Selected %ld random placeholder assets", v63, 0xCu);
    MEMORY[0x1CCA5F8E0](v63, -1, -1);
  }

  else
  {
  }

  *v68 = v56;
}

uint64_t sub_1C73DCB74(uint64_t a1)
{
  result = sub_1C72C729C();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for StoryAsset.Manager();
    if (v3 <= 0x3F)
    {
      result = sub_1C754FF1C();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t MusicKeywordsOptions.init(query:maxKeywords:maestroKeywords:computeNumberOfTokens:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

void *static StoryGenerationUtilities.boundedAssetUUIDsForEmptyInitialRetrieval(storyPhotoLibraryContext:eventRecorder:maximumNumberOfMomentsForEntireLibraryRetrieval:)(uint64_t a1, void *a2, uint64_t a3)
{
  v65 = sub_1C754F38C();
  OUTLINED_FUNCTION_3_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14_0();
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  OUTLINED_FUNCTION_11_71();
  sub_1C754F1CC();
  if (qword_1EDD0DBE8 != -1)
  {
    OUTLINED_FUNCTION_40_3();
    swift_once();
  }

  v12 = qword_1EDD28D40;
  type metadata accessor for PerformanceMeasure(0);
  swift_allocObject();
  v13 = v12;
  PerformanceMeasure.init(name:log:)();
  v14 = objc_autoreleasePoolPush();
  sub_1C73DD990(v9, v10, &v69, &v66);
  if (!v3)
  {
    v61 = v11;
    v62 = v9;
    v63 = v10;
    objc_autoreleasePoolPop(v14);
    v15 = v66;
    if (qword_1EDD0DBE0 != -1)
    {
      OUTLINED_FUNCTION_2();
      swift_once();
    }

    v59 = v7;
    v16 = sub_1C754FF1C();
    __swift_project_value_buffer(v16, qword_1EDD28D28);
    v17 = sub_1C754FEEC();
    v18 = sub_1C75511BC();
    v19 = v62;
    if (OUTLINED_FUNCTION_15_75(v18))
    {
      v20 = OUTLINED_FUNCTION_41_0();
      *v20 = 134217984;
      *(v20 + 4) = a3;
      _os_log_impl(&dword_1C6F5C000, v17, v18, "%ld moments max for entire library retrieval", v20, 0xCu);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    sub_1C75504FC();
    v60 = v15;
    sub_1C706D154();
    v66 = v62;
    v67 = v63;
    v68 = v61;
    v9 = static StoryGenerationUtilities.momentUUIDByAssetUUID(for:storyPhotoLibraryContext:)(v21, &v66);

    v22 = static StoryGenerationUtilities.assetUUIDsByMomentUUID(for:)(v9);
    v23 = *(v22 + 16);
    v24 = sub_1C754FEEC();
    v25 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_15_75(v25))
    {
      v26 = OUTLINED_FUNCTION_41_0();
      *v26 = 134217984;
      *(v26 + 4) = v23;
      _os_log_impl(&dword_1C6F5C000, v24, v25, "%ld moments from month highlights", v26, 0xCu);
      v19 = v62;
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    v27 = a3 - v23;
    if (a3 <= v23)
    {
      v29 = sub_1C754FEEC();
      v30 = sub_1C75511BC();
      v31 = OUTLINED_FUNCTION_72();
      v7 = v59;
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_1C6F5C000, v29, v30, "Sampling moments from only month highlights", v33, 2u);
        v19 = v62;
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      v66 = v19;
      v67 = v63;
      v68 = v61;
      v11 = sub_1C73DDDF0(v60, v9, v22, a3);
    }

    else
    {

      v28 = objc_autoreleasePoolPush();
      sub_1C73DE268(v19, v63, &v69, &v66);
      v7 = v59;
      v11 = v60;
      objc_autoreleasePoolPop(v28);
      v35 = v66;
      if (!v66[2])
      {

        v49 = sub_1C754FEEC();
        v57 = sub_1C75511BC();
        if (!OUTLINED_FUNCTION_15_75(v57))
        {
LABEL_26:

          goto LABEL_17;
        }

        v58 = swift_slowAlloc();
        *v58 = 0;
        v52 = "No dayHighlightAssetUUIDs from which to sample, returning month highlight asset UUIDs";
        v53 = v57;
        v54 = v49;
        v55 = v58;
        v56 = 2;
LABEL_25:
        _os_log_impl(&dword_1C6F5C000, v54, v53, v52, v55, v56);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
        goto LABEL_26;
      }

      v36 = sub_1C754FEEC();
      sub_1C75511BC();
      v37 = OUTLINED_FUNCTION_72();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = OUTLINED_FUNCTION_41_0();
        *v39 = 134217984;
        *(v39 + 4) = v27;
        OUTLINED_FUNCTION_6_100();
        _os_log_impl(v40, v41, v42, v43, v44, 0xCu);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      sub_1C75504FC();
      sub_1C706D154();
      v66 = v19;
      v9 = v19;
      v67 = v63;
      v68 = v61;
      v46 = static StoryGenerationUtilities.momentUUIDByAssetUUID(for:storyPhotoLibraryContext:)(v45, &v66);

      v47 = static StoryGenerationUtilities.assetUUIDsByMomentUUID(for:)(v46);
      v66 = v19;
      v67 = v63;
      v68 = v61;
      v48 = sub_1C73DDDF0(v35, v46, v47, v27);

      v66 = v60;
      sub_1C6FD2568(v48);
      v11 = v66;
      sub_1C75504FC();
      v49 = sub_1C754FEEC();
      v50 = sub_1C75511BC();
      if (OUTLINED_FUNCTION_15_75(v50))
      {
        v51 = OUTLINED_FUNCTION_41_0();
        *v51 = 134217984;
        *(v51 + 4) = v11[2];

        v52 = "Bounded initial retrieval with %ld assets from both month and day highlights";
        v53 = v50;
        v54 = v49;
        v55 = v51;
        v56 = 12;
        goto LABEL_25;
      }
    }

    goto LABEL_17;
  }

  objc_autoreleasePoolPop(v14);
LABEL_17:
  sub_1C6F85170();

  OUTLINED_FUNCTION_8_81();
  (*(v7 + 8))(v9, v65);
  return v11;
}

uint64_t sub_1C73DD2C4(uint64_t a1, uint64_t *a2, void *a3)
{
  v64 = sub_1C754F38C();
  OUTLINED_FUNCTION_3_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14_0();
  v11 = v10 - v9;
  v12 = *a2;
  v13 = *(a2 + 4);
  v14 = a2[2];
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  sub_1C754F1CC();
  if (qword_1EDD0DBE8 != -1)
  {
LABEL_37:
    OUTLINED_FUNCTION_40_3();
    swift_once();
  }

  v15 = qword_1EDD28D40;
  type metadata accessor for PerformanceMeasure(0);
  swift_allocObject();
  v16 = v15;
  PerformanceMeasure.init(name:log:)();
  v17 = *(a1 + 16);
  sub_1C75504FC();
  v18 = a1;
  v62 = v17;
  if (v17 >= 0xFB)
  {
    sub_1C706D154();
    OUTLINED_FUNCTION_13_78();
    static StoryGenerationUtilities.momentUUIDByAssetUUID(for:storyPhotoLibraryContext:)(v19, v20);
    OUTLINED_FUNCTION_68();
    v21 = static StoryGenerationUtilities.assetUUIDsByMomentUUID(for:)(a1);

    v22 = *(v21 + 16);

    if (v22 < 0xFB)
    {
      sub_1C75504FC();
      v18 = a1;
    }

    else
    {
      OUTLINED_FUNCTION_13_78();
      v18 = sub_1C73DEC88(a1, v23);
    }
  }

  v24 = objc_opt_self();
  a1 = v14;
  v25 = v13;
  v26 = [v24 useNormalDistributionForMoments];
  [v24 minimumCumulativeDistributionOfMomentFrequency];
  v70 = v12;
  v71 = v25;
  v72 = a1;
  v65 = xmmword_1C7575BD0;
  v66 = 4;
  v67 = v26;
  v68 = v27;
  v69 = 0;
  v28 = v73;
  v29 = static StoryGenerationUtilities.representativeMomentUUIDsAndAssetUUIDs(for:storyPhotoLibraryContext:sortDescriptors:configuration:)(v18, &v70, MEMORY[0x1E69E7CC0], &v65);
  if (v28)
  {

    sub_1C6F85170();

    OUTLINED_FUNCTION_10_75();
    (*(v7 + 8))(v11, v64);
  }

  else
  {
    v30 = v29;
    v60 = a1;
    v63 = v25;

    sub_1C71BB090(v30);
    OUTLINED_FUNCTION_68();
    v31 = sub_1C71C1210(v18);
    a1 = v31;
    if (*(v31 + 16) > 0xFAuLL)
    {
      v57 = *(v31 + 16);
      v58 = v11;
      v59 = v7;
      v11 = v31 + 64;
      v32 = 1 << *(v31 + 32);
      v33 = -1;
      if (v32 < 64)
      {
        v33 = ~(-1 << v32);
      }

      v14 = v33 & *(v31 + 64);
      v34 = (v32 + 63) >> 6;
      v73 = v31;
      sub_1C75504FC();
      a1 = 0;
      v35 = MEMORY[0x1E69E7CC0];
      v13 = v63;
      v61 = v12;
      while (v14)
      {
LABEL_17:
        v37 = *(*(v73 + 56) + ((a1 << 9) | (8 * __clz(__rbit64(v14)))));
        v38 = *(v37 + 16);
        v12 = *(v35 + 16);
        v7 = v12 + v38;
        if (__OFADD__(v12, v38))
        {
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          OUTLINED_FUNCTION_2();
          swift_once();
          goto LABEL_30;
        }

        sub_1C75504FC();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = v35;
        if (!isUniquelyReferenced_nonNull_native || v7 > *(v35 + 24) >> 1)
        {
          sub_1C6FB1814();
          v40 = v41;
        }

        v12 = v61;
        v14 &= v14 - 1;
        v13 = v63;
        if (*(v37 + 16))
        {
          if ((*(v40 + 24) >> 1) - *(v40 + 16) < v38)
          {
            goto LABEL_39;
          }

          v7 = v40;
          swift_arrayInitWithCopy();

          v35 = v7;
          if (v38)
          {
            v42 = *(v7 + 16);
            v43 = __OFADD__(v42, v38);
            v44 = v42 + v38;
            if (v43)
            {
              goto LABEL_40;
            }

            *(v7 + 16) = v44;
          }
        }

        else
        {
          v45 = v40;

          v35 = v45;
          if (v38)
          {
            __break(1u);
            goto LABEL_34;
          }
        }
      }

      while (1)
      {
        v36 = a1 + 1;
        if (__OFADD__(a1, 1))
        {
          __break(1u);
          goto LABEL_37;
        }

        if (v36 >= v34)
        {
          break;
        }

        v14 = *(v11 + 8 * v36);
        ++a1;
        if (v14)
        {
          a1 = v36;
          goto LABEL_17;
        }
      }

      v14 = v35;

      if (qword_1EDD0DBE0 != -1)
      {
        goto LABEL_41;
      }

LABEL_30:
      v46 = sub_1C754FF1C();
      __swift_project_value_buffer(v46, qword_1EDD28D28);
      sub_1C75504FC();
      sub_1C75504FC();
      v47 = sub_1C754FEEC();
      v48 = sub_1C75511BC();
      v49 = OUTLINED_FUNCTION_72();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 134218752;
        *(v51 + 4) = v57;
        *(v51 + 12) = 2048;
        v52 = OUTLINED_FUNCTION_12_72(v51);
        *(v52 + 22) = 2048;
        *(v52 + 24) = *(v14 + 16);

        *(v51 + 32) = 2048;
        *(v51 + 34) = v62;

        _os_log_impl(&dword_1C6F5C000, v47, v48, "Applying moment sampling: numberOfMomentsCovered (%ld) > maximumNumberOfMoments (%ld), got %ld out of %ld assets.", v51, 0x2Au);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      else
      {
      }

      v11 = v58;
      v7 = v59;
      sub_1C75504FC();
      sub_1C706D154();
      *&v65 = v12;
      WORD4(v65) = v13;
      v66 = v60;
      static StoryGenerationUtilities.momentUUIDByAssetUUID(for:storyPhotoLibraryContext:)(v53, &v65);
      OUTLINED_FUNCTION_68();
      v54 = static StoryGenerationUtilities.assetUUIDsByMomentUUID(for:)(v47);
      *&v65 = v12;
      WORD4(v65) = v13;
      v66 = v60;
      sub_1C73DDDF0(v14, v47, v54, 250);

      sub_1C706D154();
      *&v65 = v12;
      WORD4(v65) = v63;
      v66 = v60;
      static StoryGenerationUtilities.momentUUIDByAssetUUID(for:storyPhotoLibraryContext:)(v55, &v65);
      OUTLINED_FUNCTION_68();
      a1 = static StoryGenerationUtilities.assetUUIDsByMomentUUID(for:)(v47);
    }

LABEL_34:
    sub_1C6F85170();

    OUTLINED_FUNCTION_10_75();
    (*(v7 + 8))(v11, v64);
  }

  return a1;
}

void sub_1C73DD990(void *a1@<X0>, unsigned __int16 a2@<W1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = static StoryGenerationUtilities.assetIdentifiersFetchOptions(for:sharingFilter:wantsIncrementalChangeDetails:)(a1, a2, 0);
  sub_1C6F65BE8(0, &qword_1EDD0FAD0, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C755BAA0;
  v7 = MEMORY[0x1E69E6158];
  *(v6 + 56) = MEMORY[0x1E69E6158];
  v8 = sub_1C6F6D524();
  *(v6 + 32) = 0xD00000000000001CLL;
  *(v6 + 40) = 0x80000001C75A2960;
  *(v6 + 96) = v7;
  *(v6 + 104) = v8;
  *(v6 + 64) = v8;
  *(v6 + 72) = 0x696C696269736976;
  *(v6 + 80) = 0xEF65746174537974;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214ED8, &qword_1C755C0C8);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C75604F0;
  *(v9 + 32) = 196610;
  *(v6 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219300, &unk_1C7577770);
  *(v6 + 144) = sub_1C7343B78();
  *(v6 + 112) = v9;
  v10 = sub_1C755112C();
  [v5 setInternalPredicate_];

  v11 = [objc_opt_self() fetchAssetsWithOptions_];
  v12 = [v11 fetchedObjects];

  if (v12)
  {
    v32 = v5;
    sub_1C6F65BE8(0, &qword_1EDD0FA70, 0x1E6978630);
    v13 = sub_1C7550B5C();

    a3 = sub_1C6FB6304();
    v5 = 0;
    v34 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (a3 == v5)
      {

        *a4 = v34;
        return;
      }

      if ((v13 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1CCA5DDD0](v5, v13);
      }

      else
      {
        if (v5 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v14 = *(v13 + 8 * v5 + 32);
      }

      v15 = (v5 + 1);
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v16 = v14;
      v17 = [v16 uuid];
      if (v17)
      {
        v18 = v17;
        v19 = sub_1C755068C();
        v31 = v20;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C6FB1814();
          v34 = v23;
        }

        v21 = *(v34 + 16);
        if (v21 >= *(v34 + 24) >> 1)
        {
          sub_1C6FB1814();
          v34 = v24;
        }

        *(v34 + 16) = v21 + 1;
        v22 = v34 + 16 * v21;
        *(v22 + 32) = v19;
        *(v22 + 40) = v31;
        v5 = v15;
      }

      else
      {

        ++v5;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (qword_1EDD0DBE0 != -1)
  {
LABEL_23:
    swift_once();
  }

  v25 = sub_1C754FF1C();
  __swift_project_value_buffer(v25, qword_1EDD28D28);
  v26 = sub_1C754FEEC();
  v27 = sub_1C755119C();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_1C6F5C000, v26, v27, "Wasn't able to fetch assets in month highlights", v28, 2u);
    MEMORY[0x1CCA5F8E0](v28, -1, -1);
  }

  sub_1C7196EF4();
  v29 = swift_allocError();
  *v30 = 6;
  *(v30 + 8) = 2;
  swift_willThrow();

  *a3 = v29;
}

uint64_t sub_1C73DDDF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1EDD0DBE8 != -1)
  {
    swift_once();
  }

  v7 = qword_1EDD28D40;
  type metadata accessor for PerformanceMeasure(0);
  swift_allocObject();
  v8 = v7;
  PerformanceMeasure.init(name:log:)();
  v9 = *(a1 + 16);
  v41 = *(a3 + 16);
  v10 = sub_1C75504FC();
  v11 = sub_1C71CD90C(v10);
  v12 = *(v11 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  v43 = v9;
  if (v12)
  {
    sub_1C716DA70(0, v12, 0);
    v14 = v9;
    v15 = (v11 + 40);
    do
    {
      v16 = 0.0;
      if (*(a3 + 16))
      {
        v17 = *(v15 - 1);
        v18 = *v15;
        sub_1C75504FC();
        v19 = sub_1C6F78124(v17, v18);
        if (v20)
        {
          v21 = *(*(a3 + 56) + 8 * v19);
          sub_1C75504FC();

          v22 = *(v21 + 16);

          v16 = v22;
        }

        else
        {
        }
      }

      v24 = *(v13 + 16);
      v23 = *(v13 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1C716DA70(v23 > 1, v24 + 1, 1);
      }

      *(v13 + 16) = v24 + 1;
      *(v13 + 8 * v24 + 32) = v16 / v14;
      v15 += 2;
      --v12;
    }

    while (v12);
    v9 = v43;
  }

  sub_1C73DF7AC(v11, a4, v13);

  if (v9)
  {
    v25 = (a1 + 40);
    v26 = MEMORY[0x1E69E7CC0];
    do
    {
      if (*(a2 + 16))
      {
        v28 = *(v25 - 1);
        v27 = *v25;
        sub_1C75504FC();
        v29 = sub_1C6F78124(v28, v27);
        if ((v30 & 1) != 0 && (MEMORY[0x1EEE9AC00](v29), sub_1C75504FC(), v31 = sub_1C70735F4(), , v31))
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C6FB1814();
            v26 = v34;
          }

          v32 = *(v26 + 16);
          if (v32 >= *(v26 + 24) >> 1)
          {
            sub_1C6FB1814();
            v26 = v35;
          }

          *(v26 + 16) = v32 + 1;
          v33 = v26 + 16 * v32;
          *(v33 + 32) = v28;
          *(v33 + 40) = v27;
        }

        else
        {
        }
      }

      v25 += 2;
      --v9;
    }

    while (v9);
  }

  else
  {

    v26 = MEMORY[0x1E69E7CC0];
  }

  if (qword_1EDD0DBE0 != -1)
  {
    swift_once();
  }

  v36 = sub_1C754FF1C();
  __swift_project_value_buffer(v36, qword_1EDD28D28);
  sub_1C75504FC();
  v37 = sub_1C754FEEC();
  v38 = sub_1C75511BC();
  if (!os_log_type_enabled(v37, v38))
  {

    goto LABEL_33;
  }

  result = swift_slowAlloc();
  *result = 134218752;
  *(result + 4) = v41;
  *(result + 12) = 2048;
  if (!__OFSUB__(v41, a4))
  {
    v40 = result;
    *(result + 14) = v41 - a4;
    *(result + 22) = 2048;
    *(result + 24) = v43;
    *(result + 32) = 2048;
    *(result + 34) = *(v26 + 16);

    _os_log_impl(&dword_1C6F5C000, v37, v38, "Applied moment bounding on %ld moments: discarded %ld moments via sampling, went from %ld assets to %ld.", v40, 0x2Au);
    MEMORY[0x1CCA5F8E0](v40, -1, -1);
LABEL_33:

    sub_1C6F85170();

    return v26;
  }

  __break(1u);
  return result;
}

void sub_1C73DE268(void *a1@<X0>, unsigned __int16 a2@<W1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v38 = static StoryGenerationUtilities.assetIdentifiersFetchOptions(for:sharingFilter:wantsIncrementalChangeDetails:)(a1, a2, 0);
  sub_1C6F65BE8(0, &qword_1EDD0FA80, 0x1E696AB28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70, &unk_1C7565390);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C7564A90;
  sub_1C6F65BE8(0, &qword_1EDD0FAD0, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C755BAA0;
  v6 = MEMORY[0x1E69E6158];
  *(v5 + 56) = MEMORY[0x1E69E6158];
  v7 = sub_1C6F6D524();
  *(v5 + 32) = 0xD00000000000001CLL;
  *(v5 + 40) = 0x80000001C75A2960;
  *(v5 + 96) = v6;
  *(v5 + 104) = v7;
  *(v5 + 64) = v7;
  *(v5 + 72) = 0x696C696269736976;
  *(v5 + 80) = 0xEF65746174537974;
  v8 = MEMORY[0x1E69E7660];
  *(v5 + 136) = MEMORY[0x1E69E75F8];
  *(v5 + 144) = v8;
  *(v5 + 112) = 1;
  *(v4 + 32) = sub_1C755112C();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C755BAA0;
  *(v9 + 56) = v6;
  *(v9 + 64) = v7;
  *(v9 + 32) = 0xD00000000000001CLL;
  *(v9 + 40) = 0x80000001C75A2960;
  *(v9 + 96) = v6;
  *(v9 + 104) = v7;
  strcpy((v9 + 72), "extendedCount");
  *(v9 + 86) = -4864;
  v10 = MEMORY[0x1E69E65A8];
  *(v9 + 136) = MEMORY[0x1E69E6530];
  *(v9 + 144) = v10;
  *(v9 + 112) = 2;
  *(v4 + 40) = sub_1C755112C();
  v11 = sub_1C6F6E5C4(v4);
  [v38 setInternalPredicate_];

  v12 = [objc_opt_self() fetchAssetsWithOptions_];
  v13 = [v12 fetchedObjects];

  if (v13)
  {
    sub_1C6F65BE8(0, &qword_1EDD0FA70, 0x1E6978630);
    v14 = sub_1C7550B5C();

    v15 = sub_1C6FB6304();
    v16 = 0;
    v17 = (v14 & 0xFFFFFFFFFFFFFF8);
    v39 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v15 == v16)
      {

        *a4 = v39;
        return;
      }

      if ((v14 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x1CCA5DDD0](v16, v14);
      }

      else
      {
        if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v18 = *(v14 + 8 * v16 + 32);
      }

      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      v20 = v18;
      v21 = [v20 uuid];
      if (v21)
      {
        v22 = v21;
        v23 = sub_1C755068C();
        v37 = v24;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C6FB1814();
          v39 = v27;
        }

        v25 = *(v39 + 16);
        if (v25 >= *(v39 + 24) >> 1)
        {
          sub_1C6FB1814();
          v39 = v28;
        }

        *(v39 + 16) = v25 + 1;
        v26 = v39 + 16 * v25;
        *(v26 + 32) = v23;
        *(v26 + 40) = v37;
        v16 = v19;
      }

      else
      {

        ++v16;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v17 = a3;
  if (qword_1EDD0DBE0 != -1)
  {
LABEL_23:
    swift_once();
  }

  v29 = sub_1C754FF1C();
  __swift_project_value_buffer(v29, qword_1EDD28D28);
  v30 = sub_1C754FEEC();
  v31 = sub_1C755119C();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_1C6F5C000, v30, v31, "Wasn't able to fetch assets in day highlights", v32, 2u);
    MEMORY[0x1CCA5F8E0](v32, -1, -1);
  }

  sub_1C7196EF4();
  v33 = swift_allocError();
  *v34 = 6;
  *(v34 + 8) = 2;
  swift_willThrow();

  *v17 = v33;
}

uint64_t sub_1C73DE778(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1C754F38C();
  OUTLINED_FUNCTION_3_0();
  v51 = v6;
  v52 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14_0();
  v9 = v8 - v7;
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  OUTLINED_FUNCTION_11_71();
  sub_1C754F1CC();
  if (qword_1EDD0DBE8 != -1)
  {
    OUTLINED_FUNCTION_40_3();
    swift_once();
  }

  v10 = qword_1EDD28D40;
  type metadata accessor for PerformanceMeasure(0);
  swift_allocObject();
  v11 = v10;
  PerformanceMeasure.init(name:log:)();
  v12 = *(a1 + 16);
  if (v12 < 0xFB)
  {
    if (qword_1EDD0DBE0 != -1)
    {
      OUTLINED_FUNCTION_2();
      swift_once();
    }

    v22 = sub_1C754FF1C();
    __swift_project_value_buffer(v22, qword_1EDD28D28);
    v23 = sub_1C754FEEC();
    sub_1C75511BC();
    v24 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 134218240;
      *(v26 + 4) = v12;
      *(v26 + 12) = 2048;
      OUTLINED_FUNCTION_12_72(v26);
      OUTLINED_FUNCTION_6_100();
      _os_log_impl(v27, v28, v29, v30, v31, 0x16u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    sub_1C75504FC();
  }

  else
  {
    sub_1C75504FC();
    sub_1C706D154();
    OUTLINED_FUNCTION_3_108();
    v14 = static StoryGenerationUtilities.momentUUIDByAssetUUID(for:storyPhotoLibraryContext:)(v13, v53);

    v15 = static StoryGenerationUtilities.assetUUIDsByMomentUUID(for:)(v14);

    v16 = *(v15 + 16);

    if (v16 < 0xFB)
    {
      if (qword_1EDD0DBE0 != -1)
      {
        OUTLINED_FUNCTION_2();
        swift_once();
      }

      v32 = sub_1C754FF1C();
      __swift_project_value_buffer(v32, qword_1EDD28D28);
      v33 = sub_1C754FEEC();
      sub_1C75511BC();
      v34 = OUTLINED_FUNCTION_72();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 134218240;
        *(v36 + 4) = v16;
        *(v36 + 12) = 2048;
        OUTLINED_FUNCTION_12_72(v36);
        OUTLINED_FUNCTION_6_100();
        _os_log_impl(v37, v38, v39, v40, v41, 0x16u);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      sub_1C75504FC();
    }

    else
    {
      OUTLINED_FUNCTION_3_108();
      v18 = sub_1C73DEC88(a1, v53);
      if (v17 < 251)
      {
        v42 = v17;
        if (qword_1EDD0DBE0 != -1)
        {
          OUTLINED_FUNCTION_2();
          swift_once();
        }

        v43 = sub_1C754FF1C();
        __swift_project_value_buffer(v43, qword_1EDD28D28);
        sub_1C75504FC();
        sub_1C75504FC();
        v44 = sub_1C754FEEC();
        v45 = sub_1C75511BC();
        v46 = OUTLINED_FUNCTION_72();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          *v48 = 134218752;
          *(v48 + 4) = v42;
          *(v48 + 12) = 2048;
          v49 = OUTLINED_FUNCTION_12_72(v48);
          *(v49 + 22) = 2048;
          *(v49 + 24) = *(v18 + 16);

          *(v48 + 32) = 2048;
          *(v48 + 34) = v12;

          _os_log_impl(&dword_1C6F5C000, v44, v45, "No moment sampling applied: filtered numberOfMomentsCovered (%ld) <= maximumNumberOfMoments (%ld), returning %ld out of %ld assets.", v48, 0x2Au);
          OUTLINED_FUNCTION_235();
          MEMORY[0x1CCA5F8E0]();
        }

        else
        {
        }

        a1 = v18;
      }

      else
      {
        sub_1C75504FC();
        sub_1C706D154();
        OUTLINED_FUNCTION_3_108();
        v20 = static StoryGenerationUtilities.momentUUIDByAssetUUID(for:storyPhotoLibraryContext:)(v19, v53);

        v21 = static StoryGenerationUtilities.assetUUIDsByMomentUUID(for:)(v20);
        OUTLINED_FUNCTION_3_108();
        a1 = sub_1C73DDDF0(v18, v20, v21, 250);
      }
    }
  }

  sub_1C6F85170();

  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  sub_1C754F1AC();
  (*(v51 + 8))(v9, v52);
  return a1;
}

uint64_t sub_1C73DEC88(uint64_t isUniquelyReferenced_nonNull_native, uint64_t a2)
{
  v3 = *a2;
  LOWORD(v4) = *(a2 + 8);
  v5 = *(a2 + 16);
  if (qword_1EDD0DBE8 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v6 = qword_1EDD28D40;
    type metadata accessor for PerformanceMeasure(0);
    swift_allocObject();
    v7 = v6;
    PerformanceMeasure.init(name:log:)();
    sub_1C75504FC();
    v118 = isUniquelyReferenced_nonNull_native;
    sub_1C706D154();
    v123 = v3;
    v124 = v4;
    v125 = v5;
    v9 = static StoryGenerationUtilities.momentUUIDByAssetUUID(for:storyPhotoLibraryContext:)(v8, &v123);

    v3 = v9 + 64;
    v10 = 1 << *(v9 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v4 = v11 & *(v9 + 64);
    v12 = (v10 + 63) >> 6;
    v122 = v9;
    sub_1C75504FC();
    v13 = 0;
    v5 = MEMORY[0x1E69E7CC8];
    v120 = v9 + 64;
    if (v4)
    {
      break;
    }

    while (1)
    {
LABEL_6:
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        goto LABEL_106;
      }

      if (v14 >= v12)
      {
        break;
      }

      v4 = *(v3 + 8 * v14);
      ++v13;
      if (v4)
      {
        goto LABEL_9;
      }
    }

    v33 = 0;
    v34 = 1 << *(v5 + 32);
    v35 = -1;
    if (v34 < 64)
    {
      v35 = ~(-1 << v34);
    }

    v36 = *(v5 + 16);
    v37 = v35 & *(v5 + 64);
    v38 = (v34 + 63) >> 6;
    for (i = 0.0; v37; i = i + *(*(v5 + 56) + ((v40 << 9) | (8 * v41))))
    {
      v40 = v33;
LABEL_28:
      v41 = __clz(__rbit64(v37));
      v37 &= v37 - 1;
    }

    while (1)
    {
      v40 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v40 >= v38)
      {
        v117 = *(v5 + 16);
        v42 = v36;
        v43 = i / v36;
        v44 = MEMORY[0x1E69E7CC0];
        if (!v117)
        {
LABEL_51:
          v61 = *(v44 + 2);
          if (v61)
          {
            v62 = v44 + 4;
            v63 = 0.0;
            do
            {
              v64 = *v62++;
              v63 = v63 + v64;
              --v61;
            }

            while (v61);
          }

          else
          {
            v63 = 0.0;
          }

          v65 = sqrt(v63 / v42);
          if (v43 + v65 * -0.5 > v43 + v43 * -0.6)
          {
            v66 = v43 + v65 * -0.5;
          }

          else
          {
            v66 = v43 + v43 * -0.6;
          }

          if (qword_1EDD0DBE0 != -1)
          {
            swift_once();
          }

          v67 = sub_1C754FF1C();
          __swift_project_value_buffer(v67, qword_1EDD28D28);
          v68 = sub_1C754FEEC();
          v69 = sub_1C755117C();
          if (os_log_type_enabled(v68, v69))
          {
            v70 = swift_slowAlloc();
            *v70 = 134218496;
            *(v70 + 4) = v43;
            *(v70 + 12) = 2048;
            *(v70 + 14) = v65;
            *(v70 + 22) = 2048;
            *(v70 + 24) = v66;
            _os_log_impl(&dword_1C6F5C000, v68, v69, "meanScore = %f, standardDeviation = %f, threshold = %f", v70, 0x20u);
            v71 = v70;
            v3 = v120;
            MEMORY[0x1CCA5F8E0](v71, -1, -1);
          }

          v72 = 1 << *(v5 + 32);
          v73 = -1;
          if (v72 < 64)
          {
            v73 = ~(-1 << v72);
          }

          v74 = v73 & *(v5 + 64);
          v4 = (v72 + 63) >> 6;
          sub_1C75504FC();
          isUniquelyReferenced_nonNull_native = 0;
          v75 = MEMORY[0x1E69E7CC0];
          v76 = (v5 + 64);
          while (v74)
          {
LABEL_71:
            v78 = __clz(__rbit64(v74));
            v74 &= v74 - 1;
            v79 = v78 | (isUniquelyReferenced_nonNull_native << 6);
            if (v66 <= *(*(v5 + 56) + 8 * v79))
            {
              v80 = (*(v5 + 48) + 16 * v79);
              v82 = *v80;
              v81 = v80[1];
              sub_1C75504FC();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_1C6FB1814();
                v75 = v85;
              }

              v83 = *(v75 + 16);
              v76 = (v5 + 64);
              if (v83 >= *(v75 + 24) >> 1)
              {
                sub_1C6FB1814();
                v76 = (v5 + 64);
                v75 = v86;
              }

              *(v75 + 16) = v83 + 1;
              v84 = v75 + 16 * v83;
              *(v84 + 32) = v82;
              *(v84 + 40) = v81;
              v3 = v120;
            }
          }

          while (1)
          {
            v77 = isUniquelyReferenced_nonNull_native + 1;
            if (__OFADD__(isUniquelyReferenced_nonNull_native, 1))
            {
              goto LABEL_107;
            }

            if (v77 >= v4)
            {

              sub_1C706D154();
              v88 = v87;
              v89 = 1 << *(v122 + 32);
              if (v89 < 64)
              {
                v90 = ~(-1 << v89);
              }

              else
              {
                v90 = -1;
              }

              v91 = v90 & *(v122 + 64);
              isUniquelyReferenced_nonNull_native = (v89 + 63) >> 6;
              sub_1C75504FC();
              v5 = 0;
              v92 = MEMORY[0x1E69E7CC0];
LABEL_81:
              while (v91)
              {
                v93 = v91;
LABEL_87:
                v91 = (v93 - 1) & v93;
                if (*(v88 + 16))
                {
                  v121 = v92;
                  v95 = (v5 << 10) | (16 * __clz(__rbit64(v93)));
                  v96 = (*(v122 + 48) + v95);
                  v97 = v96[1];
                  v119 = *v96;
                  v98 = (*(v122 + 56) + v95);
                  v100 = *v98;
                  v99 = v98[1];
                  sub_1C7551F3C();
                  v4 = v97;
                  sub_1C75504FC();
                  sub_1C75504FC();
                  sub_1C75505AC();
                  v101 = sub_1C7551FAC();
                  v102 = ~(-1 << *(v88 + 32));
                  do
                  {
                    v103 = v101 & v102;
                    if (((*(v88 + 56 + (((v101 & v102) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v101 & v102)) & 1) == 0)
                    {

                      v3 = v120;
                      v92 = v121;
                      goto LABEL_81;
                    }

                    v104 = (*(v88 + 48) + 16 * v103);
                    if (*v104 == v100 && v104[1] == v99)
                    {
                      break;
                    }

                    v106 = sub_1C7551DBC();
                    v101 = v103 + 1;
                  }

                  while ((v106 & 1) == 0);

                  v92 = v121;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    sub_1C6FB1814();
                    v92 = v109;
                  }

                  v3 = v120;
                  v107 = *(v92 + 16);
                  if (v107 >= *(v92 + 24) >> 1)
                  {
                    sub_1C6FB1814();
                    v92 = v110;
                  }

                  *(v92 + 16) = v107 + 1;
                  v108 = v92 + 16 * v107;
                  *(v108 + 32) = v119;
                  *(v108 + 40) = v4;
                }
              }

              while (1)
              {
                v94 = v5 + 1;
                if (__OFADD__(v5, 1))
                {
                  goto LABEL_108;
                }

                if (v94 >= isUniquelyReferenced_nonNull_native)
                {

                  v111 = *(v88 + 16);

                  sub_1C75504FC();
                  sub_1C75504FC();
                  v112 = sub_1C754FEEC();
                  v113 = sub_1C75511BC();
                  if (os_log_type_enabled(v112, v113))
                  {
                    v114 = swift_slowAlloc();
                    *v114 = 134218752;
                    *(v114 + 4) = *(v92 + 16);

                    *(v114 + 12) = 2048;
                    *(v114 + 14) = *(v118 + 16);

                    *(v114 + 22) = 2048;
                    *(v114 + 24) = v111;
                    *(v114 + 32) = 2048;
                    *(v114 + 34) = v117;
                    _os_log_impl(&dword_1C6F5C000, v112, v113, "StorytellingAssets: selected %ld from %ld assets in %ld moments out of %ld", v114, 0x2Au);
                    MEMORY[0x1CCA5F8E0](v114, -1, -1);
                  }

                  else
                  {
                  }

                  sub_1C6F85170();

                  return v92;
                }

                v93 = *(v3 + 8 * v94);
                ++v5;
                if (v93)
                {
                  v5 = v94;
                  goto LABEL_87;
                }
              }
            }

            v74 = *&v76[8 * v77];
            ++isUniquelyReferenced_nonNull_native;
            if (v74)
            {
              isUniquelyReferenced_nonNull_native = v77;
              goto LABEL_71;
            }
          }
        }

        v123 = MEMORY[0x1E69E7CC0];
        sub_1C716DA70(0, v117, 0);
        v44 = v123;
        v45 = sub_1C70D4544();
        v47 = (v5 + 64);
        v48 = v45;
        v50 = v49;
        v51 = v117;
        v3 = 0;
        if ((v45 & 0x8000000000000000) == 0)
        {
          while (v48 < 1 << *(v5 + 32))
          {
            isUniquelyReferenced_nonNull_native = v48 >> 6;
            v4 = 1 << v48;
            if ((*&v47[8 * (v48 >> 6)] & (1 << v48)) == 0)
            {
              goto LABEL_110;
            }

            if (*(v5 + 36) != v50)
            {
              goto LABEL_111;
            }

            v52 = *(*(v5 + 56) + 8 * v48);
            v123 = v44;
            v54 = *(v44 + 2);
            v53 = *(v44 + 3);
            if (v54 >= v53 >> 1)
            {
              v116 = v46;
              sub_1C716DA70(v53 > 1, v54 + 1, 1);
              v46 = v116;
              v51 = v117;
              v47 = (v5 + 64);
              v44 = v123;
            }

            *(v44 + 2) = v54 + 1;
            v44[v54 + 4] = (v52 - v43) * (v52 - v43);
            v55 = 1 << *(v5 + 32);
            if (v48 >= v55)
            {
              goto LABEL_112;
            }

            v56 = *&v47[8 * isUniquelyReferenced_nonNull_native];
            if ((v56 & v4) == 0)
            {
              goto LABEL_113;
            }

            if (*(v5 + 36) != v50)
            {
              goto LABEL_114;
            }

            v57 = v56 & (-2 << (v48 & 0x3F));
            if (v57)
            {
              v55 = __clz(__rbit64(v57)) | v48 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v4 = isUniquelyReferenced_nonNull_native << 6;
              v58 = isUniquelyReferenced_nonNull_native + 1;
              v59 = (v5 + 72 + 8 * isUniquelyReferenced_nonNull_native);
              while (v58 < (v55 + 63) >> 6)
              {
                v60 = *v59++;
                isUniquelyReferenced_nonNull_native = v60;
                v4 += 64;
                ++v58;
                if (v60)
                {
                  sub_1C6F9ED50(v48, v50, v46 & 1);
                  v51 = v117;
                  v47 = (v5 + 64);
                  v55 = __clz(__rbit64(isUniquelyReferenced_nonNull_native)) + v4;
                  goto LABEL_47;
                }
              }

              sub_1C6F9ED50(v48, v50, v46 & 1);
              v51 = v117;
              v47 = (v5 + 64);
            }

LABEL_47:
            if (++v3 == v51)
            {
              v3 = v120;
              goto LABEL_51;
            }

            v46 = 0;
            v50 = *(v5 + 36);
            v48 = v55;
            if (v55 < 0)
            {
              goto LABEL_109;
            }
          }
        }

        goto LABEL_109;
      }

      v37 = *(v5 + 64 + 8 * v40);
      ++v33;
      if (v37)
      {
        v33 = v40;
        goto LABEL_28;
      }
    }

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
  }

  while (1)
  {
    v14 = v13;
LABEL_9:
    v15 = (*(v9 + 56) + ((v14 << 10) | (16 * __clz(__rbit64(v4)))));
    v17 = *v15;
    v16 = v15[1];
    swift_bridgeObjectRetain_n();
    sub_1C75504FC();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v123 = v5;
    v18 = sub_1C6F78124(v17, v16);
    v20 = *(v5 + 16);
    v21 = (v19 & 1) == 0;
    v5 = v20 + v21;
    if (__OFADD__(v20, v21))
    {
      goto LABEL_115;
    }

    v3 = v18;
    v22 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2151A8, &qword_1C755C750);
    v23 = sub_1C7551A2C();
    v5 = v123;
    if (v23)
    {
      break;
    }

LABEL_13:
    if (v22)
    {
    }

    else
    {
      *(v5 + 8 * (v3 >> 6) + 64) |= 1 << v3;
      v26 = (*(v5 + 48) + 16 * v3);
      *v26 = v17;
      v26[1] = v16;
      *(*(v5 + 56) + 8 * v3) = 0;
      v27 = *(v5 + 16);
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        goto LABEL_117;
      }

      *(v5 + 16) = v29;
    }

    v30 = *(v5 + 56);
    v31 = *(v30 + 8 * v3);
    v28 = __OFADD__(v31, 1);
    v32 = v31 + 1;
    if (v28)
    {
      goto LABEL_116;
    }

    v4 &= v4 - 1;
    *(v30 + 8 * v3) = v32;

    v13 = v14;
    v3 = v9 + 64;
    if (!v4)
    {
      goto LABEL_6;
    }
  }

  v24 = sub_1C6F78124(v17, v16);
  if ((v22 & 1) == (v25 & 1))
  {
    v3 = v24;
    goto LABEL_13;
  }

  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

unint64_t sub_1C73DF7AC(unint64_t result, uint64_t a2, uint64_t a3)
{
  v20 = result;
  if (a2 < 0)
  {
LABEL_18:
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v4 = 0;
    v5 = *(a3 + 16);
    v6 = a3 + 32;
    v7 = (result + 24);
    v8 = MEMORY[0x1E69E7CC0];
    while (2)
    {
      ++v4;
      result = sub_1C735BAE4();
      v9 = 0;
      v10 = vcvtd_n_f64_u64(result, 0x35uLL);
      v11 = 0.0;
      v12 = v7;
      while (v5 != v9)
      {
        v13 = v9 + 1;
        v11 = v11 + *(v6 + 8 * v9);
        v12 += 2;
        ++v9;
        if (v10 < v11)
        {
          if ((v13 - 1) >= *(v20 + 16))
          {
            __break(1u);
            goto LABEL_18;
          }

          v15 = *(v12 - 1);
          v14 = *v12;
          sub_1C75504FC();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C6FB1814();
            v8 = v18;
          }

          v16 = *(v8 + 16);
          if (v16 >= *(v8 + 24) >> 1)
          {
            sub_1C6FB1814();
            v8 = v19;
          }

          *(v8 + 16) = v16 + 1;
          v17 = v8 + 16 * v16;
          *(v17 + 32) = v15;
          *(v17 + 40) = v14;
          break;
        }
      }

      if (v4 != a2)
      {
        continue;
      }

      return v8;
    }
  }

  return result;
}

void *SummarizationCLIPElector.__allocating_init(vectorFetchingBlock:distanceBlock:random:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  return result;
}

uint64_t sub_1C73DF964()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC21B710);
  __swift_project_value_buffer(v0, qword_1EC21B710);
  return sub_1C754FEFC();
}

uint64_t sub_1C73DF9E8()
{
  v0 = sub_1C754FF1C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C754FE8C();
  __swift_allocate_value_buffer(v4, qword_1EC21B728);
  __swift_project_value_buffer(v4, qword_1EC21B728);
  if (qword_1EC2140A8 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EC21B710);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1C754FE5C();
}

uint64_t sub_1C73DFB24(uint64_t a1)
{
  sub_1C7551F3C();
  sub_1C6F9ED28();
  return sub_1C7551FAC();
}

void *SummarizationCLIPElector.init(vectorFetchingBlock:distanceBlock:random:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = a3;
  v5[5] = a4;
  v5[6] = a5;
  return v5;
}

uint64_t (*sub_1C73DFB78(uint64_t (*a1)@<X0>(uint64_t *a1@<X8>), void *a2, uint64_t a3, char *a4))@<X0>(uint64_t *a1@<X8>)
{
  v88 = a4;
  v81 = a3;
  v93 = a2;
  v6 = *v4;
  sub_1C754FE9C();
  OUTLINED_FUNCTION_29();
  v82 = v8;
  v83 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_78();
  v80 = v9 - v10;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v11);
  v79 = &v78 - v12;
  v13 = sub_1C754FE4C();
  OUTLINED_FUNCTION_29();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_78();
  v84 = (v17 - v18);
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v19);
  v91 = &v78 - v20;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v21);
  v87 = &v78 - v22;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v78 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v78 - v27;
  if (qword_1EC2140B0 != -1)
  {
    swift_once();
  }

  v29 = sub_1C754FE8C();
  v30 = __swift_project_value_buffer(v29, qword_1EC21B728);
  sub_1C75504FC();
  sub_1C754FE3C();
  v96 = v30;
  v31 = sub_1C754FE6C();
  v32 = sub_1C755131C();
  v33 = sub_1C755144C();
  v95 = v13;
  v85 = v6;
  if (v33)
  {
    v34 = swift_slowAlloc();
    *v34 = 134218240;
    *(v34 + 4) = v93;
    *(v34 + 12) = 2048;
    *(v34 + 14) = sub_1C7550BFC();

    v35 = sub_1C754FE2C();
    _os_signpost_emit_with_name_impl(&dword_1C6F5C000, v31, v32, v35, "Elector", "Starting to elect %ld from %ld items", v34, 0x16u);
    v13 = v95;
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
  }

  v86 = *(v15 + 16);
  v86(v25, v28, v13);
  sub_1C754FECC();
  swift_allocObject();
  v92 = sub_1C754FEBC();
  v36 = *(v15 + 8);
  v94 = v15 + 8;
  v97 = v36;
  v36(v28, v13);
  sub_1C75504FC();
  v37 = v87;
  sub_1C754FE3C();
  v38 = sub_1C754FE6C();
  v39 = sub_1C755131C();
  if (sub_1C755144C())
  {
    v40 = swift_slowAlloc();
    *v40 = 134217984;
    *(v40 + 4) = sub_1C7550BFC();

    v41 = sub_1C754FE2C();
    _os_signpost_emit_with_name_impl(&dword_1C6F5C000, v38, v39, v41, "Elector_Cluster", "Starting to cluster %ld items", v40, 0xCu);
    v13 = v95;
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
  }

  v86(v25, v37, v13);
  swift_allocObject();
  v42 = sub_1C754FEBC();
  v97(v37, v13);
  v43 = v89;
  v44 = v90;
  v45 = sub_1C73E0450(a1, v93, v88);
  v46 = v91;
  if (v43)
  {
  }

  else
  {
    v47 = v45;
    v93 = 0;
    sub_1C75504FC();
    v48 = sub_1C754FE6C();
    sub_1C754FEAC();
    LODWORD(v89) = sub_1C755130C();
    v49 = sub_1C755144C();
    v50 = MEMORY[0x1E69E93E8];
    v86 = v42;
    if (v49)
    {

      v51 = v79;
      sub_1C754FEDC();

      v53 = v82;
      v52 = v83;
      if ((*(v82 + 88))(v51, v83) == *v50)
      {
        v54 = "[Error] Interval already ended";
      }

      else
      {
        (*(v53 + 8))(v51, v52);
        v54 = "Finished clustering, found %ld clusters";
      }

      v57 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_82(v57);
      v56 = v85;
      type metadata accessor for SummarizationCLIPElectorCluster(0, *(v85 + 80), v58, v59);
      *(v57 + 4) = sub_1C7550BFC();

      v55 = v91;
      v60 = sub_1C754FE2C();
      _os_signpost_emit_with_name_impl(&dword_1C6F5C000, v48, v89, v60, "Elector_Cluster", v54, v57, 0xCu);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();

      v13 = v95;
    }

    else
    {

      v55 = v46;
      v56 = v85;
    }

    v61 = (v97)(v55, v13);
    v98 = v47;
    MEMORY[0x1EEE9AC00](v61);
    v62 = v81;
    *(&v78 - 2) = v44;
    *(&v78 - 1) = v62;
    type metadata accessor for SummarizationCLIPElectorCluster(255, *(v56 + 80), v63, v64);
    v65 = sub_1C7550C3C();
    v66 = OUTLINED_FUNCTION_0_171();
    swift_getWitnessTable(v66, v65);
    a1 = sub_1C75509CC();

    sub_1C75504FC();
    v67 = sub_1C754FE6C();
    v68 = v84;
    sub_1C754FEAC();
    v69 = sub_1C755130C();
    if (sub_1C755144C())
    {
      v70 = v69;

      v71 = v80;
      sub_1C754FEDC();

      v73 = v82;
      v72 = v83;
      if ((*(v82 + 88))(v71, v83) == *MEMORY[0x1E69E93E8])
      {
        v74 = "[Error] Interval already ended";
      }

      else
      {
        (*(v73 + 8))(v71, v72);
        v74 = "Finished electing, elected %ld items";
      }

      v75 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_82(v75);
      *(v75 + 4) = sub_1C7550BFC();

      v68 = v84;
      v76 = sub_1C754FE2C();
      _os_signpost_emit_with_name_impl(&dword_1C6F5C000, v67, v70, v76, "Elector", v74, v75, 0xCu);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {
    }

    v97(v68, v95);
  }

  return a1;
}

uint64_t sub_1C73E0404@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 1);
  return sub_1C73E0F7C(&v5, a3, x8_0);
}

char *sub_1C73E0450(uint64_t (*a1)@<X0>(uint64_t *a1@<X8>), void *a2, char *a3)
{
  v5 = v3;
  v84 = a2;
  v85 = a1;
  v86 = *v5;
  v7 = v86[10];
  OUTLINED_FUNCTION_29();
  v71 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_78();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v68 - v14;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v17 = sub_1C755149C();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = v68 - v18;
  sub_1C754F2CC();
  if (v4)
  {
    sub_1C754F2FC();
    OUTLINED_FUNCTION_3();
    (*(v20 + 8))(a3);
  }

  else
  {
    v77 = v19;
    v78 = TupleTypeMetadata2;
    v79 = v15;
    v80 = v12;
    v70 = a3;
    v21 = v5[4];
    v22 = v5[5];
    v23 = v5[6];
    v96 = 0;
    type metadata accessor for KMeans();
    swift_initStackObject();
    v24 = KMeans.init(numberOfClusters:distanceBlock:earlyStoppingDistance:random:randomSampler:)(v84, v21, v22, v23, &v96, 0.000001);
    v25 = v5[2];

    v26 = v85;
    v27 = v25(v85);
    v84 = v68;
    v91 = v26;
    MEMORY[0x1EEE9AC00](v27);
    v29 = v86[11];
    v28 = v86[12];
    v68[-4] = v7;
    v68[-3] = v29;
    v81 = v29;
    v82 = v28;
    v68[-2] = v28;
    v68[-1] = v30;
    v31 = sub_1C7550C3C();
    v32 = OUTLINED_FUNCTION_0_171();
    WitnessTable = swift_getWitnessTable(v32, v31);
    v34 = sub_1C75509CC();

    (*(*v24 + 192))(v34);
    v35 = v85;
    v76 = WitnessTable;
    v86 = v31;

    swift_beginAccess();
    v36 = v24[8];
    v19 = v70;
    if (v36 && (swift_beginAccess(), (v37 = v24[9]) != 0))
    {
      v68[1] = v24;
      v69 = 0;
      sub_1C75504FC();
      v68[0] = v37;
      sub_1C75504FC();
      v38 = v86;
      v95 = sub_1C755042C();
      v91 = v36;
      *&v90 = v35;
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216650, &qword_1C7564ED0);
      v40 = sub_1C73E15E4();
      v41 = v76;
      sub_1C7551E2C();

      v90 = v87;
      v75 = v39;
      v91 = v39;
      v92 = v38;
      v93 = v40;
      v74 = v40;
      v94 = v41;
      sub_1C755188C();
      sub_1C755185C();
      v83 = 0;
      v85 = 0;
      v84 = 0;
      v73 = (v71 + 4);
      v72 = (v71 + 2);
      ++v71;
      v42 = v80;
      v43 = v79;
      v44 = v82;
      while (1)
      {
        *&v87 = v75;
        *(&v87 + 1) = v38;
        v88 = v74;
        v89 = v41;
        sub_1C755187C();
        v45 = v77;
        sub_1C755186C();
        v46 = v78;
        if (__swift_getEnumTagSinglePayload(v45, 1, v78) == 1)
        {
          break;
        }

        v47 = *v45;
        (*v73)(v43, v45 + *(v46 + 48), v7);
        v48 = v44;
        v49 = swift_allocObject();
        v50 = v81;
        v49[2] = v7;
        v49[3] = v50;
        v49[4] = v48;
        OUTLINED_FUNCTION_7_90();
        (*v72)(v42, v43, v7);
        v51 = swift_allocObject();
        v51[2] = v7;
        v51[3] = v50;
        v51[4] = v48;
        v51[5] = sub_1C73E166C;
        v51[6] = v49;
        OUTLINED_FUNCTION_3_109();
        v52 = v95;
        swift_isUniquelyReferenced_nonNull_native();
        *&v87 = v52;
        sub_1C6FCABD0(v47);
        if (__OFADD__(*(v52 + 16), (v53 & 1) == 0))
        {
          __break(1u);
LABEL_22:
          result = sub_1C7551E4C();
          __break(1u);
          return result;
        }

        v54 = v53;
        sub_1C7551A6C();
        v55 = sub_1C7551A2C();
        v56 = v87;
        if (v55)
        {
          sub_1C6FCABD0(v47);
          v43 = v79;
          if ((v54 & 1) != (v57 & 1))
          {
            goto LABEL_22;
          }
        }

        else
        {
          v43 = v79;
        }

        v95 = v56;
        if ((v54 & 1) == 0)
        {
          *&v87 = (v51[5])();
          *&v90 = v47;
          sub_1C7551A5C();
        }

        v42 = v80;
        v38 = v86;
        sub_1C7550C0C();
        (*v71)(v43, v7);
        v85 = sub_1C73E1678;
        v83 = sub_1C73E166C;
        v84 = v51;
        v44 = v82;
        v41 = v76;
      }

      v91 = sub_1C75504FC();
      v61 = sub_1C75504EC();
      swift_getWitnessTable(MEMORY[0x1E69E5D90], v61);
      v62 = sub_1C7550A3C();

      v91 = v62;
      MEMORY[0x1EEE9AC00](v63);
      v64 = v81;
      v68[-6] = v7;
      v68[-5] = v64;
      v68[-4] = v44;
      v68[-3] = &v95;
      v68[-2] = v68[0];
      type metadata accessor for SummarizationCLIPElectorCluster(0, v7, v65, v66);
      v67 = v69;
      v19 = sub_1C75509CC();

      sub_1C754F2EC();
      if (v67)
      {
      }

      OUTLINED_FUNCTION_7_90();
      OUTLINED_FUNCTION_3_109();
    }

    else
    {
      v58 = type metadata accessor for SummarizationCLIPElector.Error(0, v7, v81, v82);
      swift_getWitnessTable(aA_16, v58);
      swift_allocError();
      swift_willThrow();

      sub_1C754F2FC();
      OUTLINED_FUNCTION_3();
      (*(v59 + 8))(v19);
    }
  }

  return v19;
}

uint64_t sub_1C73E0EBC@<X0>(unint64_t *a1@<X0>, uint64_t a3@<X2>, unint64_t *a5@<X8>)
{
  v7 = *a1;
  sub_1C7550C3C();
  result = sub_1C755056C();
  if (v10)
  {
    if ((v7 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v7 < *(a3 + 16))
    {
      v9 = *(a3 + 8 * v7 + 32);
      *a5 = v7;
      a5[1] = v10;
      a5[2] = v9;
      return sub_1C75504FC();
    }

    __break(1u);
  }

  else
  {
    *a5 = 0;
    a5[1] = 0;
    a5[2] = 0;
  }

  return result;
}

uint64_t sub_1C73E0F7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *v3;
  if (a2)
  {
    v24 = *(a1 + 8);
    MEMORY[0x1EEE9AC00](a1);
    v7 = sub_1C7550C3C();
    sub_1C75504FC();
    swift_getWitnessTable(MEMORY[0x1E69E6350], v7);
    v4 = sub_1C755191C();
    sub_1C75504FC();
  }

  else
  {
    swift_bridgeObjectRetain_n();
  }

  v8 = (v3[2])(v4);
  v24 = v4;
  MEMORY[0x1EEE9AC00](v8);
  v9 = *(v6 + 80);
  v10 = sub_1C7550C3C();
  v11 = OUTLINED_FUNCTION_0_171();
  swift_getWitnessTable(v11, v10);
  v12 = sub_1C75509CC();

  v24 = v5;
  v13 = v3[4];
  sub_1C75504FC();
  static PairwiseMetrics.argMinDist(from:to:using:)(&v24, v12, v13);
  v15 = v14;

  if (v15)
  {

    v16 = a3;
    if (qword_1EC2140A8 != -1)
    {
      swift_once();
    }

    v17 = sub_1C754FF1C();
    __swift_project_value_buffer(v17, qword_1EC21B710);
    v18 = sub_1C754FEEC();
    v19 = sub_1C755119C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1C6F5C000, v18, v19, "Unexpectedly no item closest to centroid, unable to elect", v20, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    v21 = 1;
  }

  else
  {
    v16 = a3;
    sub_1C7550C6C();

    v21 = 0;
  }

  return __swift_storeEnumTagSinglePayload(v16, v21, 1, v9);
}

uint64_t SummarizationCLIPElector.deinit()
{

  return v0;
}

uint64_t SummarizationCLIPElector.__deallocating_deinit()
{
  SummarizationCLIPElector.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1C73E1394(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = type metadata accessor for SummarizationCLIPElector(0, a4[10], a4[11], a4[12]);
  swift_getWitnessTable(protocol conformance descriptor for SummarizationCLIPElector<A, B>, v4);
  return sub_1C754F5AC();
}

uint64_t sub_1C73E154C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1C73E15E4()
{
  result = qword_1EC21B840[0];
  if (!qword_1EC21B840[0])
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC216650, &qword_1C7564ED0);
    result = swift_getWitnessTable(MEMORY[0x1E69E6328], v3, v0, v1);
    atomic_store(result, qword_1EC21B840);
  }

  return result;
}

uint64_t sub_1C73E1678@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 40))();
  *a1 = result;
  return result;
}

_BYTE *sub_1C73E16A8(_BYTE *result, int a2, int a3)
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

uint64_t sub_1C73E1778()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EDD0A030);
  __swift_project_value_buffer(v0, qword_1EDD0A030);
  return sub_1C754FEFC();
}

void *sub_1C73E1820@<X0>(void *a1@<X8>)
{
  v2 = 0xD000000000000023;
  v3 = objc_opt_self();
  v4 = sub_1C6F77CA0(v3, &selRef_mediaAnalysisMiCaImageCaptionResultsKey);
  if (!v5)
  {
    sub_1C73E642C();
    swift_allocError();
    *v22 = 0xD000000000000023;
    v22[1] = 0x80000001C75AED90;
    return swift_willThrow();
  }

  v6 = v4;
  v7 = v5;
  v8 = sub_1C6F77CA0(v3, &selRef_mediaAnalysisMiCaVideoCaptionResultsKey);
  v10 = v9;
  if (v9)
  {
    v11 = v8;
    v12 = sub_1C70DA910(v3);
    if (v13)
    {
      v14 = v12;
      v36 = v13;
      v15 = sub_1C6F77CA0(v3, &selRef_mediaAnalysisResultImageCaptionConfidenceAttributeKey);
      if (v16)
      {
        v30 = v15;
        v32 = v16;
        v17 = sub_1C6F77CA0(v3, &selRef_mediaAnalysisResultImageCaptionTextAttributeKey);
        v2 = 0xD00000000000002FLL;
        if (v18)
        {
          v29 = v17;
          v31 = v18;
          v19 = sub_1C712ED88(v3);
          if (v20)
          {
            __src[0] = v6;
            __src[1] = v7;
            __src[2] = v11;
            __src[3] = v10;
            __src[4] = v14;
            __src[5] = v36;
            __src[6] = v30;
            __src[7] = v32;
            __src[8] = v29;
            __src[9] = v31;
            __src[10] = v19;
            __src[11] = v20;
            v35[0] = v6;
            v35[1] = v7;
            v35[2] = v11;
            v35[3] = v10;
            v35[4] = v14;
            v35[5] = v36;
            v35[6] = v30;
            v35[7] = v32;
            v35[8] = v29;
            v35[9] = v31;
            v35[10] = v19;
            v35[11] = v20;
            sub_1C73E64B0(__src, v33);
            sub_1C73E6480(v35);
            return memcpy(a1, __src, 0x60uLL);
          }

          v26 = "ultImageCaptionTextAttributeKey";
          v23 = 1;
          v24 = 1;
          v25 = 1;
        }

        else
        {
          v25 = 0;
          v26 = "onfidenceAttributeKey";
          v23 = 1;
          v24 = 1;
        }
      }

      else
      {
        v24 = 0;
        v25 = 0;
        v26 = "ultAttributesKey";
        v2 = 0xD000000000000035;
        v23 = 1;
      }
    }

    else
    {
      v23 = 0;
      v24 = 0;
      v25 = 0;
      v26 = "eoCaptionResultsKey";
      v2 = 0xD000000000000020;
    }
  }

  else
  {
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = "geCaptionResultsKey";
  }

  v27 = v26 | 0x8000000000000000;
  sub_1C73E642C();
  swift_allocError();
  *v28 = v2;
  v28[1] = v27;
  swift_willThrow();

  if (v10)
  {
  }

  if (v23)
  {

    if (!v24)
    {
      goto LABEL_15;
    }
  }

  else if (!v24)
  {
LABEL_15:
    if (!v25)
    {
      return result;
    }
  }

  if (v25)
  {
  }

  return result;
}

uint64_t AssetCaptionGenerator.currentVideoCaptionPreferenceRequestID.setter(uint64_t a1, char a2)
{
  result = OUTLINED_FUNCTION_1_7(a1);
  *v2 = a1;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1C73E1B74(void *a1)
{
  v2 = v1 + *a1;
  swift_beginAccess();
  return *v2;
}

uint64_t AssetCaptionGenerator.currentAssetCaptionRequestID.setter(uint64_t a1, char a2)
{
  result = OUTLINED_FUNCTION_1_7(a1);
  *v2 = a1;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t static AssetCaptionGenerator.localIdentifiersPreferringVideoCaption(for:eventRecorder:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C73E1C70()
{
  OUTLINED_FUNCTION_42();
  *(v0 + 48) = [objc_allocWithZone(*(v0 + 40)) init];
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_7_91(v1);

  return AssetCaptionGenerator.localIdentifiersPreferringVideoCaption(for:eventRecorder:progressReporter:)();
}

uint64_t sub_1C73E1D10(uint64_t a1)
{
  OUTLINED_FUNCTION_47();
  v5 = v4;
  OUTLINED_FUNCTION_6_4();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_14();
  *v8 = v7;
  *(v5 + 64) = v1;

  if (!v1)
  {
    *(v5 + 72) = a1;
  }

  OUTLINED_FUNCTION_13();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C73E1E1C()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v1();
}

id AssetCaptionGenerator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t AssetCaptionGenerator.localIdentifiersPreferringVideoCaption(for:eventRecorder:progressReporter:)()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  v1[5] = v4;
  v1[6] = v0;
  v1[4] = v5;
  v1[7] = swift_getObjectType();
  v6 = sub_1C754F38C();
  v1[8] = v6;
  OUTLINED_FUNCTION_18(v6);
  v1[9] = v7;
  v1[10] = swift_task_alloc();
  v8 = sub_1C754F2FC();
  v1[11] = swift_allocBox();
  (*(*(v8 - 8) + 32))(v9, v3, v8);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C73E1FB8()
{
  v50 = v0;
  v1 = *(v0 + 32);
  if (v1 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i >= 1; i = sub_1C75516BC())
  {
    __swift_project_boxed_opaque_existential_1(*(v0 + 40), *(*(v0 + 40) + 24));
    sub_1C754F1CC();
    if (qword_1EDD0A028 != -1)
    {
      OUTLINED_FUNCTION_1_128(&qword_1EDD0A028);
    }

    v3 = sub_1C754FF1C();
    __swift_project_value_buffer(v3, qword_1EDD0A030);
    sub_1C75504FC();
    v4 = sub_1C754FEEC();
    v5 = sub_1C755118C();

    if (!os_log_type_enabled(v4, v5))
    {
LABEL_22:

      v35 = swift_task_alloc();
      OUTLINED_FUNCTION_13_79(v35);
      v36 = swift_task_alloc();
      *(v0 + 104) = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0, &qword_1C755C2F0);
      *v36 = v0;
      v36[1] = sub_1C73E23F0;
      OUTLINED_FUNCTION_13();

      return MEMORY[0x1EEE6DE38](v37, v38, v39, 0xD00000000000004BLL, v40, v41, v4, v42);
    }

    v45 = v5;
    log = v4;
    v6 = *(v0 + 32);
    v7 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v48 = v43;
    buf = v7;
    *v7 = 136315138;
    v49 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C(0, i, 0, v8, v9, v10, v11);
    v12 = 0;
    v13 = v49;
    v14 = v1 & 0xC000000000000001;
    v47 = v6 + 32;
    while (1)
    {
      v15 = v14 ? MEMORY[0x1CCA5DDD0](v12, *(v0 + 32)) : *(v47 + 8 * v12);
      v16 = v15;
      v17 = [v16 uuid];
      if (v17)
      {
        v18 = v17;
        v19 = sub_1C755068C();
        v1 = v20;
      }

      else
      {
        v19 = 0;
        v1 = 0;
      }

      if (!v1)
      {
        break;
      }

      v49 = v13;
      v26 = *(v13 + 16);
      v25 = *(v13 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_1C6F7ED9C(v25 > 1, v26 + 1, 1, v21, v22, v23, v24);
        v13 = v49;
      }

      ++v12;
      *(v13 + 16) = v26 + 1;
      v27 = v13 + 16 * v26;
      *(v27 + 32) = v19;
      *(v27 + 40) = v1;
      if (i == v12)
      {
        *(v0 + 24) = v13;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
        sub_1C703328C();
        v31 = sub_1C75505FC();
        v33 = v32;

        v34 = sub_1C6F765A4(v31, v33, &v48);

        *(buf + 4) = v34;
        v4 = log;
        _os_log_impl(&dword_1C6F5C000, log, v45, "The LP assets UUIDs are %s", buf, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v43);
        OUTLINED_FUNCTION_109();
        OUTLINED_FUNCTION_109();
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_26:
    ;
  }

  OUTLINED_FUNCTION_116();
  v29 = MEMORY[0x1E69E7CD0];

  return v28(v29);
}

uint64_t sub_1C73E23F0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 112) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C73E24F0()
{
  OUTLINED_FUNCTION_75_1();
  v2 = *(v0 + 80);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  OUTLINED_FUNCTION_9_86(*(v0 + 40));
  (*(v4 + 8))(v2, v3);

  OUTLINED_FUNCTION_116();

  return v5(v1);
}

uint64_t sub_1C73E2598()
{
  OUTLINED_FUNCTION_75_1();
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = v0[5];

  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1C754F1AC();
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_43();

  return v5();
}

void sub_1C73E2664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a3;
  v35 = a1;
  v37 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B8F0, &qword_1C7589518);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v33 - v11;
  v13 = objc_opt_self();
  sub_1C71BA830(a3, v21, v22, v14, v15, v16, v17, v18, v19, v20, v33, v34, v35, v36, v37, v13, aBlock, v40, v41, v42, v43, v44, v45, v46, v47, v48);
  v36 = sub_1C7550B3C();

  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = swift_allocObject();
  v24[2] = a4;
  v24[3] = v23;
  v24[4] = a5;
  v43 = sub_1C73E6528;
  v44 = v24;
  aBlock = MEMORY[0x1E69E9820];
  v40 = 1107296256;
  v41 = sub_1C7103978;
  v42 = &block_descriptor_26;
  v25 = _Block_copy(&aBlock);

  (*(v9 + 16))(v12, v35, v8);
  v26 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v27 = (v10 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  (*(v9 + 32))(v28 + v26, v12, v8);
  *(v28 + v27) = v34;
  *(v28 + ((v27 + 15) & 0xFFFFFFFFFFFFFFF8)) = a5;
  v43 = sub_1C73E6608;
  v44 = v28;
  aBlock = MEMORY[0x1E69E9820];
  v40 = 1107296256;
  v41 = sub_1C73E3960;
  v42 = &block_descriptor_32;
  v29 = _Block_copy(&aBlock);
  sub_1C75504FC();

  v30 = v36;
  v31 = [v38 requestVideoCaptionPreferenceForAssets:v36 withOptions:0 progressHandler:v25 completionHandler:v29];
  _Block_release(v29);
  _Block_release(v25);

  v32 = v37 + OBJC_IVAR___PNAssetCaptionGenerator_currentVideoCaptionPreferenceRequestID;
  swift_beginAccess();
  *v32 = v31;
  *(v32 + 8) = 0;
}

void sub_1C73E2994(NSObject *a1, NSObject *a2)
{
  v2 = &qword_1EDD0A000;
  if (!a1)
  {
    if (a2)
    {
      v4 = a2;
    }

    else
    {
      sub_1C73E642C();
      v4 = swift_allocError();
      *v87 = 0;
      v87[1] = 0;
    }

    v88 = a2;
    if (qword_1EDD0A028 == -1)
    {
      goto LABEL_82;
    }

    goto LABEL_100;
  }

  v3 = a1;
  v4 = objc_opt_self();
  v5 = sub_1C70DA910(v4);
  if (!v6)
  {
    if (qword_1EDD0A028 != -1)
    {
      swift_once();
    }

    v82 = sub_1C754FF1C();
    __swift_project_value_buffer(v82, qword_1EDD0A030);
    osloga = sub_1C754FEEC();
    v83 = sub_1C755119C();
    if (!os_log_type_enabled(osloga, v83))
    {
      goto LABEL_94;
    }

    v84 = swift_slowAlloc();
    *v84 = 0;
    v85 = "Unable to get MediaAnalysisResultAttributesKey from PLMediaAnalysisServiceRequestAdapter!";
    goto LABEL_93;
  }

  v7 = v5;
  v8 = v6;
  v9 = sub_1C6F77CA0(v4, &selRef_mediaAnalysisVideoCaptionPreferenceResultsKey);
  if (!v10)
  {

    if (qword_1EDD0A028 != -1)
    {
      swift_once();
    }

    v86 = sub_1C754FF1C();
    __swift_project_value_buffer(v86, qword_1EDD0A030);
    osloga = sub_1C754FEEC();
    v83 = sub_1C755119C();
    if (!os_log_type_enabled(osloga, v83))
    {
      goto LABEL_94;
    }

    v84 = swift_slowAlloc();
    *v84 = 0;
    v85 = "Unable to get MediaAnalysisVideoCaptionPreferenceResultsKey from PLMediaAnalysisServiceRequestAdapter!";
    goto LABEL_93;
  }

  v11 = v9;
  v12 = v10;
  v13 = sub_1C6F77CA0(v4, &selRef_mediaAnalysisResultVideoCaptionPreferenceAttributeKey);
  if (!v14)
  {

    if (qword_1EDD0A028 != -1)
    {
      swift_once();
    }

    v102 = sub_1C754FF1C();
    __swift_project_value_buffer(v102, qword_1EDD0A030);
    osloga = sub_1C754FEEC();
    v83 = sub_1C755119C();
    if (!os_log_type_enabled(osloga, v83))
    {
      goto LABEL_94;
    }

    v84 = swift_slowAlloc();
    *v84 = 0;
    v85 = "Unable to get MediaAnalysisResultVideoCaptionPreferenceAttributeKey from PLMediaAnalysisServiceRequestAdapter!";
LABEL_93:
    _os_log_impl(&dword_1C6F5C000, osloga, v83, v85, v84, 2u);
    MEMORY[0x1CCA5F8E0](v84, -1, -1);
LABEL_94:

    return;
  }

  v106 = v11;
  v107 = v13;
  v112 = v7;
  v113 = v14;
  v111 = v12;
  v117 = v8;
  v126 = MEMORY[0x1E69E7CD0];
  v15 = v3 + 8;
  v16 = 1 << LOBYTE(v3[4].isa);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  isa = v17 & v3[8].isa;
  v19 = (v16 + 63) >> 6;
  sub_1C75504FC();
  v105 = 0;
  v115 = 0;
  v20 = 0;
  oslog = v3;
  if (!isa)
  {
LABEL_9:
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v21 >= v19)
      {
        isa = 0;
        memset(__src, 0, 72);
        goto LABEL_14;
      }

      isa = v15[v21].isa;
      ++v20;
      if (isa)
      {
        v20 = v21;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_100:
    swift_once();
LABEL_82:
    v89 = sub_1C754FF1C();
    __swift_project_value_buffer(v89, qword_1EDD0A030);
    v90 = v4;
    v91 = sub_1C754FEEC();
    v92 = sub_1C755119C();

    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      *v93 = 138412290;
      v95 = v4;
      v96 = _swift_stdlib_bridgeErrorToNSError();
      *(v93 + 4) = v96;
      *v94 = v96;
      _os_log_impl(&dword_1C6F5C000, v91, v92, "Failed to get analysis results with asset video caption preferences from mediaanalysisd: %@!", v93, 0xCu);
      sub_1C6FC15D8(v94);
      MEMORY[0x1CCA5F8E0](v94, -1, -1);
      MEMORY[0x1CCA5F8E0](v93, -1, -1);
    }

    *__dst = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B8F0, &qword_1C7589518);
    sub_1C7550C9C();
    return;
  }

  while (1)
  {
    v21 = v20;
LABEL_13:
    v22 = __clz(__rbit64(isa));
    isa &= isa - 1;
    v23 = v22 | (v21 << 6);
    sub_1C6FCA584(v3[6].isa + 40 * v23, v122);
    sub_1C6F774EC(v3[7].isa + 32 * v23, v121);
    __src[0] = v122[0];
    __src[1] = v122[1];
    *&__src[2] = v123;
    sub_1C6F9ED18(v121, (&__src[2] + 8));
LABEL_14:
    memcpy(__dst, __src, sizeof(__dst));
    if (!*&__dst[24])
    {

      if (v2[5] != -1)
      {
        swift_once();
      }

      v97 = sub_1C754FF1C();
      __swift_project_value_buffer(v97, qword_1EDD0A030);
      v98 = v126;
      sub_1C75504FC();
      sub_1C75504FC();
      v99 = sub_1C754FEEC();
      v100 = sub_1C755118C();
      if (os_log_type_enabled(v99, v100))
      {
        v101 = swift_slowAlloc();
        *v101 = 134218496;
        *(v101 + 4) = *(v98 + 16);

        *(v101 + 12) = 2048;
        *(v101 + 14) = sub_1C6FB6304();

        *(v101 + 22) = 2048;
        *(v101 + 24) = v115;
        _os_log_impl(&dword_1C6F5C000, v99, v100, "Video caption preferred for %ld out of %ld live photo assets! Number of available video captions is %ld.", v101, 0x20u);
        MEMORY[0x1CCA5F8E0](v101, -1, -1);
      }

      else
      {
      }

      *__dst = v98;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B8F0, &qword_1C7589518);
      sub_1C7550CAC();
      return;
    }

    __src[0] = *__dst;
    __src[1] = *&__dst[16];
    *&__src[2] = *&__dst[32];
    sub_1C6F9ED18(&__dst[40], v121);
    sub_1C6FCA584(__src, v122);
    if ((swift_dynamicCast() & 1) == 0)
    {
      if (v2[5] != -1)
      {
        swift_once();
      }

      v29 = sub_1C754FF1C();
      __swift_project_value_buffer(v29, qword_1EDD0A030);
      sub_1C6FCA584(__src, v122);
      v4 = sub_1C754FEEC();
      v30 = sub_1C755119C();
      if (!os_log_type_enabled(v4, v30))
      {

        sub_1C6FCA5E0(v122);
        goto LABEL_28;
      }

      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v120[0] = v32;
      *v31 = 136315138;
      v33 = sub_1C755173C();
      v35 = v34;
      sub_1C6FCA5E0(v122);
      v36 = sub_1C6F765A4(v33, v35, v120);
      v3 = oslog;

      *(v31 + 4) = v36;
      _os_log_impl(&dword_1C6F5C000, v4, v30, "Key in caption result dictionary was not a string, it was %s!", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x1CCA5F8E0](v32, -1, -1);
      v28 = v31;
      v2 = &qword_1EDD0A000;
      goto LABEL_25;
    }

    v4 = v120[0];
    v24 = v120[1];
    sub_1C6F774EC(v121, v122);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B8F8, &qword_1C7589520);
    if (swift_dynamicCast())
    {
      break;
    }

    if (v2[5] != -1)
    {
      swift_once();
    }

    v25 = sub_1C754FF1C();
    __swift_project_value_buffer(v25, qword_1EDD0A030);
    v4 = sub_1C754FEEC();
    v26 = sub_1C755119C();
    if (!os_log_type_enabled(v4, v26))
    {
      goto LABEL_26;
    }

    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_1C6F5C000, v4, v26, "Value in caption result dictionary was not a dictionary!", v27, 2u);
    v28 = v27;
LABEL_25:
    MEMORY[0x1CCA5F8E0](v28, -1, -1);
LABEL_26:

LABEL_28:
    __swift_destroy_boxed_opaque_existential_1(v121);
    sub_1C6FCA5E0(__src);
    if (!isa)
    {
      goto LABEL_9;
    }
  }

  v104 = v24;
  v37 = v120[0];
  if (!*(v120[0] + 2) || (v38 = sub_1C6F78124(v106, v111), (v39 & 1) == 0))
  {

LABEL_67:

    goto LABEL_28;
  }

  v103 = v4;
  v40 = *(v37[7] + 8 * v38);

  *&v122[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B8E8, &qword_1C7589510);
  sub_1C7550B4C();

  v4 = *&v122[0];
  if (!*&v122[0])
  {
    goto LABEL_67;
  }

  if (!__OFADD__(v105++, 1))
  {
    v42 = *(*&v122[0] + 16);
    if (!v42)
    {
LABEL_68:

      v115 = v105;
      goto LABEL_28;
    }

    v43 = 32;
    v110 = *&v122[0];
    while (2)
    {
      v114 = v43;
      v116 = v42;
      v44 = *(&v4->isa + v43);
      v45 = *(v44 + 16);
      sub_1C75504FC();
      if (v45 && (v46 = sub_1C6F78124(v112, v117), (v47 & 1) != 0))
      {
        v48 = *(*(v44 + 56) + 8 * v46);
        sub_1C75504FC();

        if (*(v48 + 16) && (v49 = sub_1C6F78124(v107, v113), (v50 & 1) != 0) && (sub_1C6F774EC(*(v48 + 56) + 32 * v49, v122), sub_1C6FA7014(), (swift_dynamicCast() & 1) != 0))
        {

          v51 = v120[0];
          if ([v120[0] integerValue] >= 1)
          {
            sub_1C75504FC();
            sub_1C70F082C(v122, v103, v104);

            goto LABEL_55;
          }

          v3 = oslog;
          if (([v51 integerValue] & 0x8000000000000000) != 0)
          {
            if (v2[5] != -1)
            {
              swift_once();
            }

            v75 = sub_1C754FF1C();
            __swift_project_value_buffer(v75, qword_1EDD0A030);
            v76 = v51;
            v77 = sub_1C754FEEC();
            v78 = sub_1C755119C();
            if (os_log_type_enabled(v77, v78))
            {
              v79 = swift_slowAlloc();
              *v79 = 134217984;
              *(v79 + 4) = [v76 integerValue];

              _os_log_impl(&dword_1C6F5C000, v77, v78, "Invalid video caption preference attribute: %ld!", v79, 0xCu);
              v80 = v79;
              v3 = oslog;
              MEMORY[0x1CCA5F8E0](v80, -1, -1);
            }

            else
            {
            }

            v2 = &qword_1EDD0A000;
          }

          else
          {
          }
        }

        else
        {
          if (v2[5] != -1)
          {
            swift_once();
          }

          v65 = sub_1C754FF1C();
          __swift_project_value_buffer(v65, qword_1EDD0A030);
          sub_1C75504FC();
          sub_1C75504FC();
          v66 = sub_1C754FEEC();
          v67 = sub_1C755119C();

          loga = v66;
          if (os_log_type_enabled(v66, v67))
          {
            v68 = swift_slowAlloc();
            v69 = swift_slowAlloc();
            *&v122[0] = v69;
            *v68 = 136315394;
            *(v68 + 4) = sub_1C6F765A4(v107, v113, v122);
            *(v68 + 12) = 2080;
            v70 = sub_1C75504BC();
            v72 = v71;

            v73 = sub_1C6F765A4(v70, v72, v122);

            *(v68 + 14) = v73;
            _os_log_impl(&dword_1C6F5C000, loga, v67, "Could not find value for %s in %s!", v68, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1CCA5F8E0](v69, -1, -1);
            v74 = v68;
            v2 = &qword_1EDD0A000;
            MEMORY[0x1CCA5F8E0](v74, -1, -1);
          }

          else
          {
          }

LABEL_55:
          v3 = oslog;
        }
      }

      else
      {
        if (v2[5] != -1)
        {
          swift_once();
        }

        v52 = sub_1C754FF1C();
        __swift_project_value_buffer(v52, qword_1EDD0A030);
        sub_1C75504FC();
        sub_1C75504FC();
        v53 = sub_1C754FEEC();
        v54 = sub_1C755119C();

        log = v54;
        v55 = v54;
        v56 = v53;
        if (os_log_type_enabled(v53, v55))
        {
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          *&v122[0] = v58;
          *v57 = 136315394;
          *(v57 + 4) = sub_1C6F765A4(v112, v117, v122);
          *(v57 + 12) = 2080;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21ACD0, &unk_1C756DB10);
          v59 = sub_1C75504BC();
          v61 = v60;

          v62 = v59;
          v3 = oslog;
          v63 = sub_1C6F765A4(v62, v61, v122);

          *(v57 + 14) = v63;
          _os_log_impl(&dword_1C6F5C000, v56, log, "Could not find value for %s in %s!", v57, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1CCA5F8E0](v58, -1, -1);
          v64 = v57;
          v2 = &qword_1EDD0A000;
          MEMORY[0x1CCA5F8E0](v64, -1, -1);
        }

        else
        {
        }
      }

      v4 = v110;
      v43 = v114 + 8;
      v42 = v116 - 1;
      if (v116 == 1)
      {
        goto LABEL_68;
      }

      continue;
    }
  }

  __break(1u);
}

uint64_t sub_1C73E3960(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_1C75504AC();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

uint64_t static AssetCaptionGenerator.assetCaptionByLocalIdentifier(for:eventRecorder:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C73E3A24()
{
  OUTLINED_FUNCTION_42();
  *(v0 + 48) = [objc_allocWithZone(*(v0 + 40)) init];
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_7_91(v1);

  return AssetCaptionGenerator.assetCaptionByLocalIdentifier(for:eventRecorder:progressReporter:)();
}

uint64_t sub_1C73E3AC4(uint64_t a1)
{
  OUTLINED_FUNCTION_47();
  v5 = v4;
  OUTLINED_FUNCTION_6_4();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_14();
  *v8 = v7;
  *(v5 + 64) = v1;

  if (!v1)
  {
    *(v5 + 72) = a1;
  }

  OUTLINED_FUNCTION_13();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t AssetCaptionGenerator.assetCaptionByLocalIdentifier(for:eventRecorder:progressReporter:)()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  v1[4] = v4;
  v1[5] = v0;
  v1[3] = v5;
  v1[6] = swift_getObjectType();
  v6 = sub_1C754F38C();
  v1[7] = v6;
  OUTLINED_FUNCTION_18(v6);
  v1[8] = v7;
  v1[9] = swift_task_alloc();
  v8 = sub_1C754F2FC();
  v1[10] = swift_allocBox();
  v1[11] = v9;
  (*(*(v8 - 8) + 32))(v9, v3, v8);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C73E3CDC()
{
  OUTLINED_FUNCTION_75_1();
  v1 = *(v0 + 88);
  __swift_project_boxed_opaque_existential_1(*(v0 + 32), *(*(v0 + 32) + 24));
  sub_1C754F1CC();
  sub_1C754F2CC();
  v2 = swift_task_alloc();
  OUTLINED_FUNCTION_13_79(v2);
  v3 = swift_task_alloc();
  *(v0 + 104) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C50, &qword_1C75633A0);
  *v3 = v0;
  v3[1] = sub_1C73E3ED0;
  OUTLINED_FUNCTION_13();

  return MEMORY[0x1EEE6DE38](v4, v5, v6, 0xD000000000000042, v7, v8, v1, v9);
}

uint64_t sub_1C73E3ED0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 112) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C73E3FD0()
{
  OUTLINED_FUNCTION_75_1();
  v2 = *(v0 + 72);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  OUTLINED_FUNCTION_9_86(*(v0 + 32));
  (*(v4 + 8))(v2, v3);

  OUTLINED_FUNCTION_116();

  return v5(v1);
}

uint64_t sub_1C73E4078()
{
  v1 = v0[4];

  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_1C754F1AC();
  (*(v0[8] + 8))(v0[9], v0[7]);

  OUTLINED_FUNCTION_43();

  return v2();
}

void sub_1C73E413C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v34 = a3;
  v35 = a1;
  v37 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B8D8, &qword_1C7589508);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v33 - v11;
  v13 = objc_opt_self();
  sub_1C71BA830(a3, v21, v22, v14, v15, v16, v17, v18, v19, v20, v33, v34, v35, v36, v37, v13, aBlock, v40, v41, v42, v43, v44, v45, v46, v47, v48);
  v36 = sub_1C7550B3C();

  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = swift_allocObject();
  v24[2] = a4;
  v24[3] = v23;
  v24[4] = a5;
  v43 = sub_1C73E63C4;
  v44 = v24;
  aBlock = MEMORY[0x1E69E9820];
  v40 = 1107296256;
  v41 = sub_1C7103978;
  v42 = &block_descriptor_38;
  v25 = _Block_copy(&aBlock);

  (*(v9 + 16))(v12, v35, v8);
  v26 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v27 = (v10 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  (*(v9 + 32))(v28 + v26, v12, v8);
  *(v28 + v27) = v34;
  *(v28 + ((v27 + 15) & 0xFFFFFFFFFFFFFFF8)) = a5;
  v43 = sub_1C73E6404;
  v44 = v28;
  aBlock = MEMORY[0x1E69E9820];
  v40 = 1107296256;
  v41 = sub_1C73E3960;
  v42 = &block_descriptor_19;
  v29 = _Block_copy(&aBlock);
  sub_1C75504FC();

  v30 = v36;
  v31 = [v38 requestAssetCaptionsOfTypes:1 forAssets:v36 withOptions:0 progressHandler:v25 completionHandler:v29];
  _Block_release(v29);
  _Block_release(v25);

  v32 = v37 + OBJC_IVAR___PNAssetCaptionGenerator_currentAssetCaptionRequestID;
  swift_beginAccess();
  *v32 = v31;
  *(v32 + 8) = 0;
}

uint64_t sub_1C73E4470(uint64_t a1, double a2)
{
  sub_1C754F2FC();
  swift_projectBox();
  swift_beginAccess();
  sub_1C754F2DC();
  return swift_endAccess();
}

uint64_t sub_1C73E4710(uint64_t a1, id a2)
{
  v2 = &qword_1EDD0A000;
  if (a1)
  {
    v3 = a1;
    sub_1C73E1820(v186);
    v5 = v3 + 64;
    v6 = 1 << *(v3 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & *(v3 + 64);
    v9 = (v6 + 63) >> 6;
    sub_1C75504FC();
    v10 = 0;
    v167 = MEMORY[0x1E69E7CC8];
    v11 = v3 + 64;
    v168 = v3;
    v173 = v3 + 64;
    v176 = v9;
LABEL_8:
    while (2)
    {
      if (v8)
      {
        v12 = v10;
        goto LABEL_14;
      }

      do
      {
        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          __break(1u);
          goto LABEL_159;
        }

        if (v12 >= v9)
        {
          v8 = 0;
          memset(__src, 0, 72);
          goto LABEL_15;
        }

        v8 = *(v11 + 8 * v12);
        ++v10;
      }

      while (!v8);
      v10 = v12;
LABEL_14:
      v13 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v14 = v13 | (v12 << 6);
      sub_1C6FCA584(*(v3 + 48) + 40 * v14, &v182);
      sub_1C6F774EC(*(v3 + 56) + 32 * v14, v181);
      __src[0] = v182;
      __src[1] = v183;
      *&__src[2] = v184;
      sub_1C6F9ED18(v181, (&__src[2] + 8));
LABEL_15:
      memcpy(__dst, __src, 0x48uLL);
      if (*(&__dst[1] + 1))
      {
        v182 = __dst[0];
        v183 = __dst[1];
        v184 = *&__dst[2];
        sub_1C6F9ED18((&__dst[2] + 8), v181);
        sub_1C6FCA584(&v182, __src);
        if (swift_dynamicCast())
        {
          v5 = v180;
          sub_1C6F774EC(v181, __src);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21ACD0, &unk_1C756DB10);
          if (swift_dynamicCast())
          {
            v169 = v5;
            v170 = v8;
            v15 = v179;
            if (*(*&v179 + 16))
            {
              v16 = v186[0];
              v17 = v186[1];
              v171 = v179;
              sub_1C75504FC();
              v5 = sub_1C6F78124(v16, v17);
              v19 = v18;

              v15 = v171;
              if (v19)
              {
                sub_1C6F774EC(*(*&v171 + 56) + 32 * v5, __src);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217B50, &qword_1C756DB20);
                if ((swift_dynamicCast() & 1) == 0)
                {
                  goto LABEL_98;
                }

                v20 = v179;
                v21 = *(*&v179 + 16);
                if (v21)
                {
                  v165 = 0.0;
                  v166 = 0;
                  v174 = v188;
                  v175 = v187;
                  v22 = -1.79769313e308;
                  v23 = 32;
                  v172 = v179;
                  while (1)
                  {
                    v177 = v21;
                    v24 = *(*&v20 + v23);
                    v25 = *(v24 + 16);
                    sub_1C75504FC();
                    if (v25 && (sub_1C75504FC(), v26 = sub_1C6F78124(v175, v174), v28 = v27, , (v28 & 1) != 0))
                    {
                      v29 = *(*(v24 + 56) + 8 * v26);
                      v30 = v189;
                      v5 = v190;
                      if (!*(v29 + 16))
                      {
                        goto LABEL_38;
                      }

                      sub_1C75504FC();
                      sub_1C75504FC();
                      v31 = sub_1C6F78124(v30, v5);
                      v33 = v32;

                      if ((v33 & 1) == 0 || (sub_1C6F774EC(*(v29 + 56) + 32 * v31, __src), (swift_dynamicCast() & 1) == 0))
                      {

                        v20 = v172;
LABEL_38:
                        if (v2[5] != -1)
                        {
                          swift_once();
                        }

                        v46 = sub_1C754FF1C();
                        __swift_project_value_buffer(v46, qword_1EDD0A030);
                        sub_1C75504FC();
                        sub_1C73E64B0(v186, __src);
                        v47 = sub_1C754FEEC();
                        v48 = sub_1C755119C();
                        sub_1C73E6480(v186);

                        if (os_log_type_enabled(v47, v48))
                        {
                          v49 = swift_slowAlloc();
                          v50 = swift_slowAlloc();
                          *&__src[0] = v50;
                          *v49 = 136315394;
                          sub_1C75504FC();
                          v51 = sub_1C6F765A4(v30, v5, __src);

                          *(v49 + 4) = v51;
                          *(v49 + 12) = 2080;
                          v52 = sub_1C75504BC();
                          v54 = v53;

                          v5 = sub_1C6F765A4(v52, v54, __src);

                          *(v49 + 14) = v5;
                          _os_log_impl(&dword_1C6F5C000, v47, v48, "Could not find value for %s in %s!", v49, 0x16u);
                          swift_arrayDestroy();
                          v55 = v50;
                          v20 = v172;
                          MEMORY[0x1CCA5F8E0](v55, -1, -1);
                          v56 = v49;
                          v2 = &qword_1EDD0A000;
                          MEMORY[0x1CCA5F8E0](v56, -1, -1);
                        }

                        else
                        {
                        }

                        v34 = v22;
                        v11 = v173;
                        goto LABEL_44;
                      }

                      v34 = v179;
                      if (v22 > v179)
                      {

                        v34 = v22;
                        v11 = v173;
                        goto LABEL_59;
                      }

                      v57 = v191;
                      v5 = v192;
                      v11 = v173;
                      if (!*(v29 + 16) || (sub_1C75504FC(), v58 = sub_1C6F78124(v57, v5), v60 = v59, , (v60 & 1) == 0) || (sub_1C6F774EC(*(v29 + 56) + 32 * v58, __src), (swift_dynamicCast() & 1) == 0))
                      {
                        if (v2[5] != -1)
                        {
                          swift_once();
                        }

                        v62 = sub_1C754FF1C();
                        __swift_project_value_buffer(v62, qword_1EDD0A030);
                        sub_1C75504FC();
                        sub_1C73E64B0(v186, __src);
                        v63 = sub_1C754FEEC();
                        v64 = sub_1C755119C();
                        sub_1C73E6480(v186);

                        if (os_log_type_enabled(v63, v64))
                        {
                          v65 = swift_slowAlloc();
                          v66 = swift_slowAlloc();
                          *&__src[0] = v66;
                          *v65 = 136315394;
                          sub_1C75504FC();
                          v67 = sub_1C6F765A4(v57, v5, __src);

                          *(v65 + 4) = v67;
                          *(v65 + 12) = 2080;
                          v68 = sub_1C75504BC();
                          v70 = v69;

                          v5 = sub_1C6F765A4(v68, v70, __src);

                          *(v65 + 14) = v5;
                          _os_log_impl(&dword_1C6F5C000, v63, v64, "Could not find value for %s in %s!", v65, 0x16u);
                          swift_arrayDestroy();
                          v71 = v66;
                          v2 = &qword_1EDD0A000;
                          MEMORY[0x1CCA5F8E0](v71, -1, -1);
                          v72 = v65;
                          v11 = v173;
                          MEMORY[0x1CCA5F8E0](v72, -1, -1);
                        }

                        else
                        {
                        }

                        v34 = v22;
LABEL_59:
                        v9 = v176;
LABEL_60:
                        v20 = v172;
                        goto LABEL_45;
                      }

                      v61 = v179;
                      v5 = v180;
                      if (!sub_1C75507FC())
                      {

                        v9 = v176;
                        if (v2[5] != -1)
                        {
                          swift_once();
                        }

                        v73 = sub_1C754FF1C();
                        __swift_project_value_buffer(v73, qword_1EDD0A030);
                        v5 = sub_1C754FEEC();
                        v74 = sub_1C755118C();
                        if (os_log_type_enabled(v5, v74))
                        {
                          v75 = swift_slowAlloc();
                          *v75 = 134217984;
                          *(v75 + 4) = v34;
                          _os_log_impl(&dword_1C6F5C000, v5, v74, "Skipping image caption with 0 length and confidence %f.", v75, 0xCu);
                          MEMORY[0x1CCA5F8E0](v75, -1, -1);
                        }

LABEL_81:
                        v34 = v22;
                        goto LABEL_60;
                      }

                      v20 = v172;
                      if (v22 < v34)
                      {
                        goto LABEL_52;
                      }

                      v9 = v176;
                      if (v34 == v22)
                      {
                        if (v166)
                        {
                          v76 = v165;
                        }

                        else
                        {
                          v76 = 0.0;
                        }

                        if (v166)
                        {
                          v77 = v166;
                        }

                        else
                        {
                          v77 = 0xE000000000000000;
                        }

                        if (*&v76 == *&v61 && v77 == v5)
                        {
                          sub_1C75504FC();

                          goto LABEL_81;
                        }

                        v79 = sub_1C7551DBC();
                        sub_1C75504FC();

                        v20 = v172;
                        if (v79)
                        {
LABEL_52:

                          v165 = v61;
                          v166 = v5;
                        }

                        else
                        {

                          v34 = v22;
                        }

LABEL_44:
                        v9 = v176;
                        goto LABEL_45;
                      }
                    }

                    else
                    {
                      if (v2[5] != -1)
                      {
                        swift_once();
                      }

                      v35 = sub_1C754FF1C();
                      __swift_project_value_buffer(v35, qword_1EDD0A030);
                      sub_1C75504FC();
                      sub_1C73E64B0(v186, __src);
                      v5 = sub_1C754FEEC();
                      v36 = sub_1C755119C();
                      sub_1C73E6480(v186);

                      if (os_log_type_enabled(v5, v36))
                      {
                        v37 = swift_slowAlloc();
                        v38 = swift_slowAlloc();
                        *&__src[0] = v38;
                        *v37 = 136315394;
                        sub_1C75504FC();
                        v39 = sub_1C6F765A4(v175, v174, __src);

                        *(v37 + 4) = v39;
                        *(v37 + 12) = 2080;
                        v40 = sub_1C75504BC();
                        v42 = v41;

                        v43 = sub_1C6F765A4(v40, v42, __src);
                        v11 = v173;

                        *(v37 + 14) = v43;
                        v2 = &qword_1EDD0A000;
                        _os_log_impl(&dword_1C6F5C000, v5, v36, "Could not find value for %s in %s!", v37, 0x16u);
                        swift_arrayDestroy();
                        v44 = v38;
                        v20 = v172;
                        MEMORY[0x1CCA5F8E0](v44, -1, -1);
                        v45 = v37;
                        v9 = v176;
                        MEMORY[0x1CCA5F8E0](v45, -1, -1);
                      }

                      else
                      {
                      }
                    }

                    v34 = v22;
LABEL_45:
                    v23 += 8;
                    v22 = v34;
                    v21 = v177 - 1;
                    if (v177 == 1)
                    {

                      if (!v166)
                      {
                        v3 = v168;
                        goto LABEL_98;
                      }

                      swift_isUniquelyReferenced_nonNull_native();
                      *&__src[0] = v167;
                      v5 = v169;
                      sub_1C6FC80A4();

                      v167 = *&__src[0];
                      __swift_destroy_boxed_opaque_existential_1(v181);
                      sub_1C6FCA5E0(&v182);
                      v3 = v168;
                      v8 = v170;
                      goto LABEL_8;
                    }
                  }
                }

LABEL_98:
                v15 = v171;
              }
            }

            if (*(*&v15 + 16) && (v93 = v186[2], v94 = v186[3], v95 = v15, sub_1C75504FC(), v5 = sub_1C6F78124(v93, v94), v97 = v96, , (v97 & 1) != 0))
            {
              sub_1C6F774EC(*(*&v95 + 56) + 32 * v5, __src);

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217B50, &qword_1C756DB20);
              if (swift_dynamicCast())
              {
                v98 = v179;
                v8 = v170;
                if (*(*&v179 + 16) != 1)
                {

                  if (v2[5] != -1)
                  {
                    swift_once();
                  }

                  v113 = sub_1C754FF1C();
                  __swift_project_value_buffer(v113, qword_1EDD0A030);
                  sub_1C75504FC();
                  v5 = sub_1C754FEEC();
                  v114 = sub_1C755119C();
                  if (os_log_type_enabled(v5, v114))
                  {
                    v115 = swift_slowAlloc();
                    v116 = swift_slowAlloc();
                    *&__src[0] = v116;
                    *v115 = 134218242;
                    *(v115 + 4) = *(*&v98 + 16);

                    *(v115 + 12) = 2080;
                    v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B8E8, &qword_1C7589510);
                    v118 = MEMORY[0x1CCA5D090](*&v98, v117);
                    v120 = v119;

                    v121 = v118;
                    v2 = &qword_1EDD0A000;
                    v122 = sub_1C6F765A4(v121, v120, __src);
                    v11 = v173;

                    *(v115 + 14) = v122;
                    _os_log_impl(&dword_1C6F5C000, v5, v114, "Video captions did not return exactly 1 result, instead got %ld results: %s!", v115, 0x16u);
                    __swift_destroy_boxed_opaque_existential_1(v116);
                    v123 = v116;
                    v9 = v176;
                    MEMORY[0x1CCA5F8E0](v123, -1, -1);
                    MEMORY[0x1CCA5F8E0](v115, -1, -1);
                  }

                  else
                  {
                    swift_bridgeObjectRelease_n();
                  }

                  __swift_destroy_boxed_opaque_existential_1(v181);
                  sub_1C6FCA5E0(&v182);
                  v3 = v168;
                  continue;
                }

                v100 = v187;
                v99 = v188;
                v101 = *(*&v179 + 32);
                v102 = *(v101 + 16);
                sub_1C75504FC();
                if (v102 && (sub_1C75504FC(), v103 = sub_1C6F78124(v100, v99), v105 = v104, , (v105 & 1) != 0))
                {
                  v106 = *(*(v101 + 56) + 8 * v103);
                  sub_1C75504FC();

                  v108 = v193;
                  v107 = v194;
                  if (*(v106 + 16))
                  {
                    sub_1C75504FC();
                    v109 = sub_1C6F78124(v108, v107);
                    v111 = v110;

                    if (v111)
                    {
                      sub_1C6F774EC(*(v106 + 56) + 32 * v109, __src);
                      if (swift_dynamicCast())
                      {

                        v5 = *&v179;
                        v112 = v180;
                        if (sub_1C75507FC())
                        {
                          v9 = v176;
                          if (!v5 && v112 == 0xE000000000000000)
                          {

                            goto LABEL_145;
                          }

                          v149 = sub_1C7551DBC();

                          if (v149)
                          {

                            goto LABEL_133;
                          }

LABEL_145:
                        }

                        else
                        {

                          v9 = v176;
                          if (qword_1EDD0A028 != -1)
                          {
                            swift_once();
                          }

                          v145 = sub_1C754FF1C();
                          __swift_project_value_buffer(v145, qword_1EDD0A030);
                          v146 = sub_1C754FEEC();
                          v147 = sub_1C755118C();
                          if (os_log_type_enabled(v146, v147))
                          {
                            v148 = swift_slowAlloc();
                            *v148 = 0;
                            _os_log_impl(&dword_1C6F5C000, v146, v147, "Skipping video caption with 0 length.", v148, 2u);
                            MEMORY[0x1CCA5F8E0](v148, -1, -1);
                          }
                        }

                        v5 = 0;
                        v112 = 0;
                        goto LABEL_133;
                      }
                    }
                  }

                  if (qword_1EDD0A028 != -1)
                  {
                    swift_once();
                  }

                  v135 = sub_1C754FF1C();
                  __swift_project_value_buffer(v135, qword_1EDD0A030);
                  sub_1C73E64B0(v186, __src);
                  sub_1C75504FC();
                  v136 = sub_1C754FEEC();
                  v137 = sub_1C755119C();
                  sub_1C73E6480(v186);

                  if (os_log_type_enabled(v136, v137))
                  {
                    v138 = swift_slowAlloc();
                    v139 = swift_slowAlloc();
                    *&__src[0] = v139;
                    *v138 = 136315394;
                    sub_1C75504FC();
                    v140 = sub_1C6F765A4(v108, v107, __src);

                    *(v138 + 4) = v140;
                    *(v138 + 12) = 2080;
                    v141 = sub_1C75504BC();
                    v143 = v142;

                    v144 = sub_1C6F765A4(v141, v143, __src);

                    *(v138 + 14) = v144;
                    _os_log_impl(&dword_1C6F5C000, v136, v137, "Could not find value for %s in %s!", v138, 0x16u);
                    swift_arrayDestroy();
                    MEMORY[0x1CCA5F8E0](v139, -1, -1);
                    v8 = v170;
                    MEMORY[0x1CCA5F8E0](v138, -1, -1);
                  }

                  else
                  {
                  }

                  v5 = 0;
                  v112 = 0;
                  v11 = v173;
                }

                else
                {
                  if (qword_1EDD0A028 != -1)
                  {
                    swift_once();
                  }

                  v124 = sub_1C754FF1C();
                  __swift_project_value_buffer(v124, qword_1EDD0A030);
                  sub_1C73E64B0(v186, __src);
                  sub_1C75504FC();
                  v125 = sub_1C754FEEC();
                  v126 = sub_1C755119C();
                  sub_1C73E6480(v186);

                  if (os_log_type_enabled(v125, v126))
                  {
                    v127 = swift_slowAlloc();
                    v128 = swift_slowAlloc();
                    *&__src[0] = v128;
                    *v127 = 136315394;
                    sub_1C75504FC();
                    v129 = sub_1C6F765A4(v100, v99, __src);

                    *(v127 + 4) = v129;
                    *(v127 + 12) = 2080;
                    v130 = sub_1C75504BC();
                    v132 = v131;

                    v133 = sub_1C6F765A4(v130, v132, __src);

                    *(v127 + 14) = v133;
                    _os_log_impl(&dword_1C6F5C000, v125, v126, "Could not find value for %s in %s!", v127, 0x16u);
                    swift_arrayDestroy();
                    v8 = v170;
                    MEMORY[0x1CCA5F8E0](v128, -1, -1);
                    v134 = v127;
                    v11 = v173;
                    MEMORY[0x1CCA5F8E0](v134, -1, -1);
                  }

                  else
                  {
                  }

                  v5 = 0;
                  v112 = 0;
                }

                v9 = v176;
LABEL_133:

                if (v112)
                {
                  swift_isUniquelyReferenced_nonNull_native();
                  *&__src[0] = v167;
                  v5 = v169;
                  sub_1C6FC80A4();

                  v167 = *&__src[0];
                }

                else
                {
                }

                __swift_destroy_boxed_opaque_existential_1(v181);
                sub_1C6FCA5E0(&v182);
                v2 = &qword_1EDD0A000;
                v3 = v168;
                continue;
              }
            }

            else
            {
            }

            __swift_destroy_boxed_opaque_existential_1(v181);
            sub_1C6FCA5E0(&v182);
            v8 = v170;
            continue;
          }

          if (v2[5] != -1)
          {
            swift_once();
          }

          v90 = sub_1C754FF1C();
          __swift_project_value_buffer(v90, qword_1EDD0A030);
          v5 = sub_1C754FEEC();
          v91 = sub_1C755119C();
          if (os_log_type_enabled(v5, v91))
          {
            v92 = swift_slowAlloc();
            *v92 = 0;
            _os_log_impl(&dword_1C6F5C000, v5, v91, "Value in caption result dictionary was not a dictionary!", v92, 2u);
            v89 = v92;
LABEL_90:
            MEMORY[0x1CCA5F8E0](v89, -1, -1);
          }
        }

        else
        {
          if (v2[5] != -1)
          {
            swift_once();
          }

          v80 = sub_1C754FF1C();
          __swift_project_value_buffer(v80, qword_1EDD0A030);
          sub_1C6FCA584(&v182, __src);
          v5 = sub_1C754FEEC();
          v81 = sub_1C755119C();
          if (os_log_type_enabled(v5, v81))
          {
            v82 = swift_slowAlloc();
            v83 = COERCE_DOUBLE(swift_slowAlloc());
            v179 = v83;
            *v82 = 136315138;
            v84 = sub_1C755173C();
            v86 = v85;
            sub_1C6FCA5E0(__src);
            v87 = sub_1C6F765A4(v84, v86, &v179);
            v2 = &qword_1EDD0A000;

            *(v82 + 4) = v87;
            _os_log_impl(&dword_1C6F5C000, v5, v81, "Key in caption result dictionary was not a string, it was %s!", v82, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(*&v83);
            v88 = v83;
            v9 = v176;
            MEMORY[0x1CCA5F8E0](*&v88, -1, -1);
            v89 = v82;
            v3 = v168;
            goto LABEL_90;
          }

          sub_1C6FCA5E0(__src);
        }

        __swift_destroy_boxed_opaque_existential_1(v181);
        sub_1C6FCA5E0(&v182);
        continue;
      }

      break;
    }

    sub_1C73E6480(v186);
    if (v2[5] != -1)
    {
      swift_once();
    }

    v150 = sub_1C754FF1C();
    __swift_project_value_buffer(v150, qword_1EDD0A030);
    sub_1C75504FC();
    sub_1C75504FC();
    v151 = sub_1C754FEEC();
    v152 = sub_1C755118C();
    if (os_log_type_enabled(v151, v152))
    {
      v153 = swift_slowAlloc();
      *v153 = 134218240;
      *(v153 + 4) = *(v167 + 16);

      *(v153 + 12) = 2048;
      *(v153 + 14) = sub_1C6FB6304();

      _os_log_impl(&dword_1C6F5C000, v151, v152, "Received captions for %ld/%ld assets!", v153, 0x16u);
      MEMORY[0x1CCA5F8E0](v153, -1, -1);
    }

    else
    {
    }

    *&__src[0] = v167;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B8D8, &qword_1C7589508);
    return sub_1C7550CAC();
  }

  else
  {
    if (a2)
    {
      v5 = a2;
    }

    else
    {
      sub_1C73E642C();
      v5 = swift_allocError();
      *v154 = 0;
      v154[1] = 0;
    }

    v155 = a2;
    if (qword_1EDD0A028 != -1)
    {
LABEL_159:
      swift_once();
    }

    v156 = sub_1C754FF1C();
    __swift_project_value_buffer(v156, qword_1EDD0A030);
    v157 = v5;
    v158 = sub_1C754FEEC();
    v159 = sub_1C755119C();

    if (os_log_type_enabled(v158, v159))
    {
      v160 = swift_slowAlloc();
      v161 = swift_slowAlloc();
      *v160 = 138412290;
      v162 = v5;
      v163 = _swift_stdlib_bridgeErrorToNSError();
      *(v160 + 4) = v163;
      *v161 = v163;
      _os_log_impl(&dword_1C6F5C000, v158, v159, "Failed to get asset captions from mediaanalysisd: %@!", v160, 0xCu);
      sub_1C6FC15D8(v161);
      MEMORY[0x1CCA5F8E0](v161, -1, -1);
      MEMORY[0x1CCA5F8E0](v160, -1, -1);
    }

    v186[0] = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B8D8, &qword_1C7589508);
    return sub_1C7550C9C();
  }
}

id AssetCaptionGenerator.init()()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR___PNAssetCaptionGenerator_currentVideoCaptionPreferenceRequestID];
  *v2 = 0;
  v2[8] = 1;
  v3 = &v0[OBJC_IVAR___PNAssetCaptionGenerator_currentAssetCaptionRequestID];
  *v3 = 0;
  v3[8] = 1;
  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

id AssetCaptionGenerator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1C73E642C()
{
  result = qword_1EC21B8E0;
  if (!qword_1EC21B8E0)
  {
    result = swift_getWitnessTable(asc_1C75895B0, &type metadata for AssetCaptionGenerator.Error, v0, v1);
    atomic_store(result, &qword_1EC21B8E0);
  }

  return result;
}

uint64_t objectdestroy_12Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroy_15Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x1EEE6BDD0](v2, ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v5 | 7);
}

uint64_t sub_1C73E6630(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_18(v8);
  v10 = v9;
  v12 = v11;
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = (*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v5 + v14);
  v16 = *(v5 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8));

  return a5(a1, a2, v5 + v13, v15, v16);
}

uint64_t sub_1C73E6700(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_1C73E6740(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C73E6820(char a1)
{
  v2 = 0xE400000000000000;
  v3 = 1701736270;
  switch(a1)
  {
    case 1:
      v2 = 0xE600000000000000;
      v3 = 0x636961736F4DLL;
      break;
    case 2:
      v2 = 0xE600000000000000;
      v3 = 0x686372616553;
      break;
    case 3:
      v2 = 0xE90000000000006CLL;
      v3 = 0x616369736D696857;
      break;
    case 4:
      v2 = 0xEA00000000006C61;
      v3 = 0x75747865746E6F43;
      break;
    default:
      break;
  }

  MEMORY[0x1CCA5CD70](v3, v2);
}

uint64_t sub_1C73E68E8(char a1)
{
  v2 = 0xEB00000000726574;
  v3 = 0x706168432079654BLL;
  switch(a1)
  {
    case 1:
      v2 = 0xEC0000006E6F6974;
      v3 = 0x6375646F72746E49;
      break;
    case 2:
      v2 = 0xE600000000000000;
      v3 = 0x656C616E6946;
      break;
    case 3:
      v2 = 0xEE00726574706168;
      v3 = 0x432061207473754ALL;
      break;
    default:
      break;
  }

  MEMORY[0x1CCA5CD70](v3, v2);
}

uint64_t sub_1C73E69B8(unsigned __int8 a1)
{
  v2 = a1 >> 5;
  v3 = 0xE600000000000000;
  v4 = 0x79636167656CLL;
  switch(v2)
  {
    case 1:
      OUTLINED_FUNCTION_88_15();
      v4 = OUTLINED_FUNCTION_87_20(v8);
      if (v11)
      {
        v3 = v10;
      }

      else
      {
        v3 = v9;
      }

      break;
    case 2:
      OUTLINED_FUNCTION_116_15();
      OUTLINED_FUNCTION_542();
      OUTLINED_FUNCTION_62_23();
      if (v11)
      {
        v4 = v12 + 1;
      }

      else
      {
        v4 = v15;
      }

      if (v11)
      {
        v3 = v13;
      }

      else
      {
        v3 = v14;
      }

      break;
    case 3:
      if (a1 == 96)
      {
        v4 = 0x6F7365527473616CLL;
      }

      else
      {
        v4 = 0xD000000000000013;
      }

      if (a1 == 96)
      {
        v3 = 0xEA00000000007472;
      }

      else
      {
        v3 = 0x80000001C759C380;
      }

      break;
    case 4:
      break;
    default:
      OUTLINED_FUNCTION_119_14();
      OUTLINED_FUNCTION_542();
      if (v7)
      {
        v3 = v5;
      }

      else
      {
        v3 = v6;
      }

      break;
  }

  MEMORY[0x1CCA5CD70](v4, v3);
}

uint64_t sub_1C73E6AE4(char a1)
{
  v2 = 0xE600000000000000;
  v3 = 0x6E6F73726570;
  switch(a1)
  {
    case 1:
      v2 = 0xE300000000000000;
      v3 = 7628144;
      break;
    case 2:
      v2 = 0xE500000000000000;
      v3 = 0x6D75626C61;
      break;
    case 3:
      v2 = 0xE400000000000000;
      v3 = 1885958772;
      break;
    case 4:
      v3 = 0x79726F6D656DLL;
      break;
    case 5:
      v2 = 0xE500000000000000;
      v3 = 0x746E657665;
      break;
    case 6:
      v2 = 0xEB0000000070756FLL;
      v3 = 0x72476C6169636F73;
      break;
    case 7:
      v2 = 0xE900000000000065;
      v3 = 0x707954616964656DLL;
      break;
    case 8:
      v2 = 0xED00006F746F6850;
      goto LABEL_11;
    case 9:
      v2 = 0xEE0079726F6D654DLL;
LABEL_11:
      v3 = 0x6465727574616566;
      break;
    default:
      break;
  }

  MEMORY[0x1CCA5CD70](v3, v2);
}

uint64_t sub_1C73E6C1C(unint64_t a1)
{
  v1 = a1 >> 62;
  v2 = 0xE400000000000000;
  v3 = 1701736302;
  switch(v1)
  {
    case 1uLL:
      v2 = 0xE800000000000000;
      v3 = 0x6465646E65747865;
      break;
    case 2uLL:
      v2 = 0xEC000000676E696CLL;
      v3 = 0x6C657479726F7473;
      break;
    case 3uLL:
      break;
    default:
      v2 = 0xE900000000000064;
      v3 = 0x6576656972746572;
      break;
  }

  MEMORY[0x1CCA5CD70](v3, v2);
}

void sub_1C73E6CD4(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 16);
  __dst[0] = *a1;
  __dst[1] = v6;
  LOBYTE(__dst[2]) = v5;
  sub_1C724D82C();
  if (v3)
  {
    return;
  }

  v111 = v121[1];
  if (!v121[1])
  {
    sub_1C75504FC();
    return;
  }

  v12 = a2;
  v13 = *(a2 + 16);
  if (!v13)
  {

    return;
  }

  v104 = v7;
  v96 = 0;
  v109 = v2;
  v110 = v121[0];
  v126 = MEMORY[0x1E69E7CC0];
  v14 = v12;
  sub_1C716D668(0, v13, 0, v8, v9, v10, v11);
  v15 = 0;
  v108 = v14 + 32;
  v101 = OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyPhotoLibraryContext;
  v102 = xmmword_1C755BAB0;
  v127 = v126;
  v107 = v13;
  while (1)
  {
    v112 = v15;
    memcpy(__dst, (v108 + (v15 << 7)), sizeof(__dst));
    v17 = *(&__dst[0] + 1);
    v16 = *&__dst[0];
    v18 = *&__dst[0] == v110 && v111 == *(&__dst[0] + 1);
    if (!v18 && (sub_1C7551DBC() & 1) == 0)
    {
      v105 = *(&__dst[6] + 1);
      v106 = *(&__dst[7] + 1);
      v64 = __dst[7];
      v98 = *(&__dst[3] + 8);
      v99 = *(&__dst[5] + 8);
      v97 = *(&__dst[4] + 8);
      v60 = *(&__dst[2] + 1);
      v65 = *&__dst[3];
      v61 = __dst[2];
      v63 = *(&__dst[1] + 1);
      v62 = *&__dst[1];
      sub_1C6FB7BB8(__dst, v121);
      v59 = v65;
      v55 = v64;
      v58 = v97;
      v57 = v98;
      v56 = v99;
      v54 = v105;
      v53 = v106;
      goto LABEL_31;
    }

    memcpy(__src, __dst, sizeof(__src));
    v19 = *(&__dst[6] + 1);
    v119 = __dst[7];
    v118[0] = *(&__dst[7] + 1);
    *(v118 + 7) = *(&__dst[7] + 1);
    if (__dst[7])
    {
      sub_1C6FBC6B8();
      OUTLINED_FUNCTION_9_10();
      swift_allocError();
      *v85 = 2;
      swift_willThrow();
      sub_1C6FB7BB8(__dst, v121);

      v86 = memcpy(v121, __src, sizeof(v121));
      v122 = v19;
      v123 = v119;
      OUTLINED_FUNCTION_234_4(v86, v87, v88, v89, v90, v91, v92, v93, v95, v96, v97, *(&v97 + 1), v98, *(&v98 + 1), v99, *(&v99 + 1), v100, v101, v102, *(&v102 + 1), v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113[0], v113[1], v113[2], v113[3], v113[4], v113[5], v113[6], v113[7], v113[8], v113[9], v113[10], v113[11], v113[12], v113[13], v113[14], v113[15], v114[0], v114[1], v114[2], v114[3], v114[4], v114[5], v114[6], v114[7], v114[8], v114[9], v114[10], v114[11], v114[12], v115, v116, *(&v116 + 1), *v117);
      v124 = v94;
      sub_1C6FBC664(v121);

      return;
    }

    sub_1C6FB7BB8(__dst, v121);
    v20 = [v19 fetchedObjects];
    if (v20)
    {
      break;
    }

    v25 = MEMORY[0x1E69E7CC0];
LABEL_28:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
    inited = swift_initStackObject();
    *(inited + 16) = v102;
    v40 = sub_1C70CAC04(v104);
    if (!v41)
    {
      goto LABEL_41;
    }

    *(inited + 32) = v40;
    *(inited + 40) = v41;
    v113[0] = v25;
    sub_1C6FD2568(inited);
    type metadata accessor for FreeformStoryChapterCurator(0);
    v42 = sub_1C71A2CA8();

    sub_1C6FBC718(v19);
    v119 = 0;
    memcpy(v114, __src, sizeof(v114));
    LOBYTE(v116) = 0;
    *(&v116 + 1) = v118[0];
    v43 = memcpy(v121, __src, sizeof(v121));
    v122 = v42;
    v123 = 0;
    OUTLINED_FUNCTION_234_4(v43, v44, v45, v46, v47, v48, v49, v50, v95, v96, v97, *(&v97 + 1), v98, *(&v98 + 1), v99, *(&v99 + 1), v100, v101, v102, *(&v102 + 1), v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113[0], v113[1], v113[2], v113[3], v113[4], v113[5], v113[6], v113[7], v113[8], v113[9], v113[10], v113[11], v113[12], v113[13], v113[14], v113[15], v114[0], v114[1], v114[2], v114[3], v114[4], v114[5], v114[6], v114[7], v114[8], v114[9], v114[10], v114[11], v114[12], v42, v116, *(v118 + 7), *v117);
    *(v52 + 120) = v51;
    sub_1C6FB7BB8(v114, v113);
    sub_1C6FBC664(v121);
    v53 = *(&v116 + 1);
    v54 = v115;
    v55 = v116;
    v56 = *&v114[11];
    v57 = *&v114[7];
    v58 = *&v114[9];
    v60 = v114[5];
    v59 = v114[6];
    v61 = v114[4];
    v62 = v114[2];
    v63 = v114[3];
    v16 = v114[0];
    v17 = v114[1];
LABEL_31:
    v66 = v127;
    v126 = v127;
    v68 = *(v127 + 16);
    v67 = *(v127 + 24);
    v69 = v112;
    if (v68 >= v67 >> 1)
    {
      v73 = OUTLINED_FUNCTION_15(v67);
      v105 = v75;
      v106 = v74;
      v98 = v77;
      v99 = v76;
      v97 = v78;
      LODWORD(v127) = v79;
      v95 = v80;
      sub_1C716D668(v73, v68 + 1, 1, v81, v82, v83, v84);
      v59 = v95;
      v55 = v127;
      v58 = v97;
      v57 = v98;
      v56 = v99;
      v54 = v105;
      v53 = v106;
      v69 = v112;
      v66 = v126;
    }

    v15 = v69 + 1;
    LOBYTE(v113[0]) = v55;
    *(v66 + 16) = v68 + 1;
    v70 = v66 + (v68 << 7);
    *(v70 + 32) = v16;
    *(v70 + 40) = v17;
    *(v70 + 48) = v62;
    *(v70 + 56) = v63;
    *(v70 + 64) = v61;
    v71 = *(v121 + 3);
    *(v70 + 65) = v121[0];
    *(v70 + 68) = v71;
    *(v70 + 72) = v60;
    *(v70 + 80) = v59;
    *(v70 + 88) = v57;
    *(v70 + 104) = v58;
    *(v70 + 120) = v56;
    *(v70 + 136) = v54;
    *(v70 + 144) = v113[0];
    v72 = v114[0];
    *(v70 + 148) = *(v114 + 3);
    *(v70 + 145) = v72;
    *(v70 + 152) = v53;
    if (v15 == v107)
    {

      return;
    }

    v127 = v66;
  }

  v21 = v20;
  v106 = v19;
  sub_1C6F65BE8(0, &qword_1EDD0FA70, 0x1E6978630);
  v22 = sub_1C7550B5C();

  v23 = sub_1C6FB6304();
  v24 = 0;
  v25 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v23 == v24)
    {

      v19 = v106;
      goto LABEL_28;
    }

    if ((v22 & 0xC000000000000001) != 0)
    {
      v36 = OUTLINED_FUNCTION_66_4();
      v26 = MEMORY[0x1CCA5DDD0](v36);
    }

    else
    {
      if (v24 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_40;
      }

      v26 = *(v22 + 8 * v24 + 32);
    }

    v27 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    v28 = v26;
    v29 = [v28 uuid];
    if (v29)
    {
      v30 = v29;
      v31 = sub_1C755068C();
      v105 = v32;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB1814();
        v25 = v37;
      }

      v34 = *(v25 + 16);
      v33 = *(v25 + 24);
      if (v34 >= v33 >> 1)
      {
        OUTLINED_FUNCTION_15(v33);
        sub_1C6FB1814();
        v25 = v38;
      }

      *(v25 + 16) = v34 + 1;
      v35 = v25 + 16 * v34;
      *(v35 + 32) = v31;
      *(v35 + 40) = v105;
      v24 = v27;
    }

    else
    {

      ++v24;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
}

uint64_t sub_1C73E72EC()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  *(v1 + 64) = v4;
  *(v1 + 72) = v0;
  *(v1 + 56) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215C60, &qword_1C757ED30);
  OUTLINED_FUNCTION_76(v6);
  *(v1 + 80) = OUTLINED_FUNCTION_77();
  *(v1 + 88) = *v3;
  v7 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C73E7380()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 64);
  if (v1)
  {
    *(v0 + 104) = *(*(v1 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_statistics) + 56);
    type metadata accessor for StoryMusicCurator(0);

    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    *(v0 + 112) = v2;
    *v2 = v3;
    v2[1] = sub_1C73E74B8;

    return static StoryMusicCurator.queryAppleMusicSubscriptionState(cacheValueInSeconds:)();
  }

  else
  {
    *(v0 + 40) = *(v0 + 88);
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    *(v0 + 120) = v5;
    *v5 = v6;
    OUTLINED_FUNCTION_79_17(v5);

    return FreeformStoryGenerator.musicCurationResults(from:)();
  }
}

uint64_t sub_1C73E74B8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C73E759C()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  type metadata accessor for AppleMusicSubscriptionState(0);
  OUTLINED_FUNCTION_25_8();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  v7 = OBJC_IVAR____TtC18PhotosIntelligence15MusicStatistics_appleMusicSubscriptionState;
  swift_beginAccess();
  sub_1C73FED14(v2, v1 + v7);
  swift_endAccess();

  *(v0 + 40) = *(v0 + 88);
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 120) = v8;
  *v8 = v9;
  OUTLINED_FUNCTION_79_17(v8);

  return FreeformStoryGenerator.musicCurationResults(from:)();
}

uint64_t sub_1C73E767C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C73E7760()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 64);
  isCancelled = swift_task_isCancelled();
  if (v1)
  {
    if (isCancelled)
    {
      v3 = *(*(*(v0 + 64) + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_statistics) + 56);
      if ((*(v3 + 34) & 1) == 0)
      {
        *(v3 + 16) = 1;
      }
    }
  }

  OUTLINED_FUNCTION_43();

  return v4();
}

uint64_t static FreeformStoryGenerator.addCurationHints(to:storyType:from:diagnosticContext:)()
{
  OUTLINED_FUNCTION_42();
  *(v1 + 240) = v2;
  *(v1 + 248) = v0;
  *(v1 + 224) = v3;
  *(v1 + 232) = v4;
  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  *(v1 + 256) = *v5;
  *(v1 + 264) = v6;
  *(v1 + 272) = v7;
  LOBYTE(v5) = *(v5 + 32);
  *(v1 + 280) = v5;
  sub_1C70CE970(v6, v7, v5);
  v8 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C73E786C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t __dst, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t __src, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_160_6();
  a47 = v50;
  a48 = v51;
  OUTLINED_FUNCTION_207_2();
  a46 = v48;
  if (!*(v48 + 280))
  {
    v52 = 0;
    goto LABEL_5;
  }

  if (*(v48 + 280) == 1)
  {
    v52 = 1;
LABEL_5:
    v53 = *(v48 + 256);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70, &unk_1C7565390);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_1C7565670;
    *(v54 + 32) = v53;
    v55 = *(v48 + 272);
    v111 = *(v48 + 264);
    v56 = v53;
    goto LABEL_7;
  }

  v111 = 0;
  v55 = 0;
  v52 = 1;
  v54 = MEMORY[0x1E69E7CC0];
LABEL_7:
  v57 = *(v48 + 224);
  v58 = *(v57 + 16);
  v112 = v48;
  v59 = *(v48 + 256);
  if (v58)
  {
    LODWORD(a10) = v52;
    v113 = MEMORY[0x1E69E7CC0];
    v60 = v59;
    sub_1C716D9B8(0, v58, 0);
    v49 = (v57 + 32);
    v61 = v58 - 1;
    v62 = v48;
    v63 = v113;
    for (i = v55; ; v55 = i)
    {
      memcpy((v62 + 16), v49, 0x68uLL);
      memcpy(&__dst, v49, 0x58uLL);
      if (v55 && (*(v62 + 16) == v111 ? (v65 = v55 == *(v62 + 24)) : (v65 = 0), v65 || (sub_1C7551DBC() & 1) != 0))
      {
        v66 = v54;
        v67 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v66 = MEMORY[0x1E69E7CC0];
        v67 = v54;
      }

      sub_1C6FC061C(v62 + 16, v62 + 120);
      sub_1C75504FC();

      memcpy(&__src, &__dst, 0x58uLL);
      v68 = v63;
      a13 = v63;
      v70 = *(v63 + 16);
      v69 = *(v63 + 24);
      if (v70 >= v69 >> 1)
      {
        v72 = OUTLINED_FUNCTION_15(v69);
        sub_1C716D9B8(v72, v70 + 1, 1);
        v68 = v63;
      }

      *(v68 + 16) = v70 + 1;
      v63 = v68;
      v71 = (v68 + 104 * v70);
      memcpy(v71 + 4, &__src, 0x58uLL);
      v71[15] = v66;
      v71[16] = v67;
      if (!v61)
      {
        break;
      }

      --v61;
      v49 += 26;
      v62 = v112;
    }

    v73 = v63;
    v74 = v112;
    if ((a10 & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v75 = v59;

    v73 = MEMORY[0x1E69E7CC0];
    v74 = v48;
    if ((v52 & 1) == 0)
    {
LABEL_37:

      goto LABEL_38;
    }
  }

  LOBYTE(__src) = **(v74 + 232);
  sub_1C73F6D18(&__src, &__dst);
  v76 = __dst;
  v77 = **(v74 + 232);
  v78 = __dst >> 5;
  switch(__dst >> 5)
  {
    case 1:
      if ((v77 & 0xE0) != 0x20)
      {
        goto LABEL_42;
      }

      goto LABEL_36;
    case 2:
      if (__dst == 64)
      {
        if (v77 == 64)
        {
          goto LABEL_37;
        }
      }

      else if (v77 == 65)
      {
        goto LABEL_37;
      }

      goto LABEL_42;
    case 3:
      if (__dst == 96)
      {
        if (v77 == 96)
        {
          goto LABEL_37;
        }
      }

      else if (v77 == 97)
      {
        goto LABEL_37;
      }

LABEL_42:
      v111 = v73;
      if (qword_1EDD09CF0 != -1)
      {
        OUTLINED_FUNCTION_0_23();
        swift_once();
      }

      v88 = sub_1C754FF1C();
      OUTLINED_FUNCTION_23_2(v88, qword_1EDD28B68);
      v89 = sub_1C754FEEC();
      v90 = sub_1C75511BC();
      v91 = OUTLINED_FUNCTION_72();
      if (os_log_type_enabled(v91, v92))
      {
        v93 = 0x79636167656CLL;
        OUTLINED_FUNCTION_11_3();
        swift_slowAlloc();
        a10 = OUTLINED_FUNCTION_177_3();
        __src = a10;
        *v49 = 136315394;
        v94 = 0xE600000000000000;
        v95 = 0x79636167656CLL;
        switch(v77 >> 5)
        {
          case 1u:
            if (v77)
            {
              v94 = 0x80000001C759A5F0;
              v95 = 0xD00000000000001BLL;
            }

            else
            {
              v94 = 0x80000001C759A8B0;
              v95 = 0xD00000000000001ALL;
            }

            break;
          case 2u:
            if (v77 == 64)
            {
              v94 = 0x80000001C759C3C0;
              v95 = 0xD000000000000012;
            }

            else
            {
              v94 = 0x80000001C759C3A0;
              v95 = 0xD00000000000001FLL;
            }

            break;
          case 3u:
            if (v77 == 96)
            {
              v95 = OUTLINED_FUNCTION_241_2();
              v94 = 0xEA00000000007472;
            }

            else
            {
              v94 = 0x80000001C759C380;
              v95 = 0xD000000000000013;
            }

            break;
          case 4u:
            break;
          default:
            if (v77)
            {
              v96 = "montage(implicit)";
            }

            else
            {
              v96 = "visualClusterBased";
            }

            v94 = v96 | 0x8000000000000000;
            v95 = 0xD000000000000011;
            break;
        }

        v97 = sub_1C6F765A4(v95, v94, &__src);

        *(v49 + 1) = v97;
        *(v49 + 6) = 2080;
        v98 = 0xE600000000000000;
        switch(v78)
        {
          case 1:
            OUTLINED_FUNCTION_542();
            if (v76)
            {
              v93 = v105;
            }

            else
            {
              v93 = 0xD00000000000001ALL;
            }

            if (v76)
            {
              v98 = v104;
            }

            else
            {
              v98 = v106;
            }

            break;
          case 2:
            OUTLINED_FUNCTION_119_14();
            if (v76 == 64)
            {
              v93 = 0xD000000000000012;
            }

            else
            {
              v93 = 0xD00000000000001FLL;
            }

            if (v76 == 64)
            {
              v98 = v107;
            }

            else
            {
              v98 = v108;
            }

            break;
          case 3:
            OUTLINED_FUNCTION_240_4();
            OUTLINED_FUNCTION_542();
            if (v76 == 96)
            {
              v93 = v101;
            }

            else
            {
              v93 = 0xD000000000000013;
            }

            if (v76 == 96)
            {
              v98 = v102;
            }

            else
            {
              v98 = v103;
            }

            break;
          case 4:
            break;
          default:
            OUTLINED_FUNCTION_119_14();
            if (v76)
            {
              v98 = v99;
            }

            else
            {
              v98 = v100;
            }

            v93 = 0xD000000000000011;
            break;
        }

        v109 = sub_1C6F765A4(v93, v98, &__src);

        *(v49 + 14) = v109;
        _os_log_impl(&dword_1C6F5C000, v89, v90, "Elected a key asset from a non-key chapter, switching story type from %s to %s", v49, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      if (*(v112 + 240))
      {
        __src = 0;
        a26 = 0xE000000000000000;
        sub_1C755180C();
        MEMORY[0x1CCA5CD70](0xD000000000000022, 0x80000001C759A5C0);
        sub_1C73E69B8(v77);
        MEMORY[0x1CCA5CD70](544175136, 0xE400000000000000);
        sub_1C73E69B8(v76);
        MEMORY[0x1CCA5CD70](0xD000000000000021, 0x80000001C75AEEC0);
        sub_1C7161CDC(__src, a26);
      }

      v110 = *(v112 + 232);

      *v110 = v76;
      break;
    case 4:
      if (v77 == 128)
      {
        goto LABEL_37;
      }

      goto LABEL_42;
    default:
      if (v77 > 0x1F)
      {
        goto LABEL_42;
      }

LABEL_36:
      if (((v77 ^ __dst) & 1) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_42;
  }

LABEL_38:
  OUTLINED_FUNCTION_188_1();

  return v81(v79, v80, v81, v82, v83, v84, v85, v86, a9, a10, v111, v112, a13, __dst, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, __src, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40);
}

void *sub_1C73E7FCC@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v4 = *(*v1 + 16);
  if (v3 == v4)
  {
    *(a1 + 80) = 0;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    return result;
  }

  if (v3 >= v4)
  {
    __break(1u);
    goto LABEL_8;
  }

  result = memcpy(__dst, (*v1 + 80 * v3 + 32), sizeof(__dst));
  v1[1] = v3 + 1;
  v6 = v1[2];
  if (__OFADD__(v6, 1))
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v1[2] = v6 + 1;
  *a1 = v6;
  memcpy((a1 + 8), __dst, 0x50uLL);
  return sub_1C7033044(__dst, &v7);
}

void sub_1C73E8080(uint64_t a1@<X8>)
{
  v2 = v1[1];
  v3 = *(*v1 + 16);
  if (v2 == v3)
  {
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    return;
  }

  if (v2 >= v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = (*v1 + 40 * v2);
  v6 = v4[4];
  v5 = v4[5];
  v8 = v4[6];
  v7 = v4[7];
  v9 = v4[8];
  v1[1] = v2 + 1;
  v10 = v1[2];
  if (__OFADD__(v10, 1))
  {
LABEL_9:
    __break(1u);
    return;
  }

  v1[2] = v10 + 1;
  *a1 = v10;
  *(a1 + 8) = v6;
  *(a1 + 16) = v5;
  *(a1 + 24) = v8;
  *(a1 + 32) = v7;
  *(a1 + 40) = v9;
  sub_1C75504FC();
  v11 = v8;
  sub_1C75504FC();

  sub_1C75504FC();
}

uint64_t static FreeformStoryGenerator.updateChapterCuratedAssetsHighlights(storyChapters:queryTokens:storyGenerationCache:progressReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[71] = a4;
  v4[70] = a3;
  v4[69] = a1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1C73E8154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_20_20();
  OUTLINED_FUNCTION_27_2();
  v21 = 0;
  v22 = *(v20 + 552);
  v23 = (v22 + 32);
  v24 = MEMORY[0x1E69E7CC0];
  v25 = &selRef_clsSceneClassifications;
  v83 = *(v22 + 16);
  *&v26 = 136643075;
  v82 = v26;
  *&v26 = 134217984;
  v81 = v26;
  while (v83 != v21)
  {
    memcpy((v20 + 16), v23, 0x80uLL);
    memcpy((v20 + 144), v23, 0x80uLL);
    swift_beginAccess();
    if (*(v20 + 256))
    {
      v70 = *(v20 + 568);
      sub_1C6FBC6B8();
      OUTLINED_FUNCTION_9_10();
      swift_allocError();
      *v71 = 2;
      swift_willThrow();
      sub_1C6FB7BB8(v20 + 16, v20 + 400);

      memcpy((v20 + 272), (v20 + 144), 0x80uLL);
      sub_1C6FBC664(v20 + 272);
      sub_1C754F2FC();
      OUTLINED_FUNCTION_3();
      (*(v72 + 8))(v70);
      OUTLINED_FUNCTION_43();
      OUTLINED_FUNCTION_20_4();

      return v74(v73, v74, v75, v76, v77, v78, v79, v80, v81, *(&v81 + 1), v82, *(&v82 + 1), a13, a14, v83, a16, a17, a18, a19, a20);
    }

    v27 = *(v20 + 248);
    sub_1C6FB7BB8(v20 + 16, v20 + 272);
    sub_1C6FBC70C(v27);
    v28 = [v27 v25[230]];
    if (v28)
    {
      v29 = v28;
      sub_1C6F65BE8(0, &qword_1EDD0FA70, 0x1E6978630);
      v30 = sub_1C7550B5C();
    }

    else
    {
      v30 = MEMORY[0x1E69E7CC0];
    }

    if (v30 >> 62)
    {
      v31 = sub_1C75516BC();
    }

    else
    {
      v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v31 < 1)
    {
      if (qword_1EDD09CF0 != -1)
      {
        OUTLINED_FUNCTION_0_23();
        swift_once();
      }

      v46 = sub_1C754FF1C();
      OUTLINED_FUNCTION_23_2(v46, qword_1EDD28B68);
      v33 = sub_1C754FEEC();
      v47 = sub_1C755119C();
      v48 = OUTLINED_FUNCTION_72();
      if (os_log_type_enabled(v48, v49))
      {
        OUTLINED_FUNCTION_13_3();
        v50 = swift_slowAlloc();
        *v50 = v81;
        *(v50 + 4) = v21;
        _os_log_impl(&dword_1C6F5C000, v33, v47, "No curated assets for chapter %ld.", v50, 0xCu);
        goto LABEL_18;
      }
    }

    else
    {
      *(v20 + 264) = StoryGenerationCache.cachedHighlightInformation()();

      if (qword_1EDD09CF0 != -1)
      {
        OUTLINED_FUNCTION_0_23();
        swift_once();
      }

      v32 = sub_1C754FF1C();
      OUTLINED_FUNCTION_23_2(v32, qword_1EDD28B68);
      v33 = sub_1C754FEEC();
      v34 = sub_1C755117C();
      v35 = OUTLINED_FUNCTION_72();
      if (os_log_type_enabled(v35, v36))
      {
        a14 = v21;
        v37 = *(v20 + 32);
        OUTLINED_FUNCTION_11_3();
        v38 = swift_slowAlloc();
        a13 = v23;
        a16 = OUTLINED_FUNCTION_49_1();
        *v38 = v82;
        sub_1C75504FC();
        v39 = OUTLINED_FUNCTION_154();
        sub_1C6F765A4(v39, v40, v41);
        OUTLINED_FUNCTION_259_1();
        *(v38 + 4) = v37;
        *(v38 + 12) = 2085;
        sub_1C75504FC();
        sub_1C75504BC();

        v42 = OUTLINED_FUNCTION_49_3();
        v45 = sub_1C6F765A4(v42, v43, v44);
        v21 = a14;

        *(v38 + 14) = v45;
        _os_log_impl(&dword_1C6F5C000, v33, v34, "Chapter %{sensitive}s has curated asset highlight information %{sensitive}s", v38, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
        v25 = &selRef_clsSceneClassifications;
LABEL_18:
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }
    }

    memcpy((v20 + 272), (v20 + 144), 0x80uLL);
    sub_1C6FB7BB8(v20 + 272, v20 + 400);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v53 = OUTLINED_FUNCTION_24_0();
      sub_1C6FB1B04(v53, v54, v55, v24);
      v24 = v56;
    }

    v52 = *(v24 + 16);
    v51 = *(v24 + 24);
    if (v52 >= v51 >> 1)
    {
      v57 = OUTLINED_FUNCTION_15(v51);
      sub_1C6FB1B04(v57, v52 + 1, 1, v24);
      v24 = v58;
    }

    sub_1C6FBC718(v27);
    *(v24 + 16) = v52 + 1;
    memcpy((v24 + (v52 << 7) + 32), (v20 + 272), 0x80uLL);
    memcpy((v20 + 400), (v20 + 144), 0x80uLL);
    sub_1C6FBC664(v20 + 400);
    v23 += 128;
    ++v21;
  }

  v59 = *(v20 + 568);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v60 + 8))(v59);
  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_20_4();

  return v63(v61, v62, v63, v64, v65, v66, v67, v68, v81, *(&v81 + 1), v82, *(&v82 + 1), a13, a14, v83, a16, a17, a18, a19, a20);
}

id static FreeformStoryGenerator.usingFallbackTitle(for:)(_BYTE *a1)
{
  if (*a1 == 1)
  {
    return [objc_opt_self() useFallbackTitleForMiniMC];
  }

  else
  {
    return 0;
  }
}

uint64_t FreeformStoryGenerator.Error.errorCode.getter()
{
  v1 = *v0;
  result = 101;
  switch(*(v0 + 24))
  {
    case 1:
      result = 103;
      break;
    case 2:
      result = 104;
      break;
    case 3:
      result = 105;
      break;
    case 4:
      result = 106;
      break;
    case 5:
      result = 107;
      break;
    case 6:
      result = 108;
      break;
    case 7:
      result = 109;
      break;
    case 8:
      result = 117;
      break;
    case 9:
      result = 113;
      break;
    case 0xA:
      result = 119;
      break;
    case 0xB:
      result = 121;
      break;
    case 0xC:
      if (v0[1] | v0[2] | v1)
      {
        if (v1 == 1 && *(v0 + 1) == 0)
        {
          result = 102;
        }

        else if (v1 == 2 && *(v0 + 1) == 0)
        {
          result = 110;
        }

        else if (v1 == 3 && *(v0 + 1) == 0)
        {
          result = 111;
        }

        else if (v1 == 4 && *(v0 + 1) == 0)
        {
          result = 114;
        }

        else if (v1 == 5 && *(v0 + 1) == 0)
        {
          result = 122;
        }

        else if (v1 == 6 && *(v0 + 1) == 0)
        {
          result = 116;
        }

        else if (*(v0 + 1) == 0 && v1 == 7)
        {
          result = 120;
        }

        else
        {
          result = 123;
        }
      }

      else
      {
        result = 100;
      }

      break;
    default:
      return result;
  }

  return result;
}

uint64_t FreeformStoryGenerator.Error.errorDescription.getter()
{
  v1 = *v0;
  switch(*(v0 + 24))
  {
    case 1:
    case 2:
    case 3:
      OUTLINED_FUNCTION_95_0();
      sub_1C755180C();
      OUTLINED_FUNCTION_303();
      OUTLINED_FUNCTION_40_42();
      OUTLINED_FUNCTION_6_9();
      goto LABEL_23;
    case 4:
    case 5:
      OUTLINED_FUNCTION_95_0();
      sub_1C755180C();
      OUTLINED_FUNCTION_303();
      OUTLINED_FUNCTION_10_2();
      v8 = 0xD00000000000002CLL;
LABEL_23:
      MEMORY[0x1CCA5CD70](v8);
      OUTLINED_FUNCTION_138_6();
      v9 = sub_1C7551D8C();
      MEMORY[0x1CCA5CD70](v9);

      MEMORY[0x1CCA5CD70](0x726975716552202CLL, 0xEC000000203A6465);
      OUTLINED_FUNCTION_138_6();
      goto LABEL_24;
    case 6:
      OUTLINED_FUNCTION_95_0();
      sub_1C755180C();
      OUTLINED_FUNCTION_303();
      OUTLINED_FUNCTION_40_42();
      OUTLINED_FUNCTION_6_9();
      MEMORY[0x1CCA5CD70]();
      OUTLINED_FUNCTION_138_6();
      v11 = sub_1C7551D8C();
      MEMORY[0x1CCA5CD70](v11);

      MEMORY[0x1CCA5CD70](0x73412078614D202CLL, 0xEE00203A73746573);
      OUTLINED_FUNCTION_138_6();
      v12 = sub_1C7551D8C();
      MEMORY[0x1CCA5CD70](v12);

      MEMORY[0x1CCA5CD70](0x61522078614D202CLL, 0xED0000203A6F6974);
      goto LABEL_26;
    case 7:
      OUTLINED_FUNCTION_95_0();
      sub_1C755180C();
      OUTLINED_FUNCTION_303();
      OUTLINED_FUNCTION_10_2();
      MEMORY[0x1CCA5CD70](0xD00000000000002CLL);
      OUTLINED_FUNCTION_16_6();
      sub_1C7550F5C();
      MEMORY[0x1CCA5CD70](0x756D6978614D202CLL, 0xEB00000000203A6DLL);
      OUTLINED_FUNCTION_16_6();
LABEL_26:
      sub_1C7550F5C();
      return v19;
    case 8:
    case 9:
      OUTLINED_FUNCTION_95_0();
      sub_1C755180C();
      OUTLINED_FUNCTION_303();
      OUTLINED_FUNCTION_40_42();
      OUTLINED_FUNCTION_6_9();
      MEMORY[0x1CCA5CD70]();
      sub_1C73E69B8(v1);
      return v19;
    case 0xA:
      OUTLINED_FUNCTION_95_0();
      sub_1C755180C();
      OUTLINED_FUNCTION_303();
      OUTLINED_FUNCTION_40_42();
      OUTLINED_FUNCTION_6_9();
      MEMORY[0x1CCA5CD70]();
LABEL_24:
      v10 = sub_1C7551D8C();
      MEMORY[0x1CCA5CD70](v10);

      return v19;
    case 0xB:
      OUTLINED_FUNCTION_95_0();
      sub_1C755180C();
      OUTLINED_FUNCTION_303();
      OUTLINED_FUNCTION_40_42();
      OUTLINED_FUNCTION_6_9();
      MEMORY[0x1CCA5CD70]();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
      sub_1C75519EC();
      return v19;
    case 0xC:
      if (v0[2] | v0[1] | v1)
      {
        if (v1 == 1 && *(v0 + 1) == 0)
        {
          OUTLINED_FUNCTION_60_23();
          return v14 - 19;
        }

        else if (v1 == 2 && *(v0 + 1) == 0)
        {
          return 0x412079654B206F4ELL;
        }

        else if (v1 == 3 && *(v0 + 1) == 0)
        {
          OUTLINED_FUNCTION_60_23();
          return v15 - 27;
        }

        else if (v1 == 4 && *(v0 + 1) == 0)
        {
          OUTLINED_FUNCTION_60_23();
          return v6 - 25;
        }

        else if (v1 == 5 && *(v0 + 1) == 0)
        {
          return 0x79726F7453206F4ELL;
        }

        else if (v1 == 6 && *(v0 + 1) == 0)
        {
          OUTLINED_FUNCTION_10_2();
          return v16 - 28;
        }

        else if (v1 == 7 && *(v0 + 1) == 0)
        {
          OUTLINED_FUNCTION_10_2();
          return v17 - 2;
        }

        else
        {
          OUTLINED_FUNCTION_10_2();
          return v18 + 39;
        }
      }

      else
      {
        OUTLINED_FUNCTION_60_23();
        return v13 - 2;
      }

    default:
      OUTLINED_FUNCTION_95_0();
      sub_1C755180C();

      v19 = 0xD000000000000014;
      v2 = OUTLINED_FUNCTION_0_11();
      MEMORY[0x1CCA5CD70](v2);
      return v19;
  }
}

uint64_t *sub_1C73E8D6C(uint64_t a1, int a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v6 = *result;

    return j__swift_continuation_throwingResume(v6);
  }

  else if (a3)
  {
    v7 = a3;
    OUTLINED_FUNCTION_63();

    return sub_1C6FF5694();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t FreeformStoryGenerator.generateStory(from:storySession:eventRecorder:progressReporter:)()
{
  OUTLINED_FUNCTION_42();
  v1[318] = v0;
  v1[317] = v2;
  v1[316] = v3;
  v1[315] = v4;
  v1[314] = v5;
  v1[313] = v6;
  v7 = type metadata accessor for FreeformStory(0);
  OUTLINED_FUNCTION_76(v7);
  v1[319] = swift_task_alloc();
  v1[320] = swift_task_alloc();
  v1[321] = swift_task_alloc();
  v1[322] = swift_task_alloc();
  v1[323] = swift_task_alloc();
  v8 = sub_1C754F38C();
  v1[324] = v8;
  OUTLINED_FUNCTION_18(v8);
  v1[325] = v9;
  v1[326] = OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_224_2();
  v10 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C73E8F20()
{
  OUTLINED_FUNCTION_75_1();
  __swift_project_boxed_opaque_existential_1(*(v0 + 2528), *(*(v0 + 2528) + 24));
  sub_1C754F1CC();
  *(v0 + 2616) = OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_logger;
  v1 = sub_1C754FEEC();
  sub_1C75511BC();
  v2 = OUTLINED_FUNCTION_72();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_37_0(v4);
    OUTLINED_FUNCTION_8_1();
    _os_log_impl(v5, v6, v7, v8, v9, 2u);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  v10 = *(v0 + 2520);

  v11 = *(v10 + *(type metadata accessor for StoryGenerationSession(0) + 24));
  *(v0 + 2624) = v11;
  if (v11)
  {
    type metadata accessor for FreeformStoryDiagnosticsGenerator();
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
  }

  else
  {
    v12 = 0;
  }

  *(v0 + 2632) = v12;
  v13 = qword_1EDD0A988;

  if (v13 != -1)
  {
    OUTLINED_FUNCTION_30_0(&qword_1EDD0A988);
  }

  if (!byte_1EC218F88)
  {
    if (v11)
    {
      OUTLINED_FUNCTION_10_2();
      v28 = OUTLINED_FUNCTION_178_3();
      sub_1C7161CDC(v28, v29);
    }

    v30 = sub_1C754FEEC();
    sub_1C75511BC();
    v31 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_92_0(v33);
      OUTLINED_FUNCTION_39();
      _os_log_impl(v34, v35, v36, v37, v38, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    v39 = *(v0 + 2512);

    memcpy((v0 + 1232), v39, 0x130uLL);
    *(v0 + 1602) = 0;
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    *(v0 + 2640) = v40;
    *v40 = v41;
    v40[1] = sub_1C73E94C4;
    OUTLINED_FUNCTION_243_3();
    goto LABEL_20;
  }

  if (byte_1EC218F88 == 1)
  {
    if (v11)
    {
      OUTLINED_FUNCTION_10_2();
      v14 = OUTLINED_FUNCTION_178_3();
      sub_1C7161CDC(v14, v15);
    }

    v16 = sub_1C754FEEC();
    sub_1C75511BC();
    v17 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_92_0(v19);
      OUTLINED_FUNCTION_39();
      _os_log_impl(v20, v21, v22, v23, v24, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    v25 = *(v0 + 2512);

    memcpy((v0 + 928), v25, 0x130uLL);
    *(v0 + 1601) = 1;
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    *(v0 + 2656) = v26;
    *v26 = v27;
    v26[1] = sub_1C73E9B58;
    OUTLINED_FUNCTION_243_3();
LABEL_20:
    OUTLINED_FUNCTION_88_0();

    return FreeformStoryGenerator.generateMultiStory(from:pipelineType:storySession:diagnosticsGenerator:eventRecorder:progressReporter:)();
  }

  v44 = *(v0 + 2544) + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_configuration;
  if (*(v44 + 73) == 96 || *(*(v0 + 208) + 16) < *v44)
  {
    sub_1C75504FC();

    v45 = sub_1C754FEEC();
    v46 = sub_1C75511BC();
    v47 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v47, v48))
    {
      OUTLINED_FUNCTION_11_3();
      v49 = swift_slowAlloc();
      OUTLINED_FUNCTION_29_34(v49, 3.8521e-34);
      *(v49 + 12) = 2048;
      *(v49 + 14) = *v44;

      _os_log_impl(&dword_1C6F5C000, v45, v46, "Not enough storytelling assets to use the storyteller (%ld < %ld), falling back to LastResort", v49, 0x16u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {
    }

    memcpy((v0 + 624), *(v0 + 2512), 0x130uLL);
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    *(v0 + 2672) = v50;
    *v50 = v51;
    v50[1] = sub_1C73EA1EC;
    OUTLINED_FUNCTION_88_0();

    return sub_1C73ED760(v52, v53, v54, v55, v56);
  }

  else
  {
    if (v11)
    {
      OUTLINED_FUNCTION_10_2();
      v58 = OUTLINED_FUNCTION_178_3();
      sub_1C7161CDC(v58, v59);
    }

    v60 = sub_1C754FEEC();
    sub_1C75511BC();
    v61 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_92_0(v63);
      OUTLINED_FUNCTION_39();
      _os_log_impl(v64, v65, v66, v67, v68, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    v69 = *(v0 + 2512);

    memcpy((v0 + 320), v69, 0x130uLL);
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    *(v0 + 2688) = v70;
    *v70 = v71;
    v70[1] = sub_1C73EA398;
    OUTLINED_FUNCTION_88_0();

    return sub_1C73EDC64();
  }
}

uint64_t sub_1C73E94C4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 2648) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C73E9B58()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 2664) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C73EA1EC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 2680) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C73EA2E4()
{
  OUTLINED_FUNCTION_123();

  OUTLINED_FUNCTION_32_37();
  v0 = OUTLINED_FUNCTION_8_83();
  v1(v0);

  OUTLINED_FUNCTION_25();

  return v2();
}

uint64_t sub_1C73EA398()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 2696) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C73EB474(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (*a9)(uint64_t), uint64_t (*a10)(uint64_t))
{
  a9(a1);
  v11 = objc_allocWithZone(MEMORY[0x1E69788E0]);
  sub_1C75504FC();
  v12 = a2;
  sub_1C75504FC();
  sub_1C75504FC();
  v13 = OUTLINED_FUNCTION_66_4();
  return a10(v13);
}

uint64_t sub_1C73EB534()
{
  OUTLINED_FUNCTION_42();
  v1[197] = v0;
  v1[196] = v2;
  v1[195] = v3;
  v1[194] = v4;
  v1[193] = v5;
  v1[192] = v6;
  v7 = sub_1C754DFFC();
  v1[198] = v7;
  OUTLINED_FUNCTION_18(v7);
  v1[199] = v8;
  v1[200] = OUTLINED_FUNCTION_77();
  v9 = type metadata accessor for StoryMusicCuration(0);
  OUTLINED_FUNCTION_76(v9);
  v1[201] = OUTLINED_FUNCTION_77();
  v10 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C73EB968()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 1680) = v0;

  if (v0)
  {

    sub_1C6FB5454(v3 + 1264);
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C73EBA84(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t __dst, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t *a46, uint64_t a47, uint64_t a48)
{
  OUTLINED_FUNCTION_160_6();
  a47 = v49;
  a48 = v50;
  OUTLINED_FUNCTION_207_2();
  a46 = v48;
  v51 = *(v48 + 1616);
  v52 = *(v48 + 1520);
  v53 = *(v48 + 1528);
  v54 = *(v51 + 16);
  v55 = MEMORY[0x1E69E7CC0];
  if (v54)
  {
    __dst = MEMORY[0x1E69E7CC0];
    sub_1C716D9B8(0, v54, 0);
    v55 = __dst;
    v56 = (v51 + 32);
    do
    {
      memcpy((v48 + 912), v56, 0x68uLL);
      sub_1C6FC061C(v48 + 912, v48 + 1016);
      __dst = v55;
      v58 = *(v55 + 16);
      v57 = *(v55 + 24);
      if (v58 >= v57 >> 1)
      {
        v59 = OUTLINED_FUNCTION_15(v57);
        sub_1C716D9B8(v59, v58 + 1, 1);
        v55 = __dst;
      }

      *(v55 + 16) = v58 + 1;
      memcpy((v55 + 104 * v58 + 32), (v48 + 912), 0x68uLL);
      v56 += 128;
      --v54;
    }

    while (v54);
  }

  v60 = (v48 + 1264);
  v61 = *(v48 + 1680);
  static FreeformStoryChapterGenerator.storyAssets(from:photoLibrary:)(v55, *(v48 + 1632));
  *(v48 + 1688) = v61;
  v63 = *(v48 + 1616);
  v64 = *(v48 + 1608);
  if (v61)
  {
    v65 = *(v48 + 1648);
    v66 = *(v48 + 1568);

    sub_1C6FB5454(v48 + 1264);

    OUTLINED_FUNCTION_0_172();
    sub_1C73FED84(v64, v67);
    sub_1C754F2FC();
    OUTLINED_FUNCTION_3();
    (*(v68 + 8))(v66);

    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_188_1();

    return v70(v69, v70, v71, v72, v73, v74, v75, v76, a9, a10, a11, a12, a13, a14, a15, a16, a17, __dst, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40);
  }

  else
  {
    v111 = v52;
    v112 = *(v48 + 1656);
    v78 = *(v48 + 1600);
    v79 = *(v48 + 1592);
    v108 = *(v48 + 1584);
    v109 = v62;
    v80 = *(v48 + 1544);
    v110 = v53;
    v81 = *(v48 + 1536);

    v82 = *(v80 + 41);
    v107 = *(v80 + 40);
    v83 = *(v48 + 1280);
    *(v48 + 1392) = *v60;
    *(v48 + 1408) = v83;
    v84 = *(v48 + 1312);
    *(v48 + 1424) = *(v48 + 1296);
    *(v48 + 1440) = v84;
    v106 = type metadata accessor for FreeformStory(0);
    OUTLINED_FUNCTION_5_90();
    sub_1C73FE764(v64, v81 + v85, v86);
    v105 = *v80;
    sub_1C6FDE928(v48 + 1264, v48 + 1456);
    sub_1C75504FC();
    sub_1C754DFEC();
    v87 = sub_1C754DF8C();
    v89 = v88;
    (*(v79 + 8))(v78, v108);
    *v81 = v107;
    *(v81 + 8) = v82;
    *(v81 + 16) = v63;
    v90 = *(v48 + 1392);
    v91 = *(v48 + 1408);
    v92 = *(v48 + 1424);
    *(v81 + 72) = *(v48 + 1440);
    *(v81 + 56) = v92;
    *(v81 + 40) = v91;
    *(v81 + 24) = v90;
    *(v81 + 88) = v111;
    *(v81 + 96) = v110;
    *(v81 + 104) = v109;
    *(v81 + 112) = v87;
    *(v81 + 120) = v89;
    *(v81 + *(v106 + 44)) = v105;
    if (v112)
    {
      v93 = *(v48 + 1656);
      OUTLINED_FUNCTION_183_3((v48 + 1120));
      v94 = *(v48 + 1120);
      v95 = *(v48 + 1280);
      *(v48 + 776) = *v60;
      *(v48 + 792) = v95;
      v96 = *(v48 + 1312);
      *(v48 + 808) = *(v48 + 1296);
      *(v48 + 824) = v96;
      *(v48 + 768) = v94;
      sub_1C73FEBA4(v48 + 768);
      memcpy(&__dst, (v48 + 768), 0x90uLL);

      sub_1C6FB52D4(v48 + 1120, v48 + 1192);
      sub_1C739F768(&__dst, v93);

      memcpy((v48 + 624), &__dst, 0x90uLL);
      sub_1C73A1F3C(v48 + 624);
    }

    else
    {
      sub_1C6FB5454(v48 + 1264);
    }

    OUTLINED_FUNCTION_148_8();
    v97 = swift_task_alloc();
    *(v48 + 1696) = v97;
    *v97 = v48;
    v97[1] = sub_1C73EBE48;
    OUTLINED_FUNCTION_61_3(*(v48 + 1536));
    OUTLINED_FUNCTION_188_1();

    return sub_1C73F5A88(v98, v99, v100, v101, v102, v103);
  }
}

uint64_t sub_1C73EBE48()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C73EBF2C()
{
  OUTLINED_FUNCTION_49_0();
  v1 = v0[211];
  sub_1C754F2EC();
  v2 = v0[206];
  v3 = v0[201];
  if (v1)
  {
    v4 = v0[192];

    OUTLINED_FUNCTION_1_129();
    sub_1C73FED84(v4, v5);
    OUTLINED_FUNCTION_0_172();
    sub_1C73FED84(v3, v6);

    OUTLINED_FUNCTION_6_0();
  }

  else
  {

    OUTLINED_FUNCTION_0_172();
    sub_1C73FED84(v3, v8);

    OUTLINED_FUNCTION_25();
  }

  return v7();
}

uint64_t sub_1C73EBFFC()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 1608);
  v2 = *(v0 + 1568);

  OUTLINED_FUNCTION_0_172();
  sub_1C73FED84(v1, v3);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v4 + 8))(v2);

  OUTLINED_FUNCTION_43();

  return v5();
}

BOOL static FreeformStoryGenerator.Error.~= infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = 101;
  switch(*(a1 + 24))
  {
    case 1:
      v6 = 103;
      break;
    case 2:
      v6 = 104;
      break;
    case 3:
      v6 = 105;
      break;
    case 4:
      v6 = 106;
      break;
    case 5:
      v6 = 107;
      break;
    case 6:
      v6 = 108;
      break;
    case 7:
      v6 = 109;
      break;
    case 8:
      v6 = 117;
      break;
    case 9:
      v6 = 113;
      break;
    case 0xA:
      v6 = 119;
      break;
    case 0xB:
      v6 = 121;
      break;
    case 0xC:
      if (a1[1] | a1[2] | v2)
      {
        if (v2 == 1 && *(a1 + 1) == 0)
        {
          v6 = 102;
        }

        else if (v2 == 2 && *(a1 + 1) == 0)
        {
          v6 = 110;
        }

        else if (v2 == 3 && *(a1 + 1) == 0)
        {
          v6 = 111;
        }

        else if (v2 == 4 && *(a1 + 1) == 0)
        {
          v6 = 114;
        }

        else if (v2 == 5 && *(a1 + 1) == 0)
        {
          v6 = 122;
        }

        else if (v2 == 6 && *(a1 + 1) == 0)
        {
          v6 = 116;
        }

        else
        {
          v14 = *(a1 + 1) == 0 && v2 == 7;
          v6 = 123;
          if (v14)
          {
            v6 = 120;
          }
        }
      }

      else
      {
        v6 = 100;
      }

      break;
    default:
      break;
  }

  v9 = 101;
  switch(*(a2 + 24))
  {
    case 1:
      v9 = 103;
      break;
    case 2:
      v9 = 104;
      break;
    case 3:
      v9 = 105;
      break;
    case 4:
      v9 = 106;
      break;
    case 5:
      v9 = 107;
      break;
    case 6:
      v9 = 108;
      break;
    case 7:
      v9 = 109;
      break;
    case 8:
      v9 = 117;
      break;
    case 9:
      v9 = 113;
      break;
    case 0xA:
      v9 = 119;
      break;
    case 0xB:
      v9 = 121;
      break;
    case 0xC:
      v10 = v5 | v4;
      if (v5 | v4 | v3)
      {
        if (v3 == 1 && v10 == 0)
        {
          v9 = 102;
        }

        else if (v3 == 2 && v10 == 0)
        {
          v9 = 110;
        }

        else if (v3 != 3 || v10)
        {
          if (v3 != 4 || v10)
          {
            if (v3 != 5 || v10)
            {
              if (v3 != 6 || v10)
              {
                if (v10)
                {
                  v15 = 0;
                }

                else
                {
                  v15 = v3 == 7;
                }

                if (v15)
                {
                  v9 = 120;
                }

                else
                {
                  v9 = 123;
                }
              }

              else
              {
                v9 = 116;
              }
            }

            else
            {
              v9 = 122;
            }
          }

          else
          {
            v9 = 114;
          }
        }

        else
        {
          v9 = 111;
        }
      }

      else
      {
        v9 = 100;
      }

      break;
    default:
      return v6 == v9;
  }

  return v6 == v9;
}

uint64_t FreeformStoryGenerator.title(from:storyElements:curatedChapters:keyAssetUUID:diagnosticContext:eventRecorder:progressReporter:)()
{
  OUTLINED_FUNCTION_42();
  v1[121] = v0;
  v1[120] = v2;
  v1[119] = v3;
  v1[118] = v4;
  v1[117] = v5;
  v1[116] = v6;
  v1[115] = v7;
  v1[114] = v8;
  v1[122] = *v0;
  OUTLINED_FUNCTION_266_3(v8, v9);
  v10 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C73EC3AC()
{
  v74 = v0;
  v1 = 0;
  v2 = *(v0 + 920);
  v3 = v2 + 32;
  v4 = MEMORY[0x1E69E7CC0];
  v5 = &selRef_clsSceneClassifications;
  v6 = *(v2 + 16);
  v7 = &qword_1C756AD90;
  while (2)
  {
    *(v0 + 984) = v4;
    v8 = v3;
    v9 = (v3 + (v1 << 7));
    for (i = v1; ; ++i)
    {
      if (v6 == i)
      {
        if (qword_1EDD0A988 == -1)
        {
          goto LABEL_41;
        }

        goto LABEL_69;
      }

      if (i >= v6)
      {
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        OUTLINED_FUNCTION_30_0(&qword_1EDD0A988);
LABEL_41:
        LOBYTE(v73[0]) = byte_1EC218F88;
        if (static FreeformStoryGenerator.usingFallbackTitle(for:)(v73))
        {
          if (*(v0 + 944))
          {
            OUTLINED_FUNCTION_10_2();
            sub_1C7161CDC(0xD00000000000002ALL, v36);
          }

          OUTLINED_FUNCTION_139_1(v73);
          static FreeformStoryGenerator.generateLastResortTitleForMiniMC(from:storyElements:)(v4);

          sub_1C75504FC();
          v37 = sub_1C754FEEC();
          v38 = sub_1C75511BC();

          if (os_log_type_enabled(v37, v38))
          {
            OUTLINED_FUNCTION_13_3();
            v39 = swift_slowAlloc();
            v40 = OUTLINED_FUNCTION_20_1();
            v73[0] = v40;
            *v39 = 136380675;
            v41 = OUTLINED_FUNCTION_49_3();
            *(v39 + 4) = sub_1C6F765A4(v41, v42, v43);
            _os_log_impl(&dword_1C6F5C000, v37, v38, "Last resort title for MiniMC: %{private}s", v39, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v40);
            OUTLINED_FUNCTION_235();
            MEMORY[0x1CCA5F8E0]();
            OUTLINED_FUNCTION_235();
            MEMORY[0x1CCA5F8E0]();
          }

          v44 = *(v0 + 960);
          sub_1C754F2FC();
          OUTLINED_FUNCTION_3();
          (*(v45 + 8))(v44);
          OUTLINED_FUNCTION_82_0();
          OUTLINED_FUNCTION_49_3();
          OUTLINED_FUNCTION_91_14();

          __asm { BRAA            X3, X16 }
        }

        if (![objc_opt_self() generateOnDeviceTitle])
        {
          OUTLINED_FUNCTION_10_3(*(v0 + 912));
          OUTLINED_FUNCTION_15_3();
          v61 = swift_task_alloc();
          *(v0 + 1016) = v61;
          *v61 = v0;
          v61[1] = sub_1C73ECCA8;
          OUTLINED_FUNCTION_57_0();
          OUTLINED_FUNCTION_91_14();

          __asm { BRAA            X2, X16 }
        }

        v48 = sub_1C6FB6304();
        v49 = 0;
        v50 = MEMORY[0x1E69E7CC0];
LABEL_51:
        v51 = v49;
        while (v48 != v51)
        {
          if (v51 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_68;
          }

          v49 = v51 + 1;
          v52 = sub_1C70CAC04(*(v4 + 8 * v51 + 32));
          v51 = v49;
          if (v53)
          {
            v54 = v52;
            v55 = v53;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_24_0();
              sub_1C6FB1814();
              v50 = v59;
            }

            v57 = *(v50 + 16);
            v56 = *(v50 + 24);
            if (v57 >= v56 >> 1)
            {
              OUTLINED_FUNCTION_15(v56);
              sub_1C6FB1814();
              v50 = v60;
            }

            *(v50 + 16) = v57 + 1;
            v58 = v50 + 16 * v57;
            *(v58 + 32) = v54;
            *(v58 + 40) = v55;
            goto LABEL_51;
          }
        }

        sub_1C706D154();
        *(v0 + 992) = v64;
        OUTLINED_FUNCTION_148_8();
        v65 = swift_task_alloc();
        *(v0 + 1000) = v65;
        *v65 = v0;
        v65[1] = sub_1C73ECB64;
        OUTLINED_FUNCTION_61_3(*(v0 + 912));
        OUTLINED_FUNCTION_91_14();

        return sub_1C73FC114();
      }

      memcpy((v0 + 624), v9, 0x80uLL);
      v1 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_67;
      }

      if ((*(v0 + 736) & 1) == 0)
      {
        break;
      }

LABEL_9:
      v9 += 128;
    }

    v11 = *(v0 + 728);
    sub_1C6FB7BB8(v0 + 624, v0 + 752);
    v12 = [v11 v5[230]];
    if (!v12)
    {
      sub_1C6FBC664(v0 + 624);
      goto LABEL_9;
    }

    v13 = v12;
    sub_1C6F65BE8(0, &qword_1EDD0FA70, 0x1E6978630);
    OUTLINED_FUNCTION_455();
    v14 = sub_1C7550B5C();

    v15 = v14 >> 62;
    v71 = v14;
    if (v14 >> 62)
    {
      v16 = sub_1C75516BC();
    }

    else
    {
      v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v17 = v4 >> 62;
    if (v4 >> 62)
    {
      result = sub_1C75516BC();
    }

    else
    {
      result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v19 = result + v16;
    if (__OFADD__(result, v16))
    {
      __break(1u);
      goto LABEL_71;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v70 = v16;
    if (!result)
    {
      if (!v17)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    if (v17)
    {
LABEL_20:
      sub_1C75516BC();
      goto LABEL_21;
    }

    v20 = v4 & 0xFFFFFFFFFFFFFF8;
    v21 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
    if (v21 < v19)
    {
LABEL_21:
      result = sub_1C75518CC();
      v4 = result;
      v20 = result & 0xFFFFFFFFFFFFFF8;
      v21 = *((result & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
    }

    v22 = v7;
    v23 = *(v20 + 16);
    v24 = v21 - v23;
    v25 = v20 + 8 * v23;
    v69 = v20;
    if (v15)
    {
      v72 = sub_1C75516BC();
      if (!v72)
      {
LABEL_36:

        v5 = &selRef_clsSceneClassifications;
        v3 = v8;
        if (v70 <= 0)
        {
          goto LABEL_37;
        }

        goto LABEL_71;
      }

      result = sub_1C75516BC();
      if (v24 < result)
      {
LABEL_73:
        __break(1u);
        goto LABEL_74;
      }

      v67 = result;
      v68 = v4;
      if (v72 < 1)
      {
        goto LABEL_75;
      }

      sub_1C705575C(&qword_1EDD06A58, &unk_1EC215150, v7);
      for (j = 0; j != v72; ++j)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215150, v22);
        v28 = OUTLINED_FUNCTION_179_4();
        v30 = sub_1C6FDD09C(v28, v29, v71);
        v32 = *v31;
        v30(v0 + 880, 0);
        *(v25 + 32 + 8 * j) = v32;
      }

      v3 = v8;
      v4 = v68;
      v5 = &selRef_clsSceneClassifications;
      v7 = v22;
      v26 = v67;
LABEL_32:

      if (v26 >= v70)
      {
        if (v26 > 0)
        {
          v33 = *(v69 + 16);
          v34 = __OFADD__(v33, v26);
          v35 = v33 + v26;
          if (v34)
          {
LABEL_72:
            __break(1u);
            goto LABEL_73;
          }

          *(v69 + 16) = v35;
        }

LABEL_37:
        sub_1C6FBC664(v0 + 624);
        continue;
      }

LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    break;
  }

  v26 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v26)
  {
    goto LABEL_36;
  }

  if (v24 >= v26)
  {
    swift_arrayInitWithCopy();
    v5 = &selRef_clsSceneClassifications;
    v3 = v8;
    goto LABEL_32;
  }

LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
  return result;
}

uint64_t sub_1C73ECB64()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 1008) = v0;

  if (v0)
  {
    v7 = OUTLINED_FUNCTION_24_1();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_82_0();
    v10 = OUTLINED_FUNCTION_57_0();

    return v11(v10);
  }
}

uint64_t sub_1C73ECCA8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  *v3 = *v1;
  v2[128] = v4;
  v2[129] = v5;
  v2[130] = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C73ECDB0()
{
  v36 = v0;
  v1 = v0[129];
  v2 = v0[128] & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  if (v2)
  {

    v3 = sub_1C754FEEC();
    sub_1C75511BC();
    v4 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_37_0(v6);
      OUTLINED_FUNCTION_8_1();
      _os_log_impl(v7, v8, v9, v10, v11, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    v12 = v0[118];

    if (v12)
    {
      OUTLINED_FUNCTION_10_2();
      sub_1C7161CDC(0xD000000000000031, v13);
    }

    v14 = v0[120];
    sub_1C754F2FC();
    OUTLINED_FUNCTION_3();
    (*(v15 + 8))(v14);
  }

  else
  {

    v16 = sub_1C754FEEC();
    sub_1C75511BC();
    v17 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_37_0(v19);
      OUTLINED_FUNCTION_8_1();
      _os_log_impl(v20, v21, v22, v23, v24, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    v25 = v0[118];

    if (v25)
    {
      sub_1C7161CDC(0xD00000000000003ALL, 0x80000001C75AF300);
    }

    v26 = v0[123];
    v27 = v0[121];
    OUTLINED_FUNCTION_139_1(v35);
    static FreeformStoryGenerator.generateLastResortTitle(from:storyElements:photoLibrary:)(v26, v35, *(v27 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyPhotoLibraryContext));
    v29 = v28;

    if (!v29)
    {
      if (qword_1EC213FB8 != -1)
      {
        OUTLINED_FUNCTION_139_6(&qword_1EC213FB8);
      }

      sub_1C75504FC();
    }

    v30 = v0[120];
    sub_1C754F2FC();
    OUTLINED_FUNCTION_3();
    (*(v31 + 8))(v30);
  }

  OUTLINED_FUNCTION_82_0();
  v32 = OUTLINED_FUNCTION_66_2();

  return v33(v32);
}

uint64_t sub_1C73ED034()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 960);

  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v1);
  OUTLINED_FUNCTION_43();

  return v3();
}

double static FreeformStoryGenerator.Error.assetFetchFailed.getter@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1C75895F0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return result;
}

void static FreeformStoryGenerator.Error.notEnoughStorytellingAssets.getter(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  OUTLINED_FUNCTION_96_16(a1);
}

void static FreeformStoryGenerator.Error.notEnoughChaptersInStory.getter(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  OUTLINED_FUNCTION_96_16(a1);
}

void static FreeformStoryGenerator.Error.notEnoughAssetsPerChapter.getter(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  OUTLINED_FUNCTION_96_16(a1);
}

void static FreeformStoryGenerator.Error.notEnoughStoryAssetsForMontage.getter(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  OUTLINED_FUNCTION_96_16(a1);
}

void static FreeformStoryGenerator.Error.notEnoughCuratedAssetsForStory.getter(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  OUTLINED_FUNCTION_96_16(a1);
}

void static FreeformStoryGenerator.Error.unbalancedChapters.getter(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  OUTLINED_FUNCTION_96_16(a1);
}

void static FreeformStoryGenerator.Error.tooMuchOverlapBetweenChapters.getter(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  OUTLINED_FUNCTION_96_16(a1);
}

void static FreeformStoryGenerator.Error.unexpectedStoryType.getter(void *a1@<X8>)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 33;
  OUTLINED_FUNCTION_96_16(a1);
}

void static FreeformStoryGenerator.Error.deprecatedStoryType.getter(void *a1@<X8>)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 33;
  OUTLINED_FUNCTION_96_16(a1);
}

void sub_1C73ED348()
{
  qword_1EC21B908 = 0;
  unk_1EC21B910 = 0;
  qword_1EC21B900 = MEMORY[0x1E69E7CC0];
  byte_1EC21B918 = 10;
}

id static FreeformStoryGenerator.Error.tooManyChapterCurationFailures.getter()
{
  if (qword_1EC2140C0 != -1)
  {
    swift_once();
  }

  v0 = OUTLINED_FUNCTION_180_4(&qword_1EC21B900);

  return sub_1C7055188(v0, v1, v2, v3);
}

uint64_t sub_1C73ED3D8()
{
  sub_1C6FE0D14();
  result = swift_allocError();
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  *v1 = 2;
  *(v1 + 24) = 12;
  qword_1EC21B928 = 0;
  unk_1EC21B930 = 0;
  qword_1EC21B920 = result;
  byte_1EC21B938 = 11;
  return result;
}

id static FreeformStoryGenerator.Error.failedChapterCurationForImplicitMontage.getter()
{
  if (qword_1EC2140C8 != -1)
  {
    swift_once();
  }

  v0 = OUTLINED_FUNCTION_180_4(&qword_1EC21B920);

  return sub_1C7055188(v0, v1, v2, v3);
}

uint64_t sub_1C73ED4A0(uint64_t a1)
{
  v2 = sub_1C714F460();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1C73ED4DC(uint64_t a1)
{
  v2 = sub_1C714F460();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1C73ED520()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EDD28B68);
  v1 = OUTLINED_FUNCTION_90();
  __swift_project_value_buffer(v1, v2);
  return sub_1C754FEFC();
}

uint64_t sub_1C73ED5B4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t (*a6)(uint64_t))
{
  __swift_mutable_project_boxed_opaque_existential_0(a4, a4[3]);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14_0();
  (*(v11 + 16))(v10 - v9);
  v12 = OUTLINED_FUNCTION_179_4();
  __swift_mutable_project_boxed_opaque_existential_0(v12, v13);
  OUTLINED_FUNCTION_29();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14_0();
  (*(v17 + 16))(v16 - v15);
  v18 = OUTLINED_FUNCTION_66_4();
  v19 = a6(v18);
  __swift_destroy_boxed_opaque_existential_1(a5);
  __swift_destroy_boxed_opaque_existential_1(a4);
  return v19;
}