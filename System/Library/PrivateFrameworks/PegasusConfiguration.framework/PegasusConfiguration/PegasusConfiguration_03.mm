void *sub_1D8CCD234()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACE58, &unk_1D8CDCD88);
  v2 = *v0;
  v3 = sub_1D8CD7FC4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1D8CCD374(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACE58, &unk_1D8CDCD88);
  result = sub_1D8CD7FD4();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + (v12 | (v6 << 6)));
        sub_1D8CD8254();
        sub_1D8CD7BD4();

        result = sub_1D8CD8284();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

void static PegasusConfigContainerURLProvider.containerURL<A>(using:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC668, &qword_1D8CD8FA0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_2_18();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_37();
  v12 = v11 - v10;
  OUTLINED_FUNCTION_2_18();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_37();
  (*(v16 + 16))(v15 - v14, a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACA98, &qword_1D8CDA918);
  if (swift_dynamicCast())
  {
    sub_1D8C9B778(v21, &v23);
    v17 = v24;
    v18 = v25;
    __swift_project_boxed_opaque_existential_1(&v23, v24);
    (*(v18 + 8))(v17, v18);
    __swift_destroy_boxed_opaque_existential_0Tm(&v23);
  }

  else
  {
    v22 = 0;
    memset(v21, 0, sizeof(v21));
    sub_1D8CCDC14(v21);
    if (qword_1ED9C4C18 != -1)
    {
      OUTLINED_FUNCTION_0_20(&qword_1ED9C4C18);
    }

    v19 = qword_1ED9C4C20;
    os_unfair_lock_lock((qword_1ED9C4C20 + 32));
    sub_1D8C95404((v19 + 16), &v23);
    os_unfair_lock_unlock((v19 + 32));
    if (!v2)
    {
      (*(v8 + 104))(v12, *MEMORY[0x1E6968F58], v6);
      v20 = sub_1D8CD7554();
      OUTLINED_FUNCTION_1_19(v20);
    }
  }
}

void static PegasusConfigContainerURLProvider.containerURL()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC668, &qword_1D8CD8FA0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_2_18();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_37();
  v8 = v7 - v6;
  if (qword_1ED9C4C18 != -1)
  {
    OUTLINED_FUNCTION_0_20(&qword_1ED9C4C18);
  }

  v9 = qword_1ED9C4C20;
  os_unfair_lock_lock((qword_1ED9C4C20 + 32));
  sub_1D8C95404((v9 + 16), &v11);
  os_unfair_lock_unlock((v9 + 32));
  if (!v0)
  {
    (*(v4 + 104))(v8, *MEMORY[0x1E6968F58], v2);
    v10 = sub_1D8CD7554();
    OUTLINED_FUNCTION_1_19(v10);
  }
}

uint64_t sub_1D8CCDC14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACAA0, &qword_1D8CDCEA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for PegasusConfigContainerURLProvider(_BYTE *result, int a2, int a3)
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

uint64_t DataWarehouseConfig.dataWarehouseUrl.getter()
{
  OUTLINED_FUNCTION_5_5();
  v2 = sub_1D8CD7554();
  v3 = *(*(v2 - 8) + 16);

  return v3(v0, v1, v2);
}

uint64_t DataWarehouseConfig.databaseAlias.getter()
{
  v1 = *(v0 + *(type metadata accessor for DataWarehouseConfig(0) + 20));

  return v1;
}

uint64_t type metadata accessor for DataWarehouseConfig(uint64_t a1)
{
  result = qword_1ECAACE68;
  if (!qword_1ECAACE68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DataWarehouseConfig.streamDescriptor.getter()
{
  v2 = OUTLINED_FUNCTION_5_5();
  result = type metadata accessor for DataWarehouseConfig(v2);
  *v0 = *(v1 + *(result + 24));
  return result;
}

uint64_t DataWarehouseConfig.databaseUrl.getter()
{
  OUTLINED_FUNCTION_5_5();
  v0 = sub_1D8CD7484();
  OUTLINED_FUNCTION_3();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_37();
  v6 = v5 - v4;
  (*(v2 + 104))(v5 - v4, *MEMORY[0x1E6968F68], v0);
  sub_1D8C94EC8();
  sub_1D8CD7544();
  return (*(v2 + 8))(v6, v0);
}

uint64_t URL.aggregationSchemaUrl.getter()
{
  OUTLINED_FUNCTION_5_5();
  v0 = sub_1D8CD7484();
  OUTLINED_FUNCTION_3();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_37();
  v6 = v5 - v4;
  v7 = sub_1D8CD7554();
  OUTLINED_FUNCTION_3();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_37();
  v13 = v12 - v11;
  (*(v2 + 104))(v6, *MEMORY[0x1E6968F70], v0);
  sub_1D8C94EC8();
  sub_1D8CD7544();
  (*(v2 + 8))(v6, v0);
  sub_1D8CD74C4();
  return (*(v9 + 8))(v13, v7);
}

uint64_t DataWarehouseConfig.init(dataWarehouseUrl:streamDescriptor:fileManager:)@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC668, &qword_1D8CD8FA0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v34 - v12;
  v14 = sub_1D8CD7554();
  OUTLINED_FUNCTION_3();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_37();
  v20 = v19 - v18;
  v21 = *a2;
  v34 = type metadata accessor for DataWarehouseConfig(0);
  v35 = a4;
  v22 = (a4 + *(v34 + 20));
  *v22 = 0x73756F6865726177;
  v22[1] = 0xE900000000000065;
  v37 = a1;
  sub_1D8CCE544(a1, v11);
  OUTLINED_FUNCTION_2(v11);
  if (v23)
  {
    v39 = v21;
    v24 = v36;
    NSFileManager.dataWarehouseUrl(for:)(&v39, v13);
    if (v24)
    {
      sub_1D8CC7244(v37);

      result = OUTLINED_FUNCTION_2(v11);
      if (v23)
      {
        return result;
      }

      v26 = v11;
      return sub_1D8CC7244(v26);
    }

    OUTLINED_FUNCTION_2(v11);
    if (!v23)
    {
      sub_1D8CC7244(v11);
    }
  }

  else
  {
    (*(v16 + 32))(v13, v11, v14);
    __swift_storeEnumTagSinglePayload(v13, 0, 1, v14);
  }

  OUTLINED_FUNCTION_2(v13);
  if (v23)
  {
    sub_1D8CC7244(v13);
    sub_1D8CCEA74();
    swift_allocError();
    *v27 = 0;
    v27[1] = 0;
    swift_willThrow();

    v26 = v37;
    return sub_1D8CC7244(v26);
  }

  v38 = v21;
  v36 = a3;
  v28 = *(v16 + 32);
  (v28)(v20, v13, v14);
  v29 = sub_1D8CD7474();
  if (v29)
  {
    sub_1D8CC7244(v37);

    *(v35 + *(v34 + 24)) = v38;
    return v28();
  }

  else
  {
    v30 = sub_1D8CD7494();
    v32 = v31;
    sub_1D8CCEA74();
    swift_allocError();
    *v33 = v30;
    v33[1] = v32;
    swift_willThrow();

    sub_1D8CC7244(v37);
    return (*(v16 + 8))(v20, v14);
  }
}

uint64_t sub_1D8CCE544(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC668, &qword_1D8CD8FA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t NSFileManager.dataWarehouseUrl(for:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v4 = sub_1D8CD7484();
  OUTLINED_FUNCTION_3();
  v51 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_37();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC668, &qword_1D8CD8FA0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v46 - v11;
  v13 = sub_1D8CD7554();
  OUTLINED_FUNCTION_3();
  v15 = v14;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v46 - v20;
  v22 = *a1;
  v23 = v54;
  sub_1D8C950EC(v2);
  if (v23)
  {

    __swift_storeEnumTagSinglePayload(v12, 1, 1, v13);
    sub_1D8CC7244(v12);
    sub_1D8CC082C();
    swift_allocError();
    *v24 = 0;
    v24[1] = 0;
    return swift_willThrow();
  }

  else
  {
    v46[1] = 0;
    v47 = v19;
    v48 = v22;
    v50 = v9;
    v54 = v4;
    __swift_storeEnumTagSinglePayload(v12, 0, 1, v13);
    (*(v15 + 32))(v21, v12, v13);
    v26 = v15;
    if (qword_1ED9C4150 != -1)
    {
      swift_once();
    }

    v27 = sub_1D8CD7A04();
    __swift_project_value_buffer(v27, qword_1ED9C5668);
    v28 = *(v15 + 16);
    v29 = v47;
    v49 = v21;
    v28(v47, v21, v13);
    v30 = sub_1D8CD79E4();
    v31 = sub_1D8CD7E04();
    v32 = v13;
    if (os_log_type_enabled(v30, v31))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v53[0] = v34;
      *v33 = 136315138;
      sub_1D8C9D2C0();
      v35 = sub_1D8CD8124();
      v36 = v29;
      v38 = v37;
      v39 = *(v26 + 8);
      v39(v36, v32);
      v40 = sub_1D8C9D088(v35, v38, v53);

      *(v33 + 4) = v40;
      _os_log_impl(&dword_1D8C92000, v30, v31, "Container URL: %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v34);
      MEMORY[0x1DA727900](v34, -1, -1);
      MEMORY[0x1DA727900](v33, -1, -1);
    }

    else
    {

      v39 = *(v26 + 8);
      v39(v29, v13);
    }

    v41 = v54;
    v43 = v50;
    v42 = v51;
    if (v48 == 2)
    {
      v53[0] = 0x6572615773706C41;
      v53[1] = 0xEF32566573756F68;
      (*(v51 + 104))(v50, *MEMORY[0x1E6968F70], v54);
      sub_1D8C94EC8();
      v44 = v49;
      sub_1D8CD7544();
      (*(v42 + 8))(v43, v41);
      v39(v44, v32);
      v45 = 0;
    }

    else
    {
      v39(v49, v32);
      v45 = 1;
    }

    return __swift_storeEnumTagSinglePayload(v52, v45, 1, v32);
  }
}

unint64_t sub_1D8CCEA74()
{
  result = qword_1ECAACE60;
  if (!qword_1ECAACE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAACE60);
  }

  return result;
}

unint64_t FeedbackStreamDescriptor.metricsMessageName.getter()
{
  if (*v0 != 2)
  {
    return 0;
  }

  v2 = FeedbackStreamDescriptor.rawValue.getter();

  MEMORY[0x1DA726A90](46, 0xE100000000000000);

  MEMORY[0x1DA726A90](0xD000000000000016, 0x80000001D8CDF990);

  return v2;
}

uint64_t FeedbackStreamDescriptor.metricsTableName.getter()
{
  if (*v0 != 2)
  {
    return 0;
  }

  v19 = 2;
  v1 = FeedbackStreamDescriptor.rawValue.getter();
  v17 = 46;
  v18 = 0xE100000000000000;
  MEMORY[0x1EEE9AC00](v1);
  v16[2] = &v17;
  v4 = sub_1D8CCEE98(0x7FFFFFFFFFFFFFFFLL, 1, sub_1D8CBC894, v16, v2, v3);
  v5 = sub_1D8CCECB0(v4);
  v7 = v6;
  v9 = v8;
  v11 = v10;

  if (!v11)
  {
    return 0;
  }

  v12 = sub_1D8CCED14(v5, v7, v9, v11, 95, 0xE100000000000000);
  v14 = v13;

  v17 = v12;
  v18 = v14;

  MEMORY[0x1DA726A90](7169651, 0xE300000000000000);

  return v17;
}

uint64_t sub_1D8CCECB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32 * v1);

  return v2;
}

uint64_t sub_1D8CCED14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = sub_1D8CD7BE4();
  v7 = sub_1D8CD7EF4();
  v8 = __OFADD__(v6, v7);
  result = v6 + v7;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x1DA726A30](result);
    sub_1D8CCF35C();
    sub_1D8CD7C14();
    sub_1D8CD7C14();
    return 0;
  }

  return result;
}

uint64_t FeedbackStreamDescriptor.metricsViewName.getter()
{
  if (*v0 != 2)
  {
    return 0;
  }

  v2 = FeedbackStreamDescriptor.metricsTableName.getter();

  MEMORY[0x1DA726A90](95, 0xE100000000000000);

  MEMORY[0x1DA726A90](2003134838, 0xE400000000000000);

  return v2;
}

uint64_t sub_1D8CCEE98(uint64_t a1, char a2, uint64_t (*a3)(void *), uint64_t a4, uint64_t a5, unint64_t a6)
{
  v43 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v10 = a5;
  v13 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v14 = HIBYTE(a6) & 0xF) : (v14 = a5 & 0xFFFFFFFFFFFFLL), !v14))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v13 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v13 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    sub_1D8CD7C74();
    OUTLINED_FUNCTION_4_9();
    sub_1D8CC353C();
    v15 = v29;
    v8 = *(v29 + 16);
    v30 = *(v29 + 24);
LABEL_37:
    v9 = v8 + 1;
    if (v8 < v30 >> 1)
    {
LABEL_38:
      *(v15 + 16) = v9;
      v31 = (v15 + 32 * v8);
      v31[4] = v6;
      v31[5] = v10;
      v31[6] = v11;
      v31[7] = v12;
      return v15;
    }

LABEL_41:
    sub_1D8CC353C();
    v15 = v32;
    goto LABEL_38;
  }

  v6 = a4;
  v15 = 4 * v14;
  v41 = MEMORY[0x1E69E7CC0];
  v16 = 15;
  while (1)
  {
    v39 = v16;
    while (1)
    {
      v12 = v16 >> 14;
      if (v16 >> 14 == v15)
      {
        v16 = v39;
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_3_12();
      v17 = sub_1D8CD7C64();
      v11 = v18;
      v42[0] = v17;
      v42[1] = v18;
      v19 = v43(v42);
      if (v7)
      {

        return v15;
      }

      v20 = v19;

      if (v20)
      {
        break;
      }

      OUTLINED_FUNCTION_3_12();
      v16 = sub_1D8CD7BF4();
    }

    v22 = (v39 >> 14 == v12) & a2;
    if (v22)
    {
      goto LABEL_20;
    }

    if (v12 < v39 >> 14)
    {
      break;
    }

    v40 = sub_1D8CD7C74();
    v35 = v24;
    v36 = v23;
    v34 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1D8CC353C();
      v41 = v27;
    }

    v12 = *(v41 + 16);
    v11 = v12 + 1;
    if (v12 >= *(v41 + 24) >> 1)
    {
      sub_1D8CC353C();
      v41 = v28;
    }

    *(v41 + 16) = v11;
    v26 = (v41 + 32 * v12);
    v26[4] = v40;
    v26[5] = v36;
    v26[6] = v35;
    v26[7] = v34;
LABEL_20:
    OUTLINED_FUNCTION_3_12();
    v16 = sub_1D8CD7BF4();
    if ((v22 & 1) == 0 && *(v41 + 16) == a1)
    {
LABEL_30:
      if (v16 >> 14 == v15 && (a2 & 1) != 0)
      {

        return v41;
      }

      if (v15 < v16 >> 14)
      {
        __break(1u);
      }

      else
      {
        sub_1D8CD7C74();
        OUTLINED_FUNCTION_4_9();
        v15 = v41;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_36:
          v8 = *(v15 + 16);
          v30 = *(v15 + 24);
          goto LABEL_37;
        }
      }

      sub_1D8CC353C();
      v15 = v33;
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8CCF22C(uint64_t a1)
{
  result = sub_1D8CD7554();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DataWarehouseConfig.Context(_BYTE *result, int a2, int a3)
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

unint64_t sub_1D8CCF35C()
{
  result = qword_1ECAAC4A8;
  if (!qword_1ECAAC4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAC4A8);
  }

  return result;
}

double sub_1D8CCF3B0()
{
  v1 = sub_1D8CD7AD4();
  v2 = [v0 valueForKey_];

  if (v2)
  {
    sub_1D8CD7F84();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }
  }

  else
  {
    sub_1D8C953A4(v7, &qword_1ECAAC680, &qword_1D8CD8FB0);
  }

  return 0.0;
}

size_t sub_1D8CCF4A4()
{
  v2 = v0;
  v3 = sub_1D8CD7564();
  OUTLINED_FUNCTION_3();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_37();
  v9 = v8 - v7;
  v10 = sub_1D8CD7DF4();
  if (v1)
  {
    return v3;
  }

  v11 = v10;
  result = [v0 seekToEndOfFile];
  if ((result & 0x8000000000000000) == 0)
  {
    v13 = result;
    v14 = mmap(0, result, 1, 1, [v0 fileDescriptor], 0);
    if (v14)
    {
      v15 = v14;
      (*(v5 + 104))(v9, *MEMORY[0x1E6969020], v3);
      v3 = MEMORY[0x1DA7263E0](v15, v13, v9);
    }

    else
    {
      v16 = sub_1D8CD7B04();
      v3 = v17;
      v18 = MEMORY[0x1DA726880]();
      v19 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      sub_1D8CB7074(v16, v3, v18, 0);
      swift_willThrow();
    }

    sub_1D8CD22D8(v2, v11);
    return v3;
  }

  __break(1u);
  return result;
}

id ConfigFactoryInternal.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ConfigFactoryInternal.load(url:userAgent:userDefaults:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_1D8CD7554();
  OUTLINED_FUNCTION_3();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_37();
  v14 = v13 - v12;
  type metadata accessor for ConfigInternal();
  (*(v10 + 16))(v14, a1, v8);
  v15 = a4;

  return sub_1D8CCF7B4(v14, a2, a3, a4);
}

id sub_1D8CCF7B4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v23 = a3;
  v24 = a4;
  v8 = sub_1D8CD7554();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  sub_1D8C97460(0, &qword_1ED9C4130, 0x1E696AC00);
  (*(v9 + 16))(v12, a1, v8);
  v13 = sub_1D8CAB278(v12);
  v21 = a2;
  v22 = v8;
  v14 = a1;
  v16 = sub_1D8CCF4A4();
  v18 = v17;

  v19 = objc_allocWithZone(v5);
  v20 = sub_1D8CD0A18(v16, v18, v21, v23, v24);
  (*(v9 + 8))(v14, v22);
  return v20;
}

id ConfigFactoryInternal.load(data:userAgent:userDefaults:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = objc_allocWithZone(type metadata accessor for ConfigInternal());

  sub_1D8CADCA0(a1, a2);
  v11 = a5;
  return sub_1D8CD0A18(a1, a2, a3, a4, a5);
}

id ConfigFactoryInternal.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_1D8CCFF08()
{
  v1 = *(v0 + OBJC_IVAR____TtC20PegasusConfiguration14ConfigInternal_userAgent);

  return v1;
}

id sub_1D8CCFF5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  a3();
  if (v3)
  {
    v4 = sub_1D8CD7AD4();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_1D8CCFFB8()
{
  v1 = *(v0 + OBJC_IVAR____TtC20PegasusConfiguration14ConfigInternal_clientName);

  return v1;
}

uint64_t sub_1D8CD0094()
{
  sub_1D8C97460(0, &unk_1ED9C54D0, 0x1E696AEC0);
  sub_1D8CD0158(0xD000000000000015, 0x80000001D8CDFB00, v2);
  if (v3)
  {
    if (swift_dynamicCast())
    {
      return v1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1D8C953A4(v2, &qword_1ECAAC680, &qword_1D8CD8FB0);
    return 0;
  }
}

void sub_1D8CD0158(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a5@<X8>)
{
  sub_1D8CD0EE8(a1, a2, &v8);
  if (!v9)
  {
    sub_1D8C953A4(&v8, &qword_1ECAAC680, &qword_1D8CD8FB0);
    goto LABEL_6;
  }

  v6 = sub_1D8C97460(0, &qword_1ED9C54E0, 0x1E69E58C0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    *a5 = 0u;
    *(a5 + 16) = 0u;
    return;
  }

  if ([v7 isKindOfClass_])
  {
    *(a5 + 24) = v6;
    *a5 = v7;
  }

  else
  {
    *a5 = 0u;
    *(a5 + 16) = 0u;
  }
}

BOOL sub_1D8CD0274()
{
  v0 = sub_1D8CD7674();
  OUTLINED_FUNCTION_3();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_37();
  v6 = v5 - v4;
  sub_1D8CD7664();
  sub_1D8CD7624();
  v8 = v7;
  (*(v2 + 8))(v6, v0);
  return sub_1D8CCF3B0() < v8;
}

id sub_1D8CD035C(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = sub_1D8CD7AD4();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_1D8CD03DC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC668, &qword_1D8CD8FA0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  sub_1D8CD04E8(&v6 - v1);
  v3 = sub_1D8CD7554();
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_1D8C953A4(v2, &qword_1ECAAC668, &qword_1D8CD8FA0);
    return 0;
  }

  else
  {
    v4 = sub_1D8CD7494();
    (*(*(v3 - 8) + 8))(v2, v3);
  }

  return v4;
}

uint64_t sub_1D8CD04E8@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC668, &qword_1D8CD8FA0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v7 - v3;
  sub_1D8CD0628(&v7 - v3);
  v5 = sub_1D8CD7554();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_1D8C953A4(v4, &qword_1ECAAC668, &qword_1D8CD8FA0);
    return sub_1D8CD0628(a1);
  }

  else
  {
    (*(*(v5 - 8) + 32))(a1, v4, v5);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v5);
  }
}

uint64_t sub_1D8CD0628@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC668, &qword_1D8CD8FA0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v19 - v6;
  sub_1D8C97460(0, &unk_1ED9C54D0, 0x1E696AEC0);
  v8 = OUTLINED_FUNCTION_6_7();
  sub_1D8CD0158(v8, v9, v10);
  if (!v21)
  {
    sub_1D8C953A4(v20, &qword_1ECAAC680, &qword_1D8CD8FB0);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v22 = 0;
    v23 = 0;
    goto LABEL_9;
  }

  if (v23)
  {

    if (sub_1D8CD7BE4() < 1)
    {
    }

    else
    {
      sub_1D8CD7514();

      v11 = sub_1D8CD7554();
      if (__swift_getEnumTagSinglePayload(v7, 1, v11) != 1)
      {
        v18 = v7;
        goto LABEL_23;
      }

      sub_1D8C953A4(v7, &qword_1ECAAC668, &qword_1D8CD8FA0);
    }
  }

LABEL_9:
  v12 = OUTLINED_FUNCTION_6_7();
  sub_1D8CD0158(v12, v13, v14);
  if (!v21)
  {
    sub_1D8C953A4(v20, &qword_1ECAAC680, &qword_1D8CD8FB0);
    goto LABEL_15;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    v22 = 0;
    v23 = 0;
LABEL_16:

    goto LABEL_17;
  }

  v22 = v19[0];
  v23 = v19[1];

  if (sub_1D8CD7BE4() < 1)
  {
    goto LABEL_16;
  }

  sub_1D8CD7514();

  v15 = sub_1D8CD7554();
  if (__swift_getEnumTagSinglePayload(v5, 1, v15) != 1)
  {
    v18 = v5;
LABEL_23:
    sub_1D8CD28C8(v18, a1);
  }

  sub_1D8C953A4(v5, &qword_1ECAAC668, &qword_1D8CD8FA0);
LABEL_17:
  v16 = sub_1D8CD7554();
  __swift_storeEnumTagSinglePayload(a1, 1, 1, v16);
}

id sub_1D8CD0904(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = *(v2 + OBJC_IVAR____TtC20PegasusConfiguration14ConfigInternal_data);
  v7 = *(v2 + OBJC_IVAR____TtC20PegasusConfiguration14ConfigInternal_data + 8);
  v8 = *(v2 + OBJC_IVAR____TtC20PegasusConfiguration14ConfigInternal_userDefaults);
  v9 = objc_allocWithZone(ObjectType);
  sub_1D8CADCA0(v6, v7);
  v10 = v8;

  return sub_1D8CD0A18(v6, v7, a1, a2, v8);
}

id sub_1D8CD0A18(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, id a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  v13 = OBJC_IVAR____TtC20PegasusConfiguration14ConfigInternal_userDefaults;
  *&v6[OBJC_IVAR____TtC20PegasusConfiguration14ConfigInternal_userDefaults] = 0;
  v14 = &v6[OBJC_IVAR____TtC20PegasusConfiguration14ConfigInternal_data];
  *v14 = a1;
  *(v14 + 1) = a2;
  v15 = &v6[OBJC_IVAR____TtC20PegasusConfiguration14ConfigInternal_userAgent];
  *v15 = a3;
  *(v15 + 1) = a4;
  if (a4)
  {
    sub_1D8CADCA0(a1, a2);

    Client.init(_:)(a4, v24);
    v16 = v24[2];
    v17 = &v6[OBJC_IVAR____TtC20PegasusConfiguration14ConfigInternal_clientName];
    *v17 = v24[1];
    *(v17 + 1) = v16;
    if (a5)
    {
LABEL_3:
      v18 = *&v6[v13];
      *&v6[v13] = a5;
      a5 = a5;

      goto LABEL_8;
    }
  }

  else
  {
    *&v6[OBJC_IVAR____TtC20PegasusConfiguration14ConfigInternal_clientName] = xmmword_1D8CDCFE0;
    sub_1D8CADCA0(a1, a2);
    if (a5)
    {
      goto LABEL_3;
    }
  }

  v19 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v20 = sub_1D8CD23BC(0xD000000000000011, 0x80000001D8CDD660);
  if (!v20)
  {
    v20 = [objc_opt_self() standardUserDefaults];
  }

  v21 = *&v6[v13];
  *&v6[v13] = v20;

LABEL_8:
  v25.receiver = v6;
  v25.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v25, sel_init);

  sub_1D8CADC38(a1, a2);
  return v22;
}

void sub_1D8CD0BD8(void *a1)
{
  v3 = sub_1D8CD7584();
  v4 = sub_1D8CD7AD4();
  [a1 encodeObject:v3 forKey:v4];

  if (*(v1 + OBJC_IVAR____TtC20PegasusConfiguration14ConfigInternal_userAgent + 8))
  {
    v5 = sub_1D8CD7AD4();
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1D8CD7AD4();
  [a1 encodeObject:v5 forKey:v6];
  swift_unknownObjectRelease();
}

id sub_1D8CD0D4C(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_1D8C97460(0, &qword_1ECAACF08, 0x1E695DEF0);
  v3 = sub_1D8CD7E94();
  sub_1D8C97460(0, &unk_1ED9C54D0, 0x1E696AEC0);
  v4 = sub_1D8CD7E94();
  v5 = v4;
  if (!v3)
  {

    a1 = v5;
LABEL_6:

    v16 = swift_getObjectType();
    OUTLINED_FUNCTION_8_6(v16);
    return 0;
  }

  if (!v4)
  {

    goto LABEL_6;
  }

  v6 = v3;
  v7 = sub_1D8CD7594();
  v9 = v8;

  v10 = sub_1D8CD7B04();
  v12 = v11;
  v13 = objc_allocWithZone(ObjectType);
  v14 = sub_1D8CD0A18(v7, v9, v10, v12, 0);

  v15 = swift_getObjectType();
  OUTLINED_FUNCTION_8_6(v15);
  return v14;
}

void sub_1D8CD0EE8(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a4@<X8>)
{
  v36 = *MEMORY[0x1E69E9840];
  if (sub_1D8CD7BE4() < 1)
  {
LABEL_21:
    *a4 = 0u;
    a4[1] = 0u;
    return;
  }

  *&v29 = 778527074;
  *(&v29 + 1) = 0xE400000000000000;
  MEMORY[0x1DA726A90](a1, a2);
  v8 = *(v4 + OBJC_IVAR____TtC20PegasusConfiguration14ConfigInternal_userDefaults);
  if (!v8)
  {

    v34 = 0u;
    v35 = 0u;
    goto LABEL_13;
  }

  v9 = v29;
  v10 = v8;
  v11 = sub_1D8CD7AD4();
  v12 = [v10 objectForKey_];

  if (v12)
  {
    sub_1D8CD7F84();
    swift_unknownObjectRelease();
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
  }

  v34 = v32;
  v35 = v33;
  if (!*(&v33 + 1))
  {

LABEL_13:
    sub_1D8C953A4(&v34, &qword_1ECAAC680, &qword_1D8CD8FB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACEB0, &qword_1D8CDA970);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D8CD8F50;
    *(inited + 32) = a1;
    *(inited + 40) = a2;
    *(inited + 48) = 0x656469727265766FLL;
    *(inited + 56) = 0xE900000000000073;

    sub_1D8CD2738(inited);
    v30 = 0;
    v31 = 0;
    v23 = sub_1D8CD7584();
    v24 = sub_1D8CD7DC4();

    _CFPropertyListCreateFiltered();

    if (qword_1ED9C4150 != -1)
    {
      OUTLINED_FUNCTION_32(&qword_1ED9C4150);
    }

    v25 = sub_1D8CD7A04();
    __swift_project_value_buffer(v25, qword_1ED9C5668);
    v26 = sub_1D8CD79E4();
    v27 = sub_1D8CD7E04();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1D8C92000, v26, v27, "Could not parse mapped plist", v28, 2u);
      OUTLINED_FUNCTION_3_0();
    }

    goto LABEL_21;
  }

  sub_1D8CAD7DC(&v34, &v29);
  if (qword_1ED9C4150 != -1)
  {
    OUTLINED_FUNCTION_32(&qword_1ED9C4150);
  }

  v13 = sub_1D8CD7A04();
  __swift_project_value_buffer(v13, qword_1ED9C5668);
  sub_1D8C9D24C(&v29, &v34);

  v14 = sub_1D8CD79E4();
  v15 = sub_1D8CD7E14();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v16 = 136315394;
    sub_1D8C9D24C(&v34, &v32);
    v17 = sub_1D8CD7B64();
    v19 = v18;
    __swift_destroy_boxed_opaque_existential_0Tm(&v34);
    v20 = sub_1D8C9D088(v17, v19, &v31);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    v21 = sub_1D8C9D088(v9, 0xE400000000000000, &v31);

    *(v16 + 14) = v21;
    _os_log_impl(&dword_1D8C92000, v14, v15, "Found value: %s for key: %s from userDefaults", v16, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_3_0();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0Tm(&v34);
  }

  sub_1D8CAD7DC(&v29, a4);
}

uint64_t sub_1D8CD1AE4(uint64_t a1, uint64_t a2)
{
  sub_1D8C97460(0, &qword_1ED9C5510, 0x1E696AD98);
  sub_1D8CD0158(a1, a2, v6);
  if (v7)
  {
    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  else
  {
    sub_1D8C953A4(v6, &qword_1ECAAC680, &qword_1D8CD8FB0);
  }

  return 0;
}

id sub_1D8CD1F2C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1D8CD1FDC()
{
  v20 = *MEMORY[0x1E69E9840];
  v0 = objc_opt_self();
  v1 = sub_1D8CD7584();
  v17 = 0;
  v2 = [v0 propertyListWithData:v1 options:0 format:0 error:&v17];

  v3 = v17;
  if (v2)
  {
    sub_1D8CD7F84();
    swift_unknownObjectRelease();
    sub_1D8CAD7DC(v18, v19);
    sub_1D8C9D24C(v19, v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAACEA0, &qword_1D8CD9610);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_0Tm(v19);
      return v17;
    }

    if (qword_1ED9C4150 != -1)
    {
      OUTLINED_FUNCTION_32(&qword_1ED9C4150);
    }

    v12 = sub_1D8CD7A04();
    __swift_project_value_buffer(v12, qword_1ED9C5668);
    v13 = sub_1D8CD79E4();
    v14 = sub_1D8CD7E24();
    if (os_log_type_enabled(v13, v14))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_85(&dword_1D8C92000, v15, v16, "Config property list is not Dictionary");
      OUTLINED_FUNCTION_3_0();
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v19);
  }

  else
  {
    v5 = v3;
    v6 = sub_1D8CD7454();

    swift_willThrow();
    if (qword_1ED9C4150 != -1)
    {
      OUTLINED_FUNCTION_32(&qword_1ED9C4150);
    }

    v7 = sub_1D8CD7A04();
    __swift_project_value_buffer(v7, qword_1ED9C5668);
    v8 = sub_1D8CD79E4();
    v9 = sub_1D8CD7E24();
    if (os_log_type_enabled(v8, v9))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_85(&dword_1D8C92000, v10, v11, "Config property list cannot be deserialized.");
      OUTLINED_FUNCTION_3_0();
    }
  }

  return 0;
}

void sub_1D8CD22D8(void *a1, uint64_t a2)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if ([a1 seekToOffset:a2 error:v4])
  {

    MEMORY[0x1EEE66C98]();
  }

  else
  {
    v2 = v4[0];
    v3 = sub_1D8CD7454();

    swift_willThrow();
  }
}

id sub_1D8CD23BC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1D8CD7AD4();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

uint64_t sub_1D8CD2420(uint64_t a1)
{
  v2 = sub_1D8CD77B4();
  OUTLINED_FUNCTION_3();
  v36 = v3;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v31 - v8;
  if (!*(a1 + 16))
  {
    v10 = MEMORY[0x1E69E7CD0];
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACF18, &unk_1D8CDD098);
  result = sub_1D8CD7FE4();
  v10 = result;
  v35 = *(a1 + 16);
  if (!v35)
  {
LABEL_15:

    return v10;
  }

  v11 = 0;
  v39 = result + 56;
  v12 = *(v36 + 80);
  v33 = a1;
  v34 = a1 + ((v12 + 32) & ~v12);
  v38 = v36 + 16;
  v13 = (v36 + 8);
  v32 = (v36 + 32);
  while (v11 < *(a1 + 16))
  {
    v14 = *(v36 + 72);
    v37 = v11 + 1;
    v15 = *(v36 + 16);
    v15(v40, v34 + v14 * v11, v2);
    OUTLINED_FUNCTION_2_19();
    sub_1D8CD2938(&qword_1ED9C4040, v16, MEMORY[0x1E6969AD8]);
    v17 = sub_1D8CD7A94();
    v18 = ~(-1 << *(v10 + 32));
    while (1)
    {
      v19 = v17 & v18;
      v20 = (v17 & v18) >> 6;
      v21 = *(v39 + 8 * v20);
      v22 = 1 << (v17 & v18);
      if ((v22 & v21) == 0)
      {
        break;
      }

      v23 = v10;
      v15(v7, *(v10 + 48) + v19 * v14, v2);
      OUTLINED_FUNCTION_2_19();
      sub_1D8CD2938(&qword_1ECAAC5E8, v24, MEMORY[0x1E6969AE0]);
      v25 = sub_1D8CD7AC4();
      v26 = *v13;
      (*v13)(v7, v2);
      if (v25)
      {
        result = (v26)(v40, v2);
        v10 = v23;
        goto LABEL_12;
      }

      v17 = v19 + 1;
      v10 = v23;
    }

    v27 = v40;
    *(v39 + 8 * v20) = v22 | v21;
    result = (*v32)(*(v10 + 48) + v19 * v14, v27, v2);
    v28 = *(v10 + 16);
    v29 = __OFADD__(v28, 1);
    v30 = v28 + 1;
    if (v29)
    {
      goto LABEL_17;
    }

    *(v10 + 16) = v30;
LABEL_12:
    v11 = v37;
    a1 = v33;
    if (v37 == v35)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1D8CD2738(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x1E69E7CD0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAACEF8, &unk_1D8CDD080);
  result = sub_1D8CD7FE4();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_19:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = (a1 + 32 + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    ++v5;
    sub_1D8CD8254();

    sub_1D8CD7BD4();
    result = sub_1D8CD8284();
    v10 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v11 = result & v10;
      v12 = (result & v10) >> 6;
      v13 = *(v6 + 8 * v12);
      v14 = 1 << (result & v10);
      if ((v14 & v13) == 0)
      {
        break;
      }

      v15 = (*(v3 + 48) + 16 * v11);
      v16 = *v15 == v9 && v15[1] == v8;
      if (v16 || (sub_1D8CD8154() & 1) != 0)
      {

        goto LABEL_16;
      }

      result = v11 + 1;
    }

    *(v6 + 8 * v12) = v14 | v13;
    v17 = (*(v3 + 48) + 16 * v11);
    *v17 = v9;
    v17[1] = v8;
    v18 = *(v3 + 16);
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      goto LABEL_21;
    }

    *(v3 + 16) = v20;
LABEL_16:
    if (v5 == v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1D8CD28C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC668, &qword_1D8CD8FA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8CD2938(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t LegacyDataWarehouseConfig.dataWarehouseUrl.getter()
{
  OUTLINED_FUNCTION_5_5();
  v2 = sub_1D8CD7554();
  v3 = *(*(v2 - 8) + 16);

  return v3(v0, v1, v2);
}

uint64_t LegacyDataWarehouseConfig.streamDescriptor.getter()
{
  v2 = OUTLINED_FUNCTION_5_5();
  result = type metadata accessor for LegacyDataWarehouseConfig(v2);
  *v0 = *(v1 + *(result + 20));
  return result;
}

uint64_t type metadata accessor for LegacyDataWarehouseConfig(uint64_t a1)
{
  result = qword_1ECAAC4C0;
  if (!qword_1ECAAC4C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LegacyDataWarehouseConfig.databaseUrl.getter()
{
  OUTLINED_FUNCTION_5_5();
  v0 = sub_1D8CD7484();
  OUTLINED_FUNCTION_3();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_37();
  v6 = v5 - v4;
  OUTLINED_FUNCTION_5_7("data_warehouse.db");
  v7 = OUTLINED_FUNCTION_6_8();
  v8(v7);
  sub_1D8C94EC8();
  sub_1D8CD7544();
  return (*(v2 + 8))(v6, v0);
}

uint64_t LegacyDataWarehouseConfig.schemaFolderUrl.getter()
{
  OUTLINED_FUNCTION_5_5();
  v0 = sub_1D8CD7484();
  OUTLINED_FUNCTION_3();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_37();
  v6 = v5 - v4;
  OUTLINED_FUNCTION_2_20();
  v7 = OUTLINED_FUNCTION_6_8();
  v8(v7);
  sub_1D8C94EC8();
  sub_1D8CD7544();
  return (*(v2 + 8))(v6, v0);
}

uint64_t URL.legacyAggregationSchemaUrl(forMessageName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a1;
  v29 = a2;
  v30 = a3;
  v3 = sub_1D8CD7484();
  v25 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_37();
  v7 = v6 - v5;
  sub_1D8CD7554();
  OUTLINED_FUNCTION_3();
  v26 = v9;
  v27 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_7();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25 - v14;
  OUTLINED_FUNCTION_2_20();
  v31 = v16;
  v32 = v17;
  v18 = *MEMORY[0x1E6968F70];
  v19 = *(v4 + 104);
  v19(v7, v18, v3);
  sub_1D8C94EC8();
  sub_1D8CD7544();
  v20 = *(v4 + 8);
  v21 = v25;
  v20(v7, v25);
  v31 = v28;
  v32 = v29;
  v19(v7, v18, v21);
  sub_1D8CD7544();
  v20(v7, v21);
  v22 = v27;
  v23 = *(v26 + 8);
  v23(v12, v27);
  sub_1D8CD74C4();
  return (v23)(v15, v22);
}

uint64_t LegacyDataWarehouseConfig.metricsSchemaUrl.getter@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + *(type metadata accessor for LegacyDataWarehouseConfig(0) + 20)) == 2)
  {
    v7 = FeedbackStreamDescriptor.rawValue.getter();
    v8 = v3;

    MEMORY[0x1DA726A90](46, 0xE100000000000000);

    MEMORY[0x1DA726A90](0xD000000000000016, 0x80000001D8CDF990);

    v4 = v7;
    v5 = v8;
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  URL.legacyAggregationSchemaUrl(forMessageName:)(v4, v5, a1);
}

uint64_t LegacyDataWarehouseConfig.attachSQLStatementString.getter()
{
  v0 = sub_1D8CD7554();
  OUTLINED_FUNCTION_3();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_37();
  v6 = v5 - v4;
  sub_1D8CD8014();

  OUTLINED_FUNCTION_5_7("ATTACH DATABASE '");
  LegacyDataWarehouseConfig.databaseUrl.getter();
  sub_1D8C9D2C0();
  v7 = sub_1D8CD8124();
  MEMORY[0x1DA726A90](v7);

  (*(v2 + 8))(v6, v0);
  MEMORY[0x1DA726A90](0x2053412027, 0xE500000000000000);
  v8 = OUTLINED_FUNCTION_8_7();
  MEMORY[0x1DA726A90](v8);
  return 0;
}

uint64_t LegacyDataWarehouseConfig.init(dataWarehouseUrl:streamDescriptor:fileManager:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v35 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC668, &qword_1D8CD8FA0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  OUTLINED_FUNCTION_7();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33 - v13;
  v15 = sub_1D8CD7554();
  OUTLINED_FUNCTION_3();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_37();
  v21 = v20 - v19;
  v22 = *a2;
  v36 = a1;
  sub_1D8CCE544(a1, v11);
  OUTLINED_FUNCTION_2(v11);
  if (v23)
  {
    v37 = v22;
    NSFileManager.legacyDataWarehouseUrl(for:)(&v37, v14);
    if (v4)
    {
      sub_1D8CC7244(v36);

      result = OUTLINED_FUNCTION_2(v11);
      if (v23)
      {
        return result;
      }

      v25 = v11;
      return sub_1D8CC7244(v25);
    }

    OUTLINED_FUNCTION_2(v11);
    if (!v23)
    {
      sub_1D8CC7244(v11);
    }
  }

  else
  {
    (*(v17 + 32))(v14, v11, v15);
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v15);
  }

  OUTLINED_FUNCTION_2(v14);
  if (v23)
  {
    sub_1D8CC7244(v14);
    sub_1D8CCEA74();
    swift_allocError();
    *v26 = 0;
    v26[1] = 0;
    swift_willThrow();

    v25 = v36;
    return sub_1D8CC7244(v25);
  }

  v34 = a3;
  v27 = *(v17 + 32);
  (v27)(v21, v14, v15);
  v28 = sub_1D8CD7474();
  if (v28)
  {
    sub_1D8CC7244(v36);

    *(v35 + *(type metadata accessor for LegacyDataWarehouseConfig(0) + 20)) = v22;
    return v27();
  }

  else
  {
    v29 = sub_1D8CD7494();
    v31 = v30;
    sub_1D8CCEA74();
    swift_allocError();
    *v32 = v29;
    v32[1] = v31;
    swift_willThrow();

    sub_1D8CC7244(v36);
    return (*(v17 + 8))(v21, v15);
  }
}

uint64_t NSFileManager.legacyDataWarehouseUrl(for:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v4 = sub_1D8CD7484();
  OUTLINED_FUNCTION_3();
  v52 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_37();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC668, &qword_1D8CD8FA0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v47 - v11;
  v13 = sub_1D8CD7554();
  OUTLINED_FUNCTION_3();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_7();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v47 - v21;
  v23 = *a1;
  v24 = v55;
  sub_1D8C950EC(v2);
  if (v24)
  {

    __swift_storeEnumTagSinglePayload(v12, 1, 1, v13);
    sub_1D8CC7244(v12);
    sub_1D8CC082C();
    swift_allocError();
    *v25 = 0;
    v25[1] = 0;
    return swift_willThrow();
  }

  else
  {
    v47[1] = 0;
    v48 = v19;
    v49 = v23;
    v51 = v9;
    v55 = v4;
    __swift_storeEnumTagSinglePayload(v12, 0, 1, v13);
    (*(v15 + 32))(v22, v12, v13);
    v27 = v15;
    if (qword_1ED9C4150 != -1)
    {
      swift_once();
    }

    v28 = sub_1D8CD7A04();
    __swift_project_value_buffer(v28, qword_1ED9C5668);
    v29 = *(v15 + 16);
    v30 = v48;
    v50 = v22;
    v29(v48, v22, v13);
    v31 = sub_1D8CD79E4();
    v32 = sub_1D8CD7E04();
    v33 = v13;
    if (os_log_type_enabled(v31, v32))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v54[0] = v35;
      *v34 = 136315138;
      sub_1D8C9D2C0();
      v36 = sub_1D8CD8124();
      v37 = v30;
      v39 = v38;
      v40 = *(v27 + 8);
      v40(v37, v33);
      v41 = sub_1D8C9D088(v36, v39, v54);

      *(v34 + 4) = v41;
      _os_log_impl(&dword_1D8C92000, v31, v32, "Container URL: %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v35);
      MEMORY[0x1DA727900](v35, -1, -1);
      MEMORY[0x1DA727900](v34, -1, -1);
    }

    else
    {

      v40 = *(v27 + 8);
      v40(v30, v13);
    }

    v42 = v55;
    v44 = v51;
    v43 = v52;
    if (v49 == 2)
    {
      strcpy(v54, "AlpsWarehouse");
      HIWORD(v54[1]) = -4864;
      (*(v52 + 104))(v51, *MEMORY[0x1E6968F70], v55);
      sub_1D8C94EC8();
      v45 = v50;
      sub_1D8CD7544();
      (*(v43 + 8))(v44, v42);
      v40(v45, v33);
      v46 = 0;
    }

    else
    {
      v40(v50, v33);
      v46 = 1;
    }

    return __swift_storeEnumTagSinglePayload(v53, v46, 1, v33);
  }
}

uint64_t sub_1D8CD3964(uint64_t a1)
{
  result = sub_1D8CD7554();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D8CD39D8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t *sub_1D8CD3A78()
{
  v1 = *v0;
  MEMORY[0x1DA727900](*(v0 + *(*v0 + 96)), -1, -1);
  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 88));
  return v0;
}

uint64_t sub_1D8CD3B14()
{
  sub_1D8CD3A78();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void sub_1D8CD3B84(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1D8CD5058(319);
    if (v2 <= 0x3F)
    {
      sub_1D8CD7674();
      if (v3 <= 0x3F)
      {
        swift_initClassMetadata2();
      }
    }
  }
}

uint64_t sub_1D8CD3CC4()
{
  OUTLINED_FUNCTION_0_21();
  OUTLINED_FUNCTION_1_20();
  return (*(*(v0 + 88) + 24))();
}

uint64_t sub_1D8CD3D18()
{
  OUTLINED_FUNCTION_0_21();
  OUTLINED_FUNCTION_1_20();
  return (*(*(v0 + 88) + 32))();
}

uint64_t sub_1D8CD3D6C()
{
  OUTLINED_FUNCTION_0_21();
  OUTLINED_FUNCTION_1_20();
  return v1(*(v0 + 80));
}

uint64_t sub_1D8CD3DD4()
{
  OUTLINED_FUNCTION_0_21();
  v2 = *(v1 + 80);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v12 - v4;
  OUTLINED_FUNCTION_1_20();
  (*(v7 + 16))(v5, v0 + *(v6 + 112), v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACF38, &qword_1D8CDD248);
  if (swift_dynamicCast())
  {
    sub_1D8C9B778(v12, v14);
    v8 = v15;
    v9 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    v10 = (*(v9 + 8))(v8, v9);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
  }

  else
  {
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    sub_1D8C9B71C(v12, &unk_1ECAACF40, &unk_1D8CDD250);
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_1D8CD3F4C()
{
  v1 = sub_1D8CD7674();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_4();
  (*(v2 + 16))(v4, v0 + *(v5 + 144), v1);
  sub_1D8CD7604();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1D8CD40AC()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC7D8, &qword_1D8CD95B0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v51[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v51[-v8];
  v10 = *(v2 + 80);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v7);
  v14 = &v51[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v51[-v15];
  v17 = *(v1 + 40);
  v61 = *(v1 + 24);
  v62 = v17;
  v63 = *(v1 + 56);
  v64 = *(v1 + 72);
  v18 = *(&v17 + 1);
  v55 = *(v2 + 88);
  v20 = type metadata accessor for ActivitySpan.ActivityData(0, v10, v55, v19);
  v21 = *(v20 - 8);
  v22 = *(v21 + 16);
  v54 = v20;
  v22(v56, &v61);
  sub_1D8CD5200(v18);
  if ((BYTE1(v62) & 1) == 0)
  {
    v23 = v63;
    if (v63)
    {
      v53 = *(&v61 + 1);
      v24 = v61;
      v52 = v62;
      OUTLINED_FUNCTION_77();
      (*(v11 + 16))(v16, v1 + *(v25 + 112), v10);
      OUTLINED_FUNCTION_77();
      v27 = *(v26 + 136);
      swift_beginAccess();
      sub_1D8CD57DC(v1 + v27, v9);
      v28 = sub_1D8CD7964();
      result = __swift_getEnumTagSinglePayload(v9, 1, v28);
      if (result != 1)
      {
        v30 = v9;
        OUTLINED_FUNCTION_77();
        v32 = *(v1 + *(v31 + 128));

        sub_1D8CD4F28(v30, v32, v24, v53, v52, v23, v10, v55);

        (*(v11 + 8))(v16, v10);
        OUTLINED_FUNCTION_25();
        (*(v33 + 8))(v30, v28);
        goto LABEL_7;
      }

LABEL_14:
      __break(1u);
      return result;
    }
  }

  OUTLINED_FUNCTION_77();
  (*(v11 + 16))(v14, v1 + *(v34 + 112), v10);
  OUTLINED_FUNCTION_77();
  v36 = *(v35 + 136);
  swift_beginAccess();
  sub_1D8CD57DC(v1 + v36, v6);
  v37 = sub_1D8CD7964();
  result = __swift_getEnumTagSinglePayload(v6, 1, v37);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_77();
  v32 = *(v1 + *(v38 + 128));
  sub_1D8CD4E98(v6, v32, v10, v55);
  (*(v11 + 8))(v14, v10);
  OUTLINED_FUNCTION_25();
  (*(v39 + 8))(v6, v37);
LABEL_7:
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v42 = Strong;
    v43 = type metadata accessor for ActivitySpan(0, v10, v55, v41);
    sub_1D8CC3E38(v1, v42, v43, &off_1F5454760);
    v59 = 0uLL;
    v60 = 0;
    *&v58[6] = 0;
    *&v58[14] = 0;

    v44 = *(v21 + 8);
    v45 = v54;
    v44(&v61, v54);
    v46 = *(v1 + 40);
    v56[0] = *(v1 + 24);
    v47 = *(v1 + 56);
    v56[1] = v46;
    v56[2] = v47;
    v57 = *(v1 + 72);
    *(v1 + 24) = v59;
    *(v1 + 40) = v60;
    *(v1 + 41) = 1;
    *(v1 + 42) = *v58;
    v48 = MEMORY[0x1E69E7CC0];
    *(v1 + 56) = *&v58[14];
    *(v1 + 64) = v48;
    *(v1 + 72) = 0;
    v44(v56, v45);
    OUTLINED_FUNCTION_77();
    *(v1 + *(v49 + 120)) = 1;
    return swift_weakAssign();
  }

  else
  {
    if (sub_1D8CD3DD4())
    {
      v50 = sub_1D8CD7E34();
      sub_1D8CD7904("ActivityMonitor is deallocated before ActivitySpan's end() method is invoked. Activity's bookkeeping could be inaccurate.", 121, 2, &dword_1D8C92000, v32, v50, MEMORY[0x1E69E7CC0]);
    }

    return (*(v21 + 8))(&v61, v54);
  }
}

uint64_t sub_1D8CD464C(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  v6 = a3;
  OUTLINED_FUNCTION_4();
  v10 = *(*(v4 + *(v9 + 152)) + 16);

  os_unfair_lock_lock(v10);
  sub_1D8CD53D8(v4, a1, a2, v6, a4);
  os_unfair_lock_unlock(v10);
}

uint64_t sub_1D8CD46EC()
{
  OUTLINED_FUNCTION_0_21();
  v2 = v1;
  if ((*(v0 + *(v3 + 120)) & 1) == 0)
  {
    (*(v1 + 400))();
  }

  swift_weakDestroy();

  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_4();
  (*(*(*(v2 + 80) - 8) + 8))(v0 + *(v4 + 112));
  OUTLINED_FUNCTION_4();

  OUTLINED_FUNCTION_4();
  sub_1D8C9B71C(v0 + *(v6 + 136), &qword_1ECAAC7D8, &qword_1D8CD95B0);
  OUTLINED_FUNCTION_4();
  v8 = *(v7 + 144);
  sub_1D8CD7674();
  OUTLINED_FUNCTION_25();
  (*(v9 + 8))(v0 + v8);
  OUTLINED_FUNCTION_4();

  return v0;
}

uint64_t sub_1D8CD48C8(void (*a1)(void), uint64_t a2)
{
  OUTLINED_FUNCTION_4();
  v5 = *(*(v2 + *(v4 + 152)) + 16);

  os_unfair_lock_lock(v5);
  sub_1D8CD51AC(v2, a1);
  os_unfair_lock_unlock(v5);
}

uint64_t sub_1D8CD4950()
{
  v1 = v0;
  OUTLINED_FUNCTION_0_21();
  v4 = type metadata accessor for ActivitySpan.ActivityData(0, *(v2 + 80), *(v2 + 88), v3);

  v40 = v4;
  sub_1D8CB0204(sub_1D8CD5550);

  v48 = v44;
  v49 = v45;
  v50 = v46;
  v51 = v47;
  v5 = *&v1[*(*v1 + 128)];
  v6 = sub_1D8CD7E24();
  sub_1D8CD7904("LEAKED SPAN: {{{", 16, 2, &dword_1D8C92000, v5, v6, MEMORY[0x1E69E7CC0]);
  sub_1D8CD7E24();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC9A0, &qword_1D8CD9990);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D8CDB570;
  sub_1D8CD3D6C();
  v8 = sub_1D8CD8024();
  v10 = v9;
  v11 = MEMORY[0x1E69E6158];
  *(v7 + 56) = MEMORY[0x1E69E6158];
  v12 = sub_1D8C96E60();
  *(v7 + 64) = v12;
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  v13 = sub_1D8CD3D18();
  *(v7 + 96) = v11;
  *(v7 + 104) = v12;
  *(v7 + 72) = v13;
  *(v7 + 80) = v14;
  v15 = sub_1D8CD3CC4();
  *(v7 + 136) = v11;
  *(v7 + 144) = v12;
  v43 = v12;
  *(v7 + 112) = v15;
  *(v7 + 120) = v16;
  sub_1D8CD7904("Name: %s, Category: %s, Subsystem: %s", v38, v40, v42);

  if ((BYTE1(v49) & 1) == 0)
  {
    sub_1D8CD7E24();
    v17 = OUTLINED_FUNCTION_5_8();
    *(v17 + 16) = xmmword_1D8CD8F40;
    v18 = sub_1D8CD8024();
    *(v17 + 56) = MEMORY[0x1E69E6158];
    *(v17 + 64) = v12;
    *(v17 + 32) = v18;
    *(v17 + 40) = v19;
    OUTLINED_FUNCTION_4_10();
    sub_1D8CD7904(v20);

    v21 = v50;
    if (v50)
    {

      sub_1D8CD7E24();
      v22 = OUTLINED_FUNCTION_5_8();
      *(v22 + 16) = xmmword_1D8CD8F40;
      *(v22 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACD90, &qword_1D8CDBBE8);
      *(v22 + 64) = sub_1D8CC4EE0(&qword_1ECAACF30, &qword_1ECAACD90, &qword_1D8CDBBE8, MEMORY[0x1E6969E28]);
      *(v22 + 32) = v21;
      OUTLINED_FUNCTION_4_10();
      sub_1D8CD7904(v23);
    }
  }

  v24 = *(&v49 + 1);
  if (*(&v49 + 1))
  {

    sub_1D8CD7E24();
    v25 = OUTLINED_FUNCTION_5_8();
    *(v25 + 16) = xmmword_1D8CD8F40;
    *(v25 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACD88, &qword_1D8CDBBE0);
    *(v25 + 64) = sub_1D8CC4EE0(&unk_1ECAACF20, &qword_1ECAACD88, &qword_1D8CDBBE0, MEMORY[0x1E6969D58]);
    *(v25 + 32) = v24;
    OUTLINED_FUNCTION_4_10();
    sub_1D8CD7904(v26);
  }

  v27 = *(&v50 + 1);
  result = sub_1D8CD57B8(*(&v50 + 1));
  v29 = v41;
  if (result)
  {
    v30 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v39 = v1;

    v31 = 0;
    do
    {
      if ((v27 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1DA726EA0](v31, v27);
      }

      else
      {
        swift_unknownObjectRetain();
      }

      ++v31;
      sub_1D8CD7E24();
      v32 = OUTLINED_FUNCTION_5_8();
      *(v32 + 16) = xmmword_1D8CD8F40;
      swift_unknownObjectRetain();
      v33 = sub_1D8CD7B64();
      *(v32 + 56) = MEMORY[0x1E69E6158];
      *(v32 + 64) = v43;
      *(v32 + 32) = v33;
      *(v32 + 40) = v34;
      sub_1D8CD7904("Leaked cancellables: %s", v39);
      swift_unknownObjectRelease();
    }

    while (v30 != v31);

    v29 = v41;
  }

  sub_1D8CD7E24();
  OUTLINED_FUNCTION_4_10();
  sub_1D8CD7904(v35);
  if (sub_1D8CD3DD4())
  {
    sub_1D8CD7E34();
    OUTLINED_FUNCTION_4_10();
    sub_1D8CD7904(v36);
  }

  OUTLINED_FUNCTION_25();
  return (*(v37 + 8))(&v48, v29);
}

uint64_t sub_1D8CD4E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D8CD7E54();
  (*(a4 + 40))(a3, a4);

  return sub_1D8CD7924();
}

void sub_1D8CD4F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = sub_1D8CD7E54();
  v17 = (*(a8 + 40))(a7, a8);
  LOBYTE(v20) = a5;
  sub_1D8C980C0(v16, a2, v17, v18, v19, a1, a3, a4, v20, a6);
}

uint64_t sub_1D8CD4FE8()
{
  sub_1D8CD46EC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void sub_1D8CD5058(uint64_t a1)
{
  if (!qword_1ED9C3C30[0])
  {
    sub_1D8CD7964();
    v1 = sub_1D8CD7ED4();
    if (!v2)
    {
      atomic_store(v1, qword_1ED9C3C30);
    }
  }
}

uint64_t sub_1D8CD50B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1D8CD5108(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_1D8CD5148(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D8CD51AC(uint64_t result, void (*a2)(void))
{
  if ((*(result + *(*result + 120)) & 1) == 0)
  {
    a2();
    return sub_1D8CD40AC();
  }

  return result;
}

void sub_1D8CD5200(uint64_t a1)
{
  if (sub_1D8CD5558(a1))
  {
    OUTLINED_FUNCTION_4();
    sub_1D8CD7E14();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAAC9A0, &qword_1D8CD9990);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_1D8CD8F50;
    v2 = sub_1D8CD3D18();
    v4 = v3;
    v5 = MEMORY[0x1E69E6158];
    *(v1 + 56) = MEMORY[0x1E69E6158];
    v6 = sub_1D8C96E60();
    *(v1 + 64) = v6;
    *(v1 + 32) = v2;
    *(v1 + 40) = v4;
    sub_1D8CC26E8();
    OUTLINED_FUNCTION_7_5();
    v7 = sub_1D8CD7A74();
    *(v1 + 96) = v5;
    *(v1 + 104) = v6;
    *(v1 + 72) = v7;
    *(v1 + 80) = v8;
    OUTLINED_FUNCTION_4_10();
    sub_1D8CD7904(v9);

    sub_1D8CD3CC4();
    v10 = sub_1D8CD3D18();
    v12 = v11;

    MEMORY[0x1DA726A90](46, 0xE100000000000000);
    MEMORY[0x1DA726A90](v10, v12);

    v13 = sub_1D8CD7AD4();

    OUTLINED_FUNCTION_7_5();
    v14 = sub_1D8CD7A54();
    AnalyticsSendEvent();
  }
}

uint64_t sub_1D8CD53D8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(a1 + 24) = a2;
  *(a1 + 32) = a3;
  *(a1 + 40) = a4;
  *(a1 + 41) = 0;
  *(a1 + 56) = a5;
}

uint64_t sub_1D8CD5424@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 5);
  v10[0] = *(a1 + 3);
  v10[1] = v4;
  v11 = *(a1 + 7);
  v5 = v11;
  v12 = a1[9];
  v6 = v12;
  *a3 = v10[0];
  *(a3 + 16) = v4;
  *(a3 + 32) = v5;
  *(a3 + 48) = v6;
  v7 = type metadata accessor for ActivitySpan.ActivityData(0, *(v3 + 80), *(v3 + 88), a2);
  return (*(*(v7 - 8) + 16))(v9, v10, v7);
}

uint64_t sub_1D8CD5558(uint64_t a1)
{
  v2 = v1;
  OUTLINED_FUNCTION_0_21();
  v5 = *(v4 + 80);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  (*(v6 + 16))(&v26 - v8, v2 + *(v10 + 112), v5);
  DynamicType = swift_getDynamicType();
  (*(v6 + 8))(v9, v5);
  v13 = dynamic_cast_existential_1_conditional(DynamicType, DynamicType, &protocol descriptor for __CoreAnalyticsActivity);
  result = 0;
  if (v13)
  {
    if (a1)
    {
      v15 = v12;
      v16 = *(v12 + 16);

      v17 = v16(v13, v15);
      v19 = v18;
      sub_1D8CD7C94();
      v20 = sub_1D8CD7F24();
      swift_isUniquelyReferenced_nonNull_native();
      v26 = a1;
      sub_1D8CB4574(v20, v17, v19);

      v21 = v26;
      v22 = (*(v15 + 8))(v13, v15);
      v24 = v23;
      sub_1D8CD3F4C();
      v25 = sub_1D8CD7DB4();
      swift_isUniquelyReferenced_nonNull_native();
      v27 = v21;
      sub_1D8CB4574(v25, v22, v24);

      return v27;
    }
  }

  return result;
}

uint64_t sub_1D8CD57B8(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return MEMORY[0x1EEE6AA70](a1);
}

uint64_t sub_1D8CD57DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC7D8, &qword_1D8CD95B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t dynamic_cast_existential_1_conditional(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_1D8CD5890(id a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v3[2] = 0x6E6F6973726576;
  v3[3] = 0xE700000000000000;
  v3[4] = 1685217635;
  v3[5] = 0xE400000000000000;
  v3[6] = 49;
  v3[7] = 0xE100000000000000;
  v3[8] = 0x6C616E7265746E69;
  v3[9] = 0xE800000000000000;
  v3[10] = 1684366707;
  v3[11] = 0xE400000000000000;
  v3[12] = 0x636F6C5F69726973;
  v3[13] = 0xEB00000000656C61;
  v3[14] = 0x6C62616E655F7368;
  v3[15] = 0xEA00000000006465;
  v3[16] = 0x676E6C74616CLL;
  v3[17] = 0xE600000000000000;
  v3[18] = 0x6372736F6567;
  v3[19] = 0xE600000000000000;
  v3[20] = 0x6F6E72657375;
  v3[21] = 0xE600000000000000;
  v3[22] = 7627109;
  v3[23] = 0xE300000000000000;
  v3[24] = 0x656C61636F6CLL;
  v3[25] = 0xE600000000000000;
  v3[26] = 7107429;
  v3[27] = 0xE300000000000000;
  v3[28] = 25443;
  v3[29] = 0xE200000000000000;
  v3[30] = 0x746E656761;
  v3[31] = 0xE500000000000000;
  v3[32] = 0x5255676142524150;
  v3[33] = 0xE90000000000004CLL;
  v3[34] = 0xD00000000000001FLL;
  v3[35] = 0x80000001D8CDFEF0;
  v3[36] = 0xD00000000000001ELL;
  v3[37] = 0x80000001D8CDFF10;
  v3[38] = 0xD000000000000011;
  v3[39] = 0x80000001D8CDFF30;
  v3[40] = 0x6567412D72657355;
  v3[41] = 0xEA0000000000746ELL;
  if (!a1)
  {
    a1 = [objc_opt_self() standardUserDefaults];
  }

  v3[42] = a1;
  sub_1D8CD71AC(a2, &v10);
  if (v11)
  {
    sub_1D8C953A4(a2, &qword_1ECAACA80, &qword_1D8CD9EA8);
    sub_1D8C9B778(&v10, &v12);
  }

  else
  {
    v6 = type metadata accessor for ParsecKeys();
    swift_allocObject();
    v7 = v5;
    v8 = ParsecKeys.init()();
    v13 = v6;
    v14 = &protocol witness table for ParsecKeys;

    *&v12 = v8;
    sub_1D8C953A4(a2, &qword_1ECAACA80, &qword_1D8CD9EA8);
    if (v11)
    {
      sub_1D8C953A4(&v10, &qword_1ECAACA80, &qword_1D8CD9EA8);
    }
  }

  sub_1D8C9B778(&v12, (v3 + 43));
  return v3;
}

uint64_t sub_1D8CD5B60@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t x8_0@<X8>)
{
  if (a5)
  {
    return sub_1D8CD5B84(a3, a4, x8_0);
  }

  else
  {
    return sub_1D8CD5DBC(a3, a4, x8_0);
  }
}

uint64_t sub_1D8CD5B84@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_16_3(a1, a2, a3);
  v6 = v5;
  v7 = sub_1D8CD7554();
  OUTLINED_FUNCTION_3();
  v32[9] = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_3();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v31 - v11;
  OUTLINED_FUNCTION_17_2();
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  v13 = OUTLINED_FUNCTION_10_3();
  v14(v13);
  sub_1D8CD6680(v15, v12);

  if (!v3)
  {
    v17 = v31[3];
    type metadata accessor for ParsecURLRequestBuilder(0);
    OUTLINED_FUNCTION_15_3();
    v18(v4, v12, v7);
    v21 = sub_1D8CB87AC(v4);
    if (v17)
    {
      v22 = v31[1];
    }

    else
    {
      v22 = 0;
    }

    if (!v17)
    {
      v17 = 0xE000000000000000;
    }

    sub_1D8CD5FE0(v21, v22, v17);

    sub_1D8CD6050();
    sub_1D8CD60E0();
    v23 = OUTLINED_FUNCTION_14_2();
    sub_1D8CD613C(v23, v24);
    v25 = OUTLINED_FUNCTION_14_2();
    sub_1D8CD61CC(v25, v26);
    v27 = OUTLINED_FUNCTION_14_2();
    sub_1D8CD625C(v27, v28);
    v29 = OUTLINED_FUNCTION_14_2();
    sub_1D8CD6510(v29, v30);
    sub_1D8CD65A0();
    sub_1D8CD6610(v21, v32);
    sub_1D8CB8D98(v31[2]);
    sub_1D8CD7244();

    v19 = OUTLINED_FUNCTION_6_9();
    return v20(v19);
  }

  return result;
}

uint64_t sub_1D8CD5DBC@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_16_3(a1, a2, a3);
  v5 = v4;
  v6 = sub_1D8CD7554();
  OUTLINED_FUNCTION_3();
  v25[9] = v7;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v24 - v12;
  OUTLINED_FUNCTION_17_2();
  v14 = v5[3];
  __swift_project_boxed_opaque_existential_1(v5, v14);
  v15 = OUTLINED_FUNCTION_10_3();
  v16(v15);
  sub_1D8CD6680(v17, v13);

  if (!v3)
  {
    v19 = v24[3];
    type metadata accessor for ParsecURLRequestBuilder(0);
    OUTLINED_FUNCTION_15_3();
    v20 = OUTLINED_FUNCTION_6_9();
    v21(v20);
    v22 = sub_1D8CB87AC(v11);
    if (v19)
    {
      v23 = v24[1];
    }

    else
    {
      v23 = 0;
    }

    if (!v19)
    {
      v19 = 0xE000000000000000;
    }

    sub_1D8CD5FE0(v22, v23, v19);

    sub_1D8CD60E0();
    sub_1D8CD613C(v22, v5);
    sub_1D8CD61CC(v22, v5);
    sub_1D8CD6510(v22, v5);
    sub_1D8CD6648(v22, v25);
    sub_1D8CB8D98(v24[2]);
    (*(v14 + 8))(v13, v6);
  }

  return result;
}

uint64_t sub_1D8CD5FE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 || a3 != 0xE000000000000000)
  {
    result = sub_1D8CD8154();
    if ((result & 1) == 0)
    {
      return sub_1D8CB9654(*(v3 + 16), *(v3 + 24), a2, a3);
    }
  }

  return result;
}

uint64_t sub_1D8CD6050()
{
  v1 = v0[22];
  v2 = v0[23];
  __swift_project_boxed_opaque_existential_1(v0 + 43, v0[46]);
  v3 = OUTLINED_FUNCTION_6_9();
  v5 = v4(v3);
  sub_1D8CB9654(v1, v2, v5, v6);
}

uint64_t sub_1D8CD60E0()
{
  v0 = sub_1D8CD6A50();
  if (*(v0 + 16))
  {
    sub_1D8CB870C(v0);
  }
}

uint64_t sub_1D8CD613C(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_4_11(a1, a2);
  v3 = OUTLINED_FUNCTION_9_4();
  result = v4(v3);
  if (v6)
  {
    OUTLINED_FUNCTION_8_8();
    v8 = v8 && v7 == 0xE000000000000000;
    if (!v8 && (OUTLINED_FUNCTION_1_21() & 1) == 0)
    {
      OUTLINED_FUNCTION_11_4(*(v2 + 192), *(v2 + 200));
    }
  }

  return result;
}

uint64_t sub_1D8CD61CC(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_4_11(a1, a2);
  v3 = OUTLINED_FUNCTION_9_4();
  result = v4(v3);
  if (v6)
  {
    OUTLINED_FUNCTION_8_8();
    v8 = v8 && v7 == 0xE000000000000000;
    if (!v8 && (OUTLINED_FUNCTION_1_21() & 1) == 0)
    {
      OUTLINED_FUNCTION_11_4(*(v2 + 208), *(v2 + 216));
    }
  }

  return result;
}

void sub_1D8CD625C(uint64_t a1, void *a2)
{
  v3 = v2;
  v24[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1D8CD7B54();
  MEMORY[0x1EEE9AC00](v5 - 8);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v6 = OUTLINED_FUNCTION_6_9();
  v8 = v7(v6);
  if (v8)
  {
    if (*(v8 + 16))
    {
      v9 = objc_opt_self();
      v10 = sub_1D8CD7CD4();

      v24[0] = 0;
      v11 = [v9 dataWithJSONObject:v10 options:0 error:v24];

      v12 = v24[0];
      if (v11)
      {
        v13 = sub_1D8CD7594();
        v15 = v14;

        sub_1D8CD7B44();
        v16 = sub_1D8CD7B24();
        if (v17)
        {
          sub_1D8CB9880(*(v3 + 304), *(v3 + 312), v16, v17);
        }

        sub_1D8CADC38(v13, v15);
      }

      else
      {
        v18 = v12;
        v19 = sub_1D8CD7454();

        swift_willThrow();
        if (qword_1ED9C4AC8 != -1)
        {
          OUTLINED_FUNCTION_3_13(&qword_1ED9C4AC8);
        }

        v20 = sub_1D8CD7A04();
        __swift_project_value_buffer(v20, qword_1ED9C5680);
        v21 = sub_1D8CD79E4();
        v22 = sub_1D8CD7E24();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          *v23 = 0;
          _os_log_impl(&dword_1D8C92000, v21, v22, "Error encoding preferred languages", v23, 2u);
          OUTLINED_FUNCTION_3_0();
        }
      }
    }

    else
    {
    }
  }
}

uint64_t sub_1D8CD6510(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_4_11(a1, a2);
  v3 = OUTLINED_FUNCTION_9_4();
  result = v4(v3);
  if (v6)
  {
    OUTLINED_FUNCTION_8_8();
    v8 = v8 && v7 == 0xE000000000000000;
    if (!v8 && (OUTLINED_FUNCTION_1_21() & 1) == 0)
    {
      OUTLINED_FUNCTION_11_4(*(v2 + 224), *(v2 + 232));
    }
  }

  return result;
}

uint64_t sub_1D8CD65A0()
{
  if (qword_1ECAAC4B8 != -1)
  {
    result = swift_once();
  }

  if (byte_1ED9C5648 == 1)
  {
    return sub_1D8CB9654(v0[8], v0[9], v0[6], v0[7]);
  }

  return result;
}

uint64_t sub_1D8CD6610(uint64_t a1, void *a2)
{
  if (*a2)
  {
    return sub_1D8CB9880(*(v2 + 320), *(v2 + 328), a2[4], a2[5]);
  }

  return result;
}

uint64_t sub_1D8CD6648(uint64_t a1, void *a2)
{
  if (*a2)
  {
    return sub_1D8CB9654(*(v2 + 240), *(v2 + 248), a2[4], a2[5]);
  }

  return result;
}

uint64_t sub_1D8CD6680@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAC668, &qword_1D8CD8FA0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  OUTLINED_FUNCTION_5_3();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v19 - v8;
  v10 = *(v3 + 336);
  v11 = sub_1D8CD7AD4();
  v12 = [v10 stringForKey_];

  if (v12)
  {
    sub_1D8CD7B04();

    sub_1D8CD7514();

    v13 = sub_1D8CD7554();
    if (__swift_getEnumTagSinglePayload(v9, 1, v13) != 1)
    {
      return (*(*(v13 - 8) + 32))(v20, v9, v13);
    }

    sub_1D8C953A4(v9, &qword_1ECAAC668, &qword_1D8CD8FA0);
  }

  if (a2)
  {
    if (sub_1D8CD7B84() == 20035 && v14 == 0xE200000000000000)
    {
    }

    else
    {
      sub_1D8CD8154();
    }
  }

  sub_1D8CD7514();

  v17 = sub_1D8CD7554();
  if (__swift_getEnumTagSinglePayload(v4, 1, v17) != 1)
  {
    return (*(*(v17 - 8) + 32))(v20, v4, v17);
  }

  sub_1D8C953A4(v4, &qword_1ECAAC668, &qword_1D8CD8FA0);
  sub_1D8CB9B58();
  swift_allocError();
  *v18 = 1;
  return swift_willThrow();
}

uint64_t sub_1D8CD6930()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 344));
  return v0;
}

uint64_t sub_1D8CD69F8()
{
  sub_1D8CD6930();

  return MEMORY[0x1EEE6BDC0](v0, 384, 7);
}

uint64_t sub_1D8CD6A50()
{
  sub_1D8CD7324();
  OUTLINED_FUNCTION_3();
  v80 = v1;
  v81 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v85 = v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D8CD7AD4();
  v5 = [v0 stringForKey_];

  if (v5)
  {
    v6 = sub_1D8CD7B04();
    v8 = v7;

    if (qword_1ED9C4AC8 != -1)
    {
      goto LABEL_55;
    }

    while (1)
    {
      v9 = sub_1D8CD7A04();
      v10 = __swift_project_value_buffer(v9, qword_1ED9C5680);

      v86 = v10;
      v11 = sub_1D8CD79E4();
      v12 = sub_1D8CD7E44();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v93[0] = v14;
        *v13 = 136315138;
        *(v13 + 4) = sub_1D8C9D088(v6, v8, v93);
        _os_log_impl(&dword_1D8C92000, v11, v12, "processing debug parameters %s", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v14);
        OUTLINED_FUNCTION_3_0();
        OUTLINED_FUNCTION_3_0();
      }

      v93[0] = 38;
      v93[1] = 0xE100000000000000;
      MEMORY[0x1EEE9AC00](v15);
      v79[-2] = v93;
      v16 = v6;
      v6 = 0;
      v17 = sub_1D8CCEE98(0x7FFFFFFFFFFFFFFFLL, 1, sub_1D8CBC894, &v79[-4], v16, v8);
      v19 = v17;
      v90 = *(v17 + 16);
      if (!v90)
      {
        break;
      }

      v20 = v17 + 32;
      v79[1] = v81 + 32;
      *&v18 = 136315138;
      v82 = v18;
      v21 = 0;
      v87 = MEMORY[0x1E69E7CC0];
      v83 = v17 + 32;
      v84 = v17;
      while (v21 < *(v19 + 16))
      {
        v22 = (v20 + 32 * v21);
        v23 = *v22;
        v6 = v22[1] >> 14;
        v24 = MEMORY[0x1E69E7CC0];
        if (v6 == *v22 >> 14)
        {
          goto LABEL_43;
        }

        v89 = v21;
        v25 = v22[3];
        v92 = v22[2];
        v8 = v25;

        v26 = v23;
        v27 = MEMORY[0x1E69E7CC0];
LABEL_10:
        v91 = v27;
        v28 = v26;
        while (1)
        {
          v29 = v28 >> 14;
          v30 = v26 >> 14;
          if (v28 >> 14 == v6)
          {
            break;
          }

          v31 = v6;
          OUTLINED_FUNCTION_0_22();
          if (sub_1D8CD7F04() == 61 && v32 == 0xE100000000000000)
          {

LABEL_19:
            if (v30 == v29)
            {
              v27 = v91;
            }

            else
            {
              if (v29 < v30)
              {
                goto LABEL_52;
              }

              v34 = sub_1D8CD7F14();
              v88 = v35;
              v37 = v36;
              v39 = v38;
              v40 = v91;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                OUTLINED_FUNCTION_7_6();
                sub_1D8CC353C();
                v40 = v46;
              }

              v42 = v40[2];
              v41 = v40[3];
              v43 = v40;
              if (v42 >= v41 >> 1)
              {
                OUTLINED_FUNCTION_13_2(v41);
                sub_1D8CC353C();
                v43 = v47;
              }

              v43[2] = v42 + 1;
              v44 = &v43[4 * v42];
              v27 = v43;
              v45 = v88;
              v44[4] = v34;
              v44[5] = v45;
              v44[6] = v37;
              v44[7] = v39;
            }

            OUTLINED_FUNCTION_0_22();
            v26 = sub_1D8CD7EE4();
            v6 = v31;
            goto LABEL_10;
          }

          v6 = sub_1D8CD8154();

          if (v6)
          {
            goto LABEL_19;
          }

          OUTLINED_FUNCTION_0_22();
          v28 = sub_1D8CD7EE4();
          v6 = v31;
        }

        if (v30 == v6)
        {

          v24 = v91;
          v48 = v91[2];
          v21 = v89;
          v20 = v83;
        }

        else
        {
          v24 = v91;
          if (v6 < v30)
          {
            goto LABEL_53;
          }

          v49 = sub_1D8CD7F14();
          v51 = v50;
          v53 = v52;
          v55 = v54;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_7_6();
            sub_1D8CC353C();
            v24 = v74;
          }

          v21 = v89;
          v20 = v83;
          v6 = v24[2];
          v56 = v24[3];
          v48 = v6 + 1;
          if (v6 >= v56 >> 1)
          {
            OUTLINED_FUNCTION_13_2(v56);
            sub_1D8CC353C();
            v24 = v75;
          }

          v24[2] = v48;
          v57 = &v24[4 * v6];
          v57[4] = v49;
          v57[5] = v51;
          v57[6] = v53;
          v57[7] = v55;
        }

        v19 = v84;
        if (v48 != 2)
        {
LABEL_43:

          v8 = sub_1D8CD79E4();
          v68 = sub_1D8CD7E24();

          if (os_log_type_enabled(v8, v68))
          {
            v6 = swift_slowAlloc();
            v69 = swift_slowAlloc();
            v93[0] = v69;
            *v6 = v82;
            MEMORY[0x1DA726B60](v24, MEMORY[0x1E69E67B0]);

            v70 = OUTLINED_FUNCTION_6_9();
            v73 = sub_1D8C9D088(v70, v71, v72);

            *(v6 + 4) = v73;
            _os_log_impl(&dword_1D8C92000, v8, v68, "invalid query components: %s", v6, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v69);
            OUTLINED_FUNCTION_3_0();
            OUTLINED_FUNCTION_3_0();
          }

          else
          {
          }
        }

        else
        {
          v58 = v24[4];
          v59 = v24[5];
          v6 = v24[6];
          v60 = v24[7];

          MEMORY[0x1DA726A10](v58, v59, v6, v60);
          v8 = v61;

          if (v24[2] < 2uLL)
          {
            goto LABEL_54;
          }

          v62 = v24[8];
          v63 = v24[9];
          v64 = v24[10];
          v65 = v24[11];

          v6 = MEMORY[0x1DA726A10](v62, v63, v64, v65);

          sub_1D8CD72F4();

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_7_6();
            sub_1D8CC3478();
            v87 = v76;
          }

          v66 = *(v87 + 16);
          v8 = (v66 + 1);
          if (v66 >= *(v87 + 24) >> 1)
          {
            sub_1D8CC3478();
            v87 = v77;
          }

          v67 = v87;
          *(v87 + 16) = v8;
          (*(v81 + 32))(v67 + ((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v66, v85, v80);
        }

        if (++v21 == v90)
        {

          return v87;
        }
      }

      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      OUTLINED_FUNCTION_3_13(&qword_1ED9C4AC8);
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D8CD71AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAACA80, &qword_1D8CD9EA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 OUTLINED_FUNCTION_17_2()
{
  v2 = *(v0 + 16);
  *(v1 - 144) = *v0;
  *(v1 - 128) = v2;
  result = *(v0 + 32);
  v4 = *(v0 + 48);
  *(v1 - 112) = result;
  *(v1 - 96) = v4;
  return result;
}