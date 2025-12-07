uint64_t sub_23C415AE0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4538, &unk_23C438230);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23C415B9C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4538, &unk_23C438230);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23C415C88()
{
  swift_unknownObjectRelease();
  if (*(v0 + 64))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 40));
  }

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_23C415CF0()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23C415D3C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23C415D74()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4808, &qword_23C438FA0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F45C0, &qword_23C438CB0) - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(v6 + 64);
  (*(v2 + 8))(v0 + v4, v1);
  v10 = sub_23C436F2C();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v8, 1, v10))
  {
    (*(v11 + 8))(v0 + v8, v10);
  }

  return MEMORY[0x2821FE8E8](v0, ((v9 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | v7 | 7);
}

uint64_t sub_23C415F48()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23C415F80()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23C415FE4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void *__Block_byref_object_copy_(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_23C416568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v19 + 72));
  objc_destroyWeak((v20 - 72));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_23C416960(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_23C43701C();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);

  return sub_23C43700C();
}

uint64_t sub_23C4169F0(uint64_t a1, id *a2)
{
  result = sub_23C43712C();
  *a2 = 0;
  return result;
}

uint64_t sub_23C416A68(uint64_t a1, id *a2)
{
  v3 = sub_23C43713C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_23C416AE8@<X0>(uint64_t *a1@<X8>)
{
  sub_23C43714C();
  v2 = sub_23C43711C();

  *a1 = v2;
  return result;
}

uint64_t sub_23C416B2C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_23C43711C();

  *a2 = v3;
  return result;
}

uint64_t sub_23C416B74@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23C43714C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_23C416BA0(uint64_t a1)
{
  v2 = sub_23C416CA0(&qword_27E1F44C8, &unk_23C438020);
  v3 = sub_23C416CA0(&qword_27E1F44D0, &unk_23C437FC8);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_23C416CA0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Dataclass(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23C416CE4()
{
  v0 = sub_23C43714C();
  v1 = MEMORY[0x23EED0F70](v0);

  return v1;
}

uint64_t sub_23C416D20(uint64_t a1)
{
  sub_23C43714C();
  sub_23C4371AC();
}

uint64_t sub_23C416D74(uint64_t a1)
{
  sub_23C43714C();
  sub_23C43757C();
  sub_23C4371AC();
  v1 = sub_23C43759C();

  return v1;
}

uint64_t sub_23C416DE8(void *a1, uint64_t *a2)
{
  v2 = sub_23C43714C();
  v4 = v3;
  if (v2 == sub_23C43714C() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_23C4374AC();
  }

  return v7 & 1;
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_23C416F78(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23C416F98(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void sub_23C416FD4(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t ACSEError.nsError.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v6, a1);
  v7 = sub_23C43748C();
  if (v7)
  {
    v8 = v7;
    (*(v3 + 8))(v5, a1);
  }

  else
  {
    v8 = swift_allocError();
    (*(v3 + 32))(v9, v5, a1);
  }

  v10 = sub_23C436E3C();

  return v10;
}

unint64_t ACSEError.userInfo.getter(uint64_t a1, uint64_t (**a2)(void, void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F44F0, &unk_23C438F90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23C438130;
  *(inited + 32) = sub_23C43714C();
  *(inited + 40) = v5;
  v6 = a2[3](a1, a2);
  v7 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v6;
  *(inited + 56) = v8;
  *(inited + 80) = sub_23C43714C();
  *(inited + 88) = v9;
  v10 = a2[4](a1, a2);
  *(inited + 120) = v7;
  *(inited + 96) = v10;
  *(inited + 104) = v11;
  *(inited + 128) = sub_23C43714C();
  *(inited + 136) = v12;
  v13 = a2[5](a1, a2);
  *(inited + 168) = v7;
  *(inited + 144) = v13;
  *(inited + 152) = v14;
  v15 = sub_23C417638(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F44F8, &qword_23C438140);
  swift_arrayDestroy();
  return v15;
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

uint64_t ACSEError.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a4;
  v7 = sub_23C4372FC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - v9;
  v11 = [a1 domain];
  v12 = sub_23C43714C();
  v14 = v13;

  if (v12 == sub_23C436D8C() && v14 == v15)
  {
  }

  else
  {
    v17 = sub_23C4374AC();

    if ((v17 & 1) == 0)
    {

      v18 = *(a2 - 8);
      goto LABEL_10;
    }
  }

  (*(a3 + 64))([a1 code], a2, a3);

  v18 = *(a2 - 8);
  v19 = v18;
  if (!(*(v18 + 48))(v10, 1, a2))
  {
    v22 = v25;
    (*(v18 + 32))(v25, v10, a2);
    v21 = v22;
    v20 = 0;
    return (*(v19 + 56))(v21, v20, 1, a2);
  }

  (*(v8 + 8))(v10, v7);
LABEL_10:
  v19 = v18;
  v20 = 1;
  v21 = v25;
  return (*(v19 + 56))(v21, v20, 1, a2);
}

uint64_t sub_23C4175B8(uint64_t a1)
{
  v7 = *v1;
  sub_23C4177E0();
  v2 = sub_23C43748C();
  if (!v2)
  {
    v2 = swift_allocError();
    *v3 = v7;
  }

  v4 = v2;
  v5 = sub_23C436E3C();

  return v5;
}

unint64_t sub_23C417638(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4520, &qword_23C438178);
    v3 = sub_23C43743C();
    v4 = a1 + 32;

    while (1)
    {
      sub_23C417A7C(v4, &v13, &qword_27E1F44F8, &qword_23C438140);
      v5 = v13;
      v6 = v14;
      result = sub_23C4235F0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_23C417A6C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23C4177E0()
{
  result = qword_27E1F4500;
  if (!qword_27E1F4500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F4500);
  }

  return result;
}

unint64_t sub_23C417834(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4510, &qword_23C438170);
    v3 = sub_23C43743C();
    v4 = a1 + 32;

    while (1)
    {
      sub_23C417A7C(v4, v13, &qword_27E1F4518, &qword_23C438FB0);
      result = sub_23C42399C(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_23C417A6C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_23C417970(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4508, &qword_23C438168);
    v3 = sub_23C43743C();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_23C4235F0(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

_OWORD *sub_23C417A6C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_23C417A7C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t TapToRadarDraft.url.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4528, &qword_23C438180);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_23C436DFC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23C436DEC();
  sub_23C436DDC();
  MEMORY[0x23EED0B60](7824750, 0xE300000000000000);
  sub_23C417D34();
  sub_23C436DAC();
  sub_23C436DBC();
  v9 = sub_23C436E8C();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v4, 1, v9) == 1)
  {
    sub_23C41ED98(v4, &qword_27E1F4528, &qword_23C438180);
    sub_23C41A4A4();
    swift_allocError();
    *v11 = 0;
    swift_willThrow();
    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    (*(v6 + 8))(v8, v5);
    return (*(v10 + 32))(a1, v4, v9);
  }
}

char *sub_23C417D34()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4700, &qword_23C438980);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v319 = &v287 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v318 = &v287 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v315 = &v287 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v340 = &v287 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v310 = &v287 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v309 = &v287 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v287 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v308 = &v287 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v287 - v20;
  v22 = sub_23C436D7C();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v288 = &v287 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v303 = &v287 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v339 = &v287 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v302 = &v287 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v338 = &v287 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v337 = &v287 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v301 = &v287 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v336 = &v287 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v317 = &v287 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v316 = &v287 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v335 = &v287 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v300 = &v287 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v334 = &v287 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v333 = &v287 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v299 = &v287 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v332 = &v287 - v55;
  v56 = MEMORY[0x28223BE20](v54);
  v331 = &v287 - v57;
  v58 = MEMORY[0x28223BE20](v56);
  v298 = &v287 - v59;
  v60 = MEMORY[0x28223BE20](v58);
  v330 = &v287 - v61;
  v62 = MEMORY[0x28223BE20](v60);
  v329 = &v287 - v63;
  v64 = MEMORY[0x28223BE20](v62);
  v297 = &v287 - v65;
  v66 = MEMORY[0x28223BE20](v64);
  v328 = &v287 - v67;
  v68 = MEMORY[0x28223BE20](v66);
  v314 = &v287 - v69;
  v70 = MEMORY[0x28223BE20](v68);
  v313 = &v287 - v71;
  v72 = MEMORY[0x28223BE20](v70);
  v327 = &v287 - v73;
  v74 = MEMORY[0x28223BE20](v72);
  v296 = &v287 - v75;
  v76 = MEMORY[0x28223BE20](v74);
  v326 = &v287 - v77;
  v78 = MEMORY[0x28223BE20](v76);
  v325 = &v287 - v79;
  v80 = MEMORY[0x28223BE20](v78);
  v295 = &v287 - v81;
  v82 = MEMORY[0x28223BE20](v80);
  v324 = &v287 - v83;
  v84 = MEMORY[0x28223BE20](v82);
  v323 = &v287 - v85;
  v86 = MEMORY[0x28223BE20](v84);
  v294 = &v287 - v87;
  v88 = MEMORY[0x28223BE20](v86);
  v322 = &v287 - v89;
  v90 = MEMORY[0x28223BE20](v88);
  v312 = &v287 - v91;
  v92 = MEMORY[0x28223BE20](v90);
  v311 = &v287 - v93;
  v94 = MEMORY[0x28223BE20](v92);
  v321 = &v287 - v95;
  v96 = MEMORY[0x28223BE20](v94);
  v293 = &v287 - v97;
  v98 = MEMORY[0x28223BE20](v96);
  v320 = &v287 - v99;
  v100 = MEMORY[0x28223BE20](v98);
  v292 = &v287 - v101;
  v102 = MEMORY[0x28223BE20](v100);
  v291 = &v287 - v103;
  v104 = MEMORY[0x28223BE20](v102);
  v290 = &v287 - v105;
  v106 = MEMORY[0x28223BE20](v104);
  v289 = &v287 - v107;
  v108 = MEMORY[0x28223BE20](v106);
  v307 = &v287 - v109;
  v110 = MEMORY[0x28223BE20](v108);
  v306 = &v287 - v111;
  v112 = MEMORY[0x28223BE20](v110);
  v305 = &v287 - v113;
  v114 = MEMORY[0x28223BE20](v112);
  v304 = &v287 - v115;
  v116 = MEMORY[0x28223BE20](v114);
  v118 = &v287 - v117;
  MEMORY[0x28223BE20](v116);
  v120 = &v287 - v119;
  v343 = v23;
  v344 = MEMORY[0x277D84F90];
  if (!*(v1 + 24))
  {
    v341 = *(v23 + 56);
    v341(v21, 1, 1, v22);
LABEL_5:
    sub_23C41ED98(v21, &qword_27E1F4700, &qword_23C438980);
    v121 = v340;
    v122 = *(v1 + 48);
    if (!v122)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v342 = v17;

  sub_23C436D6C();
  v341 = *(v23 + 56);
  v341(v21, 0, 1, v22);

  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    v17 = v342;
    goto LABEL_5;
  }

  v152 = *(v23 + 32);
  v152(v120, v21, v22);
  (*(v23 + 16))(v118, v120, v22);
  v153 = sub_23C41F51C(0, 1, 1, MEMORY[0x277D84F90]);
  v155 = *(v153 + 2);
  v154 = *(v153 + 3);
  if (v155 >= v154 >> 1)
  {
    v153 = sub_23C41F51C((v154 > 1), v155 + 1, 1, v153);
  }

  v156 = v343 + 8;
  (*(v343 + 8))(v120, v22);
  *(v153 + 2) = v155 + 1;
  v157 = &v153[(*(v156 + 72) + 32) & ~*(v156 + 72)];
  v158 = *(v156 + 64);
  v23 = v343;
  v152(&v157[v158 * v155], v118, v22);
  v344 = v153;
  v121 = v340;
  v17 = v342;
  v122 = *(v1 + 48);
  if (v122)
  {
LABEL_6:
    v124 = *(v1 + 56);
    v123 = *(v1 + 64);
    v345 = *(v1 + 32);
    v346 = v122;
    v347 = v124;
    v348 = v123;
    v125 = sub_23C41B89C();
    sub_23C41E3BC(v125);
  }

LABEL_7:
  v126 = *(v1 + 88);

  v127 = v308;
  sub_23C41DDB4(v126, v308);

  v342 = *(v23 + 48);
  if ((v342)(v127, 1, v22) == 1)
  {
    sub_23C41ED98(v127, &qword_27E1F4700, &qword_23C438980);
  }

  else
  {
    v128 = *(v23 + 32);
    v129 = v304;
    v128(v304, v127, v22);
    (*(v23 + 16))(v305, v129, v22);
    v130 = v344;
    v131 = v17;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v130 = sub_23C41F51C(0, *(v130 + 2) + 1, 1, v130);
    }

    v133 = *(v130 + 2);
    v132 = *(v130 + 3);
    if (v133 >= v132 >> 1)
    {
      v130 = sub_23C41F51C((v132 > 1), v133 + 1, 1, v130);
    }

    (*(v23 + 8))(v304, v22);
    *(v130 + 2) = v133 + 1;
    v128(&v130[((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v133], v305, v22);
    v344 = v130;
    v17 = v131;
    v121 = v340;
  }

  v134 = *(v1 + 112);

  sub_23C41DFA8(v134, v17);

  if ((v342)(v17, 1, v22) == 1)
  {
    sub_23C41ED98(v17, &qword_27E1F4700, &qword_23C438980);
    if (*(v1 + 144))
    {
      goto LABEL_16;
    }

LABEL_28:
    v136 = v343;
    v135 = v309;
    v341(v309, 1, 1, v22);
    goto LABEL_29;
  }

  v146 = v343;
  v147 = *(v343 + 32);
  v148 = v306;
  v147(v306, v17, v22);
  (*(v146 + 16))(v307, v148, v22);
  v149 = v344;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v149 = sub_23C41F51C(0, *(v149 + 2) + 1, 1, v149);
  }

  v151 = *(v149 + 2);
  v150 = *(v149 + 3);
  if (v151 >= v150 >> 1)
  {
    v149 = sub_23C41F51C((v150 > 1), v151 + 1, 1, v149);
  }

  (*(v146 + 8))(v306, v22);
  *(v149 + 2) = v151 + 1;
  v147(&v149[((*(v146 + 80) + 32) & ~*(v146 + 80)) + *(v146 + 72) * v151], v307, v22);
  v344 = v149;
  if (!*(v1 + 144))
  {
    goto LABEL_28;
  }

LABEL_16:

  v135 = v309;
  sub_23C436D6C();
  v136 = v343;
  v341(v135, 0, 1, v22);

  if ((v342)(v135, 1, v22) != 1)
  {
    v137 = *(v136 + 32);
    v138 = v289;
    v137(v289, v135, v22);
    (*(v136 + 16))(v290, v138, v22);
    v139 = v344;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v139 = sub_23C41F51C(0, *(v139 + 2) + 1, 1, v139);
    }

    v141 = *(v139 + 2);
    v140 = *(v139 + 3);
    if (v141 >= v140 >> 1)
    {
      v139 = sub_23C41F51C((v140 > 1), v141 + 1, 1, v139);
    }

    v142 = v343 + 8;
    (*(v343 + 8))(v289, v22);
    *(v139 + 2) = v141 + 1;
    v143 = &v139[(*(v142 + 72) + 32) & ~*(v142 + 72)];
    v144 = *(v142 + 64);
    v136 = v343;
    v137(&v143[v144 * v141], v290, v22);
    v344 = v139;
    if (!*(v1 + 176))
    {
      goto LABEL_22;
    }

    goto LABEL_30;
  }

LABEL_29:
  sub_23C41ED98(v135, &qword_27E1F4700, &qword_23C438980);
  if (!*(v1 + 176))
  {
LABEL_22:
    v145 = v310;
    v341(v310, 1, 1, v22);
LABEL_31:
    sub_23C41ED98(v145, &qword_27E1F4700, &qword_23C438980);
    goto LABEL_41;
  }

LABEL_30:

  v145 = v310;
  sub_23C436D6C();
  v341(v145, 0, 1, v22);

  if ((v342)(v145, 1, v22) == 1)
  {
    goto LABEL_31;
  }

  v159 = *(v136 + 32);
  v160 = v291;
  v159(v291, v145, v22);
  (*(v136 + 16))(v292, v160, v22);
  v161 = v344;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v161 = sub_23C41F51C(0, *(v161 + 2) + 1, 1, v161);
  }

  v163 = *(v161 + 2);
  v162 = *(v161 + 3);
  if (v163 >= v162 >> 1)
  {
    v161 = sub_23C41F51C((v162 > 1), v163 + 1, 1, v161);
  }

  (*(v136 + 8))(v291, v22);
  *(v161 + 2) = v163 + 1;
  v159(&v161[((*(v136 + 80) + 32) & ~*(v136 + 80)) + *(v136 + 72) * v163], v292, v22);
  v344 = v161;
LABEL_41:

  sub_23C41EA04(v164);
  if (v165)
  {
    v166 = v293;
    sub_23C436D6C();

    v167 = v343;
    v168 = *(v343 + 32);
    v169 = v320;
    v168(v320, v166, v22);
    (*(v167 + 16))(v321, v169, v22);
    v170 = v344;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v170 = sub_23C41F51C(0, *(v170 + 2) + 1, 1, v170);
    }

    v172 = *(v170 + 2);
    v171 = *(v170 + 3);
    if (v172 >= v171 >> 1)
    {
      v170 = sub_23C41F51C((v171 > 1), v172 + 1, 1, v170);
    }

    (*(v167 + 8))(v320, v22);
    *(v170 + 2) = v172 + 1;
    v168(&v170[((*(v167 + 80) + 32) & ~*(v167 + 80)) + *(v167 + 72) * v172], v321, v22);
    v344 = v170;
  }

  else
  {
  }

  v173 = type metadata accessor for TapToRadarDraft(0);
  sub_23C41E100(v121);
  if ((v342)(v121, 1, v22) == 1)
  {
    sub_23C41ED98(v121, &qword_27E1F4700, &qword_23C438980);
  }

  else
  {
    v174 = v343;
    v175 = *(v343 + 32);
    v176 = v311;
    v175(v311, v121, v22);
    (*(v174 + 16))(v312, v176, v22);
    v177 = v344;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v177 = sub_23C41F51C(0, *(v177 + 2) + 1, 1, v177);
    }

    v179 = *(v177 + 2);
    v178 = *(v177 + 3);
    if (v179 >= v178 >> 1)
    {
      v177 = sub_23C41F51C((v178 > 1), v179 + 1, 1, v177);
    }

    (*(v174 + 8))(v311, v22);
    *(v177 + 2) = v179 + 1;
    v175(&v177[((*(v174 + 80) + 32) & ~*(v174 + 80)) + *(v174 + 72) * v179], v312, v22);
    v344 = v177;
  }

  sub_23C41E7F0(v180);
  if (v181)
  {
    v182 = v294;
    sub_23C436D6C();

    v183 = v343;
    v184 = *(v343 + 32);
    v185 = v322;
    v184(v322, v182, v22);
    (*(v183 + 16))(v323, v185, v22);
    v186 = v344;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v186 = sub_23C41F51C(0, *(v186 + 2) + 1, 1, v186);
    }

    v188 = *(v186 + 2);
    v187 = *(v186 + 3);
    if (v188 >= v187 >> 1)
    {
      v186 = sub_23C41F51C((v187 > 1), v188 + 1, 1, v186);
    }

    (*(v183 + 8))(v322, v22);
    *(v186 + 2) = v188 + 1;
    v184(&v186[((*(v183 + 80) + 32) & ~*(v183 + 80)) + *(v183 + 72) * v188], v323, v22);
    v344 = v186;
  }

  else
  {
  }

  sub_23C41E7F0(v189);
  if (v190)
  {
    v191 = v295;
    sub_23C436D6C();

    v192 = v343;
    v193 = *(v343 + 32);
    v194 = v324;
    v193(v324, v191, v22);
    (*(v192 + 16))(v325, v194, v22);
    v195 = v344;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v195 = sub_23C41F51C(0, *(v195 + 2) + 1, 1, v195);
    }

    v197 = *(v195 + 2);
    v196 = *(v195 + 3);
    if (v197 >= v196 >> 1)
    {
      v195 = sub_23C41F51C((v196 > 1), v197 + 1, 1, v195);
    }

    (*(v192 + 8))(v324, v22);
    *(v195 + 2) = v197 + 1;
    v193(&v195[((*(v192 + 80) + 32) & ~*(v192 + 80)) + *(v192 + 72) * v197], v325, v22);
    v344 = v195;
  }

  else
  {
  }

  sub_23C41E6C0(v198);
  if (v199)
  {
    v200 = v296;
    sub_23C436D6C();

    v201 = v343;
    v202 = *(v343 + 32);
    v203 = v326;
    v202(v326, v200, v22);
    (*(v201 + 16))(v327, v203, v22);
    v204 = v344;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v204 = sub_23C41F51C(0, *(v204 + 2) + 1, 1, v204);
    }

    v206 = *(v204 + 2);
    v205 = *(v204 + 3);
    if (v206 >= v205 >> 1)
    {
      v204 = sub_23C41F51C((v205 > 1), v206 + 1, 1, v204);
    }

    v207 = v343 + 8;
    (*(v343 + 8))(v326, v22);
    *(v204 + 2) = v206 + 1;
    v208 = &v204[(*(v207 + 72) + 32) & ~*(v207 + 72)];
    v209 = *(v207 + 64);
    v210 = v343;
    v202(&v208[v209 * v206], v327, v22);
    v344 = v204;
  }

  else
  {

    v210 = v343;
  }

  v211 = v315;
  sub_23C436D6C();

  v340 = (v210 + 56);
  v341(v211, 0, 1, v22);

  if ((v342)(v211, 1, v22) == 1)
  {
    sub_23C41ED98(v211, &qword_27E1F4700, &qword_23C438980);
  }

  else
  {
    v212 = *(v210 + 32);
    v213 = v313;
    v212(v313, v211, v22);
    (*(v210 + 16))(v314, v213, v22);
    v214 = v344;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v214 = sub_23C41F51C(0, *(v214 + 2) + 1, 1, v214);
    }

    v216 = *(v214 + 2);
    v215 = *(v214 + 3);
    if (v216 >= v215 >> 1)
    {
      v214 = sub_23C41F51C((v215 > 1), v216 + 1, 1, v214);
    }

    (*(v210 + 8))(v313, v22);
    *(v214 + 2) = v216 + 1;
    v212(&v214[((*(v210 + 80) + 32) & ~*(v210 + 80)) + *(v210 + 72) * v216], v314, v22);
    v344 = v214;
  }

  sub_23C41E6C0(v217);
  if (v218)
  {
    v219 = v297;
    sub_23C436D6C();

    v220 = v343;
    v221 = *(v343 + 32);
    v222 = v328;
    v221(v328, v219, v22);
    (*(v220 + 16))(v329, v222, v22);
    v223 = v344;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v223 = sub_23C41F51C(0, *(v223 + 2) + 1, 1, v223);
    }

    v225 = *(v223 + 2);
    v224 = *(v223 + 3);
    if (v225 >= v224 >> 1)
    {
      v223 = sub_23C41F51C((v224 > 1), v225 + 1, 1, v223);
    }

    (*(v220 + 8))(v328, v22);
    *(v223 + 2) = v225 + 1;
    v221(&v223[((*(v220 + 80) + 32) & ~*(v220 + 80)) + *(v220 + 72) * v225], v329, v22);
    v344 = v223;
  }

  else
  {
  }

  sub_23C41E4E8(v226);
  if (v227)
  {
    v228 = v298;
    sub_23C436D6C();

    v229 = v343;
    v230 = *(v343 + 32);
    v231 = v330;
    v230(v330, v228, v22);
    (*(v229 + 16))(v331, v231, v22);
    v232 = v344;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v232 = sub_23C41F51C(0, *(v232 + 2) + 1, 1, v232);
    }

    v234 = *(v232 + 2);
    v233 = *(v232 + 3);
    if (v234 >= v233 >> 1)
    {
      v232 = sub_23C41F51C((v233 > 1), v234 + 1, 1, v232);
    }

    (*(v229 + 8))(v330, v22);
    *(v232 + 2) = v234 + 1;
    v230(&v232[((*(v229 + 80) + 32) & ~*(v229 + 80)) + *(v229 + 72) * v234], v331, v22);
    v344 = v232;
  }

  else
  {
  }

  sub_23C41E6C0(v235);
  if (v236)
  {
    v237 = v299;
    sub_23C436D6C();

    v238 = v343;
    v239 = *(v343 + 32);
    v240 = v332;
    v239(v332, v237, v22);
    (*(v238 + 16))(v333, v240, v22);
    v241 = v344;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v241 = sub_23C41F51C(0, *(v241 + 2) + 1, 1, v241);
    }

    v243 = *(v241 + 2);
    v242 = *(v241 + 3);
    if (v243 >= v242 >> 1)
    {
      v241 = sub_23C41F51C((v242 > 1), v243 + 1, 1, v241);
    }

    (*(v238 + 8))(v332, v22);
    *(v241 + 2) = v243 + 1;
    v239(&v241[((*(v238 + 80) + 32) & ~*(v238 + 80)) + *(v238 + 72) * v243], v333, v22);
    v344 = v241;
  }

  else
  {
  }

  v244 = *(v1 + v173[19] + 16);

  sub_23C41CDC4(v244);
  if (v245)
  {
    v246 = v300;
    sub_23C436D6C();

    v247 = v343;
    v248 = *(v343 + 32);
    v249 = v334;
    v248(v334, v246, v22);
    (*(v247 + 16))(v335, v249, v22);
    v250 = v344;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v250 = sub_23C41F51C(0, *(v250 + 2) + 1, 1, v250);
    }

    v252 = *(v250 + 2);
    v251 = *(v250 + 3);
    if (v252 >= v251 >> 1)
    {
      v250 = sub_23C41F51C((v251 > 1), v252 + 1, 1, v250);
    }

    (*(v247 + 8))(v334, v22);
    *(v250 + 2) = v252 + 1;
    v248(&v250[((*(v247 + 80) + 32) & ~*(v247 + 80)) + *(v247 + 72) * v252], v335, v22);
    v344 = v250;
  }

  else
  {
  }

  v253 = v318;
  sub_23C436D6C();

  v341(v253, 0, 1, v22);

  if ((v342)(v253, 1, v22) == 1)
  {
    sub_23C41ED98(v253, &qword_27E1F4700, &qword_23C438980);
  }

  else
  {
    v254 = v343;
    v255 = *(v343 + 32);
    v256 = v316;
    v255(v316, v253, v22);
    (*(v254 + 16))(v317, v256, v22);
    v257 = v344;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v257 = sub_23C41F51C(0, *(v257 + 2) + 1, 1, v257);
    }

    v259 = *(v257 + 2);
    v258 = *(v257 + 3);
    if (v259 >= v258 >> 1)
    {
      v257 = sub_23C41F51C((v258 > 1), v259 + 1, 1, v257);
    }

    (*(v254 + 8))(v316, v22);
    *(v257 + 2) = v259 + 1;
    v255(&v257[((*(v254 + 80) + 32) & ~*(v254 + 80)) + *(v254 + 72) * v259], v317, v22);
    v344 = v257;
  }

  v260 = *(v1 + v173[21] + 16);

  sub_23C41D534(v260);
  if (v261)
  {
    v262 = v301;
    sub_23C436D6C();

    v263 = v343;
    v264 = *(v343 + 32);
    v265 = v336;
    v264(v336, v262, v22);
    (*(v263 + 16))(v337, v265, v22);
    v266 = v344;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v266 = sub_23C41F51C(0, *(v266 + 2) + 1, 1, v266);
    }

    v268 = *(v266 + 2);
    v267 = *(v266 + 3);
    if (v268 >= v267 >> 1)
    {
      v266 = sub_23C41F51C((v267 > 1), v268 + 1, 1, v266);
    }

    (*(v263 + 8))(v336, v22);
    *(v266 + 2) = v268 + 1;
    v264(&v266[((*(v263 + 80) + 32) & ~*(v263 + 80)) + *(v263 + 72) * v268], v337, v22);
    v344 = v266;
  }

  else
  {
  }

  sub_23C41E6C0(v269);
  if (v270)
  {
    v271 = v302;
    sub_23C436D6C();

    v272 = v343;
    v273 = *(v343 + 32);
    v274 = v338;
    v273(v338, v271, v22);
    (*(v272 + 16))(v339, v274, v22);
    v275 = v344;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v275 = sub_23C41F51C(0, *(v275 + 2) + 1, 1, v275);
    }

    v277 = *(v275 + 2);
    v276 = *(v275 + 3);
    if (v277 >= v276 >> 1)
    {
      v275 = sub_23C41F51C((v276 > 1), v277 + 1, 1, v275);
    }

    (*(v272 + 8))(v338, v22);
    *(v275 + 2) = v277 + 1;
    v273(&v275[((*(v272 + 80) + 32) & ~*(v272 + 80)) + *(v272 + 72) * v277], v339, v22);
    v344 = v275;
  }

  else
  {
  }

  if (!*(v1 + v173[23] + 24))
  {
    v278 = v319;
    v341(v319, 1, 1, v22);
    goto LABEL_140;
  }

  v278 = v319;
  sub_23C436D6C();
  v341(v278, 0, 1, v22);

  if ((v342)(v278, 1, v22) == 1)
  {
LABEL_140:
    sub_23C41ED98(v278, &qword_27E1F4700, &qword_23C438980);
    return v344;
  }

  v279 = v343;
  v280 = *(v343 + 32);
  v281 = v303;
  v280(v303, v278, v22);
  v282 = v288;
  (*(v279 + 16))(v288, v281, v22);
  v283 = v344;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v283 = sub_23C41F51C(0, *(v283 + 2) + 1, 1, v283);
  }

  v285 = *(v283 + 2);
  v284 = *(v283 + 3);
  if (v285 >= v284 >> 1)
  {
    v283 = sub_23C41F51C((v284 > 1), v285 + 1, 1, v283);
  }

  (*(v279 + 8))(v303, v22);
  *(v283 + 2) = v285 + 1;
  v280(&v283[((*(v279 + 80) + 32) & ~*(v279 + 80)) + *(v279 + 72) * v285], v282, v22);
  return v283;
}

unint64_t sub_23C41A4A4()
{
  result = qword_27E1F4530;
  if (!qword_27E1F4530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F4530);
  }

  return result;
}

uint64_t type metadata accessor for TapToRadarDraft(uint64_t a1)
{
  result = qword_27E1F4540;
  if (!qword_27E1F4540)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23C41A56C(uint64_t a1)
{
  sub_23C41A9F4(319, &qword_27E1F4550, &qword_27E1F4558, "l#", sub_23C41A910);
  if (v1 <= 0x3F)
  {
    sub_23C41A9A4();
    if (v2 <= 0x3F)
    {
      sub_23C41A9F4(319, &qword_27E1F4570, &qword_27E1F4578, &qword_23C438260, sub_23C41AA64);
      if (v3 <= 0x3F)
      {
        sub_23C41A9F4(319, &qword_27E1F4588, &qword_27E1F4590, &qword_23C438268, sub_23C41AAE0);
        if (v4 <= 0x3F)
        {
          sub_23C41A9F4(319, &qword_27E1F45A0, &qword_27E1F45A8, &unk_23C438270, sub_23C41AB5C);
          if (v5 <= 0x3F)
          {
            sub_23C41A9F4(319, &qword_27E1F45B8, &qword_27E1F45C0, &qword_23C438CB0, sub_23C41ABD8);
            if (v6 <= 0x3F)
            {
              sub_23C41A9F4(319, &qword_27E1F45D0, &qword_27E1F45D8, &qword_23C438280, sub_23C41AC54);
              if (v7 <= 0x3F)
              {
                sub_23C41A9F4(319, &qword_27E1F45E8, &qword_27E1F45F0, &qword_23C438288, sub_23C41ACD0);
                if (v8 <= 0x3F)
                {
                  sub_23C41ADC8(319, &qword_27E1F4600, MEMORY[0x277D839B0], &off_284F077A8);
                  if (v9 <= 0x3F)
                  {
                    sub_23C41A9F4(319, &qword_27E1F4608, &qword_27E1F4610, &unk_23C438290, sub_23C41AD4C);
                    if (v10 <= 0x3F)
                    {
                      sub_23C41ADC8(319, &qword_27E1F4620, &type metadata for TapToRadarDraft.RemoteDeviceSelections, &off_284F07BE0);
                      if (v11 <= 0x3F)
                      {
                        sub_23C41ADC8(319, qword_27E1F4628, &type metadata for TapToRadarDraft.AutoDiagnostics, &off_284F07BD0);
                        if (v12 <= 0x3F)
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
        }
      }
    }
  }
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

unint64_t sub_23C41A910()
{
  result = qword_27E1F4560;
  if (!qword_27E1F4560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1F4558, "l#");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F4560);
  }

  return result;
}

void sub_23C41A9A4()
{
  if (!qword_27E1F4568)
  {
    v0 = sub_23C4372FC();
    if (!v1)
    {
      atomic_store(v0, &qword_27E1F4568);
    }
  }
}

void sub_23C41A9F4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5();
    v11 = type metadata accessor for URLParameter(a1, v8, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

unint64_t sub_23C41AA64()
{
  result = qword_27E1F4580;
  if (!qword_27E1F4580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1F4578, &qword_23C438260);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F4580);
  }

  return result;
}

unint64_t sub_23C41AAE0()
{
  result = qword_27E1F4598;
  if (!qword_27E1F4598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1F4590, &qword_23C438268);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F4598);
  }

  return result;
}

unint64_t sub_23C41AB5C()
{
  result = qword_27E1F45B0;
  if (!qword_27E1F45B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1F45A8, &unk_23C438270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F45B0);
  }

  return result;
}

unint64_t sub_23C41ABD8()
{
  result = qword_27E1F45C8;
  if (!qword_27E1F45C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1F45C0, &qword_23C438CB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F45C8);
  }

  return result;
}

unint64_t sub_23C41AC54()
{
  result = qword_27E1F45E0;
  if (!qword_27E1F45E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1F45D8, &qword_23C438280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F45E0);
  }

  return result;
}

unint64_t sub_23C41ACD0()
{
  result = qword_27E1F45F8;
  if (!qword_27E1F45F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1F45F0, &qword_23C438288);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F45F8);
  }

  return result;
}

unint64_t sub_23C41AD4C()
{
  result = qword_27E1F4618;
  if (!qword_27E1F4618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1F4610, &unk_23C438290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F4618);
  }

  return result;
}

void sub_23C41ADC8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = type metadata accessor for URLParameter(0, a3, a4, a4);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for RequestSigningError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RequestSigningError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TapToRadarDraft.Reproducibility(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TapToRadarDraft.Reproducibility(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for TapToRadarDraft.Classification(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TapToRadarDraft.Classification(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
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

uint64_t sub_23C41B24C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23C41B294(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_23C41B2F4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23C41B374(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_23C41B4F8(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t getEnumTagSinglePayload for TapToRadarDraft.TapToRadarError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TapToRadarDraft.TapToRadarError(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_23C41B89C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4708, &qword_23C438988);
  sub_23C436D7C();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_23C438130;
  sub_23C43746C();
  sub_23C436D6C();

  sub_23C436D6C();
  sub_23C436D6C();
  return v0;
}

uint64_t sub_23C41BA18()
{
  v1 = *v0;
  sub_23C43757C();
  MEMORY[0x23EED1320](v1);
  sub_23C4371AC();
  sub_23C4371AC();
  return sub_23C43759C();
}

uint64_t sub_23C41BA98(uint64_t a1)
{
  MEMORY[0x23EED1320](*v1);
  sub_23C4371AC();

  return sub_23C4371AC();
}

uint64_t sub_23C41BB08(uint64_t a1)
{
  v2 = *v1;
  sub_23C43757C();
  MEMORY[0x23EED1320](v2);
  sub_23C4371AC();
  sub_23C4371AC();
  return sub_23C43759C();
}

uint64_t sub_23C41BB84(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a1[4];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v6 && (sub_23C4374AC() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_23C4374AC();
}

unint64_t sub_23C41BC38(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x2065727574616546;
    v6 = 0x6D65636E61686E45;
    if (a1 != 8)
    {
      v6 = 1802723668;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x2073756F69726553;
    if (a1 != 5)
    {
      v7 = 0x754220726568744FLL;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x7974697275636553;
    v2 = 0x7265776F50;
    v3 = 0x616D726F66726550;
    if (a1 != 3)
    {
      v3 = 0x69626173552F4955;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0xD000000000000014;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_23C41BD9C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_23C41BC38(*a1);
  v5 = v4;
  if (v3 == sub_23C41BC38(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_23C4374AC();
  }

  return v8 & 1;
}

uint64_t sub_23C41BE24(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x656C62616E55;
  v6 = 0x74276E6469442049;
  v7 = 0xEC00000079725420;
  if (a1 != 4)
  {
    v6 = 0x6C70704120746F4ELL;
    v7 = 0xEE00656C62616369;
  }

  if (a1 != 3)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0x656D6974656D6F53;
  v9 = 0xE900000000000073;
  if (a1 != 1)
  {
    v8 = 0x796C65726152;
    v9 = 0xE600000000000000;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x737961776C41;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x656C62616E55)
      {
        goto LABEL_34;
      }
    }

    else if (a2 == 4)
    {
      v12 = 0xEC00000079725420;
      if (v10 != 0x74276E6469442049)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xEE00656C62616369;
      if (v10 != 0x6C70704120746F4ELL)
      {
LABEL_34:
        v13 = sub_23C4374AC();
        goto LABEL_35;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v12 = 0xE900000000000073;
      if (v10 != 0x656D6974656D6F53)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v12 = 0xE600000000000000;
      if (v10 != 0x796C65726152)
      {
        goto LABEL_34;
      }
    }
  }

  else
  {
    v12 = 0xE600000000000000;
    if (v10 != 0x737961776C41)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_34;
  }

  v13 = 1;
LABEL_35:

  return v13 & 1;
}

uint64_t sub_23C41C028(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 2u)
  {
    v8 = 0xE100000000000000;
    v9 = 48;
    if (a1 != 1)
    {
      v9 = 12589;
      v8 = 0xE200000000000000;
    }

    if (a1)
    {
      v6 = v9;
    }

    else
    {
      v6 = 7105633;
    }

    if (v2)
    {
      v7 = v8;
    }

    else
    {
      v7 = 0xE300000000000000;
    }
  }

  else
  {
    v3 = 0x800000023C4394F0;
    v4 = 0xD00000000000001CLL;
    if (a1 == 5)
    {
      v4 = 0xD000000000000010;
    }

    else
    {
      v3 = 0x800000023C439510;
    }

    v5 = 0x800000023C4394B0;
    if (a1 != 3)
    {
      v5 = 0x800000023C4394D0;
    }

    if (a1 <= 4u)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = v4;
    }

    if (v2 <= 4)
    {
      v7 = v5;
    }

    else
    {
      v7 = v3;
    }
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v10 = 0xE100000000000000;
        if (v6 != 48)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v10 = 0xE200000000000000;
        if (v6 != 12589)
        {
LABEL_45:
          v12 = sub_23C4374AC();
          goto LABEL_46;
        }
      }
    }

    else
    {
      v10 = 0xE300000000000000;
      if (v6 != 7105633)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v11 = 0xD000000000000010;
    }

    else
    {
      v11 = 0xD00000000000001CLL;
    }

    if (a2 == 5)
    {
      v10 = 0x800000023C4394F0;
    }

    else
    {
      v10 = 0x800000023C439510;
    }

    if (v6 != v11)
    {
      goto LABEL_45;
    }
  }

  else
  {
    if (a2 == 3)
    {
      v10 = 0x800000023C4394B0;
    }

    else
    {
      v10 = 0x800000023C4394D0;
    }

    if (v6 != 0xD000000000000010)
    {
      goto LABEL_45;
    }
  }

  if (v7 != v10)
  {
    goto LABEL_45;
  }

  v12 = 1;
LABEL_46:

  return v12 & 1;
}

uint64_t sub_23C41C200(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE600000000000000;
  v4 = 0xE300000000000000;
  v5 = 6512973;
  if (a1 != 5)
  {
    v5 = 0x6E6F69736956;
    v4 = 0xE600000000000000;
  }

  v6 = 0x5654656C707041;
  if (a1 != 3)
  {
    v6 = 0x646F50656D6F48;
  }

  if (a1 <= 4u)
  {
    v5 = v6;
    v4 = 0xE700000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1684099177;
  if (a1 != 1)
  {
    v8 = 0x6863746157;
    v7 = 0xE500000000000000;
  }

  if (a1)
  {
    v3 = v7;
  }

  else
  {
    v8 = 0x656E6F685069;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v2 <= 2)
  {
    v10 = v3;
  }

  else
  {
    v10 = v4;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v11 = 0xE400000000000000;
        if (v9 != 1684099177)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v11 = 0xE500000000000000;
        if (v9 != 0x6863746157)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v11 = 0xE600000000000000;
      if (v9 != 0x656E6F685069)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v11 = 0xE300000000000000;
      if (v9 != 6512973)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v11 = 0xE600000000000000;
      if (v9 != 0x6E6F69736956)
      {
LABEL_39:
        v12 = sub_23C4374AC();
        goto LABEL_40;
      }
    }
  }

  else
  {
    v11 = 0xE700000000000000;
    if (a2 == 3)
    {
      if (v9 != 0x5654656C707041)
      {
        goto LABEL_39;
      }
    }

    else if (v9 != 0x646F50656D6F48)
    {
      goto LABEL_39;
    }
  }

  if (v10 != v11)
  {
    goto LABEL_39;
  }

  v12 = 1;
LABEL_40:

  return v12 & 1;
}

uint64_t sub_23C41C3F8()
{
  v1 = *v0;
  sub_23C43757C();
  sub_23C41BC38(v1);
  sub_23C4371AC();

  return sub_23C43759C();
}

uint64_t sub_23C41C45C(unsigned __int8 a1)
{
  sub_23C43757C();
  sub_23C4371AC();

  return sub_23C43759C();
}

uint64_t sub_23C41C570(uint64_t a1)
{
  sub_23C41BC38(*v1);
  sub_23C4371AC();
}

uint64_t sub_23C41C5C4(uint64_t a1)
{
  v2 = *v1;
  sub_23C43757C();
  sub_23C41BC38(v2);
  sub_23C4371AC();

  return sub_23C43759C();
}

uint64_t sub_23C41C624(uint64_t a1, unsigned __int8 a2)
{
  sub_23C43757C();
  sub_23C4371AC();

  return sub_23C43759C();
}

uint64_t sub_23C41C72C(uint64_t a1, unsigned __int8 a2)
{
  sub_23C43757C();
  sub_23C4371AC();

  return sub_23C43759C();
}

uint64_t sub_23C41C83C(uint64_t a1, unsigned __int8 a2)
{
  sub_23C43757C();
  sub_23C4371AC();

  return sub_23C43759C();
}

unint64_t sub_23C41C94C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23C41EB94(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_23C41C97C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_23C41BC38(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_23C41C9BC(uint64_t a1)
{
  sub_23C4371AC();
}

unint64_t sub_23C41CAC0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23C41EBE0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_23C41CAF0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x737961776C41;
  v5 = 0xE600000000000000;
  v6 = 0x656C62616E55;
  v7 = 0xEC00000079725420;
  v8 = 0x74276E6469442049;
  if (v2 != 4)
  {
    v8 = 0x6C70704120746F4ELL;
    v7 = 0xEE00656C62616369;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE900000000000073;
  v10 = 0x656D6974656D6F53;
  if (v2 != 1)
  {
    v10 = 0x796C65726152;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_23C41CBD4(uint64_t a1)
{
  sub_23C4371AC();
}

unint64_t sub_23C41CCD0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23C41EC2C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_23C41CD00(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x656E6F685069;
  v5 = 0xE300000000000000;
  v6 = 6512973;
  if (v2 != 5)
  {
    v6 = 0x6E6F69736956;
    v5 = 0xE600000000000000;
  }

  v7 = 0x5654656C707041;
  if (v2 != 3)
  {
    v7 = 0x646F50656D6F48;
  }

  if (*v1 <= 4u)
  {
    v6 = v7;
    v5 = 0xE700000000000000;
  }

  v8 = 0xE400000000000000;
  v9 = 1684099177;
  if (v2 != 1)
  {
    v9 = 0x6863746157;
    v8 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_23C41CDC4(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    if (a1)
    {
      v2 = sub_23C41F410(0, 1, 1, MEMORY[0x277D84F90]);
      v4 = *(v2 + 2);
      v3 = *(v2 + 3);
      if (v4 >= v3 >> 1)
      {
        v2 = sub_23C41F410((v3 > 1), v4 + 1, 1, v2);
      }

      *(v2 + 2) = v4 + 1;
      v5 = &v2[16 * v4];
      *(v5 + 4) = 0x79616C50726941;
      *(v5 + 5) = 0xE700000000000000;
      if ((v1 & 2) == 0)
      {
LABEL_14:
        if ((v1 & 4) != 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_23C41F410(0, *(v2 + 2) + 1, 1, v2);
          }

          v10 = *(v2 + 2);
          v9 = *(v2 + 3);
          if (v10 >= v9 >> 1)
          {
            v2 = sub_23C41F410((v9 > 1), v10 + 1, 1, v2);
          }

          *(v2 + 2) = v10 + 1;
          v11 = &v2[16 * v10];
          strcpy(v11 + 32, "MediaSystems");
          v11[45] = 0;
          *(v11 + 23) = -5120;
        }

        if ((v1 & 8) != 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_23C41F410(0, *(v2 + 2) + 1, 1, v2);
          }

          v13 = *(v2 + 2);
          v12 = *(v2 + 3);
          if (v13 >= v12 >> 1)
          {
            v2 = sub_23C41F410((v12 > 1), v13 + 1, 1, v2);
          }

          *(v2 + 2) = v13 + 1;
          v14 = &v2[16 * v13];
          *(v14 + 4) = 0x616C506572616853;
          *(v14 + 5) = 0xE900000000000079;
          if ((v1 & 0x10) == 0)
          {
LABEL_22:
            if ((v1 & 0x20) == 0)
            {
              goto LABEL_23;
            }

            goto LABEL_36;
          }
        }

        else if ((v1 & 0x10) == 0)
        {
          goto LABEL_22;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_23C41F410(0, *(v2 + 2) + 1, 1, v2);
        }

        v16 = *(v2 + 2);
        v15 = *(v2 + 3);
        if (v16 >= v15 >> 1)
        {
          v2 = sub_23C41F410((v15 > 1), v16 + 1, 1, v2);
        }

        *(v2 + 2) = v16 + 1;
        v17 = &v2[16 * v16];
        *(v17 + 4) = 0x79627261654ELL;
        *(v17 + 5) = 0xE600000000000000;
        if ((v1 & 0x20) == 0)
        {
LABEL_23:
          if ((v1 & 0x40) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_41;
        }

LABEL_36:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_23C41F410(0, *(v2 + 2) + 1, 1, v2);
        }

        v19 = *(v2 + 2);
        v18 = *(v2 + 3);
        if (v19 >= v18 >> 1)
        {
          v2 = sub_23C41F410((v18 > 1), v19 + 1, 1, v2);
        }

        *(v2 + 2) = v19 + 1;
        v20 = &v2[16 * v19];
        *(v20 + 4) = 0x657463656E6E6F43;
        *(v20 + 5) = 0xE900000000000064;
        if ((v1 & 0x40) == 0)
        {
LABEL_24:
          if ((v1 & 0x80) == 0)
          {
LABEL_51:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F45F0, &qword_23C438288);
            sub_23C41ECC4();
            v1 = sub_23C4370FC();

            return v1;
          }

LABEL_46:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v2 = sub_23C41F410(0, *(v2 + 2) + 1, 1, v2);
          }

          v25 = *(v2 + 2);
          v24 = *(v2 + 3);
          if (v25 >= v24 >> 1)
          {
            v2 = sub_23C41F410((v24 > 1), v25 + 1, 1, v2);
          }

          *(v2 + 2) = v25 + 1;
          v26 = &v2[16 * v25];
          *(v26 + 4) = 0xD000000000000016;
          *(v26 + 5) = 0x800000023C4395E0;
          goto LABEL_51;
        }

LABEL_41:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_23C41F410(0, *(v2 + 2) + 1, 1, v2);
        }

        v22 = *(v2 + 2);
        v21 = *(v2 + 3);
        if (v22 >= v21 >> 1)
        {
          v2 = sub_23C41F410((v21 > 1), v22 + 1, 1, v2);
        }

        *(v2 + 2) = v22 + 1;
        v23 = &v2[16 * v22];
        *(v23 + 4) = 0x61656854656D6F48;
        *(v23 + 5) = 0xEB00000000726574;
        if ((v1 & 0x80) == 0)
        {
          goto LABEL_51;
        }

        goto LABEL_46;
      }
    }

    else
    {
      v2 = MEMORY[0x277D84F90];
      if ((a1 & 2) == 0)
      {
        goto LABEL_14;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_23C41F410(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_23C41F410((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x4874694B656D6F48;
    *(v8 + 5) = 0xEB00000000656D6FLL;
    goto LABEL_14;
  }

  return v1;
}

uint64_t sub_23C41D294()
{
  v1 = *v0;
  sub_23C43757C();
  MEMORY[0x23EED1320](v1);
  return sub_23C43759C();
}

uint64_t sub_23C41D308(uint64_t a1)
{
  v2 = *v1;
  sub_23C43757C();
  MEMORY[0x23EED1320](v2);
  return sub_23C43759C();
}

BOOL sub_23C41D390(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_23C41D3C0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_23C41D3EC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_23C41D4C4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_23C41D4F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_23C41EB5C(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_23C41D534(unsigned __int8 a1)
{
  if (!a1)
  {

    return 0;
  }

  v2 = sub_23C4374AC();

  if (v2)
  {
    return 0;
  }

  if (a1 > 3u)
  {
    if (a1 == 4)
    {
      return 0xD000000000000010;
    }

    else if (a1 == 5)
    {
      return 0xD000000000000010;
    }

    else
    {
      return 0xD00000000000001CLL;
    }
  }

  else if (a1 == 1)
  {
    return 48;
  }

  else if (a1 == 2)
  {
    return 12589;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_23C41D704(uint64_t a1)
{
  sub_23C4371AC();
}

unint64_t sub_23C41D808@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23C41EC78(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_23C41D838(void *a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    v8 = 0xE300000000000000;
    v9 = 0xE100000000000000;
    v10 = 48;
    if (v2 != 1)
    {
      v10 = 12589;
      v9 = 0xE200000000000000;
    }

    v11 = v2 == 0;
    if (*v1)
    {
      v12 = v10;
    }

    else
    {
      v12 = 7105633;
    }

    if (!v11)
    {
      v8 = v9;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0xD000000000000010;
    v4 = 0x800000023C4394F0;
    if (v2 != 5)
    {
      v3 = 0xD00000000000001CLL;
      v4 = 0x800000023C439510;
    }

    v5 = 0x800000023C4394B0;
    if (v2 != 3)
    {
      v5 = 0x800000023C4394D0;
    }

    if (*v1 <= 4u)
    {
      v6 = 0xD000000000000010;
    }

    else
    {
      v6 = v3;
    }

    if (*v1 <= 4u)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    *a1 = v6;
    a1[1] = v7;
  }
}

uint64_t sub_23C41D91C()
{
  v1 = *v0;
  sub_23C43757C();
  MEMORY[0x23EED1320](v1);
  return sub_23C43759C();
}

uint64_t sub_23C41D990(uint64_t a1)
{
  v2 = *v1;
  sub_23C43757C();
  MEMORY[0x23EED1320](v2);
  return sub_23C43759C();
}

unint64_t sub_23C41D9D4()
{
  v1 = 0xD00000000000001DLL;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000002DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000028;
  }
}

unint64_t sub_23C41DA3C()
{
  result = qword_27E1F46B0;
  if (!qword_27E1F46B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F46B0);
  }

  return result;
}

unint64_t sub_23C41DA94()
{
  result = qword_27E1F46B8;
  if (!qword_27E1F46B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F46B8);
  }

  return result;
}

unint64_t sub_23C41DAEC()
{
  result = qword_27E1F46C0;
  if (!qword_27E1F46C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F46C0);
  }

  return result;
}

unint64_t sub_23C41DB44()
{
  result = qword_27E1F46C8;
  if (!qword_27E1F46C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F46C8);
  }

  return result;
}

unint64_t sub_23C41DB9C()
{
  result = qword_27E1F46D0;
  if (!qword_27E1F46D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F46D0);
  }

  return result;
}

unint64_t sub_23C41DBF0()
{
  result = qword_27E1F46D8;
  if (!qword_27E1F46D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F46D8);
  }

  return result;
}

unint64_t sub_23C41DC48()
{
  result = qword_27E1F46E0;
  if (!qword_27E1F46E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F46E0);
  }

  return result;
}

unint64_t sub_23C41DCA0()
{
  result = qword_27E1F46E8;
  if (!qword_27E1F46E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F46E8);
  }

  return result;
}

unint64_t sub_23C41DCF8()
{
  result = qword_27E1F46F0;
  if (!qword_27E1F46F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F46F0);
  }

  return result;
}

unint64_t sub_23C41DD50()
{
  result = qword_27E1F46F8;
  if (!qword_27E1F46F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F46F8);
  }

  return result;
}

uint64_t sub_23C41DDB4@<X0>(unsigned __int8 a3@<W2>, uint64_t a4@<X8>)
{
  if (a3 > 9u)
  {
    v5 = 1;
  }

  else
  {
    sub_23C436D6C();

    v5 = 0;
  }

  v6 = sub_23C436D7C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a4, v5, 1, v6);
}

uint64_t sub_23C41DFA8@<X0>(unsigned __int8 a3@<W2>, uint64_t a4@<X8>)
{
  if (a3 > 5u)
  {
    v5 = 1;
  }

  else
  {
    sub_23C436D6C();

    v5 = 0;
  }

  v6 = sub_23C436D7C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a4, v5, 1, v6);
}

uint64_t sub_23C41E100@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F45C0, &qword_23C438CB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_23C436F2C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4538, &unk_23C438230);
  sub_23C41ED28(v2 + *(v11 + 36), v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_23C41ED98(v6, &qword_27E1F45C0, &qword_23C438CB0);
    v12 = 1;
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    v13 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v14 = sub_23C43711C();
    [v13 setDateFormat_];

    [v13 setDoesRelativeDateFormatting_];
    v15 = sub_23C436EDC();
    v16 = [v13 stringFromDate_];

    sub_23C43714C();
    (*(v8 + 8))(v10, v7);
    sub_23C436D6C();

    v12 = 0;
  }

  v17 = sub_23C436D7C();
  return (*(*(v17 - 8) + 56))(a1, v12, 1, v17);
}

uint64_t sub_23C41E3BC(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_23C41F51C(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_23C436D7C();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_23C41E4E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = (a1 + 32);
  v3 = MEMORY[0x277D84F90];
  do
  {
    v5 = *v2++;
    v4 = v5;
    v6 = v5 == 5;
    v7 = 6512973;
    if (v5 != 5)
    {
      v7 = 0x6E6F69736956;
    }

    v8 = 0xE300000000000000;
    if (!v6)
    {
      v8 = 0xE600000000000000;
    }

    v9 = 0x5654656C707041;
    if (v4 != 3)
    {
      v9 = 0x646F50656D6F48;
    }

    if (v4 <= 4)
    {
      v7 = v9;
      v8 = 0xE700000000000000;
    }

    v10 = 1684099177;
    if (v4 != 1)
    {
      v10 = 0x6863746157;
    }

    v11 = 0xE400000000000000;
    if (v4 != 1)
    {
      v11 = 0xE500000000000000;
    }

    if (!v4)
    {
      v10 = 0x656E6F685069;
      v11 = 0xE600000000000000;
    }

    if (v4 <= 2)
    {
      v12 = v10;
    }

    else
    {
      v12 = v7;
    }

    if (v4 <= 2)
    {
      v13 = v11;
    }

    else
    {
      v13 = v8;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_23C41F410(0, *(v3 + 2) + 1, 1, v3);
    }

    v15 = *(v3 + 2);
    v14 = *(v3 + 3);
    if (v15 >= v14 >> 1)
    {
      v3 = sub_23C41F410((v14 > 1), v15 + 1, 1, v3);
    }

    *(v3 + 2) = v15 + 1;
    v16 = &v3[16 * v15];
    *(v16 + 4) = v12;
    *(v16 + 5) = v13;
    --v1;
  }

  while (v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F45F0, &qword_23C438288);
  sub_23C41ECC4();
  v17 = sub_23C4370FC();

  return v17;
}

uint64_t sub_23C41E6C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = (a1 + 40);
  v3 = MEMORY[0x277D84F90];
  do
  {
    v5 = *(v2 - 1);
    v4 = *v2;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_23C41F410(0, *(v3 + 2) + 1, 1, v3);
    }

    v7 = *(v3 + 2);
    v6 = *(v3 + 3);
    if (v7 >= v6 >> 1)
    {
      v3 = sub_23C41F410((v6 > 1), v7 + 1, 1, v3);
    }

    *(v3 + 2) = v7 + 1;
    v8 = &v3[16 * v7];
    *(v8 + 4) = v5;
    *(v8 + 5) = v4;
    v2 += 2;
    --v1;
  }

  while (v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F45F0, &qword_23C438288);
  sub_23C41ECC4();
  v9 = sub_23C4370FC();

  return v9;
}

uint64_t sub_23C41E7F0(uint64_t a1)
{
  v23 = sub_23C436E8C();
  MEMORY[0x28223BE20](v23);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  if (!v5)
  {
    return 0;
  }

  v7 = *(v2 + 16);
  v6 = v2 + 16;
  v8 = a1 + ((*(v6 + 64) + 32) & ~*(v6 + 64));
  v21 = *(v6 + 56);
  v22 = v7;
  v9 = (v6 - 8);
  v10 = MEMORY[0x277D84F90];
  do
  {
    v11 = v23;
    v12 = v6;
    v22(v4, v8, v23);
    v13 = sub_23C436E5C();
    v15 = v14;
    (*v9)(v4, v11);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_23C41F410(0, *(v10 + 2) + 1, 1, v10);
    }

    v17 = *(v10 + 2);
    v16 = *(v10 + 3);
    if (v17 >= v16 >> 1)
    {
      v10 = sub_23C41F410((v16 > 1), v17 + 1, 1, v10);
    }

    *(v10 + 2) = v17 + 1;
    v18 = &v10[16 * v17];
    *(v18 + 4) = v13;
    *(v18 + 5) = v15;
    v8 += v21;
    --v5;
    v6 = v12;
  }

  while (v5);
  v24 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F45F0, &qword_23C438288);
  sub_23C41ECC4();
  v19 = sub_23C4370FC();

  return v19;
}

uint64_t sub_23C41EA04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = a1 + 32;
  v3 = MEMORY[0x277D84F90];
  do
  {
    v2 += 8;
    v4 = sub_23C43746C();
    v6 = v5;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = sub_23C41F410(0, *(v3 + 2) + 1, 1, v3);
    }

    v8 = *(v3 + 2);
    v7 = *(v3 + 3);
    if (v8 >= v7 >> 1)
    {
      v3 = sub_23C41F410((v7 > 1), v8 + 1, 1, v3);
    }

    *(v3 + 2) = v8 + 1;
    v9 = &v3[16 * v8];
    *(v9 + 4) = v4;
    *(v9 + 5) = v6;
    --v1;
  }

  while (v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F45F0, &qword_23C438288);
  sub_23C41ECC4();
  v10 = sub_23C4370FC();

  return v10;
}

uint64_t sub_23C41EB5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

unint64_t sub_23C41EB94(uint64_t a1, uint64_t a2)
{
  v2 = sub_23C43745C();

  if (v2 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_23C41EBE0(uint64_t a1, uint64_t a2)
{
  v2 = sub_23C43745C();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_23C41EC2C(uint64_t a1, uint64_t a2)
{
  v2 = sub_23C43745C();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_23C41EC78(uint64_t a1, uint64_t a2)
{
  v2 = sub_23C43745C();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_23C41ECC4()
{
  result = qword_27E1F4710;
  if (!qword_27E1F4710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1F45F0, &qword_23C438288);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F4710);
  }

  return result;
}

uint64_t sub_23C41ED28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F45C0, &qword_23C438CB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23C41ED98(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

char *sub_23C41EE40()
{
  result = sub_23C41EE64();
  qword_27E1F4718 = result;
  unk_27E1F4720 = v1;
  return result;
}

char *sub_23C41EE64()
{
  v24[1] = *MEMORY[0x277D85DE8];
  v0 = sub_23C436F5C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = 37;
  v4 = sub_23C4371FC();
  *(v4 + 16) = 37;
  *(v4 + 48) = 0u;
  *(v4 + 61) = 0;
  *(v4 + 32) = 0u;
  v5 = sysctlbyname("kern.bootsessionuuid", (v4 + 32), &v23, 0, 0);
  if (!v5)
  {
    v21 = sub_23C41F740(v4, v6);

    return v21;
  }

  v7 = v5;
  v8 = MEMORY[0x23EED0DC0]();
  result = strerror(v8);
  if (result)
  {
    v10 = sub_23C43710C();
    v12 = v11;

    if (v12)
    {
      v13 = v10;
    }

    else
    {
      v13 = 0x6E776F6E6B6E55;
    }

    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = 0xE700000000000000;
    }

    if (qword_2814FA108 != -1)
    {
      swift_once();
    }

    v15 = sub_23C43701C();
    __swift_project_value_buffer(v15, qword_2814FA208);

    v16 = sub_23C436FFC();
    v17 = sub_23C4372CC();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24[0] = v19;
      *v18 = 67109378;
      *(v18 + 4) = v7;
      *(v18 + 8) = 2080;
      v20 = sub_23C423048(v13, v14, v24);

      *(v18 + 10) = v20;
      _os_log_impl(&dword_23C414000, v16, v17, "Failed to fetch current boot session UUID with error: %d -> %s", v18, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x23EED1A40](v19, -1, -1);
      MEMORY[0x23EED1A40](v18, -1, -1);
    }

    else
    {
    }

    sub_23C436F4C();
    v21 = sub_23C436F3C();
    (*(v1 + 8))(v3, v0);
    return v21;
  }

  __break(1u);
  return result;
}

uint64_t static SystemProperties.bootSessionUUID.getter()
{
  if (qword_27E1F4498 != -1)
  {
    swift_once();
  }

  v0 = qword_27E1F4718;

  return v0;
}

uint64_t static SystemProperties.getDeviceID()()
{
  v0 = sub_23C43711C();
  v1 = MGCopyAnswer();

  if (v1 && (swift_dynamicCast() & 1) != 0)
  {
    return v7;
  }

  if (qword_2814FA108 != -1)
  {
    swift_once();
  }

  v3 = sub_23C43701C();
  __swift_project_value_buffer(v3, qword_2814FA208);
  v4 = sub_23C436FFC();
  v5 = sub_23C4372CC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_23C414000, v4, v5, "Failed to fetch unique device ID.", v6, 2u);
    MEMORY[0x23EED1A40](v6, -1, -1);
  }

  return 0;
}

uint64_t getEnumTagSinglePayload for SystemProperties(unsigned int *a1, int a2)
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

  return *a1;
}

_WORD *storeEnumTagSinglePayload for SystemProperties(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

char *sub_23C41F410(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4728, &qword_23C4389D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_23C41F51C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4708, &qword_23C438988);
  v10 = *(sub_23C436D7C() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_23C436D7C() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
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

uint64_t sub_23C41F740(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    if (!*(a1 + 32))
    {
      return MEMORY[0x2821FBD68](a1 + 32, 0);
    }

    a2 = 0;
    v3 = v2 - 1;
    while (v3 != a2)
    {
      if (!*(a1 + 33 + a2++))
      {
        a1 += 32;
        return MEMORY[0x2821FBD68](a1, a2);
      }
    }

    __break(1u);
  }

  __break(1u);
  return MEMORY[0x2821FBD68](a1, a2);
}

uint64_t sub_23C41F7A8()
{
  sub_23C43757C();
  sub_23C4371AC();
  return sub_23C43759C();
}

uint64_t sub_23C41F814(uint64_t a1)
{
  sub_23C43757C();
  sub_23C4371AC();
  return sub_23C43759C();
}

uint64_t sub_23C41F864@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_23C43745C();

  *a2 = v3 != 0;
  return result;
}

unint64_t sub_23C41F8D8()
{
  result = qword_27E1F4730;
  if (!qword_27E1F4730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F4730);
  }

  return result;
}

uint64_t sub_23C41F954(uint64_t a1, void *a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[4];
  *v7 = v3;
  v7[1] = sub_23C41FA0C;

  return MEMORY[0x282200430](a1, v6, v8, v9, v10);
}

uint64_t sub_23C41FA0C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t TaskLimiter.__allocating_init(timeout:)(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + 112) = MEMORY[0x277D84F98];
  *(v2 + 120) = a1;
  return v2;
}

uint64_t TaskLimiter.init(timeout:)(uint64_t a1)
{
  swift_defaultActor_initialize();
  *(v1 + 112) = MEMORY[0x277D84F98];
  *(v1 + 120) = a1;
  return v1;
}

uint64_t sub_23C41FB80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[34] = a6;
  v7[35] = v6;
  v7[32] = a4;
  v7[33] = a5;
  v7[30] = a2;
  v7[31] = a3;
  v7[29] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4738, &qword_23C438F40);
  v7[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23C41FC28, v6, 0);
}

uint64_t sub_23C41FC28()
{
  v68 = v0;
  v1 = *(v0 + 280);
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = *(v0 + 240);
    v3 = *(v0 + 248);

    v5 = sub_23C4235F0(v4, v3);
    if (v6)
    {
      sub_23C423938(*(v2 + 56) + 40 * v5, v0 + 16);

      sub_23C423938(v0 + 16, v0 + 136);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4758, &qword_23C439280);
      v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1F4750, &unk_23C439190);
      sub_23C43729C();
      if (swift_dynamicCast())
      {
        v8 = *(v0 + 224);
        *(v0 + 296) = v8;
        if (qword_2814FA108 != -1)
        {
          swift_once();
        }

        v9 = sub_23C43701C();
        __swift_project_value_buffer(v9, qword_2814FA208);

        v10 = sub_23C436FFC();
        v11 = sub_23C4372BC();

        if (os_log_type_enabled(v10, v11))
        {
          v13 = *(v0 + 240);
          v12 = *(v0 + 248);
          v14 = swift_slowAlloc();
          v15 = swift_slowAlloc();
          v67[0] = v15;
          *v14 = 136315138;
          *(v14 + 4) = sub_23C423048(v13, v12, v67);
          _os_log_impl(&dword_23C414000, v10, v11, "TaskLimiter: reusing existing task for identifier %s", v14, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v15);
          MEMORY[0x23EED1A40](v15, -1, -1);
          MEMORY[0x23EED1A40](v14, -1, -1);
        }

        v16 = swift_task_alloc();
        *(v0 + 304) = v16;
        *v16 = v0;
        v16[1] = sub_23C42054C;
        v17 = *(v0 + 272);
        v18 = *(v0 + 232);
        v19 = MEMORY[0x277D84950];
        v20 = v8;
        v21 = v7;
        goto LABEL_25;
      }

      __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    }

    else
    {
    }
  }

  if (qword_2814FA108 != -1)
  {
    swift_once();
  }

  v22 = sub_23C43701C();
  __swift_project_value_buffer(v22, qword_2814FA208);

  v23 = sub_23C436FFC();
  v24 = sub_23C4372BC();

  if (os_log_type_enabled(v23, v24))
  {
    v26 = *(v0 + 240);
    v25 = *(v0 + 248);
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v67[0] = v28;
    *v27 = 136315138;
    *(v27 + 4) = sub_23C423048(v26, v25, v67);
    _os_log_impl(&dword_23C414000, v23, v24, "TaskLimiter: creating new task for identifier %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x23EED1A40](v28, -1, -1);
    MEMORY[0x23EED1A40](v27, -1, -1);
  }

  v29 = *(v1 + 112);
  if (!*(v29 + 16))
  {
    goto LABEL_19;
  }

  v31 = *(v0 + 240);
  v30 = *(v0 + 248);

  v32 = sub_23C4235F0(v31, v30);
  if ((v33 & 1) == 0)
  {

LABEL_19:
    *(v0 + 88) = 0;
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    goto LABEL_20;
  }

  sub_23C423938(*(v29 + 56) + 40 * v32, v0 + 56);

LABEL_20:
  v35 = *(v0 + 280);
  v34 = *(v0 + 288);
  v37 = *(v0 + 264);
  v36 = *(v0 + 272);
  v38 = *(v0 + 256);
  v39 = sub_23C43726C();
  v40 = *(*(v39 - 8) + 56);
  v40(v34, 1, 1, v39);
  sub_23C417A7C(v0 + 56, v0 + 96, &qword_27E1F4740, &qword_23C438AD8);
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  *(v41 + 24) = 0;
  *(v41 + 32) = v36;
  v42 = *(v0 + 112);
  *(v41 + 40) = *(v0 + 96);
  *(v41 + 56) = v42;
  *(v41 + 72) = *(v0 + 128);
  *(v41 + 80) = v38;
  *(v41 + 88) = v37;

  v43 = sub_23C4214B8(0, 0, v34, &unk_23C438AE0, v41, v36);
  *(v0 + 320) = v43;
  v40(v34, 1, 1, v39);
  v45 = sub_23C42503C(&qword_27E1F4748, v44, type metadata accessor for TaskLimiter, &protocol conformance descriptor for TaskLimiter);
  v46 = swift_allocObject();
  v46[2] = v35;
  v46[3] = v45;
  v46[4] = v36;
  v46[5] = v35;
  v46[6] = v43;
  swift_retain_n();

  v47 = sub_23C42120C(0, 0, v34, &unk_23C438AF0, v46, MEMORY[0x277D84F78] + 8);
  *(v0 + 328) = v47;
  v40(v34, 1, 1, v39);
  v48 = swift_allocObject();
  v48[2] = 0;
  v48[3] = 0;
  v48[4] = v36;
  v48[5] = v43;
  v48[6] = v47;

  v49 = sub_23C4214B8(0, 0, v34, &unk_23C438B00, v48, v36);
  *(v0 + 336) = v49;

  v50 = sub_23C436FFC();
  v51 = sub_23C4372BC();

  if (os_log_type_enabled(v50, v51))
  {
    v53 = *(v0 + 240);
    v52 = *(v0 + 248);
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v67[0] = v55;
    *v54 = 136315138;
    *(v54 + 4) = sub_23C423048(v53, v52, v67);
    _os_log_impl(&dword_23C414000, v50, v51, "TaskLimiter: storing task for identifier %s", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v55);
    MEMORY[0x23EED1A40](v55, -1, -1);
    MEMORY[0x23EED1A40](v54, -1, -1);
  }

  v57 = *(v0 + 240);
  v56 = *(v0 + 248);
  v58 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1F4750, &unk_23C439190);
  v67[3] = sub_23C43729C();
  v67[4] = swift_getWitnessTable();
  v67[0] = v49;
  swift_beginAccess();

  sub_23C422CB0(v67, v57, v56);
  swift_endAccess();

  v59 = sub_23C436FFC();
  v60 = sub_23C4372BC();

  if (os_log_type_enabled(v59, v60))
  {
    v62 = *(v0 + 240);
    v61 = *(v0 + 248);
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v67[0] = v64;
    *v63 = 136315138;
    *(v63 + 4) = sub_23C423048(v62, v61, v67);
    _os_log_impl(&dword_23C414000, v59, v60, "TaskLimiter: performing task operation for identifier %s", v63, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v64);
    MEMORY[0x23EED1A40](v64, -1, -1);
    MEMORY[0x23EED1A40](v63, -1, -1);
  }

  v65 = swift_task_alloc();
  *(v0 + 344) = v65;
  *v65 = v0;
  v65[1] = sub_23C4206EC;
  v17 = *(v0 + 272);
  v18 = *(v0 + 232);
  v19 = MEMORY[0x277D84950];
  v20 = v49;
  v21 = v58;
LABEL_25:

  return MEMORY[0x282200430](v18, v20, v17, v21, v19);
}

uint64_t sub_23C42054C()
{
  v2 = *v1;
  *(*v1 + 312) = v0;

  v3 = *(v2 + 280);
  if (v0)
  {
    v4 = sub_23C4208D8;
  }

  else
  {
    v4 = sub_23C420678;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_23C420678()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23C4206EC()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  v3 = *(v2 + 280);
  if (v0)
  {
    v4 = sub_23C42094C;
  }

  else
  {
    v4 = sub_23C420818;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_23C420818()
{
  v1 = v0[35];
  v3 = v0[30];
  v2 = v0[31];

  sub_23C41ED98((v0 + 7), &qword_27E1F4740, &qword_23C438AD8);
  sub_23C420A0C(v3, v2, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_23C4208D8()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23C42094C()
{
  v1 = v0[35];
  v3 = v0[30];
  v2 = v0[31];

  sub_23C41ED98((v0 + 7), &qword_27E1F4740, &qword_23C438AD8);
  sub_23C420A0C(v3, v2, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_23C420A0C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (qword_2814FA108 != -1)
  {
    swift_once();
  }

  v5 = sub_23C43701C();
  __swift_project_value_buffer(v5, qword_2814FA208);

  v6 = sub_23C436FFC();
  v7 = sub_23C4372BC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *&v11[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_23C423048(a1, a2, v11);
    _os_log_impl(&dword_23C414000, v6, v7, "TaskLimiter: cleaning up task for identifier %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x23EED1A40](v9, -1, -1);
    MEMORY[0x23EED1A40](v8, -1, -1);
  }

  v12 = 0;
  memset(v11, 0, sizeof(v11));
  swift_beginAccess();

  sub_23C422CB0(v11, a1, a2);
  return swift_endAccess();
}

uint64_t sub_23C420BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[11] = a1;
  v6[12] = a4;
  return MEMORY[0x2822009F8](sub_23C420BC8, 0, 0);
}

uint64_t sub_23C420BC8()
{
  sub_23C417A7C(*(v0 + 96), v0 + 16, &qword_27E1F4740, &qword_23C438AD8);
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    v3 = *(v2 + 16);
    *(v0 + 80) = swift_getAssociatedTypeWitness();
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 56));
    v10 = (v3 + *v3);
    v5 = swift_task_alloc();
    *(v0 + 120) = v5;
    *v5 = v0;
    v5[1] = sub_23C420E64;

    return v10(boxed_opaque_existential_0, v1, v2);
  }

  else
  {
    sub_23C41ED98(v0 + 16, &qword_27E1F4740, &qword_23C438AD8);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    v7 = *(v0 + 104);
    sub_23C41ED98(v0 + 56, &qword_27E1F4788, &qword_23C4392C0);
    v11 = (v7 + *v7);
    v8 = swift_task_alloc();
    *(v0 + 136) = v8;
    *v8 = v0;
    v8[1] = sub_23C42108C;
    v9 = *(v0 + 88);

    return v11(v9);
  }
}

uint64_t sub_23C420E64()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_23C421180;
  }

  else
  {
    v2 = sub_23C420F78;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23C420F78()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[13];
  sub_23C41ED98((v0 + 7), &qword_27E1F4788, &qword_23C4392C0);
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  v0[17] = v2;
  *v2 = v0;
  v2[1] = sub_23C42108C;
  v3 = v0[11];

  return v5(v3);
}

uint64_t sub_23C42108C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_23C421180()
{
  __swift_deallocate_boxed_opaque_existential_0(v0 + 56);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23C42120C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4738, &qword_23C438F40);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_23C417A7C(a3, v23 - v10, &qword_27E1F4738, &qword_23C438F40);
  v12 = sub_23C43726C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_23C41ED98(v11, &qword_27E1F4738, &qword_23C438F40);
  }

  else
  {
    sub_23C43725C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_23C43720C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v23[0] = a2;
      v19 = sub_23C43718C() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_23C41ED98(a3, &qword_27E1F4738, &qword_23C438F40);

      return v21;
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

  sub_23C41ED98(a3, &qword_27E1F4738, &qword_23C438F40);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_23C4214B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4738, &qword_23C438F40);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v24[-1] - v11;
  v24[5] = a4;
  v24[6] = a5;
  sub_23C417A7C(a3, &v24[-1] - v11, &qword_27E1F4738, &qword_23C438F40);
  v13 = sub_23C43726C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_23C41ED98(v12, &qword_27E1F4738, &qword_23C438F40);
  }

  else
  {
    sub_23C43725C();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_23C43720C();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_23C43718C();
      sub_23C422F8C(v20 + 32, v24);

      v21 = v24[0];
      sub_23C41ED98(a3, &qword_27E1F4738, &qword_23C438F40);

      return v21;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_23C41ED98(a3, &qword_27E1F4738, &qword_23C438F40);
  if (v19 | v17)
  {
    v24[1] = 0;
    v24[2] = 0;
    v24[3] = v17;
    v24[4] = v19;
  }

  return swift_task_create();
}

uint64_t sub_23C42173C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v8 = sub_23C4373EC();
  v6[5] = v8;
  v6[6] = *(v8 - 8);
  v6[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23C421804, a4, 0);
}

uint64_t sub_23C421804()
{
  v1 = *(*(v0 + 16) + 120);
  v2 = 1000000000000000000 * v1;
  v3 = (v1 * 0xDE0B6B3A7640000uLL) >> 64;
  sub_23C4374FC();
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_23C4218E8;

  return sub_23C435954(v2, v3, 0, 0, 1);
}

uint64_t sub_23C4218E8()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  *(*v1 + 72) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 16);
  if (v0)
  {
    v7 = sub_23C421BC4;
  }

  else
  {
    v7 = sub_23C421A70;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_23C421A70()
{
  if (qword_2814FA108 != -1)
  {
    swift_once();
  }

  v1 = sub_23C43701C();
  __swift_project_value_buffer(v1, qword_2814FA208);
  v2 = sub_23C436FFC();
  v3 = sub_23C4372CC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_23C414000, v2, v3, "Task limitier timed out", v4, 2u);
    MEMORY[0x23EED1A40](v4, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4750, &unk_23C439190);
  sub_23C43728C();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_23C421BC4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23C421C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return MEMORY[0x2822009F8](sub_23C421C4C, 0, 0);
}

uint64_t sub_23C421C4C()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  v3 = *(v0 + 24);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_23C421D48;
  v5 = *(v0 + 40);
  v6 = *(v0 + 16);

  return MEMORY[0x2822008A0](v6, 0, 0, 0xD00000000000001ELL, 0x800000023C4396C0, sub_23C424C88, v2, v5);
}

uint64_t sub_23C421D48()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_23C421E84, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_23C421E84()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23C421EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v38 = a2;
  v39 = a3;
  v35 = a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1F4750, &unk_23C439190);
  v32 = a4;
  v6 = sub_23C43723C();
  v7 = *(v6 - 8);
  v31 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4738, &qword_23C438F40);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v26 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4778, &qword_23C439290);
  v13 = swift_allocObject();
  v27 = v13;
  *(v13 + 20) = 0;
  *(v13 + 16) = 0;
  v33 = sub_23C43726C();
  v14 = *(v33 - 8);
  v36 = *(v14 + 56);
  v37 = v14 + 56;
  v36(v12, 1, 1, v33);
  v15 = *(v7 + 16);
  v30 = v7 + 16;
  v34 = v15;
  v16 = v6;
  v15(v9, a1, v6);
  v17 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = 0;
  *(v18 + 3) = 0;
  *(v18 + 4) = a4;
  v19 = v39;
  *(v18 + 5) = v38;
  *(v18 + 6) = v19;
  v20 = v27;
  *(v18 + 7) = v27;
  v28 = *(v7 + 32);
  v29 = v7 + 32;
  v28(&v18[v17], v9, v16);

  v21 = v20;

  sub_23C4330D8(0, 0, v12, &unk_23C438C18, v18);

  v36(v12, 1, 1, v33);
  v34(v9, v35, v16);
  v22 = swift_allocObject();
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  v24 = v38;
  v23 = v39;
  *(v22 + 4) = v32;
  *(v22 + 5) = v23;
  *(v22 + 6) = v24;
  *(v22 + 7) = v21;
  v28(&v22[v17], v9, v16);

  sub_23C42120C(0, 0, v12, &unk_23C438C28, v22, MEMORY[0x277D84F78] + 8);
}

uint64_t sub_23C422240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[4] = a7;
  v8[5] = a8;
  v8[2] = a5;
  v8[3] = a6;
  v8[6] = *(a8 - 8);
  v11 = swift_task_alloc();
  v8[7] = v11;
  v12 = swift_task_alloc();
  v8[8] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4750, &unk_23C439190);
  v8[9] = v13;
  *v12 = v8;
  v12[1] = sub_23C422374;
  v14 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v11, a4, a8, v13, v14);
}

uint64_t sub_23C422374()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_23C42259C;
  }

  else
  {
    v2 = sub_23C422488;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_23C422488()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  v3 = *(v0 + 24);
  v9 = *(v0 + 32);
  sub_23C43728C();
  v4 = swift_task_alloc();
  v4[1] = vextq_s8(v9, v9, 8uLL);
  v4[2].i64[0] = v2;
  os_unfair_lock_lock((v3 + 20));
  sub_23C4250A4((v3 + 16));
  os_unfair_lock_unlock((v3 + 20));
  if (!v1)
  {
    v6 = *(v0 + 48);
    v5 = *(v0 + 56);
    v7 = *(v0 + 40);

    (*(v6 + 8))(v5, v7);

    v8 = *(v0 + 8);

    v8();
  }
}

uint64_t sub_23C42259C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  v3[1] = vextq_s8(*(v0 + 32), *(v0 + 32), 8uLL);
  v3[2].i64[0] = v1;
  os_unfair_lock_lock((v2 + 20));
  sub_23C425084((v2 + 16));
  os_unfair_lock_unlock((v2 + 20));

  v4 = *(v0 + 8);

  return v4();
}

_BYTE *sub_23C422678(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 - 8);
  result = MEMORY[0x28223BE20](a1);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*result & 1) == 0)
  {
    if (qword_2814FA108 != -1)
    {
      swift_once();
    }

    v11 = sub_23C43701C();
    __swift_project_value_buffer(v11, qword_2814FA208);
    v12 = sub_23C436FFC();
    v13 = sub_23C4372BC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_23C414000, v12, v13, "Timeoutable task finished before timeout", v14, 2u);
      MEMORY[0x23EED1A40](v14, -1, -1);
    }

    (*(v7 + 16))(v10, a3, a4);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1F4750, &unk_23C439190);
    sub_23C43723C();
    result = sub_23C43722C();
  }

  *a1 = 1;
  return result;
}

_BYTE *sub_23C422858(_BYTE *result, int a2, id a3, uint64_t a4)
{
  v4 = result;
  if ((*result & 1) == 0)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1F4750, &unk_23C439190);
    sub_23C43723C();
    result = sub_23C43721C();
  }

  *v4 = 1;
  return result;
}

uint64_t sub_23C4228EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[4] = a7;
  v8[5] = a8;
  v8[2] = a5;
  v8[3] = a6;
  v10 = swift_task_alloc();
  v8[6] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4750, &unk_23C439190);
  v8[7] = v11;
  *v10 = v8;
  v10[1] = sub_23C4229C0;
  v12 = MEMORY[0x277D84950];
  v13 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200430](v11, a4, v13, v11, v12);
}

uint64_t sub_23C4229C0()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_23C422BA8;
  }

  else
  {
    v2 = sub_23C422AD4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_23C422AD4()
{
  v1 = v0[8];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];
  sub_23C43728C();
  v5 = swift_task_alloc();
  *(v5 + 16) = v2;
  *(v5 + 24) = v3;
  os_unfair_lock_lock((v4 + 20));
  sub_23C425020((v4 + 16));
  os_unfair_lock_unlock((v4 + 20));
  if (!v1)
  {

    v6 = v0[1];

    v6();
  }
}

_BYTE *sub_23C422BC0(_BYTE *result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  if ((*result & 1) == 0)
  {
    sub_23C43724C();
    sub_23C42503C(&qword_27E1F4780, 255, MEMORY[0x277D85678], MEMORY[0x277D85680]);
    swift_allocError();
    sub_23C4370CC();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1F4750, &unk_23C439190);
    sub_23C43723C();
    result = sub_23C43721C();
  }

  *v3 = 1;
  return result;
}

uint64_t sub_23C422CB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_23C424C70(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_23C424334(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_23C41ED98(a1, &qword_27E1F4740, &qword_23C438AD8);
    sub_23C423B60(a2, a3, v9);

    return sub_23C41ED98(v9, &qword_27E1F4740, &qword_23C438AD8);
  }

  return result;
}

uint64_t TaskLimiter.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t TaskLimiters.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x277D84F98];
  return v0;
}

uint64_t TaskLimiters.init()()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x277D84F98];
  return v0;
}

uint64_t TaskLimiters.limiter(key:timeout:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  v8 = *(v3 + 112);
  if (*(v8 + 16) && (v9 = sub_23C4235F0(a1, a2), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    type metadata accessor for TaskLimiter();
    v11 = swift_allocObject();
    swift_defaultActor_initialize();
    *(v11 + 112) = MEMORY[0x277D84F98];
    *(v11 + 120) = a3;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v4 + 112);
    *(v4 + 112) = 0x8000000000000000;
    sub_23C424488(v11, a1, a2, isUniquelyReferenced_nonNull_native);

    *(v4 + 112) = v14;
    swift_endAccess();
  }

  return v11;
}

uint64_t _s14ACSEFoundation11TaskLimiterCfD_0()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_23C422F8C@<X0>(uint64_t result@<X0>, uint64_t *a7@<X8>)
{
  if (result)
  {

    result = swift_task_create();
    *a7 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_23C423048(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23C423114(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_23C424C14(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_23C423114(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_23C423220(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = sub_23C43737C();
    a6 = v11;
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

void *sub_23C423220(uint64_t a1, unint64_t a2)
{
  v3 = sub_23C42326C(a1, a2);
  sub_23C42339C(&unk_284F075D8);
  return v3;
}

void *sub_23C42326C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_23C423488(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_23C43737C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_23C4371CC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_23C423488(v10, 0);
        result = sub_23C43735C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_23C42339C(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_23C4234FC(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_23C423488(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4768, &qword_23C438C00);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_23C4234FC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4768, &qword_23C438C00);
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
    if (v10 != a4 || v12 >= &v13[v8])
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

unint64_t sub_23C4235F0(uint64_t a1, uint64_t a2)
{
  sub_23C43757C();
  sub_23C4371AC();
  v4 = sub_23C43759C();

  return sub_23C4239E0(a1, a2, v4);
}

uint64_t sub_23C423668(uint64_t a1)
{
  v4 = v1[3];
  v5 = v1[2];
  v6 = v1[10];
  v7 = v1[11];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23C4251CC;

  return sub_23C420BA4(a1, v5, v4, (v1 + 5), v6, v7);
}

uint64_t sub_23C423760(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_23C4251CC;

  return sub_23C42173C(a1, v4, v5, v7, v8, v6);
}

uint64_t objectdestroy_3Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_23C423870(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_23C4251CC;

  return sub_23C421C28(a1, v4, v5, v7, v8, v6);
}

uint64_t sub_23C423938(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_23C42399C(uint64_t a1)
{
  v2 = sub_23C43732C();

  return sub_23C423A98(a1, v2);
}

unint64_t sub_23C4239E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_23C4374AC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_23C423A98(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_23C4247DC(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x23EED10D0](v9, a1);
      sub_23C424838(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

double sub_23C423B60@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_23C4235F0(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_23C4248FC();
      v10 = v12;
    }

    sub_23C424C70((*(v10 + 56) + 40 * v8), a3);
    sub_23C424178(v8, v10);
    *v4 = v10;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_23C423C0C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4770, &qword_23C438C08);
  v33 = v4;
  result = sub_23C43742C();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 40 * v20);
      if (v33)
      {
        sub_23C424C70(v24, v34);
      }

      else
      {
        sub_23C423938(v24, v34);
      }

      sub_23C43757C();
      sub_23C4371AC();
      result = sub_23C43759C();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_23C424C70(v34, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_23C423ED0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4760, &qword_23C438BF8);
  v34 = v4;
  result = sub_23C43742C();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_23C43757C();
      sub_23C4371AC();
      result = sub_23C43759C();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_23C424178(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23C43731C() + 1) & ~v5;
    do
    {
      sub_23C43757C();

      sub_23C4371AC();
      v11 = sub_23C43759C();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (v3 != v6 || v17 >= v18 + 40)
        {
          v9 = *v18;
          v10 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v9;
          *(v17 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_23C424334(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_23C4235F0(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_23C4248FC();
      v11 = v19;
      goto LABEL_8;
    }

    sub_23C423C0C(v16, a4 & 1);
    v11 = sub_23C4235F0(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_23C4374CC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 40 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    return sub_23C424C70(a1, v22);
  }

  else
  {
    sub_23C42488C(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_23C424488(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_23C4235F0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_23C423ED0(v16, a4 & 1);
      v11 = sub_23C4235F0(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_23C4374CC();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_23C424AA4();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

uint64_t dispatch thunk of TaskLimiter.perform<A>(identifier:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(*v6 + 136) + **(*v6 + 136));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_23C41FA0C;

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_23C42488C(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_23C424C70(a4, a5[7] + 40 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_23C4248FC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4770, &qword_23C438C08);
  v2 = *v0;
  v3 = sub_23C43741C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_23C423938(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_23C424C70(v25, *(v4 + 56) + v22);
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_23C424AA4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4760, &qword_23C438BF8);
  v2 = *v0;
  v3 = sub_23C43741C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

uint64_t sub_23C424C14(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_23C424C70(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_23C424C94(uint64_t a1)
{
  v3 = v2;
  v5 = v1[4];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1F4750, &unk_23C439190);
  v6 = *(sub_23C43723C() - 8);
  v7 = (*(v6 + 80) + 64) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[5];
  v11 = v1[6];
  v12 = v1[7];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_23C41FA0C;

  return sub_23C422240(a1, v8, v9, v10, v11, v12, v1 + v7, v5);
}

uint64_t objectdestroy_30Tm()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1F4750, &unk_23C439190);
  v1 = sub_23C43723C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_23C424EDC(uint64_t a1)
{
  v3 = v2;
  v5 = v1[4];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1F4750, &unk_23C439190);
  v6 = *(sub_23C43723C() - 8);
  v7 = (*(v6 + 80) + 64) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[5];
  v11 = v1[6];
  v12 = v1[7];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_23C4251CC;

  return sub_23C4228EC(a1, v8, v9, v10, v11, v12, v1 + v7, v5);
}

uint64_t sub_23C42503C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t __swift_deallocate_boxed_opaque_existential_0(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x23EED1A40);
  }

  return result;
}

double static iCloudTapToRadar.settings.getter@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0x4449656C646E7542;
  *(a1 + 8) = 0xE800000000000000;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  strcpy((a1 + 72), "Classification");
  *(a1 + 87) = -18;
  *(a1 + 88) = 10;
  *(a1 + 96) = 0x6375646F72706552;
  *(a1 + 104) = 0xEF7974696C696269;
  *(a1 + 112) = 6;
  *(a1 + 120) = 0x656C746954;
  *(a1 + 128) = 0xE500000000000000;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0x7470697263736544;
  *(a1 + 160) = 0xEB000000006E6F69;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0x7364726F7779654BLL;
  *(a1 + 192) = 0xE800000000000000;
  v2 = MEMORY[0x277D84F90];
  *(a1 + 200) = MEMORY[0x277D84F90];
  v3 = type metadata accessor for TapToRadarDraft(0);
  v4 = (a1 + v3[11]);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4538, &unk_23C438230) + 36);
  v6 = sub_23C436F2C();
  (*(*(v6 - 8) + 56))(&v4[v5], 1, 1, v6);
  *v4 = 0x7349664F656D6954;
  *(v4 + 1) = 0xEB00000000657573;
  v7 = (a1 + v3[12]);
  *v7 = 0x656D686361747441;
  v7[1] = 0xEB0000000073746ELL;
  v7[2] = v2;
  v8 = (a1 + v3[13]);
  *v8 = 0xD000000000000011;
  v8[1] = 0x800000023C4396E0;
  v8[2] = v2;
  v9 = (a1 + v3[14]);
  *v9 = 0xD000000000000014;
  v9[1] = 0x800000023C439700;
  v9[2] = v2;
  v10 = (a1 + v3[15]);
  strcpy(v10, "DeleteOnAttach");
  v10[15] = -18;
  v10[16] = 0;
  v11 = (a1 + v3[16]);
  *v11 = 0x4449656369766544;
  v11[1] = 0xE900000000000073;
  v11[2] = v2;
  v12 = a1 + v3[17];
  strcpy(v12, "DeviceClasses");
  *(v12 + 14) = -4864;
  *(v12 + 16) = v2;
  v13 = a1 + v3[18];
  strcpy(v13, "DeviceModels");
  *(v13 + 13) = 0;
  *(v13 + 14) = -5120;
  *(v13 + 16) = v2;
  v14 = (a1 + v3[19]);
  *v14 = 0xD000000000000016;
  v14[1] = 0x800000023C439720;
  v14[2] = 0;
  v15 = a1 + v3[20];
  *v15 = 0xD00000000000001ALL;
  *(v15 + 8) = 0x800000023C439740;
  *(v15 + 16) = 0;
  v16 = a1 + v3[21];
  *v16 = 0x676169446F747541;
  *(v16 + 8) = 0xEF73636974736F6ELL;
  *(v16 + 16) = 0;
  v17 = (a1 + v3[22]);
  *v17 = 0xD00000000000001BLL;
  v17[1] = 0x800000023C439760;
  v17[2] = v2;
  v18 = (a1 + v3[23]);
  *v18 = 0xD000000000000018;
  v18[1] = 0x800000023C439780;
  v18[2] = 0;
  v18[3] = 0;
  *(v15 + 16) = 1;
  *(a1 + 32) = xmmword_23C438C30;
  *(a1 + 48) = 0x800000023C4397A0;
  *&result = 5459817;
  *(a1 + 56) = xmmword_23C438C40;
  return result;
}

void sub_23C4255A0()
{
  v1 = v0;
  v2 = sub_23C436F7C();
  v42 = *(v2 - 8);
  v43 = v2;
  MEMORY[0x28223BE20](v2);
  v41 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23C436FAC();
  v39 = *(v4 - 8);
  v40 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23C436F2C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23C436FDC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v1 aa_addClientInfoHeaders];
  [v1 aa_addMultiUserDeviceHeaderIfEnabled];
  v15 = sub_23C43711C();
  [v1 aa:v15 addContentTypeHeaders:?];

  [v1 ak_addDeviceUDIDHeader];
  v16 = [objc_opt_self() systemTimeZone];
  sub_23C436FCC();

  sub_23C436F1C();
  sub_23C436FBC();
  v18 = v17;
  (*(v8 + 8))(v10, v7);
  (*(v12 + 8))(v14, v11);
  if (v18)
  {
    v19 = sub_23C43711C();

    v20 = sub_23C43711C();
    [v1 setValue:v19 forHTTPHeaderField:v20];
  }

  v21 = [objc_opt_self() currentInfo];
  if (!v21)
  {
    __break(1u);
    goto LABEL_10;
  }

  v22 = v21;
  v23 = [v21 udid];

  v24 = sub_23C43711C();
  [v1 setValue:v23 forHTTPHeaderField:v24];

  v25 = [objc_opt_self() currentLocale];
  sub_23C436F9C();

  v26 = v41;
  sub_23C436F8C();
  (*(v39 + 8))(v6, v40);
  sub_23C436F6C();
  (*(v42 + 8))(v26, v43);
  v27 = sub_23C43711C();

  v28 = sub_23C43711C();
  [v1 setValue:v27 forHTTPHeaderField:v28];

  v29 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v29 setDateStyle_];
  [v29 setTimeStyle_];
  v30 = [v29 dateFormat];
  if (!v30)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v31 = v30;

  v32 = sub_23C43711C();
  [v1 setValue:v31 forHTTPHeaderField:v32];

  v33 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v33 setDateStyle_];
  [v33 setTimeStyle_];
  v34 = [v33 dateFormat];
  if (!v34)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v35 = v34;

  v36 = sub_23C43711C();
  [v1 setValue:v35 forHTTPHeaderField:v36];

  v44[3] = &type metadata for SwiftUIFeatures;
  v44[4] = sub_23C426A20();
  LOBYTE(v36) = sub_23C436FEC();
  __swift_destroy_boxed_opaque_existential_0(v44);
  if (v36)
  {
    v37 = sub_23C43711C();
    v38 = sub_23C43711C();
    [v1 setValue:v37 forHTTPHeaderField:v38];
  }
}

uint64_t sub_23C425C24(uint64_t a1)
{
  *(v2 + 160) = a1;
  *(v2 + 168) = v1;
  return MEMORY[0x2822009F8](sub_23C425C44, 0, 0);
}

uint64_t sub_23C425C44()
{
  v1 = v0[20];
  v2 = v0[21];
  [v1 aa_needsEmailConfiguration];
  v3 = sub_23C43711C();

  v4 = sub_23C43711C();
  [v2 setValue:v3 forHTTPHeaderField:v4];

  [v1 isEnabledForDataclass_];
  v5 = sub_23C43711C();

  v6 = sub_23C43711C();
  [v2 setValue:v5 forHTTPHeaderField:v6];

  [v1 isEnabledForDataclass_];
  v7 = sub_23C43711C();

  v8 = sub_23C43711C();
  [v2 setValue:v7 forHTTPHeaderField:v8];

  v9 = [objc_opt_self() mainBundle];
  v10 = [v9 bundleIdentifier];

  if (v10)
  {
    v11 = sub_23C43714C();
    v13 = v12;

    if (v11 == 0xD000000000000015 && 0x800000023C439820 == v13)
    {

LABEL_6:
      v15 = sub_23C43711C();
      v16 = [objc_opt_self() containerWithIdentifier_];
      v0[22] = v16;

      v0[2] = v0;
      v0[7] = v0 + 18;
      v0[3] = sub_23C4260F4;
      v17 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4790, &qword_23C438C90);
      v0[10] = MEMORY[0x277D85DD0];
      v0[11] = 1107296256;
      v0[12] = sub_23C426590;
      v0[13] = &block_descriptor;
      v0[14] = v17;
      [v16 fetchCurrentDeviceIDWithCompletionHandler_];

      return MEMORY[0x282200938](v0 + 2);
    }

    v14 = sub_23C4374AC();

    if (v14)
    {
      goto LABEL_6;
    }
  }

  if (qword_2814FA100 != -1)
  {
    swift_once();
  }

  v18 = sub_23C43701C();
  __swift_project_value_buffer(v18, qword_2814FA1F0);
  v19 = sub_23C436FFC();
  v20 = sub_23C4372CC();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_23C414000, v19, v20, "Caller is not running on Settings process. Bailing.", v21, 2u);
    MEMORY[0x23EED1A40](v21, -1, -1);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_23C4260F4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_23C4263E4;
  }

  else
  {
    v2 = sub_23C426204;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23C426204()
{
  v15 = v0;
  v2 = v0[18];
  v1 = v0[19];
  if (qword_2814FA100 != -1)
  {
    swift_once();
  }

  v3 = sub_23C43701C();
  __swift_project_value_buffer(v3, qword_2814FA1F0);

  v4 = sub_23C436FFC();
  v5 = sub_23C4372BC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_23C423048(v2, v1, &v14);
    _os_log_impl(&dword_23C414000, v4, v5, "iCloud backup device id: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x23EED1A40](v7, -1, -1);
    MEMORY[0x23EED1A40](v6, -1, -1);
  }

  v8 = v0[21];
  v9 = v0[22];
  v10 = sub_23C43711C();

  v11 = sub_23C43711C();
  [v8 setValue:v10 forHTTPHeaderField:v11];

  v12 = v0[1];

  return v12();
}

uint64_t sub_23C4263E4()
{
  swift_willThrow();
  if (qword_2814FA100 != -1)
  {
    swift_once();
  }

  v1 = v0[23];
  v2 = sub_23C43701C();
  __swift_project_value_buffer(v2, qword_2814FA1F0);
  v3 = v1;
  v4 = sub_23C436FFC();
  v5 = sub_23C4372CC();

  v6 = os_log_type_enabled(v4, v5);
  v8 = v0[22];
  v7 = v0[23];
  if (v6)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v7;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_23C414000, v4, v5, "Failed to fetch iCloud backup device id w/ error: %@", v9, 0xCu);
    sub_23C426824(v10);
    MEMORY[0x23EED1A40](v10, -1, -1);
    MEMORY[0x23EED1A40](v9, -1, -1);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_23C426590(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4750, &unk_23C439190);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = sub_23C43714C();
    v9 = *(*(v4 + 64) + 40);
    *v9 = v8;
    v9[1] = v10;

    return MEMORY[0x282200950](v4);
  }
}

void sub_23C426664(void *a1)
{
  if (a1 && [a1 signURLRequest:v1 isUserInitiated:1])
  {
    if (qword_2814FA100 != -1)
    {
      swift_once();
    }

    v2 = sub_23C43701C();
    __swift_project_value_buffer(v2, qword_2814FA1F0);
    oslog = sub_23C436FFC();
    v3 = sub_23C4372DC();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      v5 = "GS Request signed successfully!";
LABEL_11:
      _os_log_impl(&dword_23C414000, oslog, v3, v5, v4, 2u);
      MEMORY[0x23EED1A40](v4, -1, -1);
    }
  }

  else
  {
    if (qword_2814FA100 != -1)
    {
      swift_once();
    }

    v6 = sub_23C43701C();
    __swift_project_value_buffer(v6, qword_2814FA1F0);
    oslog = sub_23C436FFC();
    v3 = sub_23C4372CC();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      v5 = "Unable to sign grandslam request";
      goto LABEL_11;
    }
  }
}

uint64_t sub_23C426824(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4798, &qword_23C438C98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23C42688C(void *a1)
{
  v1 = [a1 aa_personID];
  if (v1)
  {
    v2 = v1;
    v3 = sub_23C43714C();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  result = [objc_opt_self() defaultStore];
  if (result)
  {
    v7 = result;
    v8 = [result aa_primaryAppleAccount];

    if (v8 && (v9 = [v8 aa_personID], v8, v9))
    {
      v10 = sub_23C43714C();
      v12 = v11;

      if (v5)
      {
        v13 = 1702195828;
        if (v10 == v3 && v5 == v12)
        {
        }

        else
        {
          v15 = sub_23C4374AC();

          if ((v15 & 1) == 0)
          {
            return 0x65736C6166;
          }
        }

        return v13;
      }

      v13 = 0x65736C6166;
    }

    else
    {
      v13 = 0x65736C6166;
    }

    return v13;
  }

  __break(1u);
  return result;
}

unint64_t sub_23C426A20()
{
  result = qword_27E1F47A0;
  if (!qword_27E1F47A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F47A0);
  }

  return result;
}

unint64_t sub_23C426A74(unsigned __int8 a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F44F0, &unk_23C438F90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23C438130;
  *(inited + 32) = sub_23C43714C();
  *(inited + 40) = v3;
  v4 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  if (a1 > 2u)
  {
    if (a1 > 4u)
    {
      if (a1 != 5)
      {
        *(inited + 48) = 0xD00000000000002ELL;
        *(inited + 56) = 0x800000023C4399B0;
        *(inited + 80) = sub_23C43714C();
        *(inited + 88) = v21;
        *(inited + 120) = v4;
        *(inited + 96) = 0xD000000000000038;
        *(inited + 104) = 0x800000023C439AD0;
        *(inited + 128) = sub_23C43714C();
        *(inited + 136) = v22;
        v7 = 0x800000023C439BE0;
        v8 = 0xD00000000000001FLL;
        goto LABEL_16;
      }

      *(inited + 48) = 0xD00000000000001ELL;
      *(inited + 56) = 0x800000023C4399E0;
      *(inited + 80) = sub_23C43714C();
      *(inited + 88) = v12;
      *(inited + 120) = v4;
      v8 = 0xD00000000000001CLL;
      *(inited + 96) = 0xD00000000000001CLL;
      *(inited + 104) = 0x800000023C439B10;
      *(inited + 128) = sub_23C43714C();
      *(inited + 136) = v13;
      v14 = "Check logs for error message";
    }

    else
    {
      if (a1 == 3)
      {
        *(inited + 48) = 0xD000000000000015;
        *(inited + 56) = 0x800000023C439A30;
        *(inited + 80) = sub_23C43714C();
        *(inited + 88) = v5;
        *(inited + 120) = v4;
        *(inited + 96) = 0xD000000000000022;
        *(inited + 104) = 0x800000023C439B50;
        *(inited + 128) = sub_23C43714C();
        *(inited + 136) = v6;
        v7 = 0xEC00000072616461;
        v8 = 0x72206120656C6966;
        goto LABEL_16;
      }

      v8 = 0xD000000000000015;
      *(inited + 48) = 0xD000000000000026;
      *(inited + 56) = 0x800000023C439A00;
      *(inited + 80) = sub_23C43714C();
      *(inited + 88) = v19;
      *(inited + 120) = v4;
      *(inited + 96) = 0xD00000000000001ELL;
      *(inited + 104) = 0x800000023C439B30;
      *(inited + 128) = sub_23C43714C();
      *(inited + 136) = v20;
      v14 = "check string contents";
    }

    v7 = (v14 - 32) | 0x8000000000000000;
    goto LABEL_16;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      *(inited + 48) = 0xD000000000000022;
      *(inited + 56) = 0x800000023C439A80;
      *(inited + 80) = sub_23C43714C();
      *(inited + 88) = v9;
      v10 = 0x800000023C439BA0;
      *(inited + 120) = v4;
      v11 = 0xD000000000000019;
    }

    else
    {
      *(inited + 48) = 0xD000000000000020;
      *(inited + 56) = 0x800000023C439A50;
      *(inited + 80) = sub_23C43714C();
      *(inited + 88) = v17;
      v10 = 0x800000023C439B80;
      *(inited + 120) = v4;
      v11 = 0xD00000000000001ALL;
    }

    *(inited + 96) = v11;
    *(inited + 104) = v10;
    *(inited + 128) = sub_23C43714C();
    *(inited + 136) = v18;
    v7 = 0x800000023C439C40;
    v8 = 0xD000000000000018;
  }

  else
  {
    *(inited + 48) = 0xD000000000000012;
    *(inited + 56) = 0x800000023C439AB0;
    *(inited + 80) = sub_23C43714C();
    *(inited + 88) = v15;
    *(inited + 120) = v4;
    *(inited + 96) = 0xD000000000000015;
    *(inited + 104) = 0x800000023C439BC0;
    *(inited + 128) = sub_23C43714C();
    *(inited + 136) = v16;
    v7 = 0x800000023C439C60;
    v8 = 0xD000000000000014;
  }

LABEL_16:
  *(inited + 168) = v4;
  *(inited + 144) = v8;
  *(inited + 152) = v7;
  v23 = sub_23C417638(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F44F8, &qword_23C438140);
  swift_arrayDestroy();
  return v23;
}

uint64_t sub_23C426E94(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  if (a3)
  {
    v7 = sub_23C4371EC();
  }

  else
  {
    v7 = 0;
  }

  v8 = a2;
  v9 = a4;
  v6(a2, v7, a4);
}

void sub_23C426F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = sub_23C4370DC();
  }

  else
  {
    v6 = 0;
  }

  v8[4] = a3;
  v8[5] = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_23C426E94;
  v8[3] = &block_descriptor_0;
  v7 = _Block_copy(v8);

  DeviceIdentityIssueClientCertificateWithCompletion();
  _Block_release(v7);
}

id BAARequestSigner.__allocating_init(date:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F45C0, &qword_23C438CB0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v10 - v4;
  objc_allocWithZone(v1);
  sub_23C417A7C(a1, v5, &qword_27E1F45C0, &qword_23C438CB0);
  v6 = type metadata accessor for BAARequestSigner(0);
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  v7 = objc_allocWithZone(v6);
  v8 = sub_23C427658(v5, v10);
  sub_23C41ED98(a1, &qword_27E1F45C0, &qword_23C438CB0);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v8;
}

id BAARequestSigner.init(date:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F45C0, &qword_23C438CB0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v9 - v3;
  sub_23C417A7C(a1, v9 - v3, &qword_27E1F45C0, &qword_23C438CB0);
  v5 = type metadata accessor for BAARequestSigner(0);
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  v6 = objc_allocWithZone(v5);
  v7 = sub_23C427658(v4, v9);
  sub_23C41ED98(a1, &qword_27E1F45C0, &qword_23C438CB0);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v7;
}

uint64_t type metadata accessor for BAARequestSigner(uint64_t a1)
{
  result = qword_27E1F47E0;
  if (!qword_27E1F47E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_23C427658(uint64_t a1, uint64_t a2)
{
  sub_23C417A7C(a1, v2 + OBJC_IVAR____TtC14ACSEFoundation16BAARequestSigner_date, &qword_27E1F45C0, &qword_23C438CB0);
  sub_23C417A7C(a2, &v8, &qword_27E1F4828, &qword_23C438FB8);
  if (v9)
  {
    sub_23C424C70(&v8, &v10);
  }

  else
  {
    v11 = &type metadata for DeviceIdentityCertificateFetcher;
    v12 = &off_284F080B8;
  }

  sub_23C424C70(&v10, v2 + OBJC_IVAR____TtC14ACSEFoundation16BAARequestSigner_baaCertificateFetcher);
  v7.receiver = v2;
  v7.super_class = type metadata accessor for BAARequestSigner(0);
  v5 = objc_msgSendSuper2(&v7, sel_init);
  sub_23C41ED98(a2, &qword_27E1F4828, &qword_23C438FB8);
  sub_23C41ED98(a1, &qword_27E1F45C0, &qword_23C438CB0);
  return v5;
}

uint64_t sub_23C42775C(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4528, &qword_23C438180);
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23C4277FC, 0, 0);
}

uint64_t sub_23C4277FC()
{
  v1 = v0[11];
  sub_23C436D3C();
  v2 = sub_23C436E8C();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = v0[11];
  if (v4 == 1)
  {
    sub_23C41ED98(v0[11], &qword_27E1F4528, &qword_23C438180);
    if (qword_2814FA100 != -1)
    {
      swift_once();
    }

    v6 = sub_23C43701C();
    __swift_project_value_buffer(v6, qword_2814FA1F0);
    v7 = sub_23C436FFC();
    v8 = sub_23C4372CC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_23C414000, v7, v8, "Attempted to BAA sign request with no path", v9, 2u);
      MEMORY[0x23EED1A40](v9, -1, -1);
    }

    sub_23C4177E0();
    swift_allocError();
    *v10 = 0;
    swift_willThrow();

    v11 = v0[1];

    return v11();
  }

  else
  {
    v14 = v0[8];
    v13 = v0[9];
    v15 = sub_23C436E6C();
    v17 = v16;
    v0[12] = v16;
    (*(v3 + 8))(v5, v2);
    v18 = sub_23C436D5C();
    v0[13] = v18;
    v19 = *(v18 - 8);
    v0[14] = v19;
    (*(v19 + 16))(v14, v13, v18);
    if (qword_2814FA100 != -1)
    {
      swift_once();
    }

    v20 = sub_23C43701C();
    __swift_project_value_buffer(v20, qword_2814FA1F0);
    v21 = sub_23C436FFC();
    v22 = sub_23C4372BC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_23C414000, v21, v22, "Fetching BAA signing credentials", v23, 2u);
      MEMORY[0x23EED1A40](v23, -1, -1);
    }

    v24 = v0[10];

    v25 = v24 + OBJC_IVAR____TtC14ACSEFoundation16BAARequestSigner_date;
    v26 = v24 + OBJC_IVAR____TtC14ACSEFoundation16BAARequestSigner_baaCertificateFetcher;
    v27 = swift_task_alloc();
    v0[15] = v27;
    v27[2] = v26;
    v27[3] = v25;
    v27[4] = v15;
    v27[5] = v17;
    v28 = swift_task_alloc();
    v0[16] = v28;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F47B0, &qword_23C438CC8);
    *v28 = v0;
    v28[1] = sub_23C427C10;

    return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD00000000000002ELL, 0x800000023C439950, sub_23C42A004, v27, v29);
  }
}

uint64_t sub_23C427C10()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_23C427F10;
  }

  else
  {

    v2 = sub_23C427D38;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23C427D38()
{
  v1 = v0[7];
  v16 = v0[2];
  v14 = v0[4];
  v15 = v0[3];
  v13 = v0[5];
  v2 = v0[6];
  sub_23C436EAC();
  sub_23C436D4C();

  sub_23C436EAC();
  sub_23C436D4C();

  v3 = SecCertificateCopyData(v2);
  v4 = sub_23C436EBC();
  v6 = v5;

  v17 = v4;
  v18 = v6;
  v7 = SecCertificateCopyData(v1);
  v8 = sub_23C436EBC();
  v10 = v9;

  sub_23C436ECC();
  sub_23C436EAC();
  sub_23C436D4C();

  sub_23C42A010(v8, v10);

  sub_23C42A010(v14, v13);
  sub_23C42A010(v16, v15);
  sub_23C42A010(v17, v18);

  v11 = v0[1];

  return v11();
}

uint64_t sub_23C427F10()
{
  v1 = v0[14];
  v2 = v0[13];
  v3 = v0[8];

  (*(v1 + 8))(v3, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_23C428134(uint64_t a1, const void *a2, void *a3)
{
  v3[2] = a3;
  v6 = sub_23C436D5C();
  v3[3] = v6;
  v3[4] = *(v6 - 8);
  v7 = swift_task_alloc();
  v3[5] = v7;
  v8 = swift_task_alloc();
  v3[6] = v8;
  v3[7] = _Block_copy(a2);
  sub_23C436D2C();
  a3;
  v9 = swift_task_alloc();
  v3[8] = v9;
  *v9 = v3;
  v9[1] = sub_23C428280;

  return sub_23C42775C(v8, v7);
}

uint64_t sub_23C428280()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v6 = *(*v1 + 16);
  v7 = *v1;

  v8 = *(v4 + 8);
  v8(v3, v5);

  if (v0)
  {
    v9 = sub_23C436E3C();

    v10 = v9;
    v11 = 0;
    v12 = v9;
  }

  else
  {
    v13 = v2[6];
    v14 = v2[3];
    v12 = sub_23C436D1C();
    v8(v13, v14);
    v11 = v12;
    v10 = 0;
  }

  v15 = v2[7];
  (v15)[2](v15, v11, v10);

  _Block_release(v15);

  v16 = *(v7 + 8);

  return v16();
}

uint64_t sub_23C428484(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43 = a4;
  v44 = a5;
  v42 = a3;
  v40 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F45C0, &qword_23C438CB0);
  v41 = *(v6 - 8);
  v39 = *(v41 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v38 = v34 - v7;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4808, &qword_23C438FA0);
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v37);
  v36 = v34 - v10;
  v11 = sub_23C4370BC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4810, &qword_23C438FA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23C438130;
  v45 = sub_23C43714C();
  v46 = v16;
  v17 = MEMORY[0x277D837D0];
  sub_23C43734C();
  *(inited + 96) = v17;
  *(inited + 72) = 4608835;
  *(inited + 80) = 0xE300000000000000;
  v45 = sub_23C43714C();
  v46 = v18;
  sub_23C43734C();
  *(inited + 168) = MEMORY[0x277D83B88];
  *(inited + 144) = 129600;
  v45 = sub_23C43714C();
  v46 = v19;
  sub_23C43734C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4728, &qword_23C4389D0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_23C438CA0;
  *(v20 + 32) = sub_23C43714C();
  *(v20 + 40) = v21;
  *(v20 + 48) = sub_23C43714C();
  *(v20 + 56) = v22;
  *(inited + 240) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F45F0, &qword_23C438288);
  *(inited + 216) = v20;
  v35 = sub_23C417834(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4518, &qword_23C438FB0);
  swift_arrayDestroy();
  v34[1] = __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_23C42B02C();
  (*(v12 + 104))(v14, *MEMORY[0x277D851C8], v11);
  v23 = sub_23C4372EC();
  (*(v12 + 8))(v14, v11);
  v25 = v36;
  v24 = v37;
  (*(v8 + 16))(v36, v40, v37);
  v26 = v38;
  sub_23C417A7C(v42, v38, &qword_27E1F45C0, &qword_23C438CB0);
  v27 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v28 = (v9 + *(v41 + 80) + v27) & ~*(v41 + 80);
  v29 = (v39 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  (*(v8 + 32))(v30 + v27, v25, v24);
  sub_23C42B078(v26, v30 + v28);
  v31 = (v30 + v29);
  v32 = v44;
  *v31 = v43;
  v31[1] = v32;

  sub_23C426F48(v23, v35, sub_23C42B0E8, v30);
}

void sub_23C428964(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v109 = a7;
  v108 = a6;
  v112 = a4;
  error[1] = *MEMORY[0x277D85DE8];
  v11 = sub_23C43717C();
  v110 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_23C436F2C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v107 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F45C0, &qword_23C438CB0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v107 - v19;
  v111 = a1;
  if (a1)
  {
    if (a3)
    {
      v21 = v111;
      v22 = v111;
      v23 = a3;
      if (qword_2814FA100 != -1)
      {
        swift_once();
      }

      v24 = sub_23C43701C();
      __swift_project_value_buffer(v24, qword_2814FA1F0);
      v25 = a3;
      v26 = sub_23C436FFC();
      v27 = sub_23C4372CC();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v114 = v29;
        *v28 = 136315138;
        swift_getErrorValue();
        v30 = sub_23C43752C();
        v32 = sub_23C423048(v30, v31, &v114);

        *(v28 + 4) = v32;
        _os_log_impl(&dword_23C414000, v26, v27, "Unable to get BAA certificates. Error: %s", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v29);
        MEMORY[0x23EED1A40](v29, -1, -1);
        MEMORY[0x23EED1A40](v28, -1, -1);
      }

      sub_23C4177E0();
      v33 = swift_allocError();
      *v34 = 1;
      v114 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4808, &qword_23C438FA0);
      sub_23C43721C();

      goto LABEL_30;
    }

    if (!a2)
    {
      v56 = v111;
      goto LABEL_25;
    }

    Signature = v111;
    v48 = sub_23C429774(a2);
    if (!v48)
    {
LABEL_25:
      if (qword_2814FA100 != -1)
      {
        swift_once();
      }

      v57 = sub_23C43701C();
      __swift_project_value_buffer(v57, qword_2814FA1F0);
      v58 = sub_23C436FFC();
      v59 = sub_23C4372CC();
      v60 = os_log_type_enabled(v58, v59);
      v21 = v111;
      if (v60)
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&dword_23C414000, v58, v59, "Unable to get BAA certificates. Unknown error.", v61, 2u);
        MEMORY[0x23EED1A40](v61, -1, -1);
      }

      sub_23C4177E0();
      v62 = swift_allocError();
      *v63 = 1;
      v114 = v62;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4808, &qword_23C438FA0);
      sub_23C43721C();
      goto LABEL_30;
    }

    v49 = v48 & 0xFFFFFFFFFFFFFF8;
    if (v48 >> 62)
    {
      v64 = v48;
      v65 = sub_23C43740C();
      v48 = v64;
      if (v65 < 2)
      {
        goto LABEL_18;
      }
    }

    else if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
    {
LABEL_18:

      goto LABEL_25;
    }

    v107 = v48;
    sub_23C417A7C(a5, v20, &qword_27E1F45C0, &qword_23C438CB0);
    if ((*(v15 + 48))(v20, 1, v14) == 1)
    {
      sub_23C41ED98(v20, &qword_27E1F45C0, &qword_23C438CB0);
      sub_23C436F0C();
      v20 = v17;
    }

    sub_23C436EEC();
    v67 = v66;
    v69 = *(v15 + 8);
    v68 = v15 + 8;
    v69(v20, v14);
    v70 = v67 * 1000.0;
    if (COERCE__INT64(fabs(v67 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v70 > -1.0)
    {
      if (v70 < 1.84467441e19)
      {
        v114 = v70;
        v114 = sub_23C43746C();
        v115 = v71;

        MEMORY[0x23EED0F50](59, 0xE100000000000000);

        MEMORY[0x23EED0F50](v108, v109);

        sub_23C43716C();
        v68 = sub_23C43715C();
        v17 = v72;

        (*(v110 + 8))(v13, v11);
        if (v17 >> 60 == 15)
        {

          sub_23C4177E0();
          v73 = swift_allocError();
          *v74 = 4;
          v114 = v73;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4808, &qword_23C438FA0);
          sub_23C43721C();

          return;
        }

        error[0] = 0;
        v75 = *MEMORY[0x277CDC300];
        v76 = sub_23C436E9C();
        Signature = SecKeyCreateSignature(Signature, v75, v76, error);

        if (!Signature)
        {

          v82 = error[0];
          if (!error[0])
          {
            if (qword_2814FA100 != -1)
            {
              swift_once();
            }

            v101 = sub_23C43701C();
            __swift_project_value_buffer(v101, qword_2814FA1F0);
            v102 = sub_23C436FFC();
            v103 = sub_23C4372CC();
            if (os_log_type_enabled(v102, v103))
            {
              v104 = swift_slowAlloc();
              *v104 = 0;
              _os_log_impl(&dword_23C414000, v102, v103, "BAA signature was empty", v104, 2u);
              MEMORY[0x23EED1A40](v104, -1, -1);
            }

            sub_23C4177E0();
            v105 = swift_allocError();
            *v106 = 3;
            v114 = v105;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4808, &qword_23C438FA0);
            sub_23C43721C();
            sub_23C42B21C(v68, v17);
            v21 = v111;
            goto LABEL_30;
          }

          if (qword_2814FA100 == -1)
          {
            goto LABEL_50;
          }

          goto LABEL_66;
        }

        if (qword_2814FA100 == -1)
        {
LABEL_41:
          v77 = sub_23C43701C();
          __swift_project_value_buffer(v77, qword_2814FA1F0);
          v78 = sub_23C436FFC();
          v79 = sub_23C4372BC();
          if (os_log_type_enabled(v78, v79))
          {
            v80 = swift_slowAlloc();
            *v80 = 0;
            _os_log_impl(&dword_23C414000, v78, v79, "Successfully fetched BAA signing credentials", v80, 2u);
            MEMORY[0x23EED1A40](v80, -1, -1);
          }

          sub_23C42B288(v68, v17);
          v81 = Signature;
          v82 = sub_23C436EBC();
          v84 = v83;

          v85 = v107;
          if ((v107 & 0xC000000000000001) != 0)
          {
            v88 = MEMORY[0x23EED1100](0, v107);
            v89 = MEMORY[0x23EED1100](1, v85);
            goto LABEL_47;
          }

          v86 = *(v49 + 16);
          if (v86)
          {
            if (v86 != 1)
            {
              v87 = *(v107 + 40);
              v88 = *(v107 + 32);
              v89 = v87;
LABEL_47:
              v90 = v89;

              v114 = v68;
              v115 = v17;
              v116 = v82;
              v117 = v84;
              v118 = v88;
              v119 = v90;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4808, &qword_23C438FA0);
              sub_23C43722C();
LABEL_53:
              sub_23C42B21C(v68, v17);

              v21 = v111;
LABEL_30:

              return;
            }
          }

          else
          {
            __break(1u);
          }

          __break(1u);
LABEL_66:
          swift_once();
LABEL_50:
          v91 = sub_23C43701C();
          __swift_project_value_buffer(v91, qword_2814FA1F0);
          v81 = v82;
          v92 = sub_23C436FFC();
          v93 = sub_23C4372CC();

          if (os_log_type_enabled(v92, v93))
          {
            v94 = swift_slowAlloc();
            v95 = swift_slowAlloc();
            v114 = v95;
            *v94 = 136315138;
            v113 = v81;
            type metadata accessor for CFError(0);
            sub_23C42B230();
            v96 = sub_23C43752C();
            v98 = sub_23C423048(v96, v97, &v114);

            *(v94 + 4) = v98;
            _os_log_impl(&dword_23C414000, v92, v93, "Unable to create BAA signature: %s", v94, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v95);
            MEMORY[0x23EED1A40](v95, -1, -1);
            MEMORY[0x23EED1A40](v94, -1, -1);
          }

          sub_23C4177E0();
          v99 = swift_allocError();
          *v100 = 5;
          v114 = v99;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4808, &qword_23C438FA0);
          sub_23C43721C();
          goto LABEL_53;
        }

LABEL_62:
        swift_once();
        goto LABEL_41;
      }

LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    __break(1u);
    goto LABEL_61;
  }

  if (a3)
  {
    v35 = a3;
    if (qword_2814FA100 != -1)
    {
      swift_once();
    }

    v36 = sub_23C43701C();
    __swift_project_value_buffer(v36, qword_2814FA1F0);
    v37 = a3;
    v38 = sub_23C436FFC();
    v39 = sub_23C4372CC();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v114 = v41;
      *v40 = 136315138;
      swift_getErrorValue();
      v42 = sub_23C43752C();
      v44 = sub_23C423048(v42, v43, &v114);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_23C414000, v38, v39, "Unable to get BAA signing keys. Error: %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x23EED1A40](v41, -1, -1);
      MEMORY[0x23EED1A40](v40, -1, -1);
    }

    sub_23C4177E0();
    v45 = swift_allocError();
    *v46 = 2;
    v114 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4808, &qword_23C438FA0);
    sub_23C43721C();
  }

  else
  {
    if (qword_2814FA100 != -1)
    {
      swift_once();
    }

    v50 = sub_23C43701C();
    __swift_project_value_buffer(v50, qword_2814FA1F0);
    v51 = sub_23C436FFC();
    v52 = sub_23C4372CC();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_23C414000, v51, v52, "Unable to get BAA signing keys. Unknown error.", v53, 2u);
      MEMORY[0x23EED1A40](v53, -1, -1);
    }

    sub_23C4177E0();
    v54 = swift_allocError();
    *v55 = 2;
    v114 = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4808, &qword_23C438FA0);
    sub_23C43721C();
  }
}

uint64_t sub_23C429774(uint64_t a1)
{
  v6 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_23C4373AC();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_23C424C14(i, v5);
    type metadata accessor for SecCertificate(0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_23C43738C();
    sub_23C4373BC();
    sub_23C4373CC();
    sub_23C43739C();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

id BAARequestSigner.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BAARequestSigner.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BAARequestSigner(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23C42997C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23C41FA0C;

  return sub_23C42775C(a1, a2);
}

unint64_t RequestSigningError.errorDescription.getter()
{
  v1 = 0xD000000000000012;
  v2 = *v0;
  v3 = 0xD00000000000001ELL;
  if (v2 != 5)
  {
    v3 = 0xD00000000000002ELL;
  }

  v4 = 0xD000000000000015;
  if (v2 != 3)
  {
    v4 = 0xD000000000000026;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000022;
  if (v2 != 1)
  {
    v5 = 0xD000000000000020;
  }

  if (*v0)
  {
    v1 = v5;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

unint64_t RequestSigningError.failureReason.getter()
{
  v1 = 0xD000000000000015;
  v2 = *v0;
  v3 = 0xD00000000000001CLL;
  if (v2 != 5)
  {
    v3 = 0xD000000000000038;
  }

  v4 = 0xD000000000000022;
  if (v2 != 3)
  {
    v4 = 0xD00000000000001ELL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000019;
  if (v2 != 1)
  {
    v5 = 0xD00000000000001ALL;
  }

  if (*v0)
  {
    v1 = v5;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

unint64_t RequestSigningError.recoverySuggestion.getter()
{
  v1 = *v0;
  v2 = 0x72206120656C6966;
  v3 = 0xD00000000000001CLL;
  if (v1 != 5)
  {
    v3 = 0xD00000000000001FLL;
  }

  if (v1 != 3)
  {
    v2 = 0xD000000000000015;
  }

  if (*v0 > 4u)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000014;
  if (*v0)
  {
    v4 = 0xD000000000000018;
  }

  if (*v0 <= 2u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

ACSEFoundation::RequestSigningError_optional __swiftcall RequestSigningError.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 7;
  if (rawValue < 7)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_23C429CD8()
{
  v1 = 0xD000000000000012;
  v2 = *v0;
  v3 = 0xD00000000000001ELL;
  if (v2 != 5)
  {
    v3 = 0xD00000000000002ELL;
  }

  v4 = 0xD000000000000015;
  if (v2 != 3)
  {
    v4 = 0xD000000000000026;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000022;
  if (v2 != 1)
  {
    v5 = 0xD000000000000020;
  }

  if (*v0)
  {
    v1 = v5;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_23C429DA0()
{
  v1 = 0xD000000000000015;
  v2 = *v0;
  v3 = 0xD00000000000001CLL;
  if (v2 != 5)
  {
    v3 = 0xD000000000000038;
  }

  v4 = 0xD000000000000022;
  if (v2 != 3)
  {
    v4 = 0xD00000000000001ELL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000019;
  if (v2 != 1)
  {
    v5 = 0xD00000000000001ALL;
  }

  if (*v0)
  {
    v1 = v5;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_23C429E68()
{
  v1 = *v0;
  v2 = 0x72206120656C6966;
  v3 = 0xD00000000000001CLL;
  if (v1 != 5)
  {
    v3 = 0xD00000000000001FLL;
  }

  if (v1 != 3)
  {
    v2 = 0xD000000000000015;
  }

  if (*v0 > 4u)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000014;
  if (*v0)
  {
    v4 = 0xD000000000000018;
  }

  if (*v0 <= 2u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_23C429F6C(uint64_t a1)
{
  v2 = sub_23C42A0EC();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_23C429FA8(uint64_t a1)
{
  v2 = sub_23C42A0EC();
  v3 = sub_23C42AF84();
  v4 = sub_23C42AFD8();

  return MEMORY[0x28211F498](a1, v2, v3, v4);
}

uint64_t sub_23C42A010(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_23C42A068()
{
  result = qword_27E1F47B8;
  if (!qword_27E1F47B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F47B8);
  }

  return result;
}

unint64_t sub_23C42A0BC(uint64_t a1)
{
  *(a1 + 8) = sub_23C42A0EC();
  result = sub_23C42A140();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_23C42A0EC()
{
  result = qword_27E1F47C0;
  if (!qword_27E1F47C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F47C0);
  }

  return result;
}

unint64_t sub_23C42A140()
{
  result = qword_27E1F47C8;
  if (!qword_27E1F47C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F47C8);
  }

  return result;
}

unint64_t sub_23C42A19C()
{
  result = qword_27E1F47D0;
  if (!qword_27E1F47D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E1F47D8, &qword_23C438DE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F47D0);
  }

  return result;
}

uint64_t dispatch thunk of RequestSigning.sign(request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_23C41FA0C;

  return v11(a1, a2, a3, a4);
}

void sub_23C42A33C(uint64_t a1)
{
  sub_23C42A528(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of BAARequestSigner.sign(request:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x277D85000] & *v2) + 0x68);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_23C4251CC;

  return v9(a1, a2);
}

void sub_23C42A528(uint64_t a1)
{
  if (!qword_27E1F47F0)
  {
    sub_23C436F2C();
    v1 = sub_23C4372FC();
    if (!v2)
    {
      atomic_store(v1, &qword_27E1F47F0);
    }
  }
}

uint64_t sub_23C42A590()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23C41FA0C;

  return sub_23C428134(v2, v3, v4);
}

uint64_t sub_23C42A644(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_23C4251CC;

  return v6();
}

uint64_t sub_23C42A72C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23C4251CC;

  return sub_23C42A644(v2, v3, v4);
}

uint64_t sub_23C42A7EC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_23C41FA0C;

  return v7();
}

uint64_t objectdestroy_13Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23C42A914(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23C4251CC;

  return sub_23C42A7EC(a1, v4, v5, v6);
}

uint64_t sub_23C42A9E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4738, &qword_23C438F40);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_23C417A7C(a3, v23 - v10, &qword_27E1F4738, &qword_23C438F40);
  v12 = sub_23C43726C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_23C41ED98(v11, &qword_27E1F4738, &qword_23C438F40);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_23C43725C();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_23C43720C();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_23C43718C() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_23C41ED98(a3, &qword_27E1F4738, &qword_23C438F40);

    return v21;
  }

LABEL_8:
  sub_23C41ED98(a3, &qword_27E1F4738, &qword_23C438F40);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_23C42ACDC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_23C42ADD4;

  return v6(a1);
}

uint64_t sub_23C42ADD4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_23C42AECC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23C4251CC;

  return sub_23C42ACDC(a1, v4);
}

unint64_t sub_23C42AF84()
{
  result = qword_27E1F47F8;
  if (!qword_27E1F47F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E1F47F8);
  }

  return result;
}