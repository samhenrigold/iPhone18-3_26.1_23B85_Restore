uint64_t sub_10F0(void *a1)
{
  v2 = swift_allocObject();
  v3 = sub_209C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20AC();
  v7 = sub_206C();
  (*(v4 + 8))(v6, v3);
  if (v7)
  {
    *(v2 + 16) = a1;
  }

  else
  {

    swift_deallocPartialClassInstance();
    return 0;
  }

  return v2;
}

uint64_t sub_123C()
{
  v0 = sub_209C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20AC();
  sub_204C();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1318(uint64_t a1)
{
  v2 = sub_209C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20AC();
  sub_205C();
  v6 = sub_203C();
  (*(*(v6 - 8) + 8))(a1, v6);
  return (*(v3 + 8))(v5, v2);
}

void (*sub_142C(uint64_t **a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = sub_203C();
  *v4 = v5;
  v6 = *(v5 - 8);
  v4[1] = v6;
  v7 = *(v6 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(*(v6 + 64));
    v8 = malloc(v7);
  }

  v4[3] = v8;
  v4[4] = *(v1 + 16);
  v9 = sub_209C();
  v4[5] = v9;
  v10 = *(v9 - 8);
  v4[6] = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20AC();
  sub_204C();
  v13 = *(v10 + 8);
  v4[7] = v13;
  v4[8] = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v12, v9);
  return sub_15F4;
}

void sub_15F4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[7];
  v4 = (*a1)[5];
  v5 = (*a1)[6];
  v6 = (*a1)[3];
  v8 = (*a1)[1];
  v7 = (*a1)[2];
  v9 = **a1;
  if (a2)
  {
    v10 = (*(v8 + 16))((*a1)[2], v6, v9);
    v13 = &v12;
    __chkstk_darwin(v10);
    sub_20AC();
    sub_205C();
    v3(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    v11 = *(v8 + 8);
    v11(v7, v9);
    v11(v6, v9);
  }

  else
  {
    v13 = &v12;
    __chkstk_darwin(a1);
    sub_20AC();
    sub_205C();
    v3(&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    (*(v8 + 8))(v6, v9);
  }

  free(v6);
  free(v7);
  free(v2);
}

uint64_t sub_1784()
{
  v0 = sub_209C();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20AC();
  sub_208C();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1854()
{
  (*(*v0 + 136))(v7);
  sub_1984(v7, v7[3]);
  v1 = sub_209C();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v7[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20AC();
  sub_207C();
  (*(v2 + 8))(v4, v1);
  return sub_19C8(v7);
}

void *sub_1984(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_19C8(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return _swift_release(*a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_1A14@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = sub_201C();
  a2[4] = sub_1A64();
  sub_1ABC(a2);
  v4 = a1;
  return sub_202C();
}

unint64_t sub_1A64()
{
  result = qword_80B8;
  if (!qword_80B8)
  {
    sub_201C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_80B8);
  }

  return result;
}

uint64_t *sub_1ABC(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1B20(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D60(&qword_80C0, qword_21E0);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v19 - v6;
  v8 = *(a2 - 8);
  __chkstk_darwin(v5);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_201C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v10, a1, a2);
  v15 = swift_dynamicCast();
  v16 = *(v12 + 56);
  if (v15)
  {
    v16(v7, 0, 1, v11);
    (*(v12 + 32))(v14, v7, v11);
    v17 = sub_200C();
    (*(v12 + 8))(v14, v11);
    return v17;
  }

  else
  {
    v16(v7, 1, 1, v11);
    sub_1DA8(v7);
    return 0;
  }
}

uint64_t sub_1D60(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1DA8(uint64_t a1)
{
  v2 = sub_1D60(&qword_80C0, qword_21E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E10()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t (*sub_1EA4(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 112))();
  return sub_1F34;
}

void sub_1F34(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}