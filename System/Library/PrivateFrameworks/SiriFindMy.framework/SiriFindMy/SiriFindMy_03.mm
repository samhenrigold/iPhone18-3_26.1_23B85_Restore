uint64_t sub_266C4FE34@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = sub_266D549C4(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_266C4FE80@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v6 = *a2;
  v5 = a2[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9F88, &unk_266DB6EF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_266DAE4A0;
  *(inited + 32) = v6;
  *(inited + 40) = v5;

  result = sub_266C4FF10(inited, v4);
  *a3 = result;
  return result;
}

uint64_t sub_266C4FF10(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v7 = a2;
  v4 = *(result + 16);
  for (i = result + 40; ; i += 16)
  {
    if (v4 == v3)
    {

      return v7;
    }

    if (v3 >= *(v2 + 16))
    {
      break;
    }

    ++v3;

    sub_266C51548(v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_266C50034(uint64_t a1, double a2)
{
  v3 = v2;
  v101 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA100, &qword_266DB00B0);
  OUTLINED_FUNCTION_0_2();
  v99 = v5;
  v100 = v6;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_10();
  v98 = v8;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA108, &qword_266DB00B8);
  OUTLINED_FUNCTION_0_2();
  v82 = v9;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v73 - v11;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA110, &qword_266DB00C0);
  OUTLINED_FUNCTION_0_2();
  v89 = v13;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_15_0(v15);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA118, &qword_266DB00C8);
  OUTLINED_FUNCTION_0_2();
  v90 = v16;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_15_0(v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC360, &qword_266DB00D0);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_15_0(v20);
  v85 = sub_266DAAB4C();
  OUTLINED_FUNCTION_0_2();
  v83 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_0_6();
  v25 = v24 - v23;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA120, &qword_266DB00D8);
  v80 = *(v76 - 8);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v26);
  v28 = &v73 - v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA128, &qword_266DB00E0);
  OUTLINED_FUNCTION_0_2();
  v92 = v29;
  v93 = v30;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_10();
  v84 = v32;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA130, &qword_266DB00E8);
  OUTLINED_FUNCTION_0_2();
  v96 = v33;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_10();
  v86 = v35;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA138, &qword_266DB00F0);
  OUTLINED_FUNCTION_0_2();
  v97 = v36;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_10();
  v91 = v38;
  v102 = v2[8];
  v39 = v102;
  v40 = swift_allocObject();
  v79 = a1;
  *(v40 + 16) = a1;
  OUTLINED_FUNCTION_26_0();
  v41 = swift_allocObject();
  *(v41 + 16) = sub_266C50BF4;
  *(v41 + 24) = v40;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA140, &qword_266DB00F8);
  OUTLINED_FUNCTION_5_8();
  sub_266C230E8(v42, &qword_2800CA140, &qword_266DB00F8, v43);
  v75 = v28;
  sub_266DA98AC();

  v74 = v25;
  sub_266DAAB2C();
  v44 = v3[2];
  v45 = sub_266DAAB1C();
  v46 = v77;
  __swift_storeEnumTagSinglePayload(v77, 1, 1, v45);
  v102 = v44;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA148, &qword_266DB0100);
  sub_266C230E8(&qword_2800CA150, &qword_2800CA120, &qword_266DB00D8, MEMORY[0x277CBCC90]);
  sub_266C230E8(&qword_2800CA158, &qword_2800CA148, &qword_266DB0100, &unk_266DBE548);
  sub_266DA98FC();
  sub_266C22FD4();
  sub_266C230E8(&qword_2800CA160, &qword_2800CA108, &qword_266DB00B8, MEMORY[0x277CBCD08]);
  sub_266C51F04(&qword_2800C9A90, sub_266C22FD4, MEMORY[0x277CC9D58]);
  v47 = v78;
  v48 = v81;
  sub_266DA98EC();
  OUTLINED_FUNCTION_9();
  v49(v12, v48);
  OUTLINED_FUNCTION_26_0();
  v50 = swift_allocObject();
  *(v50 + 16) = sub_266C50DEC;
  *(v50 + 24) = v39;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA168, &qword_266DB0108);
  sub_266C230E8(&qword_2800CA170, &qword_2800CA110, &qword_266DB00C0, MEMORY[0x277CBCCE8]);
  sub_266C230E8(&qword_2800CA178, &qword_2800CA168, &qword_266DB0108, MEMORY[0x277CBCD90]);
  v51 = v87;
  sub_266DA987C();

  (*(v89 + 8))(v47, v51);
  OUTLINED_FUNCTION_3_7();
  sub_266C230E8(v52, &qword_2800CA118, &qword_266DB00C8, v53);
  v54 = sub_266DA97EC();

  v55 = OUTLINED_FUNCTION_7_5();
  v56(v55);
  sub_266C51CBC(v46);
  OUTLINED_FUNCTION_9();
  v57(v74, v85);
  OUTLINED_FUNCTION_9();
  v58(v75, v76);
  v102 = v54;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA188, &qword_266DB0110);
  sub_266C230E8(&qword_2800CA190, &qword_2800CA188, &qword_266DB0110, MEMORY[0x277CBCF40]);
  v59 = v98;
  sub_266DA97CC();
  sub_266C230E8(&qword_2800CA198, &qword_2800CA100, &qword_266DB00B0, MEMORY[0x277CBCEB8]);
  v60 = v84;
  v61 = v99;
  sub_266DA989C();
  (*(v100 + 8))(v59, v61);

  sub_266C230E8(&qword_2800CA1A0, &qword_2800CA128, &qword_266DB00E0, MEMORY[0x277CBCB40]);
  v62 = v86;
  v63 = v92;
  sub_266DA988C();
  (*(v93 + 8))(v60, v63);
  OUTLINED_FUNCTION_26_0();
  v64 = swift_allocObject();
  v65 = v101;
  *(v64 + 16) = v79;
  *(v64 + 24) = v65;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA1A8, &qword_266DB0118);
  sub_266C230E8(&qword_2800CA1B0, &qword_2800CA130, &qword_266DB00E8, MEMORY[0x277CBCC58]);
  v66 = v94;
  sub_266DA984C();

  (*(v96 + 8))(v62, v66);
  OUTLINED_FUNCTION_4_9();
  sub_266C230E8(v67, &qword_2800CA138, &qword_266DB00F0, v68);
  v69 = sub_266DA97EC();

  v70 = OUTLINED_FUNCTION_7_5();
  v71(v70);
  return v69;
}

uint64_t sub_266C50BFC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) < *(a2 + 16))
  {
    return 0;
  }

  v2 = a2;
  v4 = a2 + 56;
  v5 = 1 << *(a2 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a2 + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a1 + 56;

  v11 = 0;
  v23 = v2;
  if (v7)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return 1;
    }

    v7 = *(v4 + 8 * v12);
    ++v11;
    if (v7)
    {
      v11 = v12;
LABEL_10:
      while (2)
      {
        if (!*(a1 + 16))
        {

          return 0;
        }

        v13 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        v14 = (*(v2 + 48) + ((v11 << 10) | (16 * v13)));
        v16 = *v14;
        v15 = v14[1];
        sub_266DAB2AC();

        sub_266DAA7BC();
        v17 = sub_266DAB2DC();
        v18 = ~(-1 << *(a1 + 32));
        do
        {
          v19 = v17 & v18;
          if (((*(v9 + (((v17 & v18) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v17 & v18)) & 1) == 0)
          {

            return 0;
          }

          v20 = (*(a1 + 48) + 16 * v19);
          if (*v20 == v16 && v20[1] == v15)
          {
            break;
          }

          v22 = sub_266DAB17C();
          v17 = v19 + 1;
        }

        while ((v22 & 1) == 0);

        v2 = v23;
        if (v7)
        {
          continue;
        }

        break;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_266C50DF0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA220, &qword_266DB02C0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v5 - v2;
  sub_266DA972C();
  v5[0] = v5[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA210, &qword_266DB02A8);
  sub_266DA977C();
  sub_266C51FFC();
  sub_266DA976C();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_266C50F1C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;

  v6 = sub_266C4ED3C(a2, v5);
  result = sub_266C4F158(v6);
  *a3 = result;
  return result;
}

BOOL sub_266C50F74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_266DAB2AC();
  sub_266DAA7BC();
  v6 = sub_266DAB2DC();
  v7 = ~(-1 << *(a3 + 32));
  do
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(a3 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    v10 = v9 != 0;
    if (!v9)
    {
      break;
    }

    v11 = (*(a3 + 48) + 16 * v8);
    if (*v11 == a1 && v11[1] == a2)
    {
      break;
    }

    v13 = sub_266DAB17C();
    v6 = v8 + 1;
  }

  while ((v13 & 1) == 0);
  return v10;
}

uint64_t NearbyScanSession.deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  return v0;
}

uint64_t NearbyScanSession.__deallocating_deinit()
{
  NearbyScanSession.deinit();

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

uint64_t sub_266C510D8(char a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v19[1] = a3;
  v20 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA230, &qword_266DB02C8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA220, &qword_266DB02C0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v19 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA188, &qword_266DB0110);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v19 - v15;
  if (a1)
  {
    v20(&v21, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA210, &qword_266DB02A8);
    sub_266DA977C();
    sub_266C51FFC();
    sub_266DA976C();
    (*(v9 + 8))(v11, v8);
    sub_266C230E8(&qword_2800CA190, &qword_2800CA188, &qword_266DB0110, MEMORY[0x277CBCF40]);
    v17 = sub_266DA97EC();
    (*(v13 + 8))(v16, v12);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA210, &qword_266DB02A8);
    sub_266C51FFC();
    sub_266DA975C();
    sub_266C230E8(&qword_2800CA238, &qword_2800CA230, &qword_266DB02C8, MEMORY[0x277CBCE70]);
    v17 = sub_266DA97EC();
    (*(v5 + 8))(v7, v4);
  }

  return v17;
}

uint64_t sub_266C51408(uint64_t a1)
{
  OUTLINED_FUNCTION_12_5(a1);
  sub_266DAB2CC();
  if (v2)
  {
    sub_266DAA7BC();
  }

  sub_266DAB2DC();
  OUTLINED_FUNCTION_14_4();
  v8 = v7 & ~v6;
  if (((*(v19 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
LABEL_15:
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_15_6();
    v14 = OUTLINED_FUNCTION_13_3();
    sub_266C5164C(v14, v15, v16, v17);
    *v3 = v19[0];
    *v1 = v4;
    v1[1] = v2;
    return 1;
  }

  v9 = ~v6;
  v10 = *(v5 + 48);
  while (1)
  {
    v11 = (v10 + 16 * v8);
    v12 = v11[1];
    if (v12)
    {
      break;
    }

    if (!v2)
    {
      goto LABEL_17;
    }

LABEL_14:
    v8 = (v8 + 1) & v9;
    if (((*(v19 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  if (!v2)
  {
    goto LABEL_14;
  }

  v13 = *v11 == v4 && v12 == v2;
  if (!v13 && (sub_266DAB17C() & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_17:
  *v1 = *(*(v5 + 48) + 16 * v8);

  return 0;
}

BOOL sub_266C51548(uint64_t a1)
{
  OUTLINED_FUNCTION_12_5(a1);
  sub_266DAA7BC();
  sub_266DAB2DC();
  OUTLINED_FUNCTION_14_4();
  v8 = ~v7;
  while (1)
  {
    v9 = v6 & v8;
    v10 = (1 << (v6 & v8)) & *(v20 + (((v6 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v10)
    {
      break;
    }

    v11 = (*(v5 + 48) + 16 * v9);
    v12 = *v11 == v4 && v11[1] == v2;
    if (v12 || (sub_266DAB17C() & 1) != 0)
    {

      v13 = (*(v5 + 48) + 16 * v9);
      v14 = v13[1];
      *v1 = *v13;
      v1[1] = v14;

      return v10 == 0;
    }

    v6 = v9 + 1;
  }

  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_15_6();
  v15 = OUTLINED_FUNCTION_13_3();
  sub_266C51808(v15, v16, v17, v18);
  *v3 = v20[0];
  *v1 = v4;
  v1[1] = v2;
  return v10 == 0;
}

void sub_266C51970(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v24 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 24)
  {
    if (v24 == v4)
    {

      return;
    }

    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_266DAB1FC();
      __break(1u);
      goto LABEL_22;
    }

    v7 = *(i - 2);
    v6 = *(i - 1);
    v8 = *i;
    v9 = *a3;

    v11 = sub_266D99E08(v7);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v14 = v10;
    if (v9[3] < v12 + v13)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA248, &qword_266DB02D8);
      sub_266DAAF0C();
      if (v14)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v17 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v18 = (v17[6] + 16 * v11);
    *v18 = v7;
    v18[1] = v6;
    *(v17[7] + v11) = v8;
    v19 = v17[2];
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      goto LABEL_20;
    }

    v17[2] = v21;
    ++v4;
    a2 = 1;
  }

  sub_266D2EC6C();
  v15 = sub_266D99E08(v7);
  if ((v14 & 1) != (v16 & 1))
  {
    goto LABEL_21;
  }

  v11 = v15;
  if ((v14 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  v22 = swift_allocError();
  swift_willThrow();
  v23 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800CA800, &unk_266DAFC10);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_266DAADFC();
  MEMORY[0x26D5F1170](0xD00000000000001BLL, 0x8000000266DC1C20);
  sub_266DAAEEC();
  MEMORY[0x26D5F1170](39, 0xE100000000000000);
  sub_266DAAF1C();
  __break(1u);
}

uint64_t sub_266C51C88@<X0>(char *a1@<X0>, void (*a2)(uint64_t *__return_ptr, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_266C510D8(*a1, a2, a3);
  *a4 = result;
  return result;
}

uint64_t sub_266C51CBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC360, &qword_266DB00D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_266C51D38()
{
  result = qword_2800CA1C0;
  if (!qword_2800CA1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA1C0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DiscoveryError(_BYTE *result, int a2, int a3)
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

uint64_t sub_266C51F04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266C51F4C()
{
  result = qword_28156F3A0;
  if (!qword_28156F3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156F3A0);
  }

  return result;
}

unint64_t sub_266C51FFC()
{
  result = qword_2800CA228;
  if (!qword_2800CA228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA228);
  }

  return result;
}

void *OUTLINED_FUNCTION_12_5(uint64_t a1, ...)
{

  return sub_266DAB2AC();
}

uint64_t OUTLINED_FUNCTION_15_6()
{
}

uint64_t sub_266C52140(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 216))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_266C52180(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 216) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 216) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_266C52204()
{
  v1 = sub_266DA81AC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v0 + 168), *(v0 + 192));
  sub_266DA816C();
  v5 = sub_266D6F5AC(v4);
  v7 = v6;
  (*(v2 + 8))(v4, v1);
  if (!v7)
  {
    return sub_266DA7CAC();
  }

  if (v7 == 1)
  {
    return sub_266DA7CCC();
  }

  sub_266DA7CBC();
  return sub_266C488A0(v5, v7);
}

uint64_t sub_266C52334(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = OUTLINED_FUNCTION_14_3();
  return MEMORY[0x2822009F8](v2);
}

uint64_t sub_266C5235C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA268, &qword_266DB0490);
  v1 = sub_266DA80DC();
  v2 = [v1 disambiguationItems];
  v3 = sub_266DAA93C();

  v4 = sub_266C3A9E4(v3);

  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA260, qword_266DB0398);
    swift_allocObject();
    v5 = sub_266DA813C();

    v6 = *(v0 + 8);

    return v6(v5);
  }

  else
  {
    v8 = sub_266C55488();
    OUTLINED_FUNCTION_87(&type metadata for SetGeoFence.Errors, v8);
    *v9 = 0;
    swift_willThrow();

    OUTLINED_FUNCTION_28();

    return v10();
  }
}

uint64_t sub_266C524C0()
{
  OUTLINED_FUNCTION_22_0();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA278, &qword_266DB04B0);
  v1[7] = v6;
  OUTLINED_FUNCTION_11_3(v6);
  v1[8] = v7;
  v1[9] = OUTLINED_FUNCTION_62();
  v8 = sub_266DA81AC();
  v1[10] = v8;
  OUTLINED_FUNCTION_11_3(v8);
  v1[11] = v9;
  v1[12] = OUTLINED_FUNCTION_62();
  v10 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v10);
}

void sub_266C525C4()
{
  v1 = v0[12];
  v2 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA268, &qword_266DB0490);
  i = sub_266DA80CC();
  __swift_project_boxed_opaque_existential_1((v2 + 168), *(v2 + 192));
  sub_266DA816C();
  v46 = sub_266D6F5AC(v1);
  v5 = v4;
  v6 = OUTLINED_FUNCTION_83();
  v7(v6);
  if (v5)
  {
    if (v5 == 1)
    {
      if (qword_2800C93F8 != -1)
      {
        goto LABEL_39;
      }

      goto LABEL_4;
    }

    v45 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA270, &unk_266DB0498);
    v24 = sub_266DA7FFC();
    v25 = sub_266C3A14C();
    for (i = 0; ; ++i)
    {
      if (v25 == i)
      {

        if (qword_2800C93F8 != -1)
        {
          OUTLINED_FUNCTION_7_6(&qword_2800C93F8);
        }

        v32 = sub_266DA94AC();
        __swift_project_value_buffer(v32, qword_2800E64C0);
        v33 = sub_266DA948C();
        v34 = sub_266DAAAEC();
        i = v45;
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          *v35 = 0;
          _os_log_impl(&dword_266C08000, v33, v34, "DisambiguateLocationStrategy unable to determine selectedLocation", v35, 2u);
          MEMORY[0x26D5F2480](v35, -1, -1);
        }

        v36 = sub_266C55434();
        OUTLINED_FUNCTION_87(&type metadata for LocationDisambiguationError, v36);
        *v37 = v46;
        v37[1] = v5;
        goto LABEL_31;
      }

      if ((v24 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x26D5F1780](i, v24);
      }

      else
      {
        if (i >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_38;
        }

        v26 = *(v24 + 8 * i + 32);
      }

      v27 = v26;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v28 = sub_266C1CEB4(v26);
      if (v29)
      {
        if (v28 == v46 && v29 == v5)
        {

LABEL_36:

          v41 = v0[8];
          v40 = v0[9];
          v42 = v0[7];
          sub_266C488A0(v46, v5);
          [v45 setLocation_];
          type metadata accessor for SpeakableLocation();
          type metadata accessor for SetGeoFenceIntent();
          v43 = v27;
          v44 = v45;
          sub_266DA7EAC();
          sub_266DA7F6C();

          (*(v41 + 8))(v40, v42);

          OUTLINED_FUNCTION_15_4();
LABEL_32:
          OUTLINED_FUNCTION_39();

          __asm { BRAA            X1, X16 }
        }

        v31 = sub_266DAB17C();

        if (v31)
        {
          goto LABEL_36;
        }
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    OUTLINED_FUNCTION_7_6(&qword_2800C93F8);
LABEL_4:
    v8 = sub_266DA94AC();
    __swift_project_value_buffer(v8, qword_2800E64C0);
    v9 = sub_266DA948C();
    v10 = sub_266DAAAEC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      OUTLINED_FUNCTION_45_0(&dword_266C08000, v12, v13, "DisambiguateLocationStrategy unable to make task from parse");
      MEMORY[0x26D5F2480](v11, -1, -1);
    }

    v14 = sub_266C55434();
    OUTLINED_FUNCTION_87(&type metadata for LocationDisambiguationError, v14);
    *v15 = 0;
    v15[1] = 0;
  }

  else
  {
    if (qword_2800C93F8 != -1)
    {
      OUTLINED_FUNCTION_7_6(&qword_2800C93F8);
    }

    v16 = sub_266DA94AC();
    __swift_project_value_buffer(v16, qword_2800E64C0);
    v17 = sub_266DA948C();
    v18 = sub_266DAAAEC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      OUTLINED_FUNCTION_45_0(&dword_266C08000, v20, v21, "DisambiguateLocationStrategy unexpected task");
      MEMORY[0x26D5F2480](v19, -1, -1);
    }

    v22 = sub_266C55434();
    OUTLINED_FUNCTION_87(&type metadata for LocationDisambiguationError, v22);
    *v23 = xmmword_266DAFA10;
  }

LABEL_31:
  swift_willThrow();

  OUTLINED_FUNCTION_28();
  goto LABEL_32;
}

uint64_t sub_266C52AAC()
{
  OUTLINED_FUNCTION_22_0();
  v1[24] = v2;
  v1[25] = v0;
  v1[22] = v3;
  v1[23] = v4;
  v5 = type metadata accessor for Snippets(0);
  v1[26] = v5;
  OUTLINED_FUNCTION_4_3(v5);
  v1[27] = OUTLINED_FUNCTION_64();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v6 = sub_266DA80AC();
  v1[31] = v6;
  OUTLINED_FUNCTION_11_3(v6);
  v1[32] = v7;
  v1[33] = OUTLINED_FUNCTION_62();
  v8 = sub_266DA7C0C();
  v1[34] = v8;
  OUTLINED_FUNCTION_11_3(v8);
  v1[35] = v9;
  v1[36] = OUTLINED_FUNCTION_64();
  v1[37] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA040, &unk_266DB0070);
  OUTLINED_FUNCTION_4_3(v10);
  v1[38] = OUTLINED_FUNCTION_62();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA048, &unk_266DAFC00);
  OUTLINED_FUNCTION_4_3(v11);
  v1[39] = OUTLINED_FUNCTION_62();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA050, &qword_266DB0080);
  OUTLINED_FUNCTION_11_3(v12);
  v1[40] = v13;
  v1[41] = *(v14 + 64);
  v1[42] = OUTLINED_FUNCTION_64();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v15 = sub_266DA7E5C();
  v1[50] = v15;
  OUTLINED_FUNCTION_11_3(v15);
  v1[51] = v16;
  v1[52] = OUTLINED_FUNCTION_62();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  OUTLINED_FUNCTION_4_3(v17);
  v1[53] = OUTLINED_FUNCTION_62();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC420, &unk_266DB0480);
  OUTLINED_FUNCTION_4_3(v18);
  v1[54] = OUTLINED_FUNCTION_62();
  v19 = type metadata accessor for Address(0);
  v1[55] = v19;
  OUTLINED_FUNCTION_11_3(v19);
  v1[56] = v20;
  v1[57] = OUTLINED_FUNCTION_64();
  v1[58] = swift_task_alloc();
  v1[59] = swift_task_alloc();
  v1[60] = swift_task_alloc();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B20, &unk_266DB1EC0);
  OUTLINED_FUNCTION_4_3(v21);
  v1[61] = OUTLINED_FUNCTION_62();
  v22 = type metadata accessor for Location(0);
  v1[62] = v22;
  OUTLINED_FUNCTION_11_3(v22);
  v1[63] = v23;
  v1[64] = OUTLINED_FUNCTION_64();
  v1[65] = swift_task_alloc();
  v24 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v24);
}

id sub_266C52E94()
{
  v69 = v0;
  v60 = v0[63];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA268, &qword_266DB0490);
  v59 = sub_266DA80CC();
  v0[66] = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA270, &unk_266DB0498);
  v1 = sub_266DA7FFC();
  result = sub_266C3A14C();
  v3 = result;
  v4 = 0;
  v62 = MEMORY[0x277D84F90];
  while (v3 != v4)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x26D5F1780](v4, v1);
    }

    else
    {
      if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_43;
      }

      result = *(v1 + 8 * v4 + 32);
    }

    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      return result;
    }

    v5 = v0[62];
    sub_266C61918(result, 1701736302, 0xE400000000000000, v0[61]);
    v6 = OUTLINED_FUNCTION_55();
    if (__swift_getEnumTagSinglePayload(v6, v7, v5))
    {
      result = sub_266C47654(v0[61], &qword_2800C9B20, &unk_266DB1EC0);
      ++v4;
    }

    else
    {
      v8 = v0[65];
      v9 = v0[64];
      sub_266C55318(v0[61], v9, type metadata accessor for Location);
      sub_266C55318(v9, v8, type metadata accessor for Location);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_266CFA13C();
        v62 = v12;
      }

      v10 = *(v62 + 16);
      if (v10 >= *(v62 + 24) >> 1)
      {
        sub_266CFA13C();
        v62 = v13;
      }

      v11 = v0[65];
      *(v62 + 16) = v10 + 1;
      result = sub_266C55318(v11, v62 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v10, type metadata accessor for Location);
      ++v4;
    }
  }

  v14 = sub_266DA7FFC();
  result = sub_266C3A14C();
  v15 = result;
  v16 = 0;
  v17 = MEMORY[0x277D84F90];
  while (v15 != v16)
  {
    if ((v14 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x26D5F1780](v16, v14);
    }

    else
    {
      if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_45;
      }

      result = *(v14 + 8 * v16 + 32);
    }

    if (__OFADD__(v16, 1))
    {
      goto LABEL_44;
    }

    v19 = v0[54];
    v18 = v0[55];
    v20 = result;
    sub_266D7FBD8();
    __swift_storeEnumTagSinglePayload(v19, 0, 1, v18);

    v21 = OUTLINED_FUNCTION_55();
    if (__swift_getEnumTagSinglePayload(v21, v22, v18) == 1)
    {
      result = sub_266C47654(v0[54], &qword_2800CC420, &unk_266DB0480);
      ++v16;
    }

    else
    {
      sub_266C55318(v0[54], v0[60], type metadata accessor for Address);
      v23 = OUTLINED_FUNCTION_42();
      sub_266C55318(v23, v24, type metadata accessor for Address);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_266CFA074();
        v17 = v29;
      }

      v25 = *(v17 + 16);
      if (v25 >= *(v17 + 24) >> 1)
      {
        sub_266CFA074();
        v17 = v30;
      }

      *(v17 + 16) = v25 + 1;
      OUTLINED_FUNCTION_34_0();
      result = sub_266C55318(v28, v26 + v27 * v25, type metadata accessor for Address);
      ++v16;
    }
  }

  v31 = 0;
  v32 = MEMORY[0x277D84F90];
  v66 = MEMORY[0x277D84F90];
  v33 = *(v17 + 16);
  while (1)
  {
    v0[67] = v32;
    if (v33 == v31)
    {
      break;
    }

    if (v31 >= *(v17 + 16))
    {
      goto LABEL_46;
    }

    v34 = v0[59];
    v35 = v0[57];
    OUTLINED_FUNCTION_34_0();
    sub_266C5537C(v36 + v37 * v31, v34, type metadata accessor for Address);
    sub_266DA8F2C();
    sub_266C5537C(v34, v35, type metadata accessor for Address);
    sub_266D7F7B0(v35);
    v38 = OUTLINED_FUNCTION_42();
    v40 = sub_266C553E0(v38, v39);
    MEMORY[0x26D5F1270](v40);
    if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_266DAA95C();
    }

    result = sub_266DAA96C();
    v32 = v66;
    ++v31;
  }

  v41 = [v59 location];
  if (!v41 || (v42 = v41, sub_266D6CDF4(&v63), v42, v43 = v65, v65 == 255))
  {
    v50 = v0[53];
    v47 = sub_266DA919C();
    v48 = v50;
    v49 = 1;
  }

  else
  {
    v44 = v0[53];
    v46 = v63;
    v45 = v64;
    v66 = v63;
    v67 = v64;
    v68 = v65;
    sub_266D91274();
    sub_266C23130(v46, v45, v43);
    v47 = sub_266DA919C();
    v48 = v44;
    v49 = 0;
  }

  __swift_storeEnumTagSinglePayload(v48, v49, 1, v47);
  v51 = v0[52];
  v52 = v0[49];
  v61 = v0[48];
  v53 = v0[25];
  v54 = v0[26];
  __swift_project_boxed_opaque_existential_1(v53 + 6, v53[9]);
  v55 = sub_266DA7FFC();
  sub_266D45CE0(v55, v51);

  v0[68] = v53[26];
  v56 = sub_266DA7FFC();
  sub_266D3DAE8(v56, v52);

  __swift_storeEnumTagSinglePayload(v52, 0, 1, v54);
  __swift_storeEnumTagSinglePayload(v61, 1, 1, v54);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
  v57 = swift_allocObject();
  v0[69] = v57;
  *(v57 + 16) = xmmword_266DAE3B0;
  v58 = swift_task_alloc();
  v0[70] = v58;
  *v58 = v0;
  v58[1] = sub_266C53548;

  return sub_266CB2E78();
}

uint64_t sub_266C53548(uint64_t a1)
{
  OUTLINED_FUNCTION_23_0();
  v5 = v4;
  OUTLINED_FUNCTION_10_3();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;
  v5[71] = v1;

  if (v1)
  {
    v9 = v5[49];
    sub_266C47654(v5[48], &qword_2800CA050, &qword_266DB0080);
    sub_266C47654(v9, &qword_2800CA050, &qword_266DB0080);
    v10 = sub_266C54878;
  }

  else
  {
    v5[72] = a1;
    v10 = sub_266C536A4;
  }

  return MEMORY[0x2822009F8](v10);
}

void sub_266C536A4()
{
  v1 = v0[50];
  v2 = v0[39];
  *(v0[69] + 32) = v0[72];
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v1);
  sub_266DA7C7C();
  v3 = OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v3, v4, 1, v5);
  sub_266DA7BCC();
  if (sub_266C3A14C())
  {
    v6 = v0[69] & 0xC000000000000001;
    sub_266CB9F54();
    v7 = v0[69];
    if (v6)
    {
      v8 = MEMORY[0x26D5F1780](0, v7);
    }

    else
    {
      v8 = *(v7 + 32);
    }

    v9 = v8;
    v10 = [v8 catId];

    v88 = sub_266DAA70C();
    v91 = v11;
  }

  else
  {
    v88 = 0;
    v91 = 0;
  }

  v12 = v0[68];
  v13 = v0[49];
  v14 = v0[46];
  v15 = v0[47];
  v16 = v0[40];
  v17 = v0[41];
  v85 = v0[39];
  v86 = v0[38];
  v18 = v0[36];
  v84 = v0[37];
  v20 = v0[34];
  v19 = v0[35];
  v87 = v13;
  v89 = v0[26];
  v90 = v0[45];
  sub_266C4756C(v0[48], v15);
  sub_266C4756C(v13, v14);
  v21 = *(v16 + 80);
  v22 = (v21 + 24) & ~v21;
  v23 = (v17 + v21 + v22) & ~v21;
  v24 = swift_allocObject();
  v0[73] = v24;
  *(v24 + 16) = v12;
  sub_266C475DC(v15, v24 + v22);
  sub_266C475DC(v14, v24 + v23);
  (*(v19 + 16))(v18, v84, v20);
  v25 = swift_task_alloc();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  *(v25 + 32) = 0;
  *(v25 + 40) = v88;
  *(v25 + 48) = v91;
  *(v25 + 56) = v85;
  *(v25 + 64) = 257;
  *(v25 + 72) = sub_266C4876C;
  *(v25 + 80) = v24;
  *(v25 + 88) = v86;

  sub_266DA800C();

  sub_266C4756C(v87, v90);
  if (__swift_getEnumTagSinglePayload(v90, 1, v89) == 1)
  {
    v26 = v0 + 45;
  }

  else
  {
    v27 = v0[48];
    v28 = v0[44];
    v29 = v0[26];
    OUTLINED_FUNCTION_2_9();
    sub_266C55318(v30, v31, v32);
    sub_266C4756C(v27, v28);
    v33 = OUTLINED_FUNCTION_31();
    if (__swift_getEnumTagSinglePayload(v33, v34, v29) != 1)
    {
      v60 = v0[29];
      v61 = v0[30];
      v62 = v0[26];
      OUTLINED_FUNCTION_2_9();
      sub_266C55318(v63, v60, v64);
      v0[15] = v62;
      v65 = sub_266C4DB4C();
      v0[16] = v65;
      __swift_allocate_boxed_opaque_existential_1(v0 + 12);
      OUTLINED_FUNCTION_3_8();
      v67 = v66;
      sub_266C5537C(v61, v68, v66);
      v0[20] = v62;
      v0[21] = v65;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 17);
      sub_266C5537C(v60, boxed_opaque_existential_1, v67);
      OUTLINED_FUNCTION_14_5();
      OUTLINED_FUNCTION_24_1();
      v0[74] = v70;
      *v70 = v71;
      v70[1] = sub_266C53C78;
      OUTLINED_FUNCTION_39();

      __asm { BR              X5 }
    }

    v26 = v0 + 44;
    OUTLINED_FUNCTION_4_10();
    sub_266C553E0(v35, v36);
  }

  v37 = *v26;
  v38 = v0[49];
  v39 = v0[43];
  v40 = v0[26];
  sub_266C47654(v37, &qword_2800CA050, &qword_266DB0080);
  sub_266C4756C(v38, v39);
  v41 = OUTLINED_FUNCTION_31();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v41, v42, v40);
  v44 = v0[26];
  if (EnumTagSinglePayload == 1)
  {
    sub_266C47654(v0[43], &qword_2800CA050, &qword_266DB0080);
    v45 = OUTLINED_FUNCTION_42();
    sub_266C4756C(v45, v46);
    v47 = OUTLINED_FUNCTION_55();
    if (__swift_getEnumTagSinglePayload(v47, v48, v44) == 1)
    {
      sub_266C47654(v0[42], &qword_2800CA050, &qword_266DB0080);
      OUTLINED_FUNCTION_14_5();
      OUTLINED_FUNCTION_24_1();
      v0[77] = v49;
      *v49 = v50;
      v49[1] = sub_266C54584;
      OUTLINED_FUNCTION_39();

      __asm { BR              X3 }
    }

    v74 = v0[26];
    v75 = v0[27];
    OUTLINED_FUNCTION_2_9();
    sub_266C55318(v76, v75, v77);
    v0[5] = v74;
    v0[6] = sub_266C4DB4C();
    __swift_allocate_boxed_opaque_existential_1(v0 + 2);
    OUTLINED_FUNCTION_3_8();
    sub_266C5537C(v75, v78, v79);
    OUTLINED_FUNCTION_14_5();
    OUTLINED_FUNCTION_24_1();
    v0[76] = v80;
    *v80 = v81;
    OUTLINED_FUNCTION_36_0(v80);
  }

  else
  {
    v53 = v0[28];
    OUTLINED_FUNCTION_2_9();
    sub_266C55318(v54, v53, v55);
    v0[10] = v44;
    v0[11] = sub_266C4DB4C();
    __swift_allocate_boxed_opaque_existential_1(v0 + 7);
    OUTLINED_FUNCTION_3_8();
    sub_266C5537C(v53, v56, v57);
    OUTLINED_FUNCTION_14_5();
    OUTLINED_FUNCTION_24_1();
    v0[75] = v58;
    *v58 = v59;
    OUTLINED_FUNCTION_36_0(v58);
  }

  OUTLINED_FUNCTION_39();

  __asm { BR              X4 }
}

uint64_t sub_266C53C78()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 136));
  __swift_destroy_boxed_opaque_existential_0((v2 + 96));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266C53D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_33();
  v52 = v32[48];
  v53 = v32[49];
  v33 = v32[35];
  v34 = v32[30];
  v35 = v32[29];

  sub_266C553E0(v35, type metadata accessor for Snippets);
  sub_266C553E0(v34, type metadata accessor for Snippets);
  v36 = OUTLINED_FUNCTION_83();
  v37(v36);
  v38 = OUTLINED_FUNCTION_38();
  v39(v38);
  OUTLINED_FUNCTION_31_1(v52);
  OUTLINED_FUNCTION_31_1(v53);
  v40 = OUTLINED_FUNCTION_0_18();
  sub_266C47654(v40, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(type metadata accessor for Snippets, &qword_2800CA048, &unk_266DAFC00);

  v41 = OUTLINED_FUNCTION_17_6();
  v42(v41);
  sub_266C47654(&qword_2800CA050, &qword_2800CA038, &unk_266DAFBF0);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_24_2();

  return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, v52, v53, a30, a31, a32);
}

uint64_t sub_266C53FA4()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266C540A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_26_2();
  v35 = *(v33 + 224);

  OUTLINED_FUNCTION_4_10();
  sub_266C553E0(v35, v36);
  v37 = OUTLINED_FUNCTION_83();
  v38(v37);
  v39 = OUTLINED_FUNCTION_38();
  v40(v39);
  v41 = OUTLINED_FUNCTION_42();
  sub_266C47654(v41, v42, &qword_266DB0080);
  OUTLINED_FUNCTION_31_1(v32);
  v43 = OUTLINED_FUNCTION_0_18();
  sub_266C47654(v43, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v34 + 8, &qword_2800CA048, &unk_266DAFC00);

  v44 = OUTLINED_FUNCTION_17_6();
  v45(v44);
  sub_266C47654(&qword_2800CA050, &qword_2800CA038, &unk_266DAFBF0);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_24_2();

  return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_266C54294()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_10_3();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 16));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266C54394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_26_2();
  v35 = *(v33 + 216);

  OUTLINED_FUNCTION_4_10();
  sub_266C553E0(v35, v36);
  v37 = OUTLINED_FUNCTION_83();
  v38(v37);
  v39 = OUTLINED_FUNCTION_38();
  v40(v39);
  v41 = OUTLINED_FUNCTION_42();
  sub_266C47654(v41, v42, &qword_266DB0080);
  OUTLINED_FUNCTION_31_1(v32);
  v43 = OUTLINED_FUNCTION_0_18();
  sub_266C47654(v43, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v34 + 8, &qword_2800CA048, &unk_266DAFC00);

  v44 = OUTLINED_FUNCTION_17_6();
  v45(v44);
  sub_266C47654(&qword_2800CA050, &qword_2800CA038, &unk_266DAFBF0);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_24_2();

  return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_266C54584()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v1 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_266C54684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_33();
  v34 = *(v32 + 392);

  v35 = OUTLINED_FUNCTION_83();
  v36(v35);
  v37 = OUTLINED_FUNCTION_38();
  v38(v37);
  v39 = OUTLINED_FUNCTION_42();
  sub_266C47654(v39, v40, &qword_266DB0080);
  OUTLINED_FUNCTION_31_1(v34);
  v41 = OUTLINED_FUNCTION_0_18();
  sub_266C47654(v41, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v33, &qword_2800CA048, &unk_266DAFC00);

  v42 = OUTLINED_FUNCTION_17_6();
  v43(v42);
  sub_266C47654(&qword_2800CA050, &qword_2800CA038, &unk_266DAFBF0);

  OUTLINED_FUNCTION_15_4();
  OUTLINED_FUNCTION_24_2();

  return v45(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32);
}

uint64_t sub_266C54878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_33();
  v33 = *(v32 + 552);
  v47 = *(v32 + 472);
  v48 = *(v32 + 464);
  v34 = *(v32 + 424);
  v49 = *(v32 + 456);
  v50 = *(v32 + 432);
  v35 = *(v32 + 408);
  v36 = *(v32 + 416);
  v37 = *(v32 + 400);
  v51 = *(v32 + 392);
  v52 = *(v32 + 384);
  v53 = *(v32 + 376);
  v54 = *(v32 + 368);
  v55 = *(v32 + 360);
  v56 = *(v32 + 352);
  v57 = *(v32 + 344);
  v58 = *(v32 + 336);
  v59 = *(v32 + 312);
  v60 = *(v32 + 304);
  v61 = *(v32 + 296);
  v62 = *(v32 + 288);
  v63 = *(v32 + 264);
  v64 = *(v32 + 240);
  v65 = *(v32 + 232);
  v66 = *(v32 + 224);
  v67 = *(v32 + 216);

  (*(v35 + 8))(v36, v37);
  sub_266C47654(v34, &qword_2800CA038, &unk_266DAFBF0);
  *(v33 + 16) = 0;

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_24_2();

  return v39(v38, v39, v40, v41, v42, v43, v44, v45, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, a30, a31, a32);
}

uint64_t sub_266C54A70(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_266C54B08;

  return sub_266C52334(a2);
}

uint64_t sub_266C54B08(uint64_t a1)
{
  OUTLINED_FUNCTION_23_0();
  v5 = v4;
  OUTLINED_FUNCTION_10_3();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_9_2();
  *v8 = v7;

  if (!v1)
  {
    **(v5 + 16) = a1;
  }

  v9 = *(v7 + 8);

  return v9();
}

uint64_t sub_266C54C04()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266C48BB4;

  return sub_266C524C0();
}

uint64_t sub_266C54CC4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266C4716C;

  return sub_266C52AAC();
}

uint64_t sub_266C54D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_266C48BB4;

  return MEMORY[0x2821B9F38](a1, a2, a3, a4, a5);
}

uint64_t sub_266C54E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_266C48BB4;

  return MEMORY[0x2821B9F48](a1, a2, a3, a4, a5);
}

uint64_t sub_266C54F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_266C48BB4;

  return MEMORY[0x2821B9F40](a1, a2, a3, a4);
}

uint64_t sub_266C54FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_266C48BB4;

  return MEMORY[0x2821B9F58](a1, a2, a3, a4);
}

uint64_t sub_266C55098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_266C48BB4;

  return MEMORY[0x2821BBB18](a1, a2, a3, a4, a5, a6);
}

uint64_t sub_266C55174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_266C48BB4;

  return MEMORY[0x2821BBB20](a1, a2, a3, a4, a5, a6, a7);
}

unint64_t sub_266C5525C()
{
  result = qword_2800CA250;
  if (!qword_2800CA250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA250);
  }

  return result;
}

unint64_t sub_266C552B4()
{
  result = qword_2800CA258;
  if (!qword_2800CA258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800CA260, qword_266DB0398);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA258);
  }

  return result;
}

uint64_t sub_266C55318(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_9_3();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_266C5537C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_9_3();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_266C553E0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_8_0();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_266C55434()
{
  result = qword_2800CA280;
  if (!qword_2800CA280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA280);
  }

  return result;
}

unint64_t sub_266C55488()
{
  result = qword_2800CA288;
  if (!qword_2800CA288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA288);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10SiriFindMy27LocationDisambiguationErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t OUTLINED_FUNCTION_0_18()
{
  result = v0[38];
  v4 = v0[29];
  v3 = v0[30];
  *(v1 - 112) = v0[33];
  *(v1 - 104) = v3;
  v5 = v0[27];
  v6 = v0[28];
  *(v1 - 96) = v4;
  *(v1 - 88) = v6;
  *(v1 - 80) = v5;
  return result;
}

uint64_t OUTLINED_FUNCTION_7_6(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_14_5()
{

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_31_1(uint64_t a1)
{

  return sub_266C47654(a1, v1, v2);
}

void OUTLINED_FUNCTION_45_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t sub_266C556E8(unint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  MEMORY[0x28223BE20](v3 - 8);
  v51 = v46 - v4;
  v5 = sub_266DA919C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v46 - v10;
  sub_266DA928C();
  if (!v12)
  {
    if (qword_28156F1D8 != -1)
    {
      OUTLINED_FUNCTION_0_19(&qword_28156F1D8);
    }

    v33 = sub_266DA94AC();
    __swift_project_value_buffer(v33, &unk_28156F1E0);

    v34 = sub_266DA948C();
    v35 = sub_266DAAAEC();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v55 = a1;
      v56 = v37;
      *v36 = 136315138;
      sub_266DA929C();
      sub_266C55E04();
      v38 = sub_266DAB13C();
      v40 = sub_266C22A3C(v38, v39, &v56);

      *(v36 + 4) = v40;
      _os_log_impl(&dword_266C08000, v34, v35, "Provided app did not have an app id: %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v37);
      OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_6_1();
    }

    else
    {
    }

    return 0;
  }

  v46[1] = v1;
  sub_266DAA77C();

  v47 = v11;
  v48 = v6;
  (*(v6 + 32))(v11, v9, v5);
  v13 = sub_266DA7E8C();
  if (!v13 || (v14 = sub_266C55E5C(v13)) == 0)
  {
LABEL_15:
    if (qword_28156F1D8 != -1)
    {
LABEL_35:
      OUTLINED_FUNCTION_0_19(&qword_28156F1D8);
    }

    v23 = sub_266DA94AC();
    __swift_project_value_buffer(v23, &unk_28156F1E0);

    v24 = sub_266DA948C();
    v25 = sub_266DAAAEC();

    v26 = os_log_type_enabled(v24, v25);
    v27 = v48;
    if (v26)
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v55 = a1;
      v56 = v29;
      *v28 = 136315138;
      sub_266DA929C();
      sub_266C55E04();
      v30 = sub_266DAB13C();
      v32 = sub_266C22A3C(v30, v31, &v56);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_266C08000, v24, v25, "Could not create AppInfo for %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_6_1();
    }

    else
    {
    }

    (*(v27 + 8))(v47, v5);
    return 0;
  }

  v15 = v14;
  v16 = *(v14 + 16);
  if (v16)
  {
    v50 = v5;
    v46[0] = a1;
    v56 = MEMORY[0x277D84F90];
    sub_266DAAE8C();
    v5 = sub_266C293FC(v15);
    v18 = v15 + 64;
    v19 = v16 - 1;
    v49 = v15 + 64;
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v5 < 1 << *(v15 + 32))
      {
        a1 = v5 >> 6;
        if ((*(v18 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        if (v17 != *(v15 + 36))
        {
          goto LABEL_31;
        }

        v52 = v19;
        v53 = v17;
        v54 = *(*(v15 + 56) + 16 * v5);
        sub_266DA923C();
        swift_allocObject();

        sub_266DA922C();
        v20 = v51;
        sub_266DAA77C();
        v21 = v50;
        __swift_storeEnumTagSinglePayload(v20, 0, 1, v50);
        sub_266DA920C();

        sub_266C55ECC(v20);
        sub_266DAA77C();
        __swift_storeEnumTagSinglePayload(v20, 0, 1, v21);
        sub_266DA91FC();

        sub_266C55ECC(v20);
        sub_266DA921C();

        sub_266DAAE6C();
        sub_266DAAE9C();
        sub_266DAAEAC();
        sub_266DAAE7C();
        if (v5 >= -(-1 << *(v15 + 32)))
        {
          goto LABEL_32;
        }

        v18 = v49;
        if ((*(v49 + 8 * a1) & (1 << v5)) == 0)
        {
          goto LABEL_33;
        }

        if (v53 != *(v15 + 36))
        {
          goto LABEL_34;
        }

        v22 = sub_266DAAD2C();
        if (!v52)
        {

          v5 = v50;
          goto LABEL_28;
        }

        v5 = v22;
        v17 = *(v15 + 36);
        v19 = v52 - 1;
        if (v22 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_28:
  sub_266DA912C();
  swift_allocObject();
  sub_266DA911C();
  v43 = v47;
  v42 = v48;
  v44 = v51;
  (*(v48 + 16))(v51, v47, v5);
  __swift_storeEnumTagSinglePayload(v44, 0, 1, v5);
  sub_266DA910C();

  sub_266C55ECC(v44);
  sub_266DA90FC();

  v41 = sub_266DA913C();

  (*(v42 + 8))(v43, v5);
  return v41;
}

unint64_t sub_266C55E04()
{
  result = qword_2800CA290;
  if (!qword_2800CA290)
  {
    sub_266DA929C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA290);
  }

  return result;
}

uint64_t sub_266C55E5C(void *a1)
{
  v2 = [a1 appNameMap];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_266DAA6AC();

  return v3;
}

uint64_t sub_266C55ECC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_0_19(uint64_t a1)
{

  return swift_once();
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_266C55F68(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_266C55FA8(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_266C56000()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CA298);
  v1 = __swift_project_value_buffer(v0, qword_2800CA298);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_266C560C8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA2B0, &qword_266DB5C10);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-v5];
  if ([a1 action] == 2)
  {
    if (qword_2800C91A8 != -1)
    {
      swift_once();
    }

    v7 = sub_266DA94AC();
    __swift_project_value_buffer(v7, qword_2800CA298);
    v8 = sub_266DA948C();
    v9 = sub_266DAAAFC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_266C08000, v8, v9, "Removing geo fences is not currently supported.", v10, 2u);
      MEMORY[0x26D5F2480](v10, -1, -1);
    }

    v11[15] = 1;
    sub_266C562D0();
    sub_266DA975C();
    sub_266C56324();
    sub_266DA97EC();
    (*(v4 + 8))(v6, v3);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v1, v1[3]);
    sub_266CE50C8();
  }
}

unint64_t sub_266C562D0()
{
  result = qword_2800CA2B8;
  if (!qword_2800CA2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA2B8);
  }

  return result;
}

unint64_t sub_266C56324()
{
  result = qword_2800CA2C0;
  if (!qword_2800CA2C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800CA2B0, &qword_266DB5C10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA2C0);
  }

  return result;
}

uint64_t sub_266C56388@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA2E0, &unk_266DB05F0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16 - v3;
  v5 = sub_266DA876C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v16 - v10;
  if (qword_28156F798 != -1)
  {
    swift_once();
  }

  type metadata accessor for ContactNLIntent(0);
  OUTLINED_FUNCTION_0_20(&qword_28156F668);
  sub_266DA871C();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_266C57D90(v4);
    v12 = 1;
  }

  else
  {
    (*(v6 + 32))(v11, v4, v5);
    (*(v6 + 16))(v9, v11, v5);
    v13 = sub_266DA850C();
    OUTLINED_FUNCTION_7_7(v13);
    OUTLINED_FUNCTION_9_4();
    sub_266DA84FC();
    sub_266DA866C();
    (*(v6 + 8))(v11, v5);
    v12 = 0;
  }

  v14 = sub_266DA867C();
  return __swift_storeEnumTagSinglePayload(a1, v12, 1, v14);
}

uint64_t sub_266C565E0()
{
  if (qword_2800C91B0 != -1)
  {
    swift_once();
  }

  type metadata accessor for ContactNLIntent(0);
  v0 = OUTLINED_FUNCTION_0_20(&qword_28156F668);
  OUTLINED_FUNCTION_10_5(v0, v1, v2, v3, v4, v5, v6, v7, v10, v11, SWORD2(v11), SBYTE6(v11), SHIBYTE(v11));
  v8 = 6647407;
  if (v12)
  {
    v8 = 31085;
  }

  if (v12 == 2)
  {
    return 0;
  }

  else
  {
    return v8;
  }
}

uint64_t sub_266C56690()
{
  if (qword_28156F7B0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_266C566EC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA300, &qword_266DB0610);
  OUTLINED_FUNCTION_7_7(v0);
  OUTLINED_FUNCTION_8_1();
  result = sub_266DA851C();
  qword_28156F6C8 = result;
  return result;
}

uint64_t sub_266C56744()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA2D8, &qword_266DB05E8);
  swift_allocObject();
  result = sub_266DA851C();
  qword_28156F760 = result;
  return result;
}

uint64_t sub_266C567AC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA2D0, &qword_266DB05E0);
  OUTLINED_FUNCTION_7_7(v0);
  result = sub_266DA851C();
  qword_28156F728 = result;
  return result;
}

uint64_t sub_266C5680C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA2D8, &qword_266DB05E8);
  OUTLINED_FUNCTION_7_7(v0);
  OUTLINED_FUNCTION_8_1();
  result = sub_266DA851C();
  qword_28156F6A0 = result;
  return result;
}

uint64_t sub_266C56860()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA2F8, &qword_266DB0608);
  OUTLINED_FUNCTION_7_7(v0);
  result = sub_266DA851C();
  qword_28156F718 = result;
  return result;
}

uint64_t sub_266C568C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA2E8, &qword_266DB5980);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_266DAE4A0;
  v1 = sub_266DA850C();
  swift_allocObject();
  v2 = sub_266DA84FC();
  v3 = MEMORY[0x277D5E210];
  *(v0 + 56) = v1;
  *(v0 + 64) = v3;
  *(v0 + 32) = v2;
  sub_266DA83FC();
  swift_allocObject();
  result = sub_266DA83EC();
  qword_28156F7A0 = result;
  return result;
}

uint64_t sub_266C56990()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA2E8, &qword_266DB5980);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_266DB05B0;
  if (qword_28156F6C0 != -1)
  {
    swift_once();
  }

  v1 = qword_28156F6C8;
  *(v0 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA300, &qword_266DB0610);
  *(v0 + 64) = sub_266C230E8(&qword_28156F1B8, &qword_2800CA300, &qword_266DB0610, MEMORY[0x277D5E430]);
  *(v0 + 32) = v1;
  v2 = qword_28156F758;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_28156F760;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA2D8, &qword_266DB05E8);
  *(v0 + 96) = v4;
  v5 = sub_266C230E8(&qword_28156F1A8, &qword_2800CA2D8, &qword_266DB05E8, MEMORY[0x277D5E430]);
  *(v0 + 104) = v5;
  *(v0 + 72) = v3;
  v6 = qword_28156F720;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = qword_28156F728;
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA2D0, &qword_266DB05E0);
  *(v0 + 144) = sub_266C230E8(&qword_28156F1C8, &qword_2800CA2D0, &qword_266DB05E0, MEMORY[0x277D5E430]);
  *(v0 + 112) = v7;
  v8 = qword_28156F698;

  if (v8 != -1)
  {
    swift_once();
  }

  v9 = qword_28156F6A0;
  *(v0 + 176) = v4;
  *(v0 + 184) = v5;
  *(v0 + 152) = v9;
  v10 = qword_28156F798;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = qword_28156F7A0;
  v12 = sub_266DA83FC();
  v13 = MEMORY[0x277D5E210];
  *(v0 + 216) = v12;
  *(v0 + 224) = v13;
  *(v0 + 192) = v11;
  v14 = qword_28156F710;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = qword_28156F718;
  *(v0 + 256) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA2F8, &qword_266DB0608);
  *(v0 + 264) = sub_266C230E8(&qword_28156F1D0, &qword_2800CA2F8, &qword_266DB0608, MEMORY[0x277D5E430]);
  *(v0 + 232) = v15;
  v16 = qword_28156F788;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = qword_28156F790;
  *(v0 + 296) = v12;
  *(v0 + 304) = v13;
  *(v0 + 272) = v17;
  sub_266DA849C();
  swift_allocObject();

  result = sub_266DA848C();
  qword_28156F7B8 = result;
  return result;
}

uint64_t sub_266C56D5C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA2D8, &qword_266DB05E8);
  OUTLINED_FUNCTION_7_7(v0);
  OUTLINED_FUNCTION_9_4();
  result = sub_266DA851C();
  qword_28156F700 = result;
  return result;
}

uint64_t sub_266C56DB8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA2F0, &qword_266DB0600);
  swift_allocObject();
  result = sub_266DA851C();
  qword_2800CA2C8 = result;
  return result;
}

uint64_t sub_266C56E20()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA2E8, &qword_266DB5980);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_266DB05C0;
  if (qword_2800C91B0 != -1)
  {
    swift_once();
  }

  v1 = qword_2800CA2C8;
  *(v0 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA2F0, &qword_266DB0600);
  *(v0 + 64) = sub_266C230E8(&qword_2800CA448, &qword_2800CA2F0, &qword_266DB0600, MEMORY[0x277D5E430]);
  *(v0 + 32) = v1;
  v2 = qword_28156F6F8;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_28156F700;
  *(v0 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA2D8, &qword_266DB05E8);
  *(v0 + 104) = sub_266C230E8(&qword_28156F1A8, &qword_2800CA2D8, &qword_266DB05E8, MEMORY[0x277D5E430]);
  *(v0 + 72) = v3;
  sub_266DA83FC();
  swift_allocObject();

  result = sub_266DA83EC();
  qword_28156F750 = result;
  return result;
}

uint64_t sub_266C56FE0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA2E8, &qword_266DB5980);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_266DAE4A0;
  if (qword_28156F748 != -1)
  {
    swift_once();
  }

  v1 = qword_28156F750;
  v2 = sub_266DA83FC();
  v3 = MEMORY[0x277D5E210];
  *(v0 + 56) = v2;
  *(v0 + 64) = v3;
  *(v0 + 32) = v1;
  swift_allocObject();

  result = sub_266DA83EC();
  qword_28156F688 = result;
  return result;
}

uint64_t sub_266C570C4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA310, &qword_266DB0620);
  swift_allocObject();
  result = sub_266DA851C();
  qword_28156F770 = result;
  return result;
}

uint64_t sub_266C5712C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA308, &qword_266DB0618);
  swift_allocObject();
  result = sub_266DA851C();
  qword_28156F6E8 = result;
  return result;
}

uint64_t sub_266C57194()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA2E8, &qword_266DB5980);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_266DB05D0;
  if (qword_28156F768 != -1)
  {
    swift_once();
  }

  v1 = qword_28156F770;
  *(v0 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA310, &qword_266DB0620);
  *(v0 + 64) = sub_266C230E8(&qword_28156F1B0, &qword_2800CA310, &qword_266DB0620, MEMORY[0x277D5E430]);
  *(v0 + 32) = v1;
  v2 = qword_28156F6E0;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_28156F6E8;
  *(v0 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA308, &qword_266DB0618);
  *(v0 + 104) = sub_266C230E8(&qword_28156F1C0, &qword_2800CA308, &qword_266DB0618, MEMORY[0x277D5E430]);
  *(v0 + 72) = v3;
  v4 = qword_28156F680;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = qword_28156F688;
  v6 = sub_266DA83FC();
  v7 = MEMORY[0x277D5E210];
  *(v0 + 136) = v6;
  *(v0 + 144) = v7;
  *(v0 + 112) = v5;
  swift_allocObject();

  result = sub_266DA83EC();
  qword_28156F790 = result;
  return result;
}

unint64_t sub_266C5739C()
{
  OUTLINED_FUNCTION_3_9();
  sub_266DAAF8C();
  OUTLINED_FUNCTION_6_9();
  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_266C573E8(char a1)
{
  if (a1)
  {
    return 31085;
  }

  else
  {
    return 6647407;
  }
}

unint64_t sub_266C5740C()
{
  OUTLINED_FUNCTION_3_9();
  sub_266DAAF8C();
  OUTLINED_FUNCTION_6_9();
  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_266C5744C(char a1)
{
  result = 28265;
  switch(a1)
  {
    case 1:
      result = 28271;
      break;
    case 2:
      result = 1918985582;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_266C574C4()
{
  OUTLINED_FUNCTION_3_9();
  sub_266DAAF8C();
  OUTLINED_FUNCTION_6_9();
  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_266C57508(char a1)
{
  if (a1)
  {
    return 0x79627261656ELL;
  }

  else
  {
    return 6647407;
  }
}

unint64_t sub_266C57534()
{
  OUTLINED_FUNCTION_3_9();
  sub_266DAB1BC();
  OUTLINED_FUNCTION_6_9();
  if (v0 >= 0x11)
  {
    return 17;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_266C5757C(char a1)
{
  result = 1684957542;
  switch(a1)
  {
    case 1:
      result = 7301239;
      break;
    case 2:
      v3 = 1634038371;
      goto LABEL_12;
    case 3:
      v3 = 1701602660;
LABEL_12:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x657400000000;
      break;
    case 4:
      result = 0x796669646F6DLL;
      break;
    case 5:
      result = 0x646E696620666D66;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0x69746F6E20666D66;
      break;
    case 8:
      result = 0x7369206572656877;
      break;
    case 9:
      result = 1701079400;
      break;
    case 10:
      result = 0x656469686E75;
      break;
    case 11:
      result = 1684104562;
      break;
    case 12:
      result = 0xD000000000000015;
      break;
    case 13:
      result = 0xD000000000000016;
      break;
    case 14:
      result = 0x636E756F6E6F7270;
      break;
    case 15:
      result = 0x6E20746567726F66;
      break;
    case 16:
      result = 0x72696620646E6966;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_266C57744()
{
  OUTLINED_FUNCTION_3_9();
  sub_266DAAF8C();
  OUTLINED_FUNCTION_6_9();
  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_266C57784(char a1)
{
  result = 0x657669727261;
  switch(a1)
  {
    case 1:
      result = 0x747261706564;
      break;
    case 2:
      result = 0x6576697272612069;
      break;
    case 3:
      result = 0x7472617065642069;
      break;
    case 4:
      result = 0x656D697420656E6FLL;
      break;
    case 5:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_266C5783C()
{
  OUTLINED_FUNCTION_3_9();
  sub_266DAAF8C();
  OUTLINED_FUNCTION_6_9();
  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_266C5787C(char a1)
{
  if (!a1)
  {
    return 7562617;
  }

  if (a1 == 1)
  {
    return 28526;
  }

  return 0x6C65636E6163;
}

uint64_t sub_266C578E0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_266C574C4();
  *a1 = result;
  return result;
}

uint64_t sub_266C57918()
{
  v1 = OUTLINED_FUNCTION_4_11();
  result = sub_266C573E8(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_266C579B4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_266C5740C();
  *a1 = result;
  return result;
}

unint64_t sub_266C579E4()
{
  v1 = OUTLINED_FUNCTION_4_11();
  result = sub_266C5744C(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_266C57A80@<X0>(_BYTE *a1@<X8>)
{
  result = sub_266C574C4();
  *a1 = result;
  return result;
}

uint64_t sub_266C57AB8()
{
  v1 = OUTLINED_FUNCTION_4_11();
  result = sub_266C57508(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_266C57B54@<X0>(_BYTE *a1@<X8>)
{
  result = sub_266C57534();
  *a1 = result;
  return result;
}

unint64_t sub_266C57B84()
{
  v1 = OUTLINED_FUNCTION_4_11();
  result = sub_266C5757C(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_266C57C20@<X0>(_BYTE *a1@<X8>)
{
  result = sub_266C57744();
  *a1 = result;
  return result;
}

unint64_t sub_266C57C50()
{
  v1 = OUTLINED_FUNCTION_4_11();
  result = sub_266C57784(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

unint64_t sub_266C57CEC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_266C5783C();
  *a1 = result;
  return result;
}

uint64_t sub_266C57D1C()
{
  v1 = OUTLINED_FUNCTION_4_11();
  result = sub_266C5787C(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t type metadata accessor for ContactNLIntent(uint64_t a1)
{
  result = qword_28156F648;
  if (!qword_28156F648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_266C57D90(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA2E0, &unk_266DB05F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_266C57E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v10 = a4(a1, a2, a3);
  v11 = a5();
  v12 = a6();

  return MEMORY[0x2821C21F8](a1, a2, v10, v11, v12);
}

uint64_t sub_266C57ED8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_266DA8BDC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_266C57F58(uint64_t a1)
{
  v2 = sub_266C5934C(&unk_28156F670, &unk_266DB06E8);

  return MEMORY[0x2821C0C78](a1, v2);
}

uint64_t sub_266C57FC0(uint64_t a1)
{
  v2 = sub_266C5934C(&unk_28156F670, &unk_266DB06E8);

  return MEMORY[0x2821C0C68](a1, v2);
}

uint64_t sub_266C58018(uint64_t a1)
{
  v2 = sub_266C5934C(&unk_28156F670, &unk_266DB06E8);

  return MEMORY[0x2821C0C70](a1, v2);
}

uint64_t sub_266C58070()
{
  if (qword_28156F6C0 != -1)
  {
    OUTLINED_FUNCTION_1_13(&qword_28156F6C0);
  }

  type metadata accessor for ContactNLIntent(0);
  v0 = OUTLINED_FUNCTION_0_20(&qword_28156F668);
  OUTLINED_FUNCTION_10_5(v0, v1, v2, v3, v4, v5, v6, v7, v10, v11, SWORD2(v11), SBYTE6(v11), SHIBYTE(v11));
  if (v12 == 17)
  {
    v8 = 0;
  }

  else
  {
    sub_266C1778C(v12);
  }

  return v8 & 1;
}

uint64_t sub_266C58104()
{
  if (qword_28156F6C0 != -1)
  {
    OUTLINED_FUNCTION_1_13(&qword_28156F6C0);
  }

  type metadata accessor for ContactNLIntent(0);
  v0 = OUTLINED_FUNCTION_0_20(&qword_28156F668);
  OUTLINED_FUNCTION_2_10(v0, v1, v2, v3, v4, v5, v6, v7, v44);
  v15 = v45;
  if (v45 == 17)
  {
LABEL_4:
    OUTLINED_FUNCTION_2_10(v15, v8, v9, v10, v11, v12, v13, v14, v45);
    if (v45 == 17)
    {
      v16 = 0;
      goto LABEL_19;
    }

    if (sub_266C5757C(v45) != 0x646E696620666D66 || v20 != 0xE800000000000000)
    {
      v16 = sub_266DAB17C();

      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (sub_266C5757C(v45) != 0x7369206572656877 || v17 != 0xE800000000000000)
  {
    v19 = sub_266DAB17C();

    if (v19)
    {
      goto LABEL_18;
    }

    goto LABEL_4;
  }

LABEL_17:

LABEL_18:
  v16 = 1;
LABEL_19:
  if (qword_28156F768 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_5_9();
  if (v45 == 5)
  {
    v22 = 0;
  }

  else
  {
    sub_266C17B68(v45);
    v22 = v23;
  }

  if (qword_28156F6F8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_5_9();
  if (v47)
  {
    if (v45 == 0xD000000000000010 && v47 == 0x8000000266DC1CA0)
    {
      goto LABEL_39;
    }

    v25 = sub_266DAB17C();

    if (v25)
    {
      v34 = 1;
      goto LABEL_42;
    }
  }

  v26 = OUTLINED_FUNCTION_5_9();
  if (v47)
  {
    if (v45 != 0x79627261656ELL || v47 != 0xE600000000000000)
    {
      v34 = sub_266DAB17C();
LABEL_40:

      goto LABEL_42;
    }

LABEL_39:
    v34 = 1;
    goto LABEL_40;
  }

  v34 = 0;
LABEL_42:
  OUTLINED_FUNCTION_2_10(v26, v27, v28, v29, v30, v31, v32, v33, v45);
  if (v46[0] == 17)
  {
    v36 = 0;
    goto LABEL_55;
  }

  if (sub_266C5757C(v46[0]) == 7301239 && v37 == 0xE300000000000000)
  {

    if ((v22 | v34))
    {
      v36 = 1;
      goto LABEL_55;
    }
  }

  else
  {
    v39 = sub_266DAB17C();

    v40 = v39 ^ 1 | v22;
    if ((v40 | v34))
    {
      v36 = v40 ^ 1 | v39;
      goto LABEL_55;
    }
  }

  if (qword_28156F6E0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_5_9();
  v36 = v46[0] != 2;
LABEL_55:
  if (qword_28156F758 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_5_9();
  if (!v47)
  {
    goto LABEL_62;
  }

  v41 = HIBYTE(v47) & 0xF;
  if ((v47 & 0x2000000000000000) == 0)
  {
    v41 = *v46 & 0xFFFFFFFFFFFFLL;
  }

  if (v41)
  {
    v42 = 0;
  }

  else
  {
LABEL_62:
    v42 = v16 | v36;
  }

  return v42 & 1;
}

uint64_t getEnumTagSinglePayload for DefaultLocationLabel(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ContactNLIntent.Proximity(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ContactNLIntent.ContactAttribute(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for ContactNLIntent.Verb(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF0)
  {
    if (a2 + 16 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 16) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 17;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x11;
  v5 = v6 - 17;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ContactNLIntent.Verb(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEF)
  {
    v6 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
          *result = a2 + 16;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_266C588D0(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for ContactNLIntent.Confirmation(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_266C58AB0(uint64_t a1)
{
  result = sub_266DA8BDC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_266C58B88()
{
  result = qword_28156F780;
  if (!qword_28156F780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156F780);
  }

  return result;
}

unint64_t sub_266C58C24()
{
  result = qword_2800CA328;
  if (!qword_2800CA328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA328);
  }

  return result;
}

unint64_t sub_266C58C7C()
{
  result = qword_28156F778;
  if (!qword_28156F778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156F778);
  }

  return result;
}

unint64_t sub_266C58CD4()
{
  result = qword_2800CA330;
  if (!qword_2800CA330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA330);
  }

  return result;
}

unint64_t sub_266C58D70()
{
  result = qword_2800CA348;
  if (!qword_2800CA348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA348);
  }

  return result;
}

unint64_t sub_266C58DC8()
{
  result = qword_2800CA350;
  if (!qword_2800CA350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA350);
  }

  return result;
}

unint64_t sub_266C58E20()
{
  result = qword_28156F6D8;
  if (!qword_28156F6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156F6D8);
  }

  return result;
}

unint64_t sub_266C58EBC()
{
  result = qword_2800CA368;
  if (!qword_2800CA368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA368);
  }

  return result;
}

unint64_t sub_266C58F14()
{
  result = qword_28156F6D0;
  if (!qword_28156F6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156F6D0);
  }

  return result;
}

unint64_t sub_266C58F6C()
{
  result = qword_28156F7C8;
  if (!qword_28156F7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156F7C8);
  }

  return result;
}

unint64_t sub_266C59008()
{
  result = qword_2800CA380;
  if (!qword_2800CA380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA380);
  }

  return result;
}

unint64_t sub_266C59060()
{
  result = qword_28156F7C0;
  if (!qword_28156F7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156F7C0);
  }

  return result;
}

unint64_t sub_266C590B8()
{
  result = qword_28156F738;
  if (!qword_28156F738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156F738);
  }

  return result;
}

unint64_t sub_266C59154()
{
  result = qword_2800CA398;
  if (!qword_2800CA398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA398);
  }

  return result;
}

unint64_t sub_266C591AC()
{
  result = qword_28156F730;
  if (!qword_28156F730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156F730);
  }

  return result;
}

unint64_t sub_266C59204()
{
  result = qword_28156F6B0;
  if (!qword_28156F6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156F6B0);
  }

  return result;
}

unint64_t sub_266C592A0()
{
  result = qword_2800CA3B0;
  if (!qword_2800CA3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA3B0);
  }

  return result;
}

unint64_t sub_266C592F8()
{
  result = qword_28156F6A8;
  if (!qword_28156F6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156F6A8);
  }

  return result;
}

uint64_t sub_266C5934C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ContactNLIntent(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_266C59390()
{
  result = qword_2800CA3B8;
  if (!qword_2800CA3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA3B8);
  }

  return result;
}

unint64_t sub_266C593E4()
{
  result = qword_2800CA3C0;
  if (!qword_2800CA3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA3C0);
  }

  return result;
}

unint64_t sub_266C59438()
{
  result = qword_2800CA3C8;
  if (!qword_2800CA3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA3C8);
  }

  return result;
}

unint64_t sub_266C5948C()
{
  result = qword_2800CA3D0;
  if (!qword_2800CA3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA3D0);
  }

  return result;
}

unint64_t sub_266C594E0()
{
  result = qword_2800CA3D8;
  if (!qword_2800CA3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA3D8);
  }

  return result;
}

unint64_t sub_266C59534()
{
  result = qword_2800CA3E0;
  if (!qword_2800CA3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA3E0);
  }

  return result;
}

unint64_t sub_266C59588()
{
  result = qword_2800CA3E8;
  if (!qword_2800CA3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA3E8);
  }

  return result;
}

unint64_t sub_266C595DC()
{
  result = qword_2800CA3F0;
  if (!qword_2800CA3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA3F0);
  }

  return result;
}

unint64_t sub_266C59630()
{
  result = qword_2800CA3F8;
  if (!qword_2800CA3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA3F8);
  }

  return result;
}

unint64_t sub_266C59684()
{
  result = qword_2800CA400;
  if (!qword_2800CA400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA400);
  }

  return result;
}

unint64_t sub_266C596D8()
{
  result = qword_2800CA408;
  if (!qword_2800CA408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA408);
  }

  return result;
}

unint64_t sub_266C5972C()
{
  result = qword_2800CA410;
  if (!qword_2800CA410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA410);
  }

  return result;
}

unint64_t sub_266C59780()
{
  result = qword_2800CA418;
  if (!qword_2800CA418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA418);
  }

  return result;
}

unint64_t sub_266C597D4()
{
  result = qword_2800CA420;
  if (!qword_2800CA420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA420);
  }

  return result;
}

unint64_t sub_266C59828()
{
  result = qword_2800CA428;
  if (!qword_2800CA428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA428);
  }

  return result;
}

unint64_t sub_266C5987C()
{
  result = qword_2800CA430;
  if (!qword_2800CA430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA430);
  }

  return result;
}

unint64_t sub_266C598D0()
{
  result = qword_2800CA438;
  if (!qword_2800CA438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA438);
  }

  return result;
}

unint64_t sub_266C59924()
{
  result = qword_2800CA440;
  if (!qword_2800CA440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA440);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_20(unint64_t *a1)
{

  return sub_266C5934C(a1, &unk_266DB0E78);
}

uint64_t OUTLINED_FUNCTION_1_13(uint64_t a1)
{

  return swift_once();
}

void *OUTLINED_FUNCTION_2_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_266DA873C();
}

void *OUTLINED_FUNCTION_5_9()
{

  return sub_266DA873C();
}

uint64_t OUTLINED_FUNCTION_6_9()
{
}

uint64_t OUTLINED_FUNCTION_7_7(uint64_t a1)
{

  return swift_allocObject();
}

void *OUTLINED_FUNCTION_10_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{

  return sub_266DA873C();
}

uint64_t sub_266C59A8C(uint64_t a1)
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

uint64_t sub_266C59B2C()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CA450);
  v1 = __swift_project_value_buffer(v0, qword_2800CA450);
  if (qword_2800C9110 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_2800E61A8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_266C59BF4(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  return MEMORY[0x2822009F8](sub_266C59C3C);
}

uint64_t sub_266C59C3C()
{
  v1 = (*(*(v0[5] + 88) + 8))(*(v0[5] + 80));
  if (qword_2800C91C0 != -1)
  {
    swift_once();
  }

  v2 = sub_266DA94AC();
  __swift_project_value_buffer(v2, qword_2800CA450);
  v3 = sub_266DA948C();
  v4 = sub_266DAAB0C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v1 & 1;
    _os_log_impl(&dword_266C08000, v3, v4, "DeviceUnsupportedFlow isDeviceSupported: %{BOOL}d", v5, 8u);
    MEMORY[0x26D5F2480](v5, -1, -1);
  }

  v6 = sub_266DA948C();
  v7 = sub_266DAAB0C();
  v8 = os_log_type_enabled(v6, v7);
  if (v1)
  {
    if (v8)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      OUTLINED_FUNCTION_35_1(&dword_266C08000, v10, v11, "DeviceUnsupportedFlow device supported");
      MEMORY[0x26D5F2480](v9, -1, -1);
    }

    v12 = v0[4];

    *(v12 + 16) = 0;
    sub_266DA7D7C();
  }

  else
  {
    if (v8)
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      OUTLINED_FUNCTION_35_1(&dword_266C08000, v14, v15, "DeviceUnsupportedFlow creating simple output dialog for unsupported device");
      MEMORY[0x26D5F2480](v13, -1, -1);
    }

    v16 = v0[4];

    sub_266C59EC4(v16);
    sub_266DA7FEC();
    sub_266DA75FC();
    swift_allocObject();
    v0[2] = sub_266DA75EC();
    sub_266DA7D5C();
  }

  OUTLINED_FUNCTION_28();

  return v17();
}

uint64_t sub_266C59F04(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_266C48BB4;

  return sub_266C5A03C(a1, v3);
}

uint64_t sub_266C59FA0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_23_1();
  type metadata accessor for DeviceUnsupportedFlow(0, v3, *(v2 + 88), v4);
  swift_getWitnessTable();
  return sub_266DA79AC();
}

uint64_t sub_266C5A03C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_23_1();
  v5 = *(v4 + 88);
  OUTLINED_FUNCTION_23_1();
  v7 = *(v6 + 80);
  v12 = (v8 + *v8);
  swift_task_alloc();
  OUTLINED_FUNCTION_24_1();
  *(v2 + 16) = v9;
  *v9 = v10;
  v9[1] = sub_266C48BB4;

  return v12(a1, v7, v5);
}

uint64_t sub_266C5A198(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_9_3();
  (*(v3 + 8))(v2 + v4);
  return v2;
}

uint64_t sub_266C5A200(uint64_t a1, uint64_t a2)
{
  sub_266C5A198(a1, a2);
  v3 = *(*v2 + 48);
  v4 = *(*v2 + 52);

  return MEMORY[0x2821FE8D8](v2, v3, v4);
}

uint64_t sub_266C5A270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_266C5A320;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_266C5A320()
{
  OUTLINED_FUNCTION_22_0();
  v2 = v1;
  OUTLINED_FUNCTION_23_0();
  v3 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t sub_266C5A430(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_266C4716C;

  return sub_266C59BF4(a1);
}

uint64_t sub_266C5A4E0()
{
  OUTLINED_FUNCTION_22_0();
  v1[22] = v2;
  v1[23] = v0;
  v1[24] = type metadata accessor for Snippets(0);
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v3 = sub_266DA80AC();
  v1[29] = v3;
  OUTLINED_FUNCTION_11_3(v3);
  v1[30] = v4;
  v1[31] = swift_task_alloc();
  v5 = sub_266DA7C0C();
  v1[32] = v5;
  OUTLINED_FUNCTION_11_3(v5);
  v1[33] = v6;
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA040, &unk_266DB0070);
  v1[36] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA048, &unk_266DAFC00);
  v1[37] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA050, &qword_266DB0080);
  OUTLINED_FUNCTION_11_3(v7);
  v1[38] = v8;
  v1[39] = *(v9 + 64);
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v10);
}

uint64_t sub_266C5A768()
{
  v2 = v0[46];
  v1 = v0[47];
  v3 = v0[24];
  v0[48] = *(v0[23] + 88);
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v3);
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  v4 = swift_task_alloc();
  v0[49] = v4;
  *v4 = v0;
  v4[1] = sub_266C5A834;

  return sub_266D8E028();
}

uint64_t sub_266C5A834()
{
  OUTLINED_FUNCTION_23_0();
  v3 = v2;
  OUTLINED_FUNCTION_21_1();
  *v4 = v3;
  *v4 = *v1;
  v3[50] = v5;
  v3[51] = v0;

  if (v0)
  {
    v6 = v3[47];
    sub_266C47654(v3[46], &qword_2800CA050, &qword_266DB0080);
    sub_266C47654(v6, &qword_2800CA050, &qword_266DB0080);
    v7 = sub_266C5B98C;
  }

  else
  {
    v7 = sub_266C5A978;
  }

  return MEMORY[0x2822009F8](v7);
}

void sub_266C5A978()
{
  v1 = v0[50];
  v2 = v0[37];
  v3 = sub_266DA7E5C();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  sub_266DA7C7C();
  v4 = OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v4, v5, 1, v6);
  sub_266DA7BCC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC460, &unk_266DAFC20);
  v7 = swift_allocObject();
  v0[52] = v7;
  *(v7 + 16) = xmmword_266DAE3B0;
  *(v7 + 32) = v1;
  v8 = v1;
  if (sub_266C3A14C())
  {
    sub_266CB9F54();
    if ((v7 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x26D5F1780](0, v7);
    }

    else
    {
      v9 = *(v7 + 32);
    }

    v10 = v9;
    v11 = [v9 catId];

    v75 = sub_266DAA70C();
    v78 = v12;
  }

  else
  {
    v75 = 0;
    v78 = 0;
  }

  v14 = v0[47];
  v13 = v0[48];
  v15 = v0[45];
  v16 = v0[44];
  v18 = v0[38];
  v17 = v0[39];
  v72 = v0[37];
  v73 = v0[36];
  v19 = v0[34];
  v71 = v0[35];
  v21 = v0[32];
  v20 = v0[33];
  v74 = v14;
  v76 = v0[24];
  v77 = v0[43];
  sub_266C4756C(v0[46], v15);
  sub_266C4756C(v14, v16);
  v22 = *(v18 + 80);
  v23 = (v22 + 24) & ~v22;
  v24 = (v17 + v22 + v23) & ~v22;
  v25 = swift_allocObject();
  v0[53] = v25;
  *(v25 + 16) = v13;
  sub_266C475DC(v15, v25 + v23);
  sub_266C475DC(v16, v25 + v24);
  (*(v20 + 16))(v19, v71, v21);
  v26 = swift_task_alloc();
  *(v26 + 16) = 0;
  *(v26 + 24) = 0;
  *(v26 + 32) = 0;
  *(v26 + 40) = v75;
  *(v26 + 48) = v78;
  *(v26 + 56) = v72;
  *(v26 + 64) = 514;
  *(v26 + 72) = sub_266C4876C;
  *(v26 + 80) = v25;
  *(v26 + 88) = v73;

  sub_266DA800C();

  sub_266C4756C(v74, v77);
  if (__swift_getEnumTagSinglePayload(v77, 1, v76) == 1)
  {
    v27 = v0 + 43;
  }

  else
  {
    v28 = v0[46];
    v29 = v0[42];
    v30 = v0[24];
    sub_266C476A8(v0[43], v0[28]);
    sub_266C4756C(v28, v29);
    v31 = OUTLINED_FUNCTION_31();
    if (__swift_getEnumTagSinglePayload(v31, v32, v30) != 1)
    {
      v54 = v0[27];
      v55 = v0[28];
      v56 = v0[24];
      sub_266C476A8(v0[42], v54);
      v0[15] = v56;
      v57 = sub_266C4DB4C();
      v0[16] = v57;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 12);
      sub_266C47750(v55, boxed_opaque_existential_1);
      v0[20] = v56;
      v0[21] = v57;
      v59 = __swift_allocate_boxed_opaque_existential_1(v0 + 17);
      sub_266C47750(v54, v59);
      OUTLINED_FUNCTION_10_4();
      OUTLINED_FUNCTION_24_1();
      v0[54] = v60;
      *v60 = v61;
      OUTLINED_FUNCTION_50_0(v60);
      OUTLINED_FUNCTION_25_0();

      __asm { BR              X5 }
    }

    v27 = v0 + 42;
    sub_266C477B4(v0[28]);
  }

  v33 = *v27;
  v34 = v0[47];
  v35 = v0[41];
  v36 = v0[24];
  sub_266C47654(v33, &qword_2800CA050, &qword_266DB0080);
  sub_266C4756C(v34, v35);
  v37 = OUTLINED_FUNCTION_31();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v37, v38, v36);
  v40 = v0[41];
  v41 = v0[24];
  if (EnumTagSinglePayload == 1)
  {
    v42 = v0[46];
    v43 = v0[40];
    sub_266C47654(v40, &qword_2800CA050, &qword_266DB0080);
    sub_266C4756C(v42, v43);
    v44 = OUTLINED_FUNCTION_55();
    if (__swift_getEnumTagSinglePayload(v44, v45, v41) == 1)
    {
      sub_266C47654(v0[40], &qword_2800CA050, &qword_266DB0080);
      OUTLINED_FUNCTION_10_4();
      OUTLINED_FUNCTION_24_1();
      v0[57] = v46;
      *v46 = v47;
      OUTLINED_FUNCTION_50_0(v46);
      OUTLINED_FUNCTION_25_0();

      __asm { BR              X3 }
    }

    v64 = v0[24];
    v65 = v0[25];
    sub_266C476A8(v0[40], v65);
    v0[5] = v64;
    v0[6] = sub_266C4DB4C();
    v66 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
    sub_266C47750(v65, v66);
    OUTLINED_FUNCTION_10_4();
    OUTLINED_FUNCTION_24_1();
    v0[56] = v67;
    *v67 = v68;
    OUTLINED_FUNCTION_50_0(v67);
  }

  else
  {
    v50 = v0[26];
    sub_266C476A8(v40, v50);
    v0[10] = v41;
    v0[11] = sub_266C4DB4C();
    v51 = __swift_allocate_boxed_opaque_existential_1(v0 + 7);
    sub_266C47750(v50, v51);
    OUTLINED_FUNCTION_10_4();
    OUTLINED_FUNCTION_24_1();
    v0[55] = v52;
    *v52 = v53;
    OUTLINED_FUNCTION_50_0(v52);
  }

  OUTLINED_FUNCTION_25_0();

  __asm { BR              X4 }
}

uint64_t sub_266C5AF68()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_21_1();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 136));
  __swift_destroy_boxed_opaque_existential_0((v2 + 96));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266C5B074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_57();
  v21 = v20[50];
  v37 = v20[46];
  v38 = v20[47];
  v22 = v20[28];
  v23 = v20[27];

  sub_266C477B4(v23);
  sub_266C477B4(v22);
  v24 = OUTLINED_FUNCTION_83();
  v25(v24);
  v26 = OUTLINED_FUNCTION_38();
  v27(v26);
  OUTLINED_FUNCTION_31_1(v37);
  OUTLINED_FUNCTION_31_1(v38);
  OUTLINED_FUNCTION_1_14();
  sub_266C47654(v23, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v22, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_39();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, v37, v38, a18, a19, a20);
}

uint64_t sub_266C5B210()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_21_1();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 56));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266C5B314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_14_6();
  v23 = *(v21 + 208);

  sub_266C477B4(v23);
  v24 = OUTLINED_FUNCTION_83();
  v25(v24);
  v26 = OUTLINED_FUNCTION_38();
  v27(v26);
  OUTLINED_FUNCTION_31_1(v20);
  OUTLINED_FUNCTION_31_1(a17);
  OUTLINED_FUNCTION_1_14();
  sub_266C47654(v22, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v23, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_39();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_266C5B48C()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  OUTLINED_FUNCTION_21_1();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v5 = v4;

  __swift_destroy_boxed_opaque_existential_0((v2 + 16));
  v6 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_266C5B590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_14_6();
  v23 = *(v21 + 200);

  sub_266C477B4(v23);
  v24 = OUTLINED_FUNCTION_83();
  v25(v24);
  v26 = OUTLINED_FUNCTION_38();
  v27(v26);
  OUTLINED_FUNCTION_31_1(v20);
  OUTLINED_FUNCTION_31_1(a17);
  OUTLINED_FUNCTION_1_14();
  sub_266C47654(v22, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v23, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_39();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_266C5B708()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_23_0();
  v1 = *v0;
  OUTLINED_FUNCTION_9_2();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_266C5B808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_57();
  v21 = v20[50];
  v22 = v20[46];
  v23 = v20[47];
  v24 = v20[33];

  v25 = OUTLINED_FUNCTION_83();
  v26(v25);
  v27 = OUTLINED_FUNCTION_38();
  v28(v27);
  OUTLINED_FUNCTION_31_1(v22);
  OUTLINED_FUNCTION_31_1(v23);
  OUTLINED_FUNCTION_1_14();
  sub_266C47654(v24 + 8, &qword_2800CA040, &unk_266DB0070);
  sub_266C47654(v21, &qword_2800CA048, &unk_266DAFC00);

  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_39();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_266C5B98C()
{

  OUTLINED_FUNCTION_28();

  return v0();
}

uint64_t sub_266C5BABC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266C4716C;

  return sub_266C5A4E0();
}

uint64_t sub_266C5BB54()
{
  OUTLINED_FUNCTION_22_0();
  v2 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_24_1();
  *(v0 + 16) = v3;
  *v3 = v4;
  v3[1] = sub_266C4716C;

  return sub_266C59F04(v2);
}

uint64_t sub_266C5BC20(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_266C5BC60(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void OUTLINED_FUNCTION_35_1(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 2u);
}

uint64_t sub_266C5BD50()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CA4E8);
  v1 = __swift_project_value_buffer(v0, qword_2800CA4E8);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_266C5BE18()
{
  v0 = [objc_opt_self() sharedManager];
  v1 = sub_266DAA6FC();
  v2 = [v0 retrieveAssetSet:v1 usages:0];

  qword_2800CA500 = v2;
}

uint64_t sub_266C5BEB4@<X0>(uint64_t a1@<X8>)
{
  if (qword_2800C91D0 != -1)
  {
    swift_once();
  }

  if (qword_2800CA500 && (v2 = [qword_2800CA500 assets]) != 0)
  {
    v3 = v2;
    sub_266C5C0EC();
    v4 = sub_266DAA6AC();
  }

  else
  {
    v4 = 0;
  }

  if (qword_2800C91C8 != -1)
  {
    swift_once();
  }

  v5 = sub_266DA94AC();
  __swift_project_value_buffer(v5, qword_2800CA4E8);

  v6 = sub_266DA948C();
  v7 = sub_266DAAACC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136446210;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA508, &unk_266DB1068);
    v10 = sub_266DAA72C();
    v12 = sub_266C22A3C(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_266C08000, v6, v7, "Assets: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x26D5F2480](v9, -1, -1);
    MEMORY[0x26D5F2480](v8, -1, -1);
  }

  if (v4)
  {
    return sub_266C2A3C0(v4, a1);
  }

  v14 = type metadata accessor for ConfigurationFiles(0);
  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v14);
}

unint64_t sub_266C5C0EC()
{
  result = qword_2800CA510;
  if (!qword_2800CA510)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800CA510);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for GeoFenceSettingError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_266C5C210()
{
  result = qword_2800CA518;
  if (!qword_2800CA518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA518);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for OpenModuleIntentTargetRepresentation(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_266C5C340()
{
  result = qword_2800CA520;
  if (!qword_2800CA520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA520);
  }

  return result;
}

unint64_t sub_266C5C394(uint64_t a1, uint64_t a2)
{
  v2 = sub_266DAAF8C();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_266C5C3E0(char a1)
{
  if (!a1)
  {
    return 0x656C706F6570;
  }

  if (a1 == 1)
  {
    return 0x73656369766564;
  }

  return 0x736D657469;
}

unint64_t sub_266C5C454@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_266C5C394(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_266C5C484@<X0>(uint64_t *a1@<X8>)
{
  result = sub_266C5C3E0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_266C5C4DC(uint64_t a1)
{
  v2 = sub_266C5C930();

  return MEMORY[0x28213DAB0](a1, v2);
}

uint64_t sub_266C5C518(uint64_t a1)
{
  v2 = sub_266C5C930();

  return MEMORY[0x28213DAD0](a1, v2);
}

uint64_t sub_266C5C554(uint64_t a1, uint64_t a2)
{
  v4 = sub_266C5C7C8();

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

uint64_t sub_266C5C5A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_266C5C930();

  return MEMORY[0x28213DAC0](a1, a2, a3, v6);
}

uint64_t sub_266C5C608(uint64_t a1, uint64_t a2)
{
  v4 = sub_266C5C7C8();

  return MEMORY[0x28213DE00](a1, a2, v4);
}

unint64_t sub_266C5C658()
{
  result = qword_2800CA528;
  if (!qword_2800CA528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA528);
  }

  return result;
}

unint64_t sub_266C5C6B0()
{
  result = qword_2800CA530;
  if (!qword_2800CA530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA530);
  }

  return result;
}

unint64_t sub_266C5C708()
{
  result = qword_2800CA538;
  if (!qword_2800CA538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800CA540, &qword_266DB1268);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA538);
  }

  return result;
}

unint64_t sub_266C5C770()
{
  result = qword_2800CA548;
  if (!qword_2800CA548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA548);
  }

  return result;
}

unint64_t sub_266C5C7C8()
{
  result = qword_2800CA550;
  if (!qword_2800CA550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA550);
  }

  return result;
}

unint64_t sub_266C5C820()
{
  result = qword_2800CA558;
  if (!qword_2800CA558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA558);
  }

  return result;
}

unint64_t sub_266C5C878()
{
  result = qword_2800CA560;
  if (!qword_2800CA560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA560);
  }

  return result;
}

unint64_t sub_266C5C8DC()
{
  result = qword_2800CA568;
  if (!qword_2800CA568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA568);
  }

  return result;
}

unint64_t sub_266C5C930()
{
  result = qword_2800CA570;
  if (!qword_2800CA570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA570);
  }

  return result;
}

uint64_t sub_266C5C988()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_28156F280);
  v1 = __swift_project_value_buffer(v0, qword_28156F280);
  if (qword_2800C90F0 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FC80);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_266C5CA50()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA578, &unk_266DB13C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_266DAE4A0;
  v2 = [v0 effectiveIdentifier];
  v3 = sub_266DAA70C();
  v5 = v4;

  *(inited + 32) = v3;
  *(inited + 40) = v5;
  *(inited + 48) = 1;
  return sub_266C678C8(inited);
}

id sub_266C5CB0C()
{
  v10 = sub_266DAAB7C();
  v0 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_0_6();
  v3 = v2 - v1;
  v4 = sub_266DAAB6C();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_6();
  v5 = sub_266DA9FDC();
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_0_6();
  v6 = [objc_allocWithZone(MEMORY[0x277D44160]) init];
  sub_266C29814(0, &qword_28156EFC0, 0x277D85C78);
  v7 = v6;
  sub_266DA9FBC();
  sub_266C3601C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC440, &qword_266DAF890);
  sub_266C5D904();
  sub_266DAAD0C();
  (*(v0 + 104))(v3, *MEMORY[0x277D85260], v10);
  v8 = sub_266DAABBC();
  OUTLINED_FUNCTION_2_11([v7 setFlags_], sel_setDispatchQueue_);

  return v7;
}

void sub_266C5CD70(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  OUTLINED_FUNCTION_26_0();
  v10 = swift_allocObject();
  v40 = a3;
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  v53 = sub_266C5D9F4;
  v54 = v10;
  aBlock = MEMORY[0x277D85DD0];
  v50 = 1107296256;
  v51 = sub_266C73FC4;
  v52 = &block_descriptor_0;
  v11 = _Block_copy(&aBlock);
  v41 = a4;

  OUTLINED_FUNCTION_2_11(v12, sel_setInvalidationHandler_);
  _Block_release(v11);
  v53 = sub_266C5D3A0;
  v54 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v50 = 1107296256;
  v51 = sub_266C73FC4;
  v52 = &block_descriptor_3;
  v13 = _Block_copy(&aBlock);
  OUTLINED_FUNCTION_2_11(v13, sel_setInterruptionHandler_);
  _Block_release(v13);
  OUTLINED_FUNCTION_26_0();
  v14 = swift_allocObject();
  v46 = a1;
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v53 = sub_266C5DA14;
  v54 = v14;
  aBlock = MEMORY[0x277D85DD0];
  v50 = 1107296256;
  v51 = sub_266C5D6BC;
  v52 = &block_descriptor_9;
  v15 = _Block_copy(&aBlock);
  v16 = a2;

  OUTLINED_FUNCTION_2_11(v17, sel_setDeviceFoundHandler_);
  _Block_release(v15);
  v42 = a5;
  v18 = [a5 activeDevices];
  v19 = sub_266C29814(0, &unk_28156EFB0, 0x277D44170);
  v20 = sub_266DAA93C();

  v21 = sub_266C3A14C();
  v22 = 0;
  v23 = v20 & 0xFFFFFFFFFFFFFF8;
  v43 = v21;
  v44 = v19;
  while (1)
  {
    if (v21 == v22)
    {

      OUTLINED_FUNCTION_26_0();
      v38 = swift_allocObject();
      *(v38 + 16) = v40;
      *(v38 + 24) = v41;
      v53 = sub_266C5DA1C;
      v54 = v38;
      aBlock = MEMORY[0x277D85DD0];
      v50 = 1107296256;
      v51 = sub_266D4E724;
      v52 = &block_descriptor_15;
      v39 = _Block_copy(&aBlock);

      [v42 activateWithCompletion_];
      _Block_release(v39);
      return;
    }

    if ((v20 & 0xC000000000000001) != 0)
    {
      v24 = MEMORY[0x26D5F1780](v22, v20);
    }

    else
    {
      if (v22 >= *(v23 + 16))
      {
        goto LABEL_15;
      }

      v24 = *(v20 + 8 * v22 + 32);
    }

    v25 = v24;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (qword_2800C91D8 != -1)
    {
      swift_once();
    }

    v26 = sub_266DA94AC();
    __swift_project_value_buffer(v26, qword_28156F280);
    v27 = v25;
    v28 = sub_266DA948C();
    v29 = sub_266DAAB0C();

    v47 = v29;
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v48 = v45;
      *v30 = 136315138;
      aBlock = sub_266C39CC0(v27, &selRef_name);
      v50 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9BE0, &qword_266DAE760);
      v32 = sub_266DAA72C();
      v34 = v16;
      v35 = sub_266C22A3C(v32, v33, &v48);
      v23 = v20 & 0xFFFFFFFFFFFFFF8;

      *(v30 + 4) = v35;
      v16 = v34;
      _os_log_impl(&dword_266C08000, v28, v47, "Companion link had cached device: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);
      v21 = v43;
      MEMORY[0x26D5F2480](v45, -1, -1);
      v36 = v30;
      v19 = v44;
      MEMORY[0x26D5F2480](v36, -1, -1);
    }

    v52 = v19;
    v53 = &off_28785F630;
    aBlock = v27;
    v37 = v27;
    v46(&aBlock);
    __swift_destroy_boxed_opaque_existential_0(&aBlock);

    ++v22;
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

uint64_t sub_266C5D298(uint64_t (*a1)(char *))
{
  if (qword_2800C91D8 != -1)
  {
    swift_once();
  }

  v2 = sub_266DA94AC();
  __swift_project_value_buffer(v2, qword_28156F280);
  v3 = sub_266DA948C();
  v4 = sub_266DAAB0C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_266C08000, v3, v4, "Companion Link Discovery Invalidated", v5, 2u);
    MEMORY[0x26D5F2480](v5, -1, -1);
  }

  v7 = 1;
  return a1(&v7);
}

void sub_266C5D3A0()
{
  if (qword_2800C91D8 != -1)
  {
    swift_once();
  }

  v0 = sub_266DA94AC();
  __swift_project_value_buffer(v0, qword_28156F280);
  oslog = sub_266DA948C();
  v1 = sub_266DAAAEC();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_266C08000, oslog, v1, "Companion Link Discovery Interrupted", v2, 2u);
    MEMORY[0x26D5F2480](v2, -1, -1);
  }
}

uint64_t sub_266C5D488(void *a1, void (*a2)(uint64_t *))
{
  if (qword_2800C91D8 != -1)
  {
    swift_once();
  }

  v4 = sub_266DA94AC();
  __swift_project_value_buffer(v4, qword_28156F280);
  v5 = a1;
  v6 = sub_266DA948C();
  v7 = sub_266DAAB0C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136315394;
    v21 = sub_266C39CC0(v5, &selRef_name);
    v22 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9BE0, &qword_266DAE760);
    v11 = sub_266DAA72C();
    v13 = sub_266C22A3C(v11, v12, &v20);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2080;
    v21 = sub_266C39CC0(v5, &selRef_idsDeviceIdentifier);
    v22 = v14;
    v15 = sub_266DAA72C();
    v17 = sub_266C22A3C(v15, v16, &v20);

    *(v8 + 14) = v17;
    _os_log_impl(&dword_266C08000, v6, v7, "Companion Link Discovery found device: %s %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D5F2480](v9, -1, -1);
    MEMORY[0x26D5F2480](v8, -1, -1);
  }

  v23 = sub_266C29814(0, &unk_28156EFB0, 0x277D44170);
  v24 = &off_28785F630;
  v21 = v5;
  v18 = v5;
  a2(&v21);
  return __swift_destroy_boxed_opaque_existential_0(&v21);
}

void sub_266C5D6BC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_266C5D724(void *a1, void (*a2)(char *))
{
  if (qword_2800C91D8 != -1)
  {
    swift_once();
  }

  v4 = sub_266DA94AC();
  __swift_project_value_buffer(v4, qword_28156F280);
  v5 = sub_266DA948C();
  v6 = sub_266DAAB0C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_266C08000, v5, v6, "Companion Link Discovery activate completion", v7, 2u);
    MEMORY[0x26D5F2480](v7, -1, -1);
  }

  if (a1)
  {
    v8 = a1;
    v9 = sub_266DA948C();
    v10 = sub_266DAAAEC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      v13 = sub_266DA72EC();
      *(v11 + 4) = v13;
      *v12 = v13;
      _os_log_impl(&dword_266C08000, v9, v10, "Companion Link Discovery activate error: %@", v11, 0xCu);
      sub_266C5DA24(v12);
      MEMORY[0x26D5F2480](v12, -1, -1);
      MEMORY[0x26D5F2480](v11, -1, -1);
    }

    v14 = 0;
    a2(&v14);
  }
}

unint64_t sub_266C5D904()
{
  result = qword_28156EFE8;
  if (!qword_28156EFE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800CC440, &qword_266DAF890);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156EFE8);
  }

  return result;
}

uint64_t sub_266C5D968(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_266C5D9A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_266C5DA24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9F78, &unk_266DB1430);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id OUTLINED_FUNCTION_2_11(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

_BYTE *storeEnumTagSinglePayload for ConfirmationTask(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for ConfirmationTask.Parser(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ConfirmationTask.Parser(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_266C5DD0C()
{
  v0 = sub_266DA94AC();
  __swift_allocate_value_buffer(v0, qword_2800CA580);
  v1 = __swift_project_value_buffer(v0, qword_2800CA580);
  if (qword_28156F870 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, &unk_28156FCA8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

unint64_t sub_266C5DDD8()
{
  result = qword_2800CA598;
  if (!qword_2800CA598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA598);
  }

  return result;
}

uint64_t sub_266C5DE2C(char *a1, int a2)
{
  LODWORD(v90) = a2;
  sub_266DA81DC();
  OUTLINED_FUNCTION_0_2();
  v82 = v4;
  v83 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_6();
  v81 = v6 - v5;
  sub_266DA819C();
  OUTLINED_FUNCTION_0_2();
  v88 = v8;
  v89 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0_6();
  v87 = v10 - v9;
  v11 = sub_266DA8BDC();
  OUTLINED_FUNCTION_0_2();
  v86 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_0_6();
  v16 = v15 - v14;
  v17 = sub_266DA81AC();
  OUTLINED_FUNCTION_0_2();
  v19 = v18;
  v21 = MEMORY[0x28223BE20](v20);
  v80 = &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v84 = &v79 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v79 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v79 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v79 - v32;
  MEMORY[0x28223BE20](v31);
  v35 = &v79 - v34;
  v36 = *(v19 + 16);
  v85 = a1;
  v37 = a1;
  v38 = v36;
  (v36)(&v79 - v34, v37, v17);
  v39 = (*(v19 + 88))(v35, v17);
  if (v39 == *MEMORY[0x277D5C128])
  {
    (v38)(v33, v35, v17);
    v40 = v17;
    (*(v19 + 96))(v33, v17);
    v41 = v86;
    v86[4](v16, v33, v11);
    v42 = v35;
    if (qword_2800C91E0 != -1)
    {
      OUTLINED_FUNCTION_0_21(&qword_2800C91E0);
    }

    v43 = sub_266DA94AC();
    __swift_project_value_buffer(v43, qword_2800CA580);
    v44 = sub_266DA948C();
    v45 = sub_266DAAB0C();
    if (OUTLINED_FUNCTION_16_0(v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_266C08000, v44, v45, "[ConfirmationTask] parseTask NLv3IntentOnly", v46, 2u);
      v42 = v35;
      OUTLINED_FUNCTION_6_1();
    }

    v47 = sub_266C5E720(v16, v90 & 1);
    (v41[1])(v16, v11);
    v48 = v40;
    goto LABEL_34;
  }

  v48 = v17;
  if (v39 == *MEMORY[0x277D5C150])
  {
    v86 = v38;
    (v38)(v30, v35, v17);
    (*(v19 + 96))(v30, v17);
    (*(v88 + 32))(v87, v30, v89);
    v49 = sub_266DA817C();
    v51 = v50;
    if (qword_2800C9400 != -1)
    {
      swift_once();
    }

    v52 = qword_2800CCE90;
    v53 = unk_2800CCE98;
    v91 = qword_2800CCE80;
    v92 = *algn_2800CCE88;

    MEMORY[0x26D5F1170](v52, v53);
    if (v49 == v91 && v51 == v92)
    {

      v42 = v35;
    }

    else
    {
      v55 = sub_266DAB17C();

      v42 = v35;
      if ((v55 & 1) == 0)
      {
        (*(v88 + 8))(v87, v89);
        v38 = v86;
LABEL_22:
        v63 = v84;
        if (qword_2800C91E0 != -1)
        {
          OUTLINED_FUNCTION_0_21(&qword_2800C91E0);
        }

        v64 = sub_266DA94AC();
        __swift_project_value_buffer(v64, qword_2800CA580);
        (v38)(v63, v85, v48);
        v65 = sub_266DA948C();
        v66 = sub_266DAAB0C();
        if (OUTLINED_FUNCTION_16_0(v66))
        {
          v67 = swift_slowAlloc();
          v90 = swift_slowAlloc();
          v91 = v90;
          *v67 = 136315138;
          (v38)(v80, v63, v48);
          v68 = sub_266DAA72C();
          v69 = v63;
          v71 = v70;
          (*(v19 + 8))(v69, v48);
          v72 = sub_266C22A3C(v68, v71, &v91);
          v42 = v35;

          *(v67 + 4) = v72;
          _os_log_impl(&dword_266C08000, v65, v66, "[ConfirmationTask] unsupported parse type: %s", v67, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v90);
          OUTLINED_FUNCTION_6_1();
          OUTLINED_FUNCTION_6_1();
        }

        else
        {

          (*(v19 + 8))(v63, v48);
        }

        v47 = 3;
        goto LABEL_34;
      }
    }

    if (qword_2800C91E0 != -1)
    {
      OUTLINED_FUNCTION_0_21(&qword_2800C91E0);
    }

    v73 = sub_266DA94AC();
    __swift_project_value_buffer(v73, qword_2800CA580);
    v74 = sub_266DA948C();
    v75 = sub_266DAAB0C();
    if (OUTLINED_FUNCTION_16_0(v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&dword_266C08000, v74, v75, "[ConfirmationTask] parseTask directInvocation", v76, 2u);
      OUTLINED_FUNCTION_6_1();
    }

    v77 = v87;
    v47 = sub_266C5EC54(v87);
    (*(v88 + 8))(v77, v89);
  }

  else
  {
    v42 = v35;
    if (v39 != *MEMORY[0x277D5C160])
    {
      goto LABEL_22;
    }

    (v38)(v27, v35, v48);
    (*(v19 + 96))(v27, v48);
    v57 = v81;
    v56 = v82;
    v58 = v83;
    (*(v82 + 32))(v81, v27, v83);
    if (qword_2800C91E0 != -1)
    {
      OUTLINED_FUNCTION_0_21(&qword_2800C91E0);
    }

    v59 = sub_266DA94AC();
    __swift_project_value_buffer(v59, qword_2800CA580);
    v60 = sub_266DA948C();
    v61 = sub_266DAAB0C();
    if (OUTLINED_FUNCTION_16_0(v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_266C08000, v60, v61, "[ConfirmationTask] parseTask uso", v62, 2u);
      v42 = v35;
      OUTLINED_FUNCTION_6_1();
    }

    v47 = sub_266C5F0A0(v57, v90 & 1);
    (*(v56 + 8))(v57, v58);
  }

LABEL_34:
  (*(v19 + 8))(v42, v48);
  return v47;
}

uint64_t sub_266C5E720(uint64_t a1, char a2)
{
  DeviceNLIntent = type metadata accessor for FindDeviceNLIntent(0);
  MEMORY[0x28223BE20](DeviceNLIntent - 8);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ContactNLIntent(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA2E0, &unk_266DB05F0);
  MEMORY[0x28223BE20](v9 - 8);
  v47 = &v41 - v10;
  v11 = sub_266DA8BDC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2800C91E0 != -1)
  {
    swift_once();
  }

  v15 = sub_266DA94AC();
  __swift_project_value_buffer(v15, qword_2800CA580);
  v44 = *(v12 + 16);
  v45 = v12 + 16;
  v44(v14, a1, v11);
  v16 = sub_266DA948C();
  v17 = sub_266DAAB0C();
  v18 = os_log_type_enabled(v16, v17);
  v46 = v11;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v43 = v8;
    v20 = v19;
    v42 = swift_slowAlloc();
    v48 = v42;
    *v20 = 136315138;
    sub_266C5FDE0(&qword_2800CA5A0, MEMORY[0x277D5F458], MEMORY[0x277D5F460]);
    v21 = sub_266DAB13C();
    v23 = v22;
    (*(v12 + 8))(v14, v11);
    v24 = sub_266C22A3C(v21, v23, &v48);

    *(v20 + 4) = v24;
    _os_log_impl(&dword_266C08000, v16, v17, "[ConfirmationTask] parsing nlv3 intent: %s", v20, 0xCu);
    v25 = v42;
    __swift_destroy_boxed_opaque_existential_0(v42);
    MEMORY[0x26D5F2480](v25, -1, -1);
    v26 = v20;
    v8 = v43;
    MEMORY[0x26D5F2480](v26, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v14, v11);
  }

  v27 = v47;
  sub_266DA8BCC();
  v28 = sub_266DA876C();
  if (__swift_getEnumTagSinglePayload(v27, 1, v28) != 1)
  {
    v30 = sub_266DA875C();
    v32 = v31;
    (*(*(v28 - 8) + 8))(v27, v28);
    if (v30 == 0x746361746E6F63 && v32 == 0xE700000000000000)
    {

      v35 = v46;
    }

    else
    {
      v34 = sub_266DAB17C();
      v35 = v46;
      if ((v34 & 1) == 0)
      {
        if (v30 == 0x794D646E6966 && v32 == 0xE600000000000000)
        {
        }

        else
        {
          v40 = sub_266DAB17C();

          if ((v40 & 1) == 0)
          {
            return 3;
          }
        }

        v44(v5, a1, v35);
        v29 = sub_266C5F914(v5);
        v36 = type metadata accessor for FindDeviceNLIntent;
        v37 = v5;
LABEL_17:
        sub_266C5FD18(v37, v36);
        return v29;
      }
    }

    v44(v8, a1, v35);
    v29 = sub_266C5F510(v8);
    v36 = type metadata accessor for ContactNLIntent;
    v37 = v8;
    goto LABEL_17;
  }

  sub_266C57D90(v27);
  return 3;
}

uint64_t sub_266C5EC54(uint64_t a1)
{
  v2 = sub_266DA819C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v38 - v7;
  if (qword_2800C91E0 != -1)
  {
    swift_once();
  }

  v9 = sub_266DA94AC();
  v10 = __swift_project_value_buffer(v9, qword_2800CA580);
  v40 = *(v3 + 16);
  v40(v8, a1, v2);
  v11 = sub_266DA948C();
  v12 = sub_266DAAB0C();
  v13 = &off_266DAD000;
  if (os_log_type_enabled(v11, v12))
  {
    v14 = swift_slowAlloc();
    v38[0] = swift_slowAlloc();
    v42 = v38[0];
    *v14 = 136315138;
    v40(v6, v8, v2);
    v15 = sub_266DAA72C();
    v38[1] = v10;
    v39 = a1;
    v16 = v6;
    v17 = v15;
    v19 = v18;
    (*(v3 + 8))(v8, v2);
    v20 = v17;
    v6 = v16;
    v21 = sub_266C22A3C(v20, v19, &v42);
    a1 = v39;

    *(v14 + 4) = v21;
    _os_log_impl(&dword_266C08000, v11, v12, "[ConfirmationTask] parsing DirectInvocation: %s", v14, 0xCu);
    v22 = v38[0];
    __swift_destroy_boxed_opaque_existential_0(v38[0]);
    MEMORY[0x26D5F2480](v22, -1, -1);
    v23 = v14;
    v13 = &off_266DAD000;
    MEMORY[0x26D5F2480](v23, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v8, v2);
  }

  v40(v6, a1, v2);
  sub_266D6EB44(v6, &v42);
  v24 = v42;
  if (v42 != 3)
  {
    v25 = sub_266DA948C();
    v26 = sub_266DAAB0C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v42 = v28;
      *v27 = *(v13 + 134);
      v41 = v24;
      v29 = sub_266DAA72C();
      v31 = sub_266C22A3C(v29, v30, &v42);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_266C08000, v25, v26, "[ConfirmationTask] returning confirmation response: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x26D5F2480](v28, -1, -1);
      MEMORY[0x26D5F2480](v27, -1, -1);
    }

    v32 = sub_266DA948C();
    v33 = sub_266DAAB0C();
    v34 = os_log_type_enabled(v32, v33);
    if (v24)
    {
      if (v24 == 1)
      {
        if (!v34)
        {
          v24 = 1;
          goto LABEL_21;
        }

        v35 = "[ConfirmationTask] user rejected";
      }

      else
      {
        if (!v34)
        {
          v24 = 2;
          goto LABEL_21;
        }

        v35 = "[ConfirmationTask] user cancelled";
      }
    }

    else
    {
      if (!v34)
      {
        v24 = 0;
        goto LABEL_21;
      }

      v35 = "[ConfirmationTask] user confirmed";
    }

    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_266C08000, v32, v33, v35, v36, 2u);
    MEMORY[0x26D5F2480](v36, -1, -1);
LABEL_21:
  }

  return v24;
}

uint64_t sub_266C5F0A0(uint64_t a1, int a2)
{
  v4 = sub_266DA81DC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v33[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v33[-v9];
  if (qword_2800C91E0 != -1)
  {
    swift_once();
  }

  v11 = sub_266DA94AC();
  v12 = __swift_project_value_buffer(v11, qword_2800CA580);
  v13 = *(v5 + 16);
  v13(v10, a1, v4);
  v36 = v12;
  v14 = sub_266DA948C();
  v15 = sub_266DAAB0C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v35 = a1;
    v17 = v16;
    v18 = swift_slowAlloc();
    v34 = a2;
    v19 = v18;
    v37 = v18;
    *v17 = 136315138;
    v13(v8, v10, v4);
    v20 = sub_266DAA72C();
    v22 = v21;
    (*(v5 + 8))(v10, v4);
    v23 = sub_266C22A3C(v20, v22, &v37);

    *(v17 + 4) = v23;
    _os_log_impl(&dword_266C08000, v14, v15, "[ConfirmationTask] parsing USOParse: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    v24 = v19;
    LOBYTE(v19) = v34;
    MEMORY[0x26D5F2480](v24, -1, -1);
    MEMORY[0x26D5F2480](v17, -1, -1);

    if ((v19 & 1) == 0)
    {
LABEL_5:
      v25 = sub_266DA948C();
      v26 = sub_266DAAB0C();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_266C08000, v25, v26, "[ConfirmationTask] NLX is disabled, returning nil task", v27, 2u);
        v28 = 3;
LABEL_19:
        MEMORY[0x26D5F2480](v27, -1, -1);
        goto LABEL_20;
      }

      v28 = 3;
      goto LABEL_20;
    }
  }

  else
  {

    (*(v5 + 8))(v10, v4);
    if ((a2 & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  if (sub_266D652C8())
  {
    v25 = sub_266DA948C();
    v29 = sub_266DAAB0C();
    if (os_log_type_enabled(v25, v29))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_266C08000, v25, v29, "[ConfirmationTask] user confirmed", v27, 2u);
      v28 = 0;
      goto LABEL_19;
    }

    v28 = 0;
  }

  else
  {
    if (sub_266D652E0())
    {
      v25 = sub_266DA948C();
      v30 = sub_266DAAB0C();
      if (!os_log_type_enabled(v25, v30))
      {
        v28 = 1;
        goto LABEL_20;
      }

      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_266C08000, v25, v30, "[ConfirmationTask] user rejected", v27, 2u);
      v28 = 1;
      goto LABEL_19;
    }

    if ((sub_266D652F8() & 1) == 0)
    {
      return 3;
    }

    v25 = sub_266DA948C();
    v31 = sub_266DAAB0C();
    v28 = 2;
    if (os_log_type_enabled(v25, v31))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_266C08000, v25, v31, "[ConfirmationTask] user cancelled", v27, 2u);
      goto LABEL_19;
    }
  }

LABEL_20:

  return v28;
}

uint64_t sub_266C5F510(uint64_t a1)
{
  v2 = type metadata accessor for ContactNLIntent(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2800C91E0 != -1)
  {
    swift_once();
  }

  v5 = sub_266DA94AC();
  __swift_project_value_buffer(v5, qword_2800CA580);
  sub_266C5FD78(a1, v4, type metadata accessor for ContactNLIntent);
  v6 = sub_266DA948C();
  v7 = sub_266DAAB0C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136315138;
    sub_266C5FDE0(&unk_28156F658, type metadata accessor for ContactNLIntent, &unk_266DB06C0);
    v10 = sub_266DAB13C();
    v12 = v11;
    sub_266C5FD18(v4, type metadata accessor for ContactNLIntent);
    v13 = sub_266C22A3C(v10, v12, &v20);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_266C08000, v6, v7, "[ConfirmationTask] parsing contactNLIntent: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x26D5F2480](v9, -1, -1);
    MEMORY[0x26D5F2480](v8, -1, -1);
  }

  else
  {

    sub_266C5FD18(v4, type metadata accessor for ContactNLIntent);
  }

  if (qword_28156F720 != -1)
  {
    swift_once();
  }

  sub_266C5FDE0(&qword_28156F668, type metadata accessor for ContactNLIntent, &unk_266DB0E78);
  sub_266DA873C();
  v14 = v21;
  switch(v21)
  {
    case 1u:
      v15 = sub_266DA948C();
      v16 = sub_266DAAB0C();
      if (!os_log_type_enabled(v15, v16))
      {
        goto LABEL_16;
      }

      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = "[ConfirmationTask] user rejected";
      break;
    case 2u:
      v15 = sub_266DA948C();
      v16 = sub_266DAAB0C();
      if (!os_log_type_enabled(v15, v16))
      {
        goto LABEL_16;
      }

      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = "[ConfirmationTask] user cancelled";
      break;
    case 3u:
      return v14;
    default:
      v15 = sub_266DA948C();
      v16 = sub_266DAAB0C();
      if (!os_log_type_enabled(v15, v16))
      {
        goto LABEL_16;
      }

      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = "[ConfirmationTask] user confirmed";
      break;
  }

  _os_log_impl(&dword_266C08000, v15, v16, v18, v17, 2u);
  MEMORY[0x26D5F2480](v17, -1, -1);
LABEL_16:

  return v14;
}

uint64_t sub_266C5F914(uint64_t a1)
{
  DeviceNLIntent = type metadata accessor for FindDeviceNLIntent(0);
  MEMORY[0x28223BE20](DeviceNLIntent);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2800C91E0 != -1)
  {
    swift_once();
  }

  v5 = sub_266DA94AC();
  __swift_project_value_buffer(v5, qword_2800CA580);
  sub_266C5FD78(a1, v4, type metadata accessor for FindDeviceNLIntent);
  v6 = sub_266DA948C();
  v7 = sub_266DAAB0C();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136315138;
    sub_266C5FDE0(&qword_2800CA5B0, type metadata accessor for FindDeviceNLIntent, &unk_266DB5874);
    v10 = sub_266DAB13C();
    v12 = v11;
    sub_266C5FD18(v4, type metadata accessor for FindDeviceNLIntent);
    v13 = sub_266C22A3C(v10, v12, &v20);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_266C08000, v6, v7, "[ConfirmationTask] parsing findDeviceNLIntent: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x26D5F2480](v9, -1, -1);
    MEMORY[0x26D5F2480](v8, -1, -1);
  }

  else
  {

    sub_266C5FD18(v4, type metadata accessor for FindDeviceNLIntent);
  }

  if (qword_2800C92E8 != -1)
  {
    swift_once();
  }

  sub_266C5FDE0(&qword_2800CA5A8, type metadata accessor for FindDeviceNLIntent, &unk_266DB589C);
  sub_266DA873C();
  v14 = v21;
  switch(v21)
  {
    case 1u:
      v15 = sub_266DA948C();
      v16 = sub_266DAAB0C();
      if (!os_log_type_enabled(v15, v16))
      {
        goto LABEL_16;
      }

      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = "[ConfirmationTask] user rejected";
      break;
    case 2u:
      v15 = sub_266DA948C();
      v16 = sub_266DAAB0C();
      if (!os_log_type_enabled(v15, v16))
      {
        goto LABEL_16;
      }

      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = "[ConfirmationTask] user cancelled";
      break;
    case 3u:
      return v14;
    default:
      v15 = sub_266DA948C();
      v16 = sub_266DAAB0C();
      if (!os_log_type_enabled(v15, v16))
      {
        goto LABEL_16;
      }

      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = "[ConfirmationTask] user confirmed";
      break;
  }

  _os_log_impl(&dword_266C08000, v15, v16, v18, v17, 2u);
  MEMORY[0x26D5F2480](v17, -1, -1);
LABEL_16:

  return v14;
}

uint64_t sub_266C5FD18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_266C5FD78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_266C5FDE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_0_21(uint64_t a1)
{

  return swift_once();
}

id sub_266C5FE48(void *a1)
{
  swift_getErrorValue();
  v2 = sub_266D9D248();
  v4 = v3;
  if (v2 == sub_266DAA70C() && v4 == v5)
  {

    goto LABEL_8;
  }

  v7 = sub_266DAB17C();

  if (v7)
  {
LABEL_8:
    swift_getErrorValue();
    v8 = sub_266D9D360();
    goto LABEL_9;
  }

  v8 = 0;
LABEL_9:

  return v8;
}

uint64_t Location.horizontalAccuracy.getter()
{
  if (*(v0 + 32))
  {
    return 0;
  }

  else
  {
    return *(v0 + 16);
  }
}

uint64_t Location.verticalAccuracy.getter()
{
  if (*(v0 + 32))
  {
    return 0;
  }

  else
  {
    return *(v0 + 24);
  }
}

uint64_t sub_266C5FF68@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800C9B20, &unk_266DB1EC0);
  OUTLINED_FUNCTION_4_3(v4);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - v6;
  sub_266C61918(a1, 1701736302, 0xE400000000000000, &v11 - v6);
  v8 = type metadata accessor for Location(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8))
  {
    sub_266C1825C(v7, &qword_2800C9B20, &unk_266DB1EC0);
    v9 = 1;
  }

  else
  {
    sub_266C62440(v7, a2);
    v9 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a2, v9, 1, v8);
}

__n128 Location.precision.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[2].n128_u8[0];
  result = v1[1];
  *a1 = result;
  a1[1].n128_u8[0] = v2;
  return result;
}

__n128 Location.precision.setter(__n128 *a1)
{
  v2 = a1[1].n128_u8[0];
  result = *a1;
  v1[1] = *a1;
  v1[2].n128_u8[0] = v2;
  return result;
}

uint64_t Location.timestamp.getter()
{
  v2 = *(OUTLINED_FUNCTION_23_2() + 28);
  sub_266DA746C();
  OUTLINED_FUNCTION_0();
  v5 = *(v4 + 16);

  return v5(v0, v1 + v2, v3);
}

uint64_t type metadata accessor for Location(uint64_t a1)
{
  result = qword_2800CA630;
  if (!qword_2800CA630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Location.timestamp.setter()
{
  v2 = OUTLINED_FUNCTION_7_8();
  v3 = *(type metadata accessor for Location(v2) + 28);
  sub_266DA746C();
  OUTLINED_FUNCTION_0();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

uint64_t Location.timestamp.modify()
{
  v0 = OUTLINED_FUNCTION_7_8();
  type metadata accessor for Location(v0);
  return OUTLINED_FUNCTION_11_4();
}

uint64_t Location.label.getter()
{
  type metadata accessor for Location(0);

  return OUTLINED_FUNCTION_4_4();
}

uint64_t Location.label.setter()
{
  v3 = (v1 + *(OUTLINED_FUNCTION_15_7() + 32));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t Location.label.modify()
{
  v0 = OUTLINED_FUNCTION_7_8();
  type metadata accessor for Location(v0);
  return OUTLINED_FUNCTION_11_4();
}

uint64_t Location.motionActivityState.getter()
{
  result = OUTLINED_FUNCTION_23_2();
  *v0 = *(v1 + *(result + 36));
  return result;
}

uint64_t Location.motionActivityState.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for Location(0);
  *(v1 + *(result + 36)) = v2;
  return result;
}

uint64_t Location.motionActivityState.modify()
{
  v0 = OUTLINED_FUNCTION_7_8();
  type metadata accessor for Location(v0);
  return OUTLINED_FUNCTION_11_4();
}

uint64_t Location.locationSource.getter()
{
  result = OUTLINED_FUNCTION_23_2();
  *v0 = *(v1 + *(result + 40));
  return result;
}

uint64_t Location.locationSource.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for Location(0);
  *(v1 + *(result + 40)) = v2;
  return result;
}

uint64_t Location.locationSource.modify()
{
  v0 = OUTLINED_FUNCTION_7_8();
  type metadata accessor for Location(v0);
  return OUTLINED_FUNCTION_11_4();
}

uint64_t Location.address.getter()
{
  v2 = v1 + *(OUTLINED_FUNCTION_23_2() + 44);

  return sub_266C604A4(v2, v0);
}

uint64_t sub_266C604A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC420, &unk_266DB0480);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Location.address.setter()
{
  v2 = OUTLINED_FUNCTION_7_8();
  v3 = v1 + *(type metadata accessor for Location(v2) + 44);

  return sub_266C60554(v0, v3);
}

uint64_t sub_266C60554(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC420, &unk_266DB0480);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Location.address.modify()
{
  v0 = OUTLINED_FUNCTION_7_8();
  type metadata accessor for Location(v0);
  return OUTLINED_FUNCTION_11_4();
}

uint64_t Location.emphasisId.getter()
{
  type metadata accessor for Location(0);

  return OUTLINED_FUNCTION_4_4();
}

uint64_t Location.emphasisId.setter()
{
  v3 = (v1 + *(OUTLINED_FUNCTION_15_7() + 48));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t Location.emphasisId.modify()
{
  v0 = OUTLINED_FUNCTION_7_8();
  type metadata accessor for Location(v0);
  return OUTLINED_FUNCTION_11_4();
}

uint64_t Location.init(latitude:longitude:precision:timestamp:label:motionActivityState:locationSource:address:emphasisId:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, uint64_t a12)
{
  v15 = *a1;
  v16 = a1[1];
  v17 = *(a1 + 16);
  v33 = *a5;
  v18 = *a6;
  v19 = type metadata accessor for Location(0);
  v20 = v19[8];
  v21 = v19[9];
  *(a9 + v21) = 6;
  v22 = (a9 + v20);
  v23 = v19[10];
  *(a9 + v23) = 4;
  v24 = v19[11];
  type metadata accessor for Address(0);
  OUTLINED_FUNCTION_43();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
  *a9 = a10;
  *(a9 + 8) = a11;
  *(a9 + 16) = v15;
  *(a9 + 24) = v16;
  *(a9 + 32) = v17;
  v29 = v19[7];
  sub_266DA746C();
  OUTLINED_FUNCTION_0();
  (*(v30 + 32))(a9 + v29, a2);
  *v22 = a3;
  v22[1] = a4;
  *(a9 + v21) = v33;
  *(a9 + v23) = v18;
  result = sub_266C60554(a7, a9 + v24);
  v32 = (a9 + v19[12]);
  *v32 = a8;
  v32[1] = a12;
  return result;
}

uint64_t static Location.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_21_2();
  type metadata accessor for Address(v4);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_0_6();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC420, &unk_266DB0480);
  OUTLINED_FUNCTION_4_3(v9);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v43 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA5B8, &qword_266DB1510);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v14);
  v16 = &v43 - v15;
  if (*v2 != *a2 || *(v2 + 8) != *(a2 + 8))
  {
    goto LABEL_39;
  }

  if (*(v2 + 32))
  {
    if (!*(a2 + 32))
    {
      goto LABEL_39;
    }
  }

  else
  {
    if (*(a2 + 32))
    {
      goto LABEL_39;
    }

    v17 = *(v2 + 16) == *(a2 + 16) && *(v2 + 24) == *(a2 + 24);
    if (!v17)
    {
      goto LABEL_39;
    }
  }

  v18 = type metadata accessor for Location(0);
  if ((sub_266DA743C() & 1) == 0)
  {
    goto LABEL_39;
  }

  v19 = v18[8];
  v20 = (v2 + v19);
  v21 = *(v2 + v19 + 8);
  v22 = (a2 + v19);
  v23 = v22[1];
  if (v21)
  {
    if (!v23)
    {
      goto LABEL_39;
    }

    v24 = *v20 == *v22 && v21 == v23;
    if (!v24 && (sub_266DAB17C() & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  else if (v23)
  {
    goto LABEL_39;
  }

  v25 = v18[9];
  v26 = *(v2 + v25);
  v27 = *(a2 + v25);
  if (v26 == 6)
  {
    if (v27 != 6)
    {
      goto LABEL_39;
    }
  }

  else if (v26 != v27)
  {
    goto LABEL_39;
  }

  v28 = v18[10];
  v29 = *(v2 + v28);
  v30 = *(a2 + v28);
  if (v29 != 4)
  {
    if (v29 == v30)
    {
      goto LABEL_30;
    }

LABEL_39:
    v34 = 0;
    return v34 & 1;
  }

  if (v30 != 4)
  {
    goto LABEL_39;
  }

LABEL_30:
  v31 = v18[11];
  v32 = *(v13 + 48);
  sub_266C604A4(v2 + v31, v16);
  sub_266C604A4(a2 + v31, &v16[v32]);
  OUTLINED_FUNCTION_22_3(v16);
  if (v17)
  {
    OUTLINED_FUNCTION_22_3(&v16[v32]);
    if (v17)
    {
      sub_266C1825C(v16, &qword_2800CC420, &unk_266DB0480);
      goto LABEL_42;
    }

    goto LABEL_38;
  }

  sub_266C604A4(v16, v12);
  OUTLINED_FUNCTION_22_3(&v16[v32]);
  if (v33)
  {
    sub_266C61F50();
LABEL_38:
    sub_266C1825C(v16, &qword_2800CA5B8, &qword_266DB1510);
    goto LABEL_39;
  }

  sub_266C62440(&v16[v32], v8);
  static Address.== infix(_:_:)();
  v37 = v36;
  sub_266C61F50();
  sub_266C61F50();
  sub_266C1825C(v16, &qword_2800CC420, &unk_266DB0480);
  if ((v37 & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_42:
  v38 = v18[12];
  v39 = *(v2 + v38);
  v40 = *(v2 + v38 + 8);
  v41 = (a2 + v38);
  if (v39 == *v41 && v40 == v41[1])
  {
    v34 = 1;
  }

  else
  {
    v34 = sub_266DAB17C();
  }

  return v34 & 1;
}

uint64_t sub_266C60B48(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656475746974616CLL && a2 == 0xE800000000000000;
  if (v4 || (sub_266DAB17C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065;
    if (v6 || (sub_266DAB17C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6F69736963657270 && a2 == 0xE90000000000006ELL;
      if (v7 || (sub_266DAB17C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
        if (v8 || (sub_266DAB17C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6C6562616CLL && a2 == 0xE500000000000000;
          if (v9 || (sub_266DAB17C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000013 && 0x8000000266DC1D70 == a2;
            if (v10 || (sub_266DAB17C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6E6F697461636F6CLL && a2 == 0xEE00656372756F53;
              if (v11 || (sub_266DAB17C() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x73736572646461 && a2 == 0xE700000000000000;
                if (v12 || (sub_266DAB17C() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x7369736168706D65 && a2 == 0xEA00000000006449)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_266DAB17C();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

unint64_t sub_266C60E2C(char a1)
{
  result = 0x656475746974616CLL;
  switch(a1)
  {
    case 1:
      result = 0x64757469676E6F6CLL;
      break;
    case 2:
      result = 0x6F69736963657270;
      break;
    case 3:
      result = 0x6D617473656D6974;
      break;
    case 4:
      result = 0x6C6562616CLL;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    case 6:
      result = 0x6E6F697461636F6CLL;
      break;
    case 7:
      result = 0x73736572646461;
      break;
    case 8:
      result = 0x7369736168706D65;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_266C60F54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266C60B48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266C60F7C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_266C60E24();
  *a1 = result;
  return result;
}

uint64_t sub_266C60FA4(uint64_t a1)
{
  v2 = sub_266C61CBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266C60FE0(uint64_t a1)
{
  v2 = sub_266C61CBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Location.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA5C0, &qword_266DB1518);
  OUTLINED_FUNCTION_0_2();
  v7 = v6;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266C61CBC();
  sub_266DAB36C();
  LOBYTE(v20) = 0;
  OUTLINED_FUNCTION_5_4();
  sub_266DAB10C();
  if (!v2)
  {
    LOBYTE(v20) = 1;
    OUTLINED_FUNCTION_5_4();
    sub_266DAB10C();
    v11 = *(v3 + 32);
    v20 = *(v3 + 16);
    v21 = v11;
    v19 = 2;
    sub_266C61D10();
    OUTLINED_FUNCTION_2_12();
    sub_266DAB11C();
    v12 = type metadata accessor for Location(0);
    LOBYTE(v20) = 3;
    sub_266DA746C();
    OUTLINED_FUNCTION_5_10();
    sub_266C61F08(v13, v14, MEMORY[0x277CC9580]);
    OUTLINED_FUNCTION_5_4();
    sub_266DAB11C();
    LOBYTE(v20) = 4;
    OUTLINED_FUNCTION_5_4();
    sub_266DAB09C();
    LOBYTE(v20) = *(v3 + *(v12 + 36));
    v19 = 5;
    sub_266C61D64();
    OUTLINED_FUNCTION_2_12();
    sub_266DAB0DC();
    LOBYTE(v20) = *(v3 + *(v12 + 40));
    v19 = 6;
    sub_266C61DB8();
    OUTLINED_FUNCTION_2_12();
    sub_266DAB0DC();
    LOBYTE(v20) = 7;
    type metadata accessor for Address(0);
    OUTLINED_FUNCTION_4_12();
    sub_266C61F08(v15, v16, &protocol conformance descriptor for Address);
    OUTLINED_FUNCTION_5_4();
    sub_266DAB0DC();
    LOBYTE(v20) = 8;
    OUTLINED_FUNCTION_5_4();
    sub_266DAB0EC();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t Location.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC420, &unk_266DB0480);
  OUTLINED_FUNCTION_4_3(v3);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v4);
  v60 = &v56 - v5;
  v68 = sub_266DA746C();
  OUTLINED_FUNCTION_0_2();
  v64 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_0_6();
  v10 = v9 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA5F8, &qword_266DB1520);
  OUTLINED_FUNCTION_0_2();
  v61 = v11;
  v62 = v12;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v13);
  v15 = &v56 - v14;
  type metadata accessor for Location(0);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_0_6();
  v19 = (v18 - v17);
  v21 = v20[9];
  *(v19 + v21) = 6;
  v22 = v20[10];
  *(v19 + v22) = 4;
  v23 = v20;
  v24 = v20[11];
  v25 = type metadata accessor for Address(0);
  v66 = v19;
  v67 = v24;
  OUTLINED_FUNCTION_43();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v25);
  v29 = a1[3];
  v69 = a1;
  v30 = __swift_project_boxed_opaque_existential_1(a1, v29);
  sub_266C61CBC();
  v63 = v15;
  v31 = v65;
  sub_266DAB34C();
  if (v31)
  {
    OUTLINED_FUNCTION_18_4();
    v32 = v67;
    v33 = v68;
    v37 = v66;
    __swift_destroy_boxed_opaque_existential_0(v69);
    if (v30)
    {
      (*(v64 + 8))(&v37[v23[7]], v33);
    }

    return sub_266C1825C(&v37[v32], &qword_2800CC420, &unk_266DB0480);
  }

  else
  {
    v34 = v10;
    v65 = v21;
    v57 = v22;
    v58 = v25;
    LOBYTE(v70) = 0;
    v35 = v61;
    OUTLINED_FUNCTION_13_4();
    sub_266DAB03C();
    v36 = v23;
    v38 = v66;
    *v66 = v39;
    OUTLINED_FUNCTION_12_6(1);
    sub_266DAB03C();
    v40 = v68;
    *(v38 + 8) = v41;
    v72 = 2;
    sub_266C61E0C();
    OUTLINED_FUNCTION_8_2();
    sub_266DAB05C();
    v42 = v67;
    v43 = v71;
    *(v38 + 16) = v70;
    *(v38 + 32) = v43;
    LOBYTE(v70) = 3;
    OUTLINED_FUNCTION_5_10();
    sub_266C61F08(v44, v45, MEMORY[0x277CC95A0]);
    sub_266DAB05C();
    (*(v64 + 32))(v38 + v23[7], v34, v40);
    OUTLINED_FUNCTION_12_6(4);
    v46 = sub_266DAAFCC();
    v47 = (v38 + v23[8]);
    *v47 = v46;
    v47[1] = v48;
    v72 = 5;
    sub_266C61E60();
    OUTLINED_FUNCTION_8_2();
    OUTLINED_FUNCTION_13_4();
    sub_266DAB00C();
    *(v38 + v65) = v70;
    v72 = 6;
    sub_266C61EB4();
    OUTLINED_FUNCTION_8_2();
    OUTLINED_FUNCTION_13_4();
    sub_266DAB00C();
    *(v38 + v57) = v70;
    LOBYTE(v70) = 7;
    OUTLINED_FUNCTION_4_12();
    sub_266C61F08(v49, v50, &protocol conformance descriptor for Address);
    OUTLINED_FUNCTION_13_4();
    sub_266DAB00C();
    sub_266C60554(v60, v38 + v42);
    OUTLINED_FUNCTION_12_6(8);
    OUTLINED_FUNCTION_13_4();
    v51 = sub_266DAB01C();
    v53 = v52;
    (*(v62 + 8))(v63, v35);
    v54 = (v38 + v36[12]);
    *v54 = v51;
    v54[1] = v53;
    sub_266C24F5C(v38, v59);
    __swift_destroy_boxed_opaque_existential_0(v69);
    OUTLINED_FUNCTION_3_10();
    return sub_266C61F50();
  }
}

uint64_t sub_266C61918@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v47 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CC420, &unk_266DB0480);
  OUTLINED_FUNCTION_4_3(v7);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v44 - v9;
  v11 = type metadata accessor for Location(0);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_0_6();
  v15 = v14 - v13;
  v46 = v16[9];
  *(v15 + v46) = 6;
  v17 = v16[10];
  *(v15 + v17) = 4;
  v18 = v16[11];
  v19 = type metadata accessor for Address(0);
  OUTLINED_FUNCTION_43();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v19);
  v23 = [a1 location];
  if (v23)
  {
    v24 = v23;
    v44 = a3;
    v45 = a4;
    [v23 coordinate];
    *v15 = v25;
    [v24 coordinate];
    *(v15 + 8) = v26;
    v27 = [a1 isCoarse];
    if (v27 && (v28 = v27, v29 = [v27 BOOLValue], v28, v29))
    {
      *(v15 + 16) = 0;
      *(v15 + 24) = 0;
      *(v15 + 32) = 1;
    }

    else
    {
      [v24 horizontalAccuracy];
      v31 = v30;
      [v24 verticalAccuracy];
      *(v15 + 16) = v31;
      *(v15 + 24) = v32;
      *(v15 + 32) = 0;
    }

    v33 = (v15 + *(v11 + 32));
    v34 = [v24 timestamp];
    sub_266DA744C();

    *v33 = sub_266C62498(a1);
    v33[1] = v35;
    sub_266D7FBD8();

    __swift_storeEnumTagSinglePayload(v10, 0, 1, v19);
    sub_266C60554(v10, v15 + v18);
    v36 = v47;
    *(v15 + v46) = 6;
    *(v15 + v17) = 4;
    v37 = (v15 + *(v11 + 48));
    v38 = v44;
    v39 = v45;
    *v37 = v36;
    v37[1] = v38;
    sub_266C24F5C(v15, v39);
    __swift_storeEnumTagSinglePayload(v39, 0, 1, v11);
    OUTLINED_FUNCTION_3_10();
    return sub_266C61F50();
  }

  else
  {

    sub_266C1825C(v15 + v18, &qword_2800CC420, &unk_266DB0480);
    OUTLINED_FUNCTION_43();
    return __swift_storeEnumTagSinglePayload(v41, v42, v43, v11);
  }
}

uint64_t sub_266C61C34()
{
  v3 = OUTLINED_FUNCTION_15_7();
  v4 = OUTLINED_FUNCTION_4_3(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_0_6();
  v7 = v6 - v5;
  v2(0);
  sub_266C24F5C(v1, v7);
  return v0(v7);
}

unint64_t sub_266C61CBC()
{
  result = qword_2800CA5C8;
  if (!qword_2800CA5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA5C8);
  }

  return result;
}

unint64_t sub_266C61D10()
{
  result = qword_2800CA5D0;
  if (!qword_2800CA5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA5D0);
  }

  return result;
}

unint64_t sub_266C61D64()
{
  result = qword_2800CA5E0;
  if (!qword_2800CA5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA5E0);
  }

  return result;
}

unint64_t sub_266C61DB8()
{
  result = qword_2800CA5E8;
  if (!qword_2800CA5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA5E8);
  }

  return result;
}

unint64_t sub_266C61E0C()
{
  result = qword_2800CA600;
  if (!qword_2800CA600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA600);
  }

  return result;
}

unint64_t sub_266C61E60()
{
  result = qword_2800CA610;
  if (!qword_2800CA610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA610);
  }

  return result;
}

unint64_t sub_266C61EB4()
{
  result = qword_2800CA618;
  if (!qword_2800CA618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA618);
  }

  return result;
}

uint64_t sub_266C61F08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_266C61F50()
{
  v1 = OUTLINED_FUNCTION_7_8();
  v2(v1);
  OUTLINED_FUNCTION_0();
  (*(v3 + 8))(v0);
  return v0;
}

unint64_t sub_266C61FA4()
{
  result = qword_2800CA628;
  if (!qword_2800CA628)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800CA628);
  }

  return result;
}

void sub_266C62010(uint64_t a1)
{
  sub_266DA746C();
  if (v1 <= 0x3F)
  {
    sub_266C62130(319, &qword_2800C9C68, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      sub_266C62130(319, &qword_2800CA640, &type metadata for MotionActivityState);
      if (v3 <= 0x3F)
      {
        sub_266C62130(319, &qword_2800CA648, &type metadata for LocationSource);
        if (v4 <= 0x3F)
        {
          sub_266C6217C(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_266C62130(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_266DAAC1C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_266C6217C(uint64_t a1)
{
  if (!qword_2800CA650)
  {
    type metadata accessor for Address(255);
    v1 = sub_266DAAC1C();
    if (!v2)
    {
      atomic_store(v1, &qword_2800CA650);
    }
  }
}

uint64_t getEnumTagSinglePayload for Location.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Location.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_266C6233C()
{
  result = qword_2800CA658;
  if (!qword_2800CA658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA658);
  }

  return result;
}

unint64_t sub_266C62394()
{
  result = qword_2800CA660;
  if (!qword_2800CA660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA660);
  }

  return result;
}

unint64_t sub_266C623EC()
{
  result = qword_2800CA668;
  if (!qword_2800CA668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA668);
  }

  return result;
}

uint64_t sub_266C62440(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_21_2();
  v4(v3);
  OUTLINED_FUNCTION_0();
  v5 = OUTLINED_FUNCTION_4_4();
  v6(v5);
  return a2;
}

uint64_t sub_266C62498(void *a1)
{
  v1 = [a1 label];
  if (v1)
  {
    v2 = v1;
    sub_266DAA70C();
  }

  return OUTLINED_FUNCTION_4_4();
}

uint64_t OUTLINED_FUNCTION_15_7()
{

  return type metadata accessor for Location(0);
}

uint64_t OUTLINED_FUNCTION_23_2()
{

  return type metadata accessor for Location(0);
}

uint64_t sub_266C62630()
{
  sub_266DA919C();
  OUTLINED_FUNCTION_3_11();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  OUTLINED_FUNCTION_3_11();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  OUTLINED_FUNCTION_3_11();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  OUTLINED_FUNCTION_3_11();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  OUTLINED_FUNCTION_3_11();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
  *(v0 + OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_isItem) = 0;
  *(v0 + OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_isHeadphones) = 0;
  *(v0 + OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_isEarbuds) = 0;
  OUTLINED_FUNCTION_3_11();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
  *(v0 + OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_owner) = 0;
  *(v0 + OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_ownerIsMe) = 0;
  OUTLINED_FUNCTION_3_11();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
  OUTLINED_FUNCTION_3_11();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
  *(v0 + OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_displayByName) = 0;
  OUTLINED_FUNCTION_3_11();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  OUTLINED_FUNCTION_3_11();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
  OUTLINED_FUNCTION_3_11();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v44);
  return v0;
}

uint64_t sub_266C62788(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_owner) = a1;
}

uint64_t sub_266C627D4()
{
  sub_266C55ECC(v0 + OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_deviceName);
  sub_266C55ECC(v0 + OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_emoji);
  sub_266C55ECC(v0 + OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_productName);
  sub_266C55ECC(v0 + OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_deviceClass);
  sub_266C55ECC(v0 + OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_category);
  sub_266C55ECC(v0 + OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_deviceLocality);

  sub_266C55ECC(v0 + OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_specificityLevel);
  sub_266C55ECC(v0 + OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_conversationalProductName);
  sub_266C55ECC(v0 + OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_image);
  sub_266C55ECC(v0 + OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_selectAction);
  sub_266C55ECC(v0 + OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_emphasisId);
  return v0;
}

uint64_t sub_266C628E8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  OUTLINED_FUNCTION_4_3(v3);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - v5;
  *(v1 + 16) = 0;
  v7 = OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_emphasisId;
  v8 = sub_266DA919C();
  __swift_storeEnumTagSinglePayload(v1 + v7, 1, 1, v8);
  OUTLINED_FUNCTION_14_7();
  swift_beginAccess();
  OUTLINED_FUNCTION_25_1(OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_deviceName);
  OUTLINED_FUNCTION_14_7();
  swift_beginAccess();
  OUTLINED_FUNCTION_25_1(OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_emoji);
  OUTLINED_FUNCTION_14_7();
  swift_beginAccess();
  OUTLINED_FUNCTION_25_1(OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_productName);
  OUTLINED_FUNCTION_14_7();
  swift_beginAccess();
  OUTLINED_FUNCTION_25_1(OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_deviceClass);
  OUTLINED_FUNCTION_14_7();
  swift_beginAccess();
  OUTLINED_FUNCTION_25_1(OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_category);
  *(v1 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_isItem) = *(a1 + OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_isItem);
  *(v1 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_isHeadphones) = *(a1 + OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_isHeadphones);
  *(v1 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_isEarbuds) = *(a1 + OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_isEarbuds);
  OUTLINED_FUNCTION_14_7();
  swift_beginAccess();
  OUTLINED_FUNCTION_25_1(OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_deviceLocality);
  *(v1 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_owner) = *(a1 + OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_owner);
  *(v1 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_ownerIsMe) = *(a1 + OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_ownerIsMe);
  OUTLINED_FUNCTION_14_7();
  swift_beginAccess();
  OUTLINED_FUNCTION_37_0(OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_specificityLevel);
  OUTLINED_FUNCTION_14_7();
  swift_beginAccess();
  OUTLINED_FUNCTION_37_0(OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_conversationalProductName);
  *(v1 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_displayByName) = *(a1 + OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_displayByName);
  OUTLINED_FUNCTION_14_7();
  swift_beginAccess();
  OUTLINED_FUNCTION_37_0(OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_image);
  OUTLINED_FUNCTION_14_7();
  swift_beginAccess();
  OUTLINED_FUNCTION_37_0(OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_selectAction);
  v9 = OBJC_IVAR____TtCC10SiriFindMy12FindmyDevice7Builder_emphasisId;
  OUTLINED_FUNCTION_14_7();
  swift_beginAccess();
  sub_266C64D14(a1 + v9, v6);

  v10 = OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_emphasisId;
  swift_beginAccess();
  sub_266C64CA4(v6, v1 + v10);
  swift_endAccess();
  return v1;
}

uint64_t sub_266C62BF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v97 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  v7 = OUTLINED_FUNCTION_4_3(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_33_0();
  v95 = v8;
  OUTLINED_FUNCTION_15_8();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_19_4();
  v94 = v10;
  OUTLINED_FUNCTION_15_8();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_19_4();
  v93 = v12;
  OUTLINED_FUNCTION_15_8();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_19_4();
  v92 = v14;
  OUTLINED_FUNCTION_15_8();
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v91 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v91 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v91 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v91 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v91 - v29;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_32_0();
  MEMORY[0x28223BE20](v31);
  v33 = &v91 - v32;
  v34 = a1 == 0x614E656369766564 && a2 == 0xEA0000000000656DLL;
  if (v34 || (OUTLINED_FUNCTION_9_5(0x614E656369766564, 0xEA0000000000656DLL) & 1) != 0)
  {
    v35 = OUTLINED_FUNCTION_18_5(OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_deviceName);
    sub_266C64D14(v35, v33);
    sub_266DA919C();
    OUTLINED_FUNCTION_4_13(v33);
    if (!v34)
    {
      goto LABEL_130;
    }

    v36 = v33;
    goto LABEL_9;
  }

  v39 = a1 == 0x696A6F6D65 && a2 == 0xE500000000000000;
  if (v39 || (OUTLINED_FUNCTION_9_5(0x696A6F6D65, 0xE500000000000000) & 1) != 0)
  {
    v40 = OUTLINED_FUNCTION_18_5(OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_emoji);
    sub_266C64D14(v40, v3);
    sub_266DA919C();
    OUTLINED_FUNCTION_4_13(v3);
    if (!v34)
    {
      goto LABEL_130;
    }

    v36 = v3;
    goto LABEL_9;
  }

  v41 = OUTLINED_FUNCTION_27_1();
  v43 = a1 == v41 && a2 == v42;
  if (v43 || (OUTLINED_FUNCTION_9_5(v41, v42) & 1) != 0)
  {
    v44 = OUTLINED_FUNCTION_18_5(OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_productName);
    sub_266C64D14(v44, v30);
    sub_266DA919C();
    OUTLINED_FUNCTION_4_13(v30);
    if (!v34)
    {
      goto LABEL_130;
    }

    v36 = v30;
    goto LABEL_9;
  }

  v45 = OUTLINED_FUNCTION_26_3();
  v47 = a1 == v45 && a2 == v46;
  if (v47 || (OUTLINED_FUNCTION_9_5(v45, v46) & 1) != 0)
  {
    v48 = OUTLINED_FUNCTION_18_5(OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_deviceClass);
    sub_266C64D14(v48, v27);
    sub_266DA919C();
    OUTLINED_FUNCTION_4_13(v27);
    if (!v34)
    {
      goto LABEL_130;
    }

    v36 = v27;
    goto LABEL_9;
  }

  v49 = a1 == 0x79726F6765746163 && a2 == 0xE800000000000000;
  if (v49 || (OUTLINED_FUNCTION_9_5(0x79726F6765746163, 0xE800000000000000) & 1) != 0)
  {
    v50 = OUTLINED_FUNCTION_18_5(OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_category);
    sub_266C64D14(v50, v24);
    v51 = sub_266DA919C();
    if (__swift_getEnumTagSinglePayload(v24, 1, v51) != 1)
    {
      v52 = v97;
      v97[3] = v51;
      __swift_allocate_boxed_opaque_existential_1(v52);
      v53 = *(*(v51 - 8) + 32);
      return v53();
    }

    v36 = v24;
LABEL_9:
    result = sub_266C55ECC(v36);
LABEL_10:
    v38 = v97;
    *v97 = 0u;
    *(v38 + 1) = 0u;
    return result;
  }

  result = 0x6D6574497369;
  v54 = a1 == 0x6D6574497369 && a2 == 0xE600000000000000;
  if (v54 || (result = OUTLINED_FUNCTION_9_5(0x6D6574497369, 0xE600000000000000), (result & 1) != 0))
  {
    v55 = OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_isItem;
LABEL_50:
    v56 = v97;
    v57 = *(v96 + v55);
    v97[3] = MEMORY[0x277D839B0];
    *v56 = v57;
    return result;
  }

  result = OUTLINED_FUNCTION_28_0();
  v59 = a1 == result && a2 == v58;
  if (v59 || (result = OUTLINED_FUNCTION_9_5(result, v58), (result & 1) != 0))
  {
    v55 = OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_isHeadphones;
    goto LABEL_50;
  }

  result = 0x6475627261457369;
  v60 = a1 == 0x6475627261457369 && a2 == 0xE900000000000073;
  if (v60 || (result = OUTLINED_FUNCTION_9_5(0x6475627261457369, 0xE900000000000073), (result & 1) != 0))
  {
    v55 = OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_isEarbuds;
    goto LABEL_50;
  }

  v61 = OUTLINED_FUNCTION_24_3();
  v63 = a1 == v61 && a2 == v62;
  if (v63 || (OUTLINED_FUNCTION_9_5(v61, v62) & 1) != 0)
  {
    v64 = OUTLINED_FUNCTION_18_5(OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_deviceLocality);
    sub_266C64D14(v64, v21);
    sub_266DA919C();
    OUTLINED_FUNCTION_4_13(v21);
    if (!v34)
    {
      goto LABEL_130;
    }

    v36 = v21;
    goto LABEL_9;
  }

  result = 0x72656E776FLL;
  if (a1 != 0x72656E776FLL || a2 != 0xE500000000000000)
  {
    result = OUTLINED_FUNCTION_9_5(0x72656E776FLL, 0xE500000000000000);
    if ((result & 1) == 0)
    {
      result = 0x4D734972656E776FLL;
      v69 = a1 == 0x4D734972656E776FLL && a2 == 0xE900000000000065;
      if (v69 || (result = OUTLINED_FUNCTION_9_5(0x4D734972656E776FLL, 0xE900000000000065), (result & 1) != 0))
      {
        v55 = OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_ownerIsMe;
      }

      else
      {
        v70 = a1 == 0xD000000000000010 && 0x8000000266DC1220 == a2;
        if (v70 || (OUTLINED_FUNCTION_9_5(0xD000000000000010, 0x8000000266DC1220) & 1) != 0)
        {
          v71 = OUTLINED_FUNCTION_18_5(OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_specificityLevel);
          sub_266C64D14(v71, v18);
          sub_266DA919C();
          OUTLINED_FUNCTION_4_13(v18);
          if (!v34)
          {
            goto LABEL_130;
          }

          v36 = v18;
          goto LABEL_9;
        }

        v72 = a1 == 0xD000000000000019 && 0x8000000266DC1240 == a2;
        if (v72 || (OUTLINED_FUNCTION_9_5(0xD000000000000019, 0x8000000266DC1240) & 1) != 0)
        {
          v73 = OUTLINED_FUNCTION_18_5(OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_conversationalProductName);
          v74 = v92;
          sub_266C64D14(v73, v92);
          sub_266DA919C();
          OUTLINED_FUNCTION_4_13(v74);
          if (!v34)
          {
            goto LABEL_130;
          }

          v36 = v92;
          goto LABEL_9;
        }

        result = OUTLINED_FUNCTION_23_3();
        if (a1 != result || a2 != v75)
        {
          result = OUTLINED_FUNCTION_9_5(result, v75);
          if ((result & 1) == 0)
          {
            v77 = a1 == 0x6567616D69 && a2 == 0xE500000000000000;
            if (v77 || (OUTLINED_FUNCTION_9_5(0x6567616D69, 0xE500000000000000) & 1) != 0)
            {
              v78 = OUTLINED_FUNCTION_18_5(OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_image);
              v79 = v93;
              sub_266C64D14(v78, v93);
              sub_266DA919C();
              OUTLINED_FUNCTION_4_13(v79);
              if (!v34)
              {
                goto LABEL_130;
              }

              v36 = v93;
            }

            else
            {
              v80 = OUTLINED_FUNCTION_29_0();
              v82 = a1 == v80 && a2 == v81;
              if (v82 || (OUTLINED_FUNCTION_9_5(v80, v81) & 1) != 0)
              {
                v83 = OUTLINED_FUNCTION_18_5(OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_selectAction);
                v84 = v94;
                sub_266C64D14(v83, v94);
                sub_266DA919C();
                OUTLINED_FUNCTION_4_13(v84);
                if (!v34)
                {
                  goto LABEL_130;
                }

                v36 = v94;
              }

              else
              {
                if (a1 != 0x7369736168706D65 || a2 != 0xEA00000000006449)
                {
                  result = OUTLINED_FUNCTION_9_5(0x7369736168706D65, 0xEA00000000006449);
                  if ((result & 1) == 0)
                  {
                    goto LABEL_10;
                  }
                }

                v86 = OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_emphasisId;
                v87 = v96;
                OUTLINED_FUNCTION_14_7();
                swift_beginAccess();
                v88 = v87 + v86;
                v89 = v95;
                sub_266C64D14(v88, v95);
                sub_266DA919C();
                OUTLINED_FUNCTION_4_13(v89);
                if (!v34)
                {
LABEL_130:
                  OUTLINED_FUNCTION_21_3();
                  OUTLINED_FUNCTION_6_10();
                  v53 = *(v90 + 32);
                  return v53();
                }

                v36 = v95;
              }
            }

            goto LABEL_9;
          }
        }

        v55 = OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_displayByName;
      }

      goto LABEL_50;
    }
  }

  v66 = *(v96 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_owner);
  if (!v66)
  {
    goto LABEL_10;
  }

  v67 = sub_266DA900C();
  v68 = v97;
  v97[3] = v67;
  *v68 = v66;
}

unint64_t sub_266C634DC()
{
  v0 = sub_266DAB1BC();

  if (v0 >= 0x11)
  {
    return 17;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_266C63534(char a1)
{
  result = 0x614E656369766564;
  switch(a1)
  {
    case 1:
      result = 0x696A6F6D65;
      break;
    case 2:
      result = OUTLINED_FUNCTION_27_1();
      break;
    case 3:
      result = OUTLINED_FUNCTION_26_3();
      break;
    case 4:
      result = 0x79726F6765746163;
      break;
    case 5:
      result = 0x6D6574497369;
      break;
    case 6:
      result = OUTLINED_FUNCTION_28_0();
      break;
    case 7:
      result = 0x6475627261457369;
      break;
    case 8:
      result = OUTLINED_FUNCTION_24_3();
      break;
    case 9:
      result = 0x72656E776FLL;
      break;
    case 10:
      result = 0x4D734972656E776FLL;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0xD000000000000019;
      break;
    case 13:
      result = OUTLINED_FUNCTION_23_3();
      break;
    case 14:
      result = 0x6567616D69;
      break;
    case 15:
      result = OUTLINED_FUNCTION_29_0();
      break;
    case 16:
      result = 0x7369736168706D65;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_266C63734@<X0>(_BYTE *a1@<X8>)
{
  result = sub_266C634DC();
  *a1 = result;
  return result;
}

uint64_t sub_266C63764@<X0>(uint64_t *a1@<X8>)
{
  result = sub_266C63534(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_266C63798@<X0>(_BYTE *a1@<X8>)
{
  result = sub_266C63530();
  *a1 = result;
  return result;
}

uint64_t sub_266C637CC(uint64_t a1)
{
  v2 = sub_266C64BE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266C63808(uint64_t a1)
{
  v2 = sub_266C64BE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_266C63844()
{
  sub_266C55ECC(v0 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_deviceName);
  sub_266C55ECC(v0 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_emoji);
  sub_266C55ECC(v0 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_productName);
  sub_266C55ECC(v0 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_deviceClass);
  sub_266C55ECC(v0 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_category);
  sub_266C55ECC(v0 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_deviceLocality);

  sub_266C55ECC(v0 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_specificityLevel);
  sub_266C55ECC(v0 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_conversationalProductName);
  sub_266C55ECC(v0 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_image);
  sub_266C55ECC(v0 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_selectAction);
  sub_266C55ECC(v0 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_emphasisId);
  return v0;
}

uint64_t sub_266C6393C(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x2821FE8D8](v1, v2, v3);
}

void sub_266C639C0(uint64_t a1)
{
  sub_266C63E94(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_266C63A80(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  OUTLINED_FUNCTION_4_3(v5);
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA6C8, &qword_266DB1810);
  OUTLINED_FUNCTION_0_2();
  v11 = v10;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v12);
  v14 = &v22 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_266C64BE0();
  sub_266DAB36C();
  v15 = OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_deviceName;
  LOBYTE(v23) = 0;
  sub_266DA919C();
  OUTLINED_FUNCTION_17_7();
  sub_266C64B98(v16, v17, MEMORY[0x277D55C50]);
  OUTLINED_FUNCTION_1_15(v3 + v15);
  if (!v2)
  {
    OUTLINED_FUNCTION_0_22();
    OUTLINED_FUNCTION_0_22();
    OUTLINED_FUNCTION_0_22();
    OUTLINED_FUNCTION_0_22();
    OUTLINED_FUNCTION_8_3(5);
    OUTLINED_FUNCTION_8_3(6);
    OUTLINED_FUNCTION_8_3(7);
    OUTLINED_FUNCTION_0_22();
    v23 = *(v3 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_owner);
    v24 = 9;
    sub_266DA900C();
    OUTLINED_FUNCTION_16_5();
    sub_266C64B98(v18, v19, MEMORY[0x277D55B78]);
    sub_266DAB0DC();
    OUTLINED_FUNCTION_8_3(10);
    OUTLINED_FUNCTION_0_22();
    OUTLINED_FUNCTION_0_22();
    OUTLINED_FUNCTION_8_3(13);
    OUTLINED_FUNCTION_0_22();
    OUTLINED_FUNCTION_0_22();
    v20 = OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_emphasisId;
    OUTLINED_FUNCTION_14_7();
    swift_beginAccess();
    sub_266C64D14(v3 + v20, v8);
    v24 = 16;
    OUTLINED_FUNCTION_1_15(v8);
    sub_266C55ECC(v8);
  }

  return (*(v11 + 8))(v14, v9);
}

uint64_t sub_266C63E44(void *a1)
{
  v2 = swift_allocObject();
  sub_266C63FD0(a1);
  return v2;
}

void sub_266C63E94(uint64_t a1)
{
  if (!qword_2800CA680)
  {
    sub_266DA919C();
    v1 = sub_266DAAC1C();
    if (!v2)
    {
      atomic_store(v1, &qword_2800CA680);
    }
  }
}

void sub_266C63F14(uint64_t a1)
{
  sub_266C63E94(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_266C63FD0(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  v5 = OUTLINED_FUNCTION_4_3(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_33_0();
  v65 = v6;
  OUTLINED_FUNCTION_15_8();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_19_4();
  v66 = v8;
  OUTLINED_FUNCTION_15_8();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_19_4();
  v67 = v10;
  OUTLINED_FUNCTION_15_8();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_19_4();
  v68 = v12;
  OUTLINED_FUNCTION_15_8();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_19_4();
  v69 = v14;
  OUTLINED_FUNCTION_15_8();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_19_4();
  v70 = v16;
  OUTLINED_FUNCTION_15_8();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_19_4();
  v71 = v18;
  OUTLINED_FUNCTION_15_8();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_19_4();
  v72 = v20;
  OUTLINED_FUNCTION_15_8();
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v64 - v23;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_32_0();
  MEMORY[0x28223BE20](v25);
  v75 = &v64 - v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA6A8, &qword_266DB1808);
  OUTLINED_FUNCTION_0_2();
  v73 = v28;
  v74 = v27;
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v29);
  v31 = &v64 - v30;
  *(v1 + 16) = 0;
  v32 = OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_emphasisId;
  sub_266DA919C();
  v78 = v1;
  OUTLINED_FUNCTION_3_11();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  v37 = a1[3];
  v77 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v37);
  sub_266C64BE0();
  v38 = v76;
  sub_266DAB34C();
  if (v38)
  {
    v42 = v78;

LABEL_4:
    sub_266C55ECC(v42 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_emphasisId);
    type metadata accessor for FindmyDevice(0);
    swift_deallocPartialClassInstance();
    goto LABEL_5;
  }

  v76 = v32;
  LOBYTE(v79) = 0;
  OUTLINED_FUNCTION_17_7();
  v41 = sub_266C64B98(v39, v40, MEMORY[0x277D55C60]);
  OUTLINED_FUNCTION_22_4();
  sub_266DAB00C();
  v44 = v78;
  sub_266C64C34(v75, v78 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_deviceName);
  OUTLINED_FUNCTION_11_5(1);
  OUTLINED_FUNCTION_12_7();
  OUTLINED_FUNCTION_22_4();
  sub_266DAB00C();
  sub_266C64C34(v2, v44 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_emoji);
  OUTLINED_FUNCTION_11_5(2);
  OUTLINED_FUNCTION_12_7();
  v64 = 0;
  sub_266DAB00C();
  sub_266C64C34(v24, v44 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_productName);
  OUTLINED_FUNCTION_11_5(3);
  v45 = v72;
  OUTLINED_FUNCTION_12_7();
  OUTLINED_FUNCTION_22_4();
  sub_266DAB00C();
  v46 = v41;
  sub_266C64C34(v45, v44 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_deviceClass);
  OUTLINED_FUNCTION_11_5(4);
  v47 = v71;
  OUTLINED_FUNCTION_12_7();
  OUTLINED_FUNCTION_22_4();
  sub_266DAB00C();
  sub_266C64C34(v47, v44 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_category);
  OUTLINED_FUNCTION_20_4(5);
  *(v44 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_isItem) = sub_266DAB02C() & 1;
  OUTLINED_FUNCTION_20_4(6);
  *(v44 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_isHeadphones) = sub_266DAB02C() & 1;
  OUTLINED_FUNCTION_20_4(7);
  *(v44 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_isEarbuds) = sub_266DAB02C() & 1;
  OUTLINED_FUNCTION_11_5(8);
  v48 = v70;
  OUTLINED_FUNCTION_12_7();
  sub_266DAB00C();
  v75 = 0;
  sub_266C64C34(v48, v44 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_deviceLocality);
  sub_266DA900C();
  v80 = 9;
  OUTLINED_FUNCTION_16_5();
  sub_266C64B98(v49, v50, MEMORY[0x277D55B80]);
  v51 = v75;
  sub_266DAB00C();
  v75 = v51;
  if (v51)
  {
    v52 = OUTLINED_FUNCTION_13_5();
    v53(v52);
    LODWORD(v76) = 0;
    OUTLINED_FUNCTION_7_9();
    v55 = v64;
    v42 = v78;

    sub_266C55ECC(v42 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_deviceName);
    if (v55)
    {
      if (v31)
      {
        goto LABEL_8;
      }
    }

    else
    {
      sub_266C55ECC(v42 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_emoji);
      if (v31)
      {
LABEL_8:
        sub_266C55ECC(v42 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_productName);
        if ((v48 & 1) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_14;
      }
    }

    if (!v48)
    {
LABEL_9:
      if (v46)
      {
        goto LABEL_10;
      }

      goto LABEL_15;
    }

LABEL_14:
    sub_266C55ECC(v42 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_deviceClass);
    if (v46)
    {
LABEL_10:
      sub_266C55ECC(v42 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_category);
      if ((v45 & 1) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

LABEL_15:
    if (!v45)
    {
LABEL_17:
      if (v76)
      {
        sub_266C55ECC(v42 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_image);
      }

      goto LABEL_4;
    }

LABEL_16:
    sub_266C55ECC(v42 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_deviceLocality);
    goto LABEL_17;
  }

  *(v78 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_owner) = v79;
  v54 = OUTLINED_FUNCTION_36_1(10);
  v75 = 0;
  *(v78 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_ownerIsMe) = v54 & 1;
  OUTLINED_FUNCTION_11_5(11);
  OUTLINED_FUNCTION_10_6();
  v75 = 0;
  OUTLINED_FUNCTION_30_0();
  sub_266C64C34(v69, v56);
  OUTLINED_FUNCTION_11_5(12);
  OUTLINED_FUNCTION_10_6();
  v75 = 0;
  OUTLINED_FUNCTION_30_0();
  sub_266C64C34(v68, v57);
  v58 = OUTLINED_FUNCTION_36_1(13);
  v75 = 0;
  *(v78 + OBJC_IVAR____TtC10SiriFindMy12FindmyDevice_displayByName) = v58 & 1;
  OUTLINED_FUNCTION_11_5(14);
  OUTLINED_FUNCTION_10_6();
  v75 = 0;
  OUTLINED_FUNCTION_30_0();
  sub_266C64C34(v67, v59);
  OUTLINED_FUNCTION_11_5(15);
  OUTLINED_FUNCTION_10_6();
  v75 = 0;
  OUTLINED_FUNCTION_30_0();
  sub_266C64C34(v66, v60);
  OUTLINED_FUNCTION_11_5(16);
  v61 = v74;
  v62 = v75;
  sub_266DAB00C();
  (*(v73 + 8))(v31, v61);
  v42 = v78;
  if (v62)
  {
  }

  else
  {
    v63 = v76;
    swift_beginAccess();
    sub_266C64CA4(v65, v42 + v63);
    swift_endAccess();
  }

LABEL_5:
  __swift_destroy_boxed_opaque_existential_0(v77);
  return v42;
}

void *sub_266C649A8()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = v2;
  return v2;
}

void sub_266C649F0(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = a1;
}

uint64_t sub_266C64AB8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_266C63E44(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_266C64B98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266C64BE0()
{
  result = qword_2800CA6B0;
  if (!qword_2800CA6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800CA6B0);
  }

  return result;
}

uint64_t sub_266C64C34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_266C64CA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_266C64D14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800CA038, &unk_266DAFBF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for FindmyDevice.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEF)
  {
    v6 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
          *result = a2 + 16;
        }

        break;
    }
  }

  return result;
}