uint64_t sub_2303EBAB0(void **a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = *a1;

  v6 = v5;
  return XPCDictionary.subscript.setter(v5, v3, v4);
}

uint64_t XPCDictionary.subscript.setter(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = sub_23041B928();
    v6 = *v3;
    v7 = xpc_dictionary_get_remote_connection(*v3);
    type metadata accessor for XPCObjectEncoder();
    v8 = swift_allocObject();
    if (v7)
    {
      swift_unknownObjectRetain();
      XPCObjectEncoder.init(underlyingConnection:)();
    }

    else
    {
      *(v8 + 16) = 0;
    }

    v11 = sub_2303E5BD4(v5);

    v12 = sub_23041BE38();
    swift_unknownObjectRetain();

    xpc_dictionary_set_value(v6, (v12 + 32), v11);

    swift_unknownObjectRelease();

    swift_unknownObjectRelease_n();
  }

  else
  {
    v9 = *v3;
    v10 = sub_23041BE38();

    xpc_dictionary_set_value(v9, (v10 + 32), 0);
  }
}

void (*XPCDictionary.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1, char a2)
{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  *a1 = XPCDictionary.subscript.getter(a2);
  return sub_2303EBDEC;
}

void sub_2303EBDEC(uint64_t a1, char a2)
{
  v2 = *(a1 + 16);
  v3 = *a1;
  v4 = *(a1 + 8);
  if (a2)
  {

    v5 = v3;
    XPCDictionary.subscript.setter(v3, v4, v2);
  }

  else
  {

    XPCDictionary.subscript.setter(v3, v4, v2);
  }
}

uint64_t XPCDictionary.subscript.getter@<X0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = sub_23041BE38();
  v6 = xpc_dictionary_get_value(v4, (v5 + 32));

  if (v6)
  {
    xpc_uuid_get_uuid(_:)(v6);
    if (v7)
    {
      v8 = 1;
    }

    else
    {
      sub_23041BA78();
      v8 = 0;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 1;
  }

  v9 = sub_23041BAA8();
  v10 = *(*(v9 - 8) + 56);

  return v10(a2, v8, 1, v9);
}

{
  v4 = *v2;
  v5 = sub_23041BE38();
  v6 = xpc_dictionary_get_value(v4, (v5 + 32));

  if (v6)
  {
    xpc_uuid_get_uuid(_:)(v6);
    if (v7)
    {
      v8 = 1;
    }

    else
    {
      sub_23041BA78();
      v8 = 0;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 1;
  }

  v9 = sub_23041BAA8();
  v10 = *(*(v9 - 8) + 56);

  return v10(a2, v8, 1, v9);
}

uint64_t sub_2303EC0E4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB4FE40, &qword_23041F4B0);
  MEMORY[0x28223BE28](v5 - 8);
  v7 = &v11 - v6;
  v9 = *a3;
  v8 = a3[1];
  sub_2303BA588(a1, &v11 - v6, &unk_27DB4FE40, &qword_23041F4B0);

  return XPCDictionary.subscript.setter(v7, v9, v8);
}

void (*XPCDictionary.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB4FE40, &qword_23041F4B0) - 8) + 64);
  if (v7)
  {
    v9[3] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v9[3] = malloc(v10);
    v11 = malloc(v10);
  }

  v12 = v11;
  v9[4] = v11;
  v13 = *v3;
  v14 = sub_23041BE38();
  v15 = xpc_dictionary_get_value(v13, (v14 + 32));

  if (v15)
  {
    xpc_uuid_get_uuid(_:)(v15);
    if (v16)
    {
      v17 = 1;
    }

    else
    {
      sub_23041BA78();
      v17 = 0;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 1;
  }

  v18 = sub_23041BAA8();
  (*(*(v18 - 8) + 56))(v12, v17, 1, v18);
  return sub_2303EC5B4;
}

{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x58uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  v10 = sub_23041BA38();
  v9[3] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v9[4] = v11;
  v13 = *(v11 + 64);
  if (v7)
  {
    v9[5] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v9[5] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v9[6] = v14;
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB501E0, &qword_23041E8F0) - 8) + 64);
  if (v7)
  {
    v9[7] = swift_coroFrameAlloc();
    v9[8] = swift_coroFrameAlloc();
    v9[9] = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v9[7] = malloc(v15);
    v9[8] = malloc(v15);
    v9[9] = malloc(v15);
    v16 = malloc(v15);
  }

  v17 = v16;
  v9[10] = v16;
  v18 = *v3;
  v19 = sub_23041BE38();
  v20 = xpc_dictionary_get_value(v18, (v19 + 32));

  if (v20)
  {
    swift_getObjectType();
    OS_xpc_object.type.getter();
  }

  (*(v12 + 56))(v17, 1, 1, v10);
  return sub_2303ECED4;
}

void sub_2303EC5B4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  v5 = (*a1)[1];
  v6 = **a1;
  if (a2)
  {
    sub_2303BA588((*a1)[4], v3, &unk_27DB4FE40, &qword_23041F4B0);

    XPCDictionary.subscript.setter(v3, v6, v5);
    sub_2303BA754(v4, &unk_27DB4FE40, &qword_23041F4B0);
  }

  else
  {

    XPCDictionary.subscript.setter(v4, v6, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_2303EC68C@<X0>(uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = sub_23041BE38();
  v6 = xpc_dictionary_get_value(v4, (v5 + 32));

  if (v6)
  {
    swift_getObjectType();
    OS_xpc_object.type.getter();
  }

  v7 = sub_23041BA38();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2, 1, 1, v7);
}

uint64_t sub_2303EC77C@<X0>(void **a1@<X0>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = sub_23041BE38();
  v6 = xpc_dictionary_get_value(v4, (v5 + 32));

  if (v6)
  {
    swift_getObjectType();
    OS_xpc_object.type.getter();
  }

  v7 = sub_23041BA38();
  v8 = *(*(v7 - 8) + 56);

  return v8(a3, 1, 1, v7);
}

uint64_t sub_2303EC870(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v20[1] = a2;
  v5 = sub_23041BA38();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE28](v5);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB501E0, &qword_23041E8F0);
  v10 = MEMORY[0x28223BE28](v9 - 8);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE28](v10);
  v14 = v20 - v13;
  v15 = *a3;
  v16 = a3[1];
  sub_2303BA588(a1, v20 - v13, &qword_27DB501E0, &qword_23041E8F0);
  sub_2303BA588(v14, v12, &qword_27DB501E0, &qword_23041E8F0);
  if ((*(v6 + 48))(v12, 1, v5) == 1)
  {

    v17 = 0;
LABEL_5:
    XPCDictionary.subscript.setter(v17, v15, v16);
    return sub_2303BA754(v14, &qword_27DB501E0, &qword_23041E8F0);
  }

  (*(v6 + 32))(v8, v12, v5);

  sub_23041BA08();
  result = xpc_date_create_absolute();
  if (result)
  {
    v19 = result;
    (*(v6 + 8))(v8, v5);
    v17 = v19;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void sub_2303ECED4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[10];
  if ((a2 & 1) == 0)
  {
    v10 = v2[9];
    v11 = v2[3];
    v12 = v2[4];
    sub_2303BA588(v3, v10, &qword_27DB501E0, &qword_23041E8F0);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      v13 = v2[1];

      v14 = 0;
    }

    else
    {
      (*(v2[4] + 32))(v2[6], v2[9], v2[3]);

      sub_23041BA08();
      absolute = xpc_date_create_absolute();
      if (!absolute)
      {
        goto LABEL_16;
      }

      v24 = absolute;
      (*(v2[4] + 8))(v2[6], v2[3]);
      v13 = v2[1];
      v14 = v24;
    }

    v18 = v2[9];
    v17 = v2[10];
    v20 = v2[7];
    v19 = v2[8];
    v22 = v2[5];
    v21 = v2[6];
    XPCDictionary.subscript.setter(v14, *v2, v13);
    goto LABEL_12;
  }

  v5 = v2[7];
  v4 = v2[8];
  v6 = v2[3];
  v7 = v2[4];
  sub_2303BA588(v3, v4, &qword_27DB501E0, &qword_23041E8F0);
  sub_2303BA588(v4, v5, &qword_27DB501E0, &qword_23041E8F0);
  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    (*(v2[4] + 32))(v2[5], v2[7], v2[3]);

    sub_23041BA08();
    v15 = xpc_date_create_absolute();
    if (v15)
    {
      v16 = v15;
      (*(v2[4] + 8))(v2[5], v2[3]);
      v8 = v2[1];
      v9 = v16;
      goto LABEL_8;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    return;
  }

  v8 = v2[1];

  v9 = 0;
LABEL_8:
  v18 = v2[9];
  v17 = v2[10];
  v20 = v2[7];
  v19 = v2[8];
  v22 = v2[5];
  v21 = v2[6];
  XPCDictionary.subscript.setter(v9, *v2, v8);
  sub_2303BA754(v19, &qword_27DB501E0, &qword_23041E8F0);
LABEL_12:
  sub_2303BA754(v17, &qword_27DB501E0, &qword_23041E8F0);
  free(v17);
  free(v18);
  free(v19);
  free(v20);
  free(v21);
  free(v22);

  free(v2);
}

uint64_t XPCDictionary.copy(into:)(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *v1;
  v6 = swift_allocObject();
  v6[2] = v3;
  v6[3] = v2;
  v6[4] = v4;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_2303D02F0;
  *(v7 + 24) = v6;
  v10[4] = sub_2303F143C;
  v10[5] = v7;
  v10[0] = MEMORY[0x277D85DD8];
  v10[1] = 1107296256;
  v10[2] = sub_2303C0524;
  v10[3] = &block_descriptor_9_0;
  v8 = _Block_copy(v10);
  swift_unknownObjectRetain();

  xpc_dictionary_apply(v5, v8);
  _Block_release(v8);
  LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

  if (v5)
  {
    __break(1u);
  }

  return result;
}

uint64_t XPCDictionary.forEach(_:)(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  sub_2303ED3E4(sub_2303F1444, v7, v6);
  if (v3)
  {
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (!isEscapingClosureAtFileLocation)
    {
      return result;
    }

    __break(1u);
  }

  v10 = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  return result;
}

{
  v9[3] = a2;
  v4 = *v2;
  v9[2] = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_2303F1444;
  *(v5 + 24) = v9;
  sub_2303ED3E4(sub_2303F1860, v5, v4);
  if (v3)
  {
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (!isEscapingClosureAtFileLocation)
    {
      return result;
    }

    __break(1u);
  }

  v8 = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2303ED3E4(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = 0;
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = &v11;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_2303F1774;
  *(v7 + 24) = v6;
  aBlock[4] = sub_2303F185C;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2303C0524;
  aBlock[3] = &block_descriptor_104;
  v8 = _Block_copy(aBlock);

  xpc_dictionary_apply(a3, v8);
  _Block_release(v8);
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
  }

  else if (v11)
  {
    swift_willThrow();
  }

  else
  {
  }

  return result;
}

uint64_t sub_2303ED570(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = sub_23041BE98();
  a3(v4);

  return 1;
}

char *sub_2303ED6F0(uint64_t a1, uint64_t a2, xpc_object_t xdict)
{
  count = xpc_dictionary_get_count(xdict);
  v8 = MEMORY[0x277D84F90];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || count > *(v8 + 3) >> 1)
  {
    if (*(v8 + 2) <= count)
    {
      v10 = count;
    }

    else
    {
      v10 = *(v8 + 2);
    }

    isUniquelyReferenced_nonNull_native = sub_2304063C0(isUniquelyReferenced_nonNull_native, v10, 0, v8);
    v8 = isUniquelyReferenced_nonNull_native;
  }

  v18 = v8;
  v11 = MEMORY[0x28223BE28](isUniquelyReferenced_nonNull_native);
  v17[6] = &v18;
  v17[7] = a1;
  v17[8] = a2;
  MEMORY[0x28223BE28](v11);
  v17[2] = sub_2303F1754;
  v17[3] = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_2303F1860;
  *(v13 + 24) = v17;
  sub_2303ED3E4(sub_2303F1860, v13, xdict);
  if (v3)
  {
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
    }

    __break(1u);
    goto LABEL_14;
  }

  v16 = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  return v18;
}

uint64_t sub_2303ED8C8(uint64_t a1, uint64_t a2, xpc_object_t xdict)
{
  v17 = MEMORY[0x277D84F90];
  count = xpc_dictionary_get_count(xdict);
  sub_2303EDBB0(count);
  v14 = &v17;
  v15 = a1;
  v16 = a2;
  v12[2] = sub_2303F1734;
  v12[3] = &v13;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_2303F1860;
  *(v8 + 24) = v12;
  sub_2303ED3E4(sub_2303F1860, v8, xdict);
  if (v3)
  {
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
    }

    __break(1u);
    goto LABEL_8;
  }

  v11 = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  return v17;
}

uint64_t XPCDictionary.map<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v21 = sub_23041BC88();
  xpc_dictionary_get_count(v7);
  sub_23041C048();
  sub_23041BFB8();
  v17 = a3;
  v18 = &v21;
  v19 = a1;
  v20 = a2;
  v14 = sub_2303F146C;
  v15 = &v16;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_2303F1860;
  *(v8 + 24) = &v13;
  sub_2303ED3E4(sub_2303F1860, v8, v7);
  if (v12)
  {
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
    }

    __break(1u);
    goto LABEL_8;
  }

  v11 = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  return v21;
}

uint64_t sub_2303EDBB0(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
LABEL_8:
    sub_23041C3E8();
LABEL_9:
    result = sub_23041C2C8();
    v3 = result;
    goto LABEL_10;
  }

  if (a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_9;
  }

LABEL_10:
  *v1 = v3;
  return result;
}

uint64_t sub_2303EDC4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(void *__return_ptr, uint64_t, uint64_t, uint64_t))
{
  result = a5(v14, a1, a2, a3);
  if (!v5)
  {
    v8 = v14[0];
    v9 = v14[1];
    v10 = *a4;
    result = swift_isUniquelyReferenced_nonNull_native();
    *a4 = v10;
    if ((result & 1) == 0)
    {
      result = sub_2304063C0(0, *(v10 + 16) + 1, 1, v10);
      v10 = result;
      *a4 = result;
    }

    v12 = *(v10 + 16);
    v11 = *(v10 + 24);
    if (v12 >= v11 >> 1)
    {
      result = sub_2304063C0((v11 > 1), v12 + 1, 1, v10);
      v10 = result;
      *a4 = result;
    }

    *(v10 + 16) = v12 + 1;
    v13 = v10 + 16 * v12;
    *(v13 + 32) = v8;
    *(v13 + 40) = v9;
  }

  return result;
}

void *sub_2303EDD28(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *(*a5)(uint64_t *__return_ptr))
{
  result = (a5)(&v8, a1, a2, a3);
  if (!v5)
  {
    MEMORY[0x231915610](result);
    if (*((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23041BFC8();
    }

    return sub_23041C008();
  }

  return result;
}

uint64_t sub_2303EDDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = MEMORY[0x28223BE28](a1);
  result = v9(v8);
  if (!v7)
  {
    sub_23041C048();
    return sub_23041C028();
  }

  return result;
}

uint64_t sub_2303EDEBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
}

uint64_t *XPCDictionary.sideChannel.getter()
{
  v2 = *v0;
  v3 = sub_23041BE38();
  v4 = xpc_dictionary_get_value(v2, (v3 + 32));

  if (!v4)
  {
    return 0;
  }

  v5 = XPCDictionary.underlyingConnection.getter();
  if (v5)
  {
    v6 = v5;
    type metadata accessor for XPCObjectDecoder();
    *(swift_initStackObject() + 16) = v6;

    v7 = sub_2303E6330(v4);

    swift_unknownObjectRelease();
    swift_setDeallocating();

    if (!v1)
    {
      return v7;
    }
  }

  else
  {
    sub_2303BCF70();
    swift_allocError();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB50610, &unk_23041F090);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23041E310;
    *(inited + 32) = sub_23041BDD8();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = v10;
    *(inited + 48) = 0xD00000000000001FLL;
    *(inited + 56) = 0x8000000230423330;
    v11 = sub_2303BA458(inited);
    swift_setDeallocating();
    sub_2303BA754(inited + 32, &qword_27DB501B0, &unk_23041E8E0);
    v12 = sub_2303BAF24(0x3E9);
    XPCError.init(code:userInfo:)(v12, v11);
    swift_willThrow();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t XPCDictionary.setSideChannel(_:withUnderlyingConnection:)(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  type metadata accessor for XPCObjectEncoder();
  *(swift_initStackObject() + 16) = a2;

  v7 = sub_2303E5DC8(a1);
  if (!v3)
  {
    v8 = v7;
    v9 = sub_23041BE38();
    xpc_dictionary_set_value(v6, (v9 + 32), v8);

    swift_unknownObjectRelease();
  }
}

uint64_t XPCDictionary.hashValue.getter()
{
  v1 = *v0;
  sub_23041CB48();
  v2 = xpc_hash(v1);
  MEMORY[0x2319161D0](v2);
  return sub_23041CB78();
}

uint64_t sub_2303EE2BC()
{
  v1 = *v0;
  sub_23041CB48();
  v2 = xpc_hash(v1);
  MEMORY[0x2319161D0](v2);
  return sub_23041CB78();
}

uint64_t sub_2303EE338(uint64_t a1)
{
  v2 = *v1;
  sub_23041CB48();
  v3 = xpc_hash(v2);
  MEMORY[0x2319161D0](v3);
  return sub_23041CB78();
}

uint64_t XPCDictionary.debugDescription.getter()
{
  v1 = MEMORY[0x231916FC0](*v0);
  v2 = sub_23041BE98();
  free(v1);
  return v2;
}

uint64_t sub_2303EE3CC()
{
  v1 = MEMORY[0x231916FC0](*v0);
  v2 = sub_23041BE98();
  free(v1);
  return v2;
}

uint64_t XPCDictionary.decode<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = XPCDictionary.underlyingConnection.getter();
  type metadata accessor for XPCObjectDecoder();
  *(swift_allocObject() + 16) = v7;

  XPCObjectDecoder.decode<A>(_:from:)(a2, v6, a2, a3);
}

void XPCDictionary.init(nsDictionary:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_2303EE528(a1);

  *a2 = v4;
  a2[1] = 0xD000000000000019;
  a2[2] = 0x8000000230422830;
}

xpc_object_t sub_2303EE528(id a1)
{
  v3 = sub_23041B958();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE28](v3);
  v6 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23041BE18();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE28](v7);
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (v11)
  {
    v12 = v11;
    a1 = a1;
    [v12 timeIntervalSince1970];
    v14 = v13 * 1000000000.0;
    if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v14 > -9.22337204e18)
    {
      if (v14 < 9.22337204e18)
      {
        v15 = xpc_date_create(v14);
LABEL_6:
        v16 = v15;
LABEL_7:

        return v16;
      }

      goto LABEL_60;
    }

    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (v18)
  {
    v19 = v18;
    a1 = a1;
    v20 = sub_23041BDA8();
    v1 = [v19 hasPrefix_];

    if (v1)
    {
      v21 = sub_23041BDA8();
      v22 = sub_23041BDA8();
      v23 = [v19 stringByReplacingOccurrencesOfString:v21 withString:v22];

      if (!v23)
      {
        sub_23041BDD8();
        v23 = sub_23041BDA8();
      }

      v24 = [objc_allocWithZone(MEMORY[0x277CCAD78]) initWithUUIDString_];

      if (v24)
      {
        v16 = sub_2303EE528(v24);

        return v16;
      }

      goto LABEL_61;
    }

    v29 = sub_23041BDA8();
    v30 = [v19 hasPrefix_];

    if (!v30)
    {
      v38 = sub_23041BDA8();
      v1 = [v19 hasPrefix_];

      if (v1)
      {
        v39 = sub_23041BDA8();
        v40 = sub_23041BDA8();
        v41 = [v19 stringByReplacingOccurrencesOfString:v39 withString:v40];

        v42 = sub_23041BDD8();
        v44 = v43;

        v45 = sub_2303EF700(v42, v44);
        if ((v46 & 1) == 0)
        {
          v15 = xpc_uint64_create(v45);
          goto LABEL_6;
        }

        goto LABEL_63;
      }

      sub_23041BDF8();
      v47 = sub_23041BE08();
      (*(v8 + 8))(v10, v7);
      v48 = a1;
      v49 = [v19 cStringUsingEncoding_];
      v50 = v19;
      if (!v49)
      {
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      v51 = xpc_string_create(v49);

      return v51;
    }

    v31 = sub_23041BDA8();
    v32 = sub_23041BDA8();
    v33 = [v19 stringByReplacingOccurrencesOfString:v31 withString:v32];

    v34 = sub_23041BDD8();
    v36 = v35;

    if (v34 == 1702195828 && v36 == 0xE400000000000000 || (sub_23041C808() & 1) != 0)
    {

      v37 = 1;
LABEL_22:
      v15 = xpc_BOOL_create(v37);
      goto LABEL_6;
    }

    if (v34 == 0x65736C6166 && v36 == 0xE500000000000000)
    {

      v37 = 0;
      goto LABEL_22;
    }

    v59 = sub_23041C808();

    v37 = 0;
    if (v59)
    {
      goto LABEL_22;
    }

    __break(1u);
LABEL_47:
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v67 = a1;
      v60 = xpc_dictionary_create(0, 0, 0);
      sub_23041C078();
      sub_23041C088();
      if (v74)
      {
        v1 = v69;
        while (1)
        {
          sub_2303BA68C(&v73, v71);
          sub_2303BA68C(&v75, &v72);
          sub_2303BA588(v71, v69, &unk_27DB50230, &qword_23041FF38);
          sub_2303E42C4(0, &qword_27DB50560, 0x277CCACA8);
          if (!swift_dynamicCast())
          {
            goto LABEL_66;
          }

          v61 = v68;
          __swift_destroy_boxed_opaque_existential_1Tm(v70);
          sub_2303BA588(v71, v69, &unk_27DB50230, &qword_23041FF38);
          sub_2303E42C4(0, &unk_27DB50240, 0x277D82BB8);
          if (!swift_dynamicCast())
          {
            break;
          }

          v62 = v68;
          __swift_destroy_boxed_opaque_existential_1Tm(v69);
          v63 = [v61 UTF8String];
          if (!v63)
          {
            goto LABEL_62;
          }

          v64 = v63;
          v65 = sub_2303EE528(v62);
          xpc_dictionary_set_value(v60, v64, v65);

          swift_unknownObjectRelease();
          sub_2303BA754(v71, &unk_27DB50230, &qword_23041FF38);
          sub_23041C088();
          if (!v74)
          {
            goto LABEL_54;
          }
        }

        __swift_destroy_boxed_opaque_existential_1Tm(v69);
        goto LABEL_65;
      }

LABEL_54:

      return v60;
    }

LABEL_27:

    return xpc_null_create();
  }

  objc_opt_self();
  v25 = swift_dynamicCastObjCClass();
  if (v25)
  {
    v26 = v25;
    a1 = a1;
    v27 = sub_23041BFE8();
    v27[2] = 16;
    v27[5] = 0;
    v27[4] = 0;
    v28 = (v27 + 4);
    [v26 getUUIDBytes_];
    v16 = xpc_uuid_create(v28);

    goto LABEL_7;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    goto LABEL_27;
  }

  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    v55 = swift_dynamicCastObjCClass();
    if (v55)
    {
      v56 = v55;
      a1 = a1;
      Type = CFNumberGetType(v56);
      if (Type <= kCFNumberCGFloatType && ((1 << Type) & 0xCF80) == 0)
      {
        if (((1 << Type) & 0x13060) != 0)
        {
          [(__CFNumber *)v56 doubleValue];
          v15 = xpc_double_create(v58);
          goto LABEL_6;
        }

        if (((1 << Type) & 0x1E) != 0)
        {
          v15 = xpc_int64_create([(__CFNumber *)v56 longLongValue]);
          goto LABEL_6;
        }
      }

      v15 = xpc_uint64_create([(__CFNumber *)v56 unsignedLongLongValue]);
      goto LABEL_6;
    }

    goto LABEL_47;
  }

  v52 = a1;
  v53 = xpc_array_create(0, 0);
  sub_23041C198();
  sub_23041B948();
  if (v74)
  {
    while (1)
    {
      sub_2303BA68C(&v73, v71);
      sub_2303E42C4(0, &unk_27DB50240, 0x277D82BB8);
      if (!swift_dynamicCast())
      {
        break;
      }

      v54 = v69[0];
      v1 = sub_2303EE528(v69[0]);
      xpc_array_append_value(v53, v1);

      swift_unknownObjectRelease();
      sub_23041B948();
      if (!v74)
      {
        goto LABEL_36;
      }
    }

    while (1)
    {
LABEL_65:
      sub_23041C3D8();
      __break(1u);
LABEL_66:
      __swift_destroy_boxed_opaque_existential_1Tm(v1 + 4);
    }
  }

LABEL_36:
  (*(v4 + 8))(v6, v3);

  return v53;
}

NSDictionary_optional __swiftcall XPCDictionary.toNSDictionary()()
{
  v1 = sub_2303EEFB0(*v0);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {

    v2 = 0;
  }

  result.value.super.isa = v2;
  result.is_nil = v3;
  return result;
}

const char *sub_2303EEFB0(uint64_t isEscapingClosureAtFileLocation)
{
  v2 = sub_23041BE18();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE28](v2);
  v5 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x231917290](isEscapingClosureAtFileLocation);
  if (v6 == 0x1ED3F1DF0)
  {
    xpc_date_get_value(isEscapingClosureAtFileLocation);
    v7 = objc_allocWithZone(MEMORY[0x277CBEAA8]);
    v8 = sel_initWithTimeIntervalSince1970_;
    goto LABEL_15;
  }

  if (v6 == 0x1ED3F1E90)
  {
    result = xpc_string_get_string_ptr(isEscapingClosureAtFileLocation);
    if (!result)
    {
LABEL_41:
      __break(1u);
      return result;
    }

    isEscapingClosureAtFileLocation = result;
    sub_23041BDF8();
    v10 = sub_23041BE08();
    (*(v3 + 8))(v5, v2);
    result = [objc_allocWithZone(MEMORY[0x277CCACA8]) initWithCString:isEscapingClosureAtFileLocation encoding:v10];
    if (result)
    {
      return result;
    }

    __break(1u);
LABEL_21:
    v11 = [objc_allocWithZone(MEMORY[0x277CCAD78]) initWithUUIDBytes_];
    aBlock = 0;
    v35 = 0xE000000000000000;
    sub_23041C288();

    aBlock = 0x72756372654D5F5FLL;
    v35 = 0xEF5F444955555F79;
    v12 = [v11 UUIDString];
    v13 = sub_23041BDD8();
    v15 = v14;

    MEMORY[0x231915500](v13, v15);

    v16 = sub_23041BDA8();

    return v16;
  }

  if (v6 == 0x1ED3F1EE0)
  {
    goto LABEL_21;
  }

  if (v6 == 0x1ED3F1C60)
  {
    aBlock = 0;
    v35 = 0xE000000000000000;
    sub_23041C288();

    aBlock = 0x72756372654D5F5FLL;
    v35 = 0xEF5F4C4F4F425F79;
    value = xpc_BOOL_get_value(isEscapingClosureAtFileLocation);
    v18 = !value;
    if (value)
    {
      v19 = 1702195828;
    }

    else
    {
      v19 = 0x65736C6166;
    }

    if (v18)
    {
      v20 = 0xE500000000000000;
    }

    else
    {
      v20 = 0xE400000000000000;
    }

    v21 = v20;
  }

  else
  {
    if (v6 == 0x1ED3F1C10)
    {
      goto LABEL_11;
    }

    if (v6 == 0x1ED3F1CB0)
    {
      xpc_int64_get_value(isEscapingClosureAtFileLocation);
      v7 = objc_allocWithZone(MEMORY[0x277CCABB0]);
      v8 = sel_initWithLongLong_;

      return [v7 v8];
    }

    if (v6 != 0x1ED3F1D00)
    {
      if (v6 != 0x1ED3F1D50)
      {
        if (v6 == 0x1ED3F2020)
        {
          v23 = [objc_allocWithZone(MEMORY[0x277CBEB18]) init];
          v24 = swift_allocObject();
          *(v24 + 16) = v23;
          v25 = swift_allocObject();
          *(v25 + 16) = sub_2303F1678;
          *(v25 + 24) = v24;
          v38 = sub_2303F16C0;
          v39 = v25;
          aBlock = MEMORY[0x277D85DD8];
          v35 = 1107296256;
          v36 = sub_2303EFA00;
          v37 = &block_descriptor_84;
          v26 = _Block_copy(&aBlock);
          v27 = v23;

          xpc_array_apply(isEscapingClosureAtFileLocation, v26);
          _Block_release(v26);
          isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

          if ((isEscapingClosureAtFileLocation & 1) == 0)
          {
            return v27;
          }

          __break(1u);
        }

        else if (v6 != 0x1ED3F2070)
        {
LABEL_11:
          v7 = objc_allocWithZone(MEMORY[0x277CBEB68]);
          v8 = sel_init;

          return [v7 v8];
        }

        v28 = [objc_allocWithZone(MEMORY[0x277CBEB38]) init];
        v29 = swift_allocObject();
        *(v29 + 16) = v28;
        v30 = swift_allocObject();
        *(v30 + 16) = sub_2303F1670;
        *(v30 + 24) = v29;
        v38 = sub_2303F185C;
        v39 = v30;
        aBlock = MEMORY[0x277D85DD8];
        v35 = 1107296256;
        v36 = sub_2303C0524;
        v37 = &block_descriptor_75;
        v31 = _Block_copy(&aBlock);
        v27 = v28;

        xpc_dictionary_apply(isEscapingClosureAtFileLocation, v31);
        _Block_release(v31);
        v32 = swift_isEscapingClosureAtFileLocation();

        if ((v32 & 1) == 0)
        {
          return v27;
        }

        __break(1u);
        goto LABEL_41;
      }

      xpc_double_get_value(isEscapingClosureAtFileLocation);
      v7 = objc_allocWithZone(MEMORY[0x277CCABB0]);
      v8 = sel_initWithDouble_;
LABEL_15:

      return [v7 v8];
    }

    aBlock = 0;
    v35 = 0xE000000000000000;
    sub_23041C288();

    aBlock = 0x72756372654D5F5FLL;
    v35 = 0xEF5F746E49555F79;
    v33[1] = xpc_uint64_get_value(isEscapingClosureAtFileLocation);
    v19 = sub_23041C5C8();
  }

  MEMORY[0x231915500](v19, v21);

  v22 = sub_23041BDA8();

  return v22;
}

unint64_t sub_2303EF700(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v22[0] = result;
      v22[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v14 = v22 + 1;
            while (1)
            {
              v15 = *v14 - 48;
              if (v15 > 9)
              {
                break;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                break;
              }

              v9 = __CFADD__(10 * v6, v15);
              v6 = 10 * v6 + v15;
              if (v9)
              {
                break;
              }

              ++v14;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_74:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v17 = v22;
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = __CFADD__(10 * v6, v18);
            v6 = 10 * v6 + v18;
            if (v9)
            {
              break;
            }

            ++v17;
            if (!--v2)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_63;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v22 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = 10 * v6 >= v11;
            v6 = 10 * v6 - v11;
            if (!v9)
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_23041C368();
        v3 = v21;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v12 = (result + 1);
              while (1)
              {
                v13 = *v12 - 48;
                if (v13 > 9)
                {
                  goto LABEL_63;
                }

                if (!is_mul_ok(v6, 0xAuLL))
                {
                  goto LABEL_63;
                }

                v9 = __CFADD__(10 * v6, v13);
                v6 = 10 * v6 + v13;
                if (v9)
                {
                  goto LABEL_63;
                }

                ++v12;
                if (!--v3)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_62;
          }

          goto LABEL_63;
        }

        goto LABEL_73;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v16 = *result - 48;
              if (v16 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = __CFADD__(10 * v6, v16);
              v6 = 10 * v6 + v16;
              if (v9)
              {
                goto LABEL_63;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_63:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_64;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = 10 * v6 >= v8;
              v6 = 10 * v6 - v8;
              if (!v9)
              {
                goto LABEL_63;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_62:
          LOBYTE(v3) = 0;
LABEL_64:
          v23 = v3;
          v19 = v3;
          goto LABEL_65;
        }

        goto LABEL_63;
      }

      __break(1u);
    }

    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v6 = sub_2303F0360(result, a2, 10);
  v19 = v20;
LABEL_65:

  if (v19)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_2303EFA00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  swift_unknownObjectRetain();
  v6 = v5(a2, a3);
  swift_unknownObjectRelease();
  return v6 & 1;
}

uint64_t sub_2303EFA58(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_23041BE98();
  v7 = v6;
  v8 = sub_2303EEFB0(a2);
  [a3 __swift_setObject_forKeyedSubscript_];

  swift_unknownObjectRelease();
  return 1;
}

uint64_t sub_2303EFAE4(void *a1, uint64_t a2, int a3)
{
  v10 = a2;
  v12 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB501F8, &qword_23041FF20);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE28](v4);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB50200, &qword_23041FF28);
  sub_2303E4234(&qword_27DB50208, &qword_27DB50200, &qword_23041FF28, &unk_230420BF8);
  sub_23041CBC8();
  if (v12)
  {
    v14 = 0;
    sub_2303F15C8();
  }

  else
  {
    v11 = v10;
    v13 = 1;
    sub_2303F161C();
  }

  sub_23041C578();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2303EFCD4(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_2303EFD30(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_2303EFD30(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2303EFDFC(v11, 0, 0, 1, a1, a2);
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
    sub_2303BAEC8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_2303EFDFC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2303EFF08(a5, a6);
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
    result = sub_23041C368();
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

void *sub_2303EFF08(uint64_t a1, unint64_t a2)
{
  v3 = sub_2303EFF54(a1, a2);
  sub_2303F0084(&unk_284514618);
  return v3;
}

void *sub_2303EFF54(uint64_t a1, unint64_t a2)
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

  v6 = sub_2303F0170(v5, 0);
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

  result = sub_23041C368();
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
        v10 = sub_23041BEA8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2303F0170(v10, 0);
        result = sub_23041C268();
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

uint64_t sub_2303F0084(uint64_t result)
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

  result = sub_2303F01E4(result, v11, 1, v3);
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

void *sub_2303F0170(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB50500, &qword_23041FF40);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2303F01E4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB50500, &qword_23041FF40);
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

char *sub_2303F02D8(uint64_t a1, uint64_t a2)
{
  result = sub_23041B858();
  v5 = result;
  if (result)
  {
    result = sub_23041B878();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v5 += a1 - result;
  }

  v6 = __OFSUB__(a2, a1);
  v7 = a2 - a1;
  if (v6)
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = sub_23041B868();
  if (v8 >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  if (v5)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return xpc_data_create(v5, v10);
}

unsigned __int8 *sub_2303F0360(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = sub_23041BF08();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_2303F08E4(result, v5);
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_23041C368();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_129;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_2303F08E4(uint64_t a1, unint64_t a2)
{
  v2 = sub_23041BF18();
  v6 = sub_2303F0964(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_2303F0964(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_23041C1D8();
    if (!v9 || (v10 = v9, v11 = sub_2303F0170(v9, 0), v12 = sub_2303F0ABC(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_23041BE68();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_23041BE68();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_23041C368();
LABEL_4:

  return sub_23041BE68();
}

unint64_t sub_2303F0ABC(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_2303F0CDC(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_23041BED8();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_23041C368();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_2303F0CDC(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_23041BEB8();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_2303F0CDC(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_23041BEE8();
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
    v5 = MEMORY[0x231915540](15, a1 >> 16);
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

uint64_t sub_2303F0D58(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DF0];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

unint64_t sub_2303F0E10(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_2303F0D58(a1, &a1[a2]);
  }

  sub_23041B898();
  swift_allocObject();
  sub_23041B848();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_23041B9D8();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

xpc_object_t sub_2303F0EC0(uint64_t a1, unint64_t a2, xpc_object_t xdict, uint64_t a4, uint64_t a5)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      *key = a1;
      v12 = a2 & 0xFFFFFFFFFFFFFFLL;
      v8 = xpc_dictionary_get_value(xdict, key);
      v9 = key;
      goto LABEL_6;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v7 = a2 & 0xFFFFFFFFFFFFFFFLL;
      v8 = xpc_dictionary_get_value(xdict, ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32));
      v9 = (v7 + 32);
LABEL_6:
      xpc_dictionary_set_value(xdict, v9, 0);
      return v8;
    }
  }

  v8 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB50250, &qword_23041FF48);
  sub_23041C278();
  if (!v5)
  {
    return v13;
  }

  return v8;
}

unint64_t sub_2303F0FCC()
{
  result = qword_27DB501B8;
  if (!qword_27DB501B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB501B8);
  }

  return result;
}

uint64_t sub_2303F1020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t *__return_ptr, uint64_t, void *, uint64_t, void, uint64_t, void))
{
  v14[2] = a4;
  v14[3] = a5;
  v11 = sub_23041C1C8();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB4FE70, &qword_230420240);
  a7(&v15, a6, v14, v11, MEMORY[0x277D84A98], v12, MEMORY[0x277D84AC0]);
  return XPCDictionary.subscript.setter(v15, a2, a3);
}

uint64_t sub_2303F10E0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2303F1120(uint64_t result, uint64_t a2)
{
  if (!a2)
  {

    return 0;
  }

  if (a2 > 14)
  {
    if (a2 < 0x7FFFFFFF)
    {
      return a2 << 32;
    }

    sub_23041B9D8();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = a2;
    return result;
  }

  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = sub_23041B858();
  if (v3)
  {
    result = sub_23041B878();
    if (!__OFSUB__(0, result))
    {
      v3 -= result;
      goto LABEL_10;
    }

LABEL_19:
    __break(1u);
    return result;
  }

LABEL_10:
  v4 = sub_23041B868();
  if (v4 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = v4;
  }

  v6 = &v3[v5];
  if (v3)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_2303F0D58(v3, v7);

  return v8;
}

uint64_t sub_2303F1204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23041B9C8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE28](v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_23041B9B8();
  if (a2)
  {
    sub_23041B898();
    swift_allocObject();

    v10 = sub_23041B838();
    (*(v7 + 16))(v9, a3, v6);
    if ((*(v7 + 88))(v9, v6) == *MEMORY[0x277CC92A8])
    {
      v11 = sub_23041B888();
      *v12 |= 0x8000000000000000;
      v11(v16, 0);
    }

    else
    {
      (*(v7 + 8))(v9, v6);
    }

    v14 = sub_2303F1120(v10, a2);
  }

  else
  {
    v13 = sub_23041B9B8();
    v13(a1, 0);

    v14 = 0;
  }

  (*(v7 + 8))(a3, v6);
  return v14;
}

unint64_t sub_2303F1490()
{
  result = qword_27DB501E8;
  if (!qword_27DB501E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB501E8);
  }

  return result;
}

uint64_t keypath_setTm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t *__return_ptr, uint64_t, void *, uint64_t, void, uint64_t, void))
{
  v9 = *(a3 + a4 - 16);
  v10 = *(a3 + a4 - 8);
  v11 = *a3;
  v12 = a3[1];

  return sub_2303F1020(a1, v11, v12, v9, v10, a5, a6);
}

id sub_2303F15BC(id result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return result;
  }

  return result;
}

unint64_t sub_2303F15C8()
{
  result = qword_27DB4FC20;
  if (!qword_27DB4FC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB4FC20);
  }

  return result;
}

unint64_t sub_2303F161C()
{
  result = qword_280AC7998[0];
  if (!qword_280AC7998[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280AC7998);
  }

  return result;
}

uint64_t sub_2303F1678(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = sub_2303EEFB0(a2);
  [v3 addObject_];

  return 1;
}

uint64_t sub_2303F16EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2303F17E0(char *key@<X0>, void *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = xpc_dictionary_get_value(v5, key);
  xpc_dictionary_set_value(v5, key, 0);
  *a2 = v6;
}

uint64_t static remote_device_state_t.attached.setter(int a1)
{
  result = swift_beginAccess();
  dword_27DB50260 = a1;
  return result;
}

uint64_t static remote_device_state_t.connected.setter(int a1)
{
  result = swift_beginAccess();
  dword_27DB50264 = a1;
  return result;
}

uint64_t static remote_device_state_t.disconnected.setter(int a1)
{
  result = swift_beginAccess();
  dword_27DB50268 = a1;
  return result;
}

uint64_t static remote_device_type_t.invalidOrUnknown.setter(int a1)
{
  result = swift_beginAccess();
  dword_27DB5026C = a1;
  return result;
}

uint64_t static remote_device_type_t.loopback.setter(int a1)
{
  result = swift_beginAccess();
  dword_27DB50270 = a1;
  return result;
}

uint64_t static remote_device_type_t.eos.setter(int a1)
{
  result = swift_beginAccess();
  dword_27DB50274 = a1;
  return result;
}

uint64_t static remote_device_type_t.bridgeCoproc.setter(int a1)
{
  result = swift_beginAccess();
  dword_27DB50278 = a1;
  return result;
}

uint64_t static remote_device_type_t.bridgeHost.setter(int a1)
{
  result = swift_beginAccess();
  dword_27DB5027C = a1;
  return result;
}

uint64_t static remote_device_type_t.bridgeCoprocExternal.setter(int a1)
{
  result = swift_beginAccess();
  dword_27DB50280 = a1;
  return result;
}

uint64_t static remote_device_type_t.bridgeHostExternal.setter(int a1)
{
  result = swift_beginAccess();
  dword_27DB50284 = a1;
  return result;
}

uint64_t static remote_device_type_t.bonjourPeer.setter(int a1)
{
  result = swift_beginAccess();
  dword_27DB50288 = a1;
  return result;
}

uint64_t static remote_device_type_t.ncmDevice.setter(int a1)
{
  result = swift_beginAccess();
  dword_27DB5028C = a1;
  return result;
}

uint64_t static remote_device_type_t.ncmHost.setter(int a1)
{
  result = swift_beginAccess();
  dword_27DB50290 = a1;
  return result;
}

uint64_t static remote_device_type_t.coreDevice.setter(int a1)
{
  result = swift_beginAccess();
  dword_27DB50294 = a1;
  return result;
}

uint64_t static remote_device_type_t.coreDeviceDevice.setter(int a1)
{
  result = swift_beginAccess();
  dword_27DB50298 = a1;
  return result;
}

uint64_t static remote_device_type_t.coreDeviceHost.setter(int a1)
{
  result = swift_beginAccess();
  dword_27DB5029C = a1;
  return result;
}

uint64_t static remote_device_type_t.max.setter(int a1)
{
  result = swift_beginAccess();
  dword_27DB502A0 = a1;
  return result;
}

uint64_t static remote_device_type_t.any.setter(int a1)
{
  result = swift_beginAccess();
  dword_27DB502A4 = a1;
  return result;
}

uint64_t XPCConnection.send<A>(value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a4;
  v24 = a1;
  v7 = *(a2 - 8);
  MEMORY[0x28223BE28](a1);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MessageWrapper(0, v10, v11, v12);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE28](v13);
  v16 = (&v23 - v15);
  type metadata accessor for XPCObjectEncoder();
  *(swift_initStackObject() + 16) = v4;
  (*(v7 + 16))(v9, v24, a2);

  MessageWrapper.init(value:)(v9, a2, v16, a3, v23);
  WitnessTable = swift_getWitnessTable();
  v18 = v25[7];
  v19 = XPCObjectEncoder.encode<A>(_:)(v16, v13, WitnessTable);
  if (v18)
  {
    (*(v14 + 8))(v16, v13);
  }

  else
  {
    v21 = v19;
    (*(v14 + 8))(v16, v13);

    v25[0] = v21;
    v25[1] = 0xD000000000000019;
    v25[2] = 0x8000000230422830;
    v22 = *(*v4 + 168);
    swift_unknownObjectRetain();
    v22(v25);
    swift_unknownObjectRelease();

    return swift_unknownObjectRelease();
  }
}

uint64_t XPCConnection.send<A, B, C>(value:replyQueue:errorWrapperType:replyHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v38 = a7;
  v39 = a8;
  v41 = a4;
  v42 = a5;
  v40 = a3;
  v43 = a2;
  v44 = a1;
  v15 = *(a6 - 8);
  MEMORY[0x28223BE28](a1);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for MessageWrapper(0, v18, a9, a10);
  v45 = *(v19 - 8);
  MEMORY[0x28223BE28](v19);
  v21 = (&v36 - v20);
  type metadata accessor for XPCObjectEncoder();
  *(swift_initStackObject() + 16) = v13;
  (*(v15 + 16))(v17, v44, a6);
  v22 = v13;

  v37 = a9;
  v44 = a10;
  MessageWrapper.init(value:)(v17, a6, v21, a9, a10);
  WitnessTable = swift_getWitnessTable();
  v24 = v47;
  v25 = XPCObjectEncoder.encode<A>(_:)(v21, v19, WitnessTable);
  if (v24)
  {
    (*(v45 + 8))(v21, v19);
  }

  else
  {
    v27 = v25;
    v47 = a12;
    (*(v45 + 8))(v21, v19);

    v46[0] = v27;
    v46[1] = 0xD000000000000019;
    v46[2] = 0x8000000230422830;
    v28 = swift_allocObject();
    v29 = v38;
    v30 = v39;
    v28[2] = a6;
    v28[3] = v29;
    v31 = v37;
    v28[4] = v30;
    v28[5] = v31;
    v28[6] = v44;
    v28[7] = a11;
    v28[8] = v47;
    v28[9] = a13;
    v33 = v40;
    v32 = v41;
    v28[10] = v13;
    v28[11] = v33;
    v34 = v42;
    v28[12] = v32;
    v28[13] = v34;
    v35 = *(*v22 + 160);

    swift_unknownObjectRetain();

    v35(v46, v43, sub_2303F52A0, v28);
    swift_unknownObjectRelease();

    return swift_unknownObjectRelease();
  }
}

uint64_t sub_2303F2F7C(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v31 = a5;
  v32 = a4;
  v29 = a2;
  v30 = a3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DB501D0, &qword_23041F050);
  v12 = sub_23041CB88();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE28](v12);
  v15 = (v28 - v14);
  v17 = *a1;
  v16 = a1[1];
  if (a1[3])
  {
    sub_2303BCF70();
    v18 = swift_allocError();
    *v19 = v17;
    v19[1] = v16;
    *v15 = v18;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v28[1] = v28;
    v20 = MEMORY[0x28223BE28](a1[2]);
    v28[-14] = a6;
    v28[-13] = a7;
    v28[-12] = a8;
    v28[-11] = v21;
    v28[-10] = v23;
    v28[-9] = v22;
    v28[-8] = v25;
    v28[-7] = v24;
    v26 = v30;
    v28[-6] = v29;
    v28[-5] = v17;
    v28[-4] = v16;
    v28[-3] = v20;
    v28[-2] = v26;
    sub_2303F357C(sub_2303F5E68, v15);
  }

  v32(v15);
  return (*(v13 + 8))(v15, v12);
}

void sub_2303F3174(__int128 *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v33 = a4;
  v34 = *(a3 - 8);
  MEMORY[0x28223BE28](a1);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v37 = v10;
  *(&v37 + 1) = v11;
  v38 = v12;
  v39 = v13;
  v32 = v14;
  v40 = *(v14 + 8);
  v15 = type metadata accessor for DispatcherResponse(0, &v37);
  v36 = *(v15 - 8);
  v16 = MEMORY[0x28223BE28](v15);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE28](v16);
  v21 = &v31 - v20;
  MEMORY[0x28223BE28](v19);
  v23 = &v31 - v22;
  v24 = *(a1 + 2);
  v37 = *a1;
  v38 = v24;
  WitnessTable = swift_getWitnessTable();
  XPCDictionary.decode<A>(_:)(v15, v15, WitnessTable);
  if (v4)
  {
    *&v37 = 0;
    *(&v37 + 1) = 0xE000000000000000;
    sub_23041C288();
    MEMORY[0x231915500](0x652065646F636544, 0xEE00203A726F7272);
    v41 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB501D0, &qword_23041F050);
    sub_23041C3B8();
    v26 = v37;
    v27 = sub_2303B9D74(MEMORY[0x277D84F90]);
    sub_2303BCF70();
    swift_allocError();
    static XPCError.unknown(_:from:userInfo:)(v26, *(&v26 + 1), v35, v27, v28);

    swift_willThrow();
  }

  else
  {
    v35 = a2;
    v29 = v34;
    v30 = v36;
    (*(v36 + 32))(v23, v21, v15);
    (*(v30 + 16))(v18, v23, v15);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*(v36 + 8))(v23, v15);
      (*(*(v35 - 8) + 32))(v33, v18);
    }

    else
    {
      (*(v29 + 32))(v9, v18, a3);
      (*(v32 + 64))(&v37, a3);
      swift_willThrow();
      (*(v29 + 8))(v9, a3);
      (*(v36 + 8))(v23, v15);
    }
  }
}

uint64_t sub_2303F357C@<X0>(void (*a1)(_BYTE *)@<X0>, uint64_t a2@<X8>)
{
  MEMORY[0x28223BE28](a1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_23041CB88();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE28](v6);
  v9 = &v11[-v8];
  a1(v5);
  swift_storeEnumTagMultiPayload();
  return (*(v7 + 32))(a2, v9, v6);
}

uint64_t XPCConnection.sendSync<A, B, C>(value:errorWrapperType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v31 = a5;
  v32 = a8;
  v34 = a7;
  v35 = a1;
  v29 = a2;
  v30 = a4;
  v33 = a9;
  v12 = *(a3 - 8);
  MEMORY[0x28223BE28](a1);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for MessageWrapper(0, v15, v16, v17);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE28](v18);
  v21 = (&v29 - v20);
  type metadata accessor for XPCObjectEncoder();
  *(swift_initStackObject() + 16) = v9;
  (*(v12 + 16))(v14, v35, a3);

  MessageWrapper.init(value:)(v14, a3, v21, a6, v34);
  WitnessTable = swift_getWitnessTable();
  v23 = v38;
  v24 = XPCObjectEncoder.encode<A>(_:)(v21, v18, WitnessTable);
  if (v23)
  {
    (*(v19 + 8))(v21, v18);
  }

  else
  {
    v26 = v24;
    v27 = v33;
    (*(v19 + 8))(v21, v18);

    v36[0] = v26;
    v36[1] = 0xD000000000000019;
    v36[2] = 0x8000000230422830;
    v28 = *(*v9 + 176);
    swift_unknownObjectRetain();
    v28(&v37, v36);

    swift_unknownObjectRelease();
    sub_2303F3174(&v37, v30, v31, v27);

    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }
}

uint64_t XPCPeerConnection.setEventHandler<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a5;
  v15[5] = a6;
  v15[6] = a7;
  v15[7] = v14;
  v15[8] = a1;
  v15[9] = a2;
  v16 = *(a5 + 8);

  v16(sub_2303F52E4, v15, a3, a5);
}

uint64_t sub_2303F3BE8(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v31 = a7;
  v32 = a8;
  v29 = a5;
  v30 = a2;
  v33 = a4;
  v34 = a3;
  v28 = a9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DB501D0, &qword_23041F050);
  v11 = sub_23041CB88();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE28](v11);
  v14 = &v27 - v13;
  v15 = *a1;
  v16 = *(a1 + 8);
  v17 = *(a1 + 16);
  v18 = *(a1 + 24);
  v19 = v15;
  v20 = v16;
  v21 = v17;
  if (v18 == 1)
  {
    sub_2303BCF70();
    v19 = swift_allocError();
    v20 = 0;
    v21 = 0;
    *v22 = v15;
    v22[1] = v16;
  }

  v35 = v19;
  v36 = v20;
  v37 = v21;
  v38 = v18;
  MEMORY[0x28223BE28](v19);
  *(&v27 - 6) = v29;
  *(&v27 - 5) = a6;
  v23 = v32;
  *(&v27 - 4) = v31;
  *(&v27 - 3) = v23;
  v24 = v30;
  *(&v27 - 2) = v28;
  *(&v27 - 1) = v24;
  sub_2303BCFC4(v15, v16, v17, v18);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB502B8, &unk_2304200F0);
  sub_2303BD004(sub_2303F5E58, v25, v14);
  sub_2303BD210(v35, v36, v37, v38);
  v34(v14);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_2303F3E04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>, uint64_t a4@<X5>, uint64_t a5@<X6>)
{
  v8 = type metadata accessor for MessageWrapper(0, a2, a4, a5);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE28](v8);
  v11 = &v15[-v10];
  v12 = *(a1 + 16);
  *&v15[24] = *a1;
  v16 = v12;
  WitnessTable = swift_getWitnessTable();
  XPCDictionary.decode<A>(_:)(v8, v8, WitnessTable);
  (*(*(a2 - 8) + 16))(a3, &v11[*(v8 + 44)], a2);
  (*(v9 + 8))(v11, v8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DB501D0, &qword_23041F050);
  sub_23041CB88();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2303F40E0(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 2);
  v6 = *a1;
  v7 = v4;
  return (*(*v3 + 160))(&v6, 0, a2, a3);
}

uint64_t XPCConnection.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x277D84F90];
  return result;
}

uint64_t XPCConnection.init()()
{
  result = v0;
  *(v0 + 16) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_2303F4184()
{
  v1 = v0;
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB502A8, qword_23041FF50);
  swift_allocObject();
  v4 = sub_2303F5704();
  swift_beginAccess();
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(v4 + 32);
  v8 = *(v4 + 40);
  *(v4 + 16) = sub_2303F5318;
  *(v4 + 24) = v2;
  *(v4 + 32) = sub_2303F5320;
  *(v4 + 40) = v3;
  v9 = *(v4 + 48);
  v10 = *(v4 + 56);
  *(v4 + 48) = 0;
  *(v4 + 56) = 0;
  v11 = *(v4 + 64);
  v12 = *(v4 + 72);
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;

  sub_2303F5784(v5, v6, v7, v8);
  sub_2303BCC60(v9, v10);
  sub_2303BCC60(v11, v12);

  *(v4 + 80) = 0;
  swift_beginAccess();

  MEMORY[0x231915610](v13);
  if (*((*(v1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_23041BFC8();
  }

  sub_23041C008();
  swift_endAccess();
  return v4;
}

uint64_t sub_2303F434C@<X0>(uint64_t *a1@<X0>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11[0] = v4;
    v11[1] = v5;
    v11[2] = v6;
    (*(*result + 152))(v12, v11);

    v8 = v12[0];
    v9 = v12[1];
    v10 = v12[2];
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
  }

  *a3 = v8;
  a3[1] = v9;
  a3[2] = v10;
  return result;
}

uint64_t sub_2303F4410(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6[0] = v2;
    v6[1] = v3;
    v6[2] = v4;
    (*(*result + 168))(v6);
  }

  return result;
}

uint64_t sub_2303F44E8(uint64_t a1)
{
  if (a1 == 0x1ED3F2070)
  {
    v7[0] = v1;
    v7[1] = 0xD000000000000019;
    v7[2] = 0x8000000230422830;
    swift_beginAccess();
    v6 = *(v4 + 16);
    swift_unknownObjectRetain();

    sub_2303F45A8(v7, v6, v3, v2);

    swift_unknownObjectRelease();
  }

  else
  {
    LOBYTE(v7[0]) = 0;
    return v3(v7);
  }
}

uint64_t sub_2303F45A8(uint64_t *a1, unint64_t a2, uint64_t (*a3)(char *), uint64_t a4)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  if (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_10:
    v13 = 0;
    return a3(&v13);
  }

  result = sub_23041C3E8();
  if (!result)
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((a2 & 0xC000000000000001) != 0)
  {
    MEMORY[0x231915930](0, a2);
  }

  else
  {
    if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }
  }

  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = a3;
  v12[4] = a4;
  v12[5] = v7;
  v12[6] = v8;
  v12[7] = v9;
  v12[8] = a2;

  swift_unknownObjectRetain();

  sub_230407CAC(v7, v8, v9, sub_2303F5E44, v12);
}

unint64_t sub_2303F4758(unsigned __int8 *a1, uint64_t a2, uint64_t (*a3)(char *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v14 = *a1;
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    LOBYTE(v27[0]) = 0;
    return a3(v27);
  }

  if ((v14 & 1) == 0)
  {
    v27[0] = a5;
    v27[1] = a6;
    v16 = a8 >> 62;
    v27[2] = a7;
    if (a8 >> 62)
    {
      result = sub_23041C3E8();
      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
        return result;
      }

      v17 = result;
      v18 = result != 0;
      if (sub_23041C3E8() >= v18)
      {
        if (sub_23041C3E8() >= v17)
        {
LABEL_7:
          if ((a8 & 0xC000000000000001) != 0)
          {

            if (v17 >= 2)
            {
              v19 = v18;
              do
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB502A8, qword_23041FF50);
                sub_23041C298();
                ++v19;
              }

              while (v17 != v19);
            }

            if (!v16)
            {
LABEL_12:
              a8 &= 0xFFFFFFFFFFFFFF8uLL;
              v20 = a8 + 32;
              v17 = (2 * v17) | 1;
              if (v17)
              {
LABEL_17:
                v14 = v20;
                sub_23041C878();
                swift_unknownObjectRetain_n();
                v25 = swift_dynamicCastClass();
                if (!v25)
                {
                  swift_unknownObjectRelease();
                  v25 = MEMORY[0x277D84F90];
                }

                v26 = *(v25 + 16);

                if (!__OFSUB__(v17 >> 1, v18))
                {
                  if (v26 == (v17 >> 1) - v18)
                  {
                    v24 = swift_dynamicCastClass();
                    swift_unknownObjectRelease();
                    if (v24)
                    {
LABEL_24:
                      sub_2303F45A8(v27, v24, a3, a4);
                    }

                    v24 = MEMORY[0x277D84F90];
LABEL_23:
                    swift_unknownObjectRelease();
                    goto LABEL_24;
                  }

                  goto LABEL_33;
                }

LABEL_32:
                __break(1u);
LABEL_33:
                swift_unknownObjectRelease();
                v20 = v14;
              }

LABEL_16:
              sub_2303F5D54(a8, v20, v18, v17);
              v24 = v23;
              goto LABEL_23;
            }
          }

          else
          {

            if (!v16)
            {
              goto LABEL_12;
            }
          }

          a8 = sub_23041C3F8();
          v18 = v21;
          v17 = v22;
          if (v22)
          {
            goto LABEL_17;
          }

          goto LABEL_16;
        }

        __break(1u);
      }
    }

    else
    {
      v17 = *((a8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v18 = v17 != 0;
      if (v17 >= v18)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_32;
  }

  LOBYTE(v27[0]) = 1;
  a3(v27);
}

xpc_object_t sub_2303F4A0C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB50130, &unk_23041F070);
  MEMORY[0x28223BE28](v4 - 8);
  v6 = v13 - v5;
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  reply = xpc_dictionary_create_reply(v7);
  if (reply)
  {
    v15 = 0xD000000000000019;
    v16 = 0x8000000230422830;
    v13[2] = v9;
    v14 = reply;
    v13[0] = v7;
    v13[1] = v8;
    sub_2303D3810(v6);
    sub_2303D3A2C(v6);
    result = v14;
    v12 = v16;
    a2[1] = v15;
    a2[2] = v12;
  }

  else
  {
    a2[1] = 0xD000000000000019;
    a2[2] = 0x8000000230422830;
    result = xpc_dictionary_create(0, 0, 0);
  }

  *a2 = result;
  return result;
}

uint64_t sub_2303F4C24(uint64_t a1, uint64_t a2)
{
  *(v3 + 104) = a1;
  *(v3 + 112) = v2;
  *(v3 + 120) = *a2;
  *(v3 + 136) = *(a2 + 16);
  return MEMORY[0x2822009F8](sub_2303F4C54, 0, 0);
}

uint64_t sub_2303F4C54()
{
  v9 = v0;
  v1 = *(v0 + 136);
  v6 = *(v0 + 120);
  v2 = *(v0 + 112);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 80;
  *(v0 + 24) = sub_2303F4D84;
  v3 = swift_continuation_init();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  v7 = v6;
  v8 = v1;
  (*(*v2 + 160))(&v7, 0, sub_2303F57C8, v4);

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_2303F4D84(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  if (*(*v1 + 48))
  {
    swift_willThrow();
  }

  else
  {
    v4 = *(v2 + 80);
    v7 = v2 + 96;
    v5 = *(v2 + 96);
    v6 = *(v7 + 8);
    *v6 = v4;
    *(v6 + 16) = v5;
  }

  v8 = *(v3 + 8);

  return v8();
}

uint64_t sub_2303F4E9C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  if (a1[3])
  {
    sub_2303BCF70();
    v5 = swift_allocError();
    *v6 = v4;
    v6[1] = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB501D0, &qword_23041F050);
    v7 = swift_allocError();
    *v8 = v5;

    return MEMORY[0x282200958](a2, v7);
  }

  else
  {
    v9 = a1[2];
    v10 = *(*(a2 + 64) + 40);
    *v10 = v4;
    v10[1] = v3;
    v10[2] = v9;
    swift_unknownObjectRetain();

    return MEMORY[0x282200950](a2);
  }
}

size_t sub_2303F5194@<X0>(void *a1@<X0>, size_t *a2@<X8>)
{
  result = xpc_hash(a1);
  *a2 = result;
  return result;
}

unint64_t sub_2303F524C()
{
  result = qword_280AC7980;
  if (!qword_280AC7980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280AC7980);
  }

  return result;
}

uint64_t XPCConnection.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_2303F53FC()
{
  sub_23041CB48();
  (*(*v0 + 208))(&v2, sub_2303F5194, 0, MEMORY[0x277D83B88]);
  MEMORY[0x2319161D0](v2);
  return sub_23041CB78();
}

uint64_t sub_2303F5564(uint64_t a1)
{
  sub_23041CB48();
  (*(**v1 + 208))(&v3, sub_2303F5194, 0, MEMORY[0x277D83B88]);
  MEMORY[0x2319161D0](v3);
  return sub_23041CB78();
}

void *sub_2303F55FC@<X0>(void *a1@<X8>)
{
  result = (*(**v1 + 208))(&v4, sub_2303F539C, 0, MEMORY[0x277D83690]);
  *a1 = v4;
  return result;
}

uint64_t sub_2303F5704()
{
  *(v0 + 104) = 0;
  *(v0 + 112) = sub_2303D0BDC(MEMORY[0x277D84F90]);
  type metadata accessor for XPCObjectEncoder();
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  type metadata accessor for XPCObjectDecoder();
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 1;
  *(v0 + 88) = v1;
  *(v0 + 96) = v2;
  return v0;
}

uint64_t sub_2303F5784(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_2303F57D4()
{
  result = qword_280AC7940;
  if (!qword_280AC7940)
  {
    type metadata accessor for XPCConnection();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280AC7940);
  }

  return result;
}

uint64_t dispatch thunk of XPCConnection.sendMessage(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 184) + **(*v2 + 184));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2303F5AEC;

  return v8(a1, a2);
}

uint64_t sub_2303F5AEC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_2303F5D54(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB502A8, qword_23041FF50);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FFC0, &unk_2304200E0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_2303F5E68(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  v7 = *(v2 + 104);
  v8 = *(v2 + 88);
  v9 = v7;
  sub_2303F3174(&v8, v5, v6, a2);
  if (v3)
  {
    *a1 = v3;
  }
}

BOOL sub_2303F5EC4@<W0>(xpc_object_t object2@<X0>, _BYTE *a2@<X8>)
{
  result = xpc_equal(*(v2 + 16), object2);
  *a2 = result;
  return result;
}

uint64_t static RemoteXPCConnection.unsafePeer(from:)(void *a1)
{
  type metadata accessor for RemoteXPCPeerConnection();
  v2 = swift_allocObject();
  v3 = a1;
  v4 = swift_slowAlloc();
  *(v2 + 80) = 0;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = v4;
  *(v2 + 72) = 0;
  *v4 = 0;
  *(v2 + 32) = 0;
  *(v2 + 16) = MEMORY[0x277D84F90];
  *(v2 + 24) = v3;
  return v2;
}

void sub_2303F5FC0(void *a1)
{
  xpc_remote_connection_send_message_with_reply_sync();
  swift_unknownObjectRetain();

  sub_2303BCE1C();
}

uint64_t sub_2303F6018()
{
  if (v6)
  {
    sub_2303BCF70();

    swift_willThrowTypedImpl();
    swift_allocError();
    *v1 = v3;
    v1[1] = v4;
    swift_unknownObjectRelease();
    return sub_2303BD25C(v3, v4, v5, 1);
  }

  else
  {
    result = swift_unknownObjectRelease();
    *v0 = v3;
    v0[1] = v4;
    v0[2] = v5;
  }

  return result;
}

uint64_t sub_2303F60D0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB502C8, &qword_230420100);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = v4;
  v8[4] = a3;
  v8[5] = a4;
  v11[4] = sub_2303F63D0;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD8];
  v11[1] = 1107296256;
  v11[2] = sub_2303B98A0;
  v11[3] = &block_descriptor_3;
  v9 = _Block_copy(v11);

  xpc_remote_connection_send_message_with_reply();
  _Block_release(v9);
}

void sub_2303F6214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((atomic_fetch_or((a2 + 16), 0x80u) & 0x80) == 0)
  {

    swift_unknownObjectRetain();
    sub_2303BCE1C();
  }

  v3 = sub_23041C0B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB50550, &qword_23041FBF0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_23041F9D0;
  type metadata accessor for RemoteXPCConnection();

  v5 = sub_23041BE28();
  v7 = v6;
  v8 = MEMORY[0x277D837D0];
  *(v4 + 56) = MEMORY[0x277D837D0];
  v9 = sub_2303BBBD4();
  *(v4 + 64) = v9;
  *(v4 + 32) = v5;
  *(v4 + 40) = v7;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB4FE70, &qword_230420240);
  v10 = sub_23041BE28();
  *(v4 + 96) = v8;
  *(v4 + 104) = v9;
  *(v4 + 72) = v10;
  *(v4 + 80) = v11;
  sub_2303E42C4(0, &qword_27DB502F0, 0x277D86208);
  v12 = sub_23041C1B8();
  sub_23041BB28(v3, &dword_2303B3000, v12, "Received an unexpected second reply to an XPC message sent to %@ (discarding): %@", 81, 2, v4);
}

unint64_t sub_2303F6418()
{
  result = qword_27DB502D8;
  if (!qword_27DB502D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB502D8);
  }

  return result;
}

uint64_t sub_2303F646C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB502D0, &qword_230420108);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2303F64D4()
{
  result = qword_27DB502E0;
  if (!qword_27DB502E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB502E0);
  }

  return result;
}

uint64_t sub_2303F6558()
{
}

uint64_t RemoteXPCConnection.deinit()
{

  return v0;
}

uint64_t RemoteXPCConnection.__deallocating_deinit()
{

  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_2303F661C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 48);
  v7 = *(v3 + 56);
  *(v3 + 48) = a1;
  *(v3 + 56) = a2;

  sub_2303BCC60(v6, v7);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = v8;
  v10[3] = v9;
  v10[4] = a1;
  v10[5] = a2;
  v13[4] = sub_2303F6CB4;
  v13[5] = v10;
  v13[0] = MEMORY[0x277D85DD8];
  v13[1] = 1107296256;
  v13[2] = sub_2303B98A0;
  v13[3] = &block_descriptor_12;
  v11 = _Block_copy(v13);

  xpc_remote_connection_set_event_handler();
  _Block_release(v11);
}

uint64_t sub_2303F6778(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v21[6] = a5;
  v8 = sub_23041BC18();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE28](v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23041BC48();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE28](v12);
  v15 = v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(a2 + 16))
  {

    sub_2303BC794(a1);
  }

  else
  {
    v21[0] = a2;
    v21[1] = v15;
    v21[2] = v11;
    v21[3] = v12;
    v21[4] = v13;
    v21[5] = v9;
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      objc_opt_self();
      v17 = swift_dynamicCastObjCClass();
      if (!v17)
      {
        swift_getObjectType();
        OS_xpc_object.type.getter();
      }

      v18 = v17;
      type metadata accessor for RemoteXPCPeerConnection();
      v19 = swift_allocObject();
      swift_unknownObjectRetain();
      v20 = swift_slowAlloc();
      *(v19 + 80) = 0;
      *(v19 + 56) = 0;
      *(v19 + 64) = 0;
      *(v19 + 40) = 0;
      *(v19 + 48) = v20;
      *(v19 + 72) = 0;
      *v20 = 0;
      *(v19 + 32) = 0;
      *(v19 + 16) = MEMORY[0x277D84F90];
      *(v19 + 24) = v18;
      v22 = v19;
      v23 = &protocol witness table for RemoteXPCPeerConnection;
      v24 = 0;
      a4(&v22);

      return sub_2303F7674(v22, v23, v24);
    }
  }

  return result;
}

void sub_2303F69E8(uint64_t a1)
{
  v6 = v3;
  if (a1 != 0x1ED3F20C0)
  {
    v7 = *(v1 + 24);
    type metadata accessor for RemoteXPCPeerConnection();
    v8 = swift_allocObject();
    v9 = v7;
    v10 = swift_slowAlloc();
    *(v8 + 80) = 0;
    *(v8 + 56) = 0;
    *(v8 + 64) = 0;
    *(v8 + 40) = 0;
    *(v8 + 48) = v10;
    *(v8 + 72) = 1;
    *v10 = 0;
    *(v8 + 32) = 0;
    v11 = MEMORY[0x277D84F90];
    *(v8 + 16) = MEMORY[0x277D84F90];
    *(v8 + 24) = v9;
    v12 = *(v5 - 272);
    swift_beginAccess();
    *(v12 + 16) = v8;

    *(v5 - 208) = v8;
    *(v5 - 200) = &protocol witness table for RemoteXPCPeerConnection;
    *(v5 - 192) = 0;

    v6(v5 - 208);
    sub_2303F7674(*(v5 - 208), *(v5 - 200), *(v5 - 192));
    v13 = *(v1 + 64);
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    *(v14 + 24) = v4;
    *(v5 - 176) = sub_2303F76C4;
    *(v5 - 168) = v14;
    *(v5 - 208) = MEMORY[0x277D85DD8];
    *(v5 - 200) = 1107296256;
    *(v5 - 192) = sub_2303BCCBC;
    *(v5 - 184) = &block_descriptor_110;
    v15 = _Block_copy((v5 - 208));
    swift_unknownObjectRetain();
    v16 = v13;

    v17 = *(v5 - 264);
    sub_23041BC38();
    *(v5 - 216) = v11;
    sub_2303BCC08();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB501A8, &unk_230420230);
    sub_2303BCBA4();
    v18 = *(v5 - 256);
    sub_23041C248();
    MEMORY[0x2319157E0](0, v17, v18, v15);
    _Block_release(v15);

    (*(*(v5 - 232) + 8))(v18, v2);
    (*(*(v5 - 240) + 8))(v17, *(v5 - 248));
    JUMPOUT(0x2303F68D4);
  }

  swift_unknownObjectRetain();

  sub_2303B9D74(MEMORY[0x277D84F90]);
  XPCError.init(_:from:userInfo:)();
}

void sub_2303F6C3C()
{
  v2 = *(v1 - 152);
  if (v2)
  {
    *(v1 - 208) = *(v1 - 160);
    *(v1 - 200) = v2;
    *(v1 - 192) = 1;
    v0(v1 - 208);
  }

  else
  {
    __break(1u);
  }

  JUMPOUT(0x2303F69A4);
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2303F6CC0(uint64_t a1, uint64_t a2)
{
  result = swift_beginAccess();
  if (*(a1 + 16))
  {

    sub_2303BC794(a2);
  }

  return result;
}

uint64_t sub_2303F6D84(void *a1)
{
  v2 = v1;
  v3 = a1;
  if (!a1)
  {
    sub_2303E42C4(0, &qword_27DB4FBA0, 0x277D85C80);
    a1 = sub_23041C148();
  }

  v4 = *(v1 + 64);
  *(v1 + 64) = a1;
  v5 = v3;

  v6 = *(v2 + 24);

  return MEMORY[0x2821A8C60](v6, v5);
}

void sub_2303F6E04()
{
  sub_2303BCC60(v0[6], v0[7]);
  v1 = v0[8];
}

uint64_t RemoteXPCListenerConnection.deinit()
{

  sub_2303BCC60(*(v0 + 48), *(v0 + 56));

  return v0;
}

uint64_t RemoteXPCListenerConnection.__deallocating_deinit()
{

  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  sub_2303BCC60(v1, v2);
  v3 = *(v0 + 64);

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

void sub_2303F6EF8()
{
  sub_2303BCC60(v0[7], v0[8]);
  v1 = v0[10];
}

uint64_t RemoteXPCPeerConnection.deinit()
{
  MEMORY[0x231916D20](*(v0 + 48), -1, -1);

  sub_2303BCC60(*(v0 + 56), *(v0 + 64));

  return v0;
}

void sub_2303F6F78(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  os_unfair_lock_lock(v5);
  v6 = *(v2 + 56);
  v7 = *(v2 + 64);
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;

  sub_2303BCC60(v6, v7);
  os_unfair_lock_unlock(v5);
  if ((*(v2 + 72) & 1) == 0)
  {
    v8 = swift_allocObject();
    swift_weakInit();
    v10[4] = sub_2303B9900;
    v10[5] = v8;
    v10[0] = MEMORY[0x277D85DD8];
    v10[1] = 1107296256;
    v10[2] = sub_2303B98A0;
    v10[3] = &block_descriptor_18;
    v9 = _Block_copy(v10);

    xpc_remote_connection_set_event_handler();
    _Block_release(v9);
  }
}

void sub_2303F7094(void *a1)
{
  v3 = *(v1 + 48);
  os_unfair_lock_lock(v3);
  v4 = *(v1 + 80);
  *(v1 + 80) = a1;
  v5 = a1;

  os_unfair_lock_unlock(v3);
  if ((*(v1 + 72) & 1) == 0)
  {
    v6 = *(v1 + 24);

    MEMORY[0x2821A8C60](v6, v5);
  }
}

uint64_t sub_2303F7114()
{
  v1 = v0[6];
  os_unfair_lock_lock(v1);
  v2 = v0[7];
  v3 = v0[8];
  sub_2303BE674(v2, v3);
  sub_2303BE674(v2, v3);
  os_unfair_lock_unlock(v1);
  if (v2)
  {
    sub_2303BCC60(v2, v3);
  }

  else
  {
    sub_2303F6F78(nullsub_10, 0);
  }

  xpc_remote_connection_activate();

  return sub_2303BCC60(v2, v3);
}

void *static RemoteXPCConnection.remoteServiceListenerConnection(serviceName:targetQueue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23041BE38();
  remote_service_listener = xpc_remote_connection_create_remote_service_listener();

  type metadata accessor for RemoteXPCListenerConnection();
  v4 = swift_allocObject();
  sub_2303E42C4(0, &qword_27DB4FBA0, 0x277D85C80);
  v4[6] = 0;
  v4[7] = 0;
  v4[8] = sub_23041C148();
  v4[4] = 0;
  v4[5] = 0;
  v4[2] = MEMORY[0x277D84F90];
  v4[3] = remote_service_listener;
  return v4;
}

uint64_t static RemoteXPCConnection.connectionToRemoteService(device:serviceName:targetQueue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_23041BE38();
  v4 = remote_device_copy_service();

  if (!v4)
  {
    return 0;
  }

  v5 = xpc_remote_connection_create_with_remote_service();

  if (!v5)
  {
    return 0;
  }

  type metadata accessor for RemoteXPCPeerConnection();
  v6 = swift_allocObject();
  v7 = swift_slowAlloc();
  result = v6;
  *(v6 + 80) = 0;
  *(v6 + 56) = 0;
  *(v6 + 64) = 0;
  *(v6 + 40) = 0;
  *(v6 + 48) = v7;
  *(v6 + 72) = 0;
  *v7 = 0;
  *(v6 + 32) = 0;
  *(v6 + 16) = MEMORY[0x277D84F90];
  *(v6 + 24) = v5;
  return result;
}

void *static RemoteXPCConnection.unsafeListener(from:)(void *a1)
{
  type metadata accessor for RemoteXPCListenerConnection();
  v2 = swift_allocObject();
  sub_2303E42C4(0, &qword_27DB4FBA0, 0x277D85C80);
  v2[6] = 0;
  v2[7] = 0;
  v2[8] = sub_23041C148();
  v2[4] = 0;
  v2[5] = 0;
  v2[2] = MEMORY[0x277D84F90];
  v2[3] = a1;
  v3 = a1;
  return v2;
}

void *static RemoteXPCConnection.unsafeListener(from:forServiceNamed:)(void *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for RemoteXPCListenerConnection();
  v6 = swift_allocObject();
  sub_2303E42C4(0, &qword_27DB4FBA0, 0x277D85C80);
  v6[6] = 0;
  v6[7] = 0;
  v6[8] = sub_23041C148();
  v6[4] = a2;
  v6[5] = a3;
  v6[2] = MEMORY[0x277D84F90];
  v6[3] = a1;
  v7 = a1;

  return v6;
}

uint64_t static RemoteXPCConnection.unsafePeer(from:forServiceNamed:)(void *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for RemoteXPCPeerConnection();
  v6 = swift_allocObject();

  v7 = a1;
  v8 = swift_slowAlloc();
  *(v6 + 80) = 0;
  *(v6 + 56) = 0;
  *(v6 + 64) = 0;
  *(v6 + 40) = a3;
  *(v6 + 48) = v8;
  *(v6 + 72) = 0;
  *v8 = 0;
  *(v6 + 32) = a2;
  *(v6 + 16) = MEMORY[0x277D84F90];
  *(v6 + 24) = v7;
  return v6;
}

void sub_2303F7640(_BYTE *a1)
{
  if ((*a1 & 1) == 0)
  {
    sub_2303BC794(*(v1 + 24));
  }
}

uint64_t sub_2303F7674(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t objectdestroy_91Tm()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2303F77B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *))
{
  v6[0] = a1;
  v6[1] = a2;
  v6[2] = a3;
  v6[3] = a4;
  return a5(v6);
}

uint64_t static audit_token_t.current()()
{
  v5[1] = *MEMORY[0x277D85DF0];
  v1 = *MEMORY[0x277D85F40];
  memset(v4, 0, sizeof(v4));
  result = sub_2303F7C00(v4, v5, v1, &v3);
  if (!v0)
  {
    return *&v4[0];
  }

  return result;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> audit_token_t.init(taskName:)(audit_token_t *__return_ptr retstr, Swift::UInt32 taskName)
{
  v4[1] = *MEMORY[0x277D85DF0];
  memset(v3, 0, sizeof(v3));
  sub_2303F7C00(v3, v4, taskName, &v2);
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> audit_token_t.init(processIdentifier:expectedProcessIdentifierVersion:)(audit_token_t *__return_ptr retstr, Swift::Int32 processIdentifier, Swift::Int32_optional expectedProcessIdentifierVersion)
{
  v3 = *&expectedProcessIdentifierVersion.value;
  v31 = *MEMORY[0x277D85DF0];
  v5 = sub_23041B7F8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE28](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23041BB18();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE28](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  HIDWORD(v30) = 0;
  v13 = MEMORY[0x277D85F40];
  v14 = task_name_for_pid(*MEMORY[0x277D85F40], processIdentifier, &v30 + 1);
  if (v14)
  {
    v15 = v14;
    sub_2303B9D74(MEMORY[0x277D84F90]);
    MachError.init(uncheckedCode:userInfo:)(v15);
    sub_23041BB08();
    (*(v10 + 8))(v12, v9);
    swift_willThrow();
  }

  else
  {
    v20 = v5;
    v21 = v6;
    v28 = 0u;
    v29 = 0u;
    v16 = v22;
    sub_2303F7C00(&v28, &v30, HIDWORD(v30), &v27);
    if (!v16)
    {
      v22 = DWORD1(v28);
      v18 = v29;
      v19 = DWORD2(v28);
      if ((v3 & 0x100000000) == 0)
      {
        *&v23 = __PAIR64__(v22, v28);
        *(&v23 + 1) = __PAIR64__(HIDWORD(v28), v19);
        v24 = v18;
        v25 = *(&v29 + 4);
        v26 = HIDWORD(v29);
        if (XPCaudit_token_to_pidversion(&v23) != v3)
        {
          LODWORD(v23) = 3;
          sub_2303B9D74(MEMORY[0x277D84F90]);
          sub_2303F7D74();
          v17 = v20;
          sub_23041B918();
          sub_23041B7D8();
          (*(v21 + 8))(v8, v17);
          swift_willThrow();
        }
      }
    }

    mach_port_deallocate(*v13, HIDWORD(v30));
  }
}

uint64_t sub_2303F7C00(integer_t *a1, uint64_t a2, task_name_t a3, uint64_t *a4)
{
  v15 = *MEMORY[0x277D85DF0];
  v7 = sub_23041BB18();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE28](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  HIDWORD(v14) = 8;
  if (!a1)
  {
    __break(1u);
  }

  result = task_info(a3, 0xFu, a1, &v14 + 1);
  if (result)
  {
    v12 = result;
    sub_2303B9D74(MEMORY[0x277D84F90]);
    MachError.init(uncheckedCode:userInfo:)(v12);
    v13 = sub_23041BB08();
    (*(v8 + 8))(v10, v7);
    result = swift_willThrow();
    *a4 = v13;
  }

  return result;
}

unint64_t sub_2303F7D74()
{
  result = qword_27DB505F0;
  if (!qword_27DB505F0)
  {
    sub_23041B7F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB505F0);
  }

  return result;
}

uint64_t XPCReplyProviding.init(createReply:sendReply:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

void *XPCMessageDispatcher.__allocating_init(xpcReplyProviding:inboundObserver:outboundObserver:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_allocObject();
  v10 = sub_2303F8E18(a1, a2, a3, a4, a5);
  sub_2303BCC60(a4, a5);
  return v10;
}

uint64_t XPCMessageDispatcher.errorOnUnregisteredTypes.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 80) = a1;
  return result;
}

void sub_2303F7E98()
{
  qword_280AC7820 = sub_2303F93A0;
  *algn_280AC7828 = 0;
  qword_280AC7830 = sub_2303F7ECC;
  qword_280AC7838 = 0;
}

uint64_t static XPCReplyProviding.passthrough.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280AC7818 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = qword_280AC7838;
  *a1 = qword_280AC7820;
  *(a1 + 8) = *algn_280AC7828;
  *(a1 + 24) = v1;
}

uint64_t (*XPCReplyProviding.init(sendReply:)@<X0>(uint64_t (*result)()@<X0>, uint64_t (*a2)()@<X1>, uint64_t (**a3)()@<X8>))()
{
  *a3 = sub_2303F93A0;
  a3[1] = 0;
  a3[2] = result;
  a3[3] = a2;
  return result;
}

uint64_t sub_2303F7FB4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB50130, &unk_23041F070);
  MEMORY[0x28223BE28](v4 - 8);
  v6 = v14 - v5;
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  result = xpc_dictionary_create_reply(v7);
  if (result)
  {
    v16 = 0xD000000000000019;
    v17 = 0x8000000230422830;
    v14[2] = v9;
    v15 = result;
    v14[0] = v7;
    v14[1] = v8;
    sub_2303D3810(v6);
    result = sub_2303D3A2C(v6);
    v11 = v15;
    v12 = v16;
    v13 = v17;
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
  }

  *a2 = v11;
  a2[1] = v12;
  a2[2] = v13;
  return result;
}

uint64_t XPCReplyProviding.createReply(_:)(__int128 *a1)
{
  v2 = *(a1 + 2);
  v3 = *v1;
  v5 = *a1;
  v6 = v2;
  return v3(&v5);
}

uint64_t XPCReplyProviding.sendReply(_:)(__int128 *a1)
{
  v2 = *(a1 + 2);
  v3 = *(v1 + 16);
  v5 = *a1;
  v6 = v2;
  return v3(&v5);
}

uint64_t XPCMessageDispatchTraits.replyProvider.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_2303F8F00(v2, v3, v4, v5);
}

__n128 XPCMessageDispatchTraits.replyProvider.setter(uint64_t a1)
{
  sub_2303F5784(*v1, v1[1], v1[2], v1[3]);
  result = *a1;
  v4 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 1) = v4;
  return result;
}

uint64_t sub_2303F819C@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_2303F92C0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_2303BE674(v3, v4);
}

uint64_t sub_2303F821C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_2303F9298;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  sub_2303BE674(v3, v4);
  result = sub_2303BCC60(v7, v8);
  *(a2 + 32) = v6;
  *(a2 + 40) = v5;
  return result;
}

uint64_t XPCMessageDispatchTraits.inboundObserver.getter()
{
  v1 = *(v0 + 32);
  sub_2303BE674(v1, *(v0 + 40));
  return v1;
}

uint64_t XPCMessageDispatchTraits.inboundObserver.setter(uint64_t a1, uint64_t a2)
{
  result = sub_2303BCC60(*(v2 + 32), *(v2 + 40));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_2303F8344@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  if (v3)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_2303F9270;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  *a2 = v6;
  a2[1] = v5;

  return sub_2303BE674(v3, v4);
}

uint64_t sub_2303F83C4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_2303F9248;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *(a2 + 48);
  v8 = *(a2 + 56);
  sub_2303BE674(v3, v4);
  result = sub_2303BCC60(v7, v8);
  *(a2 + 48) = v6;
  *(a2 + 56) = v5;
  return result;
}

uint64_t XPCMessageDispatchTraits.outboundObserver.getter()
{
  v1 = *(v0 + 48);
  sub_2303BE674(v1, *(v0 + 56));
  return v1;
}

uint64_t XPCMessageDispatchTraits.outboundObserver.setter(uint64_t a1, uint64_t a2)
{
  result = sub_2303BCC60(*(v2 + 48), *(v2 + 56));
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t XPCMessageDispatchTraits.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 64) = 1;
  type metadata accessor for XPCObjectEncoder();
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(a1 + 72) = v2;
  type metadata accessor for XPCObjectDecoder();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(a1 + 80) = result;
  return result;
}

uint64_t XPCMessageDispatchTraits.isDispatchable(encodedData:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = v2[3];
  v10 = v2[2];
  v11 = v4;
  v12 = v2[4];
  v13 = *(v2 + 10);
  v5 = v2[1];
  v8 = *v2;
  v9 = v5;
  sub_2303F85B8(v3, &v7);
  return v7;
}

void sub_2303F85B8(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_2303E6424(a1, &v5);
  if (v2)
  {

    v4 = 0;
  }

  else
  {

    v4 = 1;
  }

  *a2 = v4;
}

uint64_t *XPCMessageDispatchTraits.prepareForEncodingHandlerValue(from:)@<X0>(uint64_t *result@<X0>, uint64_t **a2@<X8>)
{
  v4 = *result;
  if (*result)
  {
    v5 = *v2;
    if (*v2)
    {
      v7 = result[1];
      v6 = result[2];
      v8 = *(v2 + 8);
      v9 = *(v2 + 16);
      v10 = *(v2 + 24);
      v14[0] = *result;
      v14[1] = v7;
      v14[2] = v6;
      sub_2303F8F44(v4, v7, v6);
      sub_2303F8F00(v5, v8, v9, v10);
      v5(v15, v14);
      sub_2303F5784(v5, v8, v9, v10);
      v11 = v15[0];
      if (v15[0])
      {
        v13 = v15[1];
        v12 = v15[2];
        result = sub_2303F10E0(v4, v7, v6);
        *a2 = v11;
        a2[1] = v13;
        a2[2] = v12;
      }

      else
      {
        sub_2303F8F84();
        swift_allocError();
        swift_willThrow();
        return sub_2303F10E0(v4, v7, v6);
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    a2[1] = 0xD000000000000019;
    a2[2] = 0x8000000230422830;
    result = xpc_dictionary_create(0, 0, 0);
    *a2 = result;
  }

  return result;
}

uint64_t XPCMessageDispatchTraits.readEncodedRequestType(from:)(uint64_t *a1)
{
  result = sub_2303E6424(*a1, &v3);
  if (!v1)
  {
    return v3;
  }

  return result;
}

__int128 *XPCMessageDispatchTraits.sink(handlerValue:)(__int128 *result)
{
  v2 = *v1;
  if (*v1)
  {
    v4 = v1[2];
    v3 = v1[3];
    v5 = v1[1];
    v6 = *(result + 2);
    v7 = *result;
    v8 = v6;

    v4(&v7);
    return sub_2303F5784(v2, v5, v4, v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t XPCMessageDispatchTraits.willDispatch(value:)()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t XPCMessageDispatchTraits.shouldPass(error:)(void *a1)
{
  if ((*(v1 + 64) & 1) != 0 || (v2 = a1, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB501D0, &qword_23041F050), !swift_dynamicCast()))
  {
    v3 = 0;
  }

  else
  {
    v3 = v5 ^ 1;
  }

  return v3 & 1;
}

uint64_t XPCMessageDispatchTraits.didDispatch(value:result:)()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t XPCMessageDispatcher.errorOnUnregisteredTypes.getter()
{
  v1 = *v0;
  sub_2303FA044(v6);
  v8[3] = v6[3];
  v9 = v6[4];
  v10 = v7;
  v8[0] = v6[0];
  v8[1] = v6[1];
  v8[2] = v6[2];
  v4 = type metadata accessor for XPCMessageDispatchTraits(0, *(v1 + 280), v2, v3);
  (*(*(v4 - 8) + 8))(v8, v4);
  return v9;
}

void (*XPCMessageDispatcher.errorOnUnregisteredTypes.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  *a1 = v3;
  *(v3 + 48) = v1;
  *(v3 + 56) = XPCMessageDispatcher.errorOnUnregisteredTypes.getter() & 1;
  return sub_2303F8BAC;
}

void sub_2303F8BAC(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 56);
  swift_beginAccess();
  *(v2[6] + 80) = v3;

  free(v2);
}

void *XPCMessageDispatcher.init(xpcReplyProviding:inboundObserver:outboundObserver:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_2303F8E18(a1, a2, a3, a4, a5);
  sub_2303BCC60(a4, a5);
  return v7;
}

uint64_t XPCMessageDispatcher.__deallocating_deinit()
{
  v0 = CodableDispatcher.deinit();

  return MEMORY[0x2821FE8D8](v0, 120, 7);
}

uint64_t sub_2303F8DB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2303F92E8();
  v5 = sub_2303F933C();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

void *sub_2303F8E18(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = CodableDispatcher.init()(a1);
  swift_beginAccess();
  v10 = v9[2];
  v11 = v9[3];
  v12 = v9[4];
  v13 = v9[5];
  v14 = a1[1];
  *(v9 + 1) = *a1;
  *(v9 + 2) = v14;
  v16 = v9[6];
  v15 = v9[7];
  v9[6] = a2;
  v9[7] = a3;
  v17 = v9[8];
  v20 = v9[9];
  v9[8] = a4;
  v9[9] = a5;

  sub_2303BE674(a4, a5);
  sub_2303F5784(v10, v11, v12, v13);
  sub_2303BCC60(v16, v15);
  sub_2303BCC60(v17, v20);

  return v9;
}

uint64_t sub_2303F8F00(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2303F8F44(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    swift_unknownObjectRetain();
  }

  return result;
}

unint64_t sub_2303F8F84()
{
  result = qword_27DB50300;
  if (!qword_27DB50300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB50300);
  }

  return result;
}

unint64_t sub_2303F9058()
{
  result = qword_27DB50308;
  if (!qword_27DB50308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB50308);
  }

  return result;
}

uint64_t sub_2303F90BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_2303F911C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_2303F9164(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2303F92E8()
{
  result = qword_27DB50310;
  if (!qword_27DB50310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB50310);
  }

  return result;
}

unint64_t sub_2303F933C()
{
  result = qword_27DB50318;
  if (!qword_27DB50318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB50318);
  }

  return result;
}

uint64_t Optional.withUnsafeMutablePointer<A>(_:)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v36 = a1;
  v38[1] = *MEMORY[0x277D85DF0];
  v33 = *(a3 - 8);
  v7 = MEMORY[0x28223BE28](a1);
  v35 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE28](v7);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 16);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE28](v11);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v10 + 16);
  v34 = v20;
  v19(v13, v20);
  if ((*(v16 + 48))(v13, 1, v15) == 1)
  {
    (*(v10 + 8))(v13, a2);
    return v36(0);
  }

  else
  {
    v32 = a4;
    v31 = *(v16 + 32);
    v22 = v31(v18, v13, v15);
    v23 = MEMORY[0x28223BE28](v22);
    *(&v30 - 4) = v15;
    *(&v30 - 3) = a3;
    MEMORY[0x28223BE28](v23);
    *(&v30 - 4) = v15;
    *(&v30 - 3) = a3;
    v29 = v24;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB501D0, &qword_23041F050);
    v28 = 15938;
    v26 = v37;
    sub_2303F9AB8(v18, sub_2303F9A9C, (&v30 - 6), v15, v25, a3, MEMORY[0x277D84950], v38);
    if (v26)
    {
      return (*(v16 + 8))(v18, v15);
    }

    else
    {
      v27 = v34;
      (*(v10 + 8))(v34, a2);
      v31(v27, v18, v15);
      (*(v16 + 56))(v27, 0, 1, v15);
      return (*(v33 + 32))(v32, v35, a3);
    }
  }
}

uint64_t Optional.withUnsafePointer<A>(_:)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v24 = a4;
  v25[1] = *MEMORY[0x277D85DF0];
  v7 = *(a2 - 8);
  v8 = MEMORY[0x28223BE28](a1);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 16);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE28](v8);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v16);
  if ((*(v13 + 48))(v10, 1, v12) == 1)
  {
    (*(v7 + 8))(v10, a2);
    return a1(0);
  }

  else
  {
    v18 = (*(v13 + 32))(v15, v10, v12);
    v19 = MEMORY[0x28223BE28](v18);
    *(&v24 - 4) = v12;
    *(&v24 - 3) = a3;
    MEMORY[0x28223BE28](v19);
    *(&v24 - 4) = v12;
    *(&v24 - 3) = a3;
    v23 = v20;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB501D0, &qword_23041F050);
    v22 = 63553;
    sub_2303F9AB8(v15, sub_2303F9BBC, (&v24 - 6), v12, v21, a3, MEMORY[0x277D84950], v25);
    return (*(v13 + 8))(v15, v12);
  }
}

uint64_t sub_2303F9AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = MEMORY[0x28223BE28](a1);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v15(v12, v14);
  if (v8)
  {
    return (*(v11 + 32))(a8, v14, a5);
  }

  return result;
}

uint64_t sub_2303F9BD8(uint64_t a1, void *a2)
{
  result = (*(v2 + 32))(a1);
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

uint64_t MessageWrapper.init(value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v8 = *(type metadata accessor for MessageWrapper(0, a2, a4, a5) + 44);
  v9 = *(a2 - 8);
  (*(v9 + 16))(a3 + v8, a1, a2);
  v10 = sub_23041CC18();
  v12 = v11;
  result = (*(v9 + 8))(a1, a2);
  *a3 = v10;
  a3[1] = v12;
  return result;
}

uint64_t sub_2303F9CF8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(a1[2] - 8) + 32))(a3, v3);
  }

  (*(*(a1[3] - 8) + 32))(a2, v3, a1[3]);
  return swift_willThrowTypedImpl();
}

uint64_t CodableDispatcher.init()(uint64_t a1)
{
  v2 = v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE28](a1);
  v6 = &v15 - v5;
  *(v2 + v7[14]) = 0;
  v8 = *(*v2 + 120);
  v9 = v7[12];
  v10 = type metadata accessor for CodableDispatcher.OperationInfo(255, v3, v7[11], v9);
  v11 = MEMORY[0x277D837D0];
  swift_getTupleTypeMetadata2();
  v12 = sub_23041BFD8();
  v13 = sub_23040079C(v12, v11, v10, MEMORY[0x277D837E0]);

  *(v2 + v8) = v13;
  (*(v9 + 16))(v3, v9);
  (*(v4 + 32))(v2 + *(*v2 + 104), v6, v3);
  return v2;
}

uint64_t CodableDispatcher.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 104));

  return v0;
}

uint64_t sub_2303FA044@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_2303FA0E4(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 104);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 40))(v1 + v4, a1);
  return swift_endAccess();
}

void sub_2303FA2C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = *v11;
  if (*(v11 + *(*v11 + 112)))
  {
    __break(1u);
  }

  else
  {
    sub_23041CC18();
    v18 = swift_allocObject();
    swift_weakInit();
    v19 = swift_allocObject();
    v20 = v12[10];
    v19[2] = v20;
    v21 = v12[11];
    v19[3] = v21;
    v19[4] = a4;
    v19[5] = a5;
    v19[6] = a6;
    v22 = v12[12];
    v19[7] = v22;
    v19[8] = a7;
    v19[9] = a8;
    v19[10] = a9;
    v19[11] = a10;
    v19[12] = a11;
    v19[13] = v18;
    v19[14] = a2;
    v19[15] = a3;
    swift_beginAccess();
    type metadata accessor for CodableDispatcher.OperationInfo(255, v20, v21, v22);
    sub_23041BCE8();

    sub_23041BD08();
    swift_endAccess();
  }
}

void sub_2303FA53C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = *v11;
  if (*(v11 + *(*v11 + 112)))
  {
    __break(1u);
  }

  else
  {
    v30[0] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DB501D0, &qword_23041F050);
    v30[1] = a6;
    v30[2] = &type metadata for DispatcherErrorWrapper;
    v30[3] = a11;
    v30[4] = sub_2303F524C();
    v27 = type metadata accessor for CompositeDynamicCodableContainer(0, v30);
    v17 = swift_allocObject();
    v18 = v12[10];
    v17[2] = v18;
    v19 = v12[11];
    v17[3] = v19;
    v17[4] = a4;
    v17[5] = a5;
    v17[6] = a6;
    v20 = v12[12];
    v17[7] = v20;
    v17[8] = a7;
    v17[9] = a8;
    v17[10] = a9;
    v17[11] = a10;
    v17[12] = a11;
    v17[13] = a2;
    v17[14] = a3;
    v21 = swift_allocObject();
    v21[2] = v18;
    v21[3] = v19;
    v21[4] = a4;
    v21[5] = a5;
    v21[6] = a6;
    v21[7] = v20;
    v21[8] = a7;
    v21[9] = a8;
    v21[10] = a9;
    v21[11] = a10;
    v21[12] = a11;
    v21[13] = sub_230400AD4;
    v21[14] = v17;

    WitnessTable = swift_getWitnessTable();
    sub_2303FA2C4(WitnessTable, sub_230400B14, v21, a4, a5, v27, a7, a8, a9, a10, WitnessTable);
  }
}

uint64_t sub_2303FA74C(uint64_t a1)
{
  v2 = *v1;
  swift_beginAccess();
  type metadata accessor for CodableDispatcher.OperationInfo(0, v2[10], v2[11], v2[12]);

  sub_23041CC18();
  sub_23041BCD8();
  swift_getWitnessTable();
  v3 = sub_23041BF38();

  return v3 & 1;
}

uint64_t sub_2303FA884@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, char *a7@<X8>)
{
  v90 = a4;
  v83 = a3;
  v104 = a2;
  v101 = a7;
  v11 = *v7;
  *&v105 = &type metadata for UnknownResultType;
  *(&v105 + 1) = a5;
  v106 = sub_23040249C();
  v107 = sub_2303F15C8();
  v89 = a6;
  v108 = *(a6 + 8);
  v91 = type metadata accessor for DispatcherResponse(0, &v105);
  v88 = *(v91 - 8);
  MEMORY[0x28223BE28](v91);
  v87 = v79 - v12;
  v13 = *(v11 + 96);
  v14 = *(v11 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v94 = sub_23041C1C8();
  v93 = *(v94 - 8);
  v16 = MEMORY[0x28223BE28](v94);
  v18 = v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE28](v16);
  v96 = v79 - v20;
  v95 = AssociatedTypeWitness;
  v99 = *(AssociatedTypeWitness - 8);
  v21 = MEMORY[0x28223BE28](v19);
  v86 = v79 - v22;
  v92 = *(a5 - 8);
  v23 = MEMORY[0x28223BE28](v21);
  v100 = v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v14 - 8);
  v26 = MEMORY[0x28223BE28](v23);
  v85 = v79 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE28](v26);
  v84 = v79 - v29;
  v30 = MEMORY[0x28223BE28](v28);
  v32 = v79 - v31;
  MEMORY[0x28223BE28](v30);
  v34 = v79 - v33;
  v102 = v7;
  sub_2303FA044(v79 - v33);
  v35 = *(v13 + 80);
  v98 = v13;
  v36 = v35(a1, v14, v13);
  v37 = *(v25 + 8);
  v103 = v14;
  v97 = v25 + 8;
  v37(v34, v14);
  if (v36)
  {
    sub_23040253C(v104, &v110);
    if (v111)
    {
      sub_2304025AC(&v110, &v105);
      sub_2303FA044(v34);
      v38 = v103;
      (*(v98 + 88))(&v105, v103);
      v39 = v34;
      v40 = v38;
LABEL_4:
      v37(v39, v40);
      result = __swift_destroy_boxed_opaque_existential_1Tm(&v105);
LABEL_13:
      v53 = v101;
      v54 = 0;
      goto LABEL_27;
    }

    goto LABEL_12;
  }

  *&v105 = a1;
  v42 = a1;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB501D0, &qword_23041F050);
  v44 = swift_dynamicCast();
  v45 = a1;
  if (v44)
  {
    v46 = v103;
    v47 = v95;
    if (v110 == 1)
    {
      sub_23040253C(v104, &v110);
      if (v111)
      {
        sub_2304025AC(&v110, &v105);
        sub_2303FA044(v34);
        (*(v98 + 88))(&v105, v46);
        v39 = v34;
        v40 = v46;
        goto LABEL_4;
      }

LABEL_12:
      result = sub_2303BA754(&v110, &unk_27DB50580, &unk_2304211A0);
      goto LABEL_13;
    }
  }

  else
  {
    v46 = v103;
    v47 = v95;
  }

  v79[1] = v43;
  v81 = v37;
  *&v105 = v45;
  v48 = v89;
  v49 = *(v89 + 56);
  v80 = v45;
  v50 = v45;
  v82 = a5;
  v49(&v105, a5, v48);
  (*(v93 + 16))(v18, v90, v94);
  v51 = v99;
  v52 = *(v99 + 48);
  if (v52(v18, 1, v47) == 1)
  {
    sub_2303FA044(v32);
    (*(v98 + 32))(v83, v46);
    v81(v32, v46);
    (*(v99 + 56))(v96, 0, 1, v47);
    v58 = v52(v18, 1, v47);
    if (v58 != 1)
    {
      (*(v93 + 8))(v18, v94);
    }

    v56 = v104;
    v57 = v91;
    v51 = v99;
    v55 = v96;
  }

  else
  {
    v55 = v96;
    (*(v51 + 32))(v96, v18, v47);
    (*(v51 + 56))(v55, 0, 1, v47);
    v56 = v104;
    v57 = v91;
  }

  if (v52(v55, 1, v47) == 1)
  {
    (*(v93 + 8))(v55, v94);
    v59 = sub_23041C0B8();
    sub_2304024F0();
    v60 = sub_23041C1B8();
    sub_23041BB28(v59, &dword_2303B3000, v60, "No way to send error reply", 26, 2, MEMORY[0x277D84F90]);

    sub_23040253C(v56, &v105);
    v53 = v101;
    v61 = v82;
    if (v107)
    {
      sub_2304025AC(&v105, &v110);
      sub_2303FA044(v34);
      *&v105 = v80;
      v109 = 1;
      v62 = v98;
      v63 = *(v98 + 72);
      v64 = v80;
      v65 = v103;
      v63(&v110, &v105, v103, v62);
      sub_2303BA754(&v105, &qword_27DB50380, &qword_2304211B0);
      v81(v34, v65);
      __swift_destroy_boxed_opaque_existential_1Tm(&v110);
      result = (*(v92 + 8))(v100, v61);
    }

    else
    {
      (*(v92 + 8))(v100, v82);
      result = sub_2303BA754(&v105, &unk_27DB50580, &unk_2304211A0);
    }
  }

  else
  {
    v66 = v86;
    (*(v51 + 32))(v86, v55, v47);
    v67 = v84;
    sub_2303FA044(v84);
    v68 = v87;
    (*(v92 + 16))(v87, v100, v82);
    swift_storeEnumTagMultiPayload();
    v69 = v98;
    v96 = *(v98 + 48);
    WitnessTable = swift_getWitnessTable();
    v71 = swift_getWitnessTable();
    v72 = v103;
    (v96)(v68, v66, v57, WitnessTable, v71, v103, v69);
    (*(v88 + 8))(v68, v57);
    v73 = v67;
    v74 = v81;
    v81(v73, v72);
    v75 = v85;
    sub_2303FA044(v85);
    (*(v69 + 96))(v66, v72, v69);
    v74(v75, v72);
    (*(v99 + 8))(v66, v95);
    sub_23040253C(v104, &v105);
    v76 = v80;
    if (v107)
    {
      sub_2304025AC(&v105, &v110);
      sub_2303FA044(v34);
      *&v105 = v76;
      v109 = 1;
      v77 = *(v69 + 72);
      v78 = v76;
      v77(&v110, &v105, v72, v69);
      sub_2303BA754(&v105, &qword_27DB50380, &qword_2304211B0);
      v74(v34, v72);
      __swift_destroy_boxed_opaque_existential_1Tm(&v110);
      result = (*(v92 + 8))(v100, v82);
    }

    else
    {
      (*(v92 + 8))(v100, v82);
      result = sub_2303BA754(&v105, &unk_27DB50580, &unk_2304211A0);
    }

    v53 = v101;
  }

  v54 = 1;
LABEL_27:
  *v53 = v54;
  return result;
}

void sub_2303FB5F0(uint64_t a1, uint64_t a2, void (*a3)(_OWORD *), uint64_t a4)
{
  v5 = v4;
  v51 = a4;
  v8 = *v4;
  v44 = a2;
  v45 = v8;
  v9 = v8[12];
  v10 = v8[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_23041C1C8();
  v49 = *(v11 - 8);
  v50 = v11;
  v12 = MEMORY[0x28223BE28](v11);
  v48 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE28](v12);
  v47 = &v42 - v15;
  v16 = *(v10 - 8);
  v17 = MEMORY[0x28223BE28](v14);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE28](v17);
  v21 = &v42 - v20;
  *(v5 + v8[14]) = 1;
  sub_2303FA044(&v42 - v20);
  LOBYTE(v8) = (*(v9 + 24))(a1, v10, v9);
  v22 = *(v16 + 8);
  v22(v21, v10);
  if (v8)
  {
    v43 = a3;
    sub_2303FA044(v19);
    v23 = *(v9 + 40);
    v42 = a1;
    v32 = v23(a1, v10, v9);
    v34 = v33;
    v22(v19, v10);
    swift_beginAccess();
    v52[0] = v32;
    v52[1] = v34;
    type metadata accessor for CodableDispatcher.OperationInfo(0, v10, v45[11], v9);

    sub_23041BCF8();

    v35 = *&v53[0];
    if (*&v53[0])
    {
      v36 = *(&v53[0] + 1);
      v37 = swift_allocObject();
      v38 = v43;
      v39 = v51;
      *(v37 + 16) = v43;
      *(v37 + 24) = v39;
      sub_2303BE674(v35, v36);
      sub_2303BE674(v38, v39);
      v35(v42, v44, sub_23040101C, v37);

      sub_2303BCC60(v35, v36);
      sub_2303BCC60(v35, v36);
    }

    else
    {
      sub_230400FC8();
      v40 = swift_allocError();
      *v41 = 0;
      swift_willThrow();
      memset(v53, 0, 48);
      v24 = AssociatedTypeWitness;
      v25 = v47;
      v26 = *(AssociatedTypeWitness - 8);
      (*(v26 + 16))(v47, v42, AssociatedTypeWitness);
      v27 = *(v26 + 56);
      v27(v25, 0, 1, v24);
      v28 = v48;
      v27(v48, 1, 1, v24);
      v29 = sub_2303F524C();
      sub_2303FA884(v40, v53, v25, v28, &type metadata for DispatcherErrorWrapper, v29, v52);
      v30 = v50;
      v31 = *(v49 + 8);
      v31(v28, v50);
      v31(v25, v30);
      sub_2303BA754(v53, &unk_27DB50580, &unk_2304211A0);
      if (v43)
      {
        LOBYTE(v53[0]) = v52[0];
        v43(v53);
      }
    }
  }

  else if (a3)
  {
    LOBYTE(v53[0]) = 0;
    a3(v53);
  }
}

uint64_t sub_2303FBB90(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t, uint64_t (*)(), char *), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v124 = a7;
  v123 = a6;
  v101 = a5;
  v102 = a4;
  v99 = a3;
  v100 = a2;
  v138 = a1;
  v122 = a15;
  v98 = *v15;
  v134 = v98[12];
  v17 = v98[10];
  v121 = a10;
  v18 = v17;
  v139 = v17;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = *(AssociatedTypeWitness - 8);
  v95 = v20[8];
  MEMORY[0x28223BE28](AssociatedTypeWitness);
  v96 = &v92 - v21;
  v22 = sub_23041C1C8();
  v126 = *(v22 - 8);
  v23 = MEMORY[0x28223BE28](v22);
  v116 = &v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE28](v23);
  v107 = &v92 - v26;
  MEMORY[0x28223BE28](v25);
  v105 = &v92 - v27;
  v128 = a11;
  v129 = a12;
  v109 = type metadata accessor for MessageWrapper(0, a8, a11, a12);
  v104 = *(v109 - 8);
  v28 = MEMORY[0x28223BE28](v109);
  v110 = &v92 - v29;
  v137 = *(v18 - 8);
  v30 = MEMORY[0x28223BE28](v28);
  v106 = &v92 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE28](v30);
  v108 = &v92 - v33;
  MEMORY[0x28223BE28](v32);
  v35 = &v92 - v34;
  v36 = AssociatedTypeWitness;
  v37 = sub_23041C1C8();
  v135 = *(v37 - 8);
  v38 = MEMORY[0x28223BE28](v37);
  v115 = &v92 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE28](v38);
  v114 = &v92 - v41;
  v42 = MEMORY[0x28223BE28](v40);
  v44 = &v92 - v43;
  MEMORY[0x28223BE28](v42);
  v46 = &v92 - v45;
  v127 = v22;
  v120 = swift_allocBox();
  v47 = *(a8 - 8);
  v48 = *(v47 + 56);
  v125 = v49;
  v131 = a8;
  v103 = v48;
  v48(v49, 1, 1, a8);
  v136 = v37;
  v119 = swift_allocBox();
  v50 = v20[7];
  v130 = v51;
  v50(v51, 1, 1, v36);
  v132 = v15;
  sub_2303FA044(v35);
  v97 = v20;
  v52 = v20[2];
  v118 = v20 + 2;
  v117 = v52;
  v52(v44, v138, v36);
  v133 = v36;
  v50(v44, 0, 1, v36);
  v53 = *(v134 + 32);
  v113 = v46;
  v54 = v35;
  v53(v44, v139);
  v112 = v50;
  v92 = v47 + 56;
  v93 = v47;
  v56 = v135;
  v55 = v136;
  v111 = *(v135 + 8);
  v111(v44, v136);
  v57 = *(v137 + 8);
  v58 = v139;
  v137 += 8;
  v94 = v57;
  v57(v54, v139);
  v59 = v113;
  v50(v113, 0, 1, v133);
  (*(v56 + 40))(v130, v59, v55);
  v60 = v108;
  sub_2303FA044(v108);
  v61 = v134;
  v62 = *(v134 + 56);
  v63 = v109;
  WitnessTable = swift_getWitnessTable();
  v62(v138, v63, WitnessTable, v58, v61);
  v113 = 0;
  v65 = v139;
  v94(v60, v139);
  v66 = v93;
  v67 = v110;
  v68 = v105;
  v69 = v131;
  (*(v93 + 16))(v105, &v110[*(v63 + 44)], v131);
  (*(v104 + 8))(v67, v63);
  v103(v68, 0, 1, v69);
  v70 = v126;
  v71 = v125;
  v72 = v127;
  (*(v126 + 40))(v125, v68, v127);
  v73 = v106;
  sub_2303FA044(v106);
  *(&v143 + 1) = v72;
  v141 = v128;
  v144 = swift_getWitnessTable();
  v140 = v129;
  v145 = swift_getWitnessTable();
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v142);
  v75 = *(v70 + 16);
  v75(boxed_opaque_existential_0Tm, v71, v72);
  (*(v134 + 64))(&v142, v65);
  v94(v73, v65);
  __swift_destroy_boxed_opaque_existential_1Tm(&v142);
  v76 = v107;
  v75(v107, v71, v72);
  result = (*(v66 + 48))(v76, 1, v69);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v78 = swift_allocObject();
    swift_weakInit();
    v79 = v96;
    v80 = v133;
    v117(v96, v138, v133);
    v81 = v97;
    v82 = (*(v97 + 80) + 144) & ~*(v97 + 80);
    v83 = (v95 + v82 + 7) & 0xFFFFFFFFFFFFFFF8;
    v84 = swift_allocObject();
    *(v84 + 2) = v139;
    v85 = v131;
    *(v84 + 3) = v98[11];
    *(v84 + 4) = v85;
    v86 = v121;
    *(v84 + 5) = a9;
    *(v84 + 6) = v86;
    v87 = v128;
    *(v84 + 7) = v134;
    *(v84 + 8) = v87;
    *(v84 + 9) = v129;
    *(v84 + 10) = a13;
    v88 = v122;
    *(v84 + 11) = a14;
    *(v84 + 12) = v88;
    v89 = v119;
    *(v84 + 13) = v78;
    *(v84 + 14) = v89;
    v90 = v123;
    *(v84 + 15) = v120;
    *(v84 + 16) = v90;
    *(v84 + 17) = v124;
    (v81[4])(&v84[v82], v79, v80);
    *&v84[v83] = v99;

    v91 = v107;
    v102(v107, v100, sub_23040232C, v84);

    (*(v93 + 8))(v91, v131);
  }

  return result;
}

uint64_t sub_2303FC944(uint64_t a1, uint64_t a2, void (*a3)(_OWORD *), uint64_t a4, uint64_t a5)
{
  v57 = a4;
  v65 = a3;
  v52 = a2;
  v70 = a1;
  v6 = *v5;
  v68 = *(a5 - 8);
  MEMORY[0x28223BE28](a1);
  v58 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v8;
  v67 = v9;
  v69 = v10;
  v56 = type metadata accessor for MessageWrapper(0, v8, v9, v10);
  v55 = *(v56 - 8);
  MEMORY[0x28223BE28](v56);
  v54 = (&v50 - v11);
  v12 = *(v6 + 96);
  v13 = *(v6 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = sub_23041C1C8();
  v76 = *(v15 - 8);
  v16 = MEMORY[0x28223BE28](v15);
  v62 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE28](v16);
  v74 = &v50 - v19;
  v20 = MEMORY[0x28223BE28](v18);
  v75 = &v50 - v21;
  v22 = MEMORY[0x28223BE28](v20);
  v24 = &v50 - v23;
  v25 = *(v13 - 8);
  v26 = MEMORY[0x28223BE28](v22);
  v73 = &v50 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE28](v26);
  v66 = &v50 - v29;
  v30 = MEMORY[0x28223BE28](v28);
  v32 = &v50 - v31;
  v33 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE28](v30);
  v35 = &v50 - v34;
  v78 = v5;
  sub_2303FA044(v32);
  v53 = v33;
  v36 = *(v33 + 56);
  v77 = AssociatedTypeWitness;
  v72 = v36;
  v36(v24, 1, 1, AssociatedTypeWitness);
  v37 = *(v12 + 32);
  v59 = v35;
  v64 = v12;
  v38 = v12;
  v39 = v37;
  v37(v24, v13, v38);
  v63 = v15;
  v60 = v25;
  v50 = v39;
  v61 = *(v76 + 8);
  v61(v24, v15);
  v51 = *(v25 + 8);
  v51(v32, v13);
  sub_2303FA044(v66);
  v40 = v58;
  v41 = v71;
  (*(v68 + 16))(v58, v70, v71);
  v42 = v54;
  MessageWrapper.init(value:)(v40, v41, v54, v67, v69);
  v43 = v64;
  v58 = *(v64 + 48);
  v44 = v56;
  WitnessTable = swift_getWitnessTable();
  v46 = swift_getWitnessTable();
  (v58)(v42, v59, v44, WitnessTable, v46, v13, v43);
  v47 = (v53 + 8);
  (*(v55 + 8))(v42, v44);
  v51(v66, v13);
  v48 = v59;
  sub_2303FB5F0(v59, v52, v65, v57);
  return (*v47)(v48, v77);
}

uint64_t sub_2303FD240@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_2303FD270(uint64_t a1)
{
  v2 = sub_230401060();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2303FD2AC(uint64_t a1)
{
  v2 = sub_230401060();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UnknownResultType.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB50320, &unk_230420540);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE28](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_230401060();
  sub_23041CBC8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_2303FD44C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB50320, &unk_230420540);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE28](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_230401060();
  sub_23041CBC8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t MessageHeader.mangledTypeName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MessageHeader.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB50210, &unk_230421770);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE28](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2304010B4();
  sub_23041CBB8();
  if (!v2)
  {
    v14 = 0;
    v9 = sub_23041C488();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t MessageWrapper.mangledTypeName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MessageWrapper.encode(to:)(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB50330, &qword_230420550);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE28](v4);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2304010B4();
  sub_23041CBC8();
  v11 = 0;
  sub_23041C538();
  if (!v2)
  {
    v10 = 1;
    sub_23041C578();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t MessageWrapper.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v27 = a5;
  v26 = *(a2 - 8);
  MEMORY[0x28223BE28](a1);
  v29 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB50210, &unk_230421770);
  v28 = *(v31 - 8);
  MEMORY[0x28223BE28](v31);
  v12 = v23 - v11;
  v30 = a3;
  v13 = type metadata accessor for MessageWrapper(0, a2, a3, a4);
  v25 = *(v13 - 8);
  MEMORY[0x28223BE28](v13);
  v15 = (v23 - v14);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2304010B4();
  sub_23041CBB8();
  if (v5)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v16 = v15;
  v24 = v13;
  v18 = v28;
  v17 = v29;
  v33 = 0;
  *v16 = sub_23041C488();
  v16[1] = v19;
  v23[1] = v19;
  v32 = 1;
  sub_23041C4C8();
  (*(v18 + 8))(v12, v31);
  v20 = v24;
  (*(v26 + 32))(v16 + *(v24 + 44), v17, a2);
  v21 = v25;
  (*(v25 + 16))(v27, v16, v20);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return (*(v21 + 8))(v16, v20);
}

uint64_t sub_2303FDC78(uint64_t a1, uint64_t a2)
{
  v2 = sub_23041C458();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2303FDCCC(char a1)
{
  if (a1)
  {
    return 0x726F727265;
  }

  else
  {
    return 0x65736E6F70736572;
  }
}

uint64_t sub_2303FDD3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_2303FDDB0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_2303FDE1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_2303FDE8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_2303FDEFC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2303FDC78(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_2303FDF2C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2303FDCCC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2303FDF60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2303FDC78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2303FDF88@<X0>(_BYTE *a2@<X8>)
{
  result = sub_23040221C();
  *a2 = result;
  return result;
}

uint64_t sub_2303FDFC0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_2303FE014(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t DispatcherResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v51 = a8;
  v15 = sub_23041C1C8();
  v54 = *(v15 - 8);
  v55 = v15;
  v16 = MEMORY[0x28223BE28](v15);
  v59 = &v45 - v17;
  v53 = *(a3 - 8);
  MEMORY[0x28223BE28](v16);
  v48 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = a2;
  v63 = a3;
  v64 = a4;
  v65 = a5;
  v66 = a6;
  v67 = a7;
  type metadata accessor for DispatcherResponse.CodingKeys(255, &v62);
  WitnessTable = swift_getWitnessTable();
  v60 = sub_23041C508();
  v52 = *(v60 - 8);
  MEMORY[0x28223BE28](v60);
  v20 = &v45 - v19;
  v49 = a2;
  v62 = a2;
  v63 = a3;
  v56 = a3;
  v57 = a4;
  v64 = a4;
  v65 = a5;
  v58 = a6;
  v66 = a6;
  v67 = a7;
  v21 = type metadata accessor for DispatcherResponse(0, &v62);
  v50 = *(v21 - 8);
  v22 = MEMORY[0x28223BE28](v21);
  v24 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE28](v22);
  v26 = &v45 - v25;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v27 = v68;
  sub_23041CBB8();
  v28 = a1;
  if (!v27)
  {
    v46 = v24;
    v47 = v26;
    v30 = v52;
    v29 = v53;
    WitnessTable = v21;
    v32 = v54;
    v31 = v55;
    v68 = v28;
    v33 = v56;
    LOBYTE(v62) = 1;
    sub_23041C468();
    if ((*(v29 + 48))(v59, 1, v33) == 1)
    {
      (*(v32 + 8))(v59, v31);
      LOBYTE(v62) = 0;
      v34 = v46;
      v35 = v60;
      sub_23041C4C8();
      v38 = v51;
      (*(v30 + 8))(v20, v35);
      v39 = WitnessTable;
      swift_storeEnumTagMultiPayload();
      v40 = *(v50 + 32);
      v41 = v47;
      v40(v47, v34, v39);
      v42 = v38;
    }

    else
    {
      (*(v30 + 8))(v20, v60);
      v36 = *(v29 + 32);
      v37 = v48;
      v36(v48, v59, v33);
      v41 = v47;
      v36(v47, v37, v33);
      v39 = WitnessTable;
      swift_storeEnumTagMultiPayload();
      v42 = v51;
      v40 = *(v50 + 32);
    }

    v43 = v68;
    v40(v42, v41, v39);
    v28 = v43;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v28);
}

uint64_t DispatcherResponse.encode(to:)(void *a1, uint64_t a2)
{
  v36 = *(*(a2 + 16) - 8);
  v4 = MEMORY[0x28223BE28](a1);
  v35 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(*(v6 + 24) - 8);
  v7 = MEMORY[0x28223BE28](v4);
  v32 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE28](v7);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 32);
  v15 = *(v13 + 56);
  v37 = v16;
  v41[0] = v16;
  v41[1] = v17;
  v34 = v17;
  v41[2] = v14;
  v30 = *(v13 + 40);
  v42 = v30;
  v31 = v15;
  v43 = v15;
  type metadata accessor for DispatcherResponse.CodingKeys(255, v41);
  swift_getWitnessTable();
  v18 = sub_23041C5A8();
  v39 = *(v18 - 8);
  v40 = v18;
  MEMORY[0x28223BE28](v18);
  v20 = &v30 - v19;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_23041CBC8();
  (*(v10 + 16))(v12, v38, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = v35;
    v21 = v36;
    v23 = v37;
    (*(v36 + 32))(v35, v12, v37);
    LOBYTE(v41[0]) = 0;
    v24 = v40;
    sub_23041C578();
    (*(v21 + 8))(v22, v23);
    return (*(v39 + 8))(v20, v24);
  }

  else
  {
    v27 = v32;
    v26 = v33;
    v28 = v34;
    (*(v33 + 32))(v32, v12, v34);
    LOBYTE(v41[0]) = 1;
    v29 = v40;
    sub_23041C578();
    (*(v26 + 8))(v27, v28);
    return (*(v39 + 8))(v20, v29);
  }
}

uint64_t DispatchOutcome.hashValue.getter()
{
  v1 = *v0;
  sub_23041CB48();
  MEMORY[0x2319161D0](v1);
  return sub_23041CB78();
}

Mercury::CodableDispatcherError_optional __swiftcall CodableDispatcherError.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

void *sub_2303FEA30@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_2303FEA5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_230402448();
  v5 = sub_2303F933C();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

unint64_t sub_2303FEB64()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB50358, &qword_230421010);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_23041E310;
  v1 = sub_230402174();
  result = sub_2304021C8();
  *(v0 + 32) = &type metadata for CodableDispatcherError;
  *(v0 + 40) = v1;
  *(v0 + 48) = result;
  qword_27DB53E28 = v0;
  return result;
}

uint64_t sub_2303FEBD4(uint64_t a1)
{
  sub_230400FC8();
  result = swift_allocError();
  *v2 = 0;
  qword_27DB53E20 = result;
  return result;
}

uint64_t sub_2303FEC10()
{
  if (qword_27DB4FBE0 != -1)
  {
    swift_once();
  }
}

id sub_2303FEC6C@<X0>(void *a1@<X8>)
{
  if (qword_27DB4FBD8 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_27DB53E20;
  *a1 = qword_27DB53E20;

  return v2;
}

id sub_2303FECDC@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

uint64_t sub_2303FECE8@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_230400C6C(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_2303FED30(void *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB50330, &qword_230420550);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE28](v5);
  v8 = &v25 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v26 = sub_2304010B4();
  sub_23041CBC8();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB501D0, &qword_23041F050);
  v30 = v9;
  v29[0] = a2;
  __swift_project_boxed_opaque_existential_0(v29, v9);
  swift_getDynamicType();
  v10 = a2;
  v11 = a2;
  v12 = sub_23041CC18();
  v14 = v13;
  __swift_destroy_boxed_opaque_existential_1Tm(v29);
  if (!sub_230400B3C(v12, v14))
  {
    if (qword_27DB4FBD8 != -1)
    {
      swift_once();
    }

    v15 = qword_27DB53E20;
    if (!qword_27DB53E20)
    {
      sub_230402224();
      swift_allocError();
      *v24 = v12;
      *(v24 + 8) = v14;
      *(v24 + 40) = 0;
      swift_willThrow();

      return (*(v6 + 8))(v8, v5);
    }

    v16 = qword_27DB53E20;

    v30 = v9;
    v29[0] = v15;
    __swift_project_boxed_opaque_existential_0(v29, v9);
    swift_getDynamicType();
    v17 = v15;
    sub_23041CC18();

    __swift_destroy_boxed_opaque_existential_1Tm(v29);
    a2 = v15;
  }

  v32 = a2;
  v18 = a2;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB50370, &qword_230420CC8);
  if (!swift_dynamicCast())
  {

    v28 = 0;
    memset(v27, 0, sizeof(v27));
    sub_2303BA754(v27, &qword_27DB50378, &unk_230420CD0);
    sub_230402224();
    swift_allocError();
    *v20 = a2;
    *(v20 + 24) = v9;
    *(v20 + 32) = v19;
    *(v20 + 40) = 1;
    swift_willThrow();
    return (*(v6 + 8))(v8, v5);
  }

  sub_2303BE65C(v27, v29);
  LOBYTE(v27[0]) = 0;
  sub_23041C538();

  if (!v2)
  {
    v21 = v30;
    v22 = v31;
    __swift_project_boxed_opaque_existential_0(v29, v30);
    LOBYTE(v27[0]) = 1;
    sub_2304149A8(v8, v27, v21, &type metadata for DynamicCodableContainerCodingKeys, v22, v26);
  }

  (*(v6 + 8))(v8, v5);
  return __swift_destroy_boxed_opaque_existential_1Tm(v29);
}

uint64_t sub_2303FF108(uint64_t a1)
{
  MEMORY[0x28223BE28](a1);
  v2 = &v5 - v1;
  (*(v3 + 16))(&v5 - v1);
  return sub_2303FA0E4(v2);
}

uint64_t CodableDispatcher.__allocating_init()()
{
  v0 = swift_allocObject();
  CodableDispatcher.init()(v0);
  return v0;
}

uint64_t sub_2303FF200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(char *, uint64_t, uint64_t (*)(), char *), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v27[0] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DB501D0, &qword_23041F050);
    v27[1] = a12;
    v27[2] = &type metadata for DispatcherErrorWrapper;
    v27[3] = a18;
    v27[4] = sub_2303F524C();
    v25 = type metadata accessor for CompositeDynamicCodableContainer(0, v27);
    WitnessTable = swift_getWitnessTable();
    sub_2303FBB90(a1, a2, v25, a6, a7, a3, a4, a10, a11, v25, a14, a15, a16, a17, WitnessTable);
  }

  return result;
}

uint64_t sub_2303FF348(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, void (*a5)(uint64_t, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v22[1] = a4;
  v23 = a3;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DB501D0, &qword_23041F050);
  v13 = sub_23041CB88();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE28](v13);
  v17 = v22 - v16;
  v18 = *(a10 - 8);
  MEMORY[0x28223BE28](v15);
  v20 = v22 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  a5(a1, a2);
  (*(v18 + 16))(v17, v20, a10);
  swift_storeEnumTagMultiPayload();
  v23(v17);
  (*(v14 + 8))(v17, v13);
  return (*(v18 + 8))(v20, a10);
}

char *sub_2303FF584(char *result, uint64_t (*a2)(char *))
{
  if (a2)
  {
    v2 = *result;
    return a2(&v2);
  }

  return result;
}

uint64_t sub_2303FF5C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, uint64_t a18)
{
  v95 = a7;
  v99 = a6;
  v100 = a5;
  v106 = a4;
  v105 = a3;
  v104 = a1;
  v93 = a11;
  v98 = sub_23041C1C8();
  v103 = *(v98 - 8);
  MEMORY[0x28223BE28](v98);
  v92 = &v70 - v18;
  v86 = a14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v102 = sub_23041C1C8();
  v101 = *(v102 - 8);
  v20 = MEMORY[0x28223BE28](v102);
  v94 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE28](v20);
  v91 = &v70 - v23;
  v24 = MEMORY[0x28223BE28](v22);
  v83 = &v70 - v25;
  v85 = a9;
  v89 = *(a9 - 8);
  v26 = MEMORY[0x28223BE28](v24);
  v80 = &v70 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE28](v26);
  v82 = &v70 - v29;
  MEMORY[0x28223BE28](v28);
  v31 = &v70 - v30;
  v107[0] = a12;
  v96 = a13;
  v107[1] = a13;
  v81 = a17;
  v108 = a17;
  v97 = a18;
  v109 = *(a18 + 8);
  v32 = type metadata accessor for DispatcherResponse(0, v107);
  v84 = *(v32 - 8);
  MEMORY[0x28223BE28](v32);
  v87 = &v70 - v33;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DB501D0, &qword_23041F050);
  v34 = sub_23041CB88();
  v35 = *(v34 - 1);
  v36 = MEMORY[0x28223BE28](v34);
  v38 = &v70 - v37;
  v90 = *(a12 - 8);
  MEMORY[0x28223BE28](v36);
  v40 = &v70 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = swift_projectBox();
  v106 = swift_projectBox();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v42 = result;
    v79 = a16;
    v78 = a15;
    (*(v35 + 16))(v38, v104, v34);
    sub_2303F9CF8(v34, v107, v40);
    v88 = v42;
    v43 = *(v90 + 16);
    v44 = AssociatedTypeWitness;
    v45 = v87;
    v76 = v40;
    v77 = a12;
    v73 = v90 + 16;
    v72 = v43;
    v43(v87, v40, a12);
    swift_storeEnumTagMultiPayload();
    sub_2303FA044(v31);
    v46 = v105;
    swift_beginAccess();
    v74 = *(v44 - 8);
    v47 = *(v74 + 48);
    v104 = v44;
    v75 = v47;
    result = v47(v46, 1, v44);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v48 = v86;
      v49 = *(v86 + 48);
      WitnessTable = swift_getWitnessTable();
      v51 = swift_getWitnessTable();
      v52 = WitnessTable;
      v53 = v85;
      v49(v45, v46, v32, v52, v51, v85, v48);
      swift_endAccess();
      v54 = *(v89 + 8);
      v89 += 8;
      v71 = v54;
      v54(v31, v53);
      v55 = v82;
      sub_2303FA044(v82);
      v56 = v105;
      swift_beginAccess();
      v57 = v83;
      (*(v101 + 16))(v83, v56, v102);
      v58 = v104;
      result = v75(v57, 1, v104);
      if (result != 1)
      {
        v59 = v86;
        (*(v86 + 96))(v57, v53, v86);
        v60 = v55;
        v61 = v103;
        v62 = v71;
        v71(v60, v53);
        (*(v74 + 8))(v57, v58);
        v63 = v80;
        sub_2303FA044(v80);
        v64 = v106;
        swift_beginAccess();
        v65 = v98;
        v113[3] = v98;
        v112 = v78;
        v113[4] = swift_getWitnessTable();
        v111 = v79;
        v113[5] = swift_getWitnessTable();
        boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v113);
        (*(v61 + 16))(boxed_opaque_existential_0Tm, v64, v65);
        v67 = v77;
        *(&v108 + 1) = v77;
        v109 = v81;
        v68 = __swift_allocate_boxed_opaque_existential_0Tm(v107);
        v69 = v76;
        v72(v68, v76, v67);
        v110 = 0;
        (*(v59 + 72))(v113, v107, v53, v59);
        v62(v63, v53);
        sub_2303BA754(v107, &qword_27DB50380, &qword_2304211B0);
        __swift_destroy_boxed_opaque_existential_1Tm(v113);
        LOBYTE(v107[0]) = 1;
        v100(v107);

        (*(v84 + 8))(v87, v32);
        return (*(v90 + 8))(v69, v67);
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t CodableDispatcher.__deallocating_deinit()
{
  CodableDispatcher.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t (*sub_230400474(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2303FA18C(v2);
  return sub_2304004E8;
}

void sub_2304004E8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

unint64_t sub_2304005B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23041BD38();

  return sub_230400614(a1, v6, a2, a3);
}

unint64_t sub_230400614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a1;
  v21[2] = a4;
  MEMORY[0x28223BE28](a1);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v4;
  v9 = -1 << *(v4 + 32);
  v11 = v10 & ~v9;
  v21[0] = v4 + 64;
  if ((*(v4 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v9;
    v15 = *(v6 + 16);
    v13 = v6 + 16;
    v14 = v15;
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v18 = v13;
      v14(v8, *(v22 + 48) + v16 * v11, a3);
      v19 = sub_23041BD78();
      (*v17)(v8, a3);
      if (v19)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      v13 = v18;
    }

    while (((*(v21[0] + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

unint64_t sub_23040079C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE28](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_23041C018())
  {
    sub_23041C438();
    v13 = sub_23041C428();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  result = sub_23041C018();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_23041BFF8())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_23041C2A8();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_2304005B8(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_230400B3C(uint64_t a1, uint64_t a2)
{
  if (qword_27DB4FBE0 != -1)
  {
LABEL_15:
    swift_once();
  }

  v4 = qword_27DB53E28;
  v5 = qword_27DB53E28 + 48;
  v12 = -*(qword_27DB53E28 + 16);
  v6 = -1;
  while (1)
  {
    if (v12 + v6 == -1)
    {
      return 0;
    }

    if (++v6 >= *(v4 + 16))
    {
      __break(1u);
      goto LABEL_15;
    }

    v7 = *(v5 - 16);
    if (sub_23041CC18() == a1 && v8 == a2)
    {
      break;
    }

    v5 += 24;
    v10 = sub_23041C808();

    if (v10)
    {
      return v7;
    }
  }

  return v7;
}

uint64_t sub_230400C6C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB50210, &unk_230421770);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE28](v3);
  v6 = &v24 - v5;
  v7 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v8 = sub_2304010B4();
  sub_23041CBB8();
  if (!v1)
  {
    LOBYTE(v27[0]) = 0;
    v9 = sub_23041C488();
    v7 = v11;
    v25 = v9;
    v12 = sub_230400B3C(v9, v11);
    if (v12)
    {
      v15 = v12;
      v16 = v14;
      v17 = v13;

      v26[0] = 1;
      v28 = v15;
      v29 = v17;
      v30 = v16;
      __swift_allocate_boxed_opaque_existential_0Tm(v27);
      sub_230414A18(v6, v26, v15, &type metadata for DynamicCodableContainerCodingKeys, v17, v8);
      sub_2304022C8(v27, v26);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB50368, &qword_230420CC0);
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB501D0, &qword_23041F050);
      if (swift_dynamicCast())
      {
        (*(v4 + 8))(v6, v3);
        v7 = v31;
        __swift_destroy_boxed_opaque_existential_1Tm(v27);
        __swift_destroy_boxed_opaque_existential_1Tm(a1);
        return v7;
      }

      sub_230402224();
      swift_allocError();
      v20 = v19;
      v21 = v28;
      v22 = __swift_project_boxed_opaque_existential_0(v27, v28);
      *(v20 + 24) = v21;
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v20);
      (*(*(v21 - 8) + 16))(boxed_opaque_existential_0Tm, v22, v21);
      *(v20 + 32) = v7;
      *(v20 + 40) = 1;
      swift_willThrow();
      (*(v4 + 8))(v6, v3);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
    }

    else
    {
      sub_230402224();
      swift_allocError();
      *v18 = v25;
      *(v18 + 8) = v7;
      *(v18 + 40) = 0;
      swift_willThrow();
      (*(v4 + 8))(v6, v3);
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v7;
}

unint64_t sub_230400FC8()
{
  result = qword_27DB4FBE8;
  if (!qword_27DB4FBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB4FBE8);
  }

  return result;
}

char *sub_23040101C(char *result)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *result;
    return v2(&v3);
  }

  return result;
}

unint64_t sub_230401060()
{
  result = qword_27DB50328;
  if (!qword_27DB50328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB50328);
  }

  return result;
}

unint64_t sub_2304010B4()
{
  result = qword_280AC7B20[0];
  if (!qword_280AC7B20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280AC7B20);
  }

  return result;
}

unint64_t sub_23040113C()
{
  result = qword_27DB50338;
  if (!qword_27DB50338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB50338);
  }

  return result;
}

unint64_t sub_230401194()
{
  result = qword_27DB50340;
  if (!qword_27DB50340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB50340);
  }

  return result;
}

uint64_t sub_230401218(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_230401298(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

void sub_23040141C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

uint64_t sub_230401674(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2304016F0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (v3 <= *(*(*(a3 + 24) - 8) + 64))
  {
    v3 = *(*(*(a3 + 24) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_25:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_25;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}

void sub_230401818(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 24) - 8) + 64);
  if (*(*(*(a4 + 16) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 16) - 8) + 64);
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_230401BC0(uint64_t a1)
{
  result = swift_checkMetadataState();
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

uint64_t dispatch thunk of CodableDispatcher.register<A, B>(handler:)()
{
  return (*(*v0 + 208))();
}

{
  return (*(*v0 + 224))();
}

uint64_t dispatch thunk of CodableDispatcher.register<A, B, C>(errorWrapperType:handler:)()
{
  return (*(*v0 + 216))();
}

{
  return (*(*v0 + 232))();
}

uint64_t getEnumTagSinglePayload for DynamicCodableContainerCodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DynamicCodableContainerCodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_230401FA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_230402044()
{
  result = qword_27DB50348;
  if (!qword_27DB50348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB50348);
  }

  return result;
}

unint64_t sub_23040209C()
{
  result = qword_27DB50350;
  if (!qword_27DB50350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB50350);
  }

  return result;
}

unint64_t sub_2304020F0(uint64_t a1)
{
  *(a1 + 8) = sub_230402120();
  result = sub_2303F161C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_230402120()
{
  result = qword_280AC7988;
  if (!qword_280AC7988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280AC7988);
  }

  return result;
}

unint64_t sub_230402174()
{
  result = qword_27DB4FBF0;
  if (!qword_27DB4FBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB4FBF0);
  }

  return result;
}

unint64_t sub_2304021C8()
{
  result = qword_27DB4FC00;
  if (!qword_27DB4FC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB4FC00);
  }

  return result;
}

unint64_t sub_230402224()
{
  result = qword_27DB50360;
  if (!qword_27DB50360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB50360);
  }

  return result;
}

uint64_t __swift_deallocate_boxed_opaque_existential_2(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x231916D20);
  }

  return result;
}

uint64_t sub_2304022C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_23040232C(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v12 = *(v1 + 64);
  v13 = *(v1 + 24);
  v11 = *(v1 + 80);
  v7 = *(v1 + 96);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = (*(v8 + 80) + 144) & ~*(v8 + 80);
  return sub_2303FF5C8(a1, *(v1 + 104), *(v1 + 112), *(v1 + 120), *(v1 + 128), *(v1 + 136), v1 + v9, *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8)), v3, v13, *(&v13 + 1), v4, v5, v6, v12, *(&v12 + 1), v11, v7);
}

unint64_t sub_230402448()
{
  result = qword_27DB4FBF8;
  if (!qword_27DB4FBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB4FBF8);
  }

  return result;
}

unint64_t sub_23040249C()
{
  result = qword_27DB4FC10;
  if (!qword_27DB4FC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DB4FC10);
  }

  return result;
}

unint64_t sub_2304024F0()
{
  result = qword_27DB502F0;
  if (!qword_27DB502F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DB502F0);
  }

  return result;
}

uint64_t sub_23040253C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB50580, &unk_2304211A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_2304025AC(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

id sub_2304025EC()
{
  result = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  qword_27DB50390 = result;
  return result;
}

uint64_t sub_230402620()
{
  v0 = sub_23041BC48();
  MEMORY[0x28223BE28](v0 - 8);
  v1 = sub_23041C138();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE28](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_23041C118();
  MEMORY[0x28223BE28](v5);
  v6 = sub_2303E42C4(0, &qword_27DB4FBA0, 0x277D85C80);
  v9[1] = "o splice file descriptors.";
  v9[2] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB50398, &qword_230420CF8);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_23041E310;
  sub_23041C108();
  v9[3] = v7;
  sub_23040409C(&qword_27DB4FFA8, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FFB0, &qword_23041F6E8);
  sub_2304040E4(&qword_27DB4FFB8, &qword_27DB4FFB0, &qword_23041F6E8);
  sub_23041C248();
  (*(v2 + 104))(v4, *MEMORY[0x277D85268], v1);
  sub_23041BC38();
  result = sub_23041C178();
  qword_27DB53E30 = result;
  return result;
}

uint64_t static XPCFileDescriptor.splice(from:to:on:reportingProgressUsing:completion:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3)
  {
    v15 = a3;
  }

  else
  {
    if (qword_27DB4FC78 != -1)
    {
      swift_once();
    }

    v15 = qword_27DB53E30;
  }

  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = a6;
  v16[4] = a7;
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = a4;
  v17[5] = a5;
  v17[6] = sub_230402DD4;
  v17[7] = v16;
  v17[8] = v7;
  type metadata accessor for POSIXThread();
  swift_allocObject();
  v18 = a3;

  v19 = v15;

  sub_2303BE674(a4, a5);

  sub_2303E4A88(sub_230403A9C, v17);
}

uint64_t sub_230402B04(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a3;
  v9 = sub_23041BC18();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE28](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_23041BC48();
  v13 = *(v21 - 8);
  MEMORY[0x28223BE28](v21);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a1;
  v16[5] = a2;
  aBlock[4] = sub_23040406C;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2303BCCBC;
  aBlock[3] = &block_descriptor_4;
  v17 = _Block_copy(aBlock);

  v18 = a2;
  sub_23041BC38();
  v23 = MEMORY[0x277D84F90];
  sub_23040409C(&qword_27DB4FBC0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB501A8, &unk_230420230);
  sub_2304040E4(&qword_27DB4FBB0, &qword_27DB501A8, &unk_230420230);
  sub_23041C248();
  MEMORY[0x2319157E0](0, v15, v12, v17);
  _Block_release(v17);
  (*(v10 + 8))(v12, v9);
  (*(v13 + 8))(v15, v21);
}

uint64_t sub_230402DE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, char *), uint64_t a4, void (*a5)(uint64_t, void *), uint64_t a6)
{
  v104 = a6;
  v105 = a5;
  v106 = a4;
  v110 = *MEMORY[0x277D85DF0];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FFC8, &unk_23041F7C0);
  v10 = MEMORY[0x28223BE28](v9 - 8);
  v97 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE28](v10);
  v98 = &v89 - v13;
  MEMORY[0x28223BE28](v12);
  v101 = &v89 - v14;
  v103 = sub_23041B7F8();
  v102 = *(v103 - 8);
  v15 = MEMORY[0x28223BE28](v103);
  v99 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE28](v15);
  v19 = &v89 - v18;
  v20 = MEMORY[0x28223BE28](v17);
  v22 = &v89 - v21;
  MEMORY[0x28223BE28](v20);
  v24 = &v89 - v23;
  sub_230403EAC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FFC0, &unk_2304200E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_230420CE0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  v100 = a1;

  v26 = sub_230403B0C(inited);
  v28 = v27;
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_230403D34(a3, v106, 0);
  v92 = v28;
  v94 = 0;
  v91 = v22;
  v93 = v24;
  v90 = v19;
  v95 = a3;
  v96 = v26;
  v29 = *(a2 + 64);
  swift_beginAccess();
  v109[0] = v29 | 0x400000000;
  v30 = *(a2 + 48);

  v31 = v30(v109, 1, 100);

  if (v31 < 0)
  {
    v107 = 0;
    v33 = v105;
LABEL_33:
    v53 = MEMORY[0x231915210](v32);
    if (v53)
    {
      v54 = v53;
      sub_2303B9D74(MEMORY[0x277D84F90]);
      v55 = v101;
      POSIXError.init(uncheckedCode:userInfo:)(v54);
      v56 = v102;
      v57 = v103;
      (*(v102 + 56))(v55, 0, 1, v103);
      v58 = v93;
      (*(v56 + 32))(v93, v55, v57);
      v73 = v107;
      v36 = v96;
    }

    else
    {
      v56 = v102;
      v59 = v101;
      v57 = v103;
      (*(v102 + 56))(v101, 1, 1, v103);
      sub_2303B9D74(MEMORY[0x277D84F90]);
      v58 = v93;
      POSIXError.init(uncheckedCode:userInfo:)(5);
      v60 = (*(v56 + 48))(v59, 1, v57);
      v73 = v107;
      v36 = v96;
      if (v60 != 1)
      {
        sub_230404004(v59);
      }
    }

    v40 = sub_23041B7D8();
    (*(v56 + 8))(v58, v57);
    swift_willThrow();
    if (v36)
    {
LABEL_38:
      MEMORY[0x231916D20](v36, -1, -1);
    }
  }

  else
  {
    v107 = 0;
    v33 = v105;
    v34 = v106;
    while (1)
    {
      while (!v31)
      {
        v109[0] = v29 | 0x400000000;
        v35 = *(a2 + 48);

        v31 = v35(v109, 1, 100);

        if (v31 < 0)
        {
          goto LABEL_33;
        }
      }

      if ((v109[0] & 0x10000000000000) != 0)
      {
        break;
      }

      v36 = v96;
      v37 = v94;
      result = XPCFileDescriptor.read(into:polling:)(v96, v92, 1);
      v40 = v37;
      if (v37)
      {
        v73 = v107;
        if (v36)
        {
          goto LABEL_38;
        }

        goto LABEL_39;
      }

      if (v39)
      {
        goto LABEL_46;
      }

      if (!v36)
      {
        __break(1u);
        return result;
      }

      if (!result)
      {
        sub_230403D34(v95, v34, v107);
        result = 0;
      }

      v94 = 0;
      v41 = result;
      if (result >= 1)
      {
        v42 = v95;
        while (1)
        {
          swift_beginAccess();
          v44 = *(a2 + 32);

          v45 = v44(v29, v36, v41);

          if (!v45)
          {
LABEL_44:
            v33 = v105;
            goto LABEL_45;
          }

          if ((v45 & 0x8000000000000000) == 0)
          {
            break;
          }

          v48 = MEMORY[0x231915210](v46);
          if (v48 != 35 && v48 != 4)
          {
            v83 = MEMORY[0x231915210]();
            if (v83)
            {
              v84 = v83;
              sub_2303B9D74(MEMORY[0x277D84F90]);
              v85 = v97;
              POSIXError.init(uncheckedCode:userInfo:)(v84);
              v80 = v102;
              v81 = v103;
              (*(v102 + 56))(v85, 0, 1, v103);
              v82 = v90;
              (*(v80 + 32))(v90, v85, v81);
              v33 = v105;
              v73 = v107;
              v77 = v96;
              goto LABEL_61;
            }

            v80 = v102;
            v86 = v97;
            v81 = v103;
            (*(v102 + 56))(v97, 1, 1, v103);
            sub_2303B9D74(MEMORY[0x277D84F90]);
            v82 = v90;
            POSIXError.init(uncheckedCode:userInfo:)(5);
            v88 = (*(v80 + 48))(v86, 1, v81);
            v33 = v105;
            v73 = v107;
            v77 = v96;
            if (v88 == 1)
            {
LABEL_61:
              v40 = sub_23041B7D8();
              (*(v80 + 8))(v82, v81);
              swift_willThrow();
              v36 = v77;
              goto LABEL_38;
            }

LABEL_60:
            sub_230404004(v86);
            goto LABEL_61;
          }

          v109[0] = v29 | 0x400000000;
          v49 = *(a2 + 48);

          v50 = v49(v109, 1, 100);

          if (v50 < 0)
          {
            v76 = MEMORY[0x231915210](v51);
            v77 = v96;
            if (v76)
            {
              v78 = v76;
              sub_2303B9D74(MEMORY[0x277D84F90]);
              v79 = v98;
              POSIXError.init(uncheckedCode:userInfo:)(v78);
              v80 = v102;
              v81 = v103;
              (*(v102 + 56))(v79, 0, 1, v103);
              v82 = v91;
              (*(v80 + 32))(v91, v79, v81);
              v33 = v105;
              v73 = v107;
              goto LABEL_61;
            }

            v80 = v102;
            v86 = v98;
            v81 = v103;
            (*(v102 + 56))(v98, 1, 1, v103);
            sub_2303B9D74(MEMORY[0x277D84F90]);
            v82 = v91;
            POSIXError.init(uncheckedCode:userInfo:)(5);
            v87 = (*(v80 + 48))(v86, 1, v81);
            v33 = v105;
            v73 = v107;
            if (v87 == 1)
            {
              goto LABEL_61;
            }

            goto LABEL_60;
          }

          if (v50 && (v109[0] & 0x10000000000000) != 0)
          {
            goto LABEL_44;
          }

          v45 = 0;
          v42 = v95;
          v108 = 0;
          if (v95)
          {
            goto LABEL_28;
          }

LABEL_14:
          v36 += v45;
          v43 = v41 <= v45;
          v41 -= v45;
          if (v43)
          {
            goto LABEL_30;
          }
        }

        v47 = v107 + v45;
        if (__CFADD__(v107, v45))
        {
          v47 = -1;
        }

        v107 = v47;
        v108 = 0;
        if (!v42)
        {
          goto LABEL_14;
        }

LABEL_28:
        v42(v107, &v108);
        if (v108 == 1)
        {
          LODWORD(v109[0]) = 89;
          sub_2303B9D74(MEMORY[0x277D84F90]);
          sub_23040409C(&qword_27DB505F0, MEMORY[0x277CC8658], MEMORY[0x277CC8650]);
          v71 = v99;
          v72 = v103;
          sub_23041B918();
          v40 = sub_23041B7D8();
          (*(v102 + 8))(v71, v72);
          swift_willThrow();
          v33 = v105;
          v73 = v107;
          v36 = v96;
          goto LABEL_38;
        }

        goto LABEL_14;
      }

LABEL_30:
      v109[0] = v29 | 0x400000000;
      v52 = *(a2 + 48);

      v31 = v52(v109, 1, 100);

      v33 = v105;
      if (v31 < 0)
      {
        goto LABEL_33;
      }
    }

LABEL_45:
    v36 = v96;
    v40 = v94;
LABEL_46:
    if (isatty(v29))
    {
      tcdrain(v29);
    }

    v73 = v107;
    sub_230403D34(v95, v34, v107);
    if (!v40)
    {
      v74 = sub_23041C098();
      sub_2303E42C4(0, &qword_27DB502F0, 0x277D86208);
      v75 = sub_23041C1B8();
      sub_23041BB28(v74, &dword_2303B3000, v75, "File descriptor splice complete.", 32, 2, MEMORY[0x277D84F90]);

      v33(v73, 0);
      if (v36)
      {
        MEMORY[0x231916D20](v36, -1, -1);
      }

      goto LABEL_40;
    }

    if (v36)
    {
      goto LABEL_38;
    }
  }

LABEL_39:
  v61 = sub_23041C0B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB50550, &qword_23041FBF0);
  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_23041E310;
  v109[0] = v40;
  v63 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DB501D0, &qword_23041F050);
  v64 = v40;
  v65 = sub_23041BE28();
  v67 = v66;
  *(v62 + 56) = MEMORY[0x277D837D0];
  *(v62 + 64) = sub_2303BBBD4();
  *(v62 + 32) = v65;
  *(v62 + 40) = v67;
  sub_2303E42C4(0, &qword_27DB502F0, 0x277D86208);
  v68 = sub_23041C1B8();
  sub_23041BB28(v61, &dword_2303B3000, v68, "Error splicing file descriptors: %@", 35, 2, v62);

  v69 = v64;
  v33(v73, v64);

LABEL_40:
  if (qword_27DB4FC70 != -1)
  {
    swift_once();
  }

  v70 = qword_27DB50390;
  [qword_27DB50390 lock];
  if (__OFSUB__(qword_27DB50388, 1))
  {
    __break(1u);
  }

  --qword_27DB50388;
  return [v70 unlock];
}

uint64_t sub_230403AB0(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

_BYTE **sub_230403AFC(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_230403B0C(unint64_t a1)
{
  v17 = *MEMORY[0x277D85DF0];
  v3 = *MEMORY[0x277D85F98];
  if ((*MEMORY[0x277D85F98] & 0x8000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if (v3 >> 61)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    v4 = sub_23041C3E8();
    if (v4)
    {
      goto LABEL_5;
    }

    goto LABEL_22;
  }

  v2 = a1;
  v1 = 4 * v3;
  if (a1 >> 62)
  {
    goto LABEL_21;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
LABEL_5:
    v5 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x231915930](v5, v2);
        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_17;
        }
      }

      else
      {
        if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v6 = *(v2 + 8 * v5 + 32);

        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_17:
          __break(1u);
LABEL_18:
          __break(1u);
LABEL_19:
          __break(1u);
          goto LABEL_20;
        }
      }

      v8 = *(v6 + 64);
      memset(&v16, 0, sizeof(v16));
      v9 = fstat(v8, &v16);

      st_blksize = v16.st_blksize;
      if (v1 > v16.st_blksize)
      {
        st_blksize = v1;
      }

      if (!v9)
      {
        v1 = st_blksize;
      }

      ++v5;
    }

    while (v7 != v4);
  }

LABEL_22:
  v11 = sub_23041C0A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB50550, &qword_23041FBF0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_23041E310;
  v13 = MEMORY[0x277D83ED0];
  *(v12 + 56) = MEMORY[0x277D83E88];
  *(v12 + 64) = v13;
  *(v12 + 32) = v1 & ~(v1 >> 63);
  sub_2303E42C4(0, &qword_27DB502F0, 0x277D86208);
  v14 = sub_23041C1B8();
  sub_23041BB28(v11, &dword_2303B3000, v14, "Using buffer size of %lu bytes to splice file descriptors.", *&v16.st_dev);

  return swift_slowAlloc();
}

uint64_t sub_230403D34(uint64_t (*a1)(uint64_t, char *), uint64_t a2, uint64_t a3)
{
  v5 = sub_23041B7F8();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE28](v5);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  if (a1)
  {
    result = a1(a3, &v12);
    if (v12)
    {
      v11 = 89;
      sub_2303B9D74(MEMORY[0x277D84F90]);
      sub_23040409C(&qword_27DB505F0, MEMORY[0x277CC8658], MEMORY[0x277CC8650]);
      sub_23041B918();
      sub_23041B7D8();
      (*(v6 + 8))(v9, v5);
      return swift_willThrow();
    }
  }

  return result;
}

void sub_230403EAC()
{
  if (qword_27DB4FC70 != -1)
  {
    swift_once();
  }

  v0 = qword_27DB50390;
  [qword_27DB50390 lock];
  v1 = qword_27DB50388 + 1;
  if (__OFADD__(qword_27DB50388, 1))
  {
    __break(1u);
  }

  else
  {
    ++qword_27DB50388;
    [v0 unlock];
    if (v1 >= 17)
    {
      v2 = sub_23041C0C8();
      sub_2303E42C4(0, &qword_27DB502F0, 0x277D86208);
      log = sub_23041C1B8();
      if (os_log_type_enabled(log, v2))
      {
        v3 = swift_slowAlloc();
        *v3 = 134217984;
        *(v3 + 4) = v1;
        _os_log_impl(&dword_2303B3000, log, v2, "Unexpectedly high number of concurrent XPCFileDescriptor.splice operations: %ld", v3, 0xCu);
        MEMORY[0x231916D20](v3, -1, -1);
      }
    }
  }
}

uint64_t sub_230404004(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DB4FFC8, &unk_23041F7C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23040409C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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