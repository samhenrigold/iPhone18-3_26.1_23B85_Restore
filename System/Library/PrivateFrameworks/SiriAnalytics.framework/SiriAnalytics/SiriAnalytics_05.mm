uint64_t sub_1D98D3D2C()
{
  OUTLINED_FUNCTION_26();
  v1 = *(v0 + 160);
  swift_willThrow();

  if (qword_1ECB480B0 != -1)
  {
    OUTLINED_FUNCTION_1_26(&qword_1ECB480B0);
  }

  v2 = *(v0 + 168);
  OUTLINED_FUNCTION_3_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48A60, &unk_1D9931CC0);
  sub_1D992BE24();
  OUTLINED_FUNCTION_2_25();
  sub_1D98DCEB4(v3, v4, v5, v6, 0xD000000000000015, v7);

  v8 = OUTLINED_FUNCTION_8_11();

  return v9(v8);
}

uint64_t RuntimeService.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t dispatch thunk of RuntimeService.killSwitchEnabled.getter()
{
  OUTLINED_FUNCTION_26();
  v4 = (*(*v0 + 120) + **(*v0 + 120));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D98D3FF0;

  return v4();
}

uint64_t sub_1D98D3FF0()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  OUTLINED_FUNCTION_29();
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3(v2);
}

uint64_t dispatch thunk of RuntimeService.killSwitchEnabled(_:)()
{
  OUTLINED_FUNCTION_26();
  v3 = v2;
  v6 = (*(*v0 + 128) + **(*v0 + 128));
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1D98D4320;

  return v6(v3);
}

uint64_t dispatch thunk of RuntimeService.purgeStagedMessages()()
{
  OUTLINED_FUNCTION_26();
  v4 = (*(*v0 + 136) + **(*v0 + 136));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D98D4320;

  return v4();
}

uint64_t sub_1D98D4324()
{
  *(v0 + 16) = [objc_allocWithZone(type metadata accessor for BiomeSELFStreamProvider()) init];
  *(v0 + 24) = [objc_allocWithZone(SiriAnalyticsPrivateLearningStorageProvider) init];
  return v0;
}

uint64_t sub_1D98D4378(void *a1)
{
  v3 = sub_1D98BB068();
  if (v3)
  {
    sub_1D98F2DF0(a1);
    v4 = *(v1 + 24);
    if (v4)
    {
      v5 = v4;
      v6 = sub_1D992B034();
      [v5 storeOrderedAnyEvent_];
    }
  }

  else
  {
    if (qword_1ED8BF428 != -1)
    {
      swift_once();
    }

    if (*(sub_1D98DCE30() + 24) == 1)
    {
      v7 = a1;
      v8 = sub_1D98BF59C(v7);
      sub_1D986A454(v8, v9, 0xD00000000000006ELL, 0x80000001D993B320, 0x5F28646E65707061, 0xEA0000000000293ALL);
    }

    else
    {
    }
  }

  return v3 & 1;
}

uint64_t sub_1D98D44E0()
{
  sub_1D98D44B8();

  return swift_deallocClassInstance();
}

uint64_t sub_1D98D4538(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    goto LABEL_4;
  }

  sub_1D98BE6B0(*(a1 + 16), 0);
  OUTLINED_FUNCTION_23_6();
  sub_1D987AF84();
  OUTLINED_FUNCTION_13_8(v2, v3, v4, v5, v6, v7, v8, v9, v12, v13);
  if (!v10)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v1;
}

void *sub_1D98D45A8(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    goto LABEL_4;
  }

  v1 = sub_1D98BE730(*(a1 + 16), 0);
  v2 = sub_1D992AE84();
  OUTLINED_FUNCTION_9(v2);
  OUTLINED_FUNCTION_28_4();
  sub_1D987B090();
  OUTLINED_FUNCTION_13_8(v3, v4, v5, v6, v7, v8, v9, v10, v13, v14);
  if (!v11)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v1;
}

uint64_t sub_1D98D46AC(uint64_t a1, uint64_t (*a2)(void, void), uint64_t (*a3)(void))
{
  if (!*(a1 + 16))
  {
    goto LABEL_4;
  }

  a2(*(a1 + 16), 0);
  OUTLINED_FUNCTION_23_6();
  v5 = a3();
  OUTLINED_FUNCTION_13_8(v5, v6, v7, v8, v9, v10, v11, v12, v15, v16);
  if (!v13)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t sub_1D98D472C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x1E69E7CC0];
  v25 = *(a1 + 16);
  sub_1D98B9D0C(0, v1, 0);
  v2 = v26;
  result = sub_1D986C874(a1);
  v7 = result;
  v8 = v25;
  v9 = 0;
  v10 = a1 + 64;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v7 < 1 << *(a1 + 32))
    {
      v11 = v7 >> 6;
      if ((*(v10 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_23;
      }

      if (*(a1 + 36) != v5)
      {
        goto LABEL_24;
      }

      v12 = *(*(a1 + 56) + 16 * v7);
      v14 = *(v26 + 16);
      v13 = *(v26 + 24);
      if (v14 >= v13 >> 1)
      {
        v24 = v5;
        v23 = v6;
        result = sub_1D98B9D0C((v13 > 1), v14 + 1, 1);
        v6 = v23;
        v5 = v24;
        v10 = a1 + 64;
        v8 = v25;
      }

      *(v26 + 16) = v14 + 1;
      *(v26 + 8 * v14 + 32) = v12;
      v15 = 1 << *(a1 + 32);
      if (v7 >= v15)
      {
        goto LABEL_25;
      }

      v16 = *(v10 + 8 * v11);
      if ((v16 & (1 << v7)) == 0)
      {
        goto LABEL_26;
      }

      if (*(a1 + 36) != v5)
      {
        goto LABEL_27;
      }

      v17 = v16 & (-2 << (v7 & 0x3F));
      if (v17)
      {
        v15 = __clz(__rbit64(v17)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v18 = v11 << 6;
        v19 = v11 + 1;
        v20 = (a1 + 72 + 8 * v11);
        while (v19 < (v15 + 63) >> 6)
        {
          v22 = *v20++;
          v21 = v22;
          v18 += 64;
          ++v19;
          if (v22)
          {
            result = sub_1D988AD24(v7, v5, v6 & 1);
            v10 = a1 + 64;
            v8 = v25;
            v15 = __clz(__rbit64(v21)) + v18;
            goto LABEL_18;
          }
        }

        result = sub_1D988AD24(v7, v5, v6 & 1);
        v10 = a1 + 64;
        v8 = v25;
      }

LABEL_18:
      if (++v9 == v8)
      {
        return v2;
      }

      v6 = 0;
      v5 = *(a1 + 36);
      v7 = v15;
      if (v15 < 0)
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
  return result;
}

uint64_t sub_1D98D4968(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x1E69E7CC0];
  v25 = *(a1 + 16);
  sub_1D98B9D0C(0, v1, 0);
  v2 = v26;
  result = sub_1D986C874(a1);
  v7 = result;
  v8 = v25;
  v9 = 0;
  v10 = a1 + 64;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v7 < 1 << *(a1 + 32))
    {
      v11 = v7 >> 6;
      if ((*(v10 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_23;
      }

      if (*(a1 + 36) != v5)
      {
        goto LABEL_24;
      }

      v12 = *(*(a1 + 56) + 16 * v7 + 8);
      v14 = *(v26 + 16);
      v13 = *(v26 + 24);
      if (v14 >= v13 >> 1)
      {
        v24 = v5;
        v23 = v6;
        result = sub_1D98B9D0C((v13 > 1), v14 + 1, 1);
        v6 = v23;
        v5 = v24;
        v10 = a1 + 64;
        v8 = v25;
      }

      *(v26 + 16) = v14 + 1;
      *(v26 + 8 * v14 + 32) = v12;
      v15 = 1 << *(a1 + 32);
      if (v7 >= v15)
      {
        goto LABEL_25;
      }

      v16 = *(v10 + 8 * v11);
      if ((v16 & (1 << v7)) == 0)
      {
        goto LABEL_26;
      }

      if (*(a1 + 36) != v5)
      {
        goto LABEL_27;
      }

      v17 = v16 & (-2 << (v7 & 0x3F));
      if (v17)
      {
        v15 = __clz(__rbit64(v17)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v18 = v11 << 6;
        v19 = v11 + 1;
        v20 = (a1 + 72 + 8 * v11);
        while (v19 < (v15 + 63) >> 6)
        {
          v22 = *v20++;
          v21 = v22;
          v18 += 64;
          ++v19;
          if (v22)
          {
            result = sub_1D988AD24(v7, v5, v6 & 1);
            v10 = a1 + 64;
            v8 = v25;
            v15 = __clz(__rbit64(v21)) + v18;
            goto LABEL_18;
          }
        }

        result = sub_1D988AD24(v7, v5, v6 & 1);
        v10 = a1 + 64;
        v8 = v25;
      }

LABEL_18:
      if (++v9 == v8)
      {
        return v2;
      }

      v6 = 0;
      v5 = *(a1 + 36);
      v7 = v15;
      if (v15 < 0)
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
  return result;
}

void sub_1D98D4BA4()
{
  OUTLINED_FUNCTION_6_2();
  v3 = v2;
  v4 = *(type metadata accessor for ComponentIdentifiersTable.Record(0) - 8);
  MEMORY[0x1EEE9AC00](*(v4 + 64));
  OUTLINED_FUNCTION_13();
  v50 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48D50, &unk_1D9933FE0);
  OUTLINED_FUNCTION_9(v7);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_24_5();
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](*(v10 + 64));
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_22_6();
  v11 = sub_1D992AE84();
  OUTLINED_FUNCTION_10_4();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48700, &qword_1D9931330);
  OUTLINED_FUNCTION_10_4();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  *(v0 + *(v9 + 20)) = 0;
  *(v0 + *(v9 + 28)) = v3;
  OUTLINED_FUNCTION_1_27();
  sub_1D98D8990(v0, v1, v19);
  OUTLINED_FUNCTION_76();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v9);
  v23 = v3;
  v24 = sub_1D98D7C44(v1);
  sub_1D986B804(v1, &qword_1ECB48D50, &unk_1D9933FE0);
  if (!v24)
  {
    goto LABEL_9;
  }

  v25 = *(v24 + 16);
  if (!v25)
  {

LABEL_9:
    OUTLINED_FUNCTION_0_39();
    sub_1D98D8938(v0, v44);
    goto LABEL_10;
  }

  v46 = v0;
  v51 = MEMORY[0x1E69E7CC0];
  sub_1D98B977C(0, v25, 0);
  v26 = v51;
  OUTLINED_FUNCTION_28_4();
  v45[1] = v24;
  v28 = v24 + v27;
  OUTLINED_FUNCTION_0();
  v30 = v29;
  v49 = *(v31 + 64);
  v32 = *(v4 + 72);
  v33 = (v29 + 16);
  v34 = (v29 + 32);
  v47 = v29 + 32;
  v48 = v32;
  do
  {
    MEMORY[0x1EEE9AC00](v34);
    v36 = v45 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
    OUTLINED_FUNCTION_8_12();
    v37 = v50;
    sub_1D98D8990(v28, v50, v38);
    (*v33)(v36, v37, v11);
    sub_1D98D8938(v37, v3);
    v51 = v26;
    v40 = *(v26 + 16);
    v39 = *(v26 + 24);
    v3 = (v40 + 1);
    if (v40 >= v39 >> 1)
    {
      v42 = OUTLINED_FUNCTION_14(v39);
      sub_1D98B977C(v42, v40 + 1, 1);
      v26 = v51;
    }

    *(v26 + 16) = v3;
    OUTLINED_FUNCTION_28_4();
    (*(v30 + 32))(v26 + v41 + *(v30 + 72) * v40, v36, v11);
    v34 = v48;
    v28 += v48;
    --v25;
  }

  while (v25);
  OUTLINED_FUNCTION_0_39();
  sub_1D98D8938(v46, v43);

LABEL_10:
  OUTLINED_FUNCTION_7();
}

uint64_t Metastore.componentIdComprehension(for:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48D50, &unk_1D9933FE0);
  OUTLINED_FUNCTION_9(v2);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v29 - v4;
  v6 = type metadata accessor for ComponentIdentifiersTable.Predicate(0);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](*(v7 + 64));
  OUTLINED_FUNCTION_13();
  v10 = v9 - v8;
  v11 = sub_1D992AE84();
  OUTLINED_FUNCTION_5();
  (*(v12 + 16))(v10, a1, v11);
  OUTLINED_FUNCTION_76();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48700, &qword_1D9931330);
  OUTLINED_FUNCTION_10_4();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  *(v10 + *(v6 + 20)) = 0;
  *(v10 + *(v6 + 28)) = 0;
  OUTLINED_FUNCTION_1_27();
  sub_1D98D8990(v10, v5, v20);
  OUTLINED_FUNCTION_76();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v6);
  v24 = sub_1D98D7C44(v5);
  sub_1D986B804(v5, &qword_1ECB48D50, &unk_1D9933FE0);
  if (v24)
  {
    type metadata accessor for ClockComponentIdComprehension();
    sub_1D98D50C0();
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  OUTLINED_FUNCTION_0_39();
  sub_1D98D8938(v10, v27);
  return v26;
}

void sub_1D98D50C0()
{
  OUTLINED_FUNCTION_6_2();
  v1 = v0;
  v2 = 0;
  v3 = type metadata accessor for ComponentIdentifiersTable.Record(0);
  OUTLINED_FUNCTION_6();
  v146 = v4;
  MEMORY[0x1EEE9AC00](*(v5 + 64));
  v130 = &v129 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v7);
  v134 = &v129 - v8;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v9);
  v144 = &v129 - v10;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v11);
  v147 = &v129 - v12;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v129 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v129 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v129 - v20;
  v142 = *(v1 + 16);
  v22 = MEMORY[0x1E69E7CC0];
  v139 = 0;
  v140 = v1;
  while (v142 != v2)
  {
    if (v2 >= *(v1 + 16))
    {
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      sub_1D992B1A4();
      sub_1D992BFC4();
      __break(1u);
      goto LABEL_82;
    }

    OUTLINED_FUNCTION_11_13();
    v25 = v24 & ~v23;
    v27 = *(v26 + 72);
    OUTLINED_FUNCTION_7_16(v1 + v25 + v27 * v2);
    if (*(v21 + *(v3 + 20)))
    {
      OUTLINED_FUNCTION_2_26();
      sub_1D98D8938(v21, v28);
      ++v2;
    }

    else
    {
      sub_1D98AEF4C(v21, v18);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v149 = v22;
      v145 = v18;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D98B9CA4();
        v1 = v140;
        v22 = v149;
      }

      v31 = *(v22 + 16);
      v30 = *(v22 + 24);
      if (v31 >= v30 >> 1)
      {
        OUTLINED_FUNCTION_14(v30);
        sub_1D98B9CA4();
        v1 = v140;
        v22 = v149;
      }

      ++v2;
      *(v22 + 16) = v31 + 1;
      v18 = v145;
      sub_1D98AEF4C(v145, v22 + v25 + v31 * v27);
    }
  }

  v32 = *(v22 + 16);
  if (v32)
  {
    v149 = MEMORY[0x1E69E7CC0];
    sub_1D992BDC4();
    OUTLINED_FUNCTION_11_13();
    v35 = v22 + (v34 & ~v33);
    v37 = *(v36 + 72);
    v38 = v134;
    do
    {
      OUTLINED_FUNCTION_9_11();
      sub_1D98D8990(v35, v15, v39);
      *&v15[*(v3 + 24)];
      sub_1D98D8938(v15, &v149);
      sub_1D992BDA4();
      sub_1D992BDD4();
      sub_1D992BDE4();
      sub_1D992BDB4();
      v35 += v37;
      --v32;
    }

    while (v32);

    v40 = v149;
    v1 = v140;
  }

  else
  {

    v40 = MEMORY[0x1E69E7CC0];
    v38 = v134;
  }

  sub_1D98B3DBC(v40);
  v129 = v41;
  v42 = sub_1D98D5B74(v1);
  v43 = MEMORY[0x1E69E7CC8];
  v151 = MEMORY[0x1E69E7CC8];
  v21 = (v42 + 8);
  v44 = 1 << *(v42 + 32);
  v45 = -1;
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  v46 = v45 & v42[8];
  v47 = (v44 + 63) >> 6;
  v133 = v42;

  v48 = 0;
  v141 = xmmword_1D992FCB0;
  v138 = v43;
  v143 = v3;
  v132 = v21;
  v131 = v47;
  if (v46)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v49 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
      goto LABEL_77;
    }

    if (v49 >= v47)
    {
      break;
    }

    v46 = *(v21 + 8 * v49);
    ++v48;
    if (v46)
    {
      v48 = v49;
LABEL_23:
      while (2)
      {
        v135 = (v46 - 1) & v46;
        v136 = v48;
        v50 = (v48 << 9) | (8 * __clz(__rbit64(v46)));
        v51 = *(v133[6] + v50);
        v52 = *(v133[7] + v50);
        v53 = MEMORY[0x1E69E7CC8];
        v149 = MEMORY[0x1E69E7CC8];
        v145 = *(v52 + 16);
        swift_bridgeObjectRetain_n();
        v137 = v51;
        for (i = 0; v145 != i; ++i)
        {
          if (i >= *(v52 + 16))
          {
            __break(1u);
LABEL_74:
            __break(1u);
LABEL_75:
            __break(1u);
            goto LABEL_76;
          }

          v55 = v147;
          v56 = (*(v146 + 80) + 32) & ~*(v146 + 80);
          v57 = *(v146 + 72);
          OUTLINED_FUNCTION_7_16(v52 + v56 + v57 * i);
          v58 = *(v55 + *(v3 + 24));
          v21 = sub_1D9889858();
          v60 = v53[2];
          v61 = (v59 & 1) == 0;
          if (__OFADD__(v60, v61))
          {
            goto LABEL_74;
          }

          v62 = v59;
          if (v53[3] < v60 + v61)
          {
            sub_1D98F0FEC();
            v53 = v149;
            v63 = sub_1D9889858();
            if ((v62 & 1) != (v64 & 1))
            {
              goto LABEL_81;
            }

            v21 = v63;
          }

          if (v62)
          {

            v65 = v53[7];
            sub_1D98AEF4C(v147, v144);
            v66 = *(v65 + 8 * v21);
            v67 = swift_isUniquelyReferenced_nonNull_native();
            *(v65 + 8 * v21) = v66;
            if ((v67 & 1) == 0)
            {
              sub_1D98BDEE4(0, *(v66 + 16) + 1, 1, v66);
              v66 = v74;
              *(v65 + 8 * v21) = v74;
            }

            v69 = *(v66 + 16);
            v68 = *(v66 + 24);
            if (v69 >= v68 >> 1)
            {
              v75 = OUTLINED_FUNCTION_14(v68);
              sub_1D98BDEE4(v75, v69 + 1, 1, v66);
              v66 = v76;
              *(v65 + 8 * v21) = v76;
            }

            *(v66 + 16) = v69 + 1;
            sub_1D98AEF4C(v144, v66 + v56 + v69 * v57);
            v3 = v143;
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48A10, &qword_1D9932568);
            v70 = swift_allocObject();
            *(v70 + 16) = v141;
            sub_1D98AEF4C(v147, v70 + v56);
            v53[(v21 >> 6) + 8] |= 1 << v21;
            *(v53[6] + 8 * v21) = v58;
            *(v53[7] + 8 * v21) = v70;
            v71 = v53[2];
            v72 = __OFADD__(v71, 1);
            v73 = v71 + 1;
            if (v72)
            {
              goto LABEL_75;
            }

            v53[2] = v73;
          }
        }

        v77 = v139;
        v78 = sub_1D98D62C4(v53, &v151);
        v139 = v77;

        type metadata accessor for ComponentClusterMetadata();
        v79 = swift_allocObject();
        v21 = v137;
        sub_1D98D6CF0(v21, v78);
        v80 = v138;
        if ((v138 & 0xC000000000000001) != 0)
        {
          if (v138 < 0)
          {
            v81 = v138;
          }

          else
          {
            v81 = v138 & 0xFFFFFFFFFFFFFF8;
          }

          v82 = sub_1D992BC94();
          v38 = v134;
          if (__OFADD__(v82, 1))
          {
            goto LABEL_80;
          }

          v80 = sub_1D98D84E8(v81, v82 + 1);
        }

        else
        {
          v38 = v134;
        }

        v83 = swift_isUniquelyReferenced_nonNull_native();
        v149 = v80;
        sub_1D989E438(v79, v21, v83);

        v138 = v149;
        v1 = v140;
        v21 = v132;
        v47 = v131;
        v46 = v135;
        v48 = v136;
        if (v135)
        {
          continue;
        }

        break;
      }
    }
  }

  v84 = MEMORY[0x1E69E7CC0];
  v85 = 0;
  v149 = sub_1D98D8B10(MEMORY[0x1E69E7CC0]);
  v150 = v86;
  while (v142 != v85)
  {
    if (v85 >= *(v1 + 16))
    {
      goto LABEL_78;
    }

    OUTLINED_FUNCTION_11_13();
    v21 = v38;
    v89 = v88 & ~v87;
    v91 = *(v90 + 72);
    OUTLINED_FUNCTION_7_16(v1 + v89 + v91 * v85);
    if (sub_1D992B174() == 1)
    {
      sub_1D98AEF4C(v21, v130);
      v93 = swift_isUniquelyReferenced_nonNull_native();
      v148 = v84;
      if ((v93 & 1) == 0)
      {
        sub_1D98B9CA4();
        v84 = v148;
      }

      v1 = v140;
      v95 = *(v84 + 16);
      v94 = *(v84 + 24);
      v21 = v95 + 1;
      if (v95 >= v94 >> 1)
      {
        OUTLINED_FUNCTION_14(v94);
        sub_1D98B9CA4();
        v1 = v140;
        v84 = v148;
      }

      ++v85;
      *(v84 + 16) = v21;
      sub_1D98AEF4C(v130, v84 + v89 + v95 * v91);
      v38 = v134;
    }

    else
    {
      OUTLINED_FUNCTION_2_26();
      sub_1D98D8938(v21, v92);
      ++v85;
      v1 = v140;
      v38 = v21;
    }
  }

  v148 = v84;

  v21 = v139;
  sub_1D98DA04C(&v148);
  if (!v21)
  {

    v96 = 0;
    v97 = v148;
    v98 = *(v148 + 16);
    v140 = v148;
    *&v141 = v98;
    while (1)
    {
      if (v96 == v141)
      {

        v124 = v151;
        v125 = v149;
        v126 = v150;
        type metadata accessor for ClockComponentIdComprehension();
        v127 = swift_allocObject();
        v128 = v138;
        v127[2] = v129;
        v127[3] = v128;
        v127[4] = v124;
        v127[5] = v125;
        v127[6] = v126;
        OUTLINED_FUNCTION_7();
        return;
      }

      if (v96 >= *(v97 + 16))
      {
        goto LABEL_79;
      }

      OUTLINED_FUNCTION_11_13();
      v102 = v101 + (v100 & ~v99);
      v104 = *(v103 + 72);
      v144 = v96;
      v105 = *(v102 + v104 * v96 + *(v3 + 24));
      v106 = sub_1D992AE84();
      v142 = &v129;
      OUTLINED_FUNCTION_6();
      v108 = v107;
      v110 = v109[8];
      MEMORY[0x1EEE9AC00](v109);
      v111 = v105;
      sub_1D992B194();

      v113 = v149;
      v112 = v150;
      v114 = *(v108 + 80);
      v115 = v150 + ((v114 + 32) & ~v114);
      v116 = v150[2];
      v147 = &v129 - ((v110 + 15) & 0xFFFFFFFFFFFFFFF0);
      if (!v149)
      {
        break;
      }

      sub_1D98D968C(&v129 - ((v110 + 15) & 0xFFFFFFFFFFFFFFF0), v115, v116, (v113 + 16), v113 + 32);
      v118 = v117;
      v120 = v119;

      if (v118)
      {
        goto LABEL_70;
      }

LABEL_71:
      v96 = v144 + 1;
      v123 = *(v108 + 8);
      v21 = v108 + 8;
      v123(v147, v106);
      v3 = v143;
      v97 = v140;
    }

    v145 = v150 + ((v114 + 32) & ~v114);
    v121 = 0;
    while (v116 != v121)
    {
      MEMORY[0x1EEE9AC00](v112);
      (*(v108 + 16))(&v129 - ((v110 + 15) & 0xFFFFFFFFFFFFFFF0), &v145[*(v108 + 72) * v121], v106);
      sub_1D9882D14(&qword_1ED8BF058, MEMORY[0x1EEE78930]);
      v122 = sub_1D992B5F4();
      (*(v108 + 8))(&v129 - ((v110 + 15) & 0xFFFFFFFFFFFFFFF0), v106);
      ++v121;
      if (v122)
      {
        goto LABEL_71;
      }
    }

    v120 = 0;
LABEL_70:
    sub_1D98D8EE8(v147, v120);
    goto LABEL_71;
  }

LABEL_82:

  __break(1u);
}

void *sub_1D98D5B74(uint64_t a1)
{
  v37 = type metadata accessor for ComponentIdentifiersTable.Record(0);
  MEMORY[0x1EEE9AC00](*(v37 - 8));
  v3 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v33 - v6;
  v8 = *(a1 + 16);
  if (!v8)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v36 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = a1 + v36;
  v10 = MEMORY[0x1E69E7CC8];
  v11 = *(v5 + 72);
  v34 = v11;
  v35 = &v33 - v6;
  while (1)
  {
    sub_1D98D8990(v9, v7, type metadata accessor for ComponentIdentifiersTable.Record);
    v12 = *&v7[*(v37 + 20)];
    if (!v12)
    {
      sub_1D98D8938(v7, type metadata accessor for ComponentIdentifiersTable.Record);
      goto LABEL_22;
    }

    v13 = v10[2];
    v14 = v12;
    if (v13 && (v15 = sub_1D9889858(), (v16 & 1) != 0))
    {
      v17 = *(v10[7] + 8 * v15);
    }

    else
    {
      v17 = MEMORY[0x1E69E7CC0];
    }

    sub_1D98D8990(v7, v3, type metadata accessor for ComponentIdentifiersTable.Record);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1D98BDEE4(0, *(v17 + 16) + 1, 1, v17);
      v17 = v30;
    }

    v19 = *(v17 + 16);
    v18 = *(v17 + 24);
    if (v19 >= v18 >> 1)
    {
      sub_1D98BDEE4(v18 > 1, v19 + 1, 1, v17);
      v17 = v31;
    }

    *(v17 + 16) = v19 + 1;
    sub_1D98AEF4C(v3, v17 + v36 + v19 * v11);
    swift_isUniquelyReferenced_nonNull_native();
    v38 = v10;
    v20 = v14;
    v21 = sub_1D9889858();
    if (__OFADD__(v10[2], (v22 & 1) == 0))
    {
      break;
    }

    v23 = v21;
    v24 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48D88, &qword_1D99340D8);
    if (sub_1D992BE34())
    {
      v25 = sub_1D9889858();
      if ((v24 & 1) != (v26 & 1))
      {
        goto LABEL_28;
      }

      v23 = v25;
    }

    v10 = v38;
    if (v24)
    {
      *(v38[7] + 8 * v23) = v17;
    }

    else
    {
      v38[(v23 >> 6) + 8] |= 1 << v23;
      *(v10[6] + 8 * v23) = v20;
      *(v10[7] + 8 * v23) = v17;
      v27 = v10[2];
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        goto LABEL_27;
      }

      v10[2] = v29;
    }

    v7 = v35;
    sub_1D98D8938(v35, type metadata accessor for ComponentIdentifiersTable.Record);
    v11 = v34;
LABEL_22:
    v9 += v11;
    if (!--v8)
    {
      return v10;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  sub_1D992B1A4();
  result = sub_1D992BFC4();
  __break(1u);
  return result;
}

void *sub_1D98D5EE0(uint64_t a1)
{
  v40 = *(type metadata accessor for ComponentIdentifiersTable.Record(0) - 8);
  MEMORY[0x1EEE9AC00](*(v40 + 64));
  v39 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v44 = &v36 - v3;
  v4 = 0;
  v5 = MEMORY[0x1E69E7CC8];
  v45 = MEMORY[0x1E69E7CC8];
  v41 = *(a1 + 16);
  v37 = xmmword_1D992FCB0;
  v38 = a1;
  while (1)
  {
    if (v41 == v4)
    {

      return v5;
    }

    if (v4 >= *(a1 + 16))
    {
      break;
    }

    v6 = (*(v40 + 80) + 32) & ~*(v40 + 80);
    v7 = *(v40 + 72);
    v43 = v4;
    v8 = a1 + v6 + v7 * v4;
    v9 = v44;
    sub_1D98D8990(v8, v44, type metadata accessor for ComponentIdentifiersTable.Record);
    v10 = sub_1D992AE84();
    v42 = &v36;
    v11 = *(v10 - 8);
    MEMORY[0x1EEE9AC00](*(v11 + 64));
    v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v13, v9, v10);
    v15 = sub_1D9889568();
    v16 = v5[2];
    v17 = (v14 & 1) == 0;
    v18 = v16 + v17;
    if (__OFADD__(v16, v17))
    {
      goto LABEL_19;
    }

    v19 = v14;
    if (v5[3] < v18)
    {
      sub_1D98F1530(v18, 1);
      v5 = v45;
      v20 = sub_1D9889568();
      if ((v19 & 1) != (v21 & 1))
      {
        goto LABEL_21;
      }

      v15 = v20;
    }

    if (v19)
    {
      (*(v11 + 8))(v13, v10);
      v22 = v5[7];
      sub_1D98AEF4C(v44, v39);
      v23 = *(v22 + 8 * v15);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v22 + 8 * v15) = v23;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D98BDEE4(0, *(v23 + 16) + 1, 1, v23);
        v23 = v33;
        *(v22 + 8 * v15) = v33;
      }

      v25 = v43;
      v27 = *(v23 + 16);
      v26 = *(v23 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_1D98BDEE4(v26 > 1, v27 + 1, 1, v23);
        v23 = v34;
        *(v22 + 8 * v15) = v34;
      }

      a1 = v38;
      v28 = v39;
      *(v23 + 16) = v27 + 1;
      sub_1D98AEF4C(v28, v23 + v6 + v27 * v7);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48A10, &qword_1D9932568);
      v29 = swift_allocObject();
      *(v29 + 16) = v37;
      sub_1D98AEF4C(v44, v29 + v6);
      v5[(v15 >> 6) + 8] |= 1 << v15;
      (*(v11 + 32))(v5[6] + *(v11 + 72) * v15, v13, v10);
      *(v5[7] + 8 * v15) = v29;
      v30 = v5[2];
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        goto LABEL_20;
      }

      v5[2] = v32;
      a1 = v38;
      v25 = v43;
    }

    v4 = v25 + 1;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_1D992BFC4();
  __break(1u);
  return result;
}

uint64_t sub_1D98D62C4(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v70 = a2;
  v5 = type metadata accessor for ComponentIdentifiersTable.Record(0);
  v73 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](*(v73 + 64));
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = MEMORY[0x1E69E7CC8];
  v75 = MEMORY[0x1E69E7CC8];
  v8 = 1 << *(a1 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  while (v10)
  {
LABEL_10:
    v14 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v15 = (v12 << 9) | (8 * v14);
    v16 = *(*(a1 + 56) + v15);
    if (*(v16 + 16))
    {
      v72 = *(*(a1 + 48) + v15);
      sub_1D98D8990(v16 + ((*(v73 + 80) + 32) & ~*(v73 + 80)), v7, type metadata accessor for ComponentIdentifiersTable.Record);
      v17 = &v7[v5[7]];
      if (v17[25] & 1) != 0 || (*(v17 + 2) & 1) != 0 || (v17[24])
      {
        sub_1D98D8938(v7, type metadata accessor for ComponentIdentifiersTable.Record);
      }

      else
      {
        v68 = *v17;
        v69 = v3;
        v67 = *(v17 + 2);
        v18 = *&v7[v5[6]];
        v19 = *&v7[v5[5]];
        if (v19)
        {
          v65 = *&v7[v5[5]];
          v66 = v18;
          v20 = *v70;
          if ((*v70 & 0xC000000000000001) != 0)
          {
            if (v20 >= 0)
            {
              v20 &= 0xFFFFFFFFFFFFFF8uLL;
            }

            v21 = v19;
            v22 = v72;

            v23 = sub_1D992BC94();
            if (__OFADD__(v23, 1))
            {
              goto LABEL_49;
            }

            v24 = sub_1D98D86D8(v20, v23 + 1);
            *v70 = v24;
          }

          else
          {
            v26 = v19;
            v27 = v72;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v74 = *v70;
          v28 = v74;
          v29 = sub_1D9889858();
          v30 = v28[2];
          v64 = v31;
          v32 = (v31 & 1) == 0;
          v61 = v29;
          v62 = v30 + v32;
          if (__OFADD__(v30, v32))
          {
            goto LABEL_48;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48960, &unk_1D9932370);
          if (sub_1D992BE34())
          {
            v33 = sub_1D9889858();
            v35 = v64;
            if ((v64 & 1) != (v34 & 1))
            {
              goto LABEL_51;
            }
          }

          else
          {
            v33 = v61;
            v35 = v64;
          }

          v36 = v74;
          if (v35)
          {
            v37 = v74[7];
            v38 = *(v37 + 8 * v33);
            *(v37 + 8 * v33) = v65;
          }

          else
          {
            v74[(v33 >> 6) + 8] |= 1 << v33;
            v40 = v65;
            v39 = v66;
            *(v36[6] + 8 * v33) = v66;
            *(v36[7] + 8 * v33) = v40;
            v41 = v36[2];
            v42 = __OFADD__(v41, 1);
            v43 = v41 + 1;
            if (v42)
            {
              goto LABEL_50;
            }

            v36[2] = v43;
            v44 = v39;
          }

          *v70 = v36;
        }

        else
        {
          v25 = v72;
        }

        sub_1D98D8938(v7, type metadata accessor for ComponentIdentifiersTable.Record);

        v45 = v71;
        if (*(v71 + 24) <= *(v71 + 16))
        {
          sub_1D98F0E34();
          v45 = v75;
        }

        v71 = v45;
        v46 = sub_1D992BBC4();
        v47 = v71;
        v48 = v71 + 64;
        v49 = -1 << *(v71 + 32);
        v50 = v46 & ~v49;
        v51 = v50 >> 6;
        if (((-1 << v50) & ~*(v71 + 64 + 8 * (v50 >> 6))) == 0)
        {
          v53 = 0;
          v54 = (63 - v49) >> 6;
          v3 = v69;
          while (++v51 != v54 || (v53 & 1) == 0)
          {
            v55 = v51 == v54;
            if (v51 == v54)
            {
              v51 = 0;
            }

            v53 |= v55;
            v56 = *(v48 + 8 * v51);
            if (v56 != -1)
            {
              v52 = __clz(__rbit64(~v56)) + (v51 << 6);
              goto LABEL_44;
            }
          }

          goto LABEL_47;
        }

        v52 = __clz(__rbit64((-1 << v50) & ~*(v71 + 64 + 8 * (v50 >> 6)))) | v50 & 0x7FFFFFFFFFFFFFC0;
        v3 = v69;
LABEL_44:
        *(v48 + ((v52 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v52;
        *(v47[6] + 8 * v52) = v72;
        v57 = (v47[7] + 16 * v52);
        v58 = v67;
        *v57 = v68;
        v57[1] = v58;
        ++v47[2];
      }
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v11)
    {

      return v71;
    }

    v10 = *(a1 + 64 + 8 * v13);
    ++v12;
    if (v10)
    {
      v12 = v13;
      goto LABEL_10;
    }
  }

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
  sub_1D992B1A4();
  result = sub_1D992BFC4();
  __break(1u);
  return result;
}

uint64_t sub_1D98D67BC(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC8];
  v43 = MEMORY[0x1E69E7CC8];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v35[1] = v35;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48D58, &unk_1D9934090);
  v7 = ((*(*(v42 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v37 = v35 - v8;
  v9 = (v4 + 63) >> 6;
  v39 = a1;

  v11 = 0;
  v36 = v3;
  if (!v6)
  {
    goto LABEL_5;
  }

  do
  {
LABEL_9:
    v13 = __clz(__rbit64(v6)) | (v11 << 6);
    v14 = v39;
    v15 = *(v39 + 48);
    v16 = sub_1D992AE84();
    v41 = *(v16 - 8);
    v40 = *(v41 + 72);
    v17 = v15 + v40 * v13;
    v18 = v37;
    (*(v41 + 16))(v37, v17, v16);
    *(v18 + *(v42 + 48)) = *(*(v14 + 56) + 8 * v13);
    type metadata accessor for ClockComponentIdComprehension();
    swift_bridgeObjectRetain_n();
    sub_1D98D50C0();
    v20 = v19;
    MEMORY[0x1EEE9AC00](v21);
    v23 = v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    sub_1D98DB7FC(v18, v23);
    v24 = *(v2 + 16);
    if (*(v2 + 24) <= v24)
    {
      sub_1D98F12CC(v24 + 1, 1);
    }

    v2 = v43;
    sub_1D9882D14(&qword_1ED8BF060, MEMORY[0x1EEE78928]);
    result = sub_1D992B5C4();
    v25 = v2 + 64;
    v26 = -1 << *(v2 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    if (((-1 << v27) & ~*(v2 + 64 + 8 * (v27 >> 6))) == 0)
    {
      v31 = 0;
      v32 = (63 - v26) >> 6;
      while (++v28 != v32 || (v31 & 1) == 0)
      {
        v33 = v28 == v32;
        if (v28 == v32)
        {
          v28 = 0;
        }

        v31 |= v33;
        v34 = *(v25 + 8 * v28);
        if (v34 != -1)
        {
          v29 = v16;
          v30 = __clz(__rbit64(~v34)) + (v28 << 6);
          goto LABEL_20;
        }
      }

      goto LABEL_24;
    }

    v29 = v16;
    v30 = __clz(__rbit64((-1 << v27) & ~*(v2 + 64 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_20:
    v6 &= v6 - 1;
    *(v25 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    (*(v41 + 32))(*(v2 + 48) + v30 * v40, v23, v29);
    *(*(v2 + 56) + 8 * v30) = v20;
    ++*(v2 + 16);

    v3 = v36;
  }

  while (v6);
LABEL_5:
  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v9)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v12);
    ++v11;
    if (v6)
    {
      v11 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1D98D6B60(void *a1)
{
  v3 = sub_1D98B113C(a1, *(v1 + 32));
  if (!v3)
  {
    v3 = a1;
  }

  v4 = v3;
  v5 = *(v1 + 24);
  if (!v5)
  {

    return 0;
  }

  v6 = sub_1D98B11E0(v3, v5);

  if (!v6)
  {
    return 0;
  }

  return v6;
}

uint64_t sub_1D98D6BC8(uint64_t a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v11[2] = v2;
  v11[3] = v3;
  v11[4] = a1;
  v4 = sub_1D98D910C(sub_1D98DB6F0, v11, v3);
  result = 0;
  if ((v6 & 1) == 0)
  {
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
    }

    else
    {
      v8 = *(v3 + 16);
      if (v8 >= v7)
      {

        v9 = OUTLINED_FUNCTION_27();
        return sub_1D98DB728(v9, v10, v7, v8);
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t ClockComponentIdComprehension.deinit()
{

  return v0;
}

uint64_t ClockComponentIdComprehension.__deallocating_deinit()
{
  ClockComponentIdComprehension.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D98D6CF0(void *a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = a1;
  sub_1D98D6D44(a2);
  v6 = v5;

  *(v2 + 24) = v6;
  return v2;
}

void sub_1D98D6D44(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48D68, &qword_1D99340B0);
    v2 = sub_1D992BEE4();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = sub_1D992B1A4();
  v4 = MEMORY[0x1E69E6158];
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a1 + 64);
  v9 = v2 + 64;

  v34 = a1;

  if (v3 == v4)
  {
    v22 = 0;
    while (v8)
    {
      v23 = v22;
LABEL_30:
      v24 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v25 = *(*(a1 + 48) + 8 * (v24 | (v23 << 6)));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48D70, &qword_1D99340B8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48D78, &unk_1D99340C0);
      swift_dynamicCast();
      v26 = sub_1D9889858();
      v27 = v26;
      if (v28)
      {
        v29 = *(v2 + 48);
        v30 = *(v29 + 8 * v26);
        *(v29 + 8 * v26) = v25;

        *(*(v2 + 56) + 16 * v27) = v35;
        v22 = v23;
      }

      else
      {
        if (*(v2 + 16) >= *(v2 + 24))
        {
          goto LABEL_39;
        }

        *(v9 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
        *(*(v2 + 48) + 8 * v26) = v25;
        *(*(v2 + 56) + 16 * v26) = v35;
        v31 = *(v2 + 16);
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          goto LABEL_40;
        }

        *(v2 + 16) = v33;
        v22 = v23;
      }
    }

    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v23 >= ((v6 + 63) >> 6))
      {
LABEL_35:

        return;
      }

      v8 = *(v5 + 8 * v23);
      ++v22;
      if (v8)
      {
        goto LABEL_30;
      }
    }
  }

  else
  {
    v10 = 0;
    if (v8)
    {
      goto LABEL_13;
    }

    do
    {
LABEL_9:
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= ((v6 + 63) >> 6))
      {
        goto LABEL_35;
      }

      v8 = *(v5 + 8 * v11);
      ++v10;
    }

    while (!v8);
    v10 = v11;
LABEL_13:
    while (1)
    {
      v12 = *(*(v34 + 48) + 8 * (__clz(__rbit64(v8)) | (v10 << 6)));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48D70, &qword_1D99340B8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48D78, &unk_1D99340C0);
      swift_dynamicCast();
      v13 = sub_1D992BBC4();
      v14 = -1 << *(v2 + 32);
      v15 = v13 & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v9 + 8 * (v15 >> 6))) == 0)
      {
        break;
      }

      v17 = __clz(__rbit64((-1 << v15) & ~*(v9 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_22:
      v8 &= v8 - 1;
      *(v9 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v2 + 48) + 8 * v17) = v12;
      *(*(v2 + 56) + 16 * v17) = v35;
      ++*(v2 + 16);
      if (!v8)
      {
        goto LABEL_9;
      }
    }

    v18 = 0;
    v19 = (63 - v14) >> 6;
    while (++v16 != v19 || (v18 & 1) == 0)
    {
      v20 = v16 == v19;
      if (v16 == v19)
      {
        v16 = 0;
      }

      v18 |= v20;
      v21 = *(v9 + 8 * v16);
      if (v21 != -1)
      {
        v17 = __clz(__rbit64(~v21)) + (v16 << 6);
        goto LABEL_22;
      }
    }

LABEL_37:
    __break(1u);
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
}

uint64_t sub_1D98D70FC()
{

  v1 = sub_1D98D472C(v0);

  sub_1D98D71B8(v1);
  v3 = v2;

  if ((v3 & 1) == 0)
  {

    v5 = sub_1D98D4968(v4);

    sub_1D98D71FC(v5);
  }

  return OUTLINED_FUNCTION_27();
}

unint64_t sub_1D98D71B8(void *a1)
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
      if (v7 < result)
      {
        result = v6;
      }

      --v4;
    }

    while (v4);
  }

  return result;
}

unint64_t sub_1D98D71FC(void *a1)
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

uint64_t sub_1D98D7240()
{
  v1 = *(v0 + 24);
  if (*(v1 + 16) && (v2 = sub_1D9889858(), (v3 & 1) != 0))
  {
    return *(*(v1 + 56) + 16 * v2);
  }

  else
  {
    return 0;
  }
}

void sub_1D98D7290()
{
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48B48, &qword_1D9933FF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D9932820;
  v3 = *(v0 + 16);
  *(inited + 32) = v3;

  v4 = v3;
  v5 = sub_1D98D7330(v1, inited);

  swift_setDeallocating();
  sub_1D989943C();
  sub_1D98B3DBC(v5);
}

uint64_t sub_1D98D7330(uint64_t a1, uint64_t a2)
{
  v9 = MEMORY[0x1E69E7CC0];
  v3 = sub_1D9866E40();
  v4 = *(a1 + 16);
  v5 = __OFADD__(v3, v4);
  result = v3 + v4;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    sub_1D98EAE44(result, 0);

    sub_1D98EB7A4(v7);

    sub_1D98EB6A0(v8);
    return v9;
  }

  return result;
}

uint64_t ComponentClusterMetadata.__deallocating_deinit()
{
  ComponentClusterMetadata.deinit();

  return swift_deallocClassInstance();
}

void Metastore.saveComponentId(componentId:clusterIdentifier:timestampRange:onClock:)()
{
  OUTLINED_FUNCTION_6_2();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = type metadata accessor for ComponentIdentifiersTable.Record(0);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](*(v12 + 64));
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v52 - v15;
  if (sub_1D986AC54(0))
  {
    v17 = *(v0 + OBJC_IVAR___SiriAnalyticsMetastore_db);
    if (v17)
    {
      v61 = v16;
      v64 = v17;
      v18 = sub_1D992AE84();
      v63 = &v52;
      OUTLINED_FUNCTION_6();
      v20 = v19;
      MEMORY[0x1EEE9AC00](*(v21 + 64));
      OUTLINED_FUNCTION_13();
      v56 = v6;
      v24 = v23 - v22;
      v59 = v20;
      v54 = v10;
      v25 = *(v20 + 16);
      v25(v23 - v22, v2, v18);
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48710, &qword_1D9931340);
      v62 = &v52;
      v27 = *(v26 - 8);
      v53 = v8;
      v28 = *(v27 + 64);
      MEMORY[0x1EEE9AC00](&v52);
      v55 = (v28 + 15) & 0xFFFFFFFFFFFFFFF0;
      v29 = &v52 - v55;
      v30 = sub_1D992AE04();
      OUTLINED_FUNCTION_10_4();
      __swift_storeEnumTagSinglePayload(v31, v32, v33, v30);
      v57 = v24;
      v60 = v18;
      v25(v14, v24, v18);
      v58 = &v52;
      v35 = v53;
      v34 = v54;
      *&v14[v11[5]] = v53;
      *&v14[v11[6]] = v34;
      v36 = &v14[v11[7]];
      *v36 = v56;
      *(v36 + 1) = 0;
      *(v36 + 2) = v4;
      *(v36 + 12) = 0;
      OUTLINED_FUNCTION_0();
      v38 = v37;
      MEMORY[0x1EEE9AC00](*(v39 + 64));
      OUTLINED_FUNCTION_13();
      OUTLINED_FUNCTION_22_6();
      v56 = &v52;
      MEMORY[0x1EEE9AC00](&v52);
      v40 = &v52 - v55;
      sub_1D98D88C8(v29, &v52 - v55);
      LODWORD(v28) = __swift_getEnumTagSinglePayload(v40, 1, v30);
      v41 = v35;
      v42 = v34;

      if (v28 == 1)
      {
        sub_1D992ADF4();
        sub_1D986B804(v29, &qword_1ECB48710, &qword_1D9931340);
        (*(v59 + 8))(v57, v60);
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v40, 1, v30);
        v44 = v61;
        if (EnumTagSinglePayload != 1)
        {
          sub_1D986B804(v40, &qword_1ECB48710, &qword_1D9931340);
        }
      }

      else
      {
        sub_1D986B804(v29, &qword_1ECB48710, &qword_1D9931340);
        (*(v59 + 8))(v57, v60);
        (*(v38 + 32))(v25, v40, v30);
        v44 = v61;
      }

      (*(v38 + 32))(&v14[v11[8]], v25, v30);
      sub_1D98AEF4C(v14, v44);
      v45 = sub_1D98ADF28();
      v46 = sub_1D98B3B0C(&unk_1F5517F88);
      v65 = sub_1D98B3B0C(&unk_1F5518068);
      sub_1D98D81B4(v46);
      v47 = sub_1D98D4538(v65);
      v65 = 0xD000000000000015;
      v66 = 0x80000001D9937450;
      v67 = v45;
      v68 = &unk_1F5518068;
      v69 = v47;
      v48 = sub_1D990C31C();
      sub_1D987005C(v48, v49, v50);

      OUTLINED_FUNCTION_2_26();
      sub_1D98D8938(v44, v51);
    }
  }

  OUTLINED_FUNCTION_7();
}

unint64_t Metastore.componentIds(for:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB48AC0, &qword_1D9932730);
  v2 = sub_1D992AE84();
  OUTLINED_FUNCTION_6();
  v4 = v3;
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D992FCB0;
  (*(v4 + 16))(v6 + v5, a1, v2);
  v7 = Metastore.componentIds(for:)(v6);

  return v7;
}

Swift::OpaquePointer_optional __swiftcall Metastore.componentIds(for:)(Swift::OpaquePointer a1)
{
  OUTLINED_FUNCTION_6_2();
  v3 = v2;
  v4 = type metadata accessor for ComponentIdentifiersTable.Record(0);
  OUTLINED_FUNCTION_6();
  v6 = v5;
  MEMORY[0x1EEE9AC00](*(v7 + 64));
  OUTLINED_FUNCTION_13();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48D50, &unk_1D9933FE0);
  OUTLINED_FUNCTION_9(v11);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v44 - v13;
  v15 = type metadata accessor for ComponentIdentifiersTable.Predicate(0);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](*(v16 + 64));
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_22_6();
  if (*(v3 + 16))
  {
    sub_1D992AE84();
    OUTLINED_FUNCTION_10_4();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48700, &qword_1D9931330);
    OUTLINED_FUNCTION_10_4();
    __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
    *(v1 + *(v15 + 20)) = v3;
    *(v1 + *(v15 + 28)) = 0;
    OUTLINED_FUNCTION_1_27();
    sub_1D98D8990(v1, v14, v25);
    OUTLINED_FUNCTION_76();
    __swift_storeEnumTagSinglePayload(v26, v27, v28, v15);

    v29 = sub_1D98D7C44(v14);
    sub_1D986B804(v14, &qword_1ECB48D50, &unk_1D9933FE0);
    if (v29)
    {
      v45 = MEMORY[0x1E69E7CC0];
      v30 = *(v29 + 16);
      if (v30)
      {
        v31 = *(v4 + 24);
        OUTLINED_FUNCTION_28_4();
        v33 = v29 + v32;
        v34 = *(v6 + 72);
        do
        {
          OUTLINED_FUNCTION_9_11();
          sub_1D98D8990(v33, v10, v35);
          *(v10 + v31);
          v36 = OUTLINED_FUNCTION_27();
          v38 = sub_1D98D8938(v36, v37);
          MEMORY[0x1DA739CE0](v38);
          v39 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18);
          if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v39 >> 1)
          {
            OUTLINED_FUNCTION_14(v39);
            sub_1D992B7D4();
          }

          sub_1D992B7F4();
          v33 += v34;
          --v30;
        }

        while (v30);
      }

      OUTLINED_FUNCTION_0_39();
      sub_1D98D8938(v1, v40);
    }

    else
    {
      OUTLINED_FUNCTION_0_39();
      sub_1D98D8938(v1, v41);
    }
  }

  OUTLINED_FUNCTION_7();
  result.value._rawValue = v42;
  result.is_nil = v43;
  return result;
}

uint64_t sub_1D98D7C44(uint64_t a1)
{
  if ((sub_1D986AC54(0) & 1) == 0 || !*(v1 + OBJC_IVAR___SiriAnalyticsMetastore_db))
  {
    return 0;
  }

  sub_1D98FD224(v6);
  v2 = objc_autoreleasePoolPush();
  sub_1D987ED7C();
  v4 = v3;
  objc_autoreleasePoolPop(v2);

  __swift_destroy_boxed_opaque_existential_1(v6);
  return v4;
}

void Metastore.representativeIds(for:)()
{
  OUTLINED_FUNCTION_6_2();
  v3 = v2;
  type metadata accessor for ComponentIdentifiersTable.Record(0);
  OUTLINED_FUNCTION_6();
  v42 = v4;
  MEMORY[0x1EEE9AC00](*(v5 + 64));
  OUTLINED_FUNCTION_13();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48D50, &unk_1D9933FE0);
  OUTLINED_FUNCTION_9(v9);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_24_5();
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](*(v12 + 64));
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_22_6();
  v13 = sub_1D992AE84();
  OUTLINED_FUNCTION_10_4();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB48AC0, &qword_1D9932730);
  OUTLINED_FUNCTION_0();
  v18 = v17;
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1D992FCB0;
  (*(v18 + 16))(v20 + v19, v3, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48700, &qword_1D9931330);
  OUTLINED_FUNCTION_10_4();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
  *(v0 + *(v11 + 20)) = v20;
  *(v0 + *(v11 + 28)) = 0;
  OUTLINED_FUNCTION_1_27();
  sub_1D98D8990(v0, v1, v25);
  OUTLINED_FUNCTION_76();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v11);
  v29 = sub_1D98D7C44(v1);
  sub_1D986B804(v1, &qword_1ECB48D50, &unk_1D9933FE0);
  if (v29)
  {
    v43 = MEMORY[0x1E69E7CC0];
    v30 = *(v29 + 16);
    if (v30)
    {
      v31 = *(v42 + 20);
      OUTLINED_FUNCTION_28_4();
      v33 = v29 + v32;
      v35 = *(v34 + 72);
      do
      {
        OUTLINED_FUNCTION_8_12();
        sub_1D98D8990(v33, v8, v36);
        v37 = *(v8 + v31);
        v37;
        v38 = sub_1D98D8938(v8, v20);
        if (v37)
        {
          MEMORY[0x1DA739CE0](v38);
          v20 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
          v39 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18);
          if (v20 >= v39 >> 1)
          {
            OUTLINED_FUNCTION_14(v39);
            sub_1D992B7D4();
          }

          sub_1D992B7F4();
        }

        v33 += v35;
        --v30;
      }

      while (v30);
    }

    OUTLINED_FUNCTION_0_39();
    sub_1D98D8938(v0, v40);
  }

  else
  {
    OUTLINED_FUNCTION_0_39();
    sub_1D98D8938(v0, v41);
  }

  OUTLINED_FUNCTION_7();
}

Swift::OpaquePointer_optional __swiftcall Metastore.componentIdComprehensions(for:)(Swift::OpaquePointer a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48D50, &unk_1D9933FE0);
  OUTLINED_FUNCTION_9(v2);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v28 - v4;
  v6 = type metadata accessor for ComponentIdentifiersTable.Predicate(0);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](*(v7 + 64));
  OUTLINED_FUNCTION_13();
  v11 = v10 - v9;
  if (*(a1._rawValue + 2))
  {
    sub_1D992AE84();
    OUTLINED_FUNCTION_10_4();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48700, &qword_1D9931330);
    OUTLINED_FUNCTION_10_4();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    *(v11 + *(v6 + 20)) = a1;
    *(v11 + *(v6 + 28)) = 0;
    OUTLINED_FUNCTION_1_27();
    sub_1D98D8990(v11, v5, v20);
    OUTLINED_FUNCTION_76();
    __swift_storeEnumTagSinglePayload(v21, v22, v23, v6);

    v24 = sub_1D98D7C44(v5);
    sub_1D986B804(v5, &qword_1ECB48D50, &unk_1D9933FE0);
    if (v24)
    {
      v25 = sub_1D98D5EE0(v24);
      v24 = sub_1D98D67BC(v25);
    }

    OUTLINED_FUNCTION_0_39();
    sub_1D98D8938(v11, v26);
  }

  else
  {
    v24 = 0;
  }

  v27 = v24;
  result.value._rawValue = v27;
  result.is_nil = v8;
  return result;
}

uint64_t sub_1D98D81B4(uint64_t a1)
{
  v2 = 0;
  v5 = *(a1 + 56);
  result = a1 + 56;
  v4 = v5;
  v6 = 1 << *(result - 24);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & v4;
  v9 = (v6 + 63) >> 6;
  v29 = v9;
  v30 = result;
  if ((v7 & v4) != 0)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v10 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v10 >= v9)
    {
      break;
    }

    v8 = *(result + 8 * v10);
    ++v2;
    if (v8)
    {
      v2 = v10;
      do
      {
LABEL_9:
        v11 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
        v12 = *(a1 + 48) + 24 * (v11 | (v2 << 6));
        v14 = *v12;
        v13 = *(v12 + 8);
        v33 = *(v12 + 17);
        v34 = *(v12 + 16);
        v15 = *v1;
        if (*(*v1 + 16))
        {
          sub_1D992C074();

          sub_1D992B6D4();
          v16 = sub_1D992C0C4();
          v17 = v15 + 56;
          v18 = -1 << *(v15 + 32);
          v19 = v16 & ~v18;
          if ((*(v15 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
          {
            v20 = ~v18;
            v21 = *(v15 + 48);
            do
            {
              v22 = v21 + 24 * v19;
              v23 = *(v22 + 16);
              v24 = *(v22 + 17);
              if (*v22 == v14 && *(v22 + 8) == v13)
              {
                if (v23 == v34 && v33 == v24)
                {
LABEL_33:
                  if (v33)
                  {
                    v28 = 256;
                  }

                  else
                  {
                    v28 = 0;
                  }

                  v1 = v31;
                  sub_1D98EAEF0(v14, v13, v28 | v34);

                  goto LABEL_31;
                }
              }

              else if ((sub_1D992BF64() & 1) != 0 && v23 == v34 && ((v33 ^ v24) & 1) == 0)
              {
                goto LABEL_33;
              }

              v19 = (v19 + 1) & v20;
            }

            while (((*(v17 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) != 0);
          }
        }

        else
        {
        }

        if (v33)
        {
          v27 = 256;
        }

        else
        {
          v27 = 0;
        }

        v1 = v31;
        sub_1D98B6944(v35, v14, v13, v27 | v34);
LABEL_31:

        v9 = v29;
        result = v30;
      }

      while (v8);
    }
  }
}

void sub_1D98D8408(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  if (a4 >> 1 != a3)
  {
    sub_1D98BE730((a4 >> 1) - a3, 0);
    if (v4 != a3)
    {
      sub_1D992AE84();
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_7;
  }
}

uint64_t sub_1D98D84E8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48D60, &qword_1D99340A8);
    v2 = sub_1D992BED4();
    v16 = v2;
    sub_1D992BE54();
    while (1)
    {
      v3 = sub_1D992BE84();
      if (!v3)
      {

        return v2;
      }

      v14 = v3;
      sub_1D992B1A4();
      swift_dynamicCast();
      type metadata accessor for ComponentClusterMetadata();
      swift_dynamicCast();
      if (*(v2 + 24) <= *(v2 + 16))
      {
        sub_1D98F0CC0();
      }

      v2 = v16;
      result = sub_1D992BBC4();
      v5 = v16 + 64;
      v6 = -1 << *(v16 + 32);
      v7 = result & ~v6;
      v8 = v7 >> 6;
      if (((-1 << v7) & ~*(v16 + 64 + 8 * (v7 >> 6))) == 0)
      {
        break;
      }

      v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 64 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
      *(*(v16 + 48) + 8 * v9) = v15;
      *(*(v16 + 56) + 8 * v9) = v14;
      ++*(v16 + 16);
    }

    v10 = 0;
    v11 = (63 - v6) >> 6;
    while (++v8 != v11 || (v10 & 1) == 0)
    {
      v12 = v8 == v11;
      if (v8 == v11)
      {
        v8 = 0;
      }

      v10 |= v12;
      v13 = *(v5 + 8 * v8);
      if (v13 != -1)
      {
        v9 = __clz(__rbit64(~v13)) + (v8 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1D98D86D8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48D80, &qword_1D99340D0);
    v2 = sub_1D992BED4();
    v16 = v2;
    sub_1D992BE54();
    while (1)
    {
      v3 = sub_1D992BE84();
      if (!v3)
      {

        return v2;
      }

      v14 = v3;
      sub_1D992B1A4();
      swift_dynamicCast();
      swift_dynamicCast();
      if (*(v2 + 24) <= *(v2 + 16))
      {
        sub_1D98F1160();
      }

      v2 = v16;
      result = sub_1D992BBC4();
      v5 = v16 + 64;
      v6 = -1 << *(v16 + 32);
      v7 = result & ~v6;
      v8 = v7 >> 6;
      if (((-1 << v7) & ~*(v16 + 64 + 8 * (v7 >> 6))) == 0)
      {
        break;
      }

      v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 64 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
      *(*(v16 + 48) + 8 * v9) = v15;
      *(*(v16 + 56) + 8 * v9) = v14;
      ++*(v16 + 16);
    }

    v10 = 0;
    v11 = (63 - v6) >> 6;
    while (++v8 != v11 || (v10 & 1) == 0)
    {
      v12 = v8 == v11;
      if (v8 == v11)
      {
        v8 = 0;
      }

      v10 |= v12;
      v13 = *(v5 + 8 * v8);
      if (v13 != -1)
      {
        v9 = __clz(__rbit64(~v13)) + (v8 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1D98D88C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48710, &qword_1D9931340);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D98D8938(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_5();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1D98D8990(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_5();
  v4 = OUTLINED_FUNCTION_27();
  v5(v4);
  return a2;
}

uint64_t sub_1D98D8B10(uint64_t *a1)
{
  v6 = sub_1D98D98A4();
  result = sub_1D98D98AC(&v37, a1, 0, 1, v6);
  v8 = a1[2];
  v9 = v37;
  if (v37 != v8)
  {
    if ((v37 & 0x8000000000000000) != 0)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v28 = result;
    v1 = sub_1D98DB598(0, v37, a1);
    v2 = v10;
    v3 = v11;
    v4 = v12;
    if (v12)
    {
      sub_1D992BF84();
      swift_unknownObjectRetain_n();
      v14 = swift_dynamicCastClass();
      if (!v14)
      {
        swift_unknownObjectRelease();
        v14 = MEMORY[0x1E69E7CC0];
      }

      v15 = *(v14 + 16);

      if (__OFSUB__(v4 >> 1, v3))
      {
        goto LABEL_31;
      }

      if (v15 != (v4 >> 1) - v3)
      {
        goto LABEL_32;
      }

      v2 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      if (v2)
      {
        goto LABEL_12;
      }

      v2 = MEMORY[0x1E69E7CC0];
      goto LABEL_11;
    }

    while (1)
    {
      sub_1D98D8408(v1, v2, v3, v4);
      v2 = v13;
LABEL_11:
      swift_unknownObjectRelease();
LABEL_12:
      v38 = v28;
      v39 = v2;
      if (v8 >= v9)
      {
        break;
      }

LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      swift_unknownObjectRelease();
    }

    v27[1] = sub_1D98DB598(v9, v8, a1);
    v29 = v16;
    v9 = v17;
    v8 = v18;

    v30 = v8 >> 1;
    while (1)
    {
      if (v9 == v30)
      {
        swift_unknownObjectRelease();

        return v38;
      }

      if (v9 >= v30)
      {
        __break(1u);
        goto LABEL_29;
      }

      v3 = sub_1D992AE84();
      v32 = v27;
      v19 = *(v3 - 8);
      v1 = v19;
      v2 = *(v19 + 9);
      v33 = v9;
      v20 = *(v19 + 8);
      MEMORY[0x1EEE9AC00](v29);
      v4 = *(v1 + 2);
      (v4)(v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
      v21 = v38;
      a1 = (v39 + ((v1[80] + 32) & ~v1[80]));
      v22 = v39[2];
      v31 = v1;
      v36 = v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
      if (!v38)
      {
        break;
      }

      sub_1D98D968C(v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v22, (v21 + 16), v21 + 32);
      a1 = v23;
      v8 = v24;

      if (a1)
      {
        goto LABEL_25;
      }

LABEL_26:
      v9 = v33 + 1;
      v31[1](v36, v3);
    }

    v34 = v4;
    v35 = v2;
    v2 = v1 + 8;
    v25 = v22 + 1;
    while (--v25)
    {
      v4 = v27;
      v1 = v35 + a1;
      MEMORY[0x1EEE9AC00](v35);
      v8 = v27 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
      v34(v8, a1, v3);
      sub_1D9882D14(&qword_1ED8BF058, MEMORY[0x1EEE78930]);
      v26 = sub_1D992B5F4();
      (*v2)(v8, v3);
      a1 = v1;
      if (v26)
      {
        goto LABEL_26;
      }
    }

    v8 = 0;
LABEL_25:
    a1 = &v38;
    sub_1D98D8EE8(v36, v8);
    goto LABEL_26;
  }

  return result;
}

uint64_t sub_1D98D8EE8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D992AE84();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](*(v7 + 64));
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a1, v6);
  v10 = v3 + 1;
  v11 = v3[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3[1] = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1D98B977C(0, *(v11 + 16) + 1, 1);
    v11 = *v10;
  }

  v14 = *(v11 + 16);
  v13 = *(v11 + 24);
  if (v14 >= v13 >> 1)
  {
    sub_1D98B977C(v13 > 1, v14 + 1, 1);
    v11 = *v10;
  }

  *(v11 + 16) = v14 + 1;
  result = (*(v7 + 32))(v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v14, v9, v6);
  v3[1] = v11;
  v16 = *v3;
  if (!*v3)
  {
    if (v14 <= 0xE)
    {
      return result;
    }

    v17 = 0;
    goto LABEL_14;
  }

  swift_beginAccess();
  if (MEMORY[0x1DA739450](*(v16 + 16) & 0x3FLL) <= v14)
  {
    v17 = *(v16 + 24) & 0x3FLL;
    if (v14 <= 0xE && !v17)
    {

      *v3 = 0;
      return result;
    }

LABEL_14:
    v18 = MEMORY[0x1DA739470](v14 + 1);
    return sub_1D98D9270(v18, v17);
  }

  result = sub_1D98D91B0();
  if (*v3)
  {
    return sub_1D98D9208((*v3 + 16), *v3 + 32, a2, v3);
  }

  __break(1u);
  return result;
}

void *sub_1D98D910C(void *(*a1)(uint64_t *__return_ptr, unint64_t, void), uint64_t a2, uint64_t a3)
{
  v6 = *(sub_1D992AE84() - 8);
  result = a1(&v8, a3 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), *(a3 + 16));
  if (!v3)
  {
    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D98D91B0()
{
  result = *v0;
  if (*v0)
  {
    result = swift_isUniquelyReferenced_native();
    if ((result & 1) == 0)
    {
      if (*v0)
      {
        v2 = sub_1D992AF14();

        *v0 = v2;
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_1D98D9270(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (a2 <= a1)
  {
    a2 = a1;
  }

  v4 = sub_1D98D92B8(v2[1], a2, 0, v3);

  *v2 = v4;
  return result;
}

uint64_t sub_1D98D92B8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  v8 = MEMORY[0x1DA739470](v6, a2);
  v9 = 0;
  if (v8 <= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = v8;
  }

  if (v10 <= a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = v10;
  }

  if (v11 >= 5)
  {
    v9 = MEMORY[0x1DA739480]();
    sub_1D98D9330(a1, (v9 + 16), v9 + 32);
  }

  return v9;
}

uint64_t sub_1D98D9330(uint64_t a1, void *a2, uint64_t a3)
{
  v32 = a3;
  result = sub_1D992AE84();
  v6 = *(result - 8);
  v31 = *(a1 + 16);
  if (v31)
  {
    v7 = result;
    v8 = 0;
    v29 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v9 = *(v6 + 16);
    v10 = *(v6 + 72);
    v27 = *(v6 + 64);
    v28 = v9;
    v26 = v10;
    v30 = v6 + 16;
    v11 = (v6 + 8);
    v25 = (v6 + 8);
    while (1)
    {
      MEMORY[0x1EEE9AC00](v11);
      v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      v28(v13, v29 + v26 * v8, v7);
      sub_1D9882D14(&qword_1ED8BF060, MEMORY[0x1EEE78928]);
      result = sub_1D992B5C4();
      v14 = 1 << *a2;
      v15 = __OFSUB__(v14, 1);
      v16 = v14 - 1;
      if (v15)
      {
        break;
      }

      v17 = v16 & result;
      v18 = v32;
      v19 = sub_1D992AEA4();
      v21 = v20;
      v23 = v22;
      (*v25)(v13, v7);
      v33 = a2;
      v34 = v18;
      v35 = v17;
      v36 = v19;
      v37 = v21;
      v38 = v23;
      v39 = 0;
      while (v36)
      {
        sub_1D992AEF4();
      }

      result = sub_1D992AEE4();
      v8 = (v8 + 1);
      v11 = v31;
      if (v8 == v31)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D98D9518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  for (i = 0; ; ++i)
  {
    if (a3 == i)
    {
      return 0;
    }

    v6 = sub_1D992AE84();
    v7 = *(v6 - 8);
    MEMORY[0x1EEE9AC00](v7);
    v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v9, a2 + *(v10 + 72) * i, v6);
    sub_1D9882D14(&qword_1ED8BF058, MEMORY[0x1EEE78930]);
    v11 = sub_1D992B5F4();
    (*(v7 + 8))(v9, v6);
    if (v11)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1D98D968C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v15[0] = a2;
  v6 = sub_1D992AE84();
  sub_1D9882D14(&qword_1ED8BF060, MEMORY[0x1EEE78928]);
  result = sub_1D992B5C4();
  if (__OFSUB__(1 << *a4, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1D992AEC4();
    v8 = v20;
    v22 = v16;
    v23 = v17;
    v24 = v18;
    v25 = v19;
    if ((v21 & 1) == 0)
    {
      do
      {
        v9 = *(v6 - 8);
        MEMORY[0x1EEE9AC00](v9);
        v11 = v15 - v10;
        (*(v9 + 16))(v15 - v10, v15[0] + *(v12 + 72) * v8, v6);
        sub_1D9882D14(&qword_1ED8BF058, MEMORY[0x1EEE78930]);
        v13 = sub_1D992B5F4();
        (*(v9 + 8))(v11, v6);
        if (v13)
        {
          break;
        }

        sub_1D992AEF4();
        v16 = v22;
        v17 = v23;
        v18 = v24;
        v19 = v25;
        v8 = sub_1D992AED4();
      }

      while ((v14 & 1) == 0);
    }

    return v8;
  }

  return result;
}

uint64_t sub_1D98D98AC(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v8 = *(a2 + 16);
  if (a4)
  {
    v9 = 0;
  }

  else
  {
    v9 = a3;
  }

  v10 = MEMORY[0x1DA739470](*(a2 + 16));
  if (v10 <= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  if (v11 <= a5)
  {
    v12 = a5;
  }

  else
  {
    v12 = v11;
  }

  if (v12 > 4)
  {
    v13 = MEMORY[0x1DA739480]();
    v14 = *(sub_1D992AE84() - 8);
    sub_1D98D9CB8(a2 + ((*(v14 + 80) + 32) & ~*(v14 + 80)), v8, (v13 + 16), v13 + 32);
    *a1 = v15;
  }

  else if (v8 >= 2)
  {
    v16 = *(sub_1D992AE84() - 8);
    sub_1D98D99E4(a2 + ((*(v16 + 80) + 32) & ~*(v16 + 80)), v8);
    v13 = 0;
    *a1 = v17;
  }

  else
  {
    v13 = 0;
    *a1 = v8;
  }

  return v13;
}

void sub_1D98D99E4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v28 = MEMORY[0x1E69E7CC0];
  sub_1D98B977C(0, a2 & ~(a2 >> 63), 0);
  v4 = 0;
  v5 = v28;
  v20 = a1;
  for (i = v2; ; v2 = i)
  {
    if (v4 == v2)
    {

      return;
    }

    if (v2 < 0)
    {
      break;
    }

    v25 = v4 + 1;
    v6 = sub_1D992AE84();
    v27 = &v19;
    v7 = *(v6 - 8);
    MEMORY[0x1EEE9AC00](v7);
    v24 = v8;
    v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v11 = *(v10 + 72);
    v12 = *(v7 + 16);
    v22 = v4;
    v23 = v12;
    v12(v9, (a1 + v11 * v4), v6);
    v13 = *(v5 + 16);
    v14 = v13 + 1;
    v26 = v5;
    while (--v14)
    {
      sub_1D9882D14(&qword_1ED8BF058, MEMORY[0x1EEE78930]);
      v5 += v11;
      if (sub_1D992B5F4())
      {
        (*(v7 + 8))(v9, v6);

        return;
      }
    }

    MEMORY[0x1EEE9AC00](v13);
    v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    v23(v16, v9, v6);
    v28 = v26;
    v18 = *(v26 + 16);
    v17 = *(v26 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_1D98B977C(v17 > 1, v18 + 1, 1);
    }

    (*(v7 + 8))(v9, v6);
    v5 = v28;
    *(v28 + 16) = v18 + 1;
    (*(v7 + 32))(v5 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + v18 * v11, v16, v6);
    v4 = v25;
    a1 = v20;
  }

  __break(1u);
}

uint64_t sub_1D98D9CB8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v35 = a4;
  v52 = result;
  if (!a2)
  {
    return 1;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v4 = a3;
    v5 = 0;
    v33 = a2;
    v32 = a3;
    while (2)
    {
      if (__OFADD__(v5, 1))
      {
        __break(1u);
      }

      else
      {
        v34 = v5 + 1;
        v6 = sub_1D992AE84();
        v7 = *(v6 - 8);
        MEMORY[0x1EEE9AC00](v7);
        v39 = v8;
        v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
        v11 = *(v10 + 72);
        v37 = v5;
        v43 = v11;
        v12 = v52 + v11 * v5;
        v13 = v7[2];
        v41 = v7 + 2;
        v42 = v12;
        v40 = v13;
        (v13)(v9);
        sub_1D9882D14(&qword_1ED8BF060, MEMORY[0x1EEE78928]);
        result = sub_1D992B5C4();
        v14 = 1 << *v4;
        v15 = __OFSUB__(v14, 1);
        v16 = v14 - 1;
        if (!v15)
        {
          v17 = v16 & result;
          v18 = v35;
          v19 = sub_1D992AEA4();
          v21 = v20;
          v36 = v22;
          v38 = v7[1];
          v38(v9, v6);
          *&v44 = v4;
          *(&v44 + 1) = v18;
          *&v45 = v17;
          *(&v45 + 1) = v19;
          *&v46 = v21;
          *(&v46 + 1) = v36;
          v47 = 0;
          while (1)
          {
            v48 = v44;
            v49 = v45;
            v50 = v46;
            v51 = v47;
            sub_1D992AED4();
            if (v24)
            {
              break;
            }

            v25 = v39;
            v26 = MEMORY[0x1EEE9AC00](v23);
            v27 = &v32 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
            v28 = v40;
            v40(v27, v52 + v26 * v43, v6);
            MEMORY[0x1EEE9AC00](v29);
            v28(v27, v42, v6);
            sub_1D9882D14(&qword_1ED8BF058, MEMORY[0x1EEE78930]);
            v30 = sub_1D992B5F4();
            v31 = v38;
            v38(v27, v6);
            v31(v27, v6);
            if (v30)
            {
              return 0;
            }

            sub_1D992AEF4();
          }

          result = sub_1D992AEE4();
          v5 = v34;
          v4 = v32;
          if (v34 != v33)
          {
            continue;
          }

          return 1;
        }
      }

      break;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1D98DA04C(uint64_t *a1)
{
  v2 = *(type metadata accessor for ComponentIdentifiersTable.Record(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1D98DB714();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_1D98DA0F4(v7);
  *a1 = v3;
  return result;
}

void *sub_1D98DA0F4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1D992BF24();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for ComponentIdentifiersTable.Record(0);
        v6 = sub_1D992B7E4();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for ComponentIdentifiersTable.Record(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1D98DA494(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1D98DA224(0, v2, 1, a1);
  }

  return result;
}

void *sub_1D98DA224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v39 = type metadata accessor for ComponentIdentifiersTable.Record(0);
  MEMORY[0x1EEE9AC00](*(v39 - 8));
  v38 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v30 - v10;
  result = MEMORY[0x1EEE9AC00](v12);
  v16 = &v30 - v15;
  v32 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v37 = v17;
    v31 = v18;
    v22 = v17 + v18 * a3;
    while (2)
    {
      v35 = v19;
      v36 = a3;
      v33 = v22;
      v34 = v21;
      do
      {
        sub_1D98D8990(v22, v16, type metadata accessor for ComponentIdentifiersTable.Record);
        sub_1D98D8990(v19, v11, type metadata accessor for ComponentIdentifiersTable.Record);
        v23 = *(v39 + 28);
        v24 = &v16[v23];
        if (v16[v23 + 25] & 1) != 0 || (*(v24 + 2))
        {
          v25 = 0;
        }

        else
        {
          v25 = *v24;
        }

        v26 = &v11[v23];
        if (v26[25] & 1) != 0 || (*(v26 + 2))
        {
          v27 = 0;
        }

        else
        {
          v27 = *v26;
        }

        sub_1D98D8938(v11, type metadata accessor for ComponentIdentifiersTable.Record);
        result = sub_1D98D8938(v16, type metadata accessor for ComponentIdentifiersTable.Record);
        if (v25 >= v27)
        {
          break;
        }

        if (!v37)
        {
          __break(1u);
          return result;
        }

        v28 = v38;
        sub_1D98AEF4C(v22, v38);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_1D98AEF4C(v28, v19);
        v19 += v20;
        v22 += v20;
      }

      while (!__CFADD__(v21++, 1));
      a3 = v36 + 1;
      v19 = v35 + v31;
      v21 = v34 - 1;
      v22 = v33 + v31;
      if (v36 + 1 != v32)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1D98DA494(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v133 = a1;
  v143 = *(type metadata accessor for ComponentIdentifiersTable.Record(0) - 8);
  MEMORY[0x1EEE9AC00](*(v143 + 64));
  v136 = &v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v148 = &v127 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v150 = &v127 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v149 = &v127 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v141 = &v127 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v140 = &v127 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v131 = &v127 - v20;
  v22 = MEMORY[0x1EEE9AC00](v21);
  v130 = &v127 - v23;
  v144 = a3;
  v24 = a3[1];
  if (v24 < 1)
  {
    v26 = MEMORY[0x1E69E7CC0];
LABEL_112:
    v152 = *v133;
    if (!v152)
    {
      goto LABEL_154;
    }

    v5 = v6;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_114:
      v120 = v26 + 16;
      v121 = *(v26 + 2);
      while (v121 >= 2)
      {
        if (!*v144)
        {
          goto LABEL_151;
        }

        v122 = v26;
        v26 += 16 * v121;
        v123 = *v26;
        v124 = &v120[2 * v121];
        v125 = v124[1];
        sub_1D98DAE90(*v144 + *(v143 + 72) * *v26, *v144 + *(v143 + 72) * *v124, *v144 + *(v143 + 72) * v125, v152);
        if (v5)
        {
          break;
        }

        if (v125 < v123)
        {
          goto LABEL_139;
        }

        if (v121 - 2 >= *v120)
        {
          goto LABEL_140;
        }

        *v26 = v123;
        *(v26 + 1) = v125;
        v126 = *v120 - v121;
        if (*v120 < v121)
        {
          goto LABEL_141;
        }

        v121 = *v120 - 1;
        memmove(v124, v124 + 2, 16 * v126);
        *v120 = v121;
        v26 = v122;
      }

LABEL_122:

      return;
    }

LABEL_148:
    v26 = sub_1D98DB3A4(v26);
    goto LABEL_114;
  }

  v151 = v22;
  v129 = a4;
  v25 = 0;
  v26 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v27 = v25;
    v28 = v25 + 1;
    v137 = v25;
    if (v25 + 1 < v24)
    {
      v132 = v6;
      v29 = v25;
      v30 = *v144;
      v5 = *(v143 + 72);
      v145 = v25 + 1;
      v31 = v30 + v5 * v28;
      v32 = v130;
      v146 = v24;
      sub_1D98D8990(v31, v130, type metadata accessor for ComponentIdentifiersTable.Record);
      v33 = v131;
      sub_1D98D8990(v30 + v5 * v29, v131, type metadata accessor for ComponentIdentifiersTable.Record);
      v34 = *(v151 + 7);
      if ((*(v32 + v34 + 25) | *(v32 + v34 + 8)))
      {
        v35 = 0;
      }

      else
      {
        v35 = *(v32 + v34);
      }

      LODWORD(v142) = (*(v33 + v34) > v35) & ~(*(v33 + v34 + 25) | *(v33 + v34 + 8));
      sub_1D98D8938(v33, type metadata accessor for ComponentIdentifiersTable.Record);
      sub_1D98D8938(v32, type metadata accessor for ComponentIdentifiersTable.Record);
      v36 = v146;
      v37 = v29 + 2;
      v147 = v5;
      v38 = v30 + v5 * (v29 + 2);
      while (1)
      {
        v39 = v37;
        if (++v145 >= v36)
        {
          break;
        }

        v40 = v140;
        v152 = v37;
        sub_1D98D8990(v38, v140, type metadata accessor for ComponentIdentifiersTable.Record);
        v5 = v141;
        sub_1D98D8990(v31, v141, type metadata accessor for ComponentIdentifiersTable.Record);
        v41 = *(v151 + 7);
        if ((*(v40 + v41 + 25) | *(v40 + v41 + 8)))
        {
          v42 = 0;
        }

        else
        {
          v42 = *(v40 + v41);
        }

        v43 = (v5 + v41);
        v44 = *v43;
        v45 = v26;
        v46 = *(v43 + 25) | v43[1];
        sub_1D98D8938(v5, type metadata accessor for ComponentIdentifiersTable.Record);
        sub_1D98D8938(v40, type metadata accessor for ComponentIdentifiersTable.Record);
        v39 = v152;
        v47 = v46 | (v44 <= v42);
        v26 = v45;
        v48 = v47 & 1;
        v38 += v147;
        v31 += v147;
        v37 = v152 + 1;
        v49 = v142 == v48;
        v36 = v146;
        if (v49)
        {
          goto LABEL_16;
        }
      }

      v145 = v36;
LABEL_16:
      v6 = v132;
      if (v142)
      {
        v28 = v145;
        v27 = v137;
        if (v145 < v137)
        {
          goto LABEL_145;
        }

        if (v137 < v145)
        {
          if (v36 >= v39)
          {
            v50 = v39;
          }

          else
          {
            v50 = v36;
          }

          v51 = v147 * (v50 - 1);
          v52 = v147 * v50;
          v53 = v137 * v147;
          v5 = v137;
          do
          {
            if (v5 != --v28)
            {
              v54 = *v144;
              if (!*v144)
              {
                goto LABEL_152;
              }

              sub_1D98AEF4C(v54 + v53, v136);
              v55 = v53 < v51 || v54 + v53 >= (v54 + v52);
              if (v55)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v53 != v51)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1D98AEF4C(v136, v54 + v51);
              v27 = v137;
            }

            ++v5;
            v51 -= v147;
            v52 -= v147;
            v53 += v147;
          }

          while (v5 < v28);
          v28 = v145;
        }
      }

      else
      {
        v28 = v145;
        v27 = v137;
      }
    }

    v56 = v144[1];
    if (v28 < v56)
    {
      if (__OFSUB__(v28, v27))
      {
        goto LABEL_144;
      }

      if (v28 - v27 < v129)
      {
        break;
      }
    }

LABEL_60:
    if (v28 < v27)
    {
      goto LABEL_143;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v145 = v28;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D98BE188(0, *(v26 + 2) + 1, 1, v26);
      v26 = v118;
    }

    v77 = *(v26 + 2);
    v76 = *(v26 + 3);
    v78 = v77 + 1;
    if (v77 >= v76 >> 1)
    {
      sub_1D98BE188(v76 > 1, v77 + 1, 1, v26);
      v26 = v119;
    }

    *(v26 + 2) = v78;
    v79 = v26 + 32;
    v80 = &v26[16 * v77 + 32];
    v81 = v145;
    *v80 = v137;
    *(v80 + 1) = v81;
    v152 = *v133;
    if (!v152)
    {
      goto LABEL_153;
    }

    if (v77)
    {
      while (1)
      {
        v82 = v78 - 1;
        v83 = &v79[16 * v78 - 16];
        v84 = &v26[16 * v78];
        if (v78 >= 4)
        {
          break;
        }

        if (v78 == 3)
        {
          v85 = *(v26 + 4);
          v86 = *(v26 + 5);
          v95 = __OFSUB__(v86, v85);
          v87 = v86 - v85;
          v88 = v95;
LABEL_80:
          if (v88)
          {
            goto LABEL_130;
          }

          v100 = *v84;
          v99 = *(v84 + 1);
          v101 = __OFSUB__(v99, v100);
          v102 = v99 - v100;
          v103 = v101;
          if (v101)
          {
            goto LABEL_133;
          }

          v104 = *(v83 + 1);
          v105 = v104 - *v83;
          if (__OFSUB__(v104, *v83))
          {
            goto LABEL_136;
          }

          if (__OFADD__(v102, v105))
          {
            goto LABEL_138;
          }

          if (v102 + v105 >= v87)
          {
            if (v87 < v105)
            {
              v82 = v78 - 2;
            }

            goto LABEL_102;
          }

          goto LABEL_95;
        }

        if (v78 < 2)
        {
          goto LABEL_132;
        }

        v107 = *v84;
        v106 = *(v84 + 1);
        v95 = __OFSUB__(v106, v107);
        v102 = v106 - v107;
        v103 = v95;
LABEL_95:
        if (v103)
        {
          goto LABEL_135;
        }

        v109 = *v83;
        v108 = *(v83 + 1);
        v95 = __OFSUB__(v108, v109);
        v110 = v108 - v109;
        if (v95)
        {
          goto LABEL_137;
        }

        if (v110 < v102)
        {
          goto LABEL_109;
        }

LABEL_102:
        if (v82 - 1 >= v78)
        {
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
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
          goto LABEL_147;
        }

        if (!*v144)
        {
          goto LABEL_150;
        }

        v114 = &v79[16 * v82 - 16];
        v115 = *v114;
        v116 = &v79[16 * v82];
        v117 = *(v116 + 1);
        sub_1D98DAE90(*v144 + *(v143 + 72) * *v114, *v144 + *(v143 + 72) * *v116, *v144 + *(v143 + 72) * v117, v152);
        if (v6)
        {
          goto LABEL_122;
        }

        if (v117 < v115)
        {
          goto LABEL_125;
        }

        v5 = *(v26 + 2);
        if (v82 > v5)
        {
          goto LABEL_126;
        }

        *v114 = v115;
        *(v114 + 1) = v117;
        if (v82 >= v5)
        {
          goto LABEL_127;
        }

        v78 = v5 - 1;
        memmove(&v79[16 * v82], v116 + 16, 16 * (v5 - 1 - v82));
        *(v26 + 2) = v5 - 1;
        if (v5 <= 2)
        {
          goto LABEL_109;
        }
      }

      v89 = &v79[16 * v78];
      v90 = *(v89 - 8);
      v91 = *(v89 - 7);
      v95 = __OFSUB__(v91, v90);
      v92 = v91 - v90;
      if (v95)
      {
        goto LABEL_128;
      }

      v94 = *(v89 - 6);
      v93 = *(v89 - 5);
      v95 = __OFSUB__(v93, v94);
      v87 = v93 - v94;
      v88 = v95;
      if (v95)
      {
        goto LABEL_129;
      }

      v96 = *(v84 + 1);
      v97 = v96 - *v84;
      if (__OFSUB__(v96, *v84))
      {
        goto LABEL_131;
      }

      v95 = __OFADD__(v87, v97);
      v98 = v87 + v97;
      if (v95)
      {
        goto LABEL_134;
      }

      if (v98 >= v92)
      {
        v112 = *v83;
        v111 = *(v83 + 1);
        v95 = __OFSUB__(v111, v112);
        v113 = v111 - v112;
        if (v95)
        {
          goto LABEL_142;
        }

        if (v87 < v113)
        {
          v82 = v78 - 2;
        }

        goto LABEL_102;
      }

      goto LABEL_80;
    }

LABEL_109:
    v25 = v145;
    v24 = v144[1];
    if (v145 >= v24)
    {
      goto LABEL_112;
    }
  }

  v57 = v27 + v129;
  if (__OFADD__(v27, v129))
  {
    goto LABEL_146;
  }

  if (v57 >= v56)
  {
    v57 = v144[1];
  }

  if (v57 < v27)
  {
LABEL_147:
    __break(1u);
    goto LABEL_148;
  }

  if (v28 == v57)
  {
    goto LABEL_60;
  }

  v128 = v26;
  v132 = v6;
  v58 = *v144;
  v59 = *(v143 + 72);
  v60 = *v144 + v59 * (v28 - 1);
  v146 = -v59;
  v147 = v58;
  v61 = v27 - v28;
  v134 = v59;
  v135 = v57;
  v62 = v58 + v28 * v59;
  v63 = v151;
LABEL_46:
  v145 = v28;
  v138 = v62;
  v139 = v61;
  v64 = v61;
  v142 = v60;
  v65 = v60;
  while (1)
  {
    v152 = v64;
    v66 = v149;
    sub_1D98D8990(v62, v149, type metadata accessor for ComponentIdentifiersTable.Record);
    v5 = v150;
    sub_1D98D8990(v65, v150, type metadata accessor for ComponentIdentifiersTable.Record);
    v67 = *(v63 + 7);
    if ((*(v66 + v67 + 25) | *(v66 + v67 + 8)))
    {
      v68 = 0;
    }

    else
    {
      v68 = *(v66 + v67);
    }

    v69 = (v5 + v67);
    v70 = *v69;
    v71 = *(v69 + 2);
    v72 = *(v69 + 25);
    sub_1D98D8938(v5, type metadata accessor for ComponentIdentifiersTable.Record);
    sub_1D98D8938(v66, type metadata accessor for ComponentIdentifiersTable.Record);
    if ((v72 & 1) != 0 || (v71 & 1) != 0 || v70 <= v68)
    {
      v63 = v151;
LABEL_58:
      v28 = v145 + 1;
      v60 = v142 + v134;
      v61 = v139 - 1;
      v62 = v138 + v134;
      if (v145 + 1 == v135)
      {
        v28 = v135;
        v6 = v132;
        v26 = v128;
        v27 = v137;
        goto LABEL_60;
      }

      goto LABEL_46;
    }

    v63 = v151;
    v73 = v152;
    if (!v147)
    {
      break;
    }

    v74 = v148;
    sub_1D98AEF4C(v62, v148);
    swift_arrayInitWithTakeFrontToBack();
    sub_1D98AEF4C(v74, v65);
    v65 += v146;
    v62 += v146;
    v55 = __CFADD__(v73, 1);
    v64 = v73 + 1;
    if (v55)
    {
      goto LABEL_58;
    }
  }

  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
}

uint64_t sub_1D98DAE90(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for ComponentIdentifiersTable.Record(0);
  MEMORY[0x1EEE9AC00](*(v8 - 8));
  v58 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v56 = &v53 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v60 = &v53 - v13;
  result = MEMORY[0x1EEE9AC00](v14);
  v59 = &v53 - v16;
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    return result;
  }

  v19 = a2 - a1;
  v20 = a2 - a1 == 0x8000000000000000 && v18 == -1;
  if (v20)
  {
    goto LABEL_71;
  }

  v21 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_72;
  }

  v23 = v19 / v18;
  v66 = a1;
  v65 = a4;
  v24 = v21 / v18;
  v61 = v8;
  if (v19 / v18 >= v21 / v18)
  {
    v55 = a1;
    sub_1D98BEAE8(a2, v21 / v18, a4);
    v36 = a4 + v24 * v18;
    v37 = -v18;
    v38 = v36;
    v62 = a4;
    v54 = -v18;
LABEL_42:
    v59 = a2 + v37;
    v53 = v38;
    v63 = a2;
    while (1)
    {
      if (v36 <= a4)
      {
        v66 = a2;
        v64 = v38;
        goto LABEL_69;
      }

      if (a2 <= v55)
      {
        break;
      }

      v60 = a3;
      v57 = v38;
      v39 = v36 + v37;
      v40 = v56;
      sub_1D98D8990(v36 + v37, v56, type metadata accessor for ComponentIdentifiersTable.Record);
      v41 = v58;
      sub_1D98D8990(v59, v58, type metadata accessor for ComponentIdentifiersTable.Record);
      v42 = *(v8 + 28);
      if ((*(v40 + v42 + 25) | *(v40 + v42 + 8)))
      {
        v43 = 0;
      }

      else
      {
        v43 = *(v40 + v42);
      }

      v44 = (v41 + v42);
      v45 = *v44;
      v46 = *(v44 + 2);
      v47 = *(v44 + 25);
      sub_1D98D8938(v41, type metadata accessor for ComponentIdentifiersTable.Record);
      sub_1D98D8938(v40, type metadata accessor for ComponentIdentifiersTable.Record);
      if ((v47 & 1) == 0 && (v46 & 1) == 0 && v45 > v43)
      {
        v37 = v54;
        a3 = v60 + v54;
        a4 = v62;
        if (v60 < v63 || a3 >= v63)
        {
          a2 = v59;
          v8 = v61;
          swift_arrayInitWithTakeFrontToBack();
          v38 = v57;
        }

        else
        {
          v51 = v57;
          v38 = v57;
          v52 = v59;
          a2 = v59;
          v8 = v61;
          if (v60 != v63)
          {
            swift_arrayInitWithTakeBackToFront();
            a2 = v52;
            v38 = v51;
          }
        }

        goto LABEL_42;
      }

      v37 = v54;
      v48 = v60 + v54;
      v49 = v60 < v36 || v48 >= v36;
      a4 = v62;
      if (v49)
      {
        v8 = v61;
        swift_arrayInitWithTakeFrontToBack();
        a3 = v48;
        v36 = v39;
        v38 = v39;
        a2 = v63;
      }

      else
      {
        v38 = v39;
        v20 = v36 == v60;
        a3 = v60 + v54;
        v36 = v39;
        v8 = v61;
        a2 = v63;
        if (!v20)
        {
          swift_arrayInitWithTakeBackToFront();
          a3 = v48;
          v36 = v39;
          v38 = v39;
        }
      }
    }

    v66 = a2;
    v64 = v53;
  }

  else
  {
    sub_1D98BEAE8(a1, v19 / v18, a4);
    v57 = a3;
    v58 = a4 + v23 * v18;
    v64 = v58;
    while (a4 < v58 && a2 < a3)
    {
      v63 = a2;
      v26 = v59;
      sub_1D98D8990(a2, v59, type metadata accessor for ComponentIdentifiersTable.Record);
      v62 = a4;
      v27 = v60;
      sub_1D98D8990(a4, v60, type metadata accessor for ComponentIdentifiersTable.Record);
      v28 = *(v8 + 28);
      if ((*(v26 + v28 + 25) | *(v26 + v28 + 8)))
      {
        v29 = 0;
      }

      else
      {
        v29 = *(v26 + v28);
      }

      v30 = (v27 + v28);
      v31 = *v30;
      v32 = *(v30 + 2);
      v33 = *(v30 + 25);
      sub_1D98D8938(v27, type metadata accessor for ComponentIdentifiersTable.Record);
      sub_1D98D8938(v26, type metadata accessor for ComponentIdentifiersTable.Record);
      if ((v33 & 1) != 0 || (v32 & 1) != 0 || v31 <= v29)
      {
        a4 = v62 + v18;
        if (a1 < v62 || a1 >= a4)
        {
          v8 = v61;
          swift_arrayInitWithTakeFrontToBack();
          a2 = v63;
          a3 = v57;
        }

        else
        {
          a2 = v63;
          v8 = v61;
          a3 = v57;
          if (a1 != v62)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v65 = a4;
      }

      else
      {
        a2 = v63 + v18;
        if (a1 < v63 || a1 >= a2)
        {
          v8 = v61;
          swift_arrayInitWithTakeFrontToBack();
          a4 = v62;
        }

        else
        {
          v8 = v61;
          a4 = v62;
          if (a1 != v63)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a3 = v57;
      }

      a1 += v18;
      v66 = a1;
    }
  }

LABEL_69:
  sub_1D98DB3B8(&v66, &v65, &v64);
  return 1;
}

uint64_t sub_1D98DB3B8(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for ComponentIdentifiersTable.Record(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_1D98DB498(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB48B88, &qword_1D99340A0);
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

unint64_t sub_1D98DB598(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    sub_1D992AE84();
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1D98DB640@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  if (a3)
  {

    v10 = sub_1D98D968C(a4, a1, a2, (a3 + 16), a3 + 32);
    v12 = v11;
    v14 = v13;
  }

  else
  {
    result = sub_1D98D9518(a4, a1, a2);
    v10 = result;
    v12 = v16;
    v14 = 0;
  }

  *a5 = v10;
  *(a5 + 8) = v12 & 1;
  *(a5 + 16) = v14;
  return result;
}

uint64_t sub_1D98DB728(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if ((a3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = a3;
  v4 = a2;
  v6 = *(a2 + 16);
  if (v6 < a3 || v6 < a4)
  {
    goto LABEL_10;
  }

  if (a4 < 0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v6 != a4 - a3)
  {
LABEL_12:
    v9 = (2 * a4) | 1;
    v10 = *(sub_1D992AE84() - 8);
    sub_1D98D8408(v4, v4 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v5, v9);
    v12 = v11;

    v4 = v12;
  }

  return v4;
}

uint64_t sub_1D98DB7FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48D58, &unk_1D9934090);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_24_5()
{

  return type metadata accessor for ComponentIdentifiersTable.Predicate(0);
}

uint64_t static RemoteRequestDataClassification.read(from:)()
{
  sub_1D98DBA4C();
  result = sub_1D992B964();
  if (!v2)
  {
    v4 = sub_1D992B484();
    sub_1D98847C8();
    swift_allocError();
    (*(*(v4 - 8) + 104))(v5, *MEMORY[0x1E6999BA8], v4);
    return swift_willThrow();
  }

  return result;
}

id sub_1D98DBA14()
{
  v1 = *(v0 + 16);
  result = [*(v0 + 24) readBOOL];
  *v1 = result;
  return result;
}

unint64_t sub_1D98DBA4C()
{
  result = qword_1ECB48D90;
  if (!qword_1ECB48D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB48D90);
  }

  return result;
}

unint64_t sub_1D98DBAA4()
{
  result = qword_1ECB48D98;
  if (!qword_1ECB48D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB48D98);
  }

  return result;
}

_BYTE *_s11ProtoFieldsOwst(_BYTE *result, int a2, int a3)
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

unint64_t sub_1D98DBC70()
{
  result = qword_1ECB48DA0;
  if (!qword_1ECB48DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB48DA0);
  }

  return result;
}

uint64_t sub_1D98DBCCC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1D98DBD0C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D98DBD74(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, __int16 a6)
{
  if (a1 == a4 && a2 == a5)
  {
    if (a6 != a3)
    {
      return 0;
    }

    return ((a6 & 0x100) == 0) ^ ((a3 & 0x100) >> 8);
  }

  v9 = sub_1D992BF64();
  result = 0;
  if ((v9 & 1) != 0 && a6 == a3)
  {
    return ((a6 & 0x100) == 0) ^ ((a3 & 0x100) >> 8);
  }

  return result;
}

uint64_t sub_1D98DBDF4(uint64_t a1, uint64_t a2)
{
  sub_1D992C074();
  sub_1D992B6D4();
  return sub_1D992C0C4();
}

uint64_t sub_1D98DBE54(uint64_t a1)
{
  sub_1D992C074();
  sub_1D992B6D4();
  return sub_1D992C0C4();
}

uint64_t sub_1D98DBE9C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 17))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  if (*(a2 + 17))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_1D98DBD74(*a1, *(a1 + 8), v2 | *(a1 + 16), *a2, *(a2 + 8), v3 | *(a2 + 16));
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D98DBEF0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_1D98DBF30(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D98DBF84()
{
  result = qword_1ED8BD830;
  if (!qword_1ED8BD830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8BD830);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StorageProtectionClass(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D98DC0B8()
{
  result = qword_1ECB48DA8;
  if (!qword_1ECB48DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB48DA8);
  }

  return result;
}

uint64_t sub_1D98DC10C@<X0>(void *a1@<X8>)
{
  v2 = (type metadata accessor for MonotonicTimestamp(0) - 8);
  MEMORY[0x1EEE9AC00](*(*v2 + 64));
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = mach_absolute_time();
  v9 = 0;
  MonotonicTimestamp.init(cpuTicks:clockType:)(v5, &v9);
  v6 = *&v4[v2[7]];
  result = sub_1D98C7A84(v4);
  *a1 = v6;
  return result;
}

uint64_t getEnumTagSinglePayload for MonotonicInterval(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MonotonicInterval(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

void sub_1D98DC214(uint64_t a1)
{
  sub_1D992AE84();
  if (v1 <= 0x3F)
  {
    sub_1D98DC304(319, &qword_1ECB47A10, MEMORY[0x1E69CE6A0]);
    if (v2 <= 0x3F)
    {
      sub_1D986E35C(319, &qword_1ED8BF0B8, 0x1E69CF568);
      if (v3 <= 0x3F)
      {
        sub_1D98DC304(319, &qword_1ECB48050, MEMORY[0x1EEE78830]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D98DC304(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D992BC04();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D98DC358(uint64_t a1, uint64_t a2)
{
  if ((sub_1D992AE54() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for StagedMessage(0);
  v5 = *(v4 + 20);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6)
  {
    if (!v7)
    {
      return 0;
    }

    sub_1D992B164();
    v8 = v7;
    v9 = v6;
    v10 = sub_1D992BBD4();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  sub_1D986E35C(0, &unk_1ED8BD630, 0x1E69E58C0);
  if (sub_1D992BBD4())
  {
    v11 = *(v4 + 28);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48DB0, &qword_1D9934440);
    v13 = MEMORY[0x1EEE9AC00](((*(*(v12 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
    v15 = &v29 - v14;
    v16 = *(v13 + 14);
    sub_1D98D88C8(a1 + v11, &v29 - v14);
    sub_1D98D88C8(a2 + v11, &v15[v16]);
    v17 = sub_1D992AE04();
    if (__swift_getEnumTagSinglePayload(v15, 1, v17) == 1)
    {
      if (__swift_getEnumTagSinglePayload(&v15[v16], 1, v17) == 1)
      {
        sub_1D986DEE4(v15, &qword_1ECB48710, &qword_1D9931340);
        return 1;
      }

      goto LABEL_13;
    }

    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48710, &qword_1D9931340);
    MEMORY[0x1EEE9AC00](((*(*(v19 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
    v21 = &v29 - v20;
    sub_1D98D88C8(v15, &v29 - v20);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v15[v16], 1, v17);
    v23 = *(v17 - 8);
    v24 = v23;
    if (EnumTagSinglePayload == 1)
    {
      (*(v23 + 8))(v21, v17);
LABEL_13:
      sub_1D986DEE4(v15, &qword_1ECB48DB0, &qword_1D9934440);
      return 0;
    }

    MEMORY[0x1EEE9AC00](*(v23 + 64));
    v26 = &v29 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v24 + 32))(v26, &v15[v16], v17);
    sub_1D98DC6A8();
    v27 = sub_1D992B5F4();
    v28 = *(v24 + 8);
    v28(v26, v17);
    v28(v21, v17);
    sub_1D986DEE4(v15, &qword_1ECB48710, &qword_1D9931340);
    if (v27)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_1D98DC6A8()
{
  result = qword_1ECB48DB8;
  if (!qword_1ECB48DB8)
  {
    sub_1D992AE04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB48DB8);
  }

  return result;
}

char *sub_1D98DC6F4()
{
  result = SiriAnalyticsLoggingSubsystem;
  if (SiriAnalyticsLoggingSubsystem)
  {
    result = sub_1D992B604();
    if (v1)
    {
      qword_1ED8BFBB8 = result;
      unk_1ED8BFBC0 = v1;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D98DC9F8(uint64_t a1, void *a2, id *a3, uint64_t *a4, uint64_t a5)
{
  v9 = sub_1D992B2E4();
  MEMORY[0x1EEE9AC00](*(*(v9 - 8) + 64));
  OUTLINED_FUNCTION_2_27();
  if (*a2 != -1)
  {
    swift_once();
  }

  v10 = *a3;
  sub_1D992B2F4();
  type metadata accessor for CustomLogger(0);
  v11 = swift_allocObject();
  result = sub_1D98DCD48(v5);
  *a4 = v11;
  return result;
}

void sub_1D98DCBEC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *a2;
  if (qword_1ED8BF528 == -1)
  {
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  swift_once();
  if (!v4)
  {
    goto LABEL_6;
  }

LABEL_3:

  sub_1D992B604();
  if (v5)
  {
    sub_1D98DD300();
    *a3 = sub_1D992BBF4();
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_1D98DCCAC()
{
  sub_1D98DD300();
  if (qword_1ED8BF528 != -1)
  {
    swift_once();
  }

  result = sub_1D992BBF4();
  qword_1ECB49668 = result;
  return result;
}

uint64_t sub_1D98DCD48(uint64_t a1)
{
  v2 = v1;
  *(v1 + OBJC_IVAR____TtC13SiriAnalytics12CustomLogger____lazy_storage___internalOnly) = 0;
  v4 = OBJC_IVAR____TtC13SiriAnalytics12CustomLogger_logger;
  v5 = sub_1D992B2E4();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v2 + v4, a1, v5);
  type metadata accessor for InternalOnlyLogger();
  v7 = swift_allocObject();

  sub_1D98DD07C(v8);
  (*(v6 + 8))(a1, v5);
  *(v2 + OBJC_IVAR____TtC13SiriAnalytics12CustomLogger____lazy_storage___internalOnly) = v7;

  return v2;
}

uint64_t sub_1D98DCE30()
{
  v1 = OBJC_IVAR____TtC13SiriAnalytics12CustomLogger____lazy_storage___internalOnly;
  if (*(v0 + OBJC_IVAR____TtC13SiriAnalytics12CustomLogger____lazy_storage___internalOnly))
  {
    v2 = *(v0 + OBJC_IVAR____TtC13SiriAnalytics12CustomLogger____lazy_storage___internalOnly);
  }

  else
  {
    v3 = v0;
    type metadata accessor for InternalOnlyLogger();
    v2 = swift_allocObject();

    sub_1D98DD07C(v4);
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1D98DCEE4()
{
  v1 = OBJC_IVAR____TtC13SiriAnalytics12CustomLogger_logger;
  v2 = sub_1D992B2E4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CustomLogger(uint64_t a1)
{
  result = qword_1ED8BF620;
  if (!qword_1ED8BF620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D98DCFE4(uint64_t a1)
{
  result = sub_1D992B2E4();
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

uint64_t sub_1D98DD07C(uint64_t a1)
{
  if (qword_1ED8BF440 != -1)
  {
    swift_once();
  }

  *(v1 + 24) = byte_1ED8BFBD1;
  *(v1 + 16) = a1;
  return v1;
}

void sub_1D98DD0E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a5 + 24) == 1)
  {
    OUTLINED_FUNCTION_0_40();
    OUTLINED_FUNCTION_1_28();
    sub_1D98DCEB4(0xD00000000000002CLL, v5, v6, v7, v9, v8);
  }
}

void sub_1D98DD144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a5 + 24) == 1)
  {
    OUTLINED_FUNCTION_0_40();
    OUTLINED_FUNCTION_1_28();
    sub_1D986A454(0xD000000000000037, v5, v6, v7, v9, v8);
  }
}

void sub_1D98DD190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a5 + 24) == 1)
  {
    OUTLINED_FUNCTION_0_40();
    OUTLINED_FUNCTION_1_28();
    sub_1D986A454(0xD00000000000004ALL, v5, v6, v7, v9, v8);
  }
}

uint64_t sub_1D98DD1F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, void (*a7)(uint64_t))
{
  if (*(v7 + 24) == 1)
  {
    v9 = a5();
    a7(v9);
  }

  return result;
}

uint64_t sub_1D98DD2A4()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1D98DD300()
{
  result = qword_1ED8BF518;
  if (!qword_1ED8BF518)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED8BF518);
  }

  return result;
}

void *sub_1D98DD344(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48DC0, &qword_1D99344B8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

uint64_t sub_1D98DD3C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D98DD3E8, 0, 0);
}

uint64_t sub_1D98DD3E8()
{
  if ([*(v0 + 72) optedInToDataSharing])
  {
    if (qword_1ECB47AC8 != -1)
    {
      OUTLINED_FUNCTION_0_41(&qword_1ECB47AC8);
    }

    v1 = *(v0 + 64);
    sub_1D98DCE30();
    v2 = swift_task_alloc();
    *(v2 + 16) = v1;
    sub_1D98DD1DC(0xD00000000000007FLL, 0x80000001D993B610, 0xD000000000000026, 0x80000001D993B690, sub_1D98DDB24, v2);

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    if (qword_1ECB47AC8 != -1)
    {
      OUTLINED_FUNCTION_0_41(&qword_1ECB47AC8);
    }

    v5 = *(v0 + 64);
    sub_1D98DCE30();
    v6 = swift_task_alloc();
    *(v6 + 16) = v5;
    sub_1D98DD1DC(0xD00000000000007FLL, 0x80000001D993B610, 0xD000000000000026, 0x80000001D993B690, sub_1D98DDA74, v6);

    *(v0 + 40) = &type metadata for InternalPlatformClassifications;
    *(v0 + 48) = sub_1D98DDA7C();
    *(v0 + 56) = 0xA000000000000008;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49160, &qword_1D9934540);
    sub_1D98AB1B0();
    v8 = sub_1D992B814();

    return MEMORY[0x1EEE6DFA0](sub_1D98DD638, v8, v7);
  }
}

uint64_t sub_1D98DD638()
{
  sub_1D98DD7D4(*(v0 + 80) + 24, v0 + 16, *(v0 + 64));

  return MEMORY[0x1EEE6DFA0](sub_1D98DD6AC, 0, 0);
}

uint64_t sub_1D98DD6AC()
{
  sub_1D98DDAD0(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D98DD70C()
{
  sub_1D992BD64();
  MEMORY[0x1DA739C30](0xD000000000000011, 0x80000001D993B720);
  sub_1D992AE84();
  sub_1D98A19C4();
  v0 = sub_1D992BF34();
  MEMORY[0x1DA739C30](v0);

  MEMORY[0x1DA739C30](0xD000000000000026, 0x80000001D993B740);
  return 0;
}

uint64_t sub_1D98DD7D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  MEMORY[0x1EEE9AC00](*(*(v4 - 8) + 64));
  v6 = &v12[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12[-1] - v7;
  v9 = sub_1D992AE84();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v9);
  v12[3] = &type metadata for DataClassificationTag;
  v12[4] = &protocol witness table for DataClassificationTag;
  v12[0] = swift_allocObject();
  sub_1D98DDB2C(a2, v12[0] + 16);
  sub_1D98FD694();
  sub_1D987625C(v8);
  sub_1D987625C(v6);
  return __swift_destroy_boxed_opaque_existential_1(v12);
}

uint64_t sub_1D98DD904()
{
  sub_1D992BD64();
  MEMORY[0x1DA739C30](0xD000000000000015, 0x80000001D993B6C0);
  sub_1D992AE84();
  sub_1D98A19C4();
  v0 = sub_1D992BF34();
  MEMORY[0x1DA739C30](v0);

  MEMORY[0x1DA739C30](0xD000000000000031, 0x80000001D993B6E0);
  return 0;
}

uint64_t sub_1D98DD9CC(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D988AED8;

  return sub_1D98DD3C4(a1, v5, v4);
}

unint64_t sub_1D98DDA7C()
{
  result = qword_1ECB47B80;
  if (!qword_1ECB47B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB47B80);
  }

  return result;
}

id UserHistoryPolicyShim.init(messageStaging:queue:)(void *a1, void *a2)
{
  v3 = v2;
  type metadata accessor for UserHistoryPolicy();
  v6 = swift_allocObject();
  v7 = a1;
  v8 = a2;
  sub_1D98DE13C(v7, v8);
  *&v3[OBJC_IVAR___SiriAnalyticsUserHistoryPolicy_historyPolicy] = v6;
  v11.receiver = v3;
  v11.super_class = type metadata accessor for UserHistoryPolicyShim();
  v9 = objc_msgSendSuper2(&v11, sel_init);

  return v9;
}

uint64_t sub_1D98DDCDC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48BB0, &qword_1D9930970);
  MEMORY[0x1EEE9AC00](((*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v2 = &v7 - v1;
  v3 = sub_1D992B874();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v4;
  sub_1D98D2268();

  return sub_1D988C380(v2);
}

uint64_t sub_1D98DDDE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D98DDE00, 0, 0);
}

uint64_t sub_1D98DDE00()
{
  OUTLINED_FUNCTION_18();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    *(v0 + 56) = *(Strong + OBJC_IVAR___SiriAnalyticsUserHistoryPolicy_historyPolicy);

    v3 = swift_task_alloc();
    *(v0 + 64) = v3;
    *v3 = v0;
    v3[1] = sub_1D98DDF0C;

    return sub_1D98DE2DC(v3);
  }

  else
  {
    **(v0 + 40) = 2;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_1D98DDF0C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v1 = *v0;
  OUTLINED_FUNCTION_17();
  *v2 = v1;
  *(v4 + 72) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1D98DE01C, 0, 0);
}

id UserHistoryPolicyShim.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id UserHistoryPolicyShim.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for UserHistoryPolicyShim();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1D98DE13C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_defaultActor_initialize();
  *(v3 + 112) = a1;
  type metadata accessor for UserHistoryDeletionRequestObserver();
  swift_allocObject();
  *(v3 + 120) = sub_1D990A378(a2);
  return v3;
}

uint64_t sub_1D98DE1C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D98DE954;

  return sub_1D98DDDE0(a1, v4, v5, v6);
}

uint64_t sub_1D98DE2F4()
{
  *(v0 + 24) = *(*(v0 + 16) + 120);
  type metadata accessor for UserHistoryDeletionRequestObserver();
  sub_1D98DE8FC();

  v2 = sub_1D992B814();

  return MEMORY[0x1EEE6DFA0](sub_1D98DE398, v2, v1);
}

uint64_t sub_1D98DE398()
{
  OUTLINED_FUNCTION_18();
  v1 = sub_1D990A544(&unk_1D99345F8, *(v0 + 16));

  v2 = *(v0 + 8);

  return v2(v1 & 1);
}

uint64_t sub_1D98DE41C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D98DE4AC;

  return sub_1D98DE590(v1);
}

uint64_t sub_1D98DE4AC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v1 = *v0;
  OUTLINED_FUNCTION_17();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1D98DE5A8()
{
  OUTLINED_FUNCTION_18();
  if (qword_1ECB47AC8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  sub_1D98DCECC(0xD00000000000001FLL, 0x80000001D993B830, 0xD00000000000006BLL, 0x80000001D993B850, 0xD000000000000011, 0x80000001D993B8C0);
  *(v0 + 24) = *(v1 + 112);

  return MEMORY[0x1EEE6DFA0](sub_1D98DE694, 0, 0);
}

uint64_t sub_1D98DE694()
{
  OUTLINED_FUNCTION_18();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1D98DE730;

  return sub_1D9901338();
}

uint64_t sub_1D98DE730()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  v1 = *v0;
  OUTLINED_FUNCTION_17();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1D98DE814()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1D98DE844()
{
  sub_1D98DE814();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1D98DE870()
{
  OUTLINED_FUNCTION_18();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D98DE4AC;

  return sub_1D98DE41C();
}

unint64_t sub_1D98DE8FC()
{
  result = qword_1ECB47B50;
  if (!qword_1ECB47B50)
  {
    type metadata accessor for UserHistoryDeletionRequestObserver();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB47B50);
  }

  return result;
}

uint64_t static SearchRequestDataClassification.read(from:)()
{
  sub_1D98DEA98();
  result = sub_1D992B964();
  if (!v2)
  {
    v4 = sub_1D992B484();
    sub_1D98847C8();
    swift_allocError();
    (*(*(v4 - 8) + 104))(v5, *MEMORY[0x1E6999BA8], v4);
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_1D98DEA98()
{
  result = qword_1ECB47B70;
  if (!qword_1ECB47B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB47B70);
  }

  return result;
}

unint64_t sub_1D98DEAF0()
{
  result = qword_1ECB47B68;
  if (!qword_1ECB47B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB47B68);
  }

  return result;
}

_BYTE *_s14descr1F5516309C11ProtoFieldsOwst(_BYTE *result, int a2, int a3)
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

unint64_t sub_1D98DECBC()
{
  result = qword_1ECB48DD0;
  if (!qword_1ECB48DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB48DD0);
  }

  return result;
}

uint64_t sub_1D98DED30(uint64_t a1)
{
  result = type metadata accessor for LogicalClockStart(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for LogicalClockEnd(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1D98DEE0C(uint64_t a1)
{
  sub_1D992AE84();
  if (v1 <= 0x3F)
  {
    type metadata accessor for SiriAnalyticsLogicalClockEndedReason(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D98DEEC0(uint64_t a1)
{
  result = sub_1D992AE84();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LogicalClockType(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D98DF028()
{
  result = qword_1ECB48DD8;
  if (!qword_1ECB48DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB48DD8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for InternalPlatformClassifications(_BYTE *result, int a2, int a3)
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

unint64_t sub_1D98DF128(uint64_t a1)
{
  result = sub_1D98CEED4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D98DF154()
{
  result = qword_1ECB48DE0;
  if (!qword_1ECB48DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB48DE0);
  }

  return result;
}

id DataCollectionPolicyClockObserver.__allocating_init(siriConfiguration:metastore:metastoreQueue:)()
{
  OUTLINED_FUNCTION_1_29();
  v1 = objc_allocWithZone(v0);
  return DataCollectionPolicyClockObserver.init(siriConfiguration:metastore:metastoreQueue:)();
}

id DataCollectionPolicyClockObserver.init(siriConfiguration:metastore:metastoreQueue:)()
{
  OUTLINED_FUNCTION_1_29();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49160, &qword_1D9934540);
  v4 = swift_allocObject();
  *(v4 + 16) = v0;
  *(v4 + 24) = v2;
  v5 = sub_1D98CE740(v3, v4);
  v6 = &v1[OBJC_IVAR___SiriAnalyticsDataCollectionPolicyClockObserver_dataCollectionPolicy];
  v6[3] = &type metadata for AllDataCollectionPolicies;
  v6[4] = &off_1F551A488;
  *v6 = v5;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for DataCollectionPolicyClockObserver();
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_1D98DF30C()
{
  OUTLINED_FUNCTION_1_29();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48BB0, &qword_1D9930970);
  MEMORY[0x1EEE9AC00](((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = &v17 - v4;
  v6 = sub_1D992B874();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = sub_1D992AE84();
  OUTLINED_FUNCTION_6();
  v10 = v9;
  v12 = v11[8];
  MEMORY[0x1EEE9AC00](v11);
  (*(v10 + 16))(&v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v2, v8);
  v13 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 4) = v7;
  (*(v10 + 32))(&v14[v13], &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  v15 = &v14[(v12 + v13 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v15 = v1;
  *(v15 + 1) = v0;

  sub_1D98D2028(0, 0, v5, &unk_1D9934918, v14);

  return sub_1D988C380(v5);
}

uint64_t sub_1D98DF504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a6;
  v7[13] = a7;
  v7[10] = a4;
  v7[11] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1D98DF528, 0, 0);
}

uint64_t sub_1D98DF528()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1D98B37DC(Strong + OBJC_IVAR___SiriAnalyticsDataCollectionPolicyClockObserver_dataCollectionPolicy, v0 + 16);

    v3 = *(v0 + 40);
    v4 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v3);
    v9 = (*(v4 + 8) + **(v4 + 8));
    v5 = swift_task_alloc();
    *(v0 + 112) = v5;
    *v5 = v0;
    v5[1] = sub_1D98DF6D4;
    v6 = *(v0 + 88);

    return v9(v6, v3, v4);
  }

  else
  {
    (*(v0 + 96))();
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_1D98DF6D4()
{

  return MEMORY[0x1EEE6DFA0](sub_1D98DF7D0, 0, 0);
}

uint64_t sub_1D98DF7D0()
{
  v1 = __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  (*(v0 + 96))(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D98DF83C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1D992AE84() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1D988AED8;

  return sub_1D98DF504(a1, v7, v8, v9, v1 + v6, v11, v12);
}

id DataCollectionPolicyClockObserver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DataCollectionPolicyClockObserver.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DataCollectionPolicyClockObserver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D98DFBD0(uint64_t a1, char a2)
{
  v2 = a1;
  v64 = MEMORY[0x1E69E7CC0];
  v3 = *(a1 + 16);
  if (v3)
  {
    v58 = a2;
    v4 = a1 + 32;
    v5 = MEMORY[0x1E69E7CC0];
    v6 = a1 + 32;
    v7 = *(a1 + 16);
    do
    {
      sub_1D98DDB2C(v6, v62);
      sub_1D98B37DC(v62, v61);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48DF0, &unk_1D9934960);
      if (swift_dynamicCast())
      {
        v8 = v63;
        sub_1D98907D8(v63);
        sub_1D98DDAD0(v62);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_1();
          sub_1D98BDB08();
          v5 = v11;
        }

        v10 = *(v5 + 16);
        v9 = *(v5 + 24);
        if (v10 >= v9 >> 1)
        {
          OUTLINED_FUNCTION_14(v9);
          sub_1D98BDB08();
          v5 = v12;
        }

        *(v5 + 16) = v10 + 1;
        *(v5 + 8 * v10 + 32) = v8;
      }

      else
      {
        sub_1D98DDAD0(v62);
      }

      v6 += 48;
      --v7;
    }

    while (v7);
    if (*(v5 + 16))
    {
      v13 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1D98DDB2C(v4, v62);
        sub_1D98B37DC(v62, v61);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48DF0, &unk_1D9934960);
        if (swift_dynamicCast() && (v60 & 1) != 0)
        {
          v14 = v63;
          sub_1D98907D8(v63);
          sub_1D98DDAD0(v62);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_1();
            sub_1D98BDB08();
            v13 = v17;
          }

          v16 = *(v13 + 16);
          v15 = *(v13 + 24);
          if (v16 >= v15 >> 1)
          {
            OUTLINED_FUNCTION_14(v15);
            sub_1D98BDB08();
            v13 = v18;
          }

          *(v13 + 16) = v16 + 1;
          *(v13 + 8 * v16 + 32) = v14;
        }

        else
        {
          sub_1D98DDAD0(v62);
        }

        v4 += 48;
        --v3;
      }

      while (v3);
      v19 = (v5 + 16);
      goto LABEL_25;
    }

    v2 = a1;
  }

  else if (*(MEMORY[0x1E69E7CC0] + 16))
  {
    v58 = a2;
    v19 = (MEMORY[0x1E69E7CC0] + 16);
    v5 = MEMORY[0x1E69E7CC0];
    v13 = MEMORY[0x1E69E7CC0];
LABEL_25:
    if (*(v13 + 16))
    {
      if (qword_1ED8BD6E0 != -1)
      {
        swift_once();
      }

      if (*(sub_1D98DCE30() + 24) == 1)
      {

        v21 = sub_1D98E0308(v20);
        sub_1D986A454(v21, v22, 0xD000000000000072, 0x80000001D993B970, 0xD00000000000001DLL, 0x80000001D993B9F0);
      }

      else
      {
      }

      v23 = *v19;
      if (*v19)
      {
        v24 = OUTLINED_FUNCTION_1_30();
        sub_1D98B9CEC(v24, v23, 0);
        v25 = 32;
        v26 = v62[0];
        do
        {
          v27 = *(v5 + v25);
          OUTLINED_FUNCTION_3();
          v28 = swift_allocObject();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB489F0, &unk_1D9932530);
          v29 = swift_allocObject();
          *(v29 + 16) = xmmword_1D9933A20;
          *(v29 + 32) = v27;
          OUTLINED_FUNCTION_3();
          v30 = swift_allocObject();
          OUTLINED_FUNCTION_3();
          v31 = swift_allocObject();
          *(v31 + 16) = v13;
          *(v30 + 16) = v31 | 0x4000000000000000;
          *(v29 + 40) = v30 | 0x8000000000000000;
          *(v28 + 16) = v29;

          sub_1D98907D8(v27);
          v62[0] = v26;
          v33 = *(v26 + 16);
          v32 = *(v26 + 24);
          if (v33 >= v32 >> 1)
          {
            v34 = OUTLINED_FUNCTION_14(v32);
            sub_1D98B9CEC(v34, v33 + 1, 1);
            v26 = v62[0];
          }

          *(v26 + 16) = v33 + 1;
          *(v26 + 8 * v33 + 32) = v28 | 0x6000000000000000;
          v25 += 8;
          --v23;
        }

        while (v23);

        v5 = v26;
      }

      else
      {

        v5 = MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
    }

    v35 = *(v5 + 16);
    if (v35)
    {
      OUTLINED_FUNCTION_1_30();
      sub_1D98B9D2C();
      v36 = v62[0];
      if (v58)
      {
        v37 = 6;
      }

      else
      {
        v37 = 11;
      }

      v38 = 32;
      do
      {
        v39 = *(v5 + v38);
        sub_1D98907D8(v39);
        v62[0] = v36;
        v41 = *(v36 + 16);
        v40 = *(v36 + 24);
        if (v41 >= v40 >> 1)
        {
          OUTLINED_FUNCTION_14(v40);
          sub_1D98B9D2C();
          v36 = v62[0];
        }

        *(v36 + 16) = v41 + 1;
        v42 = v36 + 16 * v41;
        *(v42 + 32) = v37;
        *(v42 + 40) = v39;
        v38 += 8;
        --v35;
      }

      while (v35);
    }

    else
    {

      v36 = MEMORY[0x1E69E7CC0];
    }

    v64 = v36;
    goto LABEL_72;
  }

  if (v3)
  {
    v43 = v2 + 32;
    v44 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1D98DDB2C(v43, v62);
      sub_1D98B37DC(v62, v61);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48DF0, &unk_1D9934960);
      if (swift_dynamicCast() && (v60 & 1) == 0)
      {
        v45 = v63;
        sub_1D98907D8(v63);
        sub_1D98DDAD0(v62);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_1();
          sub_1D98BDB08();
          v44 = v48;
        }

        v47 = *(v44 + 16);
        v46 = *(v44 + 24);
        if (v47 >= v46 >> 1)
        {
          OUTLINED_FUNCTION_14(v46);
          sub_1D98BDB08();
          v44 = v49;
        }

        *(v44 + 16) = v47 + 1;
        *(v44 + 8 * v47 + 32) = v45;
      }

      else
      {
        sub_1D98DDAD0(v62);
      }

      v43 += 48;
      --v3;
    }

    while (v3);
  }

  else
  {
    v44 = MEMORY[0x1E69E7CC0];
  }

  v50 = *(v44 + 16);
  if (v50)
  {
    OUTLINED_FUNCTION_1_30();
    sub_1D98B9D2C();
    v51 = 32;
    v52 = v62[0];
    do
    {
      v53 = *(v44 + v51);
      sub_1D98907D8(v53);
      v62[0] = v52;
      v55 = *(v52 + 16);
      v54 = *(v52 + 24);
      if (v55 >= v54 >> 1)
      {
        OUTLINED_FUNCTION_14(v54);
        sub_1D98B9D2C();
        v52 = v62[0];
      }

      *(v52 + 16) = v55 + 1;
      v56 = v52 + 16 * v55;
      *(v56 + 32) = 6;
      *(v56 + 40) = v53;
      v51 += 8;
      --v50;
    }

    while (v50);
  }

  else
  {

    v52 = MEMORY[0x1E69E7CC0];
  }

  sub_1D98EBFD0(v52);
  v36 = v64;
LABEL_72:
  if (!*(v36 + 16))
  {

    return 0;
  }

  return v36;
}

unint64_t sub_1D98E0308(uint64_t a1)
{
  sub_1D992BD64();

  v2 = MEMORY[0x1DA739D10](a1, &type metadata for TagPredicate);
  MEMORY[0x1DA739C30](v2);

  return 0xD00000000000002ELL;
}

_BYTE *storeEnumTagSinglePayload for DataCollectionPolicyResolver(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D98E046C(uint64_t a1, char a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48370, &qword_1D9934A50);
  MEMORY[0x1EEE9AC00](((*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = &v29 - v4;
  v6 = type metadata accessor for RootLogicalClock(0);
  MEMORY[0x1EEE9AC00](*(*(v6 - 1) + 64));
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (type metadata accessor for RootLogicalClockSequence.RootLogicalClockSequenceIterator(0) - 8);
  MEMORY[0x1EEE9AC00](*(*v9 + 64));
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1E69E7CC0];
  sub_1D992BDC4();
  v12 = v9[8];
  v13 = type metadata accessor for RootLogicalClockBuilder(0);
  __swift_storeEnumTagSinglePayload(&v11[v12], 1, 1, v13);
  v30 = v11;
  *v11 = a2;
  if (a2)
  {
    v14 = sub_1D992B344();
  }

  else
  {
    v14 = sub_1D992B334();
  }

  *(v30 + 1) = v14;
  v29 = v5;
  while (1)
  {
    sub_1D9902194(v5);
    if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
    {
      break;
    }

    sub_1D98E3E44(v5, v8);
    v15 = sub_1D992AE84();
    v31 = &v29;
    v16 = *(v15 - 8);
    v17 = v16;
    v18 = v16[8];
    MEMORY[0x1EEE9AC00](v16);
    v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    v20 = v17[2];
    v20(v19, v8, v15);
    MEMORY[0x1EEE9AC00](v6[5]);
    v20(v19, &v8[v21], v15);
    v22 = *&v8[v6[6]];
    v23 = &v8[v6[8]];
    v24 = v23[16];
    if (v24)
    {
      v25 = 0;
    }

    else
    {
      v25 = *v23;
    }

    v26 = *&v8[v6[7]];
    v27 = *&v8[v6[9]];
    type metadata accessor for LogicalClockRecord(0);
    swift_allocObject();
    sub_1D98C5504(v19, v19, v22, v25, v24, v26, 0, v27, v24);

    sub_1D98E3DF4();
    sub_1D992BDA4();
    sub_1D992BDD4();
    v5 = v29;
    sub_1D992BDE4();
    sub_1D992BDB4();
  }

  sub_1D98E3DF4();
  sub_1D98E3DA0(v5, &qword_1ECB48370, &qword_1D9934A50);
  return v32;
}

uint64_t sub_1D98E0810(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1D98E0824()
{
  v1 = *(v0 + 24);
  v2 = sub_1D992AE84();
  *(v0 + 40) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48E08, &qword_1D9934AC8);
  sub_1D98B3748();
  v3 = sub_1D992B5B4();
  v4 = *(v1 + 32);
  *(v0 + 152) = v4;
  v5 = 1 << v4;
  v6 = -1;
  if (1 << v4 < 64)
  {
    v6 = ~(-1 << (1 << v4));
  }

  v7 = v6 & *(v1 + 56);
  v8 = *(v2 - 8);
  *(v0 + 48) = v8;
  *(v0 + 56) = *(v8 + 64);
  v9 = swift_task_alloc();
  *(v0 + 72) = v3;
  *(v0 + 80) = v3;
  *(v0 + 64) = v9;

  if (v7)
  {
    v10 = 0;
  }

  else
  {
    v11 = 0;
    do
    {
      v10 = v11 + 1;
      if (v11 + 1 >= (v5 + 63) >> 6)
      {

        OUTLINED_FUNCTION_28_5();

        __asm { BRAA            X2, X16 }
      }

      v7 = *(*(v0 + 24) + 8 * v11++ + 64);
    }

    while (!v7);
  }

  *(v0 + 88) = v7;
  *(v0 + 96) = v10;
  v12 = OUTLINED_FUNCTION_12_11();
  v13(v12);
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_25_5(v14);
  v16(v15);
  v17 = swift_task_alloc();
  *(v0 + 136) = v17;
  *v17 = v0;
  OUTLINED_FUNCTION_7_17(v17);
  OUTLINED_FUNCTION_28_5();

  return sub_1D98E39A8();
}

uint64_t sub_1D98E0A40()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_7_15();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 144) = v3;

  v4 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D98E0B28()
{
  v1 = *(v0 + 128);
  if (*(v0 + 144))
  {
    v2 = *(v0 + 112);
    v3 = *(v0 + 72);
    v4 = *(v0 + 40);
    v5 = OUTLINED_FUNCTION_20();
    v2(v5, v1, v4);
    swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 16) = v3;
    result = sub_1D9889568();
    if (__OFADD__(*(v3 + 16), (v7 & 1) == 0))
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v8 = result;
    v9 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48800, &qword_1D9931B28);
    if (sub_1D992BE34())
    {
      v10 = sub_1D9889568();
      if ((v9 & 1) != (v11 & 1))
      {
        OUTLINED_FUNCTION_28_5();

        return sub_1D992BFC4();
      }

      v8 = v10;
    }

    v14 = *(v0 + 16);
    v15 = *(v0 + 144);
    v16 = *(v0 + 128);
    if (v9)
    {
      v17 = *(v0 + 40);
      v18 = *(v0 + 48);
      *(v14[7] + 8 * v8) = v15;

      v19 = *(v18 + 8);
      v19(v5, v17);
      v19(v16, v17);
    }

    else
    {
      v20 = *(v0 + 112);
      v21 = *(v0 + 104);
      v22 = *(v0 + 40);
      v23 = *(v0 + 48);
      v14[(v8 >> 6) + 8] |= 1 << v8;
      v20(v14[6] + v21 * v8, v5, v22);
      *(v14[7] + 8 * v8) = v15;
      v24 = *(v23 + 8);
      v24(v5, v22);
      result = (v24)(v16, v22);
      v25 = v14[2];
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
LABEL_28:
        __break(1u);
        return result;
      }

      v14[2] = v27;
    }

    v13 = v14;
  }

  else
  {
    (*(*(v0 + 48) + 8))(*(v0 + 128), *(v0 + 40));
    v14 = *(v0 + 72);
    v13 = *(v0 + 80);
  }

  v29 = *(v0 + 88);
  v28 = *(v0 + 96);
  *(v0 + 72) = v14;
  *(v0 + 80) = v13;
  v30 = (v29 - 1) & v29;
  if (!v30)
  {
    while (1)
    {
      v31 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v31 >= (((1 << *(v0 + 152)) + 63) >> 6))
      {

        OUTLINED_FUNCTION_21();
        OUTLINED_FUNCTION_28_5();

        __asm { BRAA            X2, X16 }
      }

      v30 = *(*(v0 + 24) + 8 * v31 + 56);
      ++v28;
      if (v30)
      {
        v28 = v31;
        goto LABEL_20;
      }
    }

    __break(1u);
    goto LABEL_27;
  }

LABEL_20:
  *(v0 + 88) = v30;
  *(v0 + 96) = v28;
  v32 = OUTLINED_FUNCTION_12_11();
  v33(v32);
  v34 = swift_task_alloc();
  v35 = OUTLINED_FUNCTION_25_5(v34);
  v36(v35);
  v37 = swift_task_alloc();
  *(v0 + 136) = v37;
  *v37 = v0;
  OUTLINED_FUNCTION_7_17(v37);
  OUTLINED_FUNCTION_28_5();

  return sub_1D98E39A8();
}

uint64_t sub_1D98E11DC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1D98E11F0()
{
  OUTLINED_FUNCTION_18();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1D98A0C24;
  v2 = OUTLINED_FUNCTION_93(*(v0 + 16));

  return sub_1D98E271C(v2);
}

uint64_t sub_1D98E1314(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  v6 = swift_task_alloc();
  v3[4] = v6;
  if (a1)
  {
    sub_1D992AE64();
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = sub_1D992AE84();
  __swift_storeEnumTagSinglePayload(v6, v7, 1, v8);
  a3;
  v9 = swift_task_alloc();
  v3[5] = v9;
  *v9 = v3;
  v9[1] = sub_1D98E1444;

  return sub_1D98E11DC(v6);
}

uint64_t sub_1D98E1444()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_29();
  v2 = v1[4];
  v3 = v1[3];
  v4 = v1[2];
  v5 = *v0;
  OUTLINED_FUNCTION_17();
  *v6 = v5;

  sub_1D98E3DA0(v2, &qword_1ECB481D0, &qword_1D992F9F0);

  v3[2](v3);
  _Block_release(v3);
  OUTLINED_FUNCTION_25();

  return v7();
}

id LogicalClocksProviderShim.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LogicalClocksProviderShim.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for LogicalClocksProviderShim();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void *sub_1D98E165C(void *a1, void *a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49160, &qword_1D9934540);
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a1;
  v3[4] = v7;
  v3[5] = a3;
  v8 = a1;
  v9 = a2;
  return v3;
}

void sub_1D98E16C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_6_2();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48BB0, &qword_1D9930970);
  OUTLINED_FUNCTION_9(v35);
  MEMORY[0x1EEE9AC00](((*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = &a9 - v37;
  sub_1D992B874();
  OUTLINED_FUNCTION_10_4();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v42);
  v43 = swift_allocObject();
  v43[2] = 0;
  v43[3] = 0;
  v43[4] = v26;
  v43[5] = v24;
  v43[6] = v20;
  v43[7] = v34;
  v43[8] = v32;
  v43[9] = v30;
  v43[10] = v28;

  sub_1D98C8F14(0, 0, v38, &unk_1D9934A60, v43);

  OUTLINED_FUNCTION_7();
}

uint64_t sub_1D98E17E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = v10;
  v8[11] = v11;
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[5] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D98E1818, 0, 0);
}

uint64_t sub_1D98E1818()
{
  OUTLINED_FUNCTION_26();
  v4 = (*(v0 + 40) + **(v0 + 40));
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1D98E190C;
  v2 = OUTLINED_FUNCTION_19();

  return v4(v2);
}

uint64_t sub_1D98E190C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_7_15();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_17();
  *v5 = v4;
  *(v6 + 104) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_17_1();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_25();

    return v10();
  }
}

uint64_t sub_1D98E1A20()
{
  if (qword_1ED8BD6D0 != -1)
  {
    OUTLINED_FUNCTION_1_2(&qword_1ED8BD6D0);
  }

  v2 = v1[13];
  v4 = v1[10];
  v3 = v1[11];
  v6 = v1[8];
  v5 = v1[9];
  OUTLINED_FUNCTION_18_7();
  v1[4] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48A60, &unk_1D9931CC0);
  sub_1D992BE24();
  sub_1D98DCEB4(*v0, v1[3], v6, v5, v4, v3);

  OUTLINED_FUNCTION_25();

  return v7();
}

uint64_t sub_1D98E1D44(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 32) = a2;
  *(v4 + 40) = a4;
  *(v4 + 72) = a3;
  *(v4 + 24) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D98E1D6C, 0, 0);
}

uint64_t sub_1D98E1D6C()
{
  OUTLINED_FUNCTION_26();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  OUTLINED_FUNCTION_9(v1);
  v0[6] = OUTLINED_FUNCTION_20();
  sub_1D992AE84();
  OUTLINED_FUNCTION_10_4();
  result = __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  if (qword_1ECB47DD0 != -1)
  {
    result = OUTLINED_FUNCTION_63(&qword_1ECB47DD0);
  }

  v7 = v0[5];
  if (v7 != -1 && qword_1ECB47DC8 != HIDWORD(qword_1ECB47DC8))
  {
    if (is_mul_ok(v7, qword_1ECB47DC8))
    {
      if (!HIDWORD(qword_1ECB47DC8))
      {
        __break(1u);
        return result;
      }

      v7 = v7 * qword_1ECB47DC8 / HIDWORD(qword_1ECB47DC8);
    }

    else
    {
      v7 = -1;
    }
  }

  v0[2] = v7;
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_32_6(v9);
  *v10 = v11;
  v10[1] = sub_1D98E1EBC;
  OUTLINED_FUNCTION_93(v0[4]);

  return sub_1D9877220();
}

uint64_t sub_1D98E1EBC()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_29();
  v3 = v2;
  v4 = *(v2 + 48);
  v5 = *v1;
  OUTLINED_FUNCTION_17();
  *v6 = v5;
  *(v3 + 64) = v0;

  sub_1D98E3DA0(v4, &qword_1ECB481D0, &qword_1D992F9F0);
  if (v0)
  {
    OUTLINED_FUNCTION_17_1();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_25();

    return v10();
  }
}

uint64_t sub_1D98E21CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D98E21F0, 0, 0);
}

void sub_1D98E21F0()
{
  OUTLINED_FUNCTION_18();
  if (qword_1ECB47DD0 != -1)
  {
    OUTLINED_FUNCTION_63(&qword_1ECB47DD0);
  }

  v1 = v0[6];
  if (v1 != -1 && qword_1ECB47DC8 != HIDWORD(qword_1ECB47DC8))
  {
    if (is_mul_ok(v1, qword_1ECB47DC8))
    {
      if (!HIDWORD(qword_1ECB47DC8))
      {
        __break(1u);
        return;
      }

      v1 = v1 * qword_1ECB47DC8 / HIDWORD(qword_1ECB47DC8);
    }

    else
    {
      v1 = -1;
    }
  }

  v0[2] = v1;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_32_6(v3);
  *v4 = v5;
  v4[1] = sub_1D98E22E8;
  OUTLINED_FUNCTION_93(v0[5]);

  sub_1D98781C8();
}

uint64_t sub_1D98E22E8()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_7_15();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_17();
  *v5 = v4;
  *(v6 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_17_1();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_25();

    return v10();
  }
}

uint64_t sub_1D98E23FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D98E2424, a1, 0);
}

uint64_t sub_1D98E2424()
{
  OUTLINED_FUNCTION_18();
  *(v0 + 48) = sub_1D98787B4(*(v0 + 32));
  *(v0 + 72) = v1;
  v2 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

void sub_1D98E2488()
{
  OUTLINED_FUNCTION_18();
  if (*(v0 + 72))
  {
    OUTLINED_FUNCTION_25();

    v1();
  }

  else
  {
    if (qword_1ECB47DD0 != -1)
    {
      OUTLINED_FUNCTION_63(&qword_1ECB47DD0);
    }

    v2 = *(v0 + 40);
    if (v2 != -1 && qword_1ECB47DC8 != HIDWORD(qword_1ECB47DC8))
    {
      if (is_mul_ok(v2, qword_1ECB47DC8))
      {
        if (!HIDWORD(qword_1ECB47DC8))
        {
          __break(1u);
          return;
        }

        v2 = v2 * qword_1ECB47DC8 / HIDWORD(qword_1ECB47DC8);
      }

      else
      {
        v2 = -1;
      }
    }

    *(v0 + 16) = v2;
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_32_6(v4);
    *v5 = v6;
    v5[1] = sub_1D98E25B8;
    OUTLINED_FUNCTION_93(*(v0 + 48));

    sub_1D9877A40();
  }
}

uint64_t sub_1D98E25B8()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_7_15();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_17();
  *v5 = v4;
  *(v6 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_17_1();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_25();

    return v10();
  }
}

void sub_1D98E26F0()
{
  if ((sub_1D9869848() & 1) == 0)
  {
    sub_1D989912C();
  }
}

uint64_t sub_1D98E271C(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1D98E2730()
{
  OUTLINED_FUNCTION_18();
  if (sub_1D9869848())
  {
    v1 = swift_task_alloc();
    v2 = OUTLINED_FUNCTION_32_6(v1);
    *v2 = v3;
    v2[1] = sub_1D98E2824;
    OUTLINED_FUNCTION_93(v0[5]);

    return sub_1D9879198();
  }

  else
  {
    v0[9] = *(v0[6] + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49160, &qword_1D9934540);
    v5 = sub_1D98AB1B0();
    OUTLINED_FUNCTION_36_4(v5);
    OUTLINED_FUNCTION_33_5();
    v6 = OUTLINED_FUNCTION_17_8();

    return MEMORY[0x1EEE6DFA0](v6, v7, v8);
  }
}

uint64_t sub_1D98E2824()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_7_15();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_17();
  *v5 = v4;
  *(v6 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_17_1();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_25();

    return v10();
  }
}

uint64_t sub_1D98E2998()
{
  OUTLINED_FUNCTION_26();
  if (qword_1ED8BD6D0 != -1)
  {
    OUTLINED_FUNCTION_1_2(&qword_1ED8BD6D0);
  }

  v2 = v1[8];
  OUTLINED_FUNCTION_18_7();
  v1[4] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48A60, &unk_1D9931CC0);
  sub_1D992BE24();
  sub_1D98DCEB4(*v0, v1[3], 0xD00000000000007DLL, 0x80000001D993BB40, 0xD00000000000002ELL, 0x80000001D9936E00);

  OUTLINED_FUNCTION_25();

  return v3();
}

uint64_t dispatch thunk of LogicalClocksProviderShim.cleanupAbandonedClocks(activeClockIdentifier:)()
{
  OUTLINED_FUNCTION_26();
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x80);
  v7 = (v1 + *v1);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_2_12(v2);
  *v3 = v4;
  v3[1] = sub_1D98692C4;
  v5 = OUTLINED_FUNCTION_19();

  return v7(v5);
}

uint64_t sub_1D98E2CE4()
{
  OUTLINED_FUNCTION_18();
  *(v1 + 16) = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48E00, &qword_1D9934AB8);
  OUTLINED_FUNCTION_9(v2);
  *(v1 + 24) = OUTLINED_FUNCTION_20();
  v3 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D98E2D68()
{
  OUTLINED_FUNCTION_18();
  v1 = sub_1D9869848();
  v2 = v0[2];
  if (v1)
  {
    v3 = *(v2 + 40);
    v0[4] = v3;
    v4 = sub_1D98E2E14;
    v5 = 0;
  }

  else
  {
    v0[6] = *(v2 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49160, &qword_1D9934540);
    v6 = sub_1D98AB1B0();
    OUTLINED_FUNCTION_36_4(v6);
    OUTLINED_FUNCTION_33_5();
    v4 = OUTLINED_FUNCTION_17_8();
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v5);
}

uint64_t sub_1D98E2E14()
{
  OUTLINED_FUNCTION_18();
  *(v0 + 40) = *(*(v0 + 32) + OBJC_IVAR____TtC13SiriAnalytics18LogicalClockStream_stream);

  OUTLINED_FUNCTION_17_1();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1D98E2E8C()
{
  OUTLINED_FUNCTION_18();
  v1 = sub_1D98E046C(*(v0 + 40), 0);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D98E2F08()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 24);
  type metadata accessor for LogicalClocksTable.Predicate(0);
  OUTLINED_FUNCTION_10_4();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  sub_1D98EF554(v1);
  sub_1D98E3DA0(v1, &qword_1ECB48E00, &qword_1D9934AB8);

  v6 = OUTLINED_FUNCTION_21();

  return v7(v6);
}

uint64_t sub_1D98E2FA8()
{
  OUTLINED_FUNCTION_18();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48370, &qword_1D9934A50);
  OUTLINED_FUNCTION_9(v3);
  v1[4] = OUTLINED_FUNCTION_20();
  v4 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D98E302C()
{
  OUTLINED_FUNCTION_18();
  v1 = sub_1D9869848();
  v2 = v0[3];
  if (v1)
  {
    v3 = *(v2 + 40);
    v0[5] = v3;
    v4 = sub_1D98E30D8;
    v5 = 0;
  }

  else
  {
    v0[6] = *(v2 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49160, &qword_1D9934540);
    v6 = sub_1D98AB1B0();
    OUTLINED_FUNCTION_36_4(v6);
    OUTLINED_FUNCTION_33_5();
    v4 = OUTLINED_FUNCTION_17_8();
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v5);
}

uint64_t sub_1D98E30D8()
{
  OUTLINED_FUNCTION_18();
  sub_1D9879098(*(v0 + 32));
  v1 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1D98E3138()
{
  v1 = *(v0 + 32);
  v2 = type metadata accessor for RootLogicalClock(0);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_1D98E3DA0(v1, &qword_1ECB48370, &qword_1D9934A50);
  }

  else
  {
    v3 = sub_1D992AE84();
    OUTLINED_FUNCTION_6();
    v5 = v4;
    v6 = swift_task_alloc();
    v7 = *(v5 + 16);
    v7(v6, v1, v3);
    v8 = v2[5];
    v9 = swift_task_alloc();
    v7(v9, v1 + v8, v3);
    v10 = v2[7];
    v11 = *(v1 + v2[6]);
    v12 = v2[9];
    v13 = v1 + v2[8];
    v14 = *(v13 + 16);
    if (v14)
    {
      v15 = 0;
    }

    else
    {
      v15 = *v13;
    }

    v16 = *(v1 + v10);
    v17 = *(v1 + v12);
    type metadata accessor for LogicalClockRecord(0);
    swift_allocObject();
    sub_1D98C5504(v6, v9, v11, v15, v14, v16, 0, v17, v14);

    OUTLINED_FUNCTION_13_9();
  }

  v18 = OUTLINED_FUNCTION_21();

  return v19(v18);
}

uint64_t sub_1D98E3318()
{
  OUTLINED_FUNCTION_18();
  sub_1D98EE548(*(v0 + 16));

  v1 = OUTLINED_FUNCTION_21();

  return v2(v1);
}

uint64_t sub_1D98E3384()
{
  OUTLINED_FUNCTION_18();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48370, &qword_1D9934A50);
  OUTLINED_FUNCTION_9(v4);
  v1[5] = OUTLINED_FUNCTION_20();
  v5 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D98E340C()
{
  OUTLINED_FUNCTION_18();
  v1 = sub_1D9869848();
  v2 = v0[4];
  if (v1)
  {
    v3 = *(v2 + 40);
    v0[6] = v3;
    v4 = sub_1D98E34B8;
    v5 = 0;
  }

  else
  {
    v0[7] = *(v2 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49160, &qword_1D9934540);
    v6 = sub_1D98AB1B0();
    OUTLINED_FUNCTION_36_4(v6);
    OUTLINED_FUNCTION_33_5();
    v4 = OUTLINED_FUNCTION_17_8();
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v5);
}

uint64_t sub_1D98E34B8()
{
  OUTLINED_FUNCTION_18();
  sub_1D98790B0(*(v0 + 40));
  v1 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1D98E3518()
{
  OUTLINED_FUNCTION_26();
  v1 = *(v0 + 40);
  v2 = type metadata accessor for RootLogicalClock(0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v2);
  v4 = *(v0 + 16);
  if (EnumTagSinglePayload == 1)
  {
    sub_1D98E3DA0(v1, &qword_1ECB48370, &qword_1D9934A50);
    sub_1D992AE84();
    OUTLINED_FUNCTION_10_4();
  }

  else
  {
    v9 = sub_1D992AE84();
    (*(*(v9 - 8) + 16))(v4, v1, v9);
    OUTLINED_FUNCTION_13_9();
    v5 = v4;
    v6 = 0;
    v7 = 1;
    v8 = v9;
  }

  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);

  OUTLINED_FUNCTION_25();

  return v10();
}

uint64_t sub_1D98E3628()
{
  OUTLINED_FUNCTION_18();
  sub_1D98EE774();

  OUTLINED_FUNCTION_25();

  return v0();
}

uint64_t sub_1D98E3690()
{

  return v0;
}

uint64_t sub_1D98E36C8()
{
  sub_1D98E3690();

  return swift_deallocClassInstance();
}

uint64_t sub_1D98E3720(uint64_t a1)
{
  v3 = v1[3];
  v13 = v1[2];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_2_12(v9);
  *v10 = v11;
  v10[1] = sub_1D989EB64;

  return sub_1D98E17E4(a1, v13, v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1D98E3810()
{
  OUTLINED_FUNCTION_26();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_2_12(v3);
  *v4 = v5;
  v4[1] = sub_1D98692C4;
  v6 = OUTLINED_FUNCTION_19();

  return v7(v6, v1, v2);
}

uint64_t sub_1D98E38B8()
{
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_13_0();
  v1 = sub_1D992AE84();
  OUTLINED_FUNCTION_23(v1);
  v4 = *(v0 + ((*(v3 + 64) + ((*(v2 + 80) + 16) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_2_12(v5);
  *v6 = v7;
  v6[1] = sub_1D989EB64;
  v8 = OUTLINED_FUNCTION_19();

  return sub_1D98E23FC(v8, v9, v4);
}

uint64_t sub_1D98E39A8()
{
  OUTLINED_FUNCTION_18();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_12(v0);
  *v1 = v2;
  v1[1] = sub_1D98E3A30;
  OUTLINED_FUNCTION_19();

  return sub_1D98E2FA8();
}

uint64_t sub_1D98E3A30()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_7_15();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 24) = v3;

  v4 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D98E3B18()
{
  OUTLINED_FUNCTION_18();
  if (*(v0 + 24))
  {
  }

  v1 = OUTLINED_FUNCTION_21();

  return v2(v1);
}

uint64_t sub_1D98E3B98()
{
  OUTLINED_FUNCTION_13_0();
  v1 = sub_1D992AE84();
  OUTLINED_FUNCTION_23(v1);
  v4 = *(v0 + 16);
  v5 = *(v0 + ((*(v3 + 64) + ((*(v2 + 80) + 24) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_2_12(v6);
  *v7 = v8;
  v7[1] = sub_1D98692C4;
  v9 = OUTLINED_FUNCTION_19();

  return sub_1D98E21CC(v9, v4, v10, v5);
}

uint64_t sub_1D98E3C9C()
{
  OUTLINED_FUNCTION_13_0();
  v1 = sub_1D992AE84();
  OUTLINED_FUNCTION_23(v1);
  v4 = ((*(v2 + 80) + 16) & ~*(v2 + 80)) + *(v3 + 64);
  v5 = *(v0 + v4);
  v6 = *(v0 + (v4 & 0xFFFFFFFFFFFFFFF8) + 8);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_2_12(v7);
  *v8 = v9;
  v8[1] = sub_1D98692C4;
  v10 = OUTLINED_FUNCTION_19();

  return sub_1D98E1D44(v10, v11, v5, v6);
}

uint64_t sub_1D98E3DA0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_0_4();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1D98E3DF4()
{
  v1 = OUTLINED_FUNCTION_13_0();
  v2(v1);
  OUTLINED_FUNCTION_0_4();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1D98E3E44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RootLogicalClock(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_13_9()
{

  return sub_1D98E3DF4();
}

uint64_t sub_1D98E3EF8(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a1 + 64) + 40);
  v4 = sub_1D992AD44();
  (*(*(v4 - 8) + 32))(v3, a2, v4);

  return swift_continuation_resume();
}

uint64_t sub_1D98E3F8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 64) + 40);
  *v3 = a2;
  v3[1] = a3;
  return swift_continuation_resume();
}

uint64_t PluginStateService.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

uint64_t PluginStateService.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  return result;
}

uint64_t sub_1D98E3FE0(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1D98E3FF8()
{
  v1 = sub_1D988CFCC();
  v0[21] = v1;
  v2 = sub_1D992AD74();
  v0[22] = v2;
  v0[2] = v0;
  v0[3] = sub_1D98E4124;
  v3 = swift_continuation_init();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48670, &qword_1D99309F0);
  OUTLINED_FUNCTION_5_18(v4);
  v0[11] = 1107296256;
  v0[12] = sub_1D988D6BC;
  v0[13] = &block_descriptor_12;
  v0[14] = v3;
  [v1 saveState:v2 forPluginWithCompletion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D98E4124()
{
  OUTLINED_FUNCTION_18();
  v1 = *v0;
  OUTLINED_FUNCTION_17();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1D98E41F8, 0, 0);
}

uint64_t sub_1D98E41F8()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 176);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D98E4284()
{
  v1 = sub_1D988CFCC();
  v0[21] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1D98E4394;
  v2 = swift_continuation_init();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECB48E10, &qword_1D9934AF8);
  OUTLINED_FUNCTION_5_18(v3);
  v0[11] = 1107296256;
  v0[12] = sub_1D98E44D0;
  v0[13] = &block_descriptor_3_1;
  v0[14] = v2;
  [v1 fetchStateForPluginWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D98E4394()
{
  OUTLINED_FUNCTION_18();
  v1 = *v0;
  OUTLINED_FUNCTION_17();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1D98E4468, 0, 0);
}

uint64_t sub_1D98E4468()
{
  OUTLINED_FUNCTION_18();
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);

  v3 = *(v0 + 8);

  return v3(v2, v1);
}

uint64_t sub_1D98E44D0(uint64_t a1, void *a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v4 = a2;
    a2 = sub_1D992AD84();
    v6 = v5;
  }

  else
  {
    v6 = 0xF000000000000000;
  }

  return sub_1D98E3F8C(v3, a2, v6);
}

uint64_t PluginStateService.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t dispatch thunk of PluginStateService.save(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 120) + **(*v2 + 120));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1D988D0F4;

  return v8(a1, a2);
}

uint64_t dispatch thunk of PluginStateService.fetch()()
{
  v4 = (*(*v0 + 128) + **(*v0 + 128));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D98E482C;

  return v4();
}

uint64_t sub_1D98E482C()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  v4 = v3;
  v5 = *v0;
  OUTLINED_FUNCTION_17();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v4, v2);
}

uint64_t sub_1D98E492C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D98E4968(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1D98E49A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_1D98E4A08(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v25 = a1;
  v26 = a2;
  v5 = *(type metadata accessor for IdentifiableTag(0) - 8);
  MEMORY[0x1EEE9AC00](*(v5 + 64));
  v23 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - v8;
  v10 = 0;
  v11 = *(a3 + 16);
  v24 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v11 == v10)
    {

      return v24;
    }

    if (v10 >= *(a3 + 16))
    {
      break;
    }

    v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v13 = *(v5 + 72);
    sub_1D98BA908(a3 + v12 + v13 * v10, v9);
    v14 = v25(v9);
    if (v3)
    {
      sub_1D98BA96C(v9);
      v20 = v24;

      return v20;
    }

    if (v14)
    {
      sub_1D98E8260(v9, v23);
      v15 = v24;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27 = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D98B9D78(0, *(v15 + 16) + 1, 1);
        v15 = v27;
      }

      v18 = *(v15 + 16);
      v17 = *(v15 + 24);
      v19 = v18 + 1;
      if (v18 >= v17 >> 1)
      {
        v24 = v18 + 1;
        v22 = v18;
        sub_1D98B9D78(v17 > 1, v18 + 1, 1);
        v19 = v24;
        v18 = v22;
        v15 = v27;
      }

      ++v10;
      *(v15 + 16) = v19;
      v24 = v15;
      result = sub_1D98E8260(v23, v15 + v12 + v18 * v13);
    }

    else
    {
      result = sub_1D98BA96C(v9);
      ++v10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D98E4C38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48EA0, &qword_1D9934BD0);
  MEMORY[0x1EEE9AC00](((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = &v17 - v5;
  result = sub_1D986C878(a1);
  if (v9)
  {
    goto LABEL_9;
  }

  if (*(a1 + 36) != v8)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  if (result == 1 << *(a1 + 32))
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
  }

  else
  {
    v10 = sub_1D98E806C(v6, result, v8, 0, a1);
    v12 = v11;
    v14 = v13;
    v15 = sub_1D992B1E4();
    (*(*(v15 - 8) + 32))(a2, v6, v15);
    v16 = a2 + *(v4 + 48);
    *v16 = v10;
    *(v16 + 8) = v12;
    *(v16 + 16) = v14 & 1;
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
  }
}

void sub_1D98E4DC0(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49160, &qword_1D9934540);
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a1;
  v9 = qword_1ECB47B38;
  v10 = a3;
  v11 = a1;
  if (v9 != -1)
  {
    swift_once();
  }

  v12 = byte_1ECB49690;

  *a4 = v8;
  *(a4 + 8) = a2;
  *(a4 + 16) = v12;
  v13 = MEMORY[0x1E69E7CC8];
  *(a4 + 24) = MEMORY[0x1E69E7CC8];
  *(a4 + 32) = v13;
}

uint64_t sub_1D98E4E88(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1D98E4EA0()
{
  OUTLINED_FUNCTION_18();
  v1 = sub_1D992AE84();
  v0[10] = v1;
  v0[11] = *(v1 - 8);
  v2 = swift_task_alloc();
  v0[12] = v2;
  sub_1D992B134();
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_1D98E4F9C;

  return sub_1D98E5D94(v2);
}

uint64_t sub_1D98E4F9C()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_16();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 112) = v3;

  v4 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1D98E508C()
{
  v1 = *(v0 + 112);
  if (v1)
  {
    v2 = *(v0 + 72);
    v3 = *(v2 + 32);
    v4 = sub_1D98B3970();
    if (v4)
    {
      v5 = v4;
      if (*(v1 + 16))
      {
        v6 = *(v0 + 64);
        v7 = *(v0 + 72);
        v8 = *(v0 + 56);
        v9 = *(v7 + 8);
        v10 = *(v7 + 16);
        v11 = *(v7 + 24);
        *(v0 + 24) = v9;
        *(v0 + 32) = v10;
        *(v0 + 40) = v11;
        *(v0 + 48) = v3;
        v24 = sub_1D98E7494(v1, v8, v6);
        v26 = v25;
        v28 = v27;

        v30 = sub_1D98E5CA0(v24, v29, v28);
        if (v30)
        {
          v31 = [v5 hasRedactedEvents];
          v33 = *(v0 + 88);
          v32 = *(v0 + 96);
          v34 = *(v0 + 80);
          if ((v31 & 1) == 0)
          {
            [v5 setHasRedactedEvents_];
            swift_isUniquelyReferenced_nonNull_native();
            v35 = *(v2 + 32);
            sub_1D989E078(v5, v32);
            *(v2 + 32) = v35;
            (*(v33 + 8))(v32, v34);
            goto LABEL_9;
          }

          (*(v33 + 8))(*(v0 + 96), *(v0 + 80));
        }

        else
        {
          (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));
        }

LABEL_9:

        v16 = *(v0 + 8);

        return v16(v24, v26, v28);
      }

      v19 = *(v0 + 64);

      v20 = [v19 unwrap];
      v22 = *(v0 + 88);
      v21 = *(v0 + 96);
      v23 = *(v0 + 80);
      if (v20)
      {
        v24 = v20;
        (*(v22 + 8))(*(v0 + 96), *(v0 + 80));

        goto LABEL_8;
      }

      sub_1D98E8150();
      OUTLINED_FUNCTION_12_12();
      swift_allocError();
      swift_willThrow();

      (*(v22 + 8))(v21, v23);
      goto LABEL_13;
    }
  }

  v12 = [*(v0 + 64) unwrap];
  v14 = *(v0 + 88);
  v13 = *(v0 + 96);
  v15 = *(v0 + 80);
  if (v12)
  {
    v24 = v12;
    (*(v14 + 8))(*(v0 + 96), *(v0 + 80));
LABEL_8:
    v26 = 0;
    v28 = 0;
    goto LABEL_9;
  }

  sub_1D98E8150();
  OUTLINED_FUNCTION_12_12();
  swift_allocError();
  swift_willThrow();
  (*(v14 + 8))(v13, v15);
LABEL_13:

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1D98E53EC(uint64_t a1, uint64_t a2, char a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48EA0, &qword_1D9934BD0);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - v7;
  if ((a3 & 0x80) == 0)
  {
    return a3 & 1;
  }

  OUTLINED_FUNCTION_1_5();
  v11 = v10 & v9;
  v13 = (v12 + 63) >> 6;

  v15 = 0;
  while (v11)
  {
    v16 = v15;
LABEL_9:
    v17 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v18 = v17 | (v16 << 6);
    v19 = *(a1 + 48);
    sub_1D992B1E4();
    OUTLINED_FUNCTION_5();
    (*(v20 + 16))(v8, v19 + *(v20 + 72) * v18);
    v21 = *(a1 + 56) + 24 * v18;
    v23 = *v21;
    v22 = *(v21 + 8);
    LOBYTE(v18) = *(v21 + 16);
    v24 = &v8[*(v5 + 48)];
    *v24 = v23;
    *(v24 + 1) = v22;
    v24[16] = v18;

    v25 = v23;
    result = sub_1D986B804(v8, &qword_1ECB48EA0, &qword_1D9934BD0);
    if ((v18 & 1) == 0)
    {

      a3 = 0;
      return a3 & 1;
    }
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v13)
    {

      a3 = 1;
      return a3 & 1;
    }

    v11 = *(a1 + 64 + 8 * v16);
    ++v15;
    if (v11)
    {
      v15 = v16;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D98E5594(void *a1, uint64_t a2, char a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48EA8, &qword_1D9934BD8);
  OUTLINED_FUNCTION_9(v5);
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  if ((a3 & 0x80) == 0)
  {
    v9 = [a1 qualifiedMessageName];
LABEL_6:
    v11 = sub_1D992B624();

    return v11;
  }

  sub_1D98E4C38(a1, &v15 - v7);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48EA0, &qword_1D9934BD0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v10) != 1)
  {
    v12 = *&v8[*(v10 + 48)];

    v9 = [v12 qualifiedMessageName];

    sub_1D992B1E4();
    OUTLINED_FUNCTION_5();
    (*(v13 + 8))(v8);
    goto LABEL_6;
  }

  sub_1D986B804(v8, &qword_1ECB48EA8, &qword_1D9934BD8);
  return 0;
}

void sub_1D98E5708(uint64_t a1, uint64_t a2, char a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48EA0, &qword_1D9934BD0);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_20_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v45 - v7;
  if (a3 < 0)
  {
    OUTLINED_FUNCTION_1_5();
    v11 = v10 & v9;
    v13 = (v12 + 63) >> 6;

    v14 = 0;
    v15 = MEMORY[0x1E69E7CC0];
    while (v11)
    {
LABEL_9:
      v17 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v18 = v17 | (v14 << 6);
      v19 = *(a1 + 48);
      sub_1D992B1E4();
      OUTLINED_FUNCTION_5();
      (*(v20 + 16))(v8, v19 + *(v20 + 72) * v18);
      v21 = *(a1 + 56) + 24 * v18;
      v22 = *v21;
      v23 = *(v21 + 8);
      LOBYTE(v21) = *(v21 + 16);
      v24 = &v8[*(v5 + 48)];
      *v24 = v22;
      *(v24 + 1) = v23;
      v24[16] = v21;
      swift_bridgeObjectRetain_n();
      v25 = v22;
      sub_1D986B804(v8, &qword_1ECB48EA0, &qword_1D9934BD0);
      if (v23)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = OUTLINED_FUNCTION_1();
          sub_1D98BDDD4(v29, v30, v31, v15);
          v15 = v32;
        }

        v27 = v15[2];
        v26 = v15[3];
        v28 = v27 + 1;
        if (v27 >= v26 >> 1)
        {
          v46 = v27 + 1;
          sub_1D98BDDD4(v26 > 1, v27 + 1, 1, v15);
          v28 = v46;
          v15 = v33;
        }

        v15[2] = v28;
        v15[v27 + 4] = v23;
      }
    }

    while (1)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v16 >= v13)
      {

        v34 = 0;
        v35 = v15[2];
        v36 = MEMORY[0x1E69E7CC0];
        while (v35 != v34)
        {
          if (v34 >= v15[2])
          {
            goto LABEL_31;
          }

          v37 = v15[v34 + 4];
          v38 = *(v37 + 16);
          v39 = *(v36 + 16);
          if (__OFADD__(v39, v38))
          {
            goto LABEL_32;
          }

          if (!swift_isUniquelyReferenced_nonNull_native() || v39 + v38 > *(v36 + 24) >> 1)
          {
            sub_1D98BDC04();
            v36 = v40;
          }

          if (*(v37 + 16))
          {
            v41 = *(v36 + 16);
            if ((*(v36 + 24) >> 1) - v41 < v38)
            {
              goto LABEL_34;
            }

            memcpy((v36 + 4 * v41 + 32), (v37 + 32), 4 * v38);

            if (v38)
            {
              v42 = *(v36 + 16);
              v43 = __OFADD__(v42, v38);
              v44 = v42 + v38;
              if (v43)
              {
                goto LABEL_35;
              }

              *(v36 + 16) = v44;
            }
          }

          else
          {

            if (v38)
            {
              goto LABEL_33;
            }
          }

          ++v34;
        }

        return;
      }

      v11 = *(a1 + 64 + 8 * v16);
      ++v14;
      if (v11)
      {
        v14 = v16;
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }

  else
  {
  }
}

void *sub_1D98E5A14(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v4 = a2;
  if (a4 < 0)
  {
    if (!a2[2])
    {
      return 0;
    }

    v6 = sub_1D98898F4();
    if ((v7 & 1) == 0)
    {
      return 0;
    }

    v4 = *(v4[7] + 24 * v6);
  }

  v5 = v4;
  return v4;
}

id sub_1D98E5A98()
{
  result = swift_dynamicCastObjCProtocolConditional();
  if (result)
  {
    return [result innerEvent];
  }

  return result;
}

uint64_t sub_1D98E5AE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = a1 + 32;
  v3 = MEMORY[0x1E69E7CC0];
  do
  {
    sub_1D98BA058(v2, v9);
    v4 = v9[0];
    sub_1D98BA0B4(v9);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1D98BDC04();
      v3 = v6;
    }

    v5 = *(v3 + 16);
    if (v5 >= *(v3 + 24) >> 1)
    {
      sub_1D98BDC04();
      v3 = v7;
    }

    *(v3 + 16) = v5 + 1;
    *(v3 + 4 * v5 + 32) = v4;
    v2 += 48;
    --v1;
  }

  while (v1);
  return v3;
}

uint64_t sub_1D98E5BCC(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v9 = a1[4];
  v10 = a1[5];
  __swift_project_boxed_opaque_existential_1(a1 + 1, v9);
  return (*(v10 + 8))(a2, a3 & 1, a4, a5, v9, v10) & 1;
}

uint64_t sub_1D98E5C60(uint64_t a1)
{
  sub_1D992C074();
  MEMORY[0x1DA73A5D0](0);
  return sub_1D992C0C4();
}

uint64_t sub_1D98E5CA0(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_1D992B1E4();
  OUTLINED_FUNCTION_6();
  v7 = v6;
  MEMORY[0x1EEE9AC00](*(v8 + 64));
  OUTLINED_FUNCTION_13();
  v11 = v10 - v9;
  if (a3 < 0)
  {
    sub_1D992B1D4();
    v12 = sub_1D98B0FB4(v11, a1);
    a3 = v13;
    (*(v7 + 8))(v11, v5);
    if (v12)
    {
    }

    else
    {
      a3 = 0;
    }
  }

  return a3 & 1;
}

uint64_t sub_1D98E5D94(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_1D98E5DA8()
{
  v1 = v0[6];
  v2 = *(v1 + 24);
  if (*(v2 + 16))
  {
    v3 = sub_1D9889568();
    if (v4)
    {
      v5 = *(*(v2 + 56) + 8 * v3);
      if (v5)
      {
      }

      v6 = v0[1];

      return v6(v5);
    }

    v1 = v0[6];
  }

  v8 = sub_1D992AE84();
  v0[7] = v8;
  v0[8] = *(v8 - 8);
  v0[9] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  OUTLINED_FUNCTION_9(v9);
  v0[10] = swift_task_alloc();
  v0[11] = *(v1 + 8);
  v10 = swift_task_alloc();
  v0[12] = v10;
  *v10 = v0;
  v10[1] = sub_1D98E5F48;

  return sub_1D98E3384();
}

uint64_t sub_1D98E5F48()
{
  OUTLINED_FUNCTION_18();
  v1 = *v0;
  OUTLINED_FUNCTION_16();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D98E6034()
{
  v1 = v0[10];
  v2 = v0[7];
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v2);
  v4 = v0[9];
  if (EnumTagSinglePayload == 1)
  {
    sub_1D986B804(v1, &qword_1ECB481D0, &qword_1D992F9F0);

    v5 = v0[1];

    return v5(0);
  }

  else
  {
    v7 = v0[8];
    (*(v7 + 32))(v0[9], v1, v2);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB48AC0, &qword_1D9932730);
    v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_1D992FCB0;
    (*(v7 + 16))(v9 + v8, v4, v2);
    sub_1D98B399C();
    v11 = v10;
    v0[13] = v10;
    v12 = swift_task_alloc();
    v0[14] = v12;
    *v12 = v0;
    v12[1] = sub_1D98E61F8;

    return sub_1D98E0810(v11);
  }
}

uint64_t sub_1D98E61F8()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_16();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_16();
  *v4 = v3;
  *(v6 + 120) = v5;

  v7 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1D98E6304()
{
  OUTLINED_FUNCTION_18();
  *(v0 + 128) = **(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB49160, &qword_1D9934540);
  sub_1D98AB1B0();
  v2 = sub_1D992B814();
  *(v0 + 136) = v2;
  *(v0 + 144) = v1;

  return MEMORY[0x1EEE6DFA0](sub_1D98E639C, v2, v1);
}

uint64_t sub_1D98E639C()
{
  v1 = v0[15];
  v2 = *(v0[16] + 24);
  v3 = MEMORY[0x1E69E7CC8];
  v0[2] = v2;
  v0[3] = v1;
  v0[4] = v3;
  v5 = v0[17];
  v4 = v0[18];
  v6 = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D98E6430, v5, v4);
}

uint64_t sub_1D98E6430()
{
  v6 = v0;
  sub_1D98E69AC((*(v0 + 128) + 24), *(v0 + 40), *(v0 + 72), v0 + 16, *(v0 + 48), &v5);
  *(v0 + 152) = v5;
  v1 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

id sub_1D98E64AC()
{
  result = [objc_allocWithZone(MEMORY[0x1E69CED48]) init];
  if (result)
  {
    v2 = result;
    v3 = *(v0 + 152);

    [v2 setHasRedactedEvents_];
    if (v3)
    {
      v4 = *(v0 + 152);

      sub_1D98E7320(v2, v4);
    }

    v6 = *(v0 + 40);
    v5 = *(v0 + 48);
    v7 = v2;
    swift_isUniquelyReferenced_nonNull_native();
    v50 = v7;
    v51 = *(v5 + 32);
    sub_1D989E078(v7, v6);
    *(v5 + 32) = v51;
    if (v3)
    {
      v47 = *(v0 + 152);
      v8 = *(v0 + 160);
      if (qword_1ED8BD6E0 != -1)
      {
        OUTLINED_FUNCTION_0_43();
        swift_once();
        v8 = *(v0 + 160);
      }

      v9 = *(v0 + 64);
      v42 = v8;
      v43 = *(v0 + 72);
      v11 = *(v0 + 48);
      v10 = *(v0 + 56);
      v12 = *(v0 + 40);
      v40 = qword_1ECB49640;
      OUTLINED_FUNCTION_9_13();
      sub_1D992BD64();
      OUTLINED_FUNCTION_15_5();

      v14 = sub_1D98E5AE8(v13);

      type metadata accessor for SISchemaDeviceSensitivityState(0);
      v16 = MEMORY[0x1DA739D10](v14, v15);
      v18 = v17;

      MEMORY[0x1DA739C30](v16, v18);

      OUTLINED_FUNCTION_15_5();
      sub_1D9882D14(&qword_1ED8BD8D0, MEMORY[0x1EEE78948]);
      v19 = sub_1D992BF34();
      MEMORY[0x1DA739C30](v19);

      sub_1D986A454(v51, v54, 0xD000000000000072, 0x80000001D993BCD0, 0xD000000000000019, 0x80000001D993BDD0);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v52 = *(v11 + 24);
      sub_1D989E050(v42, v12, isUniquelyReferenced_nonNull_native, v21, v22, v23, v24, v25, v40, v42, v43, v47);

      *(v11 + 24) = v52;

      (*(v9 + 8))(v44, v10);

      v26 = *(v0 + 160);
    }

    else
    {
      if (qword_1ED8BD6E0 != -1)
      {
        OUTLINED_FUNCTION_0_43();
        swift_once();
      }

      v45 = *(v0 + 64);
      v48 = *(v0 + 72);
      v27 = *(v0 + 48);
      v28 = *(v0 + 56);
      v29 = *(v0 + 40);
      OUTLINED_FUNCTION_9_13();
      sub_1D992BD64();
      OUTLINED_FUNCTION_15_5();
      sub_1D9882D14(&qword_1ED8BD8D0, MEMORY[0x1EEE78948]);
      v30 = sub_1D992BF34();
      MEMORY[0x1DA739C30](v30);

      sub_1D986A454(v51, v54, 0xD000000000000072, 0x80000001D993BCD0, 0xD000000000000019, 0x80000001D993BDD0);

      v31 = swift_isUniquelyReferenced_nonNull_native();
      v53 = *(v27 + 24);
      sub_1D989E050(0, v29, v31, v32, v33, v34, v35, v36, v39, v41, v45, v48);
      *(v27 + 24) = v53;
      OUTLINED_FUNCTION_9_13();
      sub_1D992BD64();
      OUTLINED_FUNCTION_15_5();
      v37 = sub_1D992BF34();
      MEMORY[0x1DA739C30](v37);

      sub_1D986A454(v53, v54, 0xD000000000000072, 0x80000001D993BCD0, 0xD000000000000019, 0x80000001D993BDD0);

      (*(v46 + 8))(v49, v28);

      v26 = 0;
    }

    v38 = *(v0 + 8);

    return v38(v26);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D98E69AC(void **a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v79 = a5;
  v80 = a6;
  v81 = a4;
  v8 = *a1;
  if (qword_1ED8BD6E0 != -1)
  {
LABEL_69:
    swift_once();
  }

  v90 = 0;
  v91 = 0xE000000000000000;
  sub_1D992BD64();
  MEMORY[0x1DA739C30](0xD000000000000037, 0x80000001D993BE70);
  v9 = sub_1D992AE84();
  sub_1D9882D14(&qword_1ED8BD8D0, MEMORY[0x1EEE78948]);
  v10 = sub_1D992BF34();
  MEMORY[0x1DA739C30](v10);

  MEMORY[0x1DA739C30](0x6320746F6F72202CLL, 0xEE00203A6B636F6CLL);
  v11 = sub_1D992BF34();
  MEMORY[0x1DA739C30](v11);

  sub_1D986A454(v90, v91, 0xD000000000000072, 0x80000001D993BCD0, 0xD000000000000019, 0x80000001D993BDD0);

  LOBYTE(v90) = 0;
  sub_1D98FE2D0();
  v83 = a2;
  v89 = v9;
  if (v12)
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
    MEMORY[0x1EEE9AC00](((*(*(v13 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
    v15 = v76 - v14;
    (*(*(v9 - 8) + 16))(v76 - v14, a3, v9);
    __swift_storeEnumTagSinglePayload(v15, 0, 1, v9);
    sub_1D98B6044();
    v17 = sub_1D98C3E0C(v16, a2, v15);

    v18 = v17;
    sub_1D986B804(v15, &qword_1ECB481D0, &qword_1D992F9F0);
    if (v17)
    {
      sub_1D98B6044();
      v82 = v19;
    }

    else
    {

      v82 = 0;
    }

    a2 = v89;
  }

  else
  {
    v18 = 0;
    v82 = 0;
    a2 = v9;
  }

  v20 = v83;
  Metastore.representativeIds(for:)();
  if (v21)
  {
    v22 = v21;
    v77 = v18;
    v78 = a3;
    v87 = v8;
    v88 = sub_1D98682F0();
    v23 = 0;
    v76[1] = 0;
    v85 = v22 & 0xFFFFFFFFFFFFFF8;
    v86 = v22 & 0xC000000000000001;
    v84 = a2 - 1;
    v24 = MEMORY[0x1E69E7CC0];
    while (v88 != v23)
    {
      if (v86)
      {
        v25 = MEMORY[0x1DA73A2C0](v23, v22);
      }

      else
      {
        if (v23 >= *(v85 + 16))
        {
          goto LABEL_63;
        }

        v25 = *(v22 + 8 * v23 + 32);
      }

      v8 = v25;
      v26 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
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
        goto LABEL_69;
      }

      a2 = v76;
      a3 = v24;
      v27 = v22;
      v28 = v89;
      v29 = *(v89 - 1);
      MEMORY[0x1EEE9AC00](((*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
      v31 = v76 - v30;
      sub_1D992B194();
      LOBYTE(v90) = 2;
      sub_1D98FEBCC();
      v33 = v32;

      v34 = v28;
      v22 = v27;
      v24 = a3;
      (*(v29 + 8))(v31, v34);
      ++v23;
      if (v33)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1D98BE588(0, a3[2] + 1, 1, a3);
          v24 = v37;
        }

        v36 = v24[2];
        v35 = v24[3];
        if (v36 >= v35 >> 1)
        {
          sub_1D98BE588(v35 > 1, v36 + 1, 1, v24);
          v24 = v38;
        }

        v24[2] = v36 + 1;
        v24[v36 + 4] = v33;
        v23 = v26;
      }
    }

    v39 = 0;
    v40 = v24[2];
    v41 = MEMORY[0x1E69E7CC0];
    v42 = MEMORY[0x1E69E7CC0];
    v8 = v87;
    while (v40 != v39)
    {
      if (v39 >= v24[2])
      {
        goto LABEL_64;
      }

      v43 = v24[v39 + 4];
      v44 = *(v43 + 16);
      a2 = *(v42 + 16);
      a3 = (v44 + a2);
      if (__OFADD__(a2, v44))
      {
        goto LABEL_65;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || a3 > *(v42 + 24) >> 1)
      {
        if (a2 <= a3)
        {
          v46 = v44 + a2;
        }

        else
        {
          v46 = a2;
        }

        sub_1D98BE124(isUniquelyReferenced_nonNull_native, v46, 1, v42);
        v42 = v47;
      }

      if (*(v43 + 16))
      {
        a2 = *(v42 + 16);
        a3 = ((*(v42 + 24) >> 1) - a2);
        type metadata accessor for IdentifiableTag(0);
        if (a3 < v44)
        {
          goto LABEL_67;
        }

        swift_arrayInitWithCopy();

        if (v44)
        {
          v48 = *(v42 + 16);
          v49 = __OFADD__(v48, v44);
          v50 = v44 + v48;
          if (v49)
          {
            goto LABEL_68;
          }

          *(v42 + 16) = v50;
        }
      }

      else
      {

        if (v44)
        {
          goto LABEL_66;
        }
      }

      ++v39;
    }

    MEMORY[0x1EEE9AC00](v51);
    v52 = v83;
    v75[2] = v83;
    sub_1D98E4A08(sub_1D98E8240, v75, v42);
    if (v82)
    {
      v53 = v82;
    }

    else
    {
      v53 = v41;
    }

    sub_1D98B6044();
    v90 = v53;
    sub_1D98EBFD0(v54);
    v82 = v90;
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
    MEMORY[0x1EEE9AC00](((*(*(v55 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
    v57 = v76 - v56;
    __swift_storeEnumTagSinglePayload(v76 - v56, 1, 1, v89);
    sub_1D98B6044();
    v59 = v58;

    v60 = sub_1D98C3E0C(v59, v52, v57);

    sub_1D986B804(v57, &qword_1ECB481D0, &qword_1D992F9F0);
    if (v60)
    {
      v61 = v77;
      if (!v77)
      {
        v61 = v41;
      }

      v90 = v61;
      sub_1D98EC074(v60);
      v18 = v90;
      v20 = v83;
      a3 = v78;
    }

    else
    {
      v20 = v83;
      v18 = v77;
      a3 = v78;
    }

    a2 = v89;
  }

  v62 = sub_1D9907EE8();
  if (v62)
  {
    v63 = sub_1D98DFBD0(v62, *(v79 + 16));

    if (v63)
    {
      v64 = v18;
      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
      MEMORY[0x1EEE9AC00](((*(*(v65 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
      v67 = v76 - v66;
      (*(*(a2 - 1) + 16))(v76 - v66, a3, a2);
      __swift_storeEnumTagSinglePayload(v67, 0, 1, a2);
      v68 = sub_1D98C3E0C(v63, v20, v67);
      sub_1D986B804(v67, &qword_1ECB481D0, &qword_1D992F9F0);
      if (v68)
      {
        v69 = MEMORY[0x1E69E7CC0];
        v70 = v82;
        if (!v82)
        {
          v70 = MEMORY[0x1E69E7CC0];
        }

        v90 = v70;
        sub_1D98EBFD0(v63);
        v71 = v90;
        if (v64)
        {
          v72 = v64;
        }

        else
        {
          v72 = v69;
        }

        v90 = v72;
        sub_1D98EC074(v68);
        v18 = v90;
        goto LABEL_60;
      }
    }
  }

  v71 = v82;
  if (v82 && v18)
  {
LABEL_60:
    v73 = v80;
    *v80 = v71;
    v73[1] = v18;
    return;
  }

  v74 = v80;
  *v80 = 0;
  v74[1] = 0;
}