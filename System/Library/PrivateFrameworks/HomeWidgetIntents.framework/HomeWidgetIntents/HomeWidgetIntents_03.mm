uint64_t sub_2545F9FE4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2545FA0DC;

  return v6(a1);
}

uint64_t sub_2545FA0DC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x259C12CB0);
  }

  return result;
}

uint64_t sub_2545FA224(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t sub_2545FA270()
{
  result = qword_27F606CD0;
  if (!qword_27F606CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606CD0);
  }

  return result;
}

uint64_t sub_2545FA308()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2545AF6A0;

  return sub_2545F8014();
}

uint64_t sub_2545FA3B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606CE8, &qword_254602FB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2545FA424(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2545D880C;

  return sub_2545F9FE4(a1, v4);
}

uint64_t sub_2545FA4DC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2545AF6A0;

  return sub_2545F9FE4(a1, v4);
}

uint64_t sub_2545FA594(uint64_t a1, const char *a2, uint64_t a3, char a4, uint64_t a5)
{
  v22 = a2;
  v6 = sub_2545FF034();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_2545FEFF4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_2545FF014();
  sub_2545FF044();
  v21 = sub_2545FF484();
  result = sub_2545FF4C4();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v11 + 8))(v13, v10);
  }

  if ((a4 & 1) == 0)
  {
    v16 = v22;
    if (v22)
    {
LABEL_9:
      sub_2545FE8F4();
      sub_2545FF074();
      sub_2545FEA14();
      if ((*(v7 + 88))(v9, v6) == *MEMORY[0x277D85B00])
      {
        v17 = "[Error] Interval already ended";
      }

      else
      {
        (*(v7 + 8))(v9, v6);
        v17 = "";
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = sub_2545FEFD4();
      _os_signpost_emit_with_name_impl(&dword_2545AB000, v14, v21, v19, v16, v17, v18, 2u);
      MEMORY[0x259C12CB0](v18, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v22 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v22 & 0xFFFFF800) != 0xD800)
  {
    if (v22 >> 16 <= 0x10)
    {
      v16 = &v23;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

id sub_2545FA83C()
{
  v1 = sub_2545FEB04();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6064D0, &unk_2546002B0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v28 - v9;
  v11 = 0x27977E000uLL;
  v12 = [v0 homes];
  v28[0] = sub_2545FA224(0, &qword_27F606840, 0x277CD1A60);
  v13 = sub_2545FF2B4();

  if (v13 >> 62)
  {
    v14 = sub_2545FF674();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v14)
  {
    return 0;
  }

  if (qword_27F6063E8 != -1)
  {
    swift_once();
  }

  v15 = *algn_27F60AE18;
  if (sub_2545FC3F0(qword_27F60AE10))
  {
    v16 = [v0 currentHome];
  }

  else
  {
    v16 = 0;
  }

  v17 = sub_2545FF164();
  v18 = [v15 stringForKey_];

  if (v18)
  {
    sub_2545FF174();

    sub_2545FEA84();
    v11 = 0x27977E000;
  }

  else
  {
    (*(v2 + 56))(v10, 1, 1, v1);
  }

  sub_2545FC50C(v10, v8);
  if ((*(v2 + 48))(v8, 1, v1) == 1)
  {
    sub_2545B612C(v10, &qword_27F6064D0, &unk_2546002B0);
  }

  else
  {
    (*(v2 + 32))(v4, v8, v1);
    v19 = [v0 *(v11 + 2944)];
    v20 = sub_2545FF2B4();

    MEMORY[0x28223BE20](v21);
    v28[-2] = v4;
    v22 = sub_2545FBCE0(sub_2545FC57C, &v28[-4], v20);

    sub_2545B612C(v10, &qword_27F6064D0, &unk_2546002B0);
    (*(v2 + 8))(v4, v1);
    result = v22;
    if (v22)
    {
      if (!v16)
      {
        goto LABEL_18;
      }

LABEL_16:

      return v16;
    }
  }

  result = [v0 currentHome];
  if (v16)
  {
    goto LABEL_16;
  }

LABEL_18:
  if (result)
  {
    return result;
  }

  v24 = [v0 *(v11 + 2944)];
  v25 = sub_2545FF2B4();

  if (v25 >> 62)
  {
    result = sub_2545FF674();
    if (result)
    {
      goto LABEL_21;
    }

    goto LABEL_27;
  }

  result = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_27:

    return 0;
  }

LABEL_21:
  if ((v25 & 0xC000000000000001) != 0)
  {
    v26 = MEMORY[0x259C124A0](0, v25);
    goto LABEL_24;
  }

  if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v26 = *(v25 + 32);
LABEL_24:
    v27 = v26;

    return v27;
  }

  __break(1u);
  return result;
}

uint64_t sub_2545FACE8(uint64_t a1)
{
  v3 = type metadata accessor for HomeID(0);
  v30 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v28 - v7;
  if (a1)
  {
    if (a1 == 1)
    {
      v9 = [v1 homes];
      sub_2545FA224(0, &qword_27F606840, 0x277CD1A60);
      v10 = sub_2545FF2B4();

      v36 = v10;
      sub_2545FF424();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606848, &qword_254600F20);
      sub_2545FC59C();
      v11 = sub_2545FF3D4();
    }

    else
    {
      v14 = [v1 homes];
      sub_2545FA224(0, &qword_27F606840, 0x277CD1A60);
      v15 = sub_2545FF2B4();

      v37 = MEMORY[0x277D84F90];
      if (v15 >> 62)
      {
        goto LABEL_30;
      }

      for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2545FF674())
      {
        v28[1] = v1;
        v17 = 0;
        v33 = v15 & 0xFFFFFFFFFFFFFF8;
        v34 = v15 & 0xC000000000000001;
        v29 = v15;
        v31 = i;
        v32 = v15 + 32;
        v15 = a1 + 56;
        while (1)
        {
          if (v34)
          {
            v18 = MEMORY[0x259C124A0](v17, v29);
          }

          else
          {
            if (v17 >= *(v33 + 16))
            {
              goto LABEL_29;
            }

            v18 = *(v32 + 8 * v17);
          }

          v19 = v18;
          if (__OFADD__(v17++, 1))
          {
            break;
          }

          v1 = [v18 uniqueIdentifier];
          sub_2545FEAC4();

          if (*(a1 + 16))
          {
            sub_2545FF834();
            sub_2545FEB04();
            sub_2545FD06C(&qword_27F606430, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
            sub_2545FF0C4();
            v1 = &v36;
            v21 = sub_2545FF864();
            v22 = -1 << *(a1 + 32);
            v23 = v21 & ~v22;
            if ((*(v15 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
            {
              v24 = ~v22;
              v25 = *(v30 + 72);
              while (1)
              {
                sub_2545DE71C(*(a1 + 48) + v25 * v23, v6);
                v1 = _s17HomeWidgetIntents0A2IDV2eeoiySbAC_ACtFZ_0();
                sub_2545DE780(v6);
                if (v1)
                {
                  break;
                }

                v23 = (v23 + 1) & v24;
                if (((*(v15 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
                {
                  goto LABEL_23;
                }
              }

              sub_2545DE780(v8);
              v1 = &v37;
              sub_2545FF5F4();
              sub_2545FF624();
              sub_2545FF634();
              sub_2545FF604();
            }

            else
            {
LABEL_23:

              sub_2545DE780(v8);
            }

            i = v31;
          }

          else
          {

            sub_2545DE780(v8);
          }

          if (v17 == i)
          {
            v26 = v37;
            goto LABEL_32;
          }
        }

        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        ;
      }

      v26 = MEMORY[0x277D84F90];
LABEL_32:

      v36 = v26;
      sub_2545FF424();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606848, &qword_254600F20);
      sub_2545FC59C();
      v11 = sub_2545FF3D4();
      sub_2545FEA14();
    }
  }

  else
  {
    v12 = sub_2545FA83C();
    v35 = v12;
    v11 = MEMORY[0x277D84F90];
    v36 = MEMORY[0x277D84F90];
    if (v12)
    {
      v13 = v12;
      MEMORY[0x259C12190]();
      if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2545FF2D4();
      }

      sub_2545FF304();
      v11 = v36;
    }

    sub_2545B612C(&v35, &qword_27F606CF8, &qword_254603010);
  }

  return v11;
}

uint64_t sub_2545FB1D4(void *a1, uint64_t a2)
{
  v26 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606D60, &qword_254603158);
  v24 = *(v3 - 8);
  v25 = v3;
  MEMORY[0x28223BE20](v3);
  v23 = &v19 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606D68, &qword_254603160);
  v21 = *(v5 - 8);
  v22 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606D70, &qword_254603168);
  v20 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606D78, &qword_254603170);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2545FCE80();
  v15 = v26;
  sub_2545FF884();
  if (!v15)
  {
    v28 = 0;
    sub_2545FCF7C();
    sub_2545FF734();
    (*(v20 + 8))(v10, v8);
    return (*(v12 + 8))(v14, v11);
  }

  if (v15 == 1)
  {
    v29 = 1;
    sub_2545FCF28();
    sub_2545FF734();
    (*(v21 + 8))(v7, v22);
    return (*(v12 + 8))(v14, v11);
  }

  v30 = 2;
  sub_2545FCED4();
  v17 = v23;
  sub_2545FF734();
  v27 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606D40, &qword_254603150);
  sub_2545FCFD0(&qword_27F606D80, &qword_27F606BD0, &protocol conformance descriptor for HomeID, MEMORY[0x277D83B50]);
  v18 = v25;
  sub_2545FF774();
  (*(v24 + 8))(v17, v18);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_2545FB600(uint64_t a1)
{
  v2 = sub_2545FCF28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2545FB63C(uint64_t a1)
{
  v2 = sub_2545FCF28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2545FB678()
{
  v1 = 7105633;
  if (*v0 != 1)
  {
    v1 = 2037149295;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E6572727563;
  }
}

uint64_t sub_2545FB6C4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2545FC750(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2545FB6F8(uint64_t a1)
{
  v2 = sub_2545FCE80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2545FB734(uint64_t a1)
{
  v2 = sub_2545FCE80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2545FB770(uint64_t a1)
{
  v2 = sub_2545FCF7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2545FB7AC(uint64_t a1)
{
  v2 = sub_2545FCF7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2545FB7F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_2545FF7B4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2545FB874(uint64_t a1)
{
  v2 = sub_2545FCED4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2545FB8B0(uint64_t a1)
{
  v2 = sub_2545FCED4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2545FB8EC(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!v2)
  {
    return !v3;
  }

  if (v2 == 1)
  {
    return v3 == 1;
  }

  if (v3 < 2)
  {
    return 0;
  }

  return sub_2545FBDF4(v2, v3);
}

uint64_t sub_2545FB92C()
{
  v1 = *v0;
  sub_2545FF834();
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x259C12730](2);
      sub_2545FC0CC(v4, v1);
      return sub_2545FF864();
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x259C12730](v2);
  return sub_2545FF864();
}

uint64_t sub_2545FB9A0(__int128 *a1)
{
  v3 = *v1;
  if (!*v1)
  {
    v4 = 0;
    return MEMORY[0x259C12730](v4);
  }

  if (v3 == 1)
  {
    v4 = 1;
    return MEMORY[0x259C12730](v4);
  }

  MEMORY[0x259C12730](2);

  return sub_2545FC0CC(a1, v3);
}

uint64_t sub_2545FBA20(uint64_t a1)
{
  v2 = *v1;
  sub_2545FF834();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x259C12730](2);
      sub_2545FC0CC(v5, v2);
      return sub_2545FF864();
    }

    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x259C12730](v3);
  return sub_2545FF864();
}

uint64_t sub_2545FBA90@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_2545FC868(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_2545FBAD8()
{
  if (!*v0)
  {
    return 0x746E6572727563;
  }

  if (*v0 == 1)
  {
    return 7105633;
  }

  type metadata accessor for HomeID(0);
  sub_2545FD06C(&qword_27F606768, type metadata accessor for HomeID, &protocol conformance descriptor for HomeID);
  v2 = sub_2545FF3A4();
  MEMORY[0x259C120B0](v2);

  return 0x3A796C6E6FLL;
}

id sub_2545FBBB0()
{
  result = sub_2545FC2E0();
  qword_27F60AE10 = result;
  *algn_27F60AE18 = v1;
  return result;
}

uint64_t sub_2545FBBD4(id *a1, uint64_t a2)
{
  v3 = sub_2545FEB04();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 uniqueIdentifier];
  sub_2545FEAC4();

  v8 = _s17HomeWidgetIntents0A2IDV2eeoiySbAC_ACtFZ_0();
  (*(v4 + 8))(v6, v3);
  return v8 & 1;
}

void *sub_2545FBCE0(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2545FF674())
  {
    for (j = 0; ; ++j)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x259C124A0](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(a3 + 8 * j + 32);
      }

      v8 = v7;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v13 = v7;
      v10 = a1(&v13);
      if (v3)
      {

        return v8;
      }

      if (v10)
      {
        return v8;
      }

      if (v9 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return 0;
}

uint64_t sub_2545FBDF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeID(0) - 8;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v31 - v9;
  result = MEMORY[0x28223BE20](v8);
  v14 = &v31 - v12;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v15 = 0;
  v16 = a1 + 56;
  v17 = 1 << *(a1 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & *(a1 + 56);
  v20 = (v17 + 63) >> 6;
  v21 = a2 + 56;
  v31 = v20;
  v32 = &v31 - v12;
  v33 = v13;
  v34 = a1;
  if (v19)
  {
    while (1)
    {
      v22 = __clz(__rbit64(v19));
      v35 = (v19 - 1) & v19;
LABEL_13:
      v25 = *(v13 + 72);
      sub_2545DE71C(*(a1 + 48) + v25 * (v22 | (v15 << 6)), v14);
      sub_2545E2F94(v14, v10);
      sub_2545FF834();
      sub_2545FEB04();
      sub_2545FD06C(&qword_27F606430, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_2545FF0C4();
      v26 = sub_2545FF864();
      v27 = -1 << *(a2 + 32);
      v28 = v26 & ~v27;
      if (((*(v21 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
        break;
      }

      v29 = ~v27;
      while (1)
      {
        sub_2545DE71C(*(a2 + 48) + v28 * v25, v7);
        v30 = _s17HomeWidgetIntents0A2IDV2eeoiySbAC_ACtFZ_0();
        sub_2545DE780(v7);
        if (v30)
        {
          break;
        }

        v28 = (v28 + 1) & v29;
        if (((*(v21 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      result = sub_2545DE780(v10);
      v13 = v33;
      a1 = v34;
      v20 = v31;
      v14 = v32;
      v19 = v35;
      if (!v35)
      {
        goto LABEL_8;
      }
    }

LABEL_21:
    sub_2545DE780(v10);
    return 0;
  }

LABEL_8:
  v23 = v15;
  while (1)
  {
    v15 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v15 >= v20)
    {
      return 1;
    }

    v24 = *(v16 + 8 * v15);
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v35 = (v24 - 1) & v24;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2545FC0CC(__int128 *a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeID(0);
  v21 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[3];
  v24 = a1[2];
  v25 = v7;
  v26 = *(a1 + 8);
  v9 = *a1;
  v8 = a1[1];
  v20[1] = a1;
  v22 = v9;
  v23 = v8;
  sub_2545FF864();
  v10 = 1 << *(a2 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a2 + 56);
  v13 = (v10 + 63) >> 6;
  result = sub_2545FE8E4();
  v15 = 0;
  for (i = 0; v12; v15 ^= v19)
  {
    v17 = i;
LABEL_9:
    v18 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    sub_2545DE71C(*(a2 + 48) + *(v21 + 72) * (v18 | (v17 << 6)), v6);
    sub_2545FF834();
    sub_2545FEB04();
    sub_2545FD06C(&qword_27F606430, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    sub_2545FF0C4();
    v19 = sub_2545FF864();
    result = sub_2545DE780(v6);
  }

  while (1)
  {
    v17 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v17 >= v13)
    {
      sub_2545FEA14();
      return MEMORY[0x259C12730](v15);
    }

    v12 = *(a2 + 56 + 8 * v17);
    ++i;
    if (v12)
    {
      i = v17;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

id sub_2545FC2E0()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_2545FF164();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    v2 = [objc_opt_self() standardUserDefaults];
  }

  v3 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v4 = sub_2545FF164();
  v5 = [v3 initWithSuiteName_];

  if (!v5)
  {
    [objc_opt_self() standardUserDefaults];
  }

  return v2;
}

uint64_t sub_2545FC3F0(void *a1)
{
  v2 = sub_2545FF164();
  v3 = [a1 objectForKey_];

  if (v3)
  {
    sub_2545FF524();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    sub_2545FA224(0, &qword_27F606CF0, 0x277CCABB0);
    if (swift_dynamicCast())
    {
      v4 = [v6 BOOLValue];

      return v4;
    }
  }

  else
  {
    sub_2545B612C(v9, &qword_27F606CC0, &qword_254602E70);
  }

  return 1;
}

uint64_t sub_2545FC50C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F6064D0, &unk_2546002B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2545FC59C()
{
  result = qword_27F606850;
  if (!qword_27F606850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F606848, &qword_254600F20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606850);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_17HomeWidgetIntents0A5ScopeO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2545FC618(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2545FC66C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_2545FC6C8(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

unint64_t sub_2545FC6FC()
{
  result = qword_27F606D00;
  if (!qword_27F606D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606D00);
  }

  return result;
}

uint64_t sub_2545FC750(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E6572727563 && a2 == 0xE700000000000000;
  if (v4 || (sub_2545FF7B4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7105633 && a2 == 0xE300000000000000 || (sub_2545FF7B4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 2037149295 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_2545FF7B4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_2545FC868(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606D08, &qword_254603128);
  v3 = *(v2 - 8);
  v35 = v2;
  v36 = v3;
  MEMORY[0x28223BE20](v2);
  v38 = &v32 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606D10, &qword_254603130);
  v33 = *(v5 - 8);
  v34 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606D18, &qword_254603138);
  v37 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606D20, &qword_254603140);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v32 - v13;
  v15 = a1[3];
  v40 = a1;
  v16 = __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_2545FCE80();
  v17 = v39;
  sub_2545FF874();
  if (!v17)
  {
    v32 = v8;
    v18 = v37;
    v19 = v38;
    v39 = v12;
    v16 = v14;
    v20 = sub_2545FF724();
    v21 = *(v20 + 16);
    if (!v21 || ((v22 = *(v20 + 32), v21 == 1) ? (v23 = v22 == 3) : (v23 = 1), v23))
    {
      v24 = sub_2545FF5D4();
      swift_allocError();
      v26 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606D30, &qword_254603148);
      *v26 = &type metadata for HomeScope;
      sub_2545FF6D4();
      sub_2545FF5C4();
      (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84160], v24);
      swift_willThrow();
      (*(v39 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else if (*(v20 + 32))
    {
      v28 = v39;
      if (v22 == 1)
      {
        v43 = 1;
        sub_2545FCF28();
        sub_2545FF6C4();
        (*(v33 + 8))(v7, v34);
        (*(v28 + 8))(v14, v11);
        swift_unknownObjectRelease();
        v16 = 1;
      }

      else
      {
        v44 = 2;
        sub_2545FCED4();
        sub_2545FF6C4();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606D40, &qword_254603150);
        sub_2545FCFD0(&qword_27F606D48, &qword_27F606BE0, &protocol conformance descriptor for HomeID, MEMORY[0x277D83B70]);
        v31 = v35;
        sub_2545FF714();
        (*(v36 + 8))(v19, v31);
        (*(v28 + 8))(v14, v11);
        swift_unknownObjectRelease();
        v16 = v41;
      }
    }

    else
    {
      v42 = 0;
      sub_2545FCF7C();
      v29 = v10;
      sub_2545FF6C4();
      v30 = v39;
      (*(v18 + 8))(v29, v32);
      (*(v30 + 8))(v14, v11);
      swift_unknownObjectRelease();
      v16 = 0;
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v40);
  return v16;
}

unint64_t sub_2545FCE80()
{
  result = qword_27F606D28;
  if (!qword_27F606D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606D28);
  }

  return result;
}

unint64_t sub_2545FCED4()
{
  result = qword_27F606D38;
  if (!qword_27F606D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606D38);
  }

  return result;
}

unint64_t sub_2545FCF28()
{
  result = qword_27F606D50;
  if (!qword_27F606D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606D50);
  }

  return result;
}

unint64_t sub_2545FCF7C()
{
  result = qword_27F606D58;
  if (!qword_27F606D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606D58);
  }

  return result;
}

uint64_t sub_2545FCFD0(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F606D40, &qword_254603150);
    sub_2545FD06C(a2, type metadata accessor for HomeID, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2545FD06C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2545FD0F8()
{
  result = qword_27F606D88;
  if (!qword_27F606D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606D88);
  }

  return result;
}

unint64_t sub_2545FD150()
{
  result = qword_27F606D90;
  if (!qword_27F606D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606D90);
  }

  return result;
}

unint64_t sub_2545FD1A8()
{
  result = qword_27F606D98;
  if (!qword_27F606D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606D98);
  }

  return result;
}

unint64_t sub_2545FD200()
{
  result = qword_27F606DA0;
  if (!qword_27F606DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606DA0);
  }

  return result;
}

unint64_t sub_2545FD258()
{
  result = qword_27F606DA8;
  if (!qword_27F606DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606DA8);
  }

  return result;
}

unint64_t sub_2545FD2B0()
{
  result = qword_27F606DB0;
  if (!qword_27F606DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606DB0);
  }

  return result;
}

unint64_t sub_2545FD308()
{
  result = qword_27F606DB8;
  if (!qword_27F606DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606DB8);
  }

  return result;
}

unint64_t sub_2545FD360()
{
  result = qword_27F606DC0;
  if (!qword_27F606DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606DC0);
  }

  return result;
}

unint64_t sub_2545FD3B8()
{
  result = qword_27F606DC8;
  if (!qword_27F606DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606DC8);
  }

  return result;
}

unint64_t sub_2545FD410()
{
  result = qword_27F606DD0;
  if (!qword_27F606DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606DD0);
  }

  return result;
}

uint64_t sub_2545FD46C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606C28, &qword_2546027D0);
  swift_getKeyPath();
  result = sub_2545FE984();
  qword_27F606DD8 = result;
  return result;
}

uint64_t static HomeSingleTileEntity.defaultQuery.getter@<X0>(void *a1@<X8>)
{
  if (qword_27F6063F0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_27F606DD8;

  return sub_2545FE8F4();
}

uint64_t sub_2545FD528()
{
  v0 = sub_2545FE9A4();
  __swift_allocate_value_buffer(v0, qword_27F606DE0);
  __swift_project_value_buffer(v0, qword_27F606DE0);
  return sub_2545FE994();
}

uint64_t static HomeSingleTileEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F6063F8 != -1)
  {
    swift_once();
  }

  v2 = sub_2545FE9A4();
  v3 = __swift_project_value_buffer(v2, qword_27F606DE0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t type metadata accessor for HomeSingleTileEntity(uint64_t a1)
{
  result = qword_281532F48;
  if (!qword_281532F48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t HomeSingleTileEntity.displayRepresentation.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606420, &unk_2545FFE70);
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F606428, "$#");
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - v2;
  v4 = sub_2545FEA64();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = sub_2545FF134();
  MEMORY[0x28223BE20](v6 - 8);
  sub_2545FF124();
  sub_2545FF114();
  type metadata accessor for HomeSingleTileEntity(0);
  type metadata accessor for TileElementInfo(0);
  sub_2545FF104();
  sub_2545FF114();
  sub_2545FEA54();
  (*(v5 + 56))(v3, 1, 1, v4);
  sub_2545FE8E4();
  sub_2545FE874();
  return sub_2545FE894();
}

uint64_t static HomeSingleTileEntity.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_s17HomeWidgetIntents0A2IDV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ElementID(0);
  if (qword_254603868[*(a1 + *(v4 + 20))] != qword_254603868[*(a2 + *(v4 + 20))])
  {
    return 0;
  }

  v5 = type metadata accessor for HomeSingleTileEntity(0);
  if ((_s17HomeWidgetIntents0A2IDV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v5 + 24);

  return _s17HomeWidgetIntents15TileElementInfoV2eeoiySbAC_ACtFZ_0(a1 + v6, a2 + v6);
}

uint64_t HomeSingleTileEntity.hash(into:)(uint64_t a1)
{
  sub_2545FEB04();
  sub_2545FE51C(&qword_27F606430, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2545FF0C4();
  v3 = type metadata accessor for ElementID(0);
  MEMORY[0x259C12730](qword_254603868[*(v1 + *(v3 + 20))]);
  type metadata accessor for HomeSingleTileEntity(0);
  sub_2545FF0C4();
  return TileElementInfo.hash(into:)(a1);
}

uint64_t HomeSingleTileEntity.hashValue.getter()
{
  sub_2545FF834();
  sub_2545FEB04();
  sub_2545FE51C(&qword_27F606430, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2545FF0C4();
  v1 = type metadata accessor for ElementID(0);
  MEMORY[0x259C12730](qword_254603868[*(v0 + *(v1 + 20))]);
  type metadata accessor for HomeSingleTileEntity(0);
  sub_2545FF0C4();
  TileElementInfo.hash(into:)(v3);
  return sub_2545FF864();
}

uint64_t sub_2545FDC30@<X0>(void *a1@<X8>)
{
  if (qword_27F6063F0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_27F606DD8;

  return sub_2545FE8F4();
}

uint64_t sub_2545FDCA0()
{
  sub_2545FF834();
  sub_2545FEB04();
  sub_2545FE51C(&qword_27F606430, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2545FF0C4();
  v1 = type metadata accessor for ElementID(0);
  MEMORY[0x259C12730](qword_254603868[*(v0 + *(v1 + 20))]);
  sub_2545FF0C4();
  TileElementInfo.hash(into:)(v3);
  return sub_2545FF864();
}

uint64_t sub_2545FDD90(uint64_t a1)
{
  sub_2545FEB04();
  sub_2545FE51C(&qword_27F606430, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2545FF0C4();
  v3 = type metadata accessor for ElementID(0);
  MEMORY[0x259C12730](qword_254603868[*(v1 + *(v3 + 20))]);
  sub_2545FF0C4();
  return TileElementInfo.hash(into:)(a1);
}

uint64_t sub_2545FDE68(uint64_t a1)
{
  sub_2545FF834();
  sub_2545FEB04();
  sub_2545FE51C(&qword_27F606430, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_2545FF0C4();
  v2 = type metadata accessor for ElementID(0);
  MEMORY[0x259C12730](qword_254603868[*(v1 + *(v2 + 20))]);
  sub_2545FF0C4();
  TileElementInfo.hash(into:)(v4);
  return sub_2545FF864();
}

uint64_t sub_2545FDF54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((_s17HomeWidgetIntents0A2IDV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v6 = type metadata accessor for ElementID(0);
  if (qword_254603868[*(a1 + *(v6 + 20))] != qword_254603868[*(a2 + *(v6 + 20))] || (_s17HomeWidgetIntents0A2IDV2eeoiySbAC_ACtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 24);

  return _s17HomeWidgetIntents15TileElementInfoV2eeoiySbAC_ACtFZ_0(a1 + v7, a2 + v7);
}

uint64_t sub_2545FDFFC@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F6063F8 != -1)
  {
    swift_once();
  }

  v2 = sub_2545FE9A4();
  v3 = __swift_project_value_buffer(v2, qword_27F606DE0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2545FE0A4(uint64_t a1)
{
  v2 = sub_2545FE51C(&qword_27F606900, type metadata accessor for HomeSingleTileEntity, &protocol conformance descriptor for HomeSingleTileEntity);

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_2545FE124(uint64_t a1)
{
  v2 = sub_2545FE51C(&qword_281532F68, type metadata accessor for HomeSingleTileEntity, &protocol conformance descriptor for HomeSingleTileEntity);

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t static HomeSingleTileEntity.create(id:homeID:item:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_2545AEB50(a1, a4, type metadata accessor for ElementID);
  v7 = type metadata accessor for HomeSingleTileEntity(0);
  sub_2545AEB50(a2, a4 + *(v7 + 20), type metadata accessor for HomeID);
  return sub_2545AEB50(a3, a4 + *(v7 + 24), type metadata accessor for TileElementInfo);
}

unint64_t sub_2545FE418()
{
  result = qword_27F606E00;
  if (!qword_27F606E00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F606E08, &qword_2546036C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F606E00);
  }

  return result;
}

uint64_t sub_2545FE4C4(uint64_t a1)
{
  result = sub_2545FE51C(&qword_27F606900, type metadata accessor for HomeSingleTileEntity, &protocol conformance descriptor for HomeSingleTileEntity);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2545FE51C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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