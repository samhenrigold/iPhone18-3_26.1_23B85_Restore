uint64_t storeEnumTagSinglePayload for StringSimilarityAlgorithm(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_27104E848(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_27104E890(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t _s18VisualLocalization24VLPointOfInterestMatcherC11UpdateErrorOwet_0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
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

  return (v8 + 1);
}

uint64_t _s18VisualLocalization24VLPointOfInterestMatcherC11UpdateErrorOwst_0(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_27104EA88(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_27104EB6C()
{
  result = qword_280876540[0];
  if (!qword_280876540[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280876540);
  }

  return result;
}

unint64_t sub_27104EBC4()
{
  result = qword_280876650;
  if (!qword_280876650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280876650);
  }

  return result;
}

unint64_t sub_27104EC1C()
{
  result = qword_280876658[0];
  if (!qword_280876658[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280876658);
  }

  return result;
}

void sub_27104EC70(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a1)
  {
  }
}

unint64_t sub_27104ECC8()
{
  result = qword_280875010;
  if (!qword_280875010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280875010);
  }

  return result;
}

double sub_27104ED20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a5)
  {
  }

  return result;
}

double __swift_destroy_boxed_opaque_existential_0Tm(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    (*(v1 + 8))();
  }

  return result;
}

unint64_t sub_27104EDB0()
{
  result = qword_280875040;
  if (!qword_280875040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280875040);
  }

  return result;
}

uint64_t sub_27104EE04(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

double sub_27104EE60(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_27104EE78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280874F40, &qword_271101B30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
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

void *__swift_project_boxed_opaque_existential_1Tm(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_27104EFBC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_27104F25C;

  return sub_271046F7C(a1, v4);
}

uint64_t sub_27104F0C8(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_27104F110(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_27104F170(uint64_t a1, int a2)
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

uint64_t sub_27104F190(uint64_t result, int a2, int a3)
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

void sub_27104F1F8(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_27104F2B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a1;
  v4[20] = v3;
  v4[30] = a2;
  v4[31] = a3;
  v5 = sub_2710F6C0C();
  v4[21] = v5;
  v4[22] = *(v5 - 8);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280875190, &qword_2711027D8);
  v4[26] = v6;
  v4[27] = *(v6 - 8);
  v4[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_27104F424, 0, 0);
}

uint64_t sub_27104F424()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v7 = v0[27];
  v6 = v0[28];
  v8 = v0[26];
  v11 = v1[20];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_27104F624;
  swift_continuation_init();
  v1[17] = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  sub_27104F0C8(0, &qword_280875198, 0x277D0ED98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280874F38, qword_2711027E0);
  sub_2710F700C();
  (*(v7 + 32))(boxed_opaque_existential_0, v6, v8);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_27104FAE4;
  v1[13] = &block_descriptor_0;
  [v11 _fetchTileDataForKey_completion_];
  (*(v7 + 8))(boxed_opaque_existential_0, v8);

  return MEMORY[0x282200938](v3);
}

uint64_t sub_27104F624()
{
  v1 = *(*v0 + 48);
  *(*v0 + 232) = v1;
  if (v1)
  {
    v2 = sub_27104FA20;
  }

  else
  {
    v2 = sub_27104F760;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_27104F760()
{
  v1 = *(v0 + 144);
  if ([v1 hasFileDescriptor])
  {
    v2 = [v1 consumeFileDescriptor];
    v3 = [objc_allocWithZone(MEMORY[0x277CCA9F8]) initWithFileDescriptor:v2 closeOnDealloc:1];
  }

  else
  {
    v5 = [v1 fileURL];
    if (!v5)
    {
      return sub_2710F733C();
    }

    v7 = *(v0 + 192);
    v6 = *(v0 + 200);
    v9 = *(v0 + 176);
    v8 = *(v0 + 184);
    v10 = *(v0 + 168);
    v11 = v5;
    sub_2710F6BFC();

    (*(v9 + 32))(v6, v7, v10);
    sub_27104F0C8(0, &qword_2808751A0, 0x277CCA9F8);
    (*(v9 + 16))(v8, v6, v10);
    v3 = sub_27104FBAC(v8);
    (*(*(v0 + 176) + 8))(*(v0 + 200), *(v0 + 168));
  }

  sub_271052BC8(*(v0 + 240), *(v0 + 248), v3, v1, *(v0 + 152));

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_27104FA20(__n128 a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

void sub_27104FAE4(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280875190, &qword_2711027D8);
    sub_2710F701C();
  }

  else if (a2)
  {
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280875190, &qword_2711027D8);
    sub_2710F702C();
  }

  else
  {
    __break(1u);
  }
}

id sub_27104FBAC(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = sub_2710F6BDC();
  v11[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() fileHandleForReadingFromURL:v2 error:v11];

  v4 = v11[0];
  if (v3)
  {
    v5 = sub_2710F6C0C();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v11[0];
    sub_2710F6BCC();

    swift_willThrow();
    v9 = sub_2710F6C0C();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  return v3;
}

uint64_t sub_27104FD04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_27104C83C;

  return sub_27104F2B4(a1, a2, a3);
}

double sub_27104FDB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  result = 0.5;
  if ((a8 & 1) == 0)
  {
    result = 1.0;
    if (*&a7 > 20.0)
    {
      result = 0.5;
      if (*&a7 <= 45.0)
      {
        return 0.75;
      }
    }
  }

  return result;
}

void sub_27104FE0C(uint64_t a1, uint64_t a2)
{
  v61 = sub_2710F6D4C();
  v4 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v59 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = 0.0;
  if (*(a2 + 16))
  {
    if (*(a1 + 16))
    {
      v7 = sub_271047E6C(0);
      if (v8)
      {
        v9 = *(*(a1 + 56) + 8 * v7);
        v10 = a2 + 64;
        v11 = 1 << *(a2 + 32);
        v12 = -1;
        if (v11 < 64)
        {
          v12 = ~(-1 << v11);
        }

        v13 = v12 & *(a2 + 64);
        v14 = (v11 + 63) >> 6;
        v51 = (v4 + 16);
        v50 = (v4 + 8);

        v15 = 0;
        v57 = v9;
        v16 = (v9 + 48);
        *&v17 = 136315650;
        v48 = v17;
LABEL_7:
        if (v13)
        {
          v18 = v13;
          goto LABEL_13;
        }

        while (1)
        {
          v19 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            break;
          }

          if (v19 >= v14)
          {

            return;
          }

          v18 = *(v10 + 8 * v19);
          ++v15;
          if (v18)
          {
            v15 = v19;
LABEL_13:
            v13 = (v18 - 1) & v18;
            if (v6 < 1.0)
            {
              v45 = (v18 - 1) & v18;
              v20 = __clz(__rbit64(v18)) | (v15 << 6);
              v47 = a2;
              v21 = (*(a2 + 48) + 16 * v20);
              v22 = *v21;
              v23 = *(*(a2 + 56) + 4 * v20);
              v24 = *(v57 + 16);
              v60 = v21[1];

              v49 = v24;
              v46 = v16;
              if (v24)
              {
                v25 = 0;
                v26 = 0.0;
                v27 = v59;
                v53 = v22;
                while (1)
                {
                  if (v25 >= *(v57 + 16))
                  {
                    goto LABEL_40;
                  }

                  v28 = *(v16 - 1);
                  v29 = *v16;
                  v30 = *(v16 - 2) == v22 && v28 == v60;
                  v58 = *(v16 - 2);
                  if (v30 || (sub_2710F748C() & 1) != 0)
                  {
                    break;
                  }

                  v64[0] = v58;
                  v64[1] = v28;
                  v62 = v22;
                  v63 = v60;
                  sub_27104EDB0();

                  if (sub_2710F724C())
                  {
                    v54 = v25;
                    v32 = 0.7;
                    v27 = v59;
                    v31 = v29;
                    goto LABEL_28;
                  }

                  v32 = 0.0;
                  v27 = v59;
LABEL_18:
                  ++v25;
                  if (v26 <= v32)
                  {
                    v26 = v32;
                  }

                  v16 += 3;
                  v22 = v53;
                  if (v49 == v25)
                  {
                    goto LABEL_34;
                  }
                }

                v54 = v25;

                v31 = v29;

                v32 = 1.0;
LABEL_28:
                v33 = sub_27104074C();
                (*v51)(v27, v33, v61);
                v34 = v60;

                v35 = v27;
                v36 = v31;
                v37 = sub_2710F6D2C();
                v38 = sub_2710F711C();
                v56 = v36;

                v52 = v38;
                v55 = v37;
                if (os_log_type_enabled(v37, v38))
                {
                  v39 = v34;
                  v40 = swift_slowAlloc();
                  v41 = swift_slowAlloc();
                  v64[0] = v41;
                  *v40 = v48;
                  *(v40 + 4) = sub_2710475BC(v53, v39, v64);
                  *(v40 + 12) = 2080;
                  *(v40 + 14) = sub_2710475BC(v58, v28, v64);
                  *(v40 + 22) = 2048;
                  *(v40 + 24) = v32;
                  v42 = v55;
                  _os_log_impl(&dword_27103D000, v55, v52, "Brand '%s' / %s → %f", v40, 0x20u);
                  swift_arrayDestroy();
                  v43 = v41;
                  v27 = v59;
                  MEMORY[0x2743BDA30](v43, -1, -1);
                  MEMORY[0x2743BDA30](v40, -1, -1);

                  (*v50)(v27, v61);
                }

                else
                {

                  (*v50)(v35, v61);

                  v27 = v35;
                }

                v25 = v54;
                goto LABEL_18;
              }

              v26 = 0.0;
LABEL_34:

              if (v6 <= v26 * v23)
              {
                v6 = v26 * v23;
              }

              a2 = v47;
              v16 = v46;
              v13 = v45;
            }

            goto LABEL_7;
          }
        }

        __break(1u);
LABEL_40:
        __break(1u);
      }
    }
  }
}

uint64_t sub_271050400(uint64_t a1, uint64_t a2)
{
  sub_2710F751C();
  sub_2710F6D8C();
  return sub_2710F756C();
}

uint64_t sub_271050468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_2710F751C();
  sub_2710503F8(v6, a2, v4);
  return sub_2710F756C();
}

uint64_t sub_27105050C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_27105057C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_2710506BC(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_2710508F4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_271050958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, double a9)
{
  v10 = v9;
  v20 = v10[3];
  v19 = v10[4];
  __swift_project_boxed_opaque_existential_1Tm(v10, v20);
  (*(v19 + 8))(a1, a2, a3, a4, a5, a6, a7, a8 & 1, a9, v20, v19);
}

double sub_271050A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, double a9, uint64_t a10, uint64_t (*a11)(char *, __n128, double))
{
  v55 = a8;
  v59 = a4;
  v60 = a5;
  v57 = a2;
  v58 = a3;
  v56 = a1;
  v14 = sub_2710F6D4C();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v61 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a10 + 16);
  if (v19)
  {
    v67 = MEMORY[0x277D84F90];
    sub_271051CC8(0, v19, 0);
    v20 = v67;
    v21 = a10 + 32;
    v54 = (v15 + 16);
    v53 = (v15 + 8);
    *&v22 = 136315394;
    v49 = v22;
    v51 = a7;
    v50 = a6;
    do
    {
      sub_2710508F4(v21, v64);
      v24 = v65;
      v23 = v66;
      __swift_project_boxed_opaque_existential_1Tm(v64, v65);
      v25 = (*(v23 + 8))(v56, v57, v58, v59, v60, a6, a7, v55 & 1, a9, v24, v23);
      v26 = sub_27104074C();
      v27 = v61;
      (*v54)(v61, v26, v14);
      sub_2710508F4(v64, v63);
      v28 = sub_2710F6D2C();
      v29 = sub_2710F711C();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v52 = v20;
        v32 = v31;
        v62 = v31;
        *v30 = v49;
        v33 = __swift_project_boxed_opaque_existential_1Tm(v63, v63[3]);
        MEMORY[0x28223BE20](v33);
        (*(v35 + 16))(&v49 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
        v36 = sub_2710F6E7C();
        v38 = v37;
        a7 = v51;
        __swift_destroy_boxed_opaque_existential_0Tm(v63);
        v39 = sub_2710475BC(v36, v38, &v62);
        a6 = v50;

        *(v30 + 4) = v39;
        *(v30 + 12) = 2048;
        *(v30 + 14) = v25;
        _os_log_impl(&dword_27103D000, v28, v29, "  - %s produced score %f", v30, 0x16u);
        v40 = __swift_destroy_boxed_opaque_existential_0Tm(v32);
        v41 = v32;
        v20 = v52;
        MEMORY[0x2743BDA30](v41, -1, -1, v40);
        MEMORY[0x2743BDA30](v30, -1, -1);

        (*v53)(v61, v14);
      }

      else
      {

        (*v53)(v27, v14);
        __swift_destroy_boxed_opaque_existential_0Tm(v63);
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v64);
      v67 = v20;
      v43 = v20[2];
      v42 = v20[3];
      v44 = v43 + 1;
      if (v43 >= v42 >> 1)
      {
        v16 = sub_271051CC8((v42 > 1), v43 + 1, 1);
        v20 = v67;
      }

      v20[2] = v44;
      *&v20[v43 + 4] = v25;
      v21 += 40;
      --v19;
    }

    while (v19);
  }

  else
  {
    v20 = MEMORY[0x277D84F90];
    v44 = *(MEMORY[0x277D84F90] + 16);
    if (!v44)
    {
      v47 = 0.0;
      goto LABEL_15;
    }
  }

  v17.n128_u64[0] = v20[4];
  v45 = v44 - 1;
  if (v44 != 1)
  {
    v46 = 5;
    do
    {
      v16 = a11(v16, v17, *&v20[v46++]);
      --v45;
    }

    while (v45);
  }

  v47 = v17.n128_f64[0];
LABEL_15:

  return v47;
}

double sub_271050F00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, double a9)
{
  v10 = v9;
  v20 = *(v10 + 24);
  v19 = *(v10 + 32);
  __swift_project_boxed_opaque_existential_1Tm(v10, v20);
  return (*(v19 + 8))(a1, a2, a3, a4, a5, a6, a7, a8 & 1, a9, v20, v19) * *(v10 + 40);
}

uint64_t sub_271050FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, double a9)
{
  v10 = v9;
  result = (*(v9 + 40))();
  if (result)
  {
    v23 = a7;
    v22 = *(v9 + 24);
    v21 = v10[4];
    __swift_project_boxed_opaque_existential_1Tm(v10, v10[3]);
    return (*(v21 + 8))(a1, a2, a3, a4, a5, a6, v23, a8 & 1, a9, v22, v21);
  }

  return result;
}

uint64_t sub_2710510B4(uint64_t a1, char a2)
{
  if (a2)
  {
    if (*&a1 == 0.0)
    {
      return 0x646578616C6572;
    }

    else
    {
      return 1885956979;
    }
  }

  else if (*&a1 <= 0.0)
  {
    return 0x746369727473;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808751A8, &qword_271102970);
    v4 = swift_allocObject();
    v5 = MEMORY[0x277D839F8];
    *(v4 + 16) = xmmword_271101AF0;
    v6 = MEMORY[0x277D83A80];
    *(v4 + 56) = v5;
    *(v4 + 64) = v6;
    *(v4 + 32) = *&a1;
    v7 = sub_2710F6E4C();
    MEMORY[0x2743BBEF0](v7);

    MEMORY[0x2743BBEF0](41, 0xE100000000000000);
    return 0x28746369727473;
  }
}

uint64_t sub_2710511D0(uint64_t a1)
{
  v1 = [objc_opt_self() matchingPolicyForMapItem_];
  if (v1 > 2)
  {
    if (v1 == 3)
    {
      return 0x3FE8000000000000;
    }

    else if (v1 == 4)
    {
      return 1;
    }

    else
    {
      return 0x3FE0000000000000;
    }
  }

  else if (v1 == 1)
  {
    return 0;
  }

  else if (v1 == 2)
  {
    return 0;
  }

  else
  {
    return 0x3FE0000000000000;
  }
}

void sub_271051270(double a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  if (a2)
  {
    if (a1 == 0.0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808751B0, &qword_271102B48);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_271102950;
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_271102950;
      *(v22 + 56) = &type metadata for ConstantScoreProvider;
      *(v22 + 64) = &off_2880FE708;
      *(v22 + 32) = 0x3FE999999999999ALL;
      GEOLocationCoordinate2DMake();
      *(v22 + 96) = &type metadata for WeightedScoreProvider;
      *(v22 + 104) = &off_2880FE718;
      v23 = swift_allocObject();
      *(v22 + 72) = v23;
      v23[5] = &type metadata for ProximityCandidateScoreProvider;
      v23[6] = &off_2880FF070;
      v23[7] = 0x3FC999999999999ALL;
      *(v21 + 56) = &type metadata for CompositeScoreProvider;
      *(v21 + 64) = &off_2880FE6F8;
      *(v21 + 32) = v22;
      *(v21 + 40) = sub_271052020;
      *(v21 + 48) = 0;
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_271102950;
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_271102950;
      *(v25 + 56) = &type metadata for ConstantScoreProvider;
      *(v25 + 64) = &off_2880FE708;
      *(v25 + 32) = 0x3FD999999999999ALL;
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_271102950;
      GEOLocationCoordinate2DMake();
      *(v26 + 56) = &type metadata for WeightedScoreProvider;
      *(v26 + 64) = &off_2880FE718;
      v27 = swift_allocObject();
      *(v26 + 32) = v27;
      v27[5] = &type metadata for DoorNumberCandidateScoreProvider;
      v27[6] = &off_2880FEA78;
      v27[7] = 0x3FC999999999999ALL;
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_271102960;
      GEOLocationCoordinate2DMake();
      *(v28 + 56) = &type metadata for TextRecognitionCandidateScoreProvider;
      *(v28 + 64) = &off_2880FEF50;
      *(v28 + 32) = v29;
      GEOLocationCoordinate2DMake();
      *(v28 + 96) = &type metadata for DataDetectorDetectionRanker;
      *(v28 + 104) = &off_2880FF0E0;
      *(v28 + 72) = v30;
      GEOLocationCoordinate2DMake();
      *(v28 + 136) = &type metadata for BrandClassificationCandidateScoreProvider;
      *(v28 + 144) = &off_2880FE610;
      GEOLocationCoordinate2DMake();
      v32 = v31;
      *(v28 + 176) = &type metadata for ConditionalScoreProvider;
      *(v28 + 184) = &off_2880FE728;
      v33 = swift_allocObject();
      *(v28 + 152) = v33;
      v33[5] = &type metadata for WeightedScoreProvider;
      v33[6] = &off_2880FE718;
      v34 = swift_allocObject();
      v33[2] = v34;
      *(v34 + 40) = &type metadata for TextRecognitionCandidateScoreProvider;
      *(v34 + 16) = v32;
      *(v34 + 48) = &off_2880FEF50;
      *(v34 + 56) = 0x3FE6666666666666;
      v33[7] = sub_271052028;
      v33[8] = 0;
      v35 = sub_27105CCA8();
      *(v28 + 216) = &type metadata for ConditionalScoreProvider;
      *(v28 + 224) = &off_2880FE728;
      v36 = swift_allocObject();
      *(v28 + 192) = v36;
      *(v36 + 5) = &type metadata for EmbeddingsCandidateScoreProvider;
      *(v36 + 6) = &off_2880FF190;
      v36[2] = v35;
      *(v36 + 7) = sub_27105202C;
      v36[8] = 0.0;
      *(v26 + 96) = &type metadata for CompositeScoreProvider;
      *(v26 + 104) = &off_2880FE6F8;
      *(v26 + 72) = v28;
      *(v26 + 80) = sub_271051AC8;
      *(v26 + 88) = 0;
      *(v25 + 96) = &type metadata for WeightedScoreProvider;
      *(v25 + 104) = &off_2880FE718;
      v37 = swift_allocObject();
      *(v25 + 72) = v37;
      v37[5] = &type metadata for CompositeScoreProvider;
      v37[6] = &off_2880FE6F8;
      v37[2] = v26;
      v37[3] = sub_271051AD4;
      v37[4] = 0;
      v37[7] = 0x3FE3333333333333;
      *(v24 + 56) = &type metadata for CompositeScoreProvider;
      *(v24 + 64) = &off_2880FE6F8;
      *(v24 + 32) = v25;
      *(v24 + 40) = sub_271052020;
      *(v24 + 48) = 0;
      GEOLocationCoordinate2DMake();
      *(v24 + 96) = &type metadata for HeadingCandidateScoreProvider;
      *(v24 + 104) = &off_2880FE5E0;
      *(v21 + 96) = &type metadata for CompositeScoreProvider;
      *(v21 + 104) = &off_2880FE6F8;
      *(v21 + 72) = v24;
      *(v21 + 80) = sub_271051ADC;
      *(v21 + 88) = 0;
      a3[3] = &type metadata for CompositeScoreProvider;
      a3[4] = &off_2880FE6F8;
      *a3 = v21;
      a3[1] = sub_271051AF4;
      a3[2] = 0;
    }

    else
    {
      a3[3] = &type metadata for ConstantScoreProvider;
      a3[4] = &off_2880FE708;
      *a3 = 0;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808751B0, &qword_271102B48);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_271102950;
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_271102950;
    *(v6 + 56) = &type metadata for ConstantScoreProvider;
    *(v6 + 64) = &off_2880FE708;
    *(v6 + 32) = 0x3FE999999999999ALL;
    GEOLocationCoordinate2DMake();
    *(v6 + 96) = &type metadata for WeightedScoreProvider;
    *(v6 + 104) = &off_2880FE718;
    v7 = swift_allocObject();
    *(v6 + 72) = v7;
    v7[5] = &type metadata for ProximityCandidateScoreProvider;
    v7[6] = &off_2880FF070;
    v7[7] = 0x3FC999999999999ALL;
    *(v5 + 56) = &type metadata for CompositeScoreProvider;
    *(v5 + 64) = &off_2880FE6F8;
    *(v5 + 32) = v6;
    *(v5 + 40) = sub_271052020;
    *(v5 + 48) = 0;
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_271102950;
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_271102950;
    GEOLocationCoordinate2DMake();
    *(v9 + 56) = &type metadata for WeightedScoreProvider;
    *(v9 + 64) = &off_2880FE718;
    v10 = swift_allocObject();
    *(v9 + 32) = v10;
    v10[5] = &type metadata for DoorNumberCandidateScoreProvider;
    v10[6] = &off_2880FEA78;
    v10[7] = 0x3FC999999999999ALL;
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_271102960;
    GEOLocationCoordinate2DMake();
    *(v11 + 56) = &type metadata for TextRecognitionCandidateScoreProvider;
    *(v11 + 64) = &off_2880FEF50;
    *(v11 + 32) = v12;
    GEOLocationCoordinate2DMake();
    *(v11 + 96) = &type metadata for DataDetectorDetectionRanker;
    *(v11 + 104) = &off_2880FF0E0;
    *(v11 + 72) = v13;
    GEOLocationCoordinate2DMake();
    *(v11 + 136) = &type metadata for BrandClassificationCandidateScoreProvider;
    *(v11 + 144) = &off_2880FE610;
    GEOLocationCoordinate2DMake();
    v15 = v14;
    *(v11 + 176) = &type metadata for ConditionalScoreProvider;
    *(v11 + 184) = &off_2880FE728;
    v16 = swift_allocObject();
    *(v11 + 152) = v16;
    v16[5] = &type metadata for WeightedScoreProvider;
    v16[6] = &off_2880FE718;
    v17 = swift_allocObject();
    v16[2] = v17;
    *(v17 + 40) = &type metadata for TextRecognitionCandidateScoreProvider;
    *(v17 + 48) = &off_2880FEF50;
    *(v17 + 16) = v15;
    *(v17 + 56) = 0x3FE6666666666666;
    v16[7] = sub_271052028;
    v16[8] = 0;
    v18 = sub_27105CCA8();
    *(v11 + 216) = &type metadata for ConditionalScoreProvider;
    *(v11 + 224) = &off_2880FE728;
    v19 = swift_allocObject();
    *(v11 + 192) = v19;
    *(v19 + 5) = &type metadata for EmbeddingsCandidateScoreProvider;
    *(v19 + 6) = &off_2880FF190;
    v19[2] = v18;
    *(v19 + 7) = sub_27105202C;
    v19[8] = 0.0;
    *(v9 + 96) = &type metadata for CompositeScoreProvider;
    *(v9 + 104) = &off_2880FE6F8;
    *(v9 + 72) = v11;
    *(v9 + 80) = sub_271051AC8;
    *(v9 + 88) = 0;
    *(v8 + 56) = &type metadata for CompositeScoreProvider;
    *(v8 + 64) = &off_2880FE6F8;
    *(v8 + 32) = v9;
    *(v8 + 40) = sub_271052020;
    *(v8 + 48) = 0;
    GEOLocationCoordinate2DMake();
    *(v8 + 96) = &type metadata for HeadingCandidateScoreProvider;
    *(v8 + 104) = &off_2880FE5E0;
    *(v5 + 96) = &type metadata for CompositeScoreProvider;
    *(v5 + 104) = &off_2880FE6F8;
    *(v5 + 72) = v8;
    *(v5 + 80) = sub_271052034;
    *(v5 + 88) = 0;
    if (a1 <= 0.0)
    {
      a3[3] = &type metadata for CompositeScoreProvider;
      a3[4] = &off_2880FE6F8;
      *a3 = v5;
      a3[1] = sub_271052024;
      a3[2] = 0;
    }

    else
    {
      a3[3] = &type metadata for FilteredScoreProvider;
      a3[4] = &off_2880FE6E8;
      v20 = swift_allocObject();
      *a3 = v20;
      *(v20 + 40) = &type metadata for CompositeScoreProvider;
      *(v20 + 48) = &off_2880FE6F8;
      *(v20 + 16) = v5;
      *(v20 + 24) = sub_271052024;
      *(v20 + 32) = 0;
      *(v20 + 56) = a1;
    }
  }
}

double sub_271051AC8(double result, double a2)
{
  if (result <= a2)
  {
    return a2;
  }

  return result;
}

double sub_271051ADC(double result, double a2)
{
  v2 = result * a2;
  if (result <= 0.8)
  {
    return v2;
  }

  return result;
}

double sub_271051AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, double a17, char a18)
{
  sub_271051270(a17, a18 & 1, v31);
  v27 = v32;
  v28 = v33;
  __swift_project_boxed_opaque_existential_1Tm(v31, v32);
  v29 = (*(v28 + 8))(a1, a2, a3, a4, a5, a6, a7, a8 & 1, a9, v27, v28);
  __swift_destroy_boxed_opaque_existential_0Tm(v31);
  return v29;
}

double sub_271051BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, double a9)
{
  sub_271051270(*v9, *(v9 + 8), v23);
  v19 = v24;
  v20 = v25;
  __swift_project_boxed_opaque_existential_1Tm(v23, v24);
  v21 = (*(v20 + 8))(a1, a2, a3, a4, a5, a6, a7, a8 & 1, a9, v19, v20);
  __swift_destroy_boxed_opaque_existential_0Tm(v23);
  return v21;
}

char *sub_271051CC8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_271051F18(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_271051D20(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_271051D68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_271051DC4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_271051E0C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for CandidateScoreRecipe(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CandidateScoreRecipe(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_271051ECC(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_271051EE8(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

char *sub_271051F18(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808751B8, &qword_271103370);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

double sub_271052040(void *a1, uint64_t a2)
{
  v3 = [a1 addressObject];
  v4 = 0.0;
  if (v3)
  {
    v5 = v3;
    v6 = [v3 address];

    if (v6)
    {
      v7 = [v6 structuredAddress];

      if (v7)
      {
        v8 = [v7 subThoroughfare];

        if (v8)
        {
          v9 = sub_2710F6E3C();
          v11 = v10;

          v12 = *(a2 + 16);
          if (v12)
          {
            v13 = 0;
            v14 = a2 + 32;
            if ((v11 & 0x2000000000000000) != 0)
            {
              v15 = HIBYTE(v11) & 0xF;
            }

            else
            {
              v15 = v9 & 0xFFFFFFFFFFFFLL;
            }

            do
            {
              v16 = v14 + 48 * v13++;
              v17 = *(v16 + 32);
              v18 = (v17 + 56);
              v19 = *(v17 + 16) + 1;
              while (--v19)
              {
                v4 = 1.0;
                if (*(v18 - 1) != v9 || *v18 != v11 || *(v18 - 3) >> 16 != 0 || *(v18 - 2) >> 16 != v15)
                {
                  v18 += 4;
                  if ((sub_2710F745C() & 1) == 0)
                  {
                    continue;
                  }
                }

                goto LABEL_25;
              }
            }

            while (v13 != v12);
            v4 = 0.0;
          }

LABEL_25:
        }
      }
    }
  }

  return v4;
}

BOOL static VLLocalizationDataKey.== infix(_:_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = (a4 ^ a2) >> 32 == 0;
  if (a2 != a4)
  {
    v4 = 0;
  }

  return a1 == a3 && v4;
}

uint64_t VLLocalizationDataKey.hash(into:)(uint64_t a1, unint64_t a2, unint64_t a3)
{
  sub_2710F754C();
  sub_2710F754C();
  sub_2710F754C();
  return sub_2710F754C();
}

uint64_t VLLocalizationDataKey.hashValue.getter(unint64_t a1, unint64_t a2)
{
  sub_2710F751C();
  sub_2710F754C();
  sub_2710F754C();
  sub_2710F754C();
  sub_2710F754C();
  return sub_2710F756C();
}

uint64_t sub_271052320()
{
  sub_2710F751C();
  sub_2710F754C();
  sub_2710F754C();
  sub_2710F754C();
  sub_2710F754C();
  return sub_2710F756C();
}

uint64_t sub_2710523A0()
{
  sub_2710F754C();
  sub_2710F754C();
  sub_2710F754C();
  return sub_2710F754C();
}

uint64_t sub_2710523F8(uint64_t a1)
{
  sub_2710F751C();
  sub_2710F754C();
  sub_2710F754C();
  sub_2710F754C();
  sub_2710F754C();
  return sub_2710F756C();
}

uint64_t sub_271052480(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6C6576656CLL;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 121;
    }

    else
    {
      v4 = 0x6961747265636E75;
    }

    if (v3 == 2)
    {
      v5 = 0xE100000000000000;
    }

    else
    {
      v5 = 0xEB0000000079746ELL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 120;
    }

    else
    {
      v4 = 0x6C6576656CLL;
    }

    if (v3)
    {
      v5 = 0xE100000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0xE100000000000000;
  v8 = 121;
  if (a2 != 2)
  {
    v8 = 0x6961747265636E75;
    v7 = 0xEB0000000079746ELL;
  }

  if (a2)
  {
    v2 = 120;
    v6 = 0xE100000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2710F748C();
  }

  return v11 & 1;
}

uint64_t sub_2710525A0()
{
  sub_2710F751C();
  sub_2710F6EAC();

  return sub_2710F756C();
}

uint64_t sub_271052650(uint64_t a1)
{
  sub_2710F6EAC();
}

uint64_t sub_2710526EC(uint64_t a1)
{
  sub_2710F751C();
  sub_2710F6EAC();

  return sub_2710F756C();
}

unint64_t sub_271052798@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_271056E98(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2710527C8(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x6C6576656CLL;
  v4 = 0xE100000000000000;
  v5 = 121;
  if (*v1 != 2)
  {
    v5 = 0x6961747265636E75;
    v4 = 0xEB0000000079746ELL;
  }

  if (*v1)
  {
    v3 = 120;
    v2 = 0xE100000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_271052834()
{
  v1 = 0x6C6576656CLL;
  v2 = 121;
  if (*v0 != 2)
  {
    v2 = 0x6961747265636E75;
  }

  if (*v0)
  {
    v1 = 120;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_27105289C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_271056E98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2710528D0(uint64_t a1)
{
  v2 = sub_2710570D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27105290C(uint64_t a1)
{
  v2 = sub_2710570D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t VLLocalizationDataKey.encode(to:)(void *a1, unint64_t a2, unint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808751C0, &qword_271102BD0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_2710570D8();
  sub_2710F758C();
  v14 = 0;
  sub_2710F743C();
  if (v3)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v13 = 1;
  sub_2710F743C();
  v12 = 2;
  sub_2710F743C();
  v11 = 3;
  sub_2710F743C();
  return (*(v6 + 8))(v8, v5);
}

void sub_271052B28(uint64_t *a1@<X8>, void *a2@<X0>)
{
  sub_271056EE4(a2);
  if (!v2)
  {
    *a1 = v4;
    a1[1] = v5;
  }
}

uint64_t sub_271052BC8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t VLLocalizer.fetchTileData(at:)(unint64_t a1, __n128 a2, double a3, double a4)
{
  v5[3].n128_u64[1] = v4;
  v5[2].n128_f64[1] = a3;
  v5[3].n128_f64[0] = a4;
  v5[1] = a2;
  v5[2].n128_u64[0] = a1;
  return MEMORY[0x2822009F8](sub_271052C98, 0, 0);
}

uint64_t sub_271052C98()
{
  v1 = sub_2710564C4(*(v0 + 16), *(v0 + 40), *(v0 + 48));
  v3 = v2;
  v4 = v1;
  v5 = [*(v0 + 56) _dataProvider];
  *(v0 + 64) = v5;
  swift_getObjectType();
  v6 = swift_conformsToProtocol2();
  if (v6)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    swift_unknownObjectRelease();
    return sub_2710F733C();
  }

  else
  {
    v9 = v6;
    ObjectType = swift_getObjectType();
    v13 = (*(v9 + 8) + **(v9 + 8));
    v11 = swift_task_alloc();
    *(v0 + 72) = v11;
    *v11 = v0;
    v11[1] = sub_271052EE0;
    v12 = *(v0 + 32);

    return v13(v12, v4, v3, ObjectType, v9);
  }
}

uint64_t sub_271052EE0()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_271053058;
  }

  else
  {
    v2 = sub_271052FF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_271052FF4()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_271053058()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

id VLLocalizer.locate(with:deviceLocation:gravity:cameraIntrinsics:radialDistortion:timestamp:)(void *a1, float64x2_t a2, float64x2_t a3, double a4, __n128 a5, __n128 a6, float a7, float64x2_t a8, __n128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, int a18, int a19, int a20, int a21, int a22, int a23, int a24, int a25, double a26)
{
  v432 = a6;
  v433 = a8;
  v434 = a5;
  v435 = a9;
  v445 = a3;
  v447 = a2;
  v420 = a1;
  v496 = *MEMORY[0x277D85DE8];
  v28 = sub_2710F6CDC();
  v402 = *(v28 - 8);
  v403 = v28;
  v29 = MEMORY[0x28223BE20](v28);
  v398 = v384 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v399 = v384 - v32;
  MEMORY[0x28223BE20](v31);
  v395 = v384 - v33;
  v442.n128_u64[0] = sub_2710F6CCC();
  v443.n128_u64[0] = *(v442.n128_u64[0] - 8);
  v34 = MEMORY[0x28223BE20](v442.n128_u64[0]);
  v407 = (v384 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = MEMORY[0x28223BE20](v34);
  v408 = (v384 - v37);
  v38 = MEMORY[0x28223BE20](v36);
  v400 = (v384 - v39);
  v40 = MEMORY[0x28223BE20](v38);
  v410 = (v384 - v41);
  v42 = MEMORY[0x28223BE20](v40);
  v423 = v384 - v43;
  MEMORY[0x28223BE20](v42);
  v45 = v384 - v44;
  *&v438 = sub_2710F6CAC();
  *&v436 = *(v438 - 8);
  v46 = MEMORY[0x28223BE20](v438);
  v404 = v384 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x28223BE20](v46);
  v406 = v384 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v411 = v384 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v421 = v384 - v53;
  MEMORY[0x28223BE20](v52);
  *&v440.f64[0] = v384 - v54;
  v55 = sub_2710F6D5C();
  v416 = *(v55 - 8);
  v417 = v55;
  MEMORY[0x28223BE20](v55);
  v414 = v384 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_2710F6D7C();
  v418 = *(v57 - 8);
  v419 = v57;
  MEMORY[0x28223BE20](v57);
  v415 = v384 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_2710F6D4C();
  *&v444 = *(v59 - 8);
  v60 = MEMORY[0x28223BE20](v59);
  v62 = v384 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = MEMORY[0x28223BE20](v60);
  v401 = v384 - v64;
  v65 = MEMORY[0x28223BE20](v63);
  v397 = v384 - v66;
  v67 = MEMORY[0x28223BE20](v65);
  v409 = v384 - v68;
  v69 = MEMORY[0x28223BE20](v67);
  v405 = (v384 - v70);
  v71 = MEMORY[0x28223BE20](v69);
  v422 = v384 - v72;
  v73 = MEMORY[0x28223BE20](v71);
  v75 = v384 - v74;
  MEMORY[0x28223BE20](v73);
  v77 = v384 - v76;
  v78 = sub_271040820();
  v79 = *v78;
  v80 = sub_2710F711C();
  v81 = os_log_type_enabled(v79, v80);

  *&v437.f64[0] = v59;
  if (v81)
  {
    v469[0] = v447;
    v469[1] = v445;
    v82 = VLCoordinateFromECEF(v469);
    v84 = v83;
    v86 = v85;
    v87 = sub_2710408A4();
    (*(v444 + 16))(v77, v87, v59);
    v88 = sub_2710F6D2C();
    v89 = sub_2710F711C();
    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      *v90 = 134285057;
      *(v90 + 4) = v82;
      *(v90 + 12) = 2049;
      *(v90 + 14) = v84;
      *(v90 + 22) = 2049;
      *(v90 + 24) = v86;
      *(v90 + 32) = 2049;
      v91 = v447.f64[1];
      *(v90 + 34) = v447.f64[0];
      *(v90 + 44) = v91;
      *(v90 + 42) = 2049;
      *(v90 + 52) = 2049;
      *(v90 + 54) = v445.f64[0];
      *(v90 + 62) = 2050;
      *(v90 + 64) = a26;
      _os_log_impl(&dword_27103D000, v88, v89, "locate: (%{private}f, %{private}f, %{private}f) / ECEF: (%{private}f, %{private}f, %{private}f) @ %{public}f", v90, 0x48u);
      v92 = v90;
      v59 = *&v437.f64[0];
      MEMORY[0x2743BDA30](v92, -1, -1);
    }

    (*(v444 + 8))(v77, v59);
  }

  GEOGetMonotonicTime();
  v94 = v93;
  v95 = objc_opt_self();
  v96 = [v95 _debugInfoRecorder];
  if (v96)
  {
    v98 = swift_allocObject();
    *(v98 + 16) = v96;
    v441 = sub_2710574B0;
  }

  else
  {
    v441 = 0;
    v98 = 0;
  }

  LODWORD(v97) = a25;
  v431 = v97;
  LODWORD(v97) = a24;
  v446 = v97;
  LODWORD(v97) = a23;
  v430 = v97;
  LODWORD(v97) = a22;
  v427 = v97;
  LODWORD(v97) = a21;
  v425 = v97;
  LODWORD(v97) = a20;
  v429 = v97;
  LODWORD(v97) = a19;
  v426 = v97;
  LODWORD(v97) = a18;
  v424 = v97;
  LODWORD(v97) = a17;
  v428 = v97;
  v100 = v447.f64[1];
  if ([v95 isVisualLocalizationSupported])
  {
    v101 = [v439 _debugInfoShouldPreserveImageData];
    v388 = v78;
    v389 = v62;
    v412 = v98;
    v391 = v96;
    if (v101)
    {
      v102 = 1;
    }

    else
    {
      BOOL = GEOConfigGetBOOL();
      if (v96)
      {
        v102 = 1;
      }

      else
      {
        v102 = BOOL;
      }
    }

    v390 = v102;
    v136 = sub_2710409AC();
    v137 = v443.n128_u64[0];
    v139 = v443.n128_u64[0] + 16;
    v138 = *(v443.n128_u64[0] + 16);
    v140 = v442.n128_u64[0];
    v138(v45, v136, v442.n128_u64[0]);
    sub_2710F6CBC();
    v141 = v420;
    v142 = v440.f64[0];
    v420 = v141;
    sub_2710F6C8C();
    v143 = *(v137 + 8);
    v443.n128_u64[0] = v137 + 8;
    v413 = v143;
    v143(v45, v140);
    v392 = v136;
    v393 = v138;
    v394 = v139;
    v138(v423, v136, v140);
    v144 = v439;
    v145 = sub_2710F6CBC();
    v146 = sub_2710F716C();
    v147 = sub_2710F71CC();
    v396 = v144;
    if (v147)
    {
      v148 = swift_slowAlloc();
      *v148 = 134217984;
      *(v148 + 4) = [v144 _signpostID];

      v149 = sub_2710F6C9C();
      _os_signpost_emit_with_name_impl(&dword_27103D000, v145, v146, v149, "Locate", "parent_signpost=%llu", v148, 0xCu);
      MEMORY[0x2743BDA30](v148, -1, -1);
    }

    else
    {

      v145 = v144;
    }

    v150 = v421;
    v151 = v422;

    v152 = v436;
    v153 = *(v436 + 16);
    (v153)(v150, *&v142, v438);
    sub_2710F6D0C();
    swift_allocObject();
    v439 = sub_2710F6CFC();
    v413(v423, v442.n128_u64[0]);
    ptr = 0;
    v494 = 0;
    v495 = 0;
    v154 = v420;
    PixelFormatType = CVPixelBufferGetPixelFormatType(v420);
    v156 = PixelFormatType;
    if (PixelFormatType <= 1278226487)
    {
      if (PixelFormatType != 875704422 && PixelFormatType != 875704438)
      {
LABEL_53:
        v423 = v153;
        v210 = sub_2710F6FBC();
        *(v210 + 16) = 4;
        *(v210 + 32) = HIBYTE(v156);
        *(v210 + 34) = BYTE2(v156);
        *(v210 + 36) = BYTE1(v156);
        *(v210 + 38) = v156;
        v211 = sub_2710408A4();
        v212 = v444;
        v213 = *(v444 + 16);
        v214 = v151;
        v385 = v211;
        v386 = v213;
        v215 = v151;
        v216 = v437.f64[0];
        v387 = v444 + 16;
        v213(v214);
        v217 = sub_2710F6D2C();
        v218 = sub_2710F710C();
        if (os_log_type_enabled(v217, v218))
        {
          v219 = swift_slowAlloc();
          *v219 = 33555456;
          if (!*(v210 + 16))
          {
LABEL_173:
            __break(1u);
            goto LABEL_174;
          }

          v220 = v219;
          *(v219 + 4) = *(v210 + 32);
          *(v219 + 6) = 512;
          if (*(v210 + 16) < 2uLL)
          {
LABEL_174:
            __break(1u);
            goto LABEL_175;
          }

          *(v219 + 8) = *(v210 + 34);
          *(v219 + 10) = 512;
          if (*(v210 + 16) < 3uLL)
          {
LABEL_175:
            __break(1u);
            goto LABEL_176;
          }

          *(v219 + 12) = *(v210 + 36);
          *(v219 + 14) = 512;
          if (*(v210 + 16) < 4uLL)
          {
LABEL_176:
            __break(1u);
            goto LABEL_177;
          }

          *(v219 + 16) = *(v210 + 38);
          _os_log_impl(&dword_27103D000, v217, v218, "Input pixel format (%hu%hu%hu%hu) requires conversion", v219, 0x12u);
          MEMORY[0x2743BDA30](v220, -1, -1);
          v216 = v437.f64[0];
          v212 = v444;
          v215 = v422;
        }

        v384[0] = *(v212 + 8);
        v384[1] = v212 + 8;
        (v384[0])(v215, *&v216);
        v221 = v410;
        v393(v410, v392, v442.n128_u64[0]);
        v222 = sub_2710F6CBC();
        v223 = sub_2710F716C();
        if (sub_2710F71CC())
        {
          v224 = swift_slowAlloc();
          *v224 = 0;
          v225 = sub_2710F6C9C();
          _os_signpost_emit_with_name_impl(&dword_27103D000, v222, v223, v225, "ConvertImage", "", v224, 2u);
          MEMORY[0x2743BDA30](v224, -1, -1);
        }

        (v423)(v421, *&v440.f64[0], v438);
        swift_allocObject();
        v226 = sub_2710F6CFC();
        v413(v221, v442.n128_u64[0]);
        v227 = objc_allocWithZone(MEMORY[0x277CBF758]);
        v228 = [v227 initWithCVPixelBuffer_];
        [v228 extent];
        v230 = v229;
        v231 = v411;
        if ((*&v229 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          __break(1u);
        }

        else if (v229 > -9.22337204e18)
        {
          if (v229 < 9.22337204e18)
          {
            [v228 extent];
            if ((*&v232 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              if (v232 > -9.22337204e18)
              {
                if (v232 < 9.22337204e18)
                {
                  v421 = v226;
                  v422 = v210;
                  v423 = v228;
                  v233 = v230;
                  v234 = v232;
                  *&v471 = 0;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280875200, &qword_271102BF8);
                  v235 = swift_allocObject();
                  *(v235 + 16) = xmmword_271101AF0;
                  v236 = *MEMORY[0x277CC4D98];
                  type metadata accessor for CFString(0);
                  *(v235 + 56) = v237;
                  *(v235 + 32) = v236;
                  v238 = objc_allocWithZone(MEMORY[0x277CCABB0]);
                  v239 = v236;
                  v240 = [v238 initWithInteger_];
                  *(v235 + 88) = sub_27104F0C8(0, &qword_280875208, 0x277CCABB0);
                  *(v235 + 64) = v240;
                  sub_27104F0C8(0, &qword_280875210, 0x277CBEAC0);
                  v241 = sub_2710F70FC();
                  v242 = CVPixelBufferCreate(*MEMORY[0x277CBECE8], v230, v234, 0x4C303038u, v241, &v471);
                  v243 = v471;
                  v410 = v241;
                  if (v242)
                  {
                    v245 = v441;
                    v246 = v437.f64[0];
                    v247 = v396;
                  }

                  else
                  {
                    v244 = v412;
                    v245 = v441;
                    v246 = v437.f64[0];
                    v247 = v396;
                    if (v471)
                    {
                      BytesPerRow = CVPixelBufferGetBytesPerRow(v471);
                      v243 = v471;
                      if (BytesPerRow == v233)
                      {
                        if (v471)
                        {
                          v441 = v245;
                          v249 = v471;
                          v250 = objc_allocWithZone(MEMORY[0x277CBF740]);
                          v251 = v249;
                          v252 = [v250 init];
                          v253 = v423;
                          [v252 render:v423 toCVPixelBuffer:v251];

                          CVPixelBufferLockBaseAddress(v251, 1uLL);
                          BaseAddress = CVPixelBufferGetBaseAddress(v251);
                          if (BaseAddress)
                          {
                            if (v233 <= 0x7FFFFFFF)
                            {
                              if (v233 >= 0xFFFFFFFF80000000 && v234 >= 0xFFFFFFFF80000000)
                              {
                                if (v234 <= 0x7FFFFFFF)
                                {
                                  ptr = BaseAddress;
                                  v494 = __PAIR64__(v234, v233);
                                  v495 = 0;
                                  v409 = swift_allocObject();
                                  *(v409 + 2) = v251;
                                  v255 = v397;
                                  v386(v397, v385, *&v437.f64[0]);
                                  v256 = v251;
                                  v257 = sub_2710F6D2C();
                                  v258 = sub_2710F711C();
                                  if (os_log_type_enabled(v257, v258))
                                  {
                                    v259 = swift_slowAlloc();
                                    *v259 = 0;
                                    _os_log_impl(&dword_27103D000, v257, v258, "Successfully converted image to grayscale", v259, 2u);
                                    MEMORY[0x2743BDA30](v259, -1, -1);
                                  }

                                  v160 = v437.f64[0];
                                  (v384[0])(v255, *&v437.f64[0]);
                                  v393(v400, v392, v442.n128_u64[0]);
                                  v260 = sub_2710F6CBC();
                                  sub_2710F6CEC();
                                  v261 = sub_2710F715C();
                                  v262 = sub_2710F71CC();
                                  v263 = v231;
                                  v264 = v436;
                                  if (v262)
                                  {

                                    v265 = v395;
                                    sub_2710F6D1C();

                                    v267 = v402;
                                    v266 = v403;
                                    v268 = (*(v402 + 88))(v265, v403);
                                    v269 = *MEMORY[0x277D85B00];
                                    v405 = v256;
                                    if (v268 == v269)
                                    {
                                      v270 = "[Error] Interval already ended";
                                    }

                                    else
                                    {
                                      (*(v267 + 8))(v265, v266);
                                      v270 = "";
                                    }

                                    v377 = swift_slowAlloc();
                                    *v377 = 0;
                                    v263 = v411;
                                    v378 = sub_2710F6C9C();
                                    _os_signpost_emit_with_name_impl(&dword_27103D000, v260, v261, v378, "ConvertImage", v270, v377, 2u);
                                    MEMORY[0x2743BDA30](v377, -1, -1);
                                    v160 = v437.f64[0];
                                    v256 = v405;
                                  }

                                  (*(v264 + 8))(v263, v438);
                                  v413(v400, v442.n128_u64[0]);
                                  v379 = v471;

                                  v165 = sub_271057C08;
                                  v162 = v420;
                                  v161 = v409;
LABEL_37:
                                  v491 = 0u;
                                  v490 = 0u;
                                  v489 = 0u;
                                  *&v471 = __PAIR64__(v435.n128_u32[0], LODWORD(v433.f64[0]));
                                  *(&v471 + 1) = __PAIR64__(v424, v428);
                                  v472 = v426;
                                  v473 = v429;
                                  v474 = v425;
                                  v475 = v427;
                                  v476 = v430;
                                  v477 = v446;
                                  v478 = v431;
                                  v479 = v447.f64[0];
                                  v480 = v100;
                                  v481 = v445.f64[0];
                                  v482 = a4;
                                  v483 = 0x100000000;
                                  v484 = a26;
                                  v485 = 0;
                                  v486 = v434.n128_u32[0];
                                  v487 = v432.n128_u32[0];
                                  v488 = a7;
                                  v492 = 1;
                                  v166 = v396;
                                  v167 = [v396 _vlHandle];
                                  v465 = 0;
                                  v463 = 0u;
                                  v464 = 0u;
                                  v461 = 0u;
                                  v462 = 0u;
                                  v459 = 0u;
                                  v460 = 0u;
                                  v457 = 0u;
                                  v458 = 0u;
                                  v455 = 0u;
                                  v456 = 0u;
                                  v453 = 0u;
                                  v454 = 0u;
                                  v451 = 0u;
                                  v452 = 0u;
                                  v450 = 0u;
                                  v168 = vl_locate(v167, &ptr, &v471, &v450);
                                  v409 = v161;
                                  v165();
                                  v470 = 0;
                                  memset(v469, 0, sizeof(v469));
                                  vl_stats_get(v167, v469);
                                  LODWORD(v423) = v168;
                                  if (v168 == 1)
                                  {
                                    GEOGetMonotonicTime();
                                    v170 = v169 - v94;
                                    v466 = v447;
                                    *v467 = v445;
                                    *&v467[16] = a4;
                                    v171 = [v166 _clLocationFrom:&v466];
                                    v172 = __PAIR64__(v432.n128_u32[0], v434.n128_u32[0]);
                                    v432 = COERCE_UNSIGNED_INT64(a7);
                                    v173.n128_u64[0] = __PAIR64__(v424, LODWORD(v433.f64[0]));
                                    v173.n128_u64[1] = v425;
                                    v434 = v173;
                                    v173.n128_u64[0] = __PAIR64__(v426, v435.n128_u32[0]);
                                    v173.n128_u32[2] = v427;
                                    v435 = v173;
                                    v433 = vcvtq_f64_f32(v172);
                                    *&v174 = __PAIR64__(v429, v428);
                                    *(&v174 + 1) = v430;
                                    v430 = v174;
                                    v175 = v446;
                                    DWORD1(v175) = v431;
                                    v446 = v175;
                                    v176 = objc_allocWithZone(VLLocalizationDebugInfo);
                                    v466.f64[0] = v447.f64[0];
                                    v466.f64[1] = v100;
                                    *v467 = v445.f64[0];
                                    *&v467[8] = a4;
                                    *&v467[12] = 0x100000000;
                                    v448 = v433;
                                    v449 = v432;
                                    LOBYTE(v383) = v390;
                                    v177 = [v176 initWithPixelBuffer:v162 monotonicTimestamp:&v466 timestamp:v171 duration:&v448 location:v469 clLocation:1 heading:v94 gravity:a26 transform:v170 cameraIntrinsics:0.0 radialDistortion:0.0 exposureTargetOffset:0 statistics:0 resultStatus:0 resultPose:0 preserveImageData:{0, 0, 0, 0, *&v434, *&v435, v430, v446, 0, &v450, v383}];

                                    v178 = objc_allocWithZone(VLLocalizationResult);
                                    *&v446 = v177;
                                    v134 = [v178 initWithTimestamp:&v450 pose:v177 debugInfo:a26];
                                    v179 = *v388;
                                    v180 = sub_2710F710C();
                                    v181 = os_log_type_enabled(v179, v180);

                                    if (v181)
                                    {
                                      v466 = v447;
                                      *v467 = v445;
                                      v182 = VLCoordinateFromECEF(&v466);
                                      v184 = v183;
                                      v186 = v185;
                                      [v134 location];
                                      v187 = VLCoordinateFromECEF(&v466);
                                      v189 = v188;
                                      v191 = v190;
                                      v193 = GEOCoordinateGet3DDistance(v192, v182, v184, v186, v187, v188, v190);
                                      v194 = sub_2710408A4();
                                      (*(v444 + 16))(v401, v194, COERCE_FLOAT64_T(*&v160));
                                      v195 = v134;
                                      v196 = sub_2710F6D2C();
                                      v197 = sub_2710F710C();

                                      if (os_log_type_enabled(v196, v197))
                                      {
                                        v198 = swift_slowAlloc();
                                        *v198 = 134285313;
                                        *(v198 + 4) = v187;
                                        *(v198 + 12) = 2049;
                                        *(v198 + 14) = v189;
                                        *(v198 + 22) = 2049;
                                        *(v198 + 24) = v191;
                                        *(v198 + 32) = 2049;
                                        [v195 location];
                                        *(v198 + 34) = v466.f64[0];
                                        *(v198 + 42) = 2049;
                                        [v195 location];
                                        *(v198 + 44) = v466.f64[1];
                                        *(v198 + 52) = 2049;
                                        [v195 location];
                                        *(v198 + 54) = *v467;
                                        *(v198 + 62) = 2048;
                                        *(v198 + 64) = v193;
                                        *(v198 + 72) = 2048;
                                        *(v198 + 74) = a26;
                                        _os_log_impl(&dword_27103D000, v196, v197, "locate result: (%{private}f, %{private}f, %{private}f) / ECEF: (%{private}f, %{private}f, %{private}f) -- Correction: %f meters @ %f", v198, 0x52u);
                                        MEMORY[0x2743BDA30](v198, -1, -1);
                                      }

                                      (*(v444 + 8))(v401, *&v437.f64[0]);
                                    }

                                    v393(v408, v392, v442.n128_u64[0]);
                                    v199 = v396;
                                    v200 = sub_2710F6CBC();
                                    sub_2710F6CEC();
                                    v201 = sub_2710F715C();
                                    if (sub_2710F71CC())
                                    {

                                      v202 = v399;
                                      sub_2710F6D1C();

                                      v204 = v402;
                                      v203 = v403;
                                      if ((*(v402 + 88))(v202, v403) == *MEMORY[0x277D85B00])
                                      {
                                        v205 = 0;
                                        v206 = "[Error] Interval already ended";
                                      }

                                      else
                                      {
                                        (*(v204 + 8))(v202, v203);
                                        v206 = "parent_signpost=%llu";
                                        v205 = 1;
                                      }

                                      v330 = swift_slowAlloc();
                                      *v330 = 0;
                                      *(v330 + 1) = v205;
                                      *(v330 + 2) = 2048;
                                      *(v330 + 4) = [v199 _signpostID];

                                      v303 = v406;
                                      v331 = sub_2710F6C9C();
                                      _os_signpost_emit_with_name_impl(&dword_27103D000, v200, v201, v331, "Locate", v206, v330, 0xCu);
                                      MEMORY[0x2743BDA30](v330, -1, -1);
                                    }

                                    else
                                    {

                                      v303 = v406;
                                    }

                                    v332 = v441;

                                    v333 = v436 + 8;
                                    v334 = *(v436 + 8);
                                    v335 = v438;
                                    v334(v303, v438);
                                    v413(v408, v442.n128_u64[0]);
                                    if (v391)
                                    {
                                      v336 = v412;

                                      *&v447.f64[0] = [v199 _recorderQueue];
                                      v337 = swift_allocObject();
                                      v337[2] = v332;
                                      v337[3] = v336;
                                      v441 = v332;
                                      v338 = v446;
                                      v337[4] = v446;
                                      *&v467[16] = sub_271057C10;
                                      v468 = v337;
                                      *&v466.f64[0] = MEMORY[0x277D85DD0];
                                      *&v466.f64[1] = 1107296256;
                                      *v467 = sub_271056480;
                                      *&v467[8] = &block_descriptor_23;
                                      v339 = _Block_copy(&v466);
                                      *&v436 = v333;
                                      v340 = v339;
                                      sub_2710572E4(v332, v336);
                                      *&v445.f64[0] = v338;
                                      *&v446 = v334;
                                      v341 = v415;
                                      sub_2710F6D6C();
                                      *&v448.f64[0] = MEMORY[0x277D84F90];
                                      sub_2710572F4(&qword_2808751E8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
                                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808751F0, &qword_271102BF0);
                                      sub_27105733C();
                                      v342 = v414;
                                      v343 = v417;
                                      sub_2710F726C();
                                      v344 = v447.f64[0];
                                      MEMORY[0x2743BC150](0, v341, v342, v340);

                                      _Block_release(v340);

                                      v345 = v441;
                                      sub_27104EE60(v441, v336);

                                      v346 = sub_27104EE60(v345, v336);
                                      (*(v416 + 8))(v342, v343, v346);
                                      (*(v418 + 8))(v341, v419);
                                      (v446)(*&v440.f64[0], v438);
                                    }

                                    else
                                    {
                                      v334(*&v440.f64[0], v335);
                                    }

                                    return v134;
                                  }

                                  v271 = sub_2710408A4();
                                  v272 = v444;
                                  v273 = v389;
                                  (*(v444 + 16))(v389, v271, COERCE_FLOAT64_T(*&v160));
                                  v274 = sub_2710F6D2C();
                                  v275 = sub_2710F710C();
                                  if (os_log_type_enabled(v274, v275))
                                  {
                                    v276 = swift_slowAlloc();
                                    *v276 = 67109376;
                                    *(v276 + 4) = v423;
                                    *(v276 + 8) = 2048;
                                    *(v276 + 10) = a26;
                                    _os_log_impl(&dword_27103D000, v274, v275, "locate failed: %u @ %f", v276, 0x12u);
                                    v277 = v276;
                                    v273 = v389;
                                    MEMORY[0x2743BDA30](v277, -1, -1);
                                  }

                                  (*(v272 + 8))(v273, COERCE_FLOAT64_T(*&v160));
                                  v393(v407, v392, v442.n128_u64[0]);
                                  v278 = v166;
                                  v279 = sub_2710F6CBC();
                                  v280 = v404;
                                  sub_2710F6CEC();
                                  v281 = sub_2710F715C();
                                  v282 = sub_2710F71CC();
                                  v283 = v440.f64[0];
                                  if (v282)
                                  {

                                    v284 = v398;
                                    sub_2710F6D1C();

                                    v286 = v402;
                                    v285 = v403;
                                    if ((*(v402 + 88))(v284, v403) == *MEMORY[0x277D85B00])
                                    {
                                      v287 = 0;
                                      v288 = "[Error] Interval already ended";
                                    }

                                    else
                                    {
                                      (*(v286 + 8))(v284, v285);
                                      v288 = "parent_signpost=%llu";
                                      v287 = 1;
                                    }

                                    v304 = v420;
                                    v347 = swift_slowAlloc();
                                    *v347 = 0;
                                    *(v347 + 1) = v287;
                                    *(v347 + 2) = 2048;
                                    *(v347 + 4) = [v278 _signpostID];

                                    v348 = v404;
                                    v349 = sub_2710F6C9C();
                                    v350 = v288;
                                    v280 = v348;
                                    _os_signpost_emit_with_name_impl(&dword_27103D000, v279, v281, v349, "Locate", v350, v347, 0xCu);
                                    MEMORY[0x2743BDA30](v347, -1, -1);
                                    v283 = v440.f64[0];
                                  }

                                  else
                                  {

                                    v304 = v420;
                                  }

                                  v351 = v436 + 8;
                                  v352 = *(v436 + 8);
                                  v352(v280, v438);
                                  v413(v407, v442.n128_u64[0]);
                                  v353 = v423;
                                  if (v391)
                                  {
                                    v354 = v412;

                                    GEOGetMonotonicTime();
                                    v356 = v355 - v94;
                                    v466 = v447;
                                    *v467 = v445;
                                    *&v467[16] = a4;
                                    v357 = [v278 _clLocationFrom:&v466];
                                    v442 = COERCE_UNSIGNED_INT64(a7);
                                    v358.n128_u64[0] = __PAIR64__(v424, LODWORD(v433.f64[0]));
                                    v358.n128_u64[1] = v425;
                                    v444 = v358;
                                    v358.n128_u64[0] = __PAIR64__(v426, v435.n128_u32[0]);
                                    v358.n128_u32[2] = v427;
                                    v443 = v358;
                                    *&v359 = __PAIR64__(v429, v428);
                                    *(&v359 + 1) = v430;
                                    v436 = v359;
                                    v437 = vcvtq_f64_f32(__PAIR64__(v432.n128_u32[0], v434.n128_u32[0]));
                                    v360 = v446;
                                    DWORD1(v360) = v431;
                                    v446 = v360;
                                    v361 = v423;
                                    v362 = objc_allocWithZone(VLLocalizationDebugInfo);
                                    v466.f64[0] = v447.f64[0];
                                    v466.f64[1] = v100;
                                    *v467 = v445.f64[0];
                                    *&v467[8] = a4;
                                    *&v467[12] = 0x100000000;
                                    v448 = v437;
                                    v449 = v442;
                                    LOBYTE(v383) = v390;
                                    v382 = v436;
                                    *&v436 = v351;
                                    v363 = [v362 initWithPixelBuffer:v304 monotonicTimestamp:&v466 timestamp:v357 duration:&v448 location:v469 clLocation:v361 heading:v94 gravity:a26 transform:v356 cameraIntrinsics:0.0 radialDistortion:0.0 exposureTargetOffset:0 statistics:0 resultStatus:0 resultPose:0 preserveImageData:{0, 0, 0, 0, v444, *&v443, v382, v446, 0, 0, v383}];

                                    *&v447.f64[0] = [v278 _recorderQueue];
                                    v364 = swift_allocObject();
                                    v365 = v441;
                                    v364[2] = v441;
                                    v364[3] = v354;
                                    v364[4] = v363;
                                    *&v467[16] = sub_271057C10;
                                    v468 = v364;
                                    *&v466.f64[0] = MEMORY[0x277D85DD0];
                                    *&v466.f64[1] = 1107296256;
                                    *v467 = sub_271056480;
                                    *&v467[8] = &block_descriptor_17;
                                    v366 = _Block_copy(&v466);
                                    sub_2710572E4(v365, v354);
                                    *&v446 = v363;
                                    v367 = v415;
                                    sub_2710F6D6C();
                                    *&v448.f64[0] = MEMORY[0x277D84F90];
                                    sub_2710572F4(&qword_2808751E8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
                                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808751F0, &qword_271102BF0);
                                    sub_27105733C();
                                    v368 = v414;
                                    v369 = v352;
                                    v370 = v417;
                                    sub_2710F726C();
                                    v371 = v447.f64[0];
                                    MEMORY[0x2743BC150](0, v367, v368, v366);
                                    _Block_release(v366);

                                    v283 = v440.f64[0];
                                    v372 = sub_27104EE60(v365, v412);
                                    v373 = v370;
                                    v352 = v369;
                                    v353 = v423;
                                    (*(v416 + 8))(v368, v373, v372);
                                    (*(v418 + 8))(v367, v419);
                                  }

                                  type metadata accessor for VLLocalizerError(0);
                                  if (v353 <= 1023)
                                  {
                                    v374 = v441;
                                    if (v353 <= 31)
                                    {
                                      if (v353 > 7)
                                      {
                                        if (v353 != 8)
                                        {
                                          if (v353 == 16)
                                          {
                                            v375 = 101;
                                            goto LABEL_165;
                                          }

                                          goto LABEL_164;
                                        }
                                      }

                                      else
                                      {
                                        if (v353 == 2)
                                        {
                                          v375 = 2;
                                          goto LABEL_165;
                                        }

                                        if (v353 != 4)
                                        {
                                          goto LABEL_164;
                                        }
                                      }

                                      v375 = 100;
                                      goto LABEL_165;
                                    }

                                    if (v353 <= 127)
                                    {
                                      if (v353 == 32)
                                      {
                                        v375 = 200;
                                        goto LABEL_165;
                                      }

                                      if (v353 == 64)
                                      {
                                        v375 = 201;
                                        goto LABEL_165;
                                      }
                                    }

                                    else
                                    {
                                      switch(v353)
                                      {
                                        case 128:
                                          v375 = 202;
                                          goto LABEL_165;
                                        case 256:
                                          v375 = 203;
                                          goto LABEL_165;
                                        case 512:
                                          v375 = 204;
                                          goto LABEL_165;
                                      }
                                    }
                                  }

                                  else
                                  {
                                    v374 = v441;
                                    if (v353 > 0x4000)
                                    {
                                      if (v353 <= 16386)
                                      {
                                        if (v353 == 16385)
                                        {
                                          v375 = 401;
                                        }

                                        else
                                        {
                                          v375 = 402;
                                        }

                                        goto LABEL_165;
                                      }

                                      switch(v353)
                                      {
                                        case 0x4003:
                                          v375 = 403;
                                          goto LABEL_165;
                                        case 0x4004:
                                          v375 = 404;
                                          goto LABEL_165;
                                        case 0x8000:
                                          v375 = 405;
                                          goto LABEL_165;
                                      }
                                    }

                                    else if (v353 <= 4095)
                                    {
                                      if (v353 == 1024)
                                      {
                                        v375 = 205;
                                        goto LABEL_165;
                                      }

                                      if (v353 == 2048)
                                      {
                                        v375 = 300;
                                        goto LABEL_165;
                                      }
                                    }

                                    else
                                    {
                                      switch(v353)
                                      {
                                        case 0x1000:
                                          v375 = 206;
                                          goto LABEL_165;
                                        case 0x2000:
                                          v375 = 207;
                                          goto LABEL_165;
                                        case 0x4000:
                                          v375 = 400;
LABEL_165:
                                          *&v448.f64[0] = v375;
                                          v134 = sub_271057140(MEMORY[0x277D84F90]);
                                          sub_2710572F4(&qword_2808751C8, type metadata accessor for VLLocalizerError, &unk_271103034);
                                          sub_2710F6BBC();
                                          swift_willThrow();

                                          v380 = sub_27104EE60(v374, v412);
                                          (v352)(*&v283, v438, v380);
                                          return v134;
                                      }
                                    }
                                  }

LABEL_164:
                                  v375 = 1000;
                                  goto LABEL_165;
                                }

                                goto LABEL_182;
                              }

LABEL_181:
                              __break(1u);
LABEL_182:
                              __break(1u);
                              goto LABEL_183;
                            }

LABEL_180:
                            __break(1u);
                            goto LABEL_181;
                          }

                          type metadata accessor for VLLocalizerError(0);
                          *&v450.f64[0] = 2;
                          v134 = sub_271057140(MEMORY[0x277D84F90]);
                          sub_2710572F4(&qword_2808751C8, type metadata accessor for VLLocalizerError, &unk_271103034);
                          sub_2710F6BBC();
                          swift_willThrow();

                          v376 = sub_27104EE60(v441, v412);
                          (*(v436 + 8))(*&v440.f64[0], v438, v376);
                          v329 = v471;
LABEL_105:

                          return v134;
                        }

                        type metadata accessor for VLLocalizerError(0);
                        *&v450.f64[0] = 2;
                        v134 = sub_271057140(MEMORY[0x277D84F90]);
                        sub_2710572F4(&qword_2808751C8, type metadata accessor for VLLocalizerError, &unk_271103034);
                        sub_2710F6BBC();
                        swift_willThrow();

                        v326 = v245;
                        v327 = v244;
LABEL_104:
                        v328 = sub_27104EE60(v326, v327);
                        (*(v436 + 8))(*&v440.f64[0], v438, v328);
                        v329 = v471;
                        goto LABEL_105;
                      }
                    }
                  }

                  v290 = v409;
                  if (v243)
                  {
                    v291 = v243;
                    if (CVPixelBufferGetBytesPerRow(v291) != v233)
                    {
                      v386(v405, v385, *&v246);
                      v297 = v291;
                      v298 = sub_2710F6D2C();
                      v299 = sub_2710F713C();
                      if (os_log_type_enabled(v298, v299))
                      {
                        v300 = v245;
                        v301 = swift_slowAlloc();
                        *v301 = 134218240;
                        *(v301 + 4) = CVPixelBufferGetBytesPerRow(v297);

                        *(v301 + 12) = 2048;
                        *(v301 + 14) = v233;
                        _os_log_impl(&dword_27103D000, v298, v299, "Image conversion failed to produce desired stride: %ld vs %ld", v301, 0x16u);
                        v302 = v301;
                        v245 = v300;
                        v246 = v437.f64[0];
                        MEMORY[0x2743BDA30](v302, -1, -1);
                      }

                      else
                      {

                        v298 = v297;
                      }

                      v295 = v391;
                      v296 = v420;

                      (v384[0])(v405, *&v246);
                      goto LABEL_101;
                    }
                  }

                  else
                  {
                    v386(v409, v385, *&v246);
                    v292 = sub_2710F6D2C();
                    v293 = sub_2710F713C();
                    if (os_log_type_enabled(v292, v293))
                    {
                      v294 = swift_slowAlloc();
                      *v294 = 0;
                      _os_log_impl(&dword_27103D000, v292, v293, "Image conversion failed to produce output", v294, 2u);
                      MEMORY[0x2743BDA30](v294, -1, -1);
                    }

                    (v384[0])(v290, *&v246);
                  }

                  v295 = v391;
                  v296 = v420;
LABEL_101:
                  GEOGetMonotonicTime();
                  v306 = v305 - v94;
                  v469[1] = v445;
                  v469[0] = v447;
                  v469[2].f64[0] = a4;
                  v307 = [v247 _clLocationFrom:v469];
                  v442 = COERCE_UNSIGNED_INT64(a7);
                  *&v308 = __PAIR64__(v424, LODWORD(v433.f64[0]));
                  v437 = vcvtq_f64_f32(__PAIR64__(v432.n128_u32[0], v434.n128_u32[0]));
                  *(&v308 + 1) = v425;
                  v309.n128_u64[0] = __PAIR64__(v426, v435.n128_u32[0]);
                  v309.n128_u64[1] = v427;
                  v443 = v309;
                  v444 = v308;
                  v309.n128_u64[0] = __PAIR64__(v429, v428);
                  v309.n128_u64[1] = v430;
                  v435 = v309;
                  v310 = v446;
                  DWORD1(v310) = v431;
                  v446 = v310;
                  v311 = objc_allocWithZone(VLLocalizationDebugInfo);
                  v469[0].f64[0] = v447.f64[0];
                  v469[0].f64[1] = v100;
                  v469[1].f64[0] = v445.f64[0];
                  *&v469[1].f64[1] = a4;
                  *(&v469[1].f64[1] + 4) = 0x100000000;
                  v450 = v437;
                  v451 = v442;
                  LOBYTE(v383) = v390;
                  v312 = [v311 initWithPixelBuffer:v296 monotonicTimestamp:v469 timestamp:v307 duration:&v450 location:0 clLocation:0 heading:v94 gravity:a26 transform:v306 cameraIntrinsics:0.0 radialDistortion:0.0 exposureTargetOffset:0 statistics:0 resultStatus:0 resultPose:0 preserveImageData:{0, 0, 0, 0, v444, *&v443, *&v435, v446, 0, 0, v383}];

                  if (v295)
                  {
                    v313 = v412;

                    *&v447.f64[0] = [v247 _recorderQueue];
                    v314 = swift_allocObject();
                    v314[2] = v245;
                    v314[3] = v313;
                    v314[4] = v312;
                    *&v469[2].f64[0] = sub_2710573FC;
                    *&v469[2].f64[1] = v314;
                    *&v469[0].f64[0] = MEMORY[0x277D85DD0];
                    *&v469[0].f64[1] = 1107296256;
                    *&v469[1].f64[0] = sub_271056480;
                    *&v469[1].f64[1] = &block_descriptor_8;
                    v315 = _Block_copy(v469);
                    sub_2710572E4(v245, v313);
                    v316 = v312;
                    v441 = v245;
                    v317 = v415;
                    sub_2710F6D6C();
                    *&v450.f64[0] = MEMORY[0x277D84F90];
                    sub_2710572F4(&qword_2808751E8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808751F0, &qword_271102BF0);
                    sub_27105733C();
                    v318 = v414;
                    v319 = v417;
                    sub_2710F726C();
                    v320 = v447.f64[0];
                    MEMORY[0x2743BC150](0, v317, v318, v315);
                    _Block_release(v315);

                    v321 = sub_27104EE60(v441, v313);
                    (*(v416 + 8))(v318, v319, v321);
                    v322 = v317;
                    v245 = v441;
                    (*(v418 + 8))(v322, v419);
                  }

                  type metadata accessor for VLLocalizerError(0);
                  *&v450.f64[0] = 2;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808751D0, &qword_271102BE0);
                  v323 = swift_allocObject();
                  *(v323 + 16) = xmmword_271102950;
                  *(v323 + 32) = sub_2710F6E3C();
                  *(v323 + 72) = MEMORY[0x277D837D0];
                  *(v323 + 40) = v324;
                  *(v323 + 48) = 0xD00000000000001ELL;
                  *(v323 + 56) = 0x80000002710FA400;
                  *(v323 + 80) = sub_2710F6E3C();
                  *(v323 + 88) = v325;
                  *(v323 + 120) = sub_27104F0C8(0, &qword_2808751D8, off_279E2D158);
                  *(v323 + 96) = v312;
                  v134 = v312;
                  sub_271057140(v323);
                  swift_setDeallocating();
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808751E0, &qword_271102BE8);
                  swift_arrayDestroy();
                  swift_deallocClassInstance();
                  sub_2710572F4(&qword_2808751C8, type metadata accessor for VLLocalizerError, &unk_271103034);
                  sub_2710F6BBC();
                  swift_willThrow();

                  v326 = v245;
                  v327 = v412;
                  goto LABEL_104;
                }

                goto LABEL_172;
              }

LABEL_171:
              __break(1u);
LABEL_172:
              __break(1u);
              goto LABEL_173;
            }

LABEL_170:
            __break(1u);
            goto LABEL_171;
          }

LABEL_169:
          __break(1u);
          goto LABEL_170;
        }

        __break(1u);
        goto LABEL_169;
      }
    }

    else
    {
      if (PixelFormatType == 1278226488)
      {
        CVPixelBufferLockBaseAddress(v154, 1uLL);
        Width = CVPixelBufferGetWidth(v154);
        Height = CVPixelBufferGetHeight(v154);
        if (CVPixelBufferGetBytesPerRow(v154) == Width)
        {
          BaseAddressOfPlane = CVPixelBufferGetBaseAddress(v154);
          if (BaseAddressOfPlane)
          {
            if (Width > 0x7FFFFFFF)
            {
LABEL_183:
              __break(1u);
LABEL_184:
              __break(1u);
LABEL_185:
              __break(1u);
            }

            v160 = v437.f64[0];
            if (Width < 0xFFFFFFFF80000000 || Height < 0xFFFFFFFF80000000)
            {
              goto LABEL_184;
            }

            if (Height > 0x7FFFFFFF)
            {
              goto LABEL_185;
            }

            ptr = BaseAddressOfPlane;
            v494 = __PAIR64__(Height, Width);
            v495 = 0;
            v161 = swift_allocObject();
            v162 = v420;
            *(v161 + 16) = v420;
            v209 = v162;
            v164 = sub_271057C08;
            goto LABEL_36;
          }

LABEL_86:
          type metadata accessor for VLLocalizerError(BaseAddressOfPlane);
          *&v450.f64[0] = 2;
          v134 = sub_271057140(MEMORY[0x277D84F90]);
          sub_2710572F4(&qword_2808751C8, type metadata accessor for VLLocalizerError, &unk_271103034);
          sub_2710F6BBC();
          swift_willThrow();

          v289 = sub_27104EE60(v441, v412);
          (*(v152 + 8))(*&v440.f64[0], v438, v289);
          return v134;
        }

LABEL_52:
        CVPixelBufferUnlockBaseAddress(v154, 1uLL);
        v151 = v422;
        goto LABEL_53;
      }

      if (PixelFormatType != 2033463856 && PixelFormatType != 1714696752)
      {
        goto LABEL_53;
      }
    }

    CVPixelBufferLockBaseAddress(v154, 1uLL);
    WidthOfPlane = CVPixelBufferGetWidthOfPlane(v154, 0);
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(v154, 0);
    if (CVPixelBufferGetBytesPerRowOfPlane(v154, 0) == WidthOfPlane)
    {
      BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v154, 0);
      if (BaseAddressOfPlane)
      {
        if (WidthOfPlane > 0x7FFFFFFF)
        {
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
          goto LABEL_179;
        }

        v160 = v437.f64[0];
        if (WidthOfPlane < 0xFFFFFFFF80000000 || HeightOfPlane < 0xFFFFFFFF80000000)
        {
          goto LABEL_178;
        }

        if (HeightOfPlane > 0x7FFFFFFF)
        {
LABEL_179:
          __break(1u);
          goto LABEL_180;
        }

        ptr = BaseAddressOfPlane;
        v494 = __PAIR64__(HeightOfPlane, WidthOfPlane);
        v495 = 0;
        v161 = swift_allocObject();
        v162 = v420;
        *(v161 + 16) = v420;
        v163 = v162;
        v164 = sub_2710574A4;
LABEL_36:
        v165 = v164;
        goto LABEL_37;
      }

      goto LABEL_86;
    }

    goto LABEL_52;
  }

  v103 = v98;
  v104 = sub_2710408A4();
  v105 = v444;
  (*(v444 + 16))(v75, v104, v59);
  v106 = sub_2710F6D2C();
  v107 = sub_2710F710C();
  if (os_log_type_enabled(v106, v107))
  {
    v108 = swift_slowAlloc();
    *v108 = 0;
    _os_log_impl(&dword_27103D000, v106, v107, "locateWithPixelBuffer: Visual localization is not supported on this device", v108, 2u);
    MEMORY[0x2743BDA30](v108, -1, -1);
  }

  (*(v105 + 8))(v75, v59);
  GEOGetMonotonicTime();
  v110 = v109 - v94;
  v469[1] = v445;
  v469[0] = v447;
  v469[2].f64[0] = a4;
  v111 = v439;
  v112 = [v439 _clLocationFrom_];
  v442 = COERCE_UNSIGNED_INT64(a7);
  *&v113 = __PAIR64__(v424, LODWORD(v433.f64[0]));
  v440 = vcvtq_f64_f32(__PAIR64__(v432.n128_u32[0], v434.n128_u32[0]));
  *(&v113 + 1) = v425;
  v114.n128_u64[0] = __PAIR64__(v426, v435.n128_u32[0]);
  v114.n128_u64[1] = v427;
  v443 = v114;
  v444 = v113;
  v114.n128_u64[0] = __PAIR64__(v429, v428);
  v114.n128_u64[1] = v430;
  v438 = v114;
  v115 = v446;
  DWORD1(v115) = v431;
  v446 = v115;
  v116 = objc_allocWithZone(VLLocalizationDebugInfo);
  v469[0].f64[0] = v447.f64[0];
  v469[0].f64[1] = v100;
  v469[1].f64[0] = v445.f64[0];
  v99 = a4;
  *&v469[1].f64[1] = v99;
  *(&v469[1].f64[1] + 4) = 0x100000000;
  v450 = v440;
  v451 = v442;
  LOBYTE(v383) = 0;
  v117 = [v116 initWithPixelBuffer:0 monotonicTimestamp:v469 timestamp:v112 duration:&v450 location:0 clLocation:0 heading:v94 gravity:a26 transform:v110 cameraIntrinsics:0.0 radialDistortion:0.0 exposureTargetOffset:0 statistics:0 resultStatus:0 resultPose:0 preserveImageData:{0, 0, 0, 0, v444, *&v443, v438, v446, 0, 0, v383}];

  v118 = v441;
  if (v96)
  {

    *&v447.f64[0] = [v111 _recorderQueue];
    v119 = swift_allocObject();
    v119[2] = v118;
    v119[3] = v103;
    v119[4] = v117;
    *&v469[2].f64[0] = sub_271057C10;
    *&v469[2].f64[1] = v119;
    *&v469[0].f64[0] = MEMORY[0x277D85DD0];
    *&v469[0].f64[1] = 1107296256;
    *&v469[1].f64[0] = sub_271056480;
    *&v469[1].f64[1] = &block_descriptor_1;
    *&v446 = _Block_copy(v469);
    sub_2710572E4(v118, v103);
    v120 = v117;
    v121 = v415;
    sub_2710F6D6C();
    *&v450.f64[0] = MEMORY[0x277D84F90];
    sub_2710572F4(&qword_2808751E8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808751F0, &qword_271102BF0);
    sub_27105733C();
    v122 = v117;
    v123 = v118;
    v124 = v414;
    v125 = v103;
    v126 = v417;
    sub_2710F726C();
    v127 = v446;
    v128 = v447.f64[0];
    MEMORY[0x2743BC150](0, v121, v124, v446);
    _Block_release(v127);

    v129 = sub_27104EE60(v123, v125);
    v130 = v124;
    v118 = v123;
    v117 = v122;
    v131 = v126;
    v103 = v125;
    (*(v416 + 8))(v130, v131, v129);
    (*(v418 + 8))(v121, v419);
  }

  type metadata accessor for VLLocalizerError(0);
  *&v450.f64[0] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808751D0, &qword_271102BE0);
  v132 = swift_allocObject();
  *(v132 + 16) = xmmword_271101AF0;
  *(v132 + 32) = sub_2710F6E3C();
  *(v132 + 40) = v133;
  *(v132 + 72) = sub_27104F0C8(0, &qword_2808751D8, off_279E2D158);
  *(v132 + 48) = v117;
  v134 = v117;
  sub_271057140(v132);
  swift_setDeallocating();
  sub_271057264(v132 + 32);
  swift_deallocClassInstance();
  sub_2710572F4(&qword_2808751C8, type metadata accessor for VLLocalizerError, &unk_271103034);
  sub_2710F6BBC();
  swift_willThrow();
  sub_27104EE60(v118, v103);

  return v134;
}

double sub_271056480(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  return result;
}

unint64_t sub_2710564C4(__n128 a1, double a2, double a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v8 = a1;
  v9 = a2;
  v10 = v4;
  v11 = 0;
  v12 = 0;
  v6 = 0;
  v7 = 0;
  vl_get_tile_from_gps([v3 _vlHandle], &v8, &v6);
  if (HIDWORD(v6) && v7)
  {
    return v6 | (HIDWORD(v6) << 32);
  }

  type metadata accessor for VLLocalizerError(0);
  sub_271057140(MEMORY[0x277D84F90]);
  sub_2710572F4(&qword_2808751C8, type metadata accessor for VLLocalizerError, &unk_271103034);
  sub_2710F6BBC();
  return swift_willThrow();
}

uint64_t VLLocalizer._fetchTileDataSync(at:)@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>, double a3@<D1>, double a4@<D2>)
{
  v6 = v4;
  v27 = a2;
  v35 = *MEMORY[0x277D85DE8];
  v10 = sub_2710F6C0C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v27 - v15;
  v17 = a4;
  v31 = v27;
  v32 = a3;
  v33 = v17;
  v34 = 0;
  v30 = 0uLL;
  vl_get_tile_from_gps([v6 _vlHandle], &v31, &v30);
  if (!DWORD1(v30) || !DWORD2(v30))
  {
    type metadata accessor for VLLocalizerError(0);
    v28 = 403;
    sub_271057140(MEMORY[0x277D84F90]);
    sub_2710572F4(&qword_2808751C8, type metadata accessor for VLLocalizerError, &unk_271103034);
    sub_2710F6BBC();
    return swift_willThrow();
  }

  v29 = v30;
  v18 = [v6 _dataProvider];
  swift_getObjectType();
  if (swift_conformsToProtocol2() && v18)
  {
    v28 = 0;
    v19 = [v18 fileURLForKey:&v29 error:&v28];
    v20 = v28;
    if (!v19)
    {
      v25 = v28;
      sub_2710F6BCC();

      swift_willThrow();
      return swift_unknownObjectRelease();
    }

    v21 = v19;
    sub_2710F6BFC();
    v22 = v20;

    sub_27104F0C8(0, &qword_2808751A0, 0x277CCA9F8);
    (*(v11 + 16))(v14, v16, v10);
    v23 = sub_27104FBAC(v14);
    if (v5)
    {
      (*(v11 + 8))(v16, v10);
      return swift_unknownObjectRelease();
    }

    v26 = v23;
    (*(v11 + 8))(v16, v10);
    result = swift_unknownObjectRelease();
    *a1 = v29;
    *(a1 + 16) = v26;
    *(a1 + 24) = 0;
  }

  else
  {
    swift_unknownObjectRelease();
    result = sub_2710F733C();
    __break(1u);
  }

  return result;
}

uint64_t sub_27105699C(uint64_t a1)
{
  v2 = sub_2710572F4(&qword_280875250, type metadata accessor for VLLocalizerError, &unk_271102FF0);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_271056A08(uint64_t a1)
{
  v2 = sub_2710572F4(&qword_280875250, type metadata accessor for VLLocalizerError, &unk_271102FF0);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_271056A74(uint64_t a1)
{
  v2 = sub_2710572F4(&qword_2808751C8, type metadata accessor for VLLocalizerError, &unk_271103034);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_271056AF8(uint64_t a1)
{
  v2 = sub_2710572F4(&qword_2808751C8, type metadata accessor for VLLocalizerError, &unk_271103034);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_271056B64(uint64_t a1)
{
  v2 = sub_2710572F4(&qword_2808751C8, type metadata accessor for VLLocalizerError, &unk_271103034);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_271056BD0(void *a1, uint64_t a2)
{
  v4 = sub_2710572F4(&qword_2808751C8, type metadata accessor for VLLocalizerError, &unk_271103034);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_271056C84(uint64_t a1, uint64_t a2)
{
  v4 = sub_2710572F4(&qword_2808751C8, type metadata accessor for VLLocalizerError, &unk_271103034);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_271056D00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2710F751C();
  sub_2710F6D8C();
  return sub_2710F756C();
}

void *sub_271056D60@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_271056D7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2710572F4(&qword_2808751C8, type metadata accessor for VLLocalizerError, &unk_271103034);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_271056E14(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  sub_2710F751C();
  sub_2710F6EAC();
  v5 = sub_2710F756C();

  return a3(a1, a2, v5);
}

unint64_t sub_271056E98(uint64_t a1, uint64_t a2)
{
  v2 = sub_2710F73DC();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

void sub_271056EE4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280875290, &unk_2711031A0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v6 - v4;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_2710570D8();
  sub_2710F757C();
  v11 = 0;
  sub_2710F740C();
  v10 = 1;
  sub_2710F740C();
  v9 = 2;
  v7 = sub_2710F740C();
  v8 = 3;
  sub_2710F740C();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

unint64_t sub_2710570D8()
{
  result = qword_2808768E0[0];
  if (!qword_2808768E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2808768E0);
  }

  return result;
}

unint64_t sub_271057140(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280875288, &qword_271103198);
    v3 = sub_2710F73BC();
    v4 = a1 + 32;

    while (1)
    {
      sub_271057B24(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_271056E14(v13, v14, sub_271048190);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_271057B94(&v15, (v3[7] + 32 * result));
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

uint64_t sub_271057264(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808751E0, &qword_271102BE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double sub_2710572E4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_2710572F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_27105733C()
{
  result = qword_2808751F8;
  if (!qword_2808751F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2808751F0, &qword_271102BF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808751F8);
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

uint64_t objectdestroyTm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

double GEOCoordinateGet3DDistance(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v7 = a4 - a7;
  GEOCalculateDistance();
  return sqrt(v7 * v7 + v8 * v8);
}

uint64_t sub_271057520(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_271057568(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy16_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t _s10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_27105772C()
{
  result = qword_280876CF0[0];
  if (!qword_280876CF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280876CF0);
  }

  return result;
}

unint64_t sub_271057990()
{
  result = qword_280875278;
  if (!qword_280875278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280875278);
  }

  return result;
}

unint64_t sub_271057A78()
{
  result = qword_280877280;
  if (!qword_280877280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280877280);
  }

  return result;
}

unint64_t sub_271057AD0()
{
  result = qword_280877288[0];
  if (!qword_280877288[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280877288);
  }

  return result;
}

uint64_t sub_271057B24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808751E0, &qword_271102BE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_271057B94(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_271057C14@<X0>(double *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, double *a6@<X8>)
{
  v87 = a5;
  v11 = sub_2710F6D4C();
  v12 = MEMORY[0x28223BE20](v11);
  result = MEMORY[0x28223BE20](v12);
  v17 = &v81 - v16;
  v18 = *a1;
  if (*a1 >= 1.0)
  {
    goto LABEL_37;
  }

  v82 = a4;
  v83 = v15;
  v84 = v14;
  v19 = a2[1];
  v20 = a2[2];
  v109[0] = *a2;
  v109[1] = v19;
  v106[0] = 32;
  v106[1] = 0xE100000000000000;
  v104 = 0;
  v105 = 0xE000000000000000;
  v21 = sub_27104EDB0();
  v101 = sub_2710F721C();
  v95 = v22;
  if (sub_2710F6EBC() < 5 || (v23 = *(a3 + 16)) == 0)
  {

    v26 = 0.0;
    v57 = v87;
LABEL_25:
    LOBYTE(v109[0]) = 2;
    v58 = sub_27105CCAC(v20, v57, v82, &type metadata for StringSimilarityAlgorithm, &off_2880FF1C8, 0.7);
    if (v58 < 0.0)
    {
      v59 = 0.0;
    }

    else
    {
      v59 = v58;
    }

    v60 = sub_27104074C();
    v61 = v84;
    v62 = v83;
    (*(v84 + 16))(v83, v60, v11);

    v63 = sub_2710F6D2C();
    v64 = sub_2710F711C();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v109[0] = v66;
      *v65 = 136315650;
      v67 = MEMORY[0x277D83E40];
      v68 = MEMORY[0x2743BBFA0](v20, MEMORY[0x277D83E40]);
      v81 = a6;
      v70 = sub_2710475BC(v68, v69, v109);

      *(v65 + 4) = v70;
      *(v65 + 12) = 2080;
      v71 = MEMORY[0x2743BBFA0](v57, v67);
      v73 = sub_2710475BC(v71, v72, v109);

      *(v65 + 14) = v73;
      *(v65 + 22) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808751A8, &qword_271102970);
      v74 = swift_allocObject();
      v75 = MEMORY[0x277D839F8];
      *(v74 + 16) = xmmword_271101AF0;
      v76 = MEMORY[0x277D83A80];
      *(v74 + 56) = v75;
      *(v74 + 64) = v76;
      *(v74 + 32) = v59;
      v77 = sub_2710F6E4C();
      v79 = sub_2710475BC(v77, v78, v109);

      *(v65 + 24) = v79;
      a6 = v81;
      _os_log_impl(&dword_27103D000, v63, v64, "  %s / %s → %s", v65, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2743BDA30](v66, -1, -1);
      MEMORY[0x2743BDA30](v65, -1, -1);

      result = (*(v84 + 8))(v62, v11);
    }

    else
    {

      result = (*(v61 + 8))(v62, v11);
    }

    if (v18 > v26)
    {
      v80 = v18;
    }

    else
    {
      v80 = v26;
    }

    if (v80 > v59)
    {
      v18 = v80;
    }

    else
    {
      v18 = v59;
    }

    goto LABEL_37;
  }

  v92 = v21;
  v81 = a6;
  v90 = (v84 + 16);
  v89 = (v84 + 8);
  v24 = (a3 + 72);
  *(&v25 + 1) = 6;
  v88 = xmmword_271101B00;
  *&v25 = 136315650;
  v86 = v25;
  v85 = xmmword_271101AF0;
  v26 = 0.0;
  v27 = v95;
  v94 = v11;
  v91 = v20;
  v93 = v17;
  do
  {
    v28 = *v24;
    if (v26 >= 1.0)
    {
    }

    else
    {
      v97 = v23;
      v29 = *(v24 - 3);
      v31 = *(v24 - 2);
      v30 = *(v24 - 1);
      v99 = *(v24 - 4);

      v96 = v30;

      v100 = v28;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808752A0, &unk_271103228);
      inited = swift_initStackObject();
      *(inited + 16) = v88;
      *(inited + 56) = &type metadata for StringSimilarityAlgorithm;
      *(inited + 64) = &off_2880FF1C8;
      *(inited + 32) = 0;
      *(inited + 72) = 2;
      *(inited + 96) = &type metadata for WeightedLCSSimilarityAlgorithm;
      *(inited + 104) = &off_2880FF060;
      *(inited + 112) = 2;
      *(inited + 136) = &type metadata for StringSimilarityAlgorithm;
      *(inited + 144) = &off_2880FF1C8;
      sub_2710508F4(inited + 32, v106);
      v33 = v108;
      __swift_project_boxed_opaque_existential_1Tm(v106, v107);
      v104 = v101;
      v105 = v27;
      v98 = v29;
      v102 = v29;
      v103 = v31;
      v34 = MEMORY[0x277D837D0];
      v35 = v92;
      v36 = (*(v33 + 8))(&v104, &v102);
      if (v36 < 0.0)
      {
        v37 = 0.0;
      }

      else
      {
        v37 = v36;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v106);
      sub_2710508F4(inited + 72, v106);
      if (v37 >= 1.0)
      {
        v40 = v31;
      }

      else
      {
        v38 = v107;
        v39 = v108;
        __swift_project_boxed_opaque_existential_1Tm(v106, v107);
        v104 = v101;
        v105 = v95;
        v102 = v98;
        v40 = v31;
        v103 = v31;
        v41 = (*(v39 + 8))(&v104, &v102, v34, v34, v35, v35, v38, v39);
        if (v37 <= v41)
        {
          v37 = v41;
        }
      }

      v11 = v94;
      __swift_destroy_boxed_opaque_existential_0Tm(v106);
      sub_2710508F4(inited + 112, v106);

      v27 = v95;
      if (v37 < 1.0)
      {
        v42 = v107;
        v43 = v108;
        __swift_project_boxed_opaque_existential_1Tm(v106, v107);
        v104 = v101;
        v105 = v27;
        v102 = v98;
        v103 = v40;
        v44 = (*(v43 + 8))(&v104, &v102, MEMORY[0x277D837D0], MEMORY[0x277D837D0], v92, v92, v42, v43);
        if (v37 <= v44)
        {
          v37 = v44;
        }
      }

      v45 = v93;
      __swift_destroy_boxed_opaque_existential_0Tm(v106);
      v46 = sub_27104074C();
      (*v90)(v45, v46, v11);

      v47 = sub_2710F6D2C();
      v48 = sub_2710F711C();

      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v109[0] = v50;
        *v49 = v86;
        *(v49 + 4) = sub_2710475BC(v101, v27, v109);
        *(v49 + 12) = 2080;
        *(v49 + 14) = sub_2710475BC(v98, v40, v109);
        *(v49 + 22) = 2080;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808751A8, &qword_271102970);
        v51 = swift_allocObject();
        *(v51 + 16) = v85;
        *(v51 + 56) = MEMORY[0x277D839F8];
        *(v51 + 64) = MEMORY[0x277D83A80];
        *(v51 + 32) = v37;
        v52 = sub_2710F6E4C();
        v54 = sub_2710475BC(v52, v53, v109);

        *(v49 + 24) = v54;
        _os_log_impl(&dword_27103D000, v47, v48, "  %s / %s → %s", v49, 0x20u);
        swift_arrayDestroy();
        v55 = v50;
        v11 = v94;
        MEMORY[0x2743BDA30](v55, -1, -1);
        v56 = v49;
        v45 = v93;
        MEMORY[0x2743BDA30](v56, -1, -1);
      }

      (*v89)(v45, v11);

      v20 = v91;
      if (v26 <= v37)
      {
        v26 = v37;
      }

      v23 = v97;
    }

    v24 += 6;
    --v23;
  }

  while (v23);

  v57 = v87;
  if (v26 < 1.0)
  {
    a6 = v81;
    goto LABEL_25;
  }

  if (v18 <= v26)
  {
    v18 = v26;
  }

  a6 = v81;
LABEL_37:
  *a6 = v18;
  return result;
}

double sub_27105875C(unint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v40 = a3;
  v13 = sub_2710F6D4C();
  v42 = *(v13 - 8);
  v43 = v13;
  MEMORY[0x28223BE20](v13);
  v41 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v44 = *(AssociatedTypeWitness - 1);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v17 = &v38 - v16;
  v47[3] = a5;
  v47[4] = a7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v47);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_0, a2, a5);
  sub_27105E7C4(v47, a4, a6, &v48);
  __swift_destroy_boxed_opaque_existential_0Tm(v47);
  v19 = 0.0;
  if ((v50 & 1) == 0)
  {
    v20 = v48;
    v47[0] = v48;
    v47[1] = v49;
    v39 = v49;
    sub_2710F70DC();
    swift_getAssociatedConformanceWitness();
    if (sub_2710F709C() >= 5)
    {
      v21 = sub_2710F709C();
      v22 = v21 / sub_2710F709C();
      if (v22 >= 0.75 || v22 >= 0.25 && (sub_2710F708C(), !((v47[0] ^ v20) >> 14)))
      {
        sub_2710F708C();
        v45 = v20;
        v46 = v47[0];
        v23 = sub_2710F6DCC();
        v47[0] = v39;
        sub_2710F70BC();
        v45 = v46;
        v24 = sub_2710F6DCC();
        if (v24 >= v23)
        {
          v25 = v23;
        }

        else
        {
          v25 = v24;
        }

        v26 = v25 / sub_2710F709C();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        sub_27105D070(v17, a1, v40, AssociatedTypeWitness, a4, AssociatedConformanceWitness, a6, v28);
        v19 = v29 * (v26 * -0.5 + 1.0);
        v30 = sub_27104074C();
        v32 = v41;
        v31 = v42;
        v33 = v43;
        (*(v42 + 16))(v41, v30, v43);
        v34 = sub_2710F6D2C();
        v35 = sub_2710F711C();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          *v36 = 134217984;
          *(v36 + 4) = v19;
          _os_log_impl(&dword_27103D000, v34, v35, "LCS is sufficiently-long. Clamping score to at least %f", v36, 0xCu);
          MEMORY[0x2743BDA30](v36, -1, -1);
        }

        (*(v31 + 8))(v32, v33);
      }
    }

    (*(v44 + 8))(v17, AssociatedTypeWitness);
  }

  return v19;
}

void *sub_271058BD4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_271058BF4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_271058BF4(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808752A8, &qword_271103238);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2808752B0, &qword_271103240);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_271058D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!*(a1 + 16))
  {
    return;
  }

  v9 = sub_271047E6C(a6);
  if ((v10 & 1) == 0)
  {
    return;
  }

  v35 = a5;
  v11 = *(*(a1 + 56) + 8 * v9);
  v12 = *(a2 + 16);
  if (v12)
  {
    v37[0] = MEMORY[0x277D84F90];

    sub_271058BD4(0, v12, 0);
    v13 = v37[0];
    v14 = (a2 + 64);
    do
    {
      v15 = *v14;
      v37[0] = v13;
      v17 = *(v13 + 16);
      v16 = *(v13 + 24);
      v18 = v17 + 1;

      if (v17 >= v16 >> 1)
      {
        sub_271058BD4((v16 > 1), v17 + 1, 1);
        v13 = v37[0];
      }

      *(v13 + 16) = v18;
      *(v13 + 8 * v17 + 32) = v15;
      v14 += 6;
      --v12;
    }

    while (v12);
    goto LABEL_10;
  }

  v13 = MEMORY[0x277D84F90];
  v18 = *(MEMORY[0x277D84F90] + 16);

  v19 = v13;
  if (v18)
  {
LABEL_10:
    v20 = 0;
    v19 = MEMORY[0x277D84F90];
    do
    {
      if (v20 >= *(v13 + 16))
      {
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        return;
      }

      v21 = *(v13 + 8 * v20 + 32);
      v22 = *(v21 + 16);
      v23 = *(v19 + 2);
      v24 = v23 + v22;
      if (__OFADD__(v23, v22))
      {
        goto LABEL_34;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v24 <= *(v19 + 3) >> 1)
      {
        if (*(v21 + 16))
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v23 <= v24)
        {
          v26 = v23 + v22;
        }

        else
        {
          v26 = v23;
        }

        v19 = sub_27104728C(isUniquelyReferenced_nonNull_native, v26, 1, v19);
        if (*(v21 + 16))
        {
LABEL_23:
          if ((*(v19 + 3) >> 1) - *(v19 + 2) < v22)
          {
            goto LABEL_37;
          }

          swift_arrayInitWithCopy();

          if (v22)
          {
            v27 = *(v19 + 2);
            v28 = __OFADD__(v27, v22);
            v29 = v27 + v22;
            if (v28)
            {
              goto LABEL_38;
            }

            *(v19 + 2) = v29;
          }

          goto LABEL_12;
        }
      }

      if (v22)
      {
        goto LABEL_35;
      }

LABEL_12:
      ++v20;
    }

    while (v18 != v20);
  }

  v38 = 0;
  v30 = *(v11 + 16);
  if (v30)
  {
    v31 = 0;
    v32 = (v11 + 48);
    while (v31 < *(v11 + 16))
    {
      ++v31;
      v34 = *(v32 - 1);
      v33 = *v32;
      v37[0] = *(v32 - 2);
      v37[1] = v34;
      v37[2] = v33;

      sub_271057C14(&v38, v37, a2, v35, v19, &v36);

      v38 = v36;
      v32 += 3;
      if (v30 == v31)
      {
        goto LABEL_31;
      }
    }

    goto LABEL_36;
  }

LABEL_31:
}

double sub_271059020(double a1)
{
  v1 = a1 / 10.0;
  result = 1.0;
  if (v1 > COERCE_DOUBLE(1))
  {
    return fmin(1.0 / v1, 1.0);
  }

  return result;
}

BOOL sub_271059058(char a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = a2 + 32;
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    ++v3;
    sub_27104DC50();
  }

  while ((sub_2710F6DFC() & 1) == 0);
  return v4 != 0;
}

uint64_t sub_2710590DC@<X0>(char *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, double *a4@<X8>)
{
  v44 = a4;
  v7 = sub_2710F6D4C();
  v41 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2710F6ABC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v15 = *(a1 + 2);
  v42 = *(a1 + 1);
  v43 = v15;
  LOBYTE(v45[0]) = v14;
  v46 = 0;
  sub_27104DC50();
  if ((sub_2710F6DFC() & 1) != 0 && sub_271059058(0, a2))
  {
    v16 = [a3 _telephone];
    if (v16)
    {
      v17 = v16;
      v18 = sub_2710F6E3C();
      v20 = v19;

      v21 = sub_271059E88(v42, v43, v18, v20);
LABEL_16:
      v27 = v21;

      goto LABEL_17;
    }
  }

  LOBYTE(v45[0]) = v14;
  v46 = 1;
  if ((sub_2710F6DFC() & 1) != 0 && sub_271059058(1, a2) && (v22 = [a3 shortAddress]) != 0)
  {
    v23 = v22;
    sub_2710F6E3C();

    sub_2710F6E6C();

    v45[0] = sub_2710F6E6C();
    v45[1] = v24;
    sub_2710F6AAC();
    sub_27104EDB0();
    sub_2710F720C();
    (*(v11 + 8))(v13, v10);

    v25 = sub_2710F6F1C();

    v27 = 0.0;
    if (v25)
    {
      v28 = sub_27104074C();
      v29 = v41;
      (*(v41 + 16))(v9, v28, v7);
      v30 = v43;

      v31 = sub_2710F6D2C();
      v32 = sub_2710F711C();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v45[0] = v34;
        *v33 = 136315138;
        *(v33 + 4) = sub_2710475BC(v42, v30, v45);
        _os_log_impl(&dword_27103D000, v31, v32, "Found address match: %s", v33, 0xCu);
        v35 = __swift_destroy_boxed_opaque_existential_0Tm(v34);
        MEMORY[0x2743BDA30](v34, -1, -1, v35);
        MEMORY[0x2743BDA30](v33, -1, -1);
      }

      result = (*(v29 + 8))(v9, v7);
      v27 = 1.0;
    }
  }

  else
  {
    LOBYTE(v45[0]) = v14;
    v46 = 2;
    result = sub_2710F6DFC();
    v27 = 0.0;
    if (result)
    {
      result = sub_271059058(2, a2);
      if (result)
      {
        result = [a3 _businessURL];
        if (result)
        {
          v36 = result;
          v37 = sub_2710F6E3C();
          v39 = v38;

          v21 = sub_27105A524(v42, v43, v37, v39);
          goto LABEL_16;
        }
      }
    }
  }

LABEL_17:
  *v44 = v27;
  return result;
}

unint64_t sub_27105957C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_2710F6F5C();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_27104728C(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_27104728C((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_2710F6F3C();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_2710F6ECC();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_2710F6ECC();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_2710F6F5C();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_27104728C(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_2710F6F5C();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_27104728C(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_27104728C((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_2710F6ECC();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

void *sub_27105993C(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280875348, &qword_271103380);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280875350, &qword_271103388);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_271059A70(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280875340, &qword_271103378);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_271059B90(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808750D8, "T;");
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

char *sub_271059C9C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_271059CBC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_271059CBC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280875340, &qword_271103378);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_271059DDC(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = (a1)(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

double sub_271059E88(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v54 = a4;
  v55 = a3;
  v60 = *MEMORY[0x277D85DE8];
  v6 = sub_2710F6D4C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808750D8, "T;");
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_271101AF0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  v59[0] = 32;
  v59[1] = 0xE100000000000000;
  v58 = v59;
  swift_bridgeObjectRetain_n();
  v12 = sub_27105957C(0x7FFFFFFFFFFFFFFFLL, 1, sub_27105BC84, v57, a1, a2, v11);
  v13 = v12;
  v14 = v12[2];
  v52 = v9;
  if (v14 < 2)
  {
    v56 = *(inited + 16);
    if (!v56)
    {
LABEL_16:

      return 0.0;
    }
  }

  else
  {
    v15 = v12[4];
    v16 = v12[5];
    v17 = v12[6];
    v18 = v12[7];

    v19 = MEMORY[0x2743BBEA0](v15, v16, v17, v18);
    v21 = v20;

    inited = sub_271059B90(1, 2, 1, inited);
    v56 = 2;
    *(inited + 16) = 2;
    *(inited + 48) = v19;
    *(inited + 56) = v21;
  }

  v53 = v13;
  v50 = v7;
  v51 = v6;
  v22 = 0;
  v23 = (inited + 40);
  while (1)
  {
    if (v22 >= *(inited + 16))
    {
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
    }

    v25 = *(v23 - 1);
    v24 = *v23;
    v26 = objc_opt_self();

    v27 = [v26 sharedConfiguration];
    if (!v27)
    {
      goto LABEL_24;
    }

    v28 = v27;
    v29 = [v27 countryCode];

    if (!v29)
    {
      goto LABEL_25;
    }

    v30 = sub_2710F6E0C();
    v31 = CFPhoneNumberCreate();

    if (!v31)
    {
      goto LABEL_6;
    }

    String = CFPhoneNumberCreateString();
    if (!String)
    {

      goto LABEL_6;
    }

    v33 = String;
    v34 = sub_2710F6E3C();
    v36 = v35;

    if (v34 == v55 && v36 == v54)
    {
      break;
    }

    v37 = sub_2710F748C();

    if (v37)
    {

      goto LABEL_18;
    }

LABEL_6:
    ++v22;

    v23 += 2;
    if (v56 == v22)
    {
      goto LABEL_16;
    }
  }

LABEL_18:

  v39 = sub_27104074C();
  v41 = v50;
  v40 = v51;
  v42 = v52;
  (*(v50 + 16))(v52, v39, v51);

  v43 = sub_2710F6D2C();
  v44 = sub_2710F711C();

  if (os_log_type_enabled(v43, v44))
  {
    v45 = v42;
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v59[0] = v47;
    *v46 = 136315138;
    v48 = sub_2710475BC(v25, v24, v59);

    *(v46 + 4) = v48;
    _os_log_impl(&dword_27103D000, v43, v44, "Found exact phone number match: %s", v46, 0xCu);
    v49 = __swift_destroy_boxed_opaque_existential_0Tm(v47);
    MEMORY[0x2743BDA30](v47, -1, -1, v49);
    MEMORY[0x2743BDA30](v46, -1, -1);

    (*(v41 + 8))(v45, v40);
  }

  else
  {

    (*(v41 + 8))(v42, v40);
  }

  return 1.0;
}

uint64_t sub_27105A344(uint64_t a1)
{
  sub_2710F6ADC();
  if (v1)
  {
    sub_27104EDB0();
    v2 = sub_2710F71FC();

    v3 = v2[2];
    if (v3 && (v2[4] == 7829367 ? (v4 = v2[5] == 0xE300000000000000) : (v4 = 0), (v4 || (sub_2710F748C() & 1) != 0) && v3 != 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280875330, "0?");
      sub_27105BBC8();
      v5 = sub_2710F6DEC();
      v7 = v6;

      MEMORY[0x2743BBAF0](v5, v7);
    }

    else
    {
    }
  }

  v8 = sub_2710F6ADC();
  if (v9)
  {
    v10 = sub_2710F6E6C();
    v12 = v11;

    v8 = v10;
  }

  else
  {
    v12 = 0;
  }

  MEMORY[0x2743BBAF0](v8, v12);
  sub_2710F6B2C();
  if (sub_2710F6AFC() == 47 && v13 == 0xE100000000000000)
  {
  }

  else
  {
    v14 = sub_2710F748C();

    if ((v14 & 1) == 0)
    {
      return result;
    }
  }

  return MEMORY[0x2743BBB10](0, 0xE000000000000000);
}

double sub_27105A524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v159 = a1;
  v160 = a2;
  v4 = sub_2710F6D4C();
  v157 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v156 = &v137 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v145 = &v137 - v8;
  MEMORY[0x28223BE20](v7);
  v143 = &v137 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280875320, "8?");
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v147 = &v137 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v151 = &v137 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v150 = &v137 - v16;
  MEMORY[0x28223BE20](v15);
  v153 = &v137 - v17;
  v18 = sub_2710F6C0C();
  v154 = *(v18 - 8);
  v155 = v18;
  v19 = MEMORY[0x28223BE20](v18);
  v142 = &v137 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v144 = &v137 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v146 = &v137 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v148 = &v137 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v149 = &v137 - v28;
  MEMORY[0x28223BE20](v27);
  v152 = &v137 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808750D0, &unk_271102740);
  v31 = MEMORY[0x28223BE20](v30 - 8);
  v33 = &v137 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v137 - v35;
  MEMORY[0x28223BE20](v34);
  v38 = &v137 - v37;
  v39 = sub_2710F6B4C();
  v40 = *(v39 - 8);
  v41 = MEMORY[0x28223BE20](v39);
  v158 = &v137 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x28223BE20](v41);
  v45 = &v137 - v44;
  MEMORY[0x28223BE20](v43);
  v47 = &v137 - v46;
  sub_2710F6B3C();
  v48 = *(v40 + 48);
  if (v48(v38, 1, v39) == 1)
  {
    sub_27104F110(v38, &qword_2808750D0, &unk_271102740);
    return 0.0;
  }

  v138 = v4;
  v139 = *(v40 + 32);
  v139(v47, v38, v39);
  v49 = sub_2710F6B1C();
  if (!v50)
  {
    (*(v40 + 8))(v47, v39);
    return 0.0;
  }

  v140 = v47;
  v137 = v39;
  v141 = v40;
  v161 = v49;
  v162 = v50;
  MEMORY[0x28223BE20](v49);
  *(&v137 - 2) = &v161;
  v51 = sub_271059DDC(sub_27105BB54, (&v137 - 4), &unk_2880FF0A0);

  if ((v51 & 1) == 0)
  {
    (*(v141 + 8))(v140, v137);
    return 0.0;
  }

  sub_2710F6B3C();
  v52 = v137;
  v53 = v48(v36, 1, v137);
  v54 = v141;
  if (v53 == 1)
  {
    sub_27104F110(v36, &qword_2808750D0, &unk_271102740);
LABEL_11:
    v56 = v158;

    v57 = v157;
    goto LABEL_12;
  }

  v139(v45, v36, v52);
  sub_2710F6B1C();
  if (v55)
  {

    (*(v54 + 8))(v45, v52);
    goto LABEL_11;
  }

  v161 = 0x2F2F3A7370747468;
  v162 = 0xE800000000000000;
  MEMORY[0x2743BBEF0](v159, v160);
  (*(v54 + 8))(v45, v52);
  v57 = v157;
  v56 = v158;
LABEL_12:
  sub_2710F6B3C();

  if (v48(v33, 1, v52) == 1)
  {
    sub_27104F110(v33, &qword_2808750D0, &unk_271102740);
    v58 = v141;
LABEL_20:
    v68 = v138;
    v62 = v156;
LABEL_21:
    v69 = sub_27104074C();
    (*(v57 + 16))(v62, v69, v68);
    v70 = v160;

    v71 = sub_2710F6D2C();
    v72 = sub_2710F712C();

    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v161 = v74;
      *v73 = 136315138;
      *(v73 + 4) = sub_2710475BC(v159, v70, &v161);
      _os_log_impl(&dword_27103D000, v71, v72, "Failed to parse URL: %s", v73, 0xCu);
      v75 = __swift_destroy_boxed_opaque_existential_0Tm(v74);
      MEMORY[0x2743BDA30](v74, -1, -1, v75);
      MEMORY[0x2743BDA30](v73, -1, -1);
    }

    (*(v57 + 8))(v62, v68);
    (*(v58 + 8))(v140, v52);
    return 0.0;
  }

  v139(v56, v33, v52);
  v59 = sub_2710F6B1C();
  v58 = v141;
  if (!v60)
  {
    (*(v141 + 8))(v56, v52);
    goto LABEL_20;
  }

  v161 = v59;
  v162 = v60;
  MEMORY[0x28223BE20](v59);
  *(&v137 - 2) = &v161;
  v61 = sub_271059DDC(sub_27105BC84, (&v137 - 4), &unk_2880FF0A0);

  v62 = v156;
  if ((v61 & 1) == 0)
  {
    (*(v58 + 8))(v56, v52);
    v68 = v138;
    goto LABEL_21;
  }

  sub_27105A344(v56);
  sub_27105A344(v140);
  v63 = v153;
  sub_2710F6ACC();
  v65 = v154;
  v64 = v155;
  v66 = *(v154 + 48);
  v67 = v66(v63, 1, v155);
  v156 = v66;
  if (v67 == 1)
  {
    sub_27104F110(v63, &qword_280875320, "8?");
    goto LABEL_35;
  }

  v77 = *(v65 + 32);
  v78 = v152;
  v77(v152, v63, v64);
  v79 = v150;
  sub_2710F6ACC();
  v80 = v155;
  if (v66(v79, 1, v155) == 1)
  {
    v65 = v154;
    (*(v154 + 8))(v78, v80);
    sub_27104F110(v79, &qword_280875320, "8?");
LABEL_34:
    v56 = v158;
LABEL_35:
    v97 = sub_2710F6AFC();
    v99 = v98;

    v100 = HIBYTE(v99) & 0xF;
    if ((v99 & 0x2000000000000000) == 0)
    {
      v100 = v97 & 0xFFFFFFFFFFFFLL;
    }

    v101 = v156;
    if (v100)
    {
      MEMORY[0x2743BBB10](0, 0xE000000000000000);
      v102 = v151;
      sub_2710F6ACC();
      v103 = v155;
      if (v101(v102, 1, v155) == 1)
      {
        v104 = *(v58 + 8);
        v104(v56, v52);
        v104(v140, v52);
        sub_27104F110(v102, &qword_280875320, "8?");
        return 0.0;
      }

      v106 = *(v65 + 32);
      v107 = v148;
      v106(v148, v102, v103);
      v108 = v147;
      sub_2710F6ACC();
      v109 = v155;
      if (v101(v108, 1, v155) == 1)
      {
        (*(v154 + 8))(v107, v109);
        v110 = *(v58 + 8);
        v110(v158, v52);
        v110(v140, v52);
        sub_27104F110(v108, &qword_280875320, "8?");
        return 0.0;
      }

      v111 = v146;
      v106(v146, v108, v109);
      if (sub_2710F6BEC())
      {
        v112 = sub_27104074C();
        (*(v57 + 16))(v145, v112, v138);
        v113 = v111;
        v114 = v154;
        v115 = v109;
        v116 = *(v154 + 16);
        v116(v144, v113, v115);
        v117 = v142;
        v116(v142, v107, v115);
        v118 = sub_2710F6D2C();
        v119 = sub_2710F711C();
        if (os_log_type_enabled(v118, v119))
        {
          v120 = swift_slowAlloc();
          v160 = swift_slowAlloc();
          v161 = v160;
          *v120 = 136315394;
          sub_27105BB70();
          v121 = v144;
          v122 = sub_2710F746C();
          v124 = v123;
          LODWORD(v159) = v119;
          v125 = *(v114 + 8);
          v125(v121, v115);
          v126 = sub_2710475BC(v122, v124, &v161);

          *(v120 + 4) = v126;
          *(v120 + 12) = 2080;
          v127 = sub_2710F746C();
          v129 = v128;
          v125(v117, v115);
          v130 = sub_2710475BC(v127, v129, &v161);

          *(v120 + 14) = v130;
          _os_log_impl(&dword_27103D000, v118, v159, "Found host-only webURL match: %s -> %s", v120, 0x16u);
          v131 = v160;
          swift_arrayDestroy();
          MEMORY[0x2743BDA30](v131, -1, -1);
          MEMORY[0x2743BDA30](v120, -1, -1);

          (*(v157 + 8))(v145, v138);
          v125(v146, v115);
          v125(v148, v115);
          v132 = *(v141 + 8);
          v133 = v137;
          v132(v158, v137);
          v132(v140, v133);
        }

        else
        {

          v135 = *(v114 + 8);
          v135(v117, v115);
          v135(v144, v115);
          (*(v57 + 8))(v145, v138);
          v135(v146, v115);
          v135(v107, v115);
          v136 = *(v58 + 8);
          v136(v158, v52);
          v136(v140, v52);
        }

        return 0.6;
      }

      v134 = *(v154 + 8);
      v134(v111, v109);
      v134(v107, v109);
      v105 = *(v58 + 8);
      v105(v158, v52);
    }

    else
    {
      v105 = *(v58 + 8);
      v105(v56, v52);
    }

    v105(v140, v52);
    return 0.0;
  }

  v81 = v79;
  v82 = v149;
  v77(v149, v81, v80);
  if ((sub_2710F6BEC() & 1) == 0)
  {
    v95 = v154;
    v96 = *(v154 + 8);
    v96(v82, v80);
    v65 = v95;
    v96(v78, v80);
    goto LABEL_34;
  }

  v83 = sub_27104074C();
  v84 = v143;
  v85 = v138;
  (*(v57 + 16))(v143, v83, v138);
  v86 = v160;

  v87 = sub_2710F6D2C();
  v88 = sub_2710F711C();

  if (os_log_type_enabled(v87, v88))
  {
    v89 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v161 = v90;
    *v89 = 136315138;
    *(v89 + 4) = sub_2710475BC(v159, v86, &v161);
    _os_log_impl(&dword_27103D000, v87, v88, "Found exact webURL match: %s", v89, 0xCu);
    v91 = __swift_destroy_boxed_opaque_existential_0Tm(v90);
    MEMORY[0x2743BDA30](v90, -1, -1, v91);
    MEMORY[0x2743BDA30](v89, -1, -1);
  }

  (*(v57 + 8))(v84, v85);
  v92 = v155;
  v93 = *(v154 + 8);
  v93(v149, v155);
  v93(v152, v92);
  v94 = *(v58 + 8);
  v94(v158, v52);
  v94(v140, v52);
  return 1.0;
}

void sub_27105B690(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x277D84F90];
  v51 = *(a3 + 16);
  if (v51)
  {
    v6 = 0;
    v50 = a3 + 32;
    v7 = MEMORY[0x277D84F90];
LABEL_3:
    v53 = v7;
    v54 = v6;
    v8 = *(v50 + 48 * v6 + 40);
    v9 = *(v8 + 16);

    if (!v9)
    {
      v12 = MEMORY[0x277D84F90];
      goto LABEL_17;
    }

    v10 = 0;
    v11 = v8 + 48;
    v12 = MEMORY[0x277D84F90];
LABEL_5:
    v13 = (v11 + 24 * v10);
    v14 = v10;
    while (v14 < *(v8 + 16))
    {
      v15 = *(v13 - 16);
      v10 = v14 + 1;
      v16 = *(v13 - 1);
      v17 = *v13;

      if (sub_271059058(v15, a4))
      {
        v55[0] = v12;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_271059C9C(0, *(v12 + 16) + 1, 1);
          v12 = v55[0];
        }

        v19 = *(v12 + 16);
        v18 = *(v12 + 24);
        v20 = v19 + 1;
        if (v19 >= v18 >> 1)
        {
          sub_271059C9C((v18 > 1), v19 + 1, 1);
          v20 = v19 + 1;
          v12 = v55[0];
        }

        *(v12 + 16) = v20;
        v21 = v12 + 24 * v19;
        *(v21 + 32) = v15;
        *(v21 + 40) = v16;
        *(v21 + 48) = v17;
        v11 = v8 + 48;
        if (v9 - 1 != v14)
        {
          goto LABEL_5;
        }

LABEL_17:

        v7 = v53;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_27105993C(0, v53[2] + 1, 1, v53);
        }

        v23 = v7[2];
        v22 = v7[3];
        v24 = v23 + 1;
        if (v23 >= v22 >> 1)
        {
          v7 = sub_27105993C((v22 > 1), v23 + 1, 1, v7);
        }

        v6 = v54 + 1;
        v7[2] = v24;
        v7[v23 + 4] = v12;
        if (v54 + 1 == v51)
        {
LABEL_24:
          v25 = 0;
          v5 = MEMORY[0x277D84F90];
          while (1)
          {
            if (v25 >= v7[2])
            {
              goto LABEL_56;
            }

            v26 = v7;
            v27 = v7[v25 + 4];
            v28 = *(v27 + 16);
            v29 = *(v5 + 2);
            v30 = v29 + v28;
            if (__OFADD__(v29, v28))
            {
              goto LABEL_57;
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if (isUniquelyReferenced_nonNull_native && v30 <= *(v5 + 3) >> 1)
            {
              if (!*(v27 + 16))
              {
                goto LABEL_25;
              }
            }

            else
            {
              if (v29 <= v30)
              {
                v32 = v29 + v28;
              }

              else
              {
                v32 = v29;
              }

              v5 = sub_271059A70(isUniquelyReferenced_nonNull_native, v32, 1, v5);
              if (!*(v27 + 16))
              {
LABEL_25:

                if (v28)
                {
                  goto LABEL_58;
                }

                goto LABEL_26;
              }
            }

            if ((*(v5 + 3) >> 1) - *(v5 + 2) < v28)
            {
              goto LABEL_60;
            }

            swift_arrayInitWithCopy();

            if (v28)
            {
              v33 = *(v5 + 2);
              v34 = __OFADD__(v33, v28);
              v35 = v33 + v28;
              if (v34)
              {
                goto LABEL_61;
              }

              *(v5 + 2) = v35;
            }

LABEL_26:
            ++v25;
            v7 = v26;
            if (v24 == v25)
            {
              goto LABEL_41;
            }
          }
        }

        goto LABEL_3;
      }

      v13 += 3;
      ++v14;
      if (v9 == v10)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
  }

  else
  {
    v24 = *(MEMORY[0x277D84F90] + 16);
    v7 = MEMORY[0x277D84F90];
    if (v24)
    {
      goto LABEL_24;
    }

LABEL_41:

    v36 = *(v5 + 2);
    if (!v36)
    {

      return;
    }

    v57 = MEMORY[0x277D84F90];
    sub_271051CC8(0, v36, 0);
    v37 = 0;
    v38 = v57;
    v39 = v5 + 48;
    while (v37 < *(v5 + 2))
    {
      v40 = *(v39 - 1);
      v41 = *v39;
      LOBYTE(v55[0]) = *(v39 - 16);
      v55[1] = v40;
      v55[2] = v41;

      sub_2710590DC(v55, a4, a1, &v56);

      v42 = v56;
      v57 = v38;
      v44 = *(v38 + 16);
      v43 = *(v38 + 24);
      if (v44 >= v43 >> 1)
      {
        sub_271051CC8((v43 > 1), v44 + 1, 1);
        v38 = v57;
      }

      ++v37;
      *(v38 + 16) = v44 + 1;
      *(v38 + 8 * v44 + 32) = v42;
      v39 += 3;
      if (v36 == v37)
      {

        v45 = *(v38 + 16);
        if (v45)
        {
          v46 = (v38 + 32);
          v47 = 0.0;
          do
          {
            v48 = *v46++;
            v49 = v48;
            if (v47 <= v48)
            {
              v47 = v49;
            }

            --v45;
          }

          while (v45);
        }

        return;
      }
    }
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
}

unint64_t sub_27105BB70()
{
  result = qword_280875328;
  if (!qword_280875328)
  {
    sub_2710F6C0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280875328);
  }

  return result;
}

unint64_t sub_27105BBC8()
{
  result = qword_280875338;
  if (!qword_280875338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280875330, "0?");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280875338);
  }

  return result;
}

uint64_t sub_27105BC2C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_2710F748C() & 1;
  }
}

uint64_t sub_27105BCA0(uint64_t a1, unint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = MEMORY[0x277D84F90];
  v13[6] = a1;
  v13[7] = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280875358, &unk_271103390);
  sub_27105BE90();
  sub_27104EDB0();
  v5 = sub_2710F71BC();
  v7 = v6;
  v8 = sub_2710F6E0C();
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  v9[4] = v4;
  v13[4] = sub_27105BEF4;
  v13[5] = v9;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_27105C000;
  v13[3] = &block_descriptor_2;
  v10 = _Block_copy(v13);

  VLEnumerateTokensInString(v8, v5, v7, v10);
  _Block_release(v10);

  swift_beginAccess();
  v11 = *(v4 + 16);

  return v11;
}

unint64_t sub_27105BE90()
{
  result = qword_280875360;
  if (!qword_280875360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280875358, &unk_271103390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280875360);
  }

  return result;
}

uint64_t sub_27105BEF4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  sub_2710F70EC();
  if ((v4 & 1) == 0)
  {
    v5 = sub_2710F6F5C();
    v7 = v6;
    v9 = v8;
    v11 = v10;
    swift_beginAccess();
    v12 = *(v3 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 16) = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = sub_27104728C(0, *(v12 + 2) + 1, 1, v12);
      *(v3 + 16) = v12;
    }

    v15 = *(v12 + 2);
    v14 = *(v12 + 3);
    if (v15 >= v14 >> 1)
    {
      v12 = sub_27104728C((v14 > 1), v15 + 1, 1, v12);
    }

    *(v12 + 2) = v15 + 1;
    v16 = &v12[32 * v15];
    *(v16 + 4) = v5;
    *(v16 + 5) = v7;
    *(v16 + 6) = v9;
    *(v16 + 7) = v11;
    *(v3 + 16) = v12;
    swift_endAccess();
  }

  return 1;
}

uint64_t sub_27105C000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  LOBYTE(a3) = v5(a2, a3);

  return a3 & 1;
}

double block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_27105C088@<X0>(double *a1@<X0>, uint64_t *a2@<X1>, unint64_t a3@<X2>, double *a4@<X8>)
{
  v8 = sub_2710F6D4C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  result = MEMORY[0x28223BE20](v10);
  v14 = &v46 - v13;
  v15 = *a1;
  if (*a1 < 1.0)
  {
    v51 = v12;
    v16 = *a2;
    v17 = a2[1];
    v18 = a2[2];
    v19 = sub_27104074C();
    v20 = *(v9 + 16);
    v48 = v19;
    v49 = v9 + 16;
    v47 = v20;
    (v20)(v14);

    v21 = sub_2710F6D2C();
    v22 = sub_2710F711C();

    v23 = os_log_type_enabled(v21, v22);
    v53 = v9;
    v54 = v8;
    v52 = a4;
    if (v23)
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v57 = v25;
      *v24 = 136315138;
      *(v24 + 4) = sub_2710475BC(v17, v18, &v57);
      _os_log_impl(&dword_27103D000, v21, v22, "  [Embeddings] Comparing detected embeddings from model: %s", v24, 0xCu);
      v26 = __swift_destroy_boxed_opaque_existential_0Tm(v25);
      MEMORY[0x2743BDA30](v25, -1, -1, v26);
      MEMORY[0x2743BDA30](v24, -1, -1);

      v50 = *(v53 + 8);
      v50(v14, v54);
    }

    else
    {

      v50 = *(v9 + 8);
      v50(v14, v8);
    }

    v57 = 0;
    if (a3 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2710F738C())
    {
      v28 = 0;
      while (1)
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v29 = MEMORY[0x2743BC2D0](v28, a3);
        }

        else
        {
          if (v28 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v29 = *(a3 + 8 * v28 + 32);
        }

        v30 = v29;
        v31 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          break;
        }

        v56 = v29;
        sub_27105C508(&v57, &v56, v16, v17, v18, &v55);

        v32 = *&v55;
        v57 = v55;
        ++v28;
        if (v31 == i)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

    v32 = 0.0;
LABEL_19:
    v33 = v51;
    v34 = v54;
    v47(v51, v48, v54);
    v35 = sub_2710F6D2C();
    v36 = sub_2710F711C();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v57 = v38;
      *v37 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808751A8, &qword_271102970);
      v39 = swift_allocObject();
      v40 = MEMORY[0x277D839F8];
      *(v39 + 16) = xmmword_271101AF0;
      v41 = MEMORY[0x277D83A80];
      *(v39 + 56) = v40;
      *(v39 + 64) = v41;
      *(v39 + 32) = v32;
      v42 = sub_2710F6E4C();
      v44 = sub_2710475BC(v42, v43, &v57);

      *(v37 + 4) = v44;
      _os_log_impl(&dword_27103D000, v35, v36, "  [Embeddings] Final candidate score → %s", v37, 0xCu);
      v45 = __swift_destroy_boxed_opaque_existential_0Tm(v38);
      MEMORY[0x2743BDA30](v38, -1, -1, v45);
      MEMORY[0x2743BDA30](v37, -1, -1);
    }

    result = (v50)(v33, v34);
    a4 = v52;
    if (v15 <= v32)
    {
      v15 = v32;
    }
  }

  *a4 = v15;
  return result;
}

void sub_27105C508(double *a1@<X0>, id *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, double *a6@<X8>)
{
  v67 = a3;
  __C[1] = *MEMORY[0x277D85DE8];
  v11 = sub_2710F6D4C();
  v68 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v63 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v63 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v63 - v21;
  v23 = *a1;
  if (*a1 >= 1.0)
  {
    goto LABEL_26;
  }

  v65 = *a2;
  v66 = a6;
  v24 = [v65 modelMetadata];
  if (!v24)
  {
    __break(1u);
    goto LABEL_29;
  }

  v25 = v24;
  v26 = [v24 modelVersion];

  if (!v26)
  {
    a6 = v66;
LABEL_26:
    *a6 = v23;
    return;
  }

  v27 = sub_2710F6E3C();
  v29 = v28;

  v30 = v27 == a4 && v29 == a5;
  if (v30 || (sub_2710F748C() & 1) != 0)
  {

    v31 = sub_27104074C();
    v32 = v68;
    v33 = *(v68 + 16);
    v33(v20, v31, v11);
    v34 = sub_2710F6D2C();
    v35 = sub_2710F711C();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_27103D000, v34, v35, "  [Embeddings] => Candidate embeddings match input model", v36, 2u);
      v37 = v36;
      v32 = v68;
      MEMORY[0x2743BDA30](v37, -1, -1);
    }

    v38 = *(v32 + 8);
    v38(v20, v11);
    goto LABEL_12;
  }

  v53 = sub_27104074C();
  v54 = v68;
  v33 = *(v68 + 16);
  v33(v22, v53, v11);

  v55 = sub_2710F6D2C();
  v56 = sub_2710F711C();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v64 = v55;
    v58 = v57;
    v59 = swift_slowAlloc();
    __C[0] = v59;
    *v58 = 136315138;
    v60 = sub_2710475BC(v27, v29, __C);

    *(v58 + 4) = v60;
    v61 = v64;
    _os_log_impl(&dword_27103D000, v64, v56, "  [Embeddings] => Candidate embeddings do not match input model: %s", v58, 0xCu);
    v62 = __swift_destroy_boxed_opaque_existential_0Tm(v59);
    MEMORY[0x2743BDA30](v59, -1, -1, v62);
    MEMORY[0x2743BDA30](v58, -1, -1);

    v38 = *(v68 + 8);
    v38(v22, v11);
LABEL_12:
    a6 = v66;
    goto LABEL_13;
  }

  v38 = *(v54 + 8);
  v38(v22, v11);
  a6 = v66;
LABEL_13:
  v39 = v67;
  v40 = *(v67 + 16);
  v41 = v65;
  if (v40 != [v65 embeddingsCount])
  {
    v49 = sub_27104074C();
    v33(v17, v49, v11);
    v50 = sub_2710F6D2C();
    v51 = sub_2710F711C();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_27103D000, v50, v51, "  [Embeddings] ==> Failed to compare image embeddings", v52, 2u);
      MEMORY[0x2743BDA30](v52, -1, -1);
    }

    v38(v17, v11);
    goto LABEL_26;
  }

  LODWORD(__C[0]) = 0;
  v42 = [v41 embeddings];
  if (v42)
  {
    vDSP_dotpr((v39 + 32), 1, v42, 1, __C, v40);
    v43 = (*__C + 1.0) * 0.5;
    v44 = sub_27104074C();
    v33(v14, v44, v11);
    v45 = sub_2710F6D2C();
    v46 = sub_2710F711C();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 134217984;
      v48 = v43;
      *(v47 + 4) = v48;
      _os_log_impl(&dword_27103D000, v45, v46, "  [Embeddings] ==> Similarity score: %f", v47, 0xCu);
      MEMORY[0x2743BDA30](v47, -1, -1);
    }

    else
    {

      v48 = v43;
    }

    v38(v14, v11);
    if (v23 <= v48)
    {
      v23 = v48;
    }

    goto LABEL_26;
  }

LABEL_29:
  __break(1u);
}

uint64_t sub_27105CB18(void *a1, uint64_t a2)
{
  v3 = [a1 imageEmbeddings];
  sub_27105CC5C();
  v4 = sub_2710F6F8C();

  if (v4 >> 62)
  {
    if (sub_2710F738C() < 1)
    {
    }
  }

  else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
  }

  v5 = *(a2 + 16);
  if (!v5)
  {
  }

  v12 = 0;
  v6 = (a2 + 48);
  do
  {
    v7 = *(v6 - 1);
    v8 = *v6;
    v11[0] = *(v6 - 2);
    v11[1] = v7;
    v11[2] = v8;

    sub_27105C088(&v12, v11, v4, &v10);

    v12 = v10;
    v6 += 3;
    --v5;
  }

  while (v5);
}

unint64_t sub_27105CC5C()
{
  result = qword_280875368;
  if (!qword_280875368)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280875368);
  }

  return result;
}

double sub_27105CCAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v55 = a4;
  v57 = a5;
  v48 = sub_2710F6C7C();
  v47 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  if (v12)
  {
    v56 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v51 = a1 + 32;
    v13 = (a1 + 56);
    v14 = 0.0;
    v15 = v12;
    do
    {
      v18 = *(v13 - 3);
      v19 = *(v13 - 2);
      v21 = *(v13 - 1);
      v20 = *v13;
      if (a3)
      {
        v22 = *(a3 + 16);

        v16 = 1.0;
        if (v22)
        {
          v23 = sub_271047ED8(v18, v19, v21, v20);
          if (v24)
          {
            v16 = *(*(a3 + 56) + 8 * v23);
          }
        }
      }

      else
      {

        v16 = 1.0;
      }

      v17 = sub_2710F71EC();

      v14 = v14 + v16 * v17;
      v13 += 4;
      --v15;
    }

    while (v15);
    v11 = v56;
    sub_2710F6C6C();
    v25 = 0;
    v26 = *(a2 + 16);
    v54 = v57 + 8;
    v50 = (a2 + 56);
    v27 = 0.0;
    v49 = a3;
    v52 = v12;
    do
    {
      if (v26)
      {
        v53 = v25;
        v29 = (v51 + 32 * v25);
        v31 = *v29;
        v30 = v29[1];
        v32 = v29[3];
        v58 = v29[2];
        v59 = v30;

        v33 = 0;
        v34 = 1;
        v35 = 0.0;
        v36 = v50;
        do
        {
          if ((sub_2710F6C5C() & 1) == 0)
          {
            v37 = *(v36 - 1);
            v38 = *v36;
            v63[0] = v31;
            v63[1] = v59;
            v63[2] = v58;
            v63[3] = v32;
            v60 = *(v36 - 3);
            v61 = v37;
            v62 = v38;
            v39 = v57;
            v40 = *(v57 + 8);
            v41 = sub_27105E984();
            v42 = v40(v63, &v60, MEMORY[0x277D83E40], MEMORY[0x277D83E40], v41, v41, v55, v39);
            if (v35 < v42)
            {
              if (v42 >= a6)
              {
                v35 = v42;
              }

              v34 &= v42 < a6;
            }

            v11 = v56;
          }

          ++v33;
          v36 += 4;
        }

        while (v26 != v33);
        if (v34)
        {
        }

        else
        {
          sub_2710F6C4C();
          v43 = 1.0;
          if (v49)
          {
            if (*(v49 + 16))
            {
              v44 = sub_271047ED8(v31, v59, v58, v32);
              if (v45)
              {
                v43 = *(*(v49 + 56) + 8 * v44);
              }
            }
          }

          v28 = sub_2710F71EC();

          v27 = v27 + v35 * (v43 * v28) / v14;
        }

        v12 = v52;
        v25 = v53;
      }

      ++v25;
    }

    while (v25 != v12);
  }

  else
  {
    sub_2710F6C6C();
    v27 = 0.0;
  }

  (*(v47 + 8))(v11, v48);
  return v27;
}

void sub_27105D070(uint64_t a1, unint64_t a2, char a3, char *a4, uint64_t a5, unint64_t a6, uint64_t a7, __n128 a8)
{
  if (!a3)
  {
    sub_2710F724C();
    return;
  }

  if (a3 == 1)
  {
    sub_27105D3D8(a1, a2, a4, a5, a6, a7);
    sub_2710F709C();
    sub_2710F709C();
    return;
  }

  v27 = a5;
  v28 = a7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v26);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_0, a2, a5);
  if (sub_2710F70AC())
  {
    goto LABEL_21;
  }

  __swift_project_boxed_opaque_existential_1Tm(v26, v27);
  if (sub_2710F70AC())
  {
    goto LABEL_21;
  }

  __swift_project_boxed_opaque_existential_1Tm(v26, v27);
  if (sub_2710F725C())
  {
    goto LABEL_21;
  }

  v13 = sub_27105DA38(v26, a4, a6);
  v14 = sub_2710F709C();
  __swift_project_boxed_opaque_existential_1Tm(v26, v27);
  if (!__OFADD__(v14, sub_2710F709C()))
  {
    v15 = *(v13 + 2);
    if (v15)
    {
      v29 = MEMORY[0x277D84F90];
      sub_27105ECAC(0, v15, 0);
      v16 = v29;
      v17 = v13 + 40;
      do
      {

        v18 = sub_2710F6EBC();

        v29 = v16;
        v20 = *(v16 + 16);
        v19 = *(v16 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_27105ECAC((v19 > 1), v20 + 1, 1);
          v16 = v29;
        }

        *(v16 + 16) = v20 + 1;
        *(v16 + 8 * v20 + 32) = v18;
        v17 += 16;
        --v15;
      }

      while (v15);

      v21 = *(v16 + 16);
      if (v21)
      {
LABEL_15:
        v22 = 0;
        v23 = 32;
        while (1)
        {
          v24 = *(v16 + v23);
          v25 = __OFADD__(v22, v24);
          v22 += v24;
          if (v25)
          {
            break;
          }

          v23 += 8;
          if (!--v21)
          {
            goto LABEL_20;
          }
        }

        __break(1u);
        goto LABEL_23;
      }
    }

    else
    {

      v16 = MEMORY[0x277D84F90];
      v21 = *(MEMORY[0x277D84F90] + 16);
      if (v21)
      {
        goto LABEL_15;
      }
    }

LABEL_20:

LABEL_21:
    __swift_destroy_boxed_opaque_existential_0Tm(v26);
    return;
  }

LABEL_23:
  __break(1u);
}

uint64_t sub_27105D3D8(uint64_t a1, unint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a4;
  v10 = *(a4 - 8);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = (v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v11);
  v17 = v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(*(v18 + 8) + 8);
  v55 = v15;
  v52 = v19;
  v20 = sub_2710F709C();
  v21 = *(*(a6 + 8) + 8);
  v22 = a2;
  v23 = sub_2710F709C();
  if (v23 <= v20)
  {
    v24 = v20;
  }

  else
  {
    v24 = v23;
  }

  v53 = v24;
  v25 = v23 + 1;
  if (__OFADD__(v23, 1))
  {
    goto LABEL_91;
  }

  if (v25 < 0)
  {
    goto LABEL_92;
  }

  v22 = v23;
  v50 = v13;
  if (v23 == -1)
  {
    v13 = MEMORY[0x277D84F90];
    v26 = v20 + 1;
    if (!__OFADD__(v20, 1))
    {
LABEL_8:
      v49 = v10;
      v10 = sub_27105EDD0(v13, v26);

      if ((v20 & 0x8000000000000000) != 0)
      {
        goto LABEL_93;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_94;
      }

      if (!v10[2])
      {
        goto LABEL_95;
      }

LABEL_11:
      v48 = a2;
      v25 = (v10 + 4);
      v13 = v10[4];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10[4] = v13;
      a2 = v22;
      if (isUniquelyReferenced_nonNull_native)
      {
        if (!v13[2])
        {
          goto LABEL_97;
        }

LABEL_13:
        v47[1] = v21;
        v13[4] = 0;
        v51 = v20;
        if (!v20)
        {
          goto LABEL_22;
        }

        v20 = (v10 + 5);
        v22 = 1;
        v21 = v51;
        while (1)
        {
          if (v22 >= v10[2])
          {
LABEL_88:
            __break(1u);
            goto LABEL_89;
          }

          v13 = *v20;
          v28 = swift_isUniquelyReferenced_nonNull_native();
          *v20 = v13;
          if (v28)
          {
            if (!v13[2])
            {
              goto LABEL_21;
            }
          }

          else
          {
            v13 = sub_27105EA4C(v13);
            *v20 = v13;
            if (!v13[2])
            {
LABEL_21:
              __break(1u);
LABEL_22:
              if ((a2 & 0x8000000000000000) != 0)
              {
                goto LABEL_98;
              }

              if (!v10[2])
              {
                goto LABEL_99;
              }

              v21 = a2;
              v13 = *v25;
              result = swift_isUniquelyReferenced_nonNull_native();
              *v25 = v13;
              if ((result & 1) == 0)
              {
                goto LABEL_100;
              }

              if (v13[2])
              {
                goto LABEL_26;
              }

LABEL_101:
              __break(1u);
LABEL_102:
              __break(1u);
LABEL_103:
              __break(1u);
              goto LABEL_104;
            }
          }

          v13[4] = v22++;
          v20 += 8;
          v21 = (v21 - 1);
          if (!v21)
          {
            goto LABEL_22;
          }
        }
      }

      while (1)
      {
        v13 = sub_27105EA4C(v13);
        *v25 = v13;
        if (v13[2])
        {
          goto LABEL_13;
        }

LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        result = sub_27105EA4C(v13);
        v13 = result;
        *v25 = result;
        if (!*(result + 16))
        {
          goto LABEL_101;
        }

LABEL_26:
        v13[4] = 0;
        if (!v21)
        {
          break;
        }

        v20 = 5;
        v22 = v21;
        while (v10[2])
        {
          v13 = *v25;
          v30 = swift_isUniquelyReferenced_nonNull_native();
          *v25 = v13;
          if ((v30 & 1) == 0)
          {
            v13 = sub_27105EA4C(v13);
            *v25 = v13;
          }

          if (v20 - 4 >= v13[2])
          {
            goto LABEL_90;
          }

          v13[v20] = v20 - 4;
          ++v20;
          if (!--v22)
          {
            goto LABEL_33;
          }
        }

LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        v10 = sub_27105EA60(v10);
        if (v10[2])
        {
          goto LABEL_11;
        }

LABEL_95:
        __break(1u);
      }

LABEL_33:
      (*(v54 + 16))(v17, v55, a3);
      v55 = sub_2710F6FDC();
      (v49[2])(v50, v48, v7);
      result = sub_2710F6FDC();
      v54 = result;
      if (!v51 || !v21)
      {
        goto LABEL_102;
      }

      v52 = v21;
      if (*(v55 + 16))
      {
        a2 = 0;
        v13 = (v55 + 32);
        v49 = (v55 + 32);
        v50 = (v54 + 40);
        v31 = 1;
        do
        {
          v20 = 0;
          v22 = a2;
          a2 = v31;
          v21 = v50;
          while (1)
          {
            if (v20 >= *(v54 + 16))
            {
              __break(1u);
LABEL_78:
              __break(1u);
LABEL_79:
              __break(1u);
LABEL_80:
              __break(1u);
LABEL_81:
              __break(1u);
LABEL_82:
              __break(1u);
LABEL_83:
              __break(1u);
LABEL_84:
              __break(1u);
LABEL_85:
              __break(1u);
LABEL_86:
              __break(1u);
LABEL_87:
              __break(1u);
              goto LABEL_88;
            }

            v33 = (*v13 != *(v21 - 1) || v13[1] != *v21) && (sub_2710F748C() & 1) == 0;
            v34 = v10[2];
            if (a2 > v34)
            {
              goto LABEL_78;
            }

            v17 = (v20 + 1);
            v35 = *(v25 + 8 * v22);
            if (v20 + 1 >= *(v35 + 16))
            {
              goto LABEL_79;
            }

            v36 = v35 + 8 * v20;
            v37 = *(v36 + 40);
            v38 = __OFADD__(v37, 1);
            v39 = v37 + 1;
            if (v38)
            {
              goto LABEL_80;
            }

            if (a2 >= v34)
            {
              goto LABEL_81;
            }

            a3 = *(v25 + 8 * a2);
            if (v20 >= *(a3 + 2))
            {
              goto LABEL_82;
            }

            v40 = *&a3[8 * v20 + 32];
            v38 = __OFADD__(v40, 1);
            v41 = v40 + 1;
            if (v38)
            {
              goto LABEL_83;
            }

            v42 = *(v36 + 32);
            v38 = __OFADD__(v42, v33);
            v43 = v42 + v33;
            if (v38)
            {
              goto LABEL_84;
            }

            if (v41 < v39)
            {
              v39 = v41;
            }

            if (v43 >= v39)
            {
              v7 = v39;
            }

            else
            {
              v7 = v43;
            }

            v44 = swift_isUniquelyReferenced_nonNull_native();
            *(v25 + 8 * a2) = a3;
            if ((v44 & 1) == 0)
            {
              a3 = sub_27105EA4C(a3);
              *(v25 + 8 * a2) = a3;
            }

            if (v17 >= *(a3 + 2))
            {
              goto LABEL_85;
            }

            *&a3[8 * v20 + 40] = v7;
            if (a2 >= v10[2])
            {
              goto LABEL_86;
            }

            v45 = *(v25 + 8 * a2);
            if (v17 >= *(v45 + 16))
            {
              goto LABEL_87;
            }

            if (v53 < *(v45 + 8 * v20 + 40))
            {
              goto LABEL_69;
            }

            if (v52 == ++v20)
            {
              break;
            }

            v21 += 2;
            if (a2 > *(v55 + 16))
            {
              goto LABEL_68;
            }
          }

          v20 = v51;
          if (a2 == v51)
          {
            goto LABEL_74;
          }

          v31 = a2 + 1;
          v13 = &v49[2 * a2];
        }

        while (a2 < *(v55 + 16));
      }

LABEL_68:
      __break(1u);
LABEL_69:

      goto LABEL_70;
    }
  }

  else
  {
    v13 = sub_2710F6FBC();
    v13[2] = v25;
    bzero(v13 + 4, 8 * v22 + 8);
    v26 = v20 + 1;
    if (!__OFADD__(v20, 1))
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_74:

  if (v20 >= v10[2])
  {
    goto LABEL_103;
  }

  v46 = *(v25 + 8 * v20);
  if (v52 < *(v46 + 16))
  {
    v53 = *(v46 + 8 * v52 + 32);
    v55 = v10;
LABEL_70:

    return v53;
  }

LABEL_104:
  __break(1u);
  return result;
}

char *sub_27105DA38(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v55 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v57 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v56 = &v47 - v12;
  v13 = MEMORY[0x277D84F90];
  v70 = MEMORY[0x277D84F90];
  v14 = a1[3];
  v15 = a1[4];
  v16 = __swift_project_boxed_opaque_existential_1Tm(a1, v14);
  v17 = sub_27105E200(v16, a2, v14, a3, v15);
  v59 = v19;
  if (v17 >= 1)
  {
    v20 = v17;
    v53 = v18;
    v21 = v4;
    sub_2710F708C();
    v68 = v69;
    v52 = v20;
    v54 = v59 - v20;
    sub_2710F6DBC();
    v22 = v60[0];
    sub_2710F708C();
    v68 = v69;
    sub_2710F6DBC();
    v24 = v60[0];
    if (v60[0] >> 14 < v22 >> 14)
    {
      __break(1u);
    }

    else
    {
      v51 = v11;
      v60[0] = v22;
      v60[1] = v24;
      sub_2710F70DC();
      v25 = AssociatedTypeWitness;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      swift_getAssociatedConformanceWitness();
      v48 = sub_2710F6F4C();
      v47 = v26;
      sub_27105E9D8(v25, v25);
      swift_allocObject();
      v49 = sub_2710F6FAC();
      a3 = v27;
      v11 = v9;
      v28 = *(v55 + 16);
      v28(v9, v4, a2);
      sub_2710F70CC();
      v28(v9, v4, a2);
      v21 = v4;
      v29 = sub_2710F709C();
      v24 = v59;
      if (!__OFSUB__(v29, v59))
      {
        sub_2710F6DDC();
        v11 = AssociatedTypeWitness;
        sub_2710F6FCC();
        v4 = &v61;
        v30 = __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
        MEMORY[0x28223BE20](v30);
        (*(v32 + 16))(&v47 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
        v33 = v53;
        v63 = swift_getAssociatedTypeWitness();
        v64 = swift_getAssociatedConformanceWitness();
        __swift_allocate_boxed_opaque_existential_0(v62);
        sub_2710F70CC();
        a3 = a1[3];
        v34 = __swift_project_boxed_opaque_existential_1Tm(a1, a3);
        MEMORY[0x28223BE20](v34);
        (*(v36 + 16))(&v47 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
        __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
        v37 = sub_2710F709C();
        v21 = v37 - v33;
        if (!__OFSUB__(v37, v33))
        {
          v66 = swift_getAssociatedTypeWitness();
          v67 = swift_getAssociatedConformanceWitness();
          __swift_allocate_boxed_opaque_existential_0(v65);
          sub_2710F6DDC();
          v23 = sub_271059B90(0, 1, 1, MEMORY[0x277D84F90]);
          a3 = *(v23 + 2);
          v24 = *(v23 + 3);
          v21 = a3 + 1;
          if (a3 < v24 >> 1)
          {
LABEL_6:
            *(v23 + 2) = v21;
            v38 = &v23[16 * a3];
            v39 = v47;
            *(v38 + 4) = v48;
            *(v38 + 5) = v39;
            v70 = v23;
            v40 = v56;
            sub_2710F6FEC();
            v41 = AssociatedConformanceWitness;
            v42 = sub_27105DA38(v4 + 4, v11, AssociatedConformanceWitness);
            v43 = *(v57 + 8);
            v43(v40, v11);
            sub_27105E6D0(v42);
            sub_2710F6FEC();

            sub_2710508F4((v4 + 72), v60);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280875398, &qword_2711034E8);
            swift_arrayDestroy();
            v44 = sub_27105DA38(v60, v11, v41);
            v45 = __swift_destroy_boxed_opaque_existential_0Tm(v60);
            (v43)(v40, v11, v45);
            sub_27105E6D0(v44);
            return v70;
          }

LABEL_11:
          v23 = sub_271059B90((v24 > 1), v21, 1, v23);
          goto LABEL_6;
        }

LABEL_10:
        __break(1u);
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_10;
  }

  return v13;
}

uint64_t sub_27105E200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(*(*(a5 + 8) + 8) + 8);
  v44 = sub_2710F737C();
  MEMORY[0x28223BE20](v44);
  v43 = &v41 - v10;
  v45 = v9;
  v11 = sub_2710F736C();
  v42 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v41 - v12;
  v14 = *(*(*(a4 + 8) + 8) + 8);
  v52 = sub_2710F737C();
  MEMORY[0x28223BE20](v52);
  v48 = sub_2710F736C();
  v15 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v49 = &v41 - v16;
  v46 = a1;
  v47 = a3;
  v17 = sub_2710F709C();
  v18 = v17 + 1;
  if (__OFADD__(v17, 1))
  {
    goto LABEL_46;
  }

  if (v18 < 0)
  {
LABEL_47:
    __break(1u);
  }

  else
  {
    v41 = v15;
    if (v17 == -1)
    {
      v20 = MEMORY[0x277D84F90];
    }

    else
    {
      v19 = v17;
      v20 = sub_2710F6FBC();
      *(v20 + 16) = v18;
      bzero((v20 + 32), 8 * v19 + 8);
    }

    v21 = sub_2710F709C();
    if (!__OFADD__(v21, 1))
    {
      v22 = sub_27105EDD0(v20, v21 + 1);

      MEMORY[0x2743BBF70](a2, v14);
      sub_2710F734C();
      v50 = v22;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_8;
      }

      goto LABEL_49;
    }
  }

  __break(1u);
LABEL_49:
  v50 = sub_27105EA60(v50);
LABEL_8:
  sub_2710F735C();
  v23 = v56;
  if (v56)
  {
    v52 = 0;
    v53 = 0;
    v51 = 0;
    v24 = v54;
    v25 = v55;
    v26 = v50 + 4;
    ++v42;
LABEL_11:
    MEMORY[0x2743BBF70](v47, v45);
    sub_2710F734C();
    v27 = v24 + 1;
    while (1)
    {
      sub_2710F735C();
      if (!v56)
      {
        (*v42)(v13, v11);

        sub_2710F735C();
        v24 = v54;
        v25 = v55;
        v23 = v56;
        if (!v56)
        {
          goto LABEL_38;
        }

        goto LABEL_11;
      }

      v28 = v54;
      if (v25 == v55 && v23 == v56)
      {
        break;
      }

      v30 = sub_2710F748C();

      if (v30)
      {
LABEL_20:
        if ((v24 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v31 = v50[2];
        if (v24 >= v31)
        {
          goto LABEL_40;
        }

        if ((v28 & 0x8000000000000000) != 0)
        {
          goto LABEL_41;
        }

        v32 = v26[v24];
        if (v28 >= *(v32 + 16))
        {
          goto LABEL_42;
        }

        v33 = *(v32 + 8 * v28 + 32);
        v34 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          goto LABEL_43;
        }

        if (v27 >= v31)
        {
          goto LABEL_44;
        }

        v35 = v26[v27];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26[v27] = v35;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v35 = sub_27105EA4C(v35);
          v26[v27] = v35;
        }

        if (v28 + 1 >= *(v35 + 2))
        {
          goto LABEL_45;
        }

        *&v35[8 * v28 + 40] = v34;
        if (v51 <= v34)
        {
          v37 = v34;
        }

        else
        {
          v37 = v51;
        }

        v38 = v53;
        if (v51 < v34)
        {
          v38 = v28 + 1;
        }

        v53 = v38;
        v39 = v52;
        if (v51 < v34)
        {
          v39 = v24 + 1;
        }

        v51 = v37;
        v52 = v39;
      }
    }

    goto LABEL_20;
  }

  v51 = 0;
  v52 = 0;
  v53 = 0;
LABEL_38:
  (*(v41 + 8))(v49, v48);

  return v51;
}

char *sub_27105E6D0(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_271059B90(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
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

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_27105E7C4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = a1[3];
  v9 = a1[4];
  v10 = __swift_project_boxed_opaque_existential_1Tm(a1, v8);
  result = sub_27105E200(v10, a2, v8, a3, v9);
  v12 = result;
  if (result < 1)
  {
    v14 = 0;
    v13 = 0;
    v16 = 0;
    v15 = 0;
  }

  else
  {
    sub_2710F708C();
    sub_2710F6DBC();
    v13 = v17;
    sub_2710F6DBC();
    v14 = v17;
    __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
    __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
    sub_2710F708C();
    sub_2710F6DBC();
    v15 = v17;
    __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
    result = sub_2710F6DBC();
    v16 = v17;
  }

  *a4 = v14;
  *(a4 + 8) = v13;
  *(a4 + 16) = v16;
  *(a4 + 24) = v15;
  *(a4 + 32) = v12 < 1;
  return result;
}

unint64_t sub_27105E984()
{
  result = qword_280875370;
  if (!qword_280875370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280875370);
  }

  return result;
}

uint64_t sub_27105E9D8(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808750A0, &qword_271102710);
  }

  else
  {

    return MEMORY[0x2821FDC00](0, a2);
  }
}

char *sub_27105EA74(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280875380, ":>");
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_27105EB78(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280875388, "<>");
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280875390, "B>");
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_27105ECAC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_27105ECCC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_27105ECCC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280875380, ":>");
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_27105EDD0(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x277D84F90];
    }

    v3 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280875390, "B>");
    v4 = sub_2710F6FBC();
    v5 = v4;
    *(v4 + 16) = a2;
    *(v4 + 32) = v3;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v4 + 40);
      do
      {
        *v7++ = v3;

        --v6;
      }

      while (v6);
    }

    return v5;
  }

  return result;
}

unint64_t sub_27105EE70()
{
  result = qword_280875378;
  if (!qword_280875378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280875378);
  }

  return result;
}

float64x2_t VLECEFFromCoordinate@<Q0>(float64x2_t *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>)
{
  v7 = __sincos_stret(a2 * 0.0174532925);
  v9 = __sincos_stret(a3 * 0.0174532925);
  v8.f64[0] = v9.__cosval;
  v10 = 6378137.0 / sqrt(v7.__sinval * -0.00669437999 * v7.__sinval + 1.0);
  v8.f64[1] = v9.__sinval;
  result = vmulq_n_f64(v8, v7.__cosval * (a4 + v10));
  v8.f64[0] = v7.__sinval * (a4 + v10 * 0.99330562);
  *a1 = result;
  a1[1] = v8;
  return result;
}

float64x2_t VLECEFFromLatLng@<Q0>(float64x2_t *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>)
{
  v7 = __sincos_stret(a2 * 0.0174532925);
  v9 = __sincos_stret(a3 * 0.0174532925);
  v8.f64[0] = v9.__cosval;
  v10 = 6378137.0 / sqrt(v7.__sinval * -0.00669437999 * v7.__sinval + 1.0);
  v8.f64[1] = v9.__sinval;
  result = vmulq_n_f64(v8, v7.__cosval * (v10 + a4));
  v8.f64[0] = v7.__sinval * (a4 + v10 * 0.99330562);
  *a1 = result;
  a1[1] = v8;
  return result;
}

double VLCoordinateFromECEF(float64x2_t *a1)
{
  v1 = *a1;
  v2 = a1->f64[1];
  v3 = sqrt(vmuld_lane_f64(v2, *a1, 1) + v1.f64[0] * v1.f64[0]);
  v4 = v3 * 0.99330562;
  v5 = 1.57079633;
  if (v3 * 0.99330562 != 0.0)
  {
    v14 = a1->f64[1];
    v15 = *a1;
    v6 = 0;
    __y = a1[1].f64[0];
    v5 = 0.0;
    v7 = 0.0;
    do
    {
      v9 = v5;
      v5 = atan2(__y, v4);
      v10 = __sincos_stret(v5);
      v11 = 6378137.0 / sqrt(v10.__sinval * -0.00669437999 * v10.__sinval + 1.0);
      v12 = v3 / v10.__cosval - v11;
      if (vabdd_f64(v9, v5) < 0.000001)
      {
        if (vabdd_f64(v7, v12) < 0.001 || v6 >= 9)
        {
LABEL_10:
          v1.f64[0] = v15.f64[0];
          v2 = v14;
          goto LABEL_12;
        }
      }

      else if (v6 > 8)
      {
        goto LABEL_10;
      }

      ++v6;
      v4 = v3 * (v11 / (v11 + v12) * -0.00669437999 + 1.0);
      v7 = v3 / v10.__cosval - v11;
    }

    while (v4 != 0.0);
    v1.f64[0] = v15.f64[0];
    v5 = 1.57079633;
    v2 = v14;
  }

LABEL_12:
  atan2(v2, v1.f64[0]);
  return v5 / 0.0174532925;
}

long double VLHeadingForTransform(uint64_t a1)
{
  v2 = *(a1 + 96);
  v3 = *(a1 + 112);
  v4 = vmulq_f64(v3, v3);
  v4.f64[0] = 1.0 / sqrt(v4.f64[0] + vaddvq_f64(vmulq_f64(v2, v2)));
  v5 = vmulq_f64(v3, v4);
  v6 = vmulq_n_f64(v2, v4.f64[0]);
  v7 = vextq_s8(v6, v6, 8uLL);
  v8 = *(a1 + 16);
  v9 = vnegq_f64(*a1);
  v10 = vnegq_f64(v8);
  v10.f64[0] = -v8.f64[0];
  v12 = *(a1 + 32);
  v11 = *(a1 + 48);
  if (vmulq_f64(v10, v5).f64[0] + vaddvq_f64(vmulq_f64(v9, v6)) >= 0.0)
  {
    v43 = vaddq_f64(v9, v6);
    v44 = vaddq_f64(v10, v5);
    v1.f64[0] = 1.0 / sqrt(vmulq_f64(v44, v44).f64[0] + vaddvq_f64(vmulq_f64(v43, v43)));
    v45 = vmulq_n_f64(v43, v1.f64[0]);
    v46 = vmulq_f64(v44, v1);
    v44.f64[0] = v10.f64[0];
    *&v44.f64[1] = v9.i64[0];
    v42.i64[0] = *&vmlaq_laneq_f64(vmulq_laneq_f64(vnegq_f64(v10), v45, 1), v46, v9, 1);
    v47 = vmulq_f64(v10, v46).f64[0];
    v46.f64[1] = v45.f64[0];
    v48 = vmlaq_f64(vmulq_f64(v46, vnegq_f64(v9)), v45, v44);
    v42.i64[1] = v48.i64[0];
    v49 = v47 + vaddvq_f64(vmulq_f64(v9, v45));
    *&v41.f64[0] = vdupq_laneq_s64(v48, 1).u64[0];
    v41.f64[1] = v49;
  }

  else
  {
    v13 = vextq_s8(v9, v9, 8uLL);
    v14 = vmulq_f64(v10, v10);
    v14.f64[0] = 1.0 / sqrt(v14.f64[0] + vaddvq_f64(vmulq_f64(v9, v9)));
    *&v15.f64[0] = v6.i64[0];
    v15.f64[1] = v7.f64[0];
    v1.f64[0] = 1.0 / sqrt(vmulq_f64(v5, v5).f64[0] + vaddvq_f64(vmulq_f64(v15, v15)));
    v16 = vmulq_f64(v5, v1);
    v17 = vaddq_f64(vmulq_n_f64(v9, v14.f64[0]), vmulq_n_f64(v15, v1.f64[0]));
    v18 = vaddq_f64(vmulq_f64(v10, v14), v16);
    v19 = vmulq_f64(v17, v17);
    v19.f64[0] = vmulq_f64(v18, v18).f64[0] + vaddvq_f64(v19);
    if (v19.f64[0] <= 4.93038066e-32)
    {
      *&v69 = *&vabsq_f64(v10);
      v70 = vabsq_f64(v9);
      v71 = v70.f64[1];
      if (v70.f64[0] > v70.f64[1] || v70.f64[0] > v69)
      {
        v78.i64[0] = *&v10.f64[0];
        v78.i64[1] = v9.i64[0];
        v9.i64[1] = *&v13.f64[0];
        v78.i64[1] = vextq_s8(v78, v78, 8uLL).u64[0];
        if (v71 <= v69)
        {
          v79 = vmlaq_f64(vmulq_f64(v9, vnegq_f64(0)), xmmword_271103540, v78);
          v85 = vmlaq_f64(vnegq_f64(v10), 0, v13);
        }

        else
        {
          v79 = vmlaq_f64(vmulq_f64(v9, xmmword_271103550), 0, v78);
          __asm { FMOV            V16.2D, #1.0 }

          v85 = vmlaq_f64(vmulq_f64(v10, vnegq_f64(0)), _Q16, v13);
        }

        v86 = vmulq_f64(v79, v79);
        v87 = vmulq_f64(v85, v85);
        v85.f64[1] = v79.f64[0];
        v87.f64[0] = 1.0 / sqrt(v86.f64[1] + v87.f64[0] + v86.f64[0]);
        v42 = vmulq_n_f64(v85, v87.f64[0]);
        v41 = *&vmulq_laneq_f64(v87, v79, 1);
      }

      else
      {
        v72.f64[0] = v10.f64[0];
        *&v72.f64[1] = v9.i64[0];
        *&v73.f64[0] = v9.i64[0];
        v73.f64[1] = v13.f64[0];
        v74 = vmlaq_f64(vmulq_f64(v73, xmmword_271103560), xmmword_271103570, v72);
        v75 = vmlaq_laneq_f64(vmulq_f64(v10, vnegq_f64(0)), 0, v9, 1);
        v76 = vmulq_f64(v74, v74);
        v77 = vmulq_f64(v75, v75).f64[0];
        v75.f64[1] = v74.f64[0];
        v76.f64[0] = 1.0 / sqrt(v76.f64[1] + v77 + v76.f64[0]);
        v42 = vmulq_n_f64(v75, v76.f64[0]);
        v41 = *&vmulq_laneq_f64(v76, v74, 1);
      }
    }

    else
    {
      v19.f64[0] = 1.0 / sqrt(v19.f64[0]);
      v20 = vmulq_f64(v18, v19);
      v17.i64[1] = vextq_s8(v17, v17, 8uLL).u64[0];
      v21 = vmulq_n_f64(v17, v19.f64[0]);
      v22 = vaddq_f64(v9, v21);
      v23 = vaddq_f64(v10, v20);
      v24 = vmulq_f64(v23, v23);
      v24.f64[0] = 1.0 / sqrt(v24.f64[0] + vaddvq_f64(vmulq_f64(v22, v22)));
      v25 = vmulq_n_f64(v22, v24.f64[0]);
      v26 = vmulq_f64(v23, v24);
      v24.f64[0] = v10.f64[0];
      *&v24.f64[1] = v9.i64[0];
      *&v22.f64[0] = *&vmlaq_laneq_f64(vmulq_laneq_f64(vnegq_f64(v10), v25, 1), v26, v9, 1);
      v27 = vmulq_f64(v10, v26).f64[0];
      v26.f64[1] = v25.f64[0];
      *&v28.f64[0] = v9.i64[0];
      v28.f64[1] = v13.f64[0];
      v29 = vmlaq_f64(vmulq_f64(v26, vnegq_f64(v28)), v25, v24);
      v30 = v27 + vaddvq_f64(vmulq_f64(v9, v25));
      v31 = vaddq_f64(v6, v21);
      v32 = vaddq_f64(v5, v20);
      v16.f64[0] = 1.0 / sqrt(vmulq_f64(v32, v32).f64[0] + vaddvq_f64(vmulq_f64(v31, v31)));
      v33 = vmulq_n_f64(v31, v16.f64[0]);
      v34 = vmulq_f64(v32, v16);
      v35 = vnegq_f64(v20);
      v24.f64[0] = vmulq_f64(v20, v34).f64[0];
      *&v20.f64[1] = v21.i64[0];
      v36 = vmlaq_laneq_f64(vmulq_laneq_f64(v35, v33, 1), v34, v21, 1);
      v34.f64[1] = v33.f64[0];
      v37 = vmlaq_f64(vmulq_f64(v34, vnegq_f64(v21)), v33, v20);
      *&v20.f64[0] = v36.i64[0];
      *&v20.f64[1] = v37.i64[0];
      v33.f64[0] = vaddvq_f64(vmulq_f64(v21, v33));
      v21.i64[0] = vdupq_laneq_s64(v37, 1).u64[0];
      *&v21.i64[1] = v24.f64[0] + v33.f64[0];
      v38 = vnegq_f64(v20);
      v39 = vextq_s8(v21, vnegq_f64(v21), 8uLL);
      v40 = vmlaq_laneq_f64(vmulq_n_f64(v20, v30), vextq_s8(v38, v36, 8uLL), v29, 1);
      v41 = vaddq_f64(vmlaq_n_f64(vmulq_n_f64(v38, v29.f64[0]), vzip1q_s64(v37, v38), v22.f64[0]), vmlaq_laneq_f64(vmulq_n_f64(v21, v30), v39, v29, 1));
      v42 = vaddq_f64(vmlaq_n_f64(vmulq_n_f64(v21, v29.f64[0]), v39, v22.f64[0]), v40);
    }
  }

  v50.f64[0] = v5.f64[0];
  *&v50.f64[1] = v6.i64[0];
  v6.i64[1] = *&v7.f64[0];
  v51 = vmlaq_f64(vmulq_f64(v50, vnegq_f64(0)), xmmword_271103570, v6);
  v52 = vmlaq_f64(vnegq_f64(v7), 0, v5);
  v53 = vmulq_f64(v51, v51);
  v54 = vmulq_f64(v52, v52);
  v52.f64[1] = v51.f64[0];
  v54.f64[0] = 1.0 / sqrt(v53.f64[1] + v54.f64[0] + v53.f64[0]);
  v55 = vmulq_n_f64(v52, v54.f64[0]);
  v56 = vmulq_laneq_f64(v54, v51, 1);
  *&v57.f64[0] = *&vmlaq_f64(vmulq_laneq_f64(vnegq_f64(v5), v55, 1), v56, v7);
  v58 = vmulq_f64(v41, xmmword_271103580);
  v59 = vnegq_f64(v42);
  v60 = vextq_s8(v58, vnegq_f64(v58), 8uLL);
  v61 = vmlaq_n_f64(vmlaq_n_f64(vmulq_laneq_f64(v42, v12, 1), vextq_s8(v59, v42, 8uLL), v12.f64[0]), v60, *&v11);
  v62 = vmlaq_n_f64(vmlaq_n_f64(vmulq_laneq_f64(v58, v12, 1), v60, v12.f64[0]), vextq_s8(v42, v59, 8uLL), *&v11);
  v63 = vnegq_f64(v62);
  v64 = vextq_s8(v61, vnegq_f64(v61), 8uLL);
  v65 = vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(v61, v41, 1), v64, v41.f64[0]), vmlaq_n_f64(vmulq_laneq_f64(v63, v42, 1), vextq_s8(v62, v63, 8uLL), *v42.i64));
  v60.f64[0] = vmulq_f64(v56, v65).f64[0];
  v56.f64[1] = v55.f64[0];
  v66 = vmlaq_f64(vmulq_f64(v56, vnegq_f64(v6)), v55, v50);
  v57.f64[1] = v66.f64[0];
  v67 = vaddq_f64(vmlaq_n_f64(vmulq_laneq_f64(v62, v41, 1), vextq_s8(v63, v62, 8uLL), v41.f64[0]), vmlaq_n_f64(vmulq_laneq_f64(v61, v42, 1), v64, *v42.i64));
  return (atan2(v60.f64[0] + vaddvq_f64(vmulq_f64(v55, v67)), vmulq_laneq_f64(v65, v66, 1).f64[0] + vaddvq_f64(vmulq_f64(v57, v67))) + -1.57079633) * 180.0 / 3.14159265;
}

void VLLocationFromCLLocation(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  [v3 coordinate];
  v5 = v4;
  [v3 coordinate];
  v7 = v6;
  [v3 altitude];
  v9 = v8;
  [v3 isCoordinateFused];
  *(a2 + 32) = 0;
  [v3 horizontalAccuracy];
  v11 = v10;
  v12 = [v3 type] - 1;
  if (v12 > 0xC)
  {
    v13 = 0;
  }

  else
  {
    v13 = dword_271103590[v12];
  }

  v14 = v11;
  v15 = __sincos_stret(v5 * 0.0174532925);
  v16 = __sincos_stret(v7 * 0.0174532925);
  v17 = 6378137.0 / sqrt(v15.__sinval * -0.00669437999 * v15.__sinval + 1.0);
  v18 = v15.__cosval * (v9 + v17);
  *a2 = v16.__cosval * v18;
  *(a2 + 8) = v16.__sinval * v18;
  *(a2 + 16) = v15.__sinval * (v9 + v17 * 0.99330562);
  *(a2 + 24) = v14;
  *(a2 + 32) = v13;
  v19 = [v3 isCoordinateFused];

  *(a2 + 28) = v19;
}

Class __getCIImageClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!qword_281181C58)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __CoreImageLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_279E2D730;
    v6 = 0;
    qword_281181C58 = _sl_dlopen();
    v2 = v4[0];
    if (qword_281181C58)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("CIImage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np("Unable to find class %s", "CIImage");
  }

  _MergedGlobals_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __CoreImageLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  qword_281181C58 = result;
  return result;
}

Class __getCIContextClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!qword_281181C58)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __CoreImageLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_279E2D730;
    v6 = 0;
    qword_281181C58 = _sl_dlopen();
    v2 = v4[0];
    if (qword_281181C58)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("CIContext");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    abort_report_np("Unable to find class %s", "CIContext");
  }

  qword_281181C60 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_271065A6C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = VLTileDataProvider;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_271066004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, id a56)
{
  _Block_object_dispose(&a51, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_271066CF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  objc_destroyWeak((v32 + 32));

  objc_destroyWeak((v33 - 112));
  _Block_object_dispose(&a25, 8);

  _Block_object_dispose((v33 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_271066E70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_271067124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_2710674DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v21 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v19 - 128), 8);

  _Unwind_Resume(a1);
}

void sub_271067C8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);
  _Block_object_dispose((v24 - 256), 8);
  _Block_object_dispose((v24 - 224), 8);
  _Block_object_dispose((v24 - 192), 8);

  _Unwind_Resume(a1);
}

void sub_271068A18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  _Block_object_dispose((v21 - 232), 8);

  _Unwind_Resume(a1);
}

void *std::list<VLLocalizationDataKey>::remove(void *result, void *a2)
{
  v23 = &v23;
  __p = &v23;
  v25 = 0;
  v2 = result[1];
  if (v2 == result)
  {
    return result;
  }

  if (&v23 == result)
  {
    while (1)
    {
      v16 = v2[1];
      if (v2[2] == *a2 && v2[3] == a2[1])
      {
        break;
      }

LABEL_27:
      v2 = v16;
      if (v16 == result)
      {
        return result;
      }
    }

    if (v16 == result)
    {
      v18 = 1;
      if (v2 != v16)
      {
LABEL_37:
        v19 = *v16;
        v20 = *(*v16 + 8);
        v21 = *v2;
        *(v21 + 8) = v20;
        *v20 = v21;
        v22 = v23;
        v23[1] = v2;
        *v2 = v22;
        v23 = v19;
        v19[1] = &v23;
      }
    }

    else
    {
      do
      {
        v18 = *(v16 + 16) == *a2;
        if (*(v16 + 16) != *a2)
        {
          break;
        }

        v16 = *(v16 + 8);
      }

      while (v16 != result);
      if (v2 != v16)
      {
        goto LABEL_37;
      }
    }

    if (!v18)
    {
      v16 = *(v16 + 8);
    }

    goto LABEL_27;
  }

  v3 = 0;
  v4 = &v23;
  do
  {
    v5 = v2[1];
    if (v2[2] == *a2 && v2[3] == a2[1])
    {
      if (v5 == result)
      {
        v7 = 1;
        if (v2 == v5)
        {
          goto LABEL_14;
        }
      }

      else
      {
        do
        {
          v7 = *(v5 + 16) == *a2;
          if (*(v5 + 16) != *a2)
          {
            break;
          }

          v5 = *(v5 + 8);
        }

        while (v5 != result);
        if (v2 == v5)
        {
LABEL_14:
          if (v7)
          {
            goto LABEL_4;
          }

LABEL_21:
          v5 = *(v5 + 8);
          goto LABEL_4;
        }
      }

      v4 = *v5;
      v8 = 1;
      if (*v5 != v2)
      {
        v9 = v2;
        do
        {
          v9 = v9[1];
          ++v8;
        }

        while (v9 != v4);
      }

      result[2] -= v8;
      v3 += v8;
      v10 = v4[1];
      v11 = *v2;
      *(v11 + 8) = v10;
      *v10 = v11;
      v12 = v23;
      v23[1] = v2;
      *v2 = v12;
      v25 = v3;
      v23 = v4;
      v4[1] = &v23;
      if (!v7)
      {
        goto LABEL_21;
      }
    }

LABEL_4:
    v2 = v5;
  }

  while (v5 != result);
  if (v3)
  {
    result = __p;
    v13 = v4[1];
    v14 = *__p;
    *(v14 + 8) = v13;
    *v13 = v14;
    v25 = 0;
    if (result != &v23)
    {
      do
      {
        v15 = result[1];
        operator delete(result);
        result = v15;
      }

      while (v15 != &v23);
    }
  }

  return result;
}

uint64_t *std::list<void({block_pointer} {__strong})(GEOTileData *,NSError *),std::allocator<void({block_pointer} {__strong})(GEOTileData *,NSError *)>>::~list(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }

  return a1;
}

void sub_271069644(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v23 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t ___ZL20VLGetTileProviderLogv_block_invoke()
{
  _MergedGlobals_1 = os_log_create("com.apple.VisualLocalization", "TileProvider");

  return MEMORY[0x2821F96F8]();
}

void std::__list_imp<void({block_pointer} {__strong})(GEOTileData *,NSError *),std::allocator<void({block_pointer} {__strong})(GEOTileData *,NSError *)>>::clear(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

uint64_t *std::__tree<std::__value_type<VLLocalizationDataKey,std::list<void({block_pointer} {__strong})(GEOTileData *,NSError *),std::allocator<void({block_pointer} {__strong})(GEOTileData *,NSError *)>>>,std::__map_value_compare<VLLocalizationDataKey,std::__value_type<VLLocalizationDataKey,std::list<void({block_pointer} {__strong})(GEOTileData *,NSError *),std::allocator<void({block_pointer} {__strong})(GEOTileData *,NSError *)>>>,std::less<VLLocalizationDataKey>,true>,std::allocator<std::__value_type<VLLocalizationDataKey,std::list<void({block_pointer} {__strong})(GEOTileData *,NSError *),std::allocator<void({block_pointer} {__strong})(GEOTileData *,NSError *)>>>>>::__emplace_unique_key_args<VLLocalizationDataKey,std::piecewise_construct_t const&,std::tuple<VLLocalizationDataKey const&>,std::tuple<>>(uint64_t **a1, unint64_t *a2, _OWORD **a3)
{
  v3 = a1[1];
  if (!v3)
  {
LABEL_19:
    operator new();
  }

  v4 = bswap64(*a2);
  while (1)
  {
    while (1)
    {
      result = v3;
      v6 = bswap64(v3[4]);
      if (v4 == v6)
      {
        v7 = bswap64(a2[1]);
        v6 = bswap64(result[5]);
        if (v7 == v6)
        {
          break;
        }
      }

      else
      {
        v7 = v4;
      }

      v8 = v7 < v6 ? -1 : 1;
      if ((v8 & 0x80000000) == 0)
      {
        break;
      }

      v3 = *result;
      if (!*result)
      {
        goto LABEL_19;
      }
    }

    v9 = bswap64(result[4]);
    v10 = bswap64(*a2);
    if (v9 == v10)
    {
      v9 = bswap64(result[5]);
      v10 = bswap64(a2[1]);
      if (v9 == v10)
      {
        return result;
      }
    }

    v11 = v9 < v10 ? -1 : 1;
    if ((v11 & 0x80000000) == 0)
    {
      return result;
    }

    v3 = result[1];
    if (!v3)
    {
      goto LABEL_19;
    }
  }
}

void std::__tree<std::__value_type<VLLocalizationDataKey,std::list<void({block_pointer} {__strong})(GEOTileData *,NSError *),std::allocator<void({block_pointer} {__strong})(GEOTileData *,NSError *)>>>,std::__map_value_compare<VLLocalizationDataKey,std::__value_type<VLLocalizationDataKey,std::list<void({block_pointer} {__strong})(GEOTileData *,NSError *),std::allocator<void({block_pointer} {__strong})(GEOTileData *,NSError *)>>>,std::less<VLLocalizationDataKey>,true>,std::allocator<std::__value_type<VLLocalizationDataKey,std::list<void({block_pointer} {__strong})(GEOTileData *,NSError *),std::allocator<void({block_pointer} {__strong})(GEOTileData *,NSError *)>>>>>::erase(uint64_t a1, void **__p)
{
  v3 = __p[1];
  if (v3)
  {
    v4 = __p[1];
    do
    {
      v5 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  else
  {
    v6 = __p;
    do
    {
      v5 = v6[2];
      v18 = *v5 == v6;
      v6 = v5;
    }

    while (!v18);
  }

  if (*a1 != __p)
  {
    v7 = *(a1 + 8);
    --*(a1 + 16);
    v8 = *__p;
    if (*__p)
    {
      goto LABEL_10;
    }

LABEL_18:
    v9 = __p;
    if (v3)
    {
      goto LABEL_13;
    }

    goto LABEL_19;
  }

  *a1 = v5;
  v7 = *(a1 + 8);
  --*(a1 + 16);
  v8 = *__p;
  if (!*__p)
  {
    goto LABEL_18;
  }

LABEL_10:
  if (!v3)
  {
    v3 = v8;
    v9 = __p;
    v10 = 0;
    v11 = __p[2];
    v8[2] = v11;
    v12 = *v11;
    if (*v11 == __p)
    {
      goto LABEL_20;
    }

LABEL_14:
    v11[1] = v3;
    v13 = *(v9 + 24);
    if (v9 == __p)
    {
      goto LABEL_15;
    }

LABEL_26:
    v14 = __p[2];
    v14[*v14 != __p] = v9;
    v9[2] = v14;
    v16 = *__p;
    v15 = __p[1];
    v16[2] = v9;
    *v9 = v16;
    v9[1] = v15;
    if (v15)
    {
      *(v15 + 2) = v9;
    }

    *(v9 + 24) = *(__p + 24);
    if (v7 == __p)
    {
      v7 = v9;
    }

    if (!v7)
    {
LABEL_81:
      if (!__p[8])
      {
        goto LABEL_84;
      }

LABEL_82:
      v39 = __p + 6;
      v40 = __p[7];
      v41 = *(__p[6] + 1);
      v42 = *v40;
      v42[1] = v41;
      *v41 = v42;
      __p[8] = 0;
      if (v40 != __p + 6)
      {
        do
        {
          v43 = v40[1];

          operator delete(v40);
          v40 = v43;
        }

        while (v43 != v39);
      }

      goto LABEL_84;
    }

    goto LABEL_31;
  }

  do
  {
    v9 = v3;
    v3 = *v3;
  }

  while (v3);
  v3 = v9[1];
  if (!v3)
  {
LABEL_19:
    v11 = v9[2];
    v10 = 1;
    v12 = *v11;
    if (*v11 == v9)
    {
      goto LABEL_20;
    }

    goto LABEL_14;
  }

LABEL_13:
  v10 = 0;
  v11 = v9[2];
  v3[2] = v11;
  v12 = *v11;
  if (*v11 != v9)
  {
    goto LABEL_14;
  }

LABEL_20:
  *v11 = v3;
  if (v9 == v7)
  {
    v12 = 0;
    v7 = v3;
    v13 = *(v9 + 24);
    if (v9 != __p)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v12 = v11[1];
    v13 = *(v9 + 24);
    if (v9 != __p)
    {
      goto LABEL_26;
    }
  }

LABEL_15:
  if (!v7)
  {
    goto LABEL_81;
  }

LABEL_31:
  if (!v13)
  {
    goto LABEL_81;
  }

  if (!v10)
  {
    *(v3 + 24) = 1;
    if (!__p[8])
    {
      goto LABEL_84;
    }

    goto LABEL_82;
  }

  while (1)
  {
    v19 = v12[2];
    v20 = *v19;
    if (*v19 != v12)
    {
      if ((v12[3] & 1) == 0)
      {
        *(v12 + 24) = 1;
        *(v19 + 24) = 0;
        v21 = v19[1];
        v22 = *v21;
        v19[1] = *v21;
        if (v22)
        {
          v22[2] = v19;
        }

        v23 = v19[2];
        v21[2] = v23;
        v23[*v23 != v19] = v21;
        *v21 = v19;
        v19[2] = v21;
        if (v7 == *v12)
        {
          v7 = v12;
        }

        v12 = *(*v12 + 1);
      }

      v24 = *v12;
      if (*v12 && v24[24] != 1)
      {
        v25 = v12[1];
        if (v25 && (v25[3] & 1) == 0)
        {
LABEL_77:
          v24 = v12;
        }

        else
        {
          v24[24] = 1;
          *(v12 + 24) = 0;
          v33 = *(v24 + 1);
          *v12 = v33;
          if (v33)
          {
            v33[2] = v12;
          }

          v34 = v12[2];
          v34[*v34 != v12] = v24;
          *(v24 + 1) = v12;
          *(v24 + 2) = v34;
          v12[2] = v24;
          v25 = v12;
        }

        v35 = *(v24 + 2);
        v24[24] = *(v35 + 24);
        *(v35 + 24) = 1;
        *(v25 + 24) = 1;
        v36 = *(v35 + 8);
        v37 = *v36;
        *(v35 + 8) = *v36;
        if (v37)
        {
          *(v37 + 16) = v35;
        }

        v38 = *(v35 + 16);
        v36[2] = v38;
        v38[*v38 != v35] = v36;
        *v36 = v35;
        *(v35 + 16) = v36;
        goto LABEL_81;
      }

      v25 = v12[1];
      if (v25 && *(v25 + 24) != 1)
      {
        goto LABEL_77;
      }

      *(v12 + 24) = 0;
      v17 = v12[2];
      if (v17 == v7 || (v17[3] & 1) == 0)
      {
        goto LABEL_70;
      }

      goto LABEL_38;
    }

    if ((v12[3] & 1) == 0)
    {
      *(v12 + 24) = 1;
      *(v19 + 24) = 0;
      v26 = v20[1];
      *v19 = v26;
      if (v26)
      {
        v26[2] = v19;
      }

      v27 = v19[2];
      v27[*v27 != v19] = v20;
      v20[1] = v19;
      v20[2] = v27;
      v19[2] = v20;
      v28 = v12[1];
      if (v7 == v28)
      {
        v7 = v12;
      }

      v12 = *v28;
    }

    v29 = *v12;
    if (*v12 && v29[24] != 1)
    {
      goto LABEL_87;
    }

    v30 = v12[1];
    if (v30)
    {
      if (*(v30 + 24) != 1)
      {
        break;
      }
    }

    *(v12 + 24) = 0;
    v17 = v12[2];
    v18 = *(v17 + 24) != 1 || v17 == v7;
    if (v18)
    {
LABEL_70:
      *(v17 + 24) = 1;
      if (__p[8])
      {
        goto LABEL_82;
      }

      goto LABEL_84;
    }

LABEL_38:
    v12 = *(v17[2] + (*v17[2] == v17));
  }

  if (v29 && (v29[24] & 1) == 0)
  {
LABEL_87:
    v30 = v12;
    goto LABEL_88;
  }

  *(v30 + 24) = 1;
  *(v12 + 24) = 0;
  v31 = *v30;
  v12[1] = *v30;
  if (v31)
  {
    v31[2] = v12;
  }

  v32 = v12[2];
  v30[2] = v32;
  v32[*v32 != v12] = v30;
  *v30 = v12;
  v12[2] = v30;
  v29 = v12;
LABEL_88:
  v44 = v30[2];
  *(v30 + 24) = v44[24];
  v44[24] = 1;
  v29[24] = 1;
  v45 = *v44;
  v46 = *(*v44 + 8);
  *v44 = v46;
  if (v46)
  {
    *(v46 + 16) = v44;
  }

  v47 = *(v44 + 2);
  v47[*v47 != v44] = v45;
  *(v45 + 8) = v44;
  *(v45 + 16) = v47;
  *(v44 + 2) = v45;
  if (__p[8])
  {
    goto LABEL_82;
  }

LABEL_84:

  operator delete(__p);
}