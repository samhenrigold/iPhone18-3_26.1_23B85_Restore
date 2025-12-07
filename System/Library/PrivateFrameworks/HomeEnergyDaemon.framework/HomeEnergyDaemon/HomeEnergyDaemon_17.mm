uint64_t sub_22B2F3CC4()
{

  return MEMORY[0x2822009F8](sub_22B2F45BC, 0, 0);
}

uint64_t sub_22B2F3DDC()
{
  (*(v0 + 184))(*(v0 + 128), *(v0 + 176), *(v0 + 112));
  v1 = sub_22B36050C();
  v2 = sub_22B360D1C();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 256);
  v5 = *(v0 + 200);
  v6 = *(v0 + 128);
  v7 = *(v0 + 112);
  if (v3)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_22B116000, v1, v2, "[IdentityRepair] Failed to find share in cd. Checking ck", v8, 2u);
    MEMORY[0x23188F650](v8, -1, -1);
  }

  v5(v6, v7);
  v9 = *(v0 + 224);

  v10 = sub_22B2EC234(MEMORY[0x277D84FA0], v9);

  if ((v10 & 0xC000000000000001) == 0)
  {
    if (*(v10 + 16))
    {
      v21 = 0;
      v25 = -1;
      v26 = -1 << *(v10 + 32);
      v19 = v10 + 56;
      if (-v26 < 64)
      {
        v25 = ~(-1 << -v26);
      }

      v22 = v25 & *(v10 + 56);
      *(v0 + 272) = v19;
      *(v0 + 280) = ~v26;
      v24 = 63 - v26;
      v23 = (v0 + 264);
      *(v0 + 264) = v10;
      goto LABEL_11;
    }

LABEL_21:

    goto LABEL_25;
  }

  if (!sub_22B36109C())
  {
    goto LABEL_21;
  }

  sub_22B36108C();
  sub_22B128014(0, &qword_281409318, 0x277CBC5F8);
  sub_22B202100();
  v11 = sub_22B360C7C();
  v10 = *(v0 + 16);
  v19 = *(v0 + 24);
  v20 = *(v0 + 32);
  v21 = *(v0 + 40);
  v22 = *(v0 + 48);
  *(v0 + 272) = v19;
  *(v0 + 280) = v20;
  v23 = (v0 + 264);
  *(v0 + 264) = v10;
  if ((v10 & 0x8000000000000000) == 0)
  {
    v24 = v20 + 64;
LABEL_11:
    v27 = v22;
    v28 = v21;
    if (!v22)
    {
      v29 = v24 >> 6;
      v30 = v21;
      while (1)
      {
        v28 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          break;
        }

        if (v28 >= v29)
        {
          goto LABEL_24;
        }

        v27 = *(v19 + 8 * v28);
        ++v30;
        if (v27)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
      return MEMORY[0x2822007B8](v11, v12, v13, v14, v15, v16, v17, v18);
    }

LABEL_16:
    v31 = (v27 - 1) & v27;
    v32 = *(*(v10 + 48) + ((v28 << 9) | (8 * __clz(__rbit64(v27)))));
LABEL_17:
    *(v0 + 296) = v28;
    *(v0 + 304) = v31;
    *(v0 + 288) = v32;
    if (v32)
    {
      v33 = swift_task_alloc();
      *(v0 + 312) = v33;
      *v33 = v0;
      v33[1] = sub_22B2F36D4;

      return sub_22B2EDA3C(v32);
    }

    goto LABEL_24;
  }

  v35 = sub_22B3610BC();
  if (v35)
  {
    *(v0 + 104) = v35;
    swift_dynamicCast();
    v32 = *(v0 + 96);
    v28 = v21;
    v31 = v22;
    goto LABEL_17;
  }

LABEL_24:
  sub_22B1A20B8(*v23);
LABEL_25:
  v36 = *(v0 + 88);
  if ((v36 & 0xC000000000000001) != 0)
  {
    v37 = sub_22B36109C();
    v38 = *(v0 + 224);
    if (v37)
    {
LABEL_27:

LABEL_28:
      (*(v0 + 184))(*(v0 + 136), *(v0 + 176), *(v0 + 112));
      v39 = sub_22B36050C();
      v40 = sub_22B360D1C();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_22B116000, v39, v40, "[IdentityRepair] Cleaning up shares", v41, 2u);
        MEMORY[0x23188F650](v41, -1, -1);
      }

      v42 = *(v0 + 200);
      v43 = *(v0 + 136);
      v44 = *(v0 + 112);

      v42(v43, v44);
      v45 = swift_task_alloc();
      *(v0 + 328) = v45;
      *(v45 + 16) = v0 + 88;
      v11 = swift_task_alloc();
      *(v0 + 336) = v11;
      *v11 = v0;
      v11[1] = sub_22B2F3CC4;
      v16 = sub_22B2F4428;
      v15 = 0x800000022B36DD10;
      v18 = MEMORY[0x277D84F78] + 8;
      v12 = 0;
      v13 = 0;
      v14 = 0xD00000000000002ALL;
      v17 = v45;

      return MEMORY[0x2822007B8](v11, v12, v13, v14, v15, v16, v17, v18);
    }
  }

  else
  {
    v38 = *(v0 + 224);
    if (*(v36 + 16))
    {
      goto LABEL_27;
    }
  }

  if ((v38 & 0xC000000000000001) != 0)
  {
    v46 = sub_22B36109C();

    if (!v46)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v47 = *(v38 + 16);

    if (!v47)
    {
      goto LABEL_28;
    }
  }

  (*(v0 + 184))(*(v0 + 144), *(v0 + 176), *(v0 + 112));
  v48 = sub_22B36050C();
  v49 = sub_22B360D1C();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&dword_22B116000, v48, v49, "[IdentityRepair] Failed to find share in cd or ck", v50, 2u);
    MEMORY[0x23188F650](v50, -1, -1);
  }

  v51 = *(v0 + 200);
  v52 = *(v0 + 144);
  v53 = *(v0 + 112);

  v51(v52, v53);

  v54 = *(v0 + 8);

  return v54();
}

uint64_t objectdestroy_15Tm_0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA288, &unk_22B363A10);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_22B2F450C(uint64_t a1, char a2, uint64_t (*a3)(uint64_t, void, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA288, &unk_22B363A10) - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a3(a1, a2 & 1, v7);
}

uint64_t sub_22B2F45C8(uint64_t a1, unint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BADB0, &qword_22B366F78);
  if (swift_dynamicCast())
  {
    sub_22B11A02C(__src, &v43);
    __swift_project_boxed_opaque_existential_1(&v43, v44);
    sub_22B35DA5C();
    __src[0] = v42;
    __swift_destroy_boxed_opaque_existential_0(&v43);
    goto LABEL_63;
  }

  v41 = 0;
  memset(__src, 0, sizeof(__src));
  sub_22B123284(__src, &qword_27D8BADB8, &unk_22B366F80);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_22B3611BC();
  }

  sub_22B306EFC(&v43, v4, v5);
  v6 = *(&v43 + 1);
  v7 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    __src[0] = v43;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_22B30CCEC(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20](*&__src[0]);
  v34[2] = v39;
  v10 = sub_22B306FC4(sub_22B30D2B8, v34);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_22B35DCAC();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v42 + 7) = 0;
  *&v42 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_22B307F94(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_22B36096C();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_22B36099C();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_22B3611BC();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_22B307F94(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_22B36097C();
LABEL_52:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      sub_22B35DCBC();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    sub_22B35DCBC();
    sub_22B11EDC0(v36, v6);
    goto LABEL_62;
  }

LABEL_57:

  sub_22B11EDC0(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_22B144B30(*&__src[0], *(&__src[0] + 1));

  sub_22B12F174(v32, *(&v32 + 1));
  return v32;
}

void sub_22B2F4AE8(void *a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD90, &qword_22B366F58);
  MEMORY[0x28223BE20](v4 - 8);
  v76 = &v71 - v5;
  v6 = sub_22B35FEDC();
  v77 = *(v6 - 8);
  v78 = v6;
  MEMORY[0x28223BE20](v6);
  v75 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD98, &qword_22B366F60);
  MEMORY[0x28223BE20](v8 - 8);
  v73 = &v71 - v9;
  v74 = sub_22B35FF1C();
  v10 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v72 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BADA0, &qword_22B366F68);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v71 - v13;
  v15 = sub_22B35FEFC();
  v16 = *(v15 - 8);
  *&v17 = MEMORY[0x28223BE20](v15).n128_u64[0];
  v19 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [a1 recordID];
  v21 = sub_22B36084C();
  v23 = v22;

  *a2 = v21;
  *(a2 + 1) = v23;
  v24 = [a1 meterID];
  v25 = sub_22B36084C();
  v27 = v26;

  *(a2 + 2) = v25;
  *(a2 + 3) = v27;
  v28 = [a1 start];
  v29 = type metadata accessor for CDIntervalBlocks(0);
  sub_22B35DE5C();

  v30 = [a1 end];
  sub_22B35DE5C();

  sub_22B35F4CC();
  sub_22B35FEEC();
  v31 = *(v16 + 48);
  if (v31(v14, 1, v15) == 1)
  {
    (*(v16 + 104))(v19, *MEMORY[0x277D07528], v15);
    if (v31(v14, 1, v15) != 1)
    {
      sub_22B123284(v14, &qword_27D8BADA0, &qword_22B366F68);
    }
  }

  else
  {
    (*(v16 + 32))(v19, v14, v15);
  }

  (*(v16 + 32))(&a2[v29[8]], v19, v15);
  sub_22B35F48C();
  v32 = v73;
  sub_22B35FF0C();
  v33 = *(v10 + 48);
  v34 = v74;
  if (v33(v32, 1, v74) == 1)
  {
    v35 = v72;
    (*(v10 + 104))(v72, *MEMORY[0x277D07530], v34);
    v36 = v35;
    v37 = v33(v32, 1, v34) == 1;
    v38 = v32;
    v40 = v77;
    v39 = v78;
    v41 = v76;
    if (!v37)
    {
      sub_22B123284(v38, &qword_27D8BAD98, &qword_22B366F60);
    }
  }

  else
  {
    v36 = v72;
    (*(v10 + 32))(v72, v32, v34);
    v40 = v77;
    v39 = v78;
    v41 = v76;
  }

  (*(v10 + 32))(&a2[v29[9]], v36, v34);
  sub_22B35F4AC();
  sub_22B35FECC();
  v42 = *(v40 + 48);
  if (v42(v41, 1, v39) == 1)
  {
    v43 = v75;
    (*(v40 + 104))(v75, *MEMORY[0x277D07500], v39);
    if (v42(v41, 1, v39) != 1)
    {
      sub_22B123284(v41, &qword_27D8BAD90, &qword_22B366F58);
    }
  }

  else
  {
    v43 = v75;
    (*(v40 + 32))(v75, v41, v39);
  }

  (*(v40 + 32))(&a2[v29[10]], v43, v39);
  sub_22B35FDCC();
  v44 = [a1 readings];
  v45 = sub_22B35DCDC();
  v47 = v46;

  v48 = sub_22B35FDBC();
  sub_22B12F174(v45, v47);
  *&a2[v29[17]] = v48;
  v49 = [a1 sourceTime];
  sub_22B35DE5C();

  v50 = [a1 zoneName];
  v51 = sub_22B36084C();
  v53 = v52;

  v54 = &a2[v29[12]];
  *v54 = v51;
  v54[1] = v53;
  v55 = [a1 utilityID];
  v56 = sub_22B36084C();
  v58 = v57;

  v59 = &a2[v29[13]];
  *v59 = v56;
  v59[1] = v58;
  v60 = [a1 subscriptionID];
  v61 = sub_22B36084C();
  v63 = v62;

  v64 = &a2[v29[14]];
  *v64 = v61;
  v64[1] = v63;
  v65 = [a1 usagePointID];
  v66 = sub_22B36084C();
  v68 = v67;

  v69 = &a2[v29[15]];
  *v69 = v66;
  v69[1] = v68;
  v70 = [a1 creationDate];
  sub_22B35DE5C();

  LOBYTE(v70) = [a1 preprocessed];
  a2[v29[18]] = v70;
}

void sub_22B2F52C8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t *a6@<X8>)
{
  sub_22B35F4EC();
  v9 = sub_22B35F47C();
  [v9 setResultType_];
  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_22B3634C0;
  v11 = MEMORY[0x277D837D0];
  *(v10 + 56) = MEMORY[0x277D837D0];
  v12 = sub_22B1280E4();
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;
  *(v10 + 96) = v11;
  *(v10 + 104) = v12;
  *(v10 + 64) = v12;
  *(v10 + 72) = a3;
  *(v10 + 80) = a4;

  v13 = sub_22B360CCC();
  [v9 setPredicate_];
  v14 = sub_22B360E8C();
  if (v19)
  {
  }

  else
  {
    v15 = v14;
    [a5 reset];

    *a6 = v15;
  }
}

void sub_22B2F5454(char *a1, void *a2, char *a3, int *a4, char *a5, int *a6, char *a7, void (**a8)(char *, uint64_t), unsigned __int8 a9, uint64_t a10, uint64_t a11)
{
  v280 = a8;
  v274 = a6;
  v268 = a5;
  v259 = a4;
  v258 = a3;
  v255 = a2;
  v277 = sub_22B35F00C();
  v265 = *(v277 - 8);
  MEMORY[0x28223BE20](v277);
  v269 = &v235 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v257 = &v235 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BADC8, &unk_22B366F90);
  MEMORY[0x28223BE20](v16 - 8);
  v263 = &v235 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v270 = &v235 - v19;
  MEMORY[0x28223BE20](v20);
  v264 = &v235 - v21;
  v292 = sub_22B35DE9C();
  v256 = *(v292 - 1);
  MEMORY[0x28223BE20](v292);
  v273 = &v235 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v272 = &v235 - v24;
  MEMORY[0x28223BE20](v25);
  v286 = &v235 - v26;
  MEMORY[0x28223BE20](v27);
  v267 = &v235 - v28;
  v266 = sub_22B3603AC();
  v237 = *(v266 - 8);
  MEMORY[0x28223BE20](v266);
  v285 = &v235 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v278 = sub_22B35FEBC();
  v241 = *(v278 - 8);
  MEMORY[0x28223BE20](v278);
  v279 = &v235 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v275 = sub_22B36052C();
  v281 = *(v275 - 1);
  MEMORY[0x28223BE20](v275);
  v289 = &v235 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v240 = &v235 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA078, &unk_22B362BB0);
  MEMORY[0x28223BE20](v34);
  v260 = (&v235 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v36);
  v261 = &v235 - v37;
  MEMORY[0x28223BE20](v38);
  v262 = (&v235 - v39);
  MEMORY[0x28223BE20](v40);
  v282 = &v235 - v41;
  MEMORY[0x28223BE20](v42);
  v283 = (&v235 - v43);
  MEMORY[0x28223BE20](v44);
  v284 = (&v235 - v45);
  MEMORY[0x28223BE20](v46);
  v287 = &v235 - v47;
  MEMORY[0x28223BE20](v48);
  v288 = &v235 - v49;
  MEMORY[0x28223BE20](v50);
  v290 = (&v235 - v51);
  *&v53 = MEMORY[0x28223BE20](v52).n128_u64[0];
  v291 = &v235 - v54;
  v252 = a1;
  [a1 refreshAllObjects];
  v271 = sub_22B35F4EC();
  v55 = sub_22B35F47C();
  [v55 setResultType_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD10, &qword_22B363A30);
  v56 = swift_allocObject();
  v57 = MEMORY[0x277D837D0];
  v239 = xmmword_22B3634B0;
  *(v56 + 16) = xmmword_22B3634B0;
  *(v56 + 56) = v57;
  *(v56 + 32) = 0x73676E6964616572;
  *(v56 + 40) = 0xE800000000000000;
  v58 = sub_22B360A3C();

  [v55 setPropertiesToFetch_];

  v59 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v60 = sub_22B36081C();
  v61 = [v59 initWithKey:v60 ascending:0];

  v62 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v63 = sub_22B36081C();
  v64 = [v62 initWithKey:v63 ascending:0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_22B363950;
  *(v65 + 32) = v61;
  *(v65 + 40) = v64;
  sub_22B128014(0, &qword_281409308, 0x277CCAC98);
  v244 = v61;
  v243 = v64;
  v66 = sub_22B360A3C();

  v251 = v55;
  [v55 setSortDescriptors_];

  v297 = MEMORY[0x277D84F90];
  v67 = sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_22B364620;
  v70 = MEMORY[0x277D837D0];
  *(v69 + 56) = MEMORY[0x277D837D0];
  v71 = sub_22B1280E4();
  v72 = v258;
  *(v69 + 32) = v255;
  *(v69 + 40) = v72;
  *(v69 + 96) = v70;
  *(v69 + 104) = v71;
  v73 = v259;
  *(v69 + 64) = v71;
  *(v69 + 72) = v73;
  *(v69 + 80) = v268;

  v74 = sub_22B360C8C();
  *(v69 + 136) = sub_22B128014(0, &qword_281409278, 0x277CCABB0);
  *(v69 + 144) = sub_22B176FAC(&qword_27D8BAD48, &qword_281409278, 0x277CCABB0);
  *(v69 + 112) = v74;
  v259 = v67;
  v75 = sub_22B360CCC();
  MEMORY[0x23188E350]();
  if (*((v297 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v297 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_98;
  }

  while (1)
  {
    v242 = v75;
    sub_22B360A9C();
    v258 = "D = %@ AND usageSummaryID = %@";
    v238 = v68;
    v76 = swift_allocObject();
    *(v76 + 16) = xmmword_22B365780;
    sub_22B170BE0(a7, v291, &qword_27D8BA078, &unk_22B362BB0);
    v255 = v34[12];
    v77 = sub_22B35DDDC();
    v78 = sub_22B128014(0, &qword_281408558, 0x277CBEAA8);
    *(v76 + 56) = v78;
    v79 = sub_22B176FAC(&qword_281408550, &qword_281408558, 0x277CBEAA8);
    *(v76 + 64) = v79;
    *(v76 + 32) = v77;
    sub_22B170BE0(a7, v290, &qword_27D8BA078, &unk_22B362BB0);
    v254 = v34[12];
    v80 = sub_22B35DDDC();
    *(v76 + 96) = v78;
    *(v76 + 104) = v79;
    *(v76 + 72) = v80;
    sub_22B170BE0(a7, v288, &qword_27D8BA078, &unk_22B362BB0);
    v253 = v34[12];
    v81 = sub_22B35DDDC();
    *(v76 + 136) = v78;
    *(v76 + 144) = v79;
    *(v76 + 112) = v81;
    sub_22B170BE0(a7, v287, &qword_27D8BA078, &unk_22B362BB0);
    v250 = v34[12];
    v82 = sub_22B35DDDC();
    *(v76 + 176) = v78;
    *(v76 + 184) = v79;
    *(v76 + 152) = v82;
    sub_22B170BE0(a7, v284, &qword_27D8BA078, &unk_22B362BB0);
    v249 = v34[12];
    v83 = sub_22B35DDDC();
    *(v76 + 216) = v78;
    *(v76 + 224) = v79;
    *(v76 + 192) = v83;
    sub_22B170BE0(a7, v283, &qword_27D8BA078, &unk_22B362BB0);
    v248 = v34[12];
    v84 = sub_22B35DDDC();
    *(v76 + 256) = v78;
    *(v76 + 264) = v79;
    *(v76 + 232) = v84;
    sub_22B170BE0(a7, v282, &qword_27D8BA078, &unk_22B362BB0);
    v247 = v34[12];
    v85 = sub_22B35DDDC();
    *(v76 + 296) = v78;
    *(v76 + 304) = v79;
    *(v76 + 272) = v85;
    v86 = v262;
    sub_22B170BE0(a7, v262, &qword_27D8BA078, &unk_22B362BB0);
    v246 = v34[12];
    v87 = sub_22B35DDDC();
    *(v76 + 336) = v78;
    *(v76 + 344) = v79;
    *(v76 + 312) = v87;
    v88 = v261;
    sub_22B170BE0(a7, v261, &qword_27D8BA078, &unk_22B362BB0);
    v245 = v34[12];
    v89 = sub_22B35DDDC();
    *(v76 + 376) = v78;
    *(v76 + 384) = v79;
    *(v76 + 352) = v89;
    v268 = a7;
    v90 = a7;
    v91 = v260;
    sub_22B170BE0(v90, v260, &qword_27D8BA078, &unk_22B362BB0);
    v274 = v34;
    v92 = v34[12];
    v93 = sub_22B35DDDC();
    *(v76 + 416) = v78;
    *(v76 + 424) = v79;
    *(v76 + 392) = v93;
    v94 = v256 + 8;
    v95 = *(v256 + 8);
    v96 = v292;
    v95(v91 + v92, v292);
    v95(v91, v96);
    v95(v88 + v245, v96);
    v95(v88, v96);
    v95(v86 + v246, v96);
    v95(v86, v96);
    v97 = v282;
    v95(v282 + v247, v96);
    v95(v97, v96);
    v98 = v283;
    v95(v248 + v283, v96);
    v95(v98, v96);
    v99 = v284;
    v95(v284 + v249, v96);
    v95(v99, v96);
    v100 = v287;
    v95(v250 + v287, v96);
    v95(v100, v96);
    v101 = v288;
    v95(v288 + v253, v96);
    v95(v101, v96);
    v102 = v290;
    v95(v290 + v254, v96);
    v95(v102, v96);
    v103 = v291;
    v95(v255 + v291, v96);
    v291 = v94;
    v290 = v95;
    v95(v103, v96);
    v104 = sub_22B360CCC();
    MEMORY[0x23188E350]();
    if (*((v297 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v297 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22B360A7C();
    }

    v248 = v104;
    sub_22B360A9C();
    v105 = v297;
    v106 = v275;
    v75 = v280;
    if (v280)
    {
      a7 = v252;
      v107 = v281;
      if (v280[2])
      {
        v108 = qword_28140A0C8;

        if (v108 != -1)
        {
LABEL_100:
          swift_once();
        }

        v109 = __swift_project_value_buffer(v106, qword_28140BD10);
        swift_beginAccess();
        v110 = v240;
        (*(v107 + 16))(v240, v109, v106);

        v111 = sub_22B36050C();
        v112 = sub_22B360D2C();

        if (os_log_type_enabled(v111, v112))
        {
          v113 = swift_slowAlloc();
          v114 = swift_slowAlloc();
          v295 = v114;
          *v113 = 136315138;
          v115 = MEMORY[0x23188E390](v280, MEMORY[0x277D837D0]);
          v117 = sub_22B1A7B20(v115, v116, &v295);

          *(v113 + 4) = v117;
          _os_log_impl(&dword_22B116000, v111, v112, "[IntervalReadingRecords] Excluding meters %s", v113, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v114);
          v118 = v114;
          v107 = v281;
          MEMORY[0x23188F650](v118, -1, -1);
          v119 = v113;
          v75 = v280;
          MEMORY[0x23188F650](v119, -1, -1);
        }

        (*(v107 + 8))(v110, v106);
        v120 = swift_allocObject();
        *(v120 + 16) = v239;
        *(v120 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA0A0, &qword_22B362BD0);
        *(v120 + 64) = sub_22B30D340(&qword_27D8BADD0, MEMORY[0x277CC9C50]);
        *(v120 + 32) = v75;
        v121 = sub_22B360CCC();
        MEMORY[0x23188E350]();
        if (*((v297 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v297 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_22B360A7C();
        }

        sub_22B360A9C();

        v105 = v297;
        a7 = v252;
      }
    }

    else
    {
      a7 = v252;
      v107 = v281;
    }

    v122 = objc_allocWithZone(MEMORY[0x277CCA920]);
    v123 = sub_22B360A3C();
    v124 = [v122 initWithType:1 subpredicates:v123];

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v125 = __swift_project_value_buffer(v106, qword_28140BD10);
    swift_beginAccess();
    (*(v107 + 16))(v289, v125, v106);
    v68 = v124;
    v126 = sub_22B36050C();
    v127 = sub_22B360D2C();

    v128 = os_log_type_enabled(v126, v127);
    v34 = v251;
    if (v128)
    {
      v129 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      *v129 = 138412290;
      *(v129 + 4) = v68;
      *v130 = v68;
      v131 = v68;
      _os_log_impl(&dword_22B116000, v126, v127, "[IntervalReadingRecords] Fetching records using predicate %@", v129, 0xCu);
      sub_22B123284(v130, &unk_27D8BAA90, &unk_22B362BC0);
      v132 = v130;
      v107 = v281;
      MEMORY[0x23188F650](v132, -1, -1);
      MEMORY[0x23188F650](v129, -1, -1);
    }

    v133 = *(v107 + 8);
    v107 += 8;
    v133(v289, v106);
    [v34 setPredicate_];
    [v34 setFetchBatchSize_];
    [v34 setReturnsObjectsAsFaults_];
    v75 = v271;
    v134 = v276;
    v135 = sub_22B360E9C();
    v250 = v134;
    if (v134)
    {
      goto LABEL_18;
    }

    v136 = v135 >> 62 ? sub_22B36109C() : *((v135 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (v136 < 1)
    {
      goto LABEL_18;
    }

    v296 = MEMORY[0x23188E590](v136, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
    v137 = v250;
    v138 = sub_22B360E9C();
    v250 = v137;
    if (v137)
    {

LABEL_18:

      goto LABEL_19;
    }

    *&v239 = v138;
    v139 = v138 >> 62 ? sub_22B36109C() : *((v138 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v139)
    {
      break;
    }

    v140 = 0;
    v247 = v239 & 0xC000000000000001;
    v236 = v239 & 0xFFFFFFFFFFFFFF8;
    v235 = v239 + 32;
    v271 = a11;
    v261 = a10;
    v281 = v241 + 16;
    v284 = (v237 + 8);
    v258 = (v265 + 16);
    v276 = (v265 + 56);
    v262 = (v265 + 32);
    v275 = (v256 + 16);
    v249 = v265 + 40;
    v260 = (v265 + 48);
    v280 = (v241 + 8);
    LODWORD(v259) = a9;
    v246 = v105;
    v238 = v68;
    v245 = v139;
    while (1)
    {
      if (v247)
      {
        v141 = MEMORY[0x23188EAC0](v140, v239);
      }

      else
      {
        if (v140 >= *(v236 + 16))
        {
          __break(1u);
          goto LABEL_100;
        }

        v141 = *(v235 + 8 * v140);
      }

      v142 = v141;
      v143 = __OFADD__(v140, 1);
      v144 = v140 + 1;
      if (v143)
      {
        goto LABEL_97;
      }

      v254 = v144;
      v253 = MEMORY[0x23188EEB0]();
      v145 = v296;
      v255 = v142;
      v146 = [v142 recordID];
      v107 = sub_22B36084C();
      v148 = v147;

      if (*(v145 + 16))
      {
        sub_22B36149C();
        sub_22B3608FC();
        v149 = sub_22B3614DC();
        v150 = -1 << *(v145 + 32);
        v151 = v149 & ~v150;
        if ((*(v145 + 56 + ((v151 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v151))
        {
          v106 = ~v150;
          while (1)
          {
            v152 = (*(v145 + 48) + 16 * v151);
            v153 = *v152 == v107 && v152[1] == v148;
            if (v153 || (sub_22B36134C() & 1) != 0)
            {
              break;
            }

            v151 = (v151 + 1) & v106;
            if (((*(v145 + 56 + ((v151 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v151) & 1) == 0)
            {
              goto LABEL_45;
            }
          }

LABEL_93:
          v75 = v255;
          goto LABEL_30;
        }
      }

LABEL_45:

      v75 = v255;
      v154 = [v255 recordID];
      v155 = sub_22B36084C();
      v157 = v156;

      sub_22B32DF50(&v295, v155, v157);

      sub_22B35FDCC();
      v158 = [v75 readings];
      v107 = sub_22B35DCDC();
      v160 = v159;

      v161 = sub_22B35FDBC();
      sub_22B12F174(v107, v160);
      v162 = *(v161 + 16);
      if (v162)
      {
        break;
      }

LABEL_30:
      objc_autoreleasePoolPop(v253);

      v140 = v254;
      if (v254 == v245)
      {
        goto LABEL_94;
      }
    }

    v163 = (*(v241 + 80) + 32) & ~*(v241 + 80);
    v240 = v161;
    v164 = v161 + v163;
    v282 = *(v241 + 72);
    v283 = *(v241 + 16);
    v106 = v267;
    v165 = v266;
    v166 = v279;
    v167 = v278;
    while (1)
    {
      v289 = v162;
      v288 = v164;
      v169 = v283(v166);
      v287 = MEMORY[0x23188EEB0](v169);
      v170 = v285;
      sub_22B35FE2C();
      sub_22B36038C();
      v171 = *v284;
      (*v284)(v170, v165);
      v107 = sub_22B306EB4(&qword_28140B490, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
      v172 = v292;
      v173 = sub_22B36074C();
      v290(v106, v172);
      if ((v173 & 1) == 0)
      {
        v174 = v285;
        sub_22B35FDEC();
        sub_22B36038C();
        v167 = v278;
        v171(v174, v165);
        v175 = v292;
        v176 = sub_22B36074C();
        v290(v106, v175);
        if ((v176 & 1) == 0)
        {
          break;
        }
      }

LABEL_48:
      objc_autoreleasePoolPop(v287);
      (*v280)(v166, v167);
      v164 = v288 + v282;
      v162 = v289 - 1;
      if (v289 == 1)
      {

        a7 = v252;
        v34 = v251;
        v68 = v238;
        goto LABEL_93;
      }
    }

    v177 = v285;
    sub_22B35FE2C();
    sub_22B36038C();
    v171(v177, v165);
    if (v259 > 1)
    {
      v68 = v277;
      a7 = v292;
      v34 = v271;
      if (v259 == 2)
      {
        sub_22B35F5DC();
      }

      else
      {
        sub_22B35F56C();
      }
    }

    else
    {
      v68 = v277;
      a7 = v292;
      v34 = v271;
      if (v259)
      {
        sub_22B35F50C();
      }

      else
      {
        sub_22B35F51C();
      }
    }

    v178 = v260;
    v290(v106, a7);
    v179 = *v34;
    if (*(*v34 + 16))
    {
      v180 = sub_22B33B348(v286);
      if (v181)
      {
        v182 = *(v179 + 56);
        v183 = v265;
        v184 = *(v265 + 72);
        v185 = v264;
        (*(v265 + 16))(v264, v182 + v184 * v180, v68);
        v75 = *(v183 + 56);
        (v75)(v185, 0, 1, v68);
        sub_22B123284(v185, &qword_27D8BADC8, &unk_22B366F90);
        goto LABEL_72;
      }
    }

    v75 = *v276;
    v186 = v264;
    (*v276)(v264, 1, 1, v68);
    sub_22B123284(v186, &qword_27D8BADC8, &unk_22B366F90);
    v187 = v257;
    sub_22B35EFDC();
    v188 = *v262;
    (*v262)(v269, v187, v68);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v295 = *v34;
    v190 = v295;
    *v34 = 0x8000000000000000;
    v191 = sub_22B33B348(v286);
    v193 = *(v190 + 16);
    v194 = (v192 & 1) == 0;
    v143 = __OFADD__(v193, v194);
    v195 = v193 + v194;
    if (!v143)
    {
      v196 = v192;
      if (*(v190 + 24) >= v195)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_66;
        }

        v199 = v191;
        sub_22B342B94();
        v191 = v199;
        v198 = v295;
        if ((v196 & 1) == 0)
        {
          goto LABEL_69;
        }

LABEL_67:
        v184 = *(v265 + 72);
        v68 = v277;
        (*(v265 + 40))(v198[7] + v184 * v191, v269, v277);
      }

      else
      {
        sub_22B33EAE4(v195, isUniquelyReferenced_nonNull_native);
        v191 = sub_22B33B348(v286);
        if ((v196 & 1) != (v197 & 1))
        {
          sub_22B3613BC();
          __break(1u);
          return;
        }

LABEL_66:
        v198 = v295;
        if (v196)
        {
          goto LABEL_67;
        }

LABEL_69:
        v198[(v191 >> 6) + 8] |= 1 << v191;
        v200 = v191;
        (*(v256 + 16))(v198[6] + *(v256 + 72) * v191, v286, a7);
        v184 = *(v265 + 72);
        v68 = v277;
        v188(v198[7] + v184 * v200, v269, v277);
        v201 = v198[2];
        v143 = __OFADD__(v201, 1);
        v202 = v201 + 1;
        if (v143)
        {
          goto LABEL_96;
        }

        v198[2] = v202;
      }

      *v34 = v198;

LABEL_72:
      v203 = *v34;
      if (*(*v34 + 16) && (v204 = sub_22B33B348(v286), (v205 & 1) != 0))
      {
        v206 = *(v203 + 56) + v184 * v204;
        v207 = v270;
        (*v258)(v270, v206, v68);
        v208 = 0;
      }

      else
      {
        v208 = 1;
        v207 = v270;
      }

      (v75)(v207, v208, 1, v68);
      v209 = *v178;
      if (!(*v178)(v207, 1, v68))
      {
        sub_22B35EFEC();
        v207 = v270;
      }

      sub_22B123284(v207, &qword_27D8BADC8, &unk_22B366F90);
      sub_22B35FE4C();
      v210 = *v275;
      (*v275)(v272, v286, v292);
      v211 = sub_22B2F781C(&v295);
      if (!v209(v212, 1, v68))
      {
        sub_22B35EFFC();
      }

      (v211)(&v295, 0);
      v167 = v278;
      v290(v272, v292);
      v213 = *v34;
      v214 = v277;
      if (*(*v34 + 16) && (v215 = sub_22B33B348(v286), (v216 & 1) != 0))
      {
        v217 = *(v213 + 56) + v184 * v215;
        v218 = v263;
        (*v258)(v263, v217, v214);
        v219 = 0;
      }

      else
      {
        v219 = 1;
        v218 = v263;
      }

      (v75)(v218, v219, 1, v214);
      v220 = 0.0;
      v221 = v214;
      if (!v209(v218, 1, v214))
      {
        v222 = sub_22B35FE0C();
        v223 = sub_22B35EFCC();
        if (*(v223 + 16))
        {
          v224 = sub_22B33B41C(v222);
          if (v225)
          {
            v220 = *(*(v223 + 56) + 8 * v224);
          }
        }

        v221 = v277;
      }

      sub_22B123284(v218, &qword_27D8BADC8, &unk_22B366F90);
      sub_22B35FE4C();
      v227 = v226;
      v210(v273, v286, v292);
      v228 = sub_22B2F781C(&v295);
      if (!v209(v229, 1, v221))
      {
        v230 = sub_22B35FE0C();
        v231 = sub_22B35EFBC();
        v233 = v232;
        v234 = swift_isUniquelyReferenced_nonNull_native();
        v293 = *v233;
        *v233 = 0x8000000000000000;
        sub_22B33FC20(v230, v234, v220 + v227);
        *v233 = v293;

        v231(v294, 0);
      }

      (v228)(&v295, 0);
      v107 = v292;
      v168 = v290;
      v290(v273, v292);
      v168(v286, v107);
      v106 = v267;
      v165 = v266;
      v166 = v279;
      goto LABEL_48;
    }

    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    sub_22B360A7C();
  }

LABEL_94:

  [a7 reset];

LABEL_19:
}

uint64_t (*sub_22B2F781C(uint64_t *a1))()
{
  v2 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = sub_22B35DE9C();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[5] = v6;
  if (v2)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v6 + 64));
  }

  v9 = v8;
  v4[6] = v8;
  (*(v7 + 16))();
  v4[7] = sub_22B30751C(v4, v9);
  return sub_22B2F7934;
}

void sub_22B2F7934(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  (*(*a1 + 56))(*a1, 0);
  (*(v4 + 8))(v2, v3);
  free(v2);

  free(v1);
}

void sub_22B2F79AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void **a8)
{
  v52 = a6;
  v46 = a7;
  v47 = a8;
  v50 = a4;
  v51 = a5;
  v49 = a3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD88, &qword_22B366F50);
  MEMORY[0x28223BE20](v10 - 8);
  v45 = &v44 - v11;
  sub_22B35F4EC();
  v12 = sub_22B35F47C();
  [v12 setResultType_];
  v13 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v14 = sub_22B36081C();
  v15 = [v13 initWithKey:v14 ascending:0];

  v16 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v17 = sub_22B36081C();
  v18 = [v16 initWithKey:v17 ascending:0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_22B363950;
  *(v19 + 32) = v15;
  *(v19 + 40) = v18;
  sub_22B128014(0, &qword_281409308, 0x277CCAC98);
  v48 = v15;
  v54 = v18;
  v20 = sub_22B360A3C();

  [v12 setSortDescriptors_];

  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_22B364840;
  *(v21 + 56) = MEMORY[0x277D837D0];
  *(v21 + 64) = sub_22B1280E4();
  *(v21 + 32) = a1;
  *(v21 + 40) = a2;

  v22 = sub_22B360C8C();
  *(v21 + 96) = sub_22B128014(0, &qword_281409278, 0x277CCABB0);
  *(v21 + 104) = sub_22B176FAC(&qword_27D8BAD48, &qword_281409278, 0x277CCABB0);
  *(v21 + 72) = v22;
  v23 = sub_22B35DDDC();
  v24 = sub_22B128014(0, &qword_281408558, 0x277CBEAA8);
  *(v21 + 136) = v24;
  v25 = sub_22B176FAC(&qword_281408550, &qword_281408558, 0x277CBEAA8);
  *(v21 + 144) = v25;
  *(v21 + 112) = v23;
  v26 = sub_22B35DDDC();
  *(v21 + 176) = v24;
  *(v21 + 184) = v25;
  *(v21 + 152) = v26;
  v27 = sub_22B360CCC();
  [v12 setPredicate_];
  [v12 setFetchBatchSize_];
  v28 = v53;
  v29 = sub_22B360E9C();
  if (v28)
  {

    return;
  }

  v30 = v47;
  v31 = v48;
  v33 = v45;
  v32 = v46;
  if (v29 >> 62)
  {
    v42 = v29;
    v43 = sub_22B36109C();
    v29 = v42;
    v34 = v54;
    if (v43)
    {
      goto LABEL_5;
    }

LABEL_10:

    return;
  }

  v34 = v54;
  if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v29 & 0xC000000000000001) != 0)
  {
    v35 = MEMORY[0x23188EAC0](0);
    goto LABEL_8;
  }

  if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v35 = *(v29 + 32);
LABEL_8:
    v36 = v35;

    v37 = v36;
    sub_22B2F4AE8(v37, v33);
    v38 = type metadata accessor for CDIntervalBlocks(0);
    (*(*(v38 - 8) + 56))(v33, 0, 1, v38);
    sub_22B30D248(v33, v32);
    v39 = v37;
    v40 = [v39 objectID];

    v41 = *v30;
    *v30 = v40;

    return;
  }

  __break(1u);
}

void sub_22B2F7EDC(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, const char *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, void *a11, char a12, const char *a13, const char *a14)
{
  v108 = a8;
  v104 = a3;
  v105 = a7;
  v98 = a6;
  v102 = a5;
  v103 = a1;
  v95 = a9;
  v97 = sub_22B35DE9C();
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v92 = &v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22B36052C();
  v112 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v94 = &v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v93 = &v92 - v20;
  MEMORY[0x28223BE20](v21);
  v111 = &v92 - v22;
  v100 = sub_22B35F4EC();
  v23 = sub_22B35F47C();
  [v23 setResultType_];
  v24 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v25 = sub_22B36081C();
  v26 = [v24 initWithKey:v25 ascending:a12 & 1];

  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
  v27 = swift_allocObject();
  v106 = xmmword_22B363650;
  *(v27 + 16) = xmmword_22B363650;
  *(v27 + 32) = v26;
  sub_22B128014(0, &qword_281409308, 0x277CCAC98);
  v99 = v26;
  v28 = sub_22B360A3C();

  [v23 setSortDescriptors_];

  v110 = v23;
  [v23 setFetchLimit_];
  v114 = MEMORY[0x277D84F90];
  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_22B3634C0;
  v30 = MEMORY[0x277D837D0];
  *(v29 + 56) = MEMORY[0x277D837D0];
  v31 = sub_22B1280E4();
  v32 = v104;
  *(v29 + 32) = v103;
  *(v29 + 40) = a2;
  *(v29 + 96) = v30;
  *(v29 + 104) = v31;
  *(v29 + 64) = v31;
  *(v29 + 72) = v32;
  *(v29 + 80) = a4;

  v33 = sub_22B360CCC();
  MEMORY[0x23188E350]();
  if (*((v114 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v114 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22B360A7C();
  }

  v104 = v33;
  sub_22B360A9C();
  v109 = v17;
  if (v102 != 2)
  {
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_22B3634B0;
    v35 = sub_22B128014(0, &qword_281409278, 0x277CCABB0);
    v36 = sub_22B360F9C();
    *(v34 + 56) = v35;
    *(v34 + 64) = sub_22B176FAC(&qword_27D8BAD48, &qword_281409278, 0x277CCABB0);
    *(v34 + 32) = v36;
    v37 = sub_22B360CCC();
    MEMORY[0x23188E350]();
    if (*((v114 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v114 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22B360A7C();
    }

    sub_22B360A9C();

    v17 = v109;
  }

  v38 = v110;
  v39 = v105;
  if (v105)
  {
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_22B3634B0;
    *(v40 + 56) = MEMORY[0x277D837D0];
    *(v40 + 64) = v31;
    *(v40 + 32) = v98;
    *(v40 + 40) = v39;

    v41 = sub_22B360CCC();
    MEMORY[0x23188E350]();
    if (*((v114 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v114 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22B360A7C();
    }

    sub_22B360A9C();
  }

  v42 = objc_allocWithZone(MEMORY[0x277CCA920]);
  v43 = sub_22B360A3C();

  v44 = [v42 initWithType:1 subpredicates:v43];

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v45 = __swift_project_value_buffer(v17, qword_28140BD10);
  swift_beginAccess();
  v46 = *(v112 + 16);
  v46(v111, v45, v17);
  v47 = v44;
  v48 = sub_22B36050C();
  v49 = sub_22B360D2C();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *v50 = 138412290;
    *(v50 + 4) = v47;
    *v51 = v47;
    v52 = v47;
    _os_log_impl(&dword_22B116000, v48, v49, "[IntervalReadingRecords] Fetching records using predicate %@", v50, 0xCu);
    sub_22B123284(v51, &unk_27D8BAA90, &unk_22B362BC0);
    v53 = v51;
    v38 = v110;
    MEMORY[0x23188F650](v53, -1, -1);
    MEMORY[0x23188F650](v50, -1, -1);
  }

  v54 = v111;
  v111 = *(v112 + 8);
  v112 += 8;
  (v111)(v54, v17);
  [v38 setPredicate_];
  v55 = swift_allocObject();
  *(v55 + 16) = v106;
  v56 = *(v108 + 14);
  if (!v56)
  {
    goto LABEL_34;
  }

  *(v55 + 32) = v56;
  sub_22B128014(0, &qword_2814092F8, 0x277CBE4D0);
  v57 = v56;
  v58 = sub_22B360A3C();

  [v38 setAffectedStores_];

  v59 = v101;
  v60 = sub_22B360E9C();
  if (v59)
  {

    return;
  }

  if (v60 >> 62)
  {
    v87 = v60;
    v88 = sub_22B36109C();
    v60 = v87;
    if (v88)
    {
      goto LABEL_20;
    }

LABEL_28:

    v46(v93, v45, v109);
    v89 = sub_22B36050C();
    v90 = sub_22B360D2C();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      *v91 = 0;
      v38 = v110;
      _os_log_impl(&dword_22B116000, v89, v90, a14, v91, 2u);
      MEMORY[0x23188F650](v91, -1, -1);
    }

    (v111)(v93, v109);
    [a11 refreshAllObjects];
    v86 = 1;
    v83 = v95;
    v84 = v99;
    goto LABEL_31;
  }

  if (!*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_28;
  }

LABEL_20:
  if ((v60 & 0xC000000000000001) != 0)
  {
    v61 = MEMORY[0x23188EAC0](0);
    goto LABEL_23;
  }

  if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v61 = *(v60 + 32);
LABEL_23:
    v62 = v61;

    v63 = v94;
    v64 = v45;
    v65 = v109;
    v46(v94, v64, v109);
    v38 = v62;
    v66 = sub_22B36050C();
    v67 = sub_22B360D2C();

    v68 = &selRef_initWithShareURLs_invitationTokensByShareURL_;
    if (os_log_type_enabled(v66, v67))
    {
      v108 = a13;
      v69 = swift_slowAlloc();
      *&v106 = v69;
      v107 = swift_slowAlloc();
      v113 = v107;
      *v69 = 136315138;
      v70 = [v38 start];
      LODWORD(v105) = v67;
      v71 = v92;
      sub_22B35DE5C();

      sub_22B306EB4(&qword_28140B488, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v72 = v97;
      v73 = sub_22B36131C();
      v75 = v74;
      v76 = v72;
      v68 = &selRef_initWithShareURLs_invitationTokensByShareURL_;
      (*(v96 + 8))(v71, v76);
      v77 = sub_22B1A7B20(v73, v75, &v113);

      v78 = v106;
      *(v106 + 4) = v77;
      v79 = v78;
      _os_log_impl(&dword_22B116000, v66, v105, v108, v78, 0xCu);
      v80 = v107;
      __swift_destroy_boxed_opaque_existential_0(v107);
      MEMORY[0x23188F650](v80, -1, -1);
      MEMORY[0x23188F650](v79, -1, -1);

      v81 = v94;
      v82 = v109;
    }

    else
    {

      v81 = v63;
      v82 = v65;
    }

    (v111)(v81, v82);
    v83 = v95;
    v84 = v99;
    v85 = [v38 v68[5]];
    sub_22B35DE5C();

    [a11 refreshAllObjects];
    v86 = 0;
LABEL_31:

    (*(v96 + 56))(v83, v86, 1, v97);
    return;
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

void sub_22B2F8AC4(uint64_t a1, uint64_t a2, char **a3, uint64_t a4, char **a5, uint64_t a6, unint64_t a7, void *a8, uint64_t a9, uint64_t a10, void *a11, void *a12, uint64_t a13, uint64_t a14)
{
  v21 = MEMORY[0x23188EEB0]();
  sub_22B2F8BAC(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, &v24);
  objc_autoreleasePoolPop(v21);
  if (!v23)
  {
    [a11 refreshAllObjects];
  }
}

void sub_22B2F8BAC(uint64_t a1, uint64_t a2, char **a3, uint64_t a4, char **a5, uint64_t a6, unint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t *a15)
{
  v254 = a8;
  v251 = a7;
  v248 = a3;
  v249 = a5;
  v263 = *MEMORY[0x277D85DE8];
  v245 = sub_22B35DE9C();
  v247 = *(v245 - 8);
  MEMORY[0x28223BE20](v245);
  v244 = (&v204 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v250 = sub_22B3603AC();
  v246 = *(v250 - 8);
  MEMORY[0x28223BE20](v250);
  v256 = &v204 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v252 = sub_22B35FEBC();
  v255 = *(v252 - 8);
  MEMORY[0x28223BE20](v252);
  v231 = &v204 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v222 = &v204 - v22;
  MEMORY[0x28223BE20](v23);
  v238 = &v204 - v24;
  MEMORY[0x28223BE20](v25);
  v223 = &v204 - v26;
  MEMORY[0x28223BE20](v27);
  v228 = &v204 - v28;
  MEMORY[0x28223BE20](v29);
  v253 = &v204 - v30;
  v259 = sub_22B36052C();
  v243 = *(v259 - 8);
  MEMORY[0x28223BE20](v259);
  v209 = &v204 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v232 = &v204 - v33;
  MEMORY[0x28223BE20](v34);
  v227 = &v204 - v35;
  MEMORY[0x28223BE20](v36);
  v226 = &v204 - v37;
  MEMORY[0x28223BE20](v38);
  v214 = &v204 - v39;
  MEMORY[0x28223BE20](v40);
  v42 = &v204 - v41;
  v257 = sub_22B35F4EC();
  v43 = sub_22B35F47C();
  [v43 setResultType_];
  v44 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v45 = sub_22B36081C();
  v46 = [v44 initWithKey:v45 ascending:1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
  v47 = swift_allocObject();
  v260 = xmmword_22B363650;
  *(v47 + 16) = xmmword_22B363650;
  *(v47 + 32) = v46;
  sub_22B128014(0, &qword_281409308, 0x277CCAC98);
  v207 = v46;
  v48 = sub_22B360A3C();

  [v43 setSortDescriptors_];

  v49 = swift_allocObject();
  *(v49 + 16) = v260;
  v50 = *(a1 + 112);
  if (!v50)
  {
    __break(1u);
  }

  v208 = a11;
  *(v49 + 32) = v50;
  sub_22B128014(0, &qword_2814092F8, 0x277CBE4D0);
  v51 = v50;
  v52 = sub_22B360A3C();

  v215 = v43;
  [v43 setAffectedStores_];

  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_22B363660;
  v54 = MEMORY[0x277D837D0];
  *(v53 + 56) = MEMORY[0x277D837D0];
  v55 = sub_22B1280E4();
  v56 = v249;
  *(v53 + 32) = v248;
  *(v53 + 40) = a4;
  *(v53 + 96) = v54;
  *(v53 + 104) = v55;
  *(v53 + 64) = v55;
  *(v53 + 72) = v56;
  *(v53 + 80) = a6;
  *(v53 + 136) = v54;
  *(v53 + 144) = v55;
  v57 = v254;
  *(v53 + 112) = v251;
  *(v53 + 120) = v57;

  v58 = sub_22B35DDDC();
  v59 = sub_22B128014(0, &qword_281408558, 0x277CBEAA8);
  *(v53 + 176) = v59;
  v60 = sub_22B176FAC(&qword_281408550, &qword_281408558, 0x277CBEAA8);
  *(v53 + 184) = v60;
  *(v53 + 152) = v58;
  v61 = sub_22B35DDDC();
  *(v53 + 216) = v59;
  *(v53 + 224) = v60;
  *(v53 + 192) = v61;
  v62 = sub_22B128014(0, &qword_281409278, 0x277CCABB0);
  v63 = sub_22B360F9C();
  *(v53 + 256) = v62;
  *(v53 + 264) = sub_22B176FAC(&qword_27D8BAD48, &qword_281409278, 0x277CCABB0);
  *(v53 + 232) = v63;
  v64 = sub_22B360CCC();
  if (qword_28140A0C8 != -1)
  {
LABEL_72:
    swift_once();
  }

  v65 = v259;
  v66 = __swift_project_value_buffer(v259, qword_28140BD10);
  swift_beginAccess();
  v67 = v243;
  v68 = *(v243 + 16);
  v69 = v42;
  v242 = v66;
  v241 = v243 + 16;
  v240 = v68;
  v68(v42, v66, v65);
  v70 = v64;
  v71 = sub_22B36050C();
  v72 = sub_22B360D2C();

  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    *v73 = 138412290;
    *(v73 + 4) = v70;
    *v74 = v70;
    v75 = v70;
    _os_log_impl(&dword_22B116000, v71, v72, "[IntervalReadingRecords] Fetching records using predicate %@", v73, 0xCu);
    sub_22B123284(v74, &unk_27D8BAA90, &unk_22B362BC0);
    MEMORY[0x23188F650](v74, -1, -1);
    MEMORY[0x23188F650](v73, -1, -1);
  }

  v77 = *(v67 + 8);
  v76 = v67 + 8;
  v64 = v77;
  v77(v69, v259);
  v78 = v215;
  [v215 setPredicate_];
  [v78 setFetchBatchSize_];
  v79 = v258;
  v80 = sub_22B360E9C();
  if (v79)
  {
    v82 = v79;

LABEL_65:
    *a15 = v82;
    return;
  }

  v239 = v64;
  v254 = 0;
  v205 = v70;
  v206 = v80;
  if (v80 >> 62)
  {
    v83 = sub_22B36109C();
  }

  else
  {
    v83 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v42 = v214;
  if (v83)
  {
    v84 = 0;
    v213 = v206 & 0xC000000000000001;
    v212 = v206 & 0xFFFFFFFFFFFFFF8;
    v211 = v206 + 32;
    v243 = v76;
    v249 = (v246 + 8);
    v225 = a13;
    v237 = a12;
    v248 = (v247 + 8);
    *&v260 = v255 + 8;
    *&v81 = 136315138;
    v216 = v81;
    *&v81 = 136315650;
    v221 = v81;
    v236 = v255 + 16;
    v210 = v83;
    v230 = a14;
    while (1)
    {
      if (v213)
      {
        v85 = MEMORY[0x23188EAC0](v84, v206);
      }

      else
      {
        if (v84 >= *(v212 + 16))
        {
          goto LABEL_71;
        }

        v85 = *(v211 + 8 * v84);
      }

      v257 = v85;
      v86 = __OFADD__(v84, 1);
      v87 = v84 + 1;
      if (v86)
      {
        goto LABEL_70;
      }

      if (sub_22B360BFC())
      {
        break;
      }

      v217 = v87;
      sub_22B35FDCC();
      v88 = [v257 readings];
      v89 = sub_22B35DCDC();
      v91 = v90;

      v92 = sub_22B35FDBC();
      sub_22B12F174(v89, v91);
      v93 = *(v92 + 16);
      if (v93)
      {
        LODWORD(v224) = 0;
        v42 = 0;
        v251 = v92 + ((*(v255 + 80) + 32) & ~*(v255 + 80));
        LODWORD(v235) = 1;
        v258 = MEMORY[0x277D84F90];
        v95 = v252;
        v94 = v253;
        v64 = v237;
        v234 = v92;
        v233 = v93;
        while (v42 < *(v92 + 16))
        {
          v96 = *(v255 + 16);
          v96(v94, v251 + *(v255 + 72) * v42, v95);
          if ([v257 preprocessed])
          {
            (*v260)(v94, v95);
          }

          else
          {
            v262 = v64;

            v97 = v256;
            sub_22B35FE2C();
            v98 = v244;
            sub_22B36038C();
            v246 = *v249;
            (v246)(v97, v250);
            v99 = sub_22B206AEC(&v262, v98);
            v101 = v100;
            v247 = *v248;
            (v247)(v98, v245);

            if (v101)
            {
              v102 = v226;
              v240(v226, v242, v259);
              v103 = v228;
              v96(v228, v94, v95);
              v104 = sub_22B36050C();
              v105 = sub_22B360D2C();
              if (os_log_type_enabled(v104, v105))
              {
                v106 = swift_slowAlloc();
                v220 = v106;
                v229 = swift_slowAlloc();
                v261 = v229;
                *v106 = v216;
                v107 = v256;
                sub_22B35FE2C();
                v219 = v105;
                v108 = v244;
                sub_22B36038C();
                (v246)(v107, v250);
                sub_22B306EB4(&qword_28140B488, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
                v109 = v245;
                v110 = sub_22B36131C();
                v112 = v111;
                (v247)(v108, v109);
                v113 = v253;
                v235 = *v260;
                v235(v228, v95);
                v114 = sub_22B1A7B20(v110, v112, &v261);

                v115 = v220;
                *(v220 + 4) = v114;
                v116 = v115;
                _os_log_impl(&dword_22B116000, v104, v219, "[IntervalReadingRecords] Processing %s failed", v115, 0xCu);
                v117 = v229;
                __swift_destroy_boxed_opaque_existential_0(v229);
                MEMORY[0x23188F650](v117, -1, -1);
                MEMORY[0x23188F650](v116, -1, -1);

                v118 = v226;
              }

              else
              {
                v113 = v94;

                v235 = *v260;
                v235(v103, v95);
                v118 = v102;
              }

              v239(v118, v259);
              sub_22B306EB4(&qword_27D8BAD50, MEMORY[0x277D074F8], MEMORY[0x277D074E8]);
              v136 = v254;
              v137 = sub_22B36042C();
              v254 = v136;
              if (v136)
              {
                v235(v113, v95);

LABEL_56:

                v64 = v254;
                v254 = 0;
                v78 = v215;
                v195 = v209;
                goto LABEL_57;
              }

              v139 = v137;
              v140 = v138;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v258 = sub_22B32D0BC(0, *(v258 + 2) + 1, 1, v258);
              }

              v141 = v231;
              v143 = *(v258 + 2);
              v142 = *(v258 + 3);
              v144 = v232;
              if (v143 >= v142 >> 1)
              {
                v258 = sub_22B32D0BC((v142 > 1), v143 + 1, 1, v258);
                v144 = v232;
              }

              v146 = v258;
              v145 = v259;
              *(v258 + 2) = v143 + 1;
              v147 = &v146[16 * v143];
              *(v147 + 4) = v139;
              *(v147 + 5) = v140;
              v240(v144, v242, v145);
              v148 = v222;
              v95 = v252;
              v94 = v253;
              v96(v222, v253, v252);
              v96(v141, v94, v95);
              v149 = v237;

              v150 = sub_22B36050C();
              v151 = sub_22B360D1C();

              v229 = v150;
              if (os_log_type_enabled(v150, v151))
              {
                v152 = swift_slowAlloc();
                v220 = swift_slowAlloc();
                v261 = v220;
                *v152 = v221;
                v153 = v256;
                v219 = v151;
                sub_22B35FE2C();
                v154 = v148;
                v155 = v244;
                sub_22B36038C();
                (v246)(v153, v250);
                v218 = sub_22B306EB4(&qword_28140B488, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
                v156 = v245;
                v157 = sub_22B36131C();
                v159 = v158;
                (v247)(v155, v156);
                v235(v154, v252);
                v160 = sub_22B1A7B20(v157, v159, &v261);

                *(v152 + 4) = v160;
                *(v152 + 12) = 2080;
                sub_22B35FDEC();
                sub_22B36038C();
                v161 = v153;
                v95 = v252;
                v94 = v253;
                (v246)(v161, v250);
                v162 = sub_22B36131C();
                v164 = v163;
                (v247)(v155, v156);
                v165 = v235;
                v235(v231, v95);
                v166 = sub_22B1A7B20(v162, v164, &v261);

                *(v152 + 14) = v166;
                *(v152 + 22) = 2080;
                v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA828, qword_22B365C20);
                v168 = v237;
                v169 = MEMORY[0x23188E390](v237, v167);
                v171 = sub_22B1A7B20(v169, v170, &v261);

                *(v152 + 24) = v171;
                v172 = v229;
                _os_log_impl(&dword_22B116000, v229, v219, "[Dropbox Bridge] %s-%s Failed to find peaks %s", v152, 0x20u);
                v173 = v220;
                swift_arrayDestroy();
                MEMORY[0x23188F650](v173, -1, -1);
                MEMORY[0x23188F650](v152, -1, -1);

                v239(v232, v259);
                v165(v94, v95);
                LODWORD(v235) = 0;
                v64 = v168;
              }

              else
              {

                v185 = v235;
                v235(v141, v95);
                v185(v148, v95);
                v239(v232, v259);
                v185(v94, v95);
                LODWORD(v235) = 0;
                v64 = v149;
              }
            }

            else
            {
              v119 = v227;
              v240(v227, v242, v259);
              v120 = v223;
              v96(v223, v94, v95);
              v121 = v230;

              v122 = sub_22B36050C();
              v123 = sub_22B360D2C();

              if (os_log_type_enabled(v122, v123))
              {
                v124 = swift_slowAlloc();
                v229 = swift_slowAlloc();
                v261 = v229;
                *v124 = v221;
                v224 = v122;
                v125 = v256;
                LODWORD(v220) = v123;
                sub_22B35FE2C();
                v126 = v244;
                sub_22B36038C();
                (v246)(v125, v250);
                sub_22B306EB4(&qword_28140B488, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
                v127 = v245;
                v128 = sub_22B36131C();
                v130 = v129;
                (v247)(v126, v127);
                v64 = *v260;
                (*v260)(v120, v252);
                v131 = sub_22B1A7B20(v128, v130, &v261);

                *(v124 + 4) = v131;
                *(v124 + 12) = 2048;
                *(v124 + 14) = v99;
                *(v124 + 22) = 2080;
                *(v124 + 24) = sub_22B1A7B20(v225, v121, &v261);
                v132 = v224;
                _os_log_impl(&dword_22B116000, v224, v220, "[IntervalReadingRecords] Processing %s with rank %ld for %s", v124, 0x20u);
                v133 = v229;
                swift_arrayDestroy();
                MEMORY[0x23188F650](v133, -1, -1);
                v134 = v124;
                v95 = v252;
                MEMORY[0x23188F650](v134, -1, -1);

                v135 = v227;
              }

              else
              {

                v64 = *v260;
                (*v260)(v120, v95);
                v135 = v119;
              }

              v239(v135, v259);
              sub_22B35FEAC();
              if (v99 < 0xFFFFFFFF80000000)
              {
                goto LABEL_68;
              }

              if (v99 > 0x7FFFFFFF)
              {
                goto LABEL_69;
              }

              sub_22B35FE1C();

              sub_22B35FDDC();
              sub_22B35FE8C();
              sub_22B35FE9C();
              sub_22B35FE2C();
              sub_22B35FE3C();
              sub_22B35FDEC();
              sub_22B35FDFC();
              sub_22B35FE4C();
              sub_22B35FE5C();
              sub_22B306EB4(&qword_27D8BAD50, MEMORY[0x277D074F8], MEMORY[0x277D074E8]);
              v174 = v254;
              v175 = sub_22B36042C();
              v254 = v174;
              if (v174)
              {

                (v64)(v238, v95);
                (v64)(v253, v95);
                goto LABEL_56;
              }

              v177 = v175;
              v178 = v176;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v258 = sub_22B32D0BC(0, *(v258 + 2) + 1, 1, v258);
              }

              v180 = *(v258 + 2);
              v179 = *(v258 + 3);
              if (v180 >= v179 >> 1)
              {
                v258 = sub_22B32D0BC((v179 > 1), v180 + 1, 1, v258);
              }

              v181 = v252;
              (v64)(v238, v252);
              v182 = v253;
              (v64)(v253, v181);
              v183 = v258;
              *(v258 + 2) = v180 + 1;
              v94 = v182;
              v184 = &v183[16 * v180];
              v95 = v181;
              *(v184 + 4) = v177;
              *(v184 + 5) = v178;
              LODWORD(v224) = 1;
              v64 = v237;
            }

            v92 = v234;
            v93 = v233;
          }

          if (v93 == ++v42)
          {
            goto LABEL_49;
          }
        }

        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

      LODWORD(v224) = 0;
      LODWORD(v235) = 1;
      v258 = MEMORY[0x277D84F90];
LABEL_49:

      v186 = objc_opt_self();
      v187 = sub_22B360A3C();

      v262 = 0;
      v188 = [v186 archivedDataWithRootObject:v187 requiringSecureCoding:0 error:&v262];

      v189 = v262;
      if (v188)
      {
        v190 = sub_22B35DCDC();
        v64 = v191;

        v78 = v215;
        if (v224)
        {
          v192 = v257;
          [v257 setPreprocessed_];
          v193 = sub_22B35DCCC();
          [v192 setReadings_];

          sub_22B12F174(v190, v64);
        }

        else
        {

          sub_22B12F174(v190, v64);
        }
      }

      else
      {
        v194 = v189;
        v64 = sub_22B35DB9C();

        swift_willThrow();
        v254 = 0;
        v78 = v215;
        v195 = v209;
LABEL_57:
        v240(v195, v242, v259);
        v196 = sub_22B36050C();
        v197 = sub_22B360D1C();
        if (os_log_type_enabled(v196, v197))
        {
          v198 = swift_slowAlloc();
          *v198 = 0;
          _os_log_impl(&dword_22B116000, v196, v197, "[Dropbox Bridge] Failed to process reading", v198, 2u);
          MEMORY[0x23188F650](v198, -1, -1);
        }

        v239(v195, v259);
      }

      v84 = v217;
      v42 = v214;
      if (v217 == v210)
      {
        goto LABEL_60;
      }
    }

    v240(v42, v242, v259);
    v199 = sub_22B36050C();
    v200 = sub_22B360D1C();
    if (os_log_type_enabled(v199, v200))
    {
      v201 = swift_slowAlloc();
      v202 = swift_slowAlloc();
      v262 = v202;
      *v201 = 136315394;
      *(v201 + 4) = sub_22B1A7B20(0xD000000000000061, 0x800000022B36DE80, &v262);
      *(v201 + 12) = 2048;
      *(v201 + 14) = 589;
      _os_log_impl(&dword_22B116000, v199, v200, "[IntervalReadingRecords] Task is cancelled at marker %s:%ld", v201, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v202);
      MEMORY[0x23188F650](v202, -1, -1);
      MEMORY[0x23188F650](v201, -1, -1);
    }

    v239(v42, v259);
  }

  else
  {
LABEL_60:
  }

  v203 = v254;
  sub_22B207390(11);
  v82 = v203;

  if (v203)
  {
    goto LABEL_65;
  }
}

void sub_22B2FA8DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void, void, void), unint64_t (*a6)(uint64_t, uint64_t, uint64_t), uint64_t a7, uint64_t (**a8)(char *, uint64_t), uint64_t (**a9)(char *, uint64_t), uint64_t a10, void *a11, _BYTE *a12, uint64_t a13, uint64_t a14, _BYTE *a15)
{
  v216 = a6;
  v217 = a8;
  v214 = a5;
  v215 = a7;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD90, &qword_22B366F58);
  MEMORY[0x28223BE20](v18 - 8);
  v203 = v166 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v212 = v166 - v21;
  v193 = sub_22B35FEDC();
  v210 = *(v193 - 8);
  MEMORY[0x28223BE20](v193);
  v202 = v166 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v218 = v166 - v24;
  MEMORY[0x28223BE20](v25);
  v211 = v166 - v26;
  v224 = sub_22B35FEBC();
  v178 = *(v224 - 8);
  MEMORY[0x28223BE20](v224);
  v223 = v166 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = sub_22B35DE9C();
  v175 = *(v191 - 8);
  MEMORY[0x28223BE20](v191);
  v213 = v166 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v188 = v166 - v30;
  MEMORY[0x28223BE20](v31);
  v197 = v166 - v32;
  v198 = sub_22B36052C();
  v189 = *(v198 - 8);
  MEMORY[0x28223BE20](v198);
  v190 = v166 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v168 = v166 - v35;
  v37 = MEMORY[0x28223BE20](v36);
  v222 = (v166 - v38);
  v170 = MEMORY[0x23188EEB0](v37);
  v219 = sub_22B35F4EC();
  v39 = sub_22B35F47C();
  [v39 setResultType_];
  v40 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v41 = sub_22B36081C();
  v42 = [v40 initWithKey:v41 ascending:1];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
  v43 = swift_allocObject();
  v221 = xmmword_22B363650;
  *(v43 + 16) = xmmword_22B363650;
  *(v43 + 32) = v42;
  sub_22B128014(0, &qword_281409308, 0x277CCAC98);
  v169 = v42;
  v44 = sub_22B360A3C();

  [v39 setSortDescriptors_];

  v45 = swift_allocObject();
  *(v45 + 16) = v221;
  v46 = *(a1 + 112);
  if (!v46)
  {
    __break(1u);
    return;
  }

  v176 = a11;
  *&v221 = a10;
  *(v45 + 32) = v46;
  sub_22B128014(0, &qword_2814092F8, 0x277CBE4D0);
  v47 = v46;
  v48 = sub_22B360A3C();

  v177 = v39;
  [v39 setAffectedStores_];

  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_22B363640;
  v50 = MEMORY[0x277D837D0];
  *(v49 + 56) = MEMORY[0x277D837D0];
  v51 = sub_22B1280E4();
  *(v49 + 32) = a3;
  *(v49 + 40) = a4;
  *(v49 + 96) = v50;
  *(v49 + 104) = v51;
  v53 = v214;
  v52 = v215;
  *(v49 + 64) = v51;
  *(v49 + 72) = v53;
  v54 = v217;
  *(v49 + 80) = v216;
  *(v49 + 136) = v50;
  *(v49 + 144) = v51;
  *(v49 + 112) = v52;
  *(v49 + 120) = v54;
  v196 = a4;

  v217 = a9;
  v55 = sub_22B35DDDC();
  v56 = sub_22B128014(0, &qword_281408558, 0x277CBEAA8);
  *(v49 + 176) = v56;
  v57 = sub_22B176FAC(&qword_281408550, &qword_281408558, 0x277CBEAA8);
  *(v49 + 184) = v57;
  *(v49 + 152) = v55;
  v58 = sub_22B35DDDC();
  *(v49 + 216) = v56;
  *(v49 + 224) = v57;
  *(v49 + 192) = v58;
  v59 = sub_22B360CCC();
  v60 = a3;
  if (qword_28140A0C8 != -1)
  {
    goto LABEL_57;
  }

LABEL_3:
  v61 = v198;
  v62 = __swift_project_value_buffer(v198, qword_28140BD10);
  swift_beginAccess();
  v63 = v189;
  v64 = *(v189 + 16);
  v65 = v222;
  v187 = v62;
  v186 = v189 + 16;
  v185 = v64;
  v64(v222, v62, v61);
  v66 = v59;
  v67 = sub_22B36050C();
  v68 = sub_22B360D2C();

  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    *v69 = 138412290;
    *(v69 + 4) = v66;
    *v70 = v66;
    v71 = v66;
    _os_log_impl(&dword_22B116000, v67, v68, "[IntervalReadingRecords] Fetching records using predicate %@", v69, 0xCu);
    sub_22B123284(v70, &unk_27D8BAA90, &unk_22B362BC0);
    v72 = v70;
    v61 = v198;
    MEMORY[0x23188F650](v72, -1, -1);
    v73 = v69;
    v65 = v222;
    MEMORY[0x23188F650](v73, -1, -1);
  }

  v76 = *(v63 + 8);
  v74 = v63 + 8;
  v75 = v76;
  v76(v65, v61);
  v77 = v177;
  [v177 setPredicate_];
  [v77 setFetchBatchSize_];
  v78 = v220;
  v79 = sub_22B360E9C();
  if (v78)
  {

    objc_autoreleasePoolPop(v170);
    return;
  }

  v80 = v79;
  v183 = v75;
  v166[1] = 0;
  v189 = v74;
  v81 = *(v175 + 16);
  v82 = v217;
  v83 = v191;
  v81(v197, v217, v191);
  v81(v188, v82, v83);
  if (v80 >> 62)
  {
    v84 = sub_22B36109C();
  }

  else
  {
    v84 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v167 = v66;
  swift_beginAccess();
  v86 = v191;
  if (!v84)
  {
    goto LABEL_48;
  }

  v179 = v84;
  v59 = 0;
  v199 = a14;
  v201 = a13;
  v174 = a12;
  v182 = v80 & 0xC000000000000001;
  v181 = v80 & 0xFFFFFFFFFFFFFF8;
  v166[0] = v80;
  v180 = v80 + 32;
  v173 = (v175 + 40);
  v172 = (v175 + 32);
  v209 = v178 + 16;
  v219 = v210 + 48;
  v205 = (v210 + 32);
  v204 = *MEMORY[0x277D07500];
  v208 = (v210 + 104);
  v217 = (v210 + 8);
  v207 = (v178 + 8);
  v206 = *MEMORY[0x277D07510];
  v195 = 1;
  v200 = *MEMORY[0x277D07508];
  v194 = (v175 + 8);
  v175 = (v175 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  *&v85 = 136315906;
  v171 = v85;
  v210 = v60;
  v87 = v193;
  v88 = v213;
  while (1)
  {
    if (v182)
    {
      v90 = MEMORY[0x23188EAC0](v59, v166[0]);
      v89 = v194;
      v91 = __OFADD__(v59, 1);
      v92 = v59 + 1;
      if (v91)
      {
LABEL_47:
        __break(1u);
LABEL_48:
        v157 = *(v175 + 8);
        v158 = 1;
        v157(v188, v86);
        goto LABEL_52;
      }
    }

    else
    {
      v89 = v194;
      if (v59 >= *(v181 + 16))
      {
        __break(1u);
LABEL_57:
        swift_once();
        goto LABEL_3;
      }

      v90 = *(v180 + 8 * v59);
      v91 = __OFADD__(v59, 1);
      v92 = v59 + 1;
      if (v91)
      {
        goto LABEL_47;
      }
    }

    v193 = v92;
    if (sub_22B360BFC())
    {
      break;
    }

    v93 = [v90 start];
    sub_22B35DE5C();

    LOBYTE(v93) = sub_22B35DE4C();
    v94 = *v89;
    (*v89)(v88, v86);
    v192 = v94;
    if (v93)
    {
      if (v195)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v95 = [v90 start];
      sub_22B35DE5C();

      LODWORD(v95) = sub_22B35DE4C();
      v94(v88, v86);
      if (v195 & v95)
      {
LABEL_20:
        v96 = [v90 end];
        sub_22B35DE5C();

        (*v173)(v197, v88, v86);
        v97 = [v90 start];
        sub_22B35DE5C();

        v98 = v188;
        v192(v188, v86);
        (*v172)(v98, v88, v86);
        v195 = 1;
        goto LABEL_21;
      }
    }

    v195 = 0;
LABEL_21:
    v99 = v198;
    v100 = v190;
    v185(v190, v187, v198);

    v101 = v90;
    v102 = sub_22B36050C();
    v103 = v196;
    v104 = v102;
    v105 = sub_22B360D2C();

    LODWORD(v220) = v105;
    v222 = v104;
    v106 = os_log_type_enabled(v104, v105);
    *&v221 = v101;
    if (v106)
    {
      v107 = swift_slowAlloc();
      v216 = swift_slowAlloc();
      v226 = v216;
      *v107 = v171;
      *(v107 + 4) = sub_22B1A7B20(v60, v103, &v226);
      *(v107 + 12) = 2080;
      v108 = [v221 start];
      sub_22B35DE5C();

      sub_22B306EB4(&qword_28140B488, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v109 = v191;
      v110 = sub_22B36131C();
      v112 = v111;
      v113 = v192;
      v192(v88, v109);
      v114 = sub_22B1A7B20(v110, v112, &v226);

      *(v107 + 14) = v114;
      *(v107 + 22) = 2080;
      v115 = [v221 end];
      sub_22B35DE5C();

      v116 = sub_22B36131C();
      v118 = v117;
      v113(v88, v109);
      v119 = sub_22B1A7B20(v116, v118, &v226);

      *(v107 + 24) = v119;
      *(v107 + 32) = 2080;
      v120 = sub_22B36131C();
      v122 = sub_22B1A7B20(v120, v121, &v226);

      *(v107 + 34) = v122;
      v123 = v222;
      _os_log_impl(&dword_22B116000, v222, v220, "[IntervalReadingRecords] All Blocks seen check for %s %s-%s wrt %s", v107, 0x2Au);
      v124 = v216;
      swift_arrayDestroy();
      MEMORY[0x23188F650](v124, -1, -1);
      MEMORY[0x23188F650](v107, -1, -1);

      v125 = v190;
      v126 = v198;
    }

    else
    {

      v125 = v100;
      v126 = v99;
    }

    v183(v125, v126);
    if (([v221 preprocessed] & 1) == 0)
    {
      *v174 = 0;
    }

    sub_22B35FDCC();
    v127 = [v221 readings];
    v128 = sub_22B35DCDC();
    v130 = v129;

    v131 = sub_22B35FDBC();
    sub_22B12F174(v128, v130);
    v132 = *(v131 + 16);
    if (v132)
    {
      v133 = (*(v178 + 80) + 32) & ~*(v178 + 80);
      v184 = v131;
      v134 = v131 + v133;
      v135 = *(v178 + 72);
      v214 = *(v178 + 16);
      v215 = v135;
      v136 = v219;
      do
      {
        v222 = v132;
        v214(v223, v134, v224);
        sub_22B35F4AC();
        v141 = v212;
        sub_22B35FECC();
        v142 = *v136;
        v143 = (*v136)(v141, 1, v87);
        v144 = v208;
        v216 = v142;
        if (v143 == 1)
        {
          v145 = *v208;
          v146 = v211;
          (*v208)(v211, v204, v87);
          if (v142(v141, 1, v87) != 1)
          {
            sub_22B123284(v141, &qword_27D8BAD90, &qword_22B366F58);
          }
        }

        else
        {
          v146 = v211;
          (*v205)(v211, v141, v87);
          v145 = *v144;
        }

        v147 = v218;
        v220 = v145;
        v145(v218, v206, v87);
        sub_22B306EB4(&qword_27D8BADC0, MEMORY[0x277D07518], MEMORY[0x277D07520]);
        sub_22B360A1C();
        sub_22B360A1C();
        v148 = v146;
        v149 = *v217;
        (*v217)(v147, v87);
        v149(v148, v87);
        if (v226 == v225)
        {
          v137 = v223;
          sub_22B35FE4C();
          v139 = v138;
          (*v207)(v137, v224);
          v140 = &v228;
        }

        else
        {
          sub_22B35F4AC();
          v150 = v203;
          sub_22B35FECC();
          v151 = v216;
          if (v216(v150, 1, v87) == 1)
          {
            v152 = v151;
            v153 = v202;
            v220(v202, v204, v87);
            if (v152(v150, 1, v87) != 1)
            {
              sub_22B123284(v150, &qword_27D8BAD90, &qword_22B366F58);
            }
          }

          else
          {
            v153 = v202;
            (*v205)(v202, v150, v87);
          }

          v154 = v218;
          v220(v218, v200, v87);
          sub_22B360A1C();
          sub_22B360A1C();
          v149(v154, v87);
          v149(v153, v87);
          if (v226 != v225)
          {
            (*v207)(v223, v224);
            goto LABEL_30;
          }

          v155 = v223;
          sub_22B35FE4C();
          v139 = v156;
          (*v207)(v155, v224);
          v140 = &v227;
        }

        **(v140 - 32) = v139 + **(v140 - 32);
LABEL_30:
        v60 = v210;
        v88 = v213;
        v136 = v219;
        v134 += v215;
        v132 = (v222 - 1);
      }

      while (v222 != 1);
    }

    v59 = v193;
    v86 = v191;
    v61 = v198;
    if (v193 == v179)
    {
      v158 = v195;
      v157 = v192;
      v192(v188, v191);
LABEL_52:

      v165 = v170;
      goto LABEL_55;
    }
  }

  v159 = v168;
  v185(v168, v187, v61);
  v160 = sub_22B36050C();
  v161 = sub_22B360D1C();
  if (os_log_type_enabled(v160, v161))
  {
    v162 = swift_slowAlloc();
    v163 = v89;
    v164 = swift_slowAlloc();
    v226 = v164;
    *v162 = 136315394;
    *(v162 + 4) = sub_22B1A7B20(0xD00000000000008DLL, 0x800000022B36DFF0, &v226);
    *(v162 + 12) = 2048;
    *(v162 + 14) = 706;
    _os_log_impl(&dword_22B116000, v160, v161, "[IntervalReadingRecords] Task is cancelled at marker %s:%ld", v162, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v164);
    MEMORY[0x23188F650](v164, -1, -1);
    MEMORY[0x23188F650](v162, -1, -1);

    v183(v159, v61);
    v157 = *v163;
    v86 = v191;
    (*v163)(v188, v191);
  }

  else
  {

    v183(v159, v61);
    v157 = *v89;
    v86 = v191;
    (*v89)(v188, v191);
  }

  v165 = v170;
  v158 = v195;
LABEL_55:
  *a15 &= v158 & 1;
  v157(v197, v86);
  objc_autoreleasePoolPop(v165);
  [v176 refreshAllObjects];
}

uint64_t sub_22B2FC08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[17] = a7;
  v8[18] = a8;
  v8[15] = a5;
  v8[16] = a6;
  v8[13] = a3;
  v8[14] = a4;
  v8[11] = a1;
  v8[12] = a2;
  v8[19] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BABD0, &unk_22B366EE0);
  v8[20] = swift_task_alloc();
  v8[21] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BABD8, &qword_22B3669E0);
  v8[22] = swift_task_alloc();
  v8[23] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BABE0, &unk_22B366EF0);
  v8[24] = swift_task_alloc();
  v9 = sub_22B3603AC();
  v8[25] = v9;
  v8[26] = *(v9 - 8);
  v8[27] = swift_task_alloc();
  v10 = sub_22B35DE9C();
  v8[28] = v10;
  v8[29] = *(v10 - 8);
  v8[30] = swift_task_alloc();
  v8[31] = swift_task_alloc();
  v8[32] = swift_task_alloc();
  v8[33] = swift_task_alloc();
  v8[34] = swift_task_alloc();
  v8[35] = swift_task_alloc();
  v8[36] = swift_task_alloc();
  v8[37] = swift_task_alloc();
  v11 = sub_22B36052C();
  v8[38] = v11;
  v8[39] = *(v11 - 8);
  v8[40] = swift_task_alloc();
  v8[41] = swift_task_alloc();
  v8[42] = swift_task_alloc();
  v12 = sub_22B35F7CC();
  v8[43] = v12;
  v8[44] = *(v12 - 8);
  v8[45] = swift_task_alloc();
  v8[46] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  v8[47] = swift_task_alloc();
  v8[48] = swift_task_alloc();
  v8[49] = swift_task_alloc();
  v8[50] = swift_task_alloc();
  v8[51] = swift_task_alloc();
  v8[52] = *(type metadata accessor for CDUsagePointRecords(0) - 8);
  v8[53] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B2FC450, 0, 0);
}

uint64_t sub_22B2FC450()
{
  if (qword_2814096B8 != -1)
  {
    swift_once();
  }

  v1 = qword_28140BCE8;
  *(v0 + 432) = qword_28140BCE8;

  return MEMORY[0x2822009F8](sub_22B2FC4E8, v1, 0);
}

uint64_t sub_22B2FC4E8()
{
  sub_22B32C2B8(v0[11], v0[12], v0[13], v0[14], 0, 0);
  v0[55] = v1;
  v0[56] = 0;

  return MEMORY[0x2822009F8](sub_22B2FC6D4, 0, 0);
}

uint64_t sub_22B2FC6D4()
{
  v183 = v0;
  v1 = *(v0 + 440);
  if (!v1)
  {
    goto LABEL_49;
  }

  v2 = *(v1 + 16);
  *(v0 + 456) = v2;
  if (!v2)
  {
LABEL_48:

LABEL_49:

    v138 = *(v0 + 8);
    goto LABEL_50;
  }

  v3 = *(v0 + 448);
  *(v0 + 464) = 0;
  if (!*(v1 + 16))
  {
LABEL_32:
    __break(1u);
LABEL_33:

    if (qword_28140A0C8 != -1)
    {
LABEL_55:
      swift_once();
    }

    v103 = *(v0 + 336);
    v104 = *(v0 + 304);
    v105 = *(v0 + 312);
    v106 = __swift_project_value_buffer(v104, qword_28140BD10);
    swift_beginAccess();
    (*(v105 + 16))(v103, v106, v104);
    v107 = sub_22B36050C();
    v108 = sub_22B360D1C();
    v109 = os_log_type_enabled(v107, v108);
    v110 = *(v0 + 408);
    v180 = *(v0 + 400);
    v111 = *(v0 + 352);
    v112 = *(v0 + 360);
    v114 = *(v0 + 336);
    v113 = *(v0 + 344);
    v116 = *(v0 + 304);
    v115 = *(v0 + 312);
    if (v109)
    {
      v175 = *(v0 + 408);
      v117 = swift_slowAlloc();
      v168 = v112;
      v118 = swift_slowAlloc();
      v182[0] = v118;
      *v117 = 136315394;
      *(v117 + 4) = sub_22B1A7B20(0xD000000000000044, 0x800000022B36DDB0, v182);
      *(v117 + 12) = 2048;
      *(v117 + 14) = 850;
      _os_log_impl(&dword_22B116000, v107, v108, "[IntervalReadingRecords] Task is cancelled at marker %s:%ld", v117, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v118);
      MEMORY[0x23188F650](v118, -1, -1);
      MEMORY[0x23188F650](v117, -1, -1);

      (*(v115 + 8))(v114, v116);
      (*(v111 + 8))(v168, v113);
      sub_22B123284(v180, &qword_27D8BA340, &qword_22B363FB0);
      v119 = v175;
    }

    else
    {

      (*(v115 + 8))(v114, v116);
      (*(v111 + 8))(v112, v113);
      sub_22B123284(v180, &qword_27D8BA340, &qword_22B363FB0);
      v119 = v110;
    }

    v120 = &qword_27D8BA340;
    v121 = &qword_22B363FB0;
LABEL_38:
    sub_22B123284(v119, v120, v121);
    sub_22B30D1E8(*(v0 + 424), type metadata accessor for CDUsagePointRecords);
    goto LABEL_49;
  }

  v4 = 0;
  while (1)
  {
    v177 = v3;
    v5 = *(v0 + 424);
    v6 = *(v0 + 112);
    v7 = *(v0 + 120);
    v8 = *(v0 + 104);
    v164 = *(v0 + 136);
    v170 = *(v0 + 88);
    sub_22B23E004(v1 + ((*(*(v0 + 416) + 80) + 32) & ~*(*(v0 + 416) + 80)) + *(*(v0 + 416) + 72) * v4, v5);
    v9 = *(v5 + 16);
    *(v0 + 472) = v9;
    v10 = *(v5 + 24);
    *(v0 + 480) = v10;
    v11 = swift_task_alloc();
    *(v11 + 16) = v170;
    *(v11 + 32) = v8;
    *(v11 + 40) = v6;
    *(v11 + 48) = 0;
    *(v11 + 56) = v9;
    *(v11 + 64) = v10;
    *(v11 + 72) = v164;
    *(v11 + 88) = v7;
    sub_22B360E7C();
    if (v177)
    {
      v137 = *(v0 + 424);

      sub_22B30D1E8(v137, type metadata accessor for CDUsagePointRecords);

      v138 = *(v0 + 8);
LABEL_50:

      return v138();
    }

    v13 = *(v0 + 112);
    v12 = *(v0 + 120);
    v14 = *(v0 + 104);
    v171 = *(v0 + 88);
    v178 = *(v0 + 136);

    v15 = swift_task_alloc();
    *(v15 + 16) = v171;
    *(v15 + 32) = v14;
    *(v15 + 40) = v13;
    *(v15 + 48) = 0;
    *(v15 + 56) = v9;
    *(v15 + 64) = v10;
    *(v15 + 72) = v178;
    *(v15 + 88) = v12;
    sub_22B360E7C();
    v16 = *(v0 + 424);

    v17 = *(v16 + 32);
    *(v0 + 488) = v17;
    v18 = *(v17 + 16);
    *(v0 + 496) = v18;
    v19 = &qword_27D8BA340;
    if (v18)
    {
      break;
    }

LABEL_30:
    v99 = *(v0 + 456);
    v100 = *(v0 + 424);
    v101 = *(v0 + 408);
    v102 = *(v0 + 464) + 1;
    sub_22B123284(*(v0 + 400), v19, &qword_22B363FB0);
    sub_22B123284(v101, v19, &qword_22B363FB0);
    sub_22B30D1E8(v100, type metadata accessor for CDUsagePointRecords);
    if (v102 == v99)
    {
      goto LABEL_48;
    }

    v3 = 0;
    v4 = *(v0 + 464) + 1;
    *(v0 + 464) = v4;
    v1 = *(v0 + 440);
    if (v4 >= *(v1 + 16))
    {
      goto LABEL_32;
    }
  }

  v20 = 0;
  *(v0 + 616) = *(*(v0 + 352) + 80);
  while (1)
  {
    *(v0 + 504) = v20;
    v21 = *(v0 + 488);
    if (v20 >= *(v21 + 16))
    {
      __break(1u);
      goto LABEL_55;
    }

    (*(*(v0 + 352) + 16))(*(v0 + 360), v21 + ((*(v0 + 616) + 32) & ~*(v0 + 616)) + *(*(v0 + 352) + 72) * v20, *(v0 + 344));
    v22 = sub_22B35F75C();
    v24 = v23;

    v25 = HIBYTE(v24) & 0xF;
    if ((v24 & 0x2000000000000000) == 0)
    {
      v25 = v22 & 0xFFFFFFFFFFFFLL;
    }

    if (v25)
    {
      break;
    }

    (*(*(v0 + 352) + 8))(*(v0 + 360), *(v0 + 344));
LABEL_9:
    v20 = *(v0 + 504) + 1;
    if (v20 == *(v0 + 496))
    {
      goto LABEL_30;
    }
  }

  if (sub_22B360BFC())
  {
    goto LABEL_33;
  }

  v26 = *(v0 + 392);
  v27 = *(v0 + 224);
  v28 = *(v0 + 232);
  sub_22B170BE0(*(v0 + 408), v26, v19, &qword_22B363FB0);
  v29 = *(v28 + 48);
  *(v0 + 512) = v29;
  *(v0 + 520) = (v28 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v29(v26, 1, v27) == 1)
  {
    v30 = *(v0 + 392);
    (*(*(v0 + 352) + 8))(*(v0 + 360), *(v0 + 344));
    sub_22B123284(v30, v19, &qword_22B363FB0);
    goto LABEL_9;
  }

  v31 = *(v0 + 392);
  v32 = *(v0 + 400);
  v33 = *(v0 + 384);
  v34 = *(v0 + 296);
  v36 = *(v0 + 224);
  v35 = *(v0 + 232);
  v37 = *(v35 + 32);
  *(v0 + 528) = v37;
  *(v0 + 536) = (v35 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v37(v34, v31, v36);
  sub_22B170BE0(v32, v33, v19, &qword_22B363FB0);
  v38 = v29(v33, 1, v36);
  v39 = *(v0 + 384);
  v40 = v19;
  v41 = *(v0 + 360);
  v42 = *(v0 + 224);
  v43 = *(v0 + 232) + 8;
  if (v38 == 1)
  {
    v45 = *(v0 + 344);
    v44 = *(v0 + 352);
    (*v43)(*(v0 + 296), *(v0 + 224));
    (*(v44 + 8))(v41, v45);
    sub_22B123284(v39, v40, &qword_22B363FB0);
    v19 = v40;
    goto LABEL_9;
  }

  v46 = *(v0 + 272);
  v47 = *(v0 + 208);
  v48 = *(v0 + 216);
  v159 = *(v0 + 200);
  v172 = v37;
  v37(*(v0 + 288), v39, v42);
  sub_22B35F79C();
  sub_22B36038C();
  v49 = *(v47 + 8);
  v49(v48, v159);
  v50 = sub_22B35DDEC();
  v51 = *v43;
  *(v0 + 544) = *v43;
  *(v0 + 552) = v43 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v165 = v51;
  v51(v46, v42);
  if (v50)
  {
    (*(*(v0 + 232) + 16))(*(v0 + 280), *(v0 + 296), *(v0 + 224));
  }

  else
  {
    v52 = *(v0 + 216);
    v53 = *(v0 + 200);
    sub_22B35F79C();
    sub_22B36038C();
    v49(v52, v53);
  }

  v54 = v49;
  v55 = *(v0 + 272);
  v56 = *(v0 + 216);
  v160 = *(v0 + 224);
  v57 = *(v0 + 200);
  sub_22B35F77C();
  sub_22B36038C();
  v54(v56, v57);
  v58 = sub_22B35DDFC();
  v165(v55, v160);
  if (v58)
  {
    (*(*(v0 + 232) + 16))(*(v0 + 264), *(v0 + 288), *(v0 + 224));
  }

  else
  {
    v59 = v54;
    v60 = *(v0 + 216);
    v61 = *(v0 + 200);
    sub_22B35F77C();
    sub_22B36038C();
    v59(v60, v61);
  }

  v62 = *(v0 + 280);
  v63 = *(v0 + 224);
  v64 = *(v0 + 232);
  v65 = *(v0 + 184);
  v66 = *(v0 + 192);
  v67 = *(v0 + 168);
  v68 = *(v0 + 176);
  v161 = *(v0 + 152);
  *(v0 + 560) = sub_22B35F75C();
  *(v0 + 568) = v69;
  v166 = *(v67 + 36);
  sub_22B35DE0C();
  v156 = *(v64 + 16);
  *(v0 + 576) = v156;
  *(v0 + 584) = (v64 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v70 = v63;
  v156(v68, v62, v63);
  v71 = *(v65 + 44);
  v72 = v65;
  *(v0 + 620) = v71;
  v73 = v66 + v71;
  v74 = *(v161 + 48);
  *(v0 + 624) = v74;
  v172(v66 + v71 + v74, v68, v70);
  v75 = *(v72 + 36);
  *(v0 + 628) = v75;
  v172(v66 + v75, v68 + v166, v70);
  v76 = *(v72 + 40);
  *(v0 + 632) = v76;
  *(v66 + v76) = 0x4143C68000000000;
  v156(v66, v73 + v74, v70);
  *v73 = 0;
  *(v73 + 8) = 0;
  *(v0 + 592) = 0;
  (*(v0 + 576))(*(v0 + 256), *(v0 + 192) + *(v0 + 620) + *(v0 + 624), *(v0 + 224));
  sub_22B306EB4(&qword_28140B490, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  if (sub_22B36075C())
  {
    (*(v0 + 544))(*(v0 + 256), *(v0 + 224));
    v77 = 1;
  }

  else
  {
    v153 = *(v0 + 544);
    v173 = *(v0 + 528);
    v162 = *(v0 + 376);
    v167 = *(v0 + 624);
    v78 = *(v0 + 272);
    v157 = *(v0 + 256);
    v79 = *(v0 + 224);
    v80 = *(v0 + 232);
    v81 = *(v0 + 192) + *(v0 + 620);
    v83 = *(v0 + 152);
    v82 = *(v0 + 160);
    sub_22B170BE0(v81, v82, &qword_27D8BABD0, &unk_22B366EE0);
    v84 = *(v83 + 48);
    sub_22B306EB4(&qword_27D8BABE8, MEMORY[0x277CC9578], MEMORY[0x277CC95A8]);
    v85 = sub_22B36101C();
    v87 = v86;
    v153(v82 + v84, v79);
    *v81 = v85;
    *(v81 + 8) = v87 & 1;
    (*(v80 + 40))(v81 + v167, v78, v79);
    v173(v162, v157, v79);
    v77 = 0;
  }

  v88 = *(v0 + 512);
  v89 = *(v0 + 376);
  v90 = *(v0 + 224);
  (*(*(v0 + 232) + 56))(v89, v77, 1, v90);
  if (v88(v89, 1, v90) == 1)
  {
    v91 = *(v0 + 544);
    v92 = *(v0 + 352);
    v179 = *(v0 + 360);
    v174 = *(v0 + 344);
    v94 = *(v0 + 288);
    v93 = *(v0 + 296);
    v95 = *(v0 + 280);
    v96 = *(v0 + 264);
    v97 = *(v0 + 224);
    v98 = *(v0 + 192);

    v91(v96, v97);
    v91(v95, v97);
    v91(v94, v97);
    v91(v93, v97);
    (*(v92 + 8))(v179, v174);
    sub_22B123284(v98, &qword_27D8BABE0, &unk_22B366EF0);
    v19 = &qword_27D8BA340;
    goto LABEL_9;
  }

  (*(v0 + 528))(*(v0 + 248), *(v0 + 376), *(v0 + 224));
  if (sub_22B360BFC())
  {

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v122 = *(v0 + 328);
    v123 = *(v0 + 304);
    v124 = *(v0 + 312);
    v125 = __swift_project_value_buffer(v123, qword_28140BD10);
    swift_beginAccess();
    (*(v124 + 16))(v122, v125, v123);
    v126 = sub_22B36050C();
    v127 = sub_22B360D1C();
    v128 = os_log_type_enabled(v126, v127);
    v129 = *(v0 + 544);
    v130 = *(v0 + 408);
    v176 = *(v0 + 400);
    v131 = *(v0 + 352);
    v163 = *(v0 + 344);
    v169 = *(v0 + 360);
    v132 = *(v0 + 312);
    v151 = *(v0 + 304);
    v152 = *(v0 + 328);
    v155 = *(v0 + 288);
    v158 = *(v0 + 296);
    v154 = *(v0 + 280);
    v150 = *(v0 + 264);
    v181 = *(v0 + 248);
    v133 = *(v0 + 224);
    v134 = *(v0 + 192);
    if (v128)
    {
      v148 = *(v0 + 408);
      v135 = swift_slowAlloc();
      v149 = v134;
      v136 = swift_slowAlloc();
      v182[0] = v136;
      *v135 = 136315394;
      *(v135 + 4) = sub_22B1A7B20(0xD000000000000044, 0x800000022B36DDB0, v182);
      *(v135 + 12) = 2048;
      *(v135 + 14) = 879;
      _os_log_impl(&dword_22B116000, v126, v127, "[IntervalReadingRecords] Task is cancelled at marker %s:%ld", v135, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v136);
      MEMORY[0x23188F650](v136, -1, -1);
      MEMORY[0x23188F650](v135, -1, -1);

      (*(v132 + 8))(v152, v151);
      v129(v150, v133);
      v129(v154, v133);
      v129(v155, v133);
      v129(v158, v133);
      (*(v131 + 8))(v169, v163);
      sub_22B123284(v176, &qword_27D8BA340, &qword_22B363FB0);
      sub_22B123284(v148, &qword_27D8BA340, &qword_22B363FB0);
      v129(v181, v133);
      v120 = &qword_27D8BABE0;
      v121 = &unk_22B366EF0;
      v119 = v149;
    }

    else
    {

      (*(v132 + 8))(v152, v151);
      v129(v150, v133);
      v129(v154, v133);
      v129(v155, v133);
      v129(v158, v133);
      (*(v131 + 8))(v169, v163);
      sub_22B123284(v176, &qword_27D8BA340, &qword_22B363FB0);
      sub_22B123284(v130, &qword_27D8BA340, &qword_22B363FB0);
      v129(v181, v133);
      v120 = &qword_27D8BABE0;
      v121 = &unk_22B366EF0;
      v119 = v134;
    }

    goto LABEL_38;
  }

  sub_22B35DE0C();
  v139 = swift_task_alloc();
  *(v0 + 600) = v139;
  *v139 = v0;
  v139[1] = sub_22B2FD994;
  v140 = *(v0 + 568);
  v141 = *(v0 + 560);
  v143 = *(v0 + 240);
  v142 = *(v0 + 248);
  v144 = *(v0 + 128);
  v146 = *(v0 + 104);
  v145 = *(v0 + 112);

  return sub_22B3156C8(v146, v145, v142, v143, v144, v141, v140);
}

uint64_t sub_22B2FD994(uint64_t a1)
{
  *(*v1 + 608) = a1;

  return MEMORY[0x2822009F8](sub_22B2FDA94, 0, 0);
}

uint64_t sub_22B2FDA94()
{
  v200 = v1;
  v2 = *(v1 + 608);
  v3 = *(v1 + 592);
  if (v2)
  {
    v4 = *(v1 + 568);
    v5 = *(v1 + 560);
    v7 = *(v1 + 472);
    v6 = *(v1 + 480);
    v8 = *(v1 + 120);
    v182 = *(v1 + 88);
    v191 = *(v1 + 104);
    v9 = swift_task_alloc();
    v10 = *(v1 + 240);
    *(v9 + 16) = *(v1 + 136);
    *(v9 + 32) = v182;
    *(v9 + 48) = v191;
    *(v9 + 64) = v7;
    *(v9 + 72) = v6;
    *(v9 + 80) = vextq_s8(v10, v10, 8uLL);
    *(v9 + 96) = v8;
    *(v9 + 104) = v2;
    *(v9 + 112) = v5;
    *(v9 + 120) = v4;
    v0 = v3;
    sub_22B360E7C();

    if (v3)
    {
      if (qword_28140A0C8 != -1)
      {
LABEL_63:
        swift_once();
      }

      v12 = *(v1 + 312);
      v11 = *(v1 + 320);
      v13 = *(v1 + 304);
      v14 = __swift_project_value_buffer(v13, qword_28140BD10);
      swift_beginAccess();
      (*(v12 + 16))(v11, v14, v13);
      v15 = sub_22B36050C();
      v16 = sub_22B360D1C();
      v17 = os_log_type_enabled(v15, v16);
      v18 = *(v1 + 320);
      v19 = *(v1 + 304);
      v20 = (*(v1 + 312) + 8);
      if (v17)
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_22B116000, v15, v16, "[Dropbox Bridge] Failed to process reading", v21, 2u);
        MEMORY[0x23188F650](v21, -1, -1);
      }

      (*v20)(v18, v19);
    }

    v3 = 0;
  }

  v22 = *(v1 + 544);
  v23 = *(v1 + 248);
  v24 = *(v1 + 224);
  v22(*(v1 + 240), v24);
  v22(v23, v24);
LABEL_9:
  *(v1 + 592) = v3;
  (*(v1 + 576))(*(v1 + 256), *(v1 + 192) + *(v1 + 620) + *(v1 + 624), *(v1 + 224));
  sub_22B306EB4(&qword_28140B490, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  if (sub_22B36075C())
  {
    (*(v1 + 544))(*(v1 + 256), *(v1 + 224));
    v25 = 1;
  }

  else
  {
    v164 = *(v1 + 544);
    v177 = *(v1 + 624);
    v183 = *(v1 + 528);
    v26 = *(v1 + 272);
    v168 = *(v1 + 256);
    v171 = *(v1 + 376);
    v27 = *(v1 + 224);
    v162 = *(v1 + 232);
    v28 = *(v1 + 192) + *(v1 + 620);
    v30 = *(v1 + 152);
    v29 = *(v1 + 160);
    sub_22B170BE0(v28, v29, &qword_27D8BABD0, &unk_22B366EE0);
    v31 = *(v30 + 48);
    sub_22B306EB4(&qword_27D8BABE8, MEMORY[0x277CC9578], MEMORY[0x277CC95A8]);
    v32 = sub_22B36101C();
    LOBYTE(v30) = v33;
    v164(v29 + v31, v27);
    *v28 = v32;
    *(v28 + 8) = v30 & 1;
    (*(v162 + 40))(v28 + v177, v26, v27);
    v183(v171, v168, v27);
    v25 = 0;
  }

  v34 = *(v1 + 512);
  v35 = *(v1 + 376);
  v36 = *(v1 + 224);
  (*(*(v1 + 232) + 56))(v35, v25, 1, v36);
  if (v34(v35, 1, v36) == 1)
  {
    v37 = *(v1 + 544);
    v38 = *(v1 + 352);
    v192 = *(v1 + 360);
    v39 = *(v1 + 288);
    v172 = *(v1 + 296);
    v40 = *(v1 + 280);
    v41 = *(v1 + 264);
    v42 = *(v1 + 224);
    v178 = *(v1 + 192);
    v184 = *(v1 + 344);

    v37(v41, v42);
    v37(v40, v42);
    v37(v39, v42);
    v37(v172, v42);
    (*(v38 + 8))(v192, v184);
    sub_22B123284(v178, &qword_27D8BABE0, &unk_22B366EF0);
    while (1)
    {
      while (1)
      {
        v43 = *(v1 + 504) + 1;
        if (v43 == *(v1 + 496))
        {
          while (1)
          {
            v44 = *(v1 + 456);
            v45 = *(v1 + 424);
            v0 = *(v1 + 408);
            v46 = *(v1 + 464) + 1;
            sub_22B123284(*(v1 + 400), &qword_27D8BA340, &qword_22B363FB0);
            sub_22B123284(v0, &qword_27D8BA340, &qword_22B363FB0);
            sub_22B30D1E8(v45, type metadata accessor for CDUsagePointRecords);
            if (v46 == v44)
            {

              goto LABEL_40;
            }

            v47 = *(v1 + 464) + 1;
            *(v1 + 464) = v47;
            v48 = *(v1 + 440);
            if (v47 >= *(v48 + 16))
            {
              break;
            }

            v49 = *(v1 + 424);
            v51 = *(v1 + 112);
            v50 = *(v1 + 120);
            v52 = *(v1 + 104);
            v185 = *(v1 + 136);
            v193 = *(v1 + 88);
            sub_22B23E004(v48 + ((*(*(v1 + 416) + 80) + 32) & ~*(*(v1 + 416) + 80)) + *(*(v1 + 416) + 72) * v47, v49);
            v53 = *(v49 + 16);
            *(v1 + 472) = v53;
            v54 = *(v49 + 24);
            *(v1 + 480) = v54;
            v55 = swift_task_alloc();
            *(v55 + 16) = v193;
            *(v55 + 32) = v52;
            *(v55 + 40) = v51;
            *(v55 + 48) = 0;
            *(v55 + 56) = v53;
            *(v55 + 64) = v54;
            *(v55 + 72) = v185;
            *(v55 + 88) = v50;
            v0 = v3;
            sub_22B360E7C();
            if (v3)
            {
              v114 = *(v1 + 424);

              sub_22B30D1E8(v114, type metadata accessor for CDUsagePointRecords);

              v113 = *(v1 + 8);
              goto LABEL_42;
            }

            v57 = *(v1 + 112);
            v56 = *(v1 + 120);
            v58 = *(v1 + 104);
            v186 = *(v1 + 88);
            v194 = *(v1 + 136);

            v59 = swift_task_alloc();
            *(v59 + 16) = v186;
            *(v59 + 32) = v58;
            *(v59 + 40) = v57;
            *(v59 + 48) = 0;
            *(v59 + 56) = v53;
            *(v59 + 64) = v54;
            *(v59 + 72) = v194;
            *(v59 + 88) = v56;
            sub_22B360E7C();
            v60 = *(v1 + 424);

            v3 = 0;
            v61 = *(v60 + 32);
            *(v1 + 488) = v61;
            v62 = *(v61 + 16);
            *(v1 + 496) = v62;
            if (v62)
            {
              v3 = 0;
              v43 = 0;
              *(v1 + 616) = *(*(v1 + 352) + 80);
              goto LABEL_21;
            }
          }

          __break(1u);
LABEL_62:
          __break(1u);
          goto LABEL_63;
        }

        v61 = *(v1 + 488);
LABEL_21:
        *(v1 + 504) = v43;
        if (v43 >= *(v61 + 16))
        {
          goto LABEL_62;
        }

        (*(*(v1 + 352) + 16))(*(v1 + 360), v61 + ((*(v1 + 616) + 32) & ~*(v1 + 616)) + *(*(v1 + 352) + 72) * v43, *(v1 + 344));
        v63 = sub_22B35F75C();
        v65 = v64;

        v66 = HIBYTE(v65) & 0xF;
        if ((v65 & 0x2000000000000000) == 0)
        {
          v66 = v63 & 0xFFFFFFFFFFFFLL;
        }

        if (v66)
        {
          break;
        }

        (*(*(v1 + 352) + 8))(*(v1 + 360), *(v1 + 344));
      }

      if (sub_22B360BFC())
      {
        break;
      }

      v67 = *(v1 + 392);
      v68 = *(v1 + 224);
      v69 = *(v1 + 232);
      sub_22B170BE0(*(v1 + 408), v67, &qword_27D8BA340, &qword_22B363FB0);
      v70 = *(v69 + 48);
      *(v1 + 512) = v70;
      *(v1 + 520) = (v69 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      if (v70(v67, 1, v68) == 1)
      {
        v71 = *(v1 + 392);
        (*(*(v1 + 352) + 8))(*(v1 + 360), *(v1 + 344));
        v72 = v71;
      }

      else
      {
        v73 = *(v1 + 392);
        v195 = *(v1 + 400);
        v74 = *(v1 + 384);
        v75 = *(v1 + 296);
        v76 = *(v1 + 232);
        v187 = *(v1 + 224);
        v77 = *(v76 + 32);
        *(v1 + 528) = v77;
        *(v1 + 536) = (v76 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
        v77(v75, v73);
        sub_22B170BE0(v195, v74, &qword_27D8BA340, &qword_22B363FB0);
        v78 = v70(v74, 1, v187);
        v79 = *(v1 + 384);
        v80 = *(v1 + 360);
        if (v78 != 1)
        {
          v83 = *(v1 + 272);
          v85 = *(v1 + 208);
          v84 = *(v1 + 216);
          v173 = *(v1 + 200);
          v196 = *(v1 + 224);
          v188 = v77;
          v86 = *(v1 + 232) + 8;
          (v77)(*(v1 + 288), *(v1 + 384), v196);
          sub_22B35F79C();
          sub_22B36038C();
          v87 = *(v85 + 8);
          v87(v84, v173);
          v88 = sub_22B35DDEC();
          v89 = *v86;
          *(v1 + 544) = *v86;
          *(v1 + 552) = v86 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v174 = v89;
          v89(v83, v196);
          if (v88)
          {
            (*(*(v1 + 232) + 16))(*(v1 + 280), *(v1 + 296), *(v1 + 224));
          }

          else
          {
            v90 = *(v1 + 216);
            v91 = *(v1 + 200);
            sub_22B35F79C();
            sub_22B36038C();
            v87(v90, v91);
          }

          v92 = v87;
          v93 = *(v1 + 272);
          v95 = *(v1 + 216);
          v94 = *(v1 + 224);
          v96 = *(v1 + 200);
          sub_22B35F77C();
          sub_22B36038C();
          v92(v95, v96);
          v97 = sub_22B35DDFC();
          v174(v93, v94);
          if (v97)
          {
            (*(*(v1 + 232) + 16))(*(v1 + 264), *(v1 + 288), *(v1 + 224));
          }

          else
          {
            v98 = *(v1 + 216);
            v99 = *(v1 + 200);
            sub_22B35F77C();
            sub_22B36038C();
            v92(v98, v99);
          }

          v100 = *(v1 + 224);
          v101 = *(v1 + 232);
          v103 = *(v1 + 184);
          v102 = *(v1 + 192);
          v104 = *(v1 + 168);
          v105 = *(v1 + 176);
          v169 = *(v1 + 152);
          v175 = *(v1 + 280);
          *(v1 + 560) = sub_22B35F75C();
          *(v1 + 568) = v106;
          v179 = *(v104 + 36);
          sub_22B35DE0C();
          v166 = *(v101 + 16);
          *(v1 + 576) = v166;
          *(v1 + 584) = (v101 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
          v166(v105, v175, v100);
          v107 = *(v103 + 44);
          v108 = v103;
          *(v1 + 620) = v107;
          v109 = v102 + v107;
          v110 = *(v169 + 48);
          *(v1 + 624) = v110;
          v188(v102 + v107 + v110, v105, v100);
          v111 = *(v108 + 36);
          *(v1 + 628) = v111;
          v188(v102 + v111, v105 + v179, v100);
          v112 = *(v108 + 40);
          *(v1 + 632) = v112;
          *(v102 + v112) = 0x4143C68000000000;
          v166(v102, v109 + v110, v100);
          *v109 = 0;
          *(v109 + 8) = 0;
          goto LABEL_9;
        }

        v81 = *(v1 + 344);
        v82 = *(v1 + 352);
        (*(*(v1 + 232) + 8))(*(v1 + 296), *(v1 + 224));
        (*(v82 + 8))(v80, v81);
        v72 = v79;
      }

      sub_22B123284(v72, &qword_27D8BA340, &qword_22B363FB0);
    }

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v134 = *(v1 + 336);
    v135 = *(v1 + 304);
    v136 = *(v1 + 312);
    v137 = __swift_project_value_buffer(v135, qword_28140BD10);
    swift_beginAccess();
    (*(v136 + 16))(v134, v137, v135);
    v138 = sub_22B36050C();
    v139 = sub_22B360D1C();
    v140 = os_log_type_enabled(v138, v139);
    v141 = *(v1 + 408);
    v198 = *(v1 + 400);
    v142 = *(v1 + 352);
    v143 = *(v1 + 360);
    v145 = *(v1 + 336);
    v144 = *(v1 + 344);
    v147 = *(v1 + 304);
    v146 = *(v1 + 312);
    if (v140)
    {
      v190 = *(v1 + 408);
      v148 = swift_slowAlloc();
      v181 = v143;
      v149 = swift_slowAlloc();
      v199[0] = v149;
      *v148 = 136315394;
      *(v148 + 4) = sub_22B1A7B20(0xD000000000000044, 0x800000022B36DDB0, v199);
      *(v148 + 12) = 2048;
      *(v148 + 14) = 850;
      _os_log_impl(&dword_22B116000, v138, v139, "[IntervalReadingRecords] Task is cancelled at marker %s:%ld", v148, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v149);
      MEMORY[0x23188F650](v149, -1, -1);
      MEMORY[0x23188F650](v148, -1, -1);

      (*(v146 + 8))(v145, v147);
      (*(v142 + 8))(v181, v144);
      sub_22B123284(v198, &qword_27D8BA340, &qword_22B363FB0);
      v133 = v190;
    }

    else
    {

      (*(v146 + 8))(v145, v147);
      (*(v142 + 8))(v143, v144);
      sub_22B123284(v198, &qword_27D8BA340, &qword_22B363FB0);
      v133 = v141;
    }

    v131 = &qword_27D8BA340;
    v132 = &qword_22B363FB0;
  }

  else
  {
    (*(v1 + 528))(*(v1 + 248), *(v1 + 376), *(v1 + 224));
    if ((sub_22B360BFC() & 1) == 0)
    {
      sub_22B35DE0C();
      v150 = swift_task_alloc();
      *(v1 + 600) = v150;
      *v150 = v1;
      v150[1] = sub_22B2FD994;
      v151 = *(v1 + 568);
      v152 = *(v1 + 560);
      v154 = *(v1 + 240);
      v153 = *(v1 + 248);
      v155 = *(v1 + 128);
      v157 = *(v1 + 104);
      v156 = *(v1 + 112);

      return sub_22B3156C8(v157, v156, v153, v154, v155, v152, v151);
    }

    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v116 = *(v1 + 328);
    v117 = *(v1 + 304);
    v118 = *(v1 + 312);
    v119 = __swift_project_value_buffer(v117, qword_28140BD10);
    swift_beginAccess();
    (*(v118 + 16))(v116, v119, v117);
    v120 = sub_22B36050C();
    v121 = sub_22B360D1C();
    v122 = os_log_type_enabled(v120, v121);
    v123 = *(v1 + 544);
    v124 = *(v1 + 408);
    v125 = *(v1 + 352);
    v180 = *(v1 + 360);
    v189 = *(v1 + 400);
    v126 = *(v1 + 312);
    v161 = *(v1 + 304);
    v163 = *(v1 + 328);
    v170 = *(v1 + 296);
    v176 = *(v1 + 344);
    v165 = *(v1 + 280);
    v167 = *(v1 + 288);
    v160 = *(v1 + 264);
    v197 = *(v1 + 248);
    v127 = *(v1 + 224);
    v128 = *(v1 + 192);
    if (v122)
    {
      v158 = *(v1 + 408);
      v129 = swift_slowAlloc();
      v159 = v128;
      v130 = swift_slowAlloc();
      v199[0] = v130;
      *v129 = 136315394;
      *(v129 + 4) = sub_22B1A7B20(0xD000000000000044, 0x800000022B36DDB0, v199);
      *(v129 + 12) = 2048;
      *(v129 + 14) = 879;
      _os_log_impl(&dword_22B116000, v120, v121, "[IntervalReadingRecords] Task is cancelled at marker %s:%ld", v129, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v130);
      MEMORY[0x23188F650](v130, -1, -1);
      MEMORY[0x23188F650](v129, -1, -1);

      (*(v126 + 8))(v163, v161);
      v123(v160, v127);
      v123(v165, v127);
      v123(v167, v127);
      v123(v170, v127);
      (*(v125 + 8))(v180, v176);
      sub_22B123284(v189, &qword_27D8BA340, &qword_22B363FB0);
      sub_22B123284(v158, &qword_27D8BA340, &qword_22B363FB0);
      v123(v197, v127);
      v131 = &qword_27D8BABE0;
      v132 = &unk_22B366EF0;
      v133 = v159;
    }

    else
    {

      (*(v126 + 8))(v163, v161);
      v123(v160, v127);
      v123(v165, v127);
      v123(v167, v127);
      v123(v170, v127);
      (*(v125 + 8))(v180, v176);
      sub_22B123284(v189, &qword_27D8BA340, &qword_22B363FB0);
      sub_22B123284(v124, &qword_27D8BA340, &qword_22B363FB0);
      v123(v197, v127);
      v131 = &qword_27D8BABE0;
      v132 = &unk_22B366EF0;
      v133 = v128;
    }
  }

  sub_22B123284(v133, v131, v132);
  sub_22B30D1E8(*(v1 + 424), type metadata accessor for CDUsagePointRecords);
LABEL_40:

  v113 = *(v1 + 8);
LABEL_42:

  return v113();
}

uint64_t sub_22B2FEF00(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v33 = a6;
  v34 = a8;
  v32 = a5;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD60, &unk_22B366F18);
  v30 = v13;
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v29 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA8D0, &qword_22B363610);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v29 - v18;
  v31 = &v29 - v18;
  v20 = sub_22B360B6C();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  (*(v14 + 16))(v16, a1, v13);
  v21 = (*(v14 + 80) + 88) & ~*(v14 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  *(v22 + 4) = a2;
  *(v22 + 5) = a3;
  v23 = v32;
  v24 = v33;
  *(v22 + 6) = a4;
  *(v22 + 7) = v23;
  *(v22 + 8) = v24;
  *(v22 + 9) = a7;
  *(v22 + 10) = v34;
  (*(v14 + 32))(&v22[v21], v16, v30);
  v25 = a2;

  v26 = a4;

  v27 = a7;

  sub_22B123DF0(0, 0, v31, &unk_22B366F30, v22);
}

uint64_t sub_22B2FF148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 368) = v22;
  *(v8 + 352) = v21;
  *(v8 + 336) = a7;
  *(v8 + 344) = a8;
  *(v8 + 320) = a5;
  *(v8 + 328) = a6;
  *(v8 + 312) = a4;
  v9 = sub_22B35FD2C();
  *(v8 + 376) = v9;
  *(v8 + 384) = *(v9 - 8);
  *(v8 + 392) = swift_task_alloc();
  *(v8 + 400) = swift_task_alloc();
  v10 = sub_22B35FC8C();
  *(v8 + 408) = v10;
  *(v8 + 416) = *(v10 - 8);
  *(v8 + 424) = swift_task_alloc();
  *(v8 + 432) = swift_task_alloc();
  v11 = sub_22B36052C();
  *(v8 + 440) = v11;
  *(v8 + 448) = *(v11 - 8);
  *(v8 + 456) = swift_task_alloc();
  *(v8 + 464) = swift_task_alloc();
  *(v8 + 472) = swift_task_alloc();
  *(v8 + 480) = swift_task_alloc();
  *(v8 + 488) = swift_task_alloc();
  v12 = sub_22B35FB9C();
  *(v8 + 496) = v12;
  *(v8 + 504) = *(v12 - 8);
  *(v8 + 512) = swift_task_alloc();
  v13 = sub_22B3606AC();
  *(v8 + 520) = v13;
  *(v8 + 528) = *(v13 - 8);
  *(v8 + 536) = swift_task_alloc();
  v14 = sub_22B36069C();
  *(v8 + 544) = v14;
  *(v8 + 552) = *(v14 - 8);
  *(v8 + 560) = swift_task_alloc();
  *(v8 + 568) = swift_task_alloc();
  v15 = sub_22B35FC0C();
  *(v8 + 576) = v15;
  *(v8 + 584) = *(v15 - 8);
  *(v8 + 592) = swift_task_alloc();
  *(v8 + 600) = swift_task_alloc();
  *(v8 + 608) = swift_task_alloc();
  *(v8 + 616) = swift_task_alloc();
  v16 = sub_22B35DE9C();
  *(v8 + 624) = v16;
  *(v8 + 632) = *(v16 - 8);
  *(v8 + 640) = swift_task_alloc();
  *(v8 + 648) = swift_task_alloc();
  *(v8 + 656) = swift_task_alloc();
  *(v8 + 664) = swift_task_alloc();
  *(v8 + 672) = swift_task_alloc();
  *(v8 + 680) = swift_task_alloc();
  *(v8 + 688) = swift_task_alloc();
  *(v8 + 696) = swift_task_alloc();
  v17 = sub_22B3603AC();
  *(v8 + 704) = v17;
  *(v8 + 712) = *(v17 - 8);
  *(v8 + 720) = swift_task_alloc();
  *(v8 + 728) = swift_task_alloc();
  *(v8 + 736) = swift_task_alloc();
  *(v8 + 744) = swift_task_alloc();
  *(v8 + 752) = swift_task_alloc();
  *(v8 + 760) = swift_task_alloc();
  *(v8 + 768) = swift_task_alloc();
  sub_22B3603FC();
  *(v8 + 776) = swift_task_alloc();
  v18 = sub_22B35FD8C();
  *(v8 + 784) = v18;
  *(v8 + 792) = *(v18 - 8);
  *(v8 + 800) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B2FF6CC, 0, 0);
}

uint64_t sub_22B2FF6CC()
{
  v280 = v0;
  v1 = v0;
  v279 = *MEMORY[0x277D85DE8];
  sub_22B1CA368(*(v0 + 312), &v275);
  v2 = *(&v276 + 1);
  v3 = v276;
  v4 = v278;

  v272 = v0;
  if (v2 >> 60 == 15)
  {

LABEL_10:
    *(v0 + 192) = MEMORY[0x277D84F90];
    *(v0 + 200) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD60, &unk_22B366F18);
    sub_22B360AEC();
    sub_22B11EDC0(v3, v2);
    goto LABEL_11;
  }

  if (!v4)
  {
    goto LABEL_10;
  }

  sub_22B1D825C(v3, v2);

  v277 = 0;
  v275 = 0u;
  v276 = 0u;
  sub_22B144B30(v3, v2);
  sub_22B3603EC();
  sub_22B306EB4(&qword_27D8BABF0, MEMORY[0x277D074E0], MEMORY[0x277D074C8]);
  sub_22B36041C();
  v271 = v3;
  v22 = *(v0 + 768);
  v23 = *(v1 + 712);
  v24 = *(v1 + 704);
  v25 = *(v1 + 696);
  v26 = *(v1 + 688);
  v27 = *(v1 + 632);
  v28 = *(v1 + 624);
  sub_22B35FCBC();
  sub_22B36038C();
  v29 = v24;
  v30 = *(v23 + 8);
  v30(v22, v29);
  sub_22B35DD1C();
  sub_22B306EB4(&qword_27D8BA430, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v31 = sub_22B36078C();
  v32 = v26;
  v33 = *(v27 + 8);
  v33(v32, v28);
  v33(v25, v28);
  if (v31)
  {
    goto LABEL_28;
  }

  v34 = *(v1 + 768);
  v35 = *(v1 + 704);
  v267 = v33;
  v36 = *(v1 + 696);
  v37 = *(v1 + 688);
  v38 = *(v1 + 624);
  sub_22B35FC5C();
  sub_22B36038C();
  v30(v34, v35);
  sub_22B35DD2C();
  v39 = sub_22B36078C();
  v267(v37, v38);
  v267(v36, v38);
  if (v39)
  {
    goto LABEL_28;
  }

  v40 = sub_22B35FC3C();
  v42 = v41;

  v43 = HIBYTE(v42) & 0xF;
  if ((v42 & 0x2000000000000000) == 0)
  {
    v43 = v40 & 0xFFFFFFFFFFFFLL;
  }

  if (!v43)
  {
    goto LABEL_28;
  }

  v44 = sub_22B35FBCC();
  v46 = v45;

  v47 = HIBYTE(v46) & 0xF;
  if ((v46 & 0x2000000000000000) == 0)
  {
    v47 = v44 & 0xFFFFFFFFFFFFLL;
  }

  if (!v47)
  {
    goto LABEL_28;
  }

  v48 = sub_22B35FD5C();
  v50 = v49;

  v51 = HIBYTE(v50) & 0xF;
  if ((v50 & 0x2000000000000000) == 0)
  {
    v51 = v48 & 0xFFFFFFFFFFFFLL;
  }

  if (!v51)
  {
LABEL_28:
    v77 = *(v1 + 800);
    v78 = *(v1 + 792);
    v79 = *(v1 + 784);
    *(v1 + 224) = MEMORY[0x277D84F90];
    *(v1 + 232) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD60, &unk_22B366F18);
    sub_22B360AEC();
    sub_22B11EDC0(v271, v2);
    sub_22B11EDC0(v271, v2);
    (*(v78 + 8))(v77, v79);
    goto LABEL_11;
  }

  v52 = *(v272 + 768);
  v265 = *(v272 + 704);
  v237 = *(v272 + 696);
  v244 = *(v272 + 624);
  v53 = *(v272 + 616);
  v54 = *(v272 + 584);
  v55 = *(v272 + 576);
  v246 = *(v272 + 568);
  v254 = *(v272 + 552);
  v257 = *(v272 + 544);
  v260 = *(v272 + 560);
  v245 = *(v272 + 536);
  v249 = *(v272 + 528);
  v239 = *(v272 + 520);
  *&v275 = 0;
  *(&v275 + 1) = 0xE000000000000000;
  sub_22B36116C();
  v56 = *(&v275 + 1);
  *(v272 + 160) = v275;
  *(v272 + 168) = v56;
  v57 = sub_22B35FCDC();
  MEMORY[0x23188E270](v57);

  MEMORY[0x23188E270](46, 0xE100000000000000);
  v58 = sub_22B35FBCC();
  MEMORY[0x23188E270](v58);

  MEMORY[0x23188E270](46, 0xE100000000000000);
  sub_22B35FC1C();
  sub_22B36122C();
  v243 = *(v54 + 8);
  v243(v53, v55);
  MEMORY[0x23188E270](46, 0xE100000000000000);
  v59 = sub_22B35FC3C();
  MEMORY[0x23188E270](v59);

  MEMORY[0x23188E270](46, 0xE100000000000000);
  v60 = sub_22B35FD5C();
  MEMORY[0x23188E270](v60);

  MEMORY[0x23188E270](46, 0xE100000000000000);
  sub_22B35FCBC();
  v61 = v237;
  sub_22B36038C();
  v30(v52, v265);
  sub_22B306EB4(&qword_28140B488, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
  v62 = sub_22B36131C();
  MEMORY[0x23188E270](v62);

  v267(v237, v244);
  MEMORY[0x23188E270](46, 0xE100000000000000);
  v63 = v272;
  sub_22B35FC5C();
  sub_22B36038C();
  v235 = v30;
  v30(v52, v265);
  v64 = sub_22B36131C();
  MEMORY[0x23188E270](v64);

  v267(v237, v244);
  v65 = sub_22B2F45C8(*(v63 + 160), *(v63 + 168));
  v67 = v66;
  sub_22B306EB4(&qword_27D8BAD68, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  sub_22B36068C();
  sub_22B144B30(v65, v67);
  sub_22B307CD4(v65, v67, v245);
  v236 = v65;
  v238 = v67;
  sub_22B12F174(v65, v67);
  sub_22B36067C();
  (*(v249 + 8))(v245, v239);
  (*(v254 + 16))(v260, v246, v257);
  sub_22B306EB4(&qword_27D8BAD70, MEMORY[0x277CC5290], MEMORY[0x277CC52A8]);
  sub_22B360A0C();
  v68 = *(v272 + 184);
  v69 = *(v272 + 176);
  v70 = *(v69 + 16);
  v71 = MEMORY[0x277D84F90];
  if (v68 == v70)
  {
LABEL_26:
    (*(*(v63 + 552) + 8))(*(v63 + 568), *(v63 + 544));

    *(v63 + 248) = v71;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA0A0, &qword_22B362BD0);
    sub_22B30D340(&qword_27D8BAD78, MEMORY[0x277D83958]);
    v61 = sub_22B36073C();
    v245 = v72;

    sub_22B35FC1C();
    v73 = MEMORY[0x277D84F90];
    v273 = MEMORY[0x277D84F90];
    v274 = MEMORY[0x277D84F90];
    v74 = sub_22B35FCFC();
    v266 = *(v74 + 16);
    if (!v266)
    {

      v84 = MEMORY[0x277D84F90];
LABEL_42:
      *&v275 = v73;
      if (!*(v84 + 2))
      {
        goto LABEL_55;
      }

      if (qword_28140A0C8 == -1)
      {
LABEL_44:
        v92 = *(v63 + 488);
        v94 = *(v63 + 440);
        v93 = *(v63 + 448);
        v95 = __swift_project_value_buffer(v94, qword_28140BD10);
        swift_beginAccess();
        (*(v93 + 16))(v92, v95, v94);
        v96 = sub_22B36050C();
        v97 = sub_22B360D0C();
        if (os_log_type_enabled(v96, v97))
        {
          v98 = swift_slowAlloc();
          *v98 = 0;
          _os_log_impl(&dword_22B116000, v96, v97, "[Dropbox Bridge] Imports found. Adding to imported readings", v98, 2u);
          MEMORY[0x23188F650](v98, -1, -1);
        }

        v99 = *(v63 + 488);
        v101 = *(v63 + 440);
        v100 = *(v63 + 448);

        (*(v100 + 8))(v99, v101);
        v102 = objc_opt_self();
        v103 = sub_22B360A3C();
        *(v63 + 264) = 0;
        v104 = [v102 archivedDataWithRootObject:v103 requiringSecureCoding:0 error:v63 + 264];

        v105 = *(v63 + 264);
        v106 = *(v63 + 800);
        if (!v104)
        {
          v123 = *(v63 + 792);
          v268 = *(v63 + 784);
          v124 = *(v63 + 608);
          v125 = *(v63 + 576);
          v126 = v105;

          v127 = sub_22B35DB9C();

          swift_willThrow();
          sub_22B12F174(v236, v238);
          v128 = v271;
          sub_22B11EDC0(v271, v2);
          v243(v124, v125);
          (*(v123 + 8))(v106, v268);

          goto LABEL_69;
        }

        v262 = v61;
        v107 = *(v63 + 760);
        v108 = *(v63 + 752);
        v232 = *(v63 + 744);
        v109 = *(v63 + 704);
        v241 = *(v63 + 672);
        v216 = *(v63 + 680);
        v218 = *(v63 + 664);
        v209 = *(v63 + 584);
        v212 = *(v63 + 576);
        v214 = *(v63 + 600);
        v110 = *(v63 + 432);
        v111 = *(v63 + 416);
        v197 = *(v63 + 400);
        v199 = *(v63 + 408);
        v202 = *(v63 + 384);
        v205 = *(v63 + 376);
        v230 = *(v63 + 344);
        v226 = *(v63 + 352);
        v228 = *(v63 + 336);
        v222 = *(v63 + 320);
        v112 = sub_22B35DCDC();
        v255 = v113;
        v258 = v112;

        v224 = sub_22B35FBCC();
        v250 = v114;
        v220 = sub_22B35FCDC();
        v247 = v115;
        sub_22B35FCBC();
        sub_22B36038C();
        v235(v107, v109);
        sub_22B35FC5C();
        sub_22B36038C();
        v235(v108, v109);
        sub_22B35FC9C();
        v207 = sub_22B35FC7C();
        (*(v111 + 8))(v110, v199);
        sub_22B35FD3C();
        v200 = sub_22B35FD1C();
        (*(v202 + 8))(v197, v205);
        (*(v209 + 104))(v214, *MEMORY[0x277D074B0], v212);
        v210 = sub_22B35FBFC();
        v243(v214, v212);
        sub_22B35FBAC();
        sub_22B36038C();
        v235(v232, v109);
        v116 = sub_22B35FD5C();
        v118 = v117;
        v119 = sub_22B35FC3C();
        v121 = v120;
        v233 = MEMORY[0x23188EEB0]();
        *(v63 + 280) = 0;
        v122 = swift_task_alloc();
        *(v122 + 16) = v222;
        *(v122 + 32) = v262;
        *(v122 + 40) = v245;
        *(v122 + 48) = v216;
        *(v122 + 56) = v241;
        *(v122 + 64) = v210;
        *(v122 + 72) = v226;
        *(v122 + 80) = v218;
        *(v122 + 88) = v258;
        *(v122 + 96) = v255;
        *(v122 + 104) = v220;
        *(v122 + 112) = v247;
        *(v122 + 120) = v207;
        *(v122 + 128) = v200;
        *(v122 + 136) = v228;
        *(v122 + 144) = v230;
        *(v122 + 152) = v116;
        *(v122 + 160) = v118;
        *(v122 + 168) = v119;
        *(v122 + 176) = v121;
        *(v122 + 184) = v224;
        *(v122 + 192) = v250;
        *(v122 + 200) = 0;
        *(v122 + 208) = v63 + 280;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA6A8, &qword_22B366F40);
        sub_22B360E7C();
        v61 = v262;
        v129 = *(v63 + 680);
        v130 = *(v63 + 672);
        v131 = *(v63 + 664);
        v132 = *(v63 + 624);

        objc_autoreleasePoolPop(v233);
        v133 = *(v63 + 272);
        v267(v131, v132);
        v267(v130, v132);
        v267(v129, v132);
        if (!v133)
        {
          sub_22B12F174(v258, v255);
          v73 = MEMORY[0x277D84F90];
          goto LABEL_53;
        }

        v130 = v133;
        MEMORY[0x23188E350]();
        v118 = v255;
        v133 = v258;
        if (*((v275 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v275 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_81;
        }

        while (1)
        {
          sub_22B360A9C();
          sub_22B12F174(v133, v118);

          v73 = v275;
LABEL_53:
          v134 = *(v63 + 360);
          swift_beginAccess();
          v135 = *(v134 + 16);
          v136 = __OFADD__(v135, 1);
          v137 = v135 + 1;
          if (!v136)
          {
            break;
          }

          __break(1u);
LABEL_81:
          sub_22B360A7C();
        }

        *(*(v63 + 360) + 16) = v137;
LABEL_55:
        v254 = *(v273 + 2);
        if (!v254)
        {

          goto LABEL_62;
        }

        v257 = v73;
        if (qword_28140A0C8 == -1)
        {
          goto LABEL_57;
        }

        goto LABEL_79;
      }

LABEL_77:
      swift_once();
      goto LABEL_44;
    }

    v240 = v2;
    v75 = 0;
    v76 = *(v63 + 504);
    v261 = v74 + ((*(v76 + 80) + 32) & ~*(v76 + 80));
    while (v75 < *(v74 + 16))
    {
      v2 = v74;
      v80 = *(v63 + 608);
      v81 = *(v63 + 512);
      v82 = (*(v76 + 16))(v81, v261 + *(v76 + 72) * v75, *(v63 + 496));
      v83 = MEMORY[0x23188EEB0](v82);
      sub_22B301890(v81, v80, &v274, &v273, (v63 + 256));
      (*(v76 + 8))(*(v63 + 512), *(v63 + 496));
      objc_autoreleasePoolPop(v83);
      v74 = v2;
      if (v266 == ++v75)
      {

        v84 = v274;
        v73 = MEMORY[0x277D84F90];
        v2 = v240;
        goto LABEL_42;
      }
    }

    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  if ((v68 & 0x8000000000000000) == 0)
  {
    while (v68 < *(v69 + 16))
    {
      v85 = *(v69 + 32 + v68);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
      v86 = swift_allocObject();
      *(v86 + 16) = xmmword_22B3634B0;
      *(v86 + 56) = MEMORY[0x277D84B78];
      *(v86 + 64) = MEMORY[0x277D84BC0];
      *(v86 + 32) = v85;
      v87 = sub_22B36087C();
      v61 = v88;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v71 = sub_22B32CD20(0, *(v71 + 2) + 1, 1, v71);
      }

      v90 = *(v71 + 2);
      v89 = *(v71 + 3);
      if (v90 >= v89 >> 1)
      {
        v71 = sub_22B32CD20((v89 > 1), v90 + 1, 1, v71);
      }

      ++v68;
      *(v71 + 2) = v90 + 1;
      v91 = &v71[16 * v90];
      *(v91 + 4) = v87;
      *(v91 + 5) = v61;
      v63 = v272;
      if (v70 == v68)
      {
        goto LABEL_26;
      }
    }

    goto LABEL_76;
  }

  __break(1u);
LABEL_79:
  swift_once();
LABEL_57:
  v138 = *(v63 + 480);
  v140 = *(v63 + 440);
  v139 = *(v63 + 448);
  v141 = __swift_project_value_buffer(v140, qword_28140BD10);
  swift_beginAccess();
  (*(v139 + 16))(v138, v141, v140);
  v142 = sub_22B36050C();
  v143 = sub_22B360D0C();
  if (os_log_type_enabled(v142, v143))
  {
    v144 = swift_slowAlloc();
    *v144 = 0;
    _os_log_impl(&dword_22B116000, v142, v143, "[Dropbox Bridge] Exports found. Adding to exported readings", v144, 2u);
    MEMORY[0x23188F650](v144, -1, -1);
  }

  v145 = *(v63 + 480);
  v147 = *(v63 + 440);
  v146 = *(v63 + 448);

  (*(v146 + 8))(v145, v147);
  v148 = objc_opt_self();
  v149 = sub_22B360A3C();
  *(v63 + 288) = 0;
  v150 = [v148 archivedDataWithRootObject:v149 requiringSecureCoding:0 error:v63 + 288];

  v151 = *(v63 + 288);
  v152 = *(v63 + 800);
  if (v150)
  {
    v229 = v63 + 304;
    v153 = *(v63 + 736);
    v154 = *(v63 + 728);
    v155 = *(v63 + 704);
    v211 = *(v63 + 656);
    v213 = *(v63 + 720);
    v231 = *(v63 + 648);
    v215 = *(v63 + 640);
    v203 = *(v63 + 584);
    v206 = *(v63 + 576);
    v208 = *(v63 + 592);
    v156 = *(v63 + 424);
    v193 = *(v63 + 416);
    v194 = *(v63 + 408);
    v157 = *(v272 + 392);
    v196 = *(v272 + 384);
    v198 = *(v272 + 376);
    v223 = *(v272 + 352);
    v227 = *(v272 + 344);
    v225 = *(v272 + 336);
    v219 = *(v272 + 320);
    v251 = sub_22B35DCDC();
    v248 = v158;

    v221 = sub_22B35FBCC();
    v242 = v159;
    v217 = sub_22B35FCDC();
    v234 = v160;
    sub_22B35FCBC();
    sub_22B36038C();
    v263 = v61;
    v235(v153, v155);
    sub_22B35FC5C();
    sub_22B36038C();
    v235(v154, v155);
    sub_22B35FC9C();
    v201 = sub_22B35FC7C();
    (*(v193 + 8))(v156, v194);
    sub_22B35FD3C();
    v195 = sub_22B35FD1C();
    v161 = v157;
    v63 = v272;
    (*(v196 + 8))(v161, v198);
    (*(v203 + 104))(v208, *MEMORY[0x277D074A8], v206);
    v204 = sub_22B35FBFC();
    v243(v208, v206);
    sub_22B35FBAC();
    sub_22B36038C();
    v235(v213, v155);
    v162 = sub_22B35FD5C();
    v164 = v163;
    v165 = sub_22B35FC3C();
    v167 = v166;
    v252 = MEMORY[0x23188EEB0]();
    *(v272 + 304) = 0;
    v168 = swift_task_alloc();
    *(v168 + 16) = v219;
    *(v168 + 32) = v263;
    *(v168 + 40) = v245;
    *(v168 + 48) = v211;
    *(v168 + 56) = v231;
    *(v168 + 64) = v204;
    *(v168 + 72) = v223;
    *(v168 + 80) = v215;
    *(v168 + 88) = v251;
    *(v168 + 96) = v248;
    *(v168 + 104) = v217;
    *(v168 + 112) = v234;
    *(v168 + 120) = v201;
    *(v168 + 128) = v195;
    *(v168 + 136) = v225;
    *(v168 + 144) = v227;
    *(v168 + 152) = v162;
    *(v168 + 160) = v164;
    *(v168 + 168) = v165;
    *(v168 + 176) = v167;
    *(v168 + 184) = v221;
    *(v168 + 192) = v242;
    *(v168 + 200) = 0;
    *(v168 + 208) = v229;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA6A8, &qword_22B366F40);
    sub_22B360E7C();
    v186 = *(v272 + 656);
    v187 = *(v272 + 648);
    v188 = *(v272 + 640);
    v189 = *(v272 + 624);

    objc_autoreleasePoolPop(v252);
    v190 = *(v272 + 296);
    v267(v188, v189);
    v267(v187, v189);
    v267(v186, v189);
    if (v190)
    {
      v191 = v190;
      MEMORY[0x23188E350]();
      v169 = v254;
      v192 = v251;
      if (*((v275 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v275 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22B360A7C();
        v192 = v251;
      }

      sub_22B360A9C();
      sub_22B12F174(v192, v248);

      v73 = v275;
      goto LABEL_63;
    }

    sub_22B12F174(v251, v248);
    v73 = v257;
LABEL_62:
    v169 = v254;
LABEL_63:
    v259 = v73;
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v170 = *(v63 + 472);
    v171 = *(v63 + 440);
    v172 = *(v63 + 448);
    v173 = __swift_project_value_buffer(v171, qword_28140BD10);
    swift_beginAccess();
    (*(v172 + 16))(v170, v173, v171);
    v174 = sub_22B36050C();
    v175 = sub_22B360D0C();
    if (os_log_type_enabled(v174, v175))
    {
      v176 = swift_slowAlloc();
      *v176 = 67109120;
      *(v176 + 4) = v169 != 0;
      _os_log_impl(&dword_22B116000, v174, v175, "[Dropbox Bridge] continuation resume with hasExportedEnergy %{BOOL}d", v176, 8u);
      MEMORY[0x23188F650](v176, -1, -1);
    }

    v269 = *(v272 + 800);
    v177 = v169 != 0;
    v178 = *(v272 + 792);
    v264 = *(v272 + 784);
    v253 = *(v272 + 576);
    v256 = *(v272 + 608);
    v179 = *(v272 + 472);
    v181 = *(v272 + 440);
    v180 = *(v272 + 448);

    (*(v180 + 8))(v179, v181);
    *(v272 + 208) = v259;
    *(v272 + 216) = v177;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD60, &unk_22B366F18);
    sub_22B360AEC();
    sub_22B12F174(v236, v238);
    sub_22B11EDC0(v271, v2);
    sub_22B11EDC0(v271, v2);
    v243(v256, v253);
    (*(v178 + 8))(v269, v264);

    goto LABEL_11;
  }

  v182 = *(v63 + 792);
  v270 = *(v63 + 784);
  v183 = *(v63 + 608);
  v184 = *(v63 + 576);
  v185 = v151;

  v127 = sub_22B35DB9C();

  swift_willThrow();
  sub_22B12F174(v236, v238);
  v128 = v271;
  sub_22B11EDC0(v271, v2);
  v243(v183, v184);
  (*(v182 + 8))(v152, v270);

LABEL_69:

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v5 = *(v63 + 464);
  v6 = *(v63 + 440);
  v7 = *(v63 + 448);
  v8 = __swift_project_value_buffer(v6, qword_28140BD10);
  swift_beginAccess();
  (*(v7 + 16))(v5, v8, v6);
  v9 = v127;
  v10 = sub_22B36050C();
  v11 = sub_22B360D1C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = v127;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_22B116000, v10, v11, "[Dropbox Bridge] Failed handle IntervalReading payload %@", v12, 0xCu);
    sub_22B123284(v13, &unk_27D8BAA90, &unk_22B362BC0);
    MEMORY[0x23188F650](v13, -1, -1);
    MEMORY[0x23188F650](v12, -1, -1);
  }

  v16 = *(v63 + 464);
  v17 = *(v63 + 440);
  v18 = *(v63 + 448);

  (*(v18 + 8))(v16, v17);
  *(v63 + 240) = v127;
  v19 = v127;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD60, &unk_22B366F18);
  sub_22B360ADC();
  sub_22B11EDC0(v128, v2);

LABEL_11:

  v20 = *(v272 + 8);

  return v20();
}

uint64_t sub_22B301890(uint64_t a1, uint64_t a2, char **a3, char **a4, void *a5)
{
  v110 = a5;
  v107 = a4;
  v106 = a3;
  v113 = a2;
  v109 = sub_22B36052C();
  v108 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v105 = v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v104 = v103 - v9;
  v112 = sub_22B35FC0C();
  v111 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v11 = v103 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22B3603AC();
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BADA8, &qword_22B366F70);
  MEMORY[0x28223BE20](v15 - 8);
  v123 = v103 - v16;
  v132 = sub_22B35FE7C();
  v17 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v131 = v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v130 = v103 - v20;
  v129 = sub_22B35FB5C();
  v21 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v23 = v103 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_22B35FEBC();
  v114 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v117 = v103 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22B35FEAC();
  v25 = sub_22B35FB6C();
  v26 = *(v25 + 16);
  v115 = v5;
  if (v26)
  {
    v103[1] = v14;
    v103[2] = a1;
    v28 = *(v21 + 16);
    v27 = v21 + 16;
    v128 = v28;
    v29 = (*(v27 + 64) + 32) & ~*(v27 + 64);
    v103[0] = v25;
    v30 = v25 + v29;
    v31 = *(v27 + 56);
    v126 = (v27 - 8);
    v127 = v31;
    v124 = (v17 + 32);
    v125 = (v17 + 48);
    v121 = v17;
    v118 = v17 + 8;
    v119 = (v17 + 16);
    v32 = MEMORY[0x277D84F90];
    v33 = v123;
    v120 = v27;
    v122 = v11;
    do
    {
      v34 = v129;
      v128(v23, v30, v129);
      sub_22B35FB4C();
      (*v126)(v23, v34);
      sub_22B35FE6C();
      v35 = v132;
      if ((*v125)(v33, 1, v132) == 1)
      {
        sub_22B123284(v33, &qword_27D8BADA8, &qword_22B366F70);
      }

      else
      {
        v36 = *v124;
        v37 = v130;
        (*v124)(v130, v33, v35);
        (*v119)(v131, v37, v35);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v32 = sub_22B32DA50(0, *(v32 + 2) + 1, 1, v32);
        }

        v39 = *(v32 + 2);
        v38 = *(v32 + 3);
        if (v39 >= v38 >> 1)
        {
          v32 = sub_22B32DA50((v38 > 1), v39 + 1, 1, v32);
        }

        v40 = v121;
        v41 = v132;
        (*(v121 + 8))(v130, v132);
        *(v32 + 2) = v39 + 1;
        v36(&v32[((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v39], v131, v41);
        v11 = v122;
        v33 = v123;
      }

      v30 += v127;
      --v26;
    }

    while (v26);
  }

  sub_22B35FE9C();
  sub_22B35FB2C();
  sub_22B35FE5C();
  sub_22B35FB0C();
  sub_22B35FE3C();
  sub_22B35FAEC();
  sub_22B35FDFC();
  sub_22B35FE1C();
  sub_22B35FDDC();
  v42 = v111;
  v43 = *(v111 + 104);
  v44 = v112;
  v43(v11, *MEMORY[0x277D074A0], v112);
  sub_22B306EB4(&unk_27D8BA090, MEMORY[0x277D074B8], MEMORY[0x277D074C0]);
  sub_22B360A1C();
  sub_22B360A1C();
  v45 = *(v42 + 8);
  v45(v11, v44);
  if (v133 == v134)
  {
    sub_22B35FB2C();
    v46 = v116;
    if (v47 >= 0.0)
    {
      v72 = v109;
      v73 = v108;
      v50 = v117;
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v74 = __swift_project_value_buffer(v72, qword_28140BD10);
      swift_beginAccess();
      v75 = v104;
      (*(v73 + 16))(v104, v74, v72);
      v76 = sub_22B36050C();
      v77 = sub_22B360D0C();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        *v78 = 0;
        _os_log_impl(&dword_22B116000, v76, v77, "[Dropbox Bridge] IntervalReading Record cvalue is positive but direction is net. Converting to delivered type", v78, 2u);
        MEMORY[0x23188F650](v78, -1, -1);
      }

      (*(v73 + 8))(v75, v72);
      sub_22B306EB4(&qword_27D8BAD50, MEMORY[0x277D074F8], MEMORY[0x277D074E8]);
      v79 = v115;
      v80 = sub_22B36042C();
      v59 = v79;
      if (!v79)
      {
        v62 = v81;
        v63 = v80;
        v82 = v106;
        v83 = *v106;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v82 = v83;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v83 = sub_22B32D0BC(0, *(v83 + 2) + 1, 1, v83);
          *v106 = v83;
        }

        v68 = *(v83 + 2);
        v85 = *(v83 + 3);
        v69 = v68 + 1;
        if (v68 >= v85 >> 1)
        {
          v101 = sub_22B32D0BC((v85 > 1), v68 + 1, 1, v83);
          *v106 = v101;
        }

        result = (*(v114 + 8))(v50, v46);
        v71 = &v134;
        goto LABEL_36;
      }
    }

    else
    {
      v48 = v109;
      v49 = v108;
      v50 = v117;
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v51 = __swift_project_value_buffer(v48, qword_28140BD10);
      swift_beginAccess();
      v52 = v105;
      (*(v49 + 16))(v105, v51, v48);
      v53 = sub_22B36050C();
      v54 = sub_22B360D0C();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&dword_22B116000, v53, v54, "[Dropbox Bridge] IntervalReading Record cvalue is negative but direction is net. Converting to reverse type", v55, 2u);
        MEMORY[0x23188F650](v55, -1, -1);
      }

      (*(v49 + 8))(v52, v48);
      sub_22B306EB4(&qword_27D8BAD50, MEMORY[0x277D074F8], MEMORY[0x277D074E8]);
      v56 = v115;
      v57 = sub_22B36042C();
      v59 = v56;
      if (!v56)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_39;
  }

  v43(v11, *MEMORY[0x277D074A8], v44);
  sub_22B360A1C();
  sub_22B360A1C();
  v45(v11, v44);
  v60 = v116;
  if (v133 == v134)
  {
    sub_22B306EB4(&qword_27D8BAD50, MEMORY[0x277D074F8], MEMORY[0x277D074E8]);
    v50 = v117;
    v61 = v115;
    v57 = sub_22B36042C();
    v46 = v60;
    v59 = v61;
    if (!v61)
    {
LABEL_21:
      v62 = v58;
      v63 = v57;
      v64 = v107;
      v65 = *v107;
      v66 = swift_isUniquelyReferenced_nonNull_native();
      *v64 = v65;
      if ((v66 & 1) == 0)
      {
        v65 = sub_22B32D0BC(0, *(v65 + 2) + 1, 1, v65);
        *v107 = v65;
      }

      v68 = *(v65 + 2);
      v67 = *(v65 + 3);
      v69 = v68 + 1;
      if (v68 >= v67 >> 1)
      {
        v100 = sub_22B32D0BC((v67 > 1), v68 + 1, 1, v65);
        *v107 = v100;
      }

      result = (*(v114 + 8))(v50, v46);
      v71 = &v135;
LABEL_36:
      v86 = **(v71 - 32);
      *(v86 + 16) = v69;
      v87 = v86 + 16 * v68;
      *(v87 + 32) = v63;
      *(v87 + 40) = v62;
      return result;
    }

    goto LABEL_39;
  }

  v43(v11, *MEMORY[0x277D074B0], v44);
  sub_22B360A1C();
  sub_22B360A1C();
  v45(v11, v44);
  if (v133 != v134)
  {
    return (*(v114 + 8))(v117, v116);
  }

  sub_22B306EB4(&qword_27D8BAD50, MEMORY[0x277D074F8], MEMORY[0x277D074E8]);
  v46 = v116;
  v50 = v117;
  v88 = v115;
  v89 = sub_22B36042C();
  v59 = v88;
  if (v88)
  {
LABEL_39:
    result = (*(v114 + 8))(v50, v46);
    *v110 = v59;
    return result;
  }

  v91 = v89;
  v92 = v90;
  v93 = v106;
  v94 = *v106;
  v95 = swift_isUniquelyReferenced_nonNull_native();
  *v93 = v94;
  if ((v95 & 1) == 0)
  {
    v94 = sub_22B32D0BC(0, *(v94 + 2) + 1, 1, v94);
    *v106 = v94;
  }

  v97 = *(v94 + 2);
  v96 = *(v94 + 3);
  if (v97 >= v96 >> 1)
  {
    v102 = sub_22B32D0BC((v96 > 1), v97 + 1, 1, v94);
    *v106 = v102;
  }

  result = (*(v114 + 8))(v50, v46);
  v98 = *v106;
  *(v98 + 2) = v97 + 1;
  v99 = &v98[16 * v97];
  *(v99 + 4) = v91;
  *(v99 + 5) = v92;
  return result;
}

id sub_22B302704(void *a1)
{
  sub_22B207390(9);

  return [a1 refreshAllObjects];
}

void sub_22B302768(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, void *a7@<X7>, void **a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char *a20, uint64_t a21, uint64_t a22, uint64_t a23, unsigned __int8 a24, void **a25)
{
  v172 = a5;
  v169 = a1;
  v163 = a8;
  v182[3] = *MEMORY[0x277D85DE8];
  v168 = sub_22B35DE9C();
  v162 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v161 = v148 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_22B36052C();
  v159 = *(v158 - 8);
  MEMORY[0x28223BE20](v158);
  v155 = v148 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v154 = v148 - v33;
  MEMORY[0x28223BE20](v34);
  v156 = v148 - v35;
  MEMORY[0x28223BE20](v36);
  v157 = v148 - v37;
  v38 = type metadata accessor for CDIntervalBlocks(0);
  v39 = *(v38 - 1);
  MEMORY[0x28223BE20](v38);
  v160 = v148 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD80, &qword_22B366F48);
  MEMORY[0x28223BE20](v41 - 8);
  v164 = v148 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD88, &qword_22B366F50);
  MEMORY[0x28223BE20](v43 - 8);
  v165 = v148 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45);
  v47 = v148 - v46;
  v49 = MEMORY[0x28223BE20](v48);
  v51 = v148 - v50;
  v170 = MEMORY[0x23188EEB0](v49);
  v166 = v39;
  v52 = *(v39 + 56);
  v167 = v38;
  v52(v47, 1, 1, v38);
  v182[0] = 0;
  v173 = a2;
  v174 = a3;
  v175 = a6;
  v176 = a4;
  v53 = v171;
  v177 = v172;
  v178 = a7;
  v179 = v47;
  v180 = v182;
  sub_22B360E7C();
  if (v53)
  {

    sub_22B123284(v47, &qword_27D8BAD88, &qword_22B366F50);
    objc_autoreleasePoolPop(v170);
    return;
  }

  v151 = a7;
  v148[0] = a4;
  v148[1] = a6;
  v149 = a2;
  v150 = a3;
  v153 = 0;
  v152 = a25;
  v148[3] = a11;
  v148[2] = a10;
  v171 = a9;
  v54 = v164;
  sub_22B170BE0(v47, v164, &qword_27D8BAD88, &qword_22B366F50);
  v55 = v182[0];
  sub_22B123284(v47, &qword_27D8BAD88, &qword_22B366F50);
  objc_autoreleasePoolPop(v170);
  sub_22B30D114(v54, v51);
  v56 = v165;
  sub_22B170BE0(v51, v165, &qword_27D8BAD88, &qword_22B366F50);
  v57 = v51;
  if ((*(v166 + 48))(v56, 1, v167) == 1)
  {
    v170 = v55;
    sub_22B123284(v56, &qword_27D8BAD88, &qword_22B366F50);
LABEL_5:
    v58 = v169;
    goto LABEL_15;
  }

  v59 = v160;
  sub_22B30D184(v56, v160);
  v60 = v55;
  v58 = v169;
  if (v55)
  {
    sub_22B306EB4(&qword_28140B490, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
    v61 = v55;
    v62 = v168;
    v63 = sub_22B36074C();
    v167 = v61;
    if (v63)
    {
      v182[0] = 0;
      v64 = [v151 existingObjectWithID:v61 error:v182];
      v65 = v182[0];
      if (!v64)
      {
        v170 = v55;
        v114 = v182[0];
        v115 = sub_22B35DB9C();

        swift_willThrow();
        if (qword_28140A0C8 != -1)
        {
          swift_once();
        }

        v116 = v158;
        v117 = __swift_project_value_buffer(v158, qword_28140BD10);
        swift_beginAccess();
        v118 = v159;
        v119 = v155;
        (*(v159 + 16))(v155, v117, v116);
        v120 = v167;
        v121 = sub_22B36050C();
        v122 = sub_22B360D0C();

        if (os_log_type_enabled(v121, v122))
        {
          v123 = swift_slowAlloc();
          v124 = swift_slowAlloc();
          *v123 = 138412290;
          *(v123 + 4) = v120;
          *v124 = v170;
          v125 = v120;
          _os_log_impl(&dword_22B116000, v121, v122, "[IntervalBlocks] No object to update for %@", v123, 0xCu);
          sub_22B123284(v124, &unk_27D8BAA90, &unk_22B362BC0);
          v126 = v124;
          v118 = v159;
          MEMORY[0x23188F650](v126, -1, -1);
          v127 = v123;
          v119 = v155;
          MEMORY[0x23188F650](v127, -1, -1);
        }

        (*(v118 + 8))(v119, v116);
        sub_22B30D1E8(v59, type metadata accessor for CDIntervalBlocks);
        v153 = 0;
        goto LABEL_5;
      }

      v66 = v64;
      sub_22B35F4EC();
      v67 = swift_dynamicCastClass();
      v68 = qword_28140A0C8;
      v69 = v65;
      if (!v67)
      {
        v170 = v60;
        if (v68 != -1)
        {
          swift_once();
        }

        v128 = v158;
        v129 = __swift_project_value_buffer(v158, qword_28140BD10);
        swift_beginAccess();
        v130 = v159;
        v131 = v154;
        (*(v159 + 16))(v154, v129, v128);
        v132 = v167;
        v133 = sub_22B36050C();
        v134 = sub_22B360D0C();

        if (os_log_type_enabled(v133, v134))
        {
          v135 = swift_slowAlloc();
          v136 = swift_slowAlloc();
          *v135 = 138412290;
          *(v135 + 4) = v132;
          *v136 = v170;
          v137 = v132;
          _os_log_impl(&dword_22B116000, v133, v134, "[IntervalBlocks] No object to update for %@", v135, 0xCu);
          sub_22B123284(v136, &unk_27D8BAA90, &unk_22B362BC0);
          v138 = v136;
          v130 = v159;
          MEMORY[0x23188F650](v138, -1, -1);
          v139 = v135;
          v131 = v154;
          MEMORY[0x23188F650](v139, -1, -1);
        }

        (*(v130 + 8))(v131, v128);
        sub_22B30D1E8(v59, type metadata accessor for CDIntervalBlocks);
        goto LABEL_5;
      }

      v70 = v66;
      if (v68 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v158, qword_28140BD10);
      swift_beginAccess();
      v71 = v156;
      (*(v159 + 16))();
      v72 = v70;
      v73 = sub_22B36050C();
      v74 = sub_22B360D0C();

      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v76 = v57;
        v77 = swift_slowAlloc();
        *v75 = 138412290;
        *(v75 + 4) = v72;
        *v77 = v66;
        _os_log_impl(&dword_22B116000, v73, v74, "[IntervalBlocks] Got back object to update %@", v75, 0xCu);
        sub_22B123284(v77, &unk_27D8BAA90, &unk_22B362BC0);
        v78 = v77;
        v57 = v76;
        v71 = v156;
        MEMORY[0x23188F650](v78, -1, -1);
        v79 = v75;
        v59 = v160;
        MEMORY[0x23188F650](v79, -1, -1);
      }

      else
      {

        v73 = v72;
      }

      v140 = v162;
      v141 = v161;

      (*(v159 + 8))(v71, v158);
      v142 = sub_22B35DCCC();
      [v67 setReadings_];

      v143 = sub_22B35DDDC();
      [v67 setSourceTime_];

      [v67 setPreprocessed_];
      sub_22B35DE8C();
      v144 = sub_22B35DDDC();
      (*(v140 + 8))(v141, v62);
      [v67 setCreationDate_];
      v145 = v167;
    }

    else
    {
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v103 = v158;
      v104 = __swift_project_value_buffer(v158, qword_28140BD10);
      swift_beginAccess();
      v105 = v159;
      v106 = v157;
      (*(v159 + 16))(v157, v104, v103);
      v107 = v150;

      v108 = sub_22B36050C();
      v109 = sub_22B360D2C();

      if (os_log_type_enabled(v108, v109))
      {
        v110 = swift_slowAlloc();
        v111 = swift_slowAlloc();
        v181 = v111;
        *v110 = 136315138;
        *(v110 + 4) = sub_22B1A7B20(v149, v107, &v181);
        _os_log_impl(&dword_22B116000, v108, v109, "[IntervalBlocks] Newer record exists for %s. Skip insert", v110, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v111);
        MEMORY[0x23188F650](v111, -1, -1);
        MEMORY[0x23188F650](v110, -1, -1);
        v112 = v167;

        (*(v105 + 8))(v157, v103);
      }

      else
      {
        v113 = v167;

        (*(v105 + 8))(v106, v103);
      }
    }

    sub_22B30D1E8(v59, type metadata accessor for CDIntervalBlocks);
    sub_22B123284(v57, &qword_27D8BAD88, &qword_22B366F50);
    v102 = v163;
    v100 = v152;
    goto LABEL_35;
  }

  v170 = 0;
  sub_22B30D1E8(v59, type metadata accessor for CDIntervalBlocks);
LABEL_15:
  v169 = v57;
  sub_22B35F4EC();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v81 = [objc_allocWithZone(ObjCClassFromMetadata) init];
  v82 = objc_allocWithZone(ObjCClassFromMetadata);
  v83 = v151;
  v84 = [v82 initWithContext_];

  v85 = *(v58 + 112);
  if (v85)
  {
    LODWORD(v167) = a24;
    v166 = a23;
    v165 = a22;
    v164 = a21;
    v160 = a20;
    v159 = a19;
    v158 = a18;
    v86 = v84;
    [v83 assignObject:v86 toPersistentStore:v85];
    v87 = sub_22B36081C();
    [v86 setRecordID_];

    v88 = sub_22B36081C();
    [v86 setMeterID_];

    v89 = sub_22B35DDDC();
    [v86 setStart_];

    v90 = sub_22B35DDDC();
    [v86 setEnd_];

    sub_22B35F4DC();
    sub_22B35F49C();
    sub_22B35F4BC();
    v91 = sub_22B35DDDC();
    [v86 setSourceTime_];

    v92 = sub_22B36081C();
    [v86 setZoneName_];

    v93 = sub_22B36081C();
    [v86 setUtilityID_];

    v94 = sub_22B36081C();
    [v86 setSubscriptionID_];

    v95 = sub_22B36081C();
    [v86 setUsagePointID_];

    v96 = v161;
    sub_22B35DE8C();
    v97 = sub_22B35DDDC();
    (*(v162 + 8))(v96, v168);
    [v86 setCreationDate_];

    v98 = sub_22B35DCCC();
    [v86 setReadings_];

    [v86 setPreprocessed_];
    v99 = [v86 objectID];

    sub_22B123284(v169, &qword_27D8BAD88, &qword_22B366F50);
    v100 = v152;
    v101 = *v152;
    *v152 = v99;

    v102 = v163;
LABEL_35:
    v146 = *v100;
    *v102 = *v100;
    v147 = v146;
    return;
  }

  __break(1u);
}

void sub_22B303940(void *a1, uint64_t a2, _DWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v136 = a2;
  v137 = a4;
  v145 = sub_22B36052C();
  v10 = *(v145 - 8);
  MEMORY[0x28223BE20](v145 - 8);
  v129 = &v123 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v126 = &v123 - v13;
  MEMORY[0x28223BE20](v14);
  v127 = &v123 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v123 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  MEMORY[0x28223BE20](v19 - 8);
  v130 = &v123 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v128 = &v123 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v123 - v24;
  v26 = sub_22B35DE9C();
  v143 = *(v26 - 8);
  v144 = v26;
  MEMORY[0x28223BE20](v26);
  v125 = &v123 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v147 = &v123 - v29;
  MEMORY[0x28223BE20](v30);
  v124 = &v123 - v31;
  *&v33 = MEMORY[0x28223BE20](v32).n128_u64[0];
  v35 = &v123 - v34;
  [a1 refreshAllObjects];
  v146 = sub_22B35F4EC();
  v36 = sub_22B35F47C();
  [v36 setResultType_];
  v148 = v36;
  [v36 setFetchBatchSize_];
  v151 = MEMORY[0x277D84F90];
  v140 = a5;
  v141 = a3;
  v139 = a6;
  if (a3 && a5)
  {
    sub_22B128014(0, &qword_281409330, 0x277CCAC30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_22B3634C0;
    v38 = MEMORY[0x277D837D0];
    *(v37 + 56) = MEMORY[0x277D837D0];
    v39 = sub_22B1280E4();
    v40 = v137;
    v42 = v140;
    v41 = v141;
    *(v37 + 32) = v136;
    *(v37 + 40) = v41;
    *(v37 + 96) = v38;
    *(v37 + 104) = v39;
    *(v37 + 64) = v39;
    *(v37 + 72) = v40;
    *(v37 + 80) = v42;

    v43 = sub_22B360CCC();
    MEMORY[0x23188E350]();
    if (*((v151 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v151 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22B360A7C();
    }

    sub_22B360A9C();

    a6 = v139;
  }

  sub_22B170BE0(a6, v25, &qword_27D8BA340, &qword_22B363FB0);
  v44 = v143;
  v45 = v144;
  v46 = *(v143 + 48);
  v132 = v143 + 48;
  v131 = v46;
  if (v46(v25, 1, v144) == 1)
  {
    sub_22B123284(v25, &qword_27D8BA340, &qword_22B363FB0);
  }

  else
  {
    v138 = v10;
    (*(v44 + 32))(v35, v25, v45);
    sub_22B128014(0, &qword_281409330, 0x277CCAC30);
    v47 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_22B3634B0;
    v49 = sub_22B35DDDC();
    *(v48 + 56) = sub_22B128014(0, &qword_281408558, 0x277CBEAA8);
    *(v48 + 64) = sub_22B176FAC(&qword_281408550, &qword_281408558, 0x277CBEAA8);
    *(v48 + 32) = v49;
    v50 = sub_22B360CCC();
    MEMORY[0x23188E350]();
    if (*((v151 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v151 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22B360A7C();
    }

    sub_22B360A9C();

    (*(v47 + 8))(v35, v144);
    v10 = v138;
  }

  v51 = v147;
  v52 = objc_allocWithZone(MEMORY[0x277CCA920]);
  sub_22B128014(0, &qword_281409330, 0x277CCAC30);
  v53 = sub_22B360A3C();

  v54 = [v52 initWithType:1 subpredicates:v53];

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v55 = v145;
  v56 = __swift_project_value_buffer(v145, qword_28140BD10);
  swift_beginAccess();
  v57 = *(v10 + 16);
  v134 = v10 + 16;
  v135 = v56;
  v133 = v57;
  v57(v18, v56, v55);
  v58 = v54;
  v59 = sub_22B36050C();
  v60 = sub_22B360D2C();

  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    *v61 = 138412290;
    *(v61 + 4) = v58;
    *v62 = v58;
    v63 = v58;
    _os_log_impl(&dword_22B116000, v59, v60, "[IntervalBlocks] Deleting records using predicate %@", v61, 0xCu);
    sub_22B123284(v62, &unk_27D8BAA90, &unk_22B362BC0);
    MEMORY[0x23188F650](v62, -1, -1);
    v64 = v61;
    v55 = v145;
    MEMORY[0x23188F650](v64, -1, -1);
  }

  v67 = *(v10 + 8);
  v66 = v10 + 8;
  v65 = v67;
  v67(v18, v55);
  v68 = MEMORY[0x23188EEB0]([v148 setPredicate_]);
  v69 = v142;
  v70 = sub_22B360E9C();
  if (v69)
  {
LABEL_28:
    objc_autoreleasePoolPop(v68);

    return;
  }

  v71 = v70;
  v123 = v65;
  v142 = v58;
  v138 = v66;
  while (!(v71 >> 62))
  {
    v72 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v72)
    {
      goto LABEL_29;
    }

LABEL_19:
    for (i = 0; i != v72; ++i)
    {
      if ((v71 & 0xC000000000000001) != 0)
      {
        v74 = MEMORY[0x23188EAC0](i, v71);
      }

      else
      {
        v74 = *(v71 + 8 * i + 32);
      }

      v75 = v74;
      [a1 deleteObject_];
    }

    sub_22B207390(10);
    objc_autoreleasePoolPop(v68);
    v68 = MEMORY[0x23188EEB0]();
    v71 = sub_22B360E9C();
    v51 = v147;
  }

  v76 = sub_22B36109C();
  if (v76)
  {
    v72 = v76;
    sub_22B36109C();
    if (v72 < 1)
    {
      __break(1u);
      v58 = v142;
      goto LABEL_28;
    }

    goto LABEL_19;
  }

LABEL_29:

  objc_autoreleasePoolPop(v68);
  v78 = v140;
  v77 = v141;
  if (v141 && v140)
  {
    v79 = v128;
    sub_22B170BE0(v139, v128, &qword_27D8BA340, &qword_22B363FB0);
    v80 = v144;
    v81 = v131(v79, 1, v144);
    v82 = v145;
    if (v81 == 1)
    {
      sub_22B123284(v79, &qword_27D8BA340, &qword_22B363FB0);
      v147 = 0;
      v83 = 0xE000000000000000;
    }

    else
    {
      v107 = v143;
      v108 = v124;
      (*(v143 + 32))(v124, v79, v80);
      v149 = 0x2065726F666562;
      v150 = 0xE700000000000000;
      sub_22B306EB4(&qword_28140B488, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v109 = sub_22B36131C();
      v110 = v80;
      MEMORY[0x23188E270](v109);
      v77 = v141;

      v83 = v150;
      v147 = v149;
      (*(v107 + 8))(v108, v110);
    }

    v111 = v127;
    v133(v127, v135, v82);

    v112 = v77;
    v113 = sub_22B36050C();
    v114 = sub_22B360D0C();

    if (os_log_type_enabled(v113, v114))
    {
      v115 = swift_slowAlloc();
      v146 = swift_slowAlloc();
      v149 = v146;
      *v115 = 136315650;
      *(v115 + 4) = sub_22B1A7B20(v136, v112, &v149);
      *(v115 + 12) = 2080;
      *(v115 + 14) = sub_22B1A7B20(v137, v78, &v149);
      *(v115 + 22) = 2080;
      v116 = v111;
      v117 = sub_22B1A7B20(v147, v83, &v149);

      *(v115 + 24) = v117;
      _os_log_impl(&dword_22B116000, v113, v114, "[IntervalBlocks] Deleted %s for utility %s %s", v115, 0x20u);
      v118 = v146;
      swift_arrayDestroy();
      MEMORY[0x23188F650](v118, -1, -1);
      MEMORY[0x23188F650](v115, -1, -1);

      v119 = v116;
      v120 = v145;
    }

    else
    {

      v119 = v111;
      v120 = v82;
    }

    v123(v119, v120);
  }

  else
  {
    v84 = v130;
    sub_22B170BE0(v139, v130, &qword_27D8BA340, &qword_22B363FB0);
    v85 = v144;
    v86 = v131(v84, 1, v144);
    v87 = v145;
    if (v86 == 1)
    {
      sub_22B123284(v84, &qword_27D8BA340, &qword_22B363FB0);
      v88 = v126;
      v133(v126, v135, v87);
      v89 = sub_22B36050C();
      v90 = sub_22B360D0C();
      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        *v91 = 0;
        _os_log_impl(&dword_22B116000, v89, v90, "[IntervalBlocks] Deleted All", v91, 2u);
        MEMORY[0x23188F650](v91, -1, -1);
      }

      v123(v88, v87);
    }

    else
    {
      v92 = v143;
      (*(v143 + 32))(v51, v84, v85);
      v93 = v129;
      v133(v129, v135, v87);
      v94 = v125;
      (*(v92 + 16))(v125, v51, v85);
      v95 = sub_22B36050C();
      v96 = sub_22B360D0C();
      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        v141 = v97;
        v146 = swift_slowAlloc();
        v149 = v146;
        *v97 = 136315138;
        sub_22B306EB4(&qword_28140B488, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
        LODWORD(v140) = v96;
        v98 = v144;
        v99 = sub_22B36131C();
        v101 = v100;
        v102 = *(v92 + 8);
        v102(v94, v98);
        v103 = sub_22B1A7B20(v99, v101, &v149);

        v104 = v141;
        *(v141 + 1) = v103;
        v105 = v104;
        _os_log_impl(&dword_22B116000, v95, v140, "[IntervalBlocks] Deleted  before %s", v104, 0xCu);
        v106 = v146;
        __swift_destroy_boxed_opaque_existential_0(v146);
        MEMORY[0x23188F650](v106, -1, -1);
        MEMORY[0x23188F650](v105, -1, -1);

        v123(v129, v145);
        v102(v147, v98);
      }

      else
      {

        v121 = *(v92 + 8);
        v122 = v144;
        v121(v94, v144);
        v123(v93, v87);
        v121(v147, v122);
      }
    }
  }

  [a1 refreshAllObjects];
}

void sub_22B304908(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v65 = a6;
  v66 = a7;
  v63 = a3;
  v57 = a8;
  v64 = sub_22B35FC0C();
  v16 = *(v64 - 8);
  *&v17 = MEMORY[0x28223BE20](v64).n128_u64[0];
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = a1;
  [a1 refreshAllObjects];
  v20 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v21 = sub_22B36081C();
  v22 = [v20 initWithEntityName_];

  [v22 setResultType_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD10, &qword_22B363A30);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_22B3634B0;
  *(v23 + 56) = MEMORY[0x277D837D0];
  *(v23 + 32) = 0x4449726574656DLL;
  *(v23 + 40) = 0xE700000000000000;
  v24 = sub_22B360A3C();

  [v22 setPropertiesToFetch_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_22B363650;
  v26 = *(a2 + 112);
  if (v26)
  {
    v61 = a11;
    v62 = a12;
    v60 = a10;
    *(v25 + 32) = v26;
    sub_22B128014(0, &qword_2814092F8, 0x277CBE4D0);
    v27 = v26;
    v28 = sub_22B360A3C();

    [v22 setAffectedStores_];

    [v22 setReturnsDistinctResults_];
    v29 = sub_22B128014(0, &qword_281409330, 0x277CCAC30);
    v58 = "een:importedSum:exportedSum:)";
    v59 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_22B363640;
    v31 = MEMORY[0x277D837D0];
    *(v30 + 56) = MEMORY[0x277D837D0];
    v32 = sub_22B1280E4();
    v33 = v64;
    *(v30 + 32) = v63;
    *(v30 + 40) = a4;
    *(v30 + 96) = v31;
    *(v30 + 104) = v32;
    *(v30 + 64) = v32;
    *(v30 + 72) = a5;
    *(v30 + 80) = v65;
    (*(v16 + 104))(v19, *MEMORY[0x277D074A8], v33);

    sub_22B35FBFC();
    (*(v16 + 8))(v19, v33);
    v34 = sub_22B360C8C();
    *(v30 + 136) = sub_22B128014(0, &qword_281409278, 0x277CCABB0);
    v35 = sub_22B176FAC(&qword_27D8BAD48, &qword_281409278, 0x277CCABB0);
    *(v30 + 112) = v34;
    *(v30 + 176) = v31;
    *(v30 + 184) = v32;
    v36 = v66;
    *(v30 + 144) = v35;
    *(v30 + 152) = v36;
    v37 = v61;
    *(v30 + 160) = v60;
    *(v30 + 216) = v31;
    *(v30 + 224) = v32;
    v38 = v62;
    *(v30 + 192) = v37;
    *(v30 + 200) = v38;

    v39 = sub_22B360CCC();
    [v22 setPredicate_];
    [v22 setFetchBatchSize_];
    [v22 setReturnsObjectsAsFaults_];
    sub_22B128014(0, &qword_27D8BA3D8, 0x277CBEAC0);
    v40 = v68;
    v41 = sub_22B360E9C();
    if (v40)
    {

      return;
    }

    v42 = sub_22B304F10(v41);

    if (v42)
    {
      v43 = *(v42 + 16);
      if (v43)
      {
        v67 = v43 - 1;
        v68 = MEMORY[0x277D84F90];
        for (i = 0; ; ++i)
        {
          while (1)
          {
            if (i >= *(v42 + 16))
            {
              __break(1u);
              goto LABEL_22;
            }

            v45 = *(v42 + 32 + 8 * i);
            if (*(v45 + 16))
            {
              break;
            }

LABEL_8:
            if (v43 == ++i)
            {
              goto LABEL_20;
            }
          }

          v46 = sub_22B33B28C(0x4449726574656DLL, 0xE700000000000000);
          if ((v47 & 1) == 0)
          {

            goto LABEL_8;
          }

          v48 = (*(v45 + 56) + 16 * v46);
          v49 = v48[1];
          v65 = *v48;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v66 = v49;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v68 = sub_22B32CD20(0, *(v68 + 2) + 1, 1, v68);
          }

          v52 = *(v68 + 2);
          v51 = *(v68 + 3);
          if (v52 >= v51 >> 1)
          {
            v68 = sub_22B32CD20((v51 > 1), v52 + 1, 1, v68);
          }

          v53 = v68;
          *(v68 + 2) = v52 + 1;
          v54 = &v53[16 * v52];
          v55 = v66;
          *(v54 + 4) = v65;
          *(v54 + 5) = v55;
          if (v67 == i)
          {
            goto LABEL_20;
          }
        }
      }

      v68 = MEMORY[0x277D84F90];
LABEL_20:

      *v57 = v68;
    }

    else
    {

      *v57 = 0;
    }
  }

  else
  {
LABEL_22:
    __break(1u);
  }
}

uint64_t sub_22B304F10(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22B36109C())
  {
    v8 = MEMORY[0x277D84F90];
    sub_22B355854(0, i & ~(i >> 63), 0);
    v4 = v8;
    if (v2)
    {
      v2 = sub_22B36109C();
      if (!v2)
      {
        return v4;
      }
    }

    else
    {
      v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v2)
      {
        return v4;
      }
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v5 = *(a1 + 32);
      goto LABEL_10;
    }

    __break(1u);
LABEL_14:
    ;
  }

  v5 = MEMORY[0x23188EAC0](0, a1);
LABEL_10:
  v6 = v5;
  sub_22B3606DC();

  return 0;
}

void sub_22B3050AC(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, _BYTE *a8@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v64 = a7;
  v61 = a4;
  v62 = a6;
  v59 = a3;
  v60 = a5;
  v54[0] = a8;
  v63 = sub_22B35FC0C();
  v16 = *(v63 - 8);
  *&v17 = MEMORY[0x28223BE20](v63).n128_u64[0];
  v19 = v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = a1;
  [a1 refreshAllObjects];
  v65 = sub_22B35F4EC();
  v20 = sub_22B35F47C();
  [v20 setResultType_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD10, &qword_22B363A30);
  v21 = swift_allocObject();
  v22 = MEMORY[0x277D837D0];
  *(v21 + 16) = xmmword_22B3634B0;
  *(v21 + 56) = v22;
  *(v21 + 32) = 0x73676E6964616572;
  *(v21 + 40) = 0xE800000000000000;
  v23 = sub_22B360A3C();

  [v20 setPropertiesToFetch_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA238, &unk_22B365D70);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_22B363650;
  v25 = *(a2 + 112);
  if (v25)
  {
    v57 = a13;
    v58 = a14;
    v55 = a11;
    v56 = a12;
    *(v24 + 32) = v25;
    sub_22B128014(0, &qword_2814092F8, 0x277CBE4D0);
    v26 = v25;
    v27 = sub_22B360A3C();

    [v20 setAffectedStores_];

    v28 = sub_22B128014(0, &qword_281409330, 0x277CCAC30);
    v54[1] = "AND usagePointID = %@";
    v54[2] = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA220, &unk_22B363550);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_22B363660;
    v30 = MEMORY[0x277D837D0];
    *(v29 + 56) = MEMORY[0x277D837D0];
    v31 = sub_22B1280E4();
    v68 = v20;
    v32 = v31;
    v33 = v60;
    v35 = v61;
    v34 = v62;
    *(v29 + 32) = v59;
    *(v29 + 40) = v35;
    *(v29 + 96) = v30;
    *(v29 + 104) = v31;
    *(v29 + 64) = v31;
    *(v29 + 72) = v33;
    *(v29 + 80) = v34;
    v36 = v63;
    (*(v16 + 104))(v19, *MEMORY[0x277D074B0], v63);

    sub_22B35FBFC();
    (*(v16 + 8))(v19, v36);
    v37 = sub_22B360C8C();
    *(v29 + 136) = sub_22B128014(0, &qword_281409278, 0x277CCABB0);
    v38 = sub_22B176FAC(&qword_27D8BAD48, &qword_281409278, 0x277CCABB0);
    *(v29 + 112) = v37;
    *(v29 + 176) = v30;
    *(v29 + 184) = v32;
    v39 = v64;
    *(v29 + 144) = v38;
    *(v29 + 152) = v39;
    *(v29 + 160) = a10;
    *(v29 + 216) = v30;
    *(v29 + 224) = v32;
    v40 = v56;
    *(v29 + 192) = v55;
    *(v29 + 200) = v40;
    *(v29 + 256) = v30;
    *(v29 + 264) = v32;
    v41 = v68;
    v42 = v58;
    *(v29 + 232) = v57;
    *(v29 + 240) = v42;

    v43 = sub_22B360CCC();
    [v41 setPredicate_];
    [v41 setFetchBatchSize_];
    [v41 setReturnsObjectsAsFaults_];
    v44 = v67;
    v45 = sub_22B360E9C();
    if (v44)
    {
    }

    else
    {
      v46 = v45;
      if (v45 >> 62)
      {
        goto LABEL_21;
      }

      v47 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v47 >= 0x1E)
      {
        v67 = v43;
        v69 = 0;
        while (1)
        {
          v48 = 0;
          v43 = (v46 & 0xFFFFFFFFFFFFFF8);
          while (1)
          {
            if ((v46 & 0xC000000000000001) != 0)
            {
              v49 = MEMORY[0x23188EAC0](v48, v46);
            }

            else
            {
              if (v48 >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_20;
              }

              v49 = *(v46 + 8 * v48 + 32);
            }

            v50 = v49;
            v41 = (v48 + 1);
            if (__OFADD__(v48, 1))
            {
              break;
            }

            v51 = MEMORY[0x23188EEB0]();
            sub_22B305618(v50, &v69, v52);
            objc_autoreleasePoolPop(v51);

            ++v48;
            if (v41 == v47)
            {
              v53 = v69;
              goto LABEL_17;
            }
          }

          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          if (sub_22B36109C() <= 29)
          {
            break;
          }

          v67 = v43;
          v69 = 0;
          v47 = sub_22B36109C();
          if (!v47)
          {
            v53 = 0;
LABEL_17:

            *v54[0] = v53;
            return;
          }
        }
      }

      *v54[0] = 2;
    }
  }

  else
  {
    __break(1u);
    objc_autoreleasePoolPop(v16);
    __break(1u);
  }
}

void sub_22B305618(void *a1, _BYTE *a2, __n128 a3)
{
  v5 = sub_22B35FEBC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22B35FDCC();
  v9 = [a1 readings];
  v10 = sub_22B35DCDC();
  v12 = v11;

  v13 = sub_22B35FDBC();
  sub_22B12F174(v10, v12);
  v14 = *(v13 + 16);
  v20 = a2;
  if (v14 <= 47)
  {
    if (v14 == 1)
    {
      v15 = 0.3;
      goto LABEL_11;
    }

LABEL_7:
    v15 = 0.01;
    goto LABEL_11;
  }

  if (v14 == 48)
  {
    v15 = 0.005;
    goto LABEL_11;
  }

  if (v14 == 96)
  {
    v15 = 0.003;
    goto LABEL_11;
  }

  if (v14 != 288)
  {
    goto LABEL_7;
  }

  v15 = 0.001;
LABEL_11:
  v16 = 0;
  while (1)
  {
    if (v14 == v16)
    {

      return;
    }

    if (v16 >= *(v13 + 16))
    {
      break;
    }

    (*(v6 + 16))(v8, v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16++, v5);
    sub_22B35FE4C();
    v18 = v17;
    (*(v6 + 8))(v8, v5);
    if (v15 < v18)
    {

      *v20 = 1;
      return;
    }
  }

  __break(1u);
}

void *sub_22B30585C()
{
  type metadata accessor for IntervalBlocksManager();
  v0 = swift_allocObject();
  result = sub_22B1D5830();
  qword_28140BCF8 = v0;
  return result;
}

uint64_t sub_22B305898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[9] = a5;
  v6[10] = v5;
  v6[7] = a3;
  v6[8] = a4;
  v6[5] = a1;
  v6[6] = a2;
  v7 = sub_22B36052C();
  v6[11] = v7;
  v6[12] = *(v7 - 8);
  v6[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B305960, v5, 0);
}

uint64_t sub_22B305960()
{
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_22B36050C();
  v6 = sub_22B360D2C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22B116000, v5, v6, "Delete interval readings", v7, 2u);
    MEMORY[0x23188F650](v7, -1, -1);
  }

  v9 = *(v0 + 96);
  v8 = *(v0 + 104);
  v11 = *(v0 + 80);
  v10 = *(v0 + 88);

  (*(v9 + 8))(v8, v10);
  v12 = *(v11 + 112);
  if (v12)
  {
    v13 = *(*(v0 + 80) + 128);
    if (v13)
    {
      v14 = *(v11 + 120);
      v15 = *(v0 + 72);
      v21 = *(v0 + 40);
      v22 = *(v0 + 56);
      sub_22B1231A0(v12, v14);
      v16 = v13;
      v17 = MEMORY[0x23188EEB0]();
      v18 = swift_task_alloc();
      *(v18 + 16) = v16;
      *(v18 + 24) = v21;
      *(v18 + 40) = v22;
      *(v18 + 56) = v15;
      sub_22B360E7C();

      objc_autoreleasePoolPop(v17);
    }
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_22B305BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[15] = a5;
  v6[16] = v5;
  v6[13] = a3;
  v6[14] = a4;
  v6[11] = a1;
  v6[12] = a2;
  v7 = sub_22B36052C();
  v6[17] = v7;
  v6[18] = *(v7 - 8);
  v6[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B305CA4, v5, 0);
}

uint64_t sub_22B305CA4()
{
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  v4 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_22B36050C();
  v6 = sub_22B360D2C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_22B116000, v5, v6, "Process Interval Blocks", v7, 2u);
    MEMORY[0x23188F650](v7, -1, -1);
  }

  v9 = v0[18];
  v8 = v0[19];
  v11 = v0[16];
  v10 = v0[17];

  (*(v9 + 8))(v8, v10);
  v12 = *(v11 + 112);
  v0[20] = v12;
  if (v12)
  {
    v13 = *(v0[16] + 120);
    v0[21] = v13;

    v14 = v13;
    v15 = sub_22B207EFC();
    v16 = [v15 newBackgroundContext];
    v0[22] = v16;
    v17 = sub_22B36081C();
    [v16 setTransactionAuthor_];

    [v16 setMergePolicy_];
    [v16 setUndoManager_];
    [v16 setShouldRefreshAfterSave_];
    [v16 setStalenessInterval_];
    [v16 setShouldDeleteInaccessibleFaults_];

    v18 = swift_task_alloc();
    v0[23] = v18;
    *v18 = v0;
    v18[1] = sub_22B305FC8;
    v19 = v0[14];
    v20 = v0[15];
    v21 = v0[12];
    v22 = v0[13];
    v23 = v0[11];

    return sub_22B2FC08C(v23, v21, v22, v19, v16, v20, v12, v14);
  }

  else
  {
    sub_22B134CDC();
    swift_allocError();
    *v25 = 13;
    swift_willThrow();

    v26 = v0[1];

    return v26();
  }
}

uint64_t sub_22B305FC8()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  v3 = *(v2 + 128);
  if (v0)
  {
    v4 = sub_22B3062D4;
  }

  else
  {
    v4 = sub_22B3060F4;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22B3060F4()
{
  v1 = *(v0[16] + 128);
  if (v1)
  {
    v2 = v0[21];
    v3 = v0[22];
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_22B144218;
    *(v5 + 24) = v4;
    v0[6] = sub_22B12819C;
    v0[7] = v5;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_22B32556C;
    v0[5] = &block_descriptor_25;
    v6 = _Block_copy(v0 + 2);
    v7 = v1;

    [v7 performBlockAndWait_];

    _Block_release(v6);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v9 = v0[21];

LABEL_5:

  v10 = v0[1];

  return v10();
}

uint64_t sub_22B3062D4()
{
  v1 = *(v0 + 168);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22B306350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x2822009F8](sub_22B306378, v5, 0);
}

uint64_t sub_22B306378()
{
  v1 = *(v0 + 56);
  v2 = v1[14];
  if (v2 && (v3 = v1[16]) != 0)
  {
    v4 = v1[15];
    v6 = *(v0 + 40);
    v5 = *(v0 + 48);
    v13 = *(v0 + 24);
    v7 = swift_task_alloc();
    *(v7 + 16) = v13;
    *(v7 + 32) = v6;
    *(v7 + 40) = v5;
    *(v7 + 48) = 2;
    *(v7 + 56) = 0;
    *(v7 + 64) = 0;
    *(v7 + 72) = v2;
    *(v7 + 80) = v4;
    *(v7 + 88) = v3;
    sub_22B1231A0(v2, v4);
    v8 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
    sub_22B360E7C();
  }

  else
  {
    v9 = *(v0 + 16);
    v10 = sub_22B35DE9C();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_22B306544(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v40 - v5;
  v7 = sub_22B35DE9C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22B36052C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v11, qword_28140BD10);
  swift_beginAccess();
  (*(v12 + 16))(v14, v15, v11);
  v44 = *(v8 + 16);
  v45 = a1;
  v44(v10, a1, v7);
  v16 = sub_22B36050C();
  v17 = v8;
  v46 = v11;
  v18 = v16;
  v19 = sub_22B360D2C();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v43 = v6;
    v21 = v20;
    v41 = swift_slowAlloc();
    v47 = v41;
    *v21 = 136315138;
    sub_22B306EB4(&qword_28140B488, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v42 = v12;
    v22 = v17;
    v23 = sub_22B36131C();
    v24 = v7;
    v25 = v2;
    v27 = v26;
    v28 = v10;
    v29 = v24;
    (*(v22 + 8))(v28, v24);
    v30 = sub_22B1A7B20(v23, v27, &v47);
    v2 = v25;

    *(v21 + 4) = v30;
    _os_log_impl(&dword_22B116000, v18, v19, "Delete IntervalBlocks older than %s", v21, 0xCu);
    v31 = v41;
    __swift_destroy_boxed_opaque_existential_0(v41);
    MEMORY[0x23188F650](v31, -1, -1);
    v32 = v21;
    v6 = v43;
    MEMORY[0x23188F650](v32, -1, -1);

    result = (*(v42 + 8))(v14, v46);
    v34 = v25[14];
    if (!v34)
    {
      return result;
    }
  }

  else
  {

    v35 = v10;
    v29 = v7;
    (*(v17 + 8))(v35, v7);
    result = (*(v12 + 8))(v14, v46);
    v22 = v17;
    v34 = v2[14];
    if (!v34)
    {
      return result;
    }
  }

  v36 = v2[16];
  if (v36)
  {
    v37 = v2[15];
    v44(v6, v45, v29);
    (*(v22 + 56))(v6, 0, 1, v29);
    sub_22B1231A0(v34, v37);
    v38 = v36;
    v39 = MEMORY[0x23188EEB0]();
    MEMORY[0x28223BE20](v39);
    *(&v40 - 6) = v38;
    *(&v40 - 5) = 0u;
    *(&v40 - 3) = 0u;
    *(&v40 - 1) = v6;
    sub_22B360E7C();
    objc_autoreleasePoolPop(v39);

    return sub_22B123284(v6, &qword_27D8BA340, &qword_22B363FB0);
  }

  return result;
}

void *sub_22B306A2C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v29 = a1;
  v9 = sub_22B36052C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v9, qword_28140BD10);
  swift_beginAccess();
  (*(v10 + 16))(v12, v13, v9);

  v14 = sub_22B36050C();
  v15 = sub_22B360D2C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v28 = a3;
    v17 = a4;
    v18 = v16;
    v19 = swift_slowAlloc();
    v30 = v19;
    *v18 = 136380675;
    *(v18 + 4) = sub_22B1A7B20(v29, a2, &v30);
    _os_log_impl(&dword_22B116000, v14, v15, "Get intervalblock count for %{private}s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x23188F650](v19, -1, -1);
    v20 = v18;
    a4 = v17;
    a3 = v28;
    MEMORY[0x23188F650](v20, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  v21 = v5[14];
  if (!v21)
  {
    return 0;
  }

  v22 = v5[16];
  if (!v22)
  {
    return 0;
  }

  v23 = v5[15];
  sub_22B1231A0(v21, v23);
  v24 = v22;
  v25 = MEMORY[0x23188EEB0]();
  MEMORY[0x28223BE20](v25);
  *(&v27 - 6) = v29;
  *(&v27 - 5) = a2;
  *(&v27 - 4) = a3;
  *(&v27 - 3) = a4;
  *(&v27 - 2) = v24;
  sub_22B360E7C();
  objc_autoreleasePoolPop(v25);

  return v30;
}

uint64_t sub_22B306DDC@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_22B306EB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t *sub_22B306EFC@<X0>(uint64_t *__return_ptr a1@<X8>, _BYTE *__src@<X0>, unint64_t a3@<X1>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a3)
  {
    if (a3 <= 14)
    {
      result = sub_22B30CC34(__src, &__src[a3]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_22B35D95C();
      swift_allocObject();
      v8 = sub_22B35D90C();
      if (a3 >= 0x7FFFFFFF)
      {
        sub_22B35DC9C();
        result = swift_allocObject();
        result[2] = 0;
        result[3] = a3;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = (a3 << 32);
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a1 = result;
  a1[1] = v6;
  return result;
}

char *sub_22B306FC4(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v19[2] = *MEMORY[0x277D85DE8];
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      sub_22B12F174(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      result = a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        result = v17;
      }

      v10 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v4 = v19[0];
      v4[1] = v10;
      return result;
    }

    v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

    sub_22B12F174(v7, v6);
    *v4 = xmmword_22B366E20;
    sub_22B12F174(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_22B35D91C() && __OFSUB__(v7, sub_22B35D94C()))
      {
LABEL_26:
        __break(1u);
      }

      sub_22B35D95C();
      swift_allocObject();
      v14 = sub_22B35D8FC();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = sub_22B307468(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (!v3)
      {
        *v4 = v7;
        v4[1] = v11;
        return v15;
      }

      *v4 = v7;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v8 == 2)
  {

    sub_22B12F174(v7, v6);
    v17 = v7;
    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_22B366E20;
    sub_22B12F174(0, 0xC000000000000000);
    sub_22B35DC5C();
    result = sub_22B307468(*(v17 + 2), *(v17 + 3), a1);
    v11 = v18 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v17;
      v4[1] = v11;
      return result;
    }

    *v4 = v17;
LABEL_21:
    v4[1] = v11;
    return result;
  }

  memset(v19, 0, 15);
  result = a1(&v17, v19, v19);
  if (!v3)
  {
    return v17;
  }

  return result;
}

_BYTE *sub_22B307368@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_22B30CC34(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_22B30CD8C(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_22B30CE08(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_22B3073FC(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_22B307468(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_22B35D91C();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_22B35D94C();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_22B35D93C();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

void (*sub_22B30751C(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x68uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = sub_22B35DE9C();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v9 = v8;
  v6[9] = v8;
  if (v4)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v8 + 64));
  }

  v11 = v10;
  v6[10] = v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v9 + 16))(v11, a2, v7);
  v6[11] = sub_22B307CA0(v6);
  v6[12] = sub_22B3076F0(v6 + 4, v11, isUniquelyReferenced_nonNull_native);
  return sub_22B307658;
}

void sub_22B307658(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 88);
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 64);
  (*(*a1 + 96))();
  (*(v4 + 8))(v3, v5);
  v2(v1, 0);
  free(v3);

  free(v1);
}

void (*sub_22B3076F0(void *a1, uint64_t a2, char a3))(uint64_t a1, char a2)
{
  v4 = v3;
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x78uLL);
  }

  v9 = v8;
  *a1 = v8;
  *v8 = a2;
  v8[1] = v3;
  v10 = sub_22B35DE9C();
  v9[2] = v10;
  v11 = *(v10 - 8);
  v9[3] = v11;
  if (v7)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(v11 + 64));
  }

  v9[4] = v12;
  v13 = sub_22B35F00C();
  v9[5] = v13;
  v14 = *(v13 - 8);
  v15 = v14;
  v9[6] = v14;
  v16 = *(v14 + 64);
  if (v7)
  {
    v9[7] = swift_coroFrameAlloc();
    v9[8] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v9[7] = malloc(*(v14 + 64));
    v9[8] = malloc(v16);
    v17 = malloc(v16);
  }

  v9[9] = v17;
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BADC8, &unk_22B366F90) - 8) + 64);
  if (v7)
  {
    v9[10] = swift_coroFrameAlloc();
    v9[11] = swift_coroFrameAlloc();
    v19 = swift_coroFrameAlloc();
  }

  else
  {
    v9[10] = malloc(v18);
    v9[11] = malloc(v18);
    v19 = malloc(v18);
  }

  v20 = v19;
  v9[12] = v19;
  v21 = *v4;
  v23 = sub_22B33B348(a2);
  *(v9 + 112) = v22 & 1;
  v24 = *(v21 + 16);
  v25 = (v22 & 1) == 0;
  v26 = v24 + v25;
  if (__OFADD__(v24, v25))
  {
    __break(1u);
    goto LABEL_26;
  }

  v27 = v22;
  v28 = *(v21 + 24);
  if (v28 < v26 || (a3 & 1) == 0)
  {
    if (v28 >= v26 && (a3 & 1) == 0)
    {
      sub_22B342B94();
      goto LABEL_21;
    }

    sub_22B33EAE4(v26, a3 & 1);
    v29 = sub_22B33B348(a2);
    if ((v27 & 1) == (v30 & 1))
    {
      v23 = v29;
      goto LABEL_21;
    }

LABEL_26:
    result = sub_22B3613BC();
    __break(1u);
    return result;
  }

LABEL_21:
  v9[13] = v23;
  if (v27)
  {
    (*(v15 + 32))(v20, *(*v4 + 56) + *(v15 + 72) * v23, v13);
    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  (*(v15 + 56))(v20, v31, 1, v13);
  return sub_22B307A20;
}

void sub_22B307A20(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = (*(*a1 + 48) + 48);
  v5 = *(*a1 + 96);
  if (a2)
  {
    v6 = v2[10];
    sub_22B170BE0(v5, v6, &qword_27D8BADC8, &unk_22B366F90);
    v7 = (*v4)(v6, 1, v3);
    v8 = *(v2 + 112);
    v9 = v2[10];
    if (v7 != 1)
    {
      v10 = v2[1];
      v11 = *(v2[6] + 32);
      v11(v2[8], v2[10], v2[5]);
      v12 = *v10;
      v13 = v2[13];
      v14 = v2[8];
      if ((v8 & 1) == 0)
      {
LABEL_4:
        v15 = v2[7];
        v17 = v2[4];
        v16 = v2[5];
        (*(v2[3] + 16))(v17, *v2, v2[2]);
        v11(v15, v14, v16);
        sub_22B3400CC(v13, v17, v15, v12);
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v18 = v2[11];
    sub_22B170BE0(v5, v18, &qword_27D8BADC8, &unk_22B366F90);
    v19 = (*v4)(v18, 1, v3);
    v8 = *(v2 + 112);
    v9 = v2[11];
    if (v19 != 1)
    {
      v22 = v2[1];
      v11 = *(v2[6] + 32);
      v11(v2[9], v2[11], v2[5]);
      v12 = *v22;
      v13 = v2[13];
      v14 = v2[9];
      if ((v8 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      v11(v12[7] + *(v2[6] + 72) * v13, v14, v2[5]);
      goto LABEL_10;
    }
  }

  sub_22B123284(v9, &qword_27D8BADC8, &unk_22B366F90);
  if (v8)
  {
    v20 = v2[13];
    v21 = *v2[1];
    (*(v2[3] + 8))(*(v21 + 48) + *(v2[3] + 72) * v20, v2[2]);
    sub_22B2E6670(v20, v21);
  }

LABEL_10:
  v23 = v2[11];
  v24 = v2[12];
  v26 = v2[9];
  v25 = v2[10];
  v28 = v2[7];
  v27 = v2[8];
  v29 = v2[4];
  sub_22B123284(v24, &qword_27D8BADC8, &unk_22B366F90);
  free(v24);
  free(v23);
  free(v25);
  free(v26);
  free(v27);
  free(v28);
  free(v29);

  free(v2);
}

uint64_t (*sub_22B307CA0(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_22B307CC8;
}

uint64_t sub_22B307CD4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_22B3606AC();
      sub_22B306EB4(&qword_27D8BAD68, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      return sub_22B36066C();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_22B307EB4(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_22B307EB4(v5, v6);
  }

  sub_22B3606AC();
  sub_22B306EB4(&qword_27D8BAD68, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  return sub_22B36066C();
}

uint64_t sub_22B307EB4(uint64_t a1, uint64_t a2)
{
  result = sub_22B35D91C();
  if (!result || (result = sub_22B35D94C(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_22B35D93C();
      sub_22B3606AC();
      sub_22B306EB4(&qword_27D8BAD68, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      return sub_22B36066C();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_22B307F94(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_22B3609AC();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x23188E2B0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_22B308010@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = sub_22B36117C();
    if ((v5 & 1) == 0)
    {
      *a4 = 0;
      a4[1] = 0xE000000000000000;
      a4[2] = 15;
      a4[3] = result;
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

uint64_t sub_22B308060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[37] = a7;
  v8[38] = a8;
  v8[35] = a4;
  v8[36] = a6;
  v8[33] = a2;
  v8[34] = a3;
  v8[32] = a1;
  v9 = sub_22B36052C();
  v8[39] = v9;
  v8[40] = *(v9 - 8);
  v8[41] = swift_task_alloc();
  v8[42] = swift_task_alloc();
  v8[43] = swift_task_alloc();
  v8[44] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B308150, 0, 0);
}

uint64_t sub_22B308150()
{
  v134 = v0;
  *(v0 + 248) = MEMORY[0x277D84F90];
  v1 = (v0 + 248);
  v2 = (v0 + 296);
  v3 = *(v0 + 256);
  v4 = swift_allocObject();
  *(v0 + 360) = v4;
  *(v4 + 16) = 0;
  if (v3 >> 62)
  {
    goto LABEL_54;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22B36109C())
  {
    *(v0 + 368) = i;
    v6 = MEMORY[0x277D84F90];
    v125 = v2;
    if (!i)
    {
      break;
    }

    v129 = v1 - 23;
    swift_beginAccess();
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    LOBYTE(v11) = 0;
    v12 = 0;
    v126 = v2 + 234;
    v119 = v2 + 233;
    v120 = v1;
    while (1)
    {
      *(v0 + 243) = v12 & 1;
      *(v0 + 242) = v11 & 1;
      *(v0 + 241) = v10 & 1;
      *(v0 + 376) = v7;
      *(v0 + 384) = v8;
      v13 = *(v0 + 256);
      if ((v13 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x23188EAC0](v9);
      }

      else
      {
        if (v9 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_52;
        }

        v14 = *(v13 + 8 * v9 + 32);
      }

      v15 = v14;
      *(v0 + 392) = v14;
      *(v0 + 400) = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (sub_22B360F5C() == 0x6C61767265746E49 && v16 == 0xED00006B636F6C42)
      {

LABEL_41:
        v71 = *(v0 + 360);
        v131 = *(v0 + 272);
        v72 = *(v0 + 264);
        v73 = swift_task_alloc();
        *(v0 + 408) = v73;
        v74 = *v2;
        *(v73 + 16) = v15;
        *(v73 + 24) = v74;
        *(v73 + 40) = v131;
        *(v73 + 56) = v72;
        *(v73 + 64) = v71;
        v75 = swift_task_alloc();
        *(v0 + 416) = v75;
        v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD58, &qword_22B366F10);
        *v75 = v0;
        v75[1] = sub_22B30901C;
        v77 = sub_22B30CECC;
        v78 = (v0 + 232);
        v79 = 0xD000000000000048;
        v80 = 0x800000022B36DEF0;
        v81 = v73;
        goto LABEL_47;
      }

      v18 = sub_22B36134C();

      if (v18)
      {
        goto LABEL_41;
      }

      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v19 = *(v0 + 352);
      v20 = *(v0 + 312);
      v21 = *(v0 + 320);
      v22 = __swift_project_value_buffer(v20, qword_28140BD10);
      swift_beginAccess();
      (*(v21 + 16))(v19, v22, v20);
      v23 = sub_22B36050C();
      v24 = sub_22B360D1C();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_22B116000, v23, v24, "[Dropbox Bridge] Record is not of type IntervalReading!", v25, 2u);
        MEMORY[0x23188F650](v25, -1, -1);
      }

      v26 = *(v0 + 352);
      v27 = *(v0 + 312);
      v28 = *(v0 + 320);

      (*(v28 + 8))(v26, v27);
      sub_22B134CDC();
      v29 = swift_allocError();
      *v30 = 20;
      swift_willThrow();
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v32 = *(v0 + 320);
      v31 = *(v0 + 328);
      v33 = *(v0 + 312);
      v34 = __swift_project_value_buffer(v33, qword_28140BD10);
      swift_beginAccess();
      (*(v32 + 16))(v31, v34, v33);
      v35 = v29;
      v36 = sub_22B36050C();
      v37 = sub_22B360D1C();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        *v38 = 138412290;
        v40 = v29;
        v41 = _swift_stdlib_bridgeErrorToNSError();
        *(v38 + 4) = v41;
        *v39 = v41;
        _os_log_impl(&dword_22B116000, v36, v37, "[Dropbox Bridge] Skiping record. Failed handle IntervalReading payload %@", v38, 0xCu);
        sub_22B123284(v39, &unk_27D8BAA90, &unk_22B362BC0);
        MEMORY[0x23188F650](v39, -1, -1);
        MEMORY[0x23188F650](v38, -1, -1);
      }

      else
      {
      }

      (*(*(v0 + 320) + 8))(*(v0 + 328), *(v0 + 312));
      v11 = *(v0 + 242);
      v42 = *(v0 + 241);
      *(v2 + 233) = *(v0 + 242);
      *(v2 + 232) = v42;
      if (__ROR8__(0x8F5C28F5C28F5C29 * *(*(v0 + 360) + 16) + 0x51EB851EB851EB8, 2) < 0x28F5C28F5C28F5DuLL)
      {
        v43 = *(v0 + 248);
        *(v0 + 432) = v43;
        if (v43 >> 62)
        {
          v69 = v43;
          v70 = sub_22B36109C();
          v43 = v69;
          if (v70)
          {
LABEL_50:
            v87 = *(v0 + 288);
            v88 = *(v0 + 264);
            v89 = v43;
            v90 = sub_22B207EFC();
            *(v0 + 440) = v90;
            v85 = swift_task_alloc();
            *(v0 + 448) = v85;
            v85[2] = v88;
            v85[3] = v89;
            v85[4] = v90;
            v85[5] = v87;
            v78 = swift_task_alloc();
            *(v0 + 456) = v78;
            *v78 = v0;
            v78[1] = sub_22B309FF0;
            v86 = MEMORY[0x277D84F78];
            v77 = sub_22B30D520;
            v80 = 0x800000022B36C2C0;
            goto LABEL_46;
          }
        }

        else if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_50;
        }

        v44 = *(v0 + 376);
        v45 = *(v0 + 384);
        v46 = *(v0 + 264);
        v8 = swift_allocObject();
        *(v8 + 16) = v46;
        v47 = v46;
        sub_22B144D48(v44, v45);
        v48 = swift_allocObject();
        *(v48 + 16) = sub_22B30CEB0;
        *(v48 + 24) = v8;
        *(v0 + 96) = sub_22B128240;
        *(v0 + 104) = v48;
        *(v0 + 64) = MEMORY[0x277D85DD0];
        *(v0 + 72) = 1107296256;
        *(v0 + 80) = sub_22B32556C;
        *(v0 + 88) = &block_descriptor_62;
        v49 = _Block_copy(v129);

        [v47 performBlockAndWait_];
        _Block_release(v49);
        LOBYTE(v49) = swift_isEscapingClosureAtFileLocation();

        if (v49)
        {
          goto LABEL_53;
        }

        *v1 = v6;
        if (qword_28140A0C8 != -1)
        {
          swift_once();
        }

        v50 = *(v0 + 344);
        v51 = *(v0 + 312);
        v52 = *(v0 + 320);
        v53 = __swift_project_value_buffer(v51, qword_28140BD10);
        swift_beginAccess();
        (*(v52 + 16))(v50, v53, v51);

        v54 = sub_22B36050C();
        v55 = sub_22B360D2C();

        if (os_log_type_enabled(v54, v55))
        {
          v121 = *v126;
          v124 = *(v0 + 344);
          v56 = *(v0 + 320);
          v122 = *(v0 + 392);
          v123 = *(v0 + 312);
          v57 = v6;
          v59 = *(v0 + 272);
          v58 = *(v0 + 280);
          v60 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          v133[0] = v61;
          *v60 = 136315394;
          v62 = v59;
          v6 = v57;
          *(v60 + 4) = sub_22B1A7B20(v62, v58, v133);
          *(v60 + 12) = 1024;
          *(v60 + 14) = v121;
          _os_log_impl(&dword_22B116000, v54, v55, "[IntervalBlocks] Added to share for %s with hasExportedEnergy %{BOOL}d", v60, 0x12u);
          __swift_destroy_boxed_opaque_existential_0(v61);
          v63 = v61;
          v1 = v120;
          MEMORY[0x23188F650](v63, -1, -1);
          v64 = v60;
          v2 = v125;
          MEMORY[0x23188F650](v64, -1, -1);

          (*(v56 + 8))(v124, v123);
          v65 = v126;
        }

        else
        {
          v66 = *(v0 + 344);
          v67 = *(v0 + 312);
          v68 = *(v0 + 320);

          (*(v68 + 8))(v66, v67);
          v65 = v119;
        }

        v11 = *v65;
        v7 = sub_22B30CEB0;
      }

      else
      {

        v7 = *(v0 + 376);
        v8 = *(v0 + 384);
      }

      v9 = *(v0 + 400);
      if (v9 == *(v0 + 368))
      {
        v6 = *v1;
        LOBYTE(i) = *(v2 + 232);
        goto LABEL_43;
      }

      v12 = *(v2 + 234);
      v10 = *(v2 + 232);
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    ;
  }

  v7 = 0;
  v8 = 0;
  v11 = 0;
LABEL_43:
  *(v0 + 244) = v11;
  *(v2 + 235) = i;
  *(v0 + 480) = v7;
  *(v0 + 488) = v8;
  *(v0 + 472) = v6;
  if (!(v6 >> 62))
  {
    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_45;
    }

LABEL_56:

    v91 = *(v0 + 264);
    v92 = swift_allocObject();
    *(v92 + 16) = v91;
    v93 = swift_allocObject();
    *(v93 + 16) = sub_22B30D52C;
    *(v93 + 24) = v92;
    *(v0 + 48) = sub_22B128240;
    *(v0 + 56) = v93;
    *(v0 + 16) = MEMORY[0x277D85DD0];
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_22B32556C;
    *(v0 + 40) = &block_descriptor_49_0;
    v94 = _Block_copy(v1 - 29);
    v95 = v91;

    [v95 performBlockAndWait_];
    _Block_release(v94);
    LOBYTE(v94) = swift_isEscapingClosureAtFileLocation();

    if (v94)
    {
      __break(1u);
    }

    else if (qword_28140A0C8 == -1)
    {
LABEL_58:
      v96 = *(v0 + 336);
      v97 = *(v0 + 312);
      v98 = *(v0 + 320);
      v99 = __swift_project_value_buffer(v97, qword_28140BD10);
      swift_beginAccess();
      (*(v98 + 16))(v96, v99, v97);

      v100 = sub_22B36050C();
      v101 = sub_22B360D2C();

      if (os_log_type_enabled(v100, v101))
      {
        v102 = *(v0 + 244);
        v132 = *(v0 + 488);
        v130 = *(v0 + 480);
        v103 = *(v0 + 320);
        v127 = *(v0 + 312);
        v128 = *(v0 + 336);
        v104 = *(v0 + 272);
        v105 = *(v0 + 280);
        v106 = swift_slowAlloc();
        v107 = swift_slowAlloc();
        v133[0] = v107;
        *v106 = 136315394;
        v108 = v105;
        v2 = v125;
        *(v106 + 4) = sub_22B1A7B20(v104, v108, v133);
        *(v106 + 12) = 1024;
        *(v106 + 14) = v102;
        _os_log_impl(&dword_22B116000, v100, v101, "[IntervalBlocks] Added to share for %s with hasExportedEnergy %{BOOL}d", v106, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v107);
        MEMORY[0x23188F650](v107, -1, -1);
        MEMORY[0x23188F650](v106, -1, -1);

        (*(v103 + 8))(v128, v127);

        v109 = v130;
        v110 = v132;
      }

      else
      {
        v112 = *(v0 + 480);
        v111 = *(v0 + 488);
        v113 = *(v0 + 336);
        v114 = *(v0 + 312);
        v115 = *(v0 + 320);

        (*(v115 + 8))(v113, v114);

        v109 = v112;
        v110 = v111;
      }

      sub_22B144D48(v109, v110);

      v116 = *(v0 + 8);
      v117 = *(v2 + 235);

      return v116(v117);
    }

    swift_once();
    goto LABEL_58;
  }

  if (!sub_22B36109C())
  {
    goto LABEL_56;
  }

LABEL_45:
  v82 = *(v0 + 288);
  v83 = *(v0 + 264);
  v84 = sub_22B207EFC();
  *(v0 + 496) = v84;
  v85 = swift_task_alloc();
  *(v0 + 504) = v85;
  v85[2] = v83;
  v85[3] = v6;
  v85[4] = v84;
  v85[5] = v82;
  v78 = swift_task_alloc();
  *(v0 + 512) = v78;
  *v78 = v0;
  v78[1] = sub_22B30B064;
  v86 = MEMORY[0x277D84F78];
  v77 = sub_22B1D820C;
  v80 = 0x800000022B36C2C0;
LABEL_46:
  v76 = v86 + 8;
  v79 = 0xD000000000000044;
  v81 = v85;
LABEL_47:

  return MEMORY[0x2822008A0](v78, 0, 0, v79, v80, v77, v81, v76);
}

uint64_t sub_22B30901C()
{
  *(*v1 + 424) = v0;

  if (v0)
  {
    v2 = sub_22B30B5F4;
  }

  else
  {

    v2 = sub_22B309138;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22B309138()
{
  v131 = v0;
  v2 = v0 + 232;
  v1 = *(v0 + 232);
  LOBYTE(v3) = *(v0 + 240);
  if (v1 >> 62)
  {
LABEL_52:
    v87 = v1;
    v4 = sub_22B36109C();
    v1 = v87;
  }

  else
  {
    v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = (v2 + 64);
  aBlock = (v2 - 216);
  v126 = (v2 - 168);
  if (v4)
  {
    sub_22B35506C(v1);
  }

  else
  {
  }

  v6 = v3 | *(v0 + 241);
  v123 = (v2 + 298);
  v117 = (v2 + 297);
  v7 = &unk_28140A000;
  v8 = v6;
  v9 = v6;
  v118 = (v2 + 64);
  while (1)
  {
    *(v5 + 234) = v9 & 1;
    *(v5 + 233) = v8 & 1;
    *(v5 + 232) = v6 & 1;
    if (__ROR8__(0x8F5C28F5C28F5C29 * *(*(v0 + 360) + 16) + 0x51EB851EB851EB8, 2) <= 0x28F5C28F5C28F5CuLL)
    {
      v12 = *(v0 + 248);
      *(v0 + 432) = v12;
      if (v12 >> 62)
      {
        v64 = v12;
        v65 = sub_22B36109C();
        v12 = v64;
        if (v65)
        {
LABEL_48:
          v83 = *(v0 + 288);
          v84 = *(v0 + 264);
          v85 = v12;
          v86 = sub_22B207EFC();
          *(v0 + 440) = v86;
          v80 = swift_task_alloc();
          *(v0 + 448) = v80;
          v80[2] = v84;
          v80[3] = v85;
          v80[4] = v86;
          v80[5] = v83;
          v72 = swift_task_alloc();
          *(v0 + 456) = v72;
          *v72 = v0;
          v72[1] = sub_22B309FF0;
          v73 = sub_22B30D520;
          v74 = 0x800000022B36C2C0;
          v75 = MEMORY[0x277D84F78] + 8;
          v76 = 0xD000000000000044;
          goto LABEL_44;
        }
      }

      else if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_48;
      }

      v13 = *(v0 + 376);
      v14 = *(v0 + 384);
      v15 = *(v0 + 264);
      v11 = swift_allocObject();
      *(v11 + 16) = v15;
      v16 = v15;
      sub_22B144D48(v13, v14);
      v17 = swift_allocObject();
      *(v17 + 16) = sub_22B30CEB0;
      *(v17 + 24) = v11;
      *(v0 + 96) = sub_22B128240;
      *(v0 + 104) = v17;
      *(v0 + 64) = MEMORY[0x277D85DD0];
      *(v0 + 72) = 1107296256;
      *(v0 + 80) = sub_22B32556C;
      *(v0 + 88) = &block_descriptor_62;
      v3 = _Block_copy(v126);

      [v16 performBlockAndWait_];
      _Block_release(v3);
      LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

      if (v3)
      {
        goto LABEL_50;
      }

      *(v2 + 16) = MEMORY[0x277D84F90];
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v18 = *(v0 + 344);
      v19 = *(v0 + 312);
      v20 = *(v0 + 320);
      v21 = __swift_project_value_buffer(v19, qword_28140BD10);
      swift_beginAccess();
      (*(v20 + 16))(v18, v21, v19);

      v22 = sub_22B36050C();
      v23 = sub_22B360D2C();

      if (os_log_type_enabled(v22, v23))
      {
        v119 = *v123;
        v122 = *(v0 + 344);
        v24 = *(v0 + 320);
        v120 = *(v0 + 392);
        v121 = *(v0 + 312);
        v25 = v2;
        v26 = *(v0 + 272);
        v27 = *(v0 + 280);
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v130[0] = v29;
        *v28 = 136315394;
        v30 = v27;
        v2 = v25;
        *(v28 + 4) = sub_22B1A7B20(v26, v30, v130);
        *(v28 + 12) = 1024;
        *(v28 + 14) = v119;
        _os_log_impl(&dword_22B116000, v22, v23, "[IntervalBlocks] Added to share for %s with hasExportedEnergy %{BOOL}d", v28, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v29);
        MEMORY[0x23188F650](v29, -1, -1);
        v31 = v28;
        v5 = v118;
        MEMORY[0x23188F650](v31, -1, -1);

        v1 = (*(v24 + 8))(v122, v121);
        v32 = v123;
      }

      else
      {
        v33 = *(v0 + 344);
        v34 = *(v0 + 312);
        v35 = *(v0 + 320);

        v1 = (*(v35 + 8))(v33, v34);
        v32 = v117;
      }

      v8 = *v32;
      v10 = sub_22B30CEB0;
      v7 = &unk_28140A000;
    }

    else
    {

      v10 = *(v0 + 376);
      v11 = *(v0 + 384);
    }

    v3 = *(v0 + 400);
    if (v3 == *(v0 + 368))
    {
      break;
    }

    v36 = *(v5 + 232);
    *(v0 + 243) = *(v5 + 234);
    *(v0 + 242) = v8 & 1;
    *(v0 + 241) = v36;
    *(v0 + 376) = v10;
    *(v0 + 384) = v11;
    v37 = *(v0 + 256);
    if ((v37 & 0xC000000000000001) != 0)
    {
      v1 = MEMORY[0x23188EAC0](v3);
    }

    else
    {
      if (v3 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_51;
      }

      v1 = *(v37 + 8 * v3 + 32);
    }

    v38 = v1;
    *(v0 + 392) = v1;
    *(v0 + 400) = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    if (sub_22B360F5C() == 0x6C61767265746E49 && v39 == 0xED00006B636F6C42)
    {

LABEL_43:
      v78 = *(v0 + 360);
      v128 = *(v0 + 272);
      v79 = *(v0 + 264);
      v80 = swift_task_alloc();
      *(v0 + 408) = v80;
      v81 = *v5;
      v80[2] = v38;
      *(v80 + 3) = v81;
      *(v80 + 5) = v128;
      v80[7] = v79;
      v80[8] = v78;
      v82 = swift_task_alloc();
      *(v0 + 416) = v82;
      v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD58, &qword_22B366F10);
      *v82 = v0;
      v82[1] = sub_22B30901C;
      v73 = sub_22B30CECC;
      v76 = 0xD000000000000048;
      v74 = 0x800000022B36DEF0;
      v72 = v2;
LABEL_44:
      v77 = v80;
LABEL_45:

      return MEMORY[0x2822008A0](v72, 0, 0, v76, v74, v73, v77, v75);
    }

    v40 = sub_22B36134C();

    if (v40)
    {
      goto LABEL_43;
    }

    if (v7[25] != -1)
    {
      swift_once();
    }

    v41 = *(v0 + 352);
    v42 = *(v0 + 312);
    v43 = *(v0 + 320);
    v44 = __swift_project_value_buffer(v42, qword_28140BD10);
    swift_beginAccess();
    (*(v43 + 16))(v41, v44, v42);
    v45 = sub_22B36050C();
    v46 = sub_22B360D1C();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_22B116000, v45, v46, "[Dropbox Bridge] Record is not of type IntervalReading!", v47, 2u);
      MEMORY[0x23188F650](v47, -1, -1);
    }

    v48 = *(v0 + 352);
    v49 = *(v0 + 312);
    v50 = *(v0 + 320);

    (*(v50 + 8))(v48, v49);
    sub_22B134CDC();
    v51 = swift_allocError();
    *v52 = 20;
    swift_willThrow();
    if (v7[25] != -1)
    {
      swift_once();
    }

    v54 = *(v0 + 320);
    v53 = *(v0 + 328);
    v55 = *(v0 + 312);
    v56 = __swift_project_value_buffer(v55, qword_28140BD10);
    swift_beginAccess();
    (*(v54 + 16))(v53, v56, v55);
    v57 = v51;
    v58 = sub_22B36050C();
    v59 = sub_22B360D1C();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      *v60 = 138412290;
      v62 = v51;
      v63 = _swift_stdlib_bridgeErrorToNSError();
      *(v60 + 4) = v63;
      *v61 = v63;
      _os_log_impl(&dword_22B116000, v58, v59, "[Dropbox Bridge] Skiping record. Failed handle IntervalReading payload %@", v60, 0xCu);
      sub_22B123284(v61, &unk_27D8BAA90, &unk_22B362BC0);
      MEMORY[0x23188F650](v61, -1, -1);
      MEMORY[0x23188F650](v60, -1, -1);
    }

    else
    {
    }

    (*(*(v0 + 320) + 8))(*(v0 + 328), *(v0 + 312));
    v9 = *(v0 + 243);
    v8 = *(v0 + 242);
    v6 = *(v0 + 241);
  }

  v66 = *(v0 + 248);
  v67 = *(v5 + 232);
  *(v0 + 244) = v8 & 1;
  *(v5 + 235) = v67;
  *(v0 + 480) = v10;
  *(v0 + 488) = v11;
  *(v0 + 472) = v66;
  if (v66 >> 62)
  {
    if (sub_22B36109C())
    {
      goto LABEL_41;
    }
  }

  else if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_41:
    v68 = *(v0 + 288);
    v69 = *(v0 + 264);
    v70 = sub_22B207EFC();
    *(v0 + 496) = v70;
    v71 = swift_task_alloc();
    *(v0 + 504) = v71;
    v71[2] = v69;
    v71[3] = v66;
    v71[4] = v70;
    v71[5] = v68;
    v72 = swift_task_alloc();
    *(v0 + 512) = v72;
    *v72 = v0;
    v72[1] = sub_22B30B064;
    v73 = sub_22B1D820C;
    v74 = 0x800000022B36C2C0;
    v75 = MEMORY[0x277D84F78] + 8;
    v76 = 0xD000000000000044;
    v77 = v71;
    goto LABEL_45;
  }

  v88 = *(v0 + 264);
  v89 = swift_allocObject();
  *(v89 + 16) = v88;
  v90 = swift_allocObject();
  *(v90 + 16) = sub_22B30D52C;
  *(v90 + 24) = v89;
  *(v0 + 48) = sub_22B128240;
  *(v0 + 56) = v90;
  *(v0 + 16) = MEMORY[0x277D85DD0];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_22B32556C;
  *(v0 + 40) = &block_descriptor_49_0;
  v91 = _Block_copy(aBlock);
  v92 = v88;

  [v92 performBlockAndWait_];
  _Block_release(v91);
  LOBYTE(v91) = swift_isEscapingClosureAtFileLocation();

  if (v91)
  {
    __break(1u);
    goto LABEL_63;
  }

  if (v7[25] != -1)
  {
LABEL_63:
    swift_once();
  }

  v93 = *(v0 + 336);
  v94 = *(v0 + 312);
  v95 = *(v0 + 320);
  v96 = __swift_project_value_buffer(v94, qword_28140BD10);
  swift_beginAccess();
  (*(v95 + 16))(v93, v96, v94);

  v97 = sub_22B36050C();
  v98 = sub_22B360D2C();

  if (os_log_type_enabled(v97, v98))
  {
    v99 = *(v0 + 244);
    v129 = *(v0 + 488);
    v127 = *(v0 + 480);
    v100 = *(v0 + 320);
    v124 = *(v0 + 312);
    v125 = *(v0 + 336);
    v101 = *(v0 + 272);
    v102 = *(v0 + 280);
    v103 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    v130[0] = v104;
    *v103 = 136315394;
    v105 = v102;
    v5 = v118;
    *(v103 + 4) = sub_22B1A7B20(v101, v105, v130);
    *(v103 + 12) = 1024;
    *(v103 + 14) = v99;
    _os_log_impl(&dword_22B116000, v97, v98, "[IntervalBlocks] Added to share for %s with hasExportedEnergy %{BOOL}d", v103, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v104);
    MEMORY[0x23188F650](v104, -1, -1);
    MEMORY[0x23188F650](v103, -1, -1);

    (*(v100 + 8))(v125, v124);

    v106 = v127;
    v107 = v129;
  }

  else
  {
    v109 = *(v0 + 480);
    v108 = *(v0 + 488);
    v110 = *(v0 + 336);
    v111 = *(v0 + 312);
    v112 = *(v0 + 320);

    (*(v112 + 8))(v110, v111);

    v106 = v109;
    v107 = v108;
  }

  sub_22B144D48(v106, v107);

  v113 = *(v0 + 8);
  v114 = *(v5 + 235);

  return v113(v114);
}

uint64_t sub_22B309FF0()
{
  *(*v1 + 464) = v0;

  if (v0)
  {
    v2 = sub_22B30AFA8;
  }

  else
  {
    v2 = sub_22B30A140;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22B30A140()
{
  v116 = v0;
  v1 = (v0 + 64);

  while (2)
  {
    v3 = *(v0 + 376);
    v2 = *(v0 + 384);
    v4 = *(v0 + 264);
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v6 = v4;
    sub_22B144D48(v3, v2);
    v7 = swift_allocObject();
    *(v7 + 16) = sub_22B30CEB0;
    *(v7 + 24) = v5;
    *(v0 + 96) = sub_22B128240;
    *(v0 + 104) = v7;
    *(v0 + 64) = MEMORY[0x277D85DD0];
    *(v0 + 72) = 1107296256;
    *(v0 + 80) = sub_22B32556C;
    *(v0 + 88) = &block_descriptor_62;
    v8 = _Block_copy(v1);

    [v6 performBlockAndWait_];
    _Block_release(v8);
    LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

    if (v8)
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    *(v0 + 248) = MEMORY[0x277D84F90];
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v9 = *(v0 + 344);
    v11 = *(v0 + 312);
    v10 = *(v0 + 320);
    v12 = __swift_project_value_buffer(v11, qword_28140BD10);
    swift_beginAccess();
    (*(v10 + 16))(v9, v12, v11);

    v13 = sub_22B36050C();
    v14 = sub_22B360D2C();

    if (os_log_type_enabled(v13, v14))
    {
      v106 = *(v0 + 530);
      v109 = *(v0 + 344);
      v15 = *(v0 + 320);
      v107 = *(v0 + 392);
      v108 = *(v0 + 312);
      v17 = *(v0 + 272);
      v16 = *(v0 + 280);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v115[0] = v19;
      *v18 = 136315394;
      *(v18 + 4) = sub_22B1A7B20(v17, v16, v115);
      *(v18 + 12) = 1024;
      *(v18 + 14) = v106;
      _os_log_impl(&dword_22B116000, v13, v14, "[IntervalBlocks] Added to share for %s with hasExportedEnergy %{BOOL}d", v18, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x23188F650](v19, -1, -1);
      MEMORY[0x23188F650](v18, -1, -1);

      (*(v15 + 8))(v109, v108);
      v20 = (v0 + 530);
    }

    else
    {
      v21 = *(v0 + 344);
      v22 = *(v0 + 312);
      v23 = *(v0 + 320);

      (*(v23 + 8))(v21, v22);
      v20 = (v0 + 529);
    }

    v24 = *v20;
    v25 = *(v0 + 400);
    v26 = sub_22B30CEB0;
    if (v25 != *(v0 + 368))
    {
      v26 = sub_22B30CEB0;
      while (1)
      {
        v27 = *(v0 + 528);
        *(v0 + 243) = *(v0 + 530);
        *(v0 + 242) = v24 & 1;
        *(v0 + 241) = v27;
        *(v0 + 376) = v26;
        *(v0 + 384) = v5;
        v28 = *(v0 + 256);
        if ((v28 & 0xC000000000000001) != 0)
        {
          v29 = MEMORY[0x23188EAC0](v25);
          v4 = 0x6C61767265746E49;
        }

        else
        {
          v4 = 0x6C61767265746E49;
          if (v25 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_46;
          }

          v29 = *(v28 + 8 * v25 + 32);
        }

        *(v0 + 392) = v29;
        *(v0 + 400) = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          __break(1u);
LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        if (sub_22B360F5C() == 0x6C61767265746E49 && v30 == 0xED00006B636F6C42)
        {

LABEL_41:
          v76 = *(v0 + 360);
          v113 = *(v0 + 272);
          v77 = *(v0 + 264);
          v78 = swift_task_alloc();
          *(v0 + 408) = v78;
          v79 = *(v0 + 296);
          *(v78 + 16) = v29;
          *(v78 + 24) = v79;
          *(v78 + 40) = v113;
          *(v78 + 56) = v77;
          *(v78 + 64) = v76;
          v80 = swift_task_alloc();
          *(v0 + 416) = v80;
          v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD58, &qword_22B366F10);
          *v80 = v0;
          v80[1] = sub_22B30901C;
          v66 = sub_22B30CECC;
          v65 = (v0 + 232);
          v69 = 0xD000000000000048;
          v67 = 0x800000022B36DEF0;
          v70 = v78;
          goto LABEL_42;
        }

        v32 = sub_22B36134C();

        if (v32)
        {
          goto LABEL_41;
        }

        if (qword_28140A0C8 != -1)
        {
          swift_once();
        }

        v33 = *(v0 + 352);
        v34 = *(v0 + 312);
        v35 = *(v0 + 320);
        v36 = __swift_project_value_buffer(v34, qword_28140BD10);
        swift_beginAccess();
        (*(v35 + 16))(v33, v36, v34);
        v37 = sub_22B36050C();
        v38 = sub_22B360D1C();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          *v39 = 0;
          _os_log_impl(&dword_22B116000, v37, v38, "[Dropbox Bridge] Record is not of type IntervalReading!", v39, 2u);
          MEMORY[0x23188F650](v39, -1, -1);
        }

        v40 = *(v0 + 352);
        v42 = *(v0 + 312);
        v41 = *(v0 + 320);

        (*(v41 + 8))(v40, v42);
        sub_22B134CDC();
        v43 = swift_allocError();
        *v44 = 20;
        swift_willThrow();
        if (qword_28140A0C8 != -1)
        {
          swift_once();
        }

        v46 = *(v0 + 320);
        v45 = *(v0 + 328);
        v47 = *(v0 + 312);
        v48 = __swift_project_value_buffer(v47, qword_28140BD10);
        swift_beginAccess();
        (*(v46 + 16))(v45, v48, v47);
        v49 = v43;
        v50 = sub_22B36050C();
        v51 = sub_22B360D1C();

        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          *v52 = 138412290;
          v54 = v43;
          v55 = _swift_stdlib_bridgeErrorToNSError();
          *(v52 + 4) = v55;
          *v53 = v55;
          _os_log_impl(&dword_22B116000, v50, v51, "[Dropbox Bridge] Skiping record. Failed handle IntervalReading payload %@", v52, 0xCu);
          sub_22B123284(v53, &unk_27D8BAA90, &unk_22B362BC0);
          MEMORY[0x23188F650](v53, -1, -1);
          MEMORY[0x23188F650](v52, -1, -1);
        }

        else
        {
        }

        (*(*(v0 + 320) + 8))(*(v0 + 328), *(v0 + 312));
        v24 = *(v0 + 242);
        v56 = *(v0 + 241);
        *(v0 + 529) = *(v0 + 242);
        *(v0 + 528) = v56;
        if (__ROR8__(0x8F5C28F5C28F5C29 * *(*(v0 + 360) + 16) + 0x51EB851EB851EB8, 2) < 0x28F5C28F5C28F5DuLL)
        {
          break;
        }

        v26 = *(v0 + 376);
        v5 = *(v0 + 384);
        v25 = *(v0 + 400);
        if (v25 == *(v0 + 368))
        {
          goto LABEL_37;
        }
      }

      v57 = *(v0 + 248);
      *(v0 + 432) = v57;
      if (v57 >> 62)
      {
        v58 = v57;
        v59 = sub_22B36109C();
        v57 = v58;
        v1 = (v0 + 64);
        if (!v59)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v1 = (v0 + 64);
        if (!*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_34:

          continue;
        }
      }

      v60 = *(v0 + 288);
      v61 = *(v0 + 264);
      v62 = v57;
      v63 = sub_22B207EFC();
      *(v0 + 440) = v63;
      v64 = swift_task_alloc();
      *(v0 + 448) = v64;
      v64[2] = v61;
      v64[3] = v62;
      v64[4] = v63;
      v64[5] = v60;
      v65 = swift_task_alloc();
      *(v0 + 456) = v65;
      *v65 = v0;
      v65[1] = sub_22B309FF0;
      v66 = sub_22B30D520;
      v67 = 0x800000022B36C2C0;
      v68 = MEMORY[0x277D84F78] + 8;
      v69 = 0xD000000000000044;
      v70 = v64;
      goto LABEL_42;
    }

    break;
  }

LABEL_37:
  v4 = *(v0 + 248);
  v71 = *(v0 + 528);
  *(v0 + 244) = v24;
  *(v0 + 531) = v71;
  *(v0 + 480) = v26;
  *(v0 + 488) = v5;
  *(v0 + 472) = v4;
  if (v4 >> 62)
  {
LABEL_48:
    if (sub_22B36109C())
    {
      goto LABEL_39;
    }

    goto LABEL_49;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_39:
    v72 = *(v0 + 288);
    v73 = *(v0 + 264);
    v74 = sub_22B207EFC();
    *(v0 + 496) = v74;
    v75 = swift_task_alloc();
    *(v0 + 504) = v75;
    v75[2] = v73;
    v75[3] = v4;
    v75[4] = v74;
    v75[5] = v72;
    v65 = swift_task_alloc();
    *(v0 + 512) = v65;
    *v65 = v0;
    v65[1] = sub_22B30B064;
    v66 = sub_22B1D820C;
    v67 = 0x800000022B36C2C0;
    v68 = MEMORY[0x277D84F78] + 8;
    v69 = 0xD000000000000044;
    v70 = v75;
LABEL_42:

    return MEMORY[0x2822008A0](v65, 0, 0, v69, v67, v66, v70, v68);
  }

LABEL_49:

  v81 = *(v0 + 264);
  v82 = swift_allocObject();
  *(v82 + 16) = v81;
  v83 = swift_allocObject();
  *(v83 + 16) = sub_22B30D52C;
  *(v83 + 24) = v82;
  *(v0 + 48) = sub_22B128240;
  *(v0 + 56) = v83;
  *(v0 + 16) = MEMORY[0x277D85DD0];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_22B32556C;
  *(v0 + 40) = &block_descriptor_49_0;
  v84 = _Block_copy((v0 + 16));
  v85 = v81;

  [v85 performBlockAndWait_];
  _Block_release(v84);
  LOBYTE(v84) = swift_isEscapingClosureAtFileLocation();

  if (v84)
  {
    __break(1u);
    goto LABEL_58;
  }

  if (qword_28140A0C8 != -1)
  {
LABEL_58:
    swift_once();
  }

  v86 = *(v0 + 336);
  v87 = *(v0 + 312);
  v88 = *(v0 + 320);
  v89 = __swift_project_value_buffer(v87, qword_28140BD10);
  swift_beginAccess();
  (*(v88 + 16))(v86, v89, v87);

  v90 = sub_22B36050C();
  v91 = sub_22B360D2C();

  if (os_log_type_enabled(v90, v91))
  {
    v92 = *(v0 + 244);
    v114 = *(v0 + 488);
    v112 = *(v0 + 480);
    v111 = *(v0 + 336);
    v93 = *(v0 + 320);
    v110 = *(v0 + 312);
    v94 = *(v0 + 272);
    v95 = *(v0 + 280);
    v96 = swift_slowAlloc();
    v97 = swift_slowAlloc();
    v115[0] = v97;
    *v96 = 136315394;
    *(v96 + 4) = sub_22B1A7B20(v94, v95, v115);
    *(v96 + 12) = 1024;
    *(v96 + 14) = v92;
    _os_log_impl(&dword_22B116000, v90, v91, "[IntervalBlocks] Added to share for %s with hasExportedEnergy %{BOOL}d", v96, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v97);
    MEMORY[0x23188F650](v97, -1, -1);
    MEMORY[0x23188F650](v96, -1, -1);

    (*(v93 + 8))(v111, v110);

    sub_22B144D48(v112, v114);
  }

  else
  {
    v99 = *(v0 + 480);
    v98 = *(v0 + 488);
    v100 = *(v0 + 336);
    v101 = *(v0 + 312);
    v102 = *(v0 + 320);

    (*(v102 + 8))(v100, v101);

    sub_22B144D48(v99, v98);
  }

  v103 = *(v0 + 8);
  v104 = *(v0 + 531);

  return v103(v104);
}

uint64_t sub_22B30AFA8()
{
  v1 = *(v0 + 392);

  sub_22B144D48(*(v0 + 376), *(v0 + 384));

  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t sub_22B30B064()
{
  *(*v1 + 520) = v0;

  if (v0)
  {
    v2 = sub_22B30B530;
  }

  else
  {

    v2 = sub_22B30B18C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22B30B18C()
{
  v33 = v0;

  v1 = *(v0 + 264);
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_22B30D52C;
  *(v3 + 24) = v2;
  *(v0 + 48) = sub_22B128240;
  *(v0 + 56) = v3;
  *(v0 + 16) = MEMORY[0x277D85DD0];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_22B32556C;
  *(v0 + 40) = &block_descriptor_49_0;
  v4 = _Block_copy((v0 + 16));
  v5 = v1;

  [v5 performBlockAndWait_];
  _Block_release(v4);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
  }

  else if (qword_28140A0C8 == -1)
  {
    goto LABEL_3;
  }

  swift_once();
LABEL_3:
  v6 = *(v0 + 336);
  v7 = *(v0 + 312);
  v8 = *(v0 + 320);
  v9 = __swift_project_value_buffer(v7, qword_28140BD10);
  swift_beginAccess();
  (*(v8 + 16))(v6, v9, v7);

  v10 = sub_22B36050C();
  v11 = sub_22B360D2C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = *(v0 + 244);
    v30 = *(v0 + 480);
    v31 = *(v0 + 488);
    v29 = *(v0 + 336);
    v13 = *(v0 + 320);
    v28 = *(v0 + 312);
    v14 = *(v0 + 272);
    v15 = *(v0 + 280);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v32 = v17;
    *v16 = 136315394;
    *(v16 + 4) = sub_22B1A7B20(v14, v15, &v32);
    *(v16 + 12) = 1024;
    *(v16 + 14) = v12;
    _os_log_impl(&dword_22B116000, v10, v11, "[IntervalBlocks] Added to share for %s with hasExportedEnergy %{BOOL}d", v16, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x23188F650](v17, -1, -1);
    MEMORY[0x23188F650](v16, -1, -1);

    (*(v13 + 8))(v29, v28);

    v18 = v30;
    v19 = v31;
  }

  else
  {
    v21 = *(v0 + 480);
    v20 = *(v0 + 488);
    v22 = *(v0 + 336);
    v23 = *(v0 + 312);
    v24 = *(v0 + 320);

    (*(v24 + 8))(v22, v23);

    v18 = v21;
    v19 = v20;
  }

  sub_22B144D48(v18, v19);

  v25 = *(v0 + 8);
  v26 = *(v0 + 531);

  return v25(v26);
}

uint64_t sub_22B30B530()
{
  v1 = v0[62];

  sub_22B144D48(v0[60], v0[61]);

  v2 = v0[1];

  return v2(0);
}

uint64_t sub_22B30B5F4()
{
  v123 = v0;
  v1 = v0 + 296;
  aBlock = (v0 + 16);

  v2 = *(v0 + 424);
  v3 = &unk_28140A000;
  v120 = 138412290;
  while (1)
  {
    if (v3[25] != -1)
    {
      swift_once();
    }

    v9 = *(v0 + 320);
    v8 = *(v0 + 328);
    v10 = *(v0 + 312);
    v11 = __swift_project_value_buffer(v10, qword_28140BD10);
    swift_beginAccess();
    (*(v9 + 16))(v8, v11, v10);
    v12 = v2;
    v13 = sub_22B36050C();
    v14 = sub_22B360D1C();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      v17 = v2;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v18;
      *v16 = v18;
      _os_log_impl(&dword_22B116000, v13, v14, "[Dropbox Bridge] Skiping record. Failed handle IntervalReading payload %@", v15, 0xCu);
      sub_22B123284(v16, &unk_27D8BAA90, &unk_22B362BC0);
      MEMORY[0x23188F650](v16, -1, -1);
      MEMORY[0x23188F650](v15, -1, -1);
    }

    else
    {
    }

    (*(*(v0 + 320) + 8))(*(v0 + 328), *(v0 + 312));
    v19 = *(v0 + 242);
    v20 = *(v0 + 241);
    *(v1 + 233) = *(v0 + 242);
    *(v1 + 232) = v20;
    if (__ROR8__(0x8F5C28F5C28F5C29 * *(*(v0 + 360) + 16) + 0x51EB851EB851EB8, 2) < 0x28F5C28F5C28F5DuLL)
    {
      v23 = *(v0 + 248);
      *(v0 + 432) = v23;
      if (v23 >> 62)
      {
        v62 = v23;
        v63 = sub_22B36109C();
        v23 = v62;
        if (v63)
        {
LABEL_43:
          v80 = *(v0 + 288);
          v81 = *(v0 + 264);
          v82 = v23;
          v83 = sub_22B207EFC();
          *(v0 + 440) = v83;
          v77 = swift_task_alloc();
          *(v0 + 448) = v77;
          v77[2] = v81;
          v77[3] = v82;
          v77[4] = v83;
          v77[5] = v80;
          v69 = swift_task_alloc();
          *(v0 + 456) = v69;
          *v69 = v0;
          v69[1] = sub_22B309FF0;
          v70 = sub_22B30D520;
          v71 = 0x800000022B36C2C0;
          v72 = MEMORY[0x277D84F78] + 8;
          v73 = 0xD000000000000044;
LABEL_39:
          v74 = v77;
          goto LABEL_40;
        }
      }

      else if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_43;
      }

      v24 = *(v0 + 376);
      v25 = *(v0 + 384);
      v26 = *(v0 + 264);
      v22 = swift_allocObject();
      *(v22 + 16) = v26;
      v27 = v26;
      sub_22B144D48(v24, v25);
      v28 = swift_allocObject();
      *(v28 + 16) = sub_22B30CEB0;
      *(v28 + 24) = v22;
      *(v0 + 96) = sub_22B128240;
      *(v0 + 104) = v28;
      *(v0 + 64) = MEMORY[0x277D85DD0];
      *(v0 + 72) = 1107296256;
      *(v0 + 80) = sub_22B32556C;
      *(v0 + 88) = &block_descriptor_62;
      v29 = _Block_copy((v0 + 64));

      [v27 performBlockAndWait_];
      _Block_release(v29);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if (isEscapingClosureAtFileLocation)
      {
        goto LABEL_45;
      }

      *(v0 + 248) = MEMORY[0x277D84F90];
      if (v3[25] != -1)
      {
        swift_once();
      }

      v31 = *(v0 + 344);
      v32 = *(v0 + 312);
      v33 = *(v0 + 320);
      v34 = __swift_project_value_buffer(v32, qword_28140BD10);
      swift_beginAccess();
      (*(v33 + 16))(v31, v34, v32);

      v35 = sub_22B36050C();
      v36 = sub_22B360D2C();

      if (os_log_type_enabled(v35, v36))
      {
        v112 = *(v0 + 530);
        v116 = *(v0 + 344);
        v37 = *(v0 + 320);
        v113 = *(v0 + 392);
        v114 = *(v0 + 312);
        v38 = v1;
        v40 = *(v0 + 272);
        v39 = *(v0 + 280);
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v122[0] = v42;
        *v41 = 136315394;
        v43 = v40;
        v1 = v38;
        *(v41 + 4) = sub_22B1A7B20(v43, v39, v122);
        *(v41 + 12) = 1024;
        *(v41 + 14) = v112;
        _os_log_impl(&dword_22B116000, v35, v36, "[IntervalBlocks] Added to share for %s with hasExportedEnergy %{BOOL}d", v41, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v42);
        v44 = v42;
        v3 = &unk_28140A000;
        MEMORY[0x23188F650](v44, -1, -1);
        MEMORY[0x23188F650](v41, -1, -1);

        (*(v37 + 8))(v116, v114);
        v45 = (v0 + 530);
      }

      else
      {
        v46 = *(v0 + 344);
        v47 = *(v0 + 312);
        v48 = *(v0 + 320);

        (*(v48 + 8))(v46, v47);
        v45 = (v0 + 529);
      }

      v19 = *v45;
      v21 = sub_22B30CEB0;
    }

    else
    {

      v21 = *(v0 + 376);
      v22 = *(v0 + 384);
    }

    isEscapingClosureAtFileLocation = *(v0 + 400);
    if (isEscapingClosureAtFileLocation == *(v0 + 368))
    {
      break;
    }

    v49 = *(v1 + 232);
    *(v0 + 243) = *(v1 + 234);
    *(v0 + 242) = v19;
    *(v0 + 241) = v49;
    *(v0 + 376) = v21;
    *(v0 + 384) = v22;
    v50 = *(v0 + 256);
    if ((v50 & 0xC000000000000001) != 0)
    {
      v51 = MEMORY[0x23188EAC0](isEscapingClosureAtFileLocation);
    }

    else
    {
      if (isEscapingClosureAtFileLocation >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_46;
      }

      v51 = *(v50 + 8 * isEscapingClosureAtFileLocation + 32);
    }

    v52 = v51;
    *(v0 + 392) = v51;
    *(v0 + 400) = isEscapingClosureAtFileLocation + 1;
    if (__OFADD__(isEscapingClosureAtFileLocation, 1))
    {
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      if (!sub_22B36109C())
      {
        goto LABEL_48;
      }

LABEL_36:
      v65 = *(v0 + 288);
      v66 = *(v0 + 264);
      v67 = sub_22B207EFC();
      *(v0 + 496) = v67;
      v68 = swift_task_alloc();
      *(v0 + 504) = v68;
      v68[2] = v66;
      v68[3] = isEscapingClosureAtFileLocation;
      v68[4] = v67;
      v68[5] = v65;
      v69 = swift_task_alloc();
      *(v0 + 512) = v69;
      *v69 = v0;
      v69[1] = sub_22B30B064;
      v70 = sub_22B1D820C;
      v71 = 0x800000022B36C2C0;
      v72 = MEMORY[0x277D84F78] + 8;
      v73 = 0xD000000000000044;
      v74 = v68;
LABEL_40:

      return MEMORY[0x2822008A0](v69, 0, 0, v73, v71, v70, v74, v72);
    }

    if (sub_22B360F5C() == 0x6C61767265746E49 && v53 == 0xED00006B636F6C42)
    {

LABEL_38:
      v75 = *(v0 + 360);
      v121 = *(v0 + 272);
      v76 = *(v0 + 264);
      v77 = swift_task_alloc();
      *(v0 + 408) = v77;
      v78 = *v1;
      v77[2] = v52;
      *(v77 + 3) = v78;
      *(v77 + 5) = v121;
      v77[7] = v76;
      v77[8] = v75;
      v79 = swift_task_alloc();
      *(v0 + 416) = v79;
      v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BAD58, &qword_22B366F10);
      *v79 = v0;
      v79[1] = sub_22B30901C;
      v70 = sub_22B30CECC;
      v69 = (v0 + 232);
      v73 = 0xD000000000000048;
      v71 = 0x800000022B36DEF0;
      goto LABEL_39;
    }

    v54 = sub_22B36134C();

    if (v54)
    {
      goto LABEL_38;
    }

    if (v3[25] != -1)
    {
      swift_once();
    }

    v55 = *(v0 + 352);
    v56 = *(v0 + 312);
    v57 = *(v0 + 320);
    v58 = __swift_project_value_buffer(v56, qword_28140BD10);
    swift_beginAccess();
    (*(v57 + 16))(v55, v58, v56);
    v59 = sub_22B36050C();
    v60 = sub_22B360D1C();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_22B116000, v59, v60, "[Dropbox Bridge] Record is not of type IntervalReading!", v61, 2u);
      MEMORY[0x23188F650](v61, -1, -1);
    }

    v4 = *(v0 + 352);
    v5 = *(v0 + 312);
    v6 = *(v0 + 320);

    (*(v6 + 8))(v4, v5);
    sub_22B134CDC();
    v2 = swift_allocError();
    *v7 = 20;
    swift_willThrow();
  }

  isEscapingClosureAtFileLocation = *(v0 + 248);
  v64 = *(v1 + 232);
  *(v0 + 244) = v19;
  *(v1 + 235) = v64;
  *(v0 + 480) = v21;
  *(v0 + 488) = v22;
  *(v0 + 472) = isEscapingClosureAtFileLocation;
  if (isEscapingClosureAtFileLocation >> 62)
  {
    goto LABEL_47;
  }

  if (*((isEscapingClosureAtFileLocation & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_36;
  }

LABEL_48:

  v84 = *(v0 + 264);
  v85 = swift_allocObject();
  *(v85 + 16) = v84;
  v86 = swift_allocObject();
  *(v86 + 16) = sub_22B30D52C;
  *(v86 + 24) = v85;
  *(v0 + 48) = sub_22B128240;
  *(v0 + 56) = v86;
  *(v0 + 16) = MEMORY[0x277D85DD0];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_22B32556C;
  *(v0 + 40) = &block_descriptor_49_0;
  v87 = _Block_copy(aBlock);
  v88 = v84;

  [v88 performBlockAndWait_];
  _Block_release(v87);
  LOBYTE(v87) = swift_isEscapingClosureAtFileLocation();

  if (v87)
  {
    __break(1u);
    goto LABEL_57;
  }

  v120 = v1;
  if (v3[25] != -1)
  {
LABEL_57:
    swift_once();
  }

  v89 = *(v0 + 336);
  v90 = *(v0 + 312);
  v91 = *(v0 + 320);
  v92 = __swift_project_value_buffer(v90, qword_28140BD10);
  swift_beginAccess();
  (*(v91 + 16))(v89, v92, v90);

  v93 = sub_22B36050C();
  v94 = sub_22B360D2C();

  if (os_log_type_enabled(v93, v94))
  {
    v95 = *(v0 + 244);
    v118 = *(v0 + 480);
    v119 = *(v0 + 488);
    v117 = *(v0 + 336);
    v96 = *(v0 + 320);
    v115 = *(v0 + 312);
    v97 = *(v0 + 272);
    v98 = *(v0 + 280);
    v99 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    v122[0] = v100;
    *v99 = 136315394;
    *(v99 + 4) = sub_22B1A7B20(v97, v98, v122);
    *(v99 + 12) = 1024;
    *(v99 + 14) = v95;
    _os_log_impl(&dword_22B116000, v93, v94, "[IntervalBlocks] Added to share for %s with hasExportedEnergy %{BOOL}d", v99, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v100);
    MEMORY[0x23188F650](v100, -1, -1);
    MEMORY[0x23188F650](v99, -1, -1);

    (*(v96 + 8))(v117, v115);

    v101 = v118;
    v102 = v119;
  }

  else
  {
    v104 = *(v0 + 480);
    v103 = *(v0 + 488);
    v105 = *(v0 + 336);
    v106 = *(v0 + 312);
    v107 = *(v0 + 320);

    (*(v107 + 8))(v105, v106);

    v101 = v104;
    v102 = v103;
  }

  sub_22B144D48(v101, v102);

  v108 = *(v0 + 8);
  v109 = *(v120 + 235);

  return v108(v109);
}