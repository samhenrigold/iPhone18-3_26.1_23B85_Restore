uint64_t MLCheckpoint.metrics.setter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BEF0, &qword_237C0F050);
  v2 = sub_237C0910C();
  v3 = v2;
  v4 = 0;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = v2 + 64;
  if (v7)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_10:
      v13 = v10 | (v4 << 6);
      v14 = *(*(a1 + 48) + v13);
      sub_2379FED88(*(a1 + 56) + 32 * v13, v22);
      sub_237A830EC(v22, v21);
      __swift_destroy_boxed_opaque_existential_1(v22);
      *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(v3[6] + v13) = v14;
      sub_237A1FCF0(v21, v3[7] + 40 * v13);
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        break;
      }

      v3[2] = v17;
      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v11 = v4;
    while (1)
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v4 >= v8)
      {

        v18 = *(type metadata accessor for MLCheckpoint(0) + 32);

        *(v20 + v18) = v3;
        return result;
      }

      v12 = *(a1 + 64 + 8 * v4);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v7 = (v12 - 1) & v12;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);

  result = __swift_destroy_boxed_opaque_existential_1(v22);
  __break(1u);
  return result;
}

void sub_237A8212C(uint64_t a1)
{
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BFC0, &qword_237C0F210);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_28_6(v3, v57);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BFC8, &qword_237C0F218);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v4);
  v66 = &v57 - v5;
  v6 = sub_237C06A4C();
  OUTLINED_FUNCTION_0();
  v70 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_0();
  v11 = v10 - v9;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BFD0, &qword_237C0F220);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_18_0();
  v63 = v13 - v14;
  MEMORY[0x28223BE20](v15);
  v62 = &v57 - v16;
  v71 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BFD8, &qword_237C0F228);
    v17 = OUTLINED_FUNCTION_26_11();
  }

  else
  {
    v17 = MEMORY[0x277D84F98];
  }

  v18 = v71 + 64;
  OUTLINED_FUNCTION_17_13();
  v21 = v20 & v19;
  v23 = (v22 + 63) >> 6;
  v60 = v70 + 16;
  v73 = v70 + 32;
  v24 = v17 + 64;

  v25 = 0;
  v58 = v18;
  v59 = v23;
  v65 = v11;
  v61 = v17;
  if (!v21)
  {
    goto LABEL_5;
  }

  do
  {
LABEL_9:
    v27 = __clz(__rbit64(v21)) | (v25 << 6);
    v28 = v70;
    v29 = v71;
    v30 = *(v71 + 48);
    v72 = *(v70 + 72);
    v31 = v62;
    (*(v70 + 16))(v62, v30 + v72 * v27, v6);
    v32 = *(*(v29 + 56) + 8 * v27);
    v34 = v63;
    v33 = v64;
    *(v31 + *(v64 + 48)) = v32;
    sub_237A85D84(v31, v34);
    v35 = *(v33 + 48);
    v36 = *(v69 + 48);
    v37 = *(v28 + 32);
    v38 = v6;
    v39 = v68;
    v37(v68, v34, v38);
    *&v74[0] = *(v34 + v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B8C0, &qword_237C13EC0);
    swift_dynamicCast();
    v40 = v66;
    v41 = *(v67 + 48);
    v37(v66, v39, v38);
    v42 = (v39 + v36);
    v6 = v38;
    sub_2379DAD24(v42, &v40[v41]);
    v43 = v65;
    v37(v65, v40, v38);
    sub_2379DAD24(&v40[v41], v74);
    v44 = v61;
    sub_237A85DF4(&qword_27DE9B8C8, MEMORY[0x277CC4F88], MEMORY[0x277CC4F90]);
    sub_237C0861C();
    OUTLINED_FUNCTION_30_9();
    if (((v47 << v46) & ~*(v24 + 8 * v45)) == 0)
    {
      OUTLINED_FUNCTION_7_20();
      v23 = v59;
      while (++v51 != v53 || (v52 & 1) == 0)
      {
        v54 = v51 == v53;
        if (v51 == v53)
        {
          v51 = 0;
        }

        v52 |= v54;
        if (*(v24 + 8 * v51) != -1)
        {
          OUTLINED_FUNCTION_24_12();
          v50 = v56 + (v55 << 6);
          goto LABEL_18;
        }
      }

      goto LABEL_22;
    }

    OUTLINED_FUNCTION_21_13();
    v50 = v48 | v49;
    v23 = v59;
LABEL_18:
    v21 &= v21 - 1;
    *(v24 + ((v50 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v50;
    v37(v44[6] + v50 * v72, v43, v6);
    sub_2379DAD24(v74, (v44[7] + 32 * v50));
    ++v44[2];
    v18 = v58;
  }

  while (v21);
LABEL_5:
  while (1)
  {
    v26 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v26 >= v23)
    {

      return;
    }

    v21 = *(v18 + 8 * v26);
    ++v25;
    if (v21)
    {
      v25 = v26;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

void *sub_237A825E8(void *a1)
{
  if (a1[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BFE0, &qword_237C0F230);
    v2 = OUTLINED_FUNCTION_26_11();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  OUTLINED_FUNCTION_17_13();
  v5 = v4 & v3;
  v7 = (v6 + 63) >> 6;
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_80();
  v8 = v2 + 8;

  v9 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      JUMPOUT(0x237A82948);
    }

    if (v10 >= v7)
    {
      break;
    }

    v5 = a1[v10 + 8];
    ++v9;
    if (v5)
    {
      v9 = v10;
      do
      {
LABEL_9:
        v11 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v12 = v11 | (v9 << 6);
        v13 = *(a1[6] + v12);
        sub_2379E8624(a1[7] + 40 * v12, v30 + 8);
        LOBYTE(v30[0]) = v13;
        v29[0] = v30[0];
        v29[1] = v30[1];
        v29[2] = v30[2];
        LOBYTE(v28[0]) = v13;
        sub_237A1FCF0((v29 + 8), v27);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BF50, &unk_237C137E0);
        swift_dynamicCast();
        v25 = v28[0];
        sub_2379DAD24((v28 + 8), v26);
        sub_2379DAD24(v26, v28);
        sub_237C093CC();
        switch(v25)
        {
          case 1:
            OUTLINED_FUNCTION_13_16();
            break;
          case 2:
            OUTLINED_FUNCTION_16_12();
            break;
          case 3:
            OUTLINED_FUNCTION_25_10();
            break;
          case 4:
            OUTLINED_FUNCTION_11_20();
            break;
          case 5:
          case 7:
          case 9:
          case 10:
            OUTLINED_FUNCTION_10_17();
            break;
          case 8:
            OUTLINED_FUNCTION_14_15();
            break;
          default:
            break;
        }

        sub_237C0878C();

        sub_237C0940C();
        OUTLINED_FUNCTION_30_9();
        if (((v16 << v15) & ~v8[v14]) != 0)
        {
          OUTLINED_FUNCTION_21_13();
        }

        else
        {
          OUTLINED_FUNCTION_7_20();
          do
          {
            if (++v17 == v19 && (v18 & 1) != 0)
            {
              goto LABEL_29;
            }

            v20 = v17 == v19;
            if (v17 == v19)
            {
              v17 = 0;
            }

            v18 |= v20;
          }

          while (v8[v17] == -1);
          OUTLINED_FUNCTION_24_12();
        }

        OUTLINED_FUNCTION_31_7();
        *(v8 + v21) |= v22;
        *(v2[6] + v23) = v25;
        sub_2379DAD24(v28, (v2[7] + 32 * v23));
        ++v2[2];
      }

      while (v5);
    }
  }

  return v2;
}

uint64_t sub_237A82974(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BEF0, &qword_237C0F050);
    v2 = sub_237C0912C();
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
  if (v5)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_25:
      __break(1u);
      JUMPOUT(0x237A82D5CLL);
    }

    if (v9 >= v6)
    {
      break;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      do
      {
LABEL_12:
        v10 = __clz(__rbit64(v5)) | (v8 << 6);
        v11 = *(*(a1 + 56) + 8 * v10);
        v5 &= v5 - 1;
        LOBYTE(v24[0]) = *(*(a1 + 48) + v10);
        v25 = MEMORY[0x277D839F8];
        v26 = &protocol witness table for Double;
        *(&v24[0] + 1) = v11;
        v22 = v24[0];
        sub_237A1FCF0((v24 + 8), v23);
        sub_237A1FCF0(v23, v24);
        sub_237C093CC();
        sub_237C0878C();

        v12 = sub_237C0940C();
        v13 = -1 << *(v2 + 32);
        v14 = v12 & ~v13;
        v15 = v14 >> 6;
        if (((-1 << v14) & ~*(v7 + 8 * (v14 >> 6))) != 0)
        {
          v16 = __clz(__rbit64((-1 << v14) & ~*(v7 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v17 = 0;
          v18 = (63 - v13) >> 6;
          do
          {
            if (++v15 == v18 && (v17 & 1) != 0)
            {
              goto LABEL_25;
            }

            v19 = v15 == v18;
            if (v15 == v18)
            {
              v15 = 0;
            }

            v17 |= v19;
            v20 = *(v7 + 8 * v15);
          }

          while (v20 == -1);
          v16 = __clz(__rbit64(~v20)) + (v15 << 6);
        }

        *(v7 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        *(*(v2 + 48) + v16) = v22;
        sub_237A1FCF0(v24, *(v2 + 56) + 40 * v16);
        ++*(v2 + 16);
      }

      while (v5);
    }
  }

  return v2;
}

uint64_t sub_237A82D88(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BFE0, &qword_237C0F230);
    v2 = OUTLINED_FUNCTION_26_11();
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
  OUTLINED_FUNCTION_80();
  OUTLINED_FUNCTION_80();
  v7 = v2 + 64;

  v8 = 0;
  if (v5)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_32:
      __break(1u);
      JUMPOUT(0x237A830C0);
    }

    if (v9 >= v6)
    {
      break;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      do
      {
LABEL_12:
        v10 = __clz(__rbit64(v5)) | (v8 << 6);
        v11 = *(*(a1 + 56) + 8 * v10);
        v5 &= v5 - 1;
        LOBYTE(v24[0]) = *(*(a1 + 48) + v10);
        v23 = v11;
        swift_dynamicCast();
        v21 = v24[0];
        sub_2379DAD24((v24 + 8), v22);
        sub_2379DAD24(v22, v24);
        sub_237C093CC();
        switch(v21)
        {
          case 1:
            OUTLINED_FUNCTION_13_16();
            break;
          case 2:
            OUTLINED_FUNCTION_16_12();
            break;
          case 3:
            OUTLINED_FUNCTION_25_10();
            break;
          case 4:
            OUTLINED_FUNCTION_11_20();
            break;
          case 5:
          case 7:
          case 9:
          case 10:
            OUTLINED_FUNCTION_10_17();
            break;
          case 8:
            OUTLINED_FUNCTION_14_15();
            break;
          default:
            break;
        }

        sub_237C0878C();

        v12 = sub_237C0940C() & ~(-1 << *(v2 + 32));
        if (((-1 << v12) & ~*(v7 + 8 * (v12 >> 6))) != 0)
        {
          OUTLINED_FUNCTION_21_13();
        }

        else
        {
          OUTLINED_FUNCTION_7_20();
          do
          {
            if (++v13 == v15 && (v14 & 1) != 0)
            {
              goto LABEL_32;
            }

            v16 = v13 == v15;
            if (v13 == v15)
            {
              v13 = 0;
            }

            v14 |= v16;
          }

          while (*(v7 + 8 * v13) == -1);
          OUTLINED_FUNCTION_24_12();
        }

        OUTLINED_FUNCTION_31_7();
        *(v7 + v17) |= v18;
        *(*(v2 + 48) + v19) = v21;
        sub_2379DAD24(v24, (*(v2 + 56) + 32 * v19));
        ++*(v2 + 16);
      }

      while (v5);
    }
  }

  return v2;
}

uint64_t sub_237A830EC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v20 - v5;
  v7 = sub_237C05ADC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2379FED88(a1, v20);
  v11 = MEMORY[0x277D839F8];
  result = swift_dynamicCast();
  if (result)
  {
    v13 = v21;
    a2[3] = v11;
    a2[4] = &protocol witness table for Double;
    *a2 = v13;
  }

  else
  {
    sub_2379FED88(a1, v20);
    v14 = MEMORY[0x277D83A90];
    result = swift_dynamicCast();
    if (result)
    {
      v15 = v21;
      a2[3] = v14;
      a2[4] = &protocol witness table for Float;
      *a2 = v15;
    }

    else
    {
      sub_2379FED88(a1, v20);
      v16 = MEMORY[0x277D83B88];
      result = swift_dynamicCast();
      if (result)
      {
        v17 = v21;
        a2[3] = v16;
        a2[4] = &protocol witness table for Int;
        *a2 = v17;
      }

      else
      {
        sub_2379FED88(a1, v20);
        if (swift_dynamicCast())
        {
          __swift_storeEnumTagSinglePayload(v6, 0, 1, v7);
          v18 = *(v8 + 32);
          v18(v10, v6, v7);
          a2[3] = v7;
          a2[4] = sub_237A85DF4(&qword_27DE9BFF8, MEMORY[0x277CC9260], &protocol conformance descriptor for URL);
          boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a2);
          return (v18)(boxed_opaque_existential_0, v10, v7);
        }

        else
        {
          __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
          sub_2379D9054(v6, &qword_27DE9AA18, &qword_237C0B710);
          v20[0] = 0;
          v20[1] = 0xE000000000000000;
          sub_237C08EDC();
          MEMORY[0x2383DC360](0x2065756C6156, 0xE600000000000000);
          __swift_project_boxed_opaque_existential_1(a1, a1[3]);
          sub_237C0927C();
          MEMORY[0x2383DC360](0xD000000000000016, 0x8000000237C19E60);
          result = sub_237C090DC();
          __break(1u);
        }
      }
    }
  }

  return result;
}

uint64_t (*MLCheckpoint.metrics.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = type metadata accessor for MLCheckpoint(0);
  *a1 = sub_237A825E8(*(v1 + *(v3 + 32)));
  return sub_237A834BC;
}

uint64_t sub_237A834BC(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return MLCheckpoint.metrics.setter(*a1);
  }

  MLCheckpoint.metrics.setter(v2);
}

uint64_t sub_237A83514(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v3 || (OUTLINED_FUNCTION_8_20(7107189, 0xE300000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6573616870 && a2 == 0xE500000000000000;
    if (v6 || (OUTLINED_FUNCTION_8_20(0x6573616870, 0xE500000000000000) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6F69746172657469 && a2 == 0xE90000000000006ELL;
      if (v7 || (OUTLINED_FUNCTION_8_20(0x6F69746172657469, 0xE90000000000006ELL) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 1702125924 && a2 == 0xE400000000000000;
        if (v8 || (OUTLINED_FUNCTION_8_20(1702125924, 0xE400000000000000) & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x697274654D6C7275 && a2 == 0xEA00000000007363;
          if (v9 || (OUTLINED_FUNCTION_8_20(0x697274654D6C7275, 0xEA00000000007363) & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x7363697274656DLL && a2 == 0xE700000000000000)
          {

            return 5;
          }

          else
          {
            v11 = OUTLINED_FUNCTION_8_20(0x7363697274656DLL, 0xE700000000000000);

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

uint64_t sub_237A836C0(char a1)
{
  result = 7107189;
  switch(a1)
  {
    case 1:
      result = 0x6573616870;
      break;
    case 2:
      result = 0x6F69746172657469;
      break;
    case 3:
      result = 1702125924;
      break;
    case 4:
      result = 0x697274654D6C7275;
      break;
    case 5:
      result = 0x7363697274656DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_237A83788@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_237A83514(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237A837BC(uint64_t a1)
{
  v2 = sub_237A84B00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_237A837F8(uint64_t a1)
{
  v2 = sub_237A84B00();

  return MEMORY[0x2821FE720](a1, v2);
}

void *MLCheckpoint.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  sub_237C05BFC();
  OUTLINED_FUNCTION_0();
  v60 = v6;
  v61 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v59 = v8 - v7;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BEF8, &qword_237C0F058);
  OUTLINED_FUNCTION_0();
  v64 = v9;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11);
  v12 = OUTLINED_FUNCTION_37_4();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_18_0();
  v65 = v16 - v17;
  MEMORY[0x28223BE20](v18);
  v67 = &v58 - v19;
  v62 = type metadata accessor for MLCheckpoint(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2_0();
  v63 = v22 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v23 = sub_237C0945C();
  if (qword_27DE9A580 != -1)
  {
    OUTLINED_FUNCTION_66(&qword_27DE9A580);
  }

  v24 = sub_237C0909C();
  __swift_project_value_buffer(v24, qword_27DEACD18);
  sub_237AC9B10(v23, &v68);

  if (!v69)
  {
    sub_2379D9054(&v68, &qword_27DE9A998, &unk_237C0C100);
    v55 = OUTLINED_FUNCTION_35_6();
    __swift_storeEnumTagSinglePayload(v55, v56, 1, v12);
    goto LABEL_18;
  }

  v25 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v3, v25 ^ 1u, 1, v12);
  v26 = OUTLINED_FUNCTION_35_6();
  if (__swift_getEnumTagSinglePayload(v26, v27, v12) == 1)
  {
LABEL_18:
    sub_2379D9054(v3, &qword_27DE9AA18, &qword_237C0B710);
    result = OUTLINED_FUNCTION_20_9("Fatal error");
    __break(1u);
    return result;
  }

  (*(v14 + 32))(v67, v3, v12);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237A84B00();
  sub_237C0946C();
  if (v2)
  {
    v31 = OUTLINED_FUNCTION_23_2();
    v32(v31);
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v68) = 0;
    OUTLINED_FUNCTION_5_25();
    sub_237A85DF4(v28, v29, MEMORY[0x277CC9280]);
    v30 = v65;
    OUTLINED_FUNCTION_18_17();
    sub_237C091BC();
    v34 = [objc_opt_self() defaultManager];
    sub_237C05A9C();
    v35 = v30;
    v36 = sub_237C086BC();

    v37 = [v34 fileExistsAtPath_];

    if (v37)
    {
      (*(v14 + 16))(v63, v35, v12);
    }

    else
    {
      sub_237C05A9C();
      sub_237C05A2C();
    }

    v70 = 1;
    sub_237A84B54();
    OUTLINED_FUNCTION_18_17();
    sub_237C091BC();
    v38 = v62;
    *(v63 + *(v62 + 20)) = v68;
    LOBYTE(v68) = 2;
    OUTLINED_FUNCTION_18_17();
    *(v63 + *(v38 + 24)) = sub_237C091AC();
    LOBYTE(v68) = 3;
    OUTLINED_FUNCTION_4_28();
    sub_237A85DF4(v39, v40, MEMORY[0x277CC95A0]);
    v41 = v61;
    OUTLINED_FUNCTION_18_17();
    sub_237C091BC();
    (*(v60 + 32))(v63 + *(v38 + 28), v59, v41);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BF20, &qword_237C0F060);
    v70 = 5;
    v42 = sub_237A85304(&qword_27DE9BF28, sub_237A84BA8, MEMORY[0x277D83A30], MEMORY[0x277D83528]);
    OUTLINED_FUNCTION_15_14(v42);
    v43 = v68;
    if (!v68)
    {
      sub_237A84BFC();
      v43 = sub_237C085AC();
    }

    v44 = sub_237A82974(v43);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BF40, &qword_237C0F068);
    v70 = 4;
    v45 = sub_237A84C50();
    v46 = OUTLINED_FUNCTION_15_14(v45);
    v47 = v68;
    if (v68)
    {
      MEMORY[0x28223BE20](v46);
      v57 = v67;
      v48 = sub_237A85008(v47, sub_237A85000, (&v58 - 4));
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BF50, &unk_237C137E0);
      sub_237A84BFC();
      v48 = sub_237C085AC();
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v68 = v44;
    sub_237A84D0C(v48, sub_237A84F2C, 0, isUniquelyReferenced_nonNull_native, &v68);
    v50 = *(v14 + 8);
    v50(v65, v12);
    v51 = OUTLINED_FUNCTION_2_34();
    v52(v51, v66);
    v53 = v63;
    *(v63 + *(v62 + 32)) = v68;
    v54 = OUTLINED_FUNCTION_23_2();
    (v50)(v54);
    sub_237A84F40(v53, v58);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_237A84FA4(v53);
  }
}

uint64_t sub_237A8416C(uint64_t a1)
{
  sub_237C05A9C();
  sub_237C05A2C();
}

void *MLCheckpoint.encode(to:)(void *a1)
{
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BF58, &qword_237C0F070);
  OUTLINED_FUNCTION_0();
  v4 = v3;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_28_6(v6, v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  v8 = OUTLINED_FUNCTION_37_4();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_18_0();
  MEMORY[0x28223BE20](v12);
  v61 = &v50 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_23_2();
  v14 = sub_237C0948C();
  if (qword_27DE9A580 != -1)
  {
    OUTLINED_FUNCTION_66(&qword_27DE9A580);
  }

  v15 = sub_237C0909C();
  __swift_project_value_buffer(v15, qword_27DEACD18);
  sub_237AC9B10(v14, &v59);

  if (!v60)
  {
    sub_2379D9054(&v59, &qword_27DE9A998, &unk_237C0C100);
    v45 = OUTLINED_FUNCTION_35_6();
    __swift_storeEnumTagSinglePayload(v45, v46, 1, v8);
    goto LABEL_9;
  }

  v16 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v1, v16 ^ 1u, 1, v8);
  v17 = OUTLINED_FUNCTION_35_6();
  if (__swift_getEnumTagSinglePayload(v17, v18, v8) == 1)
  {
LABEL_9:
    sub_2379D9054(v1, &qword_27DE9AA18, &qword_237C0B710);
    result = OUTLINED_FUNCTION_20_9("Fatal error");
    __break(1u);
    return result;
  }

  v53 = v4;
  (*(v10 + 32))(v61, v1, v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_237A84B00();
  sub_237C0949C();
  v19 = v10;
  v20 = v52;
  *&v59 = sub_237C05A9C();
  *(&v59 + 1) = v21;
  v57 = sub_237C05A9C();
  v58 = v22;
  v55 = 0;
  v56 = 0xE000000000000000;
  v48 = sub_2379F3408();
  v49 = v48;
  v47[0] = MEMORY[0x277D837D0];
  v47[1] = v48;
  sub_237C08D9C();

  sub_237C059BC();

  LOBYTE(v59) = 0;
  OUTLINED_FUNCTION_5_25();
  sub_237A85DF4(v23, v24, MEMORY[0x277CC9268]);
  v25 = v51;
  sub_237C0921C();
  if (v25)
  {
    v26 = *(v19 + 8);
    v27 = OUTLINED_FUNCTION_36_5();
    v26(v27);
    v28 = OUTLINED_FUNCTION_34_6();
    v29(v28);
    return (v26)(v61, v8);
  }

  else
  {
    v31 = OUTLINED_FUNCTION_36_5();
    v51 = v32;
    v32(v31);
    v33 = type metadata accessor for MLCheckpoint(0);
    LOBYTE(v59) = *(v20 + *(v33 + 20));
    LOBYTE(v57) = 1;
    sub_237A852B0();
    sub_237C0921C();
    v50 = v19 + 8;
    LOBYTE(v59) = 2;
    sub_237C0920C();
    LOBYTE(v59) = 3;
    sub_237C05BFC();
    OUTLINED_FUNCTION_4_28();
    sub_237A85DF4(v34, v35, MEMORY[0x277CC9580]);
    sub_237C0921C();
    v52 = *(v20 + *(v33 + 32));
    v36 = sub_237A825E8(v52);
    v37 = sub_237A80F74(v36);

    *&v59 = v37;
    LOBYTE(v57) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BF20, &qword_237C0F060);
    sub_237A85304(&qword_27DE9BF78, sub_237A85388, MEMORY[0x277D83A08], MEMORY[0x277D83508]);
    OUTLINED_FUNCTION_33_6();
    sub_237C0921C();

    v38 = sub_237A825E8(v52);
    v39 = sub_237A813D0(v38);

    MEMORY[0x28223BE20](v40);
    v41 = v61;
    v48 = v61;
    v42 = sub_237A853F8(sub_237A853DC, v47, v39);

    *&v59 = v42;
    LOBYTE(v57) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BF40, &qword_237C0F068);
    sub_237A856DC();
    OUTLINED_FUNCTION_33_6();
    sub_237C0921C();
    v43 = OUTLINED_FUNCTION_9_19();
    v44(v43);

    return v51(v41, v8);
  }
}

uint64_t sub_237A848F0(uint64_t a1)
{
  sub_237C05A9C();
  sub_237C05A9C();
  sub_2379F3408();
  sub_237C08D9C();

  sub_237C059BC();
}

uint64_t sub_237A849F4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C010, &unk_237C0F250);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v0);
  v2 = &v6 - v1;
  v3 = sub_237C0909C();
  __swift_allocate_value_buffer(v3, qword_27DEACD18);
  v4 = __swift_project_value_buffer(v3, qword_27DEACD18);
  sub_237C0908C();
  result = __swift_getEnumTagSinglePayload(v2, 1, v3);
  if (result != 1)
  {
    return (*(*(v3 - 8) + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

unint64_t sub_237A84B00()
{
  result = qword_27DE9BF00;
  if (!qword_27DE9BF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9BF00);
  }

  return result;
}

unint64_t sub_237A84B54()
{
  result = qword_27DE9BF10;
  if (!qword_27DE9BF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9BF10);
  }

  return result;
}

unint64_t sub_237A84BA8()
{
  result = qword_27DE9BF30;
  if (!qword_27DE9BF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9BF30);
  }

  return result;
}

unint64_t sub_237A84BFC()
{
  result = qword_27DE9BF38;
  if (!qword_27DE9BF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9BF38);
  }

  return result;
}

unint64_t sub_237A84C50()
{
  result = qword_27DE9BF48;
  if (!qword_27DE9BF48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9BF40, &qword_237C0F068);
    sub_237A84BA8();
    sub_237A85DF4(&qword_27DE9BF08, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9BF48);
  }

  return result;
}

uint64_t sub_237A84D0C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  sub_237AC1704(v32);
  v28 = v32[0];
  v29 = v32[1];
  v30 = v32[2];
  v31 = v33;

  while (1)
  {
    sub_237A81A44(v26);
    if (!v27)
    {
      sub_2379E925C(v28);
    }

    v7 = LOBYTE(v26[0]);
    sub_237A1FCF0((v26 + 8), v25);
    v8 = *a5;
    v10 = sub_237ACB370(v7);
    v11 = v8[2];
    v12 = (v9 & 1) == 0;
    v13 = v11 + v12;
    if (__OFADD__(v11, v12))
    {
      break;
    }

    v14 = v9;
    if (v8[3] >= v13)
    {
      if (a4)
      {
        if (v9)
        {
          goto LABEL_10;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C000, &unk_237C132D0);
        sub_237C090BC();
        if (v14)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_237AC09EC(v13, a4 & 1);
      v15 = sub_237ACB370(v7);
      if ((v14 & 1) != (v16 & 1))
      {
        goto LABEL_18;
      }

      v10 = v15;
      if (v14)
      {
LABEL_10:
        v17 = *a5;
        sub_2379E8624(v25, v24);
        __swift_destroy_boxed_opaque_existential_1(v25);
        v18 = (v17[7] + 40 * v10);
        __swift_destroy_boxed_opaque_existential_1(v18);
        sub_237A1FCF0(v24, v18);
        goto LABEL_14;
      }
    }

    v19 = *a5;
    *(*a5 + 8 * (v10 >> 6) + 64) |= 1 << v10;
    *(v19[6] + v10) = v7;
    sub_237A1FCF0(v25, v19[7] + 40 * v10);
    v20 = v19[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_17;
    }

    v19[2] = v22;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_237C0932C();
  __break(1u);
  return result;
}

uint64_t sub_237A84F40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLCheckpoint(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237A84FA4(uint64_t a1)
{
  v2 = type metadata accessor for MLCheckpoint(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237A85008(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v36 = a2;
  v37 = a3;
  v34 = sub_237C05ADC();
  v4 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v32 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BEF0, &qword_237C0F050);
  result = sub_237C0910C();
  v7 = result;
  v8 = 0;
  v35 = a1;
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
  v33 = v4;
  v29 = v4 + 8;
  v30 = v4 + 16;
  v28 = result + 64;
  v31 = result;
  v16 = v4;
  if ((v13 & v9) != 0)
  {
    while (1)
    {
      v17 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_10:
      v20 = v17 | (v8 << 6);
      v21 = v34;
      v22 = *(v35 + 56);
      v41 = *(*(v35 + 48) + v20);
      v23 = v32;
      (*(v16 + 16))(v32, v22 + *(v16 + 72) * v20, v34);
      v39 = v21;
      v40 = sub_237A85DF4(&qword_27DE9BFF8, MEMORY[0x277CC9260], &protocol conformance descriptor for URL);
      __swift_allocate_boxed_opaque_existential_0(&v38);
      v36(v23);
      (*(v16 + 8))(v23, v21);
      *(v28 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v7 = v31;
      *(*(v31 + 48) + v20) = v41;
      result = sub_237A1FCF0(&v38, *(v7 + 56) + 40 * v20);
      v24 = *(v7 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        break;
      }

      *(v7 + 16) = v26;
      if (!v14)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v8 >= v15)
      {
        return v7;
      }

      v19 = *(v10 + 8 * v8);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v14 = (v19 - 1) & v19;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_237A852B0()
{
  result = qword_27DE9BF68;
  if (!qword_27DE9BF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9BF68);
  }

  return result;
}

uint64_t sub_237A85304(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9BF20, &qword_237C0F060);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_237A85388()
{
  result = qword_27DE9BF80;
  if (!qword_27DE9BF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9BF80);
  }

  return result;
}

uint64_t sub_237A853F8(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v39 = a1;
  v40 = a2;
  v4 = sub_237C05ADC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v33 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BFE8, &qword_237C0F238);
  result = sub_237C0910C();
  v11 = v4;
  v12 = 0;
  v41 = a3;
  v42 = result;
  v15 = *(a3 + 64);
  v14 = a3 + 64;
  v13 = v15;
  v16 = 1 << *(v14 - 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v36 = v5 + 16;
  v37 = (v5 + 8);
  v35 = result + 64;
  v38 = v5;
  v33 = v14;
  v34 = (v5 + 32);
  while (1)
  {
    v20 = v43;
    if (!v18)
    {
      v22 = v12;
      while (1)
      {
        v12 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v12 >= v19)
        {
          return v42;
        }

        v23 = *(v33 + 8 * v12);
        ++v22;
        if (v23)
        {
          v21 = __clz(__rbit64(v23));
          v44 = (v23 - 1) & v23;
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
      return result;
    }

    v21 = __clz(__rbit64(v18));
    v44 = (v18 - 1) & v18;
LABEL_11:
    v24 = v21 | (v12 << 6);
    v25 = *(*(v41 + 48) + v24);
    v26 = *(v38 + 72) * v24;
    (*(v38 + 16))(v43, *(v41 + 56) + v26, v11);
    v27 = v45;
    v39(v20);
    v45 = v27;
    if (v27)
    {
      break;
    }

    (*v37)(v20, v11);
    *(v35 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v28 = v42;
    *(*(v42 + 48) + v24) = v25;
    result = (*v34)(*(v28 + 56) + v26, v7, v11);
    v29 = *(v28 + 16);
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (v30)
    {
      goto LABEL_18;
    }

    *(v28 + 16) = v31;
    v18 = v44;
  }

  (*v37)(v20, v11);
  v32 = v42;

  return v32;
}

unint64_t sub_237A856DC()
{
  result = qword_27DE9BF88;
  if (!qword_27DE9BF88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9BF40, &qword_237C0F068);
    sub_237A85388();
    sub_237A85DF4(&qword_27DE9BF60, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9BF88);
  }

  return result;
}

void *sub_237A85798@<X0>(uint64_t *a1@<X8>)
{
  result = MLCheckpoint.metrics.getter();
  *a1 = result;
  return result;
}

uint64_t sub_237A857DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_237C05ADC();
  OUTLINED_FUNCTION_135();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  sub_237C05BFC();
  OUTLINED_FUNCTION_135();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 28);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 32));
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_237A858DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_237C05ADC();
  OUTLINED_FUNCTION_135();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    sub_237C05BFC();
    OUTLINED_FUNCTION_135();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 32)) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 28);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

void sub_237A859C4(uint64_t a1)
{
  sub_237C05ADC();
  if (v1 <= 0x3F)
  {
    sub_237C05BFC();
    if (v2 <= 0x3F)
    {
      sub_237A85A78(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_237A85A78(uint64_t a1)
{
  if (!qword_27DE9BFA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9BF50, &unk_237C137E0);
    sub_237A84BFC();
    v1 = sub_237C085DC();
    if (!v2)
    {
      atomic_store(v1, &qword_27DE9BFA0);
    }
  }
}

uint64_t getEnumTagSinglePayload for MLCheckpoint.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for MLCheckpoint.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x237A85C44);
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

unint64_t sub_237A85C80()
{
  result = qword_27DE9BFA8;
  if (!qword_27DE9BFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9BFA8);
  }

  return result;
}

unint64_t sub_237A85CD8()
{
  result = qword_27DE9BFB0;
  if (!qword_27DE9BFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9BFB0);
  }

  return result;
}

unint64_t sub_237A85D30()
{
  result = qword_27DE9BFB8;
  if (!qword_27DE9BFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9BFB8);
  }

  return result;
}

uint64_t sub_237A85D84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BFD0, &qword_237C0F220);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_237A85DF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_8_20(uint64_t a1, uint64_t a2)
{

  return sub_237C0929C();
}

uint64_t OUTLINED_FUNCTION_15_14(uint64_t a1)
{

  return sub_237C0917C();
}

uint64_t OUTLINED_FUNCTION_20_9(uint64_t a1)
{

  return sub_237C090DC();
}

uint64_t OUTLINED_FUNCTION_26_11()
{

  return sub_237C0912C();
}

uint64_t OUTLINED_FUNCTION_37_4()
{

  return sub_237C05ADC();
}

uint64_t (*sub_237A860E0())(uint64_t a1)
{
  OUTLINED_FUNCTION_59_1();
  swift_beginAccess();
  return j__swift_endAccess;
}

void sub_237A86140()
{
  OUTLINED_FUNCTION_74();
  v36 = v2;
  v3 = OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingParameters;
  v4 = _s20PersistentParametersVMa_0(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  v5 = v0 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceTable;
  *v5 = 0;
  *(v5 + 8) = -1;
  *(v0 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceTrainingRowCount) = 0;
  *(v0 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceValidationRowCount) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD80, &qword_237C0BC60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237C0BC00;
  *(inited + 32) = 0x746E696F7079656BLL;
  *(inited + 40) = 0xE900000000000073;
  v7 = MEMORY[0x277D84F90];
  v35[0] = MEMORY[0x277D84F90];
  *(inited + 48) = sub_237BBDC94(sub_2379F56B8);
  *(inited + 56) = v8 & 1;
  *(inited + 64) = 0x6C6562616CLL;
  *(inited + 72) = 0xE500000000000000;
  v35[0] = v7;
  *(inited + 80) = sub_237BBDC94(sub_2379F5678);
  *(inited + 88) = v9 & 1;
  OUTLINED_FUNCTION_77_2();
  *(inited + 96) = 0x5F6E6F6973736573;
  *(inited + 104) = v10;
  v35[0] = v7;
  *(inited + 112) = sub_237BBDC94(sub_2379F5698);
  *(inited + 120) = v11 & 1;
  OUTLINED_FUNCTION_23_14();
  *(inited + 128) = v12;
  *(inited + 136) = 0xE900000000000068;
  v35[0] = v7;
  *(inited + 144) = sub_237BBDC94(sub_2379F57A0);
  *(inited + 152) = v13 & 1;
  v14 = sub_237C085AC();
  sub_237B6CB9C(v14, v35);
  if (v1)
  {
    swift_unexpectedError();
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_66_4(OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingFeatures);
    v15 = swift_initStackObject();
    v16 = OUTLINED_FUNCTION_65_3(v15, xmmword_237C0BC00);
    v16[2].n128_u64[0] = v17;
    v16[2].n128_u64[1] = 0xE900000000000073;
    OUTLINED_FUNCTION_78_2();
    MEMORY[0x28223BE20](v18);
    OUTLINED_FUNCTION_17_14();
    *(v19 - 16) = v35;
    v15[3].n128_u64[0] = sub_237BBDC94(sub_237A8D200);
    v15[3].n128_u8[8] = v20 & 1;
    OUTLINED_FUNCTION_59_4();
    v15[4].n128_u64[0] = v21;
    v15[4].n128_u64[1] = 0xE500000000000000;
    OUTLINED_FUNCTION_78_2();
    MEMORY[0x28223BE20](v22);
    OUTLINED_FUNCTION_17_14();
    *(v23 - 16) = v35;
    v15[5].n128_u64[0] = sub_237BBDC94(sub_2379F57A0);
    v15[5].n128_u8[8] = v24 & 1;
    OUTLINED_FUNCTION_48_7();
    v15[6].n128_u64[0] = v25;
    OUTLINED_FUNCTION_77_2();
    v15[6].n128_u64[1] = v26;
    OUTLINED_FUNCTION_78_2();
    MEMORY[0x28223BE20](v27);
    OUTLINED_FUNCTION_17_14();
    *(v28 - 16) = v35;
    v15[7].n128_u64[0] = sub_237BBDC94(sub_237A8D218);
    v15[7].n128_u8[8] = v29 & 1;
    OUTLINED_FUNCTION_23_14();
    v15[8].n128_u64[0] = v30;
    v15[8].n128_u64[1] = 0xE900000000000068;
    OUTLINED_FUNCTION_78_2();
    MEMORY[0x28223BE20](v31);
    OUTLINED_FUNCTION_17_14();
    *(v32 - 16) = v35;
    v15[9].n128_u64[0] = sub_237BBDC94(sub_2379F57A0);
    v15[9].n128_u8[8] = v33 & 1;
    v34 = sub_237C085AC();
    sub_237B6CB9C(v34, v35);
    OUTLINED_FUNCTION_66_4(OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_validationFeatures);
    *(v0 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_model) = 0;
    *(v0 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_classLabels) = 0;
    *(v0 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_metricsAttributesDictionary) = MEMORY[0x277D84F98];
    sub_237A8D0EC(v36, v0 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sessionParameters, type metadata accessor for MLTrainingSessionParameters);
    OUTLINED_FUNCTION_73();
  }
}

void sub_237A865A4()
{
  OUTLINED_FUNCTION_74();
  v418 = v1;
  v2 = v0;
  v414 = v3;
  v430 = v4;
  v419 = v5;
  v396 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  v397 = v8 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACA0, &unk_237C0E0E0);
  OUTLINED_FUNCTION_0();
  v399 = v10;
  v400 = v9;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11);
  v401 = &v393 - v12;
  OUTLINED_FUNCTION_41_0();
  sub_237C0602C();
  OUTLINED_FUNCTION_0();
  v404 = v14;
  v405 = v13;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_14_0();
  v398 = v15;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_58();
  v403 = v17;
  OUTLINED_FUNCTION_41_0();
  v410 = sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  v406 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_14_0();
  v402 = v20;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_58();
  v408 = v22;
  v23 = OUTLINED_FUNCTION_41_0();
  v415 = type metadata accessor for MLHandPoseClassifier.DataSource(v23);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_14_0();
  v407 = v25;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_58();
  v413 = v27;
  v28 = OUTLINED_FUNCTION_41_0();
  v412 = type metadata accessor for MLHandPoseClassifier.ModelParameters(v28);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_2_0();
  v32 = v31 - v30;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC80, &unk_237C0F350);
  OUTLINED_FUNCTION_20(v33);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v34);
  v36 = &v393 - v35;
  v37 = v0 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingParameters;
  v38 = _s20PersistentParametersVMa_0(0);
  v416 = v37;
  v417 = v38;
  __swift_storeEnumTagSinglePayload(v37, 1, 1, v38);
  v39 = v2 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceTable;
  *v39 = 0;
  *(v39 + 8) = -1;
  *(v2 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceTrainingRowCount) = 0;
  *(v2 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceValidationRowCount) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD80, &qword_237C0BC60);
  inited = swift_initStackObject();
  v411 = xmmword_237C0BC00;
  *(inited + 16) = xmmword_237C0BC00;
  *(inited + 32) = 0x746E696F7079656BLL;
  *(inited + 40) = 0xE900000000000073;
  v41 = MEMORY[0x277D84F90];
  v428 = MEMORY[0x277D84F90];
  v423 = &v428;
  *(inited + 48) = sub_237BBDC94(sub_237A8D200);
  *(inited + 56) = v42 & 1;
  OUTLINED_FUNCTION_59_4();
  *(inited + 64) = v43;
  *(inited + 72) = v44;
  v428 = v41;
  v422 = &v428;
  *(inited + 80) = sub_237BBDC94(sub_2379F57A0);
  *(inited + 88) = v45 & 1;
  OUTLINED_FUNCTION_48_7();
  *(inited + 96) = v46;
  OUTLINED_FUNCTION_77_2();
  *(inited + 104) = v47;
  v428 = v41;
  v421 = &v428;
  *(inited + 112) = sub_237BBDC94(sub_237A8D218);
  *(inited + 120) = v48 & 1;
  OUTLINED_FUNCTION_23_14();
  *(inited + 128) = v49;
  *(inited + 136) = 0xE900000000000068;
  v428 = v41;
  v420 = &v428;
  *(inited + 144) = sub_237BBDC94(sub_2379F57A0);
  *(inited + 152) = v50 & 1;
  v51 = sub_237C085AC();
  v52 = v418;
  sub_237B6CB9C(v51, &v428);
  v418 = v52;
  if (!v52)
  {
    OUTLINED_FUNCTION_80_3(OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingFeatures);
    v409 = v53;
    *(v53 + 8) = v54;
    v55 = swift_initStackObject();
    v56 = OUTLINED_FUNCTION_65_3(v55, v411);
    v56[2].n128_u64[0] = v57;
    v56[2].n128_u64[1] = 0xE900000000000073;
    OUTLINED_FUNCTION_83_3();
    MEMORY[0x28223BE20](v58);
    OUTLINED_FUNCTION_17_14();
    *(v59 - 16) = &v428;
    v55[3].n128_u64[0] = sub_237BBDC94(sub_237A8D200);
    v55[3].n128_u8[8] = v60 & 1;
    OUTLINED_FUNCTION_59_4();
    v55[4].n128_u64[0] = v61;
    v55[4].n128_u64[1] = 0xE500000000000000;
    OUTLINED_FUNCTION_83_3();
    MEMORY[0x28223BE20](v62);
    OUTLINED_FUNCTION_17_14();
    *(v63 - 16) = &v428;
    v55[5].n128_u64[0] = sub_237BBDC94(sub_2379F57A0);
    v55[5].n128_u8[8] = v64 & 1;
    OUTLINED_FUNCTION_48_7();
    v55[6].n128_u64[0] = v65;
    OUTLINED_FUNCTION_77_2();
    v55[6].n128_u64[1] = v66;
    OUTLINED_FUNCTION_83_3();
    MEMORY[0x28223BE20](v67);
    OUTLINED_FUNCTION_17_14();
    *(v68 - 16) = &v428;
    v55[7].n128_u64[0] = sub_237BBDC94(sub_237A8D218);
    v55[7].n128_u8[8] = v69 & 1;
    OUTLINED_FUNCTION_23_14();
    v55[8].n128_u64[0] = v70;
    v55[8].n128_u64[1] = 0xE900000000000068;
    OUTLINED_FUNCTION_83_3();
    MEMORY[0x28223BE20](v71);
    OUTLINED_FUNCTION_17_14();
    *(v72 - 16) = &v428;
    v55[9].n128_u64[0] = sub_237BBDC94(sub_2379F57A0);
    v55[9].n128_u8[8] = v73 & 1;
    v74 = sub_237C085AC();
    v75 = v418;
    sub_237B6CB9C(v74, &v428);
    v418 = v75;
    if (!v75)
    {
      OUTLINED_FUNCTION_80_3(OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_validationFeatures);
      v395 = v76;
      *(v76 + 8) = v77;
      *(v2 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_model) = 0;
      v411.n128_u64[0] = OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_classLabels;
      *(v2 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_classLabels) = 0;
      *(v2 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_metricsAttributesDictionary) = MEMORY[0x277D84F98];
      v78 = v419;
      sub_237A8D148(v419, v36, type metadata accessor for MLHandPoseClassifier.DataSource);
      sub_237A8D148(v430, v32, type metadata accessor for MLHandPoseClassifier.ModelParameters);
      v79 = v417;
      v81 = *(v417 + 24);
      v80 = *(v417 + 28);
      OUTLINED_FUNCTION_14_16();
      sub_237A8D148(v32, &v36[v82], v83);
      v84 = v412;
      *&v36[v81] = *(v32 + *(v412 + 20));
      *&v36[v80] = *(v32 + *(v84 + 24));
      *&v36[*(v79 + 32)] = *(v32 + *(v84 + 28));
      OUTLINED_FUNCTION_0_36();
      sub_237A8D1A4(v32, v85);
      v86 = v79;
      v87 = v78;
      __swift_storeEnumTagSinglePayload(v36, 0, 1, v86);
      v88 = v416;
      OUTLINED_FUNCTION_59_1();
      swift_beginAccess();
      sub_237A8CBE4(v36, v88);
      swift_endAccess();
      v89 = v413;
      sub_237A8D148(v78, v413, type metadata accessor for MLHandPoseClassifier.DataSource);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v412 = v2;
        v90 = *v89;
        v91 = *(v89 + 8);
        v92 = *(v89 + 16);
        v93 = *(v89 + 24);
        v94 = *(v89 + 40);
        v407 = *(v89 + 32);
        v408 = v92;
        v410 = v94;
        v95 = *(v89 + 48);
        v96 = *(v89 + 56);
        v97 = v409;
        OUTLINED_FUNCTION_55_5(v409);
        v98 = *v97;
        v99 = *(v97 + 8);
        *v97 = v90;
        *(v97 + 8) = v91;
        sub_2379DBCF4(v90, v91);
        v100 = v98;
        v101 = v95;
        sub_2379DBC9C(v100, v99);
        OUTLINED_FUNCTION_59_1();
        swift_beginAccess();
        v102 = v418;
        sub_2379E0CC4(v97, v95, v96);
        if (v102)
        {
          swift_endAccess();

          v103 = v90;
          v104 = v91;
LABEL_16:
          sub_2379DBC9C(v103, v104);
          OUTLINED_FUNCTION_2_35();
          sub_237A8D1A4(v414, v146);
          OUTLINED_FUNCTION_0_36();
          sub_237A8D1A4(v430, v147);
          OUTLINED_FUNCTION_1_33();
          sub_237A8D1A4(v419, v148);
          v2 = v412;
          goto LABEL_38;
        }

        v406 = v90;
        LODWORD(v413) = v91;
        swift_endAccess();
        OUTLINED_FUNCTION_59_1();
        swift_beginAccess();
        v418 = 0;
        v140 = *(v97 + 8);
        v426 = *v97;
        v139 = v426;
        v427 = v140;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
        v141 = v101;
        v142 = swift_initStackObject();
        *(v142 + 16) = xmmword_237C0B680;
        v143 = v407;
        *(v142 + 32) = v408;
        *(v142 + 40) = v93;
        *(v142 + 48) = v141;
        *(v142 + 56) = v96;
        v144 = v410;
        *(v142 + 64) = v143;
        *(v142 + 72) = v144;
        sub_2379DBCF4(v139, v140);

        OUTLINED_FUNCTION_19_15();
        v145 = v418;
        sub_2379F2B84();
        v134 = v145;
        if (v145)
        {
          swift_setDeallocating();
          sub_237B9082C();
          OUTLINED_FUNCTION_92_2();
          swift_endAccess();

          v103 = v406;
          v104 = v413;
          goto LABEL_16;
        }

        v161 = v407;
        swift_setDeallocating();
        sub_237B9082C();
        OUTLINED_FUNCTION_92_2();
        sub_237B6C670(v162, v163, v164, v165, v166, v167, v168, v169, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406, v407, v408, v409, v410, v411.n128_i64[0], v411.n128_i64[1]);
        OUTLINED_FUNCTION_31_8(v408, v93, v170, v171, v172, v173, v174, v175, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404);
        if ((*(v97 + 8) & 1) == 0)
        {
          v184 = OUTLINED_FUNCTION_85();
          sub_2379DBCF4(v184, v185);
          sub_237B6C588();
          v186 = OUTLINED_FUNCTION_85();
          sub_2379DBC9C(v186, v187);
        }

        v418 = v93;
        sub_237B6C670(v176, v177, v178, v179, v180, v181, v182, v183, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406, v407, v408, v409, v410, v411.n128_i64[0], v411.n128_i64[1]);
        OUTLINED_FUNCTION_30_10(v141, v96, v188, v189, v190, v191, v192, v193, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404);
        if ((*(v97 + 8) & 1) == 0)
        {
          v202 = OUTLINED_FUNCTION_85();
          sub_2379DBCF4(v202, v203);
          sub_237B6C588();
          v204 = OUTLINED_FUNCTION_85();
          sub_2379DBC9C(v204, v205);
        }

        sub_237B6C670(v194, v195, v196, v197, v198, v199, v200, v201, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406, v407, v408, v409, v410, v411.n128_i64[0], v411.n128_i64[1]);
        sub_237B6DAB4(v161, v144, 0x6C6562616CLL, 0xE500000000000000, v206, v207, v208, v209, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404);
        v210 = v406;
        if ((*(v97 + 8) & 1) == 0)
        {
          v211 = OUTLINED_FUNCTION_85();
          sub_2379DBCF4(v211, v212);
          sub_237B6C588();
          v213 = OUTLINED_FUNCTION_85();
          sub_2379DBC9C(v213, v214);
        }

        swift_endAccess();

        swift_beginAccess();
        sub_2379DF938(*(v97 + 8), &v426);
        swift_endAccess();
        v215 = OUTLINED_FUNCTION_84();
        sub_2379DFAE0(v215, v216, v217);
        v218 = OUTLINED_FUNCTION_84();
        sub_2379DBC9C(v218, v219);
        v154 = sub_2379DFC10(v428, v429);
        sub_2379DBC9C(v210, v413);
        v87 = v419;
        v88 = v416;
        v2 = v412;
      }

      else
      {
        OUTLINED_FUNCTION_1_33();
        sub_237A8D1A4(v89, v105);
        OUTLINED_FUNCTION_5_26();
        v106 = v407;
        sub_237A8D148(v78, v407, v107);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v109 = v418;
        if (EnumCaseMultiPayload == 5)
        {
          v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9D8, &unk_237C0C710);
          v111 = (v106 + v110[12]);
          v112 = *v111;
          v413 = v111[1];
          v113 = v106 + v110[16];
          v114 = *v113;
          v115 = *(v113 + 8);
          v393 = v112;
          v394 = v114;
          v116 = (v106 + v110[20]);
          v118 = *v116;
          v117 = v116[1];
          v119 = v406;
          v120 = v408;
          (*(v406 + 4))(v408, v106, v410);
          v121 = v403;
          sub_237C05DFC();
          v122 = sub_237C05FFC();
          (*(v404 + 8))(v121, v405);
          if (v122 == MEMORY[0x277D837D0])
          {
            v407 = v115;
            sub_237C05DEC();
            v149 = v418;
            sub_237B62FE0(v398);
            v125 = v149;
            if (v149)
            {

              OUTLINED_FUNCTION_2_35();
              sub_237A8D1A4(v414, v150);
              OUTLINED_FUNCTION_0_36();
              sub_237A8D1A4(v430, v151);
              OUTLINED_FUNCTION_1_33();
              sub_237A8D1A4(v419, v152);
              (*(v399 + 8))(v401, v400);
              (*(v119 + 8))(v120, v410);
              goto LABEL_38;
            }

            (*(v399 + 8))(v401, v400);

            v412 = v118;
            v123 = v117;
            sub_237C05E0C();
            v124 = v407;
          }

          else
          {
            v412 = v118;
            v123 = v117;
            v124 = v115;
            v125 = v418;
          }

          v126 = v402;
          v127 = v408;
          v128 = v410;
          (*(v119 + 16))(v402, v408, v410);
          sub_237A70684(v126, 0, &v428);
          if (v125)
          {

            OUTLINED_FUNCTION_2_35();
            sub_237A8D1A4(v414, v129);
            OUTLINED_FUNCTION_0_36();
            sub_237A8D1A4(v430, v130);
            OUTLINED_FUNCTION_1_33();
            sub_237A8D1A4(v419, v131);
            (*(v119 + 8))(v127, v128);
LABEL_38:
            sub_2379D9054(v2 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingParameters, &qword_27DE9AC80, &unk_237C0F350);
            v248 = OUTLINED_FUNCTION_56_5(v2 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceTable);
            sub_2379DBC84(v248, v249);
            v250 = OUTLINED_FUNCTION_56_5(v2 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingFeatures);
            sub_2379DBC9C(v250, v251);
            v252 = OUTLINED_FUNCTION_56_5(v2 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_validationFeatures);
            sub_2379DBC9C(v252, v253);

            type metadata accessor for HandPoseClassifierTrainingSessionDelegate(0);
            swift_deallocPartialClassInstance();
LABEL_39:
            OUTLINED_FUNCTION_73();
            return;
          }

          v155 = v428;
          v156 = v429;
          v157 = v409;
          OUTLINED_FUNCTION_55_5(v409);
          v158 = *v157;
          v159 = *(v157 + 8);
          *v157 = v155;
          *(v157 + 8) = v156;
          sub_2379DBC9C(v158, v159);
          OUTLINED_FUNCTION_59_1();
          swift_beginAccess();
          v160 = v412;
          sub_2379E0CC4(v157, v412, v123);
          swift_endAccess();
          OUTLINED_FUNCTION_59_1();
          swift_beginAccess();
          v418 = 0;
          v240 = *(v157 + 8);
          v426 = *v157;
          v239 = v426;
          v427 = v240;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
          v241 = swift_initStackObject();
          *(v241 + 16) = xmmword_237C0B680;
          v242 = v394;
          v243 = v413;
          *(v241 + 32) = v393;
          *(v241 + 40) = v243;
          v412 = v160;
          *(v241 + 48) = v160;
          *(v241 + 56) = v123;
          *(v241 + 64) = v242;
          *(v241 + 72) = v124;

          sub_2379DBCF4(v239, v240);

          OUTLINED_FUNCTION_19_15();
          v244 = v418;
          sub_2379F2B84();
          if (v244)
          {
            swift_setDeallocating();
            sub_237B9082C();
            OUTLINED_FUNCTION_92_2();
            swift_endAccess();

            OUTLINED_FUNCTION_2_35();
            sub_237A8D1A4(v414, v245);
            OUTLINED_FUNCTION_0_36();
            sub_237A8D1A4(v430, v246);
            OUTLINED_FUNCTION_1_33();
            sub_237A8D1A4(v419, v247);
            (*(v406 + 1))(v408, v410);
            goto LABEL_38;
          }

          v268 = v412;
          v418 = 0;
          swift_setDeallocating();
          sub_237B9082C();
          OUTLINED_FUNCTION_92_2();
          sub_237B6C670(v269, v270, v271, v272, v273, v274, v275, v276, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406, v407, v408, v409, v410, v411.n128_i64[0], v411.n128_i64[1]);
          OUTLINED_FUNCTION_31_8(v393, v243, v277, v278, v279, v280, v281, v282, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404);
          v291 = v410;
          if ((*(v157 + 8) & 1) == 0)
          {
            v292 = OUTLINED_FUNCTION_85();
            sub_2379DBCF4(v292, v293);
            sub_237B6C588();
            v294 = OUTLINED_FUNCTION_85();
            sub_2379DBC9C(v294, v295);
          }

          sub_237B6C670(v283, v284, v285, v286, v287, v288, v289, v290, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406, v407, v408, v409, v410, v411.n128_i64[0], v411.n128_i64[1]);
          OUTLINED_FUNCTION_30_10(v268, v123, v296, v297, v298, v299, v300, v301, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404);
          v88 = v416;
          if ((*(v157 + 8) & 1) == 0)
          {
            v310 = OUTLINED_FUNCTION_85();
            sub_2379DBCF4(v310, v311);
            sub_237B6C588();
            v312 = OUTLINED_FUNCTION_85();
            sub_2379DBC9C(v312, v313);
          }

          sub_237B6C670(v302, v303, v304, v305, v306, v307, v308, v309, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406, v407, v408, v409, v410, v411.n128_i64[0], v411.n128_i64[1]);
          OUTLINED_FUNCTION_87_2(v394, v124, v314, v315, v316, v317, v318, v319, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404);
          if ((*(v157 + 8) & 1) == 0)
          {
            v320 = OUTLINED_FUNCTION_85();
            sub_2379DBCF4(v320, v321);
            sub_237B6C588();
            v322 = OUTLINED_FUNCTION_85();
            sub_2379DBC9C(v322, v323);
          }

          swift_endAccess();

          swift_beginAccess();
          OUTLINED_FUNCTION_45_3();
          sub_2379DF938(v324, v325);
          swift_endAccess();
          v326 = OUTLINED_FUNCTION_84();
          sub_2379DFAE0(v326, v327, v328);
          v329 = OUTLINED_FUNCTION_84();
          sub_2379DBC9C(v329, v330);
          v154 = sub_2379DFC10(v428, v429);
          (*(v406 + 1))(v408, v291);
          v134 = v418;
          v87 = v419;
        }

        else
        {
          OUTLINED_FUNCTION_1_33();
          sub_237A8D1A4(v106, v132);
          sub_237B84894();
          v134 = v109;
          if (v109)
          {
            OUTLINED_FUNCTION_2_35();
            sub_237A8D1A4(v414, v135);
            OUTLINED_FUNCTION_0_36();
            sub_237A8D1A4(v430, v136);
            OUTLINED_FUNCTION_1_33();
            v138 = v87;
LABEL_13:
            sub_237A8D1A4(v138, v137);
            goto LABEL_38;
          }

          v153 = v133;

          v154 = sub_2379DFFEC(v153);
        }
      }

      v220 = v411.n128_u64[0];
      *(v2 + v411.n128_u64[0]) = v154;

      if (__swift_getEnumTagSinglePayload(v88, 1, v417))
      {
        v221 = v414;
LABEL_42:
        sub_237A8D148(v221, v2 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sessionParameters, type metadata accessor for MLTrainingSessionParameters);
        if (*(v2 + v220))
        {
          _s8GraphCNNCMa(0);
          swift_allocObject();

          OUTLINED_FUNCTION_58_5();
          v259 = sub_237AED020(v254, v255, v256, v257, v258);
          OUTLINED_FUNCTION_2_35();
          sub_237A8D1A4(v221, v260);
          OUTLINED_FUNCTION_0_36();
          sub_237A8D1A4(v430, v261);
          OUTLINED_FUNCTION_1_33();
          sub_237A8D1A4(v87, v262);
          *(v2 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_model) = v259;
        }

        else
        {
          OUTLINED_FUNCTION_68_2();
          v263 = OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
          *v264 = 0xD00000000000003DLL;
          v264[1] = 0;
          OUTLINED_FUNCTION_52(v263, v264);
          OUTLINED_FUNCTION_2_35();
          sub_237A8D1A4(v221, v265);
          OUTLINED_FUNCTION_0_36();
          sub_237A8D1A4(v430, v266);
          OUTLINED_FUNCTION_1_33();
          sub_237A8D1A4(v87, v267);
        }

        goto LABEL_39;
      }

      OUTLINED_FUNCTION_14_16();
      v223 = v397;
      sub_237A8D148(v88 + v222, v397, v224);
      v225 = swift_getEnumCaseMultiPayload();
      v221 = v414;
      if (v225 == 1)
      {
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          v226 = *v223;
          v227 = *(v223 + 8);
          v228 = *(v223 + 24);
          v413 = *(v223 + 16);
          v229 = *(v223 + 40);
          v415 = *(v223 + 32);
          v416 = v229;
          v417 = v228;
          v418 = v134;
          v230 = *(v223 + 48);
          v231 = *(v223 + 56);
          v232 = v395;
          OUTLINED_FUNCTION_55_5(v395);
          v233 = *v232;
          v234 = *(v232 + 8);
          *v232 = v226;
          *(v232 + 8) = v227;
          sub_2379DBCF4(v226, v227);
          sub_2379DBC9C(v233, v234);
          OUTLINED_FUNCTION_59_1();
          swift_beginAccess();
          v235 = v418;
          sub_2379E0CC4(v232, v230, v231);
          if (!v235)
          {
            v409 = v226;
            LODWORD(v410) = v227;
            v412 = v2;
            swift_endAccess();
            OUTLINED_FUNCTION_59_1();
            swift_beginAccess();
            v332 = *(v232 + 8);
            v424 = *v232;
            v331 = v424;
            v425 = v332;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
            v333 = swift_initStackObject();
            v334 = v230;
            *(v333 + 16) = xmmword_237C0B680;
            v335 = v416;
            v336 = v417;
            *(v333 + 32) = v413;
            *(v333 + 40) = v336;
            v408 = v334;
            *(v333 + 48) = v334;
            *(v333 + 56) = v231;
            *(v333 + 64) = v415;
            *(v333 + 72) = v335;
            sub_2379DBCF4(v331, v332);

            OUTLINED_FUNCTION_19_15();
            sub_2379F2B84();
            v418 = 0;
            swift_setDeallocating();
            sub_237B9082C();
            sub_2379DBC9C(v424, v425);
            sub_237B6C670(v337, v338, v339, v340, v341, v342, v343, v344, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406, v407, v408, v409, v410, v411.n128_i64[0], v411.n128_i64[1]);
            OUTLINED_FUNCTION_31_8(v413, v336, v345, v346, v347, v348, v349, v350, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404);
            v2 = v412;
            v87 = v419;
            v359 = v409;
            if ((*(v232 + 8) & 1) == 0)
            {
              v360 = OUTLINED_FUNCTION_85();
              sub_2379DBCF4(v360, v361);
              sub_237B6C588();
              v362 = OUTLINED_FUNCTION_85();
              sub_2379DBC9C(v362, v363);
            }

            sub_237B6C670(v351, v352, v353, v354, v355, v356, v357, v358, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406, v407, v408, v409, v410, v411.n128_i64[0], v411.n128_i64[1]);
            v413 = v231;
            OUTLINED_FUNCTION_30_10(v408, v231, v364, v365, v366, v367, v368, v369, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404);
            if ((*(v232 + 8) & 1) == 0)
            {
              v378 = OUTLINED_FUNCTION_85();
              sub_2379DBCF4(v378, v379);
              sub_237B6C588();
              v380 = OUTLINED_FUNCTION_85();
              sub_2379DBC9C(v380, v381);
            }

            sub_237B6C670(v370, v371, v372, v373, v374, v375, v376, v377, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404, v405, v406, v407, v408, v409, v410, v411.n128_i64[0], v411.n128_i64[1]);
            OUTLINED_FUNCTION_87_2(v415, v335, v382, v383, v384, v385, v386, v387, v393, v394, v395, v396, v397, v398, v399, v400, v401, v402, v403, v404);
            v388 = v410;
            if ((*(v232 + 8) & 1) == 0)
            {
              v389 = OUTLINED_FUNCTION_85();
              sub_2379DBCF4(v389, v390);
              sub_237B6C588();
              v391 = OUTLINED_FUNCTION_85();
              sub_2379DBC9C(v391, v392);
            }

            swift_endAccess();

            sub_2379DBC9C(v359, v388);
            v221 = v414;
            v220 = v411.n128_u64[0];
            goto LABEL_42;
          }

          swift_endAccess();

          sub_2379DBC9C(v226, v227);
          OUTLINED_FUNCTION_2_35();
          sub_237A8D1A4(v414, v236);
          OUTLINED_FUNCTION_0_36();
          sub_237A8D1A4(v430, v237);
          OUTLINED_FUNCTION_1_33();
          v138 = v419;
          goto LABEL_13;
        }

        v238 = type metadata accessor for MLHandPoseClassifier.DataSource;
      }

      else
      {
        v238 = type metadata accessor for MLHandPoseClassifier.ModelParameters.ValidationData;
      }

      sub_237A8D1A4(v223, v238);
      goto LABEL_42;
    }
  }

  swift_unexpectedError();
  __break(1u);
}

void sub_237A87C24(uint64_t a1)
{
  v3 = v1;
  _s20PersistentParametersVMa_0(0);
  sub_237A99AB0(&v36, &v38);
  if (!v2)
  {
    v4 = v36;
    v5 = v37;
    v6 = v38;
    v7 = v39;
    if (v37 == 255)
    {
      if (v39 != 255)
      {
        v21 = v1 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceTable;
        OUTLINED_FUNCTION_46_5();
        v22 = *v21;
        *v21 = v6;
        v23 = *(v21 + 8);
        *(v21 + 8) = v7;
        sub_2379DBCF4(v6, v7 & 1);
        sub_2379DBC84(v22, v23);
        *(v3 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceTrainingRowCount) = 0;
LABEL_11:
        v40 = v6;
        v41 = v7 & 1;
        sub_2379DBCF4(v6, v7 & 1);
        v27 = MLDataTable.size.getter();
        v28 = OUTLINED_FUNCTION_63_3();
        sub_2379DBC84(v28, v29);
        v30 = OUTLINED_FUNCTION_75_3();
        sub_2379DBC84(v30, v31);
        v32 = OUTLINED_FUNCTION_75_3();
        sub_2379DBC84(v32, v33);
LABEL_14:
        *(v3 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceValidationRowCount) = v27;
        return;
      }

      *(v1 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceTrainingRowCount) = 0;
    }

    else
    {
      if (v39 == 255)
      {
        v24 = v1 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceTable;
        OUTLINED_FUNCTION_46_5();
        v25 = *v24;
        *v24 = v4;
        v26 = *(v24 + 8);
        *(v24 + 8) = v5;
        sub_2379DBCF4(v4, v5 & 1);
        v19 = v25;
        v20 = v26;
      }

      else
      {
        v8 = v1 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceTable;
        OUTLINED_FUNCTION_46_5();
        v9 = *v8;
        *v8 = v4;
        v10 = *(v8 + 8);
        *(v8 + 8) = v5 & 1;
        sub_2379DBCF4(v4, v5 & 1);
        v11 = OUTLINED_FUNCTION_63_3();
        sub_2379DBCDC(v11, v12);
        v13 = OUTLINED_FUNCTION_75_3();
        sub_2379DBCDC(v13, v14);
        sub_2379DBC84(v9, v10);
        v15 = sub_237A860E0();
        if (*(v16 + 8) != 255)
        {
          v40 = v6;
          v41 = v7 & 1;
          MLDataTable.append(contentsOf:)();
        }

        (v15)(&v36, 0);
        v17 = OUTLINED_FUNCTION_63_3();
        sub_2379DBC84(v17, v18);
        v19 = OUTLINED_FUNCTION_75_3();
      }

      sub_2379DBC84(v19, v20);
      v40 = v4;
      v41 = v5 & 1;
      *(v3 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceTrainingRowCount) = MLDataTable.size.getter();
      if (v7 != 255)
      {
        goto LABEL_11;
      }
    }

    v34 = OUTLINED_FUNCTION_63_3();
    sub_2379DBC84(v34, v35);
    v27 = 0;
    goto LABEL_14;
  }
}

uint64_t sub_237A87E80()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC80, &unk_237C0F350);
  OUTLINED_FUNCTION_20(v2);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_86_2();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v8 = v7 - v6;
  v9 = OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingParameters;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_2379FC864(v0 + v9, v1, &qword_27DE9AC80, &unk_237C0F350);
  if (__swift_getEnumTagSinglePayload(v1, 1, v4) == 1)
  {
    result = sub_2379D9054(v1, &qword_27DE9AC80, &unk_237C0F350);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_7_21();
    sub_237A8D0EC(v1, v8, v10);
    sub_237A87C24(v8);
    OUTLINED_FUNCTION_6_24();
    return sub_237A8D1A4(v8, v11);
  }

  return result;
}

void sub_237A87FC8()
{
  OUTLINED_FUNCTION_74();
  v114 = v1;
  v2 = v0;
  v117 = v3;
  v4 = sub_237C05ADC();
  v5 = OUTLINED_FUNCTION_20(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14_0();
  v107 = v6;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_138();
  v108 = v8;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_138();
  v110 = v10;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_58();
  v113 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B8E8, &qword_237C0EBF0);
  v14 = OUTLINED_FUNCTION_20(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_14_0();
  v112 = v15;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v16);
  v18 = &v105 - v17;
  v19 = type metadata accessor for MLCheckpoint(0);
  OUTLINED_FUNCTION_0();
  v111 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_14_0();
  v118 = v22;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_138();
  v109 = v24;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_58();
  v116 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC80, &unk_237C0F350);
  OUTLINED_FUNCTION_20(v27);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v28);
  v30 = &v105 - v29;
  v31 = _s20PersistentParametersVMa_0(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_2_0();
  v35 = v34 - v33;
  v36 = OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingParameters;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  v115 = v2;
  sub_2379FC864(v2 + v36, v30, &qword_27DE9AC80, &unk_237C0F350);
  if (__swift_getEnumTagSinglePayload(v30, 1, v31) == 1)
  {
    sub_2379D9054(v30, &qword_27DE9AC80, &unk_237C0F350);
    __break(1u);
    JUMPOUT(0x237A88CC0);
  }

  OUTLINED_FUNCTION_7_21();
  sub_237A8D0EC(v30, v35, v37);
  sub_237A9A92C(v117, v18);
  if (__swift_getEnumTagSinglePayload(v18, 1, v19) != 1)
  {
    v40 = 0xEB0000000064657ALL;
    OUTLINED_FUNCTION_38_5();
    v41 = v116;
    sub_237A8D0EC(v18, v116, v42);
    v106 = *(v19 + 20);
    v43 = v19;
    v44 = 0xEB0000000064657ALL;
    v45 = 0x696C616974696E69;
    switch(*(v41 + v106))
    {
      case 1:
LABEL_11:

        goto LABEL_15;
      case 2:
        v44 = 0xE800000000000000;
        v45 = OUTLINED_FUNCTION_51_4();
        break;
      case 3:
        v45 = OUTLINED_FUNCTION_158();
        v44 = 0xEA0000000000676ELL;
        break;
      case 4:
        v45 = OUTLINED_FUNCTION_20_10();
        break;
      default:
        break;
    }

    v46 = OUTLINED_FUNCTION_50_6(v45, v44);

    if (v46)
    {
      goto LABEL_15;
    }

    v47 = 0xEA0000000000676ELL;
    switch(*(v41 + v106))
    {
      case 1:
        break;
      case 2:
        goto LABEL_11;
      case 3:
        OUTLINED_FUNCTION_158();
        break;
      case 4:
        OUTLINED_FUNCTION_20_10();
        break;
      default:
        v47 = 0xEB0000000064657ALL;
        break;
    }

    OUTLINED_FUNCTION_57_0();
    v48 = sub_237C0929C();

    if (v48)
    {
LABEL_15:
      v49 = v114;
      sub_237A87C24(v35);
      if (v49)
      {
LABEL_48:
        OUTLINED_FUNCTION_3_34();
        sub_237A8D1A4(v41, v103);
        goto LABEL_49;
      }

      v50 = *(v41 + v106);
      v51 = 0xEB0000000064657ALL;
      v52 = 0x696C616974696E69;
      v105 = 0x6974636172747865;
      switch(v50)
      {
        case 1:

          goto LABEL_24;
        case 2:
          v51 = 0xE800000000000000;
          v52 = 0x676E696E69617274;
          break;
        case 3:
          v52 = OUTLINED_FUNCTION_158();
          v51 = 0xEA0000000000676ELL;
          break;
        case 4:
          v52 = OUTLINED_FUNCTION_20_10();
          break;
        default:
          break;
      }

      v56 = OUTLINED_FUNCTION_50_6(v52, v51);

      if (v56)
      {
LABEL_24:
        v58 = v113;
        OUTLINED_FUNCTION_51_4();
        sub_237C05A2C();
        LOBYTE(v137) = 1;
        v138 = 44;
        v139 = 0xE100000000000000;
        v140 = 0;
        v141 = 0xE000000000000000;
        v142 = 92;
        v143 = 0xE100000000000000;
        v144 = 1;
        v145 = 34;
        v146 = 0xE100000000000000;
        v147 = 1;
        v148 = &unk_284ABEBF0;
        v149 = 10;
        v151 = 0;
        v152 = 0;
        v150 = 0xE100000000000000;
        v153 = 1;
        v154 = 0;
        MLDataTable.init(contentsOf:options:)(v58, &v137, &v157);
        v114 = v35;
        v59 = v157;
        v60 = v158;
        v61 = v115 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingFeatures;
        OUTLINED_FUNCTION_55_5(v115 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingFeatures);
        v62 = *v61;
        v63 = *(v61 + 8);
        *v61 = v59;
        *(v61 + 8) = v60;
        sub_2379DBC9C(v62, v63);
        OUTLINED_FUNCTION_49_0();
        v64 = v110;
        sub_237C05A2C();
        LOBYTE(v119) = 1;
        v120 = 44;
        v121 = 0xE100000000000000;
        v122 = 0;
        v123 = 0xE000000000000000;
        v124 = 92;
        v125 = 0xE100000000000000;
        v126 = 1;
        v127 = 34;
        v128 = 0xE100000000000000;
        v129 = 1;
        v130 = &unk_284ABEBF0;
        v131 = 10;
        v133 = 0;
        v134 = 0;
        v132 = 0xE100000000000000;
        v135 = 1;
        v136 = 0;
        MLDataTable.init(contentsOf:options:)(v64, &v119, &v155);
        OUTLINED_FUNCTION_46_5();
        v81 = OUTLINED_FUNCTION_81_2();
        v41 = v116;
        sub_2379DBC9C(v81, v82);
        v35 = v114;
        goto LABEL_41;
      }

      v137 = v117;
      v65 = *(v117 + 16);
      if (v65)
      {
        v114 = v35;
        v66 = *(v111 + 72);
        v67 = v65 - 1;
        v68 = v117 + ((*(v111 + 80) + 32) & ~*(v111 + 80)) + v66 * (v65 - 1);
        v69 = -v66;
        while (2)
        {
          v70 = v118;
          sub_237A8D148(v68, v118, type metadata accessor for MLCheckpoint);
          v71 = 0x696C616974696E69;
          switch(*(v70 + *(v43 + 20)))
          {
            case 1:

              OUTLINED_FUNCTION_3_34();
              v57 = sub_237A8D1A4(v118, v89);
              v35 = v114;
              v41 = v116;
              break;
            case 2:
              v40 = 0xE800000000000000;
              v71 = OUTLINED_FUNCTION_51_4();
              goto LABEL_31;
            case 3:
              v40 = 0xEA0000000000676ELL;
              v71 = OUTLINED_FUNCTION_158();
              goto LABEL_31;
            case 4:
              v40 = 0xEB00000000676E69;
              v71 = 0x636E657265666E69;
              goto LABEL_31;
            default:
LABEL_31:
              v72 = OUTLINED_FUNCTION_50_6(v71, v40);

              OUTLINED_FUNCTION_3_34();
              v57 = sub_237A8D1A4(v118, v73);
              if (v72)
              {
                goto LABEL_34;
              }

              --v67;
              v68 += v69;
              v40 = 0xEB0000000064657ALL;
              if (v67 != -1)
              {
                continue;
              }

              v67 = 0;
LABEL_34:
              v35 = v114;
              v41 = v116;
              break;
          }

          break;
        }
      }

      else
      {
        v67 = 0;
      }

      v74 = v112;
      MEMORY[0x28223BE20](v57);
      *(&v105 - 2) = &v137;
      sub_237A9D3D4(sub_237A594BC, (&v105 - 4), v67, v75 & 1, v74);
      if (__swift_getEnumTagSinglePayload(v74, 1, v43) == 1)
      {
        sub_2379D9054(v74, &qword_27DE9B8E8, &qword_237C0EBF0);
        v76 = (v115 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingFeatures);
        OUTLINED_FUNCTION_71();
        swift_beginAccess();
        v77 = *(v76 + 8);
        v119 = *v76;
        LOBYTE(v120) = v77;
        v47 = &v119;
        if (!MLDataTable.size.getter())
        {
          OUTLINED_FUNCTION_68_2();
          v53 = OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
          v55 = 0xD000000000000028;
          goto LABEL_19;
        }
      }

      else
      {
        OUTLINED_FUNCTION_38_5();
        v78 = v109;
        sub_237A8D0EC(v74, v109, v79);
        v80 = v108;
        OUTLINED_FUNCTION_51_4();
        sub_237C05A2C();
        LOBYTE(v137) = 1;
        v138 = 44;
        v139 = 0xE100000000000000;
        v140 = 0;
        v141 = 0xE000000000000000;
        v142 = 92;
        v143 = 0xE100000000000000;
        v144 = 1;
        v145 = 34;
        v146 = 0xE100000000000000;
        v147 = 1;
        v148 = &unk_284ABEBF0;
        v149 = 10;
        v151 = 0;
        v152 = 0;
        v150 = 0xE100000000000000;
        v153 = 1;
        v154 = 0;
        MLDataTable.init(contentsOf:options:)(v80, &v137, &v157);
        v114 = v35;
        v83 = v157;
        v84 = v158;
        v85 = v115 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingFeatures;
        OUTLINED_FUNCTION_46_5();
        v86 = *v85;
        v87 = *(v85 + 8);
        *v85 = v83;
        *(v85 + 8) = v84;
        sub_2379DBC9C(v86, v87);
        OUTLINED_FUNCTION_49_0();
        v88 = v107;
        sub_237C05A2C();
        LOBYTE(v119) = 1;
        v120 = 44;
        v121 = 0xE100000000000000;
        v122 = 0;
        v123 = 0xE000000000000000;
        v124 = 92;
        v125 = 0xE100000000000000;
        v126 = 1;
        v127 = 34;
        v128 = 0xE100000000000000;
        v129 = 1;
        v130 = &unk_284ABEBF0;
        v131 = 10;
        v133 = 0;
        v134 = 0;
        v132 = 0xE100000000000000;
        v135 = 1;
        v136 = 0;
        MLDataTable.init(contentsOf:options:)(v88, &v119, &v155);
        OUTLINED_FUNCTION_3_34();
        sub_237A8D1A4(v78, v90);
        OUTLINED_FUNCTION_46_5();
        v91 = OUTLINED_FUNCTION_81_2();
        sub_2379DBC9C(v91, v92);
        v35 = v114;
        v41 = v116;
      }

LABEL_41:
      switch(*(v41 + v106))
      {
        case 1:
          goto LABEL_46;
        case 2:

          goto LABEL_47;
        case 3:
          v105 = 0x697461756C617665;
          goto LABEL_46;
        case 4:
          v105 = 0x636E657265666E69;
          goto LABEL_46;
        default:
          v105 = 0x696C616974696E69;
LABEL_46:
          OUTLINED_FUNCTION_57_0();
          v93 = sub_237C0929C();

          if (v93)
          {
LABEL_47:
            v94 = v115;
            v95 = v115 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingFeatures;
            OUTLINED_FUNCTION_71();
            swift_beginAccess();
            v96 = *v95;
            LOBYTE(v95) = *(v95 + 8);
            sub_2379DBCF4(v96, v95);
            OUTLINED_FUNCTION_45_3();
            sub_2379DF938(v95, &v155);
            sub_2379DBC9C(v96, v95);
            v97 = v155;
            LOBYTE(v96) = v156;
            sub_2379DFAE0(v155, v156, &v157);
            sub_2379DBC9C(v97, v96);
            *(v94 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_classLabels) = sub_2379DFC10(v157, v158);

            _s8GraphCNNCMa(0);
            swift_allocObject();
            OUTLINED_FUNCTION_85();
            OUTLINED_FUNCTION_58_5();
            *(v94 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_model) = sub_237AED020(v98, v99, v100, v101, v102);

            sub_237AE8BE0();
            sub_237BA9BC8();
          }

          break;
      }

      goto LABEL_48;
    }

    OUTLINED_FUNCTION_68_2();
    v53 = OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
    v55 = 0xD00000000000003FLL;
LABEL_19:
    *v54 = v55;
    v54[1] = v47;
    OUTLINED_FUNCTION_52(v53, v54);
    goto LABEL_48;
  }

  sub_2379D9054(v18, &qword_27DE9B8E8, &qword_237C0EBF0);
  OUTLINED_FUNCTION_68_2();
  v38 = OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
  *v39 = 0xD00000000000001DLL;
  v39[1] = v18;
  OUTLINED_FUNCTION_52(v38, v39);
LABEL_49:
  OUTLINED_FUNCTION_6_24();
  sub_237A8D1A4(v35, v104);
  OUTLINED_FUNCTION_73();
}

uint64_t sub_237A88D24(unsigned __int8 *a1)
{
  v2 = *a1;
  result = 0;
  switch(v2)
  {
    case 1:
      v4 = v1 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceTable;
      OUTLINED_FUNCTION_71();
      swift_beginAccess();
      if (*(v4 + 8) == 255)
      {
        result = 0;
      }

      else
      {
        result = MLDataTable.size.getter();
      }

      break;
    case 2:
      v5 = v1 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sessionParameters;
      result = *(v5 + *(type metadata accessor for MLTrainingSessionParameters(0) + 28));
      break;
    default:
      return result;
  }

  return result;
}

void sub_237A88DF8()
{
  OUTLINED_FUNCTION_74();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC80, &unk_237C0F350);
  OUTLINED_FUNCTION_20(v5);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6);
  v8 = &v29 - v7;
  v9 = OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingParameters;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_2379FC864(v0 + v9, v8, &qword_27DE9AC80, &unk_237C0F350);
  v10 = _s20PersistentParametersVMa_0(0);
  LODWORD(v9) = __swift_getEnumTagSinglePayload(v8, 1, v10);
  sub_2379D9054(v8, &qword_27DE9AC80, &unk_237C0F350);
  if (v9 == 1)
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v11 = v0 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceTable;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  v12 = *(v11 + 8);
  if (v12 == 255)
  {
    goto LABEL_15;
  }

  v34 = *v11;
  v13 = v34;
  v35 = v12 & 1;
  sub_2379DBCF4(v34, v12 & 1);
  MLDataTable.size.getter();
  if (v14 < 1)
  {
LABEL_12:
    OUTLINED_FUNCTION_90_2();
    goto LABEL_15;
  }

  v15 = OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceTrainingRowCount;
  v16 = *(v2 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceTrainingRowCount);
  v17 = *(v2 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceValidationRowCount);
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    goto LABEL_27;
  }

  if (v18 <= v4)
  {
    OUTLINED_FUNCTION_90_2();
LABEL_15:
    OUTLINED_FUNCTION_73();
    return;
  }

  v33 = OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceValidationRowCount;
  v19 = v2 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sessionParameters;
  v20 = *(v19 + *(type metadata accessor for MLTrainingSessionParameters(0) + 20));
  v21 = __OFADD__(v4, v20);
  v22 = v4 + v20;
  v23 = v21;
  if (v16 <= v4)
  {
    if (v23)
    {
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }
  }

  else
  {
    v18 = v16;
    if (v23)
    {
      __break(1u);
      goto LABEL_12;
    }
  }

  v32 = v15;
  if (v18 >= v22)
  {
    v24 = v22;
  }

  else
  {
    v24 = v18;
  }

  if (v24 < v4)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v34 = v13;
  v35 = v12 & 1;
  MLDataTable.subscript.getter(&v36, v4, v24);
  v25 = v36;
  v26 = v37;
  _s16FeatureExtractorCMa_0();
  v36 = v25;
  v37 = v26;
  sub_237BA57C4(&v36, v4, &v34);
  if (v1)
  {
    OUTLINED_FUNCTION_90_2();
    sub_2379DBC9C(v25, v26);
    goto LABEL_15;
  }

  v30 = v25;
  v31 = v26;
  v27 = v34;
  v28 = v35;
  v36 = v34;
  v37 = v35;
  OUTLINED_FUNCTION_59_1();
  swift_beginAccess();
  MLDataTable.append(contentsOf:)();
  swift_endAccess();
  OUTLINED_FUNCTION_90_2();
  sub_2379DBC9C(v30, v31);
  sub_2379DBC9C(v27, v28);
  if (__OFSUB__(v24, v4))
  {
    goto LABEL_30;
  }

  if (!__OFADD__(*(v2 + v32), *(v2 + v33)))
  {
    goto LABEL_15;
  }

LABEL_31:
  __break(1u);
}

void sub_237A89108(_BYTE *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC80, &unk_237C0F350);
  OUTLINED_FUNCTION_20(v5);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6);
  v8 = v23 - v7;
  if (*a1 == 2)
  {
    v9 = OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingParameters;
    OUTLINED_FUNCTION_71();
    swift_beginAccess();
    sub_2379FC864(v3 + v9, v8, &qword_27DE9AC80, &unk_237C0F350);
    v10 = _s20PersistentParametersVMa_0(0);
    LODWORD(v9) = __swift_getEnumTagSinglePayload(v8, 1, v10);
    sub_2379D9054(v8, &qword_27DE9AC80, &unk_237C0F350);
    if (v9 == 1)
    {
      __break(1u);
    }

    else
    {
      v11 = v3 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingFeatures;
      OUTLINED_FUNCTION_71();
      swift_beginAccess();
      v12 = *v11;
      LOBYTE(v11) = *(v11 + 8);
      sub_2379DBCF4(v12, v11);
      OUTLINED_FUNCTION_45_3();
      sub_2379DF938(v11, v23);
      sub_2379DBC9C(v12, v11);
      v13 = OUTLINED_FUNCTION_84();
      sub_2379DFAE0(v13, v14, v15);
      v16 = OUTLINED_FUNCTION_84();
      sub_2379DBC9C(v16, v17);
      *(v3 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_classLabels) = sub_2379DFC10(v23[5], v24);

      _s8GraphCNNCMa(0);
      swift_allocObject();
      OUTLINED_FUNCTION_85();
      OUTLINED_FUNCTION_58_5();
      *(v3 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_model) = sub_237AED020(v18, v19, v20, v21, v22);

      sub_237BB0D90();
      if (!v2)
      {
        sub_237BA9BC8();
      }
    }
  }
}

char *sub_237A89310(uint64_t a1)
{
  v182 = sub_237C0683C();
  OUTLINED_FUNCTION_0();
  v181 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_77_0(v6 - v5);
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C078, &qword_237C11730);
  OUTLINED_FUNCTION_0();
  v196 = v7;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_77_0(v162 - v9);
  v198 = sub_237C0617C();
  OUTLINED_FUNCTION_0();
  v197 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_77_0(v162 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v188 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_77_0(v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C080, &qword_237C0F360);
  OUTLINED_FUNCTION_20(v16);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_77_0(v162 - v18);
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C088, &qword_237C0F368);
  OUTLINED_FUNCTION_0();
  v194 = v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_77_0(v22);
  v200 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  OUTLINED_FUNCTION_0();
  v187 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_77_0(v162 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_58();
  v202 = v28;
  v29 = OUTLINED_FUNCTION_41_0();
  v30 = _s20PersistentParametersVMa_0(v29);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_2_0();
  v34 = v33 - v32;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC80, &unk_237C0F350);
  OUTLINED_FUNCTION_20(v35);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v36);
  v38 = v162 - v37;
  v39 = type metadata accessor for MLHandPoseClassifier.ModelParameters(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_18_0();
  v43 = v41 - v42;
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_58();
  v203 = v45;
  v205 = v1;
  v46 = v1 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sessionParameters;
  result = type metadata accessor for MLTrainingSessionParameters(0);
  v48 = *(v46 + *(result + 5));
  if (__OFADD__(a1, v48))
  {
    __break(1u);
    goto LABEL_42;
  }

  v49 = *(v46 + *(result + 7));
  if (__OFSUB__(v49, a1))
  {
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v204 = a1;
  v183 = v49;
  v184 = &v48[a1];
  if (v48 >= v49 - a1)
  {
    v50 = (v49 - a1);
  }

  else
  {
    v50 = v48;
  }

  v210 = MEMORY[0x277D84F98];
  v51 = OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingParameters;
  v52 = v205;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_2379FC864(v52 + v51, v38, &qword_27DE9AC80, &unk_237C0F350);
  if (__swift_getEnumTagSinglePayload(v38, 1, v30))
  {
    sub_2379D9054(v38, &qword_27DE9AC80, &unk_237C0F350);
    sub_2379E8AF0();
    OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
    OUTLINED_FUNCTION_82_3();
    *v54 = v53 + 20;
    v54[1] = 0x8000000237C19F70;
    OUTLINED_FUNCTION_52(v55, v54);
    return v38;
  }

  v179 = v50;
  sub_237A8D148(v38, v34, _s20PersistentParametersVMa_0);
  sub_2379D9054(v38, &qword_27DE9AC80, &unk_237C0F350);
  OUTLINED_FUNCTION_14_16();
  sub_237A8D148(v34 + v56, v43, v57);
  v38 = *(v34 + v30[6]);
  v58 = *(v34 + v30[7]);
  v59 = *(v34 + v30[8]);
  OUTLINED_FUNCTION_6_24();
  sub_237A8D1A4(v34, v60);
  *(v43 + v39[5]) = v38;
  *(v43 + v39[6]) = v58;
  *(v43 + v39[7]) = v59;
  v61 = v203;
  sub_237A8D0EC(v43, v203, type metadata accessor for MLHandPoseClassifier.ModelParameters);
  v62 = *(v52 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_model);
  if (!v62 || (v63 = v52, (v64 = *(v52 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_classLabels)) == 0))
  {
    sub_2379E8AF0();
    OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
    OUTLINED_FUNCTION_82_3();
    *v82 = v81 + 42;
    v82[1] = 0x8000000237C19FA0;
    OUTLINED_FUNCTION_52(v83, v82);
    OUTLINED_FUNCTION_0_36();
    sub_237A8D1A4(v61, v84);
    return v38;
  }

  v65 = v39[6];
  v66 = *(v61 + v39[7]);
  v67 = *(v61 + v39[5]);
  v68 = *(v61 + v65);
  v69 = v202;
  *v202 = 0;
  v69[1] = 0;
  *(v69 + 8) = 256;
  type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
  swift_storeEnumTagMultiPayload();
  v70 = v200;
  v71 = v200[5];
  v178 = v67;
  *(v69 + v71) = v67;
  *(v69 + v70[6]) = v68;
  *(v69 + v70[7]) = 1;
  *(v69 + v70[8]) = v66;
  *(v69 + v70[10]) = 0x403E000000000000;
  v72 = (v63 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingFeatures);
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  v38 = *v72;
  v73 = *(v72 + 8);
  v74 = v63 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_validationFeatures;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  v75 = *v74;
  v76 = *(v74 + 8);
  *&v206 = v38;
  BYTE8(v206) = v73;

  sub_2379DBCF4(v38, v73);
  sub_2379DBCF4(v75, v76);
  v200 = v64;
  v77 = v201;
  sub_2379EA98C(&v206, v64);
  if (v77)
  {
    OUTLINED_FUNCTION_91_1();

    sub_2379DBC9C(v75, v76);
    OUTLINED_FUNCTION_4_29();
    sub_237A8D1A4(v69, v79);
    OUTLINED_FUNCTION_0_36();
    sub_237A8D1A4(v61, v80);
    sub_2379DBC9C(v38, v73);
    return v38;
  }

  v176 = v38;
  v174 = v73;
  v201 = v62;
  v173 = v75;
  v177 = *(v200 + 2);
  v85 = *MEMORY[0x277D2CD40];
  v175 = v76;
  v86 = v197;
  v87 = *(v197 + 104);
  v88 = v78;
  v89 = v199;
  v90 = v198;
  v170 = v197 + 104;
  v169 = v87;
  (v87)(v199, v85, v198);
  v209 = v88;
  v91 = *(v86 + 16);
  v208 = 0;
  v206 = 0u;
  v207 = 0u;
  v92 = v190;
  v93 = v89;
  v94 = v90;
  v172 = v86 + 16;
  v171 = v91;
  v91(v190, v93, v90);
  OUTLINED_FUNCTION_37_5();
  v95 = v189;
  sub_237A8D148(v69, v189, v96);
  v97 = *(v86 + 80);
  v98 = (v97 + 16) & ~v97;
  v99 = *(v187 + 80);
  v100 = (v188 + v99 + v98) & ~v99;
  v167 = v97 | v99;
  v101 = swift_allocObject();
  v102 = *(v86 + 32);
  v168 = v98;
  v166 = v86 + 32;
  v165 = v102;
  v102(v101 + v98, v92, v94);
  OUTLINED_FUNCTION_33_7();
  *(v103 - 256) = v100;
  sub_237A8D0EC(v95, v101 + v100, v104);
  v188 = (v25 + v100 + 7) & 0xFFFFFFFFFFFFFFF8;
  *(v101 + v188) = v177;
  v105 = *(v196 + 104);
  v164 = *MEMORY[0x277D2CEC0];
  v196 += 104;
  v163 = v105;
  v105(v192);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C090, &qword_237C0F380);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B420, &qword_237C0CCD8);
  v108 = sub_2379D9224(&qword_27DE9C098, &qword_27DE9C090, &qword_237C0F380, MEMORY[0x277D83970]);
  sub_237A252E0();
  sub_2379D9224(&qword_27DE9B468, &qword_27DE9B420, &qword_237C0CCD8, MEMORY[0x277D2CC60]);
  v162[2] = v108;
  v162[3] = v107;
  v109 = v106;
  v110 = v193;
  sub_237C0686C();
  v111 = *(v86 + 8);
  v197 = v86 + 8;
  (v111)(v199, v198);
  v112 = v175;
  *&v206 = v173;
  BYTE8(v206) = v175;
  v113 = v173;
  sub_2379DBCF4(v173, v175);
  if (MLDataTable.size.getter())
  {
    v162[1] = v109;
    *&v206 = v113;
    BYTE8(v206) = v112;
    sub_2379EA98C(&v206, v200);
    v115 = v114;
    OUTLINED_FUNCTION_91_1();
    v116 = *MEMORY[0x277D2CD48];
    v117 = v199;
    v200 = v111;
    v118 = v198;
    v169(v199, v116);
    v209 = v115;
    v208 = 0;
    v206 = 0u;
    v207 = 0u;
    v119 = v190;
    v171(v190, v117, v118);
    OUTLINED_FUNCTION_37_5();
    v120 = v189;
    sub_237A8D148(v202, v189, v121);
    v172 = v115;
    v122 = v188;
    v123 = swift_allocObject();
    v165(v123 + v168, v119, v118);
    OUTLINED_FUNCTION_33_7();
    sub_237A8D0EC(v120, v123 + *(v124 - 256), v125);
    *(v123 + v122) = v177;
    v163(v192, v164, v191);
    OUTLINED_FUNCTION_85_2(&v205);

    v126 = v186;
    v110 = v193;
    sub_237C0686C();
    OUTLINED_FUNCTION_88_1();

    LOBYTE(v122) = v175;
    sub_2379DBC9C(v113, v175);
    sub_2379DBC9C(v113, v122);
    (v200)(v199, v118);
    v127 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_91_1();
    sub_2379DBC9C(v113, v112);
    OUTLINED_FUNCTION_88_1();
    sub_2379DBC9C(v113, v112);
    v127 = 1;
    v126 = v186;
  }

  v128 = v185;
  v129 = v195;
  (*(v194 + 32))(v185, v110, v195);
  result = __swift_storeEnumTagSinglePayload(v126, v127, 1, v129);
  v130 = v179;
  if ((v179 & 0x8000000000000000) == 0)
  {
    v131 = 0;
    v132 = OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_metricsAttributesDictionary;
    v133 = v203;
    while (v130 != v131)
    {
      if (__OFADD__(v131, 1))
      {
        goto LABEL_43;
      }

      if (__OFADD__(v204, v131))
      {
        goto LABEL_44;
      }

      v134 = sub_237BA7528(v128, v126, v204 + v131);
      *(v205 + v132) = v134;

      ++v131;
    }

    v135 = v205;
    v136 = *(v205 + v132);

    v137 = OUTLINED_FUNCTION_51_4();
    sub_237AC9A74(v136, &v206, v137, 0xED000073736F6C5FLL);

    if (*(&v207 + 1))
    {
      v138 = MEMORY[0x277D839F8];
      OUTLINED_FUNCTION_44_5();
      if (swift_dynamicCast())
      {
        *(&v207 + 1) = v138;
        v208 = &protocol witness table for Double;
        *&v206 = v209;
        v139 = OUTLINED_FUNCTION_76_3();
        sub_237B19FFC(v139, 0);
      }
    }

    else
    {
      sub_2379D9054(&v206, &qword_27DE9A998, &unk_237C0C100);
    }

    v140 = *(v135 + v132);

    v141 = OUTLINED_FUNCTION_49_0();
    sub_237AC9A74(v140, &v206, v141, 0xEF73736F6C5F6E6FLL);

    if (*(&v207 + 1))
    {
      v140 = MEMORY[0x277D839F8];
      OUTLINED_FUNCTION_44_5();
      if (swift_dynamicCast())
      {
        *(&v207 + 1) = v140;
        v208 = &protocol witness table for Double;
        *&v206 = v209;
        v142 = OUTLINED_FUNCTION_76_3();
        sub_237B19FFC(v142, 4);
      }
    }

    else
    {
      sub_2379D9054(&v206, &qword_27DE9A998, &unk_237C0C100);
    }

    v143 = MEMORY[0x277D839F8];
    OUTLINED_FUNCTION_89_1();
    sub_237AC9A74(v140, &v206, 0xD000000000000012, 0x8000000000000000);

    if (*(&v207 + 1))
    {
      type metadata accessor for _MetricUtilities.ConfusionMatrixMeter(0);
      OUTLINED_FUNCTION_44_5();
      if (swift_dynamicCast())
      {
        v140 = v209;
        v144 = v143;
        v145 = v180;
        sub_237A347A4();
        sub_237A34D48(v145, v177);
        v147 = v146;
        v148 = v145;
        v143 = v144;
        (*(v181 + 8))(v148, v182);
        *(&v207 + 1) = v144;
        v208 = &protocol witness table for Double;
        *&v206 = v147;
        v149 = OUTLINED_FUNCTION_76_3();
        sub_237B19FFC(v149, 3);
      }
    }

    else
    {
      sub_2379D9054(&v206, &qword_27DE9A998, &unk_237C0C100);
    }

    OUTLINED_FUNCTION_89_1();
    sub_237AC9A74(v140, &v206, 0xD000000000000014, 0x8000000000000000);

    if (*(&v207 + 1))
    {
      v150 = v143;
      type metadata accessor for _MetricUtilities.ConfusionMatrixMeter(0);
      OUTLINED_FUNCTION_44_5();
      v151 = swift_dynamicCast();
      v38 = v179;
      if (v151)
      {
        v152 = v180;
        sub_237A347A4();
        sub_237A34D48(v152, v177);
        v154 = v153;
        (*(v181 + 8))(v152, v182);
        *(&v207 + 1) = v150;
        v208 = &protocol witness table for Double;
        *&v206 = v154;
        v155 = OUTLINED_FUNCTION_76_3();
        sub_237B19FFC(v155, 5);
      }

      OUTLINED_FUNCTION_62_4();

      sub_2379D9054(v186, &qword_27DE9C080, &qword_237C0F360);
      OUTLINED_FUNCTION_42_3();
      OUTLINED_FUNCTION_69_3();
      v156();
      OUTLINED_FUNCTION_4_29();
      sub_237A8D1A4(v202, v157);
      OUTLINED_FUNCTION_0_36();
      sub_237A8D1A4(v133, v158);
    }

    else
    {
      OUTLINED_FUNCTION_62_4();

      sub_2379D9054(v186, &qword_27DE9C080, &qword_237C0F360);
      OUTLINED_FUNCTION_42_3();
      OUTLINED_FUNCTION_69_3();
      v159();
      OUTLINED_FUNCTION_4_29();
      sub_237A8D1A4(v202, v160);
      OUTLINED_FUNCTION_0_36();
      sub_237A8D1A4(v133, v161);
      sub_2379D9054(&v206, &qword_27DE9A998, &unk_237C0C100);
      v38 = v179;
    }

    OUTLINED_FUNCTION_52_6();
    return v38;
  }

LABEL_45:
  __break(1u);
  return result;
}

void sub_237A8A638()
{
  OUTLINED_FUNCTION_74();
  v2 = v0;
  v4 = v3;
  v5 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_18_0();
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v8);
  v10 = &v32 - v9;
  MEMORY[0x28223BE20](v11);
  v16 = &v32 - v15;
  v17 = *v4;
  if (v17 == 2)
  {
    if (*(v2 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_model))
    {

      sub_237B74974();
    }
  }

  else if (v17 == 1)
  {
    v85 = v14;
    v34 = v12;
    v35 = v13;
    v18 = v2 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingFeatures;
    OUTLINED_FUNCTION_55_5(v2 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingFeatures);
    v19 = *(v18 + 8);
    v56 = *v18;
    LOBYTE(v57) = v19;
    sub_2379DBCF4(v56, v19);
    sub_237C05A2C();
    MLDataTable.write(to:)(v16);
    if (v1)
    {
      (*(v85 + 8))(v16, v5);
      sub_2379DBC9C(v56, v57);
    }

    else
    {
      v33 = v18;
      v86 = *(v85 + 8);
      v86(v16, v5);
      sub_2379DBC9C(v56, v57);
      v20 = v2 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_validationFeatures;
      OUTLINED_FUNCTION_55_5(v2 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_validationFeatures);
      v21 = *(v20 + 8);
      v83 = *v20;
      v84 = v21;
      sub_2379DBCF4(v83, v21);
      sub_237C05A2C();
      MLDataTable.write(to:)(v10);
      v32 = v20;
      v86(v10, v5);
      sub_2379DBC9C(v83, v84);
      v22 = v35;
      OUTLINED_FUNCTION_51_4();
      sub_237C05A2C();
      LOBYTE(v56) = 1;
      *(&v56 + 1) = *v82;
      HIDWORD(v56) = *&v82[3];
      v57 = 44;
      v58 = 0xE100000000000000;
      v59 = 0;
      v60 = 0xE000000000000000;
      v61 = 92;
      v62 = 0xE100000000000000;
      v63 = 1;
      *v64 = *v81;
      *&v64[3] = *&v81[3];
      v65 = 34;
      v66 = 0xE100000000000000;
      v67 = 1;
      *v68 = *v80;
      *&v68[3] = *&v80[3];
      v69 = &unk_284ABEBF0;
      v70 = 10;
      v71 = 0xE100000000000000;
      v72 = 0;
      v73 = 0;
      v74 = 1;
      *v75 = *v79;
      *&v75[3] = *&v79[3];
      v76 = 0;
      MLDataTable.init(contentsOf:options:)(v22, &v56, &v77);
      v23 = v78;
      v24 = v33;
      v25 = *v33;
      v26 = *(v33 + 8);
      *v33 = v77;
      *(v24 + 8) = v23;
      sub_2379DBC9C(v25, v26);
      v27 = v34;
      OUTLINED_FUNCTION_49_0();
      sub_237C05A2C();
      v36 = 1;
      v37 = 44;
      v38 = 0xE100000000000000;
      v39 = 0;
      v40 = 0xE000000000000000;
      v41 = 92;
      v42 = 0xE100000000000000;
      v43 = 1;
      v44 = 34;
      v45 = 0xE100000000000000;
      v46 = 1;
      v47 = &unk_284ABEBF0;
      v48 = 10;
      v50 = 0;
      v51 = 0;
      v49 = 0xE100000000000000;
      v52 = 1;
      v53 = 0;
      MLDataTable.init(contentsOf:options:)(v27, &v36, &v54);
      v28 = v55;
      v29 = v32;
      v30 = *v32;
      v31 = *(v32 + 8);
      *v32 = v54;
      *(v29 + 8) = v28;
      sub_2379DBC9C(v30, v31);
    }
  }

  OUTLINED_FUNCTION_73();
}

void sub_237A8AAC0()
{
  OUTLINED_FUNCTION_74();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC80, &unk_237C0F350);
  OUTLINED_FUNCTION_20(v4);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  v6 = OUTLINED_FUNCTION_86_2();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  v11 = OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingParameters;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_2379FC864(v0 + v11, v1, &qword_27DE9AC80, &unk_237C0F350);
  if (__swift_getEnumTagSinglePayload(v1, 1, v6) == 1)
  {
    sub_2379D9054(v1, &qword_27DE9AC80, &unk_237C0F350);
    OUTLINED_FUNCTION_68_2();
    OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
    *v12 = 0xD000000000000030;
    *(v12 + 8) = v0;
    *(v12 + 16) = 0u;
    *(v12 + 32) = 0u;
    *(v12 + 48) = 2;
    swift_willThrow();
  }

  else
  {
    OUTLINED_FUNCTION_7_21();
    sub_237A8D0EC(v1, v10, v13);
    sub_237A09988(v3);
    OUTLINED_FUNCTION_6_24();
    sub_237A8D1A4(v10, v14);
  }

  OUTLINED_FUNCTION_73();
}

void sub_237A8AEE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_74();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v204 = sub_237C0602C();
  OUTLINED_FUNCTION_0();
  v210 = v27;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_77_0(v30 - v29);
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C038, &qword_237C0F320);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_77_0(v33);
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C040, &unk_237C14AA0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_77_0(v37);
  v38 = sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  v212 = v39;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_77_0(v42);
  type metadata accessor for MLHandPoseClassifier.DataSource(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_18_0();
  v46 = v44 - v45;
  MEMORY[0x28223BE20](v47);
  v49 = &v191 - v48;
  MEMORY[0x28223BE20](v50);
  v52 = &v191 - v51;
  MEMORY[0x28223BE20](v53);
  v55 = &v191 - v54;
  _s20PersistentParametersVMa_0(0);
  OUTLINED_FUNCTION_61_5();
  if (!v57)
  {
    *&v221 = v56;
    sub_237A20C10();
    OUTLINED_FUNCTION_67_3();
    v77 = OUTLINED_FUNCTION_32_7();
    v79 = v78;
    sub_2379E8AF0();
    OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
    *v80 = xmmword_237C0F260;
LABEL_11:
    *(v80 + 16) = v26;
    *(v80 + 24) = v52;
    *(v80 + 32) = v77;
    *(v80 + 40) = v79;
    *(v80 + 48) = 3;
    swift_willThrow();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_61_5();
  if (!v57)
  {
    v81 = 0x8000000237C19F30;
    *&v221 = v58;
    sub_237A20C10();
    OUTLINED_FUNCTION_67_3();
    v77 = OUTLINED_FUNCTION_32_7();
    v79 = v82;
    sub_2379E8AF0();
    OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
    OUTLINED_FUNCTION_82_3();
LABEL_10:
    *v80 = v83;
    *(v80 + 8) = v81;
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_61_5();
  if (!v57)
  {
    v81 = 0x8000000237C19F50;
    *&v221 = v67;
    sub_237A20C10();
    OUTLINED_FUNCTION_67_3();
    v77 = OUTLINED_FUNCTION_32_7();
    v79 = v84;
    sub_2379E8AF0();
    OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
    OUTLINED_FUNCTION_82_3();
    v83 = v85 + 2;
    goto LABEL_10;
  }

  v203 = v38;
  MLHandPoseClassifier.DataSource.imagesWithAnnotations()(v59, v60, v61, v62, v63, v64, v65, v66, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v202);
  if (!v20)
  {
    v225 = BYTE8(v221);
    MLHandPoseClassifier.DataSource.imagesWithAnnotations()(v68, v69, v70, v71, v72, v73, v74, v75, v191, v192, v193, v194, v195, v196, v197, v198, v199, v200, v201, v221);
    v76 = 0;
    v200 = v221;
    HIDWORD(v201) = BYTE8(v221);
    *&v221 = v202;
    BYTE8(v221) = v225;
    v86 = &v221;
    if (MLDataTable.size.getter() >= 1)
    {
      *&v221 = v200;
      BYTE8(v221) = BYTE4(v201);
      if (MLDataTable.size.getter() >= 1)
      {
        *&v221 = v202;
        BYTE8(v221) = v225;
        sub_237A8C254(&v221);
        v87 = v200;
        *&v221 = v200;
        v88 = BYTE4(v201);
        BYTE8(v221) = BYTE4(v201);
        sub_237A8C254(&v221);
        v89 = OUTLINED_FUNCTION_37_0();
        sub_237AFE4F0(v89, v90);
        v92 = v91;

        if ((v92 & 1) == 0)
        {
          sub_2379E8AF0();
          v93 = OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
          OUTLINED_FUNCTION_13_17(v93, v94);
        }

        sub_2379DBC9C(v87, v88);
        v95 = OUTLINED_FUNCTION_63_3();
LABEL_9:
        sub_2379DBC9C(v95, v96);
        goto LABEL_12;
      }
    }

    OUTLINED_FUNCTION_5_26();
    sub_237A8D148(v26, v55, v97);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v198 = 0;
      v199 = *v55;
      v86 = v55[8];
      v195 = *(v55 + 2);
      v98 = *(v55 + 5);
      v196 = *(v55 + 4);
      v197 = v98;

      OUTLINED_FUNCTION_5_26();
      sub_237A8D148(v24, v52, v99);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v100 = *v52;
        v101 = v52[8];

        OUTLINED_FUNCTION_52_6();
        *&v221 = v102;
        LODWORD(v215) = v86;
        BYTE8(v221) = v86;
        v103 = v197;
        MLDataTable.subscript.getter();

        OUTLINED_FUNCTION_25_11();
        OUTLINED_FUNCTION_79_3();
        MLDataTable.subscript.getter();

        OUTLINED_FUNCTION_25_11();
        v105 = sub_237AC762C(v103, v104);

        if (v105)
        {
          OUTLINED_FUNCTION_52_6();
          *&v221 = v106;
          BYTE8(v221) = v215;
          MLDataTable.subscript.getter();

          OUTLINED_FUNCTION_25_11();
          OUTLINED_FUNCTION_79_3();
          MLDataTable.subscript.getter();

          OUTLINED_FUNCTION_25_11();
          v108 = sub_237AC762C(v103, v107);

          if (v108)
          {
            OUTLINED_FUNCTION_12_19();
            sub_2379DBC9C(v100, v101);
            v109 = OUTLINED_FUNCTION_70_3();
            sub_2379DBC9C(v109, v215);
            goto LABEL_12;
          }
        }

        else
        {
        }

        sub_2379E8AF0();
        v161 = OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
        OUTLINED_FUNCTION_13_17(v161, v162);
        sub_2379DBC9C(v100, v101);
        v163 = OUTLINED_FUNCTION_70_3();
        sub_2379DBC9C(v163, v215);
        sub_2379DBC9C(v200, SBYTE4(v201));
        v95 = v202;
        v96 = v225;
        goto LABEL_9;
      }

      v110 = OUTLINED_FUNCTION_70_3();
      sub_2379DBC9C(v110, v86);

      v76 = v198;
    }

    else
    {
      v52 = v55;
    }

    OUTLINED_FUNCTION_1_33();
    sub_237A8D1A4(v52, v111);
    OUTLINED_FUNCTION_5_26();
    sub_237A8D148(v26, v49, v112);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      v198 = v76;
      v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9D8, &unk_237C0C710);
      v114 = &v49[*(v113 + 48)];
      v116 = *v114;
      v115 = v114[1];
      v195 = v116;
      v197 = v115;
      v117 = &v49[*(v113 + 64)];
      v118 = v117[1];
      v196 = *v117;
      v199 = v118;

      v119 = v212;
      v120 = *(v212 + 32);
      v121 = OUTLINED_FUNCTION_85_2(&a16);
      v122 = v49;
      v123 = v203;
      v120(v121, v122, v203);
      OUTLINED_FUNCTION_5_26();
      sub_237A8D148(v24, v46, v124);
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v125 = (v46 + *(v113 + 48));
        v127 = *v125;
        v126 = v125[1];
        v193 = v127;
        v194 = v126;

        v128 = v211;
        v120(v211, v46, v123);
        v129 = v209;
        sub_237C05DFC();

        v130 = v207;
        v131 = v128;
        sub_237C05DFC();

        v132 = v206;
        sub_2379FC864(v129, v206, &qword_27DE9C040, &unk_237C14AA0);
        v133 = v210 + 32;
        v134 = *(v210 + 32);
        v135 = OUTLINED_FUNCTION_85_2(&a11);
        v136 = v204;
        v134(v135, v132, v204);
        v137 = sub_237A8CBA0(&qword_27DE9C048, MEMORY[0x277CE1958]);
        v138 = v214;
        sub_237C0885C();
        v139 = v132 + *(v130 + 52);
        v140 = v138;
        v210 = v133;
        v192 = v134;
        v134(v131, v139, v136);
        v141 = v208;
        v142 = (v138 + *(v208 + 52));
        v196 = v137;
        sub_237C0885C();
        v191 = *(v141 + 56);
        *(v138 + v191) = 0;
        v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C050, &unk_237C0F328);
        v143 = *(v199 + 36);
        v144 = sub_237A8CBA0(&qword_27DE9C058, MEMORY[0x277CE1960]);
        while (1)
        {
          sub_237C08B5C();
          if (*&v140[v143] == v217)
          {
            sub_2379D9054(v209, &qword_27DE9C040, &unk_237C14AA0);
            goto LABEL_38;
          }

          v145 = sub_237C08B9C();
          v147 = OUTLINED_FUNCTION_85_1(v145, v146);
          sub_2379FC864(v147, &v219, &qword_27DE9A998, &unk_237C0C100);
          (v140)(&v217, 0);
          sub_237C08B6C();
          v148 = v136;
          OUTLINED_FUNCTION_52_6();
          v150 = *(v149 + 36);
          sub_237C08B5C();
          if (*&v142[v150] == v216[0])
          {
            break;
          }

          v151 = sub_237C08B9C();
          v153 = OUTLINED_FUNCTION_85_1(v151, v152);
          sub_2379FC864(v153, &v217, &qword_27DE9A998, &unk_237C0C100);
          (v142)(v216, 0);
          sub_237C08B6C();
          v221 = v219;
          v222 = v220;
          v223 = v217;
          v224 = v218;
          v154 = sub_237A8BFF8(&v221, &v223);
          sub_2379D9054(&v221, &qword_27DE9C060, &qword_237C0F338);
          v136 = v148;
          v140 = v214;
          if ((v154 & 1) == 0)
          {
            sub_2379D9054(v214, &qword_27DE9C038, &qword_237C0F320);
            sub_2379D9054(v209, &qword_27DE9C040, &unk_237C14AA0);

            sub_2379E8AF0();
            v155 = OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
            OUTLINED_FUNCTION_13_17(v155, v156);
            OUTLINED_FUNCTION_12_19();
            v157 = OUTLINED_FUNCTION_18_18();
            v144(v157);
            v158 = v213;
LABEL_43:
            (v144)(v158, v154);
            goto LABEL_12;
          }
        }

        sub_2379D9054(&v219, &qword_27DE9A998, &unk_237C0C100);
        sub_2379D9054(v209, &qword_27DE9C040, &unk_237C14AA0);
        v136 = v148;
        v140 = v214;
LABEL_38:
        v140[v191] = 1;
        sub_2379D9054(v140, &qword_27DE9C038, &qword_237C0F320);
        v164 = v205;
        v165 = v213;
        sub_237C05DFC();

        v166 = v207;
        v167 = v211;
        sub_237C05DFC();

        v168 = v206;
        sub_2379FC864(v164, v206, &qword_27DE9C040, &unk_237C14AA0);
        v169 = OUTLINED_FUNCTION_85_2(&a11);
        v170 = v192;
        v192(v169, v168, v136);
        v171 = v215;
        sub_237C0885C();
        v170(v167, v168 + *(v166 + 52), v136);
        v172 = v208;
        v173 = &v171[*(v208 + 52)];
        sub_237C0885C();
        v214 = *(v172 + 56);
        v171[v214] = 0;
        OUTLINED_FUNCTION_52_6();
        v175 = *(v174 + 36);
        while (1)
        {
          sub_237C08B5C();
          v176 = v215;
          if (*&v215[v175] == v217)
          {
            sub_2379D9054(v205, &qword_27DE9C040, &unk_237C14AA0);
            goto LABEL_46;
          }

          v177 = sub_237C08B9C();
          v179 = OUTLINED_FUNCTION_85_1(v177, v178);
          sub_2379FC864(v179, &v219, &qword_27DE9A998, &unk_237C0C100);
          v176(&v217, 0);
          sub_237C08B6C();
          OUTLINED_FUNCTION_52_6();
          v181 = *(v180 + 36);
          v176 = v173;
          sub_237C08B5C();
          if (*&v173[v181] == v216[0])
          {
            break;
          }

          v182 = sub_237C08B9C();
          v184 = OUTLINED_FUNCTION_85_1(v182, v183);
          sub_2379FC864(v184, &v217, &qword_27DE9A998, &unk_237C0C100);
          (v173)(v216, 0);
          sub_237C08B6C();
          v221 = v219;
          v222 = v220;
          v223 = v217;
          v224 = v218;
          v154 = sub_237A8BFF8(&v221, &v223);
          sub_2379D9054(&v221, &qword_27DE9C060, &qword_237C0F338);
          v165 = v213;
          v185 = OUTLINED_FUNCTION_62_4();
          if ((v154 & 1) == 0)
          {
            sub_2379D9054(v185, &qword_27DE9C038, &qword_237C0F320);
            sub_2379D9054(v205, &qword_27DE9C040, &unk_237C14AA0);
            sub_2379E8AF0();
            v186 = OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
            OUTLINED_FUNCTION_13_17(v186, v187);
            OUTLINED_FUNCTION_12_19();
            v188 = OUTLINED_FUNCTION_18_18();
            v144(v188);
            v158 = v165;
            goto LABEL_43;
          }
        }

        sub_2379D9054(&v219, &qword_27DE9A998, &unk_237C0C100);
        sub_2379D9054(v205, &qword_27DE9C040, &unk_237C14AA0);
        v165 = v213;
LABEL_46:
        v189 = v215;
        v215[v214] = 1;
        sub_2379D9054(v189, &qword_27DE9C038, &qword_237C0F320);
        OUTLINED_FUNCTION_12_19();
        v190 = OUTLINED_FUNCTION_18_18();
        v144(v190);
        (v144)(v165, v176);
      }

      else
      {
        (*(v119 + 8))(v86, v123);
        OUTLINED_FUNCTION_12_19();
        OUTLINED_FUNCTION_70_3();

        OUTLINED_FUNCTION_1_33();
        sub_237A8D1A4(v46, v160);
      }
    }

    else
    {
      OUTLINED_FUNCTION_12_19();
      OUTLINED_FUNCTION_1_33();
      sub_237A8D1A4(v49, v159);
    }
  }

LABEL_12:
  OUTLINED_FUNCTION_73();
}

uint64_t sub_237A8BFF8(uint64_t a1, uint64_t a2)
{
  sub_2379FC864(a1, v8, &qword_27DE9A998, &unk_237C0C100);
  if (v9)
  {
    if ((swift_dynamicCast() & 1) == 0)
    {
      v18 = 0;
      v16 = 0u;
      v17 = 0u;
    }
  }

  else
  {
    sub_2379D9054(v8, &qword_27DE9A998, &unk_237C0C100);
    v16 = 0u;
    v17 = 0u;
    v18 = 0;
  }

  sub_2379FC864(a2, v8, &qword_27DE9A998, &unk_237C0C100);
  if (v9)
  {
    if ((swift_dynamicCast() & 1) == 0)
    {
      v15 = 0;
      v13 = 0u;
      v14 = 0u;
    }
  }

  else
  {
    sub_2379D9054(v8, &qword_27DE9A998, &unk_237C0C100);
    v13 = 0u;
    v14 = 0u;
    v15 = 0;
  }

  sub_2379FC864(&v16, v8, &qword_27DE9C068, &qword_237C0F340);
  sub_2379FC864(&v13, &v10, &qword_27DE9C068, &qword_237C0F340);
  if (!v9)
  {
    if (!*(&v11 + 1))
    {
      sub_2379D9054(v8, &qword_27DE9C068, &qword_237C0F340);
      v3 = 1;
      goto LABEL_16;
    }

LABEL_15:
    sub_2379D9054(v8, &qword_27DE9C070, &qword_237C0F348);
    v3 = 0;
    goto LABEL_16;
  }

  sub_2379FC864(v8, v7, &qword_27DE9C068, &qword_237C0F340);
  if (!*(&v11 + 1))
  {
    sub_2379E8F7C(v7);
    goto LABEL_15;
  }

  v5[0] = v10;
  v5[1] = v11;
  v6 = v12;
  v3 = MEMORY[0x2383DC9F0](v7, v5);
  sub_2379E8F7C(v5);
  sub_2379E8F7C(v7);
  sub_2379D9054(v8, &qword_27DE9C068, &qword_237C0F340);
LABEL_16:
  sub_2379D9054(&v13, &qword_27DE9C068, &qword_237C0F340);
  sub_2379D9054(&v16, &qword_27DE9C068, &qword_237C0F340);
  return v3 & 1;
}

void *sub_237A8C254(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v66 = *a1;
  LOBYTE(v67) = v2;
  MLDataTable.subscript.getter();
  v3 = v70;
  if ((v70 & 1) != 0 || (v4 = OUTLINED_FUNCTION_47_7(), sub_2379DBCF4(v4, v5), sub_237A60248(&v71), v6 = OUTLINED_FUNCTION_47_7(), sub_2379DBC9C(v6, v7), v71 != 2))
  {
    v56 = v69;
LABEL_28:
    sub_2379DBC9C(v56, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE60, &qword_237C0D000);
    return sub_237C085AC();
  }

  v66 = v1;
  LOBYTE(v67) = v2;
  OUTLINED_FUNCTION_45_3();
  MLDataTable.subscript.getter();
  v3 = v70;
  if ((v70 & 1) != 0 || (v8 = OUTLINED_FUNCTION_3_22(), sub_2379DBCF4(v8, v9), sub_237A60248(&v71), v10 = OUTLINED_FUNCTION_3_22(), sub_2379DBC9C(v10, v11), v71 != 2))
  {
    v58 = OUTLINED_FUNCTION_47_7();
    sub_2379DBC9C(v58, v59);
    v56 = v69;
    goto LABEL_28;
  }

  v12 = OUTLINED_FUNCTION_47_7();
  sub_2379DBCF4(v12, v13);
  v14 = sub_237A2F128();
  v15 = OUTLINED_FUNCTION_47_7();
  sub_2379DBC9C(v15, v16);
  if (v14 < 0)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    result = sub_237C0932C();
    __break(1u);
    return result;
  }

  v17 = 0;
  if (v14)
  {
    v18 = 0;
    v19 = MEMORY[0x277D84F98];
    v64 = v14;
    while (1)
    {
      v20 = OUTLINED_FUNCTION_3_22();
      sub_2379DBCF4(v20, v21);
      sub_237A607E0(v18, &v66);
      v22 = OUTLINED_FUNCTION_3_22();
      sub_2379DBC9C(v22, v23);
      v25 = v66;
      v24 = v67;
      if (v68 != 2)
      {
        v26 = OUTLINED_FUNCTION_13_11();
        sub_2379E8CE8(v26, v27, v28);
        v25 = 0;
        v24 = 0xE000000000000000;
      }

      v29 = OUTLINED_FUNCTION_47_7();
      sub_2379DBCF4(v29, v30);
      sub_237A607E0(v18, &v66);
      v31 = OUTLINED_FUNCTION_47_7();
      sub_2379DBC9C(v31, v32);
      v33 = v67;
      if (v68 == 2)
      {
        v65 = v66;
      }

      else
      {
        sub_2379E8CE8(v66, v67, v68);
        v65 = 0;
        v33 = 0xE000000000000000;
      }

      sub_237A560B8(v17);
      swift_isUniquelyReferenced_nonNull_native();
      v66 = v19;
      v34 = OUTLINED_FUNCTION_13_11();
      v36 = sub_237ACAC78(v34, v35);
      if (__OFADD__(v19[2], (v37 & 1) == 0))
      {
        break;
      }

      v38 = v36;
      v39 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C030, &unk_237C14A90);
      v40 = sub_237C090AC();
      v19 = v66;
      if (v40)
      {
        v41 = OUTLINED_FUNCTION_13_11();
        v43 = sub_237ACAC78(v41, v42);
        if ((v39 & 1) != (v44 & 1))
        {
          goto LABEL_35;
        }

        v38 = v43;
      }

      if (v39)
      {
      }

      else
      {
        v19[(v38 >> 6) + 8] |= 1 << v38;
        v45 = (v19[6] + 16 * v38);
        *v45 = v25;
        v45[1] = v24;
        *(v19[7] + 8 * v38) = MEMORY[0x277D84F90];
        v46 = v19[2];
        v47 = __OFADD__(v46, 1);
        v48 = v46 + 1;
        if (v47)
        {
          goto LABEL_33;
        }

        v19[2] = v48;
      }

      v49 = v19[7];
      v50 = *(v49 + 8 * v38);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v49 + 8 * v38) = v50;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_237BC0CB8();
        v50 = v54;
        *(v49 + 8 * v38) = v54;
      }

      v52 = *(v50 + 16);
      if (v52 >= *(v50 + 24) >> 1)
      {
        sub_237BC0CB8();
        v50 = v55;
        *(v49 + 8 * v38) = v55;
      }

      ++v18;
      *(v50 + 16) = v52 + 1;
      v53 = v50 + 16 * v52;
      *(v53 + 32) = v65;
      *(v53 + 40) = v33;
      v17 = sub_237A5D5F8;
      if (v64 == v18)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v19 = MEMORY[0x277D84F98];
LABEL_31:
  v60 = OUTLINED_FUNCTION_47_7();
  sub_2379DBC9C(v60, v61);
  v62 = OUTLINED_FUNCTION_3_22();
  sub_2379DBC9C(v62, v63);
  sub_237A560B8(v17);
  return v19;
}

uint64_t sub_237A8C650(uint64_t a1)
{
  OUTLINED_FUNCTION_2_35();
  sub_237A8D1A4(v1 + v2, v3);
  sub_2379D9054(v1 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingParameters, &qword_27DE9AC80, &unk_237C0F350);
  v4 = OUTLINED_FUNCTION_56_5(v1 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_sourceTable);
  sub_2379DBC84(v4, v5);
  v6 = OUTLINED_FUNCTION_56_5(v1 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_trainingFeatures);
  sub_2379DBC9C(v6, v7);
  v8 = OUTLINED_FUNCTION_56_5(v1 + OBJC_IVAR____TtC8CreateML41HandPoseClassifierTrainingSessionDelegate_validationFeatures);
  sub_2379DBC9C(v8, v9);

  return v1;
}

uint64_t sub_237A8C708(uint64_t a1)
{
  sub_237A8C650(a1);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HandPoseClassifierTrainingSessionDelegate(uint64_t a1)
{
  result = qword_27DE9C018;
  if (!qword_27DE9C018)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_237A8C7B4(uint64_t a1)
{
  type metadata accessor for MLTrainingSessionParameters(319);
  if (v1 <= 0x3F)
  {
    sub_237A8C8BC(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_237A8C8BC(uint64_t a1)
{
  if (!qword_27DE9C028)
  {
    _s20PersistentParametersVMa_0(255);
    v1 = sub_237C08D2C();
    if (!v2)
    {
      atomic_store(v1, &qword_27DE9C028);
    }
  }
}

uint64_t sub_237A8C9A8()
{
  sub_237A88DF8();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_237A8CA5C(uint64_t a1)
{
  v2 = sub_237A89310(a1);
  v3 = *(v1 + 8);

  return v3(v2);
}

uint64_t sub_237A8CBA0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_237C0602C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_237A8CBE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC80, &unk_237C0F350);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_2()
{
  v1 = sub_237C0617C();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  OUTLINED_FUNCTION_1(v7);
  v9 = (v4 + v6 + *(v8 + 80)) & ~*(v8 + 80);
  (*(v3 + 8))(v0 + v4, v1);
  v10 = v0 + v9;
  type metadata accessor for MLHandActionClassifier.ModelParameters.ValidationData(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    type metadata accessor for MLHandActionClassifier.DataSource(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v12 = sub_237C05ADC();
        OUTLINED_FUNCTION_4();
        v14 = *(v13 + 8);
        v14(v0 + v9, v12);
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9E8, &unk_237C0F370);
        v14(v10 + v15[12], v12);
        OUTLINED_FUNCTION_105(v15[16]);

        OUTLINED_FUNCTION_105(v15[20]);

        OUTLINED_FUNCTION_105(v15[24]);

        v16 = v15[28];
        goto LABEL_9;
      case 1u:
      case 2u:
        sub_237C05ADC();
        OUTLINED_FUNCTION_4();
        (*(v11 + 8))(v0 + v9);
        break;
      case 3u:
        sub_2379DBC9C(*v10, *(v10 + 8));

        goto LABEL_10;
      case 4u:
        sub_2379DBC9C(*v10, *(v10 + 8));

        goto LABEL_10;
      case 5u:
        sub_237C05DBC();
        OUTLINED_FUNCTION_4();
        (*(v17 + 8))(v0 + v9);
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9D8, &unk_237C0C710);
        OUTLINED_FUNCTION_105(v18[12]);

        OUTLINED_FUNCTION_105(v18[16]);

        v16 = v18[20];
        goto LABEL_9;
      case 6u:
        sub_237C05DBC();
        OUTLINED_FUNCTION_4();
        (*(v19 + 8))(v0 + v9);
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9F0, &unk_237C0B6E0);
        OUTLINED_FUNCTION_105(v20[12]);

        OUTLINED_FUNCTION_105(v20[16]);

        OUTLINED_FUNCTION_105(v20[20]);

        v16 = v20[24];
LABEL_9:
        OUTLINED_FUNCTION_105(v16);
LABEL_10:

        break;
      default:
        break;
    }
  }

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_237A8CFEC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_237C0617C();
  OUTLINED_FUNCTION_1(v5);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = *(v8 + 64);
  v10 = type metadata accessor for MLHandActionClassifier.ModelParameters(0);
  OUTLINED_FUNCTION_1(v10);
  v12 = v11;
  v14 = v13;
  v15 = (v7 + v9 + *(v12 + 80)) & ~*(v12 + 80);
  v16 = *(v2 + ((*(v14 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_2379EB49C(a1, v2 + v15, v16, a2);
}

uint64_t sub_237A8D0EC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  v4 = OUTLINED_FUNCTION_37_0();
  v5(v4);
  return a2;
}

uint64_t sub_237A8D148(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  v4 = OUTLINED_FUNCTION_37_0();
  v5(v4);
  return a2;
}

uint64_t sub_237A8D1A4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

void OUTLINED_FUNCTION_12_19()
{
  sub_2379DBC9C(*(v0 - 392), *(v0 - 380));
  v1 = *(v0 - 376);
  v2 = *(v0 - 72);

  sub_2379DBC9C(v1, v2);
}

uint64_t OUTLINED_FUNCTION_13_17(uint64_t a1, uint64_t a2)
{
  *a2 = 1;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0;
  *(a2 + 48) = 4;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_25_11()
{
  v2 = *(v0 - 184);
  *(v0 - 224) = *(v0 - 192);
  *(v0 - 216) = v2;

  Array<A>.init(_:)(v0 - 224);
}

void OUTLINED_FUNCTION_30_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{

  sub_237B6DAB4(a1, a2, 0x746E696F7079656BLL, 0xE900000000000073, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

void OUTLINED_FUNCTION_31_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{

  sub_237B6DAB4(a1, a2, 0x5F6E6F6973736573, 0xEA00000000006469, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t OUTLINED_FUNCTION_32_7()
{
  *(v1 - 192) = v0;

  return sub_237C08DEC();
}

uint64_t OUTLINED_FUNCTION_46_5()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_50_6(uint64_t a1, uint64_t a2)
{

  return sub_237C0929C();
}

uint64_t OUTLINED_FUNCTION_55_5(uint64_t a1)
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_66_4(uint64_t a1@<X8>)
{
  v3 = v2 + a1;
  v4 = *(v1 + 320);
  *v3 = *(v1 + 312);
  *(v3 + 8) = v4;
}

uint64_t OUTLINED_FUNCTION_67_3()
{

  return sub_237C08DEC();
}

unint64_t OUTLINED_FUNCTION_68_2()
{

  return sub_2379E8AF0();
}

uint64_t OUTLINED_FUNCTION_81_2()
{
  result = *v0;
  *v0 = v1;
  *(v0 + 8) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_86_2()
{

  return _s20PersistentParametersVMa_0(0);
}

void OUTLINED_FUNCTION_87_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{

  sub_237B6DAB4(a1, a2, 0x6C6562616CLL, 0xE500000000000000, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

void OUTLINED_FUNCTION_88_1()
{
  v2 = *(v0 - 464);
  v3 = *(v0 - 472);

  sub_2379DBC9C(v2, v3);
}

uint64_t OUTLINED_FUNCTION_89_1()
{
}

void OUTLINED_FUNCTION_90_2()
{

  sub_2379DBC84(v1, v0);
}

uint64_t OUTLINED_FUNCTION_91_1()
{
}

void OUTLINED_FUNCTION_92_2()
{
  v2 = *(v0 + 632);
  v3 = *(v0 + 640);

  sub_2379DBC9C(v2, v3);
}

void sub_237A8D7E4(unint64_t *a1, uint64_t a2)
{
  v114 = a2;
  v85 = a1;
  v2 = sub_237C0873C();
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_2_0();
  v5 = v4 - v3;
  v6 = sub_237C0825C();
  OUTLINED_FUNCTION_0();
  v109 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_0();
  v11 = v10 - v9;
  v12 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v84 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v84 - v22;
  v24 = type metadata accessor for MLTextClassifier.DataSource(0);
  MEMORY[0x28223BE20](v24 - 8);
  OUTLINED_FUNCTION_2_0();
  v27 = v26 - v25;
  sub_237A8E880(v114, v26 - v25, v28);
  v29 = *(v14 + 32);
  v114 = v12;
  v29(v23, v27, v12);
  v30 = v110;
  sub_237A5CD94();
  if (v30)
  {
    (*(v14 + 8))(v23, v114);
    return;
  }

  v111 = v17;
  v89 = v14;
  v90 = v11;
  v104 = v5;
  v88 = v6;
  v92 = v20;
  v91 = *(v31 + 16);
  v84 = v23;
  if (v91)
  {
    OUTLINED_FUNCTION_9_20();
    v33 = v89;
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B288, &qword_237C137F0);
    v33 = v89;
    v34 = (*(v89 + 80) + 32) & ~*(v89 + 80);
    v17 = swift_allocObject();
    *(v17 + 1) = xmmword_237C0B660;
    (*(v33 + 16))(&v17[v34], v23, v114);
    v91 = *(v17 + 2);
    OUTLINED_FUNCTION_9_20();
  }

  v35 = 0;
  v107 = v33 + 16;
  v87 = v109 + 8;
  v101 = "are not properly constructed.";
  v36 = (v33 + 8);
  v110 = xmmword_237C0B660;
  v99 = MEMORY[0x277D84F90];
  v100 = MEMORY[0x277D84F90];
  v102 = (v33 + 8);
  v86 = v32;
LABEL_7:
  if (v35 == v91)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD80, &qword_237C0BC60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_237C0B670;
    *(inited + 32) = 1954047348;
    *(inited + 40) = 0xE400000000000000;
    v112 = v99;
    MEMORY[0x28223BE20](inited);
    *(&v84 - 2) = &v112;
    v65 = sub_237BBDC94(sub_2379F5678);
    v67 = v66;

    *(inited + 48) = v65;
    *(inited + 56) = v67 & 1;
    *(inited + 64) = 0x6C6562616CLL;
    *(inited + 72) = 0xE500000000000000;
    v112 = v100;
    MEMORY[0x28223BE20](v68);
    *(&v84 - 2) = &v112;
    v69 = sub_237BBDC94(sub_2379F57A0);
    v71 = v70;

    *(inited + 80) = v69;
    *(inited + 88) = v71 & 1;
    v72 = sub_237C085AC();
    sub_237B6CB9C(v72, &v112);
    v73 = v113;
    v74 = v85;
    *v85 = v112;
    *(v74 + 8) = v73;
    (*v36)(v84, v114);
    return;
  }

  if (v35 < *(v32 + 16))
  {
    v37 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    v108 = *(v33 + 72);
    v106 = *(v33 + 16);
    v106(v17, v32 + v37 + v108 * v35, v114);
    v96 = sub_237C059DC();
    v39 = v38;
    sub_237C081FC();
    sub_237A5D3A4();
    v41 = v40;
    v42 = OUTLINED_FUNCTION_3_35();
    v43(v42);
    v44 = *(v41 + 16);
    if (!v44)
    {
      OUTLINED_FUNCTION_11_21();

      OUTLINED_FUNCTION_8_21();

      OUTLINED_FUNCTION_12_20();

      v112 = 0;
      v113 = 0xE000000000000000;
      sub_237C08EDC();

      v112 = 0xD000000000000019;
      v113 = 0x8000000237C1A100;
      v75 = v96;
      MEMORY[0x2383DC360](v96, v39);
      MEMORY[0x2383DC360](11815, 0xE200000000000000);
      v76 = v112;
      v77 = v113;
      v78 = sub_237C08C3C();
      sub_237BABE74(v76, v77, v78);

      v112 = 0;
      v113 = 0xE000000000000000;
      sub_237C08EDC();

      v112 = 0xD000000000000019;
      v113 = 0x8000000237C1A100;
      MEMORY[0x2383DC360](v75, v39);

      MEMORY[0x2383DC360](11815, 0xE200000000000000);
      v79 = v112;
      v80 = v113;
      sub_2379E8AF0();
      swift_allocError();
      *v81 = v79;
      *(v81 + 8) = v80;
      *(v81 + 16) = 0u;
      *(v81 + 32) = 0u;
      *(v81 + 48) = 0;
      swift_willThrow();
      v82 = *v102;
      v83 = v114;
      (*v102)(v92, v114);
      v82(v84, v83);
      return;
    }

    v97 = 0;
    v45 = 0;
    v93 = v35 + 1;
    v103 = v44;
    v95 = v44 - 1;
    v46 = v41 + v37;
    v98 = v39;
    v105 = v41;
    v94 = v41 + v37;
    while (1)
    {
      v47 = v46 + v108 * v45;
      v48 = v45;
      if (v45 >= *(v41 + 16))
      {
        break;
      }

      ++v45;
      v106(v111, v47, v114);
      sub_237C0872C();
      v49 = sub_237C086AC();
      v51 = v50;
      OUTLINED_FUNCTION_11_21();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_7_22();
        v99 = v60;
      }

      v52 = *(v99 + 16);
      if (v52 >= *(v99 + 24) >> 1)
      {
        sub_237BC0CB8();
        v99 = v61;
      }

      v53 = v99;
      *(v99 + 16) = v52 + 1;
      v54 = v53 + 16 * v52;
      *(v54 + 32) = v49;
      *(v54 + 40) = v51;
      v55 = v98;

      OUTLINED_FUNCTION_8_21();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_7_22();
        v100 = v62;
      }

      v56 = *(v100 + 16);
      if (v56 >= *(v100 + 24) >> 1)
      {
        sub_237BC0CB8();
        v100 = v63;
      }

      v57 = *v36;
      (*v36)(v111, v114);
      v58 = v100;
      *(v100 + 16) = v56 + 1;
      v59 = v58 + 16 * v56;
      *(v59 + 32) = v96;
      *(v59 + 40) = v55;
      v97 = 1;
      v41 = v105;
      v46 = v94;
      if (v95 == v48)
      {

        v17 = v92;
        v57(v92, v114);
        v33 = v89;
        v32 = OUTLINED_FUNCTION_12_20();
        v35 = v93;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_237A8E3B4(uint64_t a1)
{
  sub_237A8D7E4(&v94, a1);
  if (v1)
  {
    return v2;
  }

  v3 = v94;
  v4 = v95;
  MLDataTable.subscript.getter();
  v5 = v98;
  v92 = v3;
  v94 = v3;
  v99 = v4;
  LOBYTE(v95) = v4;
  MLDataTable.subscript.getter();
  if (v5)
  {
    goto LABEL_52;
  }

  v93 = v97;
  v100 = v98;

  v6 = sub_237A2F128();
  v7 = OUTLINED_FUNCTION_2_36();
  sub_2379DBC9C(v7, v8);
  if (v6 < 0)
  {
    goto LABEL_52;
  }

  if (!v6)
  {
    v2 = MEMORY[0x277D84F98];
LABEL_39:
    sub_2379DBC9C(v93, v100);
    v80 = OUTLINED_FUNCTION_2_36();
    sub_2379DBC9C(v80, v81);
    sub_2379DBC9C(v92, v99);

    return v2;
  }

  v9 = 0;
  v2 = MEMORY[0x277D84F98];
  while (1)
  {
    v10 = OUTLINED_FUNCTION_2_36();
    sub_2379DBCF4(v10, v11);
    v12 = OUTLINED_FUNCTION_6_25();
    sub_237A607E0(v12, v13);
    v14 = OUTLINED_FUNCTION_2_36();
    sub_2379DBC9C(v14, v15);
    OUTLINED_FUNCTION_4_30();
    if (!v16)
    {
      break;
    }

    if (*(v2 + 16))
    {
      v17 = OUTLINED_FUNCTION_58_0();
      v19 = sub_237ACAC78(v17, v18);
      v21 = v20;
      v22 = OUTLINED_FUNCTION_58_0();
      sub_2379E8CE8(v22, v23, 2);
      if (v21)
      {
        v24 = *(*(v2 + 56) + 8 * v19);
        v25 = OUTLINED_FUNCTION_2_36();
        sub_2379DBCF4(v25, v26);

        v27 = OUTLINED_FUNCTION_6_25();
        sub_237A607E0(v27, v28);
        v29 = OUTLINED_FUNCTION_2_36();
        sub_2379DBC9C(v29, v30);
        OUTLINED_FUNCTION_4_30();
        if (!v16)
        {
          goto LABEL_49;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
        inited = swift_initStackObject();
        inited[1] = xmmword_237C0B660;
        if (v100)
        {
          goto LABEL_50;
        }

        v34 = inited;

        v35 = OUTLINED_FUNCTION_6_25();
        sub_237A607E0(v35, v36);
        sub_2379DBC9C(v93, 0);
        inited = v94;
        v32 = v95;
        v33 = v96;
        if (v96 != 2)
        {
          goto LABEL_51;
        }

        *(v34 + 32) = v94;
        *(v34 + 40) = v32;
        v94 = v24;
        sub_237A96708(v34);
        v37 = v94;
        swift_isUniquelyReferenced_nonNull_native();
        v94 = v2;
        v38 = OUTLINED_FUNCTION_58_0();
        sub_237ACAC78(v38, v39);
        OUTLINED_FUNCTION_10_18();
        if (v42)
        {
          goto LABEL_43;
        }

        v43 = v40;
        v44 = v41;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C030, &unk_237C14A90);
        if (sub_237C090AC())
        {
          v45 = OUTLINED_FUNCTION_58_0();
          v47 = sub_237ACAC78(v45, v46);
          if ((v44 & 1) != (v48 & 1))
          {
            goto LABEL_53;
          }

          v43 = v47;
        }

        v2 = v94;
        if ((v44 & 1) == 0)
        {
          OUTLINED_FUNCTION_1_34();
          *(v78 + 8 * v43) = v37;
          v79 = *(v2 + 16);
          v42 = __OFADD__(v79, 1);
          v77 = v79 + 1;
          if (v42)
          {
            goto LABEL_44;
          }

          goto LABEL_35;
        }

        *(*(v94 + 56) + 8 * v43) = v37;

        v49 = OUTLINED_FUNCTION_58_0();
        sub_2379E8CE8(v49, v50, 2);
        goto LABEL_36;
      }
    }

    else
    {
      v51 = OUTLINED_FUNCTION_58_0();
      sub_2379E8CE8(v51, v52, 2);
    }

    v53 = OUTLINED_FUNCTION_6_25();
    sub_237A607E0(v53, v54);
    v55 = OUTLINED_FUNCTION_2_36();
    sub_2379DBC9C(v55, v56);
    OUTLINED_FUNCTION_4_30();
    if (!v16)
    {
      goto LABEL_48;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
    v57 = swift_allocObject();
    v57[1] = xmmword_237C0B660;
    if (v100)
    {
      goto LABEL_46;
    }

    v60 = v57;

    v61 = OUTLINED_FUNCTION_6_25();
    sub_237A607E0(v61, v62);
    sub_2379DBC9C(v93, 0);
    v57 = v94;
    v58 = v95;
    v59 = v96;
    if (v96 != 2)
    {
      goto LABEL_47;
    }

    *(v60 + 4) = v94;
    *(v60 + 5) = v58;
    swift_isUniquelyReferenced_nonNull_native();
    v94 = v2;
    v63 = OUTLINED_FUNCTION_58_0();
    sub_237ACAC78(v63, v64);
    OUTLINED_FUNCTION_10_18();
    if (v42)
    {
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      break;
    }

    v67 = v65;
    v68 = v66;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C030, &unk_237C14A90);
    if (sub_237C090AC())
    {
      v69 = OUTLINED_FUNCTION_58_0();
      v71 = sub_237ACAC78(v69, v70);
      if ((v68 & 1) != (v72 & 1))
      {
        goto LABEL_53;
      }

      v67 = v71;
    }

    if ((v68 & 1) == 0)
    {
      v2 = v94;
      OUTLINED_FUNCTION_1_34();
      *(v75 + 8 * v67) = v60;
      v76 = *(v2 + 16);
      v42 = __OFADD__(v76, 1);
      v77 = v76 + 1;
      if (v42)
      {
        goto LABEL_42;
      }

LABEL_35:
      *(v2 + 16) = v77;
      goto LABEL_36;
    }

    v73 = OUTLINED_FUNCTION_58_0();
    sub_2379E8CE8(v73, v74, 2);
    v2 = v94;
    *(*(v94 + 56) + 8 * v67) = v60;

LABEL_36:
    if (v6 == ++v9)
    {
      goto LABEL_39;
    }
  }

  v83 = OUTLINED_FUNCTION_58_0();
  sub_2379E8CE8(v83, v84, v85);
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  sub_2379E8CE8(v57, v58, v59);
  __break(1u);
LABEL_48:
  v86 = OUTLINED_FUNCTION_58_0();
  sub_2379E8CE8(v86, v87, v88);
  __break(1u);
LABEL_49:
  v89 = OUTLINED_FUNCTION_58_0();
  sub_2379E8CE8(v89, v90, v91);
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  sub_2379E8CE8(inited, v32, v33);
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  result = sub_237C0932C();
  __break(1u);
  return result;
}

uint64_t sub_237A8E880(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for MLTextClassifier.DataSource(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_237A8E8E4()
{
  result = qword_27DE9C0A0;
  if (!qword_27DE9C0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9C0A0);
  }

  return result;
}

void OUTLINED_FUNCTION_1_34()
{
  *(v2 + 8 * (v3 >> 6) + 64) |= 1 << v3;
  v4 = (*(v2 + 48) + 16 * v3);
  *v4 = v1;
  v4[1] = v0;
}

void OUTLINED_FUNCTION_7_22()
{

  sub_237BC0CB8();
}

uint64_t MLBoostedTreeClassifier.ModelParameters.validationData.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  v6 = v5 - v4;
  result = sub_2379D8FF4(v1, &v8, &qword_27DE9A998, &unk_237C0C100);
  if (v9)
  {
    sub_2379DAD24(&v8, &v10);
    swift_dynamicCast();
    sub_2379EA144(a1);
    return sub_237A8ED14(v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237A8EAF4@<X0>(uint64_t a1@<X8>)
{
  result = MLBoostedTreeClassifier.ModelParameters.validationData.getter(&v4);
  v3 = v5;
  *a1 = v4;
  *(a1 + 8) = v3;
  return result;
}

uint64_t sub_237A8EB38(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  sub_2379DBCDC(v3, v1);
  return MLBoostedTreeClassifier.ModelParameters.validationData.setter(&v3);
}

uint64_t MLBoostedTreeClassifier.ModelParameters.validationData.setter(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData(0);
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
  sub_237A8ED70(v7, boxed_opaque_existential_0);
  return sub_2379DAE54(v13, v2);
}

uint64_t MLBoostedTreeClassifier.ModelParameters.validation.getter()
{
  result = sub_2379D8FF4(v1, &v3, &qword_27DE9A998, &unk_237C0C100);
  if (v4)
  {
    sub_2379DAD24(&v3, &v5);
    type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData(0);
    return swift_dynamicCast();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237A8ED14(uint64_t a1)
{
  v2 = type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237A8ED70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void (*MLBoostedTreeClassifier.ModelParameters.validationData.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  MLBoostedTreeClassifier.ModelParameters.validationData.getter(a1);
  return sub_237A8EE1C;
}

void sub_237A8EE1C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (a2)
  {
    v4 = *a1;
    v5 = v3;
    sub_2379DBCDC(v2, v3);
    MLBoostedTreeClassifier.ModelParameters.validationData.setter(&v4);

    sub_2379DBC84(v2, v3);
  }

  else
  {
    v4 = *a1;
    v5 = v3;
    MLBoostedTreeClassifier.ModelParameters.validationData.setter(&v4);
  }
}

uint64_t sub_237A8EEB0(uint64_t a1)
{
  v2 = type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2379EA830(a1, v4);
  return MLBoostedTreeClassifier.ModelParameters.validation.setter(v4);
}

uint64_t MLBoostedTreeClassifier.ModelParameters.validation.setter(uint64_t a1)
{
  v5[3] = type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData(0);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v5);
  sub_237A8ED70(a1, boxed_opaque_existential_0);
  return sub_2379DAE54(v5, v1);
}

void (*MLBoostedTreeClassifier.ModelParameters.validation.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = __swift_coroFrameAllocStub(0xA0uLL);
  *a1 = v4;
  v4[16] = v2;
  v4[17] = type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_4();
  v6 = *(v5 + 64);
  v4[18] = __swift_coroFrameAllocStub(v6);
  v4[19] = __swift_coroFrameAllocStub(v6);
  result = sub_2379D8FF4(v2, (v4 + 4), &qword_27DE9A998, &unk_237C0C100);
  if (v4[7])
  {
    sub_2379DAD24(v4 + 2, v4);
    swift_dynamicCast();
    return sub_237A8F08C;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_237A8F08C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[18];
  v4 = (*a1)[19];
  v5 = (*a1)[16];
  v6 = (*a1)[17];
  if (a2)
  {
    sub_2379EA830((*a1)[19], v3);
    v2[11] = v6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v2 + 8);
    sub_237A8ED70(v3, boxed_opaque_existential_0);
    sub_2379DAE54((v2 + 8), v5);
    sub_237A8ED14(v4);
  }

  else
  {
    v2[15] = v6;
    v8 = __swift_allocate_boxed_opaque_existential_0(v2 + 12);
    sub_237A8ED70(v4, v8);
    sub_2379DAE54((v2 + 12), v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t MLBoostedTreeClassifier.ModelParameters.earlyStoppingRounds.setter(uint64_t result, char a2)
{
  *(v2 + 80) = result;
  *(v2 + 88) = a2 & 1;
  return result;
}

uint64_t MLBoostedTreeClassifier.ModelParameters.init(validation:maxDepth:maxIterations:minLossReduction:minChildWeight:randomSeed:stepSize:earlyStoppingRounds:rowSubsample:columnSubsample:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>, double a12@<D4>)
{
  v24 = type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_2_0();
  v28 = v27 - v26;
  *a7 = 0u;
  *(a7 + 16) = 0u;
  *(a7 + 32) = a2;
  *(a7 + 40) = a3;
  *(a7 + 48) = a8;
  *(a7 + 56) = a9;
  *(a7 + 64) = a4;
  *(a7 + 72) = a10;
  *(a7 + 80) = a5;
  *(a7 + 88) = a6 & 1;
  *(a7 + 96) = a11;
  *(a7 + 104) = a12;
  sub_2379EA830(a1, v27 - v26);
  v31[3] = v24;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v31);
  sub_237A8ED70(v28, boxed_opaque_existential_0);
  sub_237A8ED14(a1);
  return sub_2379DAE54(v31, a7);
}

uint64_t MLBoostedTreeClassifier.ModelParameters.init(validationData:maxDepth:maxIterations:minLossReduction:minChildWeight:randomSeed:stepSize:earlyStoppingRounds:rowSubsample:columnSubsample:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>, double a10@<D2>, double a11@<D3>, double a12@<D4>)
{
  v12 = *a1;
  v13 = *(a1 + 8);
  *a7 = 0u;
  *(a7 + 16) = 0u;
  *(a7 + 32) = a2;
  *(a7 + 40) = a3;
  *(a7 + 48) = a8;
  *(a7 + 56) = a9;
  *(a7 + 64) = a4;
  *(a7 + 72) = a10;
  *(a7 + 80) = a5;
  *(a7 + 88) = a6 & 1;
  *(a7 + 96) = a11;
  *(a7 + 104) = a12;
  v15 = v12;
  v16 = v13;
  return MLBoostedTreeClassifier.ModelParameters.validationData.setter(&v15);
}

uint64_t sub_237A8F498@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_237C05DBC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v34 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C0A8, &qword_237C0F478);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v34 - v15;
  v17 = type metadata accessor for MLBoostedTreeClassifier.ModelParameters.ValidationData(0);
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
  sub_237C070CC();
  *(a3 + 72) = v24;
  *(a3 + 80) = sub_237C071AC();
  *(a3 + 88) = v25 & 1;
  sub_237C0710C();
  *(a3 + 96) = v26;
  sub_237C0712C();
  *(a3 + 104) = v27;
  v35 = a2;
  sub_2379D8FF4(a2, v13, &qword_27DE9A9A0, &qword_237C0BF60);
  v28 = 1;
  if (__swift_getEnumTagSinglePayload(v13, 1, v6) != 1)
  {
    (*(v7 + 32))(v10, v13, v6);
    (*(v7 + 16))(v16, v10, v6);
    swift_storeEnumTagMultiPayload();
    (*(v7 + 8))(v10, v6);
    v28 = 0;
  }

  __swift_storeEnumTagSinglePayload(v16, v28, 1, v17);
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    swift_storeEnumTagMultiPayload();
    if (__swift_getEnumTagSinglePayload(v16, 1, v17) != 1)
    {
      sub_2379D9054(v16, &qword_27DE9C0A8, &qword_237C0F478);
    }
  }

  else
  {
    v29 = OUTLINED_FUNCTION_7_0();
    sub_237A8ED70(v29, v30);
  }

  v36[3] = v17;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v36);
  sub_237A8ED70(v21, boxed_opaque_existential_0);
  sub_2379D9054(v35, &qword_27DE9A9A0, &qword_237C0BF60);
  sub_237C071DC();
  OUTLINED_FUNCTION_4();
  (*(v32 + 8))(a1);
  return sub_2379DAE54(v36, a3);
}

uint64_t MLBoostedTreeClassifier.ModelParameters.description.getter()
{
  v15[2] = 0x747065442078614DLL;
  v15[3] = 0xEB00000000203A68;
  OUTLINED_FUNCTION_7_0();
  v1 = sub_237C0924C();
  MEMORY[0x2383DC360](v1);

  MEMORY[0x2383DC360](10, 0xE100000000000000);
  OUTLINED_FUNCTION_3_1();
  sub_237C08EDC();

  OUTLINED_FUNCTION_7_0();
  v2 = sub_237C0924C();
  MEMORY[0x2383DC360](v2);

  OUTLINED_FUNCTION_2_1();
  MEMORY[0x2383DC360](0xD000000000000010, 0x8000000237C16E00);

  OUTLINED_FUNCTION_3_1();
  sub_237C08EDC();
  OUTLINED_FUNCTION_6_0();
  v3 = MEMORY[0x2383DC360](0xD000000000000014, 0x8000000237C16E20);
  OUTLINED_FUNCTION_8_0(v3, v4);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x2383DC360](0xD000000000000010, 0x8000000237C16E00);

  OUTLINED_FUNCTION_3_1();
  sub_237C08EDC();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_8_0(v5, v6);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x2383DC360](0xD000000000000010, 0x8000000237C16E00);

  OUTLINED_FUNCTION_3_1();
  sub_237C08EDC();

  strcpy(v15, "Random Seed: ");
  HIWORD(v15[1]) = -4864;
  OUTLINED_FUNCTION_7_0();
  v7 = sub_237C0924C();
  MEMORY[0x2383DC360](v7);

  OUTLINED_FUNCTION_2_1();
  MEMORY[0x2383DC360](v15[0], v15[1]);

  v15[0] = 0;
  v15[1] = 0xE000000000000000;
  v8 = MEMORY[0x2383DC360](0x7A69532070657453, 0xEB00000000203A65);
  OUTLINED_FUNCTION_5_0(v8, v9, v0[9]);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x2383DC360](0, 0xE000000000000000);

  OUTLINED_FUNCTION_3_1();
  sub_237C08EDC();
  OUTLINED_FUNCTION_6_0();
  v10 = MEMORY[0x2383DC360](0x7362755320776F52, 0xEF203A656C706D61);
  OUTLINED_FUNCTION_5_0(v10, v11, v0[12]);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x2383DC360](0, 0xE000000000000000);

  OUTLINED_FUNCTION_3_1();
  sub_237C08EDC();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_5_0(v12, v13, v0[13]);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x2383DC360](0, 0xE000000000000000);

  return 0x747065442078614DLL;
}

uint64_t MLBoostedTreeClassifier.ModelParameters.playgroundDescription.getter@<X0>(uint64_t *a1@<X8>)
{
  result = MLBoostedTreeClassifier.ModelParameters.description.getter();
  a1[3] = MEMORY[0x277D837D0];
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_237A8FBE8()
{
  result = sub_237A2E9F4();
  if ((result & 0x8000000000000000) == 0)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_237A8FC1C(uint64_t a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_20_11(a1, a2);
  if ((result & 0x8000000000000000) == 0)
  {
    return OUTLINED_FUNCTION_6_6();
  }

  __break(1u);
  return result;
}

uint64_t sub_237A8FC5C()
{
  sub_237A2E9F4();
  v0 = OUTLINED_FUNCTION_6_6();
  result = sub_237A017E8(v0, v1);
  if ((result & 0x8000000000000000) == 0)
  {
    return OUTLINED_FUNCTION_6_6();
  }

  __break(1u);
  return result;
}

uint64_t sub_237A8FC94(uint64_t (*a1)(void))
{
  result = a1();
  if ((result & 0x8000000000000000) == 0)
  {
    return OUTLINED_FUNCTION_6_6();
  }

  __break(1u);
  return result;
}

uint64_t sub_237A8FD1C(uint64_t result, uint64_t a2)
{
  v2 = result + a2;
  if (__OFADD__(result, a2))
  {
    __break(1u);
  }

  else
  {
    result = sub_237A2E9F4();
    if ((v2 & 0x8000000000000000) == 0 && result >= v2)
    {
      return v2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_237A8FD60(uint64_t result, uint64_t a2)
{
  v2 = result + a2;
  if (__OFADD__(result, a2))
  {
    __break(1u);
  }

  else
  {
    result = OUTLINED_FUNCTION_20_11(result, a2);
    if ((v2 & 0x8000000000000000) == 0 && result >= v2)
    {
      return v2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_237A8FDB4(uint64_t result, uint64_t a2)
{
  v2 = result + a2;
  if (__OFADD__(result, a2))
  {
    __break(1u);
  }

  else
  {
    sub_237A2E9F4();
    v3 = OUTLINED_FUNCTION_6_6();
    result = sub_237A017E8(v3, v4);
    if ((v2 & 0x8000000000000000) == 0 && result >= v2)
    {
      return v2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_237A8FE00(uint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = result + a2;
  if (__OFADD__(result, a2))
  {
    __break(1u);
  }

  else
  {
    result = a3();
    if ((v3 & 0x8000000000000000) == 0 && result >= v3)
    {
      return v3;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_237A8FE70(uint64_t a1, uint64_t a2)
{
  result = sub_237A01878();
  if (a2 < 1)
  {
    if (result <= 0 && result > a2)
    {
      return 0;
    }
  }

  else if ((result & 0x8000000000000000) == 0 && result < a2)
  {
    return 0;
  }

  v7 = __OFADD__(a1, a2);
  v5 = a1 + a2;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    result = sub_237A2E9F4();
    if ((v5 & 0x8000000000000000) == 0 && result >= v5)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_237A8FF00(uint64_t a1, uint64_t a2)
{
  result = sub_237A018D0();
  if (a2 < 1)
  {
    if (result <= 0 && result > a2)
    {
      return 0;
    }
  }

  else if ((result & 0x8000000000000000) == 0 && result < a2)
  {
    return 0;
  }

  v8 = __OFADD__(a1, a2);
  v6 = a1 + a2;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    result = OUTLINED_FUNCTION_20_11(result, v5);
    if ((v6 & 0x8000000000000000) == 0 && result >= v6)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_237A8FFC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  result = a5(a1, a3, a4);
  if (a2 < 1)
  {
    if (result <= 0 && result > a2)
    {
      return 0;
    }
  }

  else if ((result & 0x8000000000000000) == 0 && result < a2)
  {
    return 0;
  }

  v10 = __OFADD__(a1, a2);
  v8 = a1 + a2;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    sub_237A2E9F4();
    v11 = OUTLINED_FUNCTION_6_6();
    result = sub_237A017E8(v11, v12);
    if ((v8 & 0x8000000000000000) == 0 && result >= v8)
    {
      return v8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_237A9005C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t (*a5)(void))
{
  v8 = a4(a1, a3);
  if (a2 < 1)
  {
    if (v8 <= 0 && v8 > a2)
    {
      return 0;
    }
  }

  else if ((v8 & 0x8000000000000000) == 0 && v8 < a2)
  {
    return 0;
  }

  return sub_237A8FE00(a1, a2, a5);
}

uint64_t sub_237A900DC(uint64_t result)
{
  v1 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    sub_237A2E9F4();
    v2 = OUTLINED_FUNCTION_6_6();
    result = sub_237A017E8(v2, v3);
    if ((v1 & 0x8000000000000000) == 0 && v1 < result)
    {
      return v1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_237A90128(uint64_t result, uint64_t a2)
{
  v2 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    result = OUTLINED_FUNCTION_20_11(result, a2);
    if ((v2 & 0x8000000000000000) == 0 && v2 < result)
    {
      return v2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_237A90178(uint64_t result)
{
  v1 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    result = sub_237A2E9F4();
    if ((v1 & 0x8000000000000000) == 0 && v1 < result)
    {
      return v1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_237A901D4(uint64_t result, uint64_t (*a2)(void))
{
  v2 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    result = a2();
    if ((v2 & 0x8000000000000000) == 0 && v2 < result)
    {
      return v2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_237A90230@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_237B024B4(a2);
  if (v8)
  {
    goto LABEL_17;
  }

  v9 = *(a2 + 36);
  if (v9 != v7)
  {
    __break(1u);
    goto LABEL_12;
  }

  v10 = result;
  v11 = 1 << *(a2 + 32);
  if (v11 < result)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v12 = OUTLINED_FUNCTION_11_22();
  sub_237A934DC(v12, v13, v14);
  v15 = OUTLINED_FUNCTION_10_19();
  sub_237A934DC(v15, v16, v17);
  v18 = OUTLINED_FUNCTION_10_19();
  sub_2379E8FD0(v18, v19, v20);
  v21 = OUTLINED_FUNCTION_11_22();
  result = sub_2379E8FD0(v21, v22, v23);
  if (a1[2])
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (*(a1 + 2) != v9)
  {
    goto LABEL_13;
  }

  v24 = *a1;
  if (*a1 < v10)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v25 = *(a1 + 40);
  if ((v25 & 1) == 0)
  {
    if (v9 == *(a1 + 8))
    {
      v26 = a1[3];
      if (v11 >= v26)
      {
        v35 = *(a1 + 3);
        v36 = *(a1 + 9);
        v27 = OUTLINED_FUNCTION_11_22();
        v29 = v28;
        sub_2379E8FD0(v27, v30, v31);
        v32 = OUTLINED_FUNCTION_10_19();
        sub_2379E8FD0(v32, v33, v34);
        *(a3 + 48) = a2;
        *a3 = v24;
        *(a3 + 8) = v9;
        *(a3 + 12) = v35;
        *(a3 + 16) = v29;
        *(a3 + 24) = v26;
        *(a3 + 32) = v9;
        *(a3 + 36) = v36;
        *(a3 + 40) = v25;

        return sub_237A934E8(a1, v37);
      }

      goto LABEL_16;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_237A9038C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = sub_237A2E9F4();
  if (result < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (result < a2)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  a4[1] = a2;
  a4[2] = a3;
  *a4 = a1;
}

uint64_t sub_237A903FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  result = OUTLINED_FUNCTION_20_11(a1, a2);
  if (result < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (result < a2)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4 & 1;
  *a5 = a1;

  return sub_2379DBCF4(a3, a4 & 1);
}

uint64_t sub_237A90490@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  sub_237A2E9F4();
  v12 = OUTLINED_FUNCTION_6_6();
  sub_237A017E8(v12, v13);
  v14 = OUTLINED_FUNCTION_6_6();
  result = sub_237A0290C(v14);
  if (result < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (result < a2)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  *a6 = a1;
  a6[1] = a2;
}

uint64_t sub_237A9053C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  sub_237A2E9F4();
  v8 = OUTLINED_FUNCTION_6_6();
  result = sub_237A017E8(v8, v9);
  if (result < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (result < a2)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  a4[1] = a2;
  a4[2] = a3;
  *a4 = a1;
}

uint64_t sub_237A905B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  result = a3();
  if (result < 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (a1 < 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (result >= a2)
  {

    return a1;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_237A90618(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result < a3 || a4 < a2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237A9062C(uint64_t result, uint64_t a2)
{
  if (*(result + 16) & 1) != 0 || (*(a2 + 16))
  {
    goto LABEL_14;
  }

  if (*(result + 8) != *(a2 + 8))
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*result < *a2)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (*(a2 + 40) & 1) != 0 || (*(result + 40))
  {
    goto LABEL_15;
  }

  if (*(a2 + 32) != *(result + 32))
  {
    goto LABEL_12;
  }

  if (*(a2 + 24) < *(result + 24))
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }

  return result;
}

uint64_t sub_237A906A8()
{
  sub_237A2EAA4();
  v0 = OUTLINED_FUNCTION_6_6();

  return sub_237A01800(v0, v1);
}

uint64_t sub_237A906DC()
{
  sub_237A2E9F4();

  return sub_237A01878();
}

uint64_t sub_237A9071C()
{
  sub_237A2E9F4();
  v0 = OUTLINED_FUNCTION_6_6();
  sub_237A017E8(v0, v1);
  v2 = OUTLINED_FUNCTION_6_6();

  return sub_237A0290C(v2);
}

uint64_t sub_237A90778(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  sub_237A2E9F4();
  v2 = OUTLINED_FUNCTION_6_6();
  sub_237A017E8(v2, v3);
  v4 = OUTLINED_FUNCTION_6_6();

  return a2(v4);
}

uint64_t sub_237A907D0()
{
  v0 = sub_237A2E9F4();

  return sub_237A017E8(0, v0);
}

uint64_t sub_237A90800()
{
  v0 = sub_237A55984();

  return v0;
}

uint64_t sub_237A90834(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (!v3)
  {

    return MEMORY[0x277D84F90];
  }

  sub_237BC254C();
  OUTLINED_FUNCTION_15_15();

  v4 = sub_237BA1DAC(v9, v1 + 32, v3, a1);
  v5 = v9[1];
  v6 = v9[2];
  v7 = v10;

  result = sub_2379E8FD0(v5, v6, v7);
  if (v4 == v3)
  {

    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_237A908F4()
{
  sub_237A55A04();
  OUTLINED_FUNCTION_15_15();

  return v0;
}

const void *sub_237A90924(void *a1, char a2)
{
  v4 = sub_237A55A8C(a1, a2 & 1);
  sub_2379DBC9C(a1, a2 & 1);
  return v4;
}

const void *sub_237A9096C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_237A55B40(a1, a2, a3);

  return v3;
}

uint64_t sub_237A909C0(uint64_t a1)
{
  sub_237A55C18(a1);
  OUTLINED_FUNCTION_15_15();

  return v1;
}

uint64_t sub_237A909F0(uint64_t a1)
{
  sub_237A55C58(a1);
  OUTLINED_FUNCTION_15_15();

  return v1;
}

uint64_t sub_237A90A20()
{
  v0 = sub_237A55D4C();

  return v0;
}

uint64_t sub_237A90A78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for CMLFeatureValue();
  sub_237A92A08();
  return sub_237A2DECC();
}

uint64_t MLDataValue.SequenceType.init()@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x2383DDAC0](0);
  if (result)
  {
    OUTLINED_FUNCTION_22_10();
    OUTLINED_FUNCTION_11_9();
    v3 = swift_allocObject();
    result = OUTLINED_FUNCTION_3_14(v3);
    *a1 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void MLDataValue.SequenceType.init<A>(_:)()
{
  OUTLINED_FUNCTION_153();
  v34 = v1;
  v35 = v2;
  v4 = v3;
  v33 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3_15();
  v31 = v7;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - v9;
  sub_237C08D2C();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11);
  v13 = &v29 - v12;
  OUTLINED_FUNCTION_3_15();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_11_16();
  v17 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3_15();
  v32 = v18;
  OUTLINED_FUNCTION_7();
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v29 - v21;
  v23 = MEMORY[0x2383DDAC0](0, v20);
  if (v23)
  {
    v24 = v23;
    type metadata accessor for CMLSequence();
    OUTLINED_FUNCTION_11_9();
    v25 = swift_allocObject();
    *(v25 + 16) = v24;
    v37 = v25;
    *(v25 + 24) = 1;
    v29 = v15;
    (*(v15 + 16))(v0, v34, v4);
    sub_237C0885C();
    v30 = v4;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v26 = (v31 + 32);
    v27 = (v31 + 8);
    while (1)
    {
      sub_237C08D7C();
      if (__swift_getEnumTagSinglePayload(v13, 1, AssociatedTypeWitness) == 1)
      {
        break;
      }

      (*v26)(v10, v13, AssociatedTypeWitness);
      v28 = sub_237B70DD4(AssociatedTypeWitness, v35);
      sub_237A2DE9C(v28);
      (*v27)(v10, AssociatedTypeWitness);
    }

    (*(v29 + 8))(v34, v30);
    (*(v32 + 8))(v22, v17);
    *v33 = v37;
    OUTLINED_FUNCTION_150();
  }

  else
  {
    __break(1u);

    OUTLINED_FUNCTION_56_4();
    swift_unexpectedError();
    __break(1u);
  }
}

void *MLDataValue.SequenceType.subscript.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = sub_237A2E9C8(a1);

  return sub_237AFC548(v3, a2);
}

uint64_t sub_237A912F0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_237A90178(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_237A91320(uint64_t *a1)
{
  result = sub_237A90178(*a1);
  *a1 = result;
  return result;
}

uint64_t sub_237A91350(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_6_26(a1);
  result = sub_237A8FD1C(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_237A91390@<X0>(uint64_t *a1@<X8>)
{
  result = MLDataValue.SequenceType.endIndex.getter();
  *a1 = result;
  return result;
}

uint64_t sub_237A91420@<X0>(uint64_t *a1@<X8>)
{
  result = sub_237A8FBE8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_237A9145C(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_6_26(a1);
  result = sub_237A8FE70(v2, v3);
  *v1 = result;
  *(v1 + 8) = v5 & 1;
  return result;
}

uint64_t sub_237A914AC(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_6_26(a1);
  result = sub_237B6A938(v2);
  *v1 = result;
  return result;
}

uint64_t sub_237A914D8(uint64_t *a1)
{
  result = sub_237B6A938(*a1);
  *a1 = result;
  return result;
}

uint64_t static MLDataValue.SequenceType.== infix(_:_:)()
{
  sub_237A2E9F4();
  OUTLINED_FUNCTION_6_6();
  v0 = sub_237A01878();
  sub_237A2E9F4();
  OUTLINED_FUNCTION_6_6();
  if (v0 != sub_237A01878())
  {
    return 0;
  }

  sub_237A2E9F4();
  OUTLINED_FUNCTION_6_6();
  v1 = sub_237A01878();
  if ((v1 & 0x8000000000000000) == 0)
  {
    v2 = v1;
    for (i = 0; ; ++i)
    {
      v4 = v2 == i;
      if (v2 == i)
      {
        break;
      }

      if (__OFADD__(i, 1))
      {
        __break(1u);
        goto LABEL_11;
      }

      v5 = sub_237A2E9C8(i);
      sub_237AFC548(v5, &v15);
      v13 = v15;
      v14 = v16;
      v6 = sub_237A2E9C8(i);
      sub_237AFC548(v6, &v11);
      v9 = v11;
      v10 = v12;
      v7 = static MLDataValue.== infix(_:_:)(&v13, &v9);
      sub_2379E8CE8(v9, *(&v9 + 1), v10);
      sub_2379E8CE8(v13, *(&v13 + 1), v14);
      if ((v7 & 1) == 0)
      {
        return v4;
      }
    }

    return v4;
  }

LABEL_11:
  __break(1u);
  OUTLINED_FUNCTION_56_4();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void sub_237A918E8(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  sub_2379E9288(*a1, v7, v8);
  v3 = MLDataValue.description.getter();
  v5 = v4;
  sub_2379E8CE8(v6, v7, v8);
  *a2 = v3;
  a2[1] = v5;
}

uint64_t sub_237A91968()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BAF0, &qword_237C0E6A0);
  sub_237A92F6C(&qword_27DE9BAF8);
  v0 = sub_237C0864C();
  v2 = v1;

  MEMORY[0x2383DC360](v0, v2);

  MEMORY[0x2383DC360](93, 0xE100000000000000);

  return 91;
}

uint64_t sub_237A91A74@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_2379E9288(*a1, *(a1 + 8), *(a1 + 16));
  result = sub_237C0875C();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_237A91AD0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_237A901D4(*a1, sub_237A2E9F4);
  *a2 = result;
  return result;
}

uint64_t sub_237A91B14(uint64_t *a1)
{
  result = sub_237A901D4(*a1, sub_237A2E9F4);
  *a1 = result;
  return result;
}

uint64_t sub_237A91B58(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_6_26(a1);
  result = sub_237A8FE00(v2, v3, sub_237A2E9F4);
  *v1 = result;
  return result;
}

uint64_t sub_237A91BC8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_237A91280();
  *a1 = result;
  return result;
}

uint64_t (*sub_237A91BF4(uint64_t *a1, uint64_t *a2))()
{
  v3 = sub_237A8FCBC(*a2);
  *a1 = v3;
  a1[1] = v3;
  return sub_237A91C40;
}

uint64_t sub_237A91C48@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_237A905B4(*a1, a1[1], sub_237A2E9F4);
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  return result;
}

uint64_t sub_237A91C94@<X0>(uint64_t *a1@<X8>)
{
  result = sub_237A8FC94(sub_237A2E9F4);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_237A91D20(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_6_26(a1);
  result = sub_237A9005C(v2, v4, *v3, sub_237A017E8, sub_237A2E9F4);
  *v1 = result;
  *(v1 + 8) = v6 & 1;
  return result;
}

uint64_t sub_237A91DFC(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_6_26(a1);
  result = sub_237B6A888(v2);
  *v1 = result;
  return result;
}

uint64_t sub_237A91E28(uint64_t *a1)
{
  result = sub_237B6A888(*a1);
  *a1 = result;
  return result;
}

void *MLDataValue.SequenceType.init(from:)(uint64_t a1)
{
  result = OUTLINED_FUNCTION_6_26(a1);
  v4 = *(v3 + 16);
  if (v4 != 3)
  {
    sub_2379E8CE8(result, *(v3 + 8), v4);
    result = 0;
  }

  *v1 = result;
  return result;
}

uint64_t MLDataValue.SequenceType.dataValue.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = *v1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 3;
}

uint64_t sub_237A91F1C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_237B0DD68(*(a1 + 16));
  v4 = result;
  if (result)
  {
    type metadata accessor for CMLSequence();
    OUTLINED_FUNCTION_11_9();
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = 1;

    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void Array<A>.init(from:)()
{
  OUTLINED_FUNCTION_153();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  sub_237C08D2C();
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6);
  v45 = &v35 - v7;
  OUTLINED_FUNCTION_3_15();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v44 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v43 = &v35 - v15;
  v16 = *(v5 + 16);
  if (v16 == 3)
  {
    v35 = v14;
    v36 = v13;
    v41 = v3;
    v17 = 0;
    v49 = sub_237C084DC();
    v42 = v1;
    v39 = (v9 + 32);
    v40 = v1 + 16;
    v37 = (v9 + 8);
    v38 = (v9 + 16);
    while (1)
    {
      if (v17 == sub_237A2E9F4())
      {

        goto LABEL_10;
      }

      v18 = sub_237A2E9C8(v17);
      sub_237AFC548(v18, &v46);
      v20 = v46;
      v19 = v47;
      v21 = v48;
      if (v17 >= sub_237A2E9F4())
      {
        break;
      }

      v46 = v20;
      v47 = v19;
      v48 = v21;
      v22 = v45;
      v23 = *(v42 + 16);
      v24 = OUTLINED_FUNCTION_12_21();
      sub_2379E9288(v24, v25, v26);
      v27 = v41;
      v23(&v46);
      if (__swift_getEnumTagSinglePayload(v22, 1, v27) == 1)
      {

        v32 = OUTLINED_FUNCTION_12_21();
        sub_2379E8CE8(v32, v33, v34);

        (*(v35 + 8))(v45, v36);
        goto LABEL_10;
      }

      ++v17;
      v28 = v43;
      (*v39)(v43, v45, v27);
      (*v38)(v44, v28, v27);
      sub_237C089DC();
      sub_237C089AC();
      v29 = OUTLINED_FUNCTION_12_21();
      sub_2379E8CE8(v29, v30, v31);
      (*v37)(v28, v27);
    }

    __break(1u);
    OUTLINED_FUNCTION_56_4();
    swift_unexpectedError();
    __break(1u);
  }

  else
  {
    sub_2379E8CE8(*v5, *(v5 + 8), v16);
LABEL_10:
    OUTLINED_FUNCTION_150();
  }
}

void Array<A>.dataValue.getter(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_237C089DC();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x2383DC430](&v9, v6, WitnessTable);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  sub_237C08EEC();
  swift_getWitnessTable();
  sub_237C0914C();

  sub_237C0905C();
  swift_getWitnessTable();
  MLDataValue.SequenceType.init<A>(_:)();
  *a3 = v9;
  *(a3 + 8) = 0;
  *(a3 + 16) = 3;
}

void sub_237A92714()
{
  OUTLINED_FUNCTION_153();
  v30 = v0;
  v2 = v1;
  v4 = v3;
  v5 = sub_237C08D2C();
  OUTLINED_FUNCTION_3_15();
  v7 = v6;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  OUTLINED_FUNCTION_3_15();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v23 - v17;
  v19 = sub_237B0DD68(*(v4 + 16));
  v28 = v15;
  v29 = v10;
  v24 = v7;
  v25 = v5;
  v26 = v4;
  if (v19)
  {
    type metadata accessor for CMLSequence();
    inited = swift_initStackObject();
    OUTLINED_FUNCTION_3_14(inited);
    v21 = 0;
    v31 = sub_237C084DC();
    v27 = (v12 + 32);
    while (1)
    {
      if (v21 == sub_237A2E9F4())
      {

        goto LABEL_8;
      }

      sub_237A2E9C8(v21);
      v21 = sub_237B6A888(v21);
      v22 = v29;
      sub_237B70F8C(v2, v30, v29);
      if (__swift_getEnumTagSinglePayload(v22, 1, v2) == 1)
      {
        break;
      }

      (*v27)(v18, v22, v2);
      (*(v12 + 16))(v28, v18, v2);
      sub_237C089DC();
      sub_237C089AC();

      (*(v12 + 8))(v18, v2);
    }

    (*(v24 + 8))(v22, v25);
LABEL_8:
    OUTLINED_FUNCTION_150();
  }

  else
  {
    __break(1u);
    OUTLINED_FUNCTION_56_4();
    swift_unexpectedError();
    __break(1u);
  }
}

void sub_237A92A08()
{
  OUTLINED_FUNCTION_153();
  v18 = v0;
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_3_15();
  v6 = v5;
  v8 = MEMORY[0x28223BE20](v7);
  v17 = v9;
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!MEMORY[0x2383DDAC0](0, v8))
  {
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_22_10();
  OUTLINED_FUNCTION_11_9();
  v11 = swift_allocObject();
  OUTLINED_FUNCTION_3_14(v11);
  v12 = sub_237C0894C();
  for (i = v12; ; v12 = i)
  {
    if (v12 == sub_237C089BC())
    {
      OUTLINED_FUNCTION_150();
      return;
    }

    v13 = sub_237C0899C();
    sub_237C0896C();
    if (v13)
    {
      (*(v6 + 16))(v10, v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v12, v2);
      goto LABEL_6;
    }

    v15 = sub_237C08F4C();
    if (v17 != 8)
    {
      break;
    }

    v19 = v15;
    (*(v6 + 16))(v10, &v19, v2);
    swift_unknownObjectRelease();
LABEL_6:
    sub_237C089CC();
    v14 = sub_237B70DD4(v2, v18);
    (*(v6 + 8))(v10, v2);
    sub_237A2DE9C(v14);
  }

  __break(1u);
LABEL_11:
  __break(1u);
  OUTLINED_FUNCTION_56_4();
  swift_unexpectedError();
  __break(1u);
}

uint64_t sub_237A92C28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_237A92A08();
  v6 = v5;
  (*(a3 + 8))(&v9, a2, a3);
  v7 = 0x5060403020100uLL >> (8 * v9);
  type metadata accessor for CMLColumn();
  return sub_237A2ED1C(v6, v7);
}

uint64_t sub_237A92D0C@<X0>(uint64_t *a2@<X8>)
{
  result = sub_237C084DC();
  *a2 = result;
  return result;
}

unint64_t sub_237A92DF8()
{
  result = qword_27DE9C0B0;
  if (!qword_27DE9C0B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9C0B8, &qword_237C0F480);
    sub_237A92E7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9C0B0);
  }

  return result;
}

unint64_t sub_237A92E7C()
{
  result = qword_27DE9C0C0;
  if (!qword_27DE9C0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9C0C0);
  }

  return result;
}

unint64_t sub_237A92ED4()
{
  result = qword_27DE9C0C8;
  if (!qword_27DE9C0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9C0C8);
  }

  return result;
}

unint64_t sub_237A92F6C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_14_17(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3, v4);
    sub_237A60EB8();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_237A92FD4()
{
  result = qword_27DE9C0D8;
  if (!qword_27DE9C0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9C0D8);
  }

  return result;
}

unint64_t sub_237A93028(uint64_t a1)
{
  result = OUTLINED_FUNCTION_14_17(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9AF10, &qword_237C0D670);
    sub_237A02390();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_237A93124(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_237A93264(uint64_t a1)
{
  result = OUTLINED_FUNCTION_14_17(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v3, v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_237A93360(uint64_t a1)
{
  result = OUTLINED_FUNCTION_14_17(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9C118, &qword_237C0F840);
    sub_237A9349C(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_237A9349C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_14_17(a1);
  if (!result)
  {
    type metadata accessor for CMLSequence();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_237A934DC(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_237A934E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C148, &qword_237C0F9D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_7_23()
{

  return sub_237A2E764(v0, 1);
}

uint64_t OUTLINED_FUNCTION_20_11(uint64_t a1, uint64_t a2)
{

  return MLDataTable.size.getter();
}

uint64_t OUTLINED_FUNCTION_22_10()
{

  return type metadata accessor for CMLSequence();
}

uint64_t sub_237A93684(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_237C0747C();
    v9 = a1 + *(a3 + 24);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_237A93720(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_237C0747C();
    v8 = v5 + *(a4 + 24);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t _s5ModelVMa(uint64_t a1)
{
  result = qword_27DE9C150;
  if (!qword_27DE9C150)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_237A937EC(uint64_t a1)
{
  sub_237A93888(319);
  if (v1 <= 0x3F)
  {
    sub_237C0747C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_237A93888(uint64_t a1)
{
  if (!qword_27DE9C160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9C168, &unk_237C0F9E8);
    v1 = sub_237C08D2C();
    if (!v2)
    {
      atomic_store(v1, &qword_27DE9C160);
    }
  }
}

uint64_t sub_237A938EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_237C0602C();
  MEMORY[0x28223BE20](v5 - 8);
  MEMORY[0x28223BE20](v6);
  v7 = sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_237A93A8C(a1, v12);
  if (!v2)
  {
    v14[1] = a1;
    v14[3] = a2;
    sub_237C05DFC();
    sub_237C05DFC();
    sub_237B0CBBC();
    return (*(v9 + 8))(v12, v7);
  }

  return result;
}

uint64_t sub_237A93A8C@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v6 = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B220, &qword_237C0CAF8);
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  v14 = v27 - v13;
  v15 = v6[2];
  if (v15)
  {
    result = sub_237A0D2FC(a1, 1, v15, v6[3], v6[4]);
    if (!v5)
    {
      v27[1] = a4;
      _s5ModelVMa(0);
      v17 = sub_237C0746C();
      MEMORY[0x28223BE20](v17);
      v18 = &v27[-4];
      v25 = v6;
      v26 = v19;
      if (v20)
      {
        sub_2379E2800(sub_237A94BC0, v18, v17);

        v21 = OUTLINED_FUNCTION_1_25();
        sub_237A942C4(v21, v22);
      }

      else
      {
        sub_2379E2664(sub_237A94BE0, v18, v17);

        v23 = OUTLINED_FUNCTION_1_25();
        sub_237A93D5C(v23, v24);
      }

      return (*(v11 + 8))(v14, v9);
    }
  }

  else
  {
    result = sub_237C090DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_237A93D5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB70, &unk_237C0E600);
  v46 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v47 = &v35 - v5;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB98, &unk_237C0B900);
  v6 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = &v35 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BA98, &qword_237C0E610);
  v40 = *(v8 - 8);
  v41 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v35 - v9;
  v11 = *v2;
  v37 = v2[1];
  v38 = v11;
  v52 = v11;
  v53 = v37;
  swift_bridgeObjectRetain_n();
  MEMORY[0x2383DC360](0x6C696261626F7250, 0xEB00000000797469);
  v52 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BAA0, &qword_237C0E618);
  sub_237A5F288(&qword_27DE9BAA8, &qword_27DE9BAA0, &qword_237C0E618);
  v39 = v10;
  v48 = v4;
  sub_237C05EEC();
  v49 = MEMORY[0x277D83B88];
  v50 = MEMORY[0x277D83B98];
  KeyPath = swift_getKeyPath();
  v13 = *(a1 + 16);
  if (v13)
  {
    v36 = v6;
    v51 = MEMORY[0x277D84F90];
    sub_237AC8C34(0, v13, 0);
    v14 = v51;
    v15 = v46 + 16;
    v16 = *(v46 + 16);
    v17 = a1 + ((*(v46 + 80) + 32) & ~*(v46 + 80));
    v45 = *(v46 + 72);
    v46 = v16;
    v18 = (v15 - 8);
    v19 = v15;
    do
    {
      v21 = v47;
      v20 = v48;
      v22 = v19;
      (v46)(v47, v17, v48);
      v23 = KeyPath;
      swift_getAtKeyPath();
      v24 = v52;
      v25 = v53;
      (*v18)(v21, v20);
      v51 = v14;
      v27 = *(v14 + 16);
      v26 = *(v14 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_237AC8C34(v26 > 1, v27 + 1, 1);
        v14 = v51;
      }

      *(v14 + 16) = v27 + 1;
      v28 = v14 + 16 * v27;
      *(v28 + 32) = v24;
      *(v28 + 40) = v25;
      v17 += v45;
      --v13;
      v19 = v22;
      KeyPath = v23;
    }

    while (v13);

    v29 = v43;
    v6 = v36;
  }

  else
  {

    v14 = MEMORY[0x277D84F90];
    v29 = v43;
  }

  v52 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BAB0, &qword_237C0E660);
  sub_237A5F288(&qword_27DE9BAB8, &qword_27DE9BAB0, &qword_237C0E660);
  v30 = v42;
  sub_237C05EFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABA0, &unk_237C0E0F0);
  sub_237C0602C();
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_237C0B670;
  sub_237C05EBC();
  v32 = v41;
  v33 = v39;
  sub_237C05EBC();
  v52 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABA8, &unk_237C0B910);
  sub_237A5F288(&qword_27DE9ABB0, &qword_27DE9ABA8, &unk_237C0B910);
  sub_237C05D7C();
  (*(v6 + 8))(v30, v29);
  return (*(v40 + 8))(v33, v32);
}

uint64_t sub_237A942C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AB78, &qword_237C0B8E0);
  *&v40 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v28 - v5;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACA0, &unk_237C0E0E0);
  v7 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BAC8, &unk_237C0E670);
  v33 = *(v9 - 8);
  v34 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - v10;
  v12 = *v2;
  v30 = v2[1];
  v31 = v12;
  *&v44 = v12;
  *(&v44 + 1) = v30;
  swift_bridgeObjectRetain_n();
  MEMORY[0x2383DC360](0x6C696261626F7250, 0xEB00000000797469);
  *&v44 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAC8, &qword_237C0B848);
  sub_237A5F288(&qword_27DE9BAD0, &qword_27DE9AAC8, &qword_237C0B848);
  v32 = v11;
  v39 = v4;
  sub_237C05EEC();
  v41 = MEMORY[0x277D837D0];
  v42 = MEMORY[0x277D837E0];
  swift_getKeyPath();
  v13 = *(a1 + 16);
  if (v13)
  {
    v29 = v7;
    v43 = MEMORY[0x277D84F90];
    sub_237AC8A54();
    v14 = v43;
    v38 = *(v40 + 16);
    v15 = a1 + ((*(v40 + 80) + 32) & ~*(v40 + 80));
    v16 = *(v40 + 72);
    v17 = (v40 + 8);
    v18 = v40 + 16;
    do
    {
      v19 = v39;
      v20 = v18;
      v38(v6, v15, v39);
      swift_getAtKeyPath();
      v40 = v44;
      (*v17)(v6, v19);
      v43 = v14;
      v21 = *(v14 + 16);
      if (v21 >= *(v14 + 24) >> 1)
      {
        sub_237AC8A54();
        v14 = v43;
      }

      *(v14 + 16) = v21 + 1;
      *(v14 + 16 * v21 + 32) = v40;
      v15 += v16;
      --v13;
      v18 = v20;
    }

    while (v13);

    v22 = v36;
    v7 = v29;
  }

  else
  {

    v14 = MEMORY[0x277D84F90];
    v22 = v36;
  }

  *&v44 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BAD8, &qword_237C0E680);
  sub_237A5F288(&qword_27DE9BAE0, &qword_27DE9BAD8, &qword_237C0E680);
  v23 = v35;
  sub_237C05EFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABA0, &unk_237C0E0F0);
  sub_237C0602C();
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_237C0B670;
  sub_237C05EBC();
  v25 = v34;
  v26 = v32;
  sub_237C05EBC();
  *&v44 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABA8, &unk_237C0B910);
  sub_237A5F288(&qword_27DE9ABB0, &qword_27DE9ABA8, &unk_237C0B910);
  sub_237C05D7C();
  (*(v7 + 8))(v23, v22);
  return (*(v33 + 8))(v26, v25);
}

uint64_t sub_237A948A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BAC0, &qword_237C0E668);
  sub_237C06BDC();
  if ((v4 & 0x8000000000000000) == 0 && v4 < v2)
  {
    sub_237C06BDC();
    if ((v4 & 0x8000000000000000) == 0 && v4 < v2)
    {
      sub_237C06BBC();
      return sub_237C06BCC();
    }

    __break(1u);
  }

  result = sub_237C090DC();
  __break(1u);
  return result;
}

uint64_t sub_237A949C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BAC0, &qword_237C0E668);
  sub_237C06BDC();
  if ((v4 & 0x8000000000000000) == 0 && v4 < v2)
  {
    sub_237C06BDC();
    if ((v4 & 0x8000000000000000) == 0 && v4 < v2)
    {

      sub_237C06BBC();
      return sub_237C06BCC();
    }

    __break(1u);
  }

  result = sub_237C090DC();
  __break(1u);
  return result;
}

uint64_t sub_237A94ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_237A93A8C(a2, a1);
  v5 = *(v4 + 8);

  return v5();
}

unint64_t sub_237A94B68()
{
  result = qword_27DE9C170;
  if (!qword_27DE9C170)
  {
    _s5ModelVMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9C170);
  }

  return result;
}

__n128 sub_237A94C10(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_237A94C78(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_237C0741C();
    v9 = a1 + *(a3 + 36);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_237A94D14(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_237C0741C();
    v8 = v5 + *(a4 + 36);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t _s10ClassifierVMa_1(uint64_t a1)
{
  result = qword_27DE9C178;
  if (!qword_27DE9C178)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_237A94DE0(uint64_t a1)
{
  sub_2379FC328();
  if (v1 <= 0x3F)
  {
    sub_237A94EA4(319);
    if (v2 <= 0x3F)
    {
      sub_237C0741C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_237A94EA4(uint64_t a1)
{
  if (!qword_27DE9C188)
  {
    v2 = sub_237A20BBC();
    v4 = type metadata accessor for FeatureVectorizer(a1, MEMORY[0x277D839F8], v2, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_27DE9C188);
    }
  }
}

uint64_t sub_237A94F48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v79 = a3;
  v80 = a4;
  v82 = a2;
  v85 = a1;
  v74 = a5;
  v75 = sub_237C0747C();
  OUTLINED_FUNCTION_0();
  v77 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18_0();
  v76 = v8 - v9;
  MEMORY[0x28223BE20](v10);
  v73 = &v62 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
  MEMORY[0x28223BE20](v12 - 8);
  v81 = &v62 - v13;
  v83 = sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  v78 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_0();
  v18 = v17 - v16;
  v19 = sub_237C0602C();
  OUTLINED_FUNCTION_0();
  v84 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_2_0();
  v24 = v23 - v22;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B220, &qword_237C0CAF8);
  OUTLINED_FUNCTION_0();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_18_0();
  v31 = v29 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v62 - v33;
  v35 = v5[2];
  v36 = v85;
  v87 = v85;
  v37 = v88;
  result = sub_2379E22EC(sub_237A20D00, v86, v35);
  if (!v37)
  {
    v70 = v27;
    v71 = v24;
    v39 = v84;
    v88 = v19;
    v68 = v31;
    v69 = v18;
    v72 = v25;
    v40 = 0x8000000237C17BE0;
    v41 = result;
    sub_237A0D2FC(v36, 1, result, 0xD000000000000013, 0x8000000237C17BE0);
    v66 = v34;
    v67 = v41;
    v42 = v5[13];
    LODWORD(v41) = *(v5 + 112);
    v43 = v5[1];
    v44 = v71;
    v64 = *v5;
    v65 = v43;
    sub_237C05DFC();
    LODWORD(v85) = v41;
    v45 = sub_237B89BDC(v44, v42, v41);
    v46 = *(v39 + 8);
    v84 = v39 + 8;
    v63 = v46;
    v46(v44, v88);
    v47 = v81;
    sub_237A2AA5C(v82, v81);
    v48 = v83;
    if (__swift_getEnumTagSinglePayload(v47, 1, v83) == 1)
    {
      sub_2379F6DD8(v47, &qword_27DE9A9A0, &qword_237C0BF60);
      _s10ClassifierVMa_1(0);
      v49 = v76;
      v50 = v66;
      sub_237C073FC();
      (*(v70 + 8))(v50, v72);

      v51 = v77;
      v82 = v42;
    }

    else
    {
      v76 = v45;
      v82 = v42;
      v52 = v69;
      (*(v78 + 32))(v69, v47, v48);
      sub_237A0D2FC(v52, 1, v67, 0xD000000000000013, 0x8000000237C17BE0);
      v81 = 0x8000000237C17BE0;
      v53 = v71;
      sub_237C05DFC();
      v54 = sub_237B89BDC(v53, v82, v85);
      v63(v53, v88);
      _s10ClassifierVMa_1(0);
      v49 = v73;
      sub_237C073EC();

      v55 = OUTLINED_FUNCTION_5_27();
      v54(v55);
      v56 = OUTLINED_FUNCTION_4_31();
      v57(v56);
      (v54)(v66, 0);
      v40 = v81;
      v51 = v77;
    }

    v58 = _s5ModelVMa(0);
    v59 = v74;
    (*(v51 + 32))(v74 + *(v58 + 24), v49, v75);
    v60 = v65;
    *v59 = v64;
    v59[1] = v60;
    v59[2] = v67;
    v59[3] = 0xD000000000000013;
    v59[4] = v40;
    v61 = v59 + *(v58 + 28);
    *v61 = v82;
    v61[8] = v85;
  }

  return result;
}

uint64_t sub_237A95650@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v31 = a2;
  v30 = a1;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B628, &unk_237C0DBE0);
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_18_0();
  v15 = v13 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v29 - v17;
  v19 = type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData(0);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_18_0();
  v22 = v20 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v29 - v24;
  *a6 = a3;
  *(a6 + 8) = a4;
  *(a6 + 16) = a5;
  *v25 = 0;
  *(v25 + 1) = 0;
  *(v25 + 8) = 256;
  swift_storeEnumTagMultiPayload();
  *(a6 + 32) = 0u;
  *(a6 + 24) = 10;
  *(a6 + 48) = 0u;
  *(a6 + 64) = xmmword_237C0CFC0;
  *(a6 + 80) = xmmword_237C0CFD0;
  *(a6 + 96) = 1;
  sub_237A2A8D8(v25, v22);
  v33[3] = v19;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v33);
  sub_237A2A93C(v22, boxed_opaque_existential_0);

  sub_237A2A9A0(v25);
  sub_2379DAE54(v33, a6 + 32);
  *(a6 + 104) = v30;
  *(a6 + 112) = v31 & 1;
  *(a6 + 120) = a5;
  *(a6 + 128) = 0xD000000000000013;
  *(a6 + 136) = 0x8000000237C17BE0;
  sub_237A20BBC();
  sub_237C072AC();
  v27 = v32;
  (*(v11 + 16))(v15, v18, v32);
  _s10ClassifierVMa_1(0);
  sub_237C073CC();
  return (*(v11 + 8))(v18, v27);
}

uint64_t sub_237A95908()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C1D8, &unk_237C0FBF8);

  return sub_237C05FCC();
}

uint64_t sub_237A95978(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C1D0, &unk_237C10E60);
  v5 = sub_237C05FBC();
  v7 = v6;
  (*(*(v4 - 8) + 8))(a1, v4);

  *v2 = v5;
  v2[1] = v7;
  return result;
}

void (*sub_237A95A14(void *a1))(uint64_t ***a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C1D0, &unk_237C10E60);
  v3[1] = v4;
  v5 = *(v4 - 8);
  v3[2] = v5;
  v6 = *(v5 + 64);
  v3[3] = __swift_coroFrameAllocStub(v6);
  v3[4] = __swift_coroFrameAllocStub(v6);
  v3[5] = *(v1 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C1D8, &unk_237C0FBF8);

  sub_237C05FCC();
  return sub_237A0D94C;
}

uint64_t sub_237A95B34(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_237A94F48(a2, a3, a4, a5, a1);
  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_237A95BD8(uint64_t a1, uint64_t a2)
{
  __swift_mutable_project_boxed_opaque_existential_1(a2, *(a2 + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C1B0, &qword_237C0FBF0);
  sub_237A96590();
  result = sub_237C06CAC();
  if (!v2)
  {
    _s5ModelVMa(0);
    __swift_mutable_project_boxed_opaque_existential_1(a2, *(a2 + 24));
    sub_237C0747C();
    OUTLINED_FUNCTION_2_37();
    sub_237A96680(v5, v6, MEMORY[0x277CC5180]);
    return sub_237C06CAC();
  }

  return result;
}

void *sub_237A95D58@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_237C0747C();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C168, &unk_237C0F9E8);
  __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  sub_237A96630(&qword_27DE9C1A0, &unk_237C130B8);
  result = sub_237C06C9C();
  if (!v2)
  {
    __swift_mutable_project_boxed_opaque_existential_1(a1, *(a1 + 24));
    OUTLINED_FUNCTION_2_37();
    sub_237A96680(v12, v13, MEMORY[0x277CC5188]);
    sub_237C06C9C();
    v15 = *v24;
    v14 = v24[1];
    v16 = _s5ModelVMa(0);
    (*(v6 + 32))(&a2[*(v16 + 24)], v10, v4);
    v17 = v24[13];
    v18 = *(v24 + 112);
    *a2 = v15;
    *(a2 + 1) = v14;
    *(a2 + 2) = v21;
    *(a2 + 3) = v22;
    *(a2 + 4) = v23;
    v19 = &a2[*(v16 + 28)];
    *v19 = v17;
    v19[8] = v18;
  }

  return result;
}

uint64_t sub_237A95F88@<X0>(char *a1@<X8>)
{
  v3 = sub_237C0747C();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  v9 = v8 - v7;
  v11 = *v1;
  v10 = v1[1];
  v12 = v1[13];
  v16 = *(v1 + 112);
  _s10ClassifierVMa_1(0);

  sub_237C073DC();
  *a1 = v11;
  *(a1 + 1) = v10;
  v13 = _s5ModelVMa(0);
  *(a1 + 3) = 0;
  *(a1 + 4) = 0;
  *(a1 + 2) = 0;
  (*(v5 + 32))(&a1[*(v13 + 24)], v9, v3);
  v14 = &a1[*(v13 + 28)];
  *v14 = v12;
  v14[8] = v16;
}

uint64_t sub_237A960C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41 = a3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B220, &qword_237C0CAF8);
  OUTLINED_FUNCTION_0();
  v40 = v8;
  MEMORY[0x28223BE20](v9);
  v46 = &v35[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AF88, &unk_237C0C700);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v35[-v12];
  v47 = sub_237C0602C();
  OUTLINED_FUNCTION_0();
  v45 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_18_0();
  v39 = v16 - v17;
  MEMORY[0x28223BE20](v18);
  v21 = &v35[-v20];
  v22 = a1[2];
  if (v22)
  {
    v48 = a2;
    v38 = a4;
    v23 = a1[3];
    v43 = a1[4];
    v44 = v23;
  }

  else
  {
    MEMORY[0x28223BE20](v19);
    *&v35[-16] = a2;
    result = sub_2379E22EC(sub_237A1DC7C, &v35[-32], v30);
    if (v4)
    {
      return result;
    }

    v22 = result;
    v48 = a2;
    v38 = a4;
    a1[2] = result;
    a1[3] = 0xD000000000000013;
    v43 = 0x8000000237C17BE0;
    v44 = 0xD000000000000013;
    a1[4] = 0x8000000237C17BE0;
  }

  v37 = _s5ModelVMa(0);
  v24 = a1 + *(v37 + 28);
  v25 = *v24;
  if (*(*v24 + 16))
  {
    v26 = v24[8];
  }

  else
  {
    sub_237C05DFC();
    v31 = v47;
    __swift_storeEnumTagSinglePayload(v13, 1, 1, v47);
    v32 = sub_237B89590(v21, v13);
    if (v4)
    {
      sub_2379F6DD8(v13, &qword_27DE9AF88, &unk_237C0C700);
      return (*(v45 + 8))(v21, v31);
    }

    v36 = v33;
    v34 = v32;
    sub_2379F6DD8(v13, &qword_27DE9AF88, &unk_237C0C700);
    (*(v45 + 8))(v21, v47);

    *v24 = v34;
    v26 = v36;
    v24[8] = v36 & 1;
    v25 = v34;
  }

  v27 = v46;
  result = sub_237A0D2FC(v48, 1, v22, v44, v43);
  if (!v4)
  {
    v29 = v39;
    sub_237C05DFC();
    sub_237B89BDC(v29, v25, v26 & 1);
    (*(v45 + 8))(v29, v47);
    _s10ClassifierVMa_1(0);
    sub_237C0740C();
    (*(v40 + 8))(v27, v42);
  }

  return result;
}

uint64_t sub_237A964E8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_237A960C0(a1, a2, a3, a4);
  v5 = *(v4 + 8);

  return v5();
}

unint64_t sub_237A96590()
{
  result = qword_27DE9C1B8;
  if (!qword_27DE9C1B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9C1B0, &qword_237C0FBF0);
    sub_237A96630(&qword_27DE9C1C0, &unk_237C13090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9C1B8);
  }

  return result;
}

uint64_t sub_237A96630(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9C168, &unk_237C0F9E8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_237A96680(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_237A96708(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_2_38(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_237A98FD8(v4, 1, sub_237BC0CB8);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_9_21();
  if (v7 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_237A967C4(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_2_38(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_237A98FD8(v4, 1, sub_237BC0FD4);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_9_21();
  if (v7 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_237A96880(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_237A98FD8(v4 + v3, 1, sub_237BC0EB4);
  v5 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_9_21();
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v5 + 8 * v6 + 32), (a1 + 32), 8 * v3);

  if (!v3)
  {
LABEL_8:
    *v1 = v5;
    return;
  }

  v8 = *(v5 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v5 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_237A96944(unint64_t a1)
{
  v3 = sub_237A254D8(a1);
  v4 = sub_237A254D8(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_237A98F38(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_237A99618(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_237A96A1C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_2_38(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_237A98FD8(result, 1, sub_237BC1880);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA40, &qword_237C0C1F0);
  if (v7 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v5 = __OFADD__(v8, v1);
  v9 = v8 + v1;
  if (!v5)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_237A96B58(uint64_t a1)
{
  result = OUTLINED_FUNCTION_2_38(a1);
  if (v7)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v6;
  sub_237A98FD8(result, 1, v5);
  v9 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v10 = (*(v9 + 24) >> 1) - *(v9 + 16);
  result = v8(0);
  if (v10 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v9;
    return result;
  }

  v11 = *(v9 + 16);
  v7 = __OFADD__(v11, v1);
  v12 = v11 + v1;
  if (!v7)
  {
    *(v9 + 16) = v12;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_237A96C5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  v7 = *(a1 + *(v6 + 24));
  v8 = MLSoundClassifier.ModelParameters.featureExtractionTimeWindowSize.getter();
  sub_2379F6D68(a1 + *(v6 + 28), v14);
  sub_237A995C4(a1, type metadata accessor for MLSoundClassifier.ModelParameters);
  if (!v15)
  {
    result = sub_237A286E0(v14);
    goto LABEL_5;
  }

  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_5:
    v10 = 1;
    v11 = 1;
    goto LABEL_6;
  }

  v10 = v12;
  v11 = v13;
LABEL_6:
  *a3 = v7;
  *(a3 + 8) = v8;
  *(a3 + 16) = 0;
  *(a3 + 24) = a2;
  *(a3 + 32) = v10;
  *(a3 + 40) = v11;
  return result;
}

void sub_237A96D40(uint64_t a1@<X0>, __int128 *a2@<X1>, _OWORD *a3@<X8>)
{
  v59 = a3;
  v71 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_14_0();
  v74 = v8;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_11_23(v10, v11, v12, v13, v14, v15, v16, v17, v58);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B240, &qword_237C0E220);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v18);
  v21 = &v58 - v20;
  v22 = a2[1];
  v84 = *a2;
  *v85 = v22;
  v23 = *(a1 + 64);
  v62 = a1 + 64;
  v24 = 1 << *(a1 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v23;
  *&v85[9] = *(a2 + 25);
  v61 = (v24 + 63) >> 6;
  v72 = v6 + 16;
  v63 = v6;
  v70 = (v6 + 8);
  v77 = v19;
  v69 = v19 + 32;

  v27 = 0;
  v28 = MEMORY[0x277D84F90];
  v64 = a1;
  do
  {
    while (1)
    {
      if (!v26)
      {
        while (1)
        {
          v29 = v27 + 1;
          if (__OFADD__(v27, 1))
          {
            break;
          }

          if (v29 >= v61)
          {
            goto LABEL_27;
          }

          v26 = *(v62 + 8 * v29);
          ++v27;
          if (v26)
          {
            v27 = v29;
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
        return;
      }

LABEL_9:
      v30 = __clz(__rbit64(v26)) | (v27 << 6);
      v31 = *(*(a1 + 56) + 8 * v30);
      v32 = *(v31 + 16);
      if (v32)
      {
        v66 = v27;
        v67 = v26;
        v68 = v28;
        v33 = (*(a1 + 48) + 16 * v30);
        v34 = v33[1];
        v76 = *v33;
        v86 = MEMORY[0x277D84F90];
        v79 = v34;

        sub_237AC8E34(0, v32, 0);
        v35 = v86;
        OUTLINED_FUNCTION_8_22();
        v65 = v31;
        v37 = v31 + v36;
        v75 = *(v38 + 72);
        v39 = *(v38 + 16);
        do
        {
          v40 = v73;
          v41 = v71;
          v39(v73, v37, v71);
          v39(v74, v40, v41);
          *&v80[0] = v76;
          *(&v80[0] + 1) = v79;

          sub_237C06C6C();
          (*v70)(v40, v41);
          v86 = v35;
          v43 = *(v35 + 16);
          v42 = *(v35 + 24);
          if (v43 >= v42 >> 1)
          {
            sub_237AC8E34(v42 > 1, v43 + 1, 1);
            v35 = v86;
          }

          *(v35 + 16) = v43 + 1;
          OUTLINED_FUNCTION_8_22();
          (*(v45 + 32))(v35 + v44 + *(v45 + 72) * v43, v21);
          v37 += v75;
          --v32;
        }

        while (v32);

        a1 = v64;
        v28 = v68;
        v26 = v67;
        v27 = v66;
      }

      else
      {
        v35 = MEMORY[0x277D84F90];
      }

      v46 = *(v35 + 16);
      v47 = *(v28 + 16);
      if (__OFADD__(v47, v46))
      {
        goto LABEL_31;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0 || v47 + v46 > *(v28 + 24) >> 1)
      {
        sub_237BC122C();
        v28 = v48;
      }

      v26 &= v26 - 1;
      if (!*(v35 + 16))
      {
        break;
      }

      if ((*(v28 + 24) >> 1) - *(v28 + 16) < v46)
      {
        goto LABEL_32;
      }

      swift_arrayInitWithCopy();

      if (v46)
      {
        v49 = *(v28 + 16);
        v50 = __OFADD__(v49, v46);
        v51 = v49 + v46;
        if (v50)
        {
          goto LABEL_33;
        }

        *(v28 + 16) = v51;
      }
    }
  }

  while (!v46);
  __break(1u);
LABEL_27:

  v52 = v60;
  sub_237A5556C(v28, &v84, v80);
  if (!v52)
  {
    v53 = v81;
    v54 = v82;
    v55 = v83;
    v56 = v80[1];
    v57 = v59;
    *v59 = v80[0];
    v57[1] = v56;
    *(v57 + 4) = v53;
    *(v57 + 40) = v54;
    *(v57 + 6) = v55;
  }
}

void sub_237A9726C()
{
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B240, &qword_237C0E220);
  OUTLINED_FUNCTION_0();
  v126 = v1;
  v116 = *(v2 + 64);
  MEMORY[0x28223BE20](v3);
  v135 = v108 - v4;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C1E0, &qword_237C0FC08);
  MEMORY[0x28223BE20](v118);
  v136 = v108 - v5;
  sub_237C05BFC();
  OUTLINED_FUNCTION_0();
  v131 = v7;
  v132 = v6;
  MEMORY[0x28223BE20](v6);
  v130 = v108 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = type metadata accessor for _TablePrinter(0);
  OUTLINED_FUNCTION_0();
  v115 = v9;
  MEMORY[0x28223BE20](v10);
  v133 = v11;
  v134 = v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_11_23(v13, v14, v15, v16, v17, v18, v19, v20, v108[0]);
  v22 = *v0;
  v21 = v0[1];
  v23 = v0[3];
  v114 = v0[2];
  v125 = v23;
  v113 = v0[4];
  v124 = *(v0 + 40);
  v123 = v0[6];
  v24 = *(v123 + 16);
  v138 = [objc_opt_self() progressWithTotalUnitCount_];
  aBlock = 0;
  v140 = 0xE000000000000000;
  sub_237C08EDC();

  aBlock = 0x69737365636F7250;
  v140 = 0xEB0000000020676ELL;
  v142 = v24;
  v25 = sub_237C0924C();
  MEMORY[0x2383DC360](v25);

  MEMORY[0x2383DC360](0x73656C696620, 0xE600000000000000);
  v26 = aBlock;
  v27 = v140;
  v28 = sub_237C08C1C();
  sub_237BABE74(v26, v27, v28);

  v142 = MEMORY[0x277D84F90];
  sub_237C08FCC();
  for (i = 0; i != 8; ++i)
  {
    v30 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
    aBlock = 0;
    v140 = 0xE000000000000000;
    sub_237C08EDC();

    aBlock = 0xD000000000000012;
    v140 = 0x8000000237C1A160;
    v141[4] = i;
    v31 = sub_237C0924C();
    MEMORY[0x2383DC360](v31);

    sub_237A99050(aBlock, v140, v30);
    [v30 setMaxConcurrentOperationCount_];
    sub_237C08F8C();
    sub_237C08FEC();
    sub_237C08FFC();
    sub_237C08F9C();
  }

  v129 = v142;
  v32 = MEMORY[0x277D84F90];
  v142 = MEMORY[0x277D84F90];
  sub_237C08FCC();
  v33 = v124;
  if (v124 == 255)
  {
    [objc_allocWithZone(MEMORY[0x277CDC908]) init];
  }

  else
  {
    v34 = objc_allocWithZone(MEMORY[0x277CDC908]);
    if (v33)
    {
      [v34 initWithFeaturePrintType_];
      v35 = OUTLINED_FUNCTION_4_32();
      OUTLINED_FUNCTION_0_37(v35, v36, v37, sel_setWindowDuration_);
    }

    else
    {
      [v34 0x278A42B78];
    }
  }

  OUTLINED_FUNCTION_5_28(v38);
  sub_237C08F8C();
  OUTLINED_FUNCTION_6_27();
  OUTLINED_FUNCTION_10_20();
  sub_237C08F9C();
  if (v33 == 255)
  {
    v39 = objc_allocWithZone(MEMORY[0x277CDC908]);
  }

  else
  {
    v39 = objc_allocWithZone(MEMORY[0x277CDC908]);
    if (v33)
    {
      [v39 initWithFeaturePrintType_];
      v40 = OUTLINED_FUNCTION_4_32();
      OUTLINED_FUNCTION_0_37(v40, v41, v42, sel_setWindowDuration_);
      goto LABEL_13;
    }
  }

  [v39 0x278A42B78];
LABEL_13:
  OUTLINED_FUNCTION_5_28(v43);
  sub_237C08F8C();
  OUTLINED_FUNCTION_6_27();
  OUTLINED_FUNCTION_10_20();
  sub_237C08F9C();
  if (v33 == 255)
  {
    v44 = objc_allocWithZone(MEMORY[0x277CDC908]);
  }

  else
  {
    v44 = objc_allocWithZone(MEMORY[0x277CDC908]);
    if (v33)
    {
      [v44 initWithFeaturePrintType_];
      v45 = OUTLINED_FUNCTION_4_32();
      OUTLINED_FUNCTION_0_37(v45, v46, v47, sel_setWindowDuration_);
      goto LABEL_18;
    }
  }

  [v44 0x278A42B78];
LABEL_18:
  OUTLINED_FUNCTION_5_28(v48);
  sub_237C08F8C();
  OUTLINED_FUNCTION_6_27();
  OUTLINED_FUNCTION_10_20();
  sub_237C08F9C();
  if (v33 == 255)
  {
    v49 = objc_allocWithZone(MEMORY[0x277CDC908]);
  }

  else
  {
    v49 = objc_allocWithZone(MEMORY[0x277CDC908]);
    if (v33)
    {
      [v49 initWithFeaturePrintType_];
      v50 = OUTLINED_FUNCTION_4_32();
      OUTLINED_FUNCTION_0_37(v50, v51, v52, sel_setWindowDuration_);
      goto LABEL_23;
    }
  }

  [v49 0x278A42B78];
LABEL_23:
  OUTLINED_FUNCTION_5_28(v53);
  sub_237C08F8C();
  OUTLINED_FUNCTION_6_27();
  OUTLINED_FUNCTION_10_20();
  sub_237C08F9C();
  if (v33 == 255)
  {
    v54 = objc_allocWithZone(MEMORY[0x277CDC908]);
  }

  else
  {
    v54 = objc_allocWithZone(MEMORY[0x277CDC908]);
    if (v33)
    {
      [v54 initWithFeaturePrintType_];
      v55 = OUTLINED_FUNCTION_4_32();
      OUTLINED_FUNCTION_0_37(v55, v56, v57, sel_setWindowDuration_);
      goto LABEL_28;
    }
  }

  [v54 0x278A42B78];
LABEL_28:
  OUTLINED_FUNCTION_5_28(v58);
  sub_237C08F8C();
  OUTLINED_FUNCTION_6_27();
  OUTLINED_FUNCTION_10_20();
  sub_237C08F9C();
  if (v33 == 255)
  {
    v59 = objc_allocWithZone(MEMORY[0x277CDC908]);
  }

  else
  {
    v59 = objc_allocWithZone(MEMORY[0x277CDC908]);
    if (v33)
    {
      [v59 initWithFeaturePrintType_];
      v60 = OUTLINED_FUNCTION_4_32();
      OUTLINED_FUNCTION_0_37(v60, v61, v62, sel_setWindowDuration_);
      goto LABEL_33;
    }
  }

  [v59 0x278A42B78];
LABEL_33:
  OUTLINED_FUNCTION_5_28(v63);
  sub_237C08F8C();
  OUTLINED_FUNCTION_6_27();
  OUTLINED_FUNCTION_10_20();
  sub_237C08F9C();
  if (v33 == 255)
  {
    v64 = objc_allocWithZone(MEMORY[0x277CDC908]);
  }

  else
  {
    v64 = objc_allocWithZone(MEMORY[0x277CDC908]);
    if (v33)
    {
      [v64 initWithFeaturePrintType_];
      v65 = OUTLINED_FUNCTION_4_32();
      OUTLINED_FUNCTION_0_37(v65, v66, v67, sel_setWindowDuration_);
      goto LABEL_38;
    }
  }

  [v64 0x278A42B78];
LABEL_38:
  OUTLINED_FUNCTION_5_28(v68);
  sub_237C08F8C();
  OUTLINED_FUNCTION_6_27();
  OUTLINED_FUNCTION_10_20();
  sub_237C08F9C();
  if (v33 == 255)
  {
    v69 = objc_allocWithZone(MEMORY[0x277CDC908]);
    goto LABEL_42;
  }

  v69 = objc_allocWithZone(MEMORY[0x277CDC908]);
  if ((v33 & 1) == 0)
  {
LABEL_42:
    [v69 0x278A42B78];
    goto LABEL_43;
  }

  [v69 initWithFeaturePrintType_];
  v70 = OUTLINED_FUNCTION_4_32();
  OUTLINED_FUNCTION_0_37(v70, v71, v72, sel_setWindowDuration_);
LABEL_43:
  v74 = MEMORY[0x277D83B88];
  OUTLINED_FUNCTION_5_28(v73);
  sub_237C08F8C();
  OUTLINED_FUNCTION_6_27();
  OUTLINED_FUNCTION_10_20();
  sub_237C08F9C();
  v121 = v142;
  v75 = v128;
  v76 = *(v128 + 20);
  v77 = v127;
  sub_237C05BEC();
  *v77 = v125;
  sub_2379E8EE0(0, &qword_27DE9AD70, 0x277D86200);
  v78 = sub_237C08D0C();
  v79 = *(v75 + 24);
  v108[1] = v78;
  *(v77 + v79) = v78;
  v80 = (v77 + *(v75 + 28));
  *v80 = 0x73656C6946;
  v80[1] = 0xE500000000000000;
  v81 = v130;
  sub_237C05BEC();
  (v131)[5](v77 + v76, v81, v132);
  sub_237BABFB8();
  sub_237BAC25C(0);
  v120 = swift_allocObject();
  *(v120 + 16) = 0;
  v82 = swift_allocObject();
  v83 = 0;
  *(v82 + 16) = 0;
  v108[0] = (v82 + 16);
  v119 = v82;
  *(v82 + 24) = v32;
  v84 = v123;
  v122 = *(v123 + 16);
  v117 = v126 + 16;
  v128 = v129 & 0xC000000000000001;
  v109 = v129 + 32;
  v112 = (v126 + 32);
  v111 = v133 + 7;
  v110 = v141;
  while (1)
  {
    if (v122 == v83)
    {

      v100 = sub_237A254D8(v129);
      if (v100)
      {
        v101 = v100;
        if (v100 < 1)
        {
          goto LABEL_61;
        }

        for (j = 0; j != v101; ++j)
        {
          if (v128)
          {
            v103 = MEMORY[0x2383DCAF0](j, v129);
          }

          else
          {
            v103 = *(v129 + 8 * j + 32);
          }

          v104 = v103;
          [v103 waitUntilAllOperationsAreFinished];
        }
      }

      sub_237C08C1C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD78, &qword_237C0E8B0);
      v105 = swift_allocObject();
      *(v105 + 16) = xmmword_237C0B660;
      v106 = MEMORY[0x277D83C10];
      *(v105 + 56) = v74;
      *(v105 + 64) = v106;
      *(v105 + 32) = 3;
      sub_237C0826C("event: %lu", v108[0]);

      v107 = v108[0];
      os_unfair_lock_lock(v108[0]);

      os_unfair_lock_unlock(v107);

      sub_237A995C4(v127, type metadata accessor for _TablePrinter);

      return;
    }

    if (v83 >= *(v84 + 16))
    {
      break;
    }

    v85 = *(v126 + 80);
    v86 = *(v118 + 48);
    (*(v126 + 16))(&v136[v86], v84 + ((v85 + 32) & ~v85) + *(v126 + 72) * v83, v137);
    v87 = v83 & 7;
    v132 = v87;
    v133 = v83;
    if (v128)
    {
      v88 = MEMORY[0x2383DCAF0](v87);
    }

    else
    {
      if (v87 >= *(v129 + 16))
      {
        goto LABEL_60;
      }

      v88 = *(v109 + 8 * v87);
    }

    v131 = v88;
    sub_237A991BC(v127, v134);
    v130 = *v112;
    v89 = v137;
    (v130)(v135, &v136[v86], v137);
    v90 = (*(v115 + 80) + 88) & ~*(v115 + 80);
    v91 = (v111 + v90) & 0xFFFFFFFFFFFFFFF8;
    v92 = (v91 + 15) & 0xFFFFFFFFFFFFFFF8;
    v93 = (v85 + v92 + 8) & ~v85;
    v94 = swift_allocObject();
    *(v94 + 16) = v22;
    *(v94 + 24) = v21;
    v95 = v125;
    *(v94 + 32) = v114;
    *(v94 + 40) = v95;
    *(v94 + 48) = v113;
    *(v94 + 56) = v124;
    v96 = v120;
    *(v94 + 64) = v119;
    *(v94 + 72) = v96;
    *(v94 + 80) = v138;
    sub_237A993D0(v134, v94 + v90);
    *(v94 + v91) = v121;
    *(v94 + v92) = v132;
    (v130)(v94 + v93, v135, v89);
    v141[2] = sub_237A99434;
    v141[3] = v94;
    aBlock = MEMORY[0x277D85DD0];
    v140 = 1107296256;
    v141[0] = sub_237A98884;
    v141[1] = &block_descriptor_5;
    v97 = _Block_copy(&aBlock);

    v98 = v138;

    v99 = v131;
    [v131 addOperationWithBlock_];
    _Block_release(v97);

    v83 = v133 + 1;
    v74 = MEMORY[0x277D83B88];
    v84 = v123;
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
}