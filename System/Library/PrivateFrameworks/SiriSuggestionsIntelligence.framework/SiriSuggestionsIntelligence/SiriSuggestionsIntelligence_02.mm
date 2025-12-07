uint64_t _s5PointVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s5PointVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void *OUTLINED_FUNCTION_3_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v22[2] = a21;
  v22[3] = a15;
  v22[4] = a16;
  v22[5] = v27;
  v22[6] = v26;
  v22[7] = v24;
  v22[8] = v23;
  v22[9] = v25;
  v22[10] = v21;
  return v22;
}

__n128 OUTLINED_FUNCTION_4_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a17, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __n128 a18)
{
  *(v19 + 16) = v20;
  v23 = v19 + v18 * v21;
  *(v23 + 32) = v22;
  result = a18;
  *(v23 + 40) = a18;
  return result;
}

void OUTLINED_FUNCTION_6_6(double a1)
{
  v3 = *(v1 + 32);
  *v2 = *v1;
  *(v2 + 16) = *(v1 + 16);
  *v1 = a1;
  *(v1 + 8) = v3;
}

uint64_t OUTLINED_FUNCTION_12_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return swift_deallocPartialClassInstance();
}

uint64_t EngagementProcessedBookMarkDate.__allocating_init(userDefaultsProvider:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t EngagementProcessedBookMarkDate.init(userDefaultsProvider:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

Swift::Double __swiftcall EngagementProcessedBookMarkDate.getTimeInterval()()
{
  swift_getObjectType();
  sub_1DA4218E4();
  return result;
}

Swift::Void __swiftcall EngagementProcessedBookMarkDate.setTimeInterval(timeInterval:)(Swift::Double timeInterval)
{
  if (qword_1EE100EF8 != -1)
  {
    OUTLINED_FUNCTION_0_8(&qword_1EE100EF8);
  }

  v2 = sub_1DA421A94();
  __swift_project_value_buffer(v2, static Logger.conversionCategory);
  v3 = sub_1DA421A74();
  v4 = sub_1DA421F64();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = timeInterval;
    _os_log_impl(&dword_1DA39E000, v3, v4, "setting timeinterval for new bookmark %f", v5, 0xCu);
    OUTLINED_FUNCTION_17();
  }

  swift_getObjectType();
  sub_1DA4218F4();
}

uint64_t EngagementProcessedBookMarkDate.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

Swift::Double __swiftcall DefaultDateRetriever.engagementsRetrievalStartDate()()
{
  __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
  v1 = OUTLINED_FUNCTION_1_7();
  v3 = v2(v1);
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v5 = OUTLINED_FUNCTION_3_8();
  v7 = COERCE_DOUBLE(v6(v5, v4));
  if (v8)
  {
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v9 = OUTLINED_FUNCTION_1_7();
    v10(v9);
  }

  else
  {
    result = v7;
  }

  v12 = v3 + -1814400.0;
  if (v3 + -1814400.0 <= 0.0)
  {
    v12 = 0.0;
  }

  if (v12 > result)
  {
    return v12;
  }

  return result;
}

Swift::Double __swiftcall DefaultDateRetriever.suggestionsShownRetrievalStartDate()()
{
  v1 = v0;
  v2 = sub_1DA4210B4();
  OUTLINED_FUNCTION_3_1();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_7();
  v8 = v7 - v6;
  started = DefaultDateRetriever.engagementsRetrievalStartDate()();
  if (qword_1EE100EF8 != -1)
  {
    OUTLINED_FUNCTION_0_8(&qword_1EE100EF8);
  }

  v10 = sub_1DA421A94();
  __swift_project_value_buffer(v10, static Logger.conversionCategory);
  v11 = sub_1DA421A74();
  v12 = sub_1DA421F64();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v27 = v14;
    *v13 = 136315138;
    sub_1DA421024();
    sub_1DA3C8A54(&qword_1EE100F18, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
    v15 = sub_1DA422364();
    v17 = v16;
    (*(v4 + 8))(v8, v2);
    v18 = sub_1DA3A5FE8(v15, v17, &v27);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_1DA39E000, v11, v12, "Start looking up engagement interactions from %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_17();
  }

  v19 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  v20 = OUTLINED_FUNCTION_3_8();
  v22 = COERCE_DOUBLE(v21(v20, v19));
  if (v23)
  {
    __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
    v24 = OUTLINED_FUNCTION_1_7();
    v25(v24);
  }

  else
  {
    result = v22;
  }

  if (started + -2678400.0 > result)
  {
    return started + -2678400.0;
  }

  return result;
}

uint64_t DefaultDateRetriever.deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  return v0;
}

uint64_t DefaultDateRetriever.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  return MEMORY[0x1EEE6BDC0](v0, 104, 7);
}

Swift::Double __swiftcall DawnCInstallationDateGetter.earliestPossibleDawnCDate()()
{
  v0 = sub_1DA421144();
  OUTLINED_FUNCTION_3_1();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_7();
  v6 = v5 - v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAE870, &qword_1DA4252E0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF078, &qword_1DA4252E8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF080, &qword_1DA4252F0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v28 - v14;
  v16 = sub_1DA420F24();
  OUTLINED_FUNCTION_3_1();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4_7();
  v22 = v21 - v20;
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v0);
  v23 = sub_1DA421154();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v23);
  sub_1DA420F14();
  sub_1DA420EF4();
  sub_1DA420F04();
  sub_1DA420EE4();
  sub_1DA421114();
  sub_1DA421104();
  (*(v2 + 8))(v6, v0);
  v24 = sub_1DA4210B4();
  if (__swift_getEnumTagSinglePayload(v9, 1, v24) == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1DA421034();
    v27 = v26;
    (*(v18 + 8))(v22, v16);
    (*(*(v24 - 8) + 8))(v9, v24);
    return v27;
  }

  return result;
}

Swift::Double_optional __swiftcall DefaultDawnCInstallationDateGetter.getFirstInstallDateOfDawnCOrLater()()
{
  swift_getObjectType();
  v0 = sub_1DA4218D4();
  v1 = sub_1DA3C7990(v0);

  v2 = sub_1DA3C7844(v1);
  v4 = v3;

  if (v4)
  {
    if (qword_1EE100EF8 != -1)
    {
      OUTLINED_FUNCTION_0_8(&qword_1EE100EF8);
    }

    v5 = sub_1DA421A94();
    __swift_project_value_buffer(v5, static Logger.conversionCategory);
    v6 = sub_1DA421A74();
    v7 = sub_1DA421F64();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      v9 = "did not find DawnC or later installation date on this device";
      v10 = v7;
      v11 = v6;
      v12 = v8;
      v13 = 2;
LABEL_10:
      _os_log_impl(&dword_1DA39E000, v11, v10, v9, v12, v13);
      OUTLINED_FUNCTION_17();
    }
  }

  else
  {
    if (qword_1EE100EF8 != -1)
    {
      OUTLINED_FUNCTION_0_8(&qword_1EE100EF8);
    }

    v14 = sub_1DA421A94();
    __swift_project_value_buffer(v14, static Logger.conversionCategory);
    v6 = sub_1DA421A74();
    v15 = sub_1DA421F64();
    if (os_log_type_enabled(v6, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 134217984;
      *(v16 + 4) = v2;
      v9 = "Got first Install date that >= DawnC as %f";
      v10 = v15;
      v11 = v6;
      v12 = v16;
      v13 = 12;
      goto LABEL_10;
    }
  }

  v18 = v2;
  result.value = v17;
  result.is_nil = v18;
  return result;
}

uint64_t sub_1DA3C7844(uint64_t result)
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
      if (*(v11 + v15) < v12)
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

unint64_t *sub_1DA3C7990(uint64_t a1)
{
  v2 = a1;
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v8 = swift_slowAlloc();
      v2 = sub_1DA3C829C(v8, v4, v2);
      MEMORY[0x1DA74E430](v8, -1, -1);
      return v2;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v5 = (v9 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_1DA3D78F8(0, v4, v5);
  v6 = sub_1DA3C7B60(v5, v4, v2);
  if (!v1)
  {
    return v6;
  }

  swift_willThrow();
  return v2;
}

uint64_t sub_1DA3C7B60(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v55 = a2;
  v56 = a1;
  v66 = sub_1DA421664();
  v4 = *(v66 - 8);
  v5 = MEMORY[0x1EEE9AC00](v66);
  v65 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v64 = &v54 - v7;
  v77 = sub_1DA421644();
  v8 = *(v77 - 8);
  v9 = MEMORY[0x1EEE9AC00](v77);
  v80 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v79 = &v54 - v11;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF088, &qword_1DA425438);
  v12 = MEMORY[0x1EEE9AC00](v74);
  v63 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v73 = &v54 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v54 - v16;
  v18 = sub_1DA421634();
  result = MEMORY[0x1EEE9AC00](v18);
  v81 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = 0;
  v22 = 0;
  v75 = a3;
  v23 = *(a3 + 64);
  v59 = a3 + 64;
  v24 = 1 << *(a3 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v23;
  v58 = (v24 + 63) >> 6;
  v71 = v20 + 16;
  v72 = v20;
  v78 = v20 + 8;
  v70 = *MEMORY[0x1E69D2CF8];
  v68 = (v8 + 8);
  v69 = (v8 + 104);
  v60 = (v4 + 8);
  v62 = v17;
  v61 = result;
  while (v26)
  {
    v27 = __clz(__rbit64(v26));
    v76 = (v26 - 1) & v26;
LABEL_11:
    v30 = v27 | (v22 << 6);
    v31 = v75;
    v32 = v72;
    v33 = *(v72 + 16);
    v34 = v81;
    v33(v81, v75[6] + *(v72 + 72) * v30, v18);
    v35 = v31[7];
    v67 = v30;
    v36 = *(v35 + 8 * v30);
    v33(v17, v34, v18);
    v37 = v73;
    *&v17[*(v74 + 48)] = v36;
    sub_1DA3C8314(v17, v37);
    sub_1DA421614();
    v38 = *(v32 + 8);
    v38(v37, v18);
    (*v69)(v80, v70, v77);
    sub_1DA3C8A54(&qword_1EE100F08, MEMORY[0x1E69D2D00], MEMORY[0x1E69D2D08]);
    sub_1DA421CD4();
    sub_1DA421CD4();
    if (v84 == v82 && v85 == v83)
    {

      v43 = *v68;
      v44 = v77;
      (*v68)(v80, v77);
      v43(v79, v44);
LABEL_18:
      v45 = v63;
      sub_1DA3C8314(v17, v63);
      v46 = v64;
      sub_1DA421624();
      v38(v45, v18);
      v47 = v65;
      sub_1DA421654();
      sub_1DA3C8A54(&qword_1EE100F00, MEMORY[0x1E69D2D10], MEMORY[0x1E69D2D18]);
      v48 = v66;
      v49 = sub_1DA421B44();
      v50 = *v60;
      v51 = v47;
      v18 = v61;
      (*v60)(v51, v48);
      v52 = v46;
      v17 = v62;
      v50(v52, v48);
      sub_1DA3C8384(v17);
      result = (v38)(v81, v18);
      v26 = v76;
      if ((v49 & 1) == 0)
      {
        *(v56 + ((v67 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v67;
        if (__OFADD__(v57++, 1))
        {
          __break(1u);
          return sub_1DA3C86C4(v56, v55, v57, v75);
        }
      }
    }

    else
    {
      v40 = sub_1DA4223A4();

      v41 = *v68;
      v42 = v77;
      (*v68)(v80, v77);
      v41(v79, v42);
      if (v40)
      {
        goto LABEL_18;
      }

      sub_1DA3C8384(v17);
      result = (v38)(v81, v18);
      v26 = v76;
    }
  }

  v28 = v22;
  while (1)
  {
    v22 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v22 >= v58)
    {
      return sub_1DA3C86C4(v56, v55, v57, v75);
    }

    v29 = *(v59 + 8 * v22);
    ++v28;
    if (v29)
    {
      v27 = __clz(__rbit64(v29));
      v76 = (v29 - 1) & v29;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1DA3C829C(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v6 = sub_1DA3C7B60(v5, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_1DA3C8314(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF088, &qword_1DA425438);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DA3C8384(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF088, &qword_1DA425438);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1DA3C83EC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v4 = a4;
    v5 = a3;
    if (*(a4 + 16) == a3)
    {
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEE70, &unk_1DA4246E0);
      OUTLINED_FUNCTION_3_8();
      v7 = sub_1DA422214();
      if (a2 < 1)
      {
        v8 = 0;
      }

      else
      {
        v8 = *a1;
      }

      v9 = 0;
      v10 = v7 + 64;
      v44 = v4;
      while (v8)
      {
        v11 = __clz(__rbit64(v8));
        v45 = (v8 - 1) & v8;
LABEL_16:
        v14 = v11 | (v9 << 6);
        v15 = *(v4 + 56);
        v16 = *(v4 + 48) + 56 * v14;
        v17 = *v16;
        v18 = *(v16 + 8);
        v19 = *(v16 + 16);
        v20 = *(v16 + 24);
        v21 = *(v16 + 32);
        v23 = *(v16 + 40);
        v22 = *(v16 + 48);
        v24 = (v15 + 32 * v14);
        v25 = v24[1];
        v46 = v24[2];
        v47 = *v24;
        v26 = v24[3];
        sub_1DA422434();

        sub_1DA421BF4();
        if (v19 == 0.0)
        {
          v27 = 0.0;
        }

        else
        {
          v27 = v19;
        }

        MEMORY[0x1DA74DBD0](*&v27);
        if (v20 == 0.0)
        {
          v28 = 0.0;
        }

        else
        {
          v28 = v20;
        }

        MEMORY[0x1DA74DBD0](*&v28);
        MEMORY[0x1DA74DBB0](v21);
        sub_1DA422454();
        if (v22)
        {
          sub_1DA421BF4();
        }

        sub_1DA422474();
        OUTLINED_FUNCTION_8_6();
        if (((v31 << v30) & ~*(v10 + 8 * v29)) == 0)
        {
          OUTLINED_FUNCTION_6_7();
          while (++v32 != v34 || (v33 & 1) == 0)
          {
            v35 = v32 == v34;
            if (v32 == v34)
            {
              v32 = 0;
            }

            v33 |= v35;
            if (*(v10 + 8 * v32) != -1)
            {
              OUTLINED_FUNCTION_5_7();
              goto LABEL_33;
            }
          }

          goto LABEL_37;
        }

        OUTLINED_FUNCTION_7_6();
LABEL_33:
        OUTLINED_FUNCTION_9_5();
        *(v10 + v36) |= v37;
        v40 = v38[6] + 56 * v39;
        *v40 = v17;
        *(v40 + 8) = v18;
        *(v40 + 16) = v19;
        *(v40 + 24) = v20;
        *(v40 + 32) = v21;
        *(v40 + 40) = v23;
        *(v40 + 48) = v22;
        v41 = (v38[7] + 32 * v39);
        *v41 = v47;
        v41[1] = v25;
        v41[2] = v46;
        v41[3] = v26;
        ++v38[2];
        if (__OFSUB__(v5--, 1))
        {
          goto LABEL_38;
        }

        v4 = v44;
        v8 = v45;
        if (!v5)
        {
          return;
        }
      }

      v12 = v9;
      while (1)
      {
        v9 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v9 >= a2)
        {
          return;
        }

        v13 = a1[v9];
        ++v12;
        if (v13)
        {
          v11 = __clz(__rbit64(v13));
          v45 = (v13 - 1) & v13;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }
  }
}

uint64_t sub_1DA3C86C4(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v45 = sub_1DA421634();
  v43 = *(v45 - 8);
  v8 = MEMORY[0x1EEE9AC00](v45);
  v10 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v40 = v37 - v11;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF090, &unk_1DA425440);
  result = sub_1DA422214();
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
  v37[1] = v43 + 16;
  v38 = result;
  v44 = v43 + 32;
  v16 = result + 64;
  v39 = a1;
  v37[0] = a4;
  v17 = v45;
  while (v14)
  {
    v18 = v10;
    v19 = __clz(__rbit64(v14));
    v41 = (v14 - 1) & v14;
LABEL_16:
    v22 = v19 | (v15 << 6);
    v23 = a4[6];
    v24 = v43;
    v42 = *(v43 + 72);
    v25 = v40;
    (*(v43 + 16))(v40, v23 + v42 * v22, v17);
    v26 = *(a4[7] + 8 * v22);
    v27 = *(v24 + 32);
    v10 = v18;
    v27(v18, v25, v17);
    v13 = v38;
    sub_1DA3C8A54(&qword_1ECBAF098, MEMORY[0x1E69D2CE8], MEMORY[0x1E69D2CF0]);
    result = sub_1DA421B24();
    v28 = -1 << *(v13 + 32);
    v29 = result & ~v28;
    v30 = v29 >> 6;
    if (((-1 << v29) & ~*(v16 + 8 * (v29 >> 6))) == 0)
    {
      v32 = 0;
      v33 = (63 - v28) >> 6;
      a1 = v39;
      while (++v30 != v33 || (v32 & 1) == 0)
      {
        v34 = v30 == v33;
        if (v30 == v33)
        {
          v30 = 0;
        }

        v32 |= v34;
        v35 = *(v16 + 8 * v30);
        if (v35 != -1)
        {
          v31 = __clz(__rbit64(~v35)) + (v30 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v31 = __clz(__rbit64((-1 << v29) & ~*(v16 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
    a1 = v39;
LABEL_25:
    *(v16 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
    result = (v27)(*(v13 + 48) + v31 * v42, v10, v45);
    *(*(v13 + 56) + 8 * v31) = v26;
    ++*(v13 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_31;
    }

    a4 = v37[0];
    v14 = v41;
    if (!a3)
    {
      return v13;
    }
  }

  v20 = v15;
  while (1)
  {
    v15 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v21 = a1[v15];
    ++v20;
    if (v21)
    {
      v18 = v10;
      v19 = __clz(__rbit64(v21));
      v41 = (v21 - 1) & v21;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1DA3C8A54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1DA3C8A9C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v4 = a4;
    v5 = a3;
    if (*(a4 + 16) == a3)
    {
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF0A0, &unk_1DA425450);
      OUTLINED_FUNCTION_3_8();
      v8 = sub_1DA422214();
      v9 = v8;
      if (a2 < 1)
      {
        v10 = 0;
      }

      else
      {
        v10 = *a1;
      }

      v11 = 0;
      v12 = v8 + 64;
      v32 = v4;
      while (v10)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_16:
        v16 = v13 | (v11 << 6);
        v17 = *(*(v4 + 48) + v16);
        v18 = (*(v4 + 56) + 16 * v16);
        v19 = v18[1];
        v33 = *v18;
        sub_1DA422434();
        MEMORY[0x1DA74DBB0](v17);
        sub_1DA422474();
        OUTLINED_FUNCTION_8_6();
        if (((v22 << v21) & ~*(v12 + 8 * v20)) == 0)
        {
          OUTLINED_FUNCTION_6_7();
          while (++v23 != v25 || (v24 & 1) == 0)
          {
            v26 = v23 == v25;
            if (v23 == v25)
            {
              v23 = 0;
            }

            v24 |= v26;
            if (*(v12 + 8 * v23) != -1)
            {
              OUTLINED_FUNCTION_5_7();
              goto LABEL_25;
            }
          }

          goto LABEL_29;
        }

        OUTLINED_FUNCTION_7_6();
LABEL_25:
        OUTLINED_FUNCTION_9_5();
        *(v12 + v27) |= v28;
        *(v9[6] + v29) = v17;
        v30 = (v9[7] + 16 * v29);
        *v30 = v33;
        v30[1] = v19;
        ++v9[2];
        if (__OFSUB__(v5--, 1))
        {
          goto LABEL_30;
        }

        v4 = v32;
        if (!v5)
        {
          return;
        }
      }

      v14 = v11;
      while (1)
      {
        v11 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v11 >= a2)
        {
          return;
        }

        v15 = a1[v11];
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }
  }
}

uint64_t OUTLINED_FUNCTION_0_8(uint64_t a1)
{

  return swift_once();
}

double sub_1DA3C8D54()
{
  v0 = [BiomeLibrary() Siri];
  swift_unknownObjectRelease();
  v1 = [v0 AssistantSuggestionFeatures];
  swift_unknownObjectRelease();
  _s45FeatureEngagementBiomePostConversionProcessorCMa();
  v2 = swift_allocObject();
  result = 10200.0;
  *(v2 + 16) = xmmword_1DA425460;
  *(v2 + 32) = 0;
  *(v2 + 40) = v1;
  return result;
}

uint64_t sub_1DA3C8DE8(uint64_t a1)
{
  *(v1 + 16) = xmmword_1DA425460;
  *(v1 + 32) = 0;
  *(v1 + 40) = a1;
  return v1;
}

uint64_t sub_1DA3C8E04(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1DA4211F4();
  v3[5] = v4;
  OUTLINED_FUNCTION_5_2(v4);
  v3[6] = v5;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v6 = sub_1DA4212E4();
  v3[9] = v6;
  OUTLINED_FUNCTION_5_2(v6);
  v3[10] = v7;
  v3[11] = swift_task_alloc();
  OUTLINED_FUNCTION_11_3();

  return MEMORY[0x1EEE6DFA0](v8);
}

uint64_t sub_1DA3C8F1C()
{
  v39 = v0;
  if (qword_1EE100EF8 != -1)
  {
    OUTLINED_FUNCTION_0_9();
    swift_once();
  }

  v2 = sub_1DA421A94();
  __swift_project_value_buffer(v2, static Logger.conversionCategory);
  v3 = OUTLINED_FUNCTION_32_0();
  v4(v3);
  v5 = sub_1DA421A74();
  v6 = sub_1DA421F64();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[8];
    v8 = v0[6];
    v35 = v0[5];
    OUTLINED_FUNCTION_22_0();
    swift_slowAlloc();
    OUTLINED_FUNCTION_27_0();
    v37 = swift_slowAlloc();
    v38 = v37;
    *v1 = 136315138;
    v36 = v6;
    sub_1DA4212D4();
    v9 = sub_1DA421194();
    v11 = v10;
    (*(v8 + 8))(v7, v35);
    v12 = OUTLINED_FUNCTION_38();
    v13(v12);
    v14 = sub_1DA3A5FE8(v9, v11, &v38);

    *(v1 + 4) = v14;
    OUTLINED_FUNCTION_36_0(&dword_1DA39E000, v5, v36, "Processing feature conversion logging for: %s");
    _os_log_impl(v15, v16, v17, v18, v19, v20);
    __swift_destroy_boxed_opaque_existential_0(v37);
    OUTLINED_FUNCTION_18_0();
    MEMORY[0x1DA74E430]();
    OUTLINED_FUNCTION_18_0();
    MEMORY[0x1DA74E430]();
  }

  else
  {

    v21 = OUTLINED_FUNCTION_38();
    v22(v21);
  }

  v24 = v0[6];
  v23 = v0[7];
  v25 = v0[5];
  v26 = v0[3];
  sub_1DA4212D4();
  v27 = sub_1DA3CB3EC(v23, v26, 1u);
  (*(v24 + 8))(v23, v25);
  if (v27)
  {
    v28 = [*(v0[4] + 40) source];
    [v28 sendEvent_];
  }

  else
  {
    v27 = sub_1DA421A74();
    sub_1DA421F74();
    v29 = OUTLINED_FUNCTION_31_0();
    if (os_log_type_enabled(v29, v30))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_9_0(&dword_1DA39E000, v31, v32, "Unable to process biome feature feed");
      OUTLINED_FUNCTION_18_0();
      MEMORY[0x1DA74E430]();
    }
  }

  v33 = v0[1];

  return v33();
}

void sub_1DA3C92FC()
{
  sub_1DA4211F4();
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_4_7();
  v3 = v2 - v1;
  v35 = sub_1DA421314();
  OUTLINED_FUNCTION_3_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_7();
  v9 = v8 - v7;
  v10 = sub_1DA4212B4();
  sub_1DA421604();
  v11 = sub_1DA4215A4();
  sub_1DA3EA3F0(v11, v12, v10);
  v14 = v13;

  v15 = 0;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  v36 = *(v16 + 16);
  while (1)
  {
    if (v36 == v15)
    {

      return;
    }

    if (v15 >= *(v16 + 16))
    {
      break;
    }

    (*(v5 + 16))(v9, v16 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v15, v35);
    sub_1DA4212D4();
    v17 = sub_1DA3CB3EC(v3, v9, 0x8000u);
    (*(v5 + 8))(v9, v35);
    v18 = OUTLINED_FUNCTION_35_0();
    v19(v18);
    if (v17)
    {
      v20 = [*(v34 + 40) source];
      [v20 sendEvent:v17];
    }

    else
    {
      if (qword_1EE100EF8 != -1)
      {
        OUTLINED_FUNCTION_0_9();
        swift_once();
      }

      v21 = sub_1DA421A94();
      __swift_project_value_buffer(v21, static Logger.conversionCategory);
      v20 = sub_1DA421A74();
      v22 = sub_1DA421F74();
      v23 = OUTLINED_FUNCTION_31_0();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_1DA39E000, v20, v22, "Unable to process biome feature feed", v25, 2u);
        OUTLINED_FUNCTION_18_0();
        MEMORY[0x1DA74E430]();
      }
    }

    ++v15;
  }

  __break(1u);
  OUTLINED_FUNCTION_0_9();
  swift_once();
  v26 = sub_1DA421A94();
  __swift_project_value_buffer(v26, static Logger.conversionCategory);
  v27 = 0;
  v28 = sub_1DA421A74();
  v29 = sub_1DA421F74();

  if (os_log_type_enabled(v28, v29))
  {
    OUTLINED_FUNCTION_22_0();
    v30 = swift_slowAlloc();
    OUTLINED_FUNCTION_34_0();
    v31 = swift_slowAlloc();
    *v30 = 138412290;
    v32 = 0;
    v33 = _swift_stdlib_bridgeErrorToNSError();
    *(v30 + 4) = v33;
    *v31 = v33;
    _os_log_impl(&dword_1DA39E000, v28, v29, "Unable to process engagement feature collection. %@", v30, 0xCu);
    sub_1DA3A8CA8(v31, &qword_1ECBAEC70, &qword_1DA42A510);
    OUTLINED_FUNCTION_18_0();
    MEMORY[0x1DA74E430]();
    OUTLINED_FUNCTION_18_0();
    MEMORY[0x1DA74E430]();
  }

  else
  {
  }
}

id sub_1DA3C9754(uint64_t a1, uint64_t a2)
{
  if (OUTLINED_FUNCTION_14_0(3))
  {
    OUTLINED_FUNCTION_23_0();
    v3 = &v110;
    sub_1DA3B1C24(v6 + v7, &v110);

    sub_1DA3B239C(&v112, v119);
    sub_1DA3B1C80(&v110);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDA0, &unk_1DA423DB0);
    OUTLINED_FUNCTION_21_1(v8, v9, v8, MEMORY[0x1E69E6158], v10, v11, v12, v13, v84, v87, v90, v93, v96, v99, v102, v106, SLOBYTE(v110), v111, v112, v113, v114, v115, v116, v117, v118, v119[0]);
    OUTLINED_FUNCTION_33_0();
    if (v14)
    {
      v17 = 0;
    }

    else
    {
      v17 = v15;
    }

    if (v14)
    {
      v18 = 0;
    }

    else
    {
      v18 = v16;
    }

    v103 = v18;
    v107 = v17;
  }

  else
  {
    v103 = 0;
    v107 = 0;
  }

  v19 = OUTLINED_FUNCTION_14_0(2);
  v20 = v19;
  if (v19)
  {
    sub_1DA3B1C24(v19 + OBJC_IVAR____TtCO27SiriSuggestionsIntelligence27SiriSuggestionsIntelligence14SourcedFeature_feature, &v110);

    sub_1DA3B239C(&v112, v119);
    sub_1DA3B1C80(&v110);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDA0, &unk_1DA423DB0);
    OUTLINED_FUNCTION_21_1(v21, v22, v21, MEMORY[0x1E69E6158], v23, v24, v25, v26, v84, v87, v90, v93, v96, v99, v103, v107, SLOBYTE(v110), v111, v112, v113, v114, v115, v116, v117, v118, v119[0]);
    OUTLINED_FUNCTION_33_0();
    if (v27)
    {
      v20 = 0;
    }

    else
    {
      v20 = v28;
    }

    if (v27)
    {
      v30 = 0;
    }

    else
    {
      v30 = v29;
    }
  }

  else
  {
    v30 = 0;
  }

  v31 = OUTLINED_FUNCTION_14_0(4);
  if (v31)
  {
    v32 = v31;
    sub_1DA3B1C24(v31 + OBJC_IVAR____TtCO27SiriSuggestionsIntelligence27SiriSuggestionsIntelligence14SourcedFeature_feature, &v110);

    sub_1DA3B239C(&v112, v119);
    sub_1DA3B1C80(&v110);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDA0, &unk_1DA423DB0);
    OUTLINED_FUNCTION_21_1(v33, v34, v33, MEMORY[0x1E69E6158], v35, v36, v37, v38, v84, v87, v90, v93, v96, v99, v103, v107, SLOBYTE(v110), v111, v112, v113, v114, v115, v116, v117, v118, v119[0]);
    OUTLINED_FUNCTION_33_0();
    if (v39)
    {
      v42 = 0;
    }

    else
    {
      v42 = v40;
    }

    if (v39)
    {
      v43 = 0;
    }

    else
    {
      v43 = v41;
    }
  }

  else
  {
    v42 = 0;
    v43 = 0;
  }

  v44 = OUTLINED_FUNCTION_14_0(5);
  if (v44)
  {
    v52 = v44;
    OUTLINED_FUNCTION_24_0(v44, v45, v46, v47, v48, v49, v50, v51, v84, v87, v90, v93, v96, v99, v103, v107);

    sub_1DA3B239C((v3 + 2), v119);
    sub_1DA3B1C80(&v110);
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDA0, &unk_1DA423DB0);
    v59 = OUTLINED_FUNCTION_21_1(v53, v54, v53, MEMORY[0x1E69E63B0], v55, v56, v57, v58, v85, v88, v91, v94, v97, v100, v104, v108, SLOBYTE(v110), v111, v112, v113, v114, v115, v116, v117, v118, v119[0]);
    v60 = v59 ^ 1;
    if (v59)
    {
      v61 = v110;
    }

    else
    {
      v61 = 0.0;
    }
  }

  else
  {
    v60 = 1;
    v61 = 0.0;
  }

  v62 = OUTLINED_FUNCTION_14_0(1);
  if (v62)
  {
    v70 = v62;
    OUTLINED_FUNCTION_24_0(v62, v63, v64, v65, v66, v67, v68, v69, v84, v87, v90, v93, v96, v99, v103, v107);

    sub_1DA3B239C((v3 + 2), v119);
    sub_1DA3B1C80(&v110);
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDA0, &unk_1DA423DB0);
    OUTLINED_FUNCTION_21_1(v71, v72, v71, MEMORY[0x1E69E6158], v73, v74, v75, v76, v86, v89, v92, v95, v98, v101, v105, v109, SLOBYTE(v110), v111, v112, v113, v114, v115, v116, v117, v118, v119[0]);
    OUTLINED_FUNCTION_33_0();
    if (v77)
    {
      v80 = 0;
    }

    else
    {
      v80 = v78;
    }

    if (v77)
    {
      v81 = 0;
    }

    else
    {
      v81 = v79;
    }

    if (v60)
    {
      goto LABEL_39;
    }

LABEL_41:
    v82 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    goto LABEL_42;
  }

  v80 = 0;
  v81 = 0;
  if ((v60 & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_39:
  v82 = 0;
LABEL_42:
  objc_allocWithZone(MEMORY[0x1E698EED0]);

  return sub_1DA3CC234(a1, a2, v107, v103, v20, v30, 0, 0, v42, v43, v82, v80, v81);
}

uint64_t sub_1DA3C9A60(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    return 0;
  }

  v3 = *(a1 + 32);

  sub_1DA3CCB08();
  if (*(v3 + 16))
  {
    v1 = *(v3 + 32);

    return SiriSuggestionsIntelligence.MediaDeviceType.rawValue.getter(v1);
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1DA3C9ADC(uint64_t *a1)
{
  if (!a1[1])
  {
    return 0;
  }

  v1 = *a1;

  return v1;
}

id sub_1DA3C9B1C(uint64_t a1)
{
  OUTLINED_FUNCTION_1_8();
  v7 = sub_1DA3EA3A8(v3, v4, v5, v6, a1);
  if (v7 && (v8 = v7, sub_1DA3B1C24(v7 + OBJC_IVAR____TtCO27SiriSuggestionsIntelligence27SiriSuggestionsIntelligence14SourcedFeature_feature, &v418), v8, OUTLINED_FUNCTION_30_0(), sub_1DA3B1C80(&v418), v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDA0, &unk_1DA423DB0), OUTLINED_FUNCTION_18_1(v9, v10, v9, &type metadata for SiriSuggestionsIntelligence.NowPlaying, v11, v12, v13, v14, v200, v208, v216, v224, v232, v240, v248, v256, v264, v272, v280, v288, v296, v304, v313, v322, v330, v338, v347, v356, v365, v374, v382, v391, v400, v409, v418)))
  {
    v16 = v418;
    v15 = v419;
    v18 = v420;
    v17 = v421;
    v19 = v422;
  }

  else
  {
    v16 = 0;
    v18 = 0;
    v17 = 0;
    v19 = 0;
    v15 = 1;
  }

  v401 = v15;
  v410 = v19;
  OUTLINED_FUNCTION_1_8();
  v24 = sub_1DA3EA3A8(v20, v21, v22, v23, a1);
  if (v24)
  {
    v32 = v24;
    OUTLINED_FUNCTION_10_4(v24, v25, v26, v27, v28, v29, v30, v31, v200, v208, v216, v224, v232, v240, v248, v256, v264, v272, v280, v288, v296, v304, v313, v322, v330, v338, v347, v356, v365, v374, v382, v391, v401, v410);

    OUTLINED_FUNCTION_29();
    sub_1DA3B1C80(&v418);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDA0, &unk_1DA423DB0);
    v39 = OUTLINED_FUNCTION_18_1(v33, v34, v33, &type metadata for SiriSuggestionsIntelligence.CarPlayConnection, v35, v36, v37, v38, v201, v209, v217, v225, v233, v241, v249, v257, v265, v273, v281, v289, v297, v305, v314, v323, v331, v339, v348, v357, v366, v375, v383, v392, v402, v411, v418);
    HIDWORD(v374) = v39 ^ 1;
    LODWORD(v330) = (v39 & v419) ^ 1;
  }

  else
  {
    LODWORD(v330) = 1;
    HIDWORD(v374) = 1;
  }

  OUTLINED_FUNCTION_1_8();
  v44 = sub_1DA3EA3A8(v40, v41, v42, v43, a1);
  v52 = v401;
  if (v44)
  {
    OUTLINED_FUNCTION_9_6(v44, v45, v46, v47, v48, v49, v50, v51, v200, v208, v216, v224, v232, v240, v248, v256, v264, v272, v280, v288, v296, v304, v313, v322, v330, v338, v347, v356, v365, v374, v382, v391, v401, v410);

    OUTLINED_FUNCTION_29();
    sub_1DA3B1C80(&v418);
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDA0, &unk_1DA423DB0);
    OUTLINED_FUNCTION_18_1(v53, v54, v53, MEMORY[0x1E69E6158], v55, v56, v57, v58, v202, v210, v218, v226, v234, v242, v250, v258, v266, v274, v282, v290, v298, v306, v315, v324, v332, v340, v349, v358, v367, v376, v384, v393, v403, v412, v418);
    OUTLINED_FUNCTION_28();
    if (v61)
    {
      v62 = 0;
    }

    else
    {
      v62 = v59;
    }

    v385 = v62;
    v394 = v60;
  }

  else
  {
    v385 = 0;
    v394 = 0;
  }

  OUTLINED_FUNCTION_1_8();
  v67 = sub_1DA3EA3A8(v63, v64, v65, v66, a1);
  if (v67)
  {
    OUTLINED_FUNCTION_9_6(v67, v68, v69, v70, v71, v72, v73, v74, v200, v208, v216, v224, v232, v240, v248, v256, v264, v272, v280, v288, v296, v304, v313, v322, v330, v338, v347, v356, v365, v374, v385, v394, v401, v410);

    OUTLINED_FUNCTION_29();
    sub_1DA3B1C80(&v418);
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDA0, &unk_1DA423DB0);
    OUTLINED_FUNCTION_18_1(v75, v76, v75, MEMORY[0x1E69E6158], v77, v78, v79, v80, v203, v211, v219, v227, v235, v243, v251, v259, v267, v275, v283, v291, v299, v307, v316, v325, v333, v341, v350, v359, v368, v377, v386, v395, v404, v413, v418);
    OUTLINED_FUNCTION_28();
    if (v61)
    {
      v83 = 0;
    }

    else
    {
      v83 = v81;
    }

    v360 = v83;
    v369 = v82;
  }

  else
  {
    v360 = 0;
    v369 = 0;
  }

  OUTLINED_FUNCTION_1_8();
  v88 = sub_1DA3EA3A8(v84, v85, v86, v87, a1);
  if (v88)
  {
    OUTLINED_FUNCTION_9_6(v88, v89, v90, v91, v92, v93, v94, v95, v200, v208, v216, v224, v232, v240, v248, v256, v264, v272, v280, v288, v296, v304, v313, v322, v330, v338, v347, v360, v369, v374, v385, v394, v401, v410);

    OUTLINED_FUNCTION_29();
    sub_1DA3B1C80(&v418);
    v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDA0, &unk_1DA423DB0);
    OUTLINED_FUNCTION_18_1(v96, v97, v96, MEMORY[0x1E69E6158], v98, v99, v100, v101, v204, v212, v220, v228, v236, v244, v252, v260, v268, v276, v284, v292, v300, v308, v317, v326, v334, v342, v351, v361, v370, v378, v387, v396, v405, v414, v418);
    OUTLINED_FUNCTION_28();
    if (v61)
    {
      v104 = 0;
    }

    else
    {
      v104 = v102;
    }

    v343 = v104;
    v352 = v103;
  }

  else
  {
    v343 = 0;
    v352 = 0;
  }

  OUTLINED_FUNCTION_1_8();
  v109 = sub_1DA3EA3A8(v105, v106, v107, v108, a1);
  if (v109)
  {
    OUTLINED_FUNCTION_9_6(v109, v110, v111, v112, v113, v114, v115, v116, v200, v208, v216, v224, v232, v240, v248, v256, v264, v272, v280, v288, v296, v304, v313, v322, v330, v343, v352, v360, v369, v374, v385, v394, v401, v410);

    OUTLINED_FUNCTION_29();
    sub_1DA3B1C80(&v418);
    v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDA0, &unk_1DA423DB0);
    if (OUTLINED_FUNCTION_18_1(v117, v118, v117, MEMORY[0x1E69E6370], v119, v120, v121, v122, v205, v213, v221, v229, v237, v245, v253, v261, v269, v277, v285, v293, v301, v309, v318, v327, v335, v344, v353, v362, v371, v379, v388, v397, v406, v415, v418))
    {
      v123 = v418;
    }

    else
    {
      v123 = 2;
    }

    HIDWORD(v330) = v123;
  }

  else
  {
    HIDWORD(v330) = 2;
  }

  v124 = 2;
  OUTLINED_FUNCTION_1_8();
  v129 = sub_1DA3EA3A8(v125, v126, v127, v128, a1);
  if (v129)
  {
    OUTLINED_FUNCTION_9_6(v129, v130, v131, v132, v133, v134, v135, v136, v200, v208, v216, v224, v232, v240, v248, v256, v264, v272, v280, v288, v296, v304, v313, v322, v330, v343, v352, v360, v369, v374, v385, v394, v401, v410);

    OUTLINED_FUNCTION_29();
    sub_1DA3B1C80(&v418);
    v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDA0, &unk_1DA423DB0);
    if (OUTLINED_FUNCTION_18_1(v137, v138, v137, MEMORY[0x1E69E6370], v139, v140, v141, v142, v206, v214, v222, v230, v238, v246, v254, v262, v270, v278, v286, v294, v302, v310, v319, v328, v336, v345, v354, v363, v372, v380, v389, v398, v407, v416, v418))
    {
      v124 = v418;
    }

    else
    {
      v124 = 2;
    }
  }

  v143 = 2;
  OUTLINED_FUNCTION_1_8();
  v148 = sub_1DA3EA3A8(v144, v145, v146, v147, a1);
  if (v148)
  {
    v156 = v148;
    OUTLINED_FUNCTION_10_4(v148, v149, v150, v151, v152, v153, v154, v155, v200, v208, v216, v224, v232, v240, v248, v256, v264, v272, v280, v288, v296, v304, v313, v322, v330, v343, v352, v360, v369, v374, v385, v394, v401, v410);

    OUTLINED_FUNCTION_29();
    sub_1DA3B1C80(&v418);
    v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDA0, &unk_1DA423DB0);
    if (OUTLINED_FUNCTION_18_1(v157, v158, v157, MEMORY[0x1E69E6370], v159, v160, v161, v162, v207, v215, v223, v231, v239, v247, v255, v263, v271, v279, v287, v295, v303, v311, v320, v329, v337, v346, v355, v364, v373, v381, v390, v399, v408, v417, v418))
    {
      v143 = v418;
    }

    else
    {
      v143 = 2;
    }
  }

  v163 = v410;
  if (v52 == 1)
  {
    v164 = 0;
    v165 = 0;
    v166 = &off_1E85C2000;
    v167 = 0x1E696A000;
  }

  else
  {
    v418 = v16;
    v419 = v52;
    v420 = v18;
    v421 = v17;
    v422 = v410;
    if (v52)
    {
      v168 = v17;
      v169 = *(v410 + 16);
      v321 = v18;
      v312 = v168;
      sub_1DA3CCAB4(v16, v52, v18, v168, v410);
      v170 = (v410 + 32);
      while (2)
      {
        v171 = v169-- != 0;
        v172 = v171;
        if (v171)
        {
          switch(*v170)
          {
            case 1:

              v172 = 1;
              break;
            default:
              v173 = sub_1DA4223A4();

              ++v170;
              if ((v173 & 1) == 0)
              {
                continue;
              }

              break;
          }
        }

        break;
      }

      v163 = v410;
      v174 = v401;
      v18 = v321;
      v17 = v312;
    }

    else
    {
      v174 = 0;
      v172 = 0;
    }

    sub_1DA3CCA4C(v16, v174, v18, v17, v163);
    v175 = OUTLINED_FUNCTION_16_0();
    sub_1DA3CCAB4(v175, v176, v177, v178, v179);
    v164 = sub_1DA3C9A60(&v418);
    v165 = v180;
    v181 = OUTLINED_FUNCTION_16_0();
    sub_1DA3CCA4C(v181, v182, v183, v184, v185);
    v186 = OUTLINED_FUNCTION_16_0();
    sub_1DA3CCA4C(v186, v187, v188, v189, v190);
    v167 = 0x1E696A000uLL;
    v166 = &off_1E85C2000;
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  }

  if ((v374 & 0x100000000) != 0)
  {
    v191 = 0;
  }

  else
  {
    v191 = [objc_allocWithZone(*(v167 + 3480)) v166[44]];
  }

  if (HIDWORD(v330) == 2)
  {
    v192 = 0;
  }

  else
  {
    v192 = [objc_allocWithZone(*(v167 + 3480)) v166[44]];
  }

  if (v124 == 2)
  {
    v193 = 0;
  }

  else
  {
    v193 = [objc_allocWithZone(*(v167 + 3480)) v166[44]];
  }

  if (v143 == 2)
  {
    v194 = 0;
  }

  else
  {
    v194 = [objc_allocWithZone(*(v167 + 3480)) v166[44]];
  }

  v195 = objc_allocWithZone(MEMORY[0x1E698EEB8]);
  OUTLINED_FUNCTION_11_3();
  return sub_1DA3CC3C0(v196, v197, v198, v164, v165, v191, 0, 0, 0, 0, 0, 0, v394, v385, v369, v360, v352, v343, v192, v193, v194);
}

uint64_t sub_1DA3CA180(char a1)
{
  v1 = 1;
  v2 = 0;
  switch(a1)
  {
    case 1:
      goto LABEL_3;
    case 3:
      return v2 & 1;
    default:
      v1 = sub_1DA4223A4();
LABEL_3:

      v2 = v1;
      break;
  }

  return v2 & 1;
}

id sub_1DA3CA240(uint64_t a1)
{
  OUTLINED_FUNCTION_1_8();
  v6 = sub_1DA3EA3A8(v2, v3, v4, v5, a1);
  if (v6 && (v14 = v6, OUTLINED_FUNCTION_12_2(v6, v7, v8, v9, v10, v11, v12, v13, v176, v183, v190, v197, v204, v211, v218, v225, v232, v239, v246, v254, v262, v270, v278, v286, v295, v303, v311, v318), v14, OUTLINED_FUNCTION_30_0(), sub_1DA3B1C80(&v327), v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDA0, &unk_1DA423DB0), OUTLINED_FUNCTION_17_1(v15, v16, v15, &type metadata for SiriSuggestionsIntelligence.FocusMode, v17, v18, v19, v20, v177, v184, v191, v198, v205, v212, v219, v226, v233, v240, v247, v255, v263, v271, v279, v287, v296, v304, v312, v319, v327)))
  {
    v320 = v328;
    v280 = v329;
    v288 = v327;
    v272 = v330;
  }

  else
  {
    v280 = 0;
    v288 = 0;
    v272 = 0;
    v320 = 1;
  }

  OUTLINED_FUNCTION_1_8();
  v25 = sub_1DA3EA3A8(v21, v22, v23, v24, a1);
  if (v25 && (v33 = v25, OUTLINED_FUNCTION_12_2(v25, v26, v27, v28, v29, v30, v31, v32, v176, v183, v190, v197, v204, v211, v218, v225, v232, v239, v246, v254, v262, v272, v280, v288, v295, v303, v311, v320), v33, OUTLINED_FUNCTION_30_0(), sub_1DA3B1C80(&v327), v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDA0, &unk_1DA423DB0), OUTLINED_FUNCTION_17_1(v34, v35, v34, &type metadata for SiriSuggestionsIntelligence.NowPlaying, v36, v37, v38, v39, v178, v185, v192, v199, v206, v213, v220, v227, v234, v241, v248, v256, v264, v273, v281, v289, v297, v305, v313, v321, v327)))
  {
    v40 = v328;
    v257 = v329;
    v265 = v327;
    v249 = v330;
    v41 = v331;
  }

  else
  {
    v257 = 0;
    v265 = 0;
    v249 = 0;
    v41 = 0;
    v40 = 1;
  }

  v42 = 2;
  OUTLINED_FUNCTION_1_8();
  v47 = sub_1DA3EA3A8(v43, v44, v45, v46, a1);
  if (v47)
  {
    v55 = v47;
    OUTLINED_FUNCTION_12_2(v47, v48, v49, v50, v51, v52, v53, v54, v176, v183, v190, v197, v204, v211, v218, v225, v232, v239, v249, v257, v265, v272, v280, v288, v295, v303, v311, v320);

    OUTLINED_FUNCTION_30_0();
    sub_1DA3B1C80(&v327);
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDA0, &unk_1DA423DB0);
    OUTLINED_FUNCTION_17_1(v56, v57, v56, MEMORY[0x1E69E6370], v58, v59, v60, v61, v179, v186, v193, v200, v207, v214, v221, v228, v235, v242, v250, v258, v266, v274, v282, v290, v298, v306, v314, v322, v327);
    OUTLINED_FUNCTION_26_0();
    if (v63)
    {
      v42 = 2;
    }

    else
    {
      v42 = v62;
    }

    HIDWORD(v311) = v42;
  }

  else
  {
    HIDWORD(v311) = 2;
  }

  OUTLINED_FUNCTION_1_8();
  v68 = sub_1DA3EA3A8(v64, v65, v66, v67, a1);
  v76 = 4;
  if (v68)
  {
    v42 = v68;
    OUTLINED_FUNCTION_12_2(v68, v69, v70, v71, v72, v73, v74, v75, v176, v183, v190, v197, v204, v211, v218, v225, v232, v239, v249, v257, v265, v272, v280, v288, v295, v303, v311, v320);

    OUTLINED_FUNCTION_30_0();
    sub_1DA3B1C80(&v327);
    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDA0, &unk_1DA423DB0);
    OUTLINED_FUNCTION_17_1(v77, v78, v77, &type metadata for SiriSuggestionsIntelligence.NetworkConnection, v79, v80, v81, v82, v180, v187, v194, v201, v208, v215, v222, v229, v236, v243, v251, v259, v267, v275, v283, v291, v299, v307, v315, v323, v327);
    OUTLINED_FUNCTION_26_0();
    if (v63)
    {
      v76 = 4;
    }

    else
    {
      v76 = v83;
    }
  }

  v84 = 2;
  OUTLINED_FUNCTION_1_8();
  v89 = sub_1DA3EA3A8(v85, v86, v87, v88, a1);
  if (v89)
  {
    v42 = v89;
    OUTLINED_FUNCTION_12_2(v89, v90, v91, v92, v93, v94, v95, v96, v176, v183, v190, v197, v204, v211, v218, v225, v232, v239, v249, v257, v265, v272, v280, v288, v295, v303, v311, v320);

    OUTLINED_FUNCTION_30_0();
    sub_1DA3B1C80(&v327);
    v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDA0, &unk_1DA423DB0);
    OUTLINED_FUNCTION_17_1(v97, v98, v97, MEMORY[0x1E69E6370], v99, v100, v101, v102, v181, v188, v195, v202, v209, v216, v223, v230, v237, v244, v252, v260, v268, v276, v284, v292, v300, v308, v316, v324, v327);
    OUTLINED_FUNCTION_26_0();
    if (v63)
    {
      v84 = 2;
    }

    else
    {
      v84 = v103;
    }
  }

  v104 = 2;
  OUTLINED_FUNCTION_1_8();
  v109 = sub_1DA3EA3A8(v105, v106, v107, v108, a1);
  if (v109)
  {
    v42 = v109;
    OUTLINED_FUNCTION_12_2(v109, v110, v111, v112, v113, v114, v115, v116, v176, v183, v190, v197, v204, v211, v218, v225, v232, v239, v249, v257, v265, v272, v280, v288, v295, v303, v311, v320);

    OUTLINED_FUNCTION_30_0();
    sub_1DA3B1C80(&v327);
    v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDA0, &unk_1DA423DB0);
    OUTLINED_FUNCTION_17_1(v117, v118, v117, MEMORY[0x1E69E6370], v119, v120, v121, v122, v182, v189, v196, v203, v210, v217, v224, v231, v238, v245, v253, v261, v269, v277, v285, v293, v301, v309, v317, v325, v327);
    OUTLINED_FUNCTION_26_0();
    if (v63)
    {
      v104 = 2;
    }

    else
    {
      v104 = v123;
    }
  }

  OUTLINED_FUNCTION_1_8();
  v128 = 4;
  if (sub_1DA3EA3A8(v124, v125, v126, v127, a1))
  {
    OUTLINED_FUNCTION_23_0();
    sub_1DA3B1C24(v129 + v130, &v327);

    sub_1DA3B239C(&v329, v332);
    sub_1DA3B1C80(&v327);
    v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDA0, &unk_1DA423DB0);
    OUTLINED_FUNCTION_17_1(v131, v132, v131, &type metadata for SiriSuggestionsIntelligence.ScreenBrightness, v133, v134, v135, v136, v176, v183, v190, v197, v204, v211, v218, v225, v232, v239, v249, v257, v265, v272, v280, v288, v295, v303, v311, v320, v327);
    OUTLINED_FUNCTION_26_0();
    if (v63)
    {
      v128 = 4;
    }

    else
    {
      v128 = v137;
    }
  }

  OUTLINED_FUNCTION_1_8();
  if (sub_1DA3EA3A8(v138, v139, v140, v141, a1))
  {
    OUTLINED_FUNCTION_23_0();
    sub_1DA3B1C24(v142 + v143, &v327);

    sub_1DA3B239C(&v329, v332);
    sub_1DA3B1C80(&v327);
    v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDA0, &unk_1DA423DB0);
    OUTLINED_FUNCTION_17_1(v144, v145, v144, MEMORY[0x1E69E6370], v146, v147, v148, v149, v176, v183, v190, v197, v204, v211, v218, v225, v232, v239, v249, v257, v265, v272, v280, v288, v295, v303, v311, v320, v327);
  }

  v150 = 2;
  OUTLINED_FUNCTION_1_8();
  if (sub_1DA3EA3A8(v151, v152, v153, v154, a1))
  {
    OUTLINED_FUNCTION_23_0();
    sub_1DA3B1C24(v155 + v156, &v327);

    sub_1DA3B239C(&v329, v332);
    sub_1DA3B1C80(&v327);
    v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDA0, &unk_1DA423DB0);
    OUTLINED_FUNCTION_17_1(v157, v158, v157, MEMORY[0x1E69E6370], v159, v160, v161, v162, v176, v183, v190, v197, v204, v211, v218, v225, v232, v239, v249, v257, v265, v272, v280, v288, v295, v303, v311, v320, v327);
    OUTLINED_FUNCTION_26_0();
    if (v63)
    {
      v150 = 2;
    }

    else
    {
      v150 = v163;
    }
  }

  if (v320)
  {
    if (v320 == 1)
    {
      v302 = 0;
      v310 = 0;
    }

    else
    {
      v302 = SiriSuggestionsIntelligence.FocusType.rawValue.getter(v280);
      v310 = v164;
      sub_1DA3CCAA0(v288, v320);
    }
  }

  else
  {
    sub_1DA3CCAA0(v288, 0);
    v302 = 0x7375636F466F6ELL;
    v310 = 0xE700000000000000;
  }

  if (v40 == 1)
  {
    v326 = 0;
    v294 = 0;
  }

  else
  {
    v327 = v265;
    v328 = v40;
    v329 = v257;
    v330 = v249;
    v331 = v41;
    v326 = sub_1DA3C9ADC(&v327);
    v294 = v165;
    sub_1DA3CCA4C(v265, v40, v257, v249, v41);
  }

  if (v76 == 4)
  {
    v166 = 2;
  }

  else
  {
    v166 = sub_1DA3CA180(v76) & 1;
  }

  if (HIDWORD(v311) == 2)
  {
    v167 = 0;
  }

  else
  {
    v167 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  }

  if (v166 == 2)
  {
    v168 = 0;
  }

  else
  {
    v168 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  }

  if (v84 == 2)
  {
    v169 = 0;
  }

  else
  {
    v169 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  }

  if (v104 == 2)
  {
    v170 = 0;
  }

  else
  {
    v170 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  }

  v171 = 1;
  v172 = 0;
  switch(v128)
  {
    case 1:
      v171 = 2;
      goto LABEL_64;
    case 2:
      v171 = 3;
      goto LABEL_64;
    case 3:
      v171 = -1;
      goto LABEL_64;
    case 4:
      goto LABEL_65;
    default:
LABEL_64:
      v172 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
LABEL_65:
      if (v150 == 2)
      {
        v173 = 0;
      }

      else
      {
        v173 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      }

      v174 = objc_allocWithZone(MEMORY[0x1E698EEC8]);
      return sub_1DA3CC5BC(v302, v310, 0, 0, 0, v326, v294, v167, 0, v168, v169, 0, v170, v172, 0, v173, 0);
  }
}

id sub_1DA3CA8A8(uint64_t a1)
{
  OUTLINED_FUNCTION_1_8();
  v6 = sub_1DA3EA3A8(v2, v3, v4, v5, a1);
  v7 = v6;
  if (v6)
  {
    sub_1DA3B1C24(v6 + OBJC_IVAR____TtCO27SiriSuggestionsIntelligence27SiriSuggestionsIntelligence14SourcedFeature_feature, v38);

    sub_1DA3B239C(v39, v40);
    sub_1DA3B1C80(v38);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDA0, &unk_1DA423DB0);
    v11 = OUTLINED_FUNCTION_25_0(v8, v9, v8, MEMORY[0x1E69E6530], v10);
    if (v11)
    {
      v7 = *v38;
    }

    else
    {
      v7 = 0;
    }

    v12 = v11 ^ 1;
  }

  else
  {
    v12 = 1;
  }

  OUTLINED_FUNCTION_1_8();
  v17 = sub_1DA3EA3A8(v13, v14, v15, v16, a1);
  v18 = v17;
  if (v17)
  {
    sub_1DA3B1C24(v17 + OBJC_IVAR____TtCO27SiriSuggestionsIntelligence27SiriSuggestionsIntelligence14SourcedFeature_feature, v38);

    sub_1DA3B239C(v39, v40);
    sub_1DA3B1C80(v38);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDA0, &unk_1DA423DB0);
    v22 = OUTLINED_FUNCTION_25_0(v19, v20, v19, MEMORY[0x1E69E6530], v21);
    if (v22)
    {
      v18 = *v38;
    }

    else
    {
      v18 = 0;
    }

    v23 = v22 ^ 1;
  }

  else
  {
    v23 = 1;
  }

  OUTLINED_FUNCTION_1_8();
  v28 = sub_1DA3EA3A8(v24, v25, v26, v27, a1);
  if (v28)
  {
    v29 = v28;
    sub_1DA3B1C24(v28 + OBJC_IVAR____TtCO27SiriSuggestionsIntelligence27SiriSuggestionsIntelligence14SourcedFeature_feature, v38);

    sub_1DA3B239C(v39, v40);
    sub_1DA3B1C80(v38);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDA0, &unk_1DA423DB0);
    if (OUTLINED_FUNCTION_25_0(v30, v31, v30, &type metadata for DailyTimePeriod, v32))
    {
      v33 = v38[0];
    }

    else
    {
      v33 = 4;
    }
  }

  else
  {
    v33 = 4;
  }

  if ((v12 & 1) == 0)
  {
    v34 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    if ((v23 & 1) == 0)
    {
      goto LABEL_20;
    }

LABEL_22:
    v35 = 0;
    goto LABEL_23;
  }

  v34 = 0;
  if (v23)
  {
    goto LABEL_22;
  }

LABEL_20:
  v35 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
LABEL_23:
  v36 = dword_1DA425524[v33];
  sub_1DA3CCA08();
  return sub_1DA3CAAEC(v34, v35, v36);
}

id sub_1DA3CAAEC(void *a1, void *a2, uint64_t a3)
{
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithTimeOfDay:a1 dayOfWeek:a2 timePeriod:a3];

  return v5;
}

id sub_1DA3CAB50(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1DA3EA3A8(6, a3, a4, 0, a2);
  v6 = v5;
  if (v5)
  {
    sub_1DA3B1C24(v5 + OBJC_IVAR____TtCO27SiriSuggestionsIntelligence27SiriSuggestionsIntelligence14SourcedFeature_feature, v23);

    sub_1DA3B239C(&v24, v25);
    sub_1DA3B1C80(v23);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDA0, &unk_1DA423DB0);
    v10 = OUTLINED_FUNCTION_25_0(v7, v8, v7, MEMORY[0x1E69E6530], v9);
    if (v10)
    {
      v6 = v23[0];
    }

    else
    {
      v6 = 0;
    }

    v11 = v10 ^ 1;
  }

  else
  {
    v11 = 1;
  }

  if (a1 >> 14)
  {
    if (a1 >> 14 == 1)
    {
      v12 = (a1 >> 8) & 1;
      if (a1 == 2 || (a1 & 1) == 0)
      {
        v13 = 0;
        v15 = 0;
        v14 = 0;
      }

      else
      {
        v13 = 0;
        v14 = 0;
        v15 = 1;
      }
    }

    else
    {
      v12 = 0;
      v15 = 0;
      v14 = 0;
      v13 = 1;
    }

    LOBYTE(a1) = 1;
  }

  else
  {
    v12 = 0;
    v15 = 0;
    v13 = 1;
    v14 = a1;
  }

  v16 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  if (a1)
  {
    v17 = 0;
    if ((v13 & 1) == 0)
    {
LABEL_18:
      v18 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      goto LABEL_21;
    }
  }

  else
  {
    v17 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    if ((v13 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  v18 = 0;
LABEL_21:
  v19 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  if (v11)
  {
    v20 = 0;
  }

  else
  {
    v20 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  }

  v21 = objc_allocWithZone(MEMORY[0x1E698EEC0]);
  return sub_1DA3CC7D4(v16, v17, 0, v18, v19, v20);
}

id sub_1DA3CAD6C(uint64_t a1)
{
  v3 = sub_1DA421514();
  OUTLINED_FUNCTION_3_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_7();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF0A8, &unk_1DA425510);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v68 - v11;
  v13 = sub_1DA4214A4();
  OUTLINED_FUNCTION_3_1();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4_7();
  v19 = v18 - v17;
  OUTLINED_FUNCTION_1_8();
  v24 = sub_1DA3EA3A8(v20, v21, v22, v23, a1);
  if (!v24)
  {
    __swift_storeEnumTagSinglePayload(v12, 1, 1, v13);
    goto LABEL_7;
  }

  v25 = v24;
  v26 = v71;
  sub_1DA3B1C24(v24 + OBJC_IVAR____TtCO27SiriSuggestionsIntelligence27SiriSuggestionsIntelligence14SourcedFeature_feature, v71);

  sub_1DA3B239C(&v72, v73);
  sub_1DA3B1C80(v71);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDA0, &unk_1DA423DB0);
  v27 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v12, v27 ^ 1u, 1, v13);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
LABEL_7:
    sub_1DA3A8CA8(v12, &qword_1ECBAF0A8, &unk_1DA425510);
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v70 = 0;
    v44 = 0;
LABEL_27:
    v64 = objc_allocWithZone(MEMORY[0x1E698EEE0]);
    return sub_1DA3CC868(v44, v70, v43, v42, v41, v40, v39, v38, v37, v36, v35);
  }

  (*(v15 + 32))(v19, v12, v13);
  sub_1DA421494();
  v29 = *(v5 + 88);
  v28 = v5 + 88;
  v30 = v29(v9, v3);
  v31 = 0x1E696A000uLL;
  v32 = &off_1E85C2000;
  if (v30 == *MEMORY[0x1E69D33C8])
  {
    v33 = OUTLINED_FUNCTION_5_8();
    v34(v33);
    OUTLINED_FUNCTION_19_1();
LABEL_5:
    OUTLINED_FUNCTION_2_8();
    OUTLINED_FUNCTION_8_7();
LABEL_26:
    v70 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    v43 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    v42 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    v41 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    v40 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    v39 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    v38 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    v37 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    v36 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    v63 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    v35 = [v63 initWithBool_];
    v44 = v69;
    goto LABEL_27;
  }

  if (v30 == *MEMORY[0x1E69D33D0])
  {
    v45 = OUTLINED_FUNCTION_5_8();
    v46(v45);
    v69 = 0;
    OUTLINED_FUNCTION_2_8();
    OUTLINED_FUNCTION_8_7();
    v19 = 1;
    goto LABEL_26;
  }

  if (v30 == *MEMORY[0x1E69D3380])
  {
    v47 = OUTLINED_FUNCTION_5_8();
    v48(v47);
    OUTLINED_FUNCTION_19_1();
    OUTLINED_FUNCTION_2_8();
    v28 = 0;
    v26 = 0;
    v1 = 1;
    goto LABEL_26;
  }

  if (v30 == *MEMORY[0x1E69D33A0])
  {
    v49 = OUTLINED_FUNCTION_5_8();
    v50(v49);
    OUTLINED_FUNCTION_19_1();
    OUTLINED_FUNCTION_2_8();
    v28 = 0;
    v1 = 0;
    v26 = 1;
    goto LABEL_26;
  }

  if (v30 == *MEMORY[0x1E69D33B0])
  {
    v51 = OUTLINED_FUNCTION_5_8();
    v52(v51);
    OUTLINED_FUNCTION_19_1();
    OUTLINED_FUNCTION_2_8();
    v26 = 0;
    v1 = 0;
    v28 = 1;
    goto LABEL_26;
  }

  if (v30 == *MEMORY[0x1E69D3390])
  {
    v53 = OUTLINED_FUNCTION_5_8();
    v54(v53);
    OUTLINED_FUNCTION_3_9();
    v31 = 0;
    OUTLINED_FUNCTION_8_7();
    v25 = 1;
    goto LABEL_26;
  }

  if (v30 == *MEMORY[0x1E69D3388])
  {
    v55 = OUTLINED_FUNCTION_5_8();
    v56(v55);
    OUTLINED_FUNCTION_3_9();
    OUTLINED_FUNCTION_6_8();
    v31 = 1;
    goto LABEL_26;
  }

  if (v30 == *MEMORY[0x1E69D33A8])
  {
    v57 = OUTLINED_FUNCTION_5_8();
    v58(v57);
    OUTLINED_FUNCTION_19_1();
    HIDWORD(v68) = 0;
    v3 = 0;
    v31 = 0;
    OUTLINED_FUNCTION_6_8();
    v32 = 1;
    goto LABEL_26;
  }

  if (v30 == *MEMORY[0x1E69D33B8])
  {
    v59 = OUTLINED_FUNCTION_5_8();
    v60(v59);
    OUTLINED_FUNCTION_19_1();
    HIDWORD(v68) = 0;
    OUTLINED_FUNCTION_4_8();
    v1 = 0;
    v3 = 1;
    goto LABEL_26;
  }

  if (v30 == *MEMORY[0x1E69D33C0])
  {
    v61 = OUTLINED_FUNCTION_5_8();
    v62(v61);
    OUTLINED_FUNCTION_19_1();
    v3 = 0;
    OUTLINED_FUNCTION_4_8();
    v1 = 0;
    HIDWORD(v68) = 1;
    goto LABEL_26;
  }

  if (v30 == *MEMORY[0x1E69D3398])
  {
    v66 = OUTLINED_FUNCTION_5_8();
    v67(v66);
    v69 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    v19 = 0;
    goto LABEL_5;
  }

  result = sub_1DA422394();
  __break(1u);
  return result;
}

id sub_1DA3CB3EC(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = sub_1DA4211F4();
  OUTLINED_FUNCTION_3_1();
  v7 = v6;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v63 - v12;
  v14 = Interaction.getSiriSuggestionFeatures()();
  if (!v15)
  {
    if (v14)
    {
      static SiriSuggestionsIntelligence.FeatureId.indexFeatures(_:)(v14);
      v17 = v16;

      v64 = dword_1DA425538[a3 >> 14];
      v18 = sub_1DA4212F4();
      v63 = sub_1DA3C9754(v18, v19);

      v20 = sub_1DA3C9B1C(v17);
      v21 = sub_1DA3CA240(v17);
      v22 = objc_allocWithZone(MEMORY[0x1E698EEE8]);
      OUTLINED_FUNCTION_11_3();
      v26 = sub_1DA3CC738(v23, v24, v25, 0, 0);
      v27 = sub_1DA3CA8A8(v17);
      v28 = sub_1DA4212F4();
      v30 = sub_1DA3CAB50(a3, v17, v28, v29);

      v31 = sub_1DA3CAD6C(v17);

      v32 = objc_allocWithZone(MEMORY[0x1E698EEB0]);
      v33 = sub_1DA3CC948(v63, 0, v20, v21, v26, v27, v30, v31, v64);
      if (qword_1EE100EF8 != -1)
      {
        OUTLINED_FUNCTION_0_9();
        swift_once();
      }

      v34 = sub_1DA421A94();
      __swift_project_value_buffer(v34, static Logger.conversionCategory);
      v5 = v33;
      v35 = sub_1DA421A74();
      v36 = sub_1DA421F64();

      if (os_log_type_enabled(v35, v36))
      {
        OUTLINED_FUNCTION_22_0();
        v37 = swift_slowAlloc();
        OUTLINED_FUNCTION_34_0();
        v38 = swift_slowAlloc();
        *v37 = 138412290;
        *(v37 + 4) = v5;
        *v38 = v5;
        v39 = v5;
        OUTLINED_FUNCTION_36_0(&dword_1DA39E000, v35, v36, "feature event created as: %@");
        _os_log_impl(v40, v41, v42, v43, v44, v45);
        sub_1DA3A8CA8(v38, &qword_1ECBAEC70, &qword_1DA42A510);
        OUTLINED_FUNCTION_18_0();
        MEMORY[0x1DA74E430]();
        OUTLINED_FUNCTION_18_0();
        MEMORY[0x1DA74E430]();
      }
    }

    else
    {
      if (qword_1EE100EF8 != -1)
      {
        OUTLINED_FUNCTION_0_9();
        swift_once();
      }

      v46 = sub_1DA421A94();
      __swift_project_value_buffer(v46, static Logger.conversionCategory);
      v47 = *(v7 + 16);
      v47(v13, a1, v5);
      v48 = sub_1DA421A74();
      v49 = sub_1DA421F74();
      v50 = OUTLINED_FUNCTION_31_0();
      if (os_log_type_enabled(v50, v51))
      {
        OUTLINED_FUNCTION_22_0();
        swift_slowAlloc();
        v64 = v49;
        OUTLINED_FUNCTION_27_0();
        v63 = swift_slowAlloc();
        v65 = v63;
        *v49 = 136315138;
        v47(v11, v13, v5);
        v52 = sub_1DA421BB4();
        v54 = v53;
        (*(v7 + 8))(v13, v5);
        v55 = sub_1DA3A5FE8(v52, v54, &v65);

        *(v49 + 4) = v55;
        OUTLINED_FUNCTION_36_0(&dword_1DA39E000, v48, v64, "No features found on interaction: %s");
        _os_log_impl(v56, v57, v58, v59, v60, v61);
        __swift_destroy_boxed_opaque_existential_0(v63);
        OUTLINED_FUNCTION_18_0();
        MEMORY[0x1DA74E430]();
        OUTLINED_FUNCTION_18_0();
        MEMORY[0x1DA74E430]();
      }

      else
      {

        (*(v7 + 8))(v13, v5);
      }

      return 0;
    }
  }

  return v5;
}

uint64_t sub_1DA3CB878(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_1DA421314();
  v3[5] = v4;
  OUTLINED_FUNCTION_5_2(v4);
  v3[6] = v5;
  v3[7] = swift_task_alloc();
  v6 = sub_1DA4211F4();
  v3[8] = v6;
  OUTLINED_FUNCTION_5_2(v6);
  v3[9] = v7;
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v8 = sub_1DA4212E4();
  v3[12] = v8;
  OUTLINED_FUNCTION_5_2(v8);
  v3[13] = v9;
  v3[14] = swift_task_alloc();
  OUTLINED_FUNCTION_11_3();

  return MEMORY[0x1EEE6DFA0](v10);
}

uint64_t sub_1DA3CB9E4()
{
  v64 = v0;
  if (qword_1EE100EF8 != -1)
  {
    OUTLINED_FUNCTION_0_9();
    swift_once();
  }

  v1 = sub_1DA421A94();
  v2 = __swift_project_value_buffer(v1, static Logger.conversionCategory);
  v3 = OUTLINED_FUNCTION_32_0();
  v4(v3);
  v5 = sub_1DA421A74();
  v6 = sub_1DA421F64();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[11];
    v8 = v0[9];
    v60 = v0[8];
    OUTLINED_FUNCTION_22_0();
    swift_slowAlloc();
    OUTLINED_FUNCTION_27_0();
    v61 = swift_slowAlloc();
    v63 = v61;
    *v2 = 136315138;
    sub_1DA4212D4();
    v59 = sub_1DA421194();
    v10 = v9;
    (*(v8 + 8))(v7, v60);
    v11 = OUTLINED_FUNCTION_38();
    v12(v11);
    v13 = sub_1DA3A5FE8(v59, v10, &v63);

    *(v2 + 4) = v13;
    OUTLINED_FUNCTION_36_0(&dword_1DA39E000, v5, v6, "Processing feature non conversion logging for: %s");
    _os_log_impl(v14, v15, v16, v17, v18, v19);
    __swift_destroy_boxed_opaque_existential_0(v61);
    OUTLINED_FUNCTION_18_0();
    MEMORY[0x1DA74E430]();
    OUTLINED_FUNCTION_18_0();
    MEMORY[0x1DA74E430]();
  }

  else
  {

    v20 = OUTLINED_FUNCTION_38();
    v21(v20);
  }

  v22 = v0[3];
  v62 = *(v22 + 16);
  if (v62)
  {
    v23 = v0[9];
    v24 = v0[6];
    v56 = v0[4];
    sub_1DA421604();
    v25 = *(v24 + 16);
    v24 += 16;
    v58 = v25;
    v26 = v22 + ((*(v24 + 64) + 32) & ~*(v24 + 64));
    v27 = (v23 + 8);
    v28 = (v24 - 8);
    v57 = *(v24 + 56);
    *&v29 = 138412290;
    v55 = v29;
    v30 = v62;
    while (1)
    {
      v58(v0[7], v26, v0[5]);
      sub_1DA4212D4();
      v31 = sub_1DA4212B4();
      v32 = sub_1DA4215A4();
      if (*(v31 + 16))
      {
        v34 = sub_1DA3B76EC(v32, v33);
        v36 = v35;

        v37 = MEMORY[0x1E69E7CC0];
        if (v36)
        {
          v37 = *(*(v31 + 56) + 8 * v34);
        }
      }

      else
      {

        v37 = MEMORY[0x1E69E7CC0];
      }

      v38 = v0[10];
      v39 = v0[7];

      v40 = *(v37 + 16);

      v41 = v40 == v62 ? 16386 : 16642;
      v42 = sub_1DA3CB3EC(v38, v39, v41);
      (*v27)(v0[10], v0[8]);
      if (!v42)
      {
        break;
      }

      v43 = [*(v56 + 40) source];
      [v43 sendEvent_];

      (*v28)(v0[7], v0[5]);
      v26 += v57;
      if (!--v30)
      {
        goto LABEL_21;
      }
    }

    v44 = sub_1DA421A74();
    sub_1DA421F74();
    v45 = OUTLINED_FUNCTION_31_0();
    if (os_log_type_enabled(v45, v46))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_9_0(&dword_1DA39E000, v47, v48, "Unable to process biome feature feed");
      OUTLINED_FUNCTION_18_0();
      MEMORY[0x1DA74E430](v49, v50);
    }

    v51 = v0[7];
    v52 = v0[5];

    (*v28)(v51, v52);
  }

LABEL_21:

  v53 = v0[1];

  return v53();
}

uint64_t sub_1DA3CBF1C()
{

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t sub_1DA3CBF90(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DA3CC038;

  return sub_1DA3C8E04(a1, a2);
}

uint64_t sub_1DA3CC038()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1DA3CC12C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DA3CCCC0;

  return sub_1DA3CB878(a1, a2);
}

uint64_t sub_1DA3CC1D4()
{
  sub_1DA3C92FC();
  v1 = *(v0 + 8);

  return v1();
}

id sub_1DA3CC234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13)
{
  if (a2)
  {
    v17 = sub_1DA421B64();

    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v18 = 0;
    if (a6)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v17 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v18 = sub_1DA421B64();

  if (a6)
  {
LABEL_4:
    v19 = sub_1DA421B64();

    goto LABEL_8;
  }

LABEL_7:
  v19 = 0;
LABEL_8:
  if (a8)
  {
    v20 = sub_1DA421B64();
  }

  else
  {
    v20 = 0;
  }

  if (!a10)
  {
    v21 = 0;
    if (a13)
    {
      goto LABEL_13;
    }

LABEL_15:
    v22 = 0;
    goto LABEL_16;
  }

  v21 = sub_1DA421B64();

  if (!a13)
  {
    goto LABEL_15;
  }

LABEL_13:
  v22 = sub_1DA421B64();

LABEL_16:
  v23 = [v13 initWithSuggestionId:v17 targetOwner:v18 sourceOwner:v19 classificationCentroid:v20 channel:v21 confidence:a11 deliveryVehicle:v22];

  return v23;
}

id sub_1DA3CC3C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8, void *a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, void *a20, void *a21)
{
  if (a3)
  {
    v29 = sub_1DA421B64();
  }

  else
  {
    v29 = 0;
  }

  if (a5)
  {
    v28 = sub_1DA421B64();
  }

  else
  {
    v28 = 0;
  }

  if (a14)
  {
    v22 = sub_1DA421B64();
  }

  else
  {
    v22 = 0;
  }

  if (a16)
  {
    v33 = sub_1DA421B64();
  }

  else
  {
    v33 = 0;
  }

  if (a18)
  {
    v23 = sub_1DA421B64();
  }

  else
  {
    v23 = 0;
  }

  v25 = [v30 initWithConnectedToAirpods:a1 noiseCancellingMode:v29 connectedToDevice:v28 isInCarPlay:a6 hasWatch:a9 hasIPad:a10 hasHomePod:a11 hasAppleTV:a12 hasIPhone:v22 totalNumDevices:v33 currentDeviceType:v23 currentBuildVersion:a19 distanceFromLatestBuild:a20 isALargeFormatPhone:a21 hasAPasscode:? supportsSMSMEssaging:?];

  return v25;
}

id sub_1DA3CC5BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7, void *a8, void *a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17)
{
  if (a2)
  {
    v22 = sub_1DA421B64();
  }

  else
  {
    v22 = 0;
  }

  if (a4)
  {
    v21 = sub_1DA421B64();
  }

  else
  {
    v21 = 0;
  }

  if (a7)
  {
    v19 = sub_1DA421B64();
  }

  else
  {
    v19 = 0;
  }

  v25 = [v23 initWithFocusMode:v22 deviceMotion:v21 location:a5 isPlayingMedia:v19 isAirplaneMode:a8 isTimerRunning:a9 isConnectedToWifi:a10 hasInternetConnection:a11 isScreenSharing:a12 audioIsMuted:a13 screenBrightness:a14 homeGraph:a15 batteryIsCharging:a16 isLowBatteryMode:a17];

  return v25;
}

id sub_1DA3CC738(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (a5)
  {
    v10 = sub_1DA421B64();
  }

  else
  {
    v10 = 0;
  }

  v11 = [v6 initWithDaysSinceAccountCreated:a1 isInFamily:a2 isHeadOfFamily:a3 subscriptionStatus:v10];

  return v11;
}

id sub_1DA3CC7D4(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v13 = [v6 initWithWasSpoken:a1 wasTapped:a2 dwellTime:a3 otherSuggestionTapped:a4 otherSuggestionSpoken:a5 position:a6];

  return v13;
}

id sub_1DA3CC868(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10, void *a11)
{
  v12 = v11;
  v22 = [v12 initWithIs2x3:a1 siriWasDisabled:a2 siriWasdictationOnly:a3 active6MonthsOrMoreAgo:a4 active28To6MonthsDaysAgo:a5 active14To28DaysAgo:a6 active7To14DaysAgo:a7 activeWithin7days:a8 activeWithin7days1Turn:a9 activeWithin7Days2To3Turns:a10 activeWithin7Days4PlusTurns:a11];

  return v22;
}

id sub_1DA3CC948(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, int a9)
{
  LODWORD(v20) = a9;
  v18 = [v9 initWithSuggestionDetails:a1 appUsageFeatures:a2 deviceFeatures:a3 environmentFeatures:a4 icloudFeatures:a5 temporalFeatures:a6 engagementLabels:a7 userSegmentation:a8 loggingType:v20];

  return v18;
}

unint64_t sub_1DA3CCA08()
{
  result = qword_1ECBAF0B0;
  if (!qword_1ECBAF0B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECBAF0B0);
  }

  return result;
}

void sub_1DA3CCA4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 != 1)
  {
    sub_1DA3CCA5C(a1, a2, a3, a4, a5);
  }
}

void sub_1DA3CCA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
  }
}

uint64_t sub_1DA3CCAA0(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

double sub_1DA3CCAB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 != 1)
  {
    return sub_1DA3CCAC4(a1, a2, a3, a4, a5);
  }

  return result;
}

double sub_1DA3CCAC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
  }

  return result;
}

void sub_1DA3CCB08()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = v2 - 2;
  if (v2 >= 2)
  {
    v4 = 0;
    while (1)
    {
      v14 = 0;
      MEMORY[0x1DA74E450](&v14, 8);
      v5 = (v14 * v2) >> 64;
      if (v2 > v14 * v2)
      {
        v6 = -v2 % v2;
        if (v6 > v14 * v2)
        {
          do
          {
            v14 = 0;
            MEMORY[0x1DA74E450](&v14, 8);
          }

          while (v6 > v14 * v2);
          v5 = (v14 * v2) >> 64;
        }
      }

      v7 = v4 + v5;
      if (__OFADD__(v4, v5))
      {
        break;
      }

      if (v4 != v7)
      {
        v8 = *(v1 + 16);
        if (v4 >= v8)
        {
          goto LABEL_20;
        }

        if (v7 >= v8)
        {
          goto LABEL_21;
        }

        v9 = *(v1 + 32 + v4);
        v10 = *(v1 + 32 + v7);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1DA3CCC84(v1);
          v1 = v11;
        }

        v12 = *(v1 + 16);
        if (v4 >= v12)
        {
          goto LABEL_22;
        }

        *(v1 + 32 + v4) = v10;
        if (v7 >= v12)
        {
          goto LABEL_23;
        }

        *(v1 + 32 + v7) = v9;
        *v0 = v1;
      }

      --v2;
      if (v4++ == v3)
      {
        return;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }
}

uint64_t OUTLINED_FUNCTION_9_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  v36 = a1 + *v34;

  return sub_1DA3B1C24(v36, va);
}

uint64_t OUTLINED_FUNCTION_10_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  v36 = a1 + *v34;

  return sub_1DA3B1C24(v36, va);
}

uint64_t OUTLINED_FUNCTION_12_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  v30 = a1 + *v28;

  return sub_1DA3B1C24(v30, va);
}

void *OUTLINED_FUNCTION_14_0(uint64_t a1)
{

  return sub_1DA3EA3A8(a1, v2, v1, 0, v3);
}

uint64_t OUTLINED_FUNCTION_17_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_18_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_21_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_24_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  v18 = a1 + *v16;

  return sub_1DA3B1C24(v18, va);
}

uint64_t OUTLINED_FUNCTION_25_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_29()
{

  return sub_1DA3B239C(v0 + 16, v1 - 136);
}

uint64_t OUTLINED_FUNCTION_30_0()
{

  return sub_1DA3B239C(v0 + 16, v1 - 136);
}

uint64_t sub_1DA3CCFD4()
{

  sub_1DA3CD050(v0 + 40);
  return v0;
}

uint64_t sub_1DA3CD004()
{
  sub_1DA3CCFD4();

  return MEMORY[0x1EEE6BDC0](v0, 80, 7);
}

uint64_t sub_1DA3CD050(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBAF0C0, &qword_1DA42C0E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *sub_1DA3CD0B8(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF248, &qword_1DA426588);
  swift_allocObject();
  v2[2] = sub_1DA420960(a1, v7, sub_1DA3D1AE4, v5);
  return v2;
}

void sub_1DA3CD190(double a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  if (!a2)
  {
    goto LABEL_13;
  }

  v5 = a2;
  v6 = sub_1DA3CD294(v5, a1);
  v8 = v7;
  if (([v5 stationary] & 1) == 0)
  {
    if ([v5 walking])
    {

      v8 |= 0x20u;
      goto LABEL_12;
    }

    if ([v5 running])
    {

      v8 |= 0x40u;
      goto LABEL_12;
    }

    if ([v5 cycling])
    {

      v8 |= 0x80u;
      goto LABEL_12;
    }

    v9 = [v5 automotive];

    if (v9)
    {
      v8 |= 0x60u;
      goto LABEL_12;
    }

LABEL_13:
    *a3 = 0;
    v8 = -96;
    goto LABEL_14;
  }

LABEL_12:
  *a3 = v6;
LABEL_14:
  *(a3 + 8) = v8;
}

uint64_t sub_1DA3CD300()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1DA3CD3A8;

  return sub_1DA41D1A4();
}

uint64_t sub_1DA3CD3A8(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t sub_1DA3CD4AC()
{
  v0 = [BiomeLibrary() Motion];
  swift_unknownObjectRelease();
  v1 = [v0 Activity];
  swift_unknownObjectRelease();
  v2 = swift_allocObject();
  sub_1DA3CD0B8(v1);
  return v2;
}

uint64_t SiriSuggestionsIntelligence.MotionService.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t SiriSuggestionsIntelligence.MotionActivity.description.getter(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  result = 0x6E776F6E6B6E75;
  switch(a2 >> 5)
  {
    case 1:
    case 2:
    case 4:
      OUTLINED_FUNCTION_1_9();
      sub_1DA422094();

      OUTLINED_FUNCTION_12_3();
      goto LABEL_5;
    case 3:
      OUTLINED_FUNCTION_1_9();
      sub_1DA422094();

      OUTLINED_FUNCTION_12_3();
      v9 = v8 | 3;
LABEL_5:
      v11 = v9;
      v7 = v3 & 0x1F;
      v6 = v2;
      goto LABEL_6;
    case 5:
      return result;
    default:
      OUTLINED_FUNCTION_1_9();
      sub_1DA422094();

      OUTLINED_FUNCTION_12_3();
      v11 = v5 | 3;
      v6 = v2;
      v7 = v3;
LABEL_6:
      v10 = SiriSuggestionsIntelligence.MotionDetails.description.getter(v7, v6);
      MEMORY[0x1DA74D370](v10);

      MEMORY[0x1DA74D370](125, 0xE100000000000000);
      return v11;
  }
}

uint64_t sub_1DA3CD708(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_1DA4223A4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x616E6F6974617473 && a2 == 0xEA00000000007972;
    if (v6 || (sub_1DA4223A4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x676E696B6C6177 && a2 == 0xE700000000000000;
      if (v7 || (sub_1DA4223A4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x676E696E6E7572 && a2 == 0xE700000000000000;
        if (v8 || (sub_1DA4223A4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x69746F6D6F747561 && a2 == 0xEA00000000006576;
          if (v9 || (sub_1DA4223A4() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x676E696C637963 && a2 == 0xE700000000000000)
          {

            return 5;
          }

          else
          {
            v11 = sub_1DA4223A4();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1DA3CD910(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 0x616E6F6974617473;
      break;
    case 2:
      v3 = 1802264951;
      goto LABEL_6;
    case 3:
      v3 = 1852732786;
LABEL_6:
      result = v3 | 0x676E6900000000;
      break;
    case 4:
      result = 0x69746F6D6F747561;
      break;
    case 5:
      result = 0x676E696C637963;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DA3CD9B8(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1DA4223A4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1DA3CDA2C(uint64_t a1)
{
  v2 = sub_1DA3CF6CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA3CDA68(uint64_t a1)
{
  v2 = sub_1DA3CF6CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA3CDAAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA3CD708(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA3CDAD4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DA3CD908();
  *a1 = result;
  return result;
}

uint64_t sub_1DA3CDAFC(uint64_t a1)
{
  v2 = sub_1DA3CF5D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA3CDB38(uint64_t a1)
{
  v2 = sub_1DA3CF5D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA3CDB74(uint64_t a1)
{
  v2 = sub_1DA3CF624();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA3CDBB0(uint64_t a1)
{
  v2 = sub_1DA3CF624();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA3CDBEC(uint64_t a1)
{
  v2 = sub_1DA3CF720();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA3CDC28(uint64_t a1)
{
  v2 = sub_1DA3CF720();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA3CDC64(uint64_t a1)
{
  v2 = sub_1DA3CF7C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA3CDCA0(uint64_t a1)
{
  v2 = sub_1DA3CF7C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA3CDCDC(uint64_t a1)
{
  v2 = sub_1DA3CF81C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA3CDD18(uint64_t a1)
{
  v2 = sub_1DA3CF81C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA3CDD54(uint64_t a1)
{
  v2 = sub_1DA3CF774();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA3CDD90(uint64_t a1)
{
  v2 = sub_1DA3CF774();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

BOOL static SiriSuggestionsIntelligence.MotionActivity.__derived_enum_equals(_:_:)(uint64_t a1, unsigned __int8 a2, uint64_t a3, unsigned __int8 a4)
{
  switch(a2 >> 5)
  {
    case 1:
      if ((a4 & 0xE0) != 0x20)
      {
        goto LABEL_23;
      }

      return ((a4 ^ a2) & 0x1F) == 0 && *&a1 == *&a3;
    case 2:
      if ((a4 & 0xE0) != 0x40)
      {
        goto LABEL_23;
      }

      return ((a4 ^ a2) & 0x1F) == 0 && *&a1 == *&a3;
    case 3:
      if ((a4 & 0xE0) != 0x60)
      {
        goto LABEL_23;
      }

      return ((a4 ^ a2) & 0x1F) == 0 && *&a1 == *&a3;
    case 4:
      if ((a4 & 0xE0) != 0x80)
      {
        goto LABEL_23;
      }

      return ((a4 ^ a2) & 0x1F) == 0 && *&a1 == *&a3;
    case 5:
      v6 = (a4 & 0xE0) == 0xA0 && a3 == 0;
      if (!v6 || a4 != 160)
      {
        goto LABEL_23;
      }

      result = 1;
      break;
    default:
      if (a4 >= 0x20u)
      {
LABEL_23:
        result = 0;
      }

      else
      {
        result = *&a1 == *&a3 && a2 == a4;
      }

      break;
  }

  return result;
}

void SiriSuggestionsIntelligence.MotionActivity.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_25_1();
  v74 = v3;
  v77 = v5;
  v71 = v6;
  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF0D0, &qword_1DA4255B0);
  OUTLINED_FUNCTION_3_1();
  v69 = v10;
  v70 = v9;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_10_5();
  v68 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF0D8, &qword_1DA4255B8);
  OUTLINED_FUNCTION_3_1();
  v66 = v14;
  v67 = v13;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_10_5();
  v65 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF0E0, &qword_1DA4255C0);
  OUTLINED_FUNCTION_3_1();
  v63 = v18;
  v64 = v17;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_10_5();
  v62 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF0E8, &qword_1DA4255C8);
  OUTLINED_FUNCTION_3_1();
  v60 = v22;
  v61 = v21;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_17_2();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF0F0, &qword_1DA4255D0);
  OUTLINED_FUNCTION_3_1();
  v59 = v25;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v57 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF0F8, &qword_1DA4255D8);
  OUTLINED_FUNCTION_3_1();
  v58 = v30;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v57 - v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF100, &qword_1DA4255E0);
  OUTLINED_FUNCTION_3_1();
  v72 = v35;
  v73 = v34;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_8_8();
  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  sub_1DA3CF5D0();
  sub_1DA422494();
  switch(v77 >> 5)
  {
    case 1:
      LOBYTE(v75) = 2;
      sub_1DA3CF774();
      v37 = v73;
      OUTLINED_FUNCTION_6_9();
      sub_1DA4222D4();
      OUTLINED_FUNCTION_15_0();
      v40 = v61;
      sub_1DA422334();
      v50 = *(v60 + 8);
      v51 = v4;
      goto LABEL_8;
    case 2:
      LOBYTE(v75) = 3;
      sub_1DA3CF720();
      v38 = v62;
      v37 = v73;
      OUTLINED_FUNCTION_6_9();
      sub_1DA4222D4();
      v44 = OUTLINED_FUNCTION_15_0();
      v40 = v64;
      OUTLINED_FUNCTION_19_2(&v75, v45, v46, &type metadata for SiriSuggestionsIntelligence.MotionDetails, v44);
      v43 = v63;
      goto LABEL_6;
    case 3:
      LOBYTE(v75) = 4;
      sub_1DA3CF6CC();
      v38 = v65;
      v37 = v73;
      OUTLINED_FUNCTION_6_9();
      sub_1DA4222D4();
      v47 = OUTLINED_FUNCTION_15_0();
      v40 = v67;
      OUTLINED_FUNCTION_19_2(&v75, v48, v49, &type metadata for SiriSuggestionsIntelligence.MotionDetails, v47);
      v43 = v66;
      goto LABEL_6;
    case 4:
      LOBYTE(v75) = 5;
      sub_1DA3CF624();
      v38 = v68;
      v37 = v73;
      OUTLINED_FUNCTION_6_9();
      sub_1DA4222D4();
      v39 = OUTLINED_FUNCTION_15_0();
      v40 = v70;
      OUTLINED_FUNCTION_19_2(&v75, v41, v42, &type metadata for SiriSuggestionsIntelligence.MotionDetails, v39);
      v43 = v69;
LABEL_6:
      v50 = *(v43 + 8);
      v51 = v38;
LABEL_8:
      v50(v51, v40);
      goto LABEL_9;
    case 5:
      LOBYTE(v75) = 0;
      sub_1DA3CF81C();
      v54 = v73;
      sub_1DA4222D4();
      (*(v58 + 8))(v33, v29);
      v55 = OUTLINED_FUNCTION_18_2();
      v56(v55, v54);
      goto LABEL_10;
    default:
      LOBYTE(v75) = 1;
      sub_1DA3CF7C8();
      v37 = v73;
      OUTLINED_FUNCTION_6_9();
      sub_1DA4222D4();
      v75 = v71;
      v76 = v77;
      sub_1DA3CF678();
      sub_1DA422334();
      (*(v59 + 8))(v28, v24);
LABEL_9:
      v52 = OUTLINED_FUNCTION_18_2();
      v53(v52, v37);
LABEL_10:
      OUTLINED_FUNCTION_24_1();
      return;
  }
}

void SiriSuggestionsIntelligence.MotionActivity.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_25_1();
  v7 = v6;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF130, &qword_1DA4255E8);
  OUTLINED_FUNCTION_3_1();
  v83 = v8;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_10_5();
  v84 = v10;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF138, &qword_1DA4255F0);
  OUTLINED_FUNCTION_3_1();
  v82 = v11;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_10_5();
  v87 = v13;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF140, &qword_1DA4255F8);
  OUTLINED_FUNCTION_3_1();
  v81 = v14;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_10_5();
  v86 = v16;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF148, &qword_1DA425600);
  OUTLINED_FUNCTION_3_1();
  v80 = v17;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_10_5();
  v85 = v19;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF150, &qword_1DA425608);
  OUTLINED_FUNCTION_3_1();
  v79 = v20;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_8_8();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF158, &qword_1DA425610);
  OUTLINED_FUNCTION_3_1();
  v73 = v23;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v70 - v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF160, &qword_1DA425618);
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_17_2();
  v28 = v7[3];
  v88 = v7;
  __swift_project_boxed_opaque_existential_1(v7, v28);
  sub_1DA3CF5D0();
  sub_1DA422484();
  if (v4)
  {
    v29 = v88;
LABEL_11:
    __swift_destroy_boxed_opaque_existential_0(v29);
    OUTLINED_FUNCTION_24_1();
    return;
  }

  v71 = v26;
  v72 = v5;
  sub_1DA4222C4();
  sub_1DA3C2AA0();
  if (v31 == v32 >> 1)
  {
LABEL_9:
    v42 = sub_1DA4220F4();
    swift_allocError();
    v44 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEF10, &qword_1DA425620);
    *v44 = &type metadata for SiriSuggestionsIntelligence.MotionActivity;
    v45 = sub_1DA422254();
    OUTLINED_FUNCTION_23_1(v45);
    (*(*(v42 - 8) + 104))(v44, *MEMORY[0x1E69E6AF8], v42);
    swift_willThrow();
    swift_unknownObjectRelease();
    v46 = OUTLINED_FUNCTION_13_2();
    v47(v46);
LABEL_10:
    v29 = v88;
    goto LABEL_11;
  }

  v70 = 0;
  if (v31 < (v32 >> 1))
  {
    v33 = *(v30 + v31);
    sub_1DA3C2A9C();
    v29 = v34;
    v36 = v35;
    swift_unknownObjectRelease();
    if (v29 == (v36 >> 1))
    {
      v37 = v70;
      switch(v33)
      {
        case 1:
          v89[0] = 1;
          sub_1DA3CF7C8();
          OUTLINED_FUNCTION_3_10(&_s14MotionActivityO20StationaryCodingKeysON, v89);
          sub_1DA3D0558();
          OUTLINED_FUNCTION_9_7();
          OUTLINED_FUNCTION_2_9();
          swift_unknownObjectRelease();
          v62 = OUTLINED_FUNCTION_4_9();
          v63(v62);
          v64 = OUTLINED_FUNCTION_5_9();
          v65(v64);
          break;
        case 2:
          v89[0] = 2;
          sub_1DA3CF774();
          OUTLINED_FUNCTION_3_10(&_s14MotionActivityO17WalkingCodingKeysON, v89);
          sub_1DA3D0558();
          OUTLINED_FUNCTION_9_7();
          OUTLINED_FUNCTION_2_9();
          swift_unknownObjectRelease();
          v54 = OUTLINED_FUNCTION_4_9();
          v55(v54);
          v56 = OUTLINED_FUNCTION_5_9();
          v57(v56);
          OUTLINED_FUNCTION_22_1();
          break;
        case 3:
          v89[0] = 3;
          sub_1DA3CF720();
          OUTLINED_FUNCTION_3_10(&_s14MotionActivityO17RunningCodingKeysON, v89);
          sub_1DA3D0558();
          OUTLINED_FUNCTION_9_7();
          OUTLINED_FUNCTION_2_9();
          swift_unknownObjectRelease();
          v58 = OUTLINED_FUNCTION_4_9();
          v59(v58);
          v60 = OUTLINED_FUNCTION_5_9();
          v61(v60);
          OUTLINED_FUNCTION_22_1();
          break;
        case 4:
          v89[0] = 4;
          sub_1DA3CF6CC();
          OUTLINED_FUNCTION_3_10(&_s14MotionActivityO20AutomotiveCodingKeysON, v89);
          sub_1DA3D0558();
          OUTLINED_FUNCTION_9_7();
          OUTLINED_FUNCTION_2_9();
          swift_unknownObjectRelease();
          v50 = OUTLINED_FUNCTION_4_9();
          v51(v50);
          v52 = OUTLINED_FUNCTION_5_9();
          v53(v52);
          OUTLINED_FUNCTION_22_1();
          break;
        case 5:
          v89[0] = 5;
          sub_1DA3CF624();
          OUTLINED_FUNCTION_3_10(&_s14MotionActivityO17CyclingCodingKeysON, v89);
          sub_1DA3D0558();
          OUTLINED_FUNCTION_9_7();
          OUTLINED_FUNCTION_2_9();
          swift_unknownObjectRelease();
          v66 = OUTLINED_FUNCTION_4_9();
          v67(v66);
          v68 = OUTLINED_FUNCTION_5_9();
          v69(v68);
          OUTLINED_FUNCTION_22_1();
          break;
        default:
          v38 = v22;
          v89[0] = 0;
          sub_1DA3CF81C();
          v39 = v71;
          OUTLINED_FUNCTION_11_4();
          sub_1DA422244();
          if (v37)
          {
            v48 = OUTLINED_FUNCTION_13_2();
            v49(v48);
            swift_unknownObjectRelease();
            goto LABEL_10;
          }

          swift_unknownObjectRelease();
          (*(v73 + 8))(v39, v38);
          v40 = OUTLINED_FUNCTION_13_2();
          v41(v40);
          v29 = v88;
          break;
      }

      goto LABEL_11;
    }

    goto LABEL_9;
  }

  __break(1u);
}

void sub_1DA3CED94(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  SiriSuggestionsIntelligence.MotionActivity.init(from:)(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = v7;
    *(a5 + 8) = v8;
  }
}

uint64_t SiriSuggestionsIntelligence.MotionDetails.description.getter(char a1, double a2)
{
  sub_1DA422094();
  MEMORY[0x1DA74D370](0x227472617473227BLL, 0xEA0000000000203ALL);
  sub_1DA421E94();
  MEMORY[0x1DA74D370](0xD000000000000010, 0x80000001DA42D690);
  sub_1DA422194();
  MEMORY[0x1DA74D370](125, 0xE100000000000000);
  return 0;
}

uint64_t sub_1DA3CEEE0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7472617473 && a2 == 0xE500000000000000;
  if (v4 || (sub_1DA4223A4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DA4223A4();

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

uint64_t sub_1DA3CEFAC(char a1)
{
  if (a1)
  {
    return 0x6E656469666E6F63;
  }

  else
  {
    return 0x7472617473;
  }
}

uint64_t sub_1DA3CEFEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA3CEEE0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA3CF014(uint64_t a1)
{
  v2 = sub_1DA3D05AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA3CF050(uint64_t a1)
{
  v2 = sub_1DA3D05AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SiriSuggestionsIntelligence.MotionDetails.encode(to:)(void *a1, char a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF170, &qword_1DA425628);
  OUTLINED_FUNCTION_3_1();
  v7 = v6;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA3D05AC();
  sub_1DA422494();
  v14 = 0;
  sub_1DA422314();
  if (!v2)
  {
    v13 = a2;
    OUTLINED_FUNCTION_21_2();
    sub_1DA3D0600();
    sub_1DA422334();
  }

  return (*(v7 + 8))(v10, v5);
}

void *SiriSuggestionsIntelligence.MotionDetails.init(from:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF178, &qword_1DA425630);
  OUTLINED_FUNCTION_3_1();
  v6 = v5;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8_8();
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DA3D05AC();
  sub_1DA422484();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    sub_1DA422294();
    OUTLINED_FUNCTION_21_2();
    sub_1DA3D0654();
    OUTLINED_FUNCTION_6_9();
    sub_1DA4222B4();
    (*(v6 + 8))(v2, v4);
    v8 = v10;
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v8;
}

uint64_t sub_1DA3CF39C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7827308 && a2 == 0xE300000000000000;
  if (v3 || (sub_1DA4223A4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6D756964656DLL && a2 == 0xE600000000000000;
    if (v6 || (sub_1DA4223A4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1751607656 && a2 == 0xE400000000000000;
      if (v7 || (sub_1DA4223A4() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1DA4223A4();

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

uint64_t sub_1DA3CF4F0(char a1)
{
  result = 7827308;
  switch(a1)
  {
    case 1:
      result = 0x6D756964656DLL;
      break;
    case 2:
      result = 1751607656;
      break;
    case 3:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

void *sub_1DA3CF574@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = SiriSuggestionsIntelligence.MotionDetails.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
    *(a2 + 8) = result;
  }

  return result;
}

unint64_t sub_1DA3CF5D0()
{
  result = qword_1EE1026F8[0];
  if (!qword_1EE1026F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1026F8);
  }

  return result;
}

unint64_t sub_1DA3CF624()
{
  result = qword_1ECBAF108;
  if (!qword_1ECBAF108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF108);
  }

  return result;
}

unint64_t sub_1DA3CF678()
{
  result = qword_1EE102980;
  if (!qword_1EE102980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102980);
  }

  return result;
}

unint64_t sub_1DA3CF6CC()
{
  result = qword_1ECBAF110;
  if (!qword_1ECBAF110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF110);
  }

  return result;
}

unint64_t sub_1DA3CF720()
{
  result = qword_1ECBAF118;
  if (!qword_1ECBAF118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF118);
  }

  return result;
}

unint64_t sub_1DA3CF774()
{
  result = qword_1ECBAF120;
  if (!qword_1ECBAF120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF120);
  }

  return result;
}

unint64_t sub_1DA3CF7C8()
{
  result = qword_1EE102690;
  if (!qword_1EE102690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102690);
  }

  return result;
}

unint64_t sub_1DA3CF81C()
{
  result = qword_1ECBAF128;
  if (!qword_1ECBAF128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF128);
  }

  return result;
}

uint64_t sub_1DA3CF878@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DA3CF39C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DA3CF8A0(uint64_t a1)
{
  v2 = sub_1DA3D06A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA3CF8DC(uint64_t a1)
{
  v2 = sub_1DA3D06A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA3CF918(uint64_t a1)
{
  v2 = sub_1DA3D0750();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA3CF954(uint64_t a1)
{
  v2 = sub_1DA3D0750();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA3CF990(uint64_t a1)
{
  v2 = sub_1DA3D07F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA3CF9CC(uint64_t a1)
{
  v2 = sub_1DA3D07F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA3CFA08(uint64_t a1)
{
  v2 = sub_1DA3D07A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA3CFA44(uint64_t a1)
{
  v2 = sub_1DA3D07A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DA3CFA80(uint64_t a1)
{
  v2 = sub_1DA3D06FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DA3CFABC(uint64_t a1)
{
  v2 = sub_1DA3D06FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SiriSuggestionsIntelligence.MotionConfidence.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_25_1();
  v64 = v25;
  v27 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF188, &qword_1DA425638);
  OUTLINED_FUNCTION_3_1();
  v62 = v29;
  v63 = v28;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_10_5();
  v61 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF190, &qword_1DA425640);
  OUTLINED_FUNCTION_3_1();
  v59 = v33;
  v60 = v32;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_10_5();
  v58 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF198, &qword_1DA425648);
  OUTLINED_FUNCTION_3_1();
  v56 = v37;
  v57 = v36;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_8_8();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF1A0, &qword_1DA425650);
  OUTLINED_FUNCTION_3_1();
  v55 = v40;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v54 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF1A8, &qword_1DA425658);
  OUTLINED_FUNCTION_3_1();
  v46 = v45;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_17_2();
  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  sub_1DA3D06A8();
  sub_1DA422494();
  switch(v64)
  {
    case 1:
      OUTLINED_FUNCTION_21_2();
      sub_1DA3D07A4();
      OUTLINED_FUNCTION_11_4();
      sub_1DA4222D4();
      v51 = OUTLINED_FUNCTION_18_2();
      v53(v51, v52);
      break;
    case 2:
      sub_1DA3D0750();
      v48 = v58;
      OUTLINED_FUNCTION_11_4();
      sub_1DA4222D4();
      v50 = v59;
      v49 = v60;
      goto LABEL_5;
    case 3:
      sub_1DA3D06FC();
      v48 = v61;
      OUTLINED_FUNCTION_11_4();
      sub_1DA4222D4();
      v50 = v62;
      v49 = v63;
LABEL_5:
      (*(v50 + 8))(v48, v49);
      break;
    default:
      sub_1DA3D07F8();
      OUTLINED_FUNCTION_11_4();
      sub_1DA4222D4();
      (*(v55 + 8))(v43, v39);
      break;
  }

  (*(v46 + 8))(v24, v44);
  OUTLINED_FUNCTION_24_1();
}

void SiriSuggestionsIntelligence.MotionConfidence.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_25_1();
  a23 = v25;
  a24 = v26;
  v86 = v24;
  v28 = v27;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF1C8, &qword_1DA425660);
  OUTLINED_FUNCTION_3_1();
  v82 = v29;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_10_5();
  v84 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF1D0, &qword_1DA425668);
  OUTLINED_FUNCTION_3_1();
  v79 = v33;
  v80 = v32;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_10_5();
  v81 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF1D8, &qword_1DA425670);
  OUTLINED_FUNCTION_3_1();
  v77 = v37;
  v78 = v36;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_8_8();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF1E0, &qword_1DA425678);
  OUTLINED_FUNCTION_3_1();
  v76 = v40;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v72 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF1E8, &qword_1DA425680);
  OUTLINED_FUNCTION_3_1();
  v83 = v45;
  OUTLINED_FUNCTION_2_5();
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v72 - v47;
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  sub_1DA3D06A8();
  v49 = v86;
  sub_1DA422484();
  if (v49)
  {
    goto LABEL_8;
  }

  v74 = v39;
  v75 = v43;
  v50 = v84;
  v51 = v85;
  v86 = v28;
  v52 = v48;
  sub_1DA4222C4();
  sub_1DA3C2AA0();
  if (v54 == v55 >> 1)
  {
LABEL_7:
    v67 = sub_1DA4220F4();
    swift_allocError();
    v69 = v68;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEF10, &qword_1DA425620);
    *v69 = &type metadata for SiriSuggestionsIntelligence.MotionConfidence;
    v70 = sub_1DA422254();
    OUTLINED_FUNCTION_23_1(v70);
    (*(*(v67 - 8) + 104))(v69, *MEMORY[0x1E69E6AF8], v67);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v83 + 8))(v52, v44);
    v28 = v86;
LABEL_8:
    __swift_destroy_boxed_opaque_existential_0(v28);
LABEL_9:
    OUTLINED_FUNCTION_24_1();
    return;
  }

  v73 = 0;
  if (v54 < (v55 >> 1))
  {
    v56 = *(v53 + v54);
    sub_1DA3C2A9C();
    v58 = v57;
    v60 = v59;
    swift_unknownObjectRelease();
    if (v58 == v60 >> 1)
    {
      v61 = v56;
      v63 = v82;
      v62 = v83;
      switch(v61)
      {
        case 1:
          OUTLINED_FUNCTION_21_2();
          sub_1DA3D07A4();
          OUTLINED_FUNCTION_14_1(&_s16MotionConfidenceO16MediumCodingKeysON, &a12);
          swift_unknownObjectRelease();
          goto LABEL_15;
        case 2:
          a13 = 2;
          sub_1DA3D0750();
          OUTLINED_FUNCTION_14_1(&_s16MotionConfidenceO14HighCodingKeysON, &a13);
          swift_unknownObjectRelease();
LABEL_15:
          v64 = OUTLINED_FUNCTION_18_2();
          goto LABEL_16;
        case 3:
          a14 = 3;
          sub_1DA3D06FC();
          v71 = v73;
          sub_1DA422244();
          if (v71)
          {
            (*(v62 + 8))(v52, v44);
            swift_unknownObjectRelease();
            v28 = v86;
            goto LABEL_8;
          }

          swift_unknownObjectRelease();
          (*(v63 + 8))(v50, v51);
LABEL_17:
          (*(v62 + 8))(v52, v44);
          __swift_destroy_boxed_opaque_existential_0(v86);
          break;
        default:
          a11 = 0;
          sub_1DA3D07F8();
          OUTLINED_FUNCTION_14_1(&_s16MotionConfidenceO13LowCodingKeysON, &a11);
          swift_unknownObjectRelease();
          v64 = OUTLINED_FUNCTION_18_2();
          v66 = v74;
LABEL_16:
          v65(v64, v66);
          goto LABEL_17;
      }

      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1DA3D04B0(uint64_t a1)
{
  v2 = *v1;
  sub_1DA422434();
  SiriSuggestionsIntelligence.MotionConfidence.hash(into:)(v4, v2);
  return sub_1DA422474();
}

unint64_t sub_1DA3D0558()
{
  result = qword_1ECBAF168;
  if (!qword_1ECBAF168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF168);
  }

  return result;
}

unint64_t sub_1DA3D05AC()
{
  result = qword_1EE102998[0];
  if (!qword_1EE102998[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE102998);
  }

  return result;
}

unint64_t sub_1DA3D0600()
{
  result = qword_1EE102390;
  if (!qword_1EE102390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102390);
  }

  return result;
}

unint64_t sub_1DA3D0654()
{
  result = qword_1ECBAF180;
  if (!qword_1ECBAF180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF180);
  }

  return result;
}

unint64_t sub_1DA3D06A8()
{
  result = qword_1EE1023F0;
  if (!qword_1EE1023F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1023F0);
  }

  return result;
}

unint64_t sub_1DA3D06FC()
{
  result = qword_1ECBAF1B0;
  if (!qword_1ECBAF1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF1B0);
  }

  return result;
}

unint64_t sub_1DA3D0750()
{
  result = qword_1EE1023C8;
  if (!qword_1EE1023C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1023C8);
  }

  return result;
}

unint64_t sub_1DA3D07A4()
{
  result = qword_1ECBAF1B8;
  if (!qword_1ECBAF1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF1B8);
  }

  return result;
}

unint64_t sub_1DA3D07F8()
{
  result = qword_1ECBAF1C0;
  if (!qword_1ECBAF1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF1C0);
  }

  return result;
}

unint64_t sub_1DA3D0850()
{
  result = qword_1ECBAF1F0;
  if (!qword_1ECBAF1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF1F0);
  }

  return result;
}

unint64_t sub_1DA3D08A8()
{
  result = qword_1ECBAF1F8;
  if (!qword_1ECBAF1F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECBAF200, &qword_1DA425880);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF1F8);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t _s14MotionActivityOwet(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3B && *(a1 + 9))
    {
      v2 = *a1 + 58;
    }

    else
    {
      v2 = ((*(a1 + 8) >> 5) & 0xFFFFFFC7 | (8 * ((*(a1 + 8) >> 2) & 7))) ^ 0x3F;
      if (v2 >= 0x3A)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t _s14MotionActivityOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3A)
  {
    *(result + 8) = 0;
    *result = a2 - 59;
    if (a3 >= 0x3B)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3B)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 4 * (((-a2 >> 3) & 7) - 8 * a2);
    }
  }

  return result;
}

uint64_t sub_1DA3D09E4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 <= 0x9F)
  {
    return v1 >> 5;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_1DA3D0A10(uint64_t result, unsigned int a2)
{
  if (a2 < 5)
  {
    v2 = *(result + 8) & 3 | (32 * a2);
  }

  else
  {
    *result = a2 - 5;
    v2 = -96;
  }

  *(result + 8) = v2;
  return result;
}

uint64_t _s13MotionDetailsVwet(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 9))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 8);
      v4 = v3 >= 4;
      v2 = v3 - 4;
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

uint64_t _s13MotionDetailsVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

_BYTE *sub_1DA3D0ADC(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *_s13MotionDetailsV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t _s14MotionActivityO10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s14MotionActivityO10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1DA3D0E88(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DA3D0F38()
{
  result = qword_1ECBAF208;
  if (!qword_1ECBAF208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF208);
  }

  return result;
}

unint64_t sub_1DA3D0F90()
{
  result = qword_1ECBAF210;
  if (!qword_1ECBAF210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF210);
  }

  return result;
}

unint64_t sub_1DA3D0FE8()
{
  result = qword_1ECBAF218;
  if (!qword_1ECBAF218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF218);
  }

  return result;
}

unint64_t sub_1DA3D1040()
{
  result = qword_1ECBAF220;
  if (!qword_1ECBAF220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF220);
  }

  return result;
}

unint64_t sub_1DA3D1098()
{
  result = qword_1ECBAF228;
  if (!qword_1ECBAF228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF228);
  }

  return result;
}

unint64_t sub_1DA3D10F0()
{
  result = qword_1ECBAF230;
  if (!qword_1ECBAF230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF230);
  }

  return result;
}

unint64_t sub_1DA3D1148()
{
  result = qword_1ECBAF238;
  if (!qword_1ECBAF238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF238);
  }

  return result;
}

unint64_t sub_1DA3D11A0()
{
  result = qword_1ECBAF240;
  if (!qword_1ECBAF240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF240);
  }

  return result;
}

unint64_t sub_1DA3D11F8()
{
  result = qword_1EE1023D0;
  if (!qword_1EE1023D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1023D0);
  }

  return result;
}

unint64_t sub_1DA3D1250()
{
  result = qword_1EE1023D8;
  if (!qword_1EE1023D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1023D8);
  }

  return result;
}

unint64_t sub_1DA3D12A8()
{
  result = qword_1EE1023A8;
  if (!qword_1EE1023A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1023A8);
  }

  return result;
}

unint64_t sub_1DA3D1300()
{
  result = qword_1EE1023B0;
  if (!qword_1EE1023B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1023B0);
  }

  return result;
}

unint64_t sub_1DA3D1358()
{
  result = qword_1EE1023B8;
  if (!qword_1EE1023B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1023B8);
  }

  return result;
}

unint64_t sub_1DA3D13B0()
{
  result = qword_1EE1023C0;
  if (!qword_1EE1023C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1023C0);
  }

  return result;
}

unint64_t sub_1DA3D1408()
{
  result = qword_1EE102398;
  if (!qword_1EE102398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102398);
  }

  return result;
}

unint64_t sub_1DA3D1460()
{
  result = qword_1EE1023A0;
  if (!qword_1EE1023A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1023A0);
  }

  return result;
}

unint64_t sub_1DA3D14B8()
{
  result = qword_1EE1023E0;
  if (!qword_1EE1023E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1023E0);
  }

  return result;
}

unint64_t sub_1DA3D1510()
{
  result = qword_1EE1023E8;
  if (!qword_1EE1023E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1023E8);
  }

  return result;
}

unint64_t sub_1DA3D1568()
{
  result = qword_1EE102988;
  if (!qword_1EE102988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102988);
  }

  return result;
}

unint64_t sub_1DA3D15C0()
{
  result = qword_1EE102990;
  if (!qword_1EE102990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102990);
  }

  return result;
}

unint64_t sub_1DA3D1618()
{
  result = qword_1EE1026B8;
  if (!qword_1EE1026B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1026B8);
  }

  return result;
}

unint64_t sub_1DA3D1670()
{
  result = qword_1EE1026C0;
  if (!qword_1EE1026C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1026C0);
  }

  return result;
}

unint64_t sub_1DA3D16C8()
{
  result = qword_1EE102680;
  if (!qword_1EE102680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102680);
  }

  return result;
}

unint64_t sub_1DA3D1720()
{
  result = qword_1EE102688;
  if (!qword_1EE102688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102688);
  }

  return result;
}

unint64_t sub_1DA3D1778()
{
  result = qword_1EE1026A8;
  if (!qword_1EE1026A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1026A8);
  }

  return result;
}

unint64_t sub_1DA3D17D0()
{
  result = qword_1EE1026B0;
  if (!qword_1EE1026B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1026B0);
  }

  return result;
}

unint64_t sub_1DA3D1828()
{
  result = qword_1EE1026C8;
  if (!qword_1EE1026C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1026C8);
  }

  return result;
}

unint64_t sub_1DA3D1880()
{
  result = qword_1EE1026D0;
  if (!qword_1EE1026D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1026D0);
  }

  return result;
}

unint64_t sub_1DA3D18D8()
{
  result = qword_1EE102698;
  if (!qword_1EE102698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE102698);
  }

  return result;
}

unint64_t sub_1DA3D1930()
{
  result = qword_1EE1026A0;
  if (!qword_1EE1026A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1026A0);
  }

  return result;
}

unint64_t sub_1DA3D1988()
{
  result = qword_1EE1026D8;
  if (!qword_1EE1026D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1026D8);
  }

  return result;
}

unint64_t sub_1DA3D19E0()
{
  result = qword_1EE1026E0;
  if (!qword_1EE1026E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1026E0);
  }

  return result;
}

unint64_t sub_1DA3D1A38()
{
  result = qword_1EE1026E8;
  if (!qword_1EE1026E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1026E8);
  }

  return result;
}

unint64_t sub_1DA3D1A90()
{
  result = qword_1EE1026F0;
  if (!qword_1EE1026F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1026F0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_10(uint64_t a1, uint64_t a2)
{

  return sub_1DA422244();
}

void *OUTLINED_FUNCTION_9_7()
{

  return sub_1DA4222B4();
}

uint64_t OUTLINED_FUNCTION_14_1(uint64_t a1, uint64_t a2)
{

  return sub_1DA422244();
}

unint64_t OUTLINED_FUNCTION_15_0()
{
  *(v1 - 96) = *(v1 - 128);
  *(v1 - 88) = v0;

  return sub_1DA3CF678();
}

uint64_t OUTLINED_FUNCTION_19_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1DA422334();
}

uint64_t OUTLINED_FUNCTION_23_1(uint64_t a1)
{

  return sub_1DA4220E4();
}

_BYTE *storeEnumTagSinglePayload for AudioServiceError(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DA3D1DD8()
{
  result = qword_1ECBAF250;
  if (!qword_1ECBAF250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBAF250);
  }

  return result;
}

uint64_t SiriSuggestionsIntelligence.UserSegmentsFeatureExtractor.extract(_:)()
{
  v1[2] = v0;
  v2 = sub_1DA4214A4();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DA3D1F28);
}

uint64_t sub_1DA3D1F28()
{
  (*(v0[2] + 16))();
  v1 = v0[5];
  v2 = v0[3];
  v3 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBAEA40, &qword_1DA423328);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DA4238F0;
  static SiriSuggestionsIntelligence.createUserSegmentFeature(summary:)(v1, v4 + 32);
  (*(v3 + 8))(v1, v2);

  v5 = v0[1];

  return v5(v4);
}

void static SiriSuggestionsIntelligence.createUserSegmentFeature(summary:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1DA4214C4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(sub_1DA4214F4() + 16);

  v10 = *(sub_1DA4214B4() + 16);

  v43 = v9;
  v11 = __OFADD__(v9, v10);
  v12 = v9 + v10;
  if (v11)
  {
    goto LABEL_32;
  }

  v49 = sub_1DA4214B4();
  v13 = sub_1DA3B493C(v12, 0.0);
  v14 = sub_1DA4214F4();
  MEMORY[0x1EEE9AC00](v14);
  v42 = a1;
  *(&v40 - 2) = a1;
  v2 = sub_1DA3D27C0(sub_1DA3D27A0, (&v40 - 4), v14);
  v16 = v15;

  v41 = a2;
  if (v16)
  {
    goto LABEL_7;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_33;
  }

  while ((v2 & 0x8000000000000000) == 0)
  {
    if (v2 >= *(v13 + 16))
    {
      goto LABEL_35;
    }

    *(v13 + 8 * v2 + 32) = 0x3FF0000000000000;
LABEL_7:
    v17 = sub_1DA421484();
    v18 = 0;
    v19 = v17 + 56;
    v20 = 1 << *(v17 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v17 + 56);
    v23 = (v20 + 63) >> 6;
    v47 = v6 + 16;
    v48 = v17;
    v45 = v17 + 56;
    v46 = v6 + 8;
    v44 = v23;
    while (1)
    {
      v24 = v18;
      v50 = v13;
      if (!v22)
      {
        goto LABEL_12;
      }

LABEL_11:
      v18 = v24;
LABEL_15:
      v25 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      v26 = *(v6 + 72);
      (*(v6 + 16))(v8, *(v48 + 48) + v26 * (v25 | (v18 << 6)), v5);
      v27 = 0;
      v28 = v49;
      v2 = *(v49 + 16);
      while (1)
      {
        if (v2 == v27)
        {
          v29 = OUTLINED_FUNCTION_0_10();
          v30(v29);
          v24 = v18;
          v13 = v50;
          v23 = v44;
          v19 = v45;
          if (v22)
          {
            goto LABEL_11;
          }

LABEL_12:
          while (1)
          {
            v18 = v24 + 1;
            if (__OFADD__(v24, 1))
            {
              break;
            }

            if (v18 >= v23)
            {

              v35 = sub_1DA4214A4();
              v36 = v41;
              *(v41 + 40) = v35;
              v37 = MEMORY[0x1E69D3358];
              *(v36 + 48) = sub_1DA3D28A4(&qword_1ECBAF260, MEMORY[0x1E69D3358], MEMORY[0x1E69D3368]);
              *(v36 + 56) = sub_1DA3D28A4(&qword_1ECBAF268, v37, MEMORY[0x1E69D3360]);
              boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v36 + 16));
              (*(*(v35 - 8) + 16))(boxed_opaque_existential_1, v42, v35);
              strcpy(v36, "userSegments");
              *(v36 + 13) = 0;
              *(v36 + 14) = -5120;
              *(v36 + 64) = v13;
              return;
            }

            v22 = *(v19 + 8 * v18);
            ++v24;
            if (v22)
            {
              goto LABEL_15;
            }
          }

          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        sub_1DA3D28A4(&qword_1ECBAF258, MEMORY[0x1E69D3370], MEMORY[0x1E69D3378]);
        if (sub_1DA421B54())
        {
          break;
        }

        ++v27;
        v28 += v26;
      }

      v31 = OUTLINED_FUNCTION_0_10();
      v32(v31);
      v33 = v27 + v43;
      if (__OFADD__(v27, v43))
      {
        goto LABEL_29;
      }

      v13 = v50;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DA3B5D1C();
        v13 = v34;
      }

      v23 = v44;
      v19 = v45;
      if ((v33 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v33 >= *(v13 + 16))
      {
        goto LABEL_31;
      }

      *(v13 + 8 * v33 + 32) = 0x3FF0000000000000;
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    sub_1DA3B5D1C();
    v13 = v39;
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t SiriSuggestionsIntelligence.UserSegmentsFeatureExtractor.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1DA3D2524()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DA3D25B4;

  return SiriSuggestionsIntelligence.UserSegmentsFeatureExtractor.extract(_:)();
}

uint64_t sub_1DA3D25B4(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_1DA3D26B4(uint64_t a1)
{
  v2 = sub_1DA421514();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DA421494();
  v6 = sub_1DA408978(a1, v5);
  (*(v3 + 8))(v5, v2);
  return v6 & 1;
}

uint64_t sub_1DA3D27C0(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  while (1)
  {
    if (v7 == v6)
    {
      return 0;
    }

    v8 = *(sub_1DA421514() - 8);
    result = a1(a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6);
    if (v3)
    {
      return result;
    }

    if (result)
    {
      break;
    }

    ++v6;
  }

  return v6;
}

uint64_t sub_1DA3D28A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t SiriSuggestionsIntelligence.BiomeAppDataExtractor.__allocating_init(clock:)(uint64_t a1)
{
  sub_1DA3A7ED4(a1, v4);
  v1 = swift_allocObject();
  sub_1DA3A1FF8(v4, v1 + 16);
  OUTLINED_FUNCTION_0_11();
  v2 = swift_allocObject();
  v2[2] = sub_1DA3D3088;
  v2[3] = v1;
  v2[4] = sub_1DA3D30E8;
  v2[5] = 0;
  return OUTLINED_FUNCTION_3_11(v2);
}

void *sub_1DA3D29B8()
{
  v1 = sub_1DA4210B4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DA3D36D0();
  v60 = sub_1DA421AE4();
  v49 = v0;
  (*(v0 + 16))(v57);
  v5 = v58;
  v6 = v59;
  __swift_project_boxed_opaque_existential_1(v57, v58);
  (*(v6 + 16))(v5, v6);
  sub_1DA421024();
  sub_1DA421094();
  v8 = v7;
  v9 = *(v2 + 8);
  v46 = v4;
  v48 = v1;
  v47 = v2 + 8;
  v45 = v9;
  v9(v4, v1);
  if (qword_1EE102E00 != -1)
  {
    swift_once();
  }

  v10 = sub_1DA421A94();
  v50 = __swift_project_value_buffer(v10, static Logger.extractionCategory);
  v11 = sub_1DA421A74();
  v12 = sub_1DA421F64();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134217984;
    *(v13 + 4) = v8;
    _os_log_impl(&dword_1DA39E000, v11, v12, "Using startDate: %f", v13, 0xCu);
    MEMORY[0x1DA74E430](v13, -1, -1);
  }

  v56[0] = 0;
  v56[1] = 0xE000000000000000;
  sub_1DA422094();
  MEMORY[0x1DA74D370](0xD0000000000001A1, 0x80000001DA42D850);
  OUTLINED_FUNCTION_2_10();
  MEMORY[0x1DA74D370](0xD00000000000013DLL, 0x80000001DA42DA00);
  OUTLINED_FUNCTION_2_10();
  v14 = MEMORY[0x1DA74D370](0xD000000000000046, 0x80000001DA42DB40);
  v15 = (*(v49 + 32))(v14);
  v16 = sub_1DA421F44();

  v17 = sub_1DA421A74();
  v18 = sub_1DA421F64();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1DA39E000, v17, v18, "BiomeAppDataExtractor:: Executing", v19, 2u);
    MEMORY[0x1DA74E430](v19, -1, -1);
  }

  sub_1DA3A7ED4(v57, v56);
  sub_1DA3A7ED4(v57, v53);
  while (1)
  {
    if (![v16 next])
    {
      __swift_project_boxed_opaque_existential_1((v49 + 48), *(v49 + 72));
      sub_1DA421934();
      v35 = v46;
      sub_1DA421024();
      sub_1DA421094();
      v42 = v41;
      v45(v35, v48);
      v43 = v51;
      sub_1DA3D3534(2, 0, 2, v56, &v60, v42);
      __swift_destroy_boxed_opaque_existential_0(v56);

      if (!v43)
      {
        __swift_destroy_boxed_opaque_existential_0(v53);
        swift_beginAccess();
        v35 = v60;
        __swift_destroy_boxed_opaque_existential_0(v57);
        return v35;
      }

LABEL_23:

      __swift_destroy_boxed_opaque_existential_0(v53);
      __swift_destroy_boxed_opaque_existential_0(v57);
      return v35;
    }

    v20 = MEMORY[0x1DA74DD10]();
    v21 = sub_1DA3D3B8C(v16);
    if (v21)
    {
      v22 = sub_1DA3D31A4(v21);
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v29 = ~v25;

      if (v29)
      {
        break;
      }
    }

    v30 = sub_1DA421A74();
    v31 = sub_1DA421F64();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1DA39E000, v30, v31, "BiomeAppDataExtractor:: NO ROW!!!", v32, 2u);
      MEMORY[0x1DA74E430](v32, -1, -1);
    }

LABEL_19:
    objc_autoreleasePoolPop(v20);
  }

  v34 = v54;
  v33 = v55;
  v35 = __swift_project_boxed_opaque_existential_1(v53, v54);
  v36 = v51;
  v37 = (*(v33 + 8))(v22, v24, v26, v34, v33, v28);
  v51 = v36;
  if (v36)
  {
    __swift_destroy_boxed_opaque_existential_0(v56);
    OUTLINED_FUNCTION_1_10();
    objc_autoreleasePoolPop(v20);

    goto LABEL_23;
  }

  v38 = v37;
  if (!v37)
  {
    OUTLINED_FUNCTION_1_10();
    goto LABEL_19;
  }

  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v52 = v60;
  v40 = v51;
  sub_1DA3D3724(v38, sub_1DA3D3C24, 0, isUniquelyReferenced_nonNull_native, &v52);
  v51 = v40;
  if (!v40)
  {
    v60 = v52;
    swift_endAccess();
    OUTLINED_FUNCTION_1_10();

    goto LABEL_19;
  }

  result = swift_endAccess();
  __break(1u);
  return result;
}

uint64_t sub_1DA3D3024@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for SiriSuggestionsIntelligence.AppTransitionStateMachine();
  sub_1DA3A7ED4(a1, v6);
  result = SiriSuggestionsIntelligence.AppTransitionStateMachine.__allocating_init(clock:)(v6);
  a2[3] = v4;
  a2[4] = &protocol witness table for SiriSuggestionsIntelligence.AppTransitionStateMachine;
  *a2 = result;
  return result;
}

uint64_t SiriSuggestionsIntelligence.BiomeAppDataExtractor.__allocating_init(stateMachineProvider:clock:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_11();
  v4 = swift_allocObject();
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = sub_1DA3D30E8;
  v4[5] = 0;
  return OUTLINED_FUNCTION_3_11(v4);
}

id sub_1DA3D30E8()
{
  v0 = objc_allocWithZone(MEMORY[0x1E698F2E0]);

  return [v0 init];
}

uint64_t SiriSuggestionsIntelligence.BiomeAppDataExtractor.__allocating_init(stateMachineProvider:database:clock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_0_11();
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  return OUTLINED_FUNCTION_3_11(v8);
}

void *SiriSuggestionsIntelligence.BiomeAppDataExtractor.init(stateMachineProvider:database:clock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = a3;
  v5[5] = a4;
  sub_1DA3A1FF8(a5, (v5 + 6));
  return v5;
}

uint64_t sub_1DA3D31A4(uint64_t a1)
{
  strcpy(&v19, "bundleID");
  BYTE9(v19) = 0;
  WORD5(v19) = 0;
  HIDWORD(v19) = -402653184;
  sub_1DA422044();
  sub_1DA3EA288(v18, a1, &v19);
  sub_1DA3B8210(v18);
  if (v20)
  {
    v2 = swift_dynamicCast();
    if (v2)
    {
      v3 = v16;
    }

    else
    {
      v3 = 0;
    }

    if (v2)
    {
      v4 = v17;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    sub_1DA3A8CA8(&v19, &qword_1ECBAF270, &qword_1DA429440);
    v3 = 0;
    v4 = 0;
  }

  strcpy(&v19, "eventTimestamp");
  HIBYTE(v19) = -18;
  sub_1DA422044();
  sub_1DA3EA288(v18, a1, &v19);
  sub_1DA3B8210(v18);
  if (v20)
  {
    v5 = swift_dynamicCast() ^ 1;
  }

  else
  {
    sub_1DA3A8CA8(&v19, &qword_1ECBAF270, &qword_1DA429440);
    v5 = 1;
  }

  sub_1DA422044();
  sub_1DA3EA288(v18, a1, &v19);
  sub_1DA3B8210(v18);
  if (v20)
  {
    if (swift_dynamicCast())
    {
      v6 = sub_1DA421EE4();
      v7 = sub_1DA421DC4();

      v8 = v7 & 1;
      if (!v4)
      {
        goto LABEL_23;
      }

      goto LABEL_18;
    }
  }

  else
  {
    sub_1DA3A8CA8(&v19, &qword_1ECBAF270, &qword_1DA429440);
  }

  v8 = 2;
  if (!v4)
  {
LABEL_23:
    if (qword_1EE102E00 != -1)
    {
      swift_once();
    }

    v10 = sub_1DA421A94();
    __swift_project_value_buffer(v10, static Logger.extractionCategory);
    v11 = sub_1DA421A74();
    v12 = sub_1DA421F74();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1DA39E000, v11, v12, "BiomeAppDataExtractor:: row does not have the required properties to proceed", v13, 2u);
      MEMORY[0x1DA74E430](v13, -1, -1);
    }

    return 0;
  }

LABEL_18:
  if (v8 == 2)
  {
    v9 = 1;
  }

  else
  {
    v9 = v5;
  }

  if (v9)
  {

    goto LABEL_23;
  }

  v14 = v3 == 0x64656B636F6CLL && v4 == 0xE600000000000000;
  if (v14 || (sub_1DA4223A4() & 1) != 0)
  {

    return ~v8 & 1;
  }

  return v3;
}

uint64_t sub_1DA3D3534(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, double a6)
{
  v12 = a4[3];
  v13 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v12);
  result = (*(v13 + 8))(a1, a2, a3, v12, v13, a6);
  if (!v6)
  {
    if (result)
    {
      swift_beginAccess();

      sub_1DA3D3B18(v15, sub_1DA3D3C24, 0, a5);
      swift_endAccess();
    }
  }

  return result;
}

void *SiriSuggestionsIntelligence.BiomeAppDataExtractor.deinit()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 48));
  return v0;
}

uint64_t SiriSuggestionsIntelligence.BiomeAppDataExtractor.__deallocating_deinit()
{
  SiriSuggestionsIntelligence.BiomeAppDataExtractor.deinit();
  v0 = OUTLINED_FUNCTION_0_11();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

unint64_t sub_1DA3D36D0()
{
  result = qword_1EE101ED0;
  if (!qword_1EE101ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE101ED0);
  }

  return result;
}

uint64_t sub_1DA3D3724(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v71 = a5;
  sub_1DA3D3CE0(a1, a2, a3, v66);
  v6 = v66[1];
  v7 = v66[3];
  v8 = v66[4];
  v55 = v66[5];
  v56 = v66[0];
  v9 = (v66[2] + 64) >> 6;

  v53 = v9;
  v54 = v6;
  while (1)
  {
    v10 = v8;
    v11 = v7;
    if (!v8)
    {
      break;
    }

LABEL_7:
    v13 = __clz(__rbit64(v10)) | (v11 << 6);
    v14 = *(v56 + 48) + 56 * v13;
    v15 = *(v14 + 8);
    v16 = *(v14 + 32);
    v18 = *(v14 + 40);
    v17 = *(v14 + 48);
    v19 = (*(v56 + 56) + 32 * v13);
    v20 = *v19;
    v21 = v19[1];
    v22 = v19[2];
    v23 = v19[3];
    *__src = *v14;
    *&__src[8] = v15;
    *&__src[16] = *(v14 + 16);
    __src[32] = v16;
    *&__src[40] = v18;
    *&__src[48] = v17;
    *&__src[56] = v20;
    *&__src[64] = v21;
    *&__src[72] = v22;
    *&__src[80] = v23;

    v55(v60, __src);
    memcpy(__dst, __src, sizeof(__dst));
    sub_1DA3A8CA8(__dst, &qword_1ECBAEEA8, &qword_1DA424728);
    if (!*(&v60[0] + 1))
    {
LABEL_20:
      sub_1DA3BFA40(v56);
    }

    v67 = v60[0];
    v68 = v60[1];
    v69 = v60[2];
    v24 = v62;
    v70 = v61;
    v25 = v63;
    v26 = v64;
    v27 = v65;
    v28 = *v71;
    v30 = sub_1DA3B7618(&v67);
    v31 = v28[2];
    v32 = (v29 & 1) == 0;
    v33 = v31 + v32;
    if (__OFADD__(v31, v32))
    {
      goto LABEL_22;
    }

    v34 = v29;
    if (v28[3] >= v33)
    {
      if ((a4 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEE78, &qword_1DA4246F0);
        sub_1DA4221B4();
      }
    }

    else
    {
      sub_1DA3D6290(v33, a4 & 1);
      v35 = sub_1DA3B7618(&v67);
      if ((v34 & 1) != (v36 & 1))
      {
        goto LABEL_25;
      }

      v30 = v35;
    }

    v57 = (v10 - 1) & v10;
    v37 = *v71;
    if (v34)
    {
      v38 = v37[7] + 32 * v30;
      v40 = *v38;
      v39 = *(v38 + 8);
      v41 = *(v38 + 16);
      v42 = *(v38 + 24);

      sub_1DA3BF9EC(&v67);
      if (__OFADD__(v41, v26))
      {
        goto LABEL_23;
      }

      v43 = v37[7] + 32 * v30;
      *v43 = v40;
      *(v43 + 8) = v39;
      *(v43 + 16) = v41 + v26;
      *(v43 + 24) = v27 + v42;
    }

    else
    {
      v37[(v30 >> 6) + 8] |= 1 << v30;
      v44 = v37[6] + 56 * v30;
      v45 = v67;
      v46 = v68;
      v47 = v69;
      *(v44 + 48) = v70;
      *(v44 + 16) = v46;
      *(v44 + 32) = v47;
      *v44 = v45;
      v48 = v37[7] + 32 * v30;
      *v48 = v24;
      *(v48 + 8) = v25;
      *(v48 + 16) = v26;
      *(v48 + 24) = v27;
      v49 = v37[2];
      v50 = __OFADD__(v49, 1);
      v51 = v49 + 1;
      if (v50)
      {
        goto LABEL_24;
      }

      v37[2] = v51;
    }

    a4 = 1;
    v7 = v11;
    v9 = v53;
    v6 = v54;
    v8 = v57;
  }

  v12 = v7;
  while (1)
  {
    v11 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v11 >= v9)
    {
      goto LABEL_20;
    }

    v10 = *(v6 + 8 * v11);
    ++v12;
    if (v10)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_1DA4223E4();
  __break(1u);
  return result;
}

double sub_1DA3D3A94(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v6;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  sub_1DA3D3C84(a2, v8);

  return a3;
}

uint64_t sub_1DA3D3B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *a4;
  result = sub_1DA3D3724(a1, a2, a3, isUniquelyReferenced_nonNull_native, &v10);
  *a4 = v10;
  return result;
}

uint64_t sub_1DA3D3B8C(void *a1)
{
  v1 = [a1 row];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1DA421AC4();

  return v3;
}

uint64_t sub_1DA3D3BF8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1DA3D3C0C(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1DA3D3C0C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

void sub_1DA3D3C24(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v9[0] = *a1;
  v9[1] = v3;
  v9[2] = *(a1 + 32);
  v4 = *(a1 + 56);
  v10 = *(a1 + 48);
  v5 = sub_1DA3D3A94(a2, v9, *(a1 + 80), v4, *(a1 + 64));
  *(a2 + 56) = v6;
  *(a2 + 64) = v7;
  *(a2 + 72) = v8;
  *(a2 + 80) = v5;
}

uint64_t sub_1DA3D3CE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_10()
{

  return sub_1DA3D3BF8(v0, v2, v1);
}

uint64_t OUTLINED_FUNCTION_2_10()
{

  return sub_1DA421E94();
}

id sub_1DA3D3D8C(double a1)
{
  v10[11] = *MEMORY[0x1E69E9840];
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF280, &qword_1DA4267A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DA4238F0;
  *(inited + 32) = 0xD000000000000012;
  *(inited + 40) = 0x80000001DA42DC00;
  v4 = [objc_opt_self() featureValueWithDouble_];
  *(inited + 72) = sub_1DA3A6990(0, &qword_1ECBAF288, 0x1E695FE60);
  *(inited + 48) = v4;
  sub_1DA421AE4();
  v5 = sub_1DA421AB4();

  v10[0] = 0;
  v6 = [v2 initWithDictionary:v5 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_1DA420FB4();

    swift_willThrow();
  }

  return v6;
}

id SiriSuggestionsIntelligence.IdentityModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SiriSuggestionsIntelligence.IdentityModel.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriSuggestionsIntelligence.IdentityModel();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SiriSuggestionsIntelligence.IdentityModel.__allocating_init(modelDescription:parameters:)(void *a1)
{

  v3 = [objc_allocWithZone(v1) init];

  return v3;
}

id SiriSuggestionsIntelligence.IdentityModel.init(modelDescription:parameters:)(void *a1)
{

  v3 = [v1 init];

  return v3;
}

id SiriSuggestionsIntelligence.IdentityModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriSuggestionsIntelligence.IdentityModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1DA3D4250(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECBAF690, &qword_1DA4275A0);
    v3 = sub_1DA422214();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v6 = v3;
  sub_1DA3D7FE8(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

uint64_t SiriSuggestionsIntelligence.SourcedFeatureMLFeatureProvider.featureNames.getter()
{
  v1 = [*(v0 + 16) featureNames];
  v2 = sub_1DA421EB4();

  return v2;
}

MLFeatureValue_optional __swiftcall SiriSuggestionsIntelligence.SourcedFeatureMLFeatureProvider.featureValue(for:)(Swift::String a1)
{
  v2 = *(v1 + 16);
  v3 = sub_1DA421B64();
  v4 = [v2 featureValueForName_];

  v6 = v4;
  result.value.super.isa = v6;
  result.is_nil = v5;
  return result;
}

uint64_t sub_1DA3D44A0(uint64_t a1, uint64_t a2)
{
  v53 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF0A8, &unk_1DA425510);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v53 - v5;
  v56 = sub_1DA4214A4();
  OUTLINED_FUNCTION_3_1();
  v55 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v54 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v11 = *(a1 + 16);
  v12 = a1 + 32;
  v13 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v14 = (v12 + 72 * v10);
  while (v11 != v10)
  {
    if (v10 >= v11)
    {
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      OUTLINED_FUNCTION_1_11();
      swift_once();
      goto LABEL_28;
    }

    v15 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      goto LABEL_34;
    }

    sub_1DA3D4AD0(v14, __dst);
    ++v10;
    v14 += 9;
    if (__dst[1])
    {
      v57 = *&__dst[1];
      v16 = __dst[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_16_1();
        sub_1DA3A5920();
        v13 = v21;
      }

      v18 = *(v13 + 2);
      v17 = *(v13 + 3);
      v19 = v57;
      if (v18 >= v17 >> 1)
      {
        OUTLINED_FUNCTION_21_3(v17);
        sub_1DA3A5920();
        v19 = v57;
        v13 = v22;
      }

      *(v13 + 2) = v18 + 1;
      v20 = &v13[6 * v18];
      *(v20 + 4) = v16;
      *(v20 + 10) = v19;
      v10 = v15;
      goto LABEL_2;
    }
  }

  v60 = v13;
  while (1)
  {
    v13 = &off_1DA423000;
    if (!v11)
    {
      break;
    }

    sub_1DA3B1C24(v12, __src);
    v23 = __src[0] == 0x6D67655372657375 && __src[1] == 0xEC00000073746E65;
    if (v23 || (sub_1DA4223A4() & 1) != 0)
    {
      memcpy(__dst, __src, 0x48uLL);
      sub_1DA3B239C(&__dst[2], __src);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDA0, &unk_1DA423DB0);
      v24 = v56;
      if (swift_dynamicCast())
      {
        __swift_storeEnumTagSinglePayload(v6, 0, 1, v24);
        v25 = v55;
        v26 = v54;
        (*(v55 + 32))(v54, v6, v24);
        v27 = sub_1DA3D5444();
        if (qword_1ECBAE838 != -1)
        {
          OUTLINED_FUNCTION_1_11();
          swift_once();
        }

        v28 = sub_1DA421A94();
        __swift_project_value_buffer(v28, static Logger.inferenceCategory);

        v29 = sub_1DA421A74();
        v30 = sub_1DA421F64();

        if (os_log_type_enabled(v29, v30))
        {
          OUTLINED_FUNCTION_22_0();
          v31 = swift_slowAlloc();
          OUTLINED_FUNCTION_2_2();
          v32 = swift_slowAlloc();
          *&v57 = v27;
          v33 = v32;
          __src[0] = v32;
          *v31 = 136315138;
          v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEA00, &qword_1DA4232E8);
          v35 = MEMORY[0x1DA74D4B0](v57, v34);
          v37 = sub_1DA3A5FE8(v35, v36, __src);
          v24 = v56;

          *(v31 + 4) = v37;
          _os_log_impl(&dword_1DA39E000, v29, v30, "Expanding and adding user segment features %s", v31, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v33);
          v27 = v57;
          OUTLINED_FUNCTION_18_0();
          MEMORY[0x1DA74E430]();
          v26 = v54;
          v25 = v55;
          OUTLINED_FUNCTION_18_0();
          MEMORY[0x1DA74E430]();
        }

        sub_1DA3BD0A0(v27);
        (*(v25 + 8))(v26, v24);
        sub_1DA3B1C80(__dst);
      }

      else
      {
        sub_1DA3B1C80(__dst);
        __swift_storeEnumTagSinglePayload(v6, 1, 1, v24);
        sub_1DA3D9980(v6);
      }

      break;
    }

    sub_1DA3B1C80(__src);
    v12 += 72;
    --v11;
  }

  if (qword_1ECBAE838 != -1)
  {
    goto LABEL_35;
  }

LABEL_28:
  v38 = sub_1DA421A94();
  __swift_project_value_buffer(v38, static Logger.inferenceCategory);
  v39 = v60;

  v40 = sub_1DA421A74();
  v41 = sub_1DA421F64();

  if (os_log_type_enabled(v40, v41))
  {
    OUTLINED_FUNCTION_22_0();
    v42 = swift_slowAlloc();
    OUTLINED_FUNCTION_2_2();
    v43 = swift_slowAlloc();
    __dst[0] = v43;
    *v42 = *(v13 + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEA00, &qword_1DA4232E8);
    v44 = sub_1DA421784();
    v46 = sub_1DA3A5FE8(v44, v45, __dst);

    *(v42 + 4) = v46;
    _os_log_impl(&dword_1DA39E000, v40, v41, "features mapped to coreML: %s", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v43);
    OUTLINED_FUNCTION_18_0();
    MEMORY[0x1DA74E430]();
    OUTLINED_FUNCTION_18_0();
    MEMORY[0x1DA74E430]();
  }

  v47 = sub_1DA3D4250(v39);
  sub_1DA3DED4C(v47);

  v48 = objc_allocWithZone(MEMORY[0x1E695FE48]);
  v49 = OUTLINED_FUNCTION_17_3();
  v50 = sub_1DA3E24DC(v49);
  if (!v2)
  {
    v51 = v50;
    type metadata accessor for SiriSuggestionsIntelligence.SourcedFeatureMLFeatureProvider();
    v2 = swift_allocObject();
    *(v2 + 16) = v51;
    *(v2 + 24) = v53;
  }

  return v2;
}

void sub_1DA3D4AD0(uint64_t *a1@<X0>, void *a2@<X8>)
{
  if (qword_1ECBAE838 != -1)
  {
    swift_once();
  }

  v4 = sub_1DA421A94();
  __swift_project_value_buffer(v4, static Logger.inferenceCategory);
  sub_1DA3B1C24(a1, v20);
  sub_1DA3B1C24(a1, v19);
  v5 = sub_1DA421A74();
  v6 = sub_1DA421F64();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 136315394;
    v9 = v20[0];
    v10 = v20[1];

    sub_1DA3B1C80(v20);
    v11 = sub_1DA3A5FE8(v9, v10, &v21);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    sub_1DA3B1DE4();
    v12 = sub_1DA421B14();
    v14 = v13;
    sub_1DA3B1C80(v19);
    v15 = sub_1DA3A5FE8(v12, v14, &v21);

    *(v7 + 14) = v15;
    _os_log_impl(&dword_1DA39E000, v5, v6, "feature %s , %s, ", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA74E430](v8, -1, -1);
    MEMORY[0x1DA74E430](v7, -1, -1);
  }

  else
  {

    sub_1DA3B1C80(v19);
    sub_1DA3B1C80(v20);
  }

  v16 = sub_1DA3D4CF8();
  v17 = v16;
  if (v16)
  {
    v18 = *a1;
  }

  else
  {
    v18 = 0;
  }

  *a2 = v18;
  a2[1] = v16;
  a2[2] = v17;
}

uint64_t sub_1DA3D4CF8()
{
  sub_1DA3B239C(v0 + 16, v237);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEDA0, &unk_1DA423DB0);
  v8 = OUTLINED_FUNCTION_3_12(v1, v2, v3, &type metadata for SiriSuggestionsIntelligence.MotionActivity, v4, v5, v6, v7, v138, v153, v168, v183, v198, v213, v228, *(&v228 + 1), v229);
  if (v8)
  {
    sub_1DA3A6990(0, &qword_1ECBAF288, 0x1E695FE60);
    v15 = SiriSuggestionsIntelligence.MotionActivity.description.getter(v233, BYTE8(v233));
LABEL_8:
    v34 = sub_1DA3D5B9C(v15, v16);
LABEL_9:
    v35 = v34;
    goto LABEL_10;
  }

  v17 = OUTLINED_FUNCTION_3_12(v8, v9, v10, &type metadata for SiriSuggestionsIntelligence.NowPlaying, v11, v12, v13, v14, v139, v154, v169, v184, v199, v214, v228, *(&v228 + 1), v229);
  if (v17)
  {
    sub_1DA3A6990(0, &qword_1ECBAF288, 0x1E695FE60);
    v228 = v233;
    v229 = v234;
    v230 = v235;
    *&v231 = v236;
    sub_1DA3D9A3C();
    v24 = sub_1DA421B14();
    v26 = v25;
    sub_1DA3CCA5C(v233, *(&v233 + 1), v234, v235, v236);
    v15 = v24;
    v16 = v26;
    goto LABEL_8;
  }

  v27 = OUTLINED_FUNCTION_3_12(v17, v18, v19, &type metadata for SiriSuggestionsIntelligence.NetworkConnection, v20, v21, v22, v23, v140, v155, v170, v185, v200, v215, v228, *(&v228 + 1), v229);
  if (v27)
  {
    sub_1DA3A6990(0, &qword_1ECBAF288, 0x1E695FE60);
    LOBYTE(v228) = v233;
    sub_1DA3B6298();
LABEL_7:
    v15 = sub_1DA421B14();
    goto LABEL_8;
  }

  v37 = OUTLINED_FUNCTION_3_12(v27, v28, v29, &type metadata for SiriSuggestionsIntelligence.ScreenBrightness, v30, v31, v32, v33, v141, v156, v171, v186, v201, v216, v228, *(&v228 + 1), v229);
  if (v37)
  {
    v44 = [objc_opt_self() featureValueWithInt64_];
LABEL_13:
    v34 = v44;
    goto LABEL_9;
  }

  v45 = OUTLINED_FUNCTION_3_12(v37, v38, v39, &type metadata for SiriSuggestionsIntelligence.SemanticLocation, v40, v41, v42, v43, v142, v157, v172, v187, v202, v217, v228, *(&v228 + 1), v229);
  if (v45)
  {
    sub_1DA3A6990(0, &qword_1ECBAF288, 0x1E695FE60);
    *&v228 = v233;
    BYTE8(v228) = BYTE8(v233);
    sub_1DA3B6340();
    goto LABEL_7;
  }

  v52 = OUTLINED_FUNCTION_3_12(v45, v46, v47, &type metadata for SiriSuggestionsIntelligence.CarPlayConnection, v48, v49, v50, v51, v143, v158, v173, v188, v203, v218, v228, *(&v228 + 1), v229);
  if (v52)
  {
    sub_1DA3A6990(0, &qword_1ECBAF288, 0x1E695FE60);
    *&v228 = v233;
    BYTE8(v228) = BYTE8(v233);
    sub_1DA3D99E8();
    goto LABEL_7;
  }

  v59 = OUTLINED_FUNCTION_3_12(v52, v53, v54, &type metadata for SiriSuggestionsIntelligence.FocusMode, v55, v56, v57, v58, v144, v159, v174, v189, v204, v219, v228, *(&v228 + 1), v229);
  if (v59)
  {
    sub_1DA3A6990(0, &qword_1ECBAF288, 0x1E695FE60);
    v66 = OUTLINED_FUNCTION_39();
    v68 = SiriSuggestionsIntelligence.FocusMode.description.getter(v66, v67, v234, v235);
    v70 = v69;

    v15 = v68;
    v16 = v70;
    goto LABEL_8;
  }

  v71 = OUTLINED_FUNCTION_3_12(v59, v60, v61, &type metadata for DailyTimePeriod, v62, v63, v64, v65, v145, v160, v175, v190, v205, v220, v228, *(&v228 + 1), v229);
  if (v71)
  {
    v78 = 0xE700000000000000;
    v79 = 0x676E696E726F6DLL;
    switch(v233)
    {
      case 1:
        v78 = 0xE600000000000000;
        v79 = 0x79616464696DLL;
        break;
      case 2:
        v78 = 0xE90000000000006ELL;
        v79 = 0x6F6F6E7265746661;
        break;
      case 3:
        v79 = 0x676E696E657665;
        break;
      default:
        break;
    }

    sub_1DA3A6990(0, &qword_1ECBAF288, 0x1E695FE60);
    v15 = v79;
    v16 = v78;
    goto LABEL_8;
  }

  v80 = OUTLINED_FUNCTION_3_12(v71, v72, v73, MEMORY[0x1E69E63B0], v74, v75, v76, v77, v146, v161, v176, v191, v206, v221, v228, *(&v228 + 1), v229);
  if (v80)
  {
    v44 = [objc_opt_self() featureValueWithDouble_];
    goto LABEL_13;
  }

  v87 = OUTLINED_FUNCTION_3_12(v80, v81, v82, MEMORY[0x1E69E6158], v83, v84, v85, v86, v147, v162, v177, v192, v207, v222, v228, *(&v228 + 1), v229);
  if (v87 || (v94 = OUTLINED_FUNCTION_3_12(v87, v88, v89, MEMORY[0x1E69E6370], v90, v91, v92, v93, v148, v163, v178, v193, v208, v223, v228, *(&v228 + 1), v229), v94))
  {
    sub_1DA3A6990(0, &qword_1ECBAF288, 0x1E695FE60);
    v15 = OUTLINED_FUNCTION_39();
    goto LABEL_8;
  }

  v101 = OUTLINED_FUNCTION_3_12(v94, v95, v96, MEMORY[0x1E69E6530], v97, v98, v99, v100, v149, v164, v179, v194, v209, v224, v228, *(&v228 + 1), v229);
  if (v101 || (v108 = OUTLINED_FUNCTION_3_12(v101, v102, v103, MEMORY[0x1E69E7360], v104, v105, v106, v107, v150, v165, v180, v195, v210, v225, v228, *(&v228 + 1), v229), v108))
  {
    v44 = [objc_opt_self() featureValueWithInt64_];
    goto LABEL_13;
  }

  if (OUTLINED_FUNCTION_3_12(v108, v109, v110, &type metadata for SiriSuggestionsIntelligence.AppStats, v111, v112, v113, v114, v151, v166, v181, v196, v211, v226, v228, *(&v228 + 1), v229))
  {
    sub_1DA3A6990(0, &qword_1ECBAF288, 0x1E695FE60);
    v115 = OUTLINED_FUNCTION_39();
    v117 = sub_1DA3F3DE4(*&v235, v115, v116, v234);

    sub_1DA3DEF90(v117);
    v119 = v118;

    v34 = sub_1DA3D5C00(v119);
    goto LABEL_9;
  }

  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF290, &qword_1DA426840);
  if (OUTLINED_FUNCTION_3_12(v120, v121, v122, v120, v123, v124, v125, v126, v152, v167, v182, v197, v212, v227, v228, *(&v228 + 1), v229))
  {
    sub_1DA3A1FF8(&v233, &v228);
    v127 = v230;
    v128 = v231;
    __swift_project_boxed_opaque_existential_1(&v228, v230);
    v35 = (*(v128 + 8))(v127, v128);
    __swift_destroy_boxed_opaque_existential_0(&v228);
  }

  else
  {
    if (qword_1ECBAE838 != -1)
    {
      OUTLINED_FUNCTION_1_11();
      swift_once();
    }

    v129 = sub_1DA421A94();
    __swift_project_value_buffer(v129, static Logger.inferenceCategory);
    sub_1DA3B1C24(v0, &v233);
    v130 = sub_1DA421A74();
    v131 = sub_1DA421F74();
    if (os_log_type_enabled(v130, v131))
    {
      OUTLINED_FUNCTION_22_0();
      v132 = swift_slowAlloc();
      OUTLINED_FUNCTION_2_2();
      v133 = swift_slowAlloc();
      v232 = v133;
      *v132 = 136315138;
      sub_1DA3B239C(&v234, &v228);
      __swift_project_boxed_opaque_existential_1(&v228, v230);
      swift_getDynamicType();
      __swift_destroy_boxed_opaque_existential_0(&v228);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF298, &qword_1DA426848);
      v134 = sub_1DA421BB4();
      v136 = v135;
      sub_1DA3B1C80(&v233);
      v137 = sub_1DA3A5FE8(v134, v136, &v232);

      *(v132 + 4) = v137;
      _os_log_impl(&dword_1DA39E000, v130, v131, "Unable to convert value of type: %s", v132, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v133);
      OUTLINED_FUNCTION_18_0();
      MEMORY[0x1DA74E430]();
      OUTLINED_FUNCTION_18_0();
      MEMORY[0x1DA74E430]();
    }

    else
    {

      sub_1DA3B1C80(&v233);
    }

    v35 = 0;
  }

LABEL_10:
  __swift_destroy_boxed_opaque_existential_0(v237);
  return v35;
}

uint64_t sub_1DA3D5444()
{
  v68 = sub_1DA421514();
  OUTLINED_FUNCTION_3_1();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v5 = v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DA4214F4();
  v7 = *(v6 + 16);
  if (v7)
  {
    v63[1] = v0;
    v69[0] = MEMORY[0x1E69E7CC0];
    sub_1DA3B0320(0, v7, 0);
    v8 = v69[0];
    v64 = v2;
    v10 = *(v2 + 16);
    v9 = v2 + 16;
    v11 = *(v9 + 64);
    v63[0] = v6;
    v12 = v6 + ((v11 + 32) & ~v11);
    v65 = *(v9 + 56);
    v66 = v10;
    v67 = v9;
    v13 = (v9 - 8);
    do
    {
      v14 = v68;
      v66(v5, v12, v68);
      v15 = sub_1DA421504();
      v17 = v16;
      (*v13)(v5, v14);
      v69[0] = v8;
      v19 = *(v8 + 16);
      v18 = *(v8 + 24);
      if (v19 >= v18 >> 1)
      {
        v21 = OUTLINED_FUNCTION_21_3(v18);
        sub_1DA3B0320(v21, v19 + 1, 1);
        v8 = v69[0];
      }

      *(v8 + 16) = v19 + 1;
      v20 = v8 + 24 * v19;
      *(v20 + 32) = v15;
      *(v20 + 40) = v17;
      *(v20 + 48) = 0;
      v12 += v65;
      --v7;
    }

    while (v7);

    v2 = v64;
  }

  else
  {

    v8 = MEMORY[0x1E69E7CC0];
  }

  v22 = sub_1DA3D5A20(v8, &qword_1ECBAF2A8, &qword_1DA426850, sub_1DA3D7D14);
  sub_1DA421494();
  v23 = sub_1DA421504();
  v25 = v24;
  (*(v2 + 8))(v5, v68);
  swift_isUniquelyReferenced_nonNull_native();
  v69[0] = v22;
  sub_1DA3E28C0(1, v23, v25);

  v26 = v69[0];
  v27 = v69[0] + 64;
  OUTLINED_FUNCTION_30_1();
  v30 = v29 & v28;
  v32 = (v31 + 63) >> 6;

  v33 = 0;
  v68 = MEMORY[0x1E69E7CC0];
  v34 = MEMORY[0x1E69E6390];
  v35 = MEMORY[0x1E69E6378];
  while (1)
  {
    v36 = v33;
    if (!v30)
    {
      break;
    }

LABEL_13:
    v37 = __clz(__rbit64(v30)) | (v33 << 6);
    v38 = (*(v26 + 48) + 16 * v37);
    v40 = *v38;
    v39 = v38[1];
    LOBYTE(v37) = *(*(v26 + 56) + v37);
    v30 &= v30 - 1;
    v71 = MEMORY[0x1E69E6370];
    v72 = v34;
    v70 = v37;
    v69[0] = v40;
    v69[1] = v39;
    v73 = v35;
    v74 = 0;
    swift_bridgeObjectRetain_n();
    v41 = sub_1DA3D4CF8();
    sub_1DA3B1C80(v69);
    if (v41)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_16_1();
        sub_1DA3A5920();
        v68 = v47;
      }

      v43 = *(v68 + 16);
      v42 = *(v68 + 24);
      v44 = v43 + 1;
      if (v43 >= v42 >> 1)
      {
        OUTLINED_FUNCTION_21_3(v42);
        v66 = v49;
        v67 = v48;
        sub_1DA3A5920();
        v43 = v66;
        v44 = v67;
        v68 = v50;
      }

      v45 = v68;
      *(v68 + 16) = v44;
      v46 = (v45 + 24 * v43);
      v46[4] = v40;
      v46[5] = v39;
      v46[6] = v41;
    }

    else
    {
    }
  }

  while (1)
  {
    v33 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      __break(1u);
      goto LABEL_26;
    }

    if (v33 >= v32)
    {
      break;
    }

    v30 = *(v27 + 8 * v33);
    ++v36;
    if (v30)
    {
      goto LABEL_13;
    }
  }

  if (qword_1ECBAE838 == -1)
  {
    goto LABEL_21;
  }

LABEL_26:
  OUTLINED_FUNCTION_1_11();
  swift_once();
LABEL_21:
  v51 = sub_1DA421A94();
  __swift_project_value_buffer(v51, static Logger.inferenceCategory);

  v52 = sub_1DA421A74();
  v53 = sub_1DA421F64();

  if (os_log_type_enabled(v52, v53))
  {
    OUTLINED_FUNCTION_22_0();
    v54 = swift_slowAlloc();
    OUTLINED_FUNCTION_2_2();
    v55 = swift_slowAlloc();
    v69[0] = v55;
    *v54 = 136315138;
    v56 = sub_1DA421AF4();
    v58 = v57;

    v59 = sub_1DA3A5FE8(v56, v58, v69);

    *(v54 + 4) = v59;
    _os_log_impl(&dword_1DA39E000, v52, v53, "Expanding and adding user segment features %s", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v55);
    OUTLINED_FUNCTION_18_0();
    MEMORY[0x1DA74E430](v60);
    OUTLINED_FUNCTION_18_0();
    MEMORY[0x1DA74E430](v61);
  }

  else
  {
  }

  return v68;
}

uint64_t SiriSuggestionsIntelligence.SourcedFeatureMLFeatureProvider.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t SiriSuggestionsIntelligence.SourcedFeatureMLFeatureProvider.__deallocating_deinit()
{
  SiriSuggestionsIntelligence.SourcedFeatureMLFeatureProvider.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1DA3D5A20(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, uint64_t *))
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    OUTLINED_FUNCTION_17_3();
    v5 = sub_1DA422214();
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC8];
  }

  v8 = v5;

  a4(v6, 1, &v8);

  return v8;
}

uint64_t sub_1DA3D5B0C(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t, uint64_t, uint64_t *))
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    OUTLINED_FUNCTION_17_3();
    v6 = sub_1DA422214();
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC8];
  }

  v8 = v6;
  a4(a1, 1, &v8);
  return v8;
}

id sub_1DA3D5B9C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DA421B64();

  v3 = [swift_getObjCClassFromMetadata() featureValueWithString_];

  return v3;
}

id sub_1DA3D5C00(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  sub_1DA3A6990(0, &qword_1ECBAF2A0, 0x1E696AD98);
  v1 = sub_1DA421AB4();

  v6[0] = 0;
  v2 = [swift_getObjCClassFromMetadata() featureValueWithDictionary:v1 error:v6];

  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_1DA420FB4();

    swift_willThrow();
  }

  return v2;
}

uint64_t MLFeatureProvider.getLikelihoodPredictions()(uint64_t a1)
{
  v2 = [v1 featureNames];
  v3 = sub_1DA421EB4();

  v4 = v3 + 56;
  OUTLINED_FUNCTION_30_1();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;

  v10 = 0;
  v11 = 0;
  v12 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    goto LABEL_6;
  }

  while (1)
  {
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v13 >= v9)
    {

      v28 = v12;

      sub_1DA3D8F78(&v28);

      return v28;
    }

    v7 = *(v4 + 8 * v13);
    ++v10;
    if (v7)
    {
      v10 = v13;
      do
      {
LABEL_6:
        v14 = (*(v3 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v7)))));
        v15 = v14[1];
        v31[0] = *v14;
        v31[1] = v15;

        sub_1DA3D5F10(v31, v26, &v28);

        v16 = v29;
        if (v29)
        {
          v27 = v11;
          v17 = v3;
          v18 = v28;
          v19 = v30;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_16_1();
            sub_1DA3A59E8();
            v12 = v23;
          }

          v21 = *(v12 + 16);
          v20 = *(v12 + 24);
          if (v21 >= v20 >> 1)
          {
            OUTLINED_FUNCTION_21_3(v20);
            sub_1DA3A59E8();
            v12 = v24;
          }

          *(v12 + 16) = v21 + 1;
          v22 = (v12 + 24 * v21);
          v22[4] = v18;
          v22[5] = v16;
          v22[6] = v19;
          v3 = v17;
          v11 = v27;
        }

        v7 &= v7 - 1;
      }

      while (v7);
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

void sub_1DA3D5F10(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = sub_1DA421B64();
  v8 = [a2 featureValueForName_];

  if (v8)
  {
    if ([v8 type] == 2)
    {

      [v8 doubleValue];
      v10 = v9;

      *a3 = v5;
      a3[1] = v6;
      a3[2] = v10;
      return;
    }
  }

  if (qword_1ECBAE838 != -1)
  {
    swift_once();
  }

  v11 = sub_1DA421A94();
  __swift_project_value_buffer(v11, static Logger.inferenceCategory);

  v12 = sub_1DA421A74();
  v13 = sub_1DA421F74();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_1DA3A5FE8(v5, v6, &v16);
    _os_log_impl(&dword_1DA39E000, v12, v13, "Unknown feature value for: %s)", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x1DA74E430](v15, -1, -1);
    MEMORY[0x1DA74E430](v14, -1, -1);
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
}

double MLFeatureProvider.getRequiredClasses()()
{
  type metadata accessor for SiriSuggestionsIntelligence.SourcedFeatureMLFeatureProvider();
  if (swift_dynamicCastClass())
  {
  }

  return result;
}

char *sub_1DA3D6124(unint64_t a1, uint64_t a2)
{
  v4 = sub_1DA3A4F50(a1);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
LABEL_11:
    v13 = sub_1DA3D44A0(v5, a2);

    return v13;
  }

  v6 = v4;
  v16 = MEMORY[0x1E69E7CC0];
  result = sub_1DA3B0340(0, v4 & ~(v4 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v14 = a2;
    v8 = 0;
    v5 = v16;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1DA74D830](v8, a1);
        sub_1DA3B1C24(v9 + OBJC_IVAR____TtCO27SiriSuggestionsIntelligence27SiriSuggestionsIntelligence14SourcedFeature_feature, __src);
        swift_unknownObjectRelease();
      }

      else
      {
        sub_1DA3B1C24(*(a1 + 8 * v8 + 32) + OBJC_IVAR____TtCO27SiriSuggestionsIntelligence27SiriSuggestionsIntelligence14SourcedFeature_feature, __src);
      }

      v16 = v5;
      v11 = *(v5 + 16);
      v10 = *(v5 + 24);
      if (v11 >= v10 >> 1)
      {
        v12 = OUTLINED_FUNCTION_21_3(v10);
        sub_1DA3B0340(v12, v11 + 1, 1);
        v5 = v16;
      }

      ++v8;
      *(v5 + 16) = v11 + 1;
      memcpy((v5 + 72 * v11 + 32), __src, 0x48uLL);
    }

    while (v6 != v8);
    a2 = v14;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

void sub_1DA3D6290(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEE70, &unk_1DA4246E0);
  v45 = v4;
  v6 = sub_1DA422204();
  if (!v5[2])
  {
LABEL_37:

LABEL_38:
    *v3 = v6;
    return;
  }

  v44 = v5;
  v7 = 0;
  v8 = v5;
  OUTLINED_FUNCTION_0_12();
  v11 = v10 & v9;
  v13 = (v12 + 63) >> 6;
  v14 = v6 + 64;
  if ((v10 & v9) == 0)
  {
LABEL_4:
    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_40;
      }

      if (v7 >= v13)
      {
        break;
      }

      ++v17;
      if (v8[v7])
      {
        OUTLINED_FUNCTION_12_4();
        v11 = v19 & v18;
        goto LABEL_9;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_38;
    }

    OUTLINED_FUNCTION_10_6();
    v3 = v2;
    if (v42 != v43)
    {
      OUTLINED_FUNCTION_9_8(v41);
    }

    else
    {
      OUTLINED_FUNCTION_8_9(v41);
    }

    v5[2] = 0;
    goto LABEL_37;
  }

  while (1)
  {
    OUTLINED_FUNCTION_28_0();
LABEL_9:
    v20 = v15 | (v7 << 6);
    v21 = v5[7];
    v22 = (v5[6] + v20 * v16);
    v23 = *(v22 + 1);
    v49 = *v22;
    v24 = v22[2];
    v25 = v22[3];
    v50 = *(v22 + 32);
    v26 = *(v22 + 6);
    v27 = (v21 + 32 * v20);
    v28 = v27[1];
    v47 = *v27;
    v48 = *(v22 + 5);
    v46 = v27[2];
    v29 = v27[3];
    if ((v45 & 1) == 0)
    {
    }

    sub_1DA422434();
    sub_1DA421BF4();
    if (v24 == 0.0)
    {
      v30 = 0.0;
    }

    else
    {
      v30 = v24;
    }

    MEMORY[0x1DA74DBD0](*&v30);
    if (v25 == 0.0)
    {
      v31 = 0.0;
    }

    else
    {
      v31 = v25;
    }

    MEMORY[0x1DA74DBD0](*&v31);
    MEMORY[0x1DA74DBB0](v50);
    sub_1DA422454();
    if (v26)
    {
      sub_1DA421BF4();
    }

    sub_1DA422474();
    OUTLINED_FUNCTION_2_11();
    OUTLINED_FUNCTION_19_3();
    if (v32)
    {
      break;
    }

    OUTLINED_FUNCTION_7_6();
LABEL_29:
    OUTLINED_FUNCTION_9_5();
    *(v14 + v36) |= v37;
    v39 = *(v6 + 48) + 56 * v38;
    *v39 = v49;
    *(v39 + 8) = v23;
    *(v39 + 16) = v24;
    *(v39 + 24) = v25;
    *(v39 + 32) = v50;
    *(v39 + 40) = v48;
    *(v39 + 48) = v26;
    v40 = (*(v6 + 56) + 32 * v38);
    *v40 = v47;
    v40[1] = v28;
    v40[2] = v46;
    v40[3] = v29;
    OUTLINED_FUNCTION_11_5();
    v5 = v44;
    if (!v11)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_6_7();
  while (1)
  {
    OUTLINED_FUNCTION_20_2();
    if (v32)
    {
      if (v34)
      {
        break;
      }
    }

    if (v33 == v35)
    {
      v33 = 0;
    }

    if (*(v14 + 8 * v33) != -1)
    {
      OUTLINED_FUNCTION_5_7();
      goto LABEL_29;
    }
  }

LABEL_40:
  __break(1u);
}

void sub_1DA3D6564(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEE98, &qword_1DA424710);
  v6 = sub_1DA422204();
  if (!v5[2])
  {
LABEL_37:

LABEL_38:
    *v3 = v6;
    return;
  }

  v39 = v5;
  v7 = 0;
  v8 = v5;
  OUTLINED_FUNCTION_0_12();
  v11 = v10 & v9;
  v13 = (v12 + 63) >> 6;
  v14 = 40;
  if ((v10 & v9) == 0)
  {
LABEL_4:
    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_40;
      }

      if (v7 >= v13)
      {
        break;
      }

      ++v16;
      if (v8[v7])
      {
        OUTLINED_FUNCTION_12_4();
        v11 = v18 & v17;
        goto LABEL_9;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_38;
    }

    OUTLINED_FUNCTION_10_6();
    v3 = v2;
    if (v37 != v38)
    {
      OUTLINED_FUNCTION_9_8(v36);
    }

    else
    {
      OUTLINED_FUNCTION_8_9(v36);
    }

    v5[2] = 0;
    goto LABEL_37;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_9:
    v19 = v15 | (v7 << 6);
    v20 = v5[7];
    v21 = v5[6] + v19 * v14;
    v22 = *v21;
    v23 = *(v21 + 8);
    v24 = *(v21 + 16);
    v25 = *(v21 + 32);
    v40 = *(v21 + 24);
    v26 = *(v20 + 8 * v19);
    if ((v4 & 1) == 0)
    {
    }

    sub_1DA422434();
    if (v22 == 0.0)
    {
      v27 = 0.0;
    }

    else
    {
      v27 = v22;
    }

    MEMORY[0x1DA74DBD0](*&v27);
    if (v23 == 0.0)
    {
      v28 = 0.0;
    }

    else
    {
      v28 = v23;
    }

    MEMORY[0x1DA74DBD0](*&v28);
    MEMORY[0x1DA74DBB0](v24);
    sub_1DA422454();
    if (v25)
    {
      sub_1DA421BF4();
    }

    sub_1DA422474();
    OUTLINED_FUNCTION_2_11();
    OUTLINED_FUNCTION_19_3();
    if (v29)
    {
      break;
    }

    OUTLINED_FUNCTION_7_6();
LABEL_29:
    OUTLINED_FUNCTION_9_5();
    OUTLINED_FUNCTION_26_1();
    v35 = v34 + 40 * v33;
    *v35 = v22;
    *(v35 + 8) = v23;
    *(v35 + 16) = v24;
    *(v35 + 24) = v40;
    *(v35 + 32) = v25;
    *(*(v6 + 56) + 8 * v33) = v26;
    OUTLINED_FUNCTION_11_5();
    v5 = v39;
    if (!v11)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_6_7();
  while (1)
  {
    OUTLINED_FUNCTION_20_2();
    if (v29)
    {
      if (v31)
      {
        break;
      }
    }

    if (v30 == v32)
    {
      v30 = 0;
    }

    if (*(v6 + 64 + 8 * v30) != -1)
    {
      OUTLINED_FUNCTION_5_7();
      goto LABEL_29;
    }
  }

LABEL_40:
  __break(1u);
}

void sub_1DA3D67EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF300, &unk_1DA4268D0);
  v6 = sub_1DA422204();
  if (!v5[2])
  {
LABEL_37:

LABEL_38:
    *v3 = v6;
    return;
  }

  v53 = v2;
  v54 = v5;
  v7 = 0;
  v8 = v5;
  OUTLINED_FUNCTION_0_12();
  v11 = v10 & v9;
  v13 = (v12 + 63) >> 6;
  if ((v10 & v9) == 0)
  {
LABEL_4:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_40;
      }

      if (v7 >= v13)
      {
        break;
      }

      ++v15;
      if (v8[v7])
      {
        OUTLINED_FUNCTION_12_4();
        v11 = v17 & v16;
        goto LABEL_9;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v53;
      goto LABEL_38;
    }

    OUTLINED_FUNCTION_10_6();
    v3 = v53;
    if (v51 != v52)
    {
      OUTLINED_FUNCTION_9_8(v50);
    }

    else
    {
      OUTLINED_FUNCTION_8_9(v50);
    }

    v5[2] = 0;
    goto LABEL_37;
  }

  while (1)
  {
    OUTLINED_FUNCTION_28_0();
LABEL_9:
    v18 = v14 | (v7 << 6);
    v19 = v5[7];
    v20 = v5[6] + 32 * v18;
    v21 = *v20;
    v55 = *(v20 + 8);
    v22 = *(v20 + 16);
    v23 = *(v20 + 24);
    v24 = *(v19 + 8 * v18);
    if ((v4 & 1) == 0)
    {
      sub_1DA3D9AF4(v21, v55, *(v20 + 16), *(v20 + 24));
      v25 = v24;
    }

    sub_1DA422434();
    switch(v23)
    {
      case 1:
        v26 = 1;
        goto LABEL_18;
      case 2:
        MEMORY[0x1DA74DBB0](2);
        v28 = SiriSuggestionsIntelligence.FeatureIdType.rawValue.getter(v21);
        OUTLINED_FUNCTION_22_2(v28, v29, v30, v31, v32, v33, v34);

        break;
      case 3:
        v27 = 3;
        goto LABEL_16;
      case 4:
        v27 = 4;
LABEL_16:
        MEMORY[0x1DA74DBB0](v27);
        sub_1DA421BF4();
        MEMORY[0x1DA74DBB0](v22);
        break;
      default:
        v26 = 0;
LABEL_18:
        MEMORY[0x1DA74DBB0](v26);
        v35 = SiriSuggestionsIntelligence.FeatureIdType.rawValue.getter(v21);
        OUTLINED_FUNCTION_22_2(v35, v36, v37, v38, v39, v40, v41);

        sub_1DA421BF4();
        break;
    }

    sub_1DA422474();
    OUTLINED_FUNCTION_2_11();
    OUTLINED_FUNCTION_19_3();
    if (v42)
    {
      break;
    }

    OUTLINED_FUNCTION_7_6();
LABEL_29:
    OUTLINED_FUNCTION_9_5();
    OUTLINED_FUNCTION_26_1();
    v48 = v47 + 32 * v46;
    *v48 = v21;
    *(v48 + 8) = v55;
    *(v48 + 16) = v22;
    *(v48 + 24) = v23;
    *(*(v6 + 56) + 8 * v46) = v49;
    OUTLINED_FUNCTION_11_5();
    v5 = v54;
    if (!v11)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_6_7();
  while (1)
  {
    OUTLINED_FUNCTION_20_2();
    if (v42)
    {
      if (v44)
      {
        break;
      }
    }

    if (v43 == v45)
    {
      v43 = 0;
    }

    if (*(v6 + 64 + 8 * v43) != -1)
    {
      OUTLINED_FUNCTION_5_7();
      goto LABEL_29;
    }
  }

LABEL_40:
  __break(1u);
}

uint64_t sub_1DA3D6ABC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF2A8, &qword_1DA426850);
  v34 = v4;
  result = sub_1DA422204();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

  v33 = v5;
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
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      sub_1DA3D78F8(0, (v32 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = *(*(v5 + 56) + v18);
    if ((v34 & 1) == 0)
    {
    }

    sub_1DA422434();
    sub_1DA421BF4();
    result = sub_1DA422474();
    v23 = -1 << *(v7 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v7 + 48) + 16 * v26);
    *v31 = v20;
    v31[1] = v21;
    *(*(v7 + 56) + v26) = v22;
    ++*(v7 + 16);
    v5 = v33;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v14 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

void sub_1DA3D6D6C()
{
  OUTLINED_FUNCTION_15_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  v8 = OUTLINED_FUNCTION_18_3();
  if (!v1[2])
  {
LABEL_29:

    *v0 = v8;
    return;
  }

  v27 = v1;
  v9 = 0;
  v10 = v1;
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_31_1();
  if (!v2)
  {
LABEL_4:
    v11 = v9;
    while (1)
    {
      v9 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v9 >= v0)
      {
        break;
      }

      ++v11;
      if (v10[v9])
      {
        OUTLINED_FUNCTION_12_4();
        v2 = v13 & v12;
        goto LABEL_9;
      }
    }

    if (v28)
    {
      OUTLINED_FUNCTION_10_6();
      if (v25 != v26)
      {
        OUTLINED_FUNCTION_9_8(v24);
      }

      else
      {
        OUTLINED_FUNCTION_8_9(v24);
      }

      v1[2] = 0;
    }

    goto LABEL_29;
  }

  while (1)
  {
    OUTLINED_FUNCTION_29_0();
LABEL_9:
    OUTLINED_FUNCTION_14_2();
    if ((v14 & 1) == 0)
    {

      v15 = v1;
    }

    sub_1DA422434();
    sub_1DA421BF4();
    sub_1DA422474();
    OUTLINED_FUNCTION_2_11();
    OUTLINED_FUNCTION_19_3();
    if (v16)
    {
      break;
    }

    OUTLINED_FUNCTION_7_6();
LABEL_21:
    OUTLINED_FUNCTION_9_5();
    *(v5 + v20) |= v21;
    v23 = (*(v8 + 48) + 16 * v22);
    *v23 = v3;
    v23[1] = v4;
    *(*(v8 + 56) + 8 * v22) = v1;
    OUTLINED_FUNCTION_11_5();
    v1 = v27;
    if (!v2)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_6_7();
  while (1)
  {
    OUTLINED_FUNCTION_20_2();
    if (v16)
    {
      if (v18)
      {
        break;
      }
    }

    if (v17 == v19)
    {
      v17 = 0;
    }

    if (*(v5 + 8 * v17) != -1)
    {
      OUTLINED_FUNCTION_5_7();
      goto LABEL_21;
    }
  }

LABEL_31:
  __break(1u);
}

uint64_t sub_1DA3D6F18(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF6A0, &unk_1DA426880);
  v33 = v4;
  result = sub_1DA422204();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_32:

LABEL_33:
    *v3 = v7;
    return result;
  }

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
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
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
      sub_1DA3D78F8(0, (v32 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = (*(v5 + 56) + 40 * v18);
    if (v33)
    {
      sub_1DA3A1FF8(v22, v34);
    }

    else
    {
      sub_1DA3A7ED4(v22, v34);
    }

    sub_1DA422434();
    sub_1DA421BF4();
    result = sub_1DA422474();
    v23 = -1 << *(v7 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v14 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v7 + 48) + 16 * v26);
    *v31 = v20;
    v31[1] = v21;
    result = sub_1DA3A1FF8(v34, *(v7 + 56) + 40 * v26);
    ++*(v7 + 16);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v14 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

void sub_1DA3D71D8()
{
  OUTLINED_FUNCTION_15_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF2D8, &qword_1DA426898);
  v6 = OUTLINED_FUNCTION_18_3();
  if (!*(v1 + 16))
  {
LABEL_29:

    *v0 = v6;
    return;
  }

  v24 = v1;
  v7 = 0;
  v8 = v1;
  OUTLINED_FUNCTION_0_12();
  OUTLINED_FUNCTION_31_1();
  if (!v2)
  {
LABEL_4:
    v9 = v7;
    while (1)
    {
      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v0)
      {
        break;
      }

      ++v9;
      if (*(v8 + 8 * v7))
      {
        OUTLINED_FUNCTION_12_4();
        v2 = v11 & v10;
        goto LABEL_9;
      }
    }

    if (v25)
    {
      OUTLINED_FUNCTION_10_6();
      if (v22 != v23)
      {
        OUTLINED_FUNCTION_9_8(v21);
      }

      else
      {
        OUTLINED_FUNCTION_8_9(v21);
      }

      *(v1 + 16) = 0;
    }

    goto LABEL_29;
  }

  while (1)
  {
    OUTLINED_FUNCTION_29_0();
LABEL_9:
    OUTLINED_FUNCTION_14_2();
    if ((v12 & 1) == 0)
    {
    }

    sub_1DA422434();
    sub_1DA421BF4();
    sub_1DA422474();
    OUTLINED_FUNCTION_2_11();
    OUTLINED_FUNCTION_19_3();
    if (v13)
    {
      break;
    }

    OUTLINED_FUNCTION_7_6();
LABEL_21:
    OUTLINED_FUNCTION_9_5();
    *(v5 + v17) |= v18;
    v20 = (*(v6 + 48) + 16 * v19);
    *v20 = v3;
    v20[1] = v4;
    *(*(v6 + 56) + 8 * v19) = v1;
    OUTLINED_FUNCTION_11_5();
    v1 = v24;
    if (!v2)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_6_7();
  while (1)
  {
    OUTLINED_FUNCTION_20_2();
    if (v13)
    {
      if (v15)
      {
        break;
      }
    }

    if (v14 == v16)
    {
      v14 = 0;
    }

    if (*(v5 + 8 * v14) != -1)
    {
      OUTLINED_FUNCTION_5_7();
      goto LABEL_21;
    }
  }

LABEL_31:
  __break(1u);
}

uint64_t sub_1DA3D7388(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF2F0, &qword_1DA4268B0);
  v35 = v4;
  result = sub_1DA422204();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

  v34 = v5;
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
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      sub_1DA3D78F8(0, (v33 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = *(v5 + 56);
    v20 = (*(v5 + 48) + 32 * v18);
    v21 = v20[1];
    v37 = *v20;
    v22 = v20[3];
    v36 = v20[2];
    v23 = *(v19 + 8 * v18);
    if ((v35 & 1) == 0)
    {
    }

    sub_1DA422434();
    sub_1DA421BF4();
    sub_1DA421BF4();
    result = sub_1DA422474();
    v24 = -1 << *(v7 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
    {
      break;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = (*(v7 + 48) + 32 * v27);
    *v32 = v37;
    v32[1] = v21;
    v32[2] = v36;
    v32[3] = v22;
    *(*(v7 + 56) + 8 * v27) = v23;
    ++*(v7 + 16);
    v5 = v34;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v28 = 0;
  v29 = (63 - v24) >> 6;
  while (++v26 != v29 || (v28 & 1) == 0)
  {
    v30 = v26 == v29;
    if (v26 == v29)
    {
      v26 = 0;
    }

    v28 |= v30;
    v31 = *(v14 + 8 * v26);
    if (v31 != -1)
    {
      v27 = __clz(__rbit64(~v31)) + (v26 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_1DA3D7654(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAF2E0, &qword_1DA4268A0);
  v34 = v4;
  result = sub_1DA422204();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

  v33 = v5;
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
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      sub_1DA3D78F8(0, (v32 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = *(*(v5 + 56) + 8 * v18);
    if ((v34 & 1) == 0)
    {
    }

    sub_1DA422434();
    sub_1DA421BF4();
    result = sub_1DA422474();
    v23 = -1 << *(v7 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v7 + 48) + 16 * v26);
    *v31 = v20;
    v31[1] = v21;
    *(*(v7 + 56) + 8 * v26) = v22;
    ++*(v7 + 16);
    v5 = v33;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v14 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_1DA3D78F8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1DA423EA0;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void sub_1DA3D795C(uint64_t a1, char a2, void *a3)
{
  v3 = a1;
  v4 = 0;
  v32 = *(a1 + 16);
  v5 = 32;
  while (1)
  {
    if (v32 == v4)
    {
LABEL_17:

      return;
    }

    if (v4 >= *(v3 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1DA4223E4();
      __break(1u);
      goto LABEL_22;
    }

    memcpy(__dst, (v3 + v5), sizeof(__dst));
    v6 = *__dst;
    v7 = *&__dst[16];
    v8 = __dst[32];
    v9 = *&__dst[80];
    v35 = *&__dst[72];
    v36 = *&__dst[64];
    v11 = *&__dst[48];
    v10 = *&__dst[56];
    v12 = *&__dst[40];
    sub_1DA3D9A90(__dst, v39, &qword_1ECBAEA78, &qword_1DA423360);
    if (!*(&v6 + 1))
    {
      goto LABEL_17;
    }

    v33 = v5;
    v34 = v4;
    *__dst = v6;
    *&__dst[16] = v7;
    v13 = v8 & 1;
    __dst[32] = v8 & 1;
    *&__dst[40] = v12;
    *&__dst[48] = v11;
    v14 = *a3;
    v44 = v11;
    v43[0] = v6;
    v43[1] = v7;
    v43[2] = *&__dst[32];
    v16 = sub_1DA3B7618(v43);
    v17 = v14[2];
    v18 = (v15 & 1) == 0;
    v19 = v17 + v18;
    if (__OFADD__(v17, v18))
    {
      goto LABEL_19;
    }

    v20 = v15;
    if (v14[3] < v19)
    {
      break;
    }

    if (a2)
    {
      if (v15)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAEE78, &qword_1DA4246F0);
      sub_1DA4221B4();
      if (v20)
      {
        goto LABEL_15;
      }
    }

LABEL_12:
    v23 = *a3;
    *(*a3 + 8 * (v16 >> 6) + 64) |= 1 << v16;
    v24 = v23[6] + 56 * v16;
    *v24 = v6;
    *(v24 + 16) = v7;
    *(v24 + 32) = v13;
    *(v24 + 40) = v12;
    *(v24 + 48) = v11;
    v25 = (v23[7] + 32 * v16);
    *v25 = v10;
    v25[1] = v36;
    v25[2] = v35;
    v25[3] = v9;
    v26 = v23[2];
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_20;
    }

    v23[2] = v28;
    v5 = v33 + 88;
    v4 = v34 + 1;
    a2 = 1;
    v3 = a1;
  }

  sub_1DA3D6290(v19, a2 & 1);
  v41[0] = *__dst;
  v41[1] = *&__dst[16];
  v41[2] = *&__dst[32];
  v42 = *&__dst[48];
  v21 = sub_1DA3B7618(v41);
  if ((v20 & 1) != (v22 & 1))
  {
    goto LABEL_21;
  }

  v16 = v21;
  if ((v20 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_15:
  v29 = swift_allocError();
  swift_willThrow();

  v30 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECBAECC0, &unk_1DA423980);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  v39[0] = 0;
  v39[1] = 0xE000000000000000;
  sub_1DA422094();
  MEMORY[0x1DA74D370](0xD00000000000001BLL, 0x80000001DA42DD10);
  sub_1DA422194();
  MEMORY[0x1DA74D370](39, 0xE100000000000000);
  sub_1DA4221D4();
  __break(1u);
}