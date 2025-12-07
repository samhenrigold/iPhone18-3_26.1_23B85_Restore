id sub_224CBC8D8(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4780, qword_224DB77A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_224DB3100;
  *(inited + 32) = sub_224DAEE18();
  *(inited + 40) = v9;
  v10 = sub_224CBC5D0(a1);
  v11 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v10;
  *(inited + 56) = v12;
  sub_224DA0AC0(inited);
  swift_setDeallocating();
  sub_224A3311C(inited + 32, &unk_27D6F58E0, &unk_224DB6450);
  if (a4)
  {
    v13 = sub_224DAEE18();
    v15 = v14;
    v34 = v11;
    *&v33 = a3;
    *(&v33 + 1) = a4;
    sub_224A739A4(&v33, v30);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_224B20218(v30, v13, v15, isUniquelyReferenced_nonNull_native);
  }

  v17 = sub_224DAEE18();
  v19 = v18;
  swift_getErrorValue();
  v20 = v31;
  v21 = v32;
  v34 = v32;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v33);
  (*(*(v21 - 8) + 16))(boxed_opaque_existential_1, v20, v21);
  sub_224A739A4(&v33, v30);
  v23 = swift_isUniquelyReferenced_nonNull_native();
  sub_224B20218(v30, v17, v19, v23);

  v24 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v25 = sub_224DAEDE8();
  v26 = a1;
  v27 = sub_224DAECC8();

  v28 = [v24 initWithDomain:v25 code:v26 + 1 userInfo:v27];

  return v28;
}

uint64_t sub_224CBCB58()
{
  v1 = *v0;
  sub_224DAFE68();
  MEMORY[0x22AA5E1E0](v1 + 1);
  return sub_224DAFEA8();
}

uint64_t sub_224CBCBD0(uint64_t a1)
{
  v2 = *v1;
  sub_224DAFE68();
  MEMORY[0x22AA5E1E0](v2 + 1);
  return sub_224DAFEA8();
}

uint64_t sub_224CBCC14@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_224CBCF20(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_224CBCC74(uint64_t a1, uint64_t a2)
{
  sub_224B67BEC();
  sub_224B67C40();

  return sub_224DA93D8();
}

uint64_t sub_224CBCCD0(uint64_t a1)
{
  v2 = sub_224B67B98();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_224CBCD0C(uint64_t a1)
{
  v2 = sub_224B67B98();
  v3 = sub_224B67BEC();
  v4 = sub_224B67C40();

  return MEMORY[0x28211F498](a1, v2, v3, v4);
}

uint64_t getEnumTagSinglePayload for ChronoCoreError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE5)
  {
    goto LABEL_17;
  }

  if (a2 + 27 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 27) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 27;
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

      return (*a1 | (v4 << 8)) - 27;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 27;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1C;
  v8 = v6 - 28;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ChronoCoreError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 27 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 27) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE5)
  {
    v4 = 0;
  }

  if (a2 > 0xE4)
  {
    v5 = ((a2 - 229) >> 8) + 1;
    *result = a2 + 27;
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
    *result = a2 + 27;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_224CBCECC()
{
  result = qword_27D6F5DF8;
  if (!qword_27D6F5DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F5DF8);
  }

  return result;
}

uint64_t sub_224CBCF20(uint64_t a1)
{
  if ((a1 - 1) >= 0x1C)
  {
    return 28;
  }

  else
  {
    return a1 - 1;
  }
}

uint64_t sub_224CBCF38(void (*a1)(id, char *))
{
  v24 = a1;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5E78, &qword_224DBDFB0);
  MEMORY[0x28223BE20](v23, v2);
  v4 = &v22 - v3;
  swift_beginAccess();
  v5 = *(v1 + 16);
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v9 = (v6 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  for (i = 0; v8; result = sub_224A3311C(v4, &qword_27D6F5E78, &qword_224DBDFB0))
  {
    v12 = i;
LABEL_9:
    v13 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v14 = v13 | (v12 << 6);
    v15 = *(v5 + 56);
    v16 = *(*(v5 + 48) + 8 * v14);
    v17 = sub_224DAC378();
    v18 = *(v17 - 8);
    v19 = v15 + *(v18 + 72) * v14;
    v20 = *(v23 + 48);
    (*(v18 + 16))(&v4[v20], v19, v17);
    *v4 = v16;
    v21 = v16;
    v24(v21, &v4[v20]);
  }

  while (1)
  {
    v12 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v12 >= v9)
    {
    }

    v8 = *(v5 + 64 + 8 * v12);
    ++i;
    if (v8)
    {
      i = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224CBD15C(uint64_t a1, uint64_t a2)
{
  v60 = sub_224DAE178();
  v55 = *(v60 - 8);
  v5 = MEMORY[0x28223BE20](v60, v4);
  v56 = v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v54 = v50 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5E80, &qword_224DBDFB8);
  v11 = MEMORY[0x28223BE20](v9 - 8, v10);
  v57 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v11, v13);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v53 = v50 - v15;
  v16 = 0;
  v51 = a1;
  v19 = *(a1 + 64);
  v18 = a1 + 64;
  v17 = v19;
  v20 = 1 << *(v18 - 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v17;
  v23 = (v20 + 63) >> 6;
  v50[0] = v18;
  v50[1] = v55 + 16;
  v58 = (v55 + 32);
  v52 = (v55 + 8);
  while (v22)
  {
    v59 = (v22 - 1) & v22;
    v24 = __clz(__rbit64(v22)) | (v16 << 6);
LABEL_16:
    v29 = v51;
    v30 = v54;
    v31 = v55;
    v32 = v60;
    (*(v55 + 16))(v54, *(v51 + 48) + *(v55 + 72) * v24, v60);
    v33 = *(*(v29 + 56) + 8 * v24);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5E88, qword_224DBDFC0);
    v35 = *(v34 + 48);
    v36 = *(v31 + 32);
    v37 = v57;
    v36(v57, v30, v32);
    *(v37 + v35) = v33;
    (*(*(v34 - 8) + 56))(v37, 0, 1, v34);

LABEL_17:
    v38 = v53;
    sub_224A44E4C(v37, v53, &qword_27D6F5E80, &qword_224DBDFB8);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5E88, qword_224DBDFC0);
    v40 = (*(*(v39 - 8) + 48))(v38, 1, v39);
    v41 = v40 == 1;
    if (v40 == 1)
    {
      return v41;
    }

    v42 = *(v39 + 48);
    v43 = v56;
    v44 = v60;
    (*v58)(v56, v38, v60);
    v45 = *(v38 + v42);
    sub_224B0B2F8(v43);
    LOBYTE(v42) = v46;
    (*v52)(v43, v44);
    if ((v42 & 1) == 0)
    {

      return 0;
    }

    v48 = sub_224CBD748(v47, v45);

    v22 = v59;
    if ((v48 & 1) == 0)
    {
      return v41;
    }
  }

  if (v23 <= v16 + 1)
  {
    v25 = v16 + 1;
  }

  else
  {
    v25 = v23;
  }

  v26 = v25 - 1;
  while (1)
  {
    v27 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v27 >= v23)
    {
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5E88, qword_224DBDFC0);
      v37 = v57;
      (*(*(v49 - 8) + 56))(v57, 1, 1, v49);
      v59 = 0;
      v16 = v26;
      goto LABEL_17;
    }

    v28 = *(v50[0] + 8 * v27);
    ++v16;
    if (v28)
    {
      v59 = (v28 - 1) & v28;
      v24 = __clz(__rbit64(v28)) | (v27 << 6);
      v16 = v27;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224CBD5E8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v2 + 16);
  swift_beginAccess();
  v5 = *(v3 + 16);

  v6 = sub_224A8D408(v4, v5);

  return v6 & 1;
}

uint64_t sub_224CBD680()
{
  swift_beginAccess();
  sub_224DAF538();
  sub_224DAC378();
  sub_224A839FC(&unk_2813509A0, MEMORY[0x277CFA140], MEMORY[0x277D85378]);

  v0 = sub_224DAECF8();

  return v0;
}

uint64_t sub_224CBD748(uint64_t a1, uint64_t a2)
{
  v4 = sub_224DAE0D8();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v47 = &v36 - v12;
  result = MEMORY[0x28223BE20](v11, v13);
  v16 = &v36 - v15;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v17 = 0;
  v18 = *(a1 + 56);
  v36 = a1 + 56;
  v19 = 1 << *(a1 + 32);
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & v18;
  v22 = (v19 + 63) >> 6;
  v43 = v5 + 32;
  v45 = a2 + 56;
  v46 = v5 + 16;
  v23 = (v5 + 8);
  v37 = v22;
  v38 = &v36 - v15;
  v39 = v5;
  v40 = a1;
  if (v21)
  {
    while (1)
    {
      v24 = __clz(__rbit64(v21));
      v42 = (v21 - 1) & v21;
LABEL_13:
      v27 = *(a1 + 48);
      v44 = *(v5 + 72);
      v28 = *(v5 + 16);
      v28(v16, v27 + v44 * (v24 | (v17 << 6)), v4);
      (*(v5 + 32))(v47, v16, v4);
      sub_224A839FC(&qword_281350C70, MEMORY[0x277CF9E98], MEMORY[0x277CF9EA0]);
      v29 = sub_224DAED88();
      v30 = -1 << *(a2 + 32);
      v31 = v29 & ~v30;
      if (((*(v45 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
      {
        break;
      }

      v41 = v23 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v32 = a2;
      v33 = ~v30;
      while (1)
      {
        v28(v9, *(v32 + 48) + v31 * v44, v4);
        sub_224A839FC(&qword_281350C68, MEMORY[0x277CF9E98], MEMORY[0x277CF9EA8]);
        v34 = sub_224DAEDD8();
        v35 = *v23;
        (*v23)(v9, v4);
        if (v34)
        {
          break;
        }

        v31 = (v31 + 1) & v33;
        if (((*(v45 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
        {
          v35(v47, v4);
          return 0;
        }
      }

      result = (v35)(v47, v4);
      a2 = v32;
      v5 = v39;
      a1 = v40;
      v22 = v37;
      v16 = v38;
      v21 = v42;
      if (!v42)
      {
        goto LABEL_8;
      }
    }

    (*v23)(v47, v4);
    return 0;
  }

LABEL_8:
  v25 = v17;
  while (1)
  {
    v17 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v17 >= v22)
    {
      return 1;
    }

    v26 = *(v36 + 8 * v17);
    ++v25;
    if (v26)
    {
      v24 = __clz(__rbit64(v26));
      v42 = (v26 - 1) & v26;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224CBDAF8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  v42 = a2 + 56;
  v35 = result + 56;
  v36 = result;
  v39 = a2;
  v34 = v7;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
    v37 = v2;
    v38 = (v6 - 1) & v6;
    v8 = __clz(__rbit64(v6)) | (v2 << 6);
LABEL_13:
    v12 = *(result + 48) + 48 * v8;
    v14 = *v12;
    v13 = *(v12 + 8);
    v16 = *(v12 + 16);
    v15 = *(v12 + 24);
    v17 = *(v12 + 32);
    v18 = *(v12 + 40);
    v19 = a2;
    sub_224DAFE68();

    sub_224DAEE78();
    v43 = v16;
    v20 = v15;
    sub_224DAEE78();
    v41 = v18;
    v40 = v17;
    sub_224DAFE88();
    if (v18 != 1)
    {
      MEMORY[0x22AA5E200](v17);
    }

    v21 = sub_224DAFEA8();
    v22 = -1 << *(v19 + 32);
    v23 = v21 & ~v22;
    if (((*(v42 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
    {
LABEL_36:

      return 0;
    }

    v24 = ~v22;
    v25 = *(v39 + 48);
    while (1)
    {
      v27 = v25 + 48 * v23;
      v28 = *(v27 + 16);
      v29 = *(v27 + 24);
      v30 = *(v27 + 32);
      v31 = *(v27 + 40);
      v32 = *v27 == v14 && *(v27 + 8) == v13;
      if (!v32 && (sub_224DAFD88() & 1) == 0)
      {
        goto LABEL_20;
      }

      v33 = v28 == v43 && v29 == v20;
      if (!v33 && (sub_224DAFD88() & 1) == 0)
      {
        goto LABEL_20;
      }

      if ((v31 & 1) == 0)
      {
        break;
      }

      if (v41)
      {
        goto LABEL_33;
      }

LABEL_20:
      v23 = (v23 + 1) & v24;
      if (((*(v42 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    v26 = v41;
    if (v30 != v40)
    {
      v26 = 1;
    }

    if (v26)
    {
      goto LABEL_20;
    }

LABEL_33:

    v3 = v35;
    result = v36;
    v6 = v38;
    a2 = v39;
    v7 = v34;
    v2 = v37;
  }

  while (v38);
LABEL_8:
  v9 = v2;
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {
      return 1;
    }

    v11 = *(v3 + 8 * v10);
    ++v9;
    if (v11)
    {
      v37 = v10;
      v38 = (v11 - 1) & v11;
      v8 = __clz(__rbit64(v11)) | (v10 << 6);
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224CBDDB8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_224DAFE68();

    sub_224DAEE78();
    v16 = sub_224DAFEA8();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_224DAFD88() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_224CBDF70(uint64_t (**a1)(void, void, void))
{
  v48 = *MEMORY[0x277D85DE8];
  v2 = sub_224DAC378();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v42 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v6;
  MEMORY[0x28223BE20](v5, v7);
  v9 = v36 - v8;
  v47 = a1;
  v45 = 0;
  v10 = a1[2];
  v43 = a1 + 2;
  if (v10(a1, &v45, 8))
  {
    v41 = 0;
    v36[0] = v3 + 40;
    v36[1] = v3 + 32;
    v38 = (v3 + 16);
    v39 = (v3 + 8);
    v12 = MEMORY[0x277D84F98];
    v37 = v3;
    while ((v45 & 0x8000000000000000) == 0)
    {
      if (v45)
      {
        MEMORY[0x28223BE20](v45, v11);
        v36[-4] = sub_224CBE3AC;
        v36[-3] = &v46;
        v36[-2] = &v45;
        v14 = v41;
        sub_224DAEE68();
        v41 = v14;
      }

      sub_224DAF538();
      v15 = sub_224DAF4F8();
      if (!v15)
      {
        break;
      }

      v16 = v15;
      sub_224DAC2E8();
      if (((a1)[2](a1, v9, v40) & 1) == 0)
      {

        (*v39)(v9, v2);
        return 0;
      }

      v17 = a1;
      v18 = v9;
      v19 = v9;
      v20 = v2;
      (*v38)(v42, v19, v2);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v44 = v12;
      v23 = sub_224A3E7EC(v16);
      v24 = v12[2];
      v25 = (v22 & 1) == 0;
      v26 = v24 + v25;
      if (__OFADD__(v24, v25))
      {
        __break(1u);
LABEL_25:
        __break(1u);
      }

      v27 = v22;
      if (v12[3] >= v26)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_224B29914();
        }
      }

      else
      {
        sub_224B180B4(v26, isUniquelyReferenced_nonNull_native);
        v28 = sub_224A3E7EC(v16);
        if ((v27 & 1) != (v29 & 1))
        {
          _Block_release(v17);
          result = sub_224DAFDD8();
          __break(1u);
          return result;
        }

        v23 = v28;
      }

      v30 = v37;
      v12 = v44;
      if (v27)
      {
        v13 = v44[7] + *(v37 + 72) * v23;
        v2 = v20;
        (*(v37 + 40))(v13, v42, v20);
      }

      else
      {
        v44[(v23 >> 6) + 8] |= 1 << v23;
        *(v12[6] + 8 * v23) = v16;
        v31 = v12[7] + *(v30 + 72) * v23;
        v2 = v20;
        (*(v30 + 32))(v31, v42, v20);
        v32 = v12[2];
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_25;
        }

        v12[2] = v34;
      }

      v9 = v18;
      (*v39)(v18, v2);
      a1 = v17;
      if (((v17)[2](v17, &v45, 8) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    return 0;
  }

  v12 = MEMORY[0x277D84F98];
LABEL_20:
  type metadata accessor for LocationGraceRegistry();
  result = swift_allocObject();
  *(result + 16) = v12;
  return result;
}

uint64_t sub_224CBE3D8(uint64_t result)
{
  if (result)
  {
    v2 = *(v1 + 32);
    if ((*(v1 + 16))(result, *v2))
    {
      return *v2;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_224CBE434(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F30E0, &unk_224DB2AD0);
  MEMORY[0x28223BE20](v1, v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  v5 = MEMORY[0x28223BE20](v3 - 8, v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v11 = v21 - v10;
  MEMORY[0x28223BE20](v9, v12);
  v14 = v21 - v13;
  v15 = sub_224DAC2A8();
  v16 = sub_224D6FDFC();

  sub_224DAC288();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v11, 1, v17) == 1)
  {
    sub_224AB4294(v11);
    v19 = 1;
  }

  else
  {
    sub_224DAA1E8();
    v21[0] = sub_224B44F14(&qword_2813519C0, MEMORY[0x277CF9F98]);
    sub_224B44F14(&unk_281351998, MEMORY[0x277CF9FC0]);
    v21[1] = v16;
    sub_224B44F14(&qword_2813519B8, MEMORY[0x277CF9FA0]);
    sub_224B44F14(&qword_2813519B0, MEMORY[0x277CF9FA8]);
    sub_224DAA1D8();
    (*(v18 + 8))(v11, v17);
    v19 = 0;
  }

  (*(v18 + 56))(v14, v19, 1, v17);
  sub_224CBE734(v14, v7);
  sub_224DAC298();
  return sub_224AB4294(v14);
}

uint64_t sub_224CBE734(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F56C0, &unk_224DB3580);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_224CBE7B8()
{
  result = qword_27D6F5EF0;
  if (!qword_27D6F5EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F5EF0);
  }

  return result;
}

void sub_224CBE80C()
{
  v0 = sub_224DA9A08();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
  sub_224DA99E8();
  v6 = sub_224DA99D8();
  (*(v1 + 8))(v4, v0);
  [v5 setTimeZone_];

  qword_281358D28 = v5;
}

void sub_224CBE918(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = *(Strong + 24);
    v9 = *(v8 + 16);

    os_unfair_lock_lock(v9);
    [*(v7 + 16) invalidate];
    v10 = *(v7 + 16);
    *(v7 + 16) = 0;

    os_unfair_lock_unlock(*(v8 + 16));

    v11 = *(v7 + 40);
    if (v11)
    {
      v12 = *(v7 + 48);

      v11(a4);
      sub_224A3D418(v11, v12);
    }

    a1(1);
  }

  else
  {
    if (qword_281351498 != -1)
    {
      swift_once();
    }

    v13 = sub_224DAB258();
    __swift_project_value_buffer(v13, qword_281364E20);
    v14 = sub_224DAB228();
    v15 = sub_224DAF298();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_224A2F000, v14, v15, "Wake scheduler unexpectedly deallocated", v16, 2u);
      MEMORY[0x22AA5EED0](v16, -1, -1);
    }

    a1(1);
  }
}

double sub_224CBEAD4(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(sub_224CBEEE8, v4);

  return result;
}

uint64_t sub_224CBEB68()
{

  sub_224A3D418(*(v0 + 40), *(v0 + 48));

  return swift_deallocClassInstance();
}

void *sub_224CBEBDC()
{
  v1 = sub_224DAF3C8();
  v14 = *(v1 - 8);
  v15 = v1;
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_224DAF318();
  MEMORY[0x28223BE20](v5, v6);
  v7 = sub_224DAB848();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v0[2] = 0;
  type metadata accessor for UnfairLock();
  v9 = swift_allocObject();
  v10 = swift_slowAlloc();
  *v10 = 0;
  *(v9 + 16) = v10;
  v0[3] = v9;
  v13 = sub_224AC319C();
  sub_224DAB7E8();
  v16 = MEMORY[0x277D84F90];
  sub_224A9BB34(&qword_281350A88, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3470, qword_224DB38B0);
  sub_224A9B6A0(&qword_281350B90, &qword_27D6F3470, qword_224DB38B0);
  sub_224DAF788();
  (*(v14 + 104))(v4, *MEMORY[0x277D85260], v15);
  v11 = sub_224DAF418();
  v0[5] = 0;
  v0[6] = 0;
  v0[4] = v11;
  return v0;
}

void sub_224CBEE64(void (*a1)(uint64_t), uint64_t a2)
{
  v5 = *(sub_224DA9878() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  sub_224CBE918(a1, a2, v6, v7);
}

uint64_t sub_224CBEEFC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);
  __swift_destroy_boxed_opaque_existential_1(v0 + 27);
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_224CBEF88()
{
  sub_224A3311C(v0 + 24, &qword_27D6F4200, &unk_224DB5FC0);
  sub_224A3311C(v0 + 64, &qword_27D6F5EF8, &qword_224DBE1F0);
  sub_224A3311C(v0 + 104, &qword_27D6F5F00, qword_224DBE1F8);

  sub_224A3311C(v0 + 152, &qword_27D6F3AE8, &unk_224DB9600);
  sub_224A3311C(v0 + 192, &qword_27D6F3AE8, &unk_224DB9600);
  sub_224A3311C(v0 + 232, &qword_27D6F3AE8, &unk_224DB9600);

  return swift_deallocClassInstance();
}

id sub_224CBF0EC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TaskSessionQueuePool();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_224CBF154(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v32 = sub_224DAF318();
  MEMORY[0x28223BE20](v32, v7);
  v31 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_224DAF3C8();
  v9 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v10);
  v29 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_224DAB848();
  result = MEMORY[0x28223BE20](v12 - 8, v13);
  v28 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC10ChronoCore20TaskSessionQueuePool__queuePool;
  *&v3[OBJC_IVAR____TtC10ChronoCore20TaskSessionQueuePool__queuePool] = MEMORY[0x277D84F90];
  v3[OBJC_IVAR____TtC10ChronoCore20TaskSessionQueuePool__hasFaultedForExcessSize] = 0;
  if (a3)
  {
    result = sub_224DA9DC8();
    a2 = result;
  }

  *&v3[OBJC_IVAR____TtC10ChronoCore20TaskSessionQueuePool_maxPoolSize] = a2;
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v17 = sub_224AC319C();
      v18 = 0;
      v25 = 0x8000000224DCD7D0;
      v26 = v17;
      v24 = *MEMORY[0x277D85268];
      v23 = (v9 + 104);
      v27 = a2;
      do
      {
        v34 = 0;
        v35 = 0xE000000000000000;
        sub_224DAF938();

        v34 = 0xD000000000000016;
        v35 = v25;
        v36 = v18;
        v19 = sub_224DAFD28();
        MEMORY[0x22AA5D210](v19);

        sub_224DAB7F8();
        (*v23)(v29, v24, v30);
        v34 = MEMORY[0x277D84F90];
        sub_224AC31E8();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3470, qword_224DB38B0);
        sub_224AC3240();
        sub_224DAF788();
        v20 = sub_224DAF418();
        swift_beginAccess();
        v21 = v20;
        MEMORY[0x22AA5D350]();
        if (*((*(v4 + v16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v4 + v16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_224DAF038();
        }

        ++v18;
        sub_224DAF078();
        swift_endAccess();
      }

      while (v27 != v18);
    }

    v22 = type metadata accessor for TaskSessionQueuePool();
    v33.receiver = v4;
    v33.super_class = v22;
    return objc_msgSendSuper2(&v33, sel_init);
  }

  return result;
}

double sub_224CBF580(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + 24);
    os_unfair_lock_lock(*(v6 + 16));
    sub_224CC00D4(v5, a2);
    os_unfair_lock_unlock(*(v6 + 16));
  }

  return result;
}

void sub_224CBF61C(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v28 = a4;
  v7 = sub_224DAB7B8();
  v27 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_224DAB848();
  v25 = *(v11 - 8);
  v26 = v11;
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v15 = a1[4];
  if (*(v15 + 16))
  {

    v16 = sub_224A3E7EC(a2);
    if (v17)
    {
      v18 = *(*(v15 + 56) + 8 * v16);
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  if (__OFADD__(v18, 1))
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30[0] = a1[4];
    a1[4] = 0x8000000000000000;
    sub_224A8A0B0(v18 + 1, a2, isUniquelyReferenced_nonNull_native);
    a1[4] = v30[0];
    swift_endAccess();
    swift_beginAccess();
    if (!v18)
    {
      v20 = a1[5];
      v24 = a1[2];
      v21 = swift_allocObject();
      v21[2] = v20;
      v21[3] = a1;
      v21[4] = a2;
      aBlock[4] = sub_224CC0970;
      aBlock[5] = v21;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_224A39F40;
      aBlock[3] = &block_descriptor_44;
      v22 = _Block_copy(aBlock);

      v23 = a2;
      sub_224DAB7E8();
      v30[7] = MEMORY[0x277D84F90];
      sub_224A80DE0(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
      sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
      sub_224DAF788();
      MEMORY[0x22AA5D760](0, v14, v10, v22);
      _Block_release(v22);
      (*(v27 + 8))(v10, v7);
      (*(v25 + 8))(v14, v26);
    }

    *v28 = a3;
  }
}

uint64_t sub_224CBF9E8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    v6 = result + 32;
    do
    {
      sub_224CC097C(v6, v10);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v7 = v11;
        ObjectType = swift_getObjectType();
        v9[3] = type metadata accessor for ControlVisibilityMonitor();
        v9[4] = &off_283832620;
        v9[0] = a2;

        sub_224CC09B4(v10);
        (*(v7 + 8))(v9, a3, ObjectType, v7);
        swift_unknownObjectRelease();
        result = __swift_destroy_boxed_opaque_existential_1(v9);
      }

      else
      {
        result = sub_224CC09B4(v10);
      }

      v6 += 16;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_224CBFAD4(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3900, &unk_224DB4640);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v29 = &v29 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5B90, &qword_224DB5C50);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5060, &qword_224DB5620);
  v15 = MEMORY[0x28223BE20](v13 - 8, v14);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v29 - v19;
  v21 = *a1;
  v22 = *MEMORY[0x277CFA130];
  swift_beginAccess();
  (*(v5 + 16))(v20, a2, v4);
  (*(v5 + 56))(v20, 0, 1, v4);
  v23 = *(v9 + 56);
  sub_224AFD468(v21 + v22, v12);
  sub_224AFD468(v20, &v12[v23]);
  v24 = *(v5 + 48);
  if (v24(v12, 1, v4) != 1)
  {
    sub_224AFD468(v12, v17);
    if (v24(&v12[v23], 1, v4) != 1)
    {
      v26 = v29;
      (*(v5 + 32))(v29, &v12[v23], v4);
      sub_224A33088(&unk_281351960, &qword_27D6F3900, &unk_224DB4640, MEMORY[0x277CF9FB0]);
      v25 = sub_224DAEDD8();
      v27 = *(v5 + 8);
      v27(v26, v4);
      sub_224A3311C(v20, &unk_27D6F5060, &qword_224DB5620);
      v27(v17, v4);
      sub_224A3311C(v12, &unk_27D6F5060, &qword_224DB5620);
      return v25 & 1;
    }

    sub_224A3311C(v20, &unk_27D6F5060, &qword_224DB5620);
    (*(v5 + 8))(v17, v4);
    goto LABEL_6;
  }

  sub_224A3311C(v20, &unk_27D6F5060, &qword_224DB5620);
  if (v24(&v12[v23], 1, v4) != 1)
  {
LABEL_6:
    sub_224A3311C(v12, &qword_27D6F5B90, &qword_224DB5C50);
    v25 = 0;
    return v25 & 1;
  }

  sub_224A3311C(v12, &unk_27D6F5060, &qword_224DB5620);
  v25 = 1;
  return v25 & 1;
}

uint64_t sub_224CBFEB8(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a1 + 40);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = v6 + 32;

    v9 = 0;
    while (v9 < *(v6 + 16))
    {
      sub_224CC097C(v8, v15);
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_224CC09B4(v15);
      if (Strong)
      {
        swift_unknownObjectRelease();
        if (Strong == a2)
        {
        }
      }

      ++v9;
      v8 += 16;
      if (v7 == v9)
      {

        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_14;
  }

LABEL_9:
  v18 = a3;
  swift_unknownObjectWeakInit();
  sub_224CC097C(v17, v16);
  swift_beginAccess();
  a2 = *(a1 + 40);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 40) = a2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_14:
    a2 = sub_224AD94BC(0, a2[2] + 1, 1, a2);
    *(a1 + 40) = a2;
  }

  v14 = a2[2];
  v13 = a2[3];
  if (v14 >= v13 >> 1)
  {
    a2 = sub_224AD94BC((v13 > 1), v14 + 1, 1, a2);
  }

  a2[2] = v14 + 1;
  sub_224CC0CB4(v16, &a2[2 * v14 + 4]);
  *(a1 + 40) = a2;
  swift_endAccess();
  return sub_224CC09B4(v17);
}

uint64_t sub_224CC006C(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_unknownObjectRelease();
    if (v4 == a2)
    {
      return 1;
    }
  }

  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 1;
  }

  swift_unknownObjectRelease();
  return 0;
}

void sub_224CC00D4(void *a1, void *a2)
{
  v5 = sub_224DAB7B8();
  v26 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v6);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_224DAB848();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v14 = a1[4];
  if (*(v14 + 16))
  {

    v15 = sub_224A3E7EC(a2);
    if (v16)
    {
      v25[2] = v2;
      v17 = *(*(v14 + 56) + 8 * v15);

      v18 = __OFSUB__(v17, 1);
      v19 = v17 - 1;
      if (v19)
      {
        if (v18)
        {
          __break(1u);
        }

        else
        {
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v28[0] = a1[4];
          a1[4] = 0x8000000000000000;
          sub_224A8A0B0(v19, a2, isUniquelyReferenced_nonNull_native);
          a1[4] = v28[0];
          swift_endAccess();
        }
      }

      else
      {
        swift_beginAccess();
        sub_224A7D664(a2);
        swift_endAccess();
        swift_beginAccess();
        v20 = a1[5];
        v25[1] = a1[2];
        v21 = swift_allocObject();
        v21[2] = v20;
        v21[3] = a1;
        v21[4] = a2;
        aBlock[4] = sub_224CC09E4;
        aBlock[5] = v21;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_224A39F40;
        aBlock[3] = &block_descriptor_24_0;
        v25[0] = _Block_copy(aBlock);

        v22 = a2;
        sub_224DAB7E8();
        v28[7] = MEMORY[0x277D84F90];
        sub_224A80DE0(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
        sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
        sub_224DAF788();
        v23 = v25[0];
        MEMORY[0x22AA5D760](0, v13, v8, v25[0]);
        _Block_release(v23);
        (*(v26 + 8))(v8, v5);
        (*(v10 + 8))(v13, v9);
      }
    }

    else
    {
    }
  }
}

uint64_t sub_224CC04C0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    v6 = result + 32;
    do
    {
      sub_224CC097C(v6, v11);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v7 = v12;
        ObjectType = swift_getObjectType();
        v10[3] = type metadata accessor for ControlVisibilityMonitor();
        v10[4] = &off_283832620;
        v10[0] = a2;
        v9 = *(v7 + 16);

        v9(v10, a3, ObjectType, v7);
        swift_unknownObjectRelease();
        sub_224CC09B4(v11);
        result = __swift_destroy_boxed_opaque_existential_1(v10);
      }

      else
      {
        result = sub_224CC09B4(v11);
      }

      v6 += 16;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_224CC05B4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_224CC0628(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = *a1 & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_224CC0674(uint64_t result, int a2, int a3)
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
      *(result + 8) = 1;
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

void *sub_224CC06C4()
{
  v1 = v0;
  v16 = sub_224DAF3C8();
  v2 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v3);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_224DAF318();
  MEMORY[0x28223BE20](v6, v7);
  v8 = sub_224DAB848();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v10 = sub_224AC319C();
  v15[0] = "Map";
  v15[1] = v10;
  sub_224DAB818();
  v17 = MEMORY[0x277D84F90];
  sub_224A80DE0(&qword_281350A88, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3470, qword_224DB38B0);
  sub_224A33088(&qword_281350B90, &qword_27D6F3470, qword_224DB38B0, MEMORY[0x277D83970]);
  sub_224DAF788();
  (*(v2 + 104))(v5, *MEMORY[0x277D85268], v16);
  v0[2] = sub_224DAF418();
  type metadata accessor for UnfairLock();
  v11 = swift_allocObject();
  v12 = swift_slowAlloc();
  *v12 = 0;
  *(v11 + 16) = v12;
  v13 = MEMORY[0x277D84F98];
  v1[3] = v11;
  v1[4] = v13;
  v1[5] = MEMORY[0x277D84F90];
  return v1;
}

uint64_t sub_224CC09F0(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2)
{
  v5 = a2;
  v7 = *v2;
  result = sub_224BC7E00(a1, a2, *v2);
  if (v3)
  {
    return v4;
  }

  if (v9)
  {
    return v7[2];
  }

  v4 = result;
  v10 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v12 = v7 + 2;
    v11 = v7[2];
    if (v10 == v11)
    {
      return v4;
    }

    v19 = a1;
    v13 = 16 * result + 48;
    while (v10 < v11)
    {
      sub_224CC097C(v7 + v13, v18);
      v14 = v5;
      v15 = v19(v18);
      result = sub_224CC09B4(v18);
      if (v15)
      {
        v5 = v14;
      }

      else
      {
        if (v10 == v4)
        {
          v5 = v14;
        }

        else
        {
          if ((v4 & 0x8000000000000000) != 0)
          {
            goto LABEL_23;
          }

          v16 = *v12;
          if (v4 >= v16)
          {
            goto LABEL_24;
          }

          result = sub_224CC097C(&v7[2 * v4 + 4], v18);
          if (v10 >= v16)
          {
            goto LABEL_25;
          }

          sub_224CC097C(v7 + v13, v17);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_224B42ED0(v7);
          }

          v5 = v14;
          result = sub_224CC0C7C(v17, &v7[2 * v4 + 4]);
          if (v10 >= v7[2])
          {
            goto LABEL_26;
          }

          result = sub_224CC0C7C(v18, v7 + v13);
          *v2 = v7;
        }

        ++v4;
      }

      ++v10;
      v12 = v7 + 2;
      v11 = v7[2];
      v13 += 16;
      if (v10 == v11)
      {
        return v4;
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
  }

  __break(1u);
  return result;
}

void sub_224CC0BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a2 + 24);
  os_unfair_lock_lock(*(v7 + 16));
  v10[2] = a1;
  v10[3] = a4;
  swift_beginAccess();
  v8 = sub_224CC09F0(sub_224CC0C5C, v10);
  v9 = *(*(a2 + 40) + 16);
  if (v9 < v8)
  {
    __break(1u);
  }

  else
  {
    sub_224D78DF0(v8, v9);
    swift_endAccess();
    os_unfair_lock_unlock(*(v7 + 16));
  }
}

uint64_t sub_224CC0CF4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = _s17ArchiveChangeTypeOMa(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_224CC0D7C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_224DA9688();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10)
  {
    v11 = v10 - 1;
  }

  else
  {
    v11 = 0;
  }

  if (v11 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(v9 + 80);
  if (v10)
  {
    v14 = *(*(v8 - 8) + 64);
  }

  else
  {
    v14 = *(*(v8 - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = *(v6 + 64) + v13;
  if (a2 <= v12)
  {
    goto LABEL_34;
  }

  v16 = v14 + (v15 & ~v13);
  v17 = 8 * v16;
  if (v16 <= 3)
  {
    v19 = ((a2 - v12 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v19))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v19 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v19 < 2)
    {
LABEL_33:
      if (v12)
      {
LABEL_34:
        if (v7 >= v11)
        {
          v25 = *(v6 + 48);

          return v25(a1, v7, v5);
        }

        else
        {
          v23 = (*(v9 + 48))((a1 + v15) & ~v13);
          if (v23 >= 2)
          {
            return v23 - 1;
          }

          else
          {
            return 0;
          }
        }
      }

      return 0;
    }
  }

  v18 = *(a1 + v16);
  if (!*(a1 + v16))
  {
    goto LABEL_33;
  }

LABEL_20:
  v20 = (v18 - 1) << v17;
  if (v16 > 3)
  {
    v20 = 0;
  }

  if (v16)
  {
    if (v16 <= 3)
    {
      v21 = v16;
    }

    else
    {
      v21 = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        v22 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v22 = *a1;
      }
    }

    else if (v21 == 1)
    {
      v22 = *a1;
    }

    else
    {
      v22 = *a1;
    }
  }

  else
  {
    v22 = 0;
  }

  return v12 + (v22 | v20) + 1;
}

void sub_224CC0FDC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v30 = v8;
  v9 = *(v8 + 84);
  v10 = 0;
  v11 = *(sub_224DA9688() - 8);
  v12 = *(v11 + 84);
  v13 = v12 - 1;
  if (!v12)
  {
    v13 = 0;
  }

  if (v13 <= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v11 + 80);
  v16 = *(v8 + 64) + v15;
  if (v12)
  {
    v17 = *(v11 + 64);
  }

  else
  {
    v17 = *(v11 + 64) + 1;
  }

  v18 = (v16 & ~v15) + v17;
  if (a3 <= v14)
  {
    goto LABEL_20;
  }

  if (v18 <= 3)
  {
    v19 = ((a3 - v14 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
    if (HIWORD(v19))
    {
      v10 = 4;
      if (v14 >= a2)
      {
        goto LABEL_30;
      }

      goto LABEL_21;
    }

    if (v19 < 0x100)
    {
      v20 = 1;
    }

    else
    {
      v20 = 2;
    }

    if (v19 >= 2)
    {
      v10 = v20;
    }

    else
    {
      v10 = 0;
    }

LABEL_20:
    if (v14 >= a2)
    {
      goto LABEL_30;
    }

    goto LABEL_21;
  }

  v10 = 1;
  if (v14 >= a2)
  {
LABEL_30:
    if (v10 > 1)
    {
      if (v10 != 2)
      {
        *&a1[v18] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_37;
      }

      *&a1[v18] = 0;
    }

    else if (v10)
    {
      a1[v18] = 0;
      if (!a2)
      {
        return;
      }

LABEL_37:
      if (v9 >= v13)
      {
        v28 = *(v30 + 56);

        v28(a1, a2, v9, v7);
      }

      else
      {
        v24 = (&a1[v16] & ~v15);
        if (v13 >= a2)
        {
          v29 = *(v11 + 56);

          v29(v24, (a2 + 1));
        }

        else
        {
          if (v17 <= 3)
          {
            v25 = ~(-1 << (8 * v17));
          }

          else
          {
            v25 = -1;
          }

          if (v17)
          {
            v26 = v25 & (~v13 + a2);
            if (v17 <= 3)
            {
              v27 = v17;
            }

            else
            {
              v27 = 4;
            }

            bzero(v24, v17);
            if (v27 > 2)
            {
              if (v27 == 3)
              {
                *v24 = v26;
                v24[2] = BYTE2(v26);
              }

              else
              {
                *v24 = v26;
              }
            }

            else if (v27 == 1)
            {
              *v24 = v26;
            }

            else
            {
              *v24 = v26;
            }
          }
        }
      }

      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

LABEL_21:
  v21 = ~v14 + a2;
  if (v18 >= 4)
  {
    bzero(a1, (v16 & ~v15) + v17);
    *a1 = v21;
    v22 = 1;
    if (v10 > 1)
    {
      goto LABEL_62;
    }

    goto LABEL_59;
  }

  v22 = (v21 >> (8 * v18)) + 1;
  if (!v18)
  {
LABEL_58:
    if (v10 > 1)
    {
      goto LABEL_62;
    }

    goto LABEL_59;
  }

  v23 = v21 & ~(-1 << (8 * v18));
  bzero(a1, v18);
  if (v18 == 3)
  {
    *a1 = v23;
    a1[2] = BYTE2(v23);
    goto LABEL_58;
  }

  if (v18 == 2)
  {
    *a1 = v23;
    if (v10 > 1)
    {
LABEL_62:
      if (v10 == 2)
      {
        *&a1[v18] = v22;
      }

      else
      {
        *&a1[v18] = v22;
      }

      return;
    }
  }

  else
  {
    *a1 = v21;
    if (v10 > 1)
    {
      goto LABEL_62;
    }
  }

LABEL_59:
  if (v10)
  {
    a1[v18] = v22;
  }
}

uint64_t _s17ArchiveChangeTypeOMa(uint64_t a1)
{
  result = qword_2813591E8;
  if (!qword_2813591E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_224CC13F4(uint64_t a1)
{
  v1 = sub_224DA9688();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_224CC1450(uint64_t a1)
{
  v2 = v1;
  v4 = sub_224DA9688();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s17ArchiveChangeTypeOMa(0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224CC1C94(v2 + *(a1 + 44), v12);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    v18 = 0;
    v19 = 0xE000000000000000;
    v13 = sub_224DAFF38();
    MEMORY[0x22AA5D210](v13);

    MEMORY[0x22AA5D210](8250, 0xE200000000000000);
    sub_224DAFD58();
    MEMORY[0x22AA5D210](0x6574656C6564203BLL, 0xE900000000000064);
    return v18;
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    v18 = 0;
    v19 = 0xE000000000000000;
    sub_224DAF938();
    v15 = sub_224DAFF38();
    MEMORY[0x22AA5D210](v15);

    MEMORY[0x22AA5D210](8250, 0xE200000000000000);
    sub_224DAFD58();
    MEMORY[0x22AA5D210](0x657461647075203BLL, 0xEA00000000002064);
    sub_224B32DE8();
    v16 = sub_224DAFD28();
    MEMORY[0x22AA5D210](v16);

    v14 = v18;
    (*(v5 + 8))(v8, v4);
  }

  return v14;
}

uint64_t sub_224CC16DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((sub_224DAEDD8() & 1) == 0)
  {
    return 0;
  }

  v10 = *(_s13ArchiveChangeVMa(0, a3, a4, a5) + 44);

  return sub_224CC1A1C(a1 + v10, a2 + v10);
}

uint64_t sub_224CC1784(uint64_t a1)
{
  v2 = sub_224CC1DDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_224CC17C0(uint64_t a1)
{
  v2 = sub_224CC1DDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_224CC1840(uint64_t a1)
{
  v2 = sub_224CC1E30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_224CC187C(uint64_t a1)
{
  v2 = sub_224CC1E30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_224CC18FC(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void), uint64_t a7)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v15 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a6();
  sub_224DAFF08();
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_224CC1A1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_224DA9688();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s17ArchiveChangeTypeOMa(0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5F20, &unk_224DBE450);
  v15 = MEMORY[0x28223BE20](v13 - 8, v14);
  v17 = &v23 - v16;
  v18 = *(v15 + 56);
  sub_224CC1C94(a1, &v23 - v16);
  sub_224CC1C94(a2, &v17[v18]);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_224CC1C94(v17, v12);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      v20 = sub_224DA9628();
      v21 = *(v5 + 8);
      v21(v8, v4);
      v21(v12, v4);
      sub_224CC1D60(v17);
      return v20 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_224CC1CF8(v17);
    v20 = 0;
    return v20 & 1;
  }

  sub_224CC1D60(v17);
  v20 = 1;
  return v20 & 1;
}

uint64_t sub_224CC1C94(uint64_t a1, uint64_t a2)
{
  v4 = _s17ArchiveChangeTypeOMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_224CC1CF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5F20, &unk_224DBE450);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_224CC1D60(uint64_t a1)
{
  v2 = _s17ArchiveChangeTypeOMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_224CC1DDC()
{
  result = qword_27D6F5F30;
  if (!qword_27D6F5F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F5F30);
  }

  return result;
}

unint64_t sub_224CC1E30()
{
  result = qword_27D6F5F40;
  if (!qword_27D6F5F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F5F40);
  }

  return result;
}

unint64_t sub_224CC1EA8()
{
  result = qword_27D6F5F48;
  if (!qword_27D6F5F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F5F48);
  }

  return result;
}

unint64_t sub_224CC1F00()
{
  result = qword_27D6F5F50;
  if (!qword_27D6F5F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F5F50);
  }

  return result;
}

unint64_t sub_224CC1F58()
{
  result = qword_27D6F5F58;
  if (!qword_27D6F5F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F5F58);
  }

  return result;
}

unint64_t sub_224CC1FB0()
{
  result = qword_27D6F5F60;
  if (!qword_27D6F5F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F5F60);
  }

  return result;
}

uint64_t sub_224CC206C()
{
  if (!*(v0 + 40))
  {
    return MEMORY[0x277D84FA0];
  }

  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  if (*(v0 + 40) == 1)
  {
    __swift_project_boxed_opaque_existential_1(v0, *(v0 + 24));
    return (*(v2 + 8))(v1, v2);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v0, *(v0 + 24));
    return (*(v2 + 16))(v1, v2);
  }
}

id sub_224CC216C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for APSPushConnection();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_224CC2228(uint64_t a1, SEL *a2)
{
  v16 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v15 - v5;
  sub_224DAE0C8();
  v7 = type metadata accessor for AppTokenInfo(0);
  v8 = objc_allocWithZone(MEMORY[0x277CEEA00]);
  v9 = sub_224DAEDE8();

  v10 = sub_224DAEDE8();
  v11 = [v8 initWithTopic:v9 identifier:v10];

  sub_224A3796C(a1 + *(v7 + 24), v6, &qword_27D6F32B0, &qword_224DB3EA0);
  v12 = sub_224DA9878();
  v13 = *(v12 - 8);
  v14 = 0;
  if ((*(v13 + 48))(v6, 1, v12) != 1)
  {
    v14 = sub_224DA9778();
    (*(v13 + 8))(v6, v12);
  }

  [v11 setExpirationDate_];

  [*(v15 + OBJC_IVAR____TtC10ChronoCore17APSPushConnection_connection) *v16];
}

void sub_224CC2420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + OBJC_IVAR____TtC10ChronoCore17APSPushConnection_connection);
  v6 = sub_224DAEFF8();
  v7 = sub_224DAEFF8();
  v8 = sub_224DAEFF8();
  v9 = sub_224DAEFF8();
  [v5 setEnabledTopics:v6 ignoredTopics:v7 opportunisticTopics:v8 nonWakingTopics:v9];
}

id sub_224CC25A8@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_224DAE178();
  v82 = *(v4 - 8);
  v83 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v81 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_224DAE0D8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5FF0, &unk_224DB8D30);
  v14 = MEMORY[0x28223BE20](v12 - 8, v13);
  v16 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v74 - v18;
  if ([a1 pushType] != 256 && objc_msgSend(a1, sel_pushType) != 2048)
  {
    if (qword_27D6F2CF0 != -1)
    {
      swift_once();
    }

    v43 = sub_224DAB258();
    __swift_project_value_buffer(v43, qword_27D6F71E0);
    v44 = a1;
    v45 = sub_224DAB228();
    v46 = sub_224DAF288();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 134349056;
      *(v47 + 4) = [v44 pushType];

      _os_log_impl(&dword_224A2F000, v45, v46, "Incoming message has an unexpected push type: %{public}lu", v47, 0xCu);
      MEMORY[0x22AA5EED0](v47, -1, -1);
    }

    else
    {

      v45 = v44;
    }

    sub_224AC1F7C();
    swift_allocError();
    *v54 = 1;
    return swift_willThrow();
  }

  v79 = a2;
  v84 = 7565409;
  v85 = 0xE300000000000000;
  sub_224DAF8D8();
  result = [a1 userInfo];
  if (!result)
  {
    __break(1u);
    goto LABEL_57;
  }

  v21 = result;
  v22 = sub_224DAECE8();

  v23 = *(v22 + 16);
  v88 = v8;
  if (v23 && (v24 = sub_224B0B624(v86), (v25 & 1) != 0))
  {
    sub_224A33E0C(*(v22 + 56) + 32 * v24, v87);
    sub_224AD52A4(v86);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6000, qword_224DBE790);
    if (swift_dynamicCast())
    {
      v26 = v84;
      goto LABEL_14;
    }
  }

  else
  {

    sub_224AD52A4(v86);
  }

  if (qword_27D6F2CF0 != -1)
  {
    swift_once();
  }

  v27 = sub_224DAB258();
  __swift_project_value_buffer(v27, qword_27D6F71E0);
  v28 = sub_224DAB228();
  v29 = sub_224DAF288();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_224A2F000, v28, v29, "Incoming message does not contain an aps dictionary", v30, 2u);
    MEMORY[0x22AA5EED0](v30, -1, -1);
  }

  v26 = 0;
LABEL_14:
  v80 = v11;
  result = [a1 topic];
  if (!result)
  {
LABEL_57:
    __break(1u);
    return result;
  }

  v31 = result;
  sub_224DAEE18();

  sub_224DAE0B8();
  sub_224A3796C(v19, v16, &unk_27D6F5FF0, &unk_224DB8D30);
  v32 = v88;
  if ((*(v88 + 48))(v16, 1, v7) == 1)
  {

    sub_224CC3F04(v16);
    if (qword_27D6F2CF0 != -1)
    {
      swift_once();
    }

    v33 = sub_224DAB258();
    __swift_project_value_buffer(v33, qword_27D6F71E0);
    v34 = sub_224DAB228();
    v35 = sub_224DAF288();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_224A2F000, v34, v35, "Incoming message contains an unparseable topic", v36, 2u);
      MEMORY[0x22AA5EED0](v36, -1, -1);
    }

    sub_224AC1F7C();
    swift_allocError();
    *v37 = 1;
    swift_willThrow();
    return sub_224CC3F04(v19);
  }

  v38 = v80;
  v76 = *(v32 + 32);
  v76(v80, v16, v7);
  v39 = [a1 perAppToken];
  if (v39)
  {
    v40 = v39;
    v41 = sub_224DA96D8();
    v77 = v42;
    v78 = v41;
  }

  else
  {
    v77 = 0xF000000000000000;
    v78 = 0;
  }

  v48 = [a1 channelID];
  if (v48)
  {
    v49 = v48;
    v75 = sub_224DAEE18();
    v51 = v50;
  }

  else
  {
    v75 = 0;
    v51 = 0;
  }

  v52 = [a1 priority];
  if (v52 == 1)
  {
    v53 = MEMORY[0x277CF9ED0];
  }

  else if (v52 == 10)
  {
    v53 = MEMORY[0x277CF9EC8];
  }

  else
  {
    if (v52 != 5)
    {

      if (qword_27D6F2CF0 != -1)
      {
        swift_once();
      }

      v67 = sub_224DAB258();
      __swift_project_value_buffer(v67, qword_27D6F71E0);
      v68 = sub_224DAB228();
      v69 = sub_224DAF288();
      v70 = os_log_type_enabled(v68, v69);
      v71 = v88;
      if (v70)
      {
        v72 = swift_slowAlloc();
        *v72 = 0;
        _os_log_impl(&dword_224A2F000, v68, v69, "Incoming message contains an illegal priority", v72, 2u);
        MEMORY[0x22AA5EED0](v72, -1, -1);
      }

      sub_224AC1F7C();
      swift_allocError();
      *v73 = 1;
      swift_willThrow();
      sub_224AC1D9C(v78, v77);
      (*(v71 + 8))(v38, v7);
      return sub_224CC3F04(v19);
    }

    v53 = MEMORY[0x277CF9EC0];
  }

  (*(v82 + 104))(v81, *v53, v83);
  if (v26 && *(v26 + 16) && (v55 = sub_224A3A40C(0x2D746E65746E6F63, 0xEF6465676E616863), (v56 & 1) != 0) && (sub_224A33E0C(*(v26 + 56) + 32 * v55, v86), swift_dynamicCast()))
  {

    sub_224CC3F04(v19);
    v57 = v87[0];
  }

  else
  {
    if (qword_27D6F2CF0 != -1)
    {
      swift_once();
    }

    v58 = sub_224DAB258();
    __swift_project_value_buffer(v58, qword_27D6F71E0);
    v59 = sub_224DAB228();
    v60 = sub_224DAF288();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_224A2F000, v59, v60, "Incoming message does not contain a content-changed value.", v61, 2u);
      v62 = v61;
      v38 = v80;
      MEMORY[0x22AA5EED0](v62, -1, -1);
    }

    sub_224CC3F04(v19);
    v57 = 0;
  }

  v63 = type metadata accessor for IncomingMessage(0);
  v64 = v79;
  v76(&v79[v63[5]], v38, v7);
  result = (*(v82 + 32))(&v64[v63[7]], v81, v83);
  v65 = v77;
  *v64 = v78;
  *(v64 + 1) = v65;
  v66 = &v64[v63[6]];
  *v66 = v75;
  v66[1] = v51;
  v64[v63[8]] = v57;
  return result;
}

void sub_224CC3134(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    if (qword_27D6F2CF0 != -1)
    {
      swift_once();
    }

    v3 = sub_224DAB258();
    __swift_project_value_buffer(v3, qword_27D6F71E0);
    oslog = sub_224DAB228();
    v4 = sub_224DAF288();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_224A2F000, oslog, v4, "Incoming public token is nil; abandoning", v5, 2u);
      MEMORY[0x22AA5EED0](v5, -1, -1);
    }
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = *(Strong + 40);
      v10 = Strong;
      v11 = swift_allocObject();
      v11[2] = v10;
      v11[3] = v2;
      v11[4] = &off_283832818;
      v11[5] = a1;
      v11[6] = a2;
      sub_224AECAB0(a1, a2);
      sub_224AECAB0(a1, a2);
      swift_unknownObjectRetain();
      v12 = v2;
      _s10ChronoCore14PushFoundationO20KeepAliveTransactionC9asyncTask6reason5queue5delay8wrappingySS_So012OS_dispatch_K0CSdyyycctFZ_0(0xD000000000000013, 0x8000000224DCD920, v9, sub_224CC4220, v11, 0.0);
      swift_unknownObjectRelease();

      sub_224AC1D9C(a1, a2);
    }
  }
}

void sub_224CC3354(void *a1)
{
  v3 = type metadata accessor for IncomingMessage(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x28223BE20](v3 - 8, v6);
  v8 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v23 - v10;
  if (a1)
  {
    v12 = a1;
    sub_224CC25A8(v12, v11);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v18 = *(Strong + 40);
      v19 = Strong;
      sub_224CC4068(v11, v8, type metadata accessor for IncomingMessage);
      v20 = (*(v4 + 80) + 40) & ~*(v4 + 80);
      v21 = swift_allocObject();
      v21[2] = v19;
      v21[3] = v1;
      v21[4] = &off_283832818;
      sub_224CC40D0(v8, v21 + v20, type metadata accessor for IncomingMessage);
      swift_unknownObjectRetain();
      v22 = v1;
      _s10ChronoCore14PushFoundationO20KeepAliveTransactionC9asyncTask6reason5queue5delay8wrappingySS_So012OS_dispatch_K0CSdyyycctFZ_0(0xD000000000000010, 0x8000000224DCD900, v18, sub_224CC4138, v21, 0.0);

      sub_224CC41C0(v11, type metadata accessor for IncomingMessage);
      swift_unknownObjectRelease();
    }

    else
    {

      sub_224CC41C0(v11, type metadata accessor for IncomingMessage);
    }
  }

  else
  {
    if (qword_27D6F2CF0 != -1)
    {
      swift_once();
    }

    v13 = sub_224DAB258();
    __swift_project_value_buffer(v13, qword_27D6F71E0);
    v23[0] = sub_224DAB228();
    v14 = sub_224DAF288();
    if (os_log_type_enabled(v23[0], v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_224A2F000, v23[0], v14, "Incoming message token is nil; abandoning", v15, 2u);
      MEMORY[0x22AA5EED0](v15, -1, -1);
    }

    v16 = v23[0];
  }
}

void sub_224CC3700(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v79 = &v70 - v8;
  v9 = type metadata accessor for AppTokenInfo(0);
  v78 = *(v9 - 8);
  v10 = *(v78 + 64);
  v12 = MEMORY[0x28223BE20](v9, v11);
  MEMORY[0x28223BE20](v12, v13);
  v80 = &v70 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5FF0, &unk_224DB8D30);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = &v70 - v17;
  v19 = sub_224DAE0D8();
  v20 = *(v19 - 8);
  v22 = MEMORY[0x28223BE20](v19, v21);
  v24 = &v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v25);
  if (a2 >> 60 == 15)
  {
    if (qword_27D6F2CF0 != -1)
    {
      swift_once();
    }

    v27 = sub_224DAB258();
    __swift_project_value_buffer(v27, qword_27D6F71E0);
    v81 = sub_224DAB228();
    v28 = sub_224DAF288();
    if (os_log_type_enabled(v81, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_224A2F000, v81, v28, "Incoming token is nil; abandoning", v29, 2u);
      MEMORY[0x22AA5EED0](v29, -1, -1);
    }

LABEL_18:
    v42 = v81;

    return;
  }

  if (!a3)
  {
    sub_224A77FD0(a1, a2);
    if (qword_27D6F2CF0 != -1)
    {
      swift_once();
    }

    v39 = sub_224DAB258();
    __swift_project_value_buffer(v39, qword_27D6F71E0);
    v81 = sub_224DAB228();
    v40 = sub_224DAF288();
    if (os_log_type_enabled(v81, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_224A2F000, v81, v40, "Incoming token info is nil; abandoning", v41, 2u);
      MEMORY[0x22AA5EED0](v41, -1, -1);
    }

    sub_224AC1D9C(a1, a2);
    goto LABEL_18;
  }

  v74 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = &v70 - v26;
  v76 = a1;
  v77 = a2;
  sub_224AECAB0(a1, a2);
  v30 = a3;
  v31 = [v30 topic];
  sub_224DAEE18();

  sub_224DAE0B8();
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_224CC3F04(v18);
    if (qword_27D6F2CF0 != -1)
    {
      swift_once();
    }

    v32 = sub_224DAB258();
    __swift_project_value_buffer(v32, qword_27D6F71E0);
    v33 = sub_224DAB228();
    v34 = sub_224DAF288();
    v35 = os_log_type_enabled(v33, v34);
    v37 = v76;
    v36 = v77;
    if (v35)
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_224A2F000, v33, v34, "Incoming topic cannot be parsed; abandoning", v38, 2u);
      MEMORY[0x22AA5EED0](v38, -1, -1);
    }

    sub_224AC1D9C(v37, v36);
  }

  else
  {
    v43 = *(v20 + 32);
    v44 = v75;
    v43(v75, v18, v19);
    v72 = v20;
    v45 = *(v20 + 16);
    v46 = v19;
    v45(v24, v44, v19);
    v47 = [v30 identifier];
    v71 = sub_224DAEE18();
    v49 = v48;

    v73 = v30;
    v50 = [v30 expirationDate];
    if (v50)
    {
      v51 = v79;
      v52 = v50;
      sub_224DA97F8();

      v53 = 0;
    }

    else
    {
      v53 = 1;
      v51 = v79;
    }

    v54 = sub_224DA9878();
    (*(*(v54 - 8) + 56))(v51, v53, 1, v54);
    v55 = v80;
    v56 = v24;
    v57 = v46;
    v43(v80, v56, v46);
    v58 = (v55 + *(v9 + 20));
    *v58 = v71;
    v58[1] = v49;
    sub_224CC3F6C(v51, v55 + *(v9 + 24));
    v59 = v81;
    Strong = swift_unknownObjectWeakLoadStrong();
    v61 = v72;
    if (Strong)
    {
      v71 = *(Strong + 40);
      v79 = v57;
      v62 = v55;
      v63 = Strong;
      v64 = v74;
      sub_224CC4068(v62, v74, type metadata accessor for AppTokenInfo);
      v65 = (*(v78 + 80) + 56) & ~*(v78 + 80);
      v66 = swift_allocObject();
      v66[2] = v63;
      v66[3] = v59;
      v68 = v76;
      v67 = v77;
      v66[4] = &off_283832818;
      v66[5] = v68;
      v66[6] = v67;
      sub_224CC40D0(v64, v66 + v65, type metadata accessor for AppTokenInfo);
      sub_224AECAB0(v68, v67);
      swift_unknownObjectRetain();
      v69 = v59;
      _s10ChronoCore14PushFoundationO20KeepAliveTransactionC9asyncTask6reason5queue5delay8wrappingySS_So012OS_dispatch_K0CSdyyycctFZ_0(0x6465766965636552, 0xEE006E656B6F7420, v71, sub_224CC3FDC, v66, 0.0);

      sub_224AC1D9C(v68, v67);
      sub_224CC41C0(v62, type metadata accessor for AppTokenInfo);
      (*(v61 + 8))(v75, v79);
      swift_unknownObjectRelease();
    }

    else
    {

      sub_224AC1D9C(v76, v77);
      sub_224CC41C0(v55, type metadata accessor for AppTokenInfo);
      (*(v61 + 8))(v75, v57);
    }
  }
}

uint64_t sub_224CC3F04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5FF0, &unk_224DB8D30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_224CC3F6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F32B0, &qword_224DB3EA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_224CC3FDC(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v5 = *(type metadata accessor for AppTokenInfo(0) - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = v2 + ((*(v5 + 80) + 56) & ~*(v5 + 80));

  return sub_224ABF550(a1, a2, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_224CC4068(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_224CC40D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_224CC4138(uint64_t (*a1)(void), uint64_t a2)
{
  v5 = *(type metadata accessor for IncomingMessage(0) - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = (v2 + ((*(v5 + 80) + 40) & ~*(v5 + 80)));

  return sub_224ABF504(a1, a2, v6, v7, v8, v9);
}

uint64_t sub_224CC41C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_224CC4298()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CFA390]) initIncludingRelevanceBacked_];
  [v0 setRemoteWidgetInclusions_];
  v1 = objc_allocWithZone(MEMORY[0x277CFA3C0]);
  v2 = v0;
  v3 = [v1 initWithWidgetsPredicate:v2 controlsPredicate:0 includeIntents:0];

  qword_2813652A0 = v3;
}

void sub_224CC432C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10ChronoCore20WidgetRendererServer__listener;
  *&v1[OBJC_IVAR____TtC10ChronoCore20WidgetRendererServer__listener] = 0;
  v4 = MEMORY[0x277D84FA0];
  *&v1[OBJC_IVAR____TtC10ChronoCore20WidgetRendererServer__subscriptions] = MEMORY[0x277D84FA0];
  v5 = OBJC_IVAR____TtC10ChronoCore20WidgetRendererServer__clientsSetLock;
  type metadata accessor for UnfairLock();
  v6 = swift_allocObject();
  v7 = swift_slowAlloc();
  *v7 = 0;
  *(v6 + 16) = v7;
  *&v1[v5] = v6;
  *&v1[OBJC_IVAR____TtC10ChronoCore20WidgetRendererServer__clientsSetLock_clients] = v4;
  *&v1[OBJC_IVAR____TtC10ChronoCore20WidgetRendererServer__services] = a1;
  v8 = objc_opt_self();

  v9 = sub_224DAEDE8();
  v10 = [v8 serialQueueTargetingSharedWorkloop:v9 withQoS:33];

  *&v1[OBJC_IVAR____TtC10ChronoCore20WidgetRendererServer__queue] = v10;
  v11 = *&v1[v3];
  *&v1[v3] = 0;

  v21.receiver = v1;
  v21.super_class = type metadata accessor for WidgetRendererServer();
  v12 = objc_msgSendSuper2(&v21, sel_init);
  v19[2] = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_224CCBD80;
  *(v13 + 24) = v19;
  aBlock[4] = sub_224A75AA4;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A37E38;
  aBlock[3] = &block_descriptor_152;
  v14 = _Block_copy(aBlock);
  v15 = objc_opt_self();
  v16 = v12;

  v17 = [v15 listenerWithConfigurator_];
  _Block_release(v14);

  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
  }

  else
  {
    v18 = *&v16[OBJC_IVAR____TtC10ChronoCore20WidgetRendererServer__listener];
    *&v16[OBJC_IVAR____TtC10ChronoCore20WidgetRendererServer__listener] = v17;

    sub_224CC4660();
  }
}

id sub_224CC45B4(void *a1, uint64_t a2)
{
  sub_224DAA808();
  v4 = sub_224DAEDE8();

  [a1 setDomain_];

  sub_224DAA7B8();
  v5 = sub_224DAEDE8();

  [a1 setService_];

  return [a1 setDelegate_];
}

double sub_224CC4660()
{
  v1 = *(v0 + OBJC_IVAR____TtC10ChronoCore20WidgetRendererServer__services);
  sub_224A3317C(v1 + 56, v8);
  __swift_project_boxed_opaque_existential_1(v8, v9);
  sub_224DADA68();
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  v11 = sub_224DAD178();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5200, &qword_224DBA810);
  v2 = MEMORY[0x277CBCD90];
  sub_224A33088(&qword_281350FF0, &qword_27D6F5200, &qword_224DBA810, MEMORY[0x277CBCD90]);
  sub_224DAB488();

  __swift_destroy_boxed_opaque_existential_1(v12);
  __swift_destroy_boxed_opaque_existential_1(v8);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  sub_224A3317C(v1 + 96, v8);
  __swift_project_boxed_opaque_existential_1(v8, v9);
  v12[0] = sub_224DACA58();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F51D8, &unk_224DBE890);
  sub_224A33088(&unk_281351000, &qword_27D6F51D8, &unk_224DBE890, v2);
  sub_224DAB488();

  __swift_destroy_boxed_opaque_existential_1(v8);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  sub_224A3317C(v1 + 136, v8);
  v3 = v9;
  v4 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  v12[0] = (*(*(v4 + 8) + 40))(769, v3);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5140, &unk_224DBAE80);
  sub_224A33088(&qword_281351140, &unk_27D6F5140, &unk_224DBAE80, v2);
  sub_224DAB488();

  __swift_destroy_boxed_opaque_existential_1(v8);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  __swift_project_boxed_opaque_existential_1((v1 + 232), *(v1 + 256));
  v8[0] = sub_224CE80BC();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5CC8, qword_224DBE8A0);
  sub_224A33088(&qword_281351090, &qword_27D6F5CC8, qword_224DBE8A0, v2);
  sub_224DAB488();

  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  sub_224B44674(v1 + 280, v8);
  __swift_project_boxed_opaque_existential_1(v8, v9);
  v12[0] = sub_224DAD7B8();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F50B0, &qword_224DBAE30);
  sub_224A33088(&unk_2813510D0, &unk_27D6F50B0, &qword_224DBAE30, v2);
  sub_224DAB488();

  __swift_destroy_boxed_opaque_existential_1(v8);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  sub_224BBF304(v1 + 176, v8);
  v5 = v9;
  v6 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  v12[0] = (*(v6 + 8))(v5, v6);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_224DAB488();

  __swift_destroy_boxed_opaque_existential_1(v8);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  return result;
}

void sub_224CC4CC4(uint64_t a1, uint64_t a2)
{
  v64 = sub_224DAB7B8();
  v2 = *(v64 - 8);
  MEMORY[0x28223BE20](v64, v3);
  v63 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_224DAB848();
  v5 = *(v62 - 8);
  MEMORY[0x28223BE20](v62, v6);
  v61 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_224DAB728();
  v66 = *(v65 - 8);
  v8 = *(v66 + 64);
  v10 = MEMORY[0x28223BE20](v65, v9);
  v60 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v48 - v12;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v68 = v5;
    v15 = Strong;
    sub_224A3317C(*(Strong + OBJC_IVAR____TtC10ChronoCore20WidgetRendererServer__services) + 56, aBlock);
    __swift_project_boxed_opaque_existential_1(aBlock, v72);
    sub_224DADA68();
    __swift_project_boxed_opaque_existential_1(v75, v76);
    sub_224DAD168();
    __swift_destroy_boxed_opaque_existential_1(v75);
    __swift_destroy_boxed_opaque_existential_1(aBlock);
    v49 = *&v15[OBJC_IVAR____TtC10ChronoCore20WidgetRendererServer__clientsSetLock];
    os_unfair_lock_lock(*(v49 + 16));
    v16 = OBJC_IVAR____TtC10ChronoCore20WidgetRendererServer__clientsSetLock_clients;
    swift_beginAccess();
    v50 = v15;
    v17 = *&v15[v16];
    if ((v17 & 0xC000000000000001) != 0)
    {

      sub_224DAF7E8();
      type metadata accessor for WidgetRendererClient();
      sub_224A7940C(&qword_27D6F6150, type metadata accessor for WidgetRendererClient, MEMORY[0x277D85378]);
      sub_224DAF1F8();
      v17 = v75[0];
      v18 = v75[1];
      v20 = v75[2];
      v19 = v76;
      v21 = v77;
    }

    else
    {
      v22 = -1 << *(v17 + 32);
      v18 = v17 + 56;
      v20 = ~v22;
      v23 = -v22;
      if (v23 < 64)
      {
        v24 = ~(-1 << v23);
      }

      else
      {
        v24 = -1;
      }

      v21 = v24 & *(v17 + 56);

      v19 = 0;
    }

    v48 = v20;
    v25 = (v20 + 64) >> 6;
    v56 = v66 + 16;
    v55 = v8 + 7;
    v54 = v66 + 32;
    v53 = &v71;
    v52 = (v2 + 8);
    v51 = (v68 + 8);
    v59 = v13;
    v58 = v17;
    v57 = v18;
    if (v17 < 0)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v26 = v19;
      v27 = v21;
      v28 = v19;
      if (!v21)
      {
        break;
      }

LABEL_13:
      v29 = (v27 - 1) & v27;
      v30 = *(*(v17 + 48) + ((v28 << 9) | (8 * __clz(__rbit64(v27)))));
      if (!v30)
      {
LABEL_19:
        sub_224A3B7E4(v17);
        os_unfair_lock_unlock(*(v49 + 16));
        (*(v66 + 8))(v13, v65);

        return;
      }

      while (1)
      {
        v68 = v29;
        v32 = v66;
        v33 = v60;
        v34 = v65;
        (*(v66 + 16))(v60, v13, v65);
        v35 = (*(v32 + 80) + 16) & ~*(v32 + 80);
        v36 = (v55 + v35) & 0xFFFFFFFFFFFFFFF8;
        v37 = swift_allocObject();
        (*(v32 + 32))(v37 + v35, v33, v34);
        *(v37 + v36) = v30;
        v67 = *&v30[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__queue];
        v38 = swift_allocObject();
        v38[2] = v30;
        v38[3] = sub_224CCBCE4;
        v38[4] = v37;
        v73 = sub_224CCBDC4;
        v74 = v38;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        v71 = sub_224A39F40;
        v72 = &block_descriptor_146_0;
        v39 = v25;
        v40 = _Block_copy(aBlock);
        v41 = v30;

        v42 = v61;
        sub_224DAB7E8();
        v69 = MEMORY[0x277D84F90];
        sub_224A7940C(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
        sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
        v43 = v63;
        v44 = v64;
        sub_224DAF788();
        MEMORY[0x22AA5D760](0, v42, v43, v40);
        v45 = v40;
        v25 = v39;
        _Block_release(v45);
        v13 = v59;

        v46 = v44;
        v17 = v58;
        (*v52)(v43, v46);
        v47 = v42;
        v18 = v57;
        (*v51)(v47, v62);

        v19 = v28;
        v21 = v68;
        if ((v17 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_15:
        v31 = sub_224DAF878();
        if (v31)
        {
          v69 = v31;
          type metadata accessor for WidgetRendererClient();
          swift_dynamicCast();
          v30 = aBlock[0];
          v28 = v19;
          v29 = v21;
          if (aBlock[0])
          {
            continue;
          }
        }

        goto LABEL_19;
      }
    }

    while (1)
    {
      v28 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v28 >= v25)
      {
        goto LABEL_19;
      }

      v27 = *(v18 + 8 * v28);
      ++v26;
      if (v27)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

void sub_224CC54C0(uint64_t *a1, uint64_t a2)
{
  v31 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(*(Strong + OBJC_IVAR____TtC10ChronoCore20WidgetRendererServer__clientsSetLock) + 16);
    v4 = Strong;
    v28 = *(Strong + OBJC_IVAR____TtC10ChronoCore20WidgetRendererServer__clientsSetLock);

    os_unfair_lock_lock(v3);
    v5 = OBJC_IVAR____TtC10ChronoCore20WidgetRendererServer__clientsSetLock_clients;
    swift_beginAccess();
    v29 = v4;
    v6 = *&v4[v5];
    if ((v6 & 0xC000000000000001) != 0)
    {

      sub_224DAF7E8();
      type metadata accessor for WidgetRendererClient();
      sub_224A7940C(&qword_27D6F6150, type metadata accessor for WidgetRendererClient, MEMORY[0x277D85378]);
      sub_224DAF1F8();
      v6 = v33;
      v7 = v34;
      v8 = v35;
      v9 = v36;
      v10 = v37;
    }

    else
    {
      v11 = -1 << *(v6 + 32);
      v7 = v6 + 56;
      v8 = ~v11;
      v12 = -v11;
      if (v12 < 64)
      {
        v13 = ~(-1 << v12);
      }

      else
      {
        v13 = -1;
      }

      v10 = v13 & *(v6 + 56);

      v9 = 0;
    }

    v14 = (v8 + 64) >> 6;
    v30 = v6;
    if (v6 < 0)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v15 = v9;
      v16 = v10;
      v17 = v9;
      if (!v10)
      {
        break;
      }

LABEL_13:
      v18 = (v16 - 1) & v16;
      v20 = *(*(v6 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));
      if (!v20)
      {
LABEL_21:
        sub_224A3B7E4(v6);
        os_unfair_lock_unlock(*(v28 + 16));

        return;
      }

      while (1)
      {
        sub_224A7E76C(v31, v19);
        if (qword_2813589F8 != -1)
        {
          swift_once();
        }

        v21 = qword_2813652A0;
        v22 = objc_allocWithZone(MEMORY[0x277CFA3C8]);
        sub_224A3B79C(0, &qword_281350A40, 0x277CFA3A8);
        sub_224A87A80();
        v23 = v21;
        v24 = sub_224DAF1A8();

        v25 = [v22 initWithExtensions:v24 generatedFrom:v23];

        v26 = swift_allocObject();
        *(v26 + 16) = v25;
        v27 = v25;
        sub_224A77CC8(sub_224CCBCD4, v26);

        v9 = v17;
        v10 = v18;
        v6 = v30;
        if ((v30 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_15:
        if (sub_224DAF878())
        {
          type metadata accessor for WidgetRendererClient();
          swift_dynamicCast();
          v20 = v32;
          v17 = v9;
          v18 = v10;
          if (v32)
          {
            continue;
          }
        }

        goto LABEL_21;
      }
    }

    while (1)
    {
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v17 >= v14)
      {
        goto LABEL_21;
      }

      v16 = *(v7 + 8 * v17);
      ++v15;
      if (v16)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

double sub_224CC5858(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + OBJC_IVAR____TtC10ChronoCore20WidgetRendererServer__clientsSetLock);
    v7 = *(v6 + 16);

    os_unfair_lock_lock(v7);
    sub_224CC590C(v5, a1);
    os_unfair_lock_unlock(*(v6 + 16));
  }

  return result;
}

void sub_224CC590C(uint64_t a1, uint64_t a2)
{
  v53 = a2;
  v52 = sub_224DAB7B8();
  v3 = *(v52 - 8);
  MEMORY[0x28223BE20](v52, v4);
  v51 = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_224DAB848();
  v6 = *(v50 - 8);
  MEMORY[0x28223BE20](v50, v7);
  v49 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224A3317C(*(a1 + OBJC_IVAR____TtC10ChronoCore20WidgetRendererServer__services) + 136, v64);
  v9 = v65;
  v10 = v66;
  __swift_project_boxed_opaque_existential_1(v64, v65);
  (*(v10 + 32))(aBlock, 769, v9, v10);
  if (!v63)
  {
    __swift_destroy_boxed_opaque_existential_1(v64);
    sub_224A3311C(aBlock, &qword_27D6F50E0, &qword_224DB41A0);
LABEL_10:
    v54 = 0;
    goto LABEL_11;
  }

  v11 = sub_224A86CAC();
  sub_224A699F0(aBlock);
  if (!v11)
  {
    __swift_destroy_boxed_opaque_existential_1(v64);
    goto LABEL_10;
  }

  if (v11[2] && (v12 = sub_224A683FC(v53), (v13 & 1) != 0))
  {
    v54 = *(v11[7] + 8 * v12);
  }

  else
  {

    v54 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v64);
LABEL_11:
  v14 = OBJC_IVAR____TtC10ChronoCore20WidgetRendererServer__clientsSetLock_clients;
  swift_beginAccess();
  v15 = *(a1 + v14);
  if ((v15 & 0xC000000000000001) != 0)
  {

    sub_224DAF7E8();
    type metadata accessor for WidgetRendererClient();
    sub_224A7940C(&qword_27D6F6150, type metadata accessor for WidgetRendererClient, MEMORY[0x277D85378]);
    sub_224DAF1F8();
    v15 = v64[0];
    v16 = v64[1];
    v17 = v64[2];
    v18 = v65;
    v19 = v66;
  }

  else
  {
    v20 = -1 << *(v15 + 32);
    v16 = v15 + 56;
    v17 = ~v20;
    v21 = -v20;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v19 = v22 & *(v15 + 56);

    v18 = 0;
  }

  v43[0] = v17;
  v23 = (v17 + 64) >> 6;
  v46 = v62;
  v45 = (v3 + 8);
  v44 = (v6 + 8);
  v48 = v15;
  v47 = v16;
  if (v15 < 0)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v24 = v18;
    v25 = v19;
    v26 = v18;
    if (!v19)
    {
      break;
    }

LABEL_22:
    v27 = (v25 - 1) & v25;
    v28 = *(*(v15 + 48) + ((v26 << 9) | (8 * __clz(__rbit64(v25)))));
    if (!v28)
    {
LABEL_28:
      sub_224A3B7E4(v15);

      return;
    }

    while (1)
    {
      v57 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F30D0, &unk_224DB2AC0);
      sub_224A33088(&qword_281351868, &unk_27D6F30D0, &unk_224DB2AC0, MEMORY[0x277CFA028]);
      sub_224DAEFA8();
      v30 = v59;
      v31 = v60;
      v32 = swift_allocObject();
      v33 = v54;
      v32[2] = v54;
      v32[3] = v30;
      v32[4] = v31;
      v56 = *&v28[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__queue];
      v34 = swift_allocObject();
      v34[2] = v28;
      v34[3] = sub_224CCBC68;
      v34[4] = v32;
      v62[2] = sub_224CCBDC4;
      v63 = v34;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v62[0] = sub_224A39F40;
      v62[1] = &block_descriptor_133;
      v35 = _Block_copy(aBlock);
      v36 = v33;
      v55 = v28;

      v37 = v49;
      sub_224DAB7E8();
      v58 = MEMORY[0x277D84F90];
      sub_224A7940C(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
      sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
      v38 = v23;
      v39 = v51;
      v40 = v52;
      v16 = v47;
      sub_224DAF788();
      MEMORY[0x22AA5D760](0, v37, v39, v35);
      _Block_release(v35);

      v41 = v39;
      v23 = v38;
      (*v45)(v41, v40);
      v42 = v37;
      v15 = v48;
      (*v44)(v42, v50);

      v18 = v26;
      v19 = v57;
      if ((v15 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_24:
      v29 = sub_224DAF878();
      if (v29)
      {
        v59 = v29;
        type metadata accessor for WidgetRendererClient();
        swift_dynamicCast();
        v28 = aBlock[0];
        v26 = v18;
        v27 = v19;
        if (aBlock[0])
        {
          continue;
        }
      }

      goto LABEL_28;
    }
  }

  while (1)
  {
    v26 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v26 >= v23)
    {
      goto LABEL_28;
    }

    v25 = *(v16 + 8 * v26);
    ++v24;
    if (v25)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
}

void sub_224CC601C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6170, &qword_224DBD720);
    MEMORY[0x22AA5C290](v24, v4);
    v5 = v24[0];
    v6 = *(*&v3[OBJC_IVAR____TtC10ChronoCore20WidgetRendererServer__clientsSetLock] + 16);
    v22 = *&v3[OBJC_IVAR____TtC10ChronoCore20WidgetRendererServer__clientsSetLock];

    os_unfair_lock_lock(v6);
    v7 = OBJC_IVAR____TtC10ChronoCore20WidgetRendererServer__clientsSetLock_clients;
    swift_beginAccess();
    v8 = *&v3[v7];
    if ((v8 & 0xC000000000000001) != 0)
    {

      sub_224DAF7E8();
      type metadata accessor for WidgetRendererClient();
      sub_224A7940C(&qword_27D6F6150, type metadata accessor for WidgetRendererClient, MEMORY[0x277D85378]);
      sub_224DAF1F8();
      v8 = v24[0];
      v9 = v24[1];
      v10 = v24[2];
      v11 = v24[3];
      v12 = v24[4];
    }

    else
    {
      v13 = -1 << *(v8 + 32);
      v9 = v8 + 56;
      v10 = ~v13;
      v14 = -v13;
      if (v14 < 64)
      {
        v15 = ~(-1 << v14);
      }

      else
      {
        v15 = -1;
      }

      v12 = v15 & *(v8 + 56);

      v11 = 0;
    }

    v16 = (v10 + 64) >> 6;
    if (v8 < 0)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v17 = v11;
      v18 = v12;
      v19 = v11;
      if (!v12)
      {
        break;
      }

LABEL_13:
      v20 = (v18 - 1) & v18;
      v21 = *(*(v8 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v18)))));
      if (!v21)
      {
LABEL_19:
        sub_224A3B7E4(v8);
        os_unfair_lock_unlock(*(v22 + 16));

        return;
      }

      while (1)
      {
        sub_224A8295C(v5);

        v11 = v19;
        v12 = v20;
        if ((v8 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_15:
        if (sub_224DAF878())
        {
          type metadata accessor for WidgetRendererClient();
          swift_dynamicCast();
          v21 = v23;
          v19 = v11;
          v20 = v12;
          if (v23)
          {
            continue;
          }
        }

        goto LABEL_19;
      }
    }

    while (1)
    {
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v19 >= v16)
      {
        goto LABEL_19;
      }

      v18 = *(v9 + 8 * v19);
      ++v17;
      if (v18)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

void sub_224CC62BC(uint64_t a1, uint64_t a2)
{
  v31 = a1;
  v30 = sub_224DABE18();
  v2 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v3);
  v29 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = *(*(Strong + OBJC_IVAR____TtC10ChronoCore20WidgetRendererServer__clientsSetLock) + 16);
    v7 = Strong;
    v27 = *(Strong + OBJC_IVAR____TtC10ChronoCore20WidgetRendererServer__clientsSetLock);

    os_unfair_lock_lock(v6);
    v8 = OBJC_IVAR____TtC10ChronoCore20WidgetRendererServer__clientsSetLock_clients;
    swift_beginAccess();
    v28 = v7;
    v9 = *&v7[v8];
    if ((v9 & 0xC000000000000001) != 0)
    {

      sub_224DAF7E8();
      type metadata accessor for WidgetRendererClient();
      sub_224A7940C(&qword_27D6F6150, type metadata accessor for WidgetRendererClient, MEMORY[0x277D85378]);
      sub_224DAF1F8();
      v9 = v34;
      v10 = v35;
      v11 = v36;
      v12 = v37;
      v13 = v38;
    }

    else
    {
      v14 = -1 << *(v9 + 32);
      v10 = v9 + 56;
      v11 = ~v14;
      v15 = -v14;
      if (v15 < 64)
      {
        v16 = ~(-1 << v15);
      }

      else
      {
        v16 = -1;
      }

      v13 = v16 & *(v9 + 56);

      v12 = 0;
    }

    v26 = v11;
    v17 = (v11 + 64) >> 6;
    if (v9 < 0)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v18 = v12;
      v19 = v13;
      v20 = v12;
      if (!v13)
      {
        break;
      }

LABEL_13:
      v21 = (v19 - 1) & v19;
      v22 = *(*(v9 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19)))));
      if (!v22)
      {
LABEL_19:
        sub_224A3B7E4(v9);
        os_unfair_lock_unlock(*(v27 + 16));

        return;
      }

      while (1)
      {
        v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F50D8, &unk_224DBD6E0);
        v25 = v29;
        MEMORY[0x22AA5BB00](v24);
        sub_224CC9304(v25);

        (*(v2 + 8))(v25, v30);
        v12 = v20;
        v13 = v21;
        if ((v9 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_15:
        v23 = sub_224DAF878();
        if (v23)
        {
          v32 = v23;
          type metadata accessor for WidgetRendererClient();
          swift_dynamicCast();
          v22 = v33;
          v20 = v12;
          v21 = v13;
          if (v33)
          {
            continue;
          }
        }

        goto LABEL_19;
      }
    }

    while (1)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v20 >= v17)
      {
        goto LABEL_19;
      }

      v19 = *(v10 + 8 * v20);
      ++v18;
      if (v19)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

void sub_224CC6604(uint64_t a1, uint64_t a2)
{
  v2 = sub_224DABE18();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v28 = v3;
    v29 = v2;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F50D8, &unk_224DBD6E0);
    MEMORY[0x22AA5BB00](v9);
    v27 = *&v8[OBJC_IVAR____TtC10ChronoCore20WidgetRendererServer__clientsSetLock];
    os_unfair_lock_lock(*(v27 + 16));
    v10 = OBJC_IVAR____TtC10ChronoCore20WidgetRendererServer__clientsSetLock_clients;
    swift_beginAccess();
    v11 = *&v8[v10];
    if ((v11 & 0xC000000000000001) != 0)
    {

      sub_224DAF7E8();
      type metadata accessor for WidgetRendererClient();
      sub_224A7940C(&qword_27D6F6150, type metadata accessor for WidgetRendererClient, MEMORY[0x277D85378]);
      sub_224DAF1F8();
      v11 = v32;
      v12 = v33;
      v13 = v34;
      v14 = v35;
      v15 = v36;
    }

    else
    {
      v16 = -1 << *(v11 + 32);
      v12 = v11 + 56;
      v13 = ~v16;
      v17 = -v16;
      if (v17 < 64)
      {
        v18 = ~(-1 << v17);
      }

      else
      {
        v18 = -1;
      }

      v15 = v18 & *(v11 + 56);

      v14 = 0;
    }

    v26[1] = v13;
    v19 = (v13 + 64) >> 6;
    if (v11 < 0)
    {
      goto LABEL_15;
    }

    while (1)
    {
      v20 = v14;
      v21 = v15;
      v22 = v14;
      if (!v15)
      {
        break;
      }

LABEL_13:
      v23 = (v21 - 1) & v21;
      v24 = *(*(v11 + 48) + ((v22 << 9) | (8 * __clz(__rbit64(v21)))));
      if (!v24)
      {
LABEL_19:
        sub_224A3B7E4(v11);
        os_unfair_lock_unlock(*(v27 + 16));

        (*(v28 + 8))(v6, v29);
        return;
      }

      while (1)
      {
        sub_224CC9FB8(v6);

        v14 = v22;
        v15 = v23;
        if ((v11 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_15:
        v25 = sub_224DAF878();
        if (v25)
        {
          v30 = v25;
          type metadata accessor for WidgetRendererClient();
          swift_dynamicCast();
          v24 = v31;
          v22 = v14;
          v23 = v15;
          if (v31)
          {
            continue;
          }
        }

        goto LABEL_19;
      }
    }

    while (1)
    {
      v22 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v22 >= v19)
      {
        goto LABEL_19;
      }

      v21 = *(v12 + 8 * v22);
      ++v20;
      if (v21)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

id sub_224CC6920()
{
  v1 = *&v0[OBJC_IVAR____TtC10ChronoCore20WidgetRendererServer__listener];
  if (v1)
  {
    [v1 invalidate];
  }

  v3.receiver = v0;
  v3.super_class = type metadata accessor for WidgetRendererServer();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_224CC6A68()
{
  v1 = v0;
  if (qword_281351580 != -1)
  {
    swift_once();
  }

  v2 = sub_224DAB258();
  __swift_project_value_buffer(v2, qword_281364EC8);
  v3 = sub_224DAB228();
  v4 = sub_224DAF2A8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136446210;
    v7 = sub_224DAA7B8();
    v9 = sub_224A33F74(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_224A2F000, v3, v4, "%{public}s begin listening for connections", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x22AA5EED0](v6, -1, -1);
    MEMORY[0x22AA5EED0](v5, -1, -1);
  }

  v10 = *(v1 + OBJC_IVAR____TtC10ChronoCore20WidgetRendererServer__listener);

  return [v10 activate];
}

void sub_224CC6BD4()
{
  v1 = *(v0 + OBJC_IVAR____TtC10ChronoCore20WidgetRendererServer__clientsSetLock);
  os_unfair_lock_lock(*(v1 + 16));
  v2 = OBJC_IVAR____TtC10ChronoCore20WidgetRendererServer__clientsSetLock_clients;
  swift_beginAccess();
  v3 = *(v0 + v2);
  v46 = v1;
  if ((v3 & 0xC000000000000001) != 0)
  {

    sub_224DAF7E8();
    type metadata accessor for WidgetRendererClient();
    sub_224A7940C(&qword_27D6F6150, type metadata accessor for WidgetRendererClient, MEMORY[0x277D85378]);
    sub_224DAF1F8();
    v3 = v54;
    v4 = v55;
    v5 = v56;
    v6 = v57;
    v7 = v58;
  }

  else
  {
    v8 = -1 << *(v3 + 32);
    v4 = v3 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v3 + 56);

    v6 = 0;
  }

  v11 = (v5 + 64) >> 6;
  v52 = MEMORY[0x277D84F90];
  v49 = v11;
  v47 = v4;
  v48 = v3;
  while (v3 < 0)
  {
    if (!sub_224DAF878())
    {
      goto LABEL_60;
    }

    type metadata accessor for WidgetRendererClient();
    swift_dynamicCast();
    v16 = v53;
    v14 = v6;
    v15 = v7;
    if (!v53)
    {
      goto LABEL_60;
    }

LABEL_18:
    v17 = *&v16[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__lock];
    v18 = *(v17 + 16);

    os_unfair_lock_lock(v18);
    v19 = OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__lock_sessions;
    swift_beginAccess();
    v51 = v16;
    v20 = *&v16[v19];
    if ((v20 & 0xC000000000000001) != 0)
    {

      v21 = sub_224DAF838();
      if (!v21)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v21 = *(v20 + 16);

      if (!v21)
      {
LABEL_25:

        v22 = MEMORY[0x277D84F90];
        goto LABEL_28;
      }
    }

    if (v21 < 1)
    {
      v22 = MEMORY[0x277D84F90];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D90, &qword_224DB5FD0);
      v22 = swift_allocObject();
      v23 = _swift_stdlib_malloc_size(v22);
      v24 = v23 - 32;
      if (v23 < 32)
      {
        v24 = v23 - 25;
      }

      *(v22 + 16) = v21;
      *(v22 + 24) = (2 * (v24 >> 3)) | 1;
    }

    v25 = sub_224B2EEC8(&v53, (v22 + 32), v21, v20);
    sub_224A3B7E4(v53);
    if (v25 != v21)
    {
      goto LABEL_63;
    }

LABEL_28:
    v26 = *(v17 + 16);

    os_unfair_lock_unlock(v26);

    v27 = v22 < 0 || (v22 & 0x4000000000000000) != 0;
    v28 = v52;
    if (v27)
    {
      v29 = sub_224DAF838();
    }

    else
    {
      v29 = *(v22 + 16);
    }

    v30 = v52 >> 62;
    v50 = v15;
    if (v52 >> 62)
    {
      v45 = sub_224DAF838();
      v32 = v45 + v29;
      if (__OFADD__(v45, v29))
      {
LABEL_59:
        __break(1u);
LABEL_60:
        sub_224A3B7E4(v3);
        os_unfair_lock_unlock(*(v46 + 16));
        return;
      }
    }

    else
    {
      v31 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v32 = v31 + v29;
      if (__OFADD__(v31, v29))
      {
        goto LABEL_59;
      }
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v30)
      {
LABEL_40:
        sub_224DAF838();
      }

LABEL_41:
      v28 = sub_224DAF968();
      v33 = v28 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_42;
    }

    if (v30)
    {
      goto LABEL_40;
    }

    v33 = v52 & 0xFFFFFFFFFFFFFF8;
    if (v32 > *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_41;
    }

LABEL_42:
    v52 = v28;
    v34 = *(v33 + 16);
    v35 = *(v33 + 24);
    if (v27)
    {
      v36 = sub_224DAF838();
    }

    else
    {
      v36 = *(v22 + 16);
    }

    if (v36)
    {
      if (((v35 >> 1) - v34) < v29)
      {
        goto LABEL_64;
      }

      v37 = v33 + 8 * v34 + 32;
      if (v27)
      {
        if (v36 < 1)
        {
          goto LABEL_66;
        }

        sub_224A33088(&unk_27D6F6160, &qword_27D6F6158, &unk_224DBE880, MEMORY[0x277D83988]);
        for (i = 0; i != v36; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6158, &unk_224DBE880);
          v39 = sub_224A6996C(&v53, i, v22);
          v41 = *v40;
          (v39)(&v53, 0);
          *(v37 + 8 * i) = v41;
        }

        v4 = v47;
        v3 = v48;
      }

      else
      {
        sub_224A3B79C(0, &qword_2813508E8, 0x277D7BC20);
        swift_arrayInitWithCopy();
      }

      v6 = v14;
      v11 = v49;
      v7 = v50;
      if (v29 > 0)
      {
        v42 = *(v33 + 16);
        v43 = __OFADD__(v42, v29);
        v44 = v42 + v29;
        if (v43)
        {
          goto LABEL_65;
        }

        *(v33 + 16) = v44;
        v6 = v14;
        v7 = v50;
      }
    }

    else
    {

      v6 = v14;
      v11 = v49;
      v7 = v50;
      if (v29 > 0)
      {
        goto LABEL_62;
      }
    }
  }

  v12 = v6;
  v13 = v7;
  v14 = v6;
  if (v7)
  {
LABEL_14:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v3 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v16)
    {
      goto LABEL_60;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      goto LABEL_60;
    }

    v13 = *(v4 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
}

void sub_224CC71CC()
{
  v41 = sub_224DAB7B8();
  v1 = *(v41 - 8);
  MEMORY[0x28223BE20](v41, v2);
  v40 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_224DAB848();
  v4 = *(v39 - 8);
  MEMORY[0x28223BE20](v39, v5);
  v38 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(v0 + OBJC_IVAR____TtC10ChronoCore20WidgetRendererServer__clientsSetLock);
  os_unfair_lock_lock(*(v34 + 16));
  v7 = OBJC_IVAR____TtC10ChronoCore20WidgetRendererServer__clientsSetLock_clients;
  swift_beginAccess();
  v8 = *(v0 + v7);
  if ((v8 & 0xC000000000000001) != 0)
  {

    sub_224DAF7E8();
    type metadata accessor for WidgetRendererClient();
    sub_224A7940C(&qword_27D6F6150, type metadata accessor for WidgetRendererClient, MEMORY[0x277D85378]);
    sub_224DAF1F8();
    v8 = v48;
    v9 = v49;
    v10 = v50;
    v11 = v51;
    v12 = v52;
  }

  else
  {
    v13 = -1 << *(v8 + 32);
    v9 = v8 + 56;
    v10 = ~v13;
    v14 = -v13;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v12 = v15 & *(v8 + 56);

    v11 = 0;
  }

  v33 = v10;
  v16 = (v10 + 64) >> 6;
  v37 = v47;
  v36 = (v1 + 8);
  v35 = (v4 + 8);
  if (v8 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v17 = v11;
    v18 = v12;
    v19 = v11;
    if (!v12)
    {
      break;
    }

LABEL_12:
    v20 = (v18 - 1) & v18;
    v21 = *(*(v8 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v18)))));
    if (!v21)
    {
LABEL_18:
      sub_224A3B7E4(v8);
      os_unfair_lock_unlock(*(v34 + 16));
      return;
    }

    while (1)
    {
      v44 = *&v21[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__queue];
      v23 = swift_allocObject();
      v23[2] = v21;
      v23[3] = sub_224CC8F14;
      v23[4] = 0;
      v47[2] = sub_224CCBDC4;
      v47[3] = v23;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v47[0] = sub_224A39F40;
      v47[1] = &block_descriptor_117_0;
      v24 = _Block_copy(aBlock);
      v43 = v21;
      v25 = v38;
      sub_224DAB7E8();
      v45 = MEMORY[0x277D84F90];
      sub_224A7940C(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      v42 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
      sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
      v26 = v8;
      v27 = v40;
      v28 = v16;
      v29 = v9;
      v30 = v41;
      sub_224DAF788();
      MEMORY[0x22AA5D760](0, v25, v27, v24);
      _Block_release(v24);
      v31 = v27;
      v8 = v26;
      v32 = v30;
      v9 = v29;
      v16 = v28;
      (*v36)(v31, v32);
      (*v35)(v25, v39);

      v11 = v19;
      v12 = v42;
      if ((v26 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v22 = sub_224DAF878();
      if (v22)
      {
        v45 = v22;
        type metadata accessor for WidgetRendererClient();
        swift_dynamicCast();
        v21 = aBlock[0];
        v19 = v11;
        v20 = v12;
        if (aBlock[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v16)
    {
      goto LABEL_18;
    }

    v18 = *(v9 + 8 * v19);
    ++v17;
    if (v18)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

void sub_224CC77BC(uint64_t a1, void *a2)
{
  v4 = sub_224DA9F08();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = v60 - v11;
  v13 = OBJC_IVAR____TtC10ChronoCore20WidgetRendererServer__clientsSetLock_clients;
  swift_beginAccess();
  v14 = *(a1 + v13);
  if ((v14 & 0xC000000000000001) != 0)
  {

    sub_224DAF7E8();
    type metadata accessor for WidgetRendererClient();
    sub_224A7940C(&qword_27D6F6150, type metadata accessor for WidgetRendererClient, MEMORY[0x277D85378]);
    sub_224DAF1F8();
    v15 = v89;
    v16 = v90;
    v17 = v91;
    v18 = v92;
    v19 = v93;
  }

  else
  {
    v20 = -1 << *(v14 + 32);
    v16 = v14 + 56;
    v21 = ~v20;
    v22 = -v20;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v19 = v23 & *(v14 + 56);

    v17 = v21;
    v18 = 0;
  }

  v60[1] = v17;
  v24 = (v17 + 64) >> 6;
  v25 = (v5 + 16);
  v69 = *MEMORY[0x277CF9F30];
  v68 = (v5 + 8);
  v67 = *MEMORY[0x277CF9F38];
  v73 = a2;
  v72 = v4;
  v71 = v9;
  v26 = (v5 + 104);
  v63 = v15;
  v62 = v16;
  v61 = v24;
  v81 = (v5 + 104);
  v70 = v12;
  while (v15 < 0)
  {
    v33 = sub_224DAF878();
    if (!v33 || (v94 = v33, type metadata accessor for WidgetRendererClient(), swift_dynamicCast(), v32 = v88, v65 = v18, v64 = v19, !v88))
    {
LABEL_48:
      sub_224A3B7E4(v63);
      return;
    }

LABEL_18:
    v66 = v32;
    v34 = [*&v32[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__processHandle] bundleIdentifier];
    if (v34)
    {
      v35 = v34;
      v77 = sub_224DAEE18();
      v78 = v36;
    }

    else
    {
      v78 = 0xE700000000000000;
      v77 = 0x6E776F6E6B6E75;
    }

    v37 = v66;
    v38 = *&v66[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__lock];
    os_unfair_lock_lock(*(v38 + 16));
    v39 = OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__lock_sessions;
    swift_beginAccess();
    v40 = *&v37[v39];
    if ((v40 & 0xC000000000000001) != 0)
    {

      v41 = sub_224DAF838();
      if (!v41)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v41 = *(v40 + 16);

      if (!v41)
      {
LABEL_28:

        v42 = MEMORY[0x277D84F90];
        goto LABEL_32;
      }
    }

    if (v41 < 1)
    {
      v42 = MEMORY[0x277D84F90];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5D90, &qword_224DB5FD0);
      v42 = swift_allocObject();
      v43 = _swift_stdlib_malloc_size(v42);
      v44 = v43 - 32;
      if (v43 < 32)
      {
        v44 = v43 - 25;
      }

      *(v42 + 16) = v41;
      *(v42 + 24) = (2 * (v44 >> 3)) | 1;
    }

    v45 = sub_224B2FC64(&v88, (v42 + 32), v41, v40);
    sub_224A3B7E4(v88);
    if (v45 != v41)
    {
      goto LABEL_50;
    }

LABEL_32:
    os_unfair_lock_unlock(*(v38 + 16));
    if (v42 < 0 || (v42 & 0x4000000000000000) != 0)
    {
      v46 = sub_224DAF838();
      if (!v46)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v46 = *(v42 + 16);
      if (!v46)
      {
        goto LABEL_8;
      }
    }

    if (v46 < 1)
    {
      goto LABEL_51;
    }

    v47 = 0;
    v74 = v42 & 0xC000000000000001;
    v76 = v42;
    v75 = v46;
    do
    {
      v86 = v47;
      if (v74)
      {
        v48 = MEMORY[0x22AA5DCC0](v47, v42);
      }

      else
      {
        v48 = *(v42 + 8 * v47 + 32);
      }

      v87 = v48;
      v49 = *(v48 + 24);
      v50 = [v49 identifier];
      v84 = sub_224DAEE18();
      v83 = v51;

      v85 = v49;
      v82 = [v49 widget];
      v52 = OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession_taskPriority;
      swift_beginAccess();
      v53 = v48 + v52;
      v54 = v70;
      v55 = v72;
      v80 = *v25;
      v80(v70, v53, v72);
      v56 = v71;
      v79 = *v26;
      v79(v71, v69, v55);
      sub_224A7940C(&unk_2813519C8, MEMORY[0x277CF9F40], MEMORY[0x277CF9F58]);
      sub_224DAEFA8();
      sub_224DAEFA8();
      v57 = *v68;
      (*v68)(v56, v55);
      v57(v54, v55);
      if (v88 != v94)
      {
        v80(v54, v87 + v52, v55);
        v79(v56, v67, v55);
        sub_224DAEFA8();
        sub_224DAEFA8();
        v57(v56, v55);
        v57(v54, v55);
      }

      sub_224DAA4A8();
      swift_allocObject();

      sub_224DAA498();

      v59 = v73;
      MEMORY[0x22AA5D350](v58);
      v42 = v76;
      if (*((*v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_224DAF038();
      }

      v47 = v86 + 1;
      sub_224DAF078();

      v26 = v81;
    }

    while (v75 != v47);
LABEL_8:

    v18 = v65;
    v19 = v64;
    v15 = v63;
    v16 = v62;
    v24 = v61;
  }

  v27 = v18;
  v28 = v19;
  v29 = v18;
  if (v19)
  {
LABEL_14:
    v30 = __clz(__rbit64(v28));
    v64 = (v28 - 1) & v28;
    v31 = *(v15 + 48);
    v65 = v29;
    v32 = *(v31 + ((v29 << 9) | (8 * v30)));
    if (!v32)
    {
      goto LABEL_48;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v29 >= v24)
    {
      goto LABEL_48;
    }

    v28 = *(v16 + 8 * v29);
    ++v27;
    if (v28)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
}

void sub_224CC80B4(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_281351580 != -1)
  {
    swift_once();
  }

  v4 = sub_224DAB258();
  __swift_project_value_buffer(v4, qword_281364EC8);
  v5 = a1;
  v6 = sub_224DAB228();
  v7 = sub_224DAF2A8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v24[0] = v9;
    *v8 = 136446210;
    v10 = [v5 remoteProcess];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 description];

      v13 = sub_224DAEE18();
      v15 = v14;
    }

    else
    {
      v15 = 0x8000000224DC7B00;
      v13 = 0xD00000000000001ALL;
    }

    v16 = sub_224A33F74(v13, v15, v24);

    *(v8 + 4) = v16;
    _os_log_impl(&dword_224A2F000, v6, v7, "Chrono render service connection from %{public}s interrupted", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x22AA5EED0](v9, -1, -1);
    MEMORY[0x22AA5EED0](v8, -1, -1);
  }

  [v5 invalidate];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    swift_beginAccess();
    v19 = swift_unknownObjectWeakLoadStrong();
    if (v19)
    {
      v20 = v19;
      BSDispatchQueueAssert();
      sub_224CC8774();
      v21 = *&v18[OBJC_IVAR____TtC10ChronoCore20WidgetRendererServer__clientsSetLock];
      v22 = *(v21 + 16);

      os_unfair_lock_lock(v22);
      swift_beginAccess();
      v23 = sub_224B02C70(v20);
      swift_endAccess();

      os_unfair_lock_unlock(*(v21 + 16));

      v18 = v20;
    }
  }
}

void sub_224CC836C(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_281351580 != -1)
  {
    swift_once();
  }

  v4 = sub_224DAB258();
  __swift_project_value_buffer(v4, qword_281364EC8);
  v5 = a1;
  v6 = sub_224DAB228();
  v7 = sub_224DAF2A8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v24[0] = v9;
    *v8 = 136446210;
    v10 = [v5 remoteProcess];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 description];

      v13 = sub_224DAEE18();
      v15 = v14;
    }

    else
    {
      v15 = 0x8000000224DC7B00;
      v13 = 0xD00000000000001ALL;
    }

    v16 = sub_224A33F74(v13, v15, v24);

    *(v8 + 4) = v16;
    _os_log_impl(&dword_224A2F000, v6, v7, "Chrono render service connection from %{public}s invalidated", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x22AA5EED0](v9, -1, -1);
    MEMORY[0x22AA5EED0](v8, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    swift_beginAccess();
    v19 = swift_unknownObjectWeakLoadStrong();
    if (v19)
    {
      v20 = v19;
      BSDispatchQueueAssert();
      sub_224CC8774();
      v21 = *&v18[OBJC_IVAR____TtC10ChronoCore20WidgetRendererServer__clientsSetLock];
      v22 = *(v21 + 16);

      os_unfair_lock_lock(v22);
      swift_beginAccess();
      v23 = sub_224B02C70(v20);
      swift_endAccess();

      os_unfair_lock_unlock(*(v21 + 16));

      v18 = v20;
    }
  }
}

uint64_t sub_224CC8614()
{
  sub_224CC6BD4();
  v1 = v0;
  if (!(v0 >> 62))
  {
    v2 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_11:

    return MEMORY[0x277D84F90];
  }

  v2 = sub_224DAF838();
  if (!v2)
  {
    goto LABEL_11;
  }

LABEL_3:
  v8 = MEMORY[0x277D84F90];
  result = sub_224DAF9E8();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x22AA5DCC0](v4, v1);
      }

      else
      {
        v5 = *(v1 + 8 * v4 + 32);
      }

      v6 = v5;
      ++v4;
      v7 = [v5 widget];

      sub_224DAF9B8();
      sub_224DAF9F8();
      sub_224DAFA08();
      sub_224DAF9C8();
    }

    while (v2 != v4);

    return v8;
  }

  return result;
}

void sub_224CC8774()
{
  v1 = sub_224DAB7B8();
  v54 = *(v1 - 8);
  v55 = v1;
  MEMORY[0x28223BE20](v1, v2);
  v52 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_224DAB848();
  v51 = *(v53 - 8);
  MEMORY[0x28223BE20](v53, v4);
  v50 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__subscriptions;
  v57 = v0;
  v6 = *&v0[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__subscriptions];
  if ((v6 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_224DAF7E8();
    sub_224DAB338();
    sub_224A7940C(&unk_281350FE0, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB0]);
    sub_224DAF1F8();
    v8 = aBlock[9];
    v7 = aBlock[10];
    v10 = aBlock[11];
    v9 = aBlock[12];
    v11 = aBlock[13];
  }

  else
  {
    v12 = -1 << *(v6 + 32);
    v7 = v6 + 56;
    v10 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v11 = v14 & *(v6 + 56);
    swift_bridgeObjectRetain_n();
    v9 = 0;
    v8 = v6;
  }

  if (v8 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v15 = v9;
    v16 = v11;
    v17 = v9;
    if (!v11)
    {
      break;
    }

LABEL_12:
    v18 = (v16 - 1) & v16;
    v19 = *(*(v8 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));

    if (!v19)
    {
LABEL_18:
      sub_224A3B7E4(v8);

      v21 = v57;
      *&v57[v56] = MEMORY[0x277D84FA0];

      v56 = *&v21[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__lock];
      os_unfair_lock_lock(*(v56 + 16));
      v22 = OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__lock_sessions;
      swift_beginAccess();
      v49 = v22;
      v23 = *&v21[v22];
      if ((v23 & 0xC000000000000001) != 0)
      {
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v27 = sub_224DAFA68() | 0x8000000000000000;
      }

      else
      {
        v28 = -1 << *(v23 + 32);
        v25 = ~v28;
        v24 = v23 + 64;
        v29 = -v28;
        if (v29 < 64)
        {
          v30 = ~(-1 << v29);
        }

        else
        {
          v30 = -1;
        }

        v26 = v30 & *(v23 + 64);
        v27 = v23;
      }

      swift_bridgeObjectRetain_n();
      v31 = 0;
      v48 = v25;
      v32 = (v25 + 64) >> 6;
      if ((v27 & 0x8000000000000000) != 0)
      {
        goto LABEL_31;
      }

      while (1)
      {
        v33 = v31;
        v34 = v26;
        v35 = v31;
        if (!v26)
        {
          break;
        }

LABEL_29:
        v36 = (v34 - 1) & v34;
        v37 = *(*(v27 + 48) + ((v35 << 9) | (8 * __clz(__rbit64(v34)))));

        if (!v37)
        {
LABEL_35:
          sub_224A3B7E4(v27);

          v41 = v57;
          *&v57[v49] = MEMORY[0x277D84F98];

          os_unfair_lock_unlock(*(v56 + 16));
          v42 = swift_allocObject();
          *(v42 + 16) = v41;
          aBlock[4] = sub_224CCBC20;
          aBlock[5] = v42;
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_224A39F40;
          aBlock[3] = &block_descriptor_72;
          v43 = _Block_copy(aBlock);
          v44 = v41;
          v45 = v50;
          sub_224DAB7E8();
          v58 = MEMORY[0x277D84F90];
          sub_224A7940C(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
          sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
          v46 = v52;
          v47 = v55;
          sub_224DAF788();
          MEMORY[0x22AA5D760](0, v45, v46, v43);
          _Block_release(v43);
          (*(v54 + 8))(v46, v47);
          (*(v51 + 8))(v45, v53);

          return;
        }

        while (1)
        {
          sub_224BB8028();

          v31 = v35;
          v26 = v36;
          if ((v27 & 0x8000000000000000) == 0)
          {
            break;
          }

LABEL_31:
          v38 = sub_224DAFB18();
          if (v38)
          {
            v40 = v39;
            v58 = v38;
            sub_224A3B79C(0, &qword_2813508E8, 0x277D7BC20);
            swift_dynamicCast();
            v37 = aBlock[0];
            v58 = v40;
            type metadata accessor for WidgetRendererSession(0);
            swift_dynamicCast();
            v35 = v31;
            v36 = v26;
            if (v37)
            {
              continue;
            }
          }

          goto LABEL_35;
        }
      }

      while (1)
      {
        v35 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          goto LABEL_37;
        }

        if (v35 >= v32)
        {
          goto LABEL_35;
        }

        v34 = *(v24 + 8 * v35);
        ++v33;
        if (v34)
        {
          goto LABEL_29;
        }
      }
    }

    while (1)
    {
      sub_224DAB328();

      v9 = v17;
      v11 = v18;
      if ((v8 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v20 = sub_224DAF878();
      if (v20)
      {
        aBlock[6] = v20;
        sub_224DAB338();
        swift_dynamicCast();
        v17 = v9;
        v18 = v11;
        if (aBlock[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v17 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v17 >= ((v10 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v16 = *(v7 + 8 * v17);
    ++v15;
    if (v16)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
}

void sub_224CC8E78(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__queue_observeProcessStateAssertion;
  v3 = *(a1 + OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__queue_observeProcessStateAssertion);
  if (v3)
  {
    [v3 invalidate];
  }

  *(a1 + v2) = 0;
  swift_unknownObjectRelease();
  v4 = OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__queue_runningAssertion;
  [*(a1 + OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__queue_runningAssertion) invalidate];
  v5 = *(a1 + v4);
  *(a1 + v4) = 0;

  v6 = OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__queue_runningAssertionExpirationTimer;
  [*(a1 + OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__queue_runningAssertionExpirationTimer) invalidate];
  v7 = *(a1 + v6);
  *(a1 + v6) = 0;
}

uint64_t sub_224CC8F20(void *a1, uint64_t a2)
{
  v4 = sub_224DAB728();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_224DAE4F8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a2, v4);
  sub_224DAE4D8();
  sub_224DA9508();
  swift_allocObject();
  sub_224DA94F8();
  sub_224A7940C(&qword_281350C60, MEMORY[0x277CE3AB8], MEMORY[0x277CE3AC0]);
  v14 = sub_224DA94E8();
  v16 = v15;

  v17 = sub_224DA96B8();
  [a1 systemEnvironmentDidChange_];
  sub_224A78024(v14, v16);

  return (*(v10 + 8))(v13, v9);
}

void sub_224CC9304(void *a1)
{
  v2 = v1;
  v105 = sub_224DAC268();
  v4 = *(v105 - 8);
  v6 = MEMORY[0x28223BE20](v105, v5);
  v104 = &v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v103 = &v90 - v9;
  v10 = sub_224DABE18();
  v11 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v15 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v99 = &v90 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F46D0, &unk_224DBD6D0);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v21 = &v90 - v20;
  v100 = *(v1 + OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__services);
  sub_224B44674(v100 + 280, &v111);
  v22 = *(&v112 + 1);
  v23 = v113;
  __swift_project_boxed_opaque_existential_1(&v111, *(&v112 + 1));
  v24 = *(v23 + 16);
  v101 = a1;
  v25 = v24(a1, v22, v23);
  if (!v25)
  {
    __swift_destroy_boxed_opaque_existential_1(&v111);
    return;
  }

  v26 = v25;
  __swift_destroy_boxed_opaque_existential_1(&v111);
  v27 = v26 >> 62;
  if (v26 >> 62)
  {
    goto LABEL_55;
  }

  if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_56;
  }

LABEL_4:
  v96 = v27;
  v91 = v4;
  v93 = *(v2 + OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__lock);
  os_unfair_lock_lock(*(v93 + 16));
  v28 = OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__lock_sessions;
  swift_beginAccess();
  v94 = v2;
  v27 = *(v2 + v28);
  v102 = v26;
  v98 = v10;
  v97 = v11;
  v95 = v15;
  v90 = v21;
  if ((v27 & 0xC000000000000001) != 0)
  {
    v11 = 0;
    v29 = 0;
    v26 = 0;
    v2 = sub_224DAFA68() | 0x8000000000000000;
  }

  else
  {
    v30 = -1 << *(v27 + 32);
    v29 = ~v30;
    v11 = v27 + 64;
    v31 = -v30;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    else
    {
      v32 = -1;
    }

    v26 = v32 & *(v27 + 64);
    v2 = v27;
  }

  v10 = 0;
  v92 = v29;
  v4 = (v29 + 64) >> 6;
  while (1)
  {
    v21 = v26;
    v15 = v10;
    if ((v2 & 0x8000000000000000) != 0)
    {
      break;
    }

    v33 = v10;
    v34 = v26;
    if (!v26)
    {
      while (1)
      {
        v10 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          break;
        }

        if (v10 >= v4)
        {
          goto LABEL_23;
        }

        v34 = *(v11 + 8 * v10);
        ++v33;
        if (v34)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_55:
      if (!sub_224DAF838())
      {
        goto LABEL_56;
      }

      goto LABEL_4;
    }

LABEL_17:
    v26 = (v34 - 1) & v34;
    v35 = *(*(v2 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v34)))));

    if (!v35)
    {
      goto LABEL_23;
    }

LABEL_21:

    v39 = [v35 widget];
    v27 = sub_224DABE08();

    if (v27)
    {
      sub_224A3B7E4(v2);
      v40 = 0;
      v41 = 1;
LABEL_30:
      v46 = v98;
      v44 = v97;
      v56 = v94;
      goto LABEL_33;
    }
  }

  v36 = sub_224DAFB18();
  if (v36)
  {
    v38 = v37;
    *&v106[0] = v36;
    sub_224A3B79C(0, &qword_2813508E8, 0x277D7BC20);
    swift_dynamicCast();
    v35 = v111;
    *&v106[0] = v38;
    type metadata accessor for WidgetRendererSession(0);
    swift_dynamicCast();
    if (v35)
    {
      goto LABEL_21;
    }
  }

LABEL_23:
  sub_224A3B7E4(v2);
  sub_224A3317C(v100 + 136, v108);
  v42 = v109;
  v43 = v110;
  __swift_project_boxed_opaque_existential_1(v108, v109);
  (*(v43 + 32))(v106, 257, v42, v43);
  if (!*(&v107 + 1))
  {
    sub_224A3311C(v106, &qword_27D6F50E0, &qword_224DB41A0);
    __swift_destroy_boxed_opaque_existential_1(v108);
    v41 = 0;
    v40 = 0;
    goto LABEL_30;
  }

  v111 = v106[0];
  v112 = v106[1];
  v113 = v107;
  __swift_destroy_boxed_opaque_existential_1(v108);
  v44 = v97;
  v45 = v99;
  v46 = v98;
  (*(v97 + 16))(v99, v101, v98);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F30E0, &unk_224DB2AD0);
  v48 = v90;
  (*(*(v47 - 8) + 56))(v90, 1, 1, v47);
  v49 = type metadata accessor for HostDescriptorPredicate(0);
  *(v48 + v49[5]) = 3;
  *(v48 + v49[6]) = 3;
  v50 = v49[7];
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3920, &qword_224DB35B0);
  (*(*(v51 - 8) + 56))(v48 + v50, 1, 1, v51);
  v52 = v49[8];
  v53 = *(v44 + 56);
  v53(v48 + v52, 1, 1, v46);
  (*(v91 + 56))(v48 + v49[9], 1, 1, v105);
  v54 = v48 + v49[10];
  *v54 = 0;
  *(v54 + 8) = 1;
  sub_224A3311C(v48 + v52, &unk_27D6F6130, &unk_224DBB6A0);
  (*(v44 + 32))(v48 + v52, v45, v46);
  v53(v48 + v52, 0, 1, v46);
  (*(*(v49 - 1) + 56))(v48, 0, 1, v49);
  v55 = sub_224A6BAF8(v48);
  v56 = v94;
  if (v55)
  {
    if (v55 >> 62)
    {
      v57 = sub_224DAF838();
    }

    else
    {
      v57 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    sub_224A699F0(&v111);
    sub_224A3311C(v48, &qword_27D6F46D0, &unk_224DBD6D0);
    if (v57)
    {
      v41 = 0;
      v40 = 1;
      goto LABEL_33;
    }
  }

  else
  {
    sub_224A699F0(&v111);
    sub_224A3311C(v48, &qword_27D6F46D0, &unk_224DBD6D0);
  }

  v41 = 0;
  v40 = 0;
LABEL_33:
  os_unfair_lock_unlock(*(v93 + 16));
  if (qword_281351580 != -1)
  {
    swift_once();
  }

  v58 = sub_224DAB258();
  __swift_project_value_buffer(v58, qword_281364EC8);
  v59 = v95;
  (*(v44 + 16))(v95, v101, v46);
  v60 = v56;
  v61 = sub_224DAB228();
  v62 = sub_224DAF278();

  v63 = os_log_type_enabled(v61, v62);
  v101 = v60;
  if (v63)
  {
    v64 = v60;
    v65 = v46;
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    LODWORD(v100) = v40;
    v68 = v44;
    v69 = v67;
    *&v111 = v67;
    *v66 = 136446978;
    *(v66 + 4) = sub_224A33F74(*&v64[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__logIdentifier], *&v64[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__logIdentifier + 8], &v111);
    *(v66 + 12) = 2082;
    sub_224A7940C(&qword_281350E70, MEMORY[0x277CF98E0], MEMORY[0x277CF98F8]);
    v70 = sub_224DAFD28();
    v72 = v71;
    (*(v68 + 8))(v59, v65);
    v40 = v100;
    v73 = sub_224A33F74(v70, v72, &v111);

    *(v66 + 14) = v73;
    *(v66 + 22) = 1026;
    *(v66 + 24) = v41;
    *(v66 + 28) = 1026;
    *(v66 + 30) = v40;
    _os_log_impl(&dword_224A2F000, v61, v62, "[%{public}s] Timelines reload detected - key[%{public}s]: matchesSession=%{BOOL,public}d, matchesConfiguration=%{BOOL,public}d", v66, 0x22u);
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v69, -1, -1);
    MEMORY[0x22AA5EED0](v66, -1, -1);
  }

  else
  {

    (*(v44 + 8))(v59, v46);
  }

  if ((v41 | v40) == 1)
  {
    if (!v96)
    {
      v74 = *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v74)
      {
        goto LABEL_41;
      }

LABEL_51:

      v88 = MEMORY[0x277D84F90];
      if (MEMORY[0x277D84F90] >> 62)
      {
LABEL_52:
        if (!sub_224DAF838())
        {
          goto LABEL_56;
        }

LABEL_49:
        v89 = swift_allocObject();
        *(v89 + 16) = v88;
        sub_224A77CC8(sub_224CCBBFC, v89);

        return;
      }

LABEL_48:
      if (!*((v88 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_56;
      }

      goto LABEL_49;
    }

    v74 = sub_224DAF838();
    if (!v74)
    {
      goto LABEL_51;
    }

LABEL_41:
    *&v111 = MEMORY[0x277D84F90];
    sub_224DAF9E8();
    if ((v74 & 0x8000000000000000) == 0)
    {
      v75 = 0;
      v76 = v102;
      v77 = v102 & 0xC000000000000001;
      v78 = (v91 + 8);
      do
      {
        if (v77)
        {
          v79 = MEMORY[0x22AA5DCC0](v75);
        }

        else
        {
          v79 = *(v76 + 8 * v75 + 32);
        }

        v80 = v79;
        ++v75;
        v81 = v103;
        sub_224DABE58();
        v82 = sub_224DAC248();
        v83 = *v78;
        v84 = v81;
        v85 = v105;
        (*v78)(v84, v105);
        v86 = v104;
        sub_224DABE58();
        v87 = sub_224DAC258();
        v83(v86, v85);
        [objc_allocWithZone(MEMORY[0x277CFA3D8]) initWithWidget:v82 metrics:v87];

        sub_224DAF9B8();
        sub_224DAF9F8();
        sub_224DAFA08();
        sub_224DAF9C8();
        v76 = v102;
      }

      while (v74 != v75);

      v88 = v111;
      if (v111 >> 62)
      {
        goto LABEL_52;
      }

      goto LABEL_48;
    }

    __break(1u);
  }

  else
  {
LABEL_56:
  }
}

void sub_224CC9FB8(uint64_t a1)
{
  v54 = sub_224DAC268();
  v3 = *(v54 - 8);
  v5 = MEMORY[0x28223BE20](v54, v4);
  v53 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v52 = &v49 - v8;
  v9 = sub_224DABE18();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224BBF304(*&v1[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__services] + 176, v57);
  v14 = v58;
  v15 = v59;
  __swift_project_boxed_opaque_existential_1(v57, v58);
  v16 = (*(v15 + 16))(a1, v14, v15);
  if (!v16)
  {
    __swift_destroy_boxed_opaque_existential_1(v57);
    return;
  }

  v17 = v16;
  __swift_destroy_boxed_opaque_existential_1(v57);
  v18 = v17 >> 62;
  if (!(v17 >> 62))
  {
    if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_27:

    return;
  }

  v48 = sub_224DAF838();
  v18 = v17 >> 62;
  if (!v48)
  {
    goto LABEL_27;
  }

LABEL_4:
  v51 = v18;
  v19 = v10;
  v56 = 0;
  v20 = *&v1[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__lock];
  os_unfair_lock_lock(*(v20 + 16));
  v21 = 0;
  sub_224CCA64C(v1, a1, &v56);
  v50 = v3;
  os_unfair_lock_unlock(*(v20 + 16));
  if (qword_281351580 != -1)
  {
    swift_once();
  }

  v22 = sub_224DAB258();
  __swift_project_value_buffer(v22, qword_281364EC8);
  v23 = v19;
  (*(v19 + 16))(v13, a1, v9);
  v24 = v1;
  v25 = sub_224DAB228();
  v26 = sub_224DAF278();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v57[0] = v49;
    *v27 = 136446722;
    *(v27 + 4) = sub_224A33F74(*&v24[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__logIdentifier], *&v24[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__logIdentifier + 8], v57);
    *(v27 + 12) = 2082;
    sub_224A7940C(&qword_281350E70, MEMORY[0x277CF98E0], MEMORY[0x277CF98F8]);
    v28 = sub_224DAFD28();
    v21 = v29;
    (*(v23 + 8))(v13, v9);
    v30 = sub_224A33F74(v28, v21, v57);

    *(v27 + 14) = v30;
    *(v27 + 22) = 1026;
    swift_beginAccess();
    *(v27 + 24) = v56;
    _os_log_impl(&dword_224A2F000, v25, v26, "[%{public}s] Snapshots reload detected - key[%{public}s]: matchesSession=%{BOOL,public}d", v27, 0x1Cu);
    v31 = v49;
    swift_arrayDestroy();
    MEMORY[0x22AA5EED0](v31, -1, -1);
    MEMORY[0x22AA5EED0](v27, -1, -1);
  }

  else
  {

    v32 = *(v23 + 8);
    v31 = v23 + 8;
    v32(v13, v9);
  }

  swift_beginAccess();
  if (v56 != 1)
  {
    goto LABEL_27;
  }

  if (!v51)
  {
    v33 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v33)
    {
      goto LABEL_13;
    }

LABEL_23:

    v46 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_20;
    }

LABEL_24:
    if (sub_224DAF838())
    {
      goto LABEL_21;
    }

    goto LABEL_27;
  }

  v33 = sub_224DAF838();
  if (!v33)
  {
    goto LABEL_23;
  }

LABEL_13:
  v49 = v24;
  v55 = MEMORY[0x277D84F90];
  sub_224DAF9E8();
  if ((v33 & 0x8000000000000000) == 0)
  {
    v34 = 0;
    v51 = v17 & 0xC000000000000001;
    v35 = (v50 + 8);
    v36 = v17;
    do
    {
      if (v51)
      {
        v37 = MEMORY[0x22AA5DCC0](v34, v17);
      }

      else
      {
        v37 = *(v17 + 8 * v34 + 32);
      }

      v38 = v37;
      ++v34;
      v39 = v52;
      sub_224DABE58();
      v40 = sub_224DAC248();
      v41 = *v35;
      v42 = v39;
      v43 = v54;
      (*v35)(v42, v54);
      v44 = v53;
      sub_224DABE58();
      v45 = sub_224DAC258();
      v41(v44, v43);
      [objc_allocWithZone(MEMORY[0x277CFA3D8]) initWithWidget:v40 metrics:v45];

      sub_224DAF9B8();
      sub_224DAF9F8();
      sub_224DAFA08();
      sub_224DAF9C8();
      v17 = v36;
    }

    while (v33 != v34);

    v46 = v55;
    if (!(v55 >> 62))
    {
LABEL_20:
      if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_21:
        v47 = swift_allocObject();
        *(v47 + 16) = v46;
        sub_224A77CC8(sub_224CCBBD8, v47);

        return;
      }

      goto LABEL_27;
    }

    goto LABEL_24;
  }

  __break(1u);

  os_unfair_lock_unlock(*(v31 + 16));
  __break(1u);
}

void sub_224CCA64C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v4 = OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__lock_sessions;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = sub_224DAFA68() | 0x8000000000000000;
  }

  else
  {
    v10 = -1 << *(v5 + 32);
    v7 = ~v10;
    v6 = v5 + 64;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v8 = v12 & *(v5 + 64);
    v9 = v5;
  }

  v13 = 0;
  v20 = v9;
  while ((v9 & 0x8000000000000000) != 0)
  {
    if (!sub_224DAFB18())
    {
      goto LABEL_19;
    }

    sub_224A3B79C(0, &qword_2813508E8, 0x277D7BC20);
    swift_dynamicCast();
    v16 = v21;
    type metadata accessor for WidgetRendererSession(0);
    swift_dynamicCast();
    if (!v21)
    {
LABEL_20:
      v9 = v20;
LABEL_19:
      sub_224A3B7E4(v9);
      return;
    }

LABEL_17:

    v17 = [v16 widget];
    v18 = sub_224DABE08();

    v9 = v20;
    if (v18)
    {
      sub_224A3B7E4(v20);
      *a3 = 1;
      return;
    }
  }

  v14 = v13;
  v15 = v8;
  if (v8)
  {
LABEL_13:
    v8 = (v15 - 1) & v15;
    v16 = *(*(v9 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v15)))));

    if (!v16)
    {
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v13 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v13 >= ((v7 + 64) >> 6))
    {
      goto LABEL_19;
    }

    v15 = *(v6 + 8 * v13);
    ++v14;
    if (v15)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

void sub_224CCA8C0(void *a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    if (qword_281351580 != -1)
    {
      swift_once();
    }

    v7 = sub_224DAB258();
    __swift_project_value_buffer(v7, qword_281364EC8);
    v8 = v6;
    v9 = a3;
    v10 = sub_224DAB228();
    v11 = sub_224DAF2A8();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v27 = v14;
      *v12 = 136446466;
      v15 = *&v8[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__logIdentifier];
      v16 = *&v8[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__logIdentifier + 8];

      v17 = sub_224A33F74(v15, v16, &v27);

      *(v12 + 4) = v17;
      *(v12 + 12) = 2114;
      *(v12 + 14) = v9;
      *v13 = v9;
      v18 = v9;
      _os_log_impl(&dword_224A2F000, v10, v11, "[%{public}s] Runtime timer for target=%{public}@ expired.", v12, 0x16u);
      sub_224A3311C(v13, &unk_27D6F69F0, &unk_224DB3900);
      MEMORY[0x22AA5EED0](v13, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x22AA5EED0](v14, -1, -1);
      MEMORY[0x22AA5EED0](v12, -1, -1);
    }

    [a1 invalidate];
    v19 = OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__queue_runningAssertionExpirationTimer;
    v20 = *&v8[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__queue_runningAssertionExpirationTimer];
    if (v20)
    {
      sub_224A3B79C(0, &qword_281350978, 0x277CF0BD8);
      v21 = a1;
      v22 = v20;
      v23 = sub_224DAF6A8();

      if (v23)
      {
        v24 = OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__queue_runningAssertion;
        [*&v8[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__queue_runningAssertion] invalidate];
        v25 = *&v8[v24];
        *&v8[v24] = 0;

        v26 = *&v8[v19];
        *&v8[v19] = 0;

        v8 = v26;
      }
    }
  }
}

id sub_224CCAB88()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WidgetRendererClient();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_224CCACB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 32))(v6, a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6110, &unk_224DBE850);
  sub_224A3B79C(0, &qword_281350830, 0x277CFA358);
  if (swift_dynamicCast())
  {
    v3 = sub_224DABE08();
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

void sub_224CCAD70(void *a1)
{
  BSDispatchQueueAssert();
  if (qword_281351580 != -1)
  {
    swift_once();
  }

  v3 = sub_224DAB258();
  __swift_project_value_buffer(v3, qword_281364EC8);
  v4 = v1;
  v5 = a1;
  v6 = sub_224DAB228();
  v7 = sub_224DAF2A8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16[0] = v10;
    *v8 = 136446466;
    *(v8 + 4) = sub_224A33F74(*&v4[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__logIdentifier], *&v4[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__logIdentifier + 8], v16);
    *(v8 + 12) = 2114;
    *(v8 + 14) = v5;
    *v9 = v5;
    v11 = v5;
    _os_log_impl(&dword_224A2F000, v6, v7, "[%{public}s] Unsubscribe from %{public}@.", v8, 0x16u);
    sub_224A3311C(v9, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x22AA5EED0](v10, -1, -1);
    MEMORY[0x22AA5EED0](v8, -1, -1);
  }

  v12 = *&v4[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__lock];
  os_unfair_lock_lock(*(v12 + 16));
  v13 = OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__lock_sessions;
  swift_beginAccess();
  v14 = *&v4[v13];

  v15 = sub_224A71D20(v5, v14);

  if (v15)
  {
    sub_224BB8028();
  }

  swift_beginAccess();
  sub_224B0E1C4(v5);
  swift_endAccess();

  os_unfair_lock_unlock(*(v12 + 16));
}

id sub_224CCB034(void *a1, uint64_t a2)
{
  v3 = v2;
  sub_224B44674(*&v2[OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__services] + 280, v10);
  __swift_project_boxed_opaque_existential_1(v10, v10[3]);
  v6 = [a1 widget];
  v7 = [a1 metrics];
  v8 = sub_224DAC828();

  result = __swift_destroy_boxed_opaque_existential_1(v10);
  if (v8)
  {
    return [v3 reloadWidget:a1 reason:a2];
  }

  return result;
}

void sub_224CCB1A4(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v37 = a4;
  v38 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F6740, &unk_224DC0810);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v35 - v12;
  v14 = sub_224DAA548();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v39 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  BSDispatchQueueAssert();
  if (qword_281351580 != -1)
  {
    swift_once();
  }

  v18 = sub_224DAB258();
  __swift_project_value_buffer(v18, qword_281364EC8);
  v19 = a3;
  v20 = a1;
  v21 = sub_224DAB228();
  v22 = sub_224DAF2A8();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v36 = a5;
    v25 = v24;
    *v23 = 138543618;
    *(v23 + 4) = v19;
    *(v23 + 12) = 2114;
    *(v23 + 14) = v20;
    *v24 = v19;
    v24[1] = v20;
    v26 = v19;
    v27 = v20;
    _os_log_impl(&dword_224A2F000, v21, v22, "Received action %{public}@ for interaction %{public}@", v23, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F69F0, &unk_224DB3900);
    swift_arrayDestroy();
    v28 = v25;
    a5 = v36;
    MEMORY[0x22AA5EED0](v28, -1, -1);
    MEMORY[0x22AA5EED0](v23, -1, -1);
  }

  v29 = *(v6 + OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__lock);
  os_unfair_lock_lock(*(v29 + 16));
  [v38 integerValue];
  sub_224DAA538();
  v30 = *(v15 + 48);
  if (v30(v13, 1, v14) == 1)
  {
    (*(v15 + 104))(v39, *MEMORY[0x277CFA0A8], v14);
    if (v30(v13, 1, v14) != 1)
    {
      sub_224A3311C(v13, &unk_27D6F6740, &unk_224DC0810);
    }
  }

  else
  {
    (*(v15 + 32))(v39, v13, v14);
  }

  v31 = OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__lock_sessions;
  swift_beginAccess();
  v32 = *(v6 + v31);

  v33 = sub_224A71D20(v20, v32);

  v34 = v39;
  if (v33)
  {
    sub_224BB5DAC(v19, v39, v37, a5);
  }

  (*(v15 + 8))(v34, v14);
  os_unfair_lock_unlock(*(v29 + 16));
}

uint64_t sub_224CCB640(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = sub_224DAD158();
  v33 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7, v8);
  v32 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v31 - v12;
  BSDispatchQueueAssert();
  if (qword_281351580 != -1)
  {
    swift_once();
  }

  v14 = sub_224DAB258();
  __swift_project_value_buffer(v14, qword_281364EC8);
  v15 = a3;
  v16 = sub_224DAB228();
  v17 = sub_224DAF278();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v31 = a2;
    v19 = v18;
    v20 = swift_slowAlloc();
    *v19 = 138543362;
    *(v19 + 4) = v15;
    *v20 = v15;
    v21 = v15;
    _os_log_impl(&dword_224A2F000, v16, v17, "Received environment modifiers for %{public}@", v19, 0xCu);
    sub_224A3311C(v20, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v20, -1, -1);
    MEMORY[0x22AA5EED0](v19, -1, -1);
  }

  sub_224DA94D8();
  swift_allocObject();
  sub_224DA94C8();
  sub_224A7940C(&qword_281350CF0, MEMORY[0x277CF9C60], MEMORY[0x277CF9C68]);
  sub_224DA94B8();

  v22 = *(v4 + OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__lock);
  os_unfair_lock_lock(*(v22 + 16));
  v23 = OBJC_IVAR____TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient__lock_sessions;
  swift_beginAccess();
  v24 = *(v4 + v23);

  v25 = sub_224A71D20(v15, v24);

  os_unfair_lock_unlock(*(v22 + 16));
  if (!v25)
  {
    return (*(v33 + 8))(v13, v7);
  }

  v27 = v32;
  v26 = v33;
  (*(v33 + 16))(v32, v13, v7);
  v28 = OBJC_IVAR____TtC10ChronoCore21WidgetRendererSession_environmentModifiers;
  swift_beginAccess();
  (*(v26 + 24))(v25 + v28, v27, v7);
  swift_endAccess();
  sub_224A81084();

  v29 = *(v26 + 8);
  v29(v27, v7);
  return (v29)(v13, v7);
}

void sub_224CCBC68(void *a1)
{
  v3 = *(v1 + 16);
  v4 = sub_224DAEDE8();
  [a1 clientConfigurationsDidChange:v3 forHost:v4];
}

uint64_t sub_224CCBCE4(void *a1)
{
  v3 = *(sub_224DAB728() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_224CC8F20(a1, v4);
}

uint64_t sub_224CCBDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v95 = a4;
  v96 = a5;
  v97 = a2;
  v100 = a1;
  v91 = sub_224DA9878();
  v89 = *(v91 - 8);
  MEMORY[0x28223BE20](v91, v5);
  v87 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_224DACB08();
  v88 = *(v90 - 8);
  MEMORY[0x28223BE20](v90, v7);
  v92 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_224DACB28();
  v85 = *(v9 - 8);
  v86 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v93 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_224DACC88();
  v98 = *(v12 - 8);
  v99 = v12;
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_224DACB98();
  v94 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16, v17);
  v20 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v18, v21);
  v24 = (&v79 - v23);
  v26 = MEMORY[0x28223BE20](v22, v25);
  v28 = &v79 - v27;
  v30 = MEMORY[0x28223BE20](v26, v29);
  v32 = &v79 - v31;
  MEMORY[0x28223BE20](v30, v33);
  v35 = (&v79 - v34);
  v36 = sub_224DABDB8();
  v37 = &v36[*MEMORY[0x277CFA128]];
  swift_beginAccess();
  v38 = *(v37 + 1);

  if (v38)
  {

    v39 = MEMORY[0x277CF98A8];
LABEL_10:
    v54 = 1;
    v56 = v99;
    v55 = v100;
    v57 = v98;
LABEL_11:
    (*(v57 + 56))(v55, v54, 1, v56);
    v58 = *v39;
    v59 = sub_224DABD68();
    return (*(*(v59 - 8) + 104))(v97, v58, v59);
  }

  v80 = v28;
  v81 = v35;
  v82 = v24;
  v83 = v15;
  v84 = v32;
  v40 = v96;
  if (!sub_224CCC9F4(v96))
  {
    sub_224DAE1E8();
    sub_224DAE1B8();
    v39 = MEMORY[0x277CF98B0];
    goto LABEL_10;
  }

  if (!sub_224CCCC54(v40) || sub_224DACBB8() < 1)
  {
    sub_224DAE1E8();
    sub_224DAE1B8();
    sub_224DACC68();
    v61 = v94;
    v62 = v16;
    v63 = (*(v94 + 88))(v20, v16);
    v64 = *MEMORY[0x277CF9B80];
    if (v63 == v64)
    {
      v65 = *(v61 + 8);
      v65(v20, v62);
      v66 = v82;
      sub_224DACC68();
    }

    else
    {
      v67 = swift_allocBox();
      sub_224DACC68();
      v66 = v82;
      *v82 = v67;
      (*(v61 + 104))(v66, v64, v62);
      v65 = *(v61 + 8);
      v65(v20, v62);
    }

    v68 = v83;
    v69 = v93;
    v71 = v90;
    v70 = v91;
    v72 = v87;
    sub_224DA9868();
    sub_224DA9768();
    (*(v89 + 8))(v72, v70);
    (*(v85 + 104))(v69, *MEMORY[0x277CF9B58], v86);
    (*(v88 + 104))(v92, *MEMORY[0x277CF9B48], v71);
    (*(v61 + 16))(v84, v66, v62);
    sub_224DACC48();
    sub_224DACC38();
    v65(v66, v62);
    v57 = v98;
    v73 = v100;
    v74 = v68;
    v75 = v99;
    (*(v98 + 32))(v100, v74, v99);
    v56 = v75;
    v55 = v73;
    v54 = 0;
    v39 = MEMORY[0x277CF98B0];
    goto LABEL_11;
  }

  v41 = v84;
  sub_224DACC68();
  v42 = v94;
  v43 = *(v94 + 104);
  v44 = v80;
  v45 = v16;
  v43(v80, *MEMORY[0x277CF9BF0], v16);
  v46 = sub_224DACB88();
  v47 = *(v42 + 8);
  v47(v44, v45);
  v47(v41, v45);
  if (v46 & 1) != 0 || (v48 = v84, sub_224DACC68(), v43(v44, *MEMORY[0x277CF9B60], v45), v49 = sub_224DACB88(), v47(v44, v45), v47(v48, v45), (v49))
  {
    v50 = swift_allocObject();
    *(v50 + 16) = 0xD000000000000019;
    *(v50 + 24) = 0x8000000224DC58C0;
    v51 = v81;
    *v81 = v50;
    v43(v51, *MEMORY[0x277CF9B70], v45);
    sub_224DACBB8();
    v52 = v84;
    v53 = v94;
LABEL_18:
    sub_224DACC58();
    sub_224DACC08();
    (*(v53 + 16))(v52, v51, v45);
    sub_224DACBD8();
    sub_224DACC28();
    v76 = v83;
    sub_224DACC18();
    v47(v51, v45);
    v57 = v98;
    v77 = v99;
    v78 = v100;
    (*(v98 + 32))(v100, v76, v99);
    v56 = v77;
    v55 = v78;
    v54 = 0;
    v39 = MEMORY[0x277CF98B8];
    goto LABEL_11;
  }

  sub_224DACC68();
  result = sub_224DACBB8();
  if (!__OFSUB__(result, 1))
  {
    v52 = v84;
    v53 = v94;
    v51 = v81;
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

uint64_t sub_224CCC690()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  v1 = OBJC_IVAR____TtC10ChronoCore39MobileTimelineReloadConfigurationPolicy_logger;
  v2 = sub_224DAB258();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MobileTimelineReloadConfigurationPolicy(uint64_t a1)
{
  result = qword_281352438;
  if (!qword_281352438)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_224CCC790(uint64_t a1)
{
  result = sub_224DAB258();
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

BOOL sub_224CCC88C(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_224A77FD0(a3, a4);
          return sub_224CFE41C(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

BOOL sub_224CCC9F4(void *a1)
{
  v2 = sub_224DAE6E8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 domain];
  v8 = sub_224DAEE18();
  v10 = v9;

  v11 = [a1 code];
  if (sub_224DAEE18() == v8 && v12 == v10)
  {
  }

  else
  {
    v14 = sub_224DAFD88();

    if ((v14 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  (*(v3 + 104))(v6, *MEMORY[0x277CE3C10], v2);
  v15 = sub_224DAE6D8();
  (*(v3 + 8))(v6, v2);
  if (v15 == v11)
  {

    return 0;
  }

LABEL_10:
  if (sub_224DAEE18() == v8 && v17 == v10)
  {
  }

  else
  {
    v19 = sub_224DAFD88();

    if ((v19 & 1) == 0)
    {

      return 1;
    }
  }

  (*(v3 + 104))(v6, *MEMORY[0x277CE3BF0], v2);
  v20 = sub_224DAE6D8();

  (*(v3 + 8))(v6, v2);
  return v20 != v11;
}

BOOL sub_224CCCC54(void *a1)
{
  v2 = sub_224DAE6E8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 domain];
  v8 = sub_224DAEE18();
  v10 = v9;

  v11 = [a1 code];
  if (sub_224DAEE18() == v8 && v12 == v10)
  {
  }

  else
  {
    v14 = sub_224DAFD88();

    if ((v14 & 1) == 0)
    {

      return 1;
    }
  }

  (*(v3 + 104))(v6, *MEMORY[0x277CE3C60], v2);
  v15 = sub_224DAE6D8();

  (*(v3 + 8))(v6, v2);
  return v15 != v11;
}

uint64_t sub_224CCCE00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_224CCCEAC(uint64_t a1)
{
  v2 = v1;
  v17 = a1;
  v4 = sub_224DAF3C8();
  v19 = *(v4 - 8);
  v20 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v18 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_224DAF318();
  MEMORY[0x28223BE20](v7, v8);
  v9 = sub_224DAB848();
  MEMORY[0x28223BE20](v9 - 8, v10);
  sub_224DA9E78();
  sub_224DA9E68();
  v11 = sub_224DA9D68();

  *(v1 + 16) = (v11 & 1) == 0;
  *(v1 + 400) = MEMORY[0x277D84FA0];
  *(v1 + 408) = 0;
  type metadata accessor for UnfairLock();
  v12 = swift_allocObject();
  v13 = swift_slowAlloc();
  *v13 = 0;
  *(v12 + 16) = v13;
  v2[53] = v12;
  v2[54] = 0;
  sub_224C4D410(a1, (v2 + 3));
  sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  sub_224DAB7D8();
  v21 = MEMORY[0x277D84F90];
  sub_224CCFB88(&qword_281350A88, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F3470, qword_224DB38B0);
  sub_224A33088(&qword_281350B90, &qword_27D6F3470, qword_224DB38B0, MEMORY[0x277D83970]);
  sub_224DAF788();
  (*(v19 + 104))(v18, *MEMORY[0x277D85268], v20);
  v14 = sub_224DAF418();
  sub_224C4D4C0(v17);
  v2[52] = v14;
  return v2;
}

uint64_t sub_224CCD1B8()
{
  sub_224C4D4C0(v0 + 24);

  return swift_deallocClassInstance();
}

double sub_224CCD218(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v51 = a4;
  v48 = a3;
  v47 = a2;
  v44 = a1;
  v6 = sub_224DAB7B8();
  v52 = *(v6 - 8);
  v53 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v49 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for FileReaperProtectionConfiguration(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FileReaperScenario(0);
  v45 = *(v14 - 8);
  v15 = *(v45 + 64);
  v17 = MEMORY[0x28223BE20](v14 - 8, v16);
  v43 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v42 - v19;
  v21 = sub_224DAB848();
  v22 = *(v21 - 8);
  v24 = MEMORY[0x28223BE20](v21, v23);
  v26 = &v42 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v27);
  v29 = &v42 - v28;
  v50 = v5;
  v46 = *(v5 + 416);
  v30 = v44;
  sub_224CCF9E0(v44, v20, type metadata accessor for FileReaperScenario);
  if ((*(v10 + 48))(v20, 4, v9))
  {
    sub_224DAB7E8();
    sub_224CCFA48(v20, type metadata accessor for FileReaperScenario);
    (*(v22 + 32))(v29, v26, v21);
  }

  else
  {
    sub_224CCF838(v20, v13, type metadata accessor for FileReaperProtectionConfiguration);
    v31 = *(v22 + 32);
    v31(v26, &v13[*(v9 + 44)], v21);
    v31(v29, v26, v21);
  }

  v32 = v49;
  sub_224DAB7A8();
  v33 = v43;
  sub_224CCF9E0(v30, v43, type metadata accessor for FileReaperScenario);
  v34 = (*(v45 + 80) + 24) & ~*(v45 + 80);
  v35 = v34 + v15;
  v36 = (v34 + v15) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  *(v37 + 16) = v50;
  sub_224CCF838(v33, v37 + v34, type metadata accessor for FileReaperScenario);
  *(v37 + v35) = v47 & 1;
  v38 = v37 + v36;
  v39 = v51;
  *(v38 + 8) = v48;
  *(v38 + 16) = v39;
  aBlock[4] = sub_224CCF7A4;
  aBlock[5] = v37;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A39F40;
  aBlock[3] = &block_descriptor_46;
  v40 = _Block_copy(aBlock);

  MEMORY[0x22AA5D760](0, v29, v32, v40);
  _Block_release(v40);
  (*(v52 + 8))(v32, v53);
  (*(v22 + 8))(v29, v21);

  return result;
}

uint64_t sub_224CCD6E0(uint64_t a1, uint64_t a2, int a3, void (*a4)(void))
{
  sub_224A9F678(a2, a3);
  a4();
}

double sub_224CCD760()
{
  v26 = sub_224DAB7B8();
  v28 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v1);
  v24 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_224DAB848();
  v25 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v3);
  v23 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5090, &qword_224DB5C30);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v22 - v7;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F5300, &qword_224DB6600);
  v9 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v10);
  v12 = &v22 - v11;
  __swift_project_boxed_opaque_existential_1(v0 + 3, v0[6]);
  aBlock[0] = sub_224AC32A4();
  v31 = v0[52];
  v13 = v31;
  v14 = sub_224DAF358();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  v15 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F4730, &unk_224DBAF00);
  sub_224A3B79C(0, &qword_281350A70, 0x277D85C78);
  sub_224A33088(&qword_281351010, &unk_27D6F4730, &unk_224DBAF00, MEMORY[0x277CBCD90]);
  sub_224B67CF4();
  sub_224DAB448();
  sub_224A3311C(v8, &qword_27D6F5090, &qword_224DB5C30);

  swift_allocObject();
  swift_weakInit();
  sub_224A33088(&qword_281351210, &unk_27D6F5300, &qword_224DB6600, MEMORY[0x277CBCD60]);
  v16 = v22;
  sub_224DAB488();

  (*(v9 + 8))(v12, v16);
  swift_beginAccess();
  sub_224DAB308();
  swift_endAccess();

  aBlock[4] = sub_224CCFB84;
  v30 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_224A39F40;
  aBlock[3] = &block_descriptor_50_0;
  v17 = _Block_copy(aBlock);

  v18 = v23;
  sub_224DAB7E8();
  v31 = MEMORY[0x277D84F90];
  sub_224CCFB88(&qword_281350ED0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D6F3460, &unk_224DB36F0);
  sub_224A33088(&qword_281350BB0, &unk_27D6F3460, &unk_224DB36F0, MEMORY[0x277D83970]);
  v19 = v24;
  v20 = v26;
  sub_224DAF788();
  MEMORY[0x22AA5D760](0, v18, v19, v17);
  _Block_release(v17);
  (*(v28 + 8))(v19, v20);
  (*(v25 + 8))(v18, v27);

  return result;
}

void sub_224CCDCE8(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = sub_224DAC268();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v10 = sub_224DAC198();
  v11 = swift_allocObject();
  swift_weakInit();
  (*(v7 + 16))(&v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v6);
  v12 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  (*(v7 + 32))(v13 + v12, &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v6);
  v14 = sub_224DAC1A8();
  v15 = *(v3 + 424);
  v16 = *(v15 + 16);

  os_unfair_lock_lock(v16);
  sub_224CCE340(v3, a1);
  os_unfair_lock_unlock(*(v15 + 16));

  v17 = MEMORY[0x277CF9950];
  a2[3] = v10;
  a2[4] = v17;
  *a2 = v14;
}

double sub_224CCDEC4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = *(Strong + 424);
    v7 = *(v6 + 16);

    os_unfair_lock_lock(v7);
    sub_224CCDF74(v5, a2);
    os_unfair_lock_unlock(*(v6 + 16));
  }

  return result;
}

void sub_224CCDF74(uint64_t a1, uint64_t a2)
{
  v4 = sub_224DAC268();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v34[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v34[-1] - v11;
  swift_beginAccess();
  v13 = *(a1 + 432);
  if (!v13 || !*(v13 + 16))
  {
    goto LABEL_10;
  }

  v14 = sub_224A61E5C(a2);
  if ((v15 & 1) == 0)
  {

    goto LABEL_10;
  }

  v16 = *(*(v13 + 56) + 8 * v14);

  v17 = v16 > 1;
  v18 = v16 - 1;
  if (!v17)
  {
LABEL_10:
    v20 = sub_224CCCE5C(v34);
    if (*v23)
    {
      (*(v5 + 16))(v12, a2, v4);
      sub_224B0976C(0, 1, v12);
    }

    goto LABEL_12;
  }

  v20 = sub_224CCCE5C(v34);
  if (*v19)
  {
    v21 = v19;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v35 = *v21;
    *v21 = 0x8000000000000000;
    sub_224B22EE4(v18, a2, isUniquelyReferenced_nonNull_native);
    *v21 = v35;
  }

LABEL_12:
  (v20)(v34, 0);
  if (qword_281351470 != -1)
  {
    swift_once();
  }

  v24 = sub_224DAB258();
  __swift_project_value_buffer(v24, qword_281364DD8);
  (*(v5 + 16))(v9, a2, v4);
  v25 = sub_224DAB228();
  v26 = sub_224DAF2A8();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v34[0] = v28;
    *v27 = 136446210;
    sub_224CCFB88(&qword_281350E40, MEMORY[0x277CF9978], MEMORY[0x277CF99A0]);
    v29 = sub_224DAFD28();
    v31 = v30;
    (*(v5 + 8))(v9, v4);
    v32 = sub_224A33F74(v29, v31, v34);

    *(v27 + 4) = v32;
    _os_log_impl(&dword_224A2F000, v25, v26, "Removed lifetime assertion for [timeline]: %{public}s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x22AA5EED0](v28, -1, -1);
    MEMORY[0x22AA5EED0](v27, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v9, v4);
  }
}

void sub_224CCE340(uint64_t a1, uint64_t a2)
{
  v4 = sub_224DAC268();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v32[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v9 = *(a1 + 432);
  if (v9)
  {
    if (!*(v9 + 16))
    {
LABEL_10:
      v14 = sub_224CCCE5C(v32);
      if (*v19)
      {
        v20 = v19;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v33 = *v20;
        *v20 = 0x8000000000000000;
        sub_224B22EE4(1, a2, isUniquelyReferenced_nonNull_native);
        *v20 = v33;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v9 = MEMORY[0x277D84F98];
    *(a1 + 432) = MEMORY[0x277D84F98];
    if (!*(v9 + 16))
    {
      goto LABEL_10;
    }
  }

  v10 = sub_224A61E5C(a2);
  if ((v11 & 1) == 0)
  {

    goto LABEL_10;
  }

  v12 = *(*(v9 + 56) + 8 * v10);

  v14 = sub_224CCCE5C(v32);
  if (*v13)
  {
    v15 = __CFADD__(v12, 1);
    v16 = v12 + 1;
    if (v15)
    {
      __break(1u);
      return;
    }

    v17 = v13;
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v33 = *v17;
    *v17 = 0x8000000000000000;
    sub_224B22EE4(v16, a2, v18);
    *v17 = v33;
  }

LABEL_12:
  (v14)(v32, 0);
  if (qword_281351470 != -1)
  {
    swift_once();
  }

  v22 = sub_224DAB258();
  __swift_project_value_buffer(v22, qword_281364DD8);
  (*(v5 + 16))(v8, a2, v4);
  v23 = sub_224DAB228();
  v24 = sub_224DAF2A8();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v32[0] = v26;
    *v25 = 136446210;
    sub_224CCFB88(&qword_281350E40, MEMORY[0x277CF9978], MEMORY[0x277CF99A0]);
    v27 = sub_224DAFD28();
    v29 = v28;
    (*(v5 + 8))(v8, v4);
    v30 = sub_224A33F74(v27, v29, v32);

    *(v25 + 4) = v30;
    _os_log_impl(&dword_224A2F000, v23, v24, "Adding lifetime assertion for [timeline]: %{public}s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x22AA5EED0](v26, -1, -1);
    MEMORY[0x22AA5EED0](v25, -1, -1);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }
}

double sub_224CCE724(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_224CCE77C();
  }

  return result;
}

void sub_224CCE77C()
{
  v1 = v0;
  v2 = sub_224DAB8C8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = (aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + 416);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2);
  v8 = v7;
  v9 = sub_224DAB8F8();
  (*(v3 + 8))(v6, v2);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_16:
    swift_once();
    goto LABEL_4;
  }

  v10 = IOPSCopyExternalPowerAdapterDetails();
  if (!v10)
  {
    if (qword_281351470 != -1)
    {
      swift_once();
    }

    v21 = sub_224DAB258();
    __swift_project_value_buffer(v21, qword_281364DD8);
    v22 = sub_224DAB228();
    v23 = sub_224DAF2A8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_224A2F000, v22, v23, "Not connected to power; will not schedule reap session", v24, 2u);
      MEMORY[0x22AA5EED0](v24, -1, -1);
    }

    [*(v1 + 408) invalidate];
    v19 = *(v1 + 408);
    *(v1 + 408) = 0;
    goto LABEL_13;
  }

  if (qword_281351470 != -1)
  {
    goto LABEL_16;
  }

LABEL_4:
  v11 = sub_224DAB258();
  __swift_project_value_buffer(v11, qword_281364DD8);
  v12 = sub_224DAB228();
  v13 = sub_224DAF2A8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_224A2F000, v12, v13, "Connected to power; will start reap session soon", v14, 2u);
    MEMORY[0x22AA5EED0](v14, -1, -1);
  }

  [*(v1 + 408) invalidate];
  v15 = objc_allocWithZone(MEMORY[0x277CF0BD8]);
  v16 = sub_224DAEDE8();
  v17 = [v15 initWithIdentifier_];

  v18 = *(v1 + 408);
  *(v1 + 408) = v17;
  v19 = v17;

  if (v19)
  {
    aBlock[4] = sub_224A9F57C;
    aBlock[5] = v1;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_224A3837C;
    aBlock[3] = &block_descriptor_53_0;
    v20 = _Block_copy(aBlock);

    [v19 scheduleRepeatingWithFireInterval:v8 repeatInterval:v20 leewayInterval:120.0 queue:43200.0 handler:300.0];
    _Block_release(v20);
LABEL_13:
  }
}

uint64_t sub_224CCEB54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for FileReaperProtectionConfiguration(0);
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v49 - v11;
  v13 = type metadata accessor for FileReaperScenario(0);
  v15 = MEMORY[0x28223BE20](v13 - 8, v14);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v49 - v19;
  sub_224CCF9E0(a1, &v49 - v19, type metadata accessor for FileReaperScenario);
  v21 = (*(v5 + 48))(v20, 4, v4);
  if (v21 <= 1)
  {
    if (v21)
    {
      if (qword_2813513F8 != -1)
      {
        swift_once();
      }

      v45 = sub_224DAB258();
      __swift_project_value_buffer(v45, qword_281364D00);
      v46 = sub_224DAB228();
      v47 = sub_224DAF2A8();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&dword_224A2F000, v46, v47, "Preparing migration reaper", v48, 2u);
        MEMORY[0x22AA5EED0](v48, -1, -1);
      }

      result = sub_224DAB7E8();
      *a2 = 33554946;
      *(a2 + 4) = 2;
      *(a2 + 6) = 2;
    }

    else
    {
      sub_224CCF838(v20, v12, type metadata accessor for FileReaperProtectionConfiguration);
      if (qword_2813513F8 != -1)
      {
        swift_once();
      }

      v31 = sub_224DAB258();
      __swift_project_value_buffer(v31, qword_281364D00);
      sub_224CCF9E0(v12, v9, type metadata accessor for FileReaperProtectionConfiguration);
      v32 = sub_224DAB228();
      v33 = sub_224DAF2A8();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v50 = v35;
        *v34 = 136446210;
        v36 = sub_224AA3FE8();
        v38 = v37;
        sub_224CCFA48(v9, type metadata accessor for FileReaperProtectionConfiguration);
        v39 = sub_224A33F74(v36, v38, &v50);

        *(v34 + 4) = v39;
        _os_log_impl(&dword_224A2F000, v32, v33, "Preparing custom reaper with configuration: %{public}s", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v35);
        MEMORY[0x22AA5EED0](v35, -1, -1);
        MEMORY[0x22AA5EED0](v34, -1, -1);
      }

      else
      {

        sub_224CCFA48(v9, type metadata accessor for FileReaperProtectionConfiguration);
      }

      return sub_224CCF838(v12, a2, type metadata accessor for FileReaperProtectionConfiguration);
    }
  }

  else if ((v21 - 2) >= 2)
  {
    if (qword_2813513F8 != -1)
    {
      swift_once();
    }

    v40 = sub_224DAB258();
    __swift_project_value_buffer(v40, qword_281364D00);
    v41 = sub_224DAB228();
    v42 = sub_224DAF2A8();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_224A2F000, v41, v42, "Preparing reset reaper", v43, 2u);
      MEMORY[0x22AA5EED0](v43, -1, -1);
    }

    result = sub_224DAB7E8();
    *(a2 + 3) = 0;
    *a2 = 0;
  }

  else
  {
    if (qword_2813513F8 != -1)
    {
      swift_once();
    }

    v22 = sub_224DAB258();
    __swift_project_value_buffer(v22, qword_281364D00);
    sub_224CCF9E0(a1, v17, type metadata accessor for FileReaperScenario);
    v23 = sub_224DAB228();
    v24 = sub_224DAF2A8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v50 = v26;
      *v25 = 136446210;
      v27 = sub_224A9FF1C();
      v29 = v28;
      sub_224CCFA48(v17, type metadata accessor for FileReaperScenario);
      v30 = sub_224A33F74(v27, v29, &v50);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_224A2F000, v23, v24, "Preparing reaper for scenario: %{public}s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x22AA5EED0](v26, -1, -1);
      MEMORY[0x22AA5EED0](v25, -1, -1);
    }

    else
    {

      sub_224CCFA48(v17, type metadata accessor for FileReaperScenario);
    }

    result = sub_224DAB7E8();
    *a2 = 16843265;
    *(a2 + 4) = 258;
    *(a2 + 6) = 2;
  }

  return result;
}

uint64_t sub_224CCF1F8()
{
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6200, qword_224DBEC08);
  v2 = MEMORY[0x28223BE20](v58, v1);
  v57 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v56 = &v47 - v6;
  MEMORY[0x28223BE20](v5, v7);
  v55 = &v47 - v8;
  v63 = sub_224DAC268();
  v9 = *(v63 - 8);
  MEMORY[0x28223BE20](v63, v10);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v0 + 424);
  v14 = *(v13 + 16);

  os_unfair_lock_lock(v14);
  swift_beginAccess();
  v15 = *(v0 + 432);
  if (!v15)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

  v16 = *(v15 + 16);
  v17 = MEMORY[0x277D84F90];
  if (!v16)
  {
LABEL_23:
    os_unfair_lock_unlock(*(v13 + 16));

    return v17;
  }

  v48 = v13;
  v64 = MEMORY[0x277D84F90];

  sub_224ADA224(0, v16, 0);
  v62 = v64;
  v18 = v15 + 64;
  result = sub_224DAF798();
  v20 = result;
  v21 = 0;
  v53 = v15;
  v54 = v9 + 16;
  v49 = v15 + 72;
  v50 = v9;
  v51 = v16;
  v52 = v15 + 64;
  while ((v20 & 0x8000000000000000) == 0 && v20 < 1 << *(v15 + 32))
  {
    v25 = v20 >> 6;
    if ((*(v18 + 8 * (v20 >> 6)) & (1 << v20)) == 0)
    {
      goto LABEL_25;
    }

    v26 = *(v15 + 36);
    v59 = v21;
    v60 = v26;
    v27 = *(v15 + 48);
    v61 = *(v9 + 72);
    v28 = v55;
    (*(v9 + 16))(v55, v27 + v61 * v20, v63);
    v29 = *(*(v15 + 56) + 8 * v20);
    v30 = *(v9 + 32);
    v31 = v9;
    v32 = v56;
    v33 = v28;
    v34 = v63;
    v30(v56, v33, v63);
    *(v32 + *(v58 + 48)) = v29;
    v35 = v57;
    sub_224CCFAA8(v32, v57);
    v30(v12, v35, v34);
    v36 = v62;
    v64 = v62;
    v38 = *(v62 + 16);
    v37 = *(v62 + 24);
    if (v38 >= v37 >> 1)
    {
      sub_224ADA224((v37 > 1), v38 + 1, 1);
      v34 = v63;
      v36 = v64;
    }

    *(v36 + 16) = v38 + 1;
    v39 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    v62 = v36;
    result = (v30)(v36 + v39 + v38 * v61, v12, v34);
    v15 = v53;
    v22 = 1 << *(v53 + 32);
    if (v20 >= v22)
    {
      goto LABEL_26;
    }

    v18 = v52;
    v40 = *(v52 + 8 * v25);
    if ((v40 & (1 << v20)) == 0)
    {
      goto LABEL_27;
    }

    if (v60 != *(v53 + 36))
    {
      goto LABEL_28;
    }

    v41 = v40 & (-2 << (v20 & 0x3F));
    if (v41)
    {
      v22 = __clz(__rbit64(v41)) | v20 & 0x7FFFFFFFFFFFFFC0;
      v23 = v51;
      v24 = v59;
    }

    else
    {
      v42 = v25 << 6;
      v43 = v25 + 1;
      v44 = (v49 + 8 * v25);
      v23 = v51;
      while (v43 < (v22 + 63) >> 6)
      {
        v46 = *v44++;
        v45 = v46;
        v42 += 64;
        ++v43;
        if (v46)
        {
          result = sub_224A3E204(v20, v60, 0);
          v22 = __clz(__rbit64(v45)) + v42;
          goto LABEL_20;
        }
      }

      result = sub_224A3E204(v20, v60, 0);
LABEL_20:
      v24 = v59;
    }

    v21 = v24 + 1;
    v20 = v22;
    v9 = v50;
    if (v21 == v23)
    {

      v13 = v48;
      v17 = v62;
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_224CCF6AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 376))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_224CCF6F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
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
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 376) = 1;
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

    *(result + 376) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_224CCF7A4()
{
  v1 = *(type metadata accessor for FileReaperScenario(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(v0 + 16);
  v5 = *(v0 + v3);
  v6 = *(v0 + (v3 & 0xFFFFFFFFFFFFFFF8) + 8);

  return sub_224CCD6E0(v4, v0 + v2, v5, v6);
}

uint64_t sub_224CCF838(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_224CCF970(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F5590, &qword_224DBEC00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_224CCF9E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_224CCFA48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_224CCFAA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F6200, qword_224DBEC08);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_224CCFB18()
{
  v1 = *(sub_224DAC268() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_224CCDEC4(v2, v3);
}

uint64_t sub_224CCFB88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_224CCFC20()
{
  v1 = 0x6573556E69;
  if (*v0 != 1)
  {
    v1 = 7105633;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736302;
  }
}

unint64_t sub_224CCFC7C()
{
  result = qword_27D6F6208;
  if (!qword_27D6F6208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D6F6208);
  }

  return result;
}

void sub_224CCFDFC(void *a1)
{
  v2 = v1;
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = (*(v5 + 24))(v4, v5);
  swift_beginAccess();
  v7 = *(v1 + 32);
  if (*(v7 + 16))
  {

    v8 = sub_224A3E7EC(v6);
    if (v9)
    {
      v10 = *(*(v7 + 56) + 8 * v8);

      MEMORY[0x28223BE20](v11, v12);
      v15[2] = a1;
      v13 = sub_224CD6238(sub_224CD6738, v15, v10);
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16 = *(v2 + 32);
      *(v2 + 32) = 0x8000000000000000;
      sub_224B20018(v13, v6, isUniquelyReferenced_nonNull_native);

      *(v2 + 32) = v16;
      swift_endAccess();
      return;
    }
  }
}

uint64_t sub_224CCFF68(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  __swift_project_boxed_opaque_existential_1(a1 + 1, v3);
  v5 = (*(v4 + 16))(v3, v4);
  v7 = v6;
  v8 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v8);
  if (v5 == (*(v9 + 16))(v8, v9) && v7 == v10)
  {

    v13 = 0;
  }

  else
  {
    v12 = sub_224DAFD88();

    v13 = v12 ^ 1;
  }

  return v13 & 1;
}

uint64_t sub_224CD006C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v309 = sub_224DA9908();
  v308 = *(v309 - 8);
  MEMORY[0x28223BE20](v309, v6);
  v307 = &v300 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v316 = sub_224DA9878();
  v369 = *(v316 - 8);
  v9 = MEMORY[0x28223BE20](v316, v8);
  v315 = &v300 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v314 = &v300 - v12;
  v13 = type metadata accessor for ExtensionTask.SchedulingOption(0);
  v333 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13 - 8, v14);
  v17 = &v300 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v15, v18);
  v371 = &v300 - v20;
  v22 = MEMORY[0x28223BE20](v19, v21);
  v320 = &v300 - v23;
  v25 = MEMORY[0x28223BE20](v22, v24);
  v355 = &v300 - v26;
  v28 = MEMORY[0x28223BE20](v25, v27);
  v374 = &v300 - v29;
  v31 = MEMORY[0x28223BE20](v28, v30);
  v325 = &v300 - v32;
  v34 = MEMORY[0x28223BE20](v31, v33);
  v373 = &v300 - v35;
  v37 = MEMORY[0x28223BE20](v34, v36);
  v319 = &v300 - v38;
  MEMORY[0x28223BE20](v37, v39);
  v372 = &v300 - v40;
  v41 = sub_224DAE8B8();
  v312 = *(v41 - 8);
  v43 = MEMORY[0x28223BE20](v41, v42);
  v328 = &v300 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x28223BE20](v43, v45);
  v359 = &v300 - v47;
  v49 = MEMORY[0x28223BE20](v46, v48);
  v324 = &v300 - v50;
  v52 = MEMORY[0x28223BE20](v49, v51);
  v318 = &v300 - v53;
  v55 = MEMORY[0x28223BE20](v52, v54);
  v358 = &v300 - v56;
  v58 = MEMORY[0x28223BE20](v55, v57);
  v323 = &v300 - v59;
  v61 = MEMORY[0x28223BE20](v58, v60);
  v332 = &v300 - v62;
  v64 = MEMORY[0x28223BE20](v61, v63);
  v357 = &v300 - v65;
  v67 = MEMORY[0x28223BE20](v64, v66);
  v322 = &v300 - v68;
  v70 = MEMORY[0x28223BE20](v67, v69);
  v331 = &v300 - v71;
  v73 = MEMORY[0x28223BE20](v70, v72);
  v343 = &v300 - v74;
  v76 = MEMORY[0x28223BE20](v73, v75);
  v356 = &v300 - v77;
  MEMORY[0x28223BE20](v76, v78);
  v321 = &v300 - v79;
  v80 = type metadata accessor for ExtensionTask.SchedulingConfiguration(0);
  v82 = MEMORY[0x28223BE20](v80 - 8, v81);
  v327 = &v300 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v82, v84);
  v326 = &v300 - v85;
  v330 = type metadata accessor for ExtensionTask.Identifier(0);
  v87 = MEMORY[0x28223BE20](v330, v86);
  v353 = &v300 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = MEMORY[0x28223BE20](v87, v89);
  v342 = &v300 - v91;
  v93 = MEMORY[0x28223BE20](v90, v92);
  v352 = &v300 - v94;
  v96 = MEMORY[0x28223BE20](v93, v95);
  v341 = &v300 - v97;
  v99 = MEMORY[0x28223BE20](v96, v98);
  v366 = &v300 - v100;
  v102 = MEMORY[0x28223BE20](v99, v101);
  v335 = &v300 - v103;
  v105 = MEMORY[0x28223BE20](v102, v104);
  v365 = &v300 - v106;
  MEMORY[0x28223BE20](v105, v107);
  v347 = &v300 - v108;
  v109 = type metadata accessor for _TaskInfo(0);
  v377 = *(v109 - 8);
  v111 = MEMORY[0x28223BE20](v109 - 8, v110);
  v360 = (&v300 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0));
  v114 = MEMORY[0x28223BE20](v111, v113);
  v367 = (&v300 - v115);
  MEMORY[0x28223BE20](v114, v116);
  v350 = (&v300 - v117);
  v118 = sub_224DA9F08();
  v119 = *(v118 - 8);
  v121 = MEMORY[0x28223BE20](v118, v120);
  v123 = &v300 - ((v122 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = MEMORY[0x28223BE20](v121, v124);
  v306 = &v300 - v126;
  MEMORY[0x28223BE20](v125, v127);
  v129 = &v300 - v128;
  v130 = a1;
  sub_224CD3308(a1, a2);
  v132 = v131;
  v133 = *(v131 + 16);
  if (!v133)
  {

    swift_beginAccess();
    if (!*(*(v3 + 24) + 16))
    {
      return 0;
    }

    if (qword_2813516B8 != -1)
    {
      swift_once();
    }

    v272 = sub_224DAB258();
    __swift_project_value_buffer(v272, qword_281365108);
    v273 = v130;

    v274 = sub_224DAB228();
    v275 = sub_224DAF2A8();

    if (os_log_type_enabled(v274, v275))
    {
      v276 = swift_slowAlloc();
      v277 = swift_slowAlloc();
      v380 = v277;
      *v276 = 136446210;
      v278 = sub_224DAF538();
      v279 = MEMORY[0x22AA5D380](v273, v278);
      v281 = sub_224A33F74(v279, v280, &v380);

      *(v276 + 4) = v281;
      _os_log_impl(&dword_224A2F000, v274, v275, "Would pop task, but all extensions are busy, namely %{public}s", v276, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v277);
      MEMORY[0x22AA5EED0](v277, -1, -1);
      MEMORY[0x22AA5EED0](v276, -1, -1);
    }

    return 1;
  }

  v305 = v123;
  v304 = v133;
  v301 = v17;
  v134 = sub_224DA9ED8();
  v135 = *(v134 + 16);
  if (v135)
  {
    v376 = v119 + 16;
    while (1)
    {
      if (v135 > *(v134 + 16))
      {
        goto LABEL_191;
      }

      --v135;
      v136 = v134 + ((*(v119 + 80) + 32) & ~*(v119 + 80)) + *(v119 + 72) * v135;
      v375 = *(v119 + 16);
      v375(v129, v136, v118);
      if (*(v132 + 16))
      {
        v137 = sub_224B0B75C(v129);
        if (v138)
        {
          v139 = *(*(v132 + 56) + 8 * v137);
          if (*(v139 + 16))
          {
            break;
          }
        }
      }

      (*(v119 + 8))(v129, v118);
      if (!v135)
      {
        goto LABEL_190;
      }
    }

    v346 = *(v139 + 16);
    v317 = v139;

    if (*(v317 + 16))
    {
      v303 = v3;
      v140 = v377;
      v345 = v317 + ((*(v377 + 80) + 32) & ~*(v377 + 80));
      v141 = v350;
      sub_224A41594(v345, v350, type metadata accessor for _TaskInfo);
      v142 = 0;
      v344 = *(v140 + 72);
      v340 = *MEMORY[0x277CE3D10];
      v351 = (v312 + 104);
      v354 = (v312 + 48);
      v377 = v312 + 32;
      v368 = (v312 + 40);
      v370 = (v312 + 8);
      v339 = *MEMORY[0x277CE3D30];
      v311 = (v369 + 16);
      v310 = (v369 + 8);
      v329 = v118;
      v313 = (v119 + 8);
      v143 = v141;
      v302 = v119;
      v144 = v332;
      v145 = v331;
      v146 = v335;
      v147 = v360;
      v348 = v129;
      while (1)
      {
        v363 = v142;
        v148 = v367;
        sub_224A41594(v345 + v344 * v142, v367, type metadata accessor for _TaskInfo);
        sub_224A41594(v143, v147, type metadata accessor for _TaskInfo);
        v362 = *v148;
        v149 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_identifier;
        v150 = v347;
        sub_224A41594(v362 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_identifier, v347, type metadata accessor for ExtensionTask.Identifier);
        sub_224CD666C(v150, v365, type metadata accessor for ExtensionTask.Identifier);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload <= 4)
        {
          if (EnumCaseMultiPayload <= 1)
          {
            if (EnumCaseMultiPayload)
            {
              sub_224A424D8(v365, type metadata accessor for ExtensionTask.Identifier);
              v155 = 60;
            }

            else
            {
              sub_224A424D8(v365, type metadata accessor for ExtensionTask.Identifier);
              v155 = 100;
            }
          }

          else
          {
            if (EnumCaseMultiPayload == 2)
            {
              goto LABEL_26;
            }

            if (EnumCaseMultiPayload == 3)
            {
              sub_224A424D8(v365, type metadata accessor for ExtensionTask.Identifier);
              v155 = 80;
            }

            else
            {
              sub_224A424D8(v365, type metadata accessor for ExtensionTask.Identifier);
              v155 = 30;
            }
          }
        }

        else if (EnumCaseMultiPayload > 7)
        {
          if (EnumCaseMultiPayload == 8)
          {
            sub_224A424D8(v365, type metadata accessor for ExtensionTask.Identifier);
            v155 = 90;
          }

          else if (EnumCaseMultiPayload == 9)
          {
            sub_224A424D8(v365, type metadata accessor for ExtensionTask.Identifier);
            v155 = 10;
          }

          else
          {
            sub_224A424D8(v365, type metadata accessor for ExtensionTask.Identifier);
            v155 = 20;
          }
        }

        else
        {
          if (EnumCaseMultiPayload != 5)
          {
            if (EnumCaseMultiPayload != 6)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4048, &unk_224DB95F0);
              v152 = v365;

              v153 = sub_224DABE18();
              v154 = v152;
              v147 = v360;
              (*(*(v153 - 8) + 8))(v154, v153);
              v155 = 60;
              goto LABEL_34;
            }

LABEL_26:
            sub_224A424D8(v365, type metadata accessor for ExtensionTask.Identifier);
            v155 = 70;
            goto LABEL_34;
          }

          sub_224A424D8(v365, type metadata accessor for ExtensionTask.Identifier);
          v155 = 40;
        }

LABEL_34:
        v156 = *v147;
        v157 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_identifier;
        v364 = v156;
        sub_224A41594(v156 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_identifier, v146, type metadata accessor for ExtensionTask.Identifier);
        sub_224CD666C(v146, v366, type metadata accessor for ExtensionTask.Identifier);
        v158 = swift_getEnumCaseMultiPayload();
        if (v158 <= 4)
        {
          if (v158 <= 1)
          {
            if (!v158)
            {
              sub_224A424D8(v366, type metadata accessor for ExtensionTask.Identifier);
              goto LABEL_62;
            }

            sub_224A424D8(v366, type metadata accessor for ExtensionTask.Identifier);
LABEL_59:
            if (v155 > 0x3C)
            {
              goto LABEL_156;
            }

            goto LABEL_62;
          }

          if (v158 == 2)
          {
LABEL_48:
            sub_224A424D8(v366, type metadata accessor for ExtensionTask.Identifier);
            if (v155 > 0x46)
            {
              goto LABEL_156;
            }

            goto LABEL_62;
          }

          if (v158 == 3)
          {
            sub_224A424D8(v366, type metadata accessor for ExtensionTask.Identifier);
            if (v155 > 0x50)
            {
              goto LABEL_156;
            }
          }

          else
          {
            sub_224A424D8(v366, type metadata accessor for ExtensionTask.Identifier);
            if (v155 > 0x1E)
            {
              goto LABEL_156;
            }
          }
        }

        else
        {
          if (v158 <= 7)
          {
            if (v158 == 5)
            {
              sub_224A424D8(v366, type metadata accessor for ExtensionTask.Identifier);
              if (v155 > 0x28)
              {
                goto LABEL_156;
              }

              goto LABEL_62;
            }

            if (v158 == 6)
            {
              goto LABEL_48;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4048, &unk_224DB95F0);
            v159 = v366;

            v160 = sub_224DABE18();
            v161 = v159;
            v146 = v335;
            (*(*(v160 - 8) + 8))(v161, v160);
            goto LABEL_59;
          }

          if (v158 == 8)
          {
            sub_224A424D8(v366, type metadata accessor for ExtensionTask.Identifier);
            if (v155 > 0x5A)
            {
              goto LABEL_156;
            }
          }

          else if (v158 == 9)
          {
            sub_224A424D8(v366, type metadata accessor for ExtensionTask.Identifier);
            if (v155 > 0xA)
            {
              goto LABEL_156;
            }
          }

          else
          {
            sub_224A424D8(v366, type metadata accessor for ExtensionTask.Identifier);
            if (v155 > 0x14)
            {
              goto LABEL_156;
            }
          }
        }

LABEL_62:
        v162 = v362;
        v163 = v341;
        sub_224A41594(v362 + v149, v341, type metadata accessor for ExtensionTask.Identifier);
        sub_224CD666C(v163, v352, type metadata accessor for ExtensionTask.Identifier);
        v164 = swift_getEnumCaseMultiPayload();
        if (v164 <= 4)
        {
          if (v164 <= 1)
          {
            if (v164)
            {
              sub_224A424D8(v352, type metadata accessor for ExtensionTask.Identifier);
              v167 = 60;
            }

            else
            {
              sub_224A424D8(v352, type metadata accessor for ExtensionTask.Identifier);
              v167 = 100;
            }
          }

          else
          {
            if (v164 == 2)
            {
              goto LABEL_74;
            }

            if (v164 == 3)
            {
              sub_224A424D8(v352, type metadata accessor for ExtensionTask.Identifier);
              v167 = 80;
            }

            else
            {
              sub_224A424D8(v352, type metadata accessor for ExtensionTask.Identifier);
              v167 = 30;
            }
          }
        }

        else if (v164 > 7)
        {
          if (v164 == 8)
          {
            sub_224A424D8(v352, type metadata accessor for ExtensionTask.Identifier);
            v167 = 90;
          }

          else if (v164 == 9)
          {
            sub_224A424D8(v352, type metadata accessor for ExtensionTask.Identifier);
            v167 = 10;
          }

          else
          {
            sub_224A424D8(v352, type metadata accessor for ExtensionTask.Identifier);
            v167 = 20;
          }
        }

        else
        {
          if (v164 != 5)
          {
            if (v164 != 6)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4048, &unk_224DB95F0);
              v165 = v352;

              v166 = sub_224DABE18();
              (*(*(v166 - 8) + 8))(v165, v166);
              v167 = 60;
              goto LABEL_82;
            }

LABEL_74:
            sub_224A424D8(v352, type metadata accessor for ExtensionTask.Identifier);
            v167 = 70;
            goto LABEL_82;
          }

          sub_224A424D8(v352, type metadata accessor for ExtensionTask.Identifier);
          v167 = 40;
        }

LABEL_82:
        v168 = v342;
        sub_224A41594(v364 + v157, v342, type metadata accessor for ExtensionTask.Identifier);
        sub_224CD666C(v168, v353, type metadata accessor for ExtensionTask.Identifier);
        v169 = swift_getEnumCaseMultiPayload();
        if (v169 > 4)
        {
          v147 = v360;
          if (v169 > 7)
          {
            if (v169 == 8)
            {
              sub_224A424D8(v353, type metadata accessor for ExtensionTask.Identifier);
              if (v167 < 0x5A)
              {
                goto LABEL_11;
              }
            }

            else if (v169 == 9)
            {
              sub_224A424D8(v353, type metadata accessor for ExtensionTask.Identifier);
            }

            else
            {
              sub_224A424D8(v353, type metadata accessor for ExtensionTask.Identifier);
              if (v167 < 0x14)
              {
                goto LABEL_11;
              }
            }

            goto LABEL_110;
          }

          if (v169 == 5)
          {
            sub_224A424D8(v353, type metadata accessor for ExtensionTask.Identifier);
            if (v167 < 0x28)
            {
              goto LABEL_11;
            }

            goto LABEL_110;
          }

          if (v169 == 6)
          {
            goto LABEL_95;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F4048, &unk_224DB95F0);
          v170 = v353;

          v171 = sub_224DABE18();
          v172 = v170;
          v147 = v360;
          (*(*(v171 - 8) + 8))(v172, v171);
          goto LABEL_107;
        }

        v147 = v360;
        if (v169 <= 1)
        {
          if (!v169)
          {
            sub_224A424D8(v353, type metadata accessor for ExtensionTask.Identifier);
            if (v167 < 0x64)
            {
              goto LABEL_11;
            }

            goto LABEL_110;
          }

          sub_224A424D8(v353, type metadata accessor for ExtensionTask.Identifier);
LABEL_107:
          if (v167 < 0x3C)
          {
            goto LABEL_11;
          }

          goto LABEL_110;
        }

        if (v169 == 2)
        {
LABEL_95:
          sub_224A424D8(v353, type metadata accessor for ExtensionTask.Identifier);
          if (v167 < 0x46)
          {
            goto LABEL_11;
          }

          goto LABEL_110;
        }

        if (v169 == 3)
        {
          sub_224A424D8(v353, type metadata accessor for ExtensionTask.Identifier);
          if (v167 < 0x50)
          {
            goto LABEL_11;
          }
        }

        else
        {
          sub_224A424D8(v353, type metadata accessor for ExtensionTask.Identifier);
          if (v167 < 0x1E)
          {
            goto LABEL_11;
          }
        }

LABEL_110:
        v173 = v326;
        sub_224A41594(v162 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingConfiguration, v326, type metadata accessor for ExtensionTask.SchedulingConfiguration);
        v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33D0, qword_224DB3710);
        v175 = *(v174 - 8);
        v176 = *(v175 + 48);
        v177 = v175 + 48;
        v178 = v176(v173, 1, v174);
        sub_224A424D8(v173, type metadata accessor for ExtensionTask.SchedulingConfiguration);
        v179 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingOptions;
        v338 = v174;
        v337 = v176;
        v336 = v177;
        if (v178 == 1)
        {
          swift_beginAccess();
          v180 = *(v162 + v179);
          v349 = *v351;
          v349(v356, v340, v41);
          v181 = *(v180 + 16);
          v361 = v180;
          if (v181)
          {
            v182 = v333;
            v183 = v180 + ((*(v333 + 80) + 32) & ~*(v333 + 80));

            v184 = *(v182 + 72);
            v185 = v319;
            v186 = v372;
            v187 = v355;
            v188 = v145;
            v189 = v354;
            do
            {
              sub_224A41594(v183, v186, type metadata accessor for ExtensionTask.SchedulingOption);
              sub_224A41594(v186, v185, type metadata accessor for ExtensionTask.SchedulingOption);
              if ((*v189)(v185, 5, v41))
              {
                sub_224A424D8(v186, type metadata accessor for ExtensionTask.SchedulingOption);
                sub_224A424D8(v185, type metadata accessor for ExtensionTask.SchedulingOption);
              }

              else
              {
                (*v377)(v188, v185, v41);
                sub_224CD6594(&qword_281350C40, MEMORY[0x277CE3D38], MEMORY[0x277CE3D40]);
                v190 = v188;
                v191 = v356;
                v192 = sub_224DAEDB8();
                sub_224A424D8(v186, type metadata accessor for ExtensionTask.SchedulingOption);
                if (v192)
                {
                  (*v370)(v190, v41);
                }

                else
                {
                  (*v368)(v191, v190, v41);
                }

                v188 = v190;
                v189 = v354;
              }

              v183 += v184;
              --v181;
              v186 = v372;
            }

            while (v181);
          }

          else
          {

            v187 = v355;
            v189 = v354;
          }

          v204 = v321;
          v369 = *v377;
          v369(v321, v356, v41);

          v205 = v343;
          v349(v343, v339, v41);
          sub_224CD6594(&qword_281350C40, MEMORY[0x277CE3D38], MEMORY[0x277CE3D40]);
          v206 = sub_224DAEDB8();
          v207 = *v370;
          (*v370)(v205, v41);
          v361 = v207;
          v207(v204, v41);
          v208 = 2;
          if (v206)
          {
            v208 = 3;
          }
        }

        else
        {
          swift_beginAccess();
          v193 = *(v162 + v179);
          v349 = *v351;
          v349(v357, v340, v41);
          v194 = *(v193 + 16);
          v195 = v325;
          v361 = v193;
          if (v194)
          {
            v196 = v333;
            v197 = v193 + ((*(v333 + 80) + 32) & ~*(v333 + 80));

            v198 = *(v196 + 72);
            v199 = v373;
            v200 = v144;
            v187 = v355;
            v189 = v354;
            do
            {
              sub_224A41594(v197, v199, type metadata accessor for ExtensionTask.SchedulingOption);
              sub_224A41594(v199, v195, type metadata accessor for ExtensionTask.SchedulingOption);
              if ((*v189)(v195, 5, v41))
              {
                sub_224A424D8(v199, type metadata accessor for ExtensionTask.SchedulingOption);
                sub_224A424D8(v195, type metadata accessor for ExtensionTask.SchedulingOption);
              }

              else
              {
                (*v377)(v200, v195, v41);
                sub_224CD6594(&qword_281350C40, MEMORY[0x277CE3D38], MEMORY[0x277CE3D40]);
                v201 = v200;
                v202 = v357;
                v203 = sub_224DAEDB8();
                sub_224A424D8(v199, type metadata accessor for ExtensionTask.SchedulingOption);
                if (v203)
                {
                  (*v370)(v201, v41);
                }

                else
                {
                  (*v368)(v202, v201, v41);
                }

                v200 = v201;
                v187 = v355;
              }

              v197 += v198;
              --v194;
              v199 = v373;
            }

            while (v194);
          }

          else
          {

            v187 = v355;
            v189 = v354;
          }

          v209 = v322;
          v369 = *v377;
          v369(v322, v357, v41);

          v210 = v343;
          v349(v343, v339, v41);
          sub_224CD6594(&qword_281350C40, MEMORY[0x277CE3D38], MEMORY[0x277CE3D40]);
          v211 = sub_224DAEDB8();
          v212 = *v370;
          (*v370)(v210, v41);
          v361 = v212;
          v212(v209, v41);
          v208 = v211 & 1;
        }

        v334 = v208;
        v213 = v364;
        v214 = v327;
        sub_224A41594(v364 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingConfiguration, v327, type metadata accessor for ExtensionTask.SchedulingConfiguration);
        v215 = v337(v214, 1, v338);
        sub_224A424D8(v214, type metadata accessor for ExtensionTask.SchedulingConfiguration);
        v216 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingOptions;
        v217 = v215 == 1;
        v218 = v328;
        v219 = v359;
        v220 = v358;
        if (v217)
        {
          swift_beginAccess();
          v221 = *(v213 + v216);
          v349(v220, v340, v41);
          v222 = *(v221 + 16);
          v338 = v221;
          if (v222)
          {
            v223 = v333;
            v224 = v221 + ((*(v333 + 80) + 32) & ~*(v333 + 80));

            v225 = *(v223 + 72);
            v226 = v374;
            v227 = v318;
            do
            {
              sub_224A41594(v224, v226, type metadata accessor for ExtensionTask.SchedulingOption);
              sub_224A41594(v226, v187, type metadata accessor for ExtensionTask.SchedulingOption);
              if ((*v189)(v187, 5, v41))
              {
                sub_224A424D8(v226, type metadata accessor for ExtensionTask.SchedulingOption);
                sub_224A424D8(v187, type metadata accessor for ExtensionTask.SchedulingOption);
              }

              else
              {
                v369(v227, v187, v41);
                sub_224CD6594(&qword_281350C40, MEMORY[0x277CE3D38], MEMORY[0x277CE3D40]);
                v228 = v358;
                v229 = sub_224DAEDB8();
                sub_224A424D8(v226, type metadata accessor for ExtensionTask.SchedulingOption);
                if (v229)
                {
                  v361(v227, v41);
                }

                else
                {
                  (*v368)(v228, v227, v41);
                }
              }

              v224 += v225;
              --v222;
              v226 = v374;
            }

            while (v222);
          }

          else
          {
          }

          v239 = v323;
          v369(v323, v358, v41);

          v240 = v343;
          v349(v343, v339, v41);
          sub_224CD6594(&qword_281350C40, MEMORY[0x277CE3D38], MEMORY[0x277CE3D40]);
          v241 = sub_224DAEDB8();
          v242 = v361;
          v361(v240, v41);
          v242(v239, v41);
          v118 = v329;
          v144 = v332;
          v145 = v331;
          v146 = v335;
          if ((v241 & 1) == 0 && v334 == 3)
          {
LABEL_156:
            v147 = v360;
            sub_224A424D8(v360, type metadata accessor for _TaskInfo);
LABEL_157:
            v143 = v350;
            sub_224CD66D4(v367, v350);
            v129 = v348;
            goto LABEL_13;
          }
        }

        else
        {
          swift_beginAccess();
          v230 = *(v213 + v216);
          v349(v219, v340, v41);
          v231 = *(v230 + 16);
          v338 = v230;
          if (v231)
          {
            v232 = v333;
            v233 = v230 + ((*(v333 + 80) + 32) & ~*(v333 + 80));

            v234 = *(v232 + 72);
            v235 = v320;
            do
            {
              sub_224A41594(v233, v235, type metadata accessor for ExtensionTask.SchedulingOption);
              v236 = v371;
              sub_224A41594(v235, v371, type metadata accessor for ExtensionTask.SchedulingOption);
              if ((*v189)(v236, 5, v41))
              {
                sub_224A424D8(v235, type metadata accessor for ExtensionTask.SchedulingOption);
                sub_224A424D8(v236, type metadata accessor for ExtensionTask.SchedulingOption);
              }

              else
              {
                v369(v218, v236, v41);
                sub_224CD6594(&qword_281350C40, MEMORY[0x277CE3D38], MEMORY[0x277CE3D40]);
                v237 = v359;
                v238 = sub_224DAEDB8();
                sub_224A424D8(v235, type metadata accessor for ExtensionTask.SchedulingOption);
                if (v238)
                {
                  v361(v218, v41);
                }

                else
                {
                  (*v368)(v237, v218, v41);
                }
              }

              v233 += v234;
              --v231;
            }

            while (v231);
          }

          else
          {
          }

          v243 = v324;
          v369(v324, v359, v41);

          v244 = v343;
          v349(v343, v339, v41);
          sub_224CD6594(&qword_281350C40, MEMORY[0x277CE3D38], MEMORY[0x277CE3D40]);
          v245 = sub_224DAEDB8();
          v246 = v361;
          v361(v244, v41);
          v246(v243, v41);
          if (v245)
          {
            v118 = v329;
            v144 = v332;
            v145 = v331;
            v146 = v335;
            if (v334 > 1)
            {
              goto LABEL_156;
            }
          }

          else
          {
            v118 = v329;
            v144 = v332;
            v145 = v331;
            v146 = v335;
            if (v334)
            {
              goto LABEL_156;
            }
          }
        }

        v247 = v362;
        v248 = sub_224CD2FA0();
        v249 = sub_224CD2FA0();
        v147 = v360;
        if (v248 < v249)
        {
LABEL_11:
          sub_224A424D8(v147, type metadata accessor for _TaskInfo);
          goto LABEL_12;
        }

        v250 = *v311;
        v251 = v314;
        v252 = v316;
        (*v311)(v314, v247 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_creationDate, v316);
        v253 = v315;
        v250(v315, v364 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_creationDate, v252);
        LODWORD(v369) = sub_224DA9798();
        v254 = *v310;
        (*v310)(v253, v252);
        v255 = v251;
        v146 = v335;
        v256 = v252;
        v147 = v360;
        v254(v255, v256);
        sub_224A424D8(v147, type metadata accessor for _TaskInfo);
        if (v369)
        {
          goto LABEL_157;
        }

LABEL_12:
        sub_224A424D8(v367, type metadata accessor for _TaskInfo);
        v129 = v348;
        v143 = v350;
LABEL_13:
        v142 = v363 + 1;
        if (v363 + 1 == v346)
        {
          v119 = v143;

          if (qword_2813516B8 == -1)
          {
            goto LABEL_167;
          }

          goto LABEL_193;
        }
      }
    }
  }

  else
  {
LABEL_190:

    __break(1u);
LABEL_191:
    __break(1u);
  }

  __break(1u);
LABEL_193:
  swift_once();
LABEL_167:
  v257 = sub_224DAB258();
  __swift_project_value_buffer(v257, qword_281365108);
  v258 = v306;
  v375(v306, v129, v118);
  v259 = sub_224DAB228();
  v260 = sub_224DAF2A8();
  if (os_log_type_enabled(v259, v260))
  {
    v261 = swift_slowAlloc();
    v262 = swift_slowAlloc();
    v263 = swift_slowAlloc();
    v379[0] = v263;
    *v261 = 138543618;
    swift_beginAccess();
    v264 = *v119;
    *(v261 + 4) = *v119;
    *v262 = v264;
    *(v261 + 12) = 2082;
    v265 = v264;
    v266 = sub_224DA9EC8();
    v268 = v267;
    v377 = *v313;
    (v377)(v258, v118);
    v269 = sub_224A33F74(v266, v268, v379);
    v270 = v350;

    *(v261 + 14) = v269;
    _os_log_impl(&dword_224A2F000, v259, v260, "Popped next task: %{public}@ from %{public}s", v261, 0x16u);
    sub_224A3311C(v262, &unk_27D6F69F0, &unk_224DB3900);
    MEMORY[0x22AA5EED0](v262, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v263);
    MEMORY[0x22AA5EED0](v263, -1, -1);
    MEMORY[0x22AA5EED0](v261, -1, -1);

    v271 = v305;
  }

  else
  {

    v377 = *v313;
    (v377)(v258, v118);
    v271 = v305;
    v270 = v119;
  }

  swift_beginAccess();
  v283 = v308;
  v284 = v307;
  v285 = v309;
  (*(v308 + 16))(v307, *v270 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_taskIdentifier, v309);
  v282 = sub_224A4B0F4(v284);
  (*(v283 + 8))(v284, v285);
  if (v282)
  {
    v379[3] = &type metadata for FeatureFlags.Widgets;
    v379[4] = sub_224A80FFC();
    LOBYTE(v379[0]) = 18;
    v286 = sub_224DA9C98();
    __swift_destroy_boxed_opaque_existential_1(v379);
    if (v286)
    {
      v287 = *(v302 + 104);
      v288 = v329;
      v287(v271, *MEMORY[0x277CF9F38], v329);
      sub_224CD6594(&unk_2813519C8, MEMORY[0x277CF9F40], MEMORY[0x277CF9F58]);
      v289 = v348;
      sub_224DAEFA8();
      sub_224DAEFA8();
      (v377)(v271, v288);
      if (v379[0] == v378 || (v287(v271, *MEMORY[0x277CF9F30], v288), sub_224DAEFA8(), sub_224DAEFA8(), v290 = v377, (v377)(v271, v288), v379[0] == v378))
      {
        v291 = v312;
        v292 = v301;
        (*(v312 + 104))(v301, *MEMORY[0x277CE3D18], v41);
        (*(v291 + 56))(v292, 0, 5, v41);
        v293 = OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingOptions;
        swift_beginAccess();
        v294 = *&v282[v293];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v282[v293] = v294;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v294 = sub_224AD946C(0, v294[2] + 1, 1, v294);
          *&v282[v293] = v294;
        }

        v296 = v348;
        v298 = v294[2];
        v297 = v294[3];
        if (v298 >= v297 >> 1)
        {
          v294 = sub_224AD946C((v297 > 1), v298 + 1, 1, v294);
        }

        v294[2] = v298 + 1;
        sub_224CD666C(v292, v294 + ((*(v333 + 80) + 32) & ~*(v333 + 80)) + *(v333 + 72) * v298, type metadata accessor for ExtensionTask.SchedulingOption);
        *&v282[v293] = v294;
        swift_endAccess();
        (v377)(v296, v329);
      }

      else
      {
        v290(v289, v288);
      }
    }

    else
    {
      (v377)(v348, v329);
    }

    sub_224A424D8(v350, type metadata accessor for _TaskInfo);
    return v282;
  }

  result = (v377)(v348, v329);
  __break(1u);
  return result;
}

uint64_t sub_224CD2FA0()
{
  v1 = sub_224DAE8B8();
  v2 = *(v1 - 8);
  v4 = MEMORY[0x28223BE20](v1, v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v25 - v8;
  v10 = type metadata accessor for ExtensionTask.SchedulingConfiguration(0);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_224A41594(v0 + OBJC_IVAR____TtC10ChronoCore13ExtensionTask_schedulingConfiguration, v13, type metadata accessor for ExtensionTask.SchedulingConfiguration);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D6F33D0, qword_224DB3710);
  v15 = (*(*(v14 - 8) + 48))(v13, 1, v14);
  sub_224A424D8(v13, type metadata accessor for ExtensionTask.SchedulingConfiguration);
  v16 = (v2 + 104);
  v17 = (v2 + 8);
  if (v15 == 1)
  {
    swift_beginAccess();

    sub_224CF7F14(v18, v9);

    (*v16)(v6, *MEMORY[0x277CE3D30], v1);
    sub_224CD6594(&qword_281350C40, MEMORY[0x277CE3D38], MEMORY[0x277CE3D40]);
    v19 = sub_224DAEDB8();
    v20 = *v17;
    (*v17)(v6, v1);
    v20(v9, v1);
    if (v19)
    {
      return 3;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    swift_beginAccess();

    sub_224CF7F14(v22, v9);

    (*v16)(v6, *MEMORY[0x277CE3D30], v1);
    sub_224CD6594(&qword_281350C40, MEMORY[0x277CE3D38], MEMORY[0x277CE3D40]);
    v23 = sub_224DAEDB8();
    v24 = *v17;
    (*v17)(v6, v1);
    v24(v9, v1);
    return v23 & 1;
  }
}