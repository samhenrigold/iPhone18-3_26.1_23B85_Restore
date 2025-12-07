void *sub_26B1D84F0(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = result[3];
    if (v2)
    {
      v3 = *(v2 + 64);

      v3(v1);

      sqlite3_free(v1);
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26B1D855C(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = result;
  v3 = *(result + 24);
  if (!v3)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (a2)
  {
    v5 = *(v3 + 96);

    v6 = v5(v2, a2);

    return v6;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_26B1D85D8(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = result[1];
    if (v2)
    {
      v3 = *(v2 + 112);

      v3(v1);

      sqlite3_free(v1);
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26B1D8644(uint64_t result, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v8 = result;
  if (a3)
  {
    result = sub_26B212C20();
    v9 = result;
    v11 = v10;
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v9 = 0;
  v11 = 0;
  if (!result)
  {
    goto LABEL_6;
  }

LABEL_3:
  v12 = *(v8 + 8);
  if (v12)
  {
    v13 = *(v12 + 128);

    v14 = v13(v8, a2, v9, v11, a5, a4);

    return v14;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_26B1D870C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 8);
    if (v2)
    {
      v3 = *(v2 + 144);

      v4 = v3(v1);

      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26B1D8774(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  __break(1u);
  return result;
}

uint64_t sub_26B1D8788(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = result;
  v4 = *(result + 8);
  if (!v4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (a2)
  {
    v7 = *(v4 + 160);

    v8 = v7(v3, a2, a3);

    return v8;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_26B1D8814(uint64_t result, void *a2)
{
  if (result)
  {
    v2 = result;
    if (*(result + 24))
    {
      return 12;
    }

    if (a2)
    {
      result = 0;
      *a2 = *(v2 + 16);
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

uint64_t sub_26B1D884C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  sub_26B1D88BC(a1, a2, a3, a4, a5);
  return v10;
}

void *sub_26B1D88BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a2;
  v5[3] = a3;
  v5[4] = a1;
  v5[5] = a5;
  v8 = OUTLINED_FUNCTION_12_16(&unk_287BC00B8);
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  v5[8] = sub_26B1DBE4C;
  v5[9] = v8;
  v9 = OUTLINED_FUNCTION_12_16(&unk_287BC00E0);
  *(v9 + 16) = a4;
  *(v9 + 24) = a5;
  v5[10] = sub_26B1DBE98;
  v5[11] = v9;
  v10 = OUTLINED_FUNCTION_12_16(&unk_287BC0108);
  *(v10 + 16) = a4;
  *(v10 + 24) = a5;
  v5[12] = sub_26B1DBEA0;
  v5[13] = v10;
  v11 = OUTLINED_FUNCTION_12_16(&unk_287BC0130);
  *(v11 + 16) = a4;
  *(v11 + 24) = a5;
  v5[14] = sub_26B1DBEA8;
  v5[15] = v11;
  v12 = OUTLINED_FUNCTION_12_16(&unk_287BC0158);
  *(v12 + 16) = a4;
  *(v12 + 24) = a5;
  v5[16] = sub_26B1DBEF4;
  v5[17] = v12;
  v13 = OUTLINED_FUNCTION_12_16(&unk_287BC0180);
  *(v13 + 16) = a4;
  *(v13 + 24) = a5;
  v5[18] = sub_26B1DBEFC;
  v5[19] = v13;
  v14 = OUTLINED_FUNCTION_12_16(&unk_287BC01A8);
  *(v14 + 16) = a4;
  *(v14 + 24) = a5;
  v5[20] = sub_26B1DBF04;
  v5[21] = v14;
  v15 = swift_allocObject();
  v15[2] = a4;
  v15[3] = a5;
  v15[4] = v5;
  v5[6] = sub_26B1DBF0C;
  v5[7] = v15;

  sub_26B193F8C(0, 0);
  return v5;
}

uint64_t sub_26B1D8A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = _s13TableFunctionC13_VirtualTableV8FunctionVMa(0, a3, a4, a4);
  v12 = a3;
  v13 = a4;
  v14 = a2;
  sub_26B1D6C5C(v8, 1, sub_26B1DC06C, v11, a1, &_s13TableFunctionC13_VirtualTableVN, v8, MEMORY[0x277D84A98], MEMORY[0x277D849A8], MEMORY[0x277D84AC0], v10);
  return v15;
}

void sub_26B1D8B14(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _DWORD *a5@<X8>)
{
  v6 = v5;
  v12 = sub_26B2133E0();
  v42 = *(v12 - 8);
  v43 = v12;
  MEMORY[0x28223BE20](v12);
  v44 = a4;
  v45 = &v37 - v13;
  v14 = (*(a4 + 24))(a3, a4);
  v15 = *(v14 + 16);
  v46 = a5;
  if (v15)
  {
    v38 = v5;
    v39 = a3;
    v40 = a2;
    v41 = a1;
    v53[0] = MEMORY[0x277D84F90];
    sub_26B15B644(0, v15, 0);
    v16 = v53[0];
    v17 = (v14 + 40);
    do
    {
      v18 = *(v17 - 1);
      v19 = *v17;
      v53[0] = v16;
      v21 = *(v16 + 16);
      v20 = *(v16 + 24);
      sub_26B2128F0();
      if (v21 >= v20 >> 1)
      {
        sub_26B15B644(v20 > 1, v21 + 1, 1);
        v16 = v53[0];
      }

      *(v16 + 16) = v21 + 1;
      v22 = v16 + 16 * v21;
      *(v22 + 32) = v18;
      *(v22 + 40) = v19;
      v17 += 3;
      --v15;
    }

    while (v15);

    a5 = v46;
    a2 = v40;
    a1 = v41;
    v6 = v38;
    a3 = v39;
  }

  else
  {

    v16 = MEMORY[0x277D84F90];
  }

  sub_26B1D76B0(v16, a2, v55);
  if (v6)
  {
    sub_26B15FDE4(0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26B2162F0;
    ErrorValue = swift_getErrorValue();
    MEMORY[0x28223BE20](ErrorValue);
    (*(v32 + 16))(&v37 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
    v33 = sub_26B212AE0();
    v35 = v34;
    *(inited + 56) = MEMORY[0x277D837D0];
    *(inited + 64) = sub_26B1DBDF8();
    *(inited + 32) = v33;
    *(inited + 40) = v35;
    v36 = sub_26B214200();
    swift_setDeallocating();
    sub_26B185930();
    *(a1 + 16) = sqlite3_vmprintf("%s", v36);

    *a5 = 1;
  }

  else
  {
    v24 = *&v55[8];
    v41 = *v55;
    v25 = *&v55[16];
    v26 = v44;
    v27 = _s13TableFunctionC13_VirtualTableV8FunctionVMa(0, a3, v44, v23);
    v28 = v45;
    (*(v42 + 16))(v45, a1 + *(v27 + 36), v43);
    if (__swift_getEnumTagSinglePayload(v28, 1, a3) == 1)
    {
      __break(1u);
    }

    else
    {
      v54[0] = v41;
      v54[1] = v24;
      v54[2] = v25;
      (*(v26 + 48))(v55, v54, a3, v26);

      (*(*(a3 - 8) + 8))(v28, a3);
      memcpy(v53, v55, 0x41uLL);
      if (v53[3])
      {
        v47 = *v55;
        v48 = *&v55[16];
        v49 = v53[3];
        v50 = *&v55[32];
        v51 = *&v55[48];
        v52 = v55[64];
        sub_26B1D7DA0(a2);
        sub_26B1DC090(v53);
        *v46 = 0;
      }

      else
      {
        *v46 = 19;
      }
    }
  }
}

sqlite3_uint64 sub_26B1D8FC4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = *(*(_s13TableFunctionC19_VirtualTableCursorV6CursorVMa(0, a3, a4, a4) - 8) + 64);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v9 = sqlite3_malloc64(result);
    if (v9)
    {
      v11 = v9;
      v12 = _s13TableFunctionC13_VirtualTableV8FunctionVMa(0, a3, a4, v10);
      v13 = MEMORY[0x28223BE20](v12);
      v15[2] = a3;
      v15[3] = a4;
      v15[4] = v11;
      v15[5] = a1;
      sub_26B1D6C5C(v13, 1, sub_26B1DC024, v15, a1, &_s13TableFunctionC13_VirtualTableVN, v13, MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, MEMORY[0x277D84AC0], v14);
      result = 0;
      *a2 = v11;
    }

    else
    {
      return 7;
    }
  }

  return result;
}

uint64_t sub_26B1D90E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = _s13TableFunctionC19_VirtualTableCursorV6CursorVMa(0, a4, a5, a4);
  v14 = a4;
  v15 = a5;
  v16 = a3;
  v17 = a1;
  return sub_26B1D6ED0(v10, 1, sub_26B1DC048, v13, a2, v10, MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, MEMORY[0x277D84AC0], v12);
}

uint64_t sub_26B1D91A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_26B2133E0();
  MEMORY[0x28223BE20](v11 - 8);
  v36 = &v28 - v12;
  v35 = _s13TableFunctionC19_VirtualTableCursorV6CursorVMa(0, a4, a5, v13);
  MEMORY[0x28223BE20](v35);
  v14 = *(a5 + 24);
  v33 = *(a2 + 24);
  v34 = &v28 - v15;

  v16 = v14(a4, a5);
  v17 = *(v16 + 16);
  if (v17)
  {
    v29 = a3;
    v30 = a4;
    v31 = a1;
    v32 = v5;
    v38 = MEMORY[0x277D84F90];
    sub_26B15B644(0, v17, 0);
    v18 = v38;
    v19 = (v16 + 40);
    do
    {
      v20 = *(v19 - 1);
      v21 = *v19;
      v38 = v18;
      v23 = *(v18 + 16);
      v22 = *(v18 + 24);
      sub_26B2128F0();
      if (v23 >= v22 >> 1)
      {
        sub_26B15B644(v22 > 1, v23 + 1, 1);
        v18 = v38;
      }

      *(v18 + 16) = v23 + 1;
      v24 = v18 + 16 * v23;
      *(v24 + 32) = v20;
      *(v24 + 40) = v21;
      v19 += 3;
      --v17;
    }

    while (v17);

    a1 = v31;
    a3 = v29;
    a4 = v30;
  }

  else
  {

    v18 = MEMORY[0x277D84F90];
  }

  v25 = v36;
  __swift_storeEnumTagSinglePayload(v36, 1, 1, AssociatedTypeWitness);
  v26 = v34;
  sub_26B1D80D0(0, v33, 0, 1, a3, v18, v25, a4, v34, a5);
  return sub_26B1F567C(v26, a1, v35);
}

uint64_t sub_26B1D93FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6)
{
  v11 = a4(0);
  v15 = a2;
  v16 = a3;
  return sub_26B1D6C5C(v11, 1, a5, v14, a1, a6, v11, MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, MEMORY[0x277D84AC0], v13);
}

uint64_t sub_26B1D94C8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = _s13TableFunctionC19_VirtualTableCursorV6CursorVMa(0, a7, a8, a4);
  v20 = a7;
  v21 = a8;
  v22 = a2;
  v23 = a3;
  v24 = a4;
  v25 = a5;
  v26 = a6;
  sub_26B1D6C5C(v16, 1, sub_26B1DBFCC, v19, a1, &_s13TableFunctionC19_VirtualTableCursorVN, v16, MEMORY[0x277D84A98], MEMORY[0x277D849A8], MEMORY[0x277D84AC0], v18);
  return v27;
}

void sub_26B1D959C(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int *a9@<X8>)
{
  v48 = a4;
  v44 = a9;
  v45 = a6;
  v47 = a3;
  v46 = a2;
  v13 = sub_26B2133E0();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v42 - v15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v43 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v20 = &v42 - v19;
  v50 = a1;
  v21 = *(a1 + 32);
  if (!v21)
  {
    __break(1u);
    goto LABEL_10;
  }

  v22 = _s13TableFunctionC13_VirtualTableV8FunctionVMa(0, a7, a8, v18);
  (*(v14 + 16))(v16, v21 + *(v22 + 36), v13);
  if (__swift_getEnumTagSinglePayload(v16, 1, a7) == 1)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v51[0] = a5;
  v51[1] = v45;
  v23 = v49;
  (*(a8 + 56))(v46, v47, v48, v51, a7, a8);
  if (!v23)
  {
    (*(*(a7 - 8) + 8))(v16, a7);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v25 = (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
    v35 = v50;
    *(v50 + 16) = v25;
    *(v35 + 24) = v36 & 1;
    v38 = *(_s13TableFunctionC19_VirtualTableCursorV6CursorVMa(0, a7, a8, v37) + 44);
    v39 = sub_26B2133E0();
    (*(*(v39 - 8) + 8))(v35 + v38, v39);
    v40 = v43;
    (*(v43 + 16))(v35 + v38, v20, AssociatedTypeWitness);
    __swift_storeEnumTagSinglePayload(v35 + v38, 0, 1, AssociatedTypeWitness);
    (*(v40 + 8))(v20, AssociatedTypeWitness);
    v41 = 0;
LABEL_8:
    *v44 = v41;
    return;
  }

  (*(*(a7 - 8) + 8))(v16, a7);
  v26 = *(v50 + 32);
  if (v26)
  {
    sub_26B15FDE4(0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26B2162F0;
    ErrorValue = swift_getErrorValue();
    MEMORY[0x28223BE20](ErrorValue);
    (*(v30 + 16))(&v42 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
    v31 = sub_26B212AE0();
    v33 = v32;
    *(inited + 56) = MEMORY[0x277D837D0];
    *(inited + 64) = sub_26B1DBDF8();
    *(inited + 32) = v31;
    *(inited + 40) = v33;
    v34 = sub_26B214200();
    swift_setDeallocating();
    sub_26B185930();
    *(v26 + 16) = sqlite3_vmprintf("%s", v34);

    v41 = 1;
    goto LABEL_8;
  }

LABEL_11:
  __break(1u);
}

uint64_t sub_26B1D9A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = _s13TableFunctionC19_VirtualTableCursorV6CursorVMa(0, a2, a3, a4);
  v11 = a2;
  v12 = a3;
  sub_26B1D6C5C(v7, 1, sub_26B1DBFAC, v10, a1, &_s13TableFunctionC19_VirtualTableCursorVN, v7, MEMORY[0x277D84A98], MEMORY[0x277D849A8], MEMORY[0x277D84AC0], v9);
  return v13;
}

void sub_26B1D9B10(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int *a4@<X8>, uint64_t a5@<X3>)
{
  v8 = *(_s13TableFunctionC19_VirtualTableCursorV6CursorVMa(0, a2, a3, a5) + 44);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (__swift_getEnumTagSinglePayload(a1 + v8, 1, AssociatedTypeWitness) == 1)
  {
    __break(1u);
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v11 = (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
    if (!v5)
    {
      v22 = 0;
      *(a1 + 16) = v11;
      *(a1 + 24) = v12 & 1;
      goto LABEL_6;
    }

    v13 = *(a1 + 32);
    if (v13)
    {
      sub_26B15FDE4(0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_26B2162F0;
      ErrorValue = swift_getErrorValue();
      MEMORY[0x28223BE20](ErrorValue);
      (*(v17 + 16))(&v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
      v18 = sub_26B212AE0();
      v20 = v19;
      *(inited + 56) = MEMORY[0x277D837D0];
      *(inited + 64) = sub_26B1DBDF8();
      *(inited + 32) = v18;
      *(inited + 40) = v20;
      v21 = sub_26B214200();
      swift_setDeallocating();
      sub_26B185930();
      *(v13 + 16) = sqlite3_vmprintf("%s", v21);

      v22 = 1;
LABEL_6:
      *a4 = v22;
      return;
    }
  }

  __break(1u);
}

uint64_t sub_26B1D9D48(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v10 = _s13TableFunctionC19_VirtualTableCursorV6CursorVMa(0, a4, a5, a4);
  v14 = a4;
  v15 = a5;
  v16 = a3;
  v17 = a2;
  sub_26B1D6C5C(v10, 1, sub_26B1DBF84, v13, a1, &_s13TableFunctionC19_VirtualTableCursorVN, v10, MEMORY[0x277D84A98], MEMORY[0x277D849A8], MEMORY[0x277D84AC0], v12);
  return v18;
}

void sub_26B1D9E04(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _DWORD *a6@<X8>)
{
  v37 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = sub_26B2133E0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = &v36 - v15;
  v17 = *(a1 + 40);
  if (!v17)
  {
    goto LABEL_12;
  }

  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (*(v17 + 16) <= a2)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v38 = a6;
  v18 = v17 + 16 * a2;
  v20 = *(v18 + 32);
  v19 = *(v18 + 40);
  v21 = _s13TableFunctionC19_VirtualTableCursorV6CursorVMa(0, a4, a5, v14);
  (*(v13 + 16))(v16, a1 + *(v21 + 44), v12);
  if (__swift_getEnumTagSinglePayload(v16, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v40[0] = v20;
  v40[1] = v19;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v23 = *(AssociatedConformanceWitness + 16);
  sub_26B2128F0();
  v24 = v39;
  v23(v41, v40, AssociatedTypeWitness, AssociatedConformanceWitness);
  if (!v24)
  {

    (*(*(AssociatedTypeWitness - 8) + 8))(v16, AssociatedTypeWitness);
    v25 = v42;
    v26 = v43;
    __swift_project_boxed_opaque_existential_1(v41, v42);
    (*(v26 + 16))(v37, v25, v26);
    *v38 = 0;
    __swift_destroy_boxed_opaque_existential_1(v41);
    return;
  }

  (*(*(AssociatedTypeWitness - 8) + 8))(v16, AssociatedTypeWitness);
  v27 = *(a1 + 32);
  if (v27)
  {
    sub_26B15FDE4(0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26B2162F0;
    ErrorValue = swift_getErrorValue();
    MEMORY[0x28223BE20](ErrorValue);
    (*(v31 + 16))(&v36 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
    v32 = sub_26B212AE0();
    v34 = v33;
    *(inited + 56) = MEMORY[0x277D837D0];
    *(inited + 64) = sub_26B1DBDF8();
    *(inited + 32) = v32;
    *(inited + 40) = v34;
    v35 = sub_26B214200();
    swift_setDeallocating();
    sub_26B185930();
    *(v27 + 16) = sqlite3_vmprintf("%s", v35);

    *v38 = 1;
    return;
  }

LABEL_14:
  __break(1u);
}

void sub_26B1DA1FC(sqlite3 *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = _s13TableFunctionC13_VirtualTableV8FunctionVMa(0, a4, a5, a4);
  v12 = *(*(v11 - 8) + 64);
  if ((v12 & 0x8000000000000000) != 0)
  {
LABEL_24:
    __break(1u);
    return;
  }

  v13 = sqlite3_malloc64(v12);
  if (v13)
  {
    v14 = v13;
    v43 = v5;
    v44 = a2;
    v15 = (*(a5 + 32))(a4, a5);
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = (v15 + 32);
      do
      {
        v18 = *v17++;
        sqlite3_vtab_config_1(a1, v18 + 1);
        --v16;
      }

      while (v16);
    }

    v42 = a1;

    MEMORY[0x28223BE20](v19);
    v41[2] = a4;
    v41[3] = a5;
    v41[4] = a3;
    v20 = v43;
    sub_26B1D6ED0(v11, 1, sub_26B1DBF48, v41, v14, v11, MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, MEMORY[0x277D84AC0], v40);
    *v44 = v14;
    v47 = 0;
    v48 = 0xE000000000000000;
    sub_26B2136C0();

    v47 = 0xD00000000000001CLL;
    v48 = 0x800000026B220B20;
    v21 = (*(a5 + 24))(a4, a5);
    v22 = *(v21 + 16);
    if (v22)
    {
      v43 = v20;
      v49 = MEMORY[0x277D84F90];
      sub_26B15B06C();
      v23 = 0;
      v24 = v49;
      v25 = (v21 + 48);
      v44 = v21;
      while (v23 < *(v21 + 16))
      {
        v26 = *(v25 - 1);
        v27 = *v25;
        v45 = *(v25 - 2);
        v46 = v26;
        swift_bridgeObjectRetain_n();
        MEMORY[0x26D670040](32, 0xE100000000000000);
        v28 = 0xE400000000000000;
        v29 = 1280070990;
        v30 = v22;
        switch(v27)
        {
          case 1:
            v28 = 0xE700000000000000;
            v29 = 0x52454745544E49;
            break;
          case 2:
            v29 = 1279346002;
            break;
          case 3:
            v29 = 1415071060;
            break;
          case 4:
            v29 = 1112493122;
            break;
          case 5:
            v28 = 0xE600000000000000;
            v29 = 0x4E4544444948;
            break;
          default:
            break;
        }

        MEMORY[0x26D670040](v29, v28);

        v31 = v45;
        v32 = v46;
        v49 = v24;
        v33 = *(v24 + 16);
        if (v33 >= *(v24 + 24) >> 1)
        {
          sub_26B15B06C();
          v24 = v49;
        }

        ++v23;
        *(v24 + 16) = v33 + 1;
        v34 = v24 + 16 * v33;
        *(v34 + 32) = v31;
        *(v34 + 40) = v32;
        v25 += 24;
        v22 = v30;
        v35 = v30 == v23;
        v21 = v44;
        if (v35)
        {

          goto LABEL_22;
        }
      }

      __break(1u);
      goto LABEL_24;
    }

    v24 = MEMORY[0x277D84F90];
LABEL_22:
    v45 = v24;
    sub_26B1DC7CC(0, &qword_2803E6D38, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_26B165358();
    v36 = sub_26B2129F0();
    v38 = v37;

    MEMORY[0x26D670040](v36, v38);

    MEMORY[0x26D670040](0x3B29202020200ALL, 0xE700000000000000);
    v39 = sub_26B212B10();

    sqlite3_declare_vtab(v42, (v39 + 32));
  }
}

uint64_t sub_26B1DA634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26B2133E0();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v17 - v9;
  v12 = _s13TableFunctionC13_VirtualTableV8FunctionVMa(0, a3, a4, v11);
  MEMORY[0x28223BE20](v12);
  v14 = v17 - v13;
  v15 = *(a4 + 40);

  v15(a3, a4);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, a3);
  sub_26B1D7F7C(0, 0, 0, a2, v10, a3, a4, v14);
  return sub_26B1F567C(v14, a1, v12);
}

uint64_t *sub_26B1DA794()
{

  sub_26B193F8C(*(v0 + 48), *(v0 + 56));

  return v0;
}

uint64_t sub_26B1DA7F4()
{
  sub_26B1DA794();

  return MEMORY[0x2821FE8D8](v0, 176, 7);
}

uint64_t SQLDatabase.registerFunction<A>(_:named:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[21] = a5;
  v6[22] = v5;
  v6[19] = a3;
  v6[20] = a4;
  v6[17] = a1;
  v6[18] = a2;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_26B1DA844()
{
  v1 = v0[22];
  v2 = v0[18];
  v3 = v0[19];
  v4 = OBJC_IVAR____TtC15SonicFoundation11SQLDatabase_tableFunctions;
  v0[23] = OBJC_IVAR____TtC15SonicFoundation11SQLDatabase_tableFunctions;
  swift_beginAccess();
  v5 = sub_26B15CF00(v2, v3, *(v1 + v4));
  if (v5)
  {
    v6 = v5;
    v7 = v0[17];
    swift_endAccess();
    v8 = *(v6 + 32);

    if (v8 == v7)
    {
      OUTLINED_FUNCTION_20();

      return v9();
    }
  }

  else
  {
    swift_endAccess();
  }

  v11 = v0[22];
  _s13TableFunctionCMa();
  sub_26B2128F0();
  v12 = OUTLINED_FUNCTION_4_23();
  v17 = sub_26B1D884C(v12, v13, v14, v15, v16);
  v0[24] = v17;
  v20 = *(v11 + OBJC_IVAR____TtC15SonicFoundation11SQLDatabase_connection);
  v0[25] = v20;
  if (v20)
  {

    v17 = OUTLINED_FUNCTION_4_0();
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_26B1DA9B0()
{
  OUTLINED_FUNCTION_12();
  sub_26B1AE1D0(v0[25], v0[24]);
  v0[26] = 0;
  v1 = v0[22];

  return MEMORY[0x2822009F8](sub_26B1DAA4C, v1, 0);
}

uint64_t sub_26B1DAA4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_79();
  v15 = v12[22];
  v16 = OBJC_IVAR____TtC15SonicFoundation11SQLDatabase_transactions;
  swift_beginAccess();
  v17 = *(v15 + v16);
  if ((v17 & 0xC000000000000001) != 0)
  {
    sub_26B2128F0();
    sub_26B2135E0();
    type metadata accessor for SQLDatabase.Transaction();
    sub_26B1DB1A8();
    sub_26B2131F0();
    v20 = v12[2];
    v21 = v12[3];
    v23 = v12[4];
    v22 = v12[5];
    v24 = v12[6];
  }

  else
  {
    v25 = -1 << *(v17 + 32);
    v21 = v17 + 56;
    v23 = ~v25;
    v26 = -v25;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    else
    {
      v27 = -1;
    }

    v24 = v27 & *(v17 + 56);
    v20 = sub_26B2128F0();
    v22 = 0;
  }

  v12[27] = v20;
  v12[28] = v21;
  v12[30] = v22;
  v12[31] = v24;
  v12[29] = v23;
  if (v20 < 0)
  {
    v33 = sub_26B213610();
    if (!v33)
    {
      goto LABEL_20;
    }

    v12[16] = v33;
    type metadata accessor for SQLDatabase.Transaction();
    OUTLINED_FUNCTION_19_9();
    v32 = v12[10];
    v29 = v22;
    v31 = v24;
  }

  else
  {
    v28 = v24;
    v29 = v22;
    if (!v24)
    {
      v30 = v22;
      while (1)
      {
        v29 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          break;
        }

        if (v29 >= ((v23 + 64) >> 6))
        {
          goto LABEL_20;
        }

        v28 = *(v21 + 8 * v29);
        ++v30;
        if (v28)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
      return MEMORY[0x2822009F8](v20, v18, v19);
    }

LABEL_13:
    v31 = (v28 - 1) & v28;
    v32 = *(*(v20 + 48) + ((v29 << 9) | (8 * __clz(__rbit64(v28)))));
  }

  v12[33] = v29;
  v12[34] = v31;
  v12[32] = v32;
  if (v32)
  {
    OUTLINED_FUNCTION_2_31();
    OUTLINED_FUNCTION_78();

    return MEMORY[0x2822009F8](v20, v18, v19);
  }

LABEL_20:
  v35 = OUTLINED_FUNCTION_11_14();
  sub_26B152CD4(v35);
  OUTLINED_FUNCTION_18_11();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_9_20(isUniquelyReferenced_nonNull_native);
  *(v14 + v13) = a10;
  swift_endAccess();

  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_78();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12);
}

uint64_t sub_26B1DAC7C()
{
  OUTLINED_FUNCTION_25();
  *(v0 + 280) = *(*(v0 + 256) + 128);

  v1 = OUTLINED_FUNCTION_4_0();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_26B1DACE8()
{
  OUTLINED_FUNCTION_25();

  v0 = OUTLINED_FUNCTION_4_0();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_26B1DAD4C()
{
  v25 = v0;
  v1 = *(v0 + 280);
  swift_beginAccess();
  v4 = *(v1 + 136);
  if (!v4)
  {
    __break(1u);
    goto LABEL_15;
  }

  v5 = sub_26B1D6D2C(v4);
  v6 = v5;
  sub_26B1E26EC(v5, v0 + 80);
  v7 = *(v0 + 84);
  if (v7 != 1 && (v7 != 14 || *(v0 + 80) != 16))
  {
    v9 = sqlite3_extended_errcode(*(v1 + 136));
    v4 = sqlite3_errstr(v6);
    if (v4)
    {
      v10 = sub_26B212C20();
      v12 = v11;
      v4 = sqlite3_errmsg(*(v1 + 136));
      if (v4)
      {
        v22 = *(v0 + 176);
        v13 = sub_26B212C20();
        v15 = v14;
        sub_26B1AFA88();
        v16 = swift_allocError();
        v18 = v17;
        *(v0 + 288) = v16;
        *v17 = v9;
        sub_26B1E26EC(v9, &v23);
        v19 = v24;
        v18[1] = v23;
        *(v18 + 8) = v19;
        *(v18 + 2) = v10;
        *(v18 + 3) = v12;
        *(v18 + 4) = v13;
        *(v18 + 5) = v15;
        swift_willThrow();

        v4 = sub_26B1DB094;
        v2 = v22;
        goto LABEL_11;
      }

LABEL_16:
      __break(1u);
      return MEMORY[0x2822009F8](v4, v2, v3);
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v20 = *(v0 + 176);

  v4 = sub_26B1DAF0C;
  v2 = v20;
LABEL_11:
  v3 = 0;

  return MEMORY[0x2822009F8](v4, v2, v3);
}

uint64_t sub_26B1DAF0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_79();

  v18 = v12[33];
  v19 = v12[34];
  v12[30] = v18;
  v12[31] = v19;
  v20 = v12[27];
  if (v20 < 0)
  {
    v26 = sub_26B213610();
    if (!v26)
    {
      goto LABEL_14;
    }

    v12[16] = v26;
    type metadata accessor for SQLDatabase.Transaction();
    OUTLINED_FUNCTION_19_9();
    v25 = v12[10];
    v22 = v18;
    v24 = v19;
  }

  else
  {
    v21 = v19;
    v22 = v18;
    if (!v19)
    {
      v23 = v18;
      while (1)
      {
        v22 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        if (v22 >= ((v12[29] + 64) >> 6))
        {
          goto LABEL_14;
        }

        v21 = *(v12[28] + 8 * v22);
        ++v23;
        if (v21)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
      return MEMORY[0x2822009F8](v15, v16, v17);
    }

LABEL_7:
    v24 = (v21 - 1) & v21;
    v25 = *(*(v20 + 48) + ((v22 << 9) | (8 * __clz(__rbit64(v21)))));
  }

  v12[33] = v22;
  v12[34] = v24;
  v12[32] = v25;
  if (v25)
  {
    OUTLINED_FUNCTION_2_31();
    OUTLINED_FUNCTION_78();

    return MEMORY[0x2822009F8](v15, v16, v17);
  }

LABEL_14:
  v28 = OUTLINED_FUNCTION_11_14();
  sub_26B152CD4(v28);
  OUTLINED_FUNCTION_18_11();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_9_20(isUniquelyReferenced_nonNull_native);
  *(v14 + v13) = a10;
  swift_endAccess();

  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_78();

  return v31(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12);
}

uint64_t sub_26B1DB094()
{

  v0 = OUTLINED_FUNCTION_4_23();
  sub_26B152CD4(v0);
  OUTLINED_FUNCTION_10_0();

  return v1();
}

uint64_t sub_26B1DB120()
{
  OUTLINED_FUNCTION_25();

  OUTLINED_FUNCTION_10_0();

  return v0();
}

unint64_t sub_26B1DB1A8()
{
  result = qword_2803E7DD8;
  if (!qword_2803E7DD8)
  {
    type metadata accessor for SQLDatabase.Transaction();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E7DD8);
  }

  return result;
}

uint64_t SQLDatabase.unregisterFunction(named:)(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return OUTLINED_FUNCTION_0_2();
}

uint64_t sub_26B1DB218()
{
  OUTLINED_FUNCTION_25();
  v1 = v0[7];
  v2 = OBJC_IVAR____TtC15SonicFoundation11SQLDatabase_tableFunctions;
  v0[8] = OBJC_IVAR____TtC15SonicFoundation11SQLDatabase_tableFunctions;
  swift_beginAccess();
  if (*(*(v1 + v2) + 16) && (sub_26B16E800(v0[5], v0[6]), (v3 & 1) != 0))
  {
    v4 = v0[7];
    v5 = swift_endAccess();
    v8 = OBJC_IVAR____TtC15SonicFoundation11SQLDatabase_connection;
    v0[9] = OBJC_IVAR____TtC15SonicFoundation11SQLDatabase_connection;
    v9 = *(v4 + v8);
    v0[10] = v9;
    if (v9)
    {

      v5 = OUTLINED_FUNCTION_4_0();
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x2822009F8](v5, v6, v7);
  }

  else
  {
    swift_endAccess();
    OUTLINED_FUNCTION_20();

    return v10();
  }
}

uint64_t sub_26B1DB318()
{
  OUTLINED_FUNCTION_12();
  sub_26B1D1E28();
  *(v0 + 88) = 0;
  v1 = *(v0 + 56);

  return MEMORY[0x2822009F8](sub_26B1DB3B4, v1, 0);
}

uint64_t sub_26B1DB3B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3[7] + v3[9]);
  v3[12] = v4;
  if (v4)
  {
    OUTLINED_FUNCTION_25();
    sub_26B2128F0();

    a1 = OUTLINED_FUNCTION_4_0();
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t sub_26B1DB434()
{
  OUTLINED_FUNCTION_12();
  v1 = v0[11];
  sub_26B1AE41C(v0[12], v0[5], v0[6]);
  v0[13] = v1;
  if (v1)
  {
    v2 = v0[7];
    v3 = sub_26B1CEA68;
  }

  else
  {
    v4 = v0[7];

    v3 = sub_26B1DB4D0;
    v2 = v4;
  }

  return MEMORY[0x2822009F8](v3, v2, 0);
}

uint64_t sub_26B1DB4D0()
{
  OUTLINED_FUNCTION_12();
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  swift_beginAccess();
  sub_26B1CEEAC(v2, v1);
  swift_endAccess();

  OUTLINED_FUNCTION_20();

  return v3();
}

uint64_t sub_26B1DB568(sqlite3 *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26B212AD0();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[0] = a2;
  v16[1] = a3;
  sub_26B212AC0();
  sub_26B14FCC8();
  v12 = sub_26B2134C0();
  (*(v8 + 8))(v11, v6);
  if (v12)
  {
    v13 = (v12 + 32);
  }

  else
  {
    v13 = 0;
  }

  module_v2 = sqlite3_create_module_v2(a1, v13, 0, 0, 0);

  return module_v2;
}

unint64_t sub_26B1DB69C()
{
  result = qword_2803E8190;
  if (!qword_2803E8190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E8190);
  }

  return result;
}

unint64_t sub_26B1DB6F4()
{
  result = qword_2803E8198;
  if (!qword_2803E8198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E8198);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SQLVirtualTableModuleOption(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for SQLTableFunctionCursorArguments(uint64_t a1, int a2)
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

uint64_t sub_26B1DB93C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_26B1DB97C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for SQLIndexConstraint.Operator(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for SQLIndexConstraint.Operator(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_26B1DBB38(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_26B1DBB78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26B1DBBE8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_26B1DBC28(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_26B1DBC84(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 25))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t sub_26B1DBCD8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_26B1DBD40(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_26B1DBD94(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_26B1DBDF8()
{
  result = qword_2803E81A0;
  if (!qword_2803E81A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E81A0);
  }

  return result;
}

uint64_t sub_26B1DC090(uint64_t a1)
{
  sub_26B1DC7CC(0, qword_2803E81A8, &type metadata for SQLVirtualTableIndexResults, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_26B1DC130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s13TableFunctionC13_VirtualTableV8FunctionVMa(255, *(a1 + 16), *(a1 + 24), a4);
  sub_26B2133D0();
  sub_26B2133E0();
  if (v4 <= 0x3F)
  {
    sub_26B1DC750(319);
    if (v5 <= 0x3F)
    {
      swift_getAssociatedTypeWitness();
      sub_26B2133E0();
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_26B1DC22C(unint64_t a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFE)
  {
    v9 = 2147483646;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v6 + 80);
  v11 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!v7)
  {
    ++v11;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 > v9)
  {
    v12 = v11 + ((v10 + 48) & ~v10);
    v13 = 8 * v12;
    if (v12 > 3)
    {
      goto LABEL_12;
    }

    v16 = ((a2 - v9 + ~(-1 << v13)) >> v13) + 1;
    if (HIWORD(v16))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_28;
      }

      goto LABEL_20;
    }

    if (v16 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_28;
      }

      goto LABEL_20;
    }

    if (v16 >= 2)
    {
LABEL_12:
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_28;
      }

LABEL_20:
      v17 = (v14 - 1) << v13;
      if (v12 > 3)
      {
        v17 = 0;
      }

      if (v12)
      {
        if (v12 > 3)
        {
          LODWORD(v12) = 4;
        }

        switch(v12)
        {
          case 2:
            LODWORD(v12) = *a1;
            break;
          case 3:
            LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            LODWORD(v12) = *a1;
            break;
          default:
            LODWORD(v12) = *a1;
            break;
        }
      }

      v19 = v9 + (v12 | v17);
      return (v19 + 1);
    }
  }

LABEL_28:
  if (v8 <= 0x7FFFFFFE)
  {
    v18 = *(a1 + 8);
    if (v18 >= 0xFFFFFFFF)
    {
      LODWORD(v18) = -1;
    }

    v19 = v18 - 1;
    if (v19 < 0)
    {
      v19 = -1;
    }

    return (v19 + 1);
  }

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(((((a1 & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + v10 + 8) & ~v10, v7, AssociatedTypeWitness);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

void sub_26B1DC420(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = 0;
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  v11 = v10 - 1;
  if (!v10)
  {
    v11 = 0;
  }

  if (v11 <= 0x7FFFFFFE)
  {
    v12 = 2147483646;
  }

  else
  {
    v12 = v11;
  }

  v13 = *(v9 + 80);
  v14 = (v13 + 48) & ~v13;
  if (v10)
  {
    v15 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v15 = *(*(AssociatedTypeWitness - 8) + 64) + 1;
  }

  v16 = v14 + v15;
  v17 = 8 * (v14 + v15);
  if (a3 > v12)
  {
    if (v16 <= 3)
    {
      v18 = ((a3 - v12 + ~(-1 << v17)) >> v17) + 1;
      if (HIWORD(v18))
      {
        v8 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v8 = v19;
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
  }

  if (v12 >= a2)
  {
    switch(v8)
    {
      case 1:
        *(a1 + v16) = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *(a1 + v16) = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_61:
        __break(1u);
        break;
      case 4:
        *(a1 + v16) = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v11 > 0x7FFFFFFE)
          {
            v23 = (((((a1 & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + v13 + 8) & ~v13);
            if (v11 >= a2)
            {

              __swift_storeEnumTagSinglePayload(v23, a2 + 1, v10, AssociatedTypeWitness);
            }

            else
            {
              if (v15 <= 3)
              {
                v24 = ~(-1 << (8 * v15));
              }

              else
              {
                v24 = -1;
              }

              if (v15)
              {
                v25 = v24 & (~v11 + a2);
                if (v15 <= 3)
                {
                  v26 = v15;
                }

                else
                {
                  v26 = 4;
                }

                bzero(v23, v15);
                switch(v26)
                {
                  case 2:
                    *v23 = v25;
                    break;
                  case 3:
                    *v23 = v25;
                    v23[2] = BYTE2(v25);
                    break;
                  case 4:
                    *v23 = v25;
                    break;
                  default:
                    *v23 = v25;
                    break;
                }
              }
            }
          }

          else if (a2 > 0x7FFFFFFE)
          {
            *(a1 + 8) = 0;
            *(a1 + 16) = 0;
            *(a1 + 24) = 0;
            *a1 = a2 - 0x7FFFFFFF;
          }

          else
          {
            *(a1 + 8) = a2;
          }
        }

        break;
    }
  }

  else
  {
    v20 = ~v12 + a2;
    if (v16 < 4)
    {
      v21 = (v20 >> v17) + 1;
      if (v16)
      {
        v22 = v20 & ~(-1 << v17);
        bzero(a1, v16);
        if (v16 == 3)
        {
          *a1 = v22;
          *(a1 + 2) = BYTE2(v22);
        }

        else if (v16 == 2)
        {
          *a1 = v22;
        }

        else
        {
          *a1 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v20;
      v21 = 1;
    }

    switch(v8)
    {
      case 1:
        *(a1 + v16) = v21;
        break;
      case 2:
        *(a1 + v16) = v21;
        break;
      case 3:
        goto LABEL_61;
      case 4:
        *(a1 + v16) = v21;
        break;
      default:
        return;
    }
  }
}

void sub_26B1DC750(uint64_t a1)
{
  if (!qword_2803E8230)
  {
    sub_26B1DC7CC(255, qword_2803E8238, &type metadata for SQLColumnName, MEMORY[0x277D83940]);
    v1 = sub_26B2133E0();
    if (!v2)
    {
      atomic_store(v1, &qword_2803E8230);
    }
  }
}

void sub_26B1DC7CC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_26B1DC81C(uint64_t a1)
{
  result = sub_26B2133E0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26B1DC89C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v5 + 80);
  v10 = *(*(v4 - 8) + 64);
  if (!v6)
  {
    ++v10;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = a2 - v8;
  if (a2 > v8)
  {
    v12 = v10 + ((v9 + 32) & ~v9);
    v13 = 8 * v12;
    if (v12 > 3)
    {
      goto LABEL_12;
    }

    v16 = ((v11 + ~(-1 << v13)) >> v13) + 1;
    if (HIWORD(v16))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_28;
      }

      goto LABEL_20;
    }

    if (v16 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_28;
      }

      goto LABEL_20;
    }

    if (v16 >= 2)
    {
LABEL_12:
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_28;
      }

LABEL_20:
      v17 = (v14 - 1) << v13;
      if (v12 > 3)
      {
        v17 = 0;
      }

      if (v12)
      {
        if (v12 > 3)
        {
          LODWORD(v12) = 4;
        }

        switch(v12)
        {
          case 2:
            LODWORD(v12) = *a1;
            break;
          case 3:
            LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
            break;
          case 4:
            LODWORD(v12) = *a1;
            break;
          default:
            LODWORD(v12) = *a1;
            break;
        }
      }

      v19 = v8 + (v12 | v17);
      return (v19 + 1);
    }
  }

LABEL_28:
  if (v7 <= 0x7FFFFFFE)
  {
    v18 = *(a1 + 3);
    if (v18 >= 0xFFFFFFFF)
    {
      LODWORD(v18) = -1;
    }

    v19 = v18 - 1;
    if (v19 < 0)
    {
      v19 = -1;
    }

    return (v19 + 1);
  }

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload((a1 + v9 + 32) & ~v9, v6, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

void sub_26B1DCA60(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  if (v10 <= 0x7FFFFFFE)
  {
    v11 = 2147483646;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v8 + 80);
  v13 = (v12 + 32) & ~v12;
  v14 = *(*(v7 - 8) + 64);
  if (!v9)
  {
    ++v14;
  }

  v15 = v13 + v14;
  v16 = 8 * (v13 + v14);
  v17 = a3 >= v11;
  v18 = a3 - v11;
  if (v18 != 0 && v17)
  {
    if (v15 <= 3)
    {
      v19 = ((v18 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v19))
      {
        v6 = 4;
      }

      else
      {
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
          v6 = v20;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v11 >= a2)
  {
    switch(v6)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_61:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v10 > 0x7FFFFFFE)
          {
            v24 = (&a1[v12 + 32] & ~v12);
            if (v10 >= a2)
            {
              v28 = a2 + 1;
              v29 = &a1[v12 + 32] & ~v12;

              __swift_storeEnumTagSinglePayload(v29, v28, v9, v7);
            }

            else
            {
              if (v14 <= 3)
              {
                v25 = ~(-1 << (8 * v14));
              }

              else
              {
                v25 = -1;
              }

              if (v14)
              {
                v26 = v25 & (~v10 + a2);
                if (v14 <= 3)
                {
                  v27 = v14;
                }

                else
                {
                  v27 = 4;
                }

                bzero(v24, v14);
                switch(v27)
                {
                  case 2:
                    *v24 = v26;
                    break;
                  case 3:
                    *v24 = v26;
                    v24[2] = BYTE2(v26);
                    break;
                  case 4:
                    *v24 = v26;
                    break;
                  default:
                    *v24 = v26;
                    break;
                }
              }
            }
          }

          else if (a2 > 0x7FFFFFFE)
          {
            *(a1 + 2) = 0;
            *(a1 + 3) = 0;
            *a1 = a2 - 0x7FFFFFFF;
            *(a1 + 1) = 0;
          }

          else
          {
            *(a1 + 3) = a2;
          }
        }

        break;
    }
  }

  else
  {
    v21 = ~v11 + a2;
    if (v15 < 4)
    {
      v22 = (v21 >> v16) + 1;
      if (v15)
      {
        v23 = v21 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *a1 = v23;
          a1[2] = BYTE2(v23);
        }

        else if (v15 == 2)
        {
          *a1 = v23;
        }

        else
        {
          *a1 = v21;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v21;
      v22 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v15] = v22;
        break;
      case 2:
        *&a1[v15] = v22;
        break;
      case 3:
        goto LABEL_61;
      case 4:
        *&a1[v15] = v22;
        break;
      default:
        return;
    }
  }
}

uint64_t OUTLINED_FUNCTION_9_20(uint64_t a1)
{

  return sub_26B166248(v1, v3, v2, a1);
}

uint64_t OUTLINED_FUNCTION_18_11()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_19_9()
{

  return swift_dynamicCast();
}

uint64_t sub_26B1DCDD0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 264) = v3;
  *v3 = v1;
  v3[1] = sub_26B1DCE84;

  return sub_26B1FAB80(v1 + 208, a1);
}

uint64_t sub_26B1DCE84()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_22();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v5 = v4;
  *(v6 + 272) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26B1DCF80()
{
  OUTLINED_FUNCTION_2_32();
  v0[8] = sub_26B1E2324;
  v0[9] = 0;

  OUTLINED_FUNCTION_33_5();
  OUTLINED_FUNCTION_4_26(&unk_26B21A1A0);
  v1 = swift_task_alloc();
  v0[40] = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_32_5(v1);

  return v3();
}

uint64_t sub_26B1DD044()
{
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_10_1();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v8 = v7;
  *(v5 + 328) = v0;

  if (!v0)
  {
    *(v5 + 250) = v3;
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26B1DD174()
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_12_17();
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_98();
  sub_26B1E243C(v0 + 144, &qword_2803E82F8, MEMORY[0x277D839B0], v1);
  OUTLINED_FUNCTION_9_14();
  OUTLINED_FUNCTION_25_2();

  return v4(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_26B1DD1F8()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_37_4();
  swift_willThrowTypedImpl();
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_26B1DD268()
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_12_17();
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_99();
  sub_26B1E243C(v0 + 80, &qword_2803E82F8, MEMORY[0x277D839B0], v1);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_25_2();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_26B1DD2E8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_4_26(&unk_26B21C078);
  v1 = swift_task_alloc();
  *(v0 + 264) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_32_8(v1);

  return v3(v2);
}

uint64_t sub_26B1DD37C()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_22();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v5 = v4;
  *(v6 + 272) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26B1DD478()
{
  OUTLINED_FUNCTION_2_32();
  v0[8] = sub_26B1E2350;
  v0[9] = 0;

  OUTLINED_FUNCTION_33_5();
  OUTLINED_FUNCTION_4_26(&unk_26B21A198);
  v1 = swift_task_alloc();
  v0[40] = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_32_5(v1);

  return v3();
}

uint64_t sub_26B1DD53C()
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_10_3();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_10_1();
  v7 = v6;
  OUTLINED_FUNCTION_6();
  *v8 = v7;
  v9 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v10 = v9;
  *(v7 + 328) = v0;

  if (!v0)
  {
    *(v7 + 250) = v3;
    *(v7 + 336) = v5;
  }

  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_25_2();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_26B1DD650()
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_12_17();
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_98();
  sub_26B1E243C(v0 + 144, &qword_2803E82F0, MEMORY[0x277D83B88], v1);
  v2 = OUTLINED_FUNCTION_33_6();

  return v3(v2);
}

uint64_t sub_26B1DD6D8()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_37_4();
  swift_willThrowTypedImpl();
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_26B1DD748()
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_12_17();
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_99();
  sub_26B1E243C(v0 + 80, &qword_2803E82F0, MEMORY[0x277D83B88], v1);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_25_2();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_26B1DD7C8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_4_26(&unk_26B21C068);
  v1 = swift_task_alloc();
  *(v0 + 264) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_32_8(v1);

  return v3(v2);
}

uint64_t sub_26B1DD85C()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_22();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v5 = v4;
  *(v6 + 272) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_26B1DD958()
{
  OUTLINED_FUNCTION_2_32();
  v0[8] = sub_26B1E237C;
  v0[9] = 0;

  OUTLINED_FUNCTION_33_5();
  OUTLINED_FUNCTION_4_26(&unk_26B21A190);
  v1 = swift_task_alloc();
  v0[40] = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_32_5(v1);

  return v3();
}

uint64_t sub_26B1DDA1C()
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_10_3();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_10_1();
  v7 = v6;
  OUTLINED_FUNCTION_6();
  *v8 = v7;
  v9 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v10 = v9;
  *(v7 + 328) = v0;

  if (!v0)
  {
    *(v7 + 250) = v3;
    *(v7 + 336) = v5;
  }

  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_25_2();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_26B1DDB30()
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_12_17();
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_98();
  sub_26B1E243C(v0 + 144, &qword_2803E82E8, MEMORY[0x277D839F8], v1);
  v2 = OUTLINED_FUNCTION_33_6();

  return v3(v2);
}

uint64_t sub_26B1DDBB8()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_37_4();
  swift_willThrowTypedImpl();
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_26B1DDC28()
{
  OUTLINED_FUNCTION_87();
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_12_17();
  OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_99();
  sub_26B1E243C(v0 + 80, &qword_2803E82E8, MEMORY[0x277D839F8], v1);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_25_2();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_26B1DDCA8(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return MEMORY[0x2822009F8](sub_26B1E2534, v2, 0);
}

uint64_t sub_26B1DDCCC(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return MEMORY[0x2822009F8](sub_26B1DDCF0, v2, 0);
}

uint64_t sub_26B1DDCF0()
{
  result = *(v0[9] + OBJC_IVAR____TtC15SonicFoundation11SQLDatabase_connection);
  if (result)
  {
    OUTLINED_FUNCTION_25();
    v2 = v0[7];
    v3 = v0[8];
    *v2 = v4;
    v5 = *v3;
    v6 = *(v3 + 16);
    *(v2 + 40) = *(v3 + 32);
    *(v2 + 24) = v6;
    *(v2 + 8) = v5;

    sub_26B1E23E0(v3, (v0 + 2));
    OUTLINED_FUNCTION_20();

    return v7();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t SQLDatabase.transaction(named:)(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  return OUTLINED_FUNCTION_2_13(sub_26B1DDDA8, v2);
}

void sub_26B1DDDA8()
{
  OUTLINED_FUNCTION_10_3();
  v1 = *(v0 + 56);
  if (*(v1 + OBJC_IVAR____TtC15SonicFoundation11SQLDatabase_isDeserialized) == 1)
  {
    v2 = *(v1 + OBJC_IVAR____TtC15SonicFoundation11SQLDatabase_connection);
    if (v2)
    {
      *(v0 + 80) = v2;

      *(v0 + 112) = 0;
      type metadata accessor for SQLDatabase.Transaction();
      swift_allocObject();

      sub_26B2128F0();
      v3 = swift_task_alloc();
      *(v0 + 88) = v3;
      *v3 = v0;
      v4 = OUTLINED_FUNCTION_10_17(v3);

      sub_26B1DF8AC(v4, v5, v6, (v0 + 112), v7, v8);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    _s10ConnectionCMa();
    swift_allocObject();

    v9 = swift_task_alloc();
    *(v0 + 64) = v9;
    *v9 = v0;
    v9[1] = sub_26B1DDF40;

    sub_26B1AC488();
  }
}

uint64_t sub_26B1DDF40()
{
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_10_1();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v8 = v7;

  if (v0)
  {
    OUTLINED_FUNCTION_28_7();

    return v9();
  }

  else
  {
    v11 = *(v5 + 56);
    *(v5 + 72) = v3;

    return MEMORY[0x2822009F8](sub_26B1DE06C, v11, 0);
  }
}

uint64_t sub_26B1DE06C()
{
  OUTLINED_FUNCTION_10_3();
  *(v0 + 80) = *(v0 + 72);
  *(v0 + 112) = 0;
  type metadata accessor for SQLDatabase.Transaction();
  swift_allocObject();

  sub_26B2128F0();
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_10_17(v1);

  return sub_26B1DF8AC(v2, v3, v4, (v0 + 112), v5, v6);
}

uint64_t sub_26B1DE134()
{
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_10_1();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v8 = v7;
  *(v5 + 96) = v0;

  if (!v0)
  {
    *(v5 + 104) = v3;
  }

  OUTLINED_FUNCTION_36_4();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_26B1DE244()
{
  OUTLINED_FUNCTION_10_3();
  v6 = v0;
  v1 = *(v0 + 104);
  swift_beginAccess();

  sub_26B1E1CC8(&v5, v1);
  swift_endAccess();

  OUTLINED_FUNCTION_9_14();
  v3 = *(v0 + 104);

  return v2(v3);
}

uint64_t sub_26B1DE308(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_26B1E1254(a1);
  swift_endAccess();
}

uint64_t sub_26B1DE3A8()
{
  OUTLINED_FUNCTION_12();
  v2 = v1;
  v4 = v3;
  v0[3] = v5;
  v0[4] = v6;
  v0[2] = v7;
  v8 = swift_task_alloc();
  v0[5] = v8;
  *v8 = v0;
  OUTLINED_FUNCTION_32_5(v8);

  return SQLDatabase.transaction(named:)(v4, v2);
}

uint64_t sub_26B1DE450()
{
  OUTLINED_FUNCTION_12();
  v3 = v2;
  OUTLINED_FUNCTION_10_1();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v8 = v7;
  *(v5 + 48) = v3;

  if (v0)
  {
    OUTLINED_FUNCTION_28_7();

    return v9();
  }

  else
  {
    v11 = swift_task_alloc();
    *(v5 + 56) = v11;
    *v11 = v7;
    v11[1] = sub_26B1DE5AC;

    return sub_26B204E78();
  }
}

uint64_t sub_26B1DE5AC()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v6 = v5;
  v3[8] = v0;

  if (v0)
  {
    v7 = v3[2];

    return MEMORY[0x2822009F8](sub_26B1DE81C, v7, 0);
  }

  else
  {
    v8 = swift_task_alloc();
    v3[9] = v8;
    *v8 = v5;
    v8[1] = sub_26B1DE700;

    return SQLDatabase.Transaction.commit()();
  }
}

uint64_t sub_26B1DE700()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_6();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 80) = v0;

  OUTLINED_FUNCTION_36_4();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_26B1DE81C()
{
  OUTLINED_FUNCTION_25();
  v0[11] = v0[8];
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_16_11(v1);

  return SQLDatabase.Transaction.rollback()();
}

uint64_t sub_26B1DE890()
{
  OUTLINED_FUNCTION_25();

  OUTLINED_FUNCTION_20();

  return v0();
}

uint64_t sub_26B1DE8E8()
{
  OUTLINED_FUNCTION_25();
  v0[11] = v0[10];
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_16_11(v1);

  return SQLDatabase.Transaction.rollback()();
}

uint64_t sub_26B1DE95C()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_22();
  *v3 = v2;
  v5 = *(v4 + 16);
  v6 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v7 = v6;
  *(v8 + 104) = v0;

  if (v0)
  {
    v9 = sub_26B1DEAE0;
  }

  else
  {
    v9 = sub_26B1DEA70;
  }

  return MEMORY[0x2822009F8](v9, v5, 0);
}

uint64_t sub_26B1DEA70()
{
  OUTLINED_FUNCTION_12();
  swift_willThrow();

  OUTLINED_FUNCTION_10_0();

  return v0();
}

uint64_t sub_26B1DEAE0()
{
  OUTLINED_FUNCTION_10_3();
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);
  v3 = sub_26B1E1EB4();
  OUTLINED_FUNCTION_24_4(&type metadata for SQLDatabase.Transaction.RollbackError, v3);
  *v4 = v1;
  v4[1] = v2;
  swift_willThrow();

  OUTLINED_FUNCTION_10_0();

  return v5();
}

uint64_t SQLDatabase.withTransaction<A>(named:_:)()
{
  OUTLINED_FUNCTION_12();
  v3 = v2;
  v5 = v4;
  v1[5] = v6;
  v1[6] = v0;
  v1[3] = v7;
  v1[4] = v8;
  v1[2] = v9;
  v10 = swift_task_alloc();
  v1[7] = v10;
  *v10 = v1;
  OUTLINED_FUNCTION_32_5(v10);

  return SQLDatabase.transaction(named:)(v5, v3);
}

uint64_t sub_26B1DEC24()
{
  OUTLINED_FUNCTION_10_3();
  v3 = v2;
  OUTLINED_FUNCTION_10_1();
  v5 = v4;
  OUTLINED_FUNCTION_6();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v8 = v7;
  v5[8] = v3;

  if (v0)
  {
    OUTLINED_FUNCTION_28_7();

    return v9();
  }

  else
  {
    v13 = (v5[3] + *v5[3]);
    v11 = swift_task_alloc();
    v5[9] = v11;
    *v11 = v7;
    v11[1] = sub_26B1DEDE8;
    v12 = v5[2];

    return v13(v12, v3);
  }
}

uint64_t sub_26B1DEDE8()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  OUTLINED_FUNCTION_6();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v6 = v5;

  if (v0)
  {
    v3[12] = v0;
    v7 = swift_task_alloc();
    v3[13] = v7;
    *v7 = v5;
    OUTLINED_FUNCTION_17_12(v7);

    return SQLDatabase.Transaction.rollback()();
  }

  else
  {
    v9 = swift_task_alloc();
    v3[10] = v9;
    *v9 = v5;
    v9[1] = sub_26B1DEF60;

    return SQLDatabase.Transaction.commit()();
  }
}

uint64_t sub_26B1DEF60()
{
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_6();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 88) = v0;

  OUTLINED_FUNCTION_36_4();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_26B1DF07C()
{
  OUTLINED_FUNCTION_25();

  OUTLINED_FUNCTION_20();

  return v0();
}

uint64_t sub_26B1DF0D4()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_22();
  *v3 = v2;
  v5 = *(v4 + 48);
  v6 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v7 = v6;
  *(v8 + 112) = v0;

  if (v0)
  {
    v9 = sub_26B1DF304;
  }

  else
  {
    v9 = sub_26B1DF1E8;
  }

  return MEMORY[0x2822009F8](v9, v5, 0);
}

uint64_t sub_26B1DF1E8()
{
  OUTLINED_FUNCTION_12();
  swift_willThrow();

  OUTLINED_FUNCTION_10_0();

  return v0();
}

uint64_t sub_26B1DF258()
{
  OUTLINED_FUNCTION_25();
  (*(*(v0[5] - 8) + 8))(v0[2]);
  v0[12] = v0[11];
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_17_12(v1);

  return SQLDatabase.Transaction.rollback()();
}

uint64_t sub_26B1DF304()
{
  OUTLINED_FUNCTION_10_3();
  v1 = *(v0 + 112);
  v2 = *(v0 + 96);
  v3 = sub_26B1E1EB4();
  OUTLINED_FUNCTION_24_4(&type metadata for SQLDatabase.Transaction.RollbackError, v3);
  *v4 = v1;
  v4[1] = v2;
  swift_willThrow();

  OUTLINED_FUNCTION_10_0();

  return v5();
}

uint64_t sub_26B1DF3BC()
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_19_10();
  swift_beginAccess();
  if (*(v0 + 136))
  {
    OUTLINED_FUNCTION_5_21();
    sub_26B2136C0();

    OUTLINED_FUNCTION_77_0();
    OUTLINED_FUNCTION_26_11();
    v2 = sub_26B1E1F08();
    v3 = OUTLINED_FUNCTION_24_4(&type metadata for SQLDatabase.Transaction.Error, v2);
    OUTLINED_FUNCTION_22_11(v3, v4);
    OUTLINED_FUNCTION_10_0();

    return v5();
  }

  else
  {
    *(v1 + 48) = *(*(v1 + 40) + 128);

    v7 = OUTLINED_FUNCTION_4_0();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }
}

uint64_t sub_26B1DF4BC()
{
  OUTLINED_FUNCTION_12();
  sub_26B1AE554(v0[6]);
  v0[7] = 0;
  v1 = v0[5];

  return MEMORY[0x2822009F8](sub_26B1DF554, v1, 0);
}

uint64_t sub_26B1DF554()
{
  OUTLINED_FUNCTION_12();
  v1 = *(v0 + 40);
  *(v1 + 136) = 1;
  v2 = *(v1 + 144);

  v2(v1);

  OUTLINED_FUNCTION_20();

  return v3();
}

uint64_t sub_26B1DF5DC()
{
  OUTLINED_FUNCTION_25();

  OUTLINED_FUNCTION_10_0();

  return v0();
}

uint64_t sub_26B1DF654()
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_19_10();
  swift_beginAccess();
  if (*(v0 + 136))
  {
    OUTLINED_FUNCTION_5_21();
    sub_26B2136C0();

    OUTLINED_FUNCTION_77_0();
    OUTLINED_FUNCTION_26_11();
    v2 = sub_26B1E1F08();
    v3 = OUTLINED_FUNCTION_24_4(&type metadata for SQLDatabase.Transaction.Error, v2);
    OUTLINED_FUNCTION_22_11(v3, v4);
    OUTLINED_FUNCTION_10_0();

    return v5();
  }

  else
  {
    *(v1 + 48) = *(*(v1 + 40) + 128);

    v7 = OUTLINED_FUNCTION_4_0();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }
}

uint64_t sub_26B1DF754()
{
  OUTLINED_FUNCTION_12();
  sub_26B1AE574(v0[6]);
  v0[7] = 0;
  v1 = v0[5];

  return MEMORY[0x2822009F8](sub_26B1E2538, v1, 0);
}

uint64_t sub_26B1DF830()
{
  sub_26B214030();
  OUTLINED_FUNCTION_41_4();
  return sub_26B214070();
}

uint64_t sub_26B1DF870(uint64_t a1)
{
  sub_26B214030();
  OUTLINED_FUNCTION_41_4();
  return sub_26B214070();
}

uint64_t sub_26B1DF8AC(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = v6;
  *(v7 + 32) = a3;
  *(v7 + 40) = a5;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 64) = *v6;
  *(v7 + 80) = *a4;
  return OUTLINED_FUNCTION_2_13(sub_26B1DF900, 0);
}

uint64_t sub_26B1DF900()
{
  OUTLINED_FUNCTION_12();
  v1 = v0[7];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[2];
  swift_defaultActor_initialize();
  v1[15] = v2;
  v1[16] = v4;
  v1[14] = v3;

  return MEMORY[0x2822009F8](sub_26B1DF98C, v4, 0);
}

uint64_t sub_26B1DF98C()
{
  OUTLINED_FUNCTION_12();
  sub_26B1AE448(*(v0 + 16), *(v0 + 80));
  *(v0 + 72) = 0;
  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_26B1DFA14()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);
  *(v1 + 136) = 0;
  *(v1 + 144) = v2;
  return OUTLINED_FUNCTION_2_13(sub_26B1DFA38, v1);
}

uint64_t sub_26B1DFA38()
{
  OUTLINED_FUNCTION_25();

  OUTLINED_FUNCTION_9_14();
  v2 = *(v0 + 56);

  return v1(v2);
}

uint64_t sub_26B1DFA98()
{
  OUTLINED_FUNCTION_12();

  swift_defaultActor_destroy();

  swift_deallocPartialClassInstance();
  OUTLINED_FUNCTION_10_0();

  return v0();
}

uint64_t sub_26B1DFB3C(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_5_21();
  sub_26B2136C0();

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x54414944454D4D49;
    }

    else
    {
      v3 = 0x564953554C435845;
    }

    v4 = 0xE900000000000045;
  }

  else
  {
    v4 = 0xE800000000000000;
    v3 = 0x4445525245464544;
  }

  MEMORY[0x26D670040](v3, v4);

  v5 = MEMORY[0x26D670040](0x4341534E41525420, 0xEC0000004E4F4954);
  OUTLINED_FUNCTION_42_3(v5, v6, v7, v8, v9, v10, v11, v12, 0x204E49474542, 0xE600000000000000);

  OUTLINED_FUNCTION_17();
  sqlite3_exec(v13, v14, v15, v16, 0);

  return OUTLINED_FUNCTION_40_3();
}

uint64_t SQLDatabase.Transaction.deinit()
{
  OUTLINED_FUNCTION_17();
  result = swift_beginAccess();
  if (*(v0 + 136) == 1)
  {

    swift_defaultActor_destroy();
    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t SQLDatabase.Transaction.__deallocating_deinit()
{
  SQLDatabase.Transaction.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t SQLDatabase.Transaction.name.getter()
{
  v1 = *(v0 + 112);
  sub_26B2128F0();
  return v1;
}

uint64_t SQLDatabase.Transaction.isFinalized.getter()
{
  OUTLINED_FUNCTION_17();
  swift_beginAccess();
  return *(v0 + 136);
}

uint64_t SQLDatabase.Transaction.deferringForeignKeys.getter()
{
  OUTLINED_FUNCTION_12();
  *(v0 + 16) = 0xD000000000000019;
  OUTLINED_FUNCTION_4_26(&unk_26B21BD58);
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 24) = 0x800000026B220BD0;
  *(v0 + 48) = 0;
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_32_5(v1);

  return v3(v0 + 16);
}

uint64_t sub_26B1DFE48()
{
  OUTLINED_FUNCTION_25();
  v3 = v2;
  OUTLINED_FUNCTION_10_1();
  v4 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v5 = v4;

  v6 = *(v4 + 8);
  if (v0)
  {
    v7 = 0;
  }

  else
  {
    v7 = v3 & 1;
  }

  return v6(v7);
}

uint64_t SQLDatabase.Transaction.deferForeignKeyEnforcement(enabled:)(char a1)
{
  *(v2 + 176) = v1;
  *(v2 + 89) = a1;
  return OUTLINED_FUNCTION_2_13(sub_26B1DFF64, v1);
}

uint64_t sub_26B1DFF64()
{
  v1 = MEMORY[0x277D84F90];
  sub_26B16AFCC();
  v3 = v2;
  v4 = *(v2 + 16);
  v5 = v4 + 1;
  if (v4 >= *(v2 + 24) >> 1)
  {
    OUTLINED_FUNCTION_4_21();
    v3 = v15;
  }

  v6 = *(v0 + 89);
  *(v3 + 16) = v5;
  v7 = v3 + 80 * v4;
  *(v7 + 32) = 0xD00000000000001CLL;
  *(v7 + 40) = 0x800000026B220BF0;
  v8 = MEMORY[0x277D839B0];
  *(v7 + 104) = 0;
  *(v0 + 120) = v8;
  *(v0 + 128) = &protocol witness table for Bool;
  *(v0 + 96) = v6;
  sub_26B16BCF8(v0 + 96, v0 + 16);
  *(v0 + 88) = 1;
  v9 = v4 + 2;
  if (v9 > *(v3 + 24) >> 1)
  {
    sub_26B16AFCC();
    v3 = v16;
  }

  *(v3 + 16) = v9;
  memcpy((v3 + 80 * v5 + 32), (v0 + 16), 0x49uLL);
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  v10 = *(v3 + 16);
  if (v10 >= *(v3 + 24) >> 1)
  {
    OUTLINED_FUNCTION_4_21();
    v3 = v17;
  }

  *(v3 + 16) = v10 + 1;
  v11 = v3 + 80 * v10;
  *(v11 + 32) = 0;
  *(v11 + 40) = 0xE000000000000000;
  *(v11 + 96) = v21;
  *(v11 + 64) = v19;
  *(v11 + 80) = v20;
  *(v11 + 48) = v18;
  *(v11 + 104) = 0;
  sub_26B2128F0();
  sub_26B2128F0();
  result = sub_26B1A6AB8();
  v13 = *(v1 + 16);
  if (v13)
  {

    sub_26B2128F0();
    sub_26B2128F0();
    sub_26B2128F0();

    *(v0 + 136) = v3;
    *(v0 + 144) = 0;
    *(v0 + 152) = 0;
    *(v0 + 160) = v1;
    *(v0 + 168) = v13 != 0;
    v14 = swift_task_alloc();
    *(v0 + 184) = v14;
    *v14 = v0;
    v14[1] = sub_26B1E0248;

    return SQLDatabase.Transaction.execute(_:)(v0 + 136);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26B1E0248()
{
  OUTLINED_FUNCTION_12();
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_1_12();
  *v4 = v3;
  v5 = *v1;
  *v4 = *v1;
  v3[24] = v0;

  sub_26B1A85A8(v3[17], v2[18], v2[19], v2[20], *(v3 + 168));
  if (v0)
  {
    OUTLINED_FUNCTION_36_4();

    return MEMORY[0x2822009F8](v6, v7, v8);
  }

  else
  {
    v9 = v5[1];

    return v9();
  }
}

uint64_t SQLDatabase.Transaction.Error.message.getter()
{
  v1 = *v0;
  sub_26B2128F0();
  return v1;
}

uint64_t SQLDatabase.Transaction.Error.message.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

id SQLDatabase.Transaction.RollbackError.error.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void *SQLDatabase.Transaction.RollbackError.rollbackReason.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t SQLDatabase.Transaction.save(name:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  return OUTLINED_FUNCTION_2_13(sub_26B1E0560, v3);
}

uint64_t sub_26B1E0560()
{
  OUTLINED_FUNCTION_10_3();
  v1 = v0[8];
  OUTLINED_FUNCTION_17();
  swift_beginAccess();
  if (*(v1 + 136))
  {
    v3 = v0[6];
    v2 = v0[7];
    OUTLINED_FUNCTION_5_21();
    sub_26B2136C0();
    OUTLINED_FUNCTION_29_7();
    MEMORY[0x26D670040](0xD00000000000003CLL);
    MEMORY[0x26D670040](v3, v2);
    v4 = sub_26B1E1F08();
    v5 = OUTLINED_FUNCTION_24_4(&type metadata for SQLDatabase.Transaction.Error, v4);
    OUTLINED_FUNCTION_22_11(v5, v6);
    OUTLINED_FUNCTION_10_0();

    return v7();
  }

  else
  {
    v0[9] = *(v0[8] + 128);
    sub_26B2128F0();

    v9 = OUTLINED_FUNCTION_4_0();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }
}

uint64_t sub_26B1E0680()
{
  OUTLINED_FUNCTION_12();
  sub_26B1AE69C(v0[9], v0[6], v0[7]);
  v0[10] = 0;
  v1 = v0[8];

  return MEMORY[0x2822009F8](sub_26B1E071C, v1, 0);
}

uint64_t sub_26B1E071C()
{
  OUTLINED_FUNCTION_12();
  v1 = v0[7];
  v2 = v0[5];
  *v2 = v0[6];
  v2[1] = v1;
  OUTLINED_FUNCTION_9_14();
  v5 = v3;
  sub_26B2128F0();

  return v5();
}

uint64_t sub_26B1E0788()
{
  OUTLINED_FUNCTION_25();

  OUTLINED_FUNCTION_10_0();

  return v0();
}

uint64_t sub_26B1E07E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = MEMORY[0x26D670040](a2, a3);
  OUTLINED_FUNCTION_42_3(v3, v4, v5, v6, v7, v8, v9, v10, 0x4E494F5045564153, 0xEA00000000002054);

  OUTLINED_FUNCTION_17();
  sqlite3_exec(v11, v12, v13, v14, 0);

  return OUTLINED_FUNCTION_40_3();
}

uint64_t SQLDatabase.Transaction.release(savepoint:)(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v2[5] = v1;
  v2[6] = v3;
  v2[7] = v4;
  return OUTLINED_FUNCTION_2_13(sub_26B1E089C, v1);
}

uint64_t sub_26B1E089C()
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_19_10();
  OUTLINED_FUNCTION_17();
  swift_beginAccess();
  if (*(v0 + 136))
  {
    v2 = *(v1 + 40);
    OUTLINED_FUNCTION_5_21();
    sub_26B2136C0();
    OUTLINED_FUNCTION_29_7();
    MEMORY[0x26D670040](0xD00000000000003FLL);
    MEMORY[0x26D670040](*(v2 + 112), *(v2 + 120));
    v3 = sub_26B1E1F08();
    v4 = OUTLINED_FUNCTION_24_4(&type metadata for SQLDatabase.Transaction.Error, v3);
    OUTLINED_FUNCTION_22_11(v4, v5);
    OUTLINED_FUNCTION_10_0();

    return v6();
  }

  else
  {
    OUTLINED_FUNCTION_38_6();
    sub_26B2128F0();

    v8 = OUTLINED_FUNCTION_4_0();

    return MEMORY[0x2822009F8](v8, v9, v10);
  }
}

uint64_t sub_26B1E09A8()
{
  OUTLINED_FUNCTION_12();
  sub_26B1AE6C8(v0[8], v0[6], v0[7]);
  v0[9] = 0;

  OUTLINED_FUNCTION_20();

  return v1();
}

uint64_t sub_26B1E0A5C()
{
  OUTLINED_FUNCTION_25();

  OUTLINED_FUNCTION_10_0();

  return v0();
}

uint64_t sub_26B1E0AB8(uint64_t a1)
{
  OUTLINED_FUNCTION_5_21();
  sub_26B2136C0();

  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_35_5();
  OUTLINED_FUNCTION_42_3(v1, v2, v3, v4, v5, v6, v7, v8, v14, v15);

  OUTLINED_FUNCTION_17();
  sqlite3_exec(v9, v10, v11, v12, 0);

  return OUTLINED_FUNCTION_40_3();
}

uint64_t SQLDatabase.Transaction.rollback(to:)(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v2[5] = v1;
  v2[6] = v3;
  v2[7] = v4;
  return OUTLINED_FUNCTION_2_13(sub_26B1E0B7C, v1);
}

uint64_t sub_26B1E0B7C()
{
  OUTLINED_FUNCTION_10_3();
  OUTLINED_FUNCTION_19_10();
  OUTLINED_FUNCTION_17();
  swift_beginAccess();
  if (*(v0 + 136))
  {
    v2 = *(v1 + 40);
    OUTLINED_FUNCTION_5_21();
    sub_26B2136C0();
    OUTLINED_FUNCTION_29_7();
    MEMORY[0x26D670040](0xD000000000000043);
    MEMORY[0x26D670040](*(v2 + 112), *(v2 + 120));
    v3 = sub_26B1E1F08();
    v4 = OUTLINED_FUNCTION_24_4(&type metadata for SQLDatabase.Transaction.Error, v3);
    OUTLINED_FUNCTION_22_11(v4, v5);
    OUTLINED_FUNCTION_10_0();

    return v6();
  }

  else
  {
    OUTLINED_FUNCTION_38_6();
    sub_26B2128F0();

    v8 = OUTLINED_FUNCTION_4_0();

    return MEMORY[0x2822009F8](v8, v9, v10);
  }
}

uint64_t sub_26B1E0C88()
{
  OUTLINED_FUNCTION_12();
  sub_26B1AE6F4(v0[8], v0[6], v0[7]);
  v0[9] = 0;

  OUTLINED_FUNCTION_20();

  return v1();
}

uint64_t sub_26B1E0D3C(uint64_t a1)
{
  OUTLINED_FUNCTION_5_21();
  sub_26B2136C0();

  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_35_5();
  OUTLINED_FUNCTION_42_3(v1, v2, v3, v4, v5, v6, v7, v8, v14, v15);

  OUTLINED_FUNCTION_17();
  sqlite3_exec(v9, v10, v11, v12, 0);

  return OUTLINED_FUNCTION_40_3();
}

uint64_t sub_26B1E0DF8()
{
  OUTLINED_FUNCTION_10_3();
  v1 = *(v0 + 64);
  OUTLINED_FUNCTION_17();
  swift_beginAccess();
  if (*(v1 + 136))
  {
    OUTLINED_FUNCTION_5_21();
    sub_26B2136C0();

    OUTLINED_FUNCTION_77_0();
    OUTLINED_FUNCTION_26_11();
    v2 = sub_26B1E1F08();
    v3 = OUTLINED_FUNCTION_24_4(&type metadata for SQLDatabase.Transaction.Error, v2);
    OUTLINED_FUNCTION_22_11(v3, v4);
    OUTLINED_FUNCTION_10_0();

    return v5();
  }

  else
  {
    *(v0 + 72) = *(*(v0 + 64) + 128);

    v7 = OUTLINED_FUNCTION_4_0();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }
}

uint64_t sub_26B1E0EFC()
{
  OUTLINED_FUNCTION_25();
  v1 = *(v0 + 72);
  OUTLINED_FUNCTION_17();
  swift_beginAccess();
  insert_rowid = sqlite3_last_insert_rowid(*(v1 + 136));

  OUTLINED_FUNCTION_9_14();

  return v3(insert_rowid);
}

uint64_t SQLDatabase.Transaction.hashValue.getter()
{
  sub_26B214030();
  OUTLINED_FUNCTION_41_4();
  return sub_26B214070();
}

uint64_t sub_26B1E102C(uint64_t a1)
{
  sub_26B214030();
  OUTLINED_FUNCTION_41_4();
  return sub_26B214070();
}

uint64_t sub_26B1E108C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_26B1AB090(0);
    v2 = sub_26B213670();
    v15 = v2;
    sub_26B2135E0();
    while (1)
    {
      if (!sub_26B213610())
      {

        return v2;
      }

      type metadata accessor for SQLDatabase.Transaction();
      swift_dynamicCast();
      v3 = *(v2 + 16);
      if (*(v2 + 24) <= v3)
      {
        sub_26B1E13A8(v3 + 1);
      }

      v2 = v15;
      sub_26B214030();
      MEMORY[0x26D671480]();
      result = sub_26B214070();
      v5 = v15 + 56;
      v6 = -1 << *(v15 + 32);
      v7 = result & ~v6;
      v8 = v7 >> 6;
      if (((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6))) == 0)
      {
        break;
      }

      v9 = __clz(__rbit64((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
      *(*(v15 + 48) + 8 * v9) = v14;
      ++*(v15 + 16);
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
    return MEMORY[0x277D84FA0];
  }

  return result;
}

unint64_t sub_26B1E1254(uint64_t a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    sub_26B214030();
    MEMORY[0x26D671480](a1);
    v7 = sub_26B214070();
    v8 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v9 = v7 & v8;
      if (((*(v3 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v7 & v8)) & 1) == 0)
      {
        break;
      }

      if (*(*(v3 + 48) + 8 * v9) == a1)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v11 = *v1;
        v13 = *v1;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_26B1E17D0();
          v11 = v13;
        }

        v6 = *(*(v11 + 48) + 8 * v9);
        sub_26B1E1B2C(v9);
        *v1 = v13;
        return v6;
      }

      v7 = v9 + 1;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  sub_26B2128F0();

  v5 = sub_26B213620();

  if ((v5 & 1) == 0)
  {

    return 0;
  }

  v6 = sub_26B1E16F0(v4, a1);

  return v6;
}

uint64_t sub_26B1E13A8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_26B1AB090(0);
  result = sub_26B213660();
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

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      sub_26B1E168C(0, (v25 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v25;
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
    v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    sub_26B214030();
    MEMORY[0x26D671480](v16);
    result = sub_26B214070();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + 8 * v20) = v16;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v21 = 0;
  v22 = (63 - v17) >> 6;
  while (++v19 != v22 || (v21 & 1) == 0)
  {
    v23 = v19 == v22;
    if (v19 == v22)
    {
      v19 = 0;
    }

    v21 |= v23;
    v24 = *(v12 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_26B1E15E8(uint64_t a1, uint64_t a2)
{
  sub_26B214030();
  MEMORY[0x26D671480](a1);
  sub_26B214070();
  result = sub_26B2135D0();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_26B1E168C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_26B218860;
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

unint64_t sub_26B1E16F0(uint64_t a1, uint64_t a2)
{

  v4 = sub_26B2135F0();
  v5 = swift_unknownObjectRetain();
  v9 = sub_26B1E108C(v5, v4);
  sub_26B214030();
  MEMORY[0x26D671480](a2);
  for (i = sub_26B214070(); ; i = result + 1)
  {
    result = i & ~(-1 << *(v9 + 32));
    if (((*(v9 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
    {
      break;
    }

    v8 = *(*(v9 + 48) + 8 * result);
    if (v8 == a2)
    {
      sub_26B1E1B2C(result);
      *v2 = v9;
      return v8;
    }
  }

  __break(1u);
  return result;
}

void *sub_26B1E17D0()
{
  v1 = v0;
  sub_26B1AB090(0);
  v2 = *v0;
  v3 = sub_26B213650();
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

uint64_t sub_26B1E1914(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_26B1AB090(0);
  result = sub_26B213660();
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
        v15 = *(*(v3 + 48) + 8 * (v12 | (v6 << 6)));
        sub_26B214030();
        MEMORY[0x26D671480](v15);
        result = sub_26B214070();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + 8 * v19) = v15;
        ++*(v5 + 16);

        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
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

unint64_t sub_26B1E1B2C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_26B2135C0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        sub_26B214030();
        MEMORY[0x26D671480](v10);
        v11 = sub_26B214070() & v7;
        if (v2 >= v9)
        {
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_15:
            v14 = *(v3 + 48);
            v15 = (v14 + 8 * v2);
            v16 = (v14 + 8 * v6);
            if (v2 != v6 || v15 >= v16 + 1)
            {
              *v15 = *v16;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_26B1E1CC8(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    sub_26B2128F0();
    v8 = sub_26B213600();

    if (v8)
    {

      type metadata accessor for SQLDatabase.Transaction();
      swift_dynamicCast();
      result = 0;
      *a1 = v18;
    }

    else
    {
      result = sub_26B2135F0();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v13 = sub_26B1E108C(v7, result + 1);
        v14 = *(v13 + 16);
        if (*(v13 + 24) <= v14)
        {
          sub_26B1E13A8(v14 + 1);
        }

        sub_26B1E15E8(v15, v13);

        *v3 = v13;
LABEL_16:
        *a1 = a2;
        return 1;
      }
    }
  }

  else
  {
    sub_26B214030();
    MEMORY[0x26D671480](a2);
    v10 = sub_26B214070();
    v11 = ~(-1 << *(v6 + 32));
    while (1)
    {
      v12 = v10 & v11;
      if (((*(v6 + 56 + (((v10 & v11) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v10 & v11)) & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v19 = *v2;

        sub_26B1E21F0(v17, v12, isUniquelyReferenced_nonNull_native);
        *v2 = v19;
        goto LABEL_16;
      }

      if (*(*(v6 + 48) + 8 * v12) == a2)
      {
        break;
      }

      v10 = v12 + 1;
    }

    *a1 = *(*(v6 + 48) + 8 * v12);

    return 0;
  }

  return result;
}

unint64_t sub_26B1E1EB4()
{
  result = qword_2803E82C0;
  if (!qword_2803E82C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E82C0);
  }

  return result;
}

unint64_t sub_26B1E1F08()
{
  result = qword_2803E82C8;
  if (!qword_2803E82C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E82C8);
  }

  return result;
}

unint64_t sub_26B1E1F60()
{
  result = qword_2803E82D0;
  if (!qword_2803E82D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E82D0);
  }

  return result;
}

unint64_t sub_26B1E1FB8()
{
  result = qword_2803E82D8;
  if (!qword_2803E82D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E82D8);
  }

  return result;
}

_BYTE *sub_26B1E2068(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_26B1E2154(uint64_t *a1, int a2)
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

uint64_t sub_26B1E2194(uint64_t result, int a2, int a3)
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

unint64_t sub_26B1E21F0(unint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_26B1E13A8(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_26B1E1914(v6 + 1);
LABEL_10:
      v12 = *v3;
      sub_26B214030();
      MEMORY[0x26D671480](v5);
      result = sub_26B214070();
      v13 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v13;
        if (((*(v12 + 56 + (((result & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v13)) & 1) == 0)
        {
          goto LABEL_7;
        }

        type metadata accessor for SQLDatabase.Transaction();
        if (*(*(v12 + 48) + 8 * a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_26B1E17D0();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + 8 * a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_26B213F00();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

void sub_26B1E2324(_BYTE *a1@<X8>, uint64_t a2@<X0>)
{
  sub_26B1FB538(a2);
  if (!v2)
  {
    *a1 = v4;
  }
}

uint64_t sub_26B1E23A8@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
  }

  return result;
}

uint64_t sub_26B1E243C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  sub_26B1E2498(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_26B1E2498(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = type metadata accessor for SQLDatabase.AsyncResultsIterator(0, a3, a3, a4);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_26B1E24E4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SQLDatabase.Transaction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_22_11(uint64_t a1, void *a2)
{
  *a2 = v2;
  a2[1] = v3;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_26_11()
{

  JUMPOUT(0x26D670040);
}

void OUTLINED_FUNCTION_35_5()
{

  JUMPOUT(0x26D670040);
}

unint64_t OUTLINED_FUNCTION_37_4()
{
  *(v0 + 256) = *(v0 + 328);

  return sub_26B162128();
}

uint64_t OUTLINED_FUNCTION_38_6()
{
  result = v0[7];
  v0[8] = *(v0[5] + 128);
  return result;
}

void OUTLINED_FUNCTION_41_4()
{

  JUMPOUT(0x26D671480);
}

uint64_t sub_26B1E26EC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = 0;
  v3 = result & 0xFFFFFF00;
  v4 = 14;
  switch(result)
  {
    case 0:
      v4 = 1;
      v5 = v3 == 512;
      v6 = 1;
      v7 = 1;
      if (v3 == 512)
      {
        v8 = 1;
      }

      else
      {
        v8 = 2;
      }

      goto LABEL_51;
    case 1:
      if (v3 == 512)
      {
        v12 = 1;
      }

      else
      {
        v12 = 3;
      }

      if (v3 == 768)
      {
        v12 = 2;
      }

      if (v3 == 256)
      {
        v2 = 0;
      }

      else
      {
        v2 = v12;
      }

      v4 = 2;
      break;
    case 2:
      break;
    case 3:
      v2 = 1;
      break;
    case 4:
      v2 = v3 != 512;
      v4 = 3;
      break;
    case 5:
      v4 = 4;
      v9 = 4;
      v10 = v3 == 512;
      v7 = 4;
      v11 = 4;
      goto LABEL_33;
    case 6:
      v4 = 5;
      v5 = v3 == 512;
      v6 = 5;
      v7 = 5;
      goto LABEL_48;
    case 7:
      v2 = 2;
      break;
    case 8:
      v2 = (result - 256) >> 8;
      v4 = 6;
      if (v2 >= 6)
      {
        v2 = 6;
      }

      break;
    case 9:
      v2 = 3;
      break;
    case 10:
      if ((result - 256) >> 8 >= 0x21)
      {
        v2 = 33;
      }

      else
      {
        v2 = (result - 256) >> 8;
      }

      v4 = 7;
      break;
    case 11:
      v4 = 8;
      v9 = 8;
      v10 = v3 == 512;
      v7 = 8;
      v11 = 8;
LABEL_33:
      if (v10)
      {
        v13 = 1;
      }

      else
      {
        v13 = 3;
      }

      if (v10)
      {
        v7 = v11;
      }

      if (v3 == 768)
      {
        v8 = 2;
      }

      else
      {
        v8 = v13;
      }

      if (v3 == 768)
      {
        v7 = v9;
      }

      goto LABEL_53;
    case 12:
      v2 = 4;
      break;
    case 13:
      v2 = 5;
      break;
    case 14:
      if ((result - 256) >> 8 >= 6)
      {
        v2 = 6;
      }

      else
      {
        v2 = (result - 256) >> 8;
      }

      v4 = 9;
      break;
    case 15:
      v2 = 6;
      break;
    case 16:
      v2 = 7;
      break;
    case 17:
      v2 = 8;
      break;
    case 18:
      v2 = 9;
      break;
    case 19:
      if ((result - 256) >> 8 >= 0xC)
      {
        v2 = 12;
      }

      else
      {
        v2 = (result - 256) >> 8;
      }

      v4 = 10;
      break;
    case 20:
      v2 = 10;
      break;
    case 21:
      v2 = 11;
      break;
    case 22:
      v2 = 12;
      break;
    case 23:
      v2 = v3 != 256;
      v4 = 11;
      break;
    case 24:
      v2 = 13;
      break;
    case 25:
      v2 = 14;
      break;
    case 26:
      v2 = 15;
      break;
    case 27:
      v4 = 12;
      v5 = v3 == 512;
      v6 = 12;
      v7 = 12;
LABEL_48:
      if (v5)
      {
        v8 = 1;
      }

      else
      {
        v8 = 2;
      }

LABEL_51:
      if (!v5)
      {
        v7 = v6;
      }

LABEL_53:
      if (v3 == 256)
      {
        v2 = 0;
      }

      else
      {
        v2 = v8;
      }

      if (v3 != 256)
      {
        v4 = v7;
      }

      break;
    case 28:
      v2 = v3 != 256;
      v4 = 13;
      break;
    default:
      v2 = result;
      v4 = 0;
      break;
  }

  *a2 = v2;
  *(a2 + 4) = v4;
  return result;
}

uint64_t _s15SonicFoundation8SQLErrorV4CodeO8ExtendedO2OKO9hashValueSivg_0()
{
  OUTLINED_FUNCTION_8_23();
  sub_26B214030();
  OUTLINED_FUNCTION_41_4();
  return sub_26B214070();
}

uint64_t sub_26B1E29F0()
{
  OUTLINED_FUNCTION_8_23();
  sub_26B214030();
  OUTLINED_FUNCTION_41_4();
  return sub_26B214070();
}

uint64_t sub_26B1E2A5C()
{
  sub_26B214030();
  MEMORY[0x26D671480](0);
  return sub_26B214070();
}

uint64_t static SQLError.Code.== infix(_:_:)(int *a1, int *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 4);
  switch(*(a1 + 4))
  {
    case 1:
      if (v4 != 1)
      {
        goto LABEL_57;
      }

      goto LABEL_29;
    case 2:
      if (v4 != 2)
      {
        goto LABEL_57;
      }

      goto LABEL_43;
    case 3:
      if (v4 != 3)
      {
        goto LABEL_57;
      }

      goto LABEL_33;
    case 4:
      if (v4 != 4)
      {
        goto LABEL_57;
      }

      goto LABEL_43;
    case 5:
      if (v4 == 5)
      {
        goto LABEL_29;
      }

      goto LABEL_57;
    case 6:
      if (v4 == 6)
      {
        goto LABEL_35;
      }

      goto LABEL_57;
    case 7:
      if (v4 != 7)
      {
        goto LABEL_57;
      }

      v7 = *a2;
      if (*a1 != 33)
      {
        v12 = v7 == 33;
        goto LABEL_53;
      }

      if (v7 == 33)
      {
        goto LABEL_49;
      }

      goto LABEL_57;
    case 8:
      if (v4 != 8)
      {
        goto LABEL_57;
      }

LABEL_43:
      v11 = *a2;
      if (*a1 != 3)
      {
        v12 = v11 == 3;
        goto LABEL_53;
      }

      if (v11 == 3)
      {
        goto LABEL_49;
      }

      goto LABEL_57;
    case 9:
      if (v4 != 9)
      {
        goto LABEL_57;
      }

LABEL_35:
      v9 = *a2;
      if (*a1 != 6)
      {
        v12 = v9 == 6;
        goto LABEL_53;
      }

      if (v9 == 6)
      {
        goto LABEL_49;
      }

      goto LABEL_57;
    case 0xA:
      if (v4 != 10)
      {
        goto LABEL_57;
      }

      v10 = *a2;
      if (*a1 == 12)
      {
        if (v10 == 12)
        {
          goto LABEL_49;
        }
      }

      else
      {
        v12 = v10 == 12;
LABEL_53:
        v13 = (v3 ^ v2);
        if (!v12 && v13 == 0)
        {
          goto LABEL_49;
        }
      }

      goto LABEL_57;
    case 0xB:
      if (v4 != 11)
      {
        goto LABEL_57;
      }

      goto LABEL_33;
    case 0xC:
      if (v4 != 12)
      {
        goto LABEL_57;
      }

LABEL_29:
      v8 = *a2;
      if (*a1 != 2)
      {
        if (v8 == 2 || ((v3 ^ v2) & 1) != 0)
        {
          goto LABEL_57;
        }

LABEL_49:
        v5 = 1;
        return v5 & 1;
      }

      if (v8 == 2)
      {
        goto LABEL_49;
      }

LABEL_57:
      v5 = 0;
      return v5 & 1;
    case 0xD:
      if (v4 != 13)
      {
        goto LABEL_57;
      }

LABEL_33:
      v5 = v3 ^ v2 ^ 1;
      return v5 & 1;
    case 0xE:
      switch(*a1)
      {
        case 1:
          if (v4 != 14 || v3 != 1)
          {
            goto LABEL_57;
          }

          goto LABEL_49;
        case 2:
          if (v4 != 14 || v3 != 2)
          {
            goto LABEL_57;
          }

          goto LABEL_49;
        case 3:
          if (v4 != 14 || v3 != 3)
          {
            goto LABEL_57;
          }

          goto LABEL_49;
        case 4:
          if (v4 != 14 || v3 != 4)
          {
            goto LABEL_57;
          }

          goto LABEL_49;
        case 5:
          if (v4 != 14 || v3 != 5)
          {
            goto LABEL_57;
          }

          goto LABEL_49;
        case 6:
          if (v4 != 14 || v3 != 6)
          {
            goto LABEL_57;
          }

          goto LABEL_49;
        case 7:
          if (v4 != 14 || v3 != 7)
          {
            goto LABEL_57;
          }

          goto LABEL_49;
        case 8:
          if (v4 != 14 || v3 != 8)
          {
            goto LABEL_57;
          }

          goto LABEL_49;
        case 9:
          if (v4 != 14 || v3 != 9)
          {
            goto LABEL_57;
          }

          goto LABEL_49;
        case 10:
          if (v4 != 14 || v3 != 10)
          {
            goto LABEL_57;
          }

          goto LABEL_49;
        case 11:
          if (v4 != 14 || v3 != 11)
          {
            goto LABEL_57;
          }

          goto LABEL_49;
        case 12:
          if (v4 != 14 || v3 != 12)
          {
            goto LABEL_57;
          }

          goto LABEL_49;
        case 13:
          if (v4 != 14 || v3 != 13)
          {
            goto LABEL_57;
          }

          goto LABEL_49;
        case 14:
          if (v4 != 14 || v3 != 14)
          {
            goto LABEL_57;
          }

          goto LABEL_49;
        case 15:
          if (v4 != 14 || v3 != 15)
          {
            goto LABEL_57;
          }

          goto LABEL_49;
        case 16:
          if (v4 != 14 || v3 != 16)
          {
            goto LABEL_57;
          }

          goto LABEL_49;
        case 17:
          if (v4 != 14 || v3 != 17)
          {
            goto LABEL_57;
          }

          goto LABEL_49;
        default:
          if (v4 != 14 || v3 != 0)
          {
            goto LABEL_57;
          }

          goto LABEL_49;
      }

    default:
      if (*(a2 + 4))
      {
        goto LABEL_57;
      }

      v5 = v2 == v3;
      return v5 & 1;
  }
}

void SQLError.code.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *(v1 + 4);
  *(a1 + 4) = v2;
}

uint64_t SQLError.code.setter(uint64_t result)
{
  v2 = *(result + 4);
  *(v1 + 4) = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t SQLError.name.getter()
{
  v1 = *(v0 + 16);
  sub_26B2128F0();
  return v1;
}

uint64_t SQLError.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t SQLError.message.getter()
{
  v1 = *(v0 + 32);
  sub_26B2128F0();
  return v1;
}

uint64_t SQLError.message.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_26B1E2F64(uint64_t a1)
{
  v2 = sub_26B1E3EA4();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_26B1E2FA0(uint64_t a1)
{
  v2 = sub_26B1E3EA4();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t SQLError.errorUserInfo.getter()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  sub_26B1E30D0(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26B2162F0;
  *(inited + 32) = sub_26B212A80();
  *(inited + 40) = v6;
  sub_26B2128F0();
  MEMORY[0x26D670040](2112032, 0xE300000000000000);
  MEMORY[0x26D670040](v3, v4);
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v2;
  *(inited + 56) = v1;
  return sub_26B2128C0();
}

void sub_26B1E30D0(uint64_t a1)
{
  if (!qword_2803E6C68)
  {
    sub_26B159ECC();
    v1 = sub_26B213BA0();
    if (!v2)
    {
      atomic_store(v1, &qword_2803E6C68);
    }
  }
}

unint64_t sub_26B1E312C()
{
  result = qword_2803E8300;
  if (!qword_2803E8300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E8300);
  }

  return result;
}

unint64_t sub_26B1E3184()
{
  result = qword_2803E8308;
  if (!qword_2803E8308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E8308);
  }

  return result;
}

unint64_t sub_26B1E31DC()
{
  result = qword_2803E8310;
  if (!qword_2803E8310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E8310);
  }

  return result;
}

unint64_t sub_26B1E3234()
{
  result = qword_2803E8318;
  if (!qword_2803E8318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E8318);
  }

  return result;
}

unint64_t sub_26B1E328C()
{
  result = qword_2803E8320;
  if (!qword_2803E8320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E8320);
  }

  return result;
}

unint64_t sub_26B1E32E4()
{
  result = qword_2803E8328;
  if (!qword_2803E8328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E8328);
  }

  return result;
}

unint64_t sub_26B1E333C()
{
  result = qword_2803E8330;
  if (!qword_2803E8330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E8330);
  }

  return result;
}

unint64_t sub_26B1E3394()
{
  result = qword_2803E8338;
  if (!qword_2803E8338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E8338);
  }

  return result;
}

unint64_t sub_26B1E33EC()
{
  result = qword_2803E8340;
  if (!qword_2803E8340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E8340);
  }

  return result;
}

unint64_t sub_26B1E3444()
{
  result = qword_2803E8348;
  if (!qword_2803E8348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E8348);
  }

  return result;
}

unint64_t sub_26B1E349C()
{
  result = qword_2803E8350;
  if (!qword_2803E8350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E8350);
  }

  return result;
}

unint64_t sub_26B1E34F4()
{
  result = qword_2803E8358;
  if (!qword_2803E8358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E8358);
  }

  return result;
}

unint64_t sub_26B1E354C()
{
  result = qword_2803E8360;
  if (!qword_2803E8360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E8360);
  }

  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SQLError.Code(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF2 && *(a1 + 5))
    {
      v2 = *a1 + 241;
    }

    else
    {
      v3 = *(a1 + 4);
      if (v3 <= 0xE)
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

uint64_t storeEnumTagSinglePayload for SQLError.Code(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF1)
  {
    *(result + 4) = 0;
    *result = a2 - 242;
    if (a3 >= 0xF2)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF2)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

uint64_t sub_26B1E3670(uint64_t a1)
{
  if (*(a1 + 4) <= 0xDu)
  {
    return *(a1 + 4);
  }

  else
  {
    return (*a1 + 14);
  }
}

uint64_t sub_26B1E3688(uint64_t result, unsigned int a2)
{
  if (a2 >= 0xE)
  {
    *result = a2 - 14;
    LOBYTE(a2) = 14;
  }

  *(result + 4) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for SQLError.Code.Extended.IO(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE0)
  {
    if (a2 + 32 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 32) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 33;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x21;
  v5 = v6 - 33;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SQLError.Code.Extended.IO(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 32 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 32) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xDF)
  {
    v6 = ((a2 - 224) >> 8) + 1;
    *result = a2 + 32;
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
          *result = a2 + 32;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_26B1E3848(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_7_18(-1);
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return OUTLINED_FUNCTION_7_18((*a1 | (v4 << 8)) - 3);
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

      return OUTLINED_FUNCTION_7_18((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_7_18((*a1 | (v4 << 8)) - 3);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_7_18(v8);
}

_BYTE *sub_26B1E38CC(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_6_23(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_4_27(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_5_22(result, v6);
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
          result = OUTLINED_FUNCTION_1_31(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_26B1E3994(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_7_18(-1);
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
      return OUTLINED_FUNCTION_7_18((*a1 | (v4 << 8)) - 6);
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

      return OUTLINED_FUNCTION_7_18((*a1 | (v4 << 8)) - 6);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_7_18((*a1 | (v4 << 8)) - 6);
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

  return OUTLINED_FUNCTION_7_18(v8);
}

_BYTE *sub_26B1E3A18(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_6_23(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_4_27(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_5_22(result, v6);
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
          result = OUTLINED_FUNCTION_1_31(result, a2 + 5);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SQLError.Code.Extended.Constraint(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF5)
  {
    if (a2 + 11 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 11) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 12;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v5 = v6 - 12;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SQLError.Code.Extended.Constraint(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_26B1E3C64(unsigned __int8 *a1, int a2)
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

  return OUTLINED_FUNCTION_3(a1);
}

_BYTE *sub_26B1E3CB0(_BYTE *result, int a2, int a3)
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

uint64_t sub_26B1E3D58(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_7_18(-1);
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return OUTLINED_FUNCTION_7_18((*a1 | (v4 << 8)) - 2);
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

      return OUTLINED_FUNCTION_7_18((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_7_18((*a1 | (v4 << 8)) - 2);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_7_18(v8);
}

_BYTE *sub_26B1E3DDC(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_6_23(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_4_27(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_5_22(result, v6);
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
          result = OUTLINED_FUNCTION_1_31(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_26B1E3EA4()
{
  result = qword_2803E8368;
  if (!qword_2803E8368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E8368);
  }

  return result;
}

uint64_t sub_26B1E3FC8@<X0>(uint64_t *a1@<X8>, Swift::OpaquePointer a2@<X0>, Swift::Int a3@<X1>)
{
  result = sub_26B1E3FF4(a2, a3);
  if (!v3)
  {
    *a1 = result;
    a1[1] = v6;
  }

  return result;
}

uint64_t SQLColumnResult<>.init(statement:index:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &v14 - v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = (*(*(AssociatedConformanceWitness + 16) + 8))(a1, a2, AssociatedTypeWitness);
  if (!v4)
  {
    return (*(a4 + 56))(v11, a3, a4);
  }

  return result;
}

uint64_t SQLValue.init(value:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v18 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v19 = *(AssociatedTypeWitness - 8);
  v9 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - v12;
  v14 = *(*a1 + 16);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 40))(v14, AssociatedTypeWitness, AssociatedConformanceWitness);
  if (v4)
  {
  }

  v17 = v19;
  (*(v19 + 16))(v11, v13, AssociatedTypeWitness);
  (*(a3 + 56))(v11, a2, a3);

  return (*(v17 + 8))(v13, AssociatedTypeWitness);
}

uint64_t SQLValueError.message.getter()
{
  v1 = *v0;
  sub_26B2128F0();
  return v1;
}

uint64_t SQLValueError.message.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t SQLValueError.errorUserInfo.getter()
{
  v2 = *v0;
  v1 = v0[1];
  sub_26B1E30D0(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26B2162F0;
  *(inited + 32) = sub_26B212A80();
  *(inited + 40) = v4;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v2;
  *(inited + 56) = v1;
  sub_26B2128F0();
  return sub_26B2128C0();
}

uint64_t sub_26B1E4434(uint64_t a1)
{
  v2 = sub_26B1E4544();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_26B1E4470(uint64_t a1)
{
  v2 = sub_26B1E4544();

  return MEMORY[0x28211F4A8](a1, v2);
}

unint64_t sub_26B1E4544()
{
  result = qword_2803E8370;
  if (!qword_2803E8370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2803E8370);
  }

  return result;
}

uint64_t sub_26B1E45B4(Swift::OpaquePointer a1, Swift::Int a2)
{
  sub_26B2128F0();
  String.bind(to:index:)(a1, a2);
}

uint64_t SQLBindable<>.bind(to:index:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = &v15 - v11;
  result = (*(a4 + 64))(a3, a4);
  if (!v4)
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(*(AssociatedConformanceWitness + 8) + 8))(a1, a2, AssociatedTypeWitness);
    return (*(v10 + 8))(v12, AssociatedTypeWitness);
  }

  return result;
}

uint64_t SQLBindPosition.Error.message.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

BOOL static SQLBindPosition.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 16);
  v4 = *a2;
  v5 = *(a2 + 16);
  if (v3 != 1)
  {
    if ((a2[2] & 1) == 0)
    {
      v19 = OUTLINED_FUNCTION_9();
      sub_26B1D679C(v19, v20, 0);
      v21 = OUTLINED_FUNCTION_2_33();
      sub_26B1D679C(v21, v22, 0);
      return v2 == v4;
    }

LABEL_11:
    v24 = OUTLINED_FUNCTION_2_33();
    sub_26B1E492C(v24, v25, v5);
    v26 = OUTLINED_FUNCTION_9();
    sub_26B1D679C(v26, v27, v3);
    v28 = OUTLINED_FUNCTION_2_33();
    sub_26B1D679C(v28, v29, v5);
    return 0;
  }

  if ((a2[2] & 1) == 0)
  {
    sub_26B2128F0();
    goto LABEL_11;
  }

  if (v2 != v4 || a1[1] != a2[1])
  {
    OUTLINED_FUNCTION_9();
    v7 = sub_26B213E30();
    v8 = OUTLINED_FUNCTION_2_33();
    sub_26B1E492C(v8, v9, 1);
    v10 = OUTLINED_FUNCTION_0_36();
    sub_26B1E492C(v10, v11, v12);
    v13 = OUTLINED_FUNCTION_0_36();
    sub_26B1D679C(v13, v14, v15);
    v16 = OUTLINED_FUNCTION_2_33();
    sub_26B1D679C(v16, v17, 1);
    return v7 & 1;
  }

  v23 = 1;
  v30 = OUTLINED_FUNCTION_0_36();
  sub_26B1E492C(v30, v31, v32);
  v33 = OUTLINED_FUNCTION_0_36();
  sub_26B1E492C(v33, v34, v35);
  v36 = OUTLINED_FUNCTION_0_36();
  sub_26B1D679C(v36, v37, v38);
  v39 = OUTLINED_FUNCTION_0_36();
  sub_26B1D679C(v39, v40, v41);
  return v23;
}

uint64_t sub_26B1E492C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return sub_26B2128F0();
  }

  return result;
}

uint64_t SQLBindPosition.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  if (*(v1 + 16) == 1)
  {
    MEMORY[0x26D671480](1);

    return _s15SonicFoundation11UnknownKeysV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x26D671480](0);
    return MEMORY[0x26D671480](v2);
  }
}

uint64_t SQLBindPosition.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  sub_26B214030();
  if (v2 == 1)
  {
    MEMORY[0x26D671480](1);
    _s15SonicFoundation11UnknownKeysV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x26D671480](0);
    MEMORY[0x26D671480](v1);
  }

  return sub_26B214070();
}

uint64_t sub_26B1E4A54(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 16);
  sub_26B214030();
  if (v3 == 1)
  {
    MEMORY[0x26D671480](1);
    _s15SonicFoundation11UnknownKeysV4hash4intoys6HasherVz_tF_0();
  }

  else
  {
    MEMORY[0x26D671480](0);
    MEMORY[0x26D671480](v2);
  }

  return sub_26B214070();
}

unint64_t sub_26B1E4ADC()
{
  result = qword_2803E8378[0];
  if (!qword_2803E8378[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2803E8378);
  }

  return result;
}

uint64_t sub_26B1E4B70(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
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

uint64_t sub_26B1E4BB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_26B1E4C20@<X0>(uint64_t *a4@<X8>)
{
  result = sub_26B211B70();
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
  }

  return result;
}

uint64_t sub_26B1E4CDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  (a3)(0, a2);
  swift_allocObject();
  return a4();
}

uint64_t SQLCodable<>.init(nativeValue:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 72))(&v7, a3, a4);
  sub_26B211B40();
  sub_26B14FF4C(a1, a2);
}

uint64_t SQLCodable<>.nativeValue.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 64))(&v4);
  v2 = sub_26B211B70();

  return v2;
}

void sub_26B1E4EF0(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = *(*v1 + 16);
  if (v2 == v3)
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    return;
  }

  if (v2 >= v3)
  {
    __break(1u);
  }

  else
  {
    v4 = *v1 + 16 * v2;
    v6 = *(v4 + 32);
    v5 = *(v4 + 40);
    v1[1] = v2 + 1;
    v7 = v1[2];
    if (!__OFADD__(v7, 1))
    {
      v1[2] = v7 + 1;
      *a1 = v7;
      a1[1] = v6;
      a1[2] = v5;
      sub_26B2128F0();
      return;
    }
  }

  __break(1u);
}

uint64_t sub_26B1E4F44(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_26B1E50F4(a1);
  return v2;
}

uint64_t sub_26B1E4F84(uint64_t a1)
{
  sub_26B2136C0();

  v1 = sub_26B2141F0();
  MEMORY[0x26D670040](v1);

  v20 = sub_26B14FCC8();
  v19 = MEMORY[0x277D837D0];
  v2 = sub_26B2134A0();
  v4 = v3;

  OUTLINED_FUNCTION_4_28(v5, v6, v7, v8, v19, v20, v20, v20, 95, 0xE100000000000000, 62, 0xE100000000000000, v2, v4);

  OUTLINED_FUNCTION_4_28(v9, v10, v11, v12);

  v17 = OUTLINED_FUNCTION_4_28(v13, v14, v15, v16);

  return v17;
}

uint64_t sub_26B1E51EC()
{
  sub_26B1E517C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_26B1E5258(uint64_t a1, uint64_t a2)
{
  v3 = (*(a2 + 16))();
  sub_26B168D4C(&unk_287BBB0C0);
  return v3;
}

uint64_t sub_26B1E52AC@<X0>(uint64_t **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v5 = *a1;
  memset(v57, 0, 41);
  v44 = a3;
  v6 = *(sub_26B1E5258(a2, a3) + 16);

  i = sub_26B1E5778(v57, v6);
  j = v5[2];
  __dst = a4;
  if (j)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_51;
    }

    while (1)
    {
      v9 = 0;
      v10 = v5 + 4;
      v41 = v5;
      v42 = i + 40;
      v39 = v5 + 4;
      v40 = j;
      while (v9 < v5[2])
      {
        v11 = &v10[5 * v9];
        if (!*(v11 + 16))
        {
          v13 = *v11;
          v12 = v11[1];
          v45 = v11[3];
          v47 = v11[4];
          if (*(v11 + 17) != 1)
          {
            sub_26B2128F0();
            sub_26B2136C0();
            OUTLINED_FUNCTION_11_15();
            MEMORY[0x26D670040](0xD000000000000015);
            sub_26B2138F0();
            OUTLINED_FUNCTION_0_37();
            result = sub_26B2139E0();
            __break(1u);
            return result;
          }

          j = i;
          sub_26B2128F0();
          v14 = sub_26B1E5258(a2, v44);
          v15 = 0;
          v5 = (v14 + 40);
          v16 = *(v14 + 16);
          for (i = v42; ; i += 48)
          {
            if (v16 == v15)
            {

              goto LABEL_18;
            }

            v17 = *(v5 - 1);
            v18 = *v5;
            v19 = v17 == v13 && v18 == v12;
            if (v19 || (OUTLINED_FUNCTION_33_7(v17, v18, v13) & 1) != 0)
            {
              break;
            }

            ++v15;
            v5 += 3;
          }

          if (v15 >= j[2])
          {
            goto LABEL_50;
          }

          *(i - 8) = v13;
          *i = v12;
          *(i + 8) = 256;
          *(i + 16) = v45;
          *(i + 24) = v47;
          *(i + 32) = 1;
LABEL_18:

          i = j;
          j = v40;
          v5 = v41;
          v10 = v39;
        }

        if (++v9 == j)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      i = sub_26B16BB4C(i);
    }
  }

LABEL_20:
  v20 = 0;
  v5 = 0xEB000000006E6F69;
  v21 = *(i + 16);
  for (j = (i + 40); ; j += 6)
  {
    if (v21 == v20)
    {

      __dst[64] = 0;
      *(__dst + 2) = 0u;
      *(__dst + 3) = 0u;
      *__dst = 0u;
      *(__dst + 1) = 0u;
      return result;
    }

    if (v20 >= *(i + 16))
    {
      goto LABEL_49;
    }

    if (!*j)
    {

      goto LABEL_31;
    }

    if (*(j - 1) == 0x7463656C6C6F635FLL && *j == 0xEB000000006E6F69)
    {
      break;
    }

    v23 = sub_26B213E30();

    if (v23)
    {
      goto LABEL_34;
    }

LABEL_31:
    ++v20;
  }

LABEL_34:
  v25 = 0;
  v26 = 0;
  v27 = -*(i + 16);
  v5 = MEMORY[0x277D84F90];
LABEL_35:
  v28 = v26 - 1;
  v29 = i + 48 * v26;
  while (v27 + v28 != -1)
  {
    if (v28 + 1 >= *(i + 16))
    {
      goto LABEL_48;
    }

    v30 = *(v29 + 40);
    ++v28;
    v29 += 48;
    if (v30)
    {
      v48 = i;
      v31 = *(v29 - 16);
      j = *v29;
      v46 = *(v29 + 8);
      v32 = *(v29 + 24);
      if (v28 < 0x20)
      {
        v25 |= 1 << v28;
      }

      sub_26B2128F0();
      LODWORD(v44) = v25;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_26B16B4E8(0, v5[2] + 1, 1, v5);
        v5 = v36;
      }

      v34 = v5[2];
      v33 = v5[3];
      if (v34 >= v33 >> 1)
      {
        sub_26B16B4E8(v33 > 1, v34 + 1, 1, v5);
        v5 = v37;
      }

      v26 = v28 + 1;
      v5[2] = v34 + 1;
      v35 = &v5[6 * v34];
      v35[4] = v31;
      v35[5] = v30;
      *(v35 + 48) = j;
      *(v35 + 49) = BYTE1(j) & 1;
      *(v35 + 7) = v46;
      *(v35 + 72) = v32 & 1;
      i = v48;
      goto LABEL_35;
    }
  }

  v58 = 0;
  LODWORD(__src[0]) = v25;
  __src[1] = 0;
  __src[2] = 0;
  __src[3] = v5;
  LOBYTE(__src[4]) = 0;
  __src[5] = 0x3FF0000000000000;
  LOBYTE(__src[6]) = 0;
  __src[7] = 1000;
  LOBYTE(__src[8]) = 0;
  memcpy(__dst, __src, 0x41uLL);
  LODWORD(v51[0]) = v25;
  v51[1] = 0;
  v51[2] = 0;
  v51[3] = v5;
  LOBYTE(v52) = 0;
  v53 = 0x3FF0000000000000;
  v54 = 0;
  v55 = 1000;
  v56 = 0;
  sub_26B1EB894(__src, v49);
  return sub_26B1EB8F0(v51);
}

__int128 *sub_26B1E5778(__int128 *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      sub_26B1EC100(0, &qword_2803E7080, &type metadata for SQLVirtualTableIndexResults.ConstraintUsage);
      v4 = sub_26B212ED0();
      *(v4 + 16) = a2;
      v5 = a2 - 1;
      for (i = 32; ; i += 48)
      {
        v7 = (v4 + i);
        v8 = *v3;
        v9 = v3[1];
        *(v7 + 25) = *(v3 + 25);
        *v7 = v8;
        v7[1] = v9;
        if (!v5)
        {
          break;
        }

        sub_26B1EB944(v3, &v10);
        --v5;
      }
    }

    else
    {
      sub_26B1EB9B8(result);
      return MEMORY[0x277D84F90];
    }

    return v4;
  }

  return result;
}

void sub_26B1E5830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_11_6();
  v83 = v10;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v84 = v17;
  v78 = v18;
  v19 = *(*(v11 + 8) + 8);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_18_12();
  v77 = v20;
  sub_26B2133E0();
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v21);
  v75 = v72 - v22;
  OUTLINED_FUNCTION_23_7();
  v74 = sub_26B213A20();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v23);
  v72[1] = v72 - v24;
  OUTLINED_FUNCTION_23_7();
  v76 = v19;
  sub_26B213A10();
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v25);
  v73 = v72 - v26;
  OUTLINED_FUNCTION_9_0();
  v80 = v27;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_22_0();
  v72[0] = v29 - v30;
  MEMORY[0x28223BE20](v31);
  v79 = v72 - v32;
  v33 = 0;
  v34 = 0;
  v35 = *v16;
  v81 = v16[1];
  v82 = v35;
  v36 = MEMORY[0x277D84F90];
  v37 = v12;
  do
  {
    if ((v84 >> v34))
    {
      v38 = sub_26B1E5258(v14, v12);
      if (v34 >= *(v38 + 16))
      {
        __break(1u);
        return;
      }

      v39 = v14;
      v41 = *(v38 + v33 + 32);
      v40 = *(v38 + v33 + 40);
      sub_26B2128F0();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_26B16B280();
        v36 = v44;
      }

      v42 = *(v36 + 16);
      if (v42 >= *(v36 + 24) >> 1)
      {
        sub_26B16B280();
        v36 = v45;
      }

      *(v36 + 16) = v42 + 1;
      v43 = v36 + 16 * v42;
      *(v43 + 32) = v41;
      *(v43 + 40) = v40;
      v12 = v37;
      v14 = v39;
    }

    ++v34;
    v33 += 24;
  }

  while (v34 != 32);
  v46 = sub_26B1E5D80(0x7463656C6C6F635FLL, 0xEB000000006E6F69, v36);
  if (v47)
  {

    v85 = 0;
    v86 = 0xE000000000000000;
    sub_26B2136C0();
    MEMORY[0x26D670040](0xD000000000000022, 0x800000026B220EE0);
    v48 = OUTLINED_FUNCTION_23_7();
    _s15CollectionTableVMa(v48, v49, v12, v50);
    v51 = sub_26B2141F0();
    MEMORY[0x26D670040](v51);

    OUTLINED_FUNCTION_11_15();
    MEMORY[0x26D670040](0xD000000000000010);
    v52 = v85;
    v53 = v86;
    sub_26B1B34BC();
    swift_allocError();
    *v54 = v52;
    v54[1] = v53;
    swift_willThrow();
  }

  else
  {
    v55 = v46;
    v56 = OUTLINED_FUNCTION_23_7();
    v60 = _s12ReferenceBoxCMa(v56, v57, v58, v59);
    v62 = v81;
    v61 = v82;
    v85 = v82;
    v86 = v81;
    v63 = v83;
    SQLTableFunctionCursorArguments.subscript.getter(v55, v60, v60, &off_287BC11B0);
    if (v63)
    {
    }

    else
    {
      v64 = v79;
      v65 = v80;
      (*(v80 + 16))(v79, a10 + *(*a10 + 88), v14);
      if (*(v36 + 16) < 2uLL)
      {
      }

      else
      {
        v85 = v61;
        v86 = v62;
        v66 = v72[0];
        (*(v12 + 24))(v36, &v85, v14, v12);
        (*(v65 + 8))(v64, v14);

        (*(v65 + 32))(v64, v66, v14);
      }

      MEMORY[0x26D670170](v14, v76);
      v67 = v73;
      sub_26B2139F0();

      (*(v65 + 8))(v64, v14);
      v68 = v75;
      OUTLINED_FUNCTION_30_9();
      __swift_storeEnumTagSinglePayload(v69, v70, v71, v77);
      sub_26B1E5E0C(v67, v68, 0, 1, v14, v12, v78);
    }
  }

  OUTLINED_FUNCTION_10_2();
}

uint64_t sub_26B1E5D80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a3 + 16);
  v7 = (a3 + 40);
  while (v6 != v5)
  {
    v8 = *(v7 - 1) == a1 && *v7 == a2;
    if (v8 || (sub_26B213E30() & 1) != 0)
    {
      return v5;
    }

    ++v5;
    v7 += 2;
  }

  return 0;
}

uint64_t sub_26B1E5E0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_26B213A10();
  OUTLINED_FUNCTION_27();
  (*(v14 + 32))(a7, a1);
  v16 = _s15CollectionTableV6CursorVMa(0, a5, a6, v15);
  v17 = *(v16 + 36);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_18_12();
  sub_26B2133E0();
  OUTLINED_FUNCTION_27();
  result = (*(v18 + 32))(a7 + v17, a2);
  v20 = a7 + *(v16 + 40);
  *v20 = a3;
  *(v20 + 8) = a4 & 1;
  return result;
}

void sub_26B1E5F20()
{
  OUTLINED_FUNCTION_11_6();
  v37 = v0;
  v39 = v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_23_7();
  sub_26B2133E0();
  OUTLINED_FUNCTION_9_0();
  v35 = v5;
  v36 = v4;
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v6);
  v8 = &v34 - v7;
  v9 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v34 - v11;
  OUTLINED_FUNCTION_9_0();
  v14 = v13;
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v15);
  v17 = &v34 - v16;
  sub_26B213A10();
  v18 = v37;
  sub_26B213A00();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 1, TupleTypeMetadata2);
  if (EnumTagSinglePayload == 1)
  {
    (*(v35 + 8))(v8, v36);
    v19 = v39;
    v20 = *(v39 + 36);
    sub_26B2133E0();
    OUTLINED_FUNCTION_27();
    (*(v21 + 8))(v18 + v20);
    OUTLINED_FUNCTION_30_9();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, AssociatedTypeWitness);
    v25 = v18 + *(v19 + 40);
    *v25 = 0;
    *(v25 + 8) = 1;
  }

  else
  {
    v26 = *(TupleTypeMetadata2 + 48);
    v27 = *(v9 + 48);
    *v12 = *v8;
    v28 = *(v14 + 32);
    v28(&v12[v27], &v8[v26], AssociatedTypeWitness);
    v29 = *v12;
    v28(v17, &v12[*(v9 + 48)], AssociatedTypeWitness);
    v30 = v39;
    v31 = v18 + *(v39 + 40);
    *v31 = v29;
    *(v31 + 8) = 0;
    v32 = *(v30 + 36);
    sub_26B2133E0();
    OUTLINED_FUNCTION_27();
    (*(v33 + 8))(v18 + v32);
    v28((v18 + v32), v17, AssociatedTypeWitness);
    __swift_storeEnumTagSinglePayload(v18 + v32, 0, 1, AssociatedTypeWitness);
  }

  OUTLINED_FUNCTION_10_2();
}

void sub_26B1E6258()
{
  OUTLINED_FUNCTION_11_6();
  v28 = v0;
  v29 = v2;
  v4 = v3;
  v6 = v5;
  v7 = *(v3 + 16);
  v27 = *(v3 + 24);
  v26[1] = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = sub_26B2133E0();
  OUTLINED_FUNCTION_9_0();
  v11 = v10;
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v12);
  v14 = v26 - v13;
  OUTLINED_FUNCTION_9_0();
  v16 = v15;
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x28223BE20](v17);
  v19 = v26 - v18;
  v20 = *v6;
  v21 = v6[1];
  (*(v11 + 16))(v14, v28 + *(v4 + 36), v9);
  if (__swift_getEnumTagSinglePayload(v14, 1, AssociatedTypeWitness) == 1)
  {
    (*(v11 + 8))(v14, v9);
    v22 = v29;
    *(v29 + 24) = &type metadata for SQLNull;
    *(v22 + 32) = &protocol witness table for SQLNull;
  }

  else
  {
    v23 = v29;
    (*(v16 + 32))(v19, v14, AssociatedTypeWitness);
    v30[0] = v20;
    v30[1] = v21;
    (*(v27 + 32))(v31, v30, v19);
    v24 = OUTLINED_FUNCTION_28_8();
    v25(v24);
    if (!v1)
    {
      sub_26B150514(v31, v23);
    }
  }

  OUTLINED_FUNCTION_10_2();
}

uint64_t static _SQLBindableElement<>.columns()(uint64_t a1, uint64_t a2)
{
  sub_26B16CB64(0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26B2162F0;
  OUTLINED_FUNCTION_27_9();
  *(v5 + 32) = v6;
  *(v5 + 40) = 0xE700000000000000;
  (*(*(a2 + 24) + 32))(a1);
  return v4;
}

void sub_26B1E6640()
{
  if (!qword_2803E7060)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2803E7060);
    }
  }
}

uint64_t sub_26B1E66A4(uint64_t a1, uint64_t a2, uint64_t a3, sqlite3_value *a4)
{
  v6 = 0;
  v7 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    v9 = v6;
    if (v7 == v6)
    {
      return v7 == v9;
    }

    v10 = *(i - 1) == 0x746E656D656C65 && *i == 0xE700000000000000;
    if (!v10 && (sub_26B213E30() & 1) == 0)
    {
      break;
    }

    v11 = *(a2 + 8 * v9);
    if (!v11)
    {
      sub_26B2136C0();

      v13 = sub_26B213B90();
      MEMORY[0x26D670040](v13);

      MEMORY[0x26D670040](544432416, 0xE400000000000000);
      MEMORY[0x26D670040](0x6D616E79444C5153, 0xEF65756C61566369);
      sub_26B1B34BC();
      swift_allocError();
      *v14 = 0xD00000000000002ALL;
      v14[1] = 0x800000026B2209F0;
      swift_willThrow();
      return v7 == v9;
    }

    type metadata accessor for SQLDynamicValue.Box();
    swift_allocObject();
    v12 = sub_26B1EC55C(v11);

    v6 = v9 + 1;
    if (v12 != a4)
    {
      return v7 == v9;
    }
  }

  sub_26B2128F0();
  sub_26B2136C0();
  MEMORY[0x26D670040](0xD000000000000012, 0x800000026B220E30);
  sub_26B2138F0();
  result = sub_26B2139E0();
  __break(1u);
  return result;
}

uint64_t sub_26B1E691C(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a1 + 16);
  v5 = (a1 + 40);
  while (1)
  {
    if (v4 == v3)
    {
      return 1;
    }

    v6 = *(v5 - 1) == 0x746E656D656C65 && *v5 == 0xE700000000000000;
    if (!v6 && (sub_26B213E30() & 1) == 0)
    {
      break;
    }

    v7 = *(a2 + 8 * v3);
    if (!v7)
    {
      sub_26B2136C0();

      v15 = 0xD00000000000002ALL;
      v16 = 0x800000026B2209F0;
      v12 = sub_26B213B90();
      MEMORY[0x26D670040](v12);

      MEMORY[0x26D670040](544432416, 0xE400000000000000);
      v10 = 0x6C6C754E4C5153;
      v11 = 0xE700000000000000;
      goto LABEL_12;
    }

    v8 = sqlite3_value_type(*(a2 + 8 * v3));
    v5 += 2;
    ++v3;
    if (v8 != 5)
    {
      sub_26B2136C0();

      v15 = 0xD00000000000001ELL;
      v16 = 0x800000026B220150;
      sqlite3_value_type(v7);
      v9 = sub_26B213B90();
      MEMORY[0x26D670040](v9);

      v10 = 0x65756C617620;
      v11 = 0xE600000000000000;
LABEL_12:
      MEMORY[0x26D670040](v10, v11);
      sub_26B1B34BC();
      swift_allocError();
      *v13 = v15;
      v13[1] = v16;
      swift_willThrow();
      return 1;
    }
  }

  sub_26B2128F0();
  sub_26B2136C0();
  MEMORY[0x26D670040](0xD000000000000012, 0x800000026B220E30);
  sub_26B2138F0();
  result = sub_26B2139E0();
  __break(1u);
  return result;
}

BOOL sub_26B1E6BE0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  v6 = v5;
  v7 = a2;
  v8 = 0;
  v85 = *MEMORY[0x277D85DE8];
  v80 = a5 >> 62;
  v81 = *(a1 + 16);
  v68 = HIDWORD(a4);
  v9 = __OFSUB__(HIDWORD(a4), a4);
  v71 = v9;
  v69 = BYTE6(a5);
  v70 = HIDWORD(a4) - a4;
  if (a4)
  {
    v10 = 0;
  }

  else
  {
    v10 = a5 == 0xC000000000000000;
  }

  v11 = v10;
  v79 = v11;
  v72 = a4;
  v12 = (a1 + 40);
  v67 = a4 >> 32;
  while (2)
  {
    v13 = v81 == v8;
    if (v81 == v8)
    {
      return v13;
    }

    v14 = *(v12 - 1);
    v15 = *v12;
    v16 = v14 == 0x746E656D656C65 && v15 == 0xE700000000000000;
    if (!v16 && (sub_26B213E30() & 1) == 0)
    {
      goto LABEL_127;
    }

    v17 = *(v7 + 8 * v8);
    if (!v17)
    {
      *&__dst = 0;
      *(&__dst + 1) = 0xE000000000000000;
      sub_26B2136C0();

      *&__dst = 0xD00000000000002ALL;
      *(&__dst + 1) = 0x800000026B2209F0;
      __s2 = v8;
      v61 = sub_26B213B90();
      MEMORY[0x26D670040](v61);

      MEMORY[0x26D670040](544432416, 0xE400000000000000);
      MEMORY[0x26D670040](1635017028, 0xE400000000000000);
      v62 = *(&__dst + 1);
      v63 = __dst;
      sub_26B1B34BC();
      swift_allocError();
      goto LABEL_105;
    }

    v18 = sqlite3_value_blob(*(v7 + 8 * v8));
    v19 = sqlite3_value_bytes(v17);
    v20 = v19 == 1;
    if (v19 >= 1)
    {
      if (v18)
      {
        v21 = v19;
        v22 = v19;
        if (v19 < 0xF)
        {
          *(&__dst + 6) = 0;
          *&__dst = 0;
          BYTE14(__dst) = v19;
          memcpy(&__dst, v18, v19);
          v14 = __dst;
          v15 = v78 & 0xF00000000000000 | DWORD2(__dst) | ((WORD6(__dst) | (BYTE14(__dst) << 16)) << 32);
          v78 = v15;
        }

        else
        {
          sub_26B211D50();
          swift_allocObject();
          if (v21 == 0x7FFFFFFF)
          {
            v23 = sub_26B211D00();
            sub_26B211F60();
            v14 = swift_allocObject();
            *(v14 + 16) = xmmword_26B219F00;
            v15 = v23 | 0x8000000000000000;
          }

          else
          {
            v14 = v22 << 32;
            v15 = sub_26B211D00() | 0x4000000000000000;
          }
        }

        goto LABEL_26;
      }

      v62 = 0x800000026B220E90;
      sub_26B1B34BC();
      swift_allocError();
      v63 = 0xD00000000000002BLL;
LABEL_105:
      *v64 = v63;
      v64[1] = v62;
      swift_willThrow();
      return v13;
    }

    v14 = 0;
    v15 = 0xC000000000000000;
LABEL_26:
    v24 = v15 >> 62;
    if (!v20)
    {
      v28 = 0;
      switch(v80)
      {
        case 0uLL:
          v28 = v69;
          goto LABEL_39;
        case 1uLL:
          v28 = v70;
          if (v71)
          {
            goto LABEL_109;
          }

          goto LABEL_39;
        case 2uLL:
          v30 = *(a4 + 16);
          v29 = *(a4 + 24);
          v31 = __OFSUB__(v29, v30);
          v28 = v29 - v30;
          if (!v31)
          {
            goto LABEL_39;
          }

          goto LABEL_110;
        case 3uLL:
          goto LABEL_39;
        default:
          goto LABEL_129;
      }
    }

    v25 = v79;
    v28 = 0;
    if (v15 >> 62 != 3)
    {
      v25 = 0;
    }

    if ((v25 & 1) != 0 && !v14 && v15 == 0xC000000000000000)
    {
      v26 = 0;
      v27 = 0xC000000000000000;
LABEL_60:
      sub_26B14FF4C(v26, v27);
      goto LABEL_101;
    }

LABEL_39:
    switch(v24)
    {
      case 1uLL:
        LODWORD(v32) = HIDWORD(v14) - v14;
        if (__OFSUB__(HIDWORD(v14), v14))
        {
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
        }

        v32 = v32;
LABEL_48:
        if (v28 == v32)
        {
          if (v28 < 1)
          {
LABEL_59:
            v26 = v14;
            v27 = v15;
            goto LABEL_60;
          }

          v35 = v14 >> 32;
          switch(v80)
          {
            case 1:
              if (v67 < v72)
              {
                goto LABEL_111;
              }

              v48 = v6;
              sub_26B14F044(v14, v15);
              sub_26B14F044(v14, v15);
              sub_26B14F044(v14, v15);
              v49 = sub_26B211D10();
              if (!v49)
              {
                goto LABEL_80;
              }

              v50 = sub_26B211D40();
              if (__OFSUB__(v72, v50))
              {
                goto LABEL_114;
              }

              v49 += v72 - v50;
LABEL_80:
              sub_26B211D30();
              v42 = v49;
              v43 = v14;
              v44 = v15;
              v45 = v48;
              goto LABEL_81;
            case 2:
              v75 = v6;
              v39 = *(a4 + 16);
              v66 = *(a4 + 24);
              sub_26B14F044(v14, v15);
              sub_26B14F044(v14, v15);
              sub_26B14F044(v14, v15);
              v40 = sub_26B211D10();
              if (!v40)
              {
                goto LABEL_64;
              }

              v41 = sub_26B211D40();
              if (__OFSUB__(v39, v41))
              {
                goto LABEL_113;
              }

              v40 += v39 - v41;
LABEL_64:
              if (__OFSUB__(v66, v39))
              {
                goto LABEL_112;
              }

              sub_26B211D30();
              v42 = v40;
              v43 = v14;
              v44 = v15;
              v45 = v75;
LABEL_81:
              sub_26B1EB634(&__dst, v42, v43, v44);
              if (v45)
              {
                goto LABEL_128;
              }

              v6 = 0;
              sub_26B14FF4C(v14, v15);
              sub_26B14FF4C(v14, v15);
              sub_26B14FF4C(v14, v15);
              v51 = __dst;
              sub_26B14FF4C(v14, v15);
              v7 = a2;
              if ((v51 & 1) == 0)
              {
                return v13;
              }

              break;
            case 3:
              *(&__dst + 6) = 0;
              *&__dst = 0;
              if (v24 == 2)
              {
                v74 = v6;
                v53 = *(v14 + 16);
                v54 = *(v14 + 24);
                sub_26B14F044(v14, v15);
                v36 = sub_26B211D10();
                if (v36)
                {
                  v55 = sub_26B211D40();
                  if (__OFSUB__(v53, v55))
                  {
                    goto LABEL_119;
                  }

                  v36 += v53 - v55;
                }

                v31 = __OFSUB__(v54, v53);
                v56 = v54 - v53;
                if (v31)
                {
                  goto LABEL_117;
                }

                v57 = sub_26B211D30();
                if (!v36)
                {
                  goto LABEL_124;
                }

                goto LABEL_96;
              }

              if (v24 != 1)
              {
LABEL_84:
                __s2 = v14;
                LOWORD(v83) = v15;
                BYTE2(v83) = BYTE2(v15);
                BYTE3(v83) = BYTE3(v15);
                BYTE4(v83) = BYTE4(v15);
                BYTE5(v83) = BYTE5(v15);
                v52 = memcmp(&__dst, &__s2, BYTE6(v15));
                sub_26B14FF4C(v14, v15);
                goto LABEL_100;
              }

              if (v35 < v14)
              {
                goto LABEL_115;
              }

              v74 = v6;
              sub_26B14F044(v14, v15);
              v36 = sub_26B211D10();
              if (v36)
              {
                v46 = sub_26B211D40();
                if (__OFSUB__(v14, v46))
                {
                  goto LABEL_121;
                }

                v36 += v14 - v46;
              }

              v38 = sub_26B211D30();
              if (!v36)
              {
                __break(1u);
LABEL_124:
                __break(1u);
LABEL_125:
                __break(1u);
LABEL_126:
                __break(1u);
LABEL_127:
                *&__dst = 0;
                *(&__dst + 1) = 0xE000000000000000;
                sub_26B2128F0();
                sub_26B2136C0();
                MEMORY[0x26D670040](0xD000000000000012, 0x800000026B220E30);
                __s2 = v14;
                v83 = v15;
                sub_26B2138F0();
                sub_26B2139E0();
                __break(1u);
LABEL_128:
                sub_26B14FF4C(v14, v15);
                sub_26B14FF4C(v14, v15);
                __break(1u);
LABEL_129:
                JUMPOUT(0);
              }

              goto LABEL_73;
            default:
              LODWORD(__dst) = a4;
              BYTE4(__dst) = v68;
              *(&__dst + 5) = *(&a4 + 5);
              BYTE7(__dst) = HIBYTE(a4);
              DWORD2(__dst) = a5;
              WORD6(__dst) = WORD2(a5);
              if (!v24)
              {
                goto LABEL_84;
              }

              v74 = v6;
              if (v24 == 1)
              {
                if (v35 < v14)
                {
                  goto LABEL_116;
                }

                sub_26B14F044(v14, v15);
                v36 = sub_26B211D10();
                if (v36)
                {
                  v37 = sub_26B211D40();
                  if (__OFSUB__(v14, v37))
                  {
                    goto LABEL_122;
                  }

                  v36 += v14 - v37;
                }

                v38 = sub_26B211D30();
                if (!v36)
                {
                  goto LABEL_126;
                }

LABEL_73:
                if (v38 >= v35 - v14)
                {
                  v47 = v35 - v14;
                }

                else
                {
                  v47 = v38;
                }
              }

              else
              {
                v58 = *(v14 + 16);
                v59 = *(v14 + 24);
                sub_26B14F044(v14, v15);
                v36 = sub_26B211D10();
                if (v36)
                {
                  v60 = sub_26B211D40();
                  if (__OFSUB__(v58, v60))
                  {
                    goto LABEL_120;
                  }

                  v36 += v58 - v60;
                }

                v31 = __OFSUB__(v59, v58);
                v56 = v59 - v58;
                if (v31)
                {
                  goto LABEL_118;
                }

                v57 = sub_26B211D30();
                if (!v36)
                {
                  goto LABEL_125;
                }

LABEL_96:
                if (v57 >= v56)
                {
                  v47 = v56;
                }

                else
                {
                  v47 = v57;
                }
              }

              v52 = memcmp(&__dst, v36, v47);
              sub_26B14FF4C(v14, v15);
              sub_26B14FF4C(v14, v15);
              v6 = v74;
LABEL_100:
              v7 = a2;
              if (v52)
              {
                return v13;
              }

              break;
          }

LABEL_101:
          v12 += 2;
          ++v8;
          continue;
        }

LABEL_103:
        sub_26B14FF4C(v14, v15);
        return 0;
      case 2uLL:
        v34 = *(v14 + 16);
        v33 = *(v14 + 24);
        v31 = __OFSUB__(v33, v34);
        v32 = v33 - v34;
        if (!v31)
        {
          goto LABEL_48;
        }

        goto LABEL_108;
      case 3uLL:
        if (v28)
        {
          goto LABEL_103;
        }

        goto LABEL_59;
      default:
        v32 = BYTE6(v15);
        goto LABEL_48;
    }
  }
}

uint64_t sub_26B1E759C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = 0;
  v24 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v24 == v8)
    {
      return v24 == v8;
    }

    v10 = *(i - 1) == 0x746E656D656C65 && *i == 0xE700000000000000;
    if (!v10 && (sub_26B213E30() & 1) == 0)
    {
      break;
    }

    v11 = *(a2 + 8 * v8);
    if (!v11)
    {
      sub_26B2136C0();

      v22 = 0xD00000000000002ALL;
      v23 = 0x800000026B2209F0;
      v17 = sub_26B213B90();
      MEMORY[0x26D670040](v17);

      MEMORY[0x26D670040](544432416, 0xE400000000000000);
      MEMORY[0x26D670040](0x676E69727453, 0xE600000000000000);
      goto LABEL_23;
    }

    v12 = sqlite3_value_text(*(a2 + 8 * v8));
    sqlite3_value_bytes(v11);
    if (!v12)
    {
      v18 = 0x800000026B220100;
      sub_26B1B34BC();
      swift_allocError();
      v20 = 0xD00000000000002DLL;
      goto LABEL_24;
    }

    v13 = sub_26B212A40();
    if (!v14)
    {
      v22 = 0;
      v23 = 0xE000000000000000;
      sub_26B2136C0();
      MEMORY[0x26D670040](0xD00000000000001ALL, 0x800000026B220130);
      sub_26B2138F0();
LABEL_23:
      v20 = v22;
      v18 = v23;
      sub_26B1B34BC();
      swift_allocError();
LABEL_24:
      *v19 = v20;
      v19[1] = v18;
      swift_willThrow();
      return v24 == v8;
    }

    if (v13 == a4 && v14 == a5)
    {
    }

    else
    {
      v16 = sub_26B213E30();

      if ((v16 & 1) == 0)
      {
        return v24 == v8;
      }
    }

    ++v8;
  }

  sub_26B2128F0();
  sub_26B2136C0();
  MEMORY[0x26D670040](0xD000000000000012, 0x800000026B220E30);
  sub_26B2138F0();
  result = sub_26B2139E0();
  __break(1u);
  return result;
}

uint64_t sub_26B1E78F0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = 0;
  v7 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    v9 = v6;
    if (v7 == v6)
    {
      return v7 == v9;
    }

    v10 = *(i - 1) == 0x746E656D656C65 && *i == 0xE700000000000000;
    if (!v10 && (sub_26B213E30() & 1) == 0)
    {
      break;
    }

    v11 = *(a2 + 8 * v9);
    if (!v11)
    {
      sub_26B2136C0();

      v13 = sub_26B213B90();
      MEMORY[0x26D670040](v13);

      MEMORY[0x26D670040](544432416, 0xE400000000000000);
      MEMORY[0x26D670040](1819242306, 0xE400000000000000);
      sub_26B1B34BC();
      swift_allocError();
      *v14 = 0xD00000000000002ALL;
      v14[1] = 0x800000026B2209F0;
      swift_willThrow();
      return v7 == v9;
    }

    v12 = (sqlite3_value_int(v11) == 0) ^ a4;
    v6 = v9 + 1;
    if ((v12 & 1) == 0)
    {
      return v7 == v9;
    }
  }

  sub_26B2128F0();
  sub_26B2136C0();
  MEMORY[0x26D670040](0xD000000000000012, 0x800000026B220E30);
  sub_26B2138F0();
  result = sub_26B2139E0();
  __break(1u);
  return result;
}

uint64_t sub_26B1E7B34(uint64_t a1, uint64_t a2, double a3)
{
  v5 = 0;
  v6 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    v8 = v5;
    if (v6 == v5)
    {
      return v6 == v8;
    }

    v9 = *(i - 1) == 0x746E656D656C65 && *i == 0xE700000000000000;
    if (!v9 && (sub_26B213E30() & 1) == 0)
    {
      break;
    }

    v10 = *(a2 + 8 * v8);
    if (!v10)
    {
      sub_26B2136C0();

      v12 = sub_26B213B90();
      MEMORY[0x26D670040](v12);

      MEMORY[0x26D670040](544432416, 0xE400000000000000);
      MEMORY[0x26D670040](0x656C62756F44, 0xE600000000000000);
      sub_26B1B34BC();
      swift_allocError();
      *v13 = 0xD00000000000002ALL;
      v13[1] = 0x800000026B2209F0;
      swift_willThrow();
      return v6 == v8;
    }

    v11 = sqlite3_value_double(v10);
    v5 = v8 + 1;
    if (v11 != a3)
    {
      return v6 == v8;
    }
  }

  sub_26B2128F0();
  sub_26B2136C0();
  MEMORY[0x26D670040](0xD000000000000012, 0x800000026B220E30);
  sub_26B2138F0();
  result = sub_26B2139E0();
  __break(1u);
  return result;
}

uint64_t sub_26B1E7D7C(uint64_t a1, uint64_t a2, float a3)
{
  v5 = 0;
  v6 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    v8 = v5;
    if (v6 == v5)
    {
      return v6 == v8;
    }

    v9 = *(i - 1) == 0x746E656D656C65 && *i == 0xE700000000000000;
    if (!v9 && (sub_26B213E30() & 1) == 0)
    {
      break;
    }

    v10 = *(a2 + 8 * v8);
    if (!v10)
    {
      sub_26B2136C0();

      v12 = sub_26B213B90();
      MEMORY[0x26D670040](v12);

      MEMORY[0x26D670040](544432416, 0xE400000000000000);
      MEMORY[0x26D670040](0x74616F6C46, 0xE500000000000000);
      sub_26B1B34BC();
      swift_allocError();
      *v13 = 0xD00000000000002ALL;
      v13[1] = 0x800000026B2209F0;
      swift_willThrow();
      return v6 == v8;
    }

    v11 = sqlite3_value_double(v10);
    v5 = v8 + 1;
    if (v11 != a3)
    {
      return v6 == v8;
    }
  }

  sub_26B2128F0();
  sub_26B2136C0();
  MEMORY[0x26D670040](0xD000000000000012, 0x800000026B220E30);
  sub_26B2138F0();
  result = sub_26B2139E0();
  __break(1u);
  return result;
}

uint64_t sub_26B1E7FC8()
{
  OUTLINED_FUNCTION_8_24();
  while (1)
  {
    v7 = v6;
    if (v5 == v6)
    {
      return v5 == v7;
    }

    if (*(v1 - 1) != v4 || *v1 != v0)
    {
      OUTLINED_FUNCTION_22_12();
      if ((sub_26B213E30() & 1) == 0)
      {
        break;
      }
    }

    v9 = *(v3 + 8 * v7);
    if (!v9)
    {
      OUTLINED_FUNCTION_29_8();
      sub_26B2136C0();

      OUTLINED_FUNCTION_15_10();
      v11 = sub_26B213B90();
      MEMORY[0x26D670040](v11);

      OUTLINED_FUNCTION_31_7();
      MEMORY[0x26D670040]();
      sub_26B1B34BC();
      swift_allocError();
      *v12 = v15;
      v12[1] = v16;
      swift_willThrow();
      return v5 == v7;
    }

    v10 = sqlite3_value_int64(v9);
    v1 += 2;
    v6 = v7 + 1;
    if (v10 != v2)
    {
      return v5 == v7;
    }
  }

  OUTLINED_FUNCTION_29_8();
  sub_26B2128F0();
  sub_26B2136C0();
  OUTLINED_FUNCTION_11_15();
  v14 = OUTLINED_FUNCTION_17_13();
  MEMORY[0x26D670040](v14);
  sub_26B2138F0();
  OUTLINED_FUNCTION_20_9();
  OUTLINED_FUNCTION_0_37();
  result = sub_26B2139E0();
  __break(1u);
  return result;
}

uint64_t sub_26B1E8188()
{
  OUTLINED_FUNCTION_8_24();
  while (1)
  {
    v7 = v6;
    if (v5 == v6)
    {
      return v5 == v7;
    }

    if (*(v1 - 1) != v4 || *v1 != v0)
    {
      OUTLINED_FUNCTION_22_12();
      if ((sub_26B213E30() & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    v9 = *(v3 + 8 * v7);
    if (!v9)
    {
      OUTLINED_FUNCTION_29_8();
      sub_26B2136C0();

      OUTLINED_FUNCTION_15_10();
      v11 = sub_26B213B90();
      MEMORY[0x26D670040](v11);

      OUTLINED_FUNCTION_31_7();
      MEMORY[0x26D670040]();
      sub_26B1B34BC();
      swift_allocError();
      *v12 = v15;
      v12[1] = v16;
      swift_willThrow();
      return v5 == v7;
    }

    v10 = sqlite3_value_int64(v9);
    if (v10 < 0)
    {
      break;
    }

    v1 += 2;
    v6 = v7 + 1;
    if (v10 != v2)
    {
      return v5 == v7;
    }
  }

  __break(1u);
LABEL_15:
  OUTLINED_FUNCTION_29_8();
  sub_26B2128F0();
  sub_26B2136C0();
  OUTLINED_FUNCTION_11_15();
  v14 = OUTLINED_FUNCTION_17_13();
  MEMORY[0x26D670040](v14);
  sub_26B2138F0();
  OUTLINED_FUNCTION_20_9();
  OUTLINED_FUNCTION_0_37();
  result = sub_26B2139E0();
  __break(1u);
  return result;
}

void _SQLBindableElement<>.filter(columns:arguments:)()
{
  OUTLINED_FUNCTION_11_6();
  v25 = v0;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_9_0();
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v26 = *v11;
  v30 = *(v7 + 16);
  v13 = (v12 + 8);
  v14 = (v7 + 40);
  while (1)
  {
    v15 = v10;
    if (v30 == v10)
    {
LABEL_10:
      OUTLINED_FUNCTION_10_2();
      return;
    }

    v16 = v3;
    v18 = *(v14 - 1);
    v17 = *v14;
    OUTLINED_FUNCTION_27_9();
    if (v18 != v19 || v17 != 0xE700000000000000)
    {
      OUTLINED_FUNCTION_13_19();
      OUTLINED_FUNCTION_22_12();
      if ((sub_26B213E30() & 1) == 0)
      {
        break;
      }
    }

    v3 = v16;
    v21 = *(*(v16 + 24) + 8);
    v29 = v26;
    SQLTableFunctionCursorArguments.subscript.getter(v15, v5, v5, v21);
    if (!v1)
    {
      v22 = sub_26B212A20();
      (*v13)(v9, v5);
      v14 += 2;
      v10 = v15 + 1;
      if (v22)
      {
        continue;
      }
    }

    goto LABEL_10;
  }

  *&v29 = 0;
  *(&v29 + 1) = 0xE000000000000000;
  sub_26B2128F0();
  sub_26B2136C0();
  OUTLINED_FUNCTION_11_15();
  v23 = OUTLINED_FUNCTION_17_13();
  MEMORY[0x26D670040](v23);
  v27 = v18;
  v28 = v17;
  sub_26B2138F0();
  OUTLINED_FUNCTION_20_9();
  OUTLINED_FUNCTION_0_37();
  sub_26B2139E0();
  __break(1u);
}

uint64_t sub_26B1E8570@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = a1 == 0x746E656D656C65 && a2 == 0xE700000000000000;
  if (v6 || (sub_26B213E30() & 1) != 0)
  {
    a4[3] = &type metadata for SQLDynamicValue;
    a4[4] = &protocol witness table for SQLDynamicValue;
    *a4 = a3;
  }

  else
  {
    sub_26B2136C0();
    MEMORY[0x26D670040](0xD000000000000012, 0x800000026B220E30);
    sub_26B2138F0();
    result = sub_26B2139E0();
    __break(1u);
  }

  return result;
}

uint64_t sub_26B1E86A4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = result == 0x746E656D656C65 && a2 == 0xE700000000000000;
  if (v4 || (result = sub_26B213E30(), (result & 1) != 0))
  {
    *(a3 + 24) = &type metadata for SQLNull;
    *(a3 + 32) = &protocol witness table for SQLNull;
  }

  else
  {
    sub_26B2136C0();
    MEMORY[0x26D670040](0xD000000000000012, 0x800000026B220E30);
    sub_26B2138F0();
    result = sub_26B2139E0();
    __break(1u);
  }

  return result;
}