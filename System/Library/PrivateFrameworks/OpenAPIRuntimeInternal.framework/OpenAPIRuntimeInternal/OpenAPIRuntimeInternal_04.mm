uint64_t sub_25DD40220(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v89 = sub_25DD969E4();
  v8 = *(v89 - 8);
  v9 = MEMORY[0x28223BE20](v89);
  v88 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v87 = &v76 - v11;
  v93 = sub_25DD96A34();
  v12 = *(v93 - 8);
  v13 = MEMORY[0x28223BE20](v93);
  v95 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13);
  v94 = &v76 - v16;
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_63;
  }

  v19 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_64;
  }

  v20 = (a2 - a1) / v18;
  v102 = a1;
  v101 = a4;
  if (v20 >= v19 / v18)
  {
    v22 = v19 / v18 * v18;
    if (a4 < a2 || a2 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v48 = a4 + v22;
    if (v22 < 1)
    {
      v51 = a4 + v22;
    }

    else
    {
      v49 = -v18;
      v81 = (v8 + 8);
      v82 = (v12 + 16);
      v79 = (v12 + 8);
      v50 = v48;
      v51 = v48;
      v91 = a1;
      v80 = a4;
      v83 = -v18;
      while (2)
      {
        while (1)
        {
          v77 = v51;
          v52 = a2 + v49;
          v92 = a2 + v49;
          v84 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v102 = a2;
              v100 = v77;
              goto LABEL_61;
            }

            v78 = v51;
            v90 = a3 + v49;
            v55 = v50 + v49;
            v56 = *v82;
            v57 = v93;
            v86 = a3;
            v56();
            v58 = (v56)(v95, v52, v57);
            v59 = v87;
            v60 = MEMORY[0x25F8A3030](v58);
            v61 = MEMORY[0x25F8A2FB0](v60);
            v63 = v62;
            v85 = v62;
            v64 = *v81;
            v65 = v59;
            v66 = v89;
            v67 = (*v81)(v65, v89);
            v98 = v61;
            v99 = v63;
            v68 = v88;
            v69 = MEMORY[0x25F8A3030](v67);
            v70 = MEMORY[0x25F8A2FB0](v69);
            v72 = v71;
            v64(v68, v66);
            v96 = v70;
            v97 = v72;
            sub_25DD07E24();
            v73 = sub_25DD96F84();

            v74 = *v79;
            (*v79)(v95, v57);
            v74(v94, v57);
            if (v73 == -1)
            {
              break;
            }

            v51 = v55;
            a3 = v90;
            if (v86 < v50 || v90 >= v50)
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v91;
              v52 = v92;
              v53 = v80;
            }

            else
            {
              a1 = v91;
              v52 = v92;
              v53 = v80;
              if (v86 != v50)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v50 = v55;
            v54 = v55 > v53;
            v49 = v83;
            a2 = v84;
            if (!v54)
            {
              goto LABEL_59;
            }
          }

          a3 = v90;
          if (v86 < v84 || v90 >= v84)
          {
            break;
          }

          a1 = v91;
          a2 = v92;
          v75 = v80;
          v51 = v78;
          v49 = v83;
          if (v86 != v84)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v50 <= v75)
          {
            goto LABEL_59;
          }
        }

        a2 = v92;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v91;
        v51 = v78;
        v49 = v83;
        if (v50 > v80)
        {
          continue;
        }

        break;
      }
    }

LABEL_59:
    v102 = a2;
    v100 = v51;
  }

  else
  {
    v21 = v20 * v18;
    if (a4 < a1 || a1 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v86 = a4 + v21;
    v100 = a4 + v21;
    v90 = a3;
    if (v21 >= 1 && a2 < a3)
    {
      v24 = *(v12 + 16);
      v82 = (v8 + 8);
      v83 = v24;
      v84 = v18;
      v85 = v12 + 16;
      v81 = (v12 + 8);
      v25 = (v8 + 8);
      do
      {
        v91 = a1;
        v92 = a2;
        v26 = v93;
        v27 = v83;
        (v83)();
        v28 = v27(v95, a4, v26);
        v29 = v87;
        v30 = MEMORY[0x25F8A3030](v28);
        v31 = MEMORY[0x25F8A2FB0](v30);
        v33 = v32;
        v34 = *v25;
        v35 = v89;
        v36 = (*v25)(v29, v89);
        v98 = v31;
        v99 = v33;
        v37 = v88;
        v38 = MEMORY[0x25F8A3030](v36);
        v39 = MEMORY[0x25F8A2FB0](v38);
        v41 = v40;
        v34(v37, v35);
        v96 = v39;
        v97 = v41;
        sub_25DD07E24();
        v42 = sub_25DD96F84();

        v43 = *v81;
        (*v81)(v95, v26);
        v43(v94, v26);
        if (v42 == -1)
        {
          v45 = v84;
          v44 = v91;
          v47 = v92 + v84;
          if (v91 < v92 || v91 >= v47)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v91 != v92)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v47;
        }

        else
        {
          v44 = v91;
          a2 = v92;
          v45 = v84;
          v46 = a4 + v84;
          if (v91 < a4 || v91 >= v46)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v91 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v101 = v46;
          a4 += v45;
        }

        a1 = v44 + v45;
        v102 = a1;
      }

      while (a4 < v86 && a2 < v90);
    }
  }

LABEL_61:
  sub_25DD409D0(&v102, &v101, &v100);
  return 1;
}

uint64_t sub_25DD409D0(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_25DD96A34();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void *sub_25DD40AB4(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2548, &unk_25DD9D820);
  v10 = *(sub_25DD96A34() - 8);
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
  v15 = *(sub_25DD96A34() - 8);
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

uint64_t sub_25DD40C8C(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x25F8A3F90](v8);
    }

    v5 = *(v2 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      do
      {
LABEL_9:
        v5 &= v5 - 1;

        sub_25DD96B94();

        sub_25DD96AC4();

        result = sub_25DD979A4();
        v8 ^= result;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_25DD40E1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2550, &unk_25DD9C4C0);
    v3 = sub_25DD972C4();

    for (i = (a1 + 72); ; i += 6)
    {
      v5 = *(i - 5);
      v6 = *(i - 4);
      v7 = *(i - 3);
      v8 = *(i - 2);
      v10 = *(i - 1);
      v9 = *i;

      result = sub_25DD0C2DC(v5, v6, sub_25DCFFA14);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 16 * result);
      *v13 = v5;
      v13[1] = v6;
      v14 = (v3[7] + 32 * result);
      *v14 = v7;
      v14[1] = v8;
      v14[2] = v10;
      v14[3] = v9;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
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

unint64_t sub_25DD40F48()
{
  result = qword_27FCC2538;
  if (!qword_27FCC2538)
  {
    sub_25DD96814();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC2538);
  }

  return result;
}

unint64_t sub_25DD40FA4()
{
  result = qword_27FCC2540;
  if (!qword_27FCC2540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC2540);
  }

  return result;
}

uint64_t ErrorHandlingMiddleware.intercept(_:body:metadata:operationID:next:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, int *a7)
{
  v12 = v7;
  v12[15] = a1;
  sub_25DD96814();
  v12[16] = swift_task_alloc();
  sub_25DD96954();
  v12[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2558, &unk_25DD9C4D8);
  v12[18] = swift_task_alloc();
  v14 = type metadata accessor for ServerError(0);
  v12[19] = v14;
  v12[20] = *(v14 - 8);
  v12[21] = swift_task_alloc();
  v12[12] = *a4;
  v17 = a7 + *a7;
  v15 = swift_task_alloc();
  v12[22] = v15;
  *v15 = v12;
  v15[1] = sub_25DD41230;

  return (v17)(a1, a2, a3, v12 + 12);
}

uint64_t sub_25DD41230(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 184) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_25DD413A4, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_25DD413A4()
{
  v1 = *(v0 + 184);
  *(v0 + 104) = v1;
  v2 = *(v0 + 160);
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC21D8, &unk_25DD9BBB0);
  v4 = swift_dynamicCast();
  v5 = *(v2 + 56);
  if (v4)
  {
    v6 = *(v0 + 168);
    v8 = *(v0 + 144);
    v7 = *(v0 + 152);
    v5(v8, 0, 1, v7);
    sub_25DD41698(v8, v6);
    v9 = *(v6 + *(v7 + 44));
    *(v0 + 112) = v9;
    v10 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2560, &qword_25DD9C4E8);
    if (swift_dynamicCast())
    {
      v11 = *(v0 + 184);
      v12 = *(v0 + 168);
      sub_25DCFE2FC((v0 + 56), v0 + 16);
      v13 = *(v0 + 40);
      v14 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v13);
      (*(v14 + 8))(v13, v14);
      v15 = *(v0 + 40);
      v16 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v15);
      (*(v16 + 16))(v15, v16);
      sub_25DD96964();
      v17 = *(v0 + 40);
      v18 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v17);
      v19 = (*(v18 + 24))(v17, v18);
      MEMORY[0x25F8A43F0](v11);
      sub_25DD416FC(v12);
      __swift_destroy_boxed_opaque_existential_1((v0 + 16));
      goto LABEL_7;
    }

    sub_25DD416FC(*(v0 + 168));
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0;
    v21 = &unk_27FCC2568;
    v22 = &unk_25DD9C4F0;
    v23 = v0 + 56;
  }

  else
  {
    v20 = *(v0 + 144);
    v5(v20, 1, 1, *(v0 + 152));
    v21 = &qword_27FCC2558;
    v22 = &unk_25DD9C4D8;
    v23 = v20;
  }

  v24 = sub_25DD114CC(v23, v21, v22);
  v25 = *(v0 + 184);
  MEMORY[0x25F8A2F10](v24);
  sub_25DD967E4();
  sub_25DD96964();
  MEMORY[0x25F8A43F0](v25);
  v19 = 0;
LABEL_7:

  v26 = *(v0 + 8);

  return v26(v19);
}

uint64_t sub_25DD41698(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ServerError(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25DD416FC(uint64_t a1)
{
  v2 = type metadata accessor for ServerError(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25DD41758(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, int *a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_25DD4182C;

  return ErrorHandlingMiddleware.intercept(_:body:metadata:operationID:next:)(a1, a2, a3, a4, v13, v14, a7);
}

uint64_t sub_25DD4182C(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

BOOL static HTTPBody.Length.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

BOOL sub_25DD419EC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

void HTTPBody.length.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
}

id sub_25DD41A3C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v1 = sub_25DD96B14();
  [v0 setName_];

  return v0;
}

uint64_t sub_25DD41AB0()
{
  v1 = *(v0 + 56);
  [v1 lock];
  v2 = *(v0 + 64);
  [v1 unlock];
  return v2;
}

id sub_25DD41AF8()
{
  v1 = *(v0 + 56);
  [v1 lock];
  v4 = *(v0 + 16);
  v3 = 0;
  if (static IterationBehavior.== infix(_:_:)(&v4, &v3) && *(v0 + 64) == 1)
  {
    sub_25DD4769C();
    swift_allocError();
    swift_willThrow();
  }

  *(v0 + 64) = 1;
  return [v1 unlock];
}

uint64_t sub_25DD41BA0(uint64_t a1, uint64_t a2, uint64_t *a3, char *a4)
{
  v8 = swift_allocObject();
  sub_25DD41C08(a1, a2, a3, a4);
  return v8;
}

uint64_t sub_25DD41C08(uint64_t a1, uint64_t a2, uint64_t *a3, char *a4)
{
  v7 = *a3;
  v8 = *(a3 + 8);
  v9 = *a4;
  v10 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v11 = sub_25DD96B14();
  [v10 setName_];

  *(v4 + 48) = a2;
  *(v4 + 56) = v10;
  *(v4 + 64) = 0;
  *(v4 + 40) = a1;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;
  *(v4 + 16) = v9;
  return v4;
}

uint64_t sub_25DD41CC0(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v19 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC25C8, &qword_25DD9C930);
  sub_25DD187C0(&qword_27FCC25D0, &qword_27FCC25C8, &qword_25DD9C930, MEMORY[0x277D83970]);
  sub_25DD3D184(&v19, v7, &v18);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2100, "4D");
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC25D8, &qword_25DD9C938);
  v10 = sub_25DD187C0(&qword_27FCC25E0, &qword_27FCC25D8, &qword_25DD9C938, &unk_25DD9C068);
  v11 = sub_25DD3CC94(&v18, v8, v9, v10);
  v13 = v12;
  type metadata accessor for HTTPBody();
  v14 = swift_allocObject();
  v15 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v16 = sub_25DD96B14();
  [v15 setName_];

  *(v14 + 48) = v13;
  *(v14 + 56) = v15;
  *(v14 + 64) = 0;
  *(v14 + 40) = v11;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3 & 1;
  *(v14 + 16) = a4 & 1;
  return v14;
}

uint64_t sub_25DD41E70(uint64_t a1, uint64_t *a2, unsigned __int8 *a3, uint64_t a4)
{
  v8 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for WrappedSyncSequence(0, v11, v12, v11);
  MEMORY[0x28223BE20](v13);
  v15 = &v27 - v14;
  v29 = *a2;
  v16 = *(a2 + 8);
  v27 = *a3;
  v28 = v16;
  (*(v8 + 16))(v10, a1, a4);
  sub_25DD3D184(v10, a4, v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2100, "4D");
  WitnessTable = swift_getWitnessTable();
  v19 = sub_25DD3CC94(v15, v17, v13, WitnessTable);
  v21 = v20;
  v22 = swift_allocObject();
  v23 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v24 = sub_25DD96B14();
  [v23 setName_];

  (*(v8 + 8))(a1, a4);
  *(v22 + 48) = v21;
  *(v22 + 56) = v23;
  *(v22 + 64) = 0;
  *(v22 + 40) = v19;
  *(v22 + 24) = v29;
  v25 = v27;
  *(v22 + 32) = v28;
  *(v22 + 16) = v25;
  return v22;
}

uint64_t HTTPBody.deinit()
{

  return v0;
}

uint64_t HTTPBody.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t HTTPBody.hashValue.getter()
{
  sub_25DD97964();
  MEMORY[0x25F8A3F90](v0);
  return sub_25DD979A4();
}

uint64_t sub_25DD421AC()
{
  v1 = *v0;
  sub_25DD97964();
  MEMORY[0x25F8A3F90](v1);
  return sub_25DD979A4();
}

uint64_t sub_25DD42220(uint64_t a1)
{
  v2 = *v1;
  sub_25DD97964();
  MEMORY[0x25F8A3F90](v2);
  return sub_25DD979A4();
}

uint64_t HTTPBody.__allocating_init()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2100, "4D");
  nullsub_1();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2570, &qword_25DD9C588);
  v2 = sub_25DD187C0(&qword_27FCC2578, &qword_27FCC2570, &qword_25DD9C588, &unk_25DD9C108);
  v3 = sub_25DD3CC94(v2, v0, v1, v2);
  v5 = v4;
  v6 = swift_allocObject();
  v7 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v8 = sub_25DD96B14();
  [v7 setName_];

  *(v6 + 48) = v5;
  *(v6 + 56) = v7;
  *(v6 + 64) = 0;
  *(v6 + 40) = v3;
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 16) = 1;
  return v6;
}

uint64_t HTTPBody.__allocating_init(_:length:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a5;
  v10 = *(a5 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2520, &unk_25DD9BBD0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_25DD98100;
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;
  *(v11 + 48) = a3;
  *(v11 + 56) = a4;

  return sub_25DD41CC0(v11, v9, v10, 1);
}

uint64_t HTTPBody.__allocating_init(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2520, &unk_25DD9BBD0);
  result = swift_allocObject();
  *(result + 16) = xmmword_25DD98100;
  *(result + 32) = a1;
  *(result + 40) = a2;
  *(result + 48) = a3;
  *(result + 56) = a4;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
  }

  else
  {

    return sub_25DD41CC0(result, (a4 >> 1) - a3, 0, 1);
  }

  return result;
}

uint64_t sub_25DD424B8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6, char a7)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2520, &unk_25DD9BBD0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_25DD98100;
  if ((a4 & 1) == 0)
  {
    goto LABEL_2;
  }

  sub_25DD97744();
  swift_unknownObjectRetain_n();
  v17 = swift_dynamicCastClass();
  if (!v17)
  {
    swift_unknownObjectRelease();
    v17 = MEMORY[0x277D84F90];
  }

  v18 = *(v17 + 16);

  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v18 != (a4 >> 1) - a3)
  {
LABEL_14:
    swift_unknownObjectRelease_n();
LABEL_2:
    sub_25DD30F58(a1, a2, a3, a4);
    v16 = v15;
    goto LABEL_9;
  }

  v16 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (v16)
  {
    goto LABEL_10;
  }

  v16 = MEMORY[0x277D84F90];
LABEL_9:
  swift_unknownObjectRelease();
LABEL_10:
  v19 = (2 * *(v16 + 16)) | 1;
  *(v14 + 32) = v16;
  *(v14 + 40) = v16 + 32;
  *(v14 + 48) = 0;
  *(v14 + 56) = v19;

  return sub_25DD41CC0(v14, a5, a6 & 1, a7 & 1);
}

uint64_t HTTPBody.__allocating_init<A>(_:length:iterationBehavior:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v10;
  v12 = *(v10 + 8);
  v14 = *v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2520, &unk_25DD9BBD0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_25DD98100;
  (*(v7 + 16))(v9, a1, a4);
  *(v15 + 32) = sub_25DD97074();
  *(v15 + 40) = v16;
  *(v15 + 48) = v17;
  *(v15 + 56) = v18;
  v19 = sub_25DD41CC0(v15, v11, v12, v14);
  (*(v7 + 8))(a1, a4);
  return v19;
}

{
  v7 = sub_25DD46604(a1, a2, a3, a4, a5);
  (*(*(a4 - 8) + 8))(a1, a4);
  return v7;
}

uint64_t HTTPBody.__allocating_init<A>(_:length:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_25DD46514(a1, a2, a3, a4);
  (*(*(a3 - 8) + 8))(a1, a3);
  return v6;
}

{
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = sub_25DD46F50(a1, a3, a4);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2520, &unk_25DD9BBD0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_25DD98100;
  *(v15 + 32) = v8;
  *(v15 + 40) = v10;
  *(v15 + 48) = v12;
  *(v15 + 56) = v14;
  v16 = sub_25DD41CC0(v15, v6, v7, 1);
  (*(*(a3 - 8) + 8))(a1, a3);
  return v16;
}

uint64_t HTTPBody.__allocating_init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = sub_25DD96E94();
  v9 = 0;
  v6 = sub_25DD46514(a1, &v8, a2, a3);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v6;
}

{
  v5 = sub_25DD46F50(a1, a2, a3);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2520, &unk_25DD9BBD0);
  result = swift_allocObject();
  *(result + 16) = xmmword_25DD98100;
  *(result + 32) = v5;
  *(result + 40) = v7;
  *(result + 48) = v9;
  *(result + 56) = v11;
  if (__OFSUB__(v11 >> 1, v9))
  {
    __break(1u);
  }

  else
  {
    v13 = sub_25DD41CC0(result, (v11 >> 1) - v9, 0, 1);
    (*(*(a2 - 8) + 8))(a1, a2);
    return v13;
  }

  return result;
}

uint64_t HTTPBody.__allocating_init(_:length:)(uint64_t a1, uint64_t *a2)
{
  return sub_25DD42904(a1, a2, &qword_27FCC2580, &qword_25DD9DF40, &qword_27FCC2588, MEMORY[0x277D858E0]);
}

{
  return sub_25DD42904(a1, a2, &qword_27FCC2590, &qword_25DD9C590, &qword_27FCC2598, MEMORY[0x277D857C0]);
}

uint64_t sub_25DD42904(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v25[-v14];
  v27 = *a2;
  v26 = *(a2 + 8);
  (*(v13 + 16))(&v25[-v14], a1, v12);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2100, "4D");
  v17 = sub_25DD187C0(a5, a3, a4, a6);
  v18 = sub_25DD3CC94(v15, v16, v12, v17);
  v20 = v19;
  v21 = swift_allocObject();
  v22 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v23 = sub_25DD96B14();
  [v22 setName_];

  (*(v13 + 8))(a1, v12);
  *(v21 + 48) = v20;
  *(v21 + 56) = v22;
  *(v21 + 64) = 0;
  *(v21 + 40) = v18;
  *(v21 + 24) = v27;
  *(v21 + 32) = v26;
  *(v21 + 16) = 0;
  return v21;
}

uint64_t HTTPBody.__allocating_init<A>(_:length:iterationBehavior:)(uint64_t a1, uint64_t *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a6;
  v24 = a3;
  v10 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = &v21[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCC2100, "4D");
  v13 = sub_25DD97234();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v21[-v15];
  v23 = *a2;
  v22 = *(a2 + 8);
  LODWORD(v24) = *v24;
  (*(v10 + 16))(v12, a1, a4);
  v17 = swift_allocObject();
  v17[2] = a4;
  v17[3] = a5;
  v17[4] = v25;
  sub_25DD96E04();

  v27 = v23;
  v28 = v22;
  v26 = v24;
  WitnessTable = swift_getWitnessTable();
  v19 = sub_25DD46604(v16, &v27, &v26, v13, WitnessTable);
  (*(v14 + 8))(v16, v13);
  (*(v10 + 8))(a1, a4);
  return v19;
}

{
  v30 = a6;
  v11 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCC2100, "4D");
  v15 = sub_25DD97234();
  MEMORY[0x28223BE20](v15);
  v17 = &v30 - v16;
  v33 = *a2;
  v18 = *(a2 + 8);
  v31 = *a3;
  v32 = v18;
  v19 = a1;
  (*(v11 + 16))(v13, a1, a4);
  v20 = swift_allocObject();
  v20[2] = a4;
  v20[3] = a5;
  v20[4] = v30;
  sub_25DD96E04();

  WitnessTable = swift_getWitnessTable();
  v22 = sub_25DD3CC94(v17, v14, v15, WitnessTable);
  v24 = v23;
  v25 = swift_allocObject();
  v26 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v27 = sub_25DD96B14();
  [v26 setName_];

  (*(v11 + 8))(v19, a4);
  *(v25 + 48) = v24;
  *(v25 + 56) = v26;
  *(v25 + 64) = 0;
  *(v25 + 40) = v22;
  *(v25 + 24) = v33;
  v28 = v31;
  *(v25 + 32) = v32;
  *(v25 + 16) = v28;
  return v25;
}

uint64_t sub_25DD42DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a2;
  v5[4] = a5;
  v5[2] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[5] = AssociatedTypeWitness;
  v5[6] = *(AssociatedTypeWitness - 8);
  v5[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25DD42EBC, 0, 0);
}

uint64_t sub_25DD42EBC()
{
  v1 = v0[2];
  (*(v0[6] + 16))(v0[7], v0[3], v0[5]);
  *v1 = sub_25DD97074();
  v1[1] = v2;
  v1[2] = v3;
  v1[3] = v4;

  v5 = v0[1];

  return v5();
}

uint64_t HTTPBody.makeAsyncIterator()@<X0>(void *a1@<X8>)
{
  sub_25DD41AF8();
  v3 = *(v1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2100, "4D");
  v4 = sub_25DD3CF4C(v3);
  v6 = v5;
  result = swift_allocObject();
  *(result + 16) = v4;
  *(result + 24) = v6;
  *a1 = &unk_25DD9C5C0;
  a1[1] = result;
  return result;
}

void *sub_25DD4302C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = swift_allocBox();
  (*(*(a2 - 8) + 32))(v9, a1, a2);
  result = swift_allocObject();
  result[2] = a2;
  result[3] = a3;
  result[4] = v8;
  *a4 = &unk_25DD9C5D0;
  a4[1] = result;
  return result;
}

uint64_t sub_25DD430D8@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  sub_25DD41AF8();
  v4 = *(v3 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2100, "4D");
  v5 = sub_25DD3CF4C(v4);
  v7 = v6;

  result = swift_allocObject();
  *(result + 16) = v5;
  *(result + 24) = v7;
  *a1 = &unk_25DD9C908;
  a1[1] = result;
  return result;
}

uint64_t sub_25DD431B0()
{
  sub_25DD97124();
  MEMORY[0x25F8A3200](0xD000000000000047, 0x800000025DDAAC50);
  v0 = sub_25DD97374();
  MEMORY[0x25F8A3200](v0);

  MEMORY[0x25F8A3200](0x2E736574796220, 0xE700000000000000);
  return 0;
}

uint64_t sub_25DD43264()
{
  sub_25DD97124();
  MEMORY[0x25F8A3200](0xD000000000000047, 0x800000025DDAAC50);
  v0 = sub_25DD97374();
  MEMORY[0x25F8A3200](v0);

  MEMORY[0x25F8A3200](0x2E736574796220, 0xE700000000000000);
  return 0;
}

uint64_t sub_25DD4333C(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x2822009F8](sub_25DD4335C, 0, 0);
}

uint64_t sub_25DD4335C()
{
  v1 = *(v0 + 64);
  if ((*(v1 + 32) & 1) != 0 || (v2 = *(v0 + 56), *(v1 + 24) <= v2))
  {
    v6 = MEMORY[0x277D84F90] + 32;
    *(v0 + 16) = MEMORY[0x277D84F90];
    *(v0 + 24) = v6;
    *(v0 + 32) = xmmword_25DD9B570;
    sub_25DD41AF8();
    v7 = *(*(v0 + 64) + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2100, "4D");
    v8 = sub_25DD3CF4C(v7);
    v10 = v9;
    v11 = swift_allocObject();
    *(v11 + 16) = v8;
    *(v11 + 24) = v10;
    *(v0 + 72) = &unk_25DD9C920;
    *(v0 + 80) = v11;
    v12 = swift_task_alloc();
    *(v0 + 88) = v12;
    *v12 = v0;
    v12[1] = sub_25DD4357C;

    return sub_25DD468E8();
  }

  else
  {
    sub_25DD47648();
    swift_allocError();
    *v3 = v2;
    swift_willThrow();
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_25DD4357C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v5;
  v6[12] = a1;
  v6[13] = a2;
  v6[14] = a3;
  v6[15] = a4;
  v6[16] = v4;

  if (v4)
  {
    v7 = sub_25DD438C4;
  }

  else
  {
    v7 = sub_25DD43698;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

void sub_25DD43698()
{
  if (*(v0 + 96))
  {
    v1 = *(v0 + 32);
    v2 = *(v0 + 40) >> 1;
    v3 = __OFSUB__(v2, v1);
    v4 = v2 - v1;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      v5 = *(v0 + 112);
      v6 = *(v0 + 120);
      v7 = (v6 >> 1) - v5;
      if (!__OFSUB__(v6 >> 1, v5))
      {
        v3 = __OFADD__(v4, v7);
        v8 = v4 + v7;
        if (!v3)
        {
          v9 = *(v0 + 56);
          if (v8 <= v9)
          {
            sub_25DD46D14(*(v0 + 96), *(v0 + 104), v5, v6);
            swift_unknownObjectRelease();
            v18 = (*(v0 + 72) + **(v0 + 72));
            v17 = swift_task_alloc();
            *(v0 + 88) = v17;
            *v17 = v0;
            v17[1] = sub_25DD4357C;

            v18();
          }

          else
          {
            sub_25DD47648();
            swift_allocError();
            *v10 = v9;
            swift_willThrow();
            swift_unknownObjectRelease();

            swift_unknownObjectRelease();
            v11 = *(v0 + 8);

            v11();
          }

          return;
        }

LABEL_17:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  v12 = *(v0 + 16);
  v13 = *(v0 + 24);
  v14 = *(v0 + 32);
  v15 = *(v0 + 40);
  v16 = *(v0 + 8);

  v16(v12, v13, v14, v15);
}

uint64_t sub_25DD438C4()
{
  *(v0 + 48) = *(v0 + 128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC21D8, &unk_25DD9BBB0);
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](sub_25DD43958, 0, 0);
}

uint64_t sub_25DD43958()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t ArraySlice<A>.init(collecting:upTo:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_25DD43A64;

  return sub_25DD4333C(a2);
}

uint64_t sub_25DD43A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v5;
  *(*v5 + 32) = v4;

  if (v4)
  {
    v11 = sub_25DD43C18;
  }

  else
  {
    v10[5] = a4;
    v10[6] = a3;
    v10[7] = a2;
    v10[8] = a1;
    v11 = sub_25DD43BAC;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_25DD43BAC()
{

  v1 = v0[1];
  v3 = v0[7];
  v2 = v0[8];
  v5 = v0[5];
  v4 = v0[6];

  return v1(v2, v3, v4, v5);
}

uint64_t sub_25DD43C18()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t Array<A>.init(collecting:upTo:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_25DD43D1C;

  return sub_25DD4333C(a2);
}

uint64_t sub_25DD43D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v5;
  v6[4] = a1;
  v6[5] = a2;
  v6[6] = a3;
  v6[7] = a4;
  v6[8] = v4;

  if (v4)
  {
    v7 = sub_25DD43F8C;
  }

  else
  {
    v7 = sub_25DD43E38;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_25DD43E38()
{
  v1 = v0[7];
  if ((v1 & 1) == 0)
  {
    goto LABEL_2;
  }

  sub_25DD97744();
  swift_unknownObjectRetain_n();
  v4 = swift_dynamicCastClass();
  if (!v4)
  {
    swift_unknownObjectRelease();
    v1 = v0[7];
    v4 = MEMORY[0x277D84F90];
  }

  v5 = v0[6];
  v6 = *(v4 + 16);

  if (__OFSUB__(v1 >> 1, v5))
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v6 != (v1 >> 1) - v5)
  {
LABEL_13:
    swift_unknownObjectRelease_n();
    v1 = v0[7];
LABEL_2:
    sub_25DD30F58(v0[4], v0[5], v0[6], v1);
    v3 = v2;

    goto LABEL_9;
  }

  v3 = swift_dynamicCastClass();
  swift_unknownObjectRelease();

  if (!v3)
  {
    swift_unknownObjectRelease();
    v3 = MEMORY[0x277D84F90];
  }

LABEL_9:
  swift_unknownObjectRelease();
  v7 = v0[1];

  return v7(v3);
}

uint64_t sub_25DD43F8C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25DD440CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_25DD46F50(a1, a2, a3);
  (*(*(a2 - 8) + 8))(a1, a2);
  return v5;
}

uint64_t HTTPBody.__allocating_init<A>(_:length:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v26 = a1;
  v27 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCC21D8, &unk_25DD9BBB0);
  v7 = sub_25DD96E34();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCC2100, "4D");
  swift_getWitnessTable();
  v12 = sub_25DD97234();
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - v13;
  v29 = *a2;
  v28 = *(a2 + 8);
  (*(v8 + 16))(v10, a1, v7);
  v15 = swift_allocObject();
  v16 = v27;
  *(v15 + 16) = a3;
  *(v15 + 24) = v16;
  sub_25DD96E04();

  WitnessTable = swift_getWitnessTable();
  v18 = sub_25DD3CC94(v14, v11, v12, WitnessTable);
  v20 = v19;
  v21 = swift_allocObject();
  v22 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v23 = sub_25DD96B14();
  [v22 setName_];

  (*(v8 + 8))(v26, v7);
  *(v21 + 48) = v20;
  *(v21 + 56) = v22;
  *(v21 + 64) = 0;
  *(v21 + 40) = v18;
  *(v21 + 24) = v29;
  *(v21 + 32) = v28;
  *(v21 + 16) = 0;
  return v21;
}

{
  v26 = a4;
  v27 = a1;
  v7 = sub_25DD96DE4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCC2100, "4D");
  swift_getWitnessTable();
  v12 = sub_25DD97234();
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - v13;
  v29 = *a2;
  v28 = *(a2 + 8);
  (*(v8 + 16))(v10, a1, v7);
  v15 = swift_allocObject();
  v16 = v26;
  *(v15 + 16) = a3;
  *(v15 + 24) = v16;
  sub_25DD96E04();

  WitnessTable = swift_getWitnessTable();
  v18 = sub_25DD3CC94(v14, v11, v12, WitnessTable);
  v20 = v19;
  v21 = swift_allocObject();
  v22 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v23 = sub_25DD96B14();
  [v22 setName_];

  (*(v8 + 8))(v27, v7);
  *(v21 + 48) = v20;
  *(v21 + 56) = v22;
  *(v21 + 64) = 0;
  *(v21 + 40) = v18;
  *(v21 + 24) = v29;
  *(v21 + 32) = v28;
  *(v21 + 16) = 0;
  return v21;
}

uint64_t sub_25DD44504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_25DD47724, 0, 0);
}

uint64_t sub_25DD447E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_25DD4480C, 0, 0);
}

uint64_t sub_25DD4480C()
{
  v1 = v0[2];
  *v1 = sub_25DD46F50(v0[3], v0[4], v0[5]);
  v1[1] = v2;
  v1[2] = v3;
  v1[3] = v4;
  v5 = v0[1];

  return v5();
}

uint64_t sub_25DD44B20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_25DD44B48, 0, 0);
}

uint64_t sub_25DD44B48()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *v3 = sub_25DD46F50(v2, AssociatedTypeWitness, v1);
  v3[1] = v5;
  v3[2] = v6;
  v3[3] = v7;
  v8 = v0[1];

  return v8();
}

uint64_t String.init(collecting:upTo:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = a1;
  v4 = swift_task_alloc();
  *(v2 + 72) = v4;
  *v4 = v2;
  v4[1] = sub_25DD44C84;

  return sub_25DD4333C(a2);
}

uint64_t sub_25DD44C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v5;
  v8[2] = v5;
  v8[3] = a1;
  v8[4] = a2;
  v8[5] = a3;
  v8[6] = a4;
  v8[7] = v4;
  v8[10] = v4;

  if (v4)
  {
    v9 = sub_25DD44E6C;
  }

  else
  {
    v8[11] = a4;
    v8[12] = a3;
    v9 = sub_25DD44DC4;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

void sub_25DD44DC4()
{
  if (__OFSUB__(v0[11] >> 1, v0[12]))
  {
    __break(1u);
  }

  else
  {
    v2 = sub_25DD96B74();
    v4 = v3;

    swift_unknownObjectRelease();
    v5 = v0[1];

    v5(v2, v4);
  }
}

uint64_t sub_25DD44E6C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t HTTPBody.__allocating_init(stringLiteral:)(uint64_t a1, unint64_t a2)
{
  v2 = sub_25DD3957C(a1, a2);

  v3 = v2[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2520, &unk_25DD9BBD0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_25DD98100;
  *(v4 + 32) = v2;
  *(v4 + 40) = v2 + 4;
  *(v4 + 48) = 0;
  *(v4 + 56) = (2 * v3) | 1;

  return sub_25DD41CC0(v4, v3, 0, 1);
}

uint64_t sub_25DD44F6C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_25DD3957C(*a1, a1[1]);

  v4 = v3[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2520, &unk_25DD9BBD0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25DD98100;
  *(v5 + 32) = v3;
  *(v5 + 40) = v3 + 4;
  *(v5 + 48) = 0;
  *(v5 + 56) = (2 * v4) | 1;
  result = sub_25DD41CC0(v5, v4, 0, 1);
  *a2 = result;
  return result;
}

uint64_t sub_25DD45014(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = a1 + 32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2520, &unk_25DD9BBD0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_25DD98100;
  *(v4 + 32) = a1;
  *(v4 + 40) = v3;
  *(v4 + 48) = 0;
  *(v4 + 56) = (2 * v2) | 1;

  return sub_25DD41CC0(v4, v2, 0, 1);
}

uint64_t sub_25DD4509C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = a1 + 32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2520, &unk_25DD9BBD0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_25DD98100;
  *(v6 + 32) = a1;
  *(v6 + 40) = v5;
  *(v6 + 48) = 0;
  *(v6 + 56) = (2 * v4) | 1;
  result = sub_25DD41CC0(v6, v4, 0, 1);
  *a2 = result;
  return result;
}

uint64_t HTTPBody.__allocating_init(_:)(uint64_t a1, unint64_t a2)
{
  sub_25DD21C5C(a1, a2);
  v4 = sub_25DD00CE0(a1, a2);
  v5 = v4[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2520, &unk_25DD9BBD0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_25DD98100;
  *(v6 + 32) = v4;
  *(v6 + 40) = v4 + 4;
  *(v6 + 48) = 0;
  *(v6 + 56) = (2 * v5) | 1;

  v7 = sub_25DD41CC0(v6, v5, 0, 1);
  sub_25DD01088(a1, a2);

  return v7;
}

uint64_t Data.init(collecting:upTo:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_25DD45298;

  return sub_25DD4333C(a2);
}

uint64_t sub_25DD45298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v5;
  *(*v5 + 32) = v4;

  if (v4)
  {
    v11 = sub_25DD43C18;
  }

  else
  {
    v10[5] = a4;
    v10[6] = a3;
    v10[7] = a2;
    v10[8] = a1;
    v11 = sub_25DD453E0;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_25DD453E0()
{
  v1 = sub_25DD00A5C(v0[8], v0[7], v0[6], v0[5]);
  v3 = v2;

  v4 = v0[1];

  return v4(v1, v3);
}

uint64_t sub_25DD4548C()
{
  swift_beginAccess();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC25B8, &qword_25DD9C928);
  v2 = sub_25DD187C0(&qword_27FCC25C0, &qword_27FCC25B8, &qword_25DD9C928, &unk_25DD9BF80);
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  *v3 = v0;
  v3[1] = sub_25DD4559C;

  return MEMORY[0x282200308](v0 + 16, v1, v2);
}

uint64_t sub_25DD4559C()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_25DD456D8;
  }

  else
  {
    swift_endAccess();
    v2 = sub_25DD456B8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25DD456D8()
{
  swift_endAccess();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25DD4573C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[11] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_25DD457A8, 0, 0);
}

uint64_t sub_25DD457A8()
{
  swift_beginAccess();
  v1 = swift_task_alloc();
  v0[12] = v1;
  *v1 = v0;
  v1[1] = sub_25DD4585C;
  v2 = v0[10];
  v3 = v0[9];

  return MEMORY[0x282200308](v0 + 2, v3, v2);
}

uint64_t sub_25DD4585C()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_25DD45978;
  }

  else
  {
    swift_endAccess();
    v2 = sub_25DD47720;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25DD45978()
{
  swift_endAccess();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25DD459FC(uint64_t a1)
{
  v2 = *(v1 + 16);
  swift_willThrow();
  v3 = v2;
  v4 = *(v1 + 8);

  return v4();
}

uint64_t sub_25DD45A94()
{
  v3 = (**(v0 + 16) + ***(v0 + 16));
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_25DD45B80;

  return v3();
}

uint64_t sub_25DD45B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = *v5;

  v14 = *(v16 + 8);
  if (!v4)
  {
    v10 = a1;
    v11 = a2;
    v12 = a3;
    v13 = a4;
  }

  return v14(v10, v11, v12, v13);
}

uint64_t sub_25DD45CA8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_25DD45CC8, 0, 0);
}

uint64_t sub_25DD45CC8()
{
  v3 = (**(v0 + 24) + ***(v0 + 24));
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_25DD45DB4;

  return v3();
}

uint64_t sub_25DD45DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v5;
  v11 = *v5;

  if (v4)
  {
    v12 = v11[1];

    return v12();
  }

  else
  {
    v10[5] = a4;
    v10[6] = a3;
    v10[7] = a2;
    v10[8] = a1;

    return MEMORY[0x2822009F8](sub_25DD45F28, 0, 0);
  }
}

uint64_t sub_25DD45F28()
{
  v1 = *(v0 + 16);
  v2 = vextq_s8(*(v0 + 40), *(v0 + 40), 8uLL);
  *v1 = vextq_s8(*(v0 + 56), *(v0 + 56), 8uLL);
  v1[1] = v2;
  return (*(v0 + 8))();
}

uint64_t sub_25DD45F58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = v4;
  v5[7] = a4;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  return MEMORY[0x2822009F8](sub_25DD45F80, 0, 0);
}

uint64_t sub_25DD45F80()
{
  v3 = (**(v0 + 48) + ***(v0 + 48));
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_25DD4606C;

  return v3();
}

uint64_t sub_25DD4606C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v5;
  v11 = *(*v5 + 32);
  *(*v5 + 72) = v4;

  if (v4)
  {
    if (v11)
    {
      swift_getObjectType();
      v12 = sub_25DD96DA4();
      v14 = v13;
    }

    else
    {
      v12 = 0;
      v14 = 0;
    }

    v16 = sub_25DD46244;
  }

  else
  {
    if (v11)
    {
      swift_getObjectType();
      v12 = sub_25DD96DA4();
      v14 = v15;
    }

    else
    {
      v12 = 0;
      v14 = 0;
    }

    v10[10] = a4;
    v10[11] = a3;
    v10[12] = a2;
    v10[13] = a1;
    v16 = sub_25DD46218;
  }

  return MEMORY[0x2822009F8](v16, v12, v14);
}

uint64_t sub_25DD46218()
{
  v1 = *(v0 + 24);
  v2 = vextq_s8(*(v0 + 80), *(v0 + 80), 8uLL);
  *v1 = vextq_s8(*(v0 + 96), *(v0 + 96), 8uLL);
  v1[1] = v2;
  return (*(v0 + 8))();
}

uint64_t sub_25DD46244()
{
  v1 = v0[9];
  v2 = v0[7];
  v0[2] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC21D8, &unk_25DD9BBB0);
  swift_willThrowTypedImpl();
  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t sub_25DD462E4(uint64_t result)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = v3 >> 1;
  v5 = __OFSUB__(v3 >> 1, v2);
  v6 = (v3 >> 1) - v2;
  if (v5)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = result - v6;
  if (__OFSUB__(result, v6))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!v7)
  {
    return result;
  }

  sub_25DD97744();
  swift_unknownObjectRetain();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    result = MEMORY[0x277D84F90];
  }

  v8 = *(result + 16);
  v5 = __OFADD__(v8, v7);
  v9 = v8 + v7;
  if (v5)
  {
    goto LABEL_13;
  }

  *(result + 16) = v9;

  v10 = v4 + v7;
  if (__OFADD__(v4, v7))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 0)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  *(v1 + 24) = v3 & 1 | (2 * v10);
  return result;
}

uint64_t sub_25DD4639C(uint64_t result)
{
  v2 = result;
  v3 = v1[3];
  v4 = v3 >> 1;
  if ((v3 & 1) == 0)
  {
    goto LABEL_10;
  }

  v5 = *v1;
  result = swift_isUniquelyReferenced_nonNull();
  *v1 = v5;
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  v6 = v1[2];
  v7 = v4 - v6;
  if (__OFSUB__(v4, v6))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v8 = v1[1];
  sub_25DD97744();
  swift_unknownObjectRetain();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = MEMORY[0x277D84F90];
  }

  v10 = *(v9 + 16);
  if (v8 + v4 != v9 + v10 + 32)
  {

    goto LABEL_9;
  }

  v11 = *(v9 + 24);

  v12 = (v11 >> 1) - v10;
  v13 = __OFADD__(v7, v12);
  v7 += v12;
  if (!v13)
  {
LABEL_9:
    if (v7 >= v2)
    {
LABEL_17:
      *v1 = v5;
      return result;
    }

LABEL_10:
    v14 = v1[2];
    if (__OFSUB__(v4, v14))
    {
      __break(1u);
    }

    else
    {
      result = sub_25DD00E5C(v4 - v14, v2);
      if (v4 >= v14)
      {
        v5 = result;
        v15 = result + 32;
        result = memcpy((result + 32), (v1[1] + v14), v4 - v14);
        if (!__OFSUB__(0, v14))
        {
          v16 = *(v5 + 16);
          v13 = __OFADD__(v14, v16);
          v17 = v14 + v16;
          if (!v13)
          {
            if (v17 >= v14)
            {
              if ((v17 & 0x8000000000000000) == 0)
              {
                v18 = (2 * v17) | 1;
                result = swift_unknownObjectRelease();
                v1[1] = v15 - v14;
                v1[2] = v14;
                v1[3] = v18;
                goto LABEL_17;
              }

              goto LABEL_23;
            }

LABEL_22:
            __break(1u);
LABEL_23:
            __break(1u);
            goto LABEL_24;
          }

LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_25DD46514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x28223BE20](a1);
  v6 = *v5;
  v7 = *(v5 + 8);
  (*(v8 + 16))(&v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  v10 = sub_25DD97074();
  return sub_25DD424B8(v10, v11, v12, v13, v6, v7, 1);
}

uint64_t sub_25DD46604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  MEMORY[0x28223BE20](a1);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v9;
  v11 = *(v9 + 8);
  v13 = *v12;
  (*(v14 + 16))(v8, v16, v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2100, "4D");
  v18 = sub_25DD3CC94(v8, v17, a4, a5);
  v20 = v19;
  v21 = swift_allocObject();
  v22 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v23 = sub_25DD96B14();
  [v22 setName_];

  *(v21 + 48) = v20;
  *(v21 + 56) = v22;
  *(v21 + 64) = 0;
  *(v21 + 40) = v18;
  *(v21 + 24) = v10;
  *(v21 + 32) = v11;
  *(v21 + 16) = v13;
  return v21;
}

uint64_t sub_25DD46790(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_25DD1BF14;

  return sub_25DD42DE0(a1, a2, v6, v7, v8);
}

uint64_t sub_25DD46854()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25DD47728;

  return sub_25DD459DC(v2);
}

uint64_t sub_25DD468E8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_25DD47728;

  return sub_25DD4546C(v0);
}

uint64_t sub_25DD46978()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25DD47728;

  return sub_25DD4573C(v4, v2, v3);
}

void *sub_25DD46A20(void *result)
{
  v2 = *(v1 + 24);
  v33 = *(v1 + 16);
  v3 = ((v2 >> 1) - v33);
  if (__OFSUB__(v2 >> 1, v33))
  {
    goto LABEL_49;
  }

  v4 = result[4];
  v31 = result[3] >> 1;
  if (v4 == v31)
  {
    return result;
  }

  v30 = result[2];
  if (v4 < v30 || v4 >= v31)
  {
    goto LABEL_50;
  }

  v6 = v1;
  v7 = v4 + 1;
  v8 = *(result[1] + v4);
  v29 = result[1];
  while (!__OFADD__(v3, 1))
  {
    v34 = sub_25DD30B6C(v3, (v3 + 1), *v6, v6[1], v33, v2);
    v9 = sub_25DD30D20();
    v10 = v6;
    sub_25DD30D3C(&v34, v3, 0, v9);

    v11 = v6[3];
    v12 = v11 >> 1;
    v33 = v6[2];
    v13 = (v11 >> 1) - v33;
    if (__OFSUB__(v11 >> 1, v33))
    {
      goto LABEL_44;
    }

    v14 = v6[1];
    v32 = v6[3];
    if ((v11 & 1) == 0)
    {
      goto LABEL_19;
    }

    sub_25DD97744();
    swift_unknownObjectRetain();
    v15 = swift_dynamicCastClass();
    if (!v15)
    {
      swift_unknownObjectRelease();
      v15 = MEMORY[0x277D84F90];
    }

    v16 = *(v15 + 16);
    if (v14 + v33 + v13 != v15 + v16 + 32)
    {

LABEL_19:
      v17 = v13;
      goto LABEL_22;
    }

    v18 = *(v15 + 24);

    v19 = (v18 >> 1) - v16;
    v20 = __OFADD__(v13, v19);
    v17 = (v13 + v19);
    if (v20)
    {
      goto LABEL_48;
    }

    v6 = v10;
LABEL_22:
    if (v3 >= v17)
    {
      v22 = 0;
    }

    else
    {
      v3[v14 + v33] = v8;
      v21 = v3 + 1;
      if (v7 != v31)
      {
        v23 = 0;
        while (1)
        {
          if (v7 < v30)
          {
            goto LABEL_42;
          }

          v24 = v23;
          if (v7 + v23 >= v31)
          {
            goto LABEL_42;
          }

          v8 = *(v29 + v7 + v23);
          if (!(v21 - v17 + v23))
          {
            break;
          }

          v3[v33 + 1 + v14 + v23++] = v8;
          if (!(v7 - v31 + v24 + 1))
          {
            v8 = 0;
            v3 = &v21[v23];
            v7 = v31;
LABEL_33:
            v22 = &v21[v24] < v17;
            goto LABEL_34;
          }
        }

        v7 += v23 + 1;
        v3 = v17;
        goto LABEL_33;
      }

      v8 = 0;
      v22 = 1;
      v7 = v31;
      ++v3;
    }

LABEL_34:
    v2 = v32;
    v25 = &v3[-v13];
    if (__OFSUB__(v3, v13))
    {
      goto LABEL_45;
    }

    if (v25)
    {
      sub_25DD97744();
      swift_unknownObjectRetain();
      result = swift_dynamicCastClass();
      if (!result)
      {
        swift_unknownObjectRelease();
        result = MEMORY[0x277D84F90];
      }

      v26 = result[2];
      v20 = __OFADD__(v26, v25);
      v27 = &v25[v26];
      if (v20)
      {
        goto LABEL_46;
      }

      result[2] = v27;

      v28 = &v25[v12];
      if (__OFADD__(v12, v25))
      {
        goto LABEL_47;
      }

      if ((v28 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_42:
        __break(1u);
        break;
      }

      v2 = v32 & 1 | (2 * v28);
      v6[3] = v2;
    }

    if (v22)
    {
      return result;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

void *sub_25DD46D14(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v30 = result;
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_35;
  }

  v8 = v4[2];
  v7 = v4[3];
  v9 = (v7 >> 1) - v8;
  if (__OFSUB__(v7 >> 1, v8))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if ((v7 & 1) == 0)
  {
LABEL_8:
    v15 = v9;
    goto LABEL_10;
  }

  v12 = v4[1];
  sub_25DD97744();
  swift_unknownObjectRetain();
  v13 = swift_dynamicCastClass();
  if (!v13)
  {
    swift_unknownObjectRelease();
    v13 = MEMORY[0x277D84F90];
  }

  v14 = *(v13 + 16);
  if (v12 + v8 + v9 != v13 + v14 + 32)
  {

    goto LABEL_8;
  }

  v16 = *(v13 + 24);

  v17 = (v16 >> 1) - v14;
  v18 = __OFADD__(v9, v17);
  v15 = v9 + v17;
  if (v18)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

LABEL_10:
  result = (v9 + v6);
  if (__OFADD__(v9, v6))
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v15 < result)
  {
    if (v15 + 0x4000000000000000 < 0)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v19 = (2 * v15);
    if (v19 > result)
    {
      result = v19;
    }
  }

  result = sub_25DD4639C(result);
  v21 = v4[2];
  v20 = v4[3];
  v22 = (v20 >> 1) - v21;
  if (__OFSUB__(v20 >> 1, v21))
  {
    goto LABEL_37;
  }

  v23 = (v4[1] + (v20 >> 1));
  if ((v20 & 1) == 0)
  {
LABEL_21:
    v26 = v22;
    goto LABEL_23;
  }

  sub_25DD97744();
  swift_unknownObjectRetain();
  v24 = swift_dynamicCastClass();
  if (!v24)
  {
    swift_unknownObjectRelease();
    v24 = MEMORY[0x277D84F90];
  }

  v25 = *(v24 + 16);
  if (v23 != (v24 + v25 + 32))
  {

    goto LABEL_21;
  }

  v27 = *(v24 + 24);

  v28 = (v27 >> 1) - v25;
  v18 = __OFADD__(v22, v28);
  v26 = v22 + v28;
  if (v18)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

LABEL_23:
  v29 = v26 - v22;
  if (__OFSUB__(v26, v22))
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v5 == a3)
  {
    if (v6 <= 0)
    {
      v6 = 0;
      v5 = a3;
      goto LABEL_31;
    }

    goto LABEL_39;
  }

  if (v29 < v6)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  result = memcpy(v23, (a2 + a3), v6);
  if (v6 > 0)
  {
    result = (v22 + v6);
    if (__OFADD__(v22, v6))
    {
LABEL_44:
      __break(1u);
      return result;
    }

    result = sub_25DD462E4(result);
  }

LABEL_31:
  if (v6 == v29)
  {
    v32[0] = v30;
    v32[1] = a2;
    v32[2] = a3;
    v32[3] = a4;
    v32[4] = v5;
    return sub_25DD46A20(v32);
  }

  return result;
}

uint64_t sub_25DD46F50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  sub_25DD97004();
  swift_getAssociatedConformanceWitness();
  return sub_25DD96D94();
}

uint64_t sub_25DD47048(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_25DD1C68C;

  return sub_25DD44504(a1, a2, v7, v6);
}

uint64_t sub_25DD470FC(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_25DD1C68C;

  return sub_25DD447E8(a1, a2, v7, v6);
}

uint64_t sub_25DD471B0(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_25DD1C68C;

  return sub_25DD44B20(a1, a2, v6, v7, v8);
}

unint64_t sub_25DD472D0()
{
  result = qword_27FCC25A0;
  if (!qword_27FCC25A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC25A0);
  }

  return result;
}

uint64_t sub_25DD4738C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HTTPBody();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HTTPBody.Length(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for HTTPBody.Length(uint64_t result, int a2, int a3)
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

uint64_t sub_25DD47434(uint64_t a1)
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

uint64_t sub_25DD47450(uint64_t result, int a2)
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

uint64_t sub_25DD47490()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25DD47524;

  return sub_25DD459DC(v2);
}

uint64_t sub_25DD47524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = *v4;

  v9 = *(v11 + 8);

  return v9(a1, a2, a3, a4);
}

unint64_t sub_25DD47648()
{
  result = qword_27FCC9010;
  if (!qword_27FCC9010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC9010);
  }

  return result;
}

unint64_t sub_25DD4769C()
{
  result = qword_27FCC9018[0];
  if (!qword_27FCC9018[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FCC9018);
  }

  return result;
}

uint64_t dispatch thunk of ServerMiddleware.intercept(_:body:metadata:operationID:next:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = (*(a10 + 8) + **(a10 + 8));
  v18 = swift_task_alloc();
  *(v10 + 16) = v18;
  *v18 = v10;
  v18[1] = sub_25DD3D8CC;

  return v20(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t UniversalClient.serverURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25DD96704();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t UniversalClient.converter.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for UniversalClient(0) + 20);

  return sub_25DD1C360(v3, a1);
}

uint64_t type metadata accessor for UniversalClient(uint64_t a1)
{
  result = qword_28155EBF0;
  if (!qword_28155EBF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t UniversalClient.transport.setter(__int128 *a1)
{
  v3 = *(type metadata accessor for UniversalClient(0) + 24);
  __swift_destroy_boxed_opaque_existential_1((v1 + v3));

  return sub_25DCFE2FC(a1, v1 + v3);
}

uint64_t UniversalClient.middlewares.getter()
{
  type metadata accessor for UniversalClient(0);
}

uint64_t UniversalClient.middlewares.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UniversalClient(0) + 28);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_25DD47B48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_25DD96704();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  v11 = type metadata accessor for UniversalClient(0);
  v12 = a5 + v11[5];
  v13 = *(a2 + 112);
  *(v12 + 96) = *(a2 + 96);
  *(v12 + 112) = v13;
  *(v12 + 128) = *(a2 + 128);
  *(v12 + 144) = *(a2 + 144);
  v14 = *(a2 + 48);
  *(v12 + 32) = *(a2 + 32);
  *(v12 + 48) = v14;
  v15 = *(a2 + 80);
  *(v12 + 64) = *(a2 + 64);
  *(v12 + 80) = v15;
  v16 = *(a2 + 16);
  *v12 = *a2;
  *(v12 + 16) = v16;
  result = sub_25DCFE2FC(a3, a5 + v11[6]);
  *(a5 + v11[7]) = a4;
  return result;
}

uint64_t sub_25DD47C24@<X0>(uint64_t a1@<X8>)
{
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  sub_25DD19594(v5);
  sub_25DD195AC(&v4);
  sub_25DD195B8(v3);
  return Configuration.init(dateTranscoder:jsonEncodingOptions:multipartBoundaryGenerator:xmlCoder:)(v5, &v4, v3, v6, a1);
}

uint64_t UniversalClient.init(serverURL:configuration:transport:middlewares:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_25DD96704();
  v11 = *(v10 - 8);
  (*(v11 + 16))(a5, a1, v10);
  sub_25DD19D54(a2, v14);
  v12 = type metadata accessor for UniversalClient(0);
  Converter.init(configuration:)(v14, (a5 + v12[5]));
  sub_25DD1A5C0(a2);
  (*(v11 + 8))(a1, v10);
  result = sub_25DCFE2FC(a3, a5 + v12[6]);
  *(a5 + v12[7]) = a4;
  return result;
}

uint64_t UniversalClient.send<A, B>(input:forOperation:serializer:deserializer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[21] = v21;
  v9[22] = v8;
  v9[19] = a8;
  v9[20] = v20;
  v9[17] = a6;
  v9[18] = a7;
  v9[15] = a4;
  v9[16] = a5;
  v9[13] = a2;
  v9[14] = a3;
  v9[12] = a1;
  v10 = sub_25DD96984();
  v9[23] = v10;
  v9[24] = *(v10 - 8);
  v9[25] = swift_task_alloc();
  v11 = *(v20 - 8);
  v9[26] = v11;
  v9[27] = *(v11 + 64);
  v9[28] = swift_task_alloc();
  v12 = type metadata accessor for UniversalClient(0);
  v9[29] = v12;
  v13 = *(v12 - 8);
  v9[30] = v13;
  v9[31] = *(v13 + 64);
  v9[32] = swift_task_alloc();
  v9[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC25E8, &qword_25DD9CB48);
  v9[34] = swift_task_alloc();
  v14 = sub_25DD968B4();
  v9[35] = v14;
  v15 = *(v14 - 8);
  v9[36] = v15;
  v9[37] = *(v15 + 64);
  v9[38] = swift_task_alloc();
  v9[39] = swift_task_alloc();
  v16 = sub_25DD96704();
  v9[40] = v16;
  v17 = *(v16 - 8);
  v9[41] = v17;
  v9[42] = *(v17 + 64);
  v9[43] = swift_task_alloc();
  v9[44] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25DD48058, 0, 0);
}

uint64_t sub_25DD48058()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 320);
  v3 = *(v0 + 328);
  v5 = *(v0 + 168);
  v4 = *(v0 + 176);
  v6 = *(v0 + 160);
  v8 = *(v0 + 112);
  v7 = *(v0 + 120);
  v9 = *(v3 + 16);
  v10 = *(v0 + 104);
  *(v0 + 360) = v9;
  *(v0 + 368) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v16 = *(v0 + 128);
  v9(v1, v4, v2);
  v11 = swift_task_alloc();
  *(v0 + 376) = v11;
  *(v11 + 16) = v6;
  *(v11 + 24) = v5;
  *(v11 + 32) = v16;
  *(v11 + 48) = v10;
  v12 = swift_task_alloc();
  *(v0 + 384) = v12;
  v12[2] = v6;
  v12[3] = v5;
  v12[4] = v8;
  v12[5] = v7;
  v12[6] = v10;
  v13 = swift_task_alloc();
  *(v0 + 392) = v13;
  *v13 = v0;
  v13[1] = sub_25DD481AC;
  v14 = *(v0 + 272);

  return sub_25DD49348(v14, dword_25DD9CB58, v11, sub_25DD4A50C, v12);
}

uint64_t sub_25DD481AC()
{
  *(*v1 + 400) = v0;

  if (v0)
  {
    v2 = sub_25DD48FE8;
  }

  else
  {

    v2 = sub_25DD482D0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25DD482D0()
{
  v66 = *(v0 + 360);
  v52 = *(v0 + 352);
  v94 = *(v0 + 344);
  v68 = *(v0 + 328);
  v1 = *(v0 + 312);
  v88 = *(v0 + 304);
  v91 = *(v0 + 320);
  v57 = *(v0 + 296);
  v3 = *(v0 + 280);
  v2 = *(v0 + 288);
  v4 = *(v0 + 256);
  v61 = v4;
  v46 = *(v0 + 240);
  v49 = *(v0 + 248);
  v83 = *(v0 + 232);
  v5 = *(v0 + 224);
  v71 = v5;
  v54 = *(v0 + 216);
  v6 = *(v0 + 208);
  v7 = *(v0 + 176);
  v81 = v7;
  v77 = *(v0 + 120);
  v44 = *(*(v0 + 272) + *(*(v0 + 264) + 48));
  v74 = *(v0 + 112);
  v8 = *(v0 + 104);
  *(v0 + 408) = v44;
  v67 = *(v2 + 32);
  v85 = *(v0 + 160);
  v65 = v3;
  v67(v1);
  sub_25DD4C7F8(v7, v4, type metadata accessor for UniversalClient);
  v64 = *(v6 + 16);
  v64(v5, v8);
  v63 = *(v2 + 16);
  v63(v88, v1, v3);
  v66(v94, v52, v91);
  v9 = (*(v46 + 80) + 32) & ~*(v46 + 80);
  v10 = (v49 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v6 + 80);
  v47 = v57 + 7;
  v50 = (v11 + v10 + 16) & ~v11;
  v12 = *(v2 + 80);
  v45 = v54 + v12;
  v55 = (v50 + v54 + v12) & ~v12;
  v58 = (v55 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v68 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v85;
  sub_25DD4C584(v61, v14 + v9, type metadata accessor for UniversalClient);
  v15 = (v14 + v10);
  *v15 = v74;
  v15[1] = v77;
  v62 = *(v6 + 32);
  v62(v14 + v50, v71, v85);
  (v67)(v14 + v55, v88, v65);
  *(v14 + v58) = v44;
  v16 = *(v68 + 32);
  v16(v14 + ((v58 + v13 + 8) & ~v13), v94, v91);
  v17 = *(*(v81 + *(v83 + 28)) + 16);
  if (v17)
  {
    v80 = *(v0 + 360);
    v78 = *(v0 + 352);
    v75 = *(v0 + 344);
    v69 = *(v0 + 312);
    v72 = *(v0 + 320);
    v18 = *(v0 + 304);
    v43 = *(v0 + 280);
    v60 = v16;
    v19 = *(v81 + *(v83 + 28));
    v20 = *(v0 + 224);
    v92 = *(v0 + 120);
    v84 = *(v0 + 112);
    v21 = *(v0 + 104);
    v22 = v0;
    v86 = v17 - 1;
    v23 = (v11 + 104) & ~v11;
    v59 = (v45 + v23) & ~v12;
    v53 = (((v59 + v47) & 0xFFFFFFFFFFFFFFF8) + v13 + 8) & ~v13;
    v56 = (v59 + v47) & 0xFFFFFFFFFFFFFFF8;
    v89 = v17;
    v51 = v19;
    v95 = *(v22 + 160);
    sub_25DD08A7C(v19 + 40 * v17 - 8, v22 + 16);
    sub_25DCFE2FC((v22 + 16), v22 + 56);
    v24 = v20;
    (v64)(v20, v21, v95);
    v63(v18, v69, v43);
    v25 = v72;
    v80(v75, v78, v72);
    v26 = swift_allocObject();
    *(v26 + 16) = v95;
    sub_25DCFE2FC((v22 + 56), v26 + 32);
    *(v26 + 72) = v84;
    *(v26 + 80) = v92;
    *(v26 + 88) = &unk_25DD9CB70;
    *(v26 + 96) = v14;
    v48 = v23;
    v62(v26 + v23, v24, v95);
    (v67)(v26 + v59, v18, v43);
    v27 = v44;
    *(v26 + v56) = v44;
    v60(v26 + v53, v75, v72);
    if (v86)
    {
      v28 = v86;
      v0 = v89 - 2;
      v29 = *(v51 + 16);
      v93 = *(v22 + 120);

      if (v89 - 2 >= v29)
      {
LABEL_7:
        __break(1u);
      }

      else
      {
        v0 = v22;
        v30 = v51 + 40 * v89 - 48;
        while (1)
        {
          v90 = v26;
          v79 = *(v0 + 360);
          v76 = *(v0 + 352);
          v31 = *(v0 + 312);
          v70 = *(v0 + 344);
          v73 = *(v0 + 320);
          v32 = *(v0 + 304);
          v33 = *(v0 + 280);
          v82 = v33;
          v34 = *(v0 + 224);
          v87 = *(v0 + 112);
          v25 = v27;
          v35 = *(v0 + 104);
          v96 = *(v0 + 160);
          sub_25DD08A7C(v30, v0 + 16);
          sub_25DCFE2FC((v0 + 16), v0 + 56);
          (v64)(v34, v35, v96);
          v63(v32, v31, v33);
          v79(v70, v76, v73);
          v26 = swift_allocObject();
          *(v26 + 16) = v96;
          sub_25DCFE2FC((v0 + 56), v26 + 32);
          *(v26 + 72) = v87;
          *(v26 + 80) = v93;
          *(v26 + 88) = &unk_25DD9CB80;
          *(v26 + 96) = v90;
          v62(v26 + v48, v34, v96);
          (v67)(v26 + v59, v32, v82);
          *(v26 + v56) = v25;
          v60(v26 + v53, v70, v73);
          if (!--v28)
          {
            break;
          }

          v36 = *(v51 + 16);
          v93 = *(v0 + 120);

          v30 -= 40;
          v27 = v25;
          if (v28 > v36)
          {
            goto LABEL_7;
          }
        }
      }

      v27 = v25;
    }

    else
    {
      v0 = v22;
    }

    v37 = &unk_25DD9CB80;
    v14 = v26;
  }

  else
  {
    v37 = &unk_25DD9CB70;
    v27 = v44;
  }

  *(v0 + 416) = v27;
  *(v0 + 424) = v14;

  v97 = (v37 + *v37);
  v38 = swift_task_alloc();
  *(v0 + 432) = v38;
  *v38 = v0;
  v38[1] = sub_25DD48AD4;
  v39 = *(v0 + 352);
  v40 = *(v0 + 312);
  v41 = *(v0 + 200);

  return v97(v41, v40, v27, v39);
}

uint64_t sub_25DD48AD4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 440) = a1;
  *(v3 + 448) = v1;

  if (v1)
  {
    v4 = sub_25DD490E4;
  }

  else
  {
    v4 = sub_25DD48BE8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25DD48BE8()
{
  v1 = *(v0 + 440);
  v15 = *(v0 + 408);
  v2 = *(v0 + 352);
  v3 = *(v0 + 312);
  v4 = *(v0 + 200);
  v6 = *(v0 + 160);
  v5 = *(v0 + 168);
  v14 = *(v0 + 112);
  v7 = *(v0 + 104);
  v8 = swift_task_alloc();
  *(v0 + 456) = v8;
  v9 = *(v0 + 144);
  *(v8 + 16) = v6;
  *(v8 + 24) = v5;
  *(v8 + 32) = v9;
  *(v8 + 48) = v4;
  *(v8 + 56) = v1;
  v10 = swift_task_alloc();
  *(v0 + 464) = v10;
  *(v10 + 16) = v6;
  *(v10 + 24) = v5;
  *(v10 + 32) = v14;
  *(v10 + 48) = v7;
  *(v10 + 56) = v3;
  *(v10 + 64) = v15;
  *(v10 + 72) = v2;
  *(v10 + 80) = v4;
  *(v10 + 88) = v1;
  v11 = swift_task_alloc();
  *(v0 + 472) = v11;
  *v11 = v0;
  v11[1] = sub_25DD48D40;
  v12 = *(v0 + 96);

  return sub_25DD49348(v12, &unk_25DD9CB90, v8, sub_25DD4C3B8, v10);
}

uint64_t sub_25DD48D40()
{
  *(*v1 + 480) = v0;

  if (v0)
  {
    v2 = sub_25DD49200;
  }

  else
  {
    v2 = sub_25DD48E94;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25DD48E94()
{
  v1 = v0[44];
  v2 = v0[41];
  v11 = v0[40];
  v3 = v0[39];
  v4 = v0[36];
  v10 = v0[35];
  v5 = v0[24];
  v6 = v0[25];
  v7 = v0[23];

  (*(v5 + 8))(v6, v7);
  (*(v4 + 8))(v3, v10);
  (*(v2 + 8))(v1, v11);

  v8 = v0[1];

  return v8();
}

uint64_t sub_25DD48FE8()
{

  (*(v0[41] + 8))(v0[44], v0[40]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_25DD490E4()
{
  v1 = v0[39];
  v2 = v0[35];
  v3 = v0[36];

  (*(v3 + 8))(v1, v2);
  (*(v0[41] + 8))(v0[44], v0[40]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_25DD49200()
{
  v1 = v0[39];
  v2 = v0[35];
  v3 = v0[36];
  v5 = v0[24];
  v4 = v0[25];
  v6 = v0[23];

  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);
  (*(v0[41] + 8))(v0[44], v0[40]);

  v7 = v0[1];

  return v7();
}

uint64_t sub_25DD49348(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[5] = type metadata accessor for ClientError(0);
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();
  v10 = (a2 + *a2);
  v8 = swift_task_alloc();
  v5[8] = v8;
  *v8 = v5;
  v8[1] = sub_25DD4948C;

  return v10(a1);
}

uint64_t sub_25DD4948C()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25DD495D4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_25DD495D4()
{
  v1 = v0[9];
  v0[2] = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC21D8, &unk_25DD9BBB0);
  v3 = swift_dynamicCast();
  v4 = v0[9];
  if (v3)
  {
    v6 = v0[6];
    v5 = v0[7];
    MEMORY[0x25F8A43F0](v0[9]);
    sub_25DD4C584(v5, v6, type metadata accessor for ClientError);
    sub_25DD2A584();
    swift_allocError();
    sub_25DD4C7F8(v6, v7, type metadata accessor for ClientError);
    swift_willThrow();
    sub_25DD4C860(v6);
    v8 = v0[2];
  }

  else
  {
    v9 = v0[3];
    MEMORY[0x25F8A43F0](v0[2]);
    v9(v4);
    swift_willThrow();
    v8 = v4;
  }

  MEMORY[0x25F8A43F0](v8);

  v10 = v0[1];

  return v10();
}

uint64_t sub_25DD49738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v86 = a8;
  v85 = a7;
  v89 = a2;
  v90 = a5;
  v92 = a3;
  v93 = a4;
  v91 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2490, &unk_25DD99F20);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v84 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v87 = &v82 - v15;
  MEMORY[0x28223BE20](v14);
  v88 = &v82 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2460, &qword_25DD99E20);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v82 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v82 - v21;
  MEMORY[0x28223BE20](v20);
  v83 = &v82 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2488, &unk_25DD99F10);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v27 = &v82 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v25);
  v30 = &v82 - v29;
  MEMORY[0x28223BE20](v28);
  v32 = &v82 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC25F8, &qword_25DD9CBF8);
  MEMORY[0x28223BE20](v33 - 8);
  v35 = &v82 - v34;
  v36 = type metadata accessor for ClientError(0);
  v37 = *(v36 - 1);
  MEMORY[0x28223BE20](v36);
  v39 = &v82 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v99 = a6;
  v40 = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC21D8, &unk_25DD9BBB0);
  v41 = swift_dynamicCast();
  v42 = *(v37 + 56);
  if (v41)
  {
    v42(v35, 0, 1, v36);
    sub_25DD4C584(v35, v39, type metadata accessor for ClientError);
    v43 = v36[6];
    sub_25DD12B90(&v39[v43], v30, &qword_27FCC2488, &unk_25DD99F10);
    v44 = sub_25DD968B4();
    v45 = *(v44 - 8);
    v46 = *(v45 + 48);
    if (v46(v30, 1, v44) == 1)
    {
      sub_25DD12B90(v91, v32, &qword_27FCC2488, &unk_25DD99F10);
      v47 = v46(v30, 1, v44);
      v48 = v87;
      v49 = v83;
      if (v47 != 1)
      {
        sub_25DD114CC(v30, &qword_27FCC2488, &unk_25DD99F10);
      }
    }

    else
    {
      (*(v45 + 32))(v32, v30, v44);
      (*(v45 + 56))(v32, 0, 1, v44);
      v48 = v87;
      v49 = v83;
    }

    sub_25DD29864(v32, &v39[v43], &qword_27FCC2488, &unk_25DD99F10);
    v55 = v36[7];
    v56 = *&v39[v55];
    if (!v56)
    {
    }

    *&v39[v55] = v56;
    v57 = v36[8];
    sub_25DD12B90(&v39[v57], v22, &qword_27FCC2460, &qword_25DD99E20);
    v58 = sub_25DD96704();
    v59 = *(v58 - 8);
    v60 = *(v59 + 48);
    if (v60(v22, 1, v58) == 1)
    {
      sub_25DD12B90(v92, v49, &qword_27FCC2460, &qword_25DD99E20);
      v61 = v60(v22, 1, v58);
      v62 = v88;
      if (v61 != 1)
      {
        sub_25DD114CC(v22, &qword_27FCC2460, &qword_25DD99E20);
      }
    }

    else
    {
      (*(v59 + 32))(v49, v22, v58);
      (*(v59 + 56))(v49, 0, 1, v58);
      v62 = v88;
    }

    sub_25DD29864(v49, &v39[v57], &qword_27FCC2460, &qword_25DD99E20);
    v64 = v36[9];
    sub_25DD12B90(&v39[v64], v48, &qword_27FCC2490, &unk_25DD99F20);
    v65 = sub_25DD96984();
    v66 = *(v65 - 8);
    v67 = *(v66 + 48);
    if (v67(v48, 1, v65) == 1)
    {
      sub_25DD12B90(v93, v62, &qword_27FCC2490, &unk_25DD99F20);
      if (v67(v48, 1, v65) != 1)
      {
        sub_25DD114CC(v48, &qword_27FCC2490, &unk_25DD99F20);
      }
    }

    else
    {
      (*(v66 + 32))(v62, v48, v65);
      (*(v66 + 56))(v62, 0, 1, v65);
    }

    sub_25DD29864(v62, &v39[v64], &qword_27FCC2490, &unk_25DD99F20);
    v68 = v36[10];
    v69 = *&v39[v68];
    if (!v69)
    {
    }

    *&v39[v68] = v69;
    sub_25DD2A584();
    v70 = swift_allocError();
    sub_25DD4C584(v39, v71, type metadata accessor for ClientError);
  }

  else
  {
    v42(v35, 1, 1, v36);
    sub_25DD114CC(v35, &qword_27FCC25F8, &qword_25DD9CBF8);
    v98 = a6;
    v50 = a6;
    if (swift_dynamicCast())
    {
      v99 = v94;
      v100 = v95;
      v101 = v96;
      v102 = v97;
      v51 = sub_25DD2B858();
      v53 = v52;
      v54 = sub_25DD2B78C();
      sub_25DD2B824(&v99);
      v88 = v53;
      if (v54)
      {
        a6 = v54;
      }

      else
      {
        v72 = a6;
      }
    }

    else
    {
      v95 = 0u;
      v96 = 0u;
      v94 = 0u;
      v97 = -1;
      sub_25DD114CC(&v94, &qword_27FCC2600, &unk_25DD9CCE0);
      v63 = a6;
      v88 = 0xE700000000000000;
      v51 = 0x6E776F6E6B6E55;
    }

    *(&v100 + 1) = a10;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v99);
    (*(*(a10 - 8) + 16))(boxed_opaque_existential_0, a9, a10);
    sub_25DD12B90(v91, v27, &qword_27FCC2488, &unk_25DD99F10);
    v74 = v82;
    sub_25DD12B90(v92, v82, &qword_27FCC2460, &qword_25DD99E20);
    v75 = v84;
    sub_25DD12B90(v93, v84, &qword_27FCC2490, &unk_25DD99F20);
    sub_25DD2A584();
    v70 = swift_allocError();
    v77 = v76;
    v78 = v90;

    v79 = v86;

    v80 = v89;

    ClientError.init(operationID:operationInput:request:requestBody:baseURL:response:responseBody:causeDescription:underlyingError:)(v85, v79, &v99, v27, v80, v74, v75, v78, v77, v51, v88, a6);
  }

  return v70;
}

uint64_t sub_25DD4A110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_25DD4A134, 0, 0);
}

uint64_t sub_25DD4A134()
{
  v1 = (*(v0 + 24))(*(v0 + 16), *(v0 + 40));
  v2 = *(v0 + 16);
  *(v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC25E8, &qword_25DD9CB48) + 48)) = v1;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_25DD4A1E4(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25DD1BF14;

  return sub_25DD4A110(a1, v4, v5, v6);
}

uint64_t sub_25DD4A298(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2490, &unk_25DD99F20);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2460, &qword_25DD99E20);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2488, &unk_25DD99F10);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v24 - v17;
  v19 = sub_25DD968B4();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  v20 = sub_25DD96704();
  (*(*(v20 - 8) + 56))(v15, 1, 1, v20);
  v21 = sub_25DD96984();
  (*(*(v21 - 8) + 56))(v12, 1, 1, v21);
  v22 = sub_25DD49738(v18, 0, v15, v12, 0, a1, a2, a3, a4, a5);
  sub_25DD114CC(v12, &qword_27FCC2490, &unk_25DD99F20);
  sub_25DD114CC(v15, &qword_27FCC2460, &qword_25DD99E20);
  sub_25DD114CC(v18, &qword_27FCC2488, &unk_25DD99F10);
  return v22;
}

uint64_t sub_25DD4A51C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 112) = v13;
  *(v8 + 80) = v11;
  *(v8 + 96) = v12;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2608, &qword_25DD9CC00);
  *(v8 + 128) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25DD4A5DC, 0, 0);
}

uint64_t sub_25DD4A5DC()
{
  v1 = *(v0 + 96);
  v14 = *(v0 + 80);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = *(v0 + 24);
  v7 = swift_task_alloc();
  *(v0 + 136) = v7;
  v8 = swift_task_alloc();
  v9 = *(v0 + 104);
  v10 = *(v0 + 64);
  v7[2] = v3;
  v7[3] = v6;
  v7[4] = v5;
  v7[5] = v4;
  v7[6] = v2;
  v7[7] = v10;
  *(v0 + 144) = v8;
  *(v8 + 16) = v9;
  *(v8 + 32) = v2;
  *(v8 + 40) = v10;
  *(v8 + 56) = v14;
  *(v8 + 72) = v1;
  v11 = swift_task_alloc();
  *(v0 + 152) = v11;
  *v11 = v0;
  v11[1] = sub_25DD4A728;
  v12 = *(v0 + 128);

  return sub_25DD49348(v12, dword_25DD9CC20, v7, sub_25DD4C7E4, v8);
}

uint64_t sub_25DD4A728()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_25DD4A908;
  }

  else
  {

    v2 = sub_25DD4A84C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25DD4A84C()
{
  v1 = v0[16];
  v2 = v0[2];
  v3 = *(v1 + *(v0[15] + 48));
  v4 = sub_25DD96984();
  (*(*(v4 - 8) + 32))(v2, v1, v4);

  v5 = v0[1];

  return v5(v3);
}

uint64_t sub_25DD4A908()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25DD4A980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(type metadata accessor for UniversalClient(0) - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + *(*(v6 - 8) + 80) + 16) & ~*(*(v6 - 8) + 80);
  sub_25DD968B4();
  sub_25DD96704();
  v11 = v4 + v9;
  v12 = *(v4 + v9);
  v13 = *(v11 + 8);
  v14 = swift_task_alloc();
  *(v5 + 16) = v14;
  *v14 = v5;
  v14[1] = sub_25DD3D8CC;

  return sub_25DD4A51C(a1, a2, a3, a4, v4 + v8, v12, v13, v4 + v10);
}

uint64_t sub_25DD4ABD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x2822009F8](sub_25DD4AC04, 0, 0);
}

uint64_t sub_25DD4AC04()
{
  v1 = v0[3];
  v2 = (v1 + *(type metadata accessor for UniversalClient(0) + 24));
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  v13 = (*(v4 + 8) + **(v4 + 8));
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_25DD4AD4C;
  v6 = v0[7];
  v7 = v0[8];
  v8 = v0[5];
  v9 = v0[6];
  v10 = v0[4];
  v11 = v0[2];

  return v13(v11, v10, v8, v9, v6, v7, v3, v4);
}

uint64_t sub_25DD4AD4C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 80) = a1;
    *(v4 + 88) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2608, &qword_25DD9CC00) + 48);

    return MEMORY[0x2822009F8](sub_25DD4AEB4, 0, 0);
  }
}

uint64_t sub_25DD4AEDC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v33 = a6;
  v34 = a2;
  v35 = a3;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2490, &unk_25DD99F20);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v32 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2460, &qword_25DD99E20);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v32 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2488, &unk_25DD99F10);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v32 - v20;
  v22 = sub_25DD968B4();
  v23 = *(v22 - 8);
  (*(v23 + 16))(v21, a5, v22);
  (*(v23 + 56))(v21, 0, 1, v22);
  v24 = sub_25DD96704();
  v25 = *(v24 - 8);
  (*(v25 + 16))(v18, a7, v24);
  (*(v25 + 56))(v18, 0, 1, v24);
  v26 = sub_25DD96984();
  (*(*(v26 - 8) + 56))(v15, 1, 1, v26);
  sub_25DD01034();
  v27 = swift_allocError();
  *v28 = a1;
  *(v28 + 48) = 15;
  v29 = a1;
  v30 = sub_25DD49738(v21, v33, v18, v15, 0, v27, v34, v35, a4, a8);
  sub_25DD114CC(v15, &qword_27FCC2490, &unk_25DD99F20);
  sub_25DD114CC(v18, &qword_27FCC2460, &qword_25DD99E20);
  sub_25DD114CC(v21, &qword_27FCC2488, &unk_25DD99F10);
  MEMORY[0x25F8A43F0](v27);
  return v30;
}

uint64_t sub_25DD4B1FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 128) = v14;
  *(v8 + 96) = v12;
  *(v8 + 112) = v13;
  *(v8 + 80) = v11;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2608, &qword_25DD9CC00);
  *(v8 + 144) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25DD4B2C4, 0, 0);
}

uint64_t sub_25DD4B2C4()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 80);
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);
  v6 = *(v0 + 40);
  v15 = *(v0 + 24);
  v7 = swift_task_alloc();
  *(v0 + 152) = v7;
  v14 = *(v0 + 64);
  v8 = swift_task_alloc();
  v9 = *(v0 + 120);
  v10 = *(v0 + 88);
  *(v7 + 16) = v5;
  *(v7 + 24) = v15;
  *(v7 + 40) = v6;
  *(v7 + 48) = v4;
  *(v7 + 56) = v14;
  *(v7 + 72) = v3;
  *(v0 + 160) = v8;
  *(v8 + 16) = v9;
  *(v8 + 32) = v4;
  *(v8 + 40) = v14;
  *(v8 + 48) = v10;
  *(v8 + 64) = v2;
  *(v8 + 72) = v1;
  *(v8 + 80) = v5;
  v11 = swift_task_alloc();
  *(v0 + 168) = v11;
  *v11 = v0;
  v11[1] = sub_25DD4B420;
  v12 = *(v0 + 144);

  return sub_25DD49348(v12, dword_25DD9CC10, v7, sub_25DD4C6D8, v8);
}

uint64_t sub_25DD4B420()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_25DD4B600;
  }

  else
  {

    v2 = sub_25DD4B544;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25DD4B544()
{
  v1 = v0[18];
  v2 = v0[2];
  v3 = *(v1 + *(v0[17] + 48));
  v4 = sub_25DD96984();
  (*(*(v4 - 8) + 32))(v2, v1, v4);

  v5 = v0[1];

  return v5(v3);
}

uint64_t sub_25DD4B600()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25DD4B678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_25DD968B4();
  sub_25DD96704();
  v6 = v4[10];
  v10 = v4[9];
  v7 = v4[11];
  v8 = swift_task_alloc();
  *(v5 + 16) = v8;
  *v8 = v5;
  v8[1] = sub_25DD3DB34;

  return sub_25DD4B1FC(a1, a2, a3, a4, (v4 + 4), v10, v6, v7);
}

uint64_t sub_25DD4B878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
  return MEMORY[0x2822009F8](sub_25DD4B8B0, 0, 0);
}

void sub_25DD4B8B0()
{
  v1 = *(v0 + 24);
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v4 = *(v2 + 8) + **(v2 + 8);
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *v3 = v0;
  v3[1] = sub_25DD4B9F0;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_25DD4B9F0(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 96) = a1;
    *(v4 + 104) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2608, &qword_25DD9CC00) + 48);

    return MEMORY[0x2822009F8](sub_25DD4BB58, 0, 0);
  }
}

uint64_t sub_25DD4BB80(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9)
{
  v33 = a4;
  v34 = a6;
  v35 = a2;
  v36 = a3;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2490, &unk_25DD99F20);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v33 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2460, &qword_25DD99E20);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v33 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2488, &unk_25DD99F10);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v33 - v20;
  v22 = sub_25DD968B4();
  v23 = *(v22 - 8);
  (*(v23 + 16))(v21, a5, v22);
  (*(v23 + 56))(v21, 0, 1, v22);
  v24 = sub_25DD96704();
  v25 = *(v24 - 8);
  (*(v25 + 16))(v18, a7, v24);
  (*(v25 + 56))(v18, 0, 1, v24);
  v26 = sub_25DD96984();
  (*(*(v26 - 8) + 56))(v15, 1, 1, v26);
  sub_25DD01034();
  v27 = swift_allocError();
  v29 = v28;
  __swift_project_boxed_opaque_existential_1(a8, a8[3]);
  *v29 = swift_getDynamicType();
  *(v29 + 8) = a1;
  *(v29 + 48) = 16;
  v30 = a1;
  v31 = sub_25DD49738(v21, v34, v18, v15, 0, v27, v35, v36, v33, a9);
  sub_25DD114CC(v15, &qword_27FCC2490, &unk_25DD99F20);
  sub_25DD114CC(v18, &qword_27FCC2460, &qword_25DD99E20);
  sub_25DD114CC(v21, &qword_27FCC2488, &unk_25DD99F10);
  MEMORY[0x25F8A43F0](v27);
  return v31;
}

uint64_t sub_25DD4BECC(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = (a2 + *a2);
  v9 = swift_task_alloc();
  *(v5 + 16) = v9;
  *v9 = v5;
  v9[1] = sub_25DD1BF14;

  return v11(a1, a4, a5);
}

uint64_t sub_25DD4BFE0(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v7 = v1[6];
  v6 = v1[7];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25DD1C68C;

  return sub_25DD4BECC(a1, v4, v5, v7, v6);
}

uint64_t sub_25DD4C0A0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v34 = a6;
  v35 = a2;
  v36 = a3;
  v32 = a9;
  v33 = a1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2490, &unk_25DD99F20);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v31 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2460, &qword_25DD99E20);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v31 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2488, &unk_25DD99F10);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v31 - v21;
  v23 = sub_25DD968B4();
  v24 = *(v23 - 8);
  (*(v24 + 16))(v22, a5, v23);
  (*(v24 + 56))(v22, 0, 1, v23);
  v25 = sub_25DD96704();
  v26 = *(v25 - 8);
  (*(v26 + 16))(v19, a7, v25);
  (*(v26 + 56))(v19, 0, 1, v25);
  v27 = sub_25DD96984();
  v28 = *(v27 - 8);
  (*(v28 + 16))(v16, a8, v27);
  (*(v28 + 56))(v16, 0, 1, v27);
  v29 = sub_25DD49738(v22, v34, v19, v16, v32, v33, v35, v36, a4, a10);
  sub_25DD114CC(v16, &qword_27FCC2490, &unk_25DD99F20);
  sub_25DD114CC(v19, &qword_27FCC2460, &qword_25DD99E20);
  sub_25DD114CC(v22, &qword_27FCC2488, &unk_25DD99F10);
  return v29;
}

void sub_25DD4C418(uint64_t a1)
{
  sub_25DD96704();
  if (v1 <= 0x3F)
  {
    sub_25DD4C4BC();
    if (v2 <= 0x3F)
    {
      sub_25DD4C520(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_25DD4C4BC()
{
  result = qword_28155EA50;
  if (!qword_28155EA50)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_28155EA50);
  }

  return result;
}

void sub_25DD4C520(uint64_t a1)
{
  if (!qword_28155E9A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCC25F0, &unk_25DD9CBE8);
    v1 = sub_25DD96D84();
    if (!v2)
    {
      atomic_store(v1, &qword_28155E9A0);
    }
  }
}

uint64_t sub_25DD4C584(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25DD4C5EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_25DD1C68C;

  return sub_25DD4B878(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_25DD4C710(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_25DD1C68C;

  return sub_25DD4ABD8(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_25DD4C7F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25DD4C860(uint64_t a1)
{
  v2 = type metadata accessor for ClientError(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t UniversalServer.serverURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25DD96704();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t UniversalServer.serverURL.setter(uint64_t a1)
{
  v3 = sub_25DD96704();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t UniversalServer.middlewares.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);

  *(v2 + v4) = a1;
  return result;
}

uint64_t sub_25DD4CB48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_25DD96704();
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  v15 = type metadata accessor for UniversalServer(0, a5, v13, v14);
  v16 = a6 + v15[7];
  v17 = *(a2 + 16);
  *v16 = *a2;
  *(v16 + 16) = v17;
  v18 = *(a2 + 80);
  *(v16 + 64) = *(a2 + 64);
  *(v16 + 80) = v18;
  v19 = *(a2 + 48);
  *(v16 + 32) = *(a2 + 32);
  *(v16 + 48) = v19;
  *(v16 + 144) = *(a2 + 144);
  v20 = *(a2 + 128);
  *(v16 + 112) = *(a2 + 112);
  *(v16 + 128) = v20;
  *(v16 + 96) = *(a2 + 96);
  result = (*(*(a5 - 8) + 32))(a6 + v15[8], a3, a5);
  *(a6 + v15[9]) = a4;
  return result;
}

uint64_t UniversalServer.init(serverURL:handler:configuration:middlewares:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_25DD96704();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v17[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v13 + 16))(v15, a1, v12);
  sub_25DD19D54(a3, v17);
  Converter.init(configuration:)(v17, v18);
  sub_25DD1A5C0(a3);
  (*(v13 + 8))(a1, v12);
  return sub_25DD4CB48(v15, v18, a2, a4, a5, a6);
}

uint64_t UniversalServer.handle<A, B>(request:requestBody:metadata:forOperation:using:deserializer:serializer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 208) = v23;
  *(v9 + 216) = v8;
  *(v9 + 192) = v21;
  *(v9 + 200) = v22;
  *(v9 + 176) = v19;
  *(v9 + 184) = v20;
  *(v9 + 160) = v18;
  *(v9 + 144) = a7;
  *(v9 + 152) = a8;
  *(v9 + 128) = a5;
  *(v9 + 136) = a6;
  *(v9 + 112) = a2;
  *(v9 + 120) = a3;
  *(v9 + 104) = a1;
  v11 = *(v21 - 8);
  *(v9 + 224) = v11;
  *(v9 + 232) = *(v11 + 64);
  *(v9 + 240) = swift_task_alloc();
  v12 = sub_25DD968B4();
  *(v9 + 248) = v12;
  v13 = *(v12 - 8);
  *(v9 + 256) = v13;
  *(v9 + 264) = *(v13 + 64);
  v14 = swift_task_alloc();
  v15 = *a4;
  *(v9 + 272) = v14;
  *(v9 + 280) = v15;

  return MEMORY[0x2822009F8](sub_25DD4CF08, 0, 0);
}

uint64_t sub_25DD4CF08()
{
  v69 = *(v0 + 280);
  v1 = *(v0 + 256);
  v2 = *(v0 + 240);
  v47 = *(v0 + 248);
  v48 = *(v0 + 272);
  v3 = *(v0 + 224);
  v4 = *(v0 + 232);
  v5 = *(v0 + 216);
  v49 = v2;
  v52 = v5;
  v6 = *(v0 + 192);
  v61 = *(v0 + 136);
  v58 = *(v0 + 128);
  v63 = *(v0 + 120);
  v7 = *(v0 + 264) + 7;
  v66 = *(v0 + 176);
  v54 = *(v0 + 144);
  v45 = *(v0 + 160);
  v46 = *(v0 + 200);
  v60 = *(v1 + 16);
  v60();
  (*(v3 + 16))(v2, v5, v6);
  v8 = *(v1 + 80);
  v9 = (v8 + 72) & ~v8;
  v44 = (v9 + v7) & 0xFFFFFFFFFFFFFFF8;
  v42 = v7;
  v43 = (v44 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v43 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (*(v3 + 80) + v10 + 16) & ~*(v3 + 80);
  v12 = (v4 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = swift_allocObject();
  v14 = *(v1 + 32);
  v57 = *(v6 + 16);
  *(v13 + 16) = v57;
  *(v13 + 24) = v46;
  *(v13 + 40) = v45;
  *(v13 + 56) = v58;
  *(v13 + 64) = v61;
  v59 = v14;
  v14(v13 + v9, v48, v47);
  *(v13 + v44) = v63;
  *(v13 + v43) = v69;
  *(v13 + v10) = v54;
  (*(v3 + 32))(v13 + v11, v49, v6);
  *(v13 + v12) = v66;
  v15 = *(v52 + *(v6 + 36));
  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = ~v8;
    v18 = *(v0 + 272);
    v70 = *(v0 + 280);
    v50 = *(v0 + 248);
    v67 = *(v0 + 128);
    v19 = *(v0 + 112);
    v20 = v16 - 1;
    v21 = v8 + 112;
    v22 = *(v0 + 120);
    v23 = v21 & v17;
    v64 = *(v0 + 136);
    v24 = ((v21 & v17) + v42) & 0xFFFFFFFFFFFFFFF8;
    v55 = *(v0 + 200);
    v62 = v15;
    sub_25DD08A7C(v15 + 40 * v16 - 8, v0 + 16);
    sub_25DCFE2FC((v0 + 16), v0 + 56);
    (v60)(v18, v19, v50);
    v25 = swift_allocObject();
    *(v25 + 16) = v57;
    *(v25 + 24) = v55;
    sub_25DCFE2FC((v0 + 56), v25 + 40);
    *(v25 + 80) = v67;
    *(v25 + 88) = v64;
    *(v25 + 96) = &unk_25DD9CC40;
    *(v25 + 104) = v13;
    v56 = v23;
    v59(v25 + v23, v18, v50);
    v51 = (v24 + 15) & 0xFFFFFFFFFFFFFFF8;
    v53 = v24;
    *(v25 + v24) = v22;
    *(v25 + v51) = v70;
    if (v16 != 1)
    {
      v26 = *(v0 + 280);
      v27 = *(v0 + 136);
      v28 = *(v62 + 16);

      if (v16 - 2 >= v28)
      {
LABEL_7:
        __break(1u);
      }

      else
      {
        v29 = v62 + 40 * v16 - 48;
        while (1)
        {
          v71 = v25;
          v30 = *(v0 + 272);
          v31 = *(v0 + 248);
          v32 = *(v0 + 128);
          v68 = *(v0 + 120);
          v33 = *(v0 + 112);
          v65 = *(v0 + 200);
          sub_25DD08A7C(v29, v0 + 16);
          sub_25DCFE2FC((v0 + 16), v0 + 56);
          (v60)(v30, v33, v31);
          v25 = swift_allocObject();
          *(v25 + 16) = v57;
          *(v25 + 24) = v65;
          sub_25DCFE2FC((v0 + 56), v25 + 40);
          *(v25 + 80) = v32;
          *(v25 + 88) = v27;
          *(v25 + 96) = &unk_25DD9CC50;
          *(v25 + 104) = v71;
          v59(v25 + v56, v30, v31);
          *(v25 + v53) = v68;
          *(v25 + v51) = v26;
          if (!--v20)
          {
            break;
          }

          v26 = *(v0 + 280);
          v27 = *(v0 + 136);
          v34 = *(v62 + 16);

          v29 -= 40;
          if (v20 > v34)
          {
            goto LABEL_7;
          }
        }
      }
    }

    v35 = *(v0 + 280);

    v36 = &unk_25DD9CC50;
    v13 = v25;
  }

  else
  {
    v35 = *(v0 + 280);
    v36 = &unk_25DD9CC40;
  }

  *(v0 + 288) = v13;
  *(v0 + 96) = v35;

  v72 = (v36 + *v36);
  v37 = swift_task_alloc();
  *(v0 + 296) = v37;
  *v37 = v0;
  v37[1] = sub_25DD4D4E4;
  v38 = *(v0 + 112);
  v39 = *(v0 + 120);
  v40 = *(v0 + 104);

  return v72(v40, v38, v39, v0 + 96);
}

uint64_t sub_25DD4D4E4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 304) = v1;

  if (v1)
  {
    v5 = sub_25DD4D68C;
  }

  else
  {
    *(v4 + 312) = a1;
    v5 = sub_25DD4D60C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25DD4D60C()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 312);

  return v1(v2);
}

uint64_t sub_25DD4D68C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25DD4D708(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[5] = type metadata accessor for ServerError(0);
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();
  v10 = (a2 + *a2);
  v8 = swift_task_alloc();
  v5[8] = v8;
  *v8 = v5;
  v8[1] = sub_25DD4D850;

  return v10(a1);
}

uint64_t sub_25DD4D850()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25DD4D998, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_25DD4D998()
{
  v1 = v0[9];
  v0[2] = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC21D8, &unk_25DD9BBB0);
  v3 = swift_dynamicCast();
  v4 = v0[9];
  if (v3)
  {
    v6 = v0[6];
    v5 = v0[7];
    MEMORY[0x25F8A43F0](v0[9]);
    sub_25DD41698(v5, v6);
    sub_25DD2D65C();
    swift_allocError();
    sub_25DD51960(v6, v7);
    swift_willThrow();
    sub_25DD416FC(v6);
    v8 = v0[2];
  }

  else
  {
    v9 = v0[3];
    MEMORY[0x25F8A43F0](v0[2]);
    v9(v4);
    swift_willThrow();
    v8 = v4;
  }

  MEMORY[0x25F8A43F0](v8);

  v10 = v0[1];

  return v10();
}

uint64_t sub_25DD4DAE0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v79 = a8;
  v82 = a7;
  v78 = a6;
  v81 = a5;
  v80 = a4;
  v85 = a1;
  v86 = a2;
  v77 = sub_25DD968B4();
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v88 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = a10;
  v87 = sub_25DD96F04();
  v89 = *(v87 - 8);
  v12 = MEMORY[0x28223BE20](v87);
  v14 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v75 = &v73 - v15;
  v84 = sub_25DD96F04();
  v83 = *(v84 - 8);
  v16 = MEMORY[0x28223BE20](v84);
  v18 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v73 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2558, &unk_25DD9C4D8);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v73 - v22;
  v24 = type metadata accessor for ServerError(0);
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v73 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v96 = a3;
  v28 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC21D8, &unk_25DD9BBB0);
  v29 = swift_dynamicCast();
  v30 = *(v25 + 56);
  if (v29)
  {
    v30(v23, 0, 1, v24);
    sub_25DD41698(v23, v27);
    v31 = *(v24 + 32);
    sub_25DD2CC78(&v27[v31], &v91);
    if (*(&v92 + 1))
    {
      sub_25DD0DD04(&v91, &v96);
      v33 = v89;
      v32 = v90;
      v34 = v75;
    }

    else
    {
      v41 = v83;
      v42 = v84;
      (*(v83 + 16))(v20, v85, v84);
      v43 = *(a9 - 8);
      v44 = (*(v43 + 48))(v20, 1, a9);
      v33 = v89;
      if (v44 == 1)
      {
        (*(v41 + 8))(v20, v42);
        v96 = 0u;
        v97 = 0u;
      }

      else
      {
        *(&v97 + 1) = a9;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v96);
        (*(v43 + 32))(boxed_opaque_existential_0, v20, a9);
      }

      v32 = v90;
      v34 = v75;
      if (*(&v92 + 1))
      {
        sub_25DD114CC(&v91, &qword_27FCC2200, &unk_25DD98EB0);
      }
    }

    sub_25DD0D564(&v96, &v27[v31]);
    v67 = *(v24 + 36);
    sub_25DD2CC78(&v27[v67], &v91);
    if (*(&v92 + 1))
    {
      sub_25DD0DD04(&v91, &v96);
LABEL_28:
      sub_25DD0D564(&v96, &v27[v67]);
      sub_25DD2D65C();
      v61 = swift_allocError();
      sub_25DD41698(v27, v71);
      return v61;
    }

    v68 = v87;
    (*(v33 + 16))(v34, v86, v87);
    v69 = *(v32 - 8);
    if ((*(v69 + 48))(v34, 1, v32) == 1)
    {
      (*(v33 + 8))(v34, v68);
      v96 = 0u;
      v97 = 0u;
      if (!*(&v92 + 1))
      {
        goto LABEL_28;
      }
    }

    else
    {
      *(&v97 + 1) = v32;
      v70 = __swift_allocate_boxed_opaque_existential_0(&v96);
      (*(v69 + 32))(v70, v34, v32);
      if (!*(&v92 + 1))
      {
        goto LABEL_28;
      }
    }

    sub_25DD114CC(&v91, &qword_27FCC2200, &unk_25DD98EB0);
    goto LABEL_28;
  }

  v30(v23, 1, 1, v24);
  sub_25DD114CC(v23, &qword_27FCC2558, &unk_25DD9C4D8);
  v95 = a3;
  v35 = a3;
  if (swift_dynamicCast())
  {
    v96 = v91;
    v97 = v92;
    v98 = v93;
    v99 = v94;
    v75 = sub_25DD2B858();
    v74 = v36;
    v37 = sub_25DD2B78C();
    sub_25DD2B824(&v96);
    v38 = v88;
    v39 = v89;
    if (v37)
    {
      a3 = v37;
    }

    else
    {
      v45 = v88;
      v46 = a3;
      v38 = v45;
    }
  }

  else
  {
    v92 = 0u;
    v93 = 0u;
    v91 = 0u;
    v94 = -1;
    sub_25DD114CC(&v91, &qword_27FCC2600, &unk_25DD9CCE0);
    v40 = a3;
    v74 = 0xE700000000000000;
    v75 = 0x6E776F6E6B6E55;
    v38 = v88;
    v39 = v89;
  }

  v47 = v79;
  (*(v76 + 16))(v38, v78, v77);
  v95 = v47;
  v48 = v83;
  v49 = v84;
  (*(v83 + 16))(v18, v85, v84);
  v50 = *(a9 - 8);
  if ((*(v50 + 48))(v18, 1, a9) == 1)
  {
    v51 = a3;
    v52 = *(v48 + 8);

    v52(v18, v49);
    v96 = 0u;
    v97 = 0u;
  }

  else
  {
    *(&v97 + 1) = a9;
    v53 = __swift_allocate_boxed_opaque_existential_0(&v96);
    (*(v50 + 32))(v53, v18, a9);
    v54 = a3;
  }

  v55 = v87;
  (*(v39 + 16))(v14, v86, v87);
  v56 = v90;
  v57 = *(v90 - 8);
  v58 = (*(v57 + 48))(v14, 1, v90);
  v59 = v88;
  if (v58 == 1)
  {
    (*(v39 + 8))(v14, v55);
    v91 = 0u;
    v92 = 0u;
  }

  else
  {
    *(&v92 + 1) = v56;
    v60 = __swift_allocate_boxed_opaque_existential_0(&v91);
    (*(v57 + 32))(v60, v14, v56);
  }

  sub_25DD2D65C();
  v61 = swift_allocError();
  v63 = v62;
  v64 = v82;

  v65 = v81;

  ServerError.init(operationID:request:requestBody:requestMetadata:operationInput:operationOutput:causeDescription:underlyingError:)(v80, v65, v59, v64, &v95, &v96, &v91, v75, v63, v74, a3);
  MEMORY[0x25F8A43F0](a3);
  return v61;
}

uint64_t sub_25DD4E45C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 144) = v19;
  *(v8 + 152) = v20;
  *(v8 + 136) = v18;
  *(v8 + 120) = v17;
  *(v8 + 104) = v16;
  *(v8 + 88) = v15;
  *(v8 + 72) = v14;
  *(v8 + 56) = a7;
  *(v8 + 64) = a8;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 16) = a1;
  *(v8 + 160) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2608, &qword_25DD9CC00);
  *(v8 + 168) = swift_task_alloc();
  *(v8 + 176) = *(v20 - 8);
  *(v8 + 184) = swift_task_alloc();
  *(v8 + 192) = *(v19 - 8);
  v10 = swift_task_alloc();
  v11 = *a4;
  *(v8 + 200) = v10;
  *(v8 + 208) = v11;

  return MEMORY[0x2822009F8](sub_25DD4E5E4, 0, 0);
}

uint64_t sub_25DD4E5E4()
{
  v1 = *(v0 + 208);
  v3 = *(v0 + 144);
  v2 = *(v0 + 152);
  v4 = *(v0 + 136);
  v6 = *(v0 + 80);
  v5 = *(v0 + 88);
  v7 = *(v0 + 56);
  v15 = *(v0 + 24);
  v8 = swift_task_alloc();
  *(v0 + 216) = v8;
  v14 = *(v0 + 40);
  v9 = swift_task_alloc();
  v10 = *(v0 + 64);
  *(v8 + 16) = v4;
  *(v8 + 24) = v3;
  *(v8 + 32) = v2;
  *(v8 + 40) = v14;
  *(v8 + 56) = v15;
  *(v8 + 72) = v1;
  *(v0 + 224) = v9;
  *(v9 + 16) = v4;
  *(v9 + 24) = v3;
  *(v9 + 32) = v2;
  *(v9 + 40) = v7;
  *(v9 + 48) = v10;
  *(v9 + 64) = v6;
  *(v9 + 72) = v5;
  v11 = swift_task_alloc();
  *(v0 + 232) = v11;
  *v11 = v0;
  v11[1] = sub_25DD4E73C;
  v12 = *(v0 + 200);

  return sub_25DD4D708(v12, dword_25DD9CCF8, v8, sub_25DD51A90, v9);
}

uint64_t sub_25DD4E73C()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_25DD4EE9C;
  }

  else
  {

    v2 = sub_25DD4E860;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25DD4E860()
{
  v1 = *(v0 + 200);
  v3 = *(v0 + 144);
  v2 = *(v0 + 152);
  v4 = *(v0 + 136);
  v16 = v4;
  v17 = *(v0 + 112);
  v5 = *(v0 + 88);
  v18 = *(v0 + 80);
  v7 = *(v0 + 64);
  v6 = *(v0 + 72);
  v8 = *(v0 + 56);
  v9 = swift_task_alloc();
  *(v0 + 248) = v9;
  v10 = *(v0 + 96);
  *(v9 + 16) = v4;
  *(v9 + 24) = v3;
  *(v9 + 32) = v2;
  *(v9 + 40) = v10;
  *(v9 + 56) = v17;
  *(v9 + 64) = v1;
  *(v9 + 72) = v8;
  *(v9 + 80) = v7;
  v11 = v8;
  *(v9 + 88) = v6;
  *(v9 + 96) = v18;
  *(v9 + 104) = v5;
  v12 = swift_task_alloc();
  *(v0 + 256) = v12;
  v12[2] = v16;
  v12[3] = v3;
  v12[4] = v2;
  v12[5] = v11;
  v12[6] = v7;
  v12[7] = v6;
  v12[8] = v18;
  v12[9] = v5;
  v12[10] = v1;
  v13 = swift_task_alloc();
  *(v0 + 264) = v13;
  *v13 = v0;
  v13[1] = sub_25DD4E9D8;
  v14 = *(v0 + 184);

  return sub_25DD4D708(v14, dword_25DD9CD08, v9, sub_25DD51BAC, v12);
}

uint64_t sub_25DD4E9D8()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_25DD4EF30;
  }

  else
  {

    v2 = sub_25DD4EAFC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25DD4EAFC()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 184);
  v4 = *(v0 + 144);
  v3 = *(v0 + 152);
  v5 = *(v0 + 136);
  v15 = *(v0 + 80);
  v6 = *(v0 + 56);
  v7 = *(v0 + 24);
  v8 = swift_task_alloc();
  *(v0 + 280) = v8;
  v14 = *(v0 + 120);
  v9 = swift_task_alloc();
  v10 = *(v0 + 64);
  *(v8 + 16) = v5;
  *(v8 + 24) = v4;
  *(v8 + 32) = v3;
  *(v8 + 40) = v14;
  *(v8 + 56) = v2;
  *(v8 + 64) = v7;
  *(v0 + 288) = v9;
  *(v9 + 16) = v5;
  *(v9 + 24) = v4;
  *(v9 + 32) = v3;
  *(v9 + 40) = v6;
  *(v9 + 48) = v10;
  *(v9 + 64) = v15;
  *(v9 + 80) = v1;
  *(v9 + 88) = v2;
  v11 = swift_task_alloc();
  *(v0 + 296) = v11;
  *v11 = v0;
  v11[1] = sub_25DD4EC58;
  v12 = *(v0 + 168);

  return sub_25DD4D708(v12, dword_25DD9CD18, v8, sub_25DD51C84, v9);
}

uint64_t sub_25DD4EC58()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_25DD4EFE4;
  }

  else
  {

    v2 = sub_25DD4ED7C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25DD4ED7C()
{
  v2 = v0[24];
  v1 = v0[25];
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[21];
  v7 = v0[18];
  v6 = v0[19];
  v8 = v0[2];
  v9 = *(v5 + *(v0[20] + 48));
  v10 = sub_25DD96984();
  (*(*(v10 - 8) + 32))(v8, v5, v10);
  (*(v4 + 8))(v3, v6);
  (*(v2 + 8))(v1, v7);

  v11 = v0[1];

  return v11(v9);
}

uint64_t sub_25DD4EE9C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25DD4EF30()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[18];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_25DD4EFE4()
{
  v2 = v0[24];
  v1 = v0[25];
  v4 = v0[22];
  v3 = v0[23];
  v6 = v0[18];
  v5 = v0[19];

  (*(v4 + 8))(v3, v5);
  (*(v2 + 8))(v1, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_25DD4F0C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = v4[2];
  sub_25DD968B4();
  type metadata accessor for UniversalServer(0, v6, v7, v8);
  v13 = v4[6];
  v14 = v4[5];
  v11 = v4[8];
  v12 = v4[7];
  v9 = swift_task_alloc();
  *(v5 + 16) = v9;
  *v9 = v5;
  v9[1] = sub_25DD3DB34;

  return sub_25DD4E45C(a1, a2, a3, a4, v14, v13, v12, v11);
}

uint64_t sub_25DD4F2D0(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 16) = a6;
  v12 = (a2 + *a2);
  v10 = swift_task_alloc();
  *(v6 + 24) = v10;
  *v10 = v6;
  v10[1] = sub_25DD4F3F8;

  return v12(a1, a4, a5, v6 + 16);
}

uint64_t sub_25DD4F3F8()
{
  v2 = *v1;
  *(v2 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25DD4F52C, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_25DD4F544(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = a5;
  v25 = a6;
  v22 = a3;
  v23 = a4;
  v12 = sub_25DD96F04();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v22 - v14;
  v16 = sub_25DD96F04();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v22 - v18;
  (*(*(a7 - 8) + 56))(&v22 - v18, 1, 1, a7);
  (*(*(a8 - 8) + 56))(v15, 1, 1, a8);
  v20 = sub_25DD4DAE0(v19, v15, a1, a2, v22, v23, v24, v25, a7, a8);
  (*(v13 + 8))(v15, v12);
  (*(v17 + 8))(v19, v16);
  return v20;
}

uint64_t sub_25DD4F75C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 112) = v12;
  *(v8 + 80) = v10;
  *(v8 + 96) = v11;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  return MEMORY[0x2822009F8](sub_25DD4F79C, 0, 0);
}

uint64_t sub_25DD4F79C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 104);
  v5 = *(v4 + 112);
  v7 = *(v4 + 96);
  v24 = *(v4 + 88);
  v8 = *(v4 + 80);
  v9 = *(v4 + 48);
  v10 = *(v4 + 56);
  v11 = *(v4 + 40);
  v12 = *(v4 + 24);
  v13 = type metadata accessor for UniversalServer(0, v7, a3, a4);
  v22 = *(v4 + 64);
  v14 = v12(v11 + *(v13 + 32));
  v16 = v15;
  *(v4 + 120) = v15;
  v17 = swift_task_alloc();
  *(v4 + 128) = v17;
  v17[2] = v7;
  v17[3] = v6;
  v17[4] = v5;
  v17[5] = v14;
  v17[6] = v16;
  v17[7] = v9;
  v18 = swift_task_alloc();
  *(v4 + 136) = v18;
  *(v18 + 16) = v7;
  *(v18 + 24) = v6;
  *(v18 + 32) = v5;
  *(v18 + 40) = v10;
  *(v18 + 48) = v22;
  *(v18 + 64) = v8;
  *(v18 + 72) = v24;
  *(v18 + 80) = v9;
  v19 = swift_task_alloc();
  *(v4 + 144) = v19;
  *v19 = v4;
  v19[1] = sub_25DD4F918;
  v20 = *(v4 + 16);

  return sub_25DD4D708(v20, &unk_25DD9CD28, v17, sub_25DD51D70, v18);
}

uint64_t sub_25DD4F918()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_25DD4FAA0;
  }

  else
  {

    v2 = sub_25DD4FA3C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25DD4FA3C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25DD4FAA0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25DD4FB18(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v9 = (a2 + *a2);
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_25DD1BF14;

  return v9(a1, a4);
}

uint64_t sub_25DD4FC20(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v29 = a5;
  v30 = a6;
  v27 = a3;
  v28 = a4;
  v25 = a2;
  v26 = sub_25DD96F04();
  v12 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v14 = &v25 - v13;
  v15 = sub_25DD96F04();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v25 - v17;
  v19 = *(a8 - 8);
  (*(v19 + 16))(&v25 - v17, a7, a8);
  (*(v19 + 56))(v18, 0, 1, a8);
  (*(*(a9 - 8) + 56))(v14, 1, 1, a9);
  sub_25DD01034();
  v20 = swift_allocError();
  *v21 = a1;
  *(v21 + 48) = 17;
  v22 = a1;
  v23 = sub_25DD4DAE0(v18, v14, v20, v25, v27, v28, v29, v30, a8, a9);
  (*(v12 + 8))(v14, v26);
  (*(v16 + 8))(v18, v15);
  MEMORY[0x25F8A43F0](v20);
  return v23;
}

uint64_t sub_25DD4FEA8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v26 = a5;
  v27 = a6;
  v24 = a3;
  v25 = a4;
  v22 = a1;
  v23 = a2;
  v11 = sub_25DD96F04();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - v13;
  v15 = sub_25DD96F04();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v22 - v17;
  v19 = *(a8 - 8);
  (*(v19 + 16))(&v22 - v17, a7, a8);
  (*(v19 + 56))(v18, 0, 1, a8);
  (*(*(a9 - 8) + 56))(v14, 1, 1, a9);
  v20 = sub_25DD4DAE0(v18, v14, v22, v23, v24, v25, v26, v27, a8, a9);
  (*(v12 + 8))(v14, v11);
  (*(v16 + 8))(v18, v15);
  return v20;
}

uint64_t sub_25DD500EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_25DD50114, 0, 0);
}

uint64_t sub_25DD50114()
{
  v1 = (*(v0 + 24))(*(v0 + 16), *(v0 + 40), *(v0 + 48));
  v2 = *(v0 + 16);
  *(v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2608, &qword_25DD9CC00) + 48)) = v1;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_25DD501C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v24 = a8;
  v25 = a1;
  v29 = a5;
  v30 = a6;
  v27 = a3;
  v28 = a4;
  v26 = a2;
  v11 = sub_25DD96F04();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v23 - v13;
  v15 = sub_25DD96F04();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v23 - v17;
  v19 = *(a9 - 8);
  (*(v19 + 16))(&v23 - v17, a7, a9);
  (*(v19 + 56))(v18, 0, 1, a9);
  v20 = *(a10 - 8);
  (*(v20 + 16))(v14, v24, a10);
  (*(v20 + 56))(v14, 0, 1, a10);
  v21 = sub_25DD4DAE0(v18, v14, v25, v26, v27, v28, v29, v30, a9, a10);
  (*(v12 + 8))(v14, v11);
  (*(v16 + 8))(v18, v15);
  return v21;
}

uint64_t sub_25DD5043C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 120) = v17;
  *(v8 + 104) = v16;
  *(v8 + 88) = v15;
  *(v8 + 72) = v14;
  *(v8 + 56) = a7;
  *(v8 + 64) = a8;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 16) = a1;
  *(v8 + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2608, &qword_25DD9CC00);
  v10 = swift_task_alloc();
  v11 = *a4;
  *(v8 + 136) = v10;
  *(v8 + 144) = v11;

  return MEMORY[0x2822009F8](sub_25DD50510, 0, 0);
}

uint64_t sub_25DD50510()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 120);
  v3 = *(v0 + 96);
  v4 = *(v0 + 72);
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  v14 = *(v0 + 24);
  v15 = *(v0 + 80);
  v7 = swift_task_alloc();
  *(v0 + 152) = v7;
  v13 = *(v0 + 56);
  v8 = swift_task_alloc();
  v9 = *(v0 + 104);
  *(v7 + 16) = v6;
  *(v7 + 24) = v14;
  *(v7 + 40) = v1;
  *(v7 + 48) = v5;
  *(v7 + 56) = v13;
  *(v7 + 72) = v4;
  *(v0 + 160) = v8;
  *(v8 + 16) = v9;
  *(v8 + 32) = v2;
  *(v8 + 40) = v5;
  *(v8 + 48) = v13;
  *(v8 + 56) = v15;
  *(v8 + 72) = v3;
  *(v8 + 80) = v6;
  v10 = swift_task_alloc();
  *(v0 + 168) = v10;
  *v10 = v0;
  v10[1] = sub_25DD50674;
  v11 = *(v0 + 136);

  return sub_25DD4D708(v11, dword_25DD9CCD0, v7, sub_25DD5192C, v8);
}

uint64_t sub_25DD50674()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_25DD50854;
  }

  else
  {

    v2 = sub_25DD50798;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25DD50798()
{
  v1 = v0[17];
  v2 = v0[2];
  v3 = *(v1 + *(v0[16] + 48));
  v4 = sub_25DD96984();
  (*(*(v4 - 8) + 32))(v2, v1, v4);

  v5 = v0[1];

  return v5(v3);
}

uint64_t sub_25DD50854()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25DD508CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_25DD968B4();
  v6 = v4[10];
  v7 = v4[11];
  v8 = v4[12];
  v9 = swift_task_alloc();
  *(v5 + 16) = v9;
  *v9 = v5;
  v9[1] = sub_25DD3D8CC;

  return sub_25DD5043C(a1, a2, a3, a4, (v4 + 5), v6, v7, v8);
}

uint64_t sub_25DD50A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a8;
  v8[11] = v10;
  v8[8] = a6;
  v8[9] = a7;
  v8[6] = a4;
  v8[7] = a5;
  v8[4] = a2;
  v8[5] = a3;
  v8[3] = a1;
  return MEMORY[0x2822009F8](sub_25DD50A80, 0, 0);
}

void sub_25DD50A80()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  v0[2] = v1;
  v5 = *(v3 + 8) + **(v3 + 8);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_25DD50BD4;

  __asm { BRAA            X8, X16 }
}

uint64_t sub_25DD50BD4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v5 = sub_25DD50D3C;
  }

  else
  {
    *(v4 + 112) = a1;
    *(v4 + 120) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2608, &qword_25DD9CC00) + 48);
    v5 = sub_25DD50D14;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25DD50D54(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  v30 = a5;
  v31 = a6;
  v28 = a3;
  v29 = a4;
  v25 = a1;
  v26 = a2;
  v27 = sub_25DD96F04();
  v11 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v13 = &v24 - v12;
  v24 = sub_25DD96F04();
  v14 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v16 = &v24 - v15;
  (*(*(a8 - 8) + 56))(&v24 - v15, 1, 1, a8);
  (*(*(a9 - 8) + 56))(v13, 1, 1, a9);
  sub_25DD01034();
  v17 = swift_allocError();
  v19 = v18;
  __swift_project_boxed_opaque_existential_1(a7, a7[3]);
  *v19 = swift_getDynamicType();
  v20 = v25;
  *(v19 + 8) = v25;
  *(v19 + 48) = 16;
  v21 = v20;
  v22 = sub_25DD4DAE0(v16, v13, v17, v26, v28, v29, v30, v31, a8, a9);
  (*(v11 + 8))(v13, v27);
  (*(v14 + 8))(v16, v24);
  MEMORY[0x25F8A43F0](v17);
  return v22;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> UniversalServer.apiPathComponentsWithServerPrefix(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2610, &qword_25DD9CC58);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v20 - v4;
  v6 = sub_25DD96624();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25DD96604();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_25DD114CC(v5, &qword_27FCC2610, &qword_25DD9CC58);
    sub_25DD01034();
    swift_allocError();
    countAndFlagsBits = v10;
    *v10 = sub_25DD966E4();
    *(countAndFlagsBits + 8) = v11;
    *(countAndFlagsBits + 48) = 0;
    swift_willThrow();
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v12 = sub_25DD96614();
    v14 = v13;
    v15 = v12 == 47 && v13 == 0xE100000000000000;
    if (v15 || (v16 = v12, (sub_25DD975D4() & 1) != 0))
    {
      (*(v7 + 8))(v9, v6);
    }

    else
    {
      v20 = v16;
      v21 = v14;

      MEMORY[0x25F8A3200](countAndFlagsBits, object);

      countAndFlagsBits = v20;
      object = v21;
      (*(v7 + 8))(v9, v6);
    }
  }

  v17 = countAndFlagsBits;
  v18 = object;
  result._object = v18;
  result._countAndFlagsBits = v17;
  return result;
}

void sub_25DD51234(uint64_t a1)
{
  sub_25DD96704();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_25DD517DC(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_25DD512DC(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_25DD96704();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v7 + 64);
  v11 = *(v9 + 80);
  if (v8 <= *(v9 + 84))
  {
    v12 = *(v9 + 84);
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  if (v13 >= a2)
  {
    goto LABEL_30;
  }

  v14 = ((*(v9 + 64) + ((v11 + ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 152) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v15 = v14 & 0xFFFFFFF8;
  if ((v14 & 0xFFFFFFF8) != 0)
  {
    v16 = 2;
  }

  else
  {
    v16 = a2 - v13 + 1;
  }

  if (v16 >= 0x10000)
  {
    v17 = 4;
  }

  else
  {
    v17 = 2;
  }

  if (v16 < 0x100)
  {
    v17 = 1;
  }

  if (v16 >= 2)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18 > 1)
  {
    if (v18 == 2)
    {
      v19 = *(a1 + v14);
      if (!v19)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v19 = *(a1 + v14);
      if (!v19)
      {
        goto LABEL_30;
      }
    }

LABEL_27:
    v21 = v19 - 1;
    if (v15)
    {
      v21 = 0;
      v22 = *a1;
    }

    else
    {
      v22 = 0;
    }

    return v13 + (v22 | v21) + 1;
  }

  if (v18)
  {
    v19 = *(a1 + v14);
    if (v19)
    {
      goto LABEL_27;
    }
  }

LABEL_30:
  if (v8 == v13)
  {
    v23 = *(v7 + 48);

    return v23(a1, v8, v6);
  }

  else
  {
    v24 = (a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
    if ((v12 & 0x80000000) != 0)
    {
      v26 = *(v9 + 48);

      return v26((v24 + v11 + 152) & ~v11);
    }

    else
    {
      v25 = *(v24 + 24);
      if (v25 >= 0xFFFFFFFF)
      {
        LODWORD(v25) = -1;
      }

      return (v25 + 1);
    }
  }
}

double sub_25DD51520(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_25DD96704();
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  v12 = *(*(a4 + 16) - 8);
  v13 = *(v10 + 64);
  v14 = *(v12 + 80);
  if (v11 <= *(v12 + 84))
  {
    v15 = *(v12 + 84);
  }

  else
  {
    v15 = *(v10 + 84);
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  v17 = ((*(v12 + 64) + ((v14 + ((v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 152) & ~v14) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v16 >= a3)
  {
    v20 = 0;
    v21 = a2 - v16;
    if (a2 <= v16)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (((*(v12 + 64) + ((v14 + ((v13 + 7) & 0xFFFFFFF8) + 152) & ~v14) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v18 = a3 - v16 + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = a2 - v16;
    if (a2 <= v16)
    {
LABEL_20:
      if (v20 > 1)
      {
        if (v20 != 2)
        {
          *(a1 + v17) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_36;
        }

        *(a1 + v17) = 0;
      }

      else if (v20)
      {
        *(a1 + v17) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_36;
      }

      if (!a2)
      {
        return result;
      }

LABEL_36:
      if (v11 == v16)
      {
        v24 = *(v10 + 56);

        v24(a1, a2, v11, v8);
      }

      else
      {
        v25 = (a1 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
        if ((v15 & 0x80000000) != 0)
        {
          v26 = *(v12 + 56);

          v26((v25 + v14 + 152) & ~v14, a2);
        }

        else if ((a2 & 0x80000000) != 0)
        {
          result = 0.0;
          *(v25 + 136) = 0u;
          *(v25 + 120) = 0u;
          *(v25 + 104) = 0u;
          *(v25 + 88) = 0u;
          *(v25 + 72) = 0u;
          *(v25 + 56) = 0u;
          *(v25 + 40) = 0u;
          *(v25 + 24) = 0u;
          *(v25 + 8) = 0u;
          *v25 = a2 & 0x7FFFFFFF;
        }

        else
        {
          *(v25 + 24) = (a2 - 1);
        }
      }

      return result;
    }
  }

  if (((*(v12 + 64) + ((v14 + ((v13 + 7) & 0xFFFFFFF8) + 152) & ~v14) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v22 = v21;
  }

  else
  {
    v22 = 1;
  }

  if (((*(v12 + 64) + ((v14 + ((v13 + 7) & 0xFFFFFFF8) + 152) & ~v14) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v23 = ~v16 + a2;
    bzero(a1, v17);
    *a1 = v23;
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      *(a1 + v17) = v22;
    }

    else
    {
      *(a1 + v17) = v22;
    }
  }

  else if (v20)
  {
    *(a1 + v17) = v22;
  }

  return result;
}

void sub_25DD517DC(uint64_t a1)
{
  if (!qword_27FCC2618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCC2620, qword_25DD9CCA8);
    v1 = sub_25DD96D84();
    if (!v2)
    {
      atomic_store(v1, &qword_27FCC2618);
    }
  }
}

uint64_t sub_25DD51840(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_25DD1BF14;

  return sub_25DD50A48(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_25DD51960(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ServerError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25DD519C4(uint64_t a1)
{
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[8];
  v8 = v1[9];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25DD1C68C;

  return sub_25DD4F2D0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_25DD51AA4(uint64_t a1)
{
  v3 = v1[5];
  v4 = v1[6];
  v5 = v1[7];
  v6 = v1[8];
  v7 = v1[9];
  v8 = v1[10];
  v9 = v1[11];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_25DD1C68C;

  return sub_25DD4F75C(a1, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_25DD51BC4(uint64_t a1)
{
  v4 = v1[5];
  v5 = v1[6];
  v7 = v1[7];
  v6 = v1[8];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25DD1C68C;

  return sub_25DD500EC(a1, v4, v5, v7, v6);
}

uint64_t sub_25DD51CBC(uint64_t a1)
{
  v4 = v1[5];
  v5 = v1[6];
  v6 = v1[7];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25DD1C68C;

  return sub_25DD4FB18(a1, v4, v5, v6);
}

void *static MultipartBoundaryGenerator<>.random.getter@<X0>(void *a1@<X8>)
{
  result = sub_25DD00E5C(10, 0);
  qmemcpy(result + 4, "0123456789", 10);
  *a1 = 0xD000000000000012;
  a1[1] = 0x800000025DDAACD0;
  a1[2] = 20;
  a1[3] = result;
  return result;
}

void *RandomMultipartBoundaryGenerator.init(boundaryPrefix:randomNumberSuffixLength:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = sub_25DD00E5C(10, 0);
  qmemcpy(result + 4, "0123456789", 10);
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
  a4[3] = result;
  return result;
}

Swift::String __swiftcall ConstantMultipartBoundaryGenerator.makeBoundary()()
{
  v1 = *v0;
  v2 = v0[1];

  v3 = v1;
  v4 = v2;
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t RandomMultipartBoundaryGenerator.boundaryPrefix.getter()
{
  v1 = *v0;

  return v1;
}

void *sub_25DD51F64()
{
  result = sub_25DD00E5C(10, 0);
  qmemcpy(result + 4, "0123456789", 10);
  return result;
}

Swift::String __swiftcall RandomMultipartBoundaryGenerator.makeBoundary()()
{
  v1 = *(v0 + 16);
  if ((v1 & 0x8000000000000000) != 0)
  {
    goto LABEL_18;
  }

  v2 = *(v0 + 24);
  if (v1)
  {
    v3 = sub_25DD96D64();
    *(v3 + 16) = v1;
    v4 = (v3 + 16);
    bzero((v3 + 32), v1);
LABEL_5:
    v7 = *(v2 + 16);
    if (!v7)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v8 = 0;
    v9 = -v7 % v7;
    while (1)
    {
      v18[0] = 0;
      v5 = MEMORY[0x25F8A4630](v18, 8);
      v10 = (v18[0] * v7) >> 64;
      if (v7 > v18[0] * v7 && v9 > v18[0] * v7)
      {
        do
        {
          v18[0] = 0;
          v5 = MEMORY[0x25F8A4630](v18, 8);
        }

        while (v9 > v18[0] * v7);
        v10 = (v18[0] * v7) >> 64;
      }

      if (v10 >= *(v2 + 16))
      {
        break;
      }

      if (v8 >= *v4)
      {
        goto LABEL_17;
      }

      *(v3 + 32 + v8++) = *(v2 + 32 + v10);
      if (v8 == v1)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v3 = MEMORY[0x277D84F90];
  v4 = (MEMORY[0x277D84F90] + 16);
  v1 = *(MEMORY[0x277D84F90] + 16);
  if (v1)
  {
    goto LABEL_5;
  }

LABEL_14:

  v11 = sub_25DD96B74();
  v13 = v12;

  v18[0] = v11;
  v18[1] = v13;
  v16 = sub_25DD96C94();
  v17 = v14;
  sub_25DD96BD4();

  v5 = v16;
  v6 = v17;
LABEL_20:
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t sub_25DD52198(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_25DD521E0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t _s22OpenAPIRuntimeInternal13MultipartPartV8filenameSSSgvg_0(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 36));

  return v2;
}

uint64_t _s22OpenAPIRuntimeInternal13MultipartPartV8filenameSSSgvs_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 36));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t sub_25DD52308@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(*(a4 - 8) + 32))(a6, a1, a4);
  result = type metadata accessor for MultipartBytesToFramesSequence(0, a4, a5, v11);
  v13 = (a6 + *(result + 36));
  *v13 = a2;
  v13[1] = a3;
  return result;
}

uint64_t sub_25DD523B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 16);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v8 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v20 - v13;
  (*(v7 + 16))(v10, v3, v6);
  sub_25DD96DF4();
  v15 = (v3 + *(a1 + 36));
  v16 = *v15;
  v17 = v15[1];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  return sub_25DD52558(v14, v16, v17, v6, AssociatedTypeWitness, v11, AssociatedConformanceWitness, a2);
}

uint64_t sub_25DD52558@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = *(a5 - 8);
  (*(v16 + 16))(a8, a1, a5);
  v19[0] = a4;
  v19[1] = a5;
  v19[2] = a6;
  v19[3] = a7;
  v17 = type metadata accessor for MultipartBytesToFramesSequence.Iterator(0, v19);
  sub_25DD53738(a2, a3, (a8 + *(v17 + 52)));
  return (*(v16 + 8))(a1, a5);
}

uint64_t sub_25DD52678(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_25DD5269C, 0, 0);
}

uint64_t sub_25DD5269C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = *(v2 + 16);
  *(v3 + 24) = *(v2 + 24);
  *(v3 + 40) = *(v2 + 40);
  *(v3 + 48) = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_25DD52784;
  v5 = v0[2];

  return sub_25DD52B04(v5, &unk_25DD9CE50, v3);
}

uint64_t sub_25DD52784()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25DD528C0, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_25DD528C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25DD52924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_task_alloc();
  *(v5 + 48) = v8;
  *v8 = v5;
  v8[1] = sub_25DD529D8;

  return MEMORY[0x282200308](v5 + 16, a3, a5);
}

uint64_t sub_25DD529D8()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_25DD52AEC;
  }

  else
  {
    v2 = sub_25DD456B8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25DD52B04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  type metadata accessor for MultipartParser.StateMachine.State.PartState(0);
  v4[8] = swift_task_alloc();
  v4[9] = type metadata accessor for MultipartParser.StateMachine.State(0);
  v4[10] = swift_task_alloc();
  v4[11] = type metadata accessor for MultipartParser.StateMachine.ReadNextPartAction(0);
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25DD52BF8, 0, 0);
}

uint64_t sub_25DD52BF8()
{
  do
  {
    sub_25DD539C4(*(v0 + 96));
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  }

  while (EnumCaseMultiPayload == 3);
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v4 = **(v0 + 96);
      sub_25DD559E4();
      swift_allocError();
      *v5 = v4;
      swift_willThrow();

      v6 = *(v0 + 8);
LABEL_14:

      return v6();
    }

    v13 = *(v0 + 96);
    v14 = *(v0 + 32);
    v15 = sub_25DD96814();
    (*(*(v15 - 8) + 32))(v14, v13, v15);
    v16 = type metadata accessor for MultipartFrame(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v16 - 8) + 56))(v14, 0, 1, v16);
LABEL_13:

    v6 = *(v0 + 8);
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v7 = *(v0 + 96);
    v8 = *(v0 + 32);
    v9 = v7[1];
    *v8 = *v7;
    v8[1] = v9;
    v10 = type metadata accessor for MultipartFrame(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload == 4)
  {
    v2 = *(v0 + 32);
    v3 = type metadata accessor for MultipartFrame(0);
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
    goto LABEL_13;
  }

  v17 = (*(v0 + 40) + **(v0 + 40));
  v11 = swift_task_alloc();
  *(v0 + 104) = v11;
  *v11 = v0;
  v11[1] = sub_25DD52F14;

  return v17();
}

uint64_t sub_25DD52F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v5;
  v6[14] = a1;
  v6[15] = a2;
  v6[16] = a3;
  v6[17] = a4;
  v6[18] = v4;

  if (v4)
  {
    v7 = sub_25DD535AC;
  }

  else
  {
    v7 = sub_25DD53030;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_25DD53030()
{
  sub_25DD57530(*(v0 + 56), *(v0 + 80), type metadata accessor for MultipartParser.StateMachine.State);
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    if (result != 2)
    {
      __break(1u);
      return result;
    }

    if (!*(v0 + 112))
    {
      goto LABEL_15;
    }

    v7 = 4;
LABEL_20:
    sub_25DD559E4();
    swift_allocError();
    *v25 = v7;
    swift_willThrow();
    swift_unknownObjectRelease();
    goto LABEL_26;
  }

  if (result)
  {
    v8 = *(v0 + 112);
    v9 = *(v0 + 80);
    v10 = *(v0 + 64);
    v11 = *v9;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2630, &unk_25DD9CE60);
    v13 = *(v12 + 48);
    *(v0 + 16) = v11;
    sub_25DD55A38(v9 + v13, v10);
    if (v8)
    {
      v15 = *(v0 + 128);
      v14 = *(v0 + 136);
      v17 = *(v0 + 112);
      v16 = *(v0 + 120);
      v36 = *(v0 + 64);
      v18 = *(v0 + 56);
      swift_unknownObjectRetain();
      sub_25DD55A9C(v18, type metadata accessor for MultipartParser.StateMachine.State);
      swift_storeEnumTagMultiPayload();
      sub_25DD2EBA0(v17, v16, v15, v14);
      swift_unknownObjectRelease();
      sub_25DD55A9C(v18, type metadata accessor for MultipartParser.StateMachine.State);
      v19 = *(v12 + 48);
      *v18 = *(v0 + 16);
      sub_25DD55A38(v36, v18 + v19);
      goto LABEL_10;
    }

    sub_25DD55A9C(*(v0 + 64), type metadata accessor for MultipartParser.StateMachine.State.PartState);
    goto LABEL_19;
  }

  v2 = *(v0 + 112);
  *(v0 + 24) = **(v0 + 80);
  if (!v2)
  {
LABEL_19:

    v7 = 5;
    goto LABEL_20;
  }

  v4 = *(v0 + 128);
  v3 = *(v0 + 136);
  v5 = *(v0 + 120);
  v6 = *(v0 + 56);
  swift_unknownObjectRetain();
  sub_25DD55A9C(v6, type metadata accessor for MultipartParser.StateMachine.State);
  swift_storeEnumTagMultiPayload();
  sub_25DD2EBA0(v2, v5, v4, v3);
  swift_unknownObjectRelease();
  sub_25DD55A9C(v6, type metadata accessor for MultipartParser.StateMachine.State);
  *v6 = *(v0 + 24);
LABEL_10:
  swift_storeEnumTagMultiPayload();
  do
  {
    sub_25DD539C4(*(v0 + 96));
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  }

  while (EnumCaseMultiPayload == 3);
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v31 = *(v0 + 96);
      v32 = *(v0 + 32);
      v33 = sub_25DD96814();
      (*(*(v33 - 8) + 32))(v32, v31, v33);
      v34 = type metadata accessor for MultipartFrame(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v34 - 8) + 56))(v32, 0, 1, v34);
    }

    else
    {
      v23 = **(v0 + 96);
      sub_25DD559E4();
      swift_allocError();
      *v24 = v23;
      swift_willThrow();
    }

LABEL_26:

    v35 = *(v0 + 8);

    return v35();
  }

  if (EnumCaseMultiPayload == 2)
  {
    v26 = *(v0 + 96);
    v27 = *(v0 + 32);
    v28 = v26[1];
    *v27 = *v26;
    v27[1] = v28;
    v29 = type metadata accessor for MultipartFrame(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v29 - 8) + 56))(v27, 0, 1, v29);
    goto LABEL_26;
  }

  if (EnumCaseMultiPayload == 4)
  {
LABEL_15:
    v21 = *(v0 + 32);
    v22 = type metadata accessor for MultipartFrame(0);
    (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
    goto LABEL_26;
  }

  v37 = (*(v0 + 40) + **(v0 + 40));
  v30 = swift_task_alloc();
  *(v0 + 104) = v30;
  *v30 = v0;
  v30[1] = sub_25DD52F14;

  return v37();
}

uint64_t sub_25DD535AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25DD53630(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25DD1BF14;

  return sub_25DD52678(a1, a2);
}

uint64_t sub_25DD536D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_25DD523B0(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

_UNKNOWN **sub_25DD53738@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = MEMORY[0x277D84F90];
  *a3 = MEMORY[0x277D84F90];
  type metadata accessor for MultipartParser.StateMachine.State(0);
  swift_storeEnumTagMultiPayload();
  v7 = sub_25DD3957C(a1, a2);

  v8 = v7[2];
  v9 = (2 * v8) | 1;
  v10 = type metadata accessor for MultipartParser.StateMachine(0);
  v11 = (a3 + v10[5]);
  *v11 = v7;
  v11[1] = v7 + 4;
  v11[2] = 0;
  v11[3] = v9;

  result = sub_25DD0151C();
  v13 = *result;
  *&v21 = v6;
  *(&v21 + 1) = v6 + 32;
  v14 = *(*result + 2);
  v15 = v8 + v14;
  if (__OFADD__(v8, v14))
  {
    __break(1u);
    __break(1u);
    __break(1u);
  }

  else
  {

    sub_25DD4639C(v15);
    sub_25DD57320(v13);

    sub_25DD46D14(v7, (v7 + 4), 0, v9);

    v16 = v21;
    v17 = (a3 + v10[6]);
    *v17 = v21;
    v17[1] = xmmword_25DD9B570;
    swift_unknownObjectRetain();
    v18 = *sub_25DD01534();
    *&v22 = v6;
    *(&v22 + 1) = v6 + 32;
    v19 = v18[2];

    sub_25DD4639C(v19);
    sub_25DD57320(v18);

    sub_25DD46D14(v16, *(&v16 + 1), 0, 1uLL);
    result = swift_unknownObjectRelease();
    v20 = (a3 + v10[7]);
    *v20 = v22;
    v20[1] = xmmword_25DD9B570;
  }

  return result;
}

uint64_t sub_25DD5391C()
{
  v2 = v0[3];
  v4 = v0[5];
  v3 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25DD47524;

  return sub_25DD52924(v3, v6, v2, v7, v4);
}

uint64_t sub_25DD539C4@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v178 = a1;
  v3 = sub_25DD96A34();
  v171 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v170 = &v156 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v172 = &v156 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC23A0, &qword_25DD99BB0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v156 - v8;
  v174 = sub_25DD969E4();
  v175 = *(v174 - 8);
  v10 = MEMORY[0x28223BE20](v174);
  v12 = &v156 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v173 = &v156 - v13;
  v177 = sub_25DD96814();
  v176 = *(v177 - 8);
  MEMORY[0x28223BE20](v177);
  v15 = &v156 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for MultipartParser.StateMachine.State.PartState(0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v156 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v156 - v20;
  v22 = type metadata accessor for MultipartParser.StateMachine.State(0);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = (&v156 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v23);
  v27 = (&v156 - v26);
  sub_25DD57530(v2, &v156 - v26, type metadata accessor for MultipartParser.StateMachine.State);
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    if (result == 2)
    {
LABEL_7:
      type metadata accessor for MultipartParser.StateMachine.ReadNextPartAction(0);
      return swift_storeEnumTagMultiPayload();
    }

    goto LABEL_170;
  }

  v168 = v12;
  if (result)
  {
    v166 = v3;
    v37 = *v27;
    v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2630, &unk_25DD9CE60);
    v38 = *(v167 + 48);
    v186 = v37;
    sub_25DD55A38(v27 + v38, v21);
    sub_25DD55A9C(v2, type metadata accessor for MultipartParser.StateMachine.State);
    swift_storeEnumTagMultiPayload();
    v169 = v21;
    sub_25DD57530(v21, v19, type metadata accessor for MultipartParser.StateMachine.State.PartState);
    v39 = v176;
    v40 = v177;
    if ((*(v176 + 48))(v19, 1, v177) == 1)
    {
      v175 = v37;
      v184 = v37;
      v41 = &v2[*(type metadata accessor for MultipartParser.StateMachine(0) + 28)];
      v42 = *(v41 + 1);
      v187 = *v41;
      v188 = v42;
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2500, &qword_25DD9CE70);
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2100, "4D");
      v45 = sub_25DD187C0(&qword_27FCC2508, &qword_27FCC2500, &qword_25DD9CE70, MEMORY[0x277D83980]);
      v46 = sub_25DD187C0(&qword_27FCC2638, &qword_27FCC2100, "4D", MEMORY[0x277D83FB0]);
      result = sub_25DD01D84(&v187, v43, v44, v45, v46, MEMORY[0x277D84B90], &v181);
      v47 = v181;
      if (v182)
      {
        v48 = v169;
        if (v182 != 1)
        {
          v89 = v175;
          v90 = *(v175 + 16);

          v91 = v186;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v93 = *(v91 + 2);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v91 = sub_25DD2ECB4(0, v93, 1, v91);
              v186 = v91;
            }

            sub_25DD2EDA8(0, v93, 0);
            sub_25DD55A9C(v48, type metadata accessor for MultipartParser.StateMachine.State.PartState);
          }

          else
          {
            v97 = sub_25DD00E5C(0, *(v91 + 3) >> 1);
            sub_25DD55A9C(v48, type metadata accessor for MultipartParser.StateMachine.State.PartState);

            v91 = v97;
          }

          sub_25DD55A9C(v2, type metadata accessor for MultipartParser.StateMachine.State);
          v98 = *(v167 + 48);
          *v2 = v91;
          (*(v176 + 56))(&v2[v98], 1, 1, v177);
          swift_storeEnumTagMultiPayload();
          if (v90)
          {
            v80 = v178;
            *v178 = v89;
            v80[1] = v89 + 32;
            v81 = (2 * v90) | 1;
            goto LABEL_68;
          }

          type metadata accessor for MultipartParser.StateMachine.ReadNextPartAction(0);
          swift_storeEnumTagMultiPayload();
        }

        if ((v181 & 0x8000000000000000) == 0)
        {
          v49 = *(v175 + 16);
          if (v49 >= v181)
          {
            v50 = *(&v181 + 1);
            if ((*(&v181 + 1) & 0x8000000000000000) == 0)
            {
              v51 = v49 - *(&v181 + 1);
              if (v49 >= *(&v181 + 1))
              {
                v52 = v175;

                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v186 = v52;
                if (!isUniquelyReferenced_nonNull_native || (v54 = v52, v51 > *(v52 + 24) >> 1))
                {
                  if (v49 <= v51)
                  {
                    v55 = v49 - v50;
                  }

                  else
                  {
                    v55 = v49;
                  }

                  v54 = sub_25DD2ECB4(isUniquelyReferenced_nonNull_native, v55, 1, v52);
                  v186 = v54;
                }

                sub_25DD2EDA8(0, v50, 0);
                v56 = *(v167 + 48);
                *v25 = v54;

                MEMORY[0x25F8A2E20](v57);
                sub_25DD55A9C(v169, type metadata accessor for MultipartParser.StateMachine.State.PartState);
                (*(v176 + 56))(v25 + v56, 0, 1, v177);
                swift_storeEnumTagMultiPayload();
                sub_25DD57598(v25, v2);
                if (v47)
                {
                  v58 = v175;
                  v59 = v178;
                  *v178 = v175;
                  v59[1] = v58 + 32;
                  v59[2] = 0;
                  v59[3] = (2 * v47) | 1;
                  type metadata accessor for MultipartParser.StateMachine.ReadNextPartAction(0);
                  swift_storeEnumTagMultiPayload();
                }

                else
                {
                  type metadata accessor for MultipartParser.StateMachine.ReadNextPartAction(0);
                  swift_storeEnumTagMultiPayload();
                }
              }

              goto LABEL_163;
            }

LABEL_162:
            __break(1u);
LABEL_163:
            __break(1u);
            goto LABEL_164;
          }

          goto LABEL_159;
        }

        __break(1u);
        goto LABEL_157;
      }

      if ((v181 & 0x8000000000000000) != 0)
      {
LABEL_157:
        __break(1u);
        goto LABEL_158;
      }

      v73 = v175;
      v74 = *(v175 + 16);
      v75 = v74 - v181;
      if (v74 < v181)
      {
LABEL_160:
        __break(1u);
        goto LABEL_161;
      }

      v76 = swift_isUniquelyReferenced_nonNull_native();
      v186 = v73;
      if (!v76 || (v77 = v73, v75 > *(v73 + 24) >> 1))
      {
        if (v74 <= v75)
        {
          v78 = v74 - v47;
        }

        else
        {
          v78 = v74;
        }

        v77 = sub_25DD2ECB4(v76, v78, 1, v73);
        v186 = v77;
      }

      sub_25DD2EDA8(0, v47, 0);
      sub_25DD55A9C(v169, type metadata accessor for MultipartParser.StateMachine.State.PartState);
      sub_25DD55A9C(v2, type metadata accessor for MultipartParser.StateMachine.State);
      v79 = *(v167 + 48);
      *v2 = v77;
      (*(v176 + 56))(&v2[v79], 1, 1, v177);
      swift_storeEnumTagMultiPayload();
      if (v47)
      {
        v80 = v178;
        *v178 = v73;
        v80[1] = v73 + 32;
        v81 = (2 * v47) | 1;
LABEL_68:
        v80[2] = 0;
        v80[3] = v81;
        type metadata accessor for MultipartParser.StateMachine.ReadNextPartAction(0);
        return swift_storeEnumTagMultiPayload();
      }

      goto LABEL_70;
    }

    v60 = *(v39 + 32);
    v165 = v39 + 32;
    v164 = v60;
    v60(v15, v19, v40);
    *&v181 = v37;

    v184 = *sub_25DD0151C();
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2500, &qword_25DD9CE70);
    v62 = sub_25DD187C0(&qword_27FCC2508, &qword_27FCC2500, &qword_25DD9CE70, MEMORY[0x277D83980]);
    v63 = sub_25DD187C0(&qword_27FCC2640, &qword_27FCC2500, &qword_25DD9CE70, MEMORY[0x277D83970]);
    sub_25DD016A4(&v184, v61, v61, v62, v63, MEMORY[0x277D84B90], &v187);

    v32 = v37;
    if (!BYTE8(v187))
    {
      v82 = v187;
      sub_25DD55A9C(v2, type metadata accessor for MultipartParser.StateMachine.State);
      result = swift_storeEnumTagMultiPayload();
      if ((v82 & 0x8000000000000000) != 0)
      {
LABEL_158:
        __break(1u);
LABEL_159:
        __break(1u);
        goto LABEL_160;
      }

      v83 = *(v37 + 2);
      v84 = v83 - v82;
      v85 = v177;
      v86 = v176;
      if (v83 < v82)
      {
LABEL_161:
        __break(1u);
        goto LABEL_162;
      }

      v87 = swift_isUniquelyReferenced_nonNull_native();
      v186 = v37;
      if (!v87 || v84 > *(v37 + 3) >> 1)
      {
        if (v83 <= v84)
        {
          v88 = v83 - v82;
        }

        else
        {
          v88 = v83;
        }

        v186 = sub_25DD2ECB4(v87, v88, 1, v37);
      }

      sub_25DD2EDA8(0, v82, 0);
      (*(v86 + 8))(v15, v85);
      sub_25DD55A9C(v169, type metadata accessor for MultipartParser.StateMachine.State.PartState);
      type metadata accessor for MultipartParser.StateMachine.ReadNextPartAction(0);
LABEL_71:
      swift_storeEnumTagMultiPayload();
    }

    if (BYTE8(v187) != 1)
    {
      sub_25DD55A9C(v169, type metadata accessor for MultipartParser.StateMachine.State.PartState);
      sub_25DD55A9C(v2, type metadata accessor for MultipartParser.StateMachine.State);
      v94 = *(v167 + 48);
      *v2 = v37;
      v95 = &v2[v94];
      v96 = v15;
LABEL_64:
      v66 = v177;
      goto LABEL_86;
    }

    *&v181 = v37;

    v64 = v63;
    v65 = sub_25DD01534();
    v184 = *v65;
    sub_25DD016A4(&v184, v61, v61, v62, v64, MEMORY[0x277D84B90], &v187);

    v66 = v177;
    if (BYTE8(v187))
    {
      if (BYTE8(v187) == 1)
      {
        (*(v176 + 8))(v15, v177);
        sub_25DD55A9C(v169, type metadata accessor for MultipartParser.StateMachine.State.PartState);
        sub_25DD55A9C(v2, type metadata accessor for MultipartParser.StateMachine.State);
        swift_storeEnumTagMultiPayload();
        v67 = 1;
LABEL_29:
        *v178 = v67;
LABEL_70:
        type metadata accessor for MultipartParser.StateMachine.ReadNextPartAction(0);
        goto LABEL_71;
      }

      sub_25DD55A9C(v169, type metadata accessor for MultipartParser.StateMachine.State.PartState);
      sub_25DD55A9C(v2, type metadata accessor for MultipartParser.StateMachine.State);
      v94 = *(v167 + 48);
      *v2 = v32;
      v95 = &v2[v94];
      v96 = v15;
LABEL_86:
      v164(v95, v96, v66);
      (*(v176 + 56))(&v2[v94], 0, 1, v66);
      goto LABEL_87;
    }

    v161 = v15;
    v162 = v65;
    v99 = v187;
    v100 = *(v32 + 16);
    if (v100 < v187)
    {
LABEL_164:
      __break(1u);
      goto LABEL_165;
    }

    v163 = v61;
    if ((v187 & 0x8000000000000000) != 0)
    {
LABEL_165:
      __break(1u);
      goto LABEL_166;
    }

    *&v187 = v32;
    *(&v187 + 1) = v32 + 32;
    *&v188 = v99;
    *(&v188 + 1) = (2 * v100) | 1;
    v184 = *v162;
    v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2100, "4D");
    v102 = sub_25DD187C0(&qword_27FCC2648, &qword_27FCC2100, "4D", MEMORY[0x277D83FB8]);
    result = sub_25DD016A4(&v184, v101, v163, v102, v64, MEMORY[0x277D84B90], &v181);
    if (!BYTE8(v181))
    {
      v106 = v181;
      if ((v181 & 0x8000000000000000) == 0)
      {
        v107 = *(v32 + 16);
        v108 = v107 - v181;
        v109 = v177;
        v110 = v161;
        if (v107 >= v181)
        {
          v111 = swift_isUniquelyReferenced_nonNull_native();
          v186 = v32;
          if (!v111 || v108 > *(v32 + 24) >> 1)
          {
            if (v107 <= v108)
            {
              v112 = v107 - v106;
            }

            else
            {
              v112 = v107;
            }

            v32 = sub_25DD2ECB4(v111, v112, 1, v32);
            v186 = v32;
          }

          sub_25DD2EDA8(0, v106, 0);
          sub_25DD55A9C(v169, type metadata accessor for MultipartParser.StateMachine.State.PartState);
          sub_25DD55A9C(v2, type metadata accessor for MultipartParser.StateMachine.State);
          v113 = *(v167 + 48);
          *v2 = v32;
          (*(v176 + 56))(&v2[v113], 1, 1, v109);
          swift_storeEnumTagMultiPayload();
          v164(v178, v110, v109);
          type metadata accessor for MultipartParser.StateMachine.ReadNextPartAction(0);
          return swift_storeEnumTagMultiPayload();
        }

        goto LABEL_168;
      }

LABEL_167:
      __break(1u);
LABEL_168:
      __break(1u);
LABEL_169:
      __break(1u);
LABEL_170:
      __break(1u);
      goto LABEL_171;
    }

    if (BYTE8(v181) == 1)
    {
      v159 = v101;
      v160 = v32 + 32;
      v103 = *(v32 + 16);
      if (v103 < v99)
      {
LABEL_166:
        __break(1u);
        goto LABEL_167;
      }

      v104 = v99 - v103;
      if (v104)
      {
        v105 = 0;
        while ((sub_25DD01638(*(v32 + v99 + v105 + 32)) & 1) != 0)
        {
          ++v105;
          if (!(v104 + v105))
          {
            goto LABEL_83;
          }
        }

        v114 = *(v32 + 16);
        v158 = v105;
        v115 = v99 + v105;
        if (v114 < v115)
        {
          goto LABEL_169;
        }

        *&v187 = v32;
        *(&v187 + 1) = v160;
        *&v188 = v115;
        *(&v188 + 1) = (2 * v114) | 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2110, &unk_25DD984C0);
        v116 = swift_allocObject();
        *(v116 + 16) = xmmword_25DD98100;

        *(v116 + 32) = *sub_25DD014E0();
        v184 = v116;
        sub_25DD016A4(&v184, v159, v163, v102, v64, MEMORY[0x277D84B90], &v181);

        if (BYTE8(v181))
        {
          if (BYTE8(v181) == 1)
          {
            (*(v176 + 8))(v161, v177);
            sub_25DD55A9C(v169, type metadata accessor for MultipartParser.StateMachine.State.PartState);
            sub_25DD55A9C(v2, type metadata accessor for MultipartParser.StateMachine.State);
            swift_storeEnumTagMultiPayload();
            v67 = 3;
            goto LABEL_29;
          }

          goto LABEL_84;
        }

        v157 = v115;
        v117 = v181;
        v118 = *(v32 + 16);
        if (v118 < v181)
        {
LABEL_171:
          __break(1u);
          goto LABEL_172;
        }

        if ((v181 & 0x8000000000000000) != 0)
        {
LABEL_172:
          __break(1u);
LABEL_173:
          __break(1u);
LABEL_174:
          __break(1u);
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
          goto LABEL_181;
        }

        while (v117 != v118)
        {
          v119 = v117;
          v120 = *(v160 + v117);
          v121 = sub_25DD0158C();
          v122 = *v121;
          if (!*(*v121 + 16))
          {
            goto LABEL_115;
          }

          v123 = MEMORY[0x25F8A3F70](*(v122 + 40), v120, 1);
          v124 = -1 << *(v122 + 32);
          v125 = v123 & ~v124;
          if (((*(v122 + 56 + ((v125 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v125) & 1) == 0)
          {
            goto LABEL_115;
          }

          v126 = ~v124;
          while (*(*(v122 + 48) + v125) != v120)
          {
            v125 = (v125 + 1) & v126;
            if (((*(v122 + 56 + ((v125 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v125) & 1) == 0)
            {
              goto LABEL_115;
            }
          }

          v117 = v119 + 1;
          if (__OFADD__(v119, 1))
          {
            __break(1u);
LABEL_115:

            v156 = v121;
            v127 = *(v32 + 16);
            if (v127 < v119)
            {
              goto LABEL_173;
            }

            *&v187 = v32;
            *(&v187 + 1) = v160;
            *&v188 = v119;
            *(&v188 + 1) = (2 * v127) | 1;
            v184 = *v162;
            sub_25DD187C0(&qword_27FCC2650, &qword_27FCC2100, "4D", MEMORY[0x277CC9ED8]);
            sub_25DD187C0(&qword_27FCC2658, &qword_27FCC2500, &qword_25DD9CE70, MEMORY[0x277CC9C20]);
            result = sub_25DD965F4();
            if (v182)
            {
              goto LABEL_84;
            }

            v128 = v181;
            if (v181 < v119)
            {
              goto LABEL_174;
            }

            v129 = v119;
            v130 = *(v32 + 16);
            v131 = v157;
            if (v130 < v181)
            {
              goto LABEL_175;
            }

            v132 = v119;
            if (v181 != v119)
            {
              v159 = *(v32 + 16);
              v133 = v181;
              v134 = v181;
              while (1)
              {
                v162 = v133;
                v135 = (v133 - 1);
                if (v133 - 1 < v129 || v135 >= v134)
                {
                  goto LABEL_180;
                }

                v128 = v134;
                v137 = *v156;
                if (!*(*v156 + 16) || (v138 = *(v135 + v160), result = MEMORY[0x25F8A3F70](*(v137 + 40), *(v135 + v160), 1), v139 = -1 << *(v137 + 32), v140 = result & ~v139, ((*(v137 + 56 + ((v140 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v140) & 1) == 0))
                {
LABEL_134:
                  v129 = v119;
                  v132 = v162;
                  v131 = v157;
                  v130 = v159;
                  if (v162 < v119)
                  {
                    goto LABEL_176;
                  }

                  break;
                }

                v141 = ~v139;
                while (*(*(v137 + 48) + v140) != v138)
                {
                  v140 = (v140 + 1) & v141;
                  if (((*(v137 + 56 + ((v140 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v140) & 1) == 0)
                  {
                    goto LABEL_134;
                  }
                }

                v133 = v135;
                v129 = v119;
                v134 = v128;
                if (v135 == v119)
                {
                  v132 = v119;
                  v131 = v157;
                  v130 = v159;
                  break;
                }
              }
            }

            if (v128 < v132)
            {
              goto LABEL_177;
            }

            *&v187 = v132;
            *(&v187 + 1) = v129;
            *&v188 = v32;
            *(&v188 + 1) = v160;
            *&v189 = v129;
            *(&v189 + 1) = (2 * v128) | 1;
            if (v130 >= v99)
            {
              if (v130 < v131)
              {
                goto LABEL_179;
              }

              swift_bridgeObjectRetain_n();
              sub_25DD96B74();

              sub_25DD969F4();
              v142 = v175;
              v143 = v174;
              v144 = (*(v175 + 48))(v9, 1, v174);
              v33 = v161;
              if (v144 == 1)
              {

                (*(v176 + 8))(v33, v177);
                sub_25DD55A9C(v169, type metadata accessor for MultipartParser.StateMachine.State.PartState);
                sub_25DD114CC(v9, &qword_27FCC23A0, &qword_25DD99BB0);
                sub_25DD55A9C(v2, type metadata accessor for MultipartParser.StateMachine.State);
                swift_storeEnumTagMultiPayload();
                *v178 = 2;
                goto LABEL_70;
              }

              (*(v142 + 32))(v173, v9, v143);
              v181 = v187;
              v182 = v188;
              v183 = v189;

              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2660, qword_25DD9CE78);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC23E0, &unk_25DD9BEC0);
              v145 = swift_dynamicCast();
              v163 = v128;
              if (!v145)
              {
                v180 = 0;
                memset(v179, 0, sizeof(v179));
                sub_25DD114CC(v179, &qword_27FCC23E8, &qword_25DD99BF8);
                goto LABEL_147;
              }

              sub_25DD19D44(v179, &v184);
              __swift_project_boxed_opaque_existential_1(&v184, v185);
              if ((sub_25DD972E4() & 1) == 0)
              {
                goto LABEL_146;
              }

              __swift_project_boxed_opaque_existential_1(&v184, v185);
              sub_25DD972D4();
              __swift_destroy_boxed_opaque_existential_1(&v184);
              v146 = v171;
              v143 = v174;
              goto LABEL_148;
            }

            goto LABEL_178;
          }
        }
      }

LABEL_83:
    }

LABEL_84:
    sub_25DD55A9C(v169, type metadata accessor for MultipartParser.StateMachine.State.PartState);
    sub_25DD55A9C(v2, type metadata accessor for MultipartParser.StateMachine.State);
    v94 = *(v167 + 48);
    *v2 = v32;
    v95 = &v2[v94];
    v96 = v161;
    goto LABEL_64;
  }

  v184 = *v27;
  v29 = v184;

  sub_25DD55A9C(v2, type metadata accessor for MultipartParser.StateMachine.State);
  swift_storeEnumTagMultiPayload();
  *&v179[0] = v29;
  v30 = &v2[*(type metadata accessor for MultipartParser.StateMachine(0) + 24)];
  v31 = *(v30 + 1);
  v187 = *v30;
  v188 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2500, &qword_25DD9CE70);
  v33 = &qword_27FCC2100;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2100, "4D");
  v35 = sub_25DD187C0(&qword_27FCC2508, &qword_27FCC2500, &qword_25DD9CE70, MEMORY[0x277D83980]);
  v36 = sub_25DD187C0(&qword_27FCC2638, &qword_27FCC2100, "4D", MEMORY[0x277D83FB0]);
  sub_25DD016A4(&v187, v32, v34, v35, v36, MEMORY[0x277D84B90], &v181);

  if (BYTE8(v181))
  {
    if (BYTE8(v181) == 1)
    {

      sub_25DD55A9C(v2, type metadata accessor for MultipartParser.StateMachine.State);
      swift_storeEnumTagMultiPayload();
      *v178 = 0;
      type metadata accessor for MultipartParser.StateMachine.ReadNextPartAction(0);
      return swift_storeEnumTagMultiPayload();
    }

    sub_25DD55A9C(v2, type metadata accessor for MultipartParser.StateMachine.State);
    *v2 = v29;
LABEL_87:
    swift_storeEnumTagMultiPayload();
    type metadata accessor for MultipartParser.StateMachine.ReadNextPartAction(0);
    return swift_storeEnumTagMultiPayload();
  }

  v68 = v181;
  if ((v181 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v69 = *(v29 + 2);
    v32 = v69 - v181;
    if (v69 >= v181)
    {
      v70 = swift_isUniquelyReferenced_nonNull_native();
      v184 = v29;
      if (!v70 || v32 > *(v29 + 3) >> 1)
      {
        if (v69 <= v32)
        {
          v71 = v69 - v68;
        }

        else
        {
          v71 = v69;
        }

        v29 = sub_25DD2ECB4(v70, v71, 1, v29);
        v184 = v29;
      }

      sub_25DD2EDA8(0, v68, 0);
      v72 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2630, &unk_25DD9CE60) + 48);
      *v25 = v29;
      MEMORY[0x25F8A2E20]();
      (*(v176 + 56))(v25 + v72, 0, 1, v177);
      swift_storeEnumTagMultiPayload();
      sub_25DD57598(v25, v2);
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_146:
  __swift_destroy_boxed_opaque_existential_1(&v184);
  v143 = v174;
LABEL_147:
  sub_25DD56ED0(&v187);
  v146 = v171;
LABEL_148:
  (*(v175 + 16))(v168, v173, v143);
  v147 = v172;
  sub_25DD96A04();
  (*(v146 + 16))(v170, v147, v166);
  v148 = MEMORY[0x277D0F9A8];
  sub_25DD575FC(&qword_27FCC23F0, MEMORY[0x277D0F9A8], MEMORY[0x277D0F9C8]);
  v149 = v177;
  sub_25DD96EA4();
  sub_25DD575FC(&qword_27FCC23F8, v148, MEMORY[0x277D0F9D0]);
  result = sub_25DD96EE4();
  v150 = *(v32 + 16);
  v151 = v150 - v163;
  if (v150 >= v163)
  {
    v152 = swift_isUniquelyReferenced_nonNull_native();
    v186 = v32;
    if (!v152 || (v153 = v32, v151 > *(v32 + 24) >> 1))
    {
      if (v150 <= v151)
      {
        v154 = v151;
      }

      else
      {
        v154 = v150;
      }

      v153 = sub_25DD2ECB4(v152, v154, 1, v32);
      v186 = v153;
    }

    sub_25DD2EDA8(0, v163, 0);

    (*(v146 + 8))(v172, v166);
    (*(v175 + 8))(v173, v174);
    sub_25DD55A9C(v169, type metadata accessor for MultipartParser.StateMachine.State.PartState);
    sub_25DD55A9C(v2, type metadata accessor for MultipartParser.StateMachine.State);
    v155 = *(v167 + 48);
    *v2 = v153;
    v164(&v2[v155], v33, v149);
    (*(v176 + 56))(&v2[v155], 0, 1, v149);
    swift_storeEnumTagMultiPayload();
    goto LABEL_7;
  }

LABEL_181:
  __break(1u);
  return result;
}

uint64_t sub_25DD556DC(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for MultipartParser.StateMachine.State.PartState(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MultipartParser.StateMachine.State(0);
  MEMORY[0x28223BE20](v13);
  v15 = (&v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25DD57530(v5, v15, type metadata accessor for MultipartParser.StateMachine.State);
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    if (result == 2)
    {
      if (a1)
      {
        return 4;
      }

      else
      {
        return 7;
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (result)
    {
      v17 = *v15;
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2630, &unk_25DD9CE60);
      v19 = *(v18 + 48);
      v22 = v17;
      sub_25DD55A38(v15 + v19, v12);
      if (a1)
      {
        swift_unknownObjectRetain();
        sub_25DD55A9C(v5, type metadata accessor for MultipartParser.StateMachine.State);
        swift_storeEnumTagMultiPayload();
        sub_25DD2EBA0(a1, a2, a3, a4);
        sub_25DD55A9C(v5, type metadata accessor for MultipartParser.StateMachine.State);
        v20 = *(v18 + 48);
        *v5 = v22;
        sub_25DD55A38(v12, v5 + v20);
        goto LABEL_11;
      }

      sub_25DD55A9C(v12, type metadata accessor for MultipartParser.StateMachine.State.PartState);
    }

    else
    {
      v22 = *v15;
      if (a1)
      {
        swift_unknownObjectRetain();
        sub_25DD55A9C(v5, type metadata accessor for MultipartParser.StateMachine.State);
        swift_storeEnumTagMultiPayload();
        sub_25DD2EBA0(a1, a2, a3, a4);
        sub_25DD55A9C(v5, type metadata accessor for MultipartParser.StateMachine.State);
        *v5 = v22;
LABEL_11:
        swift_storeEnumTagMultiPayload();
        return 6;
      }
    }

    return 5;
  }

  return result;
}

unint64_t sub_25DD559E4()
{
  result = qword_27FCC2628;
  if (!qword_27FCC2628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC2628);
  }

  return result;
}

uint64_t sub_25DD55A38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MultipartParser.StateMachine.State.PartState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25DD55A9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_25DD55AFC(unsigned __int8 a1)
{
  v1 = 0xD00000000000001DLL;
  if (a1 == 4)
  {
    v1 = 0xD000000000000026;
  }

  if (a1 == 3)
  {
    v2 = 0xD000000000000026;
  }

  else
  {
    v2 = v1;
  }

  v3 = 0xD00000000000002ALL;
  if (a1 == 1)
  {
    v3 = 0xD00000000000002CLL;
  }

  if (!a1)
  {
    v3 = 0xD000000000000019;
  }

  if (a1 <= 2u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_25DD55BA4()
{
  v1 = *v0;
  v2 = 0xD00000000000001DLL;
  if (v1 == 4)
  {
    v2 = 0xD000000000000026;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000026;
  }

  else
  {
    v3 = v2;
  }

  v4 = 0xD00000000000002ALL;
  if (v1 == 1)
  {
    v4 = 0xD00000000000002CLL;
  }

  if (!*v0)
  {
    v4 = 0xD000000000000019;
  }

  if (*v0 <= 2u)
  {
    return v4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_25DD55C50(uint64_t a1)
{
  v2 = sub_25DD96814();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MultipartParser.StateMachine.State.PartState(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25DD57530(v1, v8, type metadata accessor for MultipartParser.StateMachine.State.PartState);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    return MEMORY[0x25F8A3F90](1);
  }

  (*(v3 + 32))(v5, v8, v2);
  MEMORY[0x25F8A3F90](0);
  sub_25DD575FC(&qword_27FCC22E8, MEMORY[0x277D0F9A8], MEMORY[0x277D0F9B0]);
  sub_25DD96AC4();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_25DD55E20()
{
  v1 = v0;
  v2 = sub_25DD96814();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MultipartParser.StateMachine.State.PartState(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25DD97964();
  sub_25DD57530(v1, v8, type metadata accessor for MultipartParser.StateMachine.State.PartState);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    MEMORY[0x25F8A3F90](1);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x25F8A3F90](0);
    sub_25DD575FC(&qword_27FCC22E8, MEMORY[0x277D0F9A8], MEMORY[0x277D0F9B0]);
    sub_25DD96AC4();
    (*(v3 + 8))(v5, v2);
  }

  return sub_25DD979A4();
}

uint64_t sub_25DD56010(uint64_t a1)
{
  v2 = sub_25DD96814();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25DD57530(v1, v8, type metadata accessor for MultipartParser.StateMachine.State.PartState);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    return MEMORY[0x25F8A3F90](1);
  }

  (*(v3 + 32))(v6, v8, v2);
  MEMORY[0x25F8A3F90](0);
  sub_25DD575FC(&qword_27FCC22E8, MEMORY[0x277D0F9A8], MEMORY[0x277D0F9B0]);
  sub_25DD96AC4();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_25DD561DC(uint64_t a1)
{
  v2 = v1;
  v3 = sub_25DD96814();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25DD97964();
  sub_25DD57530(v2, v9, type metadata accessor for MultipartParser.StateMachine.State.PartState);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    MEMORY[0x25F8A3F90](1);
  }

  else
  {
    (*(v4 + 32))(v7, v9, v3);
    MEMORY[0x25F8A3F90](0);
    sub_25DD575FC(&qword_27FCC22E8, MEMORY[0x277D0F9A8], MEMORY[0x277D0F9B0]);
    sub_25DD96AC4();
    (*(v4 + 8))(v7, v3);
  }

  return sub_25DD979A4();
}

uint64_t sub_25DD563D4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25DD56430(uint64_t a1)
{
  v2 = sub_25DD96814();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MultipartParser.StateMachine.State.PartState(0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  v12 = type metadata accessor for MultipartParser.StateMachine.State(0);
  MEMORY[0x28223BE20](v12);
  v14 = (&v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25DD57530(v1, v14, type metadata accessor for MultipartParser.StateMachine.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v20 = 2;
    }

    else
    {
      v20 = 3;
    }

    return MEMORY[0x25F8A3F90](v20);
  }

  else if (EnumCaseMultiPayload)
  {
    v21 = *v14;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2630, &unk_25DD9CE60);
    sub_25DD55A38(v14 + *(v22 + 48), v11);
    MEMORY[0x25F8A3F90](1);
    MEMORY[0x25F8A3F90](*(v21 + 16));
    v23 = *(v21 + 16);
    if (v23)
    {
      v24 = v21 + 32;
      do
      {
        ++v24;
        sub_25DD97984();
        --v23;
      }

      while (v23);
    }

    sub_25DD57530(v11, v9, type metadata accessor for MultipartParser.StateMachine.State.PartState);
    if ((*(v3 + 48))(v9, 1, v2) == 1)
    {
      MEMORY[0x25F8A3F90](1);
    }

    else
    {
      (*(v3 + 32))(v5, v9, v2);
      MEMORY[0x25F8A3F90](0);
      sub_25DD575FC(&qword_27FCC22E8, MEMORY[0x277D0F9A8], MEMORY[0x277D0F9B0]);
      sub_25DD96AC4();
      (*(v3 + 8))(v5, v2);
    }

    return sub_25DD55A9C(v11, type metadata accessor for MultipartParser.StateMachine.State.PartState);
  }

  else
  {
    v16 = *v14;
    MEMORY[0x25F8A3F90](0);
    MEMORY[0x25F8A3F90](*(v16 + 16));
    v17 = *(v16 + 16);
    if (v17)
    {
      v18 = 32;
      do
      {
        sub_25DD97984();
        ++v18;
        --v17;
      }

      while (v17);
    }
  }
}

uint64_t sub_25DD56848(unsigned __int8 a1)
{
  sub_25DD97964();
  MEMORY[0x25F8A3F90](a1);
  return sub_25DD979A4();
}

uint64_t sub_25DD56894(uint64_t a1)
{
  v2 = sub_25DD96814();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  NextPartAction = type metadata accessor for MultipartParser.StateMachine.ReadNextPartAction(0);
  MEMORY[0x28223BE20](NextPartAction);
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25DD57530(v1, v8, type metadata accessor for MultipartParser.StateMachine.ReadNextPartAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v11 = 0;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v11 = 2;
    }

    else
    {
      v11 = 5;
    }

    return MEMORY[0x25F8A3F90](v11);
  }

  if (!EnumCaseMultiPayload)
  {
    v12 = *v8;
    MEMORY[0x25F8A3F90](1);
    v11 = v12;
    return MEMORY[0x25F8A3F90](v11);
  }

  if (EnumCaseMultiPayload == 1)
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x25F8A3F90](3);
    sub_25DD575FC(&qword_27FCC22E8, MEMORY[0x277D0F9A8], MEMORY[0x277D0F9B0]);
    sub_25DD96AC4();
    return (*(v3 + 8))(v5, v2);
  }

  v13 = v8[1];
  v15 = v8[2];
  v14 = v8[3];
  MEMORY[0x25F8A3F90](4);
  v16 = v14 >> 1;
  result = v16 - v15;
  if (__OFSUB__(v16, v15))
  {
    __break(1u);
  }

  else
  {
    result = MEMORY[0x25F8A3F90](result);
    v17 = __OFSUB__(v16, v15);
    v18 = v16 - v15;
    if (!v18)
    {
      return swift_unknownObjectRelease();
    }

    if (!((v18 < 0) ^ v17 | (v18 == 0)))
    {
      v19 = v13 + v15;
      do
      {
        ++v19;
        sub_25DD97984();
        --v18;
      }

      while (v18);
      return swift_unknownObjectRelease();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25DD56B0C(uint64_t (*a1)(void *))
{
  sub_25DD97964();
  a1(v3);
  return sub_25DD979A4();
}

uint64_t sub_25DD56B6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  sub_25DD97964();
  a3(v5);
  return sub_25DD979A4();
}

uint64_t sub_25DD56BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_25DD97964();
  a4(v6);
  return sub_25DD979A4();
}

BOOL sub_25DD56C14(char a1, char a2)
{
  if (a1 == 7)
  {
    return a2 == 7;
  }

  if (a1 == 6)
  {
    return a2 == 6;
  }

  if ((a2 & 0xFE) == 6)
  {
    return 0;
  }

  return a1 == a2;
}

uint64_t sub_25DD56C6C(uint64_t a1, unsigned __int8 a2)
{
  if (a2 == 6)
  {
    v2 = 0;
  }

  else if (a2 == 7)
  {
    v2 = 1;
  }

  else
  {
    MEMORY[0x25F8A3F90](2);
    v2 = a2;
  }

  return MEMORY[0x25F8A3F90](v2);
}

uint64_t sub_25DD56CC4(unsigned __int8 a1)
{
  sub_25DD97964();
  if (a1 == 6)
  {
    v2 = 0;
  }

  else if (a1 == 7)
  {
    v2 = 1;
  }

  else
  {
    MEMORY[0x25F8A3F90](2);
    v2 = a1;
  }

  MEMORY[0x25F8A3F90](v2);
  return sub_25DD979A4();
}

uint64_t sub_25DD56D3C()
{
  v1 = *v0;
  sub_25DD97964();
  if (v1 == 6)
  {
    v1 = 0;
  }

  else if (v1 == 7)
  {
    v1 = 1;
  }

  else
  {
    MEMORY[0x25F8A3F90](2);
  }

  MEMORY[0x25F8A3F90](v1);
  return sub_25DD979A4();
}

uint64_t sub_25DD56DB0()
{
  v1 = *v0;
  if (v1 == 6)
  {
    v2 = 0;
  }

  else if (v1 == 7)
  {
    v2 = 1;
  }

  else
  {
    v3 = *v0;
    MEMORY[0x25F8A3F90](2);
    v2 = v3;
  }

  return MEMORY[0x25F8A3F90](v2);
}

uint64_t sub_25DD56E0C(uint64_t a1)
{
  v2 = *v1;
  sub_25DD97964();
  if (v2 == 6)
  {
    v2 = 0;
  }

  else if (v2 == 7)
  {
    v2 = 1;
  }

  else
  {
    MEMORY[0x25F8A3F90](2);
  }

  MEMORY[0x25F8A3F90](v2);
  return sub_25DD979A4();
}

BOOL sub_25DD56E7C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 7)
  {
    return v3 == 7;
  }

  if (v2 == 6)
  {
    return v3 == 6;
  }

  if ((v3 & 0xFE) == 6)
  {
    return 0;
  }

  return v2 == v3;
}

void *sub_25DD56ED0(void *result)
{
  v1 = result[1];
  v2 = *result - v1;
  if (__OFSUB__(*result, v1))
  {
    __break(1u);
  }

  else
  {
    if (v2)
    {
      v3 = result;
      v4 = sub_25DD00E5C(*result - v1, 0);
      v5 = sub_25DD56F98(v8, (v4 + 4), v2);
      sub_25DD59420(v3, v7);
      swift_unknownObjectRelease();
      if (v5 != v2)
      {
        __break(1u);
      }
    }

    v6 = sub_25DD96B74();

    return v6;
  }

  return result;
}

uint64_t *sub_25DD56F98(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v5 = v3[1];
  v7 = v3[2];
  v6 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  if (!a2)
  {
LABEL_21:
    a3 = 0;
LABEL_22:
    v11 = v5;
LABEL_23:
    *result = v4;
    result[1] = v5;
    result[2] = v7;
    result[3] = v6;
    result[4] = v8;
    result[5] = v9;
    result[6] = v11;
    return a3;
  }

  if (!a3)
  {
    goto LABEL_22;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    while (1)
    {
      if (v4 - v5 == v10)
      {
        v11 = v4;
        a3 = v4 - v5;
        goto LABEL_23;
      }

      v11 = v5 + v10 + 1;
      if (__OFADD__(v5 + v10, 1))
      {
        break;
      }

      v12 = v5 + v10;
      if (v5 + v10 >= (v9 >> 1) || v4 < v11 || v5 >= v11 || v12 < v8)
      {
        goto LABEL_26;
      }

      *(a2 + v10) = *(v6 + v12);
      if (a3 - 1 == v10)
      {
        goto LABEL_23;
      }

      if (__OFADD__(++v10, 1))
      {
        __break(1u);
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25DD57068(uint64_t result, unint64_t a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = ((v4 >> 1) - v3);
  if (__OFSUB__(v4 >> 1, v3))
  {
    goto LABEL_45;
  }

  v6 = *(result + 16);
  if (v6 != a2)
  {
    if (v6 <= a2)
    {
LABEL_46:
      __break(1u);
      return result;
    }

    v7 = a2 + 1;
    v27 = result + 32;
    v8 = *(result + 32 + a2);
    v29 = v2;
    while (!__OFADD__(v5, 1))
    {
      v32 = sub_25DD30B6C(v5, v5 + 1, *v2, v2[1], v3, v4);
      v10 = sub_25DD30D20();
      sub_25DD30D3C(&v32, v5, 0, v10);

      v11 = v2[2];
      v4 = v2[3];
      v12 = (v4 >> 1) - v11;
      if (__OFSUB__(v4 >> 1, v11))
      {
        goto LABEL_39;
      }

      v28 = v4 >> 1;
      v30 = v2[1];
      v31 = v2[2];
      if (v4)
      {
        sub_25DD97744();
        swift_unknownObjectRetain();
        v13 = swift_dynamicCastClass();
        if (!v13)
        {
          swift_unknownObjectRelease();
          v13 = MEMORY[0x277D84F90];
        }

        v14 = *(v13 + 16);
        v15 = v30;
        if (v30 + (v4 >> 1) == v13 + v14 + 32)
        {
          v17 = *(v13 + 24);

          v18 = (v17 >> 1) - v14;
          v16 = v12 + v18;
          if (__OFADD__(v12, v18))
          {
            goto LABEL_44;
          }
        }

        else
        {

          v16 = (v4 >> 1) - v11;
        }
      }

      else
      {
        v16 = (v4 >> 1) - v11;
        v15 = v2[1];
      }

      v19 = 0;
      if (v16 <= v5)
      {
        v20 = v5;
      }

      else
      {
        v20 = v16;
      }

      while (1)
      {
        v21 = v7 + v19;
        if (!(v5 + v19 - v20))
        {
          v7 += v19;
          v22 = v20 - v12;
          if (__OFSUB__(v20, v12))
          {
            goto LABEL_40;
          }

          goto LABEL_28;
        }

        *(v5 + v31 + v15 + v19) = v8;
        if (!(v7 - v6 + v19))
        {
          break;
        }

        if (v21 >= v6)
        {
          __break(1u);
LABEL_37:
          __break(1u);
          goto LABEL_38;
        }

        v8 = *(v27 + v7 + v19++);
        if (__OFADD__(v21, 1))
        {
          goto LABEL_37;
        }
      }

      v8 = 0;
      v20 = v5 + v19 + 1;
      v7 = v6;
      v22 = v20 - v12;
      if (__OFSUB__(v20, v12))
      {
        goto LABEL_40;
      }

LABEL_28:
      if (v22)
      {
        sub_25DD97744();
        swift_unknownObjectRetain();
        result = swift_dynamicCastClass();
        if (!result)
        {
          swift_unknownObjectRelease();
          result = MEMORY[0x277D84F90];
        }

        v23 = *(result + 16);
        v24 = __OFADD__(v23, v22);
        v25 = v23 + v22;
        if (v24)
        {
          goto LABEL_41;
        }

        *(result + 16) = v25;

        v26 = v28 + v22;
        if (__OFADD__(v28, v22))
        {
          goto LABEL_42;
        }

        if ((v26 & 0x8000000000000000) != 0)
        {
          goto LABEL_43;
        }

        v4 = v4 & 1 | (2 * v26);
        v29[3] = v4;
      }

      v9 = v5 + v19;
      v5 = v20;
      v2 = v29;
      v3 = v31;
      if (v9 < v16)
      {
        return result;
      }
    }

LABEL_38:
    __break(1u);
LABEL_39:
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
    goto LABEL_46;
  }

  return result;
}

uint64_t sub_25DD57320(uint64_t result)
{
  v3 = v1[2];
  v2 = v1[3];
  v4 = (v2 >> 1) - v3;
  if (__OFSUB__(v2 >> 1, v3))
  {
    __break(1u);
    goto LABEL_34;
  }

  v5 = result;
  v6 = *(result + 16);
  if ((v2 & 1) == 0)
  {
    goto LABEL_7;
  }

  v7 = v1[1];
  sub_25DD97744();
  swift_unknownObjectRetain();
  v8 = swift_dynamicCastClass();
  if (!v8)
  {
    swift_unknownObjectRelease();
    v8 = MEMORY[0x277D84F90];
  }

  v9 = *(v8 + 16);
  if (v7 + v3 + v4 != v8 + v9 + 32)
  {

LABEL_7:
    v10 = v4;
    goto LABEL_9;
  }

  v11 = *(v8 + 24);

  v12 = (v11 >> 1) - v9;
  v13 = __OFADD__(v4, v12);
  v10 = v4 + v12;
  if (v13)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

LABEL_9:
  result = v4 + v6;
  if (__OFADD__(v4, v6))
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v10 < result)
  {
    if (v10 + 0x4000000000000000 < 0)
    {
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v14 = 2 * v10;
    if (v14 > result)
    {
      result = v14;
    }
  }

  result = sub_25DD4639C(result);
  v16 = v1[2];
  v15 = v1[3];
  v17 = (v15 >> 1) - v16;
  if (__OFSUB__(v15 >> 1, v16))
  {
    goto LABEL_35;
  }

  v18 = (v1[1] + (v15 >> 1));
  if ((v15 & 1) == 0)
  {
LABEL_20:
    v21 = v17;
    goto LABEL_22;
  }

  sub_25DD97744();
  swift_unknownObjectRetain();
  v19 = swift_dynamicCastClass();
  if (!v19)
  {
    swift_unknownObjectRelease();
    v19 = MEMORY[0x277D84F90];
  }

  v20 = *(v19 + 16);
  if (v18 != (v19 + v20 + 32))
  {

    goto LABEL_20;
  }

  v22 = *(v19 + 24);

  v23 = (v22 >> 1) - v20;
  v13 = __OFADD__(v17, v23);
  v21 = v17 + v23;
  if (v13)
  {
LABEL_41:
    __break(1u);
    return result;
  }

LABEL_22:
  v24 = v21 - v17;
  if (__OFSUB__(v21, v17))
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (!v6)
  {
    goto LABEL_28;
  }

  if (v24 < v6)
  {
    goto LABEL_37;
  }

  result = memcpy(v18, (v5 + 32), v6);
  if (v6 <= 0)
  {
    goto LABEL_28;
  }

  result = v17 + v6;
  if (__OFADD__(v17, v6))
  {
    goto LABEL_39;
  }

  result = sub_25DD462E4(result);
LABEL_28:
  if (v6 == v24)
  {

    return sub_25DD57068(v5, v6);
  }

  return result;
}

uint64_t sub_25DD57530(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25DD57598(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MultipartParser.StateMachine.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_25DD575FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25DD57644(uint64_t a1, uint64_t a2)
{
  v4 = sub_25DD96814();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MultipartParser.StateMachine.State.PartState(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC26B8, "<J");
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_25DD57530(a1, &v20 - v13, type metadata accessor for MultipartParser.StateMachine.State.PartState);
  sub_25DD57530(a2, &v14[v15], type metadata accessor for MultipartParser.StateMachine.State.PartState);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_25DD57530(v14, v10, type metadata accessor for MultipartParser.StateMachine.State.PartState);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      v17 = MEMORY[0x25F8A2E10](v10, v7);
      v18 = *(v5 + 8);
      v18(v7, v4);
      v18(v10, v4);
      sub_25DD55A9C(v14, type metadata accessor for MultipartParser.StateMachine.State.PartState);
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_25DD114CC(v14, &qword_27FCC26B8, "<J");
    v17 = 0;
    return v17 & 1;
  }

  sub_25DD55A9C(v14, type metadata accessor for MultipartParser.StateMachine.State.PartState);
  v17 = 1;
  return v17 & 1;
}

uint64_t sub_25DD5792C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MultipartParser.StateMachine.State.PartState(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - v8;
  v10 = type metadata accessor for MultipartParser.StateMachine.State(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = (&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v15 = (&v29 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC26B0, ":J");
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v29 - v18;
  v20 = (&v29 + *(v17 + 56) - v18);
  sub_25DD57530(a1, &v29 - v18, type metadata accessor for MultipartParser.StateMachine.State);
  sub_25DD57530(a2, v20, type metadata accessor for MultipartParser.StateMachine.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_16;
      }
    }

    else if (swift_getEnumCaseMultiPayload() != 3)
    {
LABEL_16:
      sub_25DD114CC(v19, &qword_27FCC26B0, ":J");
      goto LABEL_17;
    }

    sub_25DD55A9C(v19, type metadata accessor for MultipartParser.StateMachine.State);
    v23 = 1;
    return v23 & 1;
  }

  if (EnumCaseMultiPayload)
  {
    sub_25DD57530(v19, v13, type metadata accessor for MultipartParser.StateMachine.State);
    v24 = *v13;
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC2630, &unk_25DD9CE60) + 48);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v26 = *v20;
      sub_25DD55A38(v13 + v25, v9);
      sub_25DD55A38(v20 + v25, v7);
      v27 = sub_25DD563D4(v24, v26);

      if (v27)
      {
        v23 = sub_25DD57644(v9, v7);
        sub_25DD55A9C(v7, type metadata accessor for MultipartParser.StateMachine.State.PartState);
        sub_25DD55A9C(v9, type metadata accessor for MultipartParser.StateMachine.State.PartState);
        goto LABEL_11;
      }

      sub_25DD55A9C(v7, type metadata accessor for MultipartParser.StateMachine.State.PartState);
      sub_25DD55A9C(v9, type metadata accessor for MultipartParser.StateMachine.State.PartState);
      sub_25DD55A9C(v19, type metadata accessor for MultipartParser.StateMachine.State);
LABEL_17:
      v23 = 0;
      return v23 & 1;
    }

    sub_25DD55A9C(v13 + v25, type metadata accessor for MultipartParser.StateMachine.State.PartState);
    goto LABEL_15;
  }

  sub_25DD57530(v19, v15, type metadata accessor for MultipartParser.StateMachine.State);
  v22 = *v15;
  if (swift_getEnumCaseMultiPayload())
  {
LABEL_15:

    goto LABEL_16;
  }

  v23 = sub_25DD563D4(v22, *v20);

LABEL_11:
  sub_25DD55A9C(v19, type metadata accessor for MultipartParser.StateMachine.State);
  return v23 & 1;
}

uint64_t sub_25DD57D14(uint64_t a1, uint64_t a2)
{
  v4 = sub_25DD96814();
  v42 = *(v4 - 8);
  v43 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  NextPartAction = type metadata accessor for MultipartParser.StateMachine.ReadNextPartAction(0);
  v8 = MEMORY[0x28223BE20](NextPartAction);
  v10 = (&v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v42 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v42 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCC26A8, "8J");
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v42 - v18;
  v20 = (&v42 + *(v17 + 56) - v18);
  sub_25DD57530(a1, &v42 - v18, type metadata accessor for MultipartParser.StateMachine.ReadNextPartAction);
  sub_25DD57530(a2, v20, type metadata accessor for MultipartParser.StateMachine.ReadNextPartAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (EnumCaseMultiPayload != 4)
      {
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          goto LABEL_29;
        }

LABEL_32:
        sub_25DD114CC(v19, &qword_27FCC26A8, "8J");
LABEL_33:
        v25 = 0;
        return v25 & 1;
      }

      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_32;
      }
    }

LABEL_29:
    sub_25DD55A9C(v19, type metadata accessor for MultipartParser.StateMachine.ReadNextPartAction);
    v25 = 1;
    return v25 & 1;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_25DD57530(v19, v15, type metadata accessor for MultipartParser.StateMachine.ReadNextPartAction);
    if (!swift_getEnumCaseMultiPayload())
    {
      v25 = *v15 == *v20;
      goto LABEL_12;
    }

    goto LABEL_32;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_25DD57530(v19, v13, type metadata accessor for MultipartParser.StateMachine.ReadNextPartAction);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v22 = v42;
      v23 = v20;
      v24 = v43;
      (*(v42 + 32))(v6, v23, v43);
      v25 = MEMORY[0x25F8A2E10](v13, v6);
      v26 = *(v22 + 8);
      v26(v6, v24);
      v26(v13, v24);
LABEL_12:
      sub_25DD55A9C(v19, type metadata accessor for MultipartParser.StateMachine.ReadNextPartAction);
      return v25 & 1;
    }

    (*(v42 + 8))(v13, v43);
    goto LABEL_32;
  }

  sub_25DD57530(v19, v10, type metadata accessor for MultipartParser.StateMachine.ReadNextPartAction);
  v27 = v10[1];
  v28 = v10[2];
  result = swift_getEnumCaseMultiPayload();
  if (result != 2)
  {
    swift_unknownObjectRelease();
    goto LABEL_32;
  }

  v30 = v10[3] >> 1;
  if (__OFSUB__(v30, v28))
  {
    __break(1u);
    goto LABEL_49;
  }

  v31 = v20[2];
  v32 = v20[3] >> 1;
  v33 = v32 - v31;
  if (__OFSUB__(v32, v31))
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v30 - v28 != v33)
  {
    goto LABEL_47;
  }

  v34 = v27 + v28;
  v35 = v20[1] + v31;
  if (v30 == v28 || v34 == v35 || v28 == v30)
  {
LABEL_27:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    goto LABEL_29;
  }

  if (v28 < v30)
  {
    if (v31 != v32)
    {
      v38 = 0;
      if (v31 <= v32)
      {
        v39 = v20[3] >> 1;
      }

      else
      {
        v39 = v20[2];
      }

      v40 = v39 - v31;
      while (v40 != v38)
      {
        if (*(v34 + v38) != *(v35 + v38))
        {
          goto LABEL_47;
        }

        if (~v28 + v30 == v38)
        {
          goto LABEL_27;
        }

        v41 = v28 + v38 + 1;
        if (v41 < v28 || v41 >= v30)
        {
          goto LABEL_51;
        }

        if (v33 == ++v38)
        {
          goto LABEL_47;
        }
      }

      goto LABEL_50;
    }

LABEL_47:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_25DD55A9C(v19, type metadata accessor for MultipartParser.StateMachine.ReadNextPartAction);
    goto LABEL_33;
  }

LABEL_52:
  __break(1u);
  return result;
}

unint64_t sub_25DD582B8()
{
  result = qword_27FCC2678;
  if (!qword_27FCC2678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC2678);
  }

  return result;
}

unint64_t sub_25DD58358()
{
  result = qword_27FCC2688;
  if (!qword_27FCC2688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCC2688);
  }

  return result;
}

uint64_t sub_25DD583AC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25DD58424(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
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

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_25DD58560(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v18 = a2 & 0x7FFFFFFF;
      v18[1] = 0;
    }

    else
    {
      v18[1] = a2 - 1;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t sub_25DD58718(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for MultipartParser(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25DD587A0(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(sub_25DD96814() - 8);
  v9 = *(v8 + 80);
  if (*(v8 + 84))
  {
    v10 = *(v8 + 64);
  }

  else
  {
    v10 = *(v8 + 64) + 1;
  }

  v11 = v10 + ((v9 + 8) & ~v9);
  v12 = 8;
  if (v11 > 8)
  {
    v12 = v11;
  }

  if (v7 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v7;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = v9 | 7;
  v15 = *(v6 + 64) + v14;
  if (v13 >= a2)
  {
    goto LABEL_32;
  }

  v16 = (v15 & ~v14) + (((((v12 & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 32;
  v17 = v16 & 0xFFFFFFF8;
  if ((v16 & 0xFFFFFFF8) != 0)
  {
    v18 = 2;
  }

  else
  {
    v18 = a2 - v13 + 1;
  }

  if (v18 >= 0x10000)
  {
    v19 = 4;
  }

  else
  {
    v19 = 2;
  }

  if (v18 < 0x100)
  {
    v19 = 1;
  }

  if (v18 >= 2)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (v20 > 1)
  {
    if (v20 == 2)
    {
      v21 = *(a1 + v16);
      if (!v21)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v21 = *(a1 + v16);
      if (!v21)
      {
        goto LABEL_32;
      }
    }

LABEL_29:
    v23 = v21 - 1;
    if (v17)
    {
      v23 = 0;
      v24 = *a1;
    }

    else
    {
      v24 = 0;
    }

    return v13 + (v24 | v23) + 1;
  }

  if (v20)
  {
    v21 = *(a1 + v16);
    if (v21)
    {
      goto LABEL_29;
    }
  }

LABEL_32:
  if (v7 < 0x7FFFFFFF)
  {
    v26 = *((v12 + ((a1 + v15) & ~v14) + 8) & 0xFFFFFFFFFFFFFFF8);
    if (v26 >= 0xFFFFFFFF)
    {
      LODWORD(v26) = -1;
    }

    return (v26 + 1);
  }

  else
  {
    v25 = *(v6 + 48);

    return v25(a1, v7, v5);
  }
}