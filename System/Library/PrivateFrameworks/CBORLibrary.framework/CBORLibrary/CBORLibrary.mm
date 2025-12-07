uint64_t sub_222775534()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22277557C()
{

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_222775700@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 104))();
  *a2 = result;
  return result;
}

uint64_t sub_22277574C(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 112);

  return v2(v3);
}

void *sub_2227757A0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = (*(**a1 + 176))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_2227757FC(unint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v5 = *a1;
  v3 = *(*v2 + 184);
  sub_2227938F8(v5);
  return v3(&v5);
}

void *sub_222775860@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 200))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_2227758BC(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 208))(&v4);
}

uint64_t sub_22277591C()
{

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_2227759E4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_222775A28@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 88))();
  *a2 = result;
  return result;
}

uint64_t sub_222775A74(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 96);

  return v2(v3);
}

uint64_t sub_222775B00(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t sub_222775B9C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019E08, &qword_2227A06A0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_22279EF70();
  __swift_allocate_value_buffer(v3, qword_27D01A160);
  v4 = __swift_project_value_buffer(v3, qword_27D01A160);
  sub_22279EF60();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t CBORDecoder.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = sub_2227810EC(MEMORY[0x277D84F90]);
  return v0;
}

void sub_222775D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a5;
  v19 = a1;
  v7 = sub_22279EEA0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_opt_self();
  v12 = sub_22279EC00();
  v13 = [v11 decodeFromData:v12 keepKeyOrdering:1 noCopy:0];

  if (v13)
  {
    (*(*v5 + 136))(v19, v13, a4, v18);
  }

  else
  {
    sub_22279EE90();
    v14 = sub_22279EEB0();
    swift_allocError();
    v16 = v15;
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450) + 48);
    *v16 = v19;
    (*(v8 + 16))(v16 + v17, v10, v7);
    (*(*(v14 - 8) + 104))(v16, *MEMORY[0x277D84170], v14);
    swift_willThrow();
    (*(v8 + 8))(v10, v7);
  }
}

void sub_222775F8C(uint64_t a1@<X0>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v33 = a6;
  v8 = v7;
  v31 = a7;
  v32 = a5;
  v37 = a1;
  v10 = sub_22279EEA0();
  v29 = *(v10 - 8);
  v30 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22279EF70();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27D019D40 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v13, qword_27D01A160);
  (*(v14 + 16))(v16, v17, v13);
  v36 = MEMORY[0x277D839B0];
  v18 = a4 & 1;
  v35[0] = a4 & 1;
  v19 = (*(*v8 + 104))(v34);
  sub_22277632C(v35, v16);
  v19(v34, 0);
  v20 = objc_opt_self();
  v21 = sub_22279EC00();
  v22 = [v20 decodeFromData:v21 keepKeyOrdering:1 noCopy:v18];

  if (v22)
  {
    (*(*v8 + 136))(v37, v22, v32, v33);
  }

  else
  {
    sub_22279EE90();
    v23 = sub_22279EEB0();
    swift_allocError();
    v25 = v24;
    v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450) + 48);
    *v25 = v37;
    v28 = v29;
    v27 = v30;
    (*(v29 + 16))(v25 + v26, v12, v30);
    (*(*(v23 - 8) + 104))(v25, *MEMORY[0x277D84170], v23);
    swift_willThrow();
    (*(v28 + 8))(v12, v27);
  }
}

uint64_t sub_22277632C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_2227828C4(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v2;
    sub_222789338(v9, a2, isUniquelyReferenced_nonNull_native);
    v5 = sub_22279EF70();
    result = (*(*(v5 - 8) + 8))(a2, v5);
    *v2 = v8;
  }

  else
  {
    sub_222782970(a1, &qword_27D019D78, &qword_2227A0658);
    sub_222787BC4(a2, v9);
    v7 = sub_22279EF70();
    (*(*(v7 - 8) + 8))(a2, v7);
    return sub_222782970(v9, &qword_27D019D78, &qword_2227A0658);
  }

  return result;
}

uint64_t sub_222776448@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v30 = a4;
  v27 = a5;
  v9 = sub_22279EEA0();
  v28 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22279EE00();
  v29 = *(v12 - 8);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v27 - v14;
  v16 = (*(*v5 + 88))(v13);
  type metadata accessor for _CBORDecoder();
  swift_allocObject();
  v17 = a2;
  sub_2227816A8(v17, MEMORY[0x277D84F90], v16);

  v18 = v31;
  sub_2227767D8(v17, a1, a3, v30, v15);
  if (v18)
  {
  }

  v20 = v29;
  v31 = a1;
  v21 = *(a3 - 8);
  if ((*(v21 + 48))(v15, 1, a3) == 1)
  {
    (*(v20 + 8))(v15, v12);
    sub_22279EE90();
    v22 = sub_22279EEB0();
    swift_allocError();
    v24 = v23;
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450) + 48);
    *v24 = v31;
    v26 = v28;
    (*(v28 + 16))(v24 + v25, v11, v9);
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84170], v22);
    swift_willThrow();

    return (*(v26 + 8))(v11, v9);
  }

  else
  {

    return (*(v21 + 32))(v27, v15, a3);
  }
}

void *sub_2227767D8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  result = sub_22277F070(a1, a2, a4, &v10);
  if (!v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D78, &qword_2227A0658);
    v9 = swift_dynamicCast();
    return (*(*(a3 - 8) + 56))(a5, v9 ^ 1u, 1, a3);
  }

  return result;
}

uint64_t CBORDecoder.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

void sub_222776934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v7 = *(v3 + 24);
  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_11:
    v14 = sub_22279EEB0();
    swift_allocError();
    v16 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450);
    *v16 = a1;
    swift_beginAccess();

    sub_22279EE90();
    (*(*(v14 - 8) + 104))(v16, *MEMORY[0x277D84160], v14);
    swift_willThrow();
    return;
  }

  v8 = sub_22279EFA0();
  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_3:
  v9 = v8 - 1;
  if (__OFSUB__(v8, 1))
  {
    __break(1u);
    goto LABEL_15;
  }

  if ((v7 & 0xC000000000000001) != 0)
  {
LABEL_15:

    v10 = MEMORY[0x223DC00C0](v9, v7);

    goto LABEL_8;
  }

  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v9 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(v7 + 8 * v9 + 32);
LABEL_8:
    v11 = [v10 dictionary];
    if (v11)
    {
      v12 = v11;
      sub_222782C2C(0, qword_280BC4448, off_2784B4108);
      sub_222782704(&qword_280BC4440, qword_280BC4448, off_2784B4108);
      sub_22279EC60();

      swift_beginAccess();
      type metadata accessor for _CBORDecoderKeyedContainer(0, a2, a3, v13);
      swift_retain_n();
      swift_bridgeObjectRetain_n();

      swift_getWitnessTable();
      sub_22279F050();

      return;
    }

    goto LABEL_11;
  }

  __break(1u);
}

void sub_222776C1C(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_11:
    v12 = sub_22279EEB0();
    swift_allocError();
    v14 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450);
    *v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D60, &qword_2227A0648);
    swift_beginAccess();

    sub_22279EE90();
    (*(*(v12 - 8) + 104))(v14, *MEMORY[0x277D84160], v12);
    swift_willThrow();
    return;
  }

  v4 = sub_22279EFA0();
  if (!v4)
  {
    goto LABEL_11;
  }

LABEL_3:
  v5 = v4 - 1;
  if (__OFSUB__(v4, 1))
  {
    __break(1u);
    goto LABEL_15;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
LABEL_15:

    v6 = MEMORY[0x223DC00C0](v5, v3);

    goto LABEL_8;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v5 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v3 + 8 * v5 + 32);
LABEL_8:
    v7 = [v6 array];
    if (v7)
    {
      v8 = v7;
      sub_222782C2C(0, qword_280BC4448, off_2784B4108);
      v9 = sub_22279ED80();

      swift_beginAccess();
      v10 = *(v1 + 16);
      a1[3] = &type metadata for _CBORDecoderUnkeyedContainer;
      a1[4] = sub_2227826B0();
      v11 = swift_allocObject();
      *a1 = v11;

      v11[2] = v10;
      v11[3] = 0;
      v11[4] = v1;
      v11[5] = v9;
      return;
    }

    goto LABEL_11;
  }

  __break(1u);
}

uint64_t sub_222776E98()
{

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_222776F34@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = type metadata accessor for _CBORDecoder();
  a1[4] = sub_22278276C(&qword_27D019D50, &unk_2227A0540);
  *a1 = v3;
}

char *sub_222776FA4()
{
  if (sub_222778A34())
  {
    v2 = sub_22279EEB0();
    swift_allocError();
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450);
    *v4 = MEMORY[0x277D839B0];
    swift_beginAccess();

    sub_22279EE90();
    (*(*(v2 - 8) + 104))(v4, *MEMORY[0x277D84170], v2);
    swift_willThrow();
    return v2;
  }

  swift_beginAccess();
  v6 = *(v0 + 24);
  if (!(v6 >> 62))
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_6;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = sub_22279EFA0();
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_6:
  v1 = result - 1;
  if (__OFSUB__(result, 1))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
LABEL_14:

    v2 = MEMORY[0x223DC00C0](v1, v6);

    return v2;
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v1 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return *(v6 + 8 * v1 + 32);
  }

  __break(1u);
  return result;
}

char *sub_222777164()
{
  if (sub_222778A34())
  {
    v2 = sub_22279EEB0();
    swift_allocError();
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450);
    *v4 = MEMORY[0x277D837D0];
    swift_beginAccess();

    sub_22279EE90();
    (*(*(v2 - 8) + 104))(v4, *MEMORY[0x277D84170], v2);
    swift_willThrow();
    return v2;
  }

  swift_beginAccess();
  v6 = *(v0 + 24);
  if (!(v6 >> 62))
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_6;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = sub_22279EFA0();
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_6:
  v1 = result - 1;
  if (__OFSUB__(result, 1))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
LABEL_14:

    v2 = MEMORY[0x223DC00C0](v1, v6);

    return v2;
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v1 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return *(v6 + 8 * v1 + 32);
  }

  __break(1u);
  return result;
}

char *sub_222777324()
{
  if (sub_222778A34())
  {
    v2 = sub_22279EEB0();
    swift_allocError();
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450);
    *v4 = MEMORY[0x277D839F8];
    swift_beginAccess();

    sub_22279EE90();
    (*(*(v2 - 8) + 104))(v4, *MEMORY[0x277D84170], v2);
    swift_willThrow();
    return v2;
  }

  swift_beginAccess();
  v6 = *(v0 + 24);
  if (!(v6 >> 62))
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_6;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = sub_22279EFA0();
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_6:
  v1 = result - 1;
  if (__OFSUB__(result, 1))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
LABEL_14:

    v2 = MEMORY[0x223DC00C0](v1, v6);

    return v2;
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v1 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return *(v6 + 8 * v1 + 32);
  }

  __break(1u);
  return result;
}

char *sub_2227774E4()
{
  if (sub_222778A34())
  {
    v2 = sub_22279EEB0();
    swift_allocError();
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450);
    *v4 = MEMORY[0x277D83A90];
    swift_beginAccess();

    sub_22279EE90();
    (*(*(v2 - 8) + 104))(v4, *MEMORY[0x277D84170], v2);
    swift_willThrow();
    return v2;
  }

  swift_beginAccess();
  v6 = *(v0 + 24);
  if (!(v6 >> 62))
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_6;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = sub_22279EFA0();
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_6:
  v1 = result - 1;
  if (__OFSUB__(result, 1))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
LABEL_14:

    v2 = MEMORY[0x223DC00C0](v1, v6);

    return v2;
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v1 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return *(v6 + 8 * v1 + 32);
  }

  __break(1u);
  return result;
}

char *sub_2227776A4()
{
  if (sub_222778A34())
  {
    v2 = sub_22279EEB0();
    swift_allocError();
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450);
    *v4 = MEMORY[0x277D83B88];
    swift_beginAccess();

    sub_22279EE90();
    (*(*(v2 - 8) + 104))(v4, *MEMORY[0x277D84170], v2);
    swift_willThrow();
    return v2;
  }

  swift_beginAccess();
  v6 = *(v0 + 24);
  if (!(v6 >> 62))
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_6;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = sub_22279EFA0();
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_6:
  v1 = result - 1;
  if (__OFSUB__(result, 1))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
LABEL_14:

    v2 = MEMORY[0x223DC00C0](v1, v6);

    return v2;
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v1 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return *(v6 + 8 * v1 + 32);
  }

  __break(1u);
  return result;
}

char *sub_222777864()
{
  if (sub_222778A34())
  {
    v2 = sub_22279EEB0();
    swift_allocError();
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450);
    *v4 = MEMORY[0x277D84900];
    swift_beginAccess();

    sub_22279EE90();
    (*(*(v2 - 8) + 104))(v4, *MEMORY[0x277D84170], v2);
    swift_willThrow();
    return v2;
  }

  swift_beginAccess();
  v6 = *(v0 + 24);
  if (!(v6 >> 62))
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_6;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = sub_22279EFA0();
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_6:
  v1 = result - 1;
  if (__OFSUB__(result, 1))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
LABEL_14:

    v2 = MEMORY[0x223DC00C0](v1, v6);

    return v2;
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v1 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return *(v6 + 8 * v1 + 32);
  }

  __break(1u);
  return result;
}

char *sub_222777A24()
{
  if (sub_222778A34())
  {
    v2 = sub_22279EEB0();
    swift_allocError();
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450);
    *v4 = MEMORY[0x277D84958];
    swift_beginAccess();

    sub_22279EE90();
    (*(*(v2 - 8) + 104))(v4, *MEMORY[0x277D84170], v2);
    swift_willThrow();
    return v2;
  }

  swift_beginAccess();
  v6 = *(v0 + 24);
  if (!(v6 >> 62))
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_6;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = sub_22279EFA0();
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_6:
  v1 = result - 1;
  if (__OFSUB__(result, 1))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
LABEL_14:

    v2 = MEMORY[0x223DC00C0](v1, v6);

    return v2;
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v1 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return *(v6 + 8 * v1 + 32);
  }

  __break(1u);
  return result;
}

char *sub_222777BE4()
{
  if (sub_222778A34())
  {
    v2 = sub_22279EEB0();
    swift_allocError();
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450);
    *v4 = MEMORY[0x277D849A8];
    swift_beginAccess();

    sub_22279EE90();
    (*(*(v2 - 8) + 104))(v4, *MEMORY[0x277D84170], v2);
    swift_willThrow();
    return v2;
  }

  swift_beginAccess();
  v6 = *(v0 + 24);
  if (!(v6 >> 62))
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_6;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = sub_22279EFA0();
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_6:
  v1 = result - 1;
  if (__OFSUB__(result, 1))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
LABEL_14:

    v2 = MEMORY[0x223DC00C0](v1, v6);

    return v2;
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v1 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return *(v6 + 8 * v1 + 32);
  }

  __break(1u);
  return result;
}

char *sub_222777DA4()
{
  if (sub_222778A34())
  {
    v2 = sub_22279EEB0();
    swift_allocError();
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450);
    *v4 = MEMORY[0x277D84A28];
    swift_beginAccess();

    sub_22279EE90();
    (*(*(v2 - 8) + 104))(v4, *MEMORY[0x277D84170], v2);
    swift_willThrow();
    return v2;
  }

  swift_beginAccess();
  v6 = *(v0 + 24);
  if (!(v6 >> 62))
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_6;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = sub_22279EFA0();
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_6:
  v1 = result - 1;
  if (__OFSUB__(result, 1))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
LABEL_14:

    v2 = MEMORY[0x223DC00C0](v1, v6);

    return v2;
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v1 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return *(v6 + 8 * v1 + 32);
  }

  __break(1u);
  return result;
}

char *sub_222777F64()
{
  if (sub_222778A34())
  {
    v2 = sub_22279EEB0();
    swift_allocError();
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450);
    *v4 = MEMORY[0x277D83E88];
    swift_beginAccess();

    sub_22279EE90();
    (*(*(v2 - 8) + 104))(v4, *MEMORY[0x277D84170], v2);
    swift_willThrow();
    return v2;
  }

  swift_beginAccess();
  v6 = *(v0 + 24);
  if (!(v6 >> 62))
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_6;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = sub_22279EFA0();
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_6:
  v1 = result - 1;
  if (__OFSUB__(result, 1))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
LABEL_14:

    v2 = MEMORY[0x223DC00C0](v1, v6);

    return v2;
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v1 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return *(v6 + 8 * v1 + 32);
  }

  __break(1u);
  return result;
}

char *sub_222778124()
{
  if (sub_222778A34())
  {
    v2 = sub_22279EEB0();
    swift_allocError();
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450);
    *v4 = MEMORY[0x277D84B78];
    swift_beginAccess();

    sub_22279EE90();
    (*(*(v2 - 8) + 104))(v4, *MEMORY[0x277D84170], v2);
    swift_willThrow();
    return v2;
  }

  swift_beginAccess();
  v6 = *(v0 + 24);
  if (!(v6 >> 62))
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_6;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = sub_22279EFA0();
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_6:
  v1 = result - 1;
  if (__OFSUB__(result, 1))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
LABEL_14:

    v2 = MEMORY[0x223DC00C0](v1, v6);

    return v2;
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v1 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return *(v6 + 8 * v1 + 32);
  }

  __break(1u);
  return result;
}

char *sub_2227782E4()
{
  if (sub_222778A34())
  {
    v2 = sub_22279EEB0();
    swift_allocError();
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450);
    *v4 = MEMORY[0x277D84C58];
    swift_beginAccess();

    sub_22279EE90();
    (*(*(v2 - 8) + 104))(v4, *MEMORY[0x277D84170], v2);
    swift_willThrow();
    return v2;
  }

  swift_beginAccess();
  v6 = *(v0 + 24);
  if (!(v6 >> 62))
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_6;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = sub_22279EFA0();
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_6:
  v1 = result - 1;
  if (__OFSUB__(result, 1))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
LABEL_14:

    v2 = MEMORY[0x223DC00C0](v1, v6);

    return v2;
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v1 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return *(v6 + 8 * v1 + 32);
  }

  __break(1u);
  return result;
}

char *sub_2227784A4()
{
  if (sub_222778A34())
  {
    v2 = sub_22279EEB0();
    swift_allocError();
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450);
    *v4 = MEMORY[0x277D84CC0];
    swift_beginAccess();

    sub_22279EE90();
    (*(*(v2 - 8) + 104))(v4, *MEMORY[0x277D84170], v2);
    swift_willThrow();
    return v2;
  }

  swift_beginAccess();
  v6 = *(v0 + 24);
  if (!(v6 >> 62))
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_6;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = sub_22279EFA0();
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_6:
  v1 = result - 1;
  if (__OFSUB__(result, 1))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
LABEL_14:

    v2 = MEMORY[0x223DC00C0](v1, v6);

    return v2;
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v1 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return *(v6 + 8 * v1 + 32);
  }

  __break(1u);
  return result;
}

char *sub_222778664()
{
  if (sub_222778A34())
  {
    v2 = sub_22279EEB0();
    swift_allocError();
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450);
    *v4 = MEMORY[0x277D84D38];
    swift_beginAccess();

    sub_22279EE90();
    (*(*(v2 - 8) + 104))(v4, *MEMORY[0x277D84170], v2);
    swift_willThrow();
    return v2;
  }

  swift_beginAccess();
  v6 = *(v0 + 24);
  if (!(v6 >> 62))
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_6;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = sub_22279EFA0();
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_6:
  v1 = result - 1;
  if (__OFSUB__(result, 1))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
LABEL_14:

    v2 = MEMORY[0x223DC00C0](v1, v6);

    return v2;
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v1 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return *(v6 + 8 * v1 + 32);
  }

  __break(1u);
  return result;
}

char *sub_222778824(uint64_t a1)
{
  if (sub_222778A34())
  {
    v4 = sub_22279EEB0();
    swift_allocError();
    v6 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450);
    *v6 = a1;
    swift_beginAccess();

    sub_22279EE60();
    sub_22279F5B0();

    MEMORY[0x223DBFF30](0xD000000000000010, 0x80000002227A1D00);
    sub_22279EE90();
    (*(*(v4 - 8) + 104))(v6, *MEMORY[0x277D84170], v4);
    swift_willThrow();
    return v4;
  }

  swift_beginAccess();
  v8 = *(v1 + 24);
  if (!(v8 >> 62))
  {
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_6;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = sub_22279EFA0();
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_6:
  v2 = result - 1;
  if (__OFSUB__(result, 1))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((v8 & 0xC000000000000001) != 0)
  {
LABEL_14:

    v4 = MEMORY[0x223DC00C0](v2, v8);

    return v4;
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v2 < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return *(v8 + 8 * v2 + 32);
  }

  __break(1u);
  return result;
}

uint64_t sub_222778A34()
{
  swift_beginAccess();
  v2 = *(v1 + 24);
  if (!(v2 >> 62))
  {
    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!sub_22279EFA0())
  {
    goto LABEL_15;
  }

LABEL_3:
  v0 = *(v1 + 24);
  if (!(v0 >> 62))
  {
    result = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_16:
  result = sub_22279EFA0();
  if (!result)
  {
    goto LABEL_17;
  }

LABEL_5:
  v1 = result - 1;
  if (__OFSUB__(result, 1))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if ((v0 & 0xC000000000000001) == 0)
  {
    if ((v1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v1 < *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v4 = *(v0 + 8 * v1 + 32);
      goto LABEL_10;
    }

    __break(1u);
    return result;
  }

LABEL_19:

  v4 = MEMORY[0x223DC00C0](v1, v0);

LABEL_10:
  if ([v4 type] == 11)
  {

    return 1;
  }

  else
  {
    v5 = [v4 type];

    return v5 == 12;
  }
}

uint64_t *sub_222778B70(void *a1)
{
  if ([a1 type] == 3)
  {
    v2 = [a1 string];
    if (v2)
    {
      v3 = v2;
      v4 = sub_22279ECB0();
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v5 = sub_22279EEB0();
    swift_allocError();
    v7 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450);
    *v7 = MEMORY[0x277D837D0];
    swift_beginAccess();

    v8 = [a1 description];
    v9 = sub_22279ECB0();
    v11 = v10;

    v13[0] = v9;
    v13[1] = v11;
    MEMORY[0x223DBFF30](0x20746F6E20736920, 0xEA00000000002061);
    v4 = v13;
    MEMORY[0x223DBFF30](0x676E69727453, 0xE600000000000000);
    sub_22279EE90();
    (*(*(v5 - 8) + 104))(v7, *MEMORY[0x277D84160], v5);
    swift_willThrow();
  }

  return v4;
}

void sub_222778D40(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = sub_22279EE00();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - v10;
  v12 = sub_222778824(a1);
  if (!v4)
  {
    v13 = v12;
    sub_2227767D8(v12, a1, a2, a3, v11);

    v14 = *(a2 - 8);
    if ((*(v14 + 48))(v11, 1, a2) == 1)
    {
      __break(1u);
    }

    else
    {
      (*(v14 + 32))(a4, v11, a2);
    }
  }
}

uint64_t sub_222778F04()
{
  v2 = sub_222776FA4();
  if (!v1)
  {
    v3 = v2;
    v0 = sub_2227818D0(v2);
  }

  return v0 & 1;
}

uint64_t *sub_222778F54()
{
  v2 = sub_222777164();
  if (!v1)
  {
    v3 = v2;
    v0 = sub_222778B70(v2);
  }

  return v0;
}

double sub_222778FAC()
{
  v2 = sub_222777324();
  if (!v0)
  {
    v3 = v2;
    sub_222781A68(v2);
    v1 = v4;
  }

  return v1;
}

float sub_222778FFC()
{
  v2 = sub_2227774E4();
  if (!v0)
  {
    v3 = v2;
    sub_222781C30(v2);
    v1 = v4;
  }

  return v1;
}

id sub_22277904C()
{
  v2 = sub_2227776A4();
  if (!v1)
  {
    v3 = v2;
    v0 = sub_2227824E4(v2, MEMORY[0x277D83B88], 7630409, 0xE300000000000000, &selRef_integerValue);
  }

  return v0;
}

id sub_222779138()
{
  v2 = sub_222777BE4();
  if (!v1)
  {
    v3 = v2;
    v0 = sub_2227824E4(v2, MEMORY[0x277D849A8], 0x3233746E49, 0xE500000000000000, &selRef_intValue);
  }

  return v0;
}

id sub_2227791A8()
{
  v2 = sub_222777DA4();
  if (!v1)
  {
    v3 = v2;
    v0 = sub_2227824E4(v2, MEMORY[0x277D84A28], 0x3436746E49, 0xE500000000000000, &selRef_longLongValue);
  }

  return v0;
}

id sub_222779230()
{
  v2 = sub_222777F64();
  if (!v1)
  {
    v3 = v2;
    v0 = sub_2227824E4(v2, MEMORY[0x277D83E88], 1953384789, 0xE400000000000000, &selRef_unsignedIntegerValue);
  }

  return v0;
}

uint64_t (*sub_2227792DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t (*a4)(void)))(void)
{
  v6 = a3(a1, a2);
  if (!v4)
  {
    v7 = v6;
    a4 = a4();
  }

  return a4;
}

uint64_t (*sub_222779378(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t (*a4)(void)))(void)
{
  v6 = a3(a1, a2);
  if (!v4)
  {
    v7 = v6;
    a4 = a4();
  }

  return a4;
}

id sub_2227793D4()
{
  v2 = sub_2227784A4();
  if (!v1)
  {
    v3 = v2;
    v0 = sub_2227824E4(v2, MEMORY[0x277D84CC0], 0x3233746E4955, 0xE600000000000000, &selRef_unsignedIntValue);
  }

  return v0;
}

id sub_222779444()
{
  v2 = sub_222778664();
  if (!v1)
  {
    v3 = v2;
    v0 = sub_2227824E4(v2, MEMORY[0x277D84D38], 0x3436746E4955, 0xE600000000000000, &selRef_unsignedLongLongValue);
  }

  return v0;
}

uint64_t sub_2227794F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019E50, &unk_2227A0B30);
  sub_222783AF8();
  v5 = sub_22279ED50();

  return v5;
}

uint64_t sub_2227795AC@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a4@<X8>)
{
  if ([a1 isWholeNumber])
  {
    v7 = [a1 numeric];
    [v7 integerValue];

    return sub_22279F580();
  }

  else
  {
    v9 = [a1 string];
    if (v9)
    {
      v10 = v9;
      sub_22279ECB0();

      return sub_22279F560();
    }

    else
    {
      v11 = *(*(a2 - 8) + 56);

      return v11(a4, 1, 1, a2);
    }
  }
}

BOOL sub_2227796E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_222782C2C(0, qword_280BC4448, off_2784B4108);
  (*(v10 + 16))(v12, a1, a5);
  v14 = sub_222793008(v12, v13, a5, a6);
  v15 = sub_222779804(v14, a3);

  if (v15)
  {
  }

  return v15 != 0;
}

void *sub_222779804(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_22279EFB0();

    if (v4)
    {
      sub_222782C2C(0, qword_280BC4448, off_2784B4108);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_222794F78(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

char *sub_2227798C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v29 = a4;
  v10 = sub_22279EEA0();
  v31 = *(v10 - 8);
  v32 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v35 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a5 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_222782C2C(0, qword_280BC4448, off_2784B4108);
  v17 = *(v13 + 16);
  v30 = a1;
  v17(v15, a1, a5);
  v18 = sub_222793008(v15, v16, a5, a6);
  v19 = sub_222779804(v18, a3);

  if (!v19)
  {
    v33 = 0;
    v34 = 0xE000000000000000;

    sub_22279EE60();
    MEMORY[0x223DBFF30](0xD00000000000001DLL, 0x80000002227A1F80);
    v20 = v30;
    sub_22279F280();
    sub_22279EE90();
    v21 = sub_22279EEB0();
    swift_allocError();
    v19 = v22;
    v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019E48, &qword_2227A0B28) + 48);
    v19[3] = a5;
    v19[4] = a6;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v19);
    v17(boxed_opaque_existential_1Tm, v20, a5);
    v26 = v31;
    v25 = v32;
    v27 = v35;
    (*(v31 + 16))(v19 + v23, v35, v32);
    (*(*(v21 - 8) + 104))(v19, *MEMORY[0x277D84158], v21);
    swift_willThrow();
    (*(v26 + 8))(v27, v25);
  }

  return v19;
}

uint64_t sub_222779BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a5 - 8);
  v14 = MEMORY[0x28223BE20](a1);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v32 - v18;
  v25 = sub_2227798C8(v17, v20, v21, v22, v23, v24);
  if (!v6)
  {
    v34 = v25;
    v36 = a4;
    v37 = 0;
    v33 = *(v13 + 16);
    v33(v19, a1, a5);
    swift_beginAccess();
    v26 = *(a2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 16) = v26;
    v35 = a3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v26 = sub_222789FB0(0, v26[2] + 1, 1, v26);
      *(a2 + 16) = v26;
    }

    v29 = v26[2];
    v28 = v26[3];
    if (v29 >= v28 >> 1)
    {
      v26 = sub_222789FB0((v28 > 1), v29 + 1, 1, v26);
      *(a2 + 16) = v26;
    }

    v33(v16, v19, a5);
    sub_222793174(v29, v16, (a2 + 16), a5, a6);
    (*(v13 + 8))(v19, a5);
    *(a2 + 16) = v26;
    swift_endAccess();
    v30 = v34;
    LOBYTE(a4) = [v34 type] == 11 || objc_msgSend(v30, sel_type) == 12;
    sub_22277A078(a2);
  }

  return a4 & 1;
}

unint64_t sub_222779E24(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a5 - 8);
  v14 = MEMORY[0x28223BE20](a1);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v33 - v18;
  v25 = sub_2227798C8(v17, v20, v21, v22, v23, v24);
  if (!v6)
  {
    v35 = v25;
    v37 = a4;
    v38 = 0;
    v34 = *(v13 + 16);
    v34(v19, a1, a5);
    swift_beginAccess();
    v26 = *(a2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 16) = v26;
    v36 = a3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v26 = sub_222789FB0(0, v26[2] + 1, 1, v26);
      *(a2 + 16) = v26;
    }

    a3 = v26[2];
    v28 = v26[3];
    if (a3 >= v28 >> 1)
    {
      v26 = sub_222789FB0((v28 > 1), a3 + 1, 1, v26);
      *(a2 + 16) = v26;
    }

    v34(v16, v19, a5);
    sub_222793174(a3, v16, (a2 + 16), a5, a6);
    (*(v13 + 8))(v19, a5);
    *(a2 + 16) = v26;
    swift_endAccess();
    v29 = v35;
    v30 = v38;
    v31 = sub_2227818D0(v35);
    if (!v30)
    {
      LOBYTE(a3) = v31;
    }

    sub_22277A078(a2);
  }

  return a3 & 1;
}

uint64_t sub_22277A078(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  if (!v2[2])
  {
    __break(1u);
LABEL_6:
    result = sub_222792F90(v2);
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
    __swift_destroy_boxed_opaque_existential_1Tm(&v2[5 * v4 - 1]);
    v2[2] = v5;
    *(a1 + 16) = v2;
    return swift_endAccess();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t *sub_22277A11C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a5 - 8);
  v14 = MEMORY[0x28223BE20](a1);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v33 - v18;
  v25 = sub_2227798C8(v17, v20, v21, v22, v23, v24);
  if (!v6)
  {
    v35 = v25;
    v37 = a4;
    v38 = 0;
    v34 = *(v13 + 16);
    v34(v19, a1, a5);
    swift_beginAccess();
    v26 = *(a2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 16) = v26;
    v36 = a3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v26 = sub_222789FB0(0, v26[2] + 1, 1, v26);
      *(a2 + 16) = v26;
    }

    a3 = v26[2];
    v28 = v26[3];
    if (a3 >= v28 >> 1)
    {
      v26 = sub_222789FB0((v28 > 1), a3 + 1, 1, v26);
      *(a2 + 16) = v26;
    }

    v34(v16, v19, a5);
    sub_222793174(a3, v16, (a2 + 16), a5, a6);
    (*(v13 + 8))(v19, a5);
    *(a2 + 16) = v26;
    swift_endAccess();
    v29 = v35;
    v30 = v38;
    v31 = sub_222778B70(v35);
    if (!v30)
    {
      a3 = v31;
    }

    sub_22277A078(a2);
  }

  return a3;
}

double sub_22277A378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(a5 - 8);
  v15 = MEMORY[0x28223BE20](a1);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v35 - v19;
  v26 = sub_2227798C8(v18, v21, v22, v23, v24, v25);
  if (!v6)
  {
    v36 = v26;
    v38 = a4;
    v39 = 0;
    v35 = *(v14 + 16);
    v35(v20, a1, a5);
    swift_beginAccess();
    v27 = *(a2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 16) = v27;
    v37 = a3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v27 = sub_222789FB0(0, v27[2] + 1, 1, v27);
      *(a2 + 16) = v27;
    }

    v30 = v27[2];
    v29 = v27[3];
    if (v30 >= v29 >> 1)
    {
      v27 = sub_222789FB0((v29 > 1), v30 + 1, 1, v27);
      *(a2 + 16) = v27;
    }

    v35(v17, v20, a5);
    sub_222793174(v30, v17, (a2 + 16), a5, a6);
    (*(v14 + 8))(v20, a5);
    *(a2 + 16) = v27;
    swift_endAccess();
    v31 = v36;
    v32 = v39;
    sub_222781A68(v36);
    if (!v32)
    {
      v7 = v33;
    }

    sub_22277A078(a2);
  }

  return v7;
}

float sub_22277A5D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(a5 - 8);
  v15 = MEMORY[0x28223BE20](a1);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v35 - v19;
  v26 = sub_2227798C8(v18, v21, v22, v23, v24, v25);
  if (!v6)
  {
    v36 = v26;
    v38 = a4;
    v39 = 0;
    v35 = *(v14 + 16);
    v35(v20, a1, a5);
    swift_beginAccess();
    v27 = *(a2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 16) = v27;
    v37 = a3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v27 = sub_222789FB0(0, v27[2] + 1, 1, v27);
      *(a2 + 16) = v27;
    }

    v30 = v27[2];
    v29 = v27[3];
    if (v30 >= v29 >> 1)
    {
      v27 = sub_222789FB0((v29 > 1), v30 + 1, 1, v27);
      *(a2 + 16) = v27;
    }

    v35(v17, v20, a5);
    sub_222793174(v30, v17, (a2 + 16), a5, a6);
    (*(v14 + 8))(v20, a5);
    *(a2 + 16) = v27;
    swift_endAccess();
    v31 = v36;
    v32 = v39;
    sub_222781C30(v36);
    if (!v32)
    {
      v7 = v33;
    }

    sub_22277A078(a2);
  }

  return v7;
}

char *sub_22277A828(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(char *))
{
  v40 = a7;
  v13 = a1;
  v14 = *(a5 - 8);
  v15 = MEMORY[0x28223BE20](a1);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v35 - v19;
  v26 = sub_2227798C8(v18, v21, v22, v23, v24, v25);
  if (!v7)
  {
    v35 = v14;
    v36 = v26;
    v38 = a4;
    v39 = 0;
    v27 = *(v14 + 16);
    v27(v20, v13, a5);
    swift_beginAccess();
    v13 = *(a2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 16) = v13;
    v37 = a3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = sub_222789FB0(0, *(v13 + 2) + 1, 1, v13);
      *(a2 + 16) = v13;
    }

    v30 = *(v13 + 2);
    v29 = *(v13 + 3);
    if (v30 >= v29 >> 1)
    {
      v13 = sub_222789FB0((v29 > 1), v30 + 1, 1, v13);
      *(a2 + 16) = v13;
    }

    v27(v17, v20, a5);
    sub_222793174(v30, v17, (a2 + 16), a5, a6);
    (*(v35 + 8))(v20, a5);
    *(a2 + 16) = v13;
    swift_endAccess();
    v31 = v36;
    v32 = v39;
    v33 = v40(v36);
    if (!v32)
    {
      v13 = v33;
    }

    sub_22277A078(a2);
  }

  return v13;
}

char *sub_22277AA80(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(char *))
{
  v40 = a7;
  v13 = a1;
  v14 = *(a5 - 8);
  v15 = MEMORY[0x28223BE20](a1);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v35 - v19;
  v26 = sub_2227798C8(v18, v21, v22, v23, v24, v25);
  if (!v7)
  {
    v35 = v14;
    v36 = v26;
    v38 = a4;
    v39 = 0;
    v27 = *(v14 + 16);
    v27(v20, v13, a5);
    swift_beginAccess();
    v13 = *(a2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 16) = v13;
    v37 = a3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = sub_222789FB0(0, *(v13 + 2) + 1, 1, v13);
      *(a2 + 16) = v13;
    }

    v30 = *(v13 + 2);
    v29 = *(v13 + 3);
    if (v30 >= v29 >> 1)
    {
      v13 = sub_222789FB0((v29 > 1), v30 + 1, 1, v13);
      *(a2 + 16) = v13;
    }

    v27(v17, v20, a5);
    sub_222793174(v30, v17, (a2 + 16), a5, a6);
    (*(v35 + 8))(v20, a5);
    *(a2 + 16) = v13;
    swift_endAccess();
    v31 = v36;
    v32 = v39;
    v33 = v40(v36);
    if (!v32)
    {
      v13 = v33;
    }

    sub_22277A078(a2);
  }

  return v13;
}

char *sub_22277ACD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, SEL *a10)
{
  v49 = a8;
  v48 = a7;
  v17 = *(a5 - 8);
  v18 = MEMORY[0x28223BE20](a1);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v40 - v22;
  v29 = sub_2227798C8(v21, v24, v25, v26, v27, v28);
  if (!v10)
  {
    v43 = v17;
    v44 = v29;
    v46 = a4;
    v47 = 0;
    v41 = a9;
    v42 = a10;
    v40 = *(v17 + 16);
    v40(v23, a1, a5);
    swift_beginAccess();
    v30 = *(a2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 16) = v30;
    v45 = a3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v30 = sub_222789FB0(0, v30[2] + 1, 1, v30);
      *(a2 + 16) = v30;
    }

    v32 = a6;
    v34 = v30[2];
    v33 = v30[3];
    v35 = v48;
    if (v34 >= v33 >> 1)
    {
      v30 = sub_222789FB0((v33 > 1), v34 + 1, 1, v30);
      *(a2 + 16) = v30;
    }

    v40(v20, v23, a5);
    sub_222793174(v34, v20, (a2 + 16), a5, v32);
    (*(v43 + 8))(v23, a5);
    *(a2 + 16) = v30;
    swift_endAccess();
    v36 = v44;
    v37 = v47;
    v38 = sub_2227824E4(v44, v35, v49, v41, v42);
    if (!v37)
    {
      v20 = v38;
    }

    sub_22277A078(a2);
  }

  return v20;
}

void sub_22277AF50(uint64_t a1@<X0>, void (*a2)(void, void, void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v49 = a7;
  v50 = a1;
  v46 = a9;
  v16 = sub_22279EE00();
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = v41 - v18;
  v51 = *(a6 - 8);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = v41 - v23;
  v47 = a3;
  v48 = a2;
  v25 = v52;
  v26 = sub_2227798C8(a2, a3, a4, a5, a6, a8);
  if (!v25)
  {
    v43 = 0;
    v44 = v22;
    v52 = v26;
    v41[0] = v19;
    v41[1] = a4;
    v41[2] = a5;
    v42 = a8;
    v45 = a10;
    v27 = v48;
    v48 = *(v51 + 16);
    v48(v24, v27, a6);
    v28 = v47;
    swift_beginAccess();
    v29 = *(v28 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v28 + 16) = v29;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v29 = sub_222789FB0(0, v29[2] + 1, 1, v29);
      *(v28 + 16) = v29;
    }

    v31 = v41[0];
    v32 = v50;
    v34 = v29[2];
    v33 = v29[3];
    v35 = v44;
    if (v34 >= v33 >> 1)
    {
      v29 = sub_222789FB0((v33 > 1), v34 + 1, 1, v29);
      v35 = v44;
      *(v28 + 16) = v29;
    }

    v48(v35, v24, a6);
    sub_222793174(v34, v35, (v28 + 16), a6, v42);
    (*(v51 + 8))(v24, a6);
    *(v28 + 16) = v29;
    swift_endAccess();
    v36 = v52;
    v37 = v32;
    v38 = v49;
    v39 = v43;
    sub_2227767D8(v52, v37, v49, v45, v31);
    if (v39)
    {
      sub_22277A078(v28);
    }

    else
    {
      v40 = *(v38 - 8);
      if ((*(v40 + 48))(v31, 1, v38) == 1)
      {
        __break(1u);
      }

      else
      {
        (*(v40 + 32))(v46, v31, v38);
        sub_22277A078(v28);
      }
    }
  }
}

void sub_22277B2FC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v62 = a7;
  v63 = a9;
  v64 = a1;
  v69 = *(a6 - 8);
  v16 = MEMORY[0x28223BE20](a1);
  v66 = v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = (v57 - v18);
  v20 = sub_22279EEA0();
  v65 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = a3;
  v68 = a2;
  v23 = v73;
  v24 = sub_2227798C8(a2, a3, a4, a5, a6, a8);
  if (!v23)
  {
    v73 = v19;
    v58 = v22;
    v59 = v20;
    v25 = v67;
    v57[1] = a4;
    v60 = a5;
    v61 = a8;
    v57[2] = 0;
    v26 = v24;
    if ([v24 type] == 5)
    {
      v65 = v26;
      v27 = *(v69 + 16);
      v27(v73, v68, a6);
      v28 = v25;
      swift_beginAccess();
      v29 = *(v25 + 16);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v28 + 16) = v29;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v29 = sub_222789FB0(0, v29[2] + 1, 1, v29);
        *(v28 + 16) = v29;
      }

      v32 = v29[2];
      v31 = v29[3];
      v33 = v69;
      v34 = v73;
      v35 = v66;
      if (v32 >= v31 >> 1)
      {
        v56 = sub_222789FB0((v31 > 1), v32 + 1, 1, v29);
        v34 = v73;
        v29 = v56;
        v35 = v66;
        *(v28 + 16) = v56;
      }

      v27(v35, v34, a6);
      v73 = v27;
      v36 = v61;
      sub_222793174(v32, v35, (v28 + 16), a6, v61);
      (*(v33 + 8))(v34, a6);
      *(v28 + 16) = v29;
      swift_endAccess();
      v37 = [v65 dictionary];
      if (v37)
      {
        v38 = v37;
        sub_222782C2C(0, qword_280BC4448, off_2784B4108);
        sub_222782704(&qword_280BC4440, qword_280BC4448, off_2784B4108);
        v39 = sub_22279EC60();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019E38, &qword_2227A0B18);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2227A0440;
        *(inited + 56) = a6;
        *(inited + 64) = v36;
        boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((inited + 32));
        v73(boxed_opaque_existential_1Tm, v68, a6);
        v70 = v60;

        sub_222780FE4(inited);
        v42 = v70;
        v70 = v28;
        v71 = v39;
        v72 = v42;
        type metadata accessor for _CBORDecoderKeyedContainer(0, v62, a10, v43);
        swift_getWitnessTable();
        sub_22279F050();
        sub_22277A078(v28);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      v70 = 0;
      v71 = 0xE000000000000000;
      v44 = v61;

      v45 = v68;
      v46 = a6;
      sub_22279F280();
      MEMORY[0x223DBFF30](0x20746F6E20736920, 0xEA00000000002061);
      v47 = sub_22279F5B0();
      MEMORY[0x223DBFF30](v47);

      v48 = v58;
      sub_22279EE90();
      v49 = sub_22279EEB0();
      swift_allocError();
      v51 = v50;
      v52 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019E48, &qword_2227A0B28) + 48);
      v51[3] = v46;
      v51[4] = v44;
      v53 = __swift_allocate_boxed_opaque_existential_1Tm(v51);
      (*(v69 + 16))(v53, v45, v46);
      v54 = v65;
      v55 = v59;
      (*(v65 + 2))(v51 + v52, v48, v59);
      (*(*(v49 - 8) + 104))(v51, *MEMORY[0x277D84158], v49);
      swift_willThrow();

      (*(v54 + 1))(v48, v55);
    }
  }
}

void sub_22277B910(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v54 = a7;
  v58 = *(a5 - 8);
  v13 = MEMORY[0x28223BE20](a1);
  v55 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v49 - v15;
  v17 = sub_22279EEA0();
  v56 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = a1;
  v20 = a1;
  v21 = a2;
  v22 = v61;
  v23 = sub_2227798C8(v20, a2, a3, a4, a5, a6);
  if (!v22)
  {
    v61 = v16;
    v50 = v19;
    v51 = v17;
    v24 = v57;
    v52 = a4;
    v25 = v23;
    v26 = [v23 type];
    v53 = v25;
    if (v26 == 4)
    {
      v27 = *(v58 + 16);
      v27(v61, v24, a5);
      swift_beginAccess();
      v28 = *(a2 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a2 + 16) = v28;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v28 = sub_222789FB0(0, v28[2] + 1, 1, v28);
        *(a2 + 16) = v28;
      }

      v30 = v55;
      v32 = v28[2];
      v31 = v28[3];
      v33 = v61;
      if (v32 >= v31 >> 1)
      {
        v28 = sub_222789FB0((v31 > 1), v32 + 1, 1, v28);
        *(v21 + 16) = v28;
      }

      v27(v30, v33, a5);
      sub_222793174(v32, v30, (v21 + 16), a5, a6);
      (*(v58 + 8))(v33, a5);
      *(v21 + 16) = v28;
      swift_endAccess();
      v34 = v53;
      v35 = [v53 array];
      if (v35)
      {
        v36 = v35;
        sub_222782C2C(0, qword_280BC4448, off_2784B4108);
        v37 = sub_22279ED80();

        v38 = *(v21 + 16);
        v39 = v54;
        v54[3] = &type metadata for _CBORDecoderUnkeyedContainer;
        v39[4] = sub_2227826B0();
        v40 = swift_allocObject();
        *v39 = v40;
        v40[2] = v38;
        v40[3] = 0;
        v40[4] = v21;
        v40[5] = v37;

        sub_22277A078(v21);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      v59 = 0;
      v60 = 0xE000000000000000;

      sub_22279EE60();
      sub_22279F280();
      MEMORY[0x223DBFF30](0xD00000000000001BLL, 0x80000002227A1F60);
      v41 = v50;
      sub_22279EE90();
      v42 = sub_22279EEB0();
      swift_allocError();
      v44 = v43;
      v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019E48, &qword_2227A0B28) + 48);
      v44[3] = a5;
      v44[4] = a6;
      boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v44);
      (*(v58 + 16))(boxed_opaque_existential_1Tm, v24, a5);
      v47 = v56;
      v48 = v51;
      (*(v56 + 16))(v44 + v45, v41, v51);
      (*(*(v42 - 8) + 104))(v44, *MEMORY[0x277D84158], v42);
      swift_willThrow();

      (*(v47 + 8))(v41, v48);
    }
  }
}

uint64_t sub_22277BE1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v36[2] = a5;
  v36[3] = a6;
  v36[1] = a4;
  sub_222783A04(a1, v37);
  swift_beginAccess();
  v11 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 16) = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_222789FB0(0, v11[2] + 1, 1, v11);
    *(a2 + 16) = v11;
  }

  v14 = v11[2];
  v13 = v11[3];
  v36[0] = a3;
  if (v14 >= v13 >> 1)
  {
    v11 = sub_222789FB0((v13 > 1), v14 + 1, 1, v11);
    *(a2 + 16) = v11;
  }

  v15 = v38;
  v16 = v39;
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v37, v38);
  MEMORY[0x28223BE20](v17);
  v19 = v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19);
  sub_222793174(v14, v19, (a2 + 16), v15, v16);
  __swift_destroy_boxed_opaque_existential_1Tm(v37);
  *(a2 + 16) = v11;
  swift_endAccess();
  v21 = sub_222782C2C(0, qword_280BC4448, off_2784B4108);
  sub_222783A04(a1, v37);
  v22 = v38;
  v23 = v39;
  v24 = __swift_mutable_project_boxed_opaque_existential_1(v37, v38);
  MEMORY[0x28223BE20](v24);
  v26 = v36 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v27 + 16))(v26);
  v28 = sub_222793008(v26, v21, v22, v23);
  __swift_destroy_boxed_opaque_existential_1Tm(v37);
  v29 = sub_222779804(v28, v36[0]);

  if (!v29)
  {
    v29 = [objc_opt_self() cborNil];
  }

  v30 = *(a2 + 16);
  v31 = *(a2 + 32);
  v32 = type metadata accessor for _CBORDecoder();
  swift_allocObject();
  v33 = v29;

  v34 = sub_2227816A8(v33, v30, v31);

  a7[3] = v32;
  a7[4] = sub_22278276C(&qword_27D019D90, &unk_2227A05F8);

  *a7 = v34;
  return sub_22277A078(a2);
}

uint64_t sub_22277C198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  result = sub_22278B4D0(0x7265707573, 0xE500000000000000);
  if (v12)
  {
    v15 = result;
    v16 = v12;
    v17 = v13;
    v18 = v14;
    v21[3] = &type metadata for CBORCodingKey;
    v21[4] = sub_222782F30();
    v19 = swift_allocObject();
    v21[0] = v19;
    *(v19 + 16) = v15;
    *(v19 + 24) = v16;
    *(v19 + 32) = v17;
    *(v19 + 40) = v18 & 1;
    sub_22277BE1C(v21, a1, a2, a3, a4, a5, a6);
    return __swift_destroy_boxed_opaque_existential_1Tm(v21);
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_22277C290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  result = sub_2227798C8(a1, a2, a3, a4, a5, a6);
  if (!v7)
  {

    v17[3] = a5;
    v17[4] = a6;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v17);
    (*(*(a5 - 8) + 16))(boxed_opaque_existential_1Tm, a1, a5);
    sub_22277BE1C(v17, a2, a3, a4, a5, a6, a7);
    return __swift_destroy_boxed_opaque_existential_1Tm(v17);
  }

  return result;
}

uint64_t sub_22277C7C4()
{
  result = sub_22279F320();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_22277C814()
{
  result = sub_22279F330();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_22277C8BC()
{
  result = sub_22279F360();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_22277C90C()
{
  result = sub_22279F340();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_22277CA4C()
{
  result = sub_22279F370();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_22277CA9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(a1, a2, a3);
  if (v4)
  {
    return v6;
  }

  return result;
}

void sub_22277CC14()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  if (!(v2 >> 62))
  {
    if (v1 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_17:
    v10 = sub_22279EEB0();
    swift_allocError();
    v12 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450);
    *v12 = MEMORY[0x277D839B0];

    sub_22279EE90();
    (*(*(v10 - 8) + 104))(v12, *MEMORY[0x277D84170], v10);
    swift_willThrow();
    return;
  }

  if (v1 >= sub_22279EFA0())
  {
    goto LABEL_17;
  }

LABEL_3:
  v3 = v2 + 8 * v1;
  if ((v2 & 0xC000000000000001) == 0)
  {
    if (v1 < 0)
    {
      __break(1u);
    }

    else if (v1 < *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v4 = *(v3 + 32);
      goto LABEL_7;
    }

    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v4 = MEMORY[0x223DC00C0](v1, v2);
LABEL_7:
  v5 = v4;
  v6 = [v4 type];

  if (v6 == 11)
  {
LABEL_14:
    *(v0 + 8) = v1 + 1;
    return;
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x223DC00C0](v1, v2);
    goto LABEL_13;
  }

  if (v1 < 0)
  {
    goto LABEL_21;
  }

  if (v1 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_22:
    __break(1u);
    return;
  }

  v7 = *(v3 + 32);
LABEL_13:
  v8 = v7;
  v9 = [v7 type];

  if (v9 == 12)
  {
    goto LABEL_14;
  }
}

uint64_t *sub_22277CE1C()
{
  v3 = *v0;
  v2 = v0[1];
  v4 = v0[3];
  if (!(v4 >> 62))
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2 < result)
    {
      goto LABEL_3;
    }

LABEL_10:
    v10 = sub_22279EEB0();
    swift_allocError();
    v12 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450);
    *v12 = MEMORY[0x277D839B0];

    sub_22279EE90();
    (*(*(v10 - 8) + 104))(v12, *MEMORY[0x277D84170], v10);
    swift_willThrow();
    return v3;
  }

  result = sub_22279EFA0();
  if (v2 >= result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = v1;
    v7 = v0;
    v8 = MEMORY[0x223DC00C0](v2, v4);
LABEL_7:
    v9 = v8;
    v3 = sub_222778B70(v8);

    if (!v6)
    {
      v7[1] = (v2 + 1);
    }

    return v3;
  }

  if (v2 < 0)
  {
    __break(1u);
  }

  else if (v2 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = v1;
    v7 = v0;
    v8 = v4[v2 + 4];
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

void sub_22277CFDC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a4;
  v28 = a3;
  v7 = sub_22279EE00();
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v13 = &v25 - v12;
  v14 = *(v4 + 8);
  v15 = *(v4 + 24);
  if (!(v15 >> 62))
  {
    if (v14 < *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_11:
    v22 = sub_22279EEB0();
    swift_allocError();
    v24 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450);
    *v24 = MEMORY[0x277D839B0];

    sub_22279EE90();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84170], v22);
    swift_willThrow();
    return;
  }

  v26 = v11;
  v21 = sub_22279EFA0();
  v11 = v26;
  if (v14 >= v21)
  {
    goto LABEL_11;
  }

LABEL_3:
  v25 = v4;
  v26 = v11;
  if ((v15 & 0xC000000000000001) == 0)
  {
    if (v14 < 0)
    {
      __break(1u);
    }

    else if (v14 < *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v16 = *(v15 + 8 * v14 + 32);
      goto LABEL_7;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  v16 = MEMORY[0x223DC00C0](v14, v15);
LABEL_7:
  v17 = v16;
  v18 = v29;
  sub_2227767D8(v16, a1, a2, v28, v13);

  if (!v18)
  {
    v19 = v26;
    *(v25 + 8) = v14 + 1;
    (*(v19 + 16))(v10, v13, v7);
    v20 = *(a2 - 8);
    if ((*(v20 + 48))(v10, 1, a2) != 1)
    {
      (*(v19 + 8))(v13, v7);
      (*(v20 + 32))(v27, v10, a2);
      return;
    }

    goto LABEL_16;
  }
}

uint64_t sub_22277D2F4@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v61 = a3;
  v55 = a1;
  v7 = sub_22279EEA0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v4;
  v13 = v4[1];
  v14 = v4[3];
  if (!(v14 >> 62))
  {
    if (v13 < *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_14:
    v47 = sub_22279EEB0();
    swift_allocError();
    v49 = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450);
    *v49 = MEMORY[0x277D839B0];

    sub_22279EE90();
    (*(*(v47 - 8) + 104))(v49, *MEMORY[0x277D84170], v47);
    return swift_willThrow();
  }

  v54 = a4;
  v44 = a2;
  v45 = v9;
  v46 = sub_22279EFA0();
  v9 = v45;
  a2 = v44;
  a4 = v54;
  if (v13 >= v46)
  {
    goto LABEL_14;
  }

LABEL_3:
  v53 = v9;
  v54 = a4;
  if ((v14 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x223DC00C0](v13, v14);
LABEL_7:
    v16 = v15;
    v17 = [v15 dictionary];

    if (!v17)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019E38, &qword_2227A0B18);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2227A0440;
      *&v56 = 0x3A6D657449;
      *(&v56 + 1) = 0xE500000000000000;
      v60 = v13;

      v29 = sub_22279F090();
      v30 = v8;
      MEMORY[0x223DBFF30](v29);

      v31 = v56;
      *(inited + 56) = &type metadata for CBORCodingKey;
      *(inited + 64) = sub_222782F30();
      v32 = swift_allocObject();
      *(inited + 32) = v32;
      *(v32 + 16) = v31;
      *(v32 + 32) = 0;
      *(v32 + 40) = 1;
      *&v56 = v12;
      sub_222780FE4(inited);
      *&v56 = 0;
      *(&v56 + 1) = 0xE000000000000000;
      sub_22279EE60();
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019E40, &qword_2227A0B20);
      v34 = MEMORY[0x223DBFFE0](v12, v33);
      v36 = v35;

      *&v56 = v34;
      *(&v56 + 1) = v36;
      MEMORY[0x223DBFF30](0x206D65746920, 0xE600000000000000);
      v60 = v13;
      v37 = sub_22279F090();
      MEMORY[0x223DBFF30](v37);

      MEMORY[0x223DBFF30](0x20746F6E20736920, 0xEA00000000002061);
      v38 = sub_22279F5B0();
      MEMORY[0x223DBFF30](v38);

      sub_22279EE90();
      v39 = sub_22279EEB0();
      swift_allocError();
      v41 = v40;
      v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450) + 48);
      *v41 = MEMORY[0x277D839B0];
      v43 = v53;
      (*(v30 + 16))(&v41[v42], v11, v53);
      (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D84160], v39);
      swift_willThrow();
      return (*(v30 + 8))(v11, v43);
    }

    v55 = a2;
    sub_222782C2C(0, qword_280BC4448, off_2784B4108);
    sub_222782704(&qword_280BC4440, qword_280BC4448, off_2784B4108);
    v53 = sub_22279EC60();

    a2 = v4;
    v11 = v4[2];
    *&v56 = 0x3A6D657449;
    *(&v56 + 1) = 0xE500000000000000;
    v60 = v13;
    v18 = sub_22279F090();
    MEMORY[0x223DBFF30](v18);

    v51 = *(&v56 + 1);
    v52 = v56;
    swift_beginAccess();
    a4 = *(v11 + 2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v11 + 2) = a4;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

  if (v13 < 0)
  {
    __break(1u);
  }

  else if (v13 < *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v15 = *(v14 + 8 * v13 + 32);
    goto LABEL_7;
  }

  __break(1u);
LABEL_18:
  a4 = sub_222789FB0(0, a4[2] + 1, 1, a4);
  *(v11 + 2) = a4;
LABEL_9:
  v21 = a4[2];
  v20 = a4[3];
  v22 = a2;
  if (v21 >= v20 >> 1)
  {
    a4 = sub_222789FB0((v20 > 1), v21 + 1, 1, a4);
  }

  v23 = v55;
  v58 = &type metadata for CBORCodingKey;
  v59 = sub_222782F30();
  v24 = swift_allocObject();
  *&v56 = v24;
  v25 = v51;
  *(v24 + 16) = v52;
  *(v24 + 24) = v25;
  *(v24 + 32) = 0;
  *(v24 + 40) = 1;
  a4[2] = v21 + 1;
  sub_2227759E4(&v56, &a4[5 * v21 + 4]);
  *(v11 + 2) = a4;
  swift_endAccess();
  v22[1] = v13 + 1;
  *&v56 = v11;
  *(&v56 + 1) = v53;
  v57 = v12;
  type metadata accessor for _CBORDecoderKeyedContainer(0, v23, v61, v26);

  swift_getWitnessTable();
  sub_22279F050();
  return sub_22277E024(v22);
}

uint64_t sub_22277D9D8@<X0>(void *a1@<X8>)
{
  v3 = sub_22279EEA0();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v8 = *(v1 + 1);
  v10 = *(v1 + 3);
  if (!(v10 >> 62))
  {
    if (v8 < *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_14:
    v39 = sub_22279EEB0();
    swift_allocError();
    v41 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450);
    *v41 = MEMORY[0x277D839B0];

    sub_22279EE90();
    (*(*(v39 - 8) + 104))(v41, *MEMORY[0x277D84170], v39);
    return swift_willThrow();
  }

  v37 = v5;
  v38 = sub_22279EFA0();
  v5 = v37;
  if (v8 >= v38)
  {
    goto LABEL_14;
  }

LABEL_3:
  v49 = v5;
  if ((v10 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x223DC00C0](v8, v10);
LABEL_7:
    v12 = v11;
    v13 = [v11 array];

    if (!v13)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019E38, &qword_2227A0B18);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2227A0440;
      *&v45 = 0x3A6D657449;
      *(&v45 + 1) = 0xE500000000000000;
      v48 = v8;

      v24 = sub_22279F090();
      MEMORY[0x223DBFF30](v24);

      v25 = v45;
      *(inited + 56) = &type metadata for CBORCodingKey;
      *(inited + 64) = sub_222782F30();
      v26 = swift_allocObject();
      *(inited + 32) = v26;
      *(v26 + 16) = v25;
      *(v26 + 32) = 0;
      *(v26 + 40) = 1;
      *&v45 = v9;
      sub_222780FE4(inited);
      *&v45 = 0;
      *(&v45 + 1) = 0xE000000000000000;
      sub_22279EE60();
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019E40, &qword_2227A0B20);
      v28 = MEMORY[0x223DBFFE0](v9, v27);
      v30 = v29;

      *&v45 = v28;
      *(&v45 + 1) = v30;
      MEMORY[0x223DBFF30](0x206D65746920, 0xE600000000000000);
      v48 = v8;
      v31 = sub_22279F090();
      MEMORY[0x223DBFF30](v31);

      MEMORY[0x223DBFF30](0xD00000000000001BLL, 0x80000002227A1F60);
      sub_22279EE90();
      v32 = sub_22279EEB0();
      swift_allocError();
      v34 = v33;
      v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450) + 48);
      *v34 = MEMORY[0x277D839B0];
      v36 = v49;
      (*(v4 + 16))(&v34[v35], v7, v49);
      (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277D84160], v32);
      swift_willThrow();
      return (*(v4 + 8))(v7, v36);
    }

    sub_222782C2C(0, qword_280BC4448, off_2784B4108);
    v49 = sub_22279ED80();

    v7 = v1;
    v9 = *(v1 + 2);
    *&v45 = 0x3A6D657449;
    *(&v45 + 1) = 0xE500000000000000;
    v48 = v8;
    v14 = sub_22279F090();
    MEMORY[0x223DBFF30](v14);

    v43 = *(&v45 + 1);
    v44 = v45;
    swift_beginAccess();
    v1 = *(v9 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v9 + 16) = v1;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_9;
    }

    goto LABEL_18;
  }

  if (v8 < 0)
  {
    __break(1u);
  }

  else if (v8 < *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(v10 + 8 * v8 + 32);
    goto LABEL_7;
  }

  __break(1u);
LABEL_18:
  v1 = sub_222789FB0(0, *(v1 + 2) + 1, 1, v1);
  *(v9 + 16) = v1;
LABEL_9:
  v17 = *(v1 + 2);
  v16 = *(v1 + 3);
  if (v17 >= v16 >> 1)
  {
    v1 = sub_222789FB0((v16 > 1), v17 + 1, 1, v1);
  }

  v46 = &type metadata for CBORCodingKey;
  v47 = sub_222782F30();
  v18 = swift_allocObject();
  *&v45 = v18;
  v19 = v43;
  *(v18 + 16) = v44;
  *(v18 + 24) = v19;
  *(v18 + 32) = 0;
  *(v18 + 40) = 1;
  *(v1 + 2) = v17 + 1;
  sub_2227759E4(&v45, &v1[40 * v17 + 32]);
  *(v9 + 16) = v1;
  swift_endAccess();
  *(v7 + 1) = v8 + 1;
  a1[3] = &type metadata for _CBORDecoderUnkeyedContainer;
  a1[4] = sub_2227826B0();
  v20 = swift_allocObject();
  *a1 = v20;
  v20[2] = v1;
  v20[3] = 0;
  v21 = v49;
  v20[4] = v9;
  v20[5] = v21;

  return sub_22277E024(v7);
}

uint64_t sub_22277E024(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_beginAccess();
  v2 = *(v1 + 16);
  if (!v2[2])
  {
    __break(1u);
LABEL_6:
    result = sub_222792F90(v2);
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
    __swift_destroy_boxed_opaque_existential_1Tm(&v2[5 * v4 - 1]);
    v2[2] = v5;
    *(v1 + 16) = v2;
    swift_endAccess();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_22277E0D8@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1;
  v5 = v1[1];
  v6 = v1[3];
  if (v6 >> 62)
  {
    if (v5 < sub_22279EFA0())
    {
      goto LABEL_3;
    }

LABEL_13:
    v22 = sub_22279EEB0();
    swift_allocError();
    v24 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450);
    *v24 = MEMORY[0x277D839B0];

    sub_22279EE90();
    (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84170], v22);
    return swift_willThrow();
  }

  if (v5 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_13;
  }

LABEL_3:
  v25 = a1;
  v30 = v2;
  v7 = v1[2];
  *&v26 = 0x3A6D657449;
  *(&v26 + 1) = 0xE500000000000000;
  v29 = v5;
  v8 = sub_22279F090();
  MEMORY[0x223DBFF30](v8);

  swift_beginAccess();
  v9 = *(v7 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v7 + 16) = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_222789FB0(0, v9[2] + 1, 1, v9);
    *(v7 + 16) = v9;
  }

  v12 = v9[2];
  v11 = v9[3];
  if (v12 >= v11 >> 1)
  {
    v9 = sub_222789FB0((v11 > 1), v12 + 1, 1, v9);
  }

  v27 = &type metadata for CBORCodingKey;
  v28 = sub_222782F30();
  v13 = swift_allocObject();
  *&v26 = v13;
  *(v13 + 16) = 0x3A6D657449;
  *(v13 + 24) = 0xE500000000000000;
  *(v13 + 32) = 0;
  *(v13 + 40) = 1;
  v9[2] = v12 + 1;
  sub_2227759E4(&v26, &v9[5 * v12 + 4]);
  *(v7 + 16) = v9;
  result = swift_endAccess();
  if ((v6 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x223DC00C0](v5, v6);
    goto LABEL_11;
  }

  if (v5 < 0)
  {
    __break(1u);
  }

  else if (v5 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v15 = *(v6 + 8 * v5 + 32);
LABEL_11:
    v16 = v15;
    *(v3 + 8) = v5 + 1;
    v17 = *(v7 + 16);
    v18 = *(v7 + 32);
    v19 = type metadata accessor for _CBORDecoder();
    swift_allocObject();
    v20 = v16;

    v21 = sub_2227816A8(v20, v17, v18);

    v25[3] = v19;
    v25[4] = sub_22278276C(&qword_27D019D90, &unk_2227A05F8);

    *v25 = v21;
    return sub_22277E024(v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_22277E440()
{
  v1 = *(v0 + 24);
  if (v1 >> 62)
  {
    return sub_22279EFA0();
  }

  else
  {
    return *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

BOOL sub_22277E480()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  if (v2 >> 62)
  {
    v3 = sub_22279EFA0();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v1 >= v3;
}

uint64_t sub_22277E7C8()
{
  result = sub_22279F0C0();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_22277E818()
{
  result = sub_22279F0D0();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_22277E8C0()
{
  result = sub_22279F100();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_22277E910()
{
  result = sub_22279F0E0();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_22277EA50()
{
  result = sub_22279F110();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_22277EAA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = a3(a1, a2);
  if (v3)
  {
    return v5;
  }

  return result;
}

uint64_t sub_22277EB40@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22279EC40();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (([a1 isDate] & 1) != 0 && (v8 = objc_msgSend(a1, sel_date)) != 0)
  {
    v9 = v8;
    sub_22279EC30();

    (*(v5 + 32))(a2, v7, v4);
    return (*(v5 + 56))(a2, 0, 1, v4);
  }

  else
  {
    v11 = sub_22279EEB0();
    swift_allocError();
    v13 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450);
    *v13 = v4;
    swift_beginAccess();

    v14 = [a1 description];
    v15 = sub_22279ECB0();
    v17 = v16;

    v18[1] = v15;
    v18[2] = v17;
    MEMORY[0x223DBFF30](0x20746F6E20736920, 0xEA00000000002061);
    MEMORY[0x223DBFF30](1702125892, 0xE400000000000000);
    sub_22279EE90();
    (*(*(v11 - 8) + 104))(v13, *MEMORY[0x277D84160], v11);
    return swift_willThrow();
  }
}

uint64_t sub_22277EE1C(void *a1)
{
  if ([a1 type] == 2)
  {
    v2 = [a1 data];
    if (v2)
    {
      v3 = v2;
      v4 = sub_22279EC10();

      return v4;
    }

    v6 = sub_22279EEB0();
    swift_allocError();
    v8 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450);
    *v8 = MEMORY[0x277CC9318];
    swift_beginAccess();

    sub_22279EE90();
    v10 = MEMORY[0x277D84170];
  }

  else
  {
    v6 = sub_22279EEB0();
    swift_allocError();
    v8 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450);
    *v8 = MEMORY[0x277CC9318];
    swift_beginAccess();

    v9 = [a1 description];
    sub_22279ECB0();

    MEMORY[0x223DBFF30](0x20746F6E20736920, 0xEA00000000002061);
    MEMORY[0x223DBFF30](1635017028, 0xE400000000000000);
    sub_22279EE90();
    v10 = MEMORY[0x277D84160];
  }

  (*(*(v6 - 8) + 104))(v8, *v10, v6);
  return swift_willThrow();
}

id sub_22277F070@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D80, &qword_2227A0660);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v36 - v11;
  v13 = MEMORY[0x277CC9318];
  if (a2 == MEMORY[0x277CC9318] || sub_222782C2C(0, &qword_280BC4438, 0x277CBEA90) == a2)
  {
    result = sub_22277EE1C(a1);
    if (!v5)
    {
      if (v16 >> 60 == 15)
      {
        *a4 = 0u;
        *(a4 + 16) = 0u;
      }

      else
      {
        *(a4 + 24) = v13;
        *a4 = result;
        *(a4 + 8) = v16;
      }
    }

    return result;
  }

  v14 = sub_22279EC40();
  if (v14 == a2 || sub_222782C2C(0, &qword_27D019D88, 0x277CBEAA8) == a2)
  {
    result = sub_22277EB40(a1, v12);
    if (!v5)
    {
      v17 = *(v14 - 8);
      if ((*(v17 + 48))(v12, 1, v14) == 1)
      {
        result = sub_222782970(v12, &qword_27D019D80, &qword_2227A0660);
        *a4 = 0u;
        *(a4 + 16) = 0u;
      }

      else
      {
        *(a4 + 24) = v14;
        boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a4);
        return (*(v17 + 32))(boxed_opaque_existential_1Tm, v12, v14);
      }
    }

    return result;
  }

  if (swift_dynamicCastMetatype())
  {
    *(a4 + 24) = &type metadata for CBORCodableWrapper;
    *a4 = a1;
    return a1;
  }

  v18 = swift_conformsToProtocol2();
  if (v18 && a2)
  {
    return sub_22277F568(a1, a2, v18, a4);
  }

  swift_beginAccess();
  v20 = a1;
  v21 = v4;
  MEMORY[0x223DBFFB0]();
  v22 = v4;
  if (*((*(v22 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v22 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22279EDA0();
    v22 = v4;
  }

  sub_22279EDB0();
  swift_endAccess();
  v36[3] = type metadata accessor for _CBORDecoder();
  v36[4] = sub_22278276C(&qword_27D019D90, &unk_2227A05F8);
  v36[0] = v22;
  v38 = a2;
  v39 = a3;
  __swift_allocate_boxed_opaque_existential_1Tm(v37);

  sub_22279EDC0();
  if (!v5)
  {
    goto LABEL_28;
  }

  __swift_deallocate_boxed_opaque_existential_1(v37);
  a4 = v4;
  swift_beginAccess();
  v23 = *(v4 + 24);
  if (v23 >> 62)
  {
    if (sub_22279EFA0())
    {
      goto LABEL_23;
    }

LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_37;
  }

LABEL_23:
  v24 = sub_222792F2C();
  if (v24)
  {
    goto LABEL_34;
  }

  v25 = *(v4 + 24);
  if (v25 >> 62)
  {
    goto LABEL_40;
  }

  v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v27 = __OFSUB__(v26, 1);
  result = (v26 - 1);
  if (!v27)
  {
LABEL_33:
    v24 = sub_222792E9C(result);
    goto LABEL_34;
  }

  while (1)
  {
    __break(1u);
LABEL_28:
    v28 = v38;
    v29 = __swift_project_boxed_opaque_existential_1(v37, v38);
    *(a4 + 24) = v28;
    v30 = __swift_allocate_boxed_opaque_existential_1Tm(a4);
    (*(*(v28 - 8) + 16))(v30, v29, v28);
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    a4 = v21;
    swift_beginAccess();
    v31 = *(v21 + 24);
    if (v31 >> 62)
    {
      break;
    }

    if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_30;
    }

LABEL_39:
    __break(1u);
LABEL_40:
    v34 = sub_22279EFA0();
    v27 = __OFSUB__(v34, 1);
    result = (v34 - 1);
    if (!v27)
    {
      goto LABEL_33;
    }
  }

LABEL_38:
  if (!sub_22279EFA0())
  {
    goto LABEL_39;
  }

LABEL_30:
  v24 = sub_222792F2C();
  if (v24)
  {
LABEL_34:

    return swift_endAccess();
  }

  v32 = *(v21 + 24);
  if (v32 >> 62)
  {
    v35 = sub_22279EFA0();
    v27 = __OFSUB__(v35, 1);
    result = (v35 - 1);
    if (v27)
    {
      goto LABEL_45;
    }

    goto LABEL_33;
  }

  v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v27 = __OFSUB__(v33, 1);
  result = (v33 - 1);
  if (!v27)
  {
    goto LABEL_33;
  }

LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_22277F568@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v9 = sub_22279EEA0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v197 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a1 dictionary];
  if (!v13)
  {
    v25 = sub_22279EEB0();
    v26 = swift_allocError();
    v28 = v27;
    v218 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450) + 48);
    *v28 = a2;
    swift_beginAccess();

    v29 = [a1 description];
    v30 = sub_22279ECB0();
    v32 = v31;

    *&v222 = v30;
    *(&v222 + 1) = v32;
    MEMORY[0x223DBFF30](0x20746F6E20736920, 0xEA00000000002061);
    v33 = sub_22279F5B0();
    MEMORY[0x223DBFF30](v33);

    sub_22279EE90();
    (*(*(v25 - 8) + 104))(v28, *MEMORY[0x277D84160], v25);
    v217 = v26;
    return swift_willThrow();
  }

  v14 = v13;
  v204 = a4;
  v214 = v4;
  v198 = v12;
  v200 = v10;
  v201 = v9;
  v15 = sub_222782C2C(0, qword_280BC4448, off_2784B4108);
  sub_222782704(&qword_280BC4440, qword_280BC4448, off_2784B4108);
  v208 = v15;
  v16 = sub_22279EC60();

  v17 = sub_22278137C(MEMORY[0x277D84F90]);
  v18 = (*(a3 + 8))(a2, a3);
  v212 = v19;
  v213 = v18;
  v207 = (*(a3 + 16))(a2, a3);
  v203 = v20;
  v199 = a2;
  if ((v16 & 0xC000000000000001) != 0)
  {
    v21 = sub_22279EF90();
    v218 = 0;
    v22 = 0;
    v23 = 0;
    v24 = v21 | 0x8000000000000000;
  }

  else
  {
    v35 = -1 << *(v16 + 32);
    v22 = ~v35;
    v36 = *(v16 + 64);
    v218 = v16 + 64;
    v37 = -v35;
    if (v37 < 64)
    {
      v38 = ~(-1 << v37);
    }

    else
    {
      v38 = -1;
    }

    v23 = v38 & v36;
    v24 = v16;
  }

  v205 = v16;

  v39 = 0;
  v40 = (v22 + 64) >> 6;
  v41 = 0x2784B4000uLL;
  v211 = v40;
  v210 = v24;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        if ((v24 & 0x8000000000000000) != 0)
        {
          v49 = sub_22279EFC0();
          if (!v49)
          {
            goto LABEL_138;
          }

          v51 = v50;
          v44 = v39;
          v215 = v17;
          *&v222 = v49;
          swift_dynamicCast();
          v48 = *&v221[0];
          *&v222 = v51;
          swift_dynamicCast();
          v216 = *&v221[0];
          v209 = v39;
          v45 = v23;
          if (!v48)
          {
LABEL_140:
            v17 = v215;
LABEL_138:
            sub_2227828A8(v24);

            *&v221[0] = v17;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D98, &qword_2227A0668);
            v171 = v204;
            result = swift_dynamicCast();
            if ((result & 1) == 0)
            {
              *v171 = 0u;
              v171[1] = 0u;
            }

            return result;
          }
        }

        else
        {
          v42 = v39;
          v43 = v23;
          v44 = v39;
          if (!v23)
          {
            while (1)
            {
              v44 = v42 + 1;
              if (__OFADD__(v42, 1))
              {
                break;
              }

              if (v44 >= v40)
              {
                goto LABEL_138;
              }

              v43 = *(v218 + 8 * v44);
              ++v42;
              if (v43)
              {
                goto LABEL_15;
              }
            }

            __break(1u);
LABEL_151:
            sub_22278291C(v221);

            v172 = v41;
            goto LABEL_145;
          }

LABEL_15:
          v209 = v39;
          v215 = v17;
          v45 = (v43 - 1) & v43;
          v46 = (v44 << 9) | (8 * __clz(__rbit64(v43)));
          v47 = *(*(v24 + 56) + v46);
          v48 = *(*(v24 + 48) + v46);
          v216 = v47;
          if (!v48)
          {
            goto LABEL_140;
          }
        }

        v52 = [v48 *(v41 + 2608)];
        if (v52 > 4)
        {
          break;
        }

        if (v52 < 2)
        {
          goto LABEL_27;
        }

        if ((v52 - 2) >= 2)
        {
          if (v52 != 4)
          {
LABEL_149:

            swift_beginAccess();
            *&v222 = 0;
            *(&v222 + 1) = 0xE000000000000000;

            sub_22279EE60();
            v185 = [v48 description];
            v186 = sub_22279ECB0();
            v188 = v187;

            MEMORY[0x223DBFF30](v186, v188);

            MEMORY[0x223DBFF30](0x6570797420666F20, 0xE900000000000020);
            *&v219 = [v48 *(v41 + 2608)];
            type metadata accessor for CBORType(0);
            sub_22279EF50();
            MEMORY[0x223DBFF30](0xD000000000000018, 0x80000002227A1F20);
            v189 = v198;
            sub_22279EE90();
            v190 = sub_22279EEB0();
            v191 = swift_allocError();
            v193 = v192;
            v194 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450) + 48);
            *v193 = v199;
            v195 = v200;
            v196 = v201;
            (*(v200 + 16))(v193 + v194, v189, v201);
            (*(*(v190 - 8) + 104))(v193, *MEMORY[0x277D84160], v190);
            v217 = v191;
            swift_willThrow();
            sub_2227828A8(v210);

            return (*(v195 + 8))(v189, v196);
          }

          v75 = v217;
          sub_22277F070(v48, v207, v203, &v222);
          v217 = v75;
          if (v75)
          {
            goto LABEL_144;
          }

          v206 = v45;
          v202 = v48;
          if (!v223)
          {
            goto LABEL_162;
          }

          sub_2227828C4(&v222, v221);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019DB0, &qword_2227A0678);
          swift_dynamicCast();
          *&v222 = v219;
          sub_222782A78(&qword_27D019DB8, &qword_27D019DB0, &qword_2227A0678, MEMORY[0x277D83950]);
          sub_22279EE50();
          v76 = v217;
          sub_22277F070(v216, v213, v212, &v222);
          v217 = v76;
          if (v76)
          {
            sub_22278291C(v221);

LABEL_142:
            v172 = v210;
LABEL_145:
            sub_2227828A8(v172);
          }

          v77 = v215;
          if (v223)
          {
            sub_2227828C4(&v222, &v219);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v224 = v77;
            v79 = sub_222794F34(v221);
            v81 = v77[2];
            v82 = (v80 & 1) == 0;
            v66 = __OFADD__(v81, v82);
            v83 = v81 + v82;
            if (v66)
            {
              goto LABEL_155;
            }

            v84 = v80;
            v24 = v210;
            if (v77[3] < v83)
            {
              sub_2227885C4(v83, isUniquelyReferenced_nonNull_native);
              v79 = sub_222794F34(v221);
              v86 = v202;
              if ((v84 & 1) != (v85 & 1))
              {
                goto LABEL_164;
              }

LABEL_83:
              v17 = v224;
              if ((v84 & 1) == 0)
              {
                goto LABEL_84;
              }

              goto LABEL_110;
            }

            v86 = v202;
            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_83;
            }

            v164 = v22;
            v165 = v41;
            v166 = v79;
            sub_222789B48();
            v79 = v166;
            v41 = v165;
            v22 = v164;
            v17 = v224;
            if ((v84 & 1) == 0)
            {
LABEL_84:
              v17[(v79 >> 6) + 8] |= 1 << v79;
              v128 = v79;
              sub_2227829D0(v221, v17[6] + 40 * v79);
              sub_2227828C4(&v219, (v17[7] + 32 * v128));

              sub_22278291C(v221);
              v129 = v17[2];
              v66 = __OFADD__(v129, 1);
              v130 = v129 + 1;
              if (v66)
              {
                goto LABEL_159;
              }

              goto LABEL_135;
            }

LABEL_110:
            v152 = (v17[7] + 32 * v79);
            __swift_destroy_boxed_opaque_existential_1Tm(v152);
            sub_2227828C4(&v219, v152);

            sub_22278291C(v221);
LABEL_136:
            v40 = v211;
LABEL_137:
            v23 = v206;
            v39 = v44;
          }

          else
          {
            sub_222782970(&v222, &qword_27D019D78, &qword_2227A0658);
            v123 = sub_222794F34(v221);
            v17 = v77;
            if (v124)
            {
              v125 = v123;
              v126 = swift_isUniquelyReferenced_nonNull_native();
              v224 = v77;
              v24 = v210;
              v127 = v202;
              if ((v126 & 1) == 0)
              {
                sub_222789B48();
                v17 = v224;
              }

              sub_22278291C(v17[6] + 40 * v125);
              sub_2227828C4((v17[7] + 32 * v125), &v219);
              sub_222789008(v125, v17);

              sub_22278291C(v221);
            }

            else
            {
              sub_22278291C(v221);

              v219 = 0u;
              v220 = 0u;
              v24 = v210;
            }

            v23 = v206;
            sub_222782970(&v219, &qword_27D019D78, &qword_2227A0658);
            v39 = v44;
            v40 = v211;
          }
        }

        else if (v207 == MEMORY[0x277D837D0])
        {
          v206 = v45;
          v87 = [v48 string];
          if (v87)
          {
            v88 = v22;
            v89 = v87;
            v90 = sub_22279ECB0();
            v92 = v91;

            v22 = v88;
          }

          else
          {
            v90 = 0;
            v92 = 0;
          }

          *&v222 = v90;
          *(&v222 + 1) = v92;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019DD8, &qword_2227A0688);
          sub_222782BB0();
          sub_22279EE50();
          v131 = v217;
          sub_22277F070(v216, v213, v212, &v222);
          v217 = v131;
          if (v131)
          {
LABEL_143:
            sub_22278291C(v221);

            v172 = v210;
            goto LABEL_145;
          }

          v24 = v210;
          if (v223)
          {
            sub_2227828C4(&v222, &v219);
            v132 = v215;
            v133 = swift_isUniquelyReferenced_nonNull_native();
            v224 = v132;
            v134 = sub_222794F34(v221);
            v136 = v132[2];
            v137 = (v135 & 1) == 0;
            v66 = __OFADD__(v136, v137);
            v138 = v136 + v137;
            v41 = 0x2784B4000;
            if (v66)
            {
              goto LABEL_156;
            }

            v139 = v135;
            if (v132[3] < v138)
            {
              sub_2227885C4(v138, v133);
              v134 = sub_222794F34(v221);
              if ((v139 & 1) != (v140 & 1))
              {
                goto LABEL_164;
              }

              goto LABEL_103;
            }

            if (v133)
            {
LABEL_103:
              v150 = v224;
              if (v139)
              {
                goto LABEL_104;
              }
            }

            else
            {
              v167 = v134;
              sub_222789B48();
              v134 = v167;
              v41 = 0x2784B4000;
              v150 = v224;
              if (v139)
              {
LABEL_104:
                v151 = (v150[7] + 32 * v134);
                __swift_destroy_boxed_opaque_existential_1Tm(v151);
                sub_2227828C4(&v219, v151);

                sub_22278291C(v221);
                v40 = v211;
                v17 = v150;
                goto LABEL_137;
              }
            }

            v150[(v134 >> 6) + 8] |= 1 << v134;
            v168 = v134;
            sub_2227829D0(v221, v150[6] + 40 * v134);
            sub_2227828C4(&v219, (v150[7] + 32 * v168));

            sub_22278291C(v221);
            v169 = v150[2];
            v66 = __OFADD__(v169, 1);
            v130 = v169 + 1;
            if (v66)
            {
              goto LABEL_160;
            }

            v17 = v150;
LABEL_135:
            v17[2] = v130;
            goto LABEL_136;
          }

          sub_222782970(&v222, &qword_27D019D78, &qword_2227A0658);
          v141 = v215;
          v142 = sub_222794F34(v221);
          v41 = 0x2784B4000;
          if (v143)
          {
            v144 = v142;
            v145 = swift_isUniquelyReferenced_nonNull_native();
            v224 = v141;
            if ((v145 & 1) == 0)
            {
              sub_222789B48();
              v141 = v224;
            }

            sub_22278291C(*(v141 + 48) + 40 * v144);
            sub_2227828C4((*(v141 + 56) + 32 * v144), &v219);
            v119 = v141;
            sub_222789008(v144, v141);

            sub_22278291C(v221);
          }

          else
          {
            v119 = v141;
            sub_22278291C(v221);

            v219 = 0u;
            v220 = 0u;
          }

          sub_222782970(&v219, &qword_27D019D78, &qword_2227A0658);
          v39 = v44;
          v23 = v206;
LABEL_118:
          v40 = v211;
          v17 = v119;
        }

        else
        {
          v202 = v22;
          if (v207 != MEMORY[0x277CC9318])
          {

            swift_beginAccess();
            *&v222 = 0;
            *(&v222 + 1) = 0xE000000000000000;

            sub_22279EE60();
            v173 = [v48 description];
            v174 = sub_22279ECB0();
            v176 = v175;

            MEMORY[0x223DBFF30](v174, v176);

            MEMORY[0x223DBFF30](0x6570797420666F20, 0xE900000000000020);
            *&v219 = [v48 (v41 + 504)];
            type metadata accessor for CBORType(0);
            sub_22279EF50();
            MEMORY[0x223DBFF30](0xD000000000000018, 0x80000002227A1F20);
            v177 = v198;
            sub_22279EE90();
            v178 = sub_22279EEB0();
            v179 = swift_allocError();
            v181 = v180;
            v182 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450) + 48);
            *v181 = v199;
            v183 = v200;
            v184 = v201;
            (*(v200 + 16))(v181 + v182, v177, v201);
            (*(*(v178 - 8) + 104))(v181, *MEMORY[0x277D84160], v178);
            v217 = v179;
            swift_willThrow();
            sub_2227828A8(v210);

            return (*(v183 + 8))(v177, v184);
          }

          v53 = [v48 data];
          if (v53)
          {
            v54 = v53;
            v55 = sub_22279EC10();
            v57 = v56;
          }

          else
          {
            v55 = 0;
            v57 = 0xF000000000000000;
          }

          v22 = v202;
          *&v222 = v55;
          *(&v222 + 1) = v57;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019DC0, &qword_2227A0680);
          sub_222782AD8();
          sub_22279EE50();
          v103 = v217;
          sub_22277F070(v216, v213, v212, &v222);
          v217 = v103;
          if (v103)
          {
            goto LABEL_143;
          }

          v24 = v210;
          if (!v223)
          {
            sub_222782970(&v222, &qword_27D019D78, &qword_2227A0658);
            v113 = v215;
            v114 = sub_222794F34(v221);
            if (v115)
            {
              v116 = v114;
              v117 = v45;
              v118 = swift_isUniquelyReferenced_nonNull_native();
              v224 = v113;
              if ((v118 & 1) == 0)
              {
                sub_222789B48();
                v113 = v224;
              }

              sub_22278291C(*(v113 + 48) + 40 * v116);
              sub_2227828C4((*(v113 + 56) + 32 * v116), &v219);
              v119 = v113;
              sub_222789008(v116, v113);

              sub_22278291C(v221);
            }

            else
            {
              v117 = v45;
              v119 = v113;
              sub_22278291C(v221);

              v219 = 0u;
              v220 = 0u;
            }

            sub_222782970(&v219, &qword_27D019D78, &qword_2227A0658);
            v23 = v117;
            v39 = v44;
            goto LABEL_118;
          }

          sub_2227828C4(&v222, &v219);
          v104 = v215;
          v105 = swift_isUniquelyReferenced_nonNull_native();
          v224 = v104;
          v106 = sub_222794F34(v221);
          v108 = v104[2];
          v109 = (v107 & 1) == 0;
          v66 = __OFADD__(v108, v109);
          v110 = v108 + v109;
          if (v66)
          {
            goto LABEL_154;
          }

          v111 = v107;
          if (v104[3] < v110)
          {
            sub_2227885C4(v110, v105);
            v106 = sub_222794F34(v221);
            if ((v111 & 1) != (v112 & 1))
            {
              goto LABEL_164;
            }

LABEL_76:
            v120 = v45;
            v121 = v224;
            if (v111)
            {
              goto LABEL_77;
            }

            goto LABEL_127;
          }

          if (v105)
          {
            goto LABEL_76;
          }

          v120 = v45;
          v159 = v41;
          v160 = v106;
          sub_222789B48();
          v106 = v160;
          v41 = v159;
          v121 = v224;
          if (v111)
          {
LABEL_77:
            v122 = (v121[7] + 32 * v106);
            __swift_destroy_boxed_opaque_existential_1Tm(v122);
            sub_2227828C4(&v219, v122);

            sub_22278291C(v221);
            v40 = v211;
            v17 = v121;
            goto LABEL_129;
          }

LABEL_127:
          v121[(v106 >> 6) + 8] |= 1 << v106;
          v161 = v106;
          sub_2227829D0(v221, v121[6] + 40 * v106);
          sub_2227828C4(&v219, (v121[7] + 32 * v161));

          sub_22278291C(v221);
          v162 = v121[2];
          v66 = __OFADD__(v162, 1);
          v163 = v162 + 1;
          if (v66)
          {
            goto LABEL_158;
          }

          v17 = v121;
          v121[2] = v163;
          v40 = v211;
LABEL_129:
          v23 = v120;
          v39 = v44;
        }
      }

      if ((v52 - 6) < 5)
      {
        break;
      }

      if (v52 != 5)
      {
        if (v52 != 13)
        {
          goto LABEL_149;
        }

        break;
      }

      v93 = v217;
      sub_22277F070(v48, v207, v203, &v222);
      v217 = v93;
      if (v93)
      {
LABEL_144:

        v172 = v24;
        goto LABEL_145;
      }

      v206 = v45;
      v202 = v22;
      if (!v223)
      {
        goto LABEL_163;
      }

      v94 = v41;
      v41 = v24;
      v24 = v48;
      sub_2227828C4(&v222, v221);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019DA0, &qword_2227A0670);
      swift_dynamicCast();
      *&v222 = v219;
      sub_222782A78(&qword_27D019DA8, &qword_27D019DA0, &qword_2227A0670, MEMORY[0x277D83510]);
      sub_22279EE50();
      v95 = v217;
      sub_22277F070(v216, v213, v212, &v222);
      v217 = v95;
      if (v95)
      {
        goto LABEL_151;
      }

      v86 = v48;
      v17 = v215;
      if (v223)
      {
        sub_2227828C4(&v222, &v219);
        v96 = swift_isUniquelyReferenced_nonNull_native();
        v224 = v17;
        v79 = sub_222794F34(v221);
        v98 = v17[2];
        v99 = (v97 & 1) == 0;
        v66 = __OFADD__(v98, v99);
        v100 = v98 + v99;
        if (v66)
        {
          goto LABEL_157;
        }

        v101 = v97;
        v24 = v41;
        v41 = v94;
        if (v17[3] >= v100)
        {
          if ((v96 & 1) == 0)
          {
            v170 = v79;
            sub_222789B48();
            v79 = v170;
            v41 = v94;
          }
        }

        else
        {
          sub_2227885C4(v100, v96);
          v79 = sub_222794F34(v221);
          if ((v101 & 1) != (v102 & 1))
          {
            goto LABEL_164;
          }
        }

        v22 = v202;
        v17 = v224;
        if ((v101 & 1) == 0)
        {
          v224[(v79 >> 6) + 8] |= 1 << v79;
          v153 = v79;
          sub_2227829D0(v221, v17[6] + 40 * v79);
          sub_2227828C4(&v219, (v17[7] + 32 * v153));

          sub_22278291C(v221);
          v154 = v17[2];
          v66 = __OFADD__(v154, 1);
          v130 = v154 + 1;
          if (v66)
          {
            goto LABEL_161;
          }

          goto LABEL_135;
        }

        goto LABEL_110;
      }

      sub_222782970(&v222, &qword_27D019D78, &qword_2227A0658);
      v146 = sub_222794F34(v221);
      v24 = v41;
      if (v147)
      {
        v148 = v146;
        v149 = swift_isUniquelyReferenced_nonNull_native();
        v224 = v17;
        v41 = v94;
        if ((v149 & 1) == 0)
        {
          sub_222789B48();
          v17 = v224;
        }

        sub_22278291C(v17[6] + 40 * v148);
        sub_2227828C4((v17[7] + 32 * v148), &v219);
        sub_222789008(v148, v17);

        sub_22278291C(v221);
      }

      else
      {
        sub_22278291C(v221);

        v219 = 0u;
        v220 = 0u;
        v41 = v94;
      }

      v22 = v202;
      sub_222782970(&v219, &qword_27D019D78, &qword_2227A0658);
      v39 = v44;
      v23 = v206;
      v40 = v211;
    }

LABEL_27:
    v58 = v45;
    v59 = v48;
    *&v222 = [v48 numeric];
    sub_222782C2C(0, &qword_27D019DE8, 0x277CCABB0);
    sub_222782704(&qword_27D019DF0, &qword_27D019DE8, 0x277CCABB0);
    sub_22279EE50();
    v60 = v217;
    sub_22277F070(v216, v213, v212, &v222);
    v217 = v60;
    if (v60)
    {
      sub_22278291C(v221);

      goto LABEL_142;
    }

    v17 = v215;
    if (v223)
    {
      break;
    }

    sub_222782970(&v222, &qword_27D019D78, &qword_2227A0658);
    v70 = sub_222794F34(v221);
    if (v71)
    {
      v72 = v70;
      v73 = swift_isUniquelyReferenced_nonNull_native();
      v224 = v17;
      if ((v73 & 1) == 0)
      {
        sub_222789B48();
        v17 = v224;
      }

      sub_22278291C(v17[6] + 40 * v72);
      sub_2227828C4((v17[7] + 32 * v72), &v219);
      sub_222789008(v72, v17);

      sub_22278291C(v221);
    }

    else
    {
      sub_22278291C(v221);

      v219 = 0u;
      v220 = 0u;
    }

    sub_222782970(&v219, &qword_27D019D78, &qword_2227A0658);
    v39 = v44;
    v23 = v45;
LABEL_125:
    v40 = v211;
    v24 = v210;
    v41 = 0x2784B4000;
  }

  sub_2227828C4(&v222, &v219);
  v61 = swift_isUniquelyReferenced_nonNull_native();
  v224 = v17;
  v62 = sub_222794F34(v221);
  v64 = v17[2];
  v65 = (v63 & 1) == 0;
  v66 = __OFADD__(v64, v65);
  v67 = v64 + v65;
  if (!v66)
  {
    v68 = v63;
    if (v17[3] >= v67)
    {
      if (v61)
      {
        goto LABEL_38;
      }

      v155 = v62;
      sub_222789B48();
      v62 = v155;
      v45 = v58;
      v17 = v224;
      if ((v68 & 1) == 0)
      {
        goto LABEL_122;
      }

LABEL_39:
      v74 = (v17[7] + 32 * v62);
      __swift_destroy_boxed_opaque_existential_1Tm(v74);
      sub_2227828C4(&v219, v74);

      sub_22278291C(v221);
    }

    else
    {
      sub_2227885C4(v67, v61);
      v62 = sub_222794F34(v221);
      if ((v68 & 1) != (v69 & 1))
      {
        goto LABEL_164;
      }

LABEL_38:
      v17 = v224;
      if (v68)
      {
        goto LABEL_39;
      }

LABEL_122:
      v17[(v62 >> 6) + 8] |= 1 << v62;
      v156 = v62;
      sub_2227829D0(v221, v17[6] + 40 * v62);
      sub_2227828C4(&v219, (v17[7] + 32 * v156));

      sub_22278291C(v221);
      v157 = v17[2];
      v66 = __OFADD__(v157, 1);
      v158 = v157 + 1;
      if (v66)
      {
        goto LABEL_153;
      }

      v17[2] = v158;
    }

    v39 = v44;
    v23 = v45;
    goto LABEL_125;
  }

  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  __break(1u);
LABEL_164:
  result = sub_22279F470();
  __break(1u);
  return result;
}

void *sub_222780FD4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

void *sub_222780FE4(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
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

  result = sub_222789FB0(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019E40, &qword_2227A0B20);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

unint64_t sub_2227810EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019E10, &qword_2227A06A8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019E18, &qword_2227A06B0);
    v7 = sub_22279F020();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_222782CD8(v9, v5, &qword_27D019E10, &qword_2227A06A8);
      result = sub_222794ED0(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_22279EF70();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      result = sub_2227828C4(&v5[v8], (v7[7] + 32 * v13));
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_22278137C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019DF8, &qword_2227A0690);
    v3 = sub_22279F020();
    v4 = a1 + 32;

    while (1)
    {
      sub_222782CD8(v4, v13, &qword_27D019E00, &qword_2227A0698);
      result = sub_222794F34(v13);
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
      result = sub_2227828C4(&v15, (v3[7] + 32 * result));
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

unint64_t sub_2227814B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D58, &qword_2227A0640);
    v3 = sub_22279F020();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      swift_unknownObjectRetain();
      result = sub_222794F78(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_2227815B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D70, &qword_2227A0650);
    v3 = sub_22279F020();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_222794F78(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

void *sub_2227816A8(void *a1, uint64_t a2, uint64_t a3)
{
  v3[3] = MEMORY[0x277D84F90];
  swift_beginAccess();
  v7 = a1;
  MEMORY[0x223DBFFB0]();
  if (*((v3[3] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v3[3] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22279EDA0();
  }

  sub_22279EDB0();
  swift_endAccess();
  v3[2] = a2;
  v3[4] = a3;
  return v3;
}

uint64_t dispatch thunk of CBORDecoder.decode<A>(_:from:)()
{
  return (*(*v0 + 120))();
}

{
  return (*(*v0 + 136))();
}

uint64_t sub_2227818D0(void *a1)
{
  if ([a1 isBoolean])
  {
    v2 = [a1 BOOLValue];
  }

  else
  {
    v3 = sub_22279EEB0();
    swift_allocError();
    v5 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450);
    *v5 = MEMORY[0x277D839B0];
    swift_beginAccess();

    v6 = [a1 description];
    sub_22279ECB0();

    MEMORY[0x223DBFF30](0x20746F6E20736920, 0xEA00000000002061);
    MEMORY[0x223DBFF30](1819242306, 0xE400000000000000);
    sub_22279EE90();
    (*(*(v3 - 8) + 104))(v5, *MEMORY[0x277D84160], v3);
    v2 = swift_willThrow();
  }

  return v2 & 1;
}

void sub_222781A68(void *a1)
{
  if ([a1 isFloatNumber])
  {
    v2 = [a1 numeric];
    [v2 doubleValue];
  }

  else
  {
    v3 = sub_22279EEB0();
    swift_allocError();
    v5 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450);
    *v5 = MEMORY[0x277D839F8];
    swift_beginAccess();

    v6 = [a1 description];
    sub_22279ECB0();

    MEMORY[0x223DBFF30](0x20746F6E20736920, 0xEA00000000002061);
    MEMORY[0x223DBFF30](0x656C62756F44, 0xE600000000000000);
    sub_22279EE90();
    (*(*(v3 - 8) + 104))(v5, *MEMORY[0x277D84160], v3);
    swift_willThrow();
  }
}

void sub_222781C30(void *a1)
{
  if ([a1 isFloatNumber])
  {
    v2 = [a1 numeric];
    [v2 floatValue];
  }

  else
  {
    v3 = sub_22279EEB0();
    swift_allocError();
    v5 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450);
    *v5 = MEMORY[0x277D83A90];
    swift_beginAccess();

    v6 = [a1 description];
    sub_22279ECB0();

    MEMORY[0x223DBFF30](0x20746F6E20736920, 0xEA00000000002061);
    MEMORY[0x223DBFF30](0x74616F6C46, 0xE500000000000000);
    sub_22279EE90();
    (*(*(v3 - 8) + 104))(v5, *MEMORY[0x277D84160], v3);
    swift_willThrow();
  }
}

uint64_t *sub_222781DF8(void *a1)
{
  if ([a1 isWholeNumber])
  {
    v2 = [a1 numeric];
    v3 = [v2 charValue];
  }

  else
  {
    v4 = sub_22279EEB0();
    swift_allocError();
    v6 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450);
    *v6 = MEMORY[0x277D84900];
    swift_beginAccess();

    v7 = [a1 description];
    v8 = sub_22279ECB0();
    v10 = v9;

    v12[0] = v8;
    v12[1] = v10;
    MEMORY[0x223DBFF30](0x20746F6E20736920, 0xEA00000000002061);
    v3 = v12;
    MEMORY[0x223DBFF30](947154505, 0xE400000000000000);
    sub_22279EE90();
    (*(*(v4 - 8) + 104))(v6, *MEMORY[0x277D84160], v4);
    swift_willThrow();
  }

  return v3;
}

uint64_t *sub_222781FB0(void *a1)
{
  if ([a1 isWholeNumber])
  {
    v2 = [a1 numeric];
    v3 = [v2 shortValue];
  }

  else
  {
    v4 = sub_22279EEB0();
    swift_allocError();
    v6 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450);
    *v6 = MEMORY[0x277D84958];
    swift_beginAccess();

    v7 = [a1 description];
    v8 = sub_22279ECB0();
    v10 = v9;

    v12[0] = v8;
    v12[1] = v10;
    MEMORY[0x223DBFF30](0x20746F6E20736920, 0xEA00000000002061);
    v3 = v12;
    MEMORY[0x223DBFF30](0x3631746E49, 0xE500000000000000);
    sub_22279EE90();
    (*(*(v4 - 8) + 104))(v6, *MEMORY[0x277D84160], v4);
    swift_willThrow();
  }

  return v3;
}

uint64_t *sub_22278216C(void *a1)
{
  if ([a1 isWholeNumber])
  {
    v2 = [a1 numeric];
    v3 = [v2 unsignedCharValue];
  }

  else
  {
    v4 = sub_22279EEB0();
    swift_allocError();
    v6 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450);
    *v6 = MEMORY[0x277D84B78];
    swift_beginAccess();

    v7 = [a1 description];
    v8 = sub_22279ECB0();
    v10 = v9;

    v12[0] = v8;
    v12[1] = v10;
    MEMORY[0x223DBFF30](0x20746F6E20736920, 0xEA00000000002061);
    v3 = v12;
    MEMORY[0x223DBFF30](0x38746E4955, 0xE500000000000000);
    sub_22279EE90();
    (*(*(v4 - 8) + 104))(v6, *MEMORY[0x277D84160], v4);
    swift_willThrow();
  }

  return v3;
}

uint64_t *sub_222782328(void *a1)
{
  if ([a1 isWholeNumber])
  {
    v2 = [a1 numeric];
    v3 = [v2 unsignedShortValue];
  }

  else
  {
    v4 = sub_22279EEB0();
    swift_allocError();
    v6 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450);
    *v6 = MEMORY[0x277D84C58];
    swift_beginAccess();

    v7 = [a1 description];
    v8 = sub_22279ECB0();
    v10 = v9;

    v12[0] = v8;
    v12[1] = v10;
    MEMORY[0x223DBFF30](0x20746F6E20736920, 0xEA00000000002061);
    v3 = v12;
    MEMORY[0x223DBFF30](0x3631746E4955, 0xE600000000000000);
    sub_22279EE90();
    (*(*(v4 - 8) + 104))(v6, *MEMORY[0x277D84160], v4);
    swift_willThrow();
  }

  return v3;
}

id sub_2227824E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  if ([a1 isWholeNumber])
  {
    v10 = [a1 numeric];
    v11 = [v10 *a5];

    return v11;
  }

  else
  {
    v13 = sub_22279EEB0();
    swift_allocError();
    v15 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450);
    *v15 = a2;
    swift_beginAccess();

    v16 = [a1 description];
    sub_22279ECB0();

    MEMORY[0x223DBFF30](0x20746F6E20736920, 0xEA00000000002061);
    MEMORY[0x223DBFF30](a3, a4);
    sub_22279EE90();
    (*(*(v13 - 8) + 104))(v15, *MEMORY[0x277D84160], v13);
    return swift_willThrow();
  }
}

unint64_t sub_2227826B0()
{
  result = qword_27D019D68;
  if (!qword_27D019D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D019D68);
  }

  return result;
}

uint64_t sub_222782704(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_222782C2C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22278276C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _CBORDecoder();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x223DC0EF0);
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

uint64_t *__swift_allocate_boxed_opaque_existential_1Tm(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

_OWORD *sub_2227828C4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
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

uint64_t sub_222782970(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
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

uint64_t sub_222782A78(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

unint64_t sub_222782AD8()
{
  result = qword_27D019DC8;
  if (!qword_27D019DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D019DC0, &qword_2227A0680);
    sub_222782B5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D019DC8);
  }

  return result;
}

unint64_t sub_222782B5C()
{
  result = qword_27D019DD0;
  if (!qword_27D019DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D019DD0);
  }

  return result;
}

unint64_t sub_222782BB0()
{
  result = qword_27D019DE0;
  if (!qword_27D019DE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D019DD8, &qword_2227A0688);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D019DE0);
  }

  return result;
}

uint64_t sub_222782C2C(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_222782CD8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_222782D54(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_222782DA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_222782DFC(uint64_t *a1, int a2)
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

uint64_t sub_222782E44(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_222782E90(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_222782ED8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_222782F30()
{
  result = qword_27D019E30;
  if (!qword_27D019E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D019E30);
  }

  return result;
}

uint64_t sub_222782F84()
{
  v3 = *v0;
  v2 = v0[1];
  v4 = v0[3];
  if (!(v4 >> 62))
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2 < result)
    {
      goto LABEL_3;
    }

LABEL_10:
    v10 = sub_22279EEB0();
    swift_allocError();
    v12 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450);
    *v12 = MEMORY[0x277D839B0];

    sub_22279EE90();
    (*(*(v10 - 8) + 104))(v12, *MEMORY[0x277D84170], v10);
    swift_willThrow();
    return v3 & 1;
  }

  result = sub_22279EFA0();
  if (v2 >= result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = v1;
    v7 = v0;
    v8 = MEMORY[0x223DC00C0](v2, v4);
LABEL_7:
    v9 = v8;
    LOBYTE(v3) = sub_2227818D0(v8);

    if (!v6)
    {
      v7[1] = v2 + 1;
    }

    return v3 & 1;
  }

  if (v2 < 0)
  {
    __break(1u);
  }

  else if (v2 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = v1;
    v7 = v0;
    v8 = *(v4 + 8 * v2 + 32);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

void sub_222783134()
{
  v2 = *(v0 + 8);
  v3 = *(v0 + 24);
  if (!(v3 >> 62))
  {
    if (v2 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_10:
    v8 = sub_22279EEB0();
    swift_allocError();
    v10 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450);
    *v10 = MEMORY[0x277D839B0];

    sub_22279EE90();
    (*(*(v8 - 8) + 104))(v10, *MEMORY[0x277D84170], v8);
    swift_willThrow();
    return;
  }

  if (v2 >= sub_22279EFA0())
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) == 0)
  {
    if (v2 < 0)
    {
      __break(1u);
    }

    else if (v2 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v4 = v1;
      v5 = v0;
      v6 = *(v3 + 8 * v2 + 32);
      goto LABEL_7;
    }

    __break(1u);
    return;
  }

  v4 = v1;
  v5 = v0;
  v6 = MEMORY[0x223DC00C0](v2, v3);
LABEL_7:
  v7 = v6;
  sub_222781A68(v6);

  if (!v4)
  {
    *(v5 + 8) = v2 + 1;
  }
}

void sub_2227832EC()
{
  v2 = *(v0 + 8);
  v3 = *(v0 + 24);
  if (!(v3 >> 62))
  {
    if (v2 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_10:
    v8 = sub_22279EEB0();
    swift_allocError();
    v10 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450);
    *v10 = MEMORY[0x277D839B0];

    sub_22279EE90();
    (*(*(v8 - 8) + 104))(v10, *MEMORY[0x277D84170], v8);
    swift_willThrow();
    return;
  }

  if (v2 >= sub_22279EFA0())
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) == 0)
  {
    if (v2 < 0)
    {
      __break(1u);
    }

    else if (v2 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v4 = v1;
      v5 = v0;
      v6 = *(v3 + 8 * v2 + 32);
      goto LABEL_7;
    }

    __break(1u);
    return;
  }

  v4 = v1;
  v5 = v0;
  v6 = MEMORY[0x223DC00C0](v2, v3);
LABEL_7:
  v7 = v6;
  sub_222781C30(v6);

  if (!v4)
  {
    *(v5 + 8) = v2 + 1;
  }
}

void *sub_2227834A4(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v10 = *(v4 + 8);
  v11 = *(v4 + 24);
  if (!(v11 >> 62))
  {
    result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10 < result)
    {
      goto LABEL_3;
    }

LABEL_10:
    v17 = sub_22279EEB0();
    swift_allocError();
    v16 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450);
    *v16 = MEMORY[0x277D839B0];

    sub_22279EE90();
    (*(*(v17 - 8) + 104))(v16, *MEMORY[0x277D84170], v17);
    swift_willThrow();
    return v16;
  }

  result = sub_22279EFA0();
  if (v10 >= result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v13 = v5;
    v14 = MEMORY[0x223DC00C0](v10, v11);
LABEL_7:
    v15 = v14;
    v16 = sub_2227824E4(v14, a1, a2, a3, a4);

    if (!v13)
    {
      *(v4 + 8) = v10 + 1;
    }

    return v16;
  }

  if (v10 < 0)
  {
    __break(1u);
  }

  else if (v10 < *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = v5;
    v14 = *(v11 + 8 * v10 + 32);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

void *sub_222783684(uint64_t (*a1)(void))
{
  v4 = *(v1 + 8);
  v5 = *(v1 + 24);
  if (!(v5 >> 62))
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4 < result)
    {
      goto LABEL_3;
    }

LABEL_10:
    v12 = sub_22279EEB0();
    swift_allocError();
    v11 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450);
    *v11 = MEMORY[0x277D839B0];

    sub_22279EE90();
    (*(*(v12 - 8) + 104))(v11, *MEMORY[0x277D84170], v12);
    swift_willThrow();
    return v11;
  }

  result = sub_22279EFA0();
  if (v4 >= result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v7 = v2;
    v8 = v1;
    v9 = MEMORY[0x223DC00C0](v4, v5);
LABEL_7:
    v10 = v9;
    v11 = a1();

    if (!v7)
    {
      *(v8 + 8) = v4 + 1;
    }

    return v11;
  }

  if (v4 < 0)
  {
    __break(1u);
  }

  else if (v4 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = v2;
    v8 = v1;
    v9 = *(v5 + 8 * v4 + 32);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

void *sub_222783844(uint64_t (*a1)(void))
{
  v4 = *(v1 + 8);
  v5 = *(v1 + 24);
  if (!(v5 >> 62))
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4 < result)
    {
      goto LABEL_3;
    }

LABEL_10:
    v12 = sub_22279EEB0();
    swift_allocError();
    v11 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450);
    *v11 = MEMORY[0x277D839B0];

    sub_22279EE90();
    (*(*(v12 - 8) + 104))(v11, *MEMORY[0x277D84170], v12);
    swift_willThrow();
    return v11;
  }

  result = sub_22279EFA0();
  if (v4 >= result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v7 = v2;
    v8 = v1;
    v9 = MEMORY[0x223DC00C0](v4, v5);
LABEL_7:
    v10 = v9;
    v11 = a1();

    if (!v7)
    {
      *(v8 + 8) = v4 + 1;
    }

    return v11;
  }

  if (v4 < 0)
  {
    __break(1u);
  }

  else if (v4 < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = v2;
    v8 = v1;
    v9 = *(v5 + 8 * v4 + 32);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_222783A04(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

unint64_t sub_222783AF8()
{
  result = qword_27D019E58;
  if (!qword_27D019E58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D019E50, &unk_2227A0B30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D019E58);
  }

  return result;
}

uint64_t sub_222783BA0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_22279F4C0();
  sub_22279ECD0();
  sub_22279F4E0();
  if (v2 != 1)
  {
    MEMORY[0x223DC0720](v1);
  }

  return sub_22279F4F0();
}

uint64_t sub_222783C2C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_22279ECD0();
  if (v3 == 1)
  {
    return sub_22279F4E0();
  }

  sub_22279F4E0();
  return MEMORY[0x223DC0720](v2);
}

uint64_t sub_222783C90(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_22279F4C0();
  sub_22279ECD0();
  sub_22279F4E0();
  if (v3 != 1)
  {
    MEMORY[0x223DC0720](v2);
  }

  return sub_22279F4F0();
}

uint64_t sub_222783D18()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_222783D48@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_22278B4D0(a1, a2);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6;
  *(a3 + 24) = v7;
  return result;
}

uint64_t sub_222783D84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_22279F090();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = a1;
  *(a2 + 24) = 0;
  return result;
}

uint64_t sub_222783DE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v6 || (v7 = sub_22279F290(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v5)
      {
        return 1;
      }
    }

    else
    {
      if (v2 == v4)
      {
        v9 = v5;
      }

      else
      {
        v9 = 1;
      }

      if ((v9 & 1) == 0)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_222783E64(uint64_t a1)
{
  v2 = sub_222782F30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222783EA0(uint64_t a1)
{
  v2 = sub_222782F30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Data.init(_:)(void *a1)
{
  v2 = [objc_opt_self() dataWithCBOR_];
  v3 = MEMORY[0x223DBFE40]();

  return v3;
}

uint64_t Data.init(oldCanonicalOrdering:)(void *a1)
{
  v2 = [objc_opt_self() dataWithCBOR:a1 encodingKeyOrder:1];
  v3 = MEMORY[0x223DBFE40]();

  return v3;
}

uint64_t CBORCodableWrapper.encode(to:)(void *a1)
{
  v2 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22279F530();
  v3 = [objc_opt_self() dataWithCBOR_];
  v4 = sub_22279EC10();
  v6 = v5;

  __swift_mutable_project_boxed_opaque_existential_1(v8, v8[3]);
  sub_2227840F8();
  sub_22279F2D0();
  sub_22278414C(v4, v6);
  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

unint64_t sub_2227840F8()
{
  result = qword_27D019E60;
  if (!qword_27D019E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D019E60);
  }

  return result;
}

uint64_t sub_22278414C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t CBORCodableWrapper.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22279F500();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    sub_222784278();
    sub_22279F2A0();
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    *a2 = v6;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_222784278()
{
  result = qword_27D019E68;
  if (!qword_27D019E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D019E68);
  }

  return result;
}

uint64_t sub_222784314(void *a1, SEL *a2)
{
  v2 = *a1;
  v3 = [objc_opt_self() *a2];

  v4 = MEMORY[0x223DBFE40](v3);
  return v4;
}

char *COSE_Sign1.init(algorithmIdentifier:keyIdentifier:initializationVector:partialInitializationVector:payload:signature:x509Chain:includeCBORTag:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, unint64_t a10, uint64_t a11, unint64_t a12, void *a13, char a14)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019E70, &qword_2227A0B40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2227A0440;
  v21 = objc_opt_self();
  *(inited + 32) = [v21 cborWithInteger_];
  v22 = a3;
  *(inited + 40) = [v21 cborWithInteger_];
  sub_2227815B0(inited);
  swift_setDeallocating();
  sub_22278AD94(inited + 32);
  v23 = sub_2227815B0(MEMORY[0x277D84F90]);
  v79 = v23;
  v77 = a6;
  if (a3 >> 60 != 15)
  {
    v24 = v23;
    sub_22278AE78(a2, a3);
    v25 = [v21 cborWithInteger_];
    sub_22278AE78(a2, a3);
    v26 = sub_22279EC00();
    v27 = [v21 cborWithData_];

    sub_22278AE64(a2, a3);
    if (v27)
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        if (v24 >= 0)
        {
          v24 &= 0xFFFFFFFFFFFFFF8uLL;
        }

        result = sub_22279EFA0();
        if (__OFADD__(result, 1))
        {
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

        v24 = sub_222787DEC(v24, (result + 1));
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_222789510(v27, v25, isUniquelyReferenced_nonNull_native);

      sub_22278AE64(a2, a3);
      v79 = v24;
    }

    else
    {
      v30 = sub_222787CA0(v25);
      sub_22278AE64(a2, a3);
    }

    a6 = v77;
  }

  v31 = a9;
  if (a5 >> 60 != 15)
  {
    sub_22278AE78(a4, a5);
    v32 = [v21 cborWithInteger_];
    sub_22278AE78(a4, a5);
    v33 = sub_22279EC00();
    v34 = [v21 cborWithData_];

    sub_22278AE64(a4, a5);
    if (v34)
    {
      v35 = v79;
      if ((v79 & 0xC000000000000001) != 0)
      {
        if (v79 >= 0)
        {
          v35 = v79 & 0xFFFFFFFFFFFFFF8;
        }

        result = sub_22279EFA0();
        if (__OFADD__(result, 1))
        {
          goto LABEL_62;
        }

        v35 = sub_222787DEC(v35, (result + 1));
      }

      v36 = swift_isUniquelyReferenced_nonNull_native();
      sub_222789510(v34, v32, v36);

      sub_22278AE64(a4, a5);
      v79 = v35;
    }

    else
    {
      v37 = sub_222787CA0(v32);
      sub_22278AE64(a4, a5);
    }

    a6 = v77;
  }

  v73 = v22;
  if (a7 >> 60 != 15)
  {
    sub_22278AE78(a6, a7);
    v38 = [v21 cborWithInteger_];
    sub_22278AE78(a6, a7);
    v39 = sub_22279EC00();
    v40 = [v21 cborWithData_];

    sub_22278AE64(a6, a7);
    if (v40)
    {
      v41 = v79;
      if ((v79 & 0xC000000000000001) != 0)
      {
        if (v79 >= 0)
        {
          v41 = v79 & 0xFFFFFFFFFFFFFF8;
        }

        result = sub_22279EFA0();
        if (__OFADD__(result, 1))
        {
          goto LABEL_63;
        }

        v41 = sub_222787DEC(v41, (result + 1));
      }

      v42 = swift_isUniquelyReferenced_nonNull_native();
      sub_222789510(v40, v38, v42);

      sub_22278AE64(v77, a7);
      v79 = v41;
    }

    else
    {
      v43 = sub_222787CA0(v38);
      sub_22278AE64(a6, a7);
    }

    v31 = a9;
  }

  v71 = a4;
  v72 = a5;
  v75 = a2;
  if (a13)
  {
    v44 = a13[2];
    v45 = MEMORY[0x277D84F90];
    if (v44)
    {
      v78 = MEMORY[0x277D84F90];
      sub_22279EF20();
      v46 = a13 + 5;
      do
      {
        v47 = *(v46 - 1);
        v48 = *v46;
        sub_22278AE78(v47, *v46);
        v49 = sub_22279EC00();
        v50 = [v21 cborWithData_];

        sub_22278414C(v47, v48);
        sub_22279EF00();
        sub_22279EF30();
        sub_22279EF40();
        sub_22279EF10();
        v46 += 2;
        --v44;
      }

      while (v44);
      v45 = v78;
    }

    if (v45 >> 62)
    {
      if (sub_22279EFA0() == 1)
      {
        goto LABEL_38;
      }
    }

    else if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
LABEL_38:

      result = [v21 cborWithInteger_];
      if (a13[2])
      {
        v51 = result;
        v52 = a13[4];
        v53 = a13[5];
        sub_22278AE78(v52, v53);

        v54 = sub_22279EC00();
        v55 = [v21 cborWithData_];

        sub_22278414C(v52, v53);
        if (v55)
        {
          v56 = v79;
          if ((v79 & 0xC000000000000001) == 0)
          {
LABEL_45:
            v57 = swift_isUniquelyReferenced_nonNull_native();
            sub_222789510(v55, v51, v57);

            goto LABEL_57;
          }

          if (v79 >= 0)
          {
            v56 = v79 & 0xFFFFFFFFFFFFFF8;
          }

          result = sub_22279EFA0();
          if (!__OFADD__(result, 1))
          {
            sub_222787DEC(v56, (result + 1));
            goto LABEL_45;
          }

LABEL_65:
          __break(1u);
          return result;
        }

        v58 = sub_222787CA0(v51);

LABEL_56:
        goto LABEL_57;
      }

      __break(1u);
      goto LABEL_61;
    }

    v59 = [v21 cborWithInteger_];
    sub_222782C2C(0, qword_280BC4448, off_2784B4108);
    v60 = sub_22279ED70();

    v61 = [v21 cborWithArray_];

    if (!v61)
    {
      v58 = sub_222787CA0(v59);

      goto LABEL_56;
    }

    v62 = v79;
    if ((v79 & 0xC000000000000001) != 0)
    {
      if (v79 >= 0)
      {
        v62 = v79 & 0xFFFFFFFFFFFFFF8;
      }

      result = sub_22279EFA0();
      if (__OFADD__(result, 1))
      {
        goto LABEL_64;
      }

      sub_222787DEC(v62, (result + 1));
    }

    v63 = swift_isUniquelyReferenced_nonNull_native();
    sub_222789510(v61, v59, v63);
  }

LABEL_57:
  sub_222782C2C(0, qword_280BC4448, off_2784B4108);
  sub_22278ADFC();
  v64 = sub_22279EC50();

  v65 = sub_22279EC50();

  v66 = 0;
  if (a10 >> 60 != 15)
  {
    v66 = sub_22279EC00();
    sub_22278AE64(a8, a10);
  }

  v67 = objc_allocWithZone(COSE_Sign1);
  v68 = sub_22279EC00();
  v69 = [v67 initWithProtectedHeaders:v64 unprotectedHeaders:v65 payload:v66 signature:v68 includeCBORTag:a14 & 1];

  sub_22278414C(a11, a12);
  sub_22278AE64(v77, a7);
  sub_22278AE64(v71, v72);
  result = sub_22278AE64(v75, v73);
  *v31 = v69;
  return result;
}

uint64_t COSE_Sign1.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22279F500();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v12, v12[3]);
    sub_222784278();
    sub_22279F2A0();
    v5 = [objc_allocWithZone(COSE_Sign1) initWithCBOR_];
    if (v5)
    {
      v6 = v5;

      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      *a2 = v6;
    }

    else
    {
      v8 = sub_22279EEB0();
      swift_allocError();
      v10 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450);
      *v10 = &type metadata for COSE_Sign1;
      sub_22279EE90();
      (*(*(v8 - 8) + 104))(v10, *MEMORY[0x277D84160], v8);
      swift_willThrow();

      __swift_destroy_boxed_opaque_existential_1Tm(v12);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_222784E84(SEL *a1)
{
  v2 = [*v1 *a1];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_22279ED80();

  return v4;
}

uint64_t COSE_Sign1.X509Hash.algorithmIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t COSE_Sign1.X509Hash.value.getter()
{
  v1 = *(v0 + 16);
  sub_22278AE78(v1, *(v0 + 24));
  return v1;
}

uint64_t sub_222784F50()
{
  if (*v0)
  {
    return 0x65756C6176;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_222784F8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x80000002227A1FA0 == a2 || (sub_22279F290() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_22279F290();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_222785088(uint64_t a1)
{
  v2 = sub_22278AF20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2227850C4(uint64_t a1)
{
  v2 = sub_22278AF20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t COSE_Sign1.X509Hash.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019E88, &qword_2227A0B58);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - v5;
  v7 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22278AF20();
  sub_22279F540();
  LOBYTE(v14) = 0;
  v8 = v13;
  sub_22279F060();
  if (!v8)
  {
    v14 = v12;
    v15 = v11;
    v16 = 1;
    sub_22278AE78(v12, v11);
    sub_2227840F8();
    sub_22279F070();
    sub_22278414C(v14, v15);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t COSE_Sign1.X509Hash.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019E98, &qword_2227A0B60);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22278AF20();
  sub_22279F520();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v16[0]) = 0;
  v9 = sub_22279F030();
  v11 = v10;
  v12 = v9;
  v17 = 1;
  sub_22278AF74();
  sub_22279F040();
  (*(v6 + 8))(v8, v5);
  v13 = v16[0];
  v14 = v16[1];
  *a2 = v12;
  a2[1] = v11;
  a2[2] = v13;
  a2[3] = v14;

  sub_22278AE78(v13, v14);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);

  return sub_22278414C(v13, v14);
}

double COSE_Sign1.x509Hash.getter@<D0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = [*v1 x509hashAlgorithmIdentifier];
  if (v4)
  {
    v5 = v4;
    v6 = sub_22279ECB0();
    v8 = v7;

    v9 = [v3 x509hashValue];
    if (v9)
    {
      v10 = v9;
      v11 = sub_22279EC10();
      v13 = v12;

      *a1 = v6;
      a1[1] = v8;
      a1[2] = v11;
      a1[3] = v13;
      return result;
    }
  }

  result = 0.0;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  return result;
}

uint64_t _s11CBORLibrary10COSE_Sign1V28rawProtectedHeaderParameters10Foundation4DataVvg_0()
{
  v1 = [*v0 protectedHeaderParameters];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_22279EC10();

  return v3;
}

unint64_t _s11CBORLibrary10COSE_Sign1V30rawUnprotectedHeaderParametersSDySo4CBORCAFGvg_0()
{
  v1 = [*v0 unprotectedHeaderParameters];
  if (v1)
  {
    v2 = v1;
    sub_222782C2C(0, qword_280BC4448, off_2784B4108);
    sub_22278ADFC();
    v3 = sub_22279EC60();

    return v3;
  }

  else
  {
    v5 = MEMORY[0x277D84F90];

    return sub_2227815B0(v5);
  }
}

uint64_t sub_2227856C8(SEL *a1)
{
  v2 = [*v1 *a1];
  v3 = sub_22279EC10();

  return v3;
}

char *_s11CBORLibrary10COSE_Sign1V23criticalHeaderParameterSaySiGSgvg_0()
{
  v1 = [*v0 criticalHeaderParameters];
  if (!v1)
  {
    return v1;
  }

  sub_222782C2C(0, &qword_27D019DE8, 0x277CCABB0);
  v2 = sub_22279ED80();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_4;
    }

    goto LABEL_14;
  }

  v3 = sub_22279EFA0();
  if (!v3)
  {
LABEL_14:

    return MEMORY[0x277D84F90];
  }

LABEL_4:
  v11 = MEMORY[0x277D84F90];
  result = sub_22278AC70(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v1 = v11;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x223DC00C0](v5, v2);
      }

      else
      {
        v6 = *(v2 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = [v6 integerValue];

      v10 = v11[2];
      v9 = v11[3];
      if (v10 >= v9 >> 1)
      {
        sub_22278AC70((v9 > 1), v10 + 1, 1);
      }

      ++v5;
      v11[2] = v10 + 1;
      v11[v10 + 4] = v8;
    }

    while (v3 != v5);

    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_2227858B8(SEL *a1)
{
  v2 = [*v1 *a1];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_22279ECB0();

  return v4;
}

uint64_t COSE_Mac0.computeMAC_Structure(externalAAD:)(uint64_t a1, unint64_t a2)
{
  v3 = *v2;
  if (a2 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_22279EC00();
  }

  v5 = [v3 generateMessageForMACWithApplicationProtectedAttributes_];

  v6 = sub_22279EC10();
  return v6;
}

uint64_t COSE_Mac0.init(algorithmIdentifier:keyIdentifier:initializationVector:partialInitializationVector:payload:mac:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, unint64_t a10, uint64_t a11, unint64_t a12)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019E70, &qword_2227A0B40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2227A0440;
  v19 = objc_opt_self();
  *(inited + 32) = [v19 cborWithInteger_];
  *(inited + 40) = [v19 cborWithInteger_];
  v20 = sub_2227815B0(inited);
  swift_setDeallocating();
  sub_22278AD94(inited + 32);
  v21 = sub_2227815B0(MEMORY[0x277D84F90]);
  v54 = v21;
  v52 = a4;
  if (a3 >> 60 != 15)
  {
    sub_22278AE78(a2, a3);
    v22 = [v19 cborWithInteger_];
    sub_22278AE78(a2, a3);
    v23 = sub_22279EC00();
    v24 = [v19 cborWithData_];

    sub_22278AE64(a2, a3);
    if (v24)
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        if (v20 >= 0)
        {
          v20 &= 0xFFFFFFFFFFFFFF8uLL;
        }

        result = sub_22279EFA0();
        if (__OFADD__(result, 1))
        {
          __break(1u);
          goto LABEL_34;
        }

        sub_222787DEC(v20, result + 1);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_222789510(v24, v22, isUniquelyReferenced_nonNull_native);

      sub_22278AE64(a2, a3);
    }

    else
    {
      v27 = sub_222787CA0(v22);
      sub_22278AE64(a2, a3);
    }

    a4 = v52;
  }

  v50 = a2;
  if (a5 >> 60 == 15)
  {
    goto LABEL_21;
  }

  v28 = a6;
  v29 = a7;
  sub_22278AE78(a4, a5);
  v30 = [v19 cborWithInteger_];
  sub_22278AE78(a4, a5);
  v31 = sub_22279EC00();
  v32 = [v19 cborWithData_];

  sub_22278AE64(a4, a5);
  if (!v32)
  {
    v34 = sub_222787CA0(v30);
    sub_22278AE64(a4, a5);

    goto LABEL_20;
  }

  if ((v21 & 0xC000000000000001) != 0)
  {
    if (v21 >= 0)
    {
      v21 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    result = sub_22279EFA0();
    if (!__OFADD__(result, 1))
    {
      v21 = sub_222787DEC(v21, result + 1);
      goto LABEL_18;
    }

LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

LABEL_18:
  v33 = swift_isUniquelyReferenced_nonNull_native();
  sub_222789510(v32, v30, v33);

  sub_22278AE64(v52, a5);
  v54 = v21;
LABEL_20:
  a7 = v29;
  a6 = v28;
LABEL_21:
  if (a7 >> 60 != 15)
  {
    sub_22278AE78(a6, a7);
    v35 = [v19 cborWithInteger_];
    sub_22278AE78(a6, a7);
    v36 = sub_22279EC00();
    v37 = [v19 cborWithData_];

    sub_22278AE64(a6, a7);
    if (!v37)
    {
      v40 = sub_222787CA0(v35);
      sub_22278AE64(a6, a7);

      goto LABEL_30;
    }

    v38 = v54;
    if ((v54 & 0xC000000000000001) == 0)
    {
      goto LABEL_28;
    }

    if (v54 >= 0)
    {
      v38 = v54 & 0xFFFFFFFFFFFFFF8;
    }

    result = sub_22279EFA0();
    if (!__OFADD__(result, 1))
    {
      sub_222787DEC(v38, result + 1);
LABEL_28:
      v39 = swift_isUniquelyReferenced_nonNull_native();
      sub_222789510(v37, v35, v39);

      sub_22278AE64(a6, a7);
      goto LABEL_30;
    }

LABEL_35:
    __break(1u);
    return result;
  }

LABEL_30:
  v41 = a7;
  v49 = a3;
  sub_222782C2C(0, qword_280BC4448, off_2784B4108);
  sub_22278ADFC();
  v42 = sub_22279EC50();

  v43 = sub_22279EC50();

  v44 = 0;
  if (a10 >> 60 != 15)
  {
    v44 = sub_22279EC00();
    sub_22278AE64(a8, a10);
  }

  v45 = objc_allocWithZone(COSE_Mac0);
  v46 = sub_22279EC00();
  v47 = [v45 initWithProtectedHeaders:v42 unprotectedHeaders:v43 payload:v44 tag:v46];

  sub_22278414C(a11, a12);
  sub_22278AE64(a6, v41);
  sub_22278AE64(v52, a5);
  result = sub_22278AE64(v50, v49);
  *a9 = v47;
  return result;
}

uint64_t sub_222785F8C(void *a1)
{
  v2 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = v2;
  sub_22279F530();
  v4 = [objc_opt_self() cborWithCOSE_];

  v6[6] = v4;
  __swift_mutable_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_22278AECC();
  sub_22279F2D0();

  return __swift_destroy_boxed_opaque_existential_1Tm(v6);
}

char *COSEKey.operations.getter()
{
  v1 = [*v0 operations];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_222782C2C(0, &qword_27D019DE8, 0x277CCABB0);
  v3 = sub_22279ED80();

  if (v3 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22279EFA0())
  {
    v5 = 0;
    v6 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x223DC00C0](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v7 = *(v3 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v10 = [v7 integerValue];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_22278A0F8(0, *(v6 + 2) + 1, 1, v6);
      }

      v12 = *(v6 + 2);
      v11 = *(v6 + 3);
      if (v12 >= v11 >> 1)
      {
        v6 = sub_22278A0F8((v11 > 1), v12 + 1, 1, v6);
      }

      *(v6 + 2) = v12 + 1;
      *&v6[8 * v12 + 32] = v10;
      ++v5;
      if (v9 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v6 = MEMORY[0x277D84F90];
LABEL_21:

  return v6;
}

uint64_t COSEKey.init(ec2CurveIdentifier:x:y:d:algorithm:keyOperations:keyIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, unint64_t a12)
{
  v14 = a3;
  v15 = a2;
  v16 = a9;
  if (a10)
  {
    v17 = *(a10 + 16);
    if (v17)
    {
      v36 = MEMORY[0x277D84F90];
      sub_22279EF20();
      sub_222782C2C(0, &qword_27D019DE8, 0x277CCABB0);
      v19 = 32;
      do
      {
        sub_22279EDD0();
        sub_22279EF00();
        sub_22279EF30();
        sub_22279EF40();
        sub_22279EF10();
        v19 += 8;
        --v17;
      }

      while (v17);

      v20 = v36;
      v14 = a3;
      v16 = a9;
      v15 = a2;
    }

    else
    {

      v20 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v20 = 0;
  }

  v21 = v15;
  v22 = sub_22279EC00();
  v23 = sub_22279EC00();
  if (a7 >> 60 == 15)
  {
    v24 = 0;
    v25 = a12;
    if (v20)
    {
LABEL_10:
      sub_222782C2C(0, &qword_27D019DE8, 0x277CCABB0);
      v26 = sub_22279ED70();

      goto LABEL_13;
    }
  }

  else
  {
    v24 = sub_22279EC00();
    sub_22278AE64(a6, a7);
    v25 = a12;
    if (v20)
    {
      goto LABEL_10;
    }
  }

  v26 = 0;
LABEL_13:
  if (v25 >> 60 == 15)
  {
    v27 = 0;
  }

  else
  {
    v27 = sub_22279EC00();
    sub_22278AE64(a11, v25);
  }

  v28 = [objc_allocWithZone(COSEKey) initEC2WithAlgorithm:a8 curveIdentifier:a1 x:v22 y:v23 d:v24 keyOperations:v26 keyIdentifier:v27];

  sub_22278414C(a4, a5);
  result = sub_22278414C(v21, v14);
  *v16 = v28;
  return result;
}

uint64_t COSEKey.init(ec2CurveIdentifier:x:signBit:d:algorithm:keyOperations:keyIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, unint64_t a11)
{
  v11 = a7;
  v14 = a4;
  v15 = a3;
  v17 = a1;
  v18 = a9;
  if (a8)
  {
    v19 = *(a8 + 16);
    if (v19)
    {
      v34 = MEMORY[0x277D84F90];
      sub_22279EF20();
      sub_222782C2C(0, &qword_27D019DE8, 0x277CCABB0);
      v20 = 32;
      do
      {
        sub_22279EDD0();
        sub_22279EF00();
        sub_22279EF30();
        sub_22279EF40();
        sub_22279EF10();
        v20 += 8;
        --v19;
      }

      while (v19);

      v18 = a9;
      v21 = v34;
      v11 = a7;
      v15 = a3;
      v17 = a1;
      v14 = a4;
    }

    else
    {

      v21 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v21 = 0;
  }

  v22 = sub_22279EC00();
  if (a6 >> 60 == 15)
  {
    v33 = 0;
    v23 = a11;
    if (v21)
    {
LABEL_10:
      sub_222782C2C(0, &qword_27D019DE8, 0x277CCABB0);
      v24 = sub_22279ED70();

      goto LABEL_13;
    }
  }

  else
  {
    v33 = sub_22279EC00();
    sub_22278AE64(a5, a6);
    v23 = a11;
    if (v21)
    {
      goto LABEL_10;
    }
  }

  v24 = 0;
LABEL_13:
  if (v23 >> 60 == 15)
  {
    v25 = 0;
  }

  else
  {
    v25 = sub_22279EC00();
    sub_22278AE64(a10, v23);
  }

  v26 = [objc_allocWithZone(COSEKey) initEC2WithAlgorithm:v11 curveIdentifier:v17 x:v22 signBit:v14 & 1 d:v33 keyOperations:v24 keyIdentifier:v25];

  result = sub_22278414C(a2, v15);
  *v18 = v26;
  return result;
}

uint64_t COSEKey.init(okpCurveIdentifier:x:d:algorithm:keyOperations:keyIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, unint64_t a10)
{
  v10 = a6;
  v13 = a3;
  v15 = a9;
  if (a7)
  {
    v16 = *(a7 + 16);
    if (v16)
    {
      v31 = MEMORY[0x277D84F90];
      sub_22279EF20();
      sub_222782C2C(0, &qword_27D019DE8, 0x277CCABB0);
      v17 = 32;
      do
      {
        sub_22279EDD0();
        sub_22279EF00();
        sub_22279EF30();
        sub_22279EF40();
        sub_22279EF10();
        v17 += 8;
        --v16;
      }

      while (v16);

      v18 = v31;
      v13 = a3;
      v15 = a9;
      v10 = a6;
    }

    else
    {

      v18 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v18 = 0;
  }

  v19 = sub_22279EC00();
  if (a5 >> 60 == 15)
  {
    v20 = 0;
    v21 = a10;
    if (v18)
    {
LABEL_10:
      sub_222782C2C(0, &qword_27D019DE8, 0x277CCABB0);
      v22 = sub_22279ED70();

      goto LABEL_13;
    }
  }

  else
  {
    v20 = sub_22279EC00();
    sub_22278AE64(a4, a5);
    v21 = a10;
    if (v18)
    {
      goto LABEL_10;
    }
  }

  v22 = 0;
LABEL_13:
  if (v21 >> 60 == 15)
  {
    v23 = 0;
  }

  else
  {
    v23 = sub_22279EC00();
    sub_22278AE64(a8, v21);
  }

  v24 = [objc_allocWithZone(COSEKey) initOKPWithAlgorithm:v10 curveIdentifier:a1 x:v19 d:v20 keyOperations:v22 keyIdentifier:v23];

  result = sub_22278414C(a2, v13);
  *v15 = v24;
  return result;
}

void COSEKey.ec2.getter(void *a1@<X8>)
{
  v3 = *v1;
  if ([*v1 type] == 2 && (v4 = objc_msgSend(v3, sel_ecCurveIdentifier)) != 0)
  {
    v5 = v4;
    v6 = [v4 integerValue];
    v7 = [v3 ecCurveX];
    if (v7)
    {
      v8 = v7;
      v9 = sub_22279EC10();
      v11 = v10;
    }

    else
    {
      v9 = 0;
      v11 = 0xC000000000000000;
    }

    v16 = [v3 ecCurveY];
    if (v16)
    {
      v17 = v16;
      v12 = sub_22279EC10();
      v13 = v18;
    }

    else
    {
      v12 = 0;
      v13 = 0xC000000000000000;
    }

    v19 = [v3 ecCurveD];
    if (v19)
    {
      v20 = v19;
      v14 = sub_22279EC10();
      v15 = v21;
    }

    else
    {

      v14 = 0;
      v15 = 0xC000000000000000;
    }
  }

  else
  {
    v6 = 0;
    v9 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v11 = 0xF000000000000000;
  }

  *a1 = v6;
  a1[1] = v9;
  a1[2] = v11;
  a1[3] = v12;
  a1[4] = v13;
  a1[5] = v14;
  a1[6] = v15;
}

void COSEKey.okp.getter(void *a1@<X8>)
{
  v3 = *v1;
  if ([*v1 type] == 1 && (v4 = objc_msgSend(v3, sel_okpCurveIdentifier)) != 0)
  {
    v5 = v4;
    v6 = [v4 integerValue];
    v7 = [v3 okpCurveX];
    if (v7)
    {
      v8 = v7;
      v9 = sub_22279EC10();
      v11 = v10;
    }

    else
    {
      v9 = 0;
      v11 = 0xC000000000000000;
    }

    v14 = [v3 okpCurveD];
    if (v14)
    {
      v15 = v14;
      v12 = sub_22279EC10();
      v13 = v16;
    }

    else
    {

      v12 = 0;
      v13 = 0xC000000000000000;
    }
  }

  else
  {
    v6 = 0;
    v9 = 0;
    v12 = 0;
    v13 = 0;
    v11 = 0xF000000000000000;
  }

  *a1 = v6;
  a1[1] = v9;
  a1[2] = v11;
  a1[3] = v12;
  a1[4] = v13;
}

uint64_t sub_222786C48(SEL *a1)
{
  v2 = [*v1 *a1];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_22279EC10();

  return v4;
}

uint64_t sub_222786CBC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, Class *a3@<X2>, void *a4@<X8>)
{
  v7 = objc_allocWithZone(*a3);
  v8 = sub_22279EC00();
  v9 = [v7 initWithData_];

  result = sub_22278414C(a1, a2);
  *a4 = v9;
  return result;
}

uint64_t sub_222786D5C@<X0>(void *a1@<X0>, Class *a2@<X1>, void *a3@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22279F500();
  if (!v3)
  {
    __swift_project_boxed_opaque_existential_1(v14, v14[3]);
    sub_222784278();
    sub_22279F2A0();
    v7 = v15;
    v8 = [objc_allocWithZone(*a2) initWithCBOR_];
    if (v8)
    {
      v9 = v8;

      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      *a3 = v9;
    }

    else
    {
      v11 = sub_22279EEB0();
      swift_allocError();
      v13 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450);
      *v13 = sub_222782C2C(0, &qword_27D019EA8, off_2784B4118);
      sub_22279EE90();
      (*(*(v11 - 8) + 104))(v13, *MEMORY[0x277D84160], v11);
      swift_willThrow();

      __swift_destroy_boxed_opaque_existential_1Tm(v14);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t COSEKey.encode(to:)(void *a1)
{
  v2 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22279F530();
  v3 = [objc_opt_self() cborWithCOSEKey_];
  v5[6] = v3;
  __swift_mutable_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_22278AECC();
  sub_22279F2D0();

  return __swift_destroy_boxed_opaque_existential_1Tm(v5);
}

uint64_t CBOR.InitError.hashValue.getter()
{
  v1 = *v0;
  sub_22279F4C0();
  MEMORY[0x223DC0720](v1);
  return sub_22279F4F0();
}

uint64_t sub_2227870B4()
{
  v1 = *v0;
  sub_22279F4C0();
  MEMORY[0x223DC0720](v1);
  return sub_22279F4F0();
}

uint64_t sub_2227870FC(uint64_t a1)
{
  v2 = *v1;
  sub_22279F4C0();
  MEMORY[0x223DC0720](v2);
  return sub_22279F4F0();
}

id CBOR.init<A>(_:tag:fullDate:)(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_22279EC40();
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = *(a5 - 8);
  MEMORY[0x28223BE20](v13);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = 0;
  if (a3)
  {
LABEL_7:
    if (a5 == MEMORY[0x277D83B88])
    {
      v22 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v23 = v44;
      (*(v44 + 16))(v18, a1, MEMORY[0x277D83B88]);
      swift_dynamicCast();
      v24 = [objc_opt_self() cborWithInteger_];
    }

    else if (a5 == MEMORY[0x277D84958])
    {
      v22 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v23 = v44;
      (*(v44 + 16))(v18, a1, MEMORY[0x277D84958]);
      swift_dynamicCast();
      v24 = [objc_opt_self() cborWithInteger_];
    }

    else if (a5 == MEMORY[0x277D849A8])
    {
      v22 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v23 = v44;
      (*(v44 + 16))(v18, a1, MEMORY[0x277D849A8]);
      swift_dynamicCast();
      v24 = [objc_opt_self() cborWithInteger_];
    }

    else if (a5 == MEMORY[0x277D84A28])
    {
      v22 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v23 = v44;
      (*(v44 + 16))(v18, a1, MEMORY[0x277D84A28]);
      swift_dynamicCast();
      v24 = [objc_opt_self() cborWithInteger_];
    }

    else if (a5 == MEMORY[0x277D83E88])
    {
      v22 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v23 = v44;
      (*(v44 + 16))(v18, a1, MEMORY[0x277D83E88]);
      swift_dynamicCast();
      v24 = [objc_opt_self() cborWithUnsignedInteger_];
    }

    else if (a5 == MEMORY[0x277D84C58])
    {
      v22 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v23 = v44;
      (*(v44 + 16))(v18, a1, MEMORY[0x277D84C58]);
      swift_dynamicCast();
      v24 = [objc_opt_self() cborWithUnsignedInteger_];
    }

    else if (a5 == MEMORY[0x277D84CC0])
    {
      v22 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v23 = v44;
      (*(v44 + 16))(v18, a1, MEMORY[0x277D84CC0]);
      swift_dynamicCast();
      v24 = [objc_opt_self() cborWithUnsignedInteger_];
    }

    else if (a5 == MEMORY[0x277D84D38])
    {
      v22 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v23 = v44;
      (*(v44 + 16))(v18, a1, MEMORY[0x277D84D38]);
      swift_dynamicCast();
      v24 = [objc_opt_self() cborWithUnsignedInteger_];
    }

    else if (a5 == MEMORY[0x277D83A90])
    {
      v22 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v23 = v44;
      (*(v44 + 16))(v18, a1, MEMORY[0x277D83A90]);
      swift_dynamicCast();
      v25 = LODWORD(v46);
      v26 = objc_opt_self();
      LODWORD(v27) = v25;
      v24 = [v26 cborWithFloat_];
    }

    else
    {
      if (a5 != MEMORY[0x277D839F8])
      {
        if (a5 == MEMORY[0x277D837D0])
        {
          v32 = objc_allocWithZone(swift_getObjCClassFromMetadata());
          v23 = v44;
          (*(v44 + 16))(v18, a1, MEMORY[0x277D837D0]);
          swift_dynamicCast();
          v33 = sub_22279ECA0();

          v28 = [objc_opt_self() cborWithUTF8String_];
        }

        else
        {
          if (a5 != MEMORY[0x277CC9318])
          {
            if (v12 != a5)
            {
              v20 = 0;
              goto LABEL_5;
            }

            v37 = v16;
            if (a4 == 2)
            {
              (*(v44 + 16))(v18, a1, a5);
              swift_dynamicCast();
              v38 = sub_22279EC20();
              v39 = objc_opt_self();
            }

            else
            {
              (*(v44 + 16))(v18, a1, a5);
              swift_dynamicCast();
              v38 = sub_22279EC20();
              v39 = objc_opt_self();
              if (a4)
              {
                v40 = [v39 cborWithFullDate_];
LABEL_43:
                v41 = v40;

                (*(v37 + 8))(v15, v12);
                v42 = objc_allocWithZone(swift_getObjCClassFromMetadata());
                v28 = v41;
                v30 = v45;
                v6 = [v42 initWithCbor:v28 tag:v45];

                v23 = v44;
                goto LABEL_33;
              }
            }

            v40 = [v39 cborWithDateTime_];
            goto LABEL_43;
          }

          v32 = objc_allocWithZone(swift_getObjCClassFromMetadata());
          v23 = v44;
          (*(v44 + 16))(v18, a1, MEMORY[0x277CC9318]);
          swift_dynamicCast();
          v34 = *&v46;
          v35 = v47;
          v36 = sub_22279EC00();
          v28 = [objc_opt_self() cborWithData_];

          sub_22278414C(v34, v35);
        }

        v29 = v32;
LABEL_32:
        v30 = v45;
        v6 = [v29 initWithCbor:v28 tag:v45];
LABEL_33:

        (*(v23 + 8))(a1, a5);
        return v6;
      }

      v22 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v23 = v44;
      (*(v44 + 16))(v18, a1, MEMORY[0x277D839F8]);
      swift_dynamicCast();
      v24 = [objc_opt_self() cborWithDouble_];
    }

    v28 = v24;
    v29 = v22;
    goto LABEL_32;
  }

  v19 = v16;
  v45 = [objc_opt_self() cborWithInteger_];
  if (a2 != 24 || a5 == MEMORY[0x277CC9318])
  {
    v16 = v19;
    goto LABEL_7;
  }

  v20 = 1;
LABEL_5:
  sub_22278AFC8();
  swift_allocError();
  *v21 = v20;
  swift_willThrow();

  (*(v44 + 8))(a1, a5);
  return v6;
}

double sub_222787BC4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_222794ED0(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2227898C4();
      v9 = v13;
    }

    v10 = *(v9 + 48);
    v11 = sub_22279EF70();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    sub_2227828C4((*(v9 + 56) + 32 * v7), a2);
    sub_222788D54(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_222787CA0(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = sub_222794F78(a1);
    if (v14)
    {
      v3 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v1;
      v17 = *v1;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        sub_2227891AC(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_222789CEC();
      v8 = v17;
      goto LABEL_10;
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

  v5 = a1;
  v6 = sub_22279EFB0();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = sub_22279EFA0();
  v8 = sub_222787DEC(v4, v7);

  v9 = sub_222794F78(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_2227891AC(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

uint64_t sub_222787DEC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D70, &qword_2227A0650);
    v2 = sub_22279F010();
    v19 = v2;
    sub_22279EF90();
    v3 = sub_22279EFC0();
    if (v3)
    {
      v4 = v3;
      sub_222782C2C(0, qword_280BC4448, off_2784B4108);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_22278887C(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_22279EDE0();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_22279EFC0();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

uint64_t sub_222788018(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D58, &qword_2227A0640);
    v2 = sub_22279F010();
    v19 = v2;
    sub_22279EF90();
    if (sub_22279EFC0())
    {
      v4 = v3;
      sub_222782C2C(0, qword_280BC4448, off_2784B4108);
      do
      {
        swift_dynamicCast();
        v13 = *(v2 + 16);
        if (*(v2 + 24) <= v13)
        {
          sub_222788AE4(v13 + 1, 1);
        }

        v2 = v19;
        result = sub_22279EDE0();
        v6 = v19 + 64;
        v7 = -1 << *(v19 + 32);
        v8 = result & ~v7;
        v9 = v8 >> 6;
        if (((-1 << v8) & ~*(v19 + 64 + 8 * (v8 >> 6))) != 0)
        {
          v10 = __clz(__rbit64((-1 << v8) & ~*(v19 + 64 + 8 * (v8 >> 6)))) | v8 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v14 = 0;
          v15 = (63 - v7) >> 6;
          do
          {
            if (++v9 == v15 && (v14 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v16 = v9 == v15;
            if (v9 == v15)
            {
              v9 = 0;
            }

            v14 |= v16;
            v17 = *(v6 + 8 * v9);
          }

          while (v17 == -1);
          v10 = __clz(__rbit64(~v17)) + (v9 << 6);
        }

        *(v6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
        *(*(v19 + 48) + 8 * v10) = v18;
        *(*(v19 + 56) + 8 * v10) = v4;
        ++*(v19 + 16);
        v11 = sub_22279EFC0();
        v4 = v12;
      }

      while (v11);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

uint64_t sub_222788224(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_22279EF70();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019E18, &qword_2227A06B0);
  v39 = v4;
  result = sub_22279F000();
  v11 = result;
  if (*(v9 + 16))
  {
    v42 = v8;
    v43 = v5;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    v38 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v41 = *(v6 + 72);
      v25 = v24 + v41 * v23;
      if (v39)
      {
        (*v40)(v42, v25, v43);
        sub_2227828C4((*(v9 + 56) + 32 * v23), v44);
      }

      else
      {
        (*v36)(v42, v25, v43);
        sub_22278B474(*(v9 + 56) + 32 * v23, v44);
      }

      result = sub_22279EC80();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v6 = v37;
        v9 = v38;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v6 = v37;
      v9 = v38;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v40)((*(v11 + 48) + v41 * v19), v42, v43);
      result = sub_2227828C4(v44, (*(v11 + 56) + 32 * v19));
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_2227885C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019DF8, &qword_2227A0690);
  result = sub_22279F000();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_2227828C4((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_2227829D0(v23, &v36);
        sub_22278B474(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_22279EE30();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_2227828C4(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_22278887C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D70, &qword_2227A0650);
  result = sub_22279F000();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v2;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
        v23 = v21;
      }

      result = sub_22279EDE0();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_222788AE4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D58, &qword_2227A0640);
  result = sub_22279F000();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
        swift_unknownObjectRetain();
      }

      result = sub_22279EDE0();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_222788D54(int64_t a1, uint64_t a2)
{
  v4 = sub_22279EF70();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = sub_22279EE20();
    v14 = v12;
    v38 = (v13 + 1) & v12;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v39 = *(v15 + 56);
    v36 = (v15 - 8);
    v37 = v16;
    do
    {
      v17 = v9;
      v18 = v39 * v11;
      v19 = v14;
      v20 = v15;
      v37(v8, *(a2 + 48) + v39 * v11, v4);
      v21 = sub_22279EC80();
      result = (*v36)(v8, v4);
      v14 = v19;
      v22 = v21 & v19;
      if (a1 >= v38)
      {
        if (v22 >= v38 && a1 >= v22)
        {
LABEL_15:
          v25 = *(a2 + 48);
          result = v25 + v39 * a1;
          v26 = v25 + v18 + v39;
          v27 = v39 * a1 < v18 || result >= v26;
          v15 = v20;
          if (v27)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v14 = v19;
            v9 = v17;
          }

          else
          {
            v28 = v39 * a1 == v18;
            v9 = v17;
            if (!v28)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v19;
            }
          }

          v29 = *(a2 + 56);
          v30 = (v29 + 32 * a1);
          v31 = (v29 + 32 * v11);
          if (a1 != v11 || v30 >= v31 + 2)
          {
            v32 = v31[1];
            *v30 = *v31;
            v30[1] = v32;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v38 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v15 = v20;
      v9 = v17;
LABEL_4:
      v11 = (v11 + 1) & v14;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_222789008(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22279EE20() + 1) & ~v5;
    do
    {
      sub_2227829D0(*(a2 + 48) + 40 * v6, v25);
      v10 = sub_22279EE30();
      result = sub_22278291C(v25);
      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = v14 + 40 * v3;
          v16 = (v14 + 40 * v6);
          if (v3 != v6 || v15 >= v16 + 40)
          {
            v17 = *v16;
            v18 = v16[1];
            *(v15 + 32) = *(v16 + 4);
            *v15 = v17;
            *(v15 + 16) = v18;
          }

          v19 = *(a2 + 56);
          v20 = (v19 + 32 * v3);
          v21 = (v19 + 32 * v6);
          if (v3 != v6 || v20 >= v21 + 2)
          {
            v9 = v21[1];
            *v20 = *v21;
            v20[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

void sub_2227891AC(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22279EE20() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      v10 = sub_22279EDE0();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = *(a2 + 48);
          v15 = (v14 + 8 * v3);
          v16 = (v14 + 8 * v6);
          if (v3 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 8 * v3);
          v19 = (v17 + 8 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

_OWORD *sub_222789338(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_22279EF70();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_222794ED0(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_2227898C4();
      goto LABEL_7;
    }

    sub_222788224(v17, a3 & 1);
    v23 = sub_222794ED0(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_222789804(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_22279F470();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = (v20[7] + 32 * v14);
  __swift_destroy_boxed_opaque_existential_1Tm(v21);

  return sub_2227828C4(a1, v21);
}

id sub_222789510(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_222794F78(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_22278887C(v13, a3 & 1);
      v8 = sub_222794F78(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_222782C2C(0, qword_280BC4448, off_2784B4108);
        sub_22279F470();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v16 = v8;
      sub_222789CEC();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v19 = v18[2];
  v12 = __OFADD__(v19, 1);
  v20 = v19 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v20;

  return a2;
}

id sub_222789688(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_222794F78(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_222788AE4(v13, a3 & 1);
      v8 = sub_222794F78(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_222782C2C(0, qword_280BC4448, off_2784B4108);
        result = sub_22279F470();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      sub_222789E4C();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;

    return swift_unknownObjectRelease();
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v20 = v18[2];
  v12 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v21;

  return a2;
}

_OWORD *sub_222789804(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_22279EF70();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_2227828C4(a3, (a4[7] + 32 * a1));
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

void *sub_2227898C4()
{
  v1 = v0;
  v26 = sub_22279EF70();
  v28 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v25 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019E18, &qword_2227A06B0);
  v3 = *v0;
  v4 = sub_22279EFF0();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24[0] = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v7 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v27 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v24[1] = v28 + 32;
    v24[2] = v28 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v29 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v28;
        v20 = *(v28 + 72) * v18;
        v21 = v25;
        v22 = v26;
        (*(v28 + 16))(v25, *(v3 + 48) + v20, v26);
        v18 *= 32;
        sub_22278B474(*(v3 + 56) + v18, v30);
        v23 = v27;
        (*(v19 + 32))(*(v27 + 48) + v20, v21, v22);
        result = sub_2227828C4(v30, (*(v23 + 56) + v18));
        v13 = v29;
      }

      while (v29);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v24[0];
        v5 = v27;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v29 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_222789B48()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019DF8, &qword_2227A0690);
  v2 = *v0;
  v3 = sub_22279EFF0();
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
        v18 = 40 * v17;
        sub_2227829D0(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_22278B474(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_2227828C4(v22, (*(v4 + 56) + v17));
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