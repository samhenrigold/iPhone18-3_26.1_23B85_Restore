uint64_t sub_223A071E8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_223A07274(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_223A07288(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B70, &qword_223A23720);
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

uint64_t sub_223A0738C(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 40);
    do
    {
      v7 = *v6;
      v10[0] = *(v6 - 1);
      v10[1] = v7;

      v8 = (a1)(v10);

      if (v3)
      {
        break;
      }

      if (v8)
      {
        break;
      }

      v6 += 2;
      --v4;
    }

    while (v4);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

void *sub_223A0742C(void *result, char *__dst, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!__dst)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_25:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = __dst;
    result = 0;
    v12 = 0;
    v31 = -1 << *(a4 + 32);
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (*(a4 + 48) + 216 * (v17 | (v12 << 6)));
      v19 = v18[1];
      v33[0] = *v18;
      v33[1] = v19;
      v20 = v18[5];
      v22 = v18[2];
      v21 = v18[3];
      v33[4] = v18[4];
      v33[5] = v20;
      v33[2] = v22;
      v33[3] = v21;
      v23 = v18[9];
      v25 = v18[6];
      v24 = v18[7];
      v33[8] = v18[8];
      v33[9] = v23;
      v33[6] = v25;
      v33[7] = v24;
      v27 = v18[11];
      v26 = v18[12];
      v28 = v18[10];
      v34 = *(v18 + 26);
      v33[11] = v27;
      v33[12] = v26;
      v33[10] = v28;
      memmove(v11, v18, 0xD8uLL);
      if (v14 == v10)
      {
        sub_2239EF1D4(v33, v32);
        goto LABEL_23;
      }

      v11 += 216;
      sub_2239EF1D4(v33, v32);
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= v12 + 1)
    {
      v30 = v12 + 1;
    }

    else
    {
      v30 = v13;
    }

    v12 = v30 - 1;
    v10 = result;
LABEL_23:
    v7 = v31;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void sub_223A07600(uint64_t a1, uint64_t a2)
{
  v45 = a1;
  v49 = sub_223A20680();
  v3 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v48 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4BC0, &unk_223A23780);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v46 = (v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v9 = v40 - v8;
  v10 = a2 + 64;
  v11 = 1 << *(a2 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a2 + 64);
  v14 = (v11 + 63) >> 6;
  v40[1] = v3 + 16;
  v15 = (v3 + 32);
  v42 = v3;
  v43 = a2;
  v44 = (v3 + 8);

  v16 = 0;
  v17 = 0;
  v41 = v9;
  v40[0] = v3 + 32;
  if (v13)
  {
    while (1)
    {
      v47 = v16;
      v18 = v17;
LABEL_13:
      v22 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v23 = v22 | (v18 << 6);
      v24 = v42;
      v25 = (*(v43 + 48) + 16 * v23);
      v26 = *v25;
      v27 = v25[1];
      v29 = v48;
      v28 = v49;
      (*(v42 + 16))(v48, *(v43 + 56) + *(v42 + 72) * v23, v49);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B60, &qword_223A23760);
      v31 = *(v30 + 48);
      v32 = v46;
      *v46 = v26;
      v32[1] = v27;
      v21 = v32;
      v33 = *(v24 + 32);
      v15 = v40[0];
      v33(v21 + v31, v29, v28);
      (*(*(v30 - 8) + 56))(v21, 0, 1, v30);

      v50 = v18;
      v9 = v41;
      v16 = v47;
LABEL_14:
      sub_2239D0F08(v21, v9);
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B60, &qword_223A23760);
      if ((*(*(v34 - 8) + 48))(v9, 1, v34) == 1)
      {
        break;
      }

      v36 = v48;
      v35 = v49;
      (*v15)(v48, &v9[*(v34 + 48)], v49);
      v37 = *(v45 + 48);
      v53 = *(v45 + 32);
      v54 = v37;
      v55 = *(v45 + 64);
      v38 = *(v45 + 16);
      v51 = *v45;
      v52 = v38;
      sub_223A21290();

      sub_2239DD36C(&qword_27D0A4BD0, MEMORY[0x277CEF870]);
      sub_223A211A0();
      (*v44)(v36, v35);
      v16 ^= sub_223A21970();
      v17 = v50;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    MEMORY[0x223DF0A30](v16);
  }

  else
  {
LABEL_5:
    if (v14 <= v17 + 1)
    {
      v19 = v17 + 1;
    }

    else
    {
      v19 = v14;
    }

    v20 = v19 - 1;
    v21 = v46;
    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= v14)
      {
        v50 = v20;
        v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B60, &qword_223A23760);
        (*(*(v39 - 8) + 56))(v21, 1, 1, v39);
        v13 = 0;
        goto LABEL_14;
      }

      v13 = *(v10 + 8 * v18);
      ++v17;
      if (v13)
      {
        v47 = v16;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

uint64_t sub_223A07A68(uint64_t a1, uint64_t a2)
{
  v4 = sub_223A20680();
  v61 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v60 = &v50 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4BC0, &unk_223A23780);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  result = MEMORY[0x28223BE20](v10);
  v56 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v56 + 16))
  {
    return 0;
  }

  v54 = (&v50 - v12);
  v55 = v13;
  v53 = v7;
  v14 = 0;
  v51 = a1;
  v15 = *(a1 + 64);
  v50 = a1 + 64;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v57 = v61 + 16;
  v58 = (v61 + 32);
  v52 = (v61 + 8);
  while (1)
  {
    v20 = v55;
    if (!v18)
    {
      break;
    }

    v59 = (v18 - 1) & v18;
    v21 = __clz(__rbit64(v18)) | (v14 << 6);
LABEL_16:
    v26 = (*(v51 + 48) + 16 * v21);
    v27 = *v26;
    v28 = v26[1];
    v30 = v60;
    v29 = v61;
    (*(v61 + 16))(v60, *(v51 + 56) + *(v61 + 72) * v21, v4);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B60, &qword_223A23760);
    v32 = *(v31 + 48);
    *v20 = v27;
    *(v20 + 1) = v28;
    (*(v29 + 32))(&v20[v32], v30, v4);
    (*(*(v31 - 8) + 56))(v20, 0, 1, v31);

LABEL_17:
    v33 = v54;
    sub_2239D0F08(v20, v54);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B60, &qword_223A23760);
    v35 = (*(*(v34 - 8) + 48))(v33, 1, v34);
    v36 = v35 == 1;
    if (v35 == 1)
    {
      return v36;
    }

    v37 = *(v34 + 48);
    v39 = *v33;
    v38 = v33[1];
    v40 = v56;
    v41 = v53;
    (*v58)(v53, v33 + v37, v4);
    v42 = sub_2239CDC74(v39, v38);
    v44 = v43;

    if ((v44 & 1) == 0)
    {
      (*v52)(v41, v4);
      return 0;
    }

    v46 = v60;
    v45 = v61;
    (*(v61 + 16))(v60, *(v40 + 56) + *(v61 + 72) * v42, v4);
    sub_2239DD36C(&qword_2813336F8, MEMORY[0x277CEF878]);
    v47 = sub_223A211E0();
    v48 = *(v45 + 8);
    v48(v46, v4);
    result = (v48)(v41, v4);
    v18 = v59;
    if ((v47 & 1) == 0)
    {
      return v36;
    }
  }

  if (v19 <= v14 + 1)
  {
    v22 = v14 + 1;
  }

  else
  {
    v22 = v19;
  }

  v23 = v22 - 1;
  while (1)
  {
    v24 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v24 >= v19)
    {
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B60, &qword_223A23760);
      (*(*(v49 - 8) + 56))(v20, 1, 1, v49);
      v59 = 0;
      v14 = v23;
      goto LABEL_17;
    }

    v25 = *(v50 + 8 * v24);
    ++v14;
    if (v25)
    {
      v59 = (v25 - 1) & v25;
      v21 = __clz(__rbit64(v25)) | (v24 << 6);
      v14 = v24;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

Swift::Bool __swiftcall DurationSummaryWorker.start()()
{
  swift_beginAccess();
  *(v0 + 16) = 1;
  return 1;
}

double DurationSummaryWorker.summaryEvent.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t DurationSummaryWorker.workerConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal21DurationSummaryWorker_workerConfig;
  swift_beginAccess();
  v4 = sub_223A20BC0();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t DurationSummaryWorker.workerConfig.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal21DurationSummaryWorker_workerConfig;
  swift_beginAccess();
  v4 = sub_223A20BC0();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

void sub_223A081B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_223A207D0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_223A20680();
  v91 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v10 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C48, &unk_223A23950);
  MEMORY[0x28223BE20](v88);
  v89 = &v67 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4928, &qword_223A22B40);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v85 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v87 = &v67 - v16;
  MEMORY[0x28223BE20](v15);
  v93 = &v67 - v17;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B60, &qword_223A23760);
  v18 = MEMORY[0x28223BE20](v96);
  v86 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v94 = &v67 - v21;
  MEMORY[0x28223BE20](v20);
  v95 = &v67 - v22;
  v23 = sub_223A20C40();

  v24 = sub_223A0A78C(v23, v3);

  if (v24[2] == *(*(v3 + OBJC_IVAR____TtCC22AudioAnalyticsExternal21DurationSummaryWorker20DynamicSummaryConfig_dynamicCreationKeys) + 16))
  {
    v90 = v23;
    v25 = OBJC_IVAR____TtCC22AudioAnalyticsExternal21DurationSummaryWorker20DynamicSummaryConfig_seenKeyValueCombinations;
    swift_beginAccess();
    v77 = v25;
    v26 = *(v3 + v25);

    v27 = sub_223A04538(v24, v26);

    if ((v27 & 1) == 0)
    {
      v76 = v10;
      v73 = v24;
      v68 = v6;
      v69 = v5;
      v71 = v8;
      v72 = a2;
      v70 = v3;
      v28 = *(v3 + OBJC_IVAR____TtCC22AudioAnalyticsExternal21DurationSummaryWorker20DynamicSummaryConfig_requiredDynamicCreationKeyValues);
      v29 = *(v28 + 64);
      v74 = v28 + 64;
      v30 = 1 << *(v28 + 32);
      v31 = -1;
      if (v30 < 64)
      {
        v31 = ~(-1 << v30);
      }

      v32 = v31 & v29;
      v75 = (v30 + 63) >> 6;
      v83 = v91 + 16;
      v79 = (v91 + 56);
      v84 = (v91 + 32);
      v78 = (v91 + 48);
      v80 = (v91 + 8);
      v82 = v28;

      v33 = 0;
      v34 = v95;
      while (1)
      {
        if (!v32)
        {
          while (1)
          {
            v35 = v33 + 1;
            if (__OFADD__(v33, 1))
            {
              break;
            }

            if (v35 >= v75)
            {

              v63 = v70;
              swift_beginAccess();
              v64 = v73;

              sub_223A04D2C(&v99, v64);
              swift_endAccess();

              v65 = v63 + OBJC_IVAR____TtCC22AudioAnalyticsExternal21DurationSummaryWorker20DynamicSummaryConfig_summaryConfig;
              v66 = v71;
              (*(v68 + 16))(v71, v65, v69);
              sub_2239C8DE4(v72, v98);
              type metadata accessor for DurationSummaryState(0);
              swift_allocObject();
              sub_2239CC684(v66, v98, v64);
              return;
            }

            v32 = *(v74 + 8 * v35);
            ++v33;
            if (v32)
            {
              v33 = v35;
              v34 = v95;
              goto LABEL_13;
            }
          }

          __break(1u);
          return;
        }

LABEL_13:
        v36 = __clz(__rbit64(v32)) | (v33 << 6);
        v37 = (*(v82 + 48) + 16 * v36);
        v38 = *v37;
        v39 = v37[1];
        v40 = *(v91 + 72);
        v41 = *(v91 + 16);
        v41(&v34[*(v96 + 48)], *(v82 + 56) + v40 * v36, v97);
        *v34 = v38;
        *(v34 + 1) = v39;
        v42 = v94;
        sub_2239D8C48(v34, v94, &qword_27D0A4B60, &qword_223A23760);
        v43 = v42;
        v44 = *(v42 + 8);
        v45 = v90;
        if (!*(v90 + 16))
        {
          break;
        }

        v46 = *v43;

        v47 = sub_2239CDC74(v46, v44);
        LOBYTE(v46) = v48;

        if ((v46 & 1) == 0)
        {
          goto LABEL_17;
        }

        v41(v93, *(v45 + 56) + v47 * v40, v97);
        v49 = 0;
LABEL_18:
        v50 = v89;
        v32 &= v32 - 1;
        v51 = *v79;
        v52 = v93;
        v53 = v97;
        (*v79)(v93, v49, 1, v97);
        v54 = v86;
        sub_2239D8C48(v95, v86, &qword_27D0A4B60, &qword_223A23760);

        v55 = v54 + *(v96 + 48);
        v56 = v87;
        v81 = *v84;
        v81(v87, v55, v53);
        v51(v56, 0, 1, v53);
        v57 = *(v88 + 48);
        sub_2239D8C48(v52, v50, &qword_27D0A4928, &qword_223A22B40);
        v92 = v57;
        sub_2239D8C48(v56, v50 + v57, &qword_27D0A4928, &qword_223A22B40);
        v58 = *v78;
        if ((*v78)(v50, 1, v53) == 1)
        {
          sub_2239CDCEC(v56, &qword_27D0A4928, &qword_223A22B40);
          sub_2239CDCEC(v52, &qword_27D0A4928, &qword_223A22B40);
          v34 = v95;
          sub_2239CDCEC(v95, &qword_27D0A4B60, &qword_223A23760);
          if (v58(v50 + v92, 1, v97) != 1)
          {
            goto LABEL_26;
          }

          sub_2239CDCEC(v50, &qword_27D0A4928, &qword_223A22B40);
          (*v80)(v94 + *(v96 + 48), v97);
        }

        else
        {
          v59 = v97;
          v60 = v85;
          sub_2239D8C48(v50, v85, &qword_27D0A4928, &qword_223A22B40);
          if (v58(v50 + v92, 1, v59) == 1)
          {
            sub_2239CDCEC(v56, &qword_27D0A4928, &qword_223A22B40);
            sub_2239CDCEC(v93, &qword_27D0A4928, &qword_223A22B40);
            sub_2239CDCEC(v95, &qword_27D0A4B60, &qword_223A23760);
            (*v80)(v60, v59);
LABEL_26:
            sub_2239CDCEC(v50, &qword_27D0A4C48, &unk_223A23950);
            (*v80)(v94 + *(v96 + 48), v97);
LABEL_27:

            goto LABEL_4;
          }

          v61 = v76;
          v81(v76, v50 + v92, v59);
          sub_2239DD36C(&qword_2813336F8, MEMORY[0x277CEF878]);
          LODWORD(v92) = sub_223A211E0();
          v62 = *v80;
          (*v80)(v61, v59);
          sub_2239CDCEC(v56, &qword_27D0A4928, &qword_223A22B40);
          sub_2239CDCEC(v93, &qword_27D0A4928, &qword_223A22B40);
          v34 = v95;
          sub_2239CDCEC(v95, &qword_27D0A4B60, &qword_223A23760);
          v62(v85, v59);
          sub_2239CDCEC(v50, &qword_27D0A4928, &qword_223A22B40);
          v62(v94 + *(v96 + 48), v59);
          if ((v92 & 1) == 0)
          {
            goto LABEL_27;
          }
        }
      }

LABEL_17:
      v49 = 1;
      goto LABEL_18;
    }
  }

LABEL_4:
}

uint64_t sub_223A08C38()
{
  v1 = OBJC_IVAR____TtCC22AudioAnalyticsExternal21DurationSummaryWorker20DynamicSummaryConfig_summaryConfig;
  v2 = sub_223A207D0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t DurationSummaryWorker.deinit()
{

  v1 = OBJC_IVAR____TtC22AudioAnalyticsExternal21DurationSummaryWorker_workerConfig;
  v2 = sub_223A20BC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal21DurationSummaryWorker_session));

  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal21DurationSummaryWorker_logger;
  v4 = sub_223A20FC0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_223A08DF4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C18, &qword_223A23910);
  v33 = v4;
  result = sub_223A217B0();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_2239DA0A8(v24, v34);
      }

      else
      {
        sub_2239D17A8(v24, v34);
      }

      sub_223A21940();
      sub_223A21290();
      result = sub_223A21970();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_2239DA0A8(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_223A090AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v41 = sub_223A203C0();
  v5 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v40 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C50, &qword_223A23968);
  v39 = v4;
  result = sub_223A217B0();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
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
    v36 = (v5 + 16);
    v37 = v7;
    v38 = v5;
    v16 = (v5 + 32);
    v17 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = *(*(v7 + 48) + 2 * v22);
      v25 = *(v38 + 72);
      v26 = v23 + v25 * v22;
      if (v39)
      {
        (*v16)(v40, v26, v41);
      }

      else
      {
        (*v36)(v40, v26, v41);
      }

      sub_223A21940();
      sub_223A21960();
      result = sub_223A21970();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v9 + 48) + 2 * v18) = v24;
      result = (*v16)(*(v9 + 56) + v25 * v18, v40, v41);
      ++*(v9 + 16);
      v7 = v37;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v34 = 1 << *(v7 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_223A09410(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C38, &unk_223A23940);
  v33 = v4;
  result = sub_223A217B0();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      sub_223A21940();
      sub_223A21290();
      result = sub_223A21970();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void sub_223A096DC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C18, &qword_223A23910);
  v2 = *v0;
  v3 = sub_223A217A0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_2239D17A8(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_2239DA0A8(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }
}

void *sub_223A09880()
{
  v1 = v0;
  v29 = sub_223A203C0();
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C50, &qword_223A23968);
  v3 = *v0;
  v4 = sub_223A217A0();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v27 = v31 + 16;
    v25 = v3 + 64;
    for (i = v31 + 32; v12; result = (*(v19 + 32))(*(v23 + 56) + v20, v22, v21))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = *(*(v3 + 48) + 2 * v17);
      v19 = v31;
      v20 = *(v31 + 72) * v17;
      v22 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 56) + v20, v29);
      v23 = v30;
      *(*(v30 + 48) + 2 * v17) = v18;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        v5 = v30;
        goto LABEL_18;
      }

      v16 = *(v25 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void sub_223A09AE8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C38, &unk_223A23940);
  v2 = *v0;
  v3 = sub_223A217A0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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
}

id sub_223A09C50()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C20, &qword_223A23918);
  v2 = *v0;
  v3 = sub_223A217A0();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_2239D17A8(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_2239DA0A8(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

void sub_223A09DD0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C30, &qword_223A23928);
  v2 = *v0;
  v3 = sub_223A217A0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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
}

id sub_223A09F54(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_223A217A0();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        result = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

unint64_t *sub_223A0A0B0(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_223A0A438(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

unint64_t sub_223A0A14C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C00, "|=");
    v3 = sub_223A217C0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_2239CDC74(v5, v6);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_223A0A250(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C08, &unk_223A23900);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C10, &unk_223A249B0);
    v7 = sub_223A217C0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_2239D8C48(v9, v5, &qword_27D0A4C08, &unk_223A23900);
      result = sub_2239F6CB8(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_223A20850();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 16 * v13) = *&v5[v8];
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_223A0A438(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v49 = a4;
  v35 = a2;
  v36 = a1;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B60, &qword_223A23760);
  MEMORY[0x28223BE20](v48);
  v47 = (&v34 - v7);
  v46 = sub_223A20680();
  MEMORY[0x28223BE20](v46);
  v44 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v50 = a3;
  v11 = *(a3 + 64);
  v39 = a3 + 64;
  v12 = 1 << *(a3 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v11;
  v37 = 0;
  v38 = (v12 + 63) >> 6;
  v42 = v8 + 16;
  v43 = OBJC_IVAR____TtCC22AudioAnalyticsExternal21DurationSummaryWorker20DynamicSummaryConfig_dynamicCreationKeys;
  v45 = v8;
  v41 = v8 + 8;
  v15 = v8;
  while (v14)
  {
    v53 = v5;
    v16 = __clz(__rbit64(v14));
    v51 = (v14 - 1) & v14;
LABEL_11:
    v19 = v16 | (v10 << 6);
    v20 = v50[7];
    v21 = (v50[6] + 16 * v19);
    v23 = *v21;
    v22 = v21[1];
    v24 = *(v15 + 72);
    v40 = v19;
    v25 = *(v15 + 16);
    v26 = v44;
    v27 = v46;
    v25(v44, v20 + v24 * v19, v46);
    v29 = v47;
    v28 = v48;
    *v47 = v23;
    *(v29 + 8) = v22;
    v30 = (v25)(v29 + *(v28 + 48), v26, v27);
    v31 = *(v49 + v43);
    v52[0] = v23;
    v52[1] = v22;
    MEMORY[0x28223BE20](v30);
    *(&v34 - 2) = v52;
    swift_bridgeObjectRetain_n();
    v32 = v53;
    LOBYTE(v31) = sub_2239CF3F4(sub_2239D9880, (&v34 - 4), v31);
    v5 = v32;
    sub_2239CDCEC(v29, &qword_27D0A4B60, &qword_223A23760);
    (*(v15 + 8))(v26, v27);

    v14 = v51;
    if (v31)
    {
      *(v36 + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v40;
      if (__OFADD__(v37++, 1))
      {
        __break(1u);
LABEL_15:
        sub_2239D98A0(v36, v35, v37, v50);
        return;
      }
    }
  }

  v17 = v10;
  while (1)
  {
    v10 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v10 >= v38)
    {
      goto LABEL_15;
    }

    v18 = *(v39 + 8 * v10);
    ++v17;
    if (v18)
    {
      v53 = v5;
      v16 = __clz(__rbit64(v18));
      v51 = (v18 - 1) & v18;
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t *sub_223A0A78C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v15[1] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;
  v10 = swift_retain_n();
  if (v7 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v14 = swift_slowAlloc();

      v12 = sub_223A0A0B0(v14, v8, a1, a2);
      MEMORY[0x223DF1300](v14, -1, -1);

      return v12;
    }
  }

  MEMORY[0x28223BE20](v10);
  bzero(v15 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0), v9);

  sub_223A0A438((v15 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0)), v8, a1, a2);
  v12 = v11;

  if (v3)
  {
    swift_willThrow();
  }

  return v12;
}

char *_s22AudioAnalyticsExternal21DurationSummaryWorkerC23getNeededPreviousFields6configSaySSG0aB4Base6ConfigC_tFZ_0()
{
  v29 = sub_223A207D0();
  v0 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v2 = v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_223A20BD0();
  v4 = v3[2];
  if (v4)
  {
    v30 = MEMORY[0x277D84F90];
    sub_223A02E64(0, v4, 0);
    v5 = v30;
    v7 = *(v0 + 16);
    v6 = (v0 + 16);
    v8 = *(v6 + 64);
    v26[1] = v3;
    v9 = v3 + ((v8 + 32) & ~v8);
    v27 = v6[7];
    v28 = v7;
    v10 = (v6 - 1);
    do
    {
      v11 = v29;
      v3 = v6;
      v28(v2, v9, v29);
      v12 = sub_223A20750();
      (*v10)(v2, v11);
      v30 = v5;
      v14 = *(v5 + 2);
      v13 = *(v5 + 3);
      if (v14 >= v13 >> 1)
      {
        sub_223A02E64((v13 > 1), v14 + 1, 1);
        v5 = v30;
      }

      *(v5 + 2) = v14 + 1;
      *&v5[8 * v14 + 32] = v12;
      v9 += v27;
      --v4;
      v6 = v3;
    }

    while (v4);
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
  }

  v31 = MEMORY[0x277D84FA0];
  v15 = *(v5 + 2);
  if (!v15)
  {
LABEL_16:

    v21 = v31;
    v22 = *(v31 + 16);
    if (v22)
    {
      v23 = sub_2239D83E0(*(v31 + 16), 0);
      v24 = sub_2239D86F4(&v30, v23 + 4, v22, v21);

      sub_2239CE254();
      if (v24 == v22)
      {
LABEL_20:
        v30 = v23;
        sub_2239D8090(&v30);

        return v30;
      }

      __break(1u);
    }

    v23 = MEMORY[0x277D84F90];
    goto LABEL_20;
  }

  v16 = 0;
  while (v16 < *(v5 + 2))
  {
    v3 = *&v5[8 * v16 + 32];
    v17 = v3[2];

    if (v17)
    {
      v18 = v3 + 5;
      do
      {
        v20 = *(v18 - 1);
        v19 = *v18;

        sub_2239D8100(&v30, v20, v19);

        v18 += 2;
        --v17;
      }

      while (v17);
    }

    ++v16;

    if (v16 == v15)
    {
      goto LABEL_16;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_223A0AC88(uint64_t a1)
{
  result = sub_223A20BC0();
  if (v2 <= 0x3F)
  {
    result = sub_223A20FC0();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_223A0ADB8(uint64_t a1)
{
  result = sub_223A207D0();
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

uint64_t sub_223A0AE58(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA00000000006570;
  v3 = 0x79745F6575737369;
  v4 = a1;
  if (a1 <= 2u)
  {
    v7 = 0xE800000000000000;
    v8 = 0x656C6379635F6F69;
    if (a1 != 1)
    {
      v8 = 0x5F656761705F6F69;
      v7 = 0xEE0073746C756166;
    }

    if (a1)
    {
      v5 = v8;
    }

    else
    {
      v5 = 0x79745F6575737369;
    }

    if (v4)
    {
      v6 = v7;
    }

    else
    {
      v6 = 0xEA00000000006570;
    }
  }

  else if (a1 > 4u)
  {
    if (a1 == 5)
    {
      v5 = 0xD000000000000015;
    }

    else
    {
      v5 = 0xD000000000000016;
    }

    if (v4 == 5)
    {
      v6 = 0x8000000223A24B10;
    }

    else
    {
      v6 = 0x8000000223A24B30;
    }
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x61776572705F7369;
    }

    else
    {
      v5 = 0x766F6365725F7369;
    }

    if (v4 == 3)
    {
      v6 = 0xED0000676E696D72;
    }

    else
    {
      v6 = 0xED0000676E697265;
    }
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE800000000000000;
        if (v5 != 0x656C6379635F6F69)
        {
          goto LABEL_45;
        }

        goto LABEL_42;
      }

      v3 = 0x5F656761705F6F69;
      v2 = 0xEE0073746C756166;
    }

    if (v5 != v3)
    {
LABEL_45:
      v10 = sub_223A218F0();
      goto LABEL_46;
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v9 = 0xD000000000000015;
    }

    else
    {
      v9 = 0xD000000000000016;
    }

    if (a2 == 5)
    {
      v2 = 0x8000000223A24B10;
    }

    else
    {
      v2 = 0x8000000223A24B30;
    }

    if (v5 != v9)
    {
      goto LABEL_45;
    }
  }

  else if (a2 == 3)
  {
    v2 = 0xED0000676E696D72;
    if (v5 != 0x61776572705F7369)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v2 = 0xED0000676E697265;
    if (v5 != 0x766F6365725F7369)
    {
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v6 != v2)
  {
    goto LABEL_45;
  }

  v10 = 1;
LABEL_46:

  return v10 & 1;
}

uint64_t sub_223A0B0B0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE900000000000074;
  if (a1 == 5)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 0x6F68736B63617453;
  }

  if (a1 == 5)
  {
    v4 = 0x8000000223A24AB0;
  }

  v6 = 0x8000000223A24A60;
  v7 = 0xD000000000000018;
  if (a1 != 3)
  {
    v7 = 0xD000000000000021;
    v6 = 0x8000000223A24A80;
  }

  if (a1 > 4u)
  {
    v7 = v5;
    v6 = v4;
  }

  v8 = 0x8000000223A24A20;
  v9 = 0xD000000000000014;
  if (v2 != 1)
  {
    v9 = 0xD000000000000015;
    v8 = 0x8000000223A24A40;
  }

  if (v2)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x6E776F6E6B6E55;
  }

  if (v2 <= 2)
  {
    v10 = v9;
  }

  else
  {
    v10 = v7;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v6;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0x8000000223A24A20;
        if (v10 != 0xD000000000000014)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v12 = 0x8000000223A24A40;
        if (v10 != 0xD000000000000015)
        {
          goto LABEL_42;
        }
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x6E776F6E6B6E55)
      {
        goto LABEL_42;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0x8000000223A24AB0;
      if (v10 != 0xD000000000000011)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v12 = 0xE900000000000074;
      if (v10 != 0x6F68736B63617453)
      {
LABEL_42:
        v13 = sub_223A218F0();
        goto LABEL_43;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0x8000000223A24A60;
    if (v10 != 0xD000000000000018)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v12 = 0x8000000223A24A80;
    if (v10 != 0xD000000000000021)
    {
      goto LABEL_42;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_42;
  }

  v13 = 1;
LABEL_43:

  return v13 & 1;
}

uint64_t sub_223A0B2B4(uint64_t a1, uint64_t a2, char a3)
{
  v7 = type metadata accessor for OverloadOptions(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC22AudioAnalyticsExternal15HALOverloadCase_name;
  v11 = *MEMORY[0x277CEF8A0];
  v12 = sub_223A20850();
  (*(*(v12 - 8) + 104))(v3 + v10, v11, v12);
  v13 = (v3 + OBJC_IVAR____TtC22AudioAnalyticsExternal15HALOverloadCase_tailspinRequest);
  *v13 = sub_223A0D534;
  v13[1] = 0;
  v13[2] = sub_223A0D584;
  v13[3] = 0;
  v14 = OBJC_IVAR____TtC22AudioAnalyticsExternal15HALOverloadCase_state;
  type metadata accessor for TailspinCaseState();
  v15 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4938, &unk_223A22B80);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v15 + 16) = v16;
  *(v15 + 24) = 0;
  *(v15 + 32) = 1;
  *(v3 + v14) = v15;
  sub_223A20F90();
  v17 = *&a2;
  if (a3)
  {
    v18 = 0;
  }

  else
  {
    v18 = a1;
  }

  if (a3)
  {
    v17 = 0.0;
  }

  *(v3 + 16) = v18;
  *(v3 + 20) = (a3 | BYTE4(a1)) & 1;
  *(v3 + 24) = v17;
  if (qword_281333380 != -1)
  {
    swift_once();
  }

  sub_223A20F10();

  sub_223A0EACC(v9, v3 + OBJC_IVAR____TtC22AudioAnalyticsExternal15HALOverloadCase_overloadOptions, type metadata accessor for OverloadOptions);
  return v3;
}

uint64_t sub_223A0B4DC(char *a1, void *a2)
{
  v3 = v2;
  v6 = sub_223A20680();
  v66 = *(v6 - 8);
  v67 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v62 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v63 = &v59 - v9;
  v10 = sub_223A20CA0();
  v65 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v64 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OverloadOptions(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v15 = sub_223A20950();
  v16 = OBJC_IVAR____TtC22AudioAnalyticsExternal15HALOverloadCase_overloadOptions;
  sub_223A0DE20(&v2[OBJC_IVAR____TtC22AudioAnalyticsExternal15HALOverloadCase_overloadOptions], v14);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C90, "f0");
  sub_223A205F0();
  sub_223A0ECF0(v14, type metadata accessor for OverloadOptions);
  if (v68 == 1)
  {
    v60 = v10;
    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    v17 = v60;
    if (sub_223A20940() & 1) != 0 || (v18 = v64, sub_223A20CE0(), v19 = sub_223A20C60(), (*(v65 + 8))(v18, v17), (v19))
    {
      v20 = sub_223A20FB0();
      v21 = sub_223A214C0();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 134217984;
        *(v22 + 4) = v15;
        v23 = "Ignoring overload: Message from sendSingleMessage. { reporterID=%lld }";
LABEL_24:
        v43 = v21;
        v44 = v20;
        v45 = v22;
        v46 = 12;
        goto LABEL_25;
      }

      goto LABEL_27;
    }
  }

  sub_223A0DE20(&v2[v16], v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C98, &qword_223A239F0);
  sub_223A205F0();
  sub_223A0ECF0(v14, type metadata accessor for OverloadOptions);
  v24 = v68;
  v25 = sub_223A20C40();
  if (*(v25 + 16) && (v26 = sub_2239CDC74(0xD00000000000001ALL, 0x8000000223A25880), (v27 & 1) != 0))
  {
    v64 = v24;
    v65 = v15;
    v29 = v66;
    v28 = v67;
    v30 = v63;
    (*(v66 + 16))(v63, *(v25 + 56) + *(v66 + 72) * v26, v67);

    if ((*(v29 + 88))(v30, v28) == *MEMORY[0x277CEF840])
    {
      (*(v29 + 96))(v30, v28);
      v31 = *v30;
      v32 = v64;
      v15 = v65;
      if (v31 < v64)
      {
        v20 = sub_223A20FB0();
        v33 = sub_223A214C0();
        if (!os_log_type_enabled(v20, v33))
        {
          goto LABEL_27;
        }

        v22 = swift_slowAlloc();
        *v22 = 134218496;
        *(v22 + 4) = v31;
        *(v22 + 12) = 1024;
        *(v22 + 14) = v32;
        *(v22 + 18) = 2048;
        *(v22 + 20) = v15;
        v23 = "Ignoring overload: IO buffer size invalid { ioBufferSize=%lld, ioBufferSizeThreshold=%u, reporterID=%lld }";
LABEL_19:
        v43 = v33;
        v44 = v20;
        v45 = v22;
        v46 = 28;
LABEL_25:
        _os_log_impl(&dword_2239C7000, v44, v43, v23, v45, v46);
LABEL_26:
        MEMORY[0x223DF1300](v22, -1, -1);
        goto LABEL_27;
      }
    }

    else
    {
      (*(v29 + 8))(v30, v28);
      v15 = v65;
    }
  }

  else
  {
  }

  sub_223A0DE20(&v3[v16], v14);
  sub_223A205F0();
  sub_223A0ECF0(v14, type metadata accessor for OverloadOptions);
  v34 = v68;
  v35 = sub_223A20C40();
  if (*(v35 + 16) && (v36 = sub_2239CDC74(0x656C6379635F6F69, 0xE800000000000000), (v37 & 1) != 0))
  {
    v65 = v34;
    v39 = v66;
    v38 = v67;
    v40 = v62;
    (*(v66 + 16))(v62, *(v35 + 56) + *(v66 + 72) * v36, v67);

    if ((*(v39 + 88))(v40, v38) == *MEMORY[0x277CEF840])
    {
      (*(v39 + 96))(v40, v38);
      v41 = *v40;
      v42 = v65;
      if (v41 < v65)
      {
        v20 = sub_223A20FB0();
        v33 = sub_223A214C0();
        if (!os_log_type_enabled(v20, v33))
        {
          goto LABEL_27;
        }

        v22 = swift_slowAlloc();
        *v22 = 134218496;
        *(v22 + 4) = v41;
        *(v22 + 12) = 1024;
        *(v22 + 14) = v42;
        *(v22 + 18) = 2048;
        *(v22 + 20) = v15;
        v23 = "Ignoring overload: IO cycle invalid { ioCycle=%lld, ioCycleThreshold=%u, reporterID=%lld }";
        goto LABEL_19;
      }
    }

    else
    {
      (*(v39 + 8))(v40, v38);
    }
  }

  else
  {
  }

  if (sub_223A0BF4C(a1))
  {
    v20 = sub_223A20FB0();
    v21 = sub_223A214C0();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 134217984;
      *(v22 + 4) = v15;
      v23 = "Ignoring overload: Overload occurs on explicitly ignored device. { reporterID=%lld }";
      goto LABEL_24;
    }

LABEL_27:

    return 0;
  }

  sub_223A0E404();
  if (v48)
  {
    v59 = v16;
    v60 = v12;
    v62 = a1;
    v63 = v48;
    v64 = v3;
    v65 = v15;
    v49 = (v48 + 32);
    v50 = *(v48 + 2);
    v66 = 0x8000000223A24AB0;
    v67 = 0x8000000223A24A80;
    while (1)
    {
      if (!v50)
      {

        v3 = v64;
        v15 = v65;
        v16 = v59;
        goto LABEL_37;
      }

      if (*v49 > 5u)
      {
        break;
      }

      v51 = sub_223A218F0();

      ++v49;
      --v50;
      if (v51)
      {
        goto LABEL_43;
      }
    }

LABEL_43:
    v52 = v63;

    v20 = sub_223A20FB0();
    v53 = sub_223A214C0();

    if (!os_log_type_enabled(v20, v53))
    {

      goto LABEL_27;
    }

    v22 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v68 = v54;
    *v22 = 136315394;
    v55 = MEMORY[0x223DF0470](v52, &type metadata for HALOverloadCase.OverloadCause);
    v57 = v56;

    v58 = sub_2239E1910(v55, v57, &v68);

    *(v22 + 4) = v58;
    *(v22 + 12) = 2048;
    *(v22 + 14) = v65;
    _os_log_impl(&dword_2239C7000, v20, v53, "Ignoring overload: Overload cause list contains Stackshot { overloadCauses=%s, reporterID=%lld }", v22, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v54);
    MEMORY[0x223DF1300](v54, -1, -1);
    goto LABEL_26;
  }

LABEL_37:
  sub_223A0DE20(&v3[v16], v14);
  sub_223A205F0();
  sub_223A0ECF0(v14, type metadata accessor for OverloadOptions);
  if (v68 == 1 && sub_223A0E6C8())
  {
    v20 = sub_223A20FB0();
    v21 = sub_223A214C0();
    if (!os_log_type_enabled(v20, v21))
    {
      goto LABEL_27;
    }

    v22 = swift_slowAlloc();
    *v22 = 134217984;
    *(v22 + 4) = v15;
    v23 = "Ignoring overload: Client output is silent. { reporterID=%lld }";
    goto LABEL_24;
  }

  return 1;
}

uint64_t sub_223A0BF4C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for OverloadOptions(0);
  MEMORY[0x28223BE20](v4);
  v6 = v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_223A20680();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v61 - v12;
  v14 = sub_223A20C40();
  if (*(v14 + 16) && (v15 = sub_2239CDC74(0xD000000000000015, 0x8000000223A24B10), (v16 & 1) != 0))
  {
    (*(v8 + 16))(v13, *(v14 + 56) + *(v8 + 72) * v15, v7);

    if ((*(v8 + 88))(v13, v7) == *MEMORY[0x277CEF860])
    {
      v61[1] = a1;
      v62 = v11;
      (*(v8 + 96))(v13, v7);
      v17 = sub_223A21260();
      v67 = v18;

      v66 = v2;
      sub_223A0DE20(v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal15HALOverloadCase_overloadOptions, v6);
      v63 = v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4CA8, &unk_223A23A00);
      sub_223A205F0();
      v64 = v6;
      sub_223A0ECF0(v6, type metadata accessor for OverloadOptions);
      v19 = sub_223A21260();
      v21 = v20;

      v70 = v19;
      v71 = v21;
      v68 = 44;
      v69 = 0xE100000000000000;
      sub_2239D1804();
      v22 = sub_223A21600();

      v65 = v22;
      v23 = *(v22 + 16);
      if (v23)
      {
        v24 = (v65 + 40);
        while (1)
        {
          v26 = *(v24 - 1);
          v25 = *v24;
          v70 = v17;
          v71 = v67;
          v68 = v26;
          v69 = v25;

          if (sub_223A21630())
          {
            break;
          }

          v24 += 2;
          if (!--v23)
          {
            goto LABEL_8;
          }
        }

        v42 = v65;

        v43 = sub_223A20FB0();
        v44 = sub_223A214C0();

        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          v70 = v46;
          *v45 = 136315394;
          v47 = sub_2239E1910(v26, v25, &v70);

          *(v45 + 4) = v47;
          *(v45 + 12) = 2080;
          v48 = MEMORY[0x223DF0470](v42, MEMORY[0x277D837D0]);
          v50 = v49;

          v51 = sub_2239E1910(v48, v50, &v70);

          *(v45 + 14) = v51;
          _os_log_impl(&dword_2239C7000, v43, v44, "Ignoring overload: Ignored device was active. { inputDevice=%s, ignoredInputDevices=%s }", v45, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x223DF1300](v46, -1, -1);
          MEMORY[0x223DF1300](v45, -1, -1);
        }

        else
        {
        }

        return 1;
      }

LABEL_8:

      v2 = v66;
      v6 = v64;
      v11 = v62;
    }

    else
    {
      (*(v8 + 8))(v13, v7);
    }
  }

  else
  {
  }

  v27 = sub_223A20C40();
  if (!*(v27 + 16))
  {
    goto LABEL_18;
  }

  v28 = sub_2239CDC74(0xD000000000000016, 0x8000000223A24B30);
  if ((v29 & 1) == 0)
  {
    goto LABEL_18;
  }

  (*(v8 + 16))(v11, *(v27 + 56) + *(v8 + 72) * v28, v7);

  if ((*(v8 + 88))(v11, v7) != *MEMORY[0x277CEF860])
  {
    (*(v8 + 8))(v11, v7);
    return 0;
  }

  (*(v8 + 96))(v11, v7);
  v30 = sub_223A21260();
  v32 = v31;

  v66 = v2;
  sub_223A0DE20(v2 + OBJC_IVAR____TtC22AudioAnalyticsExternal15HALOverloadCase_overloadOptions, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4CA8, &unk_223A23A00);
  sub_223A205F0();
  sub_223A0ECF0(v6, type metadata accessor for OverloadOptions);
  v33 = sub_223A21260();
  v35 = v34;

  v70 = v33;
  v71 = v35;
  v68 = 44;
  v69 = 0xE100000000000000;
  sub_2239D1804();
  v36 = sub_223A21600();

  v37 = *(v36 + 16);
  if (!v37)
  {
LABEL_17:

LABEL_18:

    return 0;
  }

  v38 = (v36 + 40);
  while (1)
  {
    v40 = *(v38 - 1);
    v39 = *v38;
    v70 = v30;
    v71 = v32;
    v68 = v40;
    v69 = v39;

    if (sub_223A21630())
    {
      break;
    }

    v38 += 2;
    if (!--v37)
    {
      goto LABEL_17;
    }
  }

  v52 = sub_223A20FB0();
  v53 = sub_223A214C0();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v70 = v55;
    *v54 = 136315394;
    v56 = sub_2239E1910(v40, v39, &v70);

    *(v54 + 4) = v56;
    *(v54 + 12) = 2080;
    v57 = MEMORY[0x223DF0470](v36, MEMORY[0x277D837D0]);
    v59 = v58;

    v60 = sub_2239E1910(v57, v59, &v70);

    *(v54 + 14) = v60;
    _os_log_impl(&dword_2239C7000, v52, v53, "Ignoring overload: Ignored device was active. { outputDevice=%s, ignoredOutputDevices=%s }", v54, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DF1300](v55, -1, -1);
    MEMORY[0x223DF1300](v54, -1, -1);
  }

  else
  {
  }

  return 1;
}

uint64_t sub_223A0C79C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v54 = a2;
  v51 = a3;
  v48 = sub_223A20810();
  v46 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v47 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_223A20350();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4CB0, &unk_223A23A30);
  MEMORY[0x28223BE20](v8 - 8);
  v50 = &v41 - v9;
  v49 = type metadata accessor for HALOverloadCase.OverloadInfo(0);
  v10 = *(v49 - 8);
  v11 = MEMORY[0x28223BE20](v49);
  v13 = (&v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v45 = (&v41 - v14);
  v43 = sub_223A0CD84();
  sub_223A20D00();
  sub_223A21400();
  v15 = sub_223A213F0();
  v17 = v16;

  v42 = sub_223A20C30();
  v19 = v18;
  v20 = sub_223A20CF0();
  v22 = v21;
  v52 = v5;
  v53 = v4;
  v44 = *(v5 + 16);
  v44(v7, v54, v4);
  v23 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v23 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (!v23)
  {
    goto LABEL_10;
  }

  v24 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v24 = v20 & 0xFFFFFFFFFFFFLL;
  }

  if (v24 && (v25 = v20, (sub_223A202B0() & 1) != 0))
  {
    *v13 = v15;
    v13[1] = v17;
    if (v19)
    {
      v26 = v49;
      v27 = v42;
    }

    else
    {
      v27 = sub_223A20D30();
      v19 = v40;
      v26 = v49;
    }

    v13[2] = v27;
    v13[3] = v19;
    v13[4] = v25;
    v13[5] = v22;
    (*(v52 + 32))(v13 + *(v26 + 28), v7, v53);
    *(v13 + *(v26 + 32)) = v43;
    v29 = v50;
    sub_223A0EACC(v13, v50, type metadata accessor for HALOverloadCase.OverloadInfo);
    v28 = 0;
  }

  else
  {
LABEL_10:
    (*(v52 + 8))(v7, v53);

    v28 = 1;
    v26 = v49;
    v29 = v50;
  }

  (*(v10 + 56))(v29, v28, 1, v26);
  if ((*(v10 + 48))(v29, 1, v26) == 1)
  {
    sub_223A0EA64(v29);
    v30 = 1;
    v31 = v51;
  }

  else
  {
    v32 = v45;
    sub_223A0EACC(v29, v45, type metadata accessor for HALOverloadCase.OverloadInfo);
    v55 = 0;
    v56 = 0xE000000000000000;
    sub_223A21700();

    v55 = 91;
    v56 = 0xE100000000000000;
    v33 = sub_223A208B0();
    MEMORY[0x223DF0390](v33);

    MEMORY[0x223DF0390](0xD000000000000019, 0x8000000223A25A30);
    MEMORY[0x223DF0390](v32[2], v32[3]);
    sub_223A0EB80(v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4BA8, &unk_223A23A20);
    v34 = (*(v52 + 80) + 32) & ~*(v52 + 80);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_223A23280;
    v44((v35 + v34), v54, v53);
    if (qword_27D0A47E8 != -1)
    {
      swift_once();
    }

    v36 = v48;
    v37 = __swift_project_value_buffer(v48, qword_27D0A4C60);
    (*(v46 + 16))(v47, v37, v36);
    v31 = v51;
    sub_223A20620();
    sub_223A0ECF0(v32, type metadata accessor for HALOverloadCase.OverloadInfo);
    v30 = 0;
  }

  v38 = sub_223A20630();
  return (*(*(v38 - 8) + 56))(v31, v30, 1, v38);
}

uint64_t sub_223A0CD84()
{
  v0 = sub_223A20680();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_223A20C40();
  if (*(v4 + 16))
  {
    v5 = sub_2239CDC74(0x5F656761705F6F69, 0xEE0073746C756166);
    if (v6)
    {
      (*(v1 + 16))(v3, *(v4 + 56) + *(v1 + 72) * v5, v0);

      if ((*(v1 + 88))(v3, v0) != *MEMORY[0x277CEF840])
      {
        (*(v1 + 8))(v3, v0);
        return 0;
      }

      (*(v1 + 96))(v3, v0);
      result = *v3;
      if ((*v3 & 0x8000000000000000) == 0)
      {
        return result;
      }

      __break(1u);
    }
  }

  return 0;
}

uint64_t sub_223A0CF0C(uint64_t a1)
{
  if (*(a1 + *(type metadata accessor for HALOverloadCase.OverloadInfo(0) + 32)))
  {
    sub_223A21700();
    MEMORY[0x223DF0390](0xD000000000000014, 0x8000000223A25B30);
    v1 = sub_223A218E0();
    MEMORY[0x223DF0390](v1);

    MEMORY[0x223DF0390](0xD00000000000002DLL, 0x8000000223A25B50);
  }

  return 0;
}

void sub_223A0CFEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_223A20350();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = [objc_opt_self() defaultWorkspace];
  if (v7)
  {
    v8 = v7;
    v18 = a2;
    v9 = sub_223A202F0();
    v10 = sub_223A211F0();
    sub_2239DC6E4(MEMORY[0x277D84F90]);
    v11 = sub_223A21100();

    v12 = [v8 operationToOpenResource:v9 usingApplication:v10 userInfo:v11];

    if (v12)
    {
      (*(v5 + 16))(&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
      v13 = (*(v5 + 80) + 24) & ~*(v5 + 80);
      v14 = swift_allocObject();
      *(v14 + 16) = v18;
      (*(v5 + 32))(v14 + v13, &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
      aBlock[4] = sub_223A0E9E0;
      aBlock[5] = v14;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2239EC158;
      aBlock[3] = &block_descriptor_3;
      v15 = _Block_copy(aBlock);
      v16 = v12;

      [v16 setCompletionBlock_];
      _Block_release(v15);
    }

    [v12 start];
  }
}

uint64_t sub_223A0D290(uint64_t a1, uint64_t a2)
{
  v3 = sub_223A20350();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_223A20FC0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_223A20F90();
  (*(v4 + 16))(v6, a2, v3);
  v11 = sub_223A20FB0();
  v12 = sub_223A21500();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v24 = v7;
    v14 = v13;
    v15 = swift_slowAlloc();
    v23 = v8;
    v16 = v15;
    v25 = v15;
    *v14 = 136380675;
    v17 = sub_223A20310();
    v19 = v18;
    (*(v4 + 8))(v6, v3);
    v20 = sub_2239E1910(v17, v19, &v25);

    *(v14 + 4) = v20;
    _os_log_impl(&dword_2239C7000, v11, v12, "Finished opening URL in the Files app. { tailspinPath=%{private}s }", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x223DF1300](v16, -1, -1);
    MEMORY[0x223DF1300](v14, -1, -1);

    return (*(v23 + 8))(v10, v24);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
    return (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_223A0D584@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_223A20350();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = type metadata accessor for HALOverloadCase(0);
  (*(v5 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  *(v9 + ((v6 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = v7;
  sub_223A20A10();
  sub_223A20A00();
  v10 = sub_223A20A20();
  return (*(*(v10 - 8) + 56))(a2, 0, 1, v10);
}

uint64_t sub_223A0D7A8()
{
  v0 = sub_223A20810();
  __swift_allocate_value_buffer(v0, qword_27D0A4C60);
  __swift_project_value_buffer(v0, qword_27D0A4C60);
  return sub_223A20800();
}

double sub_223A0D838(uint64_t a1)
{
  sub_223A21290();

  return result;
}

unint64_t sub_223A0D960@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>, __n128 a3@<Q0>)
{
  result = sub_223A0EB34(*a1, a1[1], a3);
  *a2 = result;
  return result;
}

void sub_223A0D990(uint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    v8 = 0xE700000000000000;
    v9 = 0x8000000223A24A20;
    v10 = 0xD000000000000015;
    if (v2 == 1)
    {
      v10 = 0xD000000000000014;
    }

    else
    {
      v9 = 0x8000000223A24A40;
    }

    v11 = v2 == 0;
    if (*v1)
    {
      v12 = v10;
    }

    else
    {
      v12 = 0x6E776F6E6B6E55;
    }

    if (!v11)
    {
      v8 = v9;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0x8000000223A24AB0;
    v4 = 0x6F68736B63617453;
    if (v2 == 5)
    {
      v4 = 0xD000000000000011;
    }

    else
    {
      v3 = 0xE900000000000074;
    }

    v5 = 0x8000000223A24A60;
    v6 = 0xD000000000000021;
    if (v2 == 3)
    {
      v6 = 0xD000000000000018;
    }

    else
    {
      v5 = 0x8000000223A24A80;
    }

    if (*v1 <= 4u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (*v1 <= 4u)
    {
      v3 = v5;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

uint64_t sub_223A0DA84()
{
  v1 = OBJC_IVAR____TtC22AudioAnalyticsExternal15HALOverloadCase_name;
  v2 = sub_223A20850();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal15HALOverloadCase_tailspinRequest + 16);
  sub_2239E9D64(*(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal15HALOverloadCase_tailspinRequest));
  sub_2239E9D64(v3);

  sub_223A0ECF0(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal15HALOverloadCase_overloadOptions, type metadata accessor for OverloadOptions);
  v4 = OBJC_IVAR____TtC22AudioAnalyticsExternal15HALOverloadCase_logger;
  v5 = sub_223A20FC0();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  return swift_deallocClassInstance();
}

uint64_t sub_223A0DBE8(uint64_t a1)
{
  result = sub_223A20850();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for OverloadOptions(319);
    if (v3 <= 0x3F)
    {
      result = sub_223A20FC0();
      if (v4 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_223A0DD48@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal15HALOverloadCase_name;
  v4 = sub_223A20850();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_223A0DDC0()
{
  v1 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal15HALOverloadCase_tailspinRequest);
  v2 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal15HALOverloadCase_tailspinRequest + 16);
  sub_2239E9D54(v1);
  sub_2239E9D54(v2);
  return v1;
}

uint64_t sub_223A0DE20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OverloadOptions(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_223A0DE84(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4CC0, &qword_223A23A48);
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

char *sub_223A0DF88(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B90, &qword_223A23740);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 216);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[216 * v8])
    {
      memmove(v12, v13, 216 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_223A0E0B0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4CA0, &qword_223A239F8);
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

char *sub_223A0E1A4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4CB8, &qword_223A23A40);
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

uint64_t sub_223A0E2D0()
{
  v0 = sub_223A20FC0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_223A20F90();
  v4 = sub_223A20FB0();
  v5 = sub_223A21500();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_2239C7000, v4, v5, "Successfully surfaced customer overload notification.", v6, 2u);
    MEMORY[0x223DF1300](v6, -1, -1);
  }

  return (*(v1 + 8))(v3, v0);
}

void sub_223A0E404()
{
  v0 = sub_223A20680();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = (&v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_223A20C40();
  if (*(v4 + 16))
  {
    v5 = sub_2239CDC74(0x6573756163, 0xE500000000000000);
    if (v6)
    {
      (*(v1 + 16))(v3, *(v4 + 56) + *(v1 + 72) * v5, v0);

      if ((*(v1 + 88))(v3, v0) != *MEMORY[0x277CEF860])
      {
        (*(v1 + 8))(v3, v0);
        return;
      }

      (*(v1 + 96))(v3, v0);
      v7 = *v3;
      v8 = v3[1];
      v24 = v7;
      v25 = v8;
      v22 = 44;
      v23 = 0xE100000000000000;
      sub_2239D1804();
      v9 = sub_223A21600();

      v10 = 0;
      v11 = *(v9 + 16);
      v12 = MEMORY[0x277D84F90];
LABEL_5:
      v13 = v9 + 40 + 16 * v10;
      while (v11 != v10)
      {
        if (v10 >= *(v9 + 16))
        {
          __break(1u);
          return;
        }

        ++v10;
        v14 = v13 + 16;

        v15 = sub_223A217E0();

        v13 = v14;
        if (v15 < 7)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v12 = sub_223A0E0B0(0, *(v12 + 2) + 1, 1, v12);
          }

          v17 = *(v12 + 2);
          v16 = *(v12 + 3);
          v18 = v17 + 1;
          if (v17 >= v16 >> 1)
          {
            v21 = v17 + 1;
            v19 = sub_223A0E0B0((v16 > 1), v17 + 1, 1, v12);
            v18 = v21;
            v12 = v19;
          }

          *(v12 + 2) = v18;
          v12[v17 + 32] = v15;
          goto LABEL_5;
        }
      }
    }
  }
}

BOOL sub_223A0E6C8()
{
  v0 = sub_223A20680();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = (v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v2);
  v6 = (v20 - v5);
  v7 = sub_223A20C40();
  if (!*(v7 + 16))
  {
    goto LABEL_9;
  }

  v8 = sub_2239CDC74(0xD00000000000001FLL, 0x8000000223A258A0);
  if ((v9 & 1) == 0)
  {
    goto LABEL_9;
  }

  v10 = *(v1 + 72);
  v11 = *(v7 + 56) + v10 * v8;
  v22 = *(v1 + 16);
  v22(v6, v11, v0);

  v12 = *(v1 + 88);
  v13 = v12(v6, v0);
  if (v13 != *MEMORY[0x277CEF840])
  {
    (*(v1 + 8))(v6, v0);
    return 0;
  }

  v21 = v13;
  v20[0] = *(v1 + 96);
  v20[1] = v1 + 96;
  (v20[0])(v6, v0);
  v14 = *v6;
  v15 = sub_223A20C40();
  if (!*(v15 + 16) || (v16 = sub_2239CDC74(0xD000000000000020, 0x8000000223A258C0), (v17 & 1) == 0))
  {
LABEL_9:

    return 0;
  }

  v22(v4, *(v15 + 56) + v16 * v10, v0);

  v18 = v12(v4, v0);
  if (v18 != v21)
  {
    (*(v1 + 8))(v4, v0);
    return 0;
  }

  (v20[0])(v4, v0);
  return v14 > 0 || *v4 == 1;
}

void sub_223A0E954()
{
  v1 = *(sub_223A20350() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_223A0CFEC(v0 + v2, v3);
}

uint64_t sub_223A0E9E0()
{
  v1 = *(sub_223A20350() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_223A0D290(v2, v3);
}

uint64_t sub_223A0EA64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4CB0, &unk_223A23A30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_223A0EACC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_223A0EB34(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = sub_223A217E0();

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_223A0EB80(void *a1)
{
  v2 = sub_223A0CF0C(a1);
  v4 = v3;
  sub_223A21700();
  MEMORY[0x223DF0390](0x4954204555535349, 0xEC000000203A454DLL);
  MEMORY[0x223DF0390](*a1, a1[1]);
  MEMORY[0x223DF0390](0xD00000000000001BLL, 0x8000000223A25A90);
  v5 = sub_223A208B0();
  MEMORY[0x223DF0390](v5);

  MEMORY[0x223DF0390](0x7465642073617720, 0xEF202E6465746365);
  MEMORY[0x223DF0390](v2, v4);

  MEMORY[0x223DF0390](0xD000000000000052, 0x8000000223A25AB0);
  MEMORY[0x223DF0390](a1[4], a1[5]);
  MEMORY[0x223DF0390](0xD000000000000016, 0x8000000223A25B10);
  v6 = sub_223A16670();
  MEMORY[0x223DF0390](v6);

  return 0;
}

uint64_t sub_223A0ECF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_223A0ED78(uint64_t a1)
{
  result = sub_223A20350();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HALOverloadCase.OverloadCause(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HALOverloadCase.OverloadCause(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_223A0EF58()
{
  result = qword_27D0A4CD8;
  if (!qword_27D0A4CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A4CD8);
  }

  return result;
}

uint64_t sub_223A0EFAC@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a2;
  v22 = a3;
  v3 = sub_223A20810();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_223A20C30();
  if (!v8)
  {
    v7 = sub_223A20D30();
  }

  v9 = v7;
  v10 = v8;
  v23 = 0;
  v24 = 0xE000000000000000;
  sub_223A21700();

  v23 = 91;
  v24 = 0xE100000000000000;
  v11 = sub_223A208B0();
  MEMORY[0x223DF0390](v11);

  MEMORY[0x223DF0390](0xD00000000000001DLL, 0x8000000223A25BE0);
  MEMORY[0x223DF0390](v9, v10);

  v20[1] = v23;
  sub_223A0F6D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4BA8, &unk_223A23A20);
  v12 = sub_223A20350();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_223A23280;
  (*(v13 + 16))(v15 + v14, v21, v12);
  if (qword_27D0A47F0 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v3, qword_27D0A4CE0);
  (*(v4 + 16))(v6, v16, v3);
  v17 = v22;
  sub_223A20620();
  v18 = sub_223A20630();
  return (*(*(v18 - 8) + 56))(v17, 0, 1, v18);
}

uint64_t sub_223A0F2E8()
{
  v0 = sub_223A20810();
  __swift_allocate_value_buffer(v0, qword_27D0A4CE0);
  __swift_project_value_buffer(v0, qword_27D0A4CE0);
  return sub_223A20800();
}

uint64_t sub_223A0F360()
{
  v1 = OBJC_IVAR____TtC22AudioAnalyticsExternal20HALTimecodeIssueCase_name;
  v2 = sub_223A20850();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal20HALTimecodeIssueCase_tailspinRequest + 16);
  sub_2239E9D64(*(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal20HALTimecodeIssueCase_tailspinRequest));
  sub_2239E9D64(v3);

  v4 = OBJC_IVAR____TtC22AudioAnalyticsExternal20HALTimecodeIssueCase_logger;
  v5 = sub_223A20FC0();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HALTimecodeIssueCase(uint64_t a1)
{
  result = qword_27D0A4D00;
  if (!qword_27D0A4D00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_223A0F4CC(uint64_t a1)
{
  result = sub_223A20850();
  if (v2 <= 0x3F)
  {
    result = sub_223A20FC0();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_223A0F5FC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal20HALTimecodeIssueCase_name;
  v4 = sub_223A20850();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_223A0F674()
{
  v1 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal20HALTimecodeIssueCase_tailspinRequest);
  v2 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal20HALTimecodeIssueCase_tailspinRequest + 16);
  sub_2239E9D54(v1);
  sub_2239E9D54(v2);
  return v1;
}

uint64_t sub_223A0F6D4()
{
  sub_223A21700();
  MEMORY[0x223DF0390](0x4954204555535349, 0xEC000000203A454DLL);
  sub_223A20D00();
  sub_223A21400();
  v0 = sub_223A213F0();
  v2 = v1;

  MEMORY[0x223DF0390](v0, v2);

  MEMORY[0x223DF0390](0xD000000000000018, 0x8000000223A25C30);
  v3 = sub_223A208B0();
  MEMORY[0x223DF0390](v3);

  MEMORY[0x223DF0390](0xD00000000000005DLL, 0x8000000223A25C50);
  v4 = sub_223A20CF0();
  MEMORY[0x223DF0390](v4);

  MEMORY[0x223DF0390](0xD000000000000016, 0x8000000223A25B10);
  v5 = sub_223A16670();
  MEMORY[0x223DF0390](v5);

  return 0;
}

void sub_223A0F840(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4D18, "R;");
    v2 = sub_223A217C0();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = __clz(__rbit64(v5)) | (v8 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v14 = v13[1];
    v15 = *(*(a1 + 56) + 8 * v12);
    *&v32[0] = *v13;
    *(&v32[0] + 1) = v14;

    v15;
    swift_dynamicCast();
    sub_2239E7EF4(0, &qword_2813326F8, 0x277CCABB0);
    swift_dynamicCast();
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_2239DA0A8(&v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_2239DA0A8(v31, v32);
    v16 = sub_223A21680();
    v17 = -1 << *(v2 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v9 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = *(v2 + 48) + 40 * v9;
    *v10 = v24;
    *(v10 + 16) = v25;
    *(v10 + 32) = v26;
    sub_2239DA0A8(v32, (*(v2 + 56) + 32 * v9));
    ++*(v2 + 16);
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

Swift::Bool __swiftcall InferenceSummaryWorker.start()()
{
  swift_beginAccess();
  *(v0 + 16) = 1;
  return 1;
}

uint64_t InferenceSummaryWorker.workerConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal22InferenceSummaryWorker_workerConfig;
  swift_beginAccess();
  v4 = sub_223A20BC0();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t InferenceSummaryWorker.workerConfig.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal22InferenceSummaryWorker_workerConfig;
  swift_beginAccess();
  v4 = sub_223A20BC0();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

double InferenceSummaryWorker.neededPreviousFields.getter()
{
  swift_beginAccess();

  return result;
}

double InferenceSummaryWorker.neededPreviousFields.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal22InferenceSummaryWorker_neededPreviousFields;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t InferenceSummaryWorker.deinit()
{
  v1 = OBJC_IVAR____TtC22AudioAnalyticsExternal22InferenceSummaryWorker_workerConfig;
  v2 = sub_223A20BC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal22InferenceSummaryWorker_session));
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal22InferenceSummaryWorker_logger;
  v4 = sub_223A20FC0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_2239D62FC(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal22InferenceSummaryWorker_summaryState, type metadata accessor for InferenceSummaryState);
  return v0;
}

void sub_223A0FF20(void *a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v39 = a3;
  v40 = sub_223A20FC0();
  v7 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for CPUVoltageCalculator(0);
  MEMORY[0x28223BE20](v37);
  v38 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_223A20680();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = (&v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = a1;
  v44 = a1;
  v45 = a2;
  v42 = 95;
  v43 = 0xE100000000000000;
  MEMORY[0x223DF0390](*(v4 + 11), *(v4 + 12));
  MEMORY[0x223DF0390](95, 0xE100000000000000);
  sub_2239D1804();
  v15 = sub_223A21600();

  if (v15[2] == 2)
  {
    v17 = v15[4];
    v16 = v15[5];

    *v4 = v17;
    *(v4 + 1) = v16;
    v44 = 0;
    v45 = 0xE000000000000000;
    sub_223A21700();
    v18 = sub_223A21250();
    v20 = v19;

    v44 = v18;
    v45 = v20;
    MEMORY[0x223DF0390](0xD000000000000011, 0x8000000223A25E10);
    v22 = v44;
    v21 = v45;
    (*(v12 + 16))(v14, v39, v11);
    if ((*(v12 + 88))(v14, v11) == *MEMORY[0x277CEF860])
    {
      (*(v12 + 96))(v14, v11);
      v23 = *v14;
      v24 = v14[1];
      v25 = v38;
      sub_223A20F70();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4B28, &qword_223A23468);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4AC0, &qword_223A233C0);
      sub_223A10830();
      sub_223A20580();
      *v25 = v23;
      v25[1] = v24;
      v26 = v41;
      sub_2239FB7D4();
      if (v26)
      {
        sub_2239D62FC(v25, type metadata accessor for CPUVoltageCalculator);
      }

      else
      {
        v34 = v27;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v44 = *(v4 + 5);
        sub_223A1316C(v22, v21, isUniquelyReferenced_nonNull_native, v34);

        sub_2239D62FC(v25, type metadata accessor for CPUVoltageCalculator);
        *(v4 + 5) = v44;
      }
    }

    else
    {

      (*(v12 + 8))(v14, v11);
    }
  }

  else
  {

    v28 = type metadata accessor for InferenceSummaryState(0);
    v29 = v40;
    (*(v7 + 16))(v9, &v4[*(v28 + 56)], v40);

    v30 = sub_223A20FB0();
    v31 = sub_223A214E0();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v44 = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_2239E1910(v36, a2, &v44);
      _os_log_impl(&dword_2239C7000, v30, v31, "Invalid number of fields for input string %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x223DF1300](v33, -1, -1);
      MEMORY[0x223DF1300](v32, -1, -1);
    }

    (*(v7 + 8))(v9, v29);
  }
}

double sub_223A10484@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_2239D17A8((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;

  return result;
}

uint64_t sub_223A104F8(uint64_t a1)
{
  result = sub_223A20BC0();
  if (v2 <= 0x3F)
  {
    result = sub_223A20FC0();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for InferenceSummaryState(319);
      if (v4 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

void sub_223A10670(uint64_t a1)
{
  sub_223A107E4(319, &qword_281333768, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_223A10784();
    if (v2 <= 0x3F)
    {
      sub_223A20FC0();
      if (v3 <= 0x3F)
      {
        sub_223A107E4(319, &qword_281333760, MEMORY[0x277D839F8]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_223A10784()
{
  if (!qword_281333770)
  {
    v0 = sub_223A21180();
    if (!v1)
    {
      atomic_store(v0, &qword_281333770);
    }
  }
}

void sub_223A107E4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_223A215D0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_223A10830()
{
  result = qword_281333728;
  if (!qword_281333728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0A4AC0, &qword_223A233C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281333728);
  }

  return result;
}

uint64_t sub_223A10894@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v19 = a2;
  v20 = a3;
  v3 = sub_223A20810();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = 0;
  v22 = 0xE000000000000000;
  sub_223A21700();

  v21 = 91;
  v22 = 0xE100000000000000;
  v7 = sub_223A208B0();
  MEMORY[0x223DF0390](v7);

  MEMORY[0x223DF0390](0xD000000000000018, 0x8000000223A25E80);
  v8 = sub_223A20C30();
  if (!v9)
  {
    v8 = sub_223A20D30();
  }

  MEMORY[0x223DF0390](v8);

  v18[1] = v21;
  sub_223A10F1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4BA8, &unk_223A23A20);
  v10 = sub_223A20350();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_223A23280;
  (*(v11 + 16))(v13 + v12, v19, v10);
  if (qword_27D0A47F8 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v3, qword_27D0A4D20);
  (*(v4 + 16))(v6, v14, v3);
  v15 = v20;
  sub_223A20620();
  v16 = sub_223A20630();
  return (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
}

uint64_t sub_223A10BC8()
{
  v0 = sub_223A20810();
  __swift_allocate_value_buffer(v0, qword_27D0A4D20);
  __swift_project_value_buffer(v0, qword_27D0A4D20);
  return sub_223A20800();
}

uint64_t sub_223A10C4C()
{
  v1 = OBJC_IVAR____TtC22AudioAnalyticsExternal14PHASEIssueCase_name;
  v2 = sub_223A20850();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal14PHASEIssueCase_tailspinRequest + 16);
  sub_2239E9D64(*(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal14PHASEIssueCase_tailspinRequest));
  sub_2239E9D64(v3);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PHASEIssueCase(uint64_t a1)
{
  result = qword_27D0A4D38;
  if (!qword_27D0A4D38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_223A10D78(uint64_t a1)
{
  result = sub_223A20850();
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

uint64_t sub_223A10E44@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal14PHASEIssueCase_name;
  v4 = sub_223A20850();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_223A10EBC()
{
  v1 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal14PHASEIssueCase_tailspinRequest);
  v2 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal14PHASEIssueCase_tailspinRequest + 16);
  sub_2239E9D54(v1);
  sub_2239E9D54(v2);
  return v1;
}

uint64_t sub_223A10F1C()
{
  sub_223A21700();
  MEMORY[0x223DF0390](0x4954204555535349, 0xEC000000203A454DLL);
  sub_223A20D00();
  sub_223A21400();
  v0 = sub_223A213F0();
  v2 = v1;

  MEMORY[0x223DF0390](v0, v2);

  MEMORY[0x223DF0390](0xD000000000000017, 0x8000000223A25ED0);
  v3 = sub_223A208B0();
  MEMORY[0x223DF0390](v3);

  MEMORY[0x223DF0390](0xD00000000000005DLL, 0x8000000223A25C50);
  v4 = sub_223A20CF0();
  MEMORY[0x223DF0390](v4);

  MEMORY[0x223DF0390](0xD000000000000016, 0x8000000223A25B10);
  v5 = sub_223A16670();
  MEMORY[0x223DF0390](v5);

  return 0;
}

Swift::Bool __swiftcall PowerLogWorker.start()()
{
  swift_beginAccess();
  *(v0 + 16) = 1;
  return 1;
}

Swift::Void __swiftcall PowerLogWorker.stop()()
{
  __swift_project_boxed_opaque_existential_1((v0 + 24), *(v0 + 48));
  if ((sub_223A20940() & 1) == 0)
  {
    sub_2239E2D20(1886352499, 0xE400000000000000);
  }

  swift_beginAccess();
  *(v0 + 16) = 0;
}

unint64_t sub_223A11188(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = OBJC_IVAR____TtC22AudioAnalyticsExternal14PowerLogWorker_rmsState;
  v11 = *(v6 + OBJC_IVAR____TtC22AudioAnalyticsExternal14PowerLogWorker_rmsState);
  if (*(v11 + 16) <= 0 && *(v11 + 24) <= 0 && *(v11 + 32) < 1 || (*(v11 + 72) & 1) != 0)
  {

    v12 = sub_223A20FB0();
    v13 = sub_223A214E0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134217984;
      __swift_project_boxed_opaque_existential_1((v6 + 24), *(v6 + 48));
      *(v14 + 4) = sub_223A20950();

      _os_log_impl(&dword_2239C7000, v12, v13, "Failed to build RMS message. { reporterID=%lld }", v14, 0xCu);
      MEMORY[0x223DF1300](v14, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  else
  {
    v15 = *(v11 + 64) + -10.0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A48E8, &unk_223A22E10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_223A23D30;
    *(inited + 32) = 0x6D69547472617453;
    *(inited + 40) = 0xE900000000000065;
    v17 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    v18 = sub_2239DC698();
    *(inited + 48) = v17;
    *(inited + 72) = v18;
    *(inited + 80) = 0x746163696C707041;
    v19 = MEMORY[0x277D837D0];
    *(inited + 88) = 0xEF656D614E6E6F69;
    *(inited + 96) = a1;
    *(inited + 104) = a2;
    *(inited + 120) = v19;
    *(inited + 128) = 0x736D5278616DLL;
    *(inited + 136) = 0xE600000000000000;
    LODWORD(v15) = *(*(v6 + v10) + 44);
    v20 = objc_allocWithZone(MEMORY[0x277CCABB0]);

    LODWORD(v21) = LODWORD(v15);
    *(inited + 144) = [v20 initWithFloat_];
    *(inited + 168) = v18;
    *(inited + 176) = 0x736D526E696DLL;
    *(inited + 184) = 0xE600000000000000;
    LODWORD(v15) = *(*(v6 + v10) + 40);
    v22 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    LODWORD(v23) = LODWORD(v15);
    *(inited + 192) = [v22 initWithFloat_];
    *(inited + 216) = v18;
    *(inited + 224) = 0x65636E656C6973;
    *(inited + 232) = 0xE700000000000000;
    *(inited + 240) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    *(inited + 264) = v18;
    *(inited + 272) = 0x7465697571;
    *(inited + 280) = 0xE500000000000000;
    *(inited + 288) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    *(inited + 312) = v18;
    *(inited + 320) = 0x656C6269647561;
    *(inited + 328) = 0xE700000000000000;
    *(inited + 336) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    *(inited + 360) = v18;
    *(inited + 368) = 1701080942;
    *(inited + 376) = 0xE400000000000000;
    v24 = *(v6 + v10);
    v25 = *(v24 + 56);
    *(inited + 384) = *(v24 + 48);
    *(inited + 392) = v25;
    v26 = MEMORY[0x277D837D0];
    *(inited + 408) = MEMORY[0x277D837D0];
    *(inited + 416) = 6580592;
    *(inited + 424) = 0xE300000000000000;
    *(inited + 432) = a3;
    *(inited + 456) = v18;
    *(inited + 464) = 0x726574726F706572;
    *(inited + 472) = 0xEA00000000004449;
    __swift_project_boxed_opaque_existential_1((v6 + 24), *(v6 + 48));

    v27 = a3;
    *(inited + 480) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithLongLong_];
    *(inited + 504) = v18;
    *(inited + 512) = 0x6E6F73616572;
    *(inited + 520) = 0xE600000000000000;
    *(inited + 552) = v26;
    *(inited + 528) = a4;
    *(inited + 536) = a5;

    v28 = sub_2239DC6E4(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A48F0, &qword_223A22810);
    swift_arrayDestroy();
    return v28;
  }
}

void sub_223A11628()
{
  v1 = v0;
  v2 = sub_223A20680();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = (&v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x28223BE20](v4);
  v9 = (&v47 - v8);
  MEMORY[0x28223BE20](v7);
  v11 = (&v47 - v10);
  v12 = sub_223A20C40();
  if (!*(v12 + 16))
  {
    goto LABEL_13;
  }

  v13 = sub_2239CDC74(7564658, 0xE300000000000000);
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

  v15 = *(v12 + 56) + *(v3 + 72) * v13;
  v16 = *(v3 + 16);
  v53 = *(v3 + 72);
  v54 = v16;
  v16(v11, v15, v2);

  v17 = *(v3 + 88);
  v18 = v17(v11, v2);
  if (v18 != *MEMORY[0x277CEF860])
  {
    (*(v3 + 8))(v11, v2);
    goto LABEL_14;
  }

  v52 = v18;
  v19 = *(v3 + 96);
  v50 = v3 + 96;
  v51 = v17;
  v49 = v19;
  v19(v11, v2);
  v20 = *v11;
  v21 = v11[1];
  v48 = v20;
  v22 = sub_223A20C40();
  if (!*(v22 + 16) || (v23 = sub_2239CDC74(1801545072, 0xE400000000000000), (v24 & 1) == 0))
  {

    goto LABEL_13;
  }

  v54(v9, *(v22 + 56) + v23 * v53, v2);

  v25 = v51(v9, v2);
  if (v25 != v52)
  {

    (*(v3 + 8))(v9, v2);
    goto LABEL_14;
  }

  v49(v9, v2);
  v26 = *v9;
  v27 = v9[1];
  sub_223A11ED8(v48, v21);
  v29 = v28;

  if ((v29 & 0x100000000) != 0)
  {
    goto LABEL_13;
  }

  sub_223A11ED8(v26, v27);
  v31 = v30;

  if ((v31 & 0x100000000) != 0)
  {
    goto LABEL_14;
  }

  v32 = v29;
  if (*&v29 >= -110.0)
  {
    v33 = v1;
    if (*&v29 < -50.0)
    {
      v43 = *(v1 + 24);
      v33 = (v1 + 24);
      v36 = v43 + 10;
      if (!__OFADD__(v43, 10))
      {
        goto LABEL_32;
      }

      __break(1u);
    }

    v44 = v33[4];
    v33 += 4;
    v36 = v44 + 10;
    if (__OFADD__(v44, 10))
    {
      goto LABEL_41;
    }

    goto LABEL_32;
  }

  v33 = (v1 + 16);
  v34 = *(v1 + 16);
  v35 = __OFADD__(v34, 10);
  v36 = v34 + 10;
  if (v35)
  {
    __break(1u);
LABEL_13:

    goto LABEL_14;
  }

LABEL_32:
  v45 = v31;
  *v33 = v36;
  if (*(v1 + 40) <= *&v29)
  {
    v32 = *(v1 + 40);
  }

  if (*(v1 + 44) > *&v31)
  {
    v45 = *(v1 + 44);
  }

  *(v1 + 40) = v32;
  *(v1 + 44) = v45;
  if (*(v1 + 72))
  {
    sub_223A20D00();
  }

  else
  {
    v46 = *(v1 + 64);
  }

  *(v1 + 64) = v46;
  *(v1 + 72) = 0;
LABEL_14:
  v37 = sub_223A20C40();
  if (*(v37 + 16))
  {
    v38 = sub_2239CDC74(1701080942, 0xE400000000000000);
    if (v39)
    {
      (*(v3 + 16))(v6, *(v37 + 56) + *(v3 + 72) * v38, v2);

      if ((*(v3 + 88))(v6, v2) != *MEMORY[0x277CEF860])
      {
        (*(v3 + 8))(v6, v2);
        goto LABEL_19;
      }

      (*(v3 + 96))(v6, v2);
      v40 = v6[1];
      *(v1 + 48) = *v6;
      *(v1 + 56) = v40;
    }
  }

LABEL_19:
  v41 = *(v1 + 80);
  v35 = __OFADD__(v41, 1);
  v42 = v41 + 1;
  if (!v35)
  {
    *(v1 + 80) = v42;
    return;
  }

  __break(1u);
LABEL_41:
  __break(1u);
}

void sub_223A11A94()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xFF7FFFFF7F7FFFFFLL;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0xE000000000000000;

  *(v0 + 64) = 0;
  *(v0 + 72) = 1;
  *(v0 + 80) = 0;
}

uint64_t PowerLogWorker.workerConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal14PowerLogWorker_workerConfig;
  swift_beginAccess();
  v4 = sub_223A20BC0();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t PowerLogWorker.workerConfig.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal14PowerLogWorker_workerConfig;
  swift_beginAccess();
  v4 = sub_223A20BC0();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t PowerLogWorker.deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  v1 = OBJC_IVAR____TtC22AudioAnalyticsExternal14PowerLogWorker_logger;
  v2 = sub_223A20FC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal14PowerLogWorker_workerConfig;
  v4 = sub_223A20BC0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t type metadata accessor for PowerLogWorker(uint64_t a1)
{
  result = qword_281334218;
  if (!qword_281334218)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_223A11DA8(uint64_t a1)
{
  result = sub_223A20FC0();
  if (v2 <= 0x3F)
  {
    result = sub_223A20BC0();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void sub_223A11ED8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4AF0, &qword_223A23430);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v30 - v6;
  v31 = a1;
  v32 = a2;
  sub_223A20570();
  v30[0] = 0;
  v30[1] = 0xE000000000000000;
  sub_223A021FC();
  sub_223A02250();
  sub_223A12298();
  sub_223A214B0();
  v8 = *(v5 + 8);
  v8(v7, v4);
  v31 = v33;
  v32 = v34;
  sub_223A20570();
  sub_2239E4C38();
  v9 = sub_223A211B0();
  v8(v7, v4);

  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = 0;
    for (i = MEMORY[0x277D84F90]; ; *&i[4 * v18 + 32] = v16)
    {
      v13 = v9 + 56 + 32 * v11;
      do
      {
        if (v10 == v11)
        {
          v19 = *(i + 2);
          v20 = *(v9 + 16);

          if (v19 != v20)
          {
            goto LABEL_16;
          }

          v21 = *(i + 2);
          if (v21)
          {
            if (v21 <= 7)
            {
              v22 = 0;
              v23 = 0.0;
              goto LABEL_21;
            }

            v22 = v21 & 0x7FFFFFFFFFFFFFF8;
            v25 = i + 48;
            v23 = 0.0;
            v26 = v21 & 0x7FFFFFFFFFFFFFF8;
            do
            {
              v23 = (((((((v23 + COERCE_FLOAT(*(v25 - 1))) + COERCE_FLOAT(HIDWORD(*(v25 - 2)))) + COERCE_FLOAT(*(v25 - 1))) + COERCE_FLOAT(HIDWORD(*(v25 - 1)))) + COERCE_FLOAT(*v25)) + COERCE_FLOAT(HIDWORD(*v25))) + COERCE_FLOAT(*(v25 + 1))) + COERCE_FLOAT(HIDWORD(*v25));
              v25 += 32;
              v26 -= 8;
            }

            while (v26);
            if (v21 != v22)
            {
LABEL_21:
              v27 = v21 - v22;
              v28 = &i[4 * v22 + 32];
              do
              {
                v29 = *v28++;
                v23 = v23 + v29;
                --v27;
              }

              while (v27);
            }
          }

          v24 = 0;
          goto LABEL_24;
        }

        if (v11 >= *(v9 + 16))
        {
          __break(1u);
          return;
        }

        ++v11;
        v14 = v13 + 32;

        v15 = sub_223A21480();
        v13 = v14;
      }

      while ((v15 & 0x100000000) != 0);
      v16 = v15;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        i = sub_223A0E1A4(0, *(i + 2) + 1, 1, i);
      }

      v18 = *(i + 2);
      v17 = *(i + 3);
      if (v18 >= v17 >> 1)
      {
        i = sub_223A0E1A4((v17 > 1), v18 + 1, 1, i);
      }

      *(i + 2) = v18 + 1;
    }
  }

LABEL_16:

  v24 = 1;
LABEL_24:
  LOBYTE(v33) = v24;
}

unint64_t sub_223A12298()
{
  result = qword_281333730;
  if (!qword_281333730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0A4AF0, &qword_223A23430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281333730);
  }

  return result;
}

void sub_223A122FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_2239DA0A8(a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v3;
    sub_223A1301C(v8, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v7;
  }

  else
  {
    sub_2239CDCEC(a1, &qword_27D0A49B0, &qword_223A22C68);
    sub_223A1289C(a2, a3, v8);

    sub_2239CDCEC(v8, &qword_27D0A49B0, &qword_223A22C68);
  }
}

uint64_t sub_223A12408()
{
  v1 = v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker____lazy_storage___timeFuzzer;
  if ((*(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker____lazy_storage___timeFuzzer + 25) & 1) == 0)
  {
    return *v1;
  }

  result = 0;
  *v1 = xmmword_223A23EC0;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  return result;
}

uint64_t RTCWorker.workerConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_workerConfig;
  v4 = sub_223A20BC0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t RTCWorker.isStarted.getter()
{
  v1 = OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_isStarted;
  swift_beginAccess();
  return *(v0 + v1);
}

double RTCWorker.summaryEvent.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_223A12570()
{
  v0 = sub_223A20B90();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4AA0, &unk_223A23390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_223A23280;
  (*(v1 + 104))(v3, *MEMORY[0x277CEF8E0], v0);
  v5 = sub_223A20B80();
  v7 = v6;
  (*(v1 + 8))(v3, v0);
  *(inited + 32) = v5;
  *(inited + 40) = v7;
  v8 = sub_2239D8250(inited);
  swift_setDeallocating();
  result = sub_223A13B14(inited + 32);
  qword_27D0A4E70 = v8;
  return result;
}

uint64_t RTCWorker.deinit()
{
  v1 = OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_workerConfig;
  v2 = sub_223A20BC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_session));
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_logger;
  v4 = sub_223A20FC0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_rtcConfig;
  v6 = sub_223A20DA0();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return v0;
}

uint64_t sub_223A127F4()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC22AudioAnalyticsExternal9RTCWorker_isStarted;
  swift_beginAccess();
  return *(v1 + v2);
}

double sub_223A1283C()
{
  if ((v0[8] & 1) == 0)
  {
    return *v0;
  }

  sub_2239C9920(0.0, 120000.0);
  result = v1 / -1000.0 + 60.0;
  *v0 = result;
  v0[8] = 0;
  return result;
}

double sub_223A1289C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_2239CDC74(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_223A096DC();
      v10 = v12;
    }

    sub_2239DA0A8((*(v10 + 56) + 32 * v8), a3);
    sub_223A12AB0(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_223A12940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_2239CDC74(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2239DAF30();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = sub_223A20680();
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    sub_223A12E30(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = sub_223A20680();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

void sub_223A12AB0(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_223A21650() + 1) & ~v5;
    do
    {
      sub_223A21940();

      sub_223A21290();
      v10 = sub_223A21970();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }
}

unint64_t sub_223A12C60(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_223A21650() + 1) & ~v5;
    while (1)
    {
      sub_223A21940();
      sub_223A21960();
      result = sub_223A21970();
      v9 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v9 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v10 = *(a2 + 48);
      v11 = (v10 + 2 * v3);
      v12 = (v10 + 2 * v6);
      if (v3 != v6 || v11 >= v12 + 1)
      {
        *v11 = *v12;
      }

      v13 = *(a2 + 56);
      v14 = *(*(sub_223A203C0() - 8) + 72);
      v15 = v14 * v3;
      result = v13 + v14 * v3;
      v16 = v14 * v6;
      v17 = v13 + v14 * v6 + v14;
      if (v15 < v16 || result >= v17)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v15 == v16)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v9 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v9)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

void sub_223A12E30(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_223A21650() + 1) & ~v5;
    while (1)
    {
      sub_223A21940();

      sub_223A21290();
      v9 = sub_223A21970();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(sub_223A20680() - 8) + 72);
      v16 = v15 * v3;
      v17 = v14 + v15 * v3;
      v18 = v15 * v6;
      v19 = v14 + v15 * v6 + v15;
      if (v16 < v18 || v17 >= v19)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v18)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

void sub_223A1301C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2239CDC74(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_223A096DC();
      v11 = v19;
      goto LABEL_8;
    }

    sub_223A08DF4(v16, a4 & 1);
    v11 = sub_2239CDC74(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_223A21910();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    sub_2239DA0A8(a1, v22);
  }

  else
  {
    sub_223A132F4(v11, a2, a3, a1, v21);
  }
}

void sub_223A1316C(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2239CDC74(a1, a2);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 < v16 || (a3 & 1) != 0)
    {
      sub_223A09410(v16, a3 & 1);
      v11 = sub_2239CDC74(a1, a2);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        sub_223A21910();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_223A09AE8();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a4;
    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a1;
  v22[1] = a2;
  *(v21[7] + 8 * v11) = a4;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

_OWORD *sub_223A132F4(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_2239DA0A8(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

_OWORD *sub_223A13360(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_2239DA0A8(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

void sub_223A133C8(uint64_t a1)
{
  v2 = a1;
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v7 = swift_slowAlloc();
      sub_223A13764(v7, v4, v2);
      MEMORY[0x223DF1300](v7, -1, -1);
      return;
    }
  }

  MEMORY[0x28223BE20](a1);
  v6 = v8 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v6, v5);
  sub_223A13528(v6, v4, v2);
  if (v1)
  {
    swift_willThrow();
  }
}

void sub_223A13528(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v26 = 0;
  v3 = 0;
  v4 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v29 = (v7 - 1) & v7;
LABEL_13:
    v27 = v9 | (v3 << 6);
    v12 = (*(a3 + 48) + 16 * v27);
    v14 = *v12;
    v13 = v12[1];
    v15 = qword_27D0A4800;

    if (v15 != -1)
    {
      swift_once();
    }

    v16 = qword_27D0A4E70;
    if (*(qword_27D0A4E70 + 16) && (sub_223A21940(), sub_223A21290(), v17 = sub_223A21970(), v18 = -1 << *(v16 + 32), v19 = v17 & ~v18, ((*(v16 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) != 0))
    {
      v20 = ~v18;
      while (1)
      {
        v21 = (*(v16 + 48) + 16 * v19);
        v22 = *v21 == v14 && v21[1] == v13;
        if (v22 || (sub_223A218F0() & 1) != 0)
        {
          break;
        }

        v19 = (v19 + 1) & v20;
        if (((*(v16 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      v7 = v29;
    }

    else
    {
LABEL_24:

      *(a1 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
      v23 = __OFADD__(v26++, 1);
      v7 = v29;
      if (v23)
      {
        goto LABEL_29;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      sub_2239D98A0(a1, a2, v26, a3);
      return;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v29 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
}

void *sub_223A13764(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    sub_223A13528(result, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

unint64_t *sub_223A137DC(unint64_t *result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_2239D9C20(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

unint64_t sub_223A1387C()
{
  result = qword_281332778[0];
  if (!qword_281332778[0])
  {
    type metadata accessor for RTCWorker(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_281332778);
  }

  return result;
}

uint64_t type metadata accessor for RTCWorker(uint64_t a1)
{
  result = qword_281333878;
  if (!qword_281333878)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_223A13928(uint64_t a1)
{
  result = sub_223A20BC0();
  if (v2 <= 0x3F)
  {
    result = sub_223A20FC0();
    if (v3 <= 0x3F)
    {
      result = sub_223A20DA0();
      if (v4 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_223A13AB4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_223A13AD4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 25) = v3;
  return result;
}

uint64_t sub_223A13B68(uint64_t a1, unsigned __int8 a2)
{
  sub_223A21940();
  sub_223A21290();

  return sub_223A21970();
}

uint64_t sub_223A13C9C(uint64_t a1, unsigned __int8 a2)
{
  sub_223A21940();
  sub_223A21290();

  return sub_223A21970();
}

Swift::Bool __swiftcall SessionSummaryWorker.start()()
{
  swift_beginAccess();
  *(v0 + 16) = 1;
  return 1;
}

void sub_223A13E5C()
{
  v0 = sub_223A20680();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = (&v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = MEMORY[0x28223BE20](v2);
  v7 = (&v53 - v6);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = (&v53 - v9);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = (&v53 - v12);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = (&v53 - v15);
  MEMORY[0x28223BE20](v14);
  v18 = (&v53 - v17);
  v19 = sub_223A20C40();
  if (!*(v19 + 16) || (v20 = sub_2239CDC74(0x656C6379635F6F69, 0xE800000000000000), (v21 & 1) == 0))
  {

    goto LABEL_21;
  }

  v22 = *(v19 + 56);
  v59 = *(v1 + 72);
  v60 = *(v1 + 16);
  v61 = v1 + 16;
  v60(v18, v22 + v59 * v20, v0);

  v58 = *(v1 + 88);
  v23 = v58(v18, v0);
  if (v23 != *MEMORY[0x277CEF840])
  {
    (*(v1 + 8))(v18, v0);
    return;
  }

  v54 = v23;
  v24 = *(v1 + 96);
  v56 = v1 + 96;
  v57 = v1 + 88;
  v55 = v24;
  v24(v18, v0);
  if (*v18 < 3)
  {
    return;
  }

  v25 = sub_223A20C40();
  if (*(v25 + 16) && (v26 = sub_2239CDC74(0xD000000000000015, 0x8000000223A24B10), (v27 & 1) != 0))
  {
    v60(v16, *(v25 + 56) + v26 * v59, v0);

    if (v58(v16, v0) == *MEMORY[0x277CEF860])
    {
      v55(v16, v0);
      v28 = *v16;
      v29 = v16[1];
      v53 = v28;
      v65 = v28;
      v66 = v29;
      v63 = 0x676E696B776148;
      v64 = 0xE700000000000000;
      sub_2239D1804();
      if (sub_223A21630())
      {
        goto LABEL_21;
      }

      v65 = v53;
      v66 = v29;
      v63 = 5263169;
      v64 = 0xE300000000000000;
      if (sub_223A21630())
      {
        goto LABEL_21;
      }

      v65 = v53;
      v66 = v29;
      v63 = 0x72656B63696C46;
      v64 = 0xE700000000000000;
      v52 = sub_223A21630();

      if (v52)
      {
        return;
      }
    }

    else
    {
      (*(v1 + 8))(v16, v0);
    }
  }

  else
  {
  }

  v30 = sub_223A20C40();
  if (*(v30 + 16) && (v31 = sub_2239CDC74(0xD000000000000016, 0x8000000223A24B30), (v32 & 1) != 0))
  {
    v60(v13, *(v30 + 56) + v31 * v59, v0);

    if (v58(v13, v0) == *MEMORY[0x277CEF860])
    {
      v55(v13, v0);
      v34 = *v13;
      v33 = v13[1];
      v65 = v34;
      v66 = v33;
      v63 = 0x726F746175746341;
      v64 = 0xE800000000000000;
      sub_2239D1804();
      if (sub_223A21630())
      {
LABEL_21:

        return;
      }

      v65 = v34;
      v66 = v33;
      v63 = 0x6E65676F6C6148;
      v64 = 0xE700000000000000;
      v51 = sub_223A21630();

      if (v51)
      {
        return;
      }
    }

    else
    {
      (*(v1 + 8))(v13, v0);
    }
  }

  else
  {
  }

  v35 = sub_223A20C40();
  if (*(v35 + 16) && (v36 = sub_2239CDC74(0x61776572705F7369, 0xED0000676E696D72), (v37 & 1) != 0))
  {
    v60(v10, *(v35 + 56) + v36 * v59, v0);

    if (v58(v10, v0) == *MEMORY[0x277CEF848])
    {
      v55(v10, v0);
      if (*v10)
      {
        return;
      }
    }

    else
    {
      (*(v1 + 8))(v10, v0);
    }
  }

  else
  {
  }

  v38 = sub_223A20C40();
  if (*(v38 + 16) && (v39 = sub_2239CDC74(0x766F6365725F7369, 0xED0000676E697265), (v40 & 1) != 0))
  {
    v60(v7, *(v38 + 56) + v39 * v59, v0);

    if (v58(v7, v0) == *MEMORY[0x277CEF848])
    {
      v55(v7, v0);
      if (*v7)
      {
        return;
      }
    }

    else
    {
      (*(v1 + 8))(v7, v0);
    }
  }

  else
  {
  }

  v41 = *(v62 + OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_audibleOverloadCount);
  v42 = __CFADD__(v41, 1);
  v43 = v41 + 1;
  if (v42)
  {
    __break(1u);
LABEL_53:
    __break(1u);
    return;
  }

  *(v62 + OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_audibleOverloadCount) = v43;
  v44 = sub_223A20C40();
  if (!*(v44 + 16))
  {
    goto LABEL_21;
  }

  v45 = sub_2239CDC74(0x5F656761705F6F69, 0xEE0073746C756166);
  if ((v46 & 1) == 0)
  {
    goto LABEL_21;
  }

  v60(v4, *(v44 + 56) + v45 * v59, v0);

  v47 = v58(v4, v0);
  if (v47 != v54)
  {
    (*(v1 + 8))(v4, v0);
    return;
  }

  v55(v4, v0);
  v48 = *v4;
  if (*v4 >= 1)
  {
    v49 = *(v62 + OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_audiblePageFaultCount);
    v42 = __CFADD__(v49, v48);
    v50 = v49 + v48;
    if (!v42)
    {
      *(v62 + OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_audiblePageFaultCount) = v50;
      return;
    }

    goto LABEL_53;
  }
}

unint64_t SessionSummaryWorker.SessionSummaryKeys.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x656C6379635F6F69;
    if (v1 != 1)
    {
      v5 = 0x5F656761705F6F69;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x79745F6575737369;
    }
  }

  else
  {
    v2 = 0xD000000000000015;
    if (v1 != 5)
    {
      v2 = 0xD000000000000016;
    }

    v3 = 0x61776572705F7369;
    if (v1 != 3)
    {
      v3 = 0x766F6365725F7369;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

double SessionSummaryWorker.summaryEvent.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t SessionSummaryWorker.workerConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_workerConfig;
  swift_beginAccess();
  v4 = sub_223A20BC0();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t SessionSummaryWorker.workerConfig.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_workerConfig;
  swift_beginAccess();
  v4 = sub_223A20BC0();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

double SessionSummaryWorker.neededPreviousFields.getter()
{
  swift_beginAccess();

  return result;
}

double SessionSummaryWorker.neededPreviousFields.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_neededPreviousFields;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

AudioAnalyticsExternal::SessionSummaryWorker::SessionSummaryKeys_optional __swiftcall SessionSummaryWorker.SessionSummaryKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_223A217E0();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

double sub_223A14B1C(uint64_t a1)
{
  sub_223A21290();

  return result;
}

void sub_223A14C5C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    v9 = 0xEA00000000006570;
    v10 = 0xE800000000000000;
    v11 = 0x656C6379635F6F69;
    if (v2 != 1)
    {
      v11 = 0x5F656761705F6F69;
      v10 = 0xEE0073746C756166;
    }

    v12 = v2 == 0;
    if (*v1)
    {
      v13 = v11;
    }

    else
    {
      v13 = 0x79745F6575737369;
    }

    if (!v12)
    {
      v9 = v10;
    }

    *a1 = v13;
    a1[1] = v9;
  }

  else
  {
    v3 = 0xD000000000000015;
    v4 = 0x8000000223A24B10;
    if (v2 != 5)
    {
      v3 = 0xD000000000000016;
      v4 = 0x8000000223A24B30;
    }

    v5 = 0x61776572705F7369;
    v6 = 0xED0000676E696D72;
    if (v2 != 3)
    {
      v5 = 0x766F6365725F7369;
      v6 = 0xED0000676E697265;
    }

    if (*v1 <= 4u)
    {
      v7 = v5;
    }

    else
    {
      v7 = v3;
    }

    if (*v1 <= 4u)
    {
      v8 = v6;
    }

    else
    {
      v8 = v4;
    }

    *a1 = v7;
    a1[1] = v8;
  }
}

uint64_t SessionSummaryWorker.deinit()
{

  v1 = OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_workerConfig;
  v2 = sub_223A20BC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_session));
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal20SessionSummaryWorker_logger;
  v4 = sub_223A20FC0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

unint64_t sub_223A14E28()
{
  result = qword_27D0A4D50;
  if (!qword_27D0A4D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A4D50);
  }

  return result;
}

uint64_t type metadata accessor for SessionSummaryWorker(uint64_t a1)
{
  result = qword_281333CD8;
  if (!qword_281333CD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_223A14ED0(uint64_t a1)
{
  result = sub_223A20BC0();
  if (v2 <= 0x3F)
  {
    result = sub_223A20FC0();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_223A15018@<X0>(uint64_t a1@<X0>, void (*a2)(char *, char *, uint64_t, __n128)@<X1>, uint64_t a3@<X8>)
{
  v65 = a2;
  v70 = *MEMORY[0x277D85DE8];
  v5 = sub_223A20810();
  v56 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v57 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4D98, &qword_223A24278);
  MEMORY[0x28223BE20](v7);
  v9 = (&v49 - v8);
  v10 = sub_223A20350();
  v59 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v66 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v49 - v14;
  MEMORY[0x28223BE20](v13);
  v54 = &v49 - v16;
  v55 = a1;
  v17 = sub_223A20C30();
  v58 = v5;
  if (!v18)
  {
    v17 = sub_223A20D30();
  }

  v19 = v17;
  v20 = v18;
  v68 = 0;
  v69 = 0xE000000000000000;
  sub_223A21700();

  v68 = 91;
  v69 = 0xE100000000000000;
  v21 = sub_223A208B0();
  MEMORY[0x223DF0390](v21);

  MEMORY[0x223DF0390](0xD000000000000026, 0x8000000223A26490);
  MEMORY[0x223DF0390](v19, v20);

  v22 = v68;
  v52 = v69;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4BA8, &unk_223A23A20);
  v23 = v59;
  v24 = *(v59 + 72);
  v25 = (*(v59 + 80) + 32) & ~*(v59 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_223A23280;
  v27 = *(v23 + 16);
  v62 = v25;
  v63 = v27;
  v64 = v23 + 16;
  v27((v26 + v25), v65, v10);
  v68 = v26;
  if (qword_27D0A4808 != -1)
  {
LABEL_33:
    swift_once();
  }

  v28 = __swift_project_value_buffer(v7, qword_27D0A4D58);
  sub_223A15D0C(v28, v9);
  v29 = (*(v23 + 48))(v9, 1, v10);
  v53 = v22;
  if (v29 == 1)
  {
    sub_223A15D7C(v9);
    goto LABEL_29;
  }

  v61 = v24;
  v51 = a3;
  v65 = *(v23 + 32);
  (v65)(v54, v9, v10);
  v24 = [objc_opt_self() defaultManager];
  v30 = sub_223A202F0();
  v67 = 0;
  v31 = [v24 contentsOfDirectoryAtURL:v30 includingPropertiesForKeys:0 options:4 error:&v67];

  v32 = v67;
  if (v31)
  {
    a3 = sub_223A21380();
    v33 = v32;

    v60 = *(a3 + 16);
    if (v60)
    {
      v22 = 0;
      v7 = a3 + v62;
      v50 = (v59 + 8);
      v9 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v22 >= *(a3 + 16))
        {
          __break(1u);
          goto LABEL_33;
        }

        v63(v15, v7, v10);
        sub_223A202D0();
        v23 = v34;
        v35 = sub_223A21250();
        v37 = v36;

        if (v35 == 6709603 && v37 == 0xE300000000000000)
        {
          break;
        }

        if ((sub_223A218F0() & 1) != 0 || v35 == 0x6E6970736C696174 && v37 == 0xE800000000000000)
        {
          break;
        }

        v24 = sub_223A218F0();

        if (v24)
        {
          goto LABEL_16;
        }

        (*v50)(v15, v10);
        v40 = v61;
LABEL_21:
        ++v22;
        v7 += v40;
        if (v60 == v22)
        {
          goto LABEL_27;
        }
      }

LABEL_16:
      (v65)(v66, v15, v10);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v67 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_223A02E84(0, v9[2] + 1, 1);
        v9 = v67;
      }

      v23 = v9[2];
      v39 = v9[3];
      v24 = v23 + 1;
      if (v23 >= v39 >> 1)
      {
        sub_223A02E84((v39 > 1), v23 + 1, 1);
        v9 = v67;
      }

      v9[2] = v24;
      v40 = v61;
      (v65)(v9 + v62 + v23 * v61, v66, v10);
      goto LABEL_21;
    }

    v9 = MEMORY[0x277D84F90];
LABEL_27:

    v23 = v59;
  }

  else
  {
    v41 = v67;
    v42 = sub_223A202A0();

    swift_willThrow();
    v9 = MEMORY[0x277D84F90];
  }

  sub_223A15F50(v9);
  (*(v23 + 8))(v54, v10);
  a3 = v51;
LABEL_29:
  v44 = v57;
  v43 = v58;
  v45 = v56;
  sub_223A15DE4();
  if (qword_27D0A4810 != -1)
  {
    swift_once();
  }

  v46 = __swift_project_value_buffer(v43, qword_27D0A4D70);
  (*(v45 + 16))(v44, v46, v43);
  sub_223A20620();
  v47 = sub_223A20630();
  return (*(*(v47 - 8) + 56))(a3, 0, 1, v47);
}

uint64_t sub_223A157F8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4D98, &qword_223A24278);
  MEMORY[0x28223BE20](v0);
  v2 = &v11 - v1;
  v3 = sub_223A202C0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v0, qword_27D0A4D58);
  v7 = __swift_project_value_buffer(v0, qword_27D0A4D58);
  (*(v4 + 104))(v6, *MEMORY[0x277CC91C0], v3);
  v8 = sub_223A20350();
  v9 = *(*(v8 - 8) + 56);
  v9(v2, 1, 1, v8);
  sub_223A20320();
  return (v9)(v7, 0, 1, v8);
}

uint64_t sub_223A159CC()
{
  v0 = sub_223A20810();
  __swift_allocate_value_buffer(v0, qword_27D0A4D70);
  __swift_project_value_buffer(v0, qword_27D0A4D70);
  return sub_223A20800();
}

uint64_t sub_223A15A44()
{
  v1 = OBJC_IVAR____TtC22AudioAnalyticsExternal11SiriTTSCase_name;
  v2 = sub_223A20850();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal11SiriTTSCase_tailspinRequest + 16);
  sub_2239E9D64(*(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal11SiriTTSCase_tailspinRequest));
  sub_2239E9D64(v3);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SiriTTSCase(uint64_t a1)
{
  result = qword_27D0A4D88;
  if (!qword_27D0A4D88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_223A15B70(uint64_t a1)
{
  result = sub_223A20850();
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

uint64_t sub_223A15C34@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal11SiriTTSCase_name;
  v4 = sub_223A20850();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_223A15CAC()
{
  v1 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal11SiriTTSCase_tailspinRequest);
  v2 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal11SiriTTSCase_tailspinRequest + 16);
  sub_2239E9D54(v1);
  sub_2239E9D54(v2);
  return v1;
}

uint64_t sub_223A15D0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4D98, &qword_223A24278);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_223A15D7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4D98, &qword_223A24278);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_223A15DE4()
{
  sub_223A21700();
  MEMORY[0x223DF0390](0x4954204555535349, 0xEC000000203A454DLL);
  sub_223A20D00();
  sub_223A21400();
  v0 = sub_223A213F0();
  v2 = v1;

  MEMORY[0x223DF0390](v0, v2);

  MEMORY[0x223DF0390](0xD000000000000025, 0x8000000223A26510);
  v3 = sub_223A208B0();
  MEMORY[0x223DF0390](v3);

  MEMORY[0x223DF0390](0xD00000000000005DLL, 0x8000000223A25C50);
  v4 = sub_223A20CF0();
  MEMORY[0x223DF0390](v4);

  MEMORY[0x223DF0390](0xD000000000000016, 0x8000000223A25B10);
  v5 = sub_223A16670();
  MEMORY[0x223DF0390](v5);

  return 0;
}

void sub_223A15F7C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(a1 + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(a1 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
}

Swift::Bool __swiftcall SummaryDecoratorWorker.start()()
{
  swift_beginAccess();
  *(v0 + 16) = 1;
  return 1;
}

double SummaryDecoratorWorker.summaryEvent.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t SummaryDecoratorWorker.workerConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal22SummaryDecoratorWorker_workerConfig;
  swift_beginAccess();
  v4 = sub_223A20BC0();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t SummaryDecoratorWorker.workerConfig.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal22SummaryDecoratorWorker_workerConfig;
  swift_beginAccess();
  v4 = sub_223A20BC0();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t SummaryDecoratorWorker.deinit()
{

  v1 = OBJC_IVAR____TtC22AudioAnalyticsExternal22SummaryDecoratorWorker_workerConfig;
  v2 = sub_223A20BC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal22SummaryDecoratorWorker_session));

  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal22SummaryDecoratorWorker_logger;
  v4 = sub_223A20FC0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t sub_223A16444(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for SummaryDecoratorWorker(uint64_t a1)
{
  result = qword_281333998;
  if (!qword_281333998)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_223A164E0(uint64_t a1)
{
  result = sub_223A20BC0();
  if (v2 <= 0x3F)
  {
    result = sub_223A20FC0();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_223A16604()
{

  return swift_deallocClassInstance();
}

uint64_t sub_223A16670()
{
  v0 = MEMORY[0x223DEF9B0]();
  sub_223A208A0();
  v1 = sub_223A208E0();
  v3 = v2;
  v4 = sub_223A20890();
  sub_223A21700();
  MEMORY[0x223DF0390](0xD000000000000011, 0x8000000223A26640);
  if (v0)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (v0)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x223DF0390](v5, v6);

  MEMORY[0x223DF0390](0xD000000000000010, 0x8000000223A26660);
  MEMORY[0x223DF0390](v1, v3);

  MEMORY[0x223DF0390](0x776F5020776F4C0ALL, 0xEC000000203A7265);
  if (v4)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (v4)
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x223DF0390](v7, v8);

  return 0;
}

uint64_t sub_223A167D0()
{
  type metadata accessor for TailspinManager(0);
  swift_allocObject();
  result = sub_223A16810();
  qword_281335A60 = result;
  return result;
}

uint64_t sub_223A16810()
{
  v1 = v0;
  v46 = sub_223A21520();
  MEMORY[0x28223BE20](v46);
  v45 = v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_223A21540();
  v3 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v44 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_223A21090();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for OverloadOptions(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TailspinOptions(0);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v12 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(aBlock) = 0;
  sub_223A20610();
  LOBYTE(aBlock) = 1;
  sub_223A20610();
  LOBYTE(aBlock) = 0;
  sub_223A20610();
  v13 = *(v10 + 36);
  v12[v13] = sub_223A20E90() & 1;
  v14 = *(v10 + 40);
  v12[v14] = sub_223A20E20() & 1;
  LOBYTE(aBlock) = 0;
  sub_223A20610();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4DC0, &qword_223A245B0);
  v15 = swift_allocObject();
  *(v15 + ((*(*v15 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  v16 = MEMORY[0x277D841D0];
  sub_223A19A8C(v12, v15 + *(*v15 + *MEMORY[0x277D841D0] + 16), type metadata accessor for TailspinOptions);
  *(v1 + 16) = v15;
  sub_223A1AAA0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4DC8, &qword_223A245B8);
  v17 = swift_allocObject();
  *(v17 + ((*(*v17 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_223A19A8C(v8, v17 + *(*v17 + *v16 + 16), type metadata accessor for OverloadOptions);
  *(v1 + 24) = v17;
  type metadata accessor for TailspinStatus();
  swift_allocObject();
  *(v1 + 32) = sub_223A19FC4();
  *(v1 + 40) = 0;
  *(v1 + 48) = 1;
  v39[1] = sub_2239E7EF4(0, &qword_281332718, 0x277D85C78);
  sub_223A21060();
  v40 = *MEMORY[0x277D85268];
  v18 = *(v3 + 104);
  v41 = v3 + 104;
  v43 = v18;
  v19 = v44;
  v18(v44);
  aBlock = MEMORY[0x277D84F90];
  v39[0] = sub_223A19AF4(&qword_281332720, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4818, &qword_223A224B0);
  sub_2239C9B30(&qword_281332738, &qword_27D0A4818, &qword_223A224B0);
  sub_223A21640();
  *(v1 + 56) = sub_223A21570();
  sub_223A21060();
  v43(v19, v40, v42);
  aBlock = MEMORY[0x277D84F90];
  sub_223A21640();
  *(v1 + 64) = sub_223A21570();
  sub_223A21470();
  *(v1 + 72) = v20;
  sub_223A21470();
  *(v1 + 80) = v21;
  sub_223A1945C();
  *(v1 + OBJC_IVAR____TtC22AudioAnalyticsExternal15TailspinManager_defaultsChangedToken) = 0;
  sub_223A20F90();
  v22 = OBJC_IVAR____TtC22AudioAnalyticsExternal15TailspinManager_fileManager;
  *(v1 + v22) = [objc_opt_self() defaultManager];
  v23 = OBJC_IVAR____TtC22AudioAnalyticsExternal15TailspinManager_tailspinDumpOutputOptions;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4DD0, &unk_223A24A20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_223A22B70;
  *(inited + 32) = sub_223A21220();
  *(inited + 40) = v25;
  sub_2239E7EF4(0, &qword_2813326F8, 0x277CCABB0);
  *(inited + 48) = sub_223A21580();
  *(inited + 56) = sub_223A21220();
  *(inited + 64) = v26;
  *(inited + 72) = sub_223A21580();
  v27 = sub_223A0A14C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4DD8, &unk_223A245C0);
  swift_arrayDestroy();
  *(v1 + v23) = v27;
  v28 = OBJC_IVAR____TtC22AudioAnalyticsExternal15TailspinManager_tailspin;
  type metadata accessor for VerboseTailspin(0);
  swift_allocObject();
  *(v1 + v28) = sub_223A1F548();
  v29 = OBJC_IVAR____TtC22AudioAnalyticsExternal15TailspinManager_periodicTailspinVerificationClosure;
  sub_223A20930();
  sub_223A21420();
  *(v1 + v29) = sub_223A20910();
  sub_223A19AF4(&qword_281333370, type metadata accessor for TailspinManager, &unk_223A244C0);

  sub_223A20870();

  v30 = *(v1 + 64);
  v31 = swift_allocObject();
  *(v31 + 16) = sub_223A19B54;
  *(v31 + 24) = v1;
  v51 = sub_223A19B58;
  v52 = v31;
  aBlock = MEMORY[0x277D85DD0];
  v48 = 1107296256;
  v49 = sub_2239CA2AC;
  v50 = &block_descriptor_30;
  v32 = _Block_copy(&aBlock);

  dispatch_sync(v30, v32);
  _Block_release(v32);
  LOBYTE(v30) = swift_isEscapingClosureAtFileLocation();

  if (v30)
  {
    __break(1u);
  }

  else
  {
    v34 = *(v1 + 64);
    v35 = swift_allocObject();
    swift_weakInit();
    v51 = sub_223A19B3C;
    v52 = v35;
    aBlock = MEMORY[0x277D85DD0];
    v48 = 1107296256;
    v49 = sub_223A176A8;
    v50 = &block_descriptor_36_0;
    v36 = _Block_copy(&aBlock);
    v37 = v34;

    v38 = OBJC_IVAR____TtC22AudioAnalyticsExternal15TailspinManager_defaultsChangedToken;
    swift_beginAccess();
    notify_register_dispatch("com.apple.coreaudio.audioanalytics.tailspin.defaultsChanged", (v1 + v38), v37, v36);
    swift_endAccess();
    _Block_release(v36);

    return v1;
  }

  return result;
}

uint64_t sub_223A17274(uint64_t a1, uint64_t a2)
{
  v2 = sub_223A21040();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_223A21090();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_223A20FC0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    v28 = v6;
    v29 = v3;
    sub_223A20F90();
    v16 = sub_223A20FB0();
    v17 = sub_223A214D0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v27 = v9;
      v19 = v5;
      v20 = v2;
      v21 = v7;
      v22 = v18;
      *v18 = 0;
      _os_log_impl(&dword_2239C7000, v16, v17, "Tailspin Defaults Changed Notification received. Re-reading user defaults.", v18, 2u);
      v23 = v22;
      v7 = v21;
      v2 = v20;
      v5 = v19;
      v9 = v27;
      MEMORY[0x223DF1300](v23, -1, -1);
    }

    (*(v11 + 8))(v13, v10);
    sub_2239CA2D4();

    v24 = sub_2239C9DF4();

    if (v24)
    {
      v27 = *(v15 + 56);
      aBlock[4] = sub_223A19B6C;
      aBlock[5] = v15;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2239EC158;
      aBlock[3] = &block_descriptor_39;
      v25 = _Block_copy(aBlock);

      sub_223A21050();
      v30 = MEMORY[0x277D84F90];
      sub_223A19AF4(&qword_27D0A48C8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A48D0, &qword_223A22BE0);
      sub_2239C9B30(&qword_27D0A48D8, &qword_27D0A48D0, &qword_223A22BE0);
      sub_223A21640();
      MEMORY[0x223DF0640](0, v9, v5, v25);
      _Block_release(v25);
      (*(v29 + 8))(v5, v2);
      (*(v7 + 8))(v9, v28);
    }
  }

  return result;
}

uint64_t sub_223A176A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_223A176FC()
{
  v1 = OBJC_IVAR____TtC22AudioAnalyticsExternal15TailspinManager_defaultsChangedToken;
  swift_beginAccess();
  notify_cancel(*(v0 + v1));

  v2 = OBJC_IVAR____TtC22AudioAnalyticsExternal15TailspinManager_tailspinDirectory;
  v3 = sub_223A20350();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = OBJC_IVAR____TtC22AudioAnalyticsExternal15TailspinManager_logger;
  v5 = sub_223A20FC0();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  return v0;
}

uint64_t sub_223A17830()
{
  sub_223A176FC();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TailspinManager(uint64_t a1)
{
  result = qword_281333360;
  if (!qword_281333360)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_223A178DC(uint64_t a1)
{
  result = sub_223A20350();
  if (v2 <= 0x3F)
  {
    result = sub_223A20FC0();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void sub_223A17A10(uint64_t a1, uint64_t a2, void *a3, void *a4, void (*a5)(uint64_t, uint64_t), uint64_t a6, void (*a7)(uint64_t, uint64_t), uint64_t a8, uint64_t a9, char *a10, uint64_t a11)
{
  v73 = a7;
  v74 = a8;
  v72 = a6;
  v71 = a5;
  v15 = a10;
  v76 = a9;
  v77 = a11;
  v16 = sub_223A21040();
  v81 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v80 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_223A21090();
  v79 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v78 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4D98, &qword_223A24278);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v68 - v21;
  v23 = sub_223A20350();
  v24 = *(v23 - 8);
  v82 = v23;
  v83 = v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v68 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v68 - v28;
  if (*(a1 + 48))
  {
    v30 = 0.0;
  }

  else
  {
    v30 = *(a1 + 40);
  }

  v75 = a2;
  sub_223A20D00();
  v32 = v30 - v31;
  if (v32 <= 0.0)
  {
    v70 = v18;
    swift_getKeyPath();

    sub_223A20F20();

    v36 = LOBYTE(aBlock[0]);
    if ((sub_223A208C0() & 1) != 0 && v36)
    {
      notify_post("com.apple.coreaudio.audiocapturer.notification");
      v37 = sub_223A20FB0();
      v38 = sub_223A214E0();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v69 = a10;
        v40 = v29;
        v41 = v16;
        v42 = v39;
        *v39 = 0;
        _os_log_impl(&dword_2239C7000, v37, v38, "Overload detected - audio capturer notification posted.", v39, 2u);
        v43 = v42;
        v16 = v41;
        v29 = v40;
        v15 = v69;
        MEMORY[0x223DF1300](v43, -1, -1);
      }
    }

    sub_223A18324(a3, a4, v22);
    v45 = v82;
    v44 = v83;
    if ((v83[6].isa)(v22, 1, v82) == 1)
    {
      sub_2239CDCEC(v22, &qword_27D0A4D98, &qword_223A24278);
      sub_223A21410();
      *(a1 + 40) = v46 + *(a1 + 80);
      *(a1 + 48) = 0;
    }

    else
    {
      (v44[4].isa)(v29, v22, v45);
      v47 = sub_223A20FB0();
      v48 = sub_223A21500();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&dword_2239C7000, v47, v48, "Dropped tailspin.", v49, 2u);
        MEMORY[0x223DF1300](v49, -1, -1);
      }

      sub_223A21410();
      *(a1 + 40) = v50 + *(a1 + 72);
      *(a1 + 48) = 0;
      notify_post("com.apple.coreaudio.audioanalytics.tailspin.dropped-tailspin");
      swift_getKeyPath();

      sub_223A20F20();

      if (LOBYTE(aBlock[0]) == 1)
      {
        v51 = v29;
        v52 = v83;
        isa = v83[2].isa;
        v69 = v51;
        (isa)(v27);
        v54 = sub_223A20FB0();
        v55 = sub_223A21500();
        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          aBlock[0] = v57;
          *v56 = 136380675;
          v58 = sub_223A20310();
          v68 = v16;
          v60 = v59;
          (v52[1].isa)(v27, v82);
          v61 = sub_2239E1910(v58, v60, aBlock);
          v16 = v68;

          *(v56 + 4) = v61;
          _os_log_impl(&dword_2239C7000, v54, v55, "Submitting tailspin via diagnostic request. { path=%{private}s }", v56, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v57);
          MEMORY[0x223DF1300](v57, -1, -1);
          MEMORY[0x223DF1300](v56, -1, -1);
        }

        else
        {

          v62.n128_f64[0] = (v52[1].isa)(v27, v45);
        }

        v29 = v69;
        sub_223A18CFC(v62);
      }

      swift_getKeyPath();

      sub_223A20F20();

      if (aBlock[0] & 1) == 0 && (sub_223A18FD0(v71, v72, v73, v74, v75, v29))
      {
        notify_post("com.apple.coreaudio.audioanalytics.tailspin.surfaced-notification");
      }

      v63 = swift_allocObject();
      v64 = v77;
      *(v63 + 16) = v15;
      *(v63 + 24) = v64;
      aBlock[4] = sub_2239CAA60;
      aBlock[5] = v63;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2239EC158;
      aBlock[3] = &block_descriptor_4;
      v65 = _Block_copy(aBlock);

      v66 = v78;
      sub_223A21050();
      v84 = MEMORY[0x277D84F90];
      sub_223A19AF4(&qword_27D0A48C8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A48D0, &qword_223A22BE0);
      sub_2239C9B30(&qword_27D0A48D8, &qword_27D0A48D0, &qword_223A22BE0);
      v67 = v80;
      sub_223A21640();
      MEMORY[0x223DF0640](0, v66, v67, v65);
      _Block_release(v65);
      (*(v81 + 8))(v67, v16);
      (*(v79 + 8))(v66, v70);
      (v83[1].isa)(v29, v82);
    }
  }

  else
  {
    v83 = sub_223A20FB0();
    v33 = sub_223A21500();
    if (os_log_type_enabled(v83, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 134217984;
      *(v34 + 4) = v32;
      _os_log_impl(&dword_2239C7000, v83, v33, "Not dropping tailspin: Issue occurred before latest tailspin dump. { lateness=%f }", v34, 0xCu);
      MEMORY[0x223DF1300](v34, -1, -1);
    }

    v35 = v83;
  }
}

uint64_t sub_223A18324@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v69 = a1;
  v70 = a2;
  v74 = a3;
  v77[2] = *MEMORY[0x277D85DE8];
  v4 = sub_223A20E00();
  v67 = *(v4 - 8);
  v68 = v4;
  MEMORY[0x28223BE20](v4);
  v65 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_223A20E10();
  v64 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v63 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_223A21010();
  v72 = *(v7 - 8);
  v73 = v7;
  MEMORY[0x28223BE20](v7);
  v71 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_223A202C0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_223A20350();
  v75 = *(v13 - 8);
  v76 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v62 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = (&v62 - v16);
  v18 = *(v3 + OBJC_IVAR____TtC22AudioAnalyticsExternal15TailspinManager_fileManager);
  v19 = sub_223A202F0();
  sub_223A20ED0();
  type metadata accessor for FileAttributeKey(0);
  sub_223A19AF4(&qword_27D0A4918, type metadata accessor for FileAttributeKey, &unk_223A229D8);
  v20 = sub_223A21100();

  v77[0] = 0;
  LODWORD(v18) = [v18 createDirectoryAtURL:v19 withIntermediateDirectories:1 attributes:v20 error:v77];

  v21 = v77[0];
  if (v18)
  {
    v77[0] = v69;
    v77[1] = v70;
    (*(v10 + 104))(v12, *MEMORY[0x277CC91D8], v9);
    sub_2239D1804();
    v22 = v21;
    sub_223A20330();
    (*(v10 + 8))(v12, v9);
    v23 = sub_223A20310();
    v24 = v71;
    v25 = MEMORY[0x223DF0100](v23);
    MEMORY[0x28223BE20](v25);
    *(&v62 - 2) = 0x20000000002;
    *(&v62 - 2) = 16777654;
    sub_223A21000();
    v72[1](v24, v73);
    LODWORD(v73) = v77[0];
    v40 = v75;
    v39 = v76;
    v41 = *(v75 + 16);
    v42 = v62;
    v72 = v17;
    v69 = v41;
    v70 = (v75 + 16);
    v41(v62, v17, v76);
    v43 = sub_223A20FB0();
    v44 = sub_223A21500();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v77[0] = v46;
      *v45 = 136380675;
      v47 = sub_223A20310();
      v49 = v48;
      v71 = *(v75 + 8);
      (v71)(v42, v76);
      v50 = sub_2239E1910(v47, v49, v77);
      v40 = v75;

      *(v45 + 4) = v50;
      _os_log_impl(&dword_2239C7000, v43, v44, "Dropping tailspin using tailspin_dump_output api. { path=%{private}s }", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v46);
      v51 = v46;
      v39 = v76;
      MEMORY[0x223DF1300](v51, -1, -1);
      MEMORY[0x223DF1300](v45, -1, -1);
    }

    else
    {

      v71 = *(v40 + 8);
      (v71)(v42, v39);
    }

    v52 = v64;
    v53 = v63;
    v54 = v66;
    (*(v64 + 104))(v63, *MEMORY[0x277CEFA18], v66);
    sub_223A20DF0();
    sub_223A20DC0();
    sub_223A20DD0();
    sub_223A20DE0();
    v55 = v65;
    sub_223A20DB0();
    sub_223A20BA0();
    (*(v67 + 8))(v55, v68);
    (*(v52 + 8))(v53, v54);
    v56 = sub_223A1EFB8();
    sub_223A0F840(v56);

    v57 = sub_223A21100();

    v58 = tailspin_dump_output_with_options_sync();

    if (v58)
    {
      v59 = v74;
      v60 = v72;
      (v69)(v74, v72, v39);
      v61 = 0;
    }

    else
    {
      v61 = 1;
      v59 = v74;
      v60 = v72;
    }

    (*(v40 + 56))(v59, v61, 1, v39);
    sub_223A196D8(v73);
    return (v71)(v60, v39);
  }

  else
  {
    v26 = v77[0];
    v27 = sub_223A202A0();

    swift_willThrow();
    v29 = v75;
    v28 = v76;
    v30 = v27;
    v31 = sub_223A20FB0();
    v32 = sub_223A214E0();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v77[0] = v34;
      *v33 = 136380675;
      swift_getErrorValue();
      v35 = sub_223A21920();
      v37 = sub_2239E1910(v35, v36, v77);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_2239C7000, v31, v32, "TailspinManager failed to drop tailspin. { error=%{private}s }", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x223DF1300](v34, -1, -1);
      MEMORY[0x223DF1300](v33, -1, -1);
    }

    else
    {
    }

    return (*(v29 + 56))(v74, 1, 1, v28);
  }
}

void *sub_223A18C94@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for TailspinOptions(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C90, "f0");
  result = sub_223A205F0();
  *a1 = v3;
  return result;
}

void sub_223A18CFC(__n128 a1)
{
  sub_223A20C30();
  if (!v1)
  {
    sub_223A20D30();
  }

  v2 = sub_223A20C10();
  v3 = sub_223A211F0();
  v4 = sub_223A211F0();
  v5 = sub_223A211F0();

  sub_2239D6C54(v2);

  v6 = sub_223A21100();

  v7 = sub_223A211F0();
  sub_223A20300();
  v8 = sub_223A211F0();

  DRSubmitLog();
}

uint64_t sub_223A18FD0(void (*a1)(uint64_t, uint64_t), uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28[2] = a4;
  v29 = a5;
  v30 = a6;
  v28[3] = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4DA8, &qword_223A24568);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v28 - v9;
  v11 = sub_223A20A20();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4DB0, &unk_223A24570);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v28 - v16;
  v18 = sub_223A20630();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_223A208C0())
  {
    if (a1)
    {
      v22 = a1;

      if ((sub_223A20690() & 1) == 0)
      {
        v23 = sub_223A20FB0();
        v24 = sub_223A214E0();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          *v25 = 0;
          v26 = "TapToRadarKit is not available.";
          goto LABEL_12;
        }

LABEL_13:
        sub_2239E9D64(v22);

        return 0;
      }

      a1(v29, v30);
      if ((*(v19 + 48))(v17, 1, v18) == 1)
      {
        sub_2239CDCEC(v17, &qword_27D0A4DB0, &unk_223A24570);
        v23 = sub_223A20FB0();
        v24 = sub_223A214E0();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          *v25 = 0;
          v26 = "RadarDraft object is nil. Not surfacing notification.";
LABEL_12:
          _os_log_impl(&dword_2239C7000, v23, v24, v26, v25, 2u);
          MEMORY[0x223DF1300](v25, -1, -1);
          goto LABEL_13;
        }

        goto LABEL_13;
      }

      (*(v19 + 32))(v21, v17, v18);
      sub_223A20B50();
      sub_223A20B40();
      sub_223A20B30();
      sub_2239E9D64(a1);

      (*(v19 + 8))(v21, v18);
    }
  }

  else if (a3)
  {

    a3(v29, v30);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_2239E9D64(a3);
      sub_2239CDCEC(v10, &qword_27D0A4DA8, &qword_223A24568);
      return 0;
    }

    (*(v12 + 32))(v14, v10, v11);
    sub_223A20B50();
    sub_223A20B40();
    sub_223A20B20();
    sub_2239E9D64(a3);

    (*(v12 + 8))(v14, v11);
  }

  return 1;
}

uint64_t sub_223A1945C()
{
  v0 = sub_223A202C0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_223A20350();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_223A208C0())
  {

    return MEMORY[0x2821423F8]();
  }

  else
  {
    v11 = [objc_opt_self() defaultManager];
    v8 = NSTemporaryDirectory();
    sub_223A21220();

    sub_223A202E0();

    v12 = 0x6E6970736C696154;
    v13 = 0xE900000000000073;
    (*(v1 + 104))(v3, *MEMORY[0x277CC91D8], v0);
    sub_2239D1804();
    sub_223A20340();

    (*(v1 + 8))(v3, v0);
    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_223A196CC(uint64_t result)
{
  if (result)
  {
    return sub_2239C9B84();
  }

  return result;
}

uint64_t sub_223A196D8(uint64_t a1)
{
  v1 = sub_223A20FC0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_223A20FF0();
  if ((result & 0x100000000) != 0)
  {
    LODWORD(v18) = result;
    v6 = result;
    sub_223A199C8();
    swift_willThrowTypedImpl();
    v7 = swift_allocError();
    *v8 = v6;
    sub_223A20F90();
    v9 = v7;
    v10 = sub_223A20FB0();
    v11 = sub_223A214E0();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18 = v13;
      *v12 = 136380675;
      swift_getErrorValue();
      v14 = sub_223A21920();
      v16 = sub_2239E1910(v14, v15, &v18);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_2239C7000, v10, v11, "Failed to close file descriptor. { error=%{private}s }", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x223DF1300](v13, -1, -1);
      MEMORY[0x223DF1300](v12, -1, -1);
    }

    else
    {
    }

    return (*(v2 + 8))(v4, v1);
  }

  return result;
}

uint64_t sub_223A1990C@<X0>(_DWORD *a5@<X8>)
{
  result = sub_223A20FE0();
  if ((result & 0x100000000) != 0)
  {
    v7 = result;
    sub_223A199C8();
    swift_willThrowTypedImpl();
    result = swift_allocError();
    *v8 = v7;
  }

  else
  {
    *a5 = result;
  }

  return result;
}

unint64_t sub_223A199C8()
{
  result = qword_27D0A4DB8;
  if (!qword_27D0A4DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A4DB8);
  }

  return result;
}

uint64_t sub_223A19A8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_223A19AF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_223A19B70(char a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  sub_223A20A80();
  sub_223A20A90();
  sub_223A20A70();

  v3 = *(v1 + 32);
  v4 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v3 + v4));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C90, "f0");
  sub_223A205C0();
  os_unfair_lock_unlock((v3 + v4));
}

char *sub_223A19D10()
{
  result = sub_223A19D30();
  qword_2813336D8 = result;
  return result;
}

char *sub_223A19D30()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4AA0, &unk_223A23390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_223A22B70;
  *(inited + 32) = 0xD000000000000017;
  *(inited + 40) = 0x8000000223A26A20;
  *(inited + 48) = 0xD000000000000019;
  *(inited + 56) = 0x8000000223A26A40;
  result = sub_2239E1804(1, 3, 1, inited);
  *(result + 2) = 3;
  *(result + 8) = 0xD000000000000010;
  *(result + 9) = 0x8000000223A26A60;
  return result;
}

double static TailspinKeys.all.getter()
{
  if (qword_2813336D0 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TailspinKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for TailspinKeys(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_223A19F58()
{

  return swift_deallocClassInstance();
}

uint64_t sub_223A19FC4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C90, "f0");
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11[-v4];
  sub_223A20B70();
  sub_223A20A30();
  *(v0 + 16) = sub_223A20B60();
  v11[15] = 0;
  sub_223A20610();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4DE0, &unk_223A24660);
  v6 = swift_allocObject();
  *(v6 + ((*(*v6 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  v7 = MEMORY[0x277D841D0];
  v8 = *(v3 + 32);
  v8(v6 + *(*v6 + *MEMORY[0x277D841D0] + 16), v5, v2);
  *(v0 + 24) = v6;
  v11[14] = 0;
  sub_223A20610();
  v9 = swift_allocObject();
  *(v9 + ((*(*v9 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  v8(v9 + *(*v9 + *v7 + 16), v5, v2);
  *(v1 + 32) = v9;
  return v1;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

void sub_223A1A2D8(uint64_t a1)
{
  sub_223A1A3B0(319, &qword_281333708, MEMORY[0x277D84CC0]);
  if (v1 <= 0x3F)
  {
    sub_223A1A3B0(319, &qword_2813344B8, MEMORY[0x277D839B0]);
    if (v2 <= 0x3F)
    {
      sub_223A1A3B0(319, &qword_281333710, MEMORY[0x277D837D0]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_223A1A3B0(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_223A20600();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_223A1A424(uint64_t a1)
{
  sub_223A1A3B0(319, &qword_2813344B8, MEMORY[0x277D839B0]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_223A1A4B0()
{
  type metadata accessor for TailspinOptions(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C90, "f0");
  sub_223A205F0();
  return v1;
}

uint64_t sub_223A1A504()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C90, "f0");
  sub_223A205F0();
  return v1;
}

uint64_t sub_223A1A540()
{
  sub_223A21700();
  MEMORY[0x223DF0390](0xD000000000000015, 0x8000000223A26BC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C90, "f0");
  sub_223A205F0();
  if (v15)
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (v15)
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x223DF0390](v1, v2);

  MEMORY[0x223DF0390](0xD00000000000001ALL, 0x8000000223A26BE0);
  v3 = type metadata accessor for TailspinOptions(0);
  sub_223A205F0();
  if (v15)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (v15)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x223DF0390](v4, v5);

  MEMORY[0x223DF0390](0xD000000000000016, 0x8000000223A26C00);
  sub_223A205F0();
  if (v15)
  {
    v6 = 1702195828;
  }

  else
  {
    v6 = 0x65736C6166;
  }

  if (v15)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  MEMORY[0x223DF0390](v6, v7);

  MEMORY[0x223DF0390](0xD000000000000017, 0x8000000223A26C20);
  if (*(v0 + *(v3 + 28)))
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (*(v0 + *(v3 + 28)))
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x223DF0390](v8, v9);

  MEMORY[0x223DF0390](0xD000000000000021, 0x8000000223A26C40);
  if (*(v0 + *(v3 + 32)))
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (*(v0 + *(v3 + 32)))
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  MEMORY[0x223DF0390](v10, v11);

  MEMORY[0x223DF0390](0xD000000000000017, 0x8000000223A26C70);
  sub_223A205F0();
  if (v15)
  {
    v12 = 1702195828;
  }

  else
  {
    v12 = 0x65736C6166;
  }

  if (v15)
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  MEMORY[0x223DF0390](v12, v13);

  return 0;
}

uint64_t sub_223A1A7C8()
{
  sub_223A21700();
  MEMORY[0x223DF0390](0xD000000000000011, 0x8000000223A26B00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C98, &qword_223A239F0);
  sub_223A205F0();
  v0 = sub_223A218E0();
  MEMORY[0x223DF0390](v0);

  MEMORY[0x223DF0390](0xD000000000000018, 0x8000000223A26B20);
  type metadata accessor for OverloadOptions(0);
  sub_223A205F0();
  v1 = sub_223A218E0();
  MEMORY[0x223DF0390](v1);

  MEMORY[0x223DF0390](0xD000000000000016, 0x8000000223A26B40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C90, "f0");
  sub_223A205F0();
  if (v7)
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (v7)
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x223DF0390](v2, v3);

  MEMORY[0x223DF0390](0xD000000000000016, 0x8000000223A26B60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4CA8, &unk_223A23A00);
  sub_223A205F0();
  MEMORY[0x223DF0390]();

  MEMORY[0x223DF0390](0xD000000000000017, 0x8000000223A26B80);
  sub_223A205F0();
  MEMORY[0x223DF0390]();

  MEMORY[0x223DF0390](0xD000000000000015, 0x8000000223A26BA0);
  sub_223A205F0();
  if (v7)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (v7)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x223DF0390](v4, v5);

  return 0;
}

void *sub_223A1AAA0()
{
  sub_223A20610();
  type metadata accessor for OverloadOptions(0);
  sub_223A20610();
  sub_223A20610();
  sub_223A20610();
  sub_223A20610();
  return sub_223A20610();
}

uint64_t sub_223A1AC48(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_223A1ACA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_223A1AD18(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_223A1AD68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_223A1ADE8@<X0>(_BYTE *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C90, "f0");
  result = sub_223A205F0();
  *a1 = v3;
  return result;
}

double static TailspinWorker.initialize(config:)()
{
  v0 = sub_223A20860();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_223A20BE0();
  if (*(v4 + 16))
  {
    (*(v1 + 16))(v3, v4 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v0);

    v5 = sub_223A20820();
    (*(v1 + 8))(v3, v0);
  }

  else
  {

    v5 = 0;
  }

  swift_beginAccess();
  qword_281334130 = v5;

  return result;
}

Swift::Bool __swiftcall TailspinWorker.start()()
{
  swift_beginAccess();
  *(v0 + 16) = 1;
  return 1;
}

void TailspinWorker.process(message:)(uint64_t a1)
{
  v4 = sub_223A21040();
  v142 = *(v4 - 8);
  v143 = v4;
  MEMORY[0x28223BE20](v4);
  v140 = &v123 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = sub_223A21090();
  v139 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v138 = &v123 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_223A20D20();
  v136 = *(v7 - 8);
  v137 = v7;
  v8 = *(v136 + 64);
  MEMORY[0x28223BE20](v7);
  v135 = &v123 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4DE8, &unk_223A24898);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v123 - v10;
  v12 = sub_223A20850();
  v146 = *(v12 - 8);
  v147 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v144 = &v123 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v123 - v15;
  v17 = sub_223A20680();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = (&v123 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v145 = v1;
  if (sub_223A1BFD8())
  {
    v134 = v2;
    v21 = sub_223A20C40();
    if (*(v21 + 16) && (v22 = sub_2239CDC74(0x79745F6575737369, 0xEA00000000006570), (v23 & 1) != 0))
    {
      (*(v18 + 16))(v20, *(v21 + 56) + *(v18 + 72) * v22, v17);

      if ((*(v18 + 88))(v20, v17) == *MEMORY[0x277CEF860])
      {
        (*(v18 + 96))(v20, v17);
        v25 = *v20;
        v24 = v20[1];

        sub_223A20830();
        v27 = v146;
        v26 = v147;
        if ((*(v146 + 48))(v11, 1, v147) == 1)
        {
          sub_2239CDCEC(v11, &qword_27D0A4DE8, &unk_223A24898);

          v28 = sub_223A20FB0();
          v29 = sub_223A21500();

          if (os_log_type_enabled(v28, v29))
          {
            v30 = v24;
            v31 = swift_slowAlloc();
            v32 = swift_slowAlloc();
            v33 = v25;
            v34 = v32;
            aBlock[0] = v32;
            *v31 = 136380675;
            v35 = sub_2239E1910(v33, v30, aBlock);

            *(v31 + 4) = v35;
            _os_log_impl(&dword_2239C7000, v28, v29, "Unrecognized issueType. { issueType = %{private}s }", v31, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v34);
            MEMORY[0x223DF1300](v34, -1, -1);
            MEMORY[0x223DF1300](v31, -1, -1);
          }

          else
          {
          }
        }

        else
        {
          *&v133 = v25;
          v132 = a1;
          v36 = v16;
          (*(v27 + 32))(v16, v11, v26);
          v37 = sub_223A1C420();
          if (*(v37 + 16) && (v38 = sub_2239F6CB8(v16), (v39 & 1) != 0))
          {
            v40 = v38;

            v133 = *(*(v37 + 56) + 16 * v40);
            v41 = v133;
            swift_unknownObjectRetain();

            ObjectType = swift_getObjectType();
            v43 = *(&v133 + 1);
            v44 = *(*(&v133 + 1) + 24);
            v45 = (v44)(ObjectType, *(&v133 + 1));
            if ((v45 & 0x100000000) != 0 || (v46 = *(v43 + 32), v131 = v45, v46(ObjectType, v43), , , sub_223A20F10(), , LODWORD(aBlock[0]) <= v131))
            {
              sub_223A21410();
              v71 = v70;
              v131 = *(v43 + 32);
              v72 = v131(ObjectType, v43);
              v73 = *(v72 + 24);
              v74 = *(v72 + 32);

              v75 = 0.0;
              if (!v74)
              {
                v75 = v73;
              }

              if (v44(ObjectType, v43) <= v71 - v75 && ((*(v43 + 16))(v132, &v145[OBJC_IVAR____TtC22AudioAnalyticsExternal14TailspinWorker_session], ObjectType, v43) & 1) != 0)
              {
                v76 = v43;
                v77 = ObjectType;
                swift_unknownObjectRetain();
                v78 = sub_223A20FB0();
                v79 = sub_223A21500();
                swift_unknownObjectRelease();
                if (os_log_type_enabled(v78, v79))
                {
                  v80 = swift_slowAlloc();
                  v127 = v80;
                  v129 = swift_slowAlloc();
                  aBlock[0] = v129;
                  *v80 = 136380675;
                  v81 = *(v76 + 56);
                  v82 = v144;
                  LODWORD(v128) = v79;
                  v81(v77, v76);
                  v83 = sub_223A20840();
                  v130 = v76;
                  v85 = v84;
                  (*(v146 + 8))(v82, v147);
                  v86 = sub_2239E1910(v83, v85, aBlock);
                  v76 = v130;

                  v87 = v127;
                  *(v127 + 4) = v86;
                  v88 = v87;
                  _os_log_impl(&dword_2239C7000, v78, v128, "Preconditions met. Submitting tailspin request. { case=%{private}s }", v87, 0xCu);
                  v89 = v129;
                  __swift_destroy_boxed_opaque_existential_0(v129);
                  MEMORY[0x223DF1300](v89, -1, -1);
                  MEMORY[0x223DF1300](v88, -1, -1);
                }

                v90 = v131(v77, v76);
                sub_223A21410();
                *(v90 + 24) = v91;
                *(v90 + 32) = 0;

                v92 = v77;
                v93 = v132;
                v127 = sub_223A1C484(v132, v36);
                v126 = v94;
                v130 = v36;
                if (qword_281333380 != -1)
                {
                  swift_once();
                }

                v95 = qword_281335A60;
                v144 = qword_281335A60;
                v129 = (*(v76 + 64))(v92, v76);
                v128 = v96;
                v131 = v97;
                v125 = v98;
                v124 = *&v145[OBJC_IVAR____TtC22AudioAnalyticsExternal14TailspinWorker_requestQueue];
                v123 = swift_allocObject();
                *(v123 + 16) = v133;
                *&v133 = *(v95 + 56);
                v99 = v135;
                v100 = v136;
                v101 = v137;
                (*(v136 + 16))(v135, v93, v137);
                v102 = (*(v100 + 80) + 24) & ~*(v100 + 80);
                v103 = (v8 + v102 + 7) & 0xFFFFFFFFFFFFFFF8;
                v104 = (v103 + 23) & 0xFFFFFFFFFFFFFFF8;
                v105 = (v104 + 39) & 0xFFFFFFFFFFFFFFF8;
                v106 = swift_allocObject();
                v145 = v41;
                v107 = v106;
                *(v106 + 16) = v144;
                (*(v100 + 32))(v106 + v102, v99, v101);
                v108 = (v107 + v103);
                v109 = v126;
                *v108 = v127;
                v108[1] = v109;
                v110 = (v107 + v104);
                v111 = v129;
                v112 = v128;
                *v110 = v129;
                v110[1] = v112;
                v113 = v131;
                v114 = v125;
                v110[2] = v131;
                v110[3] = v114;
                v115 = v124;
                *(v107 + v105) = v124;
                v116 = (v107 + ((v105 + 15) & 0xFFFFFFFFFFFFFFF8));
                v117 = v123;
                *v116 = sub_223A1D680;
                v116[1] = v117;
                aBlock[4] = sub_223A1D688;
                aBlock[5] = v107;
                aBlock[0] = MEMORY[0x277D85DD0];
                aBlock[1] = 1107296256;
                aBlock[2] = sub_2239EC158;
                aBlock[3] = &block_descriptor_5;
                v118 = _Block_copy(aBlock);
                swift_unknownObjectRetain();

                sub_2239E9D54(v111);
                sub_2239E9D54(v113);
                v119 = v115;

                v120 = v138;
                sub_223A21050();
                aBlock[10] = MEMORY[0x277D84F90];
                sub_2239CA260(&qword_27D0A48C8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A48D0, &qword_223A22BE0);
                sub_2239C9B30(&qword_27D0A48D8, &qword_27D0A48D0, &qword_223A22BE0);
                v121 = v140;
                v122 = v143;
                sub_223A21640();
                MEMORY[0x223DF0640](0, v120, v121, v118);
                _Block_release(v118);

                sub_2239E9D64(v129);
                sub_2239E9D64(v131);
                swift_unknownObjectRelease();
                (*(v142 + 8))(v121, v122);
                (*(v139 + 8))(v120, v141);
                (*(v146 + 8))(v130, v147);
              }

              else
              {
                (*(v146 + 8))(v36, v147);
                swift_unknownObjectRelease();
              }
            }

            else
            {
              v47 = v43;
              swift_unknownObjectRetain();
              v48 = sub_223A20FB0();
              v49 = sub_223A21500();
              swift_unknownObjectRelease();
              if (os_log_type_enabled(v48, v49))
              {
                v50 = swift_slowAlloc();
                v130 = v36;
                v51 = v50;
                v145 = swift_slowAlloc();
                aBlock[0] = v145;
                *v51 = 136380931;
                v52 = v47;
                v53 = *(v47 + 56);
                v54 = v144;
                v53(ObjectType, v52);
                v55 = sub_223A20840();
                v57 = v56;
                v58 = *(v27 + 8);
                v59 = v54;
                v60 = v147;
                v58(v59, v147);
                v61 = sub_2239E1910(v55, v57, aBlock);

                *(v51 + 4) = v61;
                *(v51 + 12) = 1024;
                *(v51 + 14) = v131;
                _os_log_impl(&dword_2239C7000, v48, v49, "TailspinCase limited by maxNumSuccesfulRequests. { case=%{private}s, maxNumSuccesfulRequests=%u }", v51, 0x12u);
                v62 = v145;
                __swift_destroy_boxed_opaque_existential_0(v145);
                MEMORY[0x223DF1300](v62, -1, -1);
                MEMORY[0x223DF1300](v51, -1, -1);
                swift_unknownObjectRelease();

                v58(v130, v60);
              }

              else
              {

                swift_unknownObjectRelease();
                (*(v27 + 8))(v36, v147);
              }
            }
          }

          else
          {

            v63 = sub_223A20FB0();
            v64 = sub_223A21500();

            if (os_log_type_enabled(v63, v64))
            {
              v65 = v24;
              v66 = swift_slowAlloc();
              v67 = v36;
              v68 = swift_slowAlloc();
              aBlock[0] = v68;
              *v66 = 136380675;
              v69 = sub_2239E1910(v133, v65, aBlock);

              *(v66 + 4) = v69;
              _os_log_impl(&dword_2239C7000, v63, v64, "TailspinCase for this issue is not enabled. { issueType=%{private}s }", v66, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v68);
              MEMORY[0x223DF1300](v68, -1, -1);
              MEMORY[0x223DF1300](v66, -1, -1);

              (*(v27 + 8))(v67, v26);
            }

            else
            {

              (*(v27 + 8))(v36, v26);
            }
          }
        }
      }

      else
      {
        (*(v18 + 8))(v20, v17);
      }
    }

    else
    {
    }
  }
}

uint64_t sub_223A1BFD8()
{
  v1 = type metadata accessor for TailspinOptions(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_223A20E00();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_223A20E10();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_223A20CC0() != 7 || sub_223A20C20() != 6)
  {
    return 0;
  }

  v20 = v3;
  v21 = v1;
  (*(v9 + 104))(v11, *MEMORY[0x277CEFA20], v8);
  sub_223A20DF0();
  sub_223A20DC0();
  sub_223A20DD0();
  sub_223A20DE0();
  sub_223A20DB0();
  sub_223A20BA0();
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
  if ((sub_223A1C8EC() & 1) == 0)
  {
    v16 = v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal14TailspinWorker_tailspinOptions;
    swift_beginAccess();
    v17 = v21;
    if (*(v16 + *(v21 + 28)) != 1)
    {
      return 1;
    }

    v18 = v20;
    sub_223A1E328(v16, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C90, "f0");
    sub_223A205F0();
    sub_2239CC9A8(v18);
    if (v22 & 1) != 0 || (*(v16 + *(v17 + 32)))
    {
      return 1;
    }

    v12 = sub_223A20FB0();
    v13 = sub_223A214C0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134217984;
      __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal14TailspinWorker_session), *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal14TailspinWorker_session + 24));
      *(v14 + 4) = sub_223A20950();

      v15 = "Ignoring overload: Audio Captures enabled. { reporterID=%lld }";
      goto LABEL_6;
    }

LABEL_13:

    return 0;
  }

  v12 = sub_223A20FB0();
  v13 = sub_223A214C0();
  if (!os_log_type_enabled(v12, v13))
  {
    goto LABEL_13;
  }

  v14 = swift_slowAlloc();
  *v14 = 134217984;
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal14TailspinWorker_session), *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal14TailspinWorker_session + 24));
  *(v14 + 4) = sub_223A20950();

  v15 = "Ignoring overload: Sysdiagnose in progress. { reporterID=%lld }";
LABEL_6:
  _os_log_impl(&dword_2239C7000, v12, v13, v15, v14, 0xCu);
  MEMORY[0x223DF1300](v14, -1, -1);

  return 0;
}

unint64_t sub_223A1C420()
{
  v1 = OBJC_IVAR____TtC22AudioAnalyticsExternal14TailspinWorker____lazy_storage___tailspinCases;
  if (*(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal14TailspinWorker____lazy_storage___tailspinCases))
  {
    v2 = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal14TailspinWorker____lazy_storage___tailspinCases);
  }

  else
  {
    v2 = sub_223A1CE54();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_223A1C484(uint64_t a1, uint64_t a2)
{
  v27 = a2;
  v2 = sub_223A20850();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_223A203C0();
  v6 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_223A20D00();
  sub_223A203A0();
  v9 = sub_223A20C30();
  if (v10)
  {
    v11 = v10;
    v28 = v9;
  }

  else
  {
    v28 = sub_223A20D30();
    v11 = v12;
  }

  v13 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v14 = sub_223A211F0();
  [v13 setDateFormat_];

  v15 = sub_223A20390();
  v16 = [v13 stringFromDate_];

  v17 = sub_223A21220();
  v19 = v18;

  (*(v3 + 16))(v5, v27, v2);
  v20 = (*(v3 + 88))(v5, v2);
  v21 = *MEMORY[0x277CEF8A0];
  v26 = v6;
  if (v20 == v21 || v20 == *MEMORY[0x277CEF890] || v20 == *MEMORY[0x277CEF898])
  {
    goto LABEL_11;
  }

  if (v20 != *MEMORY[0x277CEF888])
  {
    (*(v3 + 8))(v5, v2);
LABEL_11:
    v22 = 0xE600000000000000;
    v23 = 0x686374696C67;
    goto LABEL_12;
  }

  v22 = 0xE800000000000000;
  v23 = 0x65646F63656D6974;
LABEL_12:
  v30 = 0;
  v31 = 0xE000000000000000;
  sub_223A21700();

  v30 = 0x5F6F69647561;
  v31 = 0xE600000000000000;
  MEMORY[0x223DF0390](v23, v22);

  MEMORY[0x223DF0390](0x5F65636172745FLL, 0xE700000000000000);
  MEMORY[0x223DF0390](v17, v19);

  MEMORY[0x223DF0390](95, 0xE100000000000000);
  MEMORY[0x223DF0390](v28, v11);

  MEMORY[0x223DF0390](0x6970736C6961742ELL, 0xE90000000000006ELL);

  v24 = v30;
  (*(v26 + 8))(v8, v29);
  return v24;
}

uint64_t sub_223A1C834(uint64_t a1, uint64_t a2, __n128 a3)
{
  ObjectType = swift_getObjectType();
  (*(a2 + 32))(ObjectType, a2);

  sub_223A1D948();
  sub_223A20F00();
}

uint64_t sub_223A1C8EC()
{
  v14[1] = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14[0] = 0;
  if ([objc_opt_self() isInProgressWithDestination:&v13 error:v14])
  {
    v0 = v13;
    v1 = v14[0];
  }

  else
  {
    v2 = v14[0];
    v3 = sub_223A202A0();

    swift_willThrow();
    v4 = v3;
    v5 = sub_223A20FB0();
    v6 = sub_223A214E0();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v14[0] = v8;
      *v7 = 136380675;
      swift_getErrorValue();
      v9 = sub_223A21920();
      v11 = sub_2239E1910(v9, v10, v14);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_2239C7000, v5, v6, "isSysdiagnoseInProgress failed. { error=%{private}s }", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x223DF1300](v8, -1, -1);
      MEMORY[0x223DF1300](v7, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  return v0;
}

double static TailspinWorker.enabledCaseNames.getter()
{
  swift_beginAccess();

  return result;
}

double static TailspinWorker.enabledCaseNames.setter(uint64_t a1)
{
  swift_beginAccess();
  qword_281334130 = a1;

  return result;
}

double sub_223A1CBB4(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  qword_281334130 = v1;

  return result;
}

uint64_t TailspinWorker.workerConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal14TailspinWorker_workerConfig;
  swift_beginAccess();
  v4 = sub_223A20BC0();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t TailspinWorker.workerConfig.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal14TailspinWorker_workerConfig;
  swift_beginAccess();
  v4 = sub_223A20BC0();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

unint64_t sub_223A1CE54()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4DF8, &qword_223A249A0);
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C08, &unk_223A23900);
  v1 = *(*(v0 - 8) + 72);
  v2 = (*(*(v0 - 8) + 80) + 32) & ~*(*(v0 - 8) + 80);
  v37 = v0;
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_223A234C0;
  v3 = v38 + v2;
  v4 = (v38 + v2 + *(v0 + 48));
  v5 = *MEMORY[0x277CEF8A0];
  v6 = sub_223A20850();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v3, v5, v6);
  type metadata accessor for HALOverloadCase(0);
  swift_allocObject();
  *v4 = sub_223A0B2B4(0, 0, 1);
  v4[1] = &off_2837035D0;
  v36 = v1;
  v8 = (v3 + v1 + *(v0 + 48));
  v9 = *MEMORY[0x277CEF890];
  v7();
  type metadata accessor for PHASEIssueCase(0);
  v10 = swift_allocObject();
  (v7)(v10 + OBJC_IVAR____TtC22AudioAnalyticsExternal14PHASEIssueCase_name, v9, v6);
  v11 = (v10 + OBJC_IVAR____TtC22AudioAnalyticsExternal14PHASEIssueCase_tailspinRequest);
  *v11 = sub_223A10B78;
  v11[1] = 0;
  v11[2] = 0;
  v11[3] = 0;
  v12 = OBJC_IVAR____TtC22AudioAnalyticsExternal14PHASEIssueCase_state;
  type metadata accessor for TailspinCaseState();
  v13 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4938, &unk_223A22B80);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v13 + 16) = v14;
  *(v13 + 24) = 0;
  *(v13 + 32) = 1;
  *(v10 + v12) = v13;
  *(v10 + 16) = 1;
  *(v10 + 20) = 0;
  *(v10 + 24) = 0;
  *v8 = v10;
  v8[1] = &off_283703768;
  v15 = 2 * v1;
  v16 = v3 + 2 * v1;
  v17 = v3;
  v18 = (v16 + *(v37 + 48));
  v19 = *MEMORY[0x277CEF898];
  v7();
  type metadata accessor for SiriTTSCase(0);
  v20 = swift_allocObject();
  (v7)(v20 + OBJC_IVAR____TtC22AudioAnalyticsExternal11SiriTTSCase_name, v19, v6);
  v21 = (v20 + OBJC_IVAR____TtC22AudioAnalyticsExternal11SiriTTSCase_tailspinRequest);
  *v21 = sub_223A157A8;
  v21[1] = 0;
  v21[2] = 0;
  v21[3] = 0;
  v22 = OBJC_IVAR____TtC22AudioAnalyticsExternal11SiriTTSCase_state;
  v23 = swift_allocObject();
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v23 + 16) = v24;
  *(v23 + 24) = 0;
  *(v23 + 32) = 1;
  *(v20 + v22) = v23;
  *(v20 + 16) = 1;
  *(v20 + 20) = 0;
  *(v20 + 24) = 0;
  *v18 = v20;
  v18[1] = &off_2837038C0;
  v25 = (v17 + v15 + v36 + *(v37 + 48));
  v26 = *MEMORY[0x277CEF888];
  v7();
  type metadata accessor for HALTimecodeIssueCase(0);
  v27 = swift_allocObject();
  (v7)(v27 + OBJC_IVAR____TtC22AudioAnalyticsExternal20HALTimecodeIssueCase_name, v26, v6);
  v28 = (v27 + OBJC_IVAR____TtC22AudioAnalyticsExternal20HALTimecodeIssueCase_tailspinRequest);
  *v28 = sub_223A0F298;
  v28[1] = 0;
  v28[2] = 0;
  v28[3] = 0;
  v29 = OBJC_IVAR____TtC22AudioAnalyticsExternal20HALTimecodeIssueCase_state;
  v30 = swift_allocObject();
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  *(v30 + 16) = v31;
  *(v30 + 24) = 0;
  *(v30 + 32) = 1;
  *(v27 + v29) = v30;
  sub_223A20F90();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  *(v27 + 28) = 1;
  *(v27 + 32) = 0;
  *v25 = v27;
  v25[1] = &off_283703720;
  v32 = sub_223A0A250(v38);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  swift_beginAccess();
  v33 = qword_281334130;
  if (qword_281334130)
  {

    v34 = sub_223A1E168(v32, v33);

    return v34;
  }

  return v32;
}

uint64_t TailspinWorker.deinit()
{
  v1 = OBJC_IVAR____TtC22AudioAnalyticsExternal14TailspinWorker_workerConfig;
  v2 = sub_223A20BC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_2239CC9A8(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal14TailspinWorker_tailspinOptions);

  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal14TailspinWorker_logger;
  v4 = sub_223A20FC0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal14TailspinWorker_session));

  return v0;
}

uint64_t TailspinWorker.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC22AudioAnalyticsExternal14TailspinWorker_workerConfig;
  v2 = sub_223A20BC0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_2239CC9A8(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal14TailspinWorker_tailspinOptions);

  v3 = OBJC_IVAR____TtC22AudioAnalyticsExternal14TailspinWorker_logger;
  v4 = sub_223A20FC0();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal14TailspinWorker_session));

  return swift_deallocClassInstance();
}

uint64_t sub_223A1D590@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC22AudioAnalyticsExternal14TailspinWorker_workerConfig;
  swift_beginAccess();
  v5 = sub_223A20BC0();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_223A1D61C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TailspinOptions(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_223A1D688()
{
  v1 = *(sub_223A20D20() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_223A17A10(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 16), *(v0 + v4 + 24), *(v0 + ((v4 + 39) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v4 + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((v4 + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t type metadata accessor for TailspinWorker(uint64_t a1)
{
  result = qword_281334108;
  if (!qword_281334108)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_223A1D7EC(uint64_t a1)
{
  result = sub_223A20BC0();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for TailspinOptions(319);
    if (v3 <= 0x3F)
    {
      result = sub_223A20FC0();
      if (v4 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

unint64_t sub_223A1D948()
{
  result = qword_27D0A4DF0;
  if (!qword_27D0A4DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0A4DF0);
  }

  return result;
}

unint64_t *sub_223A1D99C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_223A1DDD0(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_223A1DA38(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v44 = sub_223A20850();
  v8 = *(v44 - 8);
  v9 = MEMORY[0x28223BE20](v44);
  v43 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v38 = &v33 - v11;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C10, &unk_223A249B0);
  result = sub_223A217C0();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v35 = v8 + 16;
  v36 = result;
  v42 = v8 + 32;
  v16 = result + 64;
  v34 = a4;
  v37 = v8;
  v17 = v44;
  while (v14)
  {
    v18 = __clz(__rbit64(v14));
    v39 = (v14 - 1) & v14;
LABEL_16:
    v21 = v18 | (v15 << 6);
    v22 = a4[6];
    v41 = *(v8 + 72);
    v23 = v38;
    (*(v8 + 16))(v38, v22 + v41 * v21, v17);
    v45 = *(a4[7] + 16 * v21);
    v40 = *(v8 + 32);
    v40(v43, v23, v17);
    v13 = v36;
    sub_2239CA260(&qword_27D0A4A20, MEMORY[0x277CEF8A8], MEMORY[0x277CEF8B0]);
    swift_unknownObjectRetain();
    result = sub_223A21190();
    v24 = -1 << *(v13 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v16 + 8 * (v25 >> 6))) == 0)
    {
      v28 = 0;
      v29 = (63 - v24) >> 6;
      v8 = v37;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v16 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v16 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
    v8 = v37;
LABEL_26:
    *(v16 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    result = (v40)(*(v13 + 48) + v27 * v41, v43, v44);
    *(*(v13 + 56) + 16 * v27) = v45;
    ++*(v13 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v34;
    v14 = v39;
    if (!a3)
    {
      return v13;
    }
  }

  v19 = v15;
  while (1)
  {
    v15 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v20 = a1[v15];
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v39 = (v20 - 1) & v20;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_223A1DDD0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a2;
  v42 = a4;
  v35 = a1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4E00, &qword_223A249A8);
  MEMORY[0x28223BE20](v41);
  v6 = &v33 - v5;
  v7 = sub_223A20850();
  v8 = *(v7 - 8);
  result = MEMORY[0x28223BE20](v7);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = 0;
  v44 = a3;
  v12 = 0;
  v13 = *(a3 + 64);
  v34 = a3 + 64;
  v14 = 1 << *(a3 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v13;
  v17 = (v14 + 63) >> 6;
  v39 = v6;
  v40 = v8 + 16;
  v36 = (v8 + 8);
  v37 = v17;
  v38 = v11;
LABEL_5:
  while (v16)
  {
    v18 = __clz(__rbit64(v16));
    v47 = (v16 - 1) & v16;
LABEL_12:
    v21 = v44;
    v22 = *(v8 + 72);
    v23 = *(v8 + 16);
    v24 = v11;
    v25 = v18 | (v12 << 6);
    v23(v24, v44[6] + v22 * v25, v7);
    v26 = v21[7];
    v45 = v25;
    v46 = *(v26 + 16 * v25);
    v27 = v39;
    (v23)(v39);
    v28 = v42;
    v29 = v46;
    *(v27 + *(v41 + 48)) = v46;
    v30 = *(v28 + 16);
    *&v46 = v29;
    swift_unknownObjectRetain_n();
    v31 = v30 + 1;
    do
    {
      if (!--v31)
      {
        sub_2239CDCEC(v27, &qword_27D0A4E00, &qword_223A249A8);
        swift_unknownObjectRelease();
        v11 = v38;
        result = (*v36)(v38, v7);
        v17 = v37;
        v16 = v47;
        goto LABEL_5;
      }

      sub_2239CA260(&qword_27D0A4A28, MEMORY[0x277CEF8A8], MEMORY[0x277CEF8B8]);
      v28 += v22;
    }

    while ((sub_223A211E0() & 1) == 0);
    sub_2239CDCEC(v27, &qword_27D0A4E00, &qword_223A249A8);
    swift_unknownObjectRelease();
    v11 = v38;
    result = (*v36)(v38, v7);
    *(v35 + ((v45 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v45;
    v32 = __OFADD__(v43++, 1);
    v17 = v37;
    v16 = v47;
    if (v32)
    {
      __break(1u);
      return sub_223A1DA38(v35, v33, v43, v44);
    }
  }

  v19 = v12;
  while (1)
  {
    v12 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v12 >= v17)
    {
      return sub_223A1DA38(v35, v33, v43, v44);
    }

    v20 = *(v34 + 8 * v12);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v47 = (v20 - 1) & v20;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_223A1E168(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();

      v10 = sub_223A1D99C(v12, v7, a1, a2);
      MEMORY[0x223DF1300](v12, -1, -1);
      swift_bridgeObjectRelease_n();
      return v10;
    }
  }

  MEMORY[0x28223BE20](v9);
  bzero(v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v10 = sub_223A1DDD0((v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v10;
}

uint64_t sub_223A1E328(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TailspinOptions(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_223A1E38C()
{
  result = sub_223A1F014();
  if ((result & 1) == 0)
  {
    v1 = sub_223A20FB0();
    v2 = sub_223A214E0();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_2239C7000, v1, v2, "Tailspin not configured for verbosity. Performing setup again.", v3, 2u);
      MEMORY[0x223DF1300](v3, -1, -1);
    }

    return sub_223A1E454(v4);
  }

  return result;
}

uint64_t sub_223A1E454(uint64_t a1)
{
  v1 = sub_223A20FB0();
  v2 = sub_223A214D0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2239C7000, v1, v2, "Performing tailspin setup.", v3, 2u);
    MEMORY[0x223DF1300](v3, -1, -1);
  }

  v4 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  sub_223A20A90();
  sub_223A20A70();

  v5 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  sub_223A20A90();
  sub_223A20A70();

  notify_post("com.apple.da.tasking_changed");
  sub_223A1FA08(0);
  sub_223A1EC3C();
  v6 = tailspin_config_create_with_config();
  if (sub_223A208C0())
  {
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C90, "f0");
    sub_223A205E0();
    swift_endAccess();
    if (v25 == 1)
    {
      v7 = sub_223A20FB0();
      v8 = sub_223A21500();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        *v9 = 0;
        _os_log_impl(&dword_2239C7000, v7, v8, "Enabling hwtrace integration.", v9, 2u);
        MEMORY[0x223DF1300](v9, -1, -1);
      }

      tailspin_cputrace_enabled_set_with_options();
      swift_beginAccess();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4E08, &qword_223A24A18);
      sub_223A205E0();
      swift_endAccess();
      v10 = sub_223A20FB0();
      v11 = sub_223A21500();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        *v12 = 134217984;
        *(v12 + 4) = v25;
        _os_log_impl(&dword_2239C7000, v10, v11, "Requesting hwtrace memory carveout. { sizeMB=%llu }", v12, 0xCu);
        MEMORY[0x223DF1300](v12, -1, -1);
      }

      if (sub_223A1FB84(0x200uLL))
      {
        v13 = sub_223A20FB0();
        v14 = sub_223A21500();
        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          *v15 = 0;
          _os_log_impl(&dword_2239C7000, v13, v14, "Successfully obtained hwtrace carveout.", v15, 2u);
          MEMORY[0x223DF1300](v15, -1, -1);
        }
      }
    }
  }

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C90, "f0");
  sub_223A205E0();
  swift_endAccess();
  if (v25 == 1)
  {
    tailspin_sampling_option_set();
    v16 = sub_223A20FB0();
    v17 = sub_223A21500();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2239C7000, v16, v17, "Enabling cswitch sampling.", v18, 2u);
      MEMORY[0x223DF1300](v18, -1, -1);
    }
  }

  v19 = tailspin_config_apply_sync();
  v20 = sub_223A20FB0();
  if (v19)
  {
    v21 = sub_223A214D0();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      v23 = "Successfully applied tailspin configuration.";
LABEL_22:
      _os_log_impl(&dword_2239C7000, v20, v21, v23, v22, 2u);
      MEMORY[0x223DF1300](v22, -1, -1);
    }
  }

  else
  {
    v21 = sub_223A214E0();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      v23 = "Failed to apply tailspin configuration. Exiting early.";
      goto LABEL_22;
    }
  }

  MEMORY[0x223DF1430](v6);
  return v19;
}

uint64_t sub_223A1E9CC(uint64_t a1)
{
  v1 = sub_223A20FB0();
  v2 = sub_223A214D0();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_2239C7000, v1, v2, "Performing tailspin teardown.", v3, 2u);
    MEMORY[0x223DF1300](v3, -1, -1);
  }

  v4 = sub_223A20AB0();
  MEMORY[0x223DEFB80](0xD000000000000011, 0x8000000223A26EE0, 0x6C7070612E6D6F63, 0xEC00000061642E65, v4, v5);

  v6 = sub_223A20AB0();
  MEMORY[0x223DEFB80](0xD000000000000018, 0x8000000223A26F00, 0x6C7070612E6D6F63, 0xEC00000061642E65, v6, v7);

  sub_223A1FEF0();
  notify_post("com.apple.da.tasking_changed");
  if (sub_223A208C0() & 1) != 0 && (sub_223A1FB84(0))
  {
    v8 = sub_223A20FB0();
    v9 = sub_223A214E0();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2239C7000, v8, v9, "Successfully reset hwtrace carveout. { sizeMB=0 }", v10, 2u);
      MEMORY[0x223DF1300](v10, -1, -1);
    }
  }

  v11 = tailspin_config_create_with_default_config();
  v12 = tailspin_config_apply_sync();
  if (v12)
  {
    MEMORY[0x223DF1430](v11);
  }

  else
  {
    v13 = sub_223A20FB0();
    v14 = sub_223A214E0();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_2239C7000, v13, v14, "Failed to apply the defualt system tailspin configuration. Exiting early.", v15, 2u);
      MEMORY[0x223DF1300](v15, -1, -1);
    }
  }

  return v12;
}

uint64_t sub_223A1EC3C()
{
  v1 = OBJC_IVAR____TtC22AudioAnalyticsExternal15VerboseTailspin____lazy_storage___verboseConfig;
  result = *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal15VerboseTailspin____lazy_storage___verboseConfig);
  if (!result)
  {
    v3 = tailspin_config_create_with_default_config();
    v4 = v3;
    sub_223A1F6C0(&v4);
    result = v3;
    *(v0 + v1) = v3;
  }

  return result;
}

uint64_t sub_223A1EC94()
{
  v1 = sub_223A1EC3C();
  MEMORY[0x223DF1430](v1);

  v2 = OBJC_IVAR____TtC22AudioAnalyticsExternal15VerboseTailspin_logger;
  v3 = sub_223A20FC0();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  v4 = OBJC_IVAR____TtC22AudioAnalyticsExternal15VerboseTailspin_cSwitchSamplingPreference;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C90, "f0");
  v6 = *(*(v5 - 8) + 8);
  v6(v0 + v4, v5);
  v6(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal15VerboseTailspin_hwtracePreference, v5);
  v7 = OBJC_IVAR____TtC22AudioAnalyticsExternal15VerboseTailspin_hwtraceCarveoutPreference;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4E08, &qword_223A24A18);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for VerboseTailspin(uint64_t a1)
{
  result = qword_281333210;
  if (!qword_281333210)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_223A1EE6C(uint64_t a1)
{
  sub_223A20FC0();
  if (v1 <= 0x3F)
  {
    sub_223A1A3B0(319, &qword_2813344B8, MEMORY[0x277D839B0]);
    if (v2 <= 0x3F)
    {
      sub_223A1A3B0(319, &qword_281333700, MEMORY[0x277D84D38]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

unint64_t sub_223A1EFB8()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v1 = sub_223A1F408();
    *(v0 + 16) = v1;
  }

  return v1;
}

uint64_t sub_223A1F014()
{
  v0 = tailspin_config_create_with_current_state();
  if (v0)
  {
    v1 = v0;
    sub_223A1EC3C();
    v2 = tailspin_config_create_with_config();
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4C90, "f0");
    sub_223A205E0();
    swift_endAccess();
    v3 = 1;
    tailspin_sampling_option_set();
    swift_beginAccess();
    sub_223A205E0();
    swift_endAccess();
    tailspin_cputrace_enabled_set_with_options();
    v4 = tailspin_config_copy_description();
    v5 = sub_223A21220();
    v7 = v6;

    v8 = tailspin_config_copy_description();
    v9 = sub_223A21220();
    v11 = v10;

    if (v5 != v9 || v7 != v11)
    {
      v3 = sub_223A218F0();
    }

    v12 = sub_223A1F2DC();
    v13 = sub_223A20FB0();
    v14 = sub_223A21500();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 67109376;
      *(v15 + 4) = v3 & 1;
      *(v15 + 8) = 1024;
      *(v15 + 10) = v12 & 1;
      _os_log_impl(&dword_2239C7000, v13, v14, "Verifying tailspin configuration. { isPreferredConfig=%{BOOL}d, diagnosticsDisabled=%{BOOL}d }", v15, 0xEu);
      MEMORY[0x223DF1300](v15, -1, -1);
    }

    v16 = v3 & v12;
    MEMORY[0x223DF1430](v2);
    MEMORY[0x223DF1430](v1);
  }

  else
  {
    v17 = sub_223A20FB0();
    v18 = sub_223A214E0();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2239C7000, v17, v18, "Unable to retrieve current tailspin state.", v19, 2u);
      MEMORY[0x223DF1300](v19, -1, -1);
    }

    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_223A1F2DC()
{
  sub_223A20A60();
  sub_223A20A40();

  if (v4 == 2 || (v4 & 1) != 0 || (sub_223A20A60(), sub_223A20A40(), , v3 == 2) || (v3 & 1) != 0)
  {
    v0 = 0;
  }

  else
  {
    v2 = sub_223A20084();
    v0 = v2 ^ 1;
    if (v2 == 2)
    {
      v0 = 0;
    }
  }

  return v0 & 1;
}

unint64_t sub_223A1F408()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4DD0, &unk_223A24A20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_223A22B70;
  *(inited + 32) = sub_223A21220();
  *(inited + 40) = v1;
  sub_2239DC698();
  *(inited + 48) = sub_223A21580();
  *(inited + 56) = sub_223A21220();
  *(inited + 64) = v2;
  *(inited + 72) = sub_223A21580();
  v3 = sub_223A0A14C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A4DD8, &unk_223A245C0);
  swift_arrayDestroy();
  v4 = sub_223A21220();
  v6 = v5;
  v7 = sub_223A21580();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_223A132C8(v7, v4, v6, isUniquelyReferenced_nonNull_native);

  return v3;
}

uint64_t sub_223A1F548()
{
  v1 = sub_223A20FC0();
  MEMORY[0x28223BE20](v1 - 8);
  *(v0 + 16) = 0;
  sub_223A20F90();
  v2 = OBJC_IVAR____TtC22AudioAnalyticsExternal15VerboseTailspin_systemUtility;
  sub_223A207F0();
  sub_223A20F90();
  *(v0 + v2) = sub_223A207E0();
  *(v0 + OBJC_IVAR____TtC22AudioAnalyticsExternal15VerboseTailspin____lazy_storage___verboseConfig) = 0;
  sub_223A20610();
  sub_223A20610();
  sub_223A20610();
  return v0;
}

uint64_t sub_223A1F6C0(void *a1)
{
  tailspin_oncore_sampling_period_set();
  tailspin_full_sampling_period_set();
  tailspin_buffer_size_set();
  tailspin_enabled_set();
  tailspin_sampling_option_set();
  tailspin_sampling_option_set();
  tailspin_kdbg_filter_clear();
  tailspin_kdbg_filter_class_set();
  tailspin_kdbg_filter_subclass_set();
  tailspin_kdbg_filter_subclass_set();
  tailspin_kdbg_filter_class_set();
  tailspin_kdbg_filter_class_set();
  tailspin_kdbg_filter_subclass_set();
  tailspin_kdbg_filter_subclass_set();
  tailspin_kdbg_filter_subclass_set();
  tailspin_kdbg_filter_subclass_set();
  tailspin_kdbg_filter_subclass_set();
  tailspin_kdbg_filter_subclass_set();
  tailspin_kdbg_filter_subclass_set();
  tailspin_kdbg_filter_class_set();
  tailspin_kdbg_filter_subclass_set();
  tailspin_kdbg_filter_subclass_set();
  tailspin_kdbg_filter_class_set();
  tailspin_kdbg_filter_subclass_set();
  tailspin_kdbg_filter_subclass_set();
  tailspin_kdbg_filter_subclass_set();
  tailspin_kdbg_filter_subclass_set();
  tailspin_kdbg_filter_class_set();
  tailspin_kdbg_filter_class_set();
  tailspin_kdbg_filter_class_set();
  tailspin_kdbg_filter_class_set();
  tailspin_kdbg_filter_subclass_set();
  tailspin_kdbg_filter_class_set();
  tailspin_kdbg_filter_class_set();
  tailspin_kdbg_filter_subclass_set();
  tailspin_kdbg_filter_class_set();
  tailspin_kdbg_filter_class_set();
  tailspin_kdbg_filter_subclass_set();
  tailspin_kdbg_filter_subclass_set();
  tailspin_kdbg_filter_subclass_set();
  tailspin_kdbg_filter_subclass_set();
  tailspin_kdbg_filter_subclass_set();
  tailspin_kdbg_filter_class_set();
  tailspin_kdbg_filter_subclass_set();

  return tailspin_kdbg_filter_subclass_set();
}

double sub_223A1FA08(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A49B8, &qword_223A22C70);
  sub_223A20A60();
  sub_223A20A40();

  if (!v6)
  {
    sub_2239DC6E4(MEMORY[0x277D84F90]);
  }

  v7 = MEMORY[0x277D839B0];
  LOBYTE(v6) = a1 & 1;
  sub_2239DA0A8(&v6, v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_223A1301C(v5, 0xD000000000000015, 0x8000000223A26F80, isUniquelyReferenced_nonNull_native);
  v3 = sub_223A21100();

  sub_223A20A90();
  sub_223A20A70();

  return result;
}

uint64_t sub_223A1FB84(unint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = sub_223A20FC0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v29 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v29 - v10;
  v12 = *MEMORY[0x277CD2898];
  v13 = IOServiceMatching("AppleProcessorTraceNub");
  MatchingService = IOServiceGetMatchingService(v12, v13);
  if (!MatchingService)
  {
    sub_223A20F90();
    v20 = sub_223A20FB0();
    v21 = sub_223A214E0();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_2239C7000, v20, v21, "Failed to find AppleProcessorTrace service.", v22, 2u);
      MEMORY[0x223DF1300](v22, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    return 0;
  }

  connect = 0;
  v15 = IOServiceOpen(MatchingService, *MEMORY[0x277D85F48], 0, &connect);
  if (v15)
  {
    v16 = v15;
    sub_223A20F90();
    v17 = sub_223A20FB0();
    v18 = sub_223A214E0();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 67109120;
      *(v19 + 4) = v16;
      _os_log_impl(&dword_2239C7000, v17, v18, "Failed to open IOService connection { ret=%d }", v19, 8u);
      MEMORY[0x223DF1300](v19, -1, -1);
    }

    (*(v3 + 8))(v9, v2);
    return 0;
  }

  if (a1 >> 54)
  {
    __break(1u);
LABEL_19:
    __break(1u);
  }

  if (a1 >> 44)
  {
    goto LABEL_19;
  }

  input = a1 << 20;
  v23 = IOConnectCallScalarMethod(connect, 7u, &input, 1u, 0, 0);
  if (!v23)
  {
    return 1;
  }

  v24 = v23;
  sub_223A20F90();
  v25 = sub_223A20FB0();
  v26 = sub_223A214E0();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 67109120;
    *(v27 + 4) = v24;
    _os_log_impl(&dword_2239C7000, v25, v26, "Failed to call RequestBuffer command. { ret=%d }", v27, 8u);
    MEMORY[0x223DF1300](v27, -1, -1);
  }

  (*(v3 + 8))(v11, v2);
  return 0;
}

void sub_223A1FEF0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A49B8, &qword_223A22C70);
  sub_223A20A60();
  sub_223A20A40();

  if (*&v3[0])
  {
    if (*(*&v3[0] + 16) && (v0 = sub_2239CDC74(0xD000000000000015, 0x8000000223A26F80), (v1 & 1) != 0))
    {
      sub_2239D17A8(*(*&v3[0] + 56) + 32 * v0, v3);
      sub_223A201A8(v3);
      sub_223A1289C(0xD000000000000015, 0x8000000223A26F80, v3);
      sub_223A201A8(v3);
      v2 = sub_223A21100();

      sub_223A20A90();
      sub_223A20A70();
    }

    else
    {

      memset(v3, 0, sizeof(v3));
      sub_223A201A8(v3);
    }
  }
}

uint64_t sub_223A20084()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A49B8, &qword_223A22C70);
  sub_223A20A60();
  sub_223A20A40();

  if (!v4[0])
  {
    return 2;
  }

  if (!*(v4[0] + 16) || (v0 = sub_2239CDC74(0xD000000000000015, 0x8000000223A26F80), (v1 & 1) == 0))
  {

    return 2;
  }

  sub_2239D17A8(*(v4[0] + 56) + 32 * v0, v4);

  if (swift_dynamicCast())
  {
    return v3;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_223A201A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A49B0, &qword_223A22C68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}