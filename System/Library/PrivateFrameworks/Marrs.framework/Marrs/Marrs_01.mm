uint64_t sub_2227BAD64()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01B7A0, &qword_222832118);
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v1);
  v3 = v70 - v2;
  v78 = sub_222830064();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v9 = v8 - v7;
  v77 = sub_2228300E4();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1();
  v15 = v14 - v13;
  v16 = *(v0 + 32);
  if (sub_2227BD144(v16) == 0x6156797469746E65 && v17 == 0xEB0000000065756CLL)
  {
    goto LABEL_19;
  }

  v19 = sub_222830514();

  if (v19)
  {
    goto LABEL_20;
  }

  if (sub_2227BD144(v16) == 0xD00000000000001ALL && 0x8000000222832FD0 == v20)
  {
LABEL_19:
  }

  else
  {
    v22 = sub_222830514();

    if ((v22 & 1) == 0)
    {
      v71 = v3;
      v23 = sub_2227BB6EC(&unk_2835DE0A0);
      v70[2] = v0;
      v24 = sub_222830154();
      v25 = *(v24 + 16);
      if (v25)
      {
        v26 = v11 + 16;
        v27 = *(v11 + 16);
        v28 = (*(v11 + 80) + 32) & ~*(v11 + 80);
        v70[1] = v24;
        v29 = v24 + v28;
        v74 = *(v26 + 56);
        v75 = v27;
        v76 = v26;
        v72 = (v26 - 8);
        v73 = (v5 + 8);
        v30 = MEMORY[0x277D84F90];
        do
        {
          v31 = v77;
          v75(v15, v29, v77);
          sub_2228300D4();
          v32 = sub_222830054();
          v34 = v33;
          (*v73)(v9, v78);
          (*v72)(v15, v31);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2227BFB74();
            v30 = v37;
          }

          v35 = *(v30 + 16);
          if (v35 >= *(v30 + 24) >> 1)
          {
            sub_2227BFB74();
            v30 = v38;
          }

          *(v30 + 16) = v35 + 1;
          v36 = v30 + 16 * v35;
          *(v36 + 32) = v32;
          *(v36 + 40) = v34;
          v29 += v74;
          --v25;
        }

        while (v25);
      }

      else
      {

        v30 = MEMORY[0x277D84F90];
      }

      v50 = 0;
      v39 = *(v30 + 16);
      v78 = v30 + 32;
      v51 = MEMORY[0x277D84F90];
      v77 = v39;
LABEL_29:
      while (v50 != v39)
      {
        v52 = v50;
        if (v50 >= *(v30 + 16))
        {
          __break(1u);
          goto LABEL_49;
        }

        ++v50;
        if (*(v23 + 16))
        {
          v53 = (v78 + 16 * v52);
          v55 = *v53;
          v54 = v53[1];
          sub_222830534();

          sub_2228302C4();
          v56 = sub_222830544();
          v57 = ~(-1 << *(v23 + 32));
          do
          {
            v58 = v56 & v57;
            if (((*(v23 + 56 + (((v56 & v57) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v56 & v57)) & 1) == 0)
            {

              goto LABEL_29;
            }

            v59 = (*(v23 + 48) + 16 * v58);
            if (*v59 == v55 && v59[1] == v54)
            {
              break;
            }

            v61 = sub_222830514();
            v56 = v58 + 1;
          }

          while ((v61 & 1) == 0);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v80 = v51;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_2227C07E8(0, *(v51 + 16) + 1, 1);
            v51 = v80;
          }

          v64 = *(v51 + 16);
          v63 = *(v51 + 24);
          if (v64 >= v63 >> 1)
          {
            sub_2227C07E8((v63 > 1), v64 + 1, 1);
            v51 = v80;
          }

          *(v51 + 16) = v64 + 1;
          v65 = v51 + 16 * v64;
          *(v65 + 32) = v55;
          *(v65 + 40) = v54;
          v39 = v77;
        }
      }

      v66 = *(v51 + 16);

      if (v66)
      {
        sub_2227BCB84();
        sub_22282FFC4();
        swift_allocObject();
        v67 = sub_22282FFB4();
        sub_22282FFA4();

        v68 = sub_22282FF44();
        v69 = v71;
        __swift_storeEnumTagSinglePayload(v71, 1, 1, v68);
        v39 = MEMORY[0x223DC1100](v67, v69);

        sub_2227BAC68(v69, &qword_27D01B7A0, &qword_222832118);
        goto LABEL_21;
      }

      return 0;
    }
  }

LABEL_20:
  v39 = *v0;

LABEL_21:
  v40 = qword_27D01B728;

  if (v40 != -1)
  {
LABEL_49:
    OUTLINED_FUNCTION_1_1(&qword_27D01B728);
  }

  v41 = sub_222830274();
  __swift_project_value_buffer(v41, qword_27D01BC00);

  v42 = sub_222830254();
  v43 = sub_222830394();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v79[0] = v45;
    *v44 = 136315138;
    v46 = sub_22282FF04();
    v48 = sub_2227C0238(v46, v47, v79);

    *(v44 + 4) = v48;
    _os_log_impl(&dword_2227A9000, v42, v43, "Generating span for graph: %s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v45);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_4_1();
  }

  else
  {
  }

  return v39;
}

uint64_t sub_2227BB42C(unsigned __int8 a1, char a2)
{
  v2 = 0xEB0000000065756CLL;
  v3 = 0x6156797469746E65;
  v4 = a1;
  v5 = 0x6156797469746E65;
  v6 = 0xEB0000000065756CLL;
  switch(v4)
  {
    case 1:
      break;
    case 2:
      v5 = 0x646E756F72727573;
      v6 = 0xEF74786554676E69;
      break;
    case 3:
      v6 = 0x8000000222833010;
      v5 = 0xD00000000000001CLL;
      break;
    case 4:
      v6 = 0xE700000000000000;
      v5 = 0x6E776F6E6B6E75;
      break;
    default:
      v5 = 0xD00000000000001ALL;
      v6 = 0x8000000222832FD0;
      break;
  }

  switch(a2)
  {
    case 1:
      break;
    case 2:
      v3 = 0x646E756F72727573;
      v2 = 0xEF74786554676E69;
      break;
    case 3:
      v2 = 0x8000000222833010;
      v3 = 0xD00000000000001CLL;
      break;
    case 4:
      v2 = 0xE700000000000000;
      v3 = 0x6E776F6E6B6E75;
      break;
    default:
      v3 = 0xD00000000000001ALL;
      v2 = 0x8000000222832FD0;
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_222830514();
  }

  return v8 & 1;
}

uint64_t sub_2227BB5D0(unsigned __int8 a1, char a2)
{
  v2 = 0xED0000797469746ELL;
  v3 = 0x45746E65696C6173;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x69446D6574737973;
    }

    else
    {
      v5 = 0x6E776F6E6B6E75;
    }

    if (v4 == 1)
    {
      v6 = 0xEF746341676F6C61;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  else
  {
    v5 = 0x45746E65696C6173;
    v6 = 0xED0000797469746ELL;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x69446D6574737973;
    }

    else
    {
      v3 = 0x6E776F6E6B6E75;
    }

    if (a2 == 1)
    {
      v2 = 0xEF746341676F6C61;
    }

    else
    {
      v2 = 0xE700000000000000;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_222830514();
  }

  return v8 & 1;
}

uint64_t sub_2227BB6EC(uint64_t a1)
{
  result = MEMORY[0x223DC1540](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    sub_2227BBFBC(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

unsigned __int8 *sub_2227BB7AC(uint64_t a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01B740, &qword_2228320A0);
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v4);
  v6 = &v55 - v5;
  v7 = sub_22282FEF4();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1();
  v61 = v12 - v11;
  v13 = sub_22282FE94();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_1();
  v19 = v18 - v17;
  v20 = sub_2227BAD64();
  if (!v20)
  {
    return 0;
  }

  v21 = v20;
  v60 = v9;
  v22 = [objc_allocWithZone(MEMORY[0x277D5DE38]) init];
  v23 = v22;
  if (!v22)
  {

    return v23;
  }

  [v22 setInternalSpanData_];
  v24 = sub_2227BCC90();
  if ((v24 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (HIDWORD(v24))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v26 = v25;
  [v23 setStartTokenIndex_];
  if ((v26 & 0x8000000000000000) != 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (!HIDWORD(v26))
  {
    v55 = v7;
    v57 = a1;
    v59 = v21;
    [v23 setEndTokenIndex_];
    v27 = sub_2227BCB84();
    sub_2227BC8BC(v27, v28, v23, &selRef_setInput_);
    v29 = sub_2227BCB84();
    sub_2227BC8BC(v29, v30, v23, &selRef_setSemanticValue_);
    [v23 addMatcherNames_];
    v31 = sub_2227BBE24();
    v56 = v23;
    sub_2227BC8BC(v31, v32, v23, &selRef_setLabel_);
    v33 = *MEMORY[0x277D5E4A8];
    v34 = *(v15 + 104);
    v34(v19, v33, v13);
    sub_2227B8F74(v19);
    v36 = v35;
    (*(v15 + 8))(v19, v13);
    v58 = v2;
    v34(v6, v33, v13);
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v13);
    v21 = v61;
    sub_22282FEC4();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = v60;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_8;
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  sub_2227BFAB4();
  v36 = v53;
LABEL_8:
  v38 = *(v36 + 16);
  if (v38 >= *(v36 + 24) >> 1)
  {
    sub_2227BFAB4();
    v36 = v54;
  }

  *(v36 + 16) = v38 + 1;
  (*(v23 + 4))(v36 + ((v23[80] + 32) & ~v23[80]) + *(v23 + 9) * v38, v21, v55);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01B788, &qword_222832100);
  sub_22282FF74();
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_222832090;
  v40 = sub_2227BC9E0();
  sub_2227BD970(v40, v41);
  sub_2227B979C(v36, v39);

  v42 = sub_2227B9758(v57);
  if (!v42)
  {

    return 0;
  }

  v43 = v42;
  v23 = v56;
  [v56 setUsoGraph_];
  if (qword_27D01B728 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_27D01B728);
  }

  v44 = sub_222830274();
  __swift_project_value_buffer(v44, qword_27D01BC00);

  v45 = sub_222830254();
  v46 = sub_222830394();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v62 = v48;
    *v47 = 136315138;
    v49 = sub_22282FF04();
    v51 = sub_2227C0238(v49, v50, &v62);

    *(v47 + 4) = v51;
    _os_log_impl(&dword_2227A9000, v45, v46, "Returning span with identifiers: %s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v48);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_4_1();
  }

  else
  {
  }

  return v23;
}

uint64_t sub_2227BBE24()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01B790, &qword_222832108);
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v0);
  v2 = &v14 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01B798, &qword_222832110);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v6);
  v8 = &v14 - v7;
  v9 = sub_222830164();
  sub_2227C1ECC(v9, v2);

  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_2227BAC68(v2, &qword_27D01B790, &qword_222832108);
    return 0;
  }

  (*(v5 + 32))(v8, v2, v3);
  v10 = sub_22282FE54();
  v12 = v11;
  (*(v5 + 8))(v8, v3);
  if (!v12)
  {
    return 0;
  }

  return v10;
}

BOOL sub_2227BBFBC(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v7 = *v3;
  sub_222830534();
  sub_2228302C4();
  v8 = sub_222830544();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (sub_222830514() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;

      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;

  sub_2227BC364(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

uint64_t sub_2227BC108(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01B7A8, &qword_222832120);
  result = sub_222830464();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_2227BC4CC(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_222830534();
    sub_2228302C4();
    result = sub_222830544();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_2227BC364(unint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_2227BC108(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_2227BC688(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_222830534();
      sub_2228302C4();
      result = sub_222830544();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (sub_222830514() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_2227BC530();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_222830524();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t sub_2227BC4CC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_2228320F0;
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

void *sub_2227BC530()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01B7A8, &qword_222832120);
  v2 = *v0;
  v3 = sub_222830454();
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
    v10 = *(v2 + 56);
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
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_2227BC688(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01B7A8, &qword_222832120);
  result = sub_222830464();
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
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        sub_222830534();

        sub_2228302C4();
        result = sub_222830544();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
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

void sub_2227BC8BC(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_222830294();

  [a3 *a4];
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t OUTLINED_FUNCTION_1_1(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_4_1()
{

  JUMPOUT(0x223DC2B60);
}

uint64_t sub_2227BC9E0()
{
  sub_2227C0DBC(*(v0 + 8));
  if (v1)
  {

    sub_2228302D4();
    v8 = sub_2228302F4();

    sub_2228302D4();

    sub_2228302F4();
  }

  else
  {
    if (qword_27D01B728 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_27D01B728);
    }

    v2 = sub_222830274();
    __swift_project_value_buffer(v2, qword_27D01BC00);
    v3 = sub_222830254();
    v4 = sub_2228303A4();
    if (OUTLINED_FUNCTION_3_2(v4))
    {
      v5 = OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_4_2(v5);
      OUTLINED_FUNCTION_1_2(&dword_2227A9000, v6, v7, "Could not extract utterance from tokenChain, unable to generate UTF16 indices");
      OUTLINED_FUNCTION_2_1();
    }

    return 0;
  }

  return v8;
}

uint64_t sub_2227BCB84()
{
  sub_2227C0DBC(*(v0 + 8));
  if (v1)
  {
    v2 = sub_222830304();
    v4 = v3;
    v6 = v5;
    v8 = v7;

    v9 = MEMORY[0x223DC1480](v2, v4, v6, v8);
  }

  else
  {
    if (qword_27D01B728 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_27D01B728);
    }

    v10 = sub_222830274();
    __swift_project_value_buffer(v10, qword_27D01BC00);
    v11 = sub_222830254();
    v12 = sub_2228303A4();
    if (OUTLINED_FUNCTION_3_2(v12))
    {
      v13 = OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_4_2(v13);
      OUTLINED_FUNCTION_1_2(&dword_2227A9000, v14, v15, "Could not extract utterance from tokenChain, unable to generate matches");
      OUTLINED_FUNCTION_2_1();
    }

    return 0;
  }

  return v9;
}

unint64_t sub_2227BCC90()
{
  sub_2227BC9E0();
  v1 = [*(v0 + 8) tokens];
  if (v1)
  {
    v2 = v1;
    sub_2227BD2A4();
    sub_222830334();
  }

  if (qword_27D01B728 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_27D01B728);
  }

  v3 = sub_222830274();
  __swift_project_value_buffer(v3, qword_27D01BC00);
  v4 = sub_222830254();
  v5 = sub_2228303A4();
  if (OUTLINED_FUNCTION_3_2(v5))
  {
    v6 = OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_4_2(v6);
    OUTLINED_FUNCTION_1_2(&dword_2227A9000, v7, v8, "Could not extract tokens from tokenChain, unable to generate token indices");
    OUTLINED_FUNCTION_2_1();
  }

  return 0;
}

unint64_t sub_2227BD0F8(uint64_t a1, uint64_t a2)
{
  v2 = sub_2228304F4();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_2227BD144(char a1)
{
  result = 0x6156797469746E65;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x646E756F72727573;
      break;
    case 3:
      result = 0xD00000000000001CLL;
      break;
    case 4:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      result = 0xD00000000000001ALL;
      break;
  }

  return result;
}

unint64_t sub_2227BD224@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2227BD0F8(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_2227BD254@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2227BD144(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_2227BD280(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_2227BD2A4()
{
  result = qword_27D01B7B0;
  if (!qword_27D01B7B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D01B7B0);
  }

  return result;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2227BD2FC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 34))
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

uint64_t sub_2227BD33C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 34) = 1;
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

    *(result + 34) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MatchSource(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for MatchSource(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2227BD51C()
{
  result = qword_27D01B7B8;
  if (!qword_27D01B7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01B7B8);
  }

  return result;
}

void OUTLINED_FUNCTION_1_2(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

void OUTLINED_FUNCTION_2_1()
{

  JUMPOUT(0x223DC2B60);
}

BOOL OUTLINED_FUNCTION_3_2(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_5_0()
{

  return swift_slowAlloc();
}

uint64_t sub_2227BD5EC()
{
  v0 = sub_222830274();
  __swift_allocate_value_buffer(v0, qword_27D01BC00);
  __swift_project_value_buffer(v0, qword_27D01BC00);
  return sub_222830264();
}

uint64_t sub_2227BD66C()
{
  v0 = sub_222830274();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2228301F4();
  __swift_allocate_value_buffer(v4, qword_27D01BC18);
  __swift_project_value_buffer(v4, qword_27D01BC18);
  if (qword_27D01B728 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_27D01BC00);
  (*(v1 + 16))(v3, v5, v0);
  return sub_2228301D4();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

Swift::String __swiftcall SampleClass.getHelloWorld()()
{
  v0 = 0x6F57206F6C6C6548;
  v1 = 0xEC00000021646C72;
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

id SampleClass.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SampleClass.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SampleClass();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SampleClass.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SampleClass();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2227BD970(uint64_t a1, uint64_t a2)
{
  v4 = sub_22282FF24();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 0xFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if ((a2 | a1) < 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (a2 <= 0xFFFFFFFFLL)
  {
    sub_22282FF14();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01B7C0, &qword_222832220);
    v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_222832090;
    (*(v5 + 16))(v10 + v9, v8, v4);
    sub_22282FF64();
    return (*(v5 + 8))(v8, v4);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_2227BDAF8(uint64_t a1)
{
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01B818, &qword_222832270);
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01B748, &qword_2228320A8);
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v21 - v10;
  v12 = *(a1 + 16);
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v22 = MEMORY[0x277D84F90];
    sub_2227C07A8(0, v12, 0);
    v13 = v22;
    OUTLINED_FUNCTION_3();
    v15 = a1 + v14;
    v16 = *(v3 + 72);
    do
    {
      sub_2227BAB74(v15, v6, &qword_27D01B818, &qword_222832270);
      swift_dynamicCast();
      v22 = v13;
      v18 = *(v13 + 16);
      v17 = *(v13 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_2227C07A8((v17 > 1), v18 + 1, 1);
        v13 = v22;
      }

      *(v13 + 16) = v18 + 1;
      OUTLINED_FUNCTION_3();
      sub_2227C0F60(v11, v13 + v19 + *(v8 + 72) * v18);
      v15 += v16;
      --v12;
    }

    while (v12);
  }

  return v13;
}

char *sub_2227BDD00(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_2228304E4();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v10 = MEMORY[0x277D84F90];
  result = sub_2227C0808(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v10;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x223DC1650](v5, a1);
      }

      else
      {
        v6 = *(a1 + 8 * v5 + 32);
      }

      sub_2227C1028(0, &qword_27D01B7F8, 0x277D5DE38);
      swift_dynamicCast();
      v10 = v3;
      v8 = *(v3 + 16);
      v7 = *(v3 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_2227C0808((v7 > 1), v8 + 1, 1);
        v3 = v10;
      }

      ++v5;
      *(v3 + 16) = v8 + 1;
      sub_2227C0F50(&v9, (v3 + 32 * v8 + 32));
    }

    while (v2 != v5);
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_2227BDE68(uint64_t a1, unint64_t *a2, void *a3)
{
  v5 = sub_22282FDF4();
  OUTLINED_FUNCTION_0();
  v14 = v6;
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x277D84F90];
  v20 = MEMORY[0x277D84F90];
  sub_2228303D4();
  sub_2227C0FD0();
  while (1)
  {
    sub_2228303F4();
    if (!v19)
    {
      break;
    }

    sub_2227C0F50(&v18, v17);
    sub_2227C0EF4(v17, v15);
    sub_2227C1028(0, a2, a3);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v16 = 0;
    }

    v11 = __swift_destroy_boxed_opaque_existential_0(v17);
    if (v16)
    {
      MEMORY[0x223DC14E0](v11);
      if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_222830354();
      }

      sub_222830364();
      v10 = v20;
    }
  }

  (*(v14 + 8))(v9, v5);
  return v10;
}

uint64_t sub_2227BE02C(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_2228304E4();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

void ContextualSpanMatcher.getSpans(request:)(SEL *a1)
{
  v184 = sub_222830204();
  OUTLINED_FUNCTION_0();
  v178 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_3();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_1_3();
  MEMORY[0x28223BE20](v5);
  v7 = &v175 - v6;
  v200 = sub_2228301C4();
  OUTLINED_FUNCTION_0();
  v195 = v8;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v175 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_1_3();
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v175 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v175 - v18;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_1_3();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_1_3();
  MEMORY[0x28223BE20](v21);
  v181 = &v175 - v22;
  v23 = sub_2227C0E20(a1);
  if (v24 >> 60 != 15)
  {
    v25 = v23;
    v26 = v24;
    v204 = v7;
    v27 = sub_22282FE04();
    v29 = v28;
    sub_2227C0E84(v25, v26);
    if (qword_27D01B728 != -1)
    {
      goto LABEL_106;
    }

    while (1)
    {
      v30 = sub_222830274();
      __swift_project_value_buffer(v30, qword_27D01BC00);
      OUTLINED_FUNCTION_10();

      v185 = v25;
      v31 = sub_222830254();
      v32 = sub_222830384();

      v33 = os_log_type_enabled(v31, v32);
      v179 = v19;
      v177 = v12;
      if (v33)
      {
        v34 = OUTLINED_FUNCTION_23();
        v35 = swift_slowAlloc();
        *&v226 = v35;
        *v34 = 136315138;
        *(v34 + 4) = sub_2227C0238(v27, v29, &v226);
        _os_log_impl(&dword_2227A9000, v31, v32, "Base64 request: \n %s", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v35);
        OUTLINED_FUNCTION_4_1();
        OUTLINED_FUNCTION_4_1();
      }

      v37 = OUTLINED_FUNCTION_13(v36);
      v38 = sub_222830394();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = OUTLINED_FUNCTION_5_0();
        *v39 = 0;
        _os_log_impl(&dword_2227A9000, v37, v38, "Base64 request by line", v39, 2u);
        OUTLINED_FUNCTION_4_1();
      }

      *&v226 = v27;
      *(&v226 + 1) = v29;
      sub_2227BAC14();
      sub_222830404();

      v40 = [objc_allocWithZone(MEMORY[0x277D5DDF0]) init];
      if (!v40)
      {
        v52 = OUTLINED_FUNCTION_13(0);
        v53 = sub_222830384();
        if (OUTLINED_FUNCTION_3_2(v53))
        {
          v54 = OUTLINED_FUNCTION_5_0();
          OUTLINED_FUNCTION_4_2(v54);
          OUTLINED_FUNCTION_1_2(&dword_2227A9000, v55, v56, "Unable to initialize response, returning nil");
          OUTLINED_FUNCTION_4_1();
        }

        return;
      }

      v180 = v40;
      v41 = [(SEL *)a1 tokenChain];
      if (!v41)
      {
        v57 = OUTLINED_FUNCTION_13(0);
        v58 = sub_222830384();
        if (OUTLINED_FUNCTION_3_2(v58))
        {
          v59 = OUTLINED_FUNCTION_5_0();
          OUTLINED_FUNCTION_4_2(v59);
          OUTLINED_FUNCTION_1_2(&dword_2227A9000, v60, v61, "Could not extract tokenChain from request, returning nil");
          OUTLINED_FUNCTION_4_1();
        }

        return;
      }

      v42 = v41;
      v43 = OUTLINED_FUNCTION_13(v42);
      v44 = sub_222830394();
      v45 = os_log_type_enabled(v43, v44);
      v190 = v42;
      if (v45)
      {
        v46 = OUTLINED_FUNCTION_23();
        v47 = swift_slowAlloc();
        *&v226 = v47;
        *v46 = 136315138;
        v48 = sub_2227C0DBC(v42);
        v50 = v49;

        if (!v50)
        {
          goto LABEL_108;
        }

        v51 = sub_2227C0238(v48, v50, &v226);

        *(v46 + 4) = v51;
        _os_log_impl(&dword_2227A9000, v43, v44, "Utterance: %s", v46, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v47);
        OUTLINED_FUNCTION_4_1();
        OUTLINED_FUNCTION_4_1();
      }

      else
      {
      }

      v12 = v204;
      sub_22282FF54();
      sub_22282FF94();
      OUTLINED_FUNCTION_18();
      swift_allocObject();
      OUTLINED_FUNCTION_10();
      v211[0] = sub_22282FF84();
      if (qword_27D01B730 != -1)
      {
        swift_once();
      }

      v62 = sub_2228301F4();
      v63 = __swift_project_value_buffer(v62, qword_27D01BC18);
      sub_2228301E4();
      v19 = v181;
      sub_2228301A4();
      v199 = v63;
      v64 = sub_2228301E4();
      v65 = sub_2228303C4();
      if (sub_2228303E4())
      {
        v66 = OUTLINED_FUNCTION_5_0();
        *v66 = 0;
        v67 = sub_2228301B4();
        _os_signpost_emit_with_name_impl(&dword_2227A9000, v64, v65, v67, "CSMParseE2E", "", v66, 2u);
        OUTLINED_FUNCTION_4_1();
      }

      v68 = *(v195 + 16);
      v189 = v195 + 16;
      v188 = v68;
      v68(v194, v19, v200);
      sub_222830234();
      OUTLINED_FUNCTION_18();
      v187 = v69;
      swift_allocObject();
      OUTLINED_FUNCTION_10();
      v176 = sub_222830224();
      v70 = [(SEL *)a1 nlContext];
      if (v70)
      {
        v71 = v70;
        v72 = [v70 systemDialogActs];

        v27 = v203;
        if (v72)
        {
          a1 = 0;
          v192 = sub_2227BDE68(v72, &qword_27D01B830, 0x277D5DDC8);
          v193 = 0;
        }

        else
        {
          v193 = 0;
          v192 = MEMORY[0x277D84F90];
        }
      }

      else
      {
        v193 = 0;
        v192 = MEMORY[0x277D84F90];
        v27 = v203;
      }

      v73 = sub_2227BE02C(v192);
      v198 = v16;
      v29 = v211[0];
      v197 = v73;
      if (v73)
      {
        v25 = 0;
        v196 = (v192 & 0xC000000000000001);
        v183 = v192 & 0xFFFFFFFFFFFFFF8;
        v182 = v192 + 32;
        v209 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v196)
          {
            v74 = MEMORY[0x223DC1650](v25, v192);
          }

          else
          {
            if (v25 >= *(v183 + 16))
            {
              goto LABEL_104;
            }

            v74 = *(v182 + 8 * v25);
          }

          if (__OFADD__(v25++, 1))
          {
            break;
          }

          v202 = v25;
          v201 = v74;
          v76 = [v74 gaveOptions];
          if (v76)
          {
            a1 = v76;
            v25 = [(SEL *)v76 choices];

            if (v25)
            {
              a1 = v193;
              v77 = sub_2227BDE68(v25, &qword_27D01B828, 0x277D5DDD8);

              v78 = sub_2227BE02C(v77);
              v193 = a1;
              if (v78)
              {
                v79 = v78;
                if (v78 < 1)
                {
                  goto LABEL_105;
                }

                v80 = 0;
                v210 = v77 & 0xC000000000000001;
                a1 = off_2784B5000;
                do
                {
                  if (v210)
                  {
                    v81 = MEMORY[0x223DC1650](v80, v77);
                  }

                  else
                  {
                    v81 = *(v77 + 8 * v80 + 32);
                  }

                  v82 = v81;

                  v83 = [v82 a1[259]];
                  if (v83 && (v84 = v83, v19 = [v83 task], v84, v19))
                  {
                    sub_2227C27B0(v19, v29, MEMORY[0x277D84F90], 1, 0, 1, &unk_2835DE168, &v214);
                    v85 = v214;
                    v19 = v215;
                    v86 = v216;
                    v208 = v217;
                    v207 = v218;
                    LODWORD(v206) = v219;
                    sub_2227BAB74(&v214, &v226, &qword_27D01B7D0, &qword_222832230);

                    if (v214)
                    {
                      v205 = v85;
                      v88 = v217;
                      v87 = v218;
                      v90 = v215;
                      v89 = v216;

                      v220 = v90;
                      sub_2227BAC68(&v220, &qword_27D01B778, &qword_2228320D8);
                      v221 = v89;
                      sub_2227BAC68(&v221, &qword_27D01B770, &qword_2228320D0);
                      v222 = v88;
                      sub_2227BAC68(&v222, &qword_27D01B780, &qword_2228320E0);
                      v223[0] = v87;
                      sub_2227BAC68(v223, &qword_27D01B770, &qword_2228320D0);
                      v91 = v209;
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v91 = sub_2227BFD60(0, *(v91 + 2) + 1, 1, v91);
                      }

                      v209 = v91;
                      v93 = *(v91 + 2);
                      v92 = *(v91 + 3);
                      v29 = v211[0];
                      v27 = v203;
                      if (v93 >= v92 >> 1)
                      {
                        v209 = sub_2227BFD60((v92 > 1), v93 + 1, 1, v209);
                      }

                      v94 = v209;
                      *(v209 + 2) = v93 + 1;
                      v95 = &v94[48 * v93];
                      *(v95 + 4) = v205;
                      *(v95 + 5) = v19;
                      v96 = v208;
                      *(v95 + 6) = v86;
                      *(v95 + 7) = v96;
                      *(v95 + 8) = v207;
                      v95[72] = v206;
                      v12 = v204;
                      a1 = off_2784B5000;
                    }

                    else
                    {

                      v12 = v204;
                    }
                  }

                  else
                  {
                  }

                  ++v80;
                }

                while (v79 != v80);
              }

              v16 = v198;
            }
          }

          v25 = v202;
          if (v202 == v197)
          {
            goto LABEL_59;
          }
        }

        __break(1u);
      }

      else
      {
        v209 = MEMORY[0x277D84F90];
LABEL_59:

        if (!*(v209 + 2))
        {

          v102 = OUTLINED_FUNCTION_13(v101);
          v103 = sub_222830384();
          if (OUTLINED_FUNCTION_3_2(v103))
          {
            v104 = OUTLINED_FUNCTION_5_0();
            OUTLINED_FUNCTION_4_2(v104);
            OUTLINED_FUNCTION_1_2(&dword_2227A9000, v105, v106, "Could not obtain Entities from request, returning nil");
            OUTLINED_FUNCTION_4_1();

            OUTLINED_FUNCTION_17();

            v107 = v211;
          }

          else
          {

            OUTLINED_FUNCTION_17();

            v107 = &v219;
          }

          (*(v195 + 8))(v181, v200);
          return;
        }

        v97 = OUTLINED_FUNCTION_14(v209);
        v25 = v176;
        sub_222830214();
        sub_2228303B4();
        if (OUTLINED_FUNCTION_24())
        {
          v98 = v176;

          sub_222830244();

          OUTLINED_FUNCTION_21();
          OUTLINED_FUNCTION_9();
          if (v99() == *MEMORY[0x277D85B00])
          {
            v100 = "[Error] Interval already ended";
          }

          else
          {
            (*(v27 + 8))(v12, v98);
            v100 = "";
          }

          v108 = OUTLINED_FUNCTION_5_0();
          *v108 = 0;
          v25 = v203;
          v109 = sub_2228301B4();
          v110 = v100;
          v27 = v25;
          _os_signpost_emit_with_name_impl(&dword_2227A9000, v97, a1, v109, "CSMParseE2E", v110, v108, 2u);
          OUTLINED_FUNCTION_4_1();
        }

        v111 = *(v195 + 8);
        v195 += 8;
        v204 = v111;
        v112 = (v111)(v27, v200);
        OUTLINED_FUNCTION_14(v112);
        v113 = v179;
        sub_2228301A4();
        v114 = v209;

        v115 = sub_2228301E4();
        sub_2228303C4();
        if (OUTLINED_FUNCTION_24())
        {
          v27 = OUTLINED_FUNCTION_23();
          *v27 = 134217984;
          *(v27 + 4) = *(v114 + 2);
          v25 = v113;
          v116 = sub_2228301B4();
          _os_signpost_emit_with_name_impl(&dword_2227A9000, v115, a1, v116, "CSMMatchE2E", "Entity count: %ld", v27, 0xCu);
          OUTLINED_FUNCTION_4_1();
        }

        v29 = v194;
        OUTLINED_FUNCTION_6_0();
        v117();
        OUTLINED_FUNCTION_18();
        swift_allocObject();
        OUTLINED_FUNCTION_10();
        v192 = sub_222830224();

        v213 = MEMORY[0x277D84F90];
        v118 = v114;
        v203 = *(v114 + 2);
        if (!v203)
        {

          v19 = MEMORY[0x277D84F90];
          v142 = v191;
LABEL_91:
          v150 = OUTLINED_FUNCTION_14(v149);
          v151 = v177;
          v152 = v192;
          sub_222830214();
          sub_2228303B4();
          if (OUTLINED_FUNCTION_24())
          {

            sub_222830244();

            OUTLINED_FUNCTION_21();
            OUTLINED_FUNCTION_9();
            if (v153() == *MEMORY[0x277D85B00])
            {
              v154 = "[Error] Interval already ended";
            }

            else
            {
              (*(v27 + 8))(v142, v152);
              v154 = "";
            }

            v155 = OUTLINED_FUNCTION_5_0();
            *v155 = 0;
            v156 = sub_2228301B4();
            _os_signpost_emit_with_name_impl(&dword_2227A9000, v150, a1, v156, "CSMMatchE2E", v154, v155, 2u);
            OUTLINED_FUNCTION_4_1();
          }

          (v204)(v151, v200);

          v158 = OUTLINED_FUNCTION_13(v157);
          v159 = sub_222830384();
          if (os_log_type_enabled(v158, v159))
          {
            v160 = OUTLINED_FUNCTION_23();
            v161 = swift_slowAlloc();
            v212 = v161;
            *v160 = 136315138;
            v211[1] = sub_2227BE02C(v19);
            v162 = sub_222830504();
            v164 = sub_2227C0238(v162, v163, &v212);

            *(v160 + 4) = v164;

            _os_log_impl(&dword_2227A9000, v158, v159, "ContextualSpanMatcher: returning %s spans", v160, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v161);
            OUTLINED_FUNCTION_4_1();
            OUTLINED_FUNCTION_4_1();
          }

          else
          {
          }

          v165 = v181;
          sub_2227C1028(0, &qword_27D01B7C8, 0x277CBEB18);
          v166 = sub_2227BDD00(v19);

          v167 = sub_2227BF810(v166);
          [v180 setContextualSpans_];

          v169 = OUTLINED_FUNCTION_13(v168);
          v170 = sub_222830384();
          if (OUTLINED_FUNCTION_3_2(v170))
          {
            v171 = OUTLINED_FUNCTION_5_0();
            OUTLINED_FUNCTION_4_2(v171);
            OUTLINED_FUNCTION_1_2(&dword_2227A9000, v172, v173, "Returning ContextualSpanMatcher response from Swift");
            v165 = v181;
            OUTLINED_FUNCTION_4_1();
          }

          OUTLINED_FUNCTION_17();

          OUTLINED_FUNCTION_15();
          v174 = v204;
          (v204)();
          (v174)(v165, v169);
          return;
        }

        v119 = 0;
        v202 = v114 + 32;
        v201 = (v178 + 88);
        LODWORD(v197) = *MEMORY[0x277D85B00];
        v196 = (v178 + 8);
        v19 = MEMORY[0x277D84F90];
        while (v119 < *(v118 + 2))
        {
          v120 = &v202[48 * v119];
          v121 = *v120;
          v122 = *(v120 + 1);
          v124 = *(v120 + 2);
          v123 = *(v120 + 3);
          v125 = *(v120 + 4);
          LOBYTE(v120) = v120[40];
          *&v226 = v121;
          *(&v226 + 1) = v122;
          v227 = v124;
          v228 = v123;
          v229 = v125;
          v230 = v120;
          v207 = v123;

          v206 = v125;

          v210 = v121;

          v208 = v122;

          v205 = v124;

          OUTLINED_FUNCTION_14(v126);
          sub_2228301A4();
          v127 = sub_2228301E4();
          sub_2228303C4();
          if (OUTLINED_FUNCTION_24())
          {
            v128 = OUTLINED_FUNCTION_5_0();
            *v128 = 0;
            v129 = sub_2228301B4();
            _os_signpost_emit_with_name_impl(&dword_2227A9000, v127, v124, v129, "CSMMatchEntityCandidate", "", v128, 2u);
            OUTLINED_FUNCTION_4_1();
          }

          OUTLINED_FUNCTION_6_0();
          v130();
          OUTLINED_FUNCTION_18();
          swift_allocObject();
          OUTLINED_FUNCTION_10();
          v12 = sub_222830224();
          v131 = sub_2227BA298(&v226, v190);
          v132 = *(v131 + 16);
          if (v132)
          {
            v133 = v131 + 65;
            do
            {
              v134 = *(v133 - 25);
              v135 = *(v133 - 1);
              v223[1] = *(v133 - 33);
              v223[2] = v134;
              v224 = *(v133 - 17);
              v225 = v135;

              v136 = v134;
              v137 = OUTLINED_FUNCTION_17();
              v138 = sub_2227BB7AC(v137);
              if (v138)
              {
                v139 = v138;
                MEMORY[0x223DC14E0]();
                if (*((v213 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v213 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_222830354();
                }

                sub_222830364();

                v19 = v213;
              }

              else
              {
              }

              v133 += 40;
              --v132;
            }

            while (v132);
          }

          v29 = OUTLINED_FUNCTION_14(v140);
          sub_222830214();
          v27 = sub_2228303B4();
          v141 = sub_2228303E4();
          v142 = v191;
          if (v141)
          {

            v143 = v186;
            sub_222830244();

            OUTLINED_FUNCTION_9();
            v145 = "[Error] Interval already ended";
            if (v144() != v197)
            {
              (*v196)(v186, v143);
              v145 = "";
            }

            v146 = OUTLINED_FUNCTION_5_0();
            *v146 = 0;
            v147 = sub_2228301B4();
            _os_signpost_emit_with_name_impl(&dword_2227A9000, v29, v27, v147, "CSMMatchEntityCandidate", v145, v146, 2u);
            OUTLINED_FUNCTION_4_1();
          }

          ++v119;

          OUTLINED_FUNCTION_15();
          v25 = *(v148 - 256);
          a1 = v204;
          (v204)();
          v16 = v198;
          (a1)(v198, v29);
          v118 = v209;
          if (v119 == v203)
          {

            goto LABEL_91;
          }
        }
      }

      __break(1u);
LABEL_104:
      __break(1u);
LABEL_105:
      __break(1u);
LABEL_106:
      swift_once();
    }
  }

  __break(1u);
LABEL_108:
  __break(1u);
}

void sub_2227BF6B8(uint64_t a1, unint64_t a2)
{
  if (qword_27D01B728 != -1)
  {
    swift_once();
  }

  v4 = sub_222830274();
  __swift_project_value_buffer(v4, qword_27D01BC00);

  oslog = sub_222830254();
  v5 = sub_222830394();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_2227C0238(a1, a2, &v9);
    _os_log_impl(&dword_2227A9000, oslog, v5, "%s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x223DC2B60](v7, -1, -1);
    MEMORY[0x223DC2B60](v6, -1, -1);
  }
}

id sub_2227BF810(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v2 = sub_222830324();

  v3 = [v1 initWithArray_];

  return v3;
}

void sub_2227BF8E8()
{
  OUTLINED_FUNCTION_12();
  if (v3)
  {
    OUTLINED_FUNCTION_3_3();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_11();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_2();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01B810, &qword_222832268);
    v9 = swift_allocObject();
    v10 = _swift_stdlib_malloc_size(v9);
    *(v9 + 2) = v7;
    *(v9 + 3) = 2 * ((v10 - 32) / 24);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[24 * v7] <= v11)
    {
      memmove(v11, v12, 24 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_2227BF9E8()
{
  OUTLINED_FUNCTION_12();
  if (v3)
  {
    OUTLINED_FUNCTION_3_3();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_11();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_2();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 16);
  v8 = sub_2227BFE74(v7, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01B748, &qword_2228320A8);
  OUTLINED_FUNCTION_3();
  if (v1)
  {
    sub_2227C0078(v0 + v9, v7, v8 + v9);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_22();
  }
}

void sub_2227BFAB4()
{
  OUTLINED_FUNCTION_12();
  if (v3)
  {
    OUTLINED_FUNCTION_3_3();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_11();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_2();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 16);
  v8 = sub_2227BFF7C(v7, v4);
  sub_22282FEF4();
  OUTLINED_FUNCTION_3();
  if (v1)
  {
    sub_2227C0164(v0 + v9, v7, v8 + v9);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_22();
  }
}

void sub_2227BFB74()
{
  OUTLINED_FUNCTION_12();
  if (v3)
  {
    OUTLINED_FUNCTION_3_3();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_11();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_2();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01B7E0, &qword_222832240);
    v9 = swift_allocObject();
    v10 = _swift_stdlib_malloc_size(v9);
    *(v9 + 2) = v7;
    *(v9 + 3) = 2 * ((v10 - 32) / 16);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v7] <= v11)
    {
      memmove(v11, v12, 16 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_2227BFC64()
{
  OUTLINED_FUNCTION_12();
  if (v3)
  {
    OUTLINED_FUNCTION_3_3();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_11();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_2();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01B808, &qword_222832260);
    v9 = swift_allocObject();
    v10 = _swift_stdlib_malloc_size(v9);
    *(v9 + 2) = v7;
    *(v9 + 3) = 2 * ((v10 - 32) / 40);
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[40 * v7] <= v11)
    {
      memmove(v11, v12, 40 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

char *sub_2227BFD60(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01B7D8, &qword_222832238);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[48 * v8] <= v12)
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2227BFE74(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01B758, &qword_2228320B8);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01B748, &qword_2228320A8) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_2227BFF7C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01B7E8, &qword_222832248);
  v4 = *(sub_22282FEF4() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2227C0078(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01B748, &qword_2228320A8), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01B748, &qword_2228320A8);

    return MEMORY[0x2821FE828](a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return MEMORY[0x2821FE820](a3, a1, a2, result);
  }

  return result;
}

uint64_t sub_2227C0164(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_22282FEF4(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = sub_22282FEF4();

    return MEMORY[0x2821FE828](a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return MEMORY[0x2821FE820](a3, a1, a2, result);
  }

  return result;
}

unint64_t sub_2227C0238(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2227C02FC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_2227C0EF4(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2227C02FC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2227C03FC(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = sub_222830494();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_2227C03FC(uint64_t a1, unint64_t a2)
{
  v3 = sub_2227C0448(a1, a2);
  sub_2227C0560(&unk_2835DE078);
  return v3;
}

uint64_t sub_2227C0448(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_2228302E4())
  {
    result = sub_2227C0644(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_222830474();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_222830494();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2227C0560(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_2227C06B4(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2227C0644(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01B7F0, &qword_222832250);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_2227C06B4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01B7F0, &qword_222832250);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

void *sub_2227C07A8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2227C0828(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2227C07C8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2227C09F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2227C07E8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2227C0BA8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2227C0808(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2227C0CB0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2227C0828(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01B758, &qword_2228320B8);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01B748, &qword_2228320A8) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01B748, &qword_2228320A8) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_2227C0078(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_2227C09F4(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01B7E8, &qword_222832248);
  v10 = *(sub_22282FEF4() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_22282FEF4() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_2227C0164(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_2227C0BA8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01B7E0, &qword_222832240);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2227C0CB0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01B800, &qword_222832258);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_2227C0DBC(void *a1)
{
  v1 = [a1 stringValue];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2228302A4();

  return v3;
}

uint64_t sub_2227C0E20(void *a1)
{
  v1 = [a1 data];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_22282FE14();

  return v3;
}

uint64_t sub_2227C0E84(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2227C0E98(a1, a2);
  }

  return a1;
}

uint64_t sub_2227C0E98(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_2227C0EF4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_2227C0F50(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2227C0F60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01B748, &qword_2228320A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2227C0FD0()
{
  result = qword_27D01B820;
  if (!qword_27D01B820)
  {
    sub_22282FDF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01B820);
  }

  return result;
}

uint64_t sub_2227C1028(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_13(uint64_t a1)
{

  return sub_222830254();
}

uint64_t OUTLINED_FUNCTION_14(uint64_t a1)
{

  return sub_2228301E4();
}

uint64_t OUTLINED_FUNCTION_22()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_23()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_24()
{

  return sub_2228303E4();
}

uint64_t sub_2227C11B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_222830064();
  OUTLINED_FUNCTION_0();
  v88 = v4;
  v89 = v5;
  MEMORY[0x28223BE20](v4);
  v87 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01B748, &qword_2228320A8);
  OUTLINED_FUNCTION_0();
  v71 = v7;
  MEMORY[0x28223BE20](v8);
  v82 = &v70 - v9;
  v92 = sub_222830014();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_3();
  v81 = v13 - v14;
  MEMORY[0x28223BE20](v15);
  v91 = &v70 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01B838, &qword_222832278);
  OUTLINED_FUNCTION_1_4();
  MEMORY[0x28223BE20](v18);
  v70 = (&v70 - v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01B840, &qword_222832280);
  MEMORY[0x28223BE20](v20 - 8);
  OUTLINED_FUNCTION_2_3();
  v23 = v21 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = (&v70 - v25);
  v94 = sub_2228300E4();
  OUTLINED_FUNCTION_0();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_2_3();
  v32 = v30 - v31;
  v34 = MEMORY[0x28223BE20](v33);
  v77 = &v70 - v35;
  MEMORY[0x28223BE20](v34);
  v37 = &v70 - v36;
  sub_222830194();
  swift_allocObject();
  v38 = sub_222830184();
  v86 = v37;
  v93 = v38;
  result = sub_222830174();
  v40 = 0;
  v72 = a3;
  v41 = *(a3 + 16);
  v90 = (v28 + 32);
  v74 = v41 - 1;
  v75 = (v11 + 32);
  v84 = (v89 + 8);
  v73 = (v11 + 8);
  v85 = (v28 + 8);
  v79 = v23;
  v80 = v17;
  v78 = v26;
  v76 = v41;
  while (1)
  {
    if (v40 == v41)
    {
      v42 = 1;
      v43 = v41;
      goto LABEL_7;
    }

    if (v40 >= v41)
    {
      break;
    }

    v44 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      goto LABEL_14;
    }

    v45 = v72 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v40;
    v46 = *(v17 + 48);
    v47 = v70;
    *v70 = v40;
    sub_2227C1ADC(v45, v47 + v46, &qword_27D01B748, &qword_2228320A8);
    sub_2227C1868(v47, v23, &qword_27D01B838, &qword_222832278);
    v42 = 0;
    v43 = v44;
LABEL_7:
    v48 = v93;
    __swift_storeEnumTagSinglePayload(v23, v42, 1, v17);
    sub_2227C1868(v23, v26, &qword_27D01B840, &qword_222832280);
    if (__swift_getEnumTagSinglePayload(v26, 1, v17) == 1)
    {
      (*v85)(v86, v94);
      return v48;
    }

    v89 = v43;
    v49 = *v26;
    v50 = v26 + *(v17 + 48);
    v51 = v82;
    v52 = *(v83 + 48);
    v53 = *v75;
    v54 = v92;
    (*v75)(v82, v50, v92);
    v55 = *v90;
    v56 = &v50[v52];
    v57 = v94;
    (*v90)(&v51[v52], v56, v94);
    v53(v91, v51, v54);
    v58 = v77;
    v55(v77, &v51[v52], v57);
    if (v49 == v74)
    {
      sub_2228300A4();
      sub_222830134();

      v59 = v84;
    }

    else
    {
      v60 = v87;
      sub_2228300D4();
      sub_222830114();
      v59 = v84;
      (*v84)(v60, v88);
    }

    sub_222830084();
    sub_222830094();
    v61 = v87;
    v62 = v91;
    sub_22282FFE4();
    v63 = v81;
    v64 = v86;
    sub_2228300F4();
    (*v59)(v61, v88);
    v65 = *v73;
    v66 = v92;
    (*v73)(v63, v92);
    v67 = *v85;
    v68 = v58;
    v69 = v94;
    (*v85)(v68, v94);
    v65(v62, v66);
    v67(v64, v69);
    result = (v55)(v64, v32, v69);
    v23 = v79;
    v17 = v80;
    v26 = v78;
    v41 = v76;
    v40 = v89;
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_2227C1868(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_3_4(a1, a2, a3, a4);
  OUTLINED_FUNCTION_1_4();
  (*(v6 + 32))(v4, v5);
  return v4;
}

uint64_t sub_2227C18B8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = a3[1];
  v21 = a3[2];
  v22 = v5;
  v6 = a3[3];
  v19 = a3[4];
  v20 = v6;
  v7 = *(a3 + 1);
  v17 = *a3;
  v18[0] = v7;
  *(v18 + 9) = *(a3 + 25);

  sub_2227C1ADC(&v22, v16, &qword_27D01B778, &qword_2228320D8);
  sub_2227C1ADC(&v21, v16, &qword_27D01B770, &qword_2228320D0);
  sub_2227C1ADC(&v20, v16, &qword_27D01B780, &qword_2228320E0);
  sub_2227C1ADC(&v19, v16, &qword_27D01B770, &qword_2228320D0);
  v8 = *(sub_2227C1DB8() + 16);

  if (v8 == 1)
  {
    sub_2227B990C(a1, a2);
    v10 = v9;
  }

  else
  {
    if (qword_27D01B728 != -1)
    {
      swift_once();
    }

    v11 = sub_222830274();
    __swift_project_value_buffer(v11, qword_27D01BC00);
    v12 = sub_222830254();
    v13 = sub_222830384();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_2227A9000, v12, v13, "Cannot generate UsoGraph for alternativeMatchableString due to original UsoGraph having more than one string values. Returning nil", v14, 2u);
      MEMORY[0x223DC2B60](v14, -1, -1);
    }

    v10 = 0;
  }

  sub_2227C1B2C(&v21, &qword_27D01B770, &qword_2228320D0);
  sub_2227C1B2C(&v20, &qword_27D01B780, &qword_2228320E0);
  sub_2227C1B2C(&v19, &qword_27D01B770, &qword_2228320D0);
  return v10;
}

uint64_t sub_2227C1ADC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_3_4(a1, a2, a3, a4);
  OUTLINED_FUNCTION_1_4();
  (*(v6 + 16))(v4, v5);
  return v4;
}

uint64_t sub_2227C1B2C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_1_4();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_3_4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

NSString __swiftcall SampleClassObjC.getHelloWorld()()
{
  v0 = [objc_allocWithZone(type metadata accessor for SampleClass()) init];
  v1 = sub_222830294();

  return v1;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2227C1C80(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2227C1CC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
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

uint64_t sub_2227C1D20(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_2227C1D60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2227C1DB8()
{
  if (*(v0 + 8))
  {
    v1 = *(v0 + 8);
  }

  else
  {
    v1 = sub_2227B8898();
    *(v0 + 8) = v1;
  }

  return v1;
}

uint64_t sub_2227C1E10()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v1 = sub_2227C23F0(v0);
    *(v0 + 24) = v1;
  }

  return v1;
}

uint64_t sub_2227C1E5C(char a1)
{
  if (!a1)
  {
    return 0x45746E65696C6173;
  }

  if (a1 == 1)
  {
    return 0x69446D6574737973;
  }

  return 0x6E776F6E6B6E75;
}

uint64_t sub_2227C1ECC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01B798, &qword_222832110);
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

uint64_t sub_2227C1F80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01B818, &qword_222832270);
  v6 = v5;
  if (v4)
  {
    sub_2227C355C(a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), a2);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

uint64_t sub_2227C2030(uint64_t a1)
{
  v1 = a1;
  sub_222830534();
  v2 = sub_2227BD144(v1);
  OUTLINED_FUNCTION_2_4(v2, v3, v4);

  return sub_222830544();
}

uint64_t sub_2227C208C(uint64_t a1, char a2)
{
  sub_2228302C4();
}

uint64_t sub_2227C217C(uint64_t a1, unsigned __int8 a2)
{
  sub_2228302C4();
}

uint64_t sub_2227C2220(uint64_t a1, char a2)
{
  sub_222830534();
  sub_2228302C4();

  return sub_222830544();
}

uint64_t sub_2227C22D8(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  sub_222830534();
  v3 = sub_2227BD144(v2);
  OUTLINED_FUNCTION_2_4(v3, v4, v5);

  return sub_222830544();
}

unint64_t sub_2227C2324(uint64_t a1, uint64_t a2)
{
  v2 = sub_2228304F4();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_2227C2394@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2227C2324(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_2227C23C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2227C1E5C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2227C23F0(uint64_t a1)
{
  v2 = sub_22282FDE4();
  v3 = MEMORY[0x28223BE20](v2);
  v42 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v41 = &v36 - v6;
  MEMORY[0x28223BE20](v5);
  v46 = &v36 - v8;
  v43 = a1;
  v9 = *(a1 + 16);
  v40 = *(v9 + 16);
  if (!v40)
  {
    return MEMORY[0x277D84F90];
  }

  v37 = v9 + 32;
  v45 = (v7 + 8);

  v11 = 0;
  v36 = MEMORY[0x277D84F90];
  v38 = result;
  v39 = v2;
  while (v11 < *(result + 16))
  {
    v44 = v11;
    v12 = (v37 + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    swift_bridgeObjectRetain_n();
    v15 = sub_2227C1DB8();
    v16 = *(v15 + 16);
    v47 = v14;
    v48 = v13;
    if (v16)
    {
      sub_2227BAC14();
      v17 = (v15 + 40);
      v14 = v47;
      v18 = v48;
      do
      {
        v19 = *(v17 - 1);
        v20 = *v17;
        v53 = v14;
        v54 = v18;
        v51 = v19;
        v52 = v20;
        v49 = 0;
        v50 = 0xE000000000000000;
        v14 = sub_222830424();
        v13 = v21;

        v17 += 3;
        v18 = v13;
        --v16;
      }

      while (v16);
    }

    v22 = v41;
    sub_22282FDC4();
    v23 = v42;
    sub_22282FDB4();
    sub_22282FDD4();
    v24 = *v45;
    v25 = v39;
    (*v45)(v23, v39);
    v24(v22, v25);
    v53 = v14;
    v54 = v13;
    sub_2227BAC14();
    v26 = sub_222830414();
    v28 = v27;

    if (v26 == v47 && v28 == v48)
    {
    }

    else
    {
      v30 = sub_222830514();

      if ((v30 & 1) == 0)
      {
        v31 = HIBYTE(v28) & 0xF;
        if ((v28 & 0x2000000000000000) == 0)
        {
          v31 = v26 & 0xFFFFFFFFFFFFLL;
        }

        if (v31)
        {
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v32 = v36;
          }

          else
          {
            sub_2227BFB74();
          }

          v33 = *(v32 + 16);
          if (v33 >= *(v32 + 24) >> 1)
          {
            sub_2227BFB74();
          }

          v36 = v32;
          v24(v46, v25);
          v34 = v36;
          *(v36 + 16) = v33 + 1;
          v35 = v34 + 16 * v33;
          *(v35 + 32) = v26;
          *(v35 + 40) = v28;
          goto LABEL_22;
        }
      }
    }

    v24(v46, v25);

LABEL_22:
    result = v38;
    v11 = v44 + 1;
    if (v44 + 1 == v40)
    {

      return v36;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2227C27B0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, char a5@<W4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v67 = a7;
  v68 = a2;
  v64 = a4;
  LODWORD(v65) = a6;
  v69 = a1;
  v11 = sub_2228301C4();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v62 - v16;
  if (qword_27D01B730 != -1)
  {
    swift_once();
  }

  v18 = sub_2228301F4();
  __swift_project_value_buffer(v18, qword_27D01BC18);
  sub_2228301E4();
  sub_2228301A4();
  v19 = sub_2228301E4();
  v20 = sub_2228303C4();
  if (sub_2228303E4())
  {
    v21 = v17;
    v22 = v12;
    v23 = v11;
    v24 = swift_slowAlloc();
    *v24 = 0;
    v25 = sub_2228301B4();
    _os_signpost_emit_with_name_impl(&dword_2227A9000, v19, v20, v25, "CSMParseUSOGraph", "", v24, 2u);
    v11 = v23;
    v12 = v22;
    v17 = v21;
    OUTLINED_FUNCTION_4_1();
  }

  v12[2](v15, v17, v11);
  sub_222830234();
  swift_allocObject();
  v26 = sub_222830224();
  v27 = v69;
  if ((a5 & 1) != 0 && ![v69 identifiersCount])
  {

    if (qword_27D01B728 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_27D01B728);
    }

    v40 = sub_222830274();
    __swift_project_value_buffer(v40, qword_27D01BC00);
    v41 = sub_222830254();
    v42 = sub_222830384();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_2227A9000, v41, v42, "[CSMEntityInit] require USOGraph to have identifiers, but identifiers count is zero. Skipping initialization", v43, 2u);
      v27 = v69;
      OUTLINED_FUNCTION_4_1();
    }

    goto LABEL_18;
  }

  v66 = v26;

  v28 = sub_22282FE34();

  v29 = v67;
  if ((v65 & 1) != 0 && (sub_2227C3180(v28, v67) & 1) == 0)
  {

    if (qword_27D01B728 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_27D01B728);
    }

    v48 = sub_222830274();
    __swift_project_value_buffer(v48, qword_27D01BC00);

    v49 = sub_222830254();
    v50 = sub_222830384();

    v65 = v49;
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v70[0] = v52;
      *v51 = 136315138;
      v53 = MEMORY[0x223DC1510](v29, MEMORY[0x277D837D0]);
      v63 = v11;
      v55 = v54;

      v56 = sub_2227C0238(v53, v55, v70);
      v57 = v17;
      v58 = v12;
      v59 = v56;
      v11 = v63;

      *(v51 + 4) = v59;
      v12 = v58;
      v17 = v57;
      v60 = v50;
      v61 = v65;
      _os_log_impl(&dword_2227A9000, v65, v60, "[CSMEntityInit] parsing restrict graph types to be %s, but the graph type did not meet this criteria. Skipping initialization", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v52);
      OUTLINED_FUNCTION_4_1();
      v27 = v69;
      OUTLINED_FUNCTION_4_1();
    }

    else
    {
    }

    v26 = v66;
LABEL_18:
    sub_2227C2EF4(v26);

    v28 = 0;
    a3 = 0;
    v44 = 0;
    v45 = 0;
    goto LABEL_21;
  }

  v65 = v12;

  v30 = sub_22282FF04();
  v32 = v31;
  if (qword_27D01B728 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_27D01B728);
  }

  v33 = sub_222830274();
  __swift_project_value_buffer(v33, qword_27D01BC00);

  v34 = sub_222830254();
  v35 = sub_222830394();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v63 = v11;
    v38 = v37;
    v70[0] = v37;
    *v36 = 136315138;
    v39 = sub_2227C0238(v30, v32, v70);

    *(v36 + 4) = v39;
    _os_log_impl(&dword_2227A9000, v34, v35, "[CSMEntityInit] parsing graph: %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v38);
    v11 = v63;
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_4_1();
  }

  else
  {
  }

  v12 = v65;

  sub_2227B9378(0xD00000000000001BLL, 0x8000000222833170);
  v44 = v46;

  sub_2227C2EF4(v66);

  v45 = v64;
LABEL_21:
  result = (v12[1])(v17, v11);
  *a8 = v28;
  *(a8 + 8) = 0;
  *(a8 + 16) = a3;
  *(a8 + 24) = 0;
  *(a8 + 32) = v44;
  *(a8 + 40) = v45;
  return result;
}

uint64_t sub_2227C2EF4(uint64_t a1)
{
  v1 = sub_222830204();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2228301C4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27D01B730 != -1)
  {
    swift_once();
  }

  v9 = sub_2228301F4();
  __swift_project_value_buffer(v9, qword_27D01BC18);
  v10 = sub_2228301E4();
  sub_222830214();
  v11 = sub_2228303B4();
  if (sub_2228303E4())
  {

    sub_222830244();

    if ((*(v2 + 88))(v4, v1) == *MEMORY[0x277D85B00])
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v2 + 8))(v4, v1);
      v12 = "";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_2228301B4();
    _os_signpost_emit_with_name_impl(&dword_2227A9000, v10, v11, v14, "CSMParseUSOGraph", v12, v13, 2u);
    MEMORY[0x223DC2B60](v13, -1, -1);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_2227C3180(uint64_t a1, uint64_t a2)
{
  v38 = a2;
  v2 = sub_222830064();
  v36 = *(v2 - 8);
  v37 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01B750, &qword_2228320B0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v35 - v9;
  v11 = sub_2228300E4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01B848, &qword_222832310);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v35 - v16;
  sub_222830174();
  v18 = sub_222830034();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v18);
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v18);
  v19 = sub_2228300B4();
  sub_2227BAC68(v8, &qword_27D01B750, &qword_2228320B0);
  sub_2227BAC68(v10, &qword_27D01B750, &qword_2228320B0);
  v20 = *(v12 + 8);
  v20(v14, v11);
  sub_2227C1F80(v19, v17);

  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01B818, &qword_222832270);
  if (__swift_getEnumTagSinglePayload(v17, 1, v21) == 1)
  {
    sub_2227BAC68(v17, &qword_27D01B848, &qword_222832310);
  }

  else
  {
    v22 = *(v21 + 48);
    sub_2228300D4();
    v20(&v17[v22], v11);
    v23 = sub_222830054();
    v25 = v24;
    (*(v36 + 8))(v4, v37);
    v26 = sub_222830014();
    (*(*(v26 - 8) + 8))(v17, v26);
    v27 = v38 + 40;
    v28 = *(v38 + 16) + 1;
    while (--v28)
    {
      v29 = v27 + 16;
      v32 = v27 - 8;
      v30 = *(v27 - 8);
      v31 = *(v32 + 8);
      v41 = v23;
      v42 = v25;
      v39 = v30;
      v40 = v31;
      sub_2227BAC14();
      v33 = sub_222830444();
      v27 = v29;
      if (v33)
      {

        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_2227C355C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01B818, &qword_222832270);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2227C35CC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_2227C3654(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2227C3730()
{
  result = qword_27D01B850;
  if (!qword_27D01B850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01B850);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_4(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_2228302C4();
}

uint64_t marrs::qr::orchestration::AerOrchestrator::validate(marrs::qr::orchestration::AerOrchestrator *this, const QRRequest *a2)
{
  v10 = &unk_2835DF370;
  v11 = 0;
  if (!marrs::qr::orchestration::InputCheckerUtil::utteranceCheckerHelper(a2->var1.var0, a2->var1.var1, 0))
  {
    exception = __cxa_allocate_exception(0x30uLL);
    std::string::basic_string[abi:ne200100]<0>(v9, "Received empty ASR utterance / tokens in QRRequest.interactions");
    std::string::basic_string[abi:ne200100]<0>(v8, "QueryRewrite");
    IOContentError::IOContentError(exception, v9, v8, "/Library/Caches/com.apple.xbs/Sources/Marrs/Marrs/query_rewrite/orchestration/QROrchestrator.cpp", 322);
  }

  v10 = &unk_2835DF3D0;
  v11 = 0;
  if ((marrs::qr::orchestration::PreviousNLUtteranceChecker::verify(&v10, a2) & 1) == 0)
  {
    v6 = __cxa_allocate_exception(0x30uLL);
    std::string::basic_string[abi:ne200100]<0>(v9, "Received empty inputs in QRRequest.prevQRUtterances");
    std::string::basic_string[abi:ne200100]<0>(v8, "QueryRewrite");
    IOContentError::IOContentError(v6, v9, v8, "/Library/Caches/com.apple.xbs/Sources/Marrs/Marrs/query_rewrite/orchestration/QROrchestrator.cpp", 326);
  }

  v10 = &unk_2835DF400;
  v11 = 0;
  var1 = a2->var1.var1;
  if (a2->var1.var0 != var1 && var1[-1].var1.var1 != var1[-1].var1.var2)
  {
    v7 = __cxa_allocate_exception(0x30uLL);
    std::string::basic_string[abi:ne200100]<0>(v9, "Received non-empty SiriResponse for current turn in QRRequest.interactions");
    std::string::basic_string[abi:ne200100]<0>(v8, "QueryRewrite");
    IOContentError::IOContentError(v7, v9, v8, "/Library/Caches/com.apple.xbs/Sources/Marrs/Marrs/query_rewrite/orchestration/QROrchestrator.cpp", 331);
  }

  return 1;
}

void sub_2227C39F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
    if ((v21 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v20);
  goto LABEL_8;
}

void *IOContentError::IOContentError(void *a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v5 = a5;
  std::operator+<char>();
  v10 = std::string::append(&v18, " for IO field missing/null: ");
  v11 = *&v10->__r_.__value_.__l.__data_;
  v19.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v19.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = *(a2 + 23);
  if (v12 >= 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = *a2;
  }

  if (v12 >= 0)
  {
    v14 = *(a2 + 23);
  }

  else
  {
    v14 = *(a2 + 8);
  }

  v15 = std::string::append(&v19, v13, v14);
  v16 = *&v15->__r_.__value_.__l.__data_;
  v21 = v15->__r_.__value_.__r.__words[2];
  *__p = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  BaseException::BaseException(a1, __p, a3, a4, v5);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  *a1 = &unk_2835DF598;
  return a1;
}

void sub_2227C3B8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void BaseException::~BaseException(std::exception *this)
{
  this->__vftable = &unk_2835DF710;
  if (SHIBYTE(this[5].__vftable) < 0)
  {
    operator delete(this[3].__vftable);
  }

  std::exception::~exception(this);
}

{
  BaseException::~BaseException(this);

  JUMPOUT(0x223DC2360);
}

uint64_t BaseException::what(BaseException *this)
{
  result = this + 24;
  if (*(this + 47) < 0)
  {
    return *result;
  }

  return result;
}

void IOContentError::~IOContentError(std::exception *this)
{
  BaseException::~BaseException(this);

  JUMPOUT(0x223DC2360);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_2784B4EB0, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void non-virtual thunk tomarrs::qr::orchestration::AerOrchestrator::~AerOrchestrator(void **this)
{
  marrs::qr::orchestration::QueryRewriteOrchestrator::~QueryRewriteOrchestrator(this - 41);

  JUMPOUT(0x223DC2360);
}

{
  marrs::qr::orchestration::QueryRewriteOrchestrator::~QueryRewriteOrchestrator(this - 41);
}

void marrs::qr::orchestration::QueryRewriteOrchestrator::~QueryRewriteOrchestrator(void **this)
{
  *this = &unk_2835DE4D0;
  if (*(this + 231) < 0)
  {
    operator delete(this[26]);
  }

  v2 = this + 22;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::~__hash_table((this + 17));
  if (*(this + 135) < 0)
  {
    operator delete(this[14]);
  }

  if (*(this + 111) < 0)
  {
    operator delete(this[11]);
  }

  v2 = this + 7;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::~__hash_table((this + 2));
  std::unique_ptr<marrs::qr::inference_engine::EspressoQueryRewriteModel>::reset[abi:ne200100](this + 1, 0);
}

{
  marrs::qr::orchestration::QueryRewriteOrchestrator::~QueryRewriteOrchestrator(this);

  JUMPOUT(0x223DC2360);
}

marrs::inference_engine::EspressoModule ***std::unique_ptr<marrs::qr::inference_engine::EspressoQueryRewriteModel>::reset[abi:ne200100](marrs::inference_engine::EspressoModule ***result, marrs::inference_engine::EspressoModule **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    marrs::qr::inference_engine::EspressoQueryRewriteTimingMetricsType::~EspressoQueryRewriteTimingMetricsType((v2 + 4));
    v3 = v2[3];
    v2[3] = 0;
    if (v3)
    {
      marrs::inference_engine::EspressoModule::~EspressoModule(v3);
      MEMORY[0x223DC2360]();
    }

    v4 = v2[2];
    v2[2] = 0;
    if (v4)
    {
      marrs::inference_engine::EspressoModule::~EspressoModule(v4);
      MEMORY[0x223DC2360]();
    }

    v5 = v2[1];
    v2[1] = 0;
    if (v5)
    {
      marrs::inference_engine::EspressoModule::~EspressoModule(v5);
      MEMORY[0x223DC2360]();
    }

    v6 = *v2;
    *v2 = 0;
    if (v6)
    {
      marrs::inference_engine::EspressoModule::~EspressoModule(v6);
      MEMORY[0x223DC2360]();
    }

    JUMPOUT(0x223DC2360);
  }

  return result;
}

void marrs::qr::inference_engine::EspressoQueryRewriteTimingMetricsType::~EspressoQueryRewriteTimingMetricsType(marrs::qr::inference_engine::EspressoQueryRewriteTimingMetricsType *this)
{
  v2 = *(this + 35);
  if (v2)
  {
    *(this + 36) = v2;
    operator delete(v2);
  }

  v3 = *(this + 32);
  if (v3)
  {
    *(this + 33) = v3;
    operator delete(v3);
  }
}

void non-virtual thunk tomarrs::qr::orchestration::AerOrchestrator::predict(marrs::qr::orchestration::AerOrchestrator *this@<X0>, const QRRequest *a2@<X1>, marrs::qr::orchestration::QueryRewriteOrchestrator *a3@<X8>)
{
  v5 = (this - 328);
  (*(*(this - 41) + 24))(this - 328);

  marrs::qr::orchestration::QueryRewriteOrchestrator::Handle(a3, v5, a2, 1, 0);
}

void marrs::qr::orchestration::QueryRewriteOrchestrator::Handle(marrs::qr::orchestration::QueryRewriteOrchestrator *this, const QRRequest *a2, uint64_t a3, int a4, int a5)
{
  v66 = *MEMORY[0x277D85DE8];
  *this = 0;
  *(this + 1) = 0;
  *(this + 6) = 0;
  *(this + 2) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 14) = 4;
  if (marrs::qr::orchestration::SignpostsUtils::createCcqrAerContext(void)::once != -1)
  {
    dispatch_once(&marrs::qr::orchestration::SignpostsUtils::createCcqrAerContext(void)::once, &__block_literal_global_5);
  }

  v7 = marrs::qr::orchestration::SignpostsUtils::createCcqrAerContext(void)::ccqrAerLogContext;
  v8 = os_signpost_id_generate(marrs::qr::orchestration::SignpostsUtils::createCcqrAerContext(void)::ccqrAerLogContext);
  std::chrono::steady_clock::now();
  if ((0x6DB6DB6DB6DB6DB7 * ((*(a3 + 16) - *(a3 + 8)) >> 4)) > 1)
  {
    if (v8 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {
      std::chrono::steady_clock::now();
    }

    else
    {
      if (os_signpost_enabled(v7))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_2227A9000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v8, "Total", "CCQRAer total duration", buf, 2u);
      }

      std::chrono::steady_clock::now();
      if (os_signpost_enabled(v7))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_2227A9000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v8, "PreProcessDuration", "CCQRAer PreProcessing duration", buf, 2u);
      }
    }

    std::chrono::steady_clock::now();
    memset(v44, 0, sizeof(v44));
    v42 = 0;
    v41 = 0;
    v43 = 0;
    memset(v40, 0, sizeof(v40));
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v29 = BYTE2(a2[7].var1.var0);
    v30 = BYTE1(a2[7].var1.var0);
    std::unordered_map<std::string,unsigned long>::unordered_map(&v52, &a2[4].var1);
    memset(v53, 0, sizeof(v53));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v53, a2[5].var1.var1, a2[5].var1.var2, 0xAAAAAAAAAAAAAAABLL * ((a2[5].var1.var2 - a2[5].var1.var1) >> 3));
    var0 = a2[6].var1.var0;
    v55 = 1;
    memset(&v51, 0, sizeof(v51));
    v49 = 0;
    v48 = 0;
    v50 = 0;
    memset(&v47, 0, sizeof(v47));
    v10 = *(a3 + 8);
    v11 = *(a3 + 16) - v10;
    if (v11)
    {
      v12 = *(v10 + 112 * (0x6DB6DB6DB6DB6DB7 * (v11 >> 4) - 1));
      marrs::qr::processing::filterTokensForAER(&v46, *(v12 + 40), *(v12 + 48), v30 & 1, v29 & 1);
      std::vector<marrs::qr::orchestration::QRToken>::__insert_with_size[abi:ne200100]<std::__wrap_iter<marrs::qr::orchestration::QRToken*>,std::__wrap_iter<marrs::qr::orchestration::QRToken*>>(&v51, v51.__r_.__value_.__l.__size_, v46.__r_.__value_.__l.__data_, v46.__r_.__value_.__l.__size_, 0xCCCCCCCCCCCCCCCDLL * ((v46.__r_.__value_.__l.__size_ - v46.__r_.__value_.__r.__words[0]) >> 5));
      std::string::basic_string[abi:ne200100]<0>(v32, "[EOS]");
      std::string::basic_string[abi:ne200100]<0>(&v56, "[EOS]");
      std::string::basic_string[abi:ne200100]<0>(&v57, "[EOS]");
      memset(__src, 0, 24);
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(__src, &v57, &v58);
    }

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    *buf = &v47;
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](buf);
    if (v48)
    {
      v49 = v48;
      operator delete(v48);
    }

    *buf = &v51;
    std::vector<marrs::qr::orchestration::QRToken>::__destroy_vector::operator()[abi:ne200100](buf);
    std::vector<marrs::qr::orchestration::QRToken>::__assign_with_size[abi:ne200100]<marrs::qr::orchestration::QRToken*,marrs::qr::orchestration::QRToken*>(v44, v60, *(&v60 + 1), 0xCCCCCCCCCCCCCCCDLL * ((*(&v60 + 1) - v60) >> 5));
    std::vector<unsigned long>::__assign_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&v41, *(&v61 + 1), v62, (v62 - *(&v61 + 1)) >> 3);
    std::vector<std::vector<unsigned long>>::__assign_with_size[abi:ne200100]<std::vector<unsigned long>*,std::vector<unsigned long>*>(v40, v63, *(&v63 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&v63 + 1) - v63) >> 3));
    v14 = *(&v64 + 1);
    v13 = v65;
    v15 = v65 - *(&v64 + 1);
    if ((v36 - v34) < v65 - *(&v64 + 1))
    {
      v16 = 0xAAAAAAAAAAAAAAABLL * (v15 >> 3);
      std::vector<std::vector<std::vector<float>>>::__vdeallocate(&v34);
      if (v16 <= 0xAAAAAAAAAAAAAAALL)
      {
        v17 = 0x5555555555555556 * ((v36 - v34) >> 3);
        if (v17 <= v16)
        {
          v17 = v16;
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v36 - v34) >> 3) >= 0x555555555555555)
        {
          v18 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v18 = v17;
        }

        std::vector<std::vector<std::vector<float>>>::__vallocate[abi:ne200100](&v34, v18);
      }

      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v19 = v35 - v34;
    if (v35 - v34 >= v15)
    {
      v20 = std::__copy_impl::operator()[abi:ne200100]<std::vector<std::vector<float>> *,std::vector<std::vector<float>> *,std::vector<std::vector<float>> *>(*(&v64 + 1), v65, v34);
      v21 = v35;
      while (v21 != v20)
      {
        v21 -= 3;
        *buf = v21;
        std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](buf);
      }

      v35 = v20;
    }

    else
    {
      std::__copy_impl::operator()[abi:ne200100]<std::vector<std::vector<float>> *,std::vector<std::vector<float>> *,std::vector<std::vector<float>> *>(*(&v64 + 1), (*(&v64 + 1) + v19), v34);
      v35 = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<std::vector<float>>>,std::vector<std::vector<float>>*,std::vector<std::vector<float>>*,std::vector<std::vector<float>>*>(&v34, (v14 + v19), v13, v35);
    }

    *buf = &v64 + 8;
    std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](buf);
    *buf = &v63;
    std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](buf);
    if (*(&v61 + 1))
    {
      *&v62 = *(&v61 + 1);
      operator delete(*(&v61 + 1));
    }

    *buf = &v60;
    std::vector<marrs::qr::orchestration::QRToken>::__destroy_vector::operator()[abi:ne200100](buf);
    if (v55 == 1)
    {
      *buf = v53;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](buf);
      std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__deallocate_node(v52.__r_.__value_.__r.__words[2]);
      v22 = v52.__r_.__value_.__r.__words[0];
      v52.__r_.__value_.__r.__words[0] = 0;
      if (v22)
      {
        operator delete(v22);
      }
    }

    memset(v32, 0, sizeof(v32));
    std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long const*>,std::__wrap_iter<unsigned long const*>>(v32, v41, v42, (v42 - v41) >> 3);
    memset(v33, 0, sizeof(v33));
    *&v60 = v33;
    BYTE8(v60) = 0;
    if (v35 != v34)
    {
      v23 = 0xAAAAAAAAAAAAAAABLL * ((v35 - v34) >> 3);
      if (v23 <= 0xAAAAAAAAAAAAAAALL)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<std::vector<float>>>>(v23);
      }

      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    if (v8 - 1 > 0xFFFFFFFFFFFFFFFDLL)
    {
      std::chrono::steady_clock::now();
      v24 = a5;
      v25 = a4;
    }

    else
    {
      v24 = a5;
      v25 = a4;
      if (os_signpost_enabled(v7))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_2227A9000, v7, OS_SIGNPOST_INTERVAL_END, v8, "PreProcessDuration", " enableTelemetry=YES ", buf, 2u);
      }

      std::chrono::steady_clock::now();
      if (os_signpost_enabled(v7))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_2227A9000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v8, "ForwardDuration", "CCQRAer Inference duration", buf, 2u);
      }
    }

    std::chrono::steady_clock::now();
    v26 = QRLoggerForCategory(0);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      *&buf[4] = "Handle";
      _os_log_debug_impl(&dword_2227A9000, v26, OS_LOG_TYPE_DEBUG, "%s #CCQRAer inference started.", buf, 0xCu);
    }

    marrs::qr::inference_engine::EspressoQueryRewriteModel::forward(&v51, a2->var1.var0, v32, v25, v24);
  }

  v9 = QRLoggerForCategory(0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    *&buf[4] = "Handle";
    _os_log_debug_impl(&dword_2227A9000, v9, OS_LOG_TYPE_DEBUG, "%s Rule based binary classifier returned", buf, 0xCu);
  }

  *(this + 14) = 3;
  marrs::qr::orchestration::QueryRewriteOrchestrator::doCoreAnalytics(a2, 3, 0, 0, 0);
}

void sub_2227C6628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, unint64_t *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, unint64_t *a62, uint64_t a63)
{
  std::__split_buffer<marrs::qr::orchestration::QRHypothesis>::~__split_buffer(&STACK[0x380]);
  marrs::qr::orchestration::QRUtterance::~QRUtterance(&STACK[0x2E0]);
  marrs::qr::orchestration::QRUtterance::~QRUtterance((v67 - 224));
  if (v66)
  {
    operator delete(v66);
  }

  STACK[0x2E0] = &STACK[0x2B0];
  std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2E0]);
  STACK[0x2E0] = &STACK[0x2C8];
  std::vector<marrs::qr::inference_engine::EspressoQueryRewriteModelOutputType>::__destroy_vector::operator()[abi:ne200100](&STACK[0x2E0]);
  marrs::qr::inference_engine::EspressoQueryRewriteModelInputType::~EspressoQueryRewriteModelInputType(&a62);
  a62 = &a65;
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&a62);
  a62 = &a66;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a62);
  a62 = &STACK[0x208];
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a62);
  if (STACK[0x220])
  {
    operator delete(STACK[0x220]);
  }

  a62 = &STACK[0x238];
  std::vector<marrs::qr::orchestration::QRToken>::__destroy_vector::operator()[abi:ne200100](&a62);
  a62 = a20;
  std::vector<marrs::qr::orchestration::QRHypothesis>::__destroy_vector::operator()[abi:ne200100](&a62);
  _Unwind_Resume(a1);
}

void marrs::qr::orchestration::QueryRewriteOrchestrator::doCoreAnalytics(uint64_t a1, int a2, uint64_t a3, int *a4, int *a5)
{
  std::string::basic_string[abi:ne200100]<0>(&v7, "com.apple.siri.marrs");
  v5 = std::string::append(&v7, ".QueryRewrite.CCQRAer.Predict");
  v6 = *&v5->__r_.__value_.__l.__data_;
  v9 = v5->__r_.__value_.__r.__words[2];
  *__p = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  analytics_send_event_lazy();
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }
}

void sub_2227C6CFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](void ****a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 3;
        v6 = v4;
        std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<marrs::qr::orchestration::QRToken>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<marrs::qr::orchestration::QRToken>::__base_destruct_at_end[abi:ne200100](v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t std::tuple<std::vector<marrs::qr::orchestration::QRToken>,std::vector<unsigned long>,std::vector<std::vector<unsigned long>>,std::vector<std::vector<std::vector<float>>>>::~tuple(uint64_t a1)
{
  v4 = (a1 + 72);
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v4 = (a1 + 48);
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v4 = a1;
  std::vector<marrs::qr::orchestration::QRToken>::__destroy_vector::operator()[abi:ne200100](&v4);
  return a1;
}

uint64_t std::optional<marrs::qr::processing::Vocab>::~optional(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    v3 = (a1 + 40);
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v3);
    std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::~__hash_table(a1);
  }

  return a1;
}

void std::vector<std::vector<std::string>>::__destroy_vector::operator()[abi:ne200100](void ****a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 3;
        v6 = v4;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<marrs::qr::inference_engine::EspressoQueryRewriteModelOutputType>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v6 = v1[1];
      do
      {
        v8 = *(v6 - 4);
        v6 -= 32;
        v7 = v8;
        if (v8)
        {
          *(v4 - 3) = v7;
          operator delete(v7);
        }

        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void marrs::qr::inference_engine::EspressoQueryRewriteModelInputType::~EspressoQueryRewriteModelInputType(marrs::qr::inference_engine::EspressoQueryRewriteModelInputType *this)
{
  v3 = (this + 24);
  std::vector<std::vector<std::vector<float>>>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *this;
  if (*this)
  {
    *(this + 1) = v2;
    operator delete(v2);
  }
}

void std::vector<marrs::qr::orchestration::QRHypothesis>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<marrs::qr::orchestration::QRHypothesis>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<marrs::qr::orchestration::QRHypothesis>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 56)
  {
    if (*(i - 17) < 0)
    {
      operator delete(*(i - 40));
    }
  }

  a1[1] = v2;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

uint64_t *std::vector<float>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long const*>,std::__wrap_iter<unsigned long const*>>(uint64_t *result, unint64_t *a2, unint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<float>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2227C7174(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::vector<std::vector<float>>>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<std::vector<float>>>>(a2);
  }

  std::vector<std::string>::__throw_length_error[abi:ne200100]();
}

uint64_t *std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::vector<float>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2227C7248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 8) = v10;
  std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<std::vector<float>>>,std::vector<std::vector<float>>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v3 -= 3;
      v5 = v3;
      std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v5);
    }
  }

  return a1;
}

void std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::vector<float>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::vector<float>>::clear[abi:ne200100](uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void std::vector<std::vector<float>>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(a2);
  }

  std::vector<std::string>::__throw_length_error[abi:ne200100]();
}

uint64_t *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<float>>,std::vector<float>*,std::vector<float>*,std::vector<float>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(v4, *v6, *(v6 + 8), (*(v6 + 8) - *v6) >> 2);
      v6 += 24;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<float>>,std::vector<float>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<float>>,std::vector<float>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 16);
    v3 = **(a1 + 8);
    if (v2 != v3)
    {
      v4 = **(a1 + 16);
      do
      {
        v6 = *(v4 - 24);
        v4 -= 24;
        v5 = v6;
        if (v6)
        {
          *(v2 - 16) = v5;
          operator delete(v5);
        }

        v2 = v4;
      }

      while (v4 != v3);
    }
  }

  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<float>>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<std::vector<float>>>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<marrs::qr::orchestration::QRToken>::__base_destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 != a2)
  {
    v5 = v4 - 56;
    do
    {
      if (*(v5 + 55) < 0)
      {
        operator delete(*(v5 + 32));
      }

      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v7 = (v5 - 56);
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v7);
      if (*(v5 - 57) < 0)
      {
        operator delete(*(v5 - 80));
      }

      if (*(v5 - 81) < 0)
      {
        operator delete(*(v5 - 104));
      }

      v6 = v5 - 104;
      v5 -= 160;
    }

    while (v6 != a2);
  }

  *(a1 + 8) = a2;
}

void std::vector<marrs::qr::orchestration::QRToken>::__assign_with_size[abi:ne200100]<marrs::qr::orchestration::QRToken*,marrs::qr::orchestration::QRToken*>(uint64_t a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v8 = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 5) < a4)
  {
    std::vector<marrs::qr::orchestration::QRToken>::__vdeallocate(a1);
    if (a4 <= 0x199999999999999)
    {
      v9 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 5);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 5) >= 0xCCCCCCCCCCCCCCLL)
      {
        v10 = 0x199999999999999;
      }

      else
      {
        v10 = v9;
      }

      std::vector<marrs::qr::orchestration::QRToken>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  v11 = *(a1 + 8) - v8;
  if (0xCCCCCCCCCCCCCCCDLL * (v11 >> 5) >= a4)
  {
    v12 = std::__copy_impl::operator()[abi:ne200100]<marrs::qr::orchestration::QRToken *,marrs::qr::orchestration::QRToken *,marrs::qr::orchestration::QRToken *>(__str, a3, v8);

    std::vector<marrs::qr::orchestration::QRToken>::__base_destruct_at_end[abi:ne200100](a1, v12);
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<marrs::qr::orchestration::QRToken *,marrs::qr::orchestration::QRToken *,marrs::qr::orchestration::QRToken *>(__str, (__str + v11), v8);
    *(a1 + 8) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<marrs::qr::orchestration::QRToken>,marrs::qr::orchestration::QRToken*,marrs::qr::orchestration::QRToken*,marrs::qr::orchestration::QRToken*>(a1, (__str + v11), a3, *(a1 + 8));
  }
}

void **std::vector<unsigned long>::__assign_with_size[abi:ne200100]<unsigned long *,unsigned long *>(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<unsigned long>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void std::vector<std::vector<unsigned long>>::__assign_with_size[abi:ne200100]<std::vector<unsigned long>*,std::vector<unsigned long>*>(void ***a1, char **a2, char **a3, unint64_t a4)
{
  v8 = a1[2];
  v9 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v8 - *a1) >> 3) < a4)
  {
    if (v9)
    {
      std::vector<std::vector<float>>::clear[abi:ne200100](a1);
      operator delete(*a1);
      v8 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v10 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
      v11 = 2 * v10;
      if (2 * v10 <= a4)
      {
        v11 = a4;
      }

      if (v10 >= 0x555555555555555)
      {
        v12 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v12 = v11;
      }

      std::vector<std::vector<unsigned long>>::__vallocate[abi:ne200100](a1, v12);
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  v13 = a1[1] - v9;
  if (0xAAAAAAAAAAAAAAABLL * (v13 >> 3) >= a4)
  {
    v14 = std::__copy_impl::operator()[abi:ne200100]<std::vector<unsigned long> *,std::vector<unsigned long> *,std::vector<unsigned long> *>(a2, a3, v9);
    v15 = a1[1];
    if (v15 != v14)
    {
      v16 = a1[1];
      do
      {
        v18 = *(v16 - 24);
        v16 -= 24;
        v17 = v18;
        if (v18)
        {
          *(v15 - 16) = v17;
          operator delete(v17);
        }

        v15 = v16;
      }

      while (v16 != v14);
    }

    a1[1] = v14;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<std::vector<unsigned long> *,std::vector<unsigned long> *,std::vector<unsigned long> *>(a2, (a2 + v13), v9);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<unsigned long>>,std::vector<unsigned long>*,std::vector<unsigned long>*,std::vector<unsigned long>*>(a1, a2 + v13, a3, a1[1]);
  }
}

uint64_t std::__copy_impl::operator()[abi:ne200100]<std::vector<std::vector<float>> *,std::vector<std::vector<float>> *,std::vector<std::vector<float>> *>(char ***a1, char ***a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      if (a3 != v5)
      {
        v7 = *v5;
        v6 = v5[1];
        v8 = v6 - *v5;
        v9 = *a3;
        if (*(a3 + 16) - *a3 < v8)
        {
          v10 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
          std::vector<std::vector<float>>::__vdeallocate(a3);
          if (v10 <= 0xAAAAAAAAAAAAAAALL)
          {
            v11 = 0x5555555555555556 * ((*(a3 + 16) - *a3) >> 3);
            if (v11 <= v10)
            {
              v11 = v10;
            }

            if (0xAAAAAAAAAAAAAAABLL * ((*(a3 + 16) - *a3) >> 3) >= 0x555555555555555)
            {
              v12 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v12 = v11;
            }

            std::vector<std::vector<float>>::__vallocate[abi:ne200100](a3, v12);
          }

          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        v13 = *(a3 + 8) - v9;
        if (v13 >= v8)
        {
          v14 = std::__copy_impl::operator()[abi:ne200100]<std::vector<float> *,std::vector<float> *,std::vector<float> *>(*v5, v5[1], v9);
          v15 = *(a3 + 8);
          if (v15 != v14)
          {
            v16 = *(a3 + 8);
            do
            {
              v18 = *(v16 - 3);
              v16 -= 3;
              v17 = v18;
              if (v18)
              {
                *(v15 - 2) = v17;
                operator delete(v17);
              }

              v15 = v16;
            }

            while (v16 != v14);
          }

          *(a3 + 8) = v14;
        }

        else
        {
          std::__copy_impl::operator()[abi:ne200100]<std::vector<float> *,std::vector<float> *,std::vector<float> *>(*v5, (v7 + v13), v9);
          *(a3 + 8) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<float>>,std::vector<float>*,std::vector<float>*,std::vector<float>*>(a3, v7 + v13, v6, *(a3 + 8));
        }
      }

      v5 += 3;
      a3 += 24;
    }

    while (v5 != a2);
  }

  return a3;
}

uint64_t *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<std::vector<float>>>,std::vector<std::vector<float>>*,std::vector<std::vector<float>>*,std::vector<std::vector<float>>*>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = a4;
  v8 = a4;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<std::vector<float>>::__init_with_size[abi:ne200100]<std::vector<float>*,std::vector<float>*>(v4, *v6, v6[1], 0xAAAAAAAAAAAAAAABLL * ((v6[1] - *v6) >> 3));
      v6 += 3;
      v4 = v8 + 3;
      v8 += 3;
    }

    while (v6 != a3);
  }

  return v4;
}

void std::vector<std::vector<std::vector<float>>>::__vdeallocate(void ***a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 3;
        v5 = v3;
        std::vector<std::vector<float>>::__destroy_vector::operator()[abi:ne200100](&v5);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void **std::__copy_impl::operator()[abi:ne200100]<std::vector<float> *,std::vector<float> *,std::vector<float> *>(char **a1, char **a2, void **a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      if (v5 != a3)
      {
        std::vector<float>::__assign_with_size[abi:ne200100]<float *,float *>(a3, *v5, v5[1], (v5[1] - *v5) >> 2);
      }

      v5 += 3;
      a3 += 3;
    }

    while (v5 != a2);
  }

  return a3;
}

void std::vector<std::vector<float>>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<std::vector<float>>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void **std::__copy_impl::operator()[abi:ne200100]<std::vector<unsigned long> *,std::vector<unsigned long> *,std::vector<unsigned long> *>(char **a1, char **a2, void **a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      if (v5 != a3)
      {
        std::vector<unsigned long>::__assign_with_size[abi:ne200100]<unsigned long *,unsigned long *>(a3, *v5, v5[1], (v5[1] - *v5) >> 3);
      }

      v5 += 3;
      a3 += 3;
    }

    while (v5 != a2);
  }

  return a3;
}

uint64_t *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<unsigned long>>,std::vector<unsigned long>*,std::vector<unsigned long>*,std::vector<unsigned long>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(v4, *v6, *(v6 + 8), (*(v6 + 8) - *v6) >> 3);
      v6 += 24;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<float>>,std::vector<float>*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

void std::vector<std::vector<unsigned long>>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<unsigned long>>>(a2);
  }

  std::vector<std::string>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<unsigned long>>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2227C7FCC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned long>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a2);
  }

  std::vector<std::string>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

std::string *std::__copy_impl::operator()[abi:ne200100]<marrs::qr::orchestration::QRToken *,marrs::qr::orchestration::QRToken *,marrs::qr::orchestration::QRToken *>(std::string *__str, std::string *a2, std::string *this)
{
  if (__str != a2)
  {
    v5 = __str;
    do
    {
      std::string::operator=(this, v5);
      std::string::operator=(this + 1, v5 + 1);
      if (this != v5)
      {
        std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(&this[2], v5[2].__r_.__value_.__l.__data_, v5[2].__r_.__value_.__l.__size_, 0xAAAAAAAAAAAAAAABLL * ((v5[2].__r_.__value_.__l.__size_ - v5[2].__r_.__value_.__r.__words[0]) >> 3));
      }

      v6 = *&v5[3].__r_.__value_.__l.__data_;
      *&this[3].__r_.__value_.__r.__words[2] = *&v5[3].__r_.__value_.__r.__words[2];
      *&this[3].__r_.__value_.__l.__data_ = v6;
      std::string::operator=((this + 104), (v5 + 104));
      this[5].__r_.__value_.__s.__data_[8] = v5[5].__r_.__value_.__s.__data_[8];
      std::string::operator=((this + 136), (v5 + 136));
      this = (this + 160);
      v5 = (v5 + 160);
    }

    while (v5 != a2);
  }

  return this;
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<marrs::qr::orchestration::QRToken>,marrs::qr::orchestration::QRToken*,marrs::qr::orchestration::QRToken*,marrs::qr::orchestration::QRToken*>(uint64_t a1, marrs::qr::orchestration::QRToken *a2, marrs::qr::orchestration::QRToken *a3, std::string *this)
{
  v4 = this;
  v10 = this;
  v11 = this;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      marrs::qr::orchestration::QRToken::QRToken(v4, v6);
      v6 = (v6 + 160);
      v4 = (v11 + 160);
      v11 = (v11 + 160);
    }

    while (v6 != a3);
  }

  v9 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<marrs::qr::orchestration::QRToken>,marrs::qr::orchestration::QRToken*>>::~__exception_guard_exceptions[abi:ne200100](v8);
  return v4;
}

void std::vector<marrs::qr::orchestration::QRToken>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<marrs::qr::orchestration::QRToken>::__base_destruct_at_end[abi:ne200100](a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<marrs::qr::orchestration::QRToken>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x19999999999999ALL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<marrs::qr::orchestration::QRToken>>(a2);
  }

  std::vector<std::string>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<marrs::qr::orchestration::QRToken>>(unint64_t a1)
{
  if (a1 < 0x19999999999999ALL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

std::string *marrs::qr::orchestration::QRToken::QRToken(std::string *this, const marrs::qr::orchestration::QRToken *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
    *&this[1].__r_.__value_.__l.__data_ = v5;
  }

  this[2].__r_.__value_.__r.__words[0] = 0;
  this[2].__r_.__value_.__l.__size_ = 0;
  this[2].__r_.__value_.__r.__words[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&this[2], *(a2 + 6), *(a2 + 7), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 7) - *(a2 + 6)) >> 3));
  v6 = *(a2 + 72);
  *&this[3].__r_.__value_.__r.__words[2] = *(a2 + 88);
  *&this[3].__r_.__value_.__l.__data_ = v6;
  if (*(a2 + 127) < 0)
  {
    std::string::__init_copy_ctor_external((this + 104), *(a2 + 13), *(a2 + 14));
  }

  else
  {
    v7 = *(a2 + 104);
    this[5].__r_.__value_.__r.__words[0] = *(a2 + 15);
    *&this[4].__r_.__value_.__r.__words[1] = v7;
  }

  this[5].__r_.__value_.__s.__data_[8] = *(a2 + 128);
  if (*(a2 + 159) < 0)
  {
    std::string::__init_copy_ctor_external((this + 136), *(a2 + 17), *(a2 + 18));
  }

  else
  {
    v8 = *(a2 + 136);
    this[6].__r_.__value_.__l.__size_ = *(a2 + 19);
    *&this[5].__r_.__value_.__r.__words[2] = v8;
  }

  return this;
}

void sub_2227C83D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (*(v3 + 127) < 0)
  {
    operator delete(*(v3 + 104));
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  if (*(v3 + 47) < 0)
  {
    operator delete(*(v3 + 24));
  }

  if (*(v3 + 23) < 0)
  {
    operator delete(*v3);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<marrs::qr::orchestration::QRToken>,marrs::qr::orchestration::QRToken*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 16);
    v3 = **(a1 + 8);
    if (v2 != v3)
    {
      v4 = v2 - 56;
      do
      {
        if (*(v4 + 55) < 0)
        {
          operator delete(*(v4 + 32));
        }

        if (*(v4 + 23) < 0)
        {
          operator delete(*v4);
        }

        v7 = (v4 - 56);
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v7);
        if (*(v4 - 57) < 0)
        {
          operator delete(*(v4 - 80));
        }

        if (*(v4 - 81) < 0)
        {
          operator delete(*(v4 - 104));
        }

        v5 = v4 - 104;
        v4 -= 160;
      }

      while (v5 != v3);
    }
  }

  return a1;
}

uint64_t *std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(uint64_t *result, int a2, int a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2227C8550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<std::string>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a2);
  }

  std::vector<std::string>::__throw_length_error[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v11 = this;
  v12 = this;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      v6 = (v6 + 24);
      v12 = ++v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 1);
      v3 -= 3;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

void std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>(std::vector<std::string> *a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v6 = __str;
  begin = a1->__begin_;
  if (0xAAAAAAAAAAAAAAABLL * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3) < a4)
  {
    std::vector<std::string>::__vdeallocate(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1->__end_cap_.__value_ - a1->__begin_) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::string>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  end = a1->__end_;
  v12 = end - begin;
  if (0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3) >= a4)
  {
    if (__str != a3)
    {
      do
      {
        std::string::operator=(begin++, v6++);
      }

      while (v6 != a3);
      end = a1->__end_;
    }

    while (end != begin)
    {
      v15 = SHIBYTE(end[-1].__r_.__value_.__r.__words[2]);
      --end;
      if (v15 < 0)
      {
        operator delete(end->__r_.__value_.__l.__data_);
      }
    }

    a1->__end_ = begin;
  }

  else
  {
    if (end != begin)
    {
      v13 = end - begin;
      v14 = __str;
      do
      {
        std::string::operator=(begin++, v14++);
        v13 -= 24;
      }

      while (v13);
      end = a1->__end_;
    }

    a1->__end_ = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(a1, (v6 + v12), a3, end);
  }
}

void std::vector<std::string>::__vdeallocate(std::vector<std::string> *this)
{
  if (this->__begin_)
  {
    std::vector<std::string>::clear[abi:ne200100](this);
    operator delete(this->__begin_);
    this->__begin_ = 0;
    this->__end_ = 0;
    this->__end_cap_.__value_ = 0;
  }
}

uint64_t std::unordered_map<std::string,unsigned long>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    v5 = std::__string_hash<char>::operator()[abi:ne200100]((i + 2));
    v6 = v5;
    v7 = *(a1 + 8);
    if (!*&v7)
    {
      goto LABEL_18;
    }

    v8 = vcnt_s8(v7);
    v8.i16[0] = vaddlv_u8(v8);
    v9 = v8.u32[0];
    if (v8.u32[0] > 1uLL)
    {
      v10 = v5;
      if (v5 >= *&v7)
      {
        v10 = v5 % *&v7;
      }
    }

    else
    {
      v10 = (*&v7 - 1) & v5;
    }

    v11 = *(*a1 + 8 * v10);
    if (!v11 || (v12 = *v11) == 0)
    {
LABEL_18:
      operator new();
    }

    while (1)
    {
      v13 = v12[1];
      if (v13 == v6)
      {
        break;
      }

      if (v9 > 1)
      {
        if (v13 >= *&v7)
        {
          v13 %= *&v7;
        }
      }

      else
      {
        v13 &= *&v7 - 1;
      }

      if (v13 != v10)
      {
        goto LABEL_18;
      }

LABEL_17:
      v12 = *v12;
      if (!v12)
      {
        goto LABEL_18;
      }
    }

    if (!std::equal_to<std::string>::operator()[abi:ne200100](v12 + 2, i + 2))
    {
      goto LABEL_17;
    }
  }

  return a1;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,unsigned long>,void *>>>::operator()[abi:ne200100](char a1, void **__p)
{
  if (a1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

xpc_object_t ___ZN5marrs2qr13orchestration24QueryRewriteOrchestrator15doCoreAnalyticsENS1_15InferenceStatusElRKNSt3__16vectorIfNS4_9allocatorIfEEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = xpc_dictionary_create(0, 0, 0);
  __p[0] = 0;
  __p[1] = 0;
  v11 = 0;
  v4 = *(a1 + 48);
  if (v4 >= 4)
  {
    v5 = "UNKNOWN";
  }

  else
  {
    v5 = (&off_2784B4FB8)[v4];
  }

  MEMORY[0x223DC1FB0](__p, v5);
  if (v3)
  {
    if (v11 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    xpc_dictionary_set_string(v3, "rewriteStatus", v6);
    xpc_dictionary_set_uint64(v3, "numberOfRewrites", *(a1 + 40));
    xpc_dictionary_set_double(v3, "topPredictionProbability", *(a1 + 52));
    v7 = (v2 + 88);
    if (*(v2 + 111) < 0)
    {
      v7 = *v7;
    }

    xpc_dictionary_set_string(v3, "locale", v7);
    v8 = (v2 + 112);
    if (*(v2 + 135) < 0)
    {
      v8 = *v8;
    }

    xpc_dictionary_set_string(v3, "assetVersion", v8);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

void sub_2227C8D08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void marrs::qr::orchestration::AerOrchestrator::predict(const QRRequest *this@<X0>, const QRRequest *a2@<X1>, marrs::qr::orchestration::QueryRewriteOrchestrator *a3@<X8>)
{
  (*(*&this->var0 + 24))(this);

  marrs::qr::orchestration::QueryRewriteOrchestrator::Handle(a3, this, a2, 1, 0);
}

void marrs::qr::orchestration::AerOrchestrator::~AerOrchestrator(void **this)
{
  marrs::qr::orchestration::QueryRewriteOrchestrator::~QueryRewriteOrchestrator(this);

  JUMPOUT(0x223DC2360);
}

void non-virtual thunk tomarrs::qr::orchestration::CbROrchestrator::~CbROrchestrator(void **this)
{
  marrs::qr::orchestration::QueryRewriteOrchestrator::~QueryRewriteOrchestrator(this - 41);

  JUMPOUT(0x223DC2360);
}

{
  marrs::qr::orchestration::QueryRewriteOrchestrator::~QueryRewriteOrchestrator(this - 41);
}

void non-virtual thunk tomarrs::qr::orchestration::CbROrchestrator::predict(marrs::qr::orchestration::CbROrchestrator *this@<X0>, const QRRequest *a2@<X1>, marrs::qr::orchestration::QueryRewriteOrchestrator *a3@<X8>)
{
  v5 = (this - 328);
  (*(*(this - 41) + 24))(this - 328);

  marrs::qr::orchestration::QueryRewriteOrchestrator::Handle(a3, v5, a2, 0, 1);
}

void marrs::qr::orchestration::CbROrchestrator::predict(const QRRequest *this@<X0>, const QRRequest *a2@<X1>, marrs::qr::orchestration::QueryRewriteOrchestrator *a3@<X8>)
{
  (*(*&this->var0 + 24))(this);

  marrs::qr::orchestration::QueryRewriteOrchestrator::Handle(a3, this, a2, 0, 1);
}

void marrs::qr::orchestration::CbROrchestrator::~CbROrchestrator(void **this)
{
  marrs::qr::orchestration::QueryRewriteOrchestrator::~QueryRewriteOrchestrator(this);

  JUMPOUT(0x223DC2360);
}

void std::vector<marrs::qr::orchestration::QRHypothesis>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<marrs::qr::orchestration::QRHypothesis>::clear[abi:ne200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<marrs::qr::orchestration::QRHypothesis>,marrs::qr::orchestration::QRHypothesis*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      if (*(v3 - 17) < 0)
      {
        operator delete(*(v3 - 40));
      }

      v3 -= 56;
    }
  }

  return a1;
}

void marrs::qr::orchestration::QueryRewriteOrchestrator::QueryRewriteOrchestrator(uint64_t a1, std::string *a2, const std::string *a3)
{
  v69 = *MEMORY[0x277D85DE8];
  *a1 = &unk_2835DE4D0;
  *(a1 + 8) = 0;
  marrs::qr::processing::Vocab::Vocab((a1 + 16), 0, 0);
  *(a1 + 88) = 0u;
  v44 = a1 + 88;
  v45 = a1;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  marrs::qr::processing::Vocab::Vocab((a1 + 136), 0, 0);
  *(a1 + 208) = 0;
  v6 = (a1 + 264);
  *(a1 + 231) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 235) = 1;
  *(a1 + 236) = 0x2200000002;
  *(a1 + 248) = xmmword_2228324B0;
  *(a1 + 264) = xmmword_2228324C0;
  *(a1 + 280) = 32;
  *(a1 + 288) = 32;
  *(a1 + 296) = 26;
  *(a1 + 304) = 0;
  v7 = (a1 + 304);
  v42 = a1 + 208;
  *(a1 + 312) = 0;
  *(a1 + 316) = 0x447A000000000000;
  std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v59, a2);
  std::__fs::filesystem::path::path[abi:ne200100]<char [10],void>(&__p, "vocab.txt");
  std::__fs::filesystem::operator/[abi:ne200100](&v58, &v59, &__p);
  if (SHIBYTE(__p.__sb_.__extbufend_) < 0)
  {
    operator delete(__p.__sb_.__extbuf_);
  }

  memset(&v63, 0, sizeof(v63));
  std::string::append[abi:ne200100]<char const*,0>(&v63, "embedder.mlmodelc", "");
  std::__fs::filesystem::operator/[abi:ne200100](&__p, &v59, &v63);
  std::__fs::filesystem::path::path[abi:ne200100]<char [19],void>(&__str, "model.espresso.net");
  std::__fs::filesystem::operator/[abi:ne200100](&v57, &__p, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__sb_.__extbufend_) < 0)
  {
    operator delete(__p.__sb_.__extbuf_);
  }

  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v63.__r_.__value_.__l.__data_);
  }

  std::__fs::filesystem::path::path[abi:ne200100]<char [17],void>(&v63, "encoder.mlmodelc");
  std::__fs::filesystem::operator/[abi:ne200100](&__p, &v59, &v63);
  std::__fs::filesystem::path::path[abi:ne200100]<char [19],void>(&__str, "model.espresso.net");
  std::__fs::filesystem::operator/[abi:ne200100](&v56, &__p, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__sb_.__extbufend_) < 0)
  {
    operator delete(__p.__sb_.__extbuf_);
  }

  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v63.__r_.__value_.__l.__data_);
  }

  std::__fs::filesystem::path::path[abi:ne200100]<char [17],void>(&v63, "decoder.mlmodelc");
  std::__fs::filesystem::operator/[abi:ne200100](&__p, &v59, &v63);
  std::__fs::filesystem::path::path[abi:ne200100]<char [19],void>(&__str, "model.espresso.net");
  std::__fs::filesystem::operator/[abi:ne200100](&v55, &__p, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__sb_.__extbufend_) < 0)
  {
    operator delete(__p.__sb_.__extbuf_);
  }

  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v63.__r_.__value_.__l.__data_);
  }

  std::__fs::filesystem::path::path[abi:ne200100]<char [13],void>(&__p, "char_voc.txt");
  std::__fs::filesystem::operator/[abi:ne200100](&v54, &v59, &__p);
  if (SHIBYTE(__p.__sb_.__extbufend_) < 0)
  {
    operator delete(__p.__sb_.__extbuf_);
  }

  std::__fs::filesystem::path::path[abi:ne200100]<char [13],void>(&v63, "ane.mlmodelc");
  std::__fs::filesystem::operator/[abi:ne200100](&__p, &v59, &v63);
  std::__fs::filesystem::path::path[abi:ne200100]<char [19],void>(&__str, "model.espresso.net");
  std::__fs::filesystem::operator/[abi:ne200100](&v53, &__p, &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__sb_.__extbufend_) < 0)
  {
    operator delete(__p.__sb_.__extbuf_);
  }

  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v63.__r_.__value_.__l.__data_);
  }

  std::__fs::filesystem::path::path[abi:ne200100]<char [13],void>(&__p, "version.yaml");
  std::__fs::filesystem::operator/[abi:ne200100](&v52, &v59, &__p);
  if (SHIBYTE(__p.__sb_.__extbufend_) < 0)
  {
    operator delete(__p.__sb_.__extbuf_);
  }

  std::__fs::filesystem::path::path[abi:ne200100]<char [12],void>(&__p, "config.json");
  std::__fs::filesystem::operator/[abi:ne200100](&v51, &v59, &__p);
  if (SHIBYTE(__p.__sb_.__extbufend_) < 0)
  {
    operator delete(__p.__sb_.__extbuf_);
  }

  if (marrs::qr::orchestration::SignpostsUtils::createCcqrAerContext(void)::once != -1)
  {
    dispatch_once(&marrs::qr::orchestration::SignpostsUtils::createCcqrAerContext(void)::once, &__block_literal_global_5);
  }

  v8 = marrs::qr::orchestration::SignpostsUtils::createCcqrAerContext(void)::ccqrAerLogContext;
  v9 = os_signpost_id_generate(marrs::qr::orchestration::SignpostsUtils::createCcqrAerContext(void)::ccqrAerLogContext);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    LOWORD(__p.__sb_.__extbuf_) = 0;
    _os_signpost_emit_with_name_impl(&dword_2227A9000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v9, "AssetLoad", "CCQRAer Asset loading", &__p, 2u);
  }

  v43 = v6;
  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__s, v52.__r_.__value_.__l.__data_, v52.__r_.__value_.__l.__size_);
  }

  else
  {
    __s = v52;
  }

  v66.__loc_ = 0;
  __p.__sb_.__extbuf_ = &unk_2835DF128;
  v66.__vftable = &unk_2835DF150;
  __p.__sb_.__extbufnext_ = 0;
  std::ios_base::init(&v66, __p.__sb_.__extbuf_min_);
  v68 = -1;
  v67 = 0;
  MEMORY[0x223DC2070](__p.__sb_.__extbuf_min_);
  std::fstream::open(&__p, &__s, v10);
  v50[0] = 0;
  v50[1] = 0;
  v49 = v50;
  if (*(&__p.__sb_.__st_._mbstateL + 9))
  {
    v41 = a3;
    memset(&__str, 0, sizeof(__str));
    memset(&v61, 0, sizeof(v61));
    memset(&v60, 0, sizeof(v60));
    v11 = MEMORY[0x277D82680];
LABEL_43:
    while (1)
    {
      std::ios_base::getloc((&__p + *(__p.__sb_.__extbuf_ - 3)));
      v12 = std::locale::use_facet(&v63, v11);
      v13 = (v12->__vftable[2].~facet_0)(v12, 10);
      std::locale::~locale(&v63);
      std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, &__str, v13);
      if ((__p.__sb_.__extbuf_min_[*(__p.__sb_.__extbuf_ - 3) + 8] & 5) != 0)
      {
        break;
      }

      MEMORY[0x223DC2220](&v63);
      boost::algorithm::trim<std::string>(&__str, &v63);
      std::locale::~locale(&v63);
      size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_str = &__str;
      }

      else
      {
        p_str = __str.__r_.__value_.__r.__words[0];
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __str.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        v16 = (p_str + size);
        v17 = p_str;
        while (v17->__r_.__value_.__s.__data_[0] != 58)
        {
          v17 = (v17 + 1);
          if (!--size)
          {
            goto LABEL_43;
          }
        }

        if (v17 != v16)
        {
          v18 = v17 - p_str;
          if (v17 - p_str != -1)
          {
            std::string::basic_string(&v63, &__str, 0, v17 - p_str, &v64);
            if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v61.__r_.__value_.__l.__data_);
            }

            v61 = v63;
            MEMORY[0x223DC2220](&v63);
            boost::algorithm::trim<std::string>(&v61, &v63);
            std::locale::~locale(&v63);
            std::string::basic_string(&v63, &__str, v18 + 1, 0xFFFFFFFFFFFFFFFFLL, &v64);
            if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v60.__r_.__value_.__l.__data_);
            }

            v60 = v63;
            MEMORY[0x223DC2220](&v63);
            boost::algorithm::trim<std::string>(&v60, &v63);
            std::locale::~locale(&v63);
            v19 = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<void>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(&v49, &v64, &v61.__r_.__value_.__l.__data_);
            if (!v19)
            {
              operator new();
            }

            std::string::operator=((v19 + 56), &v60);
          }
        }
      }
    }

    if (!std::filebuf::close())
    {
      std::ios_base::clear((&__p + *(__p.__sb_.__extbuf_ - 3)), *&__p.__sb_.__extbuf_min_[*(__p.__sb_.__extbuf_ - 3) + 8] | 4);
    }

    a3 = v41;
    if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v60.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v61.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }
  }

  else if (!std::filebuf::close())
  {
    std::ios_base::clear((&__p + *(__p.__sb_.__extbuf_ - 3)), *&__p.__sb_.__extbuf_min_[*(__p.__sb_.__extbuf_ - 3) + 8] | 4);
  }

  MEMORY[0x223DC2080](__p.__sb_.__extbuf_min_);
  std::iostream::~basic_iostream();
  MEMORY[0x223DC2270](&v66);
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  std::string::operator=(v44, a3);
  v20 = v50[0];
  if (!v50[0])
  {
    goto LABEL_86;
  }

  v21 = v50;
  do
  {
    v22 = v21;
    v23 = (v20 + 32);
    v24 = std::string::compare((v20 + 32), "version");
    if (v24 >= 0)
    {
      v21 = v20;
    }

    else
    {
      v21 = v22;
    }

    v20 = *(v20 + ((v24 >> 28) & 8));
  }

  while (v20);
  if (v21 != v50 && (v24 >= 0 ? (v25 = v23) : (v25 = (v22 + 4)), std::string::compare(v25, "version") < 1))
  {
    std::string::basic_string[abi:ne200100]<0>(&__s, "version");
    v31 = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<void>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(&v49, &__str, &__s.__r_.__value_.__l.__data_);
    if (!v31)
    {
      operator new();
    }

    if (*(v31 + 79) < 0)
    {
      std::string::__init_copy_ctor_external(&v63, *(v31 + 56), *(v31 + 64));
      v26 = 0;
    }

    else
    {
      v26 = 0;
      v63 = *(v31 + 56);
    }
  }

  else
  {
LABEL_86:
    std::string::basic_string[abi:ne200100]<0>(&v63, "Undefined");
    v26 = 1;
  }

  if (*(v45 + 135) < 0)
  {
    operator delete(*(v44 + 24));
  }

  *(v44 + 24) = v63;
  *(&v63.__r_.__value_.__s + 23) = 0;
  v63.__r_.__value_.__s.__data_[0] = 0;
  if ((v26 & 1) == 0 && SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v63, v58.__r_.__value_.__l.__data_, v58.__r_.__value_.__l.__size_);
  }

  else
  {
    v63 = v58;
  }

  *&__p.__sb_.__extbuf_ = *&v63.__r_.__value_.__l.__data_;
  __p.__sb_.__extbufend_ = v63.__r_.__value_.__r.__words[2];
  memset(&v63, 0, sizeof(v63));
  std::__fs::filesystem::__status(&__p, 0);
  v27 = __str.__r_.__value_.__s.__data_[0];
  if (SHIBYTE(__p.__sb_.__extbufend_) < 0)
  {
    operator delete(__p.__sb_.__extbuf_);
  }

  if (v27 != 255 && v27)
  {
    marrs::qr::processing::Vocab::Vocab(&__p, 0, 1u);
    std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__move_assign(v45 + 16, &__p);
    std::vector<std::string>::__vdeallocate((v45 + 56));
    *(v45 + 56) = *&__p.__sb_.__intbuf_;
    *(v45 + 72) = __p.__sb_.__file_;
    memset(&__p.__sb_.__intbuf_, 0, 24);
    *(v45 + 80) = __p.__sb_.__cv_;
    v63.__r_.__value_.__r.__words[0] = &__p.__sb_.__intbuf_;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v63);
    std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__deallocate_node(__p.__sb_.__extbufend_);
    extbuf = __p.__sb_.__extbuf_;
    __p.__sb_.__extbuf_ = 0;
    if (extbuf)
    {
      operator delete(extbuf);
    }

    if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v47, v58.__r_.__value_.__l.__data_, v58.__r_.__value_.__l.__size_);
    }

    else
    {
      v47 = v58;
    }

    marrs::qr::orchestration::QueryRewriteOrchestrator::InitializeVocabFromPath((v45 + 16), &v47);
    if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v47.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v63, v54.__r_.__value_.__l.__data_, v54.__r_.__value_.__l.__size_);
    }

    else
    {
      v63 = v54;
    }

    *&__p.__sb_.__extbuf_ = *&v63.__r_.__value_.__l.__data_;
    __p.__sb_.__extbufend_ = v63.__r_.__value_.__r.__words[2];
    memset(&v63, 0, sizeof(v63));
    std::__fs::filesystem::__status(&__p, 0);
    v29 = __str.__r_.__value_.__s.__data_[0];
    if (SHIBYTE(__p.__sb_.__extbufend_) < 0)
    {
      operator delete(__p.__sb_.__extbuf_);
    }

    if (v29 && v29 != 255)
    {
      marrs::qr::processing::Vocab::Vocab(&__p, 1, 1u);
      std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__move_assign(v44 + 48, &__p);
      std::vector<std::string>::__vdeallocate((v45 + 176));
      *(v45 + 176) = *&__p.__sb_.__intbuf_;
      *(v45 + 192) = __p.__sb_.__file_;
      memset(&__p.__sb_.__intbuf_, 0, 24);
      *(v45 + 200) = __p.__sb_.__cv_;
      v63.__r_.__value_.__r.__words[0] = &__p.__sb_.__intbuf_;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v63);
      std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__deallocate_node(__p.__sb_.__extbufend_);
      v30 = __p.__sb_.__extbuf_;
      __p.__sb_.__extbuf_ = 0;
      if (v30)
      {
        operator delete(v30);
      }

      if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v46, v54.__r_.__value_.__l.__data_, v54.__r_.__value_.__l.__size_);
      }

      else
      {
        v46 = v54;
      }

      marrs::qr::orchestration::QueryRewriteOrchestrator::InitializeVocabFromPath((v44 + 48), &v46);
      if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v46.__r_.__value_.__l.__data_);
      }
    }

    if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v63, v51.__r_.__value_.__l.__data_, v51.__r_.__value_.__l.__size_);
    }

    else
    {
      v63 = v51;
    }

    *&__p.__sb_.__extbuf_ = *&v63.__r_.__value_.__l.__data_;
    __p.__sb_.__extbufend_ = v63.__r_.__value_.__r.__words[2];
    memset(&v63, 0, sizeof(v63));
    std::__fs::filesystem::__status(&__p, 0);
    v32 = __str.__r_.__value_.__s.__data_[0];
    if (SHIBYTE(__p.__sb_.__extbufend_) < 0)
    {
      operator delete(__p.__sb_.__extbuf_);
    }

    if (v32 != 255 && v32)
    {
      v35 = QRLoggerForCategory(0);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(__p.__sb_.__extbuf_) = 136315138;
        *(&__p.__sb_.__extbuf_ + 4) = "QueryRewriteOrchestrator";
        _os_log_debug_impl(&dword_2227A9000, v35, OS_LOG_TYPE_DEBUG, "%s Using default config for CCQR initialization", &__p, 0xCu);
      }

      if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v63, v51.__r_.__value_.__l.__data_, v51.__r_.__value_.__l.__size_);
      }

      else
      {
        v63 = v51;
      }

      TypedJson<CcqrConfig>::fromJson(&__p, &v63);
      v36 = *&__p.__sb_.__ibs_;
      *(v42 + 56) = *&__p.__sb_.__ebs_;
      *(v42 + 72) = v36;
      *(v42 + 88) = *&__p.__sb_.__cv_;
      *(v42 + 100) = *(&__p.__sb_.__st_._mbstateL + 4);
      v37 = *&__p.__sb_.__extbufend_;
      *(v42 + 24) = *&__p.__sb_.__extbuf_;
      *(v42 + 40) = v37;
      if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v63.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      *(v45 + 232) = 0x1000000;
      *(v45 + 236) = 0x2200000002;
      *(v45 + 244) = 0;
      *(v45 + 248) = xmmword_2228324B0;
      *v43 = xmmword_2228324C0;
      v43[1] = xmmword_2228324D0;
      *(v45 + 296) = 26;
      *v7 = 0;
      v7[1] = 0;
      *(v45 + 320) = 1148846080;
      v33 = QRLoggerForCategory(0);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        v34 = &v51;
        if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v34 = v51.__r_.__value_.__r.__words[0];
        }

        LODWORD(__p.__sb_.__extbuf_) = 136315394;
        *(&__p.__sb_.__extbuf_ + 4) = "QueryRewriteOrchestrator";
        WORD2(__p.__sb_.__extbufnext_) = 2080;
        *(&__p.__sb_.__extbufnext_ + 6) = v34;
        _os_log_debug_impl(&dword_2227A9000, v33, OS_LOG_TYPE_DEBUG, "%s Unable to load json config file from %s", &__p, 0x16u);
      }
    }

    operator new();
  }

  exception = __cxa_allocate_exception(0x30uLL);
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v63, v58.__r_.__value_.__l.__data_, v58.__r_.__value_.__l.__size_);
  }

  else
  {
    v63 = v58;
  }

  v39 = std::string::insert(&v63, 0, "Token-level vocabulary does not exist: ");
  v40 = *&v39->__r_.__value_.__l.__data_;
  __p.__sb_.__extbufend_ = v39->__r_.__value_.__r.__words[2];
  *&__p.__sb_.__extbuf_ = v40;
  v39->__r_.__value_.__l.__size_ = 0;
  v39->__r_.__value_.__r.__words[2] = 0;
  v39->__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&__str, "QueryRewrite");
  ConfigLoadingError::ConfigLoadingError(exception, &__p, &__str, "/Library/Caches/com.apple.xbs/Sources/Marrs/Marrs/query_rewrite/orchestration/QROrchestrator.cpp", 49);
}

void sub_2227CA4B4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, os_signpost_id_t spid, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, NSObject *log, unint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, void *a45)
{
  if (a2)
  {
    if (a42 < 0)
    {
      operator delete(__p);
    }

    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<void>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a45);
    __cxa_begin_catch(a1);
    if (a24 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(log))
    {
      LOWORD(STACK[0x210]) = 0;
      _os_signpost_emit_with_name_impl(&dword_2227A9000, log, OS_SIGNPOST_INTERVAL_END, spid, "AssetLoad", " enableTelemetry=YES ", &STACK[0x210], 2u);
    }

    std::current_exception();
    v46.__ptr_ = &a28;
    std::rethrow_exception(v46);
    JUMPOUT(0x2227CAA70);
  }

  _Unwind_Resume(a1);
}

void sub_2227CAA74(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::exception_ptr a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  std::exception_ptr::~exception_ptr(&a28);
  __cxa_end_catch();
  if (a49 < 0)
  {
    JUMPOUT(0x2227CAA90);
  }

  JUMPOUT(0x2227CAA94);
}

void sub_2227CAB84(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x2227CAB8CLL);
  }

  __clang_call_terminate(a1);
}

std::string *std::__fs::filesystem::path::path[abi:ne200100]<char [17],void>(std::string *this, std::string *a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  v3 = (a2 - 1);
  do
  {
    v4 = v3->__r_.__value_.__s.__data_[1];
    v3 = (v3 + 1);
  }

  while (v4);
  std::string::append[abi:ne200100]<char const*,0>(this, a2, v3);
  return this;
}

void sub_2227CABDC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *ConfigLoadingError::ConfigLoadingError(void *a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v5 = a5;
  std::operator+<char>();
  v10 = std::string::append(&v18, " to load model bundle: ");
  v11 = *&v10->__r_.__value_.__l.__data_;
  v19.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v19.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = *(a2 + 23);
  if (v12 >= 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = *a2;
  }

  if (v12 >= 0)
  {
    v14 = *(a2 + 23);
  }

  else
  {
    v14 = *(a2 + 8);
  }

  v15 = std::string::append(&v19, v13, v14);
  v16 = *&v15->__r_.__value_.__l.__data_;
  v21 = v15->__r_.__value_.__r.__words[2];
  *__p = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  BaseException::BaseException(a1, __p, a3, a4, v5);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  *a1 = &unk_2835DEEF8;
  return a1;
}

void sub_2227CAD1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__move_assign(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::__deallocate_node(*(a1 + 16));
    *(a1 + 16) = 0;
    v4 = *(a1 + 8);
    if (v4)
    {
      for (i = 0; i != v4; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }

  v6 = *a2;
  *a2 = 0;
  v7 = *a1;
  *a1 = v6;
  if (v7)
  {
    operator delete(v7);
  }

  v10 = a2[2];
  v9 = a2 + 2;
  v8 = v10;
  v11 = *(v9 - 1);
  *(a1 + 16) = v10;
  *(a1 + 8) = v11;
  *(v9 - 1) = 0;
  v12 = v9[1];
  *(a1 + 24) = v12;
  *(a1 + 32) = *(v9 + 4);
  if (v12)
  {
    v13 = *(v8 + 8);
    v14 = *(a1 + 8);
    if ((v14 & (v14 - 1)) != 0)
    {
      if (v13 >= v14)
      {
        v13 %= v14;
      }
    }

    else
    {
      v13 &= v14 - 1;
    }

    *(*a1 + 8 * v13) = a1 + 16;
    *v9 = 0;
    v9[1] = 0;
  }
}

uint64_t marrs::qr::orchestration::QueryRewriteOrchestrator::InitializeVocabFromPath(int8x8_t *a1, uint64_t a2)
{
  v18[19] = *MEMORY[0x277D85DE8];
  v18[6] = 0;
  v3 = MEMORY[0x277D82858] + 64;
  v18[0] = MEMORY[0x277D82858] + 64;
  v4 = MEMORY[0x277D82808];
  v5 = *(MEMORY[0x277D82808] + 16);
  v16[0] = *(MEMORY[0x277D82808] + 8);
  *(v16 + *(v16[0] - 24)) = v5;
  v16[1] = 0;
  v6 = (v16 + *(v16[0] - 24));
  std::ios_base::init(v6, v17);
  v7 = MEMORY[0x277D82858] + 24;
  v6[1].__vftable = 0;
  v6[1].__fmtflags_ = -1;
  v16[0] = v7;
  v18[0] = v3;
  MEMORY[0x223DC2070](v17);
  std::ifstream::open();
  if (!v17[15])
  {
    exception = __cxa_allocate_exception(0x30uLL);
    std::operator+<char>();
    std::string::basic_string[abi:ne200100]<0>(&v13, "QueryRewrite");
    ConfigLoadingError::ConfigLoadingError(exception, &__p, &v13, "/Library/Caches/com.apple.xbs/Sources/Marrs/Marrs/query_rewrite/orchestration/QROrchestrator.cpp", 79);
  }

  __p = 0uLL;
  v15 = 0;
  v8 = MEMORY[0x277D82680];
  while (1)
  {
    std::ios_base::getloc((v16 + *(v16[0] - 24)));
    v9 = std::locale::use_facet(&v13, v8);
    v10 = (v9->__vftable[2].~facet_0)(v9, 10);
    std::locale::~locale(&v13);
    std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v16, &__p, v10);
    if ((*(&v17[2] + *(v16[0] - 24)) & 5) != 0)
    {
      break;
    }

    marrs::qr::processing::Vocab::addWord(a1, &__p);
  }

  if (!std::filebuf::close())
  {
    std::ios_base::clear((v16 + *(v16[0] - 24)), *(&v17[2] + *(v16[0] - 24)) | 4);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p);
  }

  v16[0] = *v4;
  *(v16 + *(v16[0] - 24)) = v4[3];
  MEMORY[0x223DC2080](v17);
  std::istream::~istream();
  return MEMORY[0x223DC2270](v18);
}

void sub_2227CB200(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
    if ((v24 & 1) == 0)
    {
LABEL_8:
      std::ifstream::~ifstream(&a22);
      MEMORY[0x223DC2270](v22);
      _Unwind_Resume(a1);
    }
  }

  else if (!v24)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v23);
  goto LABEL_8;
}

void marrs::qr::processing::Vocab::~Vocab(marrs::qr::processing::Vocab *this)
{
  v2 = (this + 40);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);

  std::__hash_table<std::__hash_value_type<std::string,unsigned long>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned long>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned long>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned long>>>::~__hash_table(this);
}

uint64_t std::ifstream::~ifstream(void *a1)
{
  v1 = MEMORY[0x277D82808];
  v2 = *MEMORY[0x277D82808];
  *a1 = *MEMORY[0x277D82808];
  *(a1 + *(v2 - 24)) = *(v1 + 24);
  MEMORY[0x223DC2080](a1 + 2);

  return std::istream::~istream();
}

void ConfigLoadingError::~ConfigLoadingError(std::exception *this)
{
  BaseException::~BaseException(this);

  JUMPOUT(0x223DC2360);
}

void *std::string::__init_with_size[abi:ne200100]<char const*,char const*>(void *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = __dst;
  if (a4 > 0x16)
  {
    operator new();
  }

  *(__dst + 23) = a4;
  v5 = a3 - __src;
  if (a3 != __src)
  {
    __dst = memmove(__dst, __src, v5);
  }

  *(v4 + v5) = 0;
  return __dst;
}

uint64_t std::__split_buffer<std::vector<unsigned long>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v4 = *(v2 - 24);
    *(a1 + 16) = v2 - 24;
    if (v4)
    {
      *(v2 - 16) = v4;
      operator delete(v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 24;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *InferenceError::InferenceError(void *a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v5 = a5;
  std::operator+<char>();
  v10 = std::string::append(&v18, " occurred during inference: ");
  v11 = *&v10->__r_.__value_.__l.__data_;
  v19.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&v19.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = *(a2 + 23);
  if (v12 >= 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = *a2;
  }

  if (v12 >= 0)
  {
    v14 = *(a2 + 23);
  }

  else
  {
    v14 = *(a2 + 8);
  }

  v15 = std::string::append(&v19, v13, v14);
  v16 = *&v15->__r_.__value_.__l.__data_;
  v21 = v15->__r_.__value_.__r.__words[2];
  *__p = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  BaseException::BaseException(a1, __p, a3, a4, v5);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  *a1 = &unk_2835DF6E8;
  return a1;
}

void sub_2227CB64C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<marrs::qr::inference_engine::ANEEmbeddingModuleOutputType>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 48;
        std::allocator<marrs::qr::inference_engine::ANEEmbeddingModuleOutputType>::destroy[abi:ne200100](v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void marrs::qr::orchestration::QRToken::~QRToken(void **this)
{
  if (*(this + 159) < 0)
  {
    operator delete(this[17]);
  }

  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
  }

  v2 = this + 6;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void std::allocator<marrs::qr::inference_engine::ANEEmbeddingModuleOutputType>::destroy[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;

    operator delete(v3);
  }
}

void InferenceError::~InferenceError(std::exception *this)
{
  BaseException::~BaseException(this);

  JUMPOUT(0x223DC2360);
}

void std::vector<unsigned long>::push_back[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::vector<std::string>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(v11);
    }

    v12 = (8 * (v8 >> 3));
    *v12 = *a2;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    v13 = *a1;
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::__emplace_back_slow_path<std::string&>(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<std::string>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  v16.__end_cap_.__value_ = a1;
  if (v5)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(v5);
  }

  begin = (24 * v2);
  v16.__first_ = 0;
  v16.__begin_ = (24 * v2);
  value = 0;
  v16.__end_ = (24 * v2);
  v16.__end_cap_.__value_ = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(begin, *a2, *(a2 + 1));
    begin = v16.__begin_;
    end = v16.__end_;
    value = v16.__end_cap_.__value_;
  }

  else
  {
    v8 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *&begin->__r_.__value_.__l.__data_ = v8;
    end = (24 * v2);
  }

  v10 = end + 1;
  v11 = *(a1 + 8) - *a1;
  v12 = begin - v11;
  memcpy(begin - v11, *a1, v11);
  v13 = *a1;
  *a1 = v12;
  *(a1 + 8) = v10;
  v14 = *(a1 + 16);
  *(a1 + 16) = value;
  v16.__end_ = v13;
  v16.__end_cap_.__value_ = v14;
  v16.__first_ = v13;
  v16.__begin_ = v13;
  std::__split_buffer<std::string>::~__split_buffer(&v16);
  return v10;
}

marrs::mrr::mr::MRREntity *marrs::mrr::mr::MRREntity::MRREntity(marrs::mrr::mr::MRREntity *this, const marrs::mrr::mr::MRREntity *a2)
{
  *this = *a2;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((this + 8), *(a2 + 1), *(a2 + 2));
  }

  else
  {
    v4 = *(a2 + 8);
    *(this + 3) = *(a2 + 3);
    *(this + 8) = v4;
  }

  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((this + 32), *(a2 + 4), *(a2 + 5));
  }

  else
  {
    v5 = *(a2 + 2);
    *(this + 6) = *(a2 + 6);
    *(this + 2) = v5;
  }

  if (*(a2 + 79) < 0)
  {
    std::string::__init_copy_ctor_external((this + 56), *(a2 + 7), *(a2 + 8));
  }

  else
  {
    v6 = *(a2 + 56);
    *(this + 9) = *(a2 + 9);
    *(this + 56) = v6;
  }

  v7 = *(a2 + 5);
  v8 = *(a2 + 92);
  *(this + 14) = 0;
  *(this + 92) = v8;
  *(this + 5) = v7;
  *(this + 15) = 0;
  *(this + 16) = 0;
  std::vector<marrs::mrr::mr::SurroundingText>::__init_with_size[abi:ne200100]<marrs::mrr::mr::SurroundingText*,marrs::mrr::mr::SurroundingText*>(this + 14, *(a2 + 14), *(a2 + 15), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 15) - *(a2 + 14)) >> 3));
  if (*(a2 + 159) < 0)
  {
    std::string::__init_copy_ctor_external((this + 136), *(a2 + 17), *(a2 + 18));
  }

  else
  {
    v9 = *(a2 + 136);
    *(this + 19) = *(a2 + 19);
    *(this + 136) = v9;
  }

  *(this + 40) = *(a2 + 40);
  if (*(a2 + 191) < 0)
  {
    std::string::__init_copy_ctor_external(this + 7, *(a2 + 21), *(a2 + 22));
  }

  else
  {
    v10 = *(a2 + 168);
    *(this + 23) = *(a2 + 23);
    *(this + 168) = v10;
  }

  *(this + 24) = 0;
  *(this + 25) = 0;
  *(this + 26) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this + 24, *(a2 + 24), *(a2 + 25), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 25) - *(a2 + 24)) >> 3));
  return this;
}

void sub_2227CBBBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (*(v4 + 159) < 0)
  {
    operator delete(*(v4 + 136));
  }

  std::vector<marrs::mrr::mr::SurroundingText>::__destroy_vector::operator()[abi:ne200100](va);
  if (*(v4 + 79) < 0)
  {
    operator delete(*(v4 + 56));
  }

  if (*(v4 + 55) < 0)
  {
    operator delete(*(v4 + 32));
  }

  if (*(v4 + 31) < 0)
  {
    operator delete(*v3);
  }

  _Unwind_Resume(a1);
}

void marrs::mrr::mr::MRREntity::~MRREntity(void **this)
{
  v2 = this + 24;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 191) < 0)
  {
    operator delete(this[21]);
  }

  if (*(this + 159) < 0)
  {
    operator delete(this[17]);
  }

  v2 = this + 14;
  std::vector<marrs::mrr::mr::SurroundingText>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

void std::vector<marrs::mrr::mr::SurroundingText>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<marrs::mrr::mr::SurroundingText>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<marrs::mrr::mr::SurroundingText>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 17);
    v3 -= 5;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

uint64_t *std::vector<marrs::mrr::mr::SurroundingText>::__init_with_size[abi:ne200100]<marrs::mrr::mr::SurroundingText*,marrs::mrr::mr::SurroundingText*>(uint64_t *result, int a2, int a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<marrs::mrr::mr::SurroundingText>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2227CBDF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<marrs::mrr::mr::SurroundingText>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<marrs::mrr::mr::SurroundingText>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<marrs::mrr::mr::SurroundingText>>(a2);
  }

  std::vector<std::string>::__throw_length_error[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<marrs::mrr::mr::SurroundingText>,marrs::mrr::mr::SurroundingText*,marrs::mrr::mr::SurroundingText*,marrs::mrr::mr::SurroundingText*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v12 = this;
  v13 = this;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  v11 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v8 = v13;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
        v8 = v4;
      }

      *&v4[1].__r_.__value_.__l.__data_ = *(v6 + 24);
      v6 = (v6 + 40);
      v4 = (v8 + 40);
      v13 = (v8 + 40);
    }

    while (v6 != a3);
  }

  v11 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<marrs::mrr::mr::SurroundingText>,marrs::mrr::mr::SurroundingText*>>::~__exception_guard_exceptions[abi:ne200100](v10);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<marrs::mrr::mr::SurroundingText>,marrs::mrr::mr::SurroundingText*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 17);
      v3 -= 5;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<marrs::mrr::mr::SurroundingText>>(unint64_t a1)
{
  if (a1 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_2784B4EB8, MEMORY[0x277D825F8]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E8] + 16);
  return result;
}

void marrs::mrr::mr::pickTopSalientEntity(void *a1, uint64_t *a2, unint64_t *a3, unint64_t *a4)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5 && a3 != a4)
  {
    v7 = a3;
    v8 = 0x84BDA12F684BDA13 * ((v5 - v4) >> 3);
    v9 = -1.0;
    v10 = a3;
    do
    {
      if (v8 <= *v10)
      {
        std::vector<marrs::mrr::mr::MRREntity>::__throw_out_of_range[abi:ne200100]();
      }

      v11 = v4 + 216 * *v10;
      if (*(v11 + 96) > v9)
      {
        v9 = *(v11 + 96);
      }

      ++v10;
    }

    while (v10 != a4);
    do
    {
      if (0x84BDA12F684BDA13 * ((a2[1] - *a2) >> 3) <= *v7)
      {
        std::vector<marrs::mrr::mr::MRREntity>::__throw_out_of_range[abi:ne200100]();
      }

      if (vabdd_f64(*(*a2 + 216 * *v7 + 96), v9) < 0.0001)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(1uLL);
      }

      ++v7;
    }

    while (v7 != a4);
  }
}

void sub_2227CC25C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    *(v10 + 8) = __p;
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *marrs::mrr::mr::enumerateAllIndices(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = std::vector<unsigned long>::vector[abi:ne200100](a1, 0x84BDA12F684BDA13 * ((a3 - a2) >> 3));
  v4 = *result;
  v5 = result[1];
  if (*result != v5)
  {
    v6 = 0;
    v7 = (v5 - v4 - 8) >> 3;
    v8 = vdupq_n_s64(v7);
    v9 = (v7 + 2) & 0x3FFFFFFFFFFFFFFELL;
    v10 = xmmword_2228320F0;
    v11 = vdupq_n_s64(2uLL);
    do
    {
      v12 = vmovn_s64(vcgeq_u64(v8, v10));
      if (v12.i8[0])
      {
        *(v4 + 8 * v6) = v6;
      }

      if (v12.i8[4])
      {
        *(v4 + 8 * v6 + 8) = v6 + 1;
      }

      v6 += 2;
      v10 = vaddq_s64(v10, v11);
    }

    while (v9 != v6);
  }

  return result;
}

uint64_t *std::vector<unsigned long>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<unsigned long>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_2227CC398(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

std::__split_buffer<std::string>::pointer std::__set_intersection[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void>,std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::back_insert_iterator<std::vector<std::string>>>(std::__split_buffer<std::string>::pointer result, void *a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v9 = result;
  v13 = a4;
  v14 = a2;
  for (i = 0; v13 != a5; a4 = v13)
  {
    v10 = v14;
    v14 = std::__lower_bound_onesided[abi:ne200100]<std::_ClassicAlgPolicy,std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::string,std::__identity const,std::__less<void,void>>(v14, a3, a4 + 4);
    result = std::__set_intersection_add_output_if_equal[abi:ne200100]<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::back_insert_iterator<std::vector<std::string>>>((v14 == v10), &v14, &v13, a6, &i);
    if (v14 == a3)
    {
      break;
    }

    v11 = v13;
    v13 = std::__lower_bound_onesided[abi:ne200100]<std::_ClassicAlgPolicy,std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::string,std::__identity const,std::__less<void,void>>(v13, a5, v14 + 4);
    result = std::__set_intersection_add_output_if_equal[abi:ne200100]<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::back_insert_iterator<std::vector<std::string>>>((v13 == v11), &v14, &v13, a6, &i);
  }

  v9->__words[0] = a3;
  v9->__words[1] = a5;
  v9->__words[2] = a6;
  return result;
}

void *std::__lower_bound_onesided[abi:ne200100]<std::_ClassicAlgPolicy,std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::string,std::__identity const,std::__less<void,void>>(uint64_t a1, void *a2, const void **a3)
{
  v3 = a2;
  v40 = a2;
  if (a1 != a2)
  {
    v4 = a1;
    v5 = *(a3 + 23);
    v6 = *(a1 + 55);
    if (v6 >= 0)
    {
      v7 = *(a1 + 55);
    }

    else
    {
      v7 = *(a1 + 40);
    }

    if (v6 >= 0)
    {
      v8 = (a1 + 32);
    }

    else
    {
      v8 = *(a1 + 32);
    }

    if (v5 >= 0)
    {
      v9 = *(a3 + 23);
    }

    else
    {
      v9 = a3[1];
    }

    if (v5 >= 0)
    {
      v10 = a3;
    }

    else
    {
      v10 = *a3;
    }

    if (v9 >= v7)
    {
      v11 = v7;
    }

    else
    {
      v11 = v9;
    }

    v12 = memcmp(v8, v10, v11);
    v13 = v7 < v9;
    if (v12)
    {
      v13 = v12 < 0;
    }

    if (!v13)
    {
      return v4;
    }

    for (i = 1; ; i *= 2)
    {
      v39 = v4;
      v15 = std::_IterOps<std::_ClassicAlgPolicy>::__advance_to[abi:ne200100]<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>(&v39, i, &v40);
      v16 = v39;
      if (v39 == v3)
      {
        break;
      }

      v17 = *(v39 + 55);
      if (v17 >= 0)
      {
        v18 = *(v39 + 55);
      }

      else
      {
        v18 = v39[5];
      }

      if (v17 >= 0)
      {
        v19 = v39 + 4;
      }

      else
      {
        v19 = v39[4];
      }

      if (v9 >= v18)
      {
        v20 = v18;
      }

      else
      {
        v20 = v9;
      }

      v21 = memcmp(v19, v10, v20);
      v22 = v18 < v9;
      if (v21)
      {
        v22 = v21 < 0;
      }

      if (!v22)
      {
        break;
      }

      v4 = v16;
    }

    v3 = v16;
    v23 = i - v15;
    if (!v23)
    {
      return v4;
    }

    if (v23 != 1)
    {
      do
      {
        v24 = v23 >> 1;
        v25 = v4;
        if (v23 >= 2)
        {
          v26 = v23 >> 1;
          v27 = v4;
          do
          {
            v28 = v27[1];
            if (v28)
            {
              do
              {
                v25 = v28;
                v28 = *v28;
              }

              while (v28);
            }

            else
            {
              do
              {
                v25 = v27[2];
                v29 = *v25 == v27;
                v27 = v25;
              }

              while (!v29);
            }

            v27 = v25;
          }

          while (v26-- > 1);
        }

        v31 = *(v25 + 55);
        if (v31 >= 0)
        {
          v32 = *(v25 + 55);
        }

        else
        {
          v32 = v25[5];
        }

        if (v31 >= 0)
        {
          v33 = v25 + 4;
        }

        else
        {
          v33 = v25[4];
        }

        if (v9 >= v32)
        {
          v34 = v32;
        }

        else
        {
          v34 = v9;
        }

        v35 = memcmp(v33, v10, v34);
        v36 = v32 < v9;
        if (v35)
        {
          v36 = v35 < 0;
        }

        if (v36)
        {
          v37 = v25[1];
          if (v37)
          {
            do
            {
              v4 = v37;
              v37 = *v37;
            }

            while (v37);
          }

          else
          {
            do
            {
              v4 = v25[2];
              v29 = *v4 == v25;
              v25 = v4;
            }

            while (!v29);
          }

          v24 = v23 + ~v24;
        }

        v23 = v24;
      }

      while (v24);
      return v4;
    }
  }

  return v3;
}

std::__split_buffer<std::string>::pointer std::__set_intersection_add_output_if_equal[abi:ne200100]<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>,std::back_insert_iterator<std::vector<std::string>>>(std::__split_buffer<std::string>::pointer result, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  if (result)
  {
    if (*a5 == 1)
    {
      result = std::vector<std::string>::push_back[abi:ne200100](a4, (*a2 + 32));
      v8 = *a2;
      v9 = *(*a2 + 8);
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v8[2];
          v11 = *v10 == v8;
          v8 = v10;
        }

        while (!v11);
      }

      *a2 = v10;
      v12 = *a3;
      v13 = *(*a3 + 8);
      if (v13)
      {
        do
        {
          v14 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v14 = v12[2];
          v11 = *v14 == v12;
          v12 = v14;
        }

        while (!v11);
      }

      v15 = 0;
      *a3 = v14;
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  *a5 = v15;
  return result;
}

uint64_t std::_IterOps<std::_ClassicAlgPolicy>::__advance_to[abi:ne200100]<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>(void **a1, uint64_t a2, void *a3)
{
  if (a2 < 0)
  {
    v3 = 0;
    v8 = -a2;
    v9 = 1;
    if (-a2 > 1)
    {
      v9 = -a2;
    }

    v10 = *a1;
    while (v10 != *a3)
    {
      v11 = *v10;
      if (*v10)
      {
        do
        {
          v12 = v11;
          v11 = v11[1];
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = v10[2];
          v7 = *v12 == v10;
          v10 = v12;
        }

        while (v7);
      }

      *a1 = v12;
      ++v3;
      v10 = v12;
      if (v3 == v9)
      {
        v3 = v9;
        return v8 - v3;
      }
    }
  }

  else if (a2)
  {
    v3 = 0;
    v4 = *a1;
    while (v4 != *a3)
    {
      v5 = v4[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v4[2];
          v7 = *v6 == v4;
          v4 = v6;
        }

        while (!v7);
      }

      *a1 = v6;
      ++v3;
      v4 = v6;
      if (v3 == a2)
      {
        v8 = a2;
        v3 = a2;
        return v8 - v3;
      }
    }

    v8 = a2;
  }

  else
  {
    v8 = 0;
    v3 = 0;
  }

  return v8 - v3;
}

void sub_2227CC8C4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void marrs::inference_engine::InferenceTensor::~InferenceTensor(marrs::inference_engine::InferenceTensor *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  v3 = *this;
  if (*this)
  {
    *(this + 1) = v3;
    operator delete(v3);
  }
}

void marrs::mrr::md::inference_engine::MentionDetectorModuleInputType::~MentionDetectorModuleInputType(marrs::mrr::md::inference_engine::MentionDetectorModuleInputType *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }

  v4 = *this;
  if (*this)
  {
    *(this + 1) = v4;
    operator delete(v4);
  }
}

void boost::algorithm::trim<std::string>(std::string *a1, const std::locale *a2)
{
  std::locale::locale(&v12, a2);
  LODWORD(v15.__locale_) = 0x4000;
  std::locale::locale(&v16, &v12);
  boost::algorithm::trim_right_if<std::string,boost::algorithm::detail::is_classifiedF>(a1, &v15);
  std::locale::~locale(&v16);
  v13 = 0x4000;
  std::locale::locale(&v14, &v12);
  v3 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  if (v3 >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = a1->__r_.__value_.__r.__words[0];
  }

  if (v3 >= 0)
  {
    size = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a1->__r_.__value_.__l.__size_;
  }

  v17 = v13;
  std::locale::locale(&v18, &v14);
  if (size)
  {
    v6 = (v4 + size);
    v7 = MEMORY[0x277D82680];
    v8 = v4;
    while (1)
    {
      v9 = v8->__r_.__value_.__s.__data_[0];
      v10 = std::locale::use_facet(&v18, v7);
      if ((v9 & 0x80) != 0 || (*(&v10[1].~facet + v9) & v17) == 0)
      {
        break;
      }

      v8 = (v8 + 1);
      if (!--size)
      {
        v8 = v6;
        break;
      }
    }
  }

  else
  {
    v8 = v4;
  }

  if ((a1->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = a1->__r_.__value_.__r.__words[0];
  }

  std::string::erase(a1, v4 - v11, v8 - v4);
  std::locale::~locale(&v18);
  std::locale::~locale(&v14);
  std::locale::~locale(&v12);
}

void sub_2227CDB3C(_Unwind_Exception *a1)
{
  std::locale::~locale(v3 + 1);
  std::locale::~locale(v1);
  std::locale::~locale(v2 + 1);
  _Unwind_Resume(a1);
}

uint64_t std::fstream::~fstream(void (__cdecl ***a1)(std::fstream *__hidden this))
{
  MEMORY[0x223DC2080](a1 + 3);

  return std::iostream::~basic_iostream();
}

void virtual thunk tostd::fstream::~fstream(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  MEMORY[0x223DC2080](v1 + 3);
  std::iostream::~basic_iostream();
  MEMORY[0x223DC2270](v1 + 54);

  JUMPOUT(0x223DC2360);
}

{
  v1 = (a1 + *(*a1 - 24));
  MEMORY[0x223DC2080](v1 + 3);
  std::iostream::~basic_iostream();

  JUMPOUT(0x223DC2270);
}

void non-virtual thunk tostd::fstream::~fstream(void (__cdecl ***a1)(std::fstream *__hidden this))
{
  v1 = a1 + 52;
  MEMORY[0x223DC2080](a1 + 1);
  std::iostream::~basic_iostream();
  MEMORY[0x223DC2270](v1);

  JUMPOUT(0x223DC2360);
}

{
  MEMORY[0x223DC2080](a1 + 1);
  std::iostream::~basic_iostream();

  JUMPOUT(0x223DC2270);
}

void std::fstream::~fstream(void (__cdecl ***a1)(std::fstream *__hidden this))
{
  v1 = a1 + 54;
  MEMORY[0x223DC2080](a1 + 3);
  std::iostream::~basic_iostream();
  MEMORY[0x223DC2270](v1);

  JUMPOUT(0x223DC2360);
}

void (__cdecl ***std::fstream::~fstream(void (__cdecl ***a1)(std::fstream *__hidden this)))(std::fstream *__hidden this)
{
  v2 = a1 + 54;
  MEMORY[0x223DC2080](a1 + 3);
  std::iostream::~basic_iostream();
  MEMORY[0x223DC2270](v2);
  return a1;
}

void sub_2227CE3BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
    if ((v26 & 1) == 0)
    {
LABEL_8:

      _Unwind_Resume(a1);
    }
  }

  else if (!v26)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v25);
  goto LABEL_8;
}

void std::fstream::close(std::fstream *this)
{
  if (!std::filebuf::close())
  {
    v2 = (this + *(this->__sb_.__extbuf_ - 3));
    v3 = v2->__rdstate_ | 4;

    std::ios_base::clear(v2, v3);
  }
}

uint64_t std::istringstream::~istringstream(uint64_t a1)
{
  v2 = MEMORY[0x277D82820];
  v3 = *MEMORY[0x277D82820];
  *a1 = *MEMORY[0x277D82820];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 16) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  *(a1 + 16) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 24));
  std::istream::~istream();
  MEMORY[0x223DC2270](a1 + 120);
  return a1;
}

{
  v2 = MEMORY[0x277D82820];
  v3 = *MEMORY[0x277D82820];
  *a1 = *MEMORY[0x277D82820];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 16) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  *(a1 + 16) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 24));

  return std::istream::~istream();
}

void createPronunciationsVector(uint64_t a1, __int128 **a2, uint64_t *a3)
{
  v45 = *MEMORY[0x277D85DE8];
  std::vector<std::vector<float>>::clear[abi:ne200100](a3);
  v5 = *a2;
  v29 = a2[1];
  if (*a2 != v29)
  {
    v27 = *(MEMORY[0x277D82820] + 24);
    v28 = *MEMORY[0x277D82820];
    do
    {
      if (*(v5 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v31, *v5, *(v5 + 1));
      }

      else
      {
        v6 = *v5;
        v31.__r_.__value_.__r.__words[2] = *(v5 + 2);
        *&v31.__r_.__value_.__l.__data_ = v6;
      }

      std::istringstream::basic_istringstream[abi:ne200100](&v36, &v31);
      __p = 0;
      v34 = 0;
      v35 = 0;
      v7 = QRLoggerForCategory(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        *&buf[4] = "mapPhoneString";
        _os_log_debug_impl(&dword_2227A9000, v7, OS_LOG_TYPE_DEBUG, "%s Mapping phone string:", buf, 0xCu);
      }

      while (1)
      {
        std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v36, &__p);
        if ((*(v40 + *(v36 - 24)) & 5) != 0)
        {
          break;
        }

        if (SHIBYTE(v35) < 0)
        {
          if (v34 != 3)
          {
            goto LABEL_18;
          }

          p_p = __p;
        }

        else
        {
          if (SHIBYTE(v35) != 3)
          {
            goto LABEL_18;
          }

          p_p = &__p;
        }

        v9 = *p_p;
        v10 = *(p_p + 2);
        if (v9 != 26995 || v10 != 108)
        {
LABEL_18:
          if (std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::find<std::string>((a1 + 32), &__p))
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(1uLL);
          }

          std::operator+<char>();
          v24 = std::string::append(&v32, " not found");
          v25 = *&v24->__r_.__value_.__l.__data_;
          v44 = v24->__r_.__value_.__r.__words[2];
          *buf = v25;
          v24->__r_.__value_.__l.__size_ = 0;
          v24->__r_.__value_.__r.__words[2] = 0;
          v24->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v32.__r_.__value_.__l.__data_);
          }

          exception = __cxa_allocate_exception(0x30uLL);
          *(&v32.__r_.__value_.__s + 23) = 12;
          strcpy(&v32, "QueryRewrite");
          InferenceError::InferenceError(exception, buf, &v32, "/Library/Caches/com.apple.xbs/Sources/Marrs/QueryRewrite.subproj/QueryRewrite/Common/Tools/src/SymbolMapper.cpp", 74);
          *exception = &unk_2835DF6C0;
        }
      }

      if (SHIBYTE(v35) < 0)
      {
        operator delete(__p);
      }

      v36 = v28;
      *(&v36 + *(v28 - 24)) = v27;
      v38 = MEMORY[0x277D82878] + 16;
      if (v41 < 0)
      {
        operator delete(v40[6]);
      }

      v38 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(&v39);
      std::istream::~istream();
      MEMORY[0x223DC2270](&v42);
      v13 = a3[1];
      v12 = a3[2];
      if (v13 >= v12)
      {
        v15 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *a3) >> 3);
        v16 = v15 + 1;
        if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<std::string>::__throw_length_error[abi:ne200100]();
        }

        v17 = 0xAAAAAAAAAAAAAAABLL * ((v12 - *a3) >> 3);
        if (2 * v17 > v16)
        {
          v16 = 2 * v17;
        }

        if (v17 >= 0x555555555555555)
        {
          v18 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v18 = v16;
        }

        v40[0] = a3;
        if (v18)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<unsigned long>>>(v18);
        }

        v19 = 24 * v15;
        v36 = 0;
        v37 = v19;
        v38 = 24 * v15;
        v39.__locale_ = 0;
        *v19 = 0;
        *(v19 + 8) = 0;
        *(v19 + 16) = 0;
        std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>((24 * v15), 0, 0, 0);
        v14 = v38 + 24;
        v20 = a3[1] - *a3;
        v21 = v37 - v20;
        memcpy((v37 - v20), *a3, v20);
        v22 = *a3;
        *a3 = v21;
        a3[1] = v14;
        v23 = a3[2];
        a3[2] = v39.__locale_;
        v38 = v22;
        v39.__locale_ = v23;
        v36 = v22;
        v37 = v22;
        std::__split_buffer<std::vector<unsigned long>>::~__split_buffer(&v36);
      }

      else
      {
        *v13 = 0;
        v13[1] = 0;
        v13[2] = 0;
        std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v13, 0, 0, 0);
        v14 = (v13 + 3);
        a3[1] = (v13 + 3);
      }

      a3[1] = v14;
      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
      }

      v5 = (v5 + 24);
    }

    while (v5 != v29);
  }
}