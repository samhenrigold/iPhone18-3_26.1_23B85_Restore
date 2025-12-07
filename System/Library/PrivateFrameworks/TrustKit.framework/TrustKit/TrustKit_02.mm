unint64_t sub_26F76EE18()
{
  v1 = 0x62616E455F534352;
  v2 = *v0;
  if (v2 == 4)
  {
    v1 = 0xD000000000000010;
  }

  if (v2 == 3)
  {
    v1 = 0x62616E455F534D53;
  }

  v3 = 0xD000000000000012;
  if (v2 == 1)
  {
    v3 = 0xD000000000000013;
  }

  if (!*v0)
  {
    v3 = 0xD000000000000015;
  }

  if (*v0 <= 2u)
  {
    return v3;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_26F76EED4@<X0>(uint64_t a1@<X0>, _TtC8TrustKit22TrustKitUIServerClient *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_26F771530(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_26F76EEFC(uint64_t a1)
{
  v2 = sub_26F7718E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26F76EF38(uint64_t a1)
{
  v2 = sub_26F7718E0();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_26F76EFB8(void *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  sub_26F77157C(a1, a2, a3, a4, a5);
  if (!v6)
  {
    *a6 = v8 & 1;
    *(a6 + 1) = BYTE1(v8) & 1;
    *(a6 + 2) = BYTE2(v8) & 1;
    *(a6 + 8) = v9;
    *(a6 + 16) = v10;
    *(a6 + 24) = v11;
  }
}

uint64_t sub_26F76F054(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void), uint64_t a7)
{
  if (v7[1])
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8 | *v7;
  if (v7[2])
  {
    v10 = 0x10000;
  }

  else
  {
    v10 = 0;
  }

  return sub_26F76D298(a1, v9 | v10, *(v7 + 1), *(v7 + 2), *(v7 + 3), a4, a5, a6, a7);
}

uint64_t sub_26F76F0BC()
{
  memcpy(__dst, (v0 + 16), 0x170uLL);
  sub_26F76FAF8(__dst);
  v1 = OBJC_IVAR____TtC8TrustKit19ConfigurationsAsset_logger;
  v2 = sub_26F779188();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ConfigurationsAsset(uint64_t a1)
{
  result = qword_2806EF8C0;
  if (!qword_2806EF8C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26F76F1C0(uint64_t a1)
{
  result = sub_26F779188();
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

uint64_t sub_26F76F264(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 368))
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

uint64_t sub_26F76F2AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 360) = 0;
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
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 368) = 1;
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

    *(result + 368) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_26F76F35C(uint64_t a1, _TtC8TrustKit22TrustKitUIServerClient *a2)
{
  v3 = sub_26F779618();
  a2, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

void sub_26F76F3A8(void *a1@<X0>, void *a2@<X8>)
{
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF8D0, &qword_26F77CBD0);
  v5 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v7 = v14 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26F76F8BC();
  sub_26F779898();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v23 = a2;
    v54 = 0;
    sub_26F76F910();
    sub_26F7796A8();
    v66[8] = v63;
    v66[9] = v64;
    *&v66[10] = v65;
    v66[4] = v59;
    v66[5] = v60;
    v66[7] = v62;
    v66[6] = v61;
    v66[0] = v55;
    v66[1] = v56;
    v66[3] = v58;
    v66[2] = v57;
    v44 = 1;
    sub_26F76F964();
    sub_26F7796A8();
    *(&v66[16] + 8) = v51;
    *(&v66[17] + 8) = v52;
    *(&v66[15] + 8) = v50;
    *(&v66[11] + 8) = v46;
    *(&v66[12] + 8) = v47;
    *(&v66[13] + 8) = v48;
    *(&v66[14] + 8) = v49;
    *(&v66[18] + 1) = v53;
    *(&v66[10] + 8) = v45;
    LOBYTE(v24[0]) = 2;
    sub_26F76FA18();
    sub_26F7796A8();
    v19 = BYTE1(v25[0]);
    v20 = LOBYTE(v25[0]);
    v18 = BYTE2(v25[0]);
    v8 = v25[1];
    v21 = v25[2];
    v22 = v25[3];
    v38 = 3;
    sub_26F76FA6C();
    sub_26F7796A8();
    (*(v5 + 8))(v7, v67);
    v14[3] = v39;
    v16 = HIBYTE(v39);
    v9 = v40;
    v67 = v41;
    v10 = v42;
    v17 = v8;
    v15 = v43;
    memcpy(v24, v66, 0x130uLL);
    v11 = v19;
    LOBYTE(v24[38]) = v20;
    BYTE1(v24[38]) = v19;
    v12 = v18;
    BYTE2(v24[38]) = v18;
    v24[39] = v8;
    v24[40] = v21;
    v24[41] = v22;
    LOBYTE(v8) = v39;
    LOWORD(v24[42]) = v39;
    BYTE2(v24[42]) = v40;
    v24[43] = v41;
    v24[44] = v42;
    v13 = v43;
    v24[45] = v43;
    sub_26F76FAC0(v24, v25);
    __swift_destroy_boxed_opaque_existential_1(a1);
    memcpy(v25, v66, sizeof(v25));
    v26 = v20;
    v27 = v11;
    v28 = v12;
    v29 = v17;
    v30 = v21;
    v31 = v22;
    v32 = v8;
    v33 = v16;
    v34 = v9;
    v35 = v67;
    v36 = v10;
    v37 = v13;
    sub_26F76FAF8(v25);
    memcpy(v23, v24, 0x170uLL);
  }
}

unint64_t sub_26F76F8BC()
{
  result = qword_2806EF8D8;
  if (!qword_2806EF8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF8D8);
  }

  return result;
}

unint64_t sub_26F76F910()
{
  result = qword_2806EF8E0;
  if (!qword_2806EF8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF8E0);
  }

  return result;
}

unint64_t sub_26F76F964()
{
  result = qword_2806EF8E8;
  if (!qword_2806EF8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF8E8);
  }

  return result;
}

unint64_t sub_26F76FA18()
{
  result = qword_2806EF8F0;
  if (!qword_2806EF8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF8F0);
  }

  return result;
}

unint64_t sub_26F76FA6C()
{
  result = qword_2806EF8F8;
  if (!qword_2806EF8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF8F8);
  }

  return result;
}

unint64_t sub_26F76FB60()
{
  result = qword_2806EF908;
  if (!qword_2806EF908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF908);
  }

  return result;
}

unint64_t sub_26F76FBEC()
{
  result = qword_2806EF910;
  if (!qword_2806EF910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF910);
  }

  return result;
}

unint64_t sub_26F76FC40()
{
  result = qword_2806EF918;
  if (!qword_2806EF918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF918);
  }

  return result;
}

unint64_t sub_26F76FC94()
{
  result = qword_2806EF920;
  if (!qword_2806EF920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF920);
  }

  return result;
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
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
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_26F76FD4C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_26F76FD94(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

__n128 __swift_memcpy168_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_26F76FE40(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
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

uint64_t sub_26F76FE88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
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
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_26F76FF04()
{
  result = qword_2806EF928;
  if (!qword_2806EF928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF928);
  }

  return result;
}

unint64_t sub_26F76FF5C()
{
  result = qword_2806EF930;
  if (!qword_2806EF930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF930);
  }

  return result;
}

unint64_t sub_26F76FFB4()
{
  result = qword_2806EF938;
  if (!qword_2806EF938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF938);
  }

  return result;
}

uint64_t sub_26F770008(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EFB00, &qword_26F77DB18);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26F7727E8();
  sub_26F779898();
  if (!v1)
  {
    v11 = 0;
    v7 = sub_26F779668();
    v10 = 1;
    sub_26F779668();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

unint64_t sub_26F7701EC(uint64_t a1, _TtC8TrustKit22TrustKitUIServerClient *a2)
{
  v3 = sub_26F779618();
  a2, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_26F770238(uint64_t a1, _TtC8TrustKit22TrustKitUIServerClient *a2)
{
  v3 = sub_26F779618();
  a2, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

void sub_26F770284(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, _TtC8TrustKit22TrustKitUIServerClient **a6@<X8>)
{
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v12 = &v60 - v11;
  v13 = a1[3];
  v67 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  a4();
  sub_26F779898();
  if (v6)
  {
    __swift_destroy_boxed_opaque_existential_1(v67);
  }

  else
  {
    v14 = v10;
    v65 = a6;
    v72 = 0;
    sub_26F772200();
    sub_26F7796A8();
    v15 = v68;
    v16 = v70;
    v63 = v71;
    v64 = v69;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF988, &qword_26F77CFE0);
    v72 = 1;
    sub_26F771420(&qword_2806EF990, MEMORY[0x277D83808], MEMORY[0x277D839D0], MEMORY[0x277D83528]);
    sub_26F7796A8();
    v61 = v16;
    v62 = v15;
    v17 = v68;
    v72 = 2;
    sub_26F7796A8();
    v18 = v68;
    v72 = 3;
    sub_26F7796A8();
    (*(v14 + 8))(v12, v66);
    v19 = v68;
    v20 = v64;

    v21 = v63;

    __swift_destroy_boxed_opaque_existential_1(v67);
    v19, v22, v23, v24, v25, v26, v27, v28;
    v18, v29, v30, v31, v32, v33, v34, v35;
    v17, v36, v37, v38, v39, v40, v41, v42;
    v21, v43, v44, v45, v46, v47, v48, v49;
    v20, v50, v51, v52, v53, v54, v55, v56;
    v57 = v18;
    v58 = v65;
    v59 = v61;
    *v65 = v62;
    v58[1] = v20;
    v58[2] = v59;
    v58[3] = v21;
    v58[4] = v17;
    v58[5] = v57;
    v58[6] = v19;
  }
}

unint64_t sub_26F770634(uint64_t a1, _TtC8TrustKit22TrustKitUIServerClient *a2)
{
  v3 = sub_26F779618();
  a2, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_26F770680(uint64_t a1, _TtC8TrustKit22TrustKitUIServerClient *a2)
{
  v3 = sub_26F779618();
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

void sub_26F7706CC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF940, &qword_26F77CFC8);
  v5 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v7 = &v24 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26F770ADC();
  sub_26F779898();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v8 = v5;
    v43 = a2;
    LOBYTE(v45) = 0;
    sub_26F770B30();
    v9 = v44;
    sub_26F7796A8();
    v10 = v58;
    v41 = v59;
    v42 = v57;
    v39 = v60;
    v40 = *(&v59 + 1);
    v37 = v56;
    v38 = v61;
    LOBYTE(v45) = 1;
    sub_26F770B84();
    sub_26F7796A8();
    v32 = v56;
    v33 = v10;
    v11 = v57;
    v31 = v58;
    v35 = v59;
    v36 = v60;
    v34 = v61;
    v79 = 2;
    sub_26F770BD8();
    sub_26F7796A8();
    (*(v8 + 8))(v7, v9);
    v28 = v76;
    v29 = *(&v75 + 1);
    v26 = v77;
    v27 = *(&v76 + 1);
    v24 = v78;
    v25 = *(&v77 + 1);
    v12 = v38;
    v44 = v75;
    *&v45 = v37;
    v14 = v41;
    v13 = v42;
    *(&v45 + 1) = v42;
    *&v46 = v33;
    v16 = v39;
    v15 = v40;
    *(&v46 + 1) = v41;
    *&v47 = v40;
    *(&v47 + 1) = v39;
    *&v48 = v38;
    *(&v48 + 1) = v32;
    v49 = __PAIR128__(v31, v11);
    v30 = v11;
    v17 = v34;
    v50 = v35;
    *&v51 = v36;
    *(&v51 + 1) = v34;
    v52 = v75;
    v53 = v76;
    v54 = v77;
    v55 = v78;
    sub_26F76FB28(&v45, &v56);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v56 = v37;
    v57 = v13;
    v58 = v33;
    *&v59 = v14;
    *(&v59 + 1) = v15;
    v60 = v16;
    v61 = v12;
    v62 = v32;
    v63 = v30;
    v64 = v31;
    v65 = v35;
    v66 = v36;
    v67 = v17;
    v68 = v44;
    v69 = v29;
    v70 = v28;
    v71 = v27;
    v72 = v26;
    v73 = v25;
    v74 = v24;
    sub_26F76F9B8(&v56);
    v18 = v54;
    v19 = v43;
    *(v43 + 128) = v53;
    *(v19 + 144) = v18;
    *(v19 + 160) = v55;
    v20 = v50;
    *(v19 + 64) = v49;
    *(v19 + 80) = v20;
    v21 = v52;
    *(v19 + 96) = v51;
    *(v19 + 112) = v21;
    v22 = v46;
    *v19 = v45;
    *(v19 + 16) = v22;
    v23 = v48;
    *(v19 + 32) = v47;
    *(v19 + 48) = v23;
  }
}

unint64_t sub_26F770ADC()
{
  result = qword_2806EF948;
  if (!qword_2806EF948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF948);
  }

  return result;
}

unint64_t sub_26F770B30()
{
  result = qword_2806EF950;
  if (!qword_2806EF950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF950);
  }

  return result;
}

unint64_t sub_26F770B84()
{
  result = qword_2806EF958;
  if (!qword_2806EF958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF958);
  }

  return result;
}

unint64_t sub_26F770BD8()
{
  result = qword_2806EF960;
  if (!qword_2806EF960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF960);
  }

  return result;
}

unint64_t sub_26F770C2C(uint64_t a1, _TtC8TrustKit22TrustKitUIServerClient *a2)
{
  v3 = sub_26F779768();
  a2, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 0x12)
  {
    return 18;
  }

  else
  {
    return v3;
  }
}

void sub_26F770C80(void *a1@<X0>, uint64_t a2@<X8>)
{
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF968, &qword_26F77CFD0);
  v5 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v7 = &v37 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26F7713CC();
  sub_26F779898();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v8 = v5;
    LOBYTE(v57[0]) = 0;
    sub_26F779688();
    v10 = v9;
    LOBYTE(v57[0]) = 1;
    sub_26F779688();
    v12 = v11;
    LOBYTE(v57[0]) = 2;
    v13 = sub_26F779668();
    v47 = v14;
    LOBYTE(v57[0]) = 3;
    sub_26F779688();
    v16 = v15;
    LOBYTE(v57[0]) = 4;
    sub_26F779688();
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF978, &qword_26F77CFD8);
    LOBYTE(v48) = 5;
    sub_26F771AD8(&qword_2806EF980, MEMORY[0x277D83808], MEMORY[0x277D83A30], MEMORY[0x277D83528]);
    sub_26F7796A8();
    v46 = v57[0];
    LOBYTE(v57[0]) = 6;
    sub_26F779688();
    v20 = v19;
    LOBYTE(v57[0]) = 7;
    sub_26F779688();
    v22 = v21;
    LOBYTE(v57[0]) = 8;
    sub_26F779688();
    v24 = v23;
    LOBYTE(v57[0]) = 9;
    sub_26F779688();
    v26 = v25;
    LOBYTE(v57[0]) = 10;
    sub_26F779688();
    v45 = v27;
    LOBYTE(v57[0]) = 11;
    v28 = sub_26F779698();
    LOBYTE(v57[0]) = 12;
    v44 = sub_26F779678();
    LOBYTE(v57[0]) = 13;
    v43 = sub_26F779678();
    LOBYTE(v57[0]) = 14;
    v42 = sub_26F779678();
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF988, &qword_26F77CFE0);
    LOBYTE(v48) = 15;
    v40 = sub_26F771420(&qword_2806EF990, MEMORY[0x277D83808], MEMORY[0x277D839D0], MEMORY[0x277D83528]);
    v41 = v29;
    sub_26F7796A8();
    v39 = v57[0];
    LOBYTE(v48) = 16;
    sub_26F7796A8();
    v38 = v57[0];
    v65 = 17;
    sub_26F7796A8();
    v41 = 0;
    LOBYTE(v29) = v43 & 1;
    v43 = v42 & 1;
    v44 &= 1u;
    v30 = v44;
    (*(v8 + 8))(v7, v69);
    v69 = v66;
    *&v48 = v10;
    *(&v48 + 1) = v12;
    v31 = v46;
    *&v49 = v13;
    *(&v49 + 1) = v47;
    *&v50 = v16;
    *(&v50 + 1) = v18;
    *&v51 = v46;
    *(&v51 + 1) = v20;
    *&v52 = v22;
    *(&v52 + 1) = v24;
    *&v53 = v26;
    *(&v53 + 1) = v45;
    *&v54 = v28;
    *(&v54 + 1) = v39;
    LOBYTE(v55) = v30;
    BYTE1(v55) = v29;
    LOBYTE(v8) = v43;
    BYTE2(v55) = v43;
    BYTE7(v55) = v68;
    *(&v55 + 3) = v67;
    v32 = v38;
    *(&v55 + 1) = v38;
    v56 = v66;
    sub_26F76FBB4(&v48, v57);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v57[0] = v10;
    v57[1] = v12;
    v57[2] = v13;
    v57[3] = v47;
    v57[4] = v16;
    v57[5] = v18;
    v57[6] = v31;
    v57[7] = v20;
    v57[8] = v22;
    v57[9] = v24;
    v57[10] = v26;
    v57[11] = v45;
    v57[12] = v28;
    v57[13] = v39;
    v58 = v44;
    v59 = v29;
    v60 = v8;
    v62 = v68;
    v61 = v67;
    v63 = v32;
    v64 = v69;
    sub_26F76F9E8(v57);
    v33 = v55;
    *(a2 + 96) = v54;
    *(a2 + 112) = v33;
    *(a2 + 128) = v56;
    v34 = v51;
    *(a2 + 32) = v50;
    *(a2 + 48) = v34;
    v35 = v53;
    *(a2 + 64) = v52;
    *(a2 + 80) = v35;
    v36 = v49;
    *a2 = v48;
    *(a2 + 16) = v36;
  }
}

unint64_t sub_26F7713CC()
{
  result = qword_2806EF970;
  if (!qword_2806EF970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF970);
  }

  return result;
}

uint64_t sub_26F771420(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806EF988, &qword_26F77CFE0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26F771490(uint64_t a1, _TtC8TrustKit22TrustKitUIServerClient *a2)
{
  v3 = sub_26F779618();
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

unint64_t sub_26F7714DC()
{
  result = qword_2806EF9A0;
  if (!qword_2806EF9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF9A0);
  }

  return result;
}

unint64_t sub_26F771530(uint64_t a1, _TtC8TrustKit22TrustKitUIServerClient *a2)
{
  v3 = sub_26F779618();
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

void sub_26F77157C(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_26F779898();
  LOBYTE(v14) = 0;
  sub_26F779678();
  LOBYTE(v14) = 1;
  v11[3] = sub_26F779678();
  LOBYTE(v14) = 2;
  v11[2] = sub_26F779678();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF988, &qword_26F77CFE0);
  v13 = 3;
  sub_26F771420(&qword_2806EF990, MEMORY[0x277D83808], MEMORY[0x277D839D0], MEMORY[0x277D83528]);
  sub_26F7796A8();
  v13 = 4;
  sub_26F7796A8();
  v13 = 5;
  v10 = v12;
  sub_26F7796A8();
  (*(v7 + 8))(v9, v10);
  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_26F7718E0()
{
  result = qword_2806EF9B0;
  if (!qword_2806EF9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF9B0);
  }

  return result;
}

unint64_t sub_26F77196C()
{
  result = qword_2806EF9C0;
  if (!qword_2806EF9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF9C0);
  }

  return result;
}

unint64_t sub_26F7719F8()
{
  result = qword_2806EF9C8;
  if (!qword_2806EF9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF9C8);
  }

  return result;
}

unint64_t sub_26F771A84()
{
  result = qword_2806EF9D0;
  if (!qword_2806EF9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EF9D0);
  }

  return result;
}

uint64_t sub_26F771AD8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806EF978, &qword_26F77CFD8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConfigurationsAsset.SignatureAnalysisConfig.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ConfigurationsAsset.SignatureAnalysisConfig.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_26F771CE8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_26F771D30(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_26F771D90()
{
  result = qword_2806EFA00;
  if (!qword_2806EFA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EFA00);
  }

  return result;
}

unint64_t sub_26F771DE8()
{
  result = qword_2806EFA08;
  if (!qword_2806EFA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EFA08);
  }

  return result;
}

unint64_t sub_26F771E40()
{
  result = qword_2806EFA10;
  if (!qword_2806EFA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EFA10);
  }

  return result;
}

unint64_t sub_26F771E98()
{
  result = qword_2806EFA18;
  if (!qword_2806EFA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EFA18);
  }

  return result;
}

unint64_t sub_26F771EF0()
{
  result = qword_2806EFA20;
  if (!qword_2806EFA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EFA20);
  }

  return result;
}

unint64_t sub_26F771F48()
{
  result = qword_2806EFA28;
  if (!qword_2806EFA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EFA28);
  }

  return result;
}

unint64_t sub_26F771FA0()
{
  result = qword_2806EFA30;
  if (!qword_2806EFA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EFA30);
  }

  return result;
}

unint64_t sub_26F771FF8()
{
  result = qword_2806EFA38;
  if (!qword_2806EFA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EFA38);
  }

  return result;
}

unint64_t sub_26F772050()
{
  result = qword_2806EFA40;
  if (!qword_2806EFA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EFA40);
  }

  return result;
}

unint64_t sub_26F7720A8()
{
  result = qword_2806EFA48;
  if (!qword_2806EFA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EFA48);
  }

  return result;
}

unint64_t sub_26F772100()
{
  result = qword_2806EFA50;
  if (!qword_2806EFA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EFA50);
  }

  return result;
}

unint64_t sub_26F772158()
{
  result = qword_2806EFA58;
  if (!qword_2806EFA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EFA58);
  }

  return result;
}

unint64_t sub_26F7721AC()
{
  result = qword_2806EFA68;
  if (!qword_2806EFA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EFA68);
  }

  return result;
}

unint64_t sub_26F772200()
{
  result = qword_2806EFA70;
  if (!qword_2806EFA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EFA70);
  }

  return result;
}

unint64_t sub_26F772254()
{
  result = qword_2806EFA80;
  if (!qword_2806EFA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EFA80);
  }

  return result;
}

unint64_t sub_26F7722A8()
{
  result = qword_2806EFA90;
  if (!qword_2806EFA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EFA90);
  }

  return result;
}

unint64_t sub_26F7722FC()
{
  result = qword_2806EFAA0;
  if (!qword_2806EFAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EFAA0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DaemonAnalyticsManager.Event(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DaemonAnalyticsManager.Event(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26F7724D4()
{
  result = qword_2806EFAB8;
  if (!qword_2806EFAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EFAB8);
  }

  return result;
}

unint64_t sub_26F77252C()
{
  result = qword_2806EFAC0;
  if (!qword_2806EFAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EFAC0);
  }

  return result;
}

unint64_t sub_26F772584()
{
  result = qword_2806EFAC8;
  if (!qword_2806EFAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EFAC8);
  }

  return result;
}

unint64_t sub_26F7725DC()
{
  result = qword_2806EFAD0;
  if (!qword_2806EFAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EFAD0);
  }

  return result;
}

unint64_t sub_26F772634()
{
  result = qword_2806EFAD8;
  if (!qword_2806EFAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EFAD8);
  }

  return result;
}

unint64_t sub_26F77268C()
{
  result = qword_2806EFAE0;
  if (!qword_2806EFAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EFAE0);
  }

  return result;
}

unint64_t sub_26F7726E4()
{
  result = qword_2806EFAE8;
  if (!qword_2806EFAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EFAE8);
  }

  return result;
}

unint64_t sub_26F77273C()
{
  result = qword_2806EFAF0;
  if (!qword_2806EFAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EFAF0);
  }

  return result;
}

unint64_t sub_26F772794()
{
  result = qword_2806EFAF8;
  if (!qword_2806EFAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EFAF8);
  }

  return result;
}

unint64_t sub_26F7727E8()
{
  result = qword_2806EFB08;
  if (!qword_2806EFB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EFB08);
  }

  return result;
}

unint64_t sub_26F772850()
{
  result = qword_2806EFB18;
  if (!qword_2806EFB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EFB18);
  }

  return result;
}

unint64_t sub_26F7728A8()
{
  result = qword_2806EFB20;
  if (!qword_2806EFB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EFB20);
  }

  return result;
}

unint64_t sub_26F772900()
{
  result = qword_2806EFB28;
  if (!qword_2806EFB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EFB28);
  }

  return result;
}

uint64_t sub_26F7729AC()
{

  v1 = OBJC_IVAR____TtC8TrustKit32SenderLookUpDecisioningComponent_logger;
  v2 = sub_26F779188();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_26F772A78(uint64_t a1)
{
  result = sub_26F779188();
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

uint64_t sub_26F772B70(uint64_t a1)
{
  result = type metadata accessor for SpamDecisioningAsset(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_26F772C04()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 processName];

  v2 = sub_26F779248();
  v4 = v3;

  qword_28141B5C8 = v2;
  unk_28141B5D0 = v4;
}

void sub_26F772CA8(uint64_t a1, uint64_t (*a2)(void), _BYTE *a3)
{
  v5 = MobileGestalt_get_current_device();
  if (v5)
  {
    v6 = v5;
    v7 = a2();

    *a3 = v7;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_26F772D00(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 128), a2, a3, a4, a5, a6, a7, a8;
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v8);
}

uint64_t sub_26F772D5C(uint64_t a1)
{
  result = sub_26F779188();
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

uint64_t sub_26F772E10()
{
  sub_26F769E10(v0 + qword_2806EFB58);
  v1 = qword_2806EFB70;
  v2 = sub_26F779188();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_26F772E88()
{
  sub_26F772E10();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ChangeTokenCache(uint64_t a1)
{
  result = qword_2806EFBF8;
  if (!qword_2806EFBF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26F772F6C(uint64_t a1)
{
  result = sub_26F779188();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26F772FD8(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;
  v9 = OBJC_IVAR____TtC8TrustKit23SignaturesSQLiteManager_logger;
  v10 = sub_26F779188();
  (*(*(v10 - 8) + 8))(v8 + v9, v10);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SignaturesSQLiteManager(uint64_t a1)
{
  result = qword_2806EFC10;
  if (!qword_2806EFC10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26F7730D0(uint64_t a1)
{
  result = sub_26F779188();
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

uint64_t sub_26F773188()
{
  sub_26F77331C(*(v0 + 16));
  v1 = OBJC_IVAR____TtC8TrustKit15LookUpOperation_logger;
  v2 = sub_26F779188();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LookUpOperation(uint64_t a1)
{
  result = qword_2806EFC28;
  if (!qword_2806EFC28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26F773280(uint64_t a1)
{
  result = sub_26F779188();
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

uint64_t sub_26F77331C(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_26F77332C()
{

  v1 = OBJC_IVAR____TtC8TrustKit15ReportOperation_logger;
  v2 = sub_26F779188();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ReportOperation(uint64_t a1)
{
  result = qword_2806EFC40;
  if (!qword_2806EFC40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26F773424(uint64_t a1)
{
  result = sub_26F779188();
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

uint64_t TKRecord.description.getter()
{
  v1 = v0;
  sub_26F7794F8();
  0xE000000000000000, v2, v3, v4, v5, v6, v7, v8;
  swift_beginAccess();
  v9 = v0[2];
  v10 = v0[3];

  MEMORY[0x274395240](v9, v10);
  v10, v11, v12, v13, v14, v15, v16, v17;
  MEMORY[0x274395240](0x64726F636572202CLL, 0xED00003D68736148);
  swift_beginAccess();
  v19 = v0[4];
  v18 = v1[5];
  sub_26F7546E4(v19, v18);
  v20 = sub_26F779028();
  v22 = v21;
  sub_26F74F35C(v19, v18);
  MEMORY[0x274395240](v20, v22);
  v22, v23, v24, v25, v26, v27, v28, v29;
  return 0x444964726F636572;
}

uint64_t TKRecord.__allocating_init(with:recordHash:)(uint64_t a1, _TtC8TrustKit22TrustKitUIServerClient *a2, uint64_t a3, unint64_t a4)
{
  v8 = swift_allocObject();
  TKRecord.init(with:recordHash:)(a1, a2, a3, a4);
  return v8;
}

void *TKRecord.init(with:recordHash:)(uint64_t a1, _TtC8TrustKit22TrustKitUIServerClient *a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v129 = a4;
  v123 = a3;
  v122 = a2;
  v119 = a1;
  v121 = *v4;
  v6 = sub_26F779188();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v120 = &v118 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for EligibilityManager(0);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v10 = OBJC_IVAR____TtC8TrustKit18EligibilityManager_logger;
  if (qword_28141B5A8 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v6, qword_28141B5F0);
  v12 = *(v7 + 16);
  v12(v9 + v10, v11, v6);
  v4[6] = v9;
  type metadata accessor for ClientAnalyticsManager(0);
  v13 = swift_allocObject();
  v14 = OBJC_IVAR____TtC8TrustKit22ClientAnalyticsManager_logger;
  if (qword_28141B5B0 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v6, qword_28141B608);
  v12(v13 + v14, v15, v6);
  v16 = OBJC_IVAR____TtC8TrustKit22ClientAnalyticsManager_eligibilityManager;
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  v12(v17 + OBJC_IVAR____TtC8TrustKit18EligibilityManager_logger, v11, v6);
  *(v13 + v16) = v17;
  v5[7] = v13;
  v18 = OBJC_IVAR____TtC8TrustKit8TKRecord_logger;
  if (qword_2806EF270 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v6, qword_2806F4920);
  v12(v5 + v18, v19, v6);
  memset(v127, 0, sizeof(v127));
  v128 = 1;

  v20 = sub_26F76A25C(0, v127);

  if (v20)
  {
    v28 = v122;
    v29 = (v122 >> 56) & 0xF;
    if ((v122 & 0x2000000000000000) == 0)
    {
      v29 = v119 & 0xFFFFFFFFFFFFLL;
    }

    if (!v29)
    {
      v122, v21, v22, v23, v24, v25, v26, v27;
      v40 = v120;
      v12(v120, v5 + v18, v6);
      v41 = sub_26F7793C8();
      v118 = 0x800000026F781190;
      v34 = 0xD000000000000013;
      sub_26F756E10(v41, 0xD000000000000013, 0x800000026F781190, 0xD000000000000051, 0x800000026F7810D0, 39);
      v42 = *(v7 + 8);
      v119 = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v122 = v42;
      (v42)(v40, v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF7E8, &qword_26F77C2F0);
      inited = swift_initStackObject();
      v44 = inited;
      *(inited + 16) = xmmword_26F77A180;
      *(inited + 32) = 0x644964726F636572;
      v37 = inited + 32;
      v45 = 0xEF64696C61766E49;
LABEL_22:
      *(inited + 40) = v45;
      sub_26F766F04();
      *(v44 + 48) = sub_26F779408();
      v38 = v18;
      v39 = sub_26F7693B4(v44);
      v33 = v118;
      goto LABEL_23;
    }

    v30 = v129 >> 62;
    if ((v129 >> 62) > 1)
    {
      if (v30 != 2)
      {
        goto LABEL_21;
      }

      v46 = *(v123 + 16);
      v47 = *(v123 + 24);
    }

    else
    {
      if (!v30)
      {
        if ((v129 & 0xFF000000000000) == 0)
        {
          goto LABEL_21;
        }

LABEL_25:
        v73 = v119;
        v5[2] = v119;
        v5[3] = v28;
        v74 = v123;
        v75 = v129;
        v5[4] = v123;
        v5[5] = v75;
        v124 = 0;
        v125 = 0;
        v126 = -1;
        v76 = v28;

        sub_26F7546E4(v74, v75);
        v77 = sub_26F74B1B0(0, 0, &v124);
        v77, v78, v79, v80, v81, v82, v83, v84;
        v85 = sub_26F7793B8();
        v124 = 0;
        v125 = 0xE000000000000000;
        sub_26F7794F8();
        v125, v86, v87, v88, v89, v90, v91, v92;
        v124 = 0xD00000000000001BLL;
        v125 = 0x800000026F781130;
        MEMORY[0x274395240](v73, v76);
        v76, v93, v94, v95, v96, v97, v98, v99;
        MEMORY[0x274395240](0x64726F636572202CLL, 0xED00003D68736148);
        v100 = sub_26F779028();
        v102 = v101;
        MEMORY[0x274395240](v100);
        v102, v103, v104, v105, v106, v107, v108, v109;
        MEMORY[0x274395240](32032, 0xE200000000000000);
        v110 = v125;
        sub_26F756E10(v85, v124, v125, 0xD000000000000051, 0x800000026F7810D0, 67);
        v110, v111, v112, v113, v114, v115, v116, v117;
        sub_26F74F35C(v74, v75);
        return v5;
      }

      v46 = v123;
      v47 = v123 >> 32;
    }

    if (v46 != v47)
    {
      goto LABEL_25;
    }

LABEL_21:
    v122, v21, v22, v23, v24, v25, v26, v27;
    v48 = v120;
    v12(v120, v5 + v18, v6);
    v49 = sub_26F7793C8();
    v118 = 0x800000026F781150;
    v34 = 0xD000000000000015;
    sub_26F756E10(v49, 0xD000000000000015, 0x800000026F781150, 0xD000000000000051, 0x800000026F7810D0, 51);
    v50 = *(v7 + 8);
    v119 = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v122 = v50;
    (v50)(v48, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF7E8, &qword_26F77C2F0);
    inited = swift_initStackObject();
    v44 = inited;
    *(inited + 16) = xmmword_26F77A180;
    v45 = 0x800000026F781170;
    *(inited + 32) = 0xD000000000000011;
    v37 = inited + 32;
    goto LABEL_22;
  }

  v122, v21, v22, v23, v24, v25, v26, v27;
  v31 = v120;
  v12(v120, v5 + v18, v6);
  v32 = sub_26F7793C8();
  v33 = 0x800000026F7810A0;
  v34 = 0xD000000000000029;
  sub_26F756E10(v32, 0xD000000000000029, 0x800000026F7810A0, 0xD000000000000051, 0x800000026F7810D0, 27);
  v35 = *(v7 + 8);
  v119 = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v122 = v35;
  (v35)(v31, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF7E8, &qword_26F77C2F0);
  v36 = swift_initStackObject();
  *(v36 + 16) = xmmword_26F77A180;
  *(v36 + 32) = 0x626967696C656E69;
  v37 = v36 + 32;
  *(v36 + 40) = 0xEA0000000000656CLL;
  sub_26F766F04();
  *(v36 + 48) = sub_26F779408();
  v38 = v18;
  v39 = sub_26F7693B4(v36);
LABEL_23:
  swift_setDeallocating();
  sub_26F774158(v37);
  v124 = v34;
  v125 = v33;
  v126 = 0;

  v51 = sub_26F74B1B0(0, v39, &v124);
  v51, v52, v53, v54, v55, v56, v57, v58;

  v39, v59, v60, v61, v62, v63, v64, v65;
  sub_26F75E47C(v124, v125, v126, v66, v67, v68, v69, v70);
  sub_26F74AEE0();
  swift_allocError();
  *v71 = v34;
  *(v71 + 8) = v33;
  *(v71 + 16) = 0;
  swift_willThrow();
  sub_26F74F35C(v123, v129);

  (v122)(v5 + v38, v6);
  swift_deallocPartialClassInstance();
  return v5;
}

uint64_t TKRecord.recordID.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t TKRecord.recordHash.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  sub_26F7546E4(v1, *(v0 + 40));
  return v1;
}

uint64_t TKRecord.deinit(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;
  sub_26F74F35C(*(v8 + 32), *(v8 + 40));

  v9 = OBJC_IVAR____TtC8TrustKit8TKRecord_logger;
  v10 = sub_26F779188();
  (*(*(v10 - 8) + 8))(v8 + v9, v10);
  return v8;
}

uint64_t TKRecord.__deallocating_deinit(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;
  sub_26F74F35C(*(v8 + 32), *(v8 + 40));

  v9 = OBJC_IVAR____TtC8TrustKit8TKRecord_logger;
  v10 = sub_26F779188();
  (*(*(v10 - 8) + 8))(v8 + v9, v10);

  return swift_deallocClassInstance();
}

uint64_t sub_26F774158(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF7F0, &qword_26F77C2F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for TKRecord(uint64_t a1)
{
  result = qword_2806EFC58;
  if (!qword_2806EFC58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26F774214(uint64_t a1)
{
  result = sub_26F779188();
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

uint64_t sub_26F774328()
{
  v1 = *v0;
  sub_26F779848();
  v2 = "Read_Check_Enabled";
  v3 = "it.inference.signature_analysis";
  if (v1 != 2)
  {
    v3 = "it.inference.logic_graph";
  }

  if (v1)
  {
    v2 = "it.inference.sender_look_up";
  }

  if (v1 <= 1)
  {
    v4 = v2;
  }

  else
  {
    v4 = v3;
  }

  sub_26F779298();
  (v4 | 0x8000000000000000), v5, v6, v7, v8, v9, v10, v11;
  return sub_26F779888();
}

void sub_26F7743E0(uint64_t a1)
{
  v2 = "it.inference.signature_analysis";
  if (*v1 != 2)
  {
    v2 = "it.inference.logic_graph";
  }

  if (*v1)
  {
    v3 = "it.inference.sender_look_up";
  }

  else
  {
    v3 = "Read_Check_Enabled";
  }

  if (*v1 <= 1u)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2;
  }

  sub_26F779298();

  (v4 | 0x8000000000000000), v5, v6, v7, v8, v9, v10, v11;
}

uint64_t sub_26F774484(uint64_t a1)
{
  v2 = *v1;
  sub_26F779848();
  v3 = "Read_Check_Enabled";
  v4 = "it.inference.signature_analysis";
  if (v2 != 2)
  {
    v4 = "it.inference.logic_graph";
  }

  if (v2)
  {
    v3 = "it.inference.sender_look_up";
  }

  if (v2 <= 1)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  sub_26F779298();
  (v5 | 0x8000000000000000), v6, v7, v8, v9, v10, v11, v12;
  return sub_26F779888();
}

unint64_t sub_26F774538@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26F774748(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_26F774568(unint64_t *a1@<X8>)
{
  v2 = "it.inference.signature_analysis";
  v3 = 0xD000000000000028;
  if (*v1 != 2)
  {
    v3 = 0xD00000000000001CLL;
    v2 = "it.inference.logic_graph";
  }

  v4 = 0xD00000000000002FLL;
  if (*v1)
  {
    v5 = "it.inference.sender_look_up";
  }

  else
  {
    v4 = 0xD00000000000002BLL;
    v5 = "Read_Check_Enabled";
  }

  if (*v1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v4 = v3;
    v6 = v2;
  }

  *a1 = v4;
  a1[1] = v6 | 0x8000000000000000;
}

uint64_t sub_26F7745E0()
{
  v1 = OBJC_IVAR____TtC8TrustKit22DaemonAnalyticsManager_logger;
  v2 = sub_26F779188();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DaemonAnalyticsManager(uint64_t a1)
{
  result = qword_2806EFC78;
  if (!qword_2806EFC78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_26F7746F4()
{
  result = qword_2806EFC88;
  if (!qword_2806EFC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EFC88);
  }

  return result;
}

unint64_t sub_26F774748(uint64_t a1, _TtC8TrustKit22TrustKitUIServerClient *a2)
{
  v3 = sub_26F779618();
  a2, v4, v5, v6, v7, v8, v9, v10;
  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_26F774794(uint64_t a1, _TtC8TrustKit22TrustKitUIServerClient *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF6F0, &qword_26F77C0D8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v29 - v9;
  sub_26F75E360(a3, v29 - v9);
  v11 = sub_26F779338();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_26F763768(v10, &qword_2806EF6F0, &qword_26F77C0D8);
  }

  else
  {
    sub_26F779328();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_26F7792E8();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_26F779288() + 32;

      if (v17 | v15)
      {
        v30[0] = 0;
        v30[1] = 0;
        v19 = v30;
        v30[2] = v15;
        v30[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v29[1] = 7;
      v29[2] = v19;
      v29[3] = v18;
      v20 = swift_task_create();

      sub_26F763768(a3, &qword_2806EF6F0, &qword_26F77C0D8);
      a2, v21, v22, v23, v24, v25, v26, v27;

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_26F763768(a3, &qword_2806EF6F0, &qword_26F77C0D8);
  if (v17 | v15)
  {
    v30[4] = 0;
    v30[5] = 0;
    v30[6] = v15;
    v30[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_26F774A30()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF6F0, &qword_26F77C0D8);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10 - v2;
  v4 = sub_26F779338();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = *(v0 + OBJC_IVAR____TtC8TrustKit13ReportManager_uafAssetManager);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v5;

  sub_26F774794(0, 0, v3, &unk_26F77E0B8, v6);

  sub_26F763768(v0 + OBJC_IVAR____TtC8TrustKit13ReportManager_reportingAsset, &qword_2806EFCE8, &unk_26F77E0C0);

  v7 = OBJC_IVAR____TtC8TrustKit13ReportManager_logger;
  v8 = sub_26F779188();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  return v0;
}

uint64_t sub_26F774C08()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26F748118;

  return sub_26F777ED0();
}

uint64_t sub_26F774C98()
{
  sub_26F774A30();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ReportManager(uint64_t a1)
{
  result = qword_2806EFCD0;
  if (!qword_2806EFCD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26F774D44(uint64_t a1)
{
  sub_26F774E30(319);
  if (v1 <= 0x3F)
  {
    sub_26F779188();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_26F774E30(uint64_t a1)
{
  if (!qword_2806EFCE0)
  {
    type metadata accessor for ReportingAsset(255);
    v1 = sub_26F779428();
    if (!v2)
    {
      atomic_store(v1, &qword_2806EFCE0);
    }
  }
}

uint64_t sub_26F774E88()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26F748118;

  return sub_26F774C08();
}

uint64_t sub_26F774F3C()
{

  v1 = OBJC_IVAR____TtC8TrustKit33AdHocSignaturesBackgroundActivity_logger;
  v2 = sub_26F779188();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AdHocSignaturesBackgroundActivity(uint64_t a1)
{
  result = qword_2806EFCF8;
  if (!qword_2806EFCF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26F77503C(uint64_t a1)
{
  result = sub_26F779188();
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

uint64_t withTimeout<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EFD08, &qword_26F77E178);
  inited = swift_initStackObject();
  v10[8] = inited;
  *(inited + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_2806EFD10, &qword_26F77E180);
  v13 = swift_initStackObject();
  v10[9] = v13;
  *(v13 + 16) = 0;
  type metadata accessor for Executor();
  v14 = swift_allocObject();
  v10[10] = v14;
  swift_defaultActor_initialize();
  *(v14 + 112) = 0;
  v15 = swift_task_alloc();
  v10[11] = v15;
  v15[2] = a6;
  v15[3] = a4;
  v15[4] = a5;
  v15[5] = v14;
  v15[6] = inited;
  v15[7] = a2;
  v15[8] = a3;
  v15[9] = v13;
  v16 = swift_task_alloc();
  v10[12] = v16;
  *(v16 + 16) = inited;
  *(v16 + 24) = v13;
  v17 = swift_task_alloc();
  v10[13] = v17;
  *v17 = v10;
  v17[1] = sub_26F7752B0;

  return MEMORY[0x282200838](a1, &unk_26F77E190, v15, sub_26F776A3C, v16, a6);
}

uint64_t sub_26F7752B0()
{
  v3 = *v0;

  swift_setDeallocating();

  swift_setDeallocating();

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_26F775474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v10;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  return MEMORY[0x2822009F8](sub_26F7754AC, 0, 0);
}

uint64_t sub_26F7754AC()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v10 = *(v0 + 56);
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  v4 = *(v0 + 24);
  v5 = *(v0 + 40);
  *(v3 + 16) = v1;
  *(v3 + 24) = v4;
  *(v3 + 40) = v5;
  *(v3 + 56) = v10;
  *(v3 + 72) = v2;
  v6 = swift_task_alloc();
  *(v0 + 96) = v6;
  *v6 = v0;
  v6[1] = sub_26F7755CC;
  v7 = *(v0 + 80);
  v8 = *(v0 + 16);

  return MEMORY[0x2822008A0](v8, 0, 0, 0xD000000000000011, 0x800000026F7813D0, sub_26F776BE0, v3, v7);
}

uint64_t sub_26F7755CC()
{
  v2 = *v1;
  *(v2 + 104) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26F775708, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_26F775708()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26F77576C(uint64_t a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v10 = v1[8];
  v9 = v1[9];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_26F748118;

  return sub_26F775474(a1, v4, v5, v6, v7, v8, v10, v9);
}

uint64_t sub_26F775858(uint64_t a1, void (*a2)(void, void, void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v39 = a8;
  v40 = a2;
  v42 = a5;
  v43 = a6;
  v41 = a3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806EF628, &unk_26F77B8D8);
  v44 = a9;
  v12 = sub_26F779318();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v31 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF6F0, &qword_26F77C0D8);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v31 - v17;
  sub_26F779358();
  v36 = sub_26F779338();
  v19 = *(v36 - 8);
  v35 = *(v19 + 56);
  v37 = v19 + 56;
  v35(v18, 1, 1, v36);
  v20 = a4;
  v33 = *(v13 + 16);
  v34 = v13 + 16;
  v32 = a1;
  v33(v15, a1, v12);
  v38 = a7;
  v21 = *(v13 + 80);
  v22 = v12;
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v24 = v40;
  v25 = v41;
  v23[4] = v44;
  v23[5] = v24;
  v23[6] = v25;
  v23[7] = v20;
  v40 = *(v13 + 32);
  v40(v23 + ((v21 + 64) & ~v21), v15, v12);

  v26 = sub_26F7761A0(0, 0, v18, &unk_26F77E218, v23);
  *(v42 + 16) = v26;

  v35(v18, 1, 1, v36);
  v33(v15, v32, v22);
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = 0;
  v28 = v43;
  v27[4] = v44;
  v27[5] = v28;
  v27[6] = v38;
  v27[7] = v26;
  v27[8] = v20;
  v40(v27 + ((v21 + 72) & ~v21), v15, v22);

  v29 = sub_26F774794(0, 0, v18, &unk_26F77E228, v27);
  *(v39 + 16) = v29;
}

uint64_t sub_26F775BD0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[3] = a7;
  v8[4] = a8;
  v8[2] = a6;
  v8[5] = *(a8 - 8);
  v10 = swift_task_alloc();
  v8[6] = v10;
  v13 = (a4 + *a4);
  v11 = swift_task_alloc();
  v8[7] = v11;
  *v11 = v8;
  v11[1] = sub_26F775D28;

  return v13(v10);
}

uint64_t sub_26F775D28()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_26F775F3C;
    v4 = 0;
  }

  else
  {
    v4 = *(v2 + 16);
    v3 = sub_26F775E44;
  }

  return MEMORY[0x2822009F8](v3, v4, 0);
}

uint64_t sub_26F775E44()
{
  v1 = v0[2];
  if ((*(v1 + 112) & 1) == 0)
  {
    *(v1 + 112) = sub_26F776040(v0[3], v0[6], v0[4]) & 1;
  }

  return MEMORY[0x2822009F8](sub_26F775EC4, 0, 0);
}

uint64_t sub_26F775EC4()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_26F775F58()
{
  v1 = v0[2];
  if ((*(v1 + 112) & 1) == 0)
  {
    *(v1 + 112) = sub_26F77612C(v0[3], v0[8], v0[4]) & 1;
  }

  return MEMORY[0x2822009F8](sub_26F775FD8, 0, 0);
}

uint64_t sub_26F775FD8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26F776040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806EF628, &unk_26F77B8D8);
  sub_26F779318();
  sub_26F779308();
  return 1;
}

uint64_t sub_26F77612C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x274395DF0](a2);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806EF628, &unk_26F77B8D8);
  sub_26F779318();
  sub_26F7792F8();
  return 1;
}

uint64_t sub_26F7761A0(uint64_t a1, _TtC8TrustKit22TrustKitUIServerClient *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF6F0, &qword_26F77C0D8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v32 - v10;
  sub_26F75E360(a3, v32 - v10);
  v12 = sub_26F779338();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_26F75E244(v11);
  }

  else
  {
    sub_26F779328();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_26F7792E8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_26F779288() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v33[0] = 0;
        v33[1] = 0;
        v21 = v33;
        v33[2] = v16;
        v33[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v32[1] = 7;
      v32[2] = v21;
      v32[3] = v19;
      v23 = swift_task_create();

      sub_26F75E244(a3);
      a2, v24, v25, v26, v27, v28, v29, v30;

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

  sub_26F75E244(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v33[4] = 0;
    v33[5] = 0;
    v33[6] = v16;
    v33[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_26F776460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v12;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  v9 = sub_26F7795B8();
  v8[8] = v9;
  v8[9] = *(v9 - 8);
  v8[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F776530, 0, 0);
}

uint64_t sub_26F776530(uint64_t a1)
{
  sub_26F7797C8();
  v2 = swift_task_alloc();
  v1[11] = v2;
  *v2 = v1;
  v2[1] = sub_26F7765F0;
  v4 = v1[2];
  v3 = v1[3];

  return sub_26F777094(v4, v3, 0, 0, 1);
}

uint64_t sub_26F7765F0()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  *(*v1 + 96) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_26F776864;
  }

  else
  {
    v5 = sub_26F776760;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26F776760()
{
  v1 = *(v0 + 40);
  sub_26F779348();

  return MEMORY[0x2822009F8](sub_26F7767E4, v1, 0);
}

uint64_t sub_26F7767E4()
{
  v1 = v0[5];
  if ((*(v1 + 112) & 1) == 0)
  {
    *(v1 + 112) = sub_26F7768C8(v0[6], v0[7]) & 1;
  }

  v2 = v0[1];

  return v2();
}

uint64_t sub_26F776864()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26F7768C8(uint64_t a1, uint64_t a2)
{
  sub_26F747008();
  swift_allocError();
  *v2 = 0xD000000000000014;
  *(v2 + 8) = 0x800000026F7813F0;
  *(v2 + 16) = 2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806EF628, &unk_26F77B8D8);
  sub_26F779318();
  sub_26F7792F8();
  return 1;
}

uint64_t sub_26F77697C(uint64_t result, uint64_t a2)
{
  if (*(result + 16))
  {

    sub_26F779348();
  }

  if (*(a2 + 16))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF628, &unk_26F77B8D8);
    sub_26F779348();
  }

  return result;
}

uint64_t sub_26F776A44(uint64_t a1)
{
  result = sub_26F779428();
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

uint64_t sub_26F776AD8()
{
  v1 = *(*v0 + 88);
  v2 = sub_26F779428();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_26F776BB0()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_26F776C14(uint64_t a1)
{
  v3 = v2;
  v5 = v1[4];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806EF628, &unk_26F77B8D8);
  v6 = *(sub_26F779318() - 8);
  v7 = (*(v6 + 80) + 64) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[5];
  v11 = v1[6];
  v12 = v1[7];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_26F748118;

  return sub_26F775BD0(a1, v8, v9, v10, v11, v12, v1 + v7, v5);
}

uint64_t sub_26F776D58(uint64_t a1)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806EF628, &unk_26F77B8D8);
  v4 = *(sub_26F779318() - 8);
  v5 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[5];
  v9 = v1[6];
  v10 = v1[7];
  v11 = v1[8];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_26F7486D8;

  return sub_26F776460(a1, v6, v7, v8, v9, v10, v11, v1 + v5);
}

uint64_t sub_26F776EA4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26F776F9C;

  return v6(a1);
}

uint64_t sub_26F776F9C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_26F777094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_26F7795A8();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_26F777194, 0, 0);
}

uint64_t sub_26F777194()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_26F7795B8();
  v5 = sub_26F77754C(&qword_28141B148, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_26F7797A8();
  sub_26F77754C(&qword_2806EFD98, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_26F7795C8();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_26F777324;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_26F777324()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26F7774E0, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_26F7774E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26F77754C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26F777594(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26F7486D8;

  return sub_26F776EA4(a1, v4);
}

unint64_t sub_26F777660()
{
  result = qword_2806EFDA0;
  if (!qword_2806EFDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806EFDA0);
  }

  return result;
}

uint64_t sub_26F7776B4()
{

  v1 = OBJC_IVAR____TtC8TrustKit28SignaturesBackgroundActivity_logger;
  v2 = sub_26F779188();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SignaturesBackgroundActivity(uint64_t a1)
{
  result = qword_2806EFDB0;
  if (!qword_2806EFDB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26F7777B4(uint64_t a1)
{
  result = sub_26F779188();
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

uint64_t sub_26F7779BC(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  *(v8 + 24), a2, a3, a4, a5, a6, a7, a8;
  v9 = OBJC_IVAR____TtC8TrustKit15JavaScriptAsset_logger;
  v10 = sub_26F779188();
  (*(*(v10 - 8) + 8))(v8 + v9, v10);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for JavaScriptAsset(uint64_t a1)
{
  result = qword_2806EFDC8;
  if (!qword_2806EFDC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26F777AB4(uint64_t a1)
{
  result = sub_26F779188();
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

uint64_t sub_26F777B50@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = [a1 userInfo];
  v9 = sub_26F7791F8();

  if (!*v9->endpoint || (v17 = sub_26F768DE0(0x736544726F727265, 0xE900000000000063), (v10 & 1) == 0))
  {
    v9, v10, v11, v12, v13, v14, v15, v16;
    goto LABEL_8;
  }

  sub_26F74B0EC(*v9[1].endpoint + 32 * v17, &v52);
  v9, v18, v19, v20, v21, v22, v23, v24;
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    *a4 = a2;
    *(a4 + 8) = a3;
    *(a4 + 16) = 2;
  }

  if ([a1 code] && objc_msgSend(a1, sel_code) != 14)
  {
    if ([a1 code] == 1)
    {
      v52 = a2;
      v53 = a3;

      MEMORY[0x274395240](2128672, 0xE300000000000000);
      MEMORY[0x274395240]();
      v51, v34, v35, v36, v37, v38, v39, v40;
      result = MEMORY[0x274395240](32032, 0xE200000000000000);
      v41 = v53;
      *a4 = v52;
      *(a4 + 8) = v41;
      v42 = 1;
    }

    else
    {
      v52 = a2;
      v53 = a3;

      MEMORY[0x274395240](2128672, 0xE300000000000000);
      MEMORY[0x274395240]();
      v51, v43, v44, v45, v46, v47, v48, v49;
      result = MEMORY[0x274395240](32032, 0xE200000000000000);
      v50 = v53;
      *a4 = v52;
      *(a4 + 8) = v50;
      v42 = 2;
    }

    *(a4 + 16) = v42;
  }

  else
  {
    v52 = a2;
    v53 = a3;

    MEMORY[0x274395240](2128672, 0xE300000000000000);
    MEMORY[0x274395240]();
    v51, v25, v26, v27, v28, v29, v30, v31;
    result = MEMORY[0x274395240](32032, 0xE200000000000000);
    v33 = v53;
    *a4 = v52;
    *(a4 + 8) = v33;
    *(a4 + 16) = 0;
  }

  return result;
}

uint64_t TKError.errorDescription.getter()
{
  v1 = *v0;
  sub_26F75E4D8(*v0, *(v0 + 8), *(v0 + 16));
  return v1;
}

uint64_t sub_26F777DE8()
{
  v1 = *v0;
  sub_26F75E4D8(*v0, *(v0 + 8), *(v0 + 16));
  return v1;
}

uint64_t sub_26F777E34(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_26F777E7C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_26F777EF0()
{
  v1 = v0[26];
  v2 = [objc_opt_self() sharedManager];
  v0[27] = v2;
  v0[28] = v1[6];
  v0[29] = v1[7];
  v3 = sub_26F779238();
  v0[30] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF678, &qword_26F77B988);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26F77A180;
  v5 = v1[8];
  v0[31] = v5;
  v6 = v1[9];
  v0[32] = v6;
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;

  v7 = sub_26F7792C8();
  v0[33] = v7;
  v4, v8, v9, v10, v11, v12, v13, v14;
  v0[2] = v0;
  v0[3] = sub_26F7780C4;
  v15 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806EF640, &qword_26F77E660);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_26F7526A8;
  v0[13] = &block_descriptor_2;
  v0[14] = v15;
  [v2 unsubscribe:v3 subscriptionNames:v7 queue:0 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_26F7780C4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 272) = v1;
  if (v1)
  {
    v2 = sub_26F7783E8;
  }

  else
  {
    v2 = sub_26F7781D4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26F7781D4()
{
  v2 = *(v0 + 256);
  v1 = *(v0 + 264);
  v3 = *(v0 + 240);
  v4 = *(v0 + 248);
  v6 = *(v0 + 224);
  v5 = *(v0 + 232);
  v7 = *(v0 + 208);

  v26 = sub_26F7793D8();
  sub_26F7794F8();
  MEMORY[0x274395240](0xD000000000000038, 0x800000026F781580);
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);
  sub_26F7794F8();
  MEMORY[0x274395240](0x7465537465737361, 0xED00003D656D614ELL);
  MEMORY[0x274395240](v8, v9);
  MEMORY[0x274395240](0x726373627573202CLL, 0xED00003D72656269);
  MEMORY[0x274395240](v6, v5);
  MEMORY[0x274395240](0xD000000000000013, 0x800000026F7814B0);
  MEMORY[0x274395240](v4, v2);
  MEMORY[0x274395240](0, 0xE000000000000000);
  0xE000000000000000, v10, v11, v12, v13, v14, v15, v16;
  MEMORY[0x274395240](2099281184, 0xE400000000000000);
  sub_26F756E10(v26, 0, 0xE000000000000000, 0xD000000000000054, 0x800000026F781520, 76);
  0xE000000000000000, v17, v18, v19, v20, v21, v22, v23;
  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_26F7783E8()
{
  v1 = v0[33];
  v2 = v0[32];
  v54 = v0[31];
  v4 = v0[29];
  v3 = v0[30];
  v5 = v0[27];
  v6 = v0[28];
  v7 = v0[26];
  v56 = v0[34];
  swift_willThrow();

  v57 = sub_26F7793C8();
  sub_26F7794F8();
  MEMORY[0x274395240](0xD00000000000002CLL, 0x800000026F7814D0);
  swift_getErrorValue();
  v8 = sub_26F7797F8();
  v10 = v9;
  MEMORY[0x274395240](v8);
  v10, v11, v12, v13, v14, v15, v16, v17;
  MEMORY[0x274395240](0xD000000000000017, 0x800000026F781500);
  v18 = *(v7 + 16);
  v19 = *(v7 + 24);
  v55 = v19;
  sub_26F7794F8();
  MEMORY[0x274395240](0x7465537465737361, 0xED00003D656D614ELL);
  MEMORY[0x274395240](v18, v19);
  MEMORY[0x274395240](0x726373627573202CLL, 0xED00003D72656269);
  MEMORY[0x274395240](v6, v4);
  MEMORY[0x274395240](0xD000000000000013, 0x800000026F7814B0);
  MEMORY[0x274395240](v54, v2);
  MEMORY[0x274395240](0, 0xE000000000000000);
  0xE000000000000000, v20, v21, v22, v23, v24, v25, v26;
  MEMORY[0x274395240](2099281184, 0xE400000000000000);
  sub_26F756E10(v57, 0, 0xE000000000000000, 0xD000000000000054, 0x800000026F781520, 78);
  0xE000000000000000, v27, v28, v29, v30, v31, v32, v33;
  sub_26F7794F8();
  MEMORY[0x274395240](0xD00000000000002CLL, 0x800000026F7814D0);
  swift_getErrorValue();
  v34 = sub_26F7797F8();
  v36 = v35;
  MEMORY[0x274395240](v34);
  v36, v37, v38, v39, v40, v41, v42, v43;
  MEMORY[0x274395240](0xD000000000000017, 0x800000026F781500);
  sub_26F7794F8();
  MEMORY[0x274395240](0x7465537465737361, 0xED00003D656D614ELL);
  MEMORY[0x274395240](v18, v55);
  MEMORY[0x274395240](0x726373627573202CLL, 0xED00003D72656269);
  MEMORY[0x274395240](v6, v4);
  MEMORY[0x274395240](0xD000000000000013, 0x800000026F7814B0);
  MEMORY[0x274395240](v54, v2);
  MEMORY[0x274395240](0, 0xE000000000000000);
  0xE000000000000000, v44, v45, v46, v47, v48, v49, v50;
  MEMORY[0x274395240](2099281184, 0xE400000000000000);
  sub_26F747008();
  swift_allocError();
  *v51 = 0;
  *(v51 + 8) = 0xE000000000000000;
  *(v51 + 16) = 7;
  swift_willThrow();

  v52 = v0[1];

  return v52();
}

uint64_t sub_26F778808()
{
  v1 = v0;
  sub_26F7794F8();
  0xE000000000000000, v2, v3, v4, v5, v6, v7, v8;
  MEMORY[0x274395240](*v1, v1[1]);
  MEMORY[0x274395240](0x447465737361202CLL, 0xEF3D4C5255617461);
  v9 = type metadata accessor for UAFAssetManager.AssetInfo(0);
  v10 = sub_26F778FE8();
  v12 = v11;
  MEMORY[0x274395240](v10);
  v12, v13, v14, v15, v16, v17, v18, v19;
  MEMORY[0x274395240](0x6F6973726576202CLL, 0xEA00000000003D6ELL);
  MEMORY[0x274395240](*(v1 + *(v9 + 24)), *(v1 + *(v9 + 24) + 8));
  MEMORY[0x274395240](32032, 0xE200000000000000);
  return 0x3D656D616E207BLL;
}

uint64_t sub_26F778918()
{
  v1 = v0;
  sub_26F7794F8();
  MEMORY[0x274395240](0x7465537465737361, 0xED00003D656D614ELL);
  MEMORY[0x274395240](*v1, v1[1]);
  MEMORY[0x274395240](0x726373627573202CLL, 0xED00003D72656269);
  MEMORY[0x274395240](v1[4], v1[5]);
  MEMORY[0x274395240](0xD000000000000013, 0x800000026F7814B0);
  MEMORY[0x274395240](v1[6], v1[7]);
  return 0;
}

uint64_t sub_26F7789F8(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v9 = v8[3];
  v10 = v8[5];
  v11 = v8[7];
  v8[9], a2, a3, a4, a5, a6, a7, a8;
  v11, v12, v13, v14, v15, v16, v17, v18;
  v10, v19, v20, v21, v22, v23, v24, v25;
  v9, v26, v27, v28, v29, v30, v31, v32;
  v33 = OBJC_IVAR____TtC8TrustKit15UAFAssetManager_logger;
  v34 = sub_26F779188();
  (*(*(v34 - 8) + 8))(v8 + v33, v34);

  return swift_deallocClassInstance();
}

uint64_t sub_26F778AF0(uint64_t a1)
{
  result = sub_26F779188();
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

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_26F778BA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_26F778BE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26F778C90(uint64_t a1)
{
  result = sub_26F779008();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26F778D24()
{

  v1 = OBJC_IVAR____TtC8TrustKit14DebugUIManager_logger;
  v2 = sub_26F779188();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DebugUIManager(uint64_t a1)
{
  result = qword_2806EFE08;
  if (!qword_2806EFE08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26F778E1C(uint64_t a1)
{
  result = sub_26F779188();
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