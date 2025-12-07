char *sub_214F880A8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42708, &qword_2150C3EA0);
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

char *sub_214F881AC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42680, &qword_2150C3E58);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_214F882BC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA426B8, &qword_2150CD140);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_214F883C8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA426C0, &unk_2150CD150);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA426C8, &qword_2150C6370);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_214F884FC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

id static related decl e for ICErrorCode.assertionFailure(_:_:)(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = sub_214F8875C(v4, a1, a2);

  return v5;
}

id sub_214F8875C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = (a1 + 16);
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = *(a1 + 16);
  }

  else
  {
    type metadata accessor for ICError(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41F48, &unk_2150C2B50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2150C25D0;
    *(inited + 32) = sub_2150A4AD0();
    *(inited + 40) = v8;
    v9 = a3();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 48) = v9;
    *(inited + 56) = v10;
    sub_214F301C4(inited);
    swift_setDeallocating();
    sub_214F88894(inited + 32);
    sub_214F888FC();
    sub_2150A35B0();
    swift_beginAccess();
    v11 = *v4;
    *v4 = v14;
    v5 = v14;

    v3 = 0;
  }

  v12 = v3;
  return v5;
}

uint64_t sub_214F88894(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41D60, &unk_2150C5450);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_214F888FC()
{
  result = qword_27CA419D8;
  if (!qword_27CA419D8)
  {
    type metadata accessor for ICError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA419D8);
  }

  return result;
}

uint64_t sub_214F88954@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v27 = a5;
  v28 = a2;
  v30 = a4;
  v29 = a1;
  v26 = *(a3 - 8);
  v10 = MEMORY[0x28223BE20](a1, a2);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v15 = *(v14 - 8);
  v17 = MEMORY[0x28223BE20](v10, v16);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v26 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v22, v6);
  v24 = 1;
  if ((*(v15 + 48))(v22, 1, v14) != 1)
  {
    (*(v15 + 32))(v19, v22, v14);
    v29(v19, v12);
    (*(v15 + 8))(v19, v14);
    if (v7)
    {
      return (*(v26 + 32))(v27, v12, a3);
    }

    v24 = 0;
  }

  return (*(*(v30 - 8) + 56))(a6, v24, 1);
}

uint64_t sub_214F88BFC(uint64_t a1, uint64_t a2)
{
  v3 = sub_214F8A7EC(a1, a2);

  if (*(v3 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CA42768, &unk_2150C3F10);
    v4 = sub_2150A5EA0();
  }

  else
  {
    v4 = MEMORY[0x277D84F98];
  }

  v9 = v4;
  sub_214F8A93C(v3, 1, &v9);
  if (v2)
  {

    return v3;
  }

  v5 = v9;
  v6 = *(v9 + 16);
  if (!v6)
  {

    return MEMORY[0x277D84F90];
  }

  v3 = sub_214F40D5C(*(v9 + 16), 0);
  v7 = sub_214F420FC(&v9, (v3 + 32), v6, v5);
  result = sub_214F420F4(v9);
  if (v7 == v6)
  {

    return v3;
  }

  __break(1u);
  return result;
}

google::protobuf::io::ZeroCopyOutputStream *Array.init<A, B>(uniquing:by:uniquingKeysWith:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unsigned int (*a5)(char *, uint64_t, uint64_t), uint64_t a6, uint64_t a7)
{
  v9 = sub_214F8AC98(a1, a2, a3, a4, a5, a6, a7);

  (*(*(a5 - 1) + 8))(a1, a5);
  return v9;
}

uint64_t Array.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_214F8AE0C(a1, a2, a3);
  v4 = sub_2150A57E0();
  v5 = *(*(v4 - 8) + 8);

  return v5(a1, v4);
}

uint64_t sub_214F88E40(uint64_t a1, uint64_t *a2, unint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42760, &qword_2150C3ED8);
  sub_2150A4FD0();
  swift_getWitnessTable();
  sub_2150A53B0();
  sub_214D6EBB0();
  result = sub_2150A4DE0();
  if (result)
  {
    sub_2150A4F30();
    sub_214F8A798(a3, *a2, a4);
    v9 = *a2;
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
    v11 = v9 & 0xFFFFFFFFFFFFFF8;
    if ((isClassOrObjCExistentialType & 1) == 0)
    {
      v11 = v9;
    }

    return (*(*(a4 - 8) + 24))(v11 + ((*(*(a4 - 8) + 80) + 32) & ~*(*(a4 - 8) + 80)) + *(*(a4 - 8) + 72) * a3, a1, a4);
  }

  return result;
}

void (*Array.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x38uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  v10 = *(a3 + 16);
  v11 = sub_2150A57E0();
  v9[3] = v11;
  v12 = *(v11 - 8);
  v9[4] = v12;
  v13 = *(v12 + 64);
  if (v7)
  {
    v9[5] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v9[5] = malloc(*(v12 + 64));
    v14 = malloc(v13);
  }

  v9[6] = v14;
  Array.subscript.getter(v10, v14);
  return sub_214F890D8;
}

void sub_214F890D8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[5];
  v4 = (*a1)[6];
  v5 = (*a1)[3];
  v6 = (*a1)[4];
  v7 = (*a1)[1];
  v8 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[5], v4, v5);
    sub_214F8AE0C(v3, v8, v7);
    v9 = *(v6 + 8);
    v9(v3, v5);
    v9(v4, v5);
  }

  else
  {
    sub_214F8AE0C((*a1)[6], v8, v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

google::protobuf::io::ZeroCopyOutputStream *Array.init<A, B>(uniquing:combine:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = sub_214F8AB08(a1, a2, a3, a4, a5, a6, a7, a8);
  (*(*(a6 - 8) + 8))(a1, a6);
  return v10;
}

uint64_t sub_214F89240@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(*a2 + *MEMORY[0x277D84DE8]);
  v6 = *(swift_getTupleTypeMetadata2() + 48);
  swift_getAtKeyPath();
  return (*(*(v5 - 8) + 16))(a3 + v6, a1, v5);
}

uint64_t sub_214F89314(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v54 = a8;
  v9 = v8;
  v69 = a2;
  v70 = a4;
  v68 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v63 = *(AssociatedTypeWitness - 8);
  v15 = MEMORY[0x28223BE20](AssociatedTypeWitness, v14);
  v52 = &v51 - v16;
  v55 = a5;
  v53 = *(a5 - 8);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v65 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v20);
  v66 = &v51 - v21;
  v22 = sub_2150A57E0();
  v56 = *(v22 - 8);
  v57 = v22;
  v24 = MEMORY[0x28223BE20](v22, v23);
  v59 = &v51 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24, v26);
  v29 = &v51 - v28;
  v31 = MEMORY[0x28223BE20](v27, v30);
  v58 = &v51 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v31, v33);
  v64 = *(a3 - 1);
  MEMORY[0x28223BE20](v34, v35);
  v37 = &v51 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = a6;
  v71 = swift_getAssociatedTypeWitness();
  v60 = *(v71 - 8);
  MEMORY[0x28223BE20](v71, v38);
  v40 = &v51 - v39;
  v41 = sub_2150A4D70();
  v72 = sub_2150A5D20();
  v67 = sub_2150A5D30();
  sub_2150A5CD0();
  (*(v64 + 2))(v37, v61, a3);
  v70 = v40;
  v64 = a3;
  result = sub_2150A4D60();
  if (v41 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v41)
  {
    v43 = (v63 + 48);
    v44 = (v63 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_2150A5850();
      result = (*v43)(v29, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v68(v29, v66);
      if (v9)
      {
        (*(v60 + 8))(v70, v71);

        (*(v53 + 32))(v54, v66, v55);
        return (*v44)(v29, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v44)(v29, AssociatedTypeWitness);
      sub_2150A5D10();
      if (!--v41)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v45 = v59;
  sub_2150A5850();
  v46 = v45;
  v47 = v63;
  v48 = *(v63 + 48);
  v66 = (v63 + 48);
  v64 = v48;
  if (v48(v45, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v60 + 8))(v70, v71);
    (*(v56 + 8))(v46, v57);
    return v72;
  }

  else
  {
    v63 = *(v47 + 32);
    v49 = (v47 + 8);
    v50 = v52;
    while (1)
    {
      (v63)(v50, v46, AssociatedTypeWitness);
      v68(v50, v65);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v49)(v50, AssociatedTypeWitness);
      sub_2150A5D10();
      sub_2150A5850();
      if (v64(v46, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v49)(v50, AssociatedTypeWitness);
    (*(v60 + 8))(v70, v71);

    return (*(v53 + 32))(v54, v65, v55);
  }
}

uint64_t Array.appendNonNil(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = sub_2150A57E0();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v19 - v8;
  v10 = *(v3 - 8);
  v12 = MEMORY[0x28223BE20](v7, v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v19 - v16;
  (*(v5 + 16))(v9, a1, v4);
  if ((*(v10 + 48))(v9, 1, v3) == 1)
  {
    return (*(v5 + 8))(v9, v4);
  }

  (*(v10 + 32))(v17, v9, v3);
  (*(v10 + 16))(v14, v17, v3);
  sub_2150A4F90();
  return (*(v10 + 8))(v17, v3);
}

uint64_t Array.insertOptional(_:at:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = sub_2150A57E0();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v10 = &v20 - v9;
  v11 = *(v4 - 8);
  v13 = MEMORY[0x28223BE20](v8, v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v20 - v17;
  (*(v6 + 16))(v10, a1, v5);
  if ((*(v11 + 48))(v10, 1, v4) == 1)
  {
    return (*(v6 + 8))(v10, v5);
  }

  (*(v11 + 32))(v18, v10, v4);
  (*(v11 + 16))(v15, v18, v4);
  sub_2150A4FA0();
  return (*(v11 + 8))(v18, v4);
}

uint64_t Array.prependNonNil(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = sub_2150A57E0();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v10 = &v16 - v9;
  v11 = *(v4 - 8);
  MEMORY[0x28223BE20](v8, v12);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v10, a1, v5);
  if ((*(v11 + 48))(v10, 1, v4) == 1)
  {
    return (*(v6 + 8))(v10, v5);
  }

  (*(v11 + 32))(v14, v10, v4);
  Array.prepend(_:)(v14, a2);
  return (*(v11 + 8))(v14, v4);
}

uint64_t Array.firstIndex(matching:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28[0] = a1;
  v28[1] = a2;
  v6 = *(a4 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v33 = sub_2150A57E0();
  v10 = *(v33 - 8);
  v12 = MEMORY[0x28223BE20](v33, v11);
  v32 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v16 = v28 - v15;
  v35[1] = a3;
  v29 = a4;
  v17 = sub_2150A4FD0();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x216061950](v35, v17, WitnessTable);
  v34 = v35[0];
  sub_2150A5E60();
  sub_2150A5E30();
  v19 = sub_2150A5E50();
  v20 = (v10 + 32);
  v30 = TupleTypeMetadata2 - 8;
  v31 = v19;
  v21 = (v6 + 32);
  v22 = (v6 + 8);
  v23 = v29;
  while (1)
  {
    v24 = v32;
    sub_2150A5E40();
    (*v20)(v16, v24, v33);
    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v16, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v25 = *v16;
    (*v21)(v8, &v16[*(TupleTypeMetadata2 + 48)], v23);
    v26 = (v28[0])(v25, v8);
    (*v22)(v8, v23);
    if (v26)
    {
      goto LABEL_6;
    }
  }

  v25 = 0;
LABEL_6:

  return v25;
}

uint64_t Array.firstSearchingBackwardsIndex(from:matching:)(uint64_t a1, uint64_t (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a1;
  v8 = *(a5 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2150A4F80();
  result = 0;
  if (v11 > v7 && (v7 & 0x8000000000000000) == 0)
  {
    v13 = (v8 + 8);
    while (1)
    {
      sub_2150A4FF0();
      v14 = a2(v10);
      (*v13)(v10, a5);
      if (v14)
      {
        break;
      }

      if (v7-- <= 0)
      {
        return 0;
      }
    }

    return v7;
  }

  return result;
}

uint64_t sub_214F8A490@<X0>(uint64_t a2@<X4>, uint64_t (*a3)(void)@<X5>, uint64_t a4@<X8>)
{
  a3();
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    sub_2150A4FF0();
    v7 = 0;
  }

  v8 = *(*(a2 - 8) + 56);

  return v8(a4, v7, 1, a2);
}

uint64_t Array.firstSearchingForwardsIndex(from:matching:)(uint64_t a1, uint64_t (*a2)(char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a1;
  v8 = *(a5 - 8);
  v9 = MEMORY[0x28223BE20](a1, a2);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v9 < 0)
  {
    return 0;
  }

  v12 = sub_2150A4F80();
  if (v12 <= v7)
  {
    return 0;
  }

  v13 = v12;
  v14 = (v8 + 8);
  while (1)
  {
    sub_2150A4FF0();
    v15 = a2(v11);
    (*v14)(v11, a5);
    if (v15)
    {
      break;
    }

    if (v13 == ++v7)
    {
      return 0;
    }
  }

  return v7;
}

google::protobuf::io::ZeroCopyOutputStream *Array<A>.init<A>(uniquing:uniquingKeysWith:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int (*a5)(char *, uint64_t, uint64_t), uint64_t a6, uint64_t a7)
{
  KeyPath = swift_getKeyPath();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = sub_214F8AC98(a1, KeyPath, a2, a3, a5, AssociatedConformanceWitness, a7);

  (*(*(a5 - 1) + 8))(a1, a5);
  return v14;
}

uint64_t sub_214F8A798(unint64_t a1, uint64_t a2, uint64_t a3)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v6 = a2;
  }

  if (*(v6 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_214F8A7EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v15 = MEMORY[0x277D84F90];
  sub_214F86F2C(0, v3, 0);
  if (v3)
  {
    v4 = a1 + 56;
    do
    {
      v10 = *(v4 - 24);
      v11 = *(v4 - 16);
      v12 = *(v4 - 8);

      swift_getAtKeyPath();

      v5 = v12;
      v7 = *(v15 + 16);
      v6 = *(v15 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_214F86F2C((v6 > 1), v7 + 1, 1);
        v5 = v12;
      }

      v4 += 32;
      *(v15 + 16) = v7 + 1;
      v8 = v15 + 48 * v7;
      *(v8 + 32) = v13;
      *(v8 + 40) = v14;
      *(v8 + 48) = v10;
      *(v8 + 56) = v11;
      *(v8 + 64) = v5;
      --v3;
    }

    while (v3);
  }

  return v15;
}

unint64_t sub_214F8A93C(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    v5 = (result + 72);
    do
    {
      v8 = *(v5 - 1);
      v9 = *v5;
      v10 = *(v5 - 3);
      v11 = *(v5 - 2);
      v13 = *(v5 - 5);
      v12 = *(v5 - 4);

      if (!v12)
      {
        break;
      }

      v28 = v3;
      v29 = v10;
      v14 = *a3;
      result = sub_214F30094(v13, v12);
      v16 = v14[2];
      v17 = (v15 & 1) == 0;
      v18 = __OFADD__(v16, v17);
      v19 = v16 + v17;
      if (v18)
      {
        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        result = sub_2150A63E0();
        __break(1u);
        return result;
      }

      v20 = v15;
      if (v14[3] >= v19)
      {
        if ((a2 & 1) == 0)
        {
          v27 = result;
          sub_214FED974();
          result = v27;
        }
      }

      else
      {
        sub_214FEA0C0(v19, a2 & 1);
        result = sub_214F30094(v13, v12);
        if ((v20 & 1) != (v21 & 1))
        {
          goto LABEL_18;
        }
      }

      v22 = *a3;
      if (v20)
      {
        v6 = result;

        v7 = (v22[7] + 32 * v6);
        *v7 = v29;
        v7[1] = v11;
        v7[2] = v8;
        v7[3] = v9;
      }

      else
      {
        v22[(result >> 6) + 8] |= 1 << result;
        v23 = (v22[6] + 16 * result);
        *v23 = v13;
        v23[1] = v12;
        v24 = (v22[7] + 32 * result);
        *v24 = v29;
        v24[1] = v11;
        v24[2] = v8;
        v24[3] = v9;
        v25 = v22[2];
        v18 = __OFADD__(v25, 1);
        v26 = v25 + 1;
        if (v18)
        {
          goto LABEL_17;
        }

        v22[2] = v26;
      }

      v5 += 6;
      a2 = 1;
      --v3;
    }

    while (v28 != 1);
  }

  return result;
}

google::protobuf::io::ZeroCopyOutputStream *sub_214F8AB08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  MEMORY[0x28223BE20](a1, a1);
  (*(v10 + 16))(v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_2150A4970();
  if (!v8)
  {
    google::protobuf::io::ZeroCopyOutputStream::~ZeroCopyOutputStream(result);
    v13 = v12;

    v14[1] = v13;
    sub_2150A4950();
    swift_getWitnessTable();
    return sub_2150A4FE0();
  }

  return result;
}

google::protobuf::io::ZeroCopyOutputStream *sub_214F8AC98(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unsigned int (*a5)(char *, uint64_t, uint64_t), uint64_t a6, uint64_t a7)
{
  v11 = *a2;
  v23 = a5;
  v24 = a6;
  v25 = a7;
  v26 = a2;
  v12 = (v11 + *MEMORY[0x277D84DE8]);
  v14 = *v12;
  v13 = v12[1];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v27 = sub_214F89314(sub_214F8AEC0, v22, a5, TupleTypeMetadata2, MEMORY[0x277D84A98], a7, MEMORY[0x277D84AC0], v16);
  v17 = sub_2150A4FD0();
  WitnessTable = swift_getWitnessTable();
  v19 = sub_214F8AB08(&v27, a3, a4, v14, v13, v17, a6, WitnessTable);

  return v19;
}

uint64_t sub_214F8AE0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[2] = *(a3 + 16);
  v5[4] = a2;
  sub_2150A57E0();
  return sub_214F88954(sub_214F8AE9C, v5, MEMORY[0x277D84A98], MEMORY[0x277D84F78] + 8, v3, &v6);
}

uint64_t sub_214F8AEE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_214F8AF20(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_214F8AF68(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_214F8AFFC(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  result = sub_214FB6DA0(a3, a4);
  if (!v4)
  {
    if (v9)
    {
      v10 = result;
      v11 = v9;
      if (a2)
      {
        sub_2150A5B20();
        v12 = sub_214FB7B38(a3, a4);
        MEMORY[0x2160617E0](v12);

        MEMORY[0x2160617E0](2570, 0xE200000000000000);
        MEMORY[0x2160617E0](v10, v11);

        MEMORY[0x2160617E0](0x1000000000000016, 0x80000002150E26C0);
        sub_2150A49F0();
        MEMORY[0x2160617E0](91, 0xE100000000000000);
        v14 = sub_2150A6100();
        MEMORY[0x2160617E0](v14);

        sub_2150A49F0();
        MEMORY[0x2160617E0](0, 0xE000000000000000);

        MEMORY[0x2160617E0](1886152040, 0xE400000000000000);
        sub_2150A49F0();
        MEMORY[0x2160617E0](91, 0xE100000000000000);
        v15 = sub_2150A6100();
        MEMORY[0x2160617E0](v15);

        sub_2150A49F0();
        MEMORY[0x2160617E0](0, 0xE000000000000000);

        MEMORY[0x2160617E0](0xD00000000000001ELL, 0x80000002150E26E0);
      }

      else
      {
        v13 = sub_214FB7B38(a3, a4);
        MEMORY[0x2160617E0](v13);

        MEMORY[0x2160617E0](2570, 0xE200000000000000);
        v16 = sub_214FB7EB8();
        MEMORY[0x2160617E0](v16);

        MEMORY[0x2160617E0](2570, 0xE200000000000000);
        MEMORY[0x2160617E0](v10, v11);
      }

      return 0;
    }

    else
    {
      return sub_214FB7B38(a3, a4);
    }
  }

  return result;
}

id RealtimeCollaborationSelectionDocument.State.__allocating_init(identity:fields:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = objc_allocWithZone(v3);
  v6 = sub_2150A39A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA427F0, &qword_2150C38A8);
  v7 = sub_2150A4910();

  v8 = [v5 initWithIdentity:v6 fields:v7];

  v9 = sub_2150A3A00();
  (*(*(v9 - 8) + 8))(a1, v9);
  return v8;
}

id RealtimeCollaborationSelectionDocument.State.init(identity:fields:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = sub_2150A39A0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA427F0, &qword_2150C38A8);
  v7 = sub_2150A4910();

  v11.receiver = v3;
  v11.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v11, sel_initWithIdentity_fields_, v6, v7);

  v9 = sub_2150A3A00();
  (*(*(v9 - 8) + 8))(a1, v9);
  return v8;
}

id RealtimeCollaborationSelectionDocument.State.__allocating_init(iccrCoder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithICCRCoder_];

  return v3;
}

id RealtimeCollaborationSelectionDocument.State.init(iccrCoder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithICCRCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

unint64_t _s11NotesShared38RealtimeCollaborationSelectionDocumentC5StateC12crPropertiesSDySSSo12ICCRDataType_pGvgZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42378, &qword_2150C3920);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2150C29C0;
  v1 = NSStringFromSelector(sel_participantIDsToSelectionRegisters);
  v2 = sub_2150A4AD0();
  v4 = v3;

  *(inited + 32) = v2;
  *(inited + 40) = v4;
  *(inited + 48) = [objc_allocWithZone(ICCRDictionary) init];
  v5 = NSStringFromSelector(sel_participantIDsOrder);
  v6 = sub_2150A4AD0();
  v8 = v7;

  *(inited + 56) = v6;
  *(inited + 64) = v8;
  *(inited + 72) = [objc_allocWithZone(ICCROrderedSet) init];
  v9 = sub_214FA5058(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA42380, &qword_2150C3FE0);
  swift_arrayDestroy();
  return v9;
}

id sub_214F8BA5C(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() standardUserDefaults];
  sub_2150A5B20();

  MEMORY[0x2160617E0](a1, a2);
  v5 = sub_2150A4A90();

  v6 = [v4 BOOLForKey_];

  return v6;
}

uint64_t sub_214F8BCEC()
{
  v0 = sub_2150A3F30();
  __swift_allocate_value_buffer(v0, qword_280C23258);
  __swift_project_value_buffer(v0, qword_280C23258);
  return sub_2150A3F20();
}

uint64_t sub_214F8BFC4()
{
  v0 = sub_2150A3F30();
  __swift_allocate_value_buffer(v0, qword_280C23280);
  __swift_project_value_buffer(v0, qword_280C23280);
  return sub_2150A3F20();
}

uint64_t sub_214F8C380()
{
  v0 = sub_2150A3F30();
  __swift_allocate_value_buffer(v0, qword_27CA429F0);
  __swift_project_value_buffer(v0, qword_27CA429F0);
  return sub_2150A3F20();
}

uint64_t sub_214F8C68C()
{
  v0 = sub_2150A3F30();
  __swift_allocate_value_buffer(v0, qword_27CA42AC8);
  __swift_project_value_buffer(v0, qword_27CA42AC8);
  return sub_2150A3F20();
}

uint64_t sub_214F8C820()
{
  v0 = sub_2150A3F30();
  __swift_allocate_value_buffer(v0, qword_27CA42B28);
  __swift_project_value_buffer(v0, qword_27CA42B28);
  return sub_2150A3F20();
}

uint64_t sub_214F8C9D4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42C00, &qword_2150C3FE8);
  __swift_allocate_value_buffer(v0, qword_27CA42B88);
  v1 = __swift_project_value_buffer(v0, qword_27CA42B88);
  if (sub_214F8BA5C(0xD000000000000015, 0x80000002150E46C0))
  {
    if (qword_280C23230 != -1)
    {
      swift_once();
    }

    v2 = sub_2150A3F30();
    v3 = __swift_project_value_buffer(v2, qword_280C23238);
    v10 = *(v2 - 8);
    (*(v10 + 16))(v1, v3, v2);
    v4 = *(v10 + 56);
    v5 = v1;
    v6 = 0;
    v7 = v2;
  }

  else
  {
    v8 = sub_2150A3F30();
    v4 = *(*(v8 - 8) + 56);
    v7 = v8;
    v5 = v1;
    v6 = 1;
  }

  return v4(v5, v6, 1, v7);
}

uint64_t static Logger.verboseRealtimeCollaboration.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27CA415F8 != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42C00, &qword_2150C3FE8);
  v3 = __swift_project_value_buffer(v2, qword_27CA42B88);

  return sub_214F8CBCC(v3, a1);
}

uint64_t sub_214F8CBCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42C00, &qword_2150C3FE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static ICQueryType.creationDateRange(from:to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for ICQueryType.DateRange(0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2150A3960();
  v11 = *(*(v10 - 8) + 16);
  v11(v9, a1, v10);
  v11(&v9[*(v6 + 20)], a2, v10);
  v12 = swift_allocBox();
  result = sub_214F930F0(v9, v13, type metadata accessor for ICQueryType.DateRange);
  *a3 = v12 | 0x4000000000000000;
  return result;
}

uint64_t static ICQueryType.modificationDateRange(from:to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for ICQueryType.DateRange(0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2150A3960();
  v11 = *(*(v10 - 8) + 16);
  v11(v9, a1, v10);
  v11(&v9[*(v6 + 20)], a2, v10);
  v12 = swift_allocBox();
  result = sub_214F930F0(v9, v13, type metadata accessor for ICQueryType.DateRange);
  *a3 = v12 | 0x7000000000000000;
  return result;
}

uint64_t ICQueryType.minimumSupportedVersion.getter()
{
  v1 = *v0;
  result = 7;
  switch((*v0 >> 59) & 0x1E | (*v0 >> 2) & 1)
  {
    case 1uLL:
      result = ICQueryType.minimumSupportedVersion.getter();
      if (result <= 7)
      {
        return 7;
      }

      return result;
    case 2uLL:
      v1 &= 0xFFFFFFFFFFFFFFBuLL;
      goto LABEL_5;
    case 3uLL:
    case 8uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0x10uLL:
    case 0x11uLL:
    case 0x12uLL:
    case 0x14uLL:
    case 0x16uLL:
    case 0x17uLL:
      return result;
    case 4uLL:
    case 9uLL:
    case 0xFuLL:
      return 8;
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 0x13uLL:
      return 9;
    case 0x15uLL:
      return 15;
    default:
LABEL_5:
      v3 = *(*(v1 + 16) + 16);
      v4 = MEMORY[0x277D84F90];
      if (v3)
      {
        v24 = MEMORY[0x277D84F90];

        sub_214F86F4C(0, v3, 0);
        v5 = 32;
        v4 = v24;
        do
        {
          v6 = ICQueryType.minimumSupportedVersion.getter();
          v25 = v4;
          v8 = v4[1].u64[0];
          v7 = v4[1].u64[1];
          if (v8 >= v7 >> 1)
          {
            v9 = v6;
            sub_214F86F4C((v7 > 1), v8 + 1, 1);
            v6 = v9;
            v4 = v25;
          }

          v4[1].i64[0] = v8 + 1;
          v4[2].i64[v8] = v6;
          v5 += 8;
          --v3;
        }

        while (v3);
      }

      v10 = v4[1].u64[0];
      if (!v10)
      {
        v12 = 7;
        goto LABEL_26;
      }

      if (v10 > 3)
      {
        v11 = v10 & 0x7FFFFFFFFFFFFFFCLL;
        v13 = v4 + 3;
        v14 = vdupq_n_s64(7uLL);
        v15 = v10 & 0x7FFFFFFFFFFFFFFCLL;
        v16 = v14;
        do
        {
          v14 = vbslq_s8(vcgtq_s64(v13[-1], v14), v13[-1], v14);
          v16 = vbslq_s8(vcgtq_s64(*v13, v16), *v13, v16);
          v13 += 2;
          v15 -= 4;
        }

        while (v15);
        v17 = vbslq_s8(vcgtq_s64(v14, v16), v14, v16);
        v18 = vextq_s8(v17, v17, 8uLL).u64[0];
        v12 = vbsl_s8(vcgtd_s64(v17.i64[0], v18), *v17.i8, v18);
        if (v10 == v11)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v11 = 0;
        v12 = 7;
      }

      v19 = v10 - v11;
      v20 = &v4[2] + v11;
      do
      {
        v22 = *v20++;
        v21 = v22;
        if (*&v22 > *&v12)
        {
          v12 = v21;
        }

        --v19;
      }

      while (v19);
LABEL_26:
      v23 = v12;

      return v23;
  }
}

uint64_t ICQueryType.allowsDeleted.getter()
{
  v1 = *v0;
  v2 = (*v0 >> 59) & 0x1E | (*v0 >> 2) & 1;
  if (v2)
  {
    if (v2 != 2)
    {
      if (v2 == 10)
      {
        return *((v1 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      }

      else
      {
        return 1;
      }
    }

    v1 &= 0xFFFFFFFFFFFFFFBuLL;
  }

  v4 = *(v1 + 16);
  v5 = *(v4 + 16);

  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {

      return 1;
    }

    if (v6 >= *(v4 + 16))
    {
      break;
    }

    v7 = v6 + 1;
    result = ICQueryType.allowsDeleted.getter();
    v6 = v7;
    if ((result & 1) == 0)
    {

      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t ICQueryType.canBeEdited.getter(uint64_t a1)
{
  v2 = *v1;
  v3 = (*v1 >> 59) & 0x1E | (*v1 >> 2) & 1;
  if ((v3 - 3) < 0x15)
  {
    return 1;
  }

  if (v3)
  {
    v2 &= 0xFFFFFFFFFFFFFFBuLL;
    if (v3 == 1)
    {
      ICQueryType.canBeEdited.getter(a1);
      return 1;
    }
  }

  v5 = *(v2 + 16);
  v6 = *(v5 + 16);

  if (!v6)
  {
LABEL_10:

    return 1;
  }

  v7 = 0;
  while (v7 < *(v5 + 16))
  {
    v8 = v7 + 1;
    result = ICQueryType.canBeEdited.getter(result);
    v7 = v8;
    if (v6 == v8)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_214F8D43C@<X0>(unsigned __int8 *a1@<X0>, char *a2@<X8>)
{
  v107 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42D58, &qword_2150C4A50);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v104 = &v100 - v5;
  v110 = sub_2150A3B00();
  v112 = *(v110 - 8);
  MEMORY[0x28223BE20](v110, v6);
  v114 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2150A3AF0();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v103 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v115 = &v100 - v15;
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v100 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0, &unk_2150C2740);
  v21 = MEMORY[0x28223BE20](v19 - 8, v20);
  v106 = &v100 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21, v23);
  v102 = &v100 - v25;
  MEMORY[0x28223BE20](v24, v26);
  v28 = &v100 - v27;
  v29 = sub_2150A3960();
  v30 = *(v29 - 8);
  v32 = MEMORY[0x28223BE20](v29, v31);
  v105 = &v100 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v32, v34);
  v120 = &v100 - v36;
  v38 = MEMORY[0x28223BE20](v35, v37);
  v100 = &v100 - v39;
  v41 = MEMORY[0x28223BE20](v38, v40);
  v101 = &v100 - v42;
  v44 = MEMORY[0x28223BE20](v41, v43);
  v119 = &v100 - v45;
  MEMORY[0x28223BE20](v44, v46);
  v48 = &v100 - v47;
  v49 = type metadata accessor for ICQueryType.RelativeDateRange(0);
  v50 = a1;
  sub_214F5D4A4(&a1[*(v49 + 28)], v28);
  v51 = *(v30 + 48);
  v52 = v51(v28, 1, v29);
  v116 = v29;
  v108 = v30 + 48;
  v109 = v51;
  if (v52 == 1)
  {
    sub_2150A3950();
    v53 = v51(v28, 1, v29);
    v54 = v48;
    if (v53 != 1)
    {
      sub_214F302D4(v28, &qword_27CA41DD0, &unk_2150C2740);
    }
  }

  else
  {
    (*(v30 + 32))(v48, v28, v29);
    v54 = v48;
  }

  v55 = *MEMORY[0x277CC9968];
  v117 = v9;
  v56 = *(v9 + 104);
  v56(v18, v55, v8);
  v118 = v54;
  sub_2150A3830();
  v57 = *v50;
  v113 = v18;
  v111 = v30;
  if (v57 > 2)
  {
    v58 = v50;
    v59 = v115;
    if (v57 <= 4)
    {
      if (v57 == 3)
      {
        (*(v117 + 8))(v18, v8);
        v56(v18, v55, v8);
        v60 = 30;
      }

      else
      {
        (*(v117 + 8))(v18, v8);
        v56(v18, *MEMORY[0x277CC9998], v8);
        v60 = 3;
      }

      goto LABEL_18;
    }

    if (v57 == 5)
    {
      (*(v117 + 8))(v18, v8);
      v56(v18, *MEMORY[0x277CC9998], v8);
      v60 = 12;
LABEL_36:
      v64 = v116;
      v68 = v114;
      goto LABEL_37;
    }

    v69 = v58[1];
    if (v69 <= 2)
    {
      if (v58[1])
      {
        if (v69 != 1)
        {
          v70 = MEMORY[0x277CC9940];
LABEL_30:
          v55 = *v70;
        }
      }

      else
      {
        v55 = *MEMORY[0x277CC9980];
      }

      v75 = v104;
      v56(v104, v55, v8);
      v76 = v117;
      (*(v117 + 56))(v75, 0, 1, v8);
      (*(v76 + 8))(v18, v8);
LABEL_32:
      v77 = *(v76 + 32);
      v78 = v103;
      v77(v103, v75, v8);
      v77(v18, v78, v8);
      if (v58[16])
      {
        v60 = 0;
      }

      else
      {
        v60 = *(v58 + 1);
      }

      v59 = v115;
      goto LABEL_36;
    }

    if (v69 == 3)
    {
      v70 = MEMORY[0x277CC9998];
    }

    else
    {
      if (v69 != 4)
      {
        v76 = v117;
        (*(v117 + 56))(v104, 1, 1, v8);
        v75 = v18;
        goto LABEL_32;
      }

      v70 = MEMORY[0x277CC9988];
    }

    goto LABEL_30;
  }

  v59 = v115;
  if (!v57)
  {
    (*(v117 + 8))(v18, v8);
    v56(v18, v55, v8);
    v60 = 0;
    goto LABEL_36;
  }

  if (v57 != 1)
  {
    (*(v117 + 8))(v18, v8);
    v56(v18, v55, v8);
    v60 = 7;
LABEL_18:
    v64 = v116;
    v68 = v114;
    goto LABEL_37;
  }

  v103 = *(v117 + 8);
  (v103)(v18, v8);
  v56(v18, v55, v8);
  v61 = v114;
  sub_2150A3AE0();
  v56(v59, v55, v8);
  v62 = v102;
  sub_2150A3AD0();
  v63 = v110;
  v104 = v8;
  (v103)(v59, v8);
  (*(v112 + 8))(v61, v63);
  v64 = v116;
  if (v109(v62, 1, v116) == 1)
  {
    sub_214F302D4(v62, &qword_27CA41DD0, &unk_2150C2740);
    v65 = v119;
    v66 = v119;
    v67 = v111;
  }

  else
  {
    v66 = v100;
    sub_2150A3830();
    v67 = v111;
    v71 = v62;
    v72 = *(v111 + 8);
    v65 = v119;
    v72(v119, v64);
    v72(v71, v64);
  }

  v73 = *(v67 + 32);
  v74 = v101;
  v73(v101, v66, v64);
  v73(v65, v74, v64);
  v60 = 1;
  v68 = v114;
  v59 = v115;
  v8 = v104;
LABEL_37:
  result = sub_2150A3AE0();
  if (__OFSUB__(0, v60))
  {
    __break(1u);
  }

  else
  {
    v80 = v59;
    v81 = v56;
    v82 = v106;
    v83 = v118;
    sub_2150A3AD0();
    v84 = v82;
    (*(v112 + 8))(v68, v110);
    v85 = v109;
    if (v109(v82, 1, v64) == 1)
    {
      v86 = v111;
      (*(v111 + 16))(v120, v83, v64);
      if (v85(v84, 1, v64) != 1)
      {
        sub_214F302D4(v84, &qword_27CA41DD0, &unk_2150C2740);
      }
    }

    else
    {
      v86 = v111;
      (*(v111 + 32))(v120, v84, v64);
    }

    v87 = v8;
    v81(v59, *MEMORY[0x277CC9980], v8);
    sub_214F92F04(&qword_27CA42D60, MEMORY[0x277CC99D0], MEMORY[0x277CC99E0]);
    v88 = v113;
    v89 = sub_2150A4A80();
    v90 = *(v117 + 8);
    v90(v80, v87);
    if (v89)
    {
      v90(v88, v87);
      v91 = v116;
      (*(v86 + 8))(v118, v116);
      v92 = *(v86 + 32);
    }

    else
    {
      v93 = v87;
      v94 = v105;
      v95 = v120;
      sub_2150A3810();
      v96 = *(v86 + 8);
      v97 = v116;
      v96(v95, v116);
      v90(v88, v93);
      v91 = v97;
      v96(v118, v97);
      v92 = *(v86 + 32);
      v92(v95, v94, v97);
    }

    v98 = v107;
    v92(v107, v120, v91);
    v99 = type metadata accessor for ICQueryType.DateRange(0);
    return (v92)(&v98[*(v99 + 20)], v119, v91);
  }

  return result;
}

id sub_214F8DFDC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = 0xD000000000000031;
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    v5 = 0x80000002150E5000;
  }

  else
  {
    v5 = 0xE000000000000000;
  }

  sub_2150A5B20();
  MEMORY[0x2160617E0](0xD00000000000007ELL, 0x80000002150E4F50);
  MEMORY[0x2160617E0](v4, v5);

  MEMORY[0x2160617E0](539371040, 0xE400000000000000);
  MEMORY[0x2160617E0](0xD000000000000080, 0x80000002150E4EC0);
  MEMORY[0x2160617E0](0x746E756F63402E29, 0xEC00000030203E20);
  MEMORY[0x2160617E0](0, 0xE000000000000000);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DC0, &qword_2150C2720);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2150C25D0;
  *(inited + 32) = sub_2150A4AD0();
  *(inited + 40) = v7;
  if (a2)
  {

    inited = sub_21505F4D0(1, 2, 1, inited);
    *(inited + 16) = 2;
    *(inited + 48) = a1;
    *(inited + 56) = a2;
  }

  sub_2150680E0(inited);

  v8 = sub_2150A4A90();

  v9 = sub_2150A4EB0();

  v10 = [objc_opt_self() predicateWithFormat:v8 argumentArray:v9];

  return v10;
}

uint64_t sub_214F8E23C(uint64_t result)
{
  if (result == 1)
  {
    sub_2150A5B20();
    MEMORY[0x2160617E0](0x2E7265646C6F66, 0xE700000000000000);
    MEMORY[0x2160617E0](0xD00000000000001CLL, 0x80000002150E4E60);
    MEMORY[0x2160617E0](0x2E7265646C6F66, 0xE700000000000000);
    MEMORY[0x2160617E0](0xD000000000000019, 0x80000002150E4E80);
    MEMORY[0x2160617E0](0x2E7265646C6F66, 0xE700000000000000);
    goto LABEL_7;
  }

  if (!result)
  {
    sub_2150A5B20();
    MEMORY[0x2160617E0](0xD00000000000001CLL, 0x80000002150E4E60);
    MEMORY[0x2160617E0](0xD000000000000019, 0x80000002150E4E80);
LABEL_7:
    MEMORY[0x2160617E0](0xD000000000000014, 0x80000002150E4EA0);
    return 0;
  }

  if (!__OFSUB__(result, 1))
  {
    v1 = sub_2150A4D00();
    MEMORY[0x2160617E0](v1);

    sub_2150A5B20();
    MEMORY[0x2160617E0](0x2E7265646C6F66, 0xE700000000000000);
    MEMORY[0x2160617E0](0xD00000000000001CLL, 0x80000002150E4E60);
    MEMORY[0x2160617E0](0x2E7265646C6F66, 0xE700000000000000);
    MEMORY[0x2160617E0](0xD000000000000019, 0x80000002150E4E80);
    MEMORY[0x2160617E0](0x2E7265646C6F66, 0xE700000000000000);

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

unint64_t sub_214F8E480@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t *a5@<X8>)
{
  v6 = a2;
  v7 = a1;
  v9 = *v5;
  v10 = (*v5 >> 59) & 0x1E | (*v5 >> 2) & 1;
  if (v10 > 1)
  {
    if (v10 == 2)
    {
      v24 = *(*((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x10) + 16);
      v25 = MEMORY[0x277D84F90];
      if (v24)
      {
        v31 = a5;
        v36 = MEMORY[0x277D84F90];

        sub_214F86F8C(0, v24, 0);
        v26 = 32;
        v25 = v36;
        do
        {

          sub_214F8E480(v7, v6, a3, a4, &v35);

          v27 = v35;
          v36 = v25;
          v29 = *(v25 + 16);
          v28 = *(v25 + 24);
          if (v29 >= v28 >> 1)
          {
            sub_214F86F8C((v28 > 1), v29 + 1, 1);
            v25 = v36;
          }

          *(v25 + 16) = v29 + 1;
          *(v25 + 8 * v29 + 32) = v27;
          v26 += 8;
          --v24;
          v6 = a2;
          v7 = a1;
        }

        while (v24);

        a5 = v31;
      }

      result = swift_allocObject();
      *(result + 16) = v25;
      v15 = result | 0x1000000000000000;
      goto LABEL_32;
    }

    if (v10 != 22)
    {
      goto LABEL_15;
    }

    v16 = *((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x10) == a1 && *((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x18) == a2;
    if (!v16 && (sub_2150A6270() & 1) == 0)
    {
      goto LABEL_15;
    }

    v17 = swift_allocObject();
    *(v17 + 16) = a3;
    *(v17 + 24) = a4;
    *a5 = v17 | 0xB000000000000000;
  }

  else
  {
    if (v10)
    {
      if (v10 == 1)
      {
        v12 = *((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v13 = swift_allocObject();
        v36 = v12;

        sub_214F8E480(v7, v6, a3, a4, (v13 + 16));

        v15 = v13 | 4;
LABEL_32:
        *a5 = v15;
        return result;
      }

LABEL_15:
      *a5 = v9;
    }

    v18 = *(*(v9 + 16) + 16);
    v19 = MEMORY[0x277D84F90];
    if (v18)
    {
      v30 = a5;
      v36 = MEMORY[0x277D84F90];

      sub_214F86F8C(0, v18, 0);
      v20 = 32;
      v19 = v36;
      do
      {

        sub_214F8E480(v7, v6, a3, a4, &v35);

        v21 = v35;
        v36 = v19;
        v23 = *(v19 + 16);
        v22 = *(v19 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_214F86F8C((v22 > 1), v23 + 1, 1);
          v19 = v36;
        }

        *(v19 + 16) = v23 + 1;
        *(v19 + 8 * v23 + 32) = v21;
        v20 += 8;
        --v18;
        v6 = a2;
        v7 = a1;
      }

      while (v18);

      a5 = v30;
    }

    result = swift_allocObject();
    *(result + 16) = v19;
    *a5 = result;
  }

  return result;
}

uint64_t sub_214F8E848@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *v3;
  v8 = (*v3 >> 59) & 0x1E | (*v3 >> 2) & 1;
  if (v8 > 1)
  {
    if (v8 != 2)
    {
      if (v8 == 22)
      {
        result = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        v11 = result == a1 && *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x18) == a2;
        if (v11 || (result = sub_2150A6270(), (result & 1) != 0))
        {
          *a3 = 0xF000000000000007;
          return result;
        }
      }

LABEL_14:
      *a3 = v7;
    }

    v33 = a3;
    v19 = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    v20 = *(v19 + 16);

    if (v20)
    {
      v31 = MEMORY[0x277D84F90];
      v21 = 0;
      while (v21 < *(v19 + 16))
      {
        v22 = v21 + 1;

        sub_214F8E848(a1, a2, &v34);

        if ((~v34 & 0xF000000000000007) != 0)
        {
          v29 = v34;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_2150600E0(0, *(v31 + 16) + 1, 1, v31);
            v31 = result;
          }

          v24 = *(v31 + 16);
          v23 = *(v31 + 24);
          v25 = v29;
          if (v24 >= v23 >> 1)
          {
            result = sub_2150600E0((v23 > 1), v24 + 1, 1, v31);
            v31 = result;
            v25 = v29;
          }

          *(v31 + 16) = v24 + 1;
          *(v31 + 8 * v24 + 32) = v25;
          if (v20 - 1 == v21)
          {
            goto LABEL_45;
          }

          ++v21;
        }

        else
        {
          result = sub_214F94748(v34);
          ++v21;
          if (v20 == v22)
          {
            goto LABEL_45;
          }
        }
      }

      goto LABEL_47;
    }

    v31 = MEMORY[0x277D84F90];
LABEL_45:
    v27 = swift_allocObject();

    *(v27 + 16) = v31;
    *v33 = v27 | 0x1000000000000000;
  }

  else
  {
    if (v8)
    {
      if (v8 == 1)
      {

        sub_214F8E848(a1, a2, &v34);

        v10 = v34;
        if ((~v34 & 0xF000000000000007) != 0)
        {
          result = swift_allocObject();
          *(result + 16) = v10;
          *a3 = result | 4;
        }

        else
        {
          *a3 = v34;
        }

        return result;
      }

      goto LABEL_14;
    }

    v32 = a3;
    v12 = *(v7 + 16);
    v13 = *(v12 + 16);

    if (v13)
    {
      v30 = MEMORY[0x277D84F90];
      v14 = 0;
      while (v14 < *(v12 + 16))
      {
        v15 = v14 + 1;

        sub_214F8E848(a1, a2, &v34);

        if ((~v34 & 0xF000000000000007) != 0)
        {
          v28 = v34;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_2150600E0(0, *(v30 + 16) + 1, 1, v30);
            v30 = result;
          }

          v17 = *(v30 + 16);
          v16 = *(v30 + 24);
          v18 = v28;
          if (v17 >= v16 >> 1)
          {
            result = sub_2150600E0((v16 > 1), v17 + 1, 1, v30);
            v30 = result;
            v18 = v28;
          }

          *(v30 + 16) = v17 + 1;
          *(v30 + 8 * v17 + 32) = v18;
          if (v13 - 1 == v14)
          {
            goto LABEL_43;
          }

          ++v14;
        }

        else
        {
          result = sub_214F94748(v34);
          ++v14;
          if (v13 == v15)
          {
            goto LABEL_43;
          }
        }
      }

      __break(1u);
LABEL_47:
      __break(1u);
      return result;
    }

    v30 = MEMORY[0x277D84F90];
LABEL_43:
    v26 = swift_allocObject();

    *(v26 + 16) = v30;
    *v32 = v26;
  }

  return result;
}

uint64_t static ICQueryType.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v4 = type metadata accessor for ICQueryType.RelativeDateRange(0);
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = &v56 - v11;
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = &v56 - v15;
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v56 - v18;
  v20 = type metadata accessor for ICQueryType.DateRange(0);
  v22 = MEMORY[0x28223BE20](v20, v21);
  v24 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v22, v25);
  v28 = &v56 - v27;
  v30 = MEMORY[0x28223BE20](v26, v29);
  v32 = &v56 - v31;
  MEMORY[0x28223BE20](v30, v33);
  v35 = &v56 - v34;
  v36 = *a1;
  v37 = *a2;
  switch((v36 >> 59) & 0x1E | (v36 >> 2) & 1)
  {
    case 1uLL:
      if (((v37 >> 59) & 0x1E | (v37 >> 2) & 1) != 1)
      {
        goto LABEL_62;
      }

      v52 = *((v36 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v56 = *((v37 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v57 = v52;

      v40 = static ICQueryType.== infix(_:_:)(&v57, &v56);

      return v40 & 1;
    case 2uLL:
      if (((v37 >> 59) & 0x1E | (v37 >> 2) & 1) != 2)
      {
        goto LABEL_62;
      }

      v47 = *((v36 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v48 = *((v37 & 0xFFFFFFFFFFFFFFBLL) + 0x10);

      LOBYTE(v47) = sub_214F8F840(v47, v48);

      return v47 & 1;
    case 3uLL:
      if (((v37 >> 59) & 0x1E | (v37 >> 2) & 1) == 3)
      {
        goto LABEL_59;
      }

      goto LABEL_62;
    case 4uLL:
      if (((v37 >> 59) & 0x1E | (v37 >> 2) & 1) != 4)
      {
        goto LABEL_62;
      }

      v40 = *((v36 & 0xFFFFFFFFFFFFFFBLL) + 0x10) == *((v37 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      return v40 & 1;
    case 5uLL:
      if (((v37 >> 59) & 0x1E | (v37 >> 2) & 1) == 5)
      {
        goto LABEL_59;
      }

      goto LABEL_62;
    case 6uLL:
      if (((v37 >> 59) & 0x1E | (v37 >> 2) & 1) == 6)
      {
        goto LABEL_59;
      }

      goto LABEL_62;
    case 7uLL:
      if (((v37 >> 59) & 0x1E | (v37 >> 2) & 1) == 7)
      {
        goto LABEL_59;
      }

      goto LABEL_62;
    case 8uLL:
      if (((v37 >> 59) & 0x1E | (v37 >> 2) & 1) != 8)
      {
        goto LABEL_62;
      }

      v53 = swift_projectBox();
      v54 = swift_projectBox();
      sub_214F92AE4(v53, v35, type metadata accessor for ICQueryType.DateRange);
      sub_214F92AE4(v54, v32, type metadata accessor for ICQueryType.DateRange);

      if ((sub_2150A3920() & 1) == 0)
      {
        sub_214F92A84(v32, type metadata accessor for ICQueryType.DateRange);
        sub_214F92A84(v35, type metadata accessor for ICQueryType.DateRange);

        goto LABEL_62;
      }

      v55 = sub_2150A3920();
      sub_214F92A84(v32, type metadata accessor for ICQueryType.DateRange);
      sub_214F92A84(v35, type metadata accessor for ICQueryType.DateRange);

      if ((v55 & 1) == 0)
      {
        goto LABEL_62;
      }

      goto LABEL_54;
    case 9uLL:
      if (((v37 >> 59) & 0x1E | (v37 >> 2) & 1) != 9)
      {
        goto LABEL_62;
      }

      v44 = swift_projectBox();
      v45 = swift_projectBox();
      sub_214F92AE4(v44, v19, type metadata accessor for ICQueryType.RelativeDateRange);
      sub_214F92AE4(v45, v16, type metadata accessor for ICQueryType.RelativeDateRange);

      v40 = _s11NotesShared11ICQueryTypeO17RelativeDateRangeV2eeoiySbAE_AEtFZ_0(v19, v16);
      sub_214F92A84(v16, type metadata accessor for ICQueryType.RelativeDateRange);
      v46 = v19;
      goto LABEL_22;
    case 0xAuLL:
      if (((v37 >> 59) & 0x1E | (v37 >> 2) & 1) == 0xA)
      {
        goto LABEL_59;
      }

      goto LABEL_62;
    case 0xBuLL:
      if (((v37 >> 59) & 0x1E | (v37 >> 2) & 1) == 0xB)
      {
        goto LABEL_52;
      }

      goto LABEL_62;
    case 0xCuLL:
      if (((v37 >> 59) & 0x1E | (v37 >> 2) & 1) == 0xC)
      {
        goto LABEL_59;
      }

      goto LABEL_62;
    case 0xDuLL:
      if (((v37 >> 59) & 0x1E | (v37 >> 2) & 1) == 0xD)
      {
        goto LABEL_52;
      }

      goto LABEL_62;
    case 0xEuLL:
      if (((v37 >> 59) & 0x1E | (v37 >> 2) & 1) != 0xE)
      {
        goto LABEL_62;
      }

      v41 = swift_projectBox();
      v42 = swift_projectBox();
      sub_214F92AE4(v41, v28, type metadata accessor for ICQueryType.DateRange);
      sub_214F92AE4(v42, v24, type metadata accessor for ICQueryType.DateRange);

      if (sub_2150A3920())
      {
        v43 = sub_2150A3920();
        sub_214F92A84(v24, type metadata accessor for ICQueryType.DateRange);
        sub_214F92A84(v28, type metadata accessor for ICQueryType.DateRange);

        if (v43)
        {
LABEL_54:
          v40 = 1;
          return v40 & 1;
        }
      }

      else
      {
        sub_214F92A84(v24, type metadata accessor for ICQueryType.DateRange);
        sub_214F92A84(v28, type metadata accessor for ICQueryType.DateRange);
      }

LABEL_62:
      v40 = 0;
      return v40 & 1;
    case 0xFuLL:
      if (((v37 >> 59) & 0x1E | (v37 >> 2) & 1) != 0xF)
      {
        goto LABEL_62;
      }

      v50 = swift_projectBox();
      v51 = swift_projectBox();
      sub_214F92AE4(v50, v12, type metadata accessor for ICQueryType.RelativeDateRange);
      sub_214F92AE4(v51, v8, type metadata accessor for ICQueryType.RelativeDateRange);

      v40 = _s11NotesShared11ICQueryTypeO17RelativeDateRangeV2eeoiySbAE_AEtFZ_0(v12, v8);
      sub_214F92A84(v8, type metadata accessor for ICQueryType.RelativeDateRange);
      v46 = v12;
LABEL_22:
      sub_214F92A84(v46, type metadata accessor for ICQueryType.RelativeDateRange);

      return v40 & 1;
    case 0x10uLL:
      if (((v37 >> 59) & 0x1E | (v37 >> 2) & 1) == 0x10)
      {
        goto LABEL_59;
      }

      goto LABEL_62;
    case 0x11uLL:
      if (((v37 >> 59) & 0x1E | (v37 >> 2) & 1) == 0x11)
      {
        goto LABEL_59;
      }

      goto LABEL_62;
    case 0x12uLL:
      if (((v37 >> 59) & 0x1E | (v37 >> 2) & 1) == 0x12)
      {
        goto LABEL_59;
      }

      goto LABEL_62;
    case 0x13uLL:
      if (((v37 >> 59) & 0x1E | (v37 >> 2) & 1) == 0x13)
      {
        goto LABEL_52;
      }

      goto LABEL_62;
    case 0x14uLL:
      if (((v37 >> 59) & 0x1E | (v37 >> 2) & 1) == 0x14)
      {
        goto LABEL_59;
      }

      goto LABEL_62;
    case 0x15uLL:
      if (((v37 >> 59) & 0x1E | (v37 >> 2) & 1) == 0x15)
      {
        goto LABEL_52;
      }

      goto LABEL_62;
    case 0x16uLL:
      if (((v37 >> 59) & 0x1E | (v37 >> 2) & 1) != 0x16)
      {
        goto LABEL_62;
      }

LABEL_52:
      if (*((v36 & 0xFFFFFFFFFFFFFFBLL) + 0x10) == *((v37 & 0xFFFFFFFFFFFFFFBLL) + 0x10) && *((v36 & 0xFFFFFFFFFFFFFFBLL) + 0x18) == *((v37 & 0xFFFFFFFFFFFFFFBLL) + 0x18))
      {
        goto LABEL_54;
      }

      return sub_2150A6270();
    case 0x17uLL:
      if (((v37 >> 59) & 0x1E | (v37 >> 2) & 1) != 0x17)
      {
        goto LABEL_62;
      }

LABEL_59:
      v40 = *((v36 & 0xFFFFFFFFFFFFFFBLL) + 0x10) ^ *((v37 & 0xFFFFFFFFFFFFFFBLL) + 0x10) ^ 1;
      return v40 & 1;
    default:
      if ((v37 >> 59) & 0x1E | (v37 >> 2) & 1)
      {
        goto LABEL_62;
      }

      v38 = *(v36 + 16);
      v39 = *(v37 + 16);

      v40 = sub_214F8F840(v38, v39);

      return v40 & 1;
  }
}

uint64_t sub_214F8F59C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2150A3BC0();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v26 - v11;
  v13 = *(a1 + 16);
  if (v13 != *(a2 + 16))
  {
    v23 = 0;
    return v23 & 1;
  }

  if (!v13 || a1 == a2)
  {
    v23 = 1;
    return v23 & 1;
  }

  v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v15 = a1 + v14;
  v16 = a2 + v14;
  v18 = *(v5 + 16);
  v17 = v5 + 16;
  v19 = (v17 - 8);
  v26 = *(v17 + 56);
  v27 = v18;
  while (1)
  {
    v20 = v27;
    result = (v27)(v12, v15, v4);
    if (!v13)
    {
      break;
    }

    v22 = v17;
    v20(v9, v16, v4);
    sub_214F92F04(&qword_27CA42D40, MEMORY[0x277CFB080], MEMORY[0x277CFB088]);
    v23 = sub_2150A4A80();
    v24 = *v19;
    (*v19)(v9, v4);
    v24(v12, v4);
    if (v23)
    {
      v16 += v26;
      v15 += v26;
      v25 = v13-- == 1;
      v17 = v22;
      if (!v25)
      {
        continue;
      }
    }

    return v23 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_214F8F7B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 4)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_2150A6270() & 1) == 0)
      {
        break;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_214F8F840(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v7 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v5 = *v3++;
        v10 = v5;
        v6 = *v4++;
        v9 = v6;

        v7 = static ICQueryType.== infix(_:_:)(&v10, &v9);

        --v2;
      }

      while ((v7 & 1) != 0 && v2);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_214F8F910(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_2150A6270() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_214F8F9A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptViewModelSegment(0);
  v6 = MEMORY[0x28223BE20](v4, v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v12 = &v33 - v11;
  v13 = *(a1 + 16);
  if (v13 == *(a2 + 16))
  {
    if (!v13 || a1 == a2)
    {
      return 1;
    }

    v14 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v15 = a1 + v14;
    v16 = a2 + v14;
    v17 = *(v10 + 72);
    while (1)
    {
      sub_214F92AE4(v15, v12, type metadata accessor for TranscriptViewModelSegment);
      sub_214F92AE4(v16, v8, type metadata accessor for TranscriptViewModelSegment);
      if ((sub_2150A39B0() & 1) == 0)
      {
        break;
      }

      v19 = v4[5];
      v20 = *&v12[v19];
      v21 = *&v12[v19 + 8];
      v22 = &v8[v19];
      v23 = v20 == *v22 && v21 == *(v22 + 1);
      if (!v23 && (sub_2150A6270() & 1) == 0 || *&v12[v4[6]] != *&v8[v4[6]] || *&v12[v4[7]] != *&v8[v4[7]] || *&v12[v4[8]] != *&v8[v4[8]])
      {
        break;
      }

      v24 = v4[9];
      v25 = &v12[v24];
      v26 = *&v12[v24 + 8];
      v27 = &v8[v24];
      v28 = *(v27 + 1);
      if (v26)
      {
        if (!v28 || (*v25 != *v27 || v26 != v28) && (sub_2150A6270() & 1) == 0)
        {
          break;
        }
      }

      else if (v28)
      {
        break;
      }

      v29 = v4[10];
      v30 = v12[v29];
      v31 = v8[v29];
      if (v30 == 2)
      {
        if (v31 != 2)
        {
          break;
        }

        sub_214F92A84(v8, type metadata accessor for TranscriptViewModelSegment);
        sub_214F92A84(v12, type metadata accessor for TranscriptViewModelSegment);
      }

      else
      {
        if (v31 == 2)
        {
          break;
        }

        v32 = v31 ^ v30;
        sub_214F92A84(v8, type metadata accessor for TranscriptViewModelSegment);
        sub_214F92A84(v12, type metadata accessor for TranscriptViewModelSegment);
        if (v32)
        {
          return 0;
        }
      }

      v16 += v17;
      v15 += v17;
      result = 1;
      if (!--v13)
      {
        return result;
      }
    }

    sub_214F92A84(v8, type metadata accessor for TranscriptViewModelSegment);
    sub_214F92A84(v12, type metadata accessor for TranscriptViewModelSegment);
  }

  return 0;
}

uint64_t static ICQueryType.DateRange.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_2150A3920() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for ICQueryType.DateRange(0);

  return sub_2150A3920();
}

uint64_t sub_214F8FD00()
{
  if (*v0)
  {
    return 0x657461446F74;
  }

  else
  {
    return 0x657461446D6F7266;
  }
}

uint64_t sub_214F8FD38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x657461446D6F7266 && a2 == 0xE800000000000000;
  if (v6 || (sub_2150A6270() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x657461446F74 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_2150A6270();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_214F8FE10(uint64_t a1)
{
  v2 = sub_214F92EB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214F8FE4C(uint64_t a1)
{
  v2 = sub_214F92EB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ICQueryType.DateRange.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42C18, &qword_2150C3FF0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214F92EB0();
  sub_2150A65B0();
  v9[15] = 0;
  sub_2150A3960();
  sub_214F92F04(&qword_27CA424A0, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
  sub_2150A60A0();
  if (!v1)
  {
    type metadata accessor for ICQueryType.DateRange(0);
    v9[14] = 1;
    sub_2150A60A0();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t ICQueryType.DateRange.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v34 = sub_2150A3960();
  v30 = *(v34 - 8);
  v5 = MEMORY[0x28223BE20](v34, v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v31 = &v25 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42C28, &qword_2150C3FF8);
  v11 = *(v10 - 8);
  v32 = v10;
  v33 = v11;
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v25 - v13;
  v15 = type metadata accessor for ICQueryType.DateRange(0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214F92EB0();
  sub_2150A6590();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v26 = v15;
  v27 = v7;
  v28 = v18;
  v19 = v30;
  v36 = 0;
  sub_214F92F04(&qword_27CA424D0, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  v20 = v31;
  v21 = v32;
  sub_2150A5FC0();
  v31 = *(v19 + 32);
  (v31)(v28, v20, v34);
  v35 = 1;
  v22 = v27;
  sub_2150A5FC0();
  (*(v33 + 8))(v14, v21);
  v23 = v28;
  (v31)(&v28[*(v26 + 20)], v22, v34);
  sub_214F92AE4(v23, v29, type metadata accessor for ICQueryType.DateRange);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_214F92A84(v23, type metadata accessor for ICQueryType.DateRange);
}

uint64_t sub_214F90440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_2150A3920() & 1) == 0)
  {
    return 0;
  }

  return sub_2150A3920();
}

NotesShared::ICQueryType::RelativeDateRangeType_optional __swiftcall ICQueryType.RelativeDateRangeType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 7;
  if (rawValue < 7)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

NotesShared::ICQueryType::RelativeDateRangeUnit_optional __swiftcall ICQueryType.RelativeDateRangeUnit.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_214F90648()
{
  v1 = 1701869940;
  v2 = 0x6D416D6F74737563;
  if (*v0 != 2)
  {
    v2 = 0x636E657265666572;
  }

  if (*v0)
  {
    v1 = 0x6E556D6F74737563;
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

uint64_t sub_214F906D4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214F93DC4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214F906FC(uint64_t a1)
{
  v2 = sub_214F92F4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214F90738(uint64_t a1)
{
  v2 = sub_214F92F4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ICQueryType.RelativeDateRange.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42C30, &unk_2150C4000);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214F92F4C();
  sub_2150A65B0();
  v11[15] = *v3;
  v11[14] = 0;
  sub_214F92FA0();
  sub_2150A60A0();
  if (!v2)
  {
    v11[13] = v3[1];
    v11[12] = 1;
    sub_214F92FF4();
    sub_2150A6050();
    v11[11] = 2;
    sub_2150A6040();
    type metadata accessor for ICQueryType.RelativeDateRange(0);
    v11[10] = 3;
    sub_2150A3960();
    sub_214F92F04(&qword_27CA424A0, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_2150A6050();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t ICQueryType.RelativeDateRange.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0, &unk_2150C2740);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v21 - v6;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42C50, &qword_2150C4010);
  v8 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v9);
  v11 = &v21 - v10;
  v12 = type metadata accessor for ICQueryType.RelativeDateRange(0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v24 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_214F92F4C();
  sub_2150A6590();
  if (!v2)
  {
    v17 = v7;
    v29 = 0;
    sub_214F93048();
    v18 = v23;
    sub_2150A5FC0();
    *v15 = v30;
    v27 = 1;
    sub_214F9309C();
    sub_2150A5F60();
    v15[1] = v28;
    v26 = 2;
    *(v15 + 1) = sub_2150A5F50();
    v15[16] = v20 & 1;
    sub_2150A3960();
    v25 = 3;
    sub_214F92F04(&qword_27CA424D0, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    sub_2150A5F60();
    (*(v8 + 8))(v11, v18);
    sub_214F71500(v17, &v15[*(v12 + 28)]);
    sub_214F930F0(v15, v22, type metadata accessor for ICQueryType.RelativeDateRange);
  }

  return __swift_destroy_boxed_opaque_existential_0(v24);
}

unint64_t sub_214F90D00(char a1)
{
  result = 6581857;
  switch(a1)
  {
    case 1:
      result = 7630702;
      break;
    case 2:
      result = 29295;
      break;
    case 3:
      result = 0x656D686361747461;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0x73696C6B63656863;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    case 7:
    case 14:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
    case 12:
      result = 0xD000000000000019;
      break;
    case 10:
      result = 0x646574656C6564;
      break;
    case 11:
      result = 0x7265646C6F66;
      break;
    case 13:
      result = 0x6E6F69746E656DLL;
      break;
    case 15:
      result = 0xD000000000000015;
      break;
    case 16:
      result = 0xD00000000000001DLL;
      break;
    case 17:
      result = 0xD000000000000011;
      break;
    case 18:
      result = 0x64656E6E6970;
      break;
    case 19:
      result = 0x646572616873;
      break;
    case 20:
      result = 0xD000000000000011;
      break;
    case 21:
      result = 0x61506D6574737973;
      break;
    case 22:
      result = 6775156;
      break;
    case 23:
      result = 0x646567676174;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_214F90F7C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_214F93F3C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_214F90FB0(uint64_t a1)
{
  v2 = sub_214F93158();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214F90FEC(uint64_t a1)
{
  v2 = sub_214F93158();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ICQueryType.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v113 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42C68, &qword_2150C4018);
  v5 = MEMORY[0x28223BE20](v3 - 8, v4);
  v108 = &v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v104 = &v101 - v8;
  v109 = type metadata accessor for ICQueryType.RelativeDateRange(0);
  v106 = *(v109 - 8);
  v10 = MEMORY[0x28223BE20](v109, v9);
  v107 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v103 = &v101 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42C70, &qword_2150C4020);
  v16 = MEMORY[0x28223BE20](v14 - 8, v15);
  v105 = (&v101 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16, v18);
  v111 = (&v101 - v19);
  v112 = type metadata accessor for ICQueryType.DateRange(0);
  v110 = *(v112 - 8);
  v21 = MEMORY[0x28223BE20](v112, v20);
  v23 = &v101 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v101 - v25;
  v27 = sub_2150A5C10();
  v114 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v28);
  v30 = &v101 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42C78, &qword_2150C4028);
  v115 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v32);
  v34 = &v101 - v33;
  v35 = a1[3];
  v116 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v35);
  sub_214F93158();
  v36 = v117;
  sub_2150A6590();
  if (v36)
  {
    goto LABEL_5;
  }

  v101 = v23;
  v102 = v26;
  v117 = v30;
  v37 = *(sub_2150A5FD0() + 16);

  if (v37 < 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42C88, &qword_2150C4030);
    v118 = 0;
    sub_214F93200(&qword_27CA42C90, sub_214F931AC, MEMORY[0x277D83978]);
    sub_2150A5F60();
    v45 = v119;
    if (v119)
    {
      (*(v115 + 8))(v34, v31);
      v46 = swift_allocObject();
      *(v46 + 16) = v45;
      goto LABEL_9;
    }

    v118 = 1;
    sub_214F931AC();
    sub_2150A5F60();
    v49 = v119;
    if ((~v119 & 0xF000000000000007) != 0)
    {
      (*(v115 + 8))(v34, v31);
      v53 = swift_allocObject();
      *(v53 + 16) = v49;
      v46 = v53 | 4;
      goto LABEL_9;
    }

    v118 = 2;
    sub_2150A5F60();
    v50 = v119;
    v48 = v113;
    v51 = v115;
    if (v119)
    {
      (*(v115 + 8))(v34, v31);
      v52 = swift_allocObject();
      *(v52 + 16) = v50;
      v46 = v52 | 0x1000000000000000;
    }

    else
    {
      v119 = 3;
      v54 = sub_2150A5F40();
      if (v54 == 2)
      {
        LOBYTE(v119) = 4;
        v55 = sub_2150A5F70();
        if ((v55 & 0x10000) != 0)
        {
          LOBYTE(v119) = 5;
          v60 = sub_2150A5F40();
          if (v60 == 2)
          {
            LOBYTE(v119) = 6;
            v61 = sub_2150A5F40();
            if (v61 != 2)
            {
              (*(v115 + 8))(v34, v31);
              v70 = swift_allocObject();
              *(v70 + 16) = v61 & 1;
              v46 = v70 | 0x3000000000000000;
              goto LABEL_9;
            }

            LOBYTE(v119) = 7;
            v62 = sub_2150A5F40();
            if (v62 == 2)
            {
              LOBYTE(v119) = 8;
              sub_214F92F04(&qword_27CA42CA0, type metadata accessor for ICQueryType.DateRange, &protocol conformance descriptor for ICQueryType.DateRange);
              sub_2150A5F60();
              v63 = *(v110 + 48);
              if (v63(v111, 1, v112) != 1)
              {
                (*(v115 + 8))(v34, v31);
                v71 = v102;
                sub_214F930F0(v111, v102, type metadata accessor for ICQueryType.DateRange);
                v72 = swift_allocBox();
                sub_214F930F0(v71, v73, type metadata accessor for ICQueryType.DateRange);
                v46 = v72 | 0x4000000000000000;
                goto LABEL_9;
              }

              sub_214F302D4(v111, &qword_27CA42C70, &qword_2150C4020);
              LOBYTE(v119) = 9;
              sub_214F92F04(&qword_27CA42CA8, type metadata accessor for ICQueryType.RelativeDateRange, &protocol conformance descriptor for ICQueryType.RelativeDateRange);
              sub_2150A5F60();
              v64 = *(v106 + 48);
              v106 += 48;
              v111 = v64;
              if ((v64)(v104, 1, v109) != 1)
              {
                (*(v115 + 8))(v34, v31);
                v74 = v103;
                sub_214F930F0(v104, v103, type metadata accessor for ICQueryType.RelativeDateRange);
                v75 = swift_allocBox();
                sub_214F930F0(v74, v76, type metadata accessor for ICQueryType.RelativeDateRange);
                v46 = v75 | 0x4000000000000004;
                goto LABEL_9;
              }

              sub_214F302D4(v104, &qword_27CA42C68, &qword_2150C4018);
              LOBYTE(v119) = 10;
              v65 = sub_2150A5F40();
              if (v65 == 2)
              {
                LOBYTE(v119) = 11;
                v110 = sub_2150A5F30();
                v67 = v66;
                if (v66)
                {
                  (*(v115 + 8))(v34, v31);
                  v68 = swift_allocObject();
                  *(v68 + 16) = v110;
                  *(v68 + 24) = v67;
                  v69 = 0x5000000000000004;
                }

                else
                {
                  LOBYTE(v119) = 12;
                  v110 = sub_2150A5F30();
                  v78 = v77;
                  if (v77)
                  {
                    (*(v115 + 8))(v34, v31);
                    v68 = swift_allocObject();
                    *(v68 + 16) = v110;
                    *(v68 + 24) = v78;
                    v69 = 0xA000000000000004;
                  }

                  else
                  {
                    LOBYTE(v119) = 17;
                    v79 = sub_2150A5F40();
                    if (v79 != 2)
                    {
                      (*(v115 + 8))(v34, v31);
                      v84 = swift_allocObject();
                      *(v84 + 16) = v79 & 1;
                      v46 = v84 | 0x8000000000000000;
                      goto LABEL_9;
                    }

                    LOBYTE(v119) = 18;
                    v80 = sub_2150A5F40();
                    if (v80 == 2)
                    {
                      LOBYTE(v119) = 19;
                      v81 = sub_2150A5F40();
                      if (v81 == 2)
                      {
                        LOBYTE(v119) = 20;
                        v110 = sub_2150A5F30();
                        v83 = v82;
                        if (v82)
                        {
                          (*(v115 + 8))(v34, v31);
                          v68 = swift_allocObject();
                          *(v68 + 16) = v110;
                          *(v68 + 24) = v83;
                          v69 = 0x9000000000000004;
                        }

                        else
                        {
                          LOBYTE(v119) = 13;
                          v85 = sub_2150A5F40();
                          if (v85 != 2)
                          {
                            (*(v115 + 8))(v34, v31);
                            v88 = swift_allocObject();
                            *(v88 + 16) = v85 & 1;
                            v46 = v88 | 0x6000000000000000;
                            goto LABEL_9;
                          }

                          LOBYTE(v119) = 14;
                          v110 = sub_2150A5F30();
                          v87 = v86;
                          if (v86)
                          {
                            (*(v115 + 8))(v34, v31);
                            v68 = swift_allocObject();
                            *(v68 + 16) = v110;
                            *(v68 + 24) = v87;
                            v69 = 0x6000000000000004;
                          }

                          else
                          {
                            LOBYTE(v119) = 15;
                            sub_2150A5F60();
                            if (v63(v105, 1, v112) != 1)
                            {
                              (*(v115 + 8))(v34, v31);
                              v93 = v101;
                              sub_214F930F0(v105, v101, type metadata accessor for ICQueryType.DateRange);
                              v94 = swift_allocBox();
                              sub_214F930F0(v93, v95, type metadata accessor for ICQueryType.DateRange);
                              v46 = v94 | 0x7000000000000000;
                              goto LABEL_9;
                            }

                            sub_214F302D4(v105, &qword_27CA42C70, &qword_2150C4020);
                            LOBYTE(v119) = 16;
                            sub_2150A5F60();
                            if ((v111)(v108, 1, v109) != 1)
                            {
                              (*(v115 + 8))(v34, v31);
                              v96 = v107;
                              sub_214F930F0(v108, v107, type metadata accessor for ICQueryType.RelativeDateRange);
                              v97 = swift_allocBox();
                              sub_214F930F0(v96, v98, type metadata accessor for ICQueryType.RelativeDateRange);
                              v46 = v97 | 0x7000000000000004;
                              goto LABEL_9;
                            }

                            sub_214F302D4(v108, &qword_27CA42C68, &qword_2150C4018);
                            LOBYTE(v119) = 22;
                            v89 = sub_2150A5F30();
                            v91 = v90;
                            if (v90)
                            {
                              v92 = v89;
                              (*(v115 + 8))(v34, v31);
                              v68 = swift_allocObject();
                              *(v68 + 16) = v92;
                              *(v68 + 24) = v91;
                              v69 = 0xB000000000000000;
                            }

                            else
                            {
                              LOBYTE(v119) = 23;
                              v99 = sub_2150A5F40();
                              if (v99 == 2)
                              {
                                LOBYTE(v119) = 21;
                                v100 = sub_2150A5F40();
                                if (v100 == 2)
                                {
                                  goto LABEL_3;
                                }

                                (*(v115 + 8))(v34, v31);
                                v68 = swift_allocObject();
                                *(v68 + 16) = v100 & 1;
                                v69 = 0xA000000000000000;
                              }

                              else
                              {
                                (*(v115 + 8))(v34, v31);
                                v68 = swift_allocObject();
                                *(v68 + 16) = v99 & 1;
                                v69 = 0xB000000000000004;
                              }
                            }
                          }
                        }
                      }

                      else
                      {
                        (*(v115 + 8))(v34, v31);
                        v68 = swift_allocObject();
                        *(v68 + 16) = v81 & 1;
                        v69 = 0x9000000000000000;
                      }
                    }

                    else
                    {
                      (*(v115 + 8))(v34, v31);
                      v68 = swift_allocObject();
                      *(v68 + 16) = v80 & 1;
                      v69 = 0x8000000000000004;
                    }
                  }
                }
              }

              else
              {
                (*(v115 + 8))(v34, v31);
                v68 = swift_allocObject();
                *(v68 + 16) = v65 & 1;
                v69 = 0x5000000000000000;
              }
            }

            else
            {
              (*(v115 + 8))(v34, v31);
              v68 = swift_allocObject();
              *(v68 + 16) = v62 & 1;
              v69 = 0x3000000000000004;
            }
          }

          else
          {
            (*(v115 + 8))(v34, v31);
            v68 = swift_allocObject();
            *(v68 + 16) = v60 & 1;
            v69 = 0x2000000000000004;
          }

          v46 = v68 | v69;
        }

        else
        {
          v56 = v55;
          (*(v115 + 8))(v34, v31);
          v57 = swift_allocObject();
          *(v57 + 16) = v56;
          v46 = v57 | 0x2000000000000000;
        }

LABEL_9:
        v47 = v116;
        v48 = v113;
LABEL_10:
        *v48 = v46;
        v43 = v47;
        return __swift_destroy_boxed_opaque_existential_0(v43);
      }

      v58 = v54;
      (*(v51 + 8))(v34, v31);
      v59 = swift_allocObject();
      *(v59 + 16) = v58 & 1;
      v46 = v59 | 0x1000000000000004;
    }

    v47 = v116;
    goto LABEL_10;
  }

LABEL_3:
  sub_2150A5F20();
  v38 = v117;
  sub_2150A5BF0();
  v39 = sub_2150A5C20();
  swift_allocError();
  v41 = v40;
  v42 = v114;
  (*(v114 + 16))(v40, v38, v27);
  (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D84168], v39);
  swift_willThrow();
  (*(v42 + 8))(v38, v27);
  (*(v115 + 8))(v34, v31);
LABEL_5:
  v43 = v116;
  return __swift_destroy_boxed_opaque_existential_0(v43);
}

uint64_t ICQueryType.encode(to:)(void *a1)
{
  v2 = v1;
  v41 = type metadata accessor for ICQueryType.RelativeDateRange(0);
  v5 = MEMORY[0x28223BE20](v41, v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v39 - v9;
  v40 = type metadata accessor for ICQueryType.DateRange(0);
  v12 = MEMORY[0x28223BE20](v40, v11);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v39 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42CB0, &qword_2150C4038);
  v19 = *(v18 - 8);
  v43 = v18;
  v44 = v19;
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v39 - v21;
  v23 = *v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214F93158();
  v42 = v22;
  sub_2150A65B0();
  switch((v23 >> 59) & 0x1E | (v23 >> 2) & 1)
  {
    case 1uLL:
      v46 = *((v23 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v45 = 1;
      sub_214F93278();

      v36 = v42;
      v37 = v43;
      sub_2150A60A0();
      (*(v44 + 8))(v36, v37);

    case 2uLL:
      v46 = *((v23 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v45 = 2;
      goto LABEL_10;
    case 3uLL:
      v24 = 3;
      goto LABEL_29;
    case 4uLL:
      LOBYTE(v46) = 4;
      v27 = v42;
      v26 = v43;
      sub_2150A60B0();
      goto LABEL_30;
    case 5uLL:
      v24 = 5;
      goto LABEL_29;
    case 6uLL:
      v24 = 6;
      goto LABEL_29;
    case 7uLL:
      v24 = 7;
      goto LABEL_29;
    case 8uLL:
      v38 = swift_projectBox();
      sub_214F92AE4(v38, v17, type metadata accessor for ICQueryType.DateRange);
      LOBYTE(v46) = 8;
      sub_214F92F04(&qword_27CA42CC0, type metadata accessor for ICQueryType.DateRange, &protocol conformance descriptor for ICQueryType.DateRange);
      v27 = v42;
      v26 = v43;
      sub_2150A60A0();
      v28 = type metadata accessor for ICQueryType.DateRange;
      v29 = v17;
      goto LABEL_24;
    case 9uLL:
      v31 = swift_projectBox();
      sub_214F92AE4(v31, v10, type metadata accessor for ICQueryType.RelativeDateRange);
      LOBYTE(v46) = 9;
      sub_214F92F04(&qword_27CA42CB8, type metadata accessor for ICQueryType.RelativeDateRange, &protocol conformance descriptor for ICQueryType.RelativeDateRange);
      v27 = v42;
      v26 = v43;
      sub_2150A60A0();
      v28 = type metadata accessor for ICQueryType.RelativeDateRange;
      v29 = v10;
      goto LABEL_24;
    case 0xAuLL:
      v24 = 10;
      goto LABEL_29;
    case 0xBuLL:
      v30 = 11;
      goto LABEL_27;
    case 0xCuLL:
      v24 = 13;
      goto LABEL_29;
    case 0xDuLL:
      v30 = 14;
      goto LABEL_27;
    case 0xEuLL:
      v25 = swift_projectBox();
      sub_214F92AE4(v25, v14, type metadata accessor for ICQueryType.DateRange);
      LOBYTE(v46) = 15;
      sub_214F92F04(&qword_27CA42CC0, type metadata accessor for ICQueryType.DateRange, &protocol conformance descriptor for ICQueryType.DateRange);
      v27 = v42;
      v26 = v43;
      sub_2150A60A0();
      v28 = type metadata accessor for ICQueryType.DateRange;
      v29 = v14;
      goto LABEL_24;
    case 0xFuLL:
      v35 = swift_projectBox();
      sub_214F92AE4(v35, v7, type metadata accessor for ICQueryType.RelativeDateRange);
      LOBYTE(v46) = 16;
      sub_214F92F04(&qword_27CA42CB8, type metadata accessor for ICQueryType.RelativeDateRange, &protocol conformance descriptor for ICQueryType.RelativeDateRange);
      v27 = v42;
      v26 = v43;
      sub_2150A60A0();
      v28 = type metadata accessor for ICQueryType.RelativeDateRange;
      v29 = v7;
LABEL_24:
      sub_214F92A84(v29, v28);
      goto LABEL_30;
    case 0x10uLL:
      v24 = 17;
      goto LABEL_29;
    case 0x11uLL:
      v24 = 18;
      goto LABEL_29;
    case 0x12uLL:
      v24 = 19;
      goto LABEL_29;
    case 0x13uLL:
      v30 = 20;
      goto LABEL_27;
    case 0x14uLL:
      v24 = 21;
      goto LABEL_29;
    case 0x15uLL:
      v30 = 12;
      goto LABEL_27;
    case 0x16uLL:
      v30 = 22;
LABEL_27:
      LOBYTE(v46) = v30;
      v27 = v42;
      v26 = v43;
      sub_2150A6060();
      goto LABEL_30;
    case 0x17uLL:
      v24 = 23;
LABEL_29:
      LOBYTE(v46) = v24;
      v27 = v42;
      v26 = v43;
      sub_2150A6070();
LABEL_30:
      result = (*(v44 + 8))(v27, v26);
      break;
    default:
      v46 = *(v23 + 16);
      v45 = 0;
LABEL_10:

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42C88, &qword_2150C4030);
      sub_214F93200(&qword_27CA42CC8, sub_214F93278, MEMORY[0x277D83948]);
      v32 = v43;
      v33 = v42;
      sub_2150A60A0();
      (*(v44 + 8))(v33, v32);

      break;
  }

  return result;
}

uint64_t sub_214F92A84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_214F92AE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

BOOL _s11NotesShared11ICQueryTypeO17RelativeDateRangeV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_2150A3960();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0, &unk_2150C2740);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42D48, &qword_2150C4A48);
  v15 = MEMORY[0x28223BE20](v13, v14);
  v17 = &v28 - v16;
  if (*a1 != *a2)
  {
    return 0;
  }

  v18 = a1[1];
  v19 = a2[1];
  if (v18 == 5)
  {
    if (v19 != 5)
    {
      return 0;
    }
  }

  else if (v18 != v19)
  {
    return 0;
  }

  v20 = a2[16];
  if (a1[16])
  {
    if (!a2[16])
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 1) != *(a2 + 1))
    {
      v20 = 1;
    }

    if (v20)
    {
      return 0;
    }
  }

  v21 = v15;
  v22 = *(type metadata accessor for ICQueryType.RelativeDateRange(0) + 28);
  v23 = *(v21 + 48);
  sub_214F5D4A4(&a1[v22], v17);
  sub_214F5D4A4(&a2[v22], &v17[v23]);
  v24 = *(v5 + 48);
  if (v24(v17, 1, v4) != 1)
  {
    sub_214F5D4A4(v17, v12);
    if (v24(&v17[v23], 1, v4) == 1)
    {
      (*(v5 + 8))(v12, v4);
      goto LABEL_17;
    }

    (*(v5 + 32))(v8, &v17[v23], v4);
    sub_214F92F04(&qword_27CA42D50, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
    v26 = sub_2150A4A80();
    v27 = *(v5 + 8);
    v27(v8, v4);
    v27(v12, v4);
    sub_214F302D4(v17, &qword_27CA41DD0, &unk_2150C2740);
    return (v26 & 1) != 0;
  }

  if (v24(&v17[v23], 1, v4) != 1)
  {
LABEL_17:
    sub_214F302D4(v17, &qword_27CA42D48, &qword_2150C4A48);
    return 0;
  }

  sub_214F302D4(v17, &qword_27CA41DD0, &unk_2150C2740);
  return 1;
}

unint64_t sub_214F92EB0()
{
  result = qword_27CA42C20;
  if (!qword_27CA42C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42C20);
  }

  return result;
}

uint64_t sub_214F92F04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_214F92F4C()
{
  result = qword_27CA42C38;
  if (!qword_27CA42C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42C38);
  }

  return result;
}

unint64_t sub_214F92FA0()
{
  result = qword_27CA42C40;
  if (!qword_27CA42C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42C40);
  }

  return result;
}

unint64_t sub_214F92FF4()
{
  result = qword_27CA42C48;
  if (!qword_27CA42C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42C48);
  }

  return result;
}

unint64_t sub_214F93048()
{
  result = qword_27CA42C58;
  if (!qword_27CA42C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42C58);
  }

  return result;
}

unint64_t sub_214F9309C()
{
  result = qword_27CA42C60;
  if (!qword_27CA42C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42C60);
  }

  return result;
}

uint64_t sub_214F930F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_214F93158()
{
  result = qword_27CA42C80;
  if (!qword_27CA42C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42C80);
  }

  return result;
}

unint64_t sub_214F931AC()
{
  result = qword_27CA42C98;
  if (!qword_27CA42C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42C98);
  }

  return result;
}

uint64_t sub_214F93200(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA42C88, &qword_2150C4030);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_214F93278()
{
  result = qword_27CA42CD0;
  if (!qword_27CA42CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42CD0);
  }

  return result;
}

unint64_t sub_214F932D0()
{
  result = qword_27CA42CD8;
  if (!qword_27CA42CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42CD8);
  }

  return result;
}

unint64_t sub_214F93328()
{
  result = qword_27CA42CE0;
  if (!qword_27CA42CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42CE0);
  }

  return result;
}

uint64_t sub_214F9337C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x69 && *(a1 + 8))
  {
    return (*a1 + 105);
  }

  v3 = ((((*a1 >> 57) & 0x78 | *a1 & 7) >> 2) & 0xFFFFFF9F | (32 * (*a1 & 3))) ^ 0x7F;
  if (v3 >= 0x68)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_214F933D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x68)
  {
    *result = a2 - 105;
    if (a3 >= 0x69)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x69)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 5) & 3 | (4 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_214F93498(uint64_t a1)
{
  result = sub_2150A3960();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ICQueryType.RelativeDateRangeType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ICQueryType.RelativeDateRangeType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for ICQueryType.RelativeDateRangeUnit(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ICQueryType.RelativeDateRangeUnit(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_214F937CC(uint64_t a1)
{
  sub_214F93898(319, qword_280C24038, &type metadata for ICQueryType.RelativeDateRangeUnit);
  if (v1 <= 0x3F)
  {
    sub_214F93898(319, &qword_280C23150, MEMORY[0x277D83B88]);
    if (v2 <= 0x3F)
    {
      sub_214F938E4(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_214F93898(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_2150A57E0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_214F938E4(uint64_t a1)
{
  if (!qword_280C24858)
  {
    sub_2150A3960();
    v1 = sub_2150A57E0();
    if (!v2)
    {
      atomic_store(v1, &qword_280C24858);
    }
  }
}

uint64_t getEnumTagSinglePayload for ICQueryType.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE9)
  {
    goto LABEL_17;
  }

  if (a2 + 23 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 23) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 23;
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

      return (*a1 | (v4 << 8)) - 23;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 23;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x18;
  v8 = v6 - 24;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ICQueryType.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 23 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 23) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE9)
  {
    v4 = 0;
  }

  if (a2 > 0xE8)
  {
    v5 = ((a2 - 233) >> 8) + 1;
    *result = a2 + 23;
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
    *result = a2 + 23;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_214F93AB0()
{
  result = qword_27CA42CE8;
  if (!qword_27CA42CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42CE8);
  }

  return result;
}

unint64_t sub_214F93B08()
{
  result = qword_27CA42CF0;
  if (!qword_27CA42CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42CF0);
  }

  return result;
}

unint64_t sub_214F93B60()
{
  result = qword_27CA42CF8;
  if (!qword_27CA42CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42CF8);
  }

  return result;
}

unint64_t sub_214F93BB8()
{
  result = qword_27CA42D00;
  if (!qword_27CA42D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42D00);
  }

  return result;
}

unint64_t sub_214F93C10()
{
  result = qword_27CA42D08;
  if (!qword_27CA42D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42D08);
  }

  return result;
}

unint64_t sub_214F93C68()
{
  result = qword_27CA42D10;
  if (!qword_27CA42D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42D10);
  }

  return result;
}

unint64_t sub_214F93CC0()
{
  result = qword_27CA42D18;
  if (!qword_27CA42D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42D18);
  }

  return result;
}

unint64_t sub_214F93D18()
{
  result = qword_27CA42D20;
  if (!qword_27CA42D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42D20);
  }

  return result;
}

unint64_t sub_214F93D70()
{
  result = qword_27CA42D28;
  if (!qword_27CA42D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42D28);
  }

  return result;
}

uint64_t sub_214F93DC4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_2150A6270() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E556D6F74737563 && a2 == 0xEA00000000007469 || (sub_2150A6270() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D416D6F74737563 && a2 == 0xEC000000746E756FLL || (sub_2150A6270() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x636E657265666572 && a2 == 0xED00006574614465)
  {

    return 3;
  }

  else
  {
    v6 = sub_2150A6270();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_214F93F3C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6581857 && a2 == 0xE300000000000000;
  if (v3 || (sub_2150A6270() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7630702 && a2 == 0xE300000000000000 || (sub_2150A6270() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 29295 && a2 == 0xE200000000000000 || (sub_2150A6270() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656D686361747461 && a2 == 0xEA0000000000746ELL || (sub_2150A6270() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002150E4D20 == a2 || (sub_2150A6270() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x73696C6B63656863 && a2 == 0xE900000000000074 || (sub_2150A6270() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002150E4D40 == a2 || (sub_2150A6270() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002150E4D60 == a2 || (sub_2150A6270() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002150E4D80 == a2 || (sub_2150A6270() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000019 && 0x80000002150E4DA0 == a2 || (sub_2150A6270() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x646574656C6564 && a2 == 0xE700000000000000 || (sub_2150A6270() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x7265646C6F66 && a2 == 0xE600000000000000 || (sub_2150A6270() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000019 && 0x80000002150E4DC0 == a2 || (sub_2150A6270() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6E6F69746E656DLL && a2 == 0xE700000000000000 || (sub_2150A6270() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002150E4DE0 == a2 || (sub_2150A6270() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000015 && 0x80000002150E4E00 == a2 || (sub_2150A6270() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000002150E4E20 == a2 || (sub_2150A6270() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002150E1960 == a2 || (sub_2150A6270() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x64656E6E6970 && a2 == 0xE600000000000000 || (sub_2150A6270() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x646572616873 && a2 == 0xE600000000000000 || (sub_2150A6270() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002150E4E40 == a2 || (sub_2150A6270() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x61506D6574737973 && a2 == 0xEB00000000726570 || (sub_2150A6270() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 6775156 && a2 == 0xE300000000000000 || (sub_2150A6270() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0x646567676174 && a2 == 0xE600000000000000)
  {

    return 23;
  }

  else
  {
    v6 = sub_2150A6270();

    if (v6)
    {
      return 23;
    }

    else
    {
      return 24;
    }
  }
}

unint64_t sub_214F946A0()
{
  result = qword_27CA42D30;
  if (!qword_27CA42D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42D30);
  }

  return result;
}

unint64_t sub_214F946F4()
{
  result = qword_27CA42D38;
  if (!qword_27CA42D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42D38);
  }

  return result;
}

uint64_t sub_214F94748(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t ActivityEvent.timeInterval.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_2150A3960();
  MEMORY[0x28223BE20](v4 - 8, v5);
  (*(a2 + 8))(a1, a2);
  return sub_2150A3080();
}

uint64_t sub_214F94900()
{
  v1 = sub_2150A3960();
  MEMORY[0x28223BE20](v1, v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v0);
  return sub_2150A3080();
}

uint64_t sub_214F949D0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v48 = MEMORY[0x277D84F90];
  sub_214F86C3C(0, v6, 0);
  result = v48;
  v42 = v5;
  v43 = v4;
  v40 = a1;
  v41 = v6;
  v39 = a2;
  if (v6)
  {
    v8 = (a2 + 32);
    v9 = (a1 + 40);
    v10 = v6;
    while (v4)
    {
      if (!v5)
      {
        goto LABEL_38;
      }

      v45 = v10;
      v46 = result;
      v11 = *v9;
      v44 = *v8;
      v12 = qword_27CA41710;

      if (v12 != -1)
      {
        swift_once();
      }

      v13 = qword_27CA43E50;
      v14 = sub_2150A4A90();
      if ((v11 & 0x1000000000000000) != 0)
      {
        v15 = sub_2150A4C90();
      }

      else
      {
        v15 = sub_2150A4CA0();
      }

      v16 = v15;
      v17 = sub_2150A4A90();
      v18 = [v13 stringByReplacingMatchesInString:v14 options:0 range:0 withTemplate:{v16, v17}];

      sub_2150A4AD0();
      v19 = sub_2150A4BC0();

      if (v19 <= v44)
      {
        v19 = v44;
      }

      result = v46;
      v21 = *(v46 + 16);
      v20 = *(v46 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_214F86C3C((v20 > 1), v21 + 1, 1);
        result = v46;
      }

      --v5;
      *(result + 16) = v21 + 1;
      *(result + 8 * v21 + 32) = v19;
      --v4;
      ++v8;
      v9 += 2;
      v10 = v45 - 1;
      if (v45 == 1)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
  }

  else
  {
LABEL_19:
    v23 = v42;
    v22 = v43;
    if (v43 <= v42)
    {
      return result;
    }

    v24 = v41;
    v25 = (v40 + 16 * v41 + 40);
    while (v24 < v22)
    {
      v26 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        goto LABEL_40;
      }

      if (v23 != v24)
      {
        if (v24 >= v23)
        {
          goto LABEL_41;
        }

        v47 = result;
        v27 = *v25;
        v28 = *(v39 + 32 + 8 * v24);
        v29 = qword_27CA41710;

        if (v29 != -1)
        {
          swift_once();
        }

        v30 = qword_27CA43E50;
        v31 = sub_2150A4A90();
        if ((v27 & 0x1000000000000000) != 0)
        {
          v32 = sub_2150A4C90();
        }

        else
        {
          v32 = sub_2150A4CA0();
        }

        v33 = v32;
        v34 = sub_2150A4A90();
        v35 = [v30 stringByReplacingMatchesInString:v31 options:0 range:0 withTemplate:{v33, v34}];

        sub_2150A4AD0();
        v36 = sub_2150A4BC0();

        if (v36 <= v28)
        {
          v36 = v28;
        }

        result = v47;
        v38 = *(v47 + 16);
        v37 = *(v47 + 24);
        if (v38 >= v37 >> 1)
        {
          sub_214F86C3C((v37 > 1), v38 + 1, 1);
          result = v47;
        }

        *(result + 16) = v38 + 1;
        *(result + 8 * v38 + 32) = v36;
        ++v24;
        v25 += 2;
        v23 = v42;
        v22 = v43;
        if (v26 != v43)
        {
          continue;
        }
      }

      return result;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t sub_214F94DCC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v37 = MEMORY[0x277D84F90];
  result = sub_214F86A20(0, v6, 0);
  v34 = v4;
  v35 = v5;
  v32 = a1;
  v33 = v6;
  v31 = a2;
  if (v6)
  {
    v8 = (a2 + 32);
    v9 = (a1 + 40);
    while (v4)
    {
      if (!v5)
      {
        goto LABEL_22;
      }

      v10 = *(v9 - 1);
      v11 = *v9;
      v12 = *v8;

      v36 = sub_214F97638(v10, v11, v12);
      v14 = v13;

      v16 = *(v37 + 16);
      v15 = *(v37 + 24);
      if (v16 >= v15 >> 1)
      {
        result = sub_214F86A20((v15 > 1), v16 + 1, 1);
      }

      *(v37 + 16) = v16 + 1;
      v17 = v37 + 16 * v16;
      --v5;
      *(v17 + 32) = v36;
      *(v17 + 40) = v14;
      --v4;
      ++v8;
      v9 += 2;
      if (!--v6)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
  }

  else
  {
LABEL_11:
    v18 = v35;
    if (v34 <= v35)
    {
      return v37;
    }

    v19 = v33;
    v20 = (v32 + 16 * v33 + 40);
    while (v19 < v34)
    {
      v21 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        goto LABEL_24;
      }

      if (v18 != v19)
      {
        if (v19 >= v18)
        {
          goto LABEL_25;
        }

        v22 = *(v20 - 1);
        v23 = *v20;
        v24 = *(v31 + 32 + 8 * v19);

        v25 = sub_214F97638(v22, v23, v24);
        v27 = v26;

        v29 = *(v37 + 16);
        v28 = *(v37 + 24);
        if (v29 >= v28 >> 1)
        {
          result = sub_214F86A20((v28 > 1), v29 + 1, 1);
        }

        *(v37 + 16) = v29 + 1;
        v30 = v37 + 16 * v29;
        *(v30 + 32) = v25;
        *(v30 + 40) = v27;
        ++v19;
        v20 += 2;
        v18 = v35;
        if (v21 != v34)
        {
          continue;
        }
      }

      return v37;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_214F94FEC(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = *(a1 + 16);
  v75 = *(a2 + 16);
  if (v75 >= v4)
  {
    v5 = *(a1 + 16);
  }

  else
  {
    v5 = *(a2 + 16);
  }

  v80 = MEMORY[0x277D84F90];
  result = sub_214F86A20(0, v5, 0);
  v7 = v80;
  v8 = &unk_2150C4000;
  v74 = v4;
  if (!v5)
  {
LABEL_29:
    if (v4 <= v75)
    {
      return v7;
    }

    v71 = a2 + 32;
    v73 = v3 + 32;
    v69 = v8[167];
    while (1)
    {
      if (v5 >= v4)
      {
        goto LABEL_60;
      }

      v39 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_61;
      }

      if (v5 == v75)
      {
        return v7;
      }

      if (v5 >= v75)
      {
        goto LABEL_62;
      }

      toa = v7;
      v40 = (v73 + 16 * v5);
      v42 = *v40;
      v41 = v40[1];
      v43 = *(v71 + 8 * v5);
      v44 = qword_27CA41710;

      if (v44 != -1)
      {
        swift_once();
      }

      v45 = qword_27CA43E50;
      v46 = sub_2150A4A90();
      if ((v41 & 0x1000000000000000) != 0)
      {
        v47 = sub_2150A4C90();
      }

      else
      {
        v47 = sub_2150A4CA0();
      }

      v48 = v47;
      v49 = sub_2150A4A90();
      v50 = [v45 stringByReplacingMatchesInString:v46 options:0 range:0 withTemplate:{v48, v49}];

      sub_2150A4AD0();
      v51 = sub_2150A4BC0();

      v52 = v43 - v51;
      if (__OFSUB__(v43, v51))
      {
        goto LABEL_63;
      }

      if (v52 >= 1)
      {
        break;
      }

      v57 = String.truncating(to:ignoringAnsi:)(v43, 1);
      countAndFlagsBits = v57._countAndFlagsBits;
      object = v57._object;
LABEL_51:
      v79 = countAndFlagsBits;

      MEMORY[0x2160617E0](32, 0xE100000000000000);

      v7 = toa;
      v66 = *(toa + 16);
      v65 = *(toa + 24);
      if (v66 >= v65 >> 1)
      {
        result = sub_214F86A20((v65 > 1), v66 + 1, 1);
        v7 = toa;
      }

      *(v7 + 16) = v66 + 1;
      v67 = v7 + 16 * v66;
      *(v67 + 32) = v79;
      *(v67 + 40) = object;
      v5 = v39;
      v4 = v74;
      if (v39 == v74)
      {
        return v7;
      }
    }

    v53 = sub_2150A4F50();
    *(v53 + 16) = v52;
    v54 = (v53 + 32);
    if (v52 >= 4)
    {
      v55 = v52 & 0x7FFFFFFFFFFFFFFCLL;
      v54 += 2 * (v52 & 0x7FFFFFFFFFFFFFFCLL);
      v59 = (v53 + 64);
      v60 = v52 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        *(v59 - 2) = v69;
        *(v59 - 1) = v69;
        *v59 = v69;
        v59[1] = v69;
        v59 += 4;
        v60 -= 4;
      }

      while (v60);
      if (v52 == v55)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v55 = 0;
    }

    v61 = v51 + v55 - v43;
    do
    {
      *v54 = 32;
      v54[1] = 0xE100000000000000;
      v54 += 2;
      v32 = __CFADD__(v61++, 1);
    }

    while (!v32);
LABEL_50:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DE0, &qword_2150C2910);
    sub_214F43BCC(&qword_280C24540, &qword_27CA41DE0, &qword_2150C2910, MEMORY[0x277D83958]);
    v62 = sub_2150A4A20();
    v64 = v63;

    MEMORY[0x2160617E0](v62, v64);

    countAndFlagsBits = v42;
    object = v41;
    goto LABEL_51;
  }

  v9 = 0;
  v72 = v3 + 32;
  v70 = v5;
  v68 = v3;
  while (v9 != v4)
  {
    if (v9 == v75)
    {
      goto LABEL_58;
    }

    v10 = (v72 + 16 * v9);
    v12 = *v10;
    v11 = v10[1];
    to = *(a2 + 32 + 8 * v9);
    v13 = qword_27CA41710;

    if (v13 != -1)
    {
      swift_once();
    }

    v14 = qword_27CA43E50;
    v15 = sub_2150A4A90();
    v16 = v7;
    if ((v11 & 0x1000000000000000) != 0)
    {
      v17 = sub_2150A4C90();
    }

    else
    {
      v17 = sub_2150A4CA0();
    }

    v18 = v17;
    v19 = sub_2150A4A90();
    v20 = [v14 stringByReplacingMatchesInString:v15 options:0 range:0 withTemplate:{v18, v19}];

    sub_2150A4AD0();
    v21 = sub_2150A4BC0();

    v22 = to - v21;
    if (__OFSUB__(to, v21))
    {
      goto LABEL_59;
    }

    if (v22 >= 1)
    {
      v23 = sub_2150A4F50();
      *(v23 + 16) = v22;
      v24 = (v23 + 32);
      v7 = v16;
      if (v22 < 4)
      {
        v25 = 0;
        goto LABEL_20;
      }

      v25 = v22 & 0x7FFFFFFFFFFFFFFCLL;
      v24 += 2 * (v22 & 0x7FFFFFFFFFFFFFFCLL);
      v29 = (v23 + 64);
      v30 = v22 & 0x7FFFFFFFFFFFFFFCLL;
      do
      {
        *(v29 - 2) = xmmword_2150C4A70;
        *(v29 - 1) = xmmword_2150C4A70;
        *v29 = xmmword_2150C4A70;
        v29[1] = xmmword_2150C4A70;
        v29 += 4;
        v30 -= 4;
      }

      while (v30);
      if (v22 != v25)
      {
LABEL_20:
        v31 = v21 + v25 - to;
        do
        {
          *v24 = 32;
          v24[1] = 0xE100000000000000;
          v24 += 2;
          v32 = __CFADD__(v31++, 1);
        }

        while (!v32);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DE0, &qword_2150C2910);
      sub_214F43BCC(&qword_280C24540, &qword_27CA41DE0, &qword_2150C2910, MEMORY[0x277D83958]);
      v33 = sub_2150A4A20();
      v35 = v34;

      MEMORY[0x2160617E0](v33, v35);

      v26 = v12;
      v28 = v11;
      goto LABEL_24;
    }

    v27 = String.truncating(to:ignoringAnsi:)(to, 1);
    v26 = v27._countAndFlagsBits;
    v28 = v27._object;
    v7 = v16;
LABEL_24:
    v78 = v26;

    MEMORY[0x2160617E0](32, 0xE100000000000000);

    v37 = *(v7 + 16);
    v36 = *(v7 + 24);
    if (v37 >= v36 >> 1)
    {
      result = sub_214F86A20((v36 > 1), v37 + 1, 1);
    }

    ++v9;
    *(v7 + 16) = v37 + 1;
    v38 = v7 + 16 * v37;
    *(v38 + 32) = v78;
    *(v38 + 40) = v28;
    v5 = v70;
    v4 = v74;
    v3 = v68;
    v8 = &unk_2150C4000;
    if (v9 == v70)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
  return result;
}

uint64_t static TableFormat.Formats.defaultArgument.getter@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27CA42D68;
  return result;
}

uint64_t static TableFormat.Formats.defaultArgument.setter(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27CA42D68 = v1;
  return result;
}

NotesShared::TableFormat::Formats_optional __swiftcall TableFormat.Formats.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2150A5EE0();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t TableFormat.Formats.rawValue.getter()
{
  v1 = 0x4E49414C50;
  if (*v0 != 1)
  {
    v1 = 1313821514;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x455454414D524F46;
  }
}

uint64_t sub_214F958CC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x4E49414C50;
  if (v2 != 1)
  {
    v4 = 1313821514;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x455454414D524F46;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE900000000000044;
  }

  v7 = 0xE500000000000000;
  v8 = 0x4E49414C50;
  if (*a2 != 1)
  {
    v8 = 1313821514;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x455454414D524F46;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE900000000000044;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2150A6270();
  }

  return v11 & 1;
}

uint64_t sub_214F959B8()
{
  sub_2150A64B0();
  sub_2150A4BB0();

  return sub_2150A64E0();
}

uint64_t sub_214F95A54(uint64_t a1)
{
  sub_2150A4BB0();
}

uint64_t sub_214F95ADC()
{
  sub_2150A64B0();
  sub_2150A4BB0();

  return sub_2150A64E0();
}

void sub_214F95B80(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000044;
  v4 = 0xE500000000000000;
  v5 = 0x4E49414C50;
  if (v2 != 1)
  {
    v5 = 1313821514;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x455454414D524F46;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_214F95BE8@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27CA42D68;
  return result;
}

uint64_t sub_214F95C94()
{
  sub_2150A2FE0();
  swift_allocObject();
  result = sub_2150A2FD0();
  qword_27CA42D70 = result;
  return result;
}

uint64_t TableFormat.init<A>(rows:columns:format:maximumColumnWidth:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v27 = *a3;
  v37 = a2;
  v36 = a6;
  v34 = a6;
  KeyPath = swift_getKeyPath();
  sub_2150A5C90();
  v11 = MEMORY[0x277D837D0];
  swift_getTupleTypeMetadata2();
  v12 = sub_2150A4FD0();
  WitnessTable = swift_getWitnessTable();
  v14 = MEMORY[0x277D84A98];
  v16 = sub_214F86288(sub_214F960A4, v33, v12, v11, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v15);

  v37 = a1;
  v31 = a6;
  v32 = a2;
  v17 = sub_2150A4FD0();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44B40, &qword_2150C4AA0);
  v19 = swift_getWitnessTable();
  v21 = sub_214F86288(sub_214F960C4, v30, v17, v18, v14, v19, MEMORY[0x277D84AC0], v20);

  v23 = *(v16 + 16);
  v24 = *(v21 + 16);
  v25 = 32;
  while (v24)
  {
    v26 = *(*(v21 + v25) + 16);
    v25 += 8;
    --v24;
    if (v26 != v23)
    {
      __break(1u);
      break;
    }
  }

  *a7 = v23;
  *(a7 + 8) = v16;
  *(a7 + 16) = v21;
  *(a7 + 24) = v27;
  *(a7 + 32) = a4;
  *(a7 + 40) = a5 & 1;
  return result;
}

{
  v10 = *a3;
  v21[5] = a1;
  v21[2] = a6;
  v21[3] = a2;
  v11 = sub_2150A4FD0();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA44B40, &qword_2150C4AA0);
  WitnessTable = swift_getWitnessTable();
  v15 = sub_214F86288(sub_214F962F4, v21, v11, v12, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v14);

  v17 = *(v15 + 16);
  if (v17)
  {
    v18 = *(*(v15 + 32) + 16);
  }

  else
  {
    v18 = 0;
  }

  v19 = 32;
  while (v17)
  {
    v20 = *(*(v15 + v19) + 16);
    v19 += 8;
    --v17;
    if (v20 != v18)
    {
      __break(1u);
      break;
    }
  }

  *a7 = v18;
  *(a7 + 8) = 0;
  *(a7 + 16) = v15;
  *(a7 + 24) = v10;
  *(a7 + 32) = a4;
  *(a7 + 40) = a5 & 1;
  return result;
}

uint64_t sub_214F95EDC(void *a1, uint64_t a2)
{

  swift_getAtKeyPath();
}

uint64_t sub_214F95F58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9[5] = a2;
  v9[2] = a3;
  v9[3] = a1;
  sub_2150A5C90();
  swift_getTupleTypeMetadata2();
  v5 = sub_2150A4FD0();
  WitnessTable = swift_getWitnessTable();
  result = sub_214F86288(sub_214F991B8, v9, v5, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v7);
  *a4 = result;
  return result;
}

uint64_t TableFormat.init(labels:rows:format:maximumColumnWidth:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  if (result)
  {
    v6 = *(result + 16);
    v7 = *(a2 + 16);
  }

  else
  {
    v7 = *(a2 + 16);
    if (v7)
    {
      v6 = *(*(a2 + 32) + 16);
    }

    else
    {
      v6 = 0;
    }
  }

  v8 = *a3;
  v9 = 32;
  while (v7)
  {
    v10 = *(*(a2 + v9) + 16);
    v9 += 8;
    --v7;
    if (v10 != v6)
    {
      __break(1u);
      break;
    }
  }

  *a6 = v6;
  *(a6 + 8) = result;
  *(a6 + 16) = a2;
  *(a6 + 24) = v8;
  *(a6 + 32) = a4;
  *(a6 + 40) = a5 & 1;
  return result;
}

uint64_t sub_214F96234@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9[5] = a2;
  v9[2] = a3;
  v9[3] = a1;
  sub_2150A5C90();
  v5 = sub_2150A4FD0();
  WitnessTable = swift_getWitnessTable();
  result = sub_214F86288(sub_214F99184, v9, v5, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v7);
  *a4 = result;
  return result;
}

void TableFormat.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(v6 + 24))
  {
    if (*(v6 + 24) == 1)
    {
      sub_214F96B48();
    }

    else
    {
      sub_214F9708C();
    }
  }

  else
  {
    sub_214F963BC();
  }
}

void sub_214F963BC()
{
  v1 = v0[1];
  v2 = v0[2];
  to = v0[4];
  v3 = *(v0 + 40);
  v64 = v1;
  v65 = v2;
  if (v1)
  {
    v4 = *(v1 + 16);
    if (v4)
    {
      v73[0] = MEMORY[0x277D84F90];
      sub_214F86C3C(0, v4, 0);
      v68 = v73[0];
      v5 = (v1 + 40);
      do
      {
        v6 = *v5;
        v7 = qword_27CA41710;
        swift_bridgeObjectRetain_n();
        if (v7 != -1)
        {
          swift_once();
        }

        v8 = qword_27CA43E50;
        v9 = sub_2150A4A90();
        if ((v6 & 0x1000000000000000) != 0)
        {
          v10 = sub_2150A4C90();
        }

        else
        {
          v10 = sub_2150A4CA0();
        }

        v11 = v10;
        v12 = sub_2150A4A90();
        v13 = [v8 stringByReplacingMatchesInString:v9 options:0 range:0 withTemplate:{v11, v12}];

        sub_2150A4AD0();
        v14 = sub_2150A4BC0();
        swift_bridgeObjectRelease_n();

        v15 = v68;
        v73[0] = v68;
        v17 = *(v68 + 16);
        v16 = *(v68 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_214F86C3C((v16 > 1), v17 + 1, 1);
          v15 = v73[0];
        }

        *(v15 + 16) = v17 + 1;
        v68 = v15;
        *(v15 + 8 * v17 + 32) = v14;
        v5 += 2;
        --v4;
      }

      while (v4);
    }

    else
    {
      v68 = MEMORY[0x277D84F90];
      v2 = v0[2];
    }
  }

  else
  {
    v18 = *v0;
    if (*v0 < 0)
    {
LABEL_56:
      __break(1u);
      return;
    }

    if (v18)
    {
      v19 = sub_2150A4F50();
      *(v19 + 16) = v18;
      v68 = v19;
      bzero((v19 + 32), 8 * v18);
    }

    else
    {
      v68 = MEMORY[0x277D84F90];
    }
  }

  v20 = MEMORY[0x277D84F90];
  v21 = *(v2 + 16);
  if (v21)
  {
    v75 = MEMORY[0x277D84F90];
    v66 = v21;
    sub_214F86BFC(0, v21, 0);
    v22 = v66;
    v23 = 0;
    v24 = v75;
    v67 = v2 + 32;
    while (v23 < *(v2 + 16))
    {
      v25 = *(v67 + 8 * v23);
      v26 = *(v25 + 16);
      if (v26)
      {
        v70 = v24;
        v74 = v20;

        sub_214F86A20(0, v26, 0);
        v27 = v74;
        v28 = v25 + 32;
        do
        {
          sub_214F50074(v28, v73);
          countAndFlagsBits = sub_214F98870(v73);
          object = v30;
          if ((v3 & 1) == 0)
          {
            v32 = String.truncating(to:ignoringAnsi:)(to, 1);
            countAndFlagsBits = v32._countAndFlagsBits;

            object = v32._object;
          }

          __swift_destroy_boxed_opaque_existential_0(v73);
          v74 = v27;
          v34 = *(v27 + 16);
          v33 = *(v27 + 24);
          if (v34 >= v33 >> 1)
          {
            sub_214F86A20((v33 > 1), v34 + 1, 1);
            v27 = v74;
          }

          *(v27 + 16) = v34 + 1;
          v35 = v27 + 16 * v34;
          *(v35 + 32) = countAndFlagsBits;
          *(v35 + 40) = object;
          v28 += 32;
          --v26;
        }

        while (v26);

        v24 = v70;
        v2 = v65;
        v22 = v66;
        v20 = MEMORY[0x277D84F90];
      }

      else
      {
        v27 = v20;
      }

      v75 = v24;
      v37 = *(v24 + 16);
      v36 = *(v24 + 24);
      v38 = v37 + 1;
      if (v37 >= v36 >> 1)
      {
        sub_214F86BFC((v36 > 1), v37 + 1, 1);
        v22 = v66;
        v24 = v75;
      }

      ++v23;
      *(v24 + 16) = v38;
      *(v24 + 8 * v37 + 32) = v27;
      if (v23 == v22)
      {
        goto LABEL_35;
      }
    }

LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v38 = *(MEMORY[0x277D84F90] + 16);
  v24 = MEMORY[0x277D84F90];
  if (v38)
  {
LABEL_35:
    v39 = 0;
    v40 = v68;
    do
    {
      if (v39 >= *(v24 + 16))
      {
        __break(1u);
        goto LABEL_55;
      }

      v41 = v39 + 1;
      v42 = *(v24 + 8 * v39 + 32);

      v43 = sub_214F949D0(v42, v40);

      swift_bridgeObjectRelease_n();
      v40 = v43;
      v39 = v41;
    }

    while (v38 != v41);
    if (!v64)
    {
      goto LABEL_46;
    }

LABEL_39:

    v45 = sub_214F94DCC(v44, v43);

    v73[0] = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DE0, &qword_2150C2910);
    sub_214F43BCC(&qword_280C24540, &qword_27CA41DE0, &qword_2150C2910, MEMORY[0x277D83958]);
    v46 = sub_2150A4A20();
    v48 = v47;

    v49 = *(v24 + 16);
    if (v49)
    {
      goto LABEL_40;
    }

    goto LABEL_47;
  }

  v24 = MEMORY[0x277D84F90];
  v43 = v68;
  if (v64)
  {
    goto LABEL_39;
  }

LABEL_46:
  v46 = 0;
  v48 = 0xE000000000000000;
  v49 = *(v24 + 16);
  if (v49)
  {
LABEL_40:
    v69 = v46;
    toa = v48;
    v73[0] = v20;
    sub_214F86A20(0, v49, 0);
    v50 = 32;
    v51 = v73[0];
    do
    {

      v53 = sub_214F94FEC(v52, v43);

      v75 = v53;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DE0, &qword_2150C2910);
      sub_214F43BCC(&qword_280C24540, &qword_27CA41DE0, &qword_2150C2910, MEMORY[0x277D83958]);
      v54 = sub_2150A4A20();
      v56 = v55;

      v73[0] = v51;
      v58 = *(v51 + 16);
      v57 = *(v51 + 24);
      if (v58 >= v57 >> 1)
      {
        sub_214F86A20((v57 > 1), v58 + 1, 1);
        v51 = v73[0];
      }

      *(v51 + 16) = v58 + 1;
      v59 = v51 + 16 * v58;
      *(v59 + 32) = v54;
      *(v59 + 40) = v56;
      v50 += 8;
      --v49;
    }

    while (v49);

    v48 = toa;
    v46 = v69;
    goto LABEL_48;
  }

LABEL_47:

  v51 = MEMORY[0x277D84F90];
LABEL_48:
  v73[0] = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DE0, &qword_2150C2910);
  sub_214F43BCC(&qword_280C24540, &qword_27CA41DE0, &qword_2150C2910, MEMORY[0x277D83958]);
  v60 = sub_2150A4A20();
  v62 = v61;

  v63 = HIBYTE(v48) & 0xF;
  if ((v48 & 0x2000000000000000) == 0)
  {
    v63 = v46 & 0xFFFFFFFFFFFFLL;
  }

  if (v63)
  {
    v73[0] = v46;
    v73[1] = v48;

    MEMORY[0x2160617E0](10, 0xE100000000000000);

    MEMORY[0x2160617E0](v60, v62);
  }
}

uint64_t sub_214F96B48()
{
  v1 = *(v0 + 16);
  v41 = *(v0 + 32);
  v40 = *(v0 + 40);
  if (*(v0 + 8))
  {
    v42[0] = *(v0 + 8);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DE0, &qword_2150C2910);
    sub_214F43BCC(&qword_280C24540, &qword_27CA41DE0, &qword_2150C2910, MEMORY[0x277D83958]);
    v33 = sub_2150A4A20();
    v34 = v2;
  }

  else
  {
    v33 = 0;
    v34 = 0xE000000000000000;
  }

  v3 = *(v1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (!v3)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_25:
    v42[0] = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DE0, &qword_2150C2910);
    sub_214F43BCC(&qword_280C24540, &qword_27CA41DE0, &qword_2150C2910, MEMORY[0x277D83958]);
    v30 = sub_2150A4A20();
    v32 = v31;

    v42[0] = v33;
    v42[1] = v34;

    MEMORY[0x2160617E0](10, 0xE100000000000000);

    MEMORY[0x2160617E0](v30, v32);

    return v42[0];
  }

  v44 = MEMORY[0x277D84F90];
  result = sub_214F86A20(0, v3, 0);
  v6 = 0;
  v7 = v44;
  v36 = v3;
  v37 = v1 + 32;
  v35 = v1;
  while (1)
  {
    if (v6 >= *(v1 + 16))
    {
      goto LABEL_27;
    }

    v39 = v6;
    v8 = *(v37 + 8 * v6);
    v9 = *(v8 + 16);
    if (v9)
    {
      break;
    }

    v10 = v4;
LABEL_20:
    v42[0] = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DE0, &qword_2150C2910);
    sub_214F43BCC(&qword_280C24540, &qword_27CA41DE0, &qword_2150C2910, MEMORY[0x277D83958]);
    v24 = sub_2150A4A20();
    v26 = v25;

    v44 = v7;
    v28 = *(v7 + 16);
    v27 = *(v7 + 24);
    if (v28 >= v27 >> 1)
    {
      result = sub_214F86A20((v27 > 1), v28 + 1, 1);
      v7 = v44;
    }

    v6 = v39 + 1;
    *(v7 + 16) = v28 + 1;
    v29 = v7 + 16 * v28;
    *(v29 + 32) = v24;
    *(v29 + 40) = v26;
    if (v39 + 1 == v36)
    {
      goto LABEL_25;
    }
  }

  v38 = v7;
  v43 = v4;

  sub_214F86A20(0, v9, 0);
  v10 = v43;
  v11 = v8 + 32;
  v12 = v41;
  v13 = v40;
  while (1)
  {
    sub_214F50074(v11, v42);
    v14 = sub_214F98870(v42);
    v16 = v15;
    if ((v13 & 1) == 0)
    {
      if (v12 < 1)
      {

        v14 = 0;
        v16 = 0xE000000000000000;
        goto LABEL_15;
      }

      if (v12 < sub_2150A4BC0())
      {
        break;
      }
    }

LABEL_15:
    __swift_destroy_boxed_opaque_existential_0(v42);
    v43 = v10;
    v22 = *(v10 + 16);
    v21 = *(v10 + 24);
    if (v22 >= v21 >> 1)
    {
      sub_214F86A20((v21 > 1), v22 + 1, 1);
      v10 = v43;
    }

    *(v10 + 16) = v22 + 1;
    v23 = v10 + 16 * v22;
    *(v23 + 32) = v14;
    *(v23 + 40) = v16;
    v11 += 32;
    if (!--v9)
    {
      v1 = v35;
      v7 = v38;
      v4 = MEMORY[0x277D84F90];
      goto LABEL_20;
    }
  }

  sub_2150A4BF0();
  sub_2150A4D40();

  v17 = [objc_opt_self() ic_ellipsisCharacterString];
  sub_2150A4AD0();

  v18 = sub_2150A4BC0();
  v19 = sub_2150A5830();
  v20 = __OFADD__(v18, v19);
  result = v18 + v19;
  if (!v20)
  {
    MEMORY[0x216061750](result);
    sub_214F99030();
    sub_2150A4C00();
    sub_2150A4C00();

    v14 = 0;
    v16 = 0xE000000000000000;
    v12 = v41;
    v13 = v40;
    goto LABEL_15;
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_214F9708C()
{
  v2 = sub_2150A4B20();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = *(v0 + 8);
  v6 = *(v0 + 16);
  if (v5)
  {
    v7 = *(v6 + 16);
    v8 = MEMORY[0x277D84F90];
    if (!v7)
    {
      v10 = 0;
      v1 = MEMORY[0x277D84F90];
LABEL_31:
      if (qword_27CA41628 == -1)
      {
        goto LABEL_32;
      }

      goto LABEL_48;
    }

    v52 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    v62 = MEMORY[0x277D84F90];
    sub_214F86C7C(0, v7, 0);
    v9 = 0;
    v10 = 0;
    v1 = v62;
    v11 = v5[2];
    v54 = v6 + 32;
    v55 = v11;
    v53 = v6;
    v56 = v7;
    v57 = v5;
    while (v9 < *(v6 + 16))
    {
      v12 = *(v54 + 8 * v9);
      v13 = *(v12 + 16);
      if (v13)
      {
        v59 = v1;
        v60 = v8;

        sub_214F86A20(0, v13, 0);
        v8 = v60;
        v58 = v12;
        v14 = v12 + 32;
        do
        {
          sub_214F50074(v14, v61);
          v15 = sub_214F98870(v61);
          v17 = v16;
          __swift_destroy_boxed_opaque_existential_0(v61);
          v60 = v8;
          v19 = v8[2];
          v18 = v8[3];
          v20 = v19 + 1;
          if (v19 >= v18 >> 1)
          {
            sub_214F86A20((v18 > 1), v19 + 1, 1);
            v8 = v60;
          }

          v8[2] = v20;
          v21 = &v8[2 * v19];
          v21[4] = v15;
          v21[5] = v17;
          v14 += 32;
          --v13;
        }

        while (v13);
        v1 = v59;
        v6 = v53;
      }

      else
      {

        v20 = v8[2];
      }

      if (v20 >= v55)
      {
        v22 = v55;
      }

      else
      {
        v22 = v20;
      }

      if (v22)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42DC8, &qword_2150C5460);
        v23 = sub_2150A5EA0();
      }

      else
      {
        v23 = MEMORY[0x277D84F98];
      }

      v24 = v57;
      v61[0] = v23;
      swift_bridgeObjectRetain_n();

      sub_214F98454(v24, v8, 1, v61);

      v25 = v61[0];
      v62 = v1;
      v27 = *(v1 + 16);
      v26 = *(v1 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_214F86C7C((v26 > 1), v27 + 1, 1);
        v1 = v62;
      }

      ++v9;
      *(v1 + 16) = v27 + 1;
      *(v1 + 8 * v27 + 32) = v25;
      v8 = MEMORY[0x277D84F90];
      if (v9 == v56)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
  }

  else
  {
    v52 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    v10 = *(v6 + 16);
    if (!v10)
    {
      if (*(MEMORY[0x277D84F90] + 16))
      {
LABEL_36:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42DC8, &qword_2150C5460);
        v43 = sub_2150A5EA0();
      }

      else
      {
        v43 = MEMORY[0x277D84F98];
      }

      v61[0] = v43;

      sub_214F980A4(v44, 1, v61);

      v45 = v61[0];
      if (qword_27CA41628 != -1)
      {
        swift_once();
      }

      v61[0] = v45;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA426F0, &qword_2150C4CD0);
      sub_214F99084();
      v41 = sub_2150A2FC0();
      v42 = v46;

      goto LABEL_40;
    }

    v62 = MEMORY[0x277D84F90];
    sub_214F86C5C(0, v10, 0);
    v28 = v62;
    v29 = (v6 + 32);
    while (1)
    {
      v30 = *v29;
      if (!*(*v29 + 16))
      {
        break;
      }

      sub_214F50074(v30 + 32, v61);

      v31 = sub_214F98870(v61);
      v33 = v32;
      __swift_destroy_boxed_opaque_existential_0(v61);
      if (*(v30 + 16) < 2uLL)
      {
        goto LABEL_47;
      }

      sub_214F50074(v30 + 64, v61);
      v1 = sub_214F98870(v61);
      v35 = v34;

      __swift_destroy_boxed_opaque_existential_0(v61);
      v62 = v28;
      v37 = *(v28 + 16);
      v36 = *(v28 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_214F86C5C((v36 > 1), v37 + 1, 1);
        v28 = v62;
      }

      *(v28 + 16) = v37 + 1;
      v38 = (v28 + 32 * v37);
      v38[4] = v31;
      v38[5] = v33;
      v38[6] = v1;
      v38[7] = v35;
      ++v29;
      if (!--v10)
      {
        goto LABEL_36;
      }
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  swift_once();
LABEL_32:
  v61[0] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42DD8, &qword_2150C4CD8);
  sub_214F99100();
  v39 = sub_2150A2FC0();
  if (v10)
  {

    return 0;
  }

  v41 = v39;
  v42 = v40;

LABEL_40:
  sub_2150A4B10();
  v47 = sub_2150A4AF0();
  if (v48)
  {
    v49 = v47;
    sub_214F7EDE4(v41, v42);
    return v49;
  }

  sub_214F7EDE4(v41, v42);
  return 0;
}

uint64_t sub_214F97638(uint64_t a1, uint64_t a2, Swift::Int a3)
{
  v9 = 1;
  v10 = 0xE000000000000000;
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v6 = sub_2150A6100();
  MEMORY[0x2160617E0](v6);

  sub_2150A49F0();
  v11 = 0;
  v12 = 0xE000000000000000;
  String.padding(to:alignment:ignoringAnsi:)(a3, &v9, 1, a1, a2);
  MEMORY[0x2160617E0]();

  v9 = 0;
  v10 = 0xE000000000000000;
  sub_2150A49F0();
  MEMORY[0x2160617E0](91, 0xE100000000000000);
  v7 = sub_2150A6100();
  MEMORY[0x2160617E0](v7);

  sub_2150A49F0();
  MEMORY[0x2160617E0](v9, v10);

  MEMORY[0x2160617E0](32, 0xE100000000000000);
  return v11;
}

void sub_214F977F0()
{
  if (*(v0 + 24))
  {
    if (*(v0 + 24) == 1)
    {
      sub_214F96B48();
    }

    else
    {
      sub_214F9708C();
    }
  }

  else
  {
    sub_214F963BC();
  }
}

uint64_t Date.tableCellDescription.getter()
{
  v0 = sub_2150A38D0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_214F97978(v4);
  v5 = sub_2150A3850();
  (*(v1 + 8))(v4, v0);
  return v5;
}

uint64_t sub_214F97978@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42DA0, &unk_2150C4C98);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v35 = &v30 - v3;
  v34 = sub_2150A3B20();
  v4 = *(v34 - 8);
  MEMORY[0x28223BE20](v34, v5);
  v31 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_2150A38C0();
  v7 = *(v33 - 8);
  MEMORY[0x28223BE20](v33, v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2150A38A0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2150A3880();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2150A3890();
  MEMORY[0x28223BE20](v21, v22);
  (*(v24 + 104))(&v30 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CC9460]);
  v25 = v16;
  v26 = v34;
  (*(v17 + 104))(v20, *MEMORY[0x277CC9458], v25);
  v27 = v10;
  v28 = v35;
  (*(v12 + 104))(v15, *MEMORY[0x277CC9468], v11);
  (*(v7 + 104))(v27, *MEMORY[0x277CC9480], v33);
  sub_2150A3B10();
  result = (*(v4 + 48))(v28, 1, v26);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v4 + 32))(v31, v28, v26);
    return sub_2150A38B0();
  }

  return result;
}

unint64_t sub_214F97D80()
{
  result = qword_27CA42D78;
  if (!qword_27CA42D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42D78);
  }

  return result;
}

unint64_t sub_214F97E18(uint64_t a1)
{
  result = sub_214F97E40();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_214F97E40()
{
  result = qword_27CA42D90;
  if (!qword_27CA42D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42D90);
  }

  return result;
}

uint64_t sub_214F97E94()
{
  v0 = sub_2150A38D0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_214F97978(v4);
  v5 = sub_2150A3850();
  (*(v1 + 8))(v4, v0);
  return v5;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_214F97F88(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_214F97FD0(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_214F98050()
{
  result = qword_27CA42D98;
  if (!qword_27CA42D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42D98);
  }

  return result;
}

void sub_214F980A4(void *a1, char a2, void *a3)
{
  v39 = a1[2];
  if (!v39)
  {
    goto LABEL_21;
  }

  LOBYTE(v4) = a2;
  v6 = a1[4];
  v5 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  v9 = *a3;

  v10 = sub_214F30094(v6, v5);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_214FE9184(v15, v4 & 1);
    v10 = sub_214F30094(v6, v5);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_2150A63E0();
    __break(1u);
  }

  if (v4)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v10;
  sub_214FED04C();
  v10 = v20;
  if (v16)
  {
LABEL_8:
    v18 = swift_allocError();
    swift_willThrow();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD8, &unk_2150C2A90);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v6;
  v22[1] = v5;
  v23 = (v21[7] + 16 * v10);
  *v23 = v7;
  v23[1] = v8;
  v24 = v21[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_2150A5B20();
    MEMORY[0x2160617E0](0xD00000000000001BLL, 0x80000002150E4190);
    sub_2150A5DB0();
    MEMORY[0x2160617E0](39, 0xE100000000000000);
    sub_2150A5E10();
    __break(1u);
    return;
  }

  v21[2] = v25;
  if (v39 != 1)
  {
    v4 = a1 + 11;
    v7 = 1;
    while (v7 < a1[2])
    {
      v6 = *(v4 - 3);
      v5 = *(v4 - 2);
      v26 = *(v4 - 1);
      v8 = *v4;
      v27 = *a3;

      v28 = sub_214F30094(v6, v5);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v14 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v29;
      if (v27[3] < v32)
      {
        sub_214FE9184(v32, 1);
        v28 = sub_214F30094(v6, v5);
        if ((v16 & 1) != (v33 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v34 = *a3;
      *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      v35 = (v34[6] + 16 * v28);
      *v35 = v6;
      v35[1] = v5;
      v36 = (v34[7] + 16 * v28);
      *v36 = v26;
      v36[1] = v8;
      v37 = v34[2];
      v14 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v7;
      v34[2] = v38;
      v4 += 4;
      if (v39 == v7)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

void sub_214F98454(void *a1, void *a2, char a3, void *a4)
{
  v7 = a1[2];

  if (!v7 || !a2[2])
  {
    goto LABEL_25;
  }

  v8 = a1[4];
  v9 = a1[5];
  v52 = a2;
  v53 = a1;
  v10 = a2[4];
  v11 = a2[5];
  v12 = *a4;

  v14 = sub_214F30094(v8, v9);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v18 = v13;
  if (v12[3] >= v17)
  {
    if (a3)
    {
      if ((v13 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_214FED04C();
      if ((v18 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

LABEL_10:
    v21 = swift_allocError();
    swift_willThrow();
    v22 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD8, &unk_2150C2A90);
    if ((swift_dynamicCast() & 1) == 0)
    {

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();

      return;
    }

    goto LABEL_32;
  }

  sub_214FE9184(v17, a3 & 1);
  v19 = sub_214F30094(v8, v9);
  if ((v18 & 1) != (v20 & 1))
  {
LABEL_31:
    sub_2150A63E0();
    __break(1u);
LABEL_32:
    sub_2150A5B20();
    MEMORY[0x2160617E0](0xD00000000000001BLL, 0x80000002150E4190);
    sub_2150A5DB0();
    MEMORY[0x2160617E0](39, 0xE100000000000000);
    sub_2150A5E10();
    __break(1u);
    return;
  }

  v14 = v19;
  if (v18)
  {
    goto LABEL_10;
  }

LABEL_13:
  v23 = *a4;
  *(*a4 + 8 * (v14 >> 6) + 64) |= 1 << v14;
  v24 = (v23[6] + 16 * v14);
  *v24 = v8;
  v24[1] = v9;
  v25 = (v23[7] + 16 * v14);
  *v25 = v10;
  v25[1] = v11;
  v26 = v23[2];
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (v27)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v23[2] = v28;
  v29 = v52;
  v30 = v53[2];
  if (v30 != 1)
  {
    v31 = v53 + 7;
    v32 = v52 + 7;
    v33 = 1;
    while (v33 < v30)
    {
      v34 = v29[2];
      if (v33 == v34)
      {
        goto LABEL_25;
      }

      if (v33 >= v34)
      {
        goto LABEL_30;
      }

      v36 = *(v31 - 1);
      v35 = *v31;
      v37 = *(v32 - 1);
      v38 = *v32;
      v39 = *a4;

      v40 = sub_214F30094(v36, v35);
      v42 = v39[2];
      v43 = (v41 & 1) == 0;
      v27 = __OFADD__(v42, v43);
      v44 = v42 + v43;
      if (v27)
      {
        goto LABEL_27;
      }

      v45 = v41;
      if (v39[3] < v44)
      {
        sub_214FE9184(v44, 1);
        v40 = sub_214F30094(v36, v35);
        if ((v45 & 1) != (v46 & 1))
        {
          goto LABEL_31;
        }
      }

      if (v45)
      {
        goto LABEL_10;
      }

      v47 = *a4;
      *(*a4 + 8 * (v40 >> 6) + 64) |= 1 << v40;
      v48 = (v47[6] + 16 * v40);
      *v48 = v36;
      v48[1] = v35;
      v49 = (v47[7] + 16 * v40);
      *v49 = v37;
      v49[1] = v38;
      v50 = v47[2];
      v27 = __OFADD__(v50, 1);
      v51 = v50 + 1;
      if (v27)
      {
        goto LABEL_28;
      }

      ++v33;
      v47[2] = v51;
      v29 = v52;
      v30 = v53[2];
      v31 += 2;
      v32 += 2;
      if (v33 == v30)
      {
        goto LABEL_25;
      }
    }

    goto LABEL_29;
  }

LABEL_25:

  swift_bridgeObjectRelease_n();
}

uint64_t sub_214F98870(uint64_t a1)
{
  v2 = sub_2150A6500();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v41 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42DA8, &qword_2150C4CA8);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v41 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42DB0, &qword_2150C4CB0);
  v13 = MEMORY[0x28223BE20](v11 - 8, v12);
  v45 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = &v41 - v17;
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v41 - v20;
  v44 = sub_2150A6540();
  v43 = *(v44 - 8);
  MEMORY[0x28223BE20](v44, v22);
  v24 = &v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = a1;
  sub_214F50074(a1, v47);
  sub_2150A64F0();
  v46 = v24;
  sub_2150A6510();
  (*(v3 + 104))(v18, *MEMORY[0x277D84C18], v2);
  (*(v3 + 56))(v18, 0, 1, v2);
  v25 = *(v7 + 56);
  sub_214F98FC0(v21, v10);
  sub_214F98FC0(v18, &v10[v25]);
  v26 = *(v3 + 48);
  if (v26(v10, 1, v2) != 1)
  {
    sub_214F98FC0(v10, v45);
    if (v26(&v10[v25], 1, v2) != 1)
    {
      v28 = &v10[v25];
      v29 = v41;
      (*(v3 + 32))(v41, v28, v2);
      v30 = v45;
      v31 = sub_2150A4A80();
      v32 = *(v3 + 8);
      v32(v29, v2);
      sub_214F302D4(v18, &qword_27CA42DB0, &qword_2150C4CB0);
      sub_214F302D4(v21, &qword_27CA42DB0, &qword_2150C4CB0);
      v32(v30, v2);
      sub_214F302D4(v10, &qword_27CA42DB0, &qword_2150C4CB0);
      v27 = v46;
      if (v31)
      {
        goto LABEL_9;
      }

LABEL_7:
      sub_214F50074(v42, &v53);
      goto LABEL_13;
    }

    sub_214F302D4(v18, &qword_27CA42DB0, &qword_2150C4CB0);
    sub_214F302D4(v21, &qword_27CA42DB0, &qword_2150C4CB0);
    (*(v3 + 8))(v45, v2);
LABEL_6:
    sub_214F302D4(v10, &qword_27CA42DA8, &qword_2150C4CA8);
    v27 = v46;
    goto LABEL_7;
  }

  sub_214F302D4(v18, &qword_27CA42DB0, &qword_2150C4CB0);
  sub_214F302D4(v21, &qword_27CA42DB0, &qword_2150C4CB0);
  if (v26(&v10[v25], 1, v2) != 1)
  {
    goto LABEL_6;
  }

  sub_214F302D4(v10, &qword_27CA42DB0, &qword_2150C4CB0);
  v27 = v46;
LABEL_9:
  sub_2150A6530();
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v33 = sub_2150A5B90();
  swift_getObjectType();
  result = sub_2150A5B90();
  if (v33 != result)
  {
    __break(1u);
    return result;
  }

  v35 = sub_2150A5BA0();
  swift_unknownObjectRelease();
  if (v35)
  {
    swift_unknownObjectRelease();

    v54 = MEMORY[0x277D837D0];
    *&v53 = 0;
    *(&v53 + 1) = 0xE000000000000000;
  }

  else
  {
    sub_2150A5E00();
    swift_unknownObjectRelease();

    sub_214D72488(&v48, v50);
    sub_214D72488(v50, &v53);
  }

LABEL_13:
  sub_214F50074(&v53, v52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42DB8, &qword_2150C4CB8);
  if (swift_dynamicCast())
  {
    sub_214D7A458(v50, v47);
    v36 = *(&v48 + 1);
    v37 = v49;
    __swift_project_boxed_opaque_existential_1(v47, *(&v48 + 1));
    v38 = (*(v37 + 8))(v36, v37);
    (*(v43 + 8))(v27, v44);
    __swift_destroy_boxed_opaque_existential_0(&v53);
    v39 = v47;
  }

  else
  {
    v51 = 0;
    memset(v50, 0, sizeof(v50));
    sub_214F302D4(v50, &qword_27CA42DC0, &unk_2150C4CC0);
    sub_214F50074(&v53, v47);
    v47[0] = sub_2150A4B30();
    v47[1] = v40;
    *&v50[0] = 10;
    *(&v50[0] + 1) = 0xE100000000000000;
    v52[0] = 32;
    v52[1] = 0xE100000000000000;
    sub_214D6E6C4();
    v38 = sub_2150A5890();

    (*(v43 + 8))(v27, v44);
    v39 = &v53;
  }

  __swift_destroy_boxed_opaque_existential_0(v39);
  return v38;
}

uint64_t sub_214F98FC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42DB0, &qword_2150C4CB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_214F99030()
{
  result = qword_27CA42F30;
  if (!qword_27CA42F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42F30);
  }

  return result;
}

unint64_t sub_214F99084()
{
  result = qword_27CA42DD0;
  if (!qword_27CA42DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA426F0, &qword_2150C4CD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42DD0);
  }

  return result;
}

unint64_t sub_214F99100()
{
  result = qword_27CA42DE0;
  if (!qword_27CA42DE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA42DD8, &qword_2150C4CD8);
    sub_214F99084();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42DE0);
  }

  return result;
}

uint64_t LinkSuggestion.text.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t LinkSuggestion.systemImageName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t LinkSuggestion.timeStamp.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t LinkSuggestion.noteIdentifier.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t LinkSuggestion.noteCachedTrimmedTitle.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t LinkSuggestion.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LinkSuggestion(0) + 40);
  v4 = sub_2150A3A00();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t LinkSuggestion.init(text:timeStamp:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  type metadata accessor for LinkSuggestion(0);
  *(a5 + 16) = 0;
  *(a5 + 24) = 0;
  *(a5 + 48) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0;
  result = _s10Foundation4UUIDV11NotesSharedE15defaultArgumentACvgZ_0();
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 32) = a3;
  *(a5 + 40) = a4;
  return result;
}

void LinkSuggestion.init(note:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2150A3960();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0, &unk_2150C2740);
  v11 = MEMORY[0x28223BE20](v9 - 8, v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v39 - v15;
  *(a2 + 80) = 0;
  type metadata accessor for LinkSuggestion(0);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  _s10Foundation4UUIDV11NotesSharedE15defaultArgumentACvgZ_0();
  v17 = [a1 titleForLinking];
  if (v17)
  {
    v18 = v17;
    v19 = sub_2150A4AD0();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0xE000000000000000;
  }

  *a2 = v19;
  *(a2 + 8) = v21;
  v22 = [a1 identifier];
  if (v22)
  {
    v23 = v22;
    v24 = sub_2150A4AD0();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0;
  }

  *(a2 + 48) = v24;
  *(a2 + 56) = v26;
  v27 = [a1 modificationDate];
  if (v27)
  {
    v28 = v27;
    sub_2150A3930();

    (*(v5 + 56))(v13, 0, 1, v4);
  }

  else
  {
    (*(v5 + 56))(v13, 1, 1, v4);
  }

  sub_214F71500(v13, v16);
  if ((*(v5 + 48))(v16, 1, v4))
  {
    sub_214F5D43C(v16);
    v29 = 0;
    v30 = 0;
  }

  else
  {
    (*(v5 + 16))(v8, v16, v4);
    sub_214F5D43C(v16);
    v29 = sub_2150A3800();
    v30 = v31;
    (*(v5 + 8))(v8, v4);
  }

  *(a2 + 32) = v29;
  *(a2 + 40) = v30;
  v32 = [a1 trimmedTitle];
  v33 = sub_2150A4AD0();
  v35 = v34;

  *(a2 + 64) = v33;
  *(a2 + 72) = v35;
  if ([a1 isSharedViaICloud])
  {

    v36 = 0x80000002150E5050;
    v37 = 0xD000000000000012;
  }

  else
  {
    v38 = [a1 isPasswordProtected];

    if (!v38)
    {
      return;
    }

    v36 = 0xE90000000000006CLL;
    v37 = 0x6C69662E6B636F6CLL;
  }

  *(a2 + 16) = v37;
  *(a2 + 24) = v36;
}

double LinkSuggestion.init(url:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for LinkSuggestion(0);
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0;
  _s10Foundation4UUIDV11NotesSharedE15defaultArgumentACvgZ_0();
  *a2 = sub_2150A3650();
  *(a2 + 8) = v4;
  v5 = sub_2150A3750();
  (*(*(v5 - 8) + 8))(a1, v5);
  *&result = 0x65626F6C67;
  *(a2 + 16) = xmmword_2150C4CE0;
  return result;
}

double LinkSuggestion.init(textForNewNoteSuggestion:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for LinkSuggestion(0);
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  _s10Foundation4UUIDV11NotesSharedE15defaultArgumentACvgZ_0();
  *a3 = a1;
  *(a3 + 8) = a2;
  result = 1.35426987e243;
  *(a3 + 16) = xmmword_2150C4CF0;
  *(a3 + 80) = 1;
  return result;
}

uint64_t LinkSuggestion.hash(into:)(uint64_t a1)
{
  sub_2150A4BB0();
  if (v1[3])
  {
    sub_2150A64D0();
    sub_2150A4BB0();
    if (v1[5])
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_2150A64D0();
    if (v1[5])
    {
LABEL_3:
      sub_2150A64D0();
      sub_2150A4BB0();
      if (v1[7])
      {
        goto LABEL_4;
      }

LABEL_8:
      sub_2150A64D0();
      if (v1[9])
      {
        goto LABEL_5;
      }

LABEL_9:
      sub_2150A64D0();
      return sub_2150A64D0();
    }
  }

  sub_2150A64D0();
  if (!v1[7])
  {
    goto LABEL_8;
  }

LABEL_4:
  sub_2150A64D0();
  sub_2150A4BB0();
  if (!v1[9])
  {
    goto LABEL_9;
  }

LABEL_5:
  sub_2150A64D0();
  sub_2150A4BB0();
  return sub_2150A64D0();
}

void __swiftcall LinkSuggestion.completionSuggestionsItem()(ICAutoCompleteSuggestionsItem *__return_ptr retstr)
{
  v2 = v1;
  if (*(v1 + 24))
  {
    v3 = sub_2150A4A90();
    v13 = [objc_opt_self() systemImageNamed_];
  }

  else
  {
    v13 = 0;
  }

  LinkSuggestion.displayText.getter();
  v4 = *(v2 + 40);
  type metadata accessor for LinkSuggestion(0);
  sub_2150A3990();
  v12 = *(v2 + 80);
  v5 = *(v2 + 56);
  v6 = sub_2150A4A90();

  v7 = sub_2150A4A90();
  if (v4)
  {
    v8 = sub_2150A4A90();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_2150A4A90();

  if (v5)
  {
    v10 = sub_2150A4A90();
  }

  else
  {
    v10 = 0;
  }

  LOBYTE(v11) = v12;
  [objc_allocWithZone(ICAutoCompleteSuggestionsItem) initWithDisplayText:v6 shortText:v7 rightText:v8 uuidString:v9 isEmptyPlaceholder:0 isSectionHeader:0 isCreationSuggestion:v11 iconImage:v13 parentNoteIdentifier:v10 representedObject:0];
}

uint64_t LinkSuggestion.displayText.getter()
{
  if (*(v0 + 80) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41E00, &qword_2150C2950);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2150C25D0;
    v3 = *v0;
    v2 = *(v0 + 8);
    *(inited + 56) = MEMORY[0x277D837D0];
    *(inited + 64) = sub_214D74008();
    *(inited + 32) = v3;
    *(inited + 40) = v2;
    v4 = objc_opt_self();

    v5 = sub_2150A4A90();
    v6 = [v4 localizedFrameworkStringForKey:v5 value:0 table:0 allowSiri:1];

    v7 = sub_2150A4AD0();
    v9 = v8;

    v10 = sub_214F9A03C(inited, v7, v9);
    swift_bridgeObjectRelease_n();
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42268, &qword_2150C36B8);
    swift_arrayDestroy();
  }

  else
  {
    v10 = *v0;
  }

  return v10;
}

void LinkSuggestion.init(autocompleteSuggestionItem:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for LinkSuggestion(0);
  _s10Foundation4UUIDV11NotesSharedE15defaultArgumentACvgZ_0();
  v4 = [a1 shortText];
  if (v4)
  {
    v5 = v4;
    v6 = sub_2150A4AD0();
    v8 = v7;

    *a2 = v6;
    *(a2 + 8) = v8;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    v9 = [a1 rightText];
    if (v9)
    {
      v10 = v9;
      v11 = sub_2150A4AD0();
      v13 = v12;
    }

    else
    {
      v11 = 0;
      v13 = 0;
    }

    *(a2 + 32) = v11;
    *(a2 + 40) = v13;
    v14 = [a1 parentNoteIdentifier];
    if (v14)
    {
      v15 = v14;
      v16 = sub_2150A4AD0();
      v18 = v17;
    }

    else
    {
      v16 = 0;
      v18 = 0;
    }

    *(a2 + 48) = v16;
    *(a2 + 56) = v18;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    v19 = [a1 isCreationSuggestion];

    *(a2 + 80) = v19;
  }

  else
  {
    __break(1u);
  }
}

uint64_t LinkSuggestion.hashValue.getter()
{
  sub_2150A64B0();
  LinkSuggestion.hash(into:)(v1);
  return sub_2150A64E0();
}

uint64_t sub_214F99DCC()
{
  sub_2150A64B0();
  LinkSuggestion.hash(into:)(v1);
  return sub_2150A64E0();
}

uint64_t sub_214F99E10()
{
  sub_2150A64B0();
  LinkSuggestion.hash(into:)(v1);
  return sub_2150A64E0();
}

uint64_t sub_214F99E4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_2150A3A00();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t _s11NotesShared14LinkSuggestionV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_2150A6270() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[3];
  v6 = *(a2 + 24);
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = a1[2] == *(a2 + 16) && v5 == v6;
    if (!v7 && (sub_2150A6270() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v8 = a1[5];
  v9 = *(a2 + 40);
  if (v8)
  {
    if (!v9 || (a1[4] != *(a2 + 32) || v8 != v9) && (sub_2150A6270() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v10 = a1[7];
  v11 = *(a2 + 56);
  if (v10)
  {
    if (!v11 || (a1[6] != *(a2 + 48) || v10 != v11) && (sub_2150A6270() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  v12 = a1[9];
  v13 = *(a2 + 72);
  if (!v12)
  {
    if (!v13)
    {
      goto LABEL_36;
    }

    return 0;
  }

  if (!v13 || (a1[8] != *(a2 + 64) || v12 != v13) && (sub_2150A6270() & 1) == 0)
  {
    return 0;
  }

LABEL_36:
  if (*(a1 + 80) != *(a2 + 80))
  {
    return 0;
  }

  type metadata accessor for LinkSuggestion(0);

  return sub_2150A39B0();
}

uint64_t sub_214F9A03C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2150A5DA0();
  v4 = swift_allocObject();
  v4[2] = 8;
  v4[3] = 0;
  v5 = v4 + 3;
  v4[4] = 0;
  v4[5] = 0;
  v6 = *(a1 + 16);
  if (!v6)
  {
LABEL_26:
    v24 = sub_2150A5D90();
    sub_214F9A360(0, v25);
    v30[3] = sub_2150A3AC0();
    __swift_allocate_boxed_opaque_existential_1(v30);

    sub_2150A3A70();
    v26 = sub_215005914(a2, a3, v30, v24);
    v27 = sub_2150A4AD0();

    return v27;
  }

  v7 = 0;
  v8 = a1 + 32;
  while (1)
  {
    __swift_project_boxed_opaque_existential_1((v8 + 40 * v7), *(v8 + 40 * v7 + 24));
    result = sub_2150A6570();
    v10 = *v5;
    v11 = *(result + 16);
    v12 = __OFADD__(*v5, v11);
    v13 = *v5 + v11;
    if (v12)
    {
      break;
    }

    v14 = v4[4];
    if (v14 >= v13)
    {
      goto LABEL_18;
    }

    if (v14 + 0x4000000000000000 < 0)
    {
      goto LABEL_29;
    }

    v15 = v4[5];
    if (2 * v14 > v13)
    {
      v13 = 2 * v14;
    }

    v4[4] = v13;
    if ((v13 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_30;
    }

    v16 = result;
    v17 = swift_slowAlloc();
    v18 = v17;
    v4[5] = v17;
    if (v15)
    {
      if (v17 != v15 || v17 >= &v15[8 * v10])
      {
        memmove(v17, v15, 8 * v10);
      }

      sub_2150A5D80();
      result = v16;
LABEL_18:
      v18 = v4[5];
      if (!v18)
      {
        goto LABEL_25;
      }

      goto LABEL_19;
    }

    result = v16;
    if (!v18)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_19:
    v20 = *(result + 16);
    if (v20)
    {
      v21 = (result + 32);
      v22 = *v5;
      while (1)
      {
        v23 = *v21++;
        *&v18[8 * v22] = v23;
        v22 = *v5 + 1;
        if (__OFADD__(*v5, 1))
        {
          break;
        }

        *v5 = v22;
        if (!--v20)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
      break;
    }

LABEL_3:

    if (++v7 == v6)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_214F9A304(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_214F9A360(uint64_t a1, uint64_t a2)
{
  result = qword_27CA42350;
  if (!qword_27CA42350)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CA42350);
  }

  return result;
}

uint64_t NSManagedObjectContext.perform<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_214D5996C, 0, 0);
}

uint64_t sub_214F9A3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 - 8);
  v7 = MEMORY[0x28223BE20](a1, a2);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v13 = v15 - v12;
  v11();
  (*(v6 + 16))(v9, v13, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD8, &unk_2150C2A90);
  sub_214D5BC54(v9, a3, a4);
  return (*(v6 + 8))(v13, a4);
}

uint64_t NSManagedObjectContext.ic_save(withLogDescription:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3;

  LOBYTE(a3) = sub_214F9A5C4(a3, v7, a1, a2);

  return a3 & 1;
}

void *sub_214F9A5C4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_2150A5DA0();
  v5 = swift_allocObject();
  v5[2] = 8;
  v5[3] = 0;
  v6 = v5 + 3;
  v5[4] = 0;
  v5[5] = 0;
  v7 = *(a1 + 16);
  if (!v7)
  {
LABEL_26:
    v25 = sub_2150A5D90();
    v26 = sub_2150A4A90();
    v27 = [a2 ic:v26 saveWithLogDescription:v25 arguments:?];

    return v27;
  }

  v8 = 0;
  v9 = a1 + 32;
  while (1)
  {
    __swift_project_boxed_opaque_existential_1((v9 + 40 * v8), *(v9 + 40 * v8 + 24));
    result = sub_2150A6570();
    v11 = *v6;
    v12 = result[2];
    v13 = __OFADD__(*v6, v12);
    v14 = *v6 + v12;
    if (v13)
    {
      break;
    }

    v15 = v5[4];
    if (v15 >= v14)
    {
      goto LABEL_18;
    }

    if (v15 + 0x4000000000000000 < 0)
    {
      goto LABEL_29;
    }

    v16 = v5[5];
    if (2 * v15 > v14)
    {
      v14 = 2 * v15;
    }

    v5[4] = v14;
    if ((v14 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_30;
    }

    v17 = result;
    v18 = swift_slowAlloc();
    v19 = v18;
    v5[5] = v18;
    if (v16)
    {
      if (v18 != v16 || v18 >= &v16[8 * v11])
      {
        memmove(v18, v16, 8 * v11);
      }

      sub_2150A5D80();
      result = v17;
LABEL_18:
      v19 = v5[5];
      if (!v19)
      {
        goto LABEL_25;
      }

      goto LABEL_19;
    }

    result = v17;
    if (!v19)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_19:
    v21 = result[2];
    if (v21)
    {
      v22 = result + 4;
      v23 = *v6;
      while (1)
      {
        v24 = *v22++;
        *&v19[8 * v23] = v24;
        v23 = *v6 + 1;
        if (__OFADD__(*v6, 1))
        {
          break;
        }

        *v6 = v23;
        if (!--v21)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
      break;
    }

LABEL_3:

    if (++v8 == v7)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_214F9A7EC(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42DF0, &qword_2150C4DE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42DF8, &qword_2150C4DE8);
  v2 = sub_2150A46C0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2150C29C0;
  v7 = v6 + v5;
  v8 = *(v3 + 104);
  v8(v7, *MEMORY[0x277CFB5E8], v2);
  v8(v7 + v4, *MEMORY[0x277CFB5F0], v2);
  v9 = sub_2150A46E0();

  return v9 & 1;
}

id ICAttachmentSystemPaperModelHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ICAttachmentSystemPaperModelHelper.init()(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ICAttachmentSystemPaperModelHelper(a1, a2);
  return objc_msgSendSuper2(&v4, sel_init);
}

id ICAttachmentSystemPaperModelHelper.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ICAttachmentSystemPaperModelHelper(a1, a2);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

unint64_t _s11NotesShared34ICAttachmentSystemPaperModelHelperC016minimumSupporteda10VersionForE02at04baseJ0So07ICNotesJ0V10Foundation3URLV_AHtFZ_0(uint64_t result, unint64_t a2)
{
  if (a2 < 7)
  {
    __break(1u);
    goto LABEL_23;
  }

  v2 = a2;
  if (a2 > 0x11)
  {
LABEL_23:
    __break(1u);
    return v19;
  }

  if (a2 == 17)
  {
    return 17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42DF0, &qword_2150C4DE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42DF8, &qword_2150C4DE8);
  v3 = sub_2150A46C0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2150C29C0;
  v8 = v7 + v6;
  v9 = *(v4 + 104);
  v21 = *MEMORY[0x277CFB5E8];
  v9(v7 + v6);
  v20 = *MEMORY[0x277CFB5F0];
  v9(v8 + v5);
  LOBYTE(v8) = sub_2150A46E0();

  if ((v8 & 1) == 0)
  {
    return 17;
  }

  if (v2 <= 0xE)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_2150C29C0;
    v11 = v10 + v6;
    (v9)(v10 + v6, v21, v3);
    (v9)(v11 + v5, v20, v3);
    LOBYTE(v11) = sub_2150A46E0();

    if (v11)
    {
      if (v2 != 14)
      {
        v12 = swift_allocObject();
        *(v12 + 16) = xmmword_2150C29C0;
        v13 = v12 + v6;
        (v9)(v12 + v6, v21, v3);
        (v9)(v13 + v5, v20, v3);
        LOBYTE(v13) = sub_2150A46E0();

        if (v13)
        {
          if (v2 <= 0xC)
          {
            v14 = swift_allocObject();
            *(v14 + 16) = xmmword_2150C29C0;
            v15 = v14 + v6;
            (v9)(v14 + v6, v21, v3);
            (v9)(v15 + v5, v20, v3);
            LOBYTE(v15) = sub_2150A46E0();

            if (v15)
            {
              if (v2 <= 9)
              {
                v16 = swift_allocObject();
                *(v16 + 16) = xmmword_2150C29C0;
                v17 = v16 + v6;
                (v9)(v16 + v6, v21, v3);
                (v9)(v17 + v5, v20, v3);
                v18 = sub_2150A46E0();

                if (v18)
                {
                  if (v2 != 9 && (sub_2150A4700() & 1) == 0)
                  {
                    return 9;
                  }
                }

                else
                {
                  return 10;
                }
              }
            }

            else
            {
              return 13;
            }
          }
        }

        else
        {
          return 14;
        }
      }
    }

    else
    {
      return 15;
    }
  }

  return v2;
}

uint64_t sub_214F9B0AC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ArgumentDecoder(a1, a2);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  result = swift_beginAccess();
  *(v2 + 16) = 0;
  off_27CA42E00 = v2;
  return result;
}

uint64_t ArgumentDecoder.__allocating_init(usesDefaultValueIfMissing:)(char a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  swift_beginAccess();
  *(v2 + 16) = a1;
  return v2;
}

uint64_t static ArgumentDecoder.shared.getter()
{
  if (qword_27CA41630 != -1)
  {
    swift_once();
  }
}

uint64_t ArgumentDecoder.usesDefaultValueIfMissing.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t ArgumentDecoder.init(usesDefaultValueIfMissing:)(char a1)
{
  *(v1 + 16) = 0;
  swift_beginAccess();
  *(v1 + 16) = a1;
  return v1;
}

uint64_t ArgumentDecoder.decode<A>(_:from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v11 = sub_214F9B71C(a2);
  v13 = v12;
  v14 = swift_conformsToProtocol2();
  if (!v14 || !a1)
  {
    v32 = swift_beginAccess();
    v33 = *(v5 + 16);
    v35 = type metadata accessor for ArgumentDecoder.Decoder(v32, v34);
    v36 = swift_allocObject();
    v37 = MEMORY[0x277D84F90];
    *(v36 + 40) = MEMORY[0x277D84F90];
    v38 = sub_214FA4E00(v37);
    *(v36 + 48) = v38;
    *(v36 + 16) = v11;
    *(v36 + 24) = v13;
    *(v36 + 32) = v33;
    v62 = v35;
    v63 = sub_214FA4FEC(v38, v39);
    v61[0] = v36;
    return sub_2150A52C0();
  }

  v15 = v14;
  if (v11[2])
  {
    v53 = a4;
    v56 = a5;
    v57 = a3;
    v16 = v11[4];
    v17 = v11[5];
    v54 = *(v14 + 24);
    v18 = sub_2150A57E0();
    v55 = &v50;
    v51 = *(v18 - 8);
    v52 = v18;
    MEMORY[0x28223BE20](v18, v19);
    v21 = &v50 - v20;

    v54(v16, v17, a1, v15);
    v22 = *(a1 - 8);
    if ((*(v22 + 48))(v21, 1, a1) != 1)
    {

      v59 = a1;
      v60 = v15;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v58);
      (*(v22 + 32))(boxed_opaque_existential_1, v21, a1);
      sub_214D7A458(&v58, v61);
      v47 = v62;
      v48 = __swift_project_boxed_opaque_existential_1(v61, v62);
      v59 = v47;
      v49 = __swift_allocate_boxed_opaque_existential_1(&v58);
      (*(*(v47 - 8) + 16))(v49, v48, v47);
      v29 = v56;
      v30 = v57;
      v31 = v57;
      goto LABEL_12;
    }

    (*(v51 + 8))(v21, v52);
    a5 = v56;
    a3 = v57;
  }

  v23 = swift_beginAccess();
  if ((*(v6 + 16) & 1) == 0)
  {
    v40 = type metadata accessor for ArgumentDecoder.Decoder(v23, v24);
    v41 = swift_allocObject();
    v42 = MEMORY[0x277D84F90];
    *(v41 + 40) = MEMORY[0x277D84F90];
    v43 = sub_214FA4E00(v42);
    *(v41 + 48) = v43;
    *(v41 + 16) = v11;
    *(v41 + 24) = v13;
    *(v41 + 32) = 0;
    v62 = v40;
    v63 = sub_214FA4FEC(v43, v44);
    v61[0] = v41;
    return sub_2150A52C0();
  }

  v25 = *(v15 + 16);
  v62 = a1;
  v63 = v15;
  __swift_allocate_boxed_opaque_existential_1(v61);
  v25(a1, v15);
  v26 = v62;
  v27 = __swift_project_boxed_opaque_existential_1(v61, v62);
  v59 = v26;
  v28 = __swift_allocate_boxed_opaque_existential_1(&v58);
  (*(*(v26 - 8) + 16))(v28, v27, v26);
  v29 = a5;
  v30 = a3;
  v31 = a3;
LABEL_12:
  castOrFatalError<A>(_:as:)(&v58, v30, v31, v29);
  __swift_destroy_boxed_opaque_existential_0(&v58);
  return __swift_destroy_boxed_opaque_existential_0(v61);
}

uint64_t sub_214F9B71C(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v3 = sub_214FA4CEC(MEMORY[0x277D84F90]);
  v19 = v2;
  v20 = v3;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v4 = *(a1 + 16);
  if (!v4)
  {
    v6 = 0;
    v7 = 0;
    v9 = MEMORY[0x277D84F90];
LABEL_9:

    sub_214FA6150(v9, v3, v7, v6, 0);
    return v9;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = (a1 + 40);
  v9 = MEMORY[0x277D84F90];
  do
  {
    v10 = *v8;
    v18[0] = *(v8 - 1);
    v18[1] = v10;

    sub_214F9B938(&v19, v18, &v13);

    sub_214FA6150(v9, v3, v7, v6, v5);
    v9 = v13;
    v3 = v14;
    v7 = v15;
    v6 = v16;
    v5 = v17;
    v19 = v13;
    v20 = v14;
    v21 = v15;
    v22 = v16;
    v23 = v17;
    v8 += 2;
    --v4;
  }

  while (v4);
  if (!v17)
  {
    goto LABEL_9;
  }

  if (v17 == 1)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = v6;
    sub_214FEC180(1702195828, 0xE400000000000000, v9, v3, isUniquelyReferenced_nonNull_native);

    sub_214FA6150(v9, v3, v7, v6, 1u);
  }

  else
  {

    sub_214FA6150(v9, v3, v7, v6, 2u);
  }

  return v7;
}

uint64_t sub_214F9B938@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v7 = *a2;
  v6 = a2[1];
  if (*(a1 + 32))
  {
    v8 = a1[2];
    v9 = a1[3];
    if (*(a1 + 32) == 1)
    {

      if ((sub_2150A4CD0() & 1) == 0)
      {

        swift_bridgeObjectRetain_n();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        sub_214FEC180(v7, v6, v5, v4, isUniquelyReferenced_nonNull_native);

        *a3 = v5;
        *(a3 + 8) = v4;
        *(a3 + 16) = v8;
        *(a3 + 24) = v9;
        *(a3 + 32) = 2;
        return result;
      }

      v10 = swift_isUniquelyReferenced_nonNull_native();
      v46 = v9;
      sub_214FEC180(1702195828, 0xE400000000000000, v5, v4, v10);
    }

    else
    {
      v50 = a1[3];

      if ((sub_2150A4CD0() & 1) == 0)
      {
        v43 = sub_214F9BD88(&v46, v5, v4);
        if (*(v44 + 8))
        {
          MEMORY[0x2160617E0](v7, v6);
          MEMORY[0x2160617E0](32, 0xE100000000000000);
        }

        result = (v43)(&v46, 0);
        v45 = v50;
        *a3 = v5;
        *(a3 + 8) = v4;
        *(a3 + 16) = v8;
        *(a3 + 24) = v45;
        v38 = 2;
        goto LABEL_19;
      }
    }

    v25 = sub_2150A4BC0();
    v26 = sub_214FBA930(v25, v7, v6);
    v28 = v27;
    v30 = v29;
    v32 = v31;

    v46 = v26;
    v47 = v28;
    v48 = v30;
    v49 = v32;
    sub_214F99030();
    v33 = sub_2150A4D30();
    sub_214FBDA8C(v33, v34);

    v35 = sub_2150A4B40();
    v37 = v36;

    *a3 = v35;
    *(a3 + 8) = v37;
    *(a3 + 16) = v8;
    *(a3 + 24) = v9;
    v38 = 1;
LABEL_19:
    *(a3 + 32) = v38;
    return result;
  }

  if (sub_2150A4CD0())
  {

    v11 = sub_2150A4BC0();
    v12 = sub_214FBA930(v11, v7, v6);
    v14 = v13;
    v16 = v15;
    v18 = v17;

    v46 = v12;
    v47 = v14;
    v48 = v16;
    v49 = v18;
    sub_214F99030();
    v19 = sub_2150A4D30();
    sub_214FBDA8C(v19, v20);

    v21 = sub_2150A4B40();
    v23 = v22;

    *a3 = v21;
    *(a3 + 8) = v23;
    *(a3 + 16) = v5;
    *(a3 + 24) = v4;
    *(a3 + 32) = 1;
  }

  else
  {

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_21505F4D0(0, *(v5 + 16) + 1, 1, v5);
      v5 = result;
    }

    v41 = *(v5 + 16);
    v40 = *(v5 + 24);
    if (v41 >= v40 >> 1)
    {
      result = sub_21505F4D0((v40 > 1), v41 + 1, 1, v5);
      v5 = result;
    }

    *(v5 + 16) = v41 + 1;
    v42 = v5 + 16 * v41;
    *(v42 + 32) = v7;
    *(v42 + 40) = v6;
    *a3 = v5;
    *(a3 + 8) = v4;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 32) = 0;
  }

  return result;
}

uint64_t (*sub_214F9BD88(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_214FA45CC(v6, a2, a3);
  return sub_214F9BE10;
}

void sub_214F9BE10(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t ArgumentDecoder.Decoder.usesDefaultValueIfMissing.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 32) = a1;
  return result;
}

uint64_t ArgumentDecoder.Decoder.codingPath.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;
}

uint64_t ArgumentDecoder.Decoder.container<A>(keyedBy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2150A5C10();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v11 = *(v3 + 40);
  if (!*(v11 + 16))
  {

    goto LABEL_5;
  }

  swift_beginAccess();
  if (*(v3 + 32) == 1)
  {
    v12 = sub_214FA4CEC(MEMORY[0x277D84F90]);
    v11 = *(v3 + 40);
LABEL_5:
    v18[1] = v3;
    v18[2] = v11;
    v18[3] = v12;
    type metadata accessor for ArgumentDecoder.KeyedContainer(0, a2, a3, v13);

    swift_getWitnessTable();
    return sub_2150A5FF0();
  }

  sub_2150A5BF0();
  v15 = sub_2150A5C20();
  swift_allocError();
  v17 = v16;
  (*(v7 + 16))(v16, v10, v6);
  (*(*(v15 - 8) + 104))(v17, *MEMORY[0x277D84168], v15);
  swift_willThrow();
  return (*(v7 + 8))(v10, v6);
}

void *ArgumentDecoder.Decoder.unkeyedContainer()@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  swift_bridgeObjectRetain_n();

  v4 = sub_214F9C334(v3);
  v6 = v5;

  sub_214FA5CE8(v1, v3, v4, v6);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  a1[3] = &type metadata for ArgumentDecoder.UnkeyedContainer;
  a1[4] = sub_214FA5F68();
  result = swift_allocObject();
  *a1 = result;
  result[2] = v8;
  result[3] = v10;
  result[4] = v12;
  result[5] = v14;
  return result;
}

uint64_t sub_214F9C334(void *a1)
{
  if (a1[2])
  {
    __swift_project_boxed_opaque_existential_1(a1 + 4, a1[7]);
    sub_2150A6630();
    v2 = sub_2150A4D30();
    sub_214FBDA8C(v2, v3);

    v4 = sub_2150A4B40();
    v6 = v5;

    v7 = *(v1 + 24);
    if (*(v7 + 16))
    {
      v8 = sub_214F30094(v4, v6);
      v10 = v9;

      if (v10)
      {
        v11 = *(*(v7 + 56) + 16 * v8);

        return v11;
      }
    }

    else
    {
    }
  }

  else if (*(*(v1 + 16) + 16))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DE0, &qword_2150C2910);
    sub_214F43BCC(&qword_280C24540, &qword_27CA41DE0, &qword_2150C2910, MEMORY[0x277D83958]);
    v13 = sub_2150A4A20();

    return v13;
  }

  return 0;
}

uint64_t ArgumentDecoder.Decoder.singleValueContainer()@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  swift_bridgeObjectRetain_n();
  v4 = sub_214F9C334(v3);
  v6 = v5;

  a1[3] = &type metadata for ArgumentDecoder.SingleValueContainer;
  a1[4] = sub_214FA5FBC();
  v7 = swift_allocObject();
  *a1 = v7;
  v7[2] = v1;
  v7[3] = v3;
  v7[4] = v4;
  v7[5] = v6;
}

void *ArgumentDecoder.Decoder.deinit()
{

  return v0;
}

uint64_t ArgumentDecoder.Decoder.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void *sub_214F9C6A8@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  swift_bridgeObjectRetain_n();

  v5 = sub_214F9C334(v4);
  v7 = v6;

  sub_214FA5CE8(v3, v4, v5, v7);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  a1[3] = &type metadata for ArgumentDecoder.UnkeyedContainer;
  a1[4] = sub_214FA5F68();
  result = swift_allocObject();
  *a1 = result;
  result[2] = v9;
  result[3] = v11;
  result[4] = v13;
  result[5] = v15;
  return result;
}

uint64_t sub_214F9C788@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  swift_bridgeObjectRetain_n();
  v5 = sub_214F9C334(v4);
  v7 = v6;

  a1[3] = &type metadata for ArgumentDecoder.SingleValueContainer;
  a1[4] = sub_214FA5FBC();
  v8 = swift_allocObject();
  *a1 = v8;
  v8[2] = v3;
  v8[3] = v4;
  v8[4] = v5;
  v8[5] = v7;
}

uint64_t sub_214F9C844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42EA8, &qword_2150C53E8);
  sub_214F43BCC(&qword_27CA42EB0, &qword_27CA42EA8, &qword_2150C53E8, MEMORY[0x277D83480]);
  v5 = sub_2150A4D80();

  return v5;
}

uint64_t sub_214F9C91C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_2150A6630();
  v7 = sub_2150A4D30();
  v9 = sub_214FBDA8C(v7, v8);
  v11 = v10;

  if (*(a4 + 16))
  {
    sub_214F30094(v9, v11);
    v13 = v12;
  }

  else
  {

    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_214F9C9DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v62 = a8;
  v59 = a5;
  v60 = a7;
  v58 = a4;
  v56 = a9;
  v13 = *(a6 - 8);
  v14 = MEMORY[0x28223BE20](a1, a2);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v54 - v18;
  v20 = *(v13 + 16);
  v70 = v21;
  v20(&v54 - v18);
  swift_beginAccess();
  v22 = *(a3 + 40);
  swift_retain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v63 = a3;
  *(a3 + 40) = v22;
  v61 = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v22 = sub_21505FF74(0, v22[2] + 1, 1, v22);
    *(v63 + 40) = v22;
  }

  v57 = a10;
  v25 = v22[2];
  v24 = v22[3];
  v26 = a1;
  if (v25 >= v24 >> 1)
  {
    v22 = sub_21505FF74((v24 > 1), v25 + 1, 1, v22);
    *(v63 + 40) = v22;
  }

  v27 = v70;
  (v20)(v16, v19, v70);
  v28 = v63;
  sub_214FA4924(v25, v16, (v63 + 40), v27, v62);
  (*(v13 + 8))(v19, v27);
  *(v28 + 40) = v22;
  swift_endAccess();

  v29 = swift_conformsToProtocol2();
  if (!v29 || !v26)
  {
    goto LABEL_12;
  }

  v31 = v29;

  v33 = sub_214F9C334(v32);
  v35 = v34;

  if (v35)
  {
    v36 = *(v31 + 24);
    v55 = sub_2150A57E0();
    v37 = *(v55 - 8);
    MEMORY[0x28223BE20](v55, v38);
    v40 = &v54 - v39;
    v36(v33, v35, v26, v31);
    v41 = *(v26 - 8);
    if ((*(v41 + 48))(v40, 1, v26) != 1)
    {
      v47 = v63;

      v65 = v26;
      v66 = v31;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v64);
      v49 = v40;
      v28 = v47;
      (*(v41 + 32))(boxed_opaque_existential_1, v49, v26);
      sub_214D7A458(&v64, v67);
      v50 = v68;
      v51 = __swift_project_boxed_opaque_existential_1(v67, v68);
      v65 = v50;
      v52 = __swift_allocate_boxed_opaque_existential_1(&v64);
      (*(*(v50 - 8) + 16))(v52, v51, v50);
      castOrFatalError<A>(_:as:)(&v64, v60, v60, v56);
      __swift_destroy_boxed_opaque_existential_0(&v64);
      __swift_destroy_boxed_opaque_existential_0(v67);
      return sub_214F9CF50(v28);
    }

    (*(v37 + 8))(v40, v55);
    v28 = v63;
  }

  v29 = swift_beginAccess();
  if (*(v28 + 32))
  {

    v42 = *(v31 + 16);
    v68 = v26;
    v69 = v31;
    __swift_allocate_boxed_opaque_existential_1(v67);
    v42(v26, v31);
    v43 = v68;
    v44 = __swift_project_boxed_opaque_existential_1(v67, v68);
    v65 = v43;
    v45 = __swift_allocate_boxed_opaque_existential_1(&v64);
    (*(*(v43 - 8) + 16))(v45, v44, v43);
    castOrFatalError<A>(_:as:)(&v64, v60, v60, v56);
    __swift_destroy_boxed_opaque_existential_0(&v64);
    __swift_destroy_boxed_opaque_existential_0(v67);
  }

  else
  {
LABEL_12:
    v68 = type metadata accessor for ArgumentDecoder.Decoder(v29, v30);
    v69 = sub_214FA4FEC(v68, v46);
    v67[0] = v28;
    sub_2150A52C0();
  }

  return sub_214F9CF50(v28);
}

uint64_t sub_214F9CF50(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 40);
  if (!v2[2])
  {
    __break(1u);
LABEL_6:
    result = sub_215060930(v2);
    v2 = result;
    v4 = *(result + 16);
    if (v4)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_6;
  }

  v4 = v2[2];
  if (v4)
  {
LABEL_4:
    v5 = v4 - 1;
    __swift_destroy_boxed_opaque_existential_0(&v2[5 * v4 - 1]);
    v2[2] = v5;
    *(a1 + 40) = v2;
    return swift_endAccess();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_214F9D17C(uint64_t a1, uint64_t a2)
{
  sub_214F9C9DC(MEMORY[0x277D839B0], a1, *v2, v2[1], v2[2], *(a2 + 16), MEMORY[0x277D839B0], *(a2 + 24), &v6, MEMORY[0x277D839D0]);
  if (!v3)
  {
    v4 = v6;
  }

  return v4 & 1;
}

uint64_t sub_214F9D1DC(uint64_t a1, uint64_t a2)
{
  result = sub_214F9C9DC(MEMORY[0x277D837D0], a1, *v2, v2[1], v2[2], *(a2 + 16), MEMORY[0x277D837D0], *(a2 + 24), &v5, MEMORY[0x277D83808]);
  if (!v3)
  {
    return v5;
  }

  return result;
}

double sub_214F9D238(uint64_t a1, uint64_t a2)
{
  sub_214F9C9DC(MEMORY[0x277D839F8], a1, *v2, v2[1], v2[2], *(a2 + 16), MEMORY[0x277D839F8], *(a2 + 24), &v5, MEMORY[0x277D83A30]);
  if (!v3)
  {
    return v5;
  }

  return result;
}

float sub_214F9D294(uint64_t a1, uint64_t a2)
{
  sub_214F9C9DC(MEMORY[0x277D83A90], a1, *v2, v2[1], v2[2], *(a2 + 16), MEMORY[0x277D83A90], *(a2 + 24), &v5, MEMORY[0x277D83AC8]);
  if (!v3)
  {
    return v5;
  }

  return result;
}

uint64_t sub_214F9D420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_214F9C9DC(a4, a1, *v5, v5[1], v5[2], *(a2 + 16), a4, *(a2 + 24), &v8, a5);
  if (!v6)
  {
    return v8;
  }

  return result;
}

uint64_t sub_214F9D49C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_214F9C9DC(a4, a1, *v5, v5[1], v5[2], *(a2 + 16), a4, *(a2 + 24), &v8, a5);
  if (!v6)
  {
    return v8;
  }

  return result;
}

uint64_t sub_214F9D518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_214F9C9DC(a4, a1, *v5, v5[1], v5[2], *(a2 + 16), a4, *(a2 + 24), &v8, a5);
  if (!v6)
  {
    return v8;
  }

  return result;
}

uint64_t sub_214F9D594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_214F9C9DC(a4, a1, *v5, v5[1], v5[2], *(a2 + 16), a4, *(a2 + 24), &v8, a5);
  if (!v6)
  {
    return v8;
  }

  return result;
}

uint64_t sub_214F9D66C()
{
  result = sub_2150A6310();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_214F9D6BC()
{
  result = sub_2150A6320();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_214F9D764()
{
  result = sub_2150A6350();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_214F9D7B4()
{
  result = sub_2150A6330();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_214F9D8F4()
{
  result = sub_2150A6360();
  if (v0)
  {
    return v2;
  }

  return result;
}