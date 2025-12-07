uint64_t JointsSelector.applied(to:eventHandler:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v26 = a2;
  v3 = *a1;
  v4 = *v2;
  v29 = v2[1];
  v32 = v3;
  v5 = v3 + 64;
  v6 = 1 << *(v3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v3 + 64);
  v9 = (v6 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v11 = 0;
  v27 = v3;
  v28 = v4;
  if (v8)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v9)
    {

      v22 = v32;
      v23 = v26;
      v26[1] = 0x6C6C414F50494E56;
      v23[2] = 0xE800000000000000;
      *v23 = v22;
      return result;
    }

    v8 = *(v5 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      do
      {
LABEL_8:
        v13 = (*(v3 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v8)))));
        v15 = *v13;
        v14 = v13[1];
        if (v4)
        {
          v30 = *v13;
          v31 = v14;
          MEMORY[0x28223BE20](result);
          v25 = &v30;
          sub_237EF8260();
          v16 = sub_237D8269C(sub_237D834B8, v24, v4);
          if (v16)
          {
            v18 = OUTLINED_FUNCTION_0_49();
            if (*(v17 + 8))
            {
              *(v17 + 16) = 0;
              *(v17 + 24) = 0;
              *(v17 + 32) = 0;
            }

            v16 = (v18)(&v30, 0);
          }

          v3 = v27;
          v4 = v28;
        }

        else
        {
          v16 = sub_237EF8260();
        }

        if (v29)
        {
          v30 = v15;
          v31 = v14;
          MEMORY[0x28223BE20](v16);
          v25 = &v30;
          if (!sub_237D8269C(sub_237D832B4, v24, v19))
          {
            v21 = OUTLINED_FUNCTION_0_49();
            if (*(v20 + 8))
            {
              *(v20 + 16) = 0;
              *(v20 + 24) = 0;
              *(v20 + 32) = 0;
            }

            (v21)(&v30, 0);
          }
        }

        v8 &= v8 - 1;
      }

      while (v8);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_237D82484(void *a1, uint64_t *a2)
{
  JointsSelector.applied(to:eventHandler:)(a2, a1);
  v3 = *(v2 + 8);

  return v3();
}

unint64_t JointsSelector.debugDescription.getter()
{
  v2 = *v0;
  v1 = v0[1];
  if (*v0)
  {
    if (v1)
    {
      v7 = 0;
      sub_237EF9330();
      MEMORY[0x2383E0710](0xD00000000000001ELL, 0x8000000237EFEC70);
      v3 = MEMORY[0x2383E0A10](v2, &type metadata for JointKey);
      MEMORY[0x2383E0710](v3);

      MEMORY[0x2383E0710](0xD000000000000012, 0x8000000237EFEC90);
      v4 = v1;
    }

    else
    {
      sub_237EF9330();

      v7 = 0xD00000000000001ELL;
      v4 = v2;
    }
  }

  else
  {
    if (!v1)
    {
      return 0x655373746E696F4ALL;
    }

    sub_237EF9330();

    v7 = 0xD00000000000001FLL;
    v4 = v1;
  }

  v5 = MEMORY[0x2383E0A10](v4, &type metadata for JointKey);
  MEMORY[0x2383E0710](v5);

  MEMORY[0x2383E0710](62, 0xE100000000000000);
  return v7;
}

BOOL sub_237D8269C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v10[0] = *(v5 - 1);
    v10[1] = v7;
    sub_237EF8260();
    v8 = a1(v10);

    if (v3)
    {
      break;
    }

    v5 += 2;
  }

  while ((v8 & 1) == 0);
  return v6 != 0;
}

void (*sub_237D82734(void *a1, uint64_t a2, uint64_t a3))(uint64_t)
{
  v6 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[8] = sub_237D831E8(v6);
  v6[9] = sub_237D828F8(v6 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_237D827CC;
}

void (*sub_237D827D0(void *a1, uint64_t a2))(uint64_t)
{
  v4 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4[8] = sub_237D8321C(v4);
  v4[9] = sub_237D82B84(v4 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_237D834D8;
}

void (*sub_237D82860(void *a1, uint64_t a2, uint64_t a3))(uint64_t)
{
  v6 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[8] = sub_237D8321C(v6);
  v6[9] = sub_237D82D94(v6 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_237D834D8;
}

void (*sub_237D828F8(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t *a1, char a2)
{
  v5 = v4;
  v9 = __swift_coroFrameAllocStub(0x98uLL);
  *a1 = v9;
  v9[16] = a3;
  v9[17] = v4;
  v9[15] = a2;
  v10 = *v4;
  v11 = sub_237D30F88();
  *(v9 + 36) = v12 & 1;
  if (__OFADD__(*(v10 + 16), (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v13 = v11;
  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB0E60, &unk_237F11EA0);
  if (sub_237EF96B0())
  {
    v15 = sub_237D30F88();
    if ((v14 & 1) == (v16 & 1))
    {
      v13 = v15;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_237EFA020();
    __break(1u);
    return result;
  }

LABEL_5:
  v9[18] = v13;
  if (v14)
  {
    v17 = *(*v5 + 56) + 40 * v13;
    v18 = *v17;
    v19 = *(v17 + 8);
    v20 = *(v17 + 16);
    v21 = *(v17 + 32);
  }

  else
  {
    v18 = 0;
    v19 = 0;
    v21 = 0;
    v20 = 0uLL;
  }

  v9[10] = v18;
  v9[11] = v19;
  *(v9 + 6) = v20;
  *(v9 + 28) = v21;
  return sub_237D82A5C;
}

void sub_237D82A5C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 88);
  v4 = *(*a1 + 96);
  v6 = *(*a1 + 104);
  v7 = *(*a1 + 112);
  v8 = *(*a1 + 36);
  if (a2)
  {
    if (v5)
    {
      v9 = *(v2 + 144);
      v10 = **(v2 + 136);
      if ((v8 & 1) == 0)
      {
        v11 = *(v2 + 120);
        v12 = *(v2 + 128);
        *v2 = v3;
        *(v2 + 8) = v5;
        *(v2 + 16) = v4;
        *(v2 + 24) = v6;
        *(v2 + 32) = v7;
        v13 = v12;
        v14 = v2;
LABEL_11:
        sub_237D306E8(v9, v11, v13, v14, v10);
        sub_237EF8260();
        goto LABEL_12;
      }

      goto LABEL_7;
    }
  }

  else if (v5)
  {
    v9 = *(v2 + 144);
    v10 = **(v2 + 136);
    if ((v8 & 1) == 0)
    {
      v11 = *(v2 + 120);
      v16 = *(v2 + 128);
      *(v2 + 40) = v3;
      *(v2 + 48) = v5;
      *(v2 + 56) = v4;
      *(v2 + 64) = v6;
      *(v2 + 72) = v7;
      v14 = v2 + 40;
      v13 = v16;
      goto LABEL_11;
    }

LABEL_7:
    v15 = *(v10 + 56) + 40 * v9;
    *v15 = v3;
    *(v15 + 8) = v5;
    *(v15 + 16) = v4;
    *(v15 + 24) = v6;
    *(v15 + 32) = v7;
    goto LABEL_12;
  }

  if (*(*a1 + 36))
  {
    sub_237D83460(*(**(v2 + 136) + 48) + 16 * *(v2 + 144));
    sub_237CC6D04();
    sub_237EF96D0();
  }

LABEL_12:
  sub_237EF8260();

  free(v2);
}

void (*sub_237D82B84(void *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  v7 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v7;
  v7[4] = a2;
  v7[5] = v3;
  v8 = *v3;
  v9 = sub_237D2FCC4(a2);
  *(v7 + 25) = v10 & 1;
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE328, &qword_237F055D8);
  if (sub_237EF96B0())
  {
    v13 = sub_237D2FCC4(a2);
    if ((v12 & 1) == (v14 & 1))
    {
      v11 = v13;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_237EFA020();
    __break(1u);
    return result;
  }

LABEL_5:
  v7[6] = v11;
  if (v12)
  {
    v15 = *(*v4 + 56) + 32 * v11;
    v16 = *v15;
    v17 = *(v15 + 8);
    v18 = *(v15 + 16);
    v19 = *(v15 + 24);
  }

  else
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
  }

  *v7 = v16;
  v7[1] = v17;
  v7[2] = v18;
  *(v7 + 24) = v19;
  return sub_237D82CCC;
}

void sub_237D82CCC(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = (*a1)[1];
  v4 = (*a1)[2];
  v5 = *(*a1 + 24);
  v6 = *(*a1 + 25);
  if (v3)
  {
    v7 = v1[6];
    v8 = *v1[5];
    if (v6)
    {
      v9 = v8[7] + 32 * v7;
      *v9 = v2;
      *(v9 + 8) = v3;
      *(v9 + 16) = v4;
      *(v9 + 24) = v5 & 1;
    }

    else
    {
      sub_237D30AA0(v7, v1[4], v2, v3, v4, v5 & 1, v8);
    }
  }

  else if (*(*a1 + 25))
  {
    sub_237EF96D0();
  }

  sub_237EF8260();

  free(v1);
}

void (*sub_237D82D94(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t a1, char a2)
{
  v5 = v4;
  v9 = __swift_coroFrameAllocStub(0x68uLL);
  *a1 = v9;
  v9[1] = a3;
  v9[2] = v4;
  *v9 = a2;
  v10 = sub_237EF7B00();
  v9[3] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v9[4] = v11;
  v13 = *(v11 + 64);
  v9[5] = __swift_coroFrameAllocStub(v13);
  v9[6] = __swift_coroFrameAllocStub(v13);
  v9[7] = __swift_coroFrameAllocStub(v13);
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB25F0, &unk_237F11E90) - 8) + 64);
  v9[8] = __swift_coroFrameAllocStub(v14);
  v9[9] = __swift_coroFrameAllocStub(v14);
  v15 = __swift_coroFrameAllocStub(v14);
  v9[10] = v15;
  v16 = *v5;
  v17 = sub_237D2FC30(a2);
  *(v9 + 96) = v18 & 1;
  if (__OFADD__(*(v16 + 16), (v18 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v19 = v17;
  v20 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2E8, &qword_237F055A0);
  if (sub_237EF96B0())
  {
    v21 = sub_237D2FC30(a2);
    if ((v20 & 1) == (v22 & 1))
    {
      v19 = v21;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_237EFA020();
    __break(1u);
    return result;
  }

LABEL_5:
  v9[11] = v19;
  if (v20)
  {
    (*(v12 + 32))(v15, *(*v5 + 56) + *(v12 + 72) * v19, v10);
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  __swift_storeEnumTagSinglePayload(v15, v23, 1, v10);
  return sub_237D82FF8;
}

void sub_237D82FF8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(v2 + 3);
  if (a2)
  {
    v5 = *(v2 + 8);
    sub_237D83388(v3, v5);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v4);
    v7 = *(v2 + 96);
    v8 = *(v2 + 8);
    if (EnumTagSinglePayload != 1)
    {
      v9 = *(v2 + 2);
      v10 = *(*(v2 + 4) + 32);
      v10(*(v2 + 6), v8, *(v2 + 3));
      v11 = *v9;
      v12 = *(v2 + 11);
      v13 = *(v2 + 6);
      if ((v7 & 1) == 0)
      {
LABEL_4:
        v14 = *(v2 + 5);
        v16 = *v2;
        v15 = *(v2 + 1);
        v10(v14, v13, *(v2 + 3));
        sub_237D30C18(v12, v16, v15, v14, v11);
        sub_237EF8260();
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v17 = *(v2 + 9);
    sub_237D83388(v3, v17);
    v18 = __swift_getEnumTagSinglePayload(v17, 1, v4);
    v7 = *(v2 + 96);
    v8 = *(v2 + 9);
    if (v18 != 1)
    {
      v19 = *(v2 + 2);
      v10 = *(*(v2 + 4) + 32);
      v10(*(v2 + 7), v8, *(v2 + 3));
      v11 = *v19;
      v12 = *(v2 + 11);
      v13 = *(v2 + 7);
      if ((v7 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      v10(*(v11 + 56) + *(*(v2 + 4) + 72) * v12, v13, *(v2 + 3));
      goto LABEL_10;
    }
  }

  sub_237D833F8(v8);
  if (v7)
  {
    sub_237C72678(*(**(v2 + 2) + 48) + 16 * *(v2 + 11));
    sub_237EF96D0();
  }

LABEL_10:
  v20 = *(v2 + 9);
  v21 = *(v2 + 10);
  v23 = *(v2 + 7);
  v22 = *(v2 + 8);
  v25 = *(v2 + 5);
  v24 = *(v2 + 6);
  sub_237D833F8(v21);
  free(v21);
  free(v20);
  free(v22);
  free(v23);
  free(v24);
  free(v25);

  free(v2);
}

uint64_t (*sub_237D831E8(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_237D83210;
}

uint64_t (*sub_237D8321C(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_237D834B4;
}

uint64_t sub_237D83244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_237EF9D40() & 1;
  }
}

uint64_t sub_237D832D4(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_237D83328(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
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

uint64_t sub_237D83388(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB25F0, &unk_237F11E90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237D833F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB25F0, &unk_237F11E90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t (*OUTLINED_FUNCTION_0_49())()
{

  return sub_237D81FDC((v2 - 128), v1, v0);
}

uint64_t type metadata accessor for SpatialTemporalGraphConvolution(uint64_t a1)
{
  result = qword_27DEB2600;
  if (!qword_27DEB2600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_237D83570(uint64_t a1)
{
  type metadata accessor for SpatialConvolution(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for TemporalConvolution(319);
    if (v2 <= 0x3F)
    {
      sub_237D8361C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_237D8361C(uint64_t a1)
{
  if (!qword_27DEB2610)
  {
    type metadata accessor for ConvolutionBatchNormalization(255);
    v1 = sub_237EF90F0();
    if (!v2)
    {
      atomic_store(v1, &qword_27DEB2610);
    }
  }
}

uint64_t sub_237D83674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v33 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB25F8, &unk_237F11EB0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_9_34();
  v31 = type metadata accessor for ConvolutionBatchNormalization(v5);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5();
  v30 = v8 - v7;
  v9 = sub_237EF6B10();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v30 - v16;
  v18 = type metadata accessor for SpatialTemporalGraphConvolution(0);
  type metadata accessor for SpatialConvolution(0);
  OUTLINED_FUNCTION_2_57();
  sub_237D84818(v19, v20, &unk_237F1E2D8);
  sub_237EF6850();
  type metadata accessor for TemporalConvolution(0);
  OUTLINED_FUNCTION_0_50();
  sub_237D84818(v21, v22, &unk_237F1B3B8);
  sub_237EF6850();
  v23 = *(v11 + 8);
  v23(v14, v9);
  v24 = *(v18 + 28);
  v25 = v31;
  sub_237D84560(v2 + v24, v3);
  if (__swift_getEnumTagSinglePayload(v3, 1, v25) == 1)
  {
    sub_237D845D0(v3);
  }

  else
  {
    v26 = v30;
    sub_237D8468C(v3, v30, type metadata accessor for ConvolutionBatchNormalization);
    OUTLINED_FUNCTION_1_61();
    sub_237D84818(v27, v28, &unk_237F1C1B4);
    sub_237EF6850();
    sub_237EF69F0();
    v23(v14, v9);
    sub_237D847C0(v26, type metadata accessor for ConvolutionBatchNormalization);
  }

  sub_237EF6760();
  return (v23)(v17, v9);
}

uint64_t sub_237D83970(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69536C656E72656BLL && a2 == 0xEA0000000000657ALL;
  if (v4 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x8000000237EFECB0 == a2;
    if (v6 || (sub_237EF9D40() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000013 && 0x8000000237EFECD0 == a2;
      if (v7 || (sub_237EF9D40() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000015 && 0x8000000237EFECF0 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_237EF9D40();

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

unint64_t sub_237D83AD8(char a1)
{
  result = 0x69536C656E72656BLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_237D83B74(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2670, &qword_237F12010);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v6);
  v8 = &v16[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237D84638();
  sub_237EFA1B0();
  v16[15] = 0;
  sub_237EF9A50();
  if (!v1)
  {
    type metadata accessor for SpatialTemporalGraphConvolution(0);
    v16[14] = 1;
    type metadata accessor for SpatialConvolution(0);
    OUTLINED_FUNCTION_2_57();
    sub_237D84818(v9, v10, &unk_237F1E288);
    OUTLINED_FUNCTION_4_50();
    sub_237EF9A70();
    v16[13] = 2;
    type metadata accessor for TemporalConvolution(0);
    OUTLINED_FUNCTION_0_50();
    sub_237D84818(v11, v12, &unk_237F1B368);
    OUTLINED_FUNCTION_4_50();
    sub_237EF9A70();
    v16[12] = 3;
    type metadata accessor for ConvolutionBatchNormalization(0);
    OUTLINED_FUNCTION_1_61();
    sub_237D84818(v13, v14, &unk_237F1C164);
    OUTLINED_FUNCTION_4_50();
    sub_237EF9A00();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_237D83DB4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB25F8, &unk_237F11EB0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v4);
  v44 = &v41 - v5;
  v46 = type metadata accessor for TemporalConvolution(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  type metadata accessor for SpatialConvolution(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2648, &qword_237F12008);
  OUTLINED_FUNCTION_1();
  v45 = v14;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v15);
  v16 = OUTLINED_FUNCTION_9_34();
  type metadata accessor for SpatialTemporalGraphConvolution(v16);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_5();
  v20 = (v19 - v18);
  v50 = v21;
  v22 = *(v21 + 28);
  v23 = type metadata accessor for ConvolutionBatchNormalization(0);
  v51 = v22;
  v24 = v20;
  __swift_storeEnumTagSinglePayload(v20 + v22, 1, 1, v23);
  v25 = a1[3];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_237D84638();
  v48 = v2;
  v26 = v49;
  sub_237EFA190();
  if (v26)
  {
    __swift_destroy_boxed_opaque_existential_1(v52);
    return sub_237D845D0(v24 + v51);
  }

  else
  {
    v49 = v23;
    v56 = 0;
    v27 = sub_237EF9950();
    v42 = v24;
    *v24 = v27;
    v55 = 1;
    OUTLINED_FUNCTION_2_57();
    sub_237D84818(v28, v29, &unk_237F1E2B0);
    v30 = v13;
    sub_237EF9970();
    v31 = v50;
    v32 = v42;
    sub_237D8468C(v30, v42 + *(v50 + 20), type metadata accessor for SpatialConvolution);
    v54 = 2;
    OUTLINED_FUNCTION_0_50();
    sub_237D84818(v33, v34, &unk_237F1B390);
    sub_237EF9970();
    sub_237D8468C(v9, v32 + *(v31 + 24), type metadata accessor for TemporalConvolution);
    v53 = 3;
    OUTLINED_FUNCTION_1_61();
    sub_237D84818(v35, v36, &unk_237F1C18C);
    v37 = v44;
    sub_237EF9900();
    v38 = OUTLINED_FUNCTION_7_41();
    v39(v38);
    sub_237D846EC(v37, v32 + v51);
    sub_237D8475C(v32, v43);
    __swift_destroy_boxed_opaque_existential_1(v52);
    return sub_237D847C0(v32, type metadata accessor for SpatialTemporalGraphConvolution);
  }
}

uint64_t sub_237D842B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237D83970(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237D842DC(uint64_t a1)
{
  v2 = sub_237D84638();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237D84318(uint64_t a1)
{
  v2 = sub_237D84638();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_237D84388(uint64_t a1, uint64_t a2)
{
  sub_237D84818(&qword_27DEB2520, type metadata accessor for SpatialTemporalGraphConvolution, &unk_237F11FA4);

  return sub_237EF6890();
}

uint64_t sub_237D84404(uint64_t a1, uint64_t a2)
{
  v4 = sub_237D84818(&qword_27DEB2520, type metadata accessor for SpatialTemporalGraphConvolution, &unk_237F11FA4);

  return MEMORY[0x28218B8E0](a1, a2, v4);
}

uint64_t sub_237D84560(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB25F8, &unk_237F11EB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237D845D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB25F8, &unk_237F11EB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_237D84638()
{
  result = qword_27DEB2650;
  if (!qword_27DEB2650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2650);
  }

  return result;
}

uint64_t sub_237D8468C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_237D846EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB25F8, &unk_237F11EB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_237D8475C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SpatialTemporalGraphConvolution(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237D847C0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_237D84818(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

_BYTE *storeEnumTagSinglePayload for SpatialTemporalGraphConvolution.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_237D84940()
{
  result = qword_27DEB2690;
  if (!qword_27DEB2690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2690);
  }

  return result;
}

unint64_t sub_237D84998()
{
  result = qword_27DEB2698;
  if (!qword_27DEB2698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2698);
  }

  return result;
}

unint64_t sub_237D849F0()
{
  result = qword_27DEB26A0;
  if (!qword_27DEB26A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB26A0);
  }

  return result;
}

void sub_237D84AC4()
{
  OUTLINED_FUNCTION_13_4();
  v2 = v0;
  HIDWORD(v24) = v3;
  v5 = v4;
  v28 = *MEMORY[0x277D85DE8];
  v6 = sub_237EF5EF0();
  OUTLINED_FUNCTION_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BlobJSONEncoder(0);
  swift_allocObject();
  *(v0 + 16) = sub_237CB24D0();
  sub_237E651E4(v26);
  memcpy((v0 + 24), v26, 0x58uLL);
  v12 = MEMORY[0x277D84F90];
  *(v0 + 112) = MEMORY[0x277D84F90];
  swift_allocObject();
  *(v0 + 120) = sub_237CB24D0();
  sub_237E651E4(v27);
  memcpy((v0 + 128), v27, 0x58uLL);
  *(v0 + 216) = v12;
  v13 = v5;
  *(v0 + 224) = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
  sub_237D84DDC(v11);
  (*(v8 + 32))(v0 + OBJC_IVAR____TtC18CreateMLComponents23EstimatorPackageEncoder_packageDirectoryURL, v11, v6);
  v14 = OBJC_IVAR____TtC18CreateMLComponents23EstimatorPackageEncoder_packageDirectoryURL;
  v15 = *(v0 + 224);
  if ((v24 & 0x100000000) != 0)
  {
    sub_237DD0FB8(v2 + v14);
    if (v1)
    {

LABEL_11:
      (*(v8 + 8))(v13, v6);
      goto LABEL_12;
    }
  }

  else
  {
    v16 = sub_237DD10BC(v2 + v14);

    if (v16)
    {
      type metadata accessor for SerializationError(0);
      v17 = sub_237CA2D6C();
      OUTLINED_FUNCTION_0_31(v17);
      (*(v8 + 16))(v18, v2 + v14, v6);
      swift_storeEnumTagMultiPayload();
LABEL_10:
      swift_willThrow();

      goto LABEL_11;
    }
  }

  v19 = *(v2 + 224);
  v20 = sub_237EF5E50();
  v25 = 0;
  LOBYTE(v19) = [v19 createDirectoryAtURL:v20 withIntermediateDirectories:1 attributes:0 error:&v25];

  if ((v19 & 1) == 0)
  {
    v23 = v25;
    sub_237EF5DC0();

    goto LABEL_10;
  }

  v21 = *(v8 + 8);
  v22 = v25;
  v21(v13, v6);
LABEL_12:
  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237D84DDC@<X0>(uint64_t a1@<X8>)
{
  if (sub_237EF5E10() == 6777712 && v3 == 0xE300000000000000)
  {
  }

  else
  {
    v5 = sub_237EF9D40();

    if ((v5 & 1) == 0)
    {

      return sub_237EF5E80();
    }
  }

  v7 = sub_237EF5EF0();
  v8 = *(*(v7 - 8) + 16);

  return v8(a1, v1, v7);
}

uint64_t sub_237D84ECC()
{
  OUTLINED_FUNCTION_13_24();
  OUTLINED_FUNCTION_11_28(v0 + 24, &v15);

  v3 = OUTLINED_FUNCTION_6_39();
  v6 = sub_237CB25A0(v3, v4, v5, v1);
  swift_endAccess();

  if (!v2)
  {
    v16 = sub_237D05624();
    *&v15 = v6;
    OUTLINED_FUNCTION_11_28(v0 + 112, v14);
    OUTLINED_FUNCTION_2_58();
    sub_237D86CEC(v8);
    v9 = *(*(v0 + 112) + 16);
    v10 = OUTLINED_FUNCTION_18_14();
    sub_237D86DC0(v10, v11);
    v12 = *(v0 + 112);
    OUTLINED_FUNCTION_28_17(v9 + 1, v13, v14[0], v14[1], v14[2], v15);
    *(v0 + 112) = v12;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_237D84FAC()
{
  OUTLINED_FUNCTION_13_24();
  OUTLINED_FUNCTION_11_28(v0 + 128, &v15);

  v3 = OUTLINED_FUNCTION_6_39();
  v6 = sub_237CB25A0(v3, v4, v5, v1);
  swift_endAccess();

  if (!v2)
  {
    v16 = sub_237D05624();
    *&v15 = v6;
    OUTLINED_FUNCTION_11_28(v0 + 216, v14);
    OUTLINED_FUNCTION_2_58();
    sub_237D86CEC(v8);
    v9 = *(*(v0 + 216) + 16);
    v10 = OUTLINED_FUNCTION_18_14();
    sub_237D86DC0(v10, v11);
    v12 = *(v0 + 216);
    OUTLINED_FUNCTION_28_17(v9 + 1, v13, v14[0], v14[1], v14[2], v15);
    *(v0 + 216) = v12;
    return swift_endAccess();
  }

  return result;
}

void sub_237D8508C()
{
  OUTLINED_FUNCTION_13_4();
  v3 = v0;
  v31[3] = *MEMORY[0x277D85DE8];
  v4 = sub_237EF5EF0();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_8_46();
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - v9;
  objc_opt_self();
  OUTLINED_FUNCTION_0_44(v0 + 216, v31);
  sub_237EF8260();
  v11 = sub_237EF8900();

  v30 = 0;
  v13 = OUTLINED_FUNCTION_26_18(v12, sel_dataWithJSONObject_options_error_);

  v14 = v30;
  if (v13)
  {
    v28 = v2;
    v29 = v4;
    v15 = v6;
    v16 = sub_237EF5FE0();
    v18 = v17;

    sub_237EF5E70();
    sub_237EF6000();
    if (v1)
    {
      (*(v15 + 8))(v10, v29);
      sub_237CBA6B8(v16, v18);
    }

    else
    {
      v26 = v18;
      v27 = *(v15 + 8);
      v27(v10, v29);
      OUTLINED_FUNCTION_0_44(v3 + 128, &v30);
      v20 = OUTLINED_FUNCTION_25_20();
      sub_237CBA540(v20, v21);
      sub_237EF8260();
      v22 = v28;
      OUTLINED_FUNCTION_23_25();
      sub_237EF5E70();
      OUTLINED_FUNCTION_14_34();
      sub_237CBA6B8(v16, v26);
      v23 = OUTLINED_FUNCTION_25_20();
      sub_237CBA6B8(v23, v24);

      v27(v22, v29);
    }
  }

  else
  {
    v19 = v14;
    sub_237EF5DC0();

    swift_willThrow();
  }

  OUTLINED_FUNCTION_12_6();
}

void sub_237D8533C()
{
  OUTLINED_FUNCTION_13_4();
  v3 = v0;
  v30[3] = *MEMORY[0x277D85DE8];
  v4 = sub_237EF5EF0();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_8_46();
  MEMORY[0x28223BE20](v8);
  v10 = v25 - v9;
  objc_opt_self();
  OUTLINED_FUNCTION_0_44(v0 + 112, v30);
  sub_237EF8260();
  v11 = sub_237EF8900();

  v29 = 0;
  v13 = OUTLINED_FUNCTION_26_18(v12, sel_dataWithJSONObject_options_error_);

  v14 = v29;
  if (v13)
  {
    v28 = v2;
    v15 = sub_237EF5FE0();
    v17 = v16;

    OUTLINED_FUNCTION_5_48();
    sub_237EF5E70();
    sub_237EF6000();
    if (v1)
    {
      (*(v6 + 8))(v10, v4);
      sub_237CBA6B8(v15, v17);
    }

    else
    {
      v27 = *(v6 + 8);
      v27(v10, v4);
      OUTLINED_FUNCTION_0_44(v3 + 24, &v29);
      v26 = v4;
      v19 = *(v3 + 104);
      v20 = OUTLINED_FUNCTION_25_20();
      sub_237CBA540(v20, v21);
      v25[1] = v19;
      sub_237EF8260();
      OUTLINED_FUNCTION_24_20();
      v22 = v28;
      sub_237EF5E70();
      OUTLINED_FUNCTION_14_34();
      sub_237CBA6B8(v15, v17);
      v23 = OUTLINED_FUNCTION_25_20();
      sub_237CBA6B8(v23, v24);

      v27(v22, v26);
    }
  }

  else
  {
    v18 = v14;
    sub_237EF5DC0();

    swift_willThrow();
  }

  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237D855C0()
{

  sub_237CBA6B8(*(v0 + 24), *(v0 + 32));

  sub_237CBA6B8(*(v0 + 128), *(v0 + 136));

  v1 = OBJC_IVAR____TtC18CreateMLComponents23EstimatorPackageEncoder_packageDirectoryURL;
  sub_237EF5EF0();
  OUTLINED_FUNCTION_22_3();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_237D856AC(uint64_t a1)
{
  result = sub_237EF5EF0();
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

void sub_237D857C0()
{
  OUTLINED_FUNCTION_13_4();
  v158 = v1;
  v2 = v0;
  v4 = v3;
  v170 = *MEMORY[0x277D85DE8];
  v159 = *v0;
  v5 = sub_237EF5EF0();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v153 = &v144 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_8_16();
  v154 = v11;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_8_16();
  v155 = v13;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_8_16();
  v157 = v15;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_8_16();
  v161 = v17;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v18);
  v20 = &v144 - v19;
  v152 = type metadata accessor for BlobJSONDecoder();
  v21 = swift_allocObject();
  v22 = sub_237EF9690();
  v23 = MEMORY[0x277D84F90];
  v151 = v22;
  *(v21 + 16) = sub_237EF8230();
  v2[2] = v21;
  v2[15] = v23;
  v156 = v2 + 15;
  v2[14] = 0;
  *(v2 + 8) = 0u;
  *(v2 + 9) = 0u;
  *(v2 + 10) = 0u;
  *(v2 + 11) = 0u;
  *(v2 + 12) = 0u;
  *(v2 + 13) = 0u;
  v2[28] = v23;
  v2[29] = 0;
  v2[30] = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
  v160 = v4;
  sub_237D84DDC(v20);
  v24 = OBJC_IVAR____TtC18CreateMLComponents23EstimatorPackageDecoder_packageDirectoryURL;
  (*(v7 + 32))(v2 + OBJC_IVAR____TtC18CreateMLComponents23EstimatorPackageDecoder_packageDirectoryURL, v20, v5);
  v25 = v2[30];
  v26 = v7 + 16;
  v164 = v24;
  v27 = OUTLINED_FUNCTION_6_39();
  v162 = v28;
  v28(v27);
  v29 = v25;
  sub_237EF5EC0();
  v30 = OUTLINED_FUNCTION_18_14();
  v163 = v31;
  v31(v30);
  v32 = sub_237EF8560();

  LODWORD(v24) = [v29 fileExistsAtPath_];

  if (!v24)
  {
    type metadata accessor for SerializationError(0);
    v44 = sub_237CA2D6C();
    OUTLINED_FUNCTION_0_31(v44);
    v45 = OUTLINED_FUNCTION_1_62();
    v46(v45);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v47 = OUTLINED_FUNCTION_17_31();
    v42 = v163;
    v163(v47);
    goto LABEL_7;
  }

  v33 = OUTLINED_FUNCTION_1_62();
  v34(v33);
  OUTLINED_FUNCTION_5_48();
  sub_237EF5E70();
  v150 = v20;
  v35 = OUTLINED_FUNCTION_18_14();
  v163(v35);
  v36 = v2[30];
  sub_237EF5EC0();
  v37 = sub_237EF8560();

  v38 = [v36 fileExistsAtPath_];

  if (!v38)
  {
    type metadata accessor for SerializationError(0);
    v48 = sub_237CA2D6C();
    OUTLINED_FUNCTION_0_31(v48);
    v49 = OUTLINED_FUNCTION_1_62();
    v50(v49);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v51 = OUTLINED_FUNCTION_17_31();
    v42 = v163;
    v163(v51);
    v52 = OUTLINED_FUNCTION_19_29();
    v42(v52);
    goto LABEL_7;
  }

  v149 = v5;
  v39 = v158;
  v40 = sub_237EF5F30();
  if (!v39)
  {
    v148 = v40;
    v158 = v41;
    v53 = OUTLINED_FUNCTION_22_23();
    v162(v53);
    OUTLINED_FUNCTION_24_20();
    v54 = v157;
    sub_237EF5E70();
    v55 = v38;
    v56 = v163;
    (v163)(v55, v5);
    v57 = sub_237EF5F30();
    sub_237E1FD00(v57, v58, v168);
    v159 = 0;
    v56(v54, v5);
    memcpy(v2 + 3, v168, 0x58uLL);
    v59 = objc_opt_self();
    OUTLINED_FUNCTION_3_58();
    v60 = sub_237EF5FD0();
    *v167 = 0;
    v157 = v59;
    v61 = [v59 JSONObjectWithData:v60 options:0 error:v167];
    v62 = v56;
    v63 = v61;

    if (v63)
    {
      v64 = *v167;
      sub_237EF9230();
      swift_unknownObjectRelease();
      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEDD8, &qword_237F073B0);
      if (swift_dynamicCast())
      {
        v146 = v65;
        v66 = *(v166[0] + 16);
        if (v66)
        {
          v147 = v166[0];
          v67 = v166[0] + 32;
          v68 = v162;
          v65 = v156;
          do
          {
            sub_237CBA478(v67, v167);
            OUTLINED_FUNCTION_11_28(v65, v166);
            v69 = *v65;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *v65 = v69;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_237D0B614();
              v69 = v73;
              *v65 = v73;
            }

            v71 = *(v69 + 16);
            v72 = v71 + 1;
            if (v71 >= *(v69 + 24) >> 1)
            {
              v145 = v71 + 1;
              sub_237D0B614();
              v72 = v145;
              v69 = v74;
            }

            *(v69 + 16) = v72;
            sub_237C91804(v167, (v69 + 32 * v71 + 32));
            v65 = v156;
            *v156 = v69;
            swift_endAccess();
            v67 += 32;
            --v66;
          }

          while (v66);
        }

        else
        {

          v68 = v162;
        }

        v88 = OUTLINED_FUNCTION_22_23();
        v68(v88);
        OUTLINED_FUNCTION_23_25();
        v89 = v155;
        sub_237EF5E70();
        (v163)(v65, 0);
        v90 = v2[30];
        v164 = v26;
        v91 = v90;
        sub_237EF5EC0();
        v92 = sub_237EF8560();

        v93 = [v91 fileExistsAtPath_];

        if (v93)
        {
          (v162)(v154, v89, 0);
          v94 = v159;
          v95 = sub_237EF5F30();
          if (v94)
          {
            v159 = v94;
            v97 = v163;
            v98 = v160;
            v118 = OUTLINED_FUNCTION_3_58();
            sub_237CBA6B8(v118, v119);
            (v97)(v98, 0);
            (v97)(v154, 0);
            (v97)(v89, 0);
            v120 = OUTLINED_FUNCTION_11_36();
            v97(v120);
            goto LABEL_30;
          }

          sub_237E1FD00(v95, v96, v169);
          v159 = 0;
          memcpy(v165, v169, sizeof(v165));
          (v163)(v154, 0);
          memcpy(v167, v2 + 17, sizeof(v167));
          memcpy(v2 + 17, v165, 0x58uLL);
          sub_237C9BD20(v167);
        }

        v99 = v153;
        sub_237EF5E80();
        v100 = v2[30];
        sub_237EF5EC0();
        v101 = sub_237EF8560();

        v102 = OUTLINED_FUNCTION_6_39();
        v104 = [v102 v103];

        if (!v104)
        {
          v113 = OUTLINED_FUNCTION_3_58();
          sub_237CBA6B8(v113, v114);
          v115 = OUTLINED_FUNCTION_4_51();
          v104(v115);
          (v104)(v99, 0);
          v116 = OUTLINED_FUNCTION_18_28();
          v104(v116);
          v117 = OUTLINED_FUNCTION_11_36();
          v104(v117);
          goto LABEL_8;
        }

        v105 = v159;
        v106 = sub_237EF5F30();
        v164 = v107;
        if (v105)
        {
          v108 = OUTLINED_FUNCTION_3_58();
          sub_237CBA6B8(v108, v109);
          v110 = OUTLINED_FUNCTION_4_51();
          v104(v110);
          (v104)(v99, 0);
          v111 = OUTLINED_FUNCTION_18_28();
          v104(v111);
          v112 = OUTLINED_FUNCTION_11_36();
          v104(v112);
        }

        else
        {
          v121 = v106;
          v122 = sub_237EF5FD0();
          *v167 = 0;
          v123 = [v157 JSONObjectWithData:v122 options:0 error:v167];

          if (v123)
          {
            v124 = *v167;
            sub_237EF9230();
            swift_unknownObjectRelease();
            if (swift_dynamicCast())
            {
              v162 = v166[0];
              v125 = swift_allocObject();
              v126 = sub_237EF8230();
              v127 = OUTLINED_FUNCTION_3_58();
              sub_237CBA6B8(v127, v128);
              sub_237CBA6B8(v121, v164);
              v129 = v163;
              (v163)(v160, 0);
              (v129)(v153, 0);
              (v129)(v155, 0);
              (v129)(v161, 0);
              *(v125 + 16) = v126;
              v2[16] = v125;

              v2[28] = v162;

              goto LABEL_8;
            }

            v136 = sub_237EF93E0();
            OUTLINED_FUNCTION_45_0(v136, MEMORY[0x277D841A0]);
            v138 = v137;
            sub_237EF93D0();
            OUTLINED_FUNCTION_22_3();
            (*(v139 + 104))(v138);
            swift_willThrow();
            v140 = OUTLINED_FUNCTION_3_58();
            sub_237CBA6B8(v140, v141);
            sub_237CBA6B8(v121, v164);
            v142 = OUTLINED_FUNCTION_4_51();
            v121(v142);
            (v121)(v153, 0);
            v143 = OUTLINED_FUNCTION_18_28();
            v121(v143);
            v135 = OUTLINED_FUNCTION_11_36();
          }

          else
          {
            v130 = *v167;
            sub_237EF5DC0();

            swift_willThrow();
            v131 = OUTLINED_FUNCTION_3_58();
            sub_237CBA6B8(v131, v132);
            sub_237CBA6B8(v121, v164);
            v133 = OUTLINED_FUNCTION_4_51();
            v121(v133);
            (v121)(v153, 0);
            v134 = OUTLINED_FUNCTION_18_28();
            v121(v134);
            v135 = OUTLINED_FUNCTION_11_36();
          }

          v121(v135);
        }
      }

      else
      {
        v80 = sub_237EF93E0();
        OUTLINED_FUNCTION_45_0(v80, MEMORY[0x277D841A0]);
        v82 = v81;
        sub_237EF93D0();
        OUTLINED_FUNCTION_22_3();
        (*(v83 + 104))(v82);
        swift_willThrow();
        v84 = OUTLINED_FUNCTION_3_58();
        sub_237CBA6B8(v84, v85);
        v86 = v149;
        v87 = v163;
        (v163)(v160, v149);
        v87(v161, v86);
      }
    }

    else
    {
      v75 = *v167;
      sub_237EF5DC0();

      swift_willThrow();
      v76 = OUTLINED_FUNCTION_3_58();
      sub_237CBA6B8(v76, v77);
      v78 = OUTLINED_FUNCTION_17_31();
      v62(v78);
      v79 = OUTLINED_FUNCTION_19_29();
      v62(v79);
    }

LABEL_30:

    goto LABEL_8;
  }

  v5 = v149;
  v42 = v163;
  (v163)(v160, v149);
  v43 = OUTLINED_FUNCTION_19_29();
  v42(v43);
LABEL_7:

  memcpy(v167, v2 + 17, sizeof(v167));
  sub_237C9BD20(v167);

  (v42)(v2 + v164, v5);
  swift_deallocPartialClassInstance();
LABEL_8:
  OUTLINED_FUNCTION_12_6();
}

void *sub_237D86624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = v4[28];
  v7 = v4[29];
  if (v7 >= *(v8 + 16))
  {
    v12 = sub_237EF93E0();
    OUTLINED_FUNCTION_45_0(v12, MEMORY[0x277D841A0]);
    v14 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20, &unk_237F07360);
    *v14 = a1;
LABEL_8:
    sub_237EF93D0();
    OUTLINED_FUNCTION_22_3();
    (*(v17 + 104))(v14);
    return swift_willThrow();
  }

  memcpy(__dst, v4 + 17, sizeof(__dst));
  if (!__dst[10] || (result = memcpy(v21, v4 + 17, sizeof(v21)), v22 = __dst[10], !v4[16]))
  {
    v15 = sub_237EF93E0();
    OUTLINED_FUNCTION_45_0(v15, MEMORY[0x277D841A0]);
    v14 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20, &unk_237F07360);
    *v14 = a1;
    goto LABEL_8;
  }

  if (v7 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_237CBA478(v8 + 32 * v7 + 32, v19);
    v4[29] = v7 + 1;
    sub_237D86E34(__dst, &v18);

    sub_237DD0CC0(a2, v19, v21, a2, a3, a4);
    __swift_destroy_boxed_opaque_existential_1(v19);
    sub_237C9BD20(__dst);
  }

  return result;
}

uint64_t sub_237D8684C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = v4[14];
  result = OUTLINED_FUNCTION_0_44((v4 + 15), v17);
  v11 = v4[15];
  if (v9 >= *(v11 + 16))
  {
    v12 = sub_237EF93E0();
    OUTLINED_FUNCTION_45_0(v12, MEMORY[0x277D841A0]);
    v14 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEC20, &unk_237F07360);
    *v14 = a1;
    sub_237EF93D0();
    OUTLINED_FUNCTION_22_3();
    (*(v15 + 104))(v14);
    return swift_willThrow();
  }

  else if (v9 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_237CBA478(v11 + 32 * v9 + 32, v16);
    v4[14] = v9 + 1;
    memcpy(__dst, v4 + 3, sizeof(__dst));

    sub_237DD0CC0(a1, v16, __dst, a2, a3, a4);
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  return result;
}

uint64_t sub_237D869E0()
{

  sub_237CBA6B8(*(v0 + 24), *(v0 + 32));

  sub_237D86EA4(*(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216));

  v1 = OBJC_IVAR____TtC18CreateMLComponents23EstimatorPackageDecoder_packageDirectoryURL;
  sub_237EF5EF0();
  OUTLINED_FUNCTION_22_3();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_237D86ABC(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

uint64_t sub_237D86B40(uint64_t a1)
{
  result = sub_237EF5EF0();
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

uint64_t sub_237D86CEC(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
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

uint64_t sub_237D86DC0(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t sub_237D86E08(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_237EF8980();
  }

  return result;
}

uint64_t sub_237D86E34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEAD7B0, &unk_237F03CA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237D86EA4(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    sub_237CBA6B8(result, a2);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_14_34()
{

  return sub_237EF6000();
}

id OUTLINED_FUNCTION_26_18(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

_OWORD *OUTLINED_FUNCTION_28_17@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 a6)
{
  *(v6 + 16) = a1;

  return sub_237C91804(&a6, (v6 + 32 * v7 + 32));
}

_OWORD *sub_237D8708C(void *a1)
{
  sub_237CBA478(a1, v6);
  sub_237D86C74();
  v3 = *(*v1 + 16);
  sub_237D86D48(v3);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v4 = *v1;
  *(v4 + 16) = v3 + 1;
  result = sub_237C91804(v6, (v4 + 32 * v3 + 32));
  *v1 = v4;
  return result;
}

uint64_t LinearTimeSeriesForecasterConfiguration.randomSeed.setter(uint64_t result, char a2)
{
  *(v2 + 56) = result;
  *(v2 + 64) = a2 & 1;
  return result;
}

void __swiftcall LinearTimeSeriesForecasterConfiguration.init(inputWindowSize:forecastWindowSize:)(CreateMLComponents::LinearTimeSeriesForecasterConfiguration *__return_ptr retstr, Swift::Int inputWindowSize, Swift::Int forecastWindowSize)
{
  retstr->inputWindowSize = inputWindowSize;
  retstr->forecastWindowSize = forecastWindowSize;
  *&retstr->batchSize = xmmword_237F09360;
  retstr->earlyStoppingTolerance = 0.01;
  retstr->earlyStoppingIterationCount = 5;
  retstr->learningRate = 0.005;
  *(&retstr->randomSeed.value + 4) = 0;
  LOBYTE(retstr[1].inputWindowSize) = 1;
}

uint64_t static LinearTimeSeriesForecasterConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*a1, *a2), vceqq_s64(*(a1 + 16), *(a2 + 16))))) & 1) != 0 && *(a1 + 40) == *(a2 + 40) && *(a1 + 32) == *(a2 + 32) && *(a1 + 48) == *(a2 + 48))
  {
    if (*(a1 + 64))
    {
      if ((*(a2 + 64) & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (*(a1 + 56) == *(a2 + 56))
      {
        v5 = *(a2 + 64);
      }

      else
      {
        v5 = 1;
      }

      if (v5)
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

uint64_t sub_237D87370(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69577475706E69 && a2 == 0xEF657A6953776F64;
  if (v4 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x8000000237EFEF60 == a2;
    if (v6 || (sub_237EF9D40() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7A69536863746162 && a2 == 0xE900000000000065;
      if (v7 || (sub_237EF9D40() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000015 && 0x8000000237EFDE80 == a2;
        if (v8 || (sub_237EF9D40() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000016 && 0x8000000237EFDEA0 == a2;
          if (v9 || (sub_237EF9D40() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD00000000000001BLL && 0x8000000237EFDEC0 == a2;
            if (v10 || (sub_237EF9D40() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x676E696E7261656CLL && a2 == 0xEC00000065746152;
              if (v11 || (sub_237EF9D40() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x65536D6F646E6172 && a2 == 0xEA00000000006465)
              {

                return 7;
              }

              else
              {
                v13 = sub_237EF9D40();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_237D87610(char a1)
{
  result = 0x6E69577475706E69;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0x7A69536863746162;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    case 5:
      result = 0xD00000000000001BLL;
      break;
    case 6:
      result = 0x676E696E7261656CLL;
      break;
    case 7:
      result = 0x65536D6F646E6172;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_237D87738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237D87370(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237D87760@<X0>(_BYTE *a1@<X8>)
{
  result = sub_237D87608();
  *a1 = result;
  return result;
}

uint64_t sub_237D87788(uint64_t a1)
{
  v2 = sub_237D87A6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237D877C4(uint64_t a1)
{
  v2 = sub_237D87A6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LinearTimeSeriesForecasterConfiguration.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB26A8, &qword_237F12280);
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = v17 - v6;
  v8 = *(v1 + 8);
  v9 = *(v1 + 24);
  v17[3] = *(v1 + 16);
  v17[4] = v8;
  v17[1] = *(v1 + 40);
  v17[2] = v9;
  v10 = *(v1 + 64);
  v11 = a1[3];
  v12 = a1;
  v14 = v13;
  __swift_project_boxed_opaque_existential_1(v12, v11);
  sub_237D87A6C();
  sub_237EFA1B0();
  v26 = 0;
  v15 = v18;
  sub_237EF9A50();
  if (!v15)
  {
    LODWORD(v18) = v10;
    v25 = 1;
    OUTLINED_FUNCTION_1_63();
    sub_237EF9A50();
    v24 = 2;
    OUTLINED_FUNCTION_1_63();
    sub_237EF9A50();
    v23 = 3;
    OUTLINED_FUNCTION_1_63();
    sub_237EF9A50();
    v22 = 4;
    OUTLINED_FUNCTION_1_63();
    sub_237EF9A40();
    v21 = 5;
    OUTLINED_FUNCTION_1_63();
    sub_237EF9A50();
    v20 = 6;
    OUTLINED_FUNCTION_1_63();
    sub_237EF9A40();
    v19 = 7;
    OUTLINED_FUNCTION_1_63();
    sub_237EF99F0();
  }

  return (*(v4 + 8))(v7, v14);
}

unint64_t sub_237D87A6C()
{
  result = qword_27DEB26B0;
  if (!qword_27DEB26B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB26B0);
  }

  return result;
}

uint64_t LinearTimeSeriesForecasterConfiguration.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 40);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  MEMORY[0x2383E2210](*v0);
  MEMORY[0x2383E2210](v1);
  MEMORY[0x2383E2210](v2);
  MEMORY[0x2383E2210](v3);
  sub_237EFA150();
  MEMORY[0x2383E2210](v4);
  sub_237EFA150();
  if (v6 == 1)
  {
    return sub_237EFA140();
  }

  sub_237EFA140();
  return MEMORY[0x2383E2210](v5);
}

uint64_t LinearTimeSeriesForecasterConfiguration.hashValue.getter()
{
  sub_237EFA120();
  LinearTimeSeriesForecasterConfiguration.hash(into:)();
  return sub_237EFA170();
}

uint64_t LinearTimeSeriesForecasterConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB26B8, &qword_237F12288);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237D87A6C();
  sub_237EFA190();
  if (!v2)
  {
    v34 = 0;
    OUTLINED_FUNCTION_0_51();
    v11 = sub_237EF9950();
    v33 = 1;
    OUTLINED_FUNCTION_0_51();
    v12 = sub_237EF9950();
    v32 = 2;
    OUTLINED_FUNCTION_0_51();
    v25 = sub_237EF9950();
    v31 = 3;
    OUTLINED_FUNCTION_0_51();
    v24 = sub_237EF9950();
    v30 = 4;
    OUTLINED_FUNCTION_0_51();
    sub_237EF9940();
    v14 = v13;
    v29 = 5;
    OUTLINED_FUNCTION_0_51();
    v23 = sub_237EF9950();
    v28 = 6;
    OUTLINED_FUNCTION_0_51();
    sub_237EF9940();
    v16 = v15;
    v26 = 7;
    OUTLINED_FUNCTION_0_51();
    v18 = sub_237EF98F0();
    v19 = v10;
    v21 = v20;
    (*(v7 + 8))(v19, v5);
    v27 = v21 & 1;
    *a2 = v11;
    *(a2 + 8) = v12;
    v22 = v24;
    *(a2 + 16) = v25;
    *(a2 + 24) = v22;
    *(a2 + 32) = v14;
    *(a2 + 40) = v23;
    *(a2 + 48) = v16;
    *(a2 + 56) = v18;
    *(a2 + 64) = v21 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_237D87E58(uint64_t a1)
{
  sub_237EFA120();
  LinearTimeSeriesForecasterConfiguration.hash(into:)();
  return sub_237EFA170();
}

unint64_t sub_237D87E98()
{
  result = qword_27DEB26C0;
  if (!qword_27DEB26C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB26C0);
  }

  return result;
}

uint64_t sub_237D87F28(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 65))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_237D87F48(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
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

  *(result + 65) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for LinearTimeSeriesForecasterConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for LinearTimeSeriesForecasterConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_237D88100()
{
  result = qword_27DEB26C8;
  if (!qword_27DEB26C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB26C8);
  }

  return result;
}

unint64_t sub_237D88158()
{
  result = qword_27DEB26D0;
  if (!qword_27DEB26D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB26D0);
  }

  return result;
}

unint64_t sub_237D881B0()
{
  result = qword_27DEB26D8;
  if (!qword_27DEB26D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB26D8);
  }

  return result;
}

uint64_t TemporalFileSegment.init(url:range:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  sub_237EF5EF0();
  OUTLINED_FUNCTION_4();
  (*(v8 + 32))(a2, a1);
  result = type metadata accessor for TemporalFileSegment(0);
  v10 = (a2 + *(result + 20));
  *v10 = a3;
  v10[1] = a4;
  return result;
}

uint64_t type metadata accessor for TemporalFileSegment(uint64_t a1)
{
  result = qword_27DEB2718;
  if (!qword_27DEB2718)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TemporalFileSegment.url.getter@<X0>(uint64_t a1@<X8>)
{
  sub_237EF5EF0();
  OUTLINED_FUNCTION_4();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t TemporalFileSegment.url.setter(uint64_t a1)
{
  sub_237EF5EF0();
  OUTLINED_FUNCTION_4();
  v5 = *(v4 + 40);

  return v5(v1, a1, v3);
}

uint64_t TemporalFileSegment.range.setter(double a1, double a2)
{
  result = type metadata accessor for TemporalFileSegment(0);
  v6 = (v2 + *(result + 20));
  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t sub_237D88468(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v3 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65676E6172 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_237EF9D40();

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

uint64_t sub_237D8852C(char a1)
{
  if (a1)
  {
    return 0x65676E6172;
  }

  else
  {
    return 7107189;
  }
}

uint64_t sub_237D88560@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237D88468(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237D88588(uint64_t a1)
{
  v2 = sub_237D88DB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237D885C4(uint64_t a1)
{
  v2 = sub_237D88DB4();

  return MEMORY[0x2821FE720](a1, v2);
}

BOOL static TemporalFileSegment.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_237EF5EA0() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for TemporalFileSegment(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v8 = v7[1];
  v9 = v5 == *v7;
  return v6 == v8 && v9;
}

uint64_t TemporalFileSegment.hash(into:)(uint64_t a1)
{
  sub_237EF5EF0();
  OUTLINED_FUNCTION_0_52();
  sub_237D88F7C(v1, v2, MEMORY[0x277CC9270]);
  sub_237EF83E0();
  v3 = type metadata accessor for TemporalFileSegment(0);
  v4 = OUTLINED_FUNCTION_4_52(v3);

  return sub_237D88D64(v4, v5);
}

uint64_t TemporalFileSegment.hashValue.getter()
{
  sub_237EFA120();
  sub_237EF5EF0();
  OUTLINED_FUNCTION_0_52();
  sub_237D88F7C(v0, v1, MEMORY[0x277CC9270]);
  sub_237EF83E0();
  v2 = type metadata accessor for TemporalFileSegment(0);
  v3 = OUTLINED_FUNCTION_4_52(v2);
  sub_237D88D64(v3, v4);
  return sub_237EFA170();
}

uint64_t sub_237D88780(uint64_t a1, uint64_t a2)
{
  sub_237EFA120();
  sub_237EF5EF0();
  sub_237D88F7C(&qword_27DEB0FD0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  sub_237EF83E0();
  sub_237D88D64(*(v2 + *(a2 + 20)), *(v2 + *(a2 + 20) + 8));
  return sub_237EFA170();
}

uint64_t TemporalFileSegment.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB26E0, &qword_237F124D0);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v20 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237D88DB4();
  sub_237EFA1B0();
  LOBYTE(v22) = 0;
  sub_237EF5EF0();
  OUTLINED_FUNCTION_0_52();
  v13 = sub_237D88F7C(v11, v12, MEMORY[0x277CC9268]);
  OUTLINED_FUNCTION_5_49(v3, &v22, v14, v15, v13);
  if (!v2)
  {
    v22 = *(v3 + *(type metadata accessor for TemporalFileSegment(0) + 20));
    v21 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB26F0, &qword_237F124D8);
    v16 = sub_237D88E08(&qword_27DEB26F8, MEMORY[0x277D83A08], MEMORY[0x277D83D08]);
    OUTLINED_FUNCTION_5_49(&v22, &v21, v17, v18, v16);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t TemporalFileSegment.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v30 = sub_237EF5EF0();
  OUTLINED_FUNCTION_1();
  v27 = v4;
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2700, &qword_237F124E0);
  OUTLINED_FUNCTION_1();
  v28 = v8;
  v29 = v9;
  MEMORY[0x28223BE20](v8);
  v10 = type metadata accessor for TemporalFileSegment(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237D88DB4();
  sub_237EFA190();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = v10;
  v14 = v27;
  LOBYTE(v31) = 0;
  OUTLINED_FUNCTION_0_52();
  sub_237D88F7C(v15, v16, MEMORY[0x277CC9280]);
  v17 = v30;
  sub_237EF9970();
  v18 = *(v14 + 32);
  v24 = v13;
  v18(v13, v7, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB26F0, &qword_237F124D8);
  v32 = 1;
  sub_237D88E08(&qword_27DEB2708, MEMORY[0x277D83A30], MEMORY[0x277D83D38]);
  sub_237EF9970();
  v19 = OUTLINED_FUNCTION_2_59();
  v20(v19);
  v21 = v24;
  *&v24[*(v25 + 20)] = v31;
  sub_237D88E74(v21, v26);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_237D88ED8(v21);
}

uint64_t sub_237D88D64(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  MEMORY[0x2383E2240](*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  return MEMORY[0x2383E2240](*&v3);
}

unint64_t sub_237D88DB4()
{
  result = qword_27DEB26E8;
  if (!qword_27DEB26E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB26E8);
  }

  return result;
}

uint64_t sub_237D88E08(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEB26F0, &qword_237F124D8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_237D88E74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TemporalFileSegment(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237D88ED8(uint64_t a1)
{
  v2 = type metadata accessor for TemporalFileSegment(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237D88F7C(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

void sub_237D88FEC(uint64_t a1)
{
  sub_237EF5EF0();
  if (v1 <= 0x3F)
  {
    sub_237D89070();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_237D89070()
{
  if (!qword_27DEB2728)
  {
    v0 = sub_237EF8F10();
    if (!v1)
    {
      atomic_store(v0, &qword_27DEB2728);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for TemporalFileSegment.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_237D891A8()
{
  result = qword_27DEB2730;
  if (!qword_27DEB2730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2730);
  }

  return result;
}

unint64_t sub_237D89200()
{
  result = qword_27DEB2738;
  if (!qword_27DEB2738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2738);
  }

  return result;
}

unint64_t sub_237D89258()
{
  result = qword_27DEB2740;
  if (!qword_27DEB2740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2740);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_49(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_237EF9A70();
}

void sub_237D89308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_13_4();
  a19 = v23;
  a20 = v24;
  v25 = v20;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEDF0, &qword_237F073D0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_5_43();
  OUTLINED_FUNCTION_14_35();
  v34 = _s5StateOMa(v30, v31, v32, v33);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  v36 = MEMORY[0x28223BE20](v35);
  v38 = &a9 - v37;
  (*(v39 + 16))(&a9 - v37, v25, v34, v36);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    OUTLINED_FUNCTION_14_35();
    v40 = sub_237EF7E90();
    v41 = sub_237EF90F0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    (*(*(v41 - 8) + 8))(&v38[*(TupleTypeMetadata2 + 48)], v41);
LABEL_6:
    OUTLINED_FUNCTION_22_3();
    (*(v50 + 8))(v38, v40);
    goto LABEL_7;
  }

  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEAEE00, &qword_237F073D8);
  sub_237CBEE0C(&v38[*(v43 + 48)], v22);
  v44 = *(v27 + 24);
  v45 = *(v27 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v27, v44);
  v46 = *(v45 + 16);
  v47 = sub_237C96710(qword_27DEB2758, &qword_27DEAEDF0, &qword_237F073D0, MEMORY[0x277D2CDC8]);
  v46(v22, v28, v47, v44, v45);
  if (!v21)
  {
    sub_237C65484(v22, &qword_27DEAEDF0, &qword_237F073D0);
    v40 = sub_237EF6820();
    goto LABEL_6;
  }

  sub_237C65484(v22, &qword_27DEAEDF0, &qword_237F073D0);
  sub_237EF6820();
  OUTLINED_FUNCTION_4();
  (*(v48 + 8))(v38, v49);
LABEL_7:
  OUTLINED_FUNCTION_12_6();
}

void sub_237D895BC()
{
  OUTLINED_FUNCTION_13_4();
  v59 = v0;
  v3 = v2;
  v5 = v4;
  v6 = v2[2];
  v53 = v3;
  v57 = v3[3];
  v58 = v6;
  sub_237EF7E90();
  sub_237EF90F0();
  OUTLINED_FUNCTION_1();
  v55 = v8;
  v56 = v7;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_19();
  v54 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2C0, &qword_237F08F20);
  OUTLINED_FUNCTION_18(v11);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_19();
  v52 = v13;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_19();
  v47 = v15;
  v48 = sub_237EF6B10();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1_3();
  v61 = v17;
  sub_237EF6820();
  OUTLINED_FUNCTION_1();
  v50 = v19;
  v51 = v18;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1_3();
  v49 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2748, &qword_237F126E8);
  OUTLINED_FUNCTION_18(v21);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v22);
  v24 = &v46 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEDF0, &qword_237F073D0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_19();
  v60 = v27;
  v29 = *(v5 + 24);
  v28 = *(v5 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v5, v29);
  v30 = *(v28 + 16);
  v31 = sub_237C96710(&qword_27DEB2750, &qword_27DEAEDF0, &qword_237F073D0, MEMORY[0x277D2CDD0]);
  v30(v25, v25, v31, v29, v28);
  if (v1)
  {

    __swift_storeEnumTagSinglePayload(v24, 1, 1, v25);
    sub_237C65484(v24, &qword_27DEB2748, &qword_237F126E8);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v24, 0, 1, v25);
    sub_237CBEE0C(v24, v60);
    v32 = v47;
    v33 = v53;
    v34 = v59;
    MultivariateLinearRegressor.Model.weight.getter(v53);
    v35 = v33[4];
    v36 = v32;
    v38 = v57;
    v37 = v58;
    sub_237D4A7B4(v36, v58, v61);
    v39 = v54;
    v40 = MultivariateLinearRegressor.Model.bias.getter(v33);
    MEMORY[0x28223BE20](v40);
    *(&v46 - 4) = v37;
    *(&v46 - 3) = v38;
    *(&v46 - 2) = v35;
    v41 = v56;
    sub_237CA0A1C();
    (*(v55 + 8))(v39, v41);
    v42 = v49;
    sub_237EF67D0();
    v43 = _s5StateOMa(0, v37, v38, v35);
    OUTLINED_FUNCTION_4();
    (*(v44 + 8))(v34, v43);
    v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEAEE00, &qword_237F073D8) + 48);
    (*(v50 + 32))(v34, v42, v51);
    sub_237CBEE0C(v60, v34 + v45);
    swift_storeEnumTagMultiPayload();
  }

  OUTLINED_FUNCTION_12_6();
}

void sub_237D89A88()
{
  OUTLINED_FUNCTION_13_4();
  v2 = v1;
  v32 = v3;
  v4 = v1[2];
  v5 = v1[3];
  sub_237EF7E90();
  sub_237EF90F0();
  OUTLINED_FUNCTION_1();
  v30 = v6;
  v31 = v7;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_19();
  v27 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD600, &unk_237F049C0);
  OUTLINED_FUNCTION_18(v10);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_19();
  v28 = v12;
  OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0, &qword_237F036B0);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5_43();
  v24 = v2[4];
  v26 = _s7StorageVMa_2(0, v4, v5, v24);
  OUTLINED_FUNCTION_1();
  v29 = v15;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_19();
  v25 = v17;
  MultivariateLinearRegressor.Model.weight.getter(v2);
  OUTLINED_FUNCTION_4_53();
  sub_237C96710(v18, &qword_27DEAD6A0, &qword_237F036B0, v19);
  swift_getWitnessTable();
  sub_237EF7F30();
  MultivariateLinearRegressor.Model.bias.getter(v2);
  sub_237CA0A1C();
  (*(v31 + 8))(v27, v30);
  sub_237D89F6C(v0, v28, v4, v5, v25, v24);
  v20 = *(v32 + 24);
  v21 = *(v32 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v32, v20);
  v22 = *(v21 + 8);
  WitnessTable = swift_getWitnessTable();
  v22(v25, v26, WitnessTable, v20, v21);
  (*(v29 + 8))(v25, v26);
  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237D89E10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_237EF7E90();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0, &qword_237F036B0);
  (*(v5 + 16))(v7, a1, v4);
  sub_237C96710(&qword_27DEAD2F8, &qword_27DEAD6A0, &qword_237F036B0, MEMORY[0x277CBFD28]);
  swift_getWitnessTable();
  return sub_237EF7F30();
}

uint64_t sub_237D89F6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, uint64_t a6@<X4>)
{
  v9 = *(_s7StorageVMa_2(0, a3, a4, a6) + 44);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0, &qword_237F036B0);
  __swift_storeEnumTagSinglePayload(a5 + v9, 1, 1, v10);
  OUTLINED_FUNCTION_22_3();
  (*(v11 + 32))(a5, a1, v10);

  return sub_237C6FC94(a2, a5 + v9);
}

void sub_237D8A030()
{
  OUTLINED_FUNCTION_13_4();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v39 = v9;
  sub_237EF7E90();
  v10 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v10);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_19();
  v38 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0, &qword_237F036B0);
  OUTLINED_FUNCTION_1();
  v35 = v14;
  v36 = v13;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v15);
  v17 = &v34 - v16;
  OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_19();
  v42 = v19;
  v43 = v6;
  v40 = v4;
  v41 = v2;
  v20 = _s7StorageVMa_2(0, v6, v4, v2);
  OUTLINED_FUNCTION_1();
  v37 = v21;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v22);
  v24 = &v34 - v23;
  v26 = *(v8 + 24);
  v25 = *(v8 + 32);
  v27 = __swift_mutable_project_boxed_opaque_existential_1(v8, v26);
  v28 = *(v25 + 8);
  WitnessTable = swift_getWitnessTable();
  v28(v20, v20, WitnessTable, v26, v25);
  if (!v0)
  {
    (*(v35 + 16))(v17, v24, v36);
    OUTLINED_FUNCTION_4_53();
    swift_getWitnessTable();
    sub_237C96710(&qword_27DEAD2F8, &qword_27DEAD6A0, &qword_237F036B0, v27);
    v30 = sub_237EF7F30();
    MEMORY[0x28223BE20](v30);
    v32 = v40;
    v31 = v41;
    *(&v34 - 4) = v43;
    *(&v34 - 3) = v32;
    *(&v34 - 2) = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD600, &unk_237F049C0);
    v33 = v38;
    sub_237CA0A1C();
    (*(v37 + 8))(v24, v20);
    MultivariateLinearRegressor.Model.init(weight:bias:)(v42, v33, v43, v32, v31, v39);
  }

  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237D8A38C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0, &qword_237F036B0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  sub_237EF7E90();
  (*(v5 + 16))(v7, a1, v4);
  v8 = MEMORY[0x277CBFD28];
  swift_getWitnessTable();
  sub_237C96710(&qword_27DEAD2F8, &qword_27DEAD6A0, &qword_237F036B0, v8);
  return sub_237EF7F30();
}

uint64_t sub_237D8A4F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v7 = sub_237EF7E90();
  v8 = MEMORY[0x28223BE20](v7);
  v10 = v13 - v9;
  (*(v11 + 16))(v13 - v9, a1, v8);
  return sub_237D4A7B4(v10, a2, a4);
}

void sub_237D8A65C(uint64_t a1)
{
  sub_237C86290();
  if (v1 <= 0x3F)
  {
    sub_237C862E8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_237D8A708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_13_4();
  v35 = v23;
  v36 = v24;
  v26 = v25;
  _s7StorageV10CodingKeysOMa_0(255, v27[2], v27[3], v27[4]);
  OUTLINED_FUNCTION_5_50();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_14_35();
  v28 = sub_237EF9A80();
  OUTLINED_FUNCTION_1();
  v30 = v29;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v31);
  v33 = &v35 - v32;
  __swift_project_boxed_opaque_existential_1(v26, v26[3]);
  OUTLINED_FUNCTION_14_35();
  sub_237EFA1B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0, &qword_237F036B0);
  sub_237C86400(&qword_27DEADE78, MEMORY[0x277D83AA0], MEMORY[0x277CBFD38]);
  OUTLINED_FUNCTION_13_25();
  v34 = v36;
  sub_237EF9A70();
  if (!v34)
  {
    OUTLINED_FUNCTION_13_25();
    sub_237EF9A00();
  }

  (*(v30 + 8))(v33, v28);
  OUTLINED_FUNCTION_12_6();
}

void sub_237D8A8A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_13_4();
  v63 = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v56 = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD600, &unk_237F049C0);
  OUTLINED_FUNCTION_18(v33);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_19();
  v57 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD6A0, &qword_237F036B0);
  OUTLINED_FUNCTION_1();
  v59 = v37;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_19();
  v60 = v39;
  _s7StorageV10CodingKeysOMa_0(255, v29, v27, v25);
  OUTLINED_FUNCTION_5_50();
  swift_getWitnessTable();
  v62 = sub_237EF99A0();
  OUTLINED_FUNCTION_1();
  v58 = v40;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_5_43();
  v42 = _s7StorageVMa_2(0, v29, v27, v25);
  OUTLINED_FUNCTION_1();
  v55 = v43;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v44);
  v46 = &v55 - v45;
  v64 = *(v47 + 44);
  v61 = v36;
  __swift_storeEnumTagSinglePayload(&v55 + v64 - v45, 1, 1, v36);
  __swift_project_boxed_opaque_existential_1(v31, v31[3]);
  v48 = v63;
  sub_237EFA190();
  if (v48)
  {
    __swift_destroy_boxed_opaque_existential_1(v31);
    sub_237C65484(&v46[v64], &qword_27DEAD600, &unk_237F049C0);
  }

  else
  {
    v49 = v59;
    v63 = v31;
    sub_237C86400(&qword_27DEADE88, MEMORY[0x277D83AC8], MEMORY[0x277CBFD48]);
    v50 = v60;
    sub_237EF9970();
    (*(v49 + 32))(v46, v50, v61);
    v51 = v57;
    sub_237EF9900();
    v52 = OUTLINED_FUNCTION_7_42();
    v53(v52);
    sub_237C6FC94(v51, &v46[v64]);
    v54 = v55;
    (*(v55 + 16))(v56, v46, v42);
    __swift_destroy_boxed_opaque_existential_1(v63);
    (*(v54 + 8))(v46, v42);
  }

  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237D8ACA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237C85A40(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237D8ACDC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237D8AD30(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

_BYTE *sub_237D8ADD8(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t ObjectDetectionMetrics.labels.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t ObjectDetectionMetrics.init()@<X0>(uint64_t a3@<X8>)
{
  result = sub_237EF8130();
  *a3 = result;
  *(a3 + 8) = 1056964608;
  return result;
}

uint64_t static ObjectDetectionMetrics.extractLabels(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12[7] = a1;
  v12[6] = sub_237EF8130();
  v12[0] = a2;
  v12[1] = a3;
  v12[2] = a4;
  v12[3] = a5;
  v12[4] = a6;
  type metadata accessor for ObjectDetectionAnnotation(255, v12);
  OUTLINED_FUNCTION_31_2();
  sub_237EF8A60();
  sub_237EF8CF0();
  OUTLINED_FUNCTION_1_2();
  swift_getWitnessTable();
  sub_237EF87F0();

  return v12[0];
}

uint64_t sub_237D8B114@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v20[6] = *(a2 + 16);
  KeyPath = swift_getKeyPath();
  sub_237EF8260();
  sub_237EF8260();
  v20[0] = a3;
  v20[1] = a4;
  v20[2] = a5;
  v20[3] = a6;
  v20[4] = a7;
  type metadata accessor for ObjectDetectionAnnotation.Annotation(255, v20);
  v14 = sub_237EF8A60();
  WitnessTable = swift_getWitnessTable();
  sub_237C9339C(sub_237D664D0, KeyPath, v14, a3, MEMORY[0x277D84A98], WitnessTable);
  v17 = v16;

  v20[0] = v17;
  sub_237EF8A60();
  swift_getWitnessTable();
  result = sub_237EF8C80();
  *a8 = result;
  return result;
}

uint64_t sub_237D8B2C4(uint64_t a1, uint64_t a2, void *a3)
{
  v26 = a1;
  v5 = a3[3];
  v6 = a3[4];
  v7 = a3[5];
  v8 = a3[6];
  v33[0] = a3[2];
  v4 = v33[0];
  v33[1] = v5;
  v22 = v7;
  v23 = v6;
  v33[2] = v6;
  v33[3] = v7;
  v33[4] = v8;
  v20 = type metadata accessor for ObjectDetectionMetrics.PredictionsPerLabel(0, v33);
  v34 = sub_237EF8110();
  v33[0] = a2;
  v24 = v5;
  v25 = v4;
  v21 = v8;
  type metadata accessor for DetectedObject(255, v4, v5, v8);
  sub_237EF8A60();
  OUTLINED_FUNCTION_31_2();
  v19 = v9;
  v10 = sub_237EF8A60();
  OUTLINED_FUNCTION_1_2();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x2383E0850](&v30, v10, WitnessTable);
  v32 = v30;
  sub_237EF97D0();
  sub_237EF97A0();
  v27 = sub_237EF97C0();
  while (1)
  {
    v12 = sub_237EF97B0();
    if (!v31)
    {
      break;
    }

    v29 = v30;
    v30 = v31;
    MEMORY[0x28223BE20](v12);
    OUTLINED_FUNCTION_2_60();
    swift_getWitnessTable();
    v13 = sub_237EF9440();
    v28 = &v19;
    v30 = v13;
    MEMORY[0x28223BE20](v13);
    OUTLINED_FUNCTION_1_24();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_33_12();
    sub_237C9339C(v14, v15, v16, v20, MEMORY[0x277D84A98], v17);

    sub_237EF89E0();
  }

  return v34;
}

float sub_237D8B5B8@<S0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  result = *(a1 + *(type metadata accessor for DetectedObject(0, a3, a4, a5) + 48));
  *a6 = a2;
  v10 = *a1;
  *(a6 + 24) = a1[1];
  *(a6 + 8) = v10;
  *(a6 + 40) = result;
  return result;
}

uint64_t sub_237D8B620(uint64_t a1, uint64_t a2, void *a3)
{
  v47 = a1;
  v5 = a3[3];
  v6 = a3[4];
  v7 = a3[5];
  v8 = a3[6];
  v57 = a3[2];
  v4 = v57;
  v58 = v5;
  v59 = v6;
  v60 = v7;
  v61 = v8;
  v9 = type metadata accessor for ObjectDetectionAnnotation(255, &v57);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_22_24();
  v51 = sub_237EF90F0();
  OUTLINED_FUNCTION_1_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_2();
  v50 = v14;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v15);
  v17 = (v37 - v16);
  v45 = v5;
  v46 = v4;
  v57 = v4;
  v58 = v5;
  v44 = v6;
  v59 = v6;
  v60 = v7;
  v43 = v7;
  v42 = v8;
  v61 = v8;
  v38 = type metadata accessor for ObjectDetectionMetrics.AnnotationsPerLabel(0, &v57);
  v56 = sub_237EF8110();
  v55[0] = a2;
  v18 = sub_237EF8A60();
  OUTLINED_FUNCTION_1_2();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x2383E0850](&v57, v18, WitnessTable);
  v54 = v57;
  OUTLINED_FUNCTION_43_0();
  sub_237EF97D0();
  sub_237EF97A0();
  OUTLINED_FUNCTION_43_0();
  v20 = sub_237EF97C0();
  v48 = (v12 + 32);
  v49 = v20;
  v41 = v9;
  v37[1] = v9 - 8;
  v40 = TupleTypeMetadata2;
  v39 = v17;
  while (1)
  {
    v21 = v50;
    sub_237EF97B0();
    (*v48)(v17, v21, v51);
    if (__swift_getEnumTagSinglePayload(v17, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v53 = *v17;
    v22 = v17 + *(TupleTypeMetadata2 + 48);
    v23 = *(v22 + 2);
    v24 = v41;
    v25 = *(*(v41 - 8) + 8);
    sub_237EF8260();
    v26 = v25(v22, v24);
    v54 = v23;
    MEMORY[0x28223BE20](v26);
    v28 = v45;
    v27 = v46;
    v37[-6] = v46;
    v37[-5] = v28;
    v29 = v44;
    v30 = v43;
    v37[-4] = v44;
    v37[-3] = v30;
    v31 = v42;
    v32 = v47;
    v37[-2] = v42;
    v37[-1] = v32;
    v57 = v27;
    v58 = v28;
    v59 = v29;
    v60 = v30;
    v61 = v31;
    type metadata accessor for ObjectDetectionAnnotation.Annotation(255, &v57);
    OUTLINED_FUNCTION_31_2();
    v33 = sub_237EF8A60();
    OUTLINED_FUNCTION_2_60();
    swift_getWitnessTable();
    v34 = sub_237EF9440();
    v52 = v37;
    v57 = v34;
    MEMORY[0x28223BE20](v34);
    v37[-6] = v27;
    v37[-5] = v28;
    v37[-4] = v29;
    v37[-3] = v30;
    TupleTypeMetadata2 = v40;
    v37[-2] = v31;
    v17 = v39;
    v37[-1] = v53;
    OUTLINED_FUNCTION_1_24();
    v35 = swift_getWitnessTable();
    sub_237C9339C(sub_237D8E1DC, &v37[-8], v33, v38, MEMORY[0x277D84A98], v35);

    OUTLINED_FUNCTION_33_12();
    sub_237EF89E0();
  }

  return v56;
}

uint64_t sub_237D8BA38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[4] = a7;
  v8[0] = a3;
  v8[1] = a4;
  v8[2] = a5;
  v8[3] = a6;
  type metadata accessor for ObjectDetectionAnnotation.Annotation(0, v8);
  return sub_237EF8520() & 1;
}

uint64_t sub_237D8BAB8(uint64_t a1, void *a2)
{
  v4 = a2[2];
  v5 = a2[6];
  if (sub_237EF8CB0())
  {
    v6 = a2[3];
    v7 = a2[4];
    v8 = a2[5];

    return static ObjectDetectionMetrics.extractLabels(from:)(a1, v4, v6, v7, v8, v5);
  }

  else
  {

    return sub_237EF8260();
  }
}

double sub_237D8BB58(uint64_t a1, double a2, double a3, CGFloat a4, double a5)
{
  v5 = *(a1 + 16);
  if (!v5)
  {
    return 0.0;
  }

  v7 = a4;
  v8 = 0;
  v9 = (a1 + 56);
  v10 = 0.0;
  v26 = a5;
  do
  {
    v32 = v10;
    v41 = *(v9 - 3);
    v11 = a2;
    v12 = a3;
    v13 = v7;
    v14 = a5;
    x = v41.origin.x;
    y = v41.origin.y;
    width = v41.size.width;
    v31 = *v9;
    v34 = CGRectIntersection(*&a2, v41);
    IsNull = CGRectIsNull(v34);
    v18 = 0.0;
    if (!IsNull)
    {
      v35.origin.x = OUTLINED_FUNCTION_44_9();
      v29 = CGRectGetWidth(v35);
      v36.origin.x = OUTLINED_FUNCTION_44_9();
      v18 = fabs(v29 * CGRectGetHeight(v36));
    }

    v30 = v18;
    v19 = v8 + 1;
    v37.origin.x = v11;
    v37.origin.y = v12;
    v7 = a4;
    a5 = v26;
    v37.size.width = a4;
    v37.size.height = v26;
    v20 = CGRectGetWidth(v37);
    v38.origin.x = v11;
    v38.origin.y = v12;
    v38.size.width = a4;
    v38.size.height = v26;
    v28 = fabs(v20 * CGRectGetHeight(v38));
    v39.origin.x = x;
    v39.origin.y = y;
    v39.size.width = width;
    v39.size.height = v31;
    v27 = CGRectGetWidth(v39);
    v40.origin.x = x;
    v40.origin.y = y;
    v40.size.width = width;
    v40.size.height = v31;
    v21 = v28 + fabs(v27 * CGRectGetHeight(v40));
    a2 = v11;
    a3 = v12;
    v22 = v21 - v30;
    v23 = v30 / (v21 - v30);
    if (v22 <= 0.0)
    {
      v23 = 0.0;
    }

    v10 = v32;
    if (v32 < v23)
    {
      v10 = v23;
    }

    v9 += 4;
    ++v8;
  }

  while (v5 != v19);
  return v10;
}

void sub_237D8BD18()
{
  OUTLINED_FUNCTION_19_5();
  v1 = v0;
  v3 = v2;
  v6 = v4[3];
  v7 = v4[4];
  v8 = v4[5];
  v9 = v4[6];
  *&v95 = v4[2];
  v5 = v95;
  *(&v95 + 1) = v6;
  *v96 = v7;
  *&v96[8] = v8;
  *&v96[16] = v9;
  v87 = v10;
  v81 = type metadata accessor for ObjectDetectionMetrics.AnnotationsPerLabel(0, &v95);
  v11 = sub_237EF8A00();
  v12 = sub_237CDC2B0(0, v11);
  v86 = v5;
  *&v95 = v5;
  *(&v95 + 1) = v6;
  v85 = v6;
  v84 = v7;
  *v96 = v7;
  *&v96[8] = v8;
  v83 = v8;
  v82 = v9;
  *&v96[16] = v9;
  TupleTypeMetadata2 = type metadata accessor for ObjectDetectionMetrics.PredictionsPerLabel(0, &v95);
  v14 = sub_237EF8920();
  v94 = v14;
  if (v14 != sub_237EF8A00())
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_55;
    }

    while (1)
    {
      v80 = v3 + 32;
      v78 = v12;
      v77 = v12 + 32;
      v18 = MEMORY[0x277D84F90];
      v19 = MEMORY[0x277D84F90];
      v79 = TupleTypeMetadata2;
      v76 = v3;
      while (1)
      {
        v20 = sub_237EF89D0();
        sub_237EF8960();
        if ((v20 & 1) == 0)
        {
          goto LABEL_46;
        }

        v88 = v18;
        v89 = v19;
        v21 = (v80 + 48 * v14);
        v22 = v21[1];
        v95 = *v21;
        *v96 = v22;
        *&v96[12] = *(v21 + 28);
        sub_237EF8A40();
        v92 = v87;
        sub_237EF8A60();
        OUTLINED_FUNCTION_1_2();
        swift_getWitnessTable();
        v23 = OUTLINED_FUNCTION_22_13();
        v24 = MEMORY[0x2383E0850](v23);
        v12 = &v76;
        v92 = v93;
        MEMORY[0x28223BE20](v24);
        sub_237EF97D0();
        swift_getWitnessTable();
        v25 = sub_237EF87E0();
        TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
        OUTLINED_FUNCTION_22_13();
        v26 = sub_237EF8920();
        v93 = v26;
        OUTLINED_FUNCTION_22_13();
        if (v26 != sub_237EF8A00())
        {
          break;
        }

        v14 = MEMORY[0x277D84F90];
        v27 = MEMORY[0x277D84F90];
LABEL_19:
        sub_237D8BB58(v27, *(&v95 + 1), *v96, *&v96[8], *&v96[16]);
        if ((v45 & 0x8000000000000000) != 0)
        {

          TupleTypeMetadata2 = 0;
LABEL_30:
          v12 = 1;
          v18 = v88;
          v19 = v89;
          goto LABEL_31;
        }

        v46 = v45;
        if (v45 >= *(v14 + 16))
        {
          goto LABEL_47;
        }

        if ((*(v14 + 32 + 8 * v45) & 0x8000000000000000) != 0)
        {
          goto LABEL_48;
        }

        OUTLINED_FUNCTION_38_8();
        if (v49)
        {
          goto LABEL_49;
        }

        v50 = v48;
        v51 = *(v77 + v47);

        TupleTypeMetadata2 = 0;
        if (v51)
        {
          goto LABEL_30;
        }

        v12 = 1;
        v18 = v88;
        v19 = v89;
        if (v50 >= v1)
        {
          if (v46 >= *(v14 + 16))
          {
            goto LABEL_50;
          }

          if ((*(v14 + 32 + 8 * v46) & 0x8000000000000000) != 0)
          {
            goto LABEL_51;
          }

          OUTLINED_FUNCTION_38_8();
          if (v49)
          {
            goto LABEL_52;
          }

          v12 = 0;
          *(v77 + v52) = 1;
          TupleTypeMetadata2 = 1;
        }

LABEL_31:
        v53 = sub_237ED81A4(v18);
        if ((v54 & 1) == 0)
        {
          v55 = v53;
          v56 = sub_237ED81A4(v19);
          if ((v15 & 1) == 0)
          {
            v57 = __OFADD__(TupleTypeMetadata2, v55);
            TupleTypeMetadata2 += v55;
            if (v57)
            {
              goto LABEL_53;
            }

            v57 = __OFADD__(v12, v56);
            v12 += v56;
            if (v57)
            {
              goto LABEL_54;
            }
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v63 = OUTLINED_FUNCTION_8_1();
          sub_237D0B340(v63, v64, v65, v18);
          v18 = v66;
        }

        v59 = *(v18 + 16);
        v58 = *(v18 + 24);
        if (v59 >= v58 >> 1)
        {
          v67 = OUTLINED_FUNCTION_17_0(v58);
          sub_237D0B340(v67, v59 + 1, 1, v18);
          v18 = v68;
        }

        *(v18 + 16) = v59 + 1;
        *(v18 + 8 * v59 + 32) = TupleTypeMetadata2;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v69 = OUTLINED_FUNCTION_8_1();
          sub_237D0B340(v69, v70, v71, v19);
          v19 = v72;
        }

        v61 = *(v19 + 16);
        v60 = *(v19 + 24);
        if (v61 >= v60 >> 1)
        {
          v73 = OUTLINED_FUNCTION_17_0(v60);
          sub_237D0B340(v73, v61 + 1, 1, v19);
          v19 = v74;
        }

        *(v19 + 16) = v61 + 1;
        *(v19 + 8 * v61 + 32) = v12;

        TupleTypeMetadata2 = v79;
        v62 = sub_237EF8A00();
        v14 = v94;
        if (v94 == v62)
        {
          goto LABEL_44;
        }
      }

      v3 = v25 + 32;
      v14 = MEMORY[0x277D84F90];
      v27 = MEMORY[0x277D84F90];
      while (1)
      {
        OUTLINED_FUNCTION_22_13();
        v12 = sub_237EF89D0();
        sub_237EF8960();
        if ((v12 & 1) == 0)
        {
          break;
        }

        v28 = v3 + 48 * v26;
        v29 = *v28;
        v30 = *(v28 + 16);
        v90 = *(v28 + 32);
        v91 = v30;
        sub_237EF8A40();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v37 = OUTLINED_FUNCTION_8_1();
          sub_237D0B340(v37, v38, v39, v14);
          v14 = v40;
        }

        v32 = *(v14 + 16);
        v31 = *(v14 + 24);
        if (v32 >= v31 >> 1)
        {
          v41 = OUTLINED_FUNCTION_17_0(v31);
          sub_237D0B340(v41, v32 + 1, 1, v14);
          v14 = v42;
        }

        *(v14 + 16) = v32 + 1;
        *(v14 + 8 * v32 + 32) = v29;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_8_1();
          sub_237D0C994();
          v27 = v43;
        }

        v12 = *(v27 + 16);
        v33 = *(v27 + 24);
        if (v12 >= v33 >> 1)
        {
          OUTLINED_FUNCTION_17_0(v33);
          sub_237D0C994();
          v27 = v44;
        }

        *(v27 + 16) = v12 + 1;
        v34 = v27 + 32 * v12;
        v35 = v90;
        *(v34 + 32) = v91;
        *(v34 + 48) = v35;
        OUTLINED_FUNCTION_22_13();
        v36 = sub_237EF8A00();
        v26 = v93;
        if (v93 == v36)
        {

          v3 = v76;
          goto LABEL_19;
        }
      }

      sub_237EF93A0();
      __break(1u);
LABEL_46:
      sub_237EF93A0();
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
      sub_237E64320(v12, v15, v16, v17);
      v12 = v75;
    }
  }

LABEL_44:

  OUTLINED_FUNCTION_18_6();
}

uint64_t sub_237D8C388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  MEMORY[0x28223BE20](a1);
  v18 = sub_237EF8110();
  result = sub_237EF8110();
  v11 = 0;
  v12 = *(a1 + 16);
  v13 = a2;
  v14 = a2 + 32;
  while (1)
  {
    if (v12 == v11)
    {
      return v18;
    }

    v15 = *(v13 + 16);
    if (v11 == v15)
    {
      return v18;
    }

    if (v11 >= v15)
    {
      break;
    }

    v16 = *(a1 + 32 + 8 * v11);
    sub_237E6F3D0(v16, *(v14 + 8 * v11), a5);
    sub_237EF8A60();
    sub_237EF8A20();
    sub_237E6E8F8(v16, a3, a5, a6);
    result = sub_237EF8A20();
    ++v11;
  }

  __break(1u);
  return result;
}

void sub_237D8C4E0()
{
  OUTLINED_FUNCTION_19_5();
  v30 = v1;
  v32 = v3;
  v33 = v2;
  v31 = *v0;
  v4 = *(v0 + 8);
  v69 = v5;
  v7 = v6[3];
  v59 = v6[2];
  v60 = v2;
  v8 = v6[4];
  v9 = v6[5];
  v61 = v7;
  v62 = v8;
  v10 = v6[6];
  v63 = v9;
  v64 = v10;
  v11 = v10;
  v65 = v1;
  v66 = v12;
  sub_237EF8260();
  v71 = v59;
  v72 = v7;
  v29 = v7;
  v73 = v8;
  v74 = v9;
  v75 = v11;
  type metadata accessor for ObjectDetectionMetrics.PredictionsPerLabel(255, &v71);
  OUTLINED_FUNCTION_31_2();
  sub_237EF8A60();
  OUTLINED_FUNCTION_2_60();
  swift_getWitnessTable();
  v71 = sub_237EF9440();
  v52 = v59;
  v53 = v33;
  v54 = v7;
  v55 = v8;
  v56 = v9;
  v57 = v11;
  v58 = v30;
  swift_getWitnessTable();
  sub_237EF8800();

  v71 = v31;
  LODWORD(v72) = v4;
  sub_237D8BD18();
  v14 = v13;
  v16 = v15;

  v71 = v59;
  v72 = v7;
  v73 = v8;
  v74 = v9;
  v75 = v11;
  type metadata accessor for ObjectDetectionMetrics.AnnotationsPerLabel(0, &v71);
  v17 = sub_237EF8A00();
  v19 = sub_237D8C388(v14, v16, v17, v18, v33, v30);

  v71 = v19;
  v20 = sub_237EF8A60();
  WitnessTable = swift_getWitnessTable();
  sub_237EFA000();

  v67 = v69;
  v68 = v70;
  v45 = v59;
  v46 = v33;
  v47 = v29;
  v48 = v8;
  v49 = v9;
  v50 = v11;
  v51 = v30;
  v35 = v59;
  v36 = v33;
  v37 = v29;
  v38 = v8;
  v39 = v9;
  v40 = v11;
  v41 = v30;
  v42 = sub_237D8E0D0;
  v43 = &v44;
  v71 = v20;
  v72 = v20;
  v73 = WitnessTable;
  v74 = WitnessTable;
  v22 = sub_237EF9380();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_20_8();
  v24 = swift_getWitnessTable();
  v26 = sub_237C8FFEC(sub_237D8E364, v34, v22, TupleTypeMetadata2, MEMORY[0x277D84A98], v24, MEMORY[0x277D84AC0], v25);

  v71 = v26;
  v27 = sub_237EF8A60();
  OUTLINED_FUNCTION_1_24();
  v28 = swift_getWitnessTable();
  sub_237E6EA28(&v71, v33, v27, v30, v28, v32);

  OUTLINED_FUNCTION_18_6();
}

uint64_t sub_237D8C84C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a4@<X8>)
{
  v7 = *(swift_getTupleTypeMetadata2() + 48);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a4, a4 + *(TupleTypeMetadata2 + 48), a1, a1 + v7);
}

uint64_t sub_237D8C8F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, float a7@<S0>)
{
  v75 = a2;
  v63[1] = a6;
  v12 = *(a5 + 8);
  v76 = a5;
  v72 = v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_17(v15);
  OUTLINED_FUNCTION_1_1();
  v78 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_2();
  v74 = v18;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_17(v63 - v20);
  v70 = *v7;
  v21 = *(v7 + 8);
  v96 = a1;
  v22 = a3[3];
  v86 = a3[2];
  v23 = v86;
  v87 = a4;
  v25 = a3[4];
  v24 = a3[5];
  v88 = v22;
  v89 = v25;
  v71 = a3;
  v26 = a3[6];
  v90 = v24;
  v91 = v26;
  v92 = a5;
  v93 = a7;
  sub_237EF8260();
  v98 = v23;
  v99 = v22;
  v100 = v25;
  v101 = v24;
  v102 = v26;
  type metadata accessor for ObjectDetectionMetrics.PredictionsPerLabel(255, &v98);
  OUTLINED_FUNCTION_31_2();
  sub_237EF8A60();
  OUTLINED_FUNCTION_2_60();
  swift_getWitnessTable();
  v98 = sub_237EF9440();
  v79 = v23;
  v80 = a4;
  v81 = v22;
  v82 = v25;
  v83 = v24;
  v84 = v26;
  v85 = v76;
  OUTLINED_FUNCTION_1_2();
  swift_getWitnessTable();
  v73 = sub_237EF8800();

  swift_getAssociatedConformanceWitness();
  sub_237EF9FA0();
  sub_237EF9CE0();
  AssociatedTypeWitness = v23;
  v98 = v23;
  v99 = v22;
  v68 = v22;
  v67 = v25;
  v100 = v25;
  v101 = v24;
  v66 = v24;
  v65 = v26;
  v102 = v26;
  type metadata accessor for ObjectDetectionMetrics.AnnotationsPerLabel(0, &v98);
  result = sub_237EF8A00();
  v64 = result;
  v28 = 0;
  v72 = (v78 + 1);
  while (!__OFADD__(v28, 1))
  {
    v63[2] = v28 + 1;
    v29 = (v28 + 1) * 0.05 + 0.05;
    v98 = v70;
    LODWORD(v99) = v21;
    sub_237D8BD18();
    v30 = v76;
    v34 = sub_237D8C388(v31, v32, v64, v33, a4, v76);
    v36 = v35;

    v98 = v34;
    v94 = v36;
    OUTLINED_FUNCTION_43_0();
    v37 = sub_237EF8A60();
    OUTLINED_FUNCTION_1_2();
    WitnessTable = swift_getWitnessTable();
    sub_237EFA000();

    v78 = v63;
    v94 = v96;
    v95 = v97;
    MEMORY[0x28223BE20](v39);
    v63[-8] = AssociatedTypeWitness;
    v63[-7] = a4;
    v40 = v67;
    v63[-6] = v68;
    v63[-5] = v40;
    v41 = v66;
    v42 = v65;
    v63[-4] = v66;
    v63[-3] = v42;
    v63[-2] = v30;
    MEMORY[0x28223BE20](v41);
    v63[-10] = v43;
    v63[-9] = a4;
    v63[-8] = v44;
    v63[-7] = v45;
    v63[-6] = v46;
    v63[-5] = v47;
    v63[-4] = v30;
    v63[-3] = sub_237D8E360;
    v63[-2] = v48;
    v98 = v37;
    v99 = v37;
    v100 = WitnessTable;
    v101 = WitnessTable;
    v49 = sub_237EF9380();
    OUTLINED_FUNCTION_43_0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    OUTLINED_FUNCTION_20_8();
    v51 = swift_getWitnessTable();
    v53 = sub_237C8FFEC(sub_237D8E078, &v63[-12], v49, TupleTypeMetadata2, MEMORY[0x277D84A98], v51, MEMORY[0x277D84AC0], v52);

    v98 = v53;
    OUTLINED_FUNCTION_22_24();
    sub_237EF8A60();
    OUTLINED_FUNCTION_1_24();
    swift_getWitnessTable();
    v54 = v74;
    OUTLINED_FUNCTION_33_12();
    sub_237E6EA28(v55, v56, v57, v30, v58, v59);

    sub_237EF9770();
    v60 = *v72;
    result = (*v72)(v54, a4);
    ++v28;
    if (v29 >= 1.0)
    {

      v61 = v74;
      sub_237EF83A0();
      v62 = v77;
      sub_237EF8330();
      v60(v61, a4);
      return v60(v62, a4);
    }
  }

  __break(1u);
  return result;
}

void ObjectDetectionMetrics.averagePrecision<A>(predictions:annotations:confidenceThresholds:overlapThreshold:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v69 = a6;
  v66 = a3;
  v64 = a1;
  v10 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v10);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_19();
  v63 = v12;
  v13 = *(a4 + 16);
  OUTLINED_FUNCTION_1_1();
  v53 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_2();
  v62 = v16;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_17(&v51 - v18);
  OUTLINED_FUNCTION_22_24();
  v19 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v19);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_19();
  v71 = v21;
  v22 = *v6;
  v23 = *(v6 + 8);
  v24 = *(a4 + 48);
  v68 = a5;
  v25 = v24;
  v74 = sub_237EF8100();
  v75 = v22;
  v61 = v22;
  LODWORD(v76) = v23;
  v65 = a2;
  v67 = a4;
  sub_237D8BAB8(a2, a4);
  OUTLINED_FUNCTION_36_12();
  v60 = v25;
  if (v26)
  {
    v70 = 0;
    OUTLINED_FUNCTION_9_7();
    v52 = a4 + 56;
    OUTLINED_FUNCTION_4_54();
    v28 = v29 & v30;
  }

  else
  {
    OUTLINED_FUNCTION_23_26();
    sub_237EF8CC0();
    a4 = v75;
    v52 = v76;
    v27 = v77;
    v70 = v78;
    v28 = v79;
  }

  v51 = v27;
  v31 = (v27 + 64) >> 6;
  v56 = v53 + 16;
  v55 = v53 + 32;
  v54 = v53 + 8;
  v58 = a4;
  v57 = v31;
  if ((a4 & 0x8000000000000000) != 0)
  {
    goto LABEL_7;
  }

  while (v28)
  {
LABEL_14:
    OUTLINED_FUNCTION_20_25();
    v35 = OUTLINED_FUNCTION_19_30();
    v36(v35);
    while (1)
    {
      v37 = OUTLINED_FUNCTION_9_35();
      __swift_storeEnumTagSinglePayload(v37, v38, v39, v13);
      OUTLINED_FUNCTION_19_1();
      v40 = v59;
      v41 = OUTLINED_FUNCTION_49_2();
      v42(v41);
      v43 = v67;
      sub_237D8B2C4(v40, v64, v67);
      sub_237D8B620(v40, v65, v43);
      sub_237EF82F0();
      v44 = OUTLINED_FUNCTION_42_8();
      v45(v44);
      v72 = v61;
      v73 = v23;
      v46 = v68;
      sub_237D8C4E0();

      v47 = OUTLINED_FUNCTION_9_35();
      __swift_storeEnumTagSinglePayload(v47, v48, v49, v46);
      OUTLINED_FUNCTION_22_24();
      sub_237EF82B0();
      sub_237EF8300();
      OUTLINED_FUNCTION_19_1();
      v50(v40, v13);
      v31 = v57;
      if ((v58 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_7:
      v32 = sub_237EF92B0();
      if (!v32)
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_46_9(v32);
      swift_unknownObjectRelease();
    }
  }

  v33 = v70;
  while (1)
  {
    v34 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v34 >= v31)
    {
LABEL_17:
      OUTLINED_FUNCTION_49_9();
      sub_237C9FE9C();
      return;
    }

    v28 = *(v52 + 8 * v34);
    ++v33;
    if (v28)
    {
      v70 = v34;
      goto LABEL_14;
    }
  }

  __break(1u);
}

void ObjectDetectionMetrics.meanAveragePrecision<A>(predictions:annotations:confidenceThresholds:overlapThreshold:)()
{
  OUTLINED_FUNCTION_19_5();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v9 = OUTLINED_FUNCTION_24_21(v7, v8);
  OUTLINED_FUNCTION_18(v9);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_19();
  v36 = v11;
  v12 = *(v2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_41_8();
  OUTLINED_FUNCTION_49_2();
  swift_getAssociatedConformanceWitness();
  sub_237EF9FA0();
  OUTLINED_FUNCTION_33_12();
  sub_237EF9CE0();
  sub_237D8BAB8(v6, v4);
  OUTLINED_FUNCTION_36_12();
  if (v17)
  {
    v34 = 0;
    OUTLINED_FUNCTION_9_7();
    v6 = v2 + 56;
    OUTLINED_FUNCTION_4_54();
    v12 = v18 & v19;
  }

  else
  {
    OUTLINED_FUNCTION_23_26();
    sub_237EF8CC0();
    OUTLINED_FUNCTION_39_10();
  }

  OUTLINED_FUNCTION_6_40();
  while (1)
  {
    if (v2 < 0)
    {
      v22 = sub_237EF92B0();
      v21 = v36;
      v20 = v37;
      if (!v22)
      {
        goto LABEL_19;
      }

      OUTLINED_FUNCTION_47_6(v22);
      swift_unknownObjectRelease();
      goto LABEL_16;
    }

    v21 = v36;
    v20 = v37;
    if (!v12)
    {
      break;
    }

LABEL_15:
    OUTLINED_FUNCTION_13_26();
    (*(v25 + 16))(v36, v27 + *(v25 + 72) * v26);
LABEL_16:
    OUTLINED_FUNCTION_28_18();
    OUTLINED_FUNCTION_48_8();
    OUTLINED_FUNCTION_21_26();
    sub_237EF82F0();
    (*(*(v20 - 8) + 8))(v21, v20);
    OUTLINED_FUNCTION_32_14();
    OUTLINED_FUNCTION_35_10();
    sub_237D8C4E0();

    OUTLINED_FUNCTION_15_32();
    v28 = OUTLINED_FUNCTION_30_20();
    v29(v28);
    v30 = __OFADD__(AssociatedTypeWitness++, 1);
    v2 = v33;
    if (v30)
    {
      __break(1u);
LABEL_19:
      OUTLINED_FUNCTION_8_48();
      OUTLINED_FUNCTION_26_19();
      v31 = *v35;
      v32 = OUTLINED_FUNCTION_49_2();
      v31(v32);
      (v31)(v0, v20);
      OUTLINED_FUNCTION_18_6();
      return;
    }
  }

  v23 = v34;
  while (1)
  {
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v24 >= v4)
    {
      goto LABEL_19;
    }

    v12 = *(v6 + 8 * v24);
    ++v23;
    if (v12)
    {
      v34 = v24;
      goto LABEL_15;
    }
  }

  __break(1u);
}

void ObjectDetectionMetrics.averageOfAveragePrecisionAtVariedThresholds<A>(predictions:annotations:confidenceThresholds:)()
{
  OUTLINED_FUNCTION_19_5();
  v73 = v1;
  v3 = v2;
  v5 = v4;
  v70 = v6;
  v8 = v7;
  v68 = v9;
  v10 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v10);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_19();
  v67 = v12;
  v13 = *(v5 + 16);
  OUTLINED_FUNCTION_1_1();
  v57 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_2();
  v66 = v16;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_17(&v55 - v18);
  OUTLINED_FUNCTION_22_24();
  v19 = sub_237EF90F0();
  OUTLINED_FUNCTION_18(v19);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_19();
  v75 = v21;
  v22 = *v0;
  v23 = *(v0 + 8);
  v24 = *(v5 + 48);
  v72 = v3;
  v25 = v24;
  v78 = sub_237EF8100();
  v79 = v22;
  v65 = v22;
  *&v80 = v23;
  v69 = v8;
  v71 = v5;
  sub_237D8BAB8(v8, v5);
  OUTLINED_FUNCTION_36_12();
  v64 = v25;
  if (v26)
  {
    v74 = 0;
    OUTLINED_FUNCTION_9_7();
    v56 = (v5 + 56);
    OUTLINED_FUNCTION_4_54();
    v28 = v29 & v30;
  }

  else
  {
    OUTLINED_FUNCTION_23_26();
    sub_237EF8CC0();
    v5 = v79;
    v56 = v80;
    v27 = v81;
    v74 = v82;
    v28 = v83;
  }

  v55 = v27;
  v31 = (v27 + 64) >> 6;
  v60 = v57 + 16;
  v59 = v57 + 32;
  v58 = v57 + 8;
  v62 = v5;
  v61 = v31;
  if ((v5 & 0x8000000000000000) != 0)
  {
    goto LABEL_7;
  }

  while (v28)
  {
LABEL_14:
    OUTLINED_FUNCTION_20_25();
    v35 = OUTLINED_FUNCTION_19_30();
    v36(v35);
    while (1)
    {
      v37 = OUTLINED_FUNCTION_9_35();
      __swift_storeEnumTagSinglePayload(v37, v38, v39, v13);
      OUTLINED_FUNCTION_19_1();
      v40 = v63;
      v41 = OUTLINED_FUNCTION_49_2();
      v42(v41);
      v43 = v71;
      v44 = sub_237D8B2C4(v40, v68, v71);
      v45 = sub_237D8B620(v40, v69, v43);
      sub_237EF82F0();
      v46 = BYTE4(v76) ? v23 : *&v76;
      v47 = OUTLINED_FUNCTION_42_8();
      v48(v47);
      v76 = v65;
      v77 = v23;
      v49 = v43;
      v50 = v72;
      sub_237D8C8F4(v44, v45, v49, v72, v73, v67, v46);

      v51 = OUTLINED_FUNCTION_9_35();
      __swift_storeEnumTagSinglePayload(v51, v52, v53, v50);
      OUTLINED_FUNCTION_22_24();
      sub_237EF82B0();
      sub_237EF8300();
      OUTLINED_FUNCTION_19_1();
      v54(v40, v13);
      v31 = v61;
      if ((v62 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_7:
      v32 = sub_237EF92B0();
      if (!v32)
      {
        goto LABEL_20;
      }

      OUTLINED_FUNCTION_46_9(v32);
      swift_unknownObjectRelease();
    }
  }

  v33 = v74;
  while (1)
  {
    v34 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v34 >= v31)
    {
LABEL_20:
      OUTLINED_FUNCTION_49_9();
      sub_237C9FE9C();
      OUTLINED_FUNCTION_18_6();
      return;
    }

    v28 = v56[v34];
    ++v33;
    if (v28)
    {
      v74 = v34;
      goto LABEL_14;
    }
  }

  __break(1u);
}

void ObjectDetectionMetrics.averageOfMeanAveragePrecisionAtVariedThresholds<A>(predictions:annotations:confidenceThresholds:)()
{
  OUTLINED_FUNCTION_19_5();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v52 = v9;
  v11 = v10;
  v14 = OUTLINED_FUNCTION_24_21(v12, v13);
  OUTLINED_FUNCTION_18(v14);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_19();
  v59 = v4;
  v60 = v16;
  v17 = *(v4 + 8);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v18);
  v20 = v49 - v19;
  OUTLINED_FUNCTION_1_1();
  v62 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_2_2();
  v57 = v23;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_41_8();
  v25 = *(v0 + 8);
  OUTLINED_FUNCTION_49_2();
  swift_getAssociatedConformanceWitness();
  sub_237EF9FA0();
  v56 = v2;
  v58 = v6;
  OUTLINED_FUNCTION_33_12();
  sub_237EF9CE0();
  v50 = v4;
  v65 = v4;
  v66 = v25;
  v51 = v11;
  sub_237D8BAB8(v11, v8);
  OUTLINED_FUNCTION_36_12();
  v53 = v8;
  if (v26)
  {
    v54 = 0;
    OUTLINED_FUNCTION_9_7();
    v20 = (v4 + 56);
    OUTLINED_FUNCTION_4_54();
    v17 = v27 & v28;
  }

  else
  {
    OUTLINED_FUNCTION_23_26();
    sub_237EF8CC0();
    OUTLINED_FUNCTION_39_10();
  }

  OUTLINED_FUNCTION_6_40();
  while (1)
  {
    if (v4 < 0)
    {
      v31 = sub_237EF92B0();
      v30 = v60;
      v29 = v61;
      if (!v31)
      {
        goto LABEL_19;
      }

      OUTLINED_FUNCTION_47_6(v31);
      swift_unknownObjectRelease();
      goto LABEL_16;
    }

    v30 = v60;
    v29 = v61;
    if (!v17)
    {
      break;
    }

LABEL_15:
    OUTLINED_FUNCTION_13_26();
    (*(v34 + 16))(v30, v36 + *(v34 + 72) * v35, v29);
LABEL_16:
    OUTLINED_FUNCTION_28_18();
    OUTLINED_FUNCTION_48_8();
    OUTLINED_FUNCTION_21_26();
    sub_237EF82F0();
    (*(*(v29 - 8) + 8))(v30, v29);
    v63 = v50;
    v64 = v25;
    OUTLINED_FUNCTION_32_14();
    OUTLINED_FUNCTION_35_10();
    sub_237D8C8F4(v37, v38, v39, v40, v41, v42, v43);

    OUTLINED_FUNCTION_15_32();
    v44 = OUTLINED_FUNCTION_30_20();
    v45(v44);
    v46 = __OFADD__(v11++, 1);
    v4 = v49[3];
    if (v46)
    {
      __break(1u);
LABEL_19:
      OUTLINED_FUNCTION_8_48();
      OUTLINED_FUNCTION_26_19();
      v47 = *v55;
      v48 = OUTLINED_FUNCTION_49_2();
      v47(v48);
      (v47)(v1, v29);
      OUTLINED_FUNCTION_18_6();
      return;
    }
  }

  v32 = v54;
  while (1)
  {
    v33 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v33 >= v8)
    {
      goto LABEL_19;
    }

    v17 = *&v20[8 * v33];
    ++v32;
    if (v17)
    {
      v54 = v33;
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_237D8DF60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t __swift_memcpy12_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_237D8DFB0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 12))
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

uint64_t sub_237D8DFF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 12) = 1;
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

    *(result + 12) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_237D8E0D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 24);
  v9 = *(*(v7 - 8) + 16);
  v9(a1, a3, v7);

  return (v9)(a2, a4, v7);
}

__n128 sub_237D8E1DC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(v2 + 56);
  result = *a1;
  v4 = *(a1 + 16);
  *(a2 + 8) = *a1;
  *(a2 + 24) = v4;
  return result;
}

uint64_t sub_237D8E27C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237D8E2B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy44_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 28) = *(a2 + 28);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_237D8E308(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 44))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_237D8E328(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
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

  *(result + 44) = v3;
  return result;
}

void OUTLINED_FUNCTION_6_40()
{
  *(v3 - 296) = v0;
  *(v3 - 176) = v2;
  *(v3 - 224) = *(v3 - 168) + 8;
  *(v3 - 280) = v1;
  *(v3 - 168) = v2 - 8;
}

uint64_t OUTLINED_FUNCTION_8_48()
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v0);
  sub_237C9FE9C();

  return sub_237EF83A0();
}

uint64_t OUTLINED_FUNCTION_15_32()
{

  return sub_237EF9770();
}

uint64_t OUTLINED_FUNCTION_23_26()
{

  return sub_237EF92A0();
}

uint64_t OUTLINED_FUNCTION_24_21@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  *(v3 - 264) = a1;
  *(v3 - 288) = a3;

  return sub_237EF90F0();
}

uint64_t OUTLINED_FUNCTION_26_19()
{

  return sub_237EF8330();
}

uint64_t OUTLINED_FUNCTION_28_18()
{
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);
  v3 = *(v2 - 264);
  v4 = *(v2 - 240);

  return sub_237D8B2C4(v1, v3, v4);
}

uint64_t OUTLINED_FUNCTION_46_9(uint64_t a1)
{

  return sub_237EF9D10();
}

uint64_t OUTLINED_FUNCTION_47_6(uint64_t a1)
{

  return sub_237EF9D10();
}

uint64_t OUTLINED_FUNCTION_48_8()
{
  v4 = *(v2 - 256);

  return sub_237D8B620(v1, v4, v0);
}

unint64_t TabularPipelineDataError.debugDescription.getter()
{
  v2 = *v0;
  v1 = v0[1];
  if (!*(v0 + 64))
  {
    OUTLINED_FUNCTION_9_22();
    sub_237EF9330();

    v12 = 0xD000000000000010;
    OUTLINED_FUNCTION_1_64();
    v9 = 0x206E692027;
    v10 = 0xE500000000000000;
LABEL_6:
    MEMORY[0x2383E0710](v9, v10);
    v7 = v2;
    v8 = v1;
    goto LABEL_7;
  }

  if (*(v0 + 64) != 1)
  {
    OUTLINED_FUNCTION_9_22();
    sub_237EF9330();
    MEMORY[0x2383E0710](0xD000000000000025, 0x8000000237EFEFA0);
    OUTLINED_FUNCTION_1_64();
    v9 = 0x64656465656E2027;
    v10 = 0xED000020726F6620;
    goto LABEL_6;
  }

  v4 = v0[6];
  v3 = v0[7];
  v6 = v0[4];
  v5 = v0[5];
  OUTLINED_FUNCTION_9_22();
  sub_237EF9330();
  MEMORY[0x2383E0710](0xD00000000000001ALL, 0x8000000237EFEFD0);
  OUTLINED_FUNCTION_1_64();
  MEMORY[0x2383E0710](544106784, 0xE400000000000000);
  MEMORY[0x2383E0710](v2, v1);
  MEMORY[0x2383E0710](0x746365707845202ELL, 0xEB00000000206465);
  MEMORY[0x2383E0710](v4, v3);
  MEMORY[0x2383E0710](0x756F662074756220, 0xEB0000000020646ELL);
  v7 = v6;
  v8 = v5;
LABEL_7:
  MEMORY[0x2383E0710](v7, v8);
  MEMORY[0x2383E0710](46, 0xE100000000000000);
  return v12;
}

uint64_t static TabularPipelineDataError.== infix(_:_:)(void *__src, const void *a2)
{
  memcpy(__dst, __src, 0x41uLL);
  memcpy(v26, a2, 0x41uLL);
  memcpy(v27, __src, 0x41uLL);
  memcpy(v28, a2, sizeof(v28));
  v5 = __dst[2];
  v4 = __dst[3];
  v7 = v26[2];
  v6 = v26[3];
  if (LOBYTE(__dst[8]))
  {
    if (LOBYTE(__dst[8]) == 1)
    {
      if (LOBYTE(v26[8]) == 1)
      {
        v8 = __dst[4];
        v9 = __dst[5];
        v22 = __dst[7];
        v23 = __dst[6];
        v10 = v26[4];
        v11 = v26[5];
        v12 = __dst[0] == v26[0] && __dst[1] == v26[1];
        v13 = v26[6];
        v14 = v26[7];
        if (v12 || (sub_237EF9D40() & 1) != 0)
        {
          v15 = v5 == v7 && v4 == v6;
          if (v15 || (OUTLINED_FUNCTION_2_61(), (sub_237EF9D40() & 1) != 0))
          {
            v16 = v8 == v10 && v9 == v11;
            if (v16 || (sub_237EF9D40() & 1) != 0)
            {
              if (v23 != v13 || v22 != v14)
              {
                goto LABEL_37;
              }

LABEL_40:
              sub_237D8EB54(v26, v24);
              sub_237D8EB54(__dst, v24);
              v20 = 1;
              goto LABEL_39;
            }
          }
        }
      }

LABEL_38:
      sub_237D8EB54(v26, v24);
      sub_237D8EB54(__dst, v24);
      v20 = 0;
      goto LABEL_39;
    }

    if (LOBYTE(v26[8]) != 2)
    {
      goto LABEL_38;
    }
  }

  else if (LOBYTE(v26[8]))
  {
    goto LABEL_38;
  }

  v18 = __dst[0] == v26[0] && __dst[1] == v26[1];
  if (!v18 && (sub_237EF9D40() & 1) == 0)
  {
    goto LABEL_38;
  }

  if (v5 == v7 && v4 == v6)
  {
    goto LABEL_40;
  }

  OUTLINED_FUNCTION_2_61();
LABEL_37:
  v20 = sub_237EF9D40();
  sub_237D8EB54(v26, v24);
  sub_237D8EB54(__dst, v24);
LABEL_39:
  sub_237D8EB8C(v27);
  return v20 & 1;
}

uint64_t sub_237D8EB8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB29E0, &qword_237F129C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237D8EC10(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 65))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 64);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_237D8EC50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_1_64()
{

  JUMPOUT(0x2383E0710);
}

uint64_t sub_237D8ECF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v74 = a3;
  v66 = a2;
  v76 = sub_237EF7AB0();
  OUTLINED_FUNCTION_1();
  v78 = v6;
  MEMORY[0x28223BE20](v7);
  v69 = (&v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_237EF7B00();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_4_55();
  MEMORY[0x28223BE20](v13);
  v15 = &v61 - v14;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
  inited = swift_initStackObject();
  v75 = xmmword_237F12B90;
  *(inited + 16) = xmmword_237F08A50;
  *(inited + 32) = xmmword_237F12B90;
  *(inited + 48) = a2;
  sub_237EBE8A8();
  v65 = v17;
  v64 = v18;
  swift_setDeallocating();
  OUTLINED_FUNCTION_1_65();
  sub_237EBEF48();
  sub_237E8B680();
  OUTLINED_FUNCTION_3_59();

  OUTLINED_FUNCTION_1_65();
  sub_237EBEF48();
  v68 = v19;

  sub_237EF7A20();
  sub_237EF7A50();
  v70 = v15;
  sub_237EC79A4();
  OUTLINED_FUNCTION_3_59();
  v21 = v11 + 8;
  v20 = *(v11 + 8);
  v71 = v21;
  v73 = v20;
  v72 = v9;
  v20(v3, v9);
  v20(v15, v9);
  OUTLINED_FUNCTION_1_65();
  sub_237EBE8A8();

  sub_237EBF68C();
  OUTLINED_FUNCTION_3_59();

  OUTLINED_FUNCTION_1_65();
  sub_237EBE8A8();
  v68 = v22;
  v67 = v23;

  sub_237EBEF48();

  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_237F105F0;
  v25 = v66;
  *(v24 + 32) = 1;
  *(v24 + 40) = v25;
  *(v24 + 48) = v75;
  v61 = a1;
  sub_237EBE8A8();

  swift_setDeallocating();
  *&v75 = type metadata accessor for LSTMFCN(0);
  OUTLINED_FUNCTION_47_1();
  sub_237D8F4D0(v26);

  v27 = v69;
  *v69 = 0x65636E6575716573;
  v27[1] = 0xEE006874676E654CLL;
  LODWORD(v66) = *MEMORY[0x277D252B0];
  v28 = v78;
  v65 = *(v78 + 104);
  v29 = v76;
  v65(v27);
  sub_237EF68E0();
  v30 = v61;
  v31 = OUTLINED_FUNCTION_6_41();
  sub_237D8F5D8(v31, v32, v33, v34, v35);
  OUTLINED_FUNCTION_3_59();
  v63 = v36;
  v62 = v37;

  v38 = *(v28 + 8);
  v78 = v28 + 8;
  v64 = v38;
  v38(v27, v29);
  OUTLINED_FUNCTION_3_47();
  sub_237EBE8A8();

  sub_237D8F4D0(v30);

  v39 = v62;
  *v27 = v63;
  v27[1] = v39;
  v40 = v76;
  (v65)(v27, v66, v76);
  v41 = OUTLINED_FUNCTION_6_41();
  sub_237D8F5D8(v41, v42, v43, v44, 5);
  OUTLINED_FUNCTION_3_59();

  v64(v27, v40);

  OUTLINED_FUNCTION_3_47();
  sub_237EBE8A8();

  OUTLINED_FUNCTION_47_1();
  sub_237D8F4D0(v45);
  OUTLINED_FUNCTION_3_59();

  OUTLINED_FUNCTION_3_47();
  sub_237EC0120();
  v47 = v46;
  v49 = v48;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD400, &unk_237F106F0);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_237F04760;
  v51 = v67;
  *(v50 + 32) = v68;
  *(v50 + 40) = v51;
  *(v50 + 48) = v47;
  *(v50 + 56) = v49;
  v52 = v70;
  sub_237EF7A30();
  sub_237EC0B40();
  v73(v52, v72);
  sub_237E8BE28();

  sub_237EC2368();
  OUTLINED_FUNCTION_3_59();

  v53 = swift_initStackObject();
  *(v53 + 16) = xmmword_237F03530;
  *(v53 + 32) = *(v74 + 16);
  OUTLINED_FUNCTION_3_47();
  sub_237EBE8A8();

  swift_setDeallocating();
  OUTLINED_FUNCTION_47_1();
  sub_237EC28F8(v54, v55, v56, v57, 0xE500000000000000, 0xD000000000000012, v58, v59, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72);
}

uint64_t sub_237D8F4D0(uint64_t a1)
{
  sub_237E8C378();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
  inited = swift_initStackObject();
  v2 = OUTLINED_FUNCTION_5_51(inited, xmmword_237F08A50);
  inited[2].n128_u64[1] = MEMORY[0x2383DE9E0](v2);
  inited[3].n128_u64[0] = -1;
  OUTLINED_FUNCTION_47_1();
  sub_237EBE8A8();

  swift_setDeallocating();
  type metadata accessor for LSTMFCN.ConvolutionBlock(0);
  sub_237E8C924();
  v4 = v3;
  v6 = v5;

  sub_237EC32A0(v4, v6);
  v8 = v7;

  return v8;
}

uint64_t sub_237D8F5D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v71 = a4;
  v72 = a5;
  v70 = sub_237EF7AB0();
  OUTLINED_FUNCTION_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v15 = v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_237EF7B00();
  OUTLINED_FUNCTION_1();
  v66 = v17;
  v67 = v16;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_4_55();
  MEMORY[0x28223BE20](v18);
  v20 = v60 - v19;
  v68 = a2;
  v69 = a3;
  sub_237EC0120();
  sub_237E8BE28();
  v22 = v21;
  v24 = v23;

  sub_237EC32A0(v22, v24);

  v25 = type metadata accessor for LSTMFCN.SqueezeExciteBlock(0);
  sub_237E8BE28();
  v27 = v26;
  v29 = v28;

  sub_237EC32B0(v27, v29);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
  inited = swift_initStackObject();
  v65 = xmmword_237F08A50;
  v31 = OUTLINED_FUNCTION_5_51(inited, xmmword_237F08A50);
  v32 = *(v7 + *(v25 + 28));
  v31[2].n128_u64[1] = v32;
  v31[3].n128_u64[0] = v33;
  v34 = a1;
  sub_237EBE8A8();
  v64 = v35;
  v37 = v36;

  swift_setDeallocating();
  v38 = v70;
  (*(v12 + 16))(v15, v71);
  sub_237EF7AC0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD398, &unk_237F0B050);
  result = swift_allocObject();
  v40 = v72;
  *(result + 16) = xmmword_237F03530;
  if (v40 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v40 > 0x7FFFFFFF)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (!__OFSUB__(1, v40))
  {
    *(result + 32) = 1 - v40;
    sub_237EF7A50();
    v60[1] = v34;
    v71 = v37;
    sub_237EC79A4();
    v42 = v41;
    v62 = v41;
    v63 = v6;
    v72 = v43;
    v44 = v67;
    v61 = v32;
    v45 = *(v66 + 1);
    v66 = v45;
    v45(v6, v67);
    v45(v20, v44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD368, &qword_237F030D0);
    v46 = *(v12 + 72);
    v47 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_237F04760;
    v49 = v48 + v47;
    sub_237EF7A00();
    v50 = *(v12 + 104);
    (v50)(v49, *MEMORY[0x277D252B8], v38);
    v51 = (v49 + v46);
    v52 = v72;
    *v51 = v42;
    v51[1] = v52;
    v50();
    v73 = v48;
    sub_237EF8260();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB29E8, &qword_237F12BA0);
    sub_237D8FB78();
    sub_237EF7AD0();
    sub_237EC0B40();
    v53 = v66;
    v66(v20, v44);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD498, &qword_237F03190);
    v54 = swift_allocObject();
    v55 = OUTLINED_FUNCTION_5_51(v54, v65);
    v55[2].n128_u8[8] = 0;
    v55[3].n128_u64[0] = v61;
    v55[3].n128_u8[8] = 0;
    v55[4].n128_u64[0] = 0;
    v55[4].n128_u8[8] = v56;
    sub_237EC3844();

    sub_237EF8260();
    sub_237EF7A20();
    v57 = v63;
    sub_237EF7A20();
    sub_237EC79A4();
    v59 = v58;
    v53(v57, v44);
    v53(v20, v44);
    return v59;
  }

LABEL_7:
  __break(1u);
  return result;
}

unint64_t sub_237D8FB78()
{
  result = qword_27DEB29F0;
  if (!qword_27DEB29F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEB29E8, &qword_237F12BA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB29F0);
  }

  return result;
}

__n128 *OUTLINED_FUNCTION_5_51(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 1;
  return result;
}

uint64_t FullyConnectedNetworkMultiLabelClassifier.makeTransformer()@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v5 = v2[1];
  v21[0] = *v2;
  v21[1] = v5;
  v6 = v2[3];
  v8 = *v2;
  v7 = v2[1];
  v21[2] = v2[2];
  v21[3] = v6;
  v20[0] = v8;
  v20[1] = v7;
  v9 = v2[3];
  v20[2] = v2[2];
  v20[3] = v9;
  sub_237C8F200(v21, v19);
  v10 = a1[3];
  v11 = a1[8];
  v12 = a1[11];
  v13 = sub_237EF8260();
  v14 = sub_237E5E16C(v13, v10, v11, v12);
  v16 = v15;
  swift_getTupleTypeMetadata2();
  sub_237EF89A0();
  v17 = sub_237EF8230();
  return sub_237E2AC2C(v20, v14, v16, MEMORY[0x277D84F90], 0, v17, a1[2], v10, a2, a1[4], a1[5], v11, a1[9], a1[10], v12);
}

uint64_t FullyConnectedNetworkMultiLabelClassifier.update<A>(_:with:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v8[36] = a6;
  v8[37] = a7;
  v8[34] = a4;
  v8[35] = a5;
  v8[32] = a2;
  v8[33] = a3;
  v8[31] = a1;
  v11 = sub_237EF6B10();
  v8[38] = v11;
  v8[39] = *(v11 - 8);
  v8[40] = OUTLINED_FUNCTION_27_0();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2B0, &unk_237F11860);
  v8[41] = v12;
  v8[42] = *(v12 - 8);
  v8[43] = OUTLINED_FUNCTION_27_0();
  v8[44] = a5[2];
  v8[45] = a5[4];
  v13 = sub_237EF7E90();
  v8[46] = v13;
  v8[47] = *(v13 - 8);
  v8[48] = OUTLINED_FUNCTION_27_0();
  v8[49] = a5[3];
  v8[50] = a5[11];
  v14 = sub_237EF8CF0();
  v8[51] = type metadata accessor for AnnotatedFeature(255, v13, v14, v15);
  sub_237EF90F0();
  v8[52] = OUTLINED_FUNCTION_27_0();
  v8[53] = *(a6 - 8);
  v8[54] = OUTLINED_FUNCTION_27_0();
  memcpy(v8 + 2, v7, 0x48uLL);

  return MEMORY[0x2822009F8](sub_237D8FFA8, 0, 0);
}

uint64_t sub_237D8FFA8()
{
  v77 = v0;
  (*(*(v0 + 424) + 16))(*(v0 + 432), *(v0 + 256), *(v0 + 288));
  v1 = sub_237EF8A90();
  *(v0 + 208) = v1;
  v2 = sub_237EF8A60();
  WitnessTable = swift_getWitnessTable();
  if ((sub_237EF8EC0() & 1) == 0)
  {
    *(v0 + 88) = *(v0 + 352);
    v5 = *(v0 + 400);
    v6 = *(v0 + 360);
    v7 = *(v0 + 280);
    v8 = *(v0 + 248);
    v9 = v7[5];
    v10 = v7[8];
    v11 = v7[9];
    v12 = v7[10];
    *(v0 + 96) = *(v0 + 392);
    *(v0 + 104) = v6;
    v66 = v9;
    v68 = v12;
    *(v0 + 112) = v9;
    *(v0 + 120) = v10;
    v71 = v11;
    v74 = v10;
    *(v0 + 128) = v11;
    *(v0 + 136) = v12;
    *(v0 + 144) = v5;
    v13 = type metadata accessor for FullyConnectedNetworkMultiLabelClassifierModel(0, v0 + 88);
    v64 = v13;
    v14 = *(v8 + *(v13 + 92));
    if (!*(v14 + 16))
    {
      v61 = *(v13 + 92);
      v62 = v8;
      v16 = *(v0 + 408);
      v15 = *(v0 + 416);
      *(v0 + 240) = v1;
      sub_237EF8E80();
      result = __swift_getEnumTagSinglePayload(v15, 1, v16);
      if (result == 1)
      {
        goto LABEL_16;
      }

      v18 = *(v0 + 416);
      v59 = *(v0 + 408);
      v19 = *(v0 + 376);
      v20 = *(v0 + 384);
      v21 = *(v0 + 368);
      (*(v19 + 16))(v20, v18, v21);
      (*(*(v59 - 8) + 8))(v18);
      v22 = sub_237EF7E20();
      (*(v19 + 8))(v20, v21);

      *(v62 + v61) = v22;
      v14 = v22;
    }

    v23 = *(v0 + 280);
    memcpy(__dst, (v0 + 16), 0x48uLL);
    *(v0 + 216) = v1;
    sub_237D7C468(v0 + 216, v14, v23, v2, WitnessTable, v24, v25, v26, v54, v55, v57, v59, v61, v62, v64, v66, v68, v71, v74, __dst[0]);
    v27 = *(v0 + 392);
    v28 = *(v0 + 352);
    v29 = *(v0 + 360);
    v30 = *(v0 + 288);
    v58 = *(v0 + 296);
    v60 = *(v0 + 400);
    v31 = *(v0 + 280);
    v63 = *(v0 + 328);
    v56 = *(v0 + 248);

    v32 = swift_task_alloc();
    v32[2] = v28;
    v32[3] = v27;
    v32[4] = v30;
    v32[5] = v29;
    v32[6] = v67;
    v32[7] = *(v31 + 48);
    v32[8] = *(v31 + 56);
    v32[9] = v75;
    v32[10] = v72;
    v32[11] = v69;
    v32[12] = v60;
    v32[13] = v58;
    v32[14] = v0 + 16;
    v32[15] = v56;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB3030, &unk_237F063B0);
    v35 = sub_237C8FFEC(sub_237D907F4, v32, v30, v63, v33, v58, MEMORY[0x277D84950], v0 + 224);
    v36 = *(v0 + 344);
    v37 = *(v0 + 248);

    memcpy(__dst, (v0 + 16), 0x48uLL);
    *(v0 + 232) = v35;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2B8, &unk_237F1C880);
    v39 = sub_237C90604();
    sub_237D7DF10(v38, v39, v36);

    result = sub_237E2AF24(v36, v65);
    v40 = *(v65 + 96);
    v41 = *(v37 + v40);
    v42 = v41 + 1;
    if (!__OFADD__(v41, 1))
    {
      v43 = *(v0 + 264);
      *(v37 + v40) = v42;
      v45 = *(v0 + 336);
      v44 = *(v0 + 344);
      v46 = *(v0 + 320);
      v47 = *(v0 + 328);
      v48 = *(v0 + 312);
      if (v43)
      {
        v73 = *(v0 + 328);
        v50 = *(v0 + 264);
        v49 = *(v0 + 272);
        v70 = *(v0 + 304);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAE2C8, &qword_237F118D0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_237F03530;
        strcpy((inited + 32), "training_loss");
        *(inited + 46) = -4864;
        sub_237C70604(v50, v49);
        sub_237EF6A90();
        *(inited + 48) = *(v0 + 440);
        sub_237C758C4();
        v52 = sub_237EF8230();
        v53 = sub_237C908A4(v52);

        __dst[0] = 0xD000000000000029;
        __dst[1] = 0x8000000237EFF010;
        __dst[2] = v42;
        __dst[3] = v42;
        LOBYTE(__dst[4]) = 0;
        __dst[5] = v53;
        v50(__dst);
        sub_237C5EE40(v50, v49);

        (*(v48 + 8))(v46, v70);
        (*(v45 + 8))(v44, v73);
      }

      else
      {
        (*(v48 + 8))(*(v0 + 320), *(v0 + 304));
        (*(v45 + 8))(v44, v47);
      }

      OUTLINED_FUNCTION_0_53();

      v34 = *(v0 + 8);
      goto LABEL_7;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  sub_237C84150();
  swift_allocError();
  *v4 = 0xD000000000000031;
  *(v4 + 8) = 0x8000000237EFF040;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 32) = 2;
  swift_willThrow();
  OUTLINED_FUNCTION_0_53();

  v34 = *(v0 + 8);
LABEL_7:

  return v34();
}

uint64_t sub_237D905E8(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  memcpy(__dst, a2, sizeof(__dst));
  v23 = a4;
  v24 = a5;
  v25 = a7;
  v26 = a8;
  v27 = a11;
  v28 = a12;
  v29 = a13;
  v30 = a14;
  type metadata accessor for FullyConnectedNetworkMultiLabelClassifierModel(0, &v23);
  sub_237EF8260();
  sub_237EF8260();
  v23 = a4;
  v24 = a5;
  v25 = a7;
  v26 = a8;
  v27 = a9;
  v28 = a10;
  v29 = a11;
  v30 = a12;
  v31 = a13;
  v32 = a14;
  type metadata accessor for FullyConnectedNetworkMultiLabelClassifier(0, &v23);
  v20 = v34;
  sub_237D7D6CC();

  if (v20)
  {
    *a16 = v20;
  }

  return result;
}

uint64_t sub_237D90718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_237C5FFA4;

  return FullyConnectedNetworkMultiLabelClassifier.update<A>(_:with:eventHandler:)(a1, a2, a3, a4, a7, a5, a6);
}

uint64_t sub_237D90844(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_53()
{
}

uint64_t BaseLinearRegressorModel.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA60, &unk_237F07350);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v7);
  v9 = v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB29F8, &qword_237F12BD8);
  OUTLINED_FUNCTION_1();
  v21 = v11;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v12);
  v14 = v20 - v13;
  v15 = *v2;
  memcpy(__dst, v2 + 1, 0x49uLL);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237D90C3C();
  sub_237EFA1B0();
  __src[0] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD410, &unk_237F036F0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_237F03530;
  *(v16 + 32) = *(v15 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB02F8, &qword_237F0F350);
  sub_237C96710(&qword_280C8CCE0, &qword_27DEB02F8, &qword_237F0F350, MEMORY[0x277D84268]);
  sub_237EF7E40();
  LOBYTE(__src[0]) = 0;
  sub_237D0A15C(&qword_280C8CD70, MEMORY[0x277D83A08], MEMORY[0x277CBFD38]);
  v17 = v20[1];
  sub_237EF9A70();
  (*(v6 + 8))(v9, v4);
  if (v17)
  {
    return (*(v21 + 8))(v14, v10);
  }

  memcpy(__src, __dst, 0x49uLL);
  __dst[103] = 1;
  sub_237D914E8(__dst, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2A08, qword_237F15D10);
  sub_237D91558(&qword_27DEB2A10, MEMORY[0x277D83A08], &unk_237F1A778);
  sub_237EF9A00();
  v19 = (v21 + 8);
  memcpy(v22, __src, 0x49uLL);
  sub_237D09E34(v22);
  return (*v19)(v14, v10);
}

unint64_t sub_237D90C3C()
{
  result = qword_27DEB2A00;
  if (!qword_27DEB2A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2A00);
  }

  return result;
}

uint64_t BaseLinearRegressorModel.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v28 = a2;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAEA60, &unk_237F07350);
  OUTLINED_FUNCTION_1();
  v5 = v4;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v6);
  v31 = &v22 - v7;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2A18, &qword_237F12BE0);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237D90C3C();
  sub_237EFA190();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v36 = 0u;
    memset(v37, 0, 25);
    v34 = 0u;
    v35 = 0u;
    return sub_237D09E34(&v34);
  }

  else
  {
    LOBYTE(v34) = 0;
    sub_237D0A15C(&qword_280C8CD68, MEMORY[0x277D83A30], MEMORY[0x277CBFD48]);
    v9 = v29;
    sub_237EF9970();
    sub_237C96710(qword_280C8CD78, &qword_27DEAEA60, &unk_237F07350, MEMORY[0x277CBFD28]);
    v27 = sub_237EF7F50();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEB2A08, qword_237F15D10);
    v50 = 1;
    sub_237D91558(&qword_27DEB2A20, MEMORY[0x277D83A30], &unk_237F1A738);
    sub_237EF9900();
    (*(v5 + 8))(v31, v9);
    v10 = OUTLINED_FUNCTION_1_66();
    v11(v10);
    v13 = v39;
    v12 = v40;
    v30 = v39;
    v31 = v40;
    v14 = v41;
    v15 = v42;
    v29 = v41;
    v17 = v43;
    v16 = v44;
    v25 = v45;
    v26 = v42;
    v23 = v47;
    v24 = v46;
    v49 = v48;
    memset(v32, 0, 73);
    sub_237D09E34(v32);
    v33[0] = v27;
    v33[1] = v13;
    v33[2] = v12;
    v33[3] = v14;
    v33[4] = v15;
    v33[5] = v17;
    v19 = v24;
    v18 = v25;
    v33[6] = v16;
    v33[7] = v25;
    v20 = v23;
    v33[8] = v24;
    v33[9] = v23;
    LOBYTE(v15) = v49;
    LOBYTE(v33[10]) = v49;
    memcpy(v28, v33, 0x51uLL);
    sub_237D915CC(v33, &v34);
    __swift_destroy_boxed_opaque_existential_1(a1);
    *&v34 = v27;
    *(&v34 + 1) = v30;
    *&v35 = v31;
    *(&v35 + 1) = v29;
    *&v36 = v26;
    *(&v36 + 1) = v17;
    v37[0] = v16;
    v37[1] = v18;
    v37[2] = v19;
    v37[3] = v20;
    v38 = v15;
    return sub_237CC9A48(&v34);
  }
}

uint64_t sub_237D91084(uint64_t a1, uint64_t a2)
{
  v2 = sub_237EF9890();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_237D910D8(char a1)
{
  if (a1)
  {
    return 0x657A696D6974706FLL;
  }

  else
  {
    return 0x6963696666656F63;
  }
}

uint64_t sub_237D91148@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_237D91084(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_237D91178@<X0>(uint64_t *a1@<X8>)
{
  result = sub_237D910D8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_237D911AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237D91084(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237D911D4(uint64_t a1)
{
  v2 = sub_237D90C3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237D91210(uint64_t a1)
{
  v2 = sub_237D90C3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BaseLinearRegressorModel.export(to:)(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_3_60();
  OUTLINED_FUNCTION_3_60();

  __src[0] = 0;
  __src[1] = 0xE000000000000000;
  __src[2] = 0;
  __src[3] = 0xE000000000000000;
  __src[4] = 0;
  __src[5] = 0xE000000000000000;
  __src[6] = 0;
  __src[7] = 0xE000000000000000;
  __src[8] = v2;
  BaseLinearRegressorModel.export(to:metadata:)(a1, __src);
  memcpy(v4, __src, sizeof(v4));
  return sub_237D91628(v4);
}

uint64_t BaseLinearRegressorModel.export(to:metadata:)(uint64_t a1, uint64_t *a2)
{
  v16 = a1;
  v5 = type metadata accessor for CoreMLPackage(0);
  MEMORY[0x28223BE20](v5);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2[2];
  v14[1] = *a2;
  v14[2] = v8;
  v9 = a2[6];
  v14[3] = a2[4];
  v14[4] = v9;
  v10 = a2[8];
  memcpy(__dst, v2, 0x51uLL);
  result = sub_237D32F94(v7);
  if (!v3)
  {
    sub_237EF8260();
    sub_237EF8260();
    sub_237EF8260();
    sub_237EF8260();
    sub_237EF8260();
    sub_237EF7770();
    sub_237EF7800();
    sub_237EF77C0();
    sub_237EF77E0();
    v12 = sub_237EF7780();
    sub_237C9FB0C(v10, sub_237C9FE58, 0, v13);
    v12(__dst, 0);
    sub_237E33BC0(v16);
    return sub_237D0F8BC(v7);
  }

  return result;
}

uint64_t sub_237D914E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEB0300, &qword_237F0ADD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237D91558(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEB2A08, qword_237F15D10);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *_s10CodingKeysOwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_237D9175C()
{
  result = qword_27DEB2A28;
  if (!qword_27DEB2A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2A28);
  }

  return result;
}

unint64_t sub_237D917B4()
{
  result = qword_27DEB2A30;
  if (!qword_27DEB2A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2A30);
  }

  return result;
}

unint64_t sub_237D9180C()
{
  result = qword_27DEB2A38;
  if (!qword_27DEB2A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEB2A38);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_60()
{

  return sub_237EF8230();
}

unint64_t PipelineDataError.debugDescription.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  switch(*(v0 + 32))
  {
    case 1:
      OUTLINED_FUNCTION_9_22();
      sub_237EF9330();

      v5 = 0xD00000000000002DLL;
      goto LABEL_7;
    case 2:
      OUTLINED_FUNCTION_9_22();
      sub_237EF9330();

      OUTLINED_FUNCTION_1_67();
      v5 = v7 - 5;
      goto LABEL_7;
    case 3:
      OUTLINED_FUNCTION_9_22();
      sub_237EF9330();

      v14 = 0xD000000000000012;
      MEMORY[0x2383E0710](v3, v4);
      MEMORY[0x2383E0710](0xD000000000000011, 0x8000000237EFF110);
      goto LABEL_8;
    case 4:
      OUTLINED_FUNCTION_9_22();
      sub_237EF9330();

      OUTLINED_FUNCTION_1_67();
      goto LABEL_10;
    case 5:
      OUTLINED_FUNCTION_9_22();
      sub_237EF9330();

      OUTLINED_FUNCTION_1_67();
      v6 = v10 - 13;
LABEL_10:
      v14 = v6;
      MEMORY[0x2383E0710](v2, v1);
      MEMORY[0x2383E0710](8250, 0xE200000000000000);
      v8 = v3;
      v9 = v4;
      break;
    case 6:
      OUTLINED_FUNCTION_9_22();
      sub_237EF9330();

      OUTLINED_FUNCTION_1_67();
      v14 = v11 - 16;
      v12 = MEMORY[0x2383E0A10](v2, MEMORY[0x277D83B88]);
      MEMORY[0x2383E0710](v12);

      MEMORY[0x2383E0710](8250, 0xE200000000000000);
      v8 = v1;
      v9 = v3;
      break;
    default:
      OUTLINED_FUNCTION_9_22();
      sub_237EF9330();

      OUTLINED_FUNCTION_1_67();
LABEL_7:
      v14 = v5;
LABEL_8:
      v8 = v2;
      v9 = v1;
      break;
  }

  MEMORY[0x2383E0710](v8, v9);
  MEMORY[0x2383E0710](46, 0xE100000000000000);
  return v14;
}

uint64_t static PipelineDataError.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  v14 = *a2;
  v13 = *(a2 + 8);
  v16 = *(a2 + 16);
  v15 = *(a2 + 24);
  v17 = *(a2 + 32);
  v53[0] = *a1;
  v53[1] = v9;
  v53[2] = v10;
  v53[3] = v11;
  v54 = v12;
  v55 = v14;
  v56 = v13;
  v57 = v16;
  v58 = v15;
  v59 = v17;
  switch(v12)
  {
    case 1:
      if (v17 != 1)
      {
        goto LABEL_61;
      }

      if (v8 != v14 || v9 != v13)
      {
        v19 = OUTLINED_FUNCTION_3_61();
        LOBYTE(v12) = 1;
        v26 = OUTLINED_FUNCTION_0_54();
        v30 = 1;
        goto LABEL_60;
      }

      LOBYTE(v12) = 1;
      OUTLINED_FUNCTION_4_56();
      v47 = 1;
      goto LABEL_74;
    case 2:
      if (v17 != 2)
      {
        goto LABEL_61;
      }

      if (v8 != v14 || v9 != v13)
      {
        v19 = OUTLINED_FUNCTION_3_61();
        LOBYTE(v12) = 2;
        v26 = OUTLINED_FUNCTION_0_54();
        v30 = 2;
        goto LABEL_60;
      }

      LOBYTE(v12) = 2;
      OUTLINED_FUNCTION_4_56();
      v47 = 2;
      goto LABEL_74;
    case 3:
      if (v17 != 3)
      {
        goto LABEL_61;
      }

      v32 = v8 == v14 && v9 == v13;
      if (!v32 && (OUTLINED_FUNCTION_3_61() & 1) == 0)
      {
        LOBYTE(v12) = 3;
        v38 = OUTLINED_FUNCTION_0_54();
        v42 = 3;
        goto LABEL_62;
      }

      if (v10 != v16 || v11 != v15)
      {
        OUTLINED_FUNCTION_4_56();
        v19 = sub_237EF9D40();
        LOBYTE(v12) = 3;
        v26 = OUTLINED_FUNCTION_0_54();
        v30 = 3;
        goto LABEL_60;
      }

      LOBYTE(v12) = 3;
      v43 = OUTLINED_FUNCTION_5_52();
      v47 = 3;
      goto LABEL_74;
    case 4:
      if (v17 != 4)
      {
        goto LABEL_61;
      }

      v24 = v8 == v14 && v9 == v13;
      if (!v24 && (OUTLINED_FUNCTION_3_61() & 1) == 0)
      {
        LOBYTE(v12) = 4;
        v38 = OUTLINED_FUNCTION_0_54();
        v42 = 4;
        goto LABEL_62;
      }

      if (v10 != v16 || v11 != v15)
      {
        OUTLINED_FUNCTION_4_56();
        v19 = sub_237EF9D40();
        LOBYTE(v12) = 4;
        v26 = OUTLINED_FUNCTION_0_54();
        v30 = 4;
        goto LABEL_60;
      }

      LOBYTE(v12) = 4;
      v43 = OUTLINED_FUNCTION_5_52();
      v47 = 4;
      goto LABEL_74;
    case 5:
      if (v17 != 5)
      {
        goto LABEL_61;
      }

      v35 = v8 == v14 && v9 == v13;
      if (!v35 && (OUTLINED_FUNCTION_3_61() & 1) == 0)
      {
        LOBYTE(v12) = 5;
        v38 = OUTLINED_FUNCTION_0_54();
        v42 = 5;
        goto LABEL_62;
      }

      if (v10 != v16 || v11 != v15)
      {
        OUTLINED_FUNCTION_4_56();
        v19 = sub_237EF9D40();
        LOBYTE(v12) = 5;
        v26 = OUTLINED_FUNCTION_0_54();
        v30 = 5;
        goto LABEL_60;
      }

      LOBYTE(v12) = 5;
      v43 = OUTLINED_FUNCTION_5_52();
      v47 = 5;
      goto LABEL_74;
    case 6:
      if (v17 != 6)
      {
        goto LABEL_61;
      }

      if ((sub_237C60C7C(v8, v14) & 1) == 0)
      {
        LOBYTE(v12) = 6;
        v38 = OUTLINED_FUNCTION_0_54();
        v42 = 6;
        goto LABEL_62;
      }

      if (v9 != v13 || v10 != v16)
      {
        v19 = sub_237EF9D40();
        LOBYTE(v12) = 6;
        v26 = OUTLINED_FUNCTION_0_54();
        v30 = 6;
LABEL_60:
        sub_237D91E9C(v26, v27, v28, v29, v30);
        goto LABEL_76;
      }

      LOBYTE(v12) = 6;
      v43 = v14;
      v44 = v9;
      v45 = v10;
      v46 = v15;
      v47 = 6;
LABEL_74:
      sub_237D91E9C(v43, v44, v45, v46, v47);
      goto LABEL_75;
    default:
      if (v17)
      {
LABEL_61:
        v38 = OUTLINED_FUNCTION_0_54();
LABEL_62:
        sub_237D91E9C(v38, v39, v40, v41, v42);
        v19 = 0;
      }

      else if (v8 == v14 && v9 == v13)
      {
        OUTLINED_FUNCTION_4_56();
        sub_237D91E9C(v48, v49, v50, v51, 0);
        LOBYTE(v12) = 0;
LABEL_75:
        v19 = 1;
      }

      else
      {
        v19 = sub_237EF9D40();
        v20 = OUTLINED_FUNCTION_0_54();
        sub_237D91E9C(v20, v21, v22, v23, 0);
        LOBYTE(v12) = 0;
      }

LABEL_76:
      sub_237D91E9C(v8, v9, v10, v11, v12);
      sub_237D91F0C(v53);
      return v19 & 1;
  }
}

uint64_t sub_237D91E9C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 >= 3u)
  {
    if (a5 - 3 >= 3 && a5 != 6)
    {
      return v5;
    }

    sub_237EF8260();
  }

  return sub_237EF8260();
}

uint64_t sub_237D91F0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DEB2A40, &qword_237F12D90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_237D91FA4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFA && *(a1 + 33))
    {
      v2 = *a1 + 249;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 6)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_237D91FE4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_61()
{

  return sub_237EF9D40();
}

uint64_t sub_237D920B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_19_0();
  v12 = v11;
  (*(*(v13 - 8) + 32))(v11, v14);
  v17 = v8;
  v18 = v7;
  v19 = v6;
  v20 = a6;
  v15 = type metadata accessor for ComposedTemporalEstimator(0, &v17);
  return (*(*(v7 - 8) + 32))(v12 + *(v15 + 52), v9, v7);
}

void sub_237D9216C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_37_0();
  a19 = v24;
  a20 = v25;
  OUTLINED_FUNCTION_19_0();
  v27 = v26;
  v30 = type metadata accessor for TemporalTransformerToEstimatorAdaptor(0, v28, v29, v28);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v31);
  v33 = &a9 - v32;
  TemporalTransformerToEstimatorAdaptor.init(_:)(v23, v21, &a9 - v32);
  OUTLINED_FUNCTION_5_37();
  WitnessTable = swift_getWitnessTable();
  sub_237D920B0(v27, v33, v22, v30, v20, WitnessTable);
  OUTLINED_FUNCTION_38_0();
}

void sub_237D92234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[11] = a8;
  v9[12] = v8;
  v9[9] = a6;
  v9[10] = a7;
  v9[7] = a4;
  v9[8] = a5;
  v9[5] = a2;
  v9[6] = a3;
  v9[4] = a1;
  v9[13] = a5[5];
  v9[14] = a5[3];
  v9[15] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_15_0();
  v9[16] = v10;
  v9[17] = swift_task_alloc();
  v9[18] = swift_task_alloc();
  swift_getAssociatedTypeWitness();
  v9[19] = swift_getAssociatedConformanceWitness();
  v9[20] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_15_0();
  v9[21] = v11;
  v9[22] = swift_task_alloc();
  v12 = swift_task_alloc();
  v9[23] = v12;
  v9[24] = OUTLINED_FUNCTION_56_4(v12, v13, v14, v15, MEMORY[0x277D83390]);
  OUTLINED_FUNCTION_1_1();
  v9[25] = v16;
  v9[26] = OUTLINED_FUNCTION_27_0();
  sub_237EF90F0();
  v9[27] = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_1_1();
  v9[28] = v17;
  v18 = OUTLINED_FUNCTION_27_0();
  v9[29] = v18;
  v9[30] = OUTLINED_FUNCTION_56_4(v18, v19, v20, v21, MEMORY[0x277D833C8]);
  OUTLINED_FUNCTION_15_0();
  v9[31] = v22;
  v9[32] = OUTLINED_FUNCTION_27_0();
  v9[33] = swift_checkMetadataState();
  OUTLINED_FUNCTION_15_0();
  v9[34] = v23;
  v9[35] = swift_task_alloc();
  v9[36] = swift_task_alloc();
  OUTLINED_FUNCTION_15_0();
  v26 = v24 + *v24;
  v25 = swift_task_alloc();
  v9[37] = v25;
  *v25 = v9;
  v25[1] = sub_237D92684;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_237D92684()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v2 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  *(v4 + 304) = v0;

  if (v0)
  {
    v5 = sub_237C68B58;
  }

  else
  {
    v5 = sub_237D92788;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void sub_237D92788(uint64_t a1)
{
  v2 = v1[38];
  sub_237EF8B90();
  if (v2)
  {
    (*(v1[34] + 8))(v1[36], v1[33]);
    OUTLINED_FUNCTION_22_0();

    OUTLINED_FUNCTION_3_0();
    OUTLINED_FUNCTION_26_0();

    __asm { BRAA            X1, X16 }
  }

  v6 = v1[28];
  v5 = v1[29];
  v7 = v1[9];
  v8 = v1[5];
  v1[2] = sub_237EF8110();
  (*(v6 + 16))(v5, v8, v7);
  sub_237EF86F0();
  v9 = v1[27];
  v10 = v1[24];
  swift_getAssociatedConformanceWitness();
  sub_237EF91A0();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    (*(v1[31] + 8))(v1[32], v1[30]);
    sub_237EF8B90();
    OUTLINED_FUNCTION_8_49();
    v16 = swift_task_alloc();
    OUTLINED_FUNCTION_52(v16);
    OUTLINED_FUNCTION_9_36();
    swift_getAssociatedConformanceWitness();
    MEMORY[0] = v1;
    OUTLINED_FUNCTION_5_53();

    __asm { BRAA            X8, X16 }
  }

  v11 = OUTLINED_FUNCTION_32_0();
  v12(v11);
  OUTLINED_FUNCTION_15_0();
  v13 = swift_task_alloc();
  v1[39] = v13;
  *v13 = v1;
  OUTLINED_FUNCTION_6_42(v13);
  OUTLINED_FUNCTION_26_0();

  __asm { BRAA            X8, X16 }
}

uint64_t sub_237D92B04()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v3 + 320) = v0;

  if (v0)
  {

    v6 = sub_237C68C08;
  }

  else
  {
    v6 = sub_237D92C10;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

void sub_237D92C10()
{
  v2 = v0[25];
  v1 = v0[26];
  v4 = v0[23];
  v3 = v0[24];
  v5 = v0[21];
  v6 = v0[20];
  (*(v5 + 16))(v0[22], v4, v6);
  sub_237EF8A60();
  sub_237EF8A20();
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v7 = v0[40];
  v8 = v0[27];
  v9 = v0[24];
  swift_getAssociatedConformanceWitness();
  sub_237EF91A0();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    (*(v0[31] + 8))(v0[32], v0[30]);
    sub_237EF8B90();
    if (v7)
    {

      v10 = OUTLINED_FUNCTION_31_0();
      v11(v10);
      OUTLINED_FUNCTION_22_0();

      OUTLINED_FUNCTION_3_0();
      OUTLINED_FUNCTION_26_0();

      __asm { BRAA            X1, X16 }
    }

    OUTLINED_FUNCTION_8_49();
    v19 = swift_task_alloc();
    OUTLINED_FUNCTION_52(v19);
    OUTLINED_FUNCTION_9_36();
    swift_getAssociatedConformanceWitness();
    MEMORY[0] = v0;
    OUTLINED_FUNCTION_5_53();

    __asm { BRAA            X8, X16 }
  }

  v14 = OUTLINED_FUNCTION_32_0();
  v15(v14);
  OUTLINED_FUNCTION_15_0();
  v16 = swift_task_alloc();
  v0[39] = v16;
  *v16 = v0;
  OUTLINED_FUNCTION_6_42(v16);
  OUTLINED_FUNCTION_26_0();

  __asm { BRAA            X8, X16 }
}

uint64_t sub_237D92F94()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v5 = v4;
  *(v3 + 344) = v0;

  if (v0)
  {
    v6 = sub_237C68D0C;
  }

  else
  {
    v6 = sub_237D930A8;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_237D930A8()
{
  v1 = v0[35];
  v2 = v0[33];
  v3 = v0[17];
  v4 = v0[15];
  v10 = v0[4];
  v11 = v0[19];
  (*(v0[34] + 32))(v1, v0[36], v2);
  v5 = OUTLINED_FUNCTION_31_0();
  v6(v5);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  ComposedTemporalTransformer.init(_:_:)(v1, v3, v2, v4, v11, AssociatedConformanceWitness, v10);

  OUTLINED_FUNCTION_3_0();

  return v8();
}

uint64_t sub_237D9321C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(*(a3 + 32) + 32))(a1, a2, *(a3 + 16), *(a3 + 32));
  if (!v3)
  {
    v12[5] = *(a3 + 52);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v9 = *(a3 + 40);
    v11 = *(a3 + 24);
    v12[0] = AssociatedTypeWitness;
    v12[1] = swift_getAssociatedTypeWitness();
    v12[2] = swift_getAssociatedConformanceWitness();
    v12[3] = swift_getAssociatedConformanceWitness();
    v10 = type metadata accessor for ComposedTemporalTransformer(0, v12);
    return (*(v9 + 32))(a1 + *(v10 + 52), a2, v11, v9);
  }

  return result;
}

uint64_t sub_237D93384@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a3;
  v5 = a2[3];
  v38 = a2[5];
  v40 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v33 = v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v39 = &v31 - v11;
  v12 = a2[4];
  v13 = a2[2];
  v14 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1_1();
  v36 = v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v31 - v21;
  v23 = *(v12 + 40);
  v37 = a1;
  v24 = v41;
  result = v23(a1, v13, v12, v20);
  if (!v24)
  {
    v31 = v13;
    v32 = v18;
    v41 = v14;
    v26 = AssociatedTypeWitness;
    (*(v38 + 40))(v37, v40, v38);
    v27 = v32;
    v28 = v41;
    (*(v36 + 32))(v32, v22, v41);
    (*(v33 + 32))(v9, v39, v26);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v30 = swift_getAssociatedConformanceWitness();
    return ComposedTemporalTransformer.init(_:_:)(v27, v9, v28, v26, AssociatedConformanceWitness, v30, v34);
  }

  return result;
}

void sub_237D93684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_237C6A904;

  sub_237D92234(a1, a2, a3, a4, a8, a5, a6, a7);
}

void Estimator.appending<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_237D937D8();
}

{
  sub_237D937D8();
}

void sub_237D937D8()
{
  OUTLINED_FUNCTION_37_0();
  v31 = v1;
  v32 = v2;
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v30[0] = v8;
  v30[1] = v9;
  OUTLINED_FUNCTION_1_1();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  OUTLINED_FUNCTION_1_1();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_5();
  v21 = v20 - v19;
  v24 = type metadata accessor for EstimatorToTemporalAdaptor(0, v22, v23, v23);
  OUTLINED_FUNCTION_4();
  v26 = MEMORY[0x28223BE20](v25);
  v28 = v30 - v27;
  (*(v17 + 16))(v21, v3, v7, v26);
  EstimatorToTemporalAdaptor.init(_:)(v21, v7, v28);
  (*(v11 + 16))(v15, v30[0], v5);
  OUTLINED_FUNCTION_30_16();
  WitnessTable = swift_getWitnessTable();
  v32(v28, v15, v24, v5, WitnessTable, v31);
  OUTLINED_FUNCTION_38_0();
}

void sub_237D93A7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(uint64_t, char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_37_0();
  v58 = v23;
  v59 = v22;
  v56 = v24;
  v57 = v25;
  v26 = v21;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  OUTLINED_FUNCTION_1_1();
  v36 = v35;
  v55 = a21;
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_5();
  v40 = v39 - v38;
  v44 = v43(0, v41, v42);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v45);
  v47 = &v54 - v46;
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_5();
  v51 = v50 - v49;
  (*(v52 + 16))(v50 - v49, v26, v32);
  (*(v36 + 16))(v40, v34, v30);
  v56(v40, v30, v28);
  WitnessTable = swift_getWitnessTable();
  v55(v51, v47, v32, v44, v59, WitnessTable);
  OUTLINED_FUNCTION_38_0();
}

void TemporalEstimator.appending<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_237D93C90();
}

{
  sub_237D93C90();
}

void sub_237D93C90()
{
  OUTLINED_FUNCTION_37_0();
  v5 = v4;
  OUTLINED_FUNCTION_19_0();
  v7 = v6;
  OUTLINED_FUNCTION_1_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  OUTLINED_FUNCTION_1_1();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  (*(v18 + 16))(v16 - v15, v19, v3);
  (*(v9 + 16))(v13, v7, v2);
  v5(v17, v13, v3, v2, v1, v0);
  OUTLINED_FUNCTION_38_0();
}

uint64_t get_witness_table_18CreateMLComponents17TemporalEstimatorRzAA0D0Rd__11Transformer_5InputQYd__AD_6OutputRTzr__lAA08ComposedcD0VyxAA0d2ToC7AdaptorVyqd__GGAaBHPyHCTm(uint64_t *a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3)
{
  v3 = *a1;
  v4 = a1[2];
  v5 = a2(255, a1[1], a1[3]);
  v7[0] = v3;
  v7[1] = v5;
  v7[2] = v4;
  v7[3] = swift_getWitnessTable();
  type metadata accessor for ComposedTemporalEstimator(255, v7);
  return OUTLINED_FUNCTION_0_55();
}

uint64_t sub_237D93E70(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  if (v9 <= v6)
  {
    v11 = *(*(v5 - 8) + 84);
  }

  else
  {
    v11 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(v5 - 8) + 64) + v10;
  v13 = a2 - v11;
  if (a2 <= v11)
  {
LABEL_25:
    if (v6 < v9)
    {
      a1 = ((a1 + v12) & ~v10);
      v6 = *(v8 + 84);
      v5 = v7;
    }

    return __swift_getEnumTagSinglePayload(a1, v6, v5);
  }

  v14 = (v12 & ~v10) + *(*(v7 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_24;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    switch(v19)
    {
      case 2:
        v20 = *a1;
        break;
      case 3:
        v20 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v20 = *a1;
        break;
      default:
        v20 = *a1;
        break;
    }
  }

  else
  {
    v20 = 0;
  }

  return v11 + (v20 | v18) + 1;
}

void sub_237D94038(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  v9 = *(*(v7 - 8) + 84);
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = *(*(v7 - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(*(v7 - 8) + 64) + v13;
  v15 = (v14 & ~v13) + *(*(v8 - 8) + 64);
  v16 = 8 * v15;
  v17 = a3 >= v12;
  v18 = a3 - v12;
  if (v18 != 0 && v17)
  {
    if (v15 <= 3)
    {
      v22 = ((v18 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v22))
      {
        v19 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v19 = v23;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v12 >= a2)
  {
    switch(v19)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v9 < v11)
          {
            a1 = (&a1[v14] & ~v13);
            v9 = v11;
            v7 = v8;
          }

          __swift_storeEnumTagSinglePayload(a1, a2, v9, v7);
        }

        break;
    }
  }

  else
  {
    v20 = ~v12 + a2;
    if (v15 < 4)
    {
      v21 = (v20 >> v16) + 1;
      if (v15)
      {
        v24 = v20 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *v6 = v24;
          v6[2] = BYTE2(v24);
        }

        else if (v15 == 2)
        {
          *v6 = v24;
        }

        else
        {
          *v6 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *v6 = v20;
      v21 = 1;
    }

    switch(v19)
    {
      case 1:
        v6[v15] = v21;
        break;
      case 2:
        *&v6[v15] = v21;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&v6[v15] = v21;
        break;
      default:
        return;
    }
  }
}

uint64_t OUTLINED_FUNCTION_0_55()
{

  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_5_53()
{
  *(v0 + 8) = sub_237D92F94;
  result = *(v1 + 144);
  *(v2 + 16) = *(v1 + 104);
  return result;
}

uint64_t OUTLINED_FUNCTION_8_49()
{
  v1 = v0[13];
  v2 = v0[2];
  v0[3] = v2;
  v0[41] = v2;
  return v1 + 24;
}

uint64_t OUTLINED_FUNCTION_9_36()
{

  return swift_getWitnessTable();
}

uint64_t static AugmentationBuilder.buildPartialBlock<A>(first:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_1_1();
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, v5);
  return _s18CreateMLComponents28EstimatorToSupervisedAdaptorVyACyxq_GxcfC_0(v7, a1, a2);
}

uint64_t static AugmentationBuilder.buildPartialBlock<A, B>(accumulated:next:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t x8_0@<X8>)
{
  v28 = a1;
  v29 = a6;
  OUTLINED_FUNCTION_1_1();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for RandomTransformerAdaptor(0, v17, v18, v16);
  OUTLINED_FUNCTION_1_1();
  v21 = v20;
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v28 - v24;
  (*(v12 + 16))(v15, a2, a5, v23);
  _s18CreateMLComponents28EstimatorToSupervisedAdaptorVyACyxq_GxcfC_0(v15, a5, v25);
  OUTLINED_FUNCTION_0_56();
  WitnessTable = swift_getWitnessTable();
  sub_237DBFF44(v25, a4, v19, v29, WitnessTable, x8_0);
  return (*(v21 + 8))(v25, v19);
}

_BYTE *sub_237D946AC(_BYTE *result, int a2, int a3)
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

uint64_t OUTLINED_FUNCTION_1_68()
{

  return swift_getWitnessTable();
}

void sub_237D947A0(int a1@<W0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 4) = a2;
  *(a3 + 8) = 0u;
  OUTLINED_FUNCTION_0_57(a3, 0);
}

void sub_237D947B0(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    *a4 = -559038737;
    *(a4 + 4) = result + 1;
    *(a4 + 8) = a3;
    *(a4 + 16) = a2;
    OUTLINED_FUNCTION_0_57(a4, 0);
  }
}

void OUTLINED_FUNCTION_0_57(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  *(a1 + 24) = a2;
  *(a1 + 40) = a2;
  *(a1 + 56) = 0;
}

uint64_t Downsampler.init(factor:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  if (result < 1)
  {
    result = sub_237EF9740("Fatal error", 11, 2, 0xD000000000000035, 0x8000000237EFF1F0, "CreateMLComponents/Downsampler.swift", 36, 2, 20);
    __break(1u);
  }

  else
  {
    *a2 = result;
  }

  return result;
}

double Downsampler.applied<A>(to:eventHandler:)@<D0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  OUTLINED_FUNCTION_1_1();
  v10 = MEMORY[0x28223BE20](v9);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  (*(v14 + 16))(v12, v10);
  AnyTemporalSequence.init<A>(_:)(v12, *(a1 + 16), a2, a3, v18);
  *a4 = v13;
  v15 = v18[1];
  *(a4 + 8) = v18[0];
  *(a4 + 24) = v15;
  result = *&v19;
  v17 = v20;
  *(a4 + 40) = v19;
  *(a4 + 56) = v17;
  return result;
}

uint64_t sub_237D94990(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x726F74636166 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_237EF9D40();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_237D94A30(uint64_t a1)
{
  sub_237EFA120();
  sub_237C55258();
  return sub_237EFA170();
}

uint64_t sub_237D94A7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237D94990(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_237D94ACC@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_31();
  *a1 = result & 1;
  return result;
}

uint64_t sub_237D94AFC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_237D94B50(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t Downsampler.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Downsampler.CodingKeys(255, *(a2 + 16), a3, a4);
  OUTLINED_FUNCTION_1_69();
  v12[1] = swift_getWitnessTable();
  v5 = sub_237EF9A80();
  OUTLINED_FUNCTION_1_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237EFA1B0();
  sub_237EF9A50();
  return (*(v7 + 8))(v10, v5);
}

uint64_t Downsampler.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v17 = a5;
  type metadata accessor for Downsampler.CodingKeys(255, a2, a3, a4);
  OUTLINED_FUNCTION_1_69();
  swift_getWitnessTable();
  v7 = sub_237EF99A0();
  OUTLINED_FUNCTION_1_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v16 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237EFA190();
  if (!v5)
  {
    v13 = v17;
    v14 = sub_237EF9950();
    (*(v9 + 8))(v12, v7);
    *v13 = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_237D94E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8.n128_f64[0] = Downsampler.applied<A>(to:eventHandler:)(a7, a5, a6, a1);
  v9 = *(v7 + 8);

  return v9(v8);
}

uint64_t Downsampler.DownStreamSequence.count.getter()
{
  result = *(v0 + 40);
  if ((*(v0 + 48) & 1) == 0)
  {
    v2 = *v0;
    if (*v0)
    {
      if (result != 0x8000000000000000 || v2 != -1)
      {
        result /= v2;
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

double Downsampler.DownStreamSequence.makeAsyncIterator()@<D0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t x8_0@<X8>)
{
  v7 = *v5;
  v8 = *(a1 + 16);
  v9 = type metadata accessor for AnyTemporalSequence(0, v8, a3, a4);
  (*(*(v9 - 8) + 16))(v12, v5 + 1, v9);
  return sub_237D94FEC(v7, v12, v8, v10, x8_0);
}

double sub_237D94FEC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 120) = 0u;
  *(a5 + 104) = 0u;
  *(a5 + 88) = 0u;
  *a5 = a1;
  v7 = type metadata accessor for AnyTemporalSequence(0, a3, a3, a4);
  v8 = *(v7 - 8);
  (*(v8 + 16))(a5 + 8, a2, v7);
  AnyTemporalSequence.makeAsyncIterator()();
  (*(v8 + 8))(a2, v7);
  result = *&v10;
  *(a5 + 72) = v10;
  return result;
}

uint64_t sub_237D950D4@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t x8_0@<X8>)
{
  v7.n128_f64[0] = Downsampler.DownStreamSequence.makeAsyncIterator()(a1, a3, a4, x8_0);
  v8 = *(*(a1 - 8) + 8);

  return v8(v5, a1, v7);
}

double sub_237D95134()
{
  *(v0 + 88) = 0;

  *(v0 + 128) = 0;
  result = 0.0;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  return result;
}

uint64_t *sub_237D95160(uint64_t *result)
{
  v2 = v1[11];
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = *v1;
  if (!*v1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v4 != 0x8000000000000000 || v5 != -1)
  {
    v1[11] = v4 % v5;
    v8 = *result;
    v7 = result[1];
    v10 = *(result + 1);
    v9 = result[4];
    sub_237EF8260();

    v1[12] = v8;
    v1[13] = v7;
    *(v1 + 7) = v10;
    v1[16] = v9;
    return result;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t Downsampler.DownStreamSequence.Iterator.next()()
{
  OUTLINED_FUNCTION_2_0();
  v1[5] = v2;
  v1[6] = v0;
  v1[4] = v3;
  v6 = type metadata accessor for TemporalFeature(255, *(v2 + 16), v4, v5);
  v1[7] = v6;
  v7 = sub_237EF90F0();
  v1[8] = v7;
  v1[9] = *(v7 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = *(v6 - 8);
  v1[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237D9532C, 0, 0);
}

uint64_t sub_237D9532C()
{
  OUTLINED_FUNCTION_5_54();

  v1 = swift_task_alloc();
  OUTLINED_FUNCTION_7_43(v1, v2, v3, v4);
  MEMORY[0x20] = v0;
  v5 = OUTLINED_FUNCTION_0_58();

  return AnyTemporalIterator.next()(v5);
}

uint64_t sub_237D953B8()
{
  OUTLINED_FUNCTION_2_0();
  v5 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v2 = v5;
  *(v5 + 112) = v0;

  if (v0)
  {
    v3 = sub_237D956DC;
  }

  else
  {
    v3 = sub_237D954D0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_237D954D0()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    (*(*(v0 + 72) + 8))(v1, *(v0 + 64));
    v3 = 1;
LABEL_19:
    __swift_storeEnumTagSinglePayload(*(v0 + 32), v3, 1, *(v0 + 56));

    OUTLINED_FUNCTION_3_0();

    return v23();
  }

  v4 = *(v0 + 48);
  v5 = *(*(v0 + 88) + 32);
  v5(*(v0 + 96), v1, v2);
  v6 = *(v4 + 104);
  if (v6)
  {
    v7 = *(v0 + 96);
    v8 = *v7 == *(v4 + 96) && v6 == v7[1];
    if (!v8 && (sub_237EF9D40() & 1) == 0)
    {
      sub_237D95134();
    }
  }

  v9 = *(v0 + 48);
  v10 = v9[11];
  v11 = *v9;
  if (*v9)
  {
    if (v11 == -1)
    {
      v12 = *(v0 + 96);
LABEL_18:
      v21 = *(v0 + 56);
      v22 = *(v0 + 32);
      sub_237D95160(v12);
      v5(v22, v12, v21);
      v3 = 0;
      goto LABEL_19;
    }

    v10 %= v11;
  }

  v12 = *(v0 + 96);
  if (!v10)
  {
    goto LABEL_18;
  }

  v13 = *(v0 + 88);
  v14 = *(v0 + 56);
  sub_237D95160(*(v0 + 96));
  (*(v13 + 8))(v12, v14);
  OUTLINED_FUNCTION_5_54();

  v15 = swift_task_alloc();
  OUTLINED_FUNCTION_7_43(v15, v16, v17, v18);
  MEMORY[0x20] = v0;
  v19 = OUTLINED_FUNCTION_0_58();

  return AnyTemporalIterator.next()(v19);
}

uint64_t sub_237D956DC()
{
  OUTLINED_FUNCTION_2_0();

  OUTLINED_FUNCTION_3_0();

  return v0();
}

uint64_t sub_237D95760(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_237D957B8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237CEF6D4;

  return Downsampler.DownStreamSequence.Iterator.next()();
}

uint64_t sub_237D95860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = swift_task_alloc();
  *(v6 + 32) = v12;
  *v12 = v6;
  v12[1] = sub_237D95934;

  return MEMORY[0x282200320](a1, a2, a3, a5, a6);
}

uint64_t sub_237D95934()
{
  OUTLINED_FUNCTION_2_0();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_5_1();
  *v4 = v3;

  if (v0)
  {
    **(v2 + 24) = *(v2 + 16);
  }

  OUTLINED_FUNCTION_3_0();

  return v5();
}

uint64_t sub_237D95A30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237D95A84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237D95AC0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_237D95B00(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_237D95B68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_237D95BAC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_237D95BEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_237D95C64(_BYTE *result, int a2, int a3)
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

uint64_t OUTLINED_FUNCTION_5_54()
{
  v1 = v0[6];
  result = *(v1 + 80);
  v0[2] = *(v1 + 72);
  v0[3] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_7_43(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 104) = a1;

  return type metadata accessor for AnyTemporalIterator(0, v4, a3, a4);
}

uint64_t rootMeanSquaredError<A, B, C>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_4_57();
  meanSquaredError<A, B, C>(_:_:)();
  OUTLINED_FUNCTION_23_27();
  return (*(v6 + 8))(v3, a3);
}

void maximumAbsoluteError<A, B, C>(_:_:)()
{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_5_55(v2, v3, v4, v5, v6, v7, v8, v9);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_43_0();
  sub_237EF90F0();
  OUTLINED_FUNCTION_1();
  v30 = v12;
  v31 = v11;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v13);
  if (OUTLINED_FUNCTION_12_34(v14, v28))
  {
    OUTLINED_FUNCTION_14_36();
    sub_237EF8350();
  }

  else
  {
    v15 = OUTLINED_FUNCTION_8_50();
    MEMORY[0x28223BE20](v15);
    OUTLINED_FUNCTION_7_44();
    MEMORY[0x28223BE20](v16);
    OUTLINED_FUNCTION_10_38();
    *(v17 - 16) = sub_237D973B0;
    *(v17 - 8) = v18;
    WitnessTable = swift_getWitnessTable();
    OUTLINED_FUNCTION_13_27(WitnessTable, v20, v21, v22, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v23);
    v24 = OUTLINED_FUNCTION_17_32();
    v25(v24);
    OUTLINED_FUNCTION_43_0();
    sub_237EF8A60();
    OUTLINED_FUNCTION_1_2();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_19_31();
    sub_237EF8830();

    OUTLINED_FUNCTION_6_43();
    if (v26)
    {
      OUTLINED_FUNCTION_14_36();
      sub_237EF8350();
      OUTLINED_FUNCTION_6_43();
      if (!v26)
      {
        (*(v30 + 8))(v1, v31);
      }
    }

    else
    {
      OUTLINED_FUNCTION_11_37();
      (*(v27 + 32))(v29, v1, v0);
    }
  }

  OUTLINED_FUNCTION_38_0();
}

void absoluteError<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_37_0();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  OUTLINED_FUNCTION_1_1();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  v28 = &a9 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &a9 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &a9 - v33;
  v37 = type metadata accessor for AnnotatedPrediction(0, v35, v35, v36);
  AnnotatedPrediction.prediction.getter(v37, v31);
  AnnotatedPrediction.annotation.getter(v37, v28);
  sub_237EF9760();
  v38 = *(v25 + 8);
  v38(v28, v23);
  v38(v31, v23);
  sub_237EF9FD0();
  v38(v34, v23);
  OUTLINED_FUNCTION_38_0();
}

void maximumAbsoluteError<A>(_:)()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_237EF90F0();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v11);
  v13 = v19 - v12;
  v20 = v5;
  v19[2] = v3;
  v19[3] = v1;
  type metadata accessor for AnnotatedPrediction(255, v3, v3, v14);
  v15 = sub_237EF8A60();
  OUTLINED_FUNCTION_1_24();
  WitnessTable = swift_getWitnessTable();
  sub_237C9339C(sub_237D97398, v19, v15, v3, MEMORY[0x277D84A98], WitnessTable);
  v20 = v17;
  OUTLINED_FUNCTION_43_0();
  sub_237EF8A60();
  OUTLINED_FUNCTION_1_2();
  swift_getWitnessTable();
  sub_237EF8830();

  if (__swift_getEnumTagSinglePayload(v13, 1, v3) == 1)
  {
    (*(v10 + 8))(v13, v8);
    OUTLINED_FUNCTION_14_36();
    sub_237EF8350();
  }

  else
  {
    OUTLINED_FUNCTION_11_37();
    (*(v18 + 32))(v7, v13, v3);
  }

  OUTLINED_FUNCTION_38_0();
}

uint64_t sub_237D96418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_1_1();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4_57();
  sub_237EF9760();
  sub_237EF9FD0();
  return (*(v9 + 8))(v6, a3);
}

void meanAbsoluteError<A, B, C>(_:_:)()
{
  OUTLINED_FUNCTION_37_0();
  OUTLINED_FUNCTION_5_55(v2, v3, v4, v5, v6, v7, v8, v9);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_43_0();
  sub_237EF90F0();
  OUTLINED_FUNCTION_1();
  v30 = v12;
  v31 = v11;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v13);
  if (OUTLINED_FUNCTION_12_34(v14, v28))
  {
    OUTLINED_FUNCTION_14_36();
    sub_237EF8350();
  }

  else
  {
    v15 = OUTLINED_FUNCTION_8_50();
    MEMORY[0x28223BE20](v15);
    OUTLINED_FUNCTION_7_44();
    MEMORY[0x28223BE20](v16);
    OUTLINED_FUNCTION_10_38();
    *(v17 - 16) = sub_237D96AFC;
    *(v17 - 8) = v18;
    WitnessTable = swift_getWitnessTable();
    OUTLINED_FUNCTION_13_27(WitnessTable, v20, v21, v22, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v23);
    v24 = OUTLINED_FUNCTION_17_32();
    v25(v24);
    OUTLINED_FUNCTION_43_0();
    sub_237EF8A60();
    OUTLINED_FUNCTION_1_2();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_19_31();
    Sequence<>.mean()();

    OUTLINED_FUNCTION_6_43();
    if (v26)
    {
      OUTLINED_FUNCTION_14_36();
      sub_237EF8350();
      OUTLINED_FUNCTION_6_43();
      if (!v26)
      {
        (*(v30 + 8))(v1, v31);
      }
    }

    else
    {
      OUTLINED_FUNCTION_11_37();
      (*(v27 + 32))(v29, v1, v0);
    }
  }

  OUTLINED_FUNCTION_38_0();
}

uint64_t sub_237D96748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v12 - v8;
  sub_237EF9760();
  sub_237EF9760();
  sub_237EF8D30();
  v10 = *(v4 + 8);
  v10(v6, a3);
  return (v10)(v9, a3);
}

void meanSquaredError<A, B, C>(_:_:)()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  v30 = v5;
  v31 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v28 = v12;
  v13 = *(v2 + 8);
  v14 = *(v0 + 8);
  v32 = v8;
  v33 = v6;
  v34 = v13;
  v35 = v14;
  v15 = sub_237EF9380();
  OUTLINED_FUNCTION_1();
  v29 = v16;
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v17);
  v19 = &v27 - v18;
  if (sub_237EF8DD0())
  {
    sub_237EF8350();
  }

  else
  {
    v20 = sub_237EFA000();
    v28 = &v27;
    MEMORY[0x28223BE20](v20);
    *(&v27 - 6) = v11;
    *(&v27 - 5) = v9;
    v21 = v31;
    *(&v27 - 4) = v7;
    *(&v27 - 3) = v21;
    *(&v27 - 2) = v3;
    *(&v27 - 1) = v1;
    MEMORY[0x28223BE20](v22);
    *(&v27 - 8) = v11;
    *(&v27 - 7) = v9;
    *(&v27 - 6) = v7;
    *(&v27 - 5) = v21;
    *(&v27 - 4) = v3;
    *(&v27 - 3) = v1;
    *(&v27 - 2) = sub_237D96B50;
    *(&v27 - 1) = v23;
    WitnessTable = swift_getWitnessTable();
    v26 = sub_237C8FFEC(sub_237D973B4, (&v27 - 10), v15, v11, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v25);
    (*(v29 + 8))(v19, v15);
    v32 = v26;
    sub_237EF8A60();
    OUTLINED_FUNCTION_1_24();
    swift_getWitnessTable();
    Collection<>.mean()();
  }

  OUTLINED_FUNCTION_38_0();
}

uint64_t sub_237D96B60(uint64_t a1)
{
  v3 = *(v1 + 64);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v3(a1, a1 + *(TupleTypeMetadata2 + 48));
}

uint64_t sub_237D96BD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a4;
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v26 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v23 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = v23 - v12;
  MEMORY[0x28223BE20](v14);
  v24 = v23 - v15;
  v18 = type metadata accessor for AnnotatedPrediction(0, v16, v16, v17);
  AnnotatedPrediction.prediction.getter(v18, v13);
  AnnotatedPrediction.annotation.getter(v18, v10);
  v25 = *(*(a3 + 16) + 8);
  v23[1] = *(v25 + 8);
  sub_237EF9760();
  v19 = *(v6 + 8);
  v19(v10, a2);
  v19(v13, a2);
  AnnotatedPrediction.prediction.getter(v18, v10);
  v20 = v26;
  AnnotatedPrediction.annotation.getter(v18, v26);
  sub_237EF9760();
  v19(v20, a2);
  v19(v10, a2);
  v21 = v24;
  sub_237EF8D30();
  v19(v13, a2);
  return (v19)(v21, a2);
}

uint64_t meanSquaredError<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AnnotatedPrediction(255, a2, a2, a4);
  v5 = sub_237EF8A60();
  OUTLINED_FUNCTION_1_24();
  WitnessTable = swift_getWitnessTable();
  v7 = sub_237EF8EC0();
  if (v7)
  {
    return OUTLINED_FUNCTION_22_25();
  }

  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_21_27();
  sub_237C9339C(sub_237D96F4C, v9, v5, a2, MEMORY[0x277D84A98], WitnessTable);
  sub_237EF8A60();
  OUTLINED_FUNCTION_1_24();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_20_26();
  Collection<>.mean()();
}

uint64_t rootMeanSquaredError<A>(_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_57();
  meanSquaredError<A>(_:)(v7, v8, v9, v10);
  OUTLINED_FUNCTION_23_27();
  return (*(v5 + 8))(v2, a2);
}

void sub_237D97038()
{
  OUTLINED_FUNCTION_37_0();
  v1 = v0;
  v3 = v2;
  type metadata accessor for AnnotatedPrediction(255, v2, v2, v0);
  v4 = sub_237EF8A60();
  OUTLINED_FUNCTION_1_24();
  WitnessTable = swift_getWitnessTable();
  v6 = sub_237EF8EC0();
  if (v6)
  {
    OUTLINED_FUNCTION_22_25();
  }

  else
  {
    MEMORY[0x28223BE20](v6);
    OUTLINED_FUNCTION_21_27();
    sub_237C9339C(v1, v7, v4, v3, MEMORY[0x277D84A98], WitnessTable);
    sub_237EF8A60();
    OUTLINED_FUNCTION_1_24();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_20_26();
    j___sSl18CreateMLComponentsSF7ElementRpzrlE4meanACyF();
  }

  OUTLINED_FUNCTION_38_0();
}

uint64_t sub_237D9714C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24[1] = a3;
  v24[3] = a4;
  v7 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v24 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = v24 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = v24 - v17;
  v21 = type metadata accessor for AnnotatedPrediction(0, v19, v19, v20);
  v24[0] = a1;
  AnnotatedPrediction.annotation.getter(v21, v12);
  AnnotatedPrediction.prediction.getter(v21, v9);
  v24[2] = *(a3 + 16);
  sub_237EF9760();
  v22 = *(v7 + 8);
  v22(v9, a2);
  v22(v12, a2);
  AnnotatedPrediction.annotation.getter(v21, v12);
  sub_237EF8330();
  v22(v12, a2);
  v22(v15, a2);
  sub_237EF9FD0();
  return (v22)(v18, a2);
}

uint64_t OUTLINED_FUNCTION_5_55(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 - 128) = a6;
  *(v8 - 160) = a2;
  *(v8 - 152) = a8;
  v10 = *(a7 + 8);
  v11 = *(a8 + 8);
  *(v8 - 112) = a4;
  *(v8 - 104) = a5;
  *(v8 - 96) = v10;
  *(v8 - 88) = v11;

  return sub_237EF9380();
}

uint64_t OUTLINED_FUNCTION_8_50()
{
  *(v1 - 184) = v0;

  return sub_237EFA000();
}

uint64_t OUTLINED_FUNCTION_12_34@<X0>(uint64_t a1@<X8>, uint64_t a2)
{
  *(v2 - 136) = &a2 - a1;

  return sub_237EF8DD0();
}

uint64_t OUTLINED_FUNCTION_13_27(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{

  return sub_237C8FFEC(v8, v10, v11, v9, a5, a6, a7, a8);
}

uint64_t OUTLINED_FUNCTION_22_25()
{

  return sub_237EF8350();
}

uint64_t OUTLINED_FUNCTION_23_27()
{

  return sub_237EF8320();
}

void sub_237D9762C(uint64_t a1)
{
  type metadata accessor for Moment(319);
  if (v1 <= 0x3F)
  {
    sub_237D976B0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_237D976B0(uint64_t a1)
{
  if (!qword_27DEB2D58)
  {
    type metadata accessor for Moment(255);
    v1 = sub_237EF90F0();
    if (!v2)
    {
      atomic_store(v1, &qword_27DEB2D58);
    }
  }
}

void sub_237D97730(uint64_t a1)
{
  sub_237C86290();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_237D977AC(uint64_t a1, uint64_t a2)
{
  sub_237C6BDB8();
  v6 = v5;
  v9[2] = a1;
  v9[3] = a2;
  sub_237CD15CC(sub_237D99B50, v9, v5);

  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2A0, &qword_237F135A0);
    v6 = sub_237EF6690();
  }

  OUTLINED_FUNCTION_0_59();
  sub_237D99A48(a2, v7);
  sub_237C9A114(a1, &qword_27DEAD2A0, &qword_237F135A0);
  return v6;
}

void sub_237D978B4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v18 = a4;
  v7 = sub_237EF6820();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FullyConnectedNetwork(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2A0, &qword_237F135A0);
  MEMORY[0x28223BE20](v14 - 8);
  sub_237D99B70(a2, &v17 - v15);
  sub_237D99AF0(a3, v13, type metadata accessor for FullyConnectedNetwork);
  (*(v8 + 16))(v10, a1, v7);
  v16 = v19;
  sub_237D97A88();
  if (v16)
  {
    *v18 = v16;
  }
}

void sub_237D97A88()
{
  OUTLINED_FUNCTION_13_4();
  v134 = v0;
  v2 = v1;
  v4 = v3;
  v148 = v5;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2B8, &unk_237F13410);
  OUTLINED_FUNCTION_18(v8);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v9);
  v130 = &v117 - v10;
  sub_237EF6450();
  OUTLINED_FUNCTION_1();
  v139 = v12;
  v140 = v11;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5();
  v136 = v14 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2C0, &qword_237F08F20);
  v16 = OUTLINED_FUNCTION_18(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_26();
  v129 = v17 - v18;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_8_16();
  v133 = v20;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v21);
  v23 = &v117 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v117 - v25;
  v27 = sub_237EF6B10();
  OUTLINED_FUNCTION_1();
  v143 = v28;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_26();
  v131 = v30 - v31;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_8_16();
  v132 = v33;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_8_16();
  v135 = v35;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_8_16();
  v142 = v37;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v38);
  v144 = &v117 - v39;
  v40 = *(type metadata accessor for AdamDenseLayer(0) + 20);
  v141 = v7;
  v41 = v7 + v40;
  v42 = type metadata accessor for Moment(0);
  v145 = v41;
  v43 = v41;
  v44 = v42;
  __swift_storeEnumTagSinglePayload(v43, 1, 1, v42);
  v45 = sub_237C624D0();
  if (!v45)
  {
    v146 = 0;
    v147 = 0xE000000000000000;
    sub_237EF9330();
    MEMORY[0x2383E0710](0xD00000000000002ALL, 0x8000000237EFBB40);
    v51 = sub_237EF6820();
    sub_237EF9670();
    v52 = v146;
    v53 = v147;
    sub_237C6514C();
    swift_allocError();
    *v54 = v52;
    v54[1] = v53;
    swift_willThrow();
    (*(*(v51 - 8) + 8))(v2, v51);
    OUTLINED_FUNCTION_0_59();
    v56 = v4;
LABEL_10:
    sub_237D99A48(v56, v55);
    sub_237C9A114(v148, &qword_27DEAD2A0, &qword_237F135A0);
    goto LABEL_11;
  }

  v46 = v45;
  v128 = v44;
  v137 = v4;
  v138 = v2;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD2A0, &qword_237F135A0);
  v48 = *(v47 + 64);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEAD300, &qword_237F05BA0);
  sub_237EF6640();
  OUTLINED_FUNCTION_96(v26);
  if (v63)
  {
    v23 = v26;
    v50 = v137;
LABEL_9:
    sub_237C9A114(v23, &qword_27DEAD2C0, &qword_237F08F20);
    sub_237C6514C();
    v64 = swift_allocError();
    OUTLINED_FUNCTION_13_28(v64, v65);

    sub_237EF6820();
    OUTLINED_FUNCTION_3_11();
    (*(v66 + 8))(v138);
    OUTLINED_FUNCTION_0_59();
    v56 = v50;
    goto LABEL_10;
  }

  v125 = v48;
  v57 = v46;
  v58 = v143;
  v59 = *(v143 + 32);
  v60 = v26;
  v61 = v143 + 32;
  v59(v144, v60, v27);
  v62 = *(v47 + 68);
  v127 = v57;
  sub_237EF6640();
  OUTLINED_FUNCTION_96(v23);
  if (v63)
  {
    (*(v58 + 8))(v144, v27);
    v50 = v137;
    goto LABEL_9;
  }

  v119 = v62;
  v124 = v49;
  v123 = v61;
  v120 = v59;
  v59(v142, v23, v27);
  v68 = v58 + 16;
  v67 = *(v58 + 16);
  v69 = v135;
  v67(v135, v144, v27);
  v126 = v27;
  v70 = v136;
  sub_237EF6A30();
  sub_237EF6440();
  v72 = v139 + 8;
  v71 = *(v139 + 8);
  v73 = v71(v70, v140);
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_8_51();
  *(v74 - 16) = v69;
  v75 = v134;
  sub_237EF7DE0();
  v134 = v75;
  v78 = *(v58 + 8);
  v77 = v58 + 8;
  v76 = v78;
  v78(v69, v126);
  v122 = v68;
  v121 = v67;
  v67(v69, v142, v126);
  sub_237EF6A30();
  sub_237EF6440();
  v79 = v70;
  v80 = v126;
  v139 = v72;
  v118 = v71;
  v81 = v71(v79, v140);
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_8_51();
  *(v82 - 16) = v69;
  sub_237EF7DE0();
  v78(v69, v80);
  v84 = v137;
  v83 = v138;
  v85 = sub_237C62628();
  if (!v85)
  {

    sub_237EF6820();
    OUTLINED_FUNCTION_3_11();
    (*(v90 + 8))(v83);
    OUTLINED_FUNCTION_0_59();
    sub_237D99A48(v84, v91);
    sub_237C9A114(v148, &qword_27DEAD2A0, &qword_237F135A0);
    v76(v142, v80);
    v76(v144, v80);
    v92 = v145;
    sub_237C9A114(v145, &qword_27DEAD2B8, &unk_237F13410);
    __swift_storeEnumTagSinglePayload(v92, 1, 1, v128);
    goto LABEL_12;
  }

  v86 = v85;
  v143 = v77;
  v134 = v76;
  v87 = v144;
  v88 = v133;
  sub_237EF6640();
  OUTLINED_FUNCTION_96(v88);
  if (v63)
  {
    v96 = v88;
    v89 = v134;
  }

  else
  {
    v93 = v88;
    v94 = v132;
    v95 = v120;
    v120(v132, v93, v80);
    v133 = v86;
    v96 = v129;
    sub_237EF6640();
    OUTLINED_FUNCTION_96(v96);
    if (!v97)
    {
      v95(v131, v96, v80);
      v103 = v135;
      OUTLINED_FUNCTION_19_32();
      v104();
      v105 = v80;
      v106 = v136;
      sub_237EF6A30();
      sub_237EF6440();
      v107 = v118;
      v108 = v118(v106, v140);
      MEMORY[0x28223BE20](v108);
      OUTLINED_FUNCTION_8_51();
      *(v109 - 16) = v103;
      sub_237EF7DE0();
      v110 = v134;
      v134(v103, v105);
      OUTLINED_FUNCTION_19_32();
      v111();
      sub_237EF6A30();
      sub_237EF6440();
      v112 = v107(v106, v140);
      MEMORY[0x28223BE20](v112);
      OUTLINED_FUNCTION_8_51();
      *(v113 - 16) = v103;
      v114 = v130;
      sub_237EF7DE0();
      v110(v103, v105);

      sub_237EF6820();
      OUTLINED_FUNCTION_3_11();
      (*(v115 + 8))(v138);
      OUTLINED_FUNCTION_0_59();
      sub_237D99A48(v137, v116);
      sub_237C9A114(v148, &qword_27DEAD2A0, &qword_237F135A0);
      v110(v131, v105);
      v110(v132, v105);
      v110(v142, v105);
      v110(v144, v105);
      __swift_storeEnumTagSinglePayload(v114, 0, 1, v128);
      sub_237D999D8(v114, v145);
      goto LABEL_12;
    }

    v89 = v134;
    v134(v94, v80);
    v84 = v137;
  }

  sub_237C9A114(v96, &qword_27DEAD2C0, &qword_237F08F20);
  sub_237C6514C();
  v98 = swift_allocError();
  OUTLINED_FUNCTION_13_28(v98, v99);

  sub_237EF6820();
  OUTLINED_FUNCTION_3_11();
  (*(v100 + 8))(v138);
  OUTLINED_FUNCTION_0_59();
  sub_237D99A48(v84, v101);
  sub_237C9A114(v148, &qword_27DEAD2A0, &qword_237F135A0);
  v89(v142, v80);
  v89(v87, v80);
  OUTLINED_FUNCTION_2_62();
  sub_237D99A48(v141, v102);
LABEL_11:
  sub_237C9A114(v145, &qword_27DEAD2B8, &unk_237F13410);
LABEL_12:
  OUTLINED_FUNCTION_12_6();
}

uint64_t sub_237D986C0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1885697139 && a2 == 0xE400000000000000;
  if (v3 || (sub_237EF9D40() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73746E656D6F6DLL && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_237EF9D40();

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