void sub_2414D2E58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2414D35B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2414D497C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2414D499C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2414D49FC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v43 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545A78, &qword_2414E1D20);
  MEMORY[0x28223BE20](v3);
  v5 = &v39 - v4;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2414E0740();

  v42 = v44[0];
  v41 = sub_2414E0BA0();
  v40 = v6;
  v7 = &v5[*(v3 + 36)];
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2414E0740();

  v8 = v44[0];
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545A80, &qword_2414E1D70) + 36);
  v10 = *MEMORY[0x277CE13B8];
  v11 = sub_2414E0BF0();
  (*(*(v11 - 8) + 104))(&v7[v9], v10, v11);
  *v7 = v8;
  *(v7 + 4) = 256;
  *(v7 + 2) = 0x3FE0000000000000;
  v12 = *(v2 + 80);
  sub_2414E0C20();
  v14 = v13;
  v16 = v15;
  v17 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545A88, &qword_2414E1D78) + 36)];
  *v17 = v12;
  *(v17 + 1) = v12;
  *(v17 + 2) = v14;
  *(v17 + 3) = v16;
  v18 = sub_2414E0BA0();
  v20 = v19;
  v21 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545A90, &qword_2414E1D80) + 36)];
  sub_2414D4E08(v2, v21);
  v22 = (v21 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545A98, &qword_2414E1D88) + 36));
  *v22 = v18;
  v22[1] = v20;
  v23 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545AA0, &qword_2414E1D90) + 36)];
  v24 = v40;
  *v23 = v41;
  v23[1] = v24;
  *v5 = v42;
  *(v5 + 4) = 256;
  *(v5 + 2) = 0x3FE0000000000000;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2414E0740();

  v45[0] = v44[0];
  v25 = swift_allocObject();
  v26 = *(v2 + 80);
  *(v25 + 80) = *(v2 + 64);
  *(v25 + 96) = v26;
  *(v25 + 112) = *(v2 + 96);
  v27 = *(v2 + 16);
  *(v25 + 16) = *v2;
  *(v25 + 32) = v27;
  v28 = *(v2 + 48);
  *(v25 + 48) = *(v2 + 32);
  *(v25 + 64) = v28;
  sub_2414D678C(v2, v44);
  v29 = sub_2414D67C4();
  sub_2414D697C(v29, v30, v31);
  v32 = v43;
  sub_2414E0A50();

  sub_2414D6B9C(v5, &qword_27E545A78, &qword_2414E1D20);
  v33 = swift_allocObject();
  v34 = *(v2 + 80);
  *(v33 + 80) = *(v2 + 64);
  *(v33 + 96) = v34;
  *(v33 + 112) = *(v2 + 96);
  v35 = *(v2 + 16);
  *(v33 + 16) = *v2;
  *(v33 + 32) = v35;
  v36 = *(v2 + 48);
  *(v33 + 48) = *(v2 + 32);
  *(v33 + 64) = v36;
  v37 = (v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545AE0, &qword_2414E1DF0) + 36));
  *v37 = sub_2414D69D0;
  v37[1] = v33;
  v37[2] = 0;
  v37[3] = 0;
  return sub_2414D678C(v2, v44);
}

uint64_t sub_2414D4E08@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2414E0C80();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v72 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2414E0C60();
  v70 = *(v7 - 8);
  v71 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v69 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v68 = &v56 - v11;
  MEMORY[0x28223BE20](v10);
  v65 = &v56 - v12;
  v13 = sub_2414E0B50();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545B30, &qword_2414E1E28);
  MEMORY[0x28223BE20](v60);
  v18 = &v56 - v17;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545B38, &qword_2414E1E30);
  MEMORY[0x28223BE20](v61);
  v66 = &v56 - v19;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545B40, &qword_2414E1E38);
  MEMORY[0x28223BE20](v62);
  v67 = &v56 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545B48, &qword_2414E1E40);
  v73 = *(v21 - 8);
  v74 = v21;
  v22 = MEMORY[0x28223BE20](v21);
  v64 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v63 = &v56 - v24;
  v77 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545AE8, &qword_2414E1DF8);
  sub_2414E0B80();
  if ((v76 & 1) != 0 || (v77 = a1[3], sub_2414E0B80(), v76 == 1))
  {
    v77 = a1[3];
    sub_2414E0B80();
    v59 = a2;
    v58 = v4;
    v57 = v5;
    v56 = a1;
    if (v76 != 1)
    {
      v77 = *a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545B20, &qword_2414E1E18);
      sub_2414E0B80();
      *&v77 = sub_2414E0E20();
      *(&v77 + 1) = v25;
      MEMORY[0x245CE8100](0x2E656C637269632ELL, 0xEC0000006C6C6966);
    }

    sub_2414E0B40();
    (*(v14 + 104))(v16, *MEMORY[0x277CE0FE0], v13);
    v26 = sub_2414E0B60();

    (*(v14 + 8))(v16, v13);
    sub_2414E0BA0();
    sub_2414E07A0();
    v27 = v77;
    v28 = BYTE8(v77);
    v29 = v78;
    v30 = v79;
    v32 = v80;
    v31 = v81;
    v33 = &v18[*(v60 + 36)];
    v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545B50, &qword_2414E1E48) + 28);
    sub_2414E0940();
    v35 = sub_2414E0950();
    (*(*(v35 - 8) + 56))(v33 + v34, 0, 1, v35);
    *v33 = swift_getKeyPath();
    *v18 = v26;
    *(v18 + 1) = v27;
    v18[16] = v28;
    *(v18 + 3) = v29;
    v18[32] = v30;
    *(v18 + 5) = v32;
    *(v18 + 6) = v31;
    v36 = sub_2414E0AC0();
    v37 = sub_2414E0AE0();
    v38 = v66;
    sub_2414D6CA8(v18, v66, &qword_27E545B30, &qword_2414E1E28);
    v39 = (v38 + *(v61 + 36));
    *v39 = v36;
    v39[1] = v37;
    v40 = v65;
    sub_2414E0C50();
    v41 = v68;
    sub_2414E0C30();
    v42 = v71;
    v43 = *(v70 + 8);
    v43(v40, v71);
    v44 = v69;
    sub_2414E0C40();
    v43(v41, v42);
    v45 = v72;
    sub_2414E0C70();
    v46 = v67;
    v47 = &v67[*(v62 + 36)];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545B58, &qword_2414E1E80);
    sub_2414D6C60(&qword_27E545B60, MEMORY[0x277CE1598], MEMORY[0x277CE1590]);
    sub_2414E0840();
    (*(v57 + 8))(v45, v58);
    v43(v44, v42);
    *v47 = swift_getKeyPath();
    sub_2414D6CA8(v38, v46, &qword_27E545B38, &qword_2414E1E30);
    v76 = *v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545B20, &qword_2414E1E18);
    sub_2414E0B80();
    v48 = v75;
    v49 = v64;
    sub_2414D6CA8(v46, v64, &qword_27E545B40, &qword_2414E1E38);
    v50 = v74;
    *(v49 + *(v74 + 52)) = v48;
    v51 = v49;
    v52 = v63;
    sub_2414D6CA8(v51, v63, &qword_27E545B48, &qword_2414E1E40);
    v53 = v52;
    a2 = v59;
    sub_2414D6CA8(v53, v59, &qword_27E545B48, &qword_2414E1E40);
    v54 = 0;
  }

  else
  {
    v54 = 1;
    v50 = v74;
  }

  return (*(v73 + 56))(a2, v54, 1, v50);
}

uint64_t sub_2414D5674(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  switch(*a2)
  {
    case 0xE:

      goto LABEL_4;
    default:
      v4 = sub_2414E0E30();

      if (v4)
      {
LABEL_4:
        MEMORY[0x28223BE20](result);
        sub_2414E0BD0();
        sub_2414E07F0();
      }

      return result;
  }
}

uint64_t sub_2414D58F0()
{
  v1 = v0;
  v13 = *(v0 + 32);
  LOBYTE(aBlock[0]) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545AE8, &qword_2414E1DF8);
  sub_2414E0B90();
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v15 = v2;
  v16[0] = v3;
  *&v13 = v3;
  *(&v13 + 1) = v2;
  sub_2414D6D10(v16, aBlock, &qword_27E545A58, &qword_2414E1C38);
  sub_2414D6D10(&v15, aBlock, &qword_27E545AF0, &qword_2414E1E00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545AF8, &qword_2414E1E08);
  sub_2414E0B80();
  v4 = aBlock[0];
  [aBlock[0] invalidate];

  v5 = objc_opt_self();
  v6 = swift_allocObject();
  v7 = *(v1 + 80);
  *(v6 + 80) = *(v1 + 64);
  *(v6 + 96) = v7;
  *(v6 + 112) = *(v1 + 96);
  v8 = *(v1 + 16);
  *(v6 + 16) = *v1;
  *(v6 + 32) = v8;
  v9 = *(v1 + 48);
  *(v6 + 48) = *(v1 + 32);
  *(v6 + 64) = v9;
  aBlock[4] = sub_2414D69F4;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2414D6170;
  aBlock[3] = &block_descriptor;
  v10 = _Block_copy(aBlock);
  sub_2414D678C(v1, &v13);

  v11 = [v5 scheduledTimerWithTimeInterval:1 repeats:v10 block:1.0];
  _Block_release(v10);
  *&v13 = v3;
  *(&v13 + 1) = v2;
  aBlock[0] = v11;
  sub_2414E0B90();
  sub_2414D6B9C(v16, &qword_27E545A58, &qword_2414E1C38);
  return sub_2414D6B9C(&v15, &qword_27E545AF0, &qword_2414E1E00);
}

uint64_t sub_2414D5B24(uint64_t a1, uint64_t a2)
{
  v3 = sub_2414E0C90();
  v17 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2414E0CB0();
  v6 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2414D6A14();
  v9 = sub_2414E0DA0();
  v10 = swift_allocObject();
  v11 = *(a2 + 80);
  *(v10 + 80) = *(a2 + 64);
  *(v10 + 96) = v11;
  *(v10 + 112) = *(a2 + 96);
  v12 = *(a2 + 16);
  *(v10 + 16) = *a2;
  *(v10 + 32) = v12;
  v13 = *(a2 + 48);
  *(v10 + 48) = *(a2 + 32);
  *(v10 + 64) = v13;
  aBlock[4] = sub_2414D6A60;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2414DA718;
  aBlock[3] = &block_descriptor_38;
  v14 = _Block_copy(aBlock);
  sub_2414D678C(a2, v18);

  sub_2414E0CA0();
  v18[0] = MEMORY[0x277D84F90];
  sub_2414D6C60(&qword_27E545B08, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545B10, &qword_2414E1E10);
  sub_2414D6A68(&qword_27E545B18, &qword_27E545B10, &qword_2414E1E10, MEMORY[0x277D83970]);
  sub_2414E0DC0();
  MEMORY[0x245CE81B0](0, v8, v5, v14);
  _Block_release(v14);

  (*(v17 + 8))(v5, v3);
  return (*(v6 + 8))(v8, v16);
}

uint64_t sub_2414D5E2C(uint64_t a1)
{
  v2 = sub_2414E0990();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13[0] = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545B20, &qword_2414E1E18);
  sub_2414E0B80();
  v12 = a1;
  if (v14 < 2)
  {
    v7 = swift_allocObject();
    v8 = *(a1 + 80);
    *(v7 + 80) = *(a1 + 64);
    *(v7 + 96) = v8;
    *(v7 + 112) = *(a1 + 96);
    v9 = *(a1 + 16);
    *(v7 + 16) = *a1;
    *(v7 + 32) = v9;
    v10 = *(a1 + 48);
    *(v7 + 48) = *(a1 + 32);
    *(v7 + 64) = v10;
    sub_2414D678C(a1, v13);
    sub_2414E0BD0();
    sub_2414E0980();
    sub_2414E07E0();

    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    sub_2414E0BD0();
    sub_2414E07F0();
  }
}

void *sub_2414D602C(__int128 *a1)
{
  v4 = *a1;
  v2[1] = *a1;
  v5 = *(&v4 + 1);
  sub_2414D6D10(&v5, v2, &qword_27E545B28, &qword_2414E1E20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545B20, &qword_2414E1E18);
  result = sub_2414E0B80();
  if (__OFSUB__(v3, 1))
  {
    __break(1u);
  }

  else
  {
    v2[0] = v4;
    sub_2414E0B90();
    return sub_2414D6B9C(&v4, &qword_27E545B20, &qword_2414E1E18);
  }

  return result;
}

uint64_t sub_2414D60FC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545AF8, &qword_2414E1E08);
  sub_2414E0B80();
  [v3 invalidate];

  return (*(a1 + 88))();
}

void sub_2414D6170(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_2414D626C(uint64_t a1)
{
  v2 = sub_2414E0850();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_2414E0890();
}

uint64_t sub_2414D6358(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545B68, &qword_2414E1EB8);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2414D6D10(a1, &v5 - v3, &qword_27E545B68, &qword_2414E1EB8);
  return sub_2414E08D0();
}

double sub_2414D6400@<D0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545A58, &qword_2414E1C38);
  sub_2414E0B70();
  sub_2414E0B70();
  sub_2414E0B70();
  type metadata accessor for GazeStateManager(0);
  sub_2414D6C60(&qword_27E545A60, type metadata accessor for GazeStateManager, &unk_2414E21B0);

  v7 = sub_2414E0800();
  v9 = v8;
  sub_2414E0B70();
  result = *&v13;
  *a4 = v13;
  *(a4 + 16) = v13;
  *(a4 + 32) = v13;
  *(a4 + 40) = *(&v13 + 1);
  *(a4 + 48) = v13;
  *(a4 + 56) = *(&v13 + 1);
  *(a4 + 64) = v7;
  *(a4 + 72) = v9;
  *(a4 + 80) = a5;
  *(a4 + 88) = a2;
  *(a4 + 96) = a3;
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_2414D65E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2414D6630(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2414D66AC(uint64_t a1, int a2)
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

uint64_t sub_2414D66CC(uint64_t result, int a2, int a3)
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

void sub_2414D6708(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_2414D67C4()
{
  result = qword_27E545AA8;
  if (!qword_27E545AA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E545A78, &qword_2414E1D20);
    sub_2414D68C4();
    sub_2414D6A68(&qword_27E545AD0, &qword_27E545AA0, &qword_2414E1D90, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E545AA8);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_2414D68C4()
{
  result = qword_27E545AB0;
  if (!qword_27E545AB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E545AB8, &qword_2414E1DE0);
    sub_2414D6A68(&qword_27E545AC0, &qword_27E545AC8, &qword_2414E1DE8, MEMORY[0x277CDF3A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E545AB0);
  }

  return result;
}

unint64_t sub_2414D697C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E545AD8;
  if (!qword_27E545AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E545AD8);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2414D6A14()
{
  result = qword_27E545B00;
  if (!qword_27E545B00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E545B00);
  }

  return result;
}

uint64_t sub_2414D6A68(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t objectdestroyTm()
{

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_2414D6B9C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2414D6C60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2414D6CA8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_2414D6D10(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_2414D6D7C()
{
  result = qword_27E545B70;
  if (!qword_27E545B70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E545AE0, &qword_2414E1DF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E545A78, &qword_2414E1D20);
    v3 = sub_2414D67C4();
    sub_2414D697C(v3, v1, v2);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E545B70);
  }

  return result;
}

double sub_2414D6E80(uint64_t a1, char a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  result = a5 * a7;
  if ((a2 & 1) == 0)
  {
    v9 = *&a1;
    if (a7 == 0.0 && a8 == 0.0)
    {
      return result + v9;
    }

    if (a7 == 0.5 && a8 == 0.0)
    {
      return result + 0.0;
    }

    else if (a7 == 1.0 && a8 == 0.0)
    {
      return result - *&a1;
    }

    else if (a7 == 0.0 && a8 == 0.5)
    {
      return result + *&a1;
    }

    else
    {
      if (a7 == 0.5 && a8 == 0.5)
      {
        v9 = 0.0;
        return result + v9;
      }

      if (a7 == 1.0 && a8 == 0.5)
      {
        return result - *&a1;
      }

      else if (a7 == 0.0 && a8 == 1.0)
      {
        return result + *&a1;
      }

      else if (a7 == 0.5 && a8 == 1.0)
      {
        return result + 0.0;
      }

      else if (a7 == 1.0)
      {
        result = result - *&a1;
        if (a8 != 1.0)
        {
          return 0.0;
        }
      }

      else
      {
        return 0.0;
      }
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2414D7018(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2414D7060(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

void sub_2414D70B0()
{
  if (AXDeviceIsPhone())
  {
    v0 = [objc_opt_self() mainScreen];
    [v0 bounds];
    v2 = v1;
    v4 = v3;
    v6 = v5;
    v8 = v7;

    v9.origin.x = v2;
    v9.origin.y = v4;
    v9.size.width = v6;
    v9.size.height = v8;
    CGRectGetWidth(v9);
  }
}

void sub_2414D71B0(char a1, double *a2, double a3)
{
  if (!AXDeviceIsPhone() || (byte_27E545C00 & 1) != 0)
  {
    return;
  }

  v6 = *&qword_27E545BF8;
  v8 = *&qword_27E545BE0;
  v7 = *algn_27E545BE8;
  v9 = [objc_opt_self() currentDevice];
  v10 = [v9 orientation];

  if (v10 == 4)
  {
    if (a1 != 6)
    {
      return;
    }

    v12 = *a2 - (a3 * 0.5 + v6);
    goto LABEL_15;
  }

  if (v10 == 3)
  {
    if (a1 != 12)
    {
      return;
    }

    v12 = v7 + a3 * -0.5 + *a2;
LABEL_15:
    *a2 = v12;
    return;
  }

  if (v10 == 1 && a1 == 3)
  {
    a2[1] = v8 + a3 * -0.5 + a2[1];
  }
}

uint64_t sub_2414D72D0(char a1, uint64_t a2)
{
  switch(a1)
  {
    case 1:
    case 7:
      result = sub_2414E0A80();
      break;
    case 2:
    case 8:
      result = sub_2414E0AF0();
      break;
    case 3:
    case 12:
      result = sub_2414E0B10();
      break;
    case 4:
      result = sub_2414E0B00();
      break;
    case 5:
    case 13:
      result = sub_2414E0A70();
      break;
    case 6:
      result = sub_2414E0B20();
      break;
    case 9:
      result = sub_2414E0AB0();
      break;
    case 10:
      result = sub_2414E0AA0();
      break;
    case 11:
      result = sub_2414E0AD0();
      break;
    default:
      result = sub_2414E0AE0();
      break;
  }

  if ((*(a2 + 32) & 1) == 0)
  {
    v5 = *(a2 + 16);
    v6 = *(a2 + 24);
    v7 = result;
    v8 = sub_2414D6E80(0x4049000000000000, 0, 0.0, 0.0, v5, v6, dbl_2414E1F20[a1], dbl_2414E1F98[a1]);
    v10 = v9;
    sub_2414D70B0();
    v13[0] = v8 + v11;
    v13[1] = v10 + v12;
    sub_2414D71B0(a1, v13, 50.0);
    return v7;
  }

  return result;
}

id CalibrationContentView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *CalibrationContentView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v53 = [objc_opt_self() effectWithStyle_];
  v9 = [objc_allocWithZone(MEMORY[0x277D75D68]) init];
  v10 = OBJC_IVAR____TtC16AssistiveTouchUI22CalibrationContentView_blurView;
  *&v4[OBJC_IVAR____TtC16AssistiveTouchUI22CalibrationContentView_blurView] = v9;
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v4[v10] setEffect_];
  v11 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v12 = OBJC_IVAR____TtC16AssistiveTouchUI22CalibrationContentView_overlayView;
  *&v4[OBJC_IVAR____TtC16AssistiveTouchUI22CalibrationContentView_overlayView] = v11;
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  v13 = *&v4[v12];
  v14 = objc_opt_self();
  v15 = v13;
  v16 = [v14 blackColor];
  [v15 setBackgroundColor_];

  v17 = [*&v4[v12] layer];
  LODWORD(v18) = 1060320051;
  [v17 setOpacity_];

  v19 = [*&v4[v10] contentView];
  [v19 addSubview_];

  v54.receiver = v4;
  v54.super_class = type metadata accessor for CalibrationContentView();
  v20 = objc_msgSendSuper2(&v54, sel_initWithFrame_, a1, a2, a3, a4);
  v21 = [v14 clearColor];
  [v20 setBackgroundColor_];

  v22 = v20;
  [v22 setTranslatesAutoresizingMaskIntoConstraints_];
  v23 = OBJC_IVAR____TtC16AssistiveTouchUI22CalibrationContentView_blurView;
  [v22 addSubview_];
  [v22 setIsAccessibilityElement_];
  [v22 setAccessibilityElementsHidden_];

  v52 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545CF0, &unk_2414E2020);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2414E2010;
  v25 = [*&v22[v23] topAnchor];
  v26 = [v22 &selRef_viewWillDisappear_];
  v27 = [v25 constraintEqualToAnchor_];

  *(v24 + 32) = v27;
  v28 = [*&v22[v23] leadingAnchor];
  v29 = [v22 leadingAnchor];
  v30 = [v28 constraintEqualToAnchor_];

  *(v24 + 40) = v30;
  v31 = [*&v22[v23] trailingAnchor];
  v32 = [v22 trailingAnchor];
  v33 = [v31 constraintEqualToAnchor_];

  *(v24 + 48) = v33;
  v34 = [*&v22[v23] bottomAnchor];
  v35 = [v22 bottomAnchor];
  v36 = [v34 constraintEqualToAnchor_];

  *(v24 + 56) = v36;
  v37 = OBJC_IVAR____TtC16AssistiveTouchUI22CalibrationContentView_overlayView;
  v38 = [*&v22[OBJC_IVAR____TtC16AssistiveTouchUI22CalibrationContentView_overlayView] topAnchor];
  v39 = [v22 topAnchor];
  v40 = [v38 constraintEqualToAnchor_];

  *(v24 + 64) = v40;
  v41 = [*&v22[v37] leadingAnchor];
  v42 = [v22 leadingAnchor];
  v43 = [v41 constraintEqualToAnchor_];

  *(v24 + 72) = v43;
  v44 = [*&v22[v37] trailingAnchor];
  v45 = [v22 trailingAnchor];
  v46 = [v44 constraintEqualToAnchor_];

  *(v24 + 80) = v46;
  v47 = [*&v22[v37] bottomAnchor];
  v48 = [v22 bottomAnchor];

  v49 = [v47 constraintEqualToAnchor_];
  *(v24 + 88) = v49;
  sub_2414D7AA4();
  v50 = sub_2414E0D10();

  [v52 activateConstraints_];

  return v22;
}

unint64_t sub_2414D7AA4()
{
  result = qword_27E545C18;
  if (!qword_27E545C18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E545C18);
  }

  return result;
}

id CalibrationContentView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id CalibrationContentView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CalibrationContentView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t getEnumTagSinglePayload for GazeFocusState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GazeFocusState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2414D7E00(uint64_t a1)
{
  v1 = a1;
  sub_2414E0D90();
  v2 = MEMORY[0x245CE8180]();
  v3 = *MEMORY[0x277CE7920];
  swift_beginAccess();
  v4 = *&v2[v3];

  v5 = sub_2414E0D70();
  if (v5)
  {
    v6 = &unk_28532C810;
  }

  else
  {
    v6 = &unk_28532C840;
  }

  result = sub_2414D7F10(v1, v6);
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = result;
  }

  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v5)
  {
    v12 = &unk_28532C810;
  }

  else
  {
    v12 = &unk_28532C840;
  }

  v13 = v12[2];
  if (v11 < v13)
  {
    if ((v11 & 0x8000000000000000) == 0)
    {
      if (v5)
      {
        v14 = &unk_28532C810;
      }

      else
      {
        v14 = &unk_28532C840;
      }

      v15 = &v14[v11];
      goto LABEL_21;
    }

    goto LABEL_23;
  }

  if (v13)
  {
    if (v5)
    {
      v15 = &unk_28532C810;
    }

    else
    {
      v15 = &unk_28532C840;
    }

LABEL_21:
    v16 = v15[32];

    return v16;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_2414D7F10(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  v5 = a2 + 32;
  while (2)
  {
    v6 = 0xE700000000000000;
    v7 = 0x6C616974696E69;
    switch(*(v5 + v4))
    {
      case 1:
        v7 = 0x7466654C706F74;
        break;
      case 2:
        v7 = 0x4D7466654C706F74;
        v6 = 0xED0000656C646469;
        break;
      case 3:
        v6 = 0xE300000000000000;
        v7 = 7368564;
        break;
      case 4:
        v7 = 0x7468676952706F74;
        v6 = 0xEE00656C6464694DLL;
        break;
      case 5:
        v6 = 0xE800000000000000;
        v7 = 0x7468676952706F74;
        break;
      case 6:
        v6 = 0xE500000000000000;
        v7 = 0x7468676972;
        break;
      case 7:
        v7 = 0x69526D6F74746F62;
        v6 = 0xEB00000000746867;
        break;
      case 8:
        v7 = 0xD000000000000011;
        v6 = 0x80000002414E29F0;
        break;
      case 9:
        v6 = 0xE600000000000000;
        v7 = 0x6D6F74746F62;
        break;
      case 0xA:
        v7 = 0xD000000000000010;
        v6 = 0x80000002414E2A10;
        break;
      case 0xB:
        v7 = 0x654C6D6F74746F62;
        v6 = 0xEA00000000007466;
        break;
      case 0xC:
        v6 = 0xE400000000000000;
        v7 = 1952867692;
        break;
      case 0xD:
        v6 = 0xE600000000000000;
        v7 = 0x7265746E6563;
        break;
      case 0xE:
        v6 = 0xE800000000000000;
        v7 = 0x6574656C706D6F63;
        break;
      default:
        break;
    }

    v8 = 0xE700000000000000;
    v9 = 0x6C616974696E69;
    switch(a1)
    {
      case 1:
        if (v7 == 0x7466654C706F74)
        {
          goto LABEL_45;
        }

        goto LABEL_46;
      case 2:
        v8 = 0xED0000656C646469;
        if (v7 != 0x4D7466654C706F74)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      case 3:
        v8 = 0xE300000000000000;
        if (v7 != 7368564)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      case 4:
        v8 = 0xEE00656C6464694DLL;
        if (v7 != 0x7468676952706F74)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      case 5:
        v8 = 0xE800000000000000;
        if (v7 != 0x7468676952706F74)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      case 6:
        v8 = 0xE500000000000000;
        if (v7 != 0x7468676972)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      case 7:
        v8 = 0xEB00000000746867;
        if (v7 != 0x69526D6F74746F62)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      case 8:
        v8 = 0x80000002414E29F0;
        if (v7 != 0xD000000000000011)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      case 9:
        v8 = 0xE600000000000000;
        if (v7 != 0x6D6F74746F62)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      case 10:
        v9 = 0xD000000000000010;
        v8 = 0x80000002414E2A10;
        goto LABEL_44;
      case 11:
        v8 = 0xEA00000000007466;
        if (v7 != 0x654C6D6F74746F62)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      case 12:
        v8 = 0xE400000000000000;
        if (v7 != 1952867692)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      case 13:
        v8 = 0xE600000000000000;
        if (v7 != 0x7265746E6563)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      case 14:
        v8 = 0xE800000000000000;
        if (v7 != 0x6574656C706D6F63)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      default:
LABEL_44:
        if (v7 != v9)
        {
          goto LABEL_46;
        }

LABEL_45:
        if (v6 == v8)
        {

          return v4;
        }

LABEL_46:
        v10 = sub_2414E0E30();

        if (v10)
        {
          return v4;
        }

        if (v2 != ++v4)
        {
          continue;
        }

        v4 = 0;
        break;
    }

    return v4;
  }
}

unint64_t sub_2414D83CC(char a1)
{
  result = 0x6C616974696E69;
  switch(a1)
  {
    case 1:
      result = 0x7466654C706F74;
      break;
    case 2:
      result = 0x4D7466654C706F74;
      break;
    case 3:
      result = 7368564;
      break;
    case 4:
    case 5:
      result = 0x7468676952706F74;
      break;
    case 6:
      result = 0x7468676972;
      break;
    case 7:
      result = 0x69526D6F74746F62;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0x6D6F74746F62;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0x654C6D6F74746F62;
      break;
    case 12:
      result = 1952867692;
      break;
    case 13:
      result = 0x7265746E6563;
      break;
    case 14:
      result = 0x6574656C706D6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2414D8594()
{
  v1 = *v0;
  sub_2414E0E70();
  sub_2414D83CC(v1);
  sub_2414E0CF0();

  return sub_2414E0E80();
}

uint64_t sub_2414D85F8(uint64_t a1)
{
  sub_2414D83CC(*v1);
  sub_2414E0CF0();
}

uint64_t sub_2414D864C(uint64_t a1)
{
  v2 = *v1;
  sub_2414E0E70();
  sub_2414D83CC(v2);
  sub_2414E0CF0();

  return sub_2414E0E80();
}

unint64_t sub_2414D86AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2414D8838(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_2414D86DC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2414D83CC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2414D8708(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_2414D83CC(*a1);
  v5 = v4;
  if (v3 == sub_2414D83CC(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2414E0E30();
  }

  return v8 & 1;
}

uint64_t sub_2414D87A0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2414D7E00(*v1);
  *a1 = result;
  return result;
}

unint64_t sub_2414D87D0()
{
  result = qword_27E545C20;
  if (!qword_27E545C20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E545C28, qword_2414E20A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E545C20);
  }

  return result;
}

unint64_t sub_2414D8838(uint64_t a1, uint64_t a2)
{
  v2 = sub_2414E0E10();

  if (v2 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2414D8884()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2414E0740();

  return v1;
}

uint64_t sub_2414D88F8(unsigned __int8 a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v5[0]) = a1;

  sub_2414E0750();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2414E0740();

  result = a1;
  v6 = *(v1 + OBJC_IVAR____TtC16AssistiveTouchUI16GazeStateManager_frame + 32);
  v4 = *(v1 + OBJC_IVAR____TtC16AssistiveTouchUI16GazeStateManager_frame + 16);
  v5[0] = *(v1 + OBJC_IVAR____TtC16AssistiveTouchUI16GazeStateManager_frame);
  v5[1] = v4;
  if ((v6 & 1) == 0)
  {
    sub_2414D72D0(a1, v5);
    swift_getKeyPath();
    swift_getKeyPath();

    return sub_2414E0750();
  }

  return result;
}

double sub_2414D8A38()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2414E0740();

  return v1;
}

uint64_t sub_2414D8AB0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545C68, &qword_2414E21E8);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - v3;
  v5 = OBJC_IVAR____TtC16AssistiveTouchUI16GazeStateManager__focusModel;
  v6 = sub_2414E0A90();
  *&v21 = 0;
  v20 = v6;
  sub_2414E0720();
  (*(v2 + 32))(v0 + v5, v4, v1);
  v7 = (v0 + OBJC_IVAR____TtC16AssistiveTouchUI16GazeStateManager_frame);
  *v7 = 0u;
  v7[1] = 0u;
  *(v7 + 32) = 1;
  swift_beginAccess();
  LOBYTE(v17) = 0;
  sub_2414E0720();
  swift_endAccess();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2414E0740();

  v8 = v20;
  v22 = *(v7 + 32);
  v9 = v7[1];
  v20 = *v7;
  v21 = v9;
  if ((v22 & 1) == 0)
  {
    v10 = sub_2414D72D0(v8, &v20);
    v12 = v11;
    v14 = v13;
    swift_getKeyPath();
    swift_getKeyPath();
    v17 = v10;
    v18 = v12;
    v19 = v14;

    sub_2414E0750();
  }

  return v0;
}

uint64_t sub_2414D8CC0()
{
  v1 = OBJC_IVAR____TtC16AssistiveTouchUI16GazeStateManager__gazeState;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E545C70, &unk_2414E2280);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC16AssistiveTouchUI16GazeStateManager__focusModel;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545C68, &qword_2414E21E8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t type metadata accessor for GazeStateManager(uint64_t a1)
{
  result = qword_27E545C48;
  if (!qword_27E545C48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2414D8E08(uint64_t a1)
{
  sub_2414D8EF8(319, &qword_27E545C58, &type metadata for GazeFocusState);
  if (v1 <= 0x3F)
  {
    sub_2414D8EF8(319, &qword_27E545C60, &type metadata for GazeFocusModel);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_2414D8EF8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_2414E0760();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2414D8F50@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for GazeStateManager(0);
  result = sub_2414E0710();
  *a2 = result;
  return result;
}

id sub_2414D8FA0()
{
  v1 = OBJC_IVAR____TtC16AssistiveTouchUI25CalibrationViewController____lazy_storage___calibrationView;
  v2 = *(v0 + OBJC_IVAR____TtC16AssistiveTouchUI25CalibrationViewController____lazy_storage___calibrationView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC16AssistiveTouchUI25CalibrationViewController____lazy_storage___calibrationView);
  }

  else
  {
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_2414E0320(sub_2414DA568, v4, &v11);
    v5 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545CE8, &qword_2414E22E8));
    v6 = v0;
    v7 = sub_2414E0810();
    v8 = *(v0 + v1);
    *(v6 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

void sub_2414D9088(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    swift_beginAccess();
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v5 = *(v3 + OBJC_IVAR____TtC16AssistiveTouchUI25CalibrationViewController_dismissCompletion);
      v4 = *(v3 + OBJC_IVAR____TtC16AssistiveTouchUI25CalibrationViewController_dismissCompletion + 8);
      v6 = v3;

      v8[4] = v5;
      v8[5] = v4;
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 1107296256;
      v8[2] = sub_2414DA718;
      v8[3] = &block_descriptor_0;
      v7 = _Block_copy(v8);
    }

    else
    {
      v7 = 0;
    }

    [v2 dismissViewControllerAnimated:1 completion:v7];
    _Block_release(v7);
  }
}

id CalibrationViewController.__allocating_init(delegate:dismissCompletion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(v3);
  swift_unknownObjectWeakInit();
  *&v6[OBJC_IVAR____TtC16AssistiveTouchUI25CalibrationViewController_cancellable] = 0;
  *&v6[OBJC_IVAR____TtC16AssistiveTouchUI25CalibrationViewController_enrollmentCancellable] = 0;
  v7 = OBJC_IVAR____TtC16AssistiveTouchUI25CalibrationViewController_calibrationObservable;
  type metadata accessor for CalibrationViewDelegate(0);
  swift_allocObject();
  *&v6[v7] = sub_2414DB9D8();
  *&v6[OBJC_IVAR____TtC16AssistiveTouchUI25CalibrationViewController____lazy_storage___calibrationView] = 0;
  swift_unknownObjectWeakAssign();
  v8 = &v6[OBJC_IVAR____TtC16AssistiveTouchUI25CalibrationViewController_dismissCompletion];
  *v8 = a2;
  *(v8 + 1) = a3;
  v11.receiver = v6;
  v11.super_class = v3;
  v9 = objc_msgSendSuper2(&v11, sel_initWithNibName_bundle_, 0, 0);
  swift_unknownObjectRelease();
  return v9;
}

id CalibrationViewController.init(delegate:dismissCompletion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC16AssistiveTouchUI25CalibrationViewController_cancellable] = 0;
  *&v3[OBJC_IVAR____TtC16AssistiveTouchUI25CalibrationViewController_enrollmentCancellable] = 0;
  v6 = OBJC_IVAR____TtC16AssistiveTouchUI25CalibrationViewController_calibrationObservable;
  type metadata accessor for CalibrationViewDelegate(0);
  swift_allocObject();
  *&v3[v6] = sub_2414DB9D8();
  *&v3[OBJC_IVAR____TtC16AssistiveTouchUI25CalibrationViewController____lazy_storage___calibrationView] = 0;
  swift_unknownObjectWeakAssign();
  v7 = &v3[OBJC_IVAR____TtC16AssistiveTouchUI25CalibrationViewController_dismissCompletion];
  *v7 = a2;
  *(v7 + 1) = a3;
  v10.receiver = v3;
  v10.super_class = type metadata accessor for CalibrationViewController();
  v8 = objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, 0, 0);
  swift_unknownObjectRelease();
  return v8;
}

id CalibrationViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t sub_2414D941C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545CB0, &qword_2414E2290);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545CB8, &qword_2414E2298);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - v8;
  v10 = type metadata accessor for CalibrationViewController();
  v15.receiver = v0;
  v15.super_class = v10;
  objc_msgSendSuper2(&v15, sel_viewDidLoad);
  sub_2414D9B7C();
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545CC0, &qword_2414E22A0);
  sub_2414E0730();
  swift_endAccess();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_2414DA4E8(&qword_27E545CC8, &qword_27E545CB8, &qword_2414E2298);
  v11 = sub_2414E0770();

  (*(v7 + 8))(v9, v6);
  *&v1[OBJC_IVAR____TtC16AssistiveTouchUI25CalibrationViewController_cancellable] = v11;

  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545CD0, &qword_2414E22A8);
  sub_2414E0730();
  swift_endAccess();

  sub_2414DA4E8(&unk_27E545CD8, &qword_27E545CB0, &qword_2414E2290);
  v12 = sub_2414E0770();
  (*(v3 + 8))(v5, v2);
  *&v1[OBJC_IVAR____TtC16AssistiveTouchUI25CalibrationViewController_enrollmentCancellable] = v12;
}

void sub_2414D974C(double *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      if (v2 == 0.0 && v3 == 0.0)
      {
        swift_unknownObjectRelease();
      }

      else
      {
        v8 = [objc_opt_self() sharedManager];
        v9 = [v7 gazePointManager];
        if (!v9)
        {
          __break(1u);
          return;
        }

        [v9 lastSeenLookAtPoint];
        v11 = v10;
        v13 = v12;
        swift_unknownObjectRelease();
        swift_getKeyPath();
        swift_getKeyPath();

        sub_2414E0740();

        sub_2414D83CC(v15);
        v14 = sub_2414E0CC0();

        [v8 captureCurrentEnrollmentPoint:v14 gazePoint:v2 positionName:{v3, v11, v13}];
        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_2414D9904(_BYTE *a1)
{
  if (*a1 == 1)
  {
    v2 = [objc_opt_self() sharedInstance];
    [v2 setAssistiveTouchBubbleModeEnabled_];

    v3 = [objc_opt_self() sharedManager];
    [v3 setEnrollmentComplete_];
  }
}

void sub_2414D9A20(void *a1, uint64_t a2, uint64_t a3, const char **a4, char a5)
{
  v11.receiver = a1;
  v11.super_class = type metadata accessor for CalibrationViewController();
  v8 = *a4;
  v9 = v11.receiver;
  objc_msgSendSuper2(&v11, v8, a3);
  v10 = [objc_opt_self() sharedApplication];
  [v10 setIdleTimerDisabled_];
}

void sub_2414D9B7C()
{
  v1 = [objc_allocWithZone(type metadata accessor for CalibrationContentView()) initWithFrame_];
  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_14;
  }

  v3 = v2;
  v4 = v1;
  [v3 addSubview_];

  v5 = sub_2414D8FA0();
  [v4 addSubview_];

  v6 = OBJC_IVAR____TtC16AssistiveTouchUI25CalibrationViewController____lazy_storage___calibrationView;
  [*&v0[OBJC_IVAR____TtC16AssistiveTouchUI25CalibrationViewController____lazy_storage___calibrationView] setTranslatesAutoresizingMaskIntoConstraints_];
  v7 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v0 action:sel_handleTapGuesture_];
  [v4 addGestureRecognizer_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545CF0, &unk_2414E2020);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2414E2010;
  v9 = [v4 topAnchor];

  v10 = [v0 view];
  if (!v10)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v11 = v10;
  v12 = [v10 topAnchor];

  v13 = [v9 constraintEqualToAnchor_];
  *(v8 + 32) = v13;
  v14 = [v4 leadingAnchor];

  v15 = [v0 view];
  if (!v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v16 = v15;
  v17 = [v15 leadingAnchor];

  v18 = [v14 constraintEqualToAnchor_];
  *(v8 + 40) = v18;
  v19 = [v4 trailingAnchor];

  v20 = [v0 view];
  if (!v20)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v21 = v20;
  v22 = [v20 trailingAnchor];

  v23 = [v19 constraintEqualToAnchor_];
  *(v8 + 48) = v23;
  v24 = [v4 bottomAnchor];

  v25 = [v0 view];
  if (!v25)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26 = v25;
  v27 = [v25 bottomAnchor];

  v28 = [v24 constraintEqualToAnchor_];
  *(v8 + 56) = v28;
  v29 = [*&v0[v6] topAnchor];
  v30 = [v0 view];
  if (!v30)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v31 = v30;
  v32 = [v30 topAnchor];

  v33 = [v29 constraintEqualToAnchor_];
  *(v8 + 64) = v33;
  v34 = [*&v0[v6] leadingAnchor];
  v35 = [v0 view];
  if (!v35)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v36 = v35;
  v37 = [v35 leadingAnchor];

  v38 = [v34 constraintEqualToAnchor_];
  *(v8 + 72) = v38;
  v39 = [*&v0[v6] trailingAnchor];
  v40 = [v0 view];
  if (!v40)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v41 = v40;
  v42 = [v40 trailingAnchor];

  v43 = [v39 constraintEqualToAnchor_];
  *(v8 + 80) = v43;
  v44 = [*&v0[v6] bottomAnchor];
  v45 = [v0 view];
  if (!v45)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v46 = v45;
  v47 = objc_opt_self();
  v48 = [v46 bottomAnchor];

  v49 = [v44 constraintEqualToAnchor_];
  *(v8 + 88) = v49;
  sub_2414D7AA4();
  v50 = sub_2414E0D10();

  [v47 activateConstraints_];
}

void sub_2414DA140(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = swift_unknownObjectWeakLoadStrong();

    if (v3)
    {
      [v3 didForceDismissForEmergencyTap];
      swift_unknownObjectRelease();
    }
  }
}

id CalibrationViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_2414E0CC0();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id CalibrationViewController.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CalibrationViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void _s16AssistiveTouchUI25CalibrationViewControllerC5coderACSgSo7NSCoderC_tcfc_0()
{
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC16AssistiveTouchUI25CalibrationViewController_cancellable) = 0;
  *(v0 + OBJC_IVAR____TtC16AssistiveTouchUI25CalibrationViewController_enrollmentCancellable) = 0;
  v1 = OBJC_IVAR____TtC16AssistiveTouchUI25CalibrationViewController_calibrationObservable;
  type metadata accessor for CalibrationViewDelegate(0);
  swift_allocObject();
  *(v0 + v1) = sub_2414DB9D8();
  *(v0 + OBJC_IVAR____TtC16AssistiveTouchUI25CalibrationViewController____lazy_storage___calibrationView) = 0;
  sub_2414E0E00();
  __break(1u);
}

uint64_t sub_2414DA4A8()
{
  MEMORY[0x245CE8820](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2414DA4E8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2414DA588()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_2414E0740();

  if ((v3[0] & 1) == 0)
  {
    v1 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v3[4] = sub_2414DA6D8;
    v3[5] = v1;
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 1107296256;
    v3[2] = sub_2414DA718;
    v3[3] = &block_descriptor_23;
    v2 = _Block_copy(v3);

    [v0 dismissViewControllerAnimated:1 completion:v2];
    _Block_release(v2);
  }
}

uint64_t sub_2414DA718(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id CalibrationNavigationViewController.__allocating_init(navigationBarClass:toolbarClass:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (a1)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  ObjCClassFromMetadata = 0;
  if (a2)
  {
LABEL_3:
    v3 = swift_getObjCClassFromMetadata();
  }

LABEL_4:
  v5 = objc_allocWithZone(v2);

  return [v5 initWithNavigationBarClass:ObjCClassFromMetadata toolbarClass:v3];
}

id CalibrationNavigationViewController.init(navigationBarClass:toolbarClass:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (!a1)
  {
    ObjCClassFromMetadata = 0;
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if (v3)
  {
LABEL_3:
    v3 = swift_getObjCClassFromMetadata();
  }

LABEL_4:
  v6.receiver = v2;
  v6.super_class = type metadata accessor for CalibrationNavigationViewController();
  return objc_msgSendSuper2(&v6, sel_initWithNavigationBarClass_toolbarClass_, ObjCClassFromMetadata, v3);
}

id CalibrationNavigationViewController.__allocating_init(rootViewController:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithRootViewController_];

  return v3;
}

id CalibrationNavigationViewController.init(rootViewController:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for CalibrationNavigationViewController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithRootViewController_, a1);

  return v3;
}

id CalibrationNavigationViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_2414E0CC0();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id CalibrationNavigationViewController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_2414E0CC0();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for CalibrationNavigationViewController();
  v6 = objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, v5, a3);

  return v6;
}

id CalibrationNavigationViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id CalibrationNavigationViewController.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for CalibrationNavigationViewController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id CalibrationNavigationViewController.navigationController(_:animationControllerFor:from:to:)(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    return [objc_allocWithZone(type metadata accessor for PushTransition()) init];
  }

  else
  {
    return 0;
  }
}

id sub_2414DAE58(void *a1, void *a2, double a3)
{
  [a1 frame];
  v6 = -a3;
  v10 = CGRectOffset(v9, v6, 0.0);
  [a1 setFrame_];
  [a2 frame];
  v12 = CGRectOffset(v11, v6, 0.0);

  return [a2 setFrame_];
}

uint64_t sub_2414DAEEC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

id sub_2414DB000(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_2414DB05C(void *a1)
{
  v2 = [a1 viewControllerForKey_];
  if (v2)
  {
    v19 = v2;
    v3 = [a1 viewControllerForKey_];
    if (v3)
    {
      v18 = v3;
      v4 = [v19 view];
      if (v4)
      {
        v17 = v4;
        v5 = [v18 view];
        if (v5)
        {
          v6 = v5;
          v7 = [a1 containerView];
          [v7 addSubview_];
          [v7 bounds];
          Width = CGRectGetWidth(v27);
          [v7 bounds];
          [v6 setFrame_];
          v9 = objc_opt_self();
          v10 = swift_allocObject();
          *(v10 + 2) = v17;
          v10[3] = Width;
          *(v10 + 4) = v6;
          v24 = sub_2414DB3DC;
          v25 = v10;
          aBlock = MEMORY[0x277D85DD0];
          v21 = 1107296256;
          v22 = sub_2414DA718;
          v23 = &block_descriptor_1;
          v11 = _Block_copy(&aBlock);
          v12 = v17;
          v13 = v6;

          v14 = swift_allocObject();
          *(v14 + 16) = a1;
          v24 = sub_2414DB43C;
          v25 = v14;
          aBlock = MEMORY[0x277D85DD0];
          v21 = 1107296256;
          v22 = sub_2414DAEEC;
          v23 = &block_descriptor_11;
          v15 = _Block_copy(&aBlock);
          swift_unknownObjectRetain();

          [v9 animateWithDuration:0 delay:v11 options:v15 animations:0.35 completion:0.0];

          _Block_release(v15);
          _Block_release(v11);
          return;
        }

        v16 = v17;
      }

      else
      {

        v16 = v18;
      }
    }

    else
    {
      v16 = v19;
    }
  }
}

uint64_t sub_2414DB39C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2414DB404()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2414DB45C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2414E0740();

  return v1;
}

double sub_2414DB4D0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2414E0740();

  return v1;
}

uint64_t sub_2414DB544()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2414E0740();

  return v1;
}

uint64_t sub_2414DB5B8()
{
  v1 = OBJC_IVAR____TtC16AssistiveTouchUI23CalibrationViewDelegate__currentGazeState;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E545C70, &unk_2414E2280);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC16AssistiveTouchUI23CalibrationViewDelegate__calibrationPoint;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545CC0, &qword_2414E22A0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC16AssistiveTouchUI23CalibrationViewDelegate__enrollmentComplete;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545CD0, &qword_2414E22A8);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v7, v8);
}

uint64_t type metadata accessor for CalibrationViewDelegate(uint64_t a1)
{
  result = qword_27E545E40;
  if (!qword_27E545E40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2414DB74C(uint64_t a1)
{
  sub_2414D8EF8(319, &qword_27E545C58, &type metadata for GazeFocusState);
  if (v1 <= 0x3F)
  {
    sub_2414DB870(319);
    if (v2 <= 0x3F)
    {
      sub_2414D8EF8(319, &qword_27E545E58, MEMORY[0x277D839B0]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_2414DB870(uint64_t a1)
{
  if (!qword_27E545E50)
  {
    type metadata accessor for CGPoint(255);
    v1 = sub_2414E0760();
    if (!v2)
    {
      atomic_store(v1, &qword_27E545E50);
    }
  }
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_2414DB900(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2414DB948(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
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
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2414DB9D8()
{
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545CD0, &qword_2414E22A8);
  v1 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v3 = &v16 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545CC0, &qword_2414E22A0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E545C70, &unk_2414E2280);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = OBJC_IVAR____TtC16AssistiveTouchUI23CalibrationViewDelegate__currentGazeState;
  LOBYTE(v18) = 0;
  sub_2414E0720();
  (*(v9 + 32))(v0 + v12, v11, v8);
  v13 = OBJC_IVAR____TtC16AssistiveTouchUI23CalibrationViewDelegate__calibrationPoint;
  type metadata accessor for CGPoint(0);
  v18 = 0;
  v19 = 0;
  sub_2414E0720();
  (*(v5 + 32))(v0 + v13, v7, v4);
  v14 = OBJC_IVAR____TtC16AssistiveTouchUI23CalibrationViewDelegate__enrollmentComplete;
  LOBYTE(v18) = 0;
  sub_2414E0720();
  (*(v1 + 32))(v0 + v14, v3, v17);
  return v0;
}

uint64_t sub_2414DBC58@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for CalibrationViewDelegate(0);
  result = sub_2414E0710();
  *a2 = result;
  return result;
}

uint64_t sub_2414DBC98()
{
  type metadata accessor for GazeStateManager(0);
  swift_allocObject();
  return sub_2414D8AB0();
}

uint64_t sub_2414DBCD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v25 = a3;
  v26 = a1;
  v4 = sub_2414E0960();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  type metadata accessor for GazeStateManager(0);
  sub_2414E0670(&qword_27E545A60, type metadata accessor for GazeStateManager, &unk_2414E21B0);
  v24[1] = v9;
  v24[2] = v8;
  sub_2414E0790();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2414E0740();

  if (sub_2414D83CC(v27) == 0x6C616974696E69 && v10 == 0xE700000000000000)
  {
  }

  else
  {
    v11 = sub_2414E0E30();

    if ((v11 & 1) == 0)
    {
      sub_2414E0790();
      swift_getKeyPath();
      swift_getKeyPath();
      sub_2414E0740();

      v17 = v28;
      v18 = v29;
      v12 = v26;
      goto LABEL_7;
    }
  }

  sub_2414E0970();
  v12 = v26;
  sub_2414E07C0();
  v14 = v13;
  v16 = v15;
  (*(v5 + 8))(v7, v4);
  v17 = v14 * 0.5;
  v18 = v16 * 0.5;
LABEL_7:
  v19 = sub_2414E0BA0();
  v20 = v25;
  *v25 = v19;
  v20[1] = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545E90, &qword_2414E2638);
  return sub_2414DBFB0(a2, v12, v20 + *(v22 + 44), v17, v18);
}

uint64_t sub_2414DBFB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v94 = a3;
  v95 = a2;
  v82 = sub_2414E07D0();
  v8 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v80 = v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = v9;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545E98, &qword_2414E2640);
  v90 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v87 = v77 - v10;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545EA0, &qword_2414E2648);
  v89 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v86 = v77 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545EA8, &qword_2414E2650);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v93 = v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v88 = v77 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545EB0, &qword_2414E2658);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v77 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545EB8, &unk_2414E2660);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v85 = v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = v77 - v23;
  v112[0] = *(a1 + 104);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545AE8, &qword_2414E1DF8);
  sub_2414E0B80();
  v25 = 1;
  if (v97 == 1)
  {
    *v19 = sub_2414E0930();
    *(v19 + 1) = 0;
    v19[16] = 1;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545F08, &qword_2414E2698);
    sub_2414DC9A0(v95, &v19[*(v26 + 44)]);
    v27 = sub_2414E09A0();
    sub_2414E0780();
    v28 = &v19[*(v16 + 36)];
    *v28 = v27;
    *(v28 + 1) = v29;
    *(v28 + 2) = v30;
    *(v28 + 3) = v31;
    *(v28 + 4) = v32;
    v28[40] = 0;
    sub_2414DF9B8(v19, v24);
    v25 = 0;
  }

  (*(v17 + 56))(v24, v25, 1, v16);
  v33 = *(a1 + 16);
  v78 = *(a1 + 24);
  v79 = v33;
  v77[1] = *(a1 + 32);
  type metadata accessor for GazeStateManager(0);
  v84 = v24;
  sub_2414E0670(&qword_27E545A60, type metadata accessor for GazeStateManager, &unk_2414E21B0);
  sub_2414E0790();
  v112[0] = *(a1 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545EC0, &qword_2414E2670);
  sub_2414E0B80();
  v34 = *&v97;
  v35 = swift_allocObject();
  v36 = *(a1 + 112);
  v35[7] = *(a1 + 96);
  v35[8] = v36;
  v35[9] = *(a1 + 128);
  v37 = *(a1 + 48);
  v35[3] = *(a1 + 32);
  v35[4] = v37;
  v38 = *(a1 + 80);
  v35[5] = *(a1 + 64);
  v35[6] = v38;
  v39 = *(a1 + 16);
  v35[1] = *a1;
  v35[2] = v39;
  sub_2414DE8B0(a1, v112);
  sub_2414D6400(sub_2414DEBA0, v35, v110, v34);

  sub_2414E0BA0();
  sub_2414E07A0();
  v40 = v80;
  v41 = v82;
  (*(v8 + 16))(v80, v95, v82);
  v42 = (*(v8 + 80) + 160) & ~*(v8 + 80);
  v43 = swift_allocObject();
  v44 = *(a1 + 112);
  *(v43 + 7) = *(a1 + 96);
  *(v43 + 8) = v44;
  *(v43 + 9) = *(a1 + 128);
  v45 = *(a1 + 48);
  *(v43 + 3) = *(a1 + 32);
  *(v43 + 4) = v45;
  v46 = *(a1 + 80);
  *(v43 + 5) = *(a1 + 64);
  *(v43 + 6) = v46;
  v47 = *(a1 + 16);
  *(v43 + 1) = *a1;
  *(v43 + 2) = v47;
  (*(v8 + 32))(&v43[v42], v40, v41);
  v103 = v110[6];
  v104 = v110[7];
  v105 = v110[8];
  *&v106 = v111;
  v99 = v110[2];
  v100 = v110[3];
  v101 = v110[4];
  v102 = v110[5];
  v97 = v110[0];
  v98 = v110[1];
  *(&v106 + 1) = a4;
  *&v107 = a5;
  *(&v107 + 1) = sub_2414DF644;
  v108 = v43;
  v109 = 0;
  sub_2414DE8B0(a1, v112);
  sub_2414E0790();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2414E0740();

  v96 = v112[0];
  v48 = swift_allocObject();
  v49 = *(a1 + 112);
  v48[7] = *(a1 + 96);
  v48[8] = v49;
  v48[9] = *(a1 + 128);
  v50 = *(a1 + 48);
  v48[3] = *(a1 + 32);
  v48[4] = v50;
  v51 = *(a1 + 80);
  v48[5] = *(a1 + 64);
  v48[6] = v51;
  v52 = *(a1 + 16);
  v48[1] = *a1;
  v48[2] = v52;
  sub_2414DE8B0(a1, v112);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545EC8, &qword_2414E2678);
  v54 = sub_2414DF6B0();
  v57 = sub_2414D697C(v54, v55, v56);
  v58 = v87;
  sub_2414E0A50();

  v112[10] = v107;
  v112[11] = v108;
  v113 = v109;
  v112[6] = v103;
  v112[7] = v104;
  v112[8] = v105;
  v112[9] = v106;
  v112[2] = v99;
  v112[3] = v100;
  v112[4] = v101;
  v112[5] = v102;
  v112[0] = v97;
  v112[1] = v98;
  sub_2414D6B9C(v112, &qword_27E545EC8, &qword_2414E2678);
  v97 = *(a1 + 88);
  sub_2414E0B80();
  v59 = swift_allocObject();
  v60 = *(a1 + 112);
  v59[7] = *(a1 + 96);
  v59[8] = v60;
  v59[9] = *(a1 + 128);
  v61 = *(a1 + 48);
  v59[3] = *(a1 + 32);
  v59[4] = v61;
  v62 = *(a1 + 80);
  v59[5] = *(a1 + 64);
  v59[6] = v62;
  v63 = *(a1 + 16);
  v59[1] = *a1;
  v59[2] = v63;
  sub_2414DE8B0(a1, &v97);
  *&v97 = v53;
  *(&v97 + 1) = &type metadata for GazeFocusState;
  *&v98 = v54;
  *(&v98 + 1) = v57;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v65 = MEMORY[0x277D839B0];
  v66 = MEMORY[0x277D839C8];
  v67 = v86;
  v68 = v92;
  sub_2414E0A50();

  (*(v90 + 8))(v58, v68);
  *&v97 = v68;
  *(&v97 + 1) = v65;
  *&v98 = OpaqueTypeConformance2;
  *(&v98 + 1) = v66;
  swift_getOpaqueTypeConformance2();
  v69 = v88;
  v70 = v91;
  sub_2414E0A40();
  (*(v89 + 8))(v67, v70);
  v72 = v84;
  v71 = v85;
  sub_2414D6D10(v84, v85, &qword_27E545EB8, &unk_2414E2660);
  v73 = v93;
  sub_2414DF8E0(v69, v93);
  v74 = v94;
  sub_2414D6D10(v71, v94, &qword_27E545EB8, &unk_2414E2660);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545F00, &qword_2414E2690);
  sub_2414DF8E0(v73, v74 + *(v75 + 48));
  sub_2414DF950(v69);
  sub_2414D6B9C(v72, &qword_27E545EB8, &unk_2414E2660);
  sub_2414DF950(v73);
  return sub_2414D6B9C(v71, &qword_27E545EB8, &unk_2414E2660);
}

uint64_t sub_2414DC9A0@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545F10, &qword_2414E26A0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - v9;
  *v10 = sub_2414E0920();
  *(v10 + 1) = 0x4024000000000000;
  v10[16] = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545F18, &qword_2414E26A8);
  sub_2414DCB30(a2, &v10[*(v11 + 44)]);
  sub_2414E07B0();
  v13 = v12 * 0.5 + 25.0;
  sub_2414D6D10(v10, v8, &qword_27E545F10, &qword_2414E26A0);
  *a3 = 0;
  *(a3 + 8) = 1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545F20, &qword_2414E26B0);
  sub_2414D6D10(v8, a3 + *(v14 + 48), &qword_27E545F10, &qword_2414E26A0);
  v15 = a3 + *(v14 + 64);
  *v15 = v13;
  *(v15 + 8) = 0;
  sub_2414D6B9C(v10, &qword_27E545F10, &qword_2414E26A0);
  return sub_2414D6B9C(v8, &qword_27E545F10, &qword_2414E26A0);
}

id sub_2414DCB30@<X0>(uint64_t a1@<X1>, double *a2@<X8>)
{
  v4 = sub_2414E0A60();
  v66 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545F28, &qword_2414E26B8);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v59 - v11;
  sub_2414E07B0();
  v14 = v13;
  v15 = 0.0;
  IsPad = AXDeviceIsPad();
  if (IsPad)
  {
    v15 = v14 / 6.0;
  }

  result = AXAssistiveTouchBundle();
  if (result)
  {
    v18 = result;
    v60 = v4;
    v61 = IsPad;
    v62 = a1;
    v63 = v12;
    v64 = v10;
    v65 = a2;
    v19 = sub_2414E0700();
    v21 = v20;

    *&v73[0] = v19;
    *(&v73[0] + 1) = v21;
    sub_2414DFA28(v22, v23, v24);
    v25 = sub_2414E0A00();
    v27 = v26;
    v29 = v28;
    if (qword_27E5459E0 != -1)
    {
      swift_once();
    }

    v30 = sub_2414E09E0();
    v32 = v31;
    v34 = v33;
    sub_2414DFA7C(v25, v27, v29 & 1);

    sub_2414E0AE0();
    v35 = sub_2414E09D0();
    v37 = v36;
    v39 = v38;

    sub_2414DFA7C(v30, v32, v34 & 1);

    (*(v66 + 104))(v6, *MEMORY[0x277CE0ED0], v60);
    v40 = 0.0;
    sub_2414E0B30();
    v41 = sub_2414E09F0();
    v43 = v42;
    LOBYTE(v30) = v44;
    v46 = v45;

    sub_2414DFA7C(v35, v37, v39 & 1);

    KeyPath = swift_getKeyPath();
    v48 = swift_getKeyPath();
    LOBYTE(v73[0]) = v30 & 1;
    LOBYTE(v67) = 0;
    v49 = swift_getKeyPath();
    *&v67 = v41;
    *(&v67 + 1) = v43;
    LOBYTE(v68) = v30 & 1;
    *(&v68 + 1) = v46;
    *&v69 = KeyPath;
    BYTE8(v69) = 1;
    *&v70 = v48;
    *(&v70 + 1) = 3;
    LOBYTE(v71) = 0;
    *(&v71 + 1) = v49;
    v72 = 0x3F847AE147AE147BLL;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545F38, &qword_2414E2750);
    sub_2414DFB98();
    v50 = v63;
    sub_2414E0A40();
    v73[2] = v69;
    v73[3] = v70;
    v73[4] = v71;
    v74 = v72;
    v73[0] = v67;
    v73[1] = v68;
    sub_2414D6B9C(v73, &qword_27E545F38, &qword_2414E2750);
    sub_2414E07B0();
    v52 = v51;
    v53 = AXDeviceIsPad();
    v54 = v53;
    if (v53)
    {
      v40 = v52 / 6.0;
    }

    v55 = v64;
    sub_2414D6D10(v50, v64, &qword_27E545F28, &qword_2414E26B8);
    v56 = v65;
    *v65 = v15;
    *(v56 + 8) = v61 ^ 1;
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545F98, &qword_2414E2780);
    sub_2414D6D10(v55, v56 + *(v57 + 48), &qword_27E545F28, &qword_2414E26B8);
    v58 = (v56 + *(v57 + 64));
    *v58 = v40;
    *(v58 + 8) = v54 ^ 1;
    sub_2414D6B9C(v50, &qword_27E545F28, &qword_2414E26B8);
    return sub_2414D6B9C(v55, &qword_27E545F28, &qword_2414E26B8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2414DD0D0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545AE8, &qword_2414E1DF8);
  sub_2414E0B90();
  sub_2414DD134();
}

void sub_2414DD134()
{
  v5 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545AE8, &qword_2414E1DF8);
  sub_2414E0B80();
  if (v4 == 1)
  {
    type metadata accessor for GazeStateManager(0);
    sub_2414E0670(&qword_27E545A60, type metadata accessor for GazeStateManager, &unk_2414E21B0);
    sub_2414E0790();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_2414E0740();

    if (sub_2414D83CC(v5) == 0x6C616974696E69 && v1 == 0xE700000000000000)
    {
    }

    else
    {
      v2 = sub_2414E0E30();

      if ((v2 & 1) == 0)
      {
        sub_2414DDFE8();
        return;
      }
    }
  }

  v3 = sub_2414E0BE0();
  MEMORY[0x28223BE20](v3);
  sub_2414E07F0();
}

void sub_2414DD31C(uint64_t a1)
{
  v2 = sub_2414E0C10();
  v19 = *(v2 - 8);
  v20 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2414E0960();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GazeStateManager(0);
  sub_2414E0670(&qword_27E545A60, type metadata accessor for GazeStateManager, &unk_2414E21B0);
  v9 = sub_2414E0790();
  sub_2414E0970();
  sub_2414E07C0();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  (*(v6 + 8))(v8, v5);
  v18 = v9 + OBJC_IVAR____TtC16AssistiveTouchUI16GazeStateManager_frame;
  *v18 = v11;
  *(v18 + 8) = v13;
  *(v18 + 16) = v15;
  *(v18 + 24) = v17;
  *(v18 + 32) = 0;

  sub_2414E0C00();
  sub_2414E0BB0();
  (*(v19 + 8))(v4, v20);
  sub_2414E0BC0();

  v21 = a1;
  sub_2414E07F0();
}

double sub_2414DD5B8(uint64_t a1, char *a2, _OWORD *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545FA0, &qword_2414E2788);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v20 - v6;
  if (sub_2414D83CC(*a2) == 0x6574656C706D6F63 && v8 == 0xE800000000000000)
  {
  }

  else
  {
    v10 = sub_2414E0E30();

    if ((v10 & 1) == 0)
    {
      v20[0] = *(a3 + 40);
      v21 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545AE8, &qword_2414E1DF8);
      sub_2414E0B90();
      sub_2414DD134();
      return result;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v20[0]) = 1;

  sub_2414E0750();
  v20[0] = *(a3 + 40);
  v21 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545AE8, &qword_2414E1DF8);
  sub_2414E0B90();
  v12 = sub_2414E0D60();
  (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  sub_2414E0D40();
  sub_2414DE8B0(a3, v20);
  v13 = sub_2414E0D30();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  *(v14 + 16) = v13;
  *(v14 + 24) = v15;
  v16 = a3[7];
  *(v14 + 128) = a3[6];
  *(v14 + 144) = v16;
  *(v14 + 160) = a3[8];
  v17 = a3[3];
  *(v14 + 64) = a3[2];
  *(v14 + 80) = v17;
  v18 = a3[5];
  *(v14 + 96) = a3[4];
  *(v14 + 112) = v18;
  v19 = a3[1];
  *(v14 + 32) = *a3;
  *(v14 + 48) = v19;
  sub_2414DDC20(0, 0, v7, &unk_2414E27E0, v14);

  return result;
}

uint64_t sub_2414DD820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v5 = sub_2414E0DE0();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  sub_2414E0D40();
  v4[8] = sub_2414E0D30();
  v7 = sub_2414E0D20();
  v4[9] = v7;
  v4[10] = v6;

  return MEMORY[0x2822009F8](sub_2414DD914, v7, v6);
}

uint64_t sub_2414DD914()
{
  sub_2414E0E60();
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_2414DD9E0;

  return sub_2414DF08C(1000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_2414DD9E0()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[7];
  v5 = v2[6];
  v6 = v2[5];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[9];
    v8 = v3[10];
    v9 = sub_2414E06B8;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[9];
    v8 = v3[10];
    v9 = sub_2414DDB74;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_2414DDB74()
{
  v1 = *(v0 + 32);

  *(v0 + 16) = *(v1 + 88);
  *(v0 + 96) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545AE8, &qword_2414E1DF8);
  sub_2414E0B90();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2414DDC20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545FA0, &qword_2414E2788);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_2414D6D10(a3, v25 - v10, &qword_27E545FA0, &qword_2414E2788);
  v12 = sub_2414E0D60();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2414D6B9C(v11, &qword_27E545FA0, &qword_2414E2788);
  }

  else
  {
    sub_2414E0D50();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_2414E0D20();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2414E0CE0() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_2414D6B9C(a3, &qword_27E545FA0, &qword_2414E2788);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2414D6B9C(a3, &qword_27E545FA0, &qword_2414E2788);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_2414DDF20(uint64_t a1)
{
  v2 = sub_2414E0820();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_2414E0870();
}

uint64_t sub_2414DDFE8()
{
  v1 = v0;
  v2 = sub_2414E0990();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_2414E0C10();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2414E0C00();
  sub_2414E0BB0();
  (*(v7 + 8))(v9, v6);
  sub_2414E0BC0();

  v17 = v1;
  v10 = swift_allocObject();
  v11 = v1[7];
  v10[7] = v1[6];
  v10[8] = v11;
  v10[9] = v1[8];
  v12 = v1[3];
  v10[3] = v1[2];
  v10[4] = v12;
  v13 = v1[5];
  v10[5] = v1[4];
  v10[6] = v13;
  v14 = v1[1];
  v10[1] = *v1;
  v10[2] = v14;
  sub_2414DE8B0(v1, v18);
  sub_2414E0980();
  sub_2414E07E0();

  return (*(v3 + 8))(v5, v2);
}

void sub_2414DE248(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545AE8, &qword_2414E1DF8);
  sub_2414E0B90();
  type metadata accessor for GazeStateManager(0);
  sub_2414E0670(&qword_27E545A60, type metadata accessor for GazeStateManager, &unk_2414E21B0);
  swift_retain_n();
  sub_2414E0790();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2414E0740();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_2414E0750();
  sub_2414E0790();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2414E0740();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_2414E0750();
  sub_2414E0BE0();
  sub_2414E07F0();
}

void sub_2414DE4AC(uint64_t a1)
{
  v4[0] = *(a1 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545EC0, &qword_2414E2670);
  sub_2414E0B90();
  type metadata accessor for GazeStateManager(0);
  sub_2414E0670(&qword_27E545A60, type metadata accessor for GazeStateManager, &unk_2414E21B0);
  v1 = sub_2414E0790();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2414E0740();

  v2 = sub_2414D7E00(LOBYTE(v4[0]));
  swift_getKeyPath();
  swift_getKeyPath();
  if (v2 == 15)
  {
    LOBYTE(v4[0]) = 1;
  }

  else
  {
    LOBYTE(v4[0]) = v2;
  }

  sub_2414E0750();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2414E0740();

  v3 = v4[0];
  v5 = *(v1 + OBJC_IVAR____TtC16AssistiveTouchUI16GazeStateManager_frame + 32);
  v4[0] = *(v1 + OBJC_IVAR____TtC16AssistiveTouchUI16GazeStateManager_frame);
  v4[1] = *(v1 + OBJC_IVAR____TtC16AssistiveTouchUI16GazeStateManager_frame + 16);
  if (v5)
  {
  }

  else
  {
    sub_2414D72D0(v3, v4);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_2414E0750();
  }
}

uint64_t sub_2414DE6FC@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[7];
  v22[6] = v1[6];
  v22[7] = v3;
  v22[8] = v1[8];
  v4 = v1[3];
  v22[2] = v1[2];
  v22[3] = v4;
  v5 = v1[5];
  v22[4] = v1[4];
  v22[5] = v5;
  v6 = v1[1];
  v22[0] = *v1;
  v22[1] = v6;
  v7 = swift_allocObject();
  v8 = v1[7];
  v7[7] = v1[6];
  v7[8] = v8;
  v7[9] = v1[8];
  v9 = v1[3];
  v7[3] = v1[2];
  v7[4] = v9;
  v10 = v1[5];
  v7[5] = v1[4];
  v7[6] = v10;
  v11 = v1[1];
  v7[1] = *v1;
  v7[2] = v11;
  sub_2414DE8B0(v22, v20);
  v12 = sub_2414E0830();
  v13 = sub_2414E09A0();
  v20[0] = sub_2414DE8A8;
  v20[1] = v7;
  v20[2] = v12;
  v21 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545E60, &qword_2414E2558);
  sub_2414DE8E8();
  sub_2414E0A40();

  KeyPath = swift_getKeyPath();
  v15 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545E80, &qword_2414E2598) + 36));
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545E88, &qword_2414E25A0) + 28);
  v17 = *MEMORY[0x277CDFA88];
  v18 = sub_2414E0820();
  result = (*(*(v18 - 8) + 104))(v15 + v16, v17, v18);
  *v15 = KeyPath;
  return result;
}

unint64_t sub_2414DE8E8()
{
  result = qword_27E545E68;
  if (!qword_27E545E68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E545E60, &qword_2414E2558);
    sub_2414D6A68(&qword_27E545E70, &qword_27E545E78, &qword_2414E2560, MEMORY[0x277CDF7D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E545E68);
  }

  return result;
}

uint64_t sub_2414DE9C8()
{
  if (AXDeviceIsPad())
  {
    result = sub_2414E09B0();
  }

  else
  {
    result = sub_2414E09C0();
  }

  qword_27E545E20 = result;
  return result;
}

__n128 sub_2414DEA84@<Q0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2414E0740();

  result = v5;
  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_2414DEB10(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2414E0750();
}

void sub_2414DEBBC(_BYTE *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2414E0740();

  *a4 = v5;
}

uint64_t sub_2414DEC38(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2414E0750();
}

double sub_2414DECAC@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2414E0740();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_2414DED2C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2414E0750();
}

void sub_2414DEDA8(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2414E0740();

  *a2 = v3;
}

uint64_t sub_2414DEE28(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_2414E0750();
}

uint64_t sub_2414DEE9C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2414DEF94;

  return v6(a1);
}

uint64_t sub_2414DEF94()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2414DF08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_2414E0DD0();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_2414DF18C, 0, 0);
}

uint64_t sub_2414DF18C()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_2414E0DE0();
  v5 = sub_2414E0670(&qword_27E545FA8, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_2414E0E40();
  sub_2414E0670(&qword_27E545FB0, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_2414E0DF0();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_2414DF31C;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_2414DF31C()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2414DF4D8, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_2414DF4D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2414DF544()
{
  v1 = sub_2414E07D0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 160) & ~v3;
  v5 = *(v2 + 64);

  sub_2414DE8A0(*(v0 + 32), *(v0 + 40));

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_2414DF644()
{
  sub_2414E07D0();

  sub_2414DD31C(v0 + 16);
}

unint64_t sub_2414DF6B0()
{
  result = qword_27E545ED0;
  if (!qword_27E545ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E545EC8, &qword_2414E2678);
    sub_2414DF73C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E545ED0);
  }

  return result;
}

unint64_t sub_2414DF73C()
{
  result = qword_27E545ED8;
  if (!qword_27E545ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E545EE0, &qword_2414E2680);
    sub_2414DF7C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E545ED8);
  }

  return result;
}

unint64_t sub_2414DF7C8()
{
  result = qword_27E545EE8;
  if (!qword_27E545EE8)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E545EF0, &qword_2414E2688);
    sub_2414DF854(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E545EE8);
  }

  return result;
}

unint64_t sub_2414DF854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E545EF8;
  if (!qword_27E545EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E545EF8);
  }

  return result;
}

uint64_t sub_2414DF8A8(uint64_t a1, _BYTE *a2)
{
  if (*a2 == 1)
  {
    return (*(v2 + 144))(a1);
  }

  return a1;
}

uint64_t sub_2414DF8E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545EA8, &qword_2414E2650);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2414DF950(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545EA8, &qword_2414E2650);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2414DF9B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E545EB0, &qword_2414E2658);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2414DFA28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E545F30;
  if (!qword_27E545F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E545F30);
  }

  return result;
}

double sub_2414DFA7C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }

  return result;
}

uint64_t sub_2414DFA8C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2414E08E0();
  *a1 = result;
  return result;
}

uint64_t sub_2414DFAE0@<X0>(uint64_t a1@<X8>)
{
  result = sub_2414E0900();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_2414DFB98()
{
  result = qword_27E545F40;
  if (!qword_27E545F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E545F38, &qword_2414E2750);
    sub_2414DFC50();
    sub_2414D6A68(&qword_27E545F88, &qword_27E545F90, &qword_2414E2778, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E545F40);
  }

  return result;
}

unint64_t sub_2414DFC50()
{
  result = qword_27E545F48;
  if (!qword_27E545F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E545F50, &qword_2414E2758);
    sub_2414DFD08();
    sub_2414D6A68(&qword_27E545F78, &qword_27E545F80, &qword_2414E2770, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E545F48);
  }

  return result;
}

unint64_t sub_2414DFD08()
{
  result = qword_27E545F58;
  if (!qword_27E545F58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E545F60, &qword_2414E2760);
    sub_2414D6A68(&qword_27E545F68, &qword_27E545F70, &qword_2414E2768, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E545F58);
  }

  return result;
}

uint64_t sub_2414DFDC8()
{
  swift_unknownObjectRelease();

  sub_2414DE8A0(*(v0 + 48), *(v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 176, 7);
}

uint64_t sub_2414DFE44(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2414DFEF4;

  return sub_2414DD820(a1, v4, v5, v1 + 32);
}

uint64_t sub_2414DFEF4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2414DFFE8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2414E0020(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2414E06E8;

  return sub_2414DEE9C(a1, v4);
}

uint64_t sub_2414E00D8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2414DFEF4;

  return sub_2414DEE9C(a1, v4);
}

uint64_t objectdestroyTm_0()
{

  sub_2414DE8A0(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 160, 7);
}

uint64_t sub_2414E0320@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_2414E0B70();
  sub_2414E0B70();
  type metadata accessor for UIDeviceOrientation(0);
  sub_2414E0B70();
  sub_2414E0B70();
  sub_2414E0B70();
  sub_2414E0D90();
  v5 = MEMORY[0x245CE8180]();
  [v5 assistiveTouchOnDeviceEyeTrackingCalibrationDotActivationTimeout];
  v7 = v6;

  type metadata accessor for CalibrationViewDelegate(0);
  sub_2414E0670(&qword_27E545FB8, type metadata accessor for CalibrationViewDelegate, &unk_2414E2520);
  result = sub_2414E0800();
  *a4 = result;
  *(a4 + 8) = v9;
  *(a4 + 16) = sub_2414DBC98;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + 40) = v12;
  *(a4 + 48) = v13;
  *(a4 + 56) = v12;
  *(a4 + 64) = v13;
  *(a4 + 72) = v12;
  *(a4 + 80) = v13;
  *(a4 + 88) = v12;
  *(a4 + 96) = v13;
  *(a4 + 104) = v12;
  *(a4 + 112) = v13;
  *(a4 + 120) = v7;
  *(a4 + 128) = a2;
  *(a4 + 136) = a3;
  return result;
}

unint64_t sub_2414E04FC()
{
  result = qword_27E545FC0;
  if (!qword_27E545FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E545E80, &qword_2414E2598);
    sub_2414E05B4();
    sub_2414D6A68(&unk_27E545FE0, &qword_27E545E88, &qword_2414E25A0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E545FC0);
  }

  return result;
}

unint64_t sub_2414E05B4()
{
  result = qword_27E545FC8;
  if (!qword_27E545FC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E545FD0, &qword_2414E28A0);
    sub_2414DE8E8();
    sub_2414E0670(&qword_27E545FD8, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E545FC8);
  }

  return result;
}

uint64_t sub_2414E0670(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

CGRect CGRectOffset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x282111608](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}