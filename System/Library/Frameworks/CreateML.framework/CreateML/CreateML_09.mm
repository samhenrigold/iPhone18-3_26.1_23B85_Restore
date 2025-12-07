void *sub_237A97FC0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA48, &qword_237C0B7E0);
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14_0();
  v42 = v6;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v7);
  v37 = v35 - v8;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v9);
  v11 = v35 - v10;
  *&v13 = MEMORY[0x28223BE20](v12).n128_u64[0];
  v41 = v35 - v14;
  v15 = [a1 results];
  sub_237C0893C();

  sub_237BC1AE4();
  v17 = v16;
  v18 = [a1 results];
  v19 = sub_237C0893C();

  v20 = *(v19 + 16);
  if (!v20)
  {
LABEL_12:

    return v17;
  }

  v35[1] = v19;
  v21 = v19 + 32;
  v39 = v4;
  v40 = (v4 + 8);
  v43 = (v4 + 32);
  v38 = (v4 + 16);
  v36 = xmmword_237C0B660;
  while (1)
  {
    sub_2379FED88(v21, v45);
    sub_2379E8EE0(0, &qword_27DE9C200, 0x277CDC938);
    swift_dynamicCast();
    v22 = v44;
    v23 = [v44 featureVector];
    sub_237C082EC();
    v24 = *(sub_237C082AC() + 16);

    if (v24 != 2)
    {
LABEL_8:

      goto LABEL_9;
    }

    result = sub_237C082AC();
    if (!result[2])
    {
      break;
    }

    v26 = result[4];

    if (v26 != 1)
    {
      goto LABEL_8;
    }

    sub_2379D9224(&qword_27DE9ABC0, &qword_27DE9AA48, &qword_237C0B7E0, MEMORY[0x277CBFD28]);
    v45[0] = sub_237C0834C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
    v27 = swift_allocObject();
    *(v27 + 16) = v36;
    result = sub_237C082AC();
    if (result[2] < 2uLL)
    {
      goto LABEL_14;
    }

    v28 = result[5];

    *(v27 + 32) = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AEA8, &unk_237C0C200);
    sub_2379D9224(&qword_27DE9AEB0, &qword_27DE9AEA8, &unk_237C0C200, MEMORY[0x277D83970]);
    v29 = v37;
    sub_237C082BC();

    (*v40)(v11, v2);
    (*v43)(v11, v29, v2);
LABEL_9:
    v30 = *v43;
    v31 = v41;
    (*v43)(v41, v11, v2);
    (*v38)(v42, v31, v2);
    v32 = *(v17 + 16);
    if (v32 >= *(v17 + 24) >> 1)
    {
      sub_237BC1AE4();
      v17 = v34;
    }

    v33 = v39;
    (*(v39 + 8))(v41, v2);
    *(v17 + 16) = v32 + 1;
    v30((v17 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v32), v42, v2);
    v21 += 32;
    if (!--v20)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_237A98480(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA48, &qword_237C0B7E0);
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(v7 - v4, a1, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B240, &qword_237C0E220);
  sub_237C06C4C();
  v7[0] = v7[2];
  v7[1] = v7[3];
  return sub_237C06C6C();
}

void sub_237A985A4(uint64_t a1, os_unfair_lock_s *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v32 = a3;
  v33 = a4;
  v34[2] = *MEMORY[0x277D85DE8];
  v13 = sub_237C05ADC();
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_237A254DC();
  if ((a6 & 0xC000000000000001) != 0)
  {
    v16 = MEMORY[0x2383DCAF0](a7, a6);
  }

  else
  {
    v16 = *(a6 + 8 * a7 + 32);
  }

  v17 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B240, &qword_237C0E220);
  sub_237C06C7C();
  v18 = objc_allocWithZone(MEMORY[0x277CDC8D8]);
  v19 = sub_237A98DD4(v15);
  v20 = [objc_allocWithZone(MEMORY[0x277CDC950]) init];
  v34[0] = 0;
  if ([v19 addRequest:v17 withObserver:v20 error:v34])
  {
    v21 = v34[0];
    [v19 analyze];
    v22 = sub_237A97FC0(v20);
    MEMORY[0x28223BE20](v22);
    *(&v31 - 2) = a8;
    sub_2379E2980(sub_237A9954C, (&v31 - 4), v22);
    v24 = v23;

    os_unfair_lock_lock(a2 + 4);
    sub_237A96A1C(v24);
    os_unfair_lock_unlock(a2 + 4);
    v25 = v33;
    add_explicit = atomic_fetch_add_explicit((v32 + 16), 1uLL, memory_order_relaxed);
    v27 = [v25 completedUnitCount];
    if (__OFADD__(v27, 1))
    {
      __break(1u);
    }

    else
    {
      v28 = add_explicit + 1;
      [v25 setCompletedUnitCount_];
      v29 = *(a1 + 16);
      if (!__OFADD__(v28, v29))
      {
        sub_237BAC25C(v28 + v29);

        return;
      }
    }

    __break(1u);
  }

  v30 = v34[0];
  sub_237C0593C();

  swift_willThrow();
  swift_unexpectedError();
  __break(1u);
}

uint64_t sub_237A98884(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void *sub_237A988C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v62 = a1;
  v72 = *MEMORY[0x277D85DE8];
  v5 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v61 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_14_0();
  v67 = v8;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v9);
  v59 = &v54 - v10;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v11);
  v13 = &v54 - v12;
  v14 = *a2;
  v15 = *(a2 + 40);
  v16 = &off_278A42000;
  if (v15 == 255)
  {
    v17 = objc_allocWithZone(MEMORY[0x277CDC908]);
    goto LABEL_5;
  }

  v17 = objc_allocWithZone(MEMORY[0x277CDC908]);
  if ((v15 & 1) == 0)
  {
LABEL_5:
    v18 = [v17 init];
    goto LABEL_6;
  }

  v18 = [v17 initWithFeaturePrintType_];
  v68 = sub_237C08CBC();
  v69 = v19;
  v70 = v20;
  v71 = v21;
  [v18 setWindowDuration_];
LABEL_6:
  *&v22 = v14;
  [v18 setOverlapFactor_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C208, &qword_237C0FC30);
  sub_237A9956C();
  v23 = sub_237C085AC();
  v24 = 0;
  v60 = *(v62 + 16);
  v66 = v61 + 16;
  v57 = v5;
  v58 = (v61 + 8);
  v55 = v18;
  v56 = v13;
  while (1)
  {
    if (v60 == v24)
    {
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_8_22();
    v65 = v26;
    v63 = v27;
    v29 = *(v28 + 16);
    v29(v13, v62 + v25 + v27 * v26, v5);
    v30 = v59;
    v29(v59, v13, v5);
    v31 = objc_allocWithZone(MEMORY[0x277CDC8D8]);
    v32 = sub_237A98DD4(v30);
    if (v3)
    {
      v47 = OUTLINED_FUNCTION_13_18();
      v48(v47);

LABEL_20:

      return v23;
    }

    v33 = v32;
    v34 = [objc_allocWithZone(MEMORY[0x277CDC950]) v16[227]];
    v68 = 0;
    if (([v33 addRequest:v18 withObserver:v34 error:&v68] & 1) == 0)
    {
      v49 = v33;
      v50 = v68;

      sub_237C0593C();

      swift_willThrow();
      v51 = OUTLINED_FUNCTION_13_18();
      v52(v51);
      return v23;
    }

    v64 = 0;
    v35 = v68;
    [v33 analyze];
    v29(v67, v13, v5);
    v36 = sub_237A97FC0(v34);
    swift_isUniquelyReferenced_nonNull_native();
    v68 = v23;
    v37 = sub_237ACB424();
    if (__OFADD__(v23[2], (v38 & 1) == 0))
    {
      __break(1u);
LABEL_24:
      __break(1u);
    }

    v39 = v37;
    v40 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C218, &unk_237C0FC38);
    if (sub_237C090AC())
    {
      break;
    }

LABEL_14:
    v23 = v68;
    if (v40)
    {
      *(*(v68 + 7) + 8 * v39) = v36;

      v5 = v57;
    }

    else
    {
      *(v68 + (v39 >> 6) + 8) |= 1 << v39;
      v5 = v57;
      v29((v23[6] + v39 * v63), v67, v57);
      *(v23[7] + 8 * v39) = v36;
      v43 = v23[2];
      v44 = __OFADD__(v43, 1);
      v45 = v43 + 1;
      if (v44)
      {
        goto LABEL_24;
      }

      v23[2] = v45;
    }

    v46 = *v58;
    (*v58)(v67, v5);
    v13 = v56;
    v46(v56, v5);
    v3 = v64;
    v24 = v65 + 1;
    v16 = &off_278A42000;
    v18 = v55;
  }

  v41 = sub_237ACB424();
  if ((v40 & 1) == (v42 & 1))
  {
    v39 = v41;
    goto LABEL_14;
  }

  result = sub_237C0932C();
  __break(1u);
  return result;
}

id sub_237A98DD4(uint64_t a1)
{
  v2 = v1;
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = sub_237C059EC();
  v13[0] = 0;
  v5 = [v2 initWithURL:v4 error:v13];

  v6 = v13[0];
  if (v5)
  {
    v7 = sub_237C05ADC();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v13[0];
    sub_237C0593C();

    swift_willThrow();
    v11 = sub_237C05ADC();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  return v5;
}

uint64_t sub_237A98F38(uint64_t a1, char a2)
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

  sub_237C090EC();
LABEL_9:
  result = sub_237C08F6C();
  *v2 = result;
  return result;
}

uint64_t sub_237A98FD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
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

void sub_237A99050(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_237C086BC();

  [a3 setName_];
}

uint64_t sub_237A990B4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C1E8, &qword_237C0FC10);
  OUTLINED_FUNCTION_12_0();
  (*(v1 + 8))(v0 + 16);

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_237A9911C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C1F0, &qword_237C0FC18);
  OUTLINED_FUNCTION_12_0();
  (*(v1 + 8))(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C1F8, &unk_237C0FC20);
  OUTLINED_FUNCTION_12_0();
  (*(v2 + 8))(v0 + 24);

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_237A991BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _TablePrinter(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237A99220()
{
  v1 = (type metadata accessor for _TablePrinter(0) - 8);
  v2 = (*(*v1 + 80) + 88) & ~*(*v1 + 80);
  v3 = (*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B240, &qword_237C0E220);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  v7 = (((v3 + 15) & 0xFFFFFFFFFFFFFFF8) + *(v5 + 80) + 8) & ~*(v5 + 80);

  v8 = v0 + v2;
  v9 = v1[7];
  sub_237C05BFC();
  OUTLINED_FUNCTION_12_0();
  (*(v10 + 8))(v8 + v9);

  (*(v6 + 8))(v0 + v7, v4);

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_237A993D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _TablePrinter(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_237A99434()
{
  v1 = *(type metadata accessor for _TablePrinter(0) - 8);
  v2 = (*(v1 + 80) + 88) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B240, &qword_237C0E220) - 8);
  v6 = v0[8];
  v7 = v0[9];
  v8 = v0[10];
  v9 = *(v0 + v3);
  v10 = *(v0 + v4);
  v11 = v0 + ((v4 + *(v5 + 80) + 8) & ~*(v5 + 80));

  sub_237A985A4((v0 + 2), v6, v7, v8, v0 + v2, v9, v10, v11);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_237A9956C()
{
  result = qword_27DE9C210;
  if (!qword_27DE9C210)
  {
    sub_237C05ADC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9C210);
  }

  return result;
}

uint64_t sub_237A995C4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_237A99618(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_237C090EC();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_237A254D8(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        sub_2379E8EE0(0, &qword_27DE9ACF8, 0x277CBFF48);
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_2379D9224(&qword_27DE9C228, &qword_27DE9C220, &qword_237C0FC48, MEMORY[0x277D83988]);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C220, &qword_237C0FC48);
          v9 = sub_237A24B90(v12, i, a3);
          v11 = *v10;
          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_237A997B0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 48);
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

uint64_t sub_237A997F0(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_237A99860(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 41))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 40);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = (v3 ^ 0xFF) - 1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_237A998A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = ~a2;
    }
  }

  return result;
}

id OUTLINED_FUNCTION_0_37@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, const char *a4@<X8>)
{
  *(v5 - 168) = a1;
  *(v5 - 160) = a2;
  *(v5 - 152) = a3;

  return [v4 a4];
}

uint64_t OUTLINED_FUNCTION_4_32()
{

  return sub_237C08CBC();
}

id OUTLINED_FUNCTION_5_28(double a1)
{
  LODWORD(a1) = v4;

  return [v1 (v2 + 1910)];
}

uint64_t OUTLINED_FUNCTION_6_27()
{

  return sub_237C08FEC();
}

uint64_t OUTLINED_FUNCTION_10_20()
{

  return sub_237C08FFC();
}

int *MLHandPoseClassifier.ModelParameters.init(validation:batchSize:maximumIterations:augmentationOptions:algorithm:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a4;
  sub_237A9A7B0(a1, a5);
  result = type metadata accessor for MLHandPoseClassifier.ModelParameters(0);
  *(a5 + result[5]) = a2;
  *(a5 + result[6]) = a3;
  *(a5 + result[7]) = v8;
  return result;
}

void sub_237A99AB0(uint64_t a1, void *a2)
{
  v4 = v2;
  type metadata accessor for MLHandPoseClassifier.DataSource(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MLHandPoseClassifier.DataSource.imagesWithAnnotations()(v14, v15, v16, v17, v18, v19, v20, v21, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60);
  if (!v3)
  {
    v50 = a2;
    v22 = v57;
    v23 = v58;
    sub_237A9A3C4(v4, v13);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v26 = swift_getEnumCaseMultiPayload();
        if (v26 == 5)
        {
          sub_2379DBC9C(v22, v23);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9D8, &unk_237C0C710);

          sub_237C05DBC();
          OUTLINED_FUNCTION_4();
          (*(v36 + 8))(v13);
          goto LABEL_15;
        }

        if (v26 == 3)
        {
          sub_2379DBC9C(v22, v23);
          sub_237A9A80C(v13);
LABEL_15:
          *a1 = 0;
          *(a1 + 8) = -1;
          v35 = v50;
          *v50 = 0;
          goto LABEL_16;
        }

        v37 = sub_237A9A7B0(v13, v9);
        MLHandPoseClassifier.DataSource.imagesWithAnnotations()(v37, v38, v39, v40, v41, v42, v43, v44, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60);
        sub_237A9A80C(v9);
        v47 = v57;
        v48 = v58;
        *a1 = v22;
        *(a1 + 8) = v23;
        goto LABEL_27;
      }

      OUTLINED_FUNCTION_8_8(EnumCaseMultiPayload, v25);
      if (v34)
      {
        *a1 = v22;
        *(a1 + 8) = v10;
        v35 = v50;
        *v50 = 0;
LABEL_16:
        *(v35 + 8) = -1;
        return;
      }

LABEL_13:
      sub_2379DBC9C(v22, v10);
      goto LABEL_15;
    }

    v27 = *v13;
    v28 = *(v13 + 1);
    v29 = v13[16];
    v30 = v13[17];
    if (OUTLINED_FUNCTION_8_8(EnumCaseMultiPayload, v25) < 1)
    {
      goto LABEL_13;
    }

    v55 = v22;
    v31 = v10;
    LOBYTE(v56) = v10;
    MLDataTable.subscript.getter();
    v51 = v53;
    LOBYTE(v52) = v54;
    MLUntypedColumn.dropDuplicates()(&v57, v32);
    sub_2379DBC9C(v51, v52);
    v33 = v57;
    if (v58)
    {
      sub_2379DBC9C(v57, 1);
      if (v30)
      {
        goto LABEL_24;
      }
    }

    else
    {

      v45 = sub_237A2F128();
      sub_2379DBC9C(v33, 0);
      sub_2379DBC9C(v33, 0);
      if (v30)
      {
        if (v45 < 50)
        {
LABEL_24:
          v47 = 0;
          v48 = -1;
LABEL_26:
          *a1 = v22;
          *(a1 + 8) = v31;
LABEL_27:
          v46 = v50;
          *v50 = v47;
          *(v46 + 8) = v48;
          return;
        }

        v27 = dbl_237C0CE20[v45 < 0xC8];
        v28 = 1;
LABEL_25:
        v53 = v22;
        LOBYTE(v54) = v31;
        MLDataTable.randomSplitBySequence(proportion:by:on:seed:)(&v57, &v55, 0x7461506567616D69, 0xE900000000000068, 0x6C6562616CuLL, 0xE500000000000000, v28, v27);
        sub_2379DBC9C(v22, v31);
        v47 = v57;
        v48 = v58;
        v22 = v55;
        v31 = v56;
        goto LABEL_26;
      }
    }

    if (v29)
    {
      v57 = 0;
      MEMORY[0x2383DD970](&v57, 8);
      v28 = v57;
    }

    if (v27 == 0.0)
    {
      goto LABEL_24;
    }

    goto LABEL_25;
  }
}

uint64_t MLHandPoseClassifier.ModelParameters.batchSize.setter()
{
  result = OUTLINED_FUNCTION_2_39();
  *(v1 + *(result + 20)) = v0;
  return result;
}

uint64_t MLHandPoseClassifier.ModelParameters.maximumIterations.setter()
{
  result = OUTLINED_FUNCTION_2_39();
  *(v1 + *(result + 24)) = v0;
  return result;
}

uint64_t MLHandPoseClassifier.ModelParameters.augmentationOptions.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for MLHandPoseClassifier.ModelParameters(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t MLHandPoseClassifier.ModelParameters.augmentationOptions.setter(uint64_t *a1)
{
  v2 = *a1;
  result = type metadata accessor for MLHandPoseClassifier.ModelParameters(0);
  *(v1 + *(result + 28)) = v2;
  return result;
}

uint64_t MLHandPoseClassifier.ModelParameters.ModelAlgorithmType.hashValue.getter()
{
  sub_237C093CC();
  MEMORY[0x2383DCF70](0);
  return sub_237C0940C();
}

unint64_t MLHandPoseClassifier.ModelParameters.description.getter()
{
  sub_237C08EDC();

  v9 = 0xD000000000000014;
  v10 = 0x8000000237C18390;
  v1 = type metadata accessor for MLHandPoseClassifier.ModelParameters(0);
  v2 = sub_237C0924C();
  MEMORY[0x2383DC360](v2);

  MEMORY[0x2383DC360](10, 0xE100000000000000);
  strcpy(v8, "Batch Size: ");
  BYTE5(v8[1]) = 0;
  HIWORD(v8[1]) = -5120;
  v3 = sub_237C0924C();
  MEMORY[0x2383DC360](v3);

  OUTLINED_FUNCTION_2_1();
  MEMORY[0x2383DC360](v8[0], v8[1]);

  v8[0] = 0;
  v8[1] = 0xE000000000000000;
  sub_237C08EDC();

  v4 = *(v0 + *(v1 + 28));
  v8[0] = 0xD000000000000016;
  v8[1] = 0x8000000237C183F0;
  if (v4 == 1)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 0;
  }

  if (v4 == 1)
  {
    v6 = 0x8000000237C18430;
  }

  else
  {
    v6 = 0xE000000000000000;
  }

  MEMORY[0x2383DC360](v5, v6);

  OUTLINED_FUNCTION_2_1();
  MEMORY[0x2383DC360](v8[0], v8[1]);

  sub_237C08EDC();

  MEMORY[0x2383DC360](5129031, 0xE300000000000000);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x2383DC360](0xD000000000000011, 0x8000000237C18410);

  return v9;
}

uint64_t sub_237A9A3C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237A9A428(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t MLHandPoseClassifier.ModelParameters.playgroundDescription.getter@<X0>(unint64_t *a1@<X8>)
{
  result = MLHandPoseClassifier.ModelParameters.description.getter();
  a1[3] = MEMORY[0x277D837D0];
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_237A9A4C4()
{
  result = qword_27DE9C230;
  if (!qword_27DE9C230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9C230);
  }

  return result;
}

uint64_t sub_237A9A538(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_87();
  v5 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(v4);

  return __swift_getEnumTagSinglePayload(v2, a2, v5);
}

uint64_t sub_237A9A590(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_87();
  v5 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(v4);

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v5);
}

uint64_t sub_237A9A5D8(uint64_t a1)
{
  result = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *_s15ModelParametersV18ModelAlgorithmTypeOwst_0(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x237A9A704);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

ValueMetadata *sub_237A9A73C(uint64_t a1)
{
  result = sub_2379EA11C();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for MLHandPoseClassifier.DataSource(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_237A9A7B0(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_87();
  v5(v4);
  OUTLINED_FUNCTION_4();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_237A9A80C(uint64_t a1)
{
  v2 = type metadata accessor for MLHandPoseClassifier.DataSource(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_2_39()
{

  return type metadata accessor for MLHandPoseClassifier.ModelParameters(0);
}

int *MLTrainingSessionParameters.init(sessionDirectory:reportInterval:checkpointInterval:iterations:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_2379E8770(a1, a5);
  if (a3 < a2)
  {
    a2 = a3;
  }

  result = type metadata accessor for MLTrainingSessionParameters(0);
  v10 = result[6];
  v11 = result[7];
  *(a5 + result[5]) = a2;
  *(a5 + v10) = a3;
  *(a5 + v11) = a4;
  return result;
}

uint64_t type metadata accessor for MLTrainingSessionParameters(uint64_t a1)
{
  result = qword_27DE9C260;
  if (!qword_27DE9C260)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_237A9A92C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16))
  {
    v3 = type metadata accessor for MLCheckpoint(0);
    OUTLINED_FUNCTION_1_35();
    sub_237A9D268(v4, a2, v5);
    v6 = OUTLINED_FUNCTION_18_19();
    v9 = v3;
  }

  else
  {
    type metadata accessor for MLCheckpoint(0);
    v6 = OUTLINED_FUNCTION_10_21();
  }

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t sub_237A9AA14(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  sub_237C087BC();
  return sub_237C0882C();
}

uint64_t sub_237A9AAAC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = a2(0);
    OUTLINED_FUNCTION_4();
    (*(v8 + 16))(a3, a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6, v7);
    v9 = OUTLINED_FUNCTION_18_19();
    v12 = v7;
  }

  else
  {
    a2(0);
    v9 = OUTLINED_FUNCTION_10_21();
  }

  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
}

uint64_t sub_237A9AB60(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return *(a1 + 8 * v1 + 24);
  }

  else
  {
    return 0;
  }
}

uint64_t MLTrainingSessionParameters.reportInterval.setter()
{
  v2 = OUTLINED_FUNCTION_46();
  result = type metadata accessor for MLTrainingSessionParameters(v2);
  *(v1 + *(result + 20)) = v0;
  return result;
}

void (*MLTrainingSessionParameters.reportInterval.modify())()
{
  v0 = OUTLINED_FUNCTION_46();
  type metadata accessor for MLTrainingSessionParameters(v0);
  return nullsub_1;
}

uint64_t MLTrainingSessionParameters.checkpointInterval.setter()
{
  v2 = OUTLINED_FUNCTION_46();
  result = type metadata accessor for MLTrainingSessionParameters(v2);
  *(v1 + *(result + 24)) = v0;
  return result;
}

void (*MLTrainingSessionParameters.checkpointInterval.modify())()
{
  v0 = OUTLINED_FUNCTION_46();
  type metadata accessor for MLTrainingSessionParameters(v0);
  return nullsub_1;
}

uint64_t MLTrainingSessionParameters.iterations.setter()
{
  v2 = OUTLINED_FUNCTION_46();
  result = type metadata accessor for MLTrainingSessionParameters(v2);
  *(v1 + *(result + 28)) = v0;
  return result;
}

void (*MLTrainingSessionParameters.iterations.modify())()
{
  v0 = OUTLINED_FUNCTION_46();
  type metadata accessor for MLTrainingSessionParameters(v0);
  return nullsub_1;
}

uint64_t MLTrainingSession.date.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_28_7();
  v4 = *(v3 + 112);
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_237C05BFC();
  OUTLINED_FUNCTION_4();
  return (*(v5 + 16))(a1, v1 + v4);
}

uint64_t MLTrainingSession.phase.getter@<X0>(_BYTE *a1@<X8>)
{
  OUTLINED_FUNCTION_31_9();
  v4 = v1 + *(v3 + 112);
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  OUTLINED_FUNCTION_31_9();
  result = type metadata accessor for MLTrainingSession.Metadata(0, *(v5 + 80), v6, v7);
  *a1 = *(v4 + *(result + 28));
  return result;
}

uint64_t sub_237A9AE90@<X0>(_BYTE *a1@<X8>)
{
  result = MLTrainingSession.phase.getter(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_237A9AF04(char *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_15_16();
  OUTLINED_FUNCTION_19_16(*(v3 + 112));
  swift_beginAccess();
  OUTLINED_FUNCTION_15_16();
  result = type metadata accessor for MLTrainingSession.Metadata(0, *(v4 + 80), v5, v6);
  *(v1 + *(result + 28)) = v2;
  return result;
}

uint64_t MLTrainingSession.iteration.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_15_16();
  OUTLINED_FUNCTION_19_16(*(v2 + 112));
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  OUTLINED_FUNCTION_15_16();
  return *(v1 + *(type metadata accessor for MLTrainingSession.Metadata(0, *(v3 + 80), v4, v5) + 32));
}

uint64_t sub_237A9AFE4(uint64_t a1)
{
  OUTLINED_FUNCTION_31_9();
  v4 = v1 + *(v3 + 112);
  OUTLINED_FUNCTION_21_15();
  swift_beginAccess();
  OUTLINED_FUNCTION_31_9();
  result = type metadata accessor for MLTrainingSession.Metadata(0, *(v5 + 80), v6, v7);
  *(v4 + *(result + 32)) = a1;
  return result;
}

uint64_t MLTrainingSession.checkpoints.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_15_16();
  OUTLINED_FUNCTION_19_16(*(v1 + 112));
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  OUTLINED_FUNCTION_15_16();
  type metadata accessor for MLTrainingSession.Metadata(0, *(v2 + 80), v3, v4);
}

void sub_237A9B0C8()
{
  OUTLINED_FUNCTION_74();
  v2 = v0;
  OUTLINED_FUNCTION_28_7();
  type metadata accessor for MLTrainingSession.Metadata(0, *(v3 + 80), v4, v5);
  OUTLINED_FUNCTION_0();
  v61 = v6;
  v62 = v7;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  v60 = &v57 - v9;
  OUTLINED_FUNCTION_41_0();
  v10 = sub_237C0909C();
  OUTLINED_FUNCTION_0();
  v59 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_0();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);
  OUTLINED_FUNCTION_20(v16);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v17);
  v19 = &v57 - v18;
  v20 = type metadata accessor for MLTrainingSessionParameters(0);
  v21 = OUTLINED_FUNCTION_20(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_2_0();
  v24 = v23 - v22;
  v25 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_18_0();
  v31 = v29 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v57 - v33;
  OUTLINED_FUNCTION_3_36();
  sub_237A9D268(v2 + v35, v24, v36);
  sub_2379E8770(v24, v19);
  if (__swift_getEnumTagSinglePayload(v19, 1, v25) == 1)
  {
    sub_2379D9054(v19, &qword_27DE9AA18, &qword_237C0B710);
  }

  else
  {
    (*(v27 + 32))(v34, v19, v25);
    v58 = v31;
    sub_237C05A2C();
    sub_237C0592C();
    swift_allocObject();
    sub_237C0591C();
    if (qword_27DE9A580 != -1)
    {
      swift_once();
    }

    v37 = __swift_project_value_buffer(v10, qword_27DEACD18);
    (*(v59 + 16))(v15, v37, v10);
    v64[3] = v25;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v64);
    v59 = v27;
    v39 = *(v27 + 16);
    v57 = v34;
    v39(boxed_opaque_existential_0, v34, v25);
    v40 = sub_237C0590C();
    sub_237B19D44(v64, v15);
    v40(&v63, 0);
    v41 = *(*v2 + 112);
    OUTLINED_FUNCTION_71();
    swift_beginAccess();
    v42 = v61;
    v43 = v62;
    v44 = v2 + v41;
    v45 = v60;
    (*(v62 + 16))(v60, v44, v61);
    swift_getWitnessTable();
    v46 = sub_237C058FC();
    if (v1)
    {

      (*(v43 + 8))(v45, v42);
      v48 = v58;
      v51 = v57;
    }

    else
    {
      v49 = v46;
      v50 = v47;
      (*(v43 + 8))(v45, v42);
      v48 = v58;
      sub_237C05B9C();
      v53 = (v2 + qword_27DEACD88);
      v54 = *(v2 + qword_27DEACD88 + 24);
      v55 = v53[4];
      __swift_project_boxed_opaque_existential_1(v53, v54);
      v56 = *(*(v55 + 8) + 8);
      v51 = v57;
      v56(v57, v54);
      sub_2379E86D4(v49, v50);
    }

    v52 = *(v59 + 8);
    v52(v48, v25);
    v52(v51, v25);
  }

  OUTLINED_FUNCTION_73();
}

uint64_t sub_237A9B60C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_237C0929C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6573616870 && a2 == 0xE500000000000000;
    if (v6 || (sub_237C0929C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6F69746172657469 && a2 == 0xE90000000000006ELL;
      if (v7 || (sub_237C0929C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x4C52556C65646F6DLL && a2 == 0xE800000000000000;
        if (v8 || (sub_237C0929C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7461447475706E69 && a2 == 0xEC0000004C525561;
          if (v9 || (sub_237C0929C() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x696F706B63656863 && a2 == 0xEB0000000073746ELL)
          {

            return 5;
          }

          else
          {
            v11 = sub_237C0929C();

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

uint64_t sub_237A9B808(char a1)
{
  result = 1702125924;
  switch(a1)
  {
    case 1:
      result = 0x6573616870;
      break;
    case 2:
      result = 0x6F69746172657469;
      break;
    case 3:
      result = 0x4C52556C65646F6DLL;
      break;
    case 4:
      result = 0x7461447475706E69;
      break;
    case 5:
      result = 0x696F706B63656863;
      break;
    default:
      return result;
  }

  return result;
}

void sub_237A9B8DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char a11, char a12, char a13, char a14, char a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_74();
  v47 = v29;
  v48 = v28;
  v30 = v27;
  v32 = v31;
  type metadata accessor for MLTrainingSession.Metadata.CodingKeys(255, *(v29 + 16), v33, v34);
  OUTLINED_FUNCTION_9_22();
  swift_getWitnessTable();
  v35 = sub_237C0922C();
  OUTLINED_FUNCTION_0();
  v37 = v36;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v38);
  v40 = &v46 - v39;
  __swift_project_boxed_opaque_existential_1(v32, v32[3]);
  sub_237C0949C();
  sub_237C05BFC();
  OUTLINED_FUNCTION_8_23();
  sub_237A9DCFC(v41, v42, MEMORY[0x277CC9580]);
  v43 = v48;
  sub_237C0921C();
  if (!v43)
  {
    sub_237A852B0();
    OUTLINED_FUNCTION_23_15();
    sub_237C0921C();
    OUTLINED_FUNCTION_23_15();
    sub_237C0920C();
    sub_237C05ADC();
    OUTLINED_FUNCTION_6_28();
    sub_237A9DCFC(v44, v45, MEMORY[0x277CC9268]);
    OUTLINED_FUNCTION_23_15();
    sub_237C091DC();
    OUTLINED_FUNCTION_23_15();
    sub_237C091DC();
    v49 = *(v30 + *(v47 + 44));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C380, &qword_237C0FF50);
    sub_237A9DC60(&qword_27DE9C398, qword_27DE9C3A0, &protocol conformance descriptor for MLCheckpoint, MEMORY[0x277D83948]);
    OUTLINED_FUNCTION_23_15();
    sub_237C0921C();
  }

  (*(v37 + 8))(v40, v35);
  OUTLINED_FUNCTION_73();
}

void sub_237A9BBE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int16 a10, char a11, char a12, char a13, char a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_74();
  v87 = v26;
  v28 = v27;
  v91 = v29;
  v76 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);
  v32 = OUTLINED_FUNCTION_20(v31);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_18_0();
  v77 = v33 - v34;
  MEMORY[0x28223BE20](v35);
  v81 = &v74 - v36;
  OUTLINED_FUNCTION_41_0();
  v82 = sub_237C05BFC();
  OUTLINED_FUNCTION_0();
  v80 = v37;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_2_0();
  v84 = v40 - v39;
  type metadata accessor for MLTrainingSession.Metadata.CodingKeys(255, v28, v41, v42);
  OUTLINED_FUNCTION_9_22();
  WitnessTable = swift_getWitnessTable();
  v83 = sub_237C091CC();
  OUTLINED_FUNCTION_0();
  v79 = v43;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v44);
  v46 = &v74 - v45;
  v49 = type metadata accessor for MLTrainingSession.Metadata(0, v28, v47, v48);
  OUTLINED_FUNCTION_0();
  v90 = v50;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v51);
  v53 = &v74 - v52;
  sub_237C05BEC();
  v78 = v49[7];
  v53[v78] = 0;
  v54 = v49[8];
  *&v53[v54] = 0;
  v55 = v49[9];
  v56 = sub_237C05ADC();
  __swift_storeEnumTagSinglePayload(&v53[v55], 1, 1, v56);
  v57 = v49[10];
  __swift_storeEnumTagSinglePayload(&v53[v57], 1, 1, v56);
  v89 = v49;
  v58 = v49[11];
  v88 = v53;
  *&v53[v58] = MEMORY[0x277D84F90];
  __swift_project_boxed_opaque_existential_1(v91, v91[3]);
  v85 = v46;
  v59 = v87;
  sub_237C0946C();
  if (v59)
  {
    v65 = v88;
    __swift_destroy_boxed_opaque_existential_1(v91);
    (*(v90 + 8))(v65, v89);
  }

  else
  {
    WitnessTable = v55;
    v87 = v56;
    v74 = v58;
    v75 = v57;
    v61 = v80;
    v60 = v81;
    OUTLINED_FUNCTION_8_23();
    sub_237A9DCFC(v62, v63, MEMORY[0x277CC95A0]);
    v64 = v82;
    OUTLINED_FUNCTION_22_11();
    OUTLINED_FUNCTION_17_15();
    sub_237C091BC();
    v66 = v88;
    (*(v61 + 40))(v88, v84, v64);
    sub_237A84B54();
    OUTLINED_FUNCTION_17_15();
    sub_237C091BC();
    v66[v78] = a15;
    OUTLINED_FUNCTION_17_15();
    *&v66[v54] = sub_237C091AC();
    OUTLINED_FUNCTION_6_28();
    sub_237A9DCFC(v67, v68, MEMORY[0x277CC9280]);
    OUTLINED_FUNCTION_22_11();
    OUTLINED_FUNCTION_17_15();
    sub_237C0917C();
    sub_237A9DBF0(v60, &v66[WitnessTable]);
    v69 = v77;
    OUTLINED_FUNCTION_22_11();
    OUTLINED_FUNCTION_17_15();
    sub_237C0917C();
    sub_237A9DBF0(v69, &v66[v75]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C380, &qword_237C0FF50);
    sub_237A9DC60(&qword_27DE9C388, &qword_27DE9C390, &protocol conformance descriptor for MLCheckpoint, MEMORY[0x277D83978]);
    OUTLINED_FUNCTION_17_15();
    sub_237C091BC();
    v70 = OUTLINED_FUNCTION_20_12();
    v71(v70);
    *&v66[v74] = v92;
    v73 = v89;
    v72 = v90;
    (*(v90 + 16))(v76, v66, v89);
    __swift_destroy_boxed_opaque_existential_1(v91);
    (*(v72 + 8))(v66, v73);
  }

  OUTLINED_FUNCTION_73();
}

uint64_t sub_237A9C180(uint64_t a1)
{
  sub_237C093CC();
  sub_237A2BA70(v3, *v1);
  return sub_237C0940C();
}

uint64_t sub_237A9C1D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237A9B60C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237A9C224@<X0>(_BYTE *a1@<X8>)
{
  result = sub_237A9B800();
  *a1 = result;
  return result;
}

uint64_t sub_237A9C250(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237A9C2A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

void MLTrainingSession.removeCheckpoints(_:)()
{
  OUTLINED_FUNCTION_74();
  v57 = v2;
  v58 = v3;
  v60[4] = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B8E8, &qword_237C0EBF0);
  v5 = OUTLINED_FUNCTION_20(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18_0();
  v52 = v6 - v7;
  MEMORY[0x28223BE20](v8);
  v50 = &v49 - v9;
  v10 = OUTLINED_FUNCTION_41_0();
  v51 = type metadata accessor for MLCheckpoint(v10);
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_18_0();
  v56 = v14 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v49 - v17;
  v55 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
  OUTLINED_FUNCTION_28_7();
  v20 = v0 + *(v19 + 112);
  OUTLINED_FUNCTION_21_15();
  swift_beginAccess();
  OUTLINED_FUNCTION_15_16();
  v59 = type metadata accessor for MLTrainingSession.Metadata(0, *(v21 + 80), v22, v23);
  v24 = *(v59 + 44);
  v25 = *(*(v20 + v24) + 16);
  v54 = v20;
  if (v25)
  {
    v53 = v1;
    v49 = v0;
    v26 = 0;
    v27 = MEMORY[0x277D84F90];
    do
    {
      if (v26 >= *(*(v20 + *(v59 + 44)) + 16))
      {
        __break(1u);
      }

      v28 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v29 = *(v12 + 72);
      OUTLINED_FUNCTION_1_35();
      sub_237A9D268(v30, v18, v31);
      if (v57(v18))
      {
        v32 = sub_237C059EC();
        v60[0] = 0;
        v33 = [v55 removeItemAtURL:v32 error:v60];

        if (v33)
        {
          v34 = v60[0];
          OUTLINED_FUNCTION_0_38();
          sub_237A9D504();
        }

        else
        {
          v37 = v60[0];
          v38 = sub_237C0593C();

          swift_willThrow();
          OUTLINED_FUNCTION_0_38();
          sub_237A9D504();
          v53 = 0;
        }
      }

      else
      {
        OUTLINED_FUNCTION_1_35();
        sub_237A9D268(v18, v56, v35);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_237BC12F8();
          v27 = v39;
        }

        v36 = *(v27 + 16);
        if (v36 >= *(v27 + 24) >> 1)
        {
          sub_237BC12F8();
          v27 = v40;
        }

        OUTLINED_FUNCTION_0_38();
        sub_237A9D504();
        *(v27 + 16) = v36 + 1;
        sub_237A9D370(v56, v27 + v28 + v36 * v29);
        v20 = v54;
      }

      ++v26;
    }

    while (v25 != v26);
    v24 = *(v59 + 44);
  }

  else
  {
    v27 = MEMORY[0x277D84F90];
  }

  *(v20 + v24) = v27;

  v41 = v50;
  sub_237A9A92C(v27, v50);
  v42 = v51;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v41, 1, v51);
  v44 = v52;
  if (EnumTagSinglePayload == 1)
  {
    sub_2379D9054(v41, &qword_27DE9B8E8, &qword_237C0EBF0);
  }

  else
  {
    v45 = *(v41 + *(v42 + 20));
    OUTLINED_FUNCTION_0_38();
    sub_237A9D504();
    sub_237A9A92C(v27, v44);

    if (__swift_getEnumTagSinglePayload(v44, 1, v42) == 1)
    {
      sub_2379D9054(v44, &qword_27DE9B8E8, &qword_237C0EBF0);
    }

    else
    {
      v46 = *(v44 + *(v42 + 24));
      OUTLINED_FUNCTION_0_38();
      sub_237A9D504();
      v47 = v59;
      v48 = v54;
      *(v54 + *(v59 + 28)) = v45;
      *(v48 + *(v47 + 32)) = v46;
    }
  }

  sub_237A9B0C8();

  OUTLINED_FUNCTION_73();
}

void MLTrainingSession.reuseExtractedFeatures(from:)()
{
  OUTLINED_FUNCTION_74();
  v82 = v1;
  v83 = v2;
  v85[7] = *MEMORY[0x277D85DE8];
  v3 = *v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);
  OUTLINED_FUNCTION_20(v4);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  v84 = &v74 - v6;
  v7 = OUTLINED_FUNCTION_41_0();
  v8 = type metadata accessor for MLTrainingSessionParameters(v7);
  v9 = OUTLINED_FUNCTION_20(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  v81 = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B8E8, &qword_237C0EBF0);
  OUTLINED_FUNCTION_20(v12);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v13);
  v15 = &v74 - v14;
  v16 = type metadata accessor for MLCheckpoint(0);
  OUTLINED_FUNCTION_0();
  v80 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_18_0();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v74 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v74 - v26;
  v28 = v0 + *(v3 + 112);
  OUTLINED_FUNCTION_21_15();
  swift_beginAccess();
  v31 = type metadata accessor for MLTrainingSession.Metadata(0, *(v3 + 80), v29, v30);
  if (*(*&v28[*(v31 + 44)] + 16))
  {
    v32 = 0x8000000237C1A1F0;
    sub_2379E8AF0();
    swift_allocError();
    v34 = 0xD000000000000047;
LABEL_14:
    *v33 = v34;
    *(v33 + 8) = v32;
    *(v33 + 16) = 0u;
    *(v33 + 32) = 0u;
    *(v33 + 48) = 0;
    swift_willThrow();
    goto LABEL_15;
  }

  v35 = v31;
  v78 = v0;
  v79 = v27;
  v76 = v21;
  v77 = v15;
  v36 = v83 + *(*v83 + 112);
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  v83 = v35;
  v37 = *&v36[v35[11]];
  v85[0] = v37;
  v38 = v37[2];
  v75 = v28;
  if (v38)
  {

    while (2)
    {
      if (v38 > v37[2])
      {
        __break(1u);
      }

      --v38;
      OUTLINED_FUNCTION_1_35();
      sub_237A9D268(v39, v24, v40);
      switch(v24[*(v16 + 20)])
      {
        case 1:
          v47 = v16;

          OUTLINED_FUNCTION_0_38();
          v42 = sub_237A9D504();
          v44 = v78;
          v45 = v79;
          v43 = v84;
          v46 = v81;
          goto LABEL_10;
        default:
          v41 = sub_237C0929C();

          OUTLINED_FUNCTION_0_38();
          v42 = sub_237A9D504();
          if ((v41 & 1) == 0 && v38)
          {
            continue;
          }

          v43 = v84;
          v44 = v78;
          v45 = v79;
          v46 = v81;
          v47 = v16;
LABEL_10:
          v48 = v77;
          break;
      }

      break;
    }
  }

  else
  {

    v47 = v16;
    v48 = v77;
    v44 = v78;
    v46 = v81;
    v43 = v84;
    v45 = v79;
  }

  MEMORY[0x28223BE20](v42);
  *(&v74 - 2) = v85;
  sub_237A9D42C(sub_237A594BC, v38, v49 & 1, type metadata accessor for MLCheckpoint, v48, (&v74 - 4));

  if (__swift_getEnumTagSinglePayload(v48, 1, v47) == 1)
  {
    sub_2379D9054(v48, &qword_27DE9B8E8, &qword_237C0EBF0);
    v32 = 0x8000000237C1A240;
    sub_2379E8AF0();
    swift_allocError();
    v34 = 0xD000000000000029;
    goto LABEL_14;
  }

  sub_237A9D370(v48, v45);
  OUTLINED_FUNCTION_3_36();
  sub_237A9D268(v44 + v50, v46, v51);
  sub_2379E8770(v46, v43);
  v52 = sub_237C05ADC();
  if (__swift_getEnumTagSinglePayload(v43, 1, v52) == 1)
  {
    __break(1u);
    JUMPOUT(0x237A9CFCCLL);
  }

  v53 = v47;
  v54 = *(v45 + *(v47 + 24));
  v55 = *(v45 + v53[8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD78, &qword_237C0E8B0);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_237C0B670;
  *(v56 + 56) = MEMORY[0x277D837D0];
  v57 = sub_237A8E8E4();
  *(v56 + 32) = 0x6974636172747865;
  *(v56 + 40) = 0xEA0000000000676ELL;
  v58 = MEMORY[0x277D83C10];
  *(v56 + 96) = MEMORY[0x277D83B88];
  *(v56 + 104) = v58;
  *(v56 + 64) = v57;
  *(v56 + 72) = v54;

  sub_237C0871C();
  v59 = v76;
  v60 = v84;
  sub_237C05A2C();

  *(v59 + v53[5]) = 1;
  *(v59 + v53[6]) = v54;
  sub_237C05BEC();
  (*(*(v52 - 8) + 8))(v60, v52);
  *(v59 + v53[8]) = v55;
  v61 = [objc_opt_self() defaultManager];
  v62 = sub_237C059EC();
  v63 = sub_237C059EC();
  v85[0] = 0;
  v64 = [v61 copyItemAtURL:v62 toURL:v63 error:v85];

  v65 = v85[0];
  if (v64)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C258, &qword_237C16A20);
    v66 = (*(v80 + 80) + 32) & ~*(v80 + 80);
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_237C0B660;
    OUTLINED_FUNCTION_1_35();
    sub_237A9D268(v59, v68 + v66, v69);
    v70 = v65;
    OUTLINED_FUNCTION_7_24();
    sub_237A9D504();
    v71 = v83;
    v72 = v75;
    *&v75[v83[11]] = v67;
    v72[v71[7]] = 1;

    sub_237A9D504();
    *&v72[v71[8]] = v54;
  }

  else
  {
    v73 = v85[0];
    sub_237C0593C();

    swift_willThrow();
    OUTLINED_FUNCTION_7_24();
    sub_237A9D504();
    sub_237A9D504();
  }

LABEL_15:
  OUTLINED_FUNCTION_73();
}

char *MLTrainingSession.deinit()
{
  v1 = *v0;
  sub_237A9D504();
  __swift_destroy_boxed_opaque_existential_1(&v0[qword_27DEACD88]);
  OUTLINED_FUNCTION_28_7();
  v3 = *(v2 + 112);
  type metadata accessor for MLTrainingSession.Metadata(0, *(v1 + 80), v4, v5);
  OUTLINED_FUNCTION_4();
  (*(v6 + 8))(&v0[v3]);
  return v0;
}

uint64_t MLTrainingSession.__deallocating_deinit()
{
  MLTrainingSession.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_237A9D1AC(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_237A9D268(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_237A9D328(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t sub_237A9D370(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLCheckpoint(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_237A9D42C@<X0>(void *(*a1)(void *__return_ptr, uint64_t *)@<X0>, uint64_t a2@<X2>, char a3@<W3>, uint64_t (*a4)(void)@<X5>, void *a5@<X8>, uint64_t a6@<X1>)
{
  if (a3)
  {
    (a4)(0, a6, a2);
    v8 = OUTLINED_FUNCTION_10_21();
    return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }

  else
  {
    v17 = a2;
    result = a1(a5, &v17);
    if (v6)
    {
      __break(1u);
    }

    else
    {
      a4(0);
      v13 = OUTLINED_FUNCTION_18_19();
      return __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
    }
  }

  return result;
}

uint64_t sub_237A9D504()
{
  v1 = OUTLINED_FUNCTION_46();
  v2(v1);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_237A9D570@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = MLTrainingSession.iteration.getter(a1);
  *a2 = result;
  return result;
}

uint64_t sub_237A9D5DC()
{
  OUTLINED_FUNCTION_63_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_237A9D640()
{
  OUTLINED_FUNCTION_63_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

void sub_237A9D694(uint64_t a1)
{
  sub_237A9DB74(319, qword_27DE9C270, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_237A9D740(uint64_t a1)
{
  result = type metadata accessor for MLTrainingSessionParameters(319);
  if (v5 <= 0x3F)
  {
    result = type metadata accessor for MLTrainingSession.Metadata(319, *(a1 + 80), v3, v4);
    if (v6 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_237A9D854(uint64_t a1)
{
  sub_237C05BFC();
  if (v1 <= 0x3F)
  {
    sub_237A9DB74(319, qword_27DE9C270, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_237A9DB74(319, &qword_27DE9C378, type metadata accessor for MLCheckpoint, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_237A9D97C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_63_1();
  sub_237C05BFC();
  OUTLINED_FUNCTION_135();
  if (*(v7 + 84) == v3)
  {
    v8 = v6;
    v9 = v4;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, v3, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);
  OUTLINED_FUNCTION_135();
  if (*(v11 + 84) == v3)
  {
    v8 = v10;
    v9 = v4 + *(a3 + 36);
    goto LABEL_5;
  }

  v13 = *(v4 + *(a3 + 44));
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_237A9DA84(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_63_1();
  sub_237C05BFC();
  OUTLINED_FUNCTION_135();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = v5;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);
    OUTLINED_FUNCTION_135();
    if (*(v13 + 84) != a3)
    {
      *(v5 + *(a4 + 44)) = (v4 - 1);
      return;
    }

    v10 = v12;
    v11 = v5 + *(a4 + 36);
  }

  __swift_storeEnumTagSinglePayload(v11, v4, v4, v10);
}

void sub_237A9DB74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_237A9DBF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_237A9DC60(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9C380, &qword_237C0FF50);
    sub_237A9DCFC(a2, type metadata accessor for MLCheckpoint, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_237A9DCFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *sub_237A9DD4C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x237A9DE18);
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

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MLTextClassifier.write(toFile:metadata:)(Swift::String toFile, CreateML::MLModelMetadata_optional *metadata)
{
  object = toFile._object;
  countAndFlagsBits = toFile._countAndFlagsBits;
  memcpy(__dst, metadata, sizeof(__dst));
  sub_237AAB274(countAndFlagsBits, object, 0x73616C4374786554, 0xEE00726569666973, __dst);
}

uint64_t sub_237A9E0E0()
{
  v0 = type metadata accessor for MLTrainingSessionParameters(0);
  __swift_allocate_value_buffer(v0, qword_27DE9C428);
  v1 = __swift_project_value_buffer(v0, qword_27DE9C428);
  v2 = sub_237C05ADC();
  result = __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  v4 = v0[6];
  v5 = v0[7];
  *(v1 + v0[5]) = 10;
  *(v1 + v4) = 50;
  *(v1 + v5) = 1000;
  return result;
}

uint64_t static MLImageClassifier._defaultSessionParameters.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DE9A588 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for MLTrainingSessionParameters(0);
  v3 = __swift_project_value_buffer(v2, qword_27DE9C428);
  return sub_237AA2CDC(v3, a1, type metadata accessor for MLTrainingSessionParameters);
}

uint64_t MLImageClassifier.model.modify(void *a1)
{
  v2 = *v1;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = v2;
  v3 = v2;
  return OUTLINED_FUNCTION_30();
}

void sub_237A9E290(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *a1;
  if (a2)
  {
    v5 = v4;

    *v2 = v5;
  }

  else
  {

    *v2 = v4;
  }
}

uint64_t MLImageClassifier.trainingMetrics.getter()
{
  v0 = OUTLINED_FUNCTION_146();
  v1 = type metadata accessor for MLImageClassifier(v0);
  return OUTLINED_FUNCTION_29_7(*(v1 + 24));
}

uint64_t type metadata accessor for MLImageClassifier(uint64_t a1)
{
  result = qword_27DE9C440;
  if (!qword_27DE9C440)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MLImageClassifier.validationMetrics.getter()
{
  v0 = OUTLINED_FUNCTION_146();
  v1 = type metadata accessor for MLImageClassifier(v0);
  return OUTLINED_FUNCTION_29_7(*(v1 + 28));
}

uint64_t MLImageClassifier.init(trainingData:parameters:)(void (*a1)(void), uint64_t a2)
{
  v35 = a2;
  v7 = OUTLINED_FUNCTION_146();
  v8 = type metadata accessor for MLImageClassifier(v7);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_0();
  v32 = v11 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9C8, &qword_237C0B6A0);
  OUTLINED_FUNCTION_42_4();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_48_8();
  v16 = (v2 + v15);
  sub_237C06FAC();
  type metadata accessor for MLClassifierMetrics.Precomputed(0);
  sub_2379E51D0(v5);
  sub_2379E5C70(v5);
  (*(v13 + 8))(v5, v4);
  *v16 = 0;
  type metadata accessor for MLClassifierMetrics.Contents(0);
  swift_storeEnumTagMultiPayload();
  v17 = *(v9 + 36);
  sub_2379E8AF0();
  v18 = swift_allocError();
  *v19 = 0xD0000000000000C0;
  v19[1] = 0x8000000237C17B10;
  OUTLINED_FUNCTION_36_7(v18, v19);
  sub_237B82504();
  if (v3)
  {
    sub_237AA27EC(v35);
    v21 = OUTLINED_FUNCTION_5_29();
    sub_237AA2FFC(v21, v22);
    OUTLINED_FUNCTION_3_37();
    sub_237AA2FFC(v16, v28);
    return sub_237AA2FFC(v2 + v17, a1);
  }

  else
  {
    v23 = v20;
    v24 = v35;
    sub_237A9E314(v35, v34);
    sub_237A9E314(v34, __src);
    v25 = swift_allocObject();
    *(v25 + 16) = v23;
    memcpy((v25 + 24), __src, 0x50uLL);
    sub_2379DD724(&unk_237C10090, v25);

    sub_237AA27EC(v24);
    v26 = OUTLINED_FUNCTION_5_29();
    sub_237AA2FFC(v26, v27);
    sub_237AA27EC(v34);
    OUTLINED_FUNCTION_3_37();
    sub_237AA2FFC(v16, v30);
    sub_237AA2FFC(v2 + v17, a1);
    OUTLINED_FUNCTION_9_23();
    return sub_237AA3054(v32, v2, v31);
  }
}

uint64_t sub_237A9E6E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  return MEMORY[0x2822009F8](sub_237A9E708);
}

uint64_t sub_237A9E708()
{
  OUTLINED_FUNCTION_49();
  v1 = v0[14];
  sub_237B8AEC4(v0[13]);
  sub_237A9E314(v1, (v0 + 2));

  sub_237B43A98(v2);
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  v0[15] = v3;
  *v3 = v4;
  OUTLINED_FUNCTION_35_7(v3);

  return sub_237A9E8F8();
}

uint64_t sub_237A9E7C0()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 128) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11();

    return MEMORY[0x2822009F8](v7);
  }

  else
  {
    OUTLINED_FUNCTION_8();

    return v8();
  }
}

uint64_t sub_237A9E8F8()
{
  OUTLINED_FUNCTION_9();
  v0[27] = v1;
  v0[28] = v2;
  v0[25] = v3;
  v0[26] = v4;
  v5 = type metadata accessor for MLClassifierMetrics(0);
  OUTLINED_FUNCTION_20(v5);
  v0[29] = OUTLINED_FUNCTION_134_0();
  v0[30] = swift_task_alloc();
  v6 = _s5ModelVMa_1(0);
  OUTLINED_FUNCTION_20(v6);
  v0[31] = OUTLINED_FUNCTION_134_0();
  v0[32] = swift_task_alloc();
  v7 = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(0);
  v0[33] = v7;
  OUTLINED_FUNCTION_1(v7);
  v0[34] = v8;
  v0[35] = *(v9 + 64);
  v0[36] = OUTLINED_FUNCTION_134_0();
  v0[37] = swift_task_alloc();
  v10 = type metadata accessor for MLImageClassifier.FeatureExtractorType(0);
  OUTLINED_FUNCTION_20(v10);
  v0[38] = OUTLINED_FUNCTION_134_0();
  v0[39] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A6F8, &unk_237C10180);
  v0[40] = v11;
  OUTLINED_FUNCTION_1(v11);
  v0[41] = v12;
  v0[42] = OUTLINED_FUNCTION_19();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C460, &unk_237C16A10);
  v0[43] = v13;
  OUTLINED_FUNCTION_1(v13);
  v0[44] = v14;
  v0[45] = OUTLINED_FUNCTION_134_0();
  v0[46] = swift_task_alloc();
  v15 = type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType(0);
  OUTLINED_FUNCTION_20(v15);
  v0[47] = OUTLINED_FUNCTION_134_0();
  v0[48] = swift_task_alloc();
  v16 = _s10ClassifierVMa(0);
  OUTLINED_FUNCTION_20(v16);
  v0[49] = OUTLINED_FUNCTION_19();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9C8, &qword_237C0B6A0);
  v0[50] = v17;
  OUTLINED_FUNCTION_1(v17);
  v0[51] = v18;
  v0[52] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v19);
}

uint64_t sub_237A9EB9C()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 416);
  v3 = *(v0 + 400);
  v4 = *(v0 + 216);
  v5 = *(v0 + 200);
  v6 = type metadata accessor for MLImageClassifier(0);
  *(v0 + 424) = v6;
  v7 = *(v6 + 24);
  *(v0 + 600) = v7;
  v8 = (v5 + v7);
  sub_237C06FAC();
  type metadata accessor for MLClassifierMetrics.Precomputed(0);
  sub_2379E51D0(v2);
  sub_2379E5C70(v2);
  (*(v1 + 8))(v2, v3);
  *v8 = 0;
  type metadata accessor for MLClassifierMetrics.Contents(0);
  swift_storeEnumTagMultiPayload();
  v9 = *(v6 + 28);
  *(v0 + 604) = v9;
  sub_2379E8AF0();
  v10 = swift_allocError();
  *v11 = 0xD0000000000000C0;
  *(v11 + 8) = 0x8000000237C17B10;
  *(v11 + 16) = 0u;
  *(v11 + 32) = 0u;
  *(v11 + 48) = 0;
  *(v5 + v9) = v10;
  swift_storeEnumTagMultiPayload();
  sub_237A9E314(v4, v5 + 8);
  sub_237A26A78();
  v12 = *(v0 + 384);
  v27 = *(v0 + 392);
  v13 = *(v0 + 368);
  v15 = *(v0 + 344);
  v14 = *(v0 + 352);
  v16 = *(v0 + 328);
  v24 = *(v0 + 360);
  v25 = *(v0 + 336);
  v26 = *(v0 + 320);
  v28 = *(v0 + 312);
  sub_237A9E314(v5 + 8, v0 + 16);

  MLImageClassifier.ModelParameters.algorithm.getter(v12);
  sub_237A0C928();
  sub_237C072AC();
  sub_237C0725C();
  (*(v14 + 16))(v24, v13, v15);
  sub_237C0730C();
  (*(v14 + 8))(v13, v15);
  sub_237AA27EC(v0 + 16);
  (*(v16 + 32))(v27, v25, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A6D8, &qword_237C0A140);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_10_22();
  sub_237AA2FFC(v12, v17);
  MLImageClassifier.ModelParameters.algorithm.getter(v12);
  v18 = OUTLINED_FUNCTION_8_24();
  sub_237AA3054(v18, v28, v19);
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  *(v0 + 432) = v20;
  *v20 = v21;
  v20[1] = sub_237A9F02C;
  v22 = *(v0 + 312);

  return sub_237BBA7D8(v0 + 96, v22);
}

uint64_t sub_237A9F02C()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  v3 = v2;
  OUTLINED_FUNCTION_95();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3();
  *v6 = v5;
  *(v3 + 440) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_237A9F138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_25_12();
  OUTLINED_FUNCTION_33_8();
  result = sub_2379FC864(*(v18 + 216) + 16, v18 + 168, &qword_27DE9A998, &unk_237C0C100);
  if (*(v18 + 192))
  {
    v20 = *(v18 + 440);
    v22 = *(v18 + 288);
    v21 = *(v18 + 296);
    v23 = *(v18 + 272);
    v24 = *(v18 + 208);
    sub_2379DAD24((v18 + 168), (v18 + 136));
    swift_dynamicCast();
    OUTLINED_FUNCTION_28_8();
    sub_237AA2CDC(v21, v22, v25);
    v26 = (*(v23 + 80) + 24) & ~*(v23 + 80);
    v27 = swift_allocObject();
    *(v27 + 16) = v24;
    sub_237AA3054(v22, v27 + v26, type metadata accessor for MLImageClassifier.ModelParameters.ValidationData);
    sub_2379DD908();
    *(v18 + 448) = v28;
    *(v18 + 456) = v29;
    if (v20)
    {
      v30 = *(v18 + 392);
      v31 = *(v18 + 296);
      v32 = *(v18 + 216);

      sub_237AA27EC(v32);
      sub_237AA2F34(v18 + 96);
      OUTLINED_FUNCTION_0_39();
      sub_237AA2FFC(v30, v33);
      OUTLINED_FUNCTION_1_36();
      sub_237AA2FFC(v31, v34);
      v35 = *(v18 + 604);
      OUTLINED_FUNCTION_18_20();
      OUTLINED_FUNCTION_3_37();
      sub_237AA2FFC(v27 + v20, v36);
      sub_237AA2FFC(v27 + v35, v30);
      OUTLINED_FUNCTION_49_3();
      OUTLINED_FUNCTION_6_29();
      OUTLINED_FUNCTION_41_7();

      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_23_16();

      return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12, a13, v20, a15, a16, a17, a18);
    }

    else
    {

      OUTLINED_FUNCTION_13_19(&qword_237C169B0);
      v55 = v45;
      v46 = swift_task_alloc();
      *(v18 + 464) = v46;
      *v46 = v18;
      v46[1] = sub_237A9F3F0;
      OUTLINED_FUNCTION_37_0();
      OUTLINED_FUNCTION_23_16();

      return v50(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, v55, a15, a16, a17, a18);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237A9F3F0()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  v3 = v2;
  OUTLINED_FUNCTION_95();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 472) = v5;
  *(v3 + 480) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_237A9F50C()
{
  OUTLINED_FUNCTION_49();
  v1 = v0[27];
  v2 = *(v0[59] + 16);
  v3 = *(v0[28] + 16);

  sub_237AA17A8(v2, v3, v1);
  OUTLINED_FUNCTION_13_19(qword_237C16928);
  v4 = swift_task_alloc();
  v0[61] = v4;
  *v4 = v0;
  v4[1] = sub_237A9F5CC;
  v5 = OUTLINED_FUNCTION_52_7(v0[59]);

  return v6(v5);
}

uint64_t sub_237A9F5CC()
{
  OUTLINED_FUNCTION_49();
  v2 = *v1;
  OUTLINED_FUNCTION_3();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_95();
  *v5 = v4;
  *(v2 + 496) = v6;
  *(v2 + 504) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_237A9F708()
{
  OUTLINED_FUNCTION_9();
  v1 = *(v0[57] + 16);
  v0[64] = v1;
  if (v1)
  {
    OUTLINED_FUNCTION_13_19(qword_237C16928);
    v2 = swift_task_alloc();
    v0[67] = v2;
    *v2 = v0;
    v2[1] = sub_237A9FA08;
    v3 = OUTLINED_FUNCTION_52_7(v0[57]);

    return v4(v3);
  }

  else
  {
    OUTLINED_FUNCTION_13_19(dword_237C16980);
    v9 = v6;
    swift_task_alloc();
    OUTLINED_FUNCTION_35();
    v0[65] = v7;
    *v7 = v8;
    v7[1] = sub_237A9F82C;
    OUTLINED_FUNCTION_71();

    return v9();
  }
}

uint64_t sub_237A9F82C()
{
  OUTLINED_FUNCTION_49();
  v2 = *v1;
  OUTLINED_FUNCTION_3();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 528) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_237A9F968()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_22_12(*(v2 + 256));
  MLImageClassifier.ModelParameters.algorithm.getter(v0);
  v3 = OUTLINED_FUNCTION_8_24();
  sub_237AA3054(v3, v1, v4);
  v5 = swift_task_alloc();
  *(v2 + 576) = v5;
  *v5 = v2;
  OUTLINED_FUNCTION_17_16(v5);

  return sub_237A636DC();
}

uint64_t sub_237A9FA08()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  OUTLINED_FUNCTION_18();
  v5 = v4;
  OUTLINED_FUNCTION_95();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_3();
  *v8 = v7;
  v5[68] = v3;
  v5[69] = v0;

  if (v0)
  {

    OUTLINED_FUNCTION_11();

    return MEMORY[0x2822009F8](v9);
  }

  else
  {
    OUTLINED_FUNCTION_13_19(dword_237C16970);
    v15 = v10;
    v11 = swift_task_alloc();
    v5[70] = v11;
    *v11 = v7;
    v11[1] = sub_237A9FBB4;
    v12 = v5[62];
    v13 = v5[31];

    return v15(v13, v12, v3, 0, 0);
  }
}

uint64_t sub_237A9FBB4()
{
  OUTLINED_FUNCTION_33();
  v2 = *v1;
  OUTLINED_FUNCTION_3();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 568) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_237A9FD24()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_22_12(*(v2 + 248));
  MLImageClassifier.ModelParameters.algorithm.getter(v0);
  v3 = OUTLINED_FUNCTION_8_24();
  sub_237AA3054(v3, v1, v4);
  v5 = swift_task_alloc();
  *(v2 + 576) = v5;
  *v5 = v2;
  OUTLINED_FUNCTION_17_16(v5);

  return sub_237A636DC();
}

uint64_t sub_237A9FDC4()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  v3 = v2;
  OUTLINED_FUNCTION_95();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 584) = v5;
  *(v3 + 592) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_237A9FED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_25_12();
  OUTLINED_FUNCTION_33_8();
  v19 = *(v18 + 592);
  v20 = *(v18 + 584);
  v21 = *(v18 + 448);
  v22 = *(v18 + 240);
  v23 = *(v18 + 200);
  OUTLINED_FUNCTION_10_22();
  sub_237AA2FFC(v24, v25);
  *v23 = v20;
  sub_237AA1928(v21, v22);
  if (v19)
  {
    v58 = v19;
    v26 = *(v18 + 456);

    v27 = *(v18 + 584);
    OUTLINED_FUNCTION_31_10();
    sub_237AA2F34(v18 + 96);
    OUTLINED_FUNCTION_0_39();
    sub_237AA2FFC(v26, v28);
    OUTLINED_FUNCTION_1_36();
    sub_237AA2FFC(v22, v29);

    v30 = *(v18 + 604);
    OUTLINED_FUNCTION_18_20();
    OUTLINED_FUNCTION_3_37();
    sub_237AA2FFC(v27 + v21, v31);
    sub_237AA2FFC(v21 + v30, v26);
    OUTLINED_FUNCTION_24_14();
    OUTLINED_FUNCTION_49_3();
    OUTLINED_FUNCTION_6_29();
    OUTLINED_FUNCTION_41_7();

    OUTLINED_FUNCTION_8();
  }

  else
  {
    v32 = *(v18 + 512);
    v33 = *(v18 + 600);
    v34 = *(v18 + 240);
    v35 = *(v18 + 200);

    sub_2379DC1F8(v34, v35 + v33);
    if (v32)
    {
      sub_237AA1928(*(v18 + 456), *(v18 + 232));
      v41 = *(v18 + 604);
      v42 = *(v18 + 392);
      v43 = *(v18 + 296);
      v44 = *(v18 + 232);
      v45 = *(v18 + 216);
      v46 = *(v18 + 200);

      sub_237AA27EC(v45);
      sub_237AA2F34(v18 + 96);
      OUTLINED_FUNCTION_0_39();
      sub_237AA2FFC(v42, v47);
      OUTLINED_FUNCTION_1_36();
      sub_237AA2FFC(v43, v48);
      sub_2379DC1F8(v44, v46 + v41);
    }

    else
    {
      v36 = *(v18 + 392);
      v37 = *(v18 + 296);
      v38 = *(v18 + 216);

      sub_237AA27EC(v38);
      sub_237AA2F34(v18 + 96);
      OUTLINED_FUNCTION_0_39();
      sub_237AA2FFC(v36, v39);
      OUTLINED_FUNCTION_1_36();
      sub_237AA2FFC(v37, v40);
    }

    OUTLINED_FUNCTION_49_3();
    a10 = *(v18 + 288);
    a11 = *(v18 + 256);
    a12 = *(v18 + 248);
    a13 = *(v18 + 240);
    v58 = *(v18 + 232);

    OUTLINED_FUNCTION_8();
  }

  OUTLINED_FUNCTION_23_16();

  return v50(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12, a13, v58, a15, a16, a17, a18);
}

uint64_t sub_237AA01D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_25_12();
  OUTLINED_FUNCTION_33_8();
  v21 = *(v19 + 392);
  sub_237AA27EC(*(v19 + 216));
  OUTLINED_FUNCTION_0_39();
  sub_237AA2FFC(v21, v22);
  OUTLINED_FUNCTION_11_24();
  OUTLINED_FUNCTION_2_40();
  sub_237AA2FFC(v20 + v18, v23);
  OUTLINED_FUNCTION_47_8();
  OUTLINED_FUNCTION_4_33();

  OUTLINED_FUNCTION_14_18();
  OUTLINED_FUNCTION_23_16();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_237AA02D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_25_12();
  OUTLINED_FUNCTION_33_8();
  OUTLINED_FUNCTION_31_10();
  sub_237AA2F34(v21 + 96);
  OUTLINED_FUNCTION_0_39();
  sub_237AA2FFC(v19, v23);
  OUTLINED_FUNCTION_1_36();
  sub_237AA2FFC(v18, v24);
  OUTLINED_FUNCTION_11_24();
  OUTLINED_FUNCTION_2_40();
  sub_237AA2FFC(v22 + v20, v25);
  OUTLINED_FUNCTION_47_8();
  OUTLINED_FUNCTION_4_33();

  OUTLINED_FUNCTION_14_18();
  OUTLINED_FUNCTION_23_16();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_237AA03DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_25_12();
  OUTLINED_FUNCTION_33_8();
  OUTLINED_FUNCTION_31_10();
  sub_237AA2F34(v21 + 96);
  OUTLINED_FUNCTION_0_39();
  sub_237AA2FFC(v19, v23);
  OUTLINED_FUNCTION_1_36();
  sub_237AA2FFC(v18, v24);
  OUTLINED_FUNCTION_11_24();
  OUTLINED_FUNCTION_2_40();
  sub_237AA2FFC(v22 + v20, v25);
  OUTLINED_FUNCTION_47_8();
  OUTLINED_FUNCTION_4_33();

  OUTLINED_FUNCTION_14_18();
  OUTLINED_FUNCTION_23_16();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_237AA04E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_25_12();
  OUTLINED_FUNCTION_33_8();
  OUTLINED_FUNCTION_31_10();
  sub_237AA2F34(v21 + 96);
  OUTLINED_FUNCTION_0_39();
  sub_237AA2FFC(v19, v23);
  OUTLINED_FUNCTION_1_36();
  sub_237AA2FFC(v18, v24);
  OUTLINED_FUNCTION_11_24();
  OUTLINED_FUNCTION_2_40();
  sub_237AA2FFC(v22 + v20, v25);
  OUTLINED_FUNCTION_47_8();
  OUTLINED_FUNCTION_4_33();

  OUTLINED_FUNCTION_14_18();
  OUTLINED_FUNCTION_23_16();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_237AA05F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_25_12();
  OUTLINED_FUNCTION_33_8();
  OUTLINED_FUNCTION_31_10();
  sub_237AA2F34(v21 + 96);
  OUTLINED_FUNCTION_0_39();
  sub_237AA2FFC(v19, v23);
  OUTLINED_FUNCTION_1_36();
  sub_237AA2FFC(v18, v24);
  OUTLINED_FUNCTION_11_24();
  OUTLINED_FUNCTION_2_40();
  sub_237AA2FFC(v22 + v20, v25);
  OUTLINED_FUNCTION_47_8();
  OUTLINED_FUNCTION_4_33();

  OUTLINED_FUNCTION_14_18();
  OUTLINED_FUNCTION_23_16();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_237AA0700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_25_12();
  OUTLINED_FUNCTION_33_8();
  OUTLINED_FUNCTION_31_10();
  sub_237AA2F34(v21 + 96);
  OUTLINED_FUNCTION_0_39();
  sub_237AA2FFC(v19, v23);
  OUTLINED_FUNCTION_1_36();
  sub_237AA2FFC(v18, v24);
  OUTLINED_FUNCTION_11_24();
  OUTLINED_FUNCTION_2_40();
  sub_237AA2FFC(v22 + v20, v25);
  OUTLINED_FUNCTION_47_8();
  OUTLINED_FUNCTION_4_33();

  OUTLINED_FUNCTION_14_18();
  OUTLINED_FUNCTION_23_16();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_237AA080C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_25_12();
  OUTLINED_FUNCTION_33_8();
  v20 = v18[49];
  v22 = v18[37];
  v21 = v18[38];
  sub_237AA27EC(v18[27]);
  OUTLINED_FUNCTION_10_22();
  sub_237AA2FFC(v21, v23);
  sub_237AA2F34((v18 + 12));
  OUTLINED_FUNCTION_0_39();
  sub_237AA2FFC(v20, v24);
  OUTLINED_FUNCTION_1_36();
  sub_237AA2FFC(v22, v25);
  OUTLINED_FUNCTION_11_24();
  OUTLINED_FUNCTION_2_40();
  sub_237AA2FFC(v19 + v22, v26);
  OUTLINED_FUNCTION_47_8();
  OUTLINED_FUNCTION_24_14();
  OUTLINED_FUNCTION_4_33();

  OUTLINED_FUNCTION_14_18();
  OUTLINED_FUNCTION_23_16();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t MLImageClassifier.init(trainingData:parameters:)(uint64_t a1, uint64_t a2)
{
  v6 = OUTLINED_FUNCTION_146();
  v7 = type metadata accessor for MLImageClassifier(v6);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  v11 = (v10 - v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9C8, &qword_237C0B6A0);
  OUTLINED_FUNCTION_42_4();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_48_8();
  v16 = (v2 + v15);
  sub_237C06FAC();
  type metadata accessor for MLClassifierMetrics.Precomputed(0);
  sub_2379E51D0(v4);
  sub_2379E5C70(v4);
  (*(v13 + 8))(v4, v3);
  *v16 = 0;
  type metadata accessor for MLClassifierMetrics.Contents(0);
  swift_storeEnumTagMultiPayload();
  v17 = *(v8 + 36);
  sub_2379E8AF0();
  v18 = swift_allocError();
  *v19 = 0xD0000000000000C0;
  v19[1] = 0x8000000237C17B10;
  OUTLINED_FUNCTION_36_7(v18, v19);
  sub_237A9E314(a2, v29);
  sub_237A9E314(v29, __src);
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  memcpy((v20 + 24), __src, 0x50uLL);
  v21 = v30;
  sub_2379DD724(&unk_237C100A0, v20);

  sub_237AA27EC(a2);
  sub_237AA27EC(v29);
  if (v21)
  {
    OUTLINED_FUNCTION_3_37();
    sub_237AA2FFC(v16, v22);
    return sub_237AA2FFC(v2 + v17, v11);
  }

  else
  {
    sub_237AA2FFC(v16, type metadata accessor for MLClassifierMetrics);
    sub_237AA2FFC(v2 + v17, type metadata accessor for MLClassifierMetrics);
    OUTLINED_FUNCTION_9_23();
    v24 = OUTLINED_FUNCTION_30();
    return sub_237AA3054(v24, v25, v26);
  }
}

uint64_t sub_237AA0BD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  return MEMORY[0x2822009F8](sub_237AA0BF8);
}

uint64_t sub_237AA0BF8()
{
  OUTLINED_FUNCTION_49();
  v1 = v0[14];
  sub_237B8AEC4(v0[13]);
  sub_237A9E314(v1, (v0 + 2));

  sub_237B43A98(v2);
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  v0[15] = v3;
  *v3 = v4;
  OUTLINED_FUNCTION_35_7(v3);

  return sub_237A9E8F8();
}

uint64_t sub_237AA0CB0()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 128) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_11();

    return MEMORY[0x2822009F8](v7);
  }

  else
  {
    OUTLINED_FUNCTION_8();

    return v8();
  }
}

uint64_t sub_237AA0DC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_237AA0E64;

  return sub_237AA0FD8();
}

uint64_t sub_237AA0E64()
{
  OUTLINED_FUNCTION_33();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_18();
  v7 = v6;
  OUTLINED_FUNCTION_95();
  *v8 = v7;
  v9 = *v1;
  OUTLINED_FUNCTION_3();
  *v10 = v9;

  if (v0)
  {
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    *(v7 + 32) = v3;
    *(v7 + 40) = v5;
    OUTLINED_FUNCTION_11();

    return MEMORY[0x2822009F8](v13);
  }
}

uint64_t sub_237AA0FA4()
{
  *v0[1].i64[0] = vextq_s8(v0[2], v0[2], 8uLL);
  OUTLINED_FUNCTION_8();
  return v1();
}

uint64_t sub_237AA0FD8()
{
  OUTLINED_FUNCTION_9();
  v0[2] = v1;
  v0[3] = v2;
  v3 = type metadata accessor for MLImageClassifier.DataSource(0);
  OUTLINED_FUNCTION_20(v3);
  v0[4] = OUTLINED_FUNCTION_19();
  v4 = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(0);
  v0[5] = v4;
  OUTLINED_FUNCTION_20(v4);
  v0[6] = OUTLINED_FUNCTION_19();
  v5 = sub_237C06AEC();
  v0[7] = v5;
  OUTLINED_FUNCTION_1(v5);
  v0[8] = v6;
  v0[9] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_237AA10C4()
{
  v1 = v0[6];
  v2 = v0[3];
  sub_237C06ADC();
  OUTLINED_FUNCTION_28_8();
  sub_237AA2CDC(v2, v1, v3);
  OUTLINED_FUNCTION_30();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_237AA3054(v0[6], v0[4], type metadata accessor for MLImageClassifier.DataSource);

      sub_237B82504();
      sub_237B8AEC4(v13);
      v8 = v14;

      v15 = OUTLINED_FUNCTION_5_29();
      sub_237AA2FFC(v15, v16);
      goto LABEL_6;
    case 2u:
      v11 = *v0[6];

      sub_237B8AEC4(v11);
      v8 = v12;

LABEL_6:
      v10 = v0[2];
      break;
    case 3u:
      v10 = v0[2];

      v8 = MEMORY[0x277D84F90];
      break;
    default:
      v4 = v0[2];

      v5 = OUTLINED_FUNCTION_30();
      v8 = sub_237BF634C(v5, v6, v7, v4);
      v10 = v9;

      break;
  }

  v0[10] = v8;
  v0[11] = v10;
  OUTLINED_FUNCTION_13_19(&qword_237C16920);
  v20 = v17;
  v18 = swift_task_alloc();
  v0[12] = v18;
  *v18 = v0;
  v18[1] = sub_237AA1340;
  OUTLINED_FUNCTION_11();

  return v20();
}

uint64_t sub_237AA1340()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_18();
  v3 = v2;
  OUTLINED_FUNCTION_95();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3();
  *v6 = v5;
  v3[13] = v7;
  v3[14] = v0;

  if (v0)
  {

    OUTLINED_FUNCTION_11();

    return MEMORY[0x2822009F8](v8);
  }

  else
  {
    OUTLINED_FUNCTION_13_19(&qword_237C16920);
    v12 = v9;
    v10 = swift_task_alloc();
    v3[15] = v10;
    *v10 = v5;
    v10[1] = sub_237AA14D8;
    OUTLINED_FUNCTION_11();

    return v12();
  }
}

uint64_t sub_237AA14D8()
{
  OUTLINED_FUNCTION_49();
  v3 = v2;
  OUTLINED_FUNCTION_18();
  v5 = v4;
  OUTLINED_FUNCTION_95();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_3();
  *v8 = v7;
  *(v5 + 128) = v0;

  if (v0)
  {
  }

  else
  {
    *(v5 + 136) = v3;
  }

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_237AA1600()
{
  OUTLINED_FUNCTION_49();
  (*(v0[8] + 8))(v0[9], v0[7]);

  v1 = v0[1];
  v2 = v0[17];
  v3 = v0[13];

  return v1(v3, v2);
}

uint64_t sub_237AA16A0()
{
  OUTLINED_FUNCTION_49();
  v0 = OUTLINED_FUNCTION_44_6();
  v1(v0);

  OUTLINED_FUNCTION_8();

  return v2();
}

uint64_t sub_237AA1724()
{
  OUTLINED_FUNCTION_49();
  v0 = OUTLINED_FUNCTION_44_6();
  v1(v0);

  OUTLINED_FUNCTION_8();

  return v2();
}

uint64_t sub_237AA17A8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_237A37A64();
  if ((result & 1) == 0)
  {
    sub_237A38140(12, 0xD000000000000010, 0x8000000237C1A2D0, a1);
    sub_237A38140(12, 0xD000000000000011, 0x8000000237C1A2F0, a2);
    sub_237A38140(12, 0x726574492078614DLL, 0xEE00736E6F697461, *a3);
    sub_237A37AEC(12, 0xD000000000000014, 0x8000000237C1A310, a3[1]);
    MLImageClassifier.ModelParameters.algorithm.getter(v8);
    v10 = MLImageClassifier.ModelParameters.ModelAlgorithmType.description.getter();
    v12 = v11;
    sub_237AA2FFC(v8, type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType);
    sub_237A3825C(12, 0x687469726F676C41, 0xE90000000000006DLL, v10, v12);
  }

  return result;
}

uint64_t sub_237AA1928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v3;
  v39 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9C8, &qword_237C0B6A0);
  v37 = *(v6 - 8);
  v38 = v6;
  MEMORY[0x28223BE20](v6);
  v36 = &v33 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B258, &qword_237C101A0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v33 - v10;
  swift_getKeyPath();
  v12 = *(a1 + 16);
  v44 = v8;
  v33 = a1;
  if (v12)
  {
    v34 = v2;
    v35 = v3;
    v45 = MEMORY[0x277D84F90];
    sub_237C08FCC();
    v41 = v9;
    v13 = v12;
    v15 = v9 + 16;
    v14 = *(v9 + 16);
    v16 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v42 = *(v15 + 56);
    v43 = v14;
    v40 = v13;
    v17 = v13;
    do
    {
      v43(v11, v16, v8);
      swift_getAtKeyPath();
      (*(v15 - 8))(v11, v8);
      sub_237C08F8C();
      sub_237C08FEC();
      v8 = v44;
      sub_237C08FFC();
      sub_237C08F9C();
      v16 += v42;
      v17 = (v17 - 1);
    }

    while (v17);

    v18 = v45;
    v12 = v40;
    v9 = v41;
    v4 = v35;
  }

  else
  {

    v18 = MEMORY[0x277D84F90];
  }

  v19 = sub_237ADA570(v18);

  if (!v4)
  {
    KeyPath = swift_getKeyPath();
    if (v12)
    {
      v43 = KeyPath;
      v34 = v19;
      v35 = 0;
      v47 = MEMORY[0x277D84F90];
      v22 = v12;
      sub_237AC8A74();
      v23 = v47;
      v25 = *(v9 + 16);
      v24 = v9 + 16;
      v26 = v33 + ((*(v24 + 64) + 32) & ~*(v24 + 64));
      v41 = *(v24 + 56);
      v42 = v25;
      v40 = (v24 - 8);
      do
      {
        v42(v11, v26, v8);
        swift_getAtKeyPath();
        (*v40)(v11, v8);
        v27 = v45;
        v28 = v46;
        v47 = v23;
        v29 = *(v23 + 16);
        if (v29 >= *(v23 + 24) >> 1)
        {
          sub_237AC8A74();
          v23 = v47;
        }

        *(v23 + 16) = v29 + 1;
        v30 = v23 + 16 * v29;
        *(v30 + 32) = v27;
        *(v30 + 40) = v28;
        v26 += v41;
        v22 = (v22 - 1);
        v8 = v44;
      }

      while (v22);

      v19 = v34;
    }

    else
    {

      v23 = MEMORY[0x277D84F90];
    }

    sub_237B42F98(v31);
    v45 = v19;
    v47 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE60, &qword_237C0D000);
    sub_237AA2F98();
    v32 = v36;
    sub_237C06F9C();
    (*(v37 + 32))(v39, v32, v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9F8, &unk_237C0E1C0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for MLClassifierMetrics.Contents(0);
    return swift_storeEnumTagMultiPayload();
  }

  return result;
}

uint64_t sub_237AA1DB4()
{
  OUTLINED_FUNCTION_9();
  v0[34] = v1;
  v0[35] = v2;
  v3 = type metadata accessor for MLClassifierMetrics(0);
  v0[36] = v3;
  OUTLINED_FUNCTION_20(v3);
  v0[37] = OUTLINED_FUNCTION_19();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B660, &qword_237C0DD00);
  OUTLINED_FUNCTION_20(v4);
  v0[38] = OUTLINED_FUNCTION_134_0();
  v0[39] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C450, &qword_237C10168);
  OUTLINED_FUNCTION_20(v5);
  v0[40] = OUTLINED_FUNCTION_19();
  v6 = type metadata accessor for MLImageClassifier(0);
  v0[41] = v6;
  OUTLINED_FUNCTION_20(v6);
  v0[42] = OUTLINED_FUNCTION_19();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C458, &qword_237C10170);
  OUTLINED_FUNCTION_20(v7);
  v0[43] = OUTLINED_FUNCTION_19();
  v8 = _s20PersistentParametersVMa_5(0);
  v0[44] = v8;
  OUTLINED_FUNCTION_20(v8);
  v0[45] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_237AA1F0C()
{
  OUTLINED_FUNCTION_49();
  v1 = v0[43];
  v2 = v0[44];
  v3 = v0[35];
  v4 = OBJC_IVAR____TtC8CreateML38ImageClassifierTrainingSessionDelegate_trainingParameters;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_2379FC864(v3 + v4, v1, &qword_27DE9C458, &qword_237C10170);
  result = __swift_getEnumTagSinglePayload(v1, 1, v2);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = v0[40];
  v7 = v0[35];
  sub_237AA3054(v0[43], v0[45], _s20PersistentParametersVMa_5);
  sub_237B85BBC();
  v8 = OBJC_IVAR____TtC8CreateML38ImageClassifierTrainingSessionDelegate_model;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_2379FC864(v7 + v8, v6, &qword_27DE9C450, &qword_237C10168);
  v9 = _s5ModelVMa_1(0);
  result = __swift_getEnumTagSinglePayload(v6, 1, v9);
  if (result == 1)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_237A9E314((v0 + 2), (v0 + 12));
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  v0[46] = v10;
  *v10 = v11;
  v10[1] = sub_237AA20A0;

  return sub_237BBB194();
}

uint64_t sub_237AA20A0()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 376) = v0;

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_237AA2198()
{
  v1 = v0[39];
  v3 = v0[35];
  v2 = v0[36];
  OUTLINED_FUNCTION_9_23();
  sub_237AA3054(v4, v5, v6);
  v7 = OBJC_IVAR____TtC8CreateML38ImageClassifierTrainingSessionDelegate_trainingMetrics;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_2379FC864(v3 + v7, v1, &qword_27DE9B660, &qword_237C0DD00);
  result = __swift_getEnumTagSinglePayload(v1, 1, v2);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v9 = v0[41];
    v11 = v0[38];
    v10 = v0[39];
    v13 = v0[35];
    v12 = v0[36];
    v14 = v0[34];
    sub_237AA27EC((v0 + 2));
    OUTLINED_FUNCTION_30_11();
    sub_2379DC1F8(v10, v14 + *(v9 + 24));
    v15 = OBJC_IVAR____TtC8CreateML38ImageClassifierTrainingSessionDelegate_validationMetrics;
    OUTLINED_FUNCTION_71();
    swift_beginAccess();
    sub_2379FC864(v13 + v15, v11, &qword_27DE9B660, &qword_237C0DD00);

    if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
    {
      sub_237AA2C74(v0[38]);
    }

    else
    {
      v16 = v0[41];
      v17 = v0[37];
      v18 = v0[34];
      sub_237AA3054(v0[38], v17, type metadata accessor for MLClassifierMetrics);
      sub_2379DC1F8(v17, v18 + *(v16 + 28));
    }

    OUTLINED_FUNCTION_8();

    return v19();
  }

  return result;
}

uint64_t sub_237AA2384()
{

  sub_237AA27EC(v0 + 16);
  OUTLINED_FUNCTION_30_11();

  OUTLINED_FUNCTION_8();

  return v1();
}

unint64_t MLImageClassifier.debugDescription.getter()
{
  type metadata accessor for MLClassifierMetrics.Contents(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_0();
  v4 = v3 - v2;
  v5 = MLImageClassifier.ModelParameters.description.getter();
  v7 = v6;
  v8 = type metadata accessor for MLImageClassifier(0);
  v9 = MLClassifierMetrics.description.getter();
  v11 = v10;
  sub_237AA2CDC(v0 + *(v8 + 28), v4, type metadata accessor for MLClassifierMetrics.Contents);
  LODWORD(v8) = swift_getEnumCaseMultiPayload();
  sub_237AA2FFC(v4, type metadata accessor for MLClassifierMetrics.Contents);
  v12 = MLClassifierMetrics.description.getter();
  v14 = v13;
  MEMORY[0x2383DC360](v5, v7);

  MEMORY[0x2383DC360](v9, v11);
  MEMORY[0x2383DC360](0xD00000000000001ELL, 0x8000000237C16EE0);

  if (v8 <= 1)
  {
    MEMORY[0x2383DC360](v12, v14);
    MEMORY[0x2383DC360](0xD000000000000020, 0x8000000237C16F00);
  }

  return 0xD00000000000001CLL;
}

id MLImageClassifier.playgroundDescription.getter@<X0>(void *a1@<X8>)
{
  v2 = sub_2379E8EE0(0, &qword_27DE9AA20, 0x277CCA898);
  v3 = MLImageClassifier.debugDescription.getter();
  result = sub_2379E3E14(v3, v4);
  a1[3] = v2;
  *a1 = result;
  return result;
}

uint64_t sub_237AA26A4@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B258, &qword_237C101A0);
  result = sub_237C06C7C();
  *a1 = v3;
  return result;
}

uint64_t sub_237AA26F4(id *a1)
{
  v1 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B258, &qword_237C101A0);
  return sub_237C06C8C();
}

void *sub_237AA2748@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B258, &qword_237C101A0);
  result = sub_237C06C4C();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_237AA2798(uint64_t *a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B258, &qword_237C101A0);
  return sub_237C06C5C();
}

uint64_t sub_237AA2844()
{
  OUTLINED_FUNCTION_49();
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_2379D9D48;
  v3 = OUTLINED_FUNCTION_40_7();

  return sub_237A9E6E4(v3, v4, v5);
}

uint64_t objectdestroyTm_3()
{

  if (v0[8])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 5);
  }

  if (v0[12])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 9);
  }

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_237AA2938()
{
  OUTLINED_FUNCTION_49();
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_2379D9D48;
  v3 = OUTLINED_FUNCTION_40_7();

  return sub_237AA0BD4(v3, v4, v5);
}

id sub_237AA29D4@<X0>(void *a1@<X8>)
{
  result = MLImageClassifier.model.getter();
  *a1 = result;
  return result;
}

uint64_t sub_237AA2A18(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for MLClassifierMetrics(0);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 24);
    }

    else
    {
      v9 = _s5ModelVMa_1(0);
      v10 = *(a3 + 32);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

void *sub_237AA2AF8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for MLClassifierMetrics(0);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 24);
    }

    else
    {
      v9 = _s5ModelVMa_1(0);
      v10 = *(a4 + 32);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_237AA2BC0(uint64_t a1)
{
  result = sub_2379E8EE0(319, &qword_27DE9AA38, 0x277CBFF20);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for MLClassifierMetrics(319);
    if (v3 <= 0x3F)
    {
      result = _s5ModelVMa_1(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_237AA2C74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B660, &qword_237C0DD00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237AA2CDC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  v4 = OUTLINED_FUNCTION_37_0();
  v5(v4);
  return a2;
}

uint64_t sub_237AA2D38()
{
  v1 = *(type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload != 1)
  {
    goto LABEL_7;
  }

  type metadata accessor for MLImageClassifier.DataSource(0);
  v4 = swift_getEnumCaseMultiPayload();
  if (v4 == 2)
  {
LABEL_6:
  }

  else if (v4 <= 1)
  {
    sub_237C05ADC();
    OUTLINED_FUNCTION_4();
    (*(v5 + 8))(v0 + v2);
  }

LABEL_7:

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_237AA2E64()
{
  OUTLINED_FUNCTION_49();
  v1 = type metadata accessor for MLImageClassifier.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_20(v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_35();
  *(v0 + 16) = v2;
  *v2 = v3;
  v2[1] = sub_2379D6854;
  v4 = OUTLINED_FUNCTION_40_7();

  return sub_237AA0DC4(v4, v5, v6);
}

unint64_t sub_237AA2F98()
{
  result = qword_27DE9B048;
  if (!qword_27DE9B048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9AE60, &qword_237C0D000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9B048);
  }

  return result;
}

uint64_t sub_237AA2FFC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_237AA3054(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  v4 = OUTLINED_FUNCTION_37_0();
  v5(v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_4_33()
{
}

uint64_t OUTLINED_FUNCTION_11_24()
{
  v2 = *(v0 + 200) + 8;

  return sub_237AA27EC(v2);
}

uint64_t OUTLINED_FUNCTION_18_20()
{
  v2 = *(v0 + 200) + 8;

  return sub_237AA27EC(v2);
}

uint64_t OUTLINED_FUNCTION_22_12(uint64_t a1)
{
  v3 = *(v1 + 200) + *(*(v1 + 424) + 32);

  return sub_237AA3054(a1, v3, _s5ModelVMa_1);
}

uint64_t OUTLINED_FUNCTION_24_14()
{
  v2 = *(v0 + 200) + *(*(v0 + 424) + 32);

  return sub_237AA2FFC(v2, _s5ModelVMa_1);
}

uint64_t OUTLINED_FUNCTION_29_7@<X0>(uint64_t a1@<X8>)
{

  return sub_237AA2CDC(v2 + a1, v1, type metadata accessor for MLClassifierMetrics);
}

uint64_t OUTLINED_FUNCTION_30_11()
{

  return sub_237AA2FFC(v0, _s20PersistentParametersVMa_5);
}

uint64_t OUTLINED_FUNCTION_31_10()
{
  v2 = *(v0 + 216);

  return sub_237AA27EC(v2);
}

uint64_t OUTLINED_FUNCTION_36_7(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0;
  *(v2 + v3) = a1;

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_41_7()
{
}

uint64_t OUTLINED_FUNCTION_47_8()
{

  return sub_237AA2FFC(v2 + v1, v0);
}

uint64_t sub_237AA349C(uint64_t a1)
{
  v2 = MEMORY[0x277D84F98];
  v4 = a1 + 64;
  v3 = *(a1 + 64);
  v5 = 1 << *(a1 + 32);
  v36 = MEMORY[0x277D84F98];
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & v3;
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  while (v7)
  {
LABEL_10:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v12 = v11 | (v9 << 6);
    v13 = *(*(a1 + 48) + v12);
    sub_2379FED88(*(a1 + 56) + 32 * v12, v34 + 8);
    LOBYTE(v34[0]) = v13;
    v31 = v34[0];
    v32 = v34[1];
    v33 = v35;
    sub_2379FED88(&v31 + 8, v28);
    if (swift_dynamicCast())
    {
      v14 = *&v29[0];
      v30 = v33;
      v29[0] = v31;
      v29[1] = v32;
      v15 = *(v2 + 16);
      if (*(v2 + 24) <= v15)
      {
        sub_237AC1104(v15 + 1, 1);
        v2 = v36;
      }

      v16 = v29[0];
      sub_237C093CC();
      sub_237C0878C();

      v17 = sub_237C0940C();
      v18 = v2 + 64;
      v19 = -1 << *(v2 + 32);
      v20 = v17 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v2 + 64 + 8 * (v20 >> 6))) != 0)
      {
        v22 = __clz(__rbit64((-1 << v20) & ~*(v2 + 64 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v23 = 0;
        v24 = (63 - v19) >> 6;
        do
        {
          if (++v21 == v24 && (v23 & 1) != 0)
          {
            goto LABEL_27;
          }

          v25 = v21 == v24;
          if (v21 == v24)
          {
            v21 = 0;
          }

          v23 |= v25;
          v26 = *(v18 + 8 * v21);
        }

        while (v26 == -1);
        v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      }

      *(v18 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      *(*(v2 + 48) + v22) = v16;
      *(*(v2 + 56) + 8 * v22) = v14;
      ++*(v2 + 16);
      __swift_destroy_boxed_opaque_existential_1(v29 + 1);
    }

    else
    {
      *&v29[0] = 0;
      BYTE8(v29[0]) = 1;
      sub_2379F6DD8(&v31, &qword_27DE9BFF0, &qword_237C0F240);
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
      JUMPOUT(0x237AA38CCLL);
    }

    if (v10 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_10;
    }
  }

  return v2;
}

uint64_t MLProgress.totalItemCount.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t MLProgress.metrics.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t MLProgress.init(phase:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
  sub_237A84BFC();
  result = sub_237C085AC();
  *(a2 + 40) = result;
  *a2 = 0;
  *(a2 + 8) = v3;
  return result;
}

void MLProgress.init(progress:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_237A84BFC();
  v4 = sub_237C085AC();
  isUniquelyReferenced_nonNull_native = OUTLINED_FUNCTION_7_25();
  type metadata accessor for ProgressUserInfoKey(0);
  v7 = v6;
  sub_237AA42EC();
  sub_237C0857C();

  if (qword_27DE9A590 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_10_24(qword_27DE9C468, v8, v9, v10, v11, v12, v13, v14, v99, v105, v112, v118, v124, v129, v135, *v141, *&v141[8], *&v141[16], *&v141[24], v142);

  if (v143)
  {
    OUTLINED_FUNCTION_0_40(v15, v16, v17, MEMORY[0x277D839F8], v18, v19, v20, v21, v100, v106, v113, v119, v125, v130, v136, v141[0]);
    if (swift_dynamicCast())
    {
      v22 = OUTLINED_FUNCTION_7_25();
      OUTLINED_FUNCTION_1_37(v22);

      if (qword_27DE9A598 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_10_24(qword_27DE9C470, v23, v24, v25, v26, v27, v28, v29, v101, v107, v114, v120, *v141, v131, v137, *v141, *&v141[8], *&v141[16], *&v141[24], v142);

      OUTLINED_FUNCTION_0_40(v30, v31, v32, &type metadata for MLPhase, v33, v34, v35, v36, v102, v108, v115, v121, v126, v132, v138, v141[0]);
      if (swift_dynamicCast())
      {
        v122 = v141[0];
        v37 = OUTLINED_FUNCTION_7_25();
        OUTLINED_FUNCTION_1_37(v37);

        if (qword_27DE9A5A0 != -1)
        {
          goto LABEL_63;
        }

        while (1)
        {
          OUTLINED_FUNCTION_10_24(qword_27DE9C478, v38, v39, v40, v41, v42, v43, v44, v103, v109, v116, v122, v127, v133, v139, *v141, *&v141[8], *&v141[16], *&v141[24], v142);

          if (!v143)
          {
            goto LABEL_16;
          }

          OUTLINED_FUNCTION_0_40(v45, v46, v47, MEMORY[0x277D83B88], v48, v49, v50, v51, v104, v110, v117, v123, v128, v134, v140, v141[0]);
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_17;
          }

          v116 = *v141;
          v52 = OUTLINED_FUNCTION_7_25();
          OUTLINED_FUNCTION_1_37(v52);

          if (qword_27DE9A5A8 != -1)
          {
LABEL_65:
            swift_once();
          }

          OUTLINED_FUNCTION_10_24(qword_27DE9C480, v53, v54, v55, v56, v57, v58, v59, v103, v109, v116, v122, v127, v133, v139, *v141, *&v141[8], *&v141[16], *&v141[24], v142);

          v133 = v7;
          if (v143)
          {
            OUTLINED_FUNCTION_0_40(v60, v61, v62, MEMORY[0x277D83B88], v63, v64, v65, v66, v103, v111, v116, v122, v127, v7, v139, v141[0]);
            v67 = swift_dynamicCast();
            v68 = *v141;
            if (!v67)
            {
              v68 = 0;
            }

            v109 = v68;
            v69 = v67 ^ 1;
          }

          else
          {
            sub_2379F6DD8(&v142, &qword_27DE9A998, &unk_237C0C100);
            v109 = 0;
            v69 = 1;
          }

          v70 = MEMORY[0x277D839F8];
          v7 = 0;
          v144 = v69;
          while (1)
          {
            v71 = byte_284AC0550[v7 + 32];
            if (v71 == 6 && sub_237C05ADC() != v70)
            {
              goto LABEL_57;
            }

            v72 = OUTLINED_FUNCTION_7_25();
            v73 = sub_237C0857C();

            switch(v71)
            {
              case 1:
                v74 = &qword_27DE9C490;
                if (qword_27DE9A5B8 != -1)
                {
                  swift_once();
                  v74 = &qword_27DE9C490;
                }

                break;
              case 2:
                v74 = &qword_27DE9C498;
                if (qword_27DE9A5C0 != -1)
                {
                  swift_once();
                  v74 = &qword_27DE9C498;
                }

                break;
              case 3:
                v74 = &qword_27DE9C4A0;
                if (qword_27DE9A5C8 != -1)
                {
                  swift_once();
                  v74 = &qword_27DE9C4A0;
                }

                break;
              case 4:
                v74 = &qword_27DE9C4A8;
                if (qword_27DE9A5D0 != -1)
                {
                  swift_once();
                  v74 = &qword_27DE9C4A8;
                }

                break;
              case 5:
                v74 = &qword_27DE9C4B0;
                if (qword_27DE9A5D8 != -1)
                {
                  swift_once();
                  v74 = &qword_27DE9C4B0;
                }

                break;
              case 6:
                v74 = &qword_27DE9C4B8;
                if (qword_27DE9A5E0 != -1)
                {
                  swift_once();
                  v74 = &qword_27DE9C4B8;
                }

                break;
              case 7:
                v74 = &qword_27DE9C4C0;
                if (qword_27DE9A5E8 != -1)
                {
                  swift_once();
                  v74 = &qword_27DE9C4C0;
                }

                break;
              case 8:
                v74 = &qword_27DE9C4C8;
                if (qword_27DE9A5F0 != -1)
                {
                  swift_once();
                  v74 = &qword_27DE9C4C8;
                }

                break;
              case 9:
                v74 = &qword_27DE9C4D0;
                if (qword_27DE9A5F8 != -1)
                {
                  swift_once();
                  v74 = &qword_27DE9C4D0;
                }

                break;
              case 10:
                v74 = &qword_27DE9C4D8;
                if (qword_27DE9A600 != -1)
                {
                  swift_once();
                  v74 = &qword_27DE9C4D8;
                }

                break;
              default:
                v74 = &qword_27DE9C488;
                if (qword_27DE9A5B0 != -1)
                {
                  swift_once();
                  v74 = &qword_27DE9C488;
                }

                break;
            }

            v75 = *v74;
            if (*(v73 + 16))
            {
              v76 = sub_237ACDA84();
              if (v77)
              {
                break;
              }
            }

LABEL_56:
            v70 = MEMORY[0x277D839F8];
LABEL_57:
            if (++v7 == 11)
            {

              v98 = v144;
              *a2 = v127;
              a2[1] = v122;
              a2[2] = v116;
              a2[3] = v109;
              a2[4] = v98;
              a2[5] = v4;
              return;
            }
          }

          sub_2379FED88(*(v73 + 56) + 32 * v76, &v142);

          OUTLINED_FUNCTION_0_40(v78, v79, v80, v81, v82, v83, v84, v85, v103, v109, v116, v122, v127, v133, v139, v141[0]);
          v70 = MEMORY[0x277D839F8];
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_57;
          }

          v143 = v70;
          *&v142 = *v141;
          sub_2379DAD24(&v142, v141);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v139 = v4;
          v86 = sub_237ACB370(v71);
          v88 = *(v4 + 16);
          v89 = (v87 & 1) == 0;
          v4 = v88 + v89;
          if (!__OFADD__(v88, v89))
          {
            break;
          }

          __break(1u);
LABEL_63:
          swift_once();
        }

        v90 = v86;
        v91 = v87;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C4E0, &qword_237C10220);
        if (sub_237C090AC())
        {
          v92 = sub_237ACB370(v71);
          if ((v91 & 1) != (v93 & 1))
          {
            sub_237C0932C();
            __break(1u);
            JUMPOUT(0x237AA42C0);
          }

          v90 = v92;
        }

        v4 = v139;
        if (v91)
        {
          v94 = (v139[7] + 32 * v90);
          __swift_destroy_boxed_opaque_existential_1(v94);
          sub_2379DAD24(v141, v94);
        }

        else
        {
          v139[(v90 >> 6) + 8] |= 1 << v90;
          *(v139[6] + v90) = v71;
          sub_2379DAD24(v141, (v139[7] + 32 * v90));
          v95 = v139[2];
          v96 = __OFADD__(v95, 1);
          v97 = v95 + 1;
          if (v96)
          {
            __break(1u);
            goto LABEL_65;
          }

          v139[2] = v97;
        }

        goto LABEL_56;
      }
    }

LABEL_17:
  }

  else
  {
LABEL_16:

    sub_2379F6DD8(&v142, &qword_27DE9A998, &unk_237C0C100);
  }

  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  *a2 = 0u;
}

unint64_t sub_237AA42EC()
{
  result = qword_27DE9A7D0;
  if (!qword_27DE9A7D0)
  {
    type metadata accessor for ProgressUserInfoKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9A7D0);
  }

  return result;
}

CreateML::MLProgress::Metric_optional __swiftcall MLProgress.Metric.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_237C0916C();

  v5 = 11;
  if (v3 < 0xB)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t MLProgress.Metric.rawValue.getter()
{
  result = 1936945004;
  switch(*v0)
  {
    case 1:
      result = 0x4C746E65746E6F63;
      break;
    case 2:
      result = 0x736F4C656C797473;
      break;
    case 3:
      result = 0x7963617275636361;
      break;
    case 4:
      result = 0x69746164696C6176;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0x456D756D6978616DLL;
      break;
    case 9:
      result = 0xD00000000000001ELL;
      break;
    case 0xA:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_237AA4554@<X0>(unint64_t *a1@<X8>)
{
  result = MLProgress.Metric.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_237AA462C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_6_30();
  v6 = a1 == v4 && a2 == v5;
  if (v6 || (OUTLINED_FUNCTION_8_20(v4, v5) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v8 = a1 == 0x6573616870 && a2 == 0xE500000000000000;
    if (v8 || (OUTLINED_FUNCTION_8_20(0x6573616870, 0xE500000000000000) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v9 = OUTLINED_FUNCTION_4_34();
      v11 = a1 == v9 && a2 == v10;
      if (v11 || (OUTLINED_FUNCTION_8_20(v9, v10) & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x7363697274656DLL && a2 == 0xE700000000000000)
      {

        return 3;
      }

      else
      {
        v13 = OUTLINED_FUNCTION_8_20(0x7363697274656DLL, 0xE700000000000000);

        if (v13)
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

uint64_t sub_237AA4728(uint64_t a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_6_30();
  switch(v3)
  {
    case 1:
      result = 0x6573616870;
      break;
    case 2:
      result = OUTLINED_FUNCTION_4_34();
      break;
    case 3:
      result = 0x7363697274656DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_237AA47E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237AA462C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237AA481C(uint64_t a1)
{
  v2 = sub_237AA5374();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237AA4858(uint64_t a1)
{
  v2 = sub_237AA5374();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLProgress.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C4E8, &qword_237C10228);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v15 - v8;
  sub_237A84BFC();
  sub_237C085AC();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237AA5374();
  sub_237C0946C();
  if (!v2)
  {
    v20 = 0;
    sub_237C0919C();
    v11 = v10;
    v18 = 1;
    sub_237A84B54();
    sub_237C091BC();
    v12 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BF20, &qword_237C0F060);
    v16 = 3;
    sub_237A85304(&qword_27DE9BF28, sub_237A84BA8, MEMORY[0x277D83A30], MEMORY[0x277D83528]);
    sub_237C091BC();
    v14 = sub_237A82D88(v17);

    (*(v6 + 8))(v9, v15);

    *a2 = v11;
    *(a2 + 8) = v12;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = 1;
    *(a2 + 40) = v14;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t MLProgress.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C4F8, &qword_237C10230);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v12 - v8;
  v13 = *(v1 + 8);
  v10 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237AA5374();
  sub_237C0949C();
  v18 = 0;
  sub_237C091FC();
  if (v2)
  {
    return (*(v6 + 8))(v9, v4);
  }

  v17 = v13;
  v16 = 1;
  sub_237A852B0();
  sub_237C0921C();
  v15 = sub_237AA349C(v10);
  v14 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BF20, &qword_237C0F060);
  sub_237A85304(&qword_27DE9BF78, sub_237A85388, MEMORY[0x277D83A08], MEMORY[0x277D83508]);
  sub_237C0921C();
  (*(v6 + 8))(v9, v4);
}

uint64_t sub_237AA4E10()
{
  result = sub_237C086BC();
  qword_27DE9C468 = result;
  return result;
}

uint64_t sub_237AA4E70()
{
  result = sub_237C086BC();
  qword_27DE9C470 = result;
  return result;
}

uint64_t sub_237AA4EC4()
{
  result = sub_237C086BC();
  qword_27DE9C478 = result;
  return result;
}

void *sub_237AA4F20()
{
  result = OUTLINED_FUNCTION_9_24();
  qword_27DE9C480 = result;
  return result;
}

uint64_t sub_237AA4F6C()
{
  result = sub_237C086BC();
  qword_27DE9C488 = result;
  return result;
}

uint64_t sub_237AA4FBC()
{
  result = sub_237C086BC();
  qword_27DE9C490 = result;
  return result;
}

uint64_t sub_237AA501C()
{
  result = sub_237C086BC();
  qword_27DE9C498 = result;
  return result;
}

uint64_t sub_237AA5078()
{
  result = sub_237C086BC();
  qword_27DE9C4A0 = result;
  return result;
}

uint64_t sub_237AA50D0()
{
  OUTLINED_FUNCTION_3_38();
  result = sub_237C086BC();
  qword_27DE9C4A8 = result;
  return result;
}

uint64_t sub_237AA5124()
{
  result = sub_237C086BC();
  qword_27DE9C4B0 = result;
  return result;
}

uint64_t sub_237AA5180()
{
  result = sub_237C086BC();
  qword_27DE9C4B8 = result;
  return result;
}

uint64_t sub_237AA51E4()
{
  result = sub_237C086BC();
  qword_27DE9C4C0 = result;
  return result;
}

uint64_t sub_237AA5234()
{
  result = sub_237C086BC();
  qword_27DE9C4C8 = result;
  return result;
}

uint64_t sub_237AA5288()
{
  OUTLINED_FUNCTION_3_38();
  result = sub_237C086BC();
  qword_27DE9C4D0 = result;
  return result;
}

void *sub_237AA52DC()
{
  result = OUTLINED_FUNCTION_9_24();
  qword_27DE9C4D8 = result;
  return result;
}

id sub_237AA5328(void *a1, void **a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = *a2;

  return v4;
}

unint64_t sub_237AA5374()
{
  result = qword_27DE9C4F0;
  if (!qword_27DE9C4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9C4F0);
  }

  return result;
}

unint64_t sub_237AA53CC()
{
  result = qword_27DE9C500;
  if (!qword_27DE9C500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9C500);
  }

  return result;
}

unint64_t sub_237AA5424()
{
  result = qword_27DE9C508;
  if (!qword_27DE9C508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9C510, &qword_237C10328);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9C508);
  }

  return result;
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

uint64_t sub_237AA549C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_237AA54DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MLProgress.Metric(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for MLProgress.Metric(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x237AA5688);
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

uint64_t getEnumTagSinglePayload for MLDataTable.JoinType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_237AA5744(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x237AA5810);
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

unint64_t sub_237AA5848()
{
  result = qword_27DE9C518;
  if (!qword_27DE9C518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9C518);
  }

  return result;
}

unint64_t sub_237AA58A0()
{
  result = qword_27DE9C520;
  if (!qword_27DE9C520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9C520);
  }

  return result;
}

unint64_t sub_237AA58F8()
{
  result = qword_27DE9C528;
  if (!qword_27DE9C528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9C528);
  }

  return result;
}

unint64_t sub_237AA594C()
{
  result = qword_27DE9C530;
  if (!qword_27DE9C530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9C530);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_37(uint64_t a1)
{

  return sub_237C0857C();
}

id OUTLINED_FUNCTION_7_25()
{

  return [v0 (v1 + 3576)];
}

uint64_t OUTLINED_FUNCTION_9_24()
{

  return sub_237C086BC();
}

double OUTLINED_FUNCTION_10_24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, __int128 a20)
{

  return sub_237AC9BBC(v20, &a20, a1);
}

_BYTE *_s10__DefaultsVwst(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x237AA5B98);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_237AA5BD0(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v70 = a7;
  v63 = a5;
  v64 = a6;
  v66 = a3;
  v10 = sub_237C07AAC();
  MEMORY[0x28223BE20](v10 - 8);
  v60 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_237C076AC();
  MEMORY[0x28223BE20](v12 - 8);
  v58 = (&v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v62 = _s12CausalConv1DVMa(0);
  MEMORY[0x28223BE20](v62);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_237C0798C();
  v16 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_237C07A8C();
  v68 = *(v19 - 8);
  v69 = v19;
  MEMORY[0x28223BE20](v19);
  v61 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v59 = &v53 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v53 - v24;
  v71 = a1;
  v72 = a2;

  MEMORY[0x2383DC360](1684107359, 0xE400000000000000);
  v56 = v72;
  v57 = v71;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
  v26 = swift_allocObject();
  v67 = xmmword_237C0B660;
  *(v26 + 16) = xmmword_237C0B660;
  *(v26 + 32) = v66;
  *(v26 + 40) = a4;
  v27 = swift_allocObject();
  *(v27 + 16) = v67;
  v66 = a1;
  v71 = a1;
  v72 = a2;

  MEMORY[0x2383DC360](0x74756F5F6461705FLL, 0xE800000000000000);
  v28 = v72;
  *(v27 + 32) = v71;
  *(v27 + 40) = v28;
  sub_237AA8EEC(v70, v15, _s12CausalConv1DVMa);
  sub_237C0769C();
  sub_237C07A9C();
  sub_237C076BC();
  v55 = v15;
  sub_237AA8F54(v15, _s12CausalConv1DVMa);
  v29 = *MEMORY[0x277D251B0];
  v30 = *(v16 + 104);
  v60 = (v16 + 104);
  v54 = v30;
  v30(v18, v29, v65);
  sub_237C079BC();
  sub_237BC108C();
  v32 = v31;
  v33 = *(v31 + 16);
  if (v33 >= *(v31 + 24) >> 1)
  {
    sub_237BC108C();
    v32 = v50;
  }

  *(v32 + 16) = v33 + 1;
  v34 = *(v68 + 32);
  v57 = (*(v68 + 80) + 32) & ~*(v68 + 80);
  v58 = v34;
  v56 = *(v68 + 72);
  v68 += 32;
  v34(v32 + v57 + v56 * v33, v25, v69);
  v35 = v66;
  v71 = v66;
  v72 = a2;

  MEMORY[0x2383DC360](0x6431766E6F635FLL, 0xE700000000000000);
  v36 = swift_allocObject();
  *(v36 + 16) = v67;
  v71 = v35;
  v72 = a2;

  MEMORY[0x2383DC360](0x74756F5F6461705FLL, 0xE800000000000000);
  v37 = v72;
  *(v36 + 32) = v71;
  *(v36 + 40) = v37;
  v38 = swift_allocObject();
  *(v38 + 16) = v67;
  v71 = v35;
  v72 = a2;

  MEMORY[0x2383DC360](0x756F5F766E6F635FLL, 0xE900000000000074);
  v39 = v72;
  *(v38 + 32) = v71;
  *(v38 + 40) = v39;
  v40 = v55;
  sub_237AA8EEC(v70, v55, _s12CausalConv1DVMa);
  sub_237B8A228(v40);
  v54(v18, *MEMORY[0x277D25198], v65);
  v41 = v59;
  sub_237C079BC();
  v42 = *(v32 + 16);
  if (v42 >= *(v32 + 24) >> 1)
  {
    sub_237BC108C();
    v32 = v51;
  }

  *(v32 + 16) = v42 + 1;
  v44 = v56;
  v43 = v57;
  v45 = v58;
  v58(v32 + v57 + v42 * v56, v41, v69);
  v46 = v66;
  v71 = v66;
  v72 = a2;

  MEMORY[0x2383DC360](0x746176697463615FLL, 0xEB000000006E6F69);
  v71 = v46;
  v72 = a2;

  MEMORY[0x2383DC360](0x756F5F766E6F635FLL, 0xE900000000000074);
  v47 = v61;
  sub_237C07A5C();

  v48 = *(v32 + 16);
  if (v48 >= *(v32 + 24) >> 1)
  {
    sub_237BC108C();
    v32 = v52;
  }

  *(v32 + 16) = v48 + 1;
  v45(v32 + v43 + v48 * v44, v47, v69);
  return v32;
}

uint64_t sub_237AA62D4(uint64_t a1)
{
  v3 = sub_237C0638C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v108 = v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_237C0775C();
  v99 = *(v6 - 8);
  v100 = v6;
  MEMORY[0x28223BE20](v6);
  v98 = v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = _s11LeakyConv2DVMa(0);
  MEMORY[0x28223BE20](v103);
  v9 = v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_237C0798C();
  v11 = *(v10 - 8);
  v110 = v10;
  v111 = v11;
  MEMORY[0x28223BE20](v10);
  v109 = v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_237C07A8C();
  v115 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v102 = v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v101 = v92 - v15;
  MEMORY[0x28223BE20](v16);
  v107 = v92 - v17;
  MEMORY[0x28223BE20](v18);
  v106 = v92 - v19;
  MEMORY[0x28223BE20](v20);
  v97 = v92 - v21;
  MEMORY[0x28223BE20](v22);
  v104 = v92 - v23;
  MEMORY[0x28223BE20](v24);
  v26 = v92 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = v92 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = v92 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = v92 - v34;
  v36 = sub_237A9AB60(a1);
  if (v37)
  {
    sub_2379E8AF0();
    swift_allocError();
    *v38 = 0xD00000000000002CLL;
    *(v38 + 8) = 0x8000000237C1A460;
    *(v38 + 16) = 0u;
    *(v38 + 32) = 0u;
    *(v38 + 48) = 2;
    swift_willThrow();
    return v3;
  }

  v94 = v36;
  v92[0] = v4;
  v96 = v3;
  v92[1] = v1;
  sub_237C0777C();
  sub_237BC108C();
  v40 = v39;
  v42 = *(v39 + 2);
  v41 = *(v39 + 3);
  v93 = v26;
  if (v42 >= v41 >> 1)
  {
    sub_237BC108C();
    v40 = v81;
  }

  *(v40 + 2) = v42 + 1;
  v43 = *(v115 + 32);
  v113 = (*(v115 + 80) + 32) & ~*(v115 + 80);
  v114 = v43;
  v44 = *(v115 + 72);
  v115 += 32;
  v43(&v40[v113 + v44 * v42], v35, v112);
  sub_237C07A7C();
  v45 = *(v40 + 2);
  if (v45 >= *(v40 + 3) >> 1)
  {
    sub_237BC108C();
    v40 = v82;
  }

  v46 = v93;
  *(v40 + 2) = v45 + 1;
  v114(&v40[v113 + v45 * v44], v32, v112);
  v47 = v105;
  sub_237AA8EEC(v105, v9, _s11LeakyConv2DVMa);
  v48 = v109;
  sub_237B8A804(v9, v109);
  v49 = *MEMORY[0x277D25198];
  v50 = *(v111 + 104);
  v111 += 104;
  v95 = v50;
  v50(v48, v49, v110);
  sub_237C079BC();
  v51 = *(v40 + 2);
  if (v51 >= *(v40 + 3) >> 1)
  {
    sub_237BC108C();
    v40 = v83;
  }

  *(v40 + 2) = v51 + 1;
  v114(&v40[v113 + v51 * v44], v29, v112);
  sub_237C07A5C();
  v52 = *(v40 + 2);
  if (v52 >= *(v40 + 3) >> 1)
  {
    sub_237BC108C();
    v40 = v84;
  }

  *(v40 + 2) = v52 + 1;
  v53 = v46;
  v54 = v112;
  v114(&v40[v113 + v52 * v44], v53, v112);
  v55 = v104;
  sub_237C07A7C();
  v56 = *(v40 + 2);
  if (v56 >= *(v40 + 3) >> 1)
  {
    sub_237BC108C();
    v40 = v85;
  }

  *(v40 + 2) = v56 + 1;
  v114(&v40[v113 + v56 * v44], v55, v54);
  v116 = v40;
  v57 = _s20ConvolutionalNetworkVMa(0);
  v58 = sub_237AA5BD0(0x3163uLL, 0xE200000000000000, 0x6E69646465626D65uLL, 0xE900000000000067, 12643, 0xE200000000000000, v47 + v57[5]);
  sub_237A96B2C(v58);
  v59 = sub_237AA5BD0(0x3263uLL, 0xE200000000000000, 0x3163uLL, 0xE200000000000000, 12899, 0xE200000000000000, v47 + v57[6]);
  sub_237A96B2C(v59);
  v60 = sub_237AA5BD0(0x3363uLL, 0xE200000000000000, 0x3263uLL, 0xE200000000000000, 13155, 0xE200000000000000, v47 + v57[7]);
  sub_237A96B2C(v60);
  v61 = sub_237AA5BD0(0x3463uLL, 0xE200000000000000, 0x3363uLL, 0xE200000000000000, 13411, 0xE200000000000000, v47 + v57[8]);
  sub_237A96B2C(v61);
  if (__OFSUB__(v94, 1))
  {
    __break(1u);
    goto LABEL_28;
  }

  v63 = v98;
  v62 = v99;
  v64 = v100;
  (*(v99 + 104))(v98, *MEMORY[0x277D25180], v100);
  v40 = v97;
  sub_237C079FC();
  (*(v62 + 8))(v63, v64);
  v3 = v116;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_28:
    sub_237BC108C();
    v3 = v86;
  }

  v65 = *(v3 + 16);
  if (v65 >= *(v3 + 24) >> 1)
  {
    sub_237BC108C();
    v3 = v87;
  }

  *(v3 + 16) = v65 + 1;
  v114((v3 + v113 + v65 * v44), v40, v54);
  v66 = v47 + *(_s18TemporalClassifierVMa(0) + 20);
  v67 = *(v92[0] + 16);
  v68 = v108;
  v67(v108, v66, v96);
  v69 = v109;
  sub_237A28768(v68, v109);
  v70 = *MEMORY[0x277D251A0];
  v95(v69, v70, v110);
  sub_237C079BC();
  v71 = *(v3 + 16);
  if (v71 >= *(v3 + 24) >> 1)
  {
    sub_237BC108C();
    v3 = v88;
  }

  *(v3 + 16) = v71 + 1;
  v114((v3 + v113 + v71 * v44), v106, v54);
  sub_237C079EC();
  v72 = *(v3 + 16);
  if (v72 >= *(v3 + 24) >> 1)
  {
    sub_237BC108C();
    v3 = v89;
  }

  *(v3 + 16) = v72 + 1;
  v114((v3 + v113 + v72 * v44), v107, v54);
  v73 = v66 + *(_s3MLPVMa(0) + 20);
  v74 = v108;
  v67(v108, v73, v96);
  v75 = v109;
  sub_237A28768(v74, v109);
  v95(v75, v70, v110);
  v76 = v101;
  sub_237C079BC();
  v77 = *(v3 + 16);
  if (v77 >= *(v3 + 24) >> 1)
  {
    sub_237BC108C();
    v3 = v90;
  }

  v78 = v102;
  *(v3 + 16) = v77 + 1;
  v114((v3 + v113 + v77 * v44), v76, v54);
  sub_237C07A2C();
  v79 = *(v3 + 16);
  if (v79 >= *(v3 + 24) >> 1)
  {
    sub_237BC108C();
    v3 = v91;
  }

  *(v3 + 16) = v79 + 1;
  v114((v3 + v113 + v79 * v44), v78, v54);
  return v3;
}

uint64_t sub_237AA6FF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v96 = a4;
  v98 = a3;
  v90 = a2;
  v95 = a5;
  v6 = sub_237C0818C();
  v92 = *(v6 - 8);
  v93 = v6;
  MEMORY[0x28223BE20](v6);
  v91 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_237C07BEC();
  v88 = *(v8 - 8);
  v89 = v8;
  MEMORY[0x28223BE20](v8);
  v87 = (&v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_237C0761C();
  v82 = *(v10 - 8);
  v83 = v10;
  MEMORY[0x28223BE20](v10);
  v81 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_237C07C5C();
  v85 = *(v12 - 8);
  v86 = v12;
  MEMORY[0x28223BE20](v12);
  v84 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_237C0757C();
  v78 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v76 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_237C075DC();
  v77 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v16 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C538, &qword_237C10558);
  MEMORY[0x28223BE20](v17 - 8);
  v75 = &v65 - v18;
  v19 = sub_237C07A8C();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v74 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_237C07B1C();
  v94 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v24 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v65 - v26;
  v28 = a1;
  v29 = sub_237AA7BC0(a1, v96);
  v30 = v97;
  sub_237AA62D4(v98);
  if (v30)
  {
  }

  v96 = v19;
  v68 = v16;
  v69 = v28;
  v70 = 0;
  sub_237C07AEC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C540, &qword_237C10560);
  v32 = v29;
  v33 = *(v20 + 72);
  v67 = v20;
  v34 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v35 = swift_allocObject();
  v97 = xmmword_237C0B670;
  *(v35 + 16) = xmmword_237C0B670;
  v65 = v34;
  sub_237C07A4C();
  v66 = v33;
  sub_237C0764C();
  sub_237C07AEC();
  v36 = v75;
  (*(v94 + 16))(v75, v24, v22);
  __swift_storeEnumTagSinglePayload(v36, 0, 1, v22);
  v37 = v74;
  sub_237C07A0C();
  sub_237AA8E84(v36);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v73 = v22;
  v72 = v24;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_237BC108C();
    v32 = v63;
  }

  v39 = v78;
  v40 = v76;
  v42 = *(v32 + 16);
  v41 = *(v32 + 24);
  v43 = v96;
  v44 = v67;
  v71 = v27;
  if (v42 >= v41 >> 1)
  {
    sub_237BC108C();
    v32 = v64;
  }

  v78 = v32;
  *(v32 + 16) = v42 + 1;
  v44[4](v32 + v65 + v42 * v66, v37, v43);
  sub_237C07F0C();
  sub_237C07E0C();
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD48, &qword_237C0BBD0);
  v45 = sub_237C07B9C();
  v46 = *(v45 - 8);
  v96 = *(v46 + 72);
  v47 = (*(v46 + 80) + 32) & ~*(v46 + 80);
  v74 = (v47 + 2 * v96);
  v75 = v47;
  v48 = swift_allocObject();
  *(v48 + 16) = v97;
  (*(v46 + 16))(v48 + v47, v69, v45);
  LODWORD(v69) = *MEMORY[0x277D25100];
  v67 = *(v39 + 104);
  v49 = v39;
  v50 = v80;
  (v67)(v40);
  v51 = v40;
  v52 = v68;
  sub_237C0750C();
  v98 = *(v49 + 8);
  v98(v51, v50);
  sub_237C07B3C();
  sub_237C07E9C();
  *(swift_allocObject() + 16) = v97;
  (v67)(v51, v69, v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_237C0B680;
  *(v53 + 32) = vdupq_n_s64(1uLL);
  v54 = v90;
  *(v53 + 48) = *(v90 + 16);
  sub_237C0750C();

  v98(v51, v50);
  sub_237C07B3C();
  sub_237C0756C();
  (*(v77 + 104))(v52, *MEMORY[0x277D25130], v79);
  sub_237C07B3C();
  sub_237C07ECC();
  sub_237C07DEC();
  sub_237C07E2C();
  v55 = v84;
  sub_237C07C3C();
  (*(v82 + 104))(v81, *MEMORY[0x277D25168], v83);
  sub_237C07C1C();
  sub_237C07C2C();
  v57 = v87;
  v56 = v88;
  *v87 = v54;
  (*(v56 + 104))(v57, *MEMORY[0x277D251E8], v89);

  sub_237C07BFC();
  v59 = v85;
  v58 = v86;
  v60 = v91;
  (*(v85 + 16))(v91, v55, v86);
  (*(v92 + 104))(v60, *MEMORY[0x277D25398], v93);
  sub_237C07E4C();
  (*(v59 + 8))(v55, v58);
  v61 = *(v94 + 8);
  v62 = v73;
  v61(v72, v73);
  return (v61)(v71, v62);
}

uint64_t sub_237AA7BC0(uint64_t a1, uint64_t a2)
{
  v41[1] = a2;
  v2 = sub_237C07A8C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v43 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v45 = v41 - v6;
  MEMORY[0x28223BE20](v7);
  v42 = v41 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = v41 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = v41 - v13;
  sub_237C07B4C();
  sub_237C0777C();

  sub_237BC108C();
  v16 = v15;
  v17 = *(v15 + 16);
  if (v17 >= *(v15 + 24) >> 1)
  {
    sub_237BC108C();
    v16 = v36;
  }

  *(v16 + 16) = v17 + 1;
  v19 = *(v3 + 32);
  v18 = v3 + 32;
  v20 = (*(v18 + 48) + 32) & ~*(v18 + 48);
  v44 = *(v18 + 40);
  v21 = v14;
  v22 = v19;
  v19(v16 + v20 + v44 * v17, v21, v2);
  sub_237C07A4C();
  v23 = *(v16 + 16);
  if (v23 >= *(v16 + 24) >> 1)
  {
    sub_237BC108C();
    v16 = v37;
  }

  *(v16 + 16) = v23 + 1;
  v24 = v2;
  v25 = v2;
  v26 = v22;
  v22(v16 + v20 + v23 * v44, v11, v25);
  v27 = v42;
  sub_237C07A4C();
  v28 = *(v16 + 16);
  if (v28 >= *(v16 + 24) >> 1)
  {
    sub_237BC108C();
    v16 = v38;
  }

  *(v16 + 16) = v28 + 1;
  v29 = v20;
  v30 = v16 + v20;
  v31 = v44;
  v22(v30 + v28 * v44, v27, v24);
  sub_237C0776C();
  v32 = *(v16 + 16);
  if (v32 >= *(v16 + 24) >> 1)
  {
    sub_237BC108C();
    v16 = v39;
  }

  *(v16 + 16) = v32 + 1;
  v22(v16 + v29 + v32 * v31, v45, v24);
  v33 = v43;
  sub_237C0789C();
  v34 = *(v16 + 16);
  if (v34 >= *(v16 + 24) >> 1)
  {
    sub_237BC108C();
    v16 = v40;
  }

  *(v16 + 16) = v34 + 1;
  v26(v16 + v29 + v34 * v31, v33, v24);
  return v16;
}

uint64_t sub_237AA8074@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v85 = a1;
  v86 = a4;
  v93 = a3;
  v75 = a5;
  v92 = sub_237C0818C();
  OUTLINED_FUNCTION_0();
  v97 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  v91 = v9 - v8;
  sub_237C07F1C();
  OUTLINED_FUNCTION_0();
  v88 = v11;
  v89 = v10;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_14_0();
  v90 = v12;
  MEMORY[0x28223BE20](v13);
  v98 = &v69 - v14;
  v15 = sub_237C0757C();
  OUTLINED_FUNCTION_0();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_2_0();
  v21 = v20 - v19;
  v22 = sub_237C075DC();
  MEMORY[0x28223BE20](v22 - 8);
  OUTLINED_FUNCTION_2_0();
  v25 = v24 - v23;
  v96 = sub_237C07B9C();
  v26 = *(v96 - 8);
  v83 = v96 - 8;
  *&v84 = v26;
  v94 = v26;
  MEMORY[0x28223BE20](v96 - 8);
  OUTLINED_FUNCTION_14_0();
  v95 = v27;
  MEMORY[0x28223BE20](v28);
  v99 = &v69 - v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_237C0B680;
  *(v30 + 32) = vdupq_n_s64(1uLL);
  *(v30 + 48) = a2;
  v32 = *(v17 + 104);
  v80 = *MEMORY[0x277D25100];
  v31 = v80;
  v32(v21, v80, v15);
  v81 = v32;
  v82 = v17 + 104;
  v33 = v25;
  sub_237C0750C();

  v34 = *(v17 + 8);
  v34(v21, v15);
  v78 = v34;
  v79 = v17 + 8;
  sub_237C07B3C();
  v77 = v15;
  v32(v21, v31, v15);
  v76 = v33;
  sub_237C0750C();
  v34(v21, v15);
  sub_237C07B3C();
  sub_237C07F0C();
  sub_237C07E0C();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD48, &qword_237C0BBD0);
  v36 = v94;
  v37 = *(v94 + 80);
  v38 = (v37 + 32) & ~v37;
  v39 = swift_allocObject();
  v71 = xmmword_237C0B660;
  *(v39 + 16) = xmmword_237C0B660;
  v40 = *(v36 + 16);
  v70 = v40;
  v41 = v96;
  v40(v39 + v38, v99, v96);
  sub_237C07E9C();
  v73 = v37;
  v83 = v35;
  v42 = swift_allocObject();
  v84 = xmmword_237C0B670;
  *(v42 + 16) = xmmword_237C0B670;
  v74 = v38;
  v43 = v95;
  v72 = v36 + 16;
  v40(v42 + v38, v95, v41);
  v44 = v77;
  v81(v21, v80, v77);
  v45 = v98;
  sub_237C0750C();
  v78(v21, v44);
  sub_237C07B3C();
  sub_237C07ECC();
  sub_237C07C6C();
  sub_237C085AC();
  v46 = v91;
  sub_237C07C7C();
  v47 = *MEMORY[0x277D253A8];
  v48 = *(v97 + 104);
  v97 += 104;
  (v48)(v46, v47, v92);
  v49 = v45;
  sub_237C07E4C();
  v50 = v87;
  sub_237AA6FF0(v43, v85, v93, v86, v90);
  if (v50)
  {
    (*(v88 + 8))(v45, v89);
    v51 = *(v94 + 8);
    v52 = v96;
    v51(v43, v96);
    return (v51)(v99, v52);
  }

  else
  {
    v93 = v48;
    sub_237C07F0C();
    sub_237C07E0C();
    v54 = v74;
    v55 = swift_allocObject();
    *(v55 + 16) = v71;
    v70(v55 + v54, v99, v96);
    sub_237C07E9C();
    sub_237C07EBC();
    sub_237C07ECC();
    sub_237C07DEC();
    sub_237C07E2C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BB70, &qword_237C0E778);
    v56 = v88;
    v57 = *(v88 + 72);
    v58 = (*(v88 + 80) + 32) & ~*(v88 + 80);
    v59 = swift_allocObject();
    *(v59 + 16) = v84;
    v60 = v59 + v58;
    v61 = *(v56 + 16);
    v62 = v49;
    v63 = v89;
    v61(v60, v62, v89);
    v64 = v90;
    v61(v60 + v57, v90, v63);
    v65 = v91;
    sub_237C07BAC();
    (v93)(v65, *MEMORY[0x277D253D0], v92);
    sub_237C07E4C();
    v66 = *(v56 + 8);
    v66(v64, v63);
    v66(v98, v63);
    v67 = *(v94 + 8);
    v68 = v96;
    v67(v95, v96);
    return (v67)(v99, v68);
  }
}

void MLFewShotSoundClassifier.write(to:)()
{
  v1 = _s18TemporalClassifierVMa(0);
  MEMORY[0x28223BE20](v1 - 8);
  OUTLINED_FUNCTION_2_0();
  v4 = v3 - v2;
  v5 = sub_237C07F1C();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_0();
  v11 = v10 - v9;
  v12 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_0();
  v18 = v17 - v16;
  sub_2379F25FC();
  if (!v0)
  {
    v45 = v11;
    v46 = v7;
    v50 = v4;
    v51 = v18;
    v47 = v5;
    v19 = type metadata accessor for MLFewShotSoundClassifier(0);
    v20 = *(v54 + v19[12]);
    v21 = [v20 trainingDataEmbeddings];
    sub_2379E8EE0(0, &qword_27DE9ACF8, 0x277CBFF48);
    v22 = sub_237C0893C();

    if (!sub_237A254D8(v22))
    {

      sub_2379E8AF0();
      swift_allocError();
      *v30 = 0xD000000000000037;
      *(v30 + 8) = 0x8000000237C1A3B0;
      *(v30 + 16) = 0u;
      *(v30 + 32) = 0u;
      *(v30 + 48) = 2;
      swift_willThrow();
      (*(v14 + 8))(v51, v12);
      return;
    }

    v49 = v14;
    sub_237A254DC();
    v48 = v12;
    if ((v22 & 0xC000000000000001) != 0)
    {
      v23 = MEMORY[0x2383DCAF0](0, v22);
    }

    else
    {
      v23 = *(v22 + 32);
    }

    v24 = v23;

    v25 = [v24 shape];

    sub_2379E8EE0(0, &qword_27DE9AC40, 0x277CCABB0);
    v26 = sub_237C0893C();

    v27 = [v20 exemplar];
    v29 = v14;
    v28 = sub_237C0868C();
    v32 = sub_2379E0124(v28, v31);
    sub_237AA8EEC(v54 + v19[10], v50, _s18TemporalClassifierVMa);
    v33 = *(v54 + v19[8]);
    [v20 inferenceWindowSize];
    v55 = v52;
    v34 = sub_237A254D8(v26);
    if (!v34)
    {

      v37 = MEMORY[0x277D84F90];
LABEL_18:
      sub_237AA8074(v33, v55, v37, v32, v45);
      OUTLINED_FUNCTION_2_41();

      sub_237C07E5C();
      (*(v46 + 8))(v45, v47);
      (*(v29 + 8))(v51, v48);
      return;
    }

    v35 = v34;
    v43 = v33;
    v44 = v32;
    v53 = MEMORY[0x277D84F90];
    sub_237AC8A34(0, v34 & ~(v34 >> 63), 0);
    if ((v35 & 0x8000000000000000) == 0)
    {
      v36 = 0;
      v37 = v53;
      do
      {
        if ((v26 & 0xC000000000000001) != 0)
        {
          v38 = MEMORY[0x2383DCAF0](v36, v26);
        }

        else
        {
          v38 = *(v26 + 8 * v36 + 32);
        }

        v39 = v38;
        v40 = [v38 integerValue];

        v42 = *(v53 + 16);
        v41 = *(v53 + 24);
        if (v42 >= v41 >> 1)
        {
          sub_237AC8A34(v41 > 1, v42 + 1, 1);
        }

        ++v36;
        *(v53 + 16) = v42 + 1;
        *(v53 + 8 * v42 + 32) = v40;
      }

      while (v35 != v36);

      v29 = v49;
      v33 = v43;
      v32 = v44;
      goto LABEL_18;
    }

    __break(1u);
  }
}

uint64_t sub_237AA8E84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C538, &qword_237C10558);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237AA8EEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_237AA8F54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t OUTLINED_FUNCTION_2_41()
{

  return sub_237AA8F54(v0, _s18TemporalClassifierVMa);
}

unint64_t sub_237AA8FDC(uint64_t a1)
{
  result = sub_237A21670();
  *(a1 + 8) = result;
  return result;
}

uint64_t MLImageClassifier.evaluation(on:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9C8, &qword_237C0B6A0);
  v25 = *(v4 - 8);
  v26 = v4;
  MEMORY[0x28223BE20](v4);
  v24 = &v24 - v5;
  v6 = type metadata accessor for MLImageClassifier(0);
  v7 = OUTLINED_FUNCTION_1(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v12 = type metadata accessor for MLImageClassifier.DataSource(0);
  v13 = OUTLINED_FUNCTION_1(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  sub_237AA9AA4(a1, &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MLImageClassifier.DataSource);
  sub_237AA9AA4(v2, &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for MLImageClassifier);
  v18 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v19 = (v17 + *(v9 + 80) + v18) & ~*(v9 + 80);
  v20 = swift_allocObject();
  sub_237AA9F54(&v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v18, type metadata accessor for MLImageClassifier.DataSource);
  sub_237AA9F54(&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for MLImageClassifier);
  v21 = sub_2379DDABC(&unk_237C105D0, v20);

  v28 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABE0, &qword_237C0B948);
  sub_237AAA1DC();
  v22 = v24;
  sub_237C06FCC();
  (*(v25 + 32))(v27, v22, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9F8, &unk_237C0E1C0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for MLClassifierMetrics.Contents(0);
  return swift_storeEnumTagMultiPayload();
}

{
  type metadata accessor for MLImageClassifier.DataSource(0);
  OUTLINED_FUNCTION_12_0();
  MEMORY[0x28223BE20](v4);
  v6 = (&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v6 = a1;
  swift_storeEnumTagMultiPayload();

  MLImageClassifier.evaluation(on:)(v6, a2);
  return sub_2379FD128(v6);
}

uint64_t sub_237AA9340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v4 = *(type metadata accessor for MLImageClassifier(0) - 8);
  v3[4] = v4;
  v3[5] = *(v4 + 64);
  v3[6] = swift_task_alloc();
  v5 = swift_task_alloc();
  v3[7] = v5;
  *v5 = v3;
  v5[1] = sub_237AA9434;

  return sub_237B8B31C();
}

uint64_t sub_237AA9434(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v1;

  if (v1)
  {

    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_237AA9584);
  }
}

void sub_237AA9584(__n128 a1)
{
  v2 = v1[8];
  v3 = v1[6];
  v4 = v1[4];
  sub_237AA9AA4(v1[3], v3, type metadata accessor for MLImageClassifier);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v61 = swift_allocObject();
  sub_237AA9F54(v3, v61 + v5, type metadata accessor for MLImageClassifier);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C550, &qword_237C105D8);
  v6 = sub_237C0910C();
  v7 = 0;
  v8 = v2 + 64;
  v60 = v2;
  v9 = 1 << *(v2 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v2 + 64);
  v12 = (v9 + 63) >> 6;
  v63 = v6 + 64;
  v57 = v1;
  v13 = v1[9];
  v14 = v6;
  if (v11)
  {
    while (1)
    {
      v15 = __clz(__rbit64(v11));
      v64 = (v11 - 1) & v11;
LABEL_10:
      v18 = v15 | (v7 << 6);
      v19 = (*(v60 + 48) + 16 * v18);
      v20 = *v19;
      v21 = v19[1];

      v23 = sub_237AAA640(v22);
      if (v13)
      {
        break;
      }

      v24 = v23;

      *(v63 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v25 = (*(v14 + 48) + 16 * v18);
      *v25 = v20;
      v25[1] = v21;
      *(*(v14 + 56) + 8 * v18) = v24;
      v26 = *(v14 + 16);
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_48;
      }

      v13 = 0;
      *(v14 + 16) = v28;
      v11 = v64;
      if (!v64)
      {
        goto LABEL_5;
      }
    }

    v55 = v57[1];
LABEL_41:

    v55();
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
        __break(1u);
        goto LABEL_46;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v64 = (v17 - 1) & v17;
        goto LABEL_10;
      }
    }

    v29 = -1;
    v30 = -1 << *(v14 + 32);
    if (-v30 < 64)
    {
      v29 = ~(-1 << -v30);
    }

    v31 = v29 & *(v14 + 64);
    v56 = (63 - v30) >> 6;

    v32 = 0;
    v33 = MEMORY[0x277D84F90];
    v62 = v14;
    v34 = v63;
    while (v31)
    {
LABEL_22:
      v36 = __clz(__rbit64(v31)) | (v32 << 6);
      v37 = *(*(v14 + 56) + 8 * v36);
      v38 = *(v37 + 16);
      if (v38)
      {
        v58 = v31;
        v59 = v33;
        v39 = (*(v14 + 48) + 16 * v36);
        v40 = v39[1];
        v65 = *v39;
        v66 = MEMORY[0x277D84F90];

        sub_237AC8E74(0, v38, 0);
        v41 = v66;
        v42 = *(v66 + 16);
        v43 = 32 * v42 + 56;
        v44 = (v37 + 40);
        do
        {
          v45 = *(v44 - 1);
          v46 = *v44;
          v47 = *(v66 + 24);

          if (v42 >= v47 >> 1)
          {
            sub_237AC8E74(v47 > 1, v42 + 1, 1);
          }

          *(v66 + 16) = v42 + 1;
          v48 = (v66 + v43);
          *(v48 - 3) = v45;
          *(v48 - 2) = v46;
          v43 += 32;
          v44 += 2;
          ++v42;
          *(v48 - 1) = v65;
          *v48 = v40;
          --v38;
        }

        while (v38);

        v34 = v63;
        v33 = v59;
        v31 = v58;
      }

      else
      {
        v41 = MEMORY[0x277D84F90];
      }

      v49 = *(v41 + 16);
      v50 = *(v33 + 16);
      if (__OFADD__(v50, v49))
      {
        goto LABEL_47;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0 || v50 + v49 > *(v33 + 24) >> 1)
      {
        sub_237BC1BB0();
        v33 = v51;
      }

      v14 = v62;
      v31 &= v31 - 1;
      if (*(v41 + 16))
      {
        if ((*(v33 + 24) >> 1) - *(v33 + 16) < v49)
        {
          goto LABEL_49;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B308, &qword_237C0CBB8);
        v14 = v62;
        swift_arrayInitWithCopy();

        if (v49)
        {
          v52 = *(v33 + 16);
          v27 = __OFADD__(v52, v49);
          v53 = v52 + v49;
          if (v27)
          {
            goto LABEL_50;
          }

          *(v33 + 16) = v53;
        }
      }

      else
      {

        if (v49)
        {
          __break(1u);
LABEL_40:
          v54 = v57[2];

          *v54 = v33;

          v55 = v57[1];
          goto LABEL_41;
        }
      }
    }

    while (1)
    {
      v35 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v35 >= v56)
      {
        goto LABEL_40;
      }

      v31 = *(v34 + 8 * v35);
      ++v32;
      if (v31)
      {
        v32 = v35;
        goto LABEL_22;
      }
    }

LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
  }
}

uint64_t sub_237AA9AA4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_237AA9B04()
{
  type metadata accessor for MLImageClassifier.DataSource(0);
  OUTLINED_FUNCTION_88_0();
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v4 = *(v3 + 64);
  v5 = type metadata accessor for MLImageClassifier(0);
  OUTLINED_FUNCTION_88_0();
  v7 = (v2 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    sub_237C05ADC();
    OUTLINED_FUNCTION_12_0();
    (*(v9 + 8))(v0 + v2);
  }

  v10 = (v0 + v7);

  if (*(v0 + v7 + 48))
  {
    __swift_destroy_boxed_opaque_existential_1(v10 + 3);
  }

  if (*(v10 + 10))
  {
    __swift_destroy_boxed_opaque_existential_1(v10 + 7);
  }

  v11 = &v10[*(v5 + 24)];
  type metadata accessor for MLClassifierMetrics.Contents(0);
  v12 = swift_getEnumCaseMultiPayload();
  switch(v12)
  {
    case 2:

      break;
    case 1:
      v15 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v16 = *(v15 + 20);
      v17 = sub_237C05DBC();
      v18 = *(*(v17 - 8) + 8);
      v18(v11 + v16, v17);
      v18(v11 + *(v15 + 24), v17);
      break;
    case 0:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9F8, &unk_237C0E1C0);
      if (OUTLINED_FUNCTION_5_30() == 1)
      {
        v13 = &qword_27DE9AA00;
        v14 = &qword_237C0B6F0;
      }

      else
      {
        v13 = &qword_27DE9A9C8;
        v14 = &qword_237C0B6A0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
      OUTLINED_FUNCTION_12_0();
      (*(v19 + 8))(v11);
      break;
  }

  v20 = OUTLINED_FUNCTION_4_35();
  switch(v20)
  {
    case 2:

      break;
    case 1:
      v23 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v24 = *(v23 + 20);
      v25 = sub_237C05DBC();
      v26 = *(*(v25 - 8) + 8);
      v26(v11 + v24, v25);
      v26(v11 + *(v23 + 24), v25);
      break;
    case 0:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9F8, &unk_237C0E1C0);
      if (OUTLINED_FUNCTION_5_30() == 1)
      {
        v21 = &qword_27DE9AA00;
        v22 = &qword_237C0B6F0;
      }

      else
      {
        v21 = &qword_27DE9A9C8;
        v22 = &qword_237C0B6A0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(v21, v22);
      OUTLINED_FUNCTION_12_0();
      (*(v27 + 8))(v11);
      break;
  }

  v28 = *(v5 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v29 = &qword_27DE9A780;
    v30 = &unk_237C0A700;
  }

  else
  {
    v29 = &qword_27DE9A788;
    v30 = &unk_237C13D50;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v29, v30);
  OUTLINED_FUNCTION_12_0();
  (*(v31 + 8))(&v10[v28]);

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_237AA9F54(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_237AA9FB4(uint64_t a1)
{
  v3 = v2;
  v5 = type metadata accessor for MLImageClassifier.DataSource(0);
  OUTLINED_FUNCTION_1(v5);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = *(v8 + 64);
  v10 = *(type metadata accessor for MLImageClassifier(0) - 8);
  v11 = (v7 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_237AAA0E8;

  return sub_237AA9340(a1, v1 + v7, v1 + v11);
}

uint64_t sub_237AAA0E8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_237AAA1DC()
{
  result = qword_27DE9C548;
  if (!qword_27DE9C548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9ABE0, &qword_237C0B948);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9C548);
  }

  return result;
}

uint64_t sub_237AAA2DC()
{
  v1 = type metadata accessor for MLImageClassifier(0);
  OUTLINED_FUNCTION_88_0();
  v28 = v0;
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  if (*(v3 + 48))
  {
    __swift_destroy_boxed_opaque_existential_1((v3 + 24));
  }

  if (*(v3 + 80))
  {
    __swift_destroy_boxed_opaque_existential_1((v3 + 56));
  }

  v4 = (v3 + *(v1 + 24));
  type metadata accessor for MLClassifierMetrics.Contents(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:

      break;
    case 1:
      v8 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v9 = *(v8 + 20);
      v10 = sub_237C05DBC();
      OUTLINED_FUNCTION_4();
      v12 = *(v11 + 8);
      v12(v4 + v9, v10);
      v12(v4 + *(v8 + 24), v10);
      break;
    case 0:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9F8, &unk_237C0E1C0);
      if (OUTLINED_FUNCTION_5_30() == 1)
      {
        v6 = &qword_27DE9AA00;
        v7 = &qword_237C0B6F0;
      }

      else
      {
        v6 = &qword_27DE9A9C8;
        v7 = &qword_237C0B6A0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
      OUTLINED_FUNCTION_12_0();
      (*(v13 + 8))(v4);
      break;
  }

  v14 = OUTLINED_FUNCTION_4_35();
  switch(v14)
  {
    case 2:

      break;
    case 1:
      v17 = type metadata accessor for MLClassifierMetrics.Precomputed(0);
      v18 = *(v17 + 20);
      v19 = sub_237C05DBC();
      OUTLINED_FUNCTION_4();
      v21 = *(v20 + 8);
      v21(v4 + v18, v19);
      v21(v4 + *(v17 + 24), v19);
      break;
    case 0:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9F8, &unk_237C0E1C0);
      if (OUTLINED_FUNCTION_5_30() == 1)
      {
        v15 = &qword_27DE9AA00;
        v16 = &qword_237C0B6F0;
      }

      else
      {
        v15 = &qword_27DE9A9C8;
        v16 = &qword_237C0B6A0;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
      OUTLINED_FUNCTION_12_0();
      (*(v22 + 8))(v4);
      break;
  }

  v23 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A790, &qword_237C0A710);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = &qword_27DE9A780;
    v25 = &unk_237C0A700;
  }

  else
  {
    v24 = &qword_27DE9A788;
    v25 = &unk_237C13D50;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v24, v25);
  OUTLINED_FUNCTION_12_0();
  (*(v26 + 8))(v3 + v23);

  return MEMORY[0x2821FE8E8](v28);
}

uint64_t OUTLINED_FUNCTION_4_35()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_5_30()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_237AAA700(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_237C0707C();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_237AAA79C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_237C0707C();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t _s5ModelVMa_2(uint64_t a1)
{
  result = qword_27DE9C558;
  if (!qword_27DE9C558)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_237AAA868(uint64_t a1)
{
  sub_237A93888(319);
  if (v1 <= 0x3F)
  {
    sub_237C0707C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_237AAA8FC@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v6 = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB88, &qword_237C0B8F0);
  OUTLINED_FUNCTION_0();
  v24 = v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v21 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B220, &qword_237C0CAF8);
  OUTLINED_FUNCTION_0();
  v22 = v15;
  v23 = v14;
  MEMORY[0x28223BE20](v14);
  v17 = &v21 - v16;
  v18 = v6[2];
  if (v18)
  {
    result = sub_237A0D2FC(a1, 1, v18, v6[3], v6[4]);
    if (!v5)
    {
      _s5ModelVMa_2(0);
      v25 = sub_237C0706C();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B828, &qword_237C0DFE8);
      v21 = a4;
      sub_2379D9224(qword_27DE9C570, &qword_27DE9B828, &qword_237C0DFE8, MEMORY[0x277D84268]);
      sub_237C05EEC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABA0, &unk_237C0E0F0);
      sub_237C0602C();
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_237C0B660;
      sub_237C05EBC();
      v25 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABA8, &unk_237C0B910);
      sub_2379D9224(&qword_27DE9ABB0, &qword_27DE9ABA8, &unk_237C0B910, MEMORY[0x277D83970]);
      sub_237C05D7C();
      (*(v24 + 8))(v13, v9);
      return (*(v22 + 8))(v17, v23);
    }
  }

  else
  {
    result = sub_237C090DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_237AAAC8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_237AAA8FC(a2, a1);
  v5 = *(v4 + 8);

  return v5();
}

unint64_t sub_237AAAD18()
{
  result = qword_27DE9C568;
  if (!qword_27DE9C568)
  {
    _s5ModelVMa_2(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9C568);
  }

  return result;
}

uint64_t sub_237AAAD78(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_237AAADF4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 64);
  if (v3 <= *(*(*(a3 + 16) - 8) + 64))
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_22;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_22;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_22:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_22;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    switch(v4)
    {
      case 2:
        LODWORD(v4) = *a1;
        break;
      case 3:
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v4) = *a1;
        break;
      default:
        LODWORD(v4) = *a1;
        break;
    }
  }

  return (v4 | v9) + 255;
}

void sub_237AAAF38(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        JUMPOUT(0x237AAB10CLL);
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

void sub_237AAB14C(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v6 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  v12 = v11 - v10;
  sub_2379F25FC();
  if (!v4)
  {
    memcpy(__dst, a4, sizeof(__dst));
    sub_237AABA30(v12, __dst);
    (*(v8 + 8))(v12, v6);
  }
}

uint64_t sub_237AAB274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  v11 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_2_0();
  v17 = v16 - v15;
  result = sub_2379F29AC(a1, a2, a3, a4);
  if (!v5)
  {
    sub_237AAB14C(v17, a3, a4, a5);
    return (*(v13 + 8))(v17, v11);
  }

  return result;
}

uint64_t sub_237AAB394()
{
  v57[1] = *MEMORY[0x277D85DE8];
  sub_237C05C2C();
  OUTLINED_FUNCTION_0();
  v52 = v1;
  v53 = v0;
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_2_0();
  v4 = v3 - v2;
  v5 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v55 = v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v49 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v49 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v49 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v49 - v20;
  v22 = [objc_opt_self() defaultManager];
  v23 = v56;
  sub_2379F364C();
  if (v23)
  {
  }

  else
  {
    v49 = 0;
    v50 = v9;
    v51 = v12;
    sub_2379F3528();
    sub_237C05C1C();
    sub_237C05C0C();
    v56 = v5;
    (*(v52 + 8))(v4, v53);
    sub_237C05A2C();
    v24 = v56;

    sub_237C05A3C();
    v25 = v55 + 8;
    v26 = *(v55 + 8);
    v26(v15, v24);
    v27 = sub_237C059EC();
    v28 = sub_237C085AC();
    v57[0] = 0;
    v29 = sub_237AABE70(v27, v28, v57, v54);

    v30 = v57[0];
    v31 = v18;
    if (v29)
    {
      v53 = v25;
      v54 = v26;
      v32 = v22;
      v33 = objc_opt_self();
      v34 = v30;
      v35 = sub_237C059EC();
      v57[0] = 0;
      v36 = [v33 compileModelAtURL:v35 error:v57];

      v37 = v57[0];
      if (v36)
      {
        v38 = v51;
        sub_237C05A7C();
        v39 = v37;

        sub_2379E8EE0(0, &qword_27DE9AA38, 0x277CBFF20);
        v40 = v56;
        v4 = v50;
        (*(v55 + 16))(v50, v38, v56);
        v41 = v49;
        v42 = sub_237AAB8D8(v4);
        v43 = v32;
        v44 = v54;
        if (!v41)
        {
          v4 = v42;
        }

        v54(v38, v40);
        sub_237A70570(v43);

        v44(v31, v40);
        v44(v21, v40);
      }

      else
      {
        v46 = v57[0];
        sub_237C0593C();

        swift_willThrow();
        sub_237A70570(v22);

        v4 = v56;
        v47 = v54;
        v54(v31, v56);
        v47(v21, v4);
      }
    }

    else
    {
      v45 = v57[0];
      v4 = sub_237C0593C();

      swift_willThrow();
      v26(v18, v24);
      v26(v21, v24);
    }
  }

  return v4;
}

id sub_237AAB8D8(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = sub_237C059EC();
  v11[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() modelWithContentsOfURL:v2 error:v11];

  v4 = v11[0];
  if (v3)
  {
    v5 = sub_237C05ADC();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v11[0];
    sub_237C0593C();

    swift_willThrow();
    v9 = sub_237C05ADC();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  return v3;
}

id sub_237AABA30(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v18 = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 8);
  if (v4)
  {
    v6 = *a2;
    sub_2379E8EE0(0, &qword_27DE9C5F8, 0x277CD89D0);
    v13[0] = v6;
    v13[1] = v4;
    v7 = *(a2 + 32);
    v14 = *(a2 + 16);
    v15 = v7;
    v16 = *(a2 + 48);
    v17 = *(a2 + 64);
    v4 = sub_237AABB9C(v13);
  }

  v8 = sub_237C059EC();
  if (v4)
  {
    v9 = sub_237C0855C();
  }

  else
  {
    v9 = 0;
  }

  v13[0] = 0;
  v10 = [v3 writeMLModelToURL:v8 options:v9 error:v13];

  if (v10)
  {
    return v13[0];
  }

  v12 = v13[0];
  sub_237C0593C();

  return swift_willThrow();
}

uint64_t sub_237AABB9C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[5];
  v16 = a1[4];
  v7 = a1[6];
  v6 = a1[7];
  v8 = a1[8];
  sub_237C086EC();

  v9 = MEMORY[0x277D837D0];
  sub_237C08E7C();
  v19 = v9;
  *&v18 = v4;
  *(&v18 + 1) = v3;
  sub_2379DAD24(&v18, v17);
  v10 = MEMORY[0x277D84F98];
  swift_isUniquelyReferenced_nonNull_native();
  sub_237B4160C(v17, v20);
  sub_2379E8F7C(v20);
  *&v18 = sub_237C086EC();
  *(&v18 + 1) = v11;
  sub_237C08E7C();
  v19 = v9;
  *&v18 = v7;
  *(&v18 + 1) = v6;
  sub_2379DAD24(&v18, v17);
  swift_isUniquelyReferenced_nonNull_native();
  sub_237B4160C(v17, v20);
  sub_2379E8F7C(v20);
  *&v18 = sub_237C086EC();
  *(&v18 + 1) = v12;
  sub_237C08E7C();
  v19 = v9;
  *&v18 = v2;
  *(&v18 + 1) = v1;
  sub_2379DAD24(&v18, v17);
  swift_isUniquelyReferenced_nonNull_native();
  sub_237B4160C(v17, v20);
  sub_2379E8F7C(v20);
  if (v5)
  {
    *&v18 = sub_237C086EC();
    *(&v18 + 1) = v13;
    sub_237C08E7C();
    v19 = v9;
    *&v18 = v16;
    *(&v18 + 1) = v5;
    sub_2379DAD24(&v18, v17);
    swift_isUniquelyReferenced_nonNull_native();
    sub_237B4160C(v17, v20);
    sub_2379E8F7C(v20);
  }

  if (v8)
  {
    *&v18 = sub_237C086EC();
    *(&v18 + 1) = v14;

    sub_237C08E7C();
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BCE8, &qword_237C0EC40);
    *&v18 = v8;
    sub_2379DAD24(&v18, v17);
    swift_isUniquelyReferenced_nonNull_native();
    sub_237B4160C(v17, v20);
    sub_2379E8F7C(v20);
  }

  return v10;
}

id sub_237AABE70(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_237C0855C();

  v8 = [a4 writeMLModelToURL:a1 options:v7 error:a3];

  return v8;
}

uint64_t MLRandomForestClassifier.ModelParameters.validationData.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  v6 = v5 - v4;
  result = sub_2379D8FF4(v1, &v8, &qword_27DE9A998, &unk_237C0C100);
  if (v9)
  {
    sub_2379DAD24(&v8, &v10);
    swift_dynamicCast();
    sub_237A64DF0(a1);
    return sub_237AAC1FC(v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237AABFDC@<X0>(uint64_t a1@<X8>)
{
  result = MLRandomForestClassifier.ModelParameters.validationData.getter(&v4);
  v3 = v5;
  *a1 = v4;
  *(a1 + 8) = v3;
  return result;
}

uint64_t sub_237AAC020(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  sub_2379DBCDC(v3, v1);
  return MLRandomForestClassifier.ModelParameters.validationData.setter(&v3);
}

uint64_t MLRandomForestClassifier.ModelParameters.validationData.setter(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v7 = v6 - v5;
  v8 = *a1;
  v9 = *(a1 + 8);
  v13[3] = v10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v13);
  if (v9 == 255)
  {
    *v7 = 0;
    *(v7 + 8) = 0;
    *(v7 + 16) = 256;
  }

  else if (MLDataTable.size.getter())
  {
    *v7 = v8;
    *(v7 + 8) = v9 & 1;
  }

  else
  {
    sub_2379DBC84(v8, v9);
  }

  swift_storeEnumTagMultiPayload();
  sub_237AAC258(v7, boxed_opaque_existential_0);
  return sub_2379DAE54(v13, v2);
}

uint64_t MLRandomForestClassifier.ModelParameters.validation.getter()
{
  result = sub_2379D8FF4(v1, &v3, &qword_27DE9A998, &unk_237C0C100);
  if (v4)
  {
    sub_2379DAD24(&v3, &v5);
    type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData(0);
    return swift_dynamicCast();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237AAC1FC(uint64_t a1)
{
  v2 = type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237AAC258(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void (*MLRandomForestClassifier.ModelParameters.validationData.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  MLRandomForestClassifier.ModelParameters.validationData.getter(a1);
  return sub_237AAC304;
}

void sub_237AAC304(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (a2)
  {
    v4 = *a1;
    v5 = v3;
    sub_2379DBCDC(v2, v3);
    MLRandomForestClassifier.ModelParameters.validationData.setter(&v4);

    sub_2379DBC84(v2, v3);
  }

  else
  {
    v4 = *a1;
    v5 = v3;
    MLRandomForestClassifier.ModelParameters.validationData.setter(&v4);
  }
}

uint64_t sub_237AAC398(uint64_t a1)
{
  v2 = type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_237A654DC(a1, v4);
  return MLRandomForestClassifier.ModelParameters.validation.setter(v4);
}

uint64_t MLRandomForestClassifier.ModelParameters.validation.setter(uint64_t a1)
{
  v5[3] = type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData(0);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v5);
  sub_237AAC258(a1, boxed_opaque_existential_0);
  return sub_2379DAE54(v5, v1);
}

void (*MLRandomForestClassifier.ModelParameters.validation.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = __swift_coroFrameAllocStub(0xA0uLL);
  *a1 = v4;
  v4[16] = v2;
  v4[17] = type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_4();
  v6 = *(v5 + 64);
  v4[18] = __swift_coroFrameAllocStub(v6);
  v4[19] = __swift_coroFrameAllocStub(v6);
  result = sub_2379D8FF4(v2, (v4 + 4), &qword_27DE9A998, &unk_237C0C100);
  if (v4[7])
  {
    sub_2379DAD24(v4 + 2, v4);
    swift_dynamicCast();
    return sub_237AAC574;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_237AAC574(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[18];
  v4 = (*a1)[19];
  v5 = (*a1)[16];
  v6 = (*a1)[17];
  if (a2)
  {
    sub_237A654DC((*a1)[19], v3);
    v2[11] = v6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v2 + 8);
    sub_237AAC258(v3, boxed_opaque_existential_0);
    sub_2379DAE54((v2 + 8), v5);
    sub_237AAC1FC(v4);
  }

  else
  {
    v2[15] = v6;
    v8 = __swift_allocate_boxed_opaque_existential_0(v2 + 12);
    sub_237AAC258(v4, v8);
    sub_2379DAE54((v2 + 12), v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t MLRandomForestClassifier.ModelParameters.init(validation:maxDepth:maxIterations:minLossReduction:minChildWeight:randomSeed:rowSubsample:columnSubsample:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>)
{
  v18 = type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_2_0();
  v22 = v21 - v20;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 32) = a2;
  *(a5 + 40) = a3;
  *(a5 + 48) = a6;
  *(a5 + 56) = a7;
  *(a5 + 64) = a4;
  *(a5 + 72) = a8;
  *(a5 + 80) = a9;
  sub_237A654DC(a1, v21 - v20);
  v25[3] = v18;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v25);
  sub_237AAC258(v22, boxed_opaque_existential_0);
  sub_237AAC1FC(a1);
  return sub_2379DAE54(v25, a5);
}

uint64_t MLRandomForestClassifier.ModelParameters.init(validationData:maxDepth:maxIterations:minLossReduction:minChildWeight:randomSeed:rowSubsample:columnSubsample:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>)
{
  v9 = *a1;
  v10 = *(a1 + 8);
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 32) = a2;
  *(a5 + 40) = a3;
  *(a5 + 48) = a6;
  *(a5 + 56) = a7;
  *(a5 + 64) = a4;
  *(a5 + 72) = a8;
  *(a5 + 80) = a9;
  v12 = v9;
  v13 = v10;
  return MLRandomForestClassifier.ModelParameters.validationData.setter(&v12);
}

uint64_t sub_237AAC8D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_237C05DBC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v30 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C600, &qword_237C10750);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v30 - v15;
  v17 = type metadata accessor for MLRandomForestClassifier.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_2_0();
  v21 = v20 - v19;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = sub_237C070EC();
  *(a3 + 40) = sub_237C0714C();
  sub_237C0718C();
  *(a3 + 48) = v22;
  sub_237C0716C();
  *(a3 + 56) = v23;
  *(a3 + 64) = sub_237C070AC();
  sub_237C0710C();
  *(a3 + 72) = v24;
  sub_237C0712C();
  *(a3 + 80) = v25;
  v31 = a2;
  sub_2379D8FF4(a2, v13, &qword_27DE9A9A0, &qword_237C0BF60);
  v26 = 1;
  if (__swift_getEnumTagSinglePayload(v13, 1, v6) != 1)
  {
    (*(v7 + 32))(v10, v13, v6);
    (*(v7 + 16))(v16, v10, v6);
    swift_storeEnumTagMultiPayload();
    (*(v7 + 8))(v10, v6);
    v26 = 0;
  }

  __swift_storeEnumTagSinglePayload(v16, v26, 1, v17);
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    swift_storeEnumTagMultiPayload();
    if (__swift_getEnumTagSinglePayload(v16, 1, v17) != 1)
    {
      sub_2379D9054(v16, &qword_27DE9C600, &qword_237C10750);
    }
  }

  else
  {
    sub_237AAC258(v16, v21);
  }

  v32[3] = v17;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v32);
  sub_237AAC258(v21, boxed_opaque_existential_0);
  sub_2379D9054(v31, &qword_27DE9A9A0, &qword_237C0BF60);
  sub_237C071DC();
  OUTLINED_FUNCTION_4();
  (*(v28 + 8))(a1);
  return sub_2379DAE54(v32, a3);
}

uint64_t MLRandomForestClassifier.ModelParameters.description.getter()
{
  v0 = sub_237C0924C();
  MEMORY[0x2383DC360](v0);

  MEMORY[0x2383DC360](10, 0xE100000000000000);
  OUTLINED_FUNCTION_3_16();
  sub_237C08EDC();

  v1 = OUTLINED_FUNCTION_7_11();
  MEMORY[0x2383DC360](v1);

  OUTLINED_FUNCTION_2_1();
  MEMORY[0x2383DC360](0xD000000000000010, 0x8000000237C16E00);

  OUTLINED_FUNCTION_3_16();
  sub_237C08EDC();
  OUTLINED_FUNCTION_6_0();
  v2 = MEMORY[0x2383DC360](0xD000000000000014, 0x8000000237C16E20);
  OUTLINED_FUNCTION_3_10(v2, v3);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x2383DC360](0xD000000000000010, 0x8000000237C16E00);

  OUTLINED_FUNCTION_3_16();
  sub_237C08EDC();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_10(v4, v5);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x2383DC360](0xD000000000000010, 0x8000000237C16E00);

  OUTLINED_FUNCTION_3_16();
  sub_237C08EDC();

  strcpy(v8, "Random Seed: ");
  HIWORD(v8[1]) = -4864;
  v6 = OUTLINED_FUNCTION_7_11();
  MEMORY[0x2383DC360](v6);

  OUTLINED_FUNCTION_2_1();
  MEMORY[0x2383DC360](v8[0], v8[1]);

  OUTLINED_FUNCTION_3_16();
  sub_237C08EDC();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x2383DC360](0x7362755320776F52, 0xEF203A656C706D61);
  sub_237C08A8C();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x2383DC360](v8[0], v8[1]);

  OUTLINED_FUNCTION_3_16();
  sub_237C08EDC();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_0();
  sub_237C08A8C();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x2383DC360](v8[0], v8[1]);

  return 0x747065442078614DLL;
}

uint64_t MLRandomForestClassifier.ModelParameters.playgroundDescription.getter@<X0>(uint64_t *a1@<X8>)
{
  result = MLRandomForestClassifier.ModelParameters.description.getter();
  a1[3] = MEMORY[0x277D837D0];
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_237AACFA0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 88))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t sub_237AACFF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_237AAD14C(uint64_t a1)
{
  result = _s20ConvolutionalNetworkVMa(319);
  if (v2 <= 0x3F)
  {
    result = _s3MLPVMa(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_237AAD228(uint64_t a1)
{
  result = sub_237C0638C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v9 = OUTLINED_FUNCTION_5_31();
  v11 = v10(v9);
  if (*(*(v11 - 8) + 84) == v5)
  {
    v12 = v11;
    v13 = v6;
  }

  else
  {
    v12 = a5(0);
    v13 = v6 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v13, v5, v12);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  v11 = OUTLINED_FUNCTION_5_31();
  v13 = v12(v11);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v14 = v13;
    v15 = v7;
  }

  else
  {
    v14 = a6(0);
    v15 = v7 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v15, v6, v6, v14);
}

uint64_t sub_237AAD4A4(uint64_t a1)
{
  result = _s11LeakyConv2DVMa(319);
  if (v2 <= 0x3F)
  {
    result = _s12CausalConv1DVMa(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_237AAD540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_237C064FC();

  return __swift_getEnumTagSinglePayload(a1 + v5, a2, v6);
}

uint64_t sub_237AAD5A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_237C064FC();

  return __swift_storeEnumTagSinglePayload(a1 + v6, a2, a2, v7);
}

uint64_t sub_237AAD600(uint64_t a1)
{
  result = sub_237C064FC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_237AAD6A8()
{
  OUTLINED_FUNCTION_5_31();
  v2 = sub_237C065CC();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_237AAD6FC()
{
  OUTLINED_FUNCTION_5_31();
  sub_237C065CC();
  v0 = OUTLINED_FUNCTION_24_15();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_237AAD734(uint64_t a1)
{
  result = sub_237C065CC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_237AAD7A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v58 = a2;
  v60 = a3;
  v61 = a1;
  v59 = _s11LeakyConv2DVMa(0) - 8;
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_2_0();
  v57 = v5 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACC8, &qword_237C10CF0);
  v7 = OUTLINED_FUNCTION_20(v6);
  MEMORY[0x28223BE20](v7);
  v9 = &v56 - v8;
  sub_237C0623C();
  v10 = sub_237C0616C();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v10);
  OUTLINED_FUNCTION_15_17();
  sub_237C061FC();
  sub_2379D9054(v9, &qword_27DE9ACC8, &qword_237C10CF0);
  sub_237C0622C();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v10);
  OUTLINED_FUNCTION_15_17();
  v56 = sub_237C0620C();
  sub_2379D9054(v9, &qword_27DE9ACC8, &qword_237C10CF0);
  sub_237C0622C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C710, &qword_237C10CF8);
  v17 = (_s12CausalConv1DVMa(0) - 8);
  v18 = *(*v17 + 72);
  v19 = (*(*v17 + 80) + 32) & ~*(*v17 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_237C0BC00;
  v21 = (v20 + v19);

  *v21 = sub_237C069DC();
  v21[1] = v22;
  swift_retain_n();

  OUTLINED_FUNCTION_6_31();
  OUTLINED_FUNCTION_29_8(v23, v24, v25, v26, 1, v27, v28);
  sub_237C0698C();
  OUTLINED_FUNCTION_16_14();

  *(v21 + v17[8]) = v3;
  v29 = (v21 + v18);

  *v29 = sub_237C069DC();
  v29[1] = v30;

  OUTLINED_FUNCTION_6_31();
  OUTLINED_FUNCTION_29_8(v31, v32, v33, v34, 2, v35, v36);
  sub_237C0698C();
  OUTLINED_FUNCTION_16_14();

  *(v29 + v17[8]) = v3;
  v37 = (v21 + 2 * v18);

  *v37 = sub_237C069DC();
  v37[1] = v38;

  OUTLINED_FUNCTION_6_31();
  OUTLINED_FUNCTION_29_8(v39, v40, v41, v42, 4, v43, v44);
  sub_237C0698C();
  OUTLINED_FUNCTION_16_14();

  *(v37 + v17[8]) = v3;
  v45 = (v21 + 3 * v18);

  *v45 = sub_237C069DC();
  v45[1] = v46;

  OUTLINED_FUNCTION_6_31();
  OUTLINED_FUNCTION_29_8(v47, v48, v49, v50, 8, v51, v52);
  sub_237C0698C();
  OUTLINED_FUNCTION_16_14();

  *(v45 + v17[8]) = v3;

  sub_237C0622C();
  v53 = v57;
  sub_237C0652C();
  sub_237C0698C();
  *(v53 + *(v59 + 28)) = v54;
  sub_237AAEA90(v20, v53, v60);
  _s18TemporalClassifierVMa(0);
  swift_retain_n();

  sub_237C0636C();
  _s3MLPVMa(0);
  sub_237C0636C();
}

uint64_t sub_237AADC94(uint64_t a1, uint64_t a2)
{
  sub_237AB02F0();

  return sub_237C0642C();
}

uint64_t sub_237AADCE0(uint64_t a1, uint64_t a2)
{
  sub_237AB02F0();

  return sub_237C0643C();
}

void sub_237AADD34()
{
  OUTLINED_FUNCTION_153();
  v1 = sub_237C0683C();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_18_0();
  v7 = (v5 - v6);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  v11 = OUTLINED_FUNCTION_25_13();
  v14 = *(v0 + *(_s12CausalConv1DVMa(v11) + 24));
  v13 = *v0;
  sub_237AB02F0();
  sub_237C063CC();
  sub_237C064FC();
  sub_237C063CC();
  v12 = *(v3 + 8);
  v12(v7, v1);
  sub_237C063CC();
  v12(v10, v1);
  OUTLINED_FUNCTION_150();
}

uint64_t sub_237AADEA4(uint64_t a1, uint64_t a2)
{
  sub_237AAE820(&qword_27DE9C700, _s12CausalConv1DVMa, &unk_237C10A08);

  return sub_237C0642C();
}

uint64_t sub_237AADF20(uint64_t a1, uint64_t a2)
{
  sub_237AAE820(&qword_27DE9C700, _s12CausalConv1DVMa, &unk_237C10A08);

  return sub_237C0643C();
}

void sub_237AADFA4()
{
  OUTLINED_FUNCTION_153();
  v18[1] = v0;
  v1 = sub_237C0683C();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_18_0();
  v7 = (v5 - v6);
  MEMORY[0x28223BE20](v8);
  v10 = v18 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = v18 - v12;
  v14 = OUTLINED_FUNCTION_25_13();
  v18[0] = *(_s3MLPVMa(v14) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B518, &qword_237C0D640);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_237C0B680;
  *(v15 + 32) = 0u;
  *(v15 + 48) = 0u;
  *(v15 + 64) = 0u;
  *(v15 + 80) = 0u;
  *(v15 + 96) = 0u;
  v16 = MEMORY[0x277D2CF50];
  *(v15 + 136) = MEMORY[0x277D83B88];
  *(v15 + 144) = v16;
  *(v15 + 112) = -1;
  sub_237C0684C();

  sub_237C0638C();
  sub_237C063CC();
  v17 = *(v3 + 8);
  v17(v7, v1);
  sub_237C062FC();
  v17(v10, v1);
  sub_237C063CC();
  v17(v13, v1);
  OUTLINED_FUNCTION_150();
}

uint64_t sub_237AAE190(uint64_t a1, uint64_t a2)
{
  sub_237AAE820(&qword_27DE9C6F0, _s3MLPVMa, &unk_237C10BB0);

  return sub_237C0642C();
}

uint64_t sub_237AAE20C(uint64_t a1, uint64_t a2)
{
  sub_237AAE820(&qword_27DE9C6F0, _s3MLPVMa, &unk_237C10BB0);

  return sub_237C0643C();
}

void sub_237AAE290()
{
  OUTLINED_FUNCTION_153();
  v39 = v0;
  v41 = v1;
  v38 = sub_237C0683C();
  OUTLINED_FUNCTION_0();
  v40 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18_0();
  v35 = v4 - v5;
  MEMORY[0x28223BE20](v6);
  v37 = &v31 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v31 - v12;
  v14 = sub_237C0610C();
  OUTLINED_FUNCTION_0();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_0();
  v20 = v19 - v18;
  sub_237C0679C();
  v21 = sub_237C0612C();
  v22 = *(v16 + 8);
  v22(v20, v14);
  sub_237C0679C();
  v33 = sub_237C0612C();
  v22(v20, v14);
  sub_237C0679C();
  v23 = sub_237C0612C();
  v42 = v14;
  v43 = v22;
  v22(v20, v14);
  sub_237C065EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_237C0BC00;
  v36 = v21;
  v34 = v23;
  if ((v21 * v23) >> 64 == (v21 * v23) >> 63)
  {
    *(v24 + 32) = v21 * v23;
    *(v24 + 40) = 1;
    *(v24 + 48) = v33;
    *(v24 + 56) = 1;
    sub_237C0611C();
    OUTLINED_FUNCTION_11_25();
    v32 = v13;
    sub_237C0681C();
    v43(v20, v42);
    v44 = *(v39 + *(_s11LeakyConv2DVMa(0) + 20));
    sub_237C065CC();
    v25 = v35;
    sub_237C063CC();
    v26 = v37;
    sub_237C063CC();
    v27 = v38;
    v33 = v10;
    v28 = *(v40 + 8);
    v28(v25, v38);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_237C0B680;
    v30 = v34;
    *(v29 + 32) = v36;
    *(v29 + 40) = v30;
    *(v29 + 48) = MEMORY[0x2383DA0D0]();
    sub_237C0611C();
    sub_237C0681C();
    v43(v20, v42);
    sub_237C065EC();
    v28(v25, v27);
    v28(v26, v27);
    v28(v33, v27);
    v28(v32, v27);
    OUTLINED_FUNCTION_150();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_237AAE690(uint64_t a1, uint64_t a2)
{
  sub_237AAE820(&qword_27DE9C6F8, _s11LeakyConv2DVMa, &unk_237C10860);

  return sub_237C0642C();
}

uint64_t sub_237AAE70C(uint64_t a1, uint64_t a2)
{
  sub_237AAE820(&qword_27DE9C6F8, _s11LeakyConv2DVMa, &unk_237C10860);

  return sub_237C0643C();
}

uint64_t sub_237AAE820(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_237AAE8B4()
{
  result = qword_27DE9C670;
  if (!qword_27DE9C670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9C670);
  }

  return result;
}

unint64_t sub_237AAE90C()
{
  result = qword_27DE9C678;
  if (!qword_27DE9C678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9C678);
  }

  return result;
}

unint64_t sub_237AAE964()
{
  result = qword_27DE9C680;
  if (!qword_27DE9C680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9C680);
  }

  return result;
}

int *sub_237AAEA90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = _s20ConvolutionalNetworkVMa(0);
  v7 = *(a1 + 16);
  if (!v7)
  {
    __break(1u);
    goto LABEL_9;
  }

  v8 = result;
  v9 = result[5];
  v10 = _s12CausalConv1DVMa(0);
  OUTLINED_FUNCTION_20(v10);
  v12 = v11;
  v13 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  result = sub_237AB0344(v13, a3 + v9);
  if (v7 == 1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v14 = *(v12 + 72);
  result = sub_237AB0344(v13 + v14, a3 + v8[6]);
  if (v7 < 3)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_237AB0344(v13 + 2 * v14, a3 + v8[7]);
  if (v7 == 3)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_237AB0344(v13 + 3 * v14, a3 + v8[8]);

  return sub_237AB03A8(a2, a3);
}

void sub_237AAEBB0()
{
  OUTLINED_FUNCTION_153();
  v1 = v0;
  sub_237C0683C();
  OUTLINED_FUNCTION_0();
  v11 = v3;
  v12 = v2;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_0();
  v6 = v5 - v4;
  v7 = OUTLINED_FUNCTION_25_13();
  _s11LeakyConv2DVMa(v7);
  sub_237AAE820(&qword_27DE9C6F8, _s11LeakyConv2DVMa, &unk_237C10860);
  sub_237C063CC();
  _s20ConvolutionalNetworkVMa(0);
  _s12CausalConv1DVMa(0);
  sub_237AAE820(&qword_27DE9C700, _s12CausalConv1DVMa, &unk_237C10A08);
  OUTLINED_FUNCTION_28_9(v6);
  v8 = _s20ConvolutionalNetworkV6OutputVMa(0);
  v9 = *(v8 + 20);
  OUTLINED_FUNCTION_28_9(v1);
  v10 = *(v8 + 24);
  OUTLINED_FUNCTION_28_9(v1 + v9);
  OUTLINED_FUNCTION_28_9(v1 + v10);
  (*(v11 + 8))(v6, v12);
  OUTLINED_FUNCTION_150();
}

uint64_t sub_237AAED78(uint64_t a1, uint64_t a2)
{
  sub_237AAE820(&qword_27DE9C6E8, _s20ConvolutionalNetworkVMa, &unk_237C10ADC);

  return sub_237C0642C();
}

uint64_t sub_237AAEDF4(uint64_t a1, uint64_t a2)
{
  sub_237AAE820(&qword_27DE9C6E8, _s20ConvolutionalNetworkVMa, &unk_237C10ADC);

  return sub_237C0643C();
}

uint64_t sub_237AAF028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v214 = a1;
  v219 = a3;
  v218 = _s11LeakyConv2DVMa(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v213 = v6 - v5;
  sub_237C060DC();
  OUTLINED_FUNCTION_0();
  v216 = v7;
  v217 = v8;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  v215 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B410, &qword_237C0CCC8);
  v12 = OUTLINED_FUNCTION_20(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_18_0();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v185 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACC8, &qword_237C10CF0);
  v20 = OUTLINED_FUNCTION_20(v19);
  MEMORY[0x28223BE20](v20);
  v22 = &v185 - v21;
  v23 = sub_237C0610C();
  v24 = OUTLINED_FUNCTION_20(v23);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_2_0();
  v27 = v26 - v25;
  OUTLINED_FUNCTION_25_13();
  v28 = sub_237C0683C();
  OUTLINED_FUNCTION_0();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_18_0();
  v34 = v32 - v33;
  MEMORY[0x28223BE20](v35);
  v37 = &v185 - v36;
  v38 = v225;
  v39 = sub_237A2B584(0);
  if (v38)
  {
    return sub_237A2C4F4(a2);
  }

  v206 = v34;
  v207 = v15;
  v208 = v30;
  v209 = v22;
  v225 = v39;
  v211 = v27;
  v212 = v37;
  v41 = v218;
  v42 = v219;
  v210 = v18;
  v43 = sub_237A2B584(1uLL);
  v44 = sub_237A2B584(2uLL);
  v45 = sub_237A2B584(3uLL);
  v46 = sub_237A2B584(4uLL);
  v205 = v44;
  v47 = sub_237A2B584(5uLL);
  v48 = sub_237A2B584(6uLL);
  v187 = v47;
  v188 = v48;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C710, &qword_237C10CF8);
  v49 = _s12CausalConv1DVMa(0);
  v50 = *(v49 - 8);
  v200 = v49 - 8;
  v199 = *(v50 + 72);
  v51 = (*(v50 + 80) + 32) & ~*(v50 + 80);
  v52 = swift_allocObject();
  v191 = xmmword_237C0BC00;
  *(v52 + 16) = xmmword_237C0BC00;
  v186 = v52;
  v196 = (v52 + v51);
  v194 = v45;
  sub_237C0611C();
  v220 = sub_237ADBD4C(200, v43);
  v221 = v53;
  v222 = v54;
  v223 = v55;
  v203 = sub_237C0616C();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v56, v57, v58, v59);
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C718, &unk_237C10D00);
  v192 = sub_2379D9224(&qword_27DE9C720, &qword_27DE9C718, &unk_237C10D00, MEMORY[0x277D83FC0]);
  sub_237C0678C();
  sub_237C0611C();
  v202 = *MEMORY[0x277D2CCC8];
  v201 = *(v217 + 104);
  v217 += 104;
  (v201)(v215);
  OUTLINED_FUNCTION_4_36();
  __swift_storeEnumTagSinglePayload(v61, v62, v63, *(v60 - 256));
  v190 = v46;
  v64 = v210;
  sub_237C067BC();
  v65 = v28;
  v204 = v28;
  __swift_storeEnumTagSinglePayload(v64, 0, 1, v28);
  v66 = sub_237C069DC();
  v67 = v196;
  *v196 = v66;
  v67[1] = v68;
  v69 = v208;
  v70 = *(v208 + 16);
  v197 = v208 + 16;
  v198 = v70;
  v70(v206, v212, v65);
  sub_237A7FA40(v64, v207);
  v71 = v200;
  OUTLINED_FUNCTION_10_25();
  sub_237C064CC();
  sub_237C0698C();
  v73 = v72;
  sub_2379D9054(v210, &qword_27DE9B410, &qword_237C0CCC8);
  v74 = *(v69 + 8);
  v69 += 8;
  v195 = v74;
  v208 = v69;
  v74(v212, v204);
  *(v67 + *(v71 + 32)) = v73;
  v189 = (v199 + v67);
  v75 = v211;
  sub_237C0611C();
  v220 = sub_237ADBD4C(160, v205);
  v221 = v76;
  v222 = v77;
  v223 = v78;
  v79 = v209;
  OUTLINED_FUNCTION_4_36();
  OUTLINED_FUNCTION_27_7(v80, v81, v82, v83);
  OUTLINED_FUNCTION_26_12(v75, &v220, v79);
  sub_237C0611C();
  OUTLINED_FUNCTION_12_22();
  v201();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v84, v85, v86, v69);
  v87 = v210;
  sub_237C067BC();
  v88 = OUTLINED_FUNCTION_2_42();
  OUTLINED_FUNCTION_27_7(v88, v89, v90, v91);
  v92 = sub_237C069DC();
  v93 = v189;
  *v189 = v92;
  v93[1] = v94;
  OUTLINED_FUNCTION_9_25();
  v95();
  v96 = v87;
  sub_237A7FA40(v87, v207);
  v97 = v200;
  OUTLINED_FUNCTION_10_25();
  sub_237C064CC();
  sub_237C0698C();
  v99 = v98;
  sub_2379D9054(v96, &qword_27DE9B410, &qword_237C0CCC8);
  OUTLINED_FUNCTION_14_19();
  v100();
  *(v93 + *(v97 + 32)) = v99;
  v189 = (v196 + 2 * v199);
  sub_237C0611C();
  OUTLINED_FUNCTION_22_13(&v224);
  v101 = OUTLINED_FUNCTION_1_38();
  v102 = v203;
  __swift_storeEnumTagSinglePayload(v101, v103, v104, v203);
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AEA8, &unk_237C0C200);
  v194 = sub_2379D9224(&qword_27DE9C728, &qword_27DE9AEA8, &unk_237C0C200, MEMORY[0x277D83988]);
  sub_237C0678C();
  sub_237C0611C();
  OUTLINED_FUNCTION_12_22();
  v201();
  v105 = OUTLINED_FUNCTION_1_38();
  v106 = v102;
  v107 = v210;
  __swift_storeEnumTagSinglePayload(v105, v108, v109, v106);
  OUTLINED_FUNCTION_11_25();
  sub_237C067BC();
  v110 = OUTLINED_FUNCTION_2_42();
  __swift_storeEnumTagSinglePayload(v110, v112, v113, *(v111 - 256));
  v114 = sub_237C069DC();
  v115 = v189;
  *v189 = v114;
  v115[1] = v116;
  v117 = v206;
  OUTLINED_FUNCTION_9_25();
  v118();
  sub_237A7FA40(v107, v207);
  v119 = v200;
  OUTLINED_FUNCTION_10_25();
  sub_237C064CC();
  sub_237C0698C();
  v120 = OUTLINED_FUNCTION_16_14();
  sub_2379D9054(v120, &qword_27DE9B410, &qword_237C0CCC8);
  OUTLINED_FUNCTION_14_19();
  v121();
  *(v115 + *(v119 + 32)) = v99;
  v199 = (v196 + 3 * v199);
  sub_237C0611C();
  OUTLINED_FUNCTION_22_13(&v220);
  v122 = v209;
  OUTLINED_FUNCTION_4_36();
  OUTLINED_FUNCTION_27_7(v123, v124, v125, v126);
  v127 = OUTLINED_FUNCTION_11_25();
  OUTLINED_FUNCTION_18_21(v127, v128, v122);
  sub_237C0611C();
  OUTLINED_FUNCTION_12_22();
  OUTLINED_FUNCTION_23_17();
  v129();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v130, v131, v132, v117);
  v133 = v210;
  OUTLINED_FUNCTION_11_25();
  sub_237C067BC();
  OUTLINED_FUNCTION_27_7(v133, 0, 1, &v226);
  v134 = sub_237C069DC();
  v135 = v199;
  *v199 = v134;
  v135[1] = v136;
  OUTLINED_FUNCTION_9_25();
  v137();
  sub_237A7FA40(v133, v207);
  OUTLINED_FUNCTION_10_25();
  sub_237C064CC();
  sub_237C0698C();
  v139 = v138;
  sub_2379D9054(v133, &qword_27DE9B410, &qword_237C0CCC8);
  OUTLINED_FUNCTION_14_19();
  v140();
  *(v135 + *(v200 + 32)) = v139;
  v141 = v211;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
  v142 = swift_allocObject();
  *(v142 + 16) = v191;
  *(v142 + 32) = xmmword_237C10760;
  v143 = v214;
  *(v142 + 48) = v214;
  *(v142 + 56) = 1;
  sub_237C0611C();
  result = 10 * v143;
  if ((v143 * 10) >> 64 == (10 * v143) >> 63)
  {
    v220 = sub_237ADBD4C(result, v225);
    v221 = v144;
    v222 = v145;
    v223 = v146;
    v147 = v209;
    v148 = OUTLINED_FUNCTION_1_38();
    v149 = v203;
    __swift_storeEnumTagSinglePayload(v148, v150, v151, v203);
    OUTLINED_FUNCTION_26_12(v141, &v220, v147);
    sub_237C0611C();
    OUTLINED_FUNCTION_12_22();
    OUTLINED_FUNCTION_23_17();
    v152();
    v153 = OUTLINED_FUNCTION_1_38();
    __swift_storeEnumTagSinglePayload(v153, v154, v155, v149);
    OUTLINED_FUNCTION_11_25();
    sub_237C067BC();
    v156 = OUTLINED_FUNCTION_2_42();
    __swift_storeEnumTagSinglePayload(v156, v158, v159, *(v157 - 256));
    v160 = v213;
    sub_237C0657C();
    sub_237C0698C();
    *(v160 + *(v41 + 20)) = v161;
    sub_237AAEA90(v186, v160, v42);
    sub_237C0611C();
    OUTLINED_FUNCTION_22_13(&v217);
    v162 = OUTLINED_FUNCTION_1_38();
    v163 = v203;
    __swift_storeEnumTagSinglePayload(v162, v164, v165, v203);
    OUTLINED_FUNCTION_18_21(v141, &v220, v147);
    sub_237C0611C();
    OUTLINED_FUNCTION_12_22();
    OUTLINED_FUNCTION_23_17();
    v166();
    v167 = OUTLINED_FUNCTION_1_38();
    __swift_storeEnumTagSinglePayload(v167, v168, v169, v163);
    OUTLINED_FUNCTION_11_25();
    sub_237C067BC();
    v170 = OUTLINED_FUNCTION_2_42();
    __swift_storeEnumTagSinglePayload(v170, v172, v173, *(v171 - 256));
    _s18TemporalClassifierVMa(0);
    sub_237C0633C();
    sub_237C0611C();
    OUTLINED_FUNCTION_22_13(&v218);
    v174 = OUTLINED_FUNCTION_1_38();
    __swift_storeEnumTagSinglePayload(v174, v175, v176, v163);
    OUTLINED_FUNCTION_18_21(v141, &v220, v147);
    sub_237C0611C();
    OUTLINED_FUNCTION_12_22();
    OUTLINED_FUNCTION_23_17();
    v177();
    v178 = OUTLINED_FUNCTION_1_38();
    __swift_storeEnumTagSinglePayload(v178, v179, v180, v163);
    OUTLINED_FUNCTION_11_25();
    sub_237C067BC();
    v181 = OUTLINED_FUNCTION_2_42();
    __swift_storeEnumTagSinglePayload(v181, v183, v184, *(v182 - 256));
    _s3MLPVMa(0);
    sub_237C0633C();
    return sub_237A2C4F4(a2);
  }

  __break(1u);
  return result;
}

void sub_237AAFEB4()
{
  OUTLINED_FUNCTION_153();
  v1 = v0;
  v2 = _s20ConvolutionalNetworkV6OutputVMa(0);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_0();
  v6 = v5 - v4;
  _s20ConvolutionalNetworkVMa(0);
  sub_237AAE820(&qword_27DE9C6E8, _s20ConvolutionalNetworkVMa, &unk_237C10ADC);
  sub_237C063CC();
  _s18TemporalClassifierVMa(0);
  v7 = _s18TemporalClassifierV6OutputVMa(0);
  _s3MLPVMa(0);
  sub_237AAE820(&qword_27DE9C6F0, _s3MLPVMa, &unk_237C10BB0);
  sub_237C063CC();
  v8 = sub_237C0683C();
  OUTLINED_FUNCTION_4();
  v10 = *(v9 + 16);
  v10(v1, v6, v8);
  v10(v1 + *(v7 + 20), v6 + *(v3 + 28), v8);
  v10(v1 + *(v7 + 24), v6 + *(v3 + 32), v8);
  sub_237AB0294(v6);
  OUTLINED_FUNCTION_150();
}

uint64_t sub_237AB007C(uint64_t a1, uint64_t a2)
{
  sub_237AAE820(&qword_27DE9B3D8, _s18TemporalClassifierVMa, &unk_237C10C84);

  return sub_237C0642C();
}

uint64_t sub_237AB00F8(uint64_t a1, uint64_t a2)
{
  sub_237AAE820(&qword_27DE9B3D8, _s18TemporalClassifierVMa, &unk_237C10C84);

  return sub_237C0643C();
}

uint64_t sub_237AB0294(uint64_t a1)
{
  v2 = _s20ConvolutionalNetworkV6OutputVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_237AB02F0()
{
  result = qword_27DE9C708;
  if (!qword_27DE9C708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9C708);
  }

  return result;
}

uint64_t sub_237AB0344(uint64_t a1, uint64_t a2)
{
  v4 = _s12CausalConv1DVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237AB03A8(uint64_t a1, uint64_t a2)
{
  v4 = _s11LeakyConv2DVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t __swift_get_extra_inhabitant_index_8Tm()
{
  v2 = OUTLINED_FUNCTION_5_31();
  v4 = v3(v2);

  return __swift_getEnumTagSinglePayload(v1, v0, v4);
}

uint64_t __swift_store_extra_inhabitant_index_9Tm()
{
  v0 = OUTLINED_FUNCTION_5_31();
  v1(v0);
  v2 = OUTLINED_FUNCTION_24_15();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_237AB0510(uint64_t a1)
{
  result = sub_237C0683C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_18_21(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_237C0678C();
}

uint64_t OUTLINED_FUNCTION_21_16()
{

  return sub_237A2C4F4(v0);
}

uint64_t OUTLINED_FUNCTION_26_12(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_237C0678C();
}

uint64_t OUTLINED_FUNCTION_27_7@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a4 - 256);

  return __swift_storeEnumTagSinglePayload(a1, a2, a3, v5);
}

uint64_t OUTLINED_FUNCTION_28_9(uint64_t a1)
{

  return sub_237C063CC();
}

uint64_t OUTLINED_FUNCTION_29_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return MEMORY[0x28218B918](a1, a2, a3, a4, a5, 1, a7, v7);
}

_BYTE *_s10__DefaultsVwst_0(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x237AB0874);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

void sub_237AB08AC(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v5 = OUTLINED_FUNCTION_117_0();
    sub_2379DBCF4(v5, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
    v7 = sub_237C0925C();
    if (v7)
    {
      v8 = v7;
      v9 = OUTLINED_FUNCTION_117_0();
      sub_2379DBC9C(v9, v14);
    }

    else
    {
      OUTLINED_FUNCTION_50();
      v8 = swift_allocError();
      *v15 = a1;
    }

    v16 = 1;
    goto LABEL_7;
  }

  v10 = *(*(a1 + 16) + 16);
  v11 = OUTLINED_FUNCTION_85();
  sub_2379DBCF4(v11, v12);
  v13 = sub_237B0E0C8(v10);
  v17 = v13;
  if (v13)
  {
    type metadata accessor for CMLColumn();
    OUTLINED_FUNCTION_103();
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    v19 = OUTLINED_FUNCTION_85();
    sub_2379DBC9C(v19, v20);
    type metadata accessor for _UntypedColumn();
    OUTLINED_FUNCTION_103();
    v8 = swift_allocObject();
    v16 = 0;
    *(v8 + 16) = v18;
LABEL_7:
    *a3 = v8;
    *(a3 + 8) = v16;
    return;
  }

  __break(1u);
}