void *sub_1C7082A30(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1C755065C();
  v5 = [a3 localIdentifierWithUUID_];

  if (!v5)
  {
    return 0;
  }

  sub_1C755068C();
  OUTLINED_FUNCTION_5_5();

  return v4;
}

void sub_1C7082AAC(uint64_t a1, void *a2)
{
  sub_1C6F65BE8(0, &qword_1EDD108E0, 0x1E696AD98);
  v3 = sub_1C7550B3C();

  [a2 setIncludedDetectionTypes_];
}

uint64_t sub_1C7082B30(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a1 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
    return v8;
  }

  v41 = MEMORY[0x1E69E7CC0];
  sub_1C716E25C(0, v7, 0, a4, a5, a6, a7);
  v8 = v41;
  result = sub_1C7117368();
  v12 = result;
  v14 = v13;
  v15 = 0;
  v35 = v7;
  while (1)
  {
    v16 = 0;
    v17 = 1 << *(a1 + 32);
    v18 = (v17 + 63) >> 6;
    v19 = 64;
    if (v18)
    {
      while (1)
      {
        v20 = *(a1 + v19);
        if (v20)
        {
          break;
        }

        v16 -= 64;
        --v18;
        v19 += 8;
        if (!v18)
        {
          goto LABEL_6;
        }
      }

      v21 = __clz(__rbit64(v20)) - v16;
      if (v11)
      {
        goto LABEL_20;
      }
    }

    else
    {
LABEL_6:
      v21 = 1 << *(a1 + 32);
      if (v11)
      {
        goto LABEL_20;
      }
    }

    if (v12 < v21)
    {
      break;
    }

    if (*(a1 + 36) != v14)
    {
      goto LABEL_18;
    }

    if (v12 >= v17)
    {
      goto LABEL_19;
    }

    v37 = v15 + 1;
    v22 = sub_1C7114FD0(v12, v14, 0, a1);
    a2(&v38, v15, v22);

    v27 = v38;
    v28 = v39;
    v29 = v40;
    v41 = v8;
    v31 = *(v8 + 16);
    v30 = *(v8 + 24);
    if (v31 >= v30 >> 1)
    {
      v34 = v39;
      sub_1C716E25C(v30 > 1, v31 + 1, 1, v23, v24, v25, v26);
      v28 = v34;
      v8 = v41;
    }

    *(v8 + 16) = v31 + 1;
    v32 = v8 + 32 * v31;
    *(v32 + 32) = v27;
    *(v32 + 40) = v28;
    *(v32 + 56) = v29;
    result = sub_1C733EECC();
    v12 = result;
    v14 = v33;
    ++v15;
    if (v37 == v35)
    {
      sub_1C6F9ED50(result, v33, v11 & 1);
      return v8;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1C7082D28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a1 + 53);
  if (qword_1EC213D38 != -1)
  {
    OUTLINED_FUNCTION_13_18(&qword_1EC213D38);
  }

  v9 = sub_1C754FF1C();
  v10 = __swift_project_value_buffer(v9, qword_1EC216898);
  (*(*(v9 - 8) + 16))(a4, v10, v9);
  v11 = type metadata accessor for Hastings.TimeBasedClusterer(0);
  *(a4 + v11[5]) = 10;
  *(a4 + v11[6]) = 1202241536;
  v12 = a4 + v11[7];
  v13 = *(a1 + 16);
  *v12 = *a1;
  *(v12 + 16) = v13;
  *(v12 + 32) = *(a1 + 32);
  *(v12 + 45) = *(a1 + 45);
  *(v12 + 53) = v8;
  *(a4 + v11[8]) = a2;
  *(a4 + v11[9]) = a3;
  v14 = sub_1C754FEEC();
  v15 = sub_1C75511BC();
  v16 = OUTLINED_FUNCTION_72();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 16777472;
    v18[4] = v8;
    _os_log_impl(&dword_1C6F5C000, v14, v15, "Initializing clusterer with random seed %hhu", v18, 5u);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  type metadata accessor for Random();
  swift_allocObject();
  Random.init(randomSeed:)(v8);
  v19 = type metadata accessor for AgglomerativeKMeans();
  swift_allocObject();
  result = AgglomerativeKMeans.init(maxNumberOfClusters:distanceBlock:minDistance:random:randomSampler:)();
  v21 = (a4 + v11[10]);
  v21[3] = v19;
  v21[4] = &protocol witness table for KMeans;
  *v21 = result;
  return result;
}

uint64_t sub_1C7082F3C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a2[1];
  v9 = a2[2];
  v8 = a2[3];
  v52 = *(v2 + 32);
  v54 = *(v2 + 56);
  v55 = *a2;
  sub_1C7083C34();
  sub_1C706D154();
  v11 = v10;
  sub_1C7083C34();
  sub_1C706D154();
  v13 = v12;
  sub_1C75504FC();
  sub_1C75504FC();
  v14 = v52;
  v51 = v13;
  v53 = v11;
  v15 = sub_1C708F3B0(v14, v11, v13);
  v49 = v5;
  v50 = v6;
  sub_1C7083C34();
  sub_1C706D154();
  v17 = v16;
  sub_1C75504FC();
  v18 = sub_1C708F1C4(v15, v17, 0.666666667);

  v56 = v55;
  v57 = v7;
  v58 = v9;
  v59 = v8;
  sub_1C7083C34();
  sub_1C706D154();
  v20 = v19;
  sub_1C75504FC();
  v21 = sub_1C708F1C4(v15, v20, 0.666666667);

  v22 = sub_1C7084DD8(v21, v18);
  v23 = *(sub_1C708F59C(v22, sub_1C708FA30, sub_1C708FA30) + 2);

  v24 = sub_1C75504FC();
  v25 = sub_1C708F59C(v24, sub_1C708F944, sub_1C708F944);

  v26 = v25[2];

  if (v23 != v26)
  {

    v36 = v26 < v23;
    if (!v54)
    {
      return v36 & 1;
    }

    v37 = v26 < v23;
LABEL_30:
    v56 = v3;
    v57 = v4;
    v58 = v49;
    v59 = v50;
    sub_1C7084754(v37, &v56);
    return v36 & 1;
  }

  v27 = sub_1C75504FC();
  v28 = COERCE_DOUBLE(sub_1C7424890(v27));
  v30 = v29;

  v31 = 0.0;
  if (v30)
  {
    v32 = 0.0;
  }

  else
  {
    v32 = v28;
  }

  v33 = sub_1C725CBA4(v22);
  v35 = v34;

  if (v35)
  {
    if (v32 != 0.0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    *&v31 = v33 & 0x7FFFFFFFFFFFFFFFLL;
    if (v32 != COERCE_DOUBLE(v33 & 0x7FFFFFFFFFFFFFFFLL))
    {
LABEL_7:

      v36 = v31 < v32;
      if (v54)
      {
        if (v31 >= v32)
        {
          v37 = 64;
        }

        else
        {
          v37 = 65;
        }

        goto LABEL_30;
      }

      return v36 & 1;
    }
  }

  v38 = *(v53 + 16);
  v39 = *(v51 + 16);
  if (v38 != v39)
  {

    v47 = v39 >= v38;
    v36 = v39 < v38;
    if (v54)
    {
      if (v47)
      {
        v37 = 4294967168;
      }

      else
      {
        v37 = 4294967169;
      }

      goto LABEL_30;
    }

    return v36 & 1;
  }

  v40 = sub_1C725CCB0(v53);
  v42 = v41;

  if (!v42 || (v43 = sub_1C725CCB0(v51), v45 = v44, , !v45))
  {

    v36 = 1;
    return v36 & 1;
  }

  if (v40 == v43 && v42 == v45)
  {
    v36 = 0;
  }

  else
  {
    v36 = sub_1C7551DBC();
  }

  if (v54)
  {
    v37 = v36 & 1 | 0xFFFFFFC0;
    goto LABEL_30;
  }

  return v36 & 1;
}

uint64_t sub_1C7083304(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (OUTLINED_FUNCTION_76_4(), (sub_1C7551DBC() & 1) != 0))
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x737465737361 && a2 == 0xE600000000000000;
    if (v6 || (OUTLINED_FUNCTION_76_4(), (sub_1C7551DBC() & 1) != 0))
    {

      return 1;
    }

    else if (a1 == 0xD00000000000001BLL && 0x80000001C759B660 == a2)
    {

      return 2;
    }

    else
    {
      OUTLINED_FUNCTION_76_4();
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

uint64_t sub_1C7083404(char a1)
{
  if (!a1)
  {
    return 25705;
  }

  if (a1 == 1)
  {
    return 0x737465737361;
  }

  return 0xD00000000000001BLL;
}

uint64_t sub_1C7083458@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7083304(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C7083480(uint64_t a1)
{
  v2 = sub_1C7083B2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C70834BC(uint64_t a1)
{
  v2 = sub_1C7083B2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Hastings.Cluster.init(id:assets:eligibleAssetsByFeature:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t Hastings.Cluster.encode(to:)(void *a1)
{
  v4 = type metadata accessor for Hastings.Asset(0);
  v5 = OUTLINED_FUNCTION_18(v4);
  v85 = v6;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14_0();
  v86 = (v8 - v7);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2168B0, &qword_1C75656C0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14_2();
  v91 = v10;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_63_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2168B8, &qword_1C75656C8);
  OUTLINED_FUNCTION_3_0();
  v13 = v12;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v75 - v15;
  v17 = *(v1 + 24);
  v87 = *(v1 + 16);
  v89 = v17;
  v18 = a1[3];
  v19 = a1;
  v21 = v20;
  __swift_project_boxed_opaque_existential_1(v19, v18);
  sub_1C7083B2C();
  sub_1C755200C();
  LOBYTE(v93) = 0;
  v22 = v90;
  sub_1C7551CCC();
  if (v22)
  {
    return (*(v13 + 8))(v16, v21);
  }

  v82 = v13;
  v83 = v2;
  v93 = v87;
  v92 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2168C8, &unk_1C75656D0);
  sub_1C7083B80();
  sub_1C7551D2C();
  v75 = v21;
  v24 = v89;
  v25 = v89 + 64;
  OUTLINED_FUNCTION_11();
  v28 = v27 & v26;
  v30 = (v29 + 63) >> 6;
  sub_1C75504FC();
  v31 = 0;
  v32 = MEMORY[0x1E69E7CC8];
  v33 = v88;
  v79 = v25;
  v80 = 0;
  v34 = v83;
  v78 = v30;
  v76 = v16;
  if (!v28)
  {
    goto LABEL_5;
  }

  while (1)
  {
    v90 = v32;
LABEL_9:
    v84 = v28;
    v87 = v31;
    v36 = __clz(__rbit64(v28)) | (v31 << 6);
    v77 = type metadata accessor for Hastings.Feature(0);
    OUTLINED_FUNCTION_12();
    v38 = *(v37 + 72);
    OUTLINED_FUNCTION_2_19();
    sub_1C708CA24();
    v39 = *(*(v24 + 56) + 8 * v36);
    *(v34 + *(v33 + 48)) = v39;
    sub_1C6FD7F70();
    sub_1C75504FC();

    v44 = *(v39 + 16);
    if (v44)
    {
      v81 = v38;
      v93 = MEMORY[0x1E69E7CC0];
      sub_1C6F7ED9C(0, v44, 0, v40, v41, v42, v43);
      v45 = v93;
      v46 = v86;
      OUTLINED_FUNCTION_15_4();
      v48 = v39 + v47;
      v50 = *(v49 + 72);
      do
      {
        OUTLINED_FUNCTION_3_22();
        OUTLINED_FUNCTION_90();
        sub_1C708CA24();
        v51 = *v46;
        v52 = v46[1];
        sub_1C75504FC();
        OUTLINED_FUNCTION_1_30();
        sub_1C7091C1C(v46, v53);
        v93 = v45;
        v55 = *(v45 + 16);
        v54 = *(v45 + 24);
        if (v55 >= v54 >> 1)
        {
          v57 = OUTLINED_FUNCTION_15(v54);
          sub_1C6F7ED9C(v57, v55 + 1, 1, v58, v59, v60, v61);
          v46 = v86;
          v45 = v93;
        }

        *(v45 + 16) = v55 + 1;
        v56 = v45 + 16 * v55;
        *(v56 + 32) = v51;
        *(v56 + 40) = v52;
        v48 += v50;
        --v44;
      }

      while (v44);
      v16 = v76;
      v33 = v88;
    }

    else
    {
      v45 = MEMORY[0x1E69E7CC0];
    }

    v62 = v90;
    swift_isUniquelyReferenced_nonNull_native();
    v93 = v62;
    sub_1C6FC27A8();
    OUTLINED_FUNCTION_82_4();
    if (v65)
    {
      break;
    }

    v66 = v63;
    v67 = v64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2168E0, &qword_1C75891A0);
    if (sub_1C7551A2C())
    {
      v68 = v91;
      v69 = sub_1C6FC27A8();
      v24 = v89;
      if ((v67 & 1) != (v70 & 1))
      {
        goto LABEL_31;
      }

      v66 = v69;
    }

    else
    {
      v68 = v91;
      v24 = v89;
    }

    v32 = v93;
    if (v67)
    {
      *(*(v93 + 56) + 8 * v66) = v45;
    }

    else
    {
      OUTLINED_FUNCTION_1_3(v93 + 8 * (v66 >> 6));
      OUTLINED_FUNCTION_2_19();
      sub_1C708CA24();
      *(*(v32 + 56) + 8 * v66) = v45;
      v71 = *(v32 + 16);
      v65 = __OFADD__(v71, 1);
      v72 = v71 + 1;
      if (v65)
      {
        goto LABEL_30;
      }

      *(v32 + 16) = v72;
    }

    v28 = (v84 - 1) & v84;
    OUTLINED_FUNCTION_0_32();
    sub_1C7091C1C(v68, v73);
    v34 = v83;
    sub_1C6FD7FC8(v83, &qword_1EC2168B0, &qword_1C75656C0);
    v25 = v79;
    v30 = v78;
    v31 = v87;
    if (!v28)
    {
LABEL_5:
      while (1)
      {
        v35 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          break;
        }

        if (v35 >= v30)
        {

          v93 = v32;
          v92 = 2;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2168E8, &unk_1C75656E0);
          sub_1C708CA7C();
          v74 = v75;
          sub_1C7551D2C();
          (*(v82 + 8))(v16, v74);
        }

        v28 = *(v25 + 8 * v35);
        ++v31;
        if (v28)
        {
          v90 = v32;
          v31 = v35;
          goto LABEL_9;
        }
      }

      __break(1u);
      break;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

unint64_t sub_1C7083B2C()
{
  result = qword_1EC2168C0;
  if (!qword_1EC2168C0)
  {
    result = swift_getWitnessTable(byte_1C7565A30, &_s7ClusterV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC2168C0);
  }

  return result;
}

unint64_t sub_1C7083B80()
{
  result = qword_1EC2168D0;
  if (!qword_1EC2168D0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC2168C8, &unk_1C75656D0);
    v4[0] = sub_1C7091C74(&qword_1EC2168D8, type metadata accessor for Hastings.Asset, protocol conformance descriptor for Hastings.Asset);
    result = swift_getWitnessTable(MEMORY[0x1E69E6300], v3, v4);
    atomic_store(result, &qword_1EC2168D0);
  }

  return result;
}

void sub_1C7083C34()
{
  OUTLINED_FUNCTION_33();
  v1 = type metadata accessor for Hastings.Asset(0);
  v2 = OUTLINED_FUNCTION_18(v1);
  v4 = v3;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_14_0();
  v7 = (v6 - v5);
  v8 = *(v0 + 16);
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = OUTLINED_FUNCTION_32_8();
    sub_1C6F7ED9C(v10, v11, v12, v13, v14, v15, v16);
    OUTLINED_FUNCTION_191();
    v18 = v8 + v17;
    v19 = *(v4 + 72);
    do
    {
      sub_1C708CA24();
      v21 = *v7;
      v20 = v7[1];
      sub_1C75504FC();
      OUTLINED_FUNCTION_1_30();
      sub_1C7091C1C(v7, v22);
      v28 = *(v30 + 16);
      v27 = *(v30 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_1C6F7ED9C(v27 > 1, v28 + 1, 1, v23, v24, v25, v26);
      }

      *(v30 + 16) = v28 + 1;
      v29 = v30 + 16 * v28;
      *(v29 + 32) = v21;
      *(v29 + 40) = v20;
      v18 += v19;
      --v9;
    }

    while (v9);
  }

  OUTLINED_FUNCTION_25_0();
}

uint64_t sub_1C7083DA0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x80000001C759B6A0 == a2;
  if (v3 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E695774736562 && a2 == 0xE700000000000000;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x5372657473756C63 && a2 == 0xEB00000000657A69;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x4955557465737361 && a2 == 0xE900000000000044)
      {

        return 3;
      }

      else
      {
        v9 = sub_1C7551DBC();

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

uint64_t sub_1C7083F0C(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_106();
  MEMORY[0x1CCA5E460](a1);
  return sub_1C7551FAC();
}

unint64_t sub_1C7083F4C(char a1)
{
  result = 0x6E695774736562;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x5372657473756C63;
      break;
    case 3:
      result = 0x4955557465737361;
      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

uint64_t sub_1C7083FE0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E69577473726966 && a2 == 0xE900000000000073)
  {

    v4 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_76_4();
    v3 = sub_1C7551DBC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C708405C(void *a1, int a2)
{
  v38 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216958, &qword_1C7565A80);
  OUTLINED_FUNCTION_3_0();
  v36 = v4;
  v37 = v3;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v5);
  v35 = &v29 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216960, &qword_1C7565A88);
  OUTLINED_FUNCTION_3_0();
  v33 = v8;
  v34 = v7;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v9);
  v32 = &v29 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216968, &qword_1C7565A90);
  OUTLINED_FUNCTION_3_0();
  v30 = v12;
  v31 = v11;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216970, &qword_1C7565A98);
  OUTLINED_FUNCTION_3_0();
  v29 = v17;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v29 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216978, &qword_1C7565AA0);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v21);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7091764();
  v22 = v38;
  sub_1C755200C();
  switch(v22 >> 6)
  {
    case 1:
      v40 = 1;
      sub_1C7091860();
      OUTLINED_FUNCTION_55_7(&_s17ClusterComparatorV18DiagnosticReporterC6ReasonO17BestWinCodingKeysON, &v40);
      v16 = v31;
      sub_1C7551CDC();
      v23 = *(v30 + 8);
      v24 = v15;
      goto LABEL_7;
    case 2:
      v41 = 2;
      sub_1C709180C();
      OUTLINED_FUNCTION_55_7(&_s17ClusterComparatorV18DiagnosticReporterC6ReasonO21ClusterSizeCodingKeysON, &v41);
      sub_1C7551CDC();
      goto LABEL_5;
    case 3:
      v42 = 3;
      sub_1C70917B8();
      OUTLINED_FUNCTION_55_7(&_s17ClusterComparatorV18DiagnosticReporterC6ReasonO19AssetUUIDCodingKeysON, &v42);
      sub_1C7551CDC();
LABEL_5:
      v24 = OUTLINED_FUNCTION_35_0();
      break;
    default:
      v39 = 0;
      sub_1C70918B4();
      OUTLINED_FUNCTION_55_7(&_s17ClusterComparatorV18DiagnosticReporterC6ReasonO29NumberOfBetterRanksCodingKeysON, &v39);
      sub_1C7551CDC();
      v23 = *(v29 + 8);
      v24 = v20;
LABEL_7:
      v25 = v16;
      break;
  }

  v23(v24, v25);
  v26 = OUTLINED_FUNCTION_94_2();
  return v27(v26);
}

uint64_t sub_1C70844B0(uint64_t a1)
{
  v2 = sub_1C70917B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C70844EC(uint64_t a1)
{
  v2 = sub_1C70917B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7084528(uint64_t a1)
{
  v2 = sub_1C7091860();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7084564(uint64_t a1)
{
  v2 = sub_1C7091860();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C70845A0(uint64_t a1)
{
  v2 = sub_1C709180C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C70845DC(uint64_t a1)
{
  v2 = sub_1C709180C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7084620@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7083DA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C7084648(uint64_t a1)
{
  v2 = sub_1C7091764();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7084684(uint64_t a1)
{
  v2 = sub_1C7091764();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C70846C0(uint64_t a1)
{
  v2 = sub_1C70918B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C70846FC(uint64_t a1)
{
  v2 = sub_1C70918B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7084754(uint64_t a1, void *a2)
{
  sub_1C75504FC();
  MEMORY[0x1CCA5CD70](120, 0xE100000000000000);
  v3 = OUTLINED_FUNCTION_216();
  MEMORY[0x1CCA5CD70](v3);
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v2 + 16);
  sub_1C6FC7FC8();
  *(v2 + 16) = v5;

  return swift_endAccess();
}

uint64_t sub_1C7084814(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x80000001C759B5C0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C7551DBC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C7084894()
{
  OUTLINED_FUNCTION_106();
  MEMORY[0x1CCA5E460](0);
  return sub_1C7551FAC();
}

uint64_t sub_1C70848F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7084814(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C708491C(uint64_t a1)
{
  v2 = sub_1C7091A34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7084958(uint64_t a1)
{
  v2 = sub_1C7091A34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7084994()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1C70849CC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2169D0, &qword_1C7565AB8);
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_85_4();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7091A34();
  sub_1C755200C();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2169E0, &unk_1C7565AC0);
  sub_1C7091A88();
  sub_1C7551D2C();
  return (*(v5 + 8))(v1, v3);
}

void sub_1C7084B50(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = 0;
  v30 = *result;
  v31 = *(*result + 16);
  v29 = *result + 32;
  v7 = a2 + 56;
  v33 = a3 + 56;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
LABEL_2:
    if (v6 == v31)
    {
      *a4 = v8;
      return;
    }

    if (v6 >= *(v30 + 16))
    {
      break;
    }

    v9 = (v29 + 24 * v6);
    v11 = *v9;
    v10 = v9[1];
    v12 = v9[2];
    ++v6;
    if (*(a2 + 16))
    {
      sub_1C7551F3C();
      swift_bridgeObjectRetain_n();
      sub_1C75505AC();
      v13 = sub_1C7551FAC();
      v14 = ~(-1 << *(a2 + 32));
      while (1)
      {
        v15 = v13 & v14;
        if (((*(v7 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          break;
        }

        v16 = (*(a2 + 48) + 16 * v15);
        if (*v16 != v11 || v16[1] != v10)
        {
          v18 = sub_1C7551DBC();
          v13 = v15 + 1;
          if ((v18 & 1) == 0)
          {
            continue;
          }
        }

LABEL_22:

        v32 = v6;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C716E1F0(0, *(v8 + 16) + 1, 1);
        }

        v26 = *(v8 + 16);
        v25 = *(v8 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_1C716E1F0(v25 > 1, v26 + 1, 1);
        }

        *(v8 + 16) = v26 + 1;
        v27 = (v8 + 24 * v26);
        v27[4] = v11;
        v27[5] = v10;
        v27[6] = v12;
        v6 = v32;
        goto LABEL_2;
      }
    }

    else
    {
      swift_bridgeObjectRetain_n();
    }

    if (*(a3 + 16))
    {
      sub_1C7551F3C();
      sub_1C75505AC();
      v19 = sub_1C7551FAC();
      v20 = ~(-1 << *(a3 + 32));
      while (1)
      {
        v21 = v19 & v20;
        if (((*(v33 + (((v19 & v20) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v19 & v20)) & 1) == 0)
        {
          break;
        }

        v22 = (*(a3 + 48) + 16 * v21);
        if (*v22 != v11 || v22[1] != v10)
        {
          v24 = sub_1C7551DBC();
          v19 = v21 + 1;
          if ((v24 & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_22;
      }
    }

    swift_bridgeObjectRelease_n();
  }

  __break(1u);
}

uint64_t sub_1C7084DD8(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_1C708FF78(a1, sub_1C725130C, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

void sub_1C7084E5C(uint64_t *a1@<X0>, uint64_t a2@<X1>, double *a3@<X8>, long double a4@<D0>)
{
  v4 = a3;
  v5 = *a1;
  v6 = *(*a1 + 16);
  if (v6)
  {
    v31 = MEMORY[0x1E69E7CC0];
    sub_1C716DA70(0, v6, 0);
    v9 = 0;
    v29 = v5;
    v30 = *(v5 + 16);
    v28 = v5 + 32;
    v10 = v31;
    while (v9 != v30)
    {
      if (v9 >= *(v5 + 16))
      {
        goto LABEL_26;
      }

      v11 = 0.0;
      if (*(a2 + 16))
      {
        v12 = v6;
        v13 = (v28 + 24 * v9);
        v15 = *v13;
        v14 = v13[1];
        sub_1C7551F3C();
        sub_1C75504FC();
        sub_1C75505AC();
        v16 = sub_1C7551FAC();
        v17 = ~(-1 << *(a2 + 32));
        while (1)
        {
          v18 = v16 & v17;
          if (((*(a2 + 56 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
          {
            break;
          }

          v19 = (*(a2 + 48) + 16 * v18);
          if (*v19 != v15 || v19[1] != v14)
          {
            v21 = sub_1C7551DBC();
            v16 = v18 + 1;
            if ((v21 & 1) == 0)
            {
              continue;
            }
          }

          v11 = pow(a4, v9);
          goto LABEL_15;
        }

LABEL_15:
        v6 = v12;
        v5 = v29;
      }

      v23 = *(v31 + 16);
      v22 = *(v31 + 24);
      v24 = v23 + 1;
      if (v23 >= v22 >> 1)
      {
        sub_1C716DA70(v22 > 1, v23 + 1, 1);
      }

      ++v9;
      *(v31 + 16) = v24;
      *(v31 + 8 * v23 + 32) = v11;
      if (v9 == v6)
      {
        v4 = a3;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
    v24 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v24)
    {
LABEL_21:
      v25 = 0.0;
      v26 = 32;
      do
      {
        v25 = v25 + *(v10 + v26);
        v26 += 8;
        --v24;
      }

      while (v24);
    }

    else
    {
      v25 = 0.0;
    }

    *v4 = v25;
  }
}

uint64_t sub_1C7085094()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC216898);
  v1 = __swift_project_value_buffer(v0, qword_1EC216898);
  if (qword_1EC213E88 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EC25B6F0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1C708515C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000019 && 0x80000001C759B630 == a2;
  if (v3 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C43646574726F73 && a2 == 0xEE00737265747375)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C7551DBC();

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

uint64_t sub_1C7085234(char a1)
{
  OUTLINED_FUNCTION_106();
  MEMORY[0x1CCA5E460](a1 & 1);
  return sub_1C7551FAC();
}

uint64_t sub_1C7085274(char a1)
{
  if (a1)
  {
    return 0x6C43646574726F73;
  }

  else
  {
    return 0xD000000000000019;
  }
}

uint64_t sub_1C70852C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C708515C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C70852EC(uint64_t a1)
{
  v2 = sub_1C7091908();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7085328(uint64_t a1)
{
  v2 = sub_1C7091908();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7085364()
{

  return v0;
}

uint64_t sub_1C708538C()
{
  sub_1C7085364();
  OUTLINED_FUNCTION_30();

  return swift_deallocClassInstance();
}

uint64_t sub_1C70853BC(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2169A8, &qword_1C7565AA8);
  OUTLINED_FUNCTION_3_0();
  v7 = v6;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7091908();
  sub_1C755200C();
  v15 = *(v3 + 16);
  HIBYTE(v14) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
  v11 = sub_1C6FC18BC();
  OUTLINED_FUNCTION_54_8(v11);
  if (!v2)
  {
    v15 = *(v3 + 24);
    HIBYTE(v14) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2169B8, &qword_1C7565AB0);
    v12 = sub_1C709195C();
    OUTLINED_FUNCTION_54_8(v12);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1C7085530()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  return result;
}

float sub_1C7085560(uint64_t *a1, uint64_t *a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v6 = *a2;
  __C = v2;
  static FloatVector.- infix(_:_:)(&__C, &v6, v8);
  v3 = *(v8[0] + 16);
  LODWORD(__C) = 2143289344;
  vDSP_svesq((v8[0] + 32), 1, &__C, v3);
  v4 = *&__C;

  return sqrtf(v4);
}

uint64_t Hastings.TimeBasedClusterer.cluster(_:progressReporter:)(uint64_t a1, uint64_t a2)
{
  v98 = a1;
  v6 = type metadata accessor for Hastings.Asset(0);
  v7 = OUTLINED_FUNCTION_18(v6);
  v96 = v8;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_66_9();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v86 - v10;
  v99 = sub_1C754F2FC();
  OUTLINED_FUNCTION_3_0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_206_1();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v86 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v86 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v86 - v22;
  v100 = a2;
  sub_1C754F2CC();
  if (!v3)
  {
    v94 = v4;
    v95 = v11;
    v93 = v2;
    sub_1C754F2BC();
    sub_1C754F2BC();
    v26 = *(v13 + 32);
    v27 = v23;
    v28 = v99;
    v26(v17, v27, v99);
    sub_1C7085D18(v98, v17);
    v31 = v29;
    v86 = v26;
    v87 = v13 + 32;
    v88 = 0;
    v89 = v13;
    v32 = (v97 + *(type metadata accessor for Hastings.TimeBasedClusterer(0) + 28));
    if (*(v32 + 48) == 1)
    {
      v101[0] = *(v32 + 4);
      sub_1C75504FC();
      static Hastings.TimeBasedClusterer.shotlistDrivenClusters(from:shotlist:)(v31, v101, v33, v34, v35, v36, v37, v38, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97);
      a2 = v39;

      if (*(a2 + 16))
      {
        v40 = OUTLINED_FUNCTION_22_16();
        v32(v40, v28);
      }

      else
      {

        v32 = *(v32 + 5);
        v42 = *(v32 + 2);
        v43 = MEMORY[0x1E69E7CC0];
        v92 = v20;
        if (v42)
        {
          v101[0] = MEMORY[0x1E69E7CC0];
          sub_1C716E23C(0, v42, 0);
          v43 = v101[0];
          v32 = (v32 + 32);
          do
          {
            v44 = *v32;
            v101[0] = v43;
            v46 = *(v43 + 16);
            v45 = *(v43 + 24);
            sub_1C75504FC();
            if (v46 >= v45 >> 1)
            {
              sub_1C716E23C(v45 > 1, v46 + 1, 1);
              v43 = v101[0];
            }

            *(v43 + 16) = v46 + 1;
            *(v43 + 8 * v46 + 32) = v44;
            v32 = (v32 + 24);
            --v42;
          }

          while (v42);
          v28 = v99;
        }

        v47 = sub_1C7069D48(v43);

        if (v47)
        {
          if (*(v47 + 16))
          {
            v48 = v28;
            v49 = sub_1C754FEEC();
            v50 = sub_1C75511BC();
            v51 = OUTLINED_FUNCTION_72();
            if (os_log_type_enabled(v51, v52))
            {
              OUTLINED_FUNCTION_96_0();
              v53 = swift_slowAlloc();
              *v53 = 0;
              _os_log_impl(&dword_1C6F5C000, v49, v50, "No shotlist-driven clusters, falling back to only retrieved assets", v53, 2u);
              OUTLINED_FUNCTION_235();
              MEMORY[0x1CCA5F8E0]();
            }

            v54 = 0;
            v91 = *(v98 + 16);
            v90 = MEMORY[0x1E69E7CC0];
            v25 = v48;
LABEL_22:
            v55 = v54;
            while (v55 != v91)
            {
              v56 = v55 + 1;
              v26 = *(v96 + 72);
              OUTLINED_FUNCTION_3_22();
              sub_1C708CA24();
              if (*(v47 + 16))
              {
                v58 = *v95;
                v57 = v95[1];
                sub_1C7551F3C();
                sub_1C75505AC();
                sub_1C7551FAC();
                OUTLINED_FUNCTION_38_7();
                while (1)
                {
                  v60 = v59 & v101;
                  if (((*(v47 + 56 + (((v59 & v101) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v59 & (&vars0 + 88))) & 1) == 0)
                  {
                    break;
                  }

                  v61 = (*(v47 + 48) + 16 * v60);
                  if (*v61 != v58 || v61[1] != v57)
                  {
                    v63 = sub_1C7551DBC();
                    v59 = v60 + 1;
                    if ((v63 & 1) == 0)
                    {
                      continue;
                    }
                  }

                  v54 = v56;
                  OUTLINED_FUNCTION_4_20();
                  OUTLINED_FUNCTION_92_5();
                  sub_1C7091B68();
                  v66 = v90;
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v68 = v66;
                  v102 = v66;
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    v69 = OUTLINED_FUNCTION_90_0();
                    sub_1C716E298(v69, v70, v71);
                    v68 = v102;
                  }

                  v73 = *(v68 + 16);
                  v72 = *(v68 + 24);
                  if (v73 >= v72 >> 1)
                  {
                    v74 = OUTLINED_FUNCTION_15(v72);
                    sub_1C716E298(v74, v73 + 1, 1);
                    v68 = v102;
                  }

                  *(v68 + 16) = v73 + 1;
                  v90 = v68;
                  OUTLINED_FUNCTION_4_20();
                  sub_1C7091B68();
                  v25 = v99;
                  goto LABEL_22;
                }
              }

              OUTLINED_FUNCTION_1_30();
              v64 = OUTLINED_FUNCTION_92_5();
              sub_1C7091C1C(v64, v65);
              v55 = v56;
              v25 = v99;
            }

            v75 = OUTLINED_FUNCTION_216();
            v86(v75);
            v76 = OUTLINED_FUNCTION_173();
            a2 = v97;
            v77 = v88;
            sub_1C7085D18(v76, v78);
            if (!v77)
            {
              a2 = v79;

              OUTLINED_FUNCTION_100_3();
              (*(v26 + 1))(v100, v25);
              return a2;
            }

            v24 = v100;
            v13 = v89;
            goto LABEL_4;
          }
        }

        v80 = sub_1C754FEEC();
        v81 = sub_1C75511BC();
        v82 = OUTLINED_FUNCTION_72();
        if (os_log_type_enabled(v82, v83))
        {
          OUTLINED_FUNCTION_96_0();
          v84 = swift_slowAlloc();
          *v84 = 0;
          _os_log_impl(&dword_1C6F5C000, v80, v81, "No shotlist-driven clusters and no anchor assets, nothing to curate", v84, 2u);
          OUTLINED_FUNCTION_235();
          MEMORY[0x1CCA5F8E0]();
        }

        v85 = OUTLINED_FUNCTION_22_16();
        v32(v85, v28);
        a2 = MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v41 = OUTLINED_FUNCTION_22_16();
      v32(v41, v28);
      a2 = v31;
    }

    v32(v100, v28);
    return a2;
  }

  v25 = v99;
  v24 = v100;
LABEL_4:
  (*(v13 + 8))(v24, v25);
  return a2;
}

void sub_1C7085D18(uint64_t a1, char *a2)
{
  v352 = a1;
  v347 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215148, qword_1C755C6D0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14_2();
  v346 = v8;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_108_0(v12);
  *&v326 = sub_1C754F2FC();
  OUTLINED_FUNCTION_3_0();
  v325 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_108_0(v16);
  v331 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216A10, &unk_1C7565AF0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_108_0(v19);
  v355 = sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  v316 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_130();
  v354 = v24;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_108_0(v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230, &unk_1C7563720);
  v33 = OUTLINED_FUNCTION_76(v32);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_14_2();
  v345 = v34;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_130();
  v350 = v39;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v40);
  v42 = (&v310 - v41);
  v353 = type metadata accessor for Hastings.Asset(0);
  OUTLINED_FUNCTION_3_0();
  v337 = v43;
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_78();
  v47 = v45 - v46;
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_66_9();
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v310 - v50;
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_99_5();
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v310 - v54;
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_206_1();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_63_7();
  v58 = v351;
  sub_1C754F2CC();
  *&v327 = v58;
  if (v58)
  {
    (*(v325 + 8))(a2, v326);
    return;
  }

  v314 = v55;
  v348 = v5;
  v334 = v51;
  v323 = v2;
  v342 = v47;
  v311 = a2;
  v59 = *(v352 + 16);
  i = v59;
  if (v59)
  {
    v344 = v42;
    v60 = *(v353 + 32);
    OUTLINED_FUNCTION_14_17();
    a2 = (v62 + v61);
    v351 = MEMORY[0x1E69E7CC0];
    v64 = *(v63 + 72);
    v65 = v355;
    v339 = v60;
    v338 = v64;
    *&v343 = v3;
    do
    {
      OUTLINED_FUNCTION_3_22();
      sub_1C708CA24();
      v66 = v60;
      v67 = v344;
      sub_1C6FD7F70();
      if (__swift_getEnumTagSinglePayload(v67, 1, v65) == 1)
      {
        sub_1C6FD7FC8(v67, &unk_1EC219230, &unk_1C7563720);
        v68 = *v4;
        v69 = v4[1];
        sub_1C75504FC();
        OUTLINED_FUNCTION_1_30();
        sub_1C7091C1C(v4, v70);
        v71 = v351;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_24_0();
          sub_1C6FB1814();
          v71 = v78;
        }

        v3 = v343;
        v72 = v71;
        v73 = *(v71 + 16);
        v351 = v72;
        v74 = *(v72 + 24);
        if (v73 >= v74 >> 1)
        {
          OUTLINED_FUNCTION_15(v74);
          sub_1C6FB1814();
          v351 = v79;
        }

        v75 = v351;
        *(v351 + 16) = v73 + 1;
        v76 = v75 + 16 * v73;
        *(v76 + 32) = v68;
        *(v76 + 40) = v69;
        v65 = v355;
        v60 = v339;
        v64 = v338;
      }

      else
      {
        OUTLINED_FUNCTION_1_30();
        sub_1C7091C1C(v4, v77);
        sub_1C6FD7FC8(v67, &unk_1EC219230, &unk_1C7563720);
        v3 = v343;
        v60 = v66;
      }

      a2 = &v64[a2];
      --v59;
    }

    while (v59);
  }

  else
  {
    v351 = MEMORY[0x1E69E7CC0];
    v65 = v355;
  }

  v80 = v65;
  if (*(v351 + 16))
  {
    v81 = v351;
    sub_1C75504FC();
    OUTLINED_FUNCTION_52_8();
    v82 = sub_1C754FEEC();
    a2 = sub_1C755119C();

    if (os_log_type_enabled(v82, a2))
    {
      v83 = OUTLINED_FUNCTION_41_0();
      OUTLINED_FUNCTION_98();
      v84 = swift_slowAlloc();
      v357 = v84;
      *v83 = 136315138;
      v85 = MEMORY[0x1CCA5D090](v81, MEMORY[0x1E69E6158]);
      v87 = sub_1C6F765A4(v85, v86, &v357);

      *(v83 + 4) = v87;
      OUTLINED_FUNCTION_56_1();
      _os_log_impl(v88, v89, v90, v91, v83, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v84);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    v92 = *(v335 + *(type metadata accessor for Hastings.TimeBasedClusterer(0) + 36));
    v80 = v355;
    if (v92)
    {
      *(v92 + 16) = v351;
      sub_1C75504FC();
    }
  }

  v93 = 0;
  v339 = MEMORY[0x1E69E7CC0];
  v94 = &unk_1C7563720;
  OUTLINED_FUNCTION_74_3();
  while (i != v93)
  {
    OUTLINED_FUNCTION_3_22();
    sub_1C708CA24();
    v95 = v350;
    sub_1C6FD7F70();
    if (__swift_getEnumTagSinglePayload(v95, 1, v80) == 1)
    {
      OUTLINED_FUNCTION_1_30();
      sub_1C7091C1C(v3, v96);
      v97 = OUTLINED_FUNCTION_117_0();
      sub_1C6FD7FC8(v97, v98, &unk_1C7563720);
      ++v93;
    }

    else
    {
      v99 = OUTLINED_FUNCTION_117_0();
      sub_1C6FD7FC8(v99, v100, &unk_1C7563720);
      OUTLINED_FUNCTION_4_20();
      sub_1C7091B68();
      v101 = v339;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v357 = v101;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        a2 = &v357;
        sub_1C716E298(0, *(v101 + 16) + 1, 1);
        OUTLINED_FUNCTION_74_3();
        v101 = v357;
      }

      v104 = *(v101 + 16);
      v103 = *(v101 + 24);
      v105 = v104 + 1;
      if (v104 >= v103 >> 1)
      {
        v106 = OUTLINED_FUNCTION_15(v103);
        a2 = &v357;
        sub_1C716E298(v106, v107, 1);
        OUTLINED_FUNCTION_74_3();
        v101 = v357;
      }

      ++v93;
      *(v101 + 16) = v105;
      v339 = v101;
      OUTLINED_FUNCTION_4_20();
      sub_1C7091B68();
      v80 = v355;
    }
  }

  v108 = v339;

  sub_1C75504FC();
  OUTLINED_FUNCTION_52_8();
  v109 = sub_1C754FEEC();
  sub_1C755118C();
  v110 = OUTLINED_FUNCTION_23();
  if (os_log_type_enabled(v110, v111))
  {
    v112 = swift_slowAlloc();
    *v112 = 134218240;
    *(v112 + 4) = *(v108 + 16);

    *(v112 + 12) = 2048;
    *(v112 + 14) = i;

    OUTLINED_FUNCTION_56_1();
    _os_log_impl(v113, v114, v115, v116, v112, 0x16u);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
  }

  OUTLINED_FUNCTION_101_3();
  v117 = *(v108 + 16);
  v118 = v355;
  if (v117)
  {
    v350 = *(v353 + 32);
    OUTLINED_FUNCTION_15_4();
    v120 = v108 + v119;
    i = *(v121 + 72);
    v344 = (v122 + 32);
    v123 = (v122 + 8);
    v352 = MEMORY[0x1E69E7CC0];
    v343 = xmmword_1C755BAB0;
    do
    {
      OUTLINED_FUNCTION_3_22();
      v124 = v348;
      sub_1C708CA24();
      sub_1C6FD7F70();
      if (__swift_getEnumTagSinglePayload(v94, 1, v118) == 1)
      {
        OUTLINED_FUNCTION_1_30();
        sub_1C7091C1C(v124, v125);
        sub_1C6FD7FC8(v94, &unk_1EC219230, &unk_1C7563720);
      }

      else
      {
        (*v344)(a2, v94, v118);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2150D0, &unk_1C7569880);
        v126 = v118;
        v127 = swift_allocObject();
        *(v127 + 16) = v343;
        sub_1C754DE3C();
        *&v128 = v128;
        *(v127 + 32) = LODWORD(v128);
        (*v123)(a2, v126);
        OUTLINED_FUNCTION_1_30();
        sub_1C7091C1C(v124, v129);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v130 = v352;
        }

        else
        {
          OUTLINED_FUNCTION_24_0();
          sub_1C6FB2DBC();
          v130 = v132;
        }

        v94 = *(v130 + 16);
        v131 = *(v130 + 24);
        a2 = (v94 + 1);
        if (v94 >= v131 >> 1)
        {
          OUTLINED_FUNCTION_15(v131);
          sub_1C6FB2DBC();
          v130 = v133;
        }

        *(v130 + 16) = a2;
        v352 = v130;
        *(v130 + 8 * v94 + 32) = v127;
        v118 = v355;
        OUTLINED_FUNCTION_101_3();
      }

      v120 += i;
      --v117;
    }

    while (v117);
  }

  else
  {
    v352 = MEMORY[0x1E69E7CC0];
  }

  v134 = type metadata accessor for Hastings.TimeBasedClusterer(0);
  v135 = v335 + *(v134 + 40);
  v136 = *(v135 + 24);
  v137 = *(v135 + 32);
  v138 = OUTLINED_FUNCTION_173();
  __swift_project_boxed_opaque_existential_1(v138, v139);
  v140 = v327;
  (*(v137 + 16))(v352, v136, v137);
  if (v140)
  {

LABEL_47:
    (*(v325 + 8))(v311, v326);
    return;
  }

  v141 = OUTLINED_FUNCTION_173();
  __swift_project_boxed_opaque_existential_1(v141, v142);
  v143 = OUTLINED_FUNCTION_216();
  v145 = v144(v143);
  v146 = v339;
  if (!v145)
  {

    sub_1C7091BC0();
    swift_allocError();
    *v190 = 1;
    swift_willThrow();
    goto LABEL_47;
  }

  v147 = v145;
  v348 = v134;
  *&v327 = 0;
  v350 = *(v145 + 16);

  sub_1C75504FC();
  v148 = 0;
  v149 = MEMORY[0x1E69E7CC8];
  for (i = v147; ; v147 = i)
  {
    v150 = v330;
    if (v350 == v148)
    {
      break;
    }

    if (v148 >= *(v147 + 16))
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
      sub_1C7551E4C();
      __break(1u);

      __break(1u);
      return;
    }

    v151 = *(v146 + 16);
    if (v148 == v151)
    {
      break;
    }

    if (v148 >= v151)
    {
      goto LABEL_107;
    }

    *v336 = *(v147 + 8 * v148 + 32);
    sub_1C708CA24();
    OUTLINED_FUNCTION_94_2();
    sub_1C6FD7F70();
    v152 = *v150;
    OUTLINED_FUNCTION_4_20();
    sub_1C7091B68();
    sub_1C708CA24();
    swift_isUniquelyReferenced_nonNull_native();
    v357 = v149;
    v153 = sub_1C6FCABD0(v152);
    if (__OFADD__(v149[2], (v154 & 1) == 0))
    {
      goto LABEL_108;
    }

    v155 = v153;
    v156 = v154;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216A20, &unk_1C7565B00);
    v157 = sub_1C7551A2C();
    v149 = v357;
    if (v157)
    {
      v158 = sub_1C6FCABD0(v152);
      if ((v156 & 1) != (v159 & 1))
      {
        goto LABEL_111;
      }

      v155 = v158;
    }

    if ((v156 & 1) == 0)
    {
      OUTLINED_FUNCTION_1_3(&v149[v155 >> 6]);
      *(v149[6] + 8 * v155) = v152;
      *(v149[7] + 8 * v155) = MEMORY[0x1E69E7CC0];
      v160 = v149[2];
      v161 = __OFADD__(v160, 1);
      v162 = v160 + 1;
      if (v161)
      {
        goto LABEL_109;
      }

      v149[2] = v162;
    }

    v163 = v149[7];
    v164 = *(v163 + 8 * v155);
    v165 = swift_isUniquelyReferenced_nonNull_native();
    *(v163 + 8 * v155) = v164;
    if ((v165 & 1) == 0)
    {
      v170 = OUTLINED_FUNCTION_24_0();
      sub_1C6FB2ED4(v170, v171, v172, v164);
      v164 = v173;
      *(v163 + 8 * v155) = v173;
    }

    v167 = *(v164 + 16);
    v166 = *(v164 + 24);
    if (v167 >= v166 >> 1)
    {
      OUTLINED_FUNCTION_15(v166);
      OUTLINED_FUNCTION_89_5();
      sub_1C6FB2ED4(v174, v175, v176, v164);
      *(v163 + 8 * v155) = v177;
    }

    OUTLINED_FUNCTION_1_30();
    sub_1C7091C1C(v168, v169);
    sub_1C6FD7FC8(v336, &qword_1EC216A10, &unk_1C7565AF0);
    *(*(v163 + 8 * v155) + 16) = v167 + 1;
    OUTLINED_FUNCTION_4_20();
    sub_1C7091B68();
    ++v148;
    v146 = v339;
  }

  sub_1C75504FC();
  OUTLINED_FUNCTION_52_8();
  v178 = sub_1C754FEEC();
  sub_1C755117C();
  v179 = OUTLINED_FUNCTION_23();
  v181 = os_log_type_enabled(v179, v180);
  v182 = v329;
  v183 = v325;
  v184 = v313;
  if (v181)
  {
    v185 = OUTLINED_FUNCTION_41_0();
    *v185 = 134217984;
    *(v185 + 4) = v149[2];

    OUTLINED_FUNCTION_56_1();
    _os_log_impl(v186, v187, v188, v189, v185, 0xCu);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
  }

  v191 = v326;
  v192 = v312;
  sub_1C754F2BC();
  (*(v183 + 32))(v184, v192, v191);
  OUTLINED_FUNCTION_52_8();
  v140 = v327;
  sub_1C708826C(v193, v194);
  if (v140)
  {

    v196 = OUTLINED_FUNCTION_216();
    v197(v196);
    return;
  }

  v198 = v195;
  v357 = v195;
  sub_1C75504FC();
  sub_1C708C988(&v357, sub_1C7422CE4, &type metadata for Hastings.Cluster, sub_1C708D190, sub_1C708CC90);
  v325 = 0;

  v199 = v357;
  v200 = *(v335 + SHIDWORD(v348[4].isa));
  if (v200)
  {
    v140 = *(v200 + 24);
    *(v200 + 24) = v357;
  }

  v334 = v199;
  sub_1C75504FC();
  v201 = sub_1C754FEEC();
  v202 = sub_1C755117C();
  v203 = OUTLINED_FUNCTION_72();
  if (os_log_type_enabled(v203, v204))
  {
    v205 = OUTLINED_FUNCTION_41_0();
    *v205 = 134217984;
    v206 = *(v198 + 16);

    *(v205 + 4) = v206;

    _os_log_impl(&dword_1C6F5C000, v201, v202, "There are %ld sorted clusters with the extracted features", v205, 0xCu);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v207 = v346;
  v208 = v322;
  v209 = v328;
  v210 = v321;
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v211, v212, v213, v355);
  v215 = v334;
  v216 = v347;
  v217 = v320;
  v331 = *(v334 + 2);
  if (v331)
  {
    v218 = 0;
    v330 = (v334 + 32);
    v219 = (v316 + 32);
    *&v343 = v316 + 8;
    *&v214 = 136316162;
    v327 = v214;
    *&v214 = 136315138;
    v326 = v214;
    i = v316 + 32;
    v344 = (v316 + 16);
    while (v218 < *(v215 + 2))
    {
      v340 = v218;
      v220 = &v330[4 * v218];
      v221 = v220[1];
      v336 = *v220;
      v222 = v220[2];
      v140 = v220[3];
      v339 = v221;
      sub_1C75504FC();
      sub_1C75504FC();
      v338 = v140;
      sub_1C75504FC();
      sub_1C754DE8C();
      sub_1C754DE6C();
      v223 = *(v216 + 48);
      v224 = *v219;
      v225 = v217;
      v226 = v355;
      (*v219)(v209, v225, v355);
      v350 = v224;
      v224(v209 + v223, v210, v226);
      OUTLINED_FUNCTION_216();
      sub_1C6FD7F70();
      v341 = v222;
      v227 = *(v222 + 16);
      v228 = v345;
      v229 = v342;
      if (v227)
      {
        v352 = *(v353 + 32);
        OUTLINED_FUNCTION_14_17();
        v231 = v341 + v230;
        v351 = *(v232 + 72);
        do
        {
          OUTLINED_FUNCTION_3_22();
          sub_1C708CA24();
          sub_1C6FD7F70();
          v233 = v355;
          if (__swift_getEnumTagSinglePayload(v228, 1, v355) == 1)
          {
            OUTLINED_FUNCTION_1_30();
            sub_1C7091C1C(v229, v234);
            sub_1C6FD7FC8(v228, &unk_1EC219230, &unk_1C7563720);
            sub_1C7091CBC();
          }

          else
          {
            v235 = v354;
            (v350)(v354, v228, v233);
            sub_1C7091C74(&qword_1EDD0F9E0, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
            v236 = sub_1C755060C();
            v237 = *v344;
            if (v236)
            {
              v238 = v235;
            }

            else
            {
              v238 = v208;
            }

            v348 = *v344;
            (v237)(v207, v238, v233);
            v239 = *(v347 + 48);
            v240 = sub_1C755061C();
            OUTLINED_FUNCTION_1_30();
            sub_1C7091C1C(v229, v241);
            if (v240)
            {
              sub_1C6FD7FC8(v208, &qword_1EC215148, qword_1C755C6D0);
              v207 = v346;
              (v350)(v346 + v239, v354, v233);
            }

            else
            {
              (*v343)(v354, v233);
              v207 = v346;
              (v348)(v346 + v239, v208 + v239, v233);
              sub_1C6FD7FC8(v208, &qword_1EC215148, qword_1C755C6D0);
            }

            v228 = v345;
            v229 = v342;
          }

          OUTLINED_FUNCTION_94_2();
          sub_1C7091CBC();
          v231 += v351;
          --v227;
        }

        while (v227);
      }

      sub_1C6FD7FC8(v328, &qword_1EC215148, qword_1C755C6D0);
      v242 = v319;
      sub_1C7091CBC();
      v243 = *(v347 + 48);
      v244 = v332;
      v245 = v355;
      v246 = v350;
      (v350)(v332, v242, v355);
      v247 = v333;
      v246(v333, v242 + v243, v245);
      v248 = v317;
      sub_1C6FD7F70();
      if (__swift_getEnumTagSinglePayload(v248, 1, v245) == 1)
      {
        sub_1C6FD7FC8(v248, &unk_1EC219230, &unk_1C7563720);
      }

      else
      {
        v249 = v315;
        v246(v315, v248, v245);
        sub_1C754DEAC();
        sub_1C7089E3C(v250);
        OUTLINED_FUNCTION_52_8();
        v251 = sub_1C754FEEC();
        sub_1C755117C();
        v252 = OUTLINED_FUNCTION_23();
        if (os_log_type_enabled(v252, v253))
        {
          v254 = OUTLINED_FUNCTION_41_0();
          OUTLINED_FUNCTION_98();
          v255 = swift_slowAlloc();
          v356 = v255;
          *v254 = v326;
          v256 = OUTLINED_FUNCTION_117_0();
          v259 = sub_1C6F765A4(v256, v257, v258);

          *(v254 + 4) = v259;
          _os_log_impl(&dword_1C6F5C000, v251, v244, "%s between clusters", v254, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v255);
          OUTLINED_FUNCTION_235();
          MEMORY[0x1CCA5F8E0]();
          OUTLINED_FUNCTION_235();
          MEMORY[0x1CCA5F8E0]();
        }

        else
        {
        }

        (*v343)(v249, v245);
        v247 = v333;
        v244 = v332;
      }

      sub_1C754DEAC();
      *(swift_allocObject() + 16) = v260;
      *(swift_allocObject() + 16) = 0;
      *(swift_allocObject() + 16) = 0;
      OUTLINED_FUNCTION_30();
      v261 = swift_allocObject();
      OUTLINED_FUNCTION_95_5(v261);
      OUTLINED_FUNCTION_27_12(1918985593, 0xE400000000000000, 31536000.0);
      v262 = OUTLINED_FUNCTION_91_4();
      OUTLINED_FUNCTION_27_12(v262, v263, 2592000.0);
      OUTLINED_FUNCTION_27_12(7954788, 0xE300000000000000, 86400.0);
      OUTLINED_FUNCTION_27_12(1920298856, 0xE400000000000000, 3600.0);
      v264 = OUTLINED_FUNCTION_53_10();
      OUTLINED_FUNCTION_27_12(v264, v265, v266);
      OUTLINED_FUNCTION_27_12(0x646E6F636573, 0xE600000000000000, 1.0);
      swift_beginAccess();
      sub_1C75504FC();

      v267 = *v344;
      v268 = v324;
      (*v344)(v324, v244, v245);
      v269 = v318;
      (v267)(v318, v247, v245);
      v270 = v339;
      sub_1C75504FC();
      v271 = v341;
      sub_1C75504FC();
      sub_1C75504FC();
      OUTLINED_FUNCTION_52_8();
      v272 = sub_1C754FEEC();
      LODWORD(v352) = sub_1C755117C();
      v273 = OUTLINED_FUNCTION_72();
      if (os_log_type_enabled(v273, v274))
      {
        v275 = swift_slowAlloc();
        v351 = swift_slowAlloc();
        v356 = v351;
        *v275 = v327;
        sub_1C75504FC();
        v276 = sub_1C6F765A4(v336, v270, &v356);
        v348 = v272;
        v277 = v276;

        *(v275 + 4) = v277;
        *(v275 + 12) = 2048;
        v278 = *(v271 + 16);

        *(v275 + 14) = v278;

        *(v275 + 22) = 2080;
        v279 = OUTLINED_FUNCTION_94_2();
        v282 = sub_1C6F765A4(v279, v280, v281);

        *(v275 + 24) = v282;
        *(v275 + 32) = 2080;
        objc_opt_self();
        v283 = v269;
        v284 = v245;
        v285 = v324;
        v286 = sub_1C754DECC();
        v287 = OUTLINED_FUNCTION_104_3(v286, sel_localizedStringFromDate_dateStyle_timeStyle_);

        v288 = sub_1C755068C();
        v290 = v289;

        v291 = *v343;
        v292 = v285;
        v245 = v284;
        (*v343)(v292, v284);
        v293 = v291;
        v294 = sub_1C6F765A4(v288, v290, &v356);

        *(v275 + 34) = v294;
        *(v275 + 42) = 2080;
        v295 = sub_1C754DECC();
        v296 = OUTLINED_FUNCTION_104_3(v295, sel_localizedStringFromDate_dateStyle_timeStyle_);

        v297 = sub_1C755068C();
        v299 = v298;

        v293(v283, v245);
        v300 = sub_1C6F765A4(v297, v299, &v356);

        *(v275 + 44) = v300;
        v301 = v348;
        _os_log_impl(&dword_1C6F5C000, v348, v352, "Cluster %s (%ld assets) lasts %s, from %s to %s", v275, 0x34u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();

        v293(v332, v245);
      }

      else
      {

        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();

        v302 = *v343;
        v303 = OUTLINED_FUNCTION_35_0();
        v302(v303);
        (v302)(v268, v245);
        (v302)(v332, v245);
      }

      v182 = v329;
      sub_1C6FD7FC8(v329, &unk_1EC219230, &unk_1C7563720);
      v217 = v320;
      v304 = v340 + 1;
      v219 = i;
      (v350)(v182, v333, v245);
      OUTLINED_FUNCTION_25_8();
      __swift_storeEnumTagSinglePayload(v305, v306, v307, v245);
      v218 = v304;
      v308 = v304 == v331;
      v207 = v346;
      v216 = v347;
      v208 = v322;
      v209 = v328;
      v210 = v321;
      v215 = v334;
      if (v308)
      {
        goto LABEL_103;
      }
    }

    goto LABEL_110;
  }

LABEL_103:
  v309 = v325;
  sub_1C754F2EC();
  sub_1C6FD7FC8(v182, &unk_1EC219230, &unk_1C7563720);
  if (v309)
  {
  }
}

void static Hastings.TimeBasedClusterer.shotlistDrivenClusters(from:shotlist:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = type metadata accessor for Hastings.Asset(0);
  v28 = OUTLINED_FUNCTION_18(v27);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_85_4();
  if (!*(*v24 + 16))
  {
    if (qword_1EC213D38 == -1)
    {
LABEL_28:
      v56 = sub_1C754FF1C();
      __swift_project_value_buffer(v56, qword_1EC216898);
      v57 = sub_1C754FEEC();
      sub_1C755117C();
      v58 = OUTLINED_FUNCTION_23();
      if (os_log_type_enabled(v58, v59))
      {
        OUTLINED_FUNCTION_96_0();
        v60 = swift_slowAlloc();
        *v60 = 0;
        OUTLINED_FUNCTION_56_1();
        _os_log_impl(v61, v62, v63, v64, v60, 2u);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      sub_1C75504FC();
      goto LABEL_57;
    }

LABEL_61:
    OUTLINED_FUNCTION_13_18(&qword_1EC213D38);
    goto LABEL_28;
  }

  v116[0] = *v24;
  Hastings.ShotlistRetrieval.assetUUIDs.getter();
  v30 = v29;
  v31 = *(v26 + 16);
  if (v31)
  {
    v112 = MEMORY[0x1E69E7CC0];
    sub_1C716E2F0(0, v31, 0);
    v32 = v112;
    v103 = v26 + 32;
    v33 = 0;
    v34 = v31;
    v102 = v31;
    while (1)
    {
      v35 = (v103 + 32 * v33);
      v105 = *v35;
      v36 = v35[2];
      v110 = *(v36 + 16);
      v107 = v35[3];
      v108 = v35[1];
      if (v110)
      {
        break;
      }

      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      v37 = 0;
LABEL_23:
      v112 = v32;
      v51 = *(v32 + 16);
      v50 = *(v32 + 24);
      if (v51 >= v50 >> 1)
      {
        OUTLINED_FUNCTION_15(v50);
        OUTLINED_FUNCTION_89_5();
        sub_1C716E2F0(v53, v54, v55);
        v32 = v112;
      }

      ++v33;
      *(v32 + 16) = v51 + 1;
      v52 = (v32 + 40 * v51);
      v52[4] = v105;
      v52[5] = v108;
      v52[6] = v36;
      v52[7] = v107;
      v52[8] = v37;
      if (v33 == v34)
      {

        goto LABEL_32;
      }
    }

    v104 = v33;
    v106 = v32;
    OUTLINED_FUNCTION_191();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v37 = 0;
    v38 = 0;
    while (v38 < *(v36 + 16))
    {
      OUTLINED_FUNCTION_3_22();
      sub_1C708CA24();
      if (*(v30 + 16))
      {
        v39 = v36;
        v41 = *v20;
        v40 = v20[1];
        sub_1C7551F3C();
        sub_1C75505AC();
        sub_1C7551FAC();
        OUTLINED_FUNCTION_38_7();
        while (1)
        {
          v43 = v42 & v116;
          if (((*(v30 + 56 + (((v42 & v116) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v42 & (&a19 + 96))) & 1) == 0)
          {
            break;
          }

          v44 = (*(v30 + 48) + 16 * v43);
          if (*v44 != v41 || v44[1] != v40)
          {
            v46 = sub_1C7551DBC();
            v42 = v43 + 1;
            if ((v46 & 1) == 0)
            {
              continue;
            }
          }

          v47 = 1;
          goto LABEL_18;
        }

        v47 = 0;
LABEL_18:
        v36 = v39;
      }

      else
      {
        v47 = 0;
      }

      OUTLINED_FUNCTION_1_30();
      sub_1C7091C1C(v20, v48);
      v49 = __OFADD__(v37, v47);
      v37 += v47;
      if (v49)
      {
        goto LABEL_59;
      }

      if (++v38 == v110)
      {

        v32 = v106;
        v34 = v102;
        v33 = v104;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v32 = MEMORY[0x1E69E7CC0];
LABEL_32:
  v65 = *(v32 + 16);
  v66 = MEMORY[0x1E69E7CC0];
  if (v65)
  {
    v116[0] = MEMORY[0x1E69E7CC0];
    sub_1C716D854();
    v66 = v116[0];
    v67 = *(v116[0] + 16);
    v68 = v32;
    v69 = (v32 + 64);
    do
    {
      v71 = *v69;
      v69 += 5;
      v70 = v71;
      v116[0] = v66;
      v72 = *(v66 + 24);
      if (v67 >= v72 >> 1)
      {
        OUTLINED_FUNCTION_15(v72);
        sub_1C716D854();
        v66 = v116[0];
      }

      *(v66 + 16) = v67 + 1;
      *(v66 + 8 * v67++ + 32) = v70;
      --v65;
    }

    while (v65);
  }

  else
  {
    v68 = v32;
  }

  static Hastings.TimeBasedClusterer.thresholdForShotlistDrivenClusters(from:)(v66);
  v74 = v73;

  v109 = v74;
  if (v74 <= 0)
  {

    if (qword_1EC213D38 != -1)
    {
      OUTLINED_FUNCTION_13_18(&qword_1EC213D38);
    }

    v93 = sub_1C754FF1C();
    __swift_project_value_buffer(v93, qword_1EC216898);
    v94 = sub_1C754FEEC();
    sub_1C75511BC();
    v95 = OUTLINED_FUNCTION_23();
    if (os_log_type_enabled(v95, v96))
    {
      OUTLINED_FUNCTION_96_0();
      v97 = swift_slowAlloc();
      *v97 = 0;
      OUTLINED_FUNCTION_56_1();
      _os_log_impl(v98, v99, v100, v101, v97, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }
  }

  else
  {
    v75 = 0;
    v111 = *(v68 + 16);
    v76 = (v68 + 64);
    v77 = MEMORY[0x1E69E7CC0];
    while (v111 != v75)
    {
      if (v75 >= *(v68 + 16))
      {
        goto LABEL_60;
      }

      v79 = *(v76 - 1);
      v78 = *v76;
      v80 = *(v76 - 3);
      v81 = *(v76 - 2);
      v116[0] = *(v76 - 4);
      v116[1] = v80;
      v116[2] = v81;
      v116[3] = v79;
      v116[4] = v78;
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C708B560(v116, v109, &v112);

      v83 = v112;
      v82 = v113;
      v85 = v114;
      v84 = v115;
      if (v113)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v89 = OUTLINED_FUNCTION_24_0();
          sub_1C6FB2EA4(v89);
          v77 = v90;
        }

        v87 = *(v77 + 16);
        v86 = *(v77 + 24);
        if (v87 >= v86 >> 1)
        {
          v91 = OUTLINED_FUNCTION_15(v86);
          sub_1C6FB2EA4(v91);
          v77 = v92;
        }

        *(v77 + 16) = v87 + 1;
        v88 = (v77 + 32 * v87);
        v88[4] = v83;
        v88[5] = v82;
        v88[6] = v85;
        v88[7] = v84;
      }

      else
      {
        sub_1C7090ECC(v112, 0);
      }

      v76 += 5;
      ++v75;
    }
  }

LABEL_57:
  OUTLINED_FUNCTION_25_0();
}

void sub_1C708826C(void *a1, uint64_t a2)
{
  v219 = a2;
  v220 = type metadata accessor for Hastings.Feature(0);
  OUTLINED_FUNCTION_3_0();
  v202 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14_2();
  v217 = v9;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_130();
  v229 = v13;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_206_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v16);
  v18 = v196 - v17;
  v218 = type metadata accessor for Hastings.Asset(0);
  OUTLINED_FUNCTION_3_0();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_85_4();
  v22 = type metadata accessor for Hastings.FeatureSelector(0);
  v23 = OUTLINED_FUNCTION_76(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_14_0();
  v197 = v25 - v24;
  v224 = v2;
  v203 = sub_1C7082B30(a1, sub_1C7091C14, v223, v26, v27, v28, v29);
  v30 = v3;
  sub_1C754FEFC();
  v31 = *(v2 + *(type metadata accessor for Hastings.TimeBasedClusterer(0) + 28) + 16);
  v221 = v18;
  if (v31)
  {
    sub_1C75504FC();
    OUTLINED_FUNCTION_292();
    goto LABEL_32;
  }

  v222 = v20;
  v211 = v5;
  v213 = v3;
  v212 = v2;
  v32 = a1 + 8;
  OUTLINED_FUNCTION_11();
  v35 = v34 & v33;
  v37 = (v36 + 63) >> 6;
  sub_1C75504FC();
  v38 = MEMORY[0x1E69E7CC0];
  v215 = a1 + 8;
  v216 = a1;
  while (2)
  {
    while (2)
    {
      if (v35)
      {
        goto LABEL_10;
      }

      OUTLINED_FUNCTION_102_6();
      do
      {
        v39 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          __break(1u);
LABEL_202:
          __break(1u);
LABEL_203:
          __break(1u);
LABEL_204:
          __break(1u);
LABEL_205:
          __break(1u);
LABEL_206:
          __break(1u);
          return;
        }

        if (v39 >= v37)
        {
          goto LABEL_24;
        }

        v35 = v32[v39];
        ++v31;
      }

      while (!v35);
      v213 = v30;
      v31 = v39;
LABEL_10:
      v40 = *(a1[7] + ((v31 << 9) | (8 * __clz(__rbit64(v35)))));
      v30 = *(v40 + 16);
      v32 = v38[2];
      v41 = v30 + v32;
      if (__OFADD__(v32, v30))
      {
        goto LABEL_204;
      }

      sub_1C75504FC();
      a1 = v38;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || v41 > v38[3] >> 1)
      {
        if (v32 <= v41)
        {
          v43 = v30 + v32;
        }

        else
        {
          v43 = v32;
        }

        sub_1C6FB2ED4(isUniquelyReferenced_nonNull_native, v43, 1, v38);
        a1 = v44;
      }

      v35 &= v35 - 1;
      if (*(v40 + 16))
      {
        if ((a1[3] >> 1) - a1[2] < v30)
        {
          goto LABEL_205;
        }

        swift_arrayInitWithCopy();

        OUTLINED_FUNCTION_69_9();
        if (v30)
        {
          v45 = v38[2];
          v46 = __OFADD__(v45, v30);
          v47 = v30 + v45;
          if (v46)
          {
            goto LABEL_206;
          }

          v38[2] = v47;
        }

        continue;
      }

      break;
    }

    OUTLINED_FUNCTION_69_9();
    if (!v30)
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_24:
  v218 = v38;

  v52 = *(v218 + 16);
  if (v52)
  {
    v213 = v30;
    v227 = MEMORY[0x1E69E7CC0];
    v53 = v218;
    sub_1C6F7ED9C(0, v52, 0, v48, v49, v50, v51);
    a1 = v227;
    OUTLINED_FUNCTION_15_4();
    v30 = (v53 + v54);
    v222 = *(v55 + 72);
    OUTLINED_FUNCTION_74_3();
    do
    {
      OUTLINED_FUNCTION_3_22();
      sub_1C708CA24();
      v56 = v227;
      v57 = v228;
      sub_1C75504FC();
      OUTLINED_FUNCTION_1_30();
      sub_1C7091C1C(&v227, v58);
      v227 = a1;
      v60 = a1[2];
      v59 = a1[3];
      if (v60 >= v59 >> 1)
      {
        v62 = OUTLINED_FUNCTION_15(v59);
        sub_1C6F7ED9C(v62, v60 + 1, 1, v63, v64, v65, v66);
        OUTLINED_FUNCTION_74_3();
        a1 = v227;
      }

      a1[2] = v60 + 1;
      v61 = &a1[2 * v60];
      v61[4] = v56;
      v61[5] = v57;
      v30 = (v30 + v222);
      --v52;
    }

    while (v52);

    OUTLINED_FUNCTION_102_6();
  }

  else
  {

    a1 = MEMORY[0x1E69E7CC0];
  }

  sub_1C706D154();

  OUTLINED_FUNCTION_292();
  v18 = v221;
LABEL_32:
  v67 = v219;
  sub_1C708AAB0();
  v69 = v68;

  v70 = v203;
  v71 = v197;
  Hastings.FeatureSelector.selectSignificantFeatures(for:scopingAssetUUIDs:progressReporter:)(v203, v69, v67);
  v210 = v30;
  if (v30)
  {
    sub_1C7091C1C(v71, type metadata accessor for Hastings.FeatureSelector);

    return;
  }

  v200 = v72;

  v73 = 0;
  v227 = MEMORY[0x1E69E7CD0];
  v211 = v70[2];
  v198 = v70 + 4;
  v74 = 56;
  while (v211 != v73)
  {
    if (v73 >= v203[2])
    {
      goto LABEL_203;
    }

    ++v73;
    sub_1C75504FC();
    sub_1C7397BDC();
    v74 += 32;
  }

  v75 = v227;
  v76 = v200 + 64;
  OUTLINED_FUNCTION_90_1();
  v208 = v78 & v77;
  v80 = (v79 + 63) >> 6;
  sub_1C75504FC();
  v81 = 0;
  v82 = MEMORY[0x1E69E7CD0];
LABEL_39:
  v83 = v208;
  while (2)
  {
    if (v83)
    {
LABEL_45:
      OUTLINED_FUNCTION_36_7();
      v87 = v86 | (v81 << 6);
      v88 = *(*(*(v85 + 56) + 8 * v87) + 16);
      if (!v88)
      {
        continue;
      }

      v208 = v83;
      v205 = v80;
      v206 = v76;
      v207 = v75;
      v89 = (*(v85 + 48) + 32 * v87);
      v90 = v89[1];
      v91 = v89[2];
      v92 = v89[3];
      v215 = *(v220 + 24);
      v93 = v202;
      OUTLINED_FUNCTION_191();
      v209 = v95 + v94;
      v204 = v95;
      swift_bridgeObjectRetain_n();
      v201 = v90;
      sub_1C75504FC();
      v199 = v91;
      sub_1C75504FC();
      v196[1] = v92;
      sub_1C75504FC();
      v219 = *(v93 + 72);
      v96 = v82;
      v97 = 0;
      v212 = v88;
LABEL_47:
      v218 = (v96 + 7);
      while (1)
      {
        OUTLINED_FUNCTION_2_19();
        sub_1C708CA24();
        sub_1C7551F3C();
        a1 = *(v18 + 1);
        v222 = *v18;
        sub_1C75505AC();
        switch(v18[16])
        {
          case 1:
            OUTLINED_FUNCTION_25_10();
            break;
          case 2:
            OUTLINED_FUNCTION_43_8();
            break;
          case 3:
            OUTLINED_FUNCTION_65_7();
            break;
          case 4:
            OUTLINED_FUNCTION_44_8();
            break;
          case 5:
            OUTLINED_FUNCTION_24_14();
            break;
          default:
            break;
        }

        v213 = (v97 + 1);
        sub_1C75505AC();

        v97 = sub_1C754F58C();
        OUTLINED_FUNCTION_5_23();
        sub_1C7091C74(&qword_1EC215238, v98, MEMORY[0x1E69C1938]);
        OUTLINED_FUNCTION_93_4();
        sub_1C755059C();
        sub_1C7551FAC();
        OUTLINED_FUNCTION_40_12();
        if (((*(v218 + v100) >> v88) & 1) == 0)
        {
LABEL_91:
          swift_isUniquelyReferenced_nonNull_native();
          OUTLINED_FUNCTION_2_19();
          v97 = v214;
          sub_1C708CA24();
          v227 = v96;
          sub_1C72ED3C8();
          v96 = v227;
          OUTLINED_FUNCTION_0_32();
          sub_1C7091C1C(v18, v116);
          OUTLINED_FUNCTION_73_5();
          if (v102)
          {
LABEL_93:
            v82 = v96;

            swift_bridgeObjectRelease_n();
            OUTLINED_FUNCTION_292();
            v75 = v207;
            v76 = v206;
            v80 = v205;
            goto LABEL_39;
          }

          goto LABEL_47;
        }

        v216 = ~v99;
        while (1)
        {
          v101 = v96;
          OUTLINED_FUNCTION_2_19();
          sub_1C708CA24();
          v102 = *v4 == v222 && *(v4 + 8) == a1;
          if (!v102 && (sub_1C7551DBC() & 1) == 0)
          {
LABEL_78:
            OUTLINED_FUNCTION_0_32();
            sub_1C7091C1C(v4, v109);
            goto LABEL_85;
          }

          switch(*(v4 + 16))
          {
            case 1:
              OUTLINED_FUNCTION_33_9();
              break;
            case 2:
              OUTLINED_FUNCTION_46_8();
              break;
            case 3:
              OUTLINED_FUNCTION_64_0();
              break;
            case 4:
              OUTLINED_FUNCTION_45_8();
              break;
            case 5:
              OUTLINED_FUNCTION_21_17();
              break;
            default:
              break;
          }

          OUTLINED_FUNCTION_42_10();
          v105 = 0xE900000000000072;
          switch(v106)
          {
            case 1:
              v105 = 0xE800000000000000;
              OUTLINED_FUNCTION_41_8();
              break;
            case 2:
              v105 = 0xE500000000000000;
              OUTLINED_FUNCTION_61_7();
              break;
            case 3:
              v105 = 0xE400000000000000;
              v104 = 1885958740;
              break;
            case 4:
              v105 = 0xE500000000000000;
              OUTLINED_FUNCTION_62_8();
              break;
            case 5:
              OUTLINED_FUNCTION_39_9();
              v105 = 0xEA00000000007265;
              break;
            default:
              break;
          }

          if (v103 == v104 && v105 == 0xE900000000000072)
          {
          }

          else
          {
            v108 = sub_1C7551DBC();

            v18 = v221;
            if ((v108 & 1) == 0)
            {
              goto LABEL_78;
            }
          }

          OUTLINED_FUNCTION_80_5();
          OUTLINED_FUNCTION_5_23();
          sub_1C7091C74(&qword_1EC2147A0, v110, MEMORY[0x1E69C1950]);
          sub_1C7550A5C();
          sub_1C7550A5C();
          if (v227 == v225 && v228 == v226)
          {
            break;
          }

          v112 = sub_1C7551DBC();

          OUTLINED_FUNCTION_0_32();
          sub_1C7091C1C(v4, v113);
          v18 = v221;
          if (v112)
          {
            goto LABEL_88;
          }

LABEL_85:
          v88 = (v88 + 1) & v216;
          v96 = v101;
          if (((*(v218 + ((v88 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v88) & 1) == 0)
          {
            goto LABEL_91;
          }
        }

        OUTLINED_FUNCTION_0_32();
        sub_1C7091C1C(v4, v114);
        v18 = v221;
LABEL_88:
        OUTLINED_FUNCTION_0_32();
        sub_1C7091C1C(v18, v115);
        OUTLINED_FUNCTION_73_5();
        v96 = v101;
        if (v102)
        {
          goto LABEL_93;
        }
      }
    }

    break;
  }

  while (1)
  {
    v84 = v81 + 1;
    if (__OFADD__(v81, 1))
    {
      goto LABEL_202;
    }

    if (v84 >= v80)
    {
      break;
    }

    ++v81;
    if (*(v76 + 8 * v84))
    {
      v81 = v84;
      goto LABEL_45;
    }
  }

  v117 = sub_1C72387A4(v82, v75);

  v199 = Hastings.FeatureSelector.selectNonsignificantFeatures(from:for:)(v117, v203);

  if (v211)
  {
    v118 = 0;
    v119 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v204 = v118;
      v120 = &v198[4 * v118];
      v122 = *v120;
      v121 = v120[1];
      v123 = v120[2];
      v124 = v120[3];
      v125 = v200;
      v126 = *(v200 + 16);
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      if (v126)
      {
        v127 = OUTLINED_FUNCTION_105_5();
        v128 = v217;
        if (v129)
        {
          v130 = *(*(v125 + 56) + 8 * v127);
          sub_1C75504FC();
        }

        else
        {
          v130 = MEMORY[0x1E69E7CC0];
        }
      }

      else
      {
        v130 = MEMORY[0x1E69E7CC0];
        v128 = v217;
      }

      v131 = *(v130 + 16);
      OUTLINED_FUNCTION_34_7();
      v212 = sub_1C7091C74(&qword_1EC216778, v132, protocol conformance descriptor for Hastings.Feature);
      v222 = MEMORY[0x1CCA5D4D0](v131, v220);
      v215 = *(v130 + 16);
      v209 = v119;
      v208 = v121;
      v207 = v122;
      v206 = v123;
      v205 = v124;
      if (!v215)
      {

        goto LABEL_146;
      }

      OUTLINED_FUNCTION_14_17();
      v201 = v130;
      v213 = (v130 + v134);
      v221 = *(v135 + 72);
      v136 = v229;
      do
      {
        v216 = v133;
        OUTLINED_FUNCTION_2_19();
        sub_1C708CA24();
        sub_1C7551F3C();
        a1 = *v136;
        v137 = *(v136 + 8);
        sub_1C75505AC();
        switch(*(v136 + 16))
        {
          case 1:
            OUTLINED_FUNCTION_25_10();
            break;
          case 2:
            OUTLINED_FUNCTION_43_8();
            break;
          case 4:
            OUTLINED_FUNCTION_44_8();
            break;
          case 5:
            OUTLINED_FUNCTION_24_14();
            break;
          default:
            break;
        }

        sub_1C75505AC();

        v138 = *(v220 + 24);
        sub_1C754F58C();
        OUTLINED_FUNCTION_5_23();
        sub_1C7091C74(&qword_1EC215238, v139, MEMORY[0x1E69C1938]);
        OUTLINED_FUNCTION_93_4();
        v218 = v138;
        sub_1C755059C();
        v140 = &v227;
        v141 = sub_1C7551FAC();
        v119 = v222 + 56;
        v142 = -1 << *(v222 + 32);
        v121 = v141 & ~v142;
        if (((*(v222 + 56 + ((v121 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v121) & 1) == 0)
        {
LABEL_140:
          OUTLINED_FUNCTION_92_5();
          swift_isUniquelyReferenced_nonNull_native();
          OUTLINED_FUNCTION_2_19();
          v154 = v229;
          v119 = v214;
          sub_1C708CA24();
          v227 = v140;
          OUTLINED_FUNCTION_15_1();
          sub_1C72ED3C8();
          v222 = v227;
          goto LABEL_143;
        }

        v219 = ~v142;
        OUTLINED_FUNCTION_100_3();
        while (1)
        {
          OUTLINED_FUNCTION_2_19();
          sub_1C708CA24();
          v143 = *v122 == a1 && *(v122 + 8) == v137;
          if (!v143 && (sub_1C7551DBC() & 1) == 0)
          {
LABEL_132:
            OUTLINED_FUNCTION_0_32();
            sub_1C7091C1C(v122, v149);
            goto LABEL_139;
          }

          v140 = 0xE900000000000072;
          switch(*(v122 + 16))
          {
            case 1:
              OUTLINED_FUNCTION_33_9();
              break;
            case 2:
              OUTLINED_FUNCTION_46_8();
              break;
            case 3:
              OUTLINED_FUNCTION_64_0();
              break;
            case 4:
              OUTLINED_FUNCTION_45_8();
              break;
            case 5:
              OUTLINED_FUNCTION_21_17();
              break;
            default:
              break;
          }

          OUTLINED_FUNCTION_42_10();
          v123 = 0xE900000000000072;
          switch(v146)
          {
            case 1:
              v123 = 0xE800000000000000;
              OUTLINED_FUNCTION_41_8();
              break;
            case 2:
              v123 = 0xE500000000000000;
              OUTLINED_FUNCTION_61_7();
              break;
            case 3:
              v123 = 0xE400000000000000;
              v145 = 1885958740;
              break;
            case 4:
              v123 = 0xE500000000000000;
              OUTLINED_FUNCTION_62_8();
              break;
            case 5:
              OUTLINED_FUNCTION_39_9();
              v123 = 0xEA00000000007265;
              break;
            default:
              break;
          }

          if (v144 == v145 && v123 == 0xE900000000000072)
          {

            OUTLINED_FUNCTION_100_3();
          }

          else
          {
            v148 = sub_1C7551DBC();

            OUTLINED_FUNCTION_100_3();
            if ((v148 & 1) == 0)
            {
              goto LABEL_132;
            }
          }

          OUTLINED_FUNCTION_80_5();
          OUTLINED_FUNCTION_5_23();
          sub_1C7091C74(&qword_1EC2147A0, v150, MEMORY[0x1E69C1950]);
          OUTLINED_FUNCTION_173();
          sub_1C7550A5C();
          OUTLINED_FUNCTION_173();
          sub_1C7550A5C();
          v140 = v226;
          if (v227 == v225 && v228 == v226)
          {
            break;
          }

          v123 = sub_1C7551DBC();

          OUTLINED_FUNCTION_0_32();
          sub_1C7091C1C(v122, v152);
          if (v123)
          {
            goto LABEL_142;
          }

LABEL_139:
          v121 = (v121 + 1) & v219;
          OUTLINED_FUNCTION_88_4();
          if ((v153 & 1) == 0)
          {
            goto LABEL_140;
          }
        }

        OUTLINED_FUNCTION_0_32();
        sub_1C7091C1C(v122, v155);
LABEL_142:
        v154 = v229;
LABEL_143:
        OUTLINED_FUNCTION_0_32();
        sub_1C7091C1C(v154, v156);
        v133 = (v216 + 1);
        v136 = v154;
        v128 = v217;
      }

      while ((v216 + 1) != v215);

      OUTLINED_FUNCTION_292();
      OUTLINED_FUNCTION_35_5();
LABEL_146:
      v157 = v199;
      if (v199[2] && (v158 = OUTLINED_FUNCTION_105_5(), (v159 & 1) != 0))
      {
        v160 = v157[7][v158];
        sub_1C75504FC();
      }

      else
      {
        v160 = MEMORY[0x1E69E7CC0];
      }

      v221 = MEMORY[0x1CCA5D4D0](*(v160 + 16), v220, v212);
      v213 = *(v160 + 16);
      if (v213)
      {
        break;
      }

LABEL_195:
      OUTLINED_FUNCTION_92_5();
      sub_1C75504FC();
      v184 = v221;
      sub_1C75504FC();
      v185 = sub_1C75504FC();
      v186 = v210;
      v187 = sub_1C708F710(v185, v157, v184);
      v210 = v186;
      swift_bridgeObjectRelease_n();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v192 = OUTLINED_FUNCTION_24_0();
        sub_1C6FB2EA4(v192);
        v119 = v193;
      }

      v189 = *(v119 + 16);
      v188 = *(v119 + 24);
      v190 = v204;
      if (v189 >= v188 >> 1)
      {
        v194 = OUTLINED_FUNCTION_15(v188);
        sub_1C6FB2EA4(v194);
        v190 = v204;
        v119 = v195;
      }

      v118 = v190 + 1;
      *(v119 + 16) = v189 + 1;
      v191 = (v119 + 32 * v189);
      v191[4] = v122;
      v191[5] = v121;
      v191[6] = v123;
      v191[7] = v187;
      if (v118 == v211)
      {
        goto LABEL_200;
      }
    }

    OUTLINED_FUNCTION_14_17();
    v201 = v160;
    v212 = v160 + v162;
    v219 = *(v163 + 72);
    while (2)
    {
      v215 = v161;
      OUTLINED_FUNCTION_2_19();
      sub_1C708CA24();
      sub_1C7551F3C();
      v165 = *a1;
      v164 = a1[1];
      sub_1C75505AC();
      v166 = 0xE900000000000072;
      switch(*(a1 + 16))
      {
        case 1:
          v166 = 0xE800000000000000;
          OUTLINED_FUNCTION_25_10();
          break;
        case 2:
          v166 = 0xE500000000000000;
          OUTLINED_FUNCTION_43_8();
          break;
        case 3:
          OUTLINED_FUNCTION_65_7();
          break;
        case 4:
          v166 = 0xE500000000000000;
          OUTLINED_FUNCTION_44_8();
          break;
        case 5:
          OUTLINED_FUNCTION_24_14();
          v166 = 0xEA00000000007265;
          break;
        default:
          break;
      }

      sub_1C75505AC();

      OUTLINED_FUNCTION_80_5();
      v121 = sub_1C754F58C();
      OUTLINED_FUNCTION_5_23();
      sub_1C7091C74(&qword_1EC215238, v167, MEMORY[0x1E69C1938]);
      OUTLINED_FUNCTION_93_4();
      v216 = v166;
      sub_1C755059C();
      sub_1C7551FAC();
      v122 = v221 + 56;
      OUTLINED_FUNCTION_40_12();
      if (((*(v122 + v169) >> v123) & 1) == 0)
      {
LABEL_190:
        v181 = v221;
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_2_19();
        v119 = v214;
        sub_1C708CA24();
        v227 = v181;
        v157 = &v227;
        sub_1C72ED3C8();
        v221 = v227;
        goto LABEL_192;
      }

      v218 = ~v168;
LABEL_160:
      OUTLINED_FUNCTION_2_19();
      sub_1C708CA24();
      v170 = *v128 == v165 && *(v128 + 8) == v164;
      if (v170 || (OUTLINED_FUNCTION_76_4(), (sub_1C7551DBC() & 1) != 0))
      {
        switch(*(v128 + 16))
        {
          case 1:
            OUTLINED_FUNCTION_33_9();
            break;
          case 2:
            OUTLINED_FUNCTION_46_8();
            break;
          case 3:
            OUTLINED_FUNCTION_64_0();
            break;
          case 4:
            OUTLINED_FUNCTION_45_8();
            break;
          case 5:
            OUTLINED_FUNCTION_21_17();
            break;
          default:
            break;
        }

        OUTLINED_FUNCTION_42_10();
        v173 = 0xE900000000000072;
        switch(v174)
        {
          case 1:
            v173 = 0xE800000000000000;
            OUTLINED_FUNCTION_41_8();
            break;
          case 2:
            v173 = 0xE500000000000000;
            OUTLINED_FUNCTION_61_7();
            break;
          case 3:
            v173 = 0xE400000000000000;
            v172 = 1885958740;
            break;
          case 4:
            v173 = 0xE500000000000000;
            OUTLINED_FUNCTION_62_8();
            break;
          case 5:
            OUTLINED_FUNCTION_39_9();
            v173 = 0xEA00000000007265;
            break;
          default:
            break;
        }

        if (v171 == v172 && v173 == 0xE900000000000072)
        {

          v128 = v217;
        }

        else
        {
          v176 = sub_1C7551DBC();

          v128 = v217;
          if ((v176 & 1) == 0)
          {
            goto LABEL_182;
          }
        }

        OUTLINED_FUNCTION_80_5();
        OUTLINED_FUNCTION_5_23();
        sub_1C7091C74(&qword_1EC2147A0, v178, MEMORY[0x1E69C1950]);
        v119 = a1;
        a1 = v128;
        OUTLINED_FUNCTION_35_0();
        sub_1C7550A5C();
        OUTLINED_FUNCTION_35_0();
        sub_1C7550A5C();
        v157 = v226;
        if (v227 == v225 && v228 == v226)
        {

          OUTLINED_FUNCTION_0_32();
          sub_1C7091C1C(v128, v182);
          OUTLINED_FUNCTION_292();
LABEL_192:
          OUTLINED_FUNCTION_0_32();
          sub_1C7091C1C(a1, v183);
          v161 = (v215 + 1);
          if ((v215 + 1) == v213)
          {

            OUTLINED_FUNCTION_35_5();
            goto LABEL_195;
          }

          continue;
        }

        v119 = sub_1C7551DBC();

        OUTLINED_FUNCTION_0_32();
        sub_1C7091C1C(v128, v180);
        OUTLINED_FUNCTION_292();
        if (v119)
        {
          goto LABEL_192;
        }
      }

      else
      {
LABEL_182:
        OUTLINED_FUNCTION_0_32();
        sub_1C7091C1C(v128, v177);
      }

      break;
    }

    v123 = (v123 + 1) & v218;
    if (((*(v122 + ((v123 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v123) & 1) == 0)
    {
      goto LABEL_190;
    }

    goto LABEL_160;
  }

LABEL_200:

  sub_1C7091C1C(v197, type metadata accessor for Hastings.FeatureSelector);
}

uint64_t sub_1C7089A10(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216A28, &qword_1C7565B10);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230, &unk_1C7563720);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - v13;
  v15 = sub_1C754DF6C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v27 - v20;
  v22 = *(a1 + 16);
  v28 = *(v28 + 16);
  sub_1C710D798(v22);
  v23 = type metadata accessor for Hastings.Asset(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v23) == 1)
  {
    sub_1C6FD7FC8(v8, &qword_1EC216A28, &qword_1C7565B10);
    __swift_storeEnumTagSinglePayload(v14, 1, 1, v15);
  }

  else
  {
    sub_1C6FD7F70();
    sub_1C7091C1C(v8, type metadata accessor for Hastings.Asset);
    if (__swift_getEnumTagSinglePayload(v14, 1, v15) != 1)
    {
      (*(v16 + 32))(v21, v14, v15);
      goto LABEL_7;
    }
  }

  sub_1C754DE6C();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) != 1)
  {
    sub_1C6FD7FC8(v14, &unk_1EC219230, &unk_1C7563720);
  }

LABEL_7:
  sub_1C710D798(v28);
  if (__swift_getEnumTagSinglePayload(v5, 1, v23) == 1)
  {
    sub_1C6FD7FC8(v5, &qword_1EC216A28, &qword_1C7565B10);
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v15);
  }

  else
  {
    sub_1C6FD7F70();
    sub_1C7091C1C(v5, type metadata accessor for Hastings.Asset);
    if (__swift_getEnumTagSinglePayload(v11, 1, v15) != 1)
    {
      (*(v16 + 32))(v18, v11, v15);
      goto LABEL_13;
    }
  }

  sub_1C754DE6C();
  if (__swift_getEnumTagSinglePayload(v11, 1, v15) != 1)
  {
    sub_1C6FD7FC8(v11, &unk_1EC219230, &unk_1C7563720);
  }

LABEL_13:
  v24 = sub_1C754DEDC();
  v25 = *(v16 + 8);
  v25(v18, v15);
  v25(v21, v15);
  return v24 & 1;
}

uint64_t sub_1C7089E3C(double a1)
{
  *(swift_allocObject() + 16) = a1;
  *(swift_allocObject() + 16) = 0;
  *(swift_allocObject() + 16) = 0;
  OUTLINED_FUNCTION_30();
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_95_5(v1);
  OUTLINED_FUNCTION_26_12(1918985593, 0xE400000000000000, 31536000.0);
  v2 = OUTLINED_FUNCTION_91_4();
  OUTLINED_FUNCTION_26_12(v2, v3, v4);
  OUTLINED_FUNCTION_26_12(7954788, 0xE300000000000000, 86400.0);
  OUTLINED_FUNCTION_26_12(1920298856, 0xE400000000000000, 3600.0);
  v5 = OUTLINED_FUNCTION_53_10();
  OUTLINED_FUNCTION_26_12(v5, v6, v7);
  OUTLINED_FUNCTION_26_12(0x646E6F636573, 0xE600000000000000, 1.0);
  swift_beginAccess();
  sub_1C75504FC();

  return OUTLINED_FUNCTION_15_1();
}

void sub_1C708A024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_33();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  type metadata accessor for Hastings.Feature(0);
  OUTLINED_FUNCTION_3_0();
  v194 = v27;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_14_2();
  v190 = v29;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_66_9();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_140_1();
  v193 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216A30, &qword_1C7565B18);
  v34 = OUTLINED_FUNCTION_76(v33);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_14_2();
  v195 = v35;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_140_1();
  v197 = v37;
  v38 = type metadata accessor for Hastings.Asset(0);
  v39 = OUTLINED_FUNCTION_18(v38);
  v189 = v40;
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_78();
  v43 = v41 - v42;
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_130();
  v199 = v45;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_99_5();
  MEMORY[0x1EEE9AC00](v47);
  v49 = (v186 - v48);
  v50 = v21 + *(type metadata accessor for Hastings.TimeBasedClusterer(0) + 28);
  v196 = *(v50 + 24);
  if (v196)
  {
    v192 = v22;
    v186[2] = v43;
    v51 = *(v26 + 16);
    v188 = v20;
    v191 = v26;
    if (v51)
    {
      v200 = v50;
      v201[0] = MEMORY[0x1E69E7CC0];
      sub_1C75504FC();
      sub_1C6F7ED9C(0, v51, 0, v52, v53, v54, v55);
      v56 = v201[0];
      OUTLINED_FUNCTION_14_17();
      v58 = v26 + v57;
      v60 = *(v59 + 72);
      v61 = v51;
      do
      {
        OUTLINED_FUNCTION_3_22();
        OUTLINED_FUNCTION_64();
        sub_1C708CA24();
        v62 = *v49;
        v63 = v49[1];
        sub_1C75504FC();
        OUTLINED_FUNCTION_1_30();
        sub_1C7091C1C(v49, v64);
        v201[0] = v56;
        v66 = *(v56 + 16);
        v65 = *(v56 + 24);
        if (v66 >= v65 >> 1)
        {
          OUTLINED_FUNCTION_15(v65);
          OUTLINED_FUNCTION_89_5();
          sub_1C6F7ED9C(v68, v69, v70, v71, v72, v73, v74);
          v56 = v201[0];
        }

        *(v56 + 16) = v66 + 1;
        v67 = v56 + 16 * v66;
        *(v67 + 32) = v62;
        *(v67 + 40) = v63;
        v58 += v60;
        --v61;
      }

      while (v61);
      v50 = v200;
    }

    else
    {
      sub_1C75504FC();
      v56 = MEMORY[0x1E69E7CC0];
    }

    v78 = *(v50 + 16);
    if (v78)
    {
      v79 = 0;
      v200 = *(v56 + 16);
      v198 = v56 + 32;
      v80 = MEMORY[0x1E69E7CC0];
LABEL_14:
      while (v79 != v200)
      {
        v81 = v79;
        if (v79 >= *(v56 + 16))
        {
          goto LABEL_80;
        }

        ++v79;
        if (*(v78 + 16))
        {
          v82 = (v198 + 16 * v81);
          v83 = *v82;
          v84 = v82[1];
          sub_1C7551F3C();
          sub_1C75504FC();
          sub_1C75505AC();
          sub_1C7551FAC();
          OUTLINED_FUNCTION_38_7();
          do
          {
            v86 = v85 & v201;
            if (((*(v78 + 56 + (((v85 & v201) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v85 & (&a19 + 88))) & 1) == 0)
            {

              goto LABEL_14;
            }

            v87 = (*(v78 + 48) + 16 * v86);
            if (*v87 == v83 && v87[1] == v84)
            {
              break;
            }

            v89 = sub_1C7551DBC();
            v85 = v86 + 1;
          }

          while ((v89 & 1) == 0);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v202 = v80;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v91 = OUTLINED_FUNCTION_90_0();
            sub_1C6F7ED9C(v91, v92, v93, v94, v95, v96, v97);
            v80 = v202;
          }

          v98 = v80;
          v99 = *(v80 + 16);
          v100 = *(v98 + 24);
          if (v99 >= v100 >> 1)
          {
            v102 = OUTLINED_FUNCTION_15(v100);
            sub_1C6F7ED9C(v102, v99 + 1, 1, v103, v104, v105, v106);
            v98 = v202;
          }

          *(v98 + 16) = v99 + 1;
          v101 = v98 + 16 * v99;
          *(v101 + 32) = v83;
          *(v101 + 40) = v84;
          v80 = v98;
        }
      }
    }

    else
    {
      v80 = v56;
    }

    v198 = v80;
    if (v51)
    {
      OUTLINED_FUNCTION_14_17();
      v107 = v192;
      v109 = v191 + v108;
      v200 = MEMORY[0x1E69E7CC8];
      v111 = *(v110 + 72);
      while (1)
      {
        sub_1C708CA24();
        v112 = *v107;
        v113 = v107[1];
        sub_1C708CA24();
        v114 = v200;
        swift_isUniquelyReferenced_nonNull_native();
        v201[0] = v114;
        v115 = OUTLINED_FUNCTION_64();
        sub_1C6F78124(v115, v116);
        OUTLINED_FUNCTION_82_4();
        if (v119)
        {
          break;
        }

        v120 = v117;
        v121 = v118;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216A38, &qword_1C7565B20);
        if (sub_1C7551A2C())
        {
          v122 = OUTLINED_FUNCTION_64();
          v124 = sub_1C6F78124(v122, v123);
          v107 = v192;
          if ((v121 & 1) != (v125 & 1))
          {
            goto LABEL_82;
          }

          v120 = v124;
        }

        else
        {
          v107 = v192;
        }

        v126 = v201[0];
        v200 = v201[0];
        if (v121)
        {
          sub_1C7091D14(v199, *(v201[0] + 56) + v120 * v111);
        }

        else
        {
          OUTLINED_FUNCTION_1_3(v201[0] + 8 * (v120 >> 6));
          v127 = (*(v126 + 48) + 16 * v120);
          *v127 = v112;
          v127[1] = v113;
          OUTLINED_FUNCTION_4_20();
          sub_1C7091B68();
          v128 = *(v126 + 16);
          v119 = __OFADD__(v128, 1);
          v129 = v128 + 1;
          if (v119)
          {
            goto LABEL_81;
          }

          *(v126 + 16) = v129;
          sub_1C75504FC();
        }

        OUTLINED_FUNCTION_1_30();
        sub_1C7091C1C(v107, v130);
        v109 += v111;
        if (!--v51)
        {
          goto LABEL_46;
        }
      }
    }

    else
    {
      v200 = MEMORY[0x1E69E7CC8];
LABEL_46:
      v131 = 0;
      OUTLINED_FUNCTION_90_1();
      v135 = v134 & v133;
      v137 = (v136 + 63) >> 6;
      v191 = MEMORY[0x1E69E7CC8];
      v138 = v188;
      v139 = v197;
      v199 = v132;
      if ((v134 & v133) == 0)
      {
        goto LABEL_48;
      }

      while (1)
      {
        v140 = v131;
LABEL_52:
        v141 = __clz(__rbit64(v135));
        v135 &= v135 - 1;
        v142 = v141 | (v140 << 6);
        v143 = v196;
        OUTLINED_FUNCTION_2_19();
        sub_1C708CA24();
        v144 = *(*(v143 + 56) + 8 * v142);
        v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216A40, &qword_1C7565B28);
        v146 = *(v145 + 48);
        OUTLINED_FUNCTION_6_10();
        v147 = v195;
        sub_1C7091B68();
        *(v147 + v146) = v144;
        OUTLINED_FUNCTION_25_8();
        __swift_storeEnumTagSinglePayload(v148, v149, v150, v145);
        sub_1C75504FC();
        v139 = v197;
LABEL_53:
        OUTLINED_FUNCTION_173();
        sub_1C7091CBC();
        v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216A40, &qword_1C7565B28);
        if (__swift_getEnumTagSinglePayload(v139, 1, v151) == 1)
        {

          OUTLINED_FUNCTION_25_0();
          return;
        }

        v152 = *(v139 + *(v151 + 48));
        OUTLINED_FUNCTION_6_10();
        sub_1C7091B68();
        v153 = sub_1C72B8CBC(v198, v152);
        if (*(v153 + 16))
        {
          break;
        }

        OUTLINED_FUNCTION_0_32();
        sub_1C7091C1C(v138, v154);

LABEL_56:
        v132 = v199;
        if (!v135)
        {
LABEL_48:
          while (1)
          {
            v140 = v131 + 1;
            if (__OFADD__(v131, 1))
            {
              break;
            }

            if (v140 >= v137)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216A40, &qword_1C7565B28);
              OUTLINED_FUNCTION_84();
              __swift_storeEnumTagSinglePayload(v155, v156, v157, v158);
              v135 = 0;
              goto LABEL_53;
            }

            v135 = *(v132 + 8 * v140);
            ++v131;
            if (v135)
            {
              v131 = v140;
              goto LABEL_52;
            }
          }

          __break(1u);
          goto LABEL_78;
        }
      }

      OUTLINED_FUNCTION_2_19();
      sub_1C708CA24();
      OUTLINED_FUNCTION_90_1();
      v161 = v160 & v159;
      v163 = (v162 + 63) >> 6;

      v164 = 0;
      v187 = MEMORY[0x1E69E7CC0];
LABEL_60:
      v165 = v200;
      while (v161)
      {
        v166 = v161;
LABEL_67:
        v161 = (v166 - 1) & v166;
        if (*(v165 + 16))
        {
          v192 = (v166 - 1) & v166;
          v168 = (*(v153 + 48) + ((v164 << 10) | (16 * __clz(__rbit64(v166)))));
          v170 = *v168;
          v169 = v168[1];
          sub_1C75504FC();
          sub_1C6F78124(v170, v169);
          if (v171)
          {
            v172 = *(v189 + 72);
            OUTLINED_FUNCTION_3_22();
            sub_1C708CA24();

            v173 = swift_isUniquelyReferenced_nonNull_native();
            v186[1] = v172;
            if ((v173 & 1) == 0)
            {
              v176 = OUTLINED_FUNCTION_24_0();
              sub_1C6FB2ED4(v176, v177, v178, v179);
              v187 = v180;
            }

            v161 = v192;
            v175 = *(v187 + 16);
            v174 = *(v187 + 24);
            if (v175 >= v174 >> 1)
            {
              v181 = OUTLINED_FUNCTION_15(v174);
              sub_1C6FB2ED4(v181, v175 + 1, 1, v187);
              v187 = v182;
            }

            *(v187 + 16) = v175 + 1;
            OUTLINED_FUNCTION_191();
            OUTLINED_FUNCTION_4_20();
            sub_1C7091B68();
            v139 = v197;
            goto LABEL_60;
          }

          v139 = v197;
          v165 = v200;
          v161 = v192;
        }
      }

      while (1)
      {
        v167 = v164 + 1;
        if (__OFADD__(v164, 1))
        {
          break;
        }

        if (v167 >= v163)
        {

          v183 = v191;
          v184 = swift_isUniquelyReferenced_nonNull_native();
          v201[0] = v183;
          v185 = v190;
          sub_1C6FC8748(v187, v190, v184);
          sub_1C7091C1C(v185, type metadata accessor for Hastings.Feature);
          v138 = v188;
          sub_1C7091C1C(v188, type metadata accessor for Hastings.Feature);
          v191 = v201[0];
          goto LABEL_56;
        }

        v166 = *(v153 + 56 + 8 * v167);
        ++v164;
        if (v166)
        {
          v164 = v167;
          goto LABEL_67;
        }
      }

LABEL_78:
      __break(1u);
    }

    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    sub_1C7551E4C();
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2168C8, &unk_1C75656D0);
    OUTLINED_FUNCTION_34_7();
    sub_1C7091C74(v75, v76, protocol conformance descriptor for Hastings.Feature);
    OUTLINED_FUNCTION_25_0();

    sub_1C75504DC();
  }
}

void sub_1C708AAB0()
{
  v65 = v0 + *(type metadata accessor for Hastings.TimeBasedClusterer(0) + 28);
  v1 = *(v65 + 40);
  v2 = v1[2];
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = OUTLINED_FUNCTION_32_8();
    sub_1C716E23C(v4, v5, v6);
    v3 = v71;
    v7 = v1 + 4;
    do
    {
      v8 = *v7;
      v71 = v3;
      v9 = *(v3 + 16);
      v10 = *(v3 + 24);
      sub_1C75504FC();
      if (v9 >= v10 >> 1)
      {
        sub_1C716E23C(v10 > 1, v9 + 1, 1);
      }

      *(v3 + 16) = v9 + 1;
      *(v3 + 8 * v9 + 32) = v8;
      v7 += 3;
      --v2;
    }

    while (v2);
  }

  v11 = sub_1C7069D48(v3);

  if (v11)
  {
    sub_1C75504FC();
    sub_1C7069A44();
    v13 = v12;
  }

  else
  {
    v13 = MEMORY[0x1E69E7CD0];
  }

  v14 = v1[2];
  v15 = MEMORY[0x1E69E7CC0];
  v69 = v1;
  if (v14)
  {
    v16 = OUTLINED_FUNCTION_32_8();
    sub_1C716E23C(v16, v17, v18);
    v15 = v71;
    v19 = v1 + 5;
    do
    {
      v20 = *v19;
      v21 = *(v71 + 16);
      v22 = *(v71 + 24);
      sub_1C75504FC();
      if (v21 >= v22 >> 1)
      {
        OUTLINED_FUNCTION_89_5();
        sub_1C716E23C(v23, v24, v25);
      }

      *(v71 + 16) = v21 + 1;
      *(v71 + 8 * v21 + 32) = v20;
      v19 += 3;
      --v14;
    }

    while (v14);
  }

  v26 = sub_1C7069D48(v15);

  if (v26)
  {
    sub_1C75504FC();
    OUTLINED_FUNCTION_15_1();
    sub_1C7069A44();
    v28 = v27;
  }

  else
  {
    v28 = MEMORY[0x1E69E7CD0];
  }

  sub_1C75504FC();
  v29 = OUTLINED_FUNCTION_216();
  v31 = sub_1C7238810(v29, v30);
  v63 = v28;
  v32 = sub_1C7238810(v28, v31);
  Hastings.ShotlistRetrieval.assetUUIDs.getter();
  v33 = v69;
  v64 = v32;
  if (*(v65 + 49) == 1)
  {
    sub_1C7069A44();
    v13 = v34;
  }

  v35 = 0;
  v68 = *(v69 + 16);
LABEL_20:
  if (v35 == v68)
  {
    sub_1C706D154();
    v57 = v56;
    if (*(v65 + 50) == 1)
    {
      sub_1C7069A44();
      v59 = v58;
    }

    else
    {
      v59 = v63;
    }

    sub_1C75504FC();
    v60 = sub_1C7090218(v59, v33, v57);
    if (*(v65 + 51) == 1)
    {
      sub_1C7069A44();
      v62 = v61;
    }

    else
    {
      v62 = v64;
    }

    sub_1C739796C(v60);
    sub_1C739796C(v62);
  }

  else
  {
    if (v35 < *(v33 + 16))
    {
      v36 = *(v69 + 32 + 24 * v35++ + 16);
      v37 = 1 << *(v13 + 32);
      if (v37 < 64)
      {
        v38 = ~(-1 << v37);
      }

      else
      {
        v38 = -1;
      }

      v39 = v38 & *(v13 + 56);
      v40 = (v37 + 63) >> 6;
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      v41 = 0;
      v70 = MEMORY[0x1E69E7CC0];
      while (v39)
      {
        v42 = v39;
LABEL_32:
        v39 = (v42 - 1) & v42;
        if (*(v36 + 16))
        {
          v44 = (*(v13 + 48) + ((v41 << 10) | (16 * __clz(__rbit64(v42)))));
          v46 = *v44;
          v45 = v44[1];
          sub_1C75504FC();
          v47 = sub_1C6F78124(v46, v45);
          if (v48)
          {
            v49 = (*(v36 + 56) + 16 * v47);
            v50 = v49[1];
            v66 = *v49;
            sub_1C75504FC();

            v67 = v50;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_24_0();
              sub_1C6FB1814();
              v70 = v54;
            }

            v52 = *(v70 + 16);
            v51 = *(v70 + 24);
            if (v52 >= v51 >> 1)
            {
              OUTLINED_FUNCTION_15(v51);
              sub_1C6FB1814();
              v70 = v55;
            }

            *(v70 + 16) = v52 + 1;
            v53 = v70 + 16 * v52;
            *(v53 + 32) = v66;
            *(v53 + 40) = v67;
          }

          else
          {
          }
        }
      }

      while (1)
      {
        v43 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
          break;
        }

        if (v43 >= v40)
        {

          sub_1C6FD2568(v70);
          v33 = v69;
          goto LABEL_20;
        }

        v42 = *(v13 + 56 + 8 * v43);
        ++v41;
        if (v42)
        {
          v41 = v43;
          goto LABEL_32;
        }
      }

      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_1C708AF7C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  if (!v3)
  {
    return 0;
  }

  v5 = 0;
  v6 = *a1;
  v7 = a1[1];
  v8 = a2 + 32;
  v9 = a3 + 56;
  v24 = *a1;
  v25 = a2 + 32;
  do
  {
    v10 = *(v8 + 24 * v5 + 16);
    if (*(v10 + 16))
    {
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      v11 = sub_1C6F78124(v6, v7);
      if (v12)
      {
        v13 = (*(v10 + 56) + 16 * v11);
        v15 = *v13;
        v14 = v13[1];
        sub_1C75504FC();

        if (*(a3 + 16))
        {
          sub_1C7551F3C();
          sub_1C75505AC();
          v16 = sub_1C7551FAC();
          v17 = ~(-1 << *(a3 + 32));
          while (1)
          {
            v18 = v16 & v17;
            if (((*(v9 + (((v16 & v17) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v16 & v17)) & 1) == 0)
            {
              break;
            }

            v19 = (*(a3 + 48) + 16 * v18);
            if (*v19 != v15 || v19[1] != v14)
            {
              v21 = sub_1C7551DBC();
              v16 = v18 + 1;
              if ((v21 & 1) == 0)
              {
                continue;
              }
            }

            return 1;
          }
        }

        v7 = v23;
        v6 = v24;
      }

      else
      {
      }

      v8 = v25;
    }

    ++v5;
  }

  while (v5 != v3);
  return 0;
}

void static Hastings.TimeBasedClusterer.thresholdForShotlistDrivenClusters(from:)(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (qword_1EC213D38 != -1)
  {
    OUTLINED_FUNCTION_13_18(&qword_1EC213D38);
  }

  v4 = v3;
  v5 = sub_1C754FF1C();
  __swift_project_value_buffer(v5, qword_1EC216898);
  sub_1C75504FC();
  v6 = sub_1C754FEEC();
  v7 = sub_1C75511BC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    OUTLINED_FUNCTION_98();
    v9 = swift_slowAlloc();
    v39 = v9;
    *v8 = 134218242;
    if (v4 <= -9.22337204e18)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    if (v4 >= 9.22337204e18)
    {
LABEL_32:
      __break(1u);

      __break(1u);
      return;
    }

    v10 = v9;
    *(v8 + 4) = v4;
    *(v8 + 12) = 2080;
    v38 = a1;
    sub_1C75504FC();
    sub_1C708C988(&v38, sub_1C7422AA4, MEMORY[0x1E69E6530], sub_1C708E0FC, sub_1C7040590);
    v11 = MEMORY[0x1CCA5D090](v38, MEMORY[0x1E69E6530]);
    v13 = v12;

    v14 = sub_1C6F765A4(v11, v13, &v39);

    *(v8 + 14) = v14;
    _os_log_impl(&dword_1C6F5C000, v6, v7, "[shotlistDrivenClusters] filtering from %ld clusters: %s", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v10);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();

    if (!v3)
    {
LABEL_7:
      v15 = 0.0;
      v16 = MEMORY[0x1E69E7CC0];
      v1 = *(MEMORY[0x1E69E7CC0] + 16);
      v17 = 0.0 / v4;
      if (!v1)
      {
        goto LABEL_10;
      }

      goto LABEL_8;
    }
  }

  else
  {

    if (!v3)
    {
      goto LABEL_7;
    }
  }

  v30 = 0;
  v31 = (a1 + 32);
  v32 = 0.0;
  do
  {
    v32 = v32 + v31[v30++];
  }

  while (v3 != v30);
  v39 = MEMORY[0x1E69E7CC0];
  v17 = v32 / v4;
  sub_1C716DA70(0, v3, 0);
  v16 = v39;
  v33 = *(v39 + 16);
  do
  {
    v35 = *v31++;
    v34 = v35;
    v39 = v16;
    v36 = *(v16 + 24);
    v1 = (v33 + 1);
    if (v33 >= v36 >> 1)
    {
      v37 = OUTLINED_FUNCTION_15(v36);
      sub_1C716DA70(v37, v33 + 1, 1);
      v16 = v39;
    }

    *(v16 + 16) = v1;
    *(v16 + 8 * v33++ + 32) = (v34 - v17) * (v34 - v17);
    --v3;
  }

  while (v3);
LABEL_8:
  v15 = 0.0;
  v18 = 32;
  do
  {
    v15 = v15 + *(v16 + v18);
    v18 += 8;
    v1 = (v1 - 1);
  }

  while (v1);
LABEL_10:

  v19 = sqrt(v15 / v4);
  v20 = v19 * 0.5;
  if (v19 * 0.5 <= v17 * 0.6)
  {
    v20 = v17 * 0.6;
  }

  if (v17 * 0.95 < v20)
  {
    v20 = v17 * 0.95;
  }

  v21 = v17 - v20;
  v22 = sub_1C754FEEC();
  sub_1C75511BC();
  v23 = OUTLINED_FUNCTION_23();
  if (os_log_type_enabled(v23, v24))
  {
    OUTLINED_FUNCTION_98();
    v1 = swift_slowAlloc();
    *v1 = 134218496;
    *(v1 + 1) = v17;
    *(v1 + 6) = 2048;
    *(v1 + 14) = v19;
    *(v1 + 11) = 2048;
    *(v1 + 3) = v21;
    OUTLINED_FUNCTION_56_1();
    _os_log_impl(v25, v26, v27, v28, v1, 0x20u);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  v29 = ceil(v21);
  if ((*&v29 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (v29 <= -9.22337204e18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v29 >= 9.22337204e18)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }
}

double sub_1C708B560@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = qword_1EC213D38;
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  if (v8 >= a2)
  {
    if (v9 != -1)
    {
      swift_once();
    }

    v17 = sub_1C754FF1C();
    __swift_project_value_buffer(v17, qword_1EC216898);
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    v18 = sub_1C754FEEC();
    v19 = sub_1C755117C();

    if (os_log_type_enabled(v18, v19))
    {
      v27 = a2;
      v20 = swift_slowAlloc();
      v25 = v8;
      v21 = swift_slowAlloc();
      v29 = v21;
      *v20 = 136315650;
      sub_1C75504FC();
      v22 = v19;
      v23 = sub_1C6F765A4(v5, v4, &v29);

      *(v20 + 4) = v23;
      *(v20 + 12) = 2048;
      *(v20 + 14) = v25;
      *(v20 + 22) = 2048;
      *(v20 + 24) = v27;
      _os_log_impl(&dword_1C6F5C000, v18, v22, "[shotlistDrivenClusters] Keeping cluster %s because it has enough assets matching the shotlist (%ld >= %ld)", v20, 0x20u);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x1CCA5F8E0](v21, -1, -1);
      MEMORY[0x1CCA5F8E0](v20, -1, -1);
    }

    *a3 = v5;
    a3[1] = v4;
    a3[2] = v6;
    a3[3] = v7;
  }

  else
  {
    v26 = v5;
    if (v9 != -1)
    {
      swift_once();
    }

    v10 = sub_1C754FF1C();
    __swift_project_value_buffer(v10, qword_1EC216898);
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    v11 = sub_1C754FEEC();
    v12 = sub_1C755117C();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = v8;
      v15 = swift_slowAlloc();
      v29 = v15;
      *v13 = 136315650;

      v16 = sub_1C6F765A4(v26, v4, &v29);

      *(v13 + 4) = v16;
      *(v13 + 12) = 2048;
      *(v13 + 14) = v14;
      *(v13 + 22) = 2048;
      *(v13 + 24) = a2;
      _os_log_impl(&dword_1C6F5C000, v11, v12, "[shotlistDrivenClusters] Dropping cluster %s because it doesn't have enough assets matching the shotlist (%ld < %ld)", v13, 0x20u);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1CCA5F8E0](v15, -1, -1);
      MEMORY[0x1CCA5F8E0](v13, -1, -1);
    }

    else
    {
    }

    result = 0.0;
    *a3 = 0u;
    *(a3 + 1) = 0u;
  }

  return result;
}

uint64_t sub_1C708B8D8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  result = swift_beginAccess();
  if (*(a3 + 16))
  {
    return result;
  }

  swift_beginAccess();
  v14 = *(a4 + 16);
  swift_beginAccess();
  *(a3 + 16) = v14;
  swift_beginAccess();
  v15 = *(a4 + 16);
  if (v15 == 1)
  {
    result = swift_beginAccess();
    v16 = round(*(a5 + 16) / a7);
    if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
      goto LABEL_22;
    }

    if (v16 <= -9.22337204e18)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    if (v16 < 9.22337204e18)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  result = swift_beginAccess();
  v16 = floor(*(a5 + 16) / a7);
  if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v16 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v16 >= 9.22337204e18)
  {
LABEL_25:
    __break(1u);
    return result;
  }

LABEL_10:
  v17 = v16;
  if (v16 >= 1)
  {
    if (v15)
    {
      v18 = 32;
    }

    else
    {
      v18 = 0;
    }

    if (v15)
    {
      v19 = 0xE100000000000000;
    }

    else
    {
      v19 = 0xE000000000000000;
    }

    v21 = sub_1C7551D8C();
    v22 = v20;
    MEMORY[0x1CCA5CD70](32, 0xE100000000000000);
    sub_1C75504FC();
    MEMORY[0x1CCA5CD70](v21, v22);

    sub_1C75504FC();
    if (v17 != 1)
    {
      MEMORY[0x1CCA5CD70](115, 0xE100000000000000);
    }

    sub_1C75504FC();
    MEMORY[0x1CCA5CD70](a1, a2);

    swift_beginAccess();
    MEMORY[0x1CCA5CD70](v18, v19);
    swift_endAccess();

    swift_beginAccess();
    *(a5 + 16) = *(a5 + 16) - v17 * a7;
    result = swift_beginAccess();
    *(a4 + 16) = 1;
  }

  return result;
}

void static Hastings.Cluster.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (v2 || (sub_1C7551DBC() & 1) != 0)
  {
    v3 = OUTLINED_FUNCTION_64();
    sub_1C7001EBC(v3, v4);
    if (v5)
    {
      OUTLINED_FUNCTION_90();

      sub_1C708BC78();
    }
  }
}

void sub_1C708BC78()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for Hastings.Asset(0);
  v7 = OUTLINED_FUNCTION_18(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_206_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_63_7();
  v9 = type metadata accessor for Hastings.Feature(0);
  v10 = OUTLINED_FUNCTION_18(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14_2();
  v54 = v11;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_140_1();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216A08, &unk_1C7565AE0);
  v14 = OUTLINED_FUNCTION_76(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_78();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_140_1();
  v55 = v19;
  if (v5 == v3 || *(v5 + 16) != *(v3 + 16))
  {
LABEL_34:
    OUTLINED_FUNCTION_25_0();
    return;
  }

  v20 = 0;
  v50 = v3;
  v51 = v5 + 64;
  v21 = 1 << *(v5 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = (v21 + 63) >> 6;
  v58 = v17;
  v52 = v23;
  v53 = v5;
  if ((v22 & *(v5 + 64)) != 0)
  {
    do
    {
      OUTLINED_FUNCTION_36_7();
      v56 = v25;
      v57 = v24;
      v27 = v26 | (v25 << 6);
LABEL_11:
      OUTLINED_FUNCTION_2_19();
      sub_1C708CA24();
      v30 = *(*(v5 + 56) + 8 * v27);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2168B0, &qword_1C75656C0);
      v32 = *(v31 + 48);
      OUTLINED_FUNCTION_6_10();
      sub_1C7091B68();
      *(v58 + v32) = v30;
      OUTLINED_FUNCTION_25_8();
      __swift_storeEnumTagSinglePayload(v33, v34, v35, v31);
      sub_1C75504FC();
LABEL_12:
      sub_1C7091CBC();
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2168B0, &qword_1C75656C0);
      if (__swift_getEnumTagSinglePayload(v55, 1, v36) == 1)
      {
        goto LABEL_34;
      }

      v37 = *(v36 + 48);
      OUTLINED_FUNCTION_6_10();
      sub_1C7091B68();
      v38 = *(v55 + v37);
      v39 = sub_1C6FC27A8();
      LOBYTE(v37) = v40;
      OUTLINED_FUNCTION_0_32();
      sub_1C7091C1C(v54, v41);
      if ((v37 & 1) == 0 || (v42 = *(*(v3 + 56) + 8 * v39), v43 = *(v42 + 16), v43 != *(v38 + 16)))
      {
LABEL_33:

        goto LABEL_34;
      }

      if (v43 && v42 != v38)
      {
        OUTLINED_FUNCTION_191();
        sub_1C75504FC();
        v44 = 0;
        while (v44 < *(v42 + 16))
        {
          OUTLINED_FUNCTION_3_22();
          sub_1C708CA24();
          if (v44 >= *(v38 + 16))
          {
            goto LABEL_36;
          }

          sub_1C708CA24();
          if (*v1 == *v0 && v1[1] == v0[1])
          {
            sub_1C7091C1C(v0, type metadata accessor for Hastings.Asset);
            sub_1C7091C1C(v1, type metadata accessor for Hastings.Asset);
          }

          else
          {
            v59 = sub_1C7551DBC();
            sub_1C7091C1C(v0, type metadata accessor for Hastings.Asset);
            sub_1C7091C1C(v1, type metadata accessor for Hastings.Asset);
            if ((v59 & 1) == 0)
            {

              goto LABEL_33;
            }
          }

          if (v43 == ++v44)
          {

            v3 = v50;
            goto LABEL_29;
          }
        }

        __break(1u);
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

LABEL_29:

      v23 = v52;
      v5 = v53;
      v20 = v56;
    }

    while (v57);
  }

  while (1)
  {
    v28 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v28 >= v23)
    {
      v56 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2168B0, &qword_1C75656C0);
      OUTLINED_FUNCTION_84();
      __swift_storeEnumTagSinglePayload(v46, v47, v48, v49);
      v57 = 0;
      goto LABEL_12;
    }

    v29 = *(v51 + 8 * v28);
    ++v20;
    if (v29)
    {
      v56 = v28;
      v57 = (v29 - 1) & v29;
      v27 = __clz(__rbit64(v29)) | (v28 << 6);
      goto LABEL_11;
    }
  }

LABEL_37:
  __break(1u);
}

void sub_1C708C178(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v2 = a2;
    v3 = a1;
    OUTLINED_FUNCTION_109_5();
    if (v36)
    {
      v4 = 0;
      v5 = v3 + 64;
      OUTLINED_FUNCTION_90_1();
      v8 = v7 & v6;
      v10 = (v9 + 63) >> 6;
LABEL_5:
      while (v8)
      {
        OUTLINED_FUNCTION_86();
LABEL_12:
        v15 = v11 | (v4 << 6);
        v16 = (*(v3 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        v19 = *(*(v3 + 56) + 8 * v15);
        sub_1C75504FC();
        sub_1C75504FC();
        v20 = sub_1C6F78124(v17, v18);
        v22 = v21;

        if ((v22 & 1) == 0 || (v23 = *(*(v2 + 56) + 8 * v20), v24 = *(v23 + 16), v24 != *(v19 + 16)))
        {
LABEL_56:

          return;
        }

        if (v24 && v23 != v19)
        {
          v66 = v19 + 32;
          v67 = v23 + 32;
          sub_1C75504FC();
          v25 = 0;
          v60 = v3;
          v61 = v2;
          v64 = v10;
          v65 = v5;
          v62 = v24;
          v63 = v8;
          while (v25 != v24)
          {
            v26 = (v67 + 56 * v25);
            v27 = *v26;
            v28 = v26[1];
            v29 = v26[2];
            v30 = v26[3];
            v31 = v26[5];
            v71 = v26[4];
            v73 = v26[6];
            v68 = v25;
            v32 = (v66 + 56 * v25);
            v34 = v32[2];
            v33 = v32[3];
            v69 = v32[5];
            v70 = v32[4];
            v35 = v32[6];
            v36 = v27 == *v32 && v28 == v32[1];
            if (!v36)
            {
              v37 = v32[3];
              v38 = sub_1C7551DBC();
              v33 = v37;
              if ((v38 & 1) == 0)
              {
                goto LABEL_55;
              }
            }

            v39 = v29 == v34 && v30 == v33;
            if (!v39 && (sub_1C7551DBC() & 1) == 0 || v71 != v70 || v31 != v69)
            {
              goto LABEL_55;
            }

            v40 = v73;
            if (v73 != v35)
            {
              if (*(v73 + 16) != *(v35 + 16))
              {
LABEL_55:

                goto LABEL_56;
              }

              OUTLINED_FUNCTION_90_1();
              v43 = v42 & v41;
              v45 = (v44 + 63) >> 6;
              sub_1C75504FC();
              sub_1C75504FC();
              sub_1C75504FC();
              sub_1C75504FC();
              sub_1C75504FC();
              sub_1C75504FC();
              v46 = 0;
              if (v43)
              {
                while (2)
                {
                  v47 = __clz(__rbit64(v43));
                  v72 = (v43 - 1) & v43;
LABEL_39:
                  v51 = (*(v40 + 48) + 16 * (v47 | (v46 << 6)));
                  v53 = *v51;
                  v52 = v51[1];
                  sub_1C7551F3C();
                  sub_1C75504FC();
                  sub_1C75505AC();
                  sub_1C7551FAC();
                  OUTLINED_FUNCTION_38_7();
                  do
                  {
                    v55 = v54 & &v74;
                    OUTLINED_FUNCTION_88_4();
                    if ((v56 & 1) == 0)
                    {

                      goto LABEL_56;
                    }

                    v57 = (*(v35 + 48) + 16 * v55);
                    if (*v57 == v53 && v57[1] == v52)
                    {
                      break;
                    }

                    v59 = sub_1C7551DBC();
                    v54 = v55 + 1;
                  }

                  while ((v59 & 1) == 0);

                  v43 = v72;
                  v40 = v73;
                  if (v72)
                  {
                    continue;
                  }

                  break;
                }
              }

              v48 = v46;
              while (1)
              {
                v46 = v48 + 1;
                if (__OFADD__(v48, 1))
                {
                  goto LABEL_58;
                }

                if (v46 >= v45)
                {

                  v3 = v60;
                  v2 = v61;
                  break;
                }

                ++v48;
                if (*(v73 + 56 + 8 * v46))
                {
                  OUTLINED_FUNCTION_78_0();
                  v72 = v50 & v49;
                  goto LABEL_39;
                }
              }
            }

            v25 = v68 + 1;
            v24 = v62;
            v8 = v63;
            v10 = v64;
            v5 = v65;
            if (v68 + 1 == v62)
            {

              goto LABEL_5;
            }
          }

          goto LABEL_59;
        }
      }

      v12 = v4;
      while (1)
      {
        v4 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v4 >= v10)
        {
          return;
        }

        ++v12;
        if (*(v5 + 8 * v4))
        {
          OUTLINED_FUNCTION_78_0();
          v8 = v14 & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
    }
  }
}

void sub_1C708C5DC(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    OUTLINED_FUNCTION_109_5();
    if (v4)
    {
      v5 = 0;
      OUTLINED_FUNCTION_11();
      v8 = v7 & v6;
      v10 = (v9 + 63) >> 6;
      while (v8)
      {
        OUTLINED_FUNCTION_86();
LABEL_12:
        v15 = *(*(a1 + 56) + 8 * (v11 | (v5 << 6)));
        sub_1C75504FC();
        v16 = OUTLINED_FUNCTION_64();
        v18 = sub_1C6F78124(v16, v17);
        v20 = v19;

        if ((v20 & 1) == 0 || *(*(a2 + 56) + 8 * v18) != v15)
        {
          return;
        }
      }

      v12 = v5;
      while (1)
      {
        v5 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v5 >= v10)
        {
          return;
        }

        ++v12;
        if (*(a1 + 64 + 8 * v5))
        {
          OUTLINED_FUNCTION_78_0();
          v8 = v14 & v13;
          goto LABEL_12;
        }
      }

      __break(1u);
    }
  }
}

void sub_1C708C6E4(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    OUTLINED_FUNCTION_109_5();
    if (v26)
    {
      v4 = 0;
      v5 = v3 + 64;
      OUTLINED_FUNCTION_11();
      v8 = v7 & v6;
      v10 = (v9 + 63) >> 6;
      while (v8)
      {
        OUTLINED_FUNCTION_36_7();
        v28 = v13;
LABEL_12:
        v17 = (*(v11 + 56) + 16 * (v12 | (v4 << 6)));
        v19 = *v17;
        v18 = v17[1];
        sub_1C75504FC();
        sub_1C75504FC();
        v20 = OUTLINED_FUNCTION_15_1();
        v22 = sub_1C6F78124(v20, v21);
        v24 = v23;

        if ((v24 & 1) == 0)
        {

          return;
        }

        v25 = (*(a2 + 56) + 16 * v22);
        v26 = *v25 == v19 && v25[1] == v18;
        if (v26)
        {

          v8 = v28;
        }

        else
        {
          v27 = sub_1C7551DBC();

          v8 = v28;
          if ((v27 & 1) == 0)
          {
            return;
          }
        }
      }

      v14 = v4;
      while (1)
      {
        v4 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v4 >= v10)
        {
          return;
        }

        ++v14;
        if (*(v5 + 8 * v4))
        {
          OUTLINED_FUNCTION_78_0();
          v28 = v16 & v15;
          goto LABEL_12;
        }
      }

      __break(1u);
    }
  }
}

void Hastings.Cluster.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_1C75505AC();
  sub_1C70413CC(a1, v3);
  OUTLINED_FUNCTION_90();

  sub_1C70906F0();
}

uint64_t Hastings.Cluster.hashValue.getter()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_106();
  sub_1C75505AC();
  sub_1C70413CC(v3, v1);
  sub_1C70906F0();
  return sub_1C7551FAC();
}

uint64_t sub_1C708C918(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_1C7551F3C();
  sub_1C75505AC();
  sub_1C70413CC(v4, v2);
  sub_1C70906F0();
  return sub_1C7551FAC();
}

uint64_t sub_1C708C988(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3, void (*a4)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v10 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = a2(v10);
  }

  v11 = *(v10 + 16);
  v13[0] = v10 + 32;
  v13[1] = v11;
  result = sub_1C708CB84(v13, a3, a4, a5);
  *a1 = v10;
  return result;
}

uint64_t sub_1C708CA24()
{
  OUTLINED_FUNCTION_115();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_90();
  v3(v2);
  return v0;
}

unint64_t sub_1C708CA7C()
{
  result = qword_1EC2168F0;
  if (!qword_1EC2168F0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC2168E8, &unk_1C75656E0);
    v4[0] = sub_1C7091C74(&qword_1EC2168F8, type metadata accessor for Hastings.Feature, protocol conformance descriptor for Hastings.Feature);
    v4[1] = sub_1C6FC18BC();
    result = swift_getWitnessTable(MEMORY[0x1E69E5E38], v3, v4);
    atomic_store(result, &qword_1EC2168F0);
  }

  return result;
}

uint64_t type metadata accessor for Hastings.TimeBasedClusterer(uint64_t a1)
{
  result = qword_1EC216920;
  if (!qword_1EC216920)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C708CB84(uint64_t a1, uint64_t a2, void (*a3)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v7 = *(a1 + 8);
  result = sub_1C7551D7C();
  if (result < v7)
  {
    if (v7 >= -1)
    {
      v9 = result;
      v10 = v7 / 2;
      if (v7 <= 1)
      {
        v11 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v11 = sub_1C7550BBC();
        *(v11 + 16) = v10;
      }

      v12[0] = v11 + 32;
      v12[1] = v10;
      a3(v12, v13, a1, v9);
      *(v11 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v7 < 0)
  {
    goto LABEL_12;
  }

  if (v7)
  {
    return a4(0, v7, 1, a1);
  }

  return result;
}

void sub_1C708CC90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230, &unk_1C7563720);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v52 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v51 = &v43 - v11;
  v12 = sub_1C754DF6C();
  MEMORY[0x1EEE9AC00](v12);
  v50 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v57 = &v43 - v16;
  v44 = a2;
  if (a3 == a2)
  {
    return;
  }

  v17 = *a4;
  v48 = (v15 + 32);
  v49 = (v15 + 8);
  v53 = v17;
  v18 = (v17 + 32 * a3);
  v19 = a1 - a3;
  while (2)
  {
    v46 = v18;
    v47 = a3;
    v20 = v53 + 32 * a3;
    v22 = *(v20 + 8);
    v21 = *(v20 + 16);
    v45 = v19;
    v23 = v18;
    do
    {
      v56 = v19;
      v24 = *(v23 - 3);
      v25 = *(v23 - 2);
      v58 = *(v23 - 1);
      if (*(v21 + 16))
      {
        type metadata accessor for Hastings.Asset(0);
        v26 = v51;
        sub_1C6FD7F70();
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v26, 1, v12);
        v28 = v52;
        if (EnumTagSinglePayload != 1)
        {
          (*v48)(v57, v26, v12);
          sub_1C75504FC();
          sub_1C75504FC();
          sub_1C75504FC();
          sub_1C75504FC();
          sub_1C75504FC();
          sub_1C75504FC();
          goto LABEL_10;
        }
      }

      else
      {
        v26 = v51;
        __swift_storeEnumTagSinglePayload(v51, 1, 1, v12);
        v28 = v52;
      }

      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C754DE6C();
      if (__swift_getEnumTagSinglePayload(v26, 1, v12) != 1)
      {
        sub_1C6FD7FC8(v26, &unk_1EC219230, &unk_1C7563720);
      }

LABEL_10:
      v29 = *(v25 + 16);
      v54 = v22;
      v55 = v24;
      if (!v29)
      {
        __swift_storeEnumTagSinglePayload(v28, 1, 1, v12);
        v31 = v50;
LABEL_14:
        sub_1C754DE6C();
        v32 = v12;
        if (__swift_getEnumTagSinglePayload(v28, 1, v12) != 1)
        {
          sub_1C6FD7FC8(v28, &unk_1EC219230, &unk_1C7563720);
        }

        goto LABEL_16;
      }

      type metadata accessor for Hastings.Asset(0);
      sub_1C6FD7F70();
      v30 = __swift_getEnumTagSinglePayload(v28, 1, v12);
      v31 = v50;
      if (v30 == 1)
      {
        goto LABEL_14;
      }

      (*v48)(v50, v28, v12);
      v32 = v12;
LABEL_16:
      v33 = v57;
      v34 = sub_1C754DEDC();
      v35 = v31;
      v36 = v34;
      v37 = *v49;
      (*v49)(v35, v32);
      v37(v33, v32);

      v12 = v32;
      v38 = v56;
      if ((v36 & 1) == 0)
      {
        break;
      }

      if (!v53)
      {
        __break(1u);
        return;
      }

      v39 = *v23;
      v22 = v23[1];
      v21 = v23[2];
      v40 = v23[3];
      v41 = *(v23 - 1);
      *v23 = *(v23 - 2);
      *(v23 + 1) = v41;
      *(v23 - 3) = v22;
      *(v23 - 2) = v21;
      *(v23 - 1) = v40;
      *(v23 - 4) = v39;
      v23 -= 4;
      v42 = __CFADD__(v38, 1);
      v19 = v38 + 1;
    }

    while (!v42);
    a3 = v47 + 1;
    v18 = v46 + 4;
    v19 = v45 - 1;
    if (v47 + 1 != v44)
    {
      continue;
    }

    break;
  }
}

void sub_1C708D190(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v154 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230, &unk_1C7563720);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v150 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v150 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v160 = &v150 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v159 = &v150 - v15;
  v176 = sub_1C754DF6C();
  MEMORY[0x1EEE9AC00](v176);
  MEMORY[0x1EEE9AC00](v16);
  v175 = &v150 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v158 = &v150 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v162 = &v150 - v23;
  v161 = a3;
  v24 = a3[1];
  if (v24 < 1)
  {
    v26 = MEMORY[0x1E69E7CC0];
LABEL_118:
    v28 = *v154;
    if (!*v154)
    {
      goto LABEL_160;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_120;
    }

    goto LABEL_154;
  }

  v166 = v22;
  v151 = a4;
  v25 = 0;
  v165 = (v21 + 32);
  v168 = (v21 + 8);
  v26 = MEMORY[0x1E69E7CC0];
  v169 = v8;
  v170 = v11;
  while (1)
  {
    v27 = v25;
    v28 = v25 + 1;
    if ((v25 + 1) >= v24)
    {
      goto LABEL_36;
    }

    v171 = v24;
    v29 = v11;
    v153 = v26;
    v30 = *v161;
    v31 = v25 + 1;
    v32 = (*v161 + 32 * v28);
    v33 = v32[1];
    v35 = v32[2];
    v34 = v32[3];
    v178[0] = *v32;
    v178[1] = v33;
    v178[2] = v35;
    v178[3] = v34;
    v36 = (v30 + 32 * v27);
    v37 = v36[1];
    v38 = v36[2];
    v39 = v36[3];
    v177[0] = *v36;
    v177[1] = v37;
    v177[2] = v38;
    v177[3] = v39;
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    v40 = v163;
    LODWORD(v167) = sub_1C7089A10(v178, v177);
    v163 = v40;
    if (v40)
    {

LABEL_128:

      return;
    }

    v157 = 32 * v27;
    v41 = v27;
    v42 = v36 + 6;
    v152 = v41;
    v43 = (v41 + 2);
    v28 = v31;
    v11 = v29;
    v44 = v171;
    while (1)
    {
      v45 = v43;
      if ((v28 + 1) >= v44)
      {
        break;
      }

      v174 = v43;
      v164 = v28;
      v46 = v42[3];
      v47 = v42[4];
      v179 = v42[5];
      v48 = *v42;
      if (*(v47 + 16))
      {
        type metadata accessor for Hastings.Asset(0);
        v49 = v159;
        sub_1C6FD7F70();
        v50 = v176;
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v49, 1, v176);
        v52 = v160;
        if (EnumTagSinglePayload != 1)
        {
          (*v165)(v162, v49, v50);
          sub_1C75504FC();
          sub_1C75504FC();
          sub_1C75504FC();
          sub_1C75504FC();
          sub_1C75504FC();
          sub_1C75504FC();
          goto LABEL_13;
        }
      }

      else
      {
        v49 = v159;
        v50 = v176;
        __swift_storeEnumTagSinglePayload(v159, 1, 1, v176);
        v52 = v160;
      }

      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C754DE6C();
      if (__swift_getEnumTagSinglePayload(v49, 1, v50) != 1)
      {
        sub_1C6FD7FC8(v49, &unk_1EC219230, &unk_1C7563720);
      }

LABEL_13:
      v53 = *(v48 + 16);
      v172 = v48;
      v173 = v46;
      if (!v53)
      {
        v54 = v176;
        __swift_storeEnumTagSinglePayload(v52, 1, 1, v176);
        v56 = v158;
LABEL_17:
        sub_1C754DE6C();
        if (__swift_getEnumTagSinglePayload(v52, 1, v54) != 1)
        {
          sub_1C6FD7FC8(v52, &unk_1EC219230, &unk_1C7563720);
        }

        goto LABEL_19;
      }

      type metadata accessor for Hastings.Asset(0);
      sub_1C6FD7F70();
      v54 = v176;
      v55 = __swift_getEnumTagSinglePayload(v52, 1, v176);
      v56 = v158;
      if (v55 == 1)
      {
        goto LABEL_17;
      }

      (*v165)(v158, v52, v54);
LABEL_19:
      v57 = v162;
      v58 = sub_1C754DEDC();
      v59 = v56;
      v60 = *v168;
      (*v168)(v59, v54);
      v60(v57, v54);

      v61 = v167 ^ v58;
      v42 += 4;
      v28 = v164 + 1;
      v45 = v174;
      v43 = v174 + 1;
      v8 = v169;
      v11 = v170;
      v44 = v171;
      if (v61)
      {
        goto LABEL_22;
      }
    }

    v28 = v44;
LABEL_22:
    if ((v167 & 1) == 0)
    {
      v26 = v153;
      v27 = v152;
      goto LABEL_36;
    }

    v27 = v152;
    if (v28 < v152)
    {
      goto LABEL_153;
    }

    if (v152 >= v28)
    {
      v26 = v153;
    }

    else
    {
      v62 = v44 >= v45 ? v45 : v44;
      v63 = 32 * v62 - 8;
      v64 = v28;
      v65 = v152;
      v26 = v153;
      v66 = v157;
      do
      {
        if (v65 != --v64)
        {
          v67 = *v161;
          if (!*v161)
          {
            goto LABEL_158;
          }

          v68 = v67 + v66;
          v69 = (v67 + v63);
          v70 = *v68;
          v71 = *(v68 + 24);
          v72 = *(v68 + 8);
          v73 = *(v69 - 1);
          *v68 = *(v69 - 3);
          *(v68 + 16) = v73;
          *(v69 - 3) = v70;
          *(v69 - 1) = v72;
          *v69 = v71;
        }

        ++v65;
        v63 -= 32;
        v66 += 32;
      }

      while (v65 < v64);
    }

LABEL_36:
    v74 = v161[1];
    if (v28 < v74)
    {
      if (__OFSUB__(v28, v27))
      {
        goto LABEL_150;
      }

      if (&v28[-v27] < v151)
      {
        break;
      }
    }

LABEL_66:
    if (v28 < v27)
    {
      goto LABEL_149;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C6FB17EC(0, *(v26 + 2) + 1, 1, v26);
      v26 = v139;
    }

    v96 = *(v26 + 2);
    v95 = *(v26 + 3);
    v97 = v96 + 1;
    if (v96 >= v95 >> 1)
    {
      sub_1C6FB17EC(v95 > 1, v96 + 1, 1, v26);
      v26 = v140;
    }

    *(v26 + 2) = v97;
    v98 = v26 + 32;
    v99 = &v26[16 * v96 + 32];
    *v99 = v27;
    *(v99 + 1) = v28;
    v164 = v28;
    v28 = *v154;
    if (!*v154)
    {
      goto LABEL_159;
    }

    if (v96)
    {
      while (1)
      {
        v100 = v97 - 1;
        v101 = &v98[16 * v97 - 16];
        v102 = &v26[16 * v97];
        if (v97 >= 4)
        {
          break;
        }

        if (v97 == 3)
        {
          v103 = *(v26 + 4);
          v104 = *(v26 + 5);
          v113 = __OFSUB__(v104, v103);
          v105 = v104 - v103;
          v106 = v113;
LABEL_86:
          if (v106)
          {
            goto LABEL_136;
          }

          v118 = *v102;
          v117 = *(v102 + 1);
          v119 = __OFSUB__(v117, v118);
          v120 = v117 - v118;
          v121 = v119;
          if (v119)
          {
            goto LABEL_139;
          }

          v122 = *(v101 + 1);
          v123 = v122 - *v101;
          if (__OFSUB__(v122, *v101))
          {
            goto LABEL_142;
          }

          if (__OFADD__(v120, v123))
          {
            goto LABEL_144;
          }

          if (v120 + v123 >= v105)
          {
            if (v105 < v123)
            {
              v100 = v97 - 2;
            }

            goto LABEL_108;
          }

          goto LABEL_101;
        }

        if (v97 < 2)
        {
          goto LABEL_138;
        }

        v125 = *v102;
        v124 = *(v102 + 1);
        v113 = __OFSUB__(v124, v125);
        v120 = v124 - v125;
        v121 = v113;
LABEL_101:
        if (v121)
        {
          goto LABEL_141;
        }

        v127 = *v101;
        v126 = *(v101 + 1);
        v113 = __OFSUB__(v126, v127);
        v128 = v126 - v127;
        if (v113)
        {
          goto LABEL_143;
        }

        if (v128 < v120)
        {
          goto LABEL_115;
        }

LABEL_108:
        if (v100 - 1 >= v97)
        {
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
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
          goto LABEL_152;
        }

        if (!*v161)
        {
          goto LABEL_156;
        }

        v132 = v26;
        v133 = &v98[16 * v100 - 16];
        v134 = *v133;
        v135 = &v98[16 * v100];
        v136 = *(v135 + 1);
        v137 = v163;
        sub_1C708E6C8((*v161 + 32 * *v133), (*v161 + 32 * *v135), (*v161 + 32 * v136), v28);
        v163 = v137;
        if (v137)
        {
          goto LABEL_128;
        }

        if (v136 < v134)
        {
          goto LABEL_131;
        }

        v138 = *(v132 + 2);
        if (v100 > v138)
        {
          goto LABEL_132;
        }

        *v133 = v134;
        *(v133 + 1) = v136;
        if (v100 >= v138)
        {
          goto LABEL_133;
        }

        v97 = v138 - 1;
        sub_1C7423CF4(v135 + 16, v138 - 1 - v100, &v98[16 * v100]);
        v26 = v132;
        *(v132 + 2) = v138 - 1;
        v11 = v170;
        if (v138 <= 2)
        {
          goto LABEL_115;
        }
      }

      v107 = &v98[16 * v97];
      v108 = *(v107 - 8);
      v109 = *(v107 - 7);
      v113 = __OFSUB__(v109, v108);
      v110 = v109 - v108;
      if (v113)
      {
        goto LABEL_134;
      }

      v112 = *(v107 - 6);
      v111 = *(v107 - 5);
      v113 = __OFSUB__(v111, v112);
      v105 = v111 - v112;
      v106 = v113;
      if (v113)
      {
        goto LABEL_135;
      }

      v114 = *(v102 + 1);
      v115 = v114 - *v102;
      if (__OFSUB__(v114, *v102))
      {
        goto LABEL_137;
      }

      v113 = __OFADD__(v105, v115);
      v116 = v105 + v115;
      if (v113)
      {
        goto LABEL_140;
      }

      if (v116 >= v110)
      {
        v130 = *v101;
        v129 = *(v101 + 1);
        v113 = __OFSUB__(v129, v130);
        v131 = v129 - v130;
        if (v113)
        {
          goto LABEL_148;
        }

        if (v105 < v131)
        {
          v100 = v97 - 2;
        }

        goto LABEL_108;
      }

      goto LABEL_86;
    }

LABEL_115:
    v24 = v161[1];
    v25 = v164;
    v8 = v169;
    if (v164 >= v24)
    {
      goto LABEL_118;
    }
  }

  v75 = (v27 + v151);
  if (__OFADD__(v27, v151))
  {
    goto LABEL_151;
  }

  if (v75 >= v74)
  {
    v75 = v161[1];
  }

  if (v75 < v27)
  {
LABEL_152:
    __break(1u);
LABEL_153:
    __break(1u);
LABEL_154:
    v26 = sub_1C7420830();
LABEL_120:
    v141 = v26 + 16;
    v142 = *(v26 + 2);
    while (v142 >= 2)
    {
      if (!*v161)
      {
        goto LABEL_157;
      }

      v143 = v26;
      v144 = &v26[16 * v142];
      v145 = *v144;
      v146 = &v141[2 * v142];
      v147 = *(v146 + 1);
      v148 = v163;
      sub_1C708E6C8((*v161 + 32 * *v144), (*v161 + 32 * *v146), (*v161 + 32 * v147), v28);
      v163 = v148;
      if (v148)
      {
        break;
      }

      if (v147 < v145)
      {
        goto LABEL_145;
      }

      if (v142 - 2 >= *v141)
      {
        goto LABEL_146;
      }

      *v144 = v145;
      *(v144 + 1) = v147;
      v149 = *v141 - v142;
      if (*v141 < v142)
      {
        goto LABEL_147;
      }

      v142 = *v141 - 1;
      sub_1C7423CF4(v146 + 16, v149, v146);
      *v141 = v142;
      v26 = v143;
    }

    goto LABEL_128;
  }

  if (v28 == v75)
  {
    goto LABEL_66;
  }

  v153 = v26;
  v167 = *v161;
  v152 = v27;
  v76 = v27 - v28;
  v77 = (v167 + 32 * v28);
  v155 = v75;
  while (2)
  {
    v164 = v28;
    v78 = v167 + 32 * v28;
    v80 = *(v78 + 8);
    v79 = *(v78 + 16);
    v156 = v76;
    v157 = v77;
LABEL_46:
    v171 = v76;
    v81 = *(v77 - 3);
    v82 = *(v77 - 2);
    v179 = *(v77 - 1);
    if (*(v79 + 16))
    {
      type metadata accessor for Hastings.Asset(0);
      sub_1C6FD7F70();
      v83 = v176;
      if (__swift_getEnumTagSinglePayload(v11, 1, v176) != 1)
      {
        (*v165)(v175, v11, v83);
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        goto LABEL_52;
      }
    }

    else
    {
      v83 = v176;
      __swift_storeEnumTagSinglePayload(v11, 1, 1, v176);
    }

    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C754DE6C();
    if (__swift_getEnumTagSinglePayload(v11, 1, v83) != 1)
    {
      sub_1C6FD7FC8(v11, &unk_1EC219230, &unk_1C7563720);
    }

LABEL_52:
    v84 = *(v82 + 16);
    v173 = v81;
    v174 = v80;
    v172 = v82;
    if (v84)
    {
      type metadata accessor for Hastings.Asset(0);
      sub_1C6FD7F70();
      v85 = v176;
      if (__swift_getEnumTagSinglePayload(v8, 1, v176) != 1)
      {
        v86 = v166;
        (*v165)(v166, v8, v85);
        goto LABEL_58;
      }
    }

    else
    {
      v85 = v176;
      __swift_storeEnumTagSinglePayload(v8, 1, 1, v176);
    }

    v86 = v166;
    sub_1C754DE6C();
    if (__swift_getEnumTagSinglePayload(v8, 1, v85) != 1)
    {
      sub_1C6FD7FC8(v8, &unk_1EC219230, &unk_1C7563720);
    }

LABEL_58:
    v87 = v175;
    v88 = sub_1C754DEDC();
    v89 = *v168;
    (*v168)(v86, v85);
    v89(v87, v85);

    if ((v88 & 1) == 0)
    {
      v8 = v169;
      v11 = v170;
LABEL_64:
      v28 = v164 + 1;
      v77 = (v157 + 32);
      v76 = v156 - 1;
      if (v164 + 1 == v155)
      {
        v28 = v155;
        v26 = v153;
        v27 = v152;
        goto LABEL_66;
      }

      continue;
    }

    break;
  }

  v11 = v170;
  v90 = v171;
  if (v167)
  {
    v91 = *v77;
    v80 = v77[1];
    v79 = v77[2];
    v92 = v77[3];
    v93 = *(v77 - 1);
    *v77 = *(v77 - 2);
    *(v77 + 1) = v93;
    *(v77 - 3) = v80;
    *(v77 - 2) = v79;
    *(v77 - 1) = v92;
    *(v77 - 4) = v91;
    v77 -= 4;
    v94 = __CFADD__(v90, 1);
    v76 = v90 + 1;
    v8 = v169;
    if (v94)
    {
      goto LABEL_64;
    }

    goto LABEL_46;
  }

  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
}

void sub_1C708E0FC(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v78 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    v73 = a4;
    while (1)
    {
      v8 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v9 = *(*a3 + 8 * v8);
        v10 = *(*a3 + 8 * v6);
        v11 = v6 + 2;
        v12 = v9;
        while (1)
        {
          v13 = v11;
          if (v11 >= v5)
          {
            break;
          }

          v14 = (v9 < v10) ^ (*(*a3 + 8 * v11++) >= v12);
          v12 = *(*a3 + 8 * v13);
          if ((v14 & 1) == 0)
          {
            v8 = v13;
            goto LABEL_9;
          }
        }

        v8 = v5;
LABEL_9:
        if (v9 < v10)
        {
          if (v8 < v6)
          {
            goto LABEL_108;
          }

          if (v6 < v8)
          {
            if (v5 >= v13)
            {
              v5 = v13;
            }

            v15 = v5 - 1;
            v16 = v6;
            do
            {
              if (v16 != v15)
              {
                v17 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v18 = *(v17 + 8 * v16);
                *(v17 + 8 * v16) = *(v17 + 8 * v15);
                *(v17 + 8 * v15) = v18;
              }

              v19 = ++v16 < v15--;
            }

            while (v19);
            v5 = a3[1];
          }
        }
      }

      if (v8 < v5)
      {
        if (__OFSUB__(v8, v6))
        {
          goto LABEL_107;
        }

        if (v8 - v6 < a4)
        {
          if (__OFADD__(v6, a4))
          {
            goto LABEL_109;
          }

          if (v6 + a4 < v5)
          {
            v5 = v6 + a4;
          }

          if (v5 < v6)
          {
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
            return;
          }

          if (v8 != v5)
          {
            v20 = *a3;
            v21 = *a3 + 8 * v8 - 8;
            v22 = v6 - v8;
            do
            {
              v23 = *(v20 + 8 * v8);
              v24 = v22;
              v25 = v21;
              do
              {
                v26 = *v25;
                if (v23 >= *v25)
                {
                  break;
                }

                if (!v20)
                {
                  goto LABEL_111;
                }

                *v25 = v23;
                v25[1] = v26;
                --v25;
              }

              while (!__CFADD__(v24++, 1));
              ++v8;
              v21 += 8;
              --v22;
            }

            while (v8 != v5);
            v8 = v5;
          }
        }
      }

      if (v8 < v6)
      {
        goto LABEL_106;
      }

      v75 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB17EC(0, v7[2] + 1, 1, v7);
        v7 = v71;
      }

      v29 = v7[2];
      v28 = v7[3];
      v30 = v29 + 1;
      if (v29 >= v28 >> 1)
      {
        sub_1C6FB17EC(v28 > 1, v29 + 1, 1, v7);
        v7 = v72;
      }

      v7[2] = v30;
      v31 = v7 + 4;
      v32 = &v7[2 * v29 + 4];
      *v32 = v6;
      v32[1] = v8;
      v76 = *result;
      if (!*result)
      {
        goto LABEL_114;
      }

      if (v29)
      {
        while (1)
        {
          v33 = v30 - 1;
          v34 = &v31[2 * v30 - 2];
          v35 = &v7[2 * v30];
          if (v30 >= 4)
          {
            break;
          }

          if (v30 == 3)
          {
            v36 = v7[4];
            v37 = v7[5];
            v46 = __OFSUB__(v37, v36);
            v38 = v37 - v36;
            v39 = v46;
LABEL_56:
            if (v39)
            {
              goto LABEL_96;
            }

            v51 = *v35;
            v50 = v35[1];
            v52 = __OFSUB__(v50, v51);
            v53 = v50 - v51;
            v54 = v52;
            if (v52)
            {
              goto LABEL_99;
            }

            v55 = v34[1];
            v56 = v55 - *v34;
            if (__OFSUB__(v55, *v34))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v53, v56))
            {
              goto LABEL_104;
            }

            if (v53 + v56 >= v38)
            {
              if (v38 < v56)
              {
                v33 = v30 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v30 < 2)
          {
            goto LABEL_98;
          }

          v58 = *v35;
          v57 = v35[1];
          v46 = __OFSUB__(v57, v58);
          v53 = v57 - v58;
          v54 = v46;
LABEL_71:
          if (v54)
          {
            goto LABEL_101;
          }

          v60 = *v34;
          v59 = v34[1];
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_103;
          }

          if (v61 < v53)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v33 - 1 >= v30)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
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
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v65 = &v31[2 * v33 - 2];
          v66 = *v65;
          v67 = &v31[2 * v33];
          v68 = v67[1];
          sub_1C708F050((*a3 + 8 * *v65), (*a3 + 8 * *v67), (*a3 + 8 * v68), v76);
          if (v4)
          {
            goto LABEL_89;
          }

          if (v68 < v66)
          {
            goto LABEL_91;
          }

          v69 = v7;
          v70 = v7[2];
          if (v33 > v70)
          {
            goto LABEL_92;
          }

          *v65 = v66;
          v65[1] = v68;
          if (v33 >= v70)
          {
            goto LABEL_93;
          }

          v30 = v70 - 1;
          memmove(&v31[2 * v33], v67 + 2, 16 * (v70 - 1 - v33));
          v69[2] = v70 - 1;
          v19 = v70 > 2;
          v7 = v69;
          if (!v19)
          {
            goto LABEL_85;
          }
        }

        v40 = &v31[2 * v30];
        v41 = *(v40 - 8);
        v42 = *(v40 - 7);
        v46 = __OFSUB__(v42, v41);
        v43 = v42 - v41;
        if (v46)
        {
          goto LABEL_94;
        }

        v45 = *(v40 - 6);
        v44 = *(v40 - 5);
        v46 = __OFSUB__(v44, v45);
        v38 = v44 - v45;
        v39 = v46;
        if (v46)
        {
          goto LABEL_95;
        }

        v47 = v35[1];
        v48 = v47 - *v35;
        if (__OFSUB__(v47, *v35))
        {
          goto LABEL_97;
        }

        v46 = __OFADD__(v38, v48);
        v49 = v38 + v48;
        if (v46)
        {
          goto LABEL_100;
        }

        if (v49 >= v43)
        {
          v63 = *v34;
          v62 = v34[1];
          v46 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v46)
          {
            goto LABEL_105;
          }

          if (v38 < v64)
          {
            v33 = v30 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v5 = a3[1];
      v6 = v75;
      a4 = v73;
      if (v75 >= v5)
      {
        v78 = v7;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_115;
  }

  sub_1C708E59C(&v78, *result, a3);
LABEL_89:
}

uint64_t sub_1C708E59C(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1C7420830();
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1C708F050((*a3 + 8 * *v9), (*a3 + 8 * *v11), (*a3 + 8 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1C708E6C8(char *a1, char *a2, char *a3, char *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230, &unk_1C7563720);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v78 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v83 = &v78 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v82 = &v78 - v17;
  v18 = sub_1C754DF6C();
  MEMORY[0x1EEE9AC00](v18);
  v86 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v88 = &v78 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v81 = &v78 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v87 = &v78 - v25;
  v26 = (a2 - a1) / 32;
  v84 = (v27 + 32);
  v89 = (v27 + 8);
  v28 = (a3 - a2) / 32;
  if (v26 < v28)
  {
    sub_1C7423D00(a1, (a2 - a1) / 32, a4);
    v29 = &a4[32 * v26];
    v93 = a3;
    v79 = v29;
    while (1)
    {
      if (a4 >= v29 || a2 >= a3)
      {
        a2 = a1;
        goto LABEL_51;
      }

      v31 = *(a2 + 1);
      v32 = *(a2 + 2);
      v90 = *(a2 + 3);
      v33 = *(a4 + 1);
      v91 = *(a4 + 2);
      v92 = v31;
      v34 = *(v32 + 2);
      i = *(a4 + 3);
      v86 = v32;
      if (v34)
      {
        type metadata accessor for Hastings.Asset(0);
        v35 = v82;
        sub_1C6FD7F70();
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v35, 1, v18);
        v37 = v83;
        if (EnumTagSinglePayload != 1)
        {
          v38 = v18;
          (*v84)(v87, v35, v18);
          sub_1C75504FC();
          sub_1C75504FC();
          sub_1C75504FC();
          sub_1C75504FC();
          v39 = v91;
          sub_1C75504FC();
          sub_1C75504FC();
          goto LABEL_13;
        }
      }

      else
      {
        v35 = v82;
        __swift_storeEnumTagSinglePayload(v82, 1, 1, v18);
        v37 = v83;
      }

      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      v40 = v18;
      v39 = v91;
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C754DE6C();
      v38 = v40;
      if (__swift_getEnumTagSinglePayload(v35, 1, v40) != 1)
      {
        sub_1C6FD7FC8(v35, &unk_1EC219230, &unk_1C7563720);
      }

LABEL_13:
      v41 = *(v39 + 16);
      v88 = v33;
      if (v41)
      {
        type metadata accessor for Hastings.Asset(0);
        sub_1C6FD7F70();
        if (__swift_getEnumTagSinglePayload(v37, 1, v38) != 1)
        {
          v42 = a1;
          v43 = a4;
          v44 = v81;
          (*v84)(v81, v37, v38);
          goto LABEL_19;
        }
      }

      else
      {
        __swift_storeEnumTagSinglePayload(v37, 1, 1, v38);
      }

      v42 = a1;
      v43 = a4;
      v44 = v81;
      sub_1C754DE6C();
      if (__swift_getEnumTagSinglePayload(v37, 1, v38) != 1)
      {
        sub_1C6FD7FC8(v37, &unk_1EC219230, &unk_1C7563720);
      }

LABEL_19:
      v45 = v87;
      v46 = sub_1C754DEDC();
      v47 = v44;
      v48 = v46;
      v49 = *v89;
      (*v89)(v47, v38);
      v49(v45, v38);

      v18 = v38;
      if (v48)
      {
        v50 = a2;
        v51 = v42;
        v52 = v42 == a2;
        a2 += 32;
        a4 = v43;
      }

      else
      {
        v50 = v43;
        a4 = v43 + 32;
        v51 = v42;
        v52 = v42 == v43;
      }

      v29 = v79;
      if (!v52)
      {
        v53 = *(v50 + 1);
        *v51 = *v50;
        *(v51 + 1) = v53;
      }

      a1 = v51 + 32;
      a3 = v93;
    }
  }

  sub_1C7423D00(a2, (a3 - a2) / 32, a4);
  v29 = &a4[32 * v28];
  v82 = v13;
  v83 = a4;
  v80 = a1;
LABEL_26:
  v54 = a3 - 32;
  for (i = a2; v29 > a4 && a2 > a1; a2 = i)
  {
    v93 = v54;
    v56 = *(v29 - 3);
    v57 = *(v29 - 2);
    v58 = *(v29 - 1);
    v92 = *(a2 - 2);
    v59 = *(a2 - 1);
    v90 = v58;
    v91 = v59;
    if (*(v57 + 16))
    {
      type metadata accessor for Hastings.Asset(0);
      sub_1C6FD7F70();
      v60 = __swift_getEnumTagSinglePayload(v13, 1, v18);
      v61 = v86;
      if (v60 != 1)
      {
        (*v84)(v88, v13, v18);
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        v62 = v92;
        sub_1C75504FC();
        sub_1C75504FC();
        goto LABEL_38;
      }
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v13, 1, 1, v18);
      v61 = v86;
    }

    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    v62 = v92;
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C754DE6C();
    if (__swift_getEnumTagSinglePayload(v13, 1, v18) != 1)
    {
      sub_1C6FD7FC8(v13, &unk_1EC219230, &unk_1C7563720);
    }

LABEL_38:
    v63 = *(v62 + 16);
    v87 = v56;
    if (v63)
    {
      type metadata accessor for Hastings.Asset(0);
      sub_1C6FD7F70();
      if (__swift_getEnumTagSinglePayload(v10, 1, v18) != 1)
      {
        v64 = v29;
        (*v84)(v61, v10, v18);
        goto LABEL_44;
      }
    }

    else
    {
      __swift_storeEnumTagSinglePayload(v10, 1, 1, v18);
    }

    v64 = v29;
    sub_1C754DE6C();
    if (__swift_getEnumTagSinglePayload(v10, 1, v18) != 1)
    {
      sub_1C6FD7FC8(v10, &unk_1EC219230, &unk_1C7563720);
    }

LABEL_44:
    v65 = v10;
    v66 = v88;
    v67 = sub_1C754DEDC();
    v68 = v61;
    v69 = v67;
    v70 = *v89;
    (*v89)(v68, v18);
    v70(v66, v18);

    if (v69)
    {
      v73 = i;
      a3 = v93;
      a1 = v80;
      v29 = v64;
      v10 = v65;
      a2 = i - 32;
      v13 = v82;
      a4 = v83;
      if (v93 + 32 != i)
      {
        v74 = *(i - 1);
        *v93 = *(i - 2);
        *(a3 + 1) = v74;
        a2 = v73 - 32;
      }

      goto LABEL_26;
    }

    v71 = v93;
    a1 = v80;
    if (v64 != v93 + 32)
    {
      v72 = *(v64 - 1);
      *v93 = *(v64 - 2);
      *(v71 + 1) = v72;
    }

    v54 = v71 - 32;
    v29 = v64 - 32;
    v13 = v82;
    a4 = v83;
    v10 = v65;
  }

LABEL_51:
  v75 = (v29 - a4) / 32;
  if (a2 != a4 || a2 >= &a4[32 * v75])
  {
    memmove(a2, a4, 32 * v75);
  }

  return 1;
}

uint64_t sub_1C708F050(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = (a3 - a2) / 8;
  if (v8 < v9)
  {
    sub_1C7423CF8(a1, (a2 - a1) / 8, a4);
    v10 = &v4[8 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = *v6;
      if (*v6 >= *v4)
      {
        break;
      }

      v13 = v7 == v6;
      v6 += 8;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
    }

    v12 = *v4;
    v13 = v7 == v4;
    v4 += 8;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v12;
    goto LABEL_13;
  }

  sub_1C7423CF8(a2, (a3 - a2) / 8, a4);
  v10 = &v4[8 * v9];
LABEL_15:
  v14 = v6 - 8;
  for (v5 -= 8; v10 > v4 && v6 > v7; v5 -= 8)
  {
    v16 = *(v10 - 1);
    if (v16 < *v14)
    {
      v13 = v5 + 8 == v6;
      v6 -= 8;
      if (!v13)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 8)
    {
      *v5 = v16;
    }

    v10 -= 8;
  }

LABEL_28:
  v17 = (v10 - v4) / 8;
  if (v6 != v4 || v6 >= &v4[8 * v17])
  {
    memmove(v6, v4, 8 * v17);
  }

  return 1;
}

void *sub_1C708F1C4(uint64_t a1, uint64_t a2, long double a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2169F8, &qword_1C7565AD0);
  result = sub_1C7551AEC();
  v7 = result;
  v8 = 0;
  v28 = a1;
  v29 = result;
  v11 = *(a1 + 64);
  v10 = a1 + 64;
  v9 = v11;
  v12 = 1 << *(v10 - 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  v27 = result + 8;
  if ((v13 & v9) != 0)
  {
    while (1)
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_10:
      v19 = v16 | (v8 << 6);
      v20 = (*(v28 + 48) + 16 * v19);
      v21 = *v20;
      v22 = v20[1];
      v32 = *(*(v28 + 56) + 8 * v19);
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C7084E5C(&v32, a2, &v31, a3);
      if (v3)
      {
        break;
      }

      *(v27 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v7 = v29;
      v23 = (v29[6] + 16 * v19);
      *v23 = v21;
      v23[1] = v22;
      *(v29[7] + 8 * v19) = v31;
      v24 = v29[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_18;
      }

      v29[2] = v26;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    v7 = v29;

    return v7;
  }

  else
  {
LABEL_5:
    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v15)
      {

        return v7;
      }

      v18 = *(v10 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  return result;
}

void *sub_1C708F3B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216A00, &qword_1C7565AD8);
  result = sub_1C7551AEC();
  v6 = result;
  v7 = 0;
  v27 = a1;
  v28 = result;
  v10 = *(a1 + 64);
  v9 = a1 + 64;
  v8 = v10;
  v11 = 1 << *(v9 - 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  v26 = result + 8;
  if ((v12 & v8) != 0)
  {
    while (1)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_10:
      v18 = v15 | (v7 << 6);
      v19 = (*(v27 + 48) + 16 * v18);
      v20 = *v19;
      v21 = v19[1];
      v32 = *(*(v27 + 56) + 8 * v18);
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C7084B50(&v32, a2, a3, &v31);
      if (v3)
      {
        break;
      }

      *(v26 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v6 = v28;
      v22 = (v28[6] + 16 * v18);
      *v22 = v20;
      v22[1] = v21;
      *(v28[7] + 8 * v18) = v31;
      v23 = v28[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_18;
      }

      v28[2] = v25;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    v6 = v28;

    return v6;
  }

  else
  {
LABEL_5:
    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v14)
      {

        return v6;
      }

      v17 = *(v9 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  return result;
}

void *sub_1C708F59C(_BYTE *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(uint64_t))
{
  v5 = a1;
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = a1[32];
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();
      v5 = sub_1C708FE24(v12, v7, v5, a3);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      return v5;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  sub_1C71FAC38(0, v7, v13 - ((8 * v7 + 15) & 0x3FFFFFFFFFFFFFF0));
  v8 = OUTLINED_FUNCTION_117_0();
  v9 = a2(v8);
  if (!v3)
  {
    return v9;
  }

  swift_willThrow();
  return v5;
}

void *sub_1C708F710(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v15[1] = *MEMORY[0x1E69E9840];
  v7 = a1[32];
  v8 = v7 & 0x3F;
  v9 = ((1 << v7) + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v10 = swift_bridgeObjectRetain_n();
  if (v8 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v14 = swift_slowAlloc();
      sub_1C75504FC();
      sub_1C75504FC();
      v6 = sub_1C708FEA8(v14, v9, v6, a2, a3, sub_1C708FB1C);
      MEMORY[0x1CCA5F8E0](v14, -1, -1);

      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v10);
  v11 = v15 - ((8 * v9 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1C71FAC38(0, v9, v11);
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C708FB1C(v11, v9, v6, a2, a3);
  if (v3)
  {
    swift_willThrow();
  }

  else
  {
    v6 = v12;
  }

LABEL_6:
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  return v6;
}

void sub_1C708F944(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(a3 + 56) + 8 * v11) < 0.0)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
LABEL_15:
        sub_1C7483DE0(result, a2, v4);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      goto LABEL_15;
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1C708FA30(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(a3 + 56) + 8 * v11) > 0.0)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
LABEL_15:
        sub_1C7483DE0(result, a2, v4);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      goto LABEL_15;
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1C708FB1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a2;
  v34 = a5;
  v36 = a4;
  v30 = a1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2168B0, &qword_1C75656C0);
  MEMORY[0x1EEE9AC00](v33);
  v7 = &v29 - v6;
  v8 = type metadata accessor for Hastings.Feature(0);
  v32 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = 0;
  v11 = 0;
  v35 = a3;
  v14 = *(a3 + 64);
  v13 = a3 + 64;
  v12 = v14;
  v15 = 1 << *(v13 - 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v12;
  v18 = (v15 + 63) >> 6;
  while (v17)
  {
    v19 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
LABEL_11:
    v22 = v19 | (v11 << 6);
    v23 = v35;
    sub_1C708CA24();
    v24 = *(*(v23 + 56) + 8 * v22);
    sub_1C708CA24();
    *&v7[*(v33 + 48)] = v24;
    swift_bridgeObjectRetain_n();
    sub_1C700A254();
    if (v25)
    {
      sub_1C6FD7FC8(v7, &qword_1EC2168B0, &qword_1C75656C0);

      sub_1C7091C1C(v10, type metadata accessor for Hastings.Feature);
LABEL_15:
      *(v30 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      if (__OFADD__(v31++, 1))
      {
        __break(1u);
LABEL_18:
        sub_1C7484374();

        return;
      }
    }

    else
    {
      sub_1C700A254();
      v27 = v26;
      sub_1C6FD7FC8(v7, &qword_1EC2168B0, &qword_1C75656C0);

      sub_1C7091C1C(v10, type metadata accessor for Hastings.Feature);
      if (v27)
      {
        goto LABEL_15;
      }
    }
  }

  v20 = v11;
  while (1)
  {
    v11 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v11 >= v18)
    {
      goto LABEL_18;
    }

    v21 = *(v13 + 8 * v11);
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v17 = (v21 - 1) & v21;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_1C708FE24(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v5 = OUTLINED_FUNCTION_117_0();
    v6 = a4(v5);

    return v6;
  }

  return result;
}

void *sub_1C708FEA8(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v12 = a6(v11, a2, a3, a4, a5);
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    return v12;
  }

  return result;
}

void sub_1C708FF78(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v42 = a5;
  sub_1C6F78034(v41);
  v6 = v41[1];
  v7 = v41[3];
  v8 = v41[4];
  v34 = v41[5];
  v35 = v41[0];
  v9 = (v41[2] + 64) >> 6;
  sub_1C75504FC();

  if (v8)
  {
    while (1)
    {
      v36 = a4;
      v10 = v7;
LABEL_8:
      v12 = __clz(__rbit64(v8)) | (v10 << 6);
      v13 = (*(v35 + 48) + 16 * v12);
      v14 = v13[1];
      v15 = *(*(v35 + 56) + 8 * v12);
      v40[0] = *v13;
      v40[1] = v14;
      v40[2] = v15;
      sub_1C75504FC();
      v34(&v37, v40);

      v16 = v37;
      v17 = v38;
      v18 = v39;
      v19 = *v42;
      v21 = sub_1C6F78124(v37, v38);
      v22 = v19[2];
      v23 = (v20 & 1) == 0;
      v24 = v22 + v23;
      if (__OFADD__(v22, v23))
      {
        break;
      }

      v25 = v20;
      if (v19[3] >= v24)
      {
        if ((v36 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218DE0, &unk_1C7569730);
          sub_1C7551A3C();
        }
      }

      else
      {
        sub_1C7354094(v24, v36 & 1);
        v26 = sub_1C6F78124(v16, v17);
        if ((v25 & 1) != (v27 & 1))
        {
          goto LABEL_24;
        }

        v21 = v26;
      }

      v8 &= v8 - 1;
      v28 = *v42;
      if (v25)
      {
        v29 = *(v28[7] + 8 * v21);

        *(v28[7] + 8 * v21) = v29 - v18;
      }

      else
      {
        v28[(v21 >> 6) + 8] |= 1 << v21;
        v30 = (v28[6] + 16 * v21);
        *v30 = v16;
        v30[1] = v17;
        *(v28[7] + 8 * v21) = v18;
        v31 = v28[2];
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          goto LABEL_23;
        }

        v28[2] = v33;
      }

      a4 = 1;
      v7 = v10;
      if (!v8)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v11 = v7;
    while (1)
    {
      v10 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v10 >= v9)
      {
        sub_1C6F61E88(v35);

        return;
      }

      v8 = *(v6 + 8 * v10);
      ++v11;
      if (v8)
      {
        v36 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  sub_1C7551E4C();
  __break(1u);
}

uint64_t sub_1C7090218(uint64_t a1, int64_t a2, uint64_t a3)
{
  v4 = v3;
  v40 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;
  sub_1C75504FC();
  v12 = sub_1C75504FC();
  if (v9 > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v36 = a3;
    v37 = a2;
    v34 = &v31;
    MEMORY[0x1EEE9AC00](v12);
    v32 = v10;
    v33 = &v31 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_1C71FAC38(0, v10, v33);
    v35 = 0;
    v17 = 0;
    v10 = a1 + 56;
    v18 = 1 << *(a1 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    a3 = v19 & *(a1 + 56);
    a2 = (v18 + 63) >> 6;
    while (a3)
    {
      v20 = __clz(__rbit64(a3));
      a3 &= a3 - 1;
LABEL_12:
      v11 = v20 | (v17 << 6);
      v23 = (*(a1 + 48) + 16 * v11);
      v24 = v23[1];
      v38 = *v23;
      v39 = v24;
      sub_1C75504FC();
      v25 = sub_1C708AF7C(&v38, v37, v36);
      if (v4)
      {

        swift_willThrow();

        goto LABEL_18;
      }

      v26 = v25;

      if (v26)
      {
        *(v33 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        if (__OFADD__(v35++, 1))
        {
          __break(1u);
LABEL_17:
          sub_1C71FFA70(v33, v32, v35, a1, v13, v14, v15, v16, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, vars0, vars8);
          v17 = v28;

          goto LABEL_18;
        }
      }
    }

    v21 = v17;
    while (1)
    {
      v17 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v17 >= a2)
      {
        goto LABEL_17;
      }

      v22 = *(v10 + 8 * v17);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        a3 = (v22 - 1) & v22;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v30 = swift_slowAlloc();
  sub_1C75504FC();
  sub_1C75504FC();
  v17 = sub_1C708FEA8(v30, v10, a1, a2, a3, sub_1C7090550);

  MEMORY[0x1CCA5F8E0](v30, -1, -1);

LABEL_18:

  return v17;
}

void sub_1C70906F0()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v60 = v3;
  v4 = type metadata accessor for Hastings.Asset(0);
  v5 = OUTLINED_FUNCTION_18(v4);
  v56[0] = v6;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_85_4();
  v59 = type metadata accessor for Hastings.Feature(0);
  OUTLINED_FUNCTION_3_0();
  v56[2] = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14_2();
  v58 = v9;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_140_1();
  v56[1] = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216A08, &unk_1C7565AE0);
  v13 = OUTLINED_FUNCTION_76(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_78();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v56 - v18;
  v20 = v2 + 64;
  OUTLINED_FUNCTION_11();
  v23 = v22 & v21;
  v25 = (v24 + 63) >> 6;
  v57 = v2;
  sub_1C75504FC();
  v26 = 0;
  v27 = 0;
  v61 = v16;
  v62 = v19;
  while (1)
  {
    v63 = v26;
    if (!v23)
    {
      break;
    }

    v28 = v27;
LABEL_8:
    v29 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    v30 = v29 | (v28 << 6);
    v31 = v57;
    OUTLINED_FUNCTION_2_19();
    sub_1C708CA24();
    v32 = *(*(v31 + 56) + 8 * v30);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2168B0, &qword_1C75656C0);
    v34 = *(v33 + 48);
    OUTLINED_FUNCTION_6_10();
    v35 = v61;
    sub_1C7091B68();
    *(v35 + v34) = v32;
    OUTLINED_FUNCTION_25_8();
    __swift_storeEnumTagSinglePayload(v36, v37, v38, v33);
    sub_1C75504FC();
    v19 = v62;
LABEL_9:
    sub_1C7091CBC();
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2168B0, &qword_1C75656C0);
    if (__swift_getEnumTagSinglePayload(v19, 1, v39) == 1)
    {

      MEMORY[0x1CCA5E460](v63);
      OUTLINED_FUNCTION_25_0();
      return;
    }

    v40 = *(v39 + 48);
    OUTLINED_FUNCTION_6_10();
    v41 = v58;
    sub_1C7091B68();
    v42 = *&v19[v40];
    memcpy(v64, v60, sizeof(v64));
    sub_1C75505AC();
    switch(*(v41 + 16))
    {
      case 1:
        OUTLINED_FUNCTION_25_10();
        break;
      case 2:
        OUTLINED_FUNCTION_43_8();
        break;
      case 3:
        OUTLINED_FUNCTION_65_7();
        break;
      case 4:
        OUTLINED_FUNCTION_44_8();
        break;
      case 5:
        OUTLINED_FUNCTION_24_14();
        break;
      default:
        break;
    }

    sub_1C75505AC();

    sub_1C754F58C();
    OUTLINED_FUNCTION_5_23();
    sub_1C7091C74(&qword_1EC215238, v47, MEMORY[0x1E69C1938]);
    OUTLINED_FUNCTION_93_4();
    sub_1C755059C();
    OUTLINED_FUNCTION_0_32();
    sub_1C7091C1C(v41, v48);
    MEMORY[0x1CCA5E460](*(v42 + 16));
    v49 = *(v42 + 16);
    if (v49)
    {
      OUTLINED_FUNCTION_15_4();
      v51 = v42 + v50;
      v53 = *(v52 + 72);
      do
      {
        OUTLINED_FUNCTION_3_22();
        sub_1C708CA24();
        sub_1C75505AC();
        OUTLINED_FUNCTION_1_30();
        sub_1C7091C1C(v0, v54);
        v51 += v53;
        --v49;
      }

      while (v49);
    }

    v55 = sub_1C7551FAC();
    v19 = v62;
    v26 = v55 ^ v63;
  }

  while (1)
  {
    v28 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v28 >= v25)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2168B0, &qword_1C75656C0);
      OUTLINED_FUNCTION_84();
      __swift_storeEnumTagSinglePayload(v43, v44, v45, v46);
      v23 = 0;
      goto LABEL_9;
    }

    v23 = *(v20 + 8 * v28);
    ++v27;
    if (v23)
    {
      v27 = v28;
      goto LABEL_8;
    }
  }

  __break(1u);
}

uint64_t sub_1C7090B94(const void *a1, uint64_t a2)
{
  v2 = a2 + 64;
  OUTLINED_FUNCTION_11();
  v5 = v4 & v3;
  v7 = (v6 + 63) >> 6;
  result = sub_1C75504FC();
  v9 = 0;
  v10 = 0;
  v24 = v7;
  v25 = v2;
  if (!v5)
  {
    goto LABEL_3;
  }

  do
  {
    v29 = v9;
LABEL_7:
    v28 = v5;
    v12 = *(*(a2 + 56) + 8 * (__clz(__rbit64(v5)) | (v10 << 6)));
    memcpy(__dst, a1, sizeof(__dst));
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75505AC();

    MEMORY[0x1CCA5E460](*(v12 + 16));
    v13 = *(v12 + 16);
    if (v13)
    {
      v14 = (v12 + 80);
      do
      {
        v15 = *(v14 - 2);
        v16 = *(v14 - 1);
        v17 = *v14;
        v14 += 7;
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75505AC();
        sub_1C75505AC();
        MEMORY[0x1CCA5E460](v15);
        MEMORY[0x1CCA5E460](v16);
        sub_1C7041DF0(__dst, v17, v18, v19, v20, v21, v22, v23);

        --v13;
      }

      while (v13);
    }

    v5 = (v28 - 1) & v28;

    result = sub_1C7551FAC();
    v9 = result ^ v29;
    v7 = v24;
    v2 = v25;
  }

  while (v5);
LABEL_3:
  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return MEMORY[0x1CCA5E460](v9);
    }

    v5 = *(v2 + 8 * v11);
    ++v10;
    if (v5)
    {
      v29 = v9;
      v10 = v11;
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C7090D88(const void *a1, uint64_t a2)
{
  v4 = a2 + 64;
  OUTLINED_FUNCTION_11();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;
  result = sub_1C75504FC();
  v11 = 0;
  v12 = 0;
  if (!v7)
  {
    goto LABEL_3;
  }

  do
  {
    v13 = v12;
LABEL_7:
    v14 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v15 = *(*(a2 + 56) + 8 * (v14 | (v13 << 6)));
    memcpy(__dst, a1, sizeof(__dst));
    sub_1C75504FC();
    sub_1C75505AC();

    if (v15 == 0.0)
    {
      v16 = 0.0;
    }

    else
    {
      v16 = v15;
    }

    MEMORY[0x1CCA5E4A0](*&v16);
    result = sub_1C7551FAC();
    v11 ^= result;
  }

  while (v7);
LABEL_3:
  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v9)
    {

      return MEMORY[0x1CCA5E460](v11);
    }

    v7 = *(v4 + 8 * v13);
    ++v12;
    if (v7)
    {
      v12 = v13;
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C7090ECC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_1C7090F20()
{
  result = qword_1EC216900;
  if (!qword_1EC216900)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Hastings.Cluster, &type metadata for Hastings.Cluster, v0, v1);
    atomic_store(result, &qword_1EC216900);
  }

  return result;
}

unint64_t sub_1C7090F78()
{
  result = qword_1EC216908;
  if (!qword_1EC216908)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Hastings.Cluster, &type metadata for Hastings.Cluster, v0, v1);
    atomic_store(result, &qword_1EC216908);
  }

  return result;
}

unint64_t sub_1C7091018()
{
  result = qword_1EC216918;
  if (!qword_1EC216918)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Hastings.Cluster, &type metadata for Hastings.Cluster, v0, v1);
    atomic_store(result, &qword_1EC216918);
  }

  return result;
}

uint64_t sub_1C709106C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1C70910AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1C7091148(uint64_t a1)
{
  sub_1C754FF1C();
  if (v1 <= 0x3F)
  {
    sub_1C7091218();
    if (v2 <= 0x3F)
    {
      sub_1C709125C(319);
      if (v3 <= 0x3F)
      {
        sub_1C70912D4();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1C7091218()
{
  result = qword_1EDD10110;
  if (!qword_1EDD10110)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDD10110);
  }

  return result;
}

void sub_1C709125C(uint64_t a1)
{
  if (!qword_1EC216930)
  {
    _s18TimeBasedClustererV18DiagnosticReporterCMa();
    v1 = sub_1C755149C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC216930);
    }
  }
}

unint64_t sub_1C70912D4()
{
  result = qword_1EC216938;
  if (!qword_1EC216938)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC216938);
  }

  return result;
}

uint64_t _s17ClusterComparatorV18DiagnosticReporterC6ReasonOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return v5 + 1;
  }

  if (a2 >= 0x7D)
  {
    if (a2 + 131 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 131) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 132;
    return v5 + 1;
  }

LABEL_17:
  v5 = ((*a1 >> 6) & 0xFFFFFF83 | (4 * ((*a1 >> 1) & 0x1F))) ^ 0x7F;
  if (v5 >= 0x7C)
  {
    v5 = -1;
  }

  return v5 + 1;
}

_BYTE *_s17ClusterComparatorV18DiagnosticReporterC6ReasonOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 131 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 131) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x7D)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x7C)
  {
    v6 = ((a2 - 125) >> 8) + 1;
    *result = a2 - 125;
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
          *result = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C70914E0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1C7091520(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *_s7ClusterV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C7091660()
{
  result = qword_1EC216940;
  if (!qword_1EC216940)
  {
    result = swift_getWitnessTable(byte_1C7565990, &_s7ClusterV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC216940);
  }

  return result;
}

unint64_t sub_1C70916B8()
{
  result = qword_1EC216948;
  if (!qword_1EC216948)
  {
    result = swift_getWitnessTable(byte_1C7565900, &_s7ClusterV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC216948);
  }

  return result;
}

unint64_t sub_1C7091710()
{
  result = qword_1EC216950;
  if (!qword_1EC216950)
  {
    result = swift_getWitnessTable(asc_1C7565928, &_s7ClusterV10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC216950);
  }

  return result;
}

unint64_t sub_1C7091764()
{
  result = qword_1EC216980;
  if (!qword_1EC216980)
  {
    result = swift_getWitnessTable(aU_28, &_s17ClusterComparatorV18DiagnosticReporterC6ReasonO10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC216980);
  }

  return result;
}

unint64_t sub_1C70917B8()
{
  result = qword_1EC216988;
  if (!qword_1EC216988)
  {
    result = swift_getWitnessTable(byte_1C75662F4, &_s17ClusterComparatorV18DiagnosticReporterC6ReasonO19AssetUUIDCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC216988);
  }

  return result;
}

unint64_t sub_1C709180C()
{
  result = qword_1EC216990;
  if (!qword_1EC216990)
  {
    result = swift_getWitnessTable(byte_1C75662A4, &_s17ClusterComparatorV18DiagnosticReporterC6ReasonO21ClusterSizeCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC216990);
  }

  return result;
}

unint64_t sub_1C7091860()
{
  result = qword_1EC216998;
  if (!qword_1EC216998)
  {
    result = swift_getWitnessTable(aE_26, &_s17ClusterComparatorV18DiagnosticReporterC6ReasonO17BestWinCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC216998);
  }

  return result;
}

unint64_t sub_1C70918B4()
{
  result = qword_1EC2169A0;
  if (!qword_1EC2169A0)
  {
    result = swift_getWitnessTable(byte_1C7566204, &_s17ClusterComparatorV18DiagnosticReporterC6ReasonO29NumberOfBetterRanksCodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC2169A0);
  }

  return result;
}

unint64_t sub_1C7091908()
{
  result = qword_1EC2169B0;
  if (!qword_1EC2169B0)
  {
    result = swift_getWitnessTable(byte_1C75661B4, &_s18TimeBasedClustererV18DiagnosticReporterC10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC2169B0);
  }

  return result;
}

unint64_t sub_1C709195C()
{
  result = qword_1EC2169C0;
  if (!qword_1EC2169C0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC2169B8, &qword_1C7565AB0);
    v4[0] = sub_1C70919E0();
    result = swift_getWitnessTable(MEMORY[0x1E69E6300], v3, v4);
    atomic_store(result, &qword_1EC2169C0);
  }

  return result;
}

unint64_t sub_1C70919E0()
{
  result = qword_1EC2169C8;
  if (!qword_1EC2169C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Hastings.Cluster, &type metadata for Hastings.Cluster, v0, v1);
    atomic_store(result, &qword_1EC2169C8);
  }

  return result;
}

unint64_t sub_1C7091A34()
{
  result = qword_1EC2169D8;
  if (!qword_1EC2169D8)
  {
    result = swift_getWitnessTable(aU_29, &_s17ClusterComparatorV18DiagnosticReporterC10CodingKeysON, v0, v1);
    atomic_store(result, &qword_1EC2169D8);
  }

  return result;
}

unint64_t sub_1C7091A88()
{
  result = qword_1EC2169E8;
  if (!qword_1EC2169E8)
  {
    v5[4] = v0;
    v5[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC2169E0, &unk_1C7565AC0);
    v4 = sub_1C7091B14();
    v5[0] = MEMORY[0x1E69E6160];
    v5[1] = v4;
    result = swift_getWitnessTable(MEMORY[0x1E69E5E38], v3, v5);
    atomic_store(result, &qword_1EC2169E8);
  }

  return result;
}

unint64_t sub_1C7091B14()
{
  result = qword_1EC2169F0;
  if (!qword_1EC2169F0)
  {
    result = swift_getWitnessTable(byte_1C75659B8, &_s17ClusterComparatorV18DiagnosticReporterC6ReasonON, v0, v1);
    atomic_store(result, &qword_1EC2169F0);
  }

  return result;
}

uint64_t sub_1C7091B68()
{
  OUTLINED_FUNCTION_115();
  v1(0);
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_90();
  v3(v2);
  return v0;
}

unint64_t sub_1C7091BC0()
{
  result = qword_1EC216A18;
  if (!qword_1EC216A18)
  {
    result = swift_getWitnessTable(byte_1C7566124, &_s18TimeBasedClustererV5ErrorON, v0, v1);
    atomic_store(result, &qword_1EC216A18);
  }

  return result;
}

uint64_t sub_1C7091C1C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C7091C74(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_1C7091CBC()
{
  OUTLINED_FUNCTION_115();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_90();
  v4(v3);
  return v0;
}

uint64_t sub_1C7091D14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Hastings.Asset(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

_BYTE *sub_1C7091D98(_BYTE *result, unsigned int a2, unsigned int a3)
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