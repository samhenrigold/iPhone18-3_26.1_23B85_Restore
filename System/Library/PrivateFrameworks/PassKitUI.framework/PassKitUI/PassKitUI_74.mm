uint64_t sub_1BD7CAAD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v88 = a2;
  v6 = *(a1 + 56);
  v99 = *(a1 + 32);
  v5 = v99;
  v100 = v6;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v8 = sub_1BE04EBD4();
  v81 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v79 = v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v80 = v75 - v11;
  sub_1BE051994();
  swift_getTupleTypeMetadata3();
  v12 = sub_1BE051E34();
  WitnessTable = swift_getWitnessTable();
  v75[1] = v12;
  v75[0] = WitnessTable;
  v14 = sub_1BE051854();
  v78 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v77 = v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v76 = v75 - v17;
  v18 = sub_1BE04F3D4();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1BE04F9B4();
  v84 = *(v22 - 8);
  v85 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v83 = v75 - v23;
  v87 = OpaqueTypeMetadata2;
  v82 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v89 = v75 - v25;
  v90 = v5;
  v86 = v6;
  sub_1BE050714();
  v26 = v3 + *(a1 + 84);
  v27 = *v26;
  if (*(v26 + 8) == 1)
  {
    if (v27)
    {
      goto LABEL_9;
    }
  }

  else
  {
    sub_1BE048964();
    sub_1BE052C44();
    v28 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();
    sub_1BD0D4604(v27, 0, v29, v30, v31, v32, v33, v34);
    (*(v19 + 8))(v21, v18);
    if (v99)
    {
      goto LABEL_9;
    }
  }

  v35 = v3 + *(a1 + 88);
  v36 = *v35;
  if (*(v35 + 8) == 1)
  {
    if ((v36 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    sub_1BE048964();
    sub_1BE052C44();
    v37 = sub_1BE050174();
    sub_1BE04CF84();

    sub_1BE04F3C4();
    swift_getAtKeyPath();
    sub_1BD0D4604(v36, 0, v38, v39, v40, v41, v42, v43);
    (*(v19 + 8))(v21, v18);
    if (v99 != 1)
    {
      goto LABEL_10;
    }
  }

LABEL_9:
  if ((sub_1BE051C54() & 1) == 0)
  {
    v61 = sub_1BE04F7C4();
    MEMORY[0x1EEE9AC00](v61);
    *&v75[-8] = *(a1 + 16);
    v62 = v89;
    v63 = v90;
    v75[-6] = v90;
    *&v75[-5] = *(a1 + 40);
    v45 = v86;
    v75[-3] = v86;
    v75[-2] = v62;
    v64 = v77;
    sub_1BE051844();
    swift_getWitnessTable();
    v65 = v76;
    sub_1BD147308();
    v66 = *(v78 + 8);
    v66(v64, v14);
    sub_1BD147308();
    v99 = v63;
    v100 = v45;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v68 = sub_1BD0FEBBC();
    v91 = OpaqueTypeConformance2;
    v92 = v68;
    swift_getWitnessTable();
    v60 = v83;
    sub_1BD13A700(v64, v14);
    v66(v64, v14);
    v66(v65, v14);
    v47 = v87;
    goto LABEL_12;
  }

LABEL_10:
  v44 = sub_1BE051214();
  v45 = v86;
  v99 = v90;
  v100 = v86;
  v46 = swift_getOpaqueTypeConformance2();
  v47 = v87;
  v48 = sub_1BD3805D0(v87);
  v49 = v79;
  sub_1BD5A3420(0, v44, v47, 1.0, v48);
  v44, v50, v51, v52, v53, v54, v55, v56;
  v57 = sub_1BD0FEBBC();
  v97 = v46;
  v98 = v57;
  swift_getWitnessTable();
  v58 = v80;
  sub_1BD147308();
  v59 = *(v81 + 8);
  v59(v49, v8);
  sub_1BD147308();
  swift_getWitnessTable();
  v60 = v83;
  sub_1BD13A7F8(v49, v14, v8);
  v59(v49, v8);
  v59(v58, v8);
LABEL_12:
  v69 = swift_getWitnessTable();
  v99 = v90;
  v100 = v45;
  v70 = swift_getOpaqueTypeConformance2();
  v71 = sub_1BD0FEBBC();
  v95 = v70;
  v96 = v71;
  v72 = swift_getWitnessTable();
  v93 = v69;
  v94 = v72;
  v73 = v85;
  swift_getWitnessTable();
  sub_1BD147308();
  (*(v84 + 8))(v60, v73);
  return (*(v82 + 8))(v89, v47);
}

uint64_t sub_1BD7CB3CC@<X0>(uint64_t a1@<X0>, char *a2@<X3>, char *a3@<X6>, uint64_t a4@<X8>)
{
  v34 = a1;
  v35 = a4;
  v42 = a2;
  v43 = a3;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v37 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v36 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31 - v9;
  v11 = sub_1BE051994();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v32 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v31 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v31 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v31 - v21;
  sub_1BE051984();
  v42 = a2;
  v43 = a3;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = v10;
  sub_1BD147308();
  sub_1BE051984();
  v25 = *(v12 + 16);
  v33 = v16;
  v25(v16, v22, v11);
  v42 = v16;
  v26 = v36;
  (*(v37 + 16))(v36, v10, OpaqueTypeMetadata2);
  v43 = v26;
  v27 = v32;
  v25(v32, v19, v11);
  v44 = v27;
  v41[0] = v11;
  v41[1] = OpaqueTypeMetadata2;
  v41[2] = v11;
  v38 = sub_1BD7CB800(&qword_1EBD39100, MEMORY[0x1E697D6D0], MEMORY[0x1E697D6C8]);
  v39 = OpaqueTypeConformance2;
  v40 = v38;
  sub_1BD13A4C4(&v42, 3uLL, v41);
  v28 = *(v12 + 8);
  v28(v19, v11);
  v29 = *(v37 + 8);
  v29(v24, OpaqueTypeMetadata2);
  v28(v22, v11);
  v28(v27, v11);
  v29(v36, OpaqueTypeMetadata2);
  return (v28)(v33, v11);
}

uint64_t sub_1BD7CB764(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD4F238, &unk_1BE0ED208);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BD7CB800(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BD7CB84C()
{
  result = qword_1EBD53DD0;
  if (!qword_1EBD53DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53DD0);
  }

  return result;
}

unint64_t sub_1BD7CB8A4()
{
  result = qword_1EBD53DD8;
  if (!qword_1EBD53DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53DD8);
  }

  return result;
}

uint64_t sub_1BD7CB964()
{
  v0 = sub_1BE04B0F4();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1BE04A874();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE0523D4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1BE04A884();
  __swift_allocate_value_buffer(v6, qword_1EBDAB6D0);
  __swift_project_value_buffer(v6, qword_1EBDAB6D0);
  sub_1BE052354();
  if (qword_1EBD36CF8 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EBDAB400);
  (*(v2 + 16))(v4, v7, v1);
  sub_1BE04B0A4();
  return sub_1BE04A894();
}

uint64_t sub_1BD7CBB78(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  v1[3] = swift_task_alloc();
  v2 = sub_1BE04AA64();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = sub_1BE04A3B4();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v4 = sub_1BE04CFC4();
  v1[10] = v4;
  v1[11] = *(v4 - 8);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v5 = sub_1BE04CFE4();
  v1[14] = v5;
  v1[15] = *(v5 - 8);
  v1[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BD7CBD90, 0, 0);
}

id sub_1BD7CBD90(uint64_t a1)
{
  sub_1BE04B684();
  sub_1BE04CFB4();
  v2 = sub_1BE04CFD4();
  v3 = sub_1BE052E34();
  if (sub_1BE053494())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_1BE04CFA4();
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v2, v3, v5, "perform:PeerPaymentTransferToBankIntent", "", v4, 2u);
    MEMORY[0x1BFB45F20](v4, -1, -1);
  }

  v7 = v1[15];
  v6 = v1[16];
  v9 = v1[13];
  v8 = v1[14];
  v11 = v1[11];
  v10 = v1[12];
  v12 = v1[10];

  (*(v11 + 16))(v10, v9, v12);
  sub_1BE04D024();
  swift_allocObject();
  v1[17] = sub_1BE04D014();
  (*(v11 + 8))(v9, v12);
  (*(v7 + 8))(v6, v8);
  result = [objc_opt_self() sharedInstance];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v14 = result;
  v15 = [result account];

  if (!v15)
  {
    sub_1BD135218();
    swift_allocError();
    *v19 = 0;
    swift_willThrow();
    goto LABEL_11;
  }

  v16 = [v15 supportsTransferToBank];
  v17 = [v15 supportsInstantWithdrawal];
  if ((v16 & 1) == 0 && (v17 & 1) == 0)
  {
    sub_1BD135218();
    swift_allocError();
    *v18 = 6;
    swift_willThrow();

LABEL_11:
    v37 = v1[17];
    sub_1BD7CC4FC(v37);
    v37, v38, v39, v40, v41, v42, v43, v44;

    v45 = v1[1];

    return v45();
  }

  v20 = v1[4];
  v21 = v1[5];
  v22 = v1[3];

  sub_1BE04A3A4();
  sub_1BE052434();
  sub_1BE04A394();
  v23 = sub_1BE052434();
  MEMORY[0x1BFB37400](v23);
  v24 = sub_1BE052434();
  v26 = v25;
  MEMORY[0x1BFB3F610](v24);
  v26, v27, v28, v29, v30, v31, v32, v33;
  MEMORY[0x1BFB37410](47, 0xE100000000000000);
  sub_1BE04A364();
  if ((*(v21 + 48))(v22, 1, v20) == 1)
  {
    v35 = v1[8];
    v34 = v1[9];
    v36 = v1[7];
    sub_1BD226BBC(v1[3]);
    sub_1BE0484F4();
    sub_1BD1351C0();
    swift_allocError();
    sub_1BE0484E4();
    swift_willThrow();
    (*(v35 + 8))(v34, v36);
    goto LABEL_11;
  }

  (*(v1[5] + 32))(v1[6], v1[3], v1[4]);
  v46 = swift_task_alloc();
  v1[18] = v46;
  *v46 = v1;
  v46[1] = sub_1BD7CC210;
  v47 = v1[6];

  return sub_1BD0D7A54(v47);
}

uint64_t sub_1BD7CC210(char a1)
{
  *(*v1 + 152) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1BD7CC310, 0, 0);
}

uint64_t sub_1BD7CC310(uint64_t a1)
{
  if (*(v1 + 152) == 1)
  {
    v2 = *(v1 + 136);
    v4 = *(v1 + 64);
    v3 = *(v1 + 72);
    v6 = *(v1 + 48);
    v5 = *(v1 + 56);
    v8 = *(v1 + 32);
    v7 = *(v1 + 40);
    sub_1BE048774();
    (*(v7 + 8))(v6, v8);
    (*(v4 + 8))(v3, v5);
    sub_1BD7CC4FC(v2);
    v2, v9, v10, v11, v12, v13, v14, v15;
  }

  else
  {
    v18 = *(v1 + 64);
    v17 = *(v1 + 72);
    v20 = *(v1 + 48);
    v19 = *(v1 + 56);
    v21 = *(v1 + 32);
    v22 = *(v1 + 40);
    sub_1BE0484F4();
    sub_1BD1351C0();
    swift_allocError();
    sub_1BE0484E4();
    swift_willThrow();
    (*(v22 + 8))(v20, v21);
    (*(v18 + 8))(v17, v19);
    v23 = *(v1 + 136);
    sub_1BD7CC4FC(v23);
    v23, v24, v25, v26, v27, v28, v29, v30;
  }

  v16 = *(v1 + 8);

  return v16();
}

uint64_t sub_1BD7CC4FC(void *a1)
{
  v2 = sub_1BE04CFF4();
  v27 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v25[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v28 = sub_1BE04CFC4();
  v5 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v7 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1BE04CFE4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1BE04B684();
  v12 = sub_1BE04CFD4();
  sub_1BE04D004();
  v26 = sub_1BE052E24();
  if (sub_1BE053494())
  {
    sub_1BE048964();
    sub_1BE04D034();
    a1, v13, v14, v15, v16, v17, v18, v19;
    v20 = v27;
    if ((*(v27 + 88))(v4, v2) == *MEMORY[0x1E69E93E8])
    {
      v21 = "[Error] Interval already ended";
    }

    else
    {
      (*(v20 + 8))(v4, v2);
      v21 = "";
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = sub_1BE04CFA4();
    _os_signpost_emit_with_name_impl(&dword_1BD026000, v12, v26, v23, "perform:PeerPaymentTransferToBankIntent", v21, v22, 2u);
    MEMORY[0x1BFB45F20](v22, -1, -1);
  }

  (*(v5 + 8))(v7, v28);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1BD7CC7E8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBD36F88 != -1)
  {
    swift_once();
  }

  v2 = sub_1BE04A884();
  v3 = __swift_project_value_buffer(v2, qword_1EBDAB6D0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1BD7CC890(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1BD0F985C;

  return sub_1BD7CBB78(a1);
}

uint64_t sub_1BD7CC928(uint64_t a1)
{
  v2 = sub_1BD15D1A0();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

unint64_t sub_1BD7CC9A8()
{
  result = qword_1EBD53DF0;
  if (!qword_1EBD53DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53DF0);
  }

  return result;
}

uint64_t sub_1BD7CC9FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  v8 = *(a1 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (!v8)
  {
    return v9;
  }

  v40 = MEMORY[0x1E69E7CC0];
  v39 = *(a1 + 16);
  sub_1BD03B254(0, v8, 0, a4, a5, a6, a7, a8);
  v9 = v40;
  v11 = a1 + 56;
  result = sub_1BE053674();
  v18 = v39;
  v19 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v21 = result >> 6;
    v22 = 1 << result;
    if ((*(v11 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_27;
    }

    if (*(*(a1 + 48) + result))
    {
      if (*(*(a1 + 48) + result) == 1)
      {
        v23 = 0x61436172656D6163;
        v24 = 0xED00006572757470;
        goto LABEL_14;
      }

      v23 = 0x6F72506F54706174;
      v25 = 0x6E6F69736976;
    }

    else
    {
      v23 = 0x6472614365707974;
      v25 = 0x7265626D754ELL;
    }

    v24 = v25 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
LABEL_14:
    v26 = *(a1 + 36);
    v28 = *(v40 + 16);
    v27 = *(v40 + 24);
    if (v28 >= v27 >> 1)
    {
      v37 = *(a1 + 36);
      v38 = result;
      sub_1BD03B254((v27 > 1), v28 + 1, 1, v13, v14, v15, v16, v17);
      v18 = v39;
      v26 = v37;
      result = v38;
    }

    *(v40 + 16) = v28 + 1;
    v29 = v40 + 16 * v28;
    *(v29 + 32) = v23;
    *(v29 + 40) = v24;
    v20 = 1 << *(a1 + 32);
    if (result >= v20)
    {
      goto LABEL_28;
    }

    v11 = a1 + 56;
    v30 = *(a1 + 56 + 8 * v21);
    if ((v30 & v22) == 0)
    {
      goto LABEL_29;
    }

    if (v26 != *(a1 + 36))
    {
      goto LABEL_30;
    }

    v31 = v30 & (-2 << (result & 0x3F));
    if (v31)
    {
      v20 = __clz(__rbit64(v31)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v32 = v21 << 6;
      v33 = v21 + 1;
      v34 = (a1 + 64 + 8 * v21);
      while (v33 < (v20 + 63) >> 6)
      {
        v36 = *v34++;
        v35 = v36;
        v32 += 64;
        ++v33;
        if (v36)
        {
          sub_1BD20DE9C(result, v26, 0, v13, v14, v15, v16, v17);
          v18 = v39;
          v20 = __clz(__rbit64(v35)) + v32;
          goto LABEL_4;
        }
      }

      sub_1BD20DE9C(result, v26, 0, v13, v14, v15, v16, v17);
      v18 = v39;
    }

LABEL_4:
    ++v19;
    result = v20;
    if (v19 == v18)
    {
      return v9;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

unint64_t sub_1BD7CCC90@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1BD7CD62C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1BD7CCCC0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE007265626D754ELL;
  v4 = 0xED00006572757470;
  v5 = 0x61436172656D6163;
  if (v2 != 1)
  {
    v5 = 0x6F72506F54706174;
    v4 = 0xEE006E6F69736976;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6472614365707974;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1BD7CCD44(_BYTE *a1, const char *a2, uint64_t a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v8 = *a1;
  v9 = 0x61436172656D6163;
  v10 = 0xED00006572757470;
  if (v8 != 1)
  {
    v9 = 0x6F72506F54706174;
    v10 = 0xEE006E6F69736976;
  }

  if (*a1)
  {
    v11 = v9;
  }

  else
  {
    v11 = 0x6472614365707974;
  }

  if (v8)
  {
    v12 = v10;
  }

  else
  {
    v12 = 0xEE007265626D754ELL;
  }

  v13 = 0x61436172656D6163;
  v14 = 0xED00006572757470;
  if (*a2 != 1)
  {
    v13 = 0x6F72506F54706174;
    v14 = 0xEE006E6F69736976;
  }

  if (*a2)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0x6472614365707974;
  }

  if (*a2)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0xEE007265626D754ELL;
  }

  if (v11 == v15 && v12 == v16)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_1BE053B84();
  }

  v12, a2, v15, a4, a5, a6, a7, a8;
  v16, v18, v19, v20, v21, v22, v23, v24;
  return v17 & 1;
}

uint64_t sub_1BD7CCE80()
{
  v1 = *v0;
  sub_1BE053D04();
  v2 = 0xED00006572757470;
  if (v1 != 1)
  {
    v2 = 0xEE006E6F69736976;
  }

  if (v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0xEE007265626D754ELL;
  }

  sub_1BE052524();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return sub_1BE053D64();
}

void sub_1BD7CCF48(uint64_t a1)
{
  v2 = 0xED00006572757470;
  if (*v1 != 1)
  {
    v2 = 0xEE006E6F69736976;
  }

  if (*v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0xEE007265626D754ELL;
  }

  sub_1BE052524();

  v3, v4, v5, v6, v7, v8, v9, v10;
}

uint64_t sub_1BD7CCFFC(uint64_t a1)
{
  v2 = *v1;
  sub_1BE053D04();
  v3 = 0xED00006572757470;
  if (v2 != 1)
  {
    v3 = 0xEE006E6F69736976;
  }

  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0xEE007265626D754ELL;
  }

  sub_1BE052524();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return sub_1BE053D64();
}

void sub_1BD7CD0C0()
{
  v1 = v0;
  v52 = *MEMORY[0x1E69E9840];
  v2 = sub_1BE04B944();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v51[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((*v0 & 1) == 0)
  {
    *v0 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C9F8, &qword_1BE0BFC30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE0B69E0;
    *(inited + 32) = 0;
    sub_1BE04BB94();
    v7 = sub_1BE04B8E4();
    v8 = [v7 context];

    if (!v8)
    {
      __break(1u);
      return;
    }

    v9 = [v8 configuration];

    v10 = [sub_1BE04B934() deviceRegion];
    swift_unknownObjectRelease();
    if (!v9)
    {

LABEL_22:
      v36 = sub_1BD536F64(inited);

      inited, v37, v38, v39, v40, v41, v42, v43;
      (*(v3 + 8))(v5, v2);
      v1[1], v44, v45, v46, v47, v48, v49, v50;
      v1[1] = v36;
      return;
    }

    if ([v9 tapToProvisionEnabledForRegion_])
    {
      inited = sub_1BD1D74AC(1, 2, 1, inited, v11, v12, v13, v14);
      *(inited + 16) = 2;
      *(inited + 33) = 2;
      if (([v9 tapToProvisionFirstProvisioningEnabledForRegion_] & 1) != 0 || PKEnableTapToProvision())
      {
        *(v1 + 32) = 2;
      }
    }

    v15 = [v9 cameraProvisioningEnabledForRegion_];
    v16 = v9;
    v17 = [v16 cameraFirstProvisioningEnabledForRegion_];

    if (v17)
    {
      if (*(v1 + 32))
      {
        if (*(v1 + 32) == 1)
        {
          v25 = 0xED00006572757470;
        }

        else
        {
          v25 = 0xEE006E6F69736976;
        }

        v26 = sub_1BE053B84();
        v25, v27, v28, v29, v30, v31, v32, v33;
        if ((v26 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      else
      {
        0xEE007265626D754ELL, v18, v19, v20, v21, v22, v23, v24;
      }

      *(v1 + 32) = 1;
    }

LABEL_18:
    if (v15)
    {
      v35 = *(inited + 16);
      v34 = *(inited + 24);
      if (v35 >= v34 >> 1)
      {
        inited = sub_1BD1D74AC((v34 > 1), v35 + 1, 1, inited, v21, v22, v23, v24);
      }

      *(inited + 16) = v35 + 1;
      *(inited + v35 + 32) = 1;
    }

    goto LABEL_22;
  }
}

uint64_t sub_1BD7CD458()
{
  v0 = MEMORY[0x1E69E7CC0];
  v1 = sub_1BD536F64(MEMORY[0x1E69E7CC0]);
  v2 = sub_1BD536F64(v0);
  result = sub_1BD536F64(v0);
  byte_1EBDAB6E8 = 0;
  qword_1EBDAB6F0 = v1;
  unk_1EBDAB6F8 = v2;
  qword_1EBDAB700 = result;
  byte_1EBDAB708 = 0;
  return result;
}

uint64_t sub_1BD7CD4BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = sub_1BD7CC9FC(a1, a2, a3, a4, a5, a6, a7, a8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD45AA0, &qword_1BE0C1E30);
  sub_1BD03B274();
  v10 = sub_1BE0522E4();
  v12 = v11;
  v9, v11, v13, v14, v15, v16, v17, v18;
  v26 = sub_1BD7CC9FC(a2, v19, v20, v21, v22, v23, v24, v25);
  v27 = sub_1BE0522E4();
  v29 = v28;
  v26, v28, v30, v31, v32, v33, v34, v35;
  sub_1BE053834();
  MEMORY[0x1BFB3F610](0xD000000000000028, 0x80000001BE13A570);
  MEMORY[0x1BFB3F610](v10, v12);
  v12, v36, v37, v38, v39, v40, v41, v42;
  MEMORY[0x1BFB3F610](0x3A6E656573202C5DLL, 0xEA00000000005B20);
  MEMORY[0x1BFB3F610](v27, v29);
  v29, v43, v44, v45, v46, v47, v48, v49;
  MEMORY[0x1BFB3F610](10589, 0xE200000000000000);
  return 0;
}

unint64_t sub_1BD7CD62C(uint64_t a1, void *a2)
{
  v3 = sub_1BE053A44();
  a2, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

id sub_1BD7CD678(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5, uint64_t a6, uint64_t a7)
{
  v35 = a2;
  v38 = a6;
  v39 = a7;
  v37 = a5;
  v36 = a4;
  v9 = sub_1BE04AF64();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v10 + 16))(v12, a3, v9);
  v14 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v15 = v14 + v11;
  v16 = (v14 + v11) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 23) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 2) = v13;
  *(v18 + 3) = a1;
  *(v18 + 4) = v35;
  (*(v10 + 32))(&v18[v14], v12, v9);
  v18[v15] = v36;
  v19 = &v18[v16];
  v21 = v37;
  v20 = v38;
  *(v19 + 1) = v37;
  v22 = &v18[v17];
  v23 = v39;
  *v22 = v20;
  v22[1] = v23;
  sub_1BE048964();
  sub_1BE048C84();
  v24 = v21;
  sub_1BE048964();
  v25 = v34;
  sub_1BE052E74();
  v13, v26, v27, v28, v29, v30, v31, v32;
  return [v25 setNeedsUpdateConfiguration];
}

void sub_1BD7CD864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v41 = MEMORY[0x1E69E7CC0];
    v13 = *(a4 + 16);
    if (v13)
    {
      v14 = (a4 + 40);
      v15 = MEMORY[0x1E69E7CC0];
      do
      {
        v16 = *v14;
        sub_1BE048C84();
        v17 = sub_1BE052404();
        v16, v18, v19, v20, v21, v22, v23, v24;
        v25 = PKPeerPaymentRecurringPaymentFrequencyFromString();

        if (v25)
        {
          Strong = swift_isUniquelyReferenced_nonNull_native();
          if ((Strong & 1) == 0)
          {
            Strong = sub_1BD1D9898(0, *(v15 + 16) + 1, 1, v15, v26, v27, v28, v29);
            v15 = Strong;
          }

          v31 = *(v15 + 16);
          v30 = *(v15 + 24);
          if (v31 >= v30 >> 1)
          {
            Strong = sub_1BD1D9898((v30 > 1), v31 + 1, 1, v15, v26, v27, v28, v29);
            v15 = Strong;
          }

          *(v15 + 16) = v31 + 1;
          *(v15 + 8 * v31 + 32) = v25;
          v41 = v15;
        }

        v14 += 2;
        --v13;
      }

      while (v13);
    }

    MEMORY[0x1EEE9AC00](Strong);
    v40[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53DF8, &qword_1BE0F9528);
    v40[4] = sub_1BD7CE4A4();
    __swift_allocate_boxed_opaque_existential_1(v40);
    type metadata accessor for FrequencySelectionRow(0);
    sub_1BD7CE508(&qword_1EBD53E08, type metadata accessor for FrequencySelectionRow, &unk_1BE0C0FC0);
    v32 = v12;
    sub_1BE04FCE4();
    MEMORY[0x1BFB3FEF0](v40);

    v41, v33, v34, v35, v36, v37, v38, v39;
  }
}

uint64_t sub_1BD7CDAD0@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X2>, char a4@<W3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v12 = *a1;
  type metadata accessor for FrequencySelectionModel(0);
  v13 = swift_allocObject();
  v14 = (v13 + OBJC_IVAR____TtC9PassKitUI23FrequencySelectionModel_onFrequencyChange);
  *v14 = 0;
  v14[1] = 0;
  if (*(v12 + 16))
  {
    *(v13 + OBJC_IVAR____TtC9PassKitUI23FrequencySelectionModel_options) = v12;
    sub_1BE048C84();
  }

  else
  {
    *(v13 + OBJC_IVAR____TtC9PassKitUI23FrequencySelectionModel_options) = &unk_1F3B8EED0;
  }

  swift_beginAccess();
  sub_1BE04D874();
  swift_endAccess();
  v15 = type metadata accessor for FrequencySelectionRow(0);
  v16 = v15[5];
  v17 = sub_1BE04AF64();
  v18 = *(v17 - 8);
  (*(v18 + 16))(&a8[v16], a3, v17);
  (*(v18 + 56))(&a8[v16], 0, 1, v17);
  sub_1BD7CE508(&qword_1EBD3D2B0, type metadata accessor for FrequencySelectionModel, &unk_1BE0E9FF8);
  sub_1BE048964();
  v19 = a5;
  result = sub_1BE04E954();
  *a8 = result;
  *(a8 + 1) = v21;
  a8[v15[6]] = a4 & 1;
  *&a8[v15[7]] = a5;
  v22 = &a8[v15[8]];
  *v22 = a6;
  *(v22 + 1) = a7;
  return result;
}

id PKFrequencySelectionCollectionViewCell.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id PKFrequencySelectionCollectionViewCell.init(frame:)(double a1, double a2, double a3, double a4)
{
  v10.receiver = v4;
  v10.super_class = type metadata accessor for PKFrequencySelectionCollectionViewCell();
  return objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
}

id PKFrequencySelectionCollectionViewCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id PKFrequencySelectionCollectionViewCell.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for PKFrequencySelectionCollectionViewCell();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id PKFrequencySelectionCollectionViewCell.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PKFrequencySelectionCollectionViewCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BD7CE270(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = sub_1BE052404();
  (*(v3 + 16))(v3, v4);
}

uint64_t objectdestroy_2Tm_3()
{
  v1 = sub_1BE04AF64();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (v3 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  *(v0 + 16), v5, v6, v7, v8, v9, v10, v11;
  *(v0 + 24), v12, v13, v14, v15, v16, v17, v18;
  (*(v2 + 8))(v0 + v3, v1);

  *(v0 + ((v4 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), v19, v20, v21, v22, v23, v24, v25;

  return swift_deallocObject();
}

void sub_1BD7CE3C4(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_1BE04AF64() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  sub_1BD7CD864(a1, a2, v2[2], v2[3], v2[4], v2 + v6, *(v2 + v7), *(v2 + (v7 & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + (((v7 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + (((v7 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

unint64_t sub_1BD7CE4A4()
{
  result = qword_1EBD53E00;
  if (!qword_1EBD53E00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53DF8, &qword_1BE0F9528);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53E00);
  }

  return result;
}

uint64_t sub_1BD7CE508(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1BD7CE580(__int128 *a1@<X0>, void *a2@<X8>)
{
  v58 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53E38, &qword_1BE10B970);
  v54 = *(v3 - 8);
  v55 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v53 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF70, &qword_1BE0BA000);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v53 - v7;
  v9 = sub_1BE04AA64();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v53 - v14;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53E28, &unk_1BE0F95E0);
  MEMORY[0x1EEE9AC00](v57);
  v17 = &v53 - v16;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53E50, &qword_1BE0F9618);
  MEMORY[0x1EEE9AC00](v56);
  v19 = (&v53 - v18);
  v61 = a1[1];
  v62 = *(a1 + 4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53E48, &qword_1BE0F9610);
  sub_1BE0516A4();
  if ((v60 & 1) == 0 && v59 == 2)
  {
    v61 = *a1;
    v20 = *(&v61 + 1);
    sub_1BD0DE19C(&v61, &v59, &qword_1EBD3AE38, &qword_1BE0BBF38);
    type metadata accessor for AccountModel(0);
    sub_1BD7D0130(&qword_1EBD3AE50, type metadata accessor for AccountModel, &unk_1BE0BFF20);
    v21 = v20;
    v22 = sub_1BE04E954();
    v24 = v23;
    v25 = sub_1BE04E954();
    v27 = v26;
    v28 = sub_1BE04E954();
    v30 = v29;
    v31 = v24;
    v32 = v27;
    v33 = v31;
    v34 = v30;

    *v19 = v22;
    v19[1] = v33;
    v19[2] = v25;
    v19[3] = v32;
    v19[4] = v28;
    v19[5] = v34;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AFC0, &qword_1BE0BC080);
    sub_1BD0DE4F4(&qword_1EBD3AFC8, &qword_1EBD3AFC0, &qword_1BE0BC080, MEMORY[0x1E6981F48]);
    sub_1BD7CF168();
    sub_1BE04F9A4();

    return;
  }

  sub_1BE052434();
  v36 = v35;
  sub_1BE04AA54();
  v36, v37, v38, v39, v40, v41, v42, v43;
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1BD0DE53C(v8, &unk_1EBD3CF70, &qword_1BE0BA000);
    v44 = 1;
    v46 = v54;
    v45 = v55;
  }

  else
  {
    (*(v10 + 32))(v15, v8, v9);
    v47 = sub_1BE052404();
    v48 = PDDeviceSpecificLocalizedStringKeyForKey();

    v49 = PKLocalizedString(v48);
    if (!v49)
    {
      __break(1u);
      return;
    }

    v50 = sub_1BE052434();
    v52 = v51;

    *&v61 = v50;
    *(&v61 + 1) = v52;
    (*(v10 + 16))(v12, v15, v9);
    sub_1BD0DDEBC();
    sub_1BE0504C4();
    (*(v10 + 8))(v15, v9);
    v46 = v54;
    v45 = v55;
    (*(v54 + 32))(v17, v5, v55);
    v44 = 0;
  }

  (*(v46 + 56))(v17, v44, 1, v45);
  sub_1BD0DE19C(v17, v19, &qword_1EBD53E28, &unk_1BE0F95E0);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3AFC0, &qword_1BE0BC080);
  sub_1BD0DE4F4(&qword_1EBD3AFC8, &qword_1EBD3AFC0, &qword_1BE0BC080, MEMORY[0x1E6981F48]);
  sub_1BD7CF168();
  sub_1BE04F9A4();
  sub_1BD0DE53C(v17, &qword_1EBD53E28, &unk_1BE0F95E0);
}

uint64_t sub_1BD7CEBD0(uint64_t a1)
{
  v1[22] = a1;
  sub_1BE0528A4();
  v1[23] = sub_1BE052894();
  v3 = sub_1BE052844();
  v1[24] = v3;
  v1[25] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1BD7CEC68, v3, v2);
}

uint64_t sub_1BD7CEC68()
{
  v1 = [objc_opt_self() sharedInstance];
  v0[26] = v1;
  if (v1)
  {
    v2 = v1;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1BD7CEDAC;
    v3 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C198, &qword_1BE0BE030);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1BD1BD93C;
    v0[13] = &block_descriptor_182;
    v0[14] = v3;
    [v2 authorizationStatusWithCompletion_];
    v1 = v0 + 2;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_1BD7CEDAC()
{
  v1 = *(*v0 + 200);
  v2 = *(*v0 + 192);

  return MEMORY[0x1EEE6DFA0](sub_1BD7CEEB4, v2, v1);
}

uint64_t sub_1BD7CEEB4(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 208);
  v10 = *(v8 + 176);
  *(v8 + 184), a2, a3, a4, a5, a6, a7, a8;
  v11 = *(v8 + 144);
  v12 = *(v10 + 32);
  *(v8 + 80) = *(v10 + 16);
  *(v8 + 96) = v12;
  *(v8 + 160) = v11;
  *(v8 + 168) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53E48, &qword_1BE0F9610);
  sub_1BE0516B4();

  v13 = *(v8 + 8);

  return v13();
}

uint64_t sub_1BD7CEF68@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v9 = *v1;
  v10 = v3;
  v11 = *(v1 + 4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53E10, &unk_1BE0F95D0);
  sub_1BD7CF0B0();
  sub_1BE0504E4();
  v12 = v9;
  v13 = v10;
  v14 = v11;
  v4 = swift_allocObject();
  v5 = v10;
  *(v4 + 16) = v9;
  *(v4 + 32) = v5;
  *(v4 + 48) = v11;
  v6 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53E40, &unk_1BE0F9600) + 36));
  sub_1BE04E7B4();
  sub_1BD0DE19C(&v12, v8, &qword_1EBD3AE38, &qword_1BE0BBF38);
  sub_1BD0DE19C(&v13, v8, &qword_1EBD53E48, &qword_1BE0F9610);
  result = sub_1BE0528B4();
  *v6 = &unk_1BE0F95F8;
  v6[1] = v4;
  return result;
}

unint64_t sub_1BD7CF0B0()
{
  result = qword_1EBD53E18;
  if (!qword_1EBD53E18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53E10, &unk_1BE0F95D0);
    sub_1BD0DE4F4(&qword_1EBD3AFC8, &qword_1EBD3AFC0, &qword_1BE0BC080, MEMORY[0x1E6981F48]);
    sub_1BD7CF168();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53E18);
  }

  return result;
}

unint64_t sub_1BD7CF168()
{
  result = qword_1EBD53E20;
  if (!qword_1EBD53E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53E28, &unk_1BE0F95E0);
    sub_1BD0DE4F4(&qword_1EBD53E30, &qword_1EBD53E38, &qword_1BE10B970, MEMORY[0x1E697CD10]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53E20);
  }

  return result;
}

uint64_t sub_1BD7CF218()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1BD0F985C;

  return sub_1BD7CEBD0(v0 + 16);
}

void sub_1BD7CF2AC(uint64_t a1, void *a2)
{
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, *MEMORY[0x1E69B80E0], v4, v6);
  v9 = PKPassKitBundle();
  if (v9)
  {
    v10 = v9;
    v11 = sub_1BE04B6F4();
    v13 = v12;

    (*(v5 + 8))(v8, v4);
    KeyPath = swift_getKeyPath();
    v15 = swift_getKeyPath();
    sub_1BE04D8B4(&v67);
    KeyPath, v16, v17, v18, v19, v20, v21, v22;
    v15, v23, v24, v25, v26, v27, v28, v29;
    v30 = v67;
    v31 = [v67 accountIdentifier];

    LOBYTE(v30) = PKHasDisabledAPYUpdateNotificationsForAccountIdentifier();
    LOBYTE(v31) = v30 ^ 1;
    v32 = swift_allocObject();
    v32[2] = a1;
    v32[3] = a2;
    v73 = v31;
    v33 = a2;
    sub_1BE051694();
    v34 = v67;
    v35 = v68;
    v67 = v11;
    v68 = v13;
    v69 = sub_1BD7D0034;
    v70 = v32;
    v71 = v34;
    v72 = v35;
    sub_1BE052434();
    v37 = v36;
    sub_1BD7CFFB0();
    sub_1BE050DE4();
    v32, v38, v39, v40, v41, v42, v43, v44;
    v13, v45, v46, v47, v48, v49, v50, v51;
    v37, v52, v53, v54, v55, v56, v57, v58;
    v35, v59, v60, v61, v62, v63, v64, v65;
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD7CF53C(uint64_t a1, void *a2)
{
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, *MEMORY[0x1E69B80E0], v4, v6);
  v9 = PKPassKitBundle();
  if (v9)
  {
    v10 = v9;
    v11 = sub_1BE04B6F4();
    v13 = v12;

    (*(v5 + 8))(v8, v4);
    KeyPath = swift_getKeyPath();
    v15 = swift_getKeyPath();
    sub_1BE04D8B4(&v67);
    KeyPath, v16, v17, v18, v19, v20, v21, v22;
    v15, v23, v24, v25, v26, v27, v28, v29;
    v30 = v67;
    v31 = [v67 accountIdentifier];

    LOBYTE(v30) = PKHasDisabledInterestPaidNotificationsForAccountIdentifier();
    LOBYTE(v31) = v30 ^ 1;
    v32 = swift_allocObject();
    v32[2] = a1;
    v32[3] = a2;
    v73 = v31;
    v33 = a2;
    sub_1BE051694();
    v34 = v67;
    v35 = v68;
    v67 = v11;
    v68 = v13;
    v69 = sub_1BD7D0004;
    v70 = v32;
    v71 = v34;
    v72 = v35;
    sub_1BE052434();
    v37 = v36;
    sub_1BD7CFFB0();
    sub_1BE050DE4();
    v32, v38, v39, v40, v41, v42, v43, v44;
    v13, v45, v46, v47, v48, v49, v50, v51;
    v37, v52, v53, v54, v55, v56, v57, v58;
    v35, v59, v60, v61, v62, v63, v64, v65;
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD7CF7CC(uint64_t a1, void *a2)
{
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, *MEMORY[0x1E69B80E0], v4, v6);
  v9 = PKPassKitBundle();
  if (v9)
  {
    v10 = v9;
    v11 = sub_1BE04B6F4();
    v13 = v12;

    (*(v5 + 8))(v8, v4);
    KeyPath = swift_getKeyPath();
    v15 = swift_getKeyPath();
    sub_1BE04D8B4(&v67);
    KeyPath, v16, v17, v18, v19, v20, v21, v22;
    v15, v23, v24, v25, v26, v27, v28, v29;
    v30 = v67;
    v31 = [v67 accountIdentifier];

    LOBYTE(v30) = PKHasDisabledTransactionsNotificationsForAccountIdentifier();
    LOBYTE(v31) = v30 ^ 1;
    v32 = swift_allocObject();
    v32[2] = a1;
    v32[3] = a2;
    v73 = v31;
    v33 = a2;
    sub_1BE051694();
    v34 = v67;
    v35 = v68;
    v67 = v11;
    v68 = v13;
    v69 = sub_1BD7CFF80;
    v70 = v32;
    v71 = v34;
    v72 = v35;
    sub_1BE052434();
    v37 = v36;
    sub_1BD7CFFB0();
    sub_1BE050DE4();
    v32, v38, v39, v40, v41, v42, v43, v44;
    v13, v45, v46, v47, v48, v49, v50, v51;
    v37, v52, v53, v54, v55, v56, v57, v58;
    v35, v59, v60, v61, v62, v63, v64, v65;
  }

  else
  {
    __break(1u);
  }
}

void sub_1BD7CFA54(char a1, uint64_t a2, uint64_t a3, void (*a4)(id, BOOL))
{
  KeyPath = swift_getKeyPath();
  v7 = swift_getKeyPath();
  sub_1BE04D8B4(&v24);
  KeyPath, v8, v9, v10, v11, v12, v13, v14;
  v7, v15, v16, v17, v18, v19, v20, v21;
  v22 = v24;
  v23 = [v24 accountIdentifier];

  a4(v23, (a1 & 1) == 0);
}

uint64_t sub_1BD7CFB1C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD40D58, &unk_1BE0F98B0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15[-v3];
  v19 = v0[2];
  v20 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516C4();
  v16 = v0;
  sub_1BE051814();
  v18 = v20;
  sub_1BE0516A4();
  v17 = v19;
  v18 = *v0;
  v5 = swift_allocObject();
  v6 = v0[1];
  v5[1] = *v0;
  v5[2] = v6;
  v5[3] = v0[2];
  sub_1BD206260(&v18, &v19);
  sub_1BE048964();
  sub_1BD0DE19C(&v20, &v19, &qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BD0DE4F4(&qword_1EBD40D78, &qword_1EBD40D58, &unk_1BE0F98B0, MEMORY[0x1E697D6A8]);
  sub_1BE051064();
  v5, v7, v8, v9, v10, v11, v12, v13;
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1BD7CFD6C@<X0>(uint64_t a2@<X8>)
{
  sub_1BD0DDEBC();
  sub_1BE048C84();
  result = sub_1BE0506C4();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

unint64_t sub_1BD7CFE44()
{
  result = qword_1EBD53E58;
  if (!qword_1EBD53E58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53E40, &unk_1BE0F9600);
    sub_1BD0DE4F4(&qword_1EBD53E60, &qword_1EBD53E68, qword_1BE0F96C8, MEMORY[0x1E697CD20]);
    sub_1BD7D0130(&qword_1EBD37148, MEMORY[0x1E697C028], MEMORY[0x1E697C010]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53E58);
  }

  return result;
}

unint64_t sub_1BD7CFFB0()
{
  result = qword_1EBD53E70;
  if (!qword_1EBD53E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53E70);
  }

  return result;
}

unint64_t sub_1BD7D0074()
{
  result = qword_1EBD53E78;
  if (!qword_1EBD53E78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53E80, &qword_1BE0F9858);
    sub_1BD7CFFB0();
    sub_1BD7D0130(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53E78);
  }

  return result;
}

uint64_t sub_1BD7D0130(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BD7D01E0(unsigned __int8 a1)
{
  sub_1BE053D04();
  v2 = 0xEF73736150656C62;
  v3 = 0x80000001BE117FC0;
  v4 = 0x80000001BE117FF0;
  if (a1 != 4)
  {
    v4 = 0x80000001BE118020;
  }

  if (a1 != 3)
  {
    v3 = v4;
  }

  if (a1 != 1)
  {
    v2 = 0x80000001BE117FA0;
  }

  if (!a1)
  {
    v2 = 0x80000001BE117F70;
  }

  if (a1 <= 2u)
  {
    v5 = v2;
  }

  else
  {
    v5 = v3;
  }

  sub_1BE052524();
  v5, v6, v7, v8, v9, v10, v11, v12;
  return sub_1BE053D64();
}

void *sub_1BD7D02FC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B90, &unk_1BE0B89D0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v58 - v3;
  v5 = type metadata accessor for WrappedPass(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BD7D071C(v4);
  if ((*(v6 + 48))(v4, 1, v5) != 1)
  {
    sub_1BD7D5344(v4, v8, type metadata accessor for WrappedPass);
    v18 = sub_1BD4943B0();
    v60 = v18;
    v61 = v19;
    v20 = *&v1[*(type metadata accessor for UnavailablePaymentMethodItem(0) + 28)];
    if (v20)
    {
      v21 = [v20 displayName];
      if (v21)
      {
        v22 = v21;
        v23 = sub_1BE052434();
        v25 = v24;

        v58 = 10272;
        v59 = 0xE200000000000000;
        MEMORY[0x1BFB3F610](v23, v25);
        v25, v26, v27, v28, v29, v30, v31, v32;
        MEMORY[0x1BFB3F610](41, 0xE100000000000000);
        v33 = v59;
        MEMORY[0x1BFB3F610](v58, v59);
        v33, v34, v35, v36, v37, v38, v39, v40;
        v18 = v60;
      }
    }

    sub_1BD7D52E4(v8, type metadata accessor for WrappedPass);
    return v18;
  }

  sub_1BD0DE53C(v4, &unk_1EBD43B90, &unk_1BE0B89D0);
  v16 = *v0;
  if (v16 > 2)
  {
    v41 = 0x80000001BE117FF0;
    if (v16 != 4)
    {
      v41 = 0x80000001BE118020;
    }

    if (v16 == 3)
    {
      v17 = 0x80000001BE117FC0;
    }

    else
    {
      v17 = v41;
    }
  }

  else if (*v0)
  {
    if (v16 != 1)
    {
      0x80000001BE117FA0, v9, v10, v11, v12, v13, v14, v15;
LABEL_19:
      v50 = &v1[*(type metadata accessor for UnavailablePaymentMethodItem(0) + 36)];
      v51 = *v50;
      if (*v50)
      {
        v52 = *(v50 + 1);
        sub_1BD3EFCD8(*v50, v52);
        v18 = sub_1BD41F634(v51);

        return v18;
      }

      goto LABEL_21;
    }

    v17 = 0xEF73736150656C62;
  }

  else
  {
    v17 = 0x80000001BE117F70;
  }

  v42 = sub_1BE053B84();
  v17, v43, v44, v45, v46, v47, v48, v49;
  if (v42)
  {
    goto LABEL_19;
  }

LABEL_21:
  v53 = *&v1[*(type metadata accessor for UnavailablePaymentMethodItem(0) + 40)];
  if (!v53)
  {
    return 0;
  }

  v54 = v53;
  if ([v54 type] != 1)
  {

    return 0;
  }

  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (v18)
  {
    v56 = v54;
    v57 = [v18 issuerName];
    v18 = sub_1BE052434();
  }

  else
  {
  }

  return v18;
}

uint64_t sub_1BD7D071C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C3F8, &qword_1BE0DB080);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v34 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0, &qword_1BE0B9840);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v34 - v13;
  v15 = *v1;
  if (v15 > 2)
  {
    if (v15 != 3)
    {
      if (v15 == 4)
      {
        v21 = type metadata accessor for UnavailablePaymentMethodItem(0);
        sub_1BD0DE19C(&v1[*(v21 + 20)], v11, &qword_1EBD520A0, &qword_1BE0B9840);
        v22 = type metadata accessor for AvailablePass(0);
        if ((*(*(v22 - 8) + 48))(v11, 1, v22) == 1)
        {
          v18 = &qword_1EBD520A0;
          v19 = &qword_1BE0B9840;
          v20 = v11;
          goto LABEL_17;
        }

        sub_1BD7D53AC(v11, a1, type metadata accessor for WrappedPass);
        v31 = type metadata accessor for AvailablePass;
        v32 = v11;
        goto LABEL_22;
      }

      goto LABEL_10;
    }

    v28 = type metadata accessor for UnavailablePaymentMethodItem(0);
    sub_1BD0DE19C(&v1[*(v28 + 24)], v5, &qword_1EBD3C3F8, &qword_1BE0DB080);
    v29 = type metadata accessor for UnavailablePass(0);
    if ((*(*(v29 - 8) + 48))(v5, 1, v29) == 1)
    {
      v18 = &qword_1EBD3C3F8;
      v19 = &qword_1BE0DB080;
      v20 = v5;
      goto LABEL_17;
    }

    sub_1BD7D53AC(v5, a1, type metadata accessor for WrappedPass);
    v31 = type metadata accessor for UnavailablePass;
    v32 = v5;
LABEL_22:
    sub_1BD7D52E4(v32, v31);
    v33 = type metadata accessor for WrappedPass(0);
    return (*(*(v33 - 8) + 56))(a1, 0, 1, v33);
  }

  if (!*v1)
  {
    v26 = type metadata accessor for UnavailablePaymentMethodItem(0);
    sub_1BD0DE19C(&v1[*(v26 + 20)], v14, &qword_1EBD520A0, &qword_1BE0B9840);
    v27 = type metadata accessor for AvailablePass(0);
    if ((*(*(v27 - 8) + 48))(v14, 1, v27) == 1)
    {
      v18 = &qword_1EBD520A0;
      v19 = &qword_1BE0B9840;
      v20 = v14;
      goto LABEL_17;
    }

    sub_1BD7D53AC(v14, a1, type metadata accessor for WrappedPass);
    v31 = type metadata accessor for AvailablePass;
    v32 = v14;
    goto LABEL_22;
  }

  if (v15 == 1)
  {
    v16 = type metadata accessor for UnavailablePaymentMethodItem(0);
    sub_1BD0DE19C(&v1[*(v16 + 24)], v8, &qword_1EBD3C3F8, &qword_1BE0DB080);
    v17 = type metadata accessor for UnavailablePass(0);
    if ((*(*(v17 - 8) + 48))(v8, 1, v17) == 1)
    {
      v18 = &qword_1EBD3C3F8;
      v19 = &qword_1BE0DB080;
      v20 = v8;
LABEL_17:
      sub_1BD0DE53C(v20, v18, v19);
      v30 = type metadata accessor for WrappedPass(0);
      return (*(*(v30 - 8) + 56))(a1, 1, 1, v30);
    }

    sub_1BD7D53AC(v8, a1, type metadata accessor for WrappedPass);
    v31 = type metadata accessor for UnavailablePass;
    v32 = v8;
    goto LABEL_22;
  }

LABEL_10:
  v23 = type metadata accessor for WrappedPass(0);
  v24 = *(*(v23 - 8) + 56);

  return v24(a1, 1, 1, v23);
}

uint64_t sub_1BD7D0C30()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C3F8, &qword_1BE0DB080);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v46 - v5;
  v7 = type metadata accessor for UnavailablePass(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v46 - v12;
  result = *v0;
  if (*v0 > 2u)
  {
    v16 = type metadata accessor for UnavailablePaymentMethodItem(0);
    v17 = v16;
    v18 = *&v0[*(v16 + 40)];
    if (v18)
    {
      v19 = *&v0[*(v16 + 44)];
      if (v19)
      {
        v20 = v18;
        v21 = v19;
        v22 = [v21 ineligibleDetailsForCriteria_];
        if (([v22 isEligible] & 1) == 0)
        {
          v31 = [v21 configuration];
          v32 = [v31 currencyCode];

          if (v32)
          {
            v33 = sub_1BE052434();
            v35 = v34;
          }

          else
          {
            v33 = 0;
            v35 = 0;
          }

          sub_1BD480FEC(v33, v35);
          v38 = v37;

          v35, v39, v40, v41, v42, v43, v44, v45;
          return v38;
        }
      }
    }

    sub_1BD0DE19C(&v0[*(v17 + 24)], v3, &qword_1EBD3C3F8, &qword_1BE0DB080);
    if ((*(v8 + 48))(v3, 1, v7) == 1)
    {
      sub_1BD0DE53C(v3, &qword_1EBD3C3F8, &qword_1BE0DB080);
      return 0;
    }

    sub_1BD7D5344(v3, v10, type metadata accessor for UnavailablePass);
    v23 = v0[*(v17 + 32)];
    if (v23 == 2)
    {
      v24 = v10;
LABEL_22:
      sub_1BD7D52E4(v24, type metadata accessor for UnavailablePass);
      return 0;
    }

    v29 = sub_1BD68BA18(*&v10[*(v7 + 28)], *&v10[*(v7 + 28) + 8], v10[*(v7 + 28) + 16], v23 & 1);
    v30 = v10;
    goto LABEL_25;
  }

  if (*v0)
  {
    if (result != 1)
    {
      v25 = &v0[*(type metadata accessor for UnavailablePaymentMethodItem(0) + 36)];
      v26 = *v25;
      if (*v25)
      {
        v27 = *(v25 + 1);
        sub_1BD3EFCD8(*v25, v27);
        v28 = sub_1BD41F634(v26);

        return v28;
      }

      return 0;
    }

    v15 = type metadata accessor for UnavailablePaymentMethodItem(0);
    sub_1BD0DE19C(&v0[*(v15 + 24)], v6, &qword_1EBD3C3F8, &qword_1BE0DB080);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_1BD0DE53C(v6, &qword_1EBD3C3F8, &qword_1BE0DB080);
      return 0;
    }

    sub_1BD7D5344(v6, v13, type metadata accessor for UnavailablePass);
    v36 = v0[*(v15 + 32)];
    if (v36 == 2)
    {
      v24 = v13;
      goto LABEL_22;
    }

    v29 = sub_1BD68BA18(*&v13[*(v7 + 28)], *&v13[*(v7 + 28) + 8], v13[*(v7 + 28) + 16], v36 & 1);
    v30 = v13;
LABEL_25:
    sub_1BD7D52E4(v30, type metadata accessor for UnavailablePass);
    return v29;
  }

  return result;
}

id sub_1BD7D10D4()
{
  v1 = sub_1BE04BD74();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v20 - v6;
  if (*v0 - 3 > 1)
  {
    return 0;
  }

  v8 = *&v0[*(type metadata accessor for UnavailablePaymentMethodItem(0) + 40)];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = [v9 type];
  if (v10 == 2)
  {
    (*(v2 + 104))(v4, *MEMORY[0x1E69B8088], v1);
    result = PKPassKitBundle();
    if (result)
    {
      v17 = result;
      v18 = sub_1BE04B6F4();

      (*(v2 + 8))(v4, v1);
      return v18;
    }

    __break(1u);
    goto LABEL_17;
  }

  if (v10 == 1)
  {
    objc_opt_self();
    v12 = swift_dynamicCastObjCClass();
    if (v12)
    {
      v13 = v9;
      v14 = [v12 localizedTitleOverride];
      if (v14)
      {
        v15 = v14;
        v16 = sub_1BE052434();

        return v16;
      }
    }

    (*(v2 + 104))(v7, *MEMORY[0x1E69B8078], v1);
    result = PKPassKitBundle();
    if (result)
    {
      v19 = result;
      v16 = sub_1BE04B6F4();

      (*(v2 + 8))(v7, v1);
      return v16;
    }

LABEL_17:
    __break(1u);
    return result;
  }

  return 0;
}

uint64_t sub_1BD7D139C()
{
  sub_1BE053D04();
  sub_1BD7D14C8();
  v1 = v0;
  sub_1BE052524();
  v1, v2, v3, v4, v5, v6, v7, v8;
  return sub_1BE053D64();
}

void sub_1BD7D13F8(uint64_t a1)
{
  sub_1BD7D14C8();
  v2 = v1;
  sub_1BE052524();

  v2, v3, v4, v5, v6, v7, v8, v9;
}

uint64_t sub_1BD7D1448(uint64_t a1)
{
  sub_1BE053D04();
  sub_1BD7D14C8();
  v2 = v1;
  sub_1BE052524();
  v2, v3, v4, v5, v6, v7, v8, v9;
  return sub_1BE053D64();
}

uint64_t sub_1BD7D14A0@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1BD7D14C8();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1BD7D14C8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C3F8, &qword_1BE0DB080);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v74 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0, &qword_1BE0B9840);
  v6.n128_f64[0] = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v74 - v7;
  v9 = 0xEF73736150656C62;
  v10 = 0x616C696176616E75;
  v74[0] = 0;
  v74[1] = 0xE000000000000000;
  v11 = *v0;
  v12 = 0x80000001BE117FC0;
  v13 = 0x80000001BE117FF0;
  v14 = 0xD000000000000017;
  if (v11 == 4)
  {
    v14 = 0xD000000000000028;
  }

  else
  {
    v13 = 0x80000001BE118020;
  }

  if (v11 == 3)
  {
    v14 = 0xD00000000000002ALL;
  }

  else
  {
    v12 = v13;
  }

  if (v11 != 1)
  {
    v10 = 0xD000000000000016;
    v9 = 0x80000001BE117FA0;
  }

  if (!*v0)
  {
    v10 = 0xD000000000000015;
    v9 = 0x80000001BE117F70;
  }

  if (*v0 <= 2u)
  {
    v15 = v10;
  }

  else
  {
    v15 = v14;
  }

  if (*v0 <= 2u)
  {
    v16 = v9;
  }

  else
  {
    v16 = v12;
  }

  MEMORY[0x1BFB3F610](v15, v16, v6);
  v16, v17, v18, v19, v20, v21, v22, v23;
  v24 = type metadata accessor for UnavailablePaymentMethodItem(0);
  sub_1BD0DE19C(&v0[v24[5]], v8, &qword_1EBD520A0, &qword_1BE0B9840);
  v25 = type metadata accessor for AvailablePass(0);
  if ((*(*(v25 - 8) + 48))(v8, 1, v25) == 1)
  {
    sub_1BD0DE53C(v8, &qword_1EBD520A0, &qword_1BE0B9840);
    v26 = 0;
    v27 = 0xE000000000000000;
  }

  else
  {
    v28 = sub_1BD49C81C();
    v27 = v29;
    sub_1BD7D52E4(v8, type metadata accessor for AvailablePass);
    v26 = v28;
  }

  MEMORY[0x1BFB3F610](v26, v27);
  v27, v30, v31, v32, v33, v34, v35, v36;
  sub_1BD0DE19C(&v1[v24[6]], v4, &qword_1EBD3C3F8, &qword_1BE0DB080);
  v37 = type metadata accessor for UnavailablePass(0);
  if ((*(*(v37 - 8) + 48))(v4, 1, v37) == 1)
  {
    sub_1BD0DE53C(v4, &qword_1EBD3C3F8, &qword_1BE0DB080);
    v38 = 0;
    v39 = 0xE000000000000000;
  }

  else
  {
    v40 = sub_1BD495408();
    v39 = v41;
    sub_1BD7D52E4(v4, type metadata accessor for UnavailablePass);
    v38 = v40;
  }

  MEMORY[0x1BFB3F610](v38, v39);
  v39, v42, v43, v44, v45, v46, v47, v48;
  v49 = *&v1[v24[7]];
  if (v49 && (v49 = [v49 applicationIdentifier]) != 0)
  {
    v50 = v49;
    v51 = sub_1BE052434();
    v53 = v52;

    v49 = v51;
  }

  else
  {
    v53 = 0xE000000000000000;
  }

  MEMORY[0x1BFB3F610](v49, v53);
  v53, v54, v55, v56, v57, v58, v59, v60;
  v61 = *&v1[v24[10]];
  if (v61)
  {
    v62 = [v61 identifier];
    v63 = sub_1BE052434();
    v65 = v64;
  }

  else
  {
    v63 = 0;
    v65 = 0xE000000000000000;
  }

  MEMORY[0x1BFB3F610](v63, v65);
  v65, v66, v67, v68, v69, v70, v71, v72;
  return v74[0];
}

void sub_1BD7D18EC(uint64_t a1)
{
  v2 = *v1;
  v3 = 0xEF73736150656C62;
  v4 = 0x80000001BE117FC0;
  v5 = 0x80000001BE117FF0;
  if (v2 != 4)
  {
    v5 = 0x80000001BE118020;
  }

  if (v2 != 3)
  {
    v4 = v5;
  }

  if (v2 != 1)
  {
    v3 = 0x80000001BE117FA0;
  }

  if (!*v1)
  {
    v3 = 0x80000001BE117F70;
  }

  if (*v1 <= 2u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  sub_1BE052524();

  v6, v7, v8, v9, v10, v11, v12, v13;
}

unint64_t sub_1BD7D19F8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1BD7D5840(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1BD7D1A28(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEF73736150656C62;
  v4 = 0x616C696176616E75;
  v5 = 0x80000001BE117FC0;
  v6 = 0x80000001BE117FF0;
  v7 = 0xD000000000000017;
  if (v2 == 4)
  {
    v7 = 0xD000000000000028;
  }

  else
  {
    v6 = 0x80000001BE118020;
  }

  if (v2 == 3)
  {
    v7 = 0xD00000000000002ALL;
  }

  else
  {
    v5 = v6;
  }

  if (v2 != 1)
  {
    v4 = 0xD000000000000016;
    v3 = 0x80000001BE117FA0;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000015;
    v3 = 0x80000001BE117F70;
  }

  if (*v1 <= 2u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v7;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

void sub_1BD7D1AFC(uint64_t *a1)
{
  v2 = *(type metadata accessor for UnavailablePaymentMethodItem(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1BD5ED704(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1BD7D1BA4(v5);
  *a1 = v3;
}

void sub_1BD7D1BA4(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1BE053B14();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for UnavailablePaymentMethodItem(0);
        v6 = sub_1BE0527B4();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for UnavailablePaymentMethodItem(0) - 8);
      v15[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v15[1] = v5;
      sub_1BD7D1F74(v15, v16, a1, v4);
      v6[2] = 0;
      v6, v8, v9, v10, v11, v12, v13, v14;
      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1BD7D1CD0(0, v2, 1, a1);
  }
}

void sub_1BD7D1CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v57 = type metadata accessor for UnavailablePaymentMethodItem(0);
  MEMORY[0x1EEE9AC00](v57);
  v52 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v44 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v44 - v14;
  v46 = a2;
  if (a3 != a2)
  {
    v16 = *(v13 + 72);
    v17 = *a4 + v16 * (a3 - 1);
    v18 = -v16;
    v19 = a1 - a3;
    v51 = *a4;
    v45 = v16;
    v20 = v51 + v16 * a3;
LABEL_5:
    v49 = v17;
    v50 = a3;
    v47 = v20;
    v48 = v19;
    while (1)
    {
      sub_1BD7D53AC(v20, v15, type metadata accessor for UnavailablePaymentMethodItem);
      sub_1BD7D53AC(v17, v11, type metadata accessor for UnavailablePaymentMethodItem);
      v21 = sub_1BD7D02FC();
      v23 = v22;
      v55 = v21;
      v56 = v22;
      v24 = sub_1BD7D02FC();
      v26 = v25;
      v53 = v24;
      v54 = v25;
      sub_1BD0DDEBC();
      v27 = sub_1BE0535A4();
      v23, v28, v29, v30, v31, v32, v33, v34;
      v26, v35, v36, v37, v38, v39, v40, v41;
      sub_1BD7D52E4(v11, type metadata accessor for UnavailablePaymentMethodItem);
      sub_1BD7D52E4(v15, type metadata accessor for UnavailablePaymentMethodItem);
      if (v27 != -1)
      {
LABEL_4:
        a3 = v50 + 1;
        v17 = v49 + v45;
        v19 = v48 - 1;
        v20 = v47 + v45;
        if (v50 + 1 == v46)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v51)
      {
        break;
      }

      v42 = v52;
      sub_1BD7D5344(v20, v52, type metadata accessor for UnavailablePaymentMethodItem);
      swift_arrayInitWithTakeFrontToBack();
      sub_1BD7D5344(v42, v17, type metadata accessor for UnavailablePaymentMethodItem);
      v17 += v18;
      v20 += v18;
      if (__CFADD__(v19++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1BD7D1F74(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v5 = v4;
  v168 = a1;
  v181 = type metadata accessor for UnavailablePaymentMethodItem(0);
  v177 = *(v181 - 8);
  MEMORY[0x1EEE9AC00](v181);
  v170 = &v165 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v180 = &v165 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v183 = &v165 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v182 = &v165 - v21;
  v22 = a3[1];
  if (v22 >= 1)
  {
    v165 = a4;
    v23 = 0;
    v24 = MEMORY[0x1E69E7CC0];
    v169 = a3;
    while (1)
    {
      if ((v23 + 1) >= v22)
      {
        v22 = (v23 + 1);
      }

      else
      {
        v166 = v5;
        v25 = *(v177 + 72);
        a4 = *a3 + v25 * (v23 + 1);
        v179 = *a3;
        v26 = v179;
        v27 = v23;
        v28 = v182;
        sub_1BD7D53AC(a4, v182, type metadata accessor for UnavailablePaymentMethodItem);
        v29 = v26 + v25 * v27;
        v30 = v183;
        sub_1BD7D53AC(v29, v183, type metadata accessor for UnavailablePaymentMethodItem);
        v31 = sub_1BD7D02FC();
        v178 = v32;
        v186 = v31;
        v187 = v32;
        v33 = sub_1BD7D02FC();
        v35 = v34;
        v184 = v33;
        v185 = v34;
        v174 = sub_1BD0DDEBC();
        v176 = sub_1BE0535A4();
        v178, v36, v37, v38, v39, v40, v41, v42;
        v35, v43, v44, v45, v46, v47, v48, v49;
        sub_1BD7D52E4(v30, type metadata accessor for UnavailablePaymentMethodItem);
        sub_1BD7D52E4(v28, type metadata accessor for UnavailablePaymentMethodItem);
        v167 = v27;
        v50 = v27 + 2;
        v178 = v25;
        v51 = v179 + v25 * (v27 + 2);
        v175 = v24;
        while (v22 != v50)
        {
          LODWORD(v179) = v176 == -1;
          v52 = v22;
          v53 = v182;
          sub_1BD7D53AC(v51, v182, type metadata accessor for UnavailablePaymentMethodItem);
          v54 = v183;
          sub_1BD7D53AC(a4, v183, type metadata accessor for UnavailablePaymentMethodItem);
          v55 = sub_1BD7D02FC();
          v57 = v56;
          v186 = v55;
          v187 = v56;
          v58 = sub_1BD7D02FC();
          v60 = v59;
          v184 = v58;
          v185 = v59;
          v61 = sub_1BE0535A4();
          v57, v62, v63, v64, v65, v66, v67, v68;
          v60, v69, v70, v71, v72, v73, v74, v75;
          sub_1BD7D52E4(v54, type metadata accessor for UnavailablePaymentMethodItem);
          v76 = v53;
          v22 = v52;
          sub_1BD7D52E4(v76, type metadata accessor for UnavailablePaymentMethodItem);
          v24 = v175;
          ++v50;
          v51 += v178;
          a4 += v178;
          if (((v179 ^ (v61 != -1)) & 1) == 0)
          {
            v22 = v50 - 1;
            break;
          }
        }

        v5 = v166;
        v23 = v167;
        if (v176 == -1)
        {
          a3 = v169;
          if (v22 < v167)
          {
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
            return;
          }

          if (v167 < v22)
          {
            v125 = v178 * (v22 - 1);
            v126 = v22 * v178;
            v127 = v22;
            v128 = v167 * v178;
            do
            {
              if (v23 != --v127)
              {
                v129 = *a3;
                if (!v129)
                {
                  goto LABEL_131;
                }

                a4 = v129 + v128;
                sub_1BD7D5344(v129 + v128, v170, type metadata accessor for UnavailablePaymentMethodItem);
                if (v128 < v125 || a4 >= v129 + v126)
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v128 != v125)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                sub_1BD7D5344(v170, v129 + v125, type metadata accessor for UnavailablePaymentMethodItem);
                a3 = v169;
              }

              ++v23;
              v125 -= v178;
              v126 -= v178;
              v128 += v178;
            }

            while (v23 < v127);
            v24 = v175;
            v23 = v167;
          }
        }

        else
        {
          a3 = v169;
        }
      }

      v77 = a3[1];
      if (v22 >= v77)
      {
        goto LABEL_21;
      }

      if (__OFSUB__(v22, v23))
      {
        goto LABEL_123;
      }

      if (v22 - v23 >= v165)
      {
        goto LABEL_21;
      }

      if (__OFADD__(v23, v165))
      {
        goto LABEL_124;
      }

      if (&v23[v165] >= v77)
      {
        v78 = a3[1];
      }

      else
      {
        v78 = &v23[v165];
      }

      if (v78 < v23)
      {
LABEL_125:
        __break(1u);
        goto LABEL_126;
      }

      if (v22 == v78)
      {
LABEL_21:
        v79 = v22;
        if (v22 < v23)
        {
          goto LABEL_122;
        }
      }

      else
      {
        v175 = v24;
        v166 = v5;
        v130 = *a3;
        v131 = *(v177 + 72);
        v132 = *a3 + v131 * (v22 - 1);
        v133 = -v131;
        v167 = v23;
        v134 = &v23[-v22];
        v179 = v130;
        v171 = v131;
        v172 = v78;
        a4 = v130 + v22 * v131;
        do
        {
          v178 = v22;
          v173 = a4;
          v174 = v134;
          v176 = v132;
          v135 = v132;
          do
          {
            v136 = v182;
            sub_1BD7D53AC(a4, v182, type metadata accessor for UnavailablePaymentMethodItem);
            v137 = v183;
            sub_1BD7D53AC(v135, v183, type metadata accessor for UnavailablePaymentMethodItem);
            v138 = sub_1BD7D02FC();
            v140 = v139;
            v186 = v138;
            v187 = v139;
            v141 = sub_1BD7D02FC();
            v143 = v142;
            v184 = v141;
            v185 = v142;
            sub_1BD0DDEBC();
            v144 = sub_1BE0535A4();
            v140, v145, v146, v147, v148, v149, v150, v151;
            v143, v152, v153, v154, v155, v156, v157, v158;
            sub_1BD7D52E4(v137, type metadata accessor for UnavailablePaymentMethodItem);
            sub_1BD7D52E4(v136, type metadata accessor for UnavailablePaymentMethodItem);
            if (v144 != -1)
            {
              break;
            }

            if (!v179)
            {
              goto LABEL_128;
            }

            v159 = v180;
            sub_1BD7D5344(a4, v180, type metadata accessor for UnavailablePaymentMethodItem);
            swift_arrayInitWithTakeFrontToBack();
            sub_1BD7D5344(v159, v135, type metadata accessor for UnavailablePaymentMethodItem);
            v135 += v133;
            a4 += v133;
          }

          while (!__CFADD__(v134++, 1));
          v22 = v178 + 1;
          v79 = v172;
          v132 = v176 + v171;
          v134 = v174 - 1;
          a4 = v173 + v171;
        }

        while ((v178 + 1) != v172);
        v5 = v166;
        a3 = v169;
        v24 = v175;
        v23 = v167;
        if (v172 < v167)
        {
          goto LABEL_122;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_1BD1D7844(0, *(v24 + 2) + 1, 1, v24, v17, v18, v19, v20);
      }

      a4 = *(v24 + 2);
      v80 = *(v24 + 3);
      v81 = a4 + 1;
      if (a4 >= v80 >> 1)
      {
        v24 = sub_1BD1D7844((v80 > 1), a4 + 1, 1, v24, v17, v18, v19, v20);
      }

      *(v24 + 2) = v81;
      v82 = &v24[16 * a4];
      *(v82 + 4) = v23;
      *(v82 + 5) = v79;
      v172 = v79;
      v83 = *v168;
      if (!*v168)
      {
        goto LABEL_132;
      }

      if (a4)
      {
        while (1)
        {
          a4 = v81 - 1;
          if (v81 >= 4)
          {
            break;
          }

          if (v81 == 3)
          {
            v84 = *(v24 + 4);
            v85 = *(v24 + 5);
            v94 = __OFSUB__(v85, v84);
            v86 = v85 - v84;
            v87 = v94;
LABEL_41:
            if (v87)
            {
              goto LABEL_111;
            }

            v100 = &v24[16 * v81];
            v102 = *v100;
            v101 = *(v100 + 1);
            v103 = __OFSUB__(v101, v102);
            v104 = v101 - v102;
            v105 = v103;
            if (v103)
            {
              goto LABEL_114;
            }

            v106 = &v24[16 * a4 + 32];
            v108 = *v106;
            v107 = *(v106 + 1);
            v94 = __OFSUB__(v107, v108);
            v109 = v107 - v108;
            if (v94)
            {
              goto LABEL_117;
            }

            if (__OFADD__(v104, v109))
            {
              goto LABEL_118;
            }

            if (v104 + v109 >= v86)
            {
              if (v86 < v109)
              {
                a4 = v81 - 2;
              }

              goto LABEL_62;
            }

            goto LABEL_55;
          }

          v110 = &v24[16 * v81];
          v112 = *v110;
          v111 = *(v110 + 1);
          v94 = __OFSUB__(v111, v112);
          v104 = v111 - v112;
          v105 = v94;
LABEL_55:
          if (v105)
          {
            goto LABEL_113;
          }

          v113 = &v24[16 * a4];
          v115 = *(v113 + 4);
          v114 = *(v113 + 5);
          v94 = __OFSUB__(v114, v115);
          v116 = v114 - v115;
          if (v94)
          {
            goto LABEL_116;
          }

          if (v116 < v104)
          {
            goto LABEL_3;
          }

LABEL_62:
          v121 = a4 - 1;
          if (a4 - 1 >= v81)
          {
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
            goto LABEL_125;
          }

          if (!*a3)
          {
            goto LABEL_129;
          }

          v122 = *&v24[16 * v121 + 32];
          v123 = *&v24[16 * a4 + 40];
          sub_1BD7D29B4(*a3 + *(v177 + 72) * v122, *a3 + *(v177 + 72) * *&v24[16 * a4 + 32], *a3 + *(v177 + 72) * v123, v83);
          if (v5)
          {
            goto LABEL_105;
          }

          if (v123 < v122)
          {
            goto LABEL_107;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v24 = sub_1BD5ED6C8(v24, v14, v15, v16, v17, v18, v19, v20);
          }

          if (v121 >= *(v24 + 2))
          {
            goto LABEL_108;
          }

          v124 = &v24[16 * v121];
          *(v124 + 4) = v122;
          *(v124 + 5) = v123;
          v188 = v24;
          sub_1BD5ED63C(a4);
          v24 = v188;
          v81 = *(v188 + 2);
          if (v81 <= 1)
          {
            goto LABEL_3;
          }
        }

        v88 = &v24[16 * v81 + 32];
        v89 = *(v88 - 64);
        v90 = *(v88 - 56);
        v94 = __OFSUB__(v90, v89);
        v91 = v90 - v89;
        if (v94)
        {
          goto LABEL_109;
        }

        v93 = *(v88 - 48);
        v92 = *(v88 - 40);
        v94 = __OFSUB__(v92, v93);
        v86 = v92 - v93;
        v87 = v94;
        if (v94)
        {
          goto LABEL_110;
        }

        v95 = &v24[16 * v81];
        v97 = *v95;
        v96 = *(v95 + 1);
        v94 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v94)
        {
          goto LABEL_112;
        }

        v94 = __OFADD__(v86, v98);
        v99 = v86 + v98;
        if (v94)
        {
          goto LABEL_115;
        }

        if (v99 >= v91)
        {
          v117 = &v24[16 * a4 + 32];
          v119 = *v117;
          v118 = *(v117 + 1);
          v94 = __OFSUB__(v118, v119);
          v120 = v118 - v119;
          if (v94)
          {
            goto LABEL_119;
          }

          if (v86 < v120)
          {
            a4 = v81 - 2;
          }

          goto LABEL_62;
        }

        goto LABEL_41;
      }

LABEL_3:
      v22 = a3[1];
      v23 = v172;
      if (v172 >= v22)
      {
        goto LABEL_95;
      }
    }
  }

  v24 = MEMORY[0x1E69E7CC0];
LABEL_95:
  a4 = *v168;
  if (!*v168)
  {
    goto LABEL_133;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_126:
    v24 = sub_1BD5ED6C8(v24, v14, v15, v16, v17, v18, v19, v20);
  }

  v188 = v24;
  v161 = *(v24 + 2);
  if (v161 >= 2)
  {
    while (*a3)
    {
      v162 = *&v24[16 * v161];
      v163 = *&v24[16 * v161 + 24];
      sub_1BD7D29B4(*a3 + *(v177 + 72) * v162, *a3 + *(v177 + 72) * *&v24[16 * v161 + 16], *a3 + *(v177 + 72) * v163, a4);
      if (v5)
      {
        goto LABEL_105;
      }

      if (v163 < v162)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_1BD5ED6C8(v24, v14, v15, v16, v17, v18, v19, v20);
      }

      if (v161 - 2 >= *(v24 + 2))
      {
        goto LABEL_121;
      }

      v164 = &v24[16 * v161];
      *v164 = v162;
      *(v164 + 1) = v163;
      v188 = v24;
      sub_1BD5ED63C(v161 - 1);
      v24 = v188;
      v161 = *(v188 + 2);
      if (v161 <= 1)
      {
        goto LABEL_105;
      }
    }

    goto LABEL_130;
  }

LABEL_105:
  v24, v14, v15, v16, v17, v18, v19, v20;
}

void sub_1BD7D29B4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v83 = a3;
  v80 = type metadata accessor for UnavailablePaymentMethodItem(0);
  MEMORY[0x1EEE9AC00](v80);
  v82 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v81 = &v73 - v9;
  v11 = *(v10 + 72);
  if (!v11)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_62;
  }

  v12 = v83 - a2;
  if (v83 - a2 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_63;
  }

  v13 = (a2 - a1) / v11;
  v90 = a1;
  v89 = a4;
  if (v13 >= v12 / v11)
  {
    v15 = v12 / v11 * v11;
    if (a4 < a2 || a2 + v15 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v41 = a4 + v15;
    if (v15 >= 1)
    {
      v42 = -v11;
      v43 = v41;
      v76 = -v11;
      v77 = a1;
      v44 = v81;
      while (2)
      {
        while (1)
        {
          v74 = v41;
          v45 = a2;
          v78 = a2;
          v79 = a2 + v42;
          while (1)
          {
            v47 = v83;
            if (v45 <= a1)
            {
              v90 = v45;
              v88 = v74;
              goto LABEL_60;
            }

            v75 = v41;
            v48 = a4;
            v83 += v42;
            v49 = v43 + v42;
            sub_1BD7D53AC(v49, v44, type metadata accessor for UnavailablePaymentMethodItem);
            v50 = v82;
            sub_1BD7D53AC(v79, v82, type metadata accessor for UnavailablePaymentMethodItem);
            v51 = sub_1BD7D02FC();
            v53 = v52;
            v86 = v51;
            v87 = v52;
            v54 = sub_1BD7D02FC();
            v56 = v55;
            v84 = v54;
            v85 = v55;
            sub_1BD0DDEBC();
            v57 = sub_1BE0535A4();
            v53, v58, v59, v60, v61, v62, v63, v64;
            v56, v65, v66, v67, v68, v69, v70, v71;
            sub_1BD7D52E4(v50, type metadata accessor for UnavailablePaymentMethodItem);
            sub_1BD7D52E4(v44, type metadata accessor for UnavailablePaymentMethodItem);
            if (v57 == -1)
            {
              break;
            }

            v41 = v49;
            a4 = v48;
            if (v47 < v43 || v83 >= v43)
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v77;
            }

            else
            {
              a1 = v77;
              if (v47 != v43)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v43 = v49;
            v46 = v49 > v48;
            v42 = v76;
            v45 = v78;
            if (!v46)
            {
              a2 = v78;
              goto LABEL_59;
            }
          }

          a4 = v48;
          if (v47 < v78 || v83 >= v78)
          {
            break;
          }

          v72 = v47 == v78;
          a2 = v79;
          v42 = v76;
          a1 = v77;
          v41 = v75;
          if (!v72)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v43 <= v48)
          {
            goto LABEL_59;
          }
        }

        a2 = v79;
        swift_arrayInitWithTakeFrontToBack();
        v42 = v76;
        a1 = v77;
        v41 = v75;
        if (v43 > v48)
        {
          continue;
        }

        break;
      }
    }

LABEL_59:
    v90 = a2;
    v88 = v41;
  }

  else
  {
    v14 = v13 * v11;
    if (a4 < a1 || a1 + v14 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v79 = a4 + v14;
    v88 = a4 + v14;
    if (v14 >= 1 && a2 < v83)
    {
      v17 = v81;
      do
      {
        sub_1BD7D53AC(a2, v17, type metadata accessor for UnavailablePaymentMethodItem);
        v18 = v82;
        sub_1BD7D53AC(a4, v82, type metadata accessor for UnavailablePaymentMethodItem);
        v19 = sub_1BD7D02FC();
        v20 = a4;
        v22 = v21;
        v86 = v19;
        v87 = v21;
        v23 = sub_1BD7D02FC();
        v25 = v24;
        v84 = v23;
        v85 = v24;
        sub_1BD0DDEBC();
        v26 = sub_1BE0535A4();
        v22, v27, v28, v29, v30, v31, v32, v33;
        v25, v34, v35, v36, v37, v38, v39, v40;
        sub_1BD7D52E4(v18, type metadata accessor for UnavailablePaymentMethodItem);
        sub_1BD7D52E4(v17, type metadata accessor for UnavailablePaymentMethodItem);
        if (v26 == -1)
        {
          a4 = v20;
          if (a1 < a2 || a1 >= a2 + v11)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v11;
          goto LABEL_34;
        }

        a4 = v20 + v11;
        if (a1 < v20 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v20)
        {
          swift_arrayInitWithTakeBackToFront();
          v89 = v20 + v11;
          goto LABEL_34;
        }

        v89 = v20 + v11;
LABEL_34:
        a1 += v11;
        v90 = a1;
      }

      while (a4 < v79 && a2 < v83);
    }
  }

LABEL_60:
  sub_1BD935268(&v90, &v89, &v88);
}

unint64_t sub_1BD7D2F60(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for UnavailablePass(0);
  v112 = *(v4 - 8);
  v113 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C3F8, &qword_1BE0DB080);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v110 = &v106 - v8;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD47E20, &qword_1BE0DB0B0);
  MEMORY[0x1EEE9AC00](v111);
  v10 = &v106 - v9;
  v11 = type metadata accessor for AvailablePass(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD520A0, &qword_1BE0B9840);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v106 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39738, &qword_1BE0DA100);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v106 - v19;
  if ((sub_1BD14C634(*a1, *a2, v21, v22, v23, v24, v25, v26) & 1) == 0)
  {
    goto LABEL_17;
  }

  v106 = v6;
  v107 = v10;
  v27 = type metadata accessor for UnavailablePaymentMethodItem(0);
  v28 = a2;
  v29 = *(v27 + 20);
  v30 = *(v18 + 48);
  v108 = v27;
  v109 = a1;
  sub_1BD0DE19C(&a1[v29], v20, &qword_1EBD520A0, &qword_1BE0B9840);
  v31 = &v28[v29];
  v32 = v28;
  sub_1BD0DE19C(v31, &v20[v30], &qword_1EBD520A0, &qword_1BE0B9840);
  v33 = *(v12 + 48);
  if (v33(v20, 1, v11) == 1)
  {
    if (v33(&v20[v30], 1, v11) == 1)
    {
      sub_1BD0DE53C(v20, &qword_1EBD520A0, &qword_1BE0B9840);
      goto LABEL_9;
    }

LABEL_7:
    v34 = &qword_1EBD39738;
    v35 = &qword_1BE0DA100;
    v36 = v20;
LABEL_16:
    sub_1BD0DE53C(v36, v34, v35);
    goto LABEL_17;
  }

  sub_1BD0DE19C(v20, v17, &qword_1EBD520A0, &qword_1BE0B9840);
  if (v33(&v20[v30], 1, v11) == 1)
  {
    sub_1BD7D52E4(v17, type metadata accessor for AvailablePass);
    goto LABEL_7;
  }

  sub_1BD7D5344(&v20[v30], v14, type metadata accessor for AvailablePass);
  v37 = sub_1BD495008(v17, v14);
  sub_1BD7D52E4(v14, type metadata accessor for AvailablePass);
  sub_1BD7D52E4(v17, type metadata accessor for AvailablePass);
  sub_1BD0DE53C(v20, &qword_1EBD520A0, &qword_1BE0B9840);
  if ((v37 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_9:
  v39 = v108;
  v38 = v109;
  v40 = v108[6];
  v41 = *(v111 + 48);
  v42 = v107;
  sub_1BD0DE19C(&v109[v40], v107, &qword_1EBD3C3F8, &qword_1BE0DB080);
  sub_1BD0DE19C(&v28[v40], v42 + v41, &qword_1EBD3C3F8, &qword_1BE0DB080);
  v43 = v113;
  v44 = *(v112 + 48);
  if (v44(v42, 1, v113) == 1)
  {
    if (v44(v42 + v41, 1, v43) == 1)
    {
      sub_1BD0DE53C(v42, &qword_1EBD3C3F8, &qword_1BE0DB080);
      goto LABEL_24;
    }

    goto LABEL_14;
  }

  v45 = v110;
  sub_1BD0DE19C(v42, v110, &qword_1EBD3C3F8, &qword_1BE0DB080);
  if (v44(v42 + v41, 1, v43) == 1)
  {
    sub_1BD7D52E4(v45, type metadata accessor for UnavailablePass);
LABEL_14:
    v34 = &qword_1EBD47E20;
    v35 = &qword_1BE0DB0B0;
LABEL_15:
    v36 = v42;
    goto LABEL_16;
  }

  sub_1BD7D5344(v42 + v41, v106, type metadata accessor for UnavailablePass);
  v48 = sub_1BD492F00();
  v50 = v49;
  v52 = sub_1BD492F00();
  v58 = v48;
  v59 = v51;
  if (v58 == v52 && v50 == v51)
  {
    v50, v51, v52, v53, v54, v55, v56, v57;
    v59, v60, v61, v62, v63, v64, v65, v66;
  }

  else
  {
    v67 = sub_1BE053B84();
    v50, v68, v69, v70, v71, v72, v73, v74;
    v59, v75, v76, v77, v78, v79, v80, v81;
    if ((v67 & 1) == 0)
    {
      sub_1BD7D52E4(v106, type metadata accessor for UnavailablePass);
      sub_1BD7D52E4(v45, type metadata accessor for UnavailablePass);
      v34 = &qword_1EBD3C3F8;
      v35 = &qword_1BE0DB080;
      goto LABEL_15;
    }
  }

  v82 = *(v43 + 28);
  v83 = v106;
  v84 = sub_1BD498408(*(v45 + v82), *(v45 + v82 + 8), *(v45 + v82 + 16), *&v106[v82], *&v106[v82 + 8], v106[v82 + 16]);
  sub_1BD7D52E4(v83, type metadata accessor for UnavailablePass);
  sub_1BD7D52E4(v45, type metadata accessor for UnavailablePass);
  sub_1BD0DE53C(v42, &qword_1EBD3C3F8, &qword_1BE0DB080);
  if ((v84 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_24:
  v85 = v39[7];
  v86 = *&v38[v85];
  v46 = *&v32[v85];
  if (v86)
  {
    if (!v46)
    {
      return v46 & 1;
    }

    sub_1BD0E5E8C(0, &qword_1EBD43BA0, 0x1E69B8B40);
    v87 = v46;
    v88 = v86;
    v89 = sub_1BE053074();

    if ((v89 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  else if (v46)
  {
    goto LABEL_17;
  }

  v90 = v39[8];
  v91 = v38[v90];
  v92 = v32[v90];
  if (v91 == 2)
  {
    if (v92 != 2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    LOBYTE(v46) = 0;
    if (v92 == 2 || ((v92 ^ v91) & 1) != 0)
    {
      return v46 & 1;
    }
  }

  v93 = v39[10];
  v94 = *&v38[v93];
  v46 = *&v32[v93];
  if (v94)
  {
    if (!v46)
    {
      return v46 & 1;
    }

    sub_1BD0E5E8C(0, &unk_1EBD496A0, 0x1E69B8C60);
    v95 = v46;
    v96 = v94;
    v97 = sub_1BE053074();

    if (v97)
    {
      goto LABEL_40;
    }

LABEL_17:
    LOBYTE(v46) = 0;
    return v46 & 1;
  }

  if (v46)
  {
    goto LABEL_17;
  }

LABEL_40:
  v98 = v39[9];
  v99 = &v38[v98];
  v100 = *&v38[v98];
  v101 = &v32[v98];
  v102 = *v101;
  LOBYTE(v46) = (v100 | *v101) == 0;
  if (v100 && v102)
  {
    v46 = *(v101 + 1);
    v103 = *(v99 + 1);
    v104 = v46;
    v105 = v102;
    LOBYTE(v46) = sub_1BD41F4F4(v100, v103, v105, v46);
  }

  return v46 & 1;
}

uint64_t type metadata accessor for UnavailablePaymentMethodItem(uint64_t a1)
{
  result = qword_1EBD53E88;
  if (!qword_1EBD53E88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_1BD7D3794(uint64_t a1)
{
  v97 = type metadata accessor for UnavailablePass(0);
  v84 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v85 = &v82 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for UnavailablePaymentMethodItem(0);
  v96 = *(v3 - 1);
  MEMORY[0x1EEE9AC00](v3);
  v86 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v82 - v6;
  v99 = type metadata accessor for AvailablePass(0);
  v91 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v92 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v98 = &v82 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v95 = &v82 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v82 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B40, &qword_1BE0D42C0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v82 - v17;
  v19 = type metadata accessor for Passes(0);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v82 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1;
  v25 = v24;
  sub_1BD0DE19C(v23, v18, &unk_1EBD43B40, &qword_1BE0D42C0);
  if ((*(v20 + 48))(v18, 1, v25) == 1)
  {
    sub_1BD0DE53C(v18, &unk_1EBD43B40, &qword_1BE0D42C0);
    return MEMORY[0x1E69E7CC0];
  }

  result = sub_1BD7D5344(v18, v22, type metadata accessor for Passes);
  v35 = *(v25 + 28);
  v83 = v22;
  v36 = *&v22[v35];
  v37 = *(v36 + 16);
  v93 = v25;
  v94 = v37;
  if (!v37)
  {
    v39 = MEMORY[0x1E69E7CC0];
LABEL_19:
    v46 = v83;
    v47 = *&v83[*(v93 + 36)];
    v48 = v39[2];
    if (*(v47 + 16))
    {
      LODWORD(v95) = v83[*(v93 + 40)];
      if (!v48)
      {
        v39, v28, v29, v30, v31, v32, v33, v34;
        v26 = MEMORY[0x1E69E7CC0];
        v71 = *(v47 + 16);
        if (v71)
        {
LABEL_45:
          v72 = v47 + ((*(v84 + 80) + 32) & ~*(v84 + 80));
          v73 = *(v84 + 72);
          v74 = (v84 + 56);
          v75 = (v91 + 56);
          v76 = v86;
          do
          {
            v77 = v85;
            sub_1BD7D53AC(v72, v85, type metadata accessor for UnavailablePass);
            *v76 = 1;
            v78 = v3[6];
            sub_1BD7D5344(v77, &v76[v78], type metadata accessor for UnavailablePass);
            (*v74)(&v76[v78], 0, 1, v97);
            *&v76[v3[7]] = 0;
            v76[v3[8]] = v95;
            (*v75)(&v76[v3[5]], 1, 1, v99);
            v79 = &v76[v3[9]];
            *v79 = 0;
            v79[1] = 0;
            *&v76[v3[10]] = 0;
            *&v76[v3[11]] = 0;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v26 = sub_1BD1D7B88(0, v26[2] + 1, 1, v26);
            }

            v81 = v26[2];
            v80 = v26[3];
            v76 = v86;
            if (v81 >= v80 >> 1)
            {
              v26 = sub_1BD1D7B88((v80 > 1), v81 + 1, 1, v26);
              v76 = v86;
            }

            v26[2] = v81 + 1;
            sub_1BD7D5344(v76, v26 + ((*(v96 + 80) + 32) & ~*(v96 + 80)) + *(v96 + 72) * v81, type metadata accessor for UnavailablePaymentMethodItem);
            v72 += v73;
            --v71;
          }

          while (v71);
        }

LABEL_51:
        sub_1BD7D52E4(v83, type metadata accessor for Passes);
        return v26;
      }

      v82 = v47;
    }

    else
    {
      if (!v48)
      {
        v39, v28, v29, v30, v31, v32, v33, v34;
        sub_1BD7D52E4(v46, type metadata accessor for Passes);
        return MEMORY[0x1E69E7CC0];
      }

      v82 = *&v83[*(v93 + 36)];
      LODWORD(v95) = v83[*(v93 + 40)];
    }

    v49 = 0;
    v50 = v92;
    v88 = v39 + ((*(v91 + 80) + 32) & ~*(v91 + 80));
    v89 = v39;
    v51 = (v91 + 56);
    v52 = (v84 + 56);
    v26 = MEMORY[0x1E69E7CC0];
    v87 = v48;
    while (1)
    {
      if (v49 >= v89[2])
      {
        goto LABEL_55;
      }

      v60 = v98;
      result = sub_1BD7D53AC(&v88[*(v91 + 72) * v49], v98, type metadata accessor for AvailablePass);
      v61 = *(v60 + *(v99 + 60));
      if (v61 >> 62)
      {
        v70 = *(v60 + *(v99 + 60));
        result = sub_1BE053704();
        v61 = v70;
        v62 = result;
        v90 = v49;
        if (result)
        {
LABEL_29:
          if (v62 < 1)
          {
            goto LABEL_56;
          }

          v63 = 0;
          v93 = v61 & 0xC000000000000001;
          v94 = v61;
          do
          {
            if (v93)
            {
              v64 = MEMORY[0x1BFB40900](v63);
            }

            else
            {
              v64 = *(v61 + 8 * v63 + 32);
            }

            v65 = v64;
            sub_1BD7D53AC(v98, v50, type metadata accessor for AvailablePass);
            *v7 = 0;
            v66 = v3[5];
            sub_1BD7D5344(v50, &v7[v66], type metadata accessor for AvailablePass);
            (*v51)(&v7[v66], 0, 1, v99);
            *&v7[v3[7]] = v65;
            v7[v3[8]] = v95;
            (*v52)(&v7[v3[6]], 1, 1, v97);
            v67 = &v7[v3[9]];
            *v67 = 0;
            v67[1] = 0;
            *&v7[v3[10]] = 0;
            *&v7[v3[11]] = 0;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v26 = sub_1BD1D7B88(0, v26[2] + 1, 1, v26);
            }

            v69 = v26[2];
            v68 = v26[3];
            if (v69 >= v68 >> 1)
            {
              v26 = sub_1BD1D7B88((v68 > 1), v69 + 1, 1, v26);
            }

            ++v63;
            v26[2] = v69 + 1;
            sub_1BD7D5344(v7, v26 + ((*(v96 + 80) + 32) & ~*(v96 + 80)) + *(v96 + 72) * v69, type metadata accessor for UnavailablePaymentMethodItem);
            v61 = v94;
          }

          while (v62 != v63);
        }
      }

      else
      {
        v62 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v90 = v49;
        if (v62)
        {
          goto LABEL_29;
        }
      }

      v49 = v90 + 1;
      result = sub_1BD7D52E4(v98, type metadata accessor for AvailablePass);
      if (v49 == v87)
      {
        v89, v53, v54, v55, v56, v57, v58, v59;
        v47 = v82;
        v71 = *(v82 + 16);
        if (v71)
        {
          goto LABEL_45;
        }

        goto LABEL_51;
      }
    }
  }

  v38 = 0;
  v39 = MEMORY[0x1E69E7CC0];
  while (v38 < *(v36 + 16))
  {
    v40 = (*(v91 + 80) + 32) & ~*(v91 + 80);
    v41 = *(v91 + 72);
    sub_1BD7D53AC(v36 + v40 + v41 * v38, v15, type metadata accessor for AvailablePass);
    v42 = *&v15[*(v99 + 60)];
    if (v42 >> 62)
    {
      if (sub_1BE053704())
      {
LABEL_11:
        sub_1BD7D5344(v15, v95, type metadata accessor for AvailablePass);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v100 = v39;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1BD531A40(0, v39[2] + 1, 1);
          v39 = v100;
        }

        v45 = v39[2];
        v44 = v39[3];
        if (v45 >= v44 >> 1)
        {
          sub_1BD531A40((v44 > 1), v45 + 1, 1);
          v39 = v100;
        }

        v39[2] = v45 + 1;
        result = sub_1BD7D5344(v95, v39 + v40 + v45 * v41, type metadata accessor for AvailablePass);
        goto LABEL_7;
      }
    }

    else if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_11;
    }

    result = sub_1BD7D52E4(v15, type metadata accessor for AvailablePass);
LABEL_7:
    if (v94 == ++v38)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
  return result;
}

void *sub_1BD7D41A0(void **a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = type metadata accessor for UnavailablePaymentMethodItem(0);
  v7 = *(v6 - 1);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v3 == 1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v35 = v5;
  if (v5)
  {
    v11 = *(v5 + 2);
    if (v11)
    {
      v27 = v3;
      v28 = v2;
      v29 = v4;
      sub_1BD0DE19C(a1, &v33, &qword_1EBD45490, &qword_1BE0D41D0);
      sub_1BD0DE19C(&v35, &v33, &unk_1EBD45520, &qword_1BE0D4488);
      v32 = type metadata accessor for UnavailablePass(0);
      v12 = *(v32 - 8);
      v13 = *(v12 + 56);
      v30 = v12 + 56;
      v31 = v13;
      v14 = (v5 + 40);
      v10 = MEMORY[0x1E69E7CC0];
      do
      {
        v15 = *(v14 - 1);
        v16 = *v14;
        *v9 = 2;
        v17 = &v9[v6[9]];
        *v17 = v15;
        v17[1] = v16;
        v31(&v9[v6[6]], 1, 1, v32);
        *&v9[v6[7]] = 0;
        v9[v6[8]] = 2;
        v18 = v6[5];
        v19 = type metadata accessor for AvailablePass(0);
        (*(*(v19 - 8) + 56))(&v9[v18], 1, 1, v19);
        *&v9[v6[10]] = 0;
        *&v9[v6[11]] = 0;
        v20 = v16;
        v21 = v15;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1BD1D7B88(0, v10[2] + 1, 1, v10);
        }

        v23 = v10[2];
        v22 = v10[3];
        if (v23 >= v22 >> 1)
        {
          v10 = sub_1BD1D7B88((v22 > 1), v23 + 1, 1, v10);
        }

        v14 += 2;
        v10[2] = v23 + 1;
        sub_1BD7D5344(v9, v10 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v23, type metadata accessor for UnavailablePaymentMethodItem);
        --v11;
      }

      while (v11);
      v24 = &v35;
      sub_1BD0DE53C(&v35, &unk_1EBD45520, &qword_1BE0D4488);
      v33 = v27;
      v34 = v28;
      sub_1BD0DE53C(&v33, &qword_1EBD45518, &qword_1BE0D4480);
      v36 = v29;
      sub_1BD0DE53C(&v36, &unk_1EBD45520, &qword_1BE0D4488);
    }

    else
    {
      v33 = v3;
      v34 = v2;
      sub_1BD3EFCD8(v3, v2);
      sub_1BE048C84();
      sub_1BE048C84();
      sub_1BD0DE53C(&v33, &qword_1EBD45518, &qword_1BE0D4480);
      v36 = v4;
      sub_1BD0DE53C(&v36, &unk_1EBD45520, &qword_1BE0D4488);
      v10 = MEMORY[0x1E69E7CC0];
      v24 = &v35;
    }
  }

  else
  {
    v33 = v3;
    v34 = v2;
    sub_1BD3EFCD8(v3, v2);
    sub_1BE048C84();
    sub_1BD0DE53C(&v33, &qword_1EBD45518, &qword_1BE0D4480);
    v36 = v4;
    v10 = MEMORY[0x1E69E7CC0];
    v24 = &v36;
  }

  sub_1BD0DE53C(v24, &unk_1EBD45520, &qword_1BE0D4488);
  return v10;
}

void sub_1BD7D456C(uint64_t a1, char **a2)
{
  v4 = type metadata accessor for UnavailablePaymentMethodItem(0);
  v151 = *(v4 - 8);
  v152 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v144 = &v137 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v137 - v7;
  v9 = type metadata accessor for PlaceholderPass(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v137 = &v137 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = type metadata accessor for WrappedPass(0);
  MEMORY[0x1EEE9AC00](v142);
  v12 = (&v137 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v150 = type metadata accessor for AvailablePass(0);
  v143 = *(v150 - 8);
  MEMORY[0x1EEE9AC00](v150);
  v148 = &v137 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v154 = &v137 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD43B40, &qword_1BE0D42C0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v137 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v137 - v20;
  if (!a2)
  {
    return;
  }

  sub_1BD0DE19C(a1, &v137 - v20, &unk_1EBD43B40, &qword_1BE0D42C0);
  v22 = type metadata accessor for Passes(0);
  v23 = *(*(v22 - 8) + 48);
  if (v23(v21, 1, v22) == 1)
  {
    v24 = a2;
    sub_1BD0DE53C(v21, &unk_1EBD43B40, &qword_1BE0D42C0);
    v147 = 0;
  }

  else
  {
    v147 = v21[*(v22 + 40)];
    v25 = a2;
    sub_1BD7D52E4(v21, type metadata accessor for Passes);
  }

  sub_1BD0DE19C(a1, v18, &unk_1EBD43B40, &qword_1BE0D42C0);
  if (v23(v18, 1, v22) == 1)
  {
    sub_1BD0DE53C(v18, &unk_1EBD43B40, &qword_1BE0D42C0);
    v33 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v33 = *(v18 + *(v22 + 28));
    sub_1BE048C84();
    sub_1BD7D52E4(v18, type metadata accessor for Passes);
  }

  v34 = MEMORY[0x1E69E7CC0];
  v35 = v33[2];
  v153 = a2;
  v141 = v35;
  if (v35)
  {
    v36 = 0;
    v37 = *(v143 + 80);
    v139 = v12;
    v140 = v33 + ((v37 + 32) & ~v37);
    v146 = (v143 + 56);
    v138 = v33;
    do
    {
      if (v36 >= v33[2])
      {
        goto LABEL_69;
      }

      v38 = v154;
      sub_1BD7D53AC(&v140[*(v143 + 72) * v36], v154, type metadata accessor for AvailablePass);
      sub_1BD7D53AC(v38, v12, type metadata accessor for WrappedPass);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v145 = v36;
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload != 1)
        {
          v18 = type metadata accessor for PlaceholderPass;
          v44 = v137;
          sub_1BD7D5344(v12, v137, type metadata accessor for PlaceholderPass);
          v43 = *(v44 + 24);
          sub_1BE048C84();
          sub_1BD7D52E4(v44, type metadata accessor for PlaceholderPass);
          goto LABEL_20;
        }

        v18 = *v12;
        v40 = [*v12 passIdentifier];
        if (!v40)
        {
          goto LABEL_94;
        }
      }

      else
      {
        v18 = *v12;
        v40 = [*v12 uniqueID];
        if (!v40)
        {
          goto LABEL_93;
        }
      }

      v41 = v40;
      sub_1BE052434();
      v43 = v42;

LABEL_20:
      v45 = sub_1BE052404();
      v43, v46, v47, v48, v49, v50, v51, v52;
      v53 = [a2 paymentOfferCriteriaForPassUniqueID_];

      if (!v53)
      {
        goto LABEL_11;
      }

      sub_1BD0E5E8C(0, &unk_1EBD496A0, 0x1E69B8C60);
      v18 = sub_1BE052744();

      v155 = MEMORY[0x1E69E7CC0];
      if (v18 >> 62)
      {
        v61 = sub_1BE053704();
        if (!v61)
        {
LABEL_35:
          v67 = MEMORY[0x1E69E7CC0];
          goto LABEL_36;
        }
      }

      else
      {
        v61 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v61)
        {
          goto LABEL_35;
        }
      }

      v149 = v34;
      v62 = 0;
      a2 = (v18 & 0xFFFFFFFFFFFFFF8);
      do
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v63 = MEMORY[0x1BFB40900](v62, v18);
        }

        else
        {
          if (v62 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_68;
          }

          v63 = *(v18 + 8 * v62 + 32);
        }

        v64 = v63;
        v34 = (v62 + 1);
        if (__OFADD__(v62, 1))
        {
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
          goto LABEL_70;
        }

        v65 = [v153 ineligibleDetailsForCriteria_];
        v66 = [v65 isEligible];

        if (v66)
        {
        }

        else
        {
          sub_1BE0538C4();
          sub_1BE0538F4();
          sub_1BE053904();
          sub_1BE0538D4();
        }

        ++v62;
      }

      while (v34 != v61);
      v67 = v155;
      a2 = v153;
      v34 = v149;
LABEL_36:
      v18, v54, v55, v56, v57, v58, v59, v60;
      if ((v67 & 0x8000000000000000) != 0 || (v67 & 0x4000000000000000) != 0)
      {
        v18 = sub_1BE053704();
        if (v18)
        {
LABEL_39:
          if (v18 < 1)
          {
            goto LABEL_72;
          }

          v75 = 0;
          v149 = v67 & 0xC000000000000001;
          v76 = a2;
          do
          {
            v77 = v34;
            if (v149)
            {
              v78 = MEMORY[0x1BFB40900](v75, v67);
            }

            else
            {
              v78 = *(v67 + 8 * v75 + 32);
            }

            v79 = v78;
            v80 = v148;
            sub_1BD7D53AC(v154, v148, type metadata accessor for AvailablePass);
            *v8 = 4;
            v81 = v152;
            v82 = v152[6];
            v83 = type metadata accessor for UnavailablePass(0);
            (*(*(v83 - 8) + 56))(&v8[v82], 1, 1, v83);
            *&v8[v81[7]] = 0;
            v8[v81[8]] = v147;
            v84 = v81[5];
            sub_1BD7D5344(v80, &v8[v84], type metadata accessor for AvailablePass);
            (*v146)(&v8[v84], 0, 1, v150);
            v85 = &v8[v81[9]];
            *v85 = 0;
            v85[1] = 0;
            *&v8[v81[10]] = v79;
            a2 = v76;
            *&v8[v81[11]] = v76;
            v86 = v76;
            v34 = v77;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v34 = sub_1BD1D7B88(0, v77[2] + 1, 1, v77);
            }

            v88 = v34[2];
            v87 = v34[3];
            if (v88 >= v87 >> 1)
            {
              v34 = sub_1BD1D7B88((v87 > 1), v88 + 1, 1, v34);
            }

            ++v75;
            v34[2] = v88 + 1;
            sub_1BD7D5344(v8, v34 + ((*(v151 + 80) + 32) & ~*(v151 + 80)) + *(v151 + 72) * v88, type metadata accessor for UnavailablePaymentMethodItem);
          }

          while (v18 != v75);
        }
      }

      else
      {
        v18 = *(v67 + 16);
        if (v18)
        {
          goto LABEL_39;
        }
      }

      v67, v68, v69, v70, v71, v72, v73, v74;
LABEL_11:
      v12 = v139;
      v36 = v145 + 1;
      sub_1BD7D52E4(v154, type metadata accessor for AvailablePass);
      v33 = v138;
    }

    while (v36 != v141);
  }

  v33, v26, v27, v28, v29, v30, v31, v32;
  v89 = [a2 paymentOfferInstallmentCriteriaRequiringSetup];
  if (!v89)
  {

    return;
  }

  v90 = v89;
  sub_1BD0E5E8C(0, &qword_1EBD39D98, 0x1E69B8C90);
  v18 = sub_1BE052744();

  v155 = MEMORY[0x1E69E7CC0];
  if (v18 >> 62)
  {
    goto LABEL_73;
  }

  for (i = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BE053704())
  {
    v149 = v34;
    v99 = 0;
    a2 = &selRef_initWithVerificationController_fieldsModel_;
    while (1)
    {
      if ((v18 & 0xC000000000000001) != 0)
      {
        v100 = MEMORY[0x1BFB40900](v99, v18);
      }

      else
      {
        if (v99 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_71;
        }

        v100 = *(v18 + 8 * v99 + 32);
      }

      v101 = v100;
      v34 = (v99 + 1);
      if (__OFADD__(v99, 1))
      {
        break;
      }

      v102 = [v153 ineligibleDetailsForCriteria_];
      v103 = [v102 isEligible];

      if (v103)
      {
      }

      else
      {
        sub_1BE0538C4();
        sub_1BE0538F4();
        sub_1BE053904();
        sub_1BE0538D4();
      }

      ++v99;
      if (v34 == i)
      {
        v104 = v155;
        a2 = v153;
        v34 = v149;
        goto LABEL_75;
      }
    }

LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    ;
  }

  v104 = MEMORY[0x1E69E7CC0];
LABEL_75:
  v18, v91, v92, v93, v94, v95, v96, v97;
  v105 = v104;
  if ((v104 & 0x8000000000000000) == 0 && (v104 & 0x4000000000000000) == 0)
  {
    v106 = v104[2];
    if (v106)
    {
      goto LABEL_78;
    }

LABEL_90:
    v129 = v105;

    v129, v130, v131, v132, v133, v134, v135, v136;
    return;
  }

  v128 = sub_1BE053704();
  v105 = v104;
  v106 = v128;
  if (!v128)
  {
    goto LABEL_90;
  }

LABEL_78:
  if (v106 < 1)
  {
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
  }

  else
  {
    v107 = v34;
    v108 = 0;
    v154 = v105 & 0xC000000000000001;
    v109 = v144;
    v110 = (v143 + 56);
    v111 = v105;
    do
    {
      if (v154)
      {
        v112 = MEMORY[0x1BFB40900](v108);
      }

      else
      {
        v112 = *(v105 + 8 * v108 + 32);
      }

      v113 = v112;
      *v109 = 5;
      v114 = v152;
      v115 = v152[6];
      v116 = type metadata accessor for UnavailablePass(0);
      (*(*(v116 - 8) + 56))(&v109[v115], 1, 1, v116);
      *&v109[v114[7]] = 0;
      v109[v114[8]] = 2;
      (*v110)(&v109[v114[5]], 1, 1, v150);
      v117 = &v109[v114[9]];
      *v117 = 0;
      v117[1] = 0;
      *&v109[v114[10]] = v113;
      *&v109[v114[11]] = a2;
      v118 = a2;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v107 = sub_1BD1D7B88(0, v107[2] + 1, 1, v107);
      }

      v120 = v107[2];
      v119 = v107[3];
      if (v120 >= v119 >> 1)
      {
        v107 = sub_1BD1D7B88((v119 > 1), v120 + 1, 1, v107);
      }

      ++v108;
      v107[2] = v120 + 1;
      sub_1BD7D5344(v144, v107 + ((*(v151 + 80) + 32) & ~*(v151 + 80)) + *(v151 + 72) * v120, type metadata accessor for UnavailablePaymentMethodItem);
      v105 = v111;
    }

    while (v106 != v108);

    v111, v121, v122, v123, v124, v125, v126, v127;
  }
}

uint64_t sub_1BD7D51F4(uint64_t a1, void **a2, char **a3)
{
  v19 = MEMORY[0x1E69E7CC0];
  v6 = sub_1BD7D3794(a1);
  sub_1BDA7A760(v6);
  v7 = sub_1BD7D41A0(a2);
  sub_1BDA7A760(v7);
  sub_1BD7D456C(a1, a3);
  sub_1BDA7A760(v8);
  v9 = v19;
  v18 = v19;
  sub_1BE048C84();
  sub_1BD7D1AFC(&v18);

  sub_1BD0DE53C(a2, &qword_1EBD45490, &qword_1BE0D41D0);
  v9, v10, v11, v12, v13, v14, v15, v16;
  sub_1BD0DE53C(a1, &unk_1EBD43B40, &qword_1BE0D42C0);
  return v18;
}

uint64_t sub_1BD7D52E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BD7D5344(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BD7D53AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t getEnumTagSinglePayload for UnavailablePaymentMethodItem.UnavailablePaymentMethodItemType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UnavailablePaymentMethodItem.UnavailablePaymentMethodItemType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1BD7D558C(uint64_t a1)
{
  sub_1BD7D5738(319, &qword_1EBD365F8, type metadata accessor for AvailablePass);
  if (v1 <= 0x3F)
  {
    sub_1BD7D5738(319, &qword_1EBD4F650, type metadata accessor for UnavailablePass);
    if (v2 <= 0x3F)
    {
      sub_1BD10315C(319, &qword_1EBD392F0, &qword_1EBD43BA0, 0x1E69B8B40);
      if (v3 <= 0x3F)
      {
        sub_1BD1C2DD8(319, &qword_1EBD39308, MEMORY[0x1E69E6370]);
        if (v4 <= 0x3F)
        {
          sub_1BD1C2DD8(319, &qword_1EBD4D0C8, &type metadata for BankAccount);
          if (v5 <= 0x3F)
          {
            sub_1BD10315C(319, &qword_1EBD53E98, &unk_1EBD496A0, 0x1E69B8C60);
            if (v6 <= 0x3F)
            {
              sub_1BD10315C(319, &qword_1EBD39320, &qword_1EBD496B0, 0x1E69B8CE8);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_1BD7D5738(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1BE0534B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1BD7D5790()
{
  result = qword_1EBD53EA0;
  if (!qword_1EBD53EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53EA0);
  }

  return result;
}

unint64_t sub_1BD7D57E8()
{
  result = qword_1EBD53EA8;
  if (!qword_1EBD53EA8)
  {
    type metadata accessor for UnavailablePaymentMethodItem(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53EA8);
  }

  return result;
}

unint64_t sub_1BD7D5840(uint64_t a1, void *a2)
{
  v3 = sub_1BE053A44();
  a2, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1BD7D5970(uint64_t (*a1)(unint64_t, unint64_t, void, uint64_t), uint64_t a2)
{
  v45 = a2;
  v46 = a1;
  v3 = sub_1BE04BAC4();
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v44 = v2;
  v7 = sub_1BD188278(v2, KeyPath);
  KeyPath, v8, v9, v10, v11, v12, v13, v14;
  v22 = v7[2];
  v23 = v7 + 4;
  v50 = 0x80000001BE1182A0;
  v51 = 0x80000001BE1182F0;
  v48 = 0x80000001BE118230;
  v49 = 0x80000001BE118280;
  v47 = "Auto Reload Set Up";
  while (2)
  {
    if (v22)
    {
      v24 = 0xEF65636976654420;
      v33 = "ection";
      switch(*v23)
      {
        case 1:
          v24 = v48;
          goto LABEL_3;
        case 2:
          v24 = 0xE90000000000006FLL;
          goto LABEL_3;
        case 3:
          v24 = 0xEC0000006E6F6974;
          goto LABEL_3;
        case 4:
          goto LABEL_14;
        case 5:
          v24 = v49;
          goto LABEL_3;
        case 6:
          v24 = v50;
          goto LABEL_3;
        case 7:
          v24 = 0xEC000000746C7561;
          goto LABEL_3;
        case 8:
          v24 = 0xEE00746E656D6C6CLL;
          goto LABEL_3;
        case 9:
          v24 = 0xE90000000000006ELL;
          goto LABEL_3;
        case 0xA:
          v24 = 0xED00006E6F697461;
          goto LABEL_3;
        case 0xB:
          v24 = v51;
          goto LABEL_3;
        case 0xC:
          v24 = 0xEC00000068637461;
          goto LABEL_3;
        case 0xD:
          v33 = v47;
LABEL_14:
          v24 = (v33 | 0x8000000000000000);
          if (0x80000001BE118260 != (v33 | 0x8000000000000000))
          {
            goto LABEL_3;
          }

          v7, v15, v16, v17, v18, v19, v20, v21;
          v7 = v24;
          goto LABEL_25;
        default:
LABEL_3:
          v25 = sub_1BE053B84();
          v24, v26, v27, v28, v29, v30, v31, v32;
          ++v23;
          --v22;
          if ((v25 & 1) == 0)
          {
            continue;
          }

LABEL_25:
          v7, v15, v16, v17, v18, v19, v20, v21;
          v38 = 0x80000001BE13A710;
          v37 = 0xD000000000000013;
          break;
      }

      goto LABEL_26;
    }

    break;
  }

  v7, v15, v16, v17, v18, v19, v20, v21;
  v34 = v44;
  sub_1BE04BC34();
  v35 = sub_1BE04BA54();
  (*(v42 + 8))(v5, v43);
  if (v35)
  {
    v36 = [*&v34[OBJC_IVAR____TtC9PassKitUI38ProvisioningPrecursorEducationFlowItem_precursorController] devicePrimaryPrecursorRequest];
    if (v36)
    {

      v37 = 0;
      v38 = 0;
LABEL_26:
      v40 = 0;
      return v46(v37, v38, 0, v40);
    }

    v39 = "flow type not setup assistant";
    v37 = 0xD00000000000001CLL;
  }

  else
  {
    v39 = "debug configuration";
    v37 = 0xD00000000000001DLL;
  }

  v38 = v39 | 0x8000000000000000;
  v40 = 1;
  return v46(v37, v38, 0, v40);
}

void sub_1BD7D5D9C(void (*a1)(void), uint64_t a2)
{
  v93 = a1;
  v94 = a2;
  v3 = sub_1BE04BAC4();
  v91 = *(v3 - 8);
  v92 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v90 = &v87 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BE04B944();
  v88 = *(v5 - 8);
  v89 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v87 = &v87 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v95 = v2;
  v8 = sub_1BD188278(v2, KeyPath);
  KeyPath, v9, v10, v11, v12, v13, v14, v15;
  v23 = v8[2];
  v24 = v8 + 4;
  v99 = 0x80000001BE1182A0;
  v100 = 0x80000001BE1182F0;
  v97 = 0x80000001BE118230;
  v98 = 0x80000001BE118280;
  v96 = "Auto Reload Set Up";
  while (2)
  {
    if (v23)
    {
      v25 = 0xEF65636976654420;
      v34 = "ection";
      switch(*v24)
      {
        case 1:
          v25 = v97;
          goto LABEL_3;
        case 2:
          v25 = 0xE90000000000006FLL;
          goto LABEL_3;
        case 3:
          v25 = 0xEC0000006E6F6974;
          goto LABEL_3;
        case 4:
          goto LABEL_14;
        case 5:
          v25 = v98;
          goto LABEL_3;
        case 6:
          v25 = v99;
          goto LABEL_3;
        case 7:
          v25 = 0xEC000000746C7561;
          goto LABEL_3;
        case 8:
          v25 = 0xEE00746E656D6C6CLL;
          goto LABEL_3;
        case 9:
          v25 = 0xE90000000000006ELL;
          goto LABEL_3;
        case 0xA:
          v25 = 0xED00006E6F697461;
          goto LABEL_3;
        case 0xB:
          v25 = v100;
          goto LABEL_3;
        case 0xC:
          v25 = 0xEC00000068637461;
          goto LABEL_3;
        case 0xD:
          v34 = v96;
LABEL_14:
          v25 = (v34 | 0x8000000000000000);
          if (0x80000001BE118260 != (v34 | 0x8000000000000000))
          {
            goto LABEL_3;
          }

          v8, v16, v17, v18, v19, v20, v21, v22;
          v8 = v25;
          goto LABEL_22;
        default:
LABEL_3:
          v26 = sub_1BE053B84();
          v25, v27, v28, v29, v30, v31, v32, v33;
          ++v24;
          --v23;
          if ((v26 & 1) == 0)
          {
            continue;
          }

LABEL_22:
          v8, v16, v17, v18, v19, v20, v21, v22;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BDF8, &unk_1BE0BD960);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1BE0B98D0;
          v102 = 1701869940;
          v103 = 0xE400000000000000;
          v39 = MEMORY[0x1E69E6158];
          sub_1BE0537C4();
          *(inited + 96) = v39;
          strcpy((inited + 72), "precursorPass");
          *(inited + 86) = -4864;
          v102 = 0x736E6F69746361;
          v103 = 0xE700000000000000;
          sub_1BE0537C4();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53EE8, &unk_1BE0F9B30);
          v40 = swift_allocObject();
          *(v40 + 16) = xmmword_1BE0B69E0;
          v41 = sub_1BD1AB78C(&unk_1F3B8DE90);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD49250, &qword_1BE0DE1E8);
          swift_arrayDestroy();
          *(v40 + 32) = v41;
          *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53EF0, &unk_1BE0F9B40);
          *(inited + 144) = v40;
          v102 = 0xD000000000000017;
          v103 = 0x80000001BE13A6F0;
          sub_1BE0537C4();
          v35 = v95;
          v42 = v87;
          sub_1BE04BB94();
          v43 = sub_1BE04B934();
          (*(v88 + 8))(v42, v89);
          v44 = [v43 secureElementIdentifiers];
          if (!v44)
          {
            goto LABEL_30;
          }

          v45 = v44;
          swift_unknownObjectRelease();
          v46 = sub_1BE052744();

          if (!v46[2])
          {
            __break(1u);
            goto LABEL_29;
          }

          sub_1BD038CD0((v46 + 4), inited + 216);
          v46, v47, v48, v49, v50, v51, v52, v53;
          v54 = sub_1BD1AB16C(inited);
          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD403B0, &unk_1BE0D5150);
          swift_arrayDestroy();
          v55 = objc_allocWithZone(MEMORY[0x1E69B8AE0]);
          v56 = sub_1BE052224();
          v54, v57, v58, v59, v60, v61, v62, v63;
          v37 = [v55 initWithDictionary_];

          if (!v37)
          {
            goto LABEL_31;
          }

          break;
      }
    }

    else
    {
      v8, v16, v17, v18, v19, v20, v21, v22;
      v35 = v95;
      v36 = [*&v95[OBJC_IVAR____TtC9PassKitUI38ProvisioningPrecursorEducationFlowItem_precursorController] devicePrimaryPrecursorRequest];
      if (!v36)
      {
        v93();
        return;
      }

      v37 = v36;
    }

    break;
  }

  v64 = *&v35[OBJC_IVAR____TtC9PassKitUI38ProvisioningPrecursorEducationFlowItem_context];
  v65 = *&v35[OBJC_IVAR____TtC9PassKitUI38ProvisioningPrecursorEducationFlowItem_provisionedPasses];
  v66 = type metadata accessor for ProvisioningPrecursorEducationViewController();
  v67 = objc_allocWithZone(v66);
  *&v67[OBJC_IVAR____TtC9PassKitUI44ProvisioningPrecursorEducationViewController_delegate + 8] = 0;
  v68 = swift_unknownObjectWeakInit();
  *&v67[OBJC_IVAR____TtC9PassKitUI44ProvisioningPrecursorEducationViewController_provisioningContext] = v64;
  *&v67[OBJC_IVAR____TtC9PassKitUI44ProvisioningPrecursorEducationViewController_provisionedPasses] = v65;
  *&v67[OBJC_IVAR____TtC9PassKitUI44ProvisioningPrecursorEducationViewController_precursorRequest] = v37;
  *(v68 + 8) = &off_1F3BBCD70;
  swift_unknownObjectWeakAssign();
  v69 = v37;
  sub_1BE048964();
  v70 = v65;
  v71 = v90;
  sub_1BE04BC34();
  v72 = sub_1BE04B9A4();
  (*(v91 + 8))(v71, v92);
  v101.receiver = v67;
  v101.super_class = v66;
  v73 = objc_msgSendSuper2(&v101, sel_initWithContext_, v72);
  if (v73)
  {
    v74 = v73;
    v75 = v73;
    [v75 setExplanationViewControllerDelegate_];
    v76 = [v75 navigationItem];
    [v76 setHidesBackButton_];

    v77 = *&v35[OBJC_IVAR____TtC9PassKitUI38ProvisioningPrecursorEducationFlowItem_viewController];
    *&v35[OBJC_IVAR____TtC9PassKitUI38ProvisioningPrecursorEducationFlowItem_viewController] = v74;
    v78 = v75;

    v79 = swift_allocObject();
    v79[2] = v93;
    v79[3] = v94;
    sub_1BE048964();
    sub_1BD239CC8(sub_1BD19E0B8, v79);
    v79, v80, v81, v82, v83, v84, v85, v86;
  }

  else
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }
}

uint64_t sub_1BD7D6600()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI38ProvisioningPrecursorEducationFlowItem_identifier);
  sub_1BE048C84();
  return v1;
}

uint64_t sub_1BD7D663C(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9PassKitUI38ProvisioningPrecursorEducationFlowItem_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void *sub_1BD7D6690()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI38ProvisioningPrecursorEducationFlowItem_viewController);
  v2 = v1;
  return v1;
}

id sub_1BD7D66C0(uint64_t a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_1BE04B944();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v3[OBJC_IVAR____TtC9PassKitUI38ProvisioningPrecursorEducationFlowItem_viewController] = 0;
  *&v3[OBJC_IVAR____TtC9PassKitUI38ProvisioningPrecursorEducationFlowItem_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v11 = &v3[OBJC_IVAR____TtC9PassKitUI38ProvisioningPrecursorEducationFlowItem_identifier];
  *v11 = 0xD00000000000001ALL;
  *(v11 + 1) = 0x80000001BE13A770;
  *&v3[OBJC_IVAR____TtC9PassKitUI38ProvisioningPrecursorEducationFlowItem__debugConfiguration] = &type metadata for ProvisioningScreenDebugConfiguration;
  *&v3[OBJC_IVAR____TtC9PassKitUI38ProvisioningPrecursorEducationFlowItem_context] = a1;
  *&v3[OBJC_IVAR____TtC9PassKitUI38ProvisioningPrecursorEducationFlowItem_provisionedPasses] = a2;
  sub_1BE048964();
  v12 = a2;
  v13 = sub_1BE04BC84();
  sub_1BE04BB94();
  v14 = sub_1BE04B8E4();
  (*(v8 + 8))(v10, v7);
  v15 = [objc_allocWithZone(MEMORY[0x1E69B9088]) initWithPass:v13 webService:v14];

  *&v3[OBJC_IVAR____TtC9PassKitUI38ProvisioningPrecursorEducationFlowItem_precursorController] = v15;
  v17.receiver = v3;
  v17.super_class = ObjectType;
  return objc_msgSendSuper2(&v17, sel_init);
}

uint64_t sub_1BD7D68C4@<X0>(char *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v191 = a4;
  v192 = sub_1BE049B04();
  v190 = *(v192 - 8);
  MEMORY[0x1EEE9AC00](v192);
  v189 = &v181 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = sub_1BE04BD74();
  v196 = *(v195 - 8);
  MEMORY[0x1EEE9AC00](v195);
  v194 = &v181 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = sub_1BE04EB64();
  v187 = *(v186 - 8);
  MEMORY[0x1EEE9AC00](v186);
  v183 = &v181 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53EF8, &qword_1BE0F9BF8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53F00, &qword_1BE0F9C00);
  v185 = *(v184 - 8);
  MEMORY[0x1EEE9AC00](v184);
  v12 = &v181 - v11;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53F08, &qword_1BE0F9C08);
  MEMORY[0x1EEE9AC00](v197);
  v193 = &v181 - v13;
  sub_1BE0528A4();
  sub_1BE048964();
  v14 = a3;
  sub_1BE048964();
  v15 = sub_1BE052894();
  v16 = swift_allocObject();
  v17 = MEMORY[0x1E69E85E0];
  v16[2] = v15;
  v16[3] = v17;
  v16[4] = a1;
  v16[5] = a2;
  v16[6] = v14;
  sub_1BE048964();
  sub_1BE048964();
  v18 = v14;
  v19 = sub_1BE052894();
  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = v17;
  v20[4] = a1;
  v20[5] = a2;
  v20[6] = v18;
  sub_1BE051934();
  v198 = a1;
  v205 = a1;
  v206 = a2;
  v188 = v18;
  v207 = v18;
  v202 = a1;
  v203 = a2;
  v21 = a2;
  v204 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53F10, &unk_1BE0F9C10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37358, &qword_1BE0D73D0);
  sub_1BD7D9EC8(&qword_1EBD3A338, MEMORY[0x1E6967AD0], MEMORY[0x1E6967AE0]);
  sub_1BD7D941C();
  sub_1BD0DE4F4(&qword_1EBD4D3F0, &qword_1EBD37358, &qword_1BE0D73D0, MEMORY[0x1E697D658]);
  sub_1BE0517E4();
  v22 = v183;
  sub_1BE04EB54();
  sub_1BD0DE4F4(&qword_1EBD53F40, &qword_1EBD53F00, &qword_1BE0F9C00, MEMORY[0x1E697D690]);
  v23 = v193;
  v24 = v184;
  v25 = v186;
  sub_1BE050924();
  (*(v187 + 1))(v22, v25);
  (*(v185 + 8))(v12, v24);
  v26 = v198;
  v213 = v198;
  v214 = v21;
  v27 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53F48, &qword_1BE0F9C30);
  sub_1BE0516A4();
  v28 = v210;
  KeyPath = swift_getKeyPath();
  v213 = v28;
  sub_1BD7D9EC8(&qword_1EBD53F50, _s9ViewModelCMa_4, &unk_1BE0F9E60);
  sub_1BE04B594();
  KeyPath, v30, v31, v32, v33, v34, v35, v36;
  LOBYTE(v25) = v28[OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__isUpdatingTransactionCategory];
  v28, v37, v38, v39, v40, v41, v42, v43;
  v44 = swift_getKeyPath();
  v45 = swift_allocObject();
  *(v45 + 16) = v25;
  v46 = &v23[*(v197 + 36)];
  *v46 = v44;
  v46[1] = sub_1BD10DF54;
  v46[2] = v45;
  v187 = "ducationFlowItem";
  (*(v196 + 104))(v194, *MEMORY[0x1E69B80D8], v195);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_1BE0B6CA0;
  v48 = v26;
  v213 = v26;
  v214 = v27;
  v49 = v27;
  sub_1BE0516A4();
  v50 = v210;
  v51 = swift_getKeyPath();
  v213 = v50;
  sub_1BE04B594();
  v51, v52, v53, v54, v55, v56, v57, v58;
  v60 = *&v50[OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__displayName];
  v59 = *&v50[OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__displayName + 8];
  sub_1BE048C84();
  v50, v61, v62, v63, v64, v65, v66, v67;
  v68 = MEMORY[0x1E69E6158];
  *(v47 + 56) = MEMORY[0x1E69E6158];
  v69 = sub_1BD110550();
  *(v47 + 64) = v69;
  *(v47 + 32) = v60;
  *(v47 + 40) = v59;
  v213 = v48;
  v214 = v49;
  sub_1BE0516A4();
  v70 = v210;
  v71 = swift_getKeyPath();
  v213 = v70;
  sub_1BE04B594();
  v71, v72, v73, v74, v75, v76, v77, v78;
  v79 = OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__transactionCategoryToConfirm;
  swift_beginAccess();
  v80 = v190;
  v81 = &v70[v79];
  v82 = v189;
  v83 = v192;
  (*(v190 + 16))(v189, v81, v192);
  v70, v84, v85, v86, v87, v88, v89, v90;
  v91 = v82;
  v92 = sub_1BE049AE4();
  v94 = v93;
  (*(v80 + 8))(v91, v83);
  *(v47 + 96) = v68;
  *(v47 + 104) = v69;
  *(v47 + 72) = v92;
  *(v47 + 80) = v94;
  v95 = v194;
  v96 = sub_1BE04B714();
  v98 = v97;
  v47, v97, v99, v100, v101, v102, v103, v104;
  (*(v196 + 8))(v95, v195);
  v210 = v96;
  v211 = v98;
  sub_1BD0DDEBC();
  v105 = sub_1BE0506C4();
  v196 = v106;
  LOBYTE(v80) = v107;
  v195 = v108;
  v109 = v198;
  v208 = v198;
  v209 = v49;
  v110 = v49;
  v182 = v49;
  sub_1BE0516C4();
  v112 = v210;
  v111 = v211;
  v113 = v212;
  v114 = swift_getKeyPath();
  v210 = v112;
  v211 = v111;
  v212 = v113;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53F58, &qword_1BE0F9D10);
  sub_1BE051904();
  v114, v115, v116, v117, v118, v119, v120, v121;
  v122 = v208;
  v123 = v209;
  v113, v124, v125, v126, v127, v128, v129, v130;
  v111, v131, v132, v133, v134, v135, v136, v137;
  v112, v138, v139, v140, v141, v142, v143, v144;
  v199 = v109;
  v200 = v110;
  v145 = v188;
  v201 = v188;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52B80, &qword_1BE0F6B10);
  sub_1BD7D9680();
  sub_1BD0DE4F4(&qword_1EBD52BC0, &qword_1EBD52B80, &qword_1BE0F6B10, MEMORY[0x1E6981F48]);
  v146 = v191;
  v147 = v196;
  v148 = v195;
  v149 = v193;
  sub_1BE050C74();
  v123, v150, v151, v152, v153, v154, v155, v156;
  v122, v157, v158, v159, v160, v161, v162, v163;
  sub_1BD0DDF10(v105, v147, (v80 & 1), v164, v165, v166, v167, v168);
  v148, v169, v170, v171, v172, v173, v174, v175;
  sub_1BD0B6E94(v149);
  v176 = swift_allocObject();
  v177 = v182;
  v176[2] = v198;
  v176[3] = v177;
  v176[4] = v145;
  v178 = (v146 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53F68, &qword_1BE0F9D28) + 36));
  sub_1BE04E7B4();
  sub_1BE048964();
  sub_1BE048964();
  v179 = v145;
  result = sub_1BE0528B4();
  *v178 = &unk_1BE0F9D20;
  v178[1] = v176;
  return result;
}

void sub_1BD7D7484(uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53F48, &qword_1BE0F9C30);
  sub_1BE0516A4();
  KeyPath = swift_getKeyPath();
  sub_1BD7D9EC8(&qword_1EBD53F50, _s9ViewModelCMa_4, &unk_1BE0F9E60);
  sub_1BE04B594();
  KeyPath, v4, v5, v6, v7, v8, v9, v10;
  v11 = OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__selectedCategory;
  swift_beginAccess();
  v12 = sub_1BE049B04();
  (*(*(v12 - 8) + 16))(a2, &v20[v11], v12);
  v20, v13, v14, v15, v16, v17, v18, v19;
}

void sub_1BD7D75A8(char *a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v8 = sub_1BE049B04();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v124 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = a4;
  v131 = a5;
  v126 = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53F48, &qword_1BE0F9C30);
  sub_1BE0516A4();
  v12 = v128;
  KeyPath = swift_getKeyPath();
  v130 = v12;
  sub_1BD7D9EC8(&qword_1EBD53F50, _s9ViewModelCMa_4, &unk_1BE0F9E60);
  sub_1BE04B594();
  KeyPath, v14, v15, v16, v17, v18, v19, v20;
  v21 = OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__selectedCategory;
  swift_beginAccess();
  v125 = *(v9 + 16);
  v125(v11, &v12[v21], v8);
  v12, v22, v23, v24, v25, v26, v27, v28;
  sub_1BD7D9EC8(&qword_1EBD3A340, MEMORY[0x1E6967AD0], MEMORY[0x1E6967AE8]);
  LOBYTE(v21) = sub_1BE052334();
  v29 = *(v9 + 8);
  v124[1] = v9 + 8;
  v29(v11, v8);
  if ((v21 & 1) == 0)
  {
    v124[0] = v29;
    v30 = v126;
    v128 = a4;
    v129 = v126;
    sub_1BE0516A4();
    v31 = v127;
    v125(v11, a1, v8);
    sub_1BD7DAC68(v11);
    v31, v32, v33, v34, v35, v36, v37, v38;
    v128 = a4;
    v129 = v30;
    sub_1BE0516A4();
    v39 = v127;
    v40 = swift_getKeyPath();
    v128 = v39;
    sub_1BE04B594();
    v40, v41, v42, v43, v44, v45, v46, v47;
    v48 = *&v39[OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__relatedTransactionIDs];
    sub_1BE048C84();
    v39, v49, v50, v51, v52, v53, v54, v55;
    v56 = v48[2];
    v48, v57, v58, v59, v60, v61, v62, v63;
    if (v56)
    {
      v128 = a4;
      v129 = v126;
      sub_1BE0516A4();
      v71 = v127;
      if (v127[OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__isPresentingConfirmationDialog] == 1)
      {
        v127[OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__isPresentingConfirmationDialog] = 1;
        v71, v64, v65, v66, v67, v68, v69, v70;
      }

      else
      {
        v109 = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](v109);
        v124[-2] = v71;
        LOBYTE(v124[-1]) = 1;
        v128 = v71;
        sub_1BE04B584();
        v71, v110, v111, v112, v113, v114, v115, v116;
        v109, v117, v118, v119, v120, v121, v122, v123;
      }
    }

    else
    {
      v128 = a4;
      v129 = v126;
      sub_1BE0516A4();
      v72 = v127;
      v73 = swift_getKeyPath();
      v126 = OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel___observationRegistrar;
      v128 = v72;
      sub_1BE04B594();
      v73, v74, v75, v76, v77, v78, v79, v80;
      v81 = OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__transactionCategoryToConfirm;
      swift_beginAccess();
      v125(v11, &v72[v81], v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C910, &qword_1BE0BF5D0);
      v82 = sub_1BE04AFE4();
      v83 = *(v82 - 8);
      v84 = (*(v83 + 80) + 32) & ~*(v83 + 80);
      v85 = swift_allocObject();
      *(v85 + 1) = xmmword_1BE0B69E0;
      v86 = swift_getKeyPath();
      v127 = v72;
      sub_1BE04B594();
      v86, v87, v88, v89, v90, v91, v92, v93;
      v94 = OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__id;
      swift_beginAccess();
      (*(v83 + 16))(&v85[v84], &v72[v94], v82);
      sub_1BD7DD6C0(v11, v85);
      v72, v95, v96, v97, v98, v99, v100, v101;
      v85, v102, v103, v104, v105, v106, v107, v108;
      (v124[0])(v11, v8);
    }
  }
}

uint64_t sub_1BD7D7B38(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53F48, &qword_1BE0F9C30);
  sub_1BE0516A4();
  sub_1BD7DB2E4();
  v16, v6, v7, v8, v9, v10, v11, v12;
  swift_getKeyPath();
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  sub_1BE048964();
  v14 = a3;
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53F70, &qword_1BE0F9DC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53F28, &qword_1BE0F9C20);
  sub_1BD0DE4F4(&qword_1EBD53F78, &qword_1EBD53F70, &qword_1BE0F9DC8, MEMORY[0x1E69E6338]);
  sub_1BD7D9C04();
  sub_1BD7D94A0();
  return sub_1BE0519C4();
}

uint64_t sub_1BD7D7CB0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53F38, &qword_1BE0F9C28);
  sub_1BD7D9530();
  return sub_1BE051A44();
}

uint64_t sub_1BD7D7D28(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_getKeyPath();
  v7 = swift_allocObject();
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = a4;
  sub_1BE048964();
  v8 = a4;
  sub_1BE048C84();
  sub_1BE048964();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53F88, &qword_1BE0F9DD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53F90, &qword_1BE0F9E08);
  sub_1BD0DE4F4(&qword_1EBD53F98, &qword_1EBD53F88, &qword_1BE0F9DD0, MEMORY[0x1E69E6338]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD37358, &qword_1BE0D73D0);
  sub_1BE049B04();
  sub_1BD0DE4F4(&qword_1EBD4D3F0, &qword_1EBD37358, &qword_1BE0D73D0, MEMORY[0x1E697D658]);
  sub_1BD7D9EC8(&qword_1EBD3A338, MEMORY[0x1E6967AD0], MEMORY[0x1E6967AE0]);
  swift_getOpaqueTypeConformance2();
  return sub_1BE0519C4();
}

uint64_t sub_1BD7D7F28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37358, &qword_1BE0D73D0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v17[-v12];
  v22 = a1;
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v21 = a1;
  sub_1BE051614();
  v14 = a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37348, &qword_1BE0F9E10) + 36);
  v15 = sub_1BE049B04();
  (*(*(v15 - 8) + 16))(v14, a1, v15);
  *(v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD37350, &unk_1BE0B1370) + 36)) = 1;
  return (*(v11 + 32))(a5, v13, v10);
}

uint64_t sub_1BD7D80F0@<X0>(uint64_t a1@<X8>)
{
  sub_1BE049AE4();
  sub_1BD0DDEBC();
  result = sub_1BE0506C4();
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  *(a1 + 24) = v6;
  return result;
}

uint64_t sub_1BD7D814C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE04BD74();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x1E69B80D8], v2, v4);
  v7 = sub_1BE04B714();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  v14[0] = v7;
  v14[1] = v9;
  sub_1BD0DDEBC();
  result = sub_1BE0506C4();
  *a1 = result;
  *(a1 + 8) = v11;
  *(a1 + 16) = v12 & 1;
  *(a1 + 24) = v13;
  return result;
}

uint64_t sub_1BD7D8298@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1BE049B04();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a1;
  v38 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53F48, &qword_1BE0F9C30);
  sub_1BE0516A4();
  v10 = v35;
  KeyPath = swift_getKeyPath();
  v37 = v10;
  sub_1BD7D9EC8(&qword_1EBD53F50, _s9ViewModelCMa_4, &unk_1BE0F9E60);
  sub_1BE04B594();
  KeyPath, v12, v13, v14, v15, v16, v17, v18;
  v19 = OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__selectedCategory;
  swift_beginAccess();
  (*(v7 + 16))(v9, &v10[v19], v6);
  v10, v20, v21, v22, v23, v24, v25, v26;
  v27 = sub_1BE049AE4();
  v29 = v28;
  (*(v7 + 8))(v9, v6);
  v35 = v27;
  v36 = v29;
  sub_1BD0DDEBC();
  result = sub_1BE0506C4();
  *a3 = result;
  *(a3 + 8) = v31;
  *(a3 + 16) = v32 & 1;
  *(a3 + 24) = v33;
  return result;
}

uint64_t sub_1BD7D8484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_1BE049B04();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30[0] = a1;
  v30[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53F48, &qword_1BE0F9C30);
  sub_1BE0516A4();
  v12 = v30[3];
  KeyPath = swift_getKeyPath();
  v30[0] = v12;
  sub_1BD7D9EC8(&qword_1EBD53F50, _s9ViewModelCMa_4, &unk_1BE0F9E60);
  sub_1BE04B594();
  KeyPath, v14, v15, v16, v17, v18, v19, v20;
  v21 = OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__selectedCategory;
  swift_beginAccess();
  (*(v9 + 16))(v11, &v12[v21], v8);
  v12, v22, v23, v24, v25, v26, v27, v28;
  sub_1BD7D98A0(v11, a3);
  (*(v9 + 8))(v11, v8);
  result = sub_1BE051544();
  *a4 = result;
  return result;
}

uint64_t sub_1BD7D8654@<X0>(char *a1@<X0>, const char *a2@<X1>, void *a3@<X2>, char *a4@<X8>)
{
  v93 = a1;
  v94 = a3;
  v105 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD396F8, &qword_1BE0B8910);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v103 = &v91 - v6;
  v7 = sub_1BE04BD74();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3DF80, &qword_1BE0BB860);
  v101 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v104 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v102 = &v91 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v108 = &v91 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v100 = &v91 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v107 = &v91 - v20;
  v22 = MEMORY[0x1EEE9AC00](v21);
  v99 = &v91 - v23;
  v24 = *MEMORY[0x1E69B80D8];
  v25 = *(v8 + 104);
  v106 = v8 + 104;
  v96 = v24;
  v92 = v7;
  v25(v10, v24, v7, v22);
  v26 = sub_1BE04B714();
  v28 = v27;
  v29 = *(v8 + 8);
  v97 = v8 + 8;
  v98 = v29;
  v29(v10, v7);
  v110 = v26;
  v111 = v28;
  v30 = swift_allocObject();
  v32 = v93;
  v31 = v94;
  v30[2] = v93;
  v30[3] = a2;
  v30[4] = v31;
  v95 = sub_1BD0DDEBC();
  sub_1BE048964();
  sub_1BE048964();
  v94 = v31;
  sub_1BE051744();
  v33 = v92;
  (v25)(v10, v24, v92);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1BE0B69E0;
  v110 = v32;
  v111 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53F48, &qword_1BE0F9C30);
  sub_1BE0516A4();
  v35 = v109;
  KeyPath = swift_getKeyPath();
  v110 = v35;
  sub_1BD7D9EC8(&qword_1EBD53F50, _s9ViewModelCMa_4, &unk_1BE0F9E60);
  sub_1BE04B594();
  KeyPath, v37, v38, v39, v40, v41, v42, v43;
  v44 = *&v35[OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__relatedTransactionIDs];
  sub_1BE048C84();
  v35, v45, v46, v47, v48, v49, v50, v51;
  v52 = v44[2];
  v44, v53, v54, v55, v56, v57, v58, v59;
  v60 = MEMORY[0x1E69E65A8];
  *(v34 + 56) = MEMORY[0x1E69E6530];
  *(v34 + 64) = v60;
  *(v34 + 32) = v52 + 1;
  v61 = sub_1BE04B714();
  v63 = v62;
  v34, v62, v64, v65, v66, v67, v68, v69;
  v70 = v98;
  v98(v10, v33);
  v110 = v61;
  v111 = v63;
  v71 = swift_allocObject();
  v71[2] = v32;
  v71[3] = a2;
  v72 = v94;
  v71[4] = v94;
  sub_1BE048964();
  sub_1BE048964();
  v73 = v72;
  v74 = v107;
  sub_1BE051744();
  (v25)(v10, v96, v33);
  v75 = sub_1BE04B714();
  v77 = v76;
  v70(v10, v33);
  v110 = v75;
  v111 = v77;
  v78 = v103;
  sub_1BE04E1B4();
  v79 = sub_1BE04E1D4();
  (*(*(v79 - 8) + 56))(v78, 0, 1, v79);
  v80 = v100;
  sub_1BE051724();
  v81 = v101;
  v82 = *(v101 + 16);
  v83 = v108;
  v84 = v99;
  v82(v108, v99, v11);
  v85 = v102;
  v82(v102, v74, v11);
  v86 = v104;
  v82(v104, v80, v11);
  v87 = v105;
  v82(v105, v83, v11);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD52CC0, &qword_1BE0F6EA8);
  v82(&v87[*(v88 + 48)], v85, v11);
  v82(&v87[*(v88 + 64)], v86, v11);
  v89 = *(v81 + 8);
  v89(v80, v11);
  v89(v107, v11);
  v89(v84, v11);
  v89(v86, v11);
  v89(v85, v11);
  return (v89)(v108, v11);
}

uint64_t sub_1BD7D8DCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE049B04();
  v5 = *(v4 - 8);
  v46 = v4;
  v47 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = a1;
  v50 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53F48, &qword_1BE0F9C30);
  sub_1BE0516A4();
  v8 = v48;
  KeyPath = swift_getKeyPath();
  v49 = v8;
  sub_1BD7D9EC8(&qword_1EBD53F50, _s9ViewModelCMa_4, &unk_1BE0F9E60);
  sub_1BE04B594();
  KeyPath, v10, v11, v12, v13, v14, v15, v16;
  v17 = OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__transactionCategoryToConfirm;
  swift_beginAccess();
  (*(v5 + 16))(v7, &v8[v17], v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C910, &qword_1BE0BF5D0);
  v18 = sub_1BE04AFE4();
  v19 = *(v18 - 8);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  *(v21 + 1) = xmmword_1BE0B69E0;
  v22 = swift_getKeyPath();
  v48 = v8;
  sub_1BE04B594();
  v22, v23, v24, v25, v26, v27, v28, v29;
  v30 = OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__id;
  swift_beginAccess();
  (*(v19 + 16))(&v21[v20], &v8[v30], v18);
  sub_1BD7DD6C0(v7, v21);
  v8, v31, v32, v33, v34, v35, v36, v37;
  v21, v38, v39, v40, v41, v42, v43, v44;
  return (*(v47 + 8))(v7, v46);
}

void sub_1BD7D909C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53F48, &qword_1BE0F9C30);
  sub_1BE0516A4();
  sub_1BD7DBA58();
  v9, v2, v3, v4, v5, v6, v7, v8;
}

uint64_t sub_1BD7D90F4(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  sub_1BE0528A4();
  v2[7] = sub_1BE052894();
  v4 = sub_1BE052844();
  v2[8] = v4;
  v2[9] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1BD7D918C, v4, v3);
}

uint64_t sub_1BD7D918C()
{
  v1 = v0[6];
  v0[2] = v0[5];
  v0[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53F48, &qword_1BE0F9C30);
  sub_1BE0516A4();
  v0[10] = v0[4];
  v2 = swift_task_alloc();
  v0[11] = v2;
  *v2 = v0;
  v2[1] = sub_1BD5B5130;

  return sub_1BD7DBD54();
}

void sub_1BD7D924C(double a1, double a2, double a3, double a4, uint64_t a5, void *a6)
{
  v11 = [objc_opt_self() bezierPathWithRoundedRect:a1 cornerRadius:{a2, a3, a4, 6.0}];
  [v11 addClip];
  [a6 drawInRect_];
}

uint64_t objectdestroyTm_95()
{
  swift_unknownObjectRelease();
  v0[4], v1, v2, v3, v4, v5, v6, v7;
  v0[5], v8, v9, v10, v11, v12, v13, v14;

  return swift_deallocObject();
}

unint64_t sub_1BD7D941C()
{
  result = qword_1EBD53F18;
  if (!qword_1EBD53F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53F10, &unk_1BE0F9C10);
    sub_1BD7D94A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53F18);
  }

  return result;
}

unint64_t sub_1BD7D94A0()
{
  result = qword_1EBD53F20;
  if (!qword_1EBD53F20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53F28, &qword_1BE0F9C20);
    sub_1BD7D9530();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53F20);
  }

  return result;
}

unint64_t sub_1BD7D9530()
{
  result = qword_1EBD53F30;
  if (!qword_1EBD53F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53F38, &qword_1BE0F9C28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD37358, &qword_1BE0D73D0);
    sub_1BE049B04();
    sub_1BD0DE4F4(&qword_1EBD4D3F0, &qword_1EBD37358, &qword_1BE0D73D0, MEMORY[0x1E697D658]);
    sub_1BD7D9EC8(&qword_1EBD3A338, MEMORY[0x1E6967AD0], MEMORY[0x1E6967AE0]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53F30);
  }

  return result;
}

unint64_t sub_1BD7D9680()
{
  result = qword_1EBD53F60;
  if (!qword_1EBD53F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53F08, &qword_1BE0F9C08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53F00, &qword_1BE0F9C00);
    sub_1BE04EB64();
    sub_1BD0DE4F4(&qword_1EBD53F40, &qword_1EBD53F00, &qword_1BE0F9C00, MEMORY[0x1E697D690]);
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&unk_1EBD366D0, &unk_1EBD511D0, &qword_1BE0B8740, MEMORY[0x1E6980B30]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53F60);
  }

  return result;
}

uint64_t sub_1BD7D97C8()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BD0F985C;

  return sub_1BD7D90F4(v2, v3);
}

void sub_1BD7D98A0(uint64_t a1, void *a2)
{
  v4 = sub_1BE049B04();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
  if ([a2 objectForKey_])
  {
    goto LABEL_2;
  }

  (*(v5 + 16))(v7, a1, v4);
  MEMORY[0x1BFB3FF90](v7);
  PKScreenScale();
  v17 = PKIconForFKCategory();
  if (!v17)
  {
    [objc_allocWithZone(MEMORY[0x1E69DCAB8]) init];
LABEL_2:

    v15 = 0;
    v16 = 0;
LABEL_6:
    sub_1BD0D4744(v15, v16, v9, v10, v11, v12, v13, v14);
    return;
  }

  v18 = v17;
  [v17 size];
  v21 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  __asm { FMOV            V0.2D, #24.0 }

  *(v22 + 32) = _Q0;
  *(v22 + 48) = v18;
  v28 = swift_allocObject();
  v28[2] = sub_1BD7D9BE8;
  v28[3] = v22;
  v29 = v22;
  aBlock[4] = sub_1BD465990;
  v49 = v28;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BD4883A0;
  aBlock[3] = &block_descriptor_183;
  v30 = _Block_copy(aBlock);
  v31 = v49;
  v32 = v18;
  sub_1BE048964();
  v31, v33, v34, v35, v36, v37, v38, v39;
  v40 = [v21 imageWithActions_];

  _Block_release(v30);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();
  v28, v41, v42, v43, v44, v45, v46, v47;
  if ((v21 & 1) == 0)
  {
    [a2 setObject:v40 forKey:v8];

    v15 = sub_1BD7D9BE8;
    v16 = v29;
    goto LABEL_6;
  }

  __break(1u);
}

unint64_t sub_1BD7D9C04()
{
  result = qword_1EBD53F80;
  if (!qword_1EBD53F80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53F88, &qword_1BE0F9DD0);
    sub_1BD7D9EC8(&qword_1EBD3A338, MEMORY[0x1E6967AD0], MEMORY[0x1E6967AE0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53F80);
  }

  return result;
}

uint64_t objectdestroy_26Tm_0(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v8[2], a2, a3, a4, a5, a6, a7, a8;
  v8[3], v9, v10, v11, v12, v13, v14, v15;

  return swift_deallocObject();
}

uint64_t sub_1BD7D9D20@<X0>(uint64_t *a1@<X8>)
{
  sub_1BD7D98A0(*(v1 + 40), *(v1 + 32));
  result = sub_1BE051544();
  *a1 = result;
  return result;
}

unint64_t sub_1BD7D9D70()
{
  result = qword_1EBD53FA0;
  if (!qword_1EBD53FA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53F68, &qword_1BE0F9D28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD53F08, &qword_1BE0F9C08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD52B80, &qword_1BE0F6B10);
    sub_1BD7D9680();
    sub_1BD0DE4F4(&qword_1EBD52BC0, &qword_1EBD52B80, &qword_1BE0F6B10, MEMORY[0x1E6981F48]);
    swift_getOpaqueTypeConformance2();
    sub_1BD7D9EC8(&qword_1EBD37148, MEMORY[0x1E697C028], MEMORY[0x1E697C010]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD53FA0);
  }

  return result;
}

uint64_t sub_1BD7D9EC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BD7D9FC8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BE04AFE4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__id;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  sub_1BD7DE548(&unk_1EBD36A30, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  v21[0] = a1;
  LOBYTE(a1) = sub_1BE052334();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v21[0], v4);
    swift_beginAccess();
    (*(v5 + 40))(v2 + v8, v7, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v12 = v21[0];
    v21[-2] = v2;
    v21[-1] = v12;
    v21[1] = v2;
    sub_1BD7DE548(&qword_1EBD53F50, _s9ViewModelCMa_4, &unk_1BE0F9E60);
    sub_1BE04B584();
    KeyPath, v13, v14, v15, v16, v17, v18, v19;
  }

  return (v10)(v21[0], v4);
}

uint64_t sub_1BD7DA268()
{
  KeyPath = swift_getKeyPath();
  sub_1BD7DE548(&qword_1EBD53F50, _s9ViewModelCMa_4, &unk_1BE0F9E60);
  sub_1BE04B594();
  KeyPath, v2, v3, v4, v5, v6, v7, v8;
  v9 = *(v0 + OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__displayName);
  sub_1BE048C84();
  return v9;
}

double sub_1BD7DA324@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD7DE548(&qword_1EBD53F50, _s9ViewModelCMa_4, &unk_1BE0F9E60);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  v12 = *(v3 + OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__displayName + 8);
  *a2 = *(v3 + OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__displayName);
  a2[1] = v12;
  sub_1BE048C84();
  return result;
}

void sub_1BD7DA3DC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_1BE048C84();
  sub_1BD7DA41C(v1, v2, v3, v4, v5, v6, v7, v8);
}

void sub_1BD7DA41C(uint64_t a1, char *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  v11 = (v8 + OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__displayName);
  v12 = *(v8 + OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__displayName + 8);
  v13 = *(v8 + OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__displayName) == a1 && v12 == a2;
  if (v13 || (sub_1BE053B84() & 1) != 0)
  {
    *v11 = a1;
    v11[1] = a2;

    v12, a2, a3, a4, a5, a6, a7, a8;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD7DE548(&qword_1EBD53F50, _s9ViewModelCMa_4, &unk_1BE0F9E60);
    sub_1BE04B584();
    KeyPath, v15, v16, v17, v18, v19, v20, v21;
    a2, v22, v23, v24, v25, v26, v27, v28;
  }
}

uint64_t sub_1BD7DA5B0@<X0>(uint64_t *a2@<X1>, uint64_t (*a3)(void, __n128)@<X2>, uint64_t a4@<X8>)
{
  KeyPath = swift_getKeyPath();
  v19 = v4;
  sub_1BD7DE548(&qword_1EBD53F50, _s9ViewModelCMa_4, &unk_1BE0F9E60);
  sub_1BE04B594();
  KeyPath, v9, v10, v11, v12, v13, v14, v15;
  v16 = *a2;
  swift_beginAccess();
  v17 = (a3)(0);
  return (*(*(v17 - 8) + 16))(a4, v19 + v16, v17);
}

uint64_t sub_1BD7DA6D8@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, uint64_t (*a4)(void, __n128)@<X5>, uint64_t a5@<X8>)
{
  v8 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD7DE548(&qword_1EBD53F50, _s9ViewModelCMa_4, &unk_1BE0F9E60);
  sub_1BE04B594();
  KeyPath, v10, v11, v12, v13, v14, v15, v16;
  v17 = *a3;
  swift_beginAccess();
  v18 = (a4)(0);
  return (*(*(v18 - 8) + 16))(a5, v8 + v17, v18);
}

double sub_1BD7DA830()
{
  KeyPath = swift_getKeyPath();
  sub_1BD7DE548(&qword_1EBD53F50, _s9ViewModelCMa_4, &unk_1BE0F9E60);
  sub_1BE04B594();
  KeyPath, v1, v2, v3, v4, v5, v6, v7;
  sub_1BE048C84();
  return result;
}

double sub_1BD7DA8DC@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD7DE548(&qword_1EBD53F50, _s9ViewModelCMa_4, &unk_1BE0F9E60);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  *a2 = *(v3 + OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__relatedTransactionIDs);
  sub_1BE048C84();
  return result;
}

void sub_1BD7DA9BC(void *a1)
{
  v3 = OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__relatedTransactionIDs;
  v4 = *(v1 + OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__relatedTransactionIDs);
  v5 = sub_1BE048C84();
  v6 = sub_1BD400CE0(v5, a1);
  v4, v7, v8, v9, v10, v11, v12, v13;
  if (v6)
  {
    v21 = *(v1 + v3);
    *(v1 + v3) = a1;

    v21, v14, v15, v16, v17, v18, v19, v20;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD7DE548(&qword_1EBD53F50, _s9ViewModelCMa_4, &unk_1BE0F9E60);
    sub_1BE04B584();
    KeyPath, v23, v24, v25, v26, v27, v28, v29;
    a1, v30, v31, v32, v33, v34, v35, v36;
  }
}

uint64_t sub_1BD7DAB94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (a5)(0, a2, a3, a4);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return a6(v11);
}

uint64_t sub_1BD7DAC90(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v25[0] = a3;
  v25[1] = a4;
  v6 = v4;
  v8 = sub_1BE049B04();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  swift_beginAccess();
  v13 = *(v9 + 16);
  v13(v11, v6 + v12, v8);
  sub_1BD7DE548(&qword_1EBD3A340, MEMORY[0x1E6967AD0], MEMORY[0x1E6967AE8]);
  v26 = a1;
  LOBYTE(a1) = sub_1BE052334();
  v14 = *(v9 + 8);
  v14(v11, v8);
  if (a1)
  {
    v13(v11, v26, v8);
    swift_beginAccess();
    (*(v9 + 40))(v6 + v12, v11, v8);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v16 = v26;
    v25[-2] = v6;
    v25[-1] = v16;
    v27 = v6;
    sub_1BD7DE548(&qword_1EBD53F50, _s9ViewModelCMa_4, &unk_1BE0F9E60);
    sub_1BE04B584();
    KeyPath, v17, v18, v19, v20, v21, v22, v23;
  }

  return (v14)(v26, v8);
}

uint64_t sub_1BD7DAF20(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void, __n128))
{
  v7 = *a3;
  swift_beginAccess();
  v8 = (a4)(0);
  (*(*(v8 - 8) + 24))(a1 + v7, a2, v8);
  return swift_endAccess();
}

uint64_t sub_1BD7DB028(uint64_t a1, void *a2)
{
  KeyPath = swift_getKeyPath();
  sub_1BD7DE548(&qword_1EBD53F50, _s9ViewModelCMa_4, &unk_1BE0F9E60);
  sub_1BE04B594();
  KeyPath, v5, v6, v7, v8, v9, v10, v11;
  return *(v2 + *a2);
}

void sub_1BD7DB0DC(uint64_t *a1@<X0>, void *a3@<X4>, _BYTE *a4@<X8>)
{
  v6 = *a1;
  KeyPath = swift_getKeyPath();
  sub_1BD7DE548(&qword_1EBD53F50, _s9ViewModelCMa_4, &unk_1BE0F9E60);
  sub_1BE04B594();
  KeyPath, v8, v9, v10, v11, v12, v13, v14;
  *a4 = *(v6 + *a3);
}

void sub_1BD7DB1E0(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + *a2) == (a1 & 1))
  {
    *(v4 + *a2) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1BD7DE548(&qword_1EBD53F50, _s9ViewModelCMa_4, &unk_1BE0F9E60);
    sub_1BE04B584();
    KeyPath, v6, v7, v8, v9, v10, v11, v12;
  }
}

uint64_t sub_1BD7DB2E4()
{
  v1 = v0;
  v2 = sub_1BE049B04();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v29 = v0;
  sub_1BD7DE548(&qword_1EBD53F50, _s9ViewModelCMa_4, &unk_1BE0F9E60);
  sub_1BE04B594();
  KeyPath, v7, v8, v9, v10, v11, v12, v13;
  v14 = OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__selectedCategory;
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v14, v2);
  LOBYTE(v14) = sub_1BE049AA4();
  (*(v3 + 8))(v5, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD53FF8, &qword_1BE0F9F88);
  if (v14)
  {
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1BE0B6CA0;
    v27[1] = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBD54000, &qword_1BE0F9F90);
    v15 = *(v3 + 72);
    v16 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1BE0B76F0;
    v18 = *(v3 + 104);
    v18(v17 + v16, *MEMORY[0x1E6967A68], v2);
    v18(v17 + v16 + v15, *MEMORY[0x1E6967A78], v2);
    v18(v17 + v16 + 2 * v15, *MEMORY[0x1E6967AB8], v2);
    v18(v17 + v16 + 3 * v15, *MEMORY[0x1E6967A98], v2);
    v18(v17 + v16 + 4 * v15, *MEMORY[0x1E6967A88], v2);
    v18(v17 + v16 + 5 * v15, *MEMORY[0x1E6967AC8], v2);
    v18(v17 + v16 + 6 * v15, *MEMORY[0x1E6967AB0], v2);
    v18(v17 + v16 + 7 * v15, *MEMORY[0x1E6967A80], v2);
    v19 = v28;
    *(v28 + 32) = v17;
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1BE0B69E0;
    v18(v20 + v16, *MEMORY[0x1E6967AC0], v2);
    *(v19 + 40) = v20;
  }

  else
  {
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1BE0B69E0;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBD54000, &qword_1BE0F9F90);
    v21 = *(v3 + 72);
    v22 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1BE0B98D0;
    v24 = v23 + v22;
    v25 = *(v3 + 104);
    v25(v24, *MEMORY[0x1E6967A90], v2);
    v25(v24 + v21, *MEMORY[0x1E6967A70], v2);
    v25(v24 + 2 * v21, *MEMORY[0x1E6967AC0], v2);
    *(v19 + 32) = v23;
  }

  return v19;
}

uint64_t sub_1BD7DB734(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, double), char *a4)
{
  v5 = v4;
  v28 = a3;
  v29 = a4;
  v27 = a2;
  v31 = a1;
  v6 = sub_1BE049B04();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v30 = &v27 - v12;
  *(v4 + OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__relatedTransactionIDs) = MEMORY[0x1E69E7CC0];
  v13 = *MEMORY[0x1E6967AA0];
  v14 = *(v7 + 104);
  v14(v4 + OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__transactionCategoryToConfirm, v13, v6, v11);
  *(v4 + OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__isPresentingConfirmationDialog) = 0;
  *(v4 + OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__isUpdatingTransactionCategory) = 0;
  sub_1BE04B5C4();
  v15 = OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__id;
  v16 = sub_1BE04AFE4();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v5 + v15, v31, v16);
  v18 = (v5 + OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__displayName);
  v19 = v28;
  *v18 = v27;
  v18[1] = v19;
  v20 = v13;
  v21 = v29;
  v28 = v14;
  (v14)(v9, v20, v6);
  sub_1BD7DE548(&qword_1EBD45980, MEMORY[0x1E6967AD0], MEMORY[0x1E6967AF0]);
  sub_1BE0526E4();
  sub_1BE0526E4();
  (*(v17 + 8))(v31, v16);
  v22 = *(v7 + 8);
  v22(v9, v6);
  if (v33 == v32)
  {
    v22(v21, v6);
    v23 = v30;
    (v28)(v30, *MEMORY[0x1E6967A80], v6);
    (*(v7 + 32))(v5 + OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__selectedCategory, v23, v6);
  }

  else
  {
    v24 = *(v7 + 32);
    v25 = v30;
    v24(v30, v21, v6);
    v24((v5 + OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__selectedCategory), v25, v6);
  }

  return v5;
}

uint64_t sub_1BD7DBA58()
{
  v1 = v0;
  v2 = sub_1BE049B04();
  v3 = *(v2 - 8);
  v48 = v2;
  v49 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = v5;
  KeyPath = swift_getKeyPath();
  v52 = v0;
  sub_1BD7DE548(&qword_1EBD53F50, _s9ViewModelCMa_4, &unk_1BE0F9E60);
  sub_1BE04B594();
  KeyPath, v7, v8, v9, v10, v11, v12, v13;
  v14 = OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__transactionCategoryToConfirm;
  swift_beginAccess();
  (*(v3 + 16))(v5, v1 + v14, v2);
  v15 = swift_getKeyPath();
  v51 = v1;
  sub_1BE04B594();
  v15, v16, v17, v18, v19, v20, v21, v22;
  v23 = *(v1 + OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__relatedTransactionIDs);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3C910, &qword_1BE0BF5D0);
  v24 = sub_1BE04AFE4();
  v25 = *(v24 - 8);
  v26 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1BE0B69E0;
  v28 = swift_getKeyPath();
  v51 = v1;
  sub_1BE048C84();
  sub_1BE04B594();
  v28, v29, v30, v31, v32, v33, v34, v35;
  v36 = OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__id;
  swift_beginAccess();
  (*(v25 + 16))(v27 + v26, v1 + v36, v24);
  v50 = v23;
  sub_1BDA7A930(v27);
  v37 = v50;
  v38 = v47;
  sub_1BD7DD6C0(v47, v50);
  v37, v39, v40, v41, v42, v43, v44, v45;
  return (*(v49 + 8))(v38, v48);
}

uint64_t sub_1BD7DBD54()
{
  v1[23] = v0;
  v2 = sub_1BE04D214();
  v1[24] = v2;
  v1[25] = *(v2 - 8);
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v3 = sub_1BE049C74();
  v1[28] = v3;
  v1[29] = *(v3 - 8);
  v1[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DD0, &unk_1BE0B7DD0);
  v1[31] = swift_task_alloc();
  v4 = sub_1BE049D74();
  v1[32] = v4;
  v1[33] = *(v4 - 8);
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v5 = sub_1BE049A94();
  v1[36] = v5;
  v1[37] = *(v5 - 8);
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v6 = sub_1BE04AFE4();
  v1[43] = v6;
  v1[44] = *(v6 - 8);
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  sub_1BE0528A4();
  v1[48] = sub_1BE052894();
  v8 = sub_1BE052844();
  v1[49] = v8;
  v1[50] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1BD7DC050, v8, v7);
}

uint64_t sub_1BD7DC050()
{
  v1 = v0[47];
  v2 = v0[43];
  v3 = v0[44];
  v4 = v0[36];
  v5 = v0[31];
  v6 = v0[23];
  sub_1BE0490F4();
  v0[51] = sub_1BE0490B4();
  KeyPath = swift_getKeyPath();
  v0[52] = OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel___observationRegistrar;
  v0[20] = v6;
  v0[53] = sub_1BD7DE548(&qword_1EBD53F50, _s9ViewModelCMa_4, &unk_1BE0F9E60);
  sub_1BE04B594();
  KeyPath, v8, v9, v10, v11, v12, v13, v14;
  v15 = OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__id;
  v0[54] = OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__id;
  swift_beginAccess();
  v16 = *(v3 + 16);
  v0[55] = v16;
  v0[56] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v16(v1, v6 + v15, v2);
  v17 = swift_task_alloc();
  v0[57] = v17;
  *(v17 + 16) = v1;
  v0[21] = v4;
  sub_1BE04B444();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38DF0, &unk_1BE0E8DB0);
  (*(*(v18 - 8) + 56))(v5, 0, 1, v18);
  v19 = sub_1BE049CE4();
  v20 = MEMORY[0x1E6967BC8];
  v0[5] = v19;
  v0[6] = v20;
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_1BE049CD4();
  v21 = swift_task_alloc();
  v0[58] = v21;
  *v21 = v0;
  v21[1] = sub_1BD7DC2C8;
  v22 = v0[35];

  return MEMORY[0x1EEDC14D8](v22, v0 + 2);
}

uint64_t sub_1BD7DC2C8()
{
  v2 = *v1;
  *(*v1 + 472) = v0;

  if (v0)
  {
    v10 = *(v2 + 392);
    v11 = *(v2 + 400);
    v12 = sub_1BD7DCE5C;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 16), v3, v4, v5, v6, v7, v8, v9);
    v10 = *(v2 + 392);
    v11 = *(v2 + 400);
    v12 = sub_1BD7DC3E4;
  }

  return MEMORY[0x1EEE6DFA0](v12, v10, v11);
}

uint64_t sub_1BD7DC3E4(uint64_t a1)
{
  v120 = v1;
  v2 = *(v1 + 280);
  v3 = *(v1 + 256);
  v4 = *(v1 + 264);
  v5 = sub_1BE049D54();
  v6 = *(v4 + 8);
  *(v1 + 480) = v6;
  *(v1 + 488) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v2, v3);
  if (*(v5 + 2))
  {
    v14 = *(v1 + 328);
    v15 = *(v1 + 336);
    v16 = *(v1 + 288);
    v17 = *(v1 + 296);
    v19 = *(v1 + 232);
    v18 = *(v1 + 240);
    v20 = *(v1 + 224);
    v21 = *(v17 + 16);
    v17 += 16;
    v22 = *(v17 + 64);
    *(v1 + 528) = v22;
    *(v1 + 496) = v21;
    *(v1 + 504) = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v21(v15, &v5[(v22 + 32) & ~v22], v16);
    v5, v23, v24, v25, v26, v27, v28, v29;
    v21(v14, v15, v16);
    *(v1 + 120) = &type metadata for BankConnectFeatureFlags;
    *(v1 + 128) = sub_1BD1671B0();
    *(v1 + 96) = 2;
    LOBYTE(v15) = sub_1BE04C584();
    __swift_destroy_boxed_opaque_existential_0((v1 + 96), v30, v31, v32, v33, v34, v35, v36);
    v37 = MEMORY[0x1E6967BA8];
    if ((v15 & 1) == 0)
    {
      v37 = MEMORY[0x1E6967BA0];
    }

    (*(v19 + 104))(v18, *v37, v20);
    v38 = sub_1BE049C94();
    v39 = MEMORY[0x1E6967BB0];
    *(v1 + 80) = v38;
    *(v1 + 88) = v39;
    __swift_allocate_boxed_opaque_existential_1((v1 + 56));
    sub_1BE049C84();
    v40 = swift_task_alloc();
    *(v1 + 512) = v40;
    *v40 = v1;
    v40[1] = sub_1BD7DC918;
    v41 = *(v1 + 272);

    return MEMORY[0x1EEDC14D8](v41, v1 + 56);
  }

  else
  {
    v42 = *(v1 + 184);
    *(v1 + 384), v7, v8, v9, v10, v11, v12, v13;
    v5, v43, v44, v45, v46, v47, v48, v49;
    sub_1BE04D114();
    sub_1BE048964();
    v50 = sub_1BE04D204();
    v51 = sub_1BE052C34();
    v42, v52, v53, v54, v55, v56, v57, v58;
    if (os_log_type_enabled(v50, v51))
    {
      v112 = *(v1 + 440);
      v111 = *(v1 + 432);
      v114 = v51;
      v66 = *(v1 + 352);
      v67 = *(v1 + 360);
      v68 = *(v1 + 344);
      v115 = *(v1 + 408);
      v116 = *(v1 + 200);
      v117 = *(v1 + 192);
      v118 = *(v1 + 216);
      v69 = *(v1 + 184);
      v70 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      v119 = v113;
      *v70 = 136315138;
      KeyPath = swift_getKeyPath();
      *(v1 + 176) = v69;
      sub_1BE04B594();
      KeyPath, v72, v73, v74, v75, v76, v77, v78;
      v112(v67, v69 + v111, v68);
      sub_1BD7DE548(&unk_1EBD39960, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v79 = sub_1BE053B24();
      v81 = v80;
      v82 = *(v66 + 8);
      v82(v67, v68);
      v83 = sub_1BD123690(v79, v81, &v119);
      v81, v84, v85, v86, v87, v88, v89, v90;
      *(v70 + 4) = v83;
      _os_log_impl(&dword_1BD026000, v50, v114, "Failed to fetch transaction with ID:%s", v70, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v113, v91, v92, v93, v94, v95, v96, v97);
      MEMORY[0x1BFB45F20](v113, -1, -1);
      MEMORY[0x1BFB45F20](v70, -1, -1);
      v115, v98, v99, v100, v101, v102, v103, v104;

      (*(v116 + 8))(v118, v117);
    }

    else
    {
      v105 = *(v1 + 352);
      v106 = *(v1 + 216);
      v107 = *(v1 + 192);
      v108 = *(v1 + 200);
      *(v1 + 408), v59, v60, v61, v62, v63, v64, v65;

      (*(v108 + 8))(v106, v107);
      v82 = *(v105 + 8);
    }

    v82(*(v1 + 376), *(v1 + 344));

    v109 = *(v1 + 8);

    return v109();
  }
}

uint64_t sub_1BD7DC918()
{
  v2 = *v1;
  *(*v1 + 520) = v0;

  if (v0)
  {
    v10 = *(v2 + 392);
    v11 = *(v2 + 400);
    v12 = sub_1BD7DD0B0;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v2 + 56), v3, v4, v5, v6, v7, v8, v9);
    v10 = *(v2 + 392);
    v11 = *(v2 + 400);
    v12 = sub_1BD7DCA34;
  }

  return MEMORY[0x1EEE6DFA0](v12, v10, v11);
}

uint64_t sub_1BD7DCA34(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 480);
  v10 = *(v8 + 272);
  v11 = *(v8 + 256);
  *(v8 + 384), a2, a3, a4, a5, a6, a7, a8;
  v12 = sub_1BE049D54();
  result = v9(v10, v11);
  v21 = v12[2];
  v22 = MEMORY[0x1E69E7CC0];
  if (v21)
  {
    v23 = 0;
    v24 = *(v8 + 296);
    v25 = v12 + ((*(v8 + 528) + 32) & ~*(v8 + 528));
    v75 = (v24 + 8);
    v76 = v24;
    v77 = v12[2];
    v78 = (v24 + 32);
    while (v23 < v12[2])
    {
      v26 = *(v24 + 72);
      (*(v8 + 496))(*(v8 + 320), &v25[v26 * v23], *(v8 + 288));
      if (sub_1BE049A74())
      {
        v27 = *v78;
        (*v78)(*(v8 + 312), *(v8 + 320), *(v8 + 288));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1BD531B68(0, *(v22 + 2) + 1, 1);
        }

        v29 = *(v22 + 2);
        v28 = *(v22 + 3);
        if (v29 >= v28 >> 1)
        {
          sub_1BD531B68((v28 > 1), v29 + 1, 1);
        }

        v30 = *(v8 + 528);
        v31 = *(v8 + 312);
        v32 = *(v8 + 288);
        *(v22 + 2) = v29 + 1;
        result = v27(&v22[((v30 + 32) & ~v30) + v29 * v26], v31, v32);
        v24 = v76;
        v21 = v77;
      }

      else
      {
        result = (*v75)(*(v8 + 320), *(v8 + 288));
      }

      if (v21 == ++v23)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v12, v14, v15, v16, v17, v18, v19, v20;
    v40 = *(v22 + 2);
    if (v40)
    {
      v41 = *(v8 + 352);
      v42 = *(v8 + 296);
      v43 = (*(v8 + 528) + 32) & ~*(v8 + 528);
      v80 = MEMORY[0x1E69E7CC0];
      sub_1BD531F28(0, v40, 0);
      v44 = v80;
      v45 = &v22[v43];
      v46 = (v42 + 8);
      v79 = *(v42 + 72);
      do
      {
        v47 = *(v8 + 304);
        v48 = *(v8 + 288);
        (*(v8 + 496))(v47, v45, v48);
        sub_1BE049A14();
        (*v46)(v47, v48);
        v50 = v80[2];
        v49 = v80[3];
        if (v50 >= v49 >> 1)
        {
          sub_1BD531F28((v49 > 1), v50 + 1, 1);
        }

        v51 = *(v8 + 368);
        v52 = *(v8 + 344);
        v80[2] = v50 + 1;
        (*(v41 + 32))(v80 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v50, v51, v52);
        v45 += v79;
        --v40;
      }

      while (v40);
      v22, v53, v54, v55, v56, v57, v58, v59;
    }

    else
    {
      v22, v33, v34, v35, v36, v37, v38, v39;
      v44 = MEMORY[0x1E69E7CC0];
    }

    v60 = *(v8 + 408);
    v61 = *(v8 + 376);
    v62 = *(v8 + 344);
    v63 = *(v8 + 352);
    v64 = *(v8 + 336);
    v65 = *(v8 + 288);
    v66 = *(v8 + 296);
    sub_1BD7DA9BC(v44);
    v60, v67, v68, v69, v70, v71, v72, v73;
    (*(v66 + 8))(v64, v65);
    (*(v63 + 8))(v61, v62);

    v74 = *(v8 + 8);

    return v74();
  }

  return result;
}

uint64_t sub_1BD7DCE5C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 408);
  *(v8 + 384), a2, a3, a4, a5, a6, a7, a8;
  v9, v10, v11, v12, v13, v14, v15, v16;
  __swift_destroy_boxed_opaque_existential_0((v8 + 16), v17, v18, v19, v20, v21, v22, v23);
  v24 = *(v8 + 472);
  (*(*(v8 + 352) + 8))(*(v8 + 376), *(v8 + 344));
  sub_1BE04D114();
  v25 = v24;
  v26 = sub_1BE04D204();
  v27 = sub_1BE052C34();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 138412290;
    v30 = v24;
    v31 = _swift_stdlib_bridgeErrorToNSError();
    *(v28 + 4) = v31;
    *v29 = v31;
    _os_log_impl(&dword_1BD026000, v26, v27, "Failed to fetch related transactions %@", v28, 0xCu);
    sub_1BD1E236C(v29);
    MEMORY[0x1BFB45F20](v29, -1, -1);
    MEMORY[0x1BFB45F20](v28, -1, -1);
  }

  else
  {
  }

  (*(*(v8 + 200) + 8))(*(v8 + 208), *(v8 + 192));

  v32 = *(v8 + 8);

  return v32();
}

uint64_t sub_1BD7DD0B0(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 408);
  v10 = *(v8 + 336);
  v11 = *(v8 + 288);
  v12 = *(v8 + 296);
  *(v8 + 384), a2, a3, a4, a5, a6, a7, a8;
  v9, v13, v14, v15, v16, v17, v18, v19;
  (*(v12 + 8))(v10, v11);
  __swift_destroy_boxed_opaque_existential_0((v8 + 56), v20, v21, v22, v23, v24, v25, v26);
  v27 = *(v8 + 520);
  (*(*(v8 + 352) + 8))(*(v8 + 376), *(v8 + 344));
  sub_1BE04D114();
  v28 = v27;
  v29 = sub_1BE04D204();
  v30 = sub_1BE052C34();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 138412290;
    v33 = v27;
    v34 = _swift_stdlib_bridgeErrorToNSError();
    *(v31 + 4) = v34;
    *v32 = v34;
    _os_log_impl(&dword_1BD026000, v29, v30, "Failed to fetch related transactions %@", v31, 0xCu);
    sub_1BD1E236C(v32);
    MEMORY[0x1BFB45F20](v32, -1, -1);
    MEMORY[0x1BFB45F20](v31, -1, -1);
  }

  else
  {
  }

  (*(*(v8 + 200) + 8))(*(v8 + 208), *(v8 + 192));

  v35 = *(v8 + 8);

  return v35();
}

uint64_t sub_1BD7DD324@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v26[1] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F828, &unk_1BE0E8C00);
  v5 = *(v4 - 8);
  v27 = v4;
  v28 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v7 = v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38EE8, &qword_1BE0DF8F0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD38EF0, &qword_1BE0B7F50);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v26 - v14;
  sub_1BD0DE4F4(&qword_1EBD38F10, &qword_1EBD38EE8, &qword_1BE0DF8F0, MEMORY[0x1E6968DA8]);
  sub_1BE04A7C4();
  KeyPath = swift_getKeyPath();
  sub_1BE04A724();
  KeyPath, v17, v18, v19, v20, v21, v22, v23;
  (*(v9 + 8))(v11, v8);
  sub_1BE04AFE4();
  sub_1BE04A7B4();
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3F830, &qword_1BE0E29F0);
  a3[4] = sub_1BD58197C();
  __swift_allocate_boxed_opaque_existential_1(a3);
  sub_1BD0DE4F4(&qword_1EBD38F20, &qword_1EBD38EF0, &qword_1BE0B7F50, MEMORY[0x1E6968D58]);
  sub_1BD0DE4F4(&qword_1EBD3F850, &qword_1EBD3F828, &unk_1BE0E8C00, MEMORY[0x1E6968D20]);
  sub_1BD7DE548(&unk_1EBD36A30, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  v24 = v27;
  sub_1BE04A714();
  (*(v28 + 8))(v7, v24);
  return (*(v13 + 8))(v15, v12);
}

void sub_1BD7DD6C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1BE049B04();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3E580, &unk_1BE0B9000);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v33 - v10;
  if (*(v3 + OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__isUpdatingTransactionCategory) == 1)
  {
    *(v3 + OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__isUpdatingTransactionCategory) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v33 = &v33;
    MEMORY[0x1EEE9AC00](KeyPath);
    *(&v33 - 2) = v3;
    *(&v33 - 8) = 1;
    v34 = a2;
    v35 = v3;
    sub_1BD7DE548(&qword_1EBD53F50, _s9ViewModelCMa_4, &unk_1BE0F9E60);
    sub_1BE04B584();
    a2 = v34;
    KeyPath, v13, v14, v15, v16, v17, v18, v19;
  }

  v20 = sub_1BE0528D4();
  (*(*(v20 - 8) + 56))(v11, 1, 1, v20);
  (*(v7 + 16))(&v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  sub_1BE0528A4();
  sub_1BE048964();
  sub_1BE048C84();
  v21 = sub_1BE052894();
  v22 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v23 = swift_allocObject();
  v24 = MEMORY[0x1E69E85E0];
  *(v23 + 2) = v21;
  *(v23 + 3) = v24;
  *(v23 + 4) = v3;
  (*(v7 + 32))(&v23[v22], &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  *&v23[(v8 + v22 + 7) & 0xFFFFFFFFFFFFFFF8] = a2;
  v25 = sub_1BD122C00(0, 0, v11, &unk_1BE0F9EB0, v23);
  v25, v26, v27, v28, v29, v30, v31, v32;
}

uint64_t sub_1BD7DD9E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v7 = sub_1BE04D214();
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();
  v8 = sub_1BE049B04();
  v6[9] = v8;
  v6[10] = *(v8 - 8);
  v6[11] = swift_task_alloc();
  sub_1BE0528A4();
  v6[12] = sub_1BE052894();
  v10 = sub_1BE052844();
  v6[13] = v10;
  v6[14] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1BD7DDB34, v10, v9);
}

uint64_t sub_1BD7DDB34()
{
  sub_1BE0490F4();
  v0[15] = sub_1BE0490B4();
  v1 = swift_task_alloc();
  v0[16] = v1;
  *v1 = v0;
  v1[1] = sub_1BD7DDBE4;
  v3 = v0[4];
  v2 = v0[5];

  return MEMORY[0x1EEDC1508](v3, v2);
}

uint64_t sub_1BD7DDBE4()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v10 = *(v2 + 104);
    v11 = *(v2 + 112);
    v12 = sub_1BD7DDE8C;
  }

  else
  {
    *(v2 + 120), v3, v4, v5, v6, v7, v8, v9;
    v10 = *(v2 + 104);
    v11 = *(v2 + 112);
    v12 = sub_1BD7DDD00;
  }

  return MEMORY[0x1EEE6DFA0](v12, v10, v11);
}

uint64_t sub_1BD7DDD00(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 88);
  v10 = *(v8 + 72);
  v11 = *(v8 + 80);
  v12 = *(v8 + 32);
  *(v8 + 96), a2, a3, a4, a5, a6, a7, a8;
  (*(v11 + 16))(v9, v12, v10);
  sub_1BD7DA808(v9);
  v13 = *(v8 + 24);
  if (*(v13 + OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__isUpdatingTransactionCategory) == 1)
  {
    KeyPath = swift_getKeyPath();
    v15 = swift_task_alloc();
    *(v15 + 16) = v13;
    *(v15 + 24) = 0;
    *(v8 + 16) = v13;
    sub_1BD7DE548(&qword_1EBD53F50, _s9ViewModelCMa_4, &unk_1BE0F9E60);
    sub_1BE04B584();
    KeyPath, v16, v17, v18, v19, v20, v21, v22;
  }

  else
  {
    *(v13 + OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__isUpdatingTransactionCategory) = 0;
  }

  v23 = *(v8 + 8);

  return v23();
}

uint64_t sub_1BD7DDE8C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = *(v8 + 136);
  v10 = *(v8 + 120);
  *(v8 + 96), a2, a3, a4, a5, a6, a7, a8;
  v10, v11, v12, v13, v14, v15, v16, v17;
  sub_1BE04D114();
  v18 = v9;
  v19 = sub_1BE04D204();
  v20 = sub_1BE052C34();

  v21 = os_log_type_enabled(v19, v20);
  v22 = *(v8 + 136);
  if (v21)
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    v25 = v22;
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v23 + 4) = v26;
    *v24 = v26;
    _os_log_impl(&dword_1BD026000, v19, v20, "Failed to update transaction's category with error: %@.", v23, 0xCu);
    sub_1BD1E236C(v24);
    MEMORY[0x1BFB45F20](v24, -1, -1);
    MEMORY[0x1BFB45F20](v23, -1, -1);
  }

  else
  {
  }

  (*(*(v8 + 56) + 8))(*(v8 + 64), *(v8 + 48));
  v27 = *(v8 + 24);
  if (*(v27 + OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__isUpdatingTransactionCategory))
  {
    KeyPath = swift_getKeyPath();
    v29 = swift_task_alloc();
    *(v29 + 16) = v27;
    *(v29 + 24) = 0;
    *(v8 + 16) = v27;
    sub_1BD7DE548(&qword_1EBD53F50, _s9ViewModelCMa_4, &unk_1BE0F9E60);
    sub_1BE04B584();
    KeyPath, v30, v31, v32, v33, v34, v35, v36;
  }

  else
  {
    *(v27 + OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__isUpdatingTransactionCategory) = 0;
  }

  v37 = *(v8 + 8);

  return v37();
}

uint64_t sub_1BD7DE0F4()
{
  v1 = OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__id;
  v2 = sub_1BE04AFE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  *(v0 + OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__displayName + 8), v3, v4, v5, v6, v7, v8, v9;
  v10 = OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__selectedCategory;
  v11 = sub_1BE049B04();
  v12 = *(*(v11 - 8) + 8);
  v12(v0 + v10, v11);
  *(v0 + OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__relatedTransactionIDs), v13, v14, v15, v16, v17, v18, v19;
  v12(v0 + OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__transactionCategoryToConfirm, v11);
  v20 = OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel___observationRegistrar;
  v21 = sub_1BE04B5D4();
  (*(*(v21 - 8) + 8))(v0 + v20, v21);

  return swift_deallocClassInstance();
}

uint64_t _s9ViewModelCMa_4(uint64_t a1)
{
  result = qword_1EBD53FE8;
  if (!qword_1EBD53FE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BD7DE2B8(uint64_t a1)
{
  result = sub_1BE04AFE4();
  if (v2 <= 0x3F)
  {
    result = sub_1BE049B04();
    if (v3 <= 0x3F)
    {
      result = sub_1BE04B5D4();
      if (v4 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_1BD7DE3F8(uint64_t a1)
{
  v4 = *(sub_1BE049B04() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1BD0F985C;

  return sub_1BD7DD9E0(a1, v6, v7, v8, v1 + v5, v9);
}

uint64_t sub_1BD7DE548(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1BD7DE5C8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__relatedTransactionIDs);
  *(v1 + OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__relatedTransactionIDs) = *(v0 + 24);
  sub_1BE048C84();
  v2, v3, v4, v5, v6, v7, v8, v9;
}

void sub_1BD7DE644()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtCV9PassKitUI33FinanceKitTransactionCategoryView9ViewModel__displayName);
  v3 = v2[1];
  *v2 = v0[3];
  v2[1] = v1;
  sub_1BE048C84();
  v3, v4, v5, v6, v7, v8, v9, v10;
}

void sub_1BD7DE6E0(uint64_t a1)
{
  sub_1BD578C14(319);
  if (v1 <= 0x3F)
  {
    sub_1BD7DEDA8();
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1BD7DE7A8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_1BE04AF64() - 8);
  v7 = v6;
  v8 = *(v6 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = *(*(a3 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v6 + 80);
  v13 = *(v6 + 64);
  v14 = *(v10 + 80);
  if (v9 <= v11)
  {
    v15 = *(v10 + 84);
  }

  else
  {
    v15 = v9;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  if (v8)
  {
    v17 = v13;
  }

  else
  {
    v17 = v13 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = v14 + 26;
  if (a2 > v16)
  {
    v19 = ((v18 + ((((v12 + 16) & ~v12) + v17) & 0xFFFFFFFFFFFFFFF8)) & ~v14) + *(v10 + 64);
    v20 = 8 * v19;
    if (v19 > 3)
    {
      goto LABEL_16;
    }

    v22 = ((a2 - v16 + ~(-1 << v20)) >> v20) + 1;
    if (HIWORD(v22))
    {
      v21 = *(a1 + v19);
      if (v21)
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v22 <= 0xFF)
      {
        if (v22 < 2)
        {
          goto LABEL_36;
        }

LABEL_16:
        v21 = *(a1 + v19);
        if (!*(a1 + v19))
        {
          goto LABEL_36;
        }

LABEL_23:
        v23 = (v21 - 1) << v20;
        if (v19 > 3)
        {
          v23 = 0;
        }

        if (v19)
        {
          if (v19 <= 3)
          {
            v24 = ((v18 + ((((v12 + 16) & ~v12) + v17) & 0xFFFFFFF8)) & ~v14) + *(v10 + 64);
          }

          else
          {
            v24 = 4;
          }

          if (v24 > 2)
          {
            if (v24 == 3)
            {
              v25 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v25 = *a1;
            }
          }

          else if (v24 == 1)
          {
            v25 = *a1;
          }

          else
          {
            v25 = *a1;
          }
        }

        else
        {
          v25 = 0;
        }

        return v16 + (v25 | v23) + 1;
      }

      v21 = *(a1 + v19);
      if (*(a1 + v19))
      {
        goto LABEL_23;
      }
    }
  }

LABEL_36:
  if ((v15 & 0x80000000) == 0)
  {
    v26 = *(a1 + 1);
    if (v26 >= 0xFFFFFFFF)
    {
      LODWORD(v26) = -1;
    }

    return (v26 + 1);
  }

  if (v9 == v16)
  {
    if (v8 >= 2)
    {
      v29 = (*(v7 + 48))((a1 + v12 + 16) & ~v12);
      if (v29 >= 2)
      {
        return v29 - 1;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v28 = *(v10 + 48);

  return v28((v18 + ((((a1 + v12 + 16) & ~v12) + v17) & 0xFFFFFFFFFFFFFFF8)) & ~v14, v11);
}

void sub_1BD7DEA48(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = 0;
  v9 = *(sub_1BE04AF64() - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v11)
  {
    v12 = v11 - 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(*(a4 + 16) - 8);
  v14 = *(v13 + 84);
  v15 = *(v9 + 80);
  v16 = *(v9 + 64);
  v17 = *(v13 + 80);
  v18 = *(v13 + 64);
  if (v12 <= v14)
  {
    v19 = *(v13 + 84);
  }

  else
  {
    v19 = v12;
  }

  if (v19 <= 0x7FFFFFFF)
  {
    v20 = 0x7FFFFFFF;
  }

  else
  {
    v20 = v19;
  }

  if (v11)
  {
    v22 = v16;
  }

  else
  {
    v22 = v16 + 1;
  }

  v21 = (v15 + 16) & ~v15;
  v23 = ((v17 + 26 + ((v21 + v22) & 0xFFFFFFFFFFFFFFF8)) & ~v17) + v18;
  if (a3 <= v20)
  {
    goto LABEL_24;
  }

  if (v23 <= 3)
  {
    v24 = ((a3 - v20 + ~(-1 << (8 * v23))) >> (8 * v23)) + 1;
    if (HIWORD(v24))
    {
      v8 = 4;
      if (v20 >= a2)
      {
        goto LABEL_34;
      }

      goto LABEL_25;
    }

    if (v24 < 0x100)
    {
      v25 = 1;
    }

    else
    {
      v25 = 2;
    }

    if (v24 >= 2)
    {
      v8 = v25;
    }

    else
    {
      v8 = 0;
    }

LABEL_24:
    if (v20 >= a2)
    {
      goto LABEL_34;
    }

    goto LABEL_25;
  }

  v8 = 1;
  if (v20 >= a2)
  {
LABEL_34:
    if (v8 > 1)
    {
      if (v8 != 2)
      {
        *&a1[v23] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_41;
      }

      *&a1[v23] = 0;
    }

    else if (v8)
    {
      a1[v23] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_41;
    }

    if (!a2)
    {
      return;
    }

LABEL_41:
    if ((v19 & 0x80000000) != 0)
    {
      if (v12 == v20)
      {
        if (v11 >= 2)
        {
          v29 = *(v10 + 56);

          v29(&a1[v15 + 16] & ~v15, (a2 + 1));
        }
      }

      else
      {
        v30 = *(v13 + 56);

        v30((v17 + 26 + (((&a1[v15 + 16] & ~v15) + v22) & 0xFFFFFFFFFFFFFFF8)) & ~v17, a2, v14);
      }
    }

    else if ((a2 & 0x80000000) != 0)
    {
      *a1 = a2 & 0x7FFFFFFF;
      *(a1 + 1) = 0;
    }

    else
    {
      *(a1 + 1) = (a2 - 1);
    }

    return;
  }

LABEL_25:
  v26 = ~v20 + a2;
  if (v23 >= 4)
  {
    bzero(a1, ((v17 + 26 + ((v21 + v22) & 0xFFFFFFFFFFFFFFF8)) & ~v17) + v18);
    *a1 = v26;
    v27 = 1;
    if (v8 > 1)
    {
      goto LABEL_60;
    }

    goto LABEL_57;
  }

  v27 = (v26 >> (8 * v23)) + 1;
  if (!v23)
  {
LABEL_56:
    if (v8 > 1)
    {
      goto LABEL_60;
    }

    goto LABEL_57;
  }

  v28 = v26 & ~(-1 << (8 * v23));
  bzero(a1, ((v17 + 26 + ((v21 + v22) & 0xFFFFFFFFFFFFFFF8)) & ~v17) + v18);
  if (v23 == 3)
  {
    *a1 = v28;
    a1[2] = BYTE2(v28);
    goto LABEL_56;
  }

  if (v23 == 2)
  {
    *a1 = v28;
    if (v8 > 1)
    {
LABEL_60:
      if (v8 == 2)
      {
        *&a1[v23] = v27;
      }

      else
      {
        *&a1[v23] = v27;
      }

      return;
    }
  }

  else
  {
    *a1 = v26;
    if (v8 > 1)
    {
      goto LABEL_60;
    }
  }

LABEL_57:
  if (v8)
  {
    a1[v23] = v27;
  }
}

void sub_1BD7DEDA8()
{
  if (!qword_1EBD39308)
  {
    v0 = sub_1BE0534B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EBD39308);
    }
  }
}

uint64_t sub_1BD7DEE3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a1;
  v68 = a2;
  v3 = sub_1BE04FF64();
  v66 = *(v3 - 8);
  v67 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v65 = &WitnessTable - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54088, &qword_1BE0FA070);
  v79 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54090, &qword_1BE0FA078);
  v58 = *(a1 + 16);
  sub_1BE0500D4();
  sub_1BE04EBD4();
  v80 = sub_1BE04EBD4();
  v81 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54098, &qword_1BE0FA080);
  v82 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD540A0, &unk_1BE0FA088);
  swift_getTupleTypeMetadata();
  v53 = sub_1BE051E34();
  swift_getWitnessTable();
  v5 = sub_1BE051774();
  v57 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &WitnessTable - v6;
  WitnessTable = swift_getWitnessTable();
  v78 = v5;
  v79 = WitnessTable;
  v55 = MEMORY[0x1E697D248];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v56 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v10 = &WitnessTable - v9;
  v11 = sub_1BE04EBD4();
  v59 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &WitnessTable - v12;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD486C8, &qword_1BE0DC350);
  v14 = sub_1BE04EBD4();
  v62 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v52 = &WitnessTable - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD5B6B0, &unk_1BE0C6C20);
  v16 = sub_1BE04EBD4();
  v63 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v54 = &WitnessTable - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v60 = &WitnessTable - v19;
  v20 = *(v61 + 24);
  v69 = v58;
  v70 = v20;
  v71 = v64;
  sub_1BE04F504();
  sub_1BE051764();
  v21 = v65;
  sub_1BE04FF44();
  v22 = WitnessTable;
  sub_1BE050D14();
  (*(v66 + 8))(v21, v67);
  (*(v57 + 8))(v7, v5);
  sub_1BE052434();
  v24 = v23;
  v78 = v5;
  v79 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1BE050DE4();
  v24, v26, v27, v28, v29, v30, v31, v32;
  (*(v56 + 8))(v10, OpaqueTypeMetadata2);
  v33 = sub_1BD7E19E0(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v76 = OpaqueTypeConformance2;
  v77 = v33;
  v34 = swift_getWitnessTable();
  sub_1BD7E1524();
  v35 = v52;
  sub_1BE0509A4();
  (*(v59 + 8))(v13, v11);
  v36 = sub_1BE051324();
  v78 = v36;
  v37 = sub_1BD0DE4F4(&unk_1EBD512D0, &qword_1EBD486C8, &qword_1BE0DC350, MEMORY[0x1E697FD58]);
  v74 = v34;
  v75 = v37;
  v38 = swift_getWitnessTable();
  v39 = v54;
  sub_1BE050C04();
  v36, v40, v41, v42, v43, v44, v45, v46;
  (*(v62 + 8))(v35, v14);
  v47 = sub_1BD0DE4F4(&unk_1EBD3FB20, &qword_1EBD5B6B0, &unk_1BE0C6C20, MEMORY[0x1E697FDC0]);
  v72 = v38;
  v73 = v47;
  swift_getWitnessTable();
  v48 = v60;
  sub_1BD147308();
  v49 = *(v63 + 8);
  v49(v39, v16);
  sub_1BD147308();
  return (v49)(v48, v16);
}

uint64_t sub_1BD7DF664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v188 = a4;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD540A0, &unk_1BE0FA088);
  MEMORY[0x1EEE9AC00](v185);
  v189 = &v168 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v186 = &v168 - v9;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54098, &qword_1BE0FA080);
  MEMORY[0x1EEE9AC00](v194);
  v187 = &v168 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v196 = (&v168 - v12);
  sub_1BE0500D4();
  v13 = sub_1BE04EBD4();
  v181 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v180 = &v168 - v14;
  v182 = v15;
  v195 = sub_1BE04EBD4();
  v192 = *(v195 - 8);
  MEMORY[0x1EEE9AC00](v195);
  v198 = &v168 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v193 = &v168 - v18;
  v19 = sub_1BE04F6E4();
  v178 = *(v19 - 8);
  v179 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v177 = &v168 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = sub_1BE051584();
  v21 = *(v173 - 8);
  MEMORY[0x1EEE9AC00](v173);
  v23 = &v168 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCB8, &qword_1BE0BD500);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v176 = &v168 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD540B0, &qword_1BE0FA098);
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v175 = &v168 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v174 = &v168 - v30;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54088, &qword_1BE0FA070);
  MEMORY[0x1EEE9AC00](v184);
  v191 = &v168 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v168 - v33;
  v183 = a2;
  v35 = a3;
  v37 = type metadata accessor for SEStorageCleanupUsageRowView(0, a2, a3, v36);
  v38 = *(a1 + *(v37 + 48));
  v197 = v34;
  v190 = v37;
  if (v38 == 2)
  {
    v39 = v37;
    (*(v27 + 56))(v34, 1, 1, v26);
    v40 = v35;
  }

  else
  {
    v169 = v27;
    v170 = v26;
    v171 = a3;
    v172 = a1;
    v41 = sub_1BE051574();
    v42 = v173;
    (*(v21 + 104))(v23, *MEMORY[0x1E6981630], v173);
    v168 = sub_1BE0515E4();
    v41, v43, v44, v45, v46, v47, v48, v49;
    (*(v21 + 8))(v23, v42);
    sub_1BE051CD4();
    sub_1BE04E5E4();
    v50 = v227;
    v51 = v228;
    v52 = v229;
    v53 = v230;
    v54 = v231;
    v55 = v232;
    if (v38)
    {
      v56 = sub_1BE0511D4();
    }

    else
    {
      v56 = sub_1BE0513E4();
    }

    v57 = v56;
    KeyPath = swift_getKeyPath();
    LOBYTE(v233) = v51;
    LOBYTE(v217) = v53;
    *&v220 = v168;
    *(&v220 + 1) = v50;
    LOBYTE(v221) = v51;
    *(&v221 + 1) = v52;
    LOBYTE(v222) = v53;
    *(&v222 + 1) = v54;
    *&v223 = v55;
    *(&v223 + 1) = KeyPath;
    *&v224 = v57;
    v59 = v179;
    if (v38)
    {
      v60 = v177;
      sub_1BE04F6B4();
    }

    else
    {
      *&v206 = MEMORY[0x1E69E7CC0];
      sub_1BD7E19E0(&qword_1EBD3E638, MEMORY[0x1E697F5E0], MEMORY[0x1E697F5F0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E640, &qword_1BE0C8100);
      sub_1BD0DE4F4(&qword_1EBD3E648, &qword_1EBD3E640, &qword_1BE0C8100, MEMORY[0x1E69E6328]);
      v60 = v177;
      sub_1BE053664();
    }

    v61 = v197;
    v39 = v190;
    v62 = v169;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BCC8, &qword_1BE10FA60);
    sub_1BD1A3358();
    v63 = v176;
    sub_1BE050DA4();
    (*(v178 + 8))(v60, v59);
    v207 = v221;
    v208 = v222;
    v209 = v223;
    *&v210 = v224;
    v206 = v220;
    sub_1BD0DE53C(&v206, &qword_1EBD3BCC8, &qword_1BE10FA60);
    v64 = sub_1BE050224();
    sub_1BE04E1F4();
    v66 = v65;
    v68 = v67;
    v70 = v69;
    v72 = v71;
    v73 = v63;
    v74 = v175;
    sub_1BD0DE204(v73, v175, &qword_1EBD3BCB8, &qword_1BE0BD500);
    v75 = v170;
    v76 = v74 + *(v170 + 36);
    *v76 = v64;
    *(v76 + 8) = v66;
    *(v76 + 16) = v68;
    *(v76 + 24) = v70;
    *(v76 + 32) = v72;
    *(v76 + 40) = 0;
    v77 = v74;
    v78 = v174;
    sub_1BD0DE204(v77, v174, &qword_1EBD540B0, &qword_1BE0FA098);
    sub_1BD0DE204(v78, v61, &qword_1EBD540B0, &qword_1BE0FA098);
    (*(v62 + 56))(v61, 0, 1, v75);
    v40 = v171;
    a1 = v172;
  }

  if (*(a1 + *(v39 + 52)) == 1)
  {
    v79 = sub_1BE051404();
    sub_1BE051CD4();
    sub_1BE04E5E4();
    v177 = v234;
    v178 = v233;
    v175 = v236;
    v176 = v235;
    v173 = v238;
    v174 = v237;
    v179 = v79;
    sub_1BE048964();
  }

  else
  {
    v178 = 0;
    v179 = 0;
    v176 = 0;
    v177 = 0;
    v174 = 0;
    v175 = 0;
    v173 = 0;
  }

  v80 = v180;
  v81 = v183;
  sub_1BE050A24();
  sub_1BE050224();
  v82 = sub_1BD7E19E0(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v215 = v40;
  v216 = v82;
  v83 = v182;
  WitnessTable = swift_getWitnessTable();
  v85 = a1;
  v86 = v198;
  sub_1BE051014();
  (*(v181 + 8))(v80, v83);
  v213 = WitnessTable;
  v214 = MEMORY[0x1E697E5D8];
  v87 = v195;
  v180 = swift_getWitnessTable();
  sub_1BD147308();
  v88 = *(v192 + 8);
  v181 = v192 + 8;
  v182 = v88;
  v88(v86, v87);
  v89 = sub_1BE04F7B4();
  v90 = v196;
  *v196 = v89;
  v90[1] = 0;
  *(v90 + 16) = 1;
  v91 = v90;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD540B8, &qword_1BE0FA0A0);
  v93 = v91;
  sub_1BD7E04FC(v85, v81, v40, v91 + *(v92 + 44));
  LOBYTE(v91) = sub_1BE050234();
  sub_1BE04E1F4();
  v94 = v93 + *(v194 + 36);
  *v94 = v91;
  *(v94 + 8) = v95;
  *(v94 + 16) = v96;
  *(v94 + 24) = v97;
  *(v94 + 32) = v98;
  *(v94 + 40) = 0;
  v99 = (v85 + *(v190 + 44));
  v100 = v99[1];
  *&v220 = *v99;
  *(&v220 + 1) = v100;
  sub_1BD0DDEBC();
  sub_1BE048C84();
  v101 = sub_1BE0506C4();
  v103 = v102;
  LOBYTE(WitnessTable) = v104;
  v106 = v105;
  v107 = sub_1BE051494();
  v108 = sub_1BE050564();
  v110 = v109;
  LOBYTE(v85) = v111;
  v113 = v112;
  v107, v109, v111, v112, v114, v115, v116, v117;
  sub_1BD0DDF10(v101, v103, (WitnessTable & 1), v118, v119, v120, v121, v122);
  v106, v123, v124, v125, v126, v127, v128, v129;
  sub_1BE051CF4();
  sub_1BE04E5E4();
  LOBYTE(v85) = v85 & 1;
  LOBYTE(v220) = v85;
  LOBYTE(v101) = sub_1BE050204();
  sub_1BE04E1F4();
  LOBYTE(v205[0]) = 0;
  *&v206 = v108;
  *(&v206 + 1) = v110;
  LOBYTE(v207) = v85;
  *(&v207 + 1) = v113;
  v208 = v217;
  v209 = v218;
  v210 = v219;
  LOBYTE(v211) = v101;
  *(&v211 + 1) = v130;
  *&v212[0] = v131;
  *(&v212[0] + 1) = v132;
  *&v212[1] = v133;
  BYTE8(v212[1]) = 0;
  sub_1BE052434();
  v135 = v134;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD540C0, &qword_1BE0FA0A8);
  sub_1BD7E1578();
  v136 = v186;
  sub_1BE050DE4();
  v135, v137, v138, v139, v140, v141, v142, v143;
  v224 = v210;
  v225 = v211;
  v226[0] = v212[0];
  *(v226 + 9) = *(v212 + 9);
  v220 = v206;
  v221 = v207;
  v222 = v208;
  v223 = v209;
  sub_1BD0DE53C(&v220, &qword_1EBD540C0, &qword_1BE0FA0A8);
  v144 = v191;
  sub_1BD0DE19C(v197, v191, &qword_1EBD54088, &qword_1BE0FA070);
  v145 = v179;
  *&v206 = v179;
  *(&v206 + 1) = v178;
  *&v207 = v177;
  *(&v207 + 1) = v176;
  *&v208 = v175;
  *(&v208 + 1) = v174;
  *&v209 = v173;
  v205[0] = v144;
  v205[1] = &v206;
  v146 = v193;
  v147 = v198;
  v148 = v195;
  (*(v192 + 16))(v198, v193, v195);
  v205[2] = v147;
  v149 = v196;
  v150 = v187;
  sub_1BD0DE19C(v196, v187, &qword_1EBD54098, &qword_1BE0FA080);
  v205[3] = v150;
  v151 = v189;
  sub_1BD0DE19C(v136, v189, &qword_1EBD540A0, &unk_1BE0FA088);
  v205[4] = v151;
  v204[0] = v184;
  v204[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54090, &qword_1BE0FA078);
  v204[2] = v148;
  v204[3] = v194;
  v204[4] = v185;
  v199 = sub_1BD7E1624();
  v200 = sub_1BD7E17D0();
  v201 = v180;
  v202 = sub_1BD7E1874();
  v203 = sub_1BD7E192C(&qword_1EBD54110, &qword_1EBD540A0, &unk_1BE0FA088, sub_1BD7E1578);
  sub_1BD13A4C4(v205, 5uLL, v204);
  v145, v152, v153, v154, v155, v156, v157, v158;
  sub_1BD0DE53C(v136, &qword_1EBD540A0, &unk_1BE0FA088);
  sub_1BD0DE53C(v149, &qword_1EBD54098, &qword_1BE0FA080);
  v159 = v182;
  v182(v146, v148);
  sub_1BD0DE53C(v197, &qword_1EBD54088, &qword_1BE0FA070);
  sub_1BD0DE53C(v151, &qword_1EBD540A0, &unk_1BE0FA088);
  sub_1BD0DE53C(v150, &qword_1EBD54098, &qword_1BE0FA080);
  v159(v198, v148);
  v206, v160, v161, v162, v163, v164, v165, v166;
  return sub_1BD0DE53C(v191, &qword_1EBD54088, &qword_1BE0FA070);
}

uint64_t sub_1BD7E04FC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v163 = a2;
  v164 = a3;
  v170 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54118, &qword_1BE0FA0F8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v169 = v160 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v168 = v160 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3BC18, &unk_1BE0BD1D0);
  v165 = *(v9 - 8);
  v166 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v167 = v160 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v161 = v160 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v171 = v160 - v14;
  v162 = a1;
  v15 = *a1;
  v16 = a1[1];
  *&v191[0] = v15;
  *(&v191[0] + 1) = v16;
  v17 = sub_1BD0DDEBC();
  sub_1BE048C84();
  v160[1] = v17;
  v18 = sub_1BE0506C4();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v25 = sub_1BE050324();
  v26 = sub_1BE0505F4();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v25, v27, v29, v31, v33, v34, v35, v36;
  sub_1BD0DDF10(v18, v20, (v22 & 1), v37, v38, v39, v40, v41);
  v24, v42, v43, v44, v45, v46, v47, v48;
  v49 = sub_1BE051464();
  v50 = sub_1BE050564();
  v52 = v51;
  LOBYTE(v24) = v53;
  v55 = v54;
  v49, v51, v53, v54, v56, v57, v58, v59;
  sub_1BD0DDF10(v26, v28, (v30 & 1), v60, v61, v62, v63, v64);
  v32, v65, v66, v67, v68, v69, v70, v71;
  sub_1BE051CE4();
  sub_1BE04EE54();
  v192 = v24 & 1;
  *&v182 = v50;
  *(&v182 + 1) = v52;
  LOBYTE(v183) = v24 & 1;
  *(&v183 + 1) = v55;
  sub_1BE052434();
  v73 = v72;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3E090, &unk_1BE0D49D0);
  v75 = sub_1BD222ED0(&qword_1EBD4E8F0, &qword_1EBD3E090, &unk_1BE0D49D0);
  sub_1BE050DE4();
  v76 = v162;
  v73, v77, v78, v79, v80, v81, v82, v83;
  v191[6] = v188;
  v191[7] = v189;
  v191[8] = v190;
  v191[2] = v184;
  v191[3] = v185;
  v191[4] = v186;
  v191[5] = v187;
  v191[0] = v182;
  v191[1] = v183;
  sub_1BD0DE53C(v191, &qword_1EBD3E090, &unk_1BE0D49D0);
  v85 = type metadata accessor for SEStorageCleanupUsageRowView(0, v163, v164, v84);
  if (*(v76 + *(v85 + 40)))
  {
    v86 = v168;
    (*(v165 + 56))(v168, 1, 1, v166);
  }

  else
  {
    sub_1BD7E0B8C(v85);
    *&v182 = v87;
    *(&v182 + 1) = v88;
    v89 = sub_1BE0506C4();
    v91 = v90;
    v93 = v92;
    v95 = v94;
    v96 = sub_1BE050424();
    v97 = sub_1BE0505F4();
    v163 = v75;
    v164 = v74;
    v98 = v97;
    v100 = v99;
    v102 = v101;
    v104 = v103;
    v96, v99, v101, v103, v105, v106, v107, v108;
    sub_1BD0DDF10(v89, v91, (v93 & 1), v109, v110, v111, v112, v113);
    v95, v114, v115, v116, v117, v118, v119, v120;
    v121 = sub_1BE051494();
    v122 = sub_1BE050564();
    v124 = v123;
    LOBYTE(v95) = v125;
    v127 = v126;
    v121, v123, v125, v126, v128, v129, v130, v131;
    sub_1BD0DDF10(v98, v100, (v102 & 1), v132, v133, v134, v135, v136);
    v104, v137, v138, v139, v140, v141, v142, v143;
    sub_1BE051CE4();
    sub_1BE04EE54();
    v181 = v95 & 1;
    *&v172 = v122;
    *(&v172 + 1) = v124;
    LOBYTE(v173) = v95 & 1;
    *(&v173 + 1) = v127;
    sub_1BE052434();
    v145 = v144;
    v146 = v161;
    sub_1BE050DE4();
    v145, v147, v148, v149, v150, v151, v152, v153;
    v188 = v178;
    v189 = v179;
    v190 = v180;
    v184 = v174;
    v185 = v175;
    v186 = v176;
    v187 = v177;
    v182 = v172;
    v183 = v173;
    sub_1BD0DE53C(&v182, &qword_1EBD3E090, &unk_1BE0D49D0);
    v86 = v168;
    sub_1BD0DE204(v146, v168, &qword_1EBD3BC18, &unk_1BE0BD1D0);
    (*(v165 + 56))(v86, 0, 1, v166);
  }

  v154 = v171;
  v155 = v167;
  sub_1BD0DE19C(v171, v167, &qword_1EBD3BC18, &unk_1BE0BD1D0);
  v156 = v169;
  sub_1BD0DE19C(v86, v169, &qword_1EBD54118, &qword_1BE0FA0F8);
  v157 = v170;
  sub_1BD0DE19C(v155, v170, &qword_1EBD3BC18, &unk_1BE0BD1D0);
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54120, &unk_1BE0FA100);
  sub_1BD0DE19C(v156, v157 + *(v158 + 48), &qword_1EBD54118, &qword_1BE0FA0F8);
  sub_1BD0DE53C(v86, &qword_1EBD54118, &qword_1BE0FA0F8);
  sub_1BD0DE53C(v154, &qword_1EBD3BC18, &unk_1BE0BD1D0);
  sub_1BD0DE53C(v156, &qword_1EBD54118, &qword_1BE0FA0F8);
  return sub_1BD0DE53C(v155, &qword_1EBD3BC18, &unk_1BE0BD1D0);
}

void sub_1BD7E0B8C(uint64_t a1)
{
  v2 = sub_1BE04BD74();
  v105 = *(v2 - 8);
  v106 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v93 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v99 = &v93 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v96 = &v93 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v95 = &v93 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v98 = &v93 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v97 = &v93 - v14;
  v15 = sub_1BE04B2F4();
  v102 = *(v15 - 8);
  v103 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1BE04A474();
  v100 = *(v18 - 8);
  v101 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v93 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD39970, &unk_1BE0B9F80);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v93 - v22;
  v24 = sub_1BE04AF64();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v93 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v93 - v29;
  v31 = &v104[*(a1 + 36)];
  v33 = v32;
  sub_1BD0DE19C(v31, v23, &unk_1EBD39970, &unk_1BE0B9F80);
  if ((*(v25 + 48))(v23, 1, v33) == 1)
  {
    sub_1BD0DE53C(v23, &unk_1EBD39970, &unk_1BE0B9F80);
    v35 = v105;
    v34 = v106;
    (*(v105 + 104))(v4, *MEMORY[0x1E69B80D8], v106);
    v36 = PKPassKitBundle();
    if (v36)
    {
      v37 = v36;
      sub_1BE04B6F4();

      (*(v35 + 8))(v4, v34);
      return;
    }

    __break(1u);
    goto LABEL_24;
  }

  v38 = *(v25 + 32);
  v94 = v30;
  v38(v30, v23, v33);
  sub_1BE04B2A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD39800, &unk_1BE0B8D20);
  v39 = sub_1BE04B2D4();
  v40 = *(v39 - 8);
  v41 = *(v40 + 72);
  v42 = (*(v40 + 80) + 32) & ~*(v40 + 80);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1BE0B6CA0;
  v44 = v43 + v42;
  v45 = *MEMORY[0x1E6969A48];
  v104 = v20;
  v46 = v33;
  v47 = *(v40 + 104);
  v47(v44, v45, v39);
  v47(v44 + v41, *MEMORY[0x1E6969A10], v39);
  v48 = v46;
  v49 = v104;
  v50 = sub_1BD111674(v43);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1BE04AEF4();
  v51 = v94;
  sub_1BE04B184();
  v50, v52, v53, v54, v55, v56, v57, v58;
  v61 = *(v25 + 8);
  v59 = v25 + 8;
  v60 = v61;
  v61(v27, v48);
  (*(v102 + 8))(v17, v103);
  v62 = sub_1BE04A434();
  v64 = v105;
  v63 = v106;
  if ((v65 & 1) == 0)
  {
    if (v62 == 1)
    {
      v103 = v59;
      v66 = v98;
      (*(v105 + 104))(v98, *MEMORY[0x1E69B80D8], v106);
      v91 = PKPassKitBundle();
      if (!v91)
      {
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v68 = v91;
LABEL_18:
      sub_1BE04B6F4();

      (*(v64 + 8))(v66, v63);
      (*(v100 + 8))(v49, v101);
      v89 = v51;
      v90 = v48;
      goto LABEL_19;
    }

    if (!v62)
    {
      v103 = v59;
      v66 = v97;
      (*(v105 + 104))(v97, *MEMORY[0x1E69B80D8], v106);
      v67 = PKPassKitBundle();
      if (!v67)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v68 = v67;
      goto LABEL_18;
    }
  }

  v102 = v48;
  v69 = sub_1BE04A3F4();
  v70 = v99;
  if (v71)
  {
    goto LABEL_14;
  }

  if (v69 != 1)
  {
    if (!v69)
    {
      v72 = v95;
      (*(v64 + 104))(v95, *MEMORY[0x1E69B80D8], v63);
      v73 = PKPassKitBundle();
      if (!v73)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v74 = v73;
LABEL_22:
      sub_1BE04B6F4();

      (*(v64 + 8))(v72, v63);
      (*(v100 + 8))(v49, v101);
      v60(v51, v102);
      return;
    }

LABEL_14:
    v103 = v59;
    (*(v64 + 104))(v99, *MEMORY[0x1E69B80D8], v63);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
    v75 = swift_allocObject();
    *(v75 + 16) = xmmword_1BE0B69E0;
    v76 = sub_1BE04AE64();
    v77 = PKShortDateString();

    if (!v77)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v78 = v51;
    v79 = sub_1BE052434();
    v81 = v80;

    *(v75 + 56) = MEMORY[0x1E69E6158];
    *(v75 + 64) = sub_1BD110550();
    *(v75 + 32) = v79;
    *(v75 + 40) = v81;
    sub_1BE04B714();
    v75, v82, v83, v84, v85, v86, v87, v88;
    (*(v64 + 8))(v70, v63);
    (*(v100 + 8))(v104, v101);
    v89 = v78;
    v90 = v102;
LABEL_19:
    v60(v89, v90);
    return;
  }

  v72 = v96;
  (*(v64 + 104))(v96, *MEMORY[0x1E69B80D8], v63);
  v92 = PKPassKitBundle();
  if (v92)
  {
    v74 = v92;
    goto LABEL_22;
  }

LABEL_28:
  __break(1u);
}

unint64_t sub_1BD7E1524()
{
  result = qword_1EBD540A8;
  if (!qword_1EBD540A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD540A8);
  }

  return result;
}

unint64_t sub_1BD7E1578()
{
  result = qword_1EBD540C8;
  if (!qword_1EBD540C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD540C0, &qword_1BE0FA0A8);
    sub_1BD222ED0(&qword_1EBD38640, &unk_1EBD4E810, qword_1BE0EBFB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD540C8);
  }

  return result;
}

unint64_t sub_1BD7E1624()
{
  result = qword_1EBD540D0;
  if (!qword_1EBD540D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54088, &qword_1BE0FA070);
    sub_1BD7E16A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD540D0);
  }

  return result;
}

unint64_t sub_1BD7E16A8()
{
  result = qword_1EBD540D8;
  if (!qword_1EBD540D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD540B0, &qword_1BE0FA098);
    sub_1BD7E192C(&qword_1EBD367B8, &qword_1EBD3BCB8, &qword_1BE0BD500, sub_1BD1A3358);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD540D8);
  }

  return result;
}

uint64_t sub_1BD7E1760(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BD7E17D0()
{
  result = qword_1EBD540E0;
  if (!qword_1EBD540E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54090, &qword_1BE0FA078);
    sub_1BD7E1760(&qword_1EBD540E8, &qword_1EBD540F0, &qword_1BE0FA0B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD540E0);
  }

  return result;
}

unint64_t sub_1BD7E1874()
{
  result = qword_1EBD540F8;
  if (!qword_1EBD540F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54098, &qword_1BE0FA080);
    sub_1BD0DE4F4(&qword_1EBD54100, &qword_1EBD54108, &qword_1BE0FA0B8, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD540F8);
  }

  return result;
}

uint64_t sub_1BD7E192C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_1BD7E19E0(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BD7E19E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1BD7E1B84(char a1)
{
  v8.receiver = v1;
  v8.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v8, sel_viewDidAppear_, a1 & 1);
  v3 = *&v1[OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPerformPairingViewController_reporter];
  if (v3)
  {
    [v3 reportViewAppeared];
  }

  v4 = *&v1[OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPerformPairingViewController_coordinator];
  if (v4)
  {
    v5 = objc_allocWithZone(MEMORY[0x1E69B8E38]);
    v6 = v4;
    v7 = [v5 init];
    sub_1BD317B18(v7);
  }
}

void sub_1BD7E1C84()
{
  v10.receiver = v0;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, sel_loadView);
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = PKProvisioningBackgroundColor();
    [v2 setBackgroundColor_];

    v4 = [v0 view];
    if (v4)
    {
      v5 = v4;
      v6 = *&v0[OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPerformPairingViewController_provisioningView];
      [v4 addSubview_];

      v7 = [*&v0[OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPerformPairingViewController_credential] configuration];
      v8 = [objc_allocWithZone(PKCredentialPairingExplanationHeaderView) initWithConfiguration_];

      [v6 setHeaderView_];
      v9 = 4;
      sub_1BD7E1DD0(&v9, 0);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1BD7E1DD0(unsigned __int8 *a1, int a2)
{
  v110 = a2;
  v4 = sub_1BE04BD74();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v108 - v9;
  v11 = *a1;
  v114 = [objc_opt_self() sharedInstance];
  v12 = [*&v2[OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPerformPairingViewController_credential] configuration];
  if (!v12)
  {
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v13 = v12;
  v14 = [v12 provisioningTemplateIdentifier];

  if (v14)
  {
    v15 = sub_1BE052434();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  v112 = v17;
  v113 = v2;
  v18 = v2[OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPerformPairingViewController_supportsUWB];
  if (v18)
  {
    v19 = 0xD000000000000018;
  }

  else
  {
    v19 = 0xD000000000000014;
  }

  if (v18)
  {
    v20 = "CAR_KEY_PAIRING_CONNECTING";
  }

  else
  {
    v20 = "provisioningView";
  }

  v111 = sub_1BD7E2884(v19, v20 | 0x8000000000000000, v114, v15, v17);
  v22 = v21;
  (v20 | 0x8000000000000000), v21, v23, v24, v25, v26, v27, v28;
  if (v11 == 12)
  {
    v22, v29, v30, v31, v32, v33, v34, v35;
    (*(v5 + 104))(v10, *MEMORY[0x1E69B80D8], v4);
    v36 = PKPassKitBundle();
    if (!v36)
    {
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v37 = v36;
    sub_1BE04B6F4();
    v39 = v38;

    (*(v5 + 8))(v10, v4);
    v40 = v114;
    v41 = v112;
    v111 = sub_1BD7E2884(0xD00000000000001DLL, 0x80000001BE13AB30, v114, v15, v112);
    v22 = v42;
    v109 = sub_1BD7E2884(0xD000000000000018, 0x80000001BE13AB50, v40, v15, v41);
    v44 = v43;
    v45 = qword_1EBD54000;
    v46 = v113;
    [*&v113[OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPerformPairingViewController_provisioningView] setShowingCheckmark:1 animated:1];
    v47 = 0;
    v48 = 0.5;
    v49 = 1065353216;
  }

  else if (v110)
  {
    (*(v5 + 104))(v7, *MEMORY[0x1E69B80D8], v4);
    v50 = PKPassKitBundle();
    if (!v50)
    {
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v51 = v50;
    v108[1] = sub_1BE04B6F4();
    v39 = v52;

    (*(v5 + 8))(v7, v4);
    if (v11 == 11)
    {
      v40 = v114;
      v109 = sub_1BD7E2884(0xD000000000000018, 0x80000001BE13AB50, v114, v15, v112);
      v44 = v58;
      v47 = 0;
      if (v18)
      {
        v48 = 5.0;
      }

      else
      {
        v48 = 2.0;
      }

      v49 = 1065017672;
    }

    else
    {
      v40 = v114;
      if (v11 == 10)
      {
        v109 = sub_1BD7E2884(0xD000000000000018, 0x80000001BE13AB50, v114, v15, v112);
        v44 = v57;
        v47 = 0;
        if (v18)
        {
          v49 = 1061158912;
        }

        else
        {
          v49 = 1056964608;
        }

        if (v18)
        {
          v48 = 15.0;
        }

        else
        {
          v48 = 3.0;
        }
      }

      else if (v11 == 8)
      {
        v109 = sub_1BD7E2884(0xD00000000000001ALL, 0x80000001BE13AB90, v114, v15, v112);
        v44 = v53;
        v49 = 0;
        v48 = 0.0;
        v47 = 1;
      }

      else
      {
        v47 = 0;
        v109 = 0;
        v49 = 0;
        v48 = 0.0;
        v44 = 1;
      }
    }

    v46 = v113;
    v45 = qword_1EBD54000;
  }

  else
  {
    v48 = 0.2;
    v40 = v114;
    v54 = v112;
    sub_1BD7E2884(0xD00000000000001ELL, 0x80000001BE13AB70, v114, v15, v112);
    v39 = v55;
    if (v11 == 4)
    {
      v109 = sub_1BD7E2884(0xD00000000000001ALL, 0x80000001BE13AB90, v40, v15, v54);
      v44 = v56;
      v47 = 0;
    }

    else
    {
      v47 = 0;
      v109 = 0;
      v44 = 0;
    }

    v49 = 0;
    v46 = v113;
    v45 = qword_1EBD54000;
  }

  v59 = *&v46[v45[39]];
  v60 = sub_1BE052404();
  v39, v61, v62, v63, v64, v65, v66, v67;
  [v59 setPrimaryText_];

  v68 = [v59 secondaryLabel];
  if (!v68)
  {
    goto LABEL_51;
  }

  v69 = v68;
  v70 = sub_1BE052404();
  v22, v71, v72, v73, v74, v75, v76, v77;
  [v69 setText_];

  v78 = v112;
  if (v44 == 1)
  {
    goto LABEL_48;
  }

  v79 = [v59 progressLabel];
  if (!v79)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v80 = v79;
  v81 = v47;
  if (v44)
  {
    sub_1BE048C84();
    v82 = v109;
    v83 = sub_1BE052404();
    sub_1BD7E31C8(v82, v44, v49, *&v48, v84, v85, v86, v87);
  }

  else
  {
    v83 = 0;
  }

  [v80 setText_];

  v88 = [v59 progressView];
  v93 = v88;
  if (v48 == 0.0)
  {
    if (!v88)
    {
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v47 = v81;
    sub_1BD7E31C8(v109, v44, v49, *&v48, v89, v90, v91, v92);
    LODWORD(v94) = v49;
    [v93 setProgress_];
    goto LABEL_47;
  }

  if (v88)
  {
    v47 = v81;
    sub_1BD7E31C8(v109, v44, v49, *&v48, v89, v90, v91, v92);
    LODWORD(v95) = v49;
    [v93 _setProgressAnimated_duration_delay_options_];
LABEL_47:
    v40 = v114;

LABEL_48:
    [v59 setNeedsLayout];
    v96 = v113;
    v97 = [v113 navigationItem];
    v98 = [v97 rightBarButtonItem];

    [v98 setEnabled_];
    v99 = [v96 view];
    if (v99)
    {
      v107 = v99;
      v78, v100, v101, v102, v103, v104, v105, v106;
      [v107 setUserInteractionEnabled_];

      return;
    }

    goto LABEL_52;
  }

LABEL_57:
  __break(1u);
}

void sub_1BD7E26E4()
{
  v1 = *(v0 + OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPerformPairingViewController_reporter);
  if (v1)
  {
    [v1 reportButtonPressed_];
  }

  v2 = *(v0 + OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPerformPairingViewController_coordinator);
  if (v2)
  {
    v3 = v2;
    sub_1BD3188FC();
  }
}

id sub_1BD7E2884(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v7 = sub_1BE04BD74();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BE052404();
  if (a5)
  {
    a5 = sub_1BE052404();
  }

  v12 = [a3 provisioningString:v11 templateIdentifier:a5];

  if (v12)
  {
    v13 = sub_1BE052434();

    return v13;
  }

  else
  {
    (*(v8 + 104))(v10, *MEMORY[0x1E69B8038], v7);
    result = PKPassKitBundle();
    if (result)
    {
      v15 = result;
      v16 = sub_1BE04B6F4();

      (*(v8 + 8))(v10, v7);
      return v16;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1BD7E2A44(id a1)
{
  v2 = v1;
  v4 = sub_1BE04B944();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BE04BD74();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v81 - v14;
  if ([a1 hasLocalizedTitleAndMessage])
  {
    goto LABEL_5;
  }

  v84 = v5;
  v85 = v4;
  v86 = a1;
  v16 = *(v9 + 104);
  v83 = *MEMORY[0x1E69B8038];
  v82 = v16;
  v16(v15);
  v17 = PKPassKitBundle();
  if (v17)
  {
    v18 = v17;
    sub_1BE04B6F4();
    v20 = v19;

    v21 = *(v9 + 8);
    v81 = v9 + 8;
    v21(v15, v8);
    v22 = sub_1BE052404();
    v20, v23, v24, v25, v26, v27, v28, v29;
    a1 = v86;
    [v86 setLocalizedTitle_];

    v30 = [*&v2[OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPerformPairingViewController_credential] configuration];
    if (v30)
    {
      v31 = v30;
      v32 = [v30 issuerIdentifier];

      sub_1BE04BB94();
      v33 = sub_1BE04B8E4();
      (*(v84 + 8))(v7, v85);
      v34 = PKLocalizedCarIssuerNameFromIssuerIdentifier();

      v35 = sub_1BE052434();
      v37 = v36;

      v82(v11, v83, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD3CF80, &qword_1BE0B7DA0);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_1BE0B69E0;
      *(v38 + 56) = MEMORY[0x1E69E6158];
      *(v38 + 64) = sub_1BD110550();
      *(v38 + 32) = v35;
      *(v38 + 40) = v37;
      sub_1BE04B714();
      v40 = v39;
      v38, v39, v41, v42, v43, v44, v45, v46;
      v21(v11, v8);
      v47 = sub_1BE052404();
      v40, v48, v49, v50, v51, v52, v53, v54;
      [a1 setLocalizedMessage_];

LABEL_5:
      sub_1BD7E3158();
      v55 = swift_allocObject();
      v55[2] = v2;
      v56 = swift_allocObject();
      v56[2] = v2;
      v57 = swift_allocObject();
      v57[2] = v2;
      v58 = v2;
      v59 = static UIAlertController.alertForError(error:acknowledgeButtonText:exitButtonText:onAcknowledge:onExit:onTryAgain:)(a1, 0, 0, 0, 0, sub_1BD7E31DC, v55, sub_1BD7E31A4, v56, sub_1BD7E31AC, v57);
      v55, v60, v61, v62, v63, v64, v65, v66;
      v56, v67, v68, v69, v70, v71, v72, v73;
      v57, v74, v75, v76, v77, v78, v79, v80;
      [v58 presentViewController:v59 animated:1 completion:0];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1BD7E2F2C(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPerformPairingViewController_coordinator);
  if (v1)
  {
    v2 = v1;
    sub_1BD3188FC();
  }
}

void sub_1BD7E2F88(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPerformPairingViewController_coordinator);
  if (v1)
  {
    v2 = objc_allocWithZone(MEMORY[0x1E69B8E38]);
    v3 = v1;
    v4 = [v2 init];
    sub_1BD317B18(v4);
  }
}

id sub_1BD7E301C(uint64_t a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPerformPairingViewController_provisioningView;
  *&v3[v7] = [objc_allocWithZone(PKProvisioningProgressView) init];
  v8 = OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPerformPairingViewController_reporter;
  *&v3[OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPerformPairingViewController_reporter] = 0;
  *&v3[OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPerformPairingViewController_coordinator] = 0;
  *&v3[OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPerformPairingViewController_context] = a1;
  *&v3[OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPerformPairingViewController_credential] = a2;
  sub_1BE048964();
  result = [a2 configuration];
  if (result)
  {
    v10 = result;
    v11 = [result supportedRadioTechnologies];

    v3[OBJC_IVAR____TtC9PassKitUI43ProvisioningCarPerformPairingViewController_supportsUWB] = (v11 & 2) != 0;
    sub_1BE052434();
    v13 = v12;
    v14 = sub_1BE04BB74();
    v13, v15, v16, v17, v18, v19, v20, v21;
    v22 = *&v3[v8];
    *&v3[v8] = v14;

    v23.receiver = v3;
    v23.super_class = ObjectType;
    return objc_msgSendSuper2(&v23, sel_initWithNibName_bundle_, 0, 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1BD7E3158()
{
  result = qword_1EBD3D280;
  if (!qword_1EBD3D280)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBD3D280);
  }

  return result;
}

void sub_1BD7E31C8(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, unint64_t a7, uint64_t a8)
{
  if (a2 != 1)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
  }
}

uint64_t AccountAutomaticPaymentsFixedAmountView.init(model:)@<X0>(uint64_t a2@<X8>)
{
  sub_1BE051694();
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  sub_1BE051694();
  *(a2 + 32) = v4;
  *(a2 + 40) = v5;
  type metadata accessor for AccountAutomaticPaymentsModel(0);
  result = sub_1BE051694();
  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t AccountAutomaticPaymentsFixedAmountView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v42 = a1;
  v38 = sub_1BE04FB94();
  v40 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54160, &qword_1BE0FA160);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v35 - v7;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54168, &qword_1BE0FA168);
  MEMORY[0x1EEE9AC00](v36);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54170, &qword_1BE0FA170);
  v37 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35 - v12;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54178, &qword_1BE0FA178);
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v15 = &v35 - v14;
  v16 = v2[1];
  v47[0] = *v2;
  v47[1] = v16;
  v47[2] = v2[2];
  v43 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54180, &qword_1BE0FA180);
  sub_1BD7E3A68();
  sub_1BE0504E4();
  sub_1BE052434();
  v18 = v17;
  sub_1BD0DE4F4(&qword_1EBD541F8, &qword_1EBD54160, &qword_1BE0FA160, MEMORY[0x1E697CD20]);
  sub_1BE050DE4();
  v18, v19, v20, v21, v22, v23, v24, v25;
  (*(v6 + 8))(v8, v5);
  sub_1BE04FB84();
  v26 = sub_1BD7E3DC4();
  v27 = MEMORY[0x1E697C750];
  v28 = v36;
  v29 = v38;
  sub_1BE051144();
  (*(v40 + 8))(v4, v29);
  sub_1BD0DE53C(v10, &qword_1EBD54168, &qword_1BE0FA168);
  *&v44 = v28;
  *(&v44 + 1) = v29;
  v45 = v26;
  v46 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1BE050DF4();
  (*(v37 + 8))(v13, v11);
  sub_1BE0501C4();
  if (qword_1EBD36DD0 != -1)
  {
    swift_once();
  }

  *&v44 = v11;
  *(&v44 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v31 = v41;
  v32 = v42;
  sub_1BE050904();
  (*(v39 + 8))(v15, v31);
  v44 = v47[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54210, &qword_1BE0FA1C0);
  sub_1BE0516A4();
  type metadata accessor for AccountAutomaticPaymentsModel(0);
  sub_1BE051694();
  v33 = v44;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54218, &qword_1BE0FA1C8);
  *(v32 + *(result + 36)) = v33;
  return result;
}

uint64_t sub_1BD7E37F8(_OWORD *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD54268, &unk_1BE0FA460);
  MEMORY[0x1EEE9AC00](v2);
  sub_1BD7E6034(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54210, &qword_1BE0FA1C0);
  sub_1BE0516A4();
  sub_1BDA1C820();
  v4 = v3;
  v12, v3, v5, v6, v7, v8, v9, v10;
  if (v4)
  {
    sub_1BD0DDEBC();
    sub_1BE0506C4();
    sub_1BE0501F4();
    sub_1BE04E1F4();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD541D8, &qword_1BE0FA1A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD541E8, &unk_1BE0FA1B0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD541A0, &unk_1BE0FA190);
  sub_1BD7E3BFC();
  swift_getOpaqueTypeConformance2();
  sub_1BD0DE4F4(&qword_1EBD541D0, &qword_1EBD541D8, &qword_1BE0FA1A8, MEMORY[0x1E6981F48]);
  sub_1BD7E3D40();
  return sub_1BE051A34();
}

unint64_t sub_1BD7E3A68()
{
  result = qword_1EBD54188;
  if (!qword_1EBD54188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54180, &qword_1BE0FA180);
    sub_1BD7E3AF4();
    sub_1BD734220();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD54188);
  }

  return result;
}

unint64_t sub_1BD7E3AF4()
{
  result = qword_1EBD54190;
  if (!qword_1EBD54190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54198, &qword_1BE0FA188);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD541A0, &unk_1BE0FA190);
    sub_1BD7E3BFC();
    swift_getOpaqueTypeConformance2();
    sub_1BD0DE4F4(&qword_1EBD541D0, &qword_1EBD541D8, &qword_1BE0FA1A8, MEMORY[0x1E6981F48]);
    sub_1BD7E3D40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD54190);
  }

  return result;
}

unint64_t sub_1BD7E3BFC()
{
  result = qword_1EBD541A8;
  if (!qword_1EBD541A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD541A0, &unk_1BE0FA190);
    sub_1BD7E3C88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD541A8);
  }

  return result;
}

unint64_t sub_1BD7E3C88()
{
  result = qword_1EBD541B0;
  if (!qword_1EBD541B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD541B8, &unk_1BE101640);
    sub_1BD0DE4F4(&qword_1EBD541C0, &qword_1EBD541C8, &qword_1BE0FA1A0, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD541B0);
  }

  return result;
}

unint64_t sub_1BD7E3D40()
{
  result = qword_1EBD541E0;
  if (!qword_1EBD541E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD541E8, &unk_1BE0FA1B0);
    sub_1BD2A275C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD541E0);
  }

  return result;
}

unint64_t sub_1BD7E3DC4()
{
  result = qword_1EBD54200;
  if (!qword_1EBD54200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54168, &qword_1BE0FA168);
    sub_1BD0DE4F4(&qword_1EBD541F8, &qword_1EBD54160, &qword_1BE0FA160, MEMORY[0x1E697CD20]);
    sub_1BD7E920C(&qword_1EBD52210, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD54200);
  }

  return result;
}

uint64_t sub_1BD7E3EC8@<X0>(_OWORD *a1@<X0>, char *a2@<X8>)
{
  v38 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54280, &qword_1BE0FA470);
  v35 = *(v3 - 8);
  v36 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v31 = (&v31 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54288, &qword_1BE0FA478);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v37 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD54290, &unk_1BE0FA480);
  v32 = *(v10 - 8);
  v33 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v34 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v31 - v13;
  v40 = &unk_1F3B8F650;
  swift_getKeyPath();
  v15 = swift_allocObject();
  v16 = a1[1];
  v15[1] = *a1;
  v15[2] = v16;
  v15[3] = a1[2];
  sub_1BD7E8828(a1, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD3CFB0, qword_1BE0C0848);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD542A0, &qword_1BE0FA4B0);
  sub_1BD0DE4F4(&qword_1EBD542A8, &qword_1EBD3CFB0, qword_1BE0C0848, MEMORY[0x1E69E6338]);
  sub_1BD7E8860();
  sub_1BD7E88B4();
  v17 = v14;
  sub_1BE0519C4();
  v39[0] = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54350, &unk_1BE0B8D00);
  sub_1BE0516A4();
  if (v40 == 1)
  {
    v18 = a1[1];
    v39[0] = *a1;
    v39[1] = v18;
    v39[2] = a1[2];
    v19 = v31;
    sub_1BD7E5458(v31);
    sub_1BD0B7664(v19, v9);
    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  v21 = v9;
  (*(v35 + 56))(v9, v20, 1, v36);
  v22 = v32;
  v23 = v33;
  v24 = *(v32 + 16);
  v25 = v34;
  v24(v34, v17, v33);
  v26 = v37;
  sub_1BD0DE19C(v21, v37, &qword_1EBD54288, &qword_1BE0FA478);
  v27 = v38;
  v24(v38, v25, v23);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54358, &qword_1BE0FA510);
  sub_1BD0DE19C(v26, &v27[*(v28 + 48)], &qword_1EBD54288, &qword_1BE0FA478);
  sub_1BD0DE53C(v21, &qword_1EBD54288, &qword_1BE0FA478);
  v29 = *(v22 + 8);
  v29(v17, v23);
  sub_1BD0DE53C(v26, &qword_1EBD54288, &qword_1BE0FA478);
  return (v29)(v25, v23);
}

uint64_t sub_1BD7E4324@<X0>(_BYTE *a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  v50 = a3;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD543E0, &qword_1BE0FA5E0);
  v44 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v6 = &v44 - v5;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD543E8, &qword_1BE0FA5E8);
  v45 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v46 = &v44 - v7;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD543F0, &qword_1BE0FA5F0);
  MEMORY[0x1EEE9AC00](v48);
  v9 = &v44 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD543F8, &qword_1BE0FA5F8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v44 - v11;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD542C8, &qword_1BE0FA4B8);
  MEMORY[0x1EEE9AC00](v49);
  v14 = &v44 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD54400, &qword_1BE0FA600);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v44 - v17;
  v19 = *a1;
  if (*a1)
  {
    v20 = a2[1];
    v52 = *a2;
    v53 = v20;
    v54 = a2[2];
    if (v19 == 1)
    {
      v21 = v46;
      sub_1BD7E4D10(v46);
      v22 = v45;
      v23 = v47;
      (*(v45 + 16))(v12, v21, v47);
      swift_storeEnumTagMultiPayload();
      v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD542D0, &qword_1BE0FA4C0);
      v25 = sub_1BD7E8AA8();
      *&v52 = v24;
      *(&v52 + 1) = v25;
      swift_getOpaqueTypeConformance2();
      v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54300, &qword_1BE0FA4E0);
      v27 = sub_1BE04EB64();
      v28 = sub_1BD7E8C48();
      *&v52 = v26;
      *(&v52 + 1) = v27;
      *&v53 = v28;
      *(&v53 + 1) = MEMORY[0x1E697C178];
      swift_getOpaqueTypeConformance2();
      sub_1BE04F9A4();
      sub_1BD0DE19C(v14, v9, &qword_1EBD542C8, &qword_1BE0FA4B8);
      swift_storeEnumTagMultiPayload();
      sub_1BD7E8984();
      v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54330, &qword_1BE0FA500);
      v30 = sub_1BD7E8DE8();
      *&v52 = v29;
      *(&v52 + 1) = v30;
      swift_getOpaqueTypeConformance2();
      sub_1BE04F9A4();
      sub_1BD0DE53C(v14, &qword_1EBD542C8, &qword_1BE0FA4B8);
      return (*(v22 + 8))(v46, v23);
    }

    else
    {
      sub_1BD7E518C(v6);
      v40 = v44;
      v41 = v51;
      (*(v44 + 16))(v9, v6, v51);
      swift_storeEnumTagMultiPayload();
      sub_1BD7E8984();
      v42 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54330, &qword_1BE0FA500);
      v43 = sub_1BD7E8DE8();
      *&v52 = v42;
      *(&v52 + 1) = v43;
      swift_getOpaqueTypeConformance2();
      sub_1BE04F9A4();
      return (*(v40 + 8))(v6, v41);
    }
  }

  else
  {
    v32 = a2[1];
    v52 = *a2;
    v53 = v32;
    v54 = a2[2];
    sub_1BD7E4A4C();
    (*(v16 + 16))(v12, v18, v15);
    swift_storeEnumTagMultiPayload();
    v33 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD542D0, &qword_1BE0FA4C0);
    v34 = sub_1BD7E8AA8();
    *&v52 = v33;
    *(&v52 + 1) = v34;
    swift_getOpaqueTypeConformance2();
    v35 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54300, &qword_1BE0FA4E0);
    v36 = sub_1BE04EB64();
    v37 = sub_1BD7E8C48();
    *&v52 = v35;
    *(&v52 + 1) = v36;
    *&v53 = v37;
    *(&v53 + 1) = MEMORY[0x1E697C178];
    swift_getOpaqueTypeConformance2();
    sub_1BE04F9A4();
    sub_1BD0DE19C(v14, v9, &qword_1EBD542C8, &qword_1BE0FA4B8);
    swift_storeEnumTagMultiPayload();
    sub_1BD7E8984();
    v38 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD54330, &qword_1BE0FA500);
    v39 = sub_1BD7E8DE8();
    *&v52 = v38;
    *(&v52 + 1) = v39;
    swift_getOpaqueTypeConformance2();
    sub_1BE04F9A4();
    sub_1BD0DE53C(v14, &qword_1EBD542C8, &qword_1BE0FA4B8);
    return (*(v16 + 8))(v18, v15);
  }
}